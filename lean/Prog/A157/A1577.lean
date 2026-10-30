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
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C039
import Seq.B000.C041
import Seq.B000.C042
import Seq.B000.C043
import Seq.B000.C044
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C010
import Seq.B001.C014
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
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
import Seq.Opaque.C011
import Seq.Opaque.C012
import Seq.Opaque.C013
import Seq.Opaque.C014
import Seq.Opaque.C015
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C023
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A157704: G.f.s of the z^p coefficients of the polynomials in the GF3 denominators of A156927.

The programs for A157704, there is no canonical definition to state claims against.
-/

/-! ## A157704.P15253927892881992976

`A375023(2^(n+1)+2)`
-/

namespace A157704.P15253927892881992976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375023 (2 ^ (n + 1) + 2)

end

end A157704.P15253927892881992976

/-!
# A157705: G.f.s of the z^p coefficients of the polynomials in the GF4 denominators of A156933.

The programs for A157705, there is no canonical definition to state claims against.
-/

/-! ## A157705.P11949705314022720940

`A335248(a(n-1))` with `a(0)=1, a(1)=1, a(2)=3, a(3)=2`
-/

namespace A157705.P11949705314022720940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 3, 2] fun n a =>
  A335248 (a (n - 1)).toNat

end

end A157705.P11949705314022720940

/-! ## A157705.P1899720654009318121

`and(147, A326298(floor(22^(n/5))))`
-/

namespace A157705.P1899720654009318121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 147 (A326298 ⌊(22 : ℝ) ^ ((n : ℚ) / 5 : ℝ)⌋.toNat)

end

end A157705.P1899720654009318121

/-!
# A157706: The z^2 coefficients of the polynomials in the GF1 denominators of A156921.

The programs for A157706, the canonical program `A157706.P9262348439420365523` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A157706 has offset 2).

The definition of A157706 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A157706.P9262348439420365523

`A108673(n)+A053127(n+5)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A157706

/-- `A108673(n)+A053127(n+5)` -/
def P9262348439420365523.Spec : Prop :=
  ∀ n, P9262348439420365523.a n = A157706 (n + 2)

theorem P9262348439420365523.correct : P9262348439420365523.Spec := by
  intro n
  simp only [A157706, Nat.add_sub_cancel]

end A157706

/-! ## A157706.P2500061952577920759

`A060103(n)+∑[A053127(n+5)]`
-/

namespace A157706.P2500061952577920759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053127 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060103 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A157706.P2500061952577920759

namespace A157706

/-- `A060103(n)+∑[A053127(n+5)]` -/
def P2500061952577920759.Spec : Prop :=
  ∀ n, P2500061952577920759.a n = A157706 (n + 2)

end A157706

/-! ## A157706.P11651156547071062716

`∑[A071902(n+2)+n+2]`
-/

namespace A157706.P11651156547071062716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071902 (n + 2) + (n + 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A157706.P11651156547071062716

namespace A157706

/-- `∑[A071902(n+2)+n+2]` -/
def P11651156547071062716.Spec : Prop :=
  ∀ n, P11651156547071062716.a n = A157706 (n + 2)

end A157706

/-! ## A157706.P10171117571024897054

`∑[A109764(n+2)/(n+2)]`
-/

namespace A157706.P10171117571024897054
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109764 (n + 2) : ℚ) / (n + 2 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A157706.P10171117571024897054

namespace A157706

/-- `∑[A109764(n+2)/(n+2)]` -/
def P10171117571024897054.Spec : Prop :=
  ∀ n, P10171117571024897054.a n = (A157706 (n + 2) : ℚ)

end A157706

/-! ## A157706.P12848895306408323019

`A060103(n)+A001769(2*n+1)`
-/

namespace A157706.P12848895306408323019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060103 n + A001769 (2 * n + 1)

end

end A157706.P12848895306408323019

namespace A157706

/-- `A060103(n)+A001769(2*n+1)` -/
def P12848895306408323019.Spec : Prop :=
  ∀ n, P12848895306408323019.a n = A157706 (n + 2)

end A157706

/-! ## A157706.P244011960454010406

`A060099(2*n)+A001769(2*n+1)`
-/

namespace A157706.P244011960454010406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060099 (2 * n) + A001769 (2 * n + 1)

end

end A157706.P244011960454010406

namespace A157706

/-- `A060099(2*n)+A001769(2*n+1)` -/
def P244011960454010406.Spec : Prop :=
  ∀ n, P244011960454010406.a n = A157706 (n + 2)

end A157706

/-! ## A157706.P6348251034815959464

`A001769(2*n+1)+∑[∑[A001752(2*n)]]`
-/

namespace A157706.P6348251034815959464
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001752 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001769 (2 * n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A157706.P6348251034815959464

namespace A157706

/-- `A001769(2*n+1)+∑[∑[A001752(2*n)]]` -/
def P6348251034815959464.Spec : Prop :=
  ∀ n, P6348251034815959464.a n = A157706 (n + 2)

end A157706

/-! ## A157706.P4896878397004528239

`A299335(2*n+1)+A299335(2*n)+A060099(2*n)`
-/

namespace A157706.P4896878397004528239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299335 (2 * n + 1) + (A299335 (2 * n) + A060099 (2 * n))

end

end A157706.P4896878397004528239

namespace A157706

/-- `A299335(2*n+1)+A299335(2*n)+A060099(2*n)` -/
def P4896878397004528239.Spec : Prop :=
  ∀ n, P4896878397004528239.a n = A157706 (n + 2)

end A157706

/-! ## A157706.P3333224915119110810

`∑[∑[∑[A004068(2*(n+1))]]]`
-/

namespace A157706.P3333224915119110810
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004068 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A157706.P3333224915119110810

namespace A157706

/-- `∑[∑[∑[A004068(2*(n+1))]]]` -/
def P3333224915119110810.Spec : Prop :=
  ∀ n, P3333224915119110810.a n = A157706 (n + 2)

end A157706

/-!
# A157707: The z^2 coefficients of the polynomials in the GF3 denominators of A156927 divided by 2.

The programs for A157707, the canonical program `A157707.P14655950218148529604` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A157707 has offset 1).

The definition of A157707 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A157707.P14655950218148529604

`∑[(n+2)^3*∑[A008585(n)+2]]`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A157707

/-- `∑[(n+2)^3*∑[A008585(n)+2]]` -/
def P14655950218148529604.Spec : Prop :=
  ∀ n, P14655950218148529604.a n = A157707 (n + 1)

theorem P14655950218148529604.correct : P14655950218148529604.Spec := by
  intro n
  simp only [A157707, Nat.add_sub_cancel]

end A157707

/-! ## A157707.P212382190302914488

`∑[∑[n+1]*A100176(n+2)]`
-/

namespace A157707.P212382190302914488
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) * A100176 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A157707.P212382190302914488

namespace A157707

/-- `∑[∑[n+1]*A100176(n+2)]` -/
def P212382190302914488.Spec : Prop :=
  ∀ n, P212382190302914488.a n = A157707 (n + 1)

end A157707

/-! ## A157707.P9471600807441024652

`∑[A000578(n+2)*A005449(n+1)]`
-/

namespace A157707.P9471600807441024652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (n + 2) * A005449 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A157707.P9471600807441024652

namespace A157707

/-- `∑[A000578(n+2)*A005449(n+1)]` -/
def P9471600807441024652.Spec : Prop :=
  ∀ n, P9471600807441024652.a n = A157707 (n + 1)

end A157707

/-! ## A157707.P16066478065549728335

`∑[A034828(2*(n+2))*A211539(2*(n+1))]`
-/

namespace A157707.P16066478065549728335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034828 (2 * (n + 2)) * A211539 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A157707.P16066478065549728335

namespace A157707

/-- `∑[A034828(2*(n+2))*A211539(2*(n+1))]` -/
def P16066478065549728335.Spec : Prop :=
  ∀ n, P16066478065549728335.a n = A157707 (n + 1)

end A157707

/-! ## A157707.P9632461056169804677

`∑[(n+2)^3*∑[A004526(A016969(n))]]`
-/

namespace A157707.P9632461056169804677
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A016969 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 2) ^ 3 : ℤ) * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A157707.P9632461056169804677

namespace A157707

/-- `∑[(n+2)^3*∑[A004526(A016969(n))]]` -/
def P9632461056169804677.Spec : Prop :=
  ∀ n, P9632461056169804677.a n = A157707 (n + 1)

end A157707

/-!
# A157709: Smallest prime made up of 0's and k 1's, where k = A001651(n).

The programs for A157709, there is no canonical definition to state claims against.
-/

/-! ## A157709.P14656461682150434630

`A037055(eq[2, A137735(n)])`
-/

namespace A157709.P14656461682150434630
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137735 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037055 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A157709.P14656461682150434630

/-!
# A157711: Primes made up of 0's and four 1's only.

The programs for A157711, there is no canonical definition to state claims against.
-/

/-! ## A157711.P5753938854834122169

`∩[A038446(n+1), A062339(n+1)]`
-/

namespace A157711.P5753938854834122169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038446 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062339 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A157711.P5753938854834122169

/-! ## A157711.P16925765166128308094

`∩[A062339(n+1), A136809(n+1)]`
-/

namespace A157711.P16925765166128308094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062339 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136809 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A157711.P16925765166128308094

/-! ## A157711.P4762019729174356878

`∩[A020449(n+1), A038446(n+1)]`
-/

namespace A157711.P4762019729174356878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020449 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038446 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A157711.P4762019729174356878

/-! ## A157711.P6749021214860644721

`∩[A020449(n+1), A052218(n+1)]`
-/

namespace A157711.P6749021214860644721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020449 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052218 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A157711.P6749021214860644721

/-! ## A157711.P8093145433077986575

`∩[A020449(n+1), A062339(n+1)]`
-/

namespace A157711.P8093145433077986575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020449 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062339 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A157711.P8093145433077986575

/-! ## A157711.P15638910787450114651

`∩[A038446(n+1), A069598(n+1)]`
-/

namespace A157711.P15638910787450114651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038446 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069598 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A157711.P15638910787450114651

/-! ## A157711.P6670306576091913375

`∩[A062339(n+1), A069598(n+1)]`
-/

namespace A157711.P6670306576091913375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062339 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069598 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A157711.P6670306576091913375

/-! ## A157711.P1413859831017473356

`∩[A062339(n+1), A209930(n+1)]`
-/

namespace A157711.P1413859831017473356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062339 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209930 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A157711.P1413859831017473356

/-! ## A157711.P4111780815921547151

`∩[A062339(n+1), A385345(n+1)]`
-/

namespace A157711.P4111780815921547151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062339 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385345 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A157711.P4111780815921547151

/-!
# A157712: Smallest prime made up of 0's and prime(n) 1's (or 0 when no such prime exists).

The programs for A157712, there is no canonical definition to state claims against.
-/

/-! ## A157712.P13820177965150997846

`A084673(A002385(n+1))*A255125(n)`
-/

namespace A157712.P13820177965150997846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084673 (A002385 (n + 1)).toNat * A255125 n

end

end A157712.P13820177965150997846

/-!
# A157713: a(n) = (2*n+1)!*(2*n-2)!/((n-1)!*(n!)^2*6).

The programs for A157713, the canonical program `A157713.P14572960564787566711` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A157713 has offset 1).

The definition of A157713 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A157713.P14572960564787566711

`(2*(n+1)+1)!*(2*(n+1)-2)!/(n!*(n+1)!²*6)`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A157713

/-- `(2*(n+1)+1)!*(2*(n+1)-2)!/(n!*(n+1)!²*6)` -/
def P14572960564787566711.Spec : Prop :=
  ∀ n, P14572960564787566711.a n = (A157713 (n + 1) : ℚ)

end A157713

/-! ## A157713.P4584501709832404881

`A113677(n+1)/3`
-/

namespace A157713.P4584501709832404881
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A113677 (n + 1) : ℚ) / 3

end

end A157713.P4584501709832404881

namespace A157713

/-- `A113677(n+1)/3` -/
def P4584501709832404881.Spec : Prop :=
  ∀ n, P4584501709832404881.a n = (A157713 (n + 1) : ℚ)

end A157713

/-! ## A157713.P6253439720101216991

`A000108(n)*∏[a(n-1)+4]` with `a(0)=1, a(1)=10`
-/

namespace A157713.P6253439720101216991
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 10] fun n f1 =>
  f1 (n - 1) + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n * ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A157713.P6253439720101216991

namespace A157713

/-- `A000108(n)*∏[a(n-1)+4]` -/
def P6253439720101216991.Spec : Prop :=
  ∀ n, P6253439720101216991.a n = A157713 (n + 1)

end A157713

/-! ## A157713.P16406120643956531305

`a(n-1)*(4-6/(n+1))*A111284(n+3)` with `a(0)=1`
-/

namespace A157713.P16406120643956531305
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * (4 - 6 / (n + 1 : ℚ)) * (A111284 (n + 3) : ℚ)

end

end A157713.P16406120643956531305

namespace A157713

/-- `a(n-1)*(4-6/(n+1))*A111284(n+3)` -/
def P16406120643956531305.Spec : Prop :=
  ∀ n, P16406120643956531305.a n = (A157713 (n + 1) : ℚ)

end A157713

/-! ## A157713.P16704119235176846821

`(4-6/(n+1))*a(n-1)*A005843(2*n+3)` with `a(0)=1`
-/

namespace A157713.P16704119235176846821
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (4 - 6 / (n + 1 : ℚ)) * a (n - 1) * (A005843 (2 * n + 3) : ℚ)

end

end A157713.P16704119235176846821

namespace A157713

/-- `(4-6/(n+1))*a(n-1)*A005843(2*n+3)` -/
def P16704119235176846821.Spec : Prop :=
  ∀ n, P16704119235176846821.a n = (A157713 (n + 1) : ℚ)

end A157713

/-!
# A157716: One-eighth of triangular numbers (integers only).

The programs for A157716, the canonical program `A157716.P12293689999983489031` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A157716 has offset 1).

The definition of A157716 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A157716.P12309771943463718809

`ogf((15x+2x^2+15x^3)/(1-x-2x^2+2x^3+x^4-x^5))`
-/

namespace A157716.P12309771943463718809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 15, 2, 15] [1, -1, -2, 2, 1, -1] n

end

end A157716.P12309771943463718809

namespace A157716

/-- `ogf((15x+2x^2+15x^3)/(1-x-2x^2+2x^3+x^4-x^5))` -/
def P12309771943463718809.Spec : Prop :=
  ∀ n, P12309771943463718809.a n = A157716 (n + 1)

end A157716

/-! ## A157716.P12293689999983489031

`(2*(n+1)-1+7/8*(-1)^(n+1))²-1/64`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A157716

/-- `(2*(n+1)-1+7/8*(-1)^(n+1))²-1/64` -/
def P12293689999983489031.Spec : Prop :=
  ∀ n, P12293689999983489031.a n = (A157716 (n + 1) : ℚ)

end A157716

/-! ## A157716.P13024000894919655582

`∑[abs(Δ[(2*or(1, n)-2)²]-n)]`
-/

namespace A157716.P13024000894919655582
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * Nat.lor 1 n : ℤ) - 2) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n - (n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A157716.P13024000894919655582

namespace A157716

/-- `∑[abs(Δ[(2*or(1, n)-2)²]-n)]` -/
def P13024000894919655582.Spec : Prop :=
  ∀ n, P13024000894919655582.a n = A157716 (n + 1)

end A157716

/-! ## A157716.P5308083080328847567

`∑[2*n*gcd(8, 1-n²)]-∑[n]`
-/

namespace A157716.P5308083080328847567
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n * Int.gcd 8 (1 - (n ^ 2 : ℤ))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A157716.P5308083080328847567

namespace A157716

/-- `∑[2*n*gcd(8, 1-n²)]-∑[n]` -/
def P5308083080328847567.Spec : Prop :=
  ∀ n, P5308083080328847567.a n = A157716 (n + 1)

end A157716

/-! ## A157716.P15532342774464767431

`∑[2*n*A010689(n)-n]`
-/

namespace A157716.P15532342774464767431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n : ℤ) * A010689 n) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A157716.P15532342774464767431

namespace A157716

/-- `∑[2*n*A010689(n)-n]` -/
def P15532342774464767431.Spec : Prop :=
  ∀ n, P15532342774464767431.a n = A157716 (n + 1)

end A157716

/-! ## A157716.P7784738381979781634

`∑[n*A309336(∑[A165326(n)])]`
-/

namespace A157716.P7784738381979781634
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165326 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A309336 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A157716.P7784738381979781634

namespace A157716

/-- `∑[n*A309336(∑[A165326(n)])]` -/
def P7784738381979781634.Spec : Prop :=
  ∀ n, P7784738381979781634.a n = A157716 (n + 1)

end A157716

/-! ## A157716.P16171242898164528288

`abs(A219395(n+1)-A000217(n))`
-/

namespace A157716.P16171242898164528288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A219395 (n + 1) - A000217 n|

end

end A157716.P16171242898164528288

namespace A157716

/-- `abs(A219395(n+1)-A000217(n))` -/
def P16171242898164528288.Spec : Prop :=
  ∀ n, P16171242898164528288.a n = A157716 (n + 1)

end A157716

/-! ## A157716.P4515302243912463061

`A011869(A151977(n+2))`
-/

namespace A157716.P4515302243912463061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011869 (A151977 (n + 2)).toNat

end

end A157716.P4515302243912463061

namespace A157716

/-- `A011869(A151977(n+2))` -/
def P4515302243912463061.Spec : Prop :=
  ∀ n, P4515302243912463061.a n = A157716 (n + 1)

end A157716

/-!
# A157719: Smallest k such that p^p -+ k is prime, where p=prime(n).

The programs for A157719, there is no canonical definition to state claims against.
-/

/-! ## A157719.P2172218874405812403

`A075468(p?[a(n-1)+2])` with `a(0)=2, a(1)=3`
-/

namespace A157719.P2172218874405812403
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 3] fun n f1 =>
  f1 (n - 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075468 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A157719.P2172218874405812403

/-! ## A157719.P16471249575685788065

`A075468(p?[n-(round(sqrt(n+1))-1)])`
-/

namespace A157719.P16471249575685788065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (SequenceMachineLib.roundAway (Real.sqrt (n + 1 : ℝ)) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075468 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A157719.P16471249575685788065

/-! ## A157719.P11578687470973024518

`A075468(∑{p}[p?[round(8*n/7)]², #])`
-/

namespace A157719.P11578687470973024518
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075468 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A157719.P11578687470973024518

/-! ## A157719.P2728190310585899062

`A075468(Δ[A007504(n)])`
-/

namespace A157719.P2728190310585899062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075468 (f1 (n + 1) - f1 n).toNat

end

end A157719.P2728190310585899062

/-! ## A157719.P2117288525176285324

`A075468(A000040(n+1))`
-/

namespace A157719.P2117288525176285324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075468 (A000040 (n + 1)).toNat

end

end A157719.P2117288525176285324

/-!
# A157720: Least number of edge lattice points from which every point of a square n x n lattice is visible.

The programs for A157720, there is no canonical definition to state claims against.
-/

/-! ## A157720.P9288129982873242828

`A320065(A029158(n)+n*gcd(2, n))`
-/

namespace A157720.P9288129982873242828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320065 (A029158 n + (n * Nat.gcd 2 n : ℤ)).toNat

end

end A157720.P9288129982873242828

/-! ## A157720.P16017272296540080117

`A038605(A346123(n+1)+A064989(n+3))`
-/

namespace A157720.P16017272296540080117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038605 (A346123 (n + 1) + A064989 (n + 3)).toNat

end

end A157720.P16017272296540080117

/-! ## A157720.P6096688453553268082

`floor(log2(log2(A076158(n+2))))`
-/

namespace A157720.P6096688453553268082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.logb 2 (Real.logb 2 (A076158 (n + 2) : ℝ))⌋

end

end A157720.P6096688453553268082

/-! ## A157720.P17027479604003539854

`A111972(A190269(n+2)+A114803(n))`
-/

namespace A157720.P17027479604003539854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111972 (A190269 (n + 2) + A114803 n).toNat

end

end A157720.P17027479604003539854

/-!
# A157721: a(n) = 0 if n is 1 or a prime, otherwise a(n) = product of composite (nonprime) divisors of n.

The programs for A157721, the canonical program `A157721.P15469461244719664860` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A157721 has offset 1).

The definition of A157721 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5039 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A157721.P12222024354879979481

`∏{d}[n+1, #]/∏{p}[n+1, #]-∑{e}[n+1, #]!%2`
-/

namespace A157721.P12222024354879979481
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ d ∈ Nat.divisors (f1 n), d : ℕ) : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ) - ((Nat.factorial (∑ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p) % 2 : ℕ) : ℚ)

end

end A157721.P12222024354879979481

namespace A157721

/-- `∏{d}[n+1, #]/∏{p}[n+1, #]-∑{e}[n+1, #]!%2` -/
def P12222024354879979481.Spec : Prop :=
  ∀ n, P12222024354879979481.a n = (A157721 (n + 1) : ℚ)

end A157721

/-! ## A157721.P15469461244719664860

`(∏{d}[n+1, #]/∏{p}[∏{p}[n+1, #%n], #])%∏{d}[n+1, #]`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A157721

