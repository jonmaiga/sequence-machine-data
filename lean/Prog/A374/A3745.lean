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
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C019
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C011
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
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
import Seq.Opaque.C023
import Seq.Opaque.C024
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A374500: Square pyramidal numbers that are products of smaller square pyramidal numbers.

The programs for A374500, there is no canonical definition to state claims against.
-/

/-! ## A374500.P2284024478470087923

`A374498(∑[n+2]+5)`
-/

namespace A374500.P2284024478470087923
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374498 (∑ j ∈ Finset.range (n + 1), f1 j + 5)

end

end A374500.P2284024478470087923

/-!
# A374505: Maximum number of unit squares aligned with unit-spaced horizontal lines that can be enclosed by a circle of diameter n.

The programs for A374505, there is no canonical definition to state claims against.
-/

/-! ## A374505.P12394164261202784233

`floor(A104103(A211795(n)+1)/4)`
-/

namespace A374505.P12394164261202784233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A104103 (A211795 n + 1).toNat : ℚ) / 4⌋

end

end A374505.P12394164261202784233

/-! ## A374505.P4556191776563247974

`∑[∑[A362611(A304963(n))]]`
-/

namespace A374505.P4556191776563247974
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362611 (A304963 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A374505.P4556191776563247974

/-! ## A374505.P7626881040485400995

`∑[∑[A175599(A092740(n+1))]]`
-/

namespace A374505.P7626881040485400995
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175599 (A092740 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A374505.P7626881040485400995

/-! ## A374505.P5900379413280784482

`∑[∑[A194636(A100901(n+1))]]`
-/

namespace A374505.P5900379413280784482
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194636 (A100901 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A374505.P5900379413280784482

/-! ## A374505.P2107222048395396783

`∑[A037809(A022629(n)²)]`
-/

namespace A374505.P2107222048395396783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037809 (A022629 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A374505.P2107222048395396783

/-!
# A374506: Expansion of 1/(1 - 2*x - 3*x^2)^(7/2).

The programs for A374506, the canonical program `A374506.P3292487268476476191` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A374506 has offset 0).

The definition of A374506 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A374506.P3292487268476476191

`((2*n+5)*a(n-1)+3*(n+5)*a(n-2))/n` with `a(0)=1, a(1)=7`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A374506

/-- `((2*n+5)*a(n-1)+3*(n+5)*a(n-2))/n` -/
def P3292487268476476191.Spec : Prop :=
  ∀ n, P3292487268476476191.a n = (A374506 n : ℚ)

end A374506

/-! ## A374506.P15696431573797254233

`∑[A375248(n)]`
-/

namespace A374506.P15696431573797254233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375248 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A374506.P15696431573797254233

namespace A374506

/-- `∑[A375248(n)]` -/
def P15696431573797254233.Spec : Prop :=
  ∀ n, P15696431573797254233.a n = A374506 n

end A374506

/-! ## A374506.P14546754095579715754

`A111960(A167614(n+5)+3)`
-/

namespace A374506.P14546754095579715754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111960 (A167614 (n + 5) + 3).toNat

end

end A374506.P14546754095579715754

namespace A374506

/-- `A111960(A167614(n+5)+3)` -/
def P14546754095579715754.Spec : Prop :=
  ∀ n, P14546754095579715754.a n = A374506 n

end A374506

/-!
# A374507: Prime numbers that precede and follow consecutive balanced primes.

The programs for A374507, there is no canonical definition to state claims against.
-/

/-! ## A374507.P6448354154779297931

`∩[A122535(n+1), A181424(n+1)]`
-/

namespace A374507.P6448354154779297931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122535 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181424 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A374507.P6448354154779297931

/-! ## A374507.P15702254257848848085

`∩[2*A006562(n+1)-A181424(n+1), A181424(n+1)]`
-/

namespace A374507.P15702254257848848085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A006562 (n + 1) - A181424 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181424 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A374507.P15702254257848848085

/-! ## A374507.P13732046034792829667

`∩[A181424(n+1)-2*A117217(n+1), A181424(n+1)]`
-/

namespace A374507.P13732046034792829667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181424 (n + 1) - 2 * A117217 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181424 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A374507.P13732046034792829667

/-!
# A374508: Expansion of 1/(1 - 2*x + 5*x^2)^(5/2).

The programs for A374508, the canonical program `A374508.P4082523717861251872` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A374508 has offset 0).

The definition of A374508 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A374508.P4082523717861251872

`((2*n+3)*a(n-1)-5*(n+3)*a(n-2))/n` with `a(0)=1, a(1)=5`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A374508

/-- `((2*n+3)*a(n-1)-5*(n+3)*a(n-2))/n` -/
def P4082523717861251872.Spec : Prop :=
  ∀ n, P4082523717861251872.a n = (A374508 n : ℚ)

end A374508

/-!
# A374509: Expansion of 1/(1 - 2*x + 5*x^2)^(7/2).

The programs for A374509, the canonical program `A374509.P5595095280231594959` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A374509 has offset 0).

The definition of A374509 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A374509.P5595095280231594959

`((2*n+5)*a(n-1)-5*(n+5)*a(n-2))/n` with `a(0)=1, a(1)=7`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A374509

/-- `((2*n+5)*a(n-1)-5*(n+5)*a(n-2))/n` -/
def P5595095280231594959.Spec : Prop :=
  ∀ n, P5595095280231594959.a n = (A374509 n : ℚ)

end A374509

/-!
# A374510: Sum of those numbers t which have a unique representation as the sum of floor(n/2) distinct squares from among 1^2,...,n^2.

The programs for A374510, there is no canonical definition to state claims against.
-/

/-! ## A374510.P4934718228557669720

`A000330(n+1)*A383710(A270831(n+1))`
-/

namespace A374510.P4934718228557669720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 (n + 1) * A383710 (A270831 (n + 1)).toNat

end

end A374510.P4934718228557669720

/-! ## A374510.P8776864831411304332

`A000330(n+1)*A336916(A063776(3*(n+1)))`
-/

namespace A374510.P8776864831411304332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 (n + 1) * A336916 (A063776 (3 * (n + 1))).toNat

end

end A374510.P8776864831411304332

/-!
# A374511: Expansion of 1/(1 - 4*x - 4*x^2)^(5/2).

The programs for A374511, the canonical program `A374511.P630747609187389874` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A374511 has offset 0).

The definition of A374511 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A374511.P630747609187389874

`(2*(2*n+3)*a(n-1)+4*(n+3)*a(n-2))/n` with `a(0)=1, a(1)=10`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A374511

/-- `(2*(2*n+3)*a(n-1)+4*(n+3)*a(n-2))/n` -/
def P630747609187389874.Spec : Prop :=
  ∀ n, P630747609187389874.a n = (A374511 n : ℚ)

end A374511

/-!
# A374512: Number of ways to tile a 3 X n board with 2 X 2 and 3 X 3 staircase tiles.

The programs for A374512, the canonical program `A374512.P7316444867894709594` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A374512 has offset 0).

The definition of A374512 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A374512.P7316444867894709594

`2*a(n-2)+4*a(n-3)+2*a(n-4)` with `a(0)=1, a(1)=0, a(2)=2, a(3)=4`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A374512

/-- `2*a(n-2)+4*a(n-3)+2*a(n-4)` -/
def P7316444867894709594.Spec : Prop :=
  ∀ n, (P7316444867894709594.a n : ℤ) = A374512 n

theorem P7316444867894709594.correct : P7316444867894709594.Spec := by
  intro n
  simp only [A374512]

end A374512

/-! ## A374512.P5609876290844310407

`ogf(-1/(-1+2x^2+4x^3+2x^4))`
-/

namespace A374512.P5609876290844310407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, 0, -2, -4, -2] n

end

end A374512.P5609876290844310407

namespace A374512

/-- `ogf(-1/(-1+2x^2+4x^3+2x^4))` -/
def P5609876290844310407.Spec : Prop :=
  ∀ n, P5609876290844310407.a n = A374512 n

end A374512

/-!
# A374513: Expansion of 1/(1 - 4*x - 4*x^2)^(7/2).

The programs for A374513, the canonical program `A374513.P16180597086560487022` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A374513 has offset 0).

The definition of A374513 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A374513.P16180597086560487022

`(2*(2*n+5)*a(n-1)+4*(n+5)*a(n-2))/n` with `a(0)=1, a(1)=14`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A374513

/-- `(2*(2*n+5)*a(n-1)+4*(n+5)*a(n-2))/n` -/
def P16180597086560487022.Spec : Prop :=
  ∀ n, P16180597086560487022.a n = (A374513 n : ℚ)

end A374513

/-!
# A374514: Number of n X n matrices whose values cover an initial interval of positive integers and whose rows and columns have values which are strictly increasing.

The programs for A374514, there is no canonical definition to state claims against.
-/

/-! ## A374514.P16410352869287482759

`A374985(∑[4*n])`
-/

namespace A374514.P16410352869287482759
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374985 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A374514.P16410352869287482759

/-!
# A374515: Irregular triangle read by rows where row n lists the leaders of anti-runs in the n-th composition in standard order.

The programs for A374515, there is no canonical definition to state claims against.
-/

/-! ## A374515.P2087119775177375076

`A374683(lt[A349798(3*n+1), 2])`
-/

namespace A374515.P2087119775177375076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349798 (3 * n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374683 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A374515.P2087119775177375076

/-! ## A374515.P2524130272609824141

`gcd(A048054(A007318(n)), A302246(n+1))`
-/

namespace A374515.P2524130272609824141
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A048054 (A007318 n).toNat) (A302246 (n + 1))

end

end A374515.P2524130272609824141

/-! ## A374515.P3016944370412044758

`A374683(lt[A333257(n), A141261(3*n+4)])`
-/

