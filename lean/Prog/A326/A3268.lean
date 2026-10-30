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
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C040
import Seq.B000.C041
import Seq.B000.C042
import Seq.B000.C043
import Seq.B000.C044
import Seq.B000.C045
import Seq.B000.C046
import Seq.B000.C047
import Seq.B000.C048
import Seq.B000.C050
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import Seq.B001.C013
import Seq.B001.C014
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
import Seq.B009.C000
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
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A326800: Consider the e.g.f. S(x,y) = Sum_{n>=0} Sum_{k=0..n} T(n,k) * x^(2*n-2*k+1) * y^(2*k) / ((2*n-2*k+1)!*(2*k)!) and related functions C(x,y) and D(x,y), as defined in the Formula section. Sequence gives the triangular array of coefficients T(n,k) (n>=0, 0<=k<=n) of S(x,y).

The programs for A326800, there is no canonical definition to state claims against.
-/

/-! ## A326800.P1375020272021696231

`A326797(n)/A091042(n)`
-/

namespace A326800.P1375020272021696231
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A326797 n : ℚ) / (A091042 n : ℚ)

end

end A326800.P1375020272021696231

/-!
# A326801: Consider the e.g.f. C(x,y) = sqrt(1/2) * Sum_{n>=0} Sum_{k=0..2*n} T(n,k) * x^(2*n-k) * y^k / ((2*n-k)!*k!) and related functions S(x,y) and D(x,y), as defined in the Formula section. Sequence gives the triangular array of coefficients T(n,k) (n>=0, 0<=k<=2*n) of C(x,y).

The programs for A326801, there is no canonical definition to state claims against.
-/

/-! ## A326801.P6623698370751502238

`abs(A326802(n))*A087960(n)`
-/

namespace A326801.P6623698370751502238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A326802 n| * A087960 n

end

end A326801.P6623698370751502238

/-! ## A326801.P14666176489528483095

`Δ[A209302(n+1)]*A326802(n)`
-/

namespace A326801.P14666176489528483095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209302 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A326802 n

end

end A326801.P14666176489528483095

/-! ## A326801.P2540292807785593505

`A033999(A028391(n))*A326802(n)`
-/

namespace A326801.P2540292807785593505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A028391 n).toNat * A326802 n

end

end A326801.P2540292807785593505

/-! ## A326801.P4992528497349556848

`A033999(A053186(n))*A326802(n)`
-/

namespace A326801.P4992528497349556848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A053186 n).toNat * A326802 n

end

end A326801.P4992528497349556848

/-! ## A326801.P16218324268408865997

`lcm(A209615(n+1), A326802(n))*A087960(n)`
-/

namespace A326801.P16218324268408865997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A209615 (n + 1)) (A326802 n) : ℤ) * A087960 n

end

end A326801.P16218324268408865997

/-! ## A326801.P16735131301824532619

`A326802(A053186(n)²)*A326802(n)`
-/

namespace A326801.P16735131301824532619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326802 (A053186 n ^ 2).toNat * A326802 n

end

end A326801.P16735131301824532619

/-! ## A326801.P2197001968667918477

`A326802(A028391(n)²)*A326802(n)`
-/

namespace A326801.P2197001968667918477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326802 (A028391 n ^ 2).toNat * A326802 n

end

end A326801.P2197001968667918477

/-!
# A326802: Consider the e.g.f. D(x,y) = sqrt(1/2) * Sum_{n>=0} Sum_{k=0..2*n} T(n,k) * x^(2*n-k) * y^k / ((2*n-k)!*k!) and related functions S(x,y) and C(x,y), as defined in the Formula section. Sequence gives the triangular array of coefficients T(n,k) (n>=0, 0<=k<=2*n) of D(x,y).

The programs for A326802, there is no canonical definition to state claims against.
-/

/-! ## A326802.P7642729730115009573

`Δ[A209302(n+1)]*A326801(n)`
-/

namespace A326802.P7642729730115009573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209302 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A326801 n

end

end A326802.P7642729730115009573

/-! ## A326802.P12859085502125626378

`A033999(A028391(n))*A326801(n)`
-/

namespace A326802.P12859085502125626378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A028391 n).toNat * A326801 n

end

end A326802.P12859085502125626378

/-! ## A326802.P14383069743393280243

`A033999(A053186(n))*A326801(n)`
-/

namespace A326802.P14383069743393280243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A053186 n).toNat * A326801 n

end

end A326802.P14383069743393280243

/-! ## A326802.P5280168567319251754

`A033999(A061887(n))*A326801(n)`
-/

namespace A326802.P5280168567319251754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A061887 n).toNat * A326801 n

end

end A326802.P5280168567319251754

/-! ## A326802.P4840224651529278756

`A033999(A127366(n))*A326801(n)`
-/

namespace A326802.P4840224651529278756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A127366 n).toNat * A326801 n

end

end A326802.P4840224651529278756

/-! ## A326802.P18296123342999029650

`A326801(A053186(n)²)*A326801(n)`
-/

namespace A326802.P18296123342999029650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326801 (A053186 n ^ 2).toNat * A326801 n

end

end A326802.P18296123342999029650

/-! ## A326802.P15813999486282454064

`A326801(A028391(n)²)*A326801(n)`
-/

namespace A326802.P15813999486282454064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326801 (A028391 n ^ 2).toNat * A326801 n

end

end A326802.P15813999486282454064

/-!
# A326803: Central coefficients of triangle A326800.

The programs for A326803, there is no canonical definition to state claims against.
-/

/-! ## A326803.P4129014675130785735

`A326800(C(2*n+1, 2)+n+1)`
-/

namespace A326803.P4129014675130785735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326800 (Nat.choose (2 * n + 1) 2 + n + 1)

end

end A326803.P4129014675130785735

/-! ## A326803.P13245817212889622536

`A326800(∑[4*n]+1)`
-/

namespace A326803.P13245817212889622536
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326800 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A326803.P13245817212889622536

/-! ## A326803.P12534736754625724401

`or(1, A326800(A001844(n)))`
-/

namespace A326803.P12534736754625724401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A326800 (A001844 n).toNat)

end

end A326803.P12534736754625724401

/-! ## A326803.P14030666078778142535

`A326800(A001844(n))+A000007(n+3)`
-/

namespace A326803.P14030666078778142535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326800 (A001844 n).toNat + A000007 (n + 3)

end

end A326803.P14030666078778142535

/-! ## A326803.P11579205284899259538

`A326800(A001844(n))/A033999(2*(n+2))`
-/

namespace A326803.P11579205284899259538
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A326800 (A001844 n).toNat : ℚ) / (A033999 (2 * (n + 2)) : ℚ)

end

end A326803.P11579205284899259538

/-!
# A326804: a(n) = floor( Sum_{k>=0} n^(k*Phi) / Gamma(k*Phi + 1) ), where Gamma(x) is Euler's gamma function and Phi = (sqrt(5) + 1)/2 is the golden ratio.

The programs for A326804, the canonical program `A326804.P10317073462849955706` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A326804 has offset 0).

The definition of A326804 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 231 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A326804.P10317073462849955706

`floor(exp(A028310(n))/ϕ)`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A326804

/-- `floor(exp(A028310(n))/ϕ)` -/
def P10317073462849955706.Spec : Prop :=
  ∀ n, P10317073462849955706.a n = A326804 n

theorem P10317073462849955706.correct : P10317073462849955706.Spec := by
  intro n
  simp only [A326804]

end A326804

/-! ## A326804.P13411517121024823104

`floor(exp(A123108(2*n))/ϕ)`
-/

namespace A326804.P13411517121024823104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.exp (A123108 (2 * n) : ℝ) / Real.goldenRatio⌋

end

end A326804.P13411517121024823104

namespace A326804

/-- `floor(exp(A123108(2*n))/ϕ)` -/
def P13411517121024823104.Spec : Prop :=
  ∀ n, P13411517121024823104.a n = A326804 n

end A326804

/-! ## A326804.P1579391834677607832

`floor(2/ϕ*cosh(n))`
-/

namespace A326804.P1579391834677607832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊2 / Real.goldenRatio * Real.cosh (n : ℝ)⌋

end

end A326804.P1579391834677607832

namespace A326804

/-- `floor(2/ϕ*cosh(n))` -/
def P1579391834677607832.Spec : Prop :=
  ∀ n, P1579391834677607832.a n = A326804 n

end A326804

/-! ## A326804.P310970859692864358

`floor((cosh(n)+cosh(n))/ϕ)`
-/

namespace A326804.P310970859692864358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Real.cosh (n : ℝ) + Real.cosh (n : ℝ)) / Real.goldenRatio⌋

end

end A326804.P310970859692864358

namespace A326804

/-- `floor((cosh(n)+cosh(n))/ϕ)` -/
def P310970859692864358.Spec : Prop :=
  ∀ n, P310970859692864358.a n = A326804 n

end A326804

/-! ## A326804.P3097626933045084842

`ceil(2/ϕ*cosh(n))-1`
-/

namespace A326804.P3097626933045084842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈2 / Real.goldenRatio * Real.cosh (n : ℝ)⌉ - 1

end

end A326804.P3097626933045084842

namespace A326804

/-- `ceil(2/ϕ*cosh(n))-1` -/
def P3097626933045084842.Spec : Prop :=
  ∀ n, P3097626933045084842.a n = A326804 n

end A326804

/-!
# A326805: a(n) = floor( Sum_{k>=0} n^sqrt(k) / Gamma(sqrt(k) + 1) ), where Gamma is Euler's gamma function.

The programs for A326805, there is no canonical definition to state claims against.
-/

/-! ## A326805.P12625048069097803207

`A256700(A267578(n))`
-/

namespace A326805.P12625048069097803207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256700 (A267578 n).toNat

end

end A326805.P12625048069097803207

/-!
# A326806: Numbers k such that k multiplied by the sum of all its digits contains k as a substring.

The programs for A326806, there is no canonical definition to state claims against.
-/

/-! ## A326806.P15708450181485628607

`∑[∑{e}[A150911(n), #]²]`
-/

namespace A326806.P15708450181485628607
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150911 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A326806.P15708450181485628607

/-! ## A326806.P4574368403628099036

`∑[A001221(A047112(n+1))²]`
-/

namespace A326806.P4574368403628099036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A047112 (n + 1)).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A326806.P4574368403628099036

/-! ## A326806.P15925824846538982388

`∑[A001221(A101459(n+1))²]`
-/

namespace A326806.P15925824846538982388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A101459 (n + 1)).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A326806.P15925824846538982388

/-! ## A326806.P3573067449556287136

`∑[A064547(A292884(n+1))²]`
-/

namespace A326806.P3573067449556287136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064547 (A292884 (n + 1)).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A326806.P3573067449556287136

/-! ## A326806.P10142794823944884016

`∑[A001221(A152818(3*n+2))²]`
-/

namespace A326806.P10142794823944884016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A152818 (3 * n + 2)).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A326806.P10142794823944884016

/-!
# A326807: Numbers m such that s(m)/m > s(k)/k for all k < m, where s(m) = A168512(m) is the sum of divisors of m, weighted by divisor multiplicity.

The programs for A326807, there is no canonical definition to state claims against.
-/

/-! ## A326807.P4125699994366416785

`record[A278219(n)*A357135(n+2)]`
-/

namespace A326807.P4125699994366416785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278219 n * A357135 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A326807.P4125699994366416785

/-! ## A326807.P17503024861327623336

`A070172(or(A018366(n+1), A262501(n+1)))`
-/

namespace A326807.P17503024861327623336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070172 (Int.lor (A018366 (n + 1)) (A262501 (n + 1))).toNat

end

end A326807.P17503024861327623336

/-! ## A326807.P9105514093880068853

`A025487(lt[A324518(n+2), A062401(n+1)])`
-/

namespace A326807.P9105514093880068853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324518 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062401 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025487 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A326807.P9105514093880068853

/-! ## A326807.P17695155574888010877

`A371477(A375984(n))`
-/

namespace A326807.P17695155574888010877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371477 (A375984 n).toNat

end

end A326807.P17695155574888010877

/-! ## A326807.P12474136601434473679

`record[A000005(A342982(n))]`
-/

namespace A326807.P12474136601434473679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A342982 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A326807.P12474136601434473679

/-!
# A326808: Unitary weird numbers (A064114) that are divisible by 3.

The programs for A326808, there is no canonical definition to state claims against.
-/

/-! ## A326808.P4311686646419323155

`42*A005030(A077739(n+4))`
-/

namespace A326808.P4311686646419323155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  42 * A005030 (A077739 (n + 4)).toNat

end

end A326808.P4311686646419323155

/-! ## A326808.P7084300495658766341

`630*A028310(A000244(n+3))`
-/

namespace A326808.P7084300495658766341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  630 * A028310 (A000244 (n + 3)).toNat

end

end A326808.P7084300495658766341

/-!
# A326809: G.f. A(x) = Sum_{n>=0} x^n * (A(x)^(n+1) + 1)^n / (1 + x*A(x)^n)^(n+1).

The programs for A326809, there is no canonical definition to state claims against.
-/

/-! ## A326809.P1270905509509215783

`A088714(n)-A165190(A088716(n))`
-/

namespace A326809.P1270905509509215783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088714 n - A165190 (A088716 n).toNat

end

end A326809.P1270905509509215783

/-! ## A326809.P4758161546620377481

`A320249(A262442(n))`
-/

namespace A326809.P4758161546620377481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320249 (A262442 n).toNat

end

end A326809.P4758161546620377481

/-!
# A326810: The smallest prime that does not divide the prime product form (A276086) of the primorial base expansion of n.

The programs for A326810, there is no canonical definition to state claims against.
-/

/-! ## A326810.P15112234944442743510

`A020639(A328613(n))`
-/

namespace A326810.P15112234944442743510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A328613 n).toNat

end

end A326810.P15112234944442743510

/-! ## A326810.P2710750494919610109

`A053669(A276086(n))`
-/

namespace A326810.P2710750494919610109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053669 (A276086 n).toNat

end

end A326810.P2710750494919610109

/-! ## A326810.P14894963450387511859

`A276087(n)/A276086(A328476(n))`
-/

namespace A326810.P14894963450387511859
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A276087 n : ℚ) / (A276086 (A328476 n).toNat : ℚ)

end

end A326810.P14894963450387511859

/-! ## A326810.P15388169812340936530

`A020639(A276087(n))`
-/

namespace A326810.P15388169812340936530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A276087 n).toNat

end

end A326810.P15388169812340936530

/-! ## A326810.P16797131563478334950

`A328571(A328580(n))`
-/

namespace A326810.P16797131563478334950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328571 (A328580 n).toNat

end

end A326810.P16797131563478334950

/-! ## A326810.P2300916881899530220

`A328613(A328580(n)-1)`
-/

namespace A326810.P2300916881899530220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328613 (A328580 n - 1).toNat

end

end A326810.P2300916881899530220

/-! ## A326810.P15654998057108684371

`A000040(lcm((-1)^n, A328570(n)))`
-/

namespace A326810.P15654998057108684371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (Int.lcm ((-1) ^ n) (A328570 n))

end

end A326810.P15654998057108684371

/-! ## A326810.P908415889107230698

`A020639(A328571(A328571(n)))`
-/

namespace A326810.P908415889107230698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A328571 (A328571 n).toNat).toNat

end

end A326810.P908415889107230698

/-! ## A326810.P14155718651900182513

`A328571(A328571(n)/A328573(n))`
-/

namespace A326810.P14155718651900182513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328571 (SequenceMachineLib.roundAway ((A328571 n : ℚ) / (A328573 n : ℚ))).toNat

end

end A326810.P14155718651900182513

/-! ## A326810.P10309621600691644767

`A000040(A328570(n)^A328578(n))`
-/

namespace A326810.P10309621600691644767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.roundAway ((A328570 n : ℚ) ^ (A328578 n : ℤ))).toNat

end

end A326810.P10309621600691644767

/-! ## A326810.P5739457228051872845

`A000040(A328570(n)^A055396(n+1))`
-/

namespace A326810.P5739457228051872845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.roundAway ((A328570 n : ℚ) ^ (A055396 (n + 1) : ℤ))).toNat

end

end A326810.P5739457228051872845

/-! ## A326810.P7978461328172487955

`A000040(A328570(n)*A328578(2*n+1))`
-/

namespace A326810.P7978461328172487955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A328570 n * A328578 (2 * n + 1)).toNat

end

end A326810.P7978461328172487955

/-! ## A326810.P10692362815674837264

`A000040(A328570(n)+A007814(2*n+3))`
-/

namespace A326810.P10692362815674837264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A328570 n + A007814 (2 * n + 3)).toNat

end

end A326810.P10692362815674837264

/-! ## A326810.P12890560192117768717

`A328571((A328844(n)+A328843(n))/A328475(n))`
-/

namespace A326810.P12890560192117768717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328571 (SequenceMachineLib.roundAway ((A328844 n + A328843 n : ℚ) / (A328475 n : ℚ))).toNat

end

end A326810.P12890560192117768717

/-! ## A326810.P5707669858896249316

`A053669(A328580(n))`
-/

namespace A326810.P5707669858896249316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053669 (A328580 n).toNat

end

end A326810.P5707669858896249316

/-! ## A326810.P6446256232528462580

`A078759(A328580(n)+1)`
-/

namespace A326810.P6446256232528462580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078759 (A328580 n + 1).toNat

end

end A326810.P6446256232528462580

/-! ## A326810.P15462987220739468501

`A276086(A328580(2*n-n))`
-/

namespace A326810.P15462987220739468501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276086 (A328580 (2 * n - n)).toNat

end

end A326810.P15462987220739468501

/-! ## A326810.P2800853929973299187

`A020639(A276086(A328580(n))²)`
-/

namespace A326810.P2800853929973299187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A276086 (A328580 n).toNat ^ 2).toNat

end

end A326810.P2800853929973299187

/-! ## A326810.P11536953600209358015

`A276086(A276086(n)-A328476(n))`
-/

namespace A326810.P11536953600209358015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276086 (A276086 n - A328476 n).toNat

end

end A326810.P11536953600209358015

/-! ## A326810.P10605595767362762753

`A276086(A276086(n)/A328475(n))`
-/

namespace A326810.P10605595767362762753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276086 (SequenceMachineLib.roundAway ((A276086 n : ℚ) / (A328475 n : ℚ))).toNat

end

end A326810.P10605595767362762753

/-!
# A326812: Expansion of Sum_{k>=1} (2^k - 1) * x^(2^k - 1) / (1 - x^(2^k - 1)).

The programs for A326812, the canonical program `A326812.P15357215880217793735` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A326812 has offset 1).

The definition of A326812 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A326812.P15357215880217793735

`∑{d}[n+1, A036987(#)*#]`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A326812

/-- `∑{d}[n+1, A036987(#)*#]` -/
def P15357215880217793735.Spec : Prop :=
  ∀ n, P15357215880217793735.a n = A326812 (n + 1)

theorem P15357215880217793735.correct : P15357215880217793735.Spec := by
  intro n
  simp only [A326812, Nat.add_sub_cancel]

end A326812

/-! ## A326812.P1256161296840805026

`∑{d}[n+1, #*A036987(#)]`
-/

namespace A326812.P1256161296840805026
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A036987 d

end

end A326812.P1256161296840805026

namespace A326812

/-- `∑{d}[n+1, #*A036987(#)]` -/
def P1256161296840805026.Spec : Prop :=
  ∀ n, P1256161296840805026.a n = A326812 (n + 1)

end A326812

/-! ## A326812.P18333692982694442125

`∑{d}[n+1, A004273(A135416(#))]`
-/

namespace A326812.P18333692982694442125
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A004273 (A135416 d).toNat

end

end A326812.P18333692982694442125

namespace A326812

/-- `∑{d}[n+1, A004273(A135416(#))]` -/
def P18333692982694442125.Spec : Prop :=
  ∀ n, P18333692982694442125.a n = A326812 (n + 1)

end A326812

/-! ## A326812.P11344469238805540884

`A005187(∑{d}[n+1, A135416(#)])`
-/

namespace A326812.P11344469238805540884
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 (∑ d ∈ Nat.divisors (f1 n), A135416 d).toNat

end

end A326812.P11344469238805540884

namespace A326812

/-- `A005187(∑{d}[n+1, A135416(#)])` -/
def P11344469238805540884.Spec : Prop :=
  ∀ n, P11344469238805540884.a n = A326812 (n + 1)

end A326812

/-! ## A326812.P16445588908360837035

`∑{d}[n+1, #*A000007(A086099(#))]`
-/

namespace A326812.P16445588908360837035
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A000007 (A086099 d).toNat

end

end A326812.P16445588908360837035

namespace A326812

/-- `∑{d}[n+1, #*A000007(A086099(#))]` -/
def P16445588908360837035.Spec : Prop :=
  ∀ n, P16445588908360837035.a n = A326812 (n + 1)

end A326812

/-! ## A326812.P6392154946585004864

`∑{d}[n+1, #*A010052(A090079(#))]`
-/

namespace A326812.P6392154946585004864
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A010052 (A090079 d).toNat

end

end A326812.P6392154946585004864

namespace A326812

/-- `∑{d}[n+1, #*A010052(A090079(#))]` -/
def P6392154946585004864.Spec : Prop :=
  ∀ n, P6392154946585004864.a n = A326812 (n + 1)

end A326812

/-! ## A326812.P1472483410772670745

`∑{d}[n+1, A193356(A073138(#))]`
-/

namespace A326812.P1472483410772670745
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A193356 (A073138 d).toNat

end

end A326812.P1472483410772670745

namespace A326812

/-- `∑{d}[n+1, A193356(A073138(#))]` -/
def P1472483410772670745.Spec : Prop :=
  ∀ n, P1472483410772670745.a n = A326812 (n + 1)

end A326812

/-!
# A326813: Dirichlet g.f.: zeta(2*s) / (1 - 2^(-s)).

The programs for A326813, the canonical program `A326813.P14347945809145612579` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A326813 has offset 1).

The definition of A326813 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010052, A209229, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A326813.P14347945809145612579

`∑{d}[n+1, A209229((n+1)/#)*A010052(#)]`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A326813

/-- `∑{d}[n+1, A209229((n+1)/#)*A010052(#)]` -/
def P14347945809145612579.Spec : Prop :=
  ∀ n, P14347945809145612579.a n = A326813 (n + 1)

theorem P14347945809145612579.correct : P14347945809145612579.Spec := by
  intro n
  simp only [A326813, Nat.add_sub_cancel]

end A326813

/-! ## A326813.P10823365420899242528

