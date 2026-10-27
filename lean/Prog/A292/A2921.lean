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
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C011
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C004
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B007.C000
import Seq.B010.C000
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
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C024

/-!
# A292100: Number of net regularizable trees with a marked vertex and n chairs.

The programs for A292100, there is no canonical definition to state claims against.
-/

/-! ## A292100.P6762379267249487824

`A008619(xor(comp[2*n+3], A047159(n)))`
-/

namespace A292100.P6762379267249487824
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (Int.xor (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) (A047159 n)).toNat

end

end A292100.P6762379267249487824

/-! ## A292100.P9552183478119634333

`A365831(A074354(n))+A218321(n)`
-/

namespace A292100.P9552183478119634333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365831 (A074354 n).toNat + A218321 n

end

end A292100.P9552183478119634333

/-!
# A292103: Number of points that are the intersections of exactly two semicircles in the configuration A290447(n).

The programs for A292103, there is no canonical definition to state claims against.
-/

/-! ## A292103.P12749039798823600722

`A290867(eq[0, A290867(n+1)]+2)`
-/

namespace A292103.P12749039798823600722
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290867 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290867 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2)

end

end A292103.P12749039798823600722

/-! ## A292103.P13518227399602108669

`A290867(lt[A290867(n+1), 1]+2)`
-/

namespace A292103.P13518227399602108669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290867 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290867 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 2)

end

end A292103.P13518227399602108669

/-! ## A292103.P13747566865626289248

`A290447(n+1)-A337853(A376093(n)%(A241458(n+1)+1))`
-/

namespace A292103.P13747566865626289248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290447 (n + 1) - A337853 (Int.tmod (A376093 n) (A241458 (n + 1) + 1)).toNat

end

end A292103.P13747566865626289248

/-! ## A292103.P15037798766469388643

`∑[A089854(∑[A282064(n)])]`
-/

namespace A292103.P15037798766469388643
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282064 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089854 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A292103.P15037798766469388643

/-! ## A292103.P5607379556877989175

`∑[A089867(∑[A282064(n)])]`
-/

namespace A292103.P5607379556877989175
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282064 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089867 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A292103.P5607379556877989175

/-!
# A292104: Number of interior points that are the intersections of exactly two chords in the configuration A006561(n).

The programs for A292104, there is no canonical definition to state claims against.
-/

/-! ## A292104.P5746349482241566849

`A292105(A055802(n+2)+n)`
-/

namespace A292104.P5746349482241566849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292105 (A055802 (n + 2) + (n : ℤ)).toNat

end

end A292104.P5746349482241566849

/-! ## A292104.P11080730610795796910

`A335102(A180121(n+1)+(A007035(n+1)-A007037(n+1))!)`
-/

namespace A292104.P11080730610795796910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335102 (A180121 (n + 1) + (Nat.factorial (A007035 (n + 1) - A007037 (n + 1)).toNat : ℤ)).toNat

end

end A292104.P11080730610795796910

/-!
# A292105: Irregular triangle read by rows: T(n,k) = the number of interior points that are the intersections of exactly k chords in the configuration A006561(n) (n >= 1, k >= 1).

The programs for A292105, there is no canonical definition to state claims against.
-/

/-! ## A292105.P3637268828735561863

`A046063(n+2)%A353604(A209115(2*(n+1)))`
-/

namespace A292105.P3637268828735561863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A046063 (n + 2)) (A353604 (A209115 (2 * (n + 1))).toNat)

end

end A292105.P3637268828735561863

/-!
# A292106: Term-by-term products of continued fraction expansion of e and Pi.

The programs for A292106, there is no canonical definition to state claims against.
-/

/-! ## A292106.P14581948940514386786

`A003417(n)*A001203(n)`
-/

namespace A292106.P14581948940514386786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003417 n * A001203 n

end

end A292106.P14581948940514386786

/-! ## A292106.P2703609201763513634

`∑[A120691(n)]*A001203(n)`
-/

namespace A292106.P2703609201763513634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120691 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A001203 n

end

end A292106.P2703609201763513634

/-! ## A292106.P7398580886458209354

`A001203(n)*A004277(abs((2*C(n, 3)+1)%(n+1)-n)^n^(1-n²%3))`
-/

namespace A292106.P7398580886458209354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001203 n * A004277 (SequenceMachineLib.roundAway ((|(((2 * Nat.choose n 3 + 1) % (n + 1) : ℕ) : ℤ) - (n : ℤ)| : ℝ) ^ ((n : ℚ) ^ (1 - ((n ^ 2 % 3 : ℕ) : ℤ) : ℤ) : ℝ))).toNat

end

end A292106.P7398580886458209354

/-! ## A292106.P1074191175565526758

`A001203(n)*A005131(2*A054977(n)+n)`
-/

namespace A292106.P1074191175565526758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001203 n * A005131 (2 * A054977 n + (n : ℤ)).toNat

end

end A292106.P1074191175565526758

/-! ## A292106.P12671934572544962617

`A001203(n)*A100727(A047396(n+2))`
-/

namespace A292106.P12671934572544962617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001203 n * A100727 (A047396 (n + 2)).toNat

end

end A292106.P12671934572544962617

/-! ## A292106.P15808566303606376724

`A001203(n)*A100727(A047465(n+2))`
-/

namespace A292106.P15808566303606376724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001203 n * A100727 (A047465 (n + 2)).toNat

end

end A292106.P15808566303606376724

/-!
# A292108: Iterate the map k -> (sigma(k) + phi(k))/2 starting at n; a(n) is the number of steps to reach either a fixed point or a fraction, or a(n) = -1 if neither of these two events occurs.

The programs for A292108, there is no canonical definition to state claims against.
-/

/-! ## A292108.P2505815953332135350

`A156775(n+1)-floor(acot(A156776(n+1)))`
-/

namespace A292108.P2505815953332135350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156775 (n + 1) - ⌊SequenceMachineLib.acot (A156776 (n + 1) : ℝ)⌋

end

end A292108.P2505815953332135350

/-! ## A292108.P11116537609486203314

`A320629(A320613(n+1))%A143773(n+1)`
-/

namespace A292108.P11116537609486203314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A320629 (A320613 (n + 1)).toNat) (A143773 (n + 1))

end

end A292108.P11116537609486203314

/-! ## A292108.P9545715903176635429

`A056169(n^3+1-∑{p}[n+1, C(#, n)]+n)`
-/

namespace A292108.P9545715903176635429
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056169 ((n ^ 3 : ℤ) + (1 - ((∑ p ∈ Nat.primeFactors (f1 n), Nat.choose p n : ℕ) : ℤ) + (n : ℤ))).toNat

end

end A292108.P9545715903176635429

/-! ## A292108.P21077797286247592

`A056169(A191558(n+1)+A000578(n))`
-/

namespace A292108.P21077797286247592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056169 (A191558 (n + 1) + A000578 n).toNat

end

end A292108.P21077797286247592

/-! ## A292108.P14789110993275223750

`A024359(A071568(n))%A032742(n+1)`
-/

namespace A292108.P14789110993275223750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A024359 (A071568 n).toNat) (A032742 (n + 1))

end

end A292108.P14789110993275223750

/-!
# A292111: Reflective-symmetric maximal chord diagrams by genus, type II.

The programs for A292111, there is no canonical definition to state claims against.
-/

/-! ## A292111.P10177478289611990564

`(2*(n+1)-1)*A347951(n)`
-/

namespace A292111.P10177478289611990564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * (n + 1) : ℤ) - 1) * A347951 n

end

end A292111.P10177478289611990564

/-!
# A292112: Records in A039654.

The programs for A292112, there is no canonical definition to state claims against.
-/

/-! ## A292112.P12298588547206257532

`record[A039654(n+2)]`
-/

namespace A292112.P12298588547206257532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039654 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A292112.P12298588547206257532

/-! ## A292112.P9102309308565510689

`A039654(A292113(n+1))`
-/

namespace A292112.P9102309308565510689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039654 (A292113 (n + 1)).toNat

end

end A292112.P9102309308565510689

/-!
# A292114: List of numbers n such that A039655(n) reaches a new record high.

The programs for A292114, there is no canonical definition to state claims against.
-/

/-! ## A292114.P8477918224501068965

`A039656(A292115(n+1))`
-/

namespace A292114.P8477918224501068965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039656 (A292115 (n + 1)).toNat

end

end A292114.P8477918224501068965

/-! ## A292114.P1185426855938830952

`A039656(record[A039655(n+2)])`
-/

namespace A292114.P1185426855938830952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039655 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039656 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A292114.P1185426855938830952

/-!
# A292117: Coefficients of a power series f(q) with coefficients +1 or -1 such that Product_{m >= 1} f(q^(2m-1)) = Sum_{m = -oo..oo} q^(m(3m-1)/2).

The programs for A292117, there is no canonical definition to state claims against.
-/

/-! ## A292117.P7105111531528757837

`(-1)^floor(n/3)*a(floor(n/2))` with `a(0)=1`
-/

namespace A292117.P7105111531528757837
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (-1 : ℚ) ^ (⌊(n : ℚ) / 3⌋ : ℤ) * a ⌊(n : ℚ) / 2⌋.toNat

end

end A292117.P7105111531528757837

/-! ## A292117.P2449080049512868101

`a(floor(n/2))/(-1)^floor(n/3)` with `a(0)=1`
-/

namespace A292117.P2449080049512868101
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a ⌊(n : ℚ) / 2⌋.toNat / (-1 : ℚ) ^ (⌊(n : ℚ) / 3⌋ : ℤ)

end

end A292117.P2449080049512868101

/-! ## A292117.P17638171880776960827

`(-1)^∑[val(comp[∑[n%3+1]]+1, 2)]`
-/

namespace A292117.P17638171880776960827
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 3 + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n + 1) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A292117.P17638171880776960827

/-! ## A292117.P1795004699926346013

`(-1)^∑[∑{e}[xor(n*(gcd(3, n)-2), -n), #]]`
-/

namespace A292117.P1795004699926346013
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((n : ℤ) * ((Nat.gcd 3 n : ℤ) - 2)) (-(n : ℤ))

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A292117.P1795004699926346013

/-! ## A292117.P14245962831303876670

`(-1)^∑[(1-n²%3)*∑{e}[xor(n, -n), #]]`
-/

namespace A292117.P14245962831303876670
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (-(n : ℤ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - ((n ^ 2 % 3 : ℕ) : ℤ)) * ((∑ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p : ℕ) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (∑ j ∈ Finset.range (n + 1), f1 j : ℤ)

end

end A292117.P14245962831303876670

/-! ## A292117.P7223086385260173811

`(-1)^A073750(n)`
-/

namespace A292117.P7223086385260173811
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (A073750 n : ℤ)

end

end A292117.P7223086385260173811

/-! ## A292117.P11366003007783018299

`or(1, -A214210(n))`
-/

namespace A292117.P11366003007783018299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (-A214210 n)

end

end A292117.P11366003007783018299

/-! ## A292117.P9949604548945230055

`A106400(floor(n/3))`
-/

namespace A292117.P9949604548945230055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106400 ⌊(n : ℚ) / 3⌋.toNat

end

end A292117.P9949604548945230055

/-! ## A292117.P1151491156657254842

`2-A268676(floor(n/3))`
-/

namespace A292117.P1151491156657254842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A268676 ⌊(n : ℚ) / 3⌋.toNat

end

end A292117.P1151491156657254842

/-! ## A292117.P13022611293660157031

`A029883(Δ[ceil(n²/3)])`
-/

namespace A292117.P13022611293660157031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n ^ 2 : ℚ) / 3⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029883 (f1 (n + 1) - f1 n).toNat

end

end A292117.P13022611293660157031

/-!
# A292118: G.f.: 1 + 2*Sum_{k >= 1} (-1)^k*q^A003159(k).

The programs for A292118, the canonical program `A292118.P14353429874146398271` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A292118 has offset 0).

The definition of A292118 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A292118.P14353429874146398271

`1-xor(a(n-1)+1, a(floor(n/2)))` with `a(0)=1`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A292118

/-- `1-xor(a(n-1)+1, a(floor(n/2)))` -/
def P14353429874146398271.Spec : Prop :=
  ∀ n, P14353429874146398271.a n = A292118 n

theorem P14353429874146398271.correct : P14353429874146398271.Spec := by
  intro n
  simp only [A292118]

end A292118

/-! ## A292118.P2467123840841518472

`(-1)^n*a(floor(n/2))-a(n-1)` with `a(0)=1`
-/

namespace A292118.P2467123840841518472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (-1) ^ n * a ⌊(n : ℚ) / 2⌋.toNat - a (n - 1)

end

end A292118.P2467123840841518472

namespace A292118

