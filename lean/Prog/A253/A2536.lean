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
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
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
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C001
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
# A253601: Numbers such that the smallest exponent for n and n^k to have common digits is 3.

The programs for A253601, there is no canonical definition to state claims against.
-/

/-! ## A253601.P3299500214781564483

`eq[3, A253600(n)]`
-/

namespace A253601.P3299500214781564483
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253600 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A253601.P3299500214781564483

/-! ## A253601.P5672806008967914166

`eq[char[A029790(n+1)], A076493(n)]`
-/

namespace A253601.P5672806008967914166
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029790 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076493 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A253601.P5672806008967914166

/-! ## A253601.P6403911427574540592

`∩[A029783(n+1), lt[A253600(n), 4]]`
-/

namespace A253601.P6403911427574540592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029783 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253600 n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f3 j < (f4 j : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A253601.P6403911427574540592

/-! ## A253601.P17100234220027514328

`∩[A029783(n+1), comp[A029785(n+1)]]`
-/

namespace A253601.P17100234220027514328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029783 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029785 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A253601.P17100234220027514328

/-! ## A253601.P17976804477435122106

`∩[A029783(n+1), comp[A029790(n+1)]]`
-/

namespace A253601.P17976804477435122106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029783 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029790 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A253601.P17976804477435122106

/-! ## A253601.P4239820856214877966

`lt[2, gcd(A253600(n)+1, A051226(n+1))]`
-/

namespace A253601.P4239820856214877966
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A253600 n + 1) (A051226 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A253601.P4239820856214877966

/-!
# A253602: Numbers n such that the smallest exponent k for n and n^k to have common digits is 4.

The programs for A253602, there is no canonical definition to state claims against.
-/

/-! ## A253602.P4171196120272297737

`eq[4, A253600(n)]`
-/

namespace A253602.P4171196120272297737
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253600 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A253602.P4171196120272297737

/-! ## A253602.P1568209786588280667

`lt[A076493(n), tan(A253600(n))]`
-/

namespace A253602.P1568209786588280667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076493 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.tan (A253600 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A253602.P1568209786588280667

/-! ## A253602.P146258762716334449

`lt[A253641(n), tan(A253600(n))]`
-/

namespace A253602.P146258762716334449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253641 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.tan (A253600 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A253602.P146258762716334449

/-! ## A253602.P11167853550845233711

`lt[2, gcd(A051226(n+1), A253600(n))]`
-/

namespace A253602.P11167853550845233711
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A051226 (n + 1)) (A253600 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A253602.P11167853550845233711

/-!
# A253604: a(n) = (n^(n-1)+1)^n.

The programs for A253604, there is no canonical definition to state claims against.
-/

/-! ## A253604.P10804640036604423446

`((n+1)^n+1)^(n+1)`
-/

namespace A253604.P10804640036604423446
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ n + 1) ^ (n + 1)

end

end A253604.P10804640036604423446

/-!
# A253607: First differences of A253580, when the tree is seen as flattened list.

The programs for A253607, the canonical program `A253607.P6258215896697988721` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A253607 has offset 0).

The definition of A253607 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A253607.P6258215896697988721

`Δ[A253580(n)]`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A253607

/-- `Δ[A253580(n)]` -/
def P6258215896697988721.Spec : Prop :=
  ∀ n, P6258215896697988721.a n = A253607 n

theorem P6258215896697988721.correct : P6258215896697988721.Spec := by
  intro n
  simp only [A253607]

end A253607

/-! ## A253607.P6806597010947932850

`Δ[A004741(n+1)]`
-/

namespace A253607.P6806597010947932850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004741 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A253607.P6806597010947932850

namespace A253607

/-- `Δ[A004741(n+1)]` -/
def P6806597010947932850.Spec : Prop :=
  ∀ n, P6806597010947932850.a n = A253607 n

end A253607

/-! ## A253607.P13128204818092353040

`A253580(n+1)-A253580(n)`
-/

namespace A253607.P13128204818092353040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253580 (n + 1) - A253580 n

end

end A253607.P13128204818092353040

namespace A253607

/-- `A253580(n+1)-A253580(n)` -/
def P13128204818092353040.Spec : Prop :=
  ∀ n, P13128204818092353040.a n = A253607 n

theorem P13128204818092353040.correct : P13128204818092353040.Spec := by
  intro n
  simp only [A253607, Nat.add_sub_cancel, A253607.P13128204818092353040.a, A253607.P6258215896697988721.f1, A253607.P6258215896697988721.a, SequenceMachineLib.memo_apply]

end A253607

/-! ## A253607.P1238749313861336049

`A004741(n+2)-A004741(n+1)`
-/

namespace A253607.P1238749313861336049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004741 (n + 2) - A004741 (n + 1)

end

end A253607.P1238749313861336049

namespace A253607

/-- `A004741(n+2)-A004741(n+1)` -/
def P1238749313861336049.Spec : Prop :=
  ∀ n, P1238749313861336049.a n = A253607 n

end A253607

/-! ## A253607.P12051881747298202085

`Δ[A170949(n+1)-floor(sqrt(n))²]`
-/

namespace A253607.P12051881747298202085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170949 (n + 1) - (Nat.sqrt n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A253607.P12051881747298202085

namespace A253607

/-- `Δ[A170949(n+1)-floor(sqrt(n))²]` -/
def P12051881747298202085.Spec : Prop :=
  ∀ n, P12051881747298202085.a n = A253607 n

end A253607

/-! ## A253607.P16506520034775889334

`Δ[A071797(A170949(n+1))]`
-/

namespace A253607.P16506520034775889334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071797 (A170949 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A253607.P16506520034775889334

namespace A253607

/-- `Δ[A071797(A170949(n+1))]` -/
def P16506520034775889334.Spec : Prop :=
  ∀ n, P16506520034775889334.a n = A253607 n

end A253607

/-! ## A253607.P1951779000458508638

`Δ[A004739(n+1)+A004738(n+1)]`
-/

namespace A253607.P1951779000458508638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004739 (n + 1) + A004738 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A253607.P1951779000458508638

namespace A253607

/-- `Δ[A004739(n+1)+A004738(n+1)]` -/
def P1951779000458508638.Spec : Prop :=
  ∀ n, P1951779000458508638.a n = A253607 n

end A253607

/-! ## A253607.P3036459458261123410

`A004739(n+2)+A118175(n)-A004738(n+1)`
-/

namespace A253607.P3036459458261123410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004739 (n + 2) + (A118175 n - A004738 (n + 1))

end

end A253607.P3036459458261123410

namespace A253607

/-- `A004739(n+2)+A118175(n)-A004738(n+1)` -/
def P3036459458261123410.Spec : Prop :=
  ∀ n, P3036459458261123410.a n = A253607 n

end A253607

/-! ## A253607.P6882661004120242781

`A004739(n+2)-(A079813(n+1)+A053615(n))`
-/

namespace A253607.P6882661004120242781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004739 (n + 2) - (A079813 (n + 1) + A053615 n)

end

end A253607.P6882661004120242781

namespace A253607

/-- `A004739(n+2)-(A079813(n+1)+A053615(n))` -/
def P6882661004120242781.Spec : Prop :=
  ∀ n, P6882661004120242781.a n = A253607 n

end A253607

/-! ## A253607.P8980580871651272080

`2/Δ[A209301(n+1)]`
-/

namespace A253607.P8980580871651272080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209301 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (f1 (n + 1) - f1 n : ℚ)

end

end A253607.P8980580871651272080

namespace A253607

/-- `2/Δ[A209301(n+1)]` -/
def P8980580871651272080.Spec : Prop :=
  ∀ n, P8980580871651272080.a n = (A253607 n : ℚ)

end A253607

/-! ## A253607.P6229911287035421815

`2/Δ[A004738(A049068(n+1))]`
-/

namespace A253607.P6229911287035421815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004738 (A049068 (n + 1)).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (f1 (n + 1) - f1 n : ℚ)

end

end A253607.P6229911287035421815

namespace A253607

/-- `2/Δ[A004738(A049068(n+1))]` -/
def P6229911287035421815.Spec : Prop :=
  ∀ n, P6229911287035421815.a n = (A253607 n : ℚ)

end A253607

/-! ## A253607.P6214771796704927194

`Δ[A220073(A007606(n+1))]`
-/

namespace A253607.P6214771796704927194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220073 (A007606 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A253607.P6214771796704927194

namespace A253607

/-- `Δ[A220073(A007606(n+1))]` -/
def P6214771796704927194.Spec : Prop :=
  ∀ n, P6214771796704927194.a n = A253607 n

end A253607

/-!
# A253608: The binary representation of a(n) is the concatenation of n and the binary complement of n, A035327(n).

The programs for A253608, the canonical program `A253608.P7761003783285391517` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A253608 has offset 1).

The definition of A253608 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A253608.P7761003783285391517

`(n+2)*∑[C(and(n+1, 2*n), n)]`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A253608

/-- `(n+2)*∑[C(and(n+1, 2*n), n)]` -/
def P7761003783285391517.Spec : Prop :=
  ∀ n, (P7761003783285391517.a n : ℤ) = A253608 (n + 1)

theorem P7761003783285391517.correct : P7761003783285391517.Spec := by
  intro n
  simp only [A253608, Nat.add_sub_cancel]

end A253608

/-! ## A253608.P3109493056389328834

`(n+2)*or(n+1, a(n-1)/(n+1))` with `a(0)=2`
-/

namespace A253608.P3109493056389328834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  (n + 2 : ℤ) * Int.lor (n + 1 : ℤ) (SequenceMachineLib.roundAway ((a (n - 1) : ℚ) / (n + 1 : ℚ)))

end

end A253608.P3109493056389328834

namespace A253608

/-- `(n+2)*or(n+1, a(n-1)/(n+1))` -/
def P3109493056389328834.Spec : Prop :=
  ∀ n, P3109493056389328834.a n = A253608 (n + 1)

end A253608

/-! ## A253608.P14892917469903968115

`(n+2)*∑[A099894(n)]`
-/

namespace A253608.P14892917469903968115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099894 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A253608.P14892917469903968115

namespace A253608

/-- `(n+2)*∑[A099894(n)]` -/
def P14892917469903968115.Spec : Prop :=
  ∀ n, P14892917469903968115.a n = A253608 (n + 1)

end A253608

/-! ## A253608.P16759838169769333127

`(n+2)*A003817(n+1)`
-/

namespace A253608.P16759838169769333127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A003817 (n + 1)

end

end A253608.P16759838169769333127

namespace A253608

/-- `(n+2)*A003817(n+1)` -/
def P16759838169769333127.Spec : Prop :=
  ∀ n, P16759838169769333127.a n = A253608 (n + 1)

end A253608

/-! ## A253608.P113223391167672476

`(n+2)*∑[A048298(n+1)]`
-/

namespace A253608.P113223391167672476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048298 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A253608.P113223391167672476

namespace A253608

/-- `(n+2)*∑[A048298(n+1)]` -/
def P113223391167672476.Spec : Prop :=
  ∀ n, P113223391167672476.a n = A253608 (n + 1)

end A253608

/-! ## A253608.P18135658558757716986

`(n+2)*(A076877(n+1)-2)`
-/

namespace A253608.P18135658558757716986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * (A076877 (n + 1) - 2)

end

end A253608.P18135658558757716986

namespace A253608

/-- `(n+2)*(A076877(n+1)-2)` -/
def P18135658558757716986.Spec : Prop :=
  ∀ n, P18135658558757716986.a n = A253608 (n + 1)

end A253608

/-! ## A253608.P1327995710035585120

`A277351(n+1)-(2*n+3)`
-/

namespace A253608.P1327995710035585120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277351 (n + 1) - (2 * n + 3 : ℤ)

end

end A253608.P1327995710035585120

namespace A253608

/-- `A277351(n+1)-(2*n+3)` -/
def P1327995710035585120.Spec : Prop :=
  ∀ n, P1327995710035585120.a n = A253608 (n + 1)

end A253608

/-! ## A253608.P15114963243146194746

`(A080079(n+1)+n)*(n+2)`
-/

namespace A253608.P15114963243146194746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A080079 (n + 1) + (n : ℤ)) * (n + 2 : ℤ)

end

end A253608.P15114963243146194746

namespace A253608

/-- `(A080079(n+1)+n)*(n+2)` -/
def P15114963243146194746.Spec : Prop :=
  ∀ n, P15114963243146194746.a n = A253608 (n + 1)

end A253608

/-! ## A253608.P5189067228477631804

`(n+2)*∑[A135416(2*n+1)]`
-/

namespace A253608.P5189067228477631804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135416 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A253608.P5189067228477631804

namespace A253608

/-- `(n+2)*∑[A135416(2*n+1)]` -/
def P5189067228477631804.Spec : Prop :=
  ∀ n, P5189067228477631804.a n = A253608 (n + 1)

end A253608

/-! ## A253608.P12070317968022220608

`(A035327(n+1)+n+1)*(n+2)`
-/

namespace A253608.P12070317968022220608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A035327 (n + 1) + (n + 1 : ℤ)) * (n + 2 : ℤ)

end

end A253608.P12070317968022220608

namespace A253608

/-- `(A035327(n+1)+n+1)*(n+2)` -/
def P12070317968022220608.Spec : Prop :=
  ∀ n, P12070317968022220608.a n = A253608 (n + 1)

end A253608

/-! ## A253608.P2507413965226353160

`(n+2)*(A206332(n+1)-(n+1))`
-/

namespace A253608.P2507413965226353160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * (A206332 (n + 1) - (n + 1 : ℤ))

end

end A253608.P2507413965226353160

namespace A253608

/-- `(n+2)*(A206332(n+1)-(n+1))` -/
def P2507413965226353160.Spec : Prop :=
  ∀ n, P2507413965226353160.a n = A253608 (n + 1)

end A253608

/-! ## A253608.P17774956975732897843

`(n+2)*(A004755(n+1)-(n+2))`
-/

namespace A253608.P17774956975732897843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * (A004755 (n + 1) - (n + 2 : ℤ))

end

end A253608.P17774956975732897843

namespace A253608

/-- `(n+2)*(A004755(n+1)-(n+2))` -/
def P17774956975732897843.Spec : Prop :=
  ∀ n, P17774956975732897843.a n = A253608 (n + 1)

end A253608

/-! ## A253608.P12665519145615858764

`(2*(n+1)-A006257(n+1))*(n+2)`
-/

namespace A253608.P12665519145615858764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * (n + 1) : ℤ) - A006257 (n + 1)) * (n + 2 : ℤ)

end

end A253608.P12665519145615858764

namespace A253608

/-- `(2*(n+1)-A006257(n+1))*(n+2)` -/
def P12665519145615858764.Spec : Prop :=
  ∀ n, P12665519145615858764.a n = A253608 (n + 1)

end A253608

/-! ## A253608.P10493551744070004725

`A020330(n+1)-A006257(n+1)`
-/

namespace A253608.P10493551744070004725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020330 (n + 1) - A006257 (n + 1)

end

end A253608.P10493551744070004725

namespace A253608

/-- `A020330(n+1)-A006257(n+1)` -/
def P10493551744070004725.Spec : Prop :=
  ∀ n, P10493551744070004725.a n = A253608 (n + 1)

end A253608

/-! ## A253608.P6185583734350867573

`(n+2)*A000203(A053644(n+1))`
-/

namespace A253608.P6185583734350867573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A000203 (A053644 (n + 1)).toNat

end

end A253608.P6185583734350867573

namespace A253608

/-- `(n+2)*A000203(A053644(n+1))` -/
def P6185583734350867573.Spec : Prop :=
  ∀ n, P6185583734350867573.a n = A253608 (n + 1)

end A253608

/-! ## A253608.P11720214336074237785

`(n+2)*A000225(A113473(n+1))`
-/

namespace A253608.P11720214336074237785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A000225 (A113473 (n + 1)).toNat

end

end A253608.P11720214336074237785

namespace A253608

/-- `(n+2)*A000225(A113473(n+1))` -/
def P11720214336074237785.Spec : Prop :=
  ∀ n, P11720214336074237785.a n = A253608 (n + 1)

end A253608

/-! ## A253608.P17090479079150172312

`(n+2)*A126646(A000523(n+1))`
-/

namespace A253608.P17090479079150172312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A126646 (A000523 (n + 1)).toNat

end

end A253608.P17090479079150172312

namespace A253608

/-- `(n+2)*A126646(A000523(n+1))` -/
def P17090479079150172312.Spec : Prop :=
  ∀ n, P17090479079150172312.a n = A253608 (n + 1)

end A253608

/-! ## A253608.P4955214057121937753

`(n+2)*A175920(A175298(n+1))`
-/

namespace A253608.P4955214057121937753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A175920 (A175298 (n + 1)).toNat

end

end A253608.P4955214057121937753

namespace A253608

/-- `(n+2)*A175920(A175298(n+1))` -/
def P4955214057121937753.Spec : Prop :=
  ∀ n, P4955214057121937753.a n = A253608 (n + 1)

end A253608

/-! ## A253608.P13987589986068584813

`(n+2)*A175920(A206914(n+1))`
-/

namespace A253608.P13987589986068584813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A175920 (A206914 (n + 1)).toNat

end

end A253608.P13987589986068584813

namespace A253608

/-- `(n+2)*A175920(A206914(n+1))` -/
def P13987589986068584813.Spec : Prop :=
  ∀ n, P13987589986068584813.a n = A253608 (n + 1)

end A253608

/-! ## A253608.P1621496506157692027

`A000225(A000523(n+1)+1)*(n+2)`
-/

namespace A253608.P1621496506157692027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (A000523 (n + 1) + 1).toNat * (n + 2 : ℤ)

end

end A253608.P1621496506157692027

namespace A253608

/-- `A000225(A000523(n+1)+1)*(n+2)` -/
def P1621496506157692027.Spec : Prop :=
  ∀ n, P1621496506157692027.a n = A253608 (n + 1)

end A253608

/-!
# A253609: Array read by upwards antidiagonals: A(n, k) = index of prime(k)^n in A098550.

The programs for A253609, there is no canonical definition to state claims against.
-/

/-! ## A253609.P4737546811685711853

`A098551(A182944(n+1))`
-/

namespace A253609.P4737546811685711853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098551 (A182944 (n + 1)).toNat

end

end A253609.P4737546811685711853

/-! ## A253609.P14438106743847024376

`A098551(A037126(n+1)^A004736(n+1))`
-/

namespace A253609.P14438106743847024376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098551 (SequenceMachineLib.roundAway ((A037126 (n + 1) : ℚ) ^ (A004736 (n + 1) : ℤ))).toNat

end

end A253609.P14438106743847024376

/-!
# A253610: Numbers n with property that the sum of n and the digital root of n is prime.

The programs for A253610, the canonical program `A253610.P11264072332491747725` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A253610 has offset 1).

The definition of A253610 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9997 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A253610.P11264072332491747725

`record[A000040(n+1)-dr(5*A000040(n+1))]`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A253610

/-- `record[A000040(n+1)-dr(5*A000040(n+1))]` -/
def P11264072332491747725.Spec : Prop :=
  ∀ n, P11264072332491747725.a n = A253610 (n + 1)

theorem P11264072332491747725.correct : P11264072332491747725.Spec := by
  intro n
  simp only [A253610, Nat.add_sub_cancel]

end A253610

/-! ## A253610.P5007358148083339776

`record[A020639(dr(n+1)+n+1)-dr(n+1)]`
-/