`∑{d}[n+1, A000005((n+1)/#)*(-1)^A001222(#)*2^(A001221(2*#)-1)]`
-/

namespace A326813.P10823365420899242528
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (A000005 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat : ℚ) * (-1 : ℚ) ^ (A001222 d : ℤ) * (2 : ℚ) ^ (A001221 (2 * d) - 1 : ℤ)

end

end A326813.P10823365420899242528

namespace A326813

/-- `∑{d}[n+1, A000005((n+1)/#)*(-1)^A001222(#)*2^(A001221(2*#)-1)]` -/
def P10823365420899242528.Spec : Prop :=
  ∀ n, P10823365420899242528.a n = (A326813 (n + 1) : ℚ)

end A326813

/-! ## A326813.P8981164380664320755

`A053866(n+1)*A115362(n)`
-/

namespace A326813.P8981164380664320755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053866 (n + 1) * A115362 n

end

end A326813.P8981164380664320755

namespace A326813

/-- `A053866(n+1)*A115362(n)` -/
def P8981164380664320755.Spec : Prop :=
  ∀ n, P8981164380664320755.a n = A326813 (n + 1)

end A326813

/-! ## A326813.P10950622682940166742

`lcm(A115362(n), A143259(n+1))`
-/

namespace A326813.P10950622682940166742
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A115362 n) (A143259 (n + 1))

end

end A326813.P10950622682940166742

namespace A326813

/-- `lcm(A115362(n), A143259(n+1))` -/
def P10950622682940166742.Spec : Prop :=
  ∀ n, (P10950622682940166742.a n : ℤ) = A326813 (n + 1)

end A326813

/-! ## A326813.P17919410822083101563

`and(1, A000203(n+1))*A115362(n)`
-/

namespace A326813.P17919410822083101563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A000203 (n + 1)) * A115362 n

end

end A326813.P17919410822083101563

namespace A326813

/-- `and(1, A000203(n+1))*A115362(n)` -/
def P17919410822083101563.Spec : Prop :=
  ∀ n, P17919410822083101563.a n = A326813 (n + 1)

end A326813

/-! ## A326813.P5957999440859011895

`and(1, A035292(n+1))*A115362(n)`
-/

namespace A326813.P5957999440859011895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A035292 (n + 1)) * A115362 n

end

end A326813.P5957999440859011895

namespace A326813

/-- `and(1, A035292(n+1))*A115362(n)` -/
def P5957999440859011895.Spec : Prop :=
  ∀ n, P5957999440859011895.a n = A326813 (n + 1)

end A326813

/-! ## A326813.P11104410736738472879

`and(1, A162419(n+1))*A115362(n)`
-/

namespace A326813.P11104410736738472879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A162419 (n + 1)) * A115362 n

end

end A326813.P11104410736738472879

namespace A326813

/-- `and(1, A162419(n+1))*A115362(n)` -/
def P11104410736738472879.Spec : Prop :=
  ∀ n, P11104410736738472879.a n = A326813 (n + 1)

end A326813

/-! ## A326813.P11613538813244261175

`and(1, A175926(n+1))*A115362(n)`
-/

namespace A326813.P11613538813244261175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A175926 (n + 1)) * A115362 n

end

end A326813.P11613538813244261175

namespace A326813

/-- `and(1, A175926(n+1))*A115362(n)` -/
def P11613538813244261175.Spec : Prop :=
  ∀ n, P11613538813244261175.a n = A326813 (n + 1)

end A326813

/-! ## A326813.P2285447584376168770

`and(1, A280162(n+1))*A115362(n)`
-/

namespace A326813.P2285447584376168770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A280162 (n + 1)) * A115362 n

end

end A326813.P2285447584376168770

namespace A326813

/-- `and(1, A280162(n+1))*A115362(n)` -/
def P2285447584376168770.Spec : Prop :=
  ∀ n, P2285447584376168770.a n = A326813 (n + 1)

end A326813

/-! ## A326813.P3080414112955050045

`and(1, A284344(n+1))*A115362(n)`
-/

namespace A326813.P3080414112955050045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A284344 (n + 1)) * A115362 n

end

end A326813.P3080414112955050045

namespace A326813

/-- `and(1, A284344(n+1))*A115362(n)` -/
def P3080414112955050045.Spec : Prop :=
  ∀ n, P3080414112955050045.a n = A326813 (n + 1)

end A326813

/-! ## A326813.P4677298854355803970

`A093709(n+1)*A244415(2*(n+1))`
-/

namespace A326813.P4677298854355803970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093709 (n + 1) * A244415 (2 * (n + 1))

end

end A326813.P4677298854355803970

namespace A326813

/-- `A093709(n+1)*A244415(2*(n+1))` -/
def P4677298854355803970.Spec : Prop :=
  ∀ n, P4677298854355803970.a n = A326813 (n + 1)

end A326813

/-! ## A326813.P1787538503039265704

`∑{d}[n+1, A001511(#)*A008836((n+1)/#)]`
-/

namespace A326813.P1787538503039265704
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001511 d * A008836 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A326813.P1787538503039265704

namespace A326813

/-- `∑{d}[n+1, A001511(#)*A008836((n+1)/#)]` -/
def P1787538503039265704.Spec : Prop :=
  ∀ n, P1787538503039265704.a n = A326813 (n + 1)

end A326813

/-! ## A326813.P7000637688254592557

`∑{d}[n+1, A046951(#)*A087003((n+1)/#)]`
-/

namespace A326813.P7000637688254592557
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A046951 d * A087003 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A326813.P7000637688254592557

namespace A326813

/-- `∑{d}[n+1, A046951(#)*A087003((n+1)/#)]` -/
def P7000637688254592557.Spec : Prop :=
  ∀ n, P7000637688254592557.a n = A326813 (n + 1)

end A326813

/-! ## A326813.P4169625322249846426

`∑{d}[n+1, A048298(#)*A181563((n+1)/#)]`
-/

namespace A326813.P4169625322249846426
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A048298 d * A181563 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A326813.P4169625322249846426

namespace A326813

/-- `∑{d}[n+1, A048298(#)*A181563((n+1)/#)]` -/
def P4169625322249846426.Spec : Prop :=
  ∀ n, P4169625322249846426.a n = A326813 (n + 1)

end A326813

/-! ## A326813.P3995540154822508097

`∑{d}[n+1, A104117(#)*A143259((n+1)/#)]`
-/

namespace A326813.P3995540154822508097
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A104117 d * A143259 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A326813.P3995540154822508097

namespace A326813

/-- `∑{d}[n+1, A104117(#)*A143259((n+1)/#)]` -/
def P3995540154822508097.Spec : Prop :=
  ∀ n, P3995540154822508097.a n = A326813 (n + 1)

end A326813

/-! ## A326813.P3111170931486836323

`∑{d}[n+1, A065333(#)*A214295((n+1)/#)]`
-/

namespace A326813.P3111170931486836323
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A065333 d * A214295 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A326813.P3111170931486836323

namespace A326813

/-- `∑{d}[n+1, A065333(#)*A214295((n+1)/#)]` -/
def P3111170931486836323.Spec : Prop :=
  ∀ n, P3111170931486836323.a n = A326813 (n + 1)

end A326813

/-! ## A326813.P18259880333398835196

`∑{d}[n+1, A129628(#)*A158522((n+1)/#)]`
-/

namespace A326813.P18259880333398835196
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A129628 d * A158522 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A326813.P18259880333398835196

namespace A326813

/-- `∑{d}[n+1, A129628(#)*A158522((n+1)/#)]` -/
def P18259880333398835196.Spec : Prop :=
  ∀ n, P18259880333398835196.a n = A326813 (n + 1)

end A326813

/-! ## A326813.P9111814940406287557

`∑{d}[n+1, A035263(#)*A359154((n+1)/#)]`
-/

namespace A326813.P9111814940406287557
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A035263 d * A359154 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A326813.P9111814940406287557

namespace A326813

/-- `∑{d}[n+1, A035263(#)*A359154((n+1)/#)]` -/
def P9111814940406287557.Spec : Prop :=
  ∀ n, P9111814940406287557.a n = A326813 (n + 1)

end A326813

/-! ## A326813.P5950820197788485617

`∑{d}[n+1, A065704(#)*A355689((n+1)/#)]`
-/

namespace A326813.P5950820197788485617
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A065704 d * A355689 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A326813.P5950820197788485617

namespace A326813

/-- `∑{d}[n+1, A065704(#)*A355689((n+1)/#)]` -/
def P5950820197788485617.Spec : Prop :=
  ∀ n, P5950820197788485617.a n = A326813 (n + 1)

end A326813

/-! ## A326813.P13459278153958881670

`∑{d}[n+1, A076752(#)*A349341((n+1)/#)]`
-/

namespace A326813.P13459278153958881670
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A076752 d * A349341 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A326813.P13459278153958881670

namespace A326813

/-- `∑{d}[n+1, A076752(#)*A349341((n+1)/#)]` -/
def P13459278153958881670.Spec : Prop :=
  ∀ n, P13459278153958881670.a n = A326813 (n + 1)

end A326813

/-!
# A326814: Dirichlet g.f.: (1/zeta(s)) * Product_{p prime} (1 - 2 * p^(-s)).

The programs for A326814, the canonical program `A326814.P140171973767213427` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A326814 has offset 1).

The definition of A326814 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A326814.P140171973767213427

`∑{d}[n+1, A008683((n+1)/#)*A008683(#)*2^A001221(#)]`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A326814

/-- `∑{d}[n+1, A008683((n+1)/#)*A008683(#)*2^A001221(#)]` -/
def P140171973767213427.Spec : Prop :=
  ∀ n, P140171973767213427.a n = (A326814 (n + 1) : ℚ)

end A326814

/-! ## A326814.P7294515985206385499

`∑{d}[n+1, A007427(#)*A076479((n+1)/#)]`
-/

namespace A326814.P7294515985206385499
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007427 d * A076479 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A326814.P7294515985206385499

namespace A326814

/-- `∑{d}[n+1, A007427(#)*A076479((n+1)/#)]` -/
def P7294515985206385499.Spec : Prop :=
  ∀ n, P7294515985206385499.a n = A326814 (n + 1)

end A326814

/-! ## A326814.P16037789110182484349

`∑{d}[n+1, A046692(#)*A058026((n+1)/#)]`
-/

namespace A326814.P16037789110182484349
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A046692 d * A058026 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A326814.P16037789110182484349

namespace A326814

/-- `∑{d}[n+1, A046692(#)*A058026((n+1)/#)]` -/
def P16037789110182484349.Spec : Prop :=
  ∀ n, P16037789110182484349.a n = A326814 (n + 1)

end A326814

/-! ## A326814.P5736098934888416365

`∑{d}[n+1, A008683(#)*A226177((n+1)/#)]`
-/

namespace A326814.P5736098934888416365
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A226177 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A326814.P5736098934888416365

namespace A326814

/-- `∑{d}[n+1, A008683(#)*A226177((n+1)/#)]` -/
def P5736098934888416365.Spec : Prop :=
  ∀ n, P5736098934888416365.a n = A326814 (n + 1)

end A326814

/-! ## A326814.P16767802327340292693

`∑{d}[n+1, A247343(#)*A326815((n+1)/#)]`
-/

namespace A326814.P16767802327340292693
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A247343 d * A326815 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A326814.P16767802327340292693

namespace A326814

/-- `∑{d}[n+1, A247343(#)*A326815((n+1)/#)]` -/
def P16767802327340292693.Spec : Prop :=
  ∀ n, P16767802327340292693.a n = A326814 (n + 1)

end A326814

/-! ## A326814.P10932062366415714231

`A007425(n+1)/A000005(n+1)*A007427(n+1)`
-/

namespace A326814.P10932062366415714231
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007425 (n + 1) : ℚ) / (A000005 (n + 1) : ℚ) * (A007427 (n + 1) : ℚ)

end

end A326814.P10932062366415714231

namespace A326814

/-- `A007425(n+1)/A000005(n+1)*A007427(n+1)` -/
def P10932062366415714231.Spec : Prop :=
  ∀ n, P10932062366415714231.a n = (A326814 (n + 1) : ℚ)

end A326814

/-! ## A326814.P7526139680856884230

`A007427(n+1)/A000005(n+1)*A226602(n+1)`
-/

namespace A326814.P7526139680856884230
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007427 (n + 1) : ℚ) / (A000005 (n + 1) : ℚ) * (A226602 (n + 1) : ℚ)

end

end A326814.P7526139680856884230

namespace A326814

/-- `A007427(n+1)/A000005(n+1)*A226602(n+1)` -/
def P7526139680856884230.Spec : Prop :=
  ∀ n, P7526139680856884230.a n = (A326814 (n + 1) : ℚ)

end A326814

/-! ## A326814.P751213741590320459

`A007427(n+1)/A073184(n+1)*A226602(n+1)`
-/

namespace A326814.P751213741590320459
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007427 (n + 1) : ℚ) / (A073184 (n + 1) : ℚ) * (A226602 (n + 1) : ℚ)

end

end A326814.P751213741590320459

namespace A326814

/-- `A007427(n+1)/A073184(n+1)*A226602(n+1)` -/
def P751213741590320459.Spec : Prop :=
  ∀ n, P751213741590320459.a n = (A326814 (n + 1) : ℚ)

end A326814

/-! ## A326814.P18074335674914907788

`A034718(n+1)/A034714(n+1)*A328722(n+1)`
-/

namespace A326814.P18074335674914907788
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034718 (n + 1) : ℚ) / (A034714 (n + 1) : ℚ) * (A328722 (n + 1) : ℚ)

end

end A326814.P18074335674914907788

namespace A326814

/-- `A034718(n+1)/A034714(n+1)*A328722(n+1)` -/
def P18074335674914907788.Spec : Prop :=
  ∀ n, P18074335674914907788.a n = (A326814 (n + 1) : ℚ)

end A326814

/-!
# A326815: Dirichlet g.f.: zeta(s)^3 * Product_{p prime} (1 - 2 * p^(-s)).

The programs for A326815, the canonical program `A326815.P358488097052054416` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A326815 has offset 1).

The definition of A326815 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A326815.P358488097052054416

`∑{d}[n+1, (-1)^A001221((n+1)/#)*A000005(#)]`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A326815

/-- `∑{d}[n+1, (-1)^A001221((n+1)/#)*A000005(#)]` -/
def P358488097052054416.Spec : Prop :=
  ∀ n, P358488097052054416.a n = (A326815 (n + 1) : ℚ)

end A326815

/-! ## A326815.P3618752344326764349

`∏{e}[n+1, 1-C(#, 2)]`
-/

namespace A326815.P3618752344326764349
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (1 - (Nat.choose (Nat.factorization (f1 n) p) 2 : ℤ))

end

end A326815.P3618752344326764349

namespace A326815

/-- `∏{e}[n+1, 1-C(#, 2)]` -/
def P3618752344326764349.Spec : Prop :=
  ∀ n, P3618752344326764349.a n = A326815 (n + 1)

end A326815

/-! ## A326815.P14299130081752509433

`∏{e}[n+1, A080956(#)]`
-/

namespace A326815.P14299130081752509433
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A080956 (Nat.factorization (f1 n) p)

end

end A326815.P14299130081752509433

namespace A326815

/-- `∏{e}[n+1, A080956(#)]` -/
def P14299130081752509433.Spec : Prop :=
  ∀ n, P14299130081752509433.a n = A326815 (n + 1)

end A326815

/-! ## A326815.P12458202520934522419

`∏{e}[n+1, 2-A152947(#+1)]`
-/

namespace A326815.P12458202520934522419
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (2 - A152947 (Nat.factorization (f1 n) p + 1))

end

end A326815.P12458202520934522419

namespace A326815

/-- `∏{e}[n+1, 2-A152947(#+1)]` -/
def P12458202520934522419.Spec : Prop :=
  ∀ n, P12458202520934522419.a n = A326815 (n + 1)

end A326815

/-! ## A326815.P15323574520343537250

`∏{e}[n+1, #-A084938(A055998(#))]`
-/

namespace A326815.P15323574520343537250
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), ((Nat.factorization (f1 n) p : ℤ) - A084938 (A055998 (Nat.factorization (f1 n) p)).toNat)

end

end A326815.P15323574520343537250

namespace A326815

/-- `∏{e}[n+1, #-A084938(A055998(#))]` -/
def P15323574520343537250.Spec : Prop :=
  ∀ n, P15323574520343537250.a n = A326815 (n + 1)

end A326815

/-! ## A326815.P3945070061267888044

`∏{e}[n+1, A090109(#+1)-A000217(#)]`
-/

namespace A326815.P3945070061267888044
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (A090109 (Nat.factorization (f1 n) p + 1) - A000217 (Nat.factorization (f1 n) p))

end

end A326815.P3945070061267888044

namespace A326815

/-- `∏{e}[n+1, A090109(#+1)-A000217(#)]` -/
def P3945070061267888044.Spec : Prop :=
  ∀ n, P3945070061267888044.a n = A326815 (n + 1)

end A326815

/-! ## A326815.P16498851306299748033

`∑{d}[n+1, A000005(#)*A076479((n+1)/#)]`
-/

namespace A326815.P16498851306299748033
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000005 d * A076479 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A326815.P16498851306299748033

namespace A326815

/-- `∑{d}[n+1, A000005(#)*A076479((n+1)/#)]` -/
def P16498851306299748033.Spec : Prop :=
  ∀ n, P16498851306299748033.a n = A326815 (n + 1)

end A326815

/-! ## A326815.P2782494689283814796

`∑{d}[n+1, A007425(#)*A226177((n+1)/#)]`
-/

namespace A326815.P2782494689283814796
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007425 d * A226177 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A326815.P2782494689283814796

namespace A326815

/-- `∑{d}[n+1, A007425(#)*A226177((n+1)/#)]` -/
def P2782494689283814796.Spec : Prop :=
  ∀ n, P2782494689283814796.a n = A326815 (n + 1)

end A326815

/-! ## A326815.P1408010911036599947

`∑{d}[n+1, A007426(#)*A326814((n+1)/#)]`
-/

namespace A326815.P1408010911036599947
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007426 d * A326814 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A326815.P1408010911036599947

namespace A326815

/-- `∑{d}[n+1, A007426(#)*A326814((n+1)/#)]` -/
def P1408010911036599947.Spec : Prop :=
  ∀ n, P1408010911036599947.a n = A326815 (n + 1)

end A326815

/-! ## A326815.P17498710996941367353

`∑{d}[n+1, A130054(#)*A306408((n+1)/#)]`
-/

namespace A326815.P17498710996941367353
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A130054 d * A306408 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A326815.P17498710996941367353

namespace A326815

/-- `∑{d}[n+1, A130054(#)*A306408((n+1)/#)]` -/
def P17498710996941367353.Spec : Prop :=
  ∀ n, P17498710996941367353.a n = A326815 (n + 1)

end A326815

/-!
# A326817: Numbers k such that phi(k) > phi(k+1) > phi(k+2) > phi(k+3) where phi is the Euler totient function (A000010).

The programs for A326817, there is no canonical definition to state claims against.
-/

/-! ## A326817.P15115517481245661927

`∩[A328056(n+1)-1, A328056(n+1)]`
-/

namespace A326817.P15115517481245661927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328056 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328056 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A326817.P15115517481245661927

/-! ## A326817.P11957915278004811919

`A328056(eq[2, A020639(A328056(n+1))])`
-/

namespace A326817.P11957915278004811919
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A328056 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328056 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A326817.P11957915278004811919

/-!
# A326818: a(n) is the smallest k such that the first significant digits of 1/k coincide with n.

The programs for A326818, there is no canonical definition to state claims against.
-/

/-! ## A326818.P9403499393719665155

`A004151(A095156(n+1)%A017449(n))`
-/

namespace A326818.P9403499393719665155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004151 (Int.tmod (A095156 (n + 1)) (A017449 n)).toNat

end

end A326818.P9403499393719665155

/-! ## A326818.P11042510861859017279

`gcd(A089810(A007504(n)), A095156(n+1))`
-/

namespace A326818.P11042510861859017279
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A089810 (A007504 n).toNat) (A095156 (n + 1))

end

end A326818.P11042510861859017279

/-! ## A326818.P11634499576245737674

`gcd(A004151(A095156(n+1)), A151933(n))`
-/

namespace A326818.P11634499576245737674
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A004151 (A095156 (n + 1)).toNat) (A151933 n)

end

end A326818.P11634499576245737674

/-! ## A326818.P16112186746510888743

`A095156(n+1)^A001221(A209190(n+1))`
-/

namespace A326818.P16112186746510888743
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A095156 (n + 1) : ℚ) ^ (A001221 (A209190 (n + 1)).toNat : ℤ)

end

end A326818.P16112186746510888743

/-! ## A326818.P172703566664189777

`A004151(A095156(n+1))^(Δ[A171507(n)]%2)`
-/

namespace A326818.P172703566664189777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171507 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004151 (A095156 (n + 1)).toNat : ℚ) ^ (Int.tmod (f1 (n + 1) - f1 n) 2 : ℤ)

end

end A326818.P172703566664189777

/-! ## A326818.P16028182185342549451

`A004151(A095156(n+1))^ceil(n/A000203(n+1))`
-/

namespace A326818.P16028182185342549451
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004151 (A095156 (n + 1)).toNat : ℚ) ^ (⌈(n : ℚ) / (A000203 (n + 1) : ℚ)⌉ : ℤ)

end

end A326818.P16028182185342549451

/-! ## A326818.P4722943604161345796

`A004151(A095156(n+1))^A001221(A001316(n))`
-/

namespace A326818.P4722943604161345796
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004151 (A095156 (n + 1)).toNat : ℚ) ^ (A001221 (A001316 n).toNat : ℤ)

end

end A326818.P4722943604161345796

/-! ## A326818.P7039219206382518623

`A004151(A095156(n+1))^A001222(A008578(n+1))`
-/

namespace A326818.P7039219206382518623
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004151 (A095156 (n + 1)).toNat : ℚ) ^ (A001222 (A008578 (n + 1)).toNat : ℤ)

end

end A326818.P7039219206382518623

/-! ## A326818.P10499144836313854883

`A004151(A095156(n+1))^A001222(A027748(n+1))`
-/

namespace A326818.P10499144836313854883
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004151 (A095156 (n + 1)).toNat : ℚ) ^ (A001222 (A027748 (n + 1)).toNat : ℤ)

end

end A326818.P10499144836313854883

/-!
# A326819: Irregular triangle read by rows; for n >= 0, the n-th row corresponds to the elements of the set {(n-k) AND k, k = 0..n}, in ascending order (where AND denotes the bitwise AND operator).

