import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C028
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C041
import Seq.B000.C043
import Seq.B000.C045
import Seq.B000.C046
import Seq.B000.C047
import Seq.B000.C050
import Seq.B001.C000
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import Seq.B001.C013
import Seq.B001.C014
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B004.C004
import Seq.B005.C000
import Seq.B005.C002
import Seq.B006.C000
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
# A365003: Heinz numbers of integer partitions where the sum of all parts is twice the sum of distinct parts.

The programs for A365003, there is no canonical definition to state claims against.
-/

/-! ## A365003.P7458372120361219556

`∩[A206716(n+1), A360902(n+1)]`
-/

namespace A365003.P7458372120361219556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206716 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360902 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A365003.P7458372120361219556

/-! ## A365003.P12418498830415796357

`∩[A227194(n+1), A360902(n+1)]`
-/

namespace A365003.P12418498830415796357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227194 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360902 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A365003.P12418498830415796357

/-! ## A365003.P851126798778829052

`A360902(lt[A360886(n), A255450(n)])`
-/

namespace A365003.P851126798778829052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360886 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255450 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360902 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A365003.P851126798778829052

/-!
# A365004: Array read by antidiagonals downwards where A(n,k) is the number of ways to write n as a nonnegative linear combination of an integer partition of k.

The programs for A365004, there is no canonical definition to state claims against.
-/

/-! ## A365004.P11439304186885790828

`A364912(∑[2*n]%comp[∑[n]])`
-/

namespace A365004.P11439304186885790828
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364912 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A365004.P11439304186885790828

/-! ## A365004.P14701223478040457023

`A364912(∑[char[∑[n]]]²-(n+1))`
-/

namespace A365004.P14701223478040457023
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364912 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - (n + 1))

end

end A365004.P14701223478040457023

/-! ## A365004.P16603644651262365221

`A364912(A061579(n))%A026551(n)`
-/

namespace A365004.P16603644651262365221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A364912 (A061579 n).toNat) (A026551 n)

end

end A365004.P16603644651262365221

/-! ## A365004.P2623586714231777515

`lcm(A153881(n+1), A364912(A061579(n)))`
-/

namespace A365004.P2623586714231777515
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A153881 (n + 1)) (A364912 (A061579 n).toNat)

end

end A365004.P2623586714231777515

/-! ## A365004.P16866233329599997789

`A364912(A061579(n))+A000007(2*n+3)`
-/

namespace A365004.P16866233329599997789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364912 (A061579 n).toNat + A000007 (2 * n + 3)

end

end A365004.P16866233329599997789

/-!
# A365005: Number of ways to write 2 as a nonnegative linear combination of a strict integer partition of n.

The programs for A365005, there is no canonical definition to state claims against.
-/

/-! ## A365005.P11153042854097426124

`A364916(∑[n+2]+3)`
-/

namespace A365005.P11153042854097426124
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364916 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A365005.P11153042854097426124

/-! ## A365005.P2095323138732093076

`A032303(n)-A015744(n)`
-/

namespace A365005.P2095323138732093076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032303 n - A015744 n

end

end A365005.P2095323138732093076

/-! ## A365005.P16653063420741671484

`A116861(∑[n+2]-1)%A008837(n+1)`
-/

namespace A365005.P16653063420741671484
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A116861 (∑ j ∈ Finset.range (n + 1), f1 j - 1)) (A008837 (n + 1))

end

end A365005.P16653063420741671484

/-! ## A365005.P16284960878008277809

`A057427(n)*A116861(A034856(n+1))`
-/

namespace A365005.P16284960878008277809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A116861 (A034856 (n + 1)).toNat

end

end A365005.P16284960878008277809

/-! ## A365005.P6765652594514726305

`A116861(A034856(n+1))%A005286(n)`
-/

namespace A365005.P6765652594514726305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A116861 (A034856 (n + 1)).toNat) (A005286 n)

end

end A365005.P6765652594514726305

/-! ## A365005.P509755593283181645

`A364916(A089071(n+4))%A000070(n)`
-/

namespace A365005.P509755593283181645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A364916 (A089071 (n + 4)).toNat) (A000070 n)

end

end A365005.P509755593283181645

/-! ## A365005.P5515141951198765188

`A000009(n)+A096765(n)-A015744(n)`
-/

namespace A365005.P5515141951198765188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n + (A096765 n - A015744 n)

end

end A365005.P5515141951198765188

/-! ## A365005.P12939326132025527937

`A116861(A034856(n+1))+n-A028310(n)`
-/

namespace A365005.P12939326132025527937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116861 (A034856 (n + 1)).toNat + ((n : ℤ) - A028310 n)

end

end A365005.P12939326132025527937

/-! ## A365005.P10529294624554267033

`A116861(A034856(n+1))*A319610(2*n+1)`
-/

namespace A365005.P10529294624554267033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116861 (A034856 (n + 1)).toNat * A319610 (2 * n + 1)

end

end A365005.P10529294624554267033

/-!
# A365007: a(n) = Sum_{d|n} (-1)^(n/d-1) * binomial(d+1,2).

The programs for A365007, the canonical program `A365007.P2867238693407035172` is in `Seq.B000.C047`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A365007 has offset 1).

The definition of A365007 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A365007.P2867238693407035172

`∑{d}[n+1, (-1)^((n+1)/#-1)*C(#+1, 2)]`

The canonical program, it is in `Seq.B000.C047`.
-/

namespace A365007

/-- `∑{d}[n+1, (-1)^((n+1)/#-1)*C(#+1, 2)]` -/
def P2867238693407035172.Spec : Prop :=
  ∀ n, P2867238693407035172.a n = (A365007 (n + 1) : ℝ)

end A365007

/-! ## A365007.P1496682667742082388

`-∑{d}[n+1, (-1)^((n+1)/#)*C(#+1, 2)]`
-/

namespace A365007.P1496682667742082388
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  -(∑ d ∈ Nat.divisors (f1 n), (-1 : ℝ) ^ ((n + 1 : ℚ) / (d : ℚ) : ℝ) * (Nat.choose (d + 1) 2 : ℝ))

end

end A365007.P1496682667742082388

namespace A365007

/-- `-∑{d}[n+1, (-1)^((n+1)/#)*C(#+1, 2)]` -/
def P1496682667742082388.Spec : Prop :=
  ∀ n, P1496682667742082388.a n = (A365007 (n + 1) : ℝ)

end A365007

/-! ## A365007.P5298191299869322143

`∑{d}[n+1, A390802(#)]`
-/

namespace A365007.P5298191299869322143
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A390802 d

end

end A365007.P5298191299869322143

namespace A365007

/-- `∑{d}[n+1, A390802(#)]` -/
def P5298191299869322143.Spec : Prop :=
  ∀ n, P5298191299869322143.a n = A365007 (n + 1)

end A365007

/-! ## A365007.P8405635457540293401

`A363969(n+1)+A346759(n+1)`
-/

namespace A365007.P8405635457540293401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363969 (n + 1) + A346759 (n + 1)

end

end A365007.P8405635457540293401

namespace A365007

/-- `A363969(n+1)+A346759(n+1)` -/
def P8405635457540293401.Spec : Prop :=
  ∀ n, P8405635457540293401.a n = A365007 (n + 1)

end A365007

/-! ## A365007.P11571061671501611812

`∑{d}[n+1, A000593(#)*A023896((n+1)/#)]`
-/

namespace A365007.P11571061671501611812
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000593 d * A023896 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A365007.P11571061671501611812

namespace A365007

/-- `∑{d}[n+1, A000593(#)*A023896((n+1)/#)]` -/
def P11571061671501611812.Spec : Prop :=
  ∀ n, P11571061671501611812.a n = A365007 (n + 1)

end A365007

/-! ## A365007.P11789421085865405335

`∑{d}[n+1, A007438(#)*A048272((n+1)/#)]`
-/

namespace A365007.P11789421085865405335
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007438 d * A048272 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A365007.P11789421085865405335

namespace A365007

/-- `∑{d}[n+1, A007438(#)*A048272((n+1)/#)]` -/
def P11789421085865405335.Spec : Prop :=
  ∀ n, P11789421085865405335.a n = A365007 (n + 1)

end A365007

/-! ## A365007.P1620271574737912530

`∑{d}[n+1, A057661(#)*A193356((n+1)/#)]`
-/

namespace A365007.P1620271574737912530
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A057661 d * A193356 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A365007.P1620271574737912530

namespace A365007

/-- `∑{d}[n+1, A057661(#)*A193356((n+1)/#)]` -/
def P1620271574737912530.Spec : Prop :=
  ∀ n, P1620271574737912530.a n = A365007 (n + 1)

end A365007

/-! ## A365007.P14837021474561562355

`∑{d}[n+1, A125287(#)*A288418((n+1)/#)]`
-/

namespace A365007.P14837021474561562355
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A125287 d * A288418 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A365007.P14837021474561562355

namespace A365007

/-- `∑{d}[n+1, A125287(#)*A288418((n+1)/#)]` -/
def P14837021474561562355.Spec : Prop :=
  ∀ n, P14837021474561562355.a n = A365007 (n + 1)

end A365007

/-! ## A365007.P7412553658833724256

`∑{d}[n+1, A117212(#)*A309731((n+1)/#)]`
-/

namespace A365007.P7412553658833724256
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A117212 d * A309731 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A365007.P7412553658833724256

namespace A365007

/-- `∑{d}[n+1, A117212(#)*A309731((n+1)/#)]` -/
def P7412553658833724256.Spec : Prop :=
  ∀ n, P7412553658833724256.a n = A365007 (n + 1)

end A365007

/-! ## A365007.P9982125130619487176

`∑{d}[n+1, A080278(#)*A390803((n+1)/#)]`
-/

namespace A365007.P9982125130619487176
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A080278 d * A390803 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A365007.P9982125130619487176

namespace A365007

/-- `∑{d}[n+1, A080278(#)*A390803((n+1)/#)]` -/
def P9982125130619487176.Spec : Prop :=
  ∀ n, P9982125130619487176.a n = A365007 (n + 1)

end A365007

/-! ## A365007.P16333178748753004254

`∑{d}[n+1, A115607(#)*A390804((n+1)/#)]`
-/

namespace A365007.P16333178748753004254
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A115607 d * A390804 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A365007.P16333178748753004254

namespace A365007

/-- `∑{d}[n+1, A115607(#)*A390804((n+1)/#)]` -/
def P16333178748753004254.Spec : Prop :=
  ∀ n, P16333178748753004254.a n = A365007 (n + 1)

end A365007

/-! ## A365007.P18012088429898824197

`∑{d}[n+1, A230074(#)*A338045((n+1)/#)]`
-/

namespace A365007.P18012088429898824197
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A230074 d * A338045 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A365007.P18012088429898824197

namespace A365007

/-- `∑{d}[n+1, A230074(#)*A338045((n+1)/#)]` -/
def P18012088429898824197.Spec : Prop :=
  ∀ n, P18012088429898824197.a n = A365007 (n + 1)

end A365007