namespace A253610.P5007358148083339776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (SequenceMachineLib.digitalRoot (n + 1 : ℤ) + (n + 1)) - (SequenceMachineLib.digitalRoot (n + 1 : ℤ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253610.P5007358148083339776

namespace A253610

/-- `record[A020639(dr(n+1)+n+1)-dr(n+1)]` -/
def P5007358148083339776.Spec : Prop :=
  ∀ n, P5007358148083339776.a n = A253610 (n + 1)

end A253610

/-! ## A253610.P8154975849808516674

`eq[1, A001222(dr(n+1)+n+1)]+1`
-/

namespace A253610.P8154975849808516674
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.digitalRoot (n + 1 : ℤ) + (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A253610.P8154975849808516674

namespace A253610

/-- `eq[1, A001222(dr(n+1)+n+1)]+1` -/
def P8154975849808516674.Spec : Prop :=
  ∀ n, (P8154975849808516674.a n : ℤ) = A253610 (n + 1)

end A253610

/-! ## A253610.P16601157231725135545

`eq[2, A000005(dr(n+1)+n+1)]+1`
-/

namespace A253610.P16601157231725135545
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.digitalRoot (n + 1 : ℤ) + (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A253610.P16601157231725135545

namespace A253610

/-- `eq[2, A000005(dr(n+1)+n+1)]+1` -/
def P16601157231725135545.Spec : Prop :=
  ∀ n, (P16601157231725135545.a n : ℤ) = A253610 (n + 1)

end A253610

/-! ## A253610.P4375008513068781161

`eq[1, A074206(dr(n)+n)]`
-/

namespace A253610.P4375008513068781161
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074206 (SequenceMachineLib.digitalRoot (n : ℤ) + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A253610.P4375008513068781161

namespace A253610

/-- `eq[1, A074206(dr(n)+n)]` -/
def P4375008513068781161.Spec : Prop :=
  ∀ n, (P4375008513068781161.a n : ℤ) = A253610 (n + 1)

end A253610

/-! ## A253610.P830317146524500441

`eq[2, ∏{e}[dr(n+1)+n-1, #+1]]`
-/

namespace A253610.P830317146524500441
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.digitalRoot (n + 1 : ℤ) : ℤ) + ((n : ℤ) - 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n).natAbs, (Nat.factorization (f3 n).natAbs p + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A253610.P830317146524500441

namespace A253610

/-- `eq[2, ∏{e}[dr(n+1)+n-1, #+1]]` -/
def P830317146524500441.Spec : Prop :=
  ∀ n, (P830317146524500441.a n : ℤ) = A253610 (n + 1)

end A253610

/-! ## A253610.P13626669623724119171

`eq[1, A003415(dr(n)+n)]`
-/

namespace A253610.P13626669623724119171
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (SequenceMachineLib.digitalRoot (n : ℤ) + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A253610.P13626669623724119171

namespace A253610

/-- `eq[1, A003415(dr(n)+n)]` -/
def P13626669623724119171.Spec : Prop :=
  ∀ n, (P13626669623724119171.a n : ℤ) = A253610 (n + 1)

end A253610

/-! ## A253610.P680370441260757297

`eq[1, A032741(dr(n)+n)]`
-/

namespace A253610.P680370441260757297
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (SequenceMachineLib.digitalRoot (n : ℤ) + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A253610.P680370441260757297

namespace A253610

/-- `eq[1, A032741(dr(n)+n)]` -/
def P680370441260757297.Spec : Prop :=
  ∀ n, (P680370441260757297.a n : ℤ) = A253610 (n + 1)

end A253610

/-! ## A253610.P2495582172141501806

`eq[1, A078898(dr(n)+n)]`
-/

namespace A253610.P2495582172141501806
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (SequenceMachineLib.digitalRoot (n : ℤ) + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A253610.P2495582172141501806

namespace A253610

/-- `eq[1, A078898(dr(n)+n)]` -/
def P2495582172141501806.Spec : Prop :=
  ∀ n, (P2495582172141501806.a n : ℤ) = A253610 (n + 1)

end A253610

/-! ## A253610.P13053163891028547598

`record[(n+1)%A014963(dr(n+1)+n+1)]`
-/

namespace A253610.P13053163891028547598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A014963 (SequenceMachineLib.digitalRoot (n + 1 : ℤ) + (n + 1)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253610.P13053163891028547598

namespace A253610

/-- `record[(n+1)%A014963(dr(n+1)+n+1)]` -/
def P13053163891028547598.Spec : Prop :=
  ∀ n, P13053163891028547598.a n = A253610 (n + 1)

end A253610

/-! ## A253610.P10084322375106280880

`eq[1, A032741(A010888(n)+n)]`
-/

namespace A253610.P10084322375106280880
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (A010888 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A253610.P10084322375106280880

namespace A253610

/-- `eq[1, A032741(A010888(n)+n)]` -/
def P10084322375106280880.Spec : Prop :=
  ∀ n, (P10084322375106280880.a n : ℤ) = A253610 (n + 1)

end A253610

/-! ## A253610.P13104889601958244276

`eq[2, A000005(A028310(A010888(n)+n))]`
-/

namespace A253610.P13104889601958244276
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A028310 (A010888 n + (n : ℤ)).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A253610.P13104889601958244276

namespace A253610

/-- `eq[2, A000005(A028310(A010888(n)+n))]` -/
def P13104889601958244276.Spec : Prop :=
  ∀ n, (P13104889601958244276.a n : ℤ) = A253610 (n + 1)

end A253610

/-! ## A253610.P16885736666664127899

`eq[2, A007012(A010878(n)+n)]`
-/

namespace A253610.P16885736666664127899
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007012 (A010878 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A253610.P16885736666664127899

namespace A253610

/-- `eq[2, A007012(A010878(n)+n)]` -/
def P16885736666664127899.Spec : Prop :=
  ∀ n, (P16885736666664127899.a n : ℤ) = A253610 (n + 1)

end A253610

/-!
# A253611: Number of (n+2)X(1+2) 0..2 arrays with every consecutive three elements in every row and diagonal having one or two distinct values, and in every column and antidiagonal having two or three distinct values, and new values 0 upwards introduced in row major order.

The programs for A253611, there is no canonical definition to state claims against.
-/

/-! ## A253611.P13092629503794791898

`A253615(∑[n+1])`
-/

namespace A253611.P13092629503794791898
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253615 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A253611.P13092629503794791898

/-! ## A253611.P7948970946155963392

`record[A253615(A106255(n+1))]`
-/

namespace A253611.P7948970946155963392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253615 (A106255 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253611.P7948970946155963392

/-! ## A253611.P5811271663162888909

`record[A253615(A115017(n+1))]`
-/

namespace A253611.P5811271663162888909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253615 (A115017 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253611.P5811271663162888909

/-! ## A253611.P16905071861157138652

`record[A253615(A135223(n+1))]`
-/

namespace A253611.P16905071861157138652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253615 (A135223 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253611.P16905071861157138652

/-! ## A253611.P6749832028142843030

`record[A253615(A143310(n+1))]`
-/

namespace A253611.P6749832028142843030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253615 (A143310 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253611.P6749832028142843030

/-!
# A253612: Number of (n+2)X(2+2) 0..2 arrays with every consecutive three elements in every row and diagonal having one or two distinct values, and in every column and antidiagonal having two or three distinct values, and new values 0 upwards introduced in row major order.

The programs for A253612, there is no canonical definition to state claims against.
-/

/-! ## A253612.P17193220983540135951

`A253615(∑[n+2])`
-/

namespace A253612.P17193220983540135951
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253615 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A253612.P17193220983540135951

/-! ## A253612.P3693334421991515225

`record[A253615(A135223(n+2)-1)]`
-/

namespace A253612.P3693334421991515225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253615 (A135223 (n + 2) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253612.P3693334421991515225

/-! ## A253612.P1613786156723085029

`record[gcd(A002262(n+3), A253615(n+2))]`
-/

namespace A253612.P1613786156723085029
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 (n + 3)) (A253615 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253612.P1613786156723085029

/-! ## A253612.P2307891491320701732

`A253615(A000096(n+1))*A318809(n+1)`
-/

namespace A253612.P2307891491320701732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253615 (A000096 (n + 1)).toNat * A318809 (n + 1)

end

end A253612.P2307891491320701732

/-!
# A253613: Number of (n+2)X(3+2) 0..2 arrays with every consecutive three elements in every row and diagonal having one or two distinct values, and in every column and antidiagonal having two or three distinct values, and new values 0 upwards introduced in row major order.

The programs for A253613, there is no canonical definition to state claims against.
-/

/-! ## A253613.P9216013407576820012

`A253615(∑[n+3]+1)`
-/

namespace A253613.P9216013407576820012
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253615 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A253613.P9216013407576820012

/-!
# A253614: Number of (n+2)X(4+2) 0..2 arrays with every consecutive three elements in every row and diagonal having one or two distinct values, and in every column and antidiagonal having two or three distinct values, and new values 0 upwards introduced in row major order.

The programs for A253614, there is no canonical definition to state claims against.
-/

/-! ## A253614.P7669972171517657492

`A253615(∑[n+3]+n+4)`
-/

namespace A253614.P7669972171517657492
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253615 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 4))

end

end A253614.P7669972171517657492

/-!
# A253616: Number of (1+2)X(n+2) 0..2 arrays with every consecutive three elements in every row and diagonal having one or two distinct values, and in every column and antidiagonal having two or three distinct values, and new values 0 upwards introduced in row major order.

The programs for A253616, there is no canonical definition to state claims against.
-/

/-! ## A253616.P4729265735542383193

`A253615(∑[n]+1)`
-/

namespace A253616.P4729265735542383193
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253615 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A253616.P4729265735542383193

/-! ## A253616.P15563875961208923397

`record[A253615(A286235(n+1))]`
-/

namespace A253616.P15563875961208923397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253615 (A286235 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253616.P15563875961208923397

/-! ## A253616.P3858136558321110812

`record[A010054(n)*A253615(n+1)]`
-/

namespace A253616.P3858136558321110812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A253615 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253616.P3858136558321110812

/-! ## A253616.P2441709153928863040

`record[A253615(n+1)/A013618(n)]`
-/

namespace A253616.P2441709153928863040
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A253615 (n + 1) : ℚ) / (A013618 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253616.P2441709153928863040

/-! ## A253616.P13195913422709110949

`record[A253615(n+1)/A079502(n)]`
-/

namespace A253616.P13195913422709110949
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A253615 (n + 1) : ℚ) / (A079502 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253616.P13195913422709110949

/-!
# A253617: Number of (2+2)X(n+2) 0..2 arrays with every consecutive three elements in every row and diagonal having one or two distinct values, and in every column and antidiagonal having two or three distinct values, and new values 0 upwards introduced in row major order.

The programs for A253617, there is no canonical definition to state claims against.
-/

/-! ## A253617.P14872965140374284672

`A253615(∑[n+1]+2)`
-/

namespace A253617.P14872965140374284672
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253615 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A253617.P14872965140374284672

/-! ## A253617.P12598222912411156711

`record[A253615(A106255(n+1)+2)]`
-/

namespace A253617.P12598222912411156711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253615 (A106255 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253617.P12598222912411156711

/-! ## A253617.P16693211416664322098

`record[A253615(A135223(n+1)+2)]`
-/

namespace A253617.P16693211416664322098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253615 (A135223 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253617.P16693211416664322098

/-! ## A253617.P6059830222991643824

`record[A253615(A143310(n+1)+2)]`
-/

namespace A253617.P6059830222991643824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253615 (A143310 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253617.P6059830222991643824

/-! ## A253617.P5612852191664580925

`record[A023531(n)*A253615(n+3)]`
-/

namespace A253617.P5612852191664580925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 n * A253615 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253617.P5612852191664580925

/-!
# A253618: Number of (3+2)X(n+2) 0..2 arrays with every consecutive three elements in every row and diagonal having one or two distinct values, and in every column and antidiagonal having two or three distinct values, and new values 0 upwards introduced in row major order.

The programs for A253618, there is no canonical definition to state claims against.
-/

/-! ## A253618.P2390329007218627178

`A253615(∑[n+2]+4)`
-/

namespace A253618.P2390329007218627178
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253615 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A253618.P2390329007218627178

/-! ## A253618.P1047591709741568197

`A253615(A167614(n+1))+A025442(n)`
-/

namespace A253618.P1047591709741568197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253615 (A167614 (n + 1)).toNat + A025442 n

end

end A253618.P1047591709741568197

/-! ## A253618.P2856760757272988361

`A253615(A167614(n+1))+A025444(n)`
-/

namespace A253618.P2856760757272988361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253615 (A167614 (n + 1)).toNat + A025444 n

end

end A253618.P2856760757272988361

/-! ## A253618.P12892241601674930506

`A253615(A167614(n+1))+A185284(n)`
-/

namespace A253618.P12892241601674930506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253615 (A167614 (n + 1)).toNat + A185284 n

end

end A253618.P12892241601674930506

/-!
# A253619: Number of (4+2)X(n+2) 0..2 arrays with every consecutive three elements in every row and diagonal having one or two distinct values, and in every column and antidiagonal having two or three distinct values, and new values 0 upwards introduced in row major order.

The programs for A253619, there is no canonical definition to state claims against.
-/

/-! ## A253619.P18172533137553758656

`A253615(∑[n+3]+7)`
-/

namespace A253619.P18172533137553758656
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253615 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A253619.P18172533137553758656

/-! ## A253619.P13010542579575920320

`A195061(n+2)*A253615(A055999(n)+10)`
-/

namespace A253619.P13010542579575920320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195061 (n + 2) * A253615 (A055999 n + 10).toNat

end

end A253619.P13010542579575920320

/-! ## A253619.P10979201871186129600

`A294927(A094373(n))+A253615(A055999(n)+10)`
-/

namespace A253619.P10979201871186129600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294927 (A094373 n).toNat + A253615 (A055999 n + 10).toNat

end

end A253619.P10979201871186129600

/-!
# A253620: Maximum number of segments in nonintersecting increasing path on n X n hexagonal (isogonal) grid.

The programs for A253620, there is no canonical definition to state claims against.
-/

/-! ## A253620.P11670557113742517671

`floor(sqrt(∑[(2*n)²]))+n`
-/

namespace A253620.P11670557113742517671
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.sqrt (∑ j ∈ Finset.range (n + 1), f1 j) + n

end

end A253620.P11670557113742517671

/-! ## A253620.P10170009525345165521

`floor(sqrt(n*∑[record[xor(3, n)]]))`
-/

namespace A253620.P10170009525345165521
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.sqrt (n * (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A253620.P10170009525345165521

/-! ## A253620.P13149957325516756564

`round(log(∑[(2*(n+1))!/2]))`
-/

namespace A253620.P13149957325516756564
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (2 * (n + 1)) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.log ((∑ j ∈ Finset.range (n + 1), f1 j : ℚ) : ℝ))

end

end A253620.P13149957325516756564

/-! ## A253620.P1511931013781849213

`ceil(∑[log2(p?[4*n-1]-2)])`
-/

namespace A253620.P1511931013781849213
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n : ℤ) - 1

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) - 2 : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉

end

end A253620.P1511931013781849213

/-! ## A253620.P8077559667362823935

`round(log(∑[floor((n+2+n)!/2)]))`
-/

namespace A253620.P8077559667362823935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.factorial (n + 2 + n) : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.log ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℝ))

end

end A253620.P8077559667362823935

/-!
# A253621: Indices of centered heptagonal numbers (A069099) which are also centered pentagonal numbers (A005891).

The programs for A253621, the canonical program `A253621.P15158195906732418595` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A253621 has offset 1).

The definition of A253621 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A253621.P15158195906732418595

`12*a(n-1)-a(n-2)-5` with `a(0)=1, a(1)=6`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A253621

/-- `12*a(n-1)-a(n-2)-5` -/
def P15158195906732418595.Spec : Prop :=
  ∀ n, P15158195906732418595.a n = A253621 (n + 1)

theorem P15158195906732418595.correct : P15158195906732418595.Spec := by
  intro n
  simp only [A253621, Nat.add_sub_cancel]

end A253621

/-! ## A253621.P1167051854592161527

`A023038(n)+1-a(n-1)` with `a(0)=1`
-/

namespace A253621.P1167051854592161527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A023038 n + (1 - a (n - 1))

end

end A253621.P1167051854592161527

namespace A253621

/-- `A023038(n)+1-a(n-1)` -/
def P1167051854592161527.Spec : Prop :=
  ∀ n, P1167051854592161527.a n = A253621 (n + 1)

end A253621

/-! ## A253621.P12102066785767790390

`5*A098299(n)+2-a(n-1)` with `a(0)=1`
-/

namespace A253621.P12102066785767790390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  5 * A098299 n + (2 - a (n - 1))

end

end A253621.P12102066785767790390

namespace A253621

/-- `5*A098299(n)+2-a(n-1)` -/
def P12102066785767790390.Spec : Prop :=
  ∀ n, P12102066785767790390.a n = A253621 (n + 1)

end A253621

/-! ## A253621.P14035022365323612727

`A080875(n+1)*A080875(n)`
-/

namespace A253621.P14035022365323612727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080875 (n + 1) * A080875 n

end

end A253621.P14035022365323612727

namespace A253621

/-- `A080875(n+1)*A080875(n)` -/
def P14035022365323612727.Spec : Prop :=
  ∀ n, P14035022365323612727.a n = A253621 (n + 1)

end A253621

/-! ## A253621.P13781797573556780400

`record[A080875(A008611(n))]*A080875(n)`
-/

namespace A253621.P13781797573556780400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080875 (A008611 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A080875 n

end

end A253621.P13781797573556780400

namespace A253621

/-- `record[A080875(A008611(n))]*A080875(n)` -/
def P13781797573556780400.Spec : Prop :=
  ∀ n, P13781797573556780400.a n = A253621 (n + 1)

end A253621

/-! ## A253621.P4410723460739767322

`lcm(A080875(A000027(n+1)), A080875(n))`
-/

namespace A253621.P4410723460739767322
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A080875 (A000027 (n + 1)).toNat) (A080875 n)

end

end A253621.P4410723460739767322

namespace A253621

/-- `lcm(A080875(A000027(n+1)), A080875(n))` -/
def P4410723460739767322.Spec : Prop :=
  ∀ n, (P4410723460739767322.a n : ℤ) = A253621 (n + 1)

end A253621

/-! ## A253621.P6823364733260684210

`ceil(A077417(n)/2)`
-/

namespace A253621.P6823364733260684210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A077417 n : ℚ) / 2⌉

end

end A253621.P6823364733260684210

namespace A253621

/-- `ceil(A077417(n)/2)` -/
def P6823364733260684210.Spec : Prop :=
  ∀ n, P6823364733260684210.a n = A253621 (n + 1)

end A253621

/-! ## A253621.P12311549016855322557

`ceil(A041059(2*n)/2)`
-/

namespace A253621.P12311549016855322557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A041059 (2 * n) : ℚ) / 2⌉

end

end A253621.P12311549016855322557

namespace A253621

/-- `ceil(A041059(2*n)/2)` -/
def P12311549016855322557.Spec : Prop :=
  ∀ n, P12311549016855322557.a n = A253621 (n + 1)

end A253621

/-! ## A253621.P14551353685203017871

`(A080875(n+1+n)+1)/2`
-/

namespace A253621.P14551353685203017871
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080875 (n + 1 + n) + 1 : ℚ) / 2

end

end A253621.P14551353685203017871

namespace A253621

/-- `(A080875(n+1+n)+1)/2` -/
def P14551353685203017871.Spec : Prop :=
  ∀ n, P14551353685203017871.a n = (A253621 (n + 1) : ℚ)

end A253621

/-!
# A253622: Centered heptagonal numbers (A069099) which are also centered pentagonal numbers (A005891).

The programs for A253622, there is no canonical definition to state claims against.
-/

/-! ## A253622.P11074898393460110697

`ceil(A023038(2*n+1)/8)`
-/

namespace A253622.P11074898393460110697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A023038 (2 * n + 1) : ℚ) / 8⌉

end

end A253622.P11074898393460110697

/-! ## A253622.P3245813082540998986

`A302331(n)-floor(A302331(n)/4)`
-/

namespace A253622.P3245813082540998986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302331 n - ⌊(A302331 n : ℚ) / 4⌋

end

end A253622.P3245813082540998986

/-! ## A253622.P5490015262776489702

`round(A087800(2*n+1)/16)`
-/

namespace A253622.P5490015262776489702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A087800 (2 * n + 1) : ℚ) / 16)

end

end A253622.P5490015262776489702

/-!
# A253623: Expansion of phi(q) * f(q, q^2)^2 / f(q^2, q^4) in powers of q where phi(), f() are Ramanujan theta functions.

The programs for A253623, there is no canonical definition to state claims against.
-/

/-! ## A253623.P5699763641289282652

`(-1)^n*A244339(n)`
-/

namespace A253623.P5699763641289282652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A244339 n

end

end A253623.P5699763641289282652

/-! ## A253623.P15382977692034282977

`abs(A244339(n))`
-/

namespace A253623.P15382977692034282977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A244339 n|

end

end A253623.P15382977692034282977

/-! ## A253623.P16971138144075526860

`A217220(lcm(2, n)+n)`
-/

namespace A253623.P16971138144075526860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217220 (Nat.lcm 2 n + n)

end

end A253623.P16971138144075526860

/-! ## A253623.P8040893461445152298

`A217220(n*gcd(2, n))`
-/

namespace A253623.P8040893461445152298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217220 (n * Nat.gcd 2 n)

end

end A253623.P8040893461445152298

/-! ## A253623.P11283356799325781505

`A217220(n*(n+1)%2+n)`
-/

namespace A253623.P11283356799325781505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217220 (n * ((n + 1) % 2) + n)

end

end A253623.P11283356799325781505

/-! ## A253623.P2658627643943611313

`A217220(A022998(n))`
-/

namespace A253623.P2658627643943611313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217220 (A022998 n).toNat

end

end A253623.P2658627643943611313

/-! ## A253623.P11162584655847296842

`A217220(A165988(n))`
-/

namespace A253623.P11162584655847296842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217220 (A165988 n).toNat

end

end A253623.P11162584655847296842

/-! ## A253623.P2234385012117956436

`A217220(A227106(n))`
-/

namespace A253623.P2234385012117956436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217220 (A227106 n).toNat

end

end A253623.P2234385012117956436

/-! ## A253623.P1996184701836192382

`A217220(A317312(n))`
-/

namespace A253623.P1996184701836192382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217220 (A317312 n).toNat

end

end A253623.P1996184701836192382

/-! ## A253623.P3474866300794372422

`gcd(A000038(n), A244339(n))`
-/

namespace A253623.P3474866300794372422
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A244339 n)

end

end A253623.P3474866300794372422

/-! ## A253623.P12252702359831901012

`lcm(A000034(n), A244339(n))`
-/

namespace A253623.P12252702359831901012
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000034 n) (A244339 n)

end

end A253623.P12252702359831901012

/-! ## A253623.P12011690612522975206

`∑{d}[A244339(n), A000010(#)]`
-/

namespace A253623.P12011690612522975206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244339 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A253623.P12011690612522975206

/-! ## A253623.P15454689272384957608

`A217220(n*(A000034(n)+1))`
-/

namespace A253623.P15454689272384957608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217220 ((n : ℤ) * (A000034 n + 1)).toNat

end

end A253623.P15454689272384957608

/-! ## A253623.P2576719478352898449

`2*A107760(n)-A033716(n)`
-/

namespace A253623.P2576719478352898449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A107760 n - A033716 n

end

end A253623.P2576719478352898449

/-! ## A253623.P6787872512120860095

`A217220(2*n/A000034(n))`
-/

namespace A253623.P6787872512120860095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217220 (SequenceMachineLib.roundAway (2 * ((n : ℚ) / (A000034 n : ℚ)))).toNat

end

end A253623.P6787872512120860095

/-! ## A253623.P5343288799243586716

`A217220(n/2*A177002(n))`
-/

namespace A253623.P5343288799243586716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217220 (SequenceMachineLib.roundAway ((n : ℚ) / 2 * (A177002 n : ℚ))).toNat

end

end A253623.P5343288799243586716

/-! ## A253623.P2111462418216377088

`A217220(n*A068073(n+1))`
-/

namespace A253623.P2111462418216377088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217220 ((n : ℤ) * A068073 (n + 1)).toNat

end

end A253623.P2111462418216377088

/-! ## A253623.P7734127952431123507

`A217220(A317316(n))`
-/

namespace A253623.P7734127952431123507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217220 (A317316 n).toNat

end

end A253623.P7734127952431123507

/-! ## A253623.P12388981129857429419

`A217220(n*(A055770(n+1)+1))`
-/

namespace A253623.P12388981129857429419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217220 ((n : ℤ) * (A055770 (n + 1) + 1)).toNat

end

end A253623.P12388981129857429419

/-! ## A253623.P4930619092842647386

`A217220(n*A055770(n+2))`
-/

namespace A253623.P4930619092842647386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217220 ((n : ℤ) * A055770 (n + 2)).toNat

end

end A253623.P4930619092842647386

/-!
# A253624: Initial members of prime sextuples (p, p+2, p+12, p+14, p+24, p+26).

The programs for A253624, the canonical program `A253624.P12995082472217893624` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A253624 has offset 1).

The definition of A253624 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 236 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A253624.P12995082472217893624

`∩[A079292(n+1), A245568(n+1)]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A253624

/-- `∩[A079292(n+1), A245568(n+1)]` -/
def P12995082472217893624.Spec : Prop :=
  ∀ n, (P12995082472217893624.a n : ℤ) = A253624 (n + 1)

theorem P12995082472217893624.correct : P12995082472217893624.Spec := by
  intro n
  simp only [A253624, Nat.add_sub_cancel]

end A253624

/-! ## A253624.P4370019658950955329

`∩[A185022(n+1)-2, A185022(n+1)]`
-/

namespace A253624.P4370019658950955329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185022 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185022 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A253624.P4370019658950955329

namespace A253624

/-- `∩[A185022(n+1)-2, A185022(n+1)]` -/
def P4370019658950955329.Spec : Prop :=
  ∀ n, (P4370019658950955329.a n : ℤ) = A253624 (n + 1)

end A253624

/-!
# A253625: Expansion of psi(q^2) * f(-q, q^2)^2 / f(-q, -q^5) in powers of q where psi(), f() are Ramanujan theta functions.

The programs for A253625, there is no canonical definition to state claims against.
-/

/-! ## A253625.P6034976479475348490

`(-1)^n*A253626(n)`
-/

namespace A253625.P6034976479475348490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A253626 n

end

end A253625.P6034976479475348490

/-! ## A253625.P11119761693021369003

`A132973(n)/A010684(n)`
-/

namespace A253625.P11119761693021369003
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132973 n : ℚ) / (A010684 n : ℚ)

end

end A253625.P11119761693021369003

/-! ## A253625.P3687829714753542945

`A253626(n)/A033999(n)`
-/

namespace A253625.P3687829714753542945
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A253626 n : ℚ) / (A033999 n : ℚ)

end

end A253625.P3687829714753542945

/-! ## A253625.P7293851014326676143

`A132973(n)/A073575(n+1)`
-/

namespace A253625.P7293851014326676143
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132973 n : ℚ) / (A073575 (n + 1) : ℚ)

end

end A253625.P7293851014326676143

/-! ## A253625.P1873592687393777956

`2*A253626(n)-A107760(n)`
-/

namespace A253625.P1873592687393777956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A253626 n - A107760 n

end

end A253625.P1873592687393777956

/-! ## A253625.P5964854081869210536

`A132973(n)/(2-A033999(n))`
-/

namespace A253625.P5964854081869210536
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132973 n : ℚ) / (2 - A033999 n : ℚ)

end

end A253625.P5964854081869210536

/-! ## A253625.P3167852167727887063

`A107760(n)/(1-A010673(n)²)`
-/

namespace A253625.P3167852167727887063
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A107760 n : ℚ) / (1 - A010673 n ^ 2 : ℚ)

end

end A253625.P3167852167727887063

/-! ## A253625.P16640474619595447292

`(A115978(n)+A033716(2*n))/2`
-/

namespace A253625.P16640474619595447292
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A115978 n + A033716 (2 * n) : ℚ) / 2

end

end A253625.P16640474619595447292

/-! ## A253625.P8284427439541536066

`A107760(n)+A113973(n)-A123330(n)`
-/

namespace A253625.P8284427439541536066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107760 n + (A113973 n - A123330 n)

end

end A253625.P8284427439541536066

/-! ## A253625.P5415006865007559129

`A033716(2*n)+A033716(n)-A107760(n)`
-/

namespace A253625.P5415006865007559129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033716 (2 * n) + (A033716 n - A107760 n)

end

end A253625.P5415006865007559129

/-! ## A253625.P11971973043778495560

`A132973(n)+A217220(4*n)-A217220(n)`
-/

namespace A253625.P11971973043778495560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132973 n + (A217220 (4 * n) - A217220 n)

end

end A253625.P11971973043778495560

/-! ## A253625.P11964444373342402866

`(A115978(n)+A004016(2*n))/2`
-/

namespace A253625.P11964444373342402866
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A115978 n + A004016 (2 * n) : ℚ) / 2

end

end A253625.P11964444373342402866

/-! ## A253625.P15294870530407580402

`2*A253626(n)-A253626(2*n)`
-/

namespace A253625.P15294870530407580402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A253626 n - A253626 (2 * n)

end

end A253625.P15294870530407580402

/-! ## A253625.P2387779049321099211

`A033716(3*n)-(A107760(3*n)-A033716(2*n))`
-/

namespace A253625.P2387779049321099211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033716 (3 * n) - (A107760 (3 * n) - A033716 (2 * n))

end

end A253625.P2387779049321099211

/-!
# A253626: Expansion of psi(q^2) * f(q, q^2)^2 / f(q, q^5) in powers of q where psi(), f() are Ramanujan theta functions.

The programs for A253626, there is no canonical definition to state claims against.
-/

/-! ## A253626.P16867302431750472302

`(-1)^n*A253625(n)`
-/

namespace A253626.P16867302431750472302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A253625 n

end

end A253626.P16867302431750472302

/-! ## A253626.P6789046381786416399

`abs(A253625(n))`
-/

namespace A253626.P6789046381786416399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A253625 n|

end

end A253626.P6789046381786416399

/-! ## A253626.P11179711890311082992

`A107760(n)/A010684(n)`
-/

namespace A253626.P11179711890311082992
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A107760 n : ℚ) / (A010684 n : ℚ)

end

end A253626.P11179711890311082992

/-! ## A253626.P11196417119537494381

`gcd(A033716(n), A107760(n))`
-/

namespace A253626.P11196417119537494381
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A033716 n) (A107760 n)

end

end A253626.P11196417119537494381

/-! ## A253626.P18293655827092400277

`gcd(A097109(n), A132973(n))`
-/

namespace A253626.P18293655827092400277
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A097109 n) (A132973 n)

end

end A253626.P18293655827092400277

/-! ## A253626.P2905673441107958928

`gcd(A000038(n), A253625(n))`
-/

namespace A253626.P2905673441107958928
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A253625 n)

end

end A253626.P2905673441107958928

/-! ## A253626.P1058012538537511881

`abs(A132973(n)/A010684(n))`
-/

namespace A253626.P1058012538537511881
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A132973 n : ℚ) / (A010684 n : ℚ)|

end

end A253626.P1058012538537511881

/-! ## A253626.P6249623376572697195

`A107760(n)/(A010673(n)+1)`
-/

namespace A253626.P6249623376572697195
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A107760 n : ℚ) / (A010673 n + 1 : ℚ)

end

end A253626.P6249623376572697195

/-! ## A253626.P13386625178069451015

`A107760(n)/A073575(n+1)`
-/

namespace A253626.P13386625178069451015
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A107760 n : ℚ) / (A073575 (n + 1) : ℚ)

end

end A253626.P13386625178069451015

/-! ## A253626.P384281197033365076

`(A244339(n)+A004016(n))/2`
-/

namespace A253626.P384281197033365076
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A244339 n + A004016 n : ℚ) / 2

end

end A253626.P384281197033365076

/-! ## A253626.P9842030003895321351

`(A253625(n)+A107760(n))/2`
-/

namespace A253626.P9842030003895321351
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A253625 n + A107760 n : ℚ) / 2

end

end A253626.P9842030003895321351

/-! ## A253626.P13578555228465550093

`2*A253625(n)-A132973(n)`
-/

namespace A253626.P13578555228465550093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A253625 n - A132973 n

end

end A253626.P13578555228465550093

/-! ## A253626.P9688434287311959475

`A107760(n)/(2-A033999(n))`
-/

namespace A253626.P9688434287311959475
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A107760 n : ℚ) / (2 - A033999 n : ℚ)

end

end A253626.P9688434287311959475

/-! ## A253626.P601385020193757953

`lcm(A008836(n+1), A253625(n))`
-/

namespace A253626.P601385020193757953
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A008836 (n + 1)) (A253625 n)

end

end A253626.P601385020193757953

/-! ## A253626.P440635564275364390

`(A033716(2*n)+A033716(n))/2`
-/

namespace A253626.P440635564275364390
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033716 (2 * n) + A033716 n : ℚ) / 2

end

end A253626.P440635564275364390

/-! ## A253626.P7723507414562415520

`A001281(A033716(2*n)+A033716(n))`
-/

namespace A253626.P7723507414562415520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A033716 (2 * n) + A033716 n).toNat

end

end A253626.P7723507414562415520

/-! ## A253626.P11112290889568368335

`A078898(A033716(2*n)+A033716(n))`
-/

namespace A253626.P11112290889568368335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (A033716 (2 * n) + A033716 n).toNat

end

end A253626.P11112290889568368335

/-! ## A253626.P2071387261916328263

`A107760(n)+A132973(n)-A253625(n)`
-/

namespace A253626.P2071387261916328263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107760 n + (A132973 n - A253625 n)

end

end A253626.P2071387261916328263

/-!
# A253627: Initial members of prime sextuples (n, n+2, n+12, n+14, n+18, n+20).

The programs for A253627, there is no canonical definition to state claims against.
-/

/-! ## A253627.P16287904682876586636

`∩[A079292(n+1), A079304(n+1)]`
-/

namespace A253627.P16287904682876586636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079292 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079304 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A253627.P16287904682876586636

/-!
# A253628: Psi(n) mod n, where Psi is the Dedekind psi function (A001615).

The programs for A253628, the canonical program `A253628.P272001656401133044` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A253628 has offset 1).

The definition of A253628 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A253628.P272001656401133044

`((n+1)/∏{p}[n+1, #]*∏{p}[n+1, #+1])%(n+1)`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A253628

/-- `((n+1)/∏{p}[n+1, #]*∏{p}[n+1, #+1])%(n+1)` -/
def P272001656401133044.Spec : Prop :=
  ∀ n, P272001656401133044.a n = A253628 (n + 1)

theorem P272001656401133044.correct : P272001656401133044.Spec := by
  intro n
  simp only [A253628, Nat.add_sub_cancel]

end A253628

/-! ## A253628.P7800863770916163170

`A001615(n+1)%(n+1)`
-/

namespace A253628.P7800863770916163170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001615 (n + 1)) (n + 1 : ℤ)

end

end A253628.P7800863770916163170

namespace A253628

/-- `A001615(n+1)%(n+1)` -/
def P7800863770916163170.Spec : Prop :=
  ∀ n, P7800863770916163170.a n = A253628 (n + 1)

end A253628

/-! ## A253628.P16254178196769939236

`A306927(n+1)%(n+1)`
-/

namespace A253628.P16254178196769939236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A306927 (n + 1)) (n + 1 : ℤ)

end

end A253628.P16254178196769939236

namespace A253628

/-- `A306927(n+1)%(n+1)` -/
def P16254178196769939236.Spec : Prop :=
  ∀ n, P16254178196769939236.a n = A253628 (n + 1)

end A253628

/-! ## A253628.P415446659990028492

`abs(A158523(n+1)%(n+1))`
-/

namespace A253628.P415446659990028492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (A158523 (n + 1)) (n + 1 : ℤ)|

end

end A253628.P415446659990028492

namespace A253628

/-- `abs(A158523(n+1)%(n+1))` -/
def P415446659990028492.Spec : Prop :=
  ∀ n, P415446659990028492.a n = A253628 (n + 1)

end A253628

/-! ## A253628.P8569802345288852494

`(A000082(n+1)/(n+1))%(n+1)`
-/

namespace A253628.P8569802345288852494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A000082 (n + 1) : ℚ) / (n + 1 : ℚ))) (n + 1 : ℤ)

end

end A253628.P8569802345288852494

namespace A253628

/-- `(A000082(n+1)/(n+1))%(n+1)` -/
def P8569802345288852494.Spec : Prop :=
  ∀ n, P8569802345288852494.a n = A253628 (n + 1)

end A253628

/-! ## A253628.P3655032492105997174

`(A007434(n+1)/A000010(n+1))%(n+1)`
-/

namespace A253628.P3655032492105997174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A007434 (n + 1) : ℚ) / (A000010 (n + 1) : ℚ))) (n + 1 : ℤ)

