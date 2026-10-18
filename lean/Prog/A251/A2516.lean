import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B008.C001
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
import Seq.Opaque.C023
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A251600: Least k such that prime(k) + prime(k+1) contains n prime divisors (with multiplicity), otherwise 0.

The programs for A251600, there is no canonical definition to state claims against.
-/

/-! ## A251600.P16138712798019261552

`A000720(or(n, A105418(n+1)))`
-/

namespace A251600.P16138712798019261552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (Int.lor (n : ℤ) (A105418 (n + 1))).toNat

end

end A251600.P16138712798019261552

/-! ## A251600.P14128640437292091287

`∑{d}[A105418(n+1), A000720(#)]`
-/

namespace A251600.P14128640437292091287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105418 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000720 d

end

end A251600.P14128640437292091287

/-! ## A251600.P17307435429421118547

`∑{d}[A105418(n+1), A061395(#)]`
-/

namespace A251600.P17307435429421118547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105418 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A061395 d

end

end A251600.P17307435429421118547

/-! ## A251600.P4133924176469248443

`∑{d}[A105418(n+1), A326846(#)]`
-/

namespace A251600.P4133924176469248443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105418 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A326846 d

end

end A251600.P4133924176469248443

/-! ## A251600.P15010206189638139305

`A000720(∏{d}[A105418(n+1), #])`
-/

namespace A251600.P15010206189638139305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105418 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (∏ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A251600.P15010206189638139305

/-!
# A251601: Numbers k such that hexagonal numbers H(k) and H(k+1) sum to another hexagonal number.

The programs for A251601, the canonical program `A251601.P14058225397818519943` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A251601 has offset 1).

The definition of A251601 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A251601.P14058225397818519943

`35*a(n-1)-35*a(n-2)+a(n-3)` with `a(0)=0, a(1)=13, a(2)=450`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A251601

/-- `35*a(n-1)-35*a(n-2)+a(n-3)` -/
def P14058225397818519943.Spec : Prop :=
  ∀ n, P14058225397818519943.a n = A251601 (n + 1)

theorem P14058225397818519943.correct : P14058225397818519943.Spec := by
  intro n
  simp only [A251601, Nat.add_sub_cancel]

end A251601

/-! ## A251601.P13451819342382873856

`A216134(4*n)/2`
-/

namespace A251601.P13451819342382873856
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A216134 (4 * n) : ℚ) / 2

end

end A251601.P13451819342382873856

namespace A251601

/-- `A216134(4*n)/2` -/
def P13451819342382873856.Spec : Prop :=
  ∀ n, P13451819342382873856.a n = (A251601 (n + 1) : ℚ)

end A251601

/-! ## A251601.P14491244597200496601

`A216162(8*n+1)/2`
-/

namespace A251601.P14491244597200496601
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A216162 (8 * n + 1) : ℚ) / 2

end

end A251601.P14491244597200496601

namespace A251601

/-- `A216162(8*n+1)/2` -/
def P14491244597200496601.Spec : Prop :=
  ∀ n, P14491244597200496601.a n = (A251601 (n + 1) : ℚ)

end A251601

/-! ## A251601.P6288719638724689757

`A353582(3*n+n+1)`
-/

namespace A251601.P6288719638724689757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353582 (3 * n + (n + 1))

end

end A251601.P6288719638724689757

namespace A251601

/-- `A353582(3*n+n+1)` -/
def P6288719638724689757.Spec : Prop :=
  ∀ n, P6288719638724689757.a n = A251601 (n + 1)

end A251601

/-! ## A251601.P699486462821210110

`floor((A212329(2*n+1)+1)/4*sqrt(2))`
-/

namespace A251601.P699486462821210110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((A212329 (2 * n + 1) + 1 : ℚ) / 4 : ℝ) * Real.sqrt (2 : ℝ)⌋

end

end A251601.P699486462821210110

namespace A251601

/-- `floor((A212329(2*n+1)+1)/4*sqrt(2))` -/
def P699486462821210110.Spec : Prop :=
  ∀ n, P699486462821210110.a n = A251601 (n + 1)

end A251601

/-! ## A251601.P5524248923193937138

`A001109(n)*A038762(n)`
-/

namespace A251601.P5524248923193937138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001109 n * A038762 n

end

end A251601.P5524248923193937138

namespace A251601

/-- `A001109(n)*A038762(n)` -/
def P5524248923193937138.Spec : Prop :=
  ∀ n, P5524248923193937138.a n = A251601 (n + 1)

end A251601

/-! ## A251601.P3084746208810718936

`sqrt(A001110(n))*A038762(n)`
-/

namespace A251601.P3084746208810718936
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A001110 n : ℝ) * (A038762 n : ℝ)

end

end A251601.P3084746208810718936

namespace A251601

/-- `sqrt(A001110(n))*A038762(n)` -/
def P3084746208810718936.Spec : Prop :=
  ∀ n, P3084746208810718936.a n = (A251601 (n + 1) : ℝ)

end A251601

/-! ## A251601.P12829785693680420696

`A002315(n)*A038725(n)-1`
-/

namespace A251601.P12829785693680420696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002315 n * A038725 n - 1

end

end A251601.P12829785693680420696

namespace A251601

/-- `A002315(n)*A038725(n)-1` -/
def P12829785693680420696.Spec : Prop :=
  ∀ n, P12829785693680420696.a n = A251601 (n + 1)

end A251601

/-! ## A251601.P12856792117213891884

`A001542(n)/2*A038762(n)`
-/

namespace A251601.P12856792117213891884
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001542 n : ℚ) / 2 * (A038762 n : ℚ)

end

end A251601.P12856792117213891884

namespace A251601

/-- `A001542(n)/2*A038762(n)` -/
def P12856792117213891884.Spec : Prop :=
  ∀ n, P12856792117213891884.a n = (A251601 (n + 1) : ℚ)

end A251601

/-! ## A251601.P15953514087306416

`A078522(n+1)-A336623(2*n)`
-/

namespace A251601.P15953514087306416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078522 (n + 1) - A336623 (2 * n)

end

end A251601.P15953514087306416

namespace A251601

/-- `A078522(n+1)-A336623(2*n)` -/
def P15953514087306416.Spec : Prop :=
  ∀ n, P15953514087306416.a n = A251601 (n + 1)

end A251601

/-!
# A251602: Numbers k such that hexagonal number H(k) is the sum of two consecutive hexagonal numbers.

The programs for A251602, the canonical program `A251602.P8663643872561714189` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A251602 has offset 1).

The definition of A251602 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A251602.P8663643872561714189

`35*a(n-1)-35*a(n-2)+a(n-3)` with `a(0)=1, a(1)=19, a(2)=637`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A251602

/-- `35*a(n-1)-35*a(n-2)+a(n-3)` -/
def P8663643872561714189.Spec : Prop :=
  ∀ n, P8663643872561714189.a n = A251602 (n + 1)

theorem P8663643872561714189.correct : P8663643872561714189.Spec := by
  intro n
  simp only [A251602, Nat.add_sub_cancel]

end A251602

/-! ## A251602.P3761286558779435822

`(A108262(2*n)-1)/2`
-/

namespace A251602.P3761286558779435822
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A108262 (2 * n) - 1 : ℚ) / 2

end

end A251602.P3761286558779435822

namespace A251602

/-- `(A108262(2*n)-1)/2` -/
def P3761286558779435822.Spec : Prop :=
  ∀ n, P3761286558779435822.a n = (A251602 (n + 1) : ℚ)

end A251602

/-! ## A251602.P18347703460265029732

`round(A124124(4*n+1)/2)`
-/

namespace A251602.P18347703460265029732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A124124 (4 * n + 1) : ℚ) / 2)

end

end A251602.P18347703460265029732

namespace A251602

/-- `round(A124124(4*n+1)/2)` -/
def P18347703460265029732.Spec : Prop :=
  ∀ n, P18347703460265029732.a n = A251602 (n + 1)

end A251602

/-! ## A251602.P17826113938833770321

`A212329(2*n+1)/2+1`
-/

namespace A251602.P17826113938833770321
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A212329 (2 * n + 1) : ℚ) / 2 + 1

end

end A251602.P17826113938833770321

namespace A251602

/-- `A212329(2*n+1)/2+1` -/
def P17826113938833770321.Spec : Prop :=
  ∀ n, P17826113938833770321.a n = (A251602 (n + 1) : ℚ)

end A251602

/-! ## A251602.P14401423954969501202

`A008844(n)-A082405(n)`
-/

namespace A251602.P14401423954969501202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008844 n - A082405 n

end

end A251602.P14401423954969501202

namespace A251602

/-- `A008844(n)-A082405(n)` -/
def P14401423954969501202.Spec : Prop :=
  ∀ n, P14401423954969501202.a n = A251602 (n + 1)

end A251602

/-! ## A251602.P7697801780911932460

`A001542(n)*A038761(n)+1`
-/

namespace A251602.P7697801780911932460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001542 n * A038761 n + 1

end

end A251602.P7697801780911932460

namespace A251602

/-- `A001542(n)*A038761(n)+1` -/
def P7697801780911932460.Spec : Prop :=
  ∀ n, P7697801780911932460.a n = A251602 (n + 1)

end A251602

/-! ## A251602.P2760695843763452169

`A008844(n)-A001109(2*n)`
-/

namespace A251602.P2760695843763452169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008844 n - A001109 (2 * n)

end

end A251602.P2760695843763452169

namespace A251602

/-- `A008844(n)-A001109(2*n)` -/
def P2760695843763452169.Spec : Prop :=
  ∀ n, P2760695843763452169.a n = A251602 (n + 1)

end A251602

/-! ## A251602.P6363134226973143838

`record[A104683(n)²-A001109(n)]`
-/

namespace A251602.P6363134226973143838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104683 n ^ 2 - A001109 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251602.P6363134226973143838

namespace A251602

/-- `record[A104683(n)²-A001109(n)]` -/
def P6363134226973143838.Spec : Prop :=
  ∀ n, P6363134226973143838.a n = A251602 (n + 1)

end A251602

/-! ## A251602.P13631323700727763548

`A001653(n+1)²-A082405(n)`
-/

namespace A251602.P13631323700727763548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001653 (n + 1) ^ 2 - A082405 n

end

end A251602.P13631323700727763548

namespace A251602

/-- `A001653(n+1)²-A082405(n)` -/
def P13631323700727763548.Spec : Prop :=
  ∀ n, P13631323700727763548.a n = A251602 (n + 1)

end A251602

/-! ## A251602.P548235166094873874

`A114620(2*n)+A001541(n)²`
-/

namespace A251602.P548235166094873874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114620 (2 * n) + A001541 n ^ 2

end

end A251602.P548235166094873874

namespace A251602

/-- `A114620(2*n)+A001541(n)²` -/
def P548235166094873874.Spec : Prop :=
  ∀ n, P548235166094873874.a n = A251602 (n + 1)

end A251602

/-!
# A251607: Number of non-congruent integer triangles ABC with largest side BC of length n whose opposite vertex A lies inside the closed boundary formed by BC and a locus of points whose real distance from B is x, from C is y and x^3 + y^3 = n^3.

The programs for A251607, there is no canonical definition to state claims against.
-/

/-! ## A251607.P984688268453514628

`A316864(A164158(n))+A008738(n)`
-/

namespace A251607.P984688268453514628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316864 (A164158 n).toNat + A008738 n

end

end A251607.P984688268453514628

/-! ## A251607.P13694958196136215498

`A305821(A305839(n))+A008738(n)`
-/

namespace A251607.P13694958196136215498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305821 (A305839 n).toNat + A008738 n

end

end A251607.P13694958196136215498

/-!
# A251608: Lexicographically earliest subsequence of the Fibonacci numbers (cf. A000045), such that gcd(a(n-2), a(n)) > 1 and gcd(a(n-1), a(n)) = 1.

The programs for A251608, there is no canonical definition to state claims against.
-/

/-! ## A251608.P3065748506429819505

`filter[A050762(n+1), A057212(#)]`
-/

namespace A251608.P3065748506429819505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050762 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A057212 (f1 j).toNat = 1) n)

end

end A251608.P3065748506429819505

/-! ## A251608.P7241780209964424871

`A274163(A383649(n+1))`
-/

namespace A251608.P7241780209964424871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274163 (A383649 (n + 1)).toNat

end

end A251608.P7241780209964424871

/-! ## A251608.P8359491695019841685

`filter[A177247(n+1), A182582(#)]`
-/

namespace A251608.P8359491695019841685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177247 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A182582 (f1 j).toNat = 1) n)

end

end A251608.P8359491695019841685

/-!
# A251609: Least k such that prime(k) + prime(k+1) contains n distinct prime divisors.

The programs for A251609, there is no canonical definition to state claims against.
-/

/-! ## A251609.P7527105418337603093

`A000720(A230518(n+1))`
-/

namespace A251609.P7527105418337603093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A230518 (n + 1)).toNat

end

end A251609.P7527105418337603093

/-! ## A251609.P6162364683220765974

`A061395(p?[A230518(n+1)])`
-/

namespace A251609.P6162364683220765974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230518 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A251609.P6162364683220765974

/-!
# A251610: Determinants of the spiral knots S(4,k,(1,1,1)).

The programs for A251610, the canonical program `A251610.P10384159357326718151` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A251610 has offset 1).

The definition of A251610 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A251610.P10384159357326718151

`(n+1)*C(2, n%4)`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A251610

/-- `(n+1)*C(2, n%4)` -/
def P10384159357326718151.Spec : Prop :=
  ∀ n, (P10384159357326718151.a n : ℤ) = A251610 (n + 1)

theorem P10384159357326718151.correct : P10384159357326718151.Spec := by
  intro n
  simp only [A251610, Nat.add_sub_cancel]

end A251610

/-! ## A251610.P13961462996841420031

`(n+1)*C(2, and(3, n))`
-/

namespace A251610.P13961462996841420031
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * Nat.choose 2 (Nat.land 3 n)

end

end A251610.P13961462996841420031

namespace A251610

/-- `(n+1)*C(2, and(3, n))` -/
def P13961462996841420031.Spec : Prop :=
  ∀ n, (P13961462996841420031.a n : ℤ) = A251610 (n + 1)

end A251610

/-! ## A251610.P11328550426451095623

`lcm(n+1, (n+1)²%8)`
-/

namespace A251610.P11328550426451095623
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (n + 1) ((n + 1) ^ 2 % 8)

end

end A251610.P11328550426451095623

namespace A251610

/-- `lcm(n+1, (n+1)²%8)` -/
def P11328550426451095623.Spec : Prop :=
  ∀ n, (P11328550426451095623.a n : ℤ) = A251610 (n + 1)

end A251610

/-! ## A251610.P3172300982734906021

`(n+1)*∑[1-and(2, n)]`
-/

namespace A251610.P3172300982734906021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (Nat.land 2 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A251610.P3172300982734906021

namespace A251610

/-- `(n+1)*∑[1-and(2, n)]` -/
def P3172300982734906021.Spec : Prop :=
  ∀ n, P3172300982734906021.a n = A251610 (n + 1)

end A251610

/-! ## A251610.P2332798335336405936

`(n+1)*and(3, ∑[or(1, n)])`
-/

namespace A251610.P2332798335336405936
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * Nat.land 3 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A251610.P2332798335336405936

namespace A251610

/-- `(n+1)*and(3, ∑[or(1, n)])` -/
def P2332798335336405936.Spec : Prop :=
  ∀ n, (P2332798335336405936.a n : ℤ) = A251610 (n + 1)

end A251610

/-! ## A251610.P11700904353953562467

`(n+1)*(n^3+1)%4`
-/

namespace A251610.P11700904353953562467
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * ((n ^ 3 + 1) % 4)

end

end A251610.P11700904353953562467

namespace A251610

/-- `(n+1)*(n^3+1)%4` -/
def P11700904353953562467.Spec : Prop :=
  ∀ n, (P11700904353953562467.a n : ℤ) = A251610 (n + 1)

end A251610

/-! ## A251610.P16945794540567318927

`(n+1)*sqrt(and(5, (n+1)²))`
-/

namespace A251610.P16945794540567318927
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℝ) * Real.sqrt (Nat.land 5 ((n + 1) ^ 2) : ℝ)