/-- `(-1)^n*a(floor(n/2))-a(n-1)` -/
def P2467123840841518472.Spec : Prop :=
  ∀ n, P2467123840841518472.a n = A292118 n

end A292118

/-! ## A292118.P17226615157687841752

`xor(1, A254655(2*n+1)-2)`
-/

namespace A292118.P17226615157687841752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A254655 (2 * n + 1) - 2)

end

end A292118.P17226615157687841752

namespace A292118

/-- `xor(1, A254655(2*n+1)-2)` -/
def P17226615157687841752.Spec : Prop :=
  ∀ n, P17226615157687841752.a n = A292118 n

end A292118

/-! ## A292118.P5885974199256441144

`A157532(n+1)-A254378(2*n+1)`
-/

namespace A292118.P5885974199256441144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157532 (n + 1) - A254378 (2 * n + 1)

end

end A292118.P5885974199256441144

namespace A292118

/-- `A157532(n+1)-A254378(2*n+1)` -/
def P5885974199256441144.Spec : Prop :=
  ∀ n, P5885974199256441144.a n = A292118 n

end A292118

/-! ## A292118.P3619766074997440285

`Δ[A076826(xor(3, A004273(n)))]`
-/

namespace A292118.P3619766074997440285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076826 (Int.xor 3 (A004273 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A292118.P3619766074997440285

namespace A292118

/-- `Δ[A076826(xor(3, A004273(n)))]` -/
def P3619766074997440285.Spec : Prop :=
  ∀ n, P3619766074997440285.a n = A292118 n

end A292118

/-! ## A292118.P7158934098518539920

`Δ[A316826(n)-A316826(2*n)]`
-/

namespace A292118.P7158934098518539920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316826 n - A316826 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A292118.P7158934098518539920

namespace A292118

/-- `Δ[A316826(n)-A316826(2*n)]` -/
def P7158934098518539920.Spec : Prop :=
  ∀ n, P7158934098518539920.a n = A292118 n

end A292118

/-! ## A292118.P10077951177537720843

`Δ[A268726(abs(A161718(n)))]`
-/

namespace A292118.P10077951177537720843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268726 |A161718 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A292118.P10077951177537720843

namespace A292118

/-- `Δ[A268726(abs(A161718(n)))]` -/
def P10077951177537720843.Spec : Prop :=
  ∀ n, P10077951177537720843.a n = A292118 n

end A292118

/-! ## A292118.P94219305064370710

`Δ[A076826(abs(A161718(n)))]`
-/

namespace A292118.P94219305064370710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076826 |A161718 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A292118.P94219305064370710

namespace A292118

/-- `Δ[A076826(abs(A161718(n)))]` -/
def P94219305064370710.Spec : Prop :=
  ∀ n, P94219305064370710.a n = A292118 n

end A292118

/-! ## A292118.P5984887731285274839

`Δ[A076826(A111284(n+1))]`
-/

namespace A292118.P5984887731285274839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076826 (A111284 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A292118.P5984887731285274839

namespace A292118

/-- `Δ[A076826(A111284(n+1))]` -/
def P5984887731285274839.Spec : Prop :=
  ∀ n, P5984887731285274839.a n = A292118 n

end A292118

/-! ## A292118.P1401438633637776190

`Δ[A050027(A008574(n))%4]`
-/

namespace A292118.P1401438633637776190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A050027 (A008574 n).toNat) 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A292118.P1401438633637776190

namespace A292118

/-- `Δ[A050027(A008574(n))%4]` -/
def P1401438633637776190.Spec : Prop :=
  ∀ n, P1401438633637776190.a n = A292118 n

end A292118

/-! ## A292118.P4379776526437024072

`Δ[A268821(4*n+1)%4]`
-/

namespace A292118.P4379776526437024072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A268821 (4 * n + 1)) 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A292118.P4379776526437024072

namespace A292118

/-- `Δ[A268821(4*n+1)%4]` -/
def P4379776526437024072.Spec : Prop :=
  ∀ n, P4379776526437024072.a n = A292118 n

end A292118

/-! ## A292118.P6219347410268749400

`A076826(A161718(2*n))-A076826(2*n)`
-/

namespace A292118.P6219347410268749400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076826 (A161718 (2 * n)).toNat - A076826 (2 * n)

end

end A292118.P6219347410268749400

namespace A292118

/-- `A076826(A161718(2*n))-A076826(2*n)` -/
def P6219347410268749400.Spec : Prop :=
  ∀ n, P6219347410268749400.a n = A292118 n

end A292118

/-! ## A292118.P10835503242680034824

`A076826(A111284(2*n+1))-A076826(2*n)`
-/

namespace A292118.P10835503242680034824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076826 (A111284 (2 * n + 1)).toNat - A076826 (2 * n)

end

end A292118.P10835503242680034824

namespace A292118

/-- `A076826(A111284(2*n+1))-A076826(2*n)` -/
def P10835503242680034824.Spec : Prop :=
  ∀ n, P10835503242680034824.a n = A292118 n

end A292118

/-! ## A292118.P13354539974589113006

`Δ[A244895(A177241(n))]`
-/

namespace A292118.P13354539974589113006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244895 (A177241 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A292118.P13354539974589113006

namespace A292118

/-- `Δ[A244895(A177241(n))]` -/
def P13354539974589113006.Spec : Prop :=
  ∀ n, P13354539974589113006.a n = A292118 n

end A292118

/-!
# A292120: E.g.f.: A(x) + B(x) + C(x) where A'(x) = B(x)*C(x), B'(x) = A(x)*C(x), and C'(x) = A(x)*B(x), where A(x), B(x), and C(x) are the e.g.f.s of A292121, A292122, and A292123, respectively.

The programs for A292120, there is no canonical definition to state claims against.
-/

/-! ## A292120.P16571223189404590449

`A292121(n)+A292123(n)+A292122(n)`
-/

namespace A292120.P16571223189404590449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292121 n + (A292123 n + A292122 n)

end

end A292120.P16571223189404590449

/-!
# A292121: E.g.f. A(x) satisfies: A'(x) = B(x)*C(x) such that B(x)^2 - A(x)^2 = 3 and C(x)^2 - A(x)^2 = 8, where B(x) and C(x) are the e.g.f.s of A292122 and A292123, respectively.

The programs for A292121, there is no canonical definition to state claims against.
-/

/-! ## A292121.P7907181690328253007

`A292120(n)-(A292123(n)+A292122(n))`
-/

namespace A292121.P7907181690328253007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292120 n - (A292123 n + A292122 n)

end

end A292121.P7907181690328253007

/-!
# A292122: E.g.f. B(x) satisfies: B'(x) = A(x)*C(x) such that B(x)^2 - A(x)^2 = 3 and C(x)^2 - B(x)^2 = 5, where A(x) and C(x) are the e.g.f.s of A292121 and A292123, respectively.

The programs for A292122, there is no canonical definition to state claims against.
-/

/-! ## A292122.P1115794233300218589

`A292120(n)-(A292123(n)+A292121(n))`
-/

namespace A292122.P1115794233300218589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292120 n - (A292123 n + A292121 n)

end

end A292122.P1115794233300218589

/-! ## A292122.P12938399441914864848

`A292120(A004918(n+1))%(A292123(n)+A292121(n))`
-/

namespace A292122.P12938399441914864848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A292120 (A004918 (n + 1)).toNat) (A292123 n + A292121 n)

end

end A292122.P12938399441914864848

/-!
# A292123: E.g.f. C(x) satisfies: C'(x) = A(x)*B(x) such that C(x)^2 - A(x)^2 = 8 and C(x)^2 - B(x)^2 = 5, where A(x) and B(x) are the e.g.f.s of A292121 and A292122, respectively.

The programs for A292123, there is no canonical definition to state claims against.
-/

/-! ## A292123.P4120155122480874961

`A292120(n)-(A292122(n)+A292121(n))`
-/

namespace A292123.P4120155122480874961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292120 n - (A292122 n + A292121 n)

end

end A292123.P4120155122480874961

/-!
# A292125: Positive numbers n such that the set of base-7 digits of n equals both the set of base-8 digits of n and the set of base-9 digits of n.

The programs for A292125, there is no canonical definition to state claims against.
-/

/-! ## A292125.P12741157348401865066

`∩[A037439(n+1), A037441(n+1)]`
-/

namespace A292125.P12741157348401865066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037439 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037441 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A292125.P12741157348401865066

/-! ## A292125.P2797430412935348975

`∩[A037438(n+1), A037439(n+1)]`
-/

namespace A292125.P2797430412935348975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037438 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037439 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A292125.P2797430412935348975

/-! ## A292125.P7832758896081338878

`∩[A037438(n+1), A037441(n+1)]`
-/

namespace A292125.P7832758896081338878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037438 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037441 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A292125.P7832758896081338878

/-!
# A292127: a(1) = 1, a(r(n)^k) = 1 + k * a(n) where r(n) is the n-th number that is not a perfect power A007916(n).

The programs for A292127, there is no canonical definition to state claims against.
-/

/-! ## A292127.P1285057373973465449

`A056792(lt[A000607(n), n^(n%2)+n])`
-/

namespace A292127.P1285057373973465449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000607 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ (n % 2) + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056792 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A292127.P1285057373973465449

/-! ## A292127.P8315179336027966262

`A056792(lt[A317084(n), A298026(n)])`
-/

namespace A292127.P8315179336027966262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317084 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298026 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056792 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A292127.P8315179336027966262

/-! ## A292127.P18443331927718624319

`A056792(lt[A326668(n+1), A000203(n+1)])`
-/

namespace A292127.P18443331927718624319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326668 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056792 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A292127.P18443331927718624319

/-! ## A292127.P8970482088739755322

`A056792(lt[A056812(n+1), A056796(2*n)])`
-/

namespace A292127.P8970482088739755322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056812 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056796 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056792 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A292127.P8970482088739755322

/-! ## A292127.P7519583016936200116

`A056792(record[A056792(A017817(n))])`
-/

namespace A292127.P7519583016936200116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056792 (A017817 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056792 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A292127.P7519583016936200116

/-!
# A292128: Expansion of Product_{k>=1} (1 - 3*x^k).

The programs for A292128, there is no canonical definition to state claims against.
-/

/-! ## A292128.P7101364129215255779

`A292131(∑[n+4]+2)`
-/

namespace A292128.P7101364129215255779
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292131 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A292128.P7101364129215255779

/-! ## A292128.P17219889840526113168

`A349926(2^n)`
-/

namespace A292128.P17219889840526113168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349926 (2 ^ n)

end

end A292128.P17219889840526113168

/-! ## A292128.P7235476072021311387

`A349926(A000079(n))%A074506(n)`
-/

namespace A292128.P7235476072021311387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A349926 (A000079 n).toNat) (A074506 n)

end

end A292128.P7235476072021311387

/-!
# A292129: Triangle read by rows: T(n,k) = (-2) * T(n-k,k-1) + T(n-k,k) with T(0,0) = 1 for 0 <= k <= A003056(n).

The programs for A292129, there is no canonical definition to state claims against.
-/

/-! ## A292129.P11622621855602524236

`A033999(A237451(n+1))*A291970(n)`
-/

namespace A292129.P11622621855602524236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A237451 (n + 1)).toNat * A291970 n

end

end A292129.P11622621855602524236

/-! ## A292129.P5892120209348527284

`A265643(A000225(n)+1)*A291970(n)`
-/

namespace A292129.P5892120209348527284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265643 (A000225 n + 1).toNat * A291970 n

end

end A292129.P5892120209348527284

/-! ## A292129.P12946565612017944162

`A263577(A038253(n))+A046113(n)`
-/

namespace A292129.P12946565612017944162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263577 (A038253 n).toNat + A046113 n

end

end A292129.P12946565612017944162

/-! ## A292129.P13654733441282943718

`A033999(A175167(n+1))*A291970(n)`
-/

namespace A292129.P13654733441282943718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A175167 (n + 1)).toNat * A291970 n

end

end A292129.P13654733441282943718

/-!
# A292130: Triangle read by rows: T(n,k) = (-3) * T(n-k,k-1) + T(n-k,k) with T(0,0) = 1 for 0 <= k <= A003056(n).

The programs for A292130, there is no canonical definition to state claims against.
-/

/-! ## A292130.P15999260150739476289

`A033999(A237451(n+1))*A291971(n)`
-/

namespace A292130.P15999260150739476289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A237451 (n + 1)).toNat * A291971 n

end

end A292130.P15999260150739476289

/-! ## A292130.P9292938587758951161

`A291971(n)*A343785(A022381(n))`
-/

namespace A292130.P9292938587758951161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291971 n * A343785 (A022381 n).toNat

end

end A292130.P9292938587758951161

/-! ## A292130.P14750810143383627069

`A033999(A175167(n+1))*A291971(n)`
-/