/-! ## A365007.P2110179314156313407

`∑{d}[n+1, A288571(#)*A326828((n+1)/#)]`
-/

namespace A365007.P2110179314156313407
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A288571 d * A326828 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A365007.P2110179314156313407

namespace A365007

/-- `∑{d}[n+1, A288571(#)*A326828((n+1)/#)]` -/
def P2110179314156313407.Spec : Prop :=
  ∀ n, P2110179314156313407.a n = A365007 (n + 1)

end A365007

/-! ## A365007.P12605781127362055463

`∑{d}[n+1, A326826(#)*A361019((n+1)/#)]`
-/

namespace A365007.P12605781127362055463
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A326826 d * A361019 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A365007.P12605781127362055463

namespace A365007

/-- `∑{d}[n+1, A326826(#)*A361019((n+1)/#)]` -/
def P12605781127362055463.Spec : Prop :=
  ∀ n, P12605781127362055463.a n = A365007 (n + 1)

end A365007

/-! ## A365007.P6147411539265948051

`∑{d}[n+1, A300853(#)*A390806((n+1)/#)]`
-/

namespace A365007.P6147411539265948051
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A300853 d * A390806 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A365007.P6147411539265948051

namespace A365007

/-- `∑{d}[n+1, A300853(#)*A390806((n+1)/#)]` -/
def P6147411539265948051.Spec : Prop :=
  ∀ n, P6147411539265948051.a n = A365007 (n + 1)

end A365007

/-! ## A365007.P4861402110007173629

`∑{d}[n+1, A300894(#)*A390808((n+1)/#)]`
-/

namespace A365007.P4861402110007173629
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A300894 d * A390808 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A365007.P4861402110007173629

namespace A365007

/-- `∑{d}[n+1, A300894(#)*A390808((n+1)/#)]` -/
def P4861402110007173629.Spec : Prop :=
  ∀ n, P4861402110007173629.a n = A365007 (n + 1)

end A365007

/-! ## A365007.P18031377953256098675

`∑{d}[n+1, A304906(#)*A390807((n+1)/#)]`
-/

namespace A365007.P18031377953256098675
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A304906 d * A390807 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A365007.P18031377953256098675

namespace A365007

/-- `∑{d}[n+1, A304906(#)*A390807((n+1)/#)]` -/
def P18031377953256098675.Spec : Prop :=
  ∀ n, P18031377953256098675.a n = A365007 (n + 1)

end A365007

/-!
# A365009: Semiprimes that are the concatenation of two or more semiprimes.

The programs for A365009, there is no canonical definition to state claims against.
-/

/-! ## A365009.P11816711736123444365

`∩[A108631(n+1), A353439(n+1)]`
-/

namespace A365009.P11816711736123444365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108631 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353439 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A365009.P11816711736123444365

/-!
# A365010: E.g.f. satisfies A(x) = 1 + x*exp(-x)*A(x)^3.

The programs for A365010, there is no canonical definition to state claims against.
-/

/-! ## A365010.P1048574344449830939

`A130936(A007162(n)²)`
-/

namespace A365010.P1048574344449830939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130936 (A007162 n ^ 2).toNat

end

end A365010.P1048574344449830939

/-!
# A365011: E.g.f. satisfies A(x) = 1 + x*exp(-x)*A(x)^4.

The programs for A365011, there is no canonical definition to state claims against.
-/

/-! ## A365011.P143921145927261387

`A244581(A326346(n+1))`
-/

namespace A365011.P143921145927261387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244581 (A326346 (n + 1)).toNat

end

end A365011.P143921145927261387

/-!
# A365012: E.g.f. satisfies A(x) = exp( x*A(x)/(1 - x * A(x)^2) ).

The programs for A365012, there is no canonical definition to state claims against.
-/

/-! ## A365012.P6176597049914329645

`A186499(n!²)`
-/

namespace A365012.P6176597049914329645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186499 (Nat.factorial n ^ 2)

end

end A365012.P6176597049914329645

/-!
# A365013: E.g.f. satisfies A(x) = exp( x*A(x)/(1 - x * A(x)^3) ).

The programs for A365013, there is no canonical definition to state claims against.
-/

/-! ## A365013.P1510217073545344187

`A046100(A141361(n))`
-/

namespace A365013.P1510217073545344187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046100 (A141361 n).toNat

end

end A365013.P1510217073545344187

/-!
# A365014: E.g.f. satisfies A(x) = exp( x*A(x)^2/(1 - x * A(x)^3) ).

The programs for A365014, there is no canonical definition to state claims against.
-/

/-! ## A365014.P6520677084269626821

`A188298(A096537(n))`
-/

namespace A365014.P6520677084269626821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188298 (A096537 n).toNat

end

end A365014.P6520677084269626821

/-!
# A365015: E.g.f. satisfies A(x) = exp( x*A(x)^3/(1 - x * A(x)) ).

The programs for A365015, there is no canonical definition to state claims against.
-/

/-! ## A365015.P10355042456734345946

`A305297(A011781(n)-n)`
-/

namespace A365015.P10355042456734345946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305297 (A011781 n - (n : ℤ)).toNat

end

end A365015.P10355042456734345946

/-!
# A365016: E.g.f. satisfies A(x) = exp( x*A(x)^3/(1 - x * A(x)^2) ).

The programs for A365016, there is no canonical definition to state claims against.
-/

/-! ## A365016.P12762741348220810031

`A382037(n)+A326678(A009599(n))`
-/

namespace A365016.P12762741348220810031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382037 n + A326678 (A009599 n).toNat

end

end A365016.P12762741348220810031

/-!
# A365017: a(n) is the least nonnegative integer not already in the sequence whose binary expansion is not the concatenation of any two earlier terms.

The programs for A365017, there is no canonical definition to state claims against.
-/

/-! ## A365017.P14420067698785424320

`A365018(n+1)-A364871(n+1)`
-/

namespace A365017.P14420067698785424320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365018 (n + 1) - A364871 (n + 1)

end

end A365017.P14420067698785424320

/-!
# A365018: a(n) is the least positive integer not already in the sequence whose binary expansion is not the concatenation of any two earlier terms.

The programs for A365018, there is no canonical definition to state claims against.
-/

/-! ## A365018.P757124402493386601

`A365017(n+1)+A364871(n+1)`
-/

namespace A365018.P757124402493386601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365017 (n + 1) + A364871 (n + 1)

end

end A365018.P757124402493386601

/-! ## A365018.P6517744894885119902

`lt[A383889(n+1)*A386487(n+1), A330330(3*n+1)]`
-/

namespace A365018.P6517744894885119902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383889 (n + 1) * A386487 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330330 (3 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A365018.P6517744894885119902

/-!
# A365021: a(n) is the largest prime of the form P+1 where P divides prime(n)# and p# denotes the product of all primes <= p.

The programs for A365021, there is no canonical definition to state claims against.
-/

/-! ## A365021.P11925090999568193809

`(A365078(n+1)+A002110(n+1))/A365078(n+1)`
-/

namespace A365021.P11925090999568193809
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A365078 (n + 1) + A002110 (n + 1) : ℚ) / (A365078 (n + 1) : ℚ)

end

end A365021.P11925090999568193809

/-! ## A365021.P4173808057405916040

`A092967(A000040(n+1))`
-/

namespace A365021.P4173808057405916040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092967 (A000040 (n + 1)).toNat

end

end A365021.P4173808057405916040

/-! ## A365021.P14096455871377806968

`A092967(A206074(n+1))`
-/

namespace A365021.P14096455871377806968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092967 (A206074 (n + 1)).toNat

end

end A365021.P14096455871377806968

/-! ## A365021.P1434846120085197162

`A092967(A008578(n+2))`
-/

namespace A365021.P1434846120085197162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092967 (A008578 (n + 2)).toNat

end

end A365021.P1434846120085197162

/-! ## A365021.P14243418015048244171

`A092967(eq[1, A003415(n)])`
-/

namespace A365021.P14243418015048244171
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092967 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A365021.P14243418015048244171

/-!
# A365025: Square array read by antidiagonals: T(n, k) := (k/2)!/k! * ((2*n+1)*k)! * ((2*n+1/2)*k)! / ( (n*k)!^2 * ((n+1/2)*k)!^2 ) for n, k >= 0.

The programs for A365025, there is no canonical definition to state claims against.
-/

/-! ## A365025.P2974128577563049652

`A156767(n)^a(n-1)` with `a(0)=1`
-/

namespace A365025.P2974128577563049652
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [1] fun n a =>
  (A156767 n : ℝ) ^ (a (n - 1))

end

end A365025.P2974128577563049652

/-! ## A365025.P12653106733162236552

`A064915(A008958(n))`
-/

namespace A365025.P12653106733162236552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064915 (A008958 n).toNat

end

end A365025.P12653106733162236552

/-! ## A365025.P1970709867302570079

`A156767(A073789(n))`
-/

namespace A365025.P1970709867302570079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156767 (A073789 n).toNat

end

end A365025.P1970709867302570079

/-! ## A365025.P2924050158315426273

`A258445(A027366(n))`
-/

namespace A365025.P2924050158315426273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258445 (A027366 n).toNat

end

end A365025.P2924050158315426273

/-!
# A365026: a(n) = (5*n)!*(9*n/2)!*(n/2)! / ((2*n)!^2 * (5*n/2)!^2 * n!).

The programs for A365026, there is no canonical definition to state claims against.
-/

/-! ## A365026.P1620554571455560713

`A365025(∑[n+3])`
-/

namespace A365026.P1620554571455560713
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365025 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A365026.P1620554571455560713

/-!
# A365027: a(n) = (7*n)!*(13*n/2)!*(n/2)! / ((3*n)!^2 * (7*n/2)!^2 * n!).

The programs for A365027, there is no canonical definition to state claims against.
-/

/-! ## A365027.P10944277179143607303

`A365025(A000124(n+4)-5)`
-/

namespace A365027.P10944277179143607303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365025 (A000124 (n + 4) - 5).toNat

end

end A365027.P10944277179143607303

/-!
# A365030: E.g.f. satisfies A(x) = exp(x * (1 + x * A(x))^3).

The programs for A365030, the canonical program `A365030.P17159541544685275632` is in `Seq.B000.C047`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A365030 has offset 0).

The definition of A365030 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A365030.P17159541544685275632

`n!*∑{#}[n, (n-#+1)^(#-1)*C(3*#, n-#)/#!]`

The canonical program, it is in `Seq.B000.C047`.
-/

namespace A365030

/-- `n!*∑{#}[n, (n-#+1)^(#-1)*C(3*#, n-#)/#!]` -/
def P17159541544685275632.Spec : Prop :=
  ∀ n, P17159541544685275632.a n = (A365030 n : ℚ)

end A365030

/-! ## A365030.P17202047009670647288

`A364979(n+1)/(n+1)`
-/

namespace A365030.P17202047009670647288
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A364979 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A365030.P17202047009670647288

namespace A365030

/-- `A364979(n+1)/(n+1)` -/
def P17202047009670647288.Spec : Prop :=
  ∀ n, P17202047009670647288.a n = (A365030 n : ℚ)