The programs for A326819, there is no canonical definition to state claims against.
-/

/-! ## A326819.P7082489829095390827

`A289814(A374789(n))`
-/

namespace A326819.P7082489829095390827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289814 (A374789 n).toNat

end

end A326819.P7082489829095390827

/-! ## A326819.P16876173699497368179

`A103822(record[A286098(n)])`
-/

namespace A326819.P16876173699497368179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286098 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103822 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A326819.P16876173699497368179

/-! ## A326819.P14772678639867651329

`A103822(eq[n, A286098(n)])`
-/

namespace A326819.P14772678639867651329
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286098 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103822 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A326819.P14772678639867651329

/-! ## A326819.P18013528165528848744

`A002262(record[A286098(n)])`
-/

namespace A326819.P18013528165528848744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286098 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A326819.P18013528165528848744

/-! ## A326819.P14780194977915238606

`A004198(record[A286098(n)])`
-/

namespace A326819.P14780194977915238606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286098 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004198 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A326819.P14780194977915238606

/-! ## A326819.P12671338271610980217

`A002262(eq[n, A286098(n)])`
-/

namespace A326819.P12671338271610980217
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286098 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A326819.P12671338271610980217

/-! ## A326819.P6645370134293525274

`A004198(eq[n, A286098(n)])`
-/

namespace A326819.P6645370134293525274
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286098 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004198 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A326819.P6645370134293525274

/-! ## A326819.P10229225372034679926

`A002262(eq[A002262(n), A004198(n)])`
-/

namespace A326819.P10229225372034679926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004198 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A326819.P10229225372034679926

/-! ## A326819.P17906910634668475982

`A002262(eq[A002262(n)+n, A286108(n)])`
-/

namespace A326819.P17906910634668475982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286108 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A326819.P17906910634668475982

/-! ## A326819.P16659721513417562899

`A002262(eq[n, A286108(n)-A002262(n)])`
-/

namespace A326819.P16659721513417562899
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286108 n - A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A326819.P16659721513417562899

/-! ## A326819.P16526384034784863368

`A002262(eq[0, A268040(n)])`
-/

namespace A326819.P16526384034784863368
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268040 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A326819.P16526384034784863368

/-!
# A326820: Irregular triangle read by rows; for n >= 0, the n-th row corresponds to the elements of the set {(n-k) OR k, k = 0..n}, in ascending order (where OR denotes the bitwise OR operator).

The programs for A326820, the canonical program `A326820.P7475238842077640535` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A326820 has offset 0).

The definition of A326820 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1259 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A326820.P6113861976643135392

`A103823(eq[n, A286099(n)])`
-/

namespace A326820.P6113861976643135392
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286099 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103823 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A326820.P6113861976643135392

namespace A326820

/-- `A103823(eq[n, A286099(n)])` -/
def P6113861976643135392.Spec : Prop :=
  ∀ n, P6113861976643135392.a n = A326820 n

end A326820

/-! ## A326820.P9240370986664011973

`A103823(lt[A286099(n), n+1])`
-/

namespace A326820.P9240370986664011973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286099 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103823 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A326820.P9240370986664011973

namespace A326820

/-- `A103823(lt[A286099(n), n+1])` -/
def P9240370986664011973.Spec : Prop :=
  ∀ n, P9240370986664011973.a n = A326820 n

end A326820

/-! ## A326820.P10780360034536350833

`col(eq[0, A099026(n)])`
-/

namespace A326820.P10780360034536350833
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099026 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triCol (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A326820.P10780360034536350833

namespace A326820

/-- `col(eq[0, A099026(n)])` -/
def P10780360034536350833.Spec : Prop :=
  ∀ n, (P10780360034536350833.a n : ℤ) = A326820 n

end A326820

/-! ## A326820.P11956085037804835746

`col(lt[0, A106344(n)])`
-/

namespace A326820.P11956085037804835746
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106344 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triCol (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A326820.P11956085037804835746

namespace A326820

/-- `col(lt[0, A106344(n)])` -/
def P11956085037804835746.Spec : Prop :=
  ∀ n, (P11956085037804835746.a n : ℤ) = A326820 n

end A326820

/-! ## A326820.P15029510522435977911

`col(eq[col(n), A003986(n)])`
-/

namespace A326820.P15029510522435977911
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triCol n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003986 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triCol (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A326820.P15029510522435977911

namespace A326820

/-- `col(eq[col(n), A003986(n)])` -/
def P15029510522435977911.Spec : Prop :=
  ∀ n, (P15029510522435977911.a n : ℤ) = A326820 n

end A326820

/-! ## A326820.P7475238842077640535

`A003984(lt[A099026(n), 1])`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A326820

/-- `A003984(lt[A099026(n), 1])` -/
def P7475238842077640535.Spec : Prop :=
  ∀ n, P7475238842077640535.a n = A326820 n

theorem P7475238842077640535.correct : P7475238842077640535.Spec := by
  intro n
  simp only [A326820]

end A326820

/-! ## A326820.P5530560823953162627

`A002262(eq[n, A286099(n)])`
-/

namespace A326820.P5530560823953162627
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286099 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A326820.P5530560823953162627

namespace A326820

/-- `A002262(eq[n, A286099(n)])` -/
def P5530560823953162627.Spec : Prop :=
  ∀ n, P5530560823953162627.a n = A326820 n

end A326820

/-! ## A326820.P631078123202111916

`A002262(record[n*(1-A286099(n)+n)])`
-/

namespace A326820.P631078123202111916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (1 - A286099 n + (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A326820.P631078123202111916

namespace A326820

/-- `A002262(record[n*(1-A286099(n)+n)])` -/
def P631078123202111916.Spec : Prop :=
  ∀ n, P631078123202111916.a n = A326820 n

end A326820

/-! ## A326820.P9618026355450436492

`A002262(eq[A002262(n), A003986(n)])`
-/

namespace A326820.P9618026355450436492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003986 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A326820.P9618026355450436492

namespace A326820

/-- `A002262(eq[A002262(n), A003986(n)])` -/
def P9618026355450436492.Spec : Prop :=
  ∀ n, P9618026355450436492.a n = A326820 n

end A326820

/-! ## A326820.P581213334851799933

`A003984(eq[A004198(n), A025581(n)])`
-/

namespace A326820.P581213334851799933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004198 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003984 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A326820.P581213334851799933

namespace A326820

/-- `A003984(eq[A004198(n), A025581(n)])` -/
def P581213334851799933.Spec : Prop :=
  ∀ n, P581213334851799933.a n = A326820 n

end A326820

/-! ## A326820.P1602346647680046070

`A002262(eq[n, A286109(n)+A025581(n)])`
-/

namespace A326820.P1602346647680046070
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286109 n + A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A326820.P1602346647680046070

namespace A326820

/-- `A002262(eq[n, A286109(n)+A025581(n)])` -/
def P1602346647680046070.Spec : Prop :=
  ∀ n, P1602346647680046070.a n = A326820 n

end A326820

/-! ## A326820.P5741411701900887918

`A002262(eq[n-A025581(n), A286109(n)])`
-/

namespace A326820.P5741411701900887918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A025581 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286109 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A326820.P5741411701900887918

namespace A326820

/-- `A002262(eq[n-A025581(n), A286109(n)])` -/
def P5741411701900887918.Spec : Prop :=
  ∀ n, P5741411701900887918.a n = A326820 n

end A326820

/-! ## A326820.P3647881923885168474

`A003986(eq[A003986(n)+1, A002260(n+1)])`
-/

namespace A326820.P3647881923885168474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003986 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003986 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A326820.P3647881923885168474

namespace A326820

/-- `A003986(eq[A003986(n)+1, A002260(n+1)])` -/
def P3647881923885168474.Spec : Prop :=
  ∀ n, P3647881923885168474.a n = A326820 n

end A326820

/-!
# A326821: a(n) is the number of positive numbers k < n such that n+k and n-k have no digit in common.

The programs for A326821, there is no canonical definition to state claims against.
-/

/-! ## A326821.P13750519716958471830

`A396855(2*(n+1))`
-/

namespace A326821.P13750519716958471830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396855 (2 * (n + 1))

end

end A326821.P13750519716958471830

/-!
# A326822: T(n, k) = k^0 if k = 1 else 0^n. Triangle read by rows, T(n, k) for 0 <= k <= n.

The programs for A326822, the canonical program `A326822.P6252450043534262605` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A326822 has offset 0).

The definition of A326822 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A326822.P18094827002653484500

`T(n-1,k)` with `a(0)=1, a(1)=0, a(2)=1`
-/

namespace A326822.P18094827002653484500
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 1] fun n a =>
  SequenceMachineLib.triUp a n

end

end A326822.P18094827002653484500

namespace A326822

/-- `T(n-1,k)` -/
def P18094827002653484500.Spec : Prop :=
  ∀ n, (P18094827002653484500.a n : ℤ) = A326822 n

end A326822

/-! ## A326822.P5182969962804187851

`char[∑[char[1]+n]]`
-/

namespace A326822.P5182969962804187851
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f3 j = n then 1 else 0) + n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A326822.P5182969962804187851

namespace A326822

/-- `char[∑[char[1]+n]]` -/
def P5182969962804187851.Spec : Prop :=
  ∀ n, (P5182969962804187851.a n : ℤ) = A326822 n

end A326822

/-! ## A326822.P4534168429907817354

`T(n-2,k)` with `a(0)=1, a(1)=0, a(2)=1, a(3)=0, a(4)=1`
-/

namespace A326822.P4534168429907817354
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 1, 0, 1] fun n a =>
  SequenceMachineLib.triUp2 a n

end

end A326822.P4534168429907817354

namespace A326822

/-- `T(n-2,k)` -/
def P4534168429907817354.Spec : Prop :=
  ∀ n, (P4534168429907817354.a n : ℤ) = A326822 n

end A326822

/-! ## A326822.P16738936122938677654

`T(col(n)-1, T(n-1,k+1))` with `a(0)=1`
-/

namespace A326822.P16738936122938677654
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.triAt a ((SequenceMachineLib.triCol n : ℤ) - 1) ((SequenceMachineLib.triUpRight a n : ℕ) : ℤ)

end

end A326822.P16738936122938677654

namespace A326822

/-- `T(col(n)-1, T(n-1,k+1))` -/
def P16738936122938677654.Spec : Prop :=
  ∀ n, (P16738936122938677654.a n : ℤ) = A326822 n

end A326822

/-! ## A326822.P17860813600922686182

`a(n-row(n))` with `a(0)=1, a(1)=0, a(2)=1`
-/

namespace A326822.P17860813600922686182
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 1] fun n a =>
  a (n - SequenceMachineLib.triRow n)

end

end A326822.P17860813600922686182

namespace A326822

/-- `a(n-row(n))` -/
def P17860813600922686182.Spec : Prop :=
  ∀ n, (P17860813600922686182.a n : ℤ) = A326822 n

end A326822

/-! ## A326822.P6136973016465546210

`T(col(n)-1, T(T(n-1,k-1), 2))` with `a(0)=1`
-/

namespace A326822.P6136973016465546210
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.triAt a ((SequenceMachineLib.triCol n : ℤ) - 1) ((SequenceMachineLib.triAt a ((SequenceMachineLib.triUpLeft a n : ℕ) : ℤ) 2 : ℕ) : ℤ)

end

end A326822.P6136973016465546210

namespace A326822

/-- `T(col(n)-1, T(T(n-1,k-1), 2))` -/
def P6136973016465546210.Spec : Prop :=
  ∀ n, (P6136973016465546210.a n : ℤ) = A326822 n

end A326822

/-! ## A326822.P3306710255199428506

`a(∑[1-char[∑[n]]])` with `a(0)=1, a(1)=0, a(2)=1`
-/

namespace A326822.P3306710255199428506
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 1] fun n a =>
  a (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A326822.P3306710255199428506

namespace A326822

/-- `a(∑[1-char[∑[n]]])` -/
def P3306710255199428506.Spec : Prop :=
  ∀ n, (P3306710255199428506.a n : ℤ) = A326822 n

end A326822

/-! ## A326822.P11067864856549290674

`T(1-col(n), col(n)-1)` with `a(0)=1`
-/

namespace A326822.P11067864856549290674
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.triAt a (1 - (SequenceMachineLib.triCol n : ℤ)) ((SequenceMachineLib.triCol n : ℤ) - 1)

end

end A326822.P11067864856549290674

namespace A326822

/-- `T(1-col(n), col(n)-1)` -/
def P11067864856549290674.Spec : Prop :=
  ∀ n, (P11067864856549290674.a n : ℤ) = A326822 n

end A326822

/-! ## A326822.P8334980981572117296

`and(5, char[a(n-1)+n])` with `a(0)=0, a(1)=2`
-/

namespace A326822.P8334980981572117296
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 2] fun n f1 =>
  f1 (n - 1) + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 5 (if ∃ j, f1 j = n then 1 else 0)

end

end A326822.P8334980981572117296

namespace A326822

/-- `and(5, char[a(n-1)+n])` -/
def P8334980981572117296.Spec : Prop :=
  ∀ n, (P8334980981572117296.a n : ℤ) = A326822 n

end A326822

/-! ## A326822.P5615667341915604159

`1-char[comp[C(n+2, 2)]+1]`
-/

namespace A326822.P5615667341915604159
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 2) 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n + 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A326822.P5615667341915604159

namespace A326822

/-- `1-char[comp[C(n+2, 2)]+1]` -/
def P5615667341915604159.Spec : Prop :=
  ∀ n, P5615667341915604159.a n = A326822 n

end A326822

/-! ## A326822.P15176668993681934246

`C(col(n), ((col(n)-1)*row(n))²)`
-/

namespace A326822.P15176668993681934246
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.triCol n) ((((SequenceMachineLib.triCol n : ℤ) - 1) * (SequenceMachineLib.triRow n : ℤ)) ^ 2).toNat

end

end A326822.P15176668993681934246

namespace A326822

/-- `C(col(n), ((col(n)-1)*row(n))²)` -/
def P15176668993681934246.Spec : Prop :=
  ∀ n, (P15176668993681934246.a n : ℤ) = A326822 n

end A326822

/-! ## A326822.P3549991713982298653

`C(C(2, col(n))*row(n), 2*row(n))`
-/

namespace A326822.P3549991713982298653
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.choose 2 (SequenceMachineLib.triCol n) * SequenceMachineLib.triRow n) (2 * SequenceMachineLib.triRow n)

end

end A326822.P3549991713982298653

namespace A326822

/-- `C(C(2, col(n))*row(n), 2*row(n))` -/
def P3549991713982298653.Spec : Prop :=
  ∀ n, (P3549991713982298653.a n : ℤ) = A326822 n

end A326822

/-! ## A326822.P3149328970467595762

`(1-a(n-1))*char[C(n, 2)+1]` with `a(0)=1`
-/

namespace A326822.P3149328970467595762
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2 + 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (1 - a (n - 1)) * ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A326822.P3149328970467595762

namespace A326822

/-- `(1-a(n-1))*char[C(n, 2)+1]` -/
def P3149328970467595762.Spec : Prop :=
  ∀ n, P3149328970467595762.a n = A326822 n

end A326822

/-! ## A326822.P12546264642868060255

`A193900(n)%2`
-/

namespace A326822.P12546264642868060255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A193900 n) 2

end

end A326822.P12546264642868060255

namespace A326822

/-- `A193900(n)%2` -/
def P12546264642868060255.Spec : Prop :=
  ∀ n, P12546264642868060255.a n = A326822 n

end A326822

/-! ## A326822.P6252450043534262605

`A073424(abs(1-n))`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A326822

/-- `A073424(abs(1-n))` -/
def P6252450043534262605.Spec : Prop :=
  ∀ n, P6252450043534262605.a n = A326822 n

theorem P6252450043534262605.correct : P6252450043534262605.Spec := by
  intro n
  simp only [A326822]

end A326822

/-! ## A326822.P8483868457702741251

`A023531(abs(2-n))`
-/

namespace A326822.P8483868457702741251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 |2 - (n : ℤ)|.toNat

end

end A326822.P8483868457702741251

namespace A326822

/-- `A023531(abs(2-n))` -/
def P8483868457702741251.Spec : Prop :=
  ∀ n, P8483868457702741251.a n = A326822 n

end A326822

/-! ## A326822.P1742756627655437022

`1-char[A080036(n)]`
-/

namespace A326822.P1742756627655437022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080036 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A326822.P1742756627655437022

namespace A326822

/-- `1-char[A080036(n)]` -/
def P1742756627655437022.Spec : Prop :=
  ∀ n, P1742756627655437022.a n = A326822 n

end A326822

/-! ## A326822.P402073330554108079

`Δ[round(sqrt(A004275(n)))]`
-/

namespace A326822.P402073330554108079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A004275 n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A326822.P402073330554108079

namespace A326822

/-- `Δ[round(sqrt(A004275(n)))]` -/
def P402073330554108079.Spec : Prop :=
  ∀ n, P402073330554108079.a n = A326822 n

end A326822

/-! ## A326822.P15782834178301749519

`A048645(n+1)%2`
-/

namespace A326822.P15782834178301749519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A048645 (n + 1)) 2

end

end A326822.P15782834178301749519

namespace A326822

/-- `A048645(n+1)%2` -/
def P15782834178301749519.Spec : Prop :=
  ∀ n, P15782834178301749519.a n = A326822 n

end A326822

/-! ## A326822.P13041417037971596344

`A208758(n+1)%2`
-/

namespace A326822.P13041417037971596344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A208758 (n + 1)) 2

end

end A326822.P13041417037971596344

namespace A326822

/-- `A208758(n+1)%2` -/
def P13041417037971596344.Spec : Prop :=
  ∀ n, P13041417037971596344.a n = A326822 n

end A326822

/-!
# A326824: a(1) = 1; a(n) = Sum_{d|n, d < n} phi(n/d) * d * a(d).

The programs for A326824, there is no canonical definition to state claims against.
-/

/-! ## A326824.P11644655081290417973

`A106737(A018022(n)-A000203(n+1))`
-/

namespace A326824.P11644655081290417973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106737 (A018022 n - A000203 (n + 1)).toNat

end

end A326824.P11644655081290417973

/-! ## A326824.P17416354993939089042

`A000005(A113402(n+1)*A201204(n))`
-/

namespace A326824.P17416354993939089042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A113402 (n + 1) * A201204 n).toNat

end

end A326824.P17416354993939089042

/-!
# A326826: a(n) = (1/2) * Sum_{d|n} (sigma_1(d) + sigma_2(d)), where sigma_1 = A000203 and sigma_2 = A001157.

The programs for A326826, the canonical program `A326826.P16846452344116870608` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A326826 has offset 1).

The definition of A326826 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A326826.P16846452344116870608

`∑{d}[n+1, A007437(#)]`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A326826

/-- `∑{d}[n+1, A007437(#)]` -/
def P16846452344116870608.Spec : Prop :=
  ∀ n, P16846452344116870608.a n = A326826 (n + 1)

theorem P16846452344116870608.correct : P16846452344116870608.Spec := by
  intro n
  simp only [A326826, Nat.add_sub_cancel]

end A326826

/-! ## A326826.P3431543543160865801

`1/2*∑{d}[n+1, #*(#+1)*A000005((n+1)/#)]`
-/

namespace A326826.P3431543543160865801
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * ((∑ d ∈ Nat.divisors (f1 n), (d * (d + 1) : ℤ) * A000005 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat : ℤ) : ℚ)

end

end A326826.P3431543543160865801

namespace A326826

/-- `1/2*∑{d}[n+1, #*(#+1)*A000005((n+1)/#)]` -/
def P3431543543160865801.Spec : Prop :=
  ∀ n, P3431543543160865801.a n = (A326826 (n + 1) : ℚ)

end A326826

/-! ## A326826.P8543144107551347546

`1/2*∑{d}[n+1, A000203(#)+A001157(#)]`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A326826.P8543144107551347546
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * ((∑ d ∈ Nat.divisors (f1 n), (A000203 d + A001157 d) : ℤ) : ℚ)

end

end A326826.P8543144107551347546

namespace A326826

/-- `1/2*∑{d}[n+1, A000203(#)+A001157(#)]` -/
def P8543144107551347546.Spec : Prop :=
  ∀ n, P8543144107551347546.a n = (A326826 (n + 1) : ℚ)

end A326826

/-! ## A326826.P5006713777768377135

`1/2*(A007429(n+1)+∑{d}[n+1, #*A000010(#)*A007429((n+1)/#)])`
-/

namespace A326826.P5006713777768377135
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * ((A007429 (n + 1) + ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A000010 d * A007429 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat : ℤ) : ℚ)

end

end A326826.P5006713777768377135

namespace A326826

/-- `1/2*(A007429(n+1)+∑{d}[n+1, #*A000010(#)*A007429((n+1)/#)])` -/
def P5006713777768377135.Spec : Prop :=
  ∀ n, P5006713777768377135.a n = (A326826 (n + 1) : ℚ)

end A326826

/-! ## A326826.P9101608667017652072

`(A007433(n+1)+A007429(n+1))/2`
-/

namespace A326826.P9101608667017652072
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007433 (n + 1) + A007429 (n + 1) : ℚ) / 2

end

end A326826.P9101608667017652072

namespace A326826

/-- `(A007433(n+1)+A007429(n+1))/2` -/
def P9101608667017652072.Spec : Prop :=
  ∀ n, P9101608667017652072.a n = (A326826 (n + 1) : ℚ)

end A326826

/-! ## A326826.P2043578383242832052

`∑{d}[n+1, A007425(#)*A007438((n+1)/#)]`
-/

namespace A326826.P2043578383242832052
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007425 d * A007438 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A326826.P2043578383242832052

namespace A326826

/-- `∑{d}[n+1, A007425(#)*A007438((n+1)/#)]` -/
def P2043578383242832052.Spec : Prop :=
  ∀ n, P2043578383242832052.a n = A326826 (n + 1)

end A326826

/-! ## A326826.P16122372011493243852

`∑{d}[n+1, A007429(#)*A023896((n+1)/#)]`
-/

namespace A326826.P16122372011493243852
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007429 d * A023896 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A326826.P16122372011493243852

namespace A326826

/-- `∑{d}[n+1, A007429(#)*A023896((n+1)/#)]` -/
def P16122372011493243852.Spec : Prop :=
  ∀ n, P16122372011493243852.a n = A326826 (n + 1)

end A326826

/-! ## A326826.P12645413382525493331

`∑{d}[n+1, A000203(#)*A057661((n+1)/#)]`
-/