namespace A292130.P14750810143383627069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A175167 (n + 1)).toNat * A291971 n

end

end A292130.P14750810143383627069

/-!
# A292131: Square array A(n,k), n>=0, k>=0, read by antidiagonals, where column k is the expansion of Product_{j>=1} (1 - k*x^j).

The programs for A292131, there is no canonical definition to state claims against.
-/

/-! ## A292131.P7117021727875756856

`A057523(A249027(n+1))-A002262(A038722(n+1))`
-/

namespace A292131.P7117021727875756856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057523 (A249027 (n + 1)).toNat - A002262 (A038722 (n + 1)).toNat

end

end A292131.P7117021727875756856

/-! ## A292131.P16089388704909300993

`A053797(A160562(n))*A286354(n)`
-/

namespace A292131.P16089388704909300993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053797 (A160562 n).toNat * A286354 n

end

end A292131.P16089388704909300993

/-! ## A292131.P12565836875846042534

`A286354(n)*A319189(A331126(n))`
-/

namespace A292131.P12565836875846042534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286354 n * A319189 (A331126 n).toNat

end

end A292131.P12565836875846042534

/-! ## A292131.P12794083554184277039

`A286354(n)*A384877(A286330(n))`
-/

namespace A292131.P12794083554184277039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286354 n * A384877 (A286330 n).toNat

end

end A292131.P12794083554184277039

/-! ## A292131.P10961357330670338060

`A297325(lt[A203452(n+1), A050711(2*(n+1))])`
-/

namespace A292131.P10961357330670338060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203452 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050711 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297325 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A292131.P10961357330670338060

/-!
# A292132: Main diagonal of A292131.

The programs for A292132, there is no canonical definition to state claims against.
-/

/-! ## A292132.P4619407437991547240

`A292131(∑[4*n])`
-/

namespace A292132.P4619407437991547240
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292131 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A292132.P4619407437991547240

/-! ## A292132.P12835016831193639399

`A292131(A046092(n))%A199484(n)`
-/

namespace A292132.P12835016831193639399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A292131 (A046092 n).toNat) (A199484 n)

end

end A292132.P12835016831193639399

/-! ## A292132.P536252310214064505

`A033999(n)²*A292131(A046092(n))`
-/

namespace A292132.P536252310214064505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n ^ 2 * A292131 (A046092 n).toNat

end

end A292132.P536252310214064505

/-! ## A292132.P5449631193835676496

`A102679(n)!*A292131(A046092(n))`
-/

namespace A292132.P5449631193835676496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A102679 n).toNat : ℤ) * A292131 (A046092 n).toNat

end

end A292132.P5449631193835676496

/-! ## A292132.P16393530991001870564

`A292131(A046092(n))+A000007(n+1)`
-/

namespace A292132.P16393530991001870564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292131 (A046092 n).toNat + A000007 (n + 1)

end

end A292132.P16393530991001870564

/-! ## A292132.P15814771265124008492

`A007318(C(2, n+2))*A292131(A046092(n))`
-/

namespace A292132.P15814771265124008492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 (n + 2)) * A292131 (A046092 n).toNat

end

end A292132.P15814771265124008492

/-! ## A292132.P12838774384514093387

`A292131(A046092(n))^and(1, A000040(n+1))`
-/

namespace A292132.P12838774384514093387
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A292131 (A046092 n).toNat : ℚ) ^ (Int.land 1 (A000040 (n + 1)) : ℤ)

end

end A292132.P12838774384514093387

/-! ## A292132.P16466850894264935914

`A000032(((-1)^n)²)*A292131(A046092(n))`
-/

namespace A292132.P16466850894264935914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (((-1) ^ n) ^ 2).toNat * A292131 (A046092 n).toNat

end

end A292132.P16466850894264935914

/-! ## A292132.P4060914889347131028

`A007318(((-1)^n)²)*A292131(A046092(n))`
-/

namespace A292132.P4060914889347131028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (((-1) ^ n) ^ 2).toNat * A292131 (A046092 n).toNat

end

end A292132.P4060914889347131028

/-!
# A292133: Square array A(n,k), n>=0, k>=0, read by antidiagonals, where column k is the expansion of Product_{j>=1} 1/(1 + k*x^j).

The programs for A292133, there is no canonical definition to state claims against.
-/

/-! ## A292133.P9121952528063388849

`A350261(A102480(n))+A292861(n)`
-/

namespace A292133.P9121952528063388849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350261 (A102480 n).toNat + A292861 n

end

end A292133.P9121952528063388849

/-! ## A292133.P4054482523816686135

`A292861(n)-A186745(A105868(n))`
-/

namespace A292133.P4054482523816686135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292861 n - A186745 (A105868 n).toNat

end

end A292133.P4054482523816686135

/-! ## A292133.P9512872553979019872

`A131554(A287697(n))*A292861(n)`
-/

namespace A292133.P9512872553979019872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131554 (A287697 n).toNat * A292861 n

end

end A292133.P9512872553979019872

/-! ## A292133.P17339500144173712264

`A286352(n)+A212619(A153283(n))`
-/

namespace A292133.P17339500144173712264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286352 n + A212619 (A153283 n).toNat

end

end A292133.P17339500144173712264

/-! ## A292133.P6418077601666534290

`A286352(n)+A212619(A153288(n))`
-/

namespace A292133.P6418077601666534290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286352 n + A212619 (A153288 n).toNat

end

end A292133.P6418077601666534290

/-!
# A292134: Main diagonal of A292133.

The programs for A292134, there is no canonical definition to state claims against.
-/

/-! ## A292134.P3775927975822430074

`A292133(∑[4*n])`
-/

namespace A292134.P3775927975822430074
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292133 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A292134.P3775927975822430074

/-! ## A292134.P1725969334749013608

`A292133(A046092(n))^A178334(n)`
-/

namespace A292134.P1725969334749013608
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A292133 (A046092 n).toNat : ℚ) ^ (A178334 n : ℤ)

end

end A292134.P1725969334749013608

/-! ## A292134.P7214484604050380482

`or(A000007(n), A292133(A046092(n)))`
-/

namespace A292134.P7214484604050380482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A292133 (A046092 n).toNat)

end

end A292134.P7214484604050380482

/-! ## A292134.P1810720689127939743

`A292133(A046092(n))+A008683(A069262(n+1))`
-/

namespace A292134.P1810720689127939743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292133 (A046092 n).toNat + A008683 (A069262 (n + 1)).toNat

end

end A292134.P1810720689127939743

/-!
# A292136: G.f.: Re(1/(i*x; x)_inf), where (a; q)_inf is the q-Pochhammer symbol, i = sqrt(-1).

The programs for A292136, there is no canonical definition to state claims against.
-/

/-! ## A292136.P11682083872767366807

`A292137(n)+A278401(n)`
-/

namespace A292136.P11682083872767366807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292137 n + A278401 n

end

end A292136.P11682083872767366807

/-! ## A292136.P16510972166314402705

`A278402(n)-A292137(n)`
-/

namespace A292136.P16510972166314402705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278402 n - A292137 n

end

end A292136.P16510972166314402705

/-! ## A292136.P1707619044371733337

`2*A363046(n)-A027187(n)`
-/

namespace A292136.P1707619044371733337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A363046 n - A027187 n

end

end A292136.P1707619044371733337

/-! ## A292136.P17907538172042048745

`(A278402(n)+A278401(n))/2`
-/

namespace A292136.P17907538172042048745
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A278402 n + A278401 n : ℚ) / 2

end

end A292136.P17907538172042048745

/-! ## A292136.P7884518434406408229

`A278402(n)+A057428(n)*A292137(n)`
-/

namespace A292136.P7884518434406408229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278402 n + A057428 n * A292137 n

end

end A292136.P7884518434406408229

/-! ## A292136.P5935593485781260573

`A278401(n)-A057428(n)*A292137(n)`
-/

namespace A292136.P5935593485781260573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278401 n - A057428 n * A292137 n

end

end A292136.P5935593485781260573

/-! ## A292136.P17586413406040329553

`A278402(n)+A153881(n+1)*A292137(n)`
-/

namespace A292136.P17586413406040329553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278402 n + A153881 (n + 1) * A292137 n

end

end A292136.P17586413406040329553

/-! ## A292136.P13302053787475623398

`A292138(n)+A278402(n)`
-/

namespace A292136.P13302053787475623398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292138 n + A278402 n

end

end A292136.P13302053787475623398

/-! ## A292136.P3156695282823832856

`A278401(n)-A292138(n)`
-/

namespace A292136.P3156695282823832856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278401 n - A292138 n

end

end A292136.P3156695282823832856

/-!
# A292137: G.f.: Im(1/(i*x; x)_inf), where (a; q)_inf is the q-Pochhammer symbol, i = sqrt(-1).

The programs for A292137, there is no canonical definition to state claims against.
-/

/-! ## A292137.P5999359340286548631

`A278402(n)-A292136(n)`
-/

namespace A292137.P5999359340286548631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278402 n - A292136 n

end

end A292137.P5999359340286548631

/-! ## A292137.P76804428969585350

`A292136(n)-A278401(n)`
-/

namespace A292137.P76804428969585350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292136 n - A278401 n

end

end A292137.P76804428969585350

/-! ## A292137.P511648123574700023

`(A278402(n)-A278401(n))/2`
-/

namespace A292137.P511648123574700023
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A278402 n - A278401 n : ℚ) / 2

end

end A292137.P511648123574700023

/-! ## A292137.P50585964556127357

`A278402(n)+A292136(n)/A134824(n+2)`
-/

namespace A292137.P50585964556127357
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A278402 n : ℚ) + (A292136 n : ℚ) / (A134824 (n + 2) : ℚ)

end

end A292137.P50585964556127357

/-! ## A292137.P11261220313994321262

`2*A363046(n)-A027187(n)-A278401(n)`
-/

namespace A292137.P11261220313994321262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A363046 n - A027187 n - A278401 n

end

end A292137.P11261220313994321262

/-! ## A292137.P14035971906584505416

`A278402(n)-(2*A363046(n)-A027187(n))`
-/

namespace A292137.P14035971906584505416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278402 n - (2 * A363046 n - A027187 n)

end

end A292137.P14035971906584505416

/-! ## A292137.P8154789481371690977

`A278402(n)+A057428(A008669(n))*A292136(n)`
-/

namespace A292137.P8154789481371690977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278402 n + A057428 (A008669 n).toNat * A292136 n

end

end A292137.P8154789481371690977

/-! ## A292137.P239329848019388334

`-A292138(n)`
-/

namespace A292137.P239329848019388334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A292138 n

end

end A292137.P239329848019388334

/-! ## A292137.P1787060536195140187

`A243836(n)-A292138(n)`
-/

namespace A292137.P1787060536195140187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243836 n - A292138 n

end

end A292137.P1787060536195140187

/-! ## A292137.P12978190909372089599

`A264668(n)-A292138(n)`
-/

namespace A292137.P12978190909372089599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264668 n - A292138 n

end

end A292137.P12978190909372089599

/-!
# A292138: G.f.: Im(1/(-i*x; x)_inf), where (a; q)_inf is the q-Pochhammer symbol, i = sqrt(-1).

The programs for A292138, there is no canonical definition to state claims against.
-/

/-! ## A292138.P11974841754061710612

`-A292137(n)`
-/

namespace A292138.P11974841754061710612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A292137 n

end

end A292138.P11974841754061710612

/-! ## A292138.P4548035292570912530

`A243836(n)-A292137(n)`
-/

namespace A292138.P4548035292570912530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243836 n - A292137 n

end

end A292138.P4548035292570912530

/-! ## A292138.P15314291280846043853

`A264668(n)-A292137(n)`
-/

namespace A292138.P15314291280846043853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264668 n - A292137 n

end

end A292138.P15314291280846043853

/-! ## A292138.P11057050073854885176

`A278401(n)-A292136(n)`
-/

namespace A292138.P11057050073854885176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278401 n - A292136 n

end

end A292138.P11057050073854885176

/-! ## A292138.P6407076946521531218

`A292136(n)-A278402(n)`
-/

namespace A292138.P6407076946521531218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292136 n - A278402 n

end

end A292138.P6407076946521531218

/-! ## A292138.P8700338938099937267

`A057428(n)*A292137(n)`
-/

namespace A292138.P8700338938099937267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n * A292137 n

end

end A292138.P8700338938099937267

/-! ## A292138.P8453097177460620400

`A002262(∑[n])-A292137(n)`
-/

namespace A292138.P8453097177460620400
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (∑ j ∈ Finset.range (n + 1), f1 j) - A292137 n

end

end A292138.P8453097177460620400

/-! ## A292138.P7997100451693069934

`char[A016961(n)]-A292137(n)`
-/

namespace A292138.P7997100451693069934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016961 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) - A292137 n

end