end

end A251610.P16945794540567318927

namespace A251610

/-- `(n+1)*sqrt(and(5, (n+1)²))` -/
def P16945794540567318927.Spec : Prop :=
  ∀ n, P16945794540567318927.a n = (A251610 (n + 1) : ℝ)

end A251610

/-! ## A251610.P5307619765242220835

`(n+1)*∑[(-1)^floor(n/2)]`
-/

namespace A251610.P5307619765242220835
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A251610.P5307619765242220835

namespace A251610

/-- `(n+1)*∑[(-1)^floor(n/2)]` -/
def P5307619765242220835.Spec : Prop :=
  ∀ n, P5307619765242220835.a n = (A251610 (n + 1) : ℚ)

end A251610

/-! ## A251610.P10228936906214982216

`abs((n+1)*(1-and(3, n+2)))`
-/

namespace A251610.P10228936906214982216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n + 1 : ℤ) * (1 - (Nat.land 3 (n + 2) : ℤ))|

end

end A251610.P10228936906214982216

namespace A251610

/-- `abs((n+1)*(1-and(3, n+2)))` -/
def P10228936906214982216.Spec : Prop :=
  ∀ n, P10228936906214982216.a n = A251610 (n + 1)

end A251610

/-! ## A251610.P10048541922932025051

`abs((n+1)*(or(3, n-1)-n))`
-/

namespace A251610.P10048541922932025051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n + 1 : ℤ) * (Int.lor 3 ((n : ℤ) - 1) - (n : ℤ))|

end

end A251610.P10048541922932025051

namespace A251610

/-- `abs((n+1)*(or(3, n-1)-n))` -/
def P10048541922932025051.Spec : Prop :=
  ∀ n, P10048541922932025051.a n = A251610 (n + 1)

end A251610

/-! ## A251610.P6840866463659283280

`abs((n+1)*(2-gcd(n+3, n-1)))`
-/

namespace A251610.P6840866463659283280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n + 1 : ℤ) * (2 - (Int.gcd (n + 3 : ℤ) ((n : ℤ) - 1) : ℤ))|

end

end A251610.P6840866463659283280

namespace A251610

/-- `abs((n+1)*(2-gcd(n+3, n-1)))` -/
def P6840866463659283280.Spec : Prop :=
  ∀ n, P6840866463659283280.a n = A251610 (n + 1)

end A251610

/-! ## A251610.P17746399099900281818

`floor((n+1)*∑[(-1)^(n+1)*a(n-1)])` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A251610.P17746399099900281818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  (-1) ^ (n + 1) * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A251610.P17746399099900281818

namespace A251610

/-- `floor((n+1)*∑[(-1)^(n+1)*a(n-1)])` -/
def P17746399099900281818.Spec : Prop :=
  ∀ n, P17746399099900281818.a n = A251610 (n + 1)

end A251610

/-! ## A251610.P17151530725759729182

`abs((n+1)*A230074(n+1))`
-/

namespace A251610.P17151530725759729182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n + 1 : ℤ) * A230074 (n + 1)|

end

end A251610.P17151530725759729182

namespace A251610

/-- `abs((n+1)*A230074(n+1))` -/
def P17151530725759729182.Spec : Prop :=
  ∀ n, P17151530725759729182.a n = A251610 (n + 1)

end A251610

/-! ## A251610.P16124108870699476146

`2*A186813(n+1)-(n+1)`
-/

namespace A251610.P16124108870699476146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A186813 (n + 1) - (n + 1 : ℤ)

end

end A251610.P16124108870699476146

namespace A251610

/-- `2*A186813(n+1)-(n+1)` -/
def P16124108870699476146.Spec : Prop :=
  ∀ n, P16124108870699476146.a n = A251610 (n + 1)

end A251610

/-! ## A251610.P2984577055365033653

`((n+3)²-4)%A347634(n+1)`
-/

namespace A251610.P2984577055365033653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (((n + 3) ^ 2 : ℤ) - 4) (A347634 (n + 1))

end

end A251610.P2984577055365033653

namespace A251610

/-- `((n+3)²-4)%A347634(n+1)` -/
def P2984577055365033653.Spec : Prop :=
  ∀ n, P2984577055365033653.a n = A251610 (n + 1)

end A251610

/-! ## A251610.P3847407392775622215

`A309214(n)+A098181(n)`
-/

namespace A251610.P3847407392775622215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309214 n + A098181 n

end

end A251610.P3847407392775622215

namespace A251610

/-- `A309214(n)+A098181(n)` -/
def P3847407392775622215.Spec : Prop :=
  ∀ n, P3847407392775622215.a n = A251610 (n + 1)

end A251610

/-! ## A251610.P6956182059191942192

`A098181(n)-A309215(n)`
-/

namespace A251610.P6956182059191942192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098181 n - A309215 n

end

end A251610.P6956182059191942192

namespace A251610

/-- `A098181(n)-A309215(n)` -/
def P6956182059191942192.Spec : Prop :=
  ∀ n, P6956182059191942192.a n = A251610 (n + 1)

end A251610

/-! ## A251610.P4454766479100279282

`A027602(n)%A205382(n+1)`
-/

namespace A251610.P4454766479100279282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A027602 n) (A205382 (n + 1))

end

end A251610.P4454766479100279282

namespace A251610

/-- `A027602(n)%A205382(n+1)` -/
def P4454766479100279282.Spec : Prop :=
  ∀ n, P4454766479100279282.a n = A251610 (n + 1)

end A251610

/-! ## A251610.P11568333554622945720

`A027850(n)%A205382(n+1)`
-/

namespace A251610.P11568333554622945720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A027850 n) (A205382 (n + 1))

end

end A251610.P11568333554622945720

namespace A251610

/-- `A027850(n)%A205382(n+1)` -/
def P11568333554622945720.Spec : Prop :=
  ∀ n, P11568333554622945720.a n = A251610 (n + 1)

end A251610

/-! ## A251610.P3227875621473350180

`A169713(n+1)%A091574(n)`
-/

namespace A251610.P3227875621473350180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A169713 (n + 1)) (A091574 n)

end

end A251610.P3227875621473350180

namespace A251610

/-- `A169713(n+1)%A091574(n)` -/
def P3227875621473350180.Spec : Prop :=
  ∀ n, P3227875621473350180.a n = A251610 (n + 1)

end A251610

/-!
# A251611: Number of (n+1) X (1+1) 0..6 arrays with every 2 X 2 subblock summing to a prime.

The programs for A251611, there is no canonical definition to state claims against.
-/

/-! ## A251611.P9958253281543754597

`A251616(∑[n]+1)`
-/

namespace A251611.P9958253281543754597
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251616 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A251611.P9958253281543754597

/-! ## A251611.P13390878740674506631

`lcm(2, A251616(A000124(n)))`
-/

namespace A251611.P13390878740674506631
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A251616 (A000124 n).toNat)

end

end A251611.P13390878740674506631

/-! ## A251611.P1671466392027704050

`record[A010054(n)*A251616(n+1)]`
-/

namespace A251611.P1671466392027704050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A251616 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251611.P1671466392027704050

/-! ## A251611.P1357119626605651075

`record[root(A251616(n+1), A114188(n))]`
-/

namespace A251611.P1357119626605651075
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A251616 (n + 1) : ℝ) ^ (1 / (A114188 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251611.P1357119626605651075

/-! ## A251611.P18138457962895662622

`record[root(A251616(n+1), A251634(n))]`
-/

namespace A251611.P18138457962895662622
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A251616 (n + 1) : ℝ) ^ (1 / (A251634 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251611.P18138457962895662622

/-!
# A251612: Number of (n+1)X(2+1) 0..6 arrays with every 2X2 subblock summing to a prime.

The programs for A251612, there is no canonical definition to state claims against.
-/

/-! ## A251612.P6325685816500738742

`A251616(∑[n+1]+2)`
-/

namespace A251612.P6325685816500738742
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251616 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A251612.P6325685816500738742

/-! ## A251612.P10485557814629828762

`record[A010054(n)*A251616(n+2)]`
-/

namespace A251612.P10485557814629828762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A251616 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251612.P10485557814629828762

/-! ## A251612.P11299196509861759267

`record[A251616(n+3)*A251635(n)]`
-/

namespace A251612.P11299196509861759267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251616 (n + 3) * A251635 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251612.P11299196509861759267

/-! ## A251612.P2422457860277353269

`record[A251616(abs(A201163(n)))]`
-/

namespace A251612.P2422457860277353269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251616 |A201163 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251612.P2422457860277353269

/-! ## A251612.P9018008636773345233

`record[A251616(n+2)^A251635(n+2)]`
-/

namespace A251612.P9018008636773345233
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A251616 (n + 2) : ℚ) ^ (A251635 (n + 2) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251612.P9018008636773345233

/-!
# A251613: Number of (n+1)X(3+1) 0..6 arrays with every 2X2 subblock summing to a prime.

The programs for A251613, there is no canonical definition to state claims against.
-/

/-! ## A251613.P7751061347007016273

`A251616(∑[n+2]+4)`
-/

namespace A251613.P7751061347007016273
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251616 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A251613.P7751061347007016273

/-!
# A251615: 

The programs for A251615, there is no canonical definition to state claims against.
-/

/-! ## A251615.P13686434792532416849

`A251616(A056000(n)+15)`
-/

namespace A251615.P13686434792532416849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251616 (A056000 n + 15).toNat

end

end A251615.P13686434792532416849

/-!
# A251617: Number of tilings of a 5 X n rectangle using n pentominoes of shapes F, I, L, U.

The programs for A251617, there is no canonical definition to state claims against.
-/

/-! ## A251617.P9420055062370820058

`or(A037135(A257859(n)), A257866(n))`
-/

namespace A251617.P9420055062370820058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A037135 (A257859 n).toNat) (A257866 n)

end

end A251617.P9420055062370820058

/-! ## A251617.P14087193915877253523

`or(A243148(A336448(n)), A257866(n))`
-/

namespace A251617.P14087193915877253523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A243148 (A336448 n).toNat) (A257866 n)

end

end A251617.P14087193915877253523

/-! ## A251617.P11612213415862549876

`A257866(n)+A010894(A282280(n+1))`
-/

namespace A251617.P11612213415862549876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257866 n + A010894 ((A282280 (n + 1)).toNat + 21)

end

end A251617.P11612213415862549876

/-!
# A251618: Smallest term in A098550 having prime(n) as a factor.

The programs for A251618, there is no canonical definition to state claims against.
-/

/-! ## A251618.P16957342638568694953

`lcm(Δ[A007504(n)], A251619(n+1))`
-/

namespace A251618.P16957342638568694953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (f1 (n + 1) - f1 n) (A251619 (n + 1))

end

end A251618.P16957342638568694953

/-! ## A251618.P4029750629689603821

`A007947(A000040(n+1)*A251619(n+1))`
-/

namespace A251618.P4029750629689603821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A000040 (n + 1) * A251619 (n + 1)).toNat

end

end A251618.P4029750629689603821

/-! ## A251618.P1321269019103815899

`A098550(A251541(n+1))`
-/

namespace A251618.P1321269019103815899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098550 (A251541 (n + 1)).toNat

end

end A251618.P1321269019103815899

/-! ## A251618.P17590720785552905137

`lcm(A000040(n+1), A251619(A222259(n+1)))`
-/

namespace A251618.P17590720785552905137
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000040 (n + 1)) (A251619 (A222259 (n + 1)).toNat)

end

end A251618.P17590720785552905137

/-! ## A251618.P9372431007378138913

`A251637(∑[n]+1)`
-/

namespace A251618.P9372431007378138913
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251637 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A251618.P9372431007378138913

/-! ## A251618.P3280041724033455724

`A098550(A251716(∑[n]+1))`
-/

namespace A251618.P3280041724033455724
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098550 (A251716 (∑ j ∈ Finset.range (n + 1), f1 j + 1)).toNat

end

end A251618.P3280041724033455724

/-!
# A251619: Smallest prime factor of smallest multiple of prime(n) in A098550.

The programs for A251619, there is no canonical definition to state claims against.
-/

/-! ## A251619.P11608135210444890

`gcd(6, A251618(n+1))`
-/

namespace A251619.P11608135210444890
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 6 (A251618 (n + 1))

end

end A251619.P11608135210444890

/-!
# A251620: Distinct terms in A249943.

The programs for A251620, there is no canonical definition to state claims against.
-/

/-! ## A251620.P4220672472545684413

`record[A098551(n+1)]`
-/

namespace A251620.P4220672472545684413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098551 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251620.P4220672472545684413

/-! ## A251620.P1351804535876512870

`A251417(n)+a(n-1)` with `a(0)=1`
-/

namespace A251620.P1351804535876512870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A251417 n + a (n - 1)

end

end A251620.P1351804535876512870

/-! ## A251620.P18130984914798176717

`∑[A251417(abs(1-n)+1)]`
-/

namespace A251620.P18130984914798176717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251417 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A251620.P18130984914798176717

/-! ## A251620.P8481282849363897094

`A249943(∑[A251621(n+1)])`
-/

namespace A251620.P8481282849363897094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251621 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249943 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A251620.P8481282849363897094

/-! ## A251620.P1797012301417025330

`record[A249943(A296089(n+1))]`
-/