end A365030

/-!
# A365031: E.g.f. satisfies A(x) = exp(x * A(x) * (1 + x * A(x))^2).

The programs for A365031, the canonical program `A365031.P15784201305555899598` is in `Seq.B000.C047`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A365031 has offset 0).

The definition of A365031 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A365031.P15784201305555899598

`n!*∑{#}[n, (n+1)^(#-1)*C(2*#, n-#)/#!]`

The canonical program, it is in `Seq.B000.C047`.
-/

namespace A365031

/-- `n!*∑{#}[n, (n+1)^(#-1)*C(2*#, n-#)/#!]` -/
def P15784201305555899598.Spec : Prop :=
  ∀ n, P15784201305555899598.a n = (A365031 n : ℚ)

end A365031

/-!
# A365032: E.g.f. satisfies A(x) = exp(x * A(x) * (1 + x * A(x))^3).

The programs for A365032, the canonical program `A365032.P10561712851685441410` is in `Seq.B000.C047`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A365032 has offset 0).

The definition of A365032 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A365032.P10561712851685441410

`n!*∑{#}[n, (n+1)^(#-1)*C(3*#, n-#)/#!]`

The canonical program, it is in `Seq.B000.C047`.
-/

namespace A365032

/-- `n!*∑{#}[n, (n+1)^(#-1)*C(3*#, n-#)/#!]` -/
def P10561712851685441410.Spec : Prop :=
  ∀ n, P10561712851685441410.a n = (A365032 n : ℚ)

end A365032

/-!
# A365033: E.g.f. satisfies A(x) = exp(x * A(x)^2 * (1 + x * A(x))^2).

The programs for A365033, the canonical program `A365033.P14375836553979046808` is in `Seq.B000.C047`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A365033 has offset 0).

The definition of A365033 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A365033.P14375836553979046808

`n!*∑{#}[n, (n+#+1)^(#-1)*C(2*#, n-#)/#!]`

The canonical program, it is in `Seq.B000.C047`.
-/

namespace A365033

/-- `n!*∑{#}[n, (n+#+1)^(#-1)*C(2*#, n-#)/#!]` -/
def P14375836553979046808.Spec : Prop :=
  ∀ n, P14375836553979046808.a n = (A365033 n : ℚ)

end A365033

/-!
# A365036: E.g.f. satisfies A(x) = exp(x * (1 + x/A(x)^2)).

The programs for A365036, there is no canonical definition to state claims against.
-/

/-! ## A365036.P1135469283044797314

`A346711(A128339(n+1)%A000219(n))`
-/

namespace A365036.P1135469283044797314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346711 (Int.tmod (A128339 (n + 1)) (A000219 n)).toNat

end

end A365036.P1135469283044797314

/-!
# A365039: E.g.f. satisfies A(x) = exp(x * (1 + x)/A(x)^2).

The programs for A365039, there is no canonical definition to state claims against.
-/

/-! ## A365039.P10975018908994974702

`A155041(A346982(n)-A132795(n))`
-/

namespace A365039.P10975018908994974702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155041 (A346982 n - A132795 n).toNat

end

end A365039.P10975018908994974702

/-! ## A365039.P10265143152890859186

`A155041(xor(A132795(n), A346982(n)))`
-/

namespace A365039.P10265143152890859186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155041 (Int.xor (A132795 n) (A346982 n)).toNat

end

end A365039.P10265143152890859186

/-!
# A365040: E.g.f. satisfies A(x) = exp(x * (1 + x)/A(x)^3).

The programs for A365040, there is no canonical definition to state claims against.
-/

/-! ## A365040.P5298606911210350390

`A097141(A003226(n+1)^A370586(n))`
-/

namespace A365040.P5298606911210350390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097141 (SequenceMachineLib.roundAway ((A003226 (n + 1) : ℚ) ^ (A370586 n : ℤ))).toNat

end

end A365040.P5298606911210350390

/-!
# A365042: Number of subsets of {1..n} containing n such that some element can be written as a positive linear combination of the others.

The programs for A365042, there is no canonical definition to state claims against.
-/

/-! ## A365042.P7417026112530743254

`A088314(n)-1`
-/

namespace A365042.P7417026112530743254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088314 n - 1

end

end A365042.P7417026112530743254

/-! ## A365042.P5895982122589204905

`Δ[A365043(abs(1-n))]`
-/

namespace A365042.P5895982122589204905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365043 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A365042.P5895982122589204905

/-! ## A365042.P2407453553977224797

`A111133(n)+A088571(n)`
-/

namespace A365042.P2407453553977224797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111133 n + A088571 n

end

end A365042.P2407453553977224797

/-! ## A365042.P9544154055391250713

`A000225(n)-A365322(n)`
-/

namespace A365042.P9544154055391250713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n - A365322 n

end

end A365042.P9544154055391250713

/-! ## A365042.P6829340631830846798

`A131577(n)-A365045(n)`
-/

namespace A365042.P6829340631830846798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 n - A365045 n

end

end A365042.P6829340631830846798

/-! ## A365042.P7373625226038277463

`A000009(n)+A088571(n)-1`
-/

namespace A365042.P7373625226038277463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n + (A088571 n - 1)

end

end A365042.P7373625226038277463

/-! ## A365042.P13944442562358531714

`A088571(n)+abs(A081360(n))-1`
-/

namespace A365042.P13944442562358531714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088571 n + |A081360 n| - 1

end

end A365042.P13944442562358531714

/-! ## A365042.P8734602159029966383

`A088571(n)+∑[A087897(n)]-1`
-/

namespace A365042.P8734602159029966383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087897 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088571 n + ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A365042.P8734602159029966383

/-! ## A365042.P5847795635264416334

`A284593(∑[n])+A088571(n)-1`
-/

namespace A365042.P5847795635264416334
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284593 (∑ j ∈ Finset.range (n + 1), f1 j) + A088571 n - 1

end

end A365042.P5847795635264416334

/-! ## A365042.P6141943093800854139

`A168361(2*(n+1))+A088314(n)`
-/

namespace A365042.P6141943093800854139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168361 (2 * (n + 1)) + A088314 n

end

end A365042.P6141943093800854139

/-!
# A365043: Number of subsets of {1..n} whose greatest element can be written as a (strictly) positive linear combination of the others.

The programs for A365043, there is no canonical definition to state claims against.
-/

/-! ## A365043.P12574127838021766197

`2^n-A365044(n)`
-/

namespace A365043.P12574127838021766197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A365044 n

end

end A365043.P12574127838021766197

/-! ## A365043.P8163818069365587576

`∑[A088314(n)-1]`
-/

namespace A365043.P8163818069365587576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088314 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A365043.P8163818069365587576

/-! ## A365043.P18157436684419066126

`A353150(n)-(n+1)`
-/

namespace A365043.P18157436684419066126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353150 n - (n + 1 : ℤ)

end

end A365043.P18157436684419066126

/-! ## A365043.P16516055440249056183

`A001489(n+1)+∑[A088314(n)]`
-/

namespace A365043.P16516055440249056183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088314 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001489 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A365043.P16516055440249056183

/-! ## A365043.P8186662439752991717

`A024000(n+2)+∑[A088314(n)]`
-/

namespace A365043.P8186662439752991717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088314 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024000 (n + 2) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A365043.P8186662439752991717

/-! ## A365043.P14720932205116557053

`∑[A153881(3*n+2)+A088314(n)]`
-/

namespace A365043.P14720932205116557053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153881 (3 * n + 2) + A088314 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A365043.P14720932205116557053

/-! ## A365043.P6116875799167747939

`∑[A365042(n)]`
-/

namespace A365043.P6116875799167747939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365042 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A365043.P6116875799167747939

/-! ## A365043.P17902011312100645570

`∑[A111133(n)+A088571(n)]`
-/

namespace A365043.P17902011312100645570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111133 n + A088571 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A365043.P17902011312100645570

/-!
# A365044: Number of subsets of {1..n} whose greatest element cannot be written as a (strictly) positive linear combination of the others.

The programs for A365044, there is no canonical definition to state claims against.
-/

/-! ## A365044.P9522216677463052067

`2^n-A365043(n)`
-/

namespace A365044.P9522216677463052067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A365043 n

end

end A365044.P9522216677463052067

/-! ## A365044.P30822884362128700

`∑[A365045(n)]+1`
-/

namespace A365044.P30822884362128700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A365044.P30822884362128700

/-! ## A365044.P1689278369612013977

`2^n-∑[A365042(n)]`
-/

namespace A365044.P1689278369612013977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365042 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A365044.P1689278369612013977

/-! ## A365044.P6955932993025291819

`∑[A365045(A028310(n))]`
-/

namespace A365044.P6955932993025291819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365045 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A365044.P6955932993025291819

/-! ## A365044.P16813624505935097085

`A005126(n)-A353150(n)`
-/

namespace A365044.P16813624505935097085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005126 n - A353150 n

end

end A365044.P16813624505935097085

/-!
# A365045: Number of subsets of {1..n} containing n such that no element can be written as a positive linear combination of the others.

The programs for A365045, there is no canonical definition to state claims against.
-/

/-! ## A365045.P3333443683436326704

`floor(2^(n-1))-A365042(n)`
-/

namespace A365045.P3333443683436326704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋ - A365042 n

end

end A365045.P3333443683436326704

/-! ## A365045.P2199270203156697619

`A094373(n)-A088314(n)`
-/

namespace A365045.P2199270203156697619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094373 n - A088314 n

end

end A365045.P2199270203156697619

/-! ## A365045.P11410468297440036451

`A131577(n)+1-A088314(n)`
-/

namespace A365045.P11410468297440036451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 n + (1 - A088314 n)

end

end A365045.P11410468297440036451

/-! ## A365045.P9224845960515091752

`A365322(n)+1-A011782(n)`
-/

namespace A365045.P9224845960515091752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365322 n + 1 - A011782 n

end

end A365045.P9224845960515091752

/-! ## A365045.P8777787671139942996

`record[A331309(n+1)]-A088314(n)`
-/

namespace A365045.P8777787671139942996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331309 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A088314 n

end

end A365045.P8777787671139942996

/-! ## A365045.P7989048085354999453

`A364755(n)+A364756(n)-A365042(n)`
-/

namespace A365045.P7989048085354999453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364755 n + (A364756 n - A365042 n)

end

end A365045.P7989048085354999453

/-!
# A365046: Number of subsets of {1..n} containing n such that some element can be written as a nonnegative linear combination of the others.

The programs for A365046, there is no canonical definition to state claims against.
-/

/-! ## A365046.P14369466289539231856

`Δ[A364914(abs(1-n))]`
-/

namespace A365046.P14369466289539231856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364914 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A365046.P14369466289539231856

/-! ## A365046.P9594054315630016256

`A364914(n)-A364914(abs(1-n))`
-/

namespace A365046.P9594054315630016256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364914 n - A364914 |1 - (n : ℤ)|.toNat

end

end A365046.P9594054315630016256

/-! ## A365046.P4951137840127199659