end

end A253628.P3655032492105997174

namespace A253628

/-- `(A007434(n+1)/A000010(n+1))%(n+1)` -/
def P3655032492105997174.Spec : Prop :=
  ∀ n, P3655032492105997174.a n = A253628 (n + 1)

end A253628

/-! ## A253628.P13688276352898241434

`A003557(n+1)*A054024(A007947(n+1))`
-/

namespace A253628.P13688276352898241434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (n + 1) * A054024 (A007947 (n + 1)).toNat

end

end A253628.P13688276352898241434

namespace A253628

/-- `A003557(n+1)*A054024(A007947(n+1))` -/
def P13688276352898241434.Spec : Prop :=
  ∀ n, P13688276352898241434.a n = A253628 (n + 1)

end A253628

/-!
# A253629: Multiplicative function defined for prime powers by a(p^e) = p^(e-1)(p+1) if p > 2 and a(2^e) = 2^(e-1).

The programs for A253629, the canonical program `A253629.P1098263720651424872` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A253629 has offset 1).

The definition of A253629 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A253629.P5923088249845889682

`A001615(n+1)/3^(n%2)`
-/

namespace A253629.P5923088249845889682
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001615 (n + 1) : ℚ) / (3 ^ (n % 2) : ℚ)

end

end A253629.P5923088249845889682

namespace A253629

/-- `A001615(n+1)/3^(n%2)` -/
def P5923088249845889682.Spec : Prop :=
  ∀ n, P5923088249845889682.a n = (A253629 (n + 1) : ℚ)

end A253629

/-! ## A253629.P8202604442334668711

`∑{d}[n+1, #*A359155((n+1)/#)]`
-/

namespace A253629.P8202604442334668711
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A359155 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A253629.P8202604442334668711

namespace A253629

/-- `∑{d}[n+1, #*A359155((n+1)/#)]` -/
def P8202604442334668711.Spec : Prop :=
  ∀ n, P8202604442334668711.a n = A253629 (n + 1)

end A253629

/-! ## A253629.P2423386985720776445

`(n+1)/∏{p}[n+1, #]*A000593(∏{p}[n+1, #])`
-/

namespace A253629.P2423386985720776445
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * (A000593 (∏ p ∈ Nat.primeFactors (f2 n), p) : ℚ)

end

end A253629.P2423386985720776445

namespace A253629

/-- `(n+1)/∏{p}[n+1, #]*A000593(∏{p}[n+1, #])` -/
def P2423386985720776445.Spec : Prop :=
  ∀ n, P2423386985720776445.a n = (A253629 (n + 1) : ℚ)

end A253629

/-! ## A253629.P3303859770462713520

`(n+1)/∏{p}[n+1, #]*A113184(∏{p}[n+1, #])`
-/

namespace A253629.P3303859770462713520
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * (A113184 (∏ p ∈ Nat.primeFactors (f2 n), p) : ℚ)

end

end A253629.P3303859770462713520

namespace A253629

/-- `(n+1)/∏{p}[n+1, #]*A113184(∏{p}[n+1, #])` -/
def P3303859770462713520.Spec : Prop :=
  ∀ n, P3303859770462713520.a n = (A253629 (n + 1) : ℚ)

end A253629

/-! ## A253629.P11373307970629132881

`(n+1)/∏{p}[n+1, #]*A300894(∏{p}[n+1, #])`
-/

namespace A253629.P11373307970629132881
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * (A300894 (∏ p ∈ Nat.primeFactors (f2 n), p) : ℚ)

end

end A253629.P11373307970629132881

namespace A253629

/-- `(n+1)/∏{p}[n+1, #]*A300894(∏{p}[n+1, #])` -/
def P11373307970629132881.Spec : Prop :=
  ∀ n, P11373307970629132881.a n = (A253629 (n + 1) : ℚ)

end A253629

/-! ## A253629.P5361891635771847928

`(n+1)/∏{p}[n+1, #]*A048250((n+1)/and(n+1, -(n+1)))`
-/

namespace A253629.P5361891635771847928
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * (A048250 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ))).toNat : ℚ)

end

end A253629.P5361891635771847928

namespace A253629

/-- `(n+1)/∏{p}[n+1, #]*A048250((n+1)/and(n+1, -(n+1)))` -/
def P5361891635771847928.Spec : Prop :=
  ∀ n, P5361891635771847928.a n = (A253629 (n + 1) : ℚ)

end A253629

/-! ## A253629.P5741923588737357993

`A159634(A026741(n+1))`
-/

namespace A253629.P5741923588737357993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159634 (A026741 (n + 1)).toNat

end

end A253629.P5741923588737357993

namespace A253629

/-- `A159634(A026741(n+1))` -/
def P5741923588737357993.Spec : Prop :=
  ∀ n, P5741923588737357993.a n = A253629 (n + 1)

end A253629

/-! ## A253629.P13841827476791637270

`A001615(n+1)/A010684(n)`
-/

namespace A253629.P13841827476791637270
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001615 (n + 1) : ℚ) / (A010684 n : ℚ)

end

end A253629.P13841827476791637270

namespace A253629

/-- `A001615(n+1)/A010684(n)` -/
def P13841827476791637270.Spec : Prop :=
  ∀ n, P13841827476791637270.a n = (A253629 (n + 1) : ℚ)

end A253629

/-! ## A253629.P8506802491063273154

`A159634((n+1)/A000034(n))`
-/

namespace A253629.P8506802491063273154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159634 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A000034 n : ℚ))).toNat

end

end A253629.P8506802491063273154

namespace A253629

/-- `A159634((n+1)/A000034(n))` -/
def P8506802491063273154.Spec : Prop :=
  ∀ n, P8506802491063273154.a n = A253629 (n + 1)

end A253629

/-! ## A253629.P10624277567241993240

`A000082(n+1)/A165998(n)`
-/

namespace A253629.P10624277567241993240
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000082 (n + 1) : ℚ) / (A165998 n : ℚ)

end

end A253629.P10624277567241993240

namespace A253629

/-- `A000082(n+1)/A165998(n)` -/
def P10624277567241993240.Spec : Prop :=
  ∀ n, P10624277567241993240.a n = (A253629 (n + 1) : ℚ)

end A253629

/-! ## A253629.P1098263720651424872

`A003557(n+1)*A206787(n+1)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A253629

/-- `A003557(n+1)*A206787(n+1)` -/
def P1098263720651424872.Spec : Prop :=
  ∀ n, P1098263720651424872.a n = A253629 (n + 1)

theorem P1098263720651424872.correct : P1098263720651424872.Spec := by
  intro n
  simp only [A253629, Nat.add_sub_cancel]

end A253629

/-! ## A253629.P9282327790908216688

`A160467(n+1)*A347385(n+1)`
-/

namespace A253629.P9282327790908216688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160467 (n + 1) * A347385 (n + 1)

end

end A253629.P9282327790908216688

namespace A253629

/-- `A160467(n+1)*A347385(n+1)` -/
def P9282327790908216688.Spec : Prop :=
  ∀ n, P9282327790908216688.a n = A253629 (n + 1)

end A253629

/-! ## A253629.P6095487771605255170

`A070732(n+1)/A080512(n+1)`
-/

namespace A253629.P6095487771605255170
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A070732 (n + 1) : ℚ) / (A080512 (n + 1) : ℚ)

end

end A253629.P6095487771605255170

namespace A253629

/-- `A070732(n+1)/A080512(n+1)` -/
def P6095487771605255170.Spec : Prop :=
  ∀ n, P6095487771605255170.a n = (A253629 (n + 1) : ℚ)

end A253629

/-! ## A253629.P7671908975123662570

`A001615(n+1)/(2-A033999(n))`
-/

namespace A253629.P7671908975123662570
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001615 (n + 1) : ℚ) / (2 - A033999 n : ℚ)

end

end A253629.P7671908975123662570

namespace A253629

/-- `A001615(n+1)/(2-A033999(n))` -/
def P7671908975123662570.Spec : Prop :=
  ∀ n, P7671908975123662570.a n = (A253629 (n + 1) : ℚ)

end A253629

/-! ## A253629.P10827660602413282244

`gcd(A001615(n+1), A159634(n+1))`
-/

namespace A253629.P10827660602413282244
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001615 (n + 1)) (A159634 (n + 1))

end

end A253629.P10827660602413282244

namespace A253629

/-- `gcd(A001615(n+1), A159634(n+1))` -/
def P10827660602413282244.Spec : Prop :=
  ∀ n, (P10827660602413282244.a n : ℤ) = A253629 (n + 1)

end A253629

/-! ## A253629.P7333279887276308974

`A001615(n+1)/(2*A000035(n)+1)`
-/

namespace A253629.P7333279887276308974
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001615 (n + 1) : ℚ) / (2 * A000035 n + 1 : ℚ)

end

end A253629.P7333279887276308974

namespace A253629

/-- `A001615(n+1)/(2*A000035(n)+1)` -/
def P7333279887276308974.Spec : Prop :=
  ∀ n, P7333279887276308974.a n = (A253629 (n + 1) : ℚ)

end A253629

/-! ## A253629.P12872297847808673583

`∑{d}[n+1, A007432(#)*A335841((n+1)/#)]`
-/

namespace A253629.P12872297847808673583
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007432 d * A335841 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A253629.P12872297847808673583

namespace A253629

/-- `∑{d}[n+1, A007432(#)*A335841((n+1)/#)]` -/
def P12872297847808673583.Spec : Prop :=
  ∀ n, P12872297847808673583.a n = A253629 (n + 1)

end A253629

/-! ## A253629.P828440152977207724

`∑{d}[n+1, A002131(#)*A359548((n+1)/#)]`
-/

namespace A253629.P828440152977207724
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A002131 d * A359548 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A253629.P828440152977207724

namespace A253629

/-- `∑{d}[n+1, A002131(#)*A359548((n+1)/#)]` -/
def P828440152977207724.Spec : Prop :=
  ∀ n, P828440152977207724.a n = A253629 (n + 1)

end A253629

/-! ## A253629.P18117012501457845535

`∑{d}[n+1, A063659(#)*A309873((n+1)/#)]`
-/

namespace A253629.P18117012501457845535
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A063659 d * A309873 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A253629.P18117012501457845535

namespace A253629

/-- `∑{d}[n+1, A063659(#)*A309873((n+1)/#)]` -/
def P18117012501457845535.Spec : Prop :=
  ∀ n, P18117012501457845535.a n = A253629 (n + 1)

end A253629

/-! ## A253629.P16151495920013879174

`∑{d}[n+1, A068068(#)*A326305((n+1)/#)]`
-/

namespace A253629.P16151495920013879174
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A068068 d * A326305 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A253629.P16151495920013879174

namespace A253629

/-- `∑{d}[n+1, A068068(#)*A326305((n+1)/#)]` -/
def P16151495920013879174.Spec : Prop :=
  ∀ n, P16151495920013879174.a n = A253629 (n + 1)

end A253629

/-!
# A253630: Number of iterations of A253629 needed for n to reach 2.

The programs for A253630, there is no canonical definition to state claims against.
-/

/-! ## A253630.P1466543534859236156

`A334097((n+2)/gcd(2, n))`
-/

namespace A253630.P1466543534859236156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334097 (SequenceMachineLib.roundAway ((n + 2 : ℚ) / (Nat.gcd 2 n : ℚ))).toNat

end

end A253630.P1466543534859236156

/-! ## A253630.P6902026234307077848

`A334097(n+2)-char[2*n]`
-/

namespace A253630.P6902026234307077848
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334097 (n + 2) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A253630.P6902026234307077848

/-! ## A253630.P492310096058194298

`A334097(gcd(n+2, ∑[n+1]))`
-/

namespace A253630.P492310096058194298
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334097 (Nat.gcd (n + 2) (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A253630.P492310096058194298

/-! ## A253630.P14722864776472638742

`A334097(A145051(n+1))`
-/

namespace A253630.P14722864776472638742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334097 (A145051 (n + 1)).toNat

end

end A253630.P14722864776472638742

/-! ## A253630.P7235202906388213976

`A334097(A026741(n+2))`
-/

namespace A253630.P7235202906388213976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334097 (A026741 (n + 2)).toNat

end

end A253630.P7235202906388213976

/-! ## A253630.P1192787049199159423

`A334097(A253629(n+2))`
-/

namespace A253630.P1192787049199159423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334097 (A253629 (n + 2)).toNat

end

end A253630.P1192787049199159423

/-! ## A253630.P105642711071391703

`A334097(abs(Δ[A008795(n)]))`
-/

namespace A253630.P105642711071391703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008795 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334097 |f1 (n + 1) - f1 n|.toNat

end

end A253630.P105642711071391703

/-! ## A253630.P18377037492253845611

`A334097(Δ[A001318(n+1)])`
-/

namespace A253630.P18377037492253845611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001318 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334097 (f1 (n + 1) - f1 n).toNat

end

end A253630.P18377037492253845611

/-! ## A253630.P1345921411382541134

`A334097(A029579(n+4)-2)`
-/

namespace A253630.P1345921411382541134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334097 (A029579 (n + 4) - 2).toNat

end

end A253630.P1345921411382541134

/-! ## A253630.P13677127389449121534

`A334097(Δ[A008795(n)]²)/2`
-/

namespace A253630.P13677127389449121534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008795 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A334097 ((f1 (n + 1) - f1 n) ^ 2).toNat : ℚ) / 2

end

end A253630.P13677127389449121534

/-!
# A253631: Palindromic primes containing only the digits 0 and 1 such that their squares are palindromes.

The programs for A253631, there is no canonical definition to state claims against.
-/

/-! ## A253631.P5786566121573713654

`∩[A002778(n+1), A068188(n+1)]`
-/

namespace A253631.P5786566121573713654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002778 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068188 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A253631.P5786566121573713654

/-! ## A253631.P8705687854659697578

`∩[A057135(n+1), A068188(n+1)]`
-/

namespace A253631.P8705687854659697578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057135 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068188 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A253631.P8705687854659697578

/-! ## A253631.P5653020995702775603

`A225603(n+3)`
-/

namespace A253631.P5653020995702775603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225603 (n + 3)

end

end A253631.P5653020995702775603

/-! ## A253631.P7353616052246641148

`∩[A068188(n+1), A161721(n+1)]`
-/

namespace A253631.P7353616052246641148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068188 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161721 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A253631.P7353616052246641148

/-! ## A253631.P3417108146602125695

`∩[A002778(n+1), A370447(n+1)]`
-/

namespace A253631.P3417108146602125695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002778 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370447 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A253631.P3417108146602125695

/-!
# A253633: a(n) is the least positive integer b such that b^(2^n) + (b-1)^(2^n) is prime.

The programs for A253633, there is no canonical definition to state claims against.
-/

/-! ## A253633.P11866444995185465465

`A080208(n)+1`
-/

namespace A253633.P11866444995185465465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080208 n + 1

end

end A253633.P11866444995185465465

/-! ## A253633.P483159482697495084

`A305897(2*A080208(n))`
-/

namespace A253633.P483159482697495084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305897 (2 * A080208 n).toNat

end

end A253633.P483159482697495084

/-! ## A253633.P3281487987657869217

`n-(A023443(n)-A080208(n))`
-/

namespace A253633.P3281487987657869217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A023443 n - A080208 n)

end

end A253633.P3281487987657869217

/-! ## A253633.P10230209084777248959

`2-(A000034(2*n)-A080208(n))`
-/

namespace A253633.P10230209084777248959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (A000034 (2 * n) - A080208 n)

end

end A253633.P10230209084777248959

/-! ## A253633.P16272151962898278468

`abs(A321804(A003056(n))-A080208(n))`
-/

namespace A253633.P16272151962898278468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A321804 (A003056 n).toNat - A080208 n|

end

end A253633.P16272151962898278468

/-!
# A253636: Second partial sums of eighth powers (A001016).

The programs for A253636, the canonical program `A253636.P13451430274817553518` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A253636 has offset 1).

The definition of A253636 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A253636.P13451430274817553518

`∑[∑[(n+1)^8]]`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A253636

/-- `∑[∑[(n+1)^8]]` -/
def P13451430274817553518.Spec : Prop :=
  ∀ n, (P13451430274817553518.a n : ℤ) = A253636 (n + 1)

theorem P13451430274817553518.correct : P13451430274817553518.Spec := by
  intro n
  simp only [A253636, Nat.add_sub_cancel]

end A253636

/-! ## A253636.P966476369422062131

`∑[(n+1)²²²]+a(n-1)` with `a(0)=1`
-/

namespace A253636.P966476369422062131
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (((n + 1) ^ 2) ^ 2) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + a (n - 1)

end

end A253636.P966476369422062131

namespace A253636

/-- `∑[(n+1)²²²]+a(n-1)` -/
def P966476369422062131.Spec : Prop :=
  ∀ n, (P966476369422062131.a n : ℤ) = A253636 (n + 1)

end A253636

/-! ## A253636.P17607483661846225488

`floor(∑[∑[∑[a(n-1)-2]²²]])` with `a(0)=-1`

`floor` is left out, it is the identity on integers.
-/

namespace A253636.P17607483661846225488
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.rec [-1] fun n f3 =>
  f3 (n - 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f3 j) ^ 2) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A253636.P17607483661846225488