namespace A251620.P1797012301417025330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249943 (A296089 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251620.P1797012301417025330

/-! ## A251620.P16070225017266058617

`A249943(A251595(n+1)-1)`
-/

namespace A251620.P16070225017266058617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249943 (A251595 (n + 1) - 1).toNat

end

end A251620.P16070225017266058617

/-! ## A251620.P12559498226329648050

`record[A249943(round(n/A020639(n+1))+1)]`
-/

namespace A251620.P12559498226329648050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249943 (SequenceMachineLib.roundAway ((n : ℚ) / (A020639 (n + 1) : ℚ)) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251620.P12559498226329648050

/-! ## A251620.P629840295639608880

`∑[A251417(n+1)]+1-A251417(n+1)`
-/

namespace A251620.P629840295639608880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251417 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A251417 (n + 1))

end

end A251620.P629840295639608880

/-! ## A251620.P10410256851421110955

`A098551(A251595(n+1))-A251417(n+1)`
-/

namespace A251620.P10410256851421110955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098551 (A251595 (n + 1)).toNat - A251417 (n + 1)

end

end A251620.P10410256851421110955

/-! ## A251620.P17321927131010967086

`A098551(eq[A098551(n+1), A249943(n+1)]+1)`
-/

namespace A251620.P17321927131010967086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098551 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249943 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098551 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A251620.P17321927131010967086

/-! ## A251620.P11191682053728143681

`lt[0, char[A249943(n+1)]]`
-/

namespace A251620.P11191682053728143681
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249943 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A251620.P11191682053728143681

/-! ## A251620.P4778935824877337718

`lt[A098550(n+1), A251416(n+1)]+1`
-/

namespace A251620.P4778935824877337718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098550 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251416 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A251620.P4778935824877337718

/-! ## A251620.P9043513467091534587

`record[A249943(n+1)%A249982(n+1)]`
-/

namespace A251620.P9043513467091534587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A249943 (n + 1)) (A249982 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251620.P9043513467091534587

/-! ## A251620.P7532364346265160007

`record[A098550(A098553(n+1))]`
-/

namespace A251620.P7532364346265160007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098550 (A098553 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251620.P7532364346265160007

/-!
# A251621: Run lengths in A249943.

The programs for A251621, there is no canonical definition to state claims against.
-/

/-! ## A251621.P18405393542348073267

`Δ[eq[A098551(n+1), A249943(n+1)]]`
-/

namespace A251621.P18405393542348073267
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098551 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249943 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A251621.P18405393542348073267

/-! ## A251621.P18042088516138004059

`A000007(n)+Δ[A251595(A000007(n)+n)]`
-/

namespace A251621.P18042088516138004059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251595 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (f1 (n + 1) - f1 n)

end

end A251621.P18042088516138004059

/-! ## A251621.P13490286335456180420

`A251595(n+1)-A098550(record[A098551(n+1)])`
-/

namespace A251621.P13490286335456180420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098551 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251595 (n + 1) - A098550 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A251621.P13490286335456180420

/-! ## A251621.P17012762613367599222

`Δ[A098550(A251620(n+1))]`
-/

namespace A251621.P17012762613367599222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098550 (A251620 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A251621.P17012762613367599222

/-! ## A251621.P2417827919992232960

`Δ[A098550(record[A098551(n+1)])]`
-/

namespace A251621.P2417827919992232960
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098551 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098550 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A251621.P2417827919992232960

/-!
# A251622: a(1) = 1; a(2) = 2; for n > 2, a(n) = smallest number not already used which shares a factor with a(n-1) or a(n-2).

The programs for A251622, there is no canonical definition to state claims against.
-/

/-! ## A251622.P8839230806146495256

`A089088(comp[-a(and(n, n-1))])` with `a(0)=12`
-/

namespace A251622.P8839230806146495256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [12] fun n f1 =>
  -f1 (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089088 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A251622.P8839230806146495256

/-! ## A251622.P490739784945580373

`A089088(comp[15-A175607(n+1)])`
-/

namespace A251622.P490739784945580373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  15 - A175607 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089088 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A251622.P490739784945580373

/-! ## A251622.P13276620550231563735

`A089088(comp[20*n-A037690(n+1)])`
-/

namespace A251622.P13276620550231563735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (20 * n : ℤ) - A037690 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089088 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A251622.P13276620550231563735

/-! ## A251622.P18380185957750204622

`A089088(comp[A005106(n+1)-A059601(n)])`
-/

namespace A251622.P18380185957750204622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005106 (n + 1) - A059601 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089088 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A251622.P18380185957750204622

/-! ## A251622.P3742223193515253320

`A089088(A084176(n+1)%A118670(n+1))`
-/

namespace A251622.P3742223193515253320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089088 (Int.tmod (A084176 (n + 1)) (A118670 (n + 1))).toNat

end

end A251622.P3742223193515253320

/-!
# A251623: Primes p with property that the sum of the 4th powers of the successive gaps between primes <= p is a prime number.

The programs for A251623, there is no canonical definition to state claims against.
-/

/-! ## A251623.P13023128361702974272

`∩[A189136(n+1), A360041(n+1)]`
-/

namespace A251623.P13023128361702974272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189136 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360041 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A251623.P13023128361702974272

/-!
# A251627: Circular disk sequence for the lattice of the Archimedean tiling (3,4,6,4).

The programs for A251627, there is no canonical definition to state claims against.
-/

/-! ## A251627.P2160711388566823982

`∑[A251628(n)]`
-/

namespace A251627.P2160711388566823982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251628 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A251627.P2160711388566823982

/-! ## A251627.P11290582503780312771

`A251628(gcd(n, 2*n))+a(n-1)` with `a(0)=1`
-/

namespace A251627.P11290582503780312771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A251628 (Nat.gcd n (2 * n)) + a (n - 1)

end

end A251627.P11290582503780312771

/-! ## A251627.P14165422289408553809

`A251628(abs(1-n)+1)+a(n-1)` with `a(0)=1`
-/

namespace A251627.P14165422289408553809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A251628 (|1 - (n : ℤ)| + 1).toNat + a (n - 1)

end

end A251627.P14165422289408553809

/-! ## A251627.P5063330303221031032

`a(n-1)-(A000007(n)-A251628(n))` with `a(0)=1`
-/

namespace A251627.P5063330303221031032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) - (A000007 n - A251628 n)

end

end A251627.P5063330303221031032

/-! ## A251627.P5858546009162963355

`a(n-1)+A251628(n)%A023004(n)` with `a(0)=1`
-/

namespace A251627.P5858546009162963355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Int.tmod (A251628 n) (A023004 n)

end

end A251627.P5858546009162963355

/-! ## A251627.P14037346054559685165

`∏{d}[A251628(n)+a(n-1), A014963(#)]` with `a(0)=1`
-/

namespace A251627.P14037346054559685165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A251628 n + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A014963 d

end

end A251627.P14037346054559685165

/-! ## A251627.P7663154093807169585

`a(n-1)+A251628(n)+A000038(n+1)` with `a(0)=1`
-/

namespace A251627.P7663154093807169585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A251628 n + A000038 (n + 1))

end

end A251627.P7663154093807169585

/-! ## A251627.P936466035357278530

`A251628(n)+A014681(A014681(a(n-1)))` with `a(0)=1`
-/

namespace A251627.P936466035357278530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A251628 n + A014681 (A014681 (a (n - 1)).toNat).toNat

end

end A251627.P936466035357278530

/-!
# A251629: Rational parts of the Q(sqrt(2)) integers giving the squared radii of the lattice point circles for the Archimedean tiling (4,8,8).

The programs for A251629, there is no canonical definition to state claims against.
-/

/-! ## A251629.P2897715903844762571

`A358752(A000055(n))+A057354(2*n+1)`
-/

namespace A251629.P2897715903844762571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358752 (A000055 n).toNat + A057354 (2 * n + 1)

end

end A251629.P2897715903844762571

/-! ## A251629.P17860202234294051735

`1-A043562(record[A123019(n)])+n`
-/

namespace A251629.P17860202234294051735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123019 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A043562 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat + (n : ℤ)

end

end A251629.P17860202234294051735

/-! ## A251629.P9265873021614398680

`A291769(n)-A043562(record[A123019(n)])`
-/

namespace A251629.P9265873021614398680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123019 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291769 n - A043562 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A251629.P9265873021614398680

/-! ## A251629.P11051250725146410602

`A008619(2*n)-A043562(record[A123019(n)])`
-/

namespace A251629.P11051250725146410602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123019 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * n) - A043562 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A251629.P11051250725146410602

/-! ## A251629.P8926474352767479743

`A052938(2*n)-A043562(record[A123019(n)])`
-/

namespace A251629.P8926474352767479743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123019 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052938 (2 * n) - A043562 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A251629.P8926474352767479743

/-!
# A251630: Column sums of the n X n square array filled with numbers from 1 to n^2, row by row, from left to right.

The programs for A251630, there is no canonical definition to state claims against.
-/

/-! ## A251630.P9887715236368817919

`(n+1)*∑[char[∑[n]]]`
-/

namespace A251630.P9887715236368817919
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A251630.P9887715236368817919

/-! ## A251630.P5934492411332252368

`-xor(n, -1)*∑[char[∑[n]]]`
-/

namespace A251630.P5934492411332252368
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(Int.xor (n : ℤ) (-1) * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ))

end

end A251630.P5934492411332252368

/-! ## A251630.P15829922068729480197

`floor(∑[char[∑[n]]]/acot(n+1))`
-/

namespace A251630.P15829922068729480197
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ) / SequenceMachineLib.acot (n + 1 : ℝ)⌋

end

end A251630.P15829922068729480197

/-! ## A251630.P14744362195035825457

`round(∑[char[∑[n]]]/acot(n+1))`
-/

namespace A251630.P14744362195035825457
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ) / SequenceMachineLib.acot (n + 1 : ℝ))

end

end A251630.P14744362195035825457

/-! ## A251630.P16328727305362993412

`(n+1)/∑[char[C(n, 2)]]^-1`
-/

namespace A251630.P16328727305362993412
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) ^ (-1 : ℤ)

end

end A251630.P16328727305362993412

/-! ## A251630.P11068357776755390739

`abs((n+1)*(comp[C(n, 2)]-(n+1)))`
-/

namespace A251630.P11068357776755390739
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n + 1 : ℤ) * ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n + 1 : ℤ))|

end

end A251630.P11068357776755390739

/-! ## A251630.P8632287862197446391

`(n+1)*comp[C(n, 2)]-(n+1)²`
-/

namespace A251630.P8632287862197446391
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - ((n + 1) ^ 2 : ℤ)

end

end A251630.P8632287862197446391

/-! ## A251630.P14251523476641263214

`(n+1)*(comp[C(n, 2)]-n)-(n+1)`
-/

namespace A251630.P14251523476641263214
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)) - (n + 1 : ℤ)

end

end A251630.P14251523476641263214

/-! ## A251630.P10777487557030068555

`A166447(2*(n+1))/2`
-/

namespace A251630.P10777487557030068555
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166447 (2 * (n + 1)) : ℚ) / 2

end

end A251630.P10777487557030068555

/-! ## A251630.P9134549126728764927

`A182814(n)+A004736(n+1)`
-/

namespace A251630.P9134549126728764927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182814 n + A004736 (n + 1)

end

end A251630.P9134549126728764927

/-!
# A251632: Circular disk sequence for the lattice of the Archimedean tiling (4,8,8).

The programs for A251632, there is no canonical definition to state claims against.
-/

/-! ## A251632.P12926406523956425752

`∑[A251633(n)]`
-/

namespace A251632.P12926406523956425752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251633 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A251632.P12926406523956425752

/-! ## A251632.P18430083343931376942

`A251633(comp[2*n-1]-n)+a(n-1)` with `a(0)=1`
-/

namespace A251632.P18430083343931376942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A251633 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n - n) + a (n - 1)

end

end A251632.P18430083343931376942

/-! ## A251632.P3643415922986233665

`abs(A251633(n)+a(A023443(n)))` with `a(0)=1`
-/

namespace A251632.P3643415922986233665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  |A251633 n + a (A023443 n).toNat|

end

end A251632.P3643415922986233665

/-! ## A251632.P3514277010932036904

`A028310(A251633(n)+a(n-1))` with `a(0)=1`
-/

namespace A251632.P3514277010932036904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A028310 (A251633 n + a (n - 1)).toNat

end

end A251632.P3514277010932036904

/-! ## A251632.P9816104177718664802

`a(n-1)+A251633(n)+A000038(n)` with `a(0)=1`
-/

namespace A251632.P9816104177718664802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A251633 n + A000038 n)

end

end A251632.P9816104177718664802

/-! ## A251632.P15405181950532701756

`(A251633(n)+a(n-1))*A007318(C(2, n))` with `a(0)=1`
-/

namespace A251632.P15405181950532701756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (A251633 n + a (n - 1)) * A007318 (Nat.choose 2 n)

end

end A251632.P15405181950532701756

/-!
# A251634: Numerators of inverse Riordan triangle of Riordan triangle A029635. Riordan (1/(1-x), x/(1+2*x)). Triangle read by rows for 0 <= m <= n.

The programs for A251634, there is no canonical definition to state claims against.
-/

/-! ## A251634.P17142185184515510159

`A248810((2*n)%comp[∑[n-1]])`
-/

namespace A251634.P17142185184515510159
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248810 (2 * n % SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A251634.P17142185184515510159

/-! ## A251634.P17680182308673229941

`A248810(C(n, n²)+n-A002024(n+1))`
-/

namespace A251634.P17680182308673229941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248810 ((Nat.choose n (n ^ 2) + n : ℤ) - A002024 (n + 1)).toNat

end

end A251634.P17680182308673229941

/-!
# A251635: Riordan array (1-2*x,x), inverse of Riordan array (1/(1-2*x), x) = A130321.

The programs for A251635, the canonical program `A251635.P2288493939989281121` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A251635 has offset 0).

The definition of A251635 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A251635.P6651904864408927051

`A112334(n)%3`
-/

namespace A251635.P6651904864408927051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A112334 n) 3

end

end A251635.P6651904864408927051

namespace A251635

/-- `A112334(n)%3` -/
def P6651904864408927051.Spec : Prop :=
  ∀ n, P6651904864408927051.a n = A251635 n

end A251635

/-! ## A251635.P17177002217325091743

`floor(tan(A167374(n)))`
-/

namespace A251635.P17177002217325091743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.tan (A167374 n : ℝ)⌋

end

end A251635.P17177002217325091743

namespace A251635

/-- `floor(tan(A167374(n)))` -/
def P17177002217325091743.Spec : Prop :=
  ∀ n, P17177002217325091743.a n = A251635 n

end A251635

/-! ## A251635.P2288493939989281121

`xor(1, 1-A156319(n+1))`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A251635

/-- `xor(1, 1-A156319(n+1))` -/
def P2288493939989281121.Spec : Prop :=
  ∀ n, P2288493939989281121.a n = A251635 n

theorem P2288493939989281121.correct : P2288493939989281121.Spec := by
  intro n
  simp only [A251635]

end A251635

/-! ## A251635.P1248197286471235863

`A086831(A055461(n+1))`
-/

namespace A251635.P1248197286471235863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086831 (A055461 (n + 1)).toNat

end

end A251635.P1248197286471235863

namespace A251635

/-- `A086831(A055461(n+1))` -/
def P1248197286471235863.Spec : Prop :=
  ∀ n, P1248197286471235863.a n = A251635 n

end A251635

/-! ## A251635.P15319490261395783976

`A099211(A025581(n))%4`
-/

namespace A251635.P15319490261395783976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A099211 (A025581 n).toNat) 4

end

end A251635.P15319490261395783976

namespace A251635

/-- `A099211(A025581(n))%4` -/
def P15319490261395783976.Spec : Prop :=
  ∀ n, P15319490261395783976.a n = A251635 n

end A251635

/-! ## A251635.P3094093283685464140

`A196389(n)-A132681(n)`
-/

namespace A251635.P3094093283685464140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196389 n - A132681 n

end

end A251635.P3094093283685464140

namespace A251635

/-- `A196389(n)-A132681(n)` -/
def P3094093283685464140.Spec : Prop :=
  ∀ n, P3094093283685464140.a n = A251635 n

end A251635

/-! ## A251635.P282211497738404210

`A097806(n)*A105522(n)`
-/

namespace A251635.P282211497738404210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097806 n * A105522 n

end

end A251635.P282211497738404210

namespace A251635

/-- `A097806(n)*A105522(n)` -/
def P282211497738404210.Spec : Prop :=
  ∀ n, P282211497738404210.a n = A251635 n

end A251635

/-! ## A251635.P8480039270371730746

`A097806(n)*A106190(n)`
-/

namespace A251635.P8480039270371730746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097806 n * A106190 n

end

end A251635.P8480039270371730746

namespace A251635

/-- `A097806(n)*A106190(n)` -/
def P8480039270371730746.Spec : Prop :=
  ∀ n, P8480039270371730746.a n = A251635 n

end A251635

/-! ## A251635.P14080620865372349626

`A097806(n)*A114284(n)`
-/

namespace A251635.P14080620865372349626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097806 n * A114284 n

end

end A251635.P14080620865372349626

namespace A251635

/-- `A097806(n)*A114284(n)` -/
def P14080620865372349626.Spec : Prop :=
  ∀ n, P14080620865372349626.a n = A251635 n

end A251635

/-! ## A251635.P7505236521738078034

`A048494(n)*A167374(n)`
-/

namespace A251635.P7505236521738078034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048494 n * A167374 n

end

end A251635.P7505236521738078034

namespace A251635

/-- `A048494(n)*A167374(n)` -/
def P7505236521738078034.Spec : Prop :=
  ∀ n, P7505236521738078034.a n = A251635 n

end A251635

/-! ## A251635.P11116428899306639995

`A052310(n)*A167374(n)`
-/

namespace A251635.P11116428899306639995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052310 n * A167374 n

end

end A251635.P11116428899306639995

namespace A251635

/-- `A052310(n)*A167374(n)` -/
def P11116428899306639995.Spec : Prop :=
  ∀ n, P11116428899306639995.a n = A251635 n

end A251635

/-! ## A251635.P4781313414560074663

`A052313(n)*A167374(n)`
-/

namespace A251635.P4781313414560074663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052313 n * A167374 n

end

end A251635.P4781313414560074663

namespace A251635

/-- `A052313(n)*A167374(n)` -/
def P4781313414560074663.Spec : Prop :=
  ∀ n, P4781313414560074663.a n = A251635 n

end A251635

/-! ## A251635.P5911751376005701801

`A054453(n)*A167374(n)`
-/

namespace A251635.P5911751376005701801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054453 n * A167374 n

end

end A251635.P5911751376005701801

namespace A251635

/-- `A054453(n)*A167374(n)` -/
def P5911751376005701801.Spec : Prop :=
  ∀ n, P5911751376005701801.a n = A251635 n

end A251635

/-! ## A251635.P6583131089281924521

`A097806(n)*A126127(n)`
-/