`A238005(A279784(n)+A148904(n))`
-/

namespace A365046.P4951137840127199659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238005 (A279784 n + A148904 n).toNat

end

end A365046.P4951137840127199659

/-! ## A365046.P10362600210076089382

`A006951(n)-A003960(A003946(n))`
-/

namespace A365046.P10362600210076089382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006951 n - A003960 (A003946 n).toNat

end

end A365046.P10362600210076089382

/-! ## A365046.P5909396228339614031

`A053645(A006951(n)^A333733(n+3))`
-/

namespace A365046.P5909396228339614031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053645 (SequenceMachineLib.roundAway ((A006951 n : ℚ) ^ (A333733 (n + 3) : ℤ))).toNat

end

end A365046.P5909396228339614031

/-!
# A365047: a(n) is the number of three-term geometric progressions, with rational ratio > 0, formed by the terms a(n-1), a(n-1-k) and a(n-1-2*k), where k >= 1 and n - 1 - 2*k >= 0.

The programs for A365047, there is no canonical definition to state claims against.
-/

/-! ## A365047.P9432690703884967670

`A360721(A291171(n+1)+1)-1`
-/

namespace A365047.P9432690703884967670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360721 (A291171 (n + 1) + 1).toNat - 1

end

end A365047.P9432690703884967670

/-! ## A365047.P1292469902694543943

`A101436(A134444(n)+A000288(n))`
-/

namespace A365047.P1292469902694543943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101436 (A134444 n + A000288 n).toNat

end

end A365047.P1292469902694543943

/-! ## A365047.P12081833699143551572

`A319995(A365544(n)+A325548(n))`
-/

namespace A365047.P12081833699143551572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319995 (A365544 n + A325548 n).toNat

end

end A365047.P12081833699143551572

/-! ## A365047.P4722134896977123365

`A124760(A035194(n+1)*A267004(n))`
-/

namespace A365047.P4722134896977123365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124760 (A035194 (n + 1) * A267004 n).toNat

end

end A365047.P4722134896977123365

/-! ## A365047.P17286287999138829112

`A014886(n+1)%A165413(A351013(n))`
-/

namespace A365047.P17286287999138829112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A014886 (n + 1)) (A165413 (A351013 n).toNat)

end

end A365047.P17286287999138829112

/-!
# A365049: a(n) is the number of distinct parallelograms with integer sides and area n, and where at least one height is an integer.

The programs for A365049, there is no canonical definition to state claims against.
-/

/-! ## A365049.P8246434552439937985

`A241534(n+1)+A038548(n+1)`
-/

namespace A365049.P8246434552439937985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241534 (n + 1) + A038548 (n + 1)

end

end A365049.P8246434552439937985

/-! ## A365049.P9443131158756482068

`A337532(n+1)-A056924(n+1)`
-/

namespace A365049.P9443131158756482068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337532 (n + 1) - A056924 (n + 1)

end

end A365049.P9443131158756482068

/-! ## A365049.P3857525330718857658

`A337532(n+1)-A123108(Δ[A006218(n)])`
-/

namespace A365049.P3857525330718857658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337532 (n + 1) - A123108 (f1 (n + 1) - f1 n).toNat

end

end A365049.P3857525330718857658

/-! ## A365049.P11015336105288128208

`A337532(n+1)-A123108(A038040(n+1)/(n+1))`
-/

namespace A365049.P11015336105288128208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337532 (n + 1) - A123108 (SequenceMachineLib.roundAway ((A038040 (n + 1) : ℚ) / (n + 1 : ℚ))).toNat

end

end A365049.P11015336105288128208

/-! ## A365049.P2162895400220646716

`A337532(n+1)-A123108(A006218(n+1)-A006218(n))`
-/

namespace A365049.P2162895400220646716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337532 (n + 1) - A123108 (A006218 (n + 1) - A006218 n).toNat

end

end A365049.P2162895400220646716

/-! ## A365049.P8598267868784598337

`A337532(n+1)-A123108(A048691(n+1)-A055205(n+1))`
-/

namespace A365049.P8598267868784598337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337532 (n + 1) - A123108 (A048691 (n + 1) - A055205 (n + 1)).toNat

end

end A365049.P8598267868784598337

/-! ## A365049.P11804975253743226232

`A337532(n+1)-A123108(A001227(n+1)*(A007814(n+1)+1))`
-/

namespace A365049.P11804975253743226232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337532 (n + 1) - A123108 (A001227 (n + 1) * (A007814 (n + 1) + 1)).toNat

end

end A365049.P11804975253743226232

/-! ## A365049.P6635593838850850035

`A337532(n+1)-A123108(2*A038548(n+1)-A010052(n+1))`
-/

namespace A365049.P6635593838850850035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337532 (n + 1) - A123108 (2 * A038548 (n + 1) - A010052 (n + 1)).toNat

end

end A365049.P6635593838850850035

/-!
# A365053: E.g.f. satisfies A(x) = exp( x * (1+x/2) * A(x) ).

The programs for A365053, the canonical program `A365053.P6883207826851075038` is in `Seq.B000.C047`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A365053 has offset 0).

The definition of A365053 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A365053.P6883207826851075038

`n!*∑{#}[n, (1/2)^(n-#)*(#+1)^(#-1)*C(#, n-#)/#!]`

The canonical program, it is in `Seq.B000.C047`.
-/

namespace A365053

/-- `n!*∑{#}[n, (1/2)^(n-#)*(#+1)^(#-1)*C(#, n-#)/#!]` -/
def P6883207826851075038.Spec : Prop :=
  ∀ n, P6883207826851075038.a n = (A365053 n : ℚ)

end A365053

/-! ## A365053.P17909064090182136561

`A261094(A240573(n)+A050351(n))`
-/

namespace A365053.P17909064090182136561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261094 (A240573 n + A050351 n).toNat

end

end A365053.P17909064090182136561

namespace A365053

/-- `A261094(A240573(n)+A050351(n))` -/
def P17909064090182136561.Spec : Prop :=
  ∀ n, P17909064090182136561.a n = A365053 n

end A365053

/-!
# A365054: E.g.f. satisfies A(x) = exp( x * (1+x/2) * A(x)^2 ).

The programs for A365054, there is no canonical definition to state claims against.
-/

/-! ## A365054.P13387875135931423836

`A324382(A394732(n))`
-/

namespace A365054.P13387875135931423836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324382 (A394732 n).toNat

end

end A365054.P13387875135931423836

/-!
# A365055: E.g.f. satisfies A(x) = exp( x * (1+x/2) * A(x)^3 ).

The programs for A365055, the canonical program `A365055.P8878954622195386822` is in `Seq.B000.C047`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A365055 has offset 0).

The definition of A365055 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A365055.P8878954622195386822

`n!*∑{#}[n, (1/2)^(n-#)*(3*#+1)^(#-1)*C(#, n-#)/#!]`

The canonical program, it is in `Seq.B000.C047`.
-/

namespace A365055

/-- `n!*∑{#}[n, (1/2)^(n-#)*(3*#+1)^(#-1)*C(#, n-#)/#!]` -/
def P8878954622195386822.Spec : Prop :=
  ∀ n, P8878954622195386822.a n = (A365055 n : ℚ)

end A365055

/-!
# A365057: E.g.f. satisfies A(x) = exp(x * A(x)^2 * (1 + x/2 * A(x)^2)).

The programs for A365057, the canonical program `A365057.P8149331782152906966` is in `Seq.B000.C047`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A365057 has offset 0).

The definition of A365057 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A365057.P8149331782152906966

`n!*∑{#}[n, (1/2)^(n-#)*(2*n+1)^(#-1)*C(#, n-#)/#!]`

The canonical program, it is in `Seq.B000.C047`.
-/

namespace A365057

/-- `n!*∑{#}[n, (1/2)^(n-#)*(2*n+1)^(#-1)*C(#, n-#)/#!]` -/
def P8149331782152906966.Spec : Prop :=
  ∀ n, P8149331782152906966.a n = (A365057 n : ℚ)

end A365057

/-!
# A365058: E.g.f. satisfies A(x) = exp(x * A(x)^3 * (1 + x/2 * A(x)^3)).

The programs for A365058, there is no canonical definition to state claims against.
-/

/-! ## A365058.P9415663739067401617

`A001481(A135861(n)+1)`
-/

namespace A365058.P9415663739067401617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001481 (A135861 n + 1).toNat

end

end A365058.P9415663739067401617

/-!
# A365061: a(n) is the number of endofunctions on an n-set where there is a single element with a preimage of maximum cardinality.

The programs for A365061, there is no canonical definition to state claims against.
-/

/-! ## A365061.P8886220498635600619

`(n+1)*A324699(A321737(n))`
-/

namespace A365061.P8886220498635600619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A324699 (A321737 n).toNat

end

end A365061.P8886220498635600619

/-!
# A365062: Enumeration of | Sort_n(123,321) |.

The programs for A365062, the canonical program `A365062.P8489107577493160946` is in `Seq.B000.C047`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A365062 has offset 0).

The definition of A365062 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A365062.P9053358702317093337

`ogf((1-x-x^4)/(1-2x))`
-/

namespace A365062.P9053358702317093337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, 0, 0, -1] [1, -2] n

end

end A365062.P9053358702317093337

namespace A365062

/-- `ogf((1-x-x^4)/(1-2x))` -/
def P9053358702317093337.Spec : Prop :=
  ∀ n, P9053358702317093337.a n = A365062 n

end A365062

/-! ## A365062.P8489107577493160946

`2*a(n-1)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=4, a(4)=7`

The canonical program, it is in `Seq.B000.C047`.
-/

namespace A365062

/-- `2*a(n-1)` -/
def P8489107577493160946.Spec : Prop :=
  ∀ n, (P8489107577493160946.a n : ℤ) = A365062 n

theorem P8489107577493160946.correct : P8489107577493160946.Spec := by
  intro n
  simp only [A365062]

end A365062

/-! ## A365062.P1215134682983774886

`a(n-1)+a(n-1)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=4, a(4)=7`
-/

namespace A365062.P1215134682983774886
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 2, 4, 7] fun n a =>
  a (n - 1) + a (n - 1)

end

end A365062.P1215134682983774886

namespace A365062

/-- `a(n-1)+a(n-1)` -/
def P1215134682983774886.Spec : Prop :=
  ∀ n, (P1215134682983774886.a n : ℤ) = A365062 n

theorem P1215134682983774886.correct : P1215134682983774886.Spec := by
  intro n
  simp only [A365062, Nat.add_sub_cancel, A365062.P1215134682983774886.a, A365062.P8489107577493160946.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A365062

/-! ## A365062.P7816289732375298143

`a(n-1)-(char[4]-a(n-1))` with `a(0)=1, a(1)=1`
-/

namespace A365062.P7816289732375298143
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) - (((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) - a (n - 1))

end

end A365062.P7816289732375298143

namespace A365062

/-- `a(n-1)-(char[4]-a(n-1))` -/
def P7816289732375298143.Spec : Prop :=
  ∀ n, P7816289732375298143.a n = A365062 n

end A365062

/-! ## A365062.P11373231864994337815

`a(n-1)-floor(gcd(4, a(n-1))/n-a(n-1))` with `a(0)=1`
-/

namespace A365062.P11373231864994337815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) - ⌊(Int.gcd 4 (a (n - 1)) : ℚ) / (n : ℚ) - (a (n - 1) : ℚ)⌋