namespace A326826.P12645413382525493331
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000203 d * A057661 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A326826.P12645413382525493331

namespace A326826

/-- `∑{d}[n+1, A000203(#)*A057661((n+1)/#)]` -/
def P12645413382525493331.Spec : Prop :=
  ∀ n, P12645413382525493331.a n = A326826 (n + 1)

end A326826

/-! ## A326826.P8262289501023870749

`∑{d}[n+1, A007426(#)*A326828((n+1)/#)]`
-/

namespace A326826.P8262289501023870749
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007426 d * A326828 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A326826.P8262289501023870749

namespace A326826

/-- `∑{d}[n+1, A007426(#)*A326828((n+1)/#)]` -/
def P8262289501023870749.Spec : Prop :=
  ∀ n, P8262289501023870749.a n = A326826 (n + 1)

end A326826

/-! ## A326826.P10111740317811482084

`∑{d}[n+1, A001227(#)*A338045((n+1)/#)]`
-/

namespace A326826.P10111740317811482084
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001227 d * A338045 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A326826.P10111740317811482084

namespace A326826

/-- `∑{d}[n+1, A001227(#)*A338045((n+1)/#)]` -/
def P10111740317811482084.Spec : Prop :=
  ∀ n, P10111740317811482084.a n = A326826 (n + 1)

end A326826

/-! ## A326826.P8655891460784541280

`∑{d}[n+1, A038712(#)*A365007((n+1)/#)]`
-/

namespace A326826.P8655891460784541280
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A038712 d * A365007 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A326826.P8655891460784541280

namespace A326826

/-- `∑{d}[n+1, A038712(#)*A365007((n+1)/#)]` -/
def P8655891460784541280.Spec : Prop :=
  ∀ n, P8655891460784541280.a n = A326826 (n + 1)

end A326826

/-! ## A326826.P7151583095995801999

`∑{d}[n+1, A130054(#)*A309731((n+1)/#)]`
-/

namespace A326826.P7151583095995801999
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A130054 d * A309731 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A326826.P7151583095995801999

namespace A326826

/-- `∑{d}[n+1, A130054(#)*A309731((n+1)/#)]` -/
def P7151583095995801999.Spec : Prop :=
  ∀ n, P7151583095995801999.a n = A326826 (n + 1)

end A326826

/-! ## A326826.P14734273412686675470

`∑{d}[n+1, A069733(#)*A373189((n+1)/#)]`
-/

namespace A326826.P14734273412686675470
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A069733 d * A373189 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A326826.P14734273412686675470

namespace A326826

/-- `∑{d}[n+1, A069733(#)*A373189((n+1)/#)]` -/
def P14734273412686675470.Spec : Prop :=
  ∀ n, P14734273412686675470.a n = A326826 (n + 1)

end A326826

/-! ## A326826.P18199756638176449395

`∑{d}[n+1, A288417(#)*A390804((n+1)/#)]`
-/

namespace A326826.P18199756638176449395
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A288417 d * A390804 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A326826.P18199756638176449395

namespace A326826

/-- `∑{d}[n+1, A288417(#)*A390804((n+1)/#)]` -/
def P18199756638176449395.Spec : Prop :=
  ∀ n, P18199756638176449395.a n = A326826 (n + 1)

end A326826

/-! ## A326826.P13818429290043541171

`∑{d}[n+1, A319132(#)*A390808((n+1)/#)]`
-/

namespace A326826.P13818429290043541171
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A319132 d * A390808 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A326826.P13818429290043541171

namespace A326826

/-- `∑{d}[n+1, A319132(#)*A390808((n+1)/#)]` -/
def P13818429290043541171.Spec : Prop :=
  ∀ n, P13818429290043541171.a n = A326826 (n + 1)

end A326826

/-! ## A326826.P16378209889953901693

`∑{d}[n+1, A383795(#)*A390806((n+1)/#)]`
-/

namespace A326826.P16378209889953901693
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A383795 d * A390806 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A326826.P16378209889953901693

namespace A326826

/-- `∑{d}[n+1, A383795(#)*A390806((n+1)/#)]` -/
def P16378209889953901693.Spec : Prop :=
  ∀ n, P16378209889953901693.a n = A326826 (n + 1)

end A326826

/-! ## A326826.P4748710890566080006

`∑{d}[n+1, A133700(#)*A195094((n+1)/#)]`
-/

namespace A326826.P4748710890566080006
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A133700 d * A195094 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A326826.P4748710890566080006

namespace A326826

/-- `∑{d}[n+1, A133700(#)*A195094((n+1)/#)]` -/
def P4748710890566080006.Spec : Prop :=
  ∀ n, P4748710890566080006.a n = A326826 (n + 1)

end A326826

/-! ## A326826.P7226236469395481405

`∑{d}[n+1, A035191(#)*A373186((n+1)/#)]`
-/

namespace A326826.P7226236469395481405
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A035191 d * A373186 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A326826.P7226236469395481405

namespace A326826

/-- `∑{d}[n+1, A035191(#)*A373186((n+1)/#)]` -/
def P7226236469395481405.Spec : Prop :=
  ∀ n, P7226236469395481405.a n = A326826 (n + 1)

end A326826

/-!
# A326827: Expansion of 1 / (chi(-x)^10 * chi(-x^2)^4) in powers of x where chi() is a Ramanujan theta function.

The programs for A326827, there is no canonical definition to state claims against.
-/

/-! ## A326827.P1925661505779275271

`A093160(2*n+1)/4`
-/

namespace A326827.P1925661505779275271
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A093160 (2 * n + 1) : ℚ) / 4

end

end A326827.P1925661505779275271

/-! ## A326827.P16412122532412329421

`A232772(2*n+1)/8`
-/

namespace A326827.P16412122532412329421
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A232772 (2 * n + 1) : ℚ) / 8

end

end A326827.P16412122532412329421

/-! ## A326827.P16390281720178917242

`A208933(4*n+3)/8`
-/

namespace A326827.P16390281720178917242
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A208933 (4 * n + 3) : ℚ) / 8

end

end A326827.P16390281720178917242

/-! ## A326827.P6020494060132612126

`A007096(A004767(n))/16`
-/

namespace A326827.P6020494060132612126
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007096 (A004767 n).toNat : ℚ) / 16

end

end A326827.P6020494060132612126

/-! ## A326827.P13425104971830989550

`A208605(4*n+3)/4`
-/

namespace A326827.P13425104971830989550
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A208605 (4 * n + 3) : ℚ) / 4

end

end A326827.P13425104971830989550

/-!
# A326828: a(n) = (1/2) * Sum_{d|n} mu(n/d) * phi(d) * (psi(d) + 1), where mu = A008683, phi = A000010 and psi = A001615.

The programs for A326828, the canonical program `A326828.P371920509662354273` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A326828 has offset 1).

The definition of A326828 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A326828.P8225104164818035485

`1/2*∑{d}[n+1, #*(#+1)*A007427((n+1)/#)]`
-/

namespace A326828.P8225104164818035485
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * ((∑ d ∈ Nat.divisors (f1 n), (d * (d + 1) : ℤ) * A007427 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat : ℤ) : ℚ)

end

end A326828.P8225104164818035485

namespace A326828

/-- `1/2*∑{d}[n+1, #*(#+1)*A007427((n+1)/#)]` -/
def P8225104164818035485.Spec : Prop :=
  ∀ n, P8225104164818035485.a n = (A326828 (n + 1) : ℚ)

end A326828

/-! ## A326828.P371920509662354273

`∑{d}[n+1, A008683((n+1)/#)*A007438(#)]`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A326828

/-- `∑{d}[n+1, A008683((n+1)/#)*A007438(#)]` -/
def P371920509662354273.Spec : Prop :=
  ∀ n, P371920509662354273.a n = A326828 (n + 1)

theorem P371920509662354273.correct : P371920509662354273.Spec := by
  intro n
  simp only [A326828, Nat.add_sub_cancel]

end A326828

/-! ## A326828.P17376080552107712794

`∑{d}[n+1, A000217(#)*A007427((n+1)/#)]`
-/

namespace A326828.P17376080552107712794
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000217 d * A007427 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A326828.P17376080552107712794

namespace A326828

/-- `∑{d}[n+1, A000217(#)*A007427((n+1)/#)]` -/
def P17376080552107712794.Spec : Prop :=
  ∀ n, P17376080552107712794.a n = A326828 (n + 1)

end A326828

/-! ## A326828.P12117459923667738918

`∑{d}[n+1, A007428(#)*A007437((n+1)/#)]`
-/

namespace A326828.P12117459923667738918
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007428 d * A007437 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A326828.P12117459923667738918

namespace A326828

/-- `∑{d}[n+1, A007428(#)*A007437((n+1)/#)]` -/
def P12117459923667738918.Spec : Prop :=
  ∀ n, P12117459923667738918.a n = A326828 (n + 1)

end A326828

/-! ## A326828.P8979103356022552510

`∑{d}[n+1, A007431(#)*A023896((n+1)/#)]`
-/

namespace A326828.P8979103356022552510
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007431 d * A023896 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A326828.P8979103356022552510

namespace A326828

/-- `∑{d}[n+1, A007431(#)*A023896((n+1)/#)]` -/
def P8979103356022552510.Spec : Prop :=
  ∀ n, P8979103356022552510.a n = A326828 (n + 1)

end A326828

/-! ## A326828.P1662281378518756699

`∑{d}[n+1, A007432(#)*A057661((n+1)/#)]`
-/

namespace A326828.P1662281378518756699
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007432 d * A057661 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A326828.P1662281378518756699

namespace A326828

/-- `∑{d}[n+1, A007432(#)*A057661((n+1)/#)]` -/
def P1662281378518756699.Spec : Prop :=
  ∀ n, P1662281378518756699.a n = A326828 (n + 1)

end A326828

/-! ## A326828.P325158335158314156

`∑{d}[n+1, A046692(#)*A309322((n+1)/#)]`
-/

namespace A326828.P325158335158314156
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A046692 d * A309322 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A326828.P325158335158314156

namespace A326828

/-- `∑{d}[n+1, A046692(#)*A309322((n+1)/#)]` -/
def P325158335158314156.Spec : Prop :=
  ∀ n, P325158335158314156.a n = A326828 (n + 1)

end A326828

/-! ## A326828.P12178095450690832066

`∑{d}[n+1, A125287(#)*A341772((n+1)/#)]`
-/

namespace A326828.P12178095450690832066
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A125287 d * A341772 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A326828.P12178095450690832066

namespace A326828

/-- `∑{d}[n+1, A125287(#)*A341772((n+1)/#)]` -/
def P12178095450690832066.Spec : Prop :=
  ∀ n, P12178095450690832066.a n = A326828 (n + 1)

end A326828

/-! ## A326828.P8903608375425818956

`∑{d}[n+1, A247343(#)*A326826((n+1)/#)]`
-/

namespace A326828.P8903608375425818956
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A247343 d * A326826 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A326828.P8903608375425818956

namespace A326828

/-- `∑{d}[n+1, A247343(#)*A326826((n+1)/#)]` -/
def P8903608375425818956.Spec : Prop :=
  ∀ n, P8903608375425818956.a n = A326828 (n + 1)

end A326828

/-! ## A326828.P14961104416838479989

`∑{d}[n+1, A327274(#)*A390802((n+1)/#)]`
-/

namespace A326828.P14961104416838479989
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A327274 d * A390802 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A326828.P14961104416838479989

namespace A326828

/-- `∑{d}[n+1, A327274(#)*A390802((n+1)/#)]` -/
def P14961104416838479989.Spec : Prop :=
  ∀ n, P14961104416838479989.a n = A326828 (n + 1)

end A326828

/-! ## A326828.P11824035624289597935

`∑{d}[n+1, A092673(#)*A195094((n+1)/#)]`
-/

namespace A326828.P11824035624289597935
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A092673 d * A195094 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A326828.P11824035624289597935

namespace A326828

/-- `∑{d}[n+1, A092673(#)*A195094((n+1)/#)]` -/
def P11824035624289597935.Spec : Prop :=
  ∀ n, P11824035624289597935.a n = A326828 (n + 1)

end A326828

/-!
# A326830: Expansion of Product_{i>=2, j>=2} 1 / (1 - x^(i*j))^j.

The programs for A326830, there is no canonical definition to state claims against.
-/

/-! ## A326830.P9203046810810176903

`A351293(A294137(n))+A326831(n)`
-/

namespace A326830.P9203046810810176903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351293 (A294137 n).toNat + A326831 n

end

end A326830.P9203046810810176903

/-!
# A326831: Expansion of Product_{i>=2, j>=2} (1 + x^(i*j))^j.

The programs for A326831, there is no canonical definition to state claims against.
-/

/-! ## A326831.P3944241006734920355

`A087061(lcm(A061446(n+1), A294137(n)))`
-/

namespace A326831.P3944241006734920355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087061 (Int.lcm (A061446 (n + 1)) (A294137 n))

end

end A326831.P3944241006734920355

/-! ## A326831.P5195883835497280543

`A129835(A331888(n))-A091247(A026504(n+1))`
-/

namespace A326831.P5195883835497280543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129835 (A331888 n).toNat - A091247 (A026504 (n + 1)).toNat

end

end A326831.P5195883835497280543

/-! ## A326831.P14351979872388845960

`A337667(A004906(n+1))-A269129(A006218(n+1))`
-/

namespace A326831.P14351979872388845960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337667 (A004906 (n + 1)).toNat - A269129 (A006218 (n + 1)).toNat

end

end A326831.P14351979872388845960

/-!
# A326832: Triangle read by rows: T(n, k) = (-1)^(n - k) * binomial(2n + 1, n - k) * L(2k + 1), 0 <= k <= n, where L(k) is the k-th Lucas number (A000032).

The programs for A326832, there is no canonical definition to state claims against.
-/

/-! ## A326832.P12857073956625773753

`A000032(A158405(n+1))*A113187(n)`
-/

namespace A326832.P12857073956625773753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (A158405 (n + 1)).toNat * A113187 n

end

end A326832.P12857073956625773753

/-!
# A326833: Numbers whose sum of digits is a power of 10.

The programs for A326833, there is no canonical definition to state claims against.
-/

/-! ## A326833.P5773278781621882684

`∪[A052224(n+1), A088407(n+1)]`
-/

namespace A326833.P5773278781621882684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052224 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088407 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A326833.P5773278781621882684

/-! ## A326833.P18055990734927384284

`∩[A326806(n+1), A017173(n)]`
-/

namespace A326833.P18055990734927384284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326806 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017173 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A326833.P18055990734927384284

/-! ## A326833.P11821865398031086231

`∩[A056020(n+1), A326806(n+1)]`
-/

namespace A326833.P11821865398031086231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056020 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326806 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A326833.P11821865398031086231

/-! ## A326833.P2562957675031699707

`∩[A087444(n+1), A326806(n+1)]`
-/

namespace A326833.P2562957675031699707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087444 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326806 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A326833.P2562957675031699707

/-! ## A326833.P13293909920886211513

`∩[A344208(n+1), A017173(n)]`
-/

namespace A326833.P13293909920886211513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344208 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017173 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A326833.P13293909920886211513

/-! ## A326833.P12934965155127902503

`∩[A056020(n+1), A344208(n+1)]`
-/

namespace A326833.P12934965155127902503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056020 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344208 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A326833.P12934965155127902503

/-! ## A326833.P9773922625177687853

`∩[A344208(n+1), A016777(n)]`
-/

namespace A326833.P9773922625177687853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344208 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A326833.P9773922625177687853

/-! ## A326833.P4324899284287654140

`∩[A326806(n+1), A350667(n)]`
-/

namespace A326833.P4324899284287654140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326806 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350667 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A326833.P4324899284287654140

/-! ## A326833.P15977891285484906937

`∩[A028837(n+1), A326806(n+1)]`
-/

namespace A326833.P15977891285484906937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028837 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326806 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A326833.P15977891285484906937

/-! ## A326833.P8271846569785148230

`∩[A287444(n+1), A344208(n+1)]`
-/

namespace A326833.P8271846569785148230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287444 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344208 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A326833.P8271846569785148230

/-! ## A326833.P17348659851313753029

`∩[A028836(n+1), A326806(n+1)]`
-/

namespace A326833.P17348659851313753029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028836 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326806 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A326833.P17348659851313753029

/-! ## A326833.P5417884424687364067

`∩[A174396(n+1), A344208(n+1)]`
-/

namespace A326833.P5417884424687364067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174396 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344208 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A326833.P5417884424687364067

/-! ## A326833.P3238385780352686026

`∩[A189707(n+1), A344208(n+1)]`
-/

namespace A326833.P3238385780352686026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189707 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344208 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A326833.P3238385780352686026

/-! ## A326833.P4445231731236573800

`eq[1, A003132(A007953(n))]`
-/

namespace A326833.P4445231731236573800
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003132 (A007953 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A326833.P4445231731236573800

/-! ## A326833.P7888398976938491733

`eq[1, A003132(A118881(n))]`
-/

namespace A326833.P7888398976938491733
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003132 (A118881 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A326833.P7888398976938491733

/-! ## A326833.P18094811243374301096

`eq[4, A136614(A136614(n))]`
-/

namespace A326833.P18094811243374301096
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136614 (A136614 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A326833.P18094811243374301096

/-! ## A326833.P589766936062504892

`eq[1, A004159(A007953(n)²)]`
-/

namespace A326833.P589766936062504892
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004159 (A007953 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A326833.P589766936062504892

/-! ## A326833.P13674698939349693152

`eq[1, A004164(A007953(n)²)]`
-/

namespace A326833.P13674698939349693152
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004164 (A007953 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A326833.P13674698939349693152

/-! ## A326833.P12747399770392276427

`eq[1, A004185(A007953(n)²)]`
-/

namespace A326833.P12747399770392276427
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004185 (A007953 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A326833.P12747399770392276427

/-! ## A326833.P17000475016857729809

`eq[1, A004427(A007953(n)²)]`
-/

namespace A326833.P17000475016857729809
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004427 (A007953 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A326833.P17000475016857729809

/-!
# A326835: Numbers whose divisors have distinct values of the Euler totient function (A000010).

The programs for A326835, there is no canonical definition to state claims against.
-/

/-! ## A326835.P3084204909246765916

`record[A348158(2*n+1)]`
-/

namespace A326835.P3084204909246765916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348158 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A326835.P3084204909246765916

/-! ## A326835.P1554173402475652738

`record[C(A348158(n+1), n)]`
-/

namespace A326835.P1554173402475652738
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A348158 (n + 1)).toNat n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A326835.P1554173402475652738

/-! ## A326835.P522077619478196703

`eq[1, A373531(n+1)]+1`
-/

namespace A326835.P522077619478196703
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373531 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A326835.P522077619478196703

/-! ## A326835.P11863743832640388865

`filter[2*n+1, A363320(#)]`
-/

namespace A326835.P11863743832640388865
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A363320 (f1 j) = 1) n)

end

end A326835.P11863743832640388865

/-! ## A326835.P17171453417484273141

`filter[2*n+1, A373531(#)]`
-/

namespace A326835.P17171453417484273141
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373531 (f1 j) = 1) n)

end

end A326835.P17171453417484273141

/-! ## A326835.P1463266034901071196

`record[1-A348215(n+1)+n]`
-/

namespace A326835.P1463266034901071196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A348215 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A326835.P1463266034901071196

/-! ## A326835.P16460235840638118410

`record[A348158(n+1)-A007814(n+1)]`
-/

namespace A326835.P16460235840638118410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348158 (n + 1) - A007814 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A326835.P16460235840638118410

/-! ## A326835.P18432894656274468989

`record[and(A000265(n+1), A348158(n+1))]`
-/

namespace A326835.P18432894656274468989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000265 (n + 1)) (A348158 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A326835.P18432894656274468989

/-! ## A326835.P3108739890513255312

`A348158(eq[1, A348213(n+1)+1]+1)`
-/

namespace A326835.P3108739890513255312
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348213 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348158 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A326835.P3108739890513255312

/-! ## A326835.P11729245237164445860

`A348158(eq[2, A348215(n+1)+2]+1)`
-/

namespace A326835.P11729245237164445860
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348215 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348158 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A326835.P11729245237164445860

/-! ## A326835.P3468652981421549196

`A348158(eq[n+1, A348158(n+1)]+1)`
-/

namespace A326835.P3468652981421549196
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348158 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348158 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A326835.P3468652981421549196

/-!
# A326836: Heinz numbers of integer partitions whose maximum part divides their sum.

The programs for A326836, there is no canonical definition to state claims against.
-/

/-! ## A326836.P18065637227915777491

`eq[1, A326840(n+2)]+2`
-/

namespace A326836.P18065637227915777491
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326840 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A326836.P18065637227915777491

/-! ## A326836.P8270018353553338000

`eq[2, sqrt(a(A326840(n)))]` with `a(0)=0, a(1)=4`
-/

namespace A326836.P8270018353553338000
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℝ := SequenceMachineLib.rec [0, 4] fun n f2 =>
  Real.sqrt (f2 (A326840 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) = f2 j) n

end

end A326836.P8270018353553338000

/-! ## A326836.P11973823792172982950

`eq[2, A000040(a(A326840(n)))]` with `a(0)=0, a(1)=1`
-/

namespace A326836.P11973823792172982950
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f2 =>
  A000040 (f2 (A326840 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A326836.P11973823792172982950

/-! ## A326836.P8873973558979429825

`eq[2, A007318(a(A326840(n)))]` with `a(0)=0, a(1)=4`
-/

namespace A326836.P8873973558979429825
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 4] fun n f2 =>
  A007318 (f2 (A326840 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A326836.P8873973558979429825

/-! ## A326836.P8931366012767288146

`eq[2, A001221(a(A326840(n))!)]` with `a(0)=0, a(1)=3`
-/

namespace A326836.P8931366012767288146
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 3] fun n f2 =>
  A001221 (Nat.factorial (f2 (A326840 n).toNat).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A326836.P8931366012767288146

/-!
# A326837: Heinz numbers of integer partitions whose length and maximum both divide their sum.

The programs for A326837, there is no canonical definition to state claims against.
-/

/-! ## A326837.P16993207207158196899

`∪[A246655(n+1), A326838(n+1)]`
-/

namespace A326837.P16993207207158196899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246655 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326838 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A326837.P16993207207158196899

/-! ## A326837.P4377377186855696365

`A326847(n+1)%p?[3*n²+1]`
-/

namespace A326837.P4377377186855696365
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n ^ 2 + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A326847 (n + 1)) (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ)

end

end A326837.P4377377186855696365

/-! ## A326837.P17016273341923736853

`A326847(n+1)%∑[A324086(n)]`
-/

namespace A326837.P17016273341923736853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324086 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A326847 (n + 1)) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A326837.P17016273341923736853

/-! ## A326837.P12102692895176808371

`A326847(A056239(eq[2, A326842(n)]))`
-/

namespace A326837.P12102692895176808371
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326842 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326847 (A056239 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)).toNat

end

end A326837.P12102692895176808371

/-! ## A326837.P15049507644817764597

`A326847(n+1)+A000007(A050446(n))`
-/

namespace A326837.P15049507644817764597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326847 (n + 1) + A000007 (A050446 n).toNat

end

end A326837.P15049507644817764597

/-! ## A326837.P8174041975122018497

`A326847(n+1)+A000007(A061674(n))`
-/

namespace A326837.P8174041975122018497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326847 (n + 1) + A000007 (A061674 n).toNat

end

end A326837.P8174041975122018497

/-! ## A326837.P16701697364189939227

`A326847(n+1)+A000038(∑[A016777(n)])`
-/

namespace A326837.P16701697364189939227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326847 (n + 1) + A000038 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A326837.P16701697364189939227

/-! ## A326837.P17322696280041292438

`A326847(n+1)+A025443(∑[A163581(n)])`
-/

namespace A326837.P17322696280041292438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326847 (n + 1) + A025443 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A326837.P17322696280041292438

/-! ## A326837.P16008777446387222754

`A326847(n+1)+A000038(∑[A326847(n+1)])`
-/

namespace A326837.P16008777446387222754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326847 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326847 (n + 1) + A000038 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A326837.P16008777446387222754

/-! ## A326837.P6521970657438451937

`A326847(n+1)%A002189(n)`
-/

namespace A326837.P6521970657438451937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A326847 (n + 1)) (A002189 n)

end

end A326837.P6521970657438451937

/-!
# A326838: Heinz numbers of non-constant integer partitions whose length and maximum both divide their sum.

The programs for A326838, there is no canonical definition to state claims against.
-/

/-! ## A326838.P10331108524268939488

`filter[A326837(n+1), A143731(#)]`
-/

namespace A326838.P10331108524268939488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326837 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A143731 (f1 j).toNat = 1) n)