namespace A253636

/-- `floor(∑[∑[∑[a(n-1)-2]²²]])` -/
def P17607483661846225488.Spec : Prop :=
  ∀ n, P17607483661846225488.a n = A253636 (n + 1)

end A253636

/-! ## A253636.P11564465189855406371

`∑[∑[A000007(n)+(n+1)²²²]]-(n+1)`
-/

namespace A253636.P11564465189855406371
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + ((((n + 1) ^ 2) ^ 2) ^ 2 : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n + 1 : ℤ)

end

end A253636.P11564465189855406371

namespace A253636

/-- `∑[∑[A000007(n)+(n+1)²²²]]-(n+1)` -/
def P11564465189855406371.Spec : Prop :=
  ∀ n, P11564465189855406371.a n = A253636 (n + 1)

end A253636

/-! ## A253636.P8144657251267376473

`-∑[∑[-Δ[A000542(n)]]]`
-/

namespace A253636.P8144657251267376473
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000542 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(f3 (n + 1) - f3 n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ j ∈ Finset.range (n + 1), f1 j)

end

end A253636.P8144657251267376473

namespace A253636

/-- `-∑[∑[-Δ[A000542(n)]]]` -/
def P8144657251267376473.Spec : Prop :=
  ∀ n, P8144657251267376473.a n = A253636 (n + 1)

end A253636

/-! ## A253636.P17586834586723276607

`A000542(n+1)+∑[A000542(n)]`
-/

namespace A253636.P17586834586723276607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000542 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000542 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A253636.P17586834586723276607

namespace A253636

/-- `A000542(n+1)+∑[A000542(n)]` -/
def P17586834586723276607.Spec : Prop :=
  ∀ n, P17586834586723276607.a n = A253636 (n + 1)

end A253636

/-! ## A253636.P5930352949627921609

`∑[∑[(n+1)²²²]]%A240362(n+1)`
-/

namespace A253636.P5930352949627921609
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (((n + 1) ^ 2) ^ 2) ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (A240362 (n + 1))

end

end A253636.P5930352949627921609

namespace A253636

/-- `∑[∑[(n+1)²²²]]%A240362(n+1)` -/
def P5930352949627921609.Spec : Prop :=
  ∀ n, P5930352949627921609.a n = A253636 (n + 1)

end A253636

/-!
# A253637: Second partial sums of ninth powers (A001017).

The programs for A253637, the canonical program `A253637.P11587562825168254286` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A253637 has offset 1).

The definition of A253637 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A253637.P11587562825168254286

`∑[∑[(n+1)^9]]`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A253637

/-- `∑[∑[(n+1)^9]]` -/
def P11587562825168254286.Spec : Prop :=
  ∀ n, (P11587562825168254286.a n : ℤ) = A253637 (n + 1)

theorem P11587562825168254286.correct : P11587562825168254286.Spec := by
  intro n
  simp only [A253637, Nat.add_sub_cancel]

end A253637

/-! ## A253637.P6086350657178438457

`∑[(n+1)*(n+1)²²²]+a(n-1)` with `a(0)=1`
-/

namespace A253637.P6086350657178438457
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (((n + 1) ^ 2) ^ 2) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + a (n - 1)

end

end A253637.P6086350657178438457

namespace A253637

/-- `∑[(n+1)*(n+1)²²²]+a(n-1)` -/
def P6086350657178438457.Spec : Prop :=
  ∀ n, (P6086350657178438457.a n : ℤ) = A253637 (n + 1)

end A253637

/-! ## A253637.P6875437991566697936

`abs(∑[∑[A024007(n+1)-1]])`
-/

namespace A253637.P6875437991566697936
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024007 (n + 1) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A253637.P6875437991566697936

namespace A253637

/-- `abs(∑[∑[A024007(n+1)-1]])` -/
def P6875437991566697936.Spec : Prop :=
  ∀ n, P6875437991566697936.a n = A253637 (n + 1)

end A253637

/-! ## A253637.P16648048137172801918

`A007487(n+1)+∑[A007487(n)]`
-/

namespace A253637.P16648048137172801918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007487 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007487 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A253637.P16648048137172801918

namespace A253637

/-- `A007487(n+1)+∑[A007487(n)]` -/
def P16648048137172801918.Spec : Prop :=
  ∀ n, P16648048137172801918.a n = A253637 (n + 1)

end A253637

/-! ## A253637.P1479449800842492684

`a(A023443(n))-∑[A024007(n+1)-1]` with `a(0)=1`
-/

namespace A253637.P1479449800842492684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024007 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (A023443 n).toNat - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A253637.P1479449800842492684

namespace A253637

/-- `a(A023443(n))-∑[A024007(n+1)-1]` -/
def P1479449800842492684.Spec : Prop :=
  ∀ n, P1479449800842492684.a n = A253637 (n + 1)

end A253637

/-! ## A253637.P10718128066591991587

`A000007(n+1)-∑[∑[A024007(n+1)-1]]`
-/

namespace A253637.P10718128066591991587
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024007 (n + 1) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A253637.P10718128066591991587

namespace A253637

/-- `A000007(n+1)-∑[∑[A024007(n+1)-1]]` -/
def P10718128066591991587.Spec : Prop :=
  ∀ n, P10718128066591991587.a n = A253637 (n + 1)

end A253637

/-!
# A253638: Number of zeros in the decimal expansion of 5^n.

The programs for A253638, the canonical program `A253638.P15682283703354979589` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A253638 has offset 0).

The definition of A253638 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 144 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A253638.P15682283703354979589

`∑{digits}[A000351(n), A000007(#)]`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A253638

/-- `∑{digits}[A000351(n), A000007(#)]` -/
def P15682283703354979589.Spec : Prop :=
  ∀ n, P15682283703354979589.a n = A253638 n

theorem P15682283703354979589.correct : P15682283703354979589.Spec := by
  intro n
  simp only [A253638]

end A253638

/-! ## A253638.P2799406238162810538

`∑{digits}[A034474(n), A000007(#)]`
-/

namespace A253638.P2799406238162810538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034474 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A000007 x).sum

end

end A253638.P2799406238162810538

namespace A253638

/-- `∑{digits}[A034474(n), A000007(#)]` -/
def P2799406238162810538.Spec : Prop :=
  ∀ n, P2799406238162810538.a n = A253638 n

end A253638

/-! ## A253638.P7963107974955859668

`∑{digits}[A034474(n), A010117(#)]`
-/

namespace A253638.P7963107974955859668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034474 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A010117 x).sum

end

end A253638.P7963107974955859668

namespace A253638

/-- `∑{digits}[A034474(n), A010117(#)]` -/
def P7963107974955859668.Spec : Prop :=
  ∀ n, P7963107974955859668.a n = A253638 n

end A253638

/-! ## A253638.P16994678781256891446

`∑{digits}[A034474(n), A010893(#)]`
-/

namespace A253638.P16994678781256891446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034474 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A010893 (x + 13)).sum

end

end A253638.P16994678781256891446

namespace A253638

/-- `∑{digits}[A034474(n), A010893(#)]` -/
def P16994678781256891446.Spec : Prop :=
  ∀ n, P16994678781256891446.a n = A253638 n

end A253638

/-! ## A253638.P9616655530123102599

`∑{digits}[A034474(n), A010894(#)]`
-/

namespace A253638.P9616655530123102599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034474 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A010894 (x + 21)).sum

end

end A253638.P9616655530123102599

namespace A253638

/-- `∑{digits}[A034474(n), A010894(#)]` -/
def P9616655530123102599.Spec : Prop :=
  ∀ n, P9616655530123102599.a n = A253638 n

end A253638

/-! ## A253638.P14550519514159299415

`∑{digits}[A034474(n), A018843(#)]`
-/

namespace A253638.P14550519514159299415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034474 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A018843 x).sum

end

end A253638.P14550519514159299415

namespace A253638

/-- `∑{digits}[A034474(n), A018843(#)]` -/
def P14550519514159299415.Spec : Prop :=
  ∀ n, P14550519514159299415.a n = A253638 n

end A253638

/-! ## A253638.P2610468535769472651

`∑{digits}[A103455(n), A000007(#)]`
-/

namespace A253638.P2610468535769472651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103455 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A000007 x).sum

end

end A253638.P2610468535769472651

namespace A253638

/-- `∑{digits}[A103455(n), A000007(#)]` -/
def P2610468535769472651.Spec : Prop :=
  ∀ n, P2610468535769472651.a n = A253638 n

end A253638

/-! ## A253638.P10378124477257659085

`∑{digits}[A103455(n), A010117(#)]`
-/

namespace A253638.P10378124477257659085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103455 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A010117 x).sum

end

end A253638.P10378124477257659085

namespace A253638

/-- `∑{digits}[A103455(n), A010117(#)]` -/
def P10378124477257659085.Spec : Prop :=
  ∀ n, P10378124477257659085.a n = A253638 n

end A253638

/-! ## A253638.P18331011239403472867

`∑{digits}[A103455(n), A010894(#)]`
-/

namespace A253638.P18331011239403472867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103455 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A010894 (x + 21)).sum

end

end A253638.P18331011239403472867

namespace A253638

/-- `∑{digits}[A103455(n), A010894(#)]` -/
def P18331011239403472867.Spec : Prop :=
  ∀ n, P18331011239403472867.a n = A253638 n

end A253638

/-! ## A253638.P15618369538231711376

`∑{digits}[A103455(n), A018843(#)]`
-/

namespace A253638.P15618369538231711376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103455 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A018843 x).sum

end

end A253638.P15618369538231711376

namespace A253638

/-- `∑{digits}[A103455(n), A018843(#)]` -/
def P15618369538231711376.Spec : Prop :=
  ∀ n, P15618369538231711376.a n = A253638 n

end A253638

/-! ## A253638.P14100161478709778394

`∑{digits}[A000351(n), A151878(#)]`
-/

namespace A253638.P14100161478709778394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000351 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A151878 x).sum

end

end A253638.P14100161478709778394

namespace A253638

/-- `∑{digits}[A000351(n), A151878(#)]` -/
def P14100161478709778394.Spec : Prop :=
  ∀ n, P14100161478709778394.a n = A253638 n

end A253638

/-!
# A253639: Lesser of twin primes of the form (k^2 + 2, k^2 + 4).

The programs for A253639, there is no canonical definition to state claims against.
-/

/-! ## A253639.P17995468118684642876

`A085554(n+1)-2`
-/

namespace A253639.P17995468118684642876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085554 (n + 1) - 2

end

end A253639.P17995468118684642876

/-! ## A253639.P1250484073010414720

`A086381(n+1)²+2`
-/

namespace A253639.P1250484073010414720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086381 (n + 1) ^ 2 + 2

end

end A253639.P1250484073010414720

/-! ## A253639.P9888882156754534280

`A257547(n+1)/2+1`
-/

namespace A253639.P9888882156754534280
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A257547 (n + 1) : ℚ) / 2 + 1

end

end A253639.P9888882156754534280

/-! ## A253639.P18445869360886894404

`xor(2, A086381(record[A093178(n)]-n)²)`
-/

namespace A253639.P18445869360886894404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 2 (A086381 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (n : ℤ)).toNat ^ 2)

end

end A253639.P18445869360886894404

/-! ## A253639.P6000507631539431605

`A257049(n+1)/(2*A086381(n+1))`
-/

namespace A253639.P6000507631539431605
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A257049 (n + 1) : ℚ) / (2 * A086381 (n + 1) : ℚ)

end

end A253639.P6000507631539431605

/-! ## A253639.P2969729499340768932

`A086381(n+1)^A020639(A004277(n))+2`
-/

namespace A253639.P2969729499340768932
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A086381 (n + 1) : ℚ) ^ (A020639 (A004277 n).toNat : ℤ) + 2

end

end A253639.P2969729499340768932

/-! ## A253639.P16050149723239972460

`A257547(n+1)-A086381(n+1)*A086381(n+1)`
-/

namespace A253639.P16050149723239972460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257547 (n + 1) - A086381 (n + 1) * A086381 (n + 1)

end

end A253639.P16050149723239972460

/-! ## A253639.P14365952695624946518

`∩[A007591(n+1), A067201(n+1)]²+2`
-/

namespace A253639.P14365952695624946518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007591 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067201 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2 + 2

end

end A253639.P14365952695624946518

/-! ## A253639.P10559164701695372286

`A010000(A086381(n+1))`
-/

namespace A253639.P10559164701695372286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010000 (A086381 (n + 1)).toNat

end

end A253639.P10559164701695372286

/-! ## A253639.P306590126483791937

`A000290(or(1, A086381(n+1)))+2`
-/

namespace A253639.P306590126483791937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (Int.lor 1 (A086381 (n + 1))).toNat + 2

end

end A253639.P306590126483791937

/-!
# A253640: Greater of twin primes of the form (k^2 + 4, k^2 + 6).

The programs for A253640, there is no canonical definition to state claims against.
-/

/-! ## A253640.P15052063341142974234

`A085553(n+1)+2`
-/

namespace A253640.P15052063341142974234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085553 (n + 1) + 2

end

end A253640.P15052063341142974234

/-! ## A253640.P2287399654591875226

`or(2, A085553(A008619(2*n)))`
-/

namespace A253640.P2287399654591875226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (A085553 (A008619 (2 * n)).toNat)

end

end A253640.P2287399654591875226

/-! ## A253640.P12512290810267244489

`∩[A114949(A007591(n+1)), A056909(n+1)]`
-/

namespace A253640.P12512290810267244489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114949 (A007591 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056909 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A253640.P12512290810267244489

/-! ## A253640.P10841463433794732416

`A114949(∩[A007591(n+1), A114269(n+1)])`
-/

namespace A253640.P10841463433794732416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007591 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114269 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114949 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A253640.P10841463433794732416

/-! ## A253640.P10027553640145663667

`A013946(∩[A007591(n+1), A114269(n+1)])+2`
-/

namespace A253640.P10027553640145663667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007591 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114269 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013946 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n) + 2

end

end A253640.P10027553640145663667

/-!
# A253641: Largest integer b such that n=a^b for some integer a; a(0)=a(1)=1 by convention.

The programs for A253641, there is no canonical definition to state claims against.
-/

/-! ## A253641.P13059867925483563829

`A052409(ceil(sqrt((1-n)²+4)))`
-/

namespace A253641.P13059867925483563829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052409 ⌈Real.sqrt ((1 - (n : ℤ)) ^ 2 + 4 : ℝ)⌉.toNat

end

end A253641.P13059867925483563829

/-!
# A253642: Number of ways the perfect power A001597(n) can be written as a^b, with a, b > 1.

The programs for A253642, there is no canonical definition to state claims against.
-/

/-! ## A253642.P17752100100807815415

`A175064(n+1)-1`
-/

namespace A253642.P17752100100807815415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175064 (n + 1) - 1

end

end A253642.P17752100100807815415

/-! ## A253642.P10283369662879699674

`A032741(A025479(n+1))%(n+1)`
-/

namespace A253642.P10283369662879699674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A032741 (A025479 (n + 1)).toNat) (n + 1 : ℤ)

end

end A253642.P10283369662879699674

/-! ## A253642.P6298587774343168214

`A000005(A025479(n+1)-floor(acot(n)))-1`
-/

namespace A253642.P6298587774343168214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A025479 (n + 1) - ⌊SequenceMachineLib.acot (n : ℝ)⌋).toNat - 1

end

end A253642.P6298587774343168214

/-! ## A253642.P7492372834024867985

`A000005(ceil(A025479(n+1)-acot(n)))-1`
-/

namespace A253642.P7492372834024867985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 ⌈(A025479 (n + 1) : ℝ) - SequenceMachineLib.acot (n : ℝ)⌉.toNat - 1

end

end A253642.P7492372834024867985

/-! ## A253642.P15868961282919400502

`A000005(gcd(C(2, n²), A157986(n+1)))-1`
-/

namespace A253642.P15868961282919400502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Int.gcd (Nat.choose 2 (n ^ 2) : ℤ) (A157986 (n + 1))) - 1

end

end A253642.P15868961282919400502

/-! ## A253642.P5767565697044678892

`A000005(A025479(n+1)^ceil(sin(n)²))-1`
-/

namespace A253642.P5767565697044678892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((A025479 (n + 1) : ℚ) ^ (⌈Real.sin (n : ℝ) ^ 2⌉ : ℤ))).toNat - 1

end

end A253642.P5767565697044678892

/-! ## A253642.P17852284609473611261

`A000005(A025479(n+1)-C(2, n+2))-1`
-/

namespace A253642.P17852284609473611261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A025479 (n + 1) - (Nat.choose 2 (n + 2) : ℤ)).toNat - 1

end

end A253642.P17852284609473611261

/-! ## A253642.P15926721103590202653

`A089723(∑[A076412(n)])-1`
-/

namespace A253642.P15926721103590202653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076412 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089723 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - 1

end

end A253642.P15926721103590202653

/-! ## A253642.P13929675073347304333

`A089723(A001597(n+1))-1`
-/

namespace A253642.P13929675073347304333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089723 (A001597 (n + 1)).toNat - 1

end

end A253642.P13929675073347304333

/-! ## A253642.P7777148106671152133

`A089723(sqrt(A340588(n+1)))-1`
-/

namespace A253642.P7777148106671152133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089723 (SequenceMachineLib.roundAway (Real.sqrt (A340588 (n + 1) : ℝ))).toNat - 1

end

end A253642.P7777148106671152133

/-!
# A253643: Numbers n such that n^k is zeroless for k=0,...,3.

The programs for A253643, there is no canonical definition to state claims against.
-/

/-! ## A253643.P13857991603468036120

`lt[A269250(n), A168046(n²)]`
-/

namespace A253643.P13857991603468036120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269250 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168046 (n ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A253643.P13857991603468036120

/-! ## A253643.P9414846100854762001

`eq[A036533(A269250(n)²), A086008(n)]`
-/

namespace A253643.P9414846100854762001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036533 (A269250 n ^ 2).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086008 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A253643.P9414846100854762001

/-! ## A253643.P12461376074623171090

`eq[A036536(A269250(n)²), A086008(n)]`
-/

namespace A253643.P12461376074623171090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036536 (A269250 n ^ 2).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086008 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A253643.P12461376074623171090

/-! ## A253643.P14799340861856262221

`eq[A062397(n)*A086008(n), A269250(n)]`
-/

namespace A253643.P14799340861856262221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062397 n * A086008 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269250 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A253643.P14799340861856262221

/-! ## A253643.P5872169434367116603

`eq[A086008(n)*A291644(n+1), A269250(n)]`
-/

namespace A253643.P5872169434367116603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086008 n * A291644 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269250 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A253643.P5872169434367116603

/-! ## A253643.P8459022574361068498

`eq[(A095246(n+1)+1)*A086008(n), A269250(n)]`
-/

namespace A253643.P8459022574361068498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A095246 (n + 1) + 1) * A086008 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269250 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A253643.P8459022574361068498

/-! ## A253643.P451544840673024765

`eq[A269250(n)+A086008(n), A151878(n)]`
-/

namespace A253643.P451544840673024765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269250 n + A086008 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151878 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A253643.P451544840673024765

/-!
# A253645: Primes p such that p^k is zeroless for k=0,...,5.

The programs for A253645, there is no canonical definition to state claims against.
-/

/-! ## A253645.P15581584270496452322

`p?[A253644(n+1)]`
-/

namespace A253645.P15581584270496452322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253644 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A253645.P15581584270496452322

/-! ## A253645.P12859311907745449493

`p?[record[A253644(A141256(n))]]`
-/