end

end A365062.P11373231864994337815

namespace A365062

/-- `a(n-1)-floor(gcd(4, a(n-1))/n-a(n-1))` -/
def P11373231864994337815.Spec : Prop :=
  ∀ n, P11373231864994337815.a n = A365062 n

end A365062

/-! ## A365062.P7090060349871245347

`A143038(A238531(n))`
-/

namespace A365062.P7090060349871245347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143038 (A238531 n).toNat

end

end A365062.P7090060349871245347

namespace A365062

/-- `A143038(A238531(n))` -/
def P7090060349871245347.Spec : Prop :=
  ∀ n, P7090060349871245347.a n = A365062 n

end A365062

/-!
# A365067: Irregular triangle read by rows where T(n,k) is the number of integer partitions of n whose odd parts sum to k, for k ranging from mod(n,2) to n in steps of 2.

The programs for A365067, there is no canonical definition to state claims against.
-/

/-! ## A365067.P538281706218144028

`A113685(eq[1, A097807(n)])`
-/

namespace A365067.P538281706218144028
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097807 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113685 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A365067.P538281706218144028

/-! ## A365067.P12686492040243563145

`A113685(lt[0, A113685(n)])`
-/

namespace A365067.P12686492040243563145
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113685 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113685 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A365067.P12686492040243563145

/-! ## A365067.P1453080385723043309

`A113685(eq[A049310(n+1), A053117(n+1)])`
-/

namespace A365067.P1453080385723043309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049310 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053117 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113685 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A365067.P1453080385723043309

/-! ## A365067.P10292514643395767438

`A001221(A101216(n+4)-A051638(n))`
-/

namespace A365067.P10292514643395767438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A101216 (n + 4) - A051638 n).toNat

end

end A365067.P10292514643395767438

/-! ## A365067.P13304726690864414071

`A043542(A056391(n+1)-(A092968(n+1)-1)%5+1)`
-/

namespace A365067.P13304726690864414071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043542 (A056391 (n + 1) - Int.tmod (A092968 (n + 1) - 1) 5 + 1).toNat

end

end A365067.P13304726690864414071

/-!
# A365068: Number of integer partitions of n with some part that can be written as a nonnegative linear combination of the other distinct parts.

The programs for A365068, there is no canonical definition to state claims against.
-/

/-! ## A365068.P1098622286230596674

`A000041(n)-A364915(n)`
-/

namespace A365068.P1098622286230596674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A364915 n

end

end A365068.P1098622286230596674

/-! ## A365068.P7893680714965325662

`A213598(n)-A364915(n)`
-/

namespace A365068.P7893680714965325662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213598 n - A364915 n

end

end A365068.P7893680714965325662

/-! ## A365068.P7950947901239279033

`∑[A002865(n)]-A364915(n)`
-/

namespace A365068.P7950947901239279033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A364915 n

end

end A365068.P7950947901239279033

/-! ## A365068.P943629136522901471

`A365004(A000217(n))-A364915(n)`
-/

namespace A365068.P943629136522901471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365004 (A000217 n).toNat - A364915 n

end

end A365068.P943629136522901471

/-! ## A365068.P8233823838839989465

`A175788(A054000(n+2))-A364915(n)`
-/

namespace A365068.P8233823838839989465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175788 (A054000 (n + 2)).toNat - A364915 n

end

end A365068.P8233823838839989465

/-!
# A365069: Number of subsets of {1..n} containing n and some element equal to the sum of two or more distinct other elements. A variation of non-binary sum-full subsets without re-usable elements.

The programs for A365069, there is no canonical definition to state claims against.
-/

/-! ## A365069.P8877035510121719572

`Δ[A364534(abs(1-n))]`
-/

namespace A365069.P8877035510121719572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364534 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A365069.P8877035510121719572

/-! ## A365069.P18076996228632388852

`A131577(n)-A365071(n)`
-/

namespace A365069.P18076996228632388852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 n - A365071 n

end

end A365069.P18076996228632388852

/-! ## A365069.P17987445969055185671

`Δ[A011782(n)]-A365071(n)`
-/

namespace A365069.P17987445969055185671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A365071 n

end

end A365069.P17987445969055185671

/-! ## A365069.P13464138151329769417

`A364534(n)-A364534(abs(1-n))`
-/

namespace A365069.P13464138151329769417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364534 n - A364534 |1 - (n : ℤ)|.toNat

end

end A365069.P13464138151329769417

/-! ## A365069.P13001852820767061219

`A292943(A000040(n+1))-A365071(n)`
-/

namespace A365069.P13001852820767061219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292943 (A000040 (n + 1)).toNat - A365071 n

end

end A365069.P13001852820767061219

/-!
# A365070: Number of subsets of {1..n} containing n and some element equal to the sum of two other (possibly equal) elements.

The programs for A365070, there is no canonical definition to state claims against.
-/

/-! ## A365070.P15455087664137129136

`Δ[A093971(A289207(n)+1)]`
-/