end

end A326838.P10331108524268939488

/-! ## A326838.P12592226492941509751

`∩[A005279(n+1), A326837(n+1)]`
-/

namespace A326838.P12592226492941509751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005279 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326837 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A326838.P12592226492941509751

/-! ## A326838.P16206238244273390950

`∩[A024619(n+1), A326837(n+1)]`
-/

namespace A326838.P16206238244273390950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024619 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326837 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A326838.P16206238244273390950

/-! ## A326838.P6016205860327952475

`∩[A027854(n+1), A326837(n+1)]`
-/

namespace A326838.P6016205860327952475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027854 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326837 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A326838.P6016205860327952475

/-! ## A326838.P18037817159707602951

`∩[A069900(n+1), A326837(n+1)]`
-/

namespace A326838.P18037817159707602951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069900 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326837 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A326838.P18037817159707602951

/-!
# A326839: Numerator of A056239(n)/A061395(n) where A056239 is sum of prime indices and A061395 is maximum prime index.

The programs for A326839, there is no canonical definition to state claims against.
-/

/-! ## A326839.P9847772440956137388

`A056239(n+1)/gcd(A056239(n+1), A061395(2*(n+1)))`
-/

namespace A326839.P9847772440956137388
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056239 (n + 1) : ℚ) / (Int.gcd (A056239 (n + 1)) (A061395 (2 * (n + 1))) : ℚ)

end

end A326839.P9847772440956137388

/-! ## A326839.P15698058652991405259

`A318573(A293448(n+1)^A290104(n+1))`
-/

namespace A326839.P15698058652991405259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318573 (SequenceMachineLib.roundAway ((A293448 (n + 1) : ℚ) ^ (A290104 (n + 1) : ℤ))).toNat

end

end A326839.P15698058652991405259

/-! ## A326839.P712785425947712528

`A318573(A293448(n+1)^A290106(n+1))`
-/

namespace A326839.P712785425947712528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318573 (SequenceMachineLib.roundAway ((A293448 (n + 1) : ℚ) ^ (A290106 (n + 1) : ℤ))).toNat

end

end A326839.P712785425947712528

/-! ## A326839.P3534297452552755813

`gcd(A013937(A001296(n)), A056239(n+1))`
-/

namespace A326839.P3534297452552755813
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A013937 (A001296 n).toNat) (A056239 (n + 1))

end

end A326839.P3534297452552755813

/-! ## A326839.P1056943105503917460

`A351465(n+1)%A336863(A084854(n+1))`
-/

namespace A326839.P1056943105503917460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A351465 (n + 1)) (A336863 (A084854 (n + 1)).toNat)

end

end A326839.P1056943105503917460

/-!
# A326840: Denominator of A056239(n)/A061395(n).

The programs for A326840, there is no canonical definition to state claims against.
-/

/-! ## A326840.P154174726937516398

`A061395(2*(n+1))/gcd(A056239(n+1), A061395(2*(n+1)))`
-/

namespace A326840.P154174726937516398
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061395 (2 * (n + 1)) : ℚ) / (Int.gcd (A056239 (n + 1)) (A061395 (2 * (n + 1))) : ℚ)

end

end A326840.P154174726937516398

/-! ## A326840.P2684626653903230278

`A326568(A122111(n+1)+floor(1/(n+1)))`
-/

namespace A326840.P2684626653903230278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326568 (A122111 (n + 1) + ⌊1 / (n + 1 : ℚ)⌋).toNat

end

end A326840.P2684626653903230278

/-! ## A326840.P6381286350739393330

`gcd(A002324(A290480(n+1)), A061395(n+1))`
-/

namespace A326840.P6381286350739393330
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002324 (A290480 (n + 1)).toNat) (A061395 (n + 1))

end

end A326840.P6381286350739393330

/-! ## A326840.P16336825354542566330

`gcd(A321648(n+1), A355852(A156898(n+1)))`
-/

namespace A326840.P16336825354542566330
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A321648 (n + 1)) (A355852 (A156898 (n + 1)).toNat)

end

end A326840.P16336825354542566330

/-! ## A326840.P11694431625454546450

`A321648(n+1)^A097548(A321648(3*n+2))`
-/

namespace A326840.P11694431625454546450
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A321648 (n + 1) : ℚ) ^ (A097548 (A321648 (3 * n + 2)).toNat : ℤ)

end

end A326840.P11694431625454546450

/-!
# A326841: Heinz numbers of integer partitions of m >= 0 using divisors of m.

The programs for A326841, there is no canonical definition to state claims against.
-/

/-! ## A326841.P16288712879453932062

`∪[A006859(n), A300273(n+1)]`
-/

namespace A326841.P16288712879453932062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006859 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300273 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A326841.P16288712879453932062

/-! ## A326841.P12400959939025385126

`∪[A008385(n), A300273(n+1)]`
-/

namespace A326841.P12400959939025385126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008385 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300273 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A326841.P12400959939025385126

/-! ## A326841.P18042059763745997565

`∪[A010982(n), A300273(n+1)]`
-/

namespace A326841.P18042059763745997565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010982 (n + 29)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300273 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A326841.P18042059763745997565

/-! ## A326841.P10466817593471661385

`∪[A012886(n), A300273(n+1)]`
-/

namespace A326841.P10466817593471661385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012886 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300273 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A326841.P10466817593471661385

/-! ## A326841.P4895116379603149162

`∪[A018012(n), A300273(n+1)]`
-/

namespace A326841.P4895116379603149162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018012 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300273 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A326841.P4895116379603149162

/-! ## A326841.P6426363854373629498

`∪[A022594(n), A300273(n+1)]`
-/

namespace A326841.P6426363854373629498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022594 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300273 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A326841.P6426363854373629498

/-! ## A326841.P9072915386688479369

`∪[A035710(n), A300273(n+1)]`
-/

namespace A326841.P9072915386688479369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035710 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300273 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A326841.P9072915386688479369

/-! ## A326841.P16261997448126595161

`∪[A041123(n), A300273(n+1)]`
-/

namespace A326841.P16261997448126595161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041123 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300273 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A326841.P16261997448126595161

/-! ## A326841.P5597325082963291985

`∪[A042045(n), A300273(n+1)]`
-/

namespace A326841.P5597325082963291985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042045 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300273 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A326841.P5597325082963291985

/-! ## A326841.P11820453205142592347

`∪[A042913(n), A300273(n+1)]`
-/

namespace A326841.P11820453205142592347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042913 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300273 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A326841.P11820453205142592347

/-!
# A326842: Number of integer partitions of n whose parts all divide n and whose length also divides n.

The programs for A326842, there is no canonical definition to state claims against.
-/

/-! ## A326842.P91286337172453971

`A073295(A326843(A028240(n)+n))`
-/

namespace A326842.P91286337172453971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073295 (A326843 (A028240 n + (n : ℤ)).toNat).toNat

end

end A326842.P91286337172453971

/-! ## A326842.P9623159127626743828

`A073295(A326843(A106433(n)+n))`
-/

namespace A326842.P9623159127626743828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073295 (A326843 (A106433 n + (n : ℤ)).toNat).toNat

end

end A326842.P9623159127626743828

/-! ## A326842.P35506395005678337

`A326843(n)-A267463(A117262(n))`
-/

namespace A326842.P35506395005678337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326843 n - A267463 (A117262 n).toNat

end

end A326842.P35506395005678337

/-! ## A326842.P7327491076042799923

`A143873(A032741(n)%A143871(n))`
-/

namespace A326842.P7327491076042799923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143873 (Int.tmod (A032741 n) (A143871 n)).toNat

end

end A326842.P7327491076042799923

/-! ## A326842.P13055300476724940345

`A073295(or(A028240(n), A326843(n)))`
-/

namespace A326842.P13055300476724940345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073295 (Int.lor (A028240 n) (A326843 n)).toNat

end

end A326842.P13055300476724940345

/-!
# A326843: Number of integer partitions of n whose length and maximum both divide n.

The programs for A326843, there is no canonical definition to state claims against.
-/

/-! ## A326843.P16492607929109648143

`A326852(n)+∏{e}[n, #+1]`
-/

namespace A326843.P16492607929109648143
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326852 n + ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ)

end

end A326843.P16492607929109648143

/-! ## A326843.P342522549386787891

`A032741(n)+A326852(n)+1`
-/

namespace A326843.P342522549386787891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n + (A326852 n + 1)

end

end A326843.P342522549386787891

/-! ## A326843.P14158879628842784929

`A326852(n)+A000005(round(sqrt(n²+1)))`
-/

namespace A326843.P14158879628842784929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326852 n + A000005 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

end

end A326843.P14158879628842784929

/-! ## A326843.P2892981125276587368

`A348553(A032741(n))+A326852(n)`
-/

namespace A326843.P2892981125276587368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348553 (A032741 n).toNat + A326852 n

end

end A326843.P2892981125276587368

/-! ## A326843.P8043319724792465648

`A167932(n)+A326852(n)-A111133(n)`
-/

namespace A326843.P8043319724792465648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167932 n + (A326852 n - A111133 n)

end

end A326843.P8043319724792465648

/-!
# A326844: Let y be the integer partition with Heinz number n. Then a(n) is the size of the complement, in the minimal rectangular partition containing the Young diagram of y, of the Young diagram of y.

The programs for A326844, the canonical program `A326844.P18248829007549789788` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A326844 has offset 1).

The definition of A326844 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056239, A061395, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A326844.P18248829007549789788

`A001222(n+1)*A061395(n+1)-A056239(n+1)`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A326844

/-- `A001222(n+1)*A061395(n+1)-A056239(n+1)` -/
def P18248829007549789788.Spec : Prop :=
  ∀ n, P18248829007549789788.a n = A326844 (n + 1)

theorem P18248829007549789788.correct : P18248829007549789788.Spec := by
  intro n
  simp only [A326844, Nat.add_sub_cancel]

end A326844

/-! ## A326844.P937246069932848147

`A325135(n+1)+A278520(n+1)`
-/

namespace A326844.P937246069932848147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325135 (n + 1) + A278520 (n + 1)

end

end A326844.P937246069932848147

namespace A326844

/-- `A325135(n+1)+A278520(n+1)` -/
def P937246069932848147.Spec : Prop :=
  ∀ n, P937246069932848147.a n = A326844 (n + 1)

end A326844

/-! ## A326844.P2754857133839359659

`A326846(n+1)-A056239(n+1)`
-/

namespace A326844.P2754857133839359659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326846 (n + 1) - A056239 (n + 1)

end

end A326844.P2754857133839359659

namespace A326844

/-- `A326846(n+1)-A056239(n+1)` -/
def P2754857133839359659.Spec : Prop :=
  ∀ n, P2754857133839359659.a n = A326844 (n + 1)

end A326844

/-! ## A326844.P8509746476884816287

`A243503(n+1)-A252464(n+1)`
-/

namespace A326844.P8509746476884816287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243503 (n + 1) - A252464 (n + 1)

end

end A326844.P8509746476884816287

namespace A326844

/-- `A243503(n+1)-A252464(n+1)` -/
def P8509746476884816287.Spec : Prop :=
  ∀ n, P8509746476884816287.a n = A326844 (n + 1)

end A326844

/-! ## A326844.P14377813951184867865

`A261079(n+1)-A261079(A052126(n+1))`
-/

namespace A326844.P14377813951184867865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261079 (n + 1) - A261079 (A052126 (n + 1)).toNat

end

end A326844.P14377813951184867865

namespace A326844

/-- `A261079(n+1)-A261079(A052126(n+1))` -/
def P14377813951184867865.Spec : Prop :=
  ∀ n, P14377813951184867865.a n = A326844 (n + 1)

end A326844

/-! ## A326844.P543890075811445815

`A243503(n+1)-(A347381(n+1)+A347380(n+1))`
-/

namespace A326844.P543890075811445815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243503 (n + 1) - (A347381 (n + 1) + A347380 (n + 1))

end

end A326844.P543890075811445815

namespace A326844

/-- `A243503(n+1)-(A347381(n+1)+A347380(n+1))` -/
def P543890075811445815.Spec : Prop :=
  ∀ n, P543890075811445815.a n = A326844 (n + 1)

end A326844

/-! ## A326844.P5909220155165996276

`A304818(A032742(n+1))-A304818(A052126(n+1))`
-/

namespace A326844.P5909220155165996276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304818 (A032742 (n + 1)).toNat - A304818 (A052126 (n + 1)).toNat

end

end A326844.P5909220155165996276

namespace A326844

/-- `A304818(A032742(n+1))-A304818(A052126(n+1))` -/
def P5909220155165996276.Spec : Prop :=
  ∀ n, P5909220155165996276.a n = A326844 (n + 1)

end A326844

/-! ## A326844.P16120905362138631996

`A001222(A052126(n+1))*A061395(n+1)-A334201(n+1)`
-/

namespace A326844.P16120905362138631996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A052126 (n + 1)).toNat * A061395 (n + 1) - A334201 (n + 1)

end

end A326844.P16120905362138631996

namespace A326844

/-- `A001222(A052126(n+1))*A061395(n+1)-A334201(n+1)` -/
def P16120905362138631996.Spec : Prop :=
  ∀ n, P16120905362138631996.a n = A326844 (n + 1)

end A326844

/-! ## A326844.P10667437347313433459

`A326846(n+1)-log2(A248692(n+1))`
-/

namespace A326844.P10667437347313433459
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A326846 (n + 1) : ℝ) - Real.logb 2 (A248692 (n + 1) : ℝ)

end

end A326844.P10667437347313433459

namespace A326844

/-- `A326846(n+1)-log2(A248692(n+1))` -/
def P10667437347313433459.Spec : Prop :=
  ∀ n, P10667437347313433459.a n = (A326844 (n + 1) : ℝ)

end A326844

/-! ## A326844.P12870541983945232358

`A056239(A243057(n+1)/A006530(n+1))`
-/

namespace A326844.P12870541983945232358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (SequenceMachineLib.roundAway ((A243057 (n + 1) : ℚ) / (A006530 (n + 1) : ℚ))).toNat

end

end A326844.P12870541983945232358

namespace A326844

/-- `A056239(A243057(n+1)/A006530(n+1))` -/
def P12870541983945232358.Spec : Prop :=
  ∀ n, P12870541983945232358.a n = A326844 (n + 1)

end A326844

/-! ## A326844.P7095264274930554435

`A318995(A137502(n+1))`
-/

namespace A326844.P7095264274930554435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318995 (A137502 (n + 1)).toNat

end

end A326844.P7095264274930554435

namespace A326844

/-- `A318995(A137502(n+1))` -/
def P7095264274930554435.Spec : Prop :=
  ∀ n, P7095264274930554435.a n = A326844 (n + 1)

end A326844

/-! ## A326844.P11585469500499166574

`A334201(A243057(n+1))`
-/

namespace A326844.P11585469500499166574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334201 (A243057 (n + 1)).toNat

end

end A326844.P11585469500499166574

namespace A326844

/-- `A334201(A243057(n+1))` -/
def P11585469500499166574.Spec : Prop :=
  ∀ n, P11585469500499166574.a n = A326844 (n + 1)

end A326844

/-! ## A326844.P16462017976617471498

`A359358(A293448(n+1))`
-/

namespace A326844.P16462017976617471498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359358 (A293448 (n + 1)).toNat

end

end A326844.P16462017976617471498

namespace A326844

/-- `A359358(A293448(n+1))` -/
def P16462017976617471498.Spec : Prop :=
  ∀ n, P16462017976617471498.a n = A326844 (n + 1)

end A326844

/-! ## A326844.P17094315343901429876

`A325135(A241916(n+1))`
-/

namespace A326844.P17094315343901429876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325135 (A241916 (n + 1)).toNat

end

end A326844.P17094315343901429876

namespace A326844

/-- `A325135(A241916(n+1))` -/
def P17094315343901429876.Spec : Prop :=
  ∀ n, P17094315343901429876.a n = A326844 (n + 1)

end A326844

/-! ## A326844.P3922890310059526607

`A056239(A243057(n+1))-A061395(n+1)`
-/

namespace A326844.P3922890310059526607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A243057 (n + 1)).toNat - A061395 (n + 1)

end

end A326844.P3922890310059526607

namespace A326844

/-- `A056239(A243057(n+1))-A061395(n+1)` -/
def P3922890310059526607.Spec : Prop :=
  ∀ n, P3922890310059526607.a n = A326844 (n + 1)

end A326844

/-! ## A326844.P16578620661900499566

`A056239(A243057(n+1))-val(A181821(n+1), 2)`
-/

namespace A326844.P16578620661900499566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A243057 (n + 1)).toNat - (SequenceMachineLib.valuation (A181821 (n + 1)).toNat 2 : ℤ)

end

end A326844.P16578620661900499566

namespace A326844

/-- `A056239(A243057(n+1))-val(A181821(n+1), 2)` -/
def P16578620661900499566.Spec : Prop :=
  ∀ n, P16578620661900499566.a n = A326844 (n + 1)

end A326844

/-!
# A326845: Sum times maximum of the integer partition with Heinz number n.

The programs for A326845, the canonical program `A326845.P12658535086217248939` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A326845 has offset 1).

The definition of A326845 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056239, A061395, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A326845.P12658535086217248939

`A056239(n+1)*A061395(n+1)`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A326845

/-- `A056239(n+1)*A061395(n+1)` -/
def P12658535086217248939.Spec : Prop :=
  ∀ n, P12658535086217248939.a n = A326845 (n + 1)

theorem P12658535086217248939.correct : P12658535086217248939.Spec := by
  intro n
  simp only [A326845, Nat.add_sub_cancel]

end A326845

/-! ## A326845.P9026669585085061411

`(A252735(n+1)+1)*A056239(n+1)`
-/

namespace A326845.P9026669585085061411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A252735 (n + 1) + 1) * A056239 (n + 1)

end

end A326845.P9026669585085061411

namespace A326845

/-- `(A252735(n+1)+1)*A056239(n+1)` -/
def P9026669585085061411.Spec : Prop :=
  ∀ n, P9026669585085061411.a n = A326845 (n + 1)

end A326845

/-! ## A326845.P6579188581465297641

`∑{d}[n+1, A297109(#)]*A061395(n+1)`
-/

namespace A326845.P6579188581465297641
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ d ∈ Nat.divisors (f1 n), A297109 d) * A061395 (n + 1)

end

end A326845.P6579188581465297641

namespace A326845

/-- `∑{d}[n+1, A297109(#)]*A061395(n+1)` -/
def P6579188581465297641.Spec : Prop :=
  ∀ n, P6579188581465297641.a n = A326845 (n + 1)

end A326845

/-! ## A326845.P2553921072633948773

`A056239(n+1)*A263297(∏{p}[n+1, #])`
-/

namespace A326845.P2553921072633948773
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (n + 1) * A263297 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A326845.P2553921072633948773

namespace A326845

/-- `A056239(n+1)*A263297(∏{p}[n+1, #])` -/
def P2553921072633948773.Spec : Prop :=
  ∀ n, P2553921072633948773.a n = A326845 (n + 1)

end A326845

/-! ## A326845.P14215277393255978887

`(1-A178503(n+1)+n)*A061395(n+1)`
-/

namespace A326845.P14215277393255978887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A178503 (n + 1) + (n : ℤ)) * A061395 (n + 1)

end

end A326845.P14215277393255978887

namespace A326845

/-- `(1-A178503(n+1)+n)*A061395(n+1)` -/
def P14215277393255978887.Spec : Prop :=
  ∀ n, P14215277393255978887.a n = A326845 (n + 1)

theorem P14215277393255978887.correct : P14215277393255978887.Spec := by
  intro n
  simp only [A326845, Nat.add_sub_cancel, A326845.P14215277393255978887.a, A326845.P12658535086217248939.a, A056239, A056239.P11316688788989965672.a, A061395, A061395.P8431317036300486107.a, A178503, A178503.P4821530667985743072.a, A029837, A029837.P1050578713049589.a, A087207, A087207.P12536008426233777954.a, A156552, A156552.P4268073137713085227.a, A161511, A161511.P16266007976091900386.a, A005941, A005941.P9595689460679922607.f1, A005941.P9595689460679922607.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A048675, A048675.P15792214674053257917.f1, A048675.P15792214674053257917.a, A048896, A048896.P6461019053085857547.a, A048881, A048881.P16567064232951496228.a, A297108, A297108.P15990807296291497671.a, A364557, A364557.P16113127302810243144.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A326845

/-! ## A326845.P10782897911862938940

`A000720(A006530(n+1))*A056239(n+1)`
-/

namespace A326845.P10782897911862938940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A006530 (n + 1)).toNat * A056239 (n + 1)