/-- `(∏{d}[n+1, #]/∏{p}[∏{p}[n+1, #%n], #])%∏{d}[n+1, #]` -/
def P15469461244719664860.Spec : Prop :=
  ∀ n, P15469461244719664860.a n = A157721 (n + 1)

theorem P15469461244719664860.correct : P15469461244719664860.Spec := by
  intro n
  simp only [A157721, Nat.add_sub_cancel]

end A157721

/-! ## A157721.P1276364027756758553

`A087652(n+1)-A080339(n+1)`
-/

namespace A157721.P1276364027756758553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087652 (n + 1) - A080339 (n + 1)

end

end A157721.P1276364027756758553

namespace A157721

/-- `A087652(n+1)-A080339(n+1)` -/
def P1276364027756758553.Spec : Prop :=
  ∀ n, P1276364027756758553.a n = A157721 (n + 1)

end A157721

/-! ## A157721.P13262500184999794142

`A066247(n+1)*A087652(n+1)`
-/

namespace A157721.P13262500184999794142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066247 (n + 1) * A087652 (n + 1)

end

end A157721.P13262500184999794142

namespace A157721

/-- `A066247(n+1)*A087652(n+1)` -/
def P13262500184999794142.Spec : Prop :=
  ∀ n, P13262500184999794142.a n = A157721 (n + 1)

end A157721

/-! ## A157721.P571387488928000025

`A087652(n+1)-char[A020639(n+1)-1]`
-/

namespace A157721.P571387488928000025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087652 (n + 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A157721.P571387488928000025

namespace A157721

/-- `A087652(n+1)-char[A020639(n+1)-1]` -/
def P571387488928000025.Spec : Prop :=
  ∀ n, P571387488928000025.a n = A157721 (n + 1)

end A157721

/-! ## A157721.P3507520608708882113

`(n+1)/∏{p}[n+1, #]*A157195(n+1)`
-/

namespace A157721.P3507520608708882113
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * (A157195 (n + 1) : ℚ)

end

end A157721.P3507520608708882113

namespace A157721

/-- `(n+1)/∏{p}[n+1, #]*A157195(n+1)` -/
def P3507520608708882113.Spec : Prop :=
  ∀ n, P3507520608708882113.a n = (A157721 (n + 1) : ℚ)

end A157721

/-! ## A157721.P1284955986203232756

`A003557(n+1)*A157195(n+1)`
-/

namespace A157721.P1284955986203232756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (n + 1) * A157195 (n + 1)

end

end A157721.P1284955986203232756

namespace A157721

/-- `A003557(n+1)*A157195(n+1)` -/
def P1284955986203232756.Spec : Prop :=
  ∀ n, P1284955986203232756.a n = A157721 (n + 1)

end A157721

/-! ## A157721.P17007473096902603838

`lcm(A087652(n+1), A157195(n+1))`
-/

namespace A157721.P17007473096902603838
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A087652 (n + 1)) (A157195 (n + 1))

end

end A157721.P17007473096902603838

namespace A157721

/-- `lcm(A087652(n+1), A157195(n+1))` -/
def P17007473096902603838.Spec : Prop :=
  ∀ n, (P17007473096902603838.a n : ℤ) = A157721 (n + 1)

end A157721

/-! ## A157721.P12743502931120850908

`A087652(n+1)%A318576(n+1)`
-/

namespace A157721.P12743502931120850908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A087652 (n + 1)) (A318576 (n + 1))

end

end A157721.P12743502931120850908

namespace A157721

/-- `A087652(n+1)%A318576(n+1)` -/
def P12743502931120850908.Spec : Prop :=
  ∀ n, P12743502931120850908.a n = A157721 (n + 1)

end A157721

/-!
# A157724: Numbers that are the sum of two distinct primes but are not twice a prime.

The programs for A157724, the canonical program `A157724.P18355006247608017594` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A157724 has offset 1).

The definition of A157724 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A157724.P3388252472572474412

`record[A064919(A064916(n+3))+2]`
-/

namespace A157724.P3388252472572474412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064919 (A064916 (n + 3)).toNat + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A157724.P3388252472572474412

namespace A157724

/-- `record[A064919(A064916(n+3))+2]` -/
def P3388252472572474412.Spec : Prop :=
  ∀ n, P3388252472572474412.a n = A157724 (n + 1)

end A157724

/-! ## A157724.P1467674115188619078

`lt[1, A040001(A073610(n+1))]+1`
-/