namespace A365070.P15455087664137129136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093971 (A289207 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A365070.P15455087664137129136

/-! ## A365070.P6115836663104368601

`Δ[A093971(A233583(n+1)-1)]`
-/

namespace A365070.P6115836663104368601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093971 (A233583 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A365070.P6115836663104368601

/-! ## A365070.P4141427512474703890

`Δ[A093971(A111808(∑[n-1]+3))]`
-/

namespace A365070.P4141427512474703890
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093971 (A111808 (∑ j ∈ Finset.range (n + 1), f2 j + 3).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A365070.P4141427512474703890

/-! ## A365070.P2710880978190547982

`A011782(n)-A288728(A028310(n))`
-/

namespace A365070.P2710880978190547982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n - A288728 (A028310 n).toNat

end

end A365070.P2710880978190547982

/-! ## A365070.P4947121860026146284

`A003056(A138550(n)*A252464(n+1))`
-/

namespace A365070.P4947121860026146284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A138550 n * A252464 (n + 1)).toNat

end

end A365070.P4947121860026146284

/-!
# A365071: Number of subsets of {1..n} containing n such that no element is a sum of distinct other elements. A variation of non-binary sum-free subsets without re-usable elements.

The programs for A365071, there is no canonical definition to state claims against.
-/

/-! ## A365071.P12954930939668112431

`record[Δ[A151897(floor(n/2))]]`
-/

namespace A365071.P12954930939668112431
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151897 ⌊(n : ℚ) / 2⌋.toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A365071.P12954930939668112431

/-! ## A365071.P12250684177723761005

`Δ[A151897(log2(ceil(2^(n-1))))]`
-/

namespace A365071.P12250684177723761005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151897 (SequenceMachineLib.roundAway (Real.logb 2 (⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A365071.P12250684177723761005

/-! ## A365071.P4517267402669123972

`A151897(n)-A151897(A004273(n)-n)`
-/

namespace A365071.P4517267402669123972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151897 n - A151897 (A004273 n - (n : ℤ)).toNat

end

end A365071.P4517267402669123972

/-! ## A365071.P14649203438607061923

`A131577(n)-A365069(n)`
-/

namespace A365071.P14649203438607061923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 n - A365069 n

end

end A365071.P14649203438607061923

/-! ## A365071.P14851859989166389963

`A371625(A097133(n))`
-/

namespace A365071.P14851859989166389963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371625 (A097133 n).toNat

end

end A365071.P14851859989166389963

/-!
# A365073: Number of subsets of {1..n} that can be linearly combined using nonnegative coefficients to obtain n.

The programs for A365073, there is no canonical definition to state claims against.
-/

/-! ## A365073.P15351296176143918561

`A344166(A097333(n+2)-A335454(n))`
-/

namespace A365073.P15351296176143918561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344166 (A097333 (n + 2) - A335454 n).toNat

end

end A365073.P15351296176143918561

/-! ## A365073.P2267968641067361420

`A344166(A097333(n+2)-A335458(n))`
-/

namespace A365073.P2267968641067361420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344166 (A097333 (n + 2) - A335458 n).toNat

end

end A365073.P2267968641067361420

/-! ## A365073.P18184377205049382510

`A103128(A026574(n))`
-/

namespace A365073.P18184377205049382510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103128 (A026574 n).toNat

end

end A365073.P18184377205049382510

/-! ## A365073.P11439377433204582862

`A086737(n)-A137579(A125615(n+1))`
-/

namespace A365073.P11439377433204582862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086737 n - A137579 (A125615 (n + 1)).toNat

end

end A365073.P11439377433204582862

/-!
# A365074: Numbers k such that k! - k^2 - 1 is prime.

The programs for A365074, there is no canonical definition to state claims against.
-/

/-! ## A365074.P8206797851253450281

`A326784(A141112(n+2))-2*n`
-/

namespace A365074.P8206797851253450281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326784 (A141112 (n + 2)).toNat - (2 * n : ℤ)

end

end A365074.P8206797851253450281

/-!
# A365076: Number of length-n binary words x such that the infinite word xxxx... is balanced.

The programs for A365076, the canonical program `A365076.P14072161056249924003` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A365076 has offset 1).

The definition of A365076 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A365076.P14072161056249924003

`A057660(n+1)+1`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A365076

/-- `A057660(n+1)+1` -/
def P14072161056249924003.Spec : Prop :=
  ∀ n, P14072161056249924003.a n = A365076 (n + 1)

theorem P14072161056249924003.correct : P14072161056249924003.Spec := by
  intro n
  simp only [A365076, Nat.add_sub_cancel]

end A365076

/-! ## A365076.P9400798556818541767

`2*A057661(n+1)`
-/

namespace A365076.P9400798556818541767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A057661 (n + 1)

end

end A365076.P9400798556818541767

namespace A365076

/-- `2*A057661(n+1)` -/
def P9400798556818541767.Spec : Prop :=
  ∀ n, P9400798556818541767.a n = A365076 (n + 1)

end A365076

/-! ## A365076.P12342628695796665096

`1+A057660(n+1)`
-/

namespace A365076.P12342628695796665096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A057660 (n + 1)

end

end A365076.P12342628695796665096

namespace A365076

/-- `1+A057660(n+1)` -/
def P12342628695796665096.Spec : Prop :=
  ∀ n, P12342628695796665096.a n = A365076 (n + 1)

theorem P12342628695796665096.correct : P12342628695796665096.Spec := by
  intro n
  simp only [A365076, Nat.add_sub_cancel, A365076.P12342628695796665096.a, A365076.P14072161056249924003.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A365076

/-! ## A365076.P16478587475597179076

`∑[A292302(n+1)]+1`
-/

namespace A365076.P16478587475597179076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292302 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A365076.P16478587475597179076

namespace A365076

/-- `∑[A292302(n+1)]+1` -/
def P16478587475597179076.Spec : Prop :=
  ∀ n, P16478587475597179076.a n = A365076 (n + 1)

end A365076

/-! ## A365076.P899970245244067839

`2*(A332049(n+1)+1)`
-/

namespace A365076.P899970245244067839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A332049 (n + 1) + 1)

end

end A365076.P899970245244067839

namespace A365076

/-- `2*(A332049(n+1)+1)` -/
def P899970245244067839.Spec : Prop :=
  ∀ n, P899970245244067839.a n = A365076 (n + 1)

end A365076

/-! ## A365076.P15020025804112509170

`A086148(n+1)-Δ[n²]`
-/

namespace A365076.P15020025804112509170
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086148 (n + 1) - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A365076.P15020025804112509170

namespace A365076

/-- `A086148(n+1)-Δ[n²]` -/
def P15020025804112509170.Spec : Prop :=
  ∀ n, P15020025804112509170.a n = A365076 (n + 1)

end A365076

/-! ## A365076.P11971385427218680009

`2/(n+1)*A051193(n+1)`
-/

namespace A365076.P11971385427218680009
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (n + 1 : ℚ) * (A051193 (n + 1) : ℚ)

end

end A365076.P11971385427218680009

namespace A365076

/-- `2/(n+1)*A051193(n+1)` -/
def P11971385427218680009.Spec : Prop :=
  ∀ n, P11971385427218680009.a n = (A365076 (n + 1) : ℚ)

end A365076

/-! ## A365076.P1356932517343776564

`1+∑{d}[n+1, #*A000010(#)]`
-/

namespace A365076.P1356932517343776564
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A000010 d

end

end A365076.P1356932517343776564

namespace A365076

/-- `1+∑{d}[n+1, #*A000010(#)]` -/
def P1356932517343776564.Spec : Prop :=
  ∀ n, P1356932517343776564.a n = A365076 (n + 1)

end A365076

/-! ## A365076.P3570097737236721892

`A057661(n+1)+A332049(n+1)+1`
-/

namespace A365076.P3570097737236721892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057661 (n + 1) + (A332049 (n + 1) + 1)

end

end A365076.P3570097737236721892

namespace A365076

/-- `A057661(n+1)+A332049(n+1)+1` -/
def P3570097737236721892.Spec : Prop :=
  ∀ n, P3570097737236721892.a n = A365076 (n + 1)

end A365076

/-! ## A365076.P16821313732305622467

`A065827(n+1)/A065764(n+1)+1`
-/

namespace A365076.P16821313732305622467
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A065827 (n + 1) : ℚ) / (A065764 (n + 1) : ℚ) + 1

end

end A365076.P16821313732305622467

namespace A365076

/-- `A065827(n+1)/A065764(n+1)+1` -/
def P16821313732305622467.Spec : Prop :=
  ∀ n, P16821313732305622467.a n = (A365076 (n + 1) : ℚ)

end A365076

/-! ## A365076.P14222200033838801905

`∑{d}[n+1, A007437(#)*A062004((n+1)/#)]`
-/

namespace A365076.P14222200033838801905
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007437 d * A062004 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A365076.P14222200033838801905

namespace A365076

/-- `∑{d}[n+1, A007437(#)*A062004((n+1)/#)]` -/
def P14222200033838801905.Spec : Prop :=
  ∀ n, P14222200033838801905.a n = A365076 (n + 1)

end A365076

/-! ## A365076.P9000346972977349664

`A057661(A000027(n+1))+A057661(n+1)`
-/

namespace A365076.P9000346972977349664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057661 (A000027 (n + 1)).toNat + A057661 (n + 1)

end

end A365076.P9000346972977349664

namespace A365076

/-- `A057661(A000027(n+1))+A057661(n+1)` -/
def P9000346972977349664.Spec : Prop :=
  ∀ n, P9000346972977349664.a n = A365076 (n + 1)

end A365076

/-! ## A365076.P13723192218809940288

`2/3*A341316(n+1)`
-/

namespace A365076.P13723192218809940288
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) / 3 * (A341316 (n + 1) : ℚ)

end

end A365076.P13723192218809940288

namespace A365076

/-- `2/3*A341316(n+1)` -/
def P13723192218809940288.Spec : Prop :=
  ∀ n, P13723192218809940288.a n = (A365076 (n + 1) : ℚ)

end A365076

/-! ## A365076.P5365606820808662074

`∑{d}[n+1, #*A384710(#)]`
-/

namespace A365076.P5365606820808662074
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A384710 d

end

end A365076.P5365606820808662074

namespace A365076

/-- `∑{d}[n+1, #*A384710(#)]` -/
def P5365606820808662074.Spec : Prop :=
  ∀ n, P5365606820808662074.a n = A365076 (n + 1)

end A365076

/-! ## A365076.P6462707313344755733

`A341316(n+1)-A057661(n+1)`
-/

namespace A365076.P6462707313344755733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341316 (n + 1) - A057661 (n + 1)

end

end A365076.P6462707313344755733

namespace A365076

/-- `A341316(n+1)-A057661(n+1)` -/
def P6462707313344755733.Spec : Prop :=
  ∀ n, P6462707313344755733.a n = A365076 (n + 1)

end A365076

/-! ## A365076.P18174903680288407342

`∑{#}[n, (n+1)/gcd(n+1, #)]+1`
-/

namespace A365076.P18174903680288407342
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (n + 1 : ℚ) / (Nat.gcd (n + 1) k : ℚ) + 1

end

end A365076.P18174903680288407342

namespace A365076

/-- `∑{#}[n, (n+1)/gcd(n+1, #)]+1` -/
def P18174903680288407342.Spec : Prop :=
  ∀ n, P18174903680288407342.a n = (A365076 (n + 1) : ℚ)

end A365076

/-! ## A365076.P5560616904522377657

`∑{#}[n, lcm(n+1, #+1)/(#+1)]+1`
-/

namespace A365076.P5560616904522377657
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.lcm (n + 1) (k + 1) : ℚ) / (k + 1 : ℚ) + 1

end

end A365076.P5560616904522377657

namespace A365076

/-- `∑{#}[n, lcm(n+1, #+1)/(#+1)]+1` -/
def P5560616904522377657.Spec : Prop :=
  ∀ n, P5560616904522377657.a n = (A365076 (n + 1) : ℚ)

end A365076

/-! ## A365076.P15037656943038967825

`A004277(A057661(n+1))`
-/

namespace A365076.P15037656943038967825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A057661 (n + 1)).toNat

end

end A365076.P15037656943038967825

namespace A365076

/-- `A004277(A057661(n+1))` -/
def P15037656943038967825.Spec : Prop :=
  ∀ n, P15037656943038967825.a n = A365076 (n + 1)

end A365076

/-! ## A365076.P12170635089948072062

`A055210((n+1)²)+1`
-/

namespace A365076.P12170635089948072062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055210 ((n + 1) ^ 2) + 1

end

end A365076.P12170635089948072062

namespace A365076

/-- `A055210((n+1)²)+1` -/
def P12170635089948072062.Spec : Prop :=
  ∀ n, P12170635089948072062.a n = A365076 (n + 1)

end A365076

/-! ## A365076.P14288365462944077574

`A061020((n+1)²)+1`
-/

namespace A365076.P14288365462944077574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061020 ((n + 1) ^ 2) + 1

end

end A365076.P14288365462944077574

namespace A365076

/-- `A061020((n+1)²)+1` -/
def P14288365462944077574.Spec : Prop :=
  ∀ n, P14288365462944077574.a n = A365076 (n + 1)

end A365076

/-!
# A365079: G.f. satisfies A(x) = 1 + x*A(x)*(1 + x^4*A(x)^3).

The programs for A365079, the canonical program `A365079.P9632746113910098933` is in `Seq.B000.C047`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A365079 has offset 0).

The definition of A365079 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A365079.P9632746113910098933

`∑{#}[floor(n/5), C(n-4*#, #)*C(n-#+1, n-4*#)/(n-#+1)]`

The canonical program, it is in `Seq.B000.C047`.
-/

namespace A365079

/-- `∑{#}[floor(n/5), C(n-4*#, #)*C(n-#+1, n-4*#)/(n-#+1)]` -/
def P9632746113910098933.Spec : Prop :=
  ∀ n, P9632746113910098933.a n = (A365079 n : ℚ)

end A365079

/-!
# A365081: Numbers k with the property that the symmetric representation of sigma(k) has four parts and its second part is an octagon of width 1 and one of the vertices of the octagon is also the central vertex of the first valley of the largest Dyck path of the diagram.

The programs for A365081, there is no canonical definition to state claims against.
-/

/-! ## A365081.P1526204398712411377

`A161345(n+5)`
-/

namespace A365081.P1526204398712411377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161345 (n + 5)

end

end A365081.P1526204398712411377

/-! ## A365081.P18022279160793968111

`3*A189710(n+4)`
-/

namespace A365081.P18022279160793968111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A189710 (n + 4)

end

end A365081.P18022279160793968111

/-! ## A365081.P7112651869709590259

`3*A328232(n+4)`
-/

namespace A365081.P7112651869709590259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A328232 (n + 4)

end

end A365081.P7112651869709590259

/-! ## A365081.P17009225326674889687

`3*A161346(n+5)`
-/

namespace A365081.P17009225326674889687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A161346 (n + 5)

end

end A365081.P17009225326674889687

/-! ## A365081.P15371361937906697760

`3*A193339(n+5)`
-/

namespace A365081.P15371361937906697760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A193339 (n + 5)

end

end A365081.P15371361937906697760

/-!
# A365082: Prime powers (A246655) q such that -2 is a nonzero square in the finite field F_q.

The programs for A365082, the canonical program `A365082.P13561048953192746811` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A365082 has offset 1).

The definition of A365082 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2145 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A365082.P13561048953192746811

`filter[A047471(n+1), A069513(#)]`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A365082

/-- `filter[A047471(n+1), A069513(#)]` -/
def P13561048953192746811.Spec : Prop :=
  ∀ n, P13561048953192746811.a n = A365082 (n + 1)

theorem P13561048953192746811.correct : P13561048953192746811.Spec := by
  intro n
  simp only [A365082, Nat.add_sub_cancel]

end A365082

/-! ## A365082.P6462689609540494255

`filter[A047471(n+1), A211487(#)]`
-/

namespace A365082.P6462689609540494255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047471 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A211487 (f1 j).toNat = 1) n)

end

end A365082.P6462689609540494255

namespace A365082

/-- `filter[A047471(n+1), A211487(#)]` -/
def P6462689609540494255.Spec : Prop :=
  ∀ n, P6462689609540494255.a n = A365082 (n + 1)

end A365082

/-! ## A365082.P17320123978280253602

`filter[A047471(n+1), A340373(#)]`
-/

namespace A365082.P17320123978280253602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047471 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340373 (f1 j).toNat = 1) n)

end

end A365082.P17320123978280253602

namespace A365082

/-- `filter[A047471(n+1), A340373(#)]` -/
def P17320123978280253602.Spec : Prop :=
  ∀ n, P17320123978280253602.a n = A365082 (n + 1)