end A292138.P7997100451693069934

/-! ## A292138.P17731533164288886111

`A112802(n+1)-A292137(n)`
-/

namespace A292138.P17731533164288886111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112802 (n + 1) - A292137 n

end

end A292138.P17731533164288886111

/-! ## A292138.P7461208672878194884

`A153881(n+1)*A292137(n)`
-/

namespace A292138.P7461208672878194884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153881 (n + 1) * A292137 n

end

end A292138.P7461208672878194884

/-!
# A292140: G.f.: Im((2*i; x)_oo), where (a; q)_oo is the q-Pochhammer symbol, i = sqrt(-1).

The programs for A292140, there is no canonical definition to state claims against.
-/

/-! ## A292140.P6154183619592330344

`-(2*A292141(n))`
-/

namespace A292140.P6154183619592330344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(2 * A292141 n)

end

end A292140.P6154183619592330344

/-! ## A292140.P2798338474625720300

`A007427(p?[A178412(n+1)])*A292141(n)`
-/

namespace A292140.P2798338474625720300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178412 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007427 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat * A292141 n

end

end A292140.P2798338474625720300

/-! ## A292140.P6579067262025861400

`A000007(n+1)-2*A292141(n)`
-/

namespace A292140.P6579067262025861400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) - 2 * A292141 n

end

end A292140.P6579067262025861400

/-! ## A292140.P4554648663880741214

`A007427(p?[A003056(n)])*A292141(n)`
-/

namespace A292140.P4554648663880741214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007427 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat * A292141 n

end

end A292140.P4554648663880741214

/-! ## A292140.P15762535183661634906

`A178412(A045390(n+2))*A292141(n)`
-/

namespace A292140.P15762535183661634906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178412 (A045390 (n + 2)).toNat * A292141 n

end

end A292140.P15762535183661634906

/-! ## A292140.P14854143745120421505

`A007427(p?[A163334(n)])*A292141(n)`
-/

namespace A292140.P14854143745120421505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163334 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007427 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat * A292141 n

end

end A292140.P14854143745120421505

/-! ## A292140.P11817559018287473395

`A002448(A052552(2*n+1))*A292141(n)`
-/

namespace A292140.P11817559018287473395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002448 (A052552 (2 * n + 1)).toNat * A292141 n

end

end A292140.P11817559018287473395

/-! ## A292140.P16403151153096882353

`A007427(p?[A163357(n)])*A292141(n)`
-/

namespace A292140.P16403151153096882353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163357 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007427 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat * A292141 n

end

end A292140.P16403151153096882353

/-! ## A292140.P16182335221330931788

`A007427(A045390(n+1))*A292141(n)`
-/

namespace A292140.P16182335221330931788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007427 (A045390 (n + 1)).toNat * A292141 n

end

end A292140.P16182335221330931788

/-!
# A292141: a(n) = -A292140(n)/2.

The programs for A292141, there is no canonical definition to state claims against.
-/

/-! ## A292141.P1006162469817614397