namespace A251635.P6583131089281924521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097806 n * A126127 n

end

end A251635.P6583131089281924521

namespace A251635

/-- `A097806(n)*A126127(n)` -/
def P6583131089281924521.Spec : Prop :=
  ∀ n, P6583131089281924521.a n = A251635 n

end A251635

/-! ## A251635.P12933981339970685066

`A105438(n)*A167374(n)`
-/

namespace A251635.P12933981339970685066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105438 n * A167374 n

end

end A251635.P12933981339970685066

namespace A251635

/-- `A105438(n)*A167374(n)` -/
def P12933981339970685066.Spec : Prop :=
  ∀ n, P12933981339970685066.a n = A251635 n

end A251635

/-! ## A251635.P13480884028426815371

`A106187(n)*A167374(n)`
-/

namespace A251635.P13480884028426815371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106187 n * A167374 n

end

end A251635.P13480884028426815371

namespace A251635

/-- `A106187(n)*A167374(n)` -/
def P13480884028426815371.Spec : Prop :=
  ∀ n, P13480884028426815371.a n = A251635 n

end A251635

/-! ## A251635.P10563238140410328883

`A114283(n)*A167374(n)`
-/

namespace A251635.P10563238140410328883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114283 n * A167374 n

end

end A251635.P10563238140410328883

namespace A251635

/-- `A114283(n)*A167374(n)` -/
def P10563238140410328883.Spec : Prop :=
  ∀ n, P10563238140410328883.a n = A251635 n

end A251635

/-! ## A251635.P10030152476146372049

`A097806(n)*A185018(n)`
-/

namespace A251635.P10030152476146372049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097806 n * A185018 n

end

end A251635.P10030152476146372049

namespace A251635

/-- `A097806(n)*A185018(n)` -/
def P10030152476146372049.Spec : Prop :=
  ∀ n, P10030152476146372049.a n = A251635 n

end A251635

/-! ## A251635.P8448424505851604725

`A130321(n)*A167374(n)`
-/

namespace A251635.P8448424505851604725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 n * A167374 n

end

end A251635.P8448424505851604725

namespace A251635

/-- `A130321(n)*A167374(n)` -/
def P8448424505851604725.Spec : Prop :=
  ∀ n, P8448424505851604725.a n = A251635 n

end A251635

/-! ## A251635.P6826199646972948783

`A119830(n)%A054126(n)`
-/

namespace A251635.P6826199646972948783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A119830 n) (A054126 n)

end

end A251635.P6826199646972948783

namespace A251635

/-- `A119830(n)%A054126(n)` -/
def P6826199646972948783.Spec : Prop :=
  ∀ n, P6826199646972948783.a n = A251635 n

end A251635

/-!
# A251636: Inverse of the Riordan array A251634: Riordan ((1-3*x)/(1-2*x), x/(1-2*x)).

The programs for A251636, the canonical program `A251636.P11846366204249571260` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A251636 has offset 0).

The definition of A251636 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A251636.P11846366204249571260

`abs(2*A118800(n))-A209149(n+1)`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A251636

/-- `abs(2*A118800(n))-A209149(n+1)` -/
def P11846366204249571260.Spec : Prop :=
  ∀ n, P11846366204249571260.a n = A251636 n

theorem P11846366204249571260.correct : P11846366204249571260.Spec := by
  intro n
  simp only [A251636]

end A251636

/-! ## A251636.P17308399449695863144

`Δ[-A097805(n)*A130321(n)]`
-/

namespace A251636.P17308399449695863144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A097805 n * A130321 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A251636.P17308399449695863144

namespace A251636

/-- `Δ[-A097805(n)*A130321(n)]` -/
def P17308399449695863144.Spec : Prop :=
  ∀ n, P17308399449695863144.a n = A251636 n

end A251636

/-! ## A251636.P9177629586760997938

`Δ[-A057728(n+1)*A097805(n)]`
-/

namespace A251636.P9177629586760997938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A057728 (n + 1) * A097805 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A251636.P9177629586760997938

namespace A251636

/-- `Δ[-A057728(n+1)*A097805(n)]` -/
def P9177629586760997938.Spec : Prop :=
  ∀ n, P9177629586760997938.a n = A251636 n

end A251636

/-! ## A251636.P9741242297960136607

`Δ[A097805(n)*A157823(A193739(n))]`
-/

namespace A251636.P9741242297960136607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097805 n * A157823 (A193739 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A251636.P9741242297960136607

namespace A251636

/-- `Δ[A097805(n)*A157823(A193739(n))]` -/
def P9741242297960136607.Spec : Prop :=
  ∀ n, P9741242297960136607.a n = A251636 n

end A251636

/-!
# A251637: Square array read by antidiagonals containing in row n the multiples of prime(n) in A098550 in order of appearance.

The programs for A251637, there is no canonical definition to state claims against.
-/

/-! ## A251637.P2940626709150020484

`A104887(n+1)*A251715(n+1)`
-/

namespace A251637.P2940626709150020484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104887 (n + 1) * A251715 (n + 1)

end

end A251637.P2940626709150020484

/-! ## A251637.P1969636999963838223

`A000040(A004736(n+1))*A251715(n+1)`
-/

namespace A251637.P1969636999963838223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A004736 (n + 1)).toNat * A251715 (n + 1)

end

end A251637.P1969636999963838223

/-! ## A251637.P7424597301431204053

`A000040(A025581(n)+1)*A251715(n+1)`
-/

namespace A251637.P7424597301431204053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A025581 n + 1).toNat * A251715 (n + 1)

end

end A251637.P7424597301431204053

/-! ## A251637.P17518719164145873514

`A098550(A251716(n+1))`
-/

namespace A251637.P17518719164145873514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098550 (A251716 (n + 1)).toNat

end

end A251637.P17518719164145873514

/-! ## A251637.P1437961169071347303

`A098552(A098551(A251716(n+1)%A251544(n+1)))`
-/

namespace A251637.P1437961169071347303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098552 (A098551 (Int.tmod (A251716 (n + 1)) (A251544 (n + 1))).toNat).toNat

end

end A251637.P1437961169071347303

/-!
# A251638: Number of (n+2)X(1+2) 0..2 arrays with some row, column, diagonal or antidiagonal in every 3X3 subblock summing to 3.

The programs for A251638, there is no canonical definition to state claims against.
-/

/-! ## A251638.P9596238970878263957

`A251641(∑[n]+1)`
-/

namespace A251638.P9596238970878263957
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251641 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A251638.P9596238970878263957

/-! ## A251638.P14141118548689224704

`or(1, A251641(A000124(n)))`
-/

namespace A251638.P14141118548689224704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A251641 (A000124 n).toNat)

end

end A251638.P14141118548689224704

/-! ## A251638.P5048953804051385704

`record[A251641(A166017(n+1))]`
-/

namespace A251638.P5048953804051385704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251641 (A166017 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251638.P5048953804051385704

/-! ## A251638.P4266804346353435353

`record[A010054(n)*A251641(n+1)]`
-/

namespace A251638.P4266804346353435353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A251641 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251638.P4266804346353435353

/-!
# A251639: Number of (n+2)X(2+2) 0..2 arrays with some row, column, diagonal or antidiagonal in every 3X3 subblock summing to 3.

The programs for A251639, there is no canonical definition to state claims against.
-/

/-! ## A251639.P8750387396892026358

`A251641(A000124(n+1)+1)`
-/

namespace A251639.P8750387396892026358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251641 (A000124 (n + 1) + 1).toNat

end

end A251639.P8750387396892026358

/-! ## A251639.P2755442325967675464

`record[A251641(A166017(n+1)+1)]`
-/

namespace A251639.P2755442325967675464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251641 (A166017 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251639.P2755442325967675464

/-!
# A251642: Records values in A072994.

The programs for A251642, there is no canonical definition to state claims against.
-/

/-! ## A251642.P7384729776906606666

`A160595(A252594(n+1))+char[1]`
-/

namespace A251642.P7384729776906606666
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160595 (A252594 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A251642.P7384729776906606666

/-! ## A251642.P9160231384687579974

`A182114(∑[n]+1)+A160595(A252594(n+1))`
-/

namespace A251642.P9160231384687579974
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182114 (∑ j ∈ Finset.range (n + 1), f1 j + 1) + A160595 (A252594 (n + 1)).toNat

end

end A251642.P9160231384687579974

/-! ## A251642.P15290814801632179939

`A160595(gcd(2, A089026(n+1))*A252594(n+1))`
-/

namespace A251642.P15290814801632179939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160595 ((Int.gcd 2 (A089026 (n + 1)) : ℤ) * A252594 (n + 1)).toNat

end

end A251642.P15290814801632179939

/-! ## A251642.P4739299897223136452

`A130321(C(2, n+1))*A160595(A252594(n+1))`
-/

namespace A251642.P4739299897223136452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 (Nat.choose 2 (n + 1)) * A160595 (A252594 (n + 1)).toNat

end

end A251642.P4739299897223136452

/-! ## A251642.P3010724524218437319

`A160595(A252594(n+1))-A003309(n+1)%2+1`
-/

namespace A251642.P3010724524218437319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160595 (A252594 (n + 1)).toNat - Int.tmod (A003309 (n + 1)) 2 + 1

end

end A251642.P3010724524218437319

/-! ## A251642.P2403970537522309901

`A255365(A151704(n))+A160595(A252594(n+1))`
-/

namespace A251642.P2403970537522309901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255365 (A151704 n).toNat + A160595 (A252594 (n + 1)).toNat

end

end A251642.P2403970537522309901

/-!
# A251643: Smallest composite c such that F_(c-(c/p)) == 0 (mod c) with p = prime(n), F_k = A000045(k) and a/b the Kronecker symbol.

The programs for A251643, there is no canonical definition to state claims against.
-/

/-! ## A251643.P17506911730316623389

`n*A139557(a(n-2))` with `a(0)=12, a(1)=12, a(2)=25`
-/

namespace A251643.P17506911730316623389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [12, 12, 25] fun n a =>
  (n : ℤ) * A139557 (a (n - 2)).toNat

end

end A251643.P17506911730316623389

/-!
# A251644: Number of (n+2) X (n+2) 0..3 arrays with no row, column, diagonal or antidiagonal in any 3X3 subblock summing to 0 2 4 5 7 or 9.

The programs for A251644, there is no canonical definition to state claims against.
-/

/-! ## A251644.P13111357806202869423

`A251652((n+1)²+n²)`
-/

namespace A251644.P13111357806202869423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251652 ((n + 1) ^ 2 + n ^ 2)

end

end A251644.P13111357806202869423

/-! ## A251644.P11295673277721872615

`lcm(2, A251652(A001844(n)))`
-/

namespace A251644.P11295673277721872615
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A251652 (A001844 n).toNat)

end

end A251644.P11295673277721872615

/-! ## A251644.P3266960366775394416

`record[gcd(A251652(n+1), A274650(n))]`
-/

namespace A251644.P3266960366775394416
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A251652 (n + 1)) (A274650 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251644.P3266960366775394416

/-! ## A251644.P10818510879075020620

`A251652(A001844(n))/A007318(∑[n])`
-/

namespace A251644.P10818510879075020620
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A251652 (A001844 n).toNat : ℚ) / (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A251644.P10818510879075020620

/-! ## A251644.P15925104148708395484

`A251652(A001844(n))/A000010(C(2, n)!)`
-/

namespace A251644.P15925104148708395484
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A251652 (A001844 n).toNat : ℚ) / (A000010 (Nat.factorial (Nat.choose 2 n)) : ℚ)

end

end A251644.P15925104148708395484

/-!
# A251645: Number of (n+2) X (1+2) 0..3 arrays with no row, column, diagonal or antidiagonal in any 3 X 3 subblock summing to 0 2 4 5 7 or 9.

The programs for A251645, there is no canonical definition to state claims against.
-/

/-! ## A251645.P12214150076924178932

`A251652(∑[n]+1)`
-/

namespace A251645.P12214150076924178932
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251652 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A251645.P12214150076924178932

/-! ## A251645.P824541469453309284

`lcm(2, A251652(A000124(n)))`
-/

namespace A251645.P824541469453309284
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A251652 (A000124 n).toNat)

end

end A251645.P824541469453309284

/-! ## A251645.P3781352041820503600

`A251652(A000124(n))%A251646(n+1)`
-/

namespace A251645.P3781352041820503600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A251652 (A000124 n).toNat) (A251646 (n + 1))

end

end A251645.P3781352041820503600

/-! ## A251645.P1588694646568976287

`A071028((8-n)²)*A251652(A000124(n))`
-/

namespace A251645.P1588694646568976287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071028 ((8 - (n : ℤ)) ^ 2).toNat * A251652 (A000124 n).toNat

end

end A251645.P1588694646568976287

/-! ## A251645.P3443301467905485988

`A178334(A207376(n+1))*A251652(A000124(n))`
-/

namespace A251645.P3443301467905485988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 (A207376 (n + 1)).toNat * A251652 (A000124 n).toNat

end

end A251645.P3443301467905485988

/-!
# A251646: Number of (n+2)X(2+2) 0..3 arrays with no row, column, diagonal or antidiagonal in any 3X3 subblock summing to 0 2 4 5 7 or 9.

The programs for A251646, there is no canonical definition to state claims against.
-/

/-! ## A251646.P7672930741524003687

`A251652(∑[n+1]+2)`
-/

namespace A251646.P7672930741524003687
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251652 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A251646.P7672930741524003687

/-! ## A251646.P18409804059974325316

`A071028((8-n)²)*A251652(A133263(n+1))`
-/

namespace A251646.P18409804059974325316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071028 ((8 - (n : ℤ)) ^ 2).toNat * A251652 (A133263 (n + 1)).toNat

end

end A251646.P18409804059974325316

/-! ## A251646.P9190917924330864386

`gcd(2, A001567(n+1))*A251652(A133263(n+1))`
-/

namespace A251646.P9190917924330864386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 2 (A001567 (n + 1)) : ℤ) * A251652 (A133263 (n + 1)).toNat

end

end A251646.P9190917924330864386

/-! ## A251646.P77133102416356442

`gcd(3, A005937(n+1))*A251652(A133263(n+1))`
-/

namespace A251646.P77133102416356442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 3 (A005937 (n + 1)) : ℤ) * A251652 (A133263 (n + 1)).toNat

end

end A251646.P77133102416356442

/-! ## A251646.P986200994679053500

`gcd(n+1, A005382(n+1))*A251652(A133263(n+1))`
-/

namespace A251646.P986200994679053500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (n + 1 : ℤ) (A005382 (n + 1)) : ℤ) * A251652 (A133263 (n + 1)).toNat

end

end A251646.P986200994679053500

/-!
# A251647: Number of (n+2)X(3+2) 0..3 arrays with no row, column, diagonal or antidiagonal in any 3X3 subblock summing to 0 2 4 5 7 or 9.

The programs for A251647, there is no canonical definition to state claims against.
-/

/-! ## A251647.P4188627277478524390

`A251652(∑[n+2]+4)`
-/

namespace A251647.P4188627277478524390
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251652 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A251647.P4188627277478524390

/-! ## A251647.P12245743419303934760

`lcm(2, A251652(A167614(n+1)))`
-/

namespace A251647.P12245743419303934760
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A251652 (A167614 (n + 1)).toNat)

end

end A251647.P12245743419303934760

/-! ## A251647.P9023502788949406403

`A251652(A167614(n+1))%A016892(n)`
-/

namespace A251647.P9023502788949406403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A251652 (A167614 (n + 1)).toNat) (A016892 n)

end

end A251647.P9023502788949406403

/-! ## A251647.P14007742250524444480

`or(A000038(n), A251652(A167614(n+1)))`
-/

namespace A251647.P14007742250524444480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000038 n) (A251652 (A167614 (n + 1)).toNat)

end

end A251647.P14007742250524444480

/-! ## A251647.P16135378037798273186

`or(A036577(2*n+1), A251652(A167614(n+1)))`
-/

namespace A251647.P16135378037798273186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A036577 (2 * n + 1)) (A251652 (A167614 (n + 1)).toNat)

end

end A251647.P16135378037798273186