end A365082

/-! ## A365082.P13881309190102183374

`filter[A047471(n+2), A340363(#)]`
-/

namespace A365082.P13881309190102183374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047471 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340363 (f1 j).toNat = 1) n)

end

end A365082.P13881309190102183374

namespace A365082

/-- `filter[A047471(n+2), A340363(#)]` -/
def P13881309190102183374.Spec : Prop :=
  ∀ n, P13881309190102183374.a n = A365082 (n + 1)

end A365082

/-! ## A365082.P5487551460368089993

`filter[A047471(n+2), A354923(#)]`
-/

namespace A365082.P5487551460368089993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047471 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354923 (f1 j).toNat = 1) n)

end

end A365082.P5487551460368089993

namespace A365082

/-- `filter[A047471(n+2), A354923(#)]` -/
def P5487551460368089993.Spec : Prop :=
  ∀ n, P5487551460368089993.a n = A365082 (n + 1)

end A365082

/-! ## A365082.P16651529886872820121

`filter[A047471(n+2), A354924(#)]`
-/

namespace A365082.P16651529886872820121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047471 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354924 (f1 j).toNat = 1) n)

end

end A365082.P16651529886872820121

namespace A365082

/-- `filter[A047471(n+2), A354924(#)]` -/
def P16651529886872820121.Spec : Prop :=
  ∀ n, P16651529886872820121.a n = A365082 (n + 1)

end A365082

/-! ## A365082.P2770356437159547220

`∩[A047471(n+1), A070776(n+1)]`
-/

namespace A365082.P2770356437159547220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047471 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070776 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A365082.P2770356437159547220

namespace A365082

/-- `∩[A047471(n+1), A070776(n+1)]` -/
def P2770356437159547220.Spec : Prop :=
  ∀ n, (P2770356437159547220.a n : ℤ) = A365082 (n + 1)

end A365082

/-! ## A365082.P1849935172324758220

`∩[A047471(n+1), A185189(n+1)]`
-/

namespace A365082.P1849935172324758220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047471 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185189 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A365082.P1849935172324758220

namespace A365082

/-- `∩[A047471(n+1), A185189(n+1)]` -/
def P1849935172324758220.Spec : Prop :=
  ∀ n, (P1849935172324758220.a n : ℤ) = A365082 (n + 1)

end A365082

/-! ## A365082.P3041016078784978183

`∩[A047471(n+1), A246655(n+1)]`
-/

namespace A365082.P3041016078784978183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047471 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246655 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A365082.P3041016078784978183

namespace A365082

/-- `∩[A047471(n+1), A246655(n+1)]` -/
def P3041016078784978183.Spec : Prop :=
  ∀ n, (P3041016078784978183.a n : ℤ) = A365082 (n + 1)

end A365082

/-! ## A365082.P16786189267155926040

`∩[A047471(n+1), A336101(n+1)]`
-/

namespace A365082.P16786189267155926040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047471 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336101 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A365082.P16786189267155926040

namespace A365082

/-- `∩[A047471(n+1), A336101(n+1)]` -/
def P16786189267155926040.Spec : Prop :=
  ∀ n, (P16786189267155926040.a n : ℤ) = A365082 (n + 1)

end A365082

/-! ## A365082.P8902503087463227023

`∩[A047522(n+1)+2, A070776(n+1)]`
-/

namespace A365082.P8902503087463227023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047522 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070776 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A365082.P8902503087463227023

namespace A365082

/-- `∩[A047522(n+1)+2, A070776(n+1)]` -/
def P8902503087463227023.Spec : Prop :=
  ∀ n, (P8902503087463227023.a n : ℤ) = A365082 (n + 1)

end A365082

/-! ## A365082.P12257391800621235880

`∩[A047522(n+1)+2, A185189(n+1)]`
-/

namespace A365082.P12257391800621235880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047522 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185189 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A365082.P12257391800621235880

namespace A365082

/-- `∩[A047522(n+1)+2, A185189(n+1)]` -/
def P12257391800621235880.Spec : Prop :=
  ∀ n, (P12257391800621235880.a n : ℤ) = A365082 (n + 1)

end A365082

/-! ## A365082.P11777681985645233194

`∩[A047522(n+1)+2, A246655(n+1)]`
-/

namespace A365082.P11777681985645233194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047522 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246655 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A365082.P11777681985645233194

namespace A365082

/-- `∩[A047522(n+1)+2, A246655(n+1)]` -/
def P11777681985645233194.Spec : Prop :=
  ∀ n, (P11777681985645233194.a n : ℤ) = A365082 (n + 1)

end A365082

/-! ## A365082.P4454017143372660426

`filter[A047400(n+1), A069513(#)]`
-/

namespace A365082.P4454017143372660426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047400 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A069513 (f1 j).toNat = 1) n)

end

end A365082.P4454017143372660426

namespace A365082

/-- `filter[A047400(n+1), A069513(#)]` -/
def P4454017143372660426.Spec : Prop :=
  ∀ n, P4454017143372660426.a n = A365082 (n + 1)

end A365082

/-! ## A365082.P17487230602279759302

`filter[A047472(n+2), A211487(#)]`
-/

namespace A365082.P17487230602279759302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047472 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A211487 (f1 j).toNat = 1) n)

end

end A365082.P17487230602279759302

namespace A365082

/-- `filter[A047472(n+2), A211487(#)]` -/
def P17487230602279759302.Spec : Prop :=
  ∀ n, P17487230602279759302.a n = A365082 (n + 1)

end A365082

/-! ## A365082.P16527442682647814077

`filter[A047475(n+3), A069513(#)]`
-/

namespace A365082.P16527442682647814077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047475 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A069513 (f1 j).toNat = 1) n)

end

end A365082.P16527442682647814077

namespace A365082

/-- `filter[A047475(n+3), A069513(#)]` -/
def P16527442682647814077.Spec : Prop :=
  ∀ n, P16527442682647814077.a n = A365082 (n + 1)

end A365082

/-! ## A365082.P14455854946547750278

`∩[A047400(n+1), A185189(n+1)]`
-/

namespace A365082.P14455854946547750278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047400 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185189 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A365082.P14455854946547750278

namespace A365082

/-- `∩[A047400(n+1), A185189(n+1)]` -/
def P14455854946547750278.Spec : Prop :=
  ∀ n, (P14455854946547750278.a n : ℤ) = A365082 (n + 1)

end A365082

/-! ## A365082.P441484958177652491

`∩[A047459(n+1), A185189(n+1)]`
-/

namespace A365082.P441484958177652491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047459 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185189 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A365082.P441484958177652491

namespace A365082

/-- `∩[A047459(n+1), A185189(n+1)]` -/
def P441484958177652491.Spec : Prop :=
  ∀ n, (P441484958177652491.a n : ℤ) = A365082 (n + 1)

end A365082

/-! ## A365082.P4372229009716186897

`∩[A047475(n+1), A185189(n+1)]`
-/

namespace A365082.P4372229009716186897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047475 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185189 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A365082.P4372229009716186897

namespace A365082

/-- `∩[A047475(n+1), A185189(n+1)]` -/
def P4372229009716186897.Spec : Prop :=
  ∀ n, (P4372229009716186897.a n : ℤ) = A365082 (n + 1)

end A365082

/-! ## A365082.P3912302223138450561

`∩[A047400(n+1), A246655(n+1)]`
-/

namespace A365082.P3912302223138450561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047400 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246655 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A365082.P3912302223138450561

namespace A365082

/-- `∩[A047400(n+1), A246655(n+1)]` -/
def P3912302223138450561.Spec : Prop :=
  ∀ n, (P3912302223138450561.a n : ℤ) = A365082 (n + 1)

end A365082

/-!
# A365083: G.f. satisfies A(x) = 1 + x*A(x) / (1 + x)^4.

The programs for A365083, the canonical program `A365083.P17065672835312787321` is in `Seq.B000.C047`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A365083 has offset 0).

The definition of A365083 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A365083.P17065672835312787321

`ogf((1+4x+6x^2+4x^3+x^4)/(1+3x+6x^2+4x^3+x^4))`

The canonical program, it is in `Seq.B000.C047`.
-/

namespace A365083

/-- `ogf((1+4x+6x^2+4x^3+x^4)/(1+3x+6x^2+4x^3+x^4))` -/
def P17065672835312787321.Spec : Prop :=
  ∀ n, P17065672835312787321.a n = A365083 n

theorem P17065672835312787321.correct : P17065672835312787321.Spec := by
  intro n
  simp only [A365083]

end A365083

/-! ## A365083.P431960974116738104

`A099530(A131098(n+1))`
-/

namespace A365083.P431960974116738104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099530 (A131098 (n + 1)).toNat

end

end A365083.P431960974116738104

namespace A365083

/-- `A099530(A131098(n+1))` -/
def P431960974116738104.Spec : Prop :=
  ∀ n, P431960974116738104.a n = A365083 n

end A365083

/-! ## A365083.P9638761065460061346

`A099530(A008574(n)-1)`
-/

namespace A365083.P9638761065460061346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099530 (A008574 n - 1).toNat

end

end A365083.P9638761065460061346

namespace A365083

/-- `A099530(A008574(n)-1)` -/
def P9638761065460061346.Spec : Prop :=
  ∀ n, P9638761065460061346.a n = A365083 n

end A365083

/-! ## A365083.P9654522697623334751

`A099530(A111284(n+1)+1)`
-/

namespace A365083.P9654522697623334751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099530 (A111284 (n + 1) + 1).toNat

end

end A365083.P9654522697623334751

namespace A365083

/-- `A099530(A111284(n+1)+1)` -/
def P9654522697623334751.Spec : Prop :=
  ∀ n, P9654522697623334751.a n = A365083 n

end A365083

/-!
# A365084: G.f. satisfies A(x) = 1 + x*A(x) / (1 + x)^5.

The programs for A365084, the canonical program `A365084.P705391217545173017` is in `Seq.B000.C047`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A365084 has offset 0).

The definition of A365084 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A365084.P705391217545173017

`ogf((1+5x+10x^2+10x^3+5x^4+x^5)/(1+4x+10x^2+10x^3+5x^4+x^5))`

The canonical program, it is in `Seq.B000.C047`.
-/

namespace A365084

/-- `ogf((1+5x+10x^2+10x^3+5x^4+x^5)/(1+4x+10x^2+10x^3+5x^4+x^5))` -/
def P705391217545173017.Spec : Prop :=
  ∀ n, P705391217545173017.a n = A365084 n

theorem P705391217545173017.correct : P705391217545173017.Spec := by
  intro n
  simp only [A365084]

end A365084

/-!
# A365089: The Thue-Morse sequence along the sequence of cubes.

The programs for A365089, the canonical program `A365089.P12422093480538307180` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A365089 has offset 0).

The definition of A365089 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A365089.P12422093480538307180

`A010060(n^3)`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A365089

/-- `A010060(n^3)` -/
def P12422093480538307180.Spec : Prop :=
  ∀ n, P12422093480538307180.a n = A365089 n