namespace A253645.P12859311907745449493
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253644 (A141256 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A253645.P12859311907745449493

/-! ## A253645.P17790006658065671034

`p?[record[A253644(A263275(n))]]`
-/

namespace A253645.P17790006658065671034
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253644 (A263275 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A253645.P17790006658065671034

/-! ## A253645.P5226165974129376540

`p?[record[A253644(A291766(n))]]`
-/

namespace A253645.P5226165974129376540
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253644 (A291766 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A253645.P5226165974129376540

/-! ## A253645.P9772347173202691796

`p?[record[A253644(A344180(n))]]`
-/

namespace A253645.P9772347173202691796
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253644 (A344180 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A253645.P9772347173202691796

/-!
# A253646: Primes p such that p^k is zeroless for k=1,...,6.

The programs for A253646, there is no canonical definition to state claims against.
-/

/-! ## A253646.P12680586735975272665

`∩[A253645(n+1), A253647(n+1)]`
-/

namespace A253646.P12680586735975272665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253645 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253647 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A253646.P12680586735975272665

/-!
# A253648: Numbers of Hamiltonian cycles that require a graph with at least 9 vertices.

The programs for A253648, there is no canonical definition to state claims against.
-/

/-! ## A253648.P16264948949607493514

`lt[8, A249905(n)]`
-/

namespace A253648.P16264948949607493514
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249905 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A253648.P16264948949607493514

/-! ## A253648.P7234562356845858074

`eq[9, A249905(A028310(n))]`
-/

namespace A253648.P7234562356845858074
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249905 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A253648.P7234562356845858074

/-! ## A253648.P1381274532286122066

`eq[A100401(n), A249905(n)]`
-/

namespace A253648.P1381274532286122066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100401 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249905 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A253648.P1381274532286122066

/-! ## A253648.P7989509313506755251

`eq[A100403(n), A249905(n)]`
-/

namespace A253648.P7989509313506755251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100403 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249905 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A253648.P7989509313506755251

/-! ## A253648.P17743506231606474063

`eq[A168094(n), A249905(n)]`
-/

namespace A253648.P17743506231606474063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168094 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249905 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A253648.P17743506231606474063

/-! ## A253648.P12344402161457590196

`eq[A180599(n), A249905(n)]`
-/

namespace A253648.P12344402161457590196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180599 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249905 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A253648.P12344402161457590196

/-! ## A253648.P2387117908341046734

`eq[A094327(n+1), A249905(n)]`
-/

namespace A253648.P2387117908341046734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094327 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249905 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A253648.P2387117908341046734

/-! ## A253648.P7946021854998550933

`eq[A249905(n), A291092(n+1)]`
-/

namespace A253648.P7946021854998550933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249905 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291092 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A253648.P7946021854998550933

/-!
# A253649: Coefficients in the expansion of sn(t * x, m) / t in powers of x where t = sqrt( -1/2 - sqrt(1/3)), m = -7 + sqrt(48), and sn() is a Jacobi elliptic function.

The programs for A253649, there is no canonical definition to state claims against.
-/

/-! ## A253649.P9251120584445486705

`A010892(n)*A063902(n)`
-/

namespace A253649.P9251120584445486705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 n * A063902 n

end

end A253649.P9251120584445486705

/-!
# A253650: Triangular numbers that are the product of a triangular number and a square number (both greater than 1).

The programs for A253650, there is no canonical definition to state claims against.
-/

/-! ## A253650.P8041328686151102455

`C((A001222(10^n)+5)², 2)`
-/

namespace A253650.P8041328686151102455
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ((A001222 (10 ^ n) + 5) ^ 2).toNat 2

end

end A253650.P8041328686151102455

/-! ## A253650.P896341316992385499

`C((2-A000005(4^(n+3)))², 2)`
-/

namespace A253650.P896341316992385499
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ((2 - A000005 (4 ^ (n + 3))) ^ 2).toNat 2

end

end A253650.P896341316992385499

/-!
# A253651: Triangular numbers that are the product of a triangular number and a prime number.

The programs for A253651, there is no canonical definition to state claims against.
-/

/-! ## A253651.P17100147062871949861

`eq[A132382(A061395(n+3)), A306915(n)]`
-/

namespace A253651.P17100147062871949861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132382 (A061395 (n + 3)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306915 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A253651.P17100147062871949861

/-! ## A253651.P8142497178431860506

`eq[A066325(A061395(n+3)), A188002(n+1)]`
-/

namespace A253651.P8142497178431860506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066325 (A061395 (n + 3)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188002 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A253651.P8142497178431860506

/-! ## A253651.P7122886600645717482

`eq[A010054(n), A257635(A061395(n+3))]`
-/

namespace A253651.P7122886600645717482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257635 (A061395 (n + 3)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A253651.P7122886600645717482

/-! ## A253651.P11904126991106546934

`eq[A208931(n+1), A257635(A061395(n+3))]`
-/

namespace A253651.P11904126991106546934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208931 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257635 (A061395 (n + 3)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A253651.P11904126991106546934

/-! ## A253651.P14644739383638251088

`∩[A077368(n+1), A028966(n)]`
-/

namespace A253651.P14644739383638251088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077368 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028966 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A253651.P14644739383638251088

/-!
# A253652: Triangular numbers that are the product of a triangular number and an oblong number.

The programs for A253652, there is no canonical definition to state claims against.
-/

/-! ## A253652.P11440637756000253656

`∩[2*A085780(n+1), A000217(n)]`
-/

namespace A253652.P11440637756000253656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A085780 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A253652.P11440637756000253656

/-! ## A253652.P12732891980433017664

`∩[A053990(n+1), A002378(n)]/2`
-/

namespace A253652.P12732891980433017664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053990 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 n

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A253652.P12732891980433017664

/-! ## A253652.P4436582520853182422

`∩[A072389(n+1), A002378(n)]/2`
-/

namespace A253652.P4436582520853182422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072389 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 n

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A253652.P4436582520853182422

/-!
# A253653: Triangular numbers that are the product of a square number and a prime number.

The programs for A253653, there is no canonical definition to state claims against.
-/

/-! ## A253653.P2681011737176261465

`filter[A000217(n+1), A358769(#)]`
-/

namespace A253653.P2681011737176261465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358769 (f1 j).toNat = 1) n)

end

end A253653.P2681011737176261465

/-! ## A253653.P7612946650044506213

`filter[A000217(n+1), A358770(#)]`
-/

namespace A253653.P7612946650044506213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358770 (f1 j).toNat = 1) n)

end

end A253653.P7612946650044506213

/-! ## A253653.P16011479575802135032

`filter[A005214(n+1), A358769(#)]`
-/

namespace A253653.P16011479575802135032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005214 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358769 (f1 j).toNat = 1) n)

end

end A253653.P16011479575802135032

/-! ## A253653.P17672488995710144919

`filter[A005214(n+1), A358770(#)]`
-/

namespace A253653.P17672488995710144919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005214 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358770 (f1 j).toNat = 1) n)

end

end A253653.P17672488995710144919

/-! ## A253653.P6491201493425352888

`filter[A179865(n+1), A358769(#)]`
-/

namespace A253653.P6491201493425352888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179865 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358769 (f1 j).toNat = 1) n)

end

end A253653.P6491201493425352888

/-!
# A253654: Indices of pentagonal numbers (A000326) which are also centered pentagonal numbers (A005891).

The programs for A253654, the canonical program `A253654.P9046216546002092981` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A253654 has offset 1).

The definition of A253654 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A253654.P9046216546002092981

`9*a(n-1)-9*a(n-2)+a(n-3)` with `a(0)=1, a(1)=6, a(2)=46`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A253654

/-- `9*a(n-1)-9*a(n-2)+a(n-3)` -/
def P9046216546002092981.Spec : Prop :=
  ∀ n, P9046216546002092981.a n = A253654 (n + 1)

theorem P9046216546002092981.correct : P9046216546002092981.Spec := by
  intro n
  simp only [A253654, Nat.add_sub_cancel]

end A253654

/-! ## A253654.P11662126619187296929

`8*a(n-1)-(a(n-2)+1)` with `a(0)=1, a(1)=6`
-/

namespace A253654.P11662126619187296929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 6] fun n a =>
  8 * a (n - 1) - (a (n - 2) + 1)

end

end A253654.P11662126619187296929

namespace A253654

/-- `8*a(n-1)-(a(n-2)+1)` -/
def P11662126619187296929.Spec : Prop :=
  ∀ n, P11662126619187296929.a n = A253654 (n + 1)

end A253654

/-! ## A253654.P12529589837107725935

`8*a(n-1)-1-a(n-2)` with `a(0)=1, a(1)=6`
-/

namespace A253654.P12529589837107725935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 6] fun n a =>
  8 * a (n - 1) - 1 - a (n - 2)

end

end A253654.P12529589837107725935

namespace A253654

/-- `8*a(n-1)-1-a(n-2)` -/
def P12529589837107725935.Spec : Prop :=
  ∀ n, P12529589837107725935.a n = A253654 (n + 1)

end A253654

/-! ## A253654.P5108052938236804108

`floor(5/3*A182432(n))`
-/

namespace A253654.P5108052938236804108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(5 : ℚ) / 3 * (A182432 n : ℚ)⌋

end

end A253654.P5108052938236804108

namespace A253654

/-- `floor(5/3*A182432(n))` -/
def P5108052938236804108.Spec : Prop :=
  ∀ n, P5108052938236804108.a n = A253654 (n + 1)

end A253654

/-! ## A253654.P12807339138748096505

`∑[5*A001090(n)]+1`
-/

namespace A253654.P12807339138748096505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A001090 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A253654.P12807339138748096505

namespace A253654

/-- `∑[5*A001090(n)]+1` -/
def P12807339138748096505.Spec : Prop :=
  ∀ n, P12807339138748096505.a n = A253654 (n + 1)

end A253654

/-! ## A253654.P13349593091983170246

`A070997(n)-∑[A001090(n)]`
-/

namespace A253654.P13349593091983170246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001090 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070997 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A253654.P13349593091983170246

namespace A253654

/-- `A070997(n)-∑[A001090(n)]` -/
def P13349593091983170246.Spec : Prop :=
  ∀ n, P13349593091983170246.a n = A253654 (n + 1)

end A253654

/-! ## A253654.P17672588868491470469

`∑[A341927(n)]-A001090(n)`
-/

namespace A253654.P17672588868491470469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341927 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A001090 n

end

end A253654.P17672588868491470469

namespace A253654

/-- `∑[A341927(n)]-A001090(n)` -/
def P17672588868491470469.Spec : Prop :=
  ∀ n, P17672588868491470469.a n = A253654 (n + 1)

end A253654

/-! ## A253654.P13775337380200833234

`∑[A057080(n)]-A145607(n+1)`
-/

namespace A253654.P13775337380200833234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057080 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A145607 (n + 1)

end

end A253654.P13775337380200833234

namespace A253654

/-- `∑[A057080(n)]-A145607(n+1)` -/
def P13775337380200833234.Spec : Prop :=
  ∀ n, P13775337380200833234.a n = A253654 (n + 1)

end A253654

/-! ## A253654.P9853266647892627884

`A095002(n+1)+A182432(n)-1`
-/

namespace A253654.P9853266647892627884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095002 (n + 1) + (A182432 n - 1)

end

end A253654.P9853266647892627884

namespace A253654

/-- `A095002(n+1)+A182432(n)-1` -/
def P9853266647892627884.Spec : Prop :=
  ∀ n, P9853266647892627884.a n = A253654 (n + 1)

end A253654

/-! ## A253654.P11952641566228292608

`A182432(n)+∑[A273053(n+1)/2]`
-/

namespace A253654.P11952641566228292608
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A273053 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A182432 n : ℚ) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A253654.P11952641566228292608

namespace A253654

/-- `A182432(n)+∑[A273053(n+1)/2]` -/
def P11952641566228292608.Spec : Prop :=
  ∀ n, P11952641566228292608.a n = (A253654 (n + 1) : ℚ)

end A253654

/-! ## A253654.P3789899784515155324

`A199336(2*(n+1))-∑[A237262(2*(n+1))]`
-/

namespace A253654.P3789899784515155324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237262 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199336 (2 * (n + 1)) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A253654.P3789899784515155324

namespace A253654

/-- `A199336(2*(n+1))-∑[A237262(2*(n+1))]` -/
def P3789899784515155324.Spec : Prop :=
  ∀ n, P3789899784515155324.a n = A253654 (n + 1)

end A253654

/-! ## A253654.P10164202646568147254

`A199336(2*n+2)%∑[A237262(2*n+2)]`
-/

namespace A253654.P10164202646568147254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237262 (2 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A199336 (2 * n + 2)) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A253654.P10164202646568147254

namespace A253654

/-- `A199336(2*n+2)%∑[A237262(2*n+2)]` -/
def P10164202646568147254.Spec : Prop :=
  ∀ n, P10164202646568147254.a n = A253654 (n + 1)

end A253654

/-! ## A253654.P4309934384746051124

`A077246(n)+∑[A077246(n)]-A077244(n)`
-/

namespace A253654.P4309934384746051124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077246 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077246 n + (∑ j ∈ Finset.range (n + 1), f1 j - A077244 n)

end

end A253654.P4309934384746051124

namespace A253654

/-- `A077246(n)+∑[A077246(n)]-A077244(n)` -/
def P4309934384746051124.Spec : Prop :=
  ∀ n, P4309934384746051124.a n = A253654 (n + 1)

end A253654

/-!
# A253655: Number of monic irreducible polynomials of degree 6 over GF(prime(n)).

The programs for A253655, the canonical program `A253655.P5596096945801313869` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A253655 has offset 1).

The definition of A253655 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A253655.P5596096945801313869

`A138445(n+1)-A127920(n+1)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A253655

/-- `A138445(n+1)-A127920(n+1)` -/
def P5596096945801313869.Spec : Prop :=
  ∀ n, P5596096945801313869.a n = A253655 (n + 1)

theorem P5596096945801313869.correct : P5596096945801313869.Spec := by
  intro n
  simp only [A253655, Nat.add_sub_cancel]

end A253655

/-! ## A253655.P18213003339459894760

`2*A138447(n+1)-A127920(n+1)`
-/

namespace A253655.P18213003339459894760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A138447 (n + 1) - A127920 (n + 1)

end

end A253655.P18213003339459894760

namespace A253655

/-- `2*A138447(n+1)-A127920(n+1)` -/
def P18213003339459894760.Spec : Prop :=
  ∀ n, P18213003339459894760.a n = A253655 (n + 1)

end A253655

/-! ## A253655.P2608824878136685242

`A138445(n+1)-A127919(n+1)/2`
-/

namespace A253655.P2608824878136685242
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138445 (n + 1) : ℚ) - (A127919 (n + 1) : ℚ) / 2

end

end A253655.P2608824878136685242

namespace A253655

/-- `A138445(n+1)-A127919(n+1)/2` -/
def P2608824878136685242.Spec : Prop :=
  ∀ n, P2608824878136685242.a n = (A253655 (n + 1) : ℚ)

end A253655

/-! ## A253655.P471598775045362632

`A292350(p?[comp[n²]])`
-/

namespace A253655.P471598775045362632
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292350 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A253655.P471598775045362632

namespace A253655

/-- `A292350(p?[comp[n²]])` -/
def P471598775045362632.Spec : Prop :=
  ∀ n, P471598775045362632.a n = A253655 (n + 1)

end A253655

/-! ## A253655.P10783431869497644987

`A292350(A000040(n+1))`
-/

namespace A253655.P10783431869497644987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292350 (A000040 (n + 1)).toNat

end

end A253655.P10783431869497644987

namespace A253655

/-- `A292350(A000040(n+1))` -/
def P10783431869497644987.Spec : Prop :=
  ∀ n, P10783431869497644987.a n = A253655 (n + 1)

end A253655

/-! ## A253655.P10008447696205165152

`A292350(A008578(n+2))`
-/

namespace A253655.P10008447696205165152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292350 (A008578 (n + 2)).toNat

end

end A253655.P10008447696205165152

namespace A253655

/-- `A292350(A008578(n+2))` -/
def P10008447696205165152.Spec : Prop :=
  ∀ n, P10008447696205165152.a n = A253655 (n + 1)

end A253655

/-! ## A253655.P8417384284589774708

`A292350(A182986(n+2))`
-/

namespace A253655.P8417384284589774708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292350 (A182986 (n + 2)).toNat

end

end A253655.P8417384284589774708

namespace A253655

/-- `A292350(A182986(n+2))` -/
def P8417384284589774708.Spec : Prop :=
  ∀ n, P8417384284589774708.a n = A253655 (n + 1)

end A253655

/-! ## A253655.P6351143251353038976

`A292350(record[A006530(n+2)])`
-/

namespace A253655.P6351143251353038976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292350 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A253655.P6351143251353038976

namespace A253655

/-- `A292350(record[A006530(n+2)])` -/
def P6351143251353038976.Spec : Prop :=
  ∀ n, P6351143251353038976.a n = A253655 (n + 1)

end A253655

/-! ## A253655.P3684551875900934675

`A292350(record[A014963(n+2)])`
-/

namespace A253655.P3684551875900934675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292350 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A253655.P3684551875900934675

namespace A253655

/-- `A292350(record[A014963(n+2)])` -/
def P3684551875900934675.Spec : Prop :=
  ∀ n, P3684551875900934675.a n = A253655 (n + 1)

end A253655

/-! ## A253655.P16478312617184251801

`A292350(record[A020639(n+2)])`
-/

namespace A253655.P16478312617184251801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292350 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A253655.P16478312617184251801

namespace A253655

/-- `A292350(record[A020639(n+2)])` -/
def P16478312617184251801.Spec : Prop :=
  ∀ n, P16478312617184251801.a n = A253655 (n + 1)

end A253655

/-! ## A253655.P16253374668670863819

`A292350(eq[n, A000010(n+1)]+1)`
-/

namespace A253655.P16253374668670863819
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292350 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A253655.P16253374668670863819

namespace A253655

/-- `A292350(eq[n, A000010(n+1)]+1)` -/
def P16253374668670863819.Spec : Prop :=
  ∀ n, P16253374668670863819.a n = A253655 (n + 1)

end A253655

/-! ## A253655.P3162583115345587042

`A292350(record[p?[n-A292374(n+1)]])`
-/

namespace A253655.P3162583115345587042
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A292374 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292350 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A253655.P3162583115345587042

namespace A253655

/-- `A292350(record[p?[n-A292374(n+1)]])` -/
def P3162583115345587042.Spec : Prop :=
  ∀ n, P3162583115345587042.a n = A253655 (n + 1)

end A253655

/-! ## A253655.P17947153850654489752

`A292350(record[p?[A292376(n+1)]])`
-/

namespace A253655.P17947153850654489752
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292376 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292350 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A253655.P17947153850654489752

namespace A253655

/-- `A292350(record[p?[A292376(n+1)]])` -/
def P17947153850654489752.Spec : Prop :=
  ∀ n, P17947153850654489752.a n = A253655 (n + 1)

end A253655

/-! ## A253655.P17842739560558771036

`A292350(record[p?[A292374(n+1)]])`
-/

namespace A253655.P17842739560558771036
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292374 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292350 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A253655.P17842739560558771036

namespace A253655

/-- `A292350(record[p?[A292374(n+1)]])` -/
def P17842739560558771036.Spec : Prop :=
  ∀ n, P17842739560558771036.a n = A253655 (n + 1)

end A253655

/-!
# A253656: Number of (n+1)X(2+1) 0..2 arrays with every 2X2 subblock diagonal maximum minus antidiagonal maximum unequal to its neighbors horizontally, vertically and nw-se diagonally.

The programs for A253656, there is no canonical definition to state claims against.
-/

/-! ## A253656.P7088160200981246753

`A253662(∑[n+1]+2)`
-/

namespace A253656.P7088160200981246753
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253662 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A253656.P7088160200981246753

/-! ## A253656.P8386551391814374782

`lcm(2, A253662(A133263(n+1)))`
-/

namespace A253656.P8386551391814374782
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A253662 (A133263 (n + 1)).toNat)

end

end A253656.P8386551391814374782

/-! ## A253656.P3231304294458177937

`A253662(A133263(n+1))%A253657(n+1)`
-/

namespace A253656.P3231304294458177937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A253662 (A133263 (n + 1)).toNat) (A253657 (n + 1))

end

end A253656.P3231304294458177937

/-! ## A253656.P3698851800677388955

`A253662(A133263(n+1))/A020639(gcd(n, n+1))`
-/

namespace A253656.P3698851800677388955
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A253662 (A133263 (n + 1)).toNat : ℚ) / (A020639 (Nat.gcd n (n + 1)) : ℚ)

end

end A253656.P3698851800677388955

/-! ## A253656.P12909597029732118668

`A000041(A178334(n))*A253662(A133263(n+1))`
-/

namespace A253656.P12909597029732118668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A178334 n).toNat * A253662 (A133263 (n + 1)).toNat

end

end A253656.P12909597029732118668

/-!
# A253657: Number of (n+1)X(3+1) 0..2 arrays with every 2X2 subblock diagonal maximum minus antidiagonal maximum unequal to its neighbors horizontally, vertically and nw-se diagonally.

The programs for A253657, there is no canonical definition to state claims against.
-/

/-! ## A253657.P12423687656714999886

`A253662(∑[n+2]+4)`
-/

namespace A253657.P12423687656714999886
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253662 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A253657.P12423687656714999886

/-! ## A253657.P2279551362235222918

`A253662(A167614(n+1))+A011739(n)`
-/

namespace A253657.P2279551362235222918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253662 (A167614 (n + 1)).toNat + A011739 n

end

end A253657.P2279551362235222918

/-! ## A253657.P13772408103703641279

`A253662(A167614(n+1))+A025443(n)`
-/

namespace A253657.P13772408103703641279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253662 (A167614 (n + 1)).toNat + A025443 n

end

end A253657.P13772408103703641279

/-! ## A253657.P11452892955216795946

`A253662(A167614(n+1))+A025469(n)`
-/

namespace A253657.P11452892955216795946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253662 (A167614 (n + 1)).toNat + A025469 n

end

end A253657.P11452892955216795946

/-! ## A253657.P3747806272478514212

`lcm(A033999(n), A253662(A167614(n+1)))`
-/

namespace A253657.P3747806272478514212
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A253662 (A167614 (n + 1)).toNat)

end

end A253657.P3747806272478514212

/-!
# A253658: Number of (n+1) X (4+1) 0..2 arrays with every 2 X 2 subblock diagonal maximum minus antidiagonal maximum unequal to its neighbors horizontally, vertically and nw-se diagonally.

The programs for A253658, there is no canonical definition to state claims against.
-/

/-! ## A253658.P4935079663255516649

`A253662(A374004(n+1))`
-/

namespace A253658.P4935079663255516649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253662 (A374004 (n + 1)).toNat

end

end A253658.P4935079663255516649

/-! ## A253658.P16037248353022454026

`A253662(A141214(n)+7)`
-/

namespace A253658.P16037248353022454026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253662 (A141214 n + 7).toNat

end

end A253658.P16037248353022454026

/-! ## A253658.P12807526596736637245

`A253662(A052905(n)+9)`
-/

namespace A253658.P12807526596736637245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253662 (A052905 n + 9).toNat

end

end A253658.P12807526596736637245

/-! ## A253658.P9661251457044666603

`A253662(A055999(n)+10)`
-/

namespace A253658.P9661251457044666603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253662 (A055999 n + 10).toNat

end

end A253658.P9661251457044666603

/-! ## A253658.P11483183041583917585

`A253662(A167614(n+2)+1)`
-/

namespace A253658.P11483183041583917585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253662 (A167614 (n + 2) + 1).toNat

end

end A253658.P11483183041583917585

/-!
# A253659: Number of (n+1) X (5+1) 0..2 arrays with every 2 X 2 subblock diagonal maximum minus antidiagonal maximum unequal to its neighbors horizontally, vertically and nw-se diagonally.

The programs for A253659, there is no canonical definition to state claims against.
-/

/-! ## A253659.P1529780176815603642

`A253662(A374005(n+1))`
-/

namespace A253659.P1529780176815603642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253662 (A374005 (n + 1)).toNat

end

end A253659.P1529780176815603642

/-! ## A253659.P17639452131606335177

`A253662(A056000(n)+15)`
-/

namespace A253659.P17639452131606335177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253662 (A056000 n + 15).toNat

end

end A253659.P17639452131606335177

/-! ## A253659.P12374701519002101787

`A253662(eq[6, A131818(n+1)])`
-/

namespace A253659.P12374701519002101787
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253662 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A253659.P12374701519002101787

/-! ## A253659.P17084690129304327278

`A253662(A056115(n)+11)`
-/

namespace A253659.P17084690129304327278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253662 (A056115 n + 11).toNat

end

end A253659.P17084690129304327278

/-! ## A253659.P7773255192464811893

`A253662(eq[3, A152157(n)])`
-/

namespace A253659.P7773255192464811893
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253662 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A253659.P7773255192464811893

/-!
# A253660: Number of (n+1)X(6+1) 0..2 arrays with every 2X2 subblock diagonal maximum minus antidiagonal maximum unequal to its neighbors horizontally, vertically and nw-se diagonally.

The programs for A253660, there is no canonical definition to state claims against.
-/

/-! ## A253660.P7116700159774592390

`A253662(A374007(n+1))`
-/

namespace A253660.P7116700159774592390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253662 (A374007 (n + 1)).toNat

end

end A253660.P7116700159774592390

/-! ## A253660.P1811388976341323262

`A253662(A141214(n+2)+9)`
-/

namespace A253660.P1811388976341323262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253662 (A141214 (n + 2) + 9).toNat

end

end A253660.P1811388976341323262

/-! ## A253660.P16328531818305647619

`A253662(eq[7, A131818(n+1)])`
-/

namespace A253660.P16328531818305647619
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253662 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A253660.P16328531818305647619

/-! ## A253660.P12374624488098087538

`A253662(A052905(n+3))`
-/

namespace A253660.P12374624488098087538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253662 (A052905 (n + 3)).toNat

end

end A253660.P12374624488098087538

/-! ## A253660.P15461003066440440959

`A253662(eq[5, A193592(n)])`
-/

namespace A253660.P15461003066440440959
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253662 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A253660.P15461003066440440959

/-!
# A253661: Number of (n+1)X(7+1) 0..2 arrays with every 2X2 subblock diagonal maximum minus antidiagonal maximum unequal to its neighbors horizontally, vertically and nw-se diagonally.

The programs for A253661, there is no canonical definition to state claims against.
-/

/-! ## A253661.P6297485348406191811

`A253662(A374008(n+1))`
-/

namespace A253661.P6297485348406191811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253662 (A374008 (n + 1)).toNat

end

end A253661.P6297485348406191811

/-! ## A253661.P5630550939886710226

`A253662(eq[8, A131818(n+1)])`
-/

namespace A253661.P5630550939886710226
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253662 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A253661.P5630550939886710226

/-! ## A253661.P10896613640024490516

`A253662(A055999(n+4))`
-/

namespace A253661.P10896613640024490516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253662 (A055999 (n + 4)).toNat

end

end A253661.P10896613640024490516

/-! ## A253661.P1464047356795839303

`A253662(eq[6, A193592(n)])`
-/

namespace A253661.P1464047356795839303
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253662 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A253661.P1464047356795839303

/-! ## A253661.P2795227557691247535

`A253662(eq[7, A200370(n+1)])`
-/

namespace A253661.P2795227557691247535
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253662 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A253661.P2795227557691247535

/-!
# A253663: Number of positive solutions to x^2+y^2+z^2 <= n^2.

The programs for A253663, there is no canonical definition to state claims against.
-/

/-! ## A253663.P6670589584063858424

`A211639(n²)`
-/

namespace A253663.P6670589584063858424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211639 (n ^ 2)

end

end A253663.P6670589584063858424

/-! ## A253663.P5986241283503038179

`A000604(n)+A036698(n)-A000328(n)`
-/

namespace A253663.P5986241283503038179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000604 n + (A036698 n - A000328 n)

end

end A253663.P5986241283503038179

/-! ## A253663.P3847081990361916513

`Δ[A212095(abs(1-n))]`
-/

namespace A253663.P3847081990361916513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212095 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A253663.P3847081990361916513

/-! ## A253663.P17623767708484636972

`A212095(n)-A212095(abs(1-n))`
-/

namespace A253663.P17623767708484636972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212095 n - A212095 |1 - (n : ℤ)|.toNat

end

end A253663.P17623767708484636972

/-! ## A253663.P2287721139162205136

`A000604(n)-A016777(A036698(n))`
-/

namespace A253663.P2287721139162205136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000604 n - A016777 (A036698 n).toNat

end

end A253663.P2287721139162205136

/-! ## A253663.P9093004025171332692

`A211638(n²+1)`
-/

namespace A253663.P9093004025171332692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211638 (n ^ 2 + 1)

end

end A253663.P9093004025171332692

/-!
# A253665: a(n) = 2^n*n!/(floor(n/2)!)^2.

The programs for A253665, the canonical program `A253665.P10397001314440624253` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A253665 has offset 0).

The definition of A253665 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A253665.P10397001314440624253

`2^n*A056040(n)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A253665