/-!
# A251648: Number of (n+2)X(4+2) 0..3 arrays with no row, column, diagonal or antidiagonal in any 3X3 subblock summing to 0 2 4 5 7 or 9.

The programs for A251648, there is no canonical definition to state claims against.
-/

/-! ## A251648.P17696105413742469708

`A251652(A141214(n)+7)`
-/

namespace A251648.P17696105413742469708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251652 (A141214 n + 7).toNat

end

end A251648.P17696105413742469708

/-! ## A251648.P17270761966372682748

`A251652(A052905(n)+9)`
-/

namespace A251648.P17270761966372682748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251652 (A052905 n + 9).toNat

end

end A251648.P17270761966372682748

/-! ## A251648.P12098259242964795556

`A251652(A055999(n)+10)`
-/

namespace A251648.P12098259242964795556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251652 (A055999 n + 10).toNat

end

end A251648.P12098259242964795556

/-! ## A251648.P433651341565463876

`A251652(A167614(n+2)+1)`
-/

namespace A251648.P433651341565463876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251652 (A167614 (n + 2) + 1).toNat

end

end A251648.P433651341565463876

/-! ## A251648.P15963872012633897745

`A251652(A166136(n+2)-2)`
-/

namespace A251648.P15963872012633897745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251652 (A166136 (n + 2) - 2).toNat

end

end A251648.P15963872012633897745

/-!
# A251649: Number of (n+2)X(5+2) 0..3 arrays with no row, column, diagonal or antidiagonal in any 3X3 subblock summing to 0 2 4 5 7 or 9.

The programs for A251649, there is no canonical definition to state claims against.
-/

/-! ## A251649.P3790013242221067397

`A251652(A167499(n+3))`
-/

namespace A251649.P3790013242221067397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251652 (A167499 (n + 3)).toNat

end

end A251649.P3790013242221067397

/-! ## A251649.P15561560298961869246

`A251652(A056000(n)+15)`
-/

namespace A251649.P15561560298961869246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251652 (A056000 n + 15).toNat

end

end A251649.P15561560298961869246

/-! ## A251649.P1496520222063377226

`A251652(A000096(n+3)+6)`
-/

namespace A251649.P1496520222063377226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251652 (A000096 (n + 3) + 6).toNat

end

end A251649.P1496520222063377226

/-! ## A251649.P3862604860128706320

`A251652(A000217(n+4)+5)`
-/

namespace A251649.P3862604860128706320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251652 (A000217 (n + 4) + 5).toNat

end

end A251649.P3862604860128706320

/-! ## A251649.P9134956847844902236

`A251652(A055999(n+3)-2*n)`
-/

namespace A251649.P9134956847844902236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251652 (A055999 (n + 3) - (2 * n : ℤ)).toNat

end

end A251649.P9134956847844902236

/-!
# A251650: Number of (n+2)X(6+2) 0..3 arrays with no row, column, diagonal or antidiagonal in any 3X3 subblock summing to 0 2 4 5 7 or 9.

The programs for A251650, there is no canonical definition to state claims against.
-/

/-! ## A251650.P14393567377481642815

`A251652(A166136(n+4))`
-/

namespace A251650.P14393567377481642815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251652 (A166136 (n + 4)).toNat

end

end A251650.P14393567377481642815

/-! ## A251650.P959510086369223249

`A251652(A000217(n+5)+6)`
-/

namespace A251650.P959510086369223249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251652 (A000217 (n + 5) + 6).toNat

end

end A251650.P959510086369223249

/-! ## A251650.P4137684201427855210

`A251652(A374007(n+1))`
-/

namespace A251650.P4137684201427855210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251652 (A374007 (n + 1)).toNat

end

end A251650.P4137684201427855210

/-! ## A251650.P10805180659978042643

`A251652(A052905(n+3))`
-/

namespace A251650.P10805180659978042643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251652 (A052905 (n + 3)).toNat

end

end A251650.P10805180659978042643

/-! ## A251650.P9299182851745003924

`A251652(A055999(n+3)+1)`
-/

namespace A251650.P9299182851745003924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251652 (A055999 (n + 3) + 1).toNat

end

end A251650.P9299182851745003924

/-!
# A251651: Number of (n+2)X(7+2) 0..3 arrays with no row, column, diagonal or antidiagonal in any 3X3 subblock summing to 0 2 4 5 7 or 9.

The programs for A251651, there is no canonical definition to state claims against.
-/

/-! ## A251651.P2582324007589635891

`A251652(A167499(n+5)+2)`
-/

namespace A251651.P2582324007589635891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251652 (A167499 (n + 5) + 2).toNat

end

end A251651.P2582324007589635891

/-! ## A251651.P5609713549728653543

`A251652(A000124(n+6)+6)`
-/

namespace A251651.P5609713549728653543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251652 (A000124 (n + 6) + 6).toNat

end

end A251651.P5609713549728653543

/-! ## A251651.P14928028915757753545

`A251652(A000217(n+6)+7)`
-/

namespace A251651.P14928028915757753545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251652 (A000217 (n + 6) + 7).toNat

end

end A251651.P14928028915757753545

/-! ## A251651.P16197752494581474776

`A251652(A155212(n+2)+15)`
-/

namespace A251651.P16197752494581474776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251652 (A155212 (n + 2) + 15).toNat

end

end A251651.P16197752494581474776

/-! ## A251651.P12302518250736056274

`A251652(A374008(n+1))`
-/

namespace A251651.P12302518250736056274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251652 (A374008 (n + 1)).toNat

end

end A251651.P12302518250736056274

/-!
# A251653: 5-step Fibonacci sequence starting with 0,0,1,0,0.

The programs for A251653, the canonical program `A251653.P18232520072337800888` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A251653 has offset 0).

The definition of A251653 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 346 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A251653.P18232520072337800888

`a(n-1)+a(n-2)+a(n-3)+a(n-4)+a(n-5)` with `a(0)=0, a(1)=0, a(2)=1, a(3)=0, a(4)=0`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A251653

/-- `a(n-1)+a(n-2)+a(n-3)+a(n-4)+a(n-5)` -/
def P18232520072337800888.Spec : Prop :=
  ∀ n, (P18232520072337800888.a n : ℤ) = A251653 n

theorem P18232520072337800888.correct : P18232520072337800888.Spec := by
  intro n
  simp only [A251653]

end A251653

/-! ## A251653.P1133914218975438936

`A124312(n+1)-A001591(n)`
-/

namespace A251653.P1133914218975438936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124312 (n + 1) - A001591 n

end

end A251653.P1133914218975438936

namespace A251653

/-- `A124312(n+1)-A001591(n)` -/
def P1133914218975438936.Spec : Prop :=
  ∀ n, P1133914218975438936.a n = A251653 n

end A251653

/-! ## A251653.P16809760159184591017

`A124312(n+1)-Δ[A001949(n)]`
-/

namespace A251653.P16809760159184591017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001949 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124312 (n + 1) - (f1 (n + 1) - f1 n)

end

end A251653.P16809760159184591017

namespace A251653

/-- `A124312(n+1)-Δ[A001949(n)]` -/
def P16809760159184591017.Spec : Prop :=
  ∀ n, P16809760159184591017.a n = A251653 n

end A251653

/-! ## A251653.P3686997263614465567

`Δ[A001591(n+1)]-A001591(n)`
-/

namespace A251653.P3686997263614465567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001591 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A001591 n

end

end A251653.P3686997263614465567

namespace A251653

/-- `Δ[A001591(n+1)]-A001591(n)` -/
def P3686997263614465567.Spec : Prop :=
  ∀ n, P3686997263614465567.a n = A251653 n

end A251653

/-! ## A251653.P14847835176309226965

`A001591(n+2)-A124313(n+2)`
-/

namespace A251653.P14847835176309226965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001591 (n + 2) - A124313 (n + 2)

end

end A251653.P14847835176309226965

namespace A251653

/-- `A001591(n+2)-A124313(n+2)` -/
def P14847835176309226965.Spec : Prop :=
  ∀ n, P14847835176309226965.a n = A251653 n

end A251653

/-! ## A251653.P4032887564956012067

`A001591(n+2)-(A001591(n+1)+A001591(n))`
-/

namespace A251653.P4032887564956012067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001591 (n + 2) - (A001591 (n + 1) + A001591 n)

end

end A251653.P4032887564956012067

namespace A251653

/-- `A001591(n+2)-(A001591(n+1)+A001591(n))` -/
def P4032887564956012067.Spec : Prop :=
  ∀ n, P4032887564956012067.a n = A251653 n

end A251653

/-! ## A251653.P3141366989349858161

`A124312(n+2)-(A124313(n+1)+A122997(n+1))`
-/

namespace A251653.P3141366989349858161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124312 (n + 2) - (A124313 (n + 1) + A122997 (n + 1))

end

end A251653.P3141366989349858161

namespace A251653

/-- `A124312(n+2)-(A124313(n+1)+A122997(n+1))` -/
def P3141366989349858161.Spec : Prop :=
  ∀ n, P3141366989349858161.a n = A251653 n

end A251653

/-! ## A251653.P2134100342600777147

`Δ[Δ[A001949(n+1)]-A001949(n)]`
-/

namespace A251653.P2134100342600777147
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001949 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - A001949 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A251653.P2134100342600777147

namespace A251653

/-- `Δ[Δ[A001949(n+1)]-A001949(n)]` -/
def P2134100342600777147.Spec : Prop :=
  ∀ n, P2134100342600777147.a n = A251653 n

end A251653

/-!
# A251654: 4-step Fibonacci sequence starting with 0, 1, 1, 0.

The programs for A251654, the canonical program `A251654.P1495825928344748751` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A251654 has offset 0).

The definition of A251654 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A251654.P1495825928344748751

`a(n-1)+a(n-2)+a(n-3)+a(n-4)` with `a(0)=0, a(1)=1, a(2)=1, a(3)=0`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A251654

/-- `a(n-1)+a(n-2)+a(n-3)+a(n-4)` -/
def P1495825928344748751.Spec : Prop :=
  ∀ n, (P1495825928344748751.a n : ℤ) = A251654 n

theorem P1495825928344748751.correct : P1495825928344748751.Spec := by
  intro n
  simp only [A251654]

end A251654

/-! ## A251654.P15044809077528082529

`A000078(n+2)-2*A000078(n)`
-/

namespace A251654.P15044809077528082529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000078 (n + 2) - 2 * A000078 n

end

end A251654.P15044809077528082529

namespace A251654

/-- `A000078(n+2)-2*A000078(n)` -/
def P15044809077528082529.Spec : Prop :=
  ∀ n, P15044809077528082529.a n = A251654 n

end A251654

/-! ## A251654.P1374917256827821492

`ogf((-x+2x^3)/(-1+x+x^2+x^3+x^4))`
-/

namespace A251654.P1374917256827821492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 0, -2] [1, -1, -1, -1, -1] n

end

end A251654.P1374917256827821492

namespace A251654

/-- `ogf((-x+2x^3)/(-1+x+x^2+x^3+x^4))` -/
def P1374917256827821492.Spec : Prop :=
  ∀ n, P1374917256827821492.a n = A251654 n

end A251654

/-! ## A251654.P13019683043290712607

`2*a(n-1)-a(n-5)` with `a(0)=0, a(1)=1, a(2)=1, a(3)=0, a(4)=2`
-/

namespace A251654.P13019683043290712607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 1, 0, 2] fun n a =>
  2 * a (n - 1) - a (n - 5)

end

end A251654.P13019683043290712607

namespace A251654

/-- `2*a(n-1)-a(n-5)` -/
def P13019683043290712607.Spec : Prop :=
  ∀ n, P13019683043290712607.a n = A251654 n

end A251654

/-! ## A251654.P7248140299262471955

`a(n-1)+a(n-1)-a(n-5)` with `a(0)=0, a(1)=1, a(2)=1, a(3)=0, a(4)=2`
-/

namespace A251654.P7248140299262471955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 1, 0, 2] fun n a =>
  a (n - 1) + (a (n - 1) - a (n - 5))

end

end A251654.P7248140299262471955

namespace A251654

/-- `a(n-1)+a(n-1)-a(n-5)` -/
def P7248140299262471955.Spec : Prop :=
  ∀ n, P7248140299262471955.a n = A251654 n

end A251654

/-! ## A251654.P11981389608915794771

`A251655(n)-A000078(n)`
-/

namespace A251654.P11981389608915794771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251655 n - A000078 n

end

end A251654.P11981389608915794771

namespace A251654

/-- `A251655(n)-A000078(n)` -/
def P11981389608915794771.Spec : Prop :=
  ∀ n, P11981389608915794771.a n = A251654 n

end A251654

/-! ## A251654.P3989558214222950214

`A251655(n)+A251703(n)-A251704(n)`
-/

namespace A251654.P3989558214222950214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251655 n + (A251703 n - A251704 n)

end

end A251654.P3989558214222950214

namespace A251654

/-- `A251655(n)+A251703(n)-A251704(n)` -/
def P3989558214222950214.Spec : Prop :=
  ∀ n, P3989558214222950214.a n = A251654 n

end A251654

/-! ## A251654.P10100836170353338471

`A001631(n+1)+A001631(n)-A000078(n)`
-/

namespace A251654.P10100836170353338471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001631 (n + 1) + (A001631 n - A000078 n)

end

end A251654.P10100836170353338471

namespace A251654

/-- `A001631(n+1)+A001631(n)-A000078(n)` -/
def P10100836170353338471.Spec : Prop :=
  ∀ n, P10100836170353338471.a n = A251654 n

end A251654

/-! ## A251654.P13011378162177706952

`A001630(n)+A251703(n)-A251703(n+1)`
-/

namespace A251654.P13011378162177706952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001630 n + (A251703 n - A251703 (n + 1))

end

end A251654.P13011378162177706952

namespace A251654

/-- `A001630(n)+A251703(n)-A251703(n+1)` -/
def P13011378162177706952.Spec : Prop :=
  ∀ n, P13011378162177706952.a n = A251654 n

end A251654

/-! ## A251654.P10979795735117393984

`A000078(n+1)+A251704(n)-A251703(n+1)`
-/

namespace A251654.P10979795735117393984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000078 (n + 1) + (A251704 n - A251703 (n + 1))

end

end A251654.P10979795735117393984

namespace A251654

/-- `A000078(n+1)+A251704(n)-A251703(n+1)` -/
def P10979795735117393984.Spec : Prop :=
  ∀ n, P10979795735117393984.a n = A251654 n

end A251654

/-! ## A251654.P3269688002674057998

`A251656(n+1)+A251656(n)-A251703(n+1)`
-/

namespace A251654.P3269688002674057998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251656 (n + 1) + (A251656 n - A251703 (n + 1))

end

end A251654.P3269688002674057998

namespace A251654

/-- `A251656(n+1)+A251656(n)-A251703(n+1)` -/
def P3269688002674057998.Spec : Prop :=
  ∀ n, P3269688002674057998.a n = A251654 n

end A251654

/-! ## A251654.P17528712012607172175

`Δ[A001630(n)]-A000078(n)`
-/

namespace A251654.P17528712012607172175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001630 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A000078 n

end

end A251654.P17528712012607172175

namespace A251654

/-- `Δ[A001630(n)]-A000078(n)` -/
def P17528712012607172175.Spec : Prop :=
  ∀ n, P17528712012607172175.a n = A251654 n

end A251654

/-! ## A251654.P6890645947315063198

`A251655(n)+A251705(n)-A000288(n)`
-/

namespace A251654.P6890645947315063198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251655 n + (A251705 n - A000288 n)

end

end A251654.P6890645947315063198

namespace A251654

/-- `A251655(n)+A251705(n)-A000288(n)` -/
def P6890645947315063198.Spec : Prop :=
  ∀ n, P6890645947315063198.a n = A251654 n

end A251654

/-! ## A251654.P11920284598671304533

`A001630(n+1)-(A001630(n)+A000078(n))`
-/

namespace A251654.P11920284598671304533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001630 (n + 1) - (A001630 n + A000078 n)

end

end A251654.P11920284598671304533

namespace A251654

/-- `A001630(n+1)-(A001630(n)+A000078(n))` -/
def P11920284598671304533.Spec : Prop :=
  ∀ n, P11920284598671304533.a n = A251654 n