end

end A326845.P10782897911862938940

namespace A326845

/-- `A000720(A006530(n+1))*A056239(n+1)` -/
def P10782897911862938940.Spec : Prop :=
  ∀ n, P10782897911862938940.a n = A326845 (n + 1)

end A326845

/-! ## A326845.P12513036421572854760

`A056239(n+1)*A263297(A007947(n+1))`
-/

namespace A326845.P12513036421572854760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (n + 1) * A263297 (A007947 (n + 1)).toNat

end

end A326845.P12513036421572854760

namespace A326845

/-- `A056239(n+1)*A263297(A007947(n+1))` -/
def P12513036421572854760.Spec : Prop :=
  ∀ n, P12513036421572854760.a n = A326845 (n + 1)

end A326845

/-! ## A326845.P8080009117233301528

`(A243055(n+1)+A055396(n+1))*A056239(n+1)`
-/

namespace A326845.P8080009117233301528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A243055 (n + 1) + A055396 (n + 1)) * A056239 (n + 1)

end

end A326845.P8080009117233301528

namespace A326845

/-- `(A243055(n+1)+A055396(n+1))*A056239(n+1)` -/
def P8080009117233301528.Spec : Prop :=
  ∀ n, P8080009117233301528.a n = A326845 (n + 1)

end A326845

/-! ## A326845.P9785600565574517699

`(A339823(n+1)+A000523(n+1))*A061395(n+1)`
-/

namespace A326845.P9785600565574517699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A339823 (n + 1) + A000523 (n + 1)) * A061395 (n + 1)

end

end A326845.P9785600565574517699

namespace A326845

/-- `(A339823(n+1)+A000523(n+1))*A061395(n+1)` -/
def P9785600565574517699.Spec : Prop :=
  ∀ n, P9785600565574517699.a n = A326845 (n + 1)

theorem P9785600565574517699.correct : P9785600565574517699.Spec := by
  intro n
  simp only [A326845, Nat.add_sub_cancel, A326845.P9785600565574517699.a, A326845.P12658535086217248939.a, A000523, A000523.P3314682526375882520.a, A056239, A056239.P11316688788989965672.a, A061395, A061395.P8431317036300486107.a, A339823, A339823.P7188446837761765173.a, A029837, A029837.P1050578713049589.a, A087207, A087207.P12536008426233777954.a, A156552, A156552.P4268073137713085227.a, A161511, A161511.P16266007976091900386.a, A005941, A005941.P9595689460679922607.f1, A005941.P9595689460679922607.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A048675, A048675.P15792214674053257917.f1, A048675.P15792214674053257917.a, A048896, A048896.P6461019053085857547.a, A048881, A048881.P16567064232951496228.a, A297108, A297108.P15990807296291497671.a, A364557, A364557.P16113127302810243144.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A326845

/-! ## A326845.P8441174614432975888

`(A334201(n+1)+A061395(n+1))*A061395(n+1)`
-/

namespace A326845.P8441174614432975888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A334201 (n + 1) + A061395 (n + 1)) * A061395 (n + 1)

end

end A326845.P8441174614432975888

namespace A326845

/-- `(A334201(n+1)+A061395(n+1))*A061395(n+1)` -/
def P8441174614432975888.Spec : Prop :=
  ∀ n, P8441174614432975888.a n = A326845 (n + 1)

theorem P8441174614432975888.correct : P8441174614432975888.Spec := by
  intro n
  simp only [A326845, Nat.add_sub_cancel, A326845.P8441174614432975888.a, A326845.P12658535086217248939.a, A056239, A056239.P11316688788989965672.a, A061395, A061395.P8431317036300486107.a, A334201, A334201.P4094470148935734367.a, A029837, A029837.P1050578713049589.a, A087207, A087207.P12536008426233777954.a, A156552, A156552.P4268073137713085227.a, A161511, A161511.P16266007976091900386.a, A005941, A005941.P9595689460679922607.f1, A005941.P9595689460679922607.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A048675, A048675.P15792214674053257917.f1, A048675.P15792214674053257917.a, A048896, A048896.P6461019053085857547.a, A048881, A048881.P16567064232951496228.a, A297108, A297108.P15990807296291497671.a, A364557, A364557.P16113127302810243144.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A326845

/-! ## A326845.P14737220895917703577

`(A325166(n+1)+A297113(n+1))*A061395(n+1)`
-/

namespace A326845.P14737220895917703577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A325166 (n + 1) + A297113 (n + 1)) * A061395 (n + 1)

end

end A326845.P14737220895917703577

namespace A326845

/-- `(A325166(n+1)+A297113(n+1))*A061395(n+1)` -/
def P14737220895917703577.Spec : Prop :=
  ∀ n, P14737220895917703577.a n = A326845 (n + 1)

theorem P14737220895917703577.correct : P14737220895917703577.Spec := by
  intro n
  simp only [A326845, Nat.add_sub_cancel, A326845.P14737220895917703577.a, A326845.P12658535086217248939.a, A056239, A056239.P11316688788989965672.a, A061395, A061395.P8431317036300486107.a, A297113, A297113.P441289280190658386.a, A325166, A325166.P2969046862009635167.a, A029837, A029837.P1050578713049589.a, A046660, A046660.P3614759855976580945.a, A087207, A087207.P12536008426233777954.a, A156552, A156552.P4268073137713085227.a, A161511, A161511.P16266007976091900386.a, A001221, A001221.P14816172234621668833.f1, A001221.P14816172234621668833.a, A001222, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, A005941, A005941.P9595689460679922607.f1, A005941.P9595689460679922607.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A048675, A048675.P15792214674053257917.f1, A048675.P15792214674053257917.a, A048896, A048896.P6461019053085857547.a, A048881, A048881.P16567064232951496228.a, A297108, A297108.P15990807296291497671.a, A364557, A364557.P16113127302810243144.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A326845

/-! ## A326845.P11787911432881275108

`(A359360(n+1)+A359358(n+1))*A061395(n+1)`
-/

namespace A326845.P11787911432881275108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A359360 (n + 1) + A359358 (n + 1)) * A061395 (n + 1)

end

end A326845.P11787911432881275108

namespace A326845

/-- `(A359360(n+1)+A359358(n+1))*A061395(n+1)` -/
def P11787911432881275108.Spec : Prop :=
  ∀ n, P11787911432881275108.a n = A326845 (n + 1)

theorem P11787911432881275108.correct : P11787911432881275108.Spec := by
  intro n
  simp only [A326845, Nat.add_sub_cancel, A326845.P11787911432881275108.a, A326845.P12658535086217248939.a, A056239, A056239.P11316688788989965672.a, A061395, A061395.P8431317036300486107.a, A359358, A359358.P4456676198763462925.a, A359360, A359360.P2190220830273332506.a, A029837, A029837.P1050578713049589.a, A087207, A087207.P12536008426233777954.a, A156552, A156552.P4268073137713085227.a, A161511, A161511.P16266007976091900386.a, A318995, A318995.P10479870511311284550.f1, A318995.P10479870511311284550.a, A348717, A348717.P703712104273003584.a, A005941, A005941.P9595689460679922607.f1, A005941.P9595689460679922607.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A048675, A048675.P15792214674053257917.f1, A048675.P15792214674053257917.a, A048896, A048896.P6461019053085857547.a, A122111, A122111.P18124015185857335041.a, A243074, A243074.P6910029884229255604.a, A006530, A006530.P13372528560459906635.a, A048881, A048881.P16567064232951496228.a, A051119, A051119.P33126866714900772.a, A064989, A064989.P13349672914146769936.a, A105560, A105560.P10934841406439867276.a, A297108, A297108.P15990807296291497671.a, A364557, A364557.P16113127302810243144.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A326845

/-! ## A326845.P6735534990976507445

`(A056239(n+1)-A334201(n+1))*A056239(n+1)`
-/

namespace A326845.P6735534990976507445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A056239 (n + 1) - A334201 (n + 1)) * A056239 (n + 1)

end

end A326845.P6735534990976507445

namespace A326845

/-- `(A056239(n+1)-A334201(n+1))*A056239(n+1)` -/
def P6735534990976507445.Spec : Prop :=
  ∀ n, P6735534990976507445.a n = A326845 (n + 1)

theorem P6735534990976507445.correct : P6735534990976507445.Spec := by
  intro n
  simp only [A326845, Nat.add_sub_cancel, A326845.P6735534990976507445.a, A326845.P12658535086217248939.a, A056239, A056239.P11316688788989965672.a, A061395, A061395.P8431317036300486107.a, A334201, A334201.P4094470148935734367.a, A029837, A029837.P1050578713049589.a, A087207, A087207.P12536008426233777954.a, A156552, A156552.P4268073137713085227.a, A161511, A161511.P16266007976091900386.a, A005941, A005941.P9595689460679922607.f1, A005941.P9595689460679922607.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A048675, A048675.P15792214674053257917.f1, A048675.P15792214674053257917.a, A048896, A048896.P6461019053085857547.a, A048881, A048881.P16567064232951496228.a, A297108, A297108.P15990807296291497671.a, A364557, A364557.P16113127302810243144.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A326845

/-! ## A326845.P160731530529811214

`(A339894(n+1)-A339895(n+1))*A056239(n+1)`
-/

namespace A326845.P160731530529811214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A339894 (n + 1) - A339895 (n + 1)) * A056239 (n + 1)

end

end A326845.P160731530529811214

namespace A326845

/-- `(A339894(n+1)-A339895(n+1))*A056239(n+1)` -/
def P160731530529811214.Spec : Prop :=
  ∀ n, P160731530529811214.a n = A326845 (n + 1)

theorem P160731530529811214.correct : P160731530529811214.Spec := by
  intro n
  simp only [A326845, Nat.add_sub_cancel, A326845.P160731530529811214.a, A326845.P12658535086217248939.a, A056239, A056239.P11316688788989965672.a, A061395, A061395.P8431317036300486107.a, A339894, A339894.P9202660857362270704.a, A339895, A339895.P17584519496757245287.a, A000523, A000523.P3314682526375882520.a, A029837, A029837.P1050578713049589.a, A087207, A087207.P12536008426233777954.a, A122111, A122111.P18124015185857335041.a, A156552, A156552.P4268073137713085227.a, A161511, A161511.P16266007976091900386.a, A005941, A005941.P9595689460679922607.f1, A005941.P9595689460679922607.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A048675, A048675.P15792214674053257917.f1, A048675.P15792214674053257917.a, A048896, A048896.P6461019053085857547.a, A064989, A064989.P13349672914146769936.a, A105560, A105560.P10934841406439867276.a, A001222, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, A008578, A008578.P3639467937083264764.a, A048881, A048881.P16567064232951496228.a, A052126, A052126.P1944428405920482243.a, A297108, A297108.P15990807296291497671.a, A364557, A364557.P16113127302810243144.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A326845

/-! ## A326845.P3168543361307531189

`A056239(A000027(n+1))*A056239(A006530(n+1))`
-/

namespace A326845.P3168543361307531189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A000027 (n + 1)).toNat * A056239 (A006530 (n + 1)).toNat

end

end A326845.P3168543361307531189

namespace A326845

/-- `A056239(A000027(n+1))*A056239(A006530(n+1))` -/
def P3168543361307531189.Spec : Prop :=
  ∀ n, P3168543361307531189.a n = A326845 (n + 1)

end A326845

/-! ## A326845.P11729494351671310420

`log2(A248692(n+1))*A061395(n+1)`
-/

namespace A326845.P11729494351671310420
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A248692 (n + 1) : ℝ) * (A061395 (n + 1) : ℝ)

end

end A326845.P11729494351671310420

namespace A326845

/-- `log2(A248692(n+1))*A061395(n+1)` -/
def P11729494351671310420.Spec : Prop :=
  ∀ n, P11729494351671310420.a n = (A326845 (n + 1) : ℝ)

end A326845

/-! ## A326845.P6897155494261025674

`val(A181821(n+1), 2)*A056239(n+1)`
-/

namespace A326845.P6897155494261025674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (A181821 (n + 1)).toNat 2 : ℤ) * A056239 (n + 1)

end

end A326845.P6897155494261025674

namespace A326845

/-- `val(A181821(n+1), 2)*A056239(n+1)` -/
def P6897155494261025674.Spec : Prop :=
  ∀ n, P6897155494261025674.a n = A326845 (n + 1)

end A326845

/-! ## A326845.P2947222406902853429

`A061395(n+1)*A346699(A342768(n+1))`
-/

namespace A326845.P2947222406902853429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (n + 1) * A346699 (A342768 (n + 1)).toNat

end

end A326845.P2947222406902853429

namespace A326845

/-- `A061395(n+1)*A346699(A342768(n+1))` -/
def P2947222406902853429.Spec : Prop :=
  ∀ n, P2947222406902853429.a n = A326845 (n + 1)

end A326845

/-! ## A326845.P5022164902239888914

`A061395(n+1)*A346700((n+1)²)`
-/

namespace A326845.P5022164902239888914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (n + 1) * A346700 ((n + 1) ^ 2)

end

end A326845.P5022164902239888914

namespace A326845

/-- `A061395(n+1)*A346700((n+1)²)` -/
def P5022164902239888914.Spec : Prop :=
  ∀ n, P5022164902239888914.a n = A326845 (n + 1)

end A326845

/-! ## A326845.P18159090909716566369

`A061395(n+1)*A346699((n+1)²)`
-/

namespace A326845.P18159090909716566369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (n + 1) * A346699 ((n + 1) ^ 2)

end

end A326845.P18159090909716566369

namespace A326845

/-- `A061395(n+1)*A346699((n+1)²)` -/
def P18159090909716566369.Spec : Prop :=
  ∀ n, P18159090909716566369.a n = A326845 (n + 1)

end A326845

/-!
# A326846: Length times maximum of the integer partition with Heinz number n.

The programs for A326846, the canonical program `A326846.P13366840871095764170` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A326846 has offset 1).

The definition of A326846 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A061395, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A326846.P13366840871095764170

`A001222(n+1)*A061395(n+1)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A326846

/-- `A001222(n+1)*A061395(n+1)` -/
def P13366840871095764170.Spec : Prop :=
  ∀ n, P13366840871095764170.a n = A326846 (n + 1)

theorem P13366840871095764170.correct : P13366840871095764170.Spec := by
  intro n
  simp only [A326846, Nat.add_sub_cancel]

end A326846

/-! ## A326846.P9993160056165221931

`∑{e}[n+1, A061395(n+1)*#]`
-/

namespace A326846.P9993160056165221931
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A061395 (n + 1) * (Nat.factorization (f1 n) p : ℤ)

end

end A326846.P9993160056165221931

namespace A326846

/-- `∑{e}[n+1, A061395(n+1)*#]` -/
def P9993160056165221931.Spec : Prop :=
  ∀ n, P9993160056165221931.a n = A326846 (n + 1)

end A326846

/-! ## A326846.P14008868925467661685

`∑{e}[n+1, #]*A065770(∏{p}[n+1, #])`
-/

namespace A326846.P14008868925467661685
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℤ) * A065770 (∏ p ∈ Nat.primeFactors (f2 n), p)

end

end A326846.P14008868925467661685

namespace A326846

/-- `∑{e}[n+1, #]*A065770(∏{p}[n+1, #])` -/
def P14008868925467661685.Spec : Prop :=
  ∀ n, P14008868925467661685.a n = A326846 (n + 1)

end A326846

/-! ## A326846.P5354389324586228735

`∑{e}[n+1, #]*A139169(∏{p}[n+1, #])`
-/

namespace A326846.P5354389324586228735
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℤ) * A139169 (∏ p ∈ Nat.primeFactors (f2 n), p)

end

end A326846.P5354389324586228735

namespace A326846

/-- `∑{e}[n+1, #]*A139169(∏{p}[n+1, #])` -/
def P5354389324586228735.Spec : Prop :=
  ∀ n, P5354389324586228735.a n = A326846 (n + 1)

end A326846

/-! ## A326846.P14779586500238408302

`∑{e}[n+1, #]*A297113(∏{p}[n+1, #])`
-/

namespace A326846.P14779586500238408302
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℤ) * A297113 (∏ p ∈ Nat.primeFactors (f2 n), p)

end

end A326846.P14779586500238408302

namespace A326846

/-- `∑{e}[n+1, #]*A297113(∏{p}[n+1, #])` -/
def P14779586500238408302.Spec : Prop :=
  ∀ n, P14779586500238408302.a n = A326846 (n + 1)

end A326846

/-! ## A326846.P16147837094827889557

`log(∏{e}[n+1, exp(#)])*A061395(2*(n+1))`
-/

namespace A326846.P16147837094827889557
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.log (∏ p ∈ Nat.primeFactors (f1 n), Real.exp (Nat.factorization (f1 n) p : ℝ)) * (A061395 (2 * (n + 1)) : ℝ)

end

end A326846.P16147837094827889557

namespace A326846

/-- `log(∏{e}[n+1, exp(#)])*A061395(2*(n+1))` -/
def P16147837094827889557.Spec : Prop :=
  ∀ n, P16147837094827889557.a n = (A326846 (n + 1) : ℝ)

end A326846

/-! ## A326846.P5951354399165528704

`Δ[A022559(n)]*A061395(n+1)`
-/

namespace A326846.P5951354399165528704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022559 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A061395 (n + 1)

end

end A326846.P5951354399165528704

namespace A326846

/-- `Δ[A022559(n)]*A061395(n+1)` -/
def P5951354399165528704.Spec : Prop :=
  ∀ n, P5951354399165528704.a n = A326846 (n + 1)

end A326846

/-! ## A326846.P15291997227118523887

`A326844(n+1)+A056239(n+1)`
-/

namespace A326846.P15291997227118523887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326844 (n + 1) + A056239 (n + 1)

end

end A326846.P15291997227118523887

namespace A326846

/-- `A326844(n+1)+A056239(n+1)` -/
def P15291997227118523887.Spec : Prop :=
  ∀ n, P15291997227118523887.a n = A326846 (n + 1)

theorem P15291997227118523887.correct : P15291997227118523887.Spec := by
  intro n
  simp only [A326846, Nat.add_sub_cancel, A326846.P15291997227118523887.a, A326846.P13366840871095764170.a, A001222, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, A056239, A056239.P11316688788989965672.a, A061395, A061395.P8431317036300486107.a, A326844, A326844.P18248829007549789788.a, A029837, A029837.P1050578713049589.a, A087207, A087207.P12536008426233777954.a, A156552, A156552.P4268073137713085227.a, A161511, A161511.P16266007976091900386.a, A005941, A005941.P9595689460679922607.f1, A005941.P9595689460679922607.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A048675, A048675.P15792214674053257917.f1, A048675.P15792214674053257917.a, A048896, A048896.P6461019053085857547.a, A048881, A048881.P16567064232951496228.a, A297108, A297108.P15990807296291497671.a, A364557, A364557.P16113127302810243144.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A326846

/-! ## A326846.P13969875128830285084

`A325135(n+1)+A243503(n+1)`
-/

namespace A326846.P13969875128830285084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325135 (n + 1) + A243503 (n + 1)

end

end A326846.P13969875128830285084

namespace A326846

/-- `A325135(n+1)+A243503(n+1)` -/
def P13969875128830285084.Spec : Prop :=
  ∀ n, P13969875128830285084.a n = A326846 (n + 1)

end A326846

/-! ## A326846.P1074199631964485130

`A061395(n+1)*A086436(n+1)`
-/

namespace A326846.P1074199631964485130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (n + 1) * A086436 (n + 1)

end

end A326846.P1074199631964485130

namespace A326846

/-- `A061395(n+1)*A086436(n+1)` -/
def P1074199631964485130.Spec : Prop :=
  ∀ n, P1074199631964485130.a n = A326846 (n + 1)

end A326846

/-! ## A326846.P10162902348147499724

`A263297(n+1)*A325225(n+1)`
-/

namespace A326846.P10162902348147499724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263297 (n + 1) * A325225 (n + 1)

end

end A326846.P10162902348147499724

namespace A326846

/-- `A263297(n+1)*A325225(n+1)` -/
def P10162902348147499724.Spec : Prop :=
  ∀ n, P10162902348147499724.a n = A326846 (n + 1)

end A326846

/-! ## A326846.P8146517135551691927

`(A252735(n+1)+1)*A001222(n+1)`
-/

namespace A326846.P8146517135551691927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A252735 (n + 1) + 1) * A001222 (n + 1)

end

end A326846.P8146517135551691927

namespace A326846

/-- `(A252735(n+1)+1)*A001222(n+1)` -/
def P8146517135551691927.Spec : Prop :=
  ∀ n, P8146517135551691927.a n = A326846 (n + 1)

end A326846

/-! ## A326846.P2222647862188804926

`(A252736(n+1)+1)*A061395(n+1)`
-/

namespace A326846.P2222647862188804926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A252736 (n + 1) + 1) * A061395 (n + 1)

end

end A326846.P2222647862188804926

namespace A326846

/-- `(A252736(n+1)+1)*A061395(n+1)` -/
def P2222647862188804926.Spec : Prop :=
  ∀ n, P2222647862188804926.a n = A326846 (n + 1)

end A326846

/-! ## A326846.P13861516506187311784

`(n-A243291(n+1)+1)*A001222(n+1)`
-/

namespace A326846.P13861516506187311784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - A243291 (n + 1) + 1) * A001222 (n + 1)

end

end A326846.P13861516506187311784

namespace A326846

/-- `(n-A243291(n+1)+1)*A001222(n+1)` -/
def P13861516506187311784.Spec : Prop :=
  ∀ n, P13861516506187311784.a n = A326846 (n + 1)

theorem P13861516506187311784.correct : P13861516506187311784.Spec := by
  intro n
  simp only [A326846, Nat.add_sub_cancel, A326846.P13861516506187311784.a, A326846.P13366840871095764170.a, A001222, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, A061395, A061395.P8431317036300486107.a, A243291, A243291.P16902629913632114201.a, A029837, A029837.P1050578713049589.a, A087207, A087207.P12536008426233777954.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A048675, A048675.P15792214674053257917.f1, A048675.P15792214674053257917.a, A297108, A297108.P15990807296291497671.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A326846

/-! ## A326846.P14992044803462259474

`A304818(n+1)-A304818(A052126(n+1))`
-/

namespace A326846.P14992044803462259474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304818 (n + 1) - A304818 (A052126 (n + 1)).toNat

end

end A326846.P14992044803462259474

namespace A326846

/-- `A304818(n+1)-A304818(A052126(n+1))` -/
def P14992044803462259474.Spec : Prop :=
  ∀ n, P14992044803462259474.a n = A326846 (n + 1)

end A326846

/-! ## A326846.P150259643425247582

`A001222(n+1)*A000720(A006530(n+1))`
-/

namespace A326846.P150259643425247582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) * A000720 (A006530 (n + 1)).toNat