namespace A374515.P3016944370412044758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333257 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141261 (3 * n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374683 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A374515.P3016944370412044758

/-! ## A374515.P6897027128114463496

`A374683(lt[A374698(n+1), A374691(2*(n+1))])`
-/

namespace A374515.P6897027128114463496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374698 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374691 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374683 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A374515.P6897027128114463496

/-! ## A374515.P1149415958151520424

`A374683(lt[A098700(n+1), A375250(2*n+3)])`
-/

namespace A374515.P1149415958151520424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098700 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375250 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374683 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A374515.P1149415958151520424

/-!
# A374516: Sum of leaders of maximal anti-runs in the n-th composition in standard order.

The programs for A374516, there is no canonical definition to state claims against.
-/

/-! ## A374516.P1156752603169173648

`A373954(n)+A065120(n)`
-/

namespace A374516.P1156752603169173648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373954 n + A065120 n

end

end A374516.P1156752603169173648

/-! ## A374516.P16354668241371731980

`A373954(n)+val(A057335(n), 2)`
-/

namespace A374516.P16354668241371731980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373954 n + (SequenceMachineLib.valuation (A057335 n).toNat 2 : ℤ)

end

end A374516.P16354668241371731980

/-! ## A374516.P15441071853697661012

`A373954(n)+val(A281589(2*n+1), 2)`
-/

namespace A374516.P15441071853697661012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373954 n + (SequenceMachineLib.valuation (A281589 (2 * n + 1)).toNat 2 : ℤ)

end

end A374516.P15441071853697661012

/-! ## A374516.P10381601453952580609

`A373954(n)+A090996(A006068(n))`
-/

namespace A374516.P10381601453952580609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373954 n + A090996 (A006068 n).toNat

end

end A374516.P10381601453952580609

/-! ## A374516.P2424929400434818993

`A373954(n)+A001222(A209636(n))`
-/

namespace A374516.P2424929400434818993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373954 n + A001222 (A209636 n).toNat

end

end A374516.P2424929400434818993

/-! ## A374516.P7023586981159521228

`A373954(n)+A090996(A268716(n))`
-/

namespace A374516.P7023586981159521228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373954 n + A090996 (A268716 n).toNat

end

end A374516.P7023586981159521228

/-! ## A374516.P15925115279786441861

`A373954(n)+A090996(A334727(n))`
-/

namespace A374516.P15925115279786441861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373954 n + A090996 (A334727 n).toNat

end

end A374516.P15925115279786441861

/-! ## A374516.P13680902834776596238

`A373954(n)+A090996(A341335(n))`
-/

namespace A374516.P13680902834776596238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373954 n + A090996 (A341335 n).toNat

end

end A374516.P13680902834776596238

/-! ## A374516.P16144506533186276549

`A373954(n)+A007814(A036044(n)+2)`
-/

namespace A374516.P16144506533186276549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373954 n + A007814 (A036044 n + 2).toNat

end

end A374516.P16144506533186276549

/-! ## A374516.P14876526940225706330

`A065120(n)+A374684(n)-A374630(n)`
-/

namespace A374516.P14876526940225706330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065120 n + (A374684 n - A374630 n)

end

end A374516.P14876526940225706330

/-!
# A374517: Number of integer compositions of n whose leaders of anti-runs are identical.

The programs for A374517, there is no canonical definition to state claims against.
-/

/-! ## A374517.P10523080348580320425

`Δ[floor(2^(n-1))]-A374640(n)`
-/

namespace A374517.P10523080348580320425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A374640 n

end

end A374517.P10523080348580320425

/-! ## A374517.P15168059631464313104

`A257639(A071728(n))`
-/

namespace A374517.P15168059631464313104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257639 (A071728 n).toNat

end

end A374517.P15168059631464313104

/-! ## A374517.P15472196678588643252

`A226143(A078481(n+1))`
-/

namespace A374517.P15472196678588643252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226143 (A078481 (n + 1)).toNat

end

end A374517.P15472196678588643252

/-! ## A374517.P16009309714337121762

`A105223(A025192(n))`
-/

namespace A374517.P16009309714337121762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105223 (A025192 n).toNat

end

end A374517.P16009309714337121762

/-! ## A374517.P17032194680932135756

`A227568(A071731(n))`
-/

namespace A374517.P17032194680932135756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227568 (A071731 n).toNat

end

end A374517.P17032194680932135756

/-!
# A374518: Number of integer compositions of n whose leaders of anti-runs are distinct.

The programs for A374518, there is no canonical definition to state claims against.
-/

/-! ## A374518.P12724836825487266903

`round(2^(n-1))-A374678(n)`
-/

namespace A374518.P12724836825487266903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)) - A374678 n

end

end A374518.P12724836825487266903

/-! ## A374518.P6444604068386316867

`A028310(A011782(n)-A374678(n))`
-/

namespace A374518.P6444604068386316867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A011782 n - A374678 n).toNat

end

end A374518.P6444604068386316867

/-! ## A374518.P1427702003861038179

`A088141(A318264(n))`
-/

namespace A374518.P1427702003861038179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088141 (A318264 n).toNat

end

end A374518.P1427702003861038179

/-! ## A374518.P4776240748747035337

`A098357(A000079(n+4)+A000010(n+1))`
-/

namespace A374518.P4776240748747035337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098357 (A000079 (n + 4) + A000010 (n + 1)).toNat

end

end A374518.P4776240748747035337

/-! ## A374518.P11314812908471382925

`A065708(A000213(n))`
-/

namespace A374518.P11314812908471382925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065708 (A000213 n).toNat

end

end A374518.P11314812908471382925

/-!
# A374519: Numbers k such that the leaders of anti-runs in the k-th composition in standard order (A066099) are identical.

The programs for A374519, there is no canonical definition to state claims against.
-/

/-! ## A374519.P1441662503439623930

`comp[A374520(n+1)]`
-/

namespace A374519.P1441662503439623930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374520 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A374519.P1441662503439623930

/-! ## A374519.P7531555779042582950

`eq[0, A333382(A375127(n))]`
-/

namespace A374519.P7531555779042582950
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333382 (A375127 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A374519.P7531555779042582950

/-! ## A374519.P325943452894859168

`eq[A124762(n), A124762(A375127(n))]`
-/

namespace A374519.P325943452894859168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124762 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124762 (A375127 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A374519.P325943452894859168

/-! ## A374519.P11948141533963467787

`eq[A065120(n), A373953(A375127(n))]`
-/

namespace A374519.P11948141533963467787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065120 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373953 (A375127 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A374519.P11948141533963467787

/-! ## A374519.P1675652636824538208

`eq[A333381(n), A333381(A375127(n))]`
-/

namespace A374519.P1675652636824538208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333381 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333381 (A375127 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A374519.P1675652636824538208

/-! ## A374519.P580035575023425985

`eq[A373954(n), A373954(A375127(n))]`
-/

namespace A374519.P580035575023425985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373954 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373954 (A375127 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A374519.P580035575023425985

/-!
# A374520: Numbers k such that the leaders of maximal anti-runs in the k-th composition in standard order (A066099) are not identical.

The programs for A374520, there is no canonical definition to state claims against.
-/

/-! ## A374520.P4192411241461817190

`comp[A374519(n+1)]`
-/

namespace A374520.P4192411241461817190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374519 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A374520.P4192411241461817190

/-! ## A374520.P13777775897331338000

`lt[0, A333382(A375127(n))]`
-/

namespace A374520.P13777775897331338000
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333382 (A375127 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A374520.P13777775897331338000

/-! ## A374520.P8893059978187386420

`eq[A294333(n), A333382(A375127(n))]`
-/

namespace A374520.P8893059978187386420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294333 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333382 (A375127 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A374520.P8893059978187386420

/-! ## A374520.P16307147425613018490

`lt[A124762(A375127(n)), A124762(n)]`
-/

namespace A374520.P16307147425613018490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124762 (A375127 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124762 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A374520.P16307147425613018490

/-! ## A374520.P11917794028831284054

`lt[A065120(n), A373953(A375127(n))]`
-/

namespace A374520.P11917794028831284054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065120 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373953 (A375127 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A374520.P11917794028831284054

/-!
# A374521: Triangle read by rows where T(n,k) is the number of integer compositions of n whose leaders of anti-runs sum to k.

The programs for A374521, there is no canonical definition to state claims against.
-/

/-! ## A374521.P9254318243310511174

`A325167(n+1)-A325268(A361718(n))`
-/

namespace A374521.P9254318243310511174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325167 (n + 1) - A325268 (A361718 n).toNat

end

end A374521.P9254318243310511174

/-! ## A374521.P3194015865015060527

`and(A051783(A064413(2*(n+1))), A284600(n+1))`
-/

namespace A374521.P3194015865015060527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A051783 (A064413 (2 * (n + 1))).toNat) (A284600 (n + 1))

end

end A374521.P3194015865015060527

/-! ## A374521.P10873502839668379986

`and(A301722(A304792(n)), A330753(n+1))`
-/

namespace A374521.P10873502839668379986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A301722 (A304792 n).toNat) (A330753 (n + 1))

end

end A374521.P10873502839668379986

/-! ## A374521.P17893946518839491856

`A323439(A239009(n+2))`
-/

namespace A374521.P17893946518839491856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323439 (A239009 (n + 2)).toNat

end

end A374521.P17893946518839491856

/-! ## A374521.P12179532118124946548

`and(A117544(n+1), A127163(3*(n+1)))`
-/

namespace A374521.P12179532118124946548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A117544 (n + 1)) (A127163 (3 * (n + 1)))

end

end A374521.P12179532118124946548

/-!
# A374522: a(n) = n*(binomial(4*n, n) - 1).

The programs for A374522, the canonical program `A374522.P5912875025097854940` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A374522 has offset 0).

The definition of A374522 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(C(4*n, n)-1)` (program `A374522.P5912875025097854940`, by `A374522.P5912875025097854940.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A374522.P5912875025097854940

`n*(C(4*n, n)-1)`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A374522

/-- `n*(C(4*n, n)-1)` -/
def P5912875025097854940.Spec : Prop :=
  ∀ n, P5912875025097854940.a n = A374522 n

theorem P5912875025097854940.correct : P5912875025097854940.Spec := by
  intro n
  simp only [A374522]

end A374522

/-! ## A374522.P14428951833151674861

`A378802(n)-n`
-/

namespace A374522.P14428951833151674861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378802 n - (n : ℤ)

end

end A374522.P14428951833151674861

namespace A374522

/-- `A378802(n)-n` -/
def P14428951833151674861.Spec : Prop :=
  ∀ n, P14428951833151674861.a n = A374522 n

theorem P14428951833151674861.correct : P14428951833151674861.Spec := by
  intro n
  simp only [A374522, Nat.add_sub_cancel, A374522.P14428951833151674861.a, A374522.P5912875025097854940.a, A378802, A378802.P1592035121626726078.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A374522

/-! ## A374522.P9971017826294505831

`n*(A005810(n)-1)`
-/

namespace A374522.P9971017826294505831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A005810 n - 1)

end

end A374522.P9971017826294505831

namespace A374522

/-- `n*(A005810(n)-1)` -/
def P9971017826294505831.Spec : Prop :=
  ∀ n, P9971017826294505831.a n = A374522 n

end A374522

/-! ## A374522.P17184589746059380210

`n*(A057428(n)+A005810(n))`
-/

namespace A374522.P17184589746059380210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A057428 n + A005810 n)

end

end A374522.P17184589746059380210

namespace A374522

/-- `n*(A057428(n)+A005810(n))` -/
def P17184589746059380210.Spec : Prop :=
  ∀ n, P17184589746059380210.a n = A374522 n

end A374522

/-! ## A374522.P12179573366165036277

`A005843(n)*A359108(n)-n`
-/

namespace A374522.P12179573366165036277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n * A359108 n - (n : ℤ)

end

end A374522.P12179573366165036277

namespace A374522

/-- `A005843(n)*A359108(n)-n` -/
def P12179573366165036277.Spec : Prop :=
  ∀ n, P12179573366165036277.a n = A374522 n

end A374522

/-! ## A374522.P3941305515858563444

`n*(A153881(n+1)+A005810(n))`
-/

namespace A374522.P3941305515858563444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A153881 (n + 1) + A005810 n)

end

end A374522.P3941305515858563444

namespace A374522

/-- `n*(A153881(n+1)+A005810(n))` -/
def P3941305515858563444.Spec : Prop :=
  ∀ n, P3941305515858563444.a n = A374522 n

end A374522

/-! ## A374522.P3803458777450250572

`A378804(n)/A000079(n)-n`
-/

namespace A374522.P3803458777450250572
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A378804 n : ℚ) / (A000079 n : ℚ) - (n : ℚ)

end

end A374522.P3803458777450250572

namespace A374522

/-- `A378804(n)/A000079(n)-n` -/
def P3803458777450250572.Spec : Prop :=
  ∀ n, P3803458777450250572.a n = (A374522 n : ℚ)

end A374522

/-!
# A374526: Similar to A374525, but for each starting matrix with a choice of whether to sort by columns or rows first, such that the total number of sorting steps for this matrix is minimized.

The programs for A374526, there is no canonical definition to state claims against.
-/

/-! ## A374526.P6465698167536584351

`A373989(2*n+1)+A259575(A341244(2*(n+4)))`
-/

namespace A374526.P6465698167536584351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373989 (2 * n + 1) + A259575 (A341244 (2 * (n + 4))).toNat

end

end A374526.P6465698167536584351

/-!
# A374527: Odd numbers whose Collatz trajectory is a Sidon sequence.

The programs for A374527, there is no canonical definition to state claims against.
-/

/-! ## A374527.P17976969115861353054

`∩[2*n+1, A375006(n+1)]`
-/

namespace A374527.P17976969115861353054
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375006 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A374527.P17976969115861353054

/-! ## A374527.P12605935874375856523

`record[A000265(A375006(n+1))]`
-/

namespace A374527.P12605935874375856523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A375006 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A374527.P12605935874375856523

/-! ## A374527.P17671190223845188211

`∩[A320020(n+1), A350160(n+1)]`
-/

namespace A374527.P17671190223845188211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320020 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350160 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A374527.P17671190223845188211

/-! ## A374527.P4293464417032422359

`filter[A375006(n+1), A323239(#)]`
-/

namespace A374527.P4293464417032422359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375006 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323239 (f1 j).toNat = 1) n)