/-- `2^n*A056040(n)` -/
def P10397001314440624253.Spec : Prop :=
  ∀ n, P10397001314440624253.a n = A253665 n

theorem P10397001314440624253.correct : P10397001314440624253.Spec := by
  intro n
  simp only [A253665]

end A253665

/-! ## A253665.P15610812026114997680

`2^n*n!/floor(n/2)!²`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A253665.P15610812026114997680
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 ^ n * Nat.factorial n : ℚ) / (Nat.factorial ⌊(n : ℚ) / 2⌋.toNat ^ 2 : ℚ)

end

end A253665.P15610812026114997680

namespace A253665

/-- `2^n*n!/floor(n/2)!²` -/
def P15610812026114997680.Spec : Prop :=
  ∀ n, P15610812026114997680.a n = (A253665 n : ℚ)

end A253665

/-! ## A253665.P14055979300568257629

`n^(n%2)*A249308(n)`
-/

namespace A253665.P14055979300568257629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ (n % 2) : ℤ) * A249308 n

end

end A253665.P14055979300568257629

namespace A253665

/-- `n^(n%2)*A249308(n)` -/
def P14055979300568257629.Spec : Prop :=
  ∀ n, P14055979300568257629.a n = A253665 n

end A253665

/-! ## A253665.P17141673845429812930

`A057977(n)*A134353(n)`
-/

namespace A253665.P17141673845429812930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057977 n * A134353 n

end

end A253665.P17141673845429812930

namespace A253665

/-- `A057977(n)*A134353(n)` -/
def P17141673845429812930.Spec : Prop :=
  ∀ n, P17141673845429812930.a n = A253665 n

end A253665

/-! ## A253665.P5474715852432614945

`A060899(n)*A152271(n)`
-/

namespace A253665.P5474715852432614945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060899 n * A152271 n

end

end A253665.P5474715852432614945

namespace A253665

/-- `A060899(n)*A152271(n)` -/
def P5474715852432614945.Spec : Prop :=
  ∀ n, P5474715852432614945.a n = A253665 n

end A253665

/-! ## A253665.P9920598144705452690

`A008619(n)*A240558(n)`
-/

namespace A253665.P9920598144705452690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n * A240558 n

end

end A253665.P9920598144705452690

namespace A253665

/-- `A008619(n)*A240558(n)` -/
def P9920598144705452690.Spec : Prop :=
  ∀ n, P9920598144705452690.a n = A253665 n

end A253665

/-! ## A253665.P16933484977366449542

`A093178(n)*A249308(n)`
-/

namespace A253665.P16933484977366449542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 n * A249308 n

end

end A253665.P16933484977366449542

namespace A253665

/-- `A093178(n)*A249308(n)` -/
def P16933484977366449542.Spec : Prop :=
  ∀ n, P16933484977366449542.a n = A253665 n

end A253665

/-! ## A253665.P2220326352189572043

`lcm(A001405(n), A249308(n))`
-/

namespace A253665.P2220326352189572043
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A001405 n) (A249308 n)

end

end A253665.P2220326352189572043

namespace A253665

/-- `lcm(A001405(n), A249308(n))` -/
def P2220326352189572043.Spec : Prop :=
  ∀ n, (P2220326352189572043.a n : ℤ) = A253665 n

end A253665

/-! ## A253665.P15254820707047498626

`A056040(n)*A074323(2*n+1)`
-/

namespace A253665.P15254820707047498626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056040 n * A074323 (2 * n + 1)

end

end A253665.P15254820707047498626

namespace A253665

/-- `A056040(n)*A074323(2*n+1)` -/
def P15254820707047498626.Spec : Prop :=
  ∀ n, P15254820707047498626.a n = A253665 n

end A253665

/-! ## A253665.P12863322092213276300

`A056040(n)+A000225(n)*A056040(n)`
-/

namespace A253665.P12863322092213276300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056040 n + A000225 n * A056040 n

end

end A253665.P12863322092213276300

namespace A253665

/-- `A056040(n)+A000225(n)*A056040(n)` -/
def P12863322092213276300.Spec : Prop :=
  ∀ n, P12863322092213276300.a n = A253665 n

end A253665

/-! ## A253665.P9755934534065121192

`A056040(n)/A057977(n)*A240558(n)`
-/

namespace A253665.P9755934534065121192
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056040 n : ℚ) / (A057977 n : ℚ) * (A240558 n : ℚ)

end

end A253665.P9755934534065121192

namespace A253665

/-- `A056040(n)/A057977(n)*A240558(n)` -/
def P9755934534065121192.Spec : Prop :=
  ∀ n, P9755934534065121192.a n = (A253665 n : ℚ)

end A253665

/-!
# A253666: Triangle read by rows, T(n,k) = C(n,k)*n!/(floor(n/2)!)^2, n>=0, 0<=k<=n.

The programs for A253666, there is no canonical definition to state claims against.
-/

/-! ## A253666.P6874469177014986186

`A204164(n+1)*A359648(n)`
-/

namespace A253666.P6874469177014986186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204164 (n + 1) * A359648 n

end

end A253666.P6874469177014986186

/-! ## A253666.P9364485071657844781

`A007318(n)*A056040(A003056(n))`
-/

namespace A253666.P9364485071657844781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A056040 (A003056 n).toNat

end

end A253666.P9364485071657844781

/-! ## A253666.P9496290169275564890

`A007318(n)*A056040(A117707(n))`
-/

namespace A253666.P9496290169275564890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A056040 (A117707 n).toNat

end

end A253666.P9496290169275564890

/-! ## A253666.P12389408213319902715

`A007318(n)*A056040(A163352(n))`
-/

namespace A253666.P12389408213319902715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A056040 (A163352 n).toNat

end

end A253666.P12389408213319902715

/-! ## A253666.P16781505514593273239

`A007318(n)*A056040(A169894(n))`
-/

namespace A253666.P16781505514593273239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A056040 (A169894 n).toNat

end

end A253666.P16781505514593273239

/-! ## A253666.P880868274539064550

`A007318(n)*A182073(A057944(n))`
-/

namespace A253666.P880868274539064550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A182073 (A057944 n).toNat

end

end A253666.P880868274539064550

/-! ## A253666.P2374520959185661353

`A193282(A117707(n))/A098361(n)`
-/

namespace A253666.P2374520959185661353
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A193282 (A117707 n).toNat : ℚ) / (A098361 n : ℚ)

end

end A253666.P2374520959185661353

/-! ## A253666.P9051892509673335400

`abs(A056040(A003056(n))*A108086(n))`
-/

namespace A253666.P9051892509673335400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A056040 (A003056 n).toNat * A108086 n|

end

end A253666.P9051892509673335400

/-! ## A253666.P16233936257968090197

`abs(A117440(n))*A056040(A169894(n))`
-/

namespace A253666.P16233936257968090197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A117440 n| * A056040 (A169894 n).toNat

end

end A253666.P16233936257968090197

/-! ## A253666.P6221922176600858345

`sqrt(A008459(n))*A056040(A117707(n))`
-/

namespace A253666.P6221922176600858345
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A008459 n : ℝ) * (A056040 (A117707 n).toNat : ℝ)

end

end A253666.P6221922176600858345

/-!
# A253668: Square array read by ascending antidiagonals, T(n, k) = k!*[x^k](log(x+1)*sum(j=0..n, C(n,j)*x^j)), n>=0, k>=0.

The programs for A253668, there is no canonical definition to state claims against.
-/

/-! ## A253668.P4022138229615925651

`A164092(A335095(n))`
-/

namespace A253668.P4022138229615925651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164092 (A335095 n).toNat

end

end A253668.P4022138229615925651

/-! ## A253668.P18294857492840873146

`and(-A081576(n), A254131(A335095(n)+1))`
-/

namespace A253668.P18294857492840873146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A081576 n) (A254131 (A335095 n + 1).toNat)

end

end A253668.P18294857492840873146

/-! ## A253668.P10976887885364459261

`A085144(A241171(n+1))`
-/

namespace A253668.P10976887885364459261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085144 (A241171 (n + 1)).toNat

end

end A253668.P10976887885364459261

/-! ## A253668.P18292717807132353474

`A357458(A103905(n+1))`
-/

namespace A253668.P18292717807132353474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357458 (A103905 (n + 1)).toNat

end

end A253668.P18292717807132353474

/-! ## A253668.P9219072929899354829

`A333810(A194540(n+1))`
-/

namespace A253668.P9219072929899354829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333810 (A194540 (n + 1)).toNat

end

end A253668.P9219072929899354829

/-!
# A253669: Square array read by ascending antidiagonals, T(n, k) = k!*[x^k](log(x+1)*sum(j=0..n, C(2*n,j)*x^j)), n>=0, k>=0.

The programs for A253669, there is no canonical definition to state claims against.
-/

/-! ## A253669.P16903760682563121181

`A254131(A335095(n)+1)`
-/

namespace A253669.P16903760682563121181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254131 (A335095 n + 1).toNat

end

end A253669.P16903760682563121181

/-! ## A253669.P16901099723846648440

`A253668(n)+A253668(A294950(n))`
-/

namespace A253669.P16901099723846648440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253668 n + A253668 (A294950 n).toNat

end

end A253669.P16901099723846648440

/-! ## A253669.P3661524110228853638

`A011594(A290439(n))*A142071(n)`
-/

namespace A253669.P3661524110228853638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011594 (A290439 n).toNat * A142071 n

end

end A253669.P3661524110228853638

/-! ## A253669.P16002883411392384542

`A208945(n+1)-A348043(A145324(n+1))`
-/

namespace A253669.P16002883411392384542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208945 (n + 1) - A348043 (A145324 (n + 1)).toNat

end

end A253669.P16002883411392384542

/-! ## A253669.P18397585860408960561

`A209073(n+1)-A348043(A145324(n+1))`
-/

namespace A253669.P18397585860408960561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209073 (n + 1) - A348043 (A145324 (n + 1)).toNat

end

end A253669.P18397585860408960561

/-!
# A253670: Square array read by ascending antidiagonals, T(n, k) = k!*[x^k](exp(x)*sum(j=0..n, C(2*n,j)*x^j)), n>=0, k>=0.

The programs for A253670, there is no canonical definition to state claims against.
-/

/-! ## A253670.P12354948546468066542

`A038663(A123610(n))%A038663(A089473(n+1))`
-/

namespace A253670.P12354948546468066542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A038663 (A123610 n).toNat) (A038663 (A089473 (n + 1)).toNat)

end

end A253670.P12354948546468066542

/-! ## A253670.P11295394583907196579

`A018388(A053534(n))`
-/

namespace A253670.P11295394583907196579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018388 (A053534 n).toNat

end

end A253670.P11295394583907196579

/-! ## A253670.P11858806736920836680

`A018388(A088699(n))`
-/

namespace A253670.P11858806736920836680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018388 (A088699 n).toNat

end

end A253670.P11858806736920836680

/-! ## A253670.P7464194194878233970

`A018388(A094525(n))`
-/

namespace A253670.P7464194194878233970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018388 (A094525 n).toNat

end

end A253670.P7464194194878233970

/-! ## A253670.P6966486441429780053

`A018388(A101515(n))`
-/

namespace A253670.P6966486441429780053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018388 (A101515 n).toNat

end

end A253670.P6966486441429780053

/-!
# A253671: a(n) = floor(A000111(n)/A000111(n-1)).

The programs for A253671, the canonical program `A253671.P901294555430686072` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A253671 has offset 1).

The definition of A253671 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A253671.P901294555430686072

`ceil(or(3, 7*n²)/A017461(n))`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A253671

/-- `ceil(or(3, 7*n²)/A017461(n))` -/
def P901294555430686072.Spec : Prop :=
  ∀ n, P901294555430686072.a n = A253671 (n + 1)

theorem P901294555430686072.correct : P901294555430686072.Spec := by
  intro n
  simp only [A253671, Nat.add_sub_cancel]

end A253671

/-! ## A253671.P2621278325979918386

`ceil((14*n²+1)/A008593(2*n+1))`
-/

namespace A253671.P2621278325979918386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(14 * n ^ 2 + 1 : ℚ) / (A008593 (2 * n + 1) : ℚ)⌉

end

end A253671.P2621278325979918386

namespace A253671

/-- `ceil((14*n²+1)/A008593(2*n+1))` -/
def P2621278325979918386.Spec : Prop :=
  ∀ n, P2621278325979918386.a n = A253671 (n + 1)

end A253671

/-! ## A253671.P8149340326876072625

`floor((n+1)/atan(2^n))`
-/

namespace A253671.P8149340326876072625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) / Real.arctan (2 ^ n : ℝ)⌋

end

end A253671.P8149340326876072625

namespace A253671

/-- `floor((n+1)/atan(2^n))` -/
def P8149340326876072625.Spec : Prop :=
  ∀ n, P8149340326876072625.a n = A253671 (n + 1)

end A253671

/-! ## A253671.P6025638221753174724

`floor((n+1)/acot(acot(2^n)))`
-/

namespace A253671.P6025638221753174724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) / SequenceMachineLib.acot (SequenceMachineLib.acot (2 ^ n : ℝ))⌋

end

end A253671.P6025638221753174724

namespace A253671

/-- `floor((n+1)/acot(acot(2^n)))` -/
def P6025638221753174724.Spec : Prop :=
  ∀ n, P6025638221753174724.a n = A253671 (n + 1)

end A253671

/-! ## A253671.P5088700115786052376

`A062300(2*n+1)%A189713(n+1)`
-/

namespace A253671.P5088700115786052376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A062300 (2 * n + 1)) (A189713 (n + 1))

end

end A253671.P5088700115786052376

namespace A253671

/-- `A062300(2*n+1)%A189713(n+1)` -/
def P5088700115786052376.Spec : Prop :=
  ∀ n, P5088700115786052376.a n = A253671 (n + 1)

end A253671

/-! ## A253671.P7685497329529757549

`A014413(A062300(n+2)²)*A062300(2*n+1)`
-/

namespace A253671.P7685497329529757549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014413 (A062300 (n + 2) ^ 2).toNat * A062300 (2 * n + 1)

end

end A253671.P7685497329529757549

namespace A253671

/-- `A014413(A062300(n+2)²)*A062300(2*n+1)` -/
def P7685497329529757549.Spec : Prop :=
  ∀ n, P7685497329529757549.a n = A253671 (n + 1)

end A253671

/-! ## A253671.P8781726673380379006

`A000196(A062300(2*n+1)²)`
-/

namespace A253671.P8781726673380379006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A062300 (2 * n + 1) ^ 2).toNat

end

end A253671.P8781726673380379006

namespace A253671

/-- `A000196(A062300(2*n+1)²)` -/
def P8781726673380379006.Spec : Prop :=
  ∀ n, P8781726673380379006.a n = A253671 (n + 1)

end A253671

/-! ## A253671.P15039259634504585556

`A000196(A062300(2*n+1)*A062300(2*(n+1)))`
-/

namespace A253671.P15039259634504585556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A062300 (2 * n + 1) * A062300 (2 * (n + 1))).toNat

end

end A253671.P15039259634504585556

namespace A253671

/-- `A000196(A062300(2*n+1)*A062300(2*(n+1)))` -/
def P15039259634504585556.Spec : Prop :=
  ∀ n, P15039259634504585556.a n = A253671 (n + 1)

end A253671

/-! ## A253671.P17199926294296742047

`A062300(A121855(A062300(2*n+1)²))`
-/

namespace A253671.P17199926294296742047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062300 (A121855 (A062300 (2 * n + 1) ^ 2).toNat).toNat

end

end A253671.P17199926294296742047

namespace A253671

/-- `A062300(A121855(A062300(2*n+1)²))` -/
def P17199926294296742047.Spec : Prop :=
  ∀ n, P17199926294296742047.a n = A253671 (n + 1)

end A253671

/-! ## A253671.P14841872134413966589

`floor((n+1)/asin(tanh(n+1)))`
-/

namespace A253671.P14841872134413966589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) / Real.arcsin (Real.tanh (n + 1 : ℝ))⌋

end

end A253671.P14841872134413966589

namespace A253671

/-- `floor((n+1)/asin(tanh(n+1)))` -/
def P14841872134413966589.Spec : Prop :=
  ∀ n, P14841872134413966589.a n = A253671 (n + 1)

end A253671

/-!
# A253673: Indices of centered triangular numbers (A005448) that are also centered octagonal numbers (A016754).

The programs for A253673, the canonical program `A253673.P9010123248997009526` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A253673 has offset 1).

The definition of A253673 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A253673.P9010123248997009526

`A129444(A042963(n+2))`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A253673

/-- `A129444(A042963(n+2))` -/
def P9010123248997009526.Spec : Prop :=
  ∀ n, P9010123248997009526.a n = A253673 (n + 1)

theorem P9010123248997009526.correct : P9010123248997009526.Spec := by
  intro n
  simp only [A253673, Nat.add_sub_cancel]

end A253673

/-! ## A253673.P17655166133285488914

`∑[A087799(n)-A146311(n)]`
-/

namespace A253673.P17655166133285488914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087799 n - A146311 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A253673.P17655166133285488914

namespace A253673

/-- `∑[A087799(n)-A146311(n)]` -/
def P17655166133285488914.Spec : Prop :=
  ∀ n, P17655166133285488914.a n = A253673 (n + 1)

end A253673

/-! ## A253673.P825204988671255198

`∑[A001079(n)*A010684(n)]`
-/

namespace A253673.P825204988671255198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001079 n * A010684 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A253673.P825204988671255198

namespace A253673

/-- `∑[A001079(n)*A010684(n)]` -/
def P825204988671255198.Spec : Prop :=
  ∀ n, P825204988671255198.a n = A253673 (n + 1)

end A253673

/-! ## A253673.P10337427619963962548

`∑[lcm(A010684(n), A146311(n))]`
-/