end

end A326846.P150259643425247582

namespace A326846

/-- `A001222(n+1)*A000720(A006530(n+1))` -/
def P150259643425247582.Spec : Prop :=
  ∀ n, P150259643425247582.a n = A326846 (n + 1)

end A326846

/-! ## A326846.P14456150203159245254

`A056239(A105560(n+1))*A061395(n+1)`
-/

namespace A326846.P14456150203159245254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A105560 (n + 1)).toNat * A061395 (n + 1)

end

end A326846.P14456150203159245254

namespace A326846

/-- `A056239(A105560(n+1))*A061395(n+1)` -/
def P14456150203159245254.Spec : Prop :=
  ∀ n, P14456150203159245254.a n = A326846 (n + 1)

end A326846

/-! ## A326846.P5385306849262856820

`A056239(A181819(n+1))*A061395(n+1)`
-/

namespace A326846.P5385306849262856820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A181819 (n + 1)).toNat * A061395 (n + 1)

end

end A326846.P5385306849262856820

namespace A326846

/-- `A056239(A181819(n+1))*A061395(n+1)` -/
def P5385306849262856820.Spec : Prop :=
  ∀ n, P5385306849262856820.a n = A326846 (n + 1)

end A326846

/-! ## A326846.P2758891856233960668

`A061395(n+1)*A263297(A046523(n+1))`
-/

namespace A326846.P2758891856233960668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (n + 1) * A263297 (A046523 (n + 1)).toNat

end

end A326846.P2758891856233960668

namespace A326846

/-- `A061395(n+1)*A263297(A046523(n+1))` -/
def P2758891856233960668.Spec : Prop :=
  ∀ n, P2758891856233960668.a n = A326846 (n + 1)

end A326846

/-! ## A326846.P7395391467739022832

`A061395(n+1)*A252464(A061142(n+1))`
-/

namespace A326846.P7395391467739022832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (n + 1) * A252464 (A061142 (n + 1)).toNat

end

end A326846.P7395391467739022832

namespace A326846

/-- `A061395(n+1)*A252464(A061142(n+1))` -/
def P7395391467739022832.Spec : Prop :=
  ∀ n, P7395391467739022832.a n = A326846 (n + 1)

end A326846

/-!
# A326847: Heinz numbers of integer partitions of m >= 0 using divisors of m whose length also divides m.

The programs for A326847, there is no canonical definition to state claims against.
-/

/-! ## A326847.P14280392695277467965

`∩[A316413(n+1), A326841(n+1)]`
-/

namespace A326847.P14280392695277467965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316413 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326841 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A326847.P14280392695277467965

/-! ## A326847.P9686756918805674903

`∩[A326837(n+1), A326841(n+1)]`
-/

namespace A326847.P9686756918805674903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326837 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326841 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A326847.P9686756918805674903

/-!
# A326848: Heinz numbers of integer partitions of m >= 0 whose length times maximum is a multiple of m.

The programs for A326848, there is no canonical definition to state claims against.
-/

/-! ## A326848.P6610134494737578504

`∪[A000961(n+1), A361855(n+1)]`
-/

namespace A326848.P6610134494737578504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361855 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A326848.P6610134494737578504

/-! ## A326848.P18406891862372281541

`∪[A036116(n+1), A361855(n+1)]`
-/

namespace A326848.P18406891862372281541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036116 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361855 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A326848.P18406891862372281541

/-! ## A326848.P7864458741731298961

`eq[A007400(A327778(n)), A033630(n)]`
-/

namespace A326848.P7864458741731298961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007400 (A327778 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033630 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A326848.P7864458741731298961

/-! ## A326848.P2681214123495182506

`eq[3, A238695(A327778(n))]`
-/

namespace A326848.P2681214123495182506
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238695 ((A327778 n).toNat + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A326848.P2681214123495182506

/-! ## A326848.P8265987944371062257

`eq[A257000(A284463(n)), A293814(n)]`
-/

namespace A326848.P8265987944371062257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257000 (A284463 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293814 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A326848.P8265987944371062257

/-!
# A326850: Number of strict integer partitions of n whose maximum part divides n.

The programs for A326850, there is no canonical definition to state claims against.
-/

/-! ## A326850.P13866724186932571435

`A000196(Δ[A003056(A045665(n))])`
-/

namespace A326850.P13866724186932571435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A045665 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (f1 (n + 1) - f1 n).toNat

end

end A326850.P13866724186932571435

/-! ## A326850.P6687267467630496004

`A000009(A078898(n))%A078846(n)`
-/

namespace A326850.P6687267467630496004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000009 (A078898 n).toNat) (A078846 n)

end

end A326850.P6687267467630496004

/-! ## A326850.P2427442923840471427

`A347586(A078898(n))%A020753(n+1)`
-/

namespace A326850.P2427442923840471427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A347586 (A078898 n).toNat) (A020753 (n + 1))

end

end A326850.P2427442923840471427

/-! ## A326850.P5452632259859859607

`gcd(2-A070939(A018293(n+2)), n%2)`
-/

namespace A326850.P5452632259859859607
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (2 - A070939 (A018293 (n + 2)).toNat) ((n % 2 : ℕ) : ℤ)

end

end A326850.P5452632259859859607

/-! ## A326850.P8192301711911724161

`A000009(and(-(-1)^n, ceil(n/2)))%A335313(n)`
-/

namespace A326850.P8192301711911724161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000009 (Int.land (-((-1) ^ n)) ⌈(n : ℚ) / 2⌉).toNat) (A335313 n)

end

end A326850.P8192301711911724161

/-!
# A326851: Number of strict integer partitions of n whose length and maximum both divide n.

The programs for A326851, there is no canonical definition to state claims against.
-/

/-! ## A326851.P2917298820988542104

`A385507(A346591(n+2))`
-/

namespace A326851.P2917298820988542104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385507 (A346591 (n + 2)).toNat

end

end A326851.P2917298820988542104

/-! ## A326851.P18335212773496722631

`gcd(A000027(A306017(n)), A326850(n))`
-/

namespace A326851.P18335212773496722631
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000027 (A306017 n).toNat) (A326850 n)

end

end A326851.P18335212773496722631

/-! ## A326851.P10505478339974011855

`gcd(A002623(n), A133223(A080508(n+1)))`
-/

namespace A326851.P10505478339974011855
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002623 n) (A133223 (A080508 (n + 1)).toNat)

end

end A326851.P10505478339974011855

/-! ## A326851.P8691375540254760127

`gcd(A128227(A244940(2*(n+1))), A128227(n+1))`
-/

namespace A326851.P8691375540254760127
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A128227 (A244940 (2 * (n + 1))).toNat) (A128227 (n + 1))

end

end A326851.P8691375540254760127

/-!
# A326852: Number of non-constant integer partitions of n whose length and maximum both divide n.

The programs for A326852, there is no canonical definition to state claims against.
-/

/-! ## A326852.P1537092927391636156

`A326843(n)-∏{e}[n, #+1]`
-/

namespace A326852.P1537092927391636156
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326843 n - ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ)

end

end A326852.P1537092927391636156

/-! ## A326852.P17693474233766767064

`A326843(n)-(A032741(n)+1)`
-/

namespace A326852.P17693474233766767064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326843 n - (A032741 n + 1)

end

end A326852.P17693474233766767064

/-! ## A326852.P14125323869945543491

`A326843(n)-A000005(A028310(n))`
-/

namespace A326852.P14125323869945543491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326843 n - A000005 (A028310 n).toNat

end

end A326852.P14125323869945543491

/-! ## A326852.P5855401590355321408

`A023443(A326843(n)-A032741(n))`
-/

namespace A326852.P5855401590355321408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A326843 n - A032741 n).toNat

end

end A326852.P5855401590355321408

/-! ## A326852.P13038716612709770708

`A110876(n)%A110160(A326843(n))`
-/

namespace A326852.P13038716612709770708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A110876 n) (A110160 (A326843 n).toNat)

end

end A326852.P13038716612709770708

/-!
# A326853: BII-numbers of set-systems where every two covered vertices appear together in some edge (cointersecting).

The programs for A326853, there is no canonical definition to state claims against.
-/

/-! ## A326853.P2369024980608622428

`∪[A085449(n), A327101(n+1)]`
-/

namespace A326853.P2369024980608622428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085449 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327101 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A326853.P2369024980608622428

/-! ## A326853.P12327537017430098650

`∪[A094038(n), A327101(n+1)]`
-/

namespace A326853.P12327537017430098650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327101 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A326853.P12327537017430098650

/-! ## A326853.P14825741478568953365

`∪[A327101(n+1), A131577(n)]`
-/

namespace A326853.P14825741478568953365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327101 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A326853.P14825741478568953365

/-! ## A326853.P4628404217502757748

`∪[A327101(n+1), A258800(n)]`
-/

namespace A326853.P4628404217502757748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327101 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258800 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A326853.P4628404217502757748

/-! ## A326853.P11937339463889634495

`∪[A327101(n+1), A265407(n)]`
-/

namespace A326853.P11937339463889634495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327101 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265407 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A326853.P11937339463889634495

/-! ## A326853.P6217430364665145798

`∪[A006210(n+1), A327101(n+1)]`
-/

namespace A326853.P6217430364665145798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006210 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327101 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A326853.P6217430364665145798

/-! ## A326853.P5460699804351845470

`∪[A007633(n+1), A327101(n+1)]`
-/

namespace A326853.P5460699804351845470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007633 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327101 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A326853.P5460699804351845470

/-! ## A326853.P13109912777093561407

`∪[A046251(n+1), A327101(n+1)]`
-/

namespace A326853.P13109912777093561407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046251 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327101 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A326853.P13109912777093561407

/-! ## A326853.P9893390246194095892

`∪[A128901(n+1), A327101(n+1)]`
-/

namespace A326853.P9893390246194095892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128901 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327101 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A326853.P9893390246194095892

/-! ## A326853.P10811107974009590077

`∪[A138804(n+1), A327101(n+1)]`
-/

namespace A326853.P10811107974009590077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138804 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327101 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A326853.P10811107974009590077

/-!
# A326854: BII-numbers of T_0 (costrict), pairwise intersecting set-systems where every two vertices appear together in some edge (cointersecting).

The programs for A326854, there is no canonical definition to state claims against.
-/

/-! ## A326854.P4564737604734610725

`∩[A326947(n+1), A327061(n+1)]`
-/

namespace A326854.P4564737604734610725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326947 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327061 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A326854.P4564737604734610725

/-! ## A326854.P4431741274832429402

`eq[A326786(n), A335474(A330101(n))]`
-/

namespace A326854.P4431741274832429402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326786 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335474 (A330101 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A326854.P4431741274832429402

/-! ## A326854.P4959283619434409452

`eq[A326786(n), A335474(n)]`
-/

namespace A326854.P4959283619434409452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326786 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335474 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A326854.P4959283619434409452

/-! ## A326854.P8260274284311993127

`eq[A250408(A335458(n)), A326786(n)]`
-/

namespace A326854.P8260274284311993127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250408 (A335458 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326786 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A326854.P8260274284311993127

/-! ## A326854.P4286956957233190644

`eq[1, A114640(A330101(n))]`
-/

namespace A326854.P4286956957233190644
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114640 (A330101 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A326854.P4286956957233190644

/-!
# A326855: E.g.f.: Product_{k>=1} (1 + x^(4*k-1) / (4*k-1)).

The programs for A326855, there is no canonical definition to state claims against.
-/

/-! ## A326855.P15147422497753854587

`lcm(A326779(n), A326787(A107635(n)))`
-/

namespace A326855.P15147422497753854587
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A326779 n) (A326787 (A107635 n).toNat)

end

end A326855.P15147422497753854587

/-! ## A326855.P13338629476675677332

`A145877(A174546(2*n))*A326779(n)`
-/

namespace A326855.P13338629476675677332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145877 (A174546 (2 * n)).toNat * A326779 n

end

end A326855.P13338629476675677332

/-! ## A326855.P5765317750136445657

`A171587(A359993(2*n+1))*A365973(n)`
-/

namespace A326855.P5765317750136445657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171587 (A359993 (2 * n + 1)).toNat * A365973 n

end

end A326855.P5765317750136445657

/-! ## A326855.P3888439086567375557

`A059841(A342808(2*(n+2)))*A326779(n)`
-/

namespace A326855.P3888439086567375557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (A342808 (2 * (n + 2))).toNat * A326779 n

end

end A326855.P3888439086567375557

/-! ## A326855.P3234084531556687442

`C(A326779(n), A326800(2*n+1)²)`
-/

namespace A326855.P3234084531556687442
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A326779 n).toNat (A326800 (2 * n + 1) ^ 2).toNat

end

end A326855.P3234084531556687442

/-!
# A326856: E.g.f.: Product_{k>=1} (1 + x^(4*k-3) / (4*k-3)).

The programs for A326856, there is no canonical definition to state claims against.
-/

/-! ## A326856.P6218366181206047351

`A231333(xor(5, n!))`
-/

namespace A326856.P6218366181206047351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231333 (Nat.xor 5 (Nat.factorial n))

end

end A326856.P6218366181206047351

/-! ## A326856.P1701510456708488207

`and(n!, A296407(n))`
-/

namespace A326856.P1701510456708488207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (Nat.factorial n : ℤ) (A296407 n)

end

end A326856.P1701510456708488207

/-! ## A326856.P7289066785350216299

`and(n!, A175595(3*n!))`
-/

namespace A326856.P7289066785350216299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (Nat.factorial n : ℤ) (A175595 (3 * Nat.factorial n))

end

end A326856.P7289066785350216299

/-!
# A326857: E.g.f.: Product_{k>=1} (1 + x^(3*k-1) / (3*k-1)).

The programs for A326857, there is no canonical definition to state claims against.
-/

/-! ## A326857.P15194514300676299949

`C(A326755(n), A118394(n)²)`
-/

namespace A326857.P15194514300676299949
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A326755 n).toNat (A118394 n ^ 2).toNat

end

end A326857.P15194514300676299949

/-! ## A326857.P4671319899252556022

`A059841(A014417(n))*A261381(n)`
-/

namespace A326857.P4671319899252556022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (A014417 n).toNat * A261381 n

end

end A326857.P4671319899252556022

/-! ## A326857.P558976159272847343

`A030190(A126932(n))*A261381(n)`
-/

namespace A326857.P558976159272847343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030190 (A126932 n).toNat * A261381 n

end

end A326857.P558976159272847343

/-! ## A326857.P15476211263066517387

`A145362(A154638(n))*A261381(n)`
-/

namespace A326857.P15476211263066517387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145362 (A154638 n).toNat * A261381 n

end

end A326857.P15476211263066517387

/-!
# A326858: E.g.f.: Product_{k>=1} (1 + x^(3*k-2) / (3*k-2)).

The programs for A326858, there is no canonical definition to state claims against.
-/

/-! ## A326858.P5335414218739187902

`A231333(A369528(n+1))`
-/

namespace A326858.P5335414218739187902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231333 (A369528 (n + 1)).toNat

end

end A326858.P5335414218739187902

/-! ## A326858.P13153672482145551379

`A060114(n)%A060085(A060058(n))`
-/

namespace A326858.P13153672482145551379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A060114 n) (A060085 (A060058 n).toNat)

end

end A326858.P13153672482145551379

/-! ## A326858.P12186837071179209202

`lcm(A060114(n), A316569(A056236(n)))`
-/

namespace A326858.P12186837071179209202
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A060114 n) (A316569 (A056236 n).toNat)

end

end A326858.P12186837071179209202

/-! ## A326858.P11031440665363480089

`A040051(A128027(n+1))*A060114(n)`
-/

namespace A326858.P11031440665363480089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040051 (A128027 (n + 1)).toNat * A060114 n

end

end A326858.P11031440665363480089

/-!
# A326859: E.g.f.: Product_{k>=1} (1 + x^(2*k-1)/(2*k-1)) / (1 - x^(2*k-1)/(2*k-1)).

The programs for A326859, there is no canonical definition to state claims against.
-/

/-! ## A326859.P5330370544111202279

`2^n*A051889(A006847(n))`
-/

namespace A326859.P5330370544111202279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A051889 (A006847 n).toNat

end

end A326859.P5330370544111202279

/-! ## A326859.P7552165799845557299

`2^n*A048265(A052302(n))`
-/

namespace A326859.P7552165799845557299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A048265 (A052302 n).toNat

end

end A326859.P7552165799845557299

/-! ## A326859.P11808027565136597189

`A000079(n)*A342525(A000105(n))`
-/

namespace A326859.P11808027565136597189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n * A342525 (A000105 n).toNat

end

end A326859.P11808027565136597189

/-!
# A326860: E.g.f.: Product_{k>=1} (1 + x^(3*k-1)/(3*k-1)) / (1 - x^(3*k-1)/(3*k-1)).

The programs for A326860, there is no canonical definition to state claims against.
-/

/-! ## A326860.P6391022361364390916

`A040001(A286508(n))*A365978(n)`
-/

namespace A326860.P6391022361364390916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (A286508 n).toNat * A365978 n

end

end A326860.P6391022361364390916

/-! ## A326860.P875121622080464978

`A365978(n)*A391239(A007097(n))`
-/

namespace A326860.P875121622080464978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365978 n * A391239 (A007097 n).toNat

end

end A326860.P875121622080464978

/-! ## A326860.P2155791297474836687

`A051486(A213602(n+1))*A365978(n)`
-/

namespace A326860.P2155791297474836687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051486 (A213602 (n + 1)).toNat * A365978 n

end

end A326860.P2155791297474836687

/-! ## A326860.P17361773151789068171

`A069010(A002998(3*(n+1)))*A365978(n)`
-/

namespace A326860.P17361773151789068171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069010 (A002998 (3 * (n + 1))).toNat * A365978 n

end

end A326860.P17361773151789068171

/-! ## A326860.P14552910525011049929

`A280193(4*round((A005578(n+1)/4)²))*A365978(n)`
-/

namespace A326860.P14552910525011049929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280193 (4 * SequenceMachineLib.roundAway (((A005578 (n + 1) : ℚ) / 4) ^ 2)).toNat * A365978 n

end

end A326860.P14552910525011049929

/-!
# A326861: E.g.f.: Product_{k>=1} (1 + x^(3*k-2)/(3*k-2)) / (1 - x^(3*k-2)/(3*k-2)).

The programs for A326861, there is no canonical definition to state claims against.
-/

/-! ## A326861.P8388010301213419385

`∏[∑[A103306(n!)]]`
-/