end

end A374527.P4293464417032422359

/-! ## A374527.P2792273471345322698

`filter[A375006(n+1), A354036(#)]`
-/

namespace A374527.P2792273471345322698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375006 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354036 (f1 j).toNat = 1) n)

end

end A374527.P2792273471345322698

/-!
# A374531: a(n) = A374494(A374494(n)).

The programs for A374531, there is no canonical definition to state claims against.
-/

/-! ## A374531.P13984418634043724413

`A374494(A374494(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A374531.P13984418634043724413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374494 (A374494 (n + 1)).toNat

end

end A374531.P13984418634043724413

/-! ## A374531.P12718161270961539638

`A373498(A373498(A373498(A373498(n+1))))`
-/

namespace A374531.P12718161270961539638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373498 (A373498 (A373498 (A373498 (n + 1)).toNat).toNat).toNat

end

end A374531.P12718161270961539638

/-! ## A374531.P3197253922547237927

`A373498(A370655(n+1))`
-/

namespace A374531.P3197253922547237927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373498 (A370655 (n + 1)).toNat

end

end A374531.P3197253922547237927

/-! ## A374531.P1457384648960774507

`A374447(A374447(n+1))`
-/

namespace A374531.P1457384648960774507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374447 (A374447 (n + 1)).toNat

end

end A374531.P1457384648960774507

/-!
# A374532: Number of complete unit squares that fit inside a circle of radius sqrt(n^2+1) centered at the origin of a square lattice.

The programs for A374532, the canonical program `A374532.P9847573754567788260` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A374532 has offset 0).

The definition of A374532 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A237526, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A374532.P9847573754567788260

`4*A237526(n²+1)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A374532

/-- `4*A237526(n²+1)` -/
def P9847573754567788260.Spec : Prop :=
  ∀ n, P9847573754567788260.a n = A374532 n

theorem P9847573754567788260.correct : P9847573754567788260.Spec := by
  intro n
  simp only [A374532]

end A374532

/-!
# A374533: a(n) is the number of parking functions of order n where the (n-1)-st spot is lucky.

The programs for A374533, there is no canonical definition to state claims against.
-/

/-! ## A374533.P8439250694709874897

`A374756(eq[A158824(n+1), A172263(n)])`
-/

namespace A374533.P8439250694709874897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158824 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172263 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374756 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A374533.P8439250694709874897

/-! ## A374533.P14930576434680959570

`A374756(eq[A221200(n+1), A352550(n+1)])`
-/

namespace A374533.P14930576434680959570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221200 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352550 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374756 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A374533.P14930576434680959570

/-!
# A374534: Expansion of (x/(4 * (1-x))) * d/dx(theta_3(x)^2).

The programs for A374534, the canonical program `A374534.P17728637451671606639` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A374534 has offset 0).

The definition of A374534 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A374534.P17728637451671606639

`∑[A111938(n+1)]-A111938(n+1)`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A374534

/-- `∑[A111938(n+1)]-A111938(n+1)` -/
def P17728637451671606639.Spec : Prop :=
  ∀ n, P17728637451671606639.a n = A374534 n

theorem P17728637451671606639.correct : P17728637451671606639.Spec := by
  intro n
  simp only [A374534]

end A374534

/-! ## A374534.P712744699380368939

`∑[n*A002654(A004277(n))]`
-/

namespace A374534.P712744699380368939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A002654 (A004277 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A374534.P712744699380368939

namespace A374534

/-- `∑[n*A002654(A004277(n))]` -/
def P712744699380368939.Spec : Prop :=
  ∀ n, P712744699380368939.a n = A374534 n

end A374534

/-! ## A374534.P14540219733336492454

`∑[n*A002654(A008574(n))]`
-/

namespace A374534.P14540219733336492454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A002654 (A008574 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A374534.P14540219733336492454

namespace A374534

/-- `∑[n*A002654(A008574(n))]` -/
def P14540219733336492454.Spec : Prop :=
  ∀ n, P14540219733336492454.a n = A374534 n

end A374534

/-! ## A374534.P7594889135449568658

`∑[A002265(n*A004018(n))]`
-/

namespace A374534.P7594889135449568658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 ((n : ℤ) * A004018 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A374534.P7594889135449568658

namespace A374534

/-- `∑[A002265(n*A004018(n))]` -/
def P7594889135449568658.Spec : Prop :=
  ∀ n, P7594889135449568658.a n = A374534 n

end A374534

/-! ## A374534.P6352510738368482

`∑[A110655(n*A004018(n))]`
-/

namespace A374534.P6352510738368482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110655 ((n : ℤ) * A004018 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A374534.P6352510738368482

namespace A374534

/-- `∑[A110655(n*A004018(n))]` -/
def P6352510738368482.Spec : Prop :=
  ∀ n, P6352510738368482.a n = A374534 n

end A374534

/-!
# A374535: Expansion of (x/(8 * (1-x))) * d/dx(theta_3(x)^4).

The programs for A374535, the canonical program `A374535.P6338832552149736650` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A374535 has offset 0).

The definition of A374535 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A374535.P2711712687415525398

`∑[n*A000118(n)/8]`
-/

namespace A374535.P2711712687415525398
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * ((A000118 n : ℚ) / 8)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A374535.P2711712687415525398

namespace A374535

/-- `∑[n*A000118(n)/8]` -/
def P2711712687415525398.Spec : Prop :=
  ∀ n, P2711712687415525398.a n = (A374535 n : ℚ)

end A374535

/-! ## A374535.P6338832552149736650

`∑[A185152(A028310(n))]-1`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A374535

/-- `∑[A185152(A028310(n))]-1` -/
def P6338832552149736650.Spec : Prop :=
  ∀ n, P6338832552149736650.a n = A374535 n

theorem P6338832552149736650.correct : P6338832552149736650.Spec := by
  intro n
  simp only [A374535]

end A374535

/-! ## A374535.P3128356724917782389

`∑[A185152(n+1)]-A185152(n+1)`
-/

namespace A374535.P3128356724917782389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185152 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A185152 (n + 1)

end

end A374535.P3128356724917782389

namespace A374535

/-- `∑[A185152(n+1)]-A185152(n+1)` -/
def P3128356724917782389.Spec : Prop :=
  ∀ n, P3128356724917782389.a n = A374535 n

end A374535

/-!
# A374537: a(n) is the sum of the squares of the divisors of n that are exponentially odd numbers.

The programs for A374537, the canonical program `A374537.P5043610287241406847` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A374537 has offset 1).

The definition of A374537 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A374537.P5043610287241406847

`∑{d}[A019554(n+1), A102631(#)²]`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A374537

/-- `∑{d}[A019554(n+1), A102631(#)²]` -/
def P5043610287241406847.Spec : Prop :=
  ∀ n, P5043610287241406847.a n = A374537 (n + 1)

theorem P5043610287241406847.correct : P5043610287241406847.Spec := by
  intro n
  simp only [A374537, Nat.add_sub_cancel]

end A374537

/-! ## A374537.P8701945311706916966

`A351265(n+1)+A325318(A374165(n))`
-/

namespace A374537.P8701945311706916966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351265 (n + 1) + A325318 (A374165 n).toNat

end

end A374537.P8701945311706916966

namespace A374537

/-- `A351265(n+1)+A325318(A374165(n))` -/
def P8701945311706916966.Spec : Prop :=
  ∀ n, P8701945311706916966.a n = A374537 (n + 1)

end A374537

/-!
# A374538: a(n) is the sum of the squares of the unitary divisors of n that are exponentially odd numbers (A268335).

The programs for A374538, the canonical program `A374538.P5898032326319891676` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A374538 has offset 1).

The definition of A374538 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034676, A350389, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A374538.P5898032326319891676

`A034676(A350389(n+1))`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A374538

/-- `A034676(A350389(n+1))` -/
def P5898032326319891676.Spec : Prop :=
  ∀ n, P5898032326319891676.a n = A374538 (n + 1)

theorem P5898032326319891676.correct : P5898032326319891676.Spec := by
  intro n
  simp only [A374538, Nat.add_sub_cancel]

end A374538

/-! ## A374538.P2289492211020042708

`A034676(gcd(A071975(n+1)², A002378(n)))`
-/

namespace A374538.P2289492211020042708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034676 (Int.gcd (A071975 (n + 1) ^ 2) (A002378 n))

end

end A374538.P2289492211020042708

namespace A374538

/-- `A034676(gcd(A071975(n+1)², A002378(n)))` -/
def P2289492211020042708.Spec : Prop :=
  ∀ n, P2289492211020042708.a n = A374538 (n + 1)

end A374538

/-! ## A374538.P7922203765148731548

`A034676(n+1)/A034676(A350388(n+1))`
-/

namespace A374538.P7922203765148731548
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034676 (n + 1) : ℚ) / (A034676 (A350388 (n + 1)).toNat : ℚ)

end

end A374538.P7922203765148731548

namespace A374538

/-- `A034676(n+1)/A034676(A350388(n+1))` -/
def P7922203765148731548.Spec : Prop :=
  ∀ n, P7922203765148731548.a n = (A374538 (n + 1) : ℚ)

end A374538

/-! ## A374538.P16888025179390541725

`A034676(lcm(A071975(n+1), A368167(n+1)))`
-/

namespace A374538.P16888025179390541725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034676 (Int.lcm (A071975 (n + 1)) (A368167 (n + 1)))

end

end A374538.P16888025179390541725

namespace A374538

/-- `A034676(lcm(A071975(n+1), A368167(n+1)))` -/
def P16888025179390541725.Spec : Prop :=
  ∀ n, P16888025179390541725.a n = A374538 (n + 1)

end A374538

/-! ## A374538.P7487580473436192323

`A034676(n+1)/A034676(A071974(n+1)²)`
-/

namespace A374538.P7487580473436192323
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034676 (n + 1) : ℚ) / (A034676 (A071974 (n + 1) ^ 2).toNat : ℚ)