namespace A157724.P1467674115188619078
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (A073610 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A157724.P1467674115188619078

namespace A157724

/-- `lt[1, A040001(A073610(n+1))]+1` -/
def P1467674115188619078.Spec : Prop :=
  ∀ n, (P1467674115188619078.a n : ℤ) = A157724 (n + 1)

end A157724

/-! ## A157724.P1746187591553651424

`∪[A048974(n+1), A173664(n+1)]`
-/

namespace A157724.P1746187591553651424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048974 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173664 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A157724.P1746187591553651424

namespace A157724

/-- `∪[A048974(n+1), A173664(n+1)]` -/
def P1746187591553651424.Spec : Prop :=
  ∀ n, (P1746187591553651424.a n : ℤ) = A157724 (n + 1)

end A157724

/-! ## A157724.P13051821277996217111

`∪[A107987(n+1), A173664(n+1)]`
-/

namespace A157724.P13051821277996217111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107987 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173664 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A157724.P13051821277996217111

namespace A157724

/-- `∪[A107987(n+1), A173664(n+1)]` -/
def P13051821277996217111.Spec : Prop :=
  ∀ n, (P13051821277996217111.a n : ℤ) = A157724 (n + 1)

end A157724

/-! ## A157724.P18355006247608017594

`∪[A048974(n+1), A282671(n+1)]`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A157724

/-- `∪[A048974(n+1), A282671(n+1)]` -/
def P18355006247608017594.Spec : Prop :=
  ∀ n, (P18355006247608017594.a n : ℤ) = A157724 (n + 1)

theorem P18355006247608017594.correct : P18355006247608017594.Spec := by
  intro n
  simp only [A157724, Nat.add_sub_cancel]

end A157724

/-! ## A157724.P7979483895720625501

`eq[2, A040001(A073610(A028310(n)))]`
-/

namespace A157724.P7979483895720625501
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (A073610 (A028310 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A157724.P7979483895720625501

namespace A157724

/-- `eq[2, A040001(A073610(A028310(n)))]` -/
def P7979483895720625501.Spec : Prop :=
  ∀ n, (P7979483895720625501.a n : ℤ) = A157724 (n + 1)

end A157724

/-! ## A157724.P8643888373201390504

`eq[0, A097331(A098983(n)-A282318(n))]`
-/

namespace A157724.P8643888373201390504
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097331 (A098983 n - A282318 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A157724.P8643888373201390504

namespace A157724

/-- `eq[0, A097331(A098983(n)-A282318(n))]` -/
def P8643888373201390504.Spec : Prop :=
  ∀ n, (P8643888373201390504.a n : ℤ) = A157724 (n + 1)

end A157724

/-! ## A157724.P2601340479991743279

`eq[0, A105523(A098983(n)-A282318(n))]`
-/

namespace A157724.P2601340479991743279
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105523 (A098983 n - A282318 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A157724.P2601340479991743279

namespace A157724

/-- `eq[0, A105523(A098983(n)-A282318(n))]` -/
def P2601340479991743279.Spec : Prop :=
  ∀ n, (P2601340479991743279.a n : ℤ) = A157724 (n + 1)

end A157724

/-! ## A157724.P11550595139520939919

`eq[-1, A089263(A098983(n)-A282318(n)+1)]`
-/

namespace A157724.P11550595139520939919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089263 (A098983 n - A282318 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A157724.P11550595139520939919

namespace A157724

/-- `eq[-1, A089263(A098983(n)-A282318(n)+1)]` -/
def P11550595139520939919.Spec : Prop :=
  ∀ n, (P11550595139520939919.a n : ℤ) = A157724 (n + 1)

end A157724

/-!
# A157725: a(n) = Fibonacci(n) + 2.

The programs for A157725, the canonical program `A157725.P13486500630838488650` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A157725 has offset 0).

The definition of A157725 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000045(n)+2` (program `A157725.P13486500630838488650`, by `A157725.P13486500630838488650.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A157725.P18413923250260060160

`ogf((2-x-3x^2)/(1-2x+x^3))`
-/

namespace A157725.P18413923250260060160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -1, -3] [1, -2, 0, 1] n

end

end A157725.P18413923250260060160

namespace A157725

/-- `ogf((2-x-3x^2)/(1-2x+x^3))` -/
def P18413923250260060160.Spec : Prop :=
  ∀ n, P18413923250260060160.a n = A157725 n

end A157725

/-! ## A157725.P16070813535678231770

`a(n-2)+a(n-1)-2` with `a(0)=2, a(1)=3`
-/

namespace A157725.P16070813535678231770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3] fun n a =>
  a (n - 2) + a (n - 1) - 2

end

end A157725.P16070813535678231770

namespace A157725

/-- `a(n-2)+a(n-1)-2` -/
def P16070813535678231770.Spec : Prop :=
  ∀ n, P16070813535678231770.a n = A157725 n

end A157725

/-! ## A157725.P13486500630838488650

`A000045(n)+2`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A157725

/-- `A000045(n)+2` -/
def P13486500630838488650.Spec : Prop :=
  ∀ n, P13486500630838488650.a n = A157725 n

theorem P13486500630838488650.correct : P13486500630838488650.Spec := by
  intro n
  simp only [A157725]

end A157725

/-! ## A157725.P15843023824157532301

`∑[ogf((-2+x+3x^2)/(-1+x+x^2))]`
-/

namespace A157725.P15843023824157532301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -1, -3] [1, -1, -1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A157725.P15843023824157532301

namespace A157725

/-- `∑[ogf((-2+x+3x^2)/(-1+x+x^2))]` -/
def P15843023824157532301.Spec : Prop :=
  ∀ n, P15843023824157532301.a n = A157725 n

end A157725

/-! ## A157725.P13335085664245925530

`∑[round(ϕ*a(n-1))]` with `a(0)=2, a(1)=1, a(2)=0, a(3)=1, a(4)=1`
-/

namespace A157725.P13335085664245925530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 1, 0, 1, 1] fun n f1 =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (f1 (n - 1) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A157725.P13335085664245925530

namespace A157725

/-- `∑[round(ϕ*a(n-1))]` -/
def P13335085664245925530.Spec : Prop :=
  ∀ n, P13335085664245925530.a n = A157725 n

end A157725

/-! ## A157725.P368187778340935798

`a(n-1)-(2-a(n-2))` with `a(0)=2, a(1)=3`
-/

namespace A157725.P368187778340935798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3] fun n a =>
  a (n - 1) - (2 - a (n - 2))

end

end A157725.P368187778340935798

namespace A157725

/-- `a(n-1)-(2-a(n-2))` -/
def P368187778340935798.Spec : Prop :=
  ∀ n, P368187778340935798.a n = A157725 n

end A157725

/-! ## A157725.P6034331791070366486

`1+A001611(n)`
-/

namespace A157725.P6034331791070366486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A001611 n

end

end A157725.P6034331791070366486

namespace A157725

/-- `1+A001611(n)` -/
def P6034331791070366486.Spec : Prop :=
  ∀ n, P6034331791070366486.a n = A157725 n

theorem P6034331791070366486.correct : P6034331791070366486.Spec := by
  intro n
  simp only [A157725, Nat.add_sub_cancel, A157725.P6034331791070366486.a, A157725.P13486500630838488650.a, A000045, A000045.P11838749114346432762.a, A001611, A001611.P16593652898942925329.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A157725

/-! ## A157725.P7298784290393815347

`2+A000045(n)`
-/

namespace A157725.P7298784290393815347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 + A000045 n

end

end A157725.P7298784290393815347

namespace A157725

/-- `2+A000045(n)` -/
def P7298784290393815347.Spec : Prop :=
  ∀ n, P7298784290393815347.a n = A157725 n

theorem P7298784290393815347.correct : P7298784290393815347.Spec := by
  intro n
  simp only [A157725, Nat.add_sub_cancel, A157725.P7298784290393815347.a, A157725.P13486500630838488650.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A157725

/-! ## A157725.P6571655338001699391

`A157726(n)-1`
-/

namespace A157725.P6571655338001699391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157726 n - 1

end

end A157725.P6571655338001699391

namespace A157725

/-- `A157726(n)-1` -/
def P6571655338001699391.Spec : Prop :=
  ∀ n, P6571655338001699391.a n = A157725 n

theorem P6571655338001699391.correct : P6571655338001699391.Spec := by
  intro n
  simp only [A157725, Nat.add_sub_cancel, A157725.P6571655338001699391.a, A157725.P13486500630838488650.a, A000045, A000045.P11838749114346432762.a, A157726, A157726.P7037374530455403318.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A157725

/-! ## A157725.P13818153622133553172

`A157727(n)-2`
-/

namespace A157725.P13818153622133553172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157727 n - 2

end

end A157725.P13818153622133553172

namespace A157725

/-- `A157727(n)-2` -/
def P13818153622133553172.Spec : Prop :=
  ∀ n, P13818153622133553172.a n = A157725 n

theorem P13818153622133553172.correct : P13818153622133553172.Spec := by
  intro n
  simp only [A157725, Nat.add_sub_cancel, A157725.P13818153622133553172.a, A157725.P13486500630838488650.a, A000045, A000045.P11838749114346432762.a, A157727, A157727.P751779701380853510.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A157725

/-! ## A157725.P11019068166553546273

`A157729(n)-3`
-/

namespace A157725.P11019068166553546273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157729 n - 3

end

end A157725.P11019068166553546273

namespace A157725

/-- `A157729(n)-3` -/
def P11019068166553546273.Spec : Prop :=
  ∀ n, P11019068166553546273.a n = A157725 n

theorem P11019068166553546273.correct : P11019068166553546273.Spec := by
  intro n
  simp only [A157725, Nat.add_sub_cancel, A157725.P11019068166553546273.a, A157725.P13486500630838488650.a, A000045, A000045.P11838749114346432762.a, A157729, A157729.P2013707109334832467.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A157725

/-! ## A157725.P3310112306416779603

`abs(A236191(n))+2`
-/

namespace A157725.P3310112306416779603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A236191 n| + 2

end

end A157725.P3310112306416779603

namespace A157725

/-- `abs(A236191(n))+2` -/
def P3310112306416779603.Spec : Prop :=
  ∀ n, P3310112306416779603.a n = A157725 n

end A157725

/-! ## A157725.P18007872855432134103

`3-∑[A152163(n)]`
-/

namespace A157725.P18007872855432134103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152163 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A157725.P18007872855432134103

namespace A157725

/-- `3-∑[A152163(n)]` -/
def P18007872855432134103.Spec : Prop :=
  ∀ n, P18007872855432134103.a n = A157725 n

end A157725

/-! ## A157725.P7577282927881295521

`A212804(n+1)+2`
-/

namespace A157725.P7577282927881295521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (n + 1) + 2

end

end A157725.P7577282927881295521

namespace A157725

/-- `A212804(n+1)+2` -/
def P7577282927881295521.Spec : Prop :=
  ∀ n, P7577282927881295521.a n = A157725 n

end A157725

/-! ## A157725.P11185054076377790045

`2-A152163(n+2)`
-/

namespace A157725.P11185054076377790045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A152163 (n + 2)

end

end A157725.P11185054076377790045

namespace A157725

/-- `2-A152163(n+2)` -/
def P11185054076377790045.Spec : Prop :=
  ∀ n, P11185054076377790045.a n = A157725 n

end A157725

/-! ## A157725.P95887573648226506

`A103609(2*n)+2`
-/

namespace A157725.P95887573648226506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103609 (2 * n) + 2

end

end A157725.P95887573648226506

namespace A157725

/-- `A103609(2*n)+2` -/
def P95887573648226506.Spec : Prop :=
  ∀ n, P95887573648226506.a n = A157725 n

end A157725

/-! ## A157725.P17604836707932135706

`A065220(n)+2+n`
-/

namespace A157725.P17604836707932135706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065220 n + 2 + (n : ℤ)

end

end A157725.P17604836707932135706

namespace A157725

/-- `A065220(n)+2+n` -/
def P17604836707932135706.Spec : Prop :=
  ∀ n, P17604836707932135706.a n = A157725 n

theorem P17604836707932135706.correct : P17604836707932135706.Spec := by
  intro n
  simp only [A157725, Nat.add_sub_cancel, A157725.P17604836707932135706.a, A157725.P13486500630838488650.a, A000045, A000045.P11838749114346432762.a, A065220, A065220.P6653459094866898540.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A157725

/-! ## A157725.P8559628443136938461

`A002062(n)+2-n`
-/

namespace A157725.P8559628443136938461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002062 n + (2 - (n : ℤ))

end

end A157725.P8559628443136938461

namespace A157725

/-- `A002062(n)+2-n` -/
def P8559628443136938461.Spec : Prop :=
  ∀ n, P8559628443136938461.a n = A157725 n

theorem P8559628443136938461.correct : P8559628443136938461.Spec := by
  intro n
  simp only [A157725, Nat.add_sub_cancel, A157725.P8559628443136938461.a, A157725.P13486500630838488650.a, A000045, A000045.P11838749114346432762.a, A002062, A002062.P4072436808255348786.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A157725

/-! ## A157725.P11307338814717863411

`A129982(2*n+1)+2`
-/

namespace A157725.P11307338814717863411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129982 (2 * n + 1) + 2

end

end A157725.P11307338814717863411

namespace A157725

/-- `A129982(2*n+1)+2` -/
def P11307338814717863411.Spec : Prop :=
  ∀ n, P11307338814717863411.a n = A157725 n

end A157725

/-!
# A157726: a(n) = Fibonacci(n) + 3.

The programs for A157726, the canonical program `A157726.P7037374530455403318` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A157726 has offset 0).

The definition of A157726 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000045(n)+3` (program `A157726.P7037374530455403318`, by `A157726.P7037374530455403318.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A157726.P16047264214124359731

`ogf((3-2x-4x^2)/(1-2x+x^3))`
-/

namespace A157726.P16047264214124359731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -2, -4] [1, -2, 0, 1] n

end

end A157726.P16047264214124359731

namespace A157726

/-- `ogf((3-2x-4x^2)/(1-2x+x^3))` -/
def P16047264214124359731.Spec : Prop :=
  ∀ n, P16047264214124359731.a n = A157726 n

end A157726

/-! ## A157726.P9748439790048040918

`a(n-2)+a(n-1)-3` with `a(0)=3, a(1)=4`
-/

namespace A157726.P9748439790048040918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 4] fun n a =>
  a (n - 2) + a (n - 1) - 3

end

end A157726.P9748439790048040918

namespace A157726

/-- `a(n-2)+a(n-1)-3` -/
def P9748439790048040918.Spec : Prop :=
  ∀ n, P9748439790048040918.a n = A157726 n

end A157726

/-! ## A157726.P7037374530455403318

`A000045(n)+3`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A157726

/-- `A000045(n)+3` -/
def P7037374530455403318.Spec : Prop :=
  ∀ n, P7037374530455403318.a n = A157726 n

theorem P7037374530455403318.correct : P7037374530455403318.Spec := by
  intro n
  simp only [A157726]

end A157726

/-! ## A157726.P1415285956960673067

`∑[ogf((-3+2x+4x^2)/(-1+x+x^2))]`
-/

namespace A157726.P1415285956960673067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -2, -4] [1, -1, -1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A157726.P1415285956960673067

namespace A157726

/-- `∑[ogf((-3+2x+4x^2)/(-1+x+x^2))]` -/
def P1415285956960673067.Spec : Prop :=
  ∀ n, P1415285956960673067.a n = A157726 n

end A157726

/-! ## A157726.P11968075298510414944

`round(ϕ*a(n-1))-2` with `a(0)=3, a(1)=4, a(2)=4, a(3)=5`
-/

namespace A157726.P11968075298510414944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 4, 4, 5] fun n a =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (a (n - 1) : ℝ)) - 2

end

end A157726.P11968075298510414944

namespace A157726

/-- `round(ϕ*a(n-1))-2` -/
def P11968075298510414944.Spec : Prop :=
  ∀ n, P11968075298510414944.a n = A157726 n

end A157726

/-! ## A157726.P3770940742845030375

`a(n-1)-(3-a(n-2))` with `a(0)=3, a(1)=4`
-/

namespace A157726.P3770940742845030375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 4] fun n a =>
  a (n - 1) - (3 - a (n - 2))

end

end A157726.P3770940742845030375

namespace A157726

/-- `a(n-1)-(3-a(n-2))` -/
def P3770940742845030375.Spec : Prop :=
  ∀ n, P3770940742845030375.a n = A157726 n

end A157726

/-! ## A157726.P11387490421655736269

`A157725(n)+1`
-/

namespace A157726.P11387490421655736269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157725 n + 1

end

end A157726.P11387490421655736269

namespace A157726

/-- `A157725(n)+1` -/
def P11387490421655736269.Spec : Prop :=
  ∀ n, P11387490421655736269.a n = A157726 n

theorem P11387490421655736269.correct : P11387490421655736269.Spec := by
  intro n
  simp only [A157726, Nat.add_sub_cancel, A157726.P11387490421655736269.a, A157726.P7037374530455403318.a, A000045, A000045.P11838749114346432762.a, A157725, A157725.P13486500630838488650.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A157726

/-! ## A157726.P2584724062619228378

`A001611(n)+2`
-/

namespace A157726.P2584724062619228378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001611 n + 2

end

end A157726.P2584724062619228378

namespace A157726

/-- `A001611(n)+2` -/
def P2584724062619228378.Spec : Prop :=
  ∀ n, P2584724062619228378.a n = A157726 n

theorem P2584724062619228378.correct : P2584724062619228378.Spec := by
  intro n
  simp only [A157726, Nat.add_sub_cancel, A157726.P2584724062619228378.a, A157726.P7037374530455403318.a, A000045, A000045.P11838749114346432762.a, A001611, A001611.P16593652898942925329.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A157726

/-! ## A157726.P5530117009753640859

`A157727(n)-1`
-/

namespace A157726.P5530117009753640859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157727 n - 1

end

end A157726.P5530117009753640859

namespace A157726

/-- `A157727(n)-1` -/
def P5530117009753640859.Spec : Prop :=
  ∀ n, P5530117009753640859.a n = A157726 n

theorem P5530117009753640859.correct : P5530117009753640859.Spec := by
  intro n
  simp only [A157726, Nat.add_sub_cancel, A157726.P5530117009753640859.a, A157726.P7037374530455403318.a, A000045, A000045.P11838749114346432762.a, A157727, A157727.P751779701380853510.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A157726

/-! ## A157726.P16008458642314471666

`3+A000045(n)`
-/

namespace A157726.P16008458642314471666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 + A000045 n

end

end A157726.P16008458642314471666

namespace A157726

/-- `3+A000045(n)` -/
def P16008458642314471666.Spec : Prop :=
  ∀ n, P16008458642314471666.a n = A157726 n

theorem P16008458642314471666.correct : P16008458642314471666.Spec := by
  intro n
  simp only [A157726, Nat.add_sub_cancel, A157726.P16008458642314471666.a, A157726.P7037374530455403318.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A157726

/-! ## A157726.P12848125370930449615

`A157729(n)-2`
-/

namespace A157726.P12848125370930449615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157729 n - 2

end

end A157726.P12848125370930449615

namespace A157726

/-- `A157729(n)-2` -/
def P12848125370930449615.Spec : Prop :=
  ∀ n, P12848125370930449615.a n = A157726 n

theorem P12848125370930449615.correct : P12848125370930449615.Spec := by
  intro n
  simp only [A157726, Nat.add_sub_cancel, A157726.P12848125370930449615.a, A157726.P7037374530455403318.a, A000045, A000045.P11838749114346432762.a, A157729, A157729.P2013707109334832467.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A157726

/-! ## A157726.P13755768511108461832

`4-∑[A152163(n)]`
-/

namespace A157726.P13755768511108461832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152163 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A157726.P13755768511108461832

namespace A157726

/-- `4-∑[A152163(n)]` -/
def P13755768511108461832.Spec : Prop :=
  ∀ n, P13755768511108461832.a n = A157726 n

end A157726

/-! ## A157726.P10778727493190120518

`A212804(n+1)+3`
-/

namespace A157726.P10778727493190120518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (n + 1) + 3

end

end A157726.P10778727493190120518

namespace A157726

/-- `A212804(n+1)+3` -/
def P10778727493190120518.Spec : Prop :=
  ∀ n, P10778727493190120518.a n = A157726 n

end A157726

/-! ## A157726.P13779478545171964244

`3-A152163(n+2)`
-/

namespace A157726.P13779478545171964244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - A152163 (n + 2)

end

end A157726.P13779478545171964244

namespace A157726

/-- `3-A152163(n+2)` -/
def P13779478545171964244.Spec : Prop :=
  ∀ n, P13779478545171964244.a n = A157726 n

end A157726

/-! ## A157726.P16217899112451096855

`A103609(2*n)+3`
-/

namespace A157726.P16217899112451096855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103609 (2 * n) + 3

end

end A157726.P16217899112451096855

namespace A157726

/-- `A103609(2*n)+3` -/
def P16217899112451096855.Spec : Prop :=
  ∀ n, P16217899112451096855.a n = A157726 n

end A157726

/-! ## A157726.P10508355035652036791

`A065220(n)+3+n`
-/

namespace A157726.P10508355035652036791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065220 n + 3 + (n : ℤ)

end

end A157726.P10508355035652036791

namespace A157726

/-- `A065220(n)+3+n` -/
def P10508355035652036791.Spec : Prop :=
  ∀ n, P10508355035652036791.a n = A157726 n

theorem P10508355035652036791.correct : P10508355035652036791.Spec := by
  intro n
  simp only [A157726, Nat.add_sub_cancel, A157726.P10508355035652036791.a, A157726.P7037374530455403318.a, A000045, A000045.P11838749114346432762.a, A065220, A065220.P6653459094866898540.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A157726

/-! ## A157726.P5949337793270077528

`A002062(n)+3-n`
-/

namespace A157726.P5949337793270077528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002062 n + (3 - (n : ℤ))

end

end A157726.P5949337793270077528

namespace A157726

/-- `A002062(n)+3-n` -/
def P5949337793270077528.Spec : Prop :=
  ∀ n, P5949337793270077528.a n = A157726 n

theorem P5949337793270077528.correct : P5949337793270077528.Spec := by
  intro n
  simp only [A157726, Nat.add_sub_cancel, A157726.P5949337793270077528.a, A157726.P7037374530455403318.a, A000045, A000045.P11838749114346432762.a, A002062, A002062.P4072436808255348786.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A157726

/-! ## A157726.P16586822996903892581

`A129982(2*n+1)+3`
-/

namespace A157726.P16586822996903892581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129982 (2 * n + 1) + 3

end

end A157726.P16586822996903892581

namespace A157726

/-- `A129982(2*n+1)+3` -/
def P16586822996903892581.Spec : Prop :=
  ∀ n, P16586822996903892581.a n = A157726 n

end A157726

/-! ## A157726.P437724734257392377

`A010694(n)+A008346(n)`
-/

namespace A157726.P437724734257392377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010694 n + A008346 n

end

end A157726.P437724734257392377

namespace A157726

/-- `A010694(n)+A008346(n)` -/
def P437724734257392377.Spec : Prop :=
  ∀ n, P437724734257392377.a n = A157726 n

end A157726

/-!
# A157727: a(n) = Fibonacci(n) + 4.

The programs for A157727, the canonical program `A157727.P751779701380853510` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A157727 has offset 0).

The definition of A157727 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000045(n)+4` (program `A157727.P751779701380853510`, by `A157727.P751779701380853510.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A157727.P12940453655745955990

`ogf((4-3x-5x^2)/(1-2x+x^3))`
-/

namespace A157727.P12940453655745955990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, -3, -5] [1, -2, 0, 1] n

end

end A157727.P12940453655745955990

namespace A157727

/-- `ogf((4-3x-5x^2)/(1-2x+x^3))` -/
def P12940453655745955990.Spec : Prop :=
  ∀ n, P12940453655745955990.a n = A157727 n

end A157727

/-! ## A157727.P16938104516424481626

`a(n-2)+a(n-1)-4` with `a(0)=4, a(1)=5`
-/

namespace A157727.P16938104516424481626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4, 5] fun n a =>
  a (n - 2) + a (n - 1) - 4

end

end A157727.P16938104516424481626

namespace A157727

/-- `a(n-2)+a(n-1)-4` -/
def P16938104516424481626.Spec : Prop :=
  ∀ n, P16938104516424481626.a n = A157727 n

end A157727

/-! ## A157727.P751779701380853510

`A000045(n)+4`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A157727

/-- `A000045(n)+4` -/
def P751779701380853510.Spec : Prop :=
  ∀ n, P751779701380853510.a n = A157727 n

theorem P751779701380853510.correct : P751779701380853510.Spec := by
  intro n
  simp only [A157727]

end A157727

/-! ## A157727.P18234499322800491421

`2*a(n-1)-a(n-3)` with `a(0)=4, a(1)=5, a(2)=5`
-/

namespace A157727.P18234499322800491421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4, 5, 5] fun n a =>
  2 * a (n - 1) - a (n - 3)

end

end A157727.P18234499322800491421

namespace A157727

/-- `2*a(n-1)-a(n-3)` -/
def P18234499322800491421.Spec : Prop :=
  ∀ n, P18234499322800491421.a n = A157727 n

end A157727

/-! ## A157727.P17159890249406229375

`∑[ogf((-4+3x+5x^2)/(-1+x+x^2))]`
-/

namespace A157727.P17159890249406229375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, -3, -5] [1, -1, -1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A157727.P17159890249406229375

namespace A157727

/-- `∑[ogf((-4+3x+5x^2)/(-1+x+x^2))]` -/
def P17159890249406229375.Spec : Prop :=
  ∀ n, P17159890249406229375.a n = A157727 n

end A157727

/-! ## A157727.P9731545509903381151

`floor(ϕ*a(n-1))-2` with `a(0)=4, a(1)=5, a(2)=5`
-/

namespace A157727.P9731545509903381151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4, 5, 5] fun n a =>
  ⌊Real.goldenRatio * (a (n - 1) : ℝ)⌋ - 2

end

end A157727.P9731545509903381151

namespace A157727

/-- `floor(ϕ*a(n-1))-2` -/
def P9731545509903381151.Spec : Prop :=
  ∀ n, P9731545509903381151.a n = A157727 n

end A157727

/-! ## A157727.P5266337275467490259

`ceil(ϕ*a(n-1))-3` with `a(0)=4, a(1)=5, a(2)=5`
-/

namespace A157727.P5266337275467490259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4, 5, 5] fun n a =>
  ⌈Real.goldenRatio * (a (n - 1) : ℝ)⌉ - 3

end

end A157727.P5266337275467490259

namespace A157727

/-- `ceil(ϕ*a(n-1))-3` -/
def P5266337275467490259.Spec : Prop :=
  ∀ n, P5266337275467490259.a n = A157727 n

end A157727

/-! ## A157727.P12487973935818719237

`a(n-1)-(4-a(n-2))` with `a(0)=4, a(1)=5`
-/

namespace A157727.P12487973935818719237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4, 5] fun n a =>
  a (n - 1) - (4 - a (n - 2))

end

end A157727.P12487973935818719237

namespace A157727

/-- `a(n-1)-(4-a(n-2))` -/
def P12487973935818719237.Spec : Prop :=
  ∀ n, P12487973935818719237.a n = A157727 n

end A157727

/-! ## A157727.P5868780609690640220

`A157726(n)+1`
-/

namespace A157727.P5868780609690640220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157726 n + 1

end

end A157727.P5868780609690640220

namespace A157727

/-- `A157726(n)+1` -/
def P5868780609690640220.Spec : Prop :=
  ∀ n, P5868780609690640220.a n = A157727 n

theorem P5868780609690640220.correct : P5868780609690640220.Spec := by
  intro n
  simp only [A157727, Nat.add_sub_cancel, A157727.P5868780609690640220.a, A157727.P751779701380853510.a, A000045, A000045.P11838749114346432762.a, A157726, A157726.P7037374530455403318.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A157727

/-! ## A157727.P15820111101442352675

`A157725(n)+2`
-/

namespace A157727.P15820111101442352675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157725 n + 2

end

end A157727.P15820111101442352675

namespace A157727

/-- `A157725(n)+2` -/
def P15820111101442352675.Spec : Prop :=
  ∀ n, P15820111101442352675.a n = A157727 n

theorem P15820111101442352675.correct : P15820111101442352675.Spec := by
  intro n
  simp only [A157727, Nat.add_sub_cancel, A157727.P15820111101442352675.a, A157727.P751779701380853510.a, A000045, A000045.P11838749114346432762.a, A157725, A157725.P13486500630838488650.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A157727

/-! ## A157727.P12071532671643628550

`A157729(n)-1`
-/

namespace A157727.P12071532671643628550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157729 n - 1

end

end A157727.P12071532671643628550

namespace A157727

/-- `A157729(n)-1` -/
def P12071532671643628550.Spec : Prop :=
  ∀ n, P12071532671643628550.a n = A157727 n

theorem P12071532671643628550.correct : P12071532671643628550.Spec := by
  intro n
  simp only [A157727, Nat.add_sub_cancel, A157727.P12071532671643628550.a, A157727.P751779701380853510.a, A000045, A000045.P11838749114346432762.a, A157729, A157729.P2013707109334832467.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A157727

/-! ## A157727.P6193449352880695013

`A001611(n)+3`
-/

namespace A157727.P6193449352880695013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001611 n + 3

end

end A157727.P6193449352880695013

namespace A157727

/-- `A001611(n)+3` -/
def P6193449352880695013.Spec : Prop :=
  ∀ n, P6193449352880695013.a n = A157727 n

theorem P6193449352880695013.correct : P6193449352880695013.Spec := by
  intro n
  simp only [A157727, Nat.add_sub_cancel, A157727.P6193449352880695013.a, A157727.P751779701380853510.a, A000045, A000045.P11838749114346432762.a, A001611, A001611.P16593652898942925329.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A157727

/-! ## A157727.P3812969532171696674

`4+A000045(n)`
-/

namespace A157727.P3812969532171696674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 + A000045 n

end

end A157727.P3812969532171696674

namespace A157727

/-- `4+A000045(n)` -/
def P3812969532171696674.Spec : Prop :=
  ∀ n, P3812969532171696674.a n = A157727 n

theorem P3812969532171696674.correct : P3812969532171696674.Spec := by
  intro n
  simp only [A157727, Nat.add_sub_cancel, A157727.P3812969532171696674.a, A157727.P751779701380853510.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A157727

/-! ## A157727.P3280646715328366886

`5-∑[A152163(n)]`
-/

namespace A157727.P3280646715328366886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152163 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A157727.P3280646715328366886

namespace A157727

/-- `5-∑[A152163(n)]` -/
def P3280646715328366886.Spec : Prop :=
  ∀ n, P3280646715328366886.a n = A157727 n

end A157727

/-! ## A157727.P5615102302976462583

`A212804(n+1)+4`
-/

namespace A157727.P5615102302976462583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (n + 1) + 4

end

end A157727.P5615102302976462583

namespace A157727

/-- `A212804(n+1)+4` -/
def P5615102302976462583.Spec : Prop :=
  ∀ n, P5615102302976462583.a n = A157727 n

end A157727

/-! ## A157727.P1751562655757576830

`4-A152163(n+2)`
-/

namespace A157727.P1751562655757576830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 - A152163 (n + 2)

end

end A157727.P1751562655757576830

namespace A157727

/-- `4-A152163(n+2)` -/
def P1751562655757576830.Spec : Prop :=
  ∀ n, P1751562655757576830.a n = A157727 n

end A157727

/-! ## A157727.P14649184196463210715

`A103609(2*n)+4`
-/

namespace A157727.P14649184196463210715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103609 (2 * n) + 4

end

end A157727.P14649184196463210715

namespace A157727

/-- `A103609(2*n)+4` -/
def P14649184196463210715.Spec : Prop :=
  ∀ n, P14649184196463210715.a n = A157727 n

end A157727

/-! ## A157727.P16249342448639762478

`A065220(n)+4+n`
-/

namespace A157727.P16249342448639762478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065220 n + 4 + (n : ℤ)

end

end A157727.P16249342448639762478

namespace A157727

/-- `A065220(n)+4+n` -/
def P16249342448639762478.Spec : Prop :=
  ∀ n, P16249342448639762478.a n = A157727 n

theorem P16249342448639762478.correct : P16249342448639762478.Spec := by
  intro n
  simp only [A157727, Nat.add_sub_cancel, A157727.P16249342448639762478.a, A157727.P751779701380853510.a, A000045, A000045.P11838749114346432762.a, A065220, A065220.P6653459094866898540.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A157727

/-! ## A157727.P2562895056202252578

`A002062(n)+4-n`
-/

namespace A157727.P2562895056202252578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002062 n + (4 - (n : ℤ))

end

end A157727.P2562895056202252578

namespace A157727

/-- `A002062(n)+4-n` -/
def P2562895056202252578.Spec : Prop :=
  ∀ n, P2562895056202252578.a n = A157727 n

theorem P2562895056202252578.correct : P2562895056202252578.Spec := by
  intro n
  simp only [A157727, Nat.add_sub_cancel, A157727.P2562895056202252578.a, A157727.P751779701380853510.a, A000045, A000045.P11838749114346432762.a, A002062, A002062.P4072436808255348786.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A157727

/-! ## A157727.P139368928433421302

`A129982(2*n+1)+4`
-/

namespace A157727.P139368928433421302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129982 (2 * n + 1) + 4

end

end A157727.P139368928433421302

namespace A157727

/-- `A129982(2*n+1)+4` -/
def P139368928433421302.Spec : Prop :=
  ∀ n, P139368928433421302.a n = A157727 n

end A157727

/-!
# A157728: a(n) = Fibonacci(n) - 4.

The programs for A157728, the canonical program `A157728.P17559177800709154999` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A157728 has offset 5).

The definition of A157728 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000045(n+5)-4` (program `A157728.P17559177800709154999`, by `A157728.P17559177800709154999.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A157728.P4871813326189495542

`ogf((1+2x+x^2)/(1-2x+x^3))`
-/

namespace A157728.P4871813326189495542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, 1] [1, -2, 0, 1] n

end

end A157728.P4871813326189495542

namespace A157728

/-- `ogf((1+2x+x^2)/(1-2x+x^3))` -/
def P4871813326189495542.Spec : Prop :=
  ∀ n, P4871813326189495542.a n = A157728 (n + 5)

end A157728

/-! ## A157728.P17559177800709154999

`A000045(n+5)-4`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A157728

/-- `A000045(n+5)-4` -/
def P17559177800709154999.Spec : Prop :=
  ∀ n, P17559177800709154999.a n = A157728 (n + 5)

theorem P17559177800709154999.correct : P17559177800709154999.Spec := by
  intro n
  simp only [A157728, Nat.add_sub_cancel]

end A157728

/-! ## A157728.P12105471946852717699

`2*a(n-1)-a(n-3)` with `a(0)=1, a(1)=4, a(2)=9`
-/

namespace A157728.P12105471946852717699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4, 9] fun n a =>
  2 * a (n - 1) - a (n - 3)

end

end A157728.P12105471946852717699

namespace A157728

/-- `2*a(n-1)-a(n-3)` -/
def P12105471946852717699.Spec : Prop :=
  ∀ n, P12105471946852717699.a n = A157728 (n + 5)

end A157728

/-! ## A157728.P3196222970894281332

`ceil(ϕ*(a(n-1)+1))` with `a(0)=1`
-/

namespace A157728.P3196222970894281332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌈Real.goldenRatio * (a (n - 1) + 1 : ℝ)⌉

end

end A157728.P3196222970894281332

namespace A157728

/-- `ceil(ϕ*(a(n-1)+1))` -/
def P3196222970894281332.Spec : Prop :=
  ∀ n, P3196222970894281332.a n = A157728 (n + 5)

end A157728

/-! ## A157728.P14727231556819424685

`floor(ϕ*(a(n-1)+2))` with `a(0)=1`
-/

namespace A157728.P14727231556819424685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊Real.goldenRatio * (a (n - 1) + 2 : ℝ)⌋

end

end A157728.P14727231556819424685

namespace A157728

/-- `floor(ϕ*(a(n-1)+2))` -/
def P14727231556819424685.Spec : Prop :=
  ∀ n, P14727231556819424685.a n = A157728 (n + 5)

end A157728

/-! ## A157728.P6844424727325444952

`∑[round(ϕ*a(n-1))]` with `a(0)=1, a(1)=3`
-/

namespace A157728.P6844424727325444952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n f1 =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (f1 (n - 1) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A157728.P6844424727325444952

namespace A157728

/-- `∑[round(ϕ*a(n-1))]` -/
def P6844424727325444952.Spec : Prop :=
  ∀ n, P6844424727325444952.a n = A157728 (n + 5)

end A157728

/-! ## A157728.P13667566283977897042

`round(ϕ*(a(n-1)+ϕ))` with `a(0)=1`
-/

namespace A157728.P13667566283977897042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.roundAway (Real.goldenRatio * ((a (n - 1) : ℝ) + Real.goldenRatio))

end

end A157728.P13667566283977897042

namespace A157728

/-- `round(ϕ*(a(n-1)+ϕ))` -/
def P13667566283977897042.Spec : Prop :=
  ∀ n, P13667566283977897042.a n = A157728 (n + 5)

end A157728

/-! ## A157728.P9238896274508021612

`2-floor(-(ϕ*a(n-1)))` with `a(0)=1`
-/

namespace A157728.P9238896274508021612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 - ⌊-(Real.goldenRatio * (a (n - 1) : ℝ))⌋

end

end A157728.P9238896274508021612

namespace A157728

/-- `2-floor(-(ϕ*a(n-1)))` -/
def P9238896274508021612.Spec : Prop :=
  ∀ n, P9238896274508021612.a n = A157728 (n + 5)

end A157728

/-! ## A157728.P10816716255681591243

`3-ceil(-(ϕ*a(n-1)))` with `a(0)=1`
-/

namespace A157728.P10816716255681591243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  3 - ⌈-(Real.goldenRatio * (a (n - 1) : ℝ))⌉

end

end A157728.P10816716255681591243

namespace A157728

/-- `3-ceil(-(ϕ*a(n-1)))` -/
def P10816716255681591243.Spec : Prop :=
  ∀ n, P10816716255681591243.a n = A157728 (n + 5)

end A157728

/-! ## A157728.P13373753589665370785

`floor((a(n-1)+2)/(ϕ-1))` with `a(0)=1`
-/

namespace A157728.P13373753589665370785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊(a (n - 1) + 2 : ℝ) / (Real.goldenRatio - 1)⌋

end

end A157728.P13373753589665370785

namespace A157728

/-- `floor((a(n-1)+2)/(ϕ-1))` -/
def P13373753589665370785.Spec : Prop :=
  ∀ n, P13373753589665370785.a n = A157728 (n + 5)

end A157728

/-! ## A157728.P7149216160204537665

`2-floor(a(n-1)/(1-ϕ))` with `a(0)=1`
-/

namespace A157728.P7149216160204537665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 - ⌊(a (n - 1) : ℝ) / (1 - Real.goldenRatio)⌋

end

end A157728.P7149216160204537665

namespace A157728

/-- `2-floor(a(n-1)/(1-ϕ))` -/
def P7149216160204537665.Spec : Prop :=
  ∀ n, P7149216160204537665.a n = A157728 (n + 5)

end A157728

/-! ## A157728.P500188899712057799

`a(n-1)+a(n-2)+4` with `a(0)=1, a(1)=4`
-/

namespace A157728.P500188899712057799
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 4] fun n a =>
  a (n - 1) + (a (n - 2) + 4)

end

end A157728.P500188899712057799

namespace A157728

/-- `a(n-1)+a(n-2)+4` -/
def P500188899712057799.Spec : Prop :=
  ∀ n, (P500188899712057799.a n : ℤ) = A157728 (n + 5)

end A157728

/-! ## A157728.P6850150853133123979

`5-floor(1-a(n-1)-a(n-2))` with `a(0)=1, a(1)=4`

`floor` is left out, it is the identity on integers.
-/

namespace A157728.P6850150853133123979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  5 - (1 - a (n - 1) - a (n - 2))

end

end A157728.P6850150853133123979

namespace A157728

/-- `5-floor(1-a(n-1)-a(n-2))` -/
def P6850150853133123979.Spec : Prop :=
  ∀ n, P6850150853133123979.a n = A157728 (n + 5)

end A157728

/-! ## A157728.P2285116581155047312

`n-∑[a(n-1)-(1-a(n-2))]` with `a(0)=-1, a(1)=-2`
-/

namespace A157728.P2285116581155047312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [-1, -2] fun n f1 =>
  f1 (n - 1) - (1 - f1 (n - 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A157728.P2285116581155047312

namespace A157728

/-- `n-∑[a(n-1)-(1-a(n-2))]` -/
def P2285116581155047312.Spec : Prop :=
  ∀ n, P2285116581155047312.a n = A157728 (n + 5)

end A157728

/-! ## A157728.P11225287226920528167

`A020732(n)-3`
-/

namespace A157728.P11225287226920528167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020732 n - 3

end

end A157728.P11225287226920528167

namespace A157728

/-- `A020732(n)-3` -/
def P11225287226920528167.Spec : Prop :=
  ∀ n, P11225287226920528167.a n = A157728 (n + 5)

end A157728

/-! ## A157728.P2824190991378491002

`A238374(2*n)`
-/

namespace A157728.P2824190991378491002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238374 (2 * n)

end

end A157728.P2824190991378491002

namespace A157728

/-- `A238374(2*n)` -/
def P2824190991378491002.Spec : Prop :=
  ∀ n, P2824190991378491002.a n = A157728 (n + 5)

end A157728

/-! ## A157728.P3174847506049928737

`A020712(n)-4`
-/

namespace A157728.P3174847506049928737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020712 n - 4

end

end A157728.P3174847506049928737

namespace A157728

/-- `A020712(n)-4` -/
def P3174847506049928737.Spec : Prop :=
  ∀ n, P3174847506049928737.a n = A157728 (n + 5)

end A157728

/-! ## A157728.P9936286877878762476

`A020717(n)-5`
-/

namespace A157728.P9936286877878762476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020717 n - 5

end

end A157728.P9936286877878762476

namespace A157728

/-- `A020717(n)-5` -/
def P9936286877878762476.Spec : Prop :=
  ∀ n, P9936286877878762476.a n = A157728 (n + 5)

theorem P9936286877878762476.correct : P9936286877878762476.Spec := by
  intro n
  simp only [A157728, Nat.add_sub_cancel, A157728.P9936286877878762476.a, A157728.P17559177800709154999.a, A000045, A000045.P11838749114346432762.a, A020717, A020717.P17284353324538551803.a, A020706, A020706.P17542088062975438782.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A157728

/-! ## A157728.P14070757699281272704

`A020743(n)-6`
-/

namespace A157728.P14070757699281272704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020743 n - 6

end

end A157728.P14070757699281272704

namespace A157728

/-- `A020743(n)-6` -/
def P14070757699281272704.Spec : Prop :=
  ∀ n, P14070757699281272704.a n = A157728 (n + 5)

end A157728

/-! ## A157728.P3785110966721994882

`∑[A071679(n+1)]`
-/

namespace A157728.P3785110966721994882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071679 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A157728.P3785110966721994882

namespace A157728

/-- `∑[A071679(n+1)]` -/
def P3785110966721994882.Spec : Prop :=
  ∀ n, P3785110966721994882.a n = A157728 (n + 5)

end A157728

/-!
# A157729: a(n) = Fibonacci(n) + 5.

The programs for A157729, the canonical program `A157729.P2013707109334832467` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A157729 has offset 0).

The definition of A157729 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000045(n)+5` (program `A157729.P2013707109334832467`, by `A157729.P2013707109334832467.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A157729.P12698374348069843993

`ogf((5-4x-6x^2)/(1-2x+x^3))`
-/

namespace A157729.P12698374348069843993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [5, -4, -6] [1, -2, 0, 1] n

end

end A157729.P12698374348069843993

namespace A157729

/-- `ogf((5-4x-6x^2)/(1-2x+x^3))` -/
def P12698374348069843993.Spec : Prop :=
  ∀ n, P12698374348069843993.a n = A157729 n

end A157729

/-! ## A157729.P12713989565918340024

`a(n-2)+a(n-1)-5` with `a(0)=5, a(1)=6`
-/

namespace A157729.P12713989565918340024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5, 6] fun n a =>
  a (n - 2) + a (n - 1) - 5

end

end A157729.P12713989565918340024

namespace A157729

/-- `a(n-2)+a(n-1)-5` -/
def P12713989565918340024.Spec : Prop :=
  ∀ n, P12713989565918340024.a n = A157729 n

end A157729

/-! ## A157729.P2013707109334832467

`A000045(n)+5`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A157729

/-- `A000045(n)+5` -/
def P2013707109334832467.Spec : Prop :=
  ∀ n, P2013707109334832467.a n = A157729 n

theorem P2013707109334832467.correct : P2013707109334832467.Spec := by
  intro n
  simp only [A157729]

end A157729

/-! ## A157729.P3850305863176331742

`∑[ogf((-5+4x+6x^2)/(-1+x+x^2))]`
-/

namespace A157729.P3850305863176331742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [5, -4, -6] [1, -1, -1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A157729.P3850305863176331742

namespace A157729

/-- `∑[ogf((-5+4x+6x^2)/(-1+x+x^2))]` -/
def P3850305863176331742.Spec : Prop :=
  ∀ n, P3850305863176331742.a n = A157729 n

end A157729

/-! ## A157729.P15359290997429094141

`∑[round(ϕ*a(n-1))]` with `a(0)=5, a(1)=1, a(2)=0, a(3)=1, a(4)=1`
-/

namespace A157729.P15359290997429094141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [5, 1, 0, 1, 1] fun n f1 =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (f1 (n - 1) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A157729.P15359290997429094141

namespace A157729

/-- `∑[round(ϕ*a(n-1))]` -/
def P15359290997429094141.Spec : Prop :=
  ∀ n, P15359290997429094141.a n = A157729 n

end A157729

/-! ## A157729.P6499397115108095951

`a(n-1)-(5-a(n-2))` with `a(0)=5, a(1)=6`
-/

namespace A157729.P6499397115108095951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5, 6] fun n a =>
  a (n - 1) - (5 - a (n - 2))

end

end A157729.P6499397115108095951

namespace A157729

/-- `a(n-1)-(5-a(n-2))` -/
def P6499397115108095951.Spec : Prop :=
  ∀ n, P6499397115108095951.a n = A157729 n

end A157729

/-! ## A157729.P13321627133775511339

`A157727(n)+1`
-/

namespace A157729.P13321627133775511339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157727 n + 1

end

end A157729.P13321627133775511339

namespace A157729

/-- `A157727(n)+1` -/
def P13321627133775511339.Spec : Prop :=
  ∀ n, P13321627133775511339.a n = A157729 n

theorem P13321627133775511339.correct : P13321627133775511339.Spec := by
  intro n
  simp only [A157729, Nat.add_sub_cancel, A157729.P13321627133775511339.a, A157729.P2013707109334832467.a, A000045, A000045.P11838749114346432762.a, A157727, A157727.P751779701380853510.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A157729

/-! ## A157729.P10180441907758599788

`A157726(n)+2`
-/

namespace A157729.P10180441907758599788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157726 n + 2

end

end A157729.P10180441907758599788

namespace A157729

/-- `A157726(n)+2` -/
def P10180441907758599788.Spec : Prop :=
  ∀ n, P10180441907758599788.a n = A157729 n

theorem P10180441907758599788.correct : P10180441907758599788.Spec := by
  intro n
  simp only [A157729, Nat.add_sub_cancel, A157729.P10180441907758599788.a, A157729.P2013707109334832467.a, A000045, A000045.P11838749114346432762.a, A157726, A157726.P7037374530455403318.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A157729

/-! ## A157729.P761436967004635748

`A157725(n)+3`
-/

namespace A157729.P761436967004635748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157725 n + 3

end

end A157729.P761436967004635748

namespace A157729

/-- `A157725(n)+3` -/
def P761436967004635748.Spec : Prop :=
  ∀ n, P761436967004635748.a n = A157729 n

theorem P761436967004635748.correct : P761436967004635748.Spec := by
  intro n
  simp only [A157729, Nat.add_sub_cancel, A157729.P761436967004635748.a, A157729.P2013707109334832467.a, A000045, A000045.P11838749114346432762.a, A157725, A157725.P13486500630838488650.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A157729

/-! ## A157729.P16450100910497577354

`A001611(n)+4`
-/

namespace A157729.P16450100910497577354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001611 n + 4

end

end A157729.P16450100910497577354

namespace A157729

/-- `A001611(n)+4` -/
def P16450100910497577354.Spec : Prop :=
  ∀ n, P16450100910497577354.a n = A157729 n

theorem P16450100910497577354.correct : P16450100910497577354.Spec := by
  intro n
  simp only [A157729, Nat.add_sub_cancel, A157729.P16450100910497577354.a, A157729.P2013707109334832467.a, A000045, A000045.P11838749114346432762.a, A001611, A001611.P16593652898942925329.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A157729

/-! ## A157729.P15205867039575250796

`5+A000045(n)`
-/

namespace A157729.P15205867039575250796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 + A000045 n

end

end A157729.P15205867039575250796

namespace A157729

/-- `5+A000045(n)` -/
def P15205867039575250796.Spec : Prop :=
  ∀ n, P15205867039575250796.a n = A157729 n

theorem P15205867039575250796.correct : P15205867039575250796.Spec := by
  intro n
  simp only [A157729, Nat.add_sub_cancel, A157729.P15205867039575250796.a, A157729.P2013707109334832467.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A157729

/-! ## A157729.P5883696292895938428

`A212804(n+1)+5`
-/

namespace A157729.P5883696292895938428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (n + 1) + 5

end

end A157729.P5883696292895938428

namespace A157729

/-- `A212804(n+1)+5` -/
def P5883696292895938428.Spec : Prop :=
  ∀ n, P5883696292895938428.a n = A157729 n

end A157729

/-! ## A157729.P6358615592264331343

`5-A152163(n+2)`
-/

namespace A157729.P6358615592264331343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 - A152163 (n + 2)

end

end A157729.P6358615592264331343

namespace A157729

/-- `5-A152163(n+2)` -/
def P6358615592264331343.Spec : Prop :=
  ∀ n, P6358615592264331343.a n = A157729 n

end A157729

/-! ## A157729.P13144706178672204280

`A103609(2*n)+5`
-/

namespace A157729.P13144706178672204280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103609 (2 * n) + 5

end

end A157729.P13144706178672204280

namespace A157729

/-- `A103609(2*n)+5` -/
def P13144706178672204280.Spec : Prop :=
  ∀ n, P13144706178672204280.a n = A157729 n

end A157729

/-! ## A157729.P8981818241955742186

`A065220(n)+5+n`
-/

namespace A157729.P8981818241955742186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065220 n + 5 + (n : ℤ)

end

end A157729.P8981818241955742186

namespace A157729

/-- `A065220(n)+5+n` -/
def P8981818241955742186.Spec : Prop :=
  ∀ n, P8981818241955742186.a n = A157729 n

theorem P8981818241955742186.correct : P8981818241955742186.Spec := by
  intro n
  simp only [A157729, Nat.add_sub_cancel, A157729.P8981818241955742186.a, A157729.P2013707109334832467.a, A000045, A000045.P11838749114346432762.a, A065220, A065220.P6653459094866898540.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A157729

/-! ## A157729.P3932458445485537345

`A002062(n)+5-n`
-/

namespace A157729.P3932458445485537345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002062 n + (5 - (n : ℤ))

end

end A157729.P3932458445485537345

namespace A157729

/-- `A002062(n)+5-n` -/
def P3932458445485537345.Spec : Prop :=
  ∀ n, P3932458445485537345.a n = A157729 n

theorem P3932458445485537345.correct : P3932458445485537345.Spec := by
  intro n
  simp only [A157729, Nat.add_sub_cancel, A157729.P3932458445485537345.a, A157729.P2013707109334832467.a, A000045, A000045.P11838749114346432762.a, A002062, A002062.P4072436808255348786.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A157729

/-! ## A157729.P13187706561769719386

`A129982(2*n+1)+5`
-/

namespace A157729.P13187706561769719386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129982 (2 * n + 1) + 5

end

end A157729.P13187706561769719386

namespace A157729

/-- `A129982(2*n+1)+5` -/
def P13187706561769719386.Spec : Prop :=
  ∀ n, P13187706561769719386.a n = A157729 n

end A157729

/-! ## A157729.P14410727959878621738

`A010711(n)+A008346(n)`
-/

namespace A157729.P14410727959878621738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010711 n + A008346 n

end

end A157729.P14410727959878621738

namespace A157729

/-- `A010711(n)+A008346(n)` -/
def P14410727959878621738.Spec : Prop :=
  ∀ n, P14410727959878621738.a n = A157729 n

end A157729

/-! ## A157729.P4653099888414767537

`A022961(n)+A002062(n)`
-/

namespace A157729.P4653099888414767537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022961 n + A002062 n

end

end A157729.P4653099888414767537

namespace A157729

/-- `A022961(n)+A002062(n)` -/
def P4653099888414767537.Spec : Prop :=
  ∀ n, P4653099888414767537.a n = A157729 n

theorem P4653099888414767537.correct : P4653099888414767537.Spec := by
  intro n
  simp only [A157729, Nat.add_sub_cancel, A157729.P4653099888414767537.a, A157729.P2013707109334832467.a, A000045, A000045.P11838749114346432762.a, A002062, A002062.P4072436808255348786.a, A022961, A022961.P17065016578754778583.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A157729

/-! ## A157729.P235657289520701082

`A065220(n)+A020710(n)`
-/

namespace A157729.P235657289520701082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065220 n + A020710 n

end

end A157729.P235657289520701082

namespace A157729

/-- `A065220(n)+A020710(n)` -/
def P235657289520701082.Spec : Prop :=
  ∀ n, P235657289520701082.a n = A157729 n

theorem P235657289520701082.correct : P235657289520701082.Spec := by
  intro n
  simp only [A157729, Nat.add_sub_cancel, A157729.P235657289520701082.a, A157729.P2013707109334832467.a, A000045, A000045.P11838749114346432762.a, A020710, A020710.P12161966585787702209.a, A065220, A065220.P6653459094866898540.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A157729

/-!
# A157730: a(n) = 441*n^2 - 488*n + 135.

The programs for A157730, the canonical program `A157730.P13400836615498433639` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A157730 has offset 1).

The definition of A157730 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `441*(n+1)²-488*(n+1)+135` (program `A157730.P13400836615498433639`, by `A157730.P13400836615498433639.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A157730.P9012314232410059664

`ogf((88+659x+135x^2)/(1-3x+3x^2-x^3))`
-/

namespace A157730.P9012314232410059664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [88, 659, 135] [1, -3, 3, -1] n

end

end A157730.P9012314232410059664

namespace A157730

/-- `ogf((88+659x+135x^2)/(1-3x+3x^2-x^3))` -/
def P9012314232410059664.Spec : Prop :=
  ∀ n, P9012314232410059664.a n = A157730 (n + 1)

end A157730

/-! ## A157730.P13400836615498433639

`441*(n+1)²-488*(n+1)+135`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A157730

/-- `441*(n+1)²-488*(n+1)+135` -/
def P13400836615498433639.Spec : Prop :=
  ∀ n, P13400836615498433639.a n = A157730 (n + 1)

theorem P13400836615498433639.correct : P13400836615498433639.Spec := by
  intro n
  simp only [A157730, Nat.add_sub_cancel]

end A157730

/-! ## A157730.P11143262453888555731

`(A304205(n+1)+10)*A017209(n)`
-/

namespace A157730.P11143262453888555731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A304205 (n + 1) + 10) * A017209 n

end

end A157730.P11143262453888555731

namespace A157730

/-- `(A304205(n+1)+10)*A017209(n)` -/
def P11143262453888555731.Spec : Prop :=
  ∀ n, P11143262453888555731.a n = A157730 (n + 1)

theorem P11143262453888555731.correct : P11143262453888555731.Spec := by
  intro n
  simp only [A157730, Nat.add_sub_cancel, A157730.P11143262453888555731.a, A157730.P13400836615498433639.a, A017209, A017209.P14094936957545695605.a, A304205, A304205.P3096693256207395664.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A157730

/-! ## A157730.P16167016464148983977

`round((A157732(n+1)/A157731(n+1))²)`
-/

namespace A157730.P16167016464148983977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((A157732 (n + 1) : ℚ) / (A157731 (n + 1) : ℚ)) ^ 2)

end

end A157730.P16167016464148983977

namespace A157730

/-- `round((A157732(n+1)/A157731(n+1))²)` -/
def P16167016464148983977.Spec : Prop :=
  ∀ n, P16167016464148983977.a n = A157730 (n + 1)

end A157730

/-! ## A157730.P14224631214027599531

`A016993(A016993(n)+2)*A017209(n)`
-/

namespace A157730.P14224631214027599531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016993 (A016993 n + 2).toNat * A017209 n

end

end A157730.P14224631214027599531

namespace A157730

/-- `A016993(A016993(n)+2)*A017209(n)` -/
def P14224631214027599531.Spec : Prop :=
  ∀ n, P14224631214027599531.a n = A157730 (n + 1)

end A157730

/-! ## A157730.P16420981162257405891

`(A017017(A017017(n))-2)*A017209(n)`
-/

namespace A157730.P16420981162257405891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017017 (A017017 n).toNat - 2) * A017209 n

end

end A157730.P16420981162257405891

namespace A157730

/-- `(A017017(A017017(n))-2)*A017209(n)` -/
def P16420981162257405891.Spec : Prop :=
  ∀ n, P16420981162257405891.a n = A157730 (n + 1)

end A157730

/-! ## A157730.P13309970125384404424

`A016777(A016777(n))*A016993(A017017(n))`
-/

namespace A157730.P13309970125384404424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 (A016777 n).toNat * A016993 (A017017 n).toNat

end

end A157730.P13309970125384404424

namespace A157730

/-- `A016777(A016777(n))*A016993(A017017(n))` -/
def P13309970125384404424.Spec : Prop :=
  ∀ n, P13309970125384404424.a n = A157730 (n + 1)

end A157730

/-! ## A157730.P8449170042950108882

`A157365(A017209(n))/9`
-/

namespace A157730.P8449170042950108882
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A157365 (A017209 n).toNat : ℚ) / 9

end

end A157730.P8449170042950108882

namespace A157730

/-- `A157365(A017209(n))/9` -/
def P8449170042950108882.Spec : Prop :=
  ∀ n, P8449170042950108882.a n = (A157730 (n + 1) : ℚ)

end A157730

/-!
# A157731: a(n) = 18522*n - 10248.

The programs for A157731, there is no canonical definition to state claims against.
-/

/-! ## A157731.P2396615748308993515

`round(A157732(n+1)/sqrt(A157730(n+1)))`
-/

namespace A157731.P2396615748308993515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A157732 (n + 1) : ℝ) / Real.sqrt (A157730 (n + 1) : ℝ))

end

end A157731.P2396615748308993515

/-!
# A157732: a(n) = 388962*n^2 - 430416*n + 119071.

The programs for A157732, there is no canonical definition to state claims against.
-/

/-! ## A157732.P14733835692962035191

`round(sqrt(A157730(n+1))*A157731(n+1))`
-/

namespace A157732.P14733835692962035191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A157730 (n + 1) : ℝ) * (A157731 (n + 1) : ℝ))

end

end A157732.P14733835692962035191

/-! ## A157732.P11482768808171368797

`A157367(9*n+4)`
-/

namespace A157732.P11482768808171368797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157367 (9 * n + 4)

end

end A157732.P11482768808171368797

/-! ## A157732.P4380451657843502079

`or(1, A157367(A017209(n)))`
-/

namespace A157732.P4380451657843502079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A157367 (A017209 n).toNat)

end

end A157732.P4380451657843502079

/-! ## A157732.P4511473780719534298

`A157367(A017209(n))-A244895(5*n)`
-/

namespace A157732.P4511473780719534298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157367 (A017209 n).toNat - A244895 (5 * n)

end

end A157732.P4511473780719534298

/-! ## A157732.P14239401440518519174

`lcm(A034947(n+1), A157367(A017209(n)))`
-/

namespace A157732.P14239401440518519174
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A034947 (n + 1)) (A157367 (A017209 n).toNat)

end

end A157732.P14239401440518519174

/-! ## A157732.P12685094366174749672

`A157367(A017209(n))/A054576(A000040(n+1))`
-/

namespace A157732.P12685094366174749672
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A157367 (A017209 n).toNat : ℚ) / (A054576 (A000040 (n + 1)).toNat : ℚ)

end

end A157732.P12685094366174749672

/-! ## A157732.P16157808211909972153

`A318757(∑[n])+A157367(A017209(n))`
-/

namespace A157732.P16157808211909972153
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318757 (∑ j ∈ Finset.range (n + 1), f1 j) + A157367 (A017209 n).toNat

end

end A157732.P16157808211909972153

/-!
# A157733: a(0)=2, a(1)=3. Then 2 or 22 followed by a string of 3's such that the sum of the digits of a(n) is equal to prime(n).

The programs for A157733, there is no canonical definition to state claims against.
-/

/-! ## A157733.P823579460035122247

`A111095(A378029(n+2))`
-/

namespace A157733.P823579460035122247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111095 (A378029 (n + 2)).toNat

end

end A157733.P823579460035122247

/-!
# A157734: a(n) = 441*n^2 - 394*n + 88.

The programs for A157734, the canonical program `A157734.P3520510911625101798` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A157734 has offset 1).

The definition of A157734 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `441*(n+1)²-394*(n+1)+88` (program `A157734.P3520510911625101798`, by `A157734.P3520510911625101798.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A157734.P6796696865217287281

`ogf((135+659x+88x^2)/(1-3x+3x^2-x^3))`
-/

namespace A157734.P6796696865217287281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [135, 659, 88] [1, -3, 3, -1] n

end

end A157734.P6796696865217287281

namespace A157734

/-- `ogf((135+659x+88x^2)/(1-3x+3x^2-x^3))` -/
def P6796696865217287281.Spec : Prop :=
  ∀ n, P6796696865217287281.a n = A157734 (n + 1)

end A157734

/-! ## A157734.P3520510911625101798

`441*(n+1)²-394*(n+1)+88`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A157734

/-- `441*(n+1)²-394*(n+1)+88` -/
def P3520510911625101798.Spec : Prop :=
  ∀ n, P3520510911625101798.a n = A157734 (n + 1)

theorem P3520510911625101798.correct : P3520510911625101798.Spec := by
  intro n
  simp only [A157734, Nat.add_sub_cancel]

end A157734

/-! ## A157734.P16438837492094961590

`round((A157736(n+1)/A157735(n+1))²)`
-/

namespace A157734.P16438837492094961590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((A157736 (n + 1) : ℚ) / (A157735 (n + 1) : ℚ)) ^ 2)

end

end A157734.P16438837492094961590

namespace A157734

/-- `round((A157736(n+1)/A157735(n+1))²)` -/
def P16438837492094961590.Spec : Prop :=
  ∀ n, P16438837492094961590.a n = A157734 (n + 1)

end A157734

/-! ## A157734.P5569475438341102401

`(A017377(4*n+1)+9*n+8)*(9*n+5)`
-/

namespace A157734.P5569475438341102401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017377 (4 * n + 1) + (9 * n + 8 : ℤ)) * (9 * n + 5 : ℤ)

end

end A157734.P5569475438341102401

namespace A157734

/-- `(A017377(4*n+1)+9*n+8)*(9*n+5)` -/
def P5569475438341102401.Spec : Prop :=
  ∀ n, P5569475438341102401.a n = A157734 (n + 1)

theorem P5569475438341102401.correct : P5569475438341102401.Spec := by
  intro n
  simp only [A157734, Nat.add_sub_cancel, A157734.P5569475438341102401.a, A157734.P3520510911625101798.a, A017377, A017377.P8985772118360569930.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A157734

/-! ## A157734.P10956376577849819265

`A017053(A017017(n))*A017221(n)`
-/

namespace A157734.P10956376577849819265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017053 (A017017 n).toNat * A017221 n

end

end A157734.P10956376577849819265

namespace A157734

/-- `A017053(A017017(n))*A017221(n)` -/
def P10956376577849819265.Spec : Prop :=
  ∀ n, P10956376577849819265.a n = A157734 (n + 1)

end A157734

/-! ## A157734.P15013001821215447139

`A016789(A016777(n))*A017053(A017017(n))`
-/

namespace A157734.P15013001821215447139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016789 (A016777 n).toNat * A017053 (A017017 n).toNat

end

end A157734.P15013001821215447139

namespace A157734

/-- `A016789(A016777(n))*A017053(A017017(n))` -/
def P15013001821215447139.Spec : Prop :=
  ∀ n, P15013001821215447139.a n = A157734 (n + 1)

end A157734

/-! ## A157734.P14827697824712823979

`A157362(A017221(n))/9`
-/

namespace A157734.P14827697824712823979
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A157362 (A017221 n).toNat : ℚ) / 9

end

end A157734.P14827697824712823979

namespace A157734

/-- `A157362(A017221(n))/9` -/
def P14827697824712823979.Spec : Prop :=
  ∀ n, P14827697824712823979.a n = (A157734 (n + 1) : ℚ)

end A157734

/-! ## A157734.P2798609412813793955

`∩[A010342(n+1), A020443(n+1)]`
-/

namespace A157734.P2798609412813793955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010342 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020443 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A157734.P2798609412813793955

namespace A157734

/-- `∩[A010342(n+1), A020443(n+1)]` -/
def P2798609412813793955.Spec : Prop :=
  ∀ n, (P2798609412813793955.a n : ℤ) = A157734 (n + 1)

end A157734

/-!
# A157735: a(n) = 18522*n - 8274.

The programs for A157735, the canonical program `A157735.P9784472153742863353` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A157735 has offset 1).

The definition of A157735 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A157735.P9784472153742863353

`round(A157736(n+1)/sqrt(A157734(n+1)))`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A157735

/-- `round(A157736(n+1)/sqrt(A157734(n+1)))` -/
def P9784472153742863353.Spec : Prop :=
  ∀ n, P9784472153742863353.a n = A157735 (n + 1)

theorem P9784472153742863353.correct : P9784472153742863353.Spec := by
  intro n
  simp only [A157735, Nat.add_sub_cancel]

end A157735

/-!
# A157736: a(n) = 388962*n^2 - 347508*n + 77617.

The programs for A157736, the canonical program `A157736.P2524852362038602371` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A157736 has offset 1).

The definition of A157736 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1111 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A157736.P2524852362038602371

`A157364(9*n+5)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A157736

/-- `A157364(9*n+5)` -/
def P2524852362038602371.Spec : Prop :=
  ∀ n, P2524852362038602371.a n = A157736 (n + 1)

theorem P2524852362038602371.correct : P2524852362038602371.Spec := by
  intro n
  simp only [A157736, Nat.add_sub_cancel]

end A157736

/-! ## A157736.P10228156248653410077

`or(1, A157364(A017221(n)))`
-/

namespace A157736.P10228156248653410077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A157364 (A017221 n).toNat)

end

end A157736.P10228156248653410077

namespace A157736

/-- `or(1, A157364(A017221(n)))` -/
def P10228156248653410077.Spec : Prop :=
  ∀ n, P10228156248653410077.a n = A157736 (n + 1)

end A157736

/-! ## A157736.P2987016679393959543

`A157364(A017221(n))+A000038(n+1)`
-/

namespace A157736.P2987016679393959543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157364 (A017221 n).toNat + A000038 (n + 1)

end

end A157736.P2987016679393959543

namespace A157736

/-- `A157364(A017221(n))+A000038(n+1)` -/
def P2987016679393959543.Spec : Prop :=
  ∀ n, P2987016679393959543.a n = A157736 (n + 1)

end A157736

/-! ## A157736.P3591713481132983812

`A157364(A017221(n))-A000035(2*n)`
-/

namespace A157736.P3591713481132983812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157364 (A017221 n).toNat - A000035 (2 * n)

end

end A157736.P3591713481132983812

namespace A157736

/-- `A157364(A017221(n))-A000035(2*n)` -/
def P3591713481132983812.Spec : Prop :=
  ∀ n, P3591713481132983812.a n = A157736 (n + 1)

end A157736

/-! ## A157736.P8418106968020312258

`A000034(2*n)*A157364(A017221(n))`
-/

namespace A157736.P8418106968020312258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (2 * n) * A157364 (A017221 n).toNat

end

end A157736.P8418106968020312258

namespace A157736

/-- `A000034(2*n)*A157364(A017221(n))` -/
def P8418106968020312258.Spec : Prop :=
  ∀ n, P8418106968020312258.a n = A157736 (n + 1)

end A157736

/-! ## A157736.P17521144833481130534

`A000041(((-1)^n)²)*A157364(A017221(n))`
-/

namespace A157736.P17521144833481130534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (((-1) ^ n) ^ 2).toNat * A157364 (A017221 n).toNat

end

end A157736.P17521144833481130534

namespace A157736

/-- `A000041(((-1)^n)²)*A157364(A017221(n))` -/
def P17521144833481130534.Spec : Prop :=
  ∀ n, P17521144833481130534.a n = A157736 (n + 1)

end A157736

/-! ## A157736.P6267169004677534828

`A007318(C(n, n²)!)*A157364(A017221(n))`
-/

namespace A157736.P6267169004677534828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.factorial (Nat.choose n (n ^ 2))) * A157364 (A017221 n).toNat

end

end A157736.P6267169004677534828

namespace A157736

/-- `A007318(C(n, n²)!)*A157364(A017221(n))` -/
def P6267169004677534828.Spec : Prop :=
  ∀ n, P6267169004677534828.a n = A157736 (n + 1)

end A157736

/-! ## A157736.P3994936414358500504

`A007318(∑[n])*A157364(A017221(n))`
-/

namespace A157736.P3994936414358500504
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A157364 (A017221 n).toNat

end

end A157736.P3994936414358500504

namespace A157736

/-- `A007318(∑[n])*A157364(A017221(n))` -/
def P3994936414358500504.Spec : Prop :=
  ∀ n, P3994936414358500504.a n = A157736 (n + 1)

end A157736

/-! ## A157736.P6953455687878990087

`A157364(A017221(n))/A035214(A027379(n+2))`
-/

namespace A157736.P6953455687878990087
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A157364 (A017221 n).toNat : ℚ) / (A035214 (A027379 (n + 2)).toNat : ℚ)

end

end A157736.P6953455687878990087

namespace A157736

/-- `A157364(A017221(n))/A035214(A027379(n+2))` -/
def P6953455687878990087.Spec : Prop :=
  ∀ n, P6953455687878990087.a n = (A157736 (n + 1) : ℚ)

end A157736

/-!
# A157737: a(n) = 441*n^2 - 2*n.

The programs for A157737, the canonical program `A157737.P14916005074794149108` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A157737 has offset 1).

The definition of A157737 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `441*(n+1)²-2*(n+1)` (program `A157737.P14916005074794149108`, by `A157737.P14916005074794149108.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A157737.P1086103667601024775

`ogf((439+443x)/(1-3x+3x^2-x^3))`
-/

namespace A157737.P1086103667601024775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [439, 443] [1, -3, 3, -1] n

end

end A157737.P1086103667601024775

namespace A157737

/-- `ogf((439+443x)/(1-3x+3x^2-x^3))` -/
def P1086103667601024775.Spec : Prop :=
  ∀ n, P1086103667601024775.a n = A157737 (n + 1)

end A157737

/-! ## A157737.P14916005074794149108

`441*(n+1)²-2*(n+1)`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A157737

/-- `441*(n+1)²-2*(n+1)` -/
def P14916005074794149108.Spec : Prop :=
  ∀ n, P14916005074794149108.a n = A157737 (n + 1)

theorem P14916005074794149108.correct : P14916005074794149108.Spec := by
  intro n
  simp only [A157737, Nat.add_sub_cancel]

end A157737

/-! ## A157737.P14822228620977251083

`(n+1)*(A158319(n+1)-1)`
-/

namespace A157737.P14822228620977251083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A158319 (n + 1) - 1)

end

end A157737.P14822228620977251083

namespace A157737

/-- `(n+1)*(A158319(n+1)-1)` -/
def P14822228620977251083.Spec : Prop :=
  ∀ n, P14822228620977251083.a n = A157737 (n + 1)

end A157737

/-! ## A157737.P12986062584047712286

`(n+1)*(A158322(n+1)-3)`
-/

namespace A157737.P12986062584047712286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A158322 (n + 1) - 3)

end

end A157737.P12986062584047712286

namespace A157737

/-- `(n+1)*(A158322(n+1)-3)` -/
def P12986062584047712286.Spec : Prop :=
  ∀ n, P12986062584047712286.a n = A157737 (n + 1)

theorem P12986062584047712286.correct : P12986062584047712286.Spec := by
  intro n
  simp only [A157737, Nat.add_sub_cancel, A157737.P12986062584047712286.a, A157737.P14916005074794149108.a, A158322, A158322.P9669721433400368136.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A157737

/-! ## A157737.P7005398924565491042

`∑[A158322(2*n+1)-3]`
-/

namespace A157737.P7005398924565491042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158322 (2 * n + 1) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A157737.P7005398924565491042

namespace A157737

/-- `∑[A158322(2*n+1)-3]` -/
def P7005398924565491042.Spec : Prop :=
  ∀ n, P7005398924565491042.a n = A157737 (n + 1)

end A157737

/-! ## A157737.P16404296204550417582

`A158321(2*(n+1))%A158321(n+1)`
-/

namespace A157737.P16404296204550417582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A158321 (2 * (n + 1))) (A158321 (n + 1))

end

end A157737.P16404296204550417582

namespace A157737

/-- `A158321(2*(n+1))%A158321(n+1)` -/
def P16404296204550417582.Spec : Prop :=
  ∀ n, P16404296204550417582.a n = A157737 (n + 1)

end A157737

/-!
# A157738: a(n) = 18522n - 42.

The programs for A157738, the canonical program `A157738.P790782766719659964` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A157738 has offset 1).

The definition of A157738 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A157738.P790782766719659964

`42*A158319(n+1)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A157738

/-- `42*A158319(n+1)` -/
def P790782766719659964.Spec : Prop :=
  ∀ n, P790782766719659964.a n = A157738 (n + 1)

theorem P790782766719659964.correct : P790782766719659964.Spec := by
  intro n
  simp only [A157738, Nat.add_sub_cancel]

end A157738

/-!
# A157739: a(n) = 388962*n^2 - 1764*n + 1.

The programs for A157739, the canonical program `A157739.P2552013654737498011` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A157739 has offset 1).

The definition of A157739 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A157739.P2552013654737498011

`2*A158319(n+1)²-1`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A157739

/-- `2*A158319(n+1)²-1` -/
def P2552013654737498011.Spec : Prop :=
  ∀ n, P2552013654737498011.a n = A157739 (n + 1)

theorem P2552013654737498011.correct : P2552013654737498011.Spec := by
  intro n
  simp only [A157739, Nat.add_sub_cancel]

end A157739

/-! ## A157739.P11702491374902413797

`round(sqrt(A157737(n+1))*A157738(n+1))`
-/

namespace A157739.P11702491374902413797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A157737 (n + 1) : ℝ) * (A157738 (n + 1) : ℝ))

end

end A157739.P11702491374902413797

namespace A157739

/-- `round(sqrt(A157737(n+1))*A157738(n+1))` -/
def P11702491374902413797.Spec : Prop :=
  ∀ n, P11702491374902413797.a n = A157739 (n + 1)

end A157739

/-! ## A157739.P12435839627451317099

`A008683(A045316(n+1))+2*A158319(n+1)²`
-/

namespace A157739.P12435839627451317099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A045316 (n + 1)).toNat + 2 * A158319 (n + 1) ^ 2

end

end A157739.P12435839627451317099

namespace A157739

/-- `A008683(A045316(n+1))+2*A158319(n+1)²` -/
def P12435839627451317099.Spec : Prop :=
  ∀ n, P12435839627451317099.a n = A157739 (n + 1)

end A157739

/-! ## A157739.P6314906055651177435

`A157741(2*(n+1))%(1-A157741(n+1))`
-/

namespace A157739.P6314906055651177435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A157741 (2 * (n + 1))) (1 - A157741 (n + 1))

end

end A157739.P6314906055651177435

namespace A157739

/-- `A157741(2*(n+1))%(1-A157741(n+1))` -/
def P6314906055651177435.Spec : Prop :=
  ∀ n, P6314906055651177435.a n = A157739 (n + 1)

end A157739

/-! ## A157739.P9449672140650044846

`A157364(9*(n+1))`
-/

namespace A157739.P9449672140650044846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157364 (9 * (n + 1))

end

end A157739.P9449672140650044846

namespace A157739

/-- `A157364(9*(n+1))` -/
def P9449672140650044846.Spec : Prop :=
  ∀ n, P9449672140650044846.a n = A157739 (n + 1)

end A157739

/-! ## A157739.P18228240920574097189

`A008683(A066028(n+1))+2*A158319(n+1)²`
-/

namespace A157739.P18228240920574097189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A066028 (n + 1)).toNat + 2 * A158319 (n + 1) ^ 2

end

end A157739.P18228240920574097189

namespace A157739

/-- `A008683(A066028(n+1))+2*A158319(n+1)²` -/
def P18228240920574097189.Spec : Prop :=
  ∀ n, P18228240920574097189.a n = A157739 (n + 1)

end A157739

/-! ## A157739.P5610260782807730951

`A008683(A142737(n+1))+2*A158319(n+1)²`
-/

namespace A157739.P5610260782807730951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A142737 (n + 1)).toNat + 2 * A158319 (n + 1) ^ 2

end

end A157739.P5610260782807730951

namespace A157739

/-- `A008683(A142737(n+1))+2*A158319(n+1)²` -/
def P5610260782807730951.Spec : Prop :=
  ∀ n, P5610260782807730951.a n = A157739 (n + 1)

end A157739

/-!
# A157740: a(n) = 18522*n + 42.

The programs for A157740, the canonical program `A157740.P16474577948140217042` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A157740 has offset 1).

The definition of A157740 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A157740.P16474577948140217042

`42*A158322(n+1)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A157740

/-- `42*A158322(n+1)` -/
def P16474577948140217042.Spec : Prop :=
  ∀ n, P16474577948140217042.a n = A157740 (n + 1)

theorem P16474577948140217042.correct : P16474577948140217042.Spec := by
  intro n
  simp only [A157740, Nat.add_sub_cancel]

end A157740

/-!
# A157741: a(n) = 388962*n^2 + 1764*n + 1.

The programs for A157741, the canonical program `A157741.P13625461882730976066` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A157741 has offset 1).

The definition of A157741 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A157741.P13625461882730976066

`2*A158322(n+1)²-1`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A157741

/-- `2*A158322(n+1)²-1` -/
def P13625461882730976066.Spec : Prop :=
  ∀ n, P13625461882730976066.a n = A157741 (n + 1)

theorem P13625461882730976066.correct : P13625461882730976066.Spec := by
  intro n
  simp only [A157741, Nat.add_sub_cancel]

end A157741

/-! ## A157741.P4383955623481827158

`A008836(A151800(n))+2*A158322(n+1)²`
-/

namespace A157741.P4383955623481827158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (A151800 n).toNat + 2 * A158322 (n + 1) ^ 2

end

end A157741.P4383955623481827158

namespace A157741

/-- `A008836(A151800(n))+2*A158322(n+1)²` -/
def P4383955623481827158.Spec : Prop :=
  ∀ n, P4383955623481827158.a n = A157741 (n + 1)

end A157741

/-! ## A157741.P3258608358022082077

`A323191(2*n+1)+2*A158322(n+1)²`
-/

namespace A157741.P3258608358022082077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323191 (2 * n + 1) + 2 * A158322 (n + 1) ^ 2

end

end A157741.P3258608358022082077

namespace A157741

/-- `A323191(2*n+1)+2*A158322(n+1)²` -/
def P3258608358022082077.Spec : Prop :=
  ∀ n, P3258608358022082077.a n = A157741 (n + 1)

end A157741

/-! ## A157741.P15836749582063137885

`A008683(record[A014963(n+2)])+2*A158322(n+1)²`
-/

namespace A157741.P15836749582063137885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat + 2 * A158322 (n + 1) ^ 2

end

end A157741.P15836749582063137885

namespace A157741

/-- `A008683(record[A014963(n+2)])+2*A158322(n+1)²` -/
def P15836749582063137885.Spec : Prop :=
  ∀ n, P15836749582063137885.a n = A157741 (n + 1)

end A157741

/-! ## A157741.P4680897588596969294

`A157367(9*(n+1))`
-/

namespace A157741.P4680897588596969294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157367 (9 * (n + 1))

end

end A157741.P4680897588596969294

namespace A157741

/-- `A157367(9*(n+1))` -/
def P4680897588596969294.Spec : Prop :=
  ∀ n, P4680897588596969294.a n = A157741 (n + 1)

end A157741

/-! ## A157741.P18338477610669992923

`A008683(A138122(n+1))+2*A158322(n+1)²`
-/

namespace A157741.P18338477610669992923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A138122 (n + 1)).toNat + 2 * A158322 (n + 1) ^ 2

end

end A157741.P18338477610669992923

namespace A157741

/-- `A008683(A138122(n+1))+2*A158322(n+1)²` -/
def P18338477610669992923.Spec : Prop :=
  ∀ n, P18338477610669992923.a n = A157741 (n + 1)

end A157741

/-! ## A157741.P8408559024990203471

`A008683(A014223(n+1))+2*A158322(n+1)²`
-/

namespace A157741.P8408559024990203471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A014223 (n + 1)).toNat + 2 * A158322 (n + 1) ^ 2

end

end A157741.P8408559024990203471

namespace A157741

/-- `A008683(A014223(n+1))+2*A158322(n+1)²` -/
def P8408559024990203471.Spec : Prop :=
  ∀ n, P8408559024990203471.a n = A157741 (n + 1)

end A157741

/-! ## A157741.P3510537651282763507

`A008683(A156116(n+1))+2*A158322(n+1)²`
-/

namespace A157741.P3510537651282763507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A156116 (n + 1)).toNat + 2 * A158322 (n + 1) ^ 2

end

end A157741.P3510537651282763507

namespace A157741

/-- `A008683(A156116(n+1))+2*A158322(n+1)²` -/
def P3510537651282763507.Spec : Prop :=
  ∀ n, P3510537651282763507.a n = A157741 (n + 1)

end A157741

/-! ## A157741.P9540209347744519181

`A321804(A140188(n+1))+2*A158322(n+1)²`
-/

namespace A157741.P9540209347744519181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321804 (A140188 (n + 1)).toNat + 2 * A158322 (n + 1) ^ 2

end

end A157741.P9540209347744519181

namespace A157741

/-- `A321804(A140188(n+1))+2*A158322(n+1)²` -/
def P9540209347744519181.Spec : Prop :=
  ∀ n, P9540209347744519181.a n = A157741 (n + 1)

end A157741

/-! ## A157741.P9306115570209315263

`A008683(A269414(n+1))+2*A158322(n+1)²`
-/

namespace A157741.P9306115570209315263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A269414 (n + 1)).toNat + 2 * A158322 (n + 1) ^ 2

end

end A157741.P9306115570209315263

namespace A157741

/-- `A008683(A269414(n+1))+2*A158322(n+1)²` -/
def P9306115570209315263.Spec : Prop :=
  ∀ n, P9306115570209315263.a n = A157741 (n + 1)

end A157741

/-!
# A157742: A006094(n+3) mod 9.

The programs for A157742, the canonical program `A157742.P14907763091943535847` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A157742 has offset 0).

The definition of A157742 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A157742.P14907763091943535847

`A006094(n+3)%9`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A157742

/-- `A006094(n+3)%9` -/
def P14907763091943535847.Spec : Prop :=
  ∀ n, P14907763091943535847.a n = A157742 n

theorem P14907763091943535847.correct : P14907763091943535847.Spec := by
  intro n
  simp only [A157742]

end A157742

/-! ## A157742.P17590817026270209720

`dr(A006094(n+3))`
-/

namespace A157742.P17590817026270209720
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A006094 (n + 3))

end

end A157742.P17590817026270209720

namespace A157742

/-- `dr(A006094(n+3))` -/
def P17590817026270209720.Spec : Prop :=
  ∀ n, (P17590817026270209720.a n : ℤ) = A157742 n

end A157742

/-! ## A157742.P3628724145326912513

`dr(sqrt(A166329(n+3)))`
-/

namespace A157742.P3628724145326912513
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (SequenceMachineLib.roundAway (Real.sqrt (A166329 (n + 3) : ℝ)))

end

end A157742.P3628724145326912513

namespace A157742

/-- `dr(sqrt(A166329(n+3)))` -/
def P3628724145326912513.Spec : Prop :=
  ∀ n, (P3628724145326912513.a n : ℤ) = A157742 n

end A157742

/-! ## A157742.P15692026583422407906

`dr(Δ[A074745(n+2)])`
-/

namespace A157742.P15692026583422407906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074745 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (f1 (n + 1) - f1 n)

end

end A157742.P15692026583422407906

namespace A157742

/-- `dr(Δ[A074745(n+2)])` -/
def P15692026583422407906.Spec : Prop :=
  ∀ n, (P15692026583422407906.a n : ℤ) = A157742 n

end A157742

/-! ## A157742.P15845544424765670169

`dr(A023515(n+4)+1)`
-/

namespace A157742.P15845544424765670169
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A023515 (n + 4) + 1)

end

end A157742.P15845544424765670169

namespace A157742

/-- `dr(A023515(n+4)+1)` -/
def P15845544424765670169.Spec : Prop :=
  ∀ n, (P15845544424765670169.a n : ℤ) = A157742 n

end A157742

/-! ## A157742.P16785283551376644773

`dr(A000040(n+4)*A065091(n+2))`
-/

namespace A157742.P16785283551376644773
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A000040 (n + 4) * A065091 (n + 2))

end

end A157742.P16785283551376644773

namespace A157742

/-- `dr(A000040(n+4)*A065091(n+2))` -/
def P16785283551376644773.Spec : Prop :=
  ∀ n, (P16785283551376644773.a n : ℤ) = A157742 n

end A157742

/-! ## A157742.P11879445780088499580

`dr(A116570(Δ[A028387(n)]))`
-/

namespace A157742.P11879445780088499580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028387 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A116570 (f1 (n + 1) - f1 n).toNat)

end

end A157742.P11879445780088499580

namespace A157742

/-- `dr(A116570(Δ[A028387(n)]))` -/
def P11879445780088499580.Spec : Prop :=
  ∀ n, (P11879445780088499580.a n : ℤ) = A157742 n

end A157742

/-! ## A157742.P10333790777457851426

`dr(A116570(Δ[A028552(n)]))`
-/

namespace A157742.P10333790777457851426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028552 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A116570 (f1 (n + 1) - f1 n).toNat)