namespace A253673.P10337427619963962548
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A010684 n) (A146311 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A253673.P10337427619963962548

namespace A253673

/-- `∑[lcm(A010684(n), A146311(n))]` -/
def P10337427619963962548.Spec : Prop :=
  ∀ n, (P10337427619963962548.a n : ℤ) = A253673 (n + 1)

end A253673

/-! ## A253673.P582068652301429721

`A233450(A014601(n)+1)+1`
-/

namespace A253673.P582068652301429721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233450 (A014601 n + 1).toNat + 1

end

end A253673.P582068652301429721

namespace A253673

/-- `A233450(A014601(n)+1)+1` -/
def P582068652301429721.Spec : Prop :=
  ∀ n, P582068652301429721.a n = A253673 (n + 1)

end A253673

/-! ## A253673.P267038450990649403

`A233450(A338062(n+1))+1`
-/

namespace A253673.P267038450990649403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233450 (A338062 (n + 1)).toNat + 1

end

end A253673.P267038450990649403

namespace A253673

/-- `A233450(A338062(n+1))+1` -/
def P267038450990649403.Spec : Prop :=
  ∀ n, P267038450990649403.a n = A253673 (n + 1)

end A253673

/-! ## A253673.P4141601715540679081

`A054320(n)+1-∑[A146311(n)]`
-/

namespace A253673.P4141601715540679081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146311 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054320 n + (1 - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A253673.P4141601715540679081

namespace A253673

/-- `A054320(n)+1-∑[A146311(n)]` -/
def P4141601715540679081.Spec : Prop :=
  ∀ n, P4141601715540679081.a n = A253673 (n + 1)

end A253673

/-! ## A253673.P2339397762851542227

`A000034(n)*A138288(n)-A132596(n)`
-/

namespace A253673.P2339397762851542227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n * A138288 n - A132596 n

end

end A253673.P2339397762851542227

namespace A253673

/-- `A000034(n)*A138288(n)-A132596(n)` -/
def P2339397762851542227.Spec : Prop :=
  ∀ n, P2339397762851542227.a n = A253673 (n + 1)

end A253673

/-! ## A253673.P16480112407182274522

`ceil(sqrt(A254896(n+1)/2))`
-/

namespace A253673.P16480112407182274522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt ((A254896 (n + 1) : ℚ) / 2 : ℝ)⌉

end

end A253673.P16480112407182274522

namespace A253673

/-- `ceil(sqrt(A254896(n+1)/2))` -/
def P16480112407182274522.Spec : Prop :=
  ∀ n, P16480112407182274522.a n = A253673 (n + 1)

end A253673

/-!
# A253674: Indices of centered octagonal numbers (A016754) which are also centered triangular numbers (A005448).

The programs for A253674, the canonical program `A253674.P14966502823909885052` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A253674 has offset 1).

The definition of A253674 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A253674.P14966502823909885052

`round(Δ[A004189(n)/A000034(n)])`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A253674

/-- `round(Δ[A004189(n)/A000034(n)])` -/
def P14966502823909885052.Spec : Prop :=
  ∀ n, P14966502823909885052.a n = A253674 (n + 1)

theorem P14966502823909885052.correct : P14966502823909885052.Spec := by
  intro n
  simp only [A253674, Nat.add_sub_cancel]

end A253674

/-! ## A253674.P14856846326343828449

`(A129445(A338062(n+1))+1)/2`
-/

namespace A253674.P14856846326343828449
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A129445 (A338062 (n + 1)).toNat + 1 : ℚ) / 2

end

end A253674.P14856846326343828449

namespace A253674

/-- `(A129445(A338062(n+1))+1)/2` -/
def P14856846326343828449.Spec : Prop :=
  ∀ n, P14856846326343828449.a n = (A253674 (n + 1) : ℚ)

end A253674

/-! ## A253674.P16617363074511449061

`A001079(∑[and(1, n)])*A129445(n+1)`
-/

namespace A253674.P16617363074511449061
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001079 (∑ j ∈ Finset.range (n + 1), f1 j) * A129445 (n + 1)

end

end A253674.P16617363074511449061

namespace A253674

/-- `A001079(∑[and(1, n)])*A129445(n+1)` -/
def P16617363074511449061.Spec : Prop :=
  ∀ n, P16617363074511449061.a n = A253674 (n + 1)

end A253674

/-! ## A253674.P18133305910846671882

`A001079(A110654(n))*A129445(n+1)`
-/

namespace A253674.P18133305910846671882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001079 (A110654 n).toNat * A129445 (n + 1)

end

end A253674.P18133305910846671882

namespace A253674

/-- `A001079(A110654(n))*A129445(n+1)` -/
def P18133305910846671882.Spec : Prop :=
  ∀ n, P18133305910846671882.a n = A253674 (n + 1)

end A253674

/-! ## A253674.P17318884340381264928

`ceil(sqrt(A253675(n+1))/2)`
-/

namespace A253674.P17318884340381264928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A253675 (n + 1) : ℝ) / 2⌉

end

end A253674.P17318884340381264928

namespace A253674

/-- `ceil(sqrt(A253675(n+1))/2)` -/
def P17318884340381264928.Spec : Prop :=
  ∀ n, P17318884340381264928.a n = A253674 (n + 1)

end A253674

/-! ## A253674.P13449037388951136778

`A253675(n+1)%(3*A254895(n+1))`
-/

namespace A253674.P13449037388951136778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A253675 (n + 1)) (3 * A254895 (n + 1))

end

end A253674.P13449037388951136778

namespace A253674

/-- `A253675(n+1)%(3*A254895(n+1))` -/
def P13449037388951136778.Spec : Prop :=
  ∀ n, P13449037388951136778.a n = A253674 (n + 1)

end A253674

/-!
# A253675: Centered triangular numbers (A005448) which are also centered octagonal numbers (A016754).

The programs for A253675, there is no canonical definition to state claims against.
-/

/-! ## A253675.P1105752729481951688

`(1-2*A253674(n+1))²`
-/

namespace A253675.P1105752729481951688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - 2 * A253674 (n + 1)) ^ 2

end

end A253675.P1105752729481951688

/-! ## A253675.P10441663428100927341

`record[A129445(n+3)^((n²+n)%4)]`
-/

namespace A253675.P10441663428100927341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129445 (n + 3) ^ ((n ^ 2 + n) % 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253675.P10441663428100927341

/-! ## A253675.P9571785223541083986

`A249483(Δ[A035608(n)])`
-/

namespace A253675.P9571785223541083986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035608 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249483 (f1 (n + 1) - f1 n).toNat

end

end A253675.P9571785223541083986

/-! ## A253675.P12683896282200689734

`A129445(A338062(n+1))²`
-/

namespace A253675.P12683896282200689734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129445 (A338062 (n + 1)).toNat ^ 2

end

end A253675.P12683896282200689734

/-! ## A253675.P16395624078500863058

`Δ[A001078(n)/A000034(n)]²`
-/

namespace A253675.P16395624078500863058
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001078 n : ℚ) / (A000034 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A253675.P16395624078500863058

/-! ## A253675.P7250608255029895365

`A129445(A000027(comp[or(2, n)-1]+1))²`
-/

namespace A253675.P7250608255029895365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 2 n : ℤ) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129445 (A000027 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1)).toNat ^ 2

end

end A253675.P7250608255029895365

/-! ## A253675.P5191878299114380981

`A249483(∑[A010127(A164661(n))])`
-/

namespace A253675.P5191878299114380981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010127 (A164661 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249483 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A253675.P5191878299114380981

/-! ## A253675.P12142447217904519085

`A249483(A035608(n+1)-A035608(n))`
-/

namespace A253675.P12142447217904519085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249483 (A035608 (n + 1) - A035608 n).toNat

end

end A253675.P12142447217904519085

/-! ## A253675.P9975850199475949390

`∪[A080874(A005408(2*n)), A140781(2*n)]²`
-/

namespace A253675.P9975850199475949390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080874 (A005408 (2 * n)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140781 (2 * n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A253675.P9975850199475949390

/-!
# A253676: Irregular triangle T read by rows in which row n is the result of iterating the function S defined in A257480 and terminating at the first occurrence of 1, assuming the 3x+1 (or Collatz) conjecture.

The programs for A253676, there is no canonical definition to state claims against.
-/

/-! ## A253676.P12846603648765435739

`ceil(A254068(n+1)/4)`
-/

namespace A253676.P12846603648765435739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A254068 (n + 1) : ℚ) / 4⌉

end

end A253676.P12846603648765435739

/-! ## A253676.P6511274833781187714

`(A254068(C(n+1, n))+3)/4`
-/

namespace A253676.P6511274833781187714
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A254068 (Nat.choose (n + 1) n) + 3 : ℚ) / 4

end

end A253676.P6511274833781187714

/-! ## A253676.P1223424047584542821

`(A254068(Δ[n²]-n)+3)/4`
-/

namespace A253676.P1223424047584542821
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A254068 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat + 3 : ℚ) / 4

end

end A253676.P1223424047584542821

/-! ## A253676.P12356358482494577109

`A008621(A254068(n+1))`
-/

namespace A253676.P12356358482494577109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (A254068 (n + 1)).toNat

end

end A253676.P12356358482494577109

/-! ## A253676.P11838123883492935256

`A003602(A254068(n+1)+1)`
-/

namespace A253676.P11838123883492935256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (A254068 (n + 1) + 1).toNat

end

end A253676.P11838123883492935256

/-! ## A253676.P1565029992454794219

`A008624(A254068(n+1)+1)`
-/

namespace A253676.P1565029992454794219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008624 (A254068 (n + 1) + 1).toNat

end

end A253676.P1565029992454794219

/-! ## A253676.P14656737790105414299

`A110622(A254068(n+1)+1)`
-/

namespace A253676.P14656737790105414299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110622 (A254068 (n + 1) + 1).toNat

end

end A253676.P14656737790105414299

/-! ## A253676.P16976567997667471653

`A339913(A254068(n+1)+1)`
-/

namespace A253676.P16976567997667471653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339913 (A254068 (n + 1) + 1).toNat

end

end A253676.P16976567997667471653

/-! ## A253676.P5140575305662806649

`A002265(A254068(n+1)+3)`
-/

namespace A253676.P5140575305662806649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A254068 (n + 1) + 3).toNat

end

end A253676.P5140575305662806649

/-!
# A253677: Product of decimal digits of n-th term of the Look and Say sequence A005150.

The programs for A253677, there is no canonical definition to state claims against.
-/

/-! ## A253677.P6971750299852660470

`∏{digits}[A005150(n+1), #]`
-/

namespace A253677.P6971750299852660470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005150 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).prod

end

end A253677.P6971750299852660470

/-! ## A253677.P4502405000150388514

`∏{digits}[A007651(n+1), #]`
-/

namespace A253677.P4502405000150388514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007651 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).prod

end

end A253677.P4502405000150388514

/-! ## A253677.P2949302466971297813

`A003963(A277703(∑[char[3*n+5]+1]))`
-/

namespace A253677.P2949302466971297813
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n + 5

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (A277703 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A253677.P2949302466971297813

/-!
# A253678: Number of perfect matchings in the graph C_8 X C_n.

The programs for A253678, there is no canonical definition to state claims against.
-/

/-! ## A253678.P11627461633493444351

`A341741(A056115(n)+19)`
-/

namespace A253678.P11627461633493444351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341741 (A056115 n + 19).toNat

end

end A253678.P11627461633493444351

/-! ## A253678.P16641788772331946362

`A341741(eq[5, A128227(n)])`
-/

namespace A253678.P16641788772331946362
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128227 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341741 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A253678.P16641788772331946362

/-! ## A253678.P11362753367767694653

`A341741(A167499(n+4)-1)`
-/

namespace A253678.P11362753367767694653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341741 (A167499 (n + 4) - 1).toNat

end

end A253678.P11362753367767694653

/-! ## A253678.P5901525044800816399

`A341741(A055998(n+3)+7)`
-/

namespace A253678.P5901525044800816399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341741 (A055998 (n + 3) + 7).toNat

end

end A253678.P5901525044800816399

/-! ## A253678.P14440358947767435221

`A341741(eq[5, A048151(n+1)])`
-/

namespace A253678.P14440358947767435221
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048151 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341741 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A253678.P14440358947767435221

/-!
# A253679: Numbers that begin a run of an odd number of consecutive integers whose cubes sum to a square.

The programs for A253679, the canonical program `A253679.P7714642647383152551` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A253679 has offset 1).

The definition of A253679 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A253679.P7714642647383152551

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=23, a(1)=118, a(2)=333, a(3)=716`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A253679

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P7714642647383152551.Spec : Prop :=
  ∀ n, P7714642647383152551.a n = A253679 (n + 1)

theorem P7714642647383152551.correct : P7714642647383152551.Spec := by
  intro n
  simp only [A253679, Nat.add_sub_cancel]

end A253679

/-! ## A253679.P4523982389663680515

`∑[24*(n+1)²-1]`
-/

namespace A253679.P4523982389663680515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (24 * (n + 1) ^ 2 : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A253679.P4523982389663680515

namespace A253679

/-- `∑[24*(n+1)²-1]` -/
def P4523982389663680515.Spec : Prop :=
  ∀ n, P4523982389663680515.a n = A253679 (n + 1)

end A253679

/-! ## A253679.P2127264503457819416

`6*C(2*(n+2), 3)-(n+1)`
-/

namespace A253679.P2127264503457819416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (6 * Nat.choose (2 * (n + 2)) 3 : ℤ) - (n + 1 : ℤ)

end

end A253679.P2127264503457819416

namespace A253679

/-- `6*C(2*(n+2), 3)-(n+1)` -/
def P2127264503457819416.Spec : Prop :=
  ∀ n, P2127264503457819416.a n = A253679 (n + 1)

end A253679

/-! ## A253679.P7354377345534180683

`Δ[2*n*lcm(n+2, (n+1)²)]-(n+1)`
-/

namespace A253679.P7354377345534180683
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n * Nat.lcm (n + 2) ((n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n + 1 : ℤ)

end

end A253679.P7354377345534180683

namespace A253679

/-- `Δ[2*n*lcm(n+2, (n+1)²)]-(n+1)` -/
def P7354377345534180683.Spec : Prop :=
  ∀ n, P7354377345534180683.a n = A253679 (n + 1)

end A253679

/-! ## A253679.P5192512817679054817

`A069074(n)-(n+1)`
-/

namespace A253679.P5192512817679054817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069074 n - (n + 1 : ℤ)

end

end A253679.P5192512817679054817

namespace A253679

/-- `A069074(n)-(n+1)` -/
def P5192512817679054817.Spec : Prop :=
  ∀ n, P5192512817679054817.a n = A253679 (n + 1)

end A253679

/-! ## A253679.P3944571018921643642

`lcm(∑[A158544(n+1)], n+1)`
-/

namespace A253679.P3944571018921643642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158544 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (∑ j ∈ Finset.range (n + 1), f1 j) (n + 1 : ℤ)

end

end A253679.P3944571018921643642

namespace A253679

/-- `lcm(∑[A158544(n+1)], n+1)` -/
def P3944571018921643642.Spec : Prop :=
  ∀ n, (P3944571018921643642.a n : ℤ) = A253679 (n + 1)

end A253679

/-! ## A253679.P7892377543252363567

`A016755(n+1)-(3*n+4)`
-/

namespace A253679.P7892377543252363567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016755 (n + 1) - (3 * n + 4 : ℤ)

end

end A253679.P7892377543252363567

namespace A253679

/-- `A016755(n+1)-(3*n+4)` -/
def P7892377543252363567.Spec : Prop :=
  ∀ n, P7892377543252363567.a n = A253679 (n + 1)

end A253679

/-! ## A253679.P439394496314303986

`(n+1)*Δ[A269342(n)]`
-/

namespace A253679.P439394496314303986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269342 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (f1 (n + 1) - f1 n)

end

end A253679.P439394496314303986

namespace A253679

/-- `(n+1)*Δ[A269342(n)]` -/
def P439394496314303986.Spec : Prop :=
  ∀ n, P439394496314303986.a n = A253679 (n + 1)

end A253679

/-! ## A253679.P16988423326151825000

`(n+1)*(A118057(n+2)+2)`
-/

namespace A253679.P16988423326151825000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A118057 (n + 2) + 2)

end

end A253679.P16988423326151825000

namespace A253679

/-- `(n+1)*(A118057(n+2)+2)` -/
def P16988423326151825000.Spec : Prop :=
  ∀ n, P16988423326151825000.a n = A253679 (n + 1)

end A253679

/-! ## A253679.P893465626352038904

`2*A300758(n+1)-(n+1)`
-/

namespace A253679.P893465626352038904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A300758 (n + 1) - (n + 1 : ℤ)

end

end A253679.P893465626352038904

namespace A253679

/-- `2*A300758(n+1)-(n+1)` -/
def P893465626352038904.Spec : Prop :=
  ∀ n, P893465626352038904.a n = A253679 (n + 1)

end A253679

/-! ## A253679.P8826463599597390681

`Δ[A033595(n+1)]+n+2`
-/

namespace A253679.P8826463599597390681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033595 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (n + 2 : ℤ)

end

end A253679.P8826463599597390681

namespace A253679

/-- `Δ[A033595(n+1)]+n+2` -/
def P8826463599597390681.Spec : Prop :=
  ∀ n, P8826463599597390681.a n = A253679 (n + 1)

end A253679

/-! ## A253679.P14510645553859018010

`(n+1)*(A085250(n+2)-1)`
-/

namespace A253679.P14510645553859018010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A085250 (n + 2) - 1)

end

end A253679.P14510645553859018010

namespace A253679

/-- `(n+1)*(A085250(n+2)-1)` -/
def P14510645553859018010.Spec : Prop :=
  ∀ n, P14510645553859018010.a n = A253679 (n + 1)

end A253679

/-! ## A253679.P11608269625515873577

`A062938(n+1)-A001094(n+2)`
-/

namespace A253679.P11608269625515873577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062938 (n + 1) - A001094 (n + 2)

end

end A253679.P11608269625515873577

namespace A253679

/-- `A062938(n+1)-A001094(n+2)` -/
def P11608269625515873577.Spec : Prop :=
  ∀ n, P11608269625515873577.a n = A253679 (n + 1)

end A253679

/-! ## A253679.P11237523682606356955

`(n+1)*A195241(n+3)`
-/

namespace A253679.P11237523682606356955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A195241 (n + 3)

end

end A253679.P11237523682606356955

namespace A253679

/-- `(n+1)*A195241(n+3)` -/
def P11237523682606356955.Spec : Prop :=
  ∀ n, P11237523682606356955.a n = A253679 (n + 1)

end A253679

/-! ## A253679.P2740291394617709273

`A079505(2*n+3)-(n+2)`
-/

namespace A253679.P2740291394617709273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079505 (2 * n + 3) - (n + 2 : ℤ)

end

end A253679.P2740291394617709273

namespace A253679

/-- `A079505(2*n+3)-(n+2)` -/
def P2740291394617709273.Spec : Prop :=
  ∀ n, P2740291394617709273.a n = A253679 (n + 1)

end A253679

/-! ## A253679.P9873888976410620430

`(n+2)*A142463(2*(n+1))+1`
-/

namespace A253679.P9873888976410620430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A142463 (2 * (n + 1)) + 1

end

end A253679.P9873888976410620430

namespace A253679

/-- `(n+2)*A142463(2*(n+1))+1` -/
def P9873888976410620430.Spec : Prop :=
  ∀ n, P9873888976410620430.a n = A253679 (n + 1)

end A253679

/-! ## A253679.P3708343064993163567

`2*A033931(2*(n+1))-(n+1)`
-/

namespace A253679.P3708343064993163567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A033931 (2 * (n + 1)) - (n + 1 : ℤ)

end

end A253679.P3708343064993163567

namespace A253679

/-- `2*A033931(2*(n+1))-(n+1)` -/
def P3708343064993163567.Spec : Prop :=
  ∀ n, P3708343064993163567.a n = A253679 (n + 1)

end A253679

/-! ## A253679.P11930183794581790388

`A058794(2*n+1)+3*n+5`
-/

namespace A253679.P11930183794581790388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058794 (2 * n + 1) + (3 * n + 5 : ℤ)

end

end A253679.P11930183794581790388

namespace A253679

/-- `A058794(2*n+1)+3*n+5` -/
def P11930183794581790388.Spec : Prop :=
  ∀ n, P11930183794581790388.a n = A253679 (n + 1)

end A253679

/-! ## A253679.P5040289623570043946

`A126420(2*n+3)-n`
-/

namespace A253679.P5040289623570043946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126420 (2 * n + 3) - (n : ℤ)

end

end A253679.P5040289623570043946

namespace A253679

/-- `A126420(2*n+3)-n` -/
def P5040289623570043946.Spec : Prop :=
  ∀ n, P5040289623570043946.a n = A253679 (n + 1)

end A253679

/-! ## A253679.P7667538534296914401

`A179094(2*n+3)-n`
-/

namespace A253679.P7667538534296914401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179094 (2 * n + 3) - (n : ℤ)

end

end A253679.P7667538534296914401

namespace A253679

/-- `A179094(2*n+3)-n` -/
def P7667538534296914401.Spec : Prop :=
  ∀ n, P7667538534296914401.a n = A253679 (n + 1)

end A253679

/-!
# A253680: Numbers c(n) whose square are equal to the sum of an odd number M of consecutive cubed integers b^3 + (b+1)^3 + ... + (b+M-1)^3 = c(n)^2, starting at b(n) (A253679).

The programs for A253680, the canonical program `A253680.P4101959214351850574` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A253680 has offset 1).

The definition of A253680 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A253680.P7445230802147407232

`sqrt(A253681(n+1))`
-/

namespace A253680.P7445230802147407232
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A253681 (n + 1) : ℝ)

end

end A253680.P7445230802147407232

namespace A253680

/-- `sqrt(A253681(n+1))` -/
def P7445230802147407232.Spec : Prop :=
  ∀ n, P7445230802147407232.a n = (A253680 (n + 1) : ℝ)

end A253680

/-! ## A253680.P4101959214351850574

`(A001844(n+1)-1)*A193250(n+2)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A253680

/-- `(A001844(n+1)-1)*A193250(n+2)` -/
def P4101959214351850574.Spec : Prop :=
  ∀ n, P4101959214351850574.a n = A253680 (n + 1)

theorem P4101959214351850574.correct : P4101959214351850574.Spec := by
  intro n
  simp only [A253680, Nat.add_sub_cancel]

end A253680

/-! ## A253680.P723674209344666508

`A300758(n+1)+A035008(n+1)*A300758(n+1)`
-/

namespace A253680.P723674209344666508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300758 (n + 1) + A035008 (n + 1) * A300758 (n + 1)

end

end A253680.P723674209344666508

namespace A253680

/-- `A300758(n+1)+A035008(n+1)*A300758(n+1)` -/
def P723674209344666508.Spec : Prop :=
  ∀ n, P723674209344666508.a n = A253680 (n + 1)

end A253680

/-! ## A253680.P5707632918705738118

`∑[n+1]*Δ[A144139(n+1)]`
-/

namespace A253680.P5707632918705738118
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144139 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * (f2 (n + 1) - f2 n)

end

end A253680.P5707632918705738118

namespace A253680

/-- `∑[n+1]*Δ[A144139(n+1)]` -/
def P5707632918705738118.Spec : Prop :=
  ∀ n, P5707632918705738118.a n = A253680 (n + 1)

end A253680

/-! ## A253680.P4243322468782820087

`A001478(2*(n+1))*A001478(n+2)*A193250(n+2)`
-/

namespace A253680.P4243322468782820087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001478 (2 * (n + 1)) * A001478 (n + 2) * A193250 (n + 2)

end

end A253680.P4243322468782820087

namespace A253680

/-- `A001478(2*(n+1))*A001478(n+2)*A193250(n+2)` -/
def P4243322468782820087.Spec : Prop :=
  ∀ n, P4243322468782820087.a n = A253680 (n + 1)

end A253680

/-! ## A253680.P5356684487826783789

`2*(n+1)*A076454(2*n+3)`
-/

namespace A253680.P5356684487826783789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n + 1 : ℤ) * A076454 (2 * n + 3))

end

end A253680.P5356684487826783789

namespace A253680

/-- `2*(n+1)*A076454(2*n+3)` -/
def P5356684487826783789.Spec : Prop :=
  ∀ n, P5356684487826783789.a n = A253680 (n + 1)

end A253680

/-! ## A253680.P11649769139428982145

`A213041(2*n+3)*A213502(2*(n+1))`
-/

namespace A253680.P11649769139428982145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213041 (2 * n + 3) * A213502 (2 * (n + 1))

end

end A253680.P11649769139428982145

namespace A253680

/-- `A213041(2*n+3)*A213502(2*(n+1))` -/
def P11649769139428982145.Spec : Prop :=
  ∀ n, P11649769139428982145.a n = A253680 (n + 1)