end

end A374538.P7487580473436192323

namespace A374538

/-- `A034676(n+1)/A034676(A071974(n+1)²)` -/
def P7487580473436192323.Spec : Prop :=
  ∀ n, P7487580473436192323.a n = (A374538 (n + 1) : ℚ)

end A374538

/-! ## A374538.P11044424165467907983

`A383763((n+1)²)`
-/

namespace A374538.P11044424165467907983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383763 ((n + 1) ^ 2)

end

end A374538.P11044424165467907983

namespace A374538

/-- `A383763((n+1)²)` -/
def P11044424165467907983.Spec : Prop :=
  ∀ n, P11044424165467907983.a n = A374538 (n + 1)

end A374538

/-! ## A374538.P17880584661362142675

`A034448(A350389(n+1)²)`
-/

namespace A374538.P17880584661362142675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034448 (A350389 (n + 1) ^ 2).toNat

end

end A374538.P17880584661362142675

namespace A374538

/-- `A034448(A350389(n+1)²)` -/
def P17880584661362142675.Spec : Prop :=
  ∀ n, P17880584661362142675.a n = A374538 (n + 1)

end A374538

/-! ## A374538.P8363023329911396870

`A034448(A383764((n+1)²))`
-/

namespace A374538.P8363023329911396870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034448 (A383764 ((n + 1) ^ 2)).toNat

end

end A374538.P8363023329911396870

namespace A374538

/-- `A034448(A383764((n+1)²))` -/
def P8363023329911396870.Spec : Prop :=
  ∀ n, P8363023329911396870.a n = A374538 (n + 1)

end A374538

/-! ## A374538.P5152989091513829890

`A358347(A350389(n+1)²)`
-/

namespace A374538.P5152989091513829890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358347 (A350389 (n + 1) ^ 2).toNat

end

end A374538.P5152989091513829890

namespace A374538

/-- `A358347(A350389(n+1)²)` -/
def P5152989091513829890.Spec : Prop :=
  ∀ n, P5152989091513829890.a n = A374538 (n + 1)

end A374538

/-! ## A374538.P607213113509816736

`A345451(A350389(n+1)²)+1`
-/

namespace A374538.P607213113509816736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345451 (A350389 (n + 1) ^ 2).toNat + 1

end

end A374538.P607213113509816736

namespace A374538

/-- `A345451(A350389(n+1)²)+1` -/
def P607213113509816736.Spec : Prop :=
  ∀ n, P607213113509816736.a n = A374538 (n + 1)

end A374538

/-! ## A374538.P4928395660499563423

`A358347(A350389(n+1)*A350389(n+1))`
-/

namespace A374538.P4928395660499563423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358347 (A350389 (n + 1) * A350389 (n + 1)).toNat

end

end A374538.P4928395660499563423

namespace A374538

/-- `A358347(A350389(n+1)*A350389(n+1))` -/
def P4928395660499563423.Spec : Prop :=
  ∀ n, P4928395660499563423.a n = A374538 (n + 1)

end A374538

/-!
# A374539: The sum of the squares of the infinitary divisors of n.

The programs for A374539, there is no canonical definition to state claims against.
-/

/-! ## A374539.P15319063027156929082

`A049417((n+1)²)`
-/

namespace A374539.P15319063027156929082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049417 ((n + 1) ^ 2)

end

end A374539.P15319063027156929082

/-! ## A374539.P10230954115844695234

`A360722((n+1)²)`
-/

namespace A374539.P10230954115844695234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360722 ((n + 1) ^ 2)

end

end A374539.P10230954115844695234

/-! ## A374539.P17291238175152767770

`A126168((n+1)²)+(n+1)²`
-/

namespace A374539.P17291238175152767770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126168 ((n + 1) ^ 2) + ((n + 1) ^ 2 : ℤ)

end

end A374539.P17291238175152767770

/-! ## A374539.P6330223939427844338

`A000027(A049417(record[(n-1)²]))`
-/

namespace A374539.P6330223939427844338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A049417 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat).toNat

end

end A374539.P6330223939427844338

/-! ## A374539.P3370241204253720758

`A000027(A049417(∑[2*n+1]))`
-/

namespace A374539.P3370241204253720758
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A049417 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A374539.P3370241204253720758

/-! ## A374539.P9723124842943820632

`A049417(A000290(n+1))%A004814(n+1)`
-/

namespace A374539.P9723124842943820632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A049417 (A000290 (n + 1)).toNat) (A004814 (n + 1))

end

end A374539.P9723124842943820632

/-! ## A374539.P13528918185148420554

`A049417(A000290(n+1))*A329684(3*n+1)`
-/

namespace A374539.P13528918185148420554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049417 (A000290 (n + 1)).toNat * A329684 (3 * n + 1)

end

end A374539.P13528918185148420554

/-!
# A374540: a(1) = 0; for n >= 2, a(n) is the number of iterations needed for the map x -> x/A000005(x) to reach a least integer, when starting from x = A033950(n).

The programs for A374540, there is no canonical definition to state claims against.
-/

/-! ## A374540.P5615752965923585953

`gcd(A003056(A305632(3*n+2)), A007953(n))`
-/

namespace A374540.P5615752965923585953
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003056 (A305632 (3 * n + 2)).toNat) (A007953 n)

end

end A374540.P5615752965923585953

/-! ## A374540.P17018159911049242457

`A241918(A298389(2*n+1)+1)`
-/

namespace A374540.P17018159911049242457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241918 (A298389 (2 * n + 1) + 1).toNat

end

end A374540.P17018159911049242457

/-! ## A374540.P3514197739278665213

`A223968(A274640(2*(n+1)))%A324945(n+1)`
-/

namespace A374540.P3514197739278665213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A223968 (A274640 (2 * (n + 1))).toNat) (A324945 (n + 1))

end

end A374540.P3514197739278665213

/-! ## A374540.P12424814669241512995

`gcd(n, A239012(ceil(sqrt(n))!))`
-/

namespace A374540.P12424814669241512995
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A239012 (Nat.factorial ⌈Real.sqrt (n : ℝ)⌉.toNat))

end

end A374540.P12424814669241512995

/-! ## A374540.P2842050377761990345

`gcd(n, A085544(A015750(n)))`
-/

namespace A374540.P2842050377761990345
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A085544 (A015750 n).toNat)

end

end A374540.P2842050377761990345

/-!
# A374541: Number of length n inversion sequences avoiding the patterns 000 and 102.

The programs for A374541, there is no canonical definition to state claims against.
-/

/-! ## A374541.P1482924304525474792

`A268132(A373455(n+1))`
-/

namespace A374541.P1482924304525474792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268132 (A373455 (n + 1)).toNat

end

end A374541.P1482924304525474792

/-! ## A374541.P7171539957876476213

`A301871(A080796(3*n)+n)`
-/

namespace A374541.P7171539957876476213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301871 (A080796 (3 * n) + (n : ℤ)).toNat

end

end A374541.P7171539957876476213

/-! ## A374541.P13509606092526638126

`A002024(A147664(n))`
-/

namespace A374541.P13509606092526638126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A147664 n).toNat

end

end A374541.P13509606092526638126

/-!
# A374542: Number of length n inversion sequences avoiding the patterns 102 and 210.

The programs for A374542, there is no canonical definition to state claims against.
-/

/-! ## A374542.P3000939972297826937

`A187185(A149276(n+1))`
-/

namespace A374542.P3000939972297826937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187185 (A149276 (n + 1)).toNat

end

end A374542.P3000939972297826937

/-! ## A374542.P18200731436543970400

`A226233(A202974(n+1))`
-/

namespace A374542.P18200731436543970400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226233 (A202974 (n + 1)).toNat

end

end A374542.P18200731436543970400

/-! ## A374542.P4306252220690420874

`∑[A333256(A102726(n))]+1`
-/

namespace A374542.P4306252220690420874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333256 (A102726 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A374542.P4306252220690420874

/-!
# A374543: Number of length n inversion sequences avoiding the patterns 000 and 201 (or 000 and 210).

The programs for A374543, there is no canonical definition to state claims against.
-/

/-! ## A374543.P12896716160269768213

`A061017(A340942(n))`
-/

namespace A374543.P12896716160269768213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061017 (A340942 n).toNat

end

end A374543.P12896716160269768213

/-! ## A374543.P811381085783979719

`A194990(A214239(n+1)+A063687(n))`
-/

namespace A374543.P811381085783979719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194990 (A214239 (n + 1) + A063687 n).toNat

end

end A374543.P811381085783979719

/-! ## A374543.P15441288752958493746

`A185283(A014068(n))`
-/

namespace A374543.P15441288752958493746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185283 (A014068 n).toNat

end

end A374543.P15441288752958493746

/-!
# A374544: Number of length n inversion sequences avoiding the patterns 100 and 110.

The programs for A374544, there is no canonical definition to state claims against.
-/

/-! ## A374544.P6450557120426139562

`A302492(A148488(n))`
-/

namespace A374544.P6450557120426139562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302492 (A148488 n).toNat

end

end A374544.P6450557120426139562

/-! ## A374544.P14056003957026310993

`A302492(A148489(n))`
-/

namespace A374544.P14056003957026310993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302492 (A148489 n).toNat

end

end A374544.P14056003957026310993

/-! ## A374544.P3971554409160140772

`A344420(A200716(n))+A000110(n)`
-/

namespace A374544.P3971554409160140772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344420 (A200716 n).toNat + A000110 n

end

end A374544.P3971554409160140772

/-!
# A374545: Number of length n inversion sequences avoiding the patterns 100 and 101.

The programs for A374545, there is no canonical definition to state claims against.
-/

/-! ## A374545.P5370890096517382819

`A193321(n)-A373226(C(n+2, 6))`
-/

namespace A374545.P5370890096517382819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193321 n - A373226 (Nat.choose (n + 2) 6)

end

end A374545.P5370890096517382819

/-! ## A374545.P929570692909746729

`A167865(A001003(n)+A000670(n))`
-/

namespace A374545.P929570692909746729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167865 (A001003 n + A000670 n).toNat

end

end A374545.P929570692909746729

/-! ## A374545.P17412051126510239465

`A187251(n)-A185215(A006184(n))`
-/

namespace A374545.P17412051126510239465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187251 n - A185215 (A006184 n).toNat

end

end A374545.P17412051126510239465

/-!
# A374546: Number of length n inversion sequences avoiding the patterns 110 and 201.

The programs for A374546, there is no canonical definition to state claims against.
-/

/-! ## A374546.P3570585643771788834

`A074290(A090339(n))+A022558(n)`
-/

namespace A374546.P3570585643771788834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074290 (A090339 n).toNat + A022558 n

end

end A374546.P3570585643771788834

/-! ## A374546.P13190778799785400120

`A022558(n)-A185274(A000041(n))`
-/

namespace A374546.P13190778799785400120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022558 n - A185274 (A000041 n).toNat

end

end A374546.P13190778799785400120

/-! ## A374546.P8893076718980586858

`A022558(n)-A102683(A193321(n))`
-/

namespace A374546.P8893076718980586858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022558 n - A102683 (A193321 n).toNat

end

end A374546.P8893076718980586858

/-! ## A374546.P2907670499123166448

`A022558(n)-A304572(A000142(n))`
-/

namespace A374546.P2907670499123166448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022558 n - A304572 (A000142 n).toNat

end

end A374546.P2907670499123166448

/-!
# A374547: Number of length n inversion sequences avoiding the patterns 101 and 210.

The programs for A374547, there is no canonical definition to state claims against.
-/

/-! ## A374547.P3207144666865331309

`or(A061552(n), A170956(3*n))`
-/

namespace A374547.P3207144666865331309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A061552 n) (A170956 (3 * n))