`-A292140(n)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A292141.P1006162469817614397
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-A292140 n : ℚ) / 2

end

end A292141.P1006162469817614397

/-! ## A292141.P7268397240750274340

`A000038(n+1)-A292140(n)/2`
-/

namespace A292141.P7268397240750274340
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000038 (n + 1) : ℚ) - (A292140 n : ℚ) / 2

end

end A292141.P7268397240750274340

/-! ## A292141.P3894255890772708339

`A063524(n+2)-A292140(n)/2`
-/

namespace A292141.P3894255890772708339
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A063524 (n + 2) : ℚ) - (A292140 n : ℚ) / 2

end

end A292141.P3894255890772708339

/-! ## A292141.P1286665233414724268

`A292140(n)/A292140(gcd(n, n+1))`
-/

namespace A292141.P1286665233414724268
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A292140 n : ℚ) / (A292140 (Nat.gcd n (n + 1)) : ℚ)

end

end A292141.P1286665233414724268

/-! ## A292141.P10631477357740224849

`A292140(n)/A292140(floor(1/(n+1)))`
-/

namespace A292141.P10631477357740224849
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A292140 n : ℚ) / (A292140 ⌊1 / (n + 1 : ℚ)⌋.toNat : ℚ)

end

end A292141.P10631477357740224849

/-! ## A292141.P14264368712862812405

`A036987(2*(n+1))-A292140(n)/2`
-/

namespace A292141.P14264368712862812405
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A036987 (2 * (n + 1)) : ℚ) - (A292140 n : ℚ) / 2

end

end A292141.P14264368712862812405

/-! ## A292141.P9134650514906962136

`A000007(n+1)-A292140(n)/2`
-/

namespace A292141.P9134650514906962136
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000007 (n + 1) : ℚ) - (A292140 n : ℚ) / 2

end

end A292141.P9134650514906962136

/-! ## A292141.P17601037704734407368

`A000035(2*n)-A292140(n)/2`
-/

namespace A292141.P17601037704734407368
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000035 (2 * n) : ℚ) - (A292140 n : ℚ) / 2

end

end A292141.P17601037704734407368

/-!
# A292142: Triangle read by rows: T(n,k) = (-4)^(k mod 2) * T(n-k,k-1) + T(n-k,k) with T(0,0) = 1 for 0 <= k <= A003056(n).

The programs for A292142, there is no canonical definition to state claims against.
-/

/-! ## A292142.P1807227114532540231

`A001316(A127904(n))*A292047(n)`
-/

namespace A292142.P1807227114532540231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 (A127904 n).toNat * A292047 n

end

end A292142.P1807227114532540231

/-! ## A292142.P293259874779987946

`A007948(A000079(n))*A292047(n)`
-/

namespace A292142.P293259874779987946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007948 (A000079 n).toNat * A292047 n

end

end A292142.P293259874779987946

/-! ## A292142.P5922947096657157544

`a(A001221(A154139(n+1)))` with `a(0)=1, a(1)=0, a(2)=-4, a(3)=0`
-/

namespace A292142.P5922947096657157544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, -4, 0] fun n a =>
  a (A001221 (A154139 (n + 1)).toNat).toNat

end

end A292142.P5922947096657157544

/-! ## A292142.P7724044945088142249

`A007948(A056450(n))*A292047(n)`
-/

namespace A292142.P7724044945088142249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007948 (A056450 n).toNat * A292047 n

end

end A292142.P7724044945088142249

/-!
# A292143: Triangle read by rows: T(n,k) = (-4)^(1 - k mod 2) * T(n-k,k-1) + T(n-k,k) with T(0,0) = 1 for 0 <= k <= A003056(n).

The programs for A292143, there is no canonical definition to state claims against.
-/

/-! ## A292143.P4623841149210080588

`A073793(A351637(n)^A184403(n+1))`
-/

namespace A292143.P4623841149210080588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073793 (SequenceMachineLib.roundAway ((A351637 n : ℚ) ^ (A184403 (n + 1) : ℤ))).toNat

end

end A292143.P4623841149210080588

/-! ## A292143.P7002761221077094206

`A062157(A350824(n)²²)*A350824(n)`
-/

namespace A292143.P7002761221077094206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 ((A350824 n ^ 2) ^ 2).toNat * A350824 n

end

end A292143.P7002761221077094206

/-! ## A292143.P3723625221287366630

`A007305(A351637(n)^4)*A062157(A350824(n))`
-/

namespace A292143.P3723625221287366630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007305 (A351637 n ^ 4).toNat * A062157 (A350824 n).toNat

end

end A292143.P3723625221287366630

/-! ## A292143.P12674429378987055080

`A062157(A350824(n))*A256478(A219311(n)^4)`
-/

namespace A292143.P12674429378987055080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 (A350824 n).toNat * A256478 (A219311 n ^ 4).toNat

end

end A292143.P12674429378987055080

/-! ## A292143.P7513997785594238104

`A062157(A351637(n))*A256478(A219311(n)^4)`
-/

namespace A292143.P7513997785594238104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 (A351637 n).toNat * A256478 (A219311 n ^ 4).toNat

end

end A292143.P7513997785594238104

/-!
# A292144: a(n) is the greatest k < n such that k*n is square.

The programs for A292144, the canonical program `A292144.P13355653509212919962` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A292144 has offset 1).

The definition of A292144 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A292144.P13355653509212919962

`(sqrt(n+1)-sqrt(sqrt(A055491(n+1))))²`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A292144

/-- `(sqrt(n+1)-sqrt(sqrt(A055491(n+1))))²` -/
def P13355653509212919962.Spec : Prop :=
  ∀ n, P13355653509212919962.a n = (A292144 (n + 1) : ℝ)

end A292144

/-! ## A292144.P18384805825126858936

`(n+1-A019554(n+1))²/(n+1)`
-/

namespace A292144.P18384805825126858936
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n + 1 : ℤ) - A019554 (n + 1)) ^ 2 : ℚ) / (n + 1 : ℚ)

end

end A292144.P18384805825126858936

namespace A292144

/-- `(n+1-A019554(n+1))²/(n+1)` -/
def P18384805825126858936.Spec : Prop :=
  ∀ n, P18384805825126858936.a n = (A292144 (n + 1) : ℚ)

end A292144

/-! ## A292144.P11081979389273797715

`A057918(n+1)²*Δ[A069891(n)]`
-/

namespace A292144.P11081979389273797715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069891 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057918 (n + 1) ^ 2 * (f1 (n + 1) - f1 n)

end

end A292144.P11081979389273797715

namespace A292144

/-- `A057918(n+1)²*Δ[A069891(n)]` -/
def P11081979389273797715.Spec : Prop :=
  ∀ n, P11081979389273797715.a n = A292144 (n + 1)

end A292144

/-! ## A292144.P8514040684262232470

`A057918(n+1)²*A007913(n+1)`
-/

namespace A292144.P8514040684262232470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057918 (n + 1) ^ 2 * A007913 (n + 1)

end

end A292144.P8514040684262232470

namespace A292144

/-- `A057918(n+1)²*A007913(n+1)` -/
def P8514040684262232470.Spec : Prop :=
  ∀ n, P8514040684262232470.a n = A292144 (n + 1)

end A292144

/-! ## A292144.P3890179036502489983

`A057918(n+1)²*sqrt(A055491(n+1))`
-/

namespace A292144.P3890179036502489983
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A057918 (n + 1) ^ 2 : ℝ) * Real.sqrt (A055491 (n + 1) : ℝ)

end

end A292144.P3890179036502489983

namespace A292144

/-- `A057918(n+1)²*sqrt(A055491(n+1))` -/
def P3890179036502489983.Spec : Prop :=
  ∀ n, P3890179036502489983.a n = (A292144 (n + 1) : ℝ)

end A292144

/-! ## A292144.P5314210871218658173

`(1-A000188(n+1))²*A007913(n+1)`
-/

namespace A292144.P5314210871218658173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A000188 (n + 1)) ^ 2 * A007913 (n + 1)

end

end A292144.P5314210871218658173

namespace A292144

/-- `(1-A000188(n+1))²*A007913(n+1)` -/
def P5314210871218658173.Spec : Prop :=
  ∀ n, P5314210871218658173.a n = A292144 (n + 1)

end A292144

/-! ## A292144.P4225187200477697622

`(1-A000188(n+1))²*A056135(n+1)`
-/

namespace A292144.P4225187200477697622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A000188 (n + 1)) ^ 2 * A056135 (n + 1)

end

end A292144.P4225187200477697622

namespace A292144

/-- `(1-A000188(n+1))²*A056135(n+1)` -/
def P4225187200477697622.Spec : Prop :=
  ∀ n, P4225187200477697622.a n = A292144 (n + 1)

end A292144

/-! ## A292144.P609595477664370810

`(1-A326128(n+1)+n)*A057918(n+1)²`
-/

namespace A292144.P609595477664370810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A326128 (n + 1) + (n : ℤ)) * A057918 (n + 1) ^ 2

end

end A292144.P609595477664370810

namespace A292144

/-- `(1-A326128(n+1)+n)*A057918(n+1)²` -/
def P609595477664370810.Spec : Prop :=
  ∀ n, P609595477664370810.a n = A292144 (n + 1)

end A292144

/-! ## A292144.P1531231452009601887

`A019554(n+1)²/(n+1)*A057918(n+1)²`
-/

namespace A292144.P1531231452009601887
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A019554 (n + 1) ^ 2 : ℚ) / (n + 1 : ℚ) * (A057918 (n + 1) ^ 2 : ℚ)

end

end A292144.P1531231452009601887

namespace A292144

/-- `A019554(n+1)²/(n+1)*A057918(n+1)²` -/
def P1531231452009601887.Spec : Prop :=
  ∀ n, P1531231452009601887.a n = (A292144 (n + 1) : ℚ)

end A292144

/-! ## A292144.P8773465289659014564

`(n+1)^3/A059479(n+1)*A057918(n+1)²`
-/

namespace A292144.P8773465289659014564
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 3 : ℚ) / (A059479 (n + 1) : ℚ) * (A057918 (n + 1) ^ 2 : ℚ)

end

end A292144.P8773465289659014564

namespace A292144

/-- `(n+1)^3/A059479(n+1)*A057918(n+1)²` -/
def P8773465289659014564.Spec : Prop :=
  ∀ n, P8773465289659014564.a n = (A292144 (n + 1) : ℚ)

end A292144

/-! ## A292144.P18432273004556702104

`(n+1)/(n+1-A326055(n+1))*A057918(n+1)²`
-/

namespace A292144.P18432273004556702104
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((n + 1 : ℤ) - A326055 (n + 1) : ℚ) * (A057918 (n + 1) ^ 2 : ℚ)

end

end A292144.P18432273004556702104

namespace A292144

/-- `(n+1)/(n+1-A326055(n+1))*A057918(n+1)²` -/
def P18432273004556702104.Spec : Prop :=
  ∀ n, P18432273004556702104.a n = (A292144 (n + 1) : ℚ)

end A292144

/-! ## A292144.P10429029431675434249

`(n+1)/(floor(sqrt(A336644(n+1)))+1)²*A057918(n+1)²`
-/

namespace A292144.P10429029431675434249
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((Int.sqrt (A336644 (n + 1)) + 1) ^ 2 : ℚ) * (A057918 (n + 1) ^ 2 : ℚ)

end

end A292144.P10429029431675434249

namespace A292144

/-- `(n+1)/(floor(sqrt(A336644(n+1)))+1)²*A057918(n+1)²` -/
def P10429029431675434249.Spec : Prop :=
  ∀ n, P10429029431675434249.a n = (A292144 (n + 1) : ℚ)

end A292144

/-! ## A292144.P13878394156579783613

`A000290(A000188(n+1)-1)*A007913(n+1)`
-/

namespace A292144.P13878394156579783613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (A000188 (n + 1) - 1).toNat * A007913 (n + 1)

end

end A292144.P13878394156579783613

namespace A292144

/-- `A000290(A000188(n+1)-1)*A007913(n+1)` -/
def P13878394156579783613.Spec : Prop :=
  ∀ n, P13878394156579783613.a n = A292144 (n + 1)

end A292144

/-! ## A292144.P4579070785473742147

`A000290(n%A000188(n+1))*A007913(n+1)`
-/

namespace A292144.P4579070785473742147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (Int.tmod (n : ℤ) (A000188 (n + 1))).toNat * A007913 (n + 1)

end

end A292144.P4579070785473742147

namespace A292144

/-- `A000290(n%A000188(n+1))*A007913(n+1)` -/
def P4579070785473742147.Spec : Prop :=
  ∀ n, P4579070785473742147.a n = A292144 (n + 1)

end A292144

/-! ## A292144.P18276593892544691817

`A000290(A019554(n+1)-A007913(n+1))/A007913(n+1)`
-/

namespace A292144.P18276593892544691817
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000290 (A019554 (n + 1) - A007913 (n + 1)).toNat : ℚ) / (A007913 (n + 1) : ℚ)

end

end A292144.P18276593892544691817

namespace A292144

/-- `A000290(A019554(n+1)-A007913(n+1))/A007913(n+1)` -/
def P18276593892544691817.Spec : Prop :=
  ∀ n, P18276593892544691817.a n = (A292144 (n + 1) : ℚ)

end A292144

/-! ## A292144.P6541775637875785764

`A038389(2*(n+1))-A038388(2*(n+1))`
-/

namespace A292144.P6541775637875785764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038389 (2 * (n + 1)) - A038388 (2 * (n + 1))

end

end A292144.P6541775637875785764

namespace A292144

/-- `A038389(2*(n+1))-A038388(2*(n+1))` -/
def P6541775637875785764.Spec : Prop :=
  ∀ n, P6541775637875785764.a n = A292144 (n + 1)

end A292144

/-!
# A292145: A permutation of the natural numbers: A292144(A013929(n)).

The programs for A292145, the canonical program `A292145.P11540186890732361601` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A292145 has offset 1).

The definition of A292145 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A013929, A292144, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A292145.P11540186890732361601

`A292144(A013929(n+1))`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A292145

/-- `A292144(A013929(n+1))` -/
def P11540186890732361601.Spec : Prop :=
  ∀ n, P11540186890732361601.a n = A292145 (n + 1)

theorem P11540186890732361601.correct : P11540186890732361601.Spec := by
  intro n
  simp only [A292145, Nat.add_sub_cancel]

end A292145

/-! ## A292145.P10793929954205415684

`(A013929(n+1)-A015049(n+1))²/A013929(n+1)`
-/

namespace A292145.P10793929954205415684
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A013929 (n + 1) - A015049 (n + 1)) ^ 2 : ℚ) / (A013929 (n + 1) : ℚ)

end

end A292145.P10793929954205415684

namespace A292145

/-- `(A013929(n+1)-A015049(n+1))²/A013929(n+1)` -/
def P10793929954205415684.Spec : Prop :=
  ∀ n, P10793929954205415684.a n = (A292145 (n + 1) : ℚ)

end A292145

/-! ## A292145.P14924230202356399263

`A292144(A162966(n+2))`
-/

namespace A292145.P14924230202356399263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292144 (A162966 (n + 2)).toNat

end

end A292145.P14924230202356399263

namespace A292145

/-- `A292144(A162966(n+2))` -/
def P14924230202356399263.Spec : Prop :=
  ∀ n, P14924230202356399263.a n = A292145 (n + 1)

end A292145

/-! ## A292145.P3793466658367639772

`A292144(A015049(n+1)*A087050(n+1))`
-/

namespace A292145.P3793466658367639772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292144 (A015049 (n + 1) * A087050 (n + 1)).toNat

end

end A292145.P3793466658367639772

namespace A292145

/-- `A292144(A015049(n+1)*A087050(n+1))` -/
def P3793466658367639772.Spec : Prop :=
  ∀ n, P3793466658367639772.a n = A292145 (n + 1)

end A292145

/-! ## A292145.P2542265010243624437

`A292144(A076333(n+1)*A084936(n+1))`
-/

namespace A292145.P2542265010243624437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292144 (A076333 (n + 1) * A084936 (n + 1)).toNat

end

end A292145.P2542265010243624437

namespace A292145

/-- `A292144(A076333(n+1)*A084936(n+1))` -/
def P2542265010243624437.Spec : Prop :=
  ∀ n, P2542265010243624437.a n = A292145 (n + 1)

end A292145

/-! ## A292145.P8191586346160494843

`A292144(eq[A105570(n), A233583(n+1)])`
-/

namespace A292145.P8191586346160494843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105570 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292144 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A292145.P8191586346160494843

namespace A292145

/-- `A292144(eq[A105570(n), A233583(n+1)])` -/
def P8191586346160494843.Spec : Prop :=
  ∀ n, P8191586346160494843.a n = A292145 (n + 1)

end A292145

/-!
# A292148: Number of distinct convex hexagons that can be formed from n congruent isosceles right triangles. Reflections are not counted as distinct.

The programs for A292148, there is no canonical definition to state claims against.
-/

/-! ## A292148.P6484730637586292776

`A076490(A334887(n))`
-/

namespace A292148.P6484730637586292776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076490 (A334887 n).toNat

end

end A292148.P6484730637586292776

/-!
# A292150: Number of distinct convex octagons that can be formed from n congruent isosceles right triangles. Reflections are not counted as distinct.

The programs for A292150, there is no canonical definition to state claims against.
-/

/-! ## A292150.P3789339723895185276

`C(A001221(n+1), A262626(A051472(2*n)))`
-/

namespace A292150.P3789339723895185276
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A001221 (n + 1)).toNat (A262626 (A051472 (2 * n)).toNat).toNat

end

end A292150.P3789339723895185276

/-! ## A292150.P15550666073635455621

`A164349(∏{d}[n+1, #]/(n+1)-(1-2*n%2))`
-/

namespace A292150.P15550666073635455621
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164349 (SequenceMachineLib.roundAway (((∏ d ∈ Nat.divisors (f1 n), d : ℕ) : ℚ) / (n + 1 : ℚ) - (1 - ((2 * (n % 2) : ℕ) : ℤ) : ℚ))).toNat

end

end A292150.P15550666073635455621

/-! ## A292150.P7309959822947223854

`A055641(xor(14, A294617(n)))`
-/

namespace A292150.P7309959822947223854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055641 (Int.xor 14 (A294617 n)).toNat

end

end A292150.P7309959822947223854

/-! ## A292150.P7586109302156390859

`A133010(∑[dr(A090182(n))])`
-/

namespace A292150.P7586109302156390859
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A090182 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133010 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A292150.P7586109302156390859

/-! ## A292150.P14434352619943377868

`A340998(∑[A068527(n)]+1)`
-/

namespace A292150.P14434352619943377868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068527 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340998 ((∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat + 140)

end

end A292150.P14434352619943377868

/-!
# A292152: Triangle T(m,k) read by rows, where T(m,k) is the number of ways in which 1<=k<=m positions can be picked in an m X m square grid such that the picked positions don't have any symmetry.

The programs for A292152, there is no canonical definition to state claims against.
-/

/-! ## A292152.P2741635250469755153

`A090642(comp[∑[n]])-A292153(n+1)`
-/

namespace A292152.P2741635250469755153
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090642 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) - A292153 (n + 1)

end

end A292152.P2741635250469755153

/-! ## A292152.P16037526573485876342

`A090642(A014132(n+1))-(A292156(n+1)+A291717(n+1))`
-/

namespace A292152.P16037526573485876342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090642 (A014132 (n + 1)).toNat - (A292156 (n + 1) + A291717 (n + 1))

end

end A292152.P16037526573485876342

/-! ## A292152.P6149904561730079523

`A090642(A014132(n+1))-(A292156(n+1)+A292155(n+1)+A292154(A077168(n)))`
-/

namespace A292152.P6149904561730079523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090642 (A014132 (n + 1)).toNat - (A292156 (n + 1) + (A292155 (n + 1) + A292154 (A077168 n).toNat))

end

end A292152.P6149904561730079523

/-! ## A292152.P3501566384008239874

`A236378(A184715(n+2))`
-/

namespace A292152.P3501566384008239874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236378 (A184715 (n + 2)).toNat

end

end A292152.P3501566384008239874

/-! ## A292152.P7525302223330142716

`A236378(5^A139601(n))`
-/

namespace A292152.P7525302223330142716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236378 (SequenceMachineLib.roundAway ((5 : ℚ) ^ (A139601 n : ℤ))).toNat

end

end A292152.P7525302223330142716

/-!
# A292153: Triangle T(m,k) read by rows, where T(m,k) is the number of ways in which 1<=k<=m positions can be picked in an m X m square grid such that the picked positions have a point symmetry or a line symmetry.

The programs for A292153, there is no canonical definition to state claims against.
-/

/-! ## A292153.P2311261388208666858

`A292154(n+1)+A292155(n+1)+A292156(n+1)`
-/

namespace A292153.P2311261388208666858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292154 (n + 1) + A292155 (n + 1) + A292156 (n + 1)

end

end A292153.P2311261388208666858

/-! ## A292153.P18213091521751695077

`A292156(n+1)+A291717(n+1)`
-/

namespace A292153.P18213091521751695077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292156 (n + 1) + A291717 (n + 1)

end

end A292153.P18213091521751695077

/-! ## A292153.P4394731555198871141

`A090642(comp[∑[n]])-A292152(n+1)`
-/

namespace A292153.P4394731555198871141
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090642 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) - A292152 (n + 1)

end

end A292153.P4394731555198871141

/-! ## A292153.P7025030141702763520

`A292154(n+1)+A292156(n+1)+A292155(A077168(n))`
-/

namespace A292153.P7025030141702763520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292154 (n + 1) + (A292156 (n + 1) + A292155 (A077168 n).toNat)

end

end A292153.P7025030141702763520

/-! ## A292153.P16265513704740259788

`A291717(A077168(n))+A090642(A014132(n+1))-A292152(n+1)-A291717(n+1)`
-/

namespace A292153.P16265513704740259788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291717 (A077168 n).toNat + (A090642 (A014132 (n + 1)).toNat - A292152 (n + 1) - A291717 (n + 1))

end

end A292153.P16265513704740259788

/-!
# A292154: Triangle T(m,k) read by rows, where T(m,k) is the number of ways in which 1<=k<=m positions can be picked in an m X m square grid such that the picked positions have both a point symmetry and a line symmetry.

The programs for A292154, there is no canonical definition to state claims against.
-/

/-! ## A292154.P18103229469584154377

`A291717(n+1)-A292155(n+1)`
-/

namespace A292154.P18103229469584154377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291717 (n + 1) - A292155 (n + 1)

end

end A292154.P18103229469584154377

/-! ## A292154.P7086573984224831584

`A292153(n+1)-A292155(n+1)-A292156(n+1)`
-/

namespace A292154.P7086573984224831584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292153 (n + 1) - A292155 (n + 1) - A292156 (n + 1)

end

end A292154.P7086573984224831584

/-! ## A292154.P13961085625926972684

`A292153(n+1)-A292156(n+1)-A292155(A077168(n))`
-/

namespace A292154.P13961085625926972684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292153 (n + 1) - A292156 (n + 1) - A292155 (A077168 n).toNat

end

end A292154.P13961085625926972684

/-! ## A292154.P1910128275212026772

`A291717(n+1)-A072068(A072063(n+3)*A072103(n+1))`
-/

namespace A292154.P1910128275212026772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291717 (n + 1) - A072068 (A072063 (n + 3) * A072103 (n + 1)).toNat

end

end A292154.P1910128275212026772

/-! ## A292154.P9658758530361940321

`A291717(n+1)/A191770(A101866(3*(n+1)))`
-/

namespace A292154.P9658758530361940321
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A291717 (n + 1) : ℚ) / (A191770 (A101866 (3 * (n + 1))).toNat : ℚ)