theorem P12422093480538307180.correct : P12422093480538307180.Spec := by
  intro n
  simp only [A365089]

end A365089

/-! ## A365089.P6904910457267223927

`A192085(n)%2`
-/

namespace A365089.P6904910457267223927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A192085 n) 2

end

end A365089.P6904910457267223927

namespace A365089

/-- `A192085(n)%2` -/
def P6904910457267223927.Spec : Prop :=
  ∀ n, P6904910457267223927.a n = A365089 n

end A365089

/-! ## A365089.P3255032663013809230

`A000035(A192085(n))`
-/

namespace A365089.P3255032663013809230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A192085 n).toNat

end

end A365089.P3255032663013809230

namespace A365089

/-- `A000035(A192085(n))` -/
def P3255032663013809230.Spec : Prop :=
  ∀ n, P3255032663013809230.a n = A365089 n

end A365089

/-! ## A365089.P5234346238456123181

`A059841(A192085(n)+1)`
-/

namespace A365089.P5234346238456123181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (A192085 n + 1).toNat

end

end A365089.P5234346238456123181

namespace A365089

/-- `A059841(A192085(n)+1)` -/
def P5234346238456123181.Spec : Prop :=
  ∀ n, P5234346238456123181.a n = A365089 n

end A365089

/-! ## A365089.P10734953200020153670

`and(A016760(n), A192085(n))`
-/

namespace A365089.P10734953200020153670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A016760 n) (A192085 n)

end

end A365089.P10734953200020153670

namespace A365089

/-- `and(A016760(n), A192085(n))` -/
def P10734953200020153670.Spec : Prop :=
  ∀ n, P10734953200020153670.a n = A365089 n

end A365089

/-! ## A365089.P5007889590944800961

`and(A016820(n), A192085(n))`
-/

namespace A365089.P5007889590944800961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A016820 n) (A192085 n)

end

end A365089.P5007889590944800961

namespace A365089

/-- `and(A016820(n), A192085(n))` -/
def P5007889590944800961.Spec : Prop :=
  ∀ n, P5007889590944800961.a n = A365089 n

end A365089

/-! ## A365089.P5483081150466637142

`and(A017080(n), A192085(n))`
-/

namespace A365089.P5483081150466637142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A017080 n) (A192085 n)

end

end A365089.P5483081150466637142

namespace A365089

/-- `and(A017080(n), A192085(n))` -/
def P5483081150466637142.Spec : Prop :=
  ∀ n, P5483081150466637142.a n = A365089 n

end A365089

/-! ## A365089.P10264192901741249331

`and(A017152(n), A192085(n))`
-/

namespace A365089.P10264192901741249331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A017152 n) (A192085 n)

end

end A365089.P10264192901741249331

namespace A365089

/-- `and(A017152(n), A192085(n))` -/
def P10264192901741249331.Spec : Prop :=
  ∀ n, P10264192901741249331.a n = A365089 n

end A365089

/-! ## A365089.P8358956242351800912

`A059841((1-A192085(n))²)`
-/

namespace A365089.P8358956242351800912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 ((1 - A192085 n) ^ 2).toNat

end

end A365089.P8358956242351800912

namespace A365089

/-- `A059841((1-A192085(n))²)` -/
def P8358956242351800912.Spec : Prop :=
  ∀ n, P8358956242351800912.a n = A365089 n

end A365089

/-! ## A365089.P4226183141901269043

`and(A008417(n)², A192085(n))`
-/

namespace A365089.P4226183141901269043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A008417 n ^ 2) (A192085 n)

end

end A365089.P4226183141901269043

namespace A365089

/-- `and(A008417(n)², A192085(n))` -/
def P4226183141901269043.Spec : Prop :=
  ∀ n, P4226183141901269043.a n = A365089 n

end A365089

/-! ## A365089.P18217876738140635502

`and(A016756(n)², A192085(n))`
-/

namespace A365089.P18217876738140635502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A016756 n ^ 2) (A192085 n)

end

end A365089.P18217876738140635502

namespace A365089

/-- `and(A016756(n)², A192085(n))` -/
def P18217876738140635502.Spec : Prop :=
  ∀ n, P18217876738140635502.a n = A365089 n

end A365089

/-! ## A365089.P2847419118873171920

`and(A016816(n)², A192085(n))`
-/

namespace A365089.P2847419118873171920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A016816 n ^ 2) (A192085 n)

end

end A365089.P2847419118873171920

namespace A365089

/-- `and(A016816(n)², A192085(n))` -/
def P2847419118873171920.Spec : Prop :=
  ∀ n, P2847419118873171920.a n = A365089 n

end A365089

/-! ## A365089.P11345408293862393330

`and(A016840(n)², A192085(n))`
-/

namespace A365089.P11345408293862393330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A016840 n ^ 2) (A192085 n)

end

end A365089.P11345408293862393330

namespace A365089

/-- `and(A016840(n)², A192085(n))` -/
def P11345408293862393330.Spec : Prop :=
  ∀ n, P11345408293862393330.a n = A365089 n

end A365089

/-! ## A365089.P11789819318098196745

`and(A016924(n)², A192085(n))`
-/

namespace A365089.P11789819318098196745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A016924 n ^ 2) (A192085 n)

end

end A365089.P11789819318098196745

namespace A365089

/-- `and(A016924(n)², A192085(n))` -/
def P11789819318098196745.Spec : Prop :=
  ∀ n, P11789819318098196745.a n = A365089 n

end A365089

/-! ## A365089.P15550453530127912027

`and(1, A192085(2*n))`
-/

namespace A365089.P15550453530127912027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A192085 (2 * n))

end

end A365089.P15550453530127912027

namespace A365089

/-- `and(1, A192085(2*n))` -/
def P15550453530127912027.Spec : Prop :=
  ∀ n, P15550453530127912027.a n = A365089 n

end A365089

/-! ## A365089.P15206820380747300871

`A059841(2*n)-A059841(A192085(2*n))`
-/

namespace A365089.P15206820380747300871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (2 * n) - A059841 (A192085 (2 * n)).toNat

end

end A365089.P15206820380747300871

namespace A365089

/-- `A059841(2*n)-A059841(A192085(2*n))` -/
def P15206820380747300871.Spec : Prop :=
  ∀ n, P15206820380747300871.a n = A365089 n

end A365089

/-! ## A365089.P7378069868244726079

`and(A192085(n), A195744(n))`
-/

namespace A365089.P7378069868244726079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A192085 n) (A195744 n)

end

end A365089.P7378069868244726079

namespace A365089

/-- `and(A192085(n), A195744(n))` -/
def P7378069868244726079.Spec : Prop :=
  ∀ n, P7378069868244726079.a n = A365089 n

end A365089

/-! ## A365089.P4320165168023139258

`and(A192085(n), A206371(n))`
-/

namespace A365089.P4320165168023139258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A192085 n) (A206371 n)

end

end A365089.P4320165168023139258

namespace A365089

/-- `and(A192085(n), A206371(n))` -/
def P4320165168023139258.Spec : Prop :=
  ∀ n, P4320165168023139258.a n = A365089 n

end A365089

/-!
# A365090: Total domination number of the n-Lucas cube graph.

The programs for A365090, there is no canonical definition to state claims against.
-/

/-! ## A365090.P8955441552277083801

`A075119(n+1)+A062762(n)`
-/

namespace A365090.P8955441552277083801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075119 (n + 1) + A062762 n

end

end A365090.P8955441552277083801

/-! ## A365090.P10899770886488520057

`A139078(n+1)+A014063(n)`
-/

namespace A365090.P10899770886488520057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139078 (n + 1) + A014063 n

end

end A365090.P10899770886488520057

/-! ## A365090.P15473344052563373083

`A139078(n+1)+A015899(n)`
-/

namespace A365090.P15473344052563373083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139078 (n + 1) + A015899 n

end

end A365090.P15473344052563373083

/-! ## A365090.P2386717612905275148

`A139078(n+1)+A025925(n)`
-/

namespace A365090.P2386717612905275148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139078 (n + 1) + A025925 n

end

end A365090.P2386717612905275148

/-! ## A365090.P13285903437107939316

`A139078(n+1)+A114099(n)`
-/

namespace A365090.P13285903437107939316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139078 (n + 1) + A114099 n

end

end A365090.P13285903437107939316

/-!
# A365092: Write out the canonical factorization of n and factorize the exponents in the factorization, the exponents in the factorizations of the exponents, ... until there are only prime numbers left. Replace each p in the factorization by (p-1)+1 and factorize each p-1 by the same process if p-1 > 1. Continue this process until there are only 1s left. a(n) is the number of 1s used.

The programs for A365092, there is no canonical definition to state claims against.
-/

/-! ## A365092.P16069342295497469748

`A005245(n+1)-A319000(A319041(n+1))`
-/

namespace A365092.P16069342295497469748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005245 (n + 1) - A319000 (A319041 (n + 1)).toNat

end

end A365092.P16069342295497469748

/-!
# A365095: Expansion of g.f. A(x) satisfying [x^(n-1)] (1 + (n-1)*x*A(x)^2)^n / A(x)^n = 0 for n > 1.

The programs for A365095, there is no canonical definition to state claims against.
-/

/-! ## A365095.P768005306858040143

`A194977(A360728(n))`
-/

namespace A365095.P768005306858040143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194977 (A360728 n).toNat

end

end A365095.P768005306858040143

/-! ## A365095.P12032467213148864971

`A005707(A097096(∑[n]))`
-/

namespace A365095.P12032467213148864971
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005707 (A097096 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A365095.P12032467213148864971

/-!
# A365096: Array G(M,S), where M are the permutations of the first K integers and S is the size of a list of distinct items, (k = 1, 2, ..., S >= k) to be read by antidiagonals (see definition in Comments).

The programs for A365096, there is no canonical definition to state claims against.
-/

/-! ## A365096.P13685659417181451555

`A124765(A022173(n)+A007953(n))`
-/

namespace A365096.P13685659417181451555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124765 (A022173 n + A007953 n).toNat

end

end A365096.P13685659417181451555

/-! ## A365096.P4750836689268149889

`A055642(A027748(2*n+3)*A157148(n))`
-/

namespace A365096.P4750836689268149889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A027748 (2 * n + 3) * A157148 n).toNat

end

end A365096.P4750836689268149889

/-! ## A365096.P2684792356506870446

`A001221(lcm(A077609(2*n+3), A156602(n)))`
-/

namespace A365096.P2684792356506870446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Int.lcm (A077609 (2 * n + 3)) (A156602 n))

end

end A365096.P2684792356506870446

/-!
# A365097: Smallest k > 1 such that the total number of digits "1" required to write the numbers 1..k in base n is equal to k.

The programs for A365097, there is no canonical definition to state claims against.
-/

/-! ## A365097.P15646688608215329983

`A173569(A084122(n+1))+1`
-/

namespace A365097.P15646688608215329983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173569 (A084122 (n + 1)).toNat + 1

end

end A365097.P15646688608215329983