end

end A374547.P3207144666865331309

/-! ## A374547.P7404166549749127830

`A061552(n)+A037134(A008776(n))`
-/

namespace A374547.P7404166549749127830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061552 n + A037134 (A008776 n).toNat

end

end A374547.P7404166549749127830

/-! ## A374547.P16375889758975934407

`A061552(n)+A058343(A025047(n))`
-/

namespace A374547.P16375889758975934407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061552 n + A058343 (A025047 n).toNat

end

end A374547.P16375889758975934407

/-! ## A374547.P13064240065113759022

`A083917(A000142(n))+A061552(n)`
-/

namespace A374547.P13064240065113759022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083917 (A000142 n).toNat + A061552 n

end

end A374547.P13064240065113759022

/-!
# A374548: Number of length n inversion sequences avoiding the patterns 011 and 120.

The programs for A374548, there is no canonical definition to state claims against.
-/

/-! ## A374548.P4812004752768957208

`A038107(A309861(n))+A000108(n)`
-/

namespace A374548.P4812004752768957208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038107 (A309861 n).toNat + A000108 n

end

end A374548.P4812004752768957208

/-! ## A374548.P4624907455448639912

`A325199(A180502(n))+A000108(n)`
-/

namespace A374548.P4624907455448639912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325199 (A180502 n).toNat + A000108 n

end

end A374548.P4624907455448639912

/-! ## A374548.P12916103267338654588

`A002839(A029731(n+3))+A000108(n)`
-/

namespace A374548.P12916103267338654588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002839 (A029731 (n + 3)).toNat + A000108 n

end

end A374548.P12916103267338654588

/-! ## A374548.P13505208809207028661

`A213177(A185063(2*(n+1)))+A000108(n)`
-/

namespace A374548.P13505208809207028661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213177 (A185063 (2 * (n + 1))).toNat + A000108 n

end

end A374548.P13505208809207028661

/-!
# A374549: Number of length n inversion sequences avoiding the patterns 100 and 120.

The programs for A374549, there is no canonical definition to state claims against.
-/

/-! ## A374549.P2072519042041896946

`A276798(A150780(n))`
-/

namespace A374549.P2072519042041896946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276798 (A150780 n).toNat

end

end A374549.P2072519042041896946

/-! ## A374549.P4110931811581679173

`A342290(A034618(n)+n)`
-/

namespace A374549.P4110931811581679173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342290 (A034618 n + (n : ℤ)).toNat

end

end A374549.P4110931811581679173

/-! ## A374549.P6805594983625072049

`A342290(or(n, A034618(n)))`
-/

namespace A374549.P6805594983625072049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342290 (Int.lor (n : ℤ) (A034618 n)).toNat

end

end A374549.P6805594983625072049

/-!
# A374550: Number of length n inversion sequences avoiding the patterns 120 and 201.

The programs for A374550, there is no canonical definition to state claims against.
-/

/-! ## A374550.P15701625132691186034

`A138311(A238639(n))`
-/

namespace A374550.P15701625132691186034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138311 (A238639 n).toNat

end

end A374550.P15701625132691186034

/-! ## A374550.P5809330584661876612

`A036234(A115087(n))-n`
-/

namespace A374550.P5809330584661876612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036234 (A115087 n).toNat - (n : ℤ)

end

end A374550.P5809330584661876612

/-! ## A374550.P15731813267044687824

`A137579(A001006(n))+A098746(n)`
-/

namespace A374550.P15731813267044687824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137579 (A001006 n).toNat + A098746 n

end

end A374550.P15731813267044687824

/-!
# A374551: Number of length n inversion sequences avoiding the patterns 101 and 120.

The programs for A374551, there is no canonical definition to state claims against.
-/

/-! ## A374551.P2733589342085210515

`A024417(A204512(2*n+1)+2)`
-/

namespace A374551.P2733589342085210515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024417 (A204512 (2 * n + 1) + 2).toNat

end

end A374551.P2733589342085210515

/-! ## A374551.P17724635850083132958

`A102681(A000302(n))+A053617(n)`
-/

namespace A374551.P17724635850083132958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102681 (A000302 n).toNat + A053617 n

end

end A374551.P17724635850083132958

/-! ## A374551.P2298726400188651190

`A200753(n)+A057729(A007999(n))`
-/

namespace A374551.P2298726400188651190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200753 n + A057729 (A007999 n).toNat

end

end A374551.P2298726400188651190

/-!
# A374552: Number of length n inversion sequences avoiding the patterns 000 and 120.

The programs for A374552, there is no canonical definition to state claims against.
-/

/-! ## A374552.P9160793555543518185

`A108141(A148400(n))`
-/

namespace A374552.P9160793555543518185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108141 (A148400 n).toNat

end

end A374552.P9160793555543518185

/-! ## A374552.P4660854146499271871

`A122005(A186576(n))`
-/

namespace A374552.P4660854146499271871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122005 (A186576 n).toNat

end

end A374552.P4660854146499271871

/-! ## A374552.P9982974170153539227

`A243284(A097422(n)+1)`
-/

namespace A374552.P9982974170153539227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243284 (A097422 n + 1).toNat

end

end A374552.P9982974170153539227

/-!
# A374553: Number of length n inversion sequences avoiding the patterns 010 and 102.

The programs for A374553, there is no canonical definition to state claims against.
-/

/-! ## A374553.P4721181177071239369

`A157271(A148941(n))`
-/

namespace A374553.P4721181177071239369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157271 (A148941 n).toNat

end

end A374553.P4721181177071239369

/-! ## A374553.P11109257002684397551

`A371587(A149265(n))`
-/

namespace A374553.P11109257002684397551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371587 (A149265 n).toNat

end

end A374553.P11109257002684397551

/-! ## A374553.P751130986796768338

`A178210(A348666(n))`
-/

namespace A374553.P751130986796768338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178210 (A348666 n).toNat

end

end A374553.P751130986796768338

/-!
# A374554: Number of length n inversion sequences avoiding the patterns 100 and 102.

The programs for A374554, there is no canonical definition to state claims against.
-/

/-! ## A374554.P6038270116875951478

`A020913(A150110(n))`
-/

namespace A374554.P6038270116875951478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020913 (A150110 n).toNat

end

end A374554.P6038270116875951478

/-! ## A374554.P2492540333953235636

`A076885(A151287(n))`
-/

namespace A374554.P2492540333953235636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076885 (A151287 n).toNat

end

end A374554.P2492540333953235636

/-! ## A374554.P17131669949433791919

`A214701(A148492(n))`
-/

namespace A374554.P17131669949433791919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214701 (A148492 n).toNat

end

end A374554.P17131669949433791919

/-!
# A374555: Number of maximal independent vertex sets in the n-flower graph.

The programs for A374555, there is no canonical definition to state claims against.
-/

/-! ## A374555.P10006879825959072665

`A005555(A014688(3*n+1))-3`
-/

namespace A374555.P10006879825959072665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005555 (A014688 (3 * n + 1)).toNat - 3

end

end A374555.P10006879825959072665

/-!
# A374560: Square array A(n, k), n, k >= 0, read by antidiagonals; A(n, k) = A005836(n+1) + A005836(k+1).

The programs for A374560, the canonical program `A374560.P15287772659668593832` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A374560 has offset 0).

The definition of A374560 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A374560.P15287772659668593832

`A005836(col(n)+1)+A005836(row(n)-col(n)+1)`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A374560

/-- `A005836(col(n)+1)+A005836(row(n)-col(n)+1)` -/
def P15287772659668593832.Spec : Prop :=
  ∀ n, P15287772659668593832.a n = A374560 n

theorem P15287772659668593832.correct : P15287772659668593832.Spec := by
  intro n
  simp only [A374560]

end A374560

/-! ## A374560.P13638161151099670371