end

end A157742.P10333790777457851426

namespace A157742

/-- `dr(A116570(Δ[A028552(n)]))` -/
def P10333790777457851426.Spec : Prop :=
  ∀ n, (P10333790777457851426.a n : ℤ) = A157742 n

end A157742

/-! ## A157742.P15140778351205024724

`dr(A057602(2*n+7))`
-/

namespace A157742.P15140778351205024724
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A057602 (2 * n + 7))

end

end A157742.P15140778351205024724

namespace A157742

/-- `dr(A057602(2*n+7))` -/
def P15140778351205024724.Spec : Prop :=
  ∀ n, (P15140778351205024724.a n : ℤ) = A157742 n

end A157742

/-! ## A157742.P12855355628727914238

`dr(A030661(p?[2*n+1]))`
-/

namespace A157742.P12855355628727914238
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A030661 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)))

end

end A157742.P12855355628727914238

namespace A157742

/-- `dr(A030661(p?[2*n+1]))` -/
def P12855355628727914238.Spec : Prop :=
  ∀ n, (P12855355628727914238.a n : ℤ) = A157742 n

end A157742

/-! ## A157742.P8092188921484814689

`dr(A045969(p?[2*n+1]))`
-/

namespace A157742.P8092188921484814689
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A045969 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)))