end

end A292154.P9658758530361940321

/-!
# A292155: Triangle T(m,k) read by rows, where T(m,k) is the number of ways in which 1<=k<=m positions can be picked in an m X m square grid such that the picked positions have a point symmetry but no line symmetry.

The programs for A292155, there is no canonical definition to state claims against.
-/

/-! ## A292155.P18340240770399252975

`A291717(n+1)-A292154(n+1)`
-/

namespace A292155.P18340240770399252975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291717 (n + 1) - A292154 (n + 1)

end

end A292155.P18340240770399252975

/-! ## A292155.P757240428927317743

`A292153(n+1)-(A292156(n+1)+A292154(n+1))`
-/

namespace A292155.P757240428927317743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292153 (n + 1) - (A292156 (n + 1) + A292154 (n + 1))

end

end A292155.P757240428927317743

/-! ## A292155.P16592048324326819282

`lcm(A089408(n), A243326(A233543(n)))`
-/

namespace A292155.P16592048324326819282
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A089408 n) (A243326 (A233543 n).toNat)

end

end A292155.P16592048324326819282

/-! ## A292155.P4742264760746624413

`A072068(A072063(n+3)*A072103(n+1))`
-/

namespace A292155.P4742264760746624413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072068 (A072063 (n + 3) * A072103 (n + 1)).toNat

end

end A292155.P4742264760746624413

/-! ## A292155.P391460869218102718

`A001613(A346097(n+1))*A117434(2*n+1)`
-/

namespace A292155.P391460869218102718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001613 (A346097 (n + 1)).toNat * A117434 (2 * n + 1)

end

end A292155.P391460869218102718

/-!
# A292156: Triangle T(m,k) read by rows, where T(m,k) is the number of ways in which 1<=k<=m positions can be picked in an m X m square grid such that the picked positions have a line symmetry but no point symmetry.

The programs for A292156, there is no canonical definition to state claims against.
-/

/-! ## A292156.P17806362406531576131

`A292153(n+1)-A291717(n+1)`
-/

namespace A292156.P17806362406531576131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292153 (n + 1) - A291717 (n + 1)

end

end A292156.P17806362406531576131

/-! ## A292156.P7932172595842575460

`A292153(n+1)-(A292155(n+1)+A292154(n+1))`
-/

namespace A292156.P7932172595842575460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292153 (n + 1) - (A292155 (n + 1) + A292154 (n + 1))

end

end A292156.P7932172595842575460

/-! ## A292156.P559953808191699945

`A090642(comp[∑[n]])-A292152(n+1)-A291717(n+1)`
-/

namespace A292156.P559953808191699945
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090642 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) - A292152 (n + 1) - A291717 (n + 1)

end

end A292156.P559953808191699945

/-! ## A292156.P13456910982505498330

`A090642(A014132(n+1))-(A292152(n+1)+A291717(n+1))`
-/

namespace A292156.P13456910982505498330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090642 (A014132 (n + 1)).toNat - (A292152 (n + 1) + A291717 (n + 1))

end

end A292156.P13456910982505498330

/-! ## A292156.P6938431846444790569

`lcm(A084662(2*(n+1)), A235358(A000108(n)))`
-/

namespace A292156.P6938431846444790569
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A084662 (2 * (n + 1))) (A235358 (A000108 n).toNat)

end

end A292156.P6938431846444790569

/-!
# A292157: Number of Besźel [Beszel] Polycubes with n cells, identifying mirror images. A Besźel Polycube is a polycube whose cells each have two or more even coordinates.

The programs for A292157, there is no canonical definition to state claims against.
-/

/-! ## A292157.P14877999066065174857

`A319616(n)-A055672(A182159(n))`
-/

namespace A292157.P14877999066065174857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319616 n - A055672 (A182159 n).toNat

end

end A292157.P14877999066065174857

/-! ## A292157.P6267336671670697006

`A319616(n)-A276570(A002212(n))`
-/

namespace A292157.P6267336671670697006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319616 n - A276570 (A002212 n).toNat

end

end A292157.P6267336671670697006

/-! ## A292157.P7982259674294599994

`A319616(n)-A192323(A292463(n))`
-/

namespace A292157.P7982259674294599994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319616 n - A192323 (A292463 n).toNat

end

end A292157.P7982259674294599994

/-! ## A292157.P1665149630202249514

`xor(A319616(n), A360254(A291451(n)))`
-/

namespace A292157.P1665149630202249514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A319616 n) (A360254 (A291451 n).toNat)

end

end A292157.P1665149630202249514

/-!
# A292159: Square array A(n,k), n>=0, k>=0, read by antidiagonals, where column k is the expansion of Re((k*i; x)_inf), and (a; q)_inf is the q-Pochhammer symbol, i = sqrt(-1).

The programs for A292159, there is no canonical definition to state claims against.
-/

/-! ## A292159.P11004596060004646246

`A034968(A322093(n+1))*A279928(n)`
-/

namespace A292159.P11004596060004646246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034968 (A322093 (n + 1)).toNat * A279928 n

end

end A292159.P11004596060004646246

/-! ## A292159.P11552648249157133892

`A034968(A322093(n+1))*A297325(n)`
-/

namespace A292159.P11552648249157133892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034968 (A322093 (n + 1)).toNat * A297325 n

end

end A292159.P11552648249157133892

/-! ## A292159.P3276694265848918714

`A279928(n)*A288638(A187829(n+1))`
-/

namespace A292159.P3276694265848918714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279928 n * A288638 (A187829 (n + 1)).toNat

end

end A292159.P3276694265848918714

/-! ## A292159.P17571587433508176487

`A288638(A187829(n+1))*A297325(n)`
-/

namespace A292159.P17571587433508176487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288638 (A187829 (n + 1)).toNat * A297325 n

end

end A292159.P17571587433508176487

/-! ## A292159.P17516390441235577241

`A124010(A108318(n+1))*A292131(n)`
-/

namespace A292159.P17516390441235577241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124010 (A108318 (n + 1)).toNat * A292131 n

end

end A292159.P17516390441235577241

/-!
# A292160: Square array A(n,k), n>=0, k>=0, read by antidiagonals, where column k is the expansion of Im((k*i; x)_inf), and (a; q)_inf is the q-Pochhammer symbol, i = sqrt(-1).

The programs for A292160, there is no canonical definition to state claims against.
-/

/-! ## A292160.P10576359006073753333

`A320278(A320606(n+1))-A025581(n)`
-/

namespace A292160.P10576359006073753333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320278 (A320606 (n + 1)).toNat - A025581 n

end

end A292160.P10576359006073753333

/-! ## A292160.P11969455539355882719

`A137579(A245049(n))-A025581(n)`
-/

namespace A292160.P11969455539355882719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137579 (A245049 n).toNat - A025581 n

end

end A292160.P11969455539355882719

/-! ## A292160.P1264613863848192070

`A006126(A362490(n))-A004736(n+1)`
-/

namespace A292160.P1264613863848192070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006126 (A362490 n).toNat - A004736 (n + 1)

end

end A292160.P1264613863848192070

/-!
# A292162: Main diagonal of A292160.

The programs for A292162, there is no canonical definition to state claims against.
-/

/-! ## A292162.P13003859337596564619

`A000578(n)*A055640(A263785(n+1))-n`
-/

namespace A292162.P13003859337596564619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 n * A055640 (A263785 (n + 1)).toNat - (n : ℤ)

end

end A292162.P13003859337596564619

/-! ## A292162.P11331257221570978548

`A292160(∑[4*n])`
-/

namespace A292162.P11331257221570978548
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292160 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A292162.P11331257221570978548

/-!
# A292164: Expansion of Product_{k>=1} (1 - k^2*x^k).

The programs for A292164, there is no canonical definition to state claims against.
-/

/-! ## A292164.P486604754445710519

`A292166(∑[n+3])`
-/

namespace A292164.P486604754445710519
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292166 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A292164.P486604754445710519

/-! ## A292164.P1183386867226175126

`A292166(A027379(n+1))^A178489(n)`
-/

namespace A292164.P1183386867226175126
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A292166 (A027379 (n + 1)).toNat : ℚ) ^ (A178489 n : ℤ)

end

end A292164.P1183386867226175126

/-! ## A292164.P2813683306970123450

`A292166(A027379(n+1))%A155465(n)`
-/

namespace A292164.P2813683306970123450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A292166 (A027379 (n + 1)).toNat) (A155465 n)

end

end A292164.P2813683306970123450

/-! ## A292164.P7331637687120847640

`A292166(A055998(n+1))%A162483(n)`
-/

namespace A292164.P7331637687120847640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A292166 (A055998 (n + 1)).toNat) (A162483 n)

end

end A292164.P7331637687120847640

/-! ## A292164.P11867779845668749616

`A033999(n)²*A292166(A027379(n+1))`
-/

namespace A292164.P11867779845668749616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n ^ 2 * A292166 (A027379 (n + 1)).toNat

end

end A292164.P11867779845668749616

/-! ## A292164.P7099583762658657064

`A014963(7*A165298(n+1))*A292166(A055998(n+1))`
-/

namespace A292164.P7099583762658657064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (7 * A165298 (n + 1)).toNat * A292166 (A055998 (n + 1)).toNat

end

end A292164.P7099583762658657064

/-!
# A292165: Expansion of Product_{k>=1} 1/(1 + k^2*x^k).

The programs for A292165, there is no canonical definition to state claims against.
-/

/-! ## A292165.P12901003126309099638

`A292068(∑[n+3])`
-/

namespace A292165.P12901003126309099638
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292068 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A292165.P12901003126309099638

/-! ## A292165.P15583264836914993368

`A292068(A141214(n))+char[9]`
-/

namespace A292165.P15583264836914993368
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292068 (A141214 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A292165.P15583264836914993368

/-! ## A292165.P8236490647804075575

`A014802(n)*A292068(A141214(n))`
-/

namespace A292165.P8236490647804075575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014802 n * A292068 (A141214 n).toNat

end

end A292165.P8236490647804075575

/-! ## A292165.P16647047249970343030

`A292068(A141214(n))^A178489(n)`
-/

namespace A292165.P16647047249970343030
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A292068 (A141214 n).toNat : ℚ) ^ (A178489 n : ℤ)

end

end A292165.P16647047249970343030

/-! ## A292165.P13435002829670730004

`A292068(A141214(n))%p?[A000032(n)]`
-/

namespace A292165.P13435002829670730004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A292068 (A141214 n).toNat) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A292165.P13435002829670730004

/-!
# A292166: Square array A(n,k), n>=0, k>=0, read by antidiagonals, where column k is the expansion of Product_{j>=1} (1 - j^k*x^j).

The programs for A292166, there is no canonical definition to state claims against.
-/

/-! ## A292166.P4566403398537597055

`A283272(n)-A089311(A094544(n))`
-/

namespace A292166.P4566403398537597055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283272 n - A089311 (A094544 n).toNat

end

end A292166.P4566403398537597055

/-! ## A292166.P11296039532287255252

`A283272(n)-A025469(A163661(n))`
-/

namespace A292166.P11296039532287255252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283272 n - A025469 (A163661 n).toNat

end

end A292166.P11296039532287255252

/-! ## A292166.P8274705164991447117

`A283272(n)-A151795(A060475(n))`
-/

namespace A292166.P8274705164991447117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283272 n - A151795 (A060475 n).toNat

end

end A292166.P8274705164991447117

/-! ## A292166.P2926717114918387578

`A283272(n)-A025469(A256116(n))`
-/