`A005836(row(n)-col(n)+1)+A005836(col(n)+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A374560.P13638161151099670371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005836 ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) + 1).toNat + A005836 (SequenceMachineLib.triCol n + 1)

end

end A374560.P13638161151099670371

namespace A374560

/-- `A005836(row(n)-col(n)+1)+A005836(col(n)+1)` -/
def P13638161151099670371.Spec : Prop :=
  ∀ n, P13638161151099670371.a n = A374560 n

theorem P13638161151099670371.correct : P13638161151099670371.Spec := by
  intro n
  simp only [A374560, Nat.add_sub_cancel, A374560.P13638161151099670371.a, A374560.P15287772659668593832.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A374560

/-! ## A374560.P17619647553025524916

`A005836(A002260(n+1))+A005836(A004736(n+1))`
-/

namespace A374560.P17619647553025524916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005836 (A002260 (n + 1)).toNat + A005836 (A004736 (n + 1)).toNat

end

end A374560.P17619647553025524916

namespace A374560

/-- `A005836(A002260(n+1))+A005836(A004736(n+1))` -/
def P17619647553025524916.Spec : Prop :=
  ∀ n, P17619647553025524916.a n = A374560 n

end A374560

/-!
# A374561: Integers which are palindromes when expressed in more than one base 2 to 10.

The programs for A374561, there is no canonical definition to state claims against.
-/

/-! ## A374561.P12444572161194926967

`lt[n, n*A050812(n)]`
-/

namespace A374561.P12444572161194926967
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A050812 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A374561.P12444572161194926967

/-! ## A374561.P12451133554128312003

`lt[1, A050812(n+1)]+1`
-/

namespace A374561.P12451133554128312003
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050812 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A374561.P12451133554128312003

/-! ## A374561.P7779813017999827026

`lt[A007318(n), A050812(n)^n]`
-/

namespace A374561.P7779813017999827026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050812 n ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A374561.P7779813017999827026

/-! ## A374561.P17017089711638466694

`lt[A059268(n), A050812(n)^n]`
-/

namespace A374561.P17017089711638466694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050812 n ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A374561.P17017089711638466694

/-! ## A374561.P8988095037616298830

`lt[A069910(n), A050812(n)^n]`
-/

namespace A374561.P8988095037616298830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069910 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050812 n ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A374561.P8988095037616298830

/-! ## A374561.P17026860108112911206

`lt[A078008(n), A050812(n)^n]`
-/

namespace A374561.P17026860108112911206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078008 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050812 n ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A374561.P17026860108112911206

/-! ## A374561.P1470950716542092732

`lt[A210442(n), A050812(n)^n]`
-/

namespace A374561.P1470950716542092732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210442 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050812 n ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A374561.P1470950716542092732

/-! ## A374561.P2737552751699740769

`lt[A321417(n), A050812(n)^n]`
-/

namespace A374561.P2737552751699740769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321417 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050812 n ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A374561.P2737552751699740769

/-!
# A374562: Defined by: Sum_{i=1..n} a(i) / n^i = 1, n >= 1.

The programs for A374562, there is no canonical definition to state claims against.
-/

/-! ## A374562.P7401396550760116250

`(n+1)*A374601(n+1)`
-/

namespace A374562.P7401396550760116250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A374601 (n + 1)

end

end A374562.P7401396550760116250

/-!
# A374563: Expansion of g.f. A(x) satisfying A(x) = x*(1 + A(x)^2) + x^2*(1 + A(x)^2)^2.

The programs for A374563, there is no canonical definition to state claims against.
-/

/-! ## A374563.P10464308326716683806

`A138328(A240645(n+2))`
-/

namespace A374563.P10464308326716683806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138328 (A240645 (n + 2)).toNat

end

end A374563.P10464308326716683806

/-! ## A374563.P4601762446181960168

`A328867(A119266(n+1))-A049600(n)`
-/

namespace A374563.P4601762446181960168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328867 (A119266 (n + 1)).toNat - A049600 n

end

end A374563.P4601762446181960168

/-!
# A374564: Expansion of g.f. A(x) satisfying A(x)^3 = A( (x - A(x))*(A(x) - 2*x) ).

The programs for A374564, there is no canonical definition to state claims against.
-/

/-! ## A374564.P1836595161546262610

`A088462(A370474(n)+1)`
-/

namespace A374564.P1836595161546262610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088462 (A370474 n + 1).toNat

end

end A374564.P1836595161546262610

/-! ## A374564.P12767711365644502096

`A209383(A319585(n+1))`
-/

namespace A374564.P12767711365644502096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209383 (A319585 (n + 1)).toNat

end

end A374564.P12767711365644502096

/-!
# A374565: Expansion of g.f. A(x) satisfying A(x)^3 = A( x*A(x)^2/(1-x) ).

The programs for A374565, there is no canonical definition to state claims against.
-/

/-! ## A374565.P2351352284252795614

`A185264(A032020(n))+A071879(n)`
-/

namespace A374565.P2351352284252795614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185264 (A032020 n).toNat + A071879 n

end

end A374565.P2351352284252795614

/-! ## A374565.P16316572215676787370

`A137748(A137748(n))+A071879(n)`
-/

namespace A374565.P16316572215676787370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137748 (A137748 n).toNat + A071879 n

end

end A374565.P16316572215676787370

/-! ## A374565.P17444581870986725323

`A235127(A059219(n))+A071879(n)`
-/

namespace A374565.P17444581870986725323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235127 (A059219 n).toNat + A071879 n

end

end A374565.P17444581870986725323

/-! ## A374565.P17094026331216327015

`A086080(A343668(n))+A071879(n)`
-/

namespace A374565.P17094026331216327015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086080 (A343668 n).toNat + A071879 n

end

end A374565.P17094026331216327015

/-! ## A374565.P661472758275497058

`A071879(n)-A014669(A008528(n))`
-/

namespace A374565.P661472758275497058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071879 n - A014669 (A008528 n).toNat

end

end A374565.P661472758275497058

/-!
# A374566: Expansion of g.f. A(x) satisfying A(x)^2 = A( x^2 + 2*(1+x)*A(x)^3 ).

The programs for A374566, there is no canonical definition to state claims against.
-/

/-! ## A374566.P14221926922901560765

`A333217(A371901(n+3))+1`
-/

namespace A374566.P14221926922901560765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333217 (A371901 (n + 3)).toNat + 1

end

end A374566.P14221926922901560765

/-! ## A374566.P14859869350767245399

`A006984(A246049(n)+A045499(n))`
-/

namespace A374566.P14859869350767245399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006984 (A246049 n + A045499 n).toNat

end

end A374566.P14859869350767245399

/-!
# A374567: Expansion of g.f. A(x) satisfying A(x)^2 = A( x^2 + 2*x*A(x)^2 + 2*A(x)^3 ).

The programs for A374567, there is no canonical definition to state claims against.
-/

/-! ## A374567.P8781659531591894948

`A329358(a(n-1)+n+1)` with `a(0)=1, a(1)=2`
-/

namespace A374567.P8781659531591894948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A329358 (a (n - 1) + (n + 1 : ℤ)).toNat

end

end A374567.P8781659531591894948

/-!
# A374568: Expansion of g.f. A(x) satisfying x = A(x - x^2) - A(x + x^2)^2.

The programs for A374568, there is no canonical definition to state claims against.
-/

/-! ## A374568.P5326293246748609148

`A361448(n)-A376365(A322395(n))`
-/

namespace A374568.P5326293246748609148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361448 n - A376365 (A322395 n).toNat

end

end A374568.P5326293246748609148

/-!
# A374569: Expansion of g.f. A(x) satisfying A(x) = x + A(x/(1-x)) * A(x/(1+x)).

The programs for A374569, there is no canonical definition to state claims against.
-/

/-! ## A374569.P15559872207643579933

`A110656(A014322(n+1)+n)`
-/

namespace A374569.P15559872207643579933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110656 (A014322 (n + 1) + (n : ℤ)).toNat

end

end A374569.P15559872207643579933

/-! ## A374569.P18039579197865934455

`A034973(A135312(n)+A001764(n))`
-/

namespace A374569.P18039579197865934455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034973 (A135312 n + A001764 n).toNat

end

end A374569.P18039579197865934455

/-!
# A374570: Expansion of g.f. A(x) satisfying A(x)^2 = A( A(x)*C(x) ), where C(x) = x + C(x)^2 is the Catalan function (A000108).

The programs for A374570, there is no canonical definition to state claims against.
-/

/-! ## A374570.P3583230899388822110

`A130916(A148806(n))`
-/

namespace A374570.P3583230899388822110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130916 (A148806 n).toNat

end

end A374570.P3583230899388822110

/-! ## A374570.P18227644014243997078

`A130916(A148807(n))`
-/

namespace A374570.P18227644014243997078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130916 (A148807 n).toNat

end

end A374570.P18227644014243997078

/-! ## A374570.P6783020829384710746

`A130916(A148808(n))`
-/

namespace A374570.P6783020829384710746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130916 (A148808 n).toNat

end

end A374570.P6783020829384710746

/-!
# A374572: Expansion of g.f. A(x) satisfying A(x)^2 = A( x*(1+x)*A(x) ).

The programs for A374572, there is no canonical definition to state claims against.
-/

/-! ## A374572.P14722412064054825031

`or(A157271(A084261(n)), A194285(2*(n+1)))`
-/

namespace A374572.P14722412064054825031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A157271 (A084261 n).toNat) (A194285 (2 * (n + 1)))

end

end A374572.P14722412064054825031

/-!
# A374573: Number of sets of nonempty subsets of [n] where each element appears in at most n subsets.

The programs for A374573, there is no canonical definition to state claims against.
-/

/-! ## A374573.P3401023892513495129

`A330964(∑[4*n])`
-/

namespace A374573.P3401023892513495129
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330964 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A374573.P3401023892513495129

/-! ## A374573.P6404098253135832533

`A330964(A046092(n))+A025438(n)`
-/

namespace A374573.P6404098253135832533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330964 (A046092 n).toNat + A025438 n

end

end A374573.P6404098253135832533

/-! ## A374573.P1082511952376221877

`A184303(n+1)*A330964(A046092(n))`
-/

namespace A374573.P1082511952376221877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184303 (n + 1) * A330964 (A046092 n).toNat

end

end A374573.P1082511952376221877

/-! ## A374573.P215559333550690953

`A054977(n+3)*A330964(A046092(n))`
-/

namespace A374573.P215559333550690953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 (n + 3) * A330964 (A046092 n).toNat

end

end A374573.P215559333550690953

/-! ## A374573.P10832001065867796125

`A330964(A046092(n))*A374385(n+4)`
-/

namespace A374573.P10832001065867796125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330964 (A046092 n).toNat * A374385 (n + 4)

end

end A374573.P10832001065867796125

/-!
# A374574: a(n) = Sum_{j=n..2n} j!.

The programs for A374574, the canonical program `A374574.P12274684965110644845` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A374574 has offset 0).

The definition of A374574 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A374574.P12274684965110644845

`a(n-1)-(n-1)!+(2*n-1)!+(2*n)!` with `a(0)=1`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A374574

/-- `a(n-1)-(n-1)!+(2*n-1)!+(2*n)!` -/
def P12274684965110644845.Spec : Prop :=
  ∀ n, P12274684965110644845.a n = A374574 n

theorem P12274684965110644845.correct : P12274684965110644845.Spec := by
  intro n
  simp only [A374574]

end A374574

/-! ## A374574.P15480614688762143647

`A143122(∑[4*n])`
-/

namespace A374574.P15480614688762143647
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143122 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A374574.P15480614688762143647

namespace A374574

/-- `A143122(∑[4*n])` -/
def P15480614688762143647.Spec : Prop :=
  ∀ n, P15480614688762143647.a n = A374574 n

end A374574

/-! ## A374574.P16357856761996234213

`A054115((n+1)²+n²)`
-/

namespace A374574.P16357856761996234213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054115 ((n + 1) ^ 2 + n ^ 2)

end

end A374574.P16357856761996234213

namespace A374574

/-- `A054115((n+1)²+n²)` -/
def P16357856761996234213.Spec : Prop :=
  ∀ n, P16357856761996234213.a n = A374574 n

end A374574

/-! ## A374574.P1218821695771250445

`A211370(A058331(n))`
-/

namespace A374574.P1218821695771250445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211370 (A058331 n).toNat

end

end A374574.P1218821695771250445

namespace A374574

/-- `A211370(A058331(n))` -/
def P1218821695771250445.Spec : Prop :=
  ∀ n, P1218821695771250445.a n = A374574 n

end A374574

/-! ## A374574.P7328806801716945497

`A003422(2*n+1)-A003422(n)`
-/

namespace A374574.P7328806801716945497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003422 (2 * n + 1) - A003422 n

end

end A374574.P7328806801716945497

namespace A374574

/-- `A003422(2*n+1)-A003422(n)` -/
def P7328806801716945497.Spec : Prop :=
  ∀ n, P7328806801716945497.a n = A374574 n

end A374574

/-!
# A374577: Pierpont primes are primes of the form 2^t*3^u + 1; this sequence gives the t's in order.

The programs for A374577, there is no canonical definition to state claims against.
-/

/-! ## A374577.P14143139379852274836

`A007814(A005109(n+1)-1)`
-/

namespace A374577.P14143139379852274836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A005109 (n + 1) - 1).toNat

end

end A374577.P14143139379852274836

/-! ## A374577.P15354214332952643534

`A022328(A375906(n+1))`
-/

namespace A374577.P15354214332952643534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022328 (A375906 (n + 1)).toNat

end

end A374577.P15354214332952643534

/-! ## A374577.P11321699904525253498

`A023506(A174099(n+1))`
-/

namespace A374577.P11321699904525253498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023506 (A174099 (n + 1)).toNat

end

end A374577.P11321699904525253498

/-! ## A374577.P12470528967137332333

`A309414(A005109(n+1))`
-/

namespace A374577.P12470528967137332333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309414 (A005109 (n + 1)).toNat

end

end A374577.P12470528967137332333

/-!
# A374578: Pierpont primes are primes of the form 2^t*3^u + 1; this sequence gives the u's in order.

The programs for A374578, there is no canonical definition to state claims against.
-/

/-! ## A374578.P3106968928294108075

`A007949(A005109(n+1)-1)`
-/

namespace A374578.P3106968928294108075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007949 (A005109 (n + 1) - 1).toNat

end

end A374578.P3106968928294108075

/-! ## A374578.P2154066775532408058

`A022329(A375906(n+1))`
-/

namespace A374578.P2154066775532408058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022329 (A375906 (n + 1)).toNat

end

end A374578.P2154066775532408058

/-! ## A374578.P13504315560632473079

`A099584(A174099(n+1))`
-/

namespace A374578.P13504315560632473079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099584 (A174099 (n + 1)).toNat

end

end A374578.P13504315560632473079

/-! ## A374578.P15724015137108075602

`A336396(A005109(n+1))`
-/

namespace A374578.P15724015137108075602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336396 (A005109 (n + 1)).toNat

end

end A374578.P15724015137108075602

/-! ## A374578.P4368350716770366989

`A087436(A005109(n+1)-1)`
-/

namespace A374578.P4368350716770366989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087436 (A005109 (n + 1) - 1).toNat

end

end A374578.P4368350716770366989

/-!
# A374580: a(n) is the numerator of (120*n^2 + 151*n + 47)/(512*n^4 + 1024*n^3 + 712*n^2 + 194*n + 15).

The programs for A374580, there is no canonical definition to state claims against.
-/

/-! ## A374580.P2550906510187001385

`A006519(n+1)*A257670(A048581(n))`
-/

namespace A374580.P2550906510187001385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (n + 1) * A257670 (A048581 n).toNat

end

end A374580.P2550906510187001385

/-!
# A374582: a(n) = number of Egyptian fractions 1 = 1/x_1 + ... + 1/x_n such that 1 <= x_1 <= ... <= x_n and x_k | x_n for all k = 1..n.

The programs for A374582, there is no canonical definition to state claims against.
-/

/-! ## A374582.P5459169279480391

`A275884(A327078(n))+A037871(n+1)`
-/

namespace A374582.P5459169279480391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275884 (A327078 n).toNat + A037871 (n + 1)

end

end A374582.P5459169279480391

/-!
# A374583: a(n) = number of Egyptian fractions 1 = 1/x_1 + ... + 1/x_n such that 0 < x_1 < ... < x_n and x_k | x_n for all k = 1..n.

The programs for A374583, there is no canonical definition to state claims against.
-/

/-! ## A374583.P12681864900837321915

`A366738(A038110(n+1))+A366730(n)`
-/

namespace A374583.P12681864900837321915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366738 (A038110 (n + 1)).toNat + A366730 n

end

end A374583.P12681864900837321915

/-! ## A374583.P15297821879349570706

`A358851(A007916(n+1)*A088369(n))`
-/

namespace A374583.P15297821879349570706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358851 (A007916 (n + 1) * A088369 n).toNat

end

end A374583.P15297821879349570706

/-!
# A374584: Numbers k such that 7*k + 2 is a square.

The programs for A374584, the canonical program `A374584.P13810403661453672642` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A374584 has offset 1).

The definition of A374584 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A374584.P13810403661453672642

`a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` with `a(0)=1, a(1)=2, a(2)=14, a(3)=17, a(4)=41`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A374584

/-- `a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` -/
def P13810403661453672642.Spec : Prop :=
  ∀ n, P13810403661453672642.a n = A374584 (n + 1)

theorem P13810403661453672642.correct : P13810403661453672642.Spec := by
  intro n
  simp only [A374584, Nat.add_sub_cancel]

end A374584

/-! ## A374584.P6232300239164707978

`(A047341(n+1)²-2)/7`
-/

namespace A374584.P6232300239164707978
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A047341 (n + 1) ^ 2 - 2 : ℚ) / 7

end

end A374584.P6232300239164707978

namespace A374584

/-- `(A047341(n+1)²-2)/7` -/
def P6232300239164707978.Spec : Prop :=
  ∀ n, P6232300239164707978.a n = (A374584 (n + 1) : ℚ)

end A374584

/-! ## A374584.P16983904349609733100

`∑[n*gcd(6, n%2)]+1`
-/

namespace A374584.P16983904349609733100
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.gcd 6 (n % 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A374584.P16983904349609733100

namespace A374584

/-- `∑[n*gcd(6, n%2)]+1` -/
def P16983904349609733100.Spec : Prop :=
  ∀ n, (P16983904349609733100.a n : ℤ) = A374584 (n + 1)

end A374584

/-! ## A374584.P2309991269850308865

`floor(∑[7-a(n-1)]²/7)` with `a(0)=3, a(1)=1`
-/

namespace A374584.P2309991269850308865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3, 1] fun n f1 =>
  7 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℤ) : ℚ) / 7⌋

end

end A374584.P2309991269850308865

namespace A374584

/-- `floor(∑[7-a(n-1)]²/7)` -/
def P2309991269850308865.Spec : Prop :=
  ∀ n, P2309991269850308865.a n = A374584 (n + 1)

end A374584

/-! ## A374584.P1395821277623215952

`∑[A317312(n)]+1`
-/

namespace A374584.P1395821277623215952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317312 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A374584.P1395821277623215952

namespace A374584

/-- `∑[A317312(n)]+1` -/
def P1395821277623215952.Spec : Prop :=
  ∀ n, P1395821277623215952.a n = A374584 (n + 1)

end A374584

/-! ## A374584.P10122450009621324368

`A274978(n+1)+1`
-/

namespace A374584.P10122450009621324368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274978 (n + 1) + 1

end

end A374584.P10122450009621324368

namespace A374584

/-- `A274978(n+1)+1` -/
def P10122450009621324368.Spec : Prop :=
  ∀ n, P10122450009621324368.a n = A374584 (n + 1)

end A374584

/-! ## A374584.P11615702833562893950

`A181433(n+1)-(n²+n)`
-/

namespace A374584.P11615702833562893950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181433 (n + 1) - (n ^ 2 + n : ℤ)

end

end A374584.P11615702833562893950

namespace A374584

/-- `A181433(n+1)-(n²+n)` -/
def P11615702833562893950.Spec : Prop :=
  ∀ n, P11615702833562893950.a n = A374584 (n + 1)

end A374584

/-! ## A374584.P14907976686169296020

`A157142(n)+A132354(n)`
-/

namespace A374584.P14907976686169296020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157142 n + A132354 n

end

end A374584.P14907976686169296020

namespace A374584

/-- `A157142(n)+A132354(n)` -/
def P14907976686169296020.Spec : Prop :=
  ∀ n, P14907976686169296020.a n = A374584 (n + 1)

end A374584

/-! ## A374584.P11398549817151043502

`A186424(n)-A317300(n)`
-/

namespace A374584.P11398549817151043502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186424 n - A317300 n

end

end A374584.P11398549817151043502

namespace A374584

/-- `A186424(n)-A317300(n)` -/
def P11398549817151043502.Spec : Prop :=
  ∀ n, P11398549817151043502.a n = A374584 (n + 1)

end A374584

/-! ## A374584.P382893163760987250

`A110660(n)+A036499(n+1)`
-/

namespace A374584.P382893163760987250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110660 n + A036499 (n + 1)

end

end A374584.P382893163760987250

namespace A374584

/-- `A110660(n)+A036499(n+1)` -/
def P382893163760987250.Spec : Prop :=
  ∀ n, P382893163760987250.a n = A374584 (n + 1)

end A374584

/-! ## A374584.P16169622713280248005

`A110660(n)+A195818(n)+1`
-/

namespace A374584.P16169622713280248005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110660 n + (A195818 n + 1)

end

end A374584.P16169622713280248005

namespace A374584

/-- `A110660(n)+A195818(n)+1` -/
def P16169622713280248005.Spec : Prop :=
  ∀ n, P16169622713280248005.a n = A374584 (n + 1)

end A374584

/-! ## A374584.P4763156110728377835

`A016754(n)-A132355(n+1)`
-/

namespace A374584.P4763156110728377835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016754 n - A132355 (n + 1)

end

end A374584.P4763156110728377835

namespace A374584

/-- `A016754(n)-A132355(n+1)` -/
def P4763156110728377835.Spec : Prop :=
  ∀ n, P4763156110728377835.a n = A374584 (n + 1)

end A374584

/-! ## A374584.P11556840866128128646

`A273367(n)-A001082(n+1)`
-/

namespace A374584.P11556840866128128646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273367 n - A001082 (n + 1)

end

end A374584.P11556840866128128646

namespace A374584

/-- `A273367(n)-A001082(n+1)` -/
def P11556840866128128646.Spec : Prop :=
  ∀ n, P11556840866128128646.a n = A374584 (n + 1)

end A374584

/-! ## A374584.P12779534199322613896

`A033996(n)-A266957(n+1)`
-/

namespace A374584.P12779534199322613896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033996 n - A266957 (n + 1)

end

end A374584.P12779534199322613896

namespace A374584

/-- `A033996(n)-A266957(n+1)` -/
def P12779534199322613896.Spec : Prop :=
  ∀ n, P12779534199322613896.a n = A374584 (n + 1)

end A374584

/-! ## A374584.P1204947318503365892

`A375352(n+1)-A132354(n)`
-/

namespace A374584.P1204947318503365892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375352 (n + 1) - A132354 n

end

end A374584.P1204947318503365892

namespace A374584

/-- `A375352(n+1)-A132354(n)` -/
def P1204947318503365892.Spec : Prop :=
  ∀ n, P1204947318503365892.a n = A374584 (n + 1)

end A374584

/-! ## A374584.P8635681650689912991

`A273367(n)+1-A257083(n)`
-/

namespace A374584.P8635681650689912991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273367 n + (1 - A257083 n)

end

end A374584.P8635681650689912991

namespace A374584

/-- `A273367(n)+1-A257083(n)` -/
def P8635681650689912991.Spec : Prop :=
  ∀ n, P8635681650689912991.a n = A374584 (n + 1)

end A374584

/-! ## A374584.P691766863069887720

`A001082(n+1)+A109613(n)²`
-/

namespace A374584.P691766863069887720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001082 (n + 1) + A109613 n ^ 2

end

end A374584.P691766863069887720

namespace A374584

/-- `A001082(n+1)+A109613(n)²` -/
def P691766863069887720.Spec : Prop :=
  ∀ n, P691766863069887720.a n = A374584 (n + 1)

end A374584

/-! ## A374584.P18268778572675596568

`A033996(n)+1-A132355(n+1)`
-/

namespace A374584.P18268778572675596568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033996 n + (1 - A132355 (n + 1))

end

end A374584.P18268778572675596568

namespace A374584

/-- `A033996(n)+1-A132355(n+1)` -/
def P18268778572675596568.Spec : Prop :=
  ∀ n, P18268778572675596568.a n = A374584 (n + 1)

end A374584

/-! ## A374584.P7227969566081317690

`A024966(n)+1-A219191(n+1)`
-/

namespace A374584.P7227969566081317690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024966 n + (1 - A219191 (n + 1))

end

end A374584.P7227969566081317690

namespace A374584

/-- `A024966(n)+1-A219191(n+1)` -/
def P7227969566081317690.Spec : Prop :=
  ∀ n, P7227969566081317690.a n = A374584 (n + 1)

end A374584

/-! ## A374584.P57847823508258509

`A274979(n+1)+1-A110660(n)`
-/

namespace A374584.P57847823508258509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274979 (n + 1) + (1 - A110660 n)

end

end A374584.P57847823508258509

namespace A374584

/-- `A274979(n+1)+1-A110660(n)` -/
def P57847823508258509.Spec : Prop :=
  ∀ n, P57847823508258509.a n = A374584 (n + 1)

end A374584

/-!
# A374585: A family of marked Motzkin-like paths.

The programs for A374585, there is no canonical definition to state claims against.
-/

/-! ## A374585.P14972553414820808147

`A157271(A097121(n))`
-/

namespace A374585.P14972553414820808147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157271 (A097121 n).toNat

end

end A374585.P14972553414820808147

/-! ## A374585.P3526253208634368867

`A105356(A364591(n))`
-/

namespace A374585.P3526253208634368867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105356 (A364591 n).toNat

end

end A374585.P3526253208634368867

/-! ## A374585.P11119837699337692835

`A105356(A369525(n))`
-/

namespace A374585.P11119837699337692835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105356 (A369525 n).toNat

end

end A374585.P11119837699337692835

/-! ## A374585.P4883703709242051708

`A294748(A364552(n))`
-/

namespace A374585.P4883703709242051708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294748 (A364552 n).toNat

end

end A374585.P4883703709242051708

/-! ## A374585.P6405959668128404225

`or(A097119(n), A132726(A360671(n)))`
-/

namespace A374585.P6405959668128404225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A097119 n) (A132726 (A360671 n).toNat)

end

end A374585.P6405959668128404225

/-!
# A374586: The maximum exponent in the prime factorization of the numbers that are divisible by the maximum exponent in their prime factorization.

The programs for A374586, the canonical program `A374586.P1168262897995380025` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A374586 has offset 1).

The definition of A374586 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, A336064, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A374586.P1168262897995380025

`A051903(A336064(n+1))`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A374586

/-- `A051903(A336064(n+1))` -/
def P1168262897995380025.Spec : Prop :=
  ∀ n, P1168262897995380025.a n = A374586 (n + 1)

theorem P1168262897995380025.correct : P1168262897995380025.Spec := by
  intro n
  simp only [A374586, Nat.add_sub_cancel]

end A374586

/-! ## A374586.P18285507856883953128

`A381952(A336064(2*n+1-n))`
-/

namespace A374586.P18285507856883953128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381952 (A336064 (2 * n + 1 - n)).toNat

end

end A374586.P18285507856883953128

namespace A374586

/-- `A381952(A336064(2*n+1-n))` -/
def P18285507856883953128.Spec : Prop :=
  ∀ n, P18285507856883953128.a n = A374586 (n + 1)

end A374586

/-! ## A374586.P2391673538099446951

`A255231(A336063(n+1)%A070185(2*n+1))`
-/

namespace A374586.P2391673538099446951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255231 (Int.tmod (A336063 (n + 1)) (A070185 (2 * n + 1))).toNat

end

end A374586.P2391673538099446951

namespace A374586

/-- `A255231(A336063(n+1)%A070185(2*n+1))` -/
def P2391673538099446951.Spec : Prop :=
  ∀ n, P2391673538099446951.a n = A374586 (n + 1)

end A374586

/-! ## A374586.P14332555281039960891

`gcd(A149304(n), A358371(A000040(n+3)))`
-/

namespace A374586.P14332555281039960891
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A149304 n) (A358371 (A000040 (n + 3)).toNat)

end

end A374586.P14332555281039960891

namespace A374586

/-- `gcd(A149304(n), A358371(A000040(n+3)))` -/
def P14332555281039960891.Spec : Prop :=
  ∀ n, (P14332555281039960891.a n : ℤ) = A374586 (n + 1)

end A374586

/-! ## A374586.P316020935194770254

`gcd(n, A328673(A061511(n)))`
-/

namespace A374586.P316020935194770254
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A328673 (A061511 n).toNat)

end

end A374586.P316020935194770254

namespace A374586

/-- `gcd(n, A328673(A061511(n)))` -/
def P316020935194770254.Spec : Prop :=
  ∀ n, (P316020935194770254.a n : ℤ) = A374586 (n + 1)

end A374586

/-!
# A374587: The maximum exponent in the prime factorization of the numbers that are not coprime to the maximum exponent in their prime factorization.

The programs for A374587, the canonical program `A374587.P4037298411033951044` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A374587 has offset 1).

The definition of A374587 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, A368715, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A374587.P4037298411033951044

`A051903(A368715(n+1))`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A374587

/-- `A051903(A368715(n+1))` -/
def P4037298411033951044.Spec : Prop :=
  ∀ n, P4037298411033951044.a n = A374587 (n + 1)

theorem P4037298411033951044.correct : P4037298411033951044.Spec := by
  intro n
  simp only [A374587, Nat.add_sub_cancel]

end A374587

/-! ## A374587.P839849334007713336

`A051903(A040047(n+1)*A137257(n+1))`
-/

namespace A374587.P839849334007713336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A040047 (n + 1) * A137257 (n + 1)).toNat

end

end A374587.P839849334007713336

namespace A374587

/-- `A051903(A040047(n+1)*A137257(n+1))` -/
def P839849334007713336.Spec : Prop :=
  ∀ n, P839849334007713336.a n = A374587 (n + 1)

end A374587

/-! ## A374587.P1754493260803218989

`A051903(A137257(n+1)%A335477(2*(n+1)))`
-/

namespace A374587.P1754493260803218989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (Int.tmod (A137257 (n + 1)) (A335477 (2 * (n + 1)))).toNat

end

end A374587.P1754493260803218989

namespace A374587

/-- `A051903(A137257(n+1)%A335477(2*(n+1)))` -/
def P1754493260803218989.Spec : Prop :=
  ∀ n, P1754493260803218989.a n = A374587 (n + 1)

end A374587

/-! ## A374587.P6413814205187894498

`A051903(A050806(n+1)*A137257(n+1))`
-/

namespace A374587.P6413814205187894498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A050806 (n + 1) * A137257 (n + 1)).toNat

end

end A374587.P6413814205187894498

namespace A374587

/-- `A051903(A050806(n+1)*A137257(n+1))` -/
def P6413814205187894498.Spec : Prop :=
  ∀ n, P6413814205187894498.a n = A374587 (n + 1)

end A374587

/-! ## A374587.P4060163055635933128

`A051903(A049078(n+1)*A137257(n+1))`
-/

namespace A374587.P4060163055635933128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A049078 (n + 1) * A137257 (n + 1)).toNat

end

end A374587.P4060163055635933128

namespace A374587

/-- `A051903(A049078(n+1)*A137257(n+1))` -/
def P4060163055635933128.Spec : Prop :=
  ∀ n, P4060163055635933128.a n = A374587 (n + 1)

end A374587

/-!
# A374590: Numbers whose maximum exponent in their prime factorization is an evil number (A001969).

The programs for A374590, there is no canonical definition to state claims against.
-/

/-! ## A374590.P11446989842846670280

`A375432(A123068(n+2))`
-/

namespace A374590.P11446989842846670280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375432 (A123068 (n + 2)).toNat

end

end A374590.P11446989842846670280

/-! ## A374590.P17332760584305648570

`A375432(n+1)%A034820(n)`
-/

namespace A374590.P17332760584305648570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A375432 (n + 1)) (A034820 n)

end

end A374590.P17332760584305648570

/-!
# A374593: Numbers k such that k - rad(k) + 1 is prime, where rad(k) is the radical A007947(k).

The programs for A374593, there is no canonical definition to state claims against.
-/

/-! ## A374593.P9271521132456577023

`lt[A129283(A326536(n+1)), A129283(n)]`
-/

namespace A374593.P9271521132456577023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129283 (A326536 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129283 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A374593.P9271521132456577023

/-! ## A374593.P79438659934956298

`A013929(A205591(n+1)%A321852(3*n+1))`
-/

namespace A374593.P79438659934956298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013929 (Int.tmod (A205591 (n + 1)) (A321852 (3 * n + 1))).toNat

end

end A374593.P79438659934956298

/-! ## A374593.P9754939370802933675

`eq[A158819(n+1), A275001(n)]`
-/

namespace A374593.P9754939370802933675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158819 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275001 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A374593.P9754939370802933675

/-!
# A374595: Products of an odd number of distinct primes and the square of a number in A268390.

The programs for A374595, there is no canonical definition to state claims against.
-/

/-! ## A374595.P8181561928051546586

`eq[1, A268386(n+1)]+1`
-/

namespace A374595.P8181561928051546586
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268386 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A374595.P8181561928051546586

/-! ## A374595.P11539796240872571495

`eq[1, A268387(n+1)]+1`
-/

namespace A374595.P11539796240872571495
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268387 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A374595.P11539796240872571495

/-! ## A374595.P8750274543366177984

`lt[0, A374130(n+1)]+1`
-/

namespace A374595.P8750274543366177984
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374130 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A374595.P8750274543366177984

/-! ## A374595.P10062778346825615415

`eq[1, A268386(A028310(n))]`
-/

namespace A374595.P10062778346825615415
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268386 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A374595.P10062778346825615415

/-! ## A374595.P7598174135912715946

`filter[A333634(n+1), A066829(#)]`
-/

namespace A374595.P7598174135912715946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333634 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066829 (f1 j).toNat = 1) n)