end A251654

/-! ## A251654.P335466092962254472

`A000078(n)+A000288(n)-A251703(n+1)`
-/

namespace A251654.P335466092962254472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000078 n + (A000288 n - A251703 (n + 1))

end

end A251654.P335466092962254472

namespace A251654

/-- `A000078(n)+A000288(n)-A251703(n+1)` -/
def P335466092962254472.Spec : Prop :=
  ∀ n, P335466092962254472.a n = A251654 n

end A251654

/-! ## A251654.P2903232414246257286

`A000288(n)+A001630(n)-A251704(n+1)`
-/

namespace A251654.P2903232414246257286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000288 n + (A001630 n - A251704 (n + 1))

end

end A251654.P2903232414246257286

namespace A251654

/-- `A000288(n)+A001630(n)-A251704(n+1)` -/
def P2903232414246257286.Spec : Prop :=
  ∀ n, P2903232414246257286.a n = A251654 n

end A251654

/-! ## A251654.P8036598872486790334

`A251655(n+1)+A251655(n)-A000288(n+1)`
-/

namespace A251654.P8036598872486790334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251655 (n + 1) + (A251655 n - A000288 (n + 1))

end

end A251654.P8036598872486790334

namespace A251654

/-- `A251655(n+1)+A251655(n)-A000288(n+1)` -/
def P8036598872486790334.Spec : Prop :=
  ∀ n, P8036598872486790334.a n = A251654 n

end A251654

/-!
# A251655: 4-step Fibonacci sequence starting with 0, 1, 1, 1.

The programs for A251655, the canonical program `A251655.P6827696213836453210` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A251655 has offset 0).

The definition of A251655 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A251655.P6827696213836453210

`A000078(n+2)-A000078(n)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A251655

/-- `A000078(n+2)-A000078(n)` -/
def P6827696213836453210.Spec : Prop :=
  ∀ n, P6827696213836453210.a n = A251655 n

theorem P6827696213836453210.correct : P6827696213836453210.Spec := by
  intro n
  simp only [A251655]

end A251655

/-! ## A251655.P14261551220122533695

`ogf((-x+x^3)/(-1+x+x^2+x^3+x^4))`
-/

namespace A251655.P14261551220122533695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 0, -1] [1, -1, -1, -1, -1] n

end

end A251655.P14261551220122533695

namespace A251655

/-- `ogf((-x+x^3)/(-1+x+x^2+x^3+x^4))` -/
def P14261551220122533695.Spec : Prop :=
  ∀ n, P14261551220122533695.a n = A251655 n

end A251655

/-! ## A251655.P11423113620907689857

`2*a(n-1)-a(n-5)` with `a(0)=0, a(1)=1, a(2)=1, a(3)=1, a(4)=3`
-/

namespace A251655.P11423113620907689857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 1, 1, 3] fun n a =>
  2 * a (n - 1) - a (n - 5)

end

end A251655.P11423113620907689857

namespace A251655

/-- `2*a(n-1)-a(n-5)` -/
def P11423113620907689857.Spec : Prop :=
  ∀ n, P11423113620907689857.a n = A251655 n

end A251655

/-! ## A251655.P16060964273274628665

`a(n-1)+a(n-1)-a(n-5)` with `a(0)=0, a(1)=1, a(2)=1, a(3)=1, a(4)=3`
-/

namespace A251655.P16060964273274628665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 1, 1, 3] fun n a =>
  a (n - 1) + (a (n - 1) - a (n - 5))

end

end A251655.P16060964273274628665

namespace A251655

/-- `a(n-1)+a(n-1)-a(n-5)` -/
def P16060964273274628665.Spec : Prop :=
  ∀ n, P16060964273274628665.a n = A251655 n

end A251655

/-! ## A251655.P2660757649676516561

`∑[A251703(n)]-1`
-/

namespace A251655.P2660757649676516561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251703 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A251655.P2660757649676516561

namespace A251655

/-- `∑[A251703(n)]-1` -/
def P2660757649676516561.Spec : Prop :=
  ∀ n, P2660757649676516561.a n = A251655 n

end A251655

/-! ## A251655.P366096540501358963

`abs(Δ[(-1)^n*A001631(n)])`
-/

namespace A251655.P366096540501358963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A001631 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A251655.P366096540501358963

namespace A251655

/-- `abs(Δ[(-1)^n*A001631(n)])` -/
def P366096540501358963.Spec : Prop :=
  ∀ n, P366096540501358963.a n = A251655 n

end A251655

/-! ## A251655.P12234904617258399212

`A251654(n)+A000078(n)`
-/

namespace A251655.P12234904617258399212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251654 n + A000078 n

end

end A251655.P12234904617258399212

namespace A251655

/-- `A251654(n)+A000078(n)` -/
def P12234904617258399212.Spec : Prop :=
  ∀ n, P12234904617258399212.a n = A251655 n

end A251655

/-! ## A251655.P11914175244799335529

`A001631(n+1)+A001631(n)`
-/

namespace A251655.P11914175244799335529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001631 (n + 1) + A001631 n

end

end A251655.P11914175244799335529

namespace A251655

/-- `A001631(n+1)+A001631(n)` -/
def P11914175244799335529.Spec : Prop :=
  ∀ n, P11914175244799335529.a n = A251655 n

end A251655

/-! ## A251655.P2040221961984868171

`A251654(n)+A251704(n)-A251703(n)`
-/

namespace A251655.P2040221961984868171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251654 n + (A251704 n - A251703 n)

end

end A251655.P2040221961984868171

namespace A251655

/-- `A251654(n)+A251704(n)-A251703(n)` -/
def P2040221961984868171.Spec : Prop :=
  ∀ n, P2040221961984868171.a n = A251655 n

end A251655

/-! ## A251655.P11907864250118510776

`A251656(n+1)+A251705(n)-A251704(n)`
-/

namespace A251655.P11907864250118510776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251656 (n + 1) + (A251705 n - A251704 n)

end

end A251655.P11907864250118510776

namespace A251655

/-- `A251656(n+1)+A251705(n)-A251704(n)` -/
def P11907864250118510776.Spec : Prop :=
  ∀ n, P11907864250118510776.a n = A251655 n

end A251655

/-! ## A251655.P15274482222741599936

`Δ[A001630(n)]`
-/

namespace A251655.P15274482222741599936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001630 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A251655.P15274482222741599936

namespace A251655

/-- `Δ[A001630(n)]` -/
def P15274482222741599936.Spec : Prop :=
  ∀ n, P15274482222741599936.a n = A251655 n

end A251655

/-! ## A251655.P8063617683712807756

`A001630(n+1)-A001630(n)`
-/

namespace A251655.P8063617683712807756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001630 (n + 1) - A001630 n

end

end A251655.P8063617683712807756

namespace A251655

/-- `A001630(n+1)-A001630(n)` -/
def P8063617683712807756.Spec : Prop :=
  ∀ n, P8063617683712807756.a n = A251655 n

end A251655

/-! ## A251655.P14840359378210537809

`Δ[A000078(n+1)+A000078(n)]`
-/

namespace A251655.P14840359378210537809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000078 (n + 1) + A000078 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A251655.P14840359378210537809

namespace A251655

/-- `Δ[A000078(n+1)+A000078(n)]` -/
def P14840359378210537809.Spec : Prop :=
  ∀ n, P14840359378210537809.a n = A251655 n

theorem P14840359378210537809.correct : P14840359378210537809.Spec := by
  intro n
  simp only [A251655, Nat.add_sub_cancel, A251655.P14840359378210537809.f1, A251655.P14840359378210537809.a, A251655.P6827696213836453210.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A251655

/-! ## A251655.P2093797492814525877

`A000288(n)-(A251656(n)-A001631(n))`
-/

namespace A251655.P2093797492814525877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000288 n - (A251656 n - A001631 n)

end

end A251655.P2093797492814525877

namespace A251655

/-- `A000288(n)-(A251656(n)-A001631(n))` -/
def P2093797492814525877.Spec : Prop :=
  ∀ n, P2093797492814525877.a n = A251655 n

end A251655

/-! ## A251655.P16130920882312337933

`A251654(n+1)+A251654(n)-A251704(n)`
-/

namespace A251655.P16130920882312337933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251654 (n + 1) + (A251654 n - A251704 n)

end

end A251655.P16130920882312337933

namespace A251655

/-- `A251654(n+1)+A251654(n)-A251704(n)` -/
def P16130920882312337933.Spec : Prop :=
  ∀ n, P16130920882312337933.a n = A251655 n

end A251655

/-! ## A251655.P4911074960788130099

`A251656(n+1)+A000288(n)-A251654(n+1)`
-/

namespace A251655.P4911074960788130099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251656 (n + 1) + (A000288 n - A251654 (n + 1))

end

end A251655.P4911074960788130099

namespace A251655

/-- `A251656(n+1)+A000288(n)-A251654(n+1)` -/
def P4911074960788130099.Spec : Prop :=
  ∀ n, P4911074960788130099.a n = A251655 n

end A251655

/-! ## A251655.P11586369747159654065

`A251705(n+1)+A251654(n)-A251654(n+1)`
-/

namespace A251655.P11586369747159654065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251705 (n + 1) + (A251654 n - A251654 (n + 1))

end

end A251655.P11586369747159654065

namespace A251655

/-- `A251705(n+1)+A251654(n)-A251654(n+1)` -/
def P11586369747159654065.Spec : Prop :=
  ∀ n, P11586369747159654065.a n = A251655 n

end A251655

/-! ## A251655.P8193981625483030758

`∑[A251703(n)%A251701(n)]`
-/

namespace A251655.P8193981625483030758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A251703 n) (A251701 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A251655.P8193981625483030758

namespace A251655

/-- `∑[A251703(n)%A251701(n)]` -/
def P8193981625483030758.Spec : Prop :=
  ∀ n, P8193981625483030758.a n = A251655 n

end A251655

/-!
# A251656: 4-step Fibonacci sequence starting with 1,0,1,0.

The programs for A251656, the canonical program `A251656.P5740695371282096240` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A251656 has offset 0).

The definition of A251656 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A251656.P5740695371282096240

`A000078(n+3)-A000078(n+2)-2*A000078(n)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A251656

/-- `A000078(n+3)-A000078(n+2)-2*A000078(n)` -/
def P5740695371282096240.Spec : Prop :=
  ∀ n, P5740695371282096240.a n = A251656 n

theorem P5740695371282096240.correct : P5740695371282096240.Spec := by
  intro n
  simp only [A251656]

end A251656

/-! ## A251656.P12007453304399002013

`ogf((-1+x+2x^3)/(-1+x+x^2+x^3+x^4))`
-/

namespace A251656.P12007453304399002013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, 0, -2] [1, -1, -1, -1, -1] n

end

end A251656.P12007453304399002013

namespace A251656

/-- `ogf((-1+x+2x^3)/(-1+x+x^2+x^3+x^4))` -/
def P12007453304399002013.Spec : Prop :=
  ∀ n, P12007453304399002013.a n = A251656 n

end A251656

/-! ## A251656.P15077250167459937838

`2*a(n-1)-a(n-5)` with `a(0)=1, a(1)=0, a(2)=1, a(3)=0, a(4)=2`
-/

namespace A251656.P15077250167459937838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1, 0, 2] fun n a =>
  2 * a (n - 1) - a (n - 5)

end

end A251656.P15077250167459937838

namespace A251656

/-- `2*a(n-1)-a(n-5)` -/
def P15077250167459937838.Spec : Prop :=
  ∀ n, P15077250167459937838.a n = A251656 n

end A251656

/-! ## A251656.P15417065096523540324

`a(n-1)+a(n-1)-a(n-5)` with `a(0)=1, a(1)=0, a(2)=1, a(3)=0, a(4)=2`
-/

namespace A251656.P15417065096523540324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1, 0, 2] fun n a =>
  a (n - 1) + (a (n - 1) - a (n - 5))

end

end A251656.P15417065096523540324

namespace A251656

/-- `a(n-1)+a(n-1)-a(n-5)` -/
def P15417065096523540324.Spec : Prop :=
  ∀ n, P15417065096523540324.a n = A251656 n

end A251656

/-! ## A251656.P816322404183348771

`A251704(n)-Δ[A001631(n)]`
-/

namespace A251656.P816322404183348771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001631 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251704 n - (f1 (n + 1) - f1 n)

end

end A251656.P816322404183348771

namespace A251656

/-- `A251704(n)-Δ[A001631(n)]` -/
def P816322404183348771.Spec : Prop :=
  ∀ n, P816322404183348771.a n = A251656 n

end A251656

/-! ## A251656.P16469955916305029762

`A000078(n)+A251705(n)-A001631(n+1)`
-/

namespace A251656.P16469955916305029762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000078 n + (A251705 n - A001631 (n + 1))

end

end A251656.P16469955916305029762

namespace A251656

/-- `A000078(n)+A251705(n)-A001631(n+1)` -/
def P16469955916305029762.Spec : Prop :=
  ∀ n, P16469955916305029762.a n = A251656 n

end A251656

/-! ## A251656.P741297756988157031

`A001631(n)+A251704(n)-A001631(n+1)`
-/

namespace A251656.P741297756988157031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001631 n + (A251704 n - A001631 (n + 1))

end

end A251656.P741297756988157031

namespace A251656

/-- `A001631(n)+A251704(n)-A001631(n+1)` -/
def P741297756988157031.Spec : Prop :=
  ∀ n, P741297756988157031.a n = A251656 n

end A251656

/-! ## A251656.P7181976766474548343

`A000078(n+1)+A251705(n)-A251655(n)`
-/

namespace A251656.P7181976766474548343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000078 (n + 1) + (A251705 n - A251655 n)

end

end A251656.P7181976766474548343

namespace A251656

/-- `A000078(n+1)+A251705(n)-A251655(n)` -/
def P7181976766474548343.Spec : Prop :=
  ∀ n, P7181976766474548343.a n = A251656 n

end A251656

/-! ## A251656.P7344354738597976317

`A000288(n)-A001631(n+1)`
-/

namespace A251656.P7344354738597976317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000288 n - A001631 (n + 1)

end

end A251656.P7344354738597976317

namespace A251656

/-- `A000288(n)-A001631(n+1)` -/
def P7344354738597976317.Spec : Prop :=
  ∀ n, P7344354738597976317.a n = A251656 n

end A251656

/-! ## A251656.P3386118763713920306

`A251704(n)-Δ[Δ[A000078(n)]]`
-/

namespace A251656.P3386118763713920306
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000078 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251704 n - (f1 (n + 1) - f1 n)

end

end A251656.P3386118763713920306

namespace A251656

/-- `A251704(n)-Δ[Δ[A000078(n)]]` -/
def P3386118763713920306.Spec : Prop :=
  ∀ n, P3386118763713920306.a n = A251656 n

end A251656

/-! ## A251656.P3288505463055972187

`A000288(n)-Δ[A000078(n+1)]`
-/

namespace A251656.P3288505463055972187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000078 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000288 n - (f1 (n + 1) - f1 n)

end

end A251656.P3288505463055972187

namespace A251656

/-- `A000288(n)-Δ[A000078(n+1)]` -/
def P3288505463055972187.Spec : Prop :=
  ∀ n, P3288505463055972187.a n = A251656 n

end A251656

/-! ## A251656.P18071318388814781141

`A251703(n+1)+A000288(n)-A251705(n+1)`
-/

namespace A251656.P18071318388814781141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251703 (n + 1) + (A000288 n - A251705 (n + 1))

end

end A251656.P18071318388814781141

namespace A251656

/-- `A251703(n+1)+A000288(n)-A251705(n+1)` -/
def P18071318388814781141.Spec : Prop :=
  ∀ n, P18071318388814781141.a n = A251656 n

end A251656

/-! ## A251656.P11626103811065208788

`A251703(n+1)+A251705(n)-A251654(n+1)`
-/

namespace A251656.P11626103811065208788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251703 (n + 1) + (A251705 n - A251654 (n + 1))

end

end A251656.P11626103811065208788

namespace A251656