end

end A157742.P8092188921484814689

namespace A157742

/-- `dr(A045969(p?[2*n+1]))` -/
def P8092188921484814689.Spec : Prop :=
  ∀ n, (P8092188921484814689.a n : ℤ) = A157742 n

end A157742

/-! ## A157742.P10105919126720579991

`dr(A030661(A000040(n+2)))`
-/

namespace A157742.P10105919126720579991
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A030661 (A000040 (n + 2)).toNat)

end

end A157742.P10105919126720579991

namespace A157742

/-- `dr(A030661(A000040(n+2)))` -/
def P10105919126720579991.Spec : Prop :=
  ∀ n, (P10105919126720579991.a n : ℤ) = A157742 n

end A157742

/-! ## A157742.P17298971212635520590

`dr(A013636(A000040(n+3)))`
-/

namespace A157742.P17298971212635520590
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A013636 (A000040 (n + 3)).toNat)

end

end A157742.P17298971212635520590

namespace A157742

/-- `dr(A013636(A000040(n+3)))` -/
def P17298971212635520590.Spec : Prop :=
  ∀ n, (P17298971212635520590.a n : ℤ) = A157742 n

end A157742

/-! ## A157742.P6185678509572196459

`A119416(A045344(n+2))%9`
-/

namespace A157742.P6185678509572196459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A119416 (A045344 (n + 2)).toNat) 9