end

end A374595.P7598174135912715946

/-! ## A374595.P1754523687469371439

`filter[A374467(n+1), A307430(#)]`
-/

namespace A374595.P1754523687469371439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374467 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A307430 (f1 j).toNat = 1) n)

end

end A374595.P1754523687469371439

/-! ## A374595.P11262548352291735506

`filter[A333634(n+1), A374466(#)]`
-/

namespace A374595.P11262548352291735506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333634 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374466 (f1 j).toNat = 1) n)

end

end A374595.P11262548352291735506

/-! ## A374595.P10358856300449165653

`filter[A336222(n+1), A374466(#)]`
-/

namespace A374595.P10358856300449165653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374466 (f1 j).toNat = 1) n)

end

end A374595.P10358856300449165653

/-! ## A374595.P1917051516837349527

`eq[1, A268387(A000007(n)+n)]`
-/

namespace A374595.P1917051516837349527
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268387 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A374595.P1917051516837349527

/-!
# A374598: Expansion of 1/sqrt(1 - 4*x - 8*x^3).

The programs for A374598, there is no canonical definition to state claims against.
-/

/-! ## A374598.P11983429148062820601

`A187181(A150152(n+1))`
-/

namespace A374598.P11983429148062820601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187181 (A150152 (n + 1)).toNat

end

end A374598.P11983429148062820601

/-! ## A374598.P15892687292872330181

`A360185(n)+A161336(A000295(n))`
-/

namespace A374598.P15892687292872330181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360185 n + A161336 (A000295 n).toNat

end

end A374598.P15892687292872330181

/-!
# A374599: Expansion of 1/sqrt(1 - 4*x - 8*x^4).

The programs for A374599, there is no canonical definition to state claims against.
-/

/-! ## A374599.P18158443175619630352

`A154125(A361753(n))`
-/

namespace A374599.P18158443175619630352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154125 (A361753 n).toNat

end

end A374599.P18158443175619630352

/-! ## A374599.P16916849851064990913

`A154125(A376811(n))`
-/

namespace A374599.P16916849851064990913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154125 (A376811 n).toNat

end

end A374599.P16916849851064990913

/-! ## A374599.P2727991626136341976

`A361753(A004879(n+1))`
-/

namespace A374599.P2727991626136341976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361753 (A004879 (n + 1)).toNat

end

end A374599.P2727991626136341976