/-- `A251703(n+1)+A251705(n)-A251654(n+1)` -/
def P11626103811065208788.Spec : Prop :=
  ∀ n, P11626103811065208788.a n = A251656 n

end A251656

/-! ## A251656.P1905986179929668598

`A251704(n+1)+A251705(n)-A251655(n+1)`
-/

namespace A251656.P1905986179929668598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251704 (n + 1) + (A251705 n - A251655 (n + 1))

end

end A251656.P1905986179929668598

namespace A251656

/-- `A251704(n+1)+A251705(n)-A251655(n+1)` -/
def P1905986179929668598.Spec : Prop :=
  ∀ n, P1905986179929668598.a n = A251656 n

end A251656

/-! ## A251656.P1829463312917493905

`A251704(n+1)+A251703(n)-A251705(n+1)`
-/

namespace A251656.P1829463312917493905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251704 (n + 1) + (A251703 n - A251705 (n + 1))

end

end A251656.P1829463312917493905

namespace A251656

/-- `A251704(n+1)+A251703(n)-A251705(n+1)` -/
def P1829463312917493905.Spec : Prop :=
  ∀ n, P1829463312917493905.a n = A251656 n

end A251656

/-! ## A251656.P10833130304635044963

`A251704(n+1)-Δ[A000288(n)]`
-/

namespace A251656.P10833130304635044963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000288 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251704 (n + 1) - (f1 (n + 1) - f1 n)

end

end A251656.P10833130304635044963

namespace A251656

/-- `A251704(n+1)-Δ[A000288(n)]` -/
def P10833130304635044963.Spec : Prop :=
  ∀ n, P10833130304635044963.a n = A251656 n

end A251656

/-! ## A251656.P7812067460842112104

`A251704(n)-Δ[A000288(n)-A251704(n)]`
-/

namespace A251656.P7812067460842112104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000288 n - A251704 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251704 n - (f1 (n + 1) - f1 n)

end

end A251656.P7812067460842112104

namespace A251656

/-- `A251704(n)-Δ[A000288(n)-A251704(n)]` -/
def P7812067460842112104.Spec : Prop :=
  ∀ n, P7812067460842112104.a n = A251656 n

end A251656

/-! ## A251656.P13613967442407353573

`A251704(n+1)+A000288(n)-A000288(n+1)`
-/

namespace A251656.P13613967442407353573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251704 (n + 1) + (A000288 n - A000288 (n + 1))

end

end A251656.P13613967442407353573

namespace A251656

/-- `A251704(n+1)+A000288(n)-A000288(n+1)` -/
def P13613967442407353573.Spec : Prop :=
  ∀ n, P13613967442407353573.a n = A251656 n

end A251656

/-!
# A251657: a(n) = (2^n + 3)^n.

The programs for A251657, the canonical program `A251657.P4655259005850971212` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A251657 has offset 0).

The definition of A251657 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2^n+3)^n` (program `A251657.P4655259005850971212`, by `A251657.P4655259005850971212.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A251657.P4655259005850971212

`(2^n+3)^n`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A251657

/-- `(2^n+3)^n` -/
def P4655259005850971212.Spec : Prop :=
  ∀ n, (P4655259005850971212.a n : ℤ) = A251657 n

theorem P4655259005850971212.correct : P4655259005850971212.Spec := by
  intro n
  simp only [A251657]

end A251657

/-! ## A251657.P9581295871707915286

`floor(∑[2*a(n-1)]^n)` with `a(0)=4, a(1)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A251657.P9581295871707915286
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [4, 1] fun n f1 =>
  2 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ n

end

end A251657.P9581295871707915286

namespace A251657

/-- `floor(∑[2*a(n-1)]^n)` -/
def P9581295871707915286.Spec : Prop :=
  ∀ n, (P9581295871707915286.a n : ℤ) = A251657 n

end A251657

/-! ## A251657.P17517136386598167125

`or(1, A062709(n)^n)`
-/

namespace A251657.P17517136386598167125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A062709 n ^ n)

end

end A251657.P17517136386598167125

namespace A251657

/-- `or(1, A062709(n)^n)` -/
def P17517136386598167125.Spec : Prop :=
  ∀ n, P17517136386598167125.a n = A251657 n

end A251657

/-! ## A251657.P14887221147164454333

`abs(Δ[A194455(n)]^n)`
-/

namespace A251657.P14887221147164454333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194455 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(f1 (n + 1) - f1 n) ^ n|

end

end A251657.P14887221147164454333

namespace A251657

/-- `abs(Δ[A194455(n)]^n)` -/
def P14887221147164454333.Spec : Prop :=
  ∀ n, P14887221147164454333.a n = A251657 n

end A251657

/-! ## A251657.P12526274708751576928

`record[A165754(n)^A080791(n)]`
-/

namespace A251657.P12526274708751576928
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A165754 n : ℚ) ^ (A080791 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251657.P12526274708751576928

namespace A251657

/-- `record[A165754(n)^A080791(n)]` -/
def P12526274708751576928.Spec : Prop :=
  ∀ n, P12526274708751576928.a n = (A251657 n : ℚ)

end A251657

/-!
# A251658: a(n) = Sum_{k=1..n} C(n,k) * sigma(k)^(n-k) for n>=1.

The programs for A251658, there is no canonical definition to state claims against.
-/

/-! ## A251658.P3705253084466554871

`∏{p}[A008793(n), #]+p?[round(8*n/7)]-2`
-/

namespace A251658.P3705253084466554871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008793 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n).natAbs, p : ℕ) : ℤ) + (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) - 2)

end

end A251658.P3705253084466554871

/-!
# A251661: a(n) = Sum_{k=0..n} C(n,k) * (2^k + 3^k)^(n-k).

The programs for A251661, there is no canonical definition to state claims against.
-/

/-! ## A251661.P10576914848436445242

`∑[A050469(A068052(n))]`
-/

namespace A251661.P10576914848436445242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050469 (A068052 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A251661.P10576914848436445242

/-!
# A251662: Dirichlet convolution of Moebius function mu(n) (A008683) with Ternary numbers A001764.

The programs for A251662, the canonical program `A251662.P2951919329571068556` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A251662 has offset 1).

The definition of A251662 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 126 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A251662.P2951919329571068556