namespace A326861.P8388010301213419385
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103306 (Nat.factorial n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A326861.P8388010301213419385

/-! ## A326861.P4082433793311746335

`∏[A143299((n+1)!)]`
-/

namespace A326861.P4082433793311746335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143299 (Nat.factorial (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A326861.P4082433793311746335

/-! ## A326861.P5092116141502342214

`A086141(A018079(n))`
-/

namespace A326861.P5092116141502342214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086141 (A018079 n).toNat

end

end A326861.P5092116141502342214

/-!
# A326862: E.g.f.: Product_{k>=1} (1 + x^(4*k-1)/(4*k-1)) / (1 - x^(4*k-1)/(4*k-1)).

The programs for A326862, there is no canonical definition to state claims against.
-/

/-! ## A326862.P10583210652631654599

`A026465(A223532(n+1))*A365981(n)`
-/

namespace A326862.P10583210652631654599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026465 (A223532 (n + 1)).toNat * A365981 n

end

end A326862.P10583210652631654599

/-! ## A326862.P6356915604779099619

`A292504(A349054(3*n))*A365981(n)`
-/

namespace A326862.P6356915604779099619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292504 (A349054 (3 * n)).toNat * A365981 n

end

end A326862.P6356915604779099619

/-! ## A326862.P10893951586115818009

`A020639(A001472(n))*A326779(n)`
-/

namespace A326862.P10893951586115818009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A001472 n).toNat * A326779 n

end

end A326862.P10893951586115818009

/-! ## A326862.P15638459075897943578

`A020639(A005388(n))*A326779(n)`
-/

namespace A326862.P15638459075897943578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A005388 n).toNat * A326779 n

end

end A326862.P15638459075897943578

/-!
# A326863: E.g.f.: Product_{k>=1} (1 + x^(4*k-3)/(4*k-3)) / (1 - x^(4*k-3)/(4*k-3)).

The programs for A326863, there is no canonical definition to state claims against.
-/

/-! ## A326863.P16235440105466518089

`∏[(Δ[A316701(n)]^n)%2+n]`
-/

namespace A326863.P16235440105466518089
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316701 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((f2 (n + 1) - f2 n) ^ n) 2 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A326863.P16235440105466518089

/-! ## A326863.P3676402043099405397

`(A353350(a(n-1))+n)*a(n-1)` with `a(0)=1`
-/

namespace A326863.P3676402043099405397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (A353350 (a (n - 1)).toNat + (n : ℤ)) * a (n - 1)

end

end A326863.P3676402043099405397

/-! ## A326863.P1047299296777649562

`(A374051(a(n-1))+n)*a(n-1)` with `a(0)=1`
-/

namespace A326863.P1047299296777649562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (A374051 (a (n - 1)).toNat + (n : ℤ)) * a (n - 1)

end

end A326863.P1047299296777649562

/-! ## A326863.P9672205759014914698

`(A324192(a(n-1)+1)+n)*a(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A326863.P9672205759014914698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  (A324192 (a (n - 1) + 1).toNat + (n : ℤ)) * a (n - 1)

end

end A326863.P9672205759014914698

/-! ## A326863.P14544768369977271103

`∏[∑[A144024(A144026(n))]]`
-/

namespace A326863.P14544768369977271103
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144024 (A144026 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A326863.P14544768369977271103

/-!
# A326865: G.f.: Product_{k>=1} (1 + x^k/k^3) = Sum_{n>=0} a(n)*x^n/n!^3.

The programs for A326865, there is no canonical definition to state claims against.
-/

/-! ## A326865.P1467740077600275448

`A225529(floor((n+5)*n/10)²²)`
-/

namespace A326865.P1467740077600275448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225529 ((⌊(n + 5 : ℚ) * ((n : ℚ) / 10)⌋ ^ 2) ^ 2).toNat

end

end A326865.P1467740077600275448

/-!
# A326866: Number of connectedness systems on n vertices.

The programs for A326866, there is no canonical definition to state claims against.
-/

/-! ## A326866.P9254522100065243408

`2^n*A072446(n)`
-/

namespace A326866.P9254522100065243408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A072446 n

end

end A326866.P9254522100065243408

/-! ## A326866.P15734340431845016266

`A072446(n)*A320487(n)`
-/

namespace A326866.P15734340431845016266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072446 n * A320487 n

end

end A326866.P15734340431845016266

/-! ## A326866.P2374355123769075511

`A072446(n)*A011782(n+1)`
-/

namespace A326866.P2374355123769075511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072446 n * A011782 (n + 1)

end

end A326866.P2374355123769075511

/-!
# A326867: Number of unlabeled connectedness systems on n vertices.

The programs for A326867, there is no canonical definition to state claims against.
-/

/-! ## A326867.P16058137992022609863

`∑[A326871(n)]`
-/

namespace A326867.P16058137992022609863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326871 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A326867.P16058137992022609863

/-! ## A326867.P4156473558767924926

`A326871(A007092(n))+a(n-1)` with `a(0)=1`
-/

namespace A326867.P4156473558767924926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A326871 (A007092 n).toNat + a (n - 1)

end

end A326867.P4156473558767924926

/-!
# A326868: Number of connected connectedness systems on n vertices.

The programs for A326868, there is no canonical definition to state claims against.
-/

/-! ## A326868.P8463129873483580619

`A345201((a(n-1)+4)²)` with `a(0)=1, a(1)=1, a(2)=4`
-/

namespace A326868.P8463129873483580619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 4] fun n a =>
  A345201 ((a (n - 1) + 4) ^ 2).toNat

end

end A326868.P8463129873483580619

/-!
# A326869: Number of unlabeled connected connectedness systems on n vertices.

The programs for A326869, there is no canonical definition to state claims against.
-/

/-! ## A326869.P16745693945880301130

`A071660(∏[∏[ceil(3*2^(n-3))]])`
-/

namespace A326869.P16745693945880301130
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈3 * (2 : ℚ) ^ ((n : ℤ) - 3 : ℤ)⌉

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071660 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A326869.P16745693945880301130

/-!
# A326870: Number of connectedness systems covering n vertices.

The programs for A326870, there is no canonical definition to state claims against.
-/

/-! ## A326870.P13903543552838932797

`A004773(A059019(∑[n]))`
-/

namespace A326870.P13903543552838932797
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004773 (A059019 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A326870.P13903543552838932797

/-!
# A326871: Number of unlabeled connectedness systems covering n vertices.

The programs for A326871, there is no canonical definition to state claims against.
-/

/-! ## A326871.P11564532139155330170

`A079159(A027287(n))`
-/

namespace A326871.P11564532139155330170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079159 (A027287 n).toNat

end

end A326871.P11564532139155330170

/-!
# A326872: BII-numbers of connectedness systems.

The programs for A326872, there is no canonical definition to state claims against.
-/

/-! ## A326872.P12035694259879564005

`eq[0, A373749(A368109(n))]`
-/

namespace A326872.P12035694259879564005
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373749 (A368109 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A326872.P12035694259879564005

/-! ## A326872.P1468290176529799098

`lt[A079978(n), A023048(A368109(n))]`
-/

namespace A326872.P1468290176529799098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079978 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023048 (A368109 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A326872.P1468290176529799098

/-! ## A326872.P5438185612067987007

`eq[A002784(A368109(n)), A057427(n+1)]`
-/

namespace A326872.P5438185612067987007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002784 (A368109 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A326872.P5438185612067987007

/-! ## A326872.P8076812560612034800

`lt[A035263(n+1), A023048(A368109(n))]`
-/

namespace A326872.P8076812560612034800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035263 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023048 (A368109 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A326872.P8076812560612034800

/-! ## A326872.P5788377803942428733

`lt[A087609(A368109(n)), A046308(n+1)]`
-/

namespace A326872.P5788377803942428733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087609 (A368109 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046308 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A326872.P5788377803942428733

/-! ## A326872.P6620671000071656703

`lt[A087609(A368109(n)), A132230(n+1)]`
-/

namespace A326872.P6620671000071656703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087609 (A368109 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132230 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A326872.P6620671000071656703

/-! ## A326872.P6475866294055449135

`lt[A004609(n+2), A023048(A368109(n))]`
-/

namespace A326872.P6475866294055449135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004609 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023048 (A368109 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A326872.P6475866294055449135

/-! ## A326872.P13170396892406454576

`lt[A237048(2*n+1), A023048(A368109(n))]`
-/

namespace A326872.P13170396892406454576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237048 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023048 (A368109 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A326872.P13170396892406454576

/-! ## A326872.P15927282606809393269

`lt[0, A213279(A368109(n)+1)]`
-/

namespace A326872.P15927282606809393269
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213279 (A368109 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A326872.P15927282606809393269

/-! ## A326872.P6622283486812361428

`eq[1, A109128(A368109(or(1, n)))]`
-/

namespace A326872.P6622283486812361428
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109128 (A368109 (Nat.lor 1 n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A326872.P6622283486812361428

/-!
# A326873: BII-numbers of connectedness systems without singletons.

The programs for A326873, there is no canonical definition to state claims against.
-/

/-! ## A326873.P15960705626982295961

`∩[A326781(n+1), A326872(n+1)]`
-/

namespace A326873.P15960705626982295961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326781 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326872 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A326873.P15960705626982295961

/-! ## A326873.P9626691667348631851

`∩[A326781(n+1), A326879(n+1)]`
-/

namespace A326873.P9626691667348631851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326781 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326879 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A326873.P9626691667348631851

/-! ## A326873.P4320495334095590031

`record[and(A326875(n+1), A368112(n+1))]`
-/

namespace A326873.P4320495334095590031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A326875 (n + 1)) (A368112 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A326873.P4320495334095590031

/-!
# A326874: BII-numbers of abstract simplicial complexes.

The programs for A326874, there is no canonical definition to state claims against.
-/

/-! ## A326874.P8068711902933033272

`eq[A330101(n), A382281(n)]`
-/

namespace A326874.P8068711902933033272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330101 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382281 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A326874.P8068711902933033272

/-! ## A326874.P3906200533978376170

`A326979(lt[A208092(n+1), A220466(n+1)])`
-/

namespace A326874.P3906200533978376170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208092 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220466 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326979 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A326874.P3906200533978376170

/-! ## A326874.P17906421833535389945

`A326979(A051038(n+1)%A070040(n+5))`
-/

namespace A326874.P17906421833535389945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326979 (Int.tmod (A051038 (n + 1)) (A070040 (n + 5))).toNat

end

end A326874.P17906421833535389945

/-! ## A326874.P10230097098707493279

`A326979(n+1)+A184964(A151359(n))`
-/

namespace A326874.P10230097098707493279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326979 (n + 1) + A184964 (A151359 n).toNat

end

end A326874.P10230097098707493279

/-! ## A326874.P13424947748738164990

`A326979(n+1)+A010052(A072198(n+1))`
-/

namespace A326874.P13424947748738164990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326979 (n + 1) + A010052 (A072198 (n + 1)).toNat

end

end A326874.P13424947748738164990

/-!
# A326875: BII-numbers of set-systems that are closed under union.

The programs for A326875, there is no canonical definition to state claims against.
-/

/-! ## A326875.P9887064131833189708

`A359527(Δ[n²])/2`
-/

namespace A326875.P9887064131833189708
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A359527 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 2

end

end A326875.P9887064131833189708

/-! ## A326875.P7140584433990337437

`1/2*A359527(2*n+1)`
-/

namespace A326875.P7140584433990337437
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * (A359527 (2 * n + 1) : ℚ)

end

end A326875.P7140584433990337437

/-! ## A326875.P13996239933678713223

`floor(A359527(abs(A157142(n)))/2)`
-/

namespace A326875.P13996239933678713223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A359527 |A157142 n|.toNat : ℚ) / 2⌋

end

end A326875.P13996239933678713223

/-! ## A326875.P17557773152966695041

`record[floor(A359527(A328399(n))/2)]`
-/

namespace A326875.P17557773152966695041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A359527 (A328399 n).toNat : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A326875.P17557773152966695041

/-! ## A326875.P4708537813458903210

`A131732(A359527(2*n+1))-1`
-/

namespace A326875.P4708537813458903210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131732 (A359527 (2 * n + 1)).toNat - 1

end

end A326875.P4708537813458903210

/-!
# A326876: BII-numbers of finite topologies without their empty set.

The programs for A326876, there is no canonical definition to state claims against.
-/

/-! ## A326876.P17929481905531370242

`∩[A326875(n+1), A326880(n+1)]`
-/

namespace A326876.P17929481905531370242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326875 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326880 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A326876.P17929481905531370242

/-! ## A326876.P14398845039519222610

`A326875(n+1)+A010054(A106302(n+1))`
-/

namespace A326876.P14398845039519222610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326875 (n + 1) + A010054 (A106302 (n + 1)).toNat

end

end A326876.P14398845039519222610

/-! ## A326876.P9647881036859111352

`A326875(A118816(3*n+4))`
-/

namespace A326876.P9647881036859111352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326875 (A118816 (3 * n + 4)).toNat

end

end A326876.P9647881036859111352

/-! ## A326876.P7707896773459885602

`A335462(3*n+5)+A326875(n+1)`
-/

namespace A326876.P7707896773459885602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335462 (3 * n + 5) + A326875 (n + 1)

end

end A326876.P7707896773459885602

/-! ## A326876.P8542759777171410401

`A326875(n+1)%A210983(2*(n+1))`
-/

namespace A326876.P8542759777171410401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A326875 (n + 1)) (A210983 (2 * (n + 1)))

end

end A326876.P8542759777171410401

/-!
# A326877: Number of connectedness systems covering n vertices without singletons.

The programs for A326877, there is no canonical definition to state claims against.
-/

/-! ## A326877.P6548503710220534165

`floor(sqrt(A324838(2^n)))`
-/

namespace A326877.P6548503710220534165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A324838 (2 ^ n))

end

end A326877.P6548503710220534165

/-!
# A326878: Number of topologies whose points are a subset of {1..n}.

The programs for A326878, there is no canonical definition to state claims against.
-/

/-! ## A326878.P11866963204859163466

`∑{#}[n, C(n, #)*A000798(#)]`
-/

namespace A326878.P11866963204859163466
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.choose n k : ℤ) * A000798 k

end

end A326878.P11866963204859163466

/-! ## A326878.P8003668871913252494

`A326909(n)-floor(acot(n))`
-/

namespace A326878.P8003668871913252494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326909 n - ⌊SequenceMachineLib.acot (n : ℝ)⌋

end

end A326878.P8003668871913252494

/-! ## A326878.P4180627497840990581

`A326909(n)-A000007(n)`
-/

namespace A326878.P4180627497840990581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326909 n - A000007 n

end

end A326878.P4180627497840990581

/-! ## A326878.P14410451563663091812

`A306445(n)-A326900(n)`
-/

namespace A326878.P14410451563663091812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306445 n - A326900 n

end

end A326878.P14410451563663091812

/-! ## A326878.P10089674334761326348

`A326909(n)-A000122(A014486(n))`
-/

namespace A326878.P10089674334761326348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326909 n - A000122 (A014486 n).toNat

end

end A326878.P10089674334761326348

/-!
# A326879: BII-numbers of connected connectedness systems.

The programs for A326879, there is no canonical definition to state claims against.
-/

/-! ## A326879.P14277031722800290100

`∩[A326749(n+1), A326872(n+1)]`
-/

namespace A326879.P14277031722800290100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326749 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326872 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A326879.P14277031722800290100

/-! ## A326879.P8533278979184897179

`eq[A029837(n+1), A329616(A057335(n))]`
-/

namespace A326879.P8533278979184897179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029837 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329616 (A057335 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A326879.P8533278979184897179

/-! ## A326879.P10334502575144949320

`∩[A326853(n+1), A326872(n+1)]`
-/

namespace A326879.P10334502575144949320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326853 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326872 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A326879.P10334502575144949320

/-! ## A326879.P12351804178085241182

`eq[ceil(log2(n+1)), A327041(n)]`
-/

namespace A326879.P12351804178085241182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (n + 1 : ℝ)⌉

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327041 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A326879.P12351804178085241182

/-! ## A326879.P13031561702144078961

`lt[A327041(n), A070939(n)+1]`
-/

namespace A326879.P13031561702144078961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327041 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A326879.P13031561702144078961

/-!
# A326880: BII-numbers of set-systems that are closed under nonempty intersection.

The programs for A326880, there is no canonical definition to state claims against.
-/

/-! ## A326880.P14529543488268624797

`record[floor(A359528(A328399(n))/2)]`
-/

namespace A326880.P14529543488268624797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A359528 (A328399 n).toNat : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A326880.P14529543488268624797

/-! ## A326880.P7190949783337778741

`record[floor(A359528(A079715(n+1))/2)]`
-/

namespace A326880.P7190949783337778741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A359528 (A079715 (n + 1)).toNat : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A326880.P7190949783337778741

/-! ## A326880.P15018776806398986885

`lt[A138521(A330195(n)), A330253(n+1)]`
-/

namespace A326880.P15018776806398986885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138521 (A330195 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330253 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A326880.P15018776806398986885

/-! ## A326880.P11600091113768270398

`lt[A134151(n+2), A017779(A000005(n+1))]`
-/

namespace A326880.P11600091113768270398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134151 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017779 (A000005 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A326880.P11600091113768270398

/-! ## A326880.P14197141935326012973

`lt[A089003(A089027(n+1)), A089018(n+1)]`
-/

namespace A326880.P14197141935326012973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089003 (A089027 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089018 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A326880.P14197141935326012973

/-!
# A326881: Number of set-systems with {} that are closed under intersection and cover n vertices.

The programs for A326881, there is no canonical definition to state claims against.
-/

/-! ## A326881.P4595734015460452582

`A326906(n)-A326902(n)`
-/

namespace A326881.P4595734015460452582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326906 n - A326902 n

end

end A326881.P4595734015460452582

/-! ## A326881.P15722017374209435741

`2*A102894(n)-A326902(n)`
-/

namespace A326881.P15722017374209435741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A102894 n - A326902 n

end

end A326881.P15722017374209435741

/-! ## A326881.P14062452570838815803

`or(1, A102895(n)-A326902(n))`
-/

namespace A326881.P14062452570838815803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A102895 n - A326902 n)

end

end A326881.P14062452570838815803

/-! ## A326881.P138080446024953415

`A102895(gcd(n, n!²))-A326902(n)`
-/

namespace A326881.P138080446024953415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102895 (Nat.gcd n (Nat.factorial n ^ 2)) - A326902 n

end

end A326881.P138080446024953415

/-!
# A326883: Number of unlabeled set-systems with {} that are closed under intersection and cover n vertices.

The programs for A326883, there is no canonical definition to state claims against.
-/

/-! ## A326883.P3271372288508858825

`abs(Δ[A108800(abs(1-n))])`
-/

namespace A326883.P3271372288508858825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108800 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A326883.P3271372288508858825

/-! ## A326883.P5489413544208183246

`Δ[Δ[A326904(A028310(n)-1)]]`
-/

namespace A326883.P5489413544208183246
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326904 (A028310 n - 1).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A326883.P5489413544208183246

/-! ## A326883.P8539856736084055986

`A326907(n)-A108800(A055400(n))`
-/

namespace A326883.P8539856736084055986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326907 n - A108800 (A055400 n).toNat

end

end A326883.P8539856736084055986

/-!
# A326884: E.g.f.: Product_{k>=1} (1 + k*(exp(x)-1)^k).

The programs for A326884, there is no canonical definition to state claims against.
-/

/-! ## A326884.P17604313450845358338

`A005408(A276371(n)-A012185(n))`
-/

namespace A326884.P17604313450845358338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A276371 n - A012185 n).toNat

end

end A326884.P17604313450845358338

/-! ## A326884.P8516181729468772342

`A294178(A306080(n)-A306083(n))`
-/

namespace A326884.P8516181729468772342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294178 (A306080 n - A306083 n).toNat

end

end A326884.P8516181729468772342

/-!
# A326885: E.g.f.: Product_{k>=1} 1/(1 - k*(exp(x)-1)^k).

The programs for A326885, there is no canonical definition to state claims against.
-/

/-! ## A326885.P313849746062053809

`A284254(C(∑[n+1]+2, n))`
-/

namespace A326885.P313849746062053809
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284254 (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j + 2) n)

end

end A326885.P313849746062053809

/-!
# A326887: E.g.f.: Product_{k>=1} (1 + (exp(x)-1)^k/k) / (1 - (exp(x)-1)^k/k).

The programs for A326887, there is no canonical definition to state claims against.
-/

/-! ## A326887.P8342352540039833644

`A337226(A005568(n))+A052450(n+1)`
-/

namespace A326887.P8342352540039833644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337226 (A005568 n).toNat + A052450 (n + 1)

end

end A326887.P8342352540039833644

/-! ## A326887.P4147703001508349767

`A095989(n+1)-A054899(A107354(n))`
-/

namespace A326887.P4147703001508349767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095989 (n + 1) - A054899 (A107354 n).toNat

end

end A326887.P4147703001508349767

/-!
# A326888: Number of length n asymmetric bracelets with integer entries that cover an initial interval of positive integers.

The programs for A326888, there is no canonical definition to state claims against.
-/

/-! ## A326888.P13612149812686423813

`∑{d}[n+1, A008683(#)*A326895((n+1)/#)]`
-/

namespace A326888.P13612149812686423813
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A326895 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A326888.P13612149812686423813

/-! ## A326888.P10750999658715482392

`∑{d}[n+1, A069158(#)*A326895((n+1)/#)]`
-/

namespace A326888.P10750999658715482392
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A069158 d * A326895 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A326888.P10750999658715482392

/-! ## A326888.P5066894950721105744

`∑{d}[n+1, A133639(#)*A326895((n+1)/#)]`
-/

namespace A326888.P5066894950721105744
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A133639 d * A326895 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A326888.P5066894950721105744

/-! ## A326888.P17661085696784072616

`∑{d}[n+1, A253206(#)*A326895((n+1)/#)]`
-/

namespace A326888.P17661085696784072616
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A253206 d * A326895 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A326888.P17661085696784072616

/-!
# A326893: Multiplicities of 4-class association schemes.

The programs for A326893, there is no canonical definition to state claims against.
-/

/-! ## A326893.P15501823688609379847

`A003864(A287114(n+1))`
-/

namespace A326893.P15501823688609379847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003864 (A287114 (n + 1)).toNat

end

end A326893.P15501823688609379847

/-!
# A326895: Number of chiral pairs of color loops of length n with integer entries that cover an initial interval of positive integers.

The programs for A326895, there is no canonical definition to state claims against.
-/

/-! ## A326895.P552446144027873389

`∑{d}[1+n, A326888(#)]`
-/

namespace A326895.P552446144027873389
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A326888 d

end

end A326895.P552446144027873389

/-! ## A326895.P6264960637230731529

`A019536(n+1)-A019537(n+1)`
-/

namespace A326895.P6264960637230731529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019536 (n + 1) - A019537 (n + 1)

end

end A326895.P6264960637230731529

/-! ## A326895.P5369166119863329175

`A019537(n+1)-A327868(n+1)`
-/

namespace A326895.P5369166119863329175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019537 (n + 1) - A327868 (n + 1)

end

end A326895.P5369166119863329175

/-! ## A326895.P10009059493598268692

`A019536(A000027(n+1))%A019537(n+1)`
-/

namespace A326895.P10009059493598268692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A019536 (A000027 (n + 1)).toNat) (A019537 (n + 1))

end

end A326895.P10009059493598268692

/-! ## A326895.P6073991153534073434

`A019536(A008619(2*n))%A019537(n+1)`
-/

namespace A326895.P6073991153534073434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A019536 (A008619 (2 * n)).toNat) (A019537 (n + 1))

end

end A326895.P6073991153534073434

/-!
# A326897: Prime numbers p such that 0 < pi(p;10,(9,1)) = pi(p;10,(3,9)) where pi(x;q,(a,b)) is the number of primes p_n <= x such that p_n == a (mod q) and p_(n+1) == b (mod q).

The programs for A326897, there is no canonical definition to state claims against.
-/

/-! ## A326897.P7819187886279381316

`A175524(lt[A008565(n), A382771(n+1)])`
-/

namespace A326897.P7819187886279381316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008565 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382771 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175524 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A326897.P7819187886279381316

/-!
# A326898: Number of unlabeled topologies with up to n points.

The programs for A326898, there is no canonical definition to state claims against.
-/

/-! ## A326898.P15826013947289112770

`∑[A001930(n)]`
-/

namespace A326898.P15826013947289112770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001930 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A326898.P15826013947289112770

/-! ## A326898.P14989695762036628803

`A001930(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A326898.P14989695762036628803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A001930 n + a (A023443 n).toNat

end

end A326898.P14989695762036628803

/-! ## A326898.P3746820140671423032

`a(n-1)+A001930(n)*A054977(n)` with `a(0)=1`
-/

namespace A326898.P3746820140671423032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A001930 n * A054977 n

end

end A326898.P3746820140671423032

/-! ## A326898.P1210189519196024415

`a(n-1)+A001930(n)*A057427(n)` with `a(0)=1`
-/

namespace A326898.P1210189519196024415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A001930 n * A057427 n

end

end A326898.P1210189519196024415

/-! ## A326898.P2271296802877399164

`A001930(n)-round(-a(A325360(n+1)-2))` with `a(0)=1`

`round` is left out, it is the identity on integers.
-/

namespace A326898.P2271296802877399164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A001930 n - (-a (A325360 (n + 1) - 2).toNat)

end

end A326898.P2271296802877399164

/-!
# A326899: Number of unlabeled connectedness systems covering n vertices without singletons.

The programs for A326899, there is no canonical definition to state claims against.
-/

/-! ## A326899.P10228041841486815266

`A339559(A309536(n))+A000007(n)`
-/

namespace A326899.P10228041841486815266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339559 (A309536 n).toNat + A000007 n

end

end A326899.P10228041841486815266

/-! ## A326899.P9014383797134681894

`A339559(A064989(n+1)+A007097(n))`
-/

namespace A326899.P9014383797134681894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339559 (A064989 (n + 1) + A007097 n).toNat

end

end A326899.P9014383797134681894