end A253680

/-! ## A253680.P11988319638884303392

`Δ[A057722(2*(n+1))]*A000217(n+1)`
-/

namespace A253680.P11988319638884303392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057722 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A000217 (n + 1)

end

end A253680.P11988319638884303392

namespace A253680

/-- `Δ[A057722(2*(n+1))]*A000217(n+1)` -/
def P11988319638884303392.Spec : Prop :=
  ∀ n, P11988319638884303392.a n = A253680 (n + 1)

end A253680

/-! ## A253680.P10477666466792043874

`(2*n+3)*A158056((n+1)²+n+1)`
-/

namespace A253680.P10477666466792043874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 3 : ℤ) * A158056 ((n + 1) ^ 2 + (n + 1))

end

end A253680.P10477666466792043874

namespace A253680

/-- `(2*n+3)*A158056((n+1)²+n+1)` -/
def P10477666466792043874.Spec : Prop :=
  ∀ n, P10477666466792043874.a n = A253680 (n + 1)

end A253680

/-! ## A253680.P709730223943377966

`lcm(A007742(A014105(n+1)+n+1), A014105(n+1))`
-/

namespace A253680.P709730223943377966
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A007742 (A014105 (n + 1) + (n + 1 : ℤ)).toNat) (A014105 (n + 1))

end

end A253680.P709730223943377966

namespace A253680

/-- `lcm(A007742(A014105(n+1)+n+1), A014105(n+1))` -/
def P709730223943377966.Spec : Prop :=
  ∀ n, (P709730223943377966.a n : ℤ) = A253680 (n + 1)

end A253680

/-!
# A253681: Integer squares c^2 that are equal to the sum of an odd number M of consecutive cubed integers b^3 + (b+1)^3 + ... + (b+M-1)^3 = c^2 starting at b(n) (A253679).

The programs for A253681, the canonical program `A253681.P8863297327921336173` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A253681 has offset 1).

The definition of A253681 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A253681.P8863297327921336173

`A253680(n+1)²`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A253681

/-- `A253680(n+1)²` -/
def P8863297327921336173.Spec : Prop :=
  ∀ n, P8863297327921336173.a n = A253681 (n + 1)

theorem P8863297327921336173.correct : P8863297327921336173.Spec := by
  intro n
  simp only [A253681, Nat.add_sub_cancel]

end A253681

/-! ## A253681.P443643642721304343

`A253680(n+1)^A141310(A131507(n))`
-/

namespace A253681.P443643642721304343
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A253680 (n + 1) : ℚ) ^ (A141310 (A131507 n).toNat : ℤ)

end

end A253681.P443643642721304343

namespace A253681

/-- `A253680(n+1)^A141310(A131507(n))` -/
def P443643642721304343.Spec : Prop :=
  ∀ n, P443643642721304343.a n = (A253681 (n + 1) : ℚ)

end A253681

/-! ## A253681.P4832265480886005987

`A253680(n+1)^A014710(A309307(n+1))`
-/

namespace A253681.P4832265480886005987
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A253680 (n + 1) : ℚ) ^ (A014710 (A309307 (n + 1)).toNat : ℤ)

end

end A253681.P4832265480886005987

namespace A253681

/-- `A253680(n+1)^A014710(A309307(n+1))` -/
def P4832265480886005987.Spec : Prop :=
  ∀ n, P4832265480886005987.a n = (A253681 (n + 1) : ℚ)

end A253681

/-! ## A253681.P16637891866144121639

`lcm(∑[16*∑[3*n+1]+1], A300758(n+1))²`
-/

namespace A253681.P16637891866144121639
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16 * (∑ j ∈ Finset.range (n + 1), f2 j) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (A300758 (n + 1)) ^ 2

end

end A253681.P16637891866144121639

namespace A253681

/-- `lcm(∑[16*∑[3*n+1]+1], A300758(n+1))²` -/
def P16637891866144121639.Spec : Prop :=
  ∀ n, (P16637891866144121639.a n : ℤ) = A253681 (n + 1)

end A253681

/-! ## A253681.P16709504456090835621

`A253680(n+1)^A141310(A145341(n+1))`
-/

namespace A253681.P16709504456090835621
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A253680 (n + 1) : ℚ) ^ (A141310 (A145341 (n + 1)).toNat : ℤ)

end

end A253681.P16709504456090835621

namespace A253681

/-- `A253680(n+1)^A141310(A145341(n+1))` -/
def P16709504456090835621.Spec : Prop :=
  ∀ n, P16709504456090835621.a n = (A253681 (n + 1) : ℚ)

end A253681

/-! ## A253681.P16715829637715881064

`(A213041(2*n+3)*A213502(2*(n+1)))²`
-/

namespace A253681.P16715829637715881064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A213041 (2 * n + 3) * A213502 (2 * (n + 1))) ^ 2

end

end A253681.P16715829637715881064

namespace A253681

/-- `(A213041(2*n+3)*A213502(2*(n+1)))²` -/
def P16715829637715881064.Spec : Prop :=
  ∀ n, P16715829637715881064.a n = A253681 (n + 1)

end A253681

/-! ## A253681.P5323261506448801599

`A253680(n+1)^A260590(A027691(n))`
-/

namespace A253681.P5323261506448801599
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A253680 (n + 1) : ℚ) ^ (A260590 (A027691 n).toNat : ℤ)

end

end A253681.P5323261506448801599

namespace A253681

/-- `A253680(n+1)^A260590(A027691(n))` -/
def P5323261506448801599.Spec : Prop :=
  ∀ n, P5323261506448801599.a n = (A253681 (n + 1) : ℚ)

end A253681

/-!
# A253683: Primes p in increasing order with p > A253684(n) > A253685(n) such that (p, A253684(n), A253685(n)) forms a Wieferich triple.

The programs for A253683, there is no canonical definition to state claims against.
-/

/-! ## A253683.P16756300043974095270

`A344282(∑[∑[1-a(n-1)]])` with `a(0)=1, a(1)=6, a(2)=1, a(3)=0, a(4)=3, a(5)=1`
-/

namespace A253683.P16756300043974095270
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 6, 1, 0, 3, 1] fun n f2 =>
  1 - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344282 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A253683.P16756300043974095270

/-!
# A253687: The total number of pentagons in a variant of pentagon expansion (side-to-side, two consecutive sides and one isolated side) after n iterations.

The programs for A253687, the canonical program `A253687.P2325424460680078973` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A253687 has offset 1).

The definition of A253687 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A253687.P2325424460680078973

`2*a(n-1)-a(n-2)+a(n-4)-2*a(n-5)+a(n-6)` with `a(0)=1, a(1)=4, a(2)=10, a(3)=21, a(4)=39, a(5)=64, a(6)=94, a(7)=129, a(8)=167`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A253687

/-- `2*a(n-1)-a(n-2)+a(n-4)-2*a(n-5)+a(n-6)` -/
def P2325424460680078973.Spec : Prop :=
  ∀ n, P2325424460680078973.a n = A253687 (n + 1)

theorem P2325424460680078973.correct : P2325424460680078973.Spec := by
  intro n
  simp only [A253687, Nat.add_sub_cancel]

end A253687

/-! ## A253687.P12377276436719304944

`A253688(n+1)-A184955(A085140(n))`
-/

namespace A253687.P12377276436719304944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253688 (n + 1) - A184955 (A085140 n).toNat

end

end A253687.P12377276436719304944

namespace A253687

/-- `A253688(n+1)-A184955(A085140(n))` -/
def P12377276436719304944.Spec : Prop :=
  ∀ n, P12377276436719304944.a n = A253687 (n + 1)

end A253687

/-! ## A253687.P4485748357664706169

`A253688(n+1)-A184955(A349993(n))`
-/

namespace A253687.P4485748357664706169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253688 (n + 1) - A184955 (A349993 n).toNat

end

end A253687.P4485748357664706169

namespace A253687

/-- `A253688(n+1)-A184955(A349993(n))` -/
def P4485748357664706169.Spec : Prop :=
  ∀ n, P4485748357664706169.a n = A253687 (n + 1)

end A253687

/-! ## A253687.P8596923373470286499

`A253688(n+1)-A184955(A290564(n+1))`
-/

namespace A253687.P8596923373470286499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253688 (n + 1) - A184955 (A290564 (n + 1)).toNat

end

end A253687.P8596923373470286499

namespace A253687

/-- `A253688(n+1)-A184955(A290564(n+1))` -/
def P8596923373470286499.Spec : Prop :=
  ∀ n, P8596923373470286499.a n = A253687 (n + 1)

end A253687

/-!
# A253688: The total number of pentagons in a variant of pentagon expansion (vertex-to-vertex, two consecutive vertices and one isolated vertex) after n iterations.

The programs for A253688, the canonical program `A253688.P10727798726303235969` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A253688 has offset 1).

The definition of A253688 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A253688.P10727798726303235969

`2*a(n-1)-2*a(n-3)+a(n-4)` with `a(0)=1, a(1)=4, a(2)=10, a(3)=21, a(4)=39, a(5)=64, a(6)=94, a(7)=129, a(8)=171`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A253688

/-- `2*a(n-1)-2*a(n-3)+a(n-4)` -/
def P10727798726303235969.Spec : Prop :=
  ∀ n, P10727798726303235969.a n = A253688 (n + 1)

theorem P10727798726303235969.correct : P10727798726303235969.Spec := by
  intro n
  simp only [A253688, Nat.add_sub_cancel]

end A253688

/-! ## A253688.P15904921041656608370

`A253687(n+1)+A184955(A085140(n))`
-/

namespace A253688.P15904921041656608370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253687 (n + 1) + A184955 (A085140 n).toNat

end

end A253688.P15904921041656608370

namespace A253688

/-- `A253687(n+1)+A184955(A085140(n))` -/
def P15904921041656608370.Spec : Prop :=
  ∀ n, P15904921041656608370.a n = A253688 (n + 1)

end A253688

/-! ## A253688.P11775265685118021274

`A253687(n+1)+A184955(A349993(n))`
-/

namespace A253688.P11775265685118021274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253687 (n + 1) + A184955 (A349993 n).toNat

end

end A253688.P11775265685118021274

namespace A253688

/-- `A253687(n+1)+A184955(A349993(n))` -/
def P11775265685118021274.Spec : Prop :=
  ∀ n, P11775265685118021274.a n = A253688 (n + 1)

end A253688

/-! ## A253688.P1429220122785461327

`A253687(n+1)+A184955(A290564(n+1))`
-/

namespace A253688.P1429220122785461327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253687 (n + 1) + A184955 (A290564 (n + 1)).toNat

end

end A253688.P1429220122785461327

namespace A253688

/-- `A253687(n+1)+A184955(A290564(n+1))` -/
def P1429220122785461327.Spec : Prop :=
  ∀ n, P1429220122785461327.a n = A253688 (n + 1)

end A253688

/-!
# A253689: Centered triangular numbers (A005448) which are also centered heptagonal numbers (A069099).

The programs for A253689, there is no canonical definition to state claims against.
-/

/-! ## A253689.P7234275145009766159

`A005448(A253476(n+1))`
-/

namespace A253689.P7234275145009766159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005448 (A253476 (n + 1)).toNat

end

end A253689.P7234275145009766159

/-!
# A253691: Number of (n+1)X(n+1) 0..1 arrays with every 2X2 subblock ne-sw antidiagonal difference unequal to its neighbors horizontally and nw+se diagonal sum unequal to its neighbors vertically.

The programs for A253691, there is no canonical definition to state claims against.
-/

/-! ## A253691.P10651214125607600408

`A253698(∑[4*n]+1)`
-/

namespace A253691.P10651214125607600408
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253698 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A253691.P10651214125607600408

/-! ## A253691.P4256860255172102907

`lcm(2, A253698(A001844(n)))`
-/

namespace A253691.P4256860255172102907
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A253698 (A001844 n).toNat)

end

end A253691.P4256860255172102907

/-! ## A253691.P2560018755014155831

`record[A003982(n)*A253698(n+1)]`
-/

namespace A253691.P2560018755014155831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A253698 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253691.P2560018755014155831

/-! ## A253691.P12167554067042486169

`record[gcd(A003987(n), A253698(n+1))]`
-/

namespace A253691.P12167554067042486169
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003987 n) (A253698 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253691.P12167554067042486169

/-! ## A253691.P10536949756771317061

`A253698(A001844(n))%A225352(n+1)`
-/

namespace A253691.P10536949756771317061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A253698 (A001844 n).toNat) (A225352 (n + 1))

end

end A253691.P10536949756771317061

/-!
# A253692: Number of (n+1)X(2+1) 0..1 arrays with every 2X2 subblock ne-sw antidiagonal difference unequal to its neighbors horizontally and nw+se diagonal sum unequal to its neighbors vertically.

The programs for A253692, there is no canonical definition to state claims against.
-/

/-! ## A253692.P107455915296973225

`A253698(∑[n+2])`
-/

namespace A253692.P107455915296973225
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253698 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A253692.P107455915296973225

/-! ## A253692.P7743680968042778033

`A253698(A000096(n+1))+2%A000034(n)`
-/

namespace A253692.P7743680968042778033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253698 (A000096 (n + 1)).toNat + Int.tmod 2 (A000034 n)

end

end A253692.P7743680968042778033

/-! ## A253692.P11143699544326679330

`A253698(A000096(n+1))+A000038(n)%2`
-/

namespace A253692.P11143699544326679330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253698 (A000096 (n + 1)).toNat + Int.tmod (A000038 n) 2

end

end A253692.P11143699544326679330

/-! ## A253692.P748570859166843196

`A253698(A000096(n+1))+A005843(n)%2`
-/

namespace A253692.P748570859166843196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253698 (A000096 (n + 1)).toNat + Int.tmod (A005843 n) 2

end

end A253692.P748570859166843196

/-! ## A253692.P8365630476613653284

`A253698(A000096(n+1))+A046092(n)%2`
-/

namespace A253692.P8365630476613653284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253698 (A000096 (n + 1)).toNat + Int.tmod (A046092 n) 2

end

end A253692.P8365630476613653284

/-!
# A253693: Number of (n+1)X(3+1) 0..1 arrays with every 2X2 subblock ne-sw antidiagonal difference unequal to its neighbors horizontally and nw+se diagonal sum unequal to its neighbors vertically.

The programs for A253693, there is no canonical definition to state claims against.
-/

/-! ## A253693.P1955096630110587996

`A253698(∑[n+3]+1)`
-/

namespace A253693.P1955096630110587996
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253698 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A253693.P1955096630110587996

/-! ## A253693.P6620054341830376708

`A253698(Δ[A008778(n)])%A235012(n+1)`
-/

namespace A253693.P6620054341830376708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A253698 (f1 (n + 1) - f1 n).toNat) (A235012 (n + 1))

end

end A253693.P6620054341830376708

/-!
# A253694: Number of (n+1)X(4+1) 0..1 arrays with every 2X2 subblock ne-sw antidiagonal difference unequal to its neighbors horizontally and nw+se diagonal sum unequal to its neighbors vertically.

The programs for A253694, there is no canonical definition to state claims against.
-/

/-! ## A253694.P1345693644861522631

`A253698(Δ[n²]+∑[n+2]+4)`
-/

namespace A253694.P1345693644861522631
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253698 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + ((∑ j ∈ Finset.range (n + 1), f2 j + 4 : ℕ) : ℤ)).toNat

end

end A253694.P1345693644861522631

/-! ## A253694.P9031760776769961281

`lcm(2, A253698(Δ[A006416(n+2)]))`
-/

namespace A253694.P9031760776769961281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006416 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A253698 (f1 (n + 1) - f1 n).toNat)

end

end A253694.P9031760776769961281

/-! ## A253694.P6383880959443269682

`A209661(n+2)²*A253698(Δ[A006416(n+2)])`
-/

namespace A253694.P6383880959443269682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006416 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209661 (n + 2) ^ 2 * A253698 (f1 (n + 1) - f1 n).toNat

end

end A253694.P6383880959443269682

/-! ## A253694.P16344250899896905395

`A049077(2*n+1)*A253698(A000217(n+4)-3)`
-/

namespace A253694.P16344250899896905395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049077 (2 * n + 1) * A253698 (A000217 (n + 4) - 3).toNat

end

end A253694.P16344250899896905395

/-! ## A253694.P15839735110292220552

`(1-2*A000035(n))²*A253698(Δ[A006416(n+2)])`
-/

namespace A253694.P15839735110292220552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006416 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - 2 * A000035 n) ^ 2 * A253698 (f1 (n + 1) - f1 n).toNat

end

end A253694.P15839735110292220552

/-!
# A253695: Number of (n+1)X(5+1) 0..1 arrays with every 2X2 subblock ne-sw antidiagonal difference unequal to its neighbors horizontally and nw+se diagonal sum unequal to its neighbors vertically.

The programs for A253695, there is no canonical definition to state claims against.
-/

/-! ## A253695.P9968885418219062309

`A253698(∑[n+5]+6)`
-/

namespace A253695.P9968885418219062309
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253698 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A253695.P9968885418219062309

/-! ## A253695.P9569596188819179414

`lcm(2, A253698(Δ[A023545(n+1)]))`
-/

namespace A253695.P9569596188819179414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A253698 (f1 (n + 1) - f1 n).toNat)

end

end A253695.P9569596188819179414

/-! ## A253695.P16017498488163460933

`A253698(Δ[A023545(n+1)])+n*A000038(n)`
-/

namespace A253695.P16017498488163460933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253698 (f1 (n + 1) - f1 n).toNat + (n : ℤ) * A000038 n

end

end A253695.P16017498488163460933

/-! ## A253695.P164592434421794407

`A253698(Δ[A023545(n+1)])+A007814(2*n+1)`
-/

namespace A253695.P164592434421794407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253698 (f1 (n + 1) - f1 n).toNat + A007814 (2 * n + 1)

end

end A253695.P164592434421794407

/-! ## A253695.P11407953670694418710

`A000035(2*n+1)*A253698(Δ[A023545(n+1)])`
-/

namespace A253695.P11407953670694418710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (2 * n + 1) * A253698 (f1 (n + 1) - f1 n).toNat

end

end A253695.P11407953670694418710

/-!
# A253696: Number of (n+1)X(6+1) 0..1 arrays with every 2X2 subblock ne-sw antidiagonal difference unequal to its neighbors horizontally and nw+se diagonal sum unequal to its neighbors vertically.

The programs for A253696, there is no canonical definition to state claims against.
-/

/-! ## A253696.P16057014813358463502

`A253698((n+4)²-∑[n+1]+1)`
-/

namespace A253696.P16057014813358463502
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253698 (((n + 4) ^ 2 : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + 1).toNat

end

end A253696.P16057014813358463502

/-! ## A253696.P6737135277529656423

`lcm(2, A253698(A052905(n+3)))`
-/

namespace A253696.P6737135277529656423
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A253698 (A052905 (n + 3)).toNat)

end

end A253696.P6737135277529656423

/-! ## A253696.P1729833309393038214

`A000034(2*n)*A253698(A052905(n+3))`
-/

namespace A253696.P1729833309393038214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (2 * n) * A253698 (A052905 (n + 3)).toNat

end

end A253696.P1729833309393038214

/-! ## A253696.P413384018533191305

`A001511(2*n+1)*A253698(A052905(n+3))`
-/

namespace A253696.P413384018533191305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (2 * n + 1) * A253698 (A052905 (n + 3)).toNat

end

end A253696.P413384018533191305

/-! ## A253696.P13174307621948857465

`A253698(A052905(n+3))%A004282(55*n+7)`
-/

namespace A253696.P13174307621948857465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A253698 (A052905 (n + 3)).toNat) (A004282 (55 * n + 7))

end

end A253696.P13174307621948857465

/-!
# A253697: Number of (n+1)X(7+1) 0..1 arrays with every 2X2 subblock ne-sw antidiagonal difference unequal to its neighbors horizontally and nw+se diagonal sum unequal to its neighbors vertically.

The programs for A253697, there is no canonical definition to state claims against.
-/

/-! ## A253697.P2445559152314636848

`A253698(A055999(n+4))`
-/

namespace A253697.P2445559152314636848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253698 (A055999 (n + 4)).toNat

end

end A253697.P2445559152314636848

/-! ## A253697.P6177106024669648859

`A253698(Δ[A026054(n+4)])`
-/

namespace A253697.P6177106024669648859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026054 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253698 (f1 (n + 1) - f1 n).toNat

end

end A253697.P6177106024669648859

/-! ## A253697.P4920192230387181823

`A253698(A056000(n+3)+4)`
-/

namespace A253697.P4920192230387181823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253698 (A056000 (n + 3) + 4).toNat

end

end A253697.P4920192230387181823

/-! ## A253697.P14787540235649519747

`A253698(A000124(n+7)-7)`
-/

namespace A253697.P14787540235649519747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253698 (A000124 (n + 7) - 7).toNat

end

end A253697.P14787540235649519747

/-! ## A253697.P11288042432257048656

`A253698(A161680(n+7)+n+1)`
-/

namespace A253697.P11288042432257048656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253698 (A161680 (n + 7) + (n + 1 : ℤ)).toNat

end

end A253697.P11288042432257048656

/-!
# A253698: T(n,k)=Number of (n+1)X(k+1) 0..1 arrays with every 2X2 subblock ne-sw antidiagonal difference unequal to its neighbors horizontally and nw+se diagonal sum unequal to its neighbors vertically.

The programs for A253698, there is no canonical definition to state claims against.
-/

/-! ## A253698.P2373820678970975159

`A185769(n+1)-A129551(A144436(n+1))`
-/

namespace A253698.P2373820678970975159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185769 (n + 1) - A129551 (A144436 (n + 1)).toNat

end

end A253698.P2373820678970975159

/-! ## A253698.P18133056605063339115

`A185769(n+1)-A129551(A286899(n+1))`
-/

namespace A253698.P18133056605063339115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185769 (n + 1) - A129551 (A286899 (n + 1)).toNat

end

end A253698.P18133056605063339115

/-! ## A253698.P4624559481590147133

`A185769(n+1)-A277256(A166979(n+1))`
-/

namespace A253698.P4624559481590147133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185769 (n + 1) - A277256 (A166979 (n + 1)).toNat

end

end A253698.P4624559481590147133

/-!
# A253699: Number of (2+1)X(n+1) 0..1 arrays with every 2X2 subblock ne-sw antidiagonal difference unequal to its neighbors horizontally and nw+se diagonal sum unequal to its neighbors vertically.

The programs for A253699, there is no canonical definition to state claims against.
-/

/-! ## A253699.P16230251625810001430

`A253698(∑[n+1]+2)`
-/

namespace A253699.P16230251625810001430
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253698 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A253699.P16230251625810001430

/-! ## A253699.P10611333269801851015

`record[A253698(n+2)/A336574(n)]`
-/

namespace A253699.P10611333269801851015
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A253698 (n + 2) : ℚ) / (A336574 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253699.P10611333269801851015

/-! ## A253699.P15781170594085465511

`record[gcd(A002262(n), A253698(n+2))]`
-/

namespace A253699.P15781170594085465511
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A253698 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253699.P15781170594085465511

/-! ## A253699.P8665030531750284934

`record[A253698(n+2)/A193702(n+1)]`
-/

namespace A253699.P8665030531750284934
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A253698 (n + 2) : ℚ) / (A193702 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253699.P8665030531750284934

/-! ## A253699.P8168832651496484872

`record[A253698(n+2)/A204201(n+1)]`
-/

namespace A253699.P8168832651496484872
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A253698 (n + 2) : ℚ) / (A204201 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253699.P8168832651496484872