namespace A292166.P2926717114918387578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283272 n - A025469 (A256116 n).toNat

end

end A292166.P2926717114918387578

/-! ## A292166.P9491303963799339663

`A283272(n)-A016396(A294582(n))`
-/

namespace A292166.P9491303963799339663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283272 n - A016396 (A294582 n).toNat

end

end A292166.P9491303963799339663

/-!
# A292167: Main diagonal of A292166.

The programs for A292167, there is no canonical definition to state claims against.
-/

/-! ## A292167.P15703798415821833237

`A292166(∑[4*n])`
-/

namespace A292167.P15703798415821833237
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292166 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A292167.P15703798415821833237

/-! ## A292167.P7639870361053510534

`A292166(A046092(n))+A025469(n)`
-/

namespace A292167.P7639870361053510534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292166 (A046092 n).toNat + A025469 n

end

end A292167.P7639870361053510534

/-! ## A292167.P18426410390470831631

`A292166(A046092(n))^A007318(∑[n])`
-/

namespace A292167.P18426410390470831631
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A292166 (A046092 n).toNat : ℚ) ^ (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ)

end

end A292167.P18426410390470831631

/-! ## A292167.P455234738451471267

`A007318(C(2, n))*A292166(A046092(n))`
-/

namespace A292167.P455234738451471267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A292166 (A046092 n).toNat

end

end A292167.P455234738451471267

/-! ## A292167.P11331782210333054021

`A292166(A046092(n))^A014963(∑[n+1])`
-/

namespace A292167.P11331782210333054021
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A292166 (A046092 n).toNat : ℚ) ^ (A014963 (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ)

end

end A292167.P11331782210333054021

/-!
# A292168: Number of permutations p of [n] such that 0p has a nonincreasing jump sequence beginning with two.

The programs for A292168, there is no canonical definition to state claims against.
-/

/-! ## A292168.P11541186530134076851

`record[A291684(∑[n]+2)]`
-/

namespace A292168.P11541186530134076851
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291684 (∑ j ∈ Finset.range (n + 1), f2 j + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A292168.P11541186530134076851

/-! ## A292168.P2134264560613632395

`A291684(∑[n+2]+3)`
-/

namespace A292168.P2134264560613632395
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291684 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A292168.P2134264560613632395

/-! ## A292168.P9555039942443106672

`and(A126646(n), A291684(A167614(n+1)-1))`
-/

namespace A292168.P9555039942443106672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A126646 n) (A291684 (A167614 (n + 1) - 1).toNat)

end

end A292168.P9555039942443106672

/-! ## A292168.P482437903221109723

`A291684(A167614(n+1)-1)^A019427(2*n)`
-/

namespace A292168.P482437903221109723
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A291684 (A167614 (n + 1) - 1).toNat : ℚ) ^ (A019427 (2 * n) : ℤ)

end

end A292168.P482437903221109723

/-! ## A292168.P12668597428805866367

`A291684(A167614(n+1)-1)%A154144(n+1)`
-/

namespace A292168.P12668597428805866367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A291684 (A167614 (n + 1) - 1).toNat) (A154144 (n + 1))

end

end A292168.P12668597428805866367

/-!
# A292169: Number of permutations p of [n] such that 0p has a nonincreasing jump sequence beginning with three.

The programs for A292169, there is no canonical definition to state claims against.
-/

/-! ## A292169.P13232335739725618156

`A291684(A167614(n+2))`
-/

namespace A292169.P13232335739725618156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291684 (A167614 (n + 2)).toNat

end

end A292169.P13232335739725618156

/-! ## A292169.P17797294108398879443

`A291684(A052905(n)+8)`
-/

namespace A292169.P17797294108398879443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291684 (A052905 n + 8).toNat

end

end A292169.P17797294108398879443

/-! ## A292169.P4814781011739598507

`A291684(A055999(n)+9)`
-/

namespace A292169.P4814781011739598507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291684 (A055999 n + 9).toNat

end

end A292169.P4814781011739598507

/-! ## A292169.P2088916022340123739

`A291684(eq[3, A002262(n)])`
-/

namespace A292169.P2088916022340123739
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291684 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A292169.P2088916022340123739

/-! ## A292169.P11836501165183554877

`A291684(A340266(n+2)+1)`
-/

namespace A292169.P11836501165183554877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291684 (A340266 (n + 2) + 1).toNat

end

end A292169.P11836501165183554877

/-! ## A292169.P5337752941732694182

`A291684(A000217(n+3)+3)`
-/

namespace A292169.P5337752941732694182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291684 (A000217 (n + 3) + 3).toNat

end

end A292169.P5337752941732694182

/-! ## A292169.P8293664265150886275

`A291684(A166136(n+2)-3)`
-/

namespace A292169.P8293664265150886275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291684 (A166136 (n + 2) - 3).toNat

end

end A292169.P8293664265150886275

/-! ## A292169.P4281790491782686813

`A291684(eq[2, A002260(n+1)-2])`
-/

namespace A292169.P4281790491782686813
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291684 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A292169.P4281790491782686813

/-! ## A292169.P4645290421351463550

`A291684(eq[2, A002260(n+1)/2])`
-/

namespace A292169.P4645290421351463550
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002260 (n + 1) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291684 (SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n)

end

end A292169.P4645290421351463550

/-!
# A292170: Number of permutations p of [n] such that 0p has a nonincreasing jump sequence beginning with four.

The programs for A292170, there is no canonical definition to state claims against.
-/

/-! ## A292170.P10725495859803585699

`A291684(A155212(n)+12)`
-/

namespace A292170.P10725495859803585699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291684 (A155212 n + 12).toNat

end

end A292170.P10725495859803585699

/-! ## A292170.P4858387100599091430

`A291684(eq[4, A002262(n)])`
-/

namespace A292170.P4858387100599091430
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291684 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A292170.P4858387100599091430

/-! ## A292170.P1118925756471269133

`A291684(A167614(n+3)+1)`
-/

namespace A292170.P1118925756471269133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291684 (A167614 (n + 3) + 1).toNat

end

end A292170.P1118925756471269133

/-! ## A292170.P10733733222006173902

`A291684(A133263(n+4)+2)`
-/

namespace A292170.P10733733222006173902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291684 (A133263 (n + 4) + 2).toNat

end

end A292170.P10733733222006173902

/-! ## A292170.P15126968613057477775

`A291684(A000124(n+4)+3)`
-/

namespace A292170.P15126968613057477775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291684 (A000124 (n + 4) + 3).toNat

end

end A292170.P15126968613057477775

/-! ## A292170.P15042718857635843785

`A291684(Δ[A026054(n+3)-n²])`
-/

namespace A292170.P15042718857635843785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026054 (n + 3) - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291684 (f1 (n + 1) - f1 n).toNat

end

end A292170.P15042718857635843785

/-! ## A292170.P14372244512769880986

`A291684(A020705(A000217(n+4)))`
-/

namespace A292170.P14372244512769880986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291684 (A020705 (A000217 (n + 4)).toNat).toNat

end

end A292170.P14372244512769880986

/-!
# A292171: Number of permutations p of [n] such that 0p has a nonincreasing jump sequence beginning with five.

The programs for A292171, there is no canonical definition to state claims against.
-/

/-! ## A292171.P6391463750096768963

`A291684(A167499(n+4))`
-/

namespace A292171.P6391463750096768963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291684 (A167499 (n + 4)).toNat

end

end A292171.P6391463750096768963

/-! ## A292171.P4935877350013218400

`A291684(eq[5, A002262(n)])`
-/

namespace A292171.P4935877350013218400
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291684 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A292171.P4935877350013218400

/-! ## A292171.P3444212369499808966

`A291684(A167614(n+4)+2)`
-/

namespace A292171.P3444212369499808966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291684 (A167614 (n + 4) + 2).toNat

end

end A292171.P3444212369499808966

/-! ## A292171.P9136469416260293972

`A291684(A000124(n+5)+4)`
-/

namespace A292171.P9136469416260293972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291684 (A000124 (n + 5) + 4).toNat

end

end A292171.P9136469416260293972

/-! ## A292171.P3446897099531919201

`A291684(eq[6, A002260(n+1)])`
-/

namespace A292171.P3446897099531919201
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291684 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A292171.P3446897099531919201

/-!
# A292172: Number of permutations p of [n] such that 0p has a nonincreasing jump sequence beginning with six.

The programs for A292172, there is no canonical definition to state claims against.
-/

/-! ## A292172.P10693063529920235248

`A291684(A167499(n+5)+1)`
-/

namespace A292172.P10693063529920235248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291684 (A167499 (n + 5) + 1).toNat

end

end A292172.P10693063529920235248

/-! ## A292172.P11551382310014898611

`A291684(A167487(n+5)-1)`
-/

namespace A292172.P11551382310014898611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291684 (A167487 (n + 5) - 1).toNat

end

end A292172.P11551382310014898611

/-! ## A292172.P17658396910784876686

`A291684(A167614(n+5)+3)`
-/

namespace A292172.P17658396910784876686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291684 (A167614 (n + 5) + 3).toNat

end

end A292172.P17658396910784876686

/-! ## A292172.P8075577239272784081

`A291684(A000096(n+5)+7)`
-/

namespace A292172.P8075577239272784081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291684 (A000096 (n + 5) + 7).toNat

end

end A292172.P8075577239272784081

/-! ## A292172.P638898252488379454

`A291684(7-A080956(n+7))`
-/

namespace A292172.P638898252488379454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291684 (7 - A080956 (n + 7)).toNat

end

end A292172.P638898252488379454

/-! ## A292172.P14872321169682141116

`A291684(A133263(n+7)-(n+3))`
-/

namespace A292172.P14872321169682141116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291684 (A133263 (n + 7) - (n + 3 : ℤ)).toNat

end

end A292172.P14872321169682141116

/-! ## A292172.P8919255712718320423

`A291684(A024000(n+3)+A000124(n+7))`
-/

namespace A292172.P8919255712718320423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291684 (A024000 (n + 3) + A000124 (n + 7)).toNat

end

end A292172.P8919255712718320423

/-!
# A292173: Number of permutations p of [n] such that 0p has a nonincreasing jump sequence beginning with seven.

The programs for A292173, there is no canonical definition to state claims against.
-/

/-! ## A292173.P4968492498440638879

`A291684(A167499(n+6)+2)`
-/

namespace A292173.P4968492498440638879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291684 (A167499 (n + 6) + 2).toNat

end

end A292173.P4968492498440638879

/-! ## A292173.P5991732031551599747

`A291684(A167614(n+6)+4)`
-/

namespace A292173.P5991732031551599747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291684 (A167614 (n + 6) + 4).toNat

end

end A292173.P5991732031551599747

/-! ## A292173.P11621579337539943481

`A291684(A000096(n+6)+8)`
-/

namespace A292173.P11621579337539943481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291684 (A000096 (n + 6) + 8).toNat

end

end A292173.P11621579337539943481

/-! ## A292173.P10612635186929861917

`A291684(A133263(n+8)-(n+3))`
-/

namespace A292173.P10612635186929861917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291684 (A133263 (n + 8) - (n + 3 : ℤ)).toNat

end

end A292173.P10612635186929861917

/-! ## A292173.P2998493706486476247

`A291684(A024000(n+3)+A000124(n+8))`
-/

namespace A292173.P2998493706486476247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291684 (A024000 (n + 3) + A000124 (n + 8)).toNat

end

end A292173.P2998493706486476247

/-!
# A292174: Number of permutations p of [n] such that 0p has a nonincreasing jump sequence beginning with eight.

The programs for A292174, there is no canonical definition to state claims against.
-/

/-! ## A292174.P13811265601088365048

`A291684(A000124(n+8)+7)`
-/

namespace A292174.P13811265601088365048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291684 (A000124 (n + 8) + 7).toNat

end

end A292174.P13811265601088365048

/-! ## A292174.P12407828536146611559

`A291684(A000096(n+7)+9)`
-/

namespace A292174.P12407828536146611559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291684 (A000096 (n + 7) + 9).toNat

end

end A292174.P12407828536146611559

/-! ## A292174.P2520270162258525311

`A291684(A000217(n+9)-(n+1))`
-/

namespace A292174.P2520270162258525311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291684 (A000217 (n + 9) - (n + 1 : ℤ)).toNat

end

end A292174.P2520270162258525311

/-! ## A292174.P12184546526899500641

`A291684(A133263(n+9)-(n+3))`
-/

namespace A292174.P12184546526899500641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291684 (A133263 (n + 9) - (n + 3 : ℤ)).toNat

end

end A292174.P12184546526899500641

/-! ## A292174.P8903766101902340130

`A291684(A167614(n+8)+A024000(n+5))`
-/