end

end A157742.P6185678509572196459

namespace A157742

/-- `A119416(A045344(n+2))%9` -/
def P6185678509572196459.Spec : Prop :=
  ∀ n, P6185678509572196459.a n = A157742 n

end A157742

/-!
# A157744: A recursion triangle sequence: A(n,k) = A(n-1,k-1)+e(n-1,k) where e(n,k)=Sum[(-1)^j Binomial[n + 1, j](k - j)^n, {j, 0, k}].

The programs for A157744, there is no canonical definition to state claims against.
-/

/-! ## A157744.P13468260542424709725

`A163352(or(1, A059297(n)))`
-/

namespace A157744.P13468260542424709725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163352 (Int.lor 1 (A059297 n)).toNat

end

end A157744.P13468260542424709725

/-! ## A157744.P5299606625209604478

`A321728(A242095(n))+A128227(n)`
-/

namespace A157744.P5299606625209604478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321728 (A242095 n).toNat + A128227 n

end

end A157744.P5299606625209604478

/-! ## A157744.P11286196987831838936

`A178031(A002260(n+1)^A318557(n))`
-/

namespace A157744.P11286196987831838936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178031 (SequenceMachineLib.roundAway ((A002260 (n + 1) : ℚ) ^ (A318557 n : ℤ))).toNat

end

end A157744.P11286196987831838936

/-! ## A157744.P7711258049521284589

`A106638(A004197(n))+A001222(A004248(n)!)`
-/

namespace A157744.P7711258049521284589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106638 (A004197 n).toNat + A001222 (Nat.factorial (A004248 n).toNat)

end

end A157744.P7711258049521284589

/-! ## A157744.P4038142169104708353

`A020639(A174669(n))+A001222(A004248(n)!)`
-/

namespace A157744.P4038142169104708353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A174669 n).toNat + A001222 (Nat.factorial (A004248 n).toNat)

end

end A157744.P4038142169104708353

/-!
# A157746: Expansion of 1/(x^11 + x^10 + x^6 + x^5 + x^4 + x^2 + 1).

The programs for A157746, the canonical program `A157746.P538216075262803846` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A157746 has offset 0).

The definition of A157746 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1+x^2+x^4+x^5+x^6+x^10+x^11))` (program `A157746.P538216075262803846`, by `A157746.P538216075262803846.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A157746.P538216075262803846

`ogf(1/(1+x^2+x^4+x^5+x^6+x^10+x^11))`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A157746

/-- `ogf(1/(1+x^2+x^4+x^5+x^6+x^10+x^11))` -/
def P538216075262803846.Spec : Prop :=
  ∀ n, P538216075262803846.a n = A157746 n

theorem P538216075262803846.correct : P538216075262803846.Spec := by
  intro n
  simp only [A157746]

end A157746

/-!
# A157747: Consecutive prime pairs with common start/end decimal digits.

The programs for A157747, there is no canonical definition to state claims against.
-/

/-! ## A157747.P11189311585556425685

`∩[A077652(n+1), A270310(n+1)]`
-/

namespace A157747.P11189311585556425685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077652 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270310 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A157747.P11189311585556425685

/-! ## A157747.P135544310765647931

`∩[A227858(n+1), A270310(n+1)]`
-/

namespace A157747.P135544310765647931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227858 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270310 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A157747.P135544310765647931

/-!
# A157748: Expansion of 1/(-x^11 + x^10 + 2*x^7 - x^6 - x^5 - x^4 - x^2 + 2*x + 1).

The programs for A157748, the canonical program `A157748.P14537477591466058878` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A157748 has offset 0).

The definition of A157748 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1+2x-x^2-x^4-x^5-x^6+2x^7+x^10-x^11))` (program `A157748.P14537477591466058878`, by `A157748.P14537477591466058878.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A157748.P14537477591466058878

`ogf(1/(1+2x-x^2-x^4-x^5-x^6+2x^7+x^10-x^11))`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A157748

/-- `ogf(1/(1+2x-x^2-x^4-x^5-x^6+2x^7+x^10-x^11))` -/
def P14537477591466058878.Spec : Prop :=
  ∀ n, P14537477591466058878.a n = A157748 n

theorem P14537477591466058878.correct : P14537477591466058878.Spec := by
  intro n
  simp only [A157748]

end A157748

/-!
# A157749: Triangle, see Mathematica code.

The programs for A157749, there is no canonical definition to state claims against.
-/

/-! ## A157749.P16907598024508896592

`A120526(A209187(n+1)%A103962(n+1))`
-/

namespace A157749.P16907598024508896592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120526 (Int.tmod (A209187 (n + 1)) (A103962 (n + 1))).toNat

end

end A157749.P16907598024508896592

/-! ## A157749.P17565912873419936814

`A131929(lcm(2, A111418(n)))`
-/

namespace A157749.P17565912873419936814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131929 (Int.lcm 2 (A111418 n))

end

end A157749.P17565912873419936814

/-! ## A157749.P8012056723651080958

`A114986(A276877(n+1)+A024600(n+1))`
-/

namespace A157749.P8012056723651080958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114986 (A276877 (n + 1) + A024600 (n + 1)).toNat

end

end A157749.P8012056723651080958

/-! ## A157749.P14761896715565944658

`A283316(A246900(n)+A090801(3*(n+1)))`
-/

namespace A157749.P14761896715565944658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283316 (A246900 (n + 1) + A090801 (3 * (n + 1))).toNat

end

end A157749.P14761896715565944658

/-! ## A157749.P12836891361844407542

`A373585(A029536(n+1)+A000040(n+1))`
-/

namespace A157749.P12836891361844407542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373585 (A029536 (n + 1) + A000040 (n + 1)).toNat

end

end A157749.P12836891361844407542

/-!
# A157750: Lesser of two consecutive primes p,q such that q^2 - p^2 + 1 = the square of a prime.

The programs for A157750, there is no canonical definition to state claims against.
-/

/-! ## A157750.P5205192286421627799

`filter[A191034(n+1), A118009(#)]`
-/

namespace A157750.P5205192286421627799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191034 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A118009 (f1 j).toNat = 1) n)

end

end A157750.P5205192286421627799

/-! ## A157750.P12697125443714038849

`A191034(lt[A046970(n+1), A152125(n+2)])`
-/

namespace A157750.P12697125443714038849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046970 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152125 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191034 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A157750.P12697125443714038849

/-! ## A157750.P5413253541360649475

`A077800(lt[A333433(2*n+1), A077952(2*n+3)])`
-/

namespace A157750.P5413253541360649475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333433 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077952 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077800 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A157750.P5413253541360649475

/-!
# A157751: Triangle of coefficients of polynomials F(n,x) in descending powers of x generated by F(n,x)=(x+1)*F(n-1,x)+F(n-1,-x), with initial F(0,x)=1.

The programs for A157751, the canonical program `A157751.P9116763435065396008` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A157751 has offset 0).

The definition of A157751 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A157751.P9116763435065396008

`T(n-1,k)+(1+(-1)^(row(n)-col(n)))*T(n-1,k-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A157751

/-- `T(n-1,k)+(1+(-1)^(row(n)-col(n)))*T(n-1,k-1)` -/
def P9116763435065396008.Spec : Prop :=
  ∀ n, P9116763435065396008.a n = (A157751 n : ℚ)

end A157751

/-! ## A157751.P798602962085898203

`2*T(n-1,k-1)+T(n-2,k)` with `a(0)=1, a(1)=1`
-/

namespace A157751.P798602962085898203
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  2 * SequenceMachineLib.triUpLeft a n + SequenceMachineLib.triUp2 a n

end

end A157751.P798602962085898203

namespace A157751

/-- `2*T(n-1,k-1)+T(n-2,k)` -/
def P798602962085898203.Spec : Prop :=
  ∀ n, (P798602962085898203.a n : ℤ) = A157751 n

end A157751

/-! ## A157751.P6634462036684190790

`T(n-2,k)-2*(T(n-1,k-1)-2*T(n-1,k-1))` with `a(0)=1, a(1)=1`
-/

namespace A157751.P6634462036684190790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  SequenceMachineLib.triUp2 a n - 2 * (SequenceMachineLib.triUpLeft a n - 2 * SequenceMachineLib.triUpLeft a n)

end

end A157751.P6634462036684190790

namespace A157751

/-- `T(n-2,k)-2*(T(n-1,k-1)-2*T(n-1,k-1))` -/
def P6634462036684190790.Spec : Prop :=
  ∀ n, P6634462036684190790.a n = A157751 n

end A157751

/-! ## A157751.P11412104886241421246

`T(row(n)-2, col(n))+2*T(n-1,k-1)` with `a(0)=1, a(1)=1`
-/

namespace A157751.P11412104886241421246
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  SequenceMachineLib.triAt a ((SequenceMachineLib.triRow n : ℤ) - 2) (SequenceMachineLib.triCol n : ℤ) + 2 * SequenceMachineLib.triUpLeft a n

end

end A157751.P11412104886241421246

namespace A157751

/-- `T(row(n)-2, col(n))+2*T(n-1,k-1)` -/
def P11412104886241421246.Spec : Prop :=
  ∀ n, (P11412104886241421246.a n : ℤ) = A157751 n

end A157751

/-! ## A157751.P3045626368938228165

`abs(A136523(n))+T(n-1,k-1)` with `a(0)=1`
-/

namespace A157751.P3045626368938228165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  |A136523 n| + SequenceMachineLib.triUpLeft a n

end

end A157751.P3045626368938228165

namespace A157751

/-- `abs(A136523(n))+T(n-1,k-1)` -/
def P3045626368938228165.Spec : Prop :=
  ∀ n, P3045626368938228165.a n = A157751 n

end A157751

/-! ## A157751.P10456046979364779818

`A046854(n)*A059268(n)`
-/

namespace A157751.P10456046979364779818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046854 n * A059268 n

end

end A157751.P10456046979364779818

namespace A157751

/-- `A046854(n)*A059268(n)` -/
def P10456046979364779818.Spec : Prop :=
  ∀ n, P10456046979364779818.a n = A157751 n

end A157751

/-! ## A157751.P17284282204926911962

`A000079(A002262(n))*A046854(n)`
-/

namespace A157751.P17284282204926911962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A002262 n).toNat * A046854 n

end

end A157751.P17284282204926911962

namespace A157751

/-- `A000079(A002262(n))*A046854(n)` -/
def P17284282204926911962.Spec : Prop :=
  ∀ n, P17284282204926911962.a n = A157751 n

end A157751

/-! ## A157751.P11357194789756813709

`A059268(n)*A065941(A061579(n))`
-/

namespace A157751.P11357194789756813709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n * A065941 (A061579 n).toNat

end

end A157751.P11357194789756813709

namespace A157751

/-- `A059268(n)*A065941(A061579(n))` -/
def P11357194789756813709.Spec : Prop :=
  ∀ n, P11357194789756813709.a n = A157751 n

end A157751

/-! ## A157751.P4132295035960983657

`A046854(n)*A130321(A061579(n))`
-/

namespace A157751.P4132295035960983657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046854 n * A130321 (A061579 n).toNat

end

end A157751.P4132295035960983657

namespace A157751

/-- `A046854(n)*A130321(A061579(n))` -/
def P4132295035960983657.Spec : Prop :=
  ∀ n, P4132295035960983657.a n = A157751 n

end A157751

/-! ## A157751.P17865740874472946909

`A011782(A002260(n+1))*A046854(n)`
-/

namespace A157751.P17865740874472946909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A002260 (n + 1)).toNat * A046854 n

end

end A157751.P17865740874472946909

namespace A157751

/-- `A011782(A002260(n+1))*A046854(n)` -/
def P17865740874472946909.Spec : Prop :=
  ∀ n, P17865740874472946909.a n = A157751 n

end A157751

/-! ## A157751.P16634394615721210005

`abs(A053117(n+1)+A053117(n)-A053120(n+1))`
-/

namespace A157751.P16634394615721210005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A053117 (n + 1) + (A053117 n - A053120 (n + 1))|

end

end A157751.P16634394615721210005

namespace A157751

/-- `abs(A053117(n+1)+A053117(n)-A053120(n+1))` -/
def P16634394615721210005.Spec : Prop :=
  ∀ n, P16634394615721210005.a n = A157751 n

end A157751

/-! ## A157751.P10333532680088499068

`abs(A059268(n)*A267482(n))`
-/

namespace A157751.P10333532680088499068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A059268 n * A267482 n|

end

end A157751.P10333532680088499068

namespace A157751

/-- `abs(A059268(n)*A267482(n))` -/
def P10333532680088499068.Spec : Prop :=
  ∀ n, P10333532680088499068.a n = A157751 n

end A157751

/-! ## A157751.P13385776456829633730

`A004525(A131240(n))*A059268(n)`
-/

namespace A157751.P13385776456829633730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A131240 n).toNat * A059268 n

end

end A157751.P13385776456829633730

namespace A157751

/-- `A004525(A131240(n))*A059268(n)` -/
def P13385776456829633730.Spec : Prop :=
  ∀ n, P13385776456829633730.a n = A157751 n

end A157751

/-! ## A157751.P718947934928620522

`A051287(A245300(n))`
-/

namespace A157751.P718947934928620522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051287 (A245300 n).toNat

end

end A157751.P718947934928620522

namespace A157751

/-- `A051287(A245300(n))` -/
def P718947934928620522.Spec : Prop :=
  ∀ n, P718947934928620522.a n = A157751 n

end A157751

/-!
# A157752: Smallest positive integer m such that m == prime(i) (mod prime(i+1)) for all 1<=i<=n.

The programs for A157752, there is no canonical definition to state claims against.
-/

/-! ## A157752.P2086011436457816199

`A352355(n+2)%∏[A065091(n+1)]`
-/

namespace A157752.P2086011436457816199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A352355 (n + 2)) (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A157752.P2086011436457816199

/-! ## A157752.P4955990727449704976

`A268491(∑[n]+1)`
-/

namespace A157752.P4955990727449704976
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268491 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A157752.P4955990727449704976

/-! ## A157752.P16315161672965011976

`A268491(A000124(n))+char[10]`
-/

namespace A157752.P16315161672965011976
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268491 (A000124 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A157752.P16315161672965011976

/-! ## A157752.P1733124362800753035

`A325955(n)+A268491(A000124(n))`
-/

namespace A157752.P1733124362800753035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325955 n + A268491 (A000124 n).toNat

end

end A157752.P1733124362800753035

/-! ## A157752.P17329000583499113054

`lcm(A054977(n), A268491(A000124(n)))`
-/

namespace A157752.P17329000583499113054
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A054977 n) (A268491 (A000124 n).toNat)

end

end A157752.P17329000583499113054

/-!
# A157754: a(1) = 0, a(n) = lcm(A051904(n), A051903(n)) for n >= 2.

The programs for A157754, the canonical program `A157754.P3322715462092773483` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A157754 has offset 1).

The definition of A157754 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, A051904, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A157754.P3322715462092773483

`lcm(A051904(n+1), A051903(n+1))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A157754