`∑{d}[n+1, A008683(#)*A001764((n+1)/#-1)]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A251662

/-- `∑{d}[n+1, A008683(#)*A001764((n+1)/#-1)]` -/
def P2951919329571068556.Spec : Prop :=
  ∀ n, P2951919329571068556.a n = A251662 (n + 1)

theorem P2951919329571068556.correct : P2951919329571068556.Spec := by
  intro n
  simp only [A251662, Nat.add_sub_cancel]

end A251662

/-! ## A251662.P12352123744538073104

`A001764(n)-∑{e}[A057560(3*n+1), #]`
-/

namespace A251662.P12352123744538073104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057560 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001764 n - ((∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p : ℕ) : ℤ)

end

end A251662.P12352123744538073104

namespace A251662

/-- `A001764(n)-∑{e}[A057560(3*n+1), #]` -/
def P12352123744538073104.Spec : Prop :=
  ∀ n, P12352123744538073104.a n = A251662 (n + 1)

end A251662

/-! ## A251662.P10028300414682893292

`A001764(n)-A001221(A126390(n))`
-/

namespace A251662.P10028300414682893292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001764 n - A001221 (A126390 n).toNat

end

end A251662.P10028300414682893292

namespace A251662

/-- `A001764(n)-A001221(A126390(n))` -/
def P10028300414682893292.Spec : Prop :=
  ∀ n, P10028300414682893292.a n = A251662 (n + 1)

end A251662

/-!
# A251672: 8-step Fibonacci sequence starting with 0,0,0,0,0,0,1,0.

The programs for A251672, the canonical program `A251672.P9400077849588543496` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A251672 has offset 0).

The definition of A251672 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A251672.P9400077849588543496

`A079262(n+1)-A079262(n)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A251672

/-- `A079262(n+1)-A079262(n)` -/
def P9400077849588543496.Spec : Prop :=
  ∀ n, P9400077849588543496.a n = A251672 n

theorem P9400077849588543496.correct : P9400077849588543496.Spec := by
  intro n
  simp only [A251672]

end A251672

/-! ## A251672.P212180237259295839

`Δ[A079262(n)]`
-/

namespace A251672.P212180237259295839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A251672.P212180237259295839

namespace A251672

/-- `Δ[A079262(n)]` -/
def P212180237259295839.Spec : Prop :=
  ∀ n, P212180237259295839.a n = A251672 n

theorem P212180237259295839.correct : P212180237259295839.Spec := by
  intro n
  simp only [A251672, Nat.add_sub_cancel, A251672.P212180237259295839.f1, A251672.P212180237259295839.a, A251672.P9400077849588543496.a, SequenceMachineLib.memo_apply]

end A251672

/-! ## A251672.P9286863865363968153

`Δ[Δ[A251745(n)+a(n-2)]]` with `a(0)=0, a(1)=0`
-/

namespace A251672.P9286863865363968153
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n f2 =>
  A251745 n + f2 (n - 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A251672.P9286863865363968153

namespace A251672

/-- `Δ[Δ[A251745(n)+a(n-2)]]` -/
def P9286863865363968153.Spec : Prop :=
  ∀ n, P9286863865363968153.a n = A251672 n

end A251672

/-! ## A251672.P887931915212322322

`Δ[A251740(n+1)-A251741(n)]`
-/

namespace A251672.P887931915212322322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251740 (n + 1) - A251741 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A251672.P887931915212322322

namespace A251672

/-- `Δ[A251740(n+1)-A251741(n)]` -/
def P887931915212322322.Spec : Prop :=
  ∀ n, P887931915212322322.a n = A251672 n

end A251672

/-! ## A251672.P16312964825735092152

`Δ[A251741(n+1)-A251742(n)]`
-/

namespace A251672.P16312964825735092152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251741 (n + 1) - A251742 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A251672.P16312964825735092152

namespace A251672

/-- `Δ[A251741(n+1)-A251742(n)]` -/
def P16312964825735092152.Spec : Prop :=
  ∀ n, P16312964825735092152.a n = A251672 n

end A251672

/-!
# A251673: Numbers that are not palindromes, but whose squares are palindromes.

The programs for A251673, there is no canonical definition to state claims against.
-/

/-! ## A251673.P5882173348918903136

`∩[A002778(n+1), A129914(n+1)]`
-/

namespace A251673.P5882173348918903136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002778 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129914 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A251673.P5882173348918903136

/-!
# A251674: Number of (n+2) X (n+2) 0..2 arrays with no row, column, diagonal or antidiagonal in any 3 X 3 subblock summing to 2 or 4.

The programs for A251674, there is no canonical definition to state claims against.
-/

/-! ## A251674.P3425975480917587520

`A251682(∑[4*n]+1)`
-/

namespace A251674.P3425975480917587520
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251682 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A251674.P3425975480917587520

/-! ## A251674.P16673167301633849168

`or(1, A251682(A001844(n)))`
-/

namespace A251674.P16673167301633849168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A251682 (A001844 n).toNat)

end

end A251674.P16673167301633849168

/-! ## A251674.P3102277417651315281

`record[gcd(A049581(n), A251682(n+1))]`
-/

namespace A251674.P3102277417651315281
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A049581 n) (A251682 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251674.P3102277417651315281

/-! ## A251674.P1364539618798812006

`record[root(A251682(n+1), A204143(n+1))]`
-/

namespace A251674.P1364539618798812006
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A251682 (n + 1) : ℝ) ^ (1 / (A204143 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251674.P1364539618798812006

/-! ## A251674.P6246967739161137781

`A140356(n)*A251682(A001844(n))`
-/

namespace A251674.P6246967739161137781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140356 n * A251682 (A001844 n).toNat

end

end A251674.P6246967739161137781

/-!
# A251675: Number of (n+2)X(1+2) 0..2 arrays with no row, column, diagonal or antidiagonal in any 3X3 subblock summing to 2 or 4.

The programs for A251675, there is no canonical definition to state claims against.
-/

/-! ## A251675.P7029644822526700766

`A251682(∑[n]+1)`
-/

namespace A251675.P7029644822526700766
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251682 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A251675.P7029644822526700766

/-! ## A251675.P18421788929235373522

`or(1, A251682(A000124(n)))`
-/

namespace A251675.P18421788929235373522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A251682 (A000124 n).toNat)

end

end A251675.P18421788929235373522

/-! ## A251675.P789304671993319201

`record[A251682(n+1)/A008459(n)]`
-/

namespace A251675.P789304671993319201
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A251682 (n + 1) : ℚ) / (A008459 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251675.P789304671993319201

/-! ## A251675.P16264456878435821650

`record[A251682(n+1)/A008277(n+1)]`
-/

namespace A251675.P16264456878435821650
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A251682 (n + 1) : ℚ) / (A008277 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251675.P16264456878435821650

/-! ## A251675.P1578962456118933442

`record[A251682(n+1)/A056242(n+1)]`
-/

namespace A251675.P1578962456118933442
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A251682 (n + 1) : ℚ) / (A056242 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A251675.P1578962456118933442

/-!
# A251676: Number of (n+2)X(2+2) 0..2 arrays with no row, column, diagonal or antidiagonal in any 3X3 subblock summing to 2 or 4.

The programs for A251676, there is no canonical definition to state claims against.
-/

/-! ## A251676.P10285261144210678786

`A251682(∑[n+1]+2)`
-/

namespace A251676.P10285261144210678786
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251682 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A251676.P10285261144210678786

/-! ## A251676.P8704615781859288860

`or(1, A251682(A167499(n)-3))`
-/

namespace A251676.P8704615781859288860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A251682 (A167499 n - 3).toNat)

end

end A251676.P8704615781859288860

/-! ## A251676.P953583645861282754

`Δ[A085735(n+1)]*A251682(A167499(n)-3)`
-/

namespace A251676.P953583645861282754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085735 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A251682 (A167499 n - 3).toNat

end

end A251676.P953583645861282754

/-! ## A251676.P2009658527251800992

`A002260(A014963(2*(n+2))²)*A251682(A167499(n)-3)`
-/

namespace A251676.P2009658527251800992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A014963 (2 * (n + 2)) ^ 2).toNat * A251682 (A167499 n - 3).toNat

end

end A251676.P2009658527251800992

/-! ## A251676.P5521777179230625846

`A033630(A014963(2*(n+2))²)*A251682(A167499(n)-3)`
-/

namespace A251676.P5521777179230625846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033630 (A014963 (2 * (n + 2)) ^ 2).toNat * A251682 (A167499 n - 3).toNat

end

end A251676.P5521777179230625846

/-!
# A251677: Number of (n+2)X(3+2) 0..2 arrays with no row, column, diagonal or antidiagonal in any 3X3 subblock summing to 2 or 4.

The programs for A251677, there is no canonical definition to state claims against.
-/

/-! ## A251677.P14225515211651008137

`A251682(∑[n+2]+4)`
-/

namespace A251677.P14225515211651008137
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251682 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A251677.P14225515211651008137

/-! ## A251677.P7708878955226118100

`or(1, A251682(A167614(n+1)))`
-/

namespace A251677.P7708878955226118100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A251682 (A167614 (n + 1)).toNat)

end

end A251677.P7708878955226118100

/-! ## A251677.P6266391569959937071

`A251682(A167614(n+1))+A034543(n+1)`
-/

namespace A251677.P6266391569959937071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251682 (A167614 (n + 1)).toNat + A034543 (n + 1)

end

end A251677.P6266391569959937071

/-! ## A251677.P1304071222590573544

`A251682(A167614(n+1))%A300929(n+2)`
-/

namespace A251677.P1304071222590573544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A251682 (A167614 (n + 1)).toNat) (A300929 (n + 2))

end

end A251677.P1304071222590573544

/-! ## A251677.P18348472229110031217

`A331928(2*n+1)+A251682(A167614(n+1))`
-/

namespace A251677.P18348472229110031217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331928 (2 * n + 1) + A251682 (A167614 (n + 1)).toNat

end

end A251677.P18348472229110031217

/-!
# A251678: Number of (n+2)X(4+2) 0..2 arrays with no row, column, diagonal or antidiagonal in any 3X3 subblock summing to 2 or 4.

The programs for A251678, there is no canonical definition to state claims against.
-/

/-! ## A251678.P18038446648943930092

`A251682(A374004(n+1))`
-/

namespace A251678.P18038446648943930092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251682 (A374004 (n + 1)).toNat

end

end A251678.P18038446648943930092

/-! ## A251678.P6122567188165546839

`A251682(A141214(n)+7)`
-/

namespace A251678.P6122567188165546839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251682 (A141214 n + 7).toNat

end

end A251678.P6122567188165546839

/-! ## A251678.P1640817142116772192

`A251682(A052905(n)+9)`
-/

namespace A251678.P1640817142116772192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251682 (A052905 n + 9).toNat

end

end A251678.P1640817142116772192

/-! ## A251678.P11967566306257631786

`A251682(A055999(n)+10)`
-/

namespace A251678.P11967566306257631786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251682 (A055999 n + 10).toNat

end

end A251678.P11967566306257631786

/-! ## A251678.P7537985539767892791

`A251682(A167614(n+2)+1)`
-/

namespace A251678.P7537985539767892791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251682 (A167614 (n + 2) + 1).toNat

end

end A251678.P7537985539767892791

/-!
# A251679: Number of (n+2)X(5+2) 0..2 arrays with no row, column, diagonal or antidiagonal in any 3X3 subblock summing to 2 or 4.

The programs for A251679, there is no canonical definition to state claims against.
-/

/-! ## A251679.P6119966146681666130

`A251682(A374005(n+1))`
-/

namespace A251679.P6119966146681666130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251682 (A374005 (n + 1)).toNat

end

end A251679.P6119966146681666130

/-! ## A251679.P13167437480313382697

`A251682(A167499(n+3))`
-/

namespace A251679.P13167437480313382697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251682 (A167499 (n + 3)).toNat

end

end A251679.P13167437480313382697

/-! ## A251679.P13590898719904974916

`A251682(A152950(n+5)+2)`
-/

namespace A251679.P13590898719904974916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251682 (A152950 (n + 5) + 2).toNat

end

end A251679.P13590898719904974916

/-! ## A251679.P12591176731997496239

`A251682(n+8+A000124(n+3))`
-/

namespace A251679.P12591176731997496239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251682 ((n + 8 : ℤ) + A000124 (n + 3)).toNat

end

end A251679.P12591176731997496239

/-! ## A251679.P836878123352600309

`A251682(A005843(n+6)+A000217(n+2))`
-/

namespace A251679.P836878123352600309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251682 (A005843 (n + 6) + A000217 (n + 2)).toNat

end

end A251679.P836878123352600309

/-!
# A251680: Number of (n+2)X(6+2) 0..2 arrays with no row, column, diagonal or antidiagonal in any 3X3 subblock summing to 2 or 4.

The programs for A251680, there is no canonical definition to state claims against.
-/

/-! ## A251680.P4356260856176181569

`A251682(A374007(n+1))`
-/

namespace A251680.P4356260856176181569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251682 (A374007 (n + 1)).toNat

end

end A251680.P4356260856176181569

/-! ## A251680.P9978682975831689119

`A251682(A167499(n+4)+1)`
-/

namespace A251680.P9978682975831689119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251682 (A167499 (n + 4) + 1).toNat

end

end A251680.P9978682975831689119

/-! ## A251680.P3340541676093025085

`A251682(A046691(n+3)+10)`
-/

namespace A251680.P3340541676093025085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251682 (A046691 (n + 3) + 10).toNat

end

end A251680.P3340541676093025085

/-! ## A251680.P15925328740703571426

`A251682(n+10+A000124(n+4))`
-/

namespace A251680.P15925328740703571426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251682 ((n + 10 : ℤ) + A000124 (n + 4)).toNat

end

end A251680.P15925328740703571426

/-! ## A251680.P16405438202165529201

`A251682(eq[5, A002260(n+1)]+n+7)`
-/

namespace A251680.P16405438202165529201
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251682 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + (n + 7))

end

end A251680.P16405438202165529201

/-!
# A251681: Number of (n+2)X(7+2) 0..2 arrays with no row, column, diagonal or antidiagonal in any 3X3 subblock summing to 2 or 4.

The programs for A251681, there is no canonical definition to state claims against.
-/

/-! ## A251681.P9679261513706934604

`A251682(A374008(n+1))`
-/

namespace A251681.P9679261513706934604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251682 (A374008 (n + 1)).toNat

end

end A251681.P9679261513706934604

/-! ## A251681.P14343779524633131202

`A251682(eq[8, A131818(n+1)])`
-/

namespace A251681.P14343779524633131202
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251682 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A251681.P14343779524633131202

/-! ## A251681.P6116161434425012022

`A251682(A055999(n+4))`
-/

namespace A251681.P6116161434425012022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251682 (A055999 (n + 4)).toNat

end

end A251681.P6116161434425012022

/-! ## A251681.P8780265949061882423

`A251682(eq[4, A219347(n)])`
-/

namespace A251681.P8780265949061882423
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251682 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A251681.P8780265949061882423

/-! ## A251681.P10813895407869562426

`A251682(eq[6, A193592(n)])`
-/

namespace A251681.P10813895407869562426
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251682 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A251681.P10813895407869562426

/-!
# A251683: Irregular triangular array: T(n,k) is the number of ordered factorizations of n with exactly k factors, n >= 1, 1 <= k <= A086436(n).

The programs for A251683, there is no canonical definition to state claims against.
-/

/-! ## A251683.P13179763947776943158

`A115577(A165093(n)+A007318(2*n+3))`
-/

namespace A251683.P13179763947776943158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115577 (A165093 n + A007318 (2 * n + 3)).toNat

end

end A251683.P13179763947776943158

/-! ## A251683.P10737809052437275848

`A236533(A183953(2*n+5))+A214071(2*n+1)`
-/

namespace A251683.P10737809052437275848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236533 (A183953 (2 * n + 5)).toNat + A214071 (2 * n + 1)

end

end A251683.P10737809052437275848

/-! ## A251683.P1455738174641346224

`A159631(A357570(n))`
-/

namespace A251683.P1455738174641346224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159631 (A357570 n).toNat

end

end A251683.P1455738174641346224

/-! ## A251683.P4752588200803792831

`A228369(A277218(n)+5)`
-/

namespace A251683.P4752588200803792831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228369 (A277218 n + 5).toNat

end

end A251683.P4752588200803792831

/-! ## A251683.P18249966145473420387

`A046951(11*A357570(n))`
-/

namespace A251683.P18249966145473420387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046951 (11 * A357570 n).toNat

end

end A251683.P18249966145473420387

/-!
# A251684: G.f.: exp( Sum_{n>=1} A047863(n)*x^n/n ), where A047863(n) = Sum_{k=0..n} binomial(n, k) * (2^k)^(n-k).

The programs for A251684, there is no canonical definition to state claims against.
-/

/-! ## A251684.P13053506790982852829

`∑[A156171(n)]`
-/

namespace A251684.P13053506790982852829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156171 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A251684.P13053506790982852829

/-! ## A251684.P2491016636379103444

`∑[A332340(xor(n%2, ∑[n]))]`
-/

namespace A251684.P2491016636379103444
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332340 (Nat.xor (n % 2) (∑ j ∈ Finset.range (n + 1), f2 j))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A251684.P2491016636379103444

/-!
# A251685: G.f.: Product_{n>=1} [1 + (n+1)*x^n + (n+2)*x^(n+1) + (n+3)*x^(n+2) + (n+4)*x^(n+3) +...].

The programs for A251685, there is no canonical definition to state claims against.
-/

/-! ## A251685.P4028777983029409686

`3*A254948(a(n-1))` with `a(0)=1, a(1)=2`
-/

namespace A251685.P4028777983029409686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  3 * A254948 (a (n - 1)).toNat

end

end A251685.P4028777983029409686

/-! ## A251685.P15883457858908399163

`A316114(A370880(n+1))`
-/

namespace A251685.P15883457858908399163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316114 (A370880 (n + 1)).toNat

end

end A251685.P15883457858908399163

/-! ## A251685.P11653144596017920755

`∑[A006856(∑[A000032(n)])-n]`
-/

namespace A251685.P11653144596017920755
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006856 (∑ j ∈ Finset.range (n + 1), f2 j).toNat - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A251685.P11653144596017920755

/-!
# A251686: G.f.: exp( Sum_{n>=1} A132303(n)/3 * x^n/n ), where A132303(n) = sum of the cubes of the trinomial coefficients in row n of triangle A027907.

The programs for A251686, there is no canonical definition to state claims against.
-/

/-! ## A251686.P4143917452475451485

`A206284(A308333(n))-2`
-/

namespace A251686.P4143917452475451485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206284 (A308333 n).toNat - 2

end

end A251686.P4143917452475451485

/-!
# A251687: G.f. satisfies: A(x) = exp( Sum_{n>=1} [Sum_{k=0..2*n} T(n,k)^2 * x^k] / A(x)^n * x^n/n ), where T(n,k) is the coefficient of x^k in (1 + x + 2*x^2)^n.

The programs for A251687, there is no canonical definition to state claims against.
-/

/-! ## A251687.P9200439536712519228

`A271800(A200537(n))`
-/

namespace A251687.P9200439536712519228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271800 (A200537 n).toNat

end

end A251687.P9200439536712519228

/-!
# A251688: G.f. satisfies: A(x) = exp( Sum_{n>=1} [Sum_{k=0..2*n} T(n,k)^2 * x^k] / A(x)^n * x^n/n ), where T(n,k) is the coefficient of x^k in (1+2*x)^n*(1+3*x)^n.

The programs for A251688, there is no canonical definition to state claims against.
-/

/-! ## A251688.P12488493225616635379

`A338137((n-1)*A077043(n)+1)`
-/

namespace A251688.P12488493225616635379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338137 (((n : ℤ) - 1) * A077043 n + 1).toNat

end

end A251688.P12488493225616635379

/-!
# A251689: G.f. satisfies: A(x) = exp( Sum_{n>=1} [Sum_{k=0..2*n} A200536(n,2*n-k)^2 * x^k] / A(x)^n * x^n/n ), where A200536(n,2*n-k) is the coefficient of x^k in (2+3*x+x^2)^n.

The programs for A251689, there is no canonical definition to state claims against.
-/

/-! ## A251689.P7754310814570996848

`A329233(A000166(n+2))+A270274(n)`
-/

namespace A251689.P7754310814570996848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329233 (A000166 (n + 2)).toNat + A270274 n

end

end A251689.P7754310814570996848

/-!
# A251691: G.f.: G(F(x)) is a power series in x consisting entirely of positive integer coefficients such that G(F(x) - x^k) has negative coefficients for k>0, where G(x) = 1 + x*G(x)^3 is the g.f. of A001764 and F(x) is g.f. of A251690.

The programs for A251691, there is no canonical definition to state claims against.
-/

/-! ## A251691.P7493242608822994630

`A103221(A183304(n+1)+A001935(n))`
-/

namespace A251691.P7493242608822994630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 (A183304 (n + 1) + A001935 n).toNat

end

end A251691.P7493242608822994630

/-! ## A251691.P11124832102712448773

`A138194(∑[A002203(n)-A080980(n)])`
-/

namespace A251691.P11124832102712448773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002203 n - A080980 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138194 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A251691.P11124832102712448773

/-! ## A251691.P9564937937885779060

`A257639(A150631(n))`
-/

namespace A251691.P9564937937885779060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257639 (A150631 n).toNat

end

end A251691.P9564937937885779060

/-! ## A251691.P8401364074583131323

`A262689(A149740(n))`
-/

namespace A251691.P8401364074583131323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262689 (A149740 n).toNat

end

end A251691.P8401364074583131323

/-! ## A251691.P6866607156573805100

`A001462(A107234(∑[n]))`
-/

namespace A251691.P6866607156573805100
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (A107234 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A251691.P6866607156573805100

/-!
# A251692: The coefficient of x^(n + 2^n) in the n-th iteration of x^2+x^3 for n>=0.

The programs for A251692, there is no canonical definition to state claims against.
-/

/-! ## A251692.P10260825308160638378

`A356664(n*a(n-1))` with `a(0)=1, a(1)=1`
-/

namespace A251692.P10260825308160638378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A356664 ((n : ℤ) * a (n - 1)).toNat

end

end A251692.P10260825308160638378

/-!
# A251693: a(n) = (n+1) * (2*n+1)^(n-2) * 3^n.

The programs for A251693, the canonical program `A251693.P18292720667471138471` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A251693 has offset 0).

The definition of A251693 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A251693.P18292720667471138471

`(n+1)*(2*n+1)^(n-2)*3^n`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A251693

/-- `(n+1)*(2*n+1)^(n-2)*3^n` -/
def P18292720667471138471.Spec : Prop :=
  ∀ n, P18292720667471138471.a n = (A251693 n : ℚ)

end A251693

/-!
# A251694: a(n) = (2*n+1) * (3*n+1)^(n-2) * 4^n.

The programs for A251694, the canonical program `A251694.P6875443956432066648` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A251694 has offset 0).

The definition of A251694 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A251694.P6875443956432066648

`(2*n+1)*(3*n+1)^(n-2)*4^n`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A251694

/-- `(2*n+1)*(3*n+1)^(n-2)*4^n` -/
def P6875443956432066648.Spec : Prop :=
  ∀ n, P6875443956432066648.a n = (A251694 n : ℚ)

end A251694

/-!
# A251695: a(n) = (3*n+1) * (4*n+1)^(n-2) * 5^n.

The programs for A251695, the canonical program `A251695.P10996144173858362134` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A251695 has offset 0).

The definition of A251695 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A251695.P10996144173858362134

`(3*n+1)*(4*n+1)^(n-2)*5^n`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A251695

/-- `(3*n+1)*(4*n+1)^(n-2)*5^n` -/
def P10996144173858362134.Spec : Prop :=
  ∀ n, P10996144173858362134.a n = (A251695 n : ℚ)

end A251695

/-!
# A251696: a(n) = (4*n+1) * (5*n+1)^(n-2) * 6^n.

The programs for A251696, the canonical program `A251696.P18173526120907609129` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A251696 has offset 0).

The definition of A251696 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A251696.P18173526120907609129

`(4*n+1)*(5*n+1)^(n-2)*6^n`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A251696

/-- `(4*n+1)*(5*n+1)^(n-2)*6^n` -/
def P18173526120907609129.Spec : Prop :=
  ∀ n, P18173526120907609129.a n = (A251696 n : ℚ)

end A251696

/-!
# A251697: a(n) = (5*n+1) * (6*n+1)^(n-2) * 7^n.

The programs for A251697, the canonical program `A251697.P8173683680015876824` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A251697 has offset 0).

The definition of A251697 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A251697.P8173683680015876824

`(5*n+1)*(6*n+1)^(n-2)*7^n`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A251697

/-- `(5*n+1)*(6*n+1)^(n-2)*7^n` -/
def P8173683680015876824.Spec : Prop :=
  ∀ n, P8173683680015876824.a n = (A251697 n : ℚ)

end A251697

/-!
# A251698: a(n) = (6*n+1) * (7*n+1)^(n-2) * 8^n.

The programs for A251698, the canonical program `A251698.P2757666679304069960` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A251698 has offset 0).

The definition of A251698 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A251698.P2757666679304069960

`(6*n+1)*(7*n+1)^(n-2)*8^n`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A251698

/-- `(6*n+1)*(7*n+1)^(n-2)*8^n` -/
def P2757666679304069960.Spec : Prop :=
  ∀ n, P2757666679304069960.a n = (A251698 n : ℚ)

end A251698

/-!
# A251699: a(n) = (7*n+1) * (8*n+1)^(n-2) * 9^n.

The programs for A251699, the canonical program `A251699.P866515338596510768` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A251699 has offset 0).

The definition of A251699 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A251699.P866515338596510768

`(7*n+1)*(8*n+1)^(n-2)*9^n`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A251699

/-- `(7*n+1)*(8*n+1)^(n-2)*9^n` -/
def P866515338596510768.Spec : Prop :=
  ∀ n, P866515338596510768.a n = (A251699 n : ℚ)

end A251699