namespace A292174.P8903766101902340130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291684 (A167614 (n + 8) + A024000 (n + 5)).toNat

end

end A292174.P8903766101902340130

/-!
# A292175: Number of permutations p of [n] such that 0p has a nonincreasing jump sequence beginning with nine.

The programs for A292175, there is no canonical definition to state claims against.
-/

/-! ## A292175.P18233601131078421529

`A291684(A000124(n+9)+8)`
-/

namespace A292175.P18233601131078421529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291684 (A000124 (n + 9) + 8).toNat

end

end A292175.P18233601131078421529

/-! ## A292175.P799468315890585905

`A291684(A000096(n+8)+10)`
-/

namespace A292175.P799468315890585905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291684 (A000096 (n + 8) + 10).toNat

end

end A292175.P799468315890585905

/-! ## A292175.P4201359826099843213

`A291684(A000217(n+9)+9)`
-/

namespace A292175.P4201359826099843213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291684 (A000217 (n + 9) + 9).toNat

end

end A292175.P4201359826099843213

/-! ## A292175.P2143890801643793218

`A291684(A253145(n+9)-(n+1))`
-/

namespace A292175.P2143890801643793218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291684 (A253145 (n + 9) - (n + 1 : ℤ)).toNat

end

end A292175.P2143890801643793218

/-! ## A292175.P7356464126850305553

`A291684(A167614(n+9)+A024000(n+5))`
-/

namespace A292175.P7356464126850305553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291684 (A167614 (n + 9) + A024000 (n + 5)).toNat

end

end A292175.P7356464126850305553

/-!
# A292176: Number of permutations p of [n] such that 0p has a nonincreasing jump sequence beginning with ten.

The programs for A292176, there is no canonical definition to state claims against.
-/

/-! ## A292176.P12434940226425839846

`A291684(A166136(n+9)+4)`
-/

namespace A292176.P12434940226425839846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291684 (A166136 (n + 9) + 4).toNat

end

end A292176.P12434940226425839846

/-! ## A292176.P15202827352650784172

`A291684(A167499(n+9)+5)`
-/

namespace A292176.P15202827352650784172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291684 (A167499 (n + 9) + 5).toNat

end

end A292176.P15202827352650784172

/-! ## A292176.P17845218067489343366

`A291684(A167614(n+9)+7)`
-/

namespace A292176.P17845218067489343366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291684 (A167614 (n + 9) + 7).toNat

end

end A292176.P17845218067489343366

/-! ## A292176.P7819172983523537141

`A291684(A000096(n+9)+11)`
-/

namespace A292176.P7819172983523537141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291684 (A000096 (n + 9) + 11).toNat

end

end A292176.P7819172983523537141

/-! ## A292176.P17491989926610655827

`A291684(A034856(n+10)-(n-1))`
-/

namespace A292176.P17491989926610655827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291684 (A034856 (n + 10) - ((n : ℤ) - 1)).toNat

end

end A292176.P17491989926610655827

/-!
# A292181: E.g.f. A(x) satisfies: A(x)^2 + B(x)^2 = C(x)^2, such that A'(x) = A(x) + B(x)*C(x).

The programs for A292181, there is no canonical definition to state claims against.
-/

/-! ## A292181.P14464558928836132856

`A002265(7*A052844(n))`
-/

namespace A292181.P14464558928836132856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (7 * A052844 n).toNat

end

end A292181.P14464558928836132856

/-! ## A292181.P6617805294083875716

`A002265(lcm(7, A052844(n)))`
-/

namespace A292181.P6617805294083875716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (Int.lcm 7 (A052844 n))

end

end A292181.P6617805294083875716

/-!
# A292182: E.g.f. B(x) satisfies: A(x)^2 + B(x)^2 = C(x)^2, such that B'(x) = B(x) + A(x)*C(x).

The programs for A292182, there is no canonical definition to state claims against.
-/

/-! ## A292182.P11491155072457694848

`A008621(xor(A088128(n), A186767(n)))`
-/

namespace A292182.P11491155072457694848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (Int.xor (A088128 n) (A186767 n)).toNat

end

end A292182.P11491155072457694848

/-! ## A292182.P7495770671519385495

`A007095(A327722(∑[n+3])+A000434(n+1))`
-/

namespace A292182.P7495770671519385495
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (A327722 (∑ j ∈ Finset.range (n + 1), f1 j) + A000434 (n + 1)).toNat

end

end A292182.P7495770671519385495

/-!
# A292183: E.g.f. C(x) satisfies: A(x)^2 + B(x)^2 = C(x)^2, such that C'(x) = C(x) + 2*A(x)*B(x).

The programs for A292183, there is no canonical definition to state claims against.
-/

/-! ## A292183.P4222347451476388432

`A094110(A135336(n))`
-/

namespace A292183.P4222347451476388432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094110 (A135336 n).toNat

end

end A292183.P4222347451476388432

/-! ## A292183.P3500416741703291899

`A357124(A181131(n))+A055790(n)`
-/

namespace A292183.P3500416741703291899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357124 (A181131 n).toNat + A055790 n

end

end A292183.P3500416741703291899

/-!
# A292184: a(n) = A291937(3^n).

The programs for A292184, there is no canonical definition to state claims against.
-/

/-! ## A292184.P17516607593701573622

`A291937(3^n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A292184.P17516607593701573622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291937 (3 ^ n)

end

end A292184.P17516607593701573622

/-! ## A292184.P3730142474091384792

`record[A291937(A152714(n))]`
-/

namespace A292184.P3730142474091384792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291937 (A152714 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A292184.P3730142474091384792

/-! ## A292184.P4781683367847419418

`record[A291937(A175840(n))]`
-/

namespace A292184.P4781683367847419418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291937 (A175840 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A292184.P4781683367847419418

/-! ## A292184.P7118216875962234275

`abs(A291937(Δ[A007051(n)]))`
-/

namespace A292184.P7118216875962234275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007051 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A291937 (f1 (n + 1) - f1 n).toNat|

end

end A292184.P7118216875962234275

/-! ## A292184.P16587355316849991553

`record[A291937(sqrt(A165830(n+1)))]`
-/

namespace A292184.P16587355316849991553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291937 (SequenceMachineLib.roundAway (Real.sqrt (A165830 (n + 1) : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A292184.P16587355316849991553

/-!
# A292186: Number of rooted unlabeled connected four-regular maps on a compact closed oriented surface with n vertices (and thus 2*n edges), with a(0) = 1.

The programs for A292186, there is no canonical definition to state claims against.
-/

/-! ## A292186.P11499802087018762316

`A258222(∑[n+3])`
-/

namespace A292186.P11499802087018762316
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258222 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A292186.P11499802087018762316

/-! ## A292186.P10049160606012059962

`record[A258222(n)/A258222(n+3)]`
-/

namespace A292186.P10049160606012059962
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A258222 n : ℚ) / (A258222 (n + 3) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A292186.P10049160606012059962

/-! ## A292186.P5379397268589384049

`record[A258222(A055998(∑[(-1)^(n%3)]))]`
-/

namespace A292186.P5379397268589384049
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ (n % 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258222 (A055998 (∑ j ∈ Finset.range (n + 1), f2 j).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A292186.P5379397268589384049

/-! ## A292186.P14944891869452560219

`A380622(A000217(n+4)-4)`
-/

namespace A292186.P14944891869452560219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380622 (A000217 (n + 4) - 4).toNat

end

end A292186.P14944891869452560219

/-! ## A292186.P17201896763100274769

`A258222(A141214(n))%A265593(n+1)`
-/

namespace A292186.P17201896763100274769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A258222 (A141214 n).toNat) (A265593 (n + 1))

end

end A292186.P17201896763100274769

/-!
# A292187: Number of rooted unlabeled bipartite cubic maps on a compact closed oriented surface with 2*n vertices (and thus 3*n edges), with a(0) = 1.

The programs for A292187, there is no canonical definition to state claims against.
-/

/-! ## A292187.P1641152756083465894

`A004396(A052668(n))`
-/

namespace A292187.P1641152756083465894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A052668 n).toNat

end

end A292187.P1641152756083465894

/-!
# A292189: Square array A(n,k), n>=0, k>=0, read by antidiagonals, where column k is the expansion of Product_{j>=1} (1 + j^k*x^j).

The programs for A292189, there is no canonical definition to state claims against.
-/

/-! ## A292189.P10102842491087819105

`A284992(n)-A025469(A163661(n))`
-/

namespace A292189.P10102842491087819105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284992 n - A025469 (A163661 n).toNat

end

end A292189.P10102842491087819105

/-! ## A292189.P18066922680832622850

`A284992(n)-A025469(A256116(n))`
-/

namespace A292189.P18066922680832622850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284992 n - A025469 (A256116 n).toNat

end

end A292189.P18066922680832622850

/-! ## A292189.P13266126730584992669

`A284992(n)-A016396(A294582(n))`
-/

namespace A292189.P13266126730584992669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284992 n - A016396 (A294582 n).toNat

end

end A292189.P13266126730584992669

/-! ## A292189.P8066997528619929678

`A284992(n)-A185284(A163238(n))`
-/

namespace A292189.P8066997528619929678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284992 n - A185284 (A163238 n).toNat

end

end A292189.P8066997528619929678

/-!
# A292190: Sum of n-th powers of products of terms in all partitions of n into distinct parts.

The programs for A292190, there is no canonical definition to state claims against.
-/

/-! ## A292190.P10275501383071849708

`A292189(∑[4*n])`
-/

namespace A292190.P10275501383071849708
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292189 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A292190.P10275501383071849708

/-! ## A292190.P8488763504361190389

`A292189(A106232(n+1))+and(n, 2^n)`
-/

namespace A292190.P8488763504361190389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292189 (A106232 (n + 1)).toNat + (Nat.land n (2 ^ n) : ℤ)

end

end A292190.P8488763504361190389

/-! ## A292190.P1451501792874627219

`A292189(A106232(n+1))+A016396(2*n+3)`
-/

namespace A292190.P1451501792874627219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292189 (A106232 (n + 1)).toNat + A016396 (2 * n + 3)

end

end A292190.P1451501792874627219

/-!
# A292193: Square array A(n,k), n >= 0, k >= 0, read by antidiagonals, where column k is the expansion of Product_{j>=1} 1/(1 - j^k*x^j).

The programs for A292193, there is no canonical definition to state claims against.
-/

/-! ## A292193.P14737557449679279746

`A144048(n)+A025468(A121776(n))`
-/

namespace A292193.P14737557449679279746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144048 n + A025468 (A121776 n).toNat

end

end A292193.P14737557449679279746

/-! ## A292193.P15662431805580215803

`A144048(n)+A089311(A094544(n))`
-/

namespace A292193.P15662431805580215803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144048 n + A089311 (A094544 n).toNat

end

end A292193.P15662431805580215803

/-! ## A292193.P9328300958727559663

`A144048(n)+A025469(A163661(n))`
-/

namespace A292193.P9328300958727559663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144048 n + A025469 (A163661 n).toNat

end

end A292193.P9328300958727559663

/-! ## A292193.P13910968973111116701

`A151795(A060475(n))+A144048(n)`
-/

namespace A292193.P13910968973111116701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151795 (A060475 n).toNat + A144048 n

end

end A292193.P13910968973111116701

/-! ## A292193.P3830488631925405935

`A144048(n)+A025469(A256116(n))`
-/

namespace A292193.P3830488631925405935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144048 n + A025469 (A256116 n).toNat

end

end A292193.P3830488631925405935

/-!
# A292194: Sum of n-th powers of products of terms in all partitions of n.

The programs for A292194, there is no canonical definition to state claims against.
-/

/-! ## A292194.P5515016449265532153

`A292193(∑[4*n])`
-/

namespace A292194.P5515016449265532153
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292193 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A292194.P5515016449265532153

/-! ## A292194.P5768984293779689764

`A292193(A046092(n))+A185255(n)`
-/

namespace A292194.P5768984293779689764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292193 (A046092 n).toNat + A185255 n

end

end A292194.P5768984293779689764

/-! ## A292194.P14698688013717700615

`A177849(n)*A292193(A046092(n))`
-/

namespace A292194.P14698688013717700615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177849 n * A292193 (A046092 n).toNat

end

end A292194.P14698688013717700615

/-! ## A292194.P7512063858615531071

`A292193(A046092(n))+A008683(56*(n+1))`
-/

namespace A292194.P7512063858615531071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292193 (A046092 n).toNat + A008683 (56 * (n + 1))

end

end A292194.P7512063858615531071

/-! ## A292194.P1569832101923944876

`round(A292193(A046092(n))-1/A000040(n+1))`
-/

namespace A292194.P1569832101923944876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A292193 (A046092 n).toNat : ℚ) - 1 / (A000040 (n + 1) : ℚ))

end

end A292194.P1569832101923944876