/-- `lcm(A051904(n+1), A051903(n+1))` -/
def P3322715462092773483.Spec : Prop :=
  ∀ n, (P3322715462092773483.a n : ℤ) = A157754 (n + 1)

theorem P3322715462092773483.correct : P3322715462092773483.Spec := by
  intro n
  simp only [A157754, Nat.add_sub_cancel]

end A157754

/-! ## A157754.P4694555342655613603

`A240328(A339666(n+1))+A072411(n+1)`
-/

namespace A157754.P4694555342655613603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240328 (A339666 (n + 1)).toNat + A072411 (n + 1)

end

end A157754.P4694555342655613603

namespace A157754

/-- `A240328(A339666(n+1))+A072411(n+1)` -/
def P4694555342655613603.Spec : Prop :=
  ∀ n, P4694555342655613603.a n = A157754 (n + 1)

end A157754

/-! ## A157754.P14800613125973283986

`A072411(n+1)%A227413(A000203(n+1))`
-/

namespace A157754.P14800613125973283986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A072411 (n + 1)) (A227413 (A000203 (n + 1)).toNat)

end

end A157754.P14800613125973283986

namespace A157754

/-- `A072411(n+1)%A227413(A000203(n+1))` -/
def P14800613125973283986.Spec : Prop :=
  ∀ n, P14800613125973283986.a n = A157754 (n + 1)

end A157754

/-! ## A157754.P5046280801588712804

`A072411(n+1)%A000029(n)`
-/

namespace A157754.P5046280801588712804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A072411 (n + 1)) (A000029 n)

end

end A157754.P5046280801588712804

namespace A157754

/-- `A072411(n+1)%A000029(n)` -/
def P5046280801588712804.Spec : Prop :=
  ∀ n, P5046280801588712804.a n = A157754 (n + 1)

end A157754

/-! ## A157754.P17607558635745716971

`and(A072411(n+1), A116362(n))`
-/

namespace A157754.P17607558635745716971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A072411 (n + 1)) (A116362 n)

end

end A157754.P17607558635745716971

namespace A157754

/-- `and(A072411(n+1), A116362(n))` -/
def P17607558635745716971.Spec : Prop :=
  ∀ n, P17607558635745716971.a n = A157754 (n + 1)

end A157754

/-! ## A157754.P5117552273695982550

`and(A072411(n+1), A088041(n+1))`
-/

namespace A157754.P5117552273695982550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A072411 (n + 1)) (A088041 (n + 1))

end

end A157754.P5117552273695982550

namespace A157754

/-- `and(A072411(n+1), A088041(n+1))` -/
def P5117552273695982550.Spec : Prop :=
  ∀ n, P5117552273695982550.a n = A157754 (n + 1)

end A157754

/-! ## A157754.P9270874595422389867

`and(A000225(n), A072411(n+1))`
-/

namespace A157754.P9270874595422389867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000225 n) (A072411 (n + 1))

end

end A157754.P9270874595422389867

namespace A157754

/-- `and(A000225(n), A072411(n+1))` -/
def P9270874595422389867.Spec : Prop :=
  ∀ n, P9270874595422389867.a n = A157754 (n + 1)

end A157754

/-! ## A157754.P11607329143838767758

`and(A072411(n+1), A140252(n))`
-/

namespace A157754.P11607329143838767758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A072411 (n + 1)) (A140252 n)

end

end A157754.P11607329143838767758

namespace A157754

/-- `and(A072411(n+1), A140252(n))` -/
def P11607329143838767758.Spec : Prop :=
  ∀ n, P11607329143838767758.a n = A157754 (n + 1)

end A157754

/-! ## A157754.P17202740045215270135

`and(A053288(n+1), A072411(n+1))`
-/

namespace A157754.P17202740045215270135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A053288 (n + 1)) (A072411 (n + 1))

end

end A157754.P17202740045215270135

namespace A157754

/-- `and(A053288(n+1), A072411(n+1))` -/
def P17202740045215270135.Spec : Prop :=
  ∀ n, P17202740045215270135.a n = A157754 (n + 1)

end A157754

/-! ## A157754.P9315447764269644579

`and(A072411(n+1), A140683(n))`
-/

namespace A157754.P9315447764269644579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A072411 (n + 1)) (A140683 n)

end

end A157754.P9315447764269644579

namespace A157754

/-- `and(A072411(n+1), A140683(n))` -/
def P9315447764269644579.Spec : Prop :=
  ∀ n, P9315447764269644579.a n = A157754 (n + 1)

end A157754

/-! ## A157754.P8901527317984539732

`and(A072411(n+1), A153893(n))`
-/

namespace A157754.P8901527317984539732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A072411 (n + 1)) (A153893 n)

end

end A157754.P8901527317984539732

namespace A157754

/-- `and(A072411(n+1), A153893(n))` -/
def P8901527317984539732.Spec : Prop :=
  ∀ n, P8901527317984539732.a n = A157754 (n + 1)

end A157754

/-! ## A157754.P7671314827985189037

`and(A072411(n+1), A086224(n))`
-/

namespace A157754.P7671314827985189037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A072411 (n + 1)) (A086224 n)

end

end A157754.P7671314827985189037

namespace A157754

/-- `and(A072411(n+1), A086224(n))` -/
def P7671314827985189037.Spec : Prop :=
  ∀ n, P7671314827985189037.a n = A157754 (n + 1)

end A157754

/-! ## A157754.P1535916635288319548

`and(A072411(n+1), A153894(n))`
-/

namespace A157754.P1535916635288319548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A072411 (n + 1)) (A153894 n)

end

end A157754.P1535916635288319548

namespace A157754

/-- `and(A072411(n+1), A153894(n))` -/
def P1535916635288319548.Spec : Prop :=
  ∀ n, P1535916635288319548.a n = A157754 (n + 1)

end A157754

/-! ## A157754.P12801195912359249644

`and(A072411(n+1), A086225(n))`
-/

namespace A157754.P12801195912359249644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A072411 (n + 1)) (A086225 n)

end

end A157754.P12801195912359249644

namespace A157754

/-- `and(A072411(n+1), A086225(n))` -/
def P12801195912359249644.Spec : Prop :=
  ∀ n, P12801195912359249644.a n = A157754 (n + 1)

end A157754

/-! ## A157754.P7964918479555648493

`and(A072411(n+1), A198275(n))`
-/

namespace A157754.P7964918479555648493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A072411 (n + 1)) (A198275 n)

end

end A157754.P7964918479555648493

namespace A157754

/-- `and(A072411(n+1), A198275(n))` -/
def P7964918479555648493.Spec : Prop :=
  ∀ n, P7964918479555648493.a n = A157754 (n + 1)

end A157754

/-! ## A157754.P4511615918040356876

`and(A072411(n+1), A171389(n))`
-/

namespace A157754.P4511615918040356876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A072411 (n + 1)) (A171389 n)

end

end A157754.P4511615918040356876

namespace A157754

/-- `and(A072411(n+1), A171389(n))` -/
def P4511615918040356876.Spec : Prop :=
  ∀ n, P4511615918040356876.a n = A157754 (n + 1)

end A157754

/-! ## A157754.P11201691122675351855

`and(A072411(n+1), A198276(n))`
-/

namespace A157754.P11201691122675351855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A072411 (n + 1)) (A198276 n)

end

end A157754.P11201691122675351855

namespace A157754

/-- `and(A072411(n+1), A198276(n))` -/
def P11201691122675351855.Spec : Prop :=
  ∀ n, P11201691122675351855.a n = A157754 (n + 1)

end A157754

/-! ## A157754.P8590259802533647466

`and(A072411(n+1), A291557(n))`
-/

namespace A157754.P8590259802533647466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A072411 (n + 1)) (A291557 n)

end

end A157754.P8590259802533647466

namespace A157754

/-- `and(A072411(n+1), A291557(n))` -/
def P8590259802533647466.Spec : Prop :=
  ∀ n, P8590259802533647466.a n = A157754 (n + 1)

end A157754

/-! ## A157754.P2767179849283566117

`and(A072411(n+1), A171390(n+1))`
-/

namespace A157754.P2767179849283566117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A072411 (n + 1)) (A171390 (n + 1))

end

end A157754.P2767179849283566117

namespace A157754

/-- `and(A072411(n+1), A171390(n+1))` -/
def P2767179849283566117.Spec : Prop :=
  ∀ n, P2767179849283566117.a n = A157754 (n + 1)

end A157754

/-! ## A157754.P7460373038166717209

`and(A072411(n+1), A118883(n+1))`
-/

namespace A157754.P7460373038166717209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A072411 (n + 1)) (A118883 (n + 1))

end

end A157754.P7460373038166717209

namespace A157754

/-- `and(A072411(n+1), A118883(n+1))` -/
def P7460373038166717209.Spec : Prop :=
  ∀ n, P7460373038166717209.a n = A157754 (n + 1)

end A157754

/-!
# A157755: Primes that hit the value suggested by the prime number theorem "on the nose" according to Kontorovich.

The programs for A157755, there is no canonical definition to state claims against.
-/

/-! ## A157755.P12171864491567056832

`A118751(A007677(n)+n)`
-/

namespace A157755.P12171864491567056832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118751 (A007677 n + (n : ℤ)).toNat

end

end A157755.P12171864491567056832

/-! ## A157755.P7187509066950583230

`A329973(C(A329996(n+1), n)²)`
-/

namespace A157755.P7187509066950583230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329973 (Nat.choose (A329996 (n + 1)).toNat n ^ 2)

end

end A157755.P7187509066950583230

/-! ## A157755.P1457235580068168876

`A063908(eq[A064289(n), A085089(n+1)])`
-/

namespace A157755.P1457235580068168876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064289 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085089 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063908 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A157755.P1457235580068168876

/-!
# A157757: a(n) = 2809*n^2 - 4618*n + 1898.

The programs for A157757, the canonical program `A157757.P11723242960901304847` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A157757 has offset 1).

The definition of A157757 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A157757.P11723242960901304847

`(28*(n+1)-23)²+(45*(n+1)-37)²`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A157757

/-- `(28*(n+1)-23)²+(45*(n+1)-37)²` -/
def P11723242960901304847.Spec : Prop :=
  ∀ n, P11723242960901304847.a n = A157757 (n + 1)

theorem P11723242960901304847.correct : P11723242960901304847.Spec := by
  intro n
  simp only [A157757, Nat.add_sub_cancel]

end A157757

/-! ## A157757.P4202748599118934557

`round((A157759(n+1)/A157758(n+1))²)`
-/

namespace A157757.P4202748599118934557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((A157759 (n + 1) : ℚ) / (A157758 (n + 1) : ℚ)) ^ 2)

end

end A157757.P4202748599118934557

namespace A157757

/-- `round((A157759(n+1)/A157758(n+1))²)` -/
def P4202748599118934557.Spec : Prop :=
  ∀ n, P4202748599118934557.a n = A157757 (n + 1)

end A157757

/-!
# A157758: a(n) = 297754*n - 244754.

The programs for A157758, there is no canonical definition to state claims against.
-/

/-! ## A157758.P14419466765951735142

`round(A157759(n+1)/sqrt(A157757(n+1)))`
-/

namespace A157758.P14419466765951735142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A157759 (n + 1) : ℝ) / Real.sqrt (A157757 (n + 1) : ℝ))

end

end A157758.P14419466765951735142

/-!
# A157759: a(n) = 15780962*n^2 - 25943924*n + 10662963.

The programs for A157759, there is no canonical definition to state claims against.
-/

/-! ## A157759.P11790464625823393350

`round(sqrt(A157757(n+1))*A157758(n+1))`
-/

namespace A157759.P11790464625823393350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A157757 (n + 1) : ℝ) * (A157758 (n + 1) : ℝ))

end

end A157759.P11790464625823393350

/-!
# A157763: First differences of A157644.

The programs for A157763, there is no canonical definition to state claims against.
-/

/-! ## A157763.P13839538761614930522

`Δ[A157644(n+1)]`
-/

namespace A157763.P13839538761614930522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157644 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A157763.P13839538761614930522

/-! ## A157763.P4213636242629890827

`A157644(n+2)-A157644(n+1)`
-/

namespace A157763.P4213636242629890827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157644 (n + 2) - A157644 (n + 1)

end

end A157763.P4213636242629890827

/-! ## A157763.P18410810884073956930

`abs(Δ[A157644(A008619(2*n))])`
-/

namespace A157763.P18410810884073956930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157644 (A008619 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A157763.P18410810884073956930

/-! ## A157763.P17515519519121633930

`Δ[eq[3, A090822(n+1)]]`
-/

namespace A157763.P17515519519121633930
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090822 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A157763.P17515519519121633930

/-! ## A157763.P6553149376715779055

`Δ[record[A157644(A134478(n))]]`
-/

namespace A157763.P6553149376715779055
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157644 (A134478 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A157763.P6553149376715779055

/-! ## A157763.P15400879643672640558

`Δ[record[A157644(A193739(n))]]`
-/

namespace A157763.P15400879643672640558
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157644 (A193739 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A157763.P15400879643672640558

/-! ## A157763.P8222981902804944697

`Δ[record[A157644(A137734(n))]]`
-/

namespace A157763.P8222981902804944697
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157644 (A137734 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A157763.P8222981902804944697

/-!
# A157764: Primes p such that p^16 + 2^16 is also prime.

The programs for A157764, there is no canonical definition to state claims against.
-/

/-! ## A157764.P10195512240301971812

`A132260(∑[n+2]+2)`
-/

namespace A157764.P10195512240301971812
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132260 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A157764.P10195512240301971812

/-! ## A157764.P14870589981465687826

`p?[A025581(n)*A132260(n+3)]`
-/

namespace A157764.P14870589981465687826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n * A132260 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A157764.P14870589981465687826

/-! ## A157764.P1947129520409641629

`p?[A132260(n+3)*A268820(n)]`
-/

namespace A157764.P1947129520409641629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132260 (n + 3) * A268820 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A157764.P1947129520409641629

/-! ## A157764.P688235426182446105

`p?[A099375(n+1)*A132260(n+3)]`
-/

namespace A157764.P688235426182446105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 (n + 1) * A132260 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A157764.P688235426182446105

/-! ## A157764.P11555432961927400885

`p?[A130321(n+1)*A132260(n+3)]`
-/

namespace A157764.P11555432961927400885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 (n + 1) * A132260 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A157764.P11555432961927400885

/-!
# A157765: Expansion of 2*(1 - x) / (1 - 10*x - 7*x^2).

The programs for A157765, the canonical program `A157765.P9354611592345884463` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A157765 has offset 0).

The definition of A157765 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((2-2x)/(1-10x-7x^2))` (program `A157765.P9354611592345884463`, by `A157765.P9354611592345884463.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A157765.P9354611592345884463

`ogf((2-2x)/(1-10x-7x^2))`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A157765

/-- `ogf((2-2x)/(1-10x-7x^2))` -/
def P9354611592345884463.Spec : Prop :=
  ∀ n, P9354611592345884463.a n = A157765 n

theorem P9354611592345884463.correct : P9354611592345884463.Spec := by
  intro n
  simp only [A157765]

end A157765

/-! ## A157765.P7457325233404100401

`10*a(n-1)+7*a(n-2)` with `a(0)=2, a(1)=18`
-/

namespace A157765.P7457325233404100401
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 18] fun n a =>
  10 * a (n - 1) + 7 * a (n - 2)

end

end A157765.P7457325233404100401

namespace A157765

/-- `10*a(n-1)+7*a(n-2)` -/
def P7457325233404100401.Spec : Prop :=
  ∀ n, (P7457325233404100401.a n : ℤ) = A157765 n

end A157765

/-! ## A157765.P3597850633422537292

`Δ[2*A015589(n)]`
-/

namespace A157765.P3597850633422537292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A015589 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A157765.P3597850633422537292

namespace A157765

/-- `Δ[2*A015589(n)]` -/
def P3597850633422537292.Spec : Prop :=
  ∀ n, P3597850633422537292.a n = A157765 n

end A157765

/-! ## A157765.P2135013772673586806

`2*(A015589(n+1)-A015589(n))`
-/

namespace A157765.P2135013772673586806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A015589 (n + 1) - A015589 n)

end

end A157765.P2135013772673586806

namespace A157765

/-- `2*(A015589(n+1)-A015589(n))` -/
def P2135013772673586806.Spec : Prop :=
  ∀ n, P2135013772673586806.a n = A157765 n

end A157765

/-!
# A157769: a(n) = 8984250*n - 6468330.

The programs for A157769, there is no canonical definition to state claims against.
-/

/-! ## A157769.P1886712528897379818

`A157803(n+1)+A157821(n+1)-A157797(n+1)`
-/

namespace A157769.P1886712528897379818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157803 (n + 1) + (A157821 (n + 1) - A157797 (n + 1))

end

end A157769.P1886712528897379818

/-!
# A157772: Numbers n such that 100n + 13 is prime.

The programs for A157772, the canonical program `A157772.P15998666800682161409` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A157772 has offset 1).

The definition of A157772 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 243 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A157772.P16361296012792213676

`eq[3, A096915(10*n+1)]`
-/

namespace A157772.P16361296012792213676
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096915 (10 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A157772.P16361296012792213676

namespace A157772

/-- `eq[3, A096915(10*n+1)]` -/
def P16361296012792213676.Spec : Prop :=
  ∀ n, (P16361296012792213676.a n : ℤ) = A157772 (n + 1)

end A157772

/-! ## A157772.P13049833580638944769

`eq[1, A001222(10*10*n+13)]`
-/

namespace A157772.P13049833580638944769
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (10 * (10 * n) + 13)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A157772.P13049833580638944769

namespace A157772

/-- `eq[1, A001222(10*10*n+13)]` -/
def P13049833580638944769.Spec : Prop :=
  ∀ n, (P13049833580638944769.a n : ℤ) = A157772 (n + 1)

end A157772

/-! ## A157772.P9255459997859205859

`eq[2, A000005(10*10*n+13)]`
-/

namespace A157772.P9255459997859205859
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (10 * (10 * n) + 13)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A157772.P9255459997859205859

namespace A157772

/-- `eq[2, A000005(10*10*n+13)]` -/
def P9255459997859205859.Spec : Prop :=
  ∀ n, (P9255459997859205859.a n : ℤ) = A157772 (n + 1)

end A157772

/-! ## A157772.P14806875499039799876

`lt[A000005(2*(50*n+6)+1), 3]`
-/

namespace A157772.P14806875499039799876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (2 * (50 * n + 6) + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A157772.P14806875499039799876

namespace A157772

/-- `lt[A000005(2*(50*n+6)+1), 3]` -/
def P14806875499039799876.Spec : Prop :=
  ∀ n, (P14806875499039799876.a n : ℤ) = A157772 (n + 1)

end A157772

/-! ## A157772.P15998666800682161409

`eq[10*10*n+13, A006530(10*10*n+13)]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A157772

/-- `eq[10*10*n+13, A006530(10*10*n+13)]` -/
def P15998666800682161409.Spec : Prop :=
  ∀ n, (P15998666800682161409.a n : ℤ) = A157772 (n + 1)

theorem P15998666800682161409.correct : P15998666800682161409.Spec := by
  intro n
  simp only [A157772, Nat.add_sub_cancel]

end A157772

/-! ## A157772.P1743728273189597054

`eq[10*10*n+13, A020639(10*10*n+13)]`
-/

namespace A157772.P1743728273189597054
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 * (10 * n) + 13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (10 * (10 * n) + 13)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A157772.P1743728273189597054

namespace A157772

/-- `eq[10*10*n+13, A020639(10*10*n+13)]` -/
def P1743728273189597054.Spec : Prop :=
  ∀ n, (P1743728273189597054.a n : ℤ) = A157772 (n + 1)

end A157772

/-!
# A157779: Numerator of Bernoulli(n, 1/2).

The programs for A157779, there is no canonical definition to state claims against.
-/

/-! ## A157779.P10435568965612775895

`(1-A131577(n))*A027641(n)`
-/

namespace A157779.P10435568965612775895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A131577 n) * A027641 n

end

end A157779.P10435568965612775895

/-! ## A157779.P13409373428668034592

`(1-A131577(n))*A164555(n)`
-/

namespace A157779.P13409373428668034592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A131577 n) * A164555 n

end

end A157779.P13409373428668034592

/-! ## A157779.P7147109764368022508

`(2-A094373(n))*A027641(n)`
-/

namespace A157779.P7147109764368022508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A094373 n) * A027641 n

end

end A157779.P7147109764368022508

/-! ## A157779.P1522536846596662263

`(2-A094373(n))*A164555(n)`
-/

namespace A157779.P1522536846596662263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A094373 n) * A164555 n

end

end A157779.P1522536846596662263

/-! ## A157779.P1952872300271230800

`A239275(n)+A141459(n)*A226158(n)`
-/

namespace A157779.P1952872300271230800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239275 n + A141459 n * A226158 n

end

end A157779.P1952872300271230800

/-! ## A157779.P13379153487275060743

`A059841(n)*A157817(n*A059841(n))`
-/

namespace A157779.P13379153487275060743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 n * A157817 ((n : ℤ) * A059841 n).toNat

end

end A157779.P13379153487275060743

/-! ## A157779.P446663802205355295

`A059841(n)*A157817(n)`
-/

namespace A157779.P446663802205355295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 n * A157817 n

end

end A157779.P446663802205355295

/-! ## A157779.P13838957727910784948

`A000035(n+1)*A157817(n)`
-/

namespace A157779.P13838957727910784948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (n + 1) * A157817 n

end

end A157779.P13838957727910784948

/-! ## A157779.P10182478250879308412

`(1-A000035(n))*A157817(n)`
-/

namespace A157779.P10182478250879308412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A000035 n) * A157817 n

end

end A157779.P10182478250879308412

/-!
# A157780: Denominator of Bernoulli(n, 1/2).

The programs for A157780, the canonical program `A157780.P17497891769004072797` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A157780 has offset 0).

The definition of A157780 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 300 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A157780.P17462736409079194490

`gcd(n%2, A157782(n))`
-/

namespace A157780.P17462736409079194490
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((n % 2 : ℕ) : ℤ) (A157782 n)

end

end A157780.P17462736409079194490

namespace A157780

/-- `gcd(n%2, A157782(n))` -/
def P17462736409079194490.Spec : Prop :=
  ∀ n, (P17462736409079194490.a n : ℤ) = A157780 n

end A157780

/-! ## A157780.P1530452447035173827

`A157782(n*char[2*n])`
-/

namespace A157780.P1530452447035173827
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157782 (n * (if ∃ j, f1 j = n then 1 else 0))

end

end A157780.P1530452447035173827

namespace A157780

/-- `A157782(n*char[2*n])` -/
def P1530452447035173827.Spec : Prop :=
  ∀ n, P1530452447035173827.a n = A157780 n

end A157780

/-! ## A157780.P15554607710974620707

`gcd(A010674(n), A157782(n))`
-/

namespace A157780.P15554607710974620707
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A010674 n) (A157782 n)

end

end A157780.P15554607710974620707

namespace A157780

/-- `gcd(A010674(n), A157782(n))` -/
def P15554607710974620707.Spec : Prop :=
  ∀ n, (P15554607710974620707.a n : ℤ) = A157780 n

end A157780

/-! ## A157780.P17497891769004072797

`A059222(n+1)*A141459(n)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A157780

/-- `A059222(n+1)*A141459(n)` -/
def P17497891769004072797.Spec : Prop :=
  ∀ n, P17497891769004072797.a n = A157780 n

theorem P17497891769004072797.correct : P17497891769004072797.Spec := by
  intro n
  simp only [A157780]

end A157780

/-! ## A157780.P7823262372693124682

`A157782(n)^val(A027642(n), 2)`
-/

namespace A157780.P7823262372693124682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157782 n ^ SequenceMachineLib.valuation (A027642 n).toNat 2

end

end A157780.P7823262372693124682

namespace A157780

/-- `A157782(n)^val(A027642(n), 2)` -/
def P7823262372693124682.Spec : Prop :=
  ∀ n, P7823262372693124682.a n = A157780 n

end A157780

/-! ## A157780.P12193996944032998348

`A157782(n)^val(A285068(n), 2)`
-/

namespace A157780.P12193996944032998348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157782 n ^ SequenceMachineLib.valuation (A285068 n).toNat 2

end

end A157780.P12193996944032998348

namespace A157780

/-- `A157782(n)^val(A285068(n), 2)` -/
def P12193996944032998348.Spec : Prop :=
  ∀ n, P12193996944032998348.a n = A157780 n

end A157780

/-! ## A157780.P7143234567136257646

`A157782(n)^val(A002445(n), 5)`
-/

namespace A157780.P7143234567136257646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157782 n ^ SequenceMachineLib.valuation (A002445 n).toNat 5

end

end A157780.P7143234567136257646

namespace A157780

/-- `A157782(n)^val(A002445(n), 5)` -/
def P7143234567136257646.Spec : Prop :=
  ∀ n, P7143234567136257646.a n = A157780 n

end A157780

/-! ## A157780.P3508012154282399557

`A157782(n)/A157782(n-A237420(n))`
-/

namespace A157780.P3508012154282399557
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A157782 n : ℚ) / (A157782 ((n : ℤ) - A237420 n).toNat : ℚ)

end

end A157780.P3508012154282399557

namespace A157780

/-- `A157782(n)/A157782(n-A237420(n))` -/
def P3508012154282399557.Spec : Prop :=
  ∀ n, P3508012154282399557.a n = (A157780 n : ℚ)

end A157780

/-!
# A157781: Numerator of Bernoulli(n, -1/2).

The programs for A157781, there is no canonical definition to state claims against.
-/

/-! ## A157781.P2144703253071344077

`A285866(n)/gcd(2, n+1)`
-/

namespace A157781.P2144703253071344077
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A285866 n : ℚ) / (Nat.gcd 2 (n + 1) : ℚ)

end

end A157781.P2144703253071344077

/-! ## A157781.P5821656408497747951

`A285866(n)/A000034(n)`
-/

namespace A157781.P5821656408497747951
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A285866 n : ℚ) / (A000034 n : ℚ)

end

end A157781.P5821656408497747951

/-! ## A157781.P16013456342662382785

`A285866(n)/Δ[A032766(n)]`
-/

namespace A157781.P16013456342662382785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A285866 n : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A157781.P16013456342662382785

/-! ## A157781.P2634408741108633258

`A285866(n)/(A000035(n)+1)`
-/

namespace A157781.P2634408741108633258
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A285866 n : ℚ) / (A000035 n + 1 : ℚ)

end

end A157781.P2634408741108633258

/-! ## A157781.P2382094453111746485

`A285866(n)/(2-A059841(n))`
-/

namespace A157781.P2382094453111746485
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A285866 n : ℚ) / (2 - A059841 n : ℚ)

end

end A157781.P2382094453111746485

/-!
# A157782: Denominator of Bernoulli(n, -1/2).

The programs for A157782, the canonical program `A157782.P4780299263270215936` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A157782 has offset 0).

The definition of A157782 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 300 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A157782.P6793151935468305190

`(2^floor(n/2))²*A141459(n)`
-/

namespace A157782.P6793151935468305190
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ)) ^ 2 * (A141459 n : ℚ)

end

end A157782.P6793151935468305190

namespace A157782

/-- `(2^floor(n/2))²*A141459(n)` -/
def P6793151935468305190.Spec : Prop :=
  ∀ n, P6793151935468305190.a n = (A157782 n : ℚ)

end A157782

/-! ## A157782.P7548800570885940762

`A011782(n)*A176289(n)`
-/

namespace A157782.P7548800570885940762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n * A176289 n

end

end A157782.P7548800570885940762

namespace A157782

/-- `A011782(n)*A176289(n)` -/
def P7548800570885940762.Spec : Prop :=
  ∀ n, P7548800570885940762.a n = A157782 n

end A157782

/-! ## A157782.P4780299263270215936

`A141459(n)*A213173(n)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A157782

/-- `A141459(n)*A213173(n)` -/
def P4780299263270215936.Spec : Prop :=
  ∀ n, P4780299263270215936.a n = A157782 n

theorem P4780299263270215936.correct : P4780299263270215936.Spec := by
  intro n
  simp only [A157782]

end A157782

/-! ## A157782.P4506704968113348220

`lcm(A011782(n), A157780(n))`
-/

namespace A157782.P4506704968113348220
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A011782 n) (A157780 n)

end

end A157782.P4506704968113348220

namespace A157782

/-- `lcm(A011782(n), A157780(n))` -/
def P4506704968113348220.Spec : Prop :=
  ∀ n, (P4506704968113348220.a n : ℤ) = A157782 n

end A157782

/-! ## A157782.P13140420272255837183

`lcm(A141459(n), A164111(n))`
-/

namespace A157782.P13140420272255837183
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A141459 n) (A164111 n)

end

end A157782.P13140420272255837183

namespace A157782

/-- `lcm(A141459(n), A164111(n))` -/
def P13140420272255837183.Spec : Prop :=
  ∀ n, (P13140420272255837183.a n : ℤ) = A157782 n

end A157782

/-! ## A157782.P6771664729391333251

`lcm(A176289(n), A213173(n))`
-/

namespace A157782.P6771664729391333251
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A176289 n) (A213173 n)

end

end A157782.P6771664729391333251

namespace A157782

/-- `lcm(A176289(n), A213173(n))` -/
def P6771664729391333251.Spec : Prop :=
  ∀ n, (P6771664729391333251.a n : ℤ) = A157782 n

end A157782

/-!
# A157790: Least number of lattice points on two opposite sides from which every point of a square n X n lattice is visible.

The programs for A157790, there is no canonical definition to state claims against.
-/

/-! ## A157790.P10650808717775676767

`A055642(lcm((∑{digits}[n, #]+1+n)², xor(1, n)))`
-/

namespace A157790.P10650808717775676767
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (Nat.lcm ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum + 1 + n) ^ 2) (Nat.xor 1 n))

end

end A157790.P10650808717775676767

/-! ## A157790.P7270368954683009731

`A318781(A231405(n))`
-/

namespace A157790.P7270368954683009731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318781 (A231405 n).toNat

end

end A157790.P7270368954683009731

/-! ## A157790.P5568192792613643208

`A010096(or(n, A284464(n)))`
-/

namespace A157790.P5568192792613643208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010096 (Int.lor (n : ℤ) (A284464 n)).toNat

end

end A157790.P5568192792613643208

/-! ## A157790.P12369543528134201095

`A157720(A141225(∏{p}[n, (n/#)²])+n)`
-/

namespace A157790.P12369543528134201095
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157720 (A141225 (SequenceMachineLib.roundAway (∏ p ∈ Nat.primeFactors (f1 n), ((n : ℚ) / (p : ℚ)) ^ 2)).toNat + (n : ℤ)).toNat

end

end A157790.P12369543528134201095

/-! ## A157790.P4588289424612876567

`∑[((A139399(n+1)-A104557(3*n+1))%2)^n]`
-/

namespace A157790.P4588289424612876567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A139399 (n + 1) - A104557 (3 * n + 1)) 2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A157790.P4588289424612876567

/-!
# A157791: Least number of lattice points on two adjacent sides from which every point of a square n X n lattice is visible.

The programs for A157791, there is no canonical definition to state claims against.
-/

/-! ## A157791.P5112779875448832696

`floor(exp(n/comp[n²])²)`
-/

namespace A157791.P5112779875448832696
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.exp ((n : ℚ) / (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℚ) : ℝ) ^ 2⌋

end

end A157791.P5112779875448832696

/-! ## A157791.P496724960151245658

`∑[char[10*T(n-1,k)]]` with `a(0)=2, a(1)=4, a(2)=25, a(3)=10`
-/

namespace A157791.P496724960151245658
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [2, 4, 25, 10] fun n f2 =>
  10 * SequenceMachineLib.triUp f2 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A157791.P496724960151245658

/-! ## A157791.P11930955753645687504

`comp[n*a(n-1)+n+1]-n` with `a(0)=0, a(1)=3, a(2)=13, a(3)=6`
-/

namespace A157791.P11930955753645687504
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 3, 13, 6] fun n f1 =>
  n * f1 (n - 1) + (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)

end

end A157791.P11930955753645687504

/-! ## A157791.P7324800975309075914

`ceil(A312680(n)/(n+5))`
-/

namespace A157791.P7324800975309075914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A312680 n : ℚ) / (n + 5 : ℚ)⌉

end

end A157791.P7324800975309075914

/-! ## A157791.P3657600575290889859

`ceil(A313824(n)/(n+5))`
-/

namespace A157791.P3657600575290889859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A313824 n : ℚ) / (n + 5 : ℚ)⌉

end

end A157791.P3657600575290889859

/-! ## A157791.P3384018520887379241

`ceil(A314089(n)/(n+5))`
-/

namespace A157791.P3384018520887379241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A314089 n : ℚ) / (n + 5 : ℚ)⌉

end

end A157791.P3384018520887379241

/-! ## A157791.P4127289453492927707

`ceil(A314091(n)/(n+5))`
-/

namespace A157791.P4127289453492927707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A314091 n : ℚ) / (n + 5 : ℚ)⌉

end

end A157791.P4127289453492927707

/-! ## A157791.P12856550653535012946

`ceil(A313778(n)/(n+6))`
-/

namespace A157791.P12856550653535012946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A313778 n : ℚ) / (n + 6 : ℚ)⌉

end

end A157791.P12856550653535012946

/-! ## A157791.P18277357284301150385

`ceil(A313859(n)/(n+6))`
-/

namespace A157791.P18277357284301150385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A313859 n : ℚ) / (n + 6 : ℚ)⌉

end

end A157791.P18277357284301150385

/-! ## A157791.P10757105891990445594

`ceil(log(sqrt(A224789(n+1))))`
-/

namespace A157791.P10757105891990445594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.log (Real.sqrt (A224789 (n + 1) : ℝ))⌉

end

end A157791.P10757105891990445594

/-!
# A157792: Least number of lattice points on one side from which every point of a square n X n lattice is visible.

The programs for A157792, the canonical program `A157792.P13543228097795611076` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A157792 has offset 1).

The definition of A157792 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A157792.P5651404669568407042

`ogf((1+x^2-x^3+x^4-x^5+x^6-x^7-x^9+x^11)/(1-x-x^3+x^4))`
-/

namespace A157792.P5651404669568407042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, 1, -1, 1, -1, 1, -1, 0, -1, 0, 1] [1, -1, 0, -1, 1] n

end

end A157792.P5651404669568407042

namespace A157792

/-- `ogf((1+x^2-x^3+x^4-x^5+x^6-x^7-x^9+x^11)/(1-x-x^3+x^4))` -/
def P5651404669568407042.Spec : Prop :=
  ∀ n, P5651404669568407042.a n = A157792 (n + 1)

end A157792

/-! ## A157792.P13543228097795611076

`A086161(n)+char[Δ[A278041(n)]]`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A157792

/-- `A086161(n)+char[Δ[A278041(n)]]` -/
def P13543228097795611076.Spec : Prop :=
  ∀ n, P13543228097795611076.a n = A157792 (n + 1)

theorem P13543228097795611076.correct : P13543228097795611076.Spec := by
  intro n
  simp only [A157792, Nat.add_sub_cancel]

end A157792

/-! ## A157792.P4213070185133172476

`∑[(A130519(2*n)%A000041(n))%3]+1`
-/

namespace A157792.P4213070185133172476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod (A130519 (2 * n)) (A000041 n)) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A157792.P4213070185133172476

namespace A157792

/-- `∑[(A130519(2*n)%A000041(n))%3]+1` -/
def P4213070185133172476.Spec : Prop :=
  ∀ n, P4213070185133172476.a n = A157792 (n + 1)

end A157792

/-! ## A157792.P17092971792705124928

`A008620(ceil(A198384(n+1)/A292325(n+4))+n)`
-/

namespace A157792.P17092971792705124928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (⌈(A198384 (n + 1) : ℚ) / (A292325 (n + 4) : ℚ)⌉ + (n : ℤ)).toNat

end

end A157792.P17092971792705124928

namespace A157792

/-- `A008620(ceil(A198384(n+1)/A292325(n+4))+n)` -/
def P17092971792705124928.Spec : Prop :=
  ∀ n, P17092971792705124928.a n = A157792 (n + 1)

end A157792

/-! ## A157792.P11043855925384411828

`A185012(A029392(3*n))+A002264(n+4)`
-/

namespace A157792.P11043855925384411828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185012 (A029392 (3 * n)).toNat + A002264 (n + 4)

end

end A157792.P11043855925384411828

namespace A157792

/-- `A185012(A029392(3*n))+A002264(n+4)` -/
def P11043855925384411828.Spec : Prop :=
  ∀ n, P11043855925384411828.a n = A157792 (n + 1)

end A157792

/-!
# A157793: Convolution of numbers of binary zeros and ones.

The programs for A157793, the canonical program `A157793.P17006216374145682191` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A157793 has offset 0).

The definition of A157793 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A157793.P17006216374145682191

`∑{#}[n, A023416(#)*A000120(n-#)]`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A157793

/-- `∑{#}[n, A023416(#)*A000120(n-#)]` -/
def P17006216374145682191.Spec : Prop :=
  ∀ n, P17006216374145682191.a n = A157793 n

theorem P17006216374145682191.correct : P17006216374145682191.Spec := by
  intro n
  simp only [A157793]

end A157793

/-!
# A157794: a(n) = term (1,1) in M^n * [1,0,0,0,...]; M = parity check matrix for the binary Golay code.

The programs for A157794, there is no canonical definition to state claims against.
-/

/-! ## A157794.P14789808002209849001

`A062392(n)+A008619(A083233(n))`
-/

namespace A157794.P14789808002209849001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062392 n + A008619 (A083233 n).toNat

end

end A157794.P14789808002209849001

/-!
# A157795: Largest subset of the discrete triangular grid { (a,b,c): a+b+c = n, a,b,c >= 0 } that does not contain any upward-pointing triangles (i.e., triples (a+r,b,c), (a,b+r,c), (a,b,c+r) with r positive).

The programs for A157795, there is no canonical definition to state claims against.
-/

/-! ## A157795.P12906091931906295842

`floor(∑[(8/5)^sqrt(n)])`
-/

namespace A157795.P12906091931906295842
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((8 : ℚ) / 5 : ℝ) ^ (Real.sqrt (n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A157795.P12906091931906295842

/-! ## A157795.P13352024538564537214

`round((n+1)^ϕ/acos(0))`
-/

namespace A157795.P13352024538564537214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n + 1 : ℝ) ^ Real.goldenRatio / Real.arccos (0 : ℝ))

end

end A157795.P13352024538564537214

/-! ## A157795.P16667362617480540585

`round((n+1)^ϕ/asin(1))`
-/

namespace A157795.P16667362617480540585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n + 1 : ℝ) ^ Real.goldenRatio / Real.arcsin (1 : ℝ))

end

end A157795.P16667362617480540585

/-! ## A157795.P1535592534630975163

`round(((n+1)/atan(4))^ϕ)`
-/

namespace A157795.P1535592534630975163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((n + 1 : ℝ) / Real.arctan (4 : ℝ)) ^ Real.goldenRatio)

end

end A157795.P1535592534630975163

/-! ## A157795.P18233766916423961696

`∑[∑[floor(sin(2^n))^n]]`
-/

namespace A157795.P18233766916423961696
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sin (2 ^ n : ℝ)⌋ ^ n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A157795.P18233766916423961696

/-!
# A157797: a(n) = 8984250*n - 1996170.

The programs for A157797, there is no canonical definition to state claims against.
-/

/-! ## A157797.P10926077739664351034

`A157803(n+1)+A157821(n+1)-A157769(n+1)`
-/

namespace A157797.P10926077739664351034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157803 (n + 1) + (A157821 (n + 1) - A157769 (n + 1))

end

end A157797.P10926077739664351034

