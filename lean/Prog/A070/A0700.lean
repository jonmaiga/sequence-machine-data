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
import Seq.B000.C014
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
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C012
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
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A070000: Let B(n) denote the number of distinct norms <=n in the square lattice and let B_3(n) denote the number of distinct norms <=n in the hexagonal lattice; sequence gives B(n) - B3(n).

The programs for A070000, there is no canonical definition to state claims against.
-/

/-! ## A070000.P14931951727451545159

`A005087(A157725(n)-A181391(n+1))`
-/

namespace A070000.P14931951727451545159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005087 (A157725 n - A181391 (n + 1)).toNat

end

end A070000.P14931951727451545159

/-! ## A070000.P5274354462215656357

`A193238(xor(A028242(n), A131822(n+1)))`
-/

namespace A070000.P5274354462215656357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193238 (Int.xor (A028242 n) (A131822 (n + 1))).toNat

end

end A070000.P5274354462215656357

/-!
# A070002: Numbers k such that phi(P(k)) - P(phi(k)) = 1, where P(k) is the largest prime factor of k.

The programs for A070002, there is no canonical definition to state claims against.
-/

/-! ## A070002.P4209259143875481023

`eq[1, A070812(n+3)]+3`
-/

namespace A070002.P4209259143875481023
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070812 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 3

end

end A070002.P4209259143875481023

/-! ## A070002.P12294418058199611748

`A009005(eq[1, A070812(n+3)])`
-/

namespace A070002.P12294418058199611748
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070812 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009005 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A070002.P12294418058199611748

/-! ## A070002.P16364682763099857058

`∩[A102067(n+1), A347242(n+1)]`
-/

namespace A070002.P16364682763099857058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102067 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347242 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A070002.P16364682763099857058

/-!
# A070003: Numbers divisible by the square of their largest prime factor.

The programs for A070003, the canonical program `A070003.P8914371543528997748` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070003 has offset 1).

The definition of A070003 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A070003.P11817911166620873534

`∪[A080366(n+1), A388306(n+1)]`
-/

namespace A070003.P11817911166620873534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080366 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388306 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A070003.P11817911166620873534

namespace A070003

/-- `∪[A080366(n+1), A388306(n+1)]` -/
def P11817911166620873534.Spec : Prop :=
  ∀ n, (P11817911166620873534.a n : ℤ) = A070003 (n + 1)

end A070003

/-! ## A070003.P11832235193451278046

`∪[A080366(n+1), A389145(n+1)]`
-/

namespace A070003.P11832235193451278046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080366 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389145 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A070003.P11832235193451278046

namespace A070003

/-- `∪[A080366(n+1), A389145(n+1)]` -/
def P11832235193451278046.Spec : Prop :=
  ∀ n, (P11832235193451278046.a n : ℤ) = A070003 (n + 1)

end A070003

/-! ## A070003.P8914371543528997748

`∪[A195212(n+1), A354561(n+1)]`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A070003

/-- `∪[A195212(n+1), A354561(n+1)]` -/
def P8914371543528997748.Spec : Prop :=
  ∀ n, (P8914371543528997748.a n : ℤ) = A070003 (n + 1)

theorem P8914371543528997748.correct : P8914371543528997748.Spec := by
  intro n
  simp only [A070003, Nat.add_sub_cancel]

end A070003

/-! ## A070003.P8362047333839945909

`∪[A166402(n+1), A388306(n+1)]`
-/

namespace A070003.P8362047333839945909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166402 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388306 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A070003.P8362047333839945909

namespace A070003

/-- `∪[A166402(n+1), A388306(n+1)]` -/
def P8362047333839945909.Spec : Prop :=
  ∀ n, (P8362047333839945909.a n : ℤ) = A070003 (n + 1)

end A070003

/-! ## A070003.P6813989347390901237

`∪[A195212(n+1), A388306(n+1)]`
-/

namespace A070003.P6813989347390901237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195212 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388306 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A070003.P6813989347390901237

namespace A070003

/-- `∪[A195212(n+1), A388306(n+1)]` -/
def P6813989347390901237.Spec : Prop :=
  ∀ n, (P6813989347390901237.a n : ℤ) = A070003 (n + 1)

end A070003

/-! ## A070003.P12217605666258421062

`∪[A371013(n+1), A388306(n+1)]`
-/

namespace A070003.P12217605666258421062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371013 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388306 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A070003.P12217605666258421062

namespace A070003

/-- `∪[A371013(n+1), A388306(n+1)]` -/
def P12217605666258421062.Spec : Prop :=
  ∀ n, (P12217605666258421062.a n : ℤ) = A070003 (n + 1)

end A070003

/-! ## A070003.P5380716978686096626

`filter[A013929(n+1), A319988(#)]`
-/

namespace A070003.P5380716978686096626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013929 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A319988 (f1 j).toNat = 1) n)

end

end A070003.P5380716978686096626

namespace A070003

/-- `filter[A013929(n+1), A319988(#)]` -/
def P5380716978686096626.Spec : Prop :=
  ∀ n, P5380716978686096626.a n = A070003 (n + 1)

end A070003

/-! ## A070003.P17845341147029348130

`filter[A057109(n+1), A319988(#)]`
-/

namespace A070003.P17845341147029348130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057109 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A319988 (f1 j).toNat = 1) n)

end

end A070003.P17845341147029348130

namespace A070003

/-- `filter[A057109(n+1), A319988(#)]` -/
def P17845341147029348130.Spec : Prop :=
  ∀ n, P17845341147029348130.a n = A070003 (n + 1)

end A070003

/-! ## A070003.P9981855854236229302

`filter[A122145(n+1), A319988(#)]`
-/

namespace A070003.P9981855854236229302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122145 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A319988 (f1 j).toNat = 1) n)

end

end A070003.P9981855854236229302

namespace A070003

/-- `filter[A122145(n+1), A319988(#)]` -/
def P9981855854236229302.Spec : Prop :=
  ∀ n, P9981855854236229302.a n = A070003 (n + 1)

end A070003

/-! ## A070003.P2346389960408591839

`filter[A388654(n+1), A319988(#)]`
-/

namespace A070003.P2346389960408591839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388654 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A319988 (f1 j).toNat = 1) n)

end

end A070003.P2346389960408591839

namespace A070003

/-- `filter[A388654(n+1), A319988(#)]` -/
def P2346389960408591839.Spec : Prop :=
  ∀ n, P2346389960408591839.a n = A070003 (n + 1)

end A070003

/-! ## A070003.P3143862922189242747

`eq[1, A319988(n+1)]+1`
-/

namespace A070003.P3143862922189242747
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319988 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A070003.P3143862922189242747

namespace A070003

/-- `eq[1, A319988(n+1)]+1` -/
def P3143862922189242747.Spec : Prop :=
  ∀ n, (P3143862922189242747.a n : ℤ) = A070003 (n + 1)

end A070003

/-! ## A070003.P7282531739540440621

`eq[A006530(A000010(n+2)), A006530(n+2)]+2`
-/

namespace A070003.P7282531739540440621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A000010 (n + 2)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2

end

end A070003.P7282531739540440621

namespace A070003

/-- `eq[A006530(A000010(n+2)), A006530(n+2)]+2` -/
def P7282531739540440621.Spec : Prop :=
  ∀ n, (P7282531739540440621.a n : ℤ) = A070003 (n + 1)

end A070003

/-! ## A070003.P9853135672705166685

`filter[A048098(n+1), A319988(#)]`
-/

namespace A070003.P9853135672705166685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048098 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A319988 (f1 j).toNat = 1) n)

end

end A070003.P9853135672705166685

namespace A070003

/-- `filter[A048098(n+1), A319988(#)]` -/
def P9853135672705166685.Spec : Prop :=
  ∀ n, P9853135672705166685.a n = A070003 (n + 1)

end A070003

/-! ## A070003.P4599230246880661981

`filter[A387941(n+1), A319988(#)]`
-/

namespace A070003.P4599230246880661981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387941 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A319988 (f1 j).toNat = 1) n)

end

end A070003.P4599230246880661981

namespace A070003

/-- `filter[A387941(n+1), A319988(#)]` -/
def P4599230246880661981.Spec : Prop :=
  ∀ n, P4599230246880661981.a n = A070003 (n + 1)

end A070003

/-! ## A070003.P3854477836884037634

`filter[A269131(n+1), A319988(#)]`
-/

namespace A070003.P3854477836884037634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269131 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A319988 (f1 j).toNat = 1) n)

end

end A070003.P3854477836884037634

namespace A070003

/-- `filter[A269131(n+1), A319988(#)]` -/
def P3854477836884037634.Spec : Prop :=
  ∀ n, P3854477836884037634.a n = A070003 (n + 1)

end A070003

/-! ## A070003.P11389940713523579920

`filter[A082377(n+1), A319988(#)]`
-/

namespace A070003.P11389940713523579920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082377 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A319988 (f1 j).toNat = 1) n)

end

end A070003.P11389940713523579920

namespace A070003

/-- `filter[A082377(n+1), A319988(#)]` -/
def P11389940713523579920.Spec : Prop :=
  ∀ n, P11389940713523579920.a n = A070003 (n + 1)

end A070003

/-! ## A070003.P2092783481500432812

`filter[A162966(n+1), A319988(#)]`
-/

namespace A070003.P2092783481500432812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162966 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A319988 (f1 j).toNat = 1) n)

end

end A070003.P2092783481500432812

namespace A070003

/-- `filter[A162966(n+1), A319988(#)]` -/
def P2092783481500432812.Spec : Prop :=
  ∀ n, P2092783481500432812.a n = A070003 (n + 1)

end A070003

/-! ## A070003.P15520988182461680759

`filter[A354360(n+1), A319988(#)]`
-/

namespace A070003.P15520988182461680759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354360 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A319988 (f1 j).toNat = 1) n)

end

end A070003.P15520988182461680759

namespace A070003

/-- `filter[A354360(n+1), A319988(#)]` -/
def P15520988182461680759.Spec : Prop :=
  ∀ n, P15520988182461680759.a n = A070003 (n + 1)

end A070003

/-! ## A070003.P11904458052021134307

`filter[A389462(n+1), A319988(#)]`
-/

namespace A070003.P11904458052021134307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389462 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A319988 (f1 j).toNat = 1) n)

end

end A070003.P11904458052021134307

namespace A070003

/-- `filter[A389462(n+1), A319988(#)]` -/
def P11904458052021134307.Spec : Prop :=
  ∀ n, P11904458052021134307.a n = A070003 (n + 1)

end A070003

/-! ## A070003.P5113572544249088138

`filter[A363597(n+1), A319988(#)]`
-/

namespace A070003.P5113572544249088138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363597 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A319988 (f1 j).toNat = 1) n)

end

end A070003.P5113572544249088138

namespace A070003

/-- `filter[A363597(n+1), A319988(#)]` -/
def P5113572544249088138.Spec : Prop :=
  ∀ n, P5113572544249088138.a n = A070003 (n + 1)

end A070003

/-!
# A070004: Numbers of the form 5*2^n or 5*3*2^n; a(n) = 5*A029744(n).

The programs for A070004, the canonical program `A070004.P1855053541036505447` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070004 has offset 1).

The definition of A070004 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A070004.P1855053541036505447

`5*A029744(n+1)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A070004

/-- `5*A029744(n+1)` -/
def P1855053541036505447.Spec : Prop :=
  ∀ n, P1855053541036505447.a n = A070004 (n + 1)

theorem P1855053541036505447.correct : P1855053541036505447.Spec := by
  intro n
  simp only [A070004, Nat.add_sub_cancel]

end A070004

/-! ## A070004.P3841795021586437320

`ogf((5+10x+5x^2)/(1-2x^2))`
-/

namespace A070004.P3841795021586437320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [5, 10, 5] [1, 0, -2] n

end

end A070004.P3841795021586437320

namespace A070004

/-- `ogf((5+10x+5x^2)/(1-2x^2))` -/
def P3841795021586437320.Spec : Prop :=
  ∀ n, P3841795021586437320.a n = A070004 (n + 1)

end A070004

/-! ## A070004.P8397954784183147974

`2*a(n-2)` with `a(0)=5, a(1)=10, a(2)=15`
-/

namespace A070004.P8397954784183147974
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [5, 10, 15] fun n a =>
  2 * a (n - 2)

end

end A070004.P8397954784183147974

namespace A070004

/-- `2*a(n-2)` -/
def P8397954784183147974.Spec : Prop :=
  ∀ n, (P8397954784183147974.a n : ℤ) = A070004 (n + 1)

end A070004

/-! ## A070004.P2810693843725498653

`∑[∏[2/a(n-1)]]` with `a(0)=5, a(1)=1, a(2)=1, a(3)=1`
-/

namespace A070004.P2810693843725498653
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.rec [5, 1, 1, 1] fun n f2 =>
  2 / f2 (n - 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A070004.P2810693843725498653

namespace A070004

/-- `∑[∏[2/a(n-1)]]` -/
def P2810693843725498653.Spec : Prop :=
  ∀ n, P2810693843725498653.a n = (A070004 (n + 1) : ℚ)

end A070004

/-! ## A070004.P11010277555196583692

`∑[∏[C(2, a(n-1))]]` with `a(0)=5, a(1)=1, a(2)=1, a(3)=1`
-/

namespace A070004.P11010277555196583692
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [5, 1, 1, 1] fun n f2 =>
  Nat.choose 2 (f2 (n - 1))

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A070004.P11010277555196583692

namespace A070004

/-- `∑[∏[C(2, a(n-1))]]` -/
def P11010277555196583692.Spec : Prop :=
  ∀ n, (P11010277555196583692.a n : ℤ) = A070004 (n + 1)

end A070004

/-! ## A070004.P15996410218359124716

`a(n-2)+a(n-2)` with `a(0)=5, a(1)=10, a(2)=15`
-/

namespace A070004.P15996410218359124716
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [5, 10, 15] fun n a =>
  a (n - 2) + a (n - 2)

end

end A070004.P15996410218359124716

namespace A070004

/-- `a(n-2)+a(n-2)` -/
def P15996410218359124716.Spec : Prop :=
  ∀ n, (P15996410218359124716.a n : ℤ) = A070004 (n + 1)

end A070004

/-! ## A070004.P10965167767969808340

`5*(∑[A158780(n)]+1)`
-/

namespace A070004.P10965167767969808340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158780 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A070004.P10965167767969808340

namespace A070004

/-- `5*(∑[A158780(n)]+1)` -/
def P10965167767969808340.Spec : Prop :=
  ∀ n, P10965167767969808340.a n = A070004 (n + 1)

end A070004

/-! ## A070004.P4324993748675591678

`record[lcm(5, A029747(n+1))]`
-/

namespace A070004.P4324993748675591678
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 5 (A029747 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A070004.P4324993748675591678

namespace A070004

/-- `record[lcm(5, A029747(n+1))]` -/
def P4324993748675591678.Spec : Prop :=
  ∀ n, (P4324993748675591678.a n : ℤ) = A070004 (n + 1)

end A070004

/-! ## A070004.P9490254274230262996

`5/3*A354785(n+1)`
-/

namespace A070004.P9490254274230262996
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 : ℚ) / 3 * (A354785 (n + 1) : ℚ)

end

end A070004.P9490254274230262996

namespace A070004

/-- `5/3*A354785(n+1)` -/
def P9490254274230262996.Spec : Prop :=
  ∀ n, P9490254274230262996.a n = (A070004 (n + 1) : ℚ)

end A070004

/-! ## A070004.P2502567266171067922

`A010721(n)*A074323(n)`
-/

namespace A070004.P2502567266171067922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010721 n * A074323 n

end

end A070004.P2502567266171067922

namespace A070004

/-- `A010721(n)*A074323(n)` -/
def P2502567266171067922.Spec : Prop :=
  ∀ n, P2502567266171067922.a n = A070004 (n + 1)

end A070004

/-! ## A070004.P6349777067014947348

`lcm(A010721(n), A029744(n+1))`
-/

namespace A070004.P6349777067014947348
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A010721 n) (A029744 (n + 1))

end

end A070004.P6349777067014947348

namespace A070004

/-- `lcm(A010721(n), A029744(n+1))` -/
def P6349777067014947348.Spec : Prop :=
  ∀ n, (P6349777067014947348.a n : ℤ) = A070004 (n + 1)

end A070004

/-! ## A070004.P11062757343416303759

`A029744(n+1)+A354785(n+1)+A029744(n+1)`
-/

namespace A070004.P11062757343416303759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029744 (n + 1) + (A354785 (n + 1) + A029744 (n + 1))

end

end A070004.P11062757343416303759

namespace A070004

/-- `A029744(n+1)+A354785(n+1)+A029744(n+1)` -/
def P11062757343416303759.Spec : Prop :=
  ∀ n, P11062757343416303759.a n = A070004 (n + 1)

end A070004

/-! ## A070004.P2199593589668862998

`A029744(n+1)+A094958(n+2)+A029746(n+1)`
-/

namespace A070004.P2199593589668862998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029744 (n + 1) + (A094958 (n + 2) + A029746 (n + 1))

end

end A070004.P2199593589668862998

namespace A070004

/-- `A029744(n+1)+A094958(n+2)+A029746(n+1)` -/
def P2199593589668862998.Spec : Prop :=
  ∀ n, P2199593589668862998.a n = A070004 (n + 1)

end A070004

/-! ## A070004.P4624484058616162568

`∪[A020714(n), A110286(n)]`
-/

namespace A070004.P4624484058616162568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020714 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110286 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A070004.P4624484058616162568

namespace A070004

/-- `∪[A020714(n), A110286(n)]` -/
def P4624484058616162568.Spec : Prop :=
  ∀ n, (P4624484058616162568.a n : ℤ) = A070004 (n + 1)

end A070004

/-! ## A070004.P8843111098086362907

`A089693(n+3)/2`
-/

namespace A070004.P8843111098086362907
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A089693 (n + 3) : ℚ) / 2

end

end A070004.P8843111098086362907

namespace A070004

/-- `A089693(n+3)/2` -/
def P8843111098086362907.Spec : Prop :=
  ∀ n, P8843111098086362907.a n = (A070004 (n + 1) : ℚ)

end A070004

/-! ## A070004.P651167365242448737

`record[5*A220347(n+1)]`
-/

namespace A070004.P651167365242448737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A220347 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A070004.P651167365242448737

namespace A070004

/-- `record[5*A220347(n+1)]` -/
def P651167365242448737.Spec : Prop :=
  ∀ n, P651167365242448737.a n = A070004 (n + 1)

end A070004

/-! ## A070004.P7423413598888960119

`record[5*A257797(n+1)]`
-/

namespace A070004.P7423413598888960119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A257797 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A070004.P7423413598888960119

namespace A070004

/-- `record[5*A257797(n+1)]` -/
def P7423413598888960119.Spec : Prop :=
  ∀ n, P7423413598888960119.a n = A070004 (n + 1)

end A070004

/-! ## A070004.P8203998435022188297

`record[5*A130128(n+1)]`
-/

namespace A070004.P8203998435022188297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A130128 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A070004.P8203998435022188297

namespace A070004

/-- `record[5*A130128(n+1)]` -/
def P8203998435022188297.Spec : Prop :=
  ∀ n, P8203998435022188297.a n = A070004 (n + 1)

end A070004

/-! ## A070004.P4953076895182695554

`∩[A003401(n+1), A080193(n+1)]`
-/

namespace A070004.P4953076895182695554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003401 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080193 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A070004.P4953076895182695554

namespace A070004

/-- `∩[A003401(n+1), A080193(n+1)]` -/
def P4953076895182695554.Spec : Prop :=
  ∀ n, (P4953076895182695554.a n : ℤ) = A070004 (n + 1)

end A070004

/-! ## A070004.P15475101286263780770

`∩[A051916(n+1), A080193(n+1)]`
-/

namespace A070004.P15475101286263780770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051916 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080193 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A070004.P15475101286263780770

namespace A070004

/-- `∩[A051916(n+1), A080193(n+1)]` -/
def P15475101286263780770.Spec : Prop :=
  ∀ n, (P15475101286263780770.a n : ℤ) = A070004 (n + 1)

end A070004

/-!
# A070005: Arithmetic mean of prime factors of n is an integer and n is neither a prime nor power of a prime.

The programs for A070005, the canonical program `A070005.P18332197979937916789` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070005 has offset 1).

The definition of A070005 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5428 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A070005.P18332197979937916789

`∩[A070537(n+1), A078174(n+1)]`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A070005

/-- `∩[A070537(n+1), A078174(n+1)]` -/
def P18332197979937916789.Spec : Prop :=
  ∀ n, (P18332197979937916789.a n : ℤ) = A070005 (n + 1)

theorem P18332197979937916789.correct : P18332197979937916789.Spec := by
  intro n
  simp only [A070005, Nat.add_sub_cancel]

end A070005

/-! ## A070005.P13895389268964460795

`∩[A075658(n+1), A078174(n+1)]`
-/

namespace A070005.P13895389268964460795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075658 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078174 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A070005.P13895389268964460795

namespace A070005

/-- `∩[A075658(n+1), A078174(n+1)]` -/
def P13895389268964460795.Spec : Prop :=
  ∀ n, (P13895389268964460795.a n : ℤ) = A070005 (n + 1)

end A070005

/-! ## A070005.P16513472893434362372

`∩[A078174(n+1), A346608(n+1)]`
-/

namespace A070005.P16513472893434362372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078174 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346608 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A070005.P16513472893434362372

namespace A070005

/-- `∩[A078174(n+1), A346608(n+1)]` -/
def P16513472893434362372.Spec : Prop :=
  ∀ n, (P16513472893434362372.a n : ℤ) = A070005 (n + 1)

end A070005

/-! ## A070005.P2518567979283885240

`∩[A078174(n+1), A081062(n+1)]`
-/

namespace A070005.P2518567979283885240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078174 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081062 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A070005.P2518567979283885240

namespace A070005

/-- `∩[A078174(n+1), A081062(n+1)]` -/
def P2518567979283885240.Spec : Prop :=
  ∀ n, (P2518567979283885240.a n : ℤ) = A070005 (n + 1)

end A070005

/-! ## A070005.P13957467023920742406

`∩[A024619(n+1), A078174(n+1)]`
-/

namespace A070005.P13957467023920742406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024619 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078174 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A070005.P13957467023920742406

namespace A070005

/-- `∩[A024619(n+1), A078174(n+1)]` -/
def P13957467023920742406.Spec : Prop :=
  ∀ n, (P13957467023920742406.a n : ℤ) = A070005 (n + 1)

end A070005

/-! ## A070005.P11713050390670089613

`∩[A078174(n+1), A361102(n+1)]`
-/

namespace A070005.P11713050390670089613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078174 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361102 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A070005.P11713050390670089613

namespace A070005

/-- `∩[A078174(n+1), A361102(n+1)]` -/
def P11713050390670089613.Spec : Prop :=
  ∀ n, (P11713050390670089613.a n : ℤ) = A070005 (n + 1)

end A070005

/-! ## A070005.P13823246045687484655

`filter[A078174(n+1), A143731(#)]`
-/

namespace A070005.P13823246045687484655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078174 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A143731 (f1 j).toNat = 1) n)

end

end A070005.P13823246045687484655

namespace A070005

/-- `filter[A078174(n+1), A143731(#)]` -/
def P13823246045687484655.Spec : Prop :=
  ∀ n, P13823246045687484655.a n = A070005 (n + 1)

end A070005

/-! ## A070005.P17339569863315758223

`eq[A014963(n+2), A247462(n+1)]+2`
-/

namespace A070005.P17339569863315758223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247462 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2

end

end A070005.P17339569863315758223

namespace A070005

/-- `eq[A014963(n+2), A247462(n+1)]+2` -/
def P17339569863315758223.Spec : Prop :=
  ∀ n, (P17339569863315758223.a n : ℤ) = A070005 (n + 1)

end A070005

/-!
# A070006: Composite numbers that are not a prime power and whose distinct prime divisors' arithmetic mean is a prime.

The programs for A070006, there is no canonical definition to state claims against.
-/

/-! ## A070006.P4180273154893966830

`∩[2*n+1, A114985(n+1)]`
-/

namespace A070006.P4180273154893966830
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114985 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A070006.P4180273154893966830

/-! ## A070006.P13204063537104380878

`record[A000265(A114985(n+2))]`
-/

namespace A070006.P13204063537104380878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A114985 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A070006.P13204063537104380878

/-! ## A070006.P13726141397060171602

`filter[A114985(n+1), A000035(#)]`
-/

namespace A070006.P13726141397060171602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114985 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A070006.P13726141397060171602

/-! ## A070006.P10914858550248658619

`filter[A114985(n+1), A266070(#)]`
-/

namespace A070006.P10914858550248658619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114985 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266070 (f1 j).toNat = 1) n)

end

end A070006.P10914858550248658619

/-! ## A070006.P8367213085515643394

`filter[A114985(n+1), A266246(#)]`
-/

namespace A070006.P8367213085515643394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114985 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266246 (f1 j).toNat = 1) n)

end

end A070006.P8367213085515643394

/-!
# A070008: Arithmetic mean of distinct primes dividing n is a power of 2 (powers of 2 are not left out).

The programs for A070008, the canonical program `A070008.P12707018012675743666` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070008 has offset 1).

The definition of A070008 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 103 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A070008.P12707018012675743666

`record[A078174(n+1)/A087207(A351847(n+1))]`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A070008

/-- `record[A078174(n+1)/A087207(A351847(n+1))]` -/
def P12707018012675743666.Spec : Prop :=
  ∀ n, P12707018012675743666.a n = (A070008 (n + 1) : ℚ)

end A070008

/-!
# A070009: Least number m such that the arithmetic mean of the distinct prime divisors of m is equal to 2^n.

The programs for A070009, there is no canonical definition to state claims against.
-/

/-! ## A070009.P11597489602704060422

`A082572(2^(n+1))`
-/

namespace A070009.P11597489602704060422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082572 (2 ^ (n + 1))

end

end A070009.P11597489602704060422

/-! ## A070009.P8493380990046056931

`A266618(2^(n+1))`
-/

namespace A070009.P8493380990046056931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266618 (2 ^ (n + 1))

end

end A070009.P8493380990046056931

/-! ## A070009.P1237170683531498909

`A005730(A193226(n+2))`
-/

namespace A070009.P1237170683531498909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005730 (A193226 (n + 2)).toNat

end

end A070009.P1237170683531498909

/-! ## A070009.P2862828396254213962

`A057815(A194230(n+2))`
-/

namespace A070009.P2862828396254213962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057815 (A194230 (n + 2)).toNat

end

end A070009.P2862828396254213962

/-! ## A070009.P12477996173909834453

`A336319(2*A193226(n+2))`
-/

namespace A070009.P12477996173909834453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336319 (2 * A193226 (n + 2)).toNat

end

end A070009.P12477996173909834453

/-!
# A070010: GCD of consecutive values of sum-of-proper divisors.

The programs for A070010, the canonical program `A070010.P5053100523494625955` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070010 has offset 1).

The definition of A070010 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A070010.P5053100523494625955

`gcd(A001065(n+1), A001065(n+2))`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A070010

/-- `gcd(A001065(n+1), A001065(n+2))` -/
def P5053100523494625955.Spec : Prop :=
  ∀ n, (P5053100523494625955.a n : ℤ) = A070010 (n + 1)

theorem P5053100523494625955.correct : P5053100523494625955.Spec := by
  intro n
  simp only [A070010, Nat.add_sub_cancel]

end A070010

/-! ## A070010.P16560855416701728710

`gcd(A053246(n+1), A173455(n+1))`
-/

namespace A070010.P16560855416701728710
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A053246 (n + 1)) (A173455 (n + 1))

end

end A070010.P16560855416701728710

namespace A070010

/-- `gcd(A053246(n+1), A173455(n+1))` -/
def P16560855416701728710.Spec : Prop :=
  ∀ n, (P16560855416701728710.a n : ℤ) = A070010 (n + 1)

end A070010

/-! ## A070010.P7004378978142767322

`gcd(Δ[A091818(n+1)], A091818(n+1))/2`
-/

namespace A070010.P7004378978142767322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091818 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.gcd (f1 (n + 1) - f1 n) (A091818 (n + 1)) : ℚ) / 2

end

end A070010.P7004378978142767322

namespace A070010

/-- `gcd(Δ[A091818(n+1)], A091818(n+1))/2` -/
def P7004378978142767322.Spec : Prop :=
  ∀ n, P7004378978142767322.a n = (A070010 (n + 1) : ℚ)

end A070010

/-! ## A070010.P16144192614938610959

`gcd(n+1-A000203(n+1), n+2-A000203(n+2))`
-/

namespace A070010.P16144192614938610959
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((n + 1 : ℤ) - A000203 (n + 1)) ((n + 2 : ℤ) - A000203 (n + 2))

end

end A070010.P16144192614938610959

namespace A070010

/-- `gcd(n+1-A000203(n+1), n+2-A000203(n+2))` -/
def P16144192614938610959.Spec : Prop :=
  ∀ n, (P16144192614938610959.a n : ℤ) = A070010 (n + 1)

end A070010

/-! ## A070010.P6138615000708257467

`gcd(∑{d}[n+1, #]-(n+1), Δ[∑{d}[n+1, #]-(n+1)])`
-/

namespace A070010.P6138615000708257467
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f3 n), d : ℕ) : ℤ) - (n + 1 : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) - (n + 1 : ℤ)) (f2 (n + 1) - f2 n)

end

end A070010.P6138615000708257467

namespace A070010

/-- `gcd(∑{d}[n+1, #]-(n+1), Δ[∑{d}[n+1, #]-(n+1)])` -/
def P6138615000708257467.Spec : Prop :=
  ∀ n, (P6138615000708257467.a n : ℤ) = A070010 (n + 1)

end A070010

/-! ## A070010.P13724939394545514858

`gcd(∑{d}[n+1, #]-(n+1), A319699(2*(n+2)))`
-/

namespace A070010.P13724939394545514858
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) - (n + 1 : ℤ)) (A319699 (2 * (n + 2)))

end

end A070010.P13724939394545514858

namespace A070010

/-- `gcd(∑{d}[n+1, #]-(n+1), A319699(2*(n+2)))` -/
def P13724939394545514858.Spec : Prop :=
  ∀ n, (P13724939394545514858.a n : ℤ) = A070010 (n + 1)

end A070010

/-!
# A070011: Numbers n such that number of prime factors divided by the number of distinct prime factors is not an integer.

The programs for A070011, the canonical program `A070011.P608421611522145988` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070011 has offset 1).

The definition of A070011 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3095 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A070011.P608421611522145988

`lt[1, A088530(n+2)]+2`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A070011

/-- `lt[1, A088530(n+2)]+2` -/
def P608421611522145988.Spec : Prop :=
  ∀ n, (P608421611522145988.a n : ℤ) = A070011 (n + 1)

theorem P608421611522145988.correct : P608421611522145988.Spec := by
  intro n
  simp only [A070011, Nat.add_sub_cancel]

end A070011

/-! ## A070011.P9665174274369820672

`lt[A070012(n+2), A070014(n+2)]+2`
-/

namespace A070011.P9665174274369820672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070012 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070014 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 2

end

end A070011.P9665174274369820672

namespace A070011

/-- `lt[A070012(n+2), A070014(n+2)]+2` -/
def P9665174274369820672.Spec : Prop :=
  ∀ n, (P9665174274369820672.a n : ℤ) = A070011 (n + 1)

end A070011

/-! ## A070011.P5762150160490714268

`lt[A070012(n+2), A088529(n+2)]+2`
-/

namespace A070011.P5762150160490714268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070012 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088529 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 2

end

end A070011.P5762150160490714268

namespace A070011

/-- `lt[A070012(n+2), A088529(n+2)]+2` -/
def P5762150160490714268.Spec : Prop :=
  ∀ n, (P5762150160490714268.a n : ℤ) = A070011 (n + 1)

end A070011

/-! ## A070011.P15519646765620018366

`lt[A070013(n+2), A088529(n+2)]+2`
-/

namespace A070011.P15519646765620018366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070013 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088529 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 2

end

end A070011.P15519646765620018366

namespace A070011

/-- `lt[A070013(n+2), A088529(n+2)]+2` -/
def P15519646765620018366.Spec : Prop :=
  ∀ n, (P15519646765620018366.a n : ℤ) = A070011 (n + 1)

end A070011

/-! ## A070011.P3124366648503207154

`lt[A070014(n+2), A088529(n+2)]+2`
-/

namespace A070011.P3124366648503207154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070014 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088529 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 2

end

end A070011.P3124366648503207154

namespace A070011

/-- `lt[A070014(n+2), A088529(n+2)]+2` -/
def P3124366648503207154.Spec : Prop :=
  ∀ n, (P3124366648503207154.a n : ℤ) = A070011 (n + 1)

end A070011

/-! ## A070011.P1730708840804472661

`lt[1, A088530(A233583(n+1))]`
-/

namespace A070011.P1730708840804472661
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088530 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A070011.P1730708840804472661

namespace A070011

/-- `lt[1, A088530(A233583(n+1))]` -/
def P1730708840804472661.Spec : Prop :=
  ∀ n, (P1730708840804472661.a n : ℤ) = A070011 (n + 1)

end A070011

/-!
# A070012: Floor of number of prime factors of n divided by the number of n's distinct prime factors.

The programs for A070012, the canonical program `A070012.P12151128618151110766` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070012 has offset 2).

The definition of A070012 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, A001222, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A070012.P12151128618151110766

`floor(A001222(n+2)/A001221(n+2))`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A070012

/-- `floor(A001222(n+2)/A001221(n+2))` -/
def P12151128618151110766.Spec : Prop :=
  ∀ n, P12151128618151110766.a n = A070012 (n + 2)

theorem P12151128618151110766.correct : P12151128618151110766.Spec := by
  intro n
  simp only [A070012, Nat.add_sub_cancel]

end A070012

/-! ## A070012.P4746571667177688398

`floor(A088529(n+2)/A088530(n+2))`
-/

namespace A070012.P4746571667177688398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A088529 (n + 2) : ℚ) / (A088530 (n + 2) : ℚ)⌋

end

end A070012.P4746571667177688398

namespace A070012

/-- `floor(A088529(n+2)/A088530(n+2))` -/
def P4746571667177688398.Spec : Prop :=
  ∀ n, P4746571667177688398.a n = A070012 (n + 2)

end A070012

/-! ## A070012.P18339073307148716750

`floor(A001222(n+2)/A001222(A007947(n+2)))`
-/

namespace A070012.P18339073307148716750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A001222 (n + 2) : ℚ) / (A001222 (A007947 (n + 2)).toNat : ℚ)⌋

end

end A070012.P18339073307148716750

namespace A070012

/-- `floor(A001222(n+2)/A001222(A007947(n+2)))` -/
def P18339073307148716750.Spec : Prop :=
  ∀ n, P18339073307148716750.a n = A070012 (n + 2)

end A070012

/-! ## A070012.P3618495688706389987

`A003988(A289621(n+2))`
-/

namespace A070012.P3618495688706389987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003988 (A289621 (n + 2)).toNat

end

end A070012.P3618495688706389987

namespace A070012

/-- `A003988(A289621(n+2))` -/
def P3618495688706389987.Spec : Prop :=
  ∀ n, P3618495688706389987.a n = A070012 (n + 2)

end A070012

/-! ## A070012.P3788193376163206353

`val(A165835(n+2), A165835(A007947(n+2)))`
-/

namespace A070012.P3788193376163206353
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A165835 (n + 2)).toNat (A165835 (A007947 (n + 2)).toNat).toNat

end

end A070012.P3788193376163206353

namespace A070012

/-- `val(A165835(n+2), A165835(A007947(n+2)))` -/
def P3788193376163206353.Spec : Prop :=
  ∀ n, (P3788193376163206353.a n : ℤ) = A070012 (n + 2)

end A070012

/-! ## A070012.P18013973422305841993

`floor(A001222(n+2)/A001222(A034444(n+2)))`
-/

namespace A070012.P18013973422305841993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A001222 (n + 2) : ℚ) / (A001222 (A034444 (n + 2)).toNat : ℚ)⌋

end

end A070012.P18013973422305841993

namespace A070012

/-- `floor(A001222(n+2)/A001222(A034444(n+2)))` -/
def P18013973422305841993.Spec : Prop :=
  ∀ n, P18013973422305841993.a n = A070012 (n + 2)

end A070012

/-! ## A070012.P11622217689886581734

`A363943(A181819(n+2))`
-/

namespace A070012.P11622217689886581734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363943 (A181819 (n + 2)).toNat

end

end A070012.P11622217689886581734

namespace A070012

/-- `A363943(A181819(n+2))` -/
def P11622217689886581734.Spec : Prop :=
  ∀ n, P11622217689886581734.a n = A070012 (n + 2)

end A070012

/-! ## A070012.P10474429212296384918

`A360616(A304233(n+2))`
-/

namespace A070012.P10474429212296384918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360616 (A304233 (n + 2)).toNat

end

end A070012.P10474429212296384918

namespace A070012

/-- `A360616(A304233(n+2))` -/
def P10474429212296384918.Spec : Prop :=
  ∀ n, P10474429212296384918.a n = A070012 (n + 2)

end A070012

/-! ## A070012.P16220049014134409677

`A048620(A070013((n+2)²))`
-/

namespace A070012.P16220049014134409677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048620 (A070013 ((n + 2) ^ 2)).toNat

end

end A070012.P16220049014134409677

namespace A070012

/-- `A048620(A070013((n+2)²))` -/
def P16220049014134409677.Spec : Prop :=
  ∀ n, P16220049014134409677.a n = A070012 (n + 2)

end A070012

/-! ## A070012.P5704005973197003221

`A004526(A360460(n+2))`
-/

namespace A070012.P5704005973197003221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A360460 (n + 2)).toNat

end

end A070012.P5704005973197003221

namespace A070012

/-- `A004526(A360460(n+2))` -/
def P5704005973197003221.Spec : Prop :=
  ∀ n, P5704005973197003221.a n = A070012 (n + 2)

end A070012

/-!
# A070013: Number of prime factors of n divided by the number of n's distinct prime factors (rounded).

The programs for A070013, the canonical program `A070013.P15324547235740472700` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070013 has offset 2).

The definition of A070013 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, A001222, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A070013.P15324547235740472700

`round(A001222(n+2)/A001221(n+2))`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A070013

/-- `round(A001222(n+2)/A001221(n+2))` -/
def P15324547235740472700.Spec : Prop :=
  ∀ n, P15324547235740472700.a n = A070013 (n + 2)

theorem P15324547235740472700.correct : P15324547235740472700.Spec := by
  intro n
  simp only [A070013, Nat.add_sub_cancel]

end A070013

/-! ## A070013.P11818790007071803029

`A070012((n+2)²)-A070012(n+2)`
-/

namespace A070013.P11818790007071803029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070012 ((n + 2) ^ 2) - A070012 (n + 2)

end

end A070013.P11818790007071803029

namespace A070013

/-- `A070012((n+2)²)-A070012(n+2)` -/
def P11818790007071803029.Spec : Prop :=
  ∀ n, P11818790007071803029.a n = A070013 (n + 2)

end A070013

/-! ## A070013.P3085491303438211494

`ceil(A360460(n+2)/2)`
-/

namespace A070013.P3085491303438211494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A360460 (n + 2) : ℚ) / 2⌉

end

end A070013.P3085491303438211494

namespace A070013

/-- `ceil(A360460(n+2)/2)` -/
def P3085491303438211494.Spec : Prop :=
  ∀ n, P3085491303438211494.a n = A070013 (n + 2)

end A070013

/-! ## A070013.P9252224381458333377

`A000006(A360460(n+2))`
-/

namespace A070013.P9252224381458333377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000006 (A360460 (n + 2)).toNat

end

end A070013.P9252224381458333377

namespace A070013

/-- `A000006(A360460(n+2))` -/
def P9252224381458333377.Spec : Prop :=
  ∀ n, P9252224381458333377.a n = A070013 (n + 2)

end A070013

/-! ## A070013.P18360066656074961245

`A004526(A360460(n+2)+1)`
-/

namespace A070013.P18360066656074961245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A360460 (n + 2) + 1).toNat

end

end A070013.P18360066656074961245

namespace A070013

/-- `A004526(A360460(n+2)+1)` -/
def P18360066656074961245.Spec : Prop :=
  ∀ n, P18360066656074961245.a n = A070013 (n + 2)

end A070013

/-! ## A070013.P13835142916550856066

`A008619(A360460(n+2)-1)`
-/

namespace A070013.P13835142916550856066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A360460 (n + 2) - 1).toNat

end

end A070013.P13835142916550856066

namespace A070013

/-- `A008619(A360460(n+2)-1)` -/
def P13835142916550856066.Spec : Prop :=
  ∀ n, P13835142916550856066.a n = A070013 (n + 2)

end A070013

/-! ## A070013.P6837828079131372281

`A115384(A360460(n+2)-1)`
-/

namespace A070013.P6837828079131372281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115384 (A360460 (n + 2) - 1).toNat

end

end A070013.P6837828079131372281

namespace A070013

/-- `A115384(A360460(n+2)-1)` -/
def P6837828079131372281.Spec : Prop :=
  ∀ n, P6837828079131372281.a n = A070013 (n + 2)

end A070013

/-! ## A070013.P18087271212865863295

`A002265(2*(A360460(n+2)+1))`
-/

namespace A070013.P18087271212865863295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (2 * (A360460 (n + 2) + 1)).toNat

end

end A070013.P18087271212865863295

namespace A070013

/-- `A002265(2*(A360460(n+2)+1))` -/
def P18087271212865863295.Spec : Prop :=
  ∀ n, P18087271212865863295.a n = A070013 (n + 2)

end A070013

/-! ## A070013.P6276558709691136316

`A360460(n+2)-A070012(n+2)`
-/

namespace A070013.P6276558709691136316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360460 (n + 2) - A070012 (n + 2)

end

end A070013.P6276558709691136316

namespace A070013

/-- `A360460(n+2)-A070012(n+2)` -/
def P6276558709691136316.Spec : Prop :=
  ∀ n, P6276558709691136316.a n = A070013 (n + 2)

end A070013

/-! ## A070013.P4360014788259192146

`gcd(A070014(n+2), A335520(n+2))`
-/

namespace A070013.P4360014788259192146
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A070014 (n + 2)) (A335520 (n + 2))

end

end A070013.P4360014788259192146

namespace A070013

/-- `gcd(A070014(n+2), A335520(n+2))` -/
def P4360014788259192146.Spec : Prop :=
  ∀ n, (P4360014788259192146.a n : ℤ) = A070013 (n + 2)

end A070013

/-!
# A070014: Ceiling of number of prime factors of n divided by the number of n's distinct prime factors.

The programs for A070014, the canonical program `A070014.P8324150965808500768` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070014 has offset 2).

The definition of A070014 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, A001222, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A070014.P8324150965808500768

`ceil(A001222(n+2)/A001221(n+2))`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A070014

/-- `ceil(A001222(n+2)/A001221(n+2))` -/
def P8324150965808500768.Spec : Prop :=
  ∀ n, P8324150965808500768.a n = A070014 (n + 2)

theorem P8324150965808500768.correct : P8324150965808500768.Spec := by
  intro n
  simp only [A070014, Nat.add_sub_cancel]

end A070014

/-! ## A070014.P6154888524460315741

`ceil(A088529(n+2)/A088530(n+2))`
-/

namespace A070014.P6154888524460315741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A088529 (n + 2) : ℚ) / (A088530 (n + 2) : ℚ)⌉

end

end A070014.P6154888524460315741

namespace A070014

/-- `ceil(A088529(n+2)/A088530(n+2))` -/
def P6154888524460315741.Spec : Prop :=
  ∀ n, P6154888524460315741.a n = A070014 (n + 2)

end A070014

/-! ## A070014.P13618266649163237653

`ceil(A001222(n+2)/A001222(A007947(n+2)))`
-/

namespace A070014.P13618266649163237653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A001222 (n + 2) : ℚ) / (A001222 (A007947 (n + 2)).toNat : ℚ)⌉

end

end A070014.P13618266649163237653

namespace A070014

/-- `ceil(A001222(n+2)/A001222(A007947(n+2)))` -/
def P13618266649163237653.Spec : Prop :=
  ∀ n, P13618266649163237653.a n = A070014 (n + 2)

end A070014

/-! ## A070014.P4899157899337983928

`A010766(A289621(n+2))`
-/

namespace A070014.P4899157899337983928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010766 (A289621 (n + 2)).toNat

end

end A070014.P4899157899337983928

namespace A070014

/-- `A010766(A289621(n+2))` -/
def P4899157899337983928.Spec : Prop :=
  ∀ n, P4899157899337983928.a n = A070014 (n + 2)

end A070014

/-! ## A070014.P9353138597420401402

`A363944(A181819(n+2))`
-/

namespace A070014.P9353138597420401402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363944 (A181819 (n + 2)).toNat

end

end A070014.P9353138597420401402

namespace A070014

/-- `A363944(A181819(n+2))` -/
def P9353138597420401402.Spec : Prop :=
  ∀ n, P9353138597420401402.a n = A070014 (n + 2)

end A070014

/-! ## A070014.P17797476666193731369

`A004427(A320390(n+2))`
-/

namespace A070014.P17797476666193731369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004427 (A320390 (n + 2)).toNat

end

end A070014.P17797476666193731369

namespace A070014

/-- `A004427(A320390(n+2))` -/
def P17797476666193731369.Spec : Prop :=
  ∀ n, P17797476666193731369.a n = A070014 (n + 2)

end A070014

/-!
# A070016: Least m such that Chowla's function value of m [A048050(m)] equals n or 0 if no such number exists.

The programs for A070016, there is no canonical definition to state claims against.
-/

/-! ## A070016.P14680177737540772784

`A070015(n+2)`
-/

namespace A070016.P14680177737540772784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070015 (n + 2)

end

end A070016.P14680177737540772784

/-! ## A070016.P144853105847584142

`A135244(n+2)-A366110(n+2)`
-/

namespace A070016.P144853105847584142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135244 (n + 2) - A366110 (n + 2)

end

end A070016.P144853105847584142

/-! ## A070016.P16359107393335468030

`A359132(n+2)%A359132(n+2)²`
-/

namespace A070016.P16359107393335468030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A359132 (n + 2)) (A359132 (n + 2) ^ 2)

end

end A070016.P16359107393335468030

/-! ## A070016.P2047026191856330833

`A359132(n+2)+A010054(A088314(2*n))`
-/

namespace A070016.P2047026191856330833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359132 (n + 2) + A010054 (A088314 (2 * n)).toNat

end

end A070016.P2047026191856330833

/-! ## A070016.P13161837466819900710

`A359132(n+2)+A086747(A316245(n+2))`
-/

namespace A070016.P13161837466819900710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359132 (n + 2) + A086747 (A316245 (n + 2)).toNat

end

end A070016.P13161837466819900710

/-!
# A070018: a(n) = smallest prime p = prime(k) such that gcd( prime(k+1) - prime(k), prime(k+2) - prime(k+1) ) = 2n.

The programs for A070018, there is no canonical definition to state claims against.
-/

/-! ## A070018.P11960900323771937734

`A054682(n+1)+char[37]`
-/

namespace A070018.P11960900323771937734
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  37

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054682 (n + 1) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A070018.P11960900323771937734

/-! ## A070018.P12772442374423681174

`A054682(A318892(n+1))`
-/

namespace A070018.P12772442374423681174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054682 (A318892 (n + 1)).toNat

end

end A070018.P12772442374423681174

/-! ## A070018.P1146482755878763834

`A054682(A321993(n+1))`
-/

namespace A070018.P1146482755878763834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054682 (A321993 (n + 1)).toNat

end

end A070018.P1146482755878763834

/-! ## A070018.P4237006002732294101

`A054682(A323404(n+1))`
-/

namespace A070018.P4237006002732294101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054682 (A323404 (n + 1)).toNat

end

end A070018.P4237006002732294101

/-! ## A070018.P16968426055161717933

`A054682(A236674(n+2))`
-/

namespace A070018.P16968426055161717933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054682 (A236674 (n + 2)).toNat

end

end A070018.P16968426055161717933

/-!
# A070020: At these values of k the first, 2nd and 3rd cyclotomic polynomials all give prime numbers.

The programs for A070020, there is no canonical definition to state claims against.
-/

/-! ## A070020.P3373784556504136816

`∩[A014574(n+1), A136240(n+1)]`
-/

namespace A070020.P3373784556504136816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014574 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136240 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A070020.P3373784556504136816

/-! ## A070020.P5230928215595522109

`∩[A136240(n+1), A217259(n+1)]`
-/

namespace A070020.P5230928215595522109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136240 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217259 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A070020.P5230928215595522109

/-! ## A070020.P262587355991201376

`∩[A136240(n+1), A223138(n+1)]`
-/

namespace A070020.P262587355991201376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136240 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223138 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A070020.P262587355991201376

/-! ## A070020.P12352963412739742249

`∩[A014574(n+1), A096175(n+1)]`
-/

namespace A070020.P12352963412739742249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014574 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096175 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A070020.P12352963412739742249

/-! ## A070020.P11852813147715519541

`∩[A096175(n+1), A136240(n+1)]`
-/

namespace A070020.P11852813147715519541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096175 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136240 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A070020.P11852813147715519541

/-! ## A070020.P15114792974884527654

`∩[A096175(n+1), A217259(n+1)]`
-/

namespace A070020.P15114792974884527654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096175 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217259 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A070020.P15114792974884527654

/-! ## A070020.P9624865735426303749

`∩[A014574(n+1), A309544(n+1)]`
-/

namespace A070020.P9624865735426303749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014574 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309544 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A070020.P9624865735426303749

/-! ## A070020.P4782488549252342954

`∩[A217259(n+1), A309544(n+1)]`
-/

namespace A070020.P4782488549252342954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217259 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309544 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A070020.P4782488549252342954

/-! ## A070020.P4315155337543443449

`p?[A065508(n+1)-2]+1`
-/

namespace A070020.P4315155337543443449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065508 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 1

end

end A070020.P4315155337543443449

/-! ## A070020.P7896884272715150490

`xor(p?[A096175(n+1)+1], A023532(3*n+1))`
-/

namespace A070020.P7896884272715150490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096175 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A023532 (3 * n + 1))

end

end A070020.P7896884272715150490

/-! ## A070020.P16910020812590534675

`xor(A014963(10*(n+1)), p?[A096175(n+1)+1])`
-/

namespace A070020.P16910020812590534675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096175 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A014963 (10 * (n + 1))) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A070020.P16910020812590534675

/-! ## A070020.P10654782197076176264

`∩[A056853(n+1), A096175(n+1)]`
-/

namespace A070020.P10654782197076176264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056853 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096175 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A070020.P10654782197076176264

/-! ## A070020.P15076585124298239528

`∩[A056853(n+1), A136240(n+1)]`
-/

namespace A070020.P15076585124298239528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056853 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136240 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A070020.P15076585124298239528

/-! ## A070020.P10215154116254938135

`∩[A056853(n+1), A309544(n+1)]`
-/

namespace A070020.P10215154116254938135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056853 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309544 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A070020.P10215154116254938135

/-! ## A070020.P2742195379697839727

`∩[A072570(n+1), A096175(n+1)]`
-/

namespace A070020.P2742195379697839727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072570 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096175 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A070020.P2742195379697839727

/-! ## A070020.P12721283958496009313

`∩[A072570(n+1), A136240(n+1)]`
-/

namespace A070020.P12721283958496009313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072570 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136240 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A070020.P12721283958496009313

/-! ## A070020.P8300309985881309978

`∩[A072570(n+1), A309544(n+1)]`
-/

namespace A070020.P8300309985881309978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072570 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309544 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A070020.P8300309985881309978

/-! ## A070020.P6587481286613388747

`∩[A136240(n+1), A387935(n+1)]`
-/

namespace A070020.P6587481286613388747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136240 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387935 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A070020.P6587481286613388747

/-! ## A070020.P6343988057820943482

`∩[A072568(n+1), A096175(n+1)]`
-/

namespace A070020.P6343988057820943482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072568 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096175 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A070020.P6343988057820943482

/-! ## A070020.P11794391480887118623

`∩[A072568(n+1), A136240(n+1)]`
-/

namespace A070020.P11794391480887118623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072568 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136240 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A070020.P11794391480887118623

/-!
# A070021: 1/n has period 1 in base 10 (but not terminating).

The programs for A070021, there is no canonical definition to state claims against.
-/

/-! ## A070021.P11796869405186153672

`∩[A070023(n+1), A085126(n+1)]`
-/

namespace A070021.P11796869405186153672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070023 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085126 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A070021.P11796869405186153672

/-! ## A070021.P6806027547178046061

`∩[A070023(n+1), A284601(n+1)]`
-/

namespace A070021.P6806027547178046061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070023 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284601 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A070021.P6806027547178046061

/-! ## A070021.P10959573917009561451

`record[3*A305211(A002473(n+1))]`
-/

namespace A070021.P10959573917009561451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A305211 (A002473 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A070021.P10959573917009561451

/-! ## A070021.P3630760121818989260

`∩[A070023(n+1), A016789(n)+1]`
-/

namespace A070021.P3630760121818989260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070023 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016789 n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A070021.P3630760121818989260

/-! ## A070021.P8745588660198571887

`∩[A031193(n+1), A070023(n+1)]`
-/

namespace A070021.P8745588660198571887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031193 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070023 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A070021.P8745588660198571887

/-! ## A070021.P3904318973321517154

`∩[A070023(n+1), A016777(n)+2]`
-/

namespace A070021.P3904318973321517154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070023 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 n + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A070021.P3904318973321517154

/-! ## A070021.P3717961644831018178

`record[A077196(3*(n+1))*A132741(n+1)]`
-/

namespace A070021.P3717961644831018178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077196 (3 * (n + 1)) * A132741 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A070021.P3717961644831018178

/-! ## A070021.P14808981581095491862

`∩[A070023(n+1), A008585(n)]`
-/

namespace A070021.P14808981581095491862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070023 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A070021.P14808981581095491862

/-! ## A070021.P1962757636880494555

`∩[A070023(n+1), A201462(n+1)]`
-/

namespace A070021.P1962757636880494555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070023 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201462 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A070021.P1962757636880494555

/-! ## A070021.P970410360340544231

`∩[A070023(n+1), A230193(n+1)]`
-/

namespace A070021.P970410360340544231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070023 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230193 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A070021.P970410360340544231

/-!
# A070022: 1/n has period 2 in base 10.

The programs for A070022, there is no canonical definition to state claims against.
-/

/-! ## A070022.P10866211805818791017

`11*A070023(n+1)`
-/

namespace A070022.P10866211805818791017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  11 * A070023 (n + 1)

end

end A070022.P10866211805818791017

/-! ## A070022.P3229253801793815578

`A008593(A070023(n+1))`
-/

namespace A070022.P3229253801793815578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008593 (A070023 (n + 1)).toNat

end

end A070022.P3229253801793815578

/-! ## A070022.P5032505899976923219

`A008593(∪[A003592(n+1), A070021(n+1)])`
-/

namespace A070022.P5032505899976923219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003592 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070021 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008593 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A070022.P5032505899976923219

/-! ## A070022.P676312680389065929

`11*record[(n+1)/A007732(2*(n+1))]`
-/

namespace A070022.P676312680389065929
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A007732 (2 * (n + 1)) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  11 * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A070022.P676312680389065929

/-! ## A070022.P18247507390245719665

`11*record[(n+1)/A051626(lcm(3, n+1))]`
-/

namespace A070022.P18247507390245719665
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A051626 (Nat.lcm 3 (n + 1)) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  11 * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A070022.P18247507390245719665

/-! ## A070022.P9735962702943829794

`A008593(record[(n+1)/A051626(lcm(3, n+1))])`
-/

namespace A070022.P9735962702943829794
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A051626 (Nat.lcm 3 (n + 1)) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008593 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A070022.P9735962702943829794

/-! ## A070022.P14015459717714721508

`eq[2, A007732(n+1)]+1`
-/

namespace A070022.P14015459717714721508
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007732 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A070022.P14015459717714721508

/-! ## A070022.P10443428360891880149

`eq[2, A051626(n+1)]+1`
-/

namespace A070022.P10443428360891880149
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051626 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A070022.P10443428360891880149

/-! ## A070022.P3651455692150522696

`eq[2, A007732(A028310(n))]`
-/

namespace A070022.P3651455692150522696
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007732 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A070022.P3651455692150522696

/-! ## A070022.P5029875889057341146

`A020725(eq[2, A007732(n+1)])`
-/

namespace A070022.P5029875889057341146
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007732 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A070022.P5029875889057341146

/-!
# A070023: 1/n has period 1 in base 10 (including terminating decimals).

The programs for A070023, there is no canonical definition to state claims against.
-/

/-! ## A070023.P9884294370637094057

`A070022(n+1)/11`
-/

namespace A070023.P9884294370637094057
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A070022 (n + 1) : ℚ) / 11

end

end A070023.P9884294370637094057

/-! ## A070023.P14354337220793403630

`∪[A003592(n+1), A070021(n+1)]`
-/

namespace A070023.P14354337220793403630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003592 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070021 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A070023.P14354337220793403630

/-! ## A070023.P6968362796428680660

`eq[1, A007732(n+1)]+1`
-/

namespace A070023.P6968362796428680660
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007732 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A070023.P6968362796428680660

/-! ## A070023.P10082265435187648401

`lt[A051626(n+1), 2]+1`
-/

namespace A070023.P10082265435187648401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051626 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A070023.P10082265435187648401

/-! ## A070023.P9342247801253488195

`record[A023142(n+1)*A132741(n+1)]`
-/

namespace A070023.P9342247801253488195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023142 (n + 1) * A132741 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A070023.P9342247801253488195

/-! ## A070023.P5531401709284173539

`record[A077196(n+1)*A132741(n+1)]`
-/

namespace A070023.P5531401709284173539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077196 (n + 1) * A132741 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A070023.P5531401709284173539

/-! ## A070023.P10872407039914077070

`record[(n+1)/A007732(2*(n+1))]`
-/

namespace A070023.P10872407039914077070
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A007732 (2 * (n + 1)) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A070023.P10872407039914077070

/-! ## A070023.P16567395585341633514

`gcd(A070022(n+1), A131451(n+1))`
-/

namespace A070023.P16567395585341633514
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A070022 (n + 1)) (A131451 (n + 1))

end

end A070023.P16567395585341633514

/-! ## A070023.P7243860314789056382

`record[(n+1)/A051626(lcm(3, n+1))]`
-/

namespace A070023.P7243860314789056382
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A051626 (Nat.lcm 3 (n + 1)) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A070023.P7243860314789056382

/-! ## A070023.P12000894428692318725

`eq[1, A051626(A066393(n))]`
-/

namespace A070023.P12000894428692318725
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051626 (A066393 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A070023.P12000894428692318725

/-!
# A070025: At these values of k, the 1st, 2nd, 3rd and 4th cyclotomic polynomials all give prime numbers.

The programs for A070025, there is no canonical definition to state claims against.
-/

/-! ## A070025.P1220490883812323640

`∩[A070020(n+1), A070155(n+1)]`
-/

namespace A070025.P1220490883812323640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070020 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070155 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A070025.P1220490883812323640

/-! ## A070025.P1794028202563842590

`∩[A070020(n+1), A129293(n+1)]`
-/

namespace A070025.P1794028202563842590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070020 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129293 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A070025.P1794028202563842590

/-! ## A070025.P3119821420216677156

`∩[A067664(n+1), A070020(n+1)]`
-/

namespace A070025.P3119821420216677156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067664 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070020 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A070025.P3119821420216677156

/-! ## A070025.P12908879789307811471

`∩[A014574(n+1), A067664(n+1)]`
-/

namespace A070025.P12908879789307811471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014574 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067664 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A070025.P12908879789307811471

/-! ## A070025.P12933377096327942258

`∩[A070689(n+1), A096175(n+1)]`
-/

namespace A070025.P12933377096327942258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070689 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096175 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A070025.P12933377096327942258

/-!
# A070026: Initial, all intermediate and final iterated sums of digits of n are primes.

The programs for A070026, there is no canonical definition to state claims against.
-/

/-! ## A070026.P8125428420616150938

`∩[A028834(n+1), A028835(n+1)]`
-/

namespace A070026.P8125428420616150938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028834 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028835 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A070026.P8125428420616150938

/-! ## A070026.P13264070639666098148

`∩[A028835(n+1), A129630(n+1)+1]`
-/

namespace A070026.P13264070639666098148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028835 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129630 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A070026.P13264070639666098148

/-! ## A070026.P2092781016297395784

`∩[A028835(n+1), A020725(A129630(n+1))]`
-/

namespace A070026.P2092781016297395784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028835 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A129630 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A070026.P2092781016297395784

/-! ## A070026.P3038968485448817014

`∩[eq[2, A306509(n+1)]+1, A028835(n+1)]`
-/

namespace A070026.P3038968485448817014
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306509 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 1

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028835 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f4 j = (x : ℤ)) n

end

end A070026.P3038968485448817014

/-! ## A070026.P17164573857218709005

`eq[A007953(n), A083982(A076314(n))]`
-/

namespace A070026.P17164573857218709005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083982 (A076314 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A070026.P17164573857218709005

/-!
# A070027: Prime numbers whose initial, all intermediate and final iterated sums of digits are primes.

The programs for A070027, the canonical program `A070027.P5242665352771384426` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070027 has offset 1).

The definition of A070027 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3626 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A070027.P5242665352771384426

`∩[A046704(n+1), A078403(n+1)]`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A070027

/-- `∩[A046704(n+1), A078403(n+1)]` -/
def P5242665352771384426.Spec : Prop :=
  ∀ n, (P5242665352771384426.a n : ℤ) = A070027 (n + 1)

theorem P5242665352771384426.correct : P5242665352771384426.Spec := by
  intro n
  simp only [A070027, Nat.add_sub_cancel]

end A070027

/-! ## A070027.P10385391983240156077

`∩[A028834(n+1), A078403(n+1)]`
-/

namespace A070027.P10385391983240156077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028834 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078403 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A070027.P10385391983240156077

namespace A070027

/-- `∩[A028834(n+1), A078403(n+1)]` -/
def P10385391983240156077.Spec : Prop :=
  ∀ n, (P10385391983240156077.a n : ℤ) = A070027 (n + 1)

end A070027

/-! ## A070027.P5253471971360017404

`p?[A070026(n+1)]`
-/

namespace A070027.P5253471971360017404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070026 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A070027.P5253471971360017404

namespace A070027

/-- `p?[A070026(n+1)]` -/
def P5253471971360017404.Spec : Prop :=
  ∀ n, P5253471971360017404.a n = A070027 (n + 1)

end A070027

/-! ## A070027.P6005358782102135517

`filter[A070026(n+1), A010051(#)]`
-/

namespace A070027.P6005358782102135517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070026 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A070027.P6005358782102135517

namespace A070027

/-- `filter[A070026(n+1), A010051(#)]` -/
def P6005358782102135517.Spec : Prop :=
  ∀ n, P6005358782102135517.a n = A070027 (n + 1)

end A070027

/-! ## A070027.P4086732878075483461

`∩[A000040(n+1), A070026(n+1)]`
-/

namespace A070027.P4086732878075483461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070026 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A070027.P4086732878075483461

namespace A070027

/-- `∩[A000040(n+1), A070026(n+1)]` -/
def P4086732878075483461.Spec : Prop :=
  ∀ n, (P4086732878075483461.a n : ℤ) = A070027 (n + 1)

end A070027

/-! ## A070027.P2633385587544743276

`∩[A008578(n+1), A070026(n+1)]`
-/

namespace A070027.P2633385587544743276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070026 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A070027.P2633385587544743276

namespace A070027

/-- `∩[A008578(n+1), A070026(n+1)]` -/
def P2633385587544743276.Spec : Prop :=
  ∀ n, (P2633385587544743276.a n : ℤ) = A070027 (n + 1)

end A070027

/-! ## A070027.P15097108798798175171

`∩[A033946(n+1), A070026(n+1)]`
-/

namespace A070027.P15097108798798175171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070026 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A070027.P15097108798798175171

namespace A070027

/-- `∩[A033946(n+1), A070026(n+1)]` -/
def P15097108798798175171.Spec : Prop :=
  ∀ n, (P15097108798798175171.a n : ℤ) = A070027 (n + 1)

end A070027

/-! ## A070027.P8773692826059254583

`∩[A046022(n+1), A070026(n+1)]`
-/

namespace A070027.P8773692826059254583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070026 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A070027.P8773692826059254583

namespace A070027

/-- `∩[A046022(n+1), A070026(n+1)]` -/
def P8773692826059254583.Spec : Prop :=
  ∀ n, (P8773692826059254583.a n : ℤ) = A070027 (n + 1)

end A070027

/-! ## A070027.P14561994644444632526

`∩[A046704(n+1), A070026(n+1)]`
-/

namespace A070027.P14561994644444632526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046704 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070026 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A070027.P14561994644444632526

namespace A070027

/-- `∩[A046704(n+1), A070026(n+1)]` -/
def P14561994644444632526.Spec : Prop :=
  ∀ n, (P14561994644444632526.a n : ℤ) = A070027 (n + 1)

end A070027

/-! ## A070027.P15114176804270447961

`∩[A051948(n+1), A070026(n+1)]`
-/

namespace A070027.P15114176804270447961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070026 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A070027.P15114176804270447961

namespace A070027

/-- `∩[A051948(n+1), A070026(n+1)]` -/
def P15114176804270447961.Spec : Prop :=
  ∀ n, (P15114176804270447961.a n : ℤ) = A070027 (n + 1)

end A070027

/-! ## A070027.P1806317384920167535

`∩[A053813(n+1), A070026(n+1)]`
-/

namespace A070027.P1806317384920167535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070026 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A070027.P1806317384920167535

namespace A070027

/-- `∩[A053813(n+1), A070026(n+1)]` -/
def P1806317384920167535.Spec : Prop :=
  ∀ n, (P1806317384920167535.a n : ℤ) = A070027 (n + 1)

end A070027

/-! ## A070027.P6107447027824560343

`∩[A062972(n+1), A070026(n+1)]`
-/

namespace A070027.P6107447027824560343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062972 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070026 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A070027.P6107447027824560343

namespace A070027

/-- `∩[A062972(n+1), A070026(n+1)]` -/
def P6107447027824560343.Spec : Prop :=
  ∀ n, (P6107447027824560343.a n : ℤ) = A070027 (n + 1)

end A070027

/-! ## A070027.P9694185965956329965

`∩[A066050(n+1), A070026(n+1)]`
-/

namespace A070027.P9694185965956329965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066050 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070026 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A070027.P9694185965956329965

namespace A070027

/-- `∩[A066050(n+1), A070026(n+1)]` -/
def P9694185965956329965.Spec : Prop :=
  ∀ n, (P9694185965956329965.a n : ℤ) = A070027 (n + 1)

end A070027

/-! ## A070027.P5635456546045469899

`∩[A067126(n+1), A070026(n+1)]`
-/

namespace A070027.P5635456546045469899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067126 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070026 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A070027.P5635456546045469899

namespace A070027

/-- `∩[A067126(n+1), A070026(n+1)]` -/
def P5635456546045469899.Spec : Prop :=
  ∀ n, (P5635456546045469899.a n : ℤ) = A070027 (n + 1)

end A070027

/-! ## A070027.P11476946197772259093

`∩[A070026(n+1), A072227(n+1)]`
-/

namespace A070027.P11476946197772259093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070026 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072227 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A070027.P11476946197772259093

namespace A070027

/-- `∩[A070026(n+1), A072227(n+1)]` -/
def P11476946197772259093.Spec : Prop :=
  ∀ n, (P11476946197772259093.a n : ℤ) = A070027 (n + 1)

end A070027

/-! ## A070027.P10988922861446988085

`∩[A070026(n+1), A078403(n+1)]`
-/

namespace A070027.P10988922861446988085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070026 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078403 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A070027.P10988922861446988085

namespace A070027

/-- `∩[A070026(n+1), A078403(n+1)]` -/
def P10988922861446988085.Spec : Prop :=
  ∀ n, (P10988922861446988085.a n : ℤ) = A070027 (n + 1)

end A070027

/-! ## A070027.P11192296401000109089

`∩[A070026(n+1), A116974(n+1)]`
-/

namespace A070027.P11192296401000109089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070026 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116974 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A070027.P11192296401000109089

namespace A070027

/-- `∩[A070026(n+1), A116974(n+1)]` -/
def P11192296401000109089.Spec : Prop :=
  ∀ n, (P11192296401000109089.a n : ℤ) = A070027 (n + 1)

end A070027

/-! ## A070027.P718333339401618548

`∩[A070026(n+1), A158611(n+1)]`
-/

namespace A070027.P718333339401618548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070026 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A070027.P718333339401618548

namespace A070027

/-- `∩[A070026(n+1), A158611(n+1)]` -/
def P718333339401618548.Spec : Prop :=
  ∀ n, (P718333339401618548.a n : ℤ) = A070027 (n + 1)

end A070027

/-! ## A070027.P14476091336315906887

`∩[A070026(n+1), A161597(n+1)]`
-/

namespace A070027.P14476091336315906887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070026 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161597 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A070027.P14476091336315906887

namespace A070027

/-- `∩[A070026(n+1), A161597(n+1)]` -/
def P14476091336315906887.Spec : Prop :=
  ∀ n, (P14476091336315906887.a n : ℤ) = A070027 (n + 1)

end A070027

/-! ## A070027.P8234682540782715045

`∩[A070026(n+1), A165209(n+1)]`
-/

namespace A070027.P8234682540782715045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070026 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165209 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A070027.P8234682540782715045

namespace A070027

/-- `∩[A070026(n+1), A165209(n+1)]` -/
def P8234682540782715045.Spec : Prop :=
  ∀ n, (P8234682540782715045.a n : ℤ) = A070027 (n + 1)

end A070027

/-!
# A070028: Absolute primes: primes whose initial, all intermediate and final sums of digits are primes.

The programs for A070028, there is no canonical definition to state claims against.
-/

/-! ## A070028.P3712936590337717696

`p?[A180478(A180493(n+1))]`
-/

namespace A070028.P3712936590337717696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180478 (A180493 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A070028.P3712936590337717696

/-! ## A070028.P6119976127893341060

`record[A331097(A277856(n+2))]`
-/

namespace A070028.P6119976127893341060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331097 (A277856 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A070028.P6119976127893341060

/-! ## A070028.P12235898387329438835

`∩[A070027(n+1), A091897(n+1)]`
-/

namespace A070028.P12235898387329438835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070027 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091897 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A070028.P12235898387329438835

/-! ## A070028.P5608552505200530043

`∩[A091897(n+1), A118723(n+1)]`
-/

namespace A070028.P5608552505200530043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091897 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118723 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A070028.P5608552505200530043

/-!
# A070029: Primes with only prime digits and whose initial, all intermediate and final iterated sums of digits are primes.

The programs for A070029, there is no canonical definition to state claims against.
-/

/-! ## A070029.P6614203281662861868

`∩[A019546(n+1), A070027(n+1)]`
-/

namespace A070029.P6614203281662861868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019546 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070027 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A070029.P6614203281662861868

/-! ## A070029.P10046485294772185757

`∩[A046034(n+1), A070027(n+1)]`
-/

namespace A070029.P10046485294772185757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046034 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070027 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A070029.P10046485294772185757

/-! ## A070029.P7156885702776079972

`∩[A062087(n+1), A070027(n+1)]`
-/

namespace A070029.P7156885702776079972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062087 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070027 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A070029.P7156885702776079972

/-! ## A070029.P8964802042850943450

`∩[A062088(n+1), A070027(n+1)]`
-/

namespace A070029.P8964802042850943450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062088 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070027 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A070029.P8964802042850943450

/-! ## A070029.P7555109381614653788

`∩[A062088(n+1), A078403(n+1)]`
-/

namespace A070029.P7555109381614653788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062088 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078403 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A070029.P7555109381614653788

/-!
# A070030: Number of closed Knight's tours on a 3 X 2n board.

The programs for A070030, there is no canonical definition to state claims against.
-/

/-! ## A070030.P8608047066811838671

`A158074(n+1)/2`
-/

namespace A070030.P8608047066811838671
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A158074 (n + 1) : ℚ) / 2

end

end A070030.P8608047066811838671

/-! ## A070030.P3509659973747629582

`A169764(2*(n+1))`
-/

namespace A070030.P3509659973747629582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169764 (2 * (n + 1))

end

end A070030.P3509659973747629582

/-! ## A070030.P4325598456644630989

`abs(A169764(A051755(n+2))/A033999(n))`
-/

namespace A070030.P4325598456644630989
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A169764 (A051755 (n + 2)).toNat : ℚ) / (A033999 n : ℚ)|

end

end A070030.P4325598456644630989

/-! ## A070030.P8537047482877874192

`A265260(n+1+n)+A169764(A051755(n+2))`
-/

namespace A070030.P8537047482877874192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265260 (n + 1 + n) + A169764 (A051755 (n + 2)).toNat

end

end A070030.P8537047482877874192

/-! ## A070030.P3030294684805088576

`A169764(A051755(n+2))/A001222(A033207(n+1))`
-/

namespace A070030.P3030294684805088576
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A169764 (A051755 (n + 2)).toNat : ℚ) / (A001222 (A033207 (n + 1)).toNat : ℚ)

end

end A070030.P3030294684805088576

/-!
# A070031: Expansion of (1+x*C)*C^3, where C = (1-sqrt(1-4*x))/(2*x) is g.f. for Catalan numbers, A000108.

The programs for A070031, the canonical program `A070031.P4889884996952388328` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070031 has offset 0).

The definition of A070031 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A070031.P2859373801849749712

`A000108(n+1)-A126079(n+3)`
-/

namespace A070031.P2859373801849749712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (n + 1) - A126079 (n + 3)

end

end A070031.P2859373801849749712

namespace A070031

/-- `A000108(n+1)-A126079(n+3)` -/
def P2859373801849749712.Spec : Prop :=
  ∀ n, P2859373801849749712.a n = A070031 n

end A070031

/-! ## A070031.P4889884996952388328

`2*A000245(n+1)-A000108(n+1)`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A070031

/-- `2*A000245(n+1)-A000108(n+1)` -/
def P4889884996952388328.Spec : Prop :=
  ∀ n, P4889884996952388328.a n = A070031 n

theorem P4889884996952388328.correct : P4889884996952388328.Spec := by
  intro n
  simp only [A070031]

end A070031

/-! ## A070031.P15662094601614205849

`2*(5*n+3)*C(2*n+1, n)/((n+2)*(n+3))`
-/

namespace A070031.P15662094601614205849
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * (5 * n + 3) * Nat.choose (2 * n + 1) n : ℚ) / ((n + 2) * (n + 3) : ℚ)

end

end A070031.P15662094601614205849

namespace A070031

/-- `2*(5*n+3)*C(2*n+1, n)/((n+2)*(n+3))` -/
def P15662094601614205849.Spec : Prop :=
  ∀ n, P15662094601614205849.a n = (A070031 n : ℚ)

end A070031

/-! ## A070031.P15252810085143910001

`∑[A071736(n)]`
-/

namespace A070031.P15252810085143910001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071736 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A070031.P15252810085143910001

namespace A070031

/-- `∑[A071736(n)]` -/
def P15252810085143910001.Spec : Prop :=
  ∀ n, P15252810085143910001.a n = A070031 n

end A070031

/-! ## A070031.P12401178979288301174

`Δ[A228180(n+1)]`
-/

namespace A070031.P12401178979288301174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228180 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A070031.P12401178979288301174

namespace A070031

/-- `Δ[A228180(n+1)]` -/
def P12401178979288301174.Spec : Prop :=
  ∀ n, P12401178979288301174.a n = A070031 n

end A070031

/-! ## A070031.P13767279335736838024

`A071722(n)+A000245(n)`
-/

namespace A070031.P13767279335736838024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071722 n + A000245 n

end

end A070031.P13767279335736838024

namespace A070031

/-- `A071722(n)+A000245(n)` -/
def P13767279335736838024.Spec : Prop :=
  ∀ n, P13767279335736838024.a n = A070031 n

end A070031

/-! ## A070031.P17575249011641509860

`A033434(n)-A000588(n)`
-/

namespace A070031.P17575249011641509860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033434 n - A000588 n

end

end A070031.P17575249011641509860

namespace A070031

/-- `A033434(n)-A000588(n)` -/
def P17575249011641509860.Spec : Prop :=
  ∀ n, P17575249011641509860.a n = A070031 n

end A070031

/-! ## A070031.P15618553616438058523

`A070857(n)-A390965(n)`
-/

namespace A070031.P15618553616438058523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070857 n - A390965 n

end

end A070031.P15618553616438058523

namespace A070031

/-- `A070857(n)-A390965(n)` -/
def P15618553616438058523.Spec : Prop :=
  ∀ n, P15618553616438058523.a n = A070031 n

theorem P15618553616438058523.correct : P15618553616438058523.Spec := by
  intro n
  simp only [A070031, Nat.add_sub_cancel, A070031.P15618553616438058523.a, A070031.P4889884996952388328.a, A000108, A000108.P17551949696095299361.a, A000245, A000245.P15461013057778681831.a, A070857, A070857.P5345200539959730910.a, A390965, A390965.P17095960951919550593.a, A002057, A002057.P16485173035074746318.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A070031

/-! ## A070031.P17924260349552842788

`A099376(n)+∑[A026012(n)]`
-/

namespace A070031.P17924260349552842788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026012 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099376 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A070031.P17924260349552842788

namespace A070031

/-- `A099376(n)+∑[A026012(n)]` -/
def P17924260349552842788.Spec : Prop :=
  ∀ n, P17924260349552842788.a n = A070031 n

end A070031

/-! ## A070031.P7730296827094438874

`Δ[A026012(n)]-A000588(n)`
-/

namespace A070031.P7730296827094438874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026012 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A000588 n

end

end A070031.P7730296827094438874

namespace A070031

/-- `Δ[A026012(n)]-A000588(n)` -/
def P7730296827094438874.Spec : Prop :=
  ∀ n, P7730296827094438874.a n = A070031 n

theorem P7730296827094438874.correct : P7730296827094438874.Spec := by
  intro n
  simp only [A070031, Nat.add_sub_cancel, A070031.P7730296827094438874.f1, A070031.P7730296827094438874.a, A070031.P4889884996952388328.a, A000108, A000108.P17551949696095299361.a, A000245, A000245.P15461013057778681831.a, A000588, A000588.P2240156739823594693.a, A026012, A026012.P8146518293460492297.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A070031

/-! ## A070031.P12586715584804799100

`A099376(n)+A000245(n+1)`
-/

namespace A070031.P12586715584804799100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099376 n + A000245 (n + 1)

end

end A070031.P12586715584804799100

namespace A070031

/-- `A099376(n)+A000245(n+1)` -/
def P12586715584804799100.Spec : Prop :=
  ∀ n, P12586715584804799100.a n = A070031 n

theorem P12586715584804799100.correct : P12586715584804799100.Spec := by
  intro n
  simp only [A070031, Nat.add_sub_cancel, A070031.P12586715584804799100.a, A070031.P4889884996952388328.a, A000108, A000108.P17551949696095299361.a, A000245, A000245.P15461013057778681831.a, A099376, A099376.P5902379968883628035.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A070031

/-! ## A070031.P6290282790880984494

`A099376(n)+A071724(n+1)`
-/

namespace A070031.P6290282790880984494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099376 n + A071724 (n + 1)

end

end A070031.P6290282790880984494

namespace A070031

/-- `A099376(n)+A071724(n+1)` -/
def P6290282790880984494.Spec : Prop :=
  ∀ n, P6290282790880984494.a n = A070031 n

theorem P6290282790880984494.correct : P6290282790880984494.Spec := by
  intro n
  simp only [A070031, Nat.add_sub_cancel, A070031.P6290282790880984494.a, A070031.P4889884996952388328.a, A000108, A000108.P17551949696095299361.a, A000245, A000245.P15461013057778681831.a, A071724, A071724.P13075293376280166576.f1, A071724.P13075293376280166576.a, A099376, A099376.P5902379968883628035.a, A141351, A141351.P15521239837132020654.a, A057427, A057427.P3058147525557661423.a, A000007, A000007.P6599383543502402472.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A070031

/-! ## A070031.P9890591047584722029

`A026012(n+1)-A026029(n)`
-/

namespace A070031.P9890591047584722029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026012 (n + 1) - A026029 n

end

end A070031.P9890591047584722029

namespace A070031

/-- `A026012(n+1)-A026029(n)` -/
def P9890591047584722029.Spec : Prop :=
  ∀ n, P9890591047584722029.a n = A070031 n

theorem P9890591047584722029.correct : P9890591047584722029.Spec := by
  intro n
  simp only [A070031, Nat.add_sub_cancel, A070031.P9890591047584722029.a, A070031.P4889884996952388328.a, A000108, A000108.P17551949696095299361.a, A000245, A000245.P15461013057778681831.a, A026012, A026012.P8146518293460492297.a, A026029, A026029.P1005494940722334040.a, A000588, A000588.P2240156739823594693.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A070031

/-! ## A070031.P4563925338258163476

`A071735(n+1)-A000108(n)`
-/

namespace A070031.P4563925338258163476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071735 (n + 1) - A000108 n

end

end A070031.P4563925338258163476

namespace A070031

/-- `A071735(n+1)-A000108(n)` -/
def P4563925338258163476.Spec : Prop :=
  ∀ n, P4563925338258163476.a n = A070031 n

end A070031

/-! ## A070031.P16043987309412747748

`A067324(n)-A026016(n+1)`
-/

namespace A070031.P16043987309412747748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067324 n - A026016 (n + 1)

end

end A070031.P16043987309412747748

namespace A070031

/-- `A067324(n)-A026016(n+1)` -/
def P16043987309412747748.Spec : Prop :=
  ∀ n, P16043987309412747748.a n = A070031 n

end A070031

/-! ## A070031.P10060591210381305320

`A071738(n+2)-A026029(n)`
-/

namespace A070031.P10060591210381305320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071738 (n + 2) - A026029 n

end

end A070031.P10060591210381305320

namespace A070031

/-- `A071738(n+2)-A026029(n)` -/
def P10060591210381305320.Spec : Prop :=
  ∀ n, P10060591210381305320.a n = A070031 n

end A070031

/-! ## A070031.P5954219830987039053

`A099376(n)-A115142(n+3)`
-/

namespace A070031.P5954219830987039053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099376 n - A115142 (n + 3)

end

end A070031.P5954219830987039053

namespace A070031

/-- `A099376(n)-A115142(n+3)` -/
def P5954219830987039053.Spec : Prop :=
  ∀ n, P5954219830987039053.a n = A070031 n

end A070031

/-! ## A070031.P7323282787300652996

`2*A002057(n)-A071723(n)`
-/

namespace A070031.P7323282787300652996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A002057 n - A071723 n

end

end A070031.P7323282787300652996

namespace A070031

/-- `2*A002057(n)-A071723(n)` -/
def P7323282787300652996.Spec : Prop :=
  ∀ n, P7323282787300652996.a n = A070031 n

end A070031

/-! ## A070031.P13675996426838785454

`A099376(n)+Δ[Δ[A014137(n)]]`
-/

namespace A070031.P13675996426838785454
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014137 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099376 n + (f1 (n + 1) - f1 n)

end

end A070031.P13675996426838785454

namespace A070031

/-- `A099376(n)+Δ[Δ[A014137(n)]]` -/
def P13675996426838785454.Spec : Prop :=
  ∀ n, P13675996426838785454.a n = A070031 n

end A070031

/-! ## A070031.P13059263909654978937

`A099376(n)+Δ[Δ[A014138(n)]]`
-/

namespace A070031.P13059263909654978937
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014138 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099376 n + (f1 (n + 1) - f1 n)

end

end A070031.P13059263909654978937

namespace A070031

/-- `A099376(n)+Δ[Δ[A014138(n)]]` -/
def P13059263909654978937.Spec : Prop :=
  ∀ n, P13059263909654978937.a n = A070031 n

end A070031

/-!
# A070032: Integer part of sigma(n)/phi(n).

The programs for A070032, the canonical program `A070032.P5106669173627734381` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070032 has offset 1).

The definition of A070032 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A070032.P5106669173627734381

`floor(A000203(n+1)/A000010(n+1))`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A070032

/-- `floor(A000203(n+1)/A000010(n+1))` -/
def P5106669173627734381.Spec : Prop :=
  ∀ n, P5106669173627734381.a n = A070032 (n + 1)

theorem P5106669173627734381.correct : P5106669173627734381.Spec := by
  intro n
  simp only [A070032, Nat.add_sub_cancel]

end A070032

/-! ## A070032.P14661027435892946124

`floor(∑{d}[n+1, #]/Δ[A005728(n)])`
-/

namespace A070032.P14661027435892946124
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℚ) / (f2 (n + 1) - f2 n : ℚ)⌋

end

end A070032.P14661027435892946124

namespace A070032

/-- `floor(∑{d}[n+1, #]/Δ[A005728(n)])` -/
def P14661027435892946124.Spec : Prop :=
  ∀ n, P14661027435892946124.a n = A070032 (n + 1)

end A070032

/-! ## A070032.P1477980498572906957

`floor(∑{d}[n+1, #]/A349137(Δ[n²]))`
-/

namespace A070032.P1477980498572906957
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℚ) / (A349137 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat : ℚ)⌋

end

end A070032.P1477980498572906957

namespace A070032

/-- `floor(∑{d}[n+1, #]/A349137(Δ[n²]))` -/
def P1477980498572906957.Spec : Prop :=
  ∀ n, P1477980498572906957.a n = A070032 (n + 1)

end A070032

/-! ## A070032.P1937812227947470496

`floor(∑{d}[n+1, #]/sqrt(A127473(n+1)))`
-/

namespace A070032.P1937812227947470496
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℝ) / Real.sqrt (A127473 (n + 1) : ℝ)⌋

end

end A070032.P1937812227947470496

namespace A070032

/-- `floor(∑{d}[n+1, #]/sqrt(A127473(n+1)))` -/
def P1937812227947470496.Spec : Prop :=
  ∀ n, P1937812227947470496.a n = A070032 (n + 1)

end A070032

/-! ## A070032.P12039615428008270416

`floor(∑{d}[n+1, #]/Δ[A100449(n)/4])`
-/

namespace A070032.P12039615428008270416
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A100449 n : ℚ) / 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℚ) / (f2 (n + 1) - f2 n)⌋

end

end A070032.P12039615428008270416

namespace A070032

/-- `floor(∑{d}[n+1, #]/Δ[A100449(n)/4])` -/
def P12039615428008270416.Spec : Prop :=
  ∀ n, P12039615428008270416.a n = A070032 (n + 1)

end A070032

/-! ## A070032.P9319041636072869929

`floor(∑{d}[n+1, #]/(A109606(n+1)+1))`
-/

namespace A070032.P9319041636072869929
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℚ) / (A109606 (n + 1) + 1 : ℚ)⌋

end

end A070032.P9319041636072869929

namespace A070032

/-- `floor(∑{d}[n+1, #]/(A109606(n+1)+1))` -/
def P9319041636072869929.Spec : Prop :=
  ∀ n, P9319041636072869929.a n = A070032 (n + 1)

theorem P9319041636072869929.correct : P9319041636072869929.Spec := by
  intro n
  simp only [A070032, Nat.add_sub_cancel, A070032.P9319041636072869929.f1, A070032.P9319041636072869929.a, A070032.P5106669173627734381.a, A000010, A000010.P4673923239450215316.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A109606, A109606.P2415810041766612210.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P15666735857375843373.a, A001221, A001221.P10258181745752134128.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A023900, A023900.P6802385856234332486.f1, A023900.P6802385856234332486.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A059841, A059841.P7264174615531153985.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A070032

/-! ## A070032.P15586517713897266758

`floor(∑{d}[n+1, #]/(A039649(n+1)-1))`
-/

namespace A070032.P15586517713897266758
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℚ) / (A039649 (n + 1) - 1 : ℚ)⌋

end

end A070032.P15586517713897266758

namespace A070032

/-- `floor(∑{d}[n+1, #]/(A039649(n+1)-1))` -/
def P15586517713897266758.Spec : Prop :=
  ∀ n, P15586517713897266758.a n = A070032 (n + 1)

theorem P15586517713897266758.correct : P15586517713897266758.Spec := by
  intro n
  simp only [A070032, Nat.add_sub_cancel, A070032.P15586517713897266758.f1, A070032.P15586517713897266758.a, A070032.P5106669173627734381.a, A000010, A000010.P4673923239450215316.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A039649, A039649.P16717312505280968063.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P15666735857375843373.a, A001221, A001221.P10258181745752134128.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A023900, A023900.P6802385856234332486.f1, A023900.P6802385856234332486.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A059841, A059841.P7264174615531153985.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A070032

/-! ## A070032.P14344502969886498834

`floor(A064987(n+1)/A002618(n+1))`
-/

namespace A070032.P14344502969886498834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A064987 (n + 1) : ℚ) / (A002618 (n + 1) : ℚ)⌋

end

end A070032.P14344502969886498834

namespace A070032

/-- `floor(A064987(n+1)/A002618(n+1))` -/
def P14344502969886498834.Spec : Prop :=
  ∀ n, P14344502969886498834.a n = A070032 (n + 1)

end A070032

/-! ## A070032.P11521718126861623358

`floor(A064840(n+1)/A062355(n+1))`
-/

namespace A070032.P11521718126861623358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A064840 (n + 1) : ℚ) / (A062355 (n + 1) : ℚ)⌋

end

end A070032.P11521718126861623358

namespace A070032

/-- `floor(A064840(n+1)/A062355(n+1))` -/
def P11521718126861623358.Spec : Prop :=
  ∀ n, P11521718126861623358.a n = A070032 (n + 1)

end A070032

/-! ## A070032.P15868886190571044005

`floor(A062354(n+1)/A127473(n+1))`
-/

namespace A070032.P15868886190571044005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A062354 (n + 1) : ℚ) / (A127473 (n + 1) : ℚ)⌋

end

end A070032.P15868886190571044005

namespace A070032

/-- `floor(A062354(n+1)/A127473(n+1))` -/
def P15868886190571044005.Spec : Prop :=
  ∀ n, P15868886190571044005.a n = A070032 (n + 1)

end A070032

/-! ## A070032.P15616167275972334802

`floor(A239050(n+1)/A002246(n+1))`
-/

namespace A070032.P15616167275972334802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A239050 (n + 1) : ℚ) / (A002246 (n + 1) : ℚ)⌋

end

end A070032.P15616167275972334802

namespace A070032

/-- `floor(A239050(n+1)/A002246(n+1))` -/
def P15616167275972334802.Spec : Prop :=
  ∀ n, P15616167275972334802.a n = A070032 (n + 1)

end A070032

/-! ## A070032.P4850776430868513852

`floor(A245092(2*n+1)/A000010(n+1))`
-/

namespace A070032.P4850776430868513852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A245092 (2 * n + 1) : ℚ) / (A000010 (n + 1) : ℚ)⌋

end

end A070032.P4850776430868513852

namespace A070032

/-- `floor(A245092(2*n+1)/A000010(n+1))` -/
def P4850776430868513852.Spec : Prop :=
  ∀ n, P4850776430868513852.a n = A070032 (n + 1)

end A070032

/-! ## A070032.P4232477506372501224

`floor(A245092(2*n+1)/(A109606(n+1)+1))`
-/

namespace A070032.P4232477506372501224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A245092 (2 * n + 1) : ℚ) / (A109606 (n + 1) + 1 : ℚ)⌋

end

end A070032.P4232477506372501224

namespace A070032

/-- `floor(A245092(2*n+1)/(A109606(n+1)+1))` -/
def P4232477506372501224.Spec : Prop :=
  ∀ n, P4232477506372501224.a n = A070032 (n + 1)

end A070032

/-! ## A070032.P15845949848923346092

`floor(A245092(2*n+1)/(A039649(n+1)-1))`
-/

namespace A070032.P15845949848923346092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A245092 (2 * n + 1) : ℚ) / (A039649 (n + 1) - 1 : ℚ)⌋

end

end A070032.P15845949848923346092

namespace A070032

/-- `floor(A245092(2*n+1)/(A039649(n+1)-1))` -/
def P15845949848923346092.Spec : Prop :=
  ∀ n, P15845949848923346092.a n = A070032 (n + 1)

end A070032

/-! ## A070032.P2920233057430384965

`floor(∑{d}[n+1, #]/(A046073(n+1)*A060594(n+1)))`
-/

namespace A070032.P2920233057430384965
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℚ) / (A046073 (n + 1) * A060594 (n + 1) : ℚ)⌋

end

end A070032.P2920233057430384965

namespace A070032

/-- `floor(∑{d}[n+1, #]/(A046073(n+1)*A060594(n+1)))` -/
def P2920233057430384965.Spec : Prop :=
  ∀ n, P2920233057430384965.a n = A070032 (n + 1)

end A070032

/-! ## A070032.P2602005730954928593

`(A000203(n+1)-A063514(n+1))/A000010(n+1)`
-/

namespace A070032.P2602005730954928593
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) - A063514 (n + 1) : ℚ) / (A000010 (n + 1) : ℚ)

end

end A070032.P2602005730954928593

namespace A070032

/-- `(A000203(n+1)-A063514(n+1))/A000010(n+1)` -/
def P2602005730954928593.Spec : Prop :=
  ∀ n, P2602005730954928593.a n = (A070032 (n + 1) : ℚ)

end A070032

/-! ## A070032.P15488293552488655274

`floor(A245092(2*n+1)/(A046073(n+1)*A060594(n+1)))`
-/

namespace A070032.P15488293552488655274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A245092 (2 * n + 1) : ℚ) / (A046073 (n + 1) * A060594 (n + 1) : ℚ)⌋

end

end A070032.P15488293552488655274

namespace A070032

/-- `floor(A245092(2*n+1)/(A046073(n+1)*A060594(n+1)))` -/
def P15488293552488655274.Spec : Prop :=
  ∀ n, P15488293552488655274.a n = A070032 (n + 1)

end A070032

/-! ## A070032.P8500927391073577825

`floor(∑{d}[n+1, #]/(A049633(n)-A049632(n)))`
-/

namespace A070032.P8500927391073577825
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℚ) / (A049633 n - A049632 n : ℚ)⌋

end

end A070032.P8500927391073577825

namespace A070032

/-- `floor(∑{d}[n+1, #]/(A049633(n)-A049632(n)))` -/
def P8500927391073577825.Spec : Prop :=
  ∀ n, P8500927391073577825.a n = A070032 (n + 1)

end A070032

/-! ## A070032.P4779142768530749557

`floor(A245092(2*n+1)/(A049633(n)-A049632(n)))`
-/

namespace A070032.P4779142768530749557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A245092 (2 * n + 1) : ℚ) / (A049633 n - A049632 n : ℚ)⌋

end

end A070032.P4779142768530749557

namespace A070032

/-- `floor(A245092(2*n+1)/(A049633(n)-A049632(n)))` -/
def P4779142768530749557.Spec : Prop :=
  ∀ n, P4779142768530749557.a n = A070032 (n + 1)

end A070032

/-! ## A070032.P1339048854755613558

`floor(∑{d}[n+1, #]/Δ[A206297(n+1)/2])`
-/

namespace A070032.P1339048854755613558
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A206297 (n + 1) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℚ) / (f2 (n + 1) - f2 n)⌋

end

end A070032.P1339048854755613558

namespace A070032

/-- `floor(∑{d}[n+1, #]/Δ[A206297(n+1)/2])` -/
def P1339048854755613558.Spec : Prop :=
  ∀ n, P1339048854755613558.a n = A070032 (n + 1)

end A070032

/-!
# A070034: Numbers n such that n! reduced modulo 2^n is also a power of 2.

The programs for A070034, there is no canonical definition to state claims against.
-/

/-! ## A070034.P15372156312599212942

`A070036(n+1)+A070035(n+1)`
-/

namespace A070034.P15372156312599212942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070036 (n + 1) + A070035 (n + 1)

end

end A070034.P15372156312599212942

/-! ## A070034.P14774725094162673044

`eq[1, A049606(n)%A001316(n)]`
-/

namespace A070034.P14774725094162673044
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A049606 n) (A001316 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A070034.P14774725094162673044

/-! ## A070034.P15770075535096944544

`A089840(A342332(n+1))+A070035(n+1)`
-/

namespace A070034.P15770075535096944544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089840 (A342332 (n + 1)).toNat + A070035 (n + 1)

end

end A070034.P15770075535096944544

/-! ## A070034.P5779901610351205793

`A070035(n+1)+A001222(A219291(n+1)+A039941(n))`
-/

namespace A070034.P5779901610351205793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070035 (n + 1) + A001222 (A219291 (n + 1) + A039941 n).toNat

end

end A070034.P5779901610351205793

/-! ## A070034.P7559711714715960809

`A349056(A107799(n+1)+A107795(n))+A070035(n+1)`
-/

namespace A070034.P7559711714715960809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349056 (A107799 (n + 1) + A107795 n).toNat + A070035 (n + 1)

end

end A070034.P7559711714715960809

/-!
# A070035: Exponents of 2 when A068496(n) is also a power of 2.

The programs for A070035, there is no canonical definition to state claims against.
-/

/-! ## A070035.P15085286939219813143

`A011371(A070034(n+1))`
-/

namespace A070035.P15085286939219813143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011371 (A070034 (n + 1)).toNat

end

end A070035.P15085286939219813143

/-! ## A070035.P15371990355047920892

`A070034(A000027(n+1))-A000120(A070034(n+1))`
-/

namespace A070035.P15371990355047920892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070034 (A000027 (n + 1)).toNat - A000120 (A070034 (n + 1)).toNat

end

end A070035.P15371990355047920892

/-! ## A070035.P5004565135874050756

`A070034(n+1)-A000120(A070034(n+1)+A000007(n))`
-/

namespace A070035.P5004565135874050756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070034 (n + 1) - A000120 (A070034 (n + 1) + A000007 n).toNat

end

end A070035.P5004565135874050756

/-! ## A070035.P1197671627556180769

`A070034(n+1)-A070036(n+1)`
-/

namespace A070035.P1197671627556180769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070034 (n + 1) - A070036 (n + 1)

end

end A070035.P1197671627556180769

/-! ## A070035.P16852998436572994785

`A070034(n+1)-A000120(2*A070034(n+1))`
-/

namespace A070035.P16852998436572994785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070034 (n + 1) - A000120 (2 * A070034 (n + 1)).toNat

end

end A070035.P16852998436572994785

/-! ## A070035.P5260526865868347524

`A070034(n+1)-A048881(2*A070034(n+1))`
-/

namespace A070035.P5260526865868347524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070034 (n + 1) - A048881 (2 * A070034 (n + 1)).toNat

end

end A070035.P5260526865868347524

/-! ## A070035.P10759851975935614042

`A070034(n+1)-A048881(lcm(2, A070034(n+1)))`
-/

namespace A070035.P10759851975935614042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070034 (n + 1) - A048881 (Int.lcm 2 (A070034 (n + 1)))

end

end A070035.P10759851975935614042

/-!
# A070036: a(n)=A070034(n)-A070035(n).

The programs for A070036, there is no canonical definition to state claims against.
-/

/-! ## A070036.P10505165317384689183

`A070034(n+1)-A070035(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A070036.P10505165317384689183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070034 (n + 1) - A070035 (n + 1)

end

end A070036.P10505165317384689183

/-! ## A070036.P6693836293258168951

`A000120(A070034(n+1))`
-/

namespace A070036.P6693836293258168951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A070034 (n + 1)).toNat

end

end A070036.P6693836293258168951

/-! ## A070036.P3496731093207759666

`A048881(A070034(n+1)-1)+1`
-/

namespace A070036.P3496731093207759666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048881 (A070034 (n + 1) - 1).toNat + 1

end

end A070036.P3496731093207759666

/-! ## A070036.P14759868476562239520

`A070034(A000027(n+1))-A011371(A070034(n+1))`
-/

namespace A070036.P14759868476562239520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070034 (A000027 (n + 1)).toNat - A011371 (A070034 (n + 1)).toNat

end

end A070036.P14759868476562239520

/-! ## A070036.P9939320477155638915

`A070034(n+1)-A011371(A070034(n+1))%A000079(n)`
-/

namespace A070036.P9939320477155638915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070034 (n + 1) - Int.tmod (A011371 (A070034 (n + 1)).toNat) (A000079 n)

end

end A070036.P9939320477155638915

/-! ## A070036.P15195413553967812433

`(A070034(n+1)-A011371(A070034(n+1)))%A095323(n+1)`
-/

namespace A070036.P15195413553967812433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A070034 (n + 1) - A011371 (A070034 (n + 1)).toNat) (A095323 (n + 1))

end

end A070036.P15195413553967812433

/-! ## A070036.P3008231127255289485

`A048881(2*A070034(n+1))`
-/

namespace A070036.P3008231127255289485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048881 (2 * A070034 (n + 1)).toNat

end

end A070036.P3008231127255289485

/-! ## A070036.P10653361086002448538

`A048881(lcm(2, A070034(n+1)))`
-/

namespace A070036.P10653361086002448538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048881 (Int.lcm 2 (A070034 (n + 1)))

end

end A070036.P10653361086002448538

/-!
# A070038: a(n) = sum of divisors of n that are at least sqrt(n).

The programs for A070038, there is no canonical definition to state claims against.
-/

/-! ## A070038.P6944174277466520234

`∑{d}[n+1, #]-A070039(n+1)`
-/

namespace A070038.P6944174277466520234
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) - A070039 (n + 1)

end

end A070038.P6944174277466520234

/-! ## A070038.P5428543712096058871

`A079667(n+1)+A066839(n+1)`
-/

namespace A070038.P5428543712096058871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079667 (n + 1) + A066839 (n + 1)

end

end A070038.P5428543712096058871

/-! ## A070038.P12444711902315940662

`A000203(n+1)-A070039(n+1)`
-/

namespace A070038.P12444711902315940662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A070039 (n + 1)

end

end A070038.P12444711902315940662

/-! ## A070038.P5512585314285095097

`A060866(n+1)-A066839(n+1)`
-/

namespace A070038.P5512585314285095097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060866 (n + 1) - A066839 (n + 1)

end

end A070038.P5512585314285095097

/-! ## A070038.P16785540273288349431

`A117003(n+1)-A238535(n+1)`
-/

namespace A070038.P16785540273288349431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117003 (n + 1) - A238535 (n + 1)

end

end A070038.P16785540273288349431

/-! ## A070038.P1154734811870916559

`A088580(n+1)-(A070039(n+1)+1)`
-/

namespace A070038.P1154734811870916559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088580 (n + 1) - (A070039 (n + 1) + 1)

end

end A070038.P1154734811870916559

/-! ## A070038.P10485026428736281518

`(A079667(n+1)+A060866(n+1))/2`
-/

namespace A070038.P10485026428736281518
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A079667 (n + 1) + A060866 (n + 1) : ℚ) / 2

end

end A070038.P10485026428736281518

/-! ## A070038.P16036501635483649372

`A001065(n+1)+1+n-A070039(n+1)`
-/

namespace A070038.P16036501635483649372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1) + 1 + (n : ℤ) - A070039 (n + 1)

end

end A070038.P16036501635483649372

/-! ## A070038.P952385127850537498

`A155085(n+1)-(n+1)-A070039(n+1)`
-/

namespace A070038.P952385127850537498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155085 (n + 1) - (n + 1 : ℤ) - A070039 (n + 1)

end

end A070038.P952385127850537498

/-! ## A070038.P12291928934157899105

`A064987(n+1)/(n+1)-A070039(n+1)`
-/

namespace A070038.P12291928934157899105
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064987 (n + 1) : ℚ) / (n + 1 : ℚ) - (A070039 (n + 1) : ℚ)

end

end A070038.P12291928934157899105

/-! ## A070038.P9389203434418277942

`∑{d}[n+1, A064944(#)*A178450((n+1)/#)]`
-/

namespace A070038.P9389203434418277942
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A064944 d * A178450 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A070038.P9389203434418277942

/-! ## A070038.P15578111824672239879

`2*(n+1)-A033879(n+1)-A070039(n+1)`
-/

namespace A070038.P15578111824672239879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - A033879 (n + 1) - A070039 (n + 1)

end

end A070038.P15578111824672239879

/-! ## A070038.P836898321063599202

`A000203(n+1)+A037213(n+1)-A066839(n+1)`
-/

namespace A070038.P836898321063599202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) + (A037213 (n + 1) - A066839 (n + 1))

end

end A070038.P836898321063599202

/-! ## A070038.P311442401057220322

`A034448(n+1)+A048146(n+1)-A070039(n+1)`
-/

namespace A070038.P311442401057220322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034448 (n + 1) + (A048146 (n + 1) - A070039 (n + 1))

end

end A070038.P311442401057220322

/-! ## A070038.P17532945200961411862

`A000203(n+1)+A066839(n+1)-A117004(n+1)`
-/

namespace A070038.P17532945200961411862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) + (A066839 (n + 1) - A117004 (n + 1))

end

end A070038.P17532945200961411862

/-! ## A070038.P9483468175155230410

`A123327(n+1)-(A070039(n+1)+A004125(n+1))`
-/

namespace A070038.P9483468175155230410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123327 (n + 1) - (A070039 (n + 1) + A004125 (n + 1))

end

end A070038.P9483468175155230410

/-! ## A070038.P4200172062904121687

`A050449(n+1)+A082052(n+1)-A070039(n+1)`
-/

namespace A070038.P4200172062904121687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050449 (n + 1) + (A082052 (n + 1) - A070039 (n + 1))

end

end A070038.P4200172062904121687

/-! ## A070038.P7309847539031855756

`A000593(n+1)+A146076(n+1)-A070039(n+1)`
-/

namespace A070038.P7309847539031855756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000593 (n + 1) + (A146076 (n + 1) - A070039 (n + 1))

end

end A070038.P7309847539031855756

/-! ## A070038.P10158789032608246323

`A079667(n+1)+A117004(n+1)-A070039(n+1)`
-/

namespace A070038.P10158789032608246323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079667 (n + 1) + (A117004 (n + 1) - A070039 (n + 1))

end

end A070038.P10158789032608246323

/-! ## A070038.P16365595273697908215

`A048250(n+1)+A162296(n+1)-A070039(n+1)`
-/

namespace A070038.P16365595273697908215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048250 (n + 1) + (A162296 (n + 1) - A070039 (n + 1))

end

end A070038.P16365595273697908215

/-!
# A070039: Sum of the divisors of n that are < sqrt(n).

The programs for A070039, there is no canonical definition to state claims against.
-/

/-! ## A070039.P4114878800283860445

`A000203(n+1)-A070038(n+1)`
-/

namespace A070039.P4114878800283860445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A070038 (n + 1)

end

end A070039.P4114878800283860445

/-! ## A070039.P6795219077203485761

`A066839(n+1)-A037213(n+1)`
-/

namespace A070039.P6795219077203485761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066839 (n + 1) - A037213 (n + 1)

end

end A070039.P6795219077203485761

/-! ## A070039.P7482134104423651362

`Δ[A160664(n)]-A070038(n+1)`
-/

namespace A070039.P7482134104423651362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A070038 (n + 1)

end

end A070039.P7482134104423651362

/-! ## A070039.P5167515974545471773

`A117004(n+1)-A066839(n+1)`
-/

namespace A070039.P5167515974545471773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117004 (n + 1) - A066839 (n + 1)

end

end A070039.P5167515974545471773

/-! ## A070039.P5616737850546549041

`A238535(n+1)-A079667(n+1)`
-/

namespace A070039.P5616737850546549041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238535 (n + 1) - A079667 (n + 1)

end

end A070039.P5616737850546549041

/-! ## A070039.P5248586376858257917

`A337177(n+1)-A238535(n+1)`
-/

namespace A070039.P5248586376858257917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337177 (n + 1) - A238535 (n + 1)

end

end A070039.P5248586376858257917

/-! ## A070039.P13807640794135267216

`A088580(n+1)-(A070038(n+1)+1)`
-/

namespace A070039.P13807640794135267216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088580 (n + 1) - (A070038 (n + 1) + 1)

end

end A070039.P13807640794135267216

/-! ## A070039.P14876344334965444932

`A001065(n+1)+1+n-A070038(n+1)`
-/

namespace A070039.P14876344334965444932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1) + 1 + (n : ℤ) - A070038 (n + 1)

end

end A070039.P14876344334965444932

/-! ## A070039.P735778055280537216

`A064987(n+1)/(n+1)-A070038(n+1)`
-/

namespace A070039.P735778055280537216
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064987 (n + 1) : ℚ) / (n + 1 : ℚ) - (A070038 (n + 1) : ℚ)

end

end A070039.P735778055280537216

/-! ## A070039.P8234145354661543340

`∑{d}[n+1, A064947(#)*A178450((n+1)/#)]`
-/

namespace A070039.P8234145354661543340
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A064947 d * A178450 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A070039.P8234145354661543340

/-! ## A070039.P6501175683585299394

`∑{d}[n+1, A037213(#)*A334019((n+1)/#)]`
-/

namespace A070039.P6501175683585299394
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A037213 d * A334019 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A070039.P6501175683585299394

/-! ## A070039.P8721414966241088578

`2*(n+1)-A033879(n+1)-A070038(n+1)`
-/

namespace A070039.P8721414966241088578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - A033879 (n + 1) - A070038 (n + 1)

end

end A070039.P8721414966241088578

/-! ## A070039.P17533755898008981414

`A000203(A000027(n+1))%A070038(n+1)`
-/

namespace A070039.P17533755898008981414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000203 (A000027 (n + 1)).toNat) (A070038 (n + 1))

end

end A070039.P17533755898008981414

/-! ## A070039.P5835767144454902919

`A000203(n+1)-(A079667(n+1)+A066839(n+1))`
-/

namespace A070039.P5835767144454902919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - (A079667 (n + 1) + A066839 (n + 1))

end

end A070039.P5835767144454902919

/-! ## A070039.P2461648004311000886

`A034448(n+1)+A048146(n+1)-A070038(n+1)`
-/

namespace A070039.P2461648004311000886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034448 (n + 1) + (A048146 (n + 1) - A070038 (n + 1))

end

end A070039.P2461648004311000886

/-! ## A070039.P400589887497463705

`A060866(n+1)-(A070038(n+1)+A037213(n+1))`
-/

namespace A070039.P400589887497463705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060866 (n + 1) - (A070038 (n + 1) + A037213 (n + 1))

end

end A070039.P400589887497463705

/-! ## A070039.P11136934645865655322

`A070038(n+1)-(A079667(n+1)+A037213(n+1))`
-/

namespace A070039.P11136934645865655322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070038 (n + 1) - (A079667 (n + 1) + A037213 (n + 1))

end

end A070039.P11136934645865655322

/-! ## A070039.P3903366555363101978

`A050449(n+1)+A082052(n+1)-A070038(n+1)`
-/

namespace A070039.P3903366555363101978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050449 (n + 1) + (A082052 (n + 1) - A070038 (n + 1))

end

end A070039.P3903366555363101978

/-! ## A070039.P14054045902807223678

`A000593(n+1)+A146076(n+1)-A070038(n+1)`
-/

namespace A070039.P14054045902807223678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000593 (n + 1) + (A146076 (n + 1) - A070038 (n + 1))

end

end A070039.P14054045902807223678

/-! ## A070039.P4576250338011335838

`A070038(n+1)+A117004(n+1)-A060866(n+1)`
-/

namespace A070039.P4576250338011335838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070038 (n + 1) + (A117004 (n + 1) - A060866 (n + 1))

end

end A070039.P4576250338011335838

/-!
# A070040: Where records occur in A092419.

The programs for A070040, there is no canonical definition to state claims against.
-/

/-! ## A070040.P12059770695395922988

`∩[∑[A050227(n+1)], A333620(n+1)]`
-/

namespace A070040.P12059770695395922988
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050227 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333620 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f3 j = (x : ℤ)) n

end

end A070040.P12059770695395922988

/-!
# A070041: Permutation of natural numbers induced by the automorphism df->bf (from the depth-first to breadth-first encoding) acting on the rooted planar binary trees encoded by A014486. (with one-based indexing).

The programs for A070041, there is no canonical definition to state claims against.
-/

/-! ## A070041.P1015400648141654414

`∑{e}[A007283(n), A082363(#)]`
-/

namespace A070041.P1015400648141654414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007283 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A082363 (Nat.factorization (f1 n).natAbs p)

end

end A070041.P1015400648141654414

/-! ## A070041.P5282760445619377908

`A082363(n)+A072189(n)!`
-/

namespace A070041.P5282760445619377908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082363 n + (Nat.factorial (A072189 n).toNat : ℤ)

end

end A070041.P5282760445619377908

/-! ## A070041.P5142084652781146675

`A082363(n)%A128405(n+1)+1`
-/

namespace A070041.P5142084652781146675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A082363 n) (A128405 (n + 1)) + 1

end

end A070041.P5142084652781146675

/-! ## A070041.P9541693825732664126

`(A082363(n)+1)%A363170(n+2)`
-/

namespace A070041.P9541693825732664126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A082363 n + 1) (A363170 (n + 2))

end

end A070041.P9541693825732664126

/-! ## A070041.P1937674305522374098

`A082363(n)+A049347(A022086(n))`
-/

namespace A070041.P1937674305522374098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082363 n + A049347 (A022086 n).toNat

end

end A070041.P1937674305522374098

/-!
# A070043: Numbers of the form 6*j*k+j+k for positive integers j and k.

The programs for A070043, the canonical program `A070043.P2240004718848674346` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070043 has offset 1).

The definition of A070043 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4477 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A070043.P2240004718848674346

`lt[2, A359309(n+1)]`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A070043

/-- `lt[2, A359309(n+1)]` -/
def P2240004718848674346.Spec : Prop :=
  ∀ n, (P2240004718848674346.a n : ℤ) = A070043 (n + 1)

theorem P2240004718848674346.correct : P2240004718848674346.Spec := by
  intro n
  simp only [A070043, Nat.add_sub_cancel]

end A070043

/-! ## A070043.P10894288192537430246

`lt[2, A279060(A016921(n))]`
-/

namespace A070043.P10894288192537430246
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279060 (A016921 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A070043.P10894288192537430246

namespace A070043

/-- `lt[2, A279060(A016921(n))]` -/
def P10894288192537430246.Spec : Prop :=
  ∀ n, (P10894288192537430246.a n : ℤ) = A070043 (n + 1)

end A070043

/-! ## A070043.P18343832558306542999

`lt[2, A279060(A308196(n))]`
-/

namespace A070043.P18343832558306542999
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279060 (A308196 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A070043.P18343832558306542999

namespace A070043

/-- `lt[2, A279060(A308196(n))]` -/
def P18343832558306542999.Spec : Prop :=
  ∀ n, (P18343832558306542999.a n : ℤ) = A070043 (n + 1)

end A070043

/-! ## A070043.P9504527124462511471

`lt[2, A359307(3*n+1)]`
-/

namespace A070043.P9504527124462511471
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359307 (3 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A070043.P9504527124462511471

namespace A070043

/-- `lt[2, A359307(3*n+1)]` -/
def P9504527124462511471.Spec : Prop :=
  ∀ n, (P9504527124462511471.a n : ℤ) = A070043 (n + 1)

end A070043

/-! ## A070043.P5605243394470920358

`lt[2, A001817(A005408(3*n))]`
-/

namespace A070043.P5605243394470920358
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001817 (A005408 (3 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A070043.P5605243394470920358

namespace A070043

/-- `lt[2, A001817(A005408(3*n))]` -/
def P5605243394470920358.Spec : Prop :=
  ∀ n, (P5605243394470920358.a n : ℤ) = A070043 (n + 1)

end A070043

/-! ## A070043.P1592061961391537659

`lt[1, A261029(A019426(2*n+1))]`
-/

namespace A070043.P1592061961391537659
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261029 (A019426 (2 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A070043.P1592061961391537659

namespace A070043

/-- `lt[1, A261029(A019426(2*n+1))]` -/
def P1592061961391537659.Spec : Prop :=
  ∀ n, (P1592061961391537659.a n : ℤ) = A070043 (n + 1)

end A070043

/-! ## A070043.P7008697134864267548

`lt[A014578(3*n+2), A261029(A016921(n))]`
-/

namespace A070043.P7008697134864267548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014578 (3 * n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261029 (A016921 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A070043.P7008697134864267548

namespace A070043

/-- `lt[A014578(3*n+2), A261029(A016921(n))]` -/
def P7008697134864267548.Spec : Prop :=
  ∀ n, (P7008697134864267548.a n : ℤ) = A070043 (n + 1)

end A070043

/-! ## A070043.P13879479485099227432

`A199859(n+1)-1`
-/

namespace A070043.P13879479485099227432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199859 (n + 1) - 1

end

end A070043.P13879479485099227432

namespace A070043

/-- `A199859(n+1)-1` -/
def P13879479485099227432.Spec : Prop :=
  ∀ n, P13879479485099227432.a n = A070043 (n + 1)

end A070043

/-! ## A070043.P12838008247879620347

`A023443(A199859(n+1))`
-/

namespace A070043.P12838008247879620347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A199859 (n + 1)).toNat

end

end A070043.P12838008247879620347

namespace A070043

/-- `A023443(A199859(n+1))` -/
def P12838008247879620347.Spec : Prop :=
  ∀ n, P12838008247879620347.a n = A070043 (n + 1)

end A070043

/-!
# A070044: Numbers k such that ceiling(k^1.5) is prime.

The programs for A070044, the canonical program `A070044.P6218347205458979483` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070044 has offset 0).

The definition of A070044 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 239 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A070044.P6218347205458979483

`eq[ceil(n^(3/2)), A006530(floor(n^(3/2))+1)]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A070044

/-- `eq[ceil(n^(3/2)), A006530(floor(n^(3/2))+1)]` -/
def P6218347205458979483.Spec : Prop :=
  ∀ n, (P6218347205458979483.a n : ℤ) = A070044 n

theorem P6218347205458979483.correct : P6218347205458979483.Spec := by
  intro n
  simp only [A070044]

end A070044

/-! ## A070044.P2997573655460525294

`eq[ceil(n^(3/2)), A020639(floor(n^(3/2))+1)]`
-/

namespace A070044.P2997573655460525294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℝ) ^ ((3 : ℚ) / 2 : ℝ)⌉

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (⌊(n : ℝ) ^ ((3 : ℚ) / 2 : ℝ)⌋ + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A070044.P2997573655460525294

namespace A070044

/-- `eq[ceil(n^(3/2)), A020639(floor(n^(3/2))+1)]` -/
def P2997573655460525294.Spec : Prop :=
  ∀ n, (P2997573655460525294.a n : ℤ) = A070044 n

end A070044

/-! ## A070044.P7208232310189033206

`eq[2, A000005(A185549(n+1))]+1`
-/

namespace A070044.P7208232310189033206
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A185549 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A070044.P7208232310189033206

namespace A070044

/-- `eq[2, A000005(A185549(n+1))]+1` -/
def P7208232310189033206.Spec : Prop :=
  ∀ n, (P7208232310189033206.a n : ℤ) = A070044 n

end A070044

/-! ## A070044.P7026774819570190681

`A054846(p?[ceil(sqrt(n^3))])`
-/

namespace A070044.P7026774819570190681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (n ^ 3 : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054846 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A070044.P7026774819570190681

namespace A070044

/-- `A054846(p?[ceil(sqrt(n^3))])` -/
def P7026774819570190681.Spec : Prop :=
  ∀ n, P7026774819570190681.a n = A070044 n

end A070044

/-! ## A070044.P7518950861631219416

`A100196(p?[ceil(sqrt(n^3))])`
-/

namespace A070044.P7518950861631219416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (n ^ 3 : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100196 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A070044.P7518950861631219416

namespace A070044

/-- `A100196(p?[ceil(sqrt(n^3))])` -/
def P7518950861631219416.Spec : Prop :=
  ∀ n, P7518950861631219416.a n = A070044 n

end A070044

/-! ## A070044.P12767272348617214618

`eq[ceil(n^(3/2)), A014963(floor(n^(3/2))+1)]`
-/

namespace A070044.P12767272348617214618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℝ) ^ ((3 : ℚ) / 2 : ℝ)⌉

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (⌊(n : ℝ) ^ ((3 : ℚ) / 2 : ℝ)⌋ + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A070044.P12767272348617214618

namespace A070044

/-- `eq[ceil(n^(3/2)), A014963(floor(n^(3/2))+1)]` -/
def P12767272348617214618.Spec : Prop :=
  ∀ n, (P12767272348617214618.a n : ℤ) = A070044 n

end A070044

/-! ## A070044.P14915612161992862930

`A054846(A070045(n+1))`
-/

namespace A070044.P14915612161992862930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054846 (A070045 (n + 1)).toNat

end

end A070044.P14915612161992862930

namespace A070044

/-- `A054846(A070045(n+1))` -/
def P14915612161992862930.Spec : Prop :=
  ∀ n, P14915612161992862930.a n = A070044 n

end A070044

/-! ## A070044.P6260490357254455770

`A095396(p?[A185549(n)]+1)`
-/

namespace A070044.P6260490357254455770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185549 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095396 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 1).toNat

end

end A070044.P6260490357254455770

namespace A070044

/-- `A095396(p?[A185549(n)]+1)` -/
def P6260490357254455770.Spec : Prop :=
  ∀ n, P6260490357254455770.a n = A070044 n

end A070044

/-! ## A070044.P14137107254750078015

`record[(n+2)%A014963(A185549(n+2))]`
-/

namespace A070044.P14137107254750078015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 2 : ℤ) (A014963 (A185549 (n + 2)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A070044.P14137107254750078015

namespace A070044

/-- `record[(n+2)%A014963(A185549(n+2))]` -/
def P14137107254750078015.Spec : Prop :=
  ∀ n, P14137107254750078015.a n = A070044 n

end A070044

/-! ## A070044.P97556012415777241

`eq[A014963(A077121(n)), A185549(n)]`
-/

namespace A070044.P97556012415777241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A077121 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185549 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A070044.P97556012415777241

namespace A070044

/-- `eq[A014963(A077121(n)), A185549(n)]` -/
def P97556012415777241.Spec : Prop :=
  ∀ n, (P97556012415777241.a n : ℤ) = A070044 n

end A070044

/-!
# A070045: Primes of the form ceiling(k^1.5) for some integer k.

The programs for A070045, the canonical program `A070045.P5901825577952937955` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070045 has offset 1).

The definition of A070045 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 889 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A070045.P13797199068741007252

`p?[ceil(sqrt(n^3))]`
-/

namespace A070045.P13797199068741007252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (n ^ 3 : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A070045.P13797199068741007252

namespace A070045

/-- `p?[ceil(sqrt(n^3))]` -/
def P13797199068741007252.Spec : Prop :=
  ∀ n, P13797199068741007252.a n = A070045 (n + 1)

end A070045

/-! ## A070045.P12864581467936043766

`or(1, p?[ceil(n*sqrt(n))])`
-/

namespace A070045.P12864581467936043766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℝ) * Real.sqrt (n : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A070045.P12864581467936043766

namespace A070045

/-- `or(1, p?[ceil(n*sqrt(n))])` -/
def P12864581467936043766.Spec : Prop :=
  ∀ n, P12864581467936043766.a n = A070045 (n + 1)

end A070045

/-! ## A070045.P18177944763089466833

`A077121(A070044(n))`
-/

namespace A070045.P18177944763089466833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077121 (A070044 n).toNat

end

end A070045.P18177944763089466833

namespace A070045

/-- `A077121(A070044(n))` -/
def P18177944763089466833.Spec : Prop :=
  ∀ n, P18177944763089466833.a n = A070045 (n + 1)

end A070045

/-! ## A070045.P5901825577952937955

`p?[A185549(n)]%A155014(n+2)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A070045

/-- `p?[A185549(n)]%A155014(n+2)` -/
def P5901825577952937955.Spec : Prop :=
  ∀ n, P5901825577952937955.a n = A070045 (n + 1)

theorem P5901825577952937955.correct : P5901825577952937955.Spec := by
  intro n
  simp only [A070045, Nat.add_sub_cancel]

end A070045

/-! ## A070045.P1382414322087912599

`p?[A185549(n)]-val(A006530(n+1), 64)`
-/

namespace A070045.P1382414322087912599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185549 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - (SequenceMachineLib.valuation (A006530 (n + 1)).toNat 64 : ℤ)

end

end A070045.P1382414322087912599

namespace A070045

/-- `p?[A185549(n)]-val(A006530(n+1), 64)` -/
def P1382414322087912599.Spec : Prop :=
  ∀ n, P1382414322087912599.a n = A070045 (n + 1)

end A070045

/-! ## A070045.P13834819707467450294

`∩[A004139(n+1), A077121(n)]`
-/

namespace A070045.P13834819707467450294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077121 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A070045.P13834819707467450294

namespace A070045

/-- `∩[A004139(n+1), A077121(n)]` -/
def P13834819707467450294.Spec : Prop :=
  ∀ n, (P13834819707467450294.a n : ℤ) = A070045 (n + 1)

end A070045

/-! ## A070045.P12451137508610235608

`∩[A065091(n+1), A077121(n)]`
-/

namespace A070045.P12451137508610235608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077121 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A070045.P12451137508610235608

namespace A070045

/-- `∩[A065091(n+1), A077121(n)]` -/
def P12451137508610235608.Spec : Prop :=
  ∀ n, (P12451137508610235608.a n : ℤ) = A070045 (n + 1)

end A070045

/-! ## A070045.P17731772052668769587

`∩[A065396(n+1), A077121(n)]`
-/

namespace A070045.P17731772052668769587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065396 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077121 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A070045.P17731772052668769587

namespace A070045

/-- `∩[A065396(n+1), A077121(n)]` -/
def P17731772052668769587.Spec : Prop :=
  ∀ n, (P17731772052668769587.a n : ℤ) = A070045 (n + 1)

end A070045

/-! ## A070045.P17755873125191547540

`∩[A106119(n+1), A077121(n)]`
-/

namespace A070045.P17755873125191547540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106119 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077121 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A070045.P17755873125191547540

namespace A070045

/-- `∩[A106119(n+1), A077121(n)]` -/
def P17755873125191547540.Spec : Prop :=
  ∀ n, (P17755873125191547540.a n : ℤ) = A070045 (n + 1)

end A070045

/-! ## A070045.P13955916144714332022

`∩[A000040(n+1), A185549(n)]`
-/

namespace A070045.P13955916144714332022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185549 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A070045.P13955916144714332022

namespace A070045

/-- `∩[A000040(n+1), A185549(n)]` -/
def P13955916144714332022.Spec : Prop :=
  ∀ n, (P13955916144714332022.a n : ℤ) = A070045 (n + 1)

end A070045

/-! ## A070045.P14860707913590042518

`∩[A004139(n+1), A185549(n)]`
-/

namespace A070045.P14860707913590042518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185549 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A070045.P14860707913590042518

namespace A070045

/-- `∩[A004139(n+1), A185549(n)]` -/
def P14860707913590042518.Spec : Prop :=
  ∀ n, (P14860707913590042518.a n : ℤ) = A070045 (n + 1)

end A070045

/-! ## A070045.P3274498611247745792

`∩[A140826(n+1), A077121(n)]`
-/

namespace A070045.P3274498611247745792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140826 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077121 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A070045.P3274498611247745792

namespace A070045

/-- `∩[A140826(n+1), A077121(n)]` -/
def P3274498611247745792.Spec : Prop :=
  ∀ n, (P3274498611247745792.a n : ℤ) = A070045 (n + 1)

end A070045

/-! ## A070045.P3018763806545845231

`∩[A045319(n+1), A185549(n)]`
-/

namespace A070045.P3018763806545845231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185549 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A070045.P3018763806545845231

namespace A070045

/-- `∩[A045319(n+1), A185549(n)]` -/
def P3018763806545845231.Spec : Prop :=
  ∀ n, (P3018763806545845231.a n : ℤ) = A070045 (n + 1)

end A070045

/-! ## A070045.P8070557709866501113

`∩[A065091(n+1), A185549(n)]`
-/

namespace A070045.P8070557709866501113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185549 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A070045.P8070557709866501113

namespace A070045

/-- `∩[A065091(n+1), A185549(n)]` -/
def P8070557709866501113.Spec : Prop :=
  ∀ n, (P8070557709866501113.a n : ℤ) = A070045 (n + 1)

end A070045

/-! ## A070045.P3301187509569825170

`∩[A065396(n+1), A185549(n)]`
-/

namespace A070045.P3301187509569825170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065396 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185549 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A070045.P3301187509569825170

namespace A070045

/-- `∩[A065396(n+1), A185549(n)]` -/
def P3301187509569825170.Spec : Prop :=
  ∀ n, (P3301187509569825170.a n : ℤ) = A070045 (n + 1)

end A070045

/-! ## A070045.P8407937846591071714

`∩[A106118(n+1), A185549(n)]`
-/

namespace A070045.P8407937846591071714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106118 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185549 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A070045.P8407937846591071714

namespace A070045

/-- `∩[A106118(n+1), A185549(n)]` -/
def P8407937846591071714.Spec : Prop :=
  ∀ n, (P8407937846591071714.a n : ℤ) = A070045 (n + 1)

end A070045

/-! ## A070045.P6304509118792096147

`∩[A106119(n+1), A185549(n)]`
-/

namespace A070045.P6304509118792096147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106119 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185549 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A070045.P6304509118792096147

namespace A070045

/-- `∩[A106119(n+1), A185549(n)]` -/
def P6304509118792096147.Spec : Prop :=
  ∀ n, (P6304509118792096147.a n : ℤ) = A070045 (n + 1)

end A070045

/-!
# A070046: Number of primes between prime(n) and 2*prime(n) exclusive.

The programs for A070046, the canonical program `A070046.P5794988103684771228` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070046 has offset 1).

The definition of A070046 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A070046.P5794988103684771228

`A063124(n+1)-1`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A070046

/-- `A063124(n+1)-1` -/
def P5794988103684771228.Spec : Prop :=
  ∀ n, P5794988103684771228.a n = A070046 (n + 1)

theorem P5794988103684771228.correct : P5794988103684771228.Spec := by
  intro n
  simp only [A070046, Nat.add_sub_cancel]

end A070046

/-! ## A070046.P13725626415013342578

`A000720(2*A000040(n+1))-(n+1)`
-/

namespace A070046.P13725626415013342578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (2 * A000040 (n + 1)).toNat - (n + 1 : ℤ)

end

end A070046.P13725626415013342578

namespace A070046

/-- `A000720(2*A000040(n+1))-(n+1)` -/
def P13725626415013342578.Spec : Prop :=
  ∀ n, P13725626415013342578.a n = A070046 (n + 1)

theorem P13725626415013342578.correct : P13725626415013342578.Spec := by
  intro n
  simp only [A070046, Nat.add_sub_cancel, A070046.P13725626415013342578.a, A070046.P5794988103684771228.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A063124, A063124.P9970457058300728251.a, A331677, A331677.P6402599086706022467.a, A020900, A020900.P12967914466540950521.a, A100484, A100484.P9678625670825099636.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A070046

/-! ## A070046.P11609111513733425453

`A060715(A000040(n+1))`
-/

namespace A070046.P11609111513733425453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060715 (A000040 (n + 1)).toNat

end

end A070046.P11609111513733425453

namespace A070046

/-- `A060715(A000040(n+1))` -/
def P11609111513733425453.Spec : Prop :=
  ∀ n, P11609111513733425453.a n = A070046 (n + 1)

end A070046

/-! ## A070046.P3973464900692054139

`n-A331677(n+1)`
-/

namespace A070046.P3973464900692054139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A331677 (n + 1)

end

end A070046.P3973464900692054139

namespace A070046

/-- `n-A331677(n+1)` -/
def P3973464900692054139.Spec : Prop :=
  ∀ n, P3973464900692054139.a n = A070046 (n + 1)

theorem P3973464900692054139.correct : P3973464900692054139.Spec := by
  intro n
  simp only [A070046, Nat.add_sub_cancel, A070046.P3973464900692054139.a, A070046.P5794988103684771228.a, A063124, A063124.P9970457058300728251.a, A331677, A331677.P6402599086706022467.a, A020900, A020900.P12967914466540950521.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A100484, A100484.P9678625670825099636.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A070046

/-! ## A070046.P1027405173404532811

`A020900(n+1)-(n+1)`
-/

namespace A070046.P1027405173404532811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020900 (n + 1) - (n + 1 : ℤ)

end

end A070046.P1027405173404532811

namespace A070046

/-- `A020900(n+1)-(n+1)` -/
def P1027405173404532811.Spec : Prop :=
  ∀ n, P1027405173404532811.a n = A070046 (n + 1)

theorem P1027405173404532811.correct : P1027405173404532811.Spec := by
  intro n
  simp only [A070046, Nat.add_sub_cancel, A070046.P1027405173404532811.a, A070046.P5794988103684771228.a, A020900, A020900.P12967914466540950521.a, A063124, A063124.P9970457058300728251.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A100484, A100484.P9678625670825099636.a, A331677, A331677.P6402599086706022467.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A070046

/-! ## A070046.P15024993632842056744

`1-A334051(n+1)+n`
-/

namespace A070046.P15024993632842056744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A334051 (n + 1) + (n : ℤ)

end

end A070046.P15024993632842056744

namespace A070046

/-- `1-A334051(n+1)+n` -/
def P15024993632842056744.Spec : Prop :=
  ∀ n, P15024993632842056744.a n = A070046 (n + 1)

theorem P15024993632842056744.correct : P15024993632842056744.Spec := by
  intro n
  simp only [A070046, Nat.add_sub_cancel, A070046.P15024993632842056744.a, A070046.P5794988103684771228.a, A063124, A063124.P9970457058300728251.a, A334051, A334051.P2829152517033935229.a, A331677, A331677.P6402599086706022467.a, A020900, A020900.P12967914466540950521.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A100484, A100484.P9678625670825099636.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A070046

/-! ## A070046.P14361715518160577055

`A298862(n+1)-2*(n+1)`
-/

namespace A070046.P14361715518160577055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298862 (n + 1) - (2 * (n + 1) : ℤ)

end

end A070046.P14361715518160577055

namespace A070046

/-- `A298862(n+1)-2*(n+1)` -/
def P14361715518160577055.Spec : Prop :=
  ∀ n, P14361715518160577055.a n = A070046 (n + 1)

theorem P14361715518160577055.correct : P14361715518160577055.Spec := by
  intro n
  simp only [A070046, Nat.add_sub_cancel, A070046.P14361715518160577055.a, A070046.P5794988103684771228.a, A063124, A063124.P9970457058300728251.a, A298862, A298862.P8575127337279644587.a, A020900, A020900.P12967914466540950521.a, A331677, A331677.P6402599086706022467.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A100484, A100484.P9678625670825099636.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A070046

/-! ## A070046.P3808313358192891303

`a(n-1)+A102820(n)-1` with `a(0)=1`
-/

namespace A070046.P3808313358192891303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A102820 n - 1)

end

end A070046.P3808313358192891303

namespace A070046

/-- `a(n-1)+A102820(n)-1` -/
def P3808313358192891303.Spec : Prop :=
  ∀ n, P3808313358192891303.a n = A070046 (n + 1)

end A070046

/-! ## A070046.P11836168959569189537

`n-A023443(A334051(n+1))`
-/

namespace A070046.P11836168959569189537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A023443 (A334051 (n + 1)).toNat

end

end A070046.P11836168959569189537

namespace A070046

/-- `n-A023443(A334051(n+1))` -/
def P11836168959569189537.Spec : Prop :=
  ∀ n, P11836168959569189537.a n = A070046 (n + 1)

end A070046

/-! ## A070046.P1395649584618280192

`A006093(n+1)-A246514(n+1)`
-/

namespace A070046.P1395649584618280192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1) - A246514 (n + 1)

end

end A070046.P1395649584618280192

namespace A070046

/-- `A006093(n+1)-A246514(n+1)` -/
def P1395649584618280192.Spec : Prop :=
  ∀ n, P1395649584618280192.a n = A070046 (n + 1)

theorem P1395649584618280192.correct : P1395649584618280192.Spec := by
  intro n
  simp only [A070046, Nat.add_sub_cancel, A070046.P1395649584618280192.a, A070046.P5794988103684771228.a, A006093, A006093.P2906174024863549003.a, A063124, A063124.P9970457058300728251.a, A246514, A246514.P626080667968607195.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A331677, A331677.P6402599086706022467.a, A020900, A020900.P12967914466540950521.a, A100484, A100484.P9678625670825099636.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A070046

/-! ## A070046.P18199576380302723287

`A028310(A020900(n+1)%(n+1))`
-/

namespace A070046.P18199576380302723287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (Int.tmod (A020900 (n + 1)) (n + 1 : ℤ)).toNat

end

end A070046.P18199576380302723287

namespace A070046

/-- `A028310(A020900(n+1)%(n+1))` -/
def P18199576380302723287.Spec : Prop :=
  ∀ n, P18199576380302723287.a n = A070046 (n + 1)

end A070046

/-! ## A070046.P10288621716179451997

`A134591(n+1)-(A065897(n+1)+1)`
-/

namespace A070046.P10288621716179451997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134591 (n + 1) - (A065897 (n + 1) + 1)

end

end A070046.P10288621716179451997

namespace A070046

/-- `A134591(n+1)-(A065897(n+1)+1)` -/
def P10288621716179451997.Spec : Prop :=
  ∀ n, P10288621716179451997.a n = A070046 (n + 1)

theorem P10288621716179451997.correct : P10288621716179451997.Spec := by
  intro n
  simp only [A070046, Nat.add_sub_cancel, A070046.P10288621716179451997.a, A070046.P5794988103684771228.a, A063124, A063124.P9970457058300728251.a, A065897, A065897.P7299211329886055703.a, A134591, A134591.P13784663667261059065.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A014689, A014689.P6286543075765329050.a, A331677, A331677.P6402599086706022467.a, A020900, A020900.P12967914466540950521.a, A100484, A100484.P9678625670825099636.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A070046

/-! ## A070046.P9573122605643045164

`A100484(n+1)-(A120632(n+1)+1)`
-/

namespace A070046.P9573122605643045164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100484 (n + 1) - (A120632 (n + 1) + 1)

end

end A070046.P9573122605643045164

namespace A070046

/-- `A100484(n+1)-(A120632(n+1)+1)` -/
def P9573122605643045164.Spec : Prop :=
  ∀ n, P9573122605643045164.a n = A070046 (n + 1)

theorem P9573122605643045164.correct : P9573122605643045164.Spec := by
  intro n
  simp only [A070046, Nat.add_sub_cancel, A070046.P9573122605643045164.a, A070046.P5794988103684771228.a, A063124, A063124.P9970457058300728251.a, A100484, A100484.P9678625670825099636.a, A120632, A120632.P1454145713146504368.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A040976, A040976.P11599754272797435513.a, A120633, A120633.P6768074309854591197.a, A331677, A331677.P6402599086706022467.a, A020900, A020900.P12967914466540950521.a, A062234, A062234.P8592873382335253705.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A070046

/-! ## A070046.P16883891329512181880

`A000040(n+1)-(A246514(n+1)+1)`
-/

namespace A070046.P16883891329512181880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - (A246514 (n + 1) + 1)

end

end A070046.P16883891329512181880

namespace A070046

/-- `A000040(n+1)-(A246514(n+1)+1)` -/
def P16883891329512181880.Spec : Prop :=
  ∀ n, P16883891329512181880.a n = A070046 (n + 1)

theorem P16883891329512181880.correct : P16883891329512181880.Spec := by
  intro n
  simp only [A070046, Nat.add_sub_cancel, A070046.P16883891329512181880.a, A070046.P5794988103684771228.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A063124, A063124.P9970457058300728251.a, A246514, A246514.P626080667968607195.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A331677, A331677.P6402599086706022467.a, A020900, A020900.P12967914466540950521.a, A100484, A100484.P9678625670825099636.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A070046

/-! ## A070046.P6472789792445205939

`A040976(n+1)+1-A246514(n+1)`
-/

namespace A070046.P6472789792445205939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (n + 1) + (1 - A246514 (n + 1))

end

end A070046.P6472789792445205939

namespace A070046

/-- `A040976(n+1)+1-A246514(n+1)` -/
def P6472789792445205939.Spec : Prop :=
  ∀ n, P6472789792445205939.a n = A070046 (n + 1)

theorem P6472789792445205939.correct : P6472789792445205939.Spec := by
  intro n
  simp only [A070046, Nat.add_sub_cancel, A070046.P6472789792445205939.a, A070046.P5794988103684771228.a, A040976, A040976.P11599754272797435513.a, A063124, A063124.P9970457058300728251.a, A246514, A246514.P626080667968607195.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A331677, A331677.P6402599086706022467.a, A020900, A020900.P12967914466540950521.a, A100484, A100484.P9678625670825099636.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A070046

/-! ## A070046.P12138915959770483020

`A008864(n+1)-(A246514(n+1)+2)`
-/

namespace A070046.P12138915959770483020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 1) - (A246514 (n + 1) + 2)

end

end A070046.P12138915959770483020

namespace A070046

/-- `A008864(n+1)-(A246514(n+1)+2)` -/
def P12138915959770483020.Spec : Prop :=
  ∀ n, P12138915959770483020.a n = A070046 (n + 1)

theorem P12138915959770483020.correct : P12138915959770483020.Spec := by
  intro n
  simp only [A070046, Nat.add_sub_cancel, A070046.P12138915959770483020.a, A070046.P5794988103684771228.a, A008864, A008864.P9177617808325052279.a, A063124, A063124.P9970457058300728251.a, A246514, A246514.P626080667968607195.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A331677, A331677.P6402599086706022467.a, A020900, A020900.P12967914466540950521.a, A100484, A100484.P9678625670825099636.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A070046

/-! ## A070046.P13929491539944858159

`A014689(n+1)-A246514(n+1)+n`
-/

namespace A070046.P13929491539944858159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014689 (n + 1) - A246514 (n + 1) + (n : ℤ)

end

end A070046.P13929491539944858159

namespace A070046

/-- `A014689(n+1)-A246514(n+1)+n` -/
def P13929491539944858159.Spec : Prop :=
  ∀ n, P13929491539944858159.a n = A070046 (n + 1)

theorem P13929491539944858159.correct : P13929491539944858159.Spec := by
  intro n
  simp only [A070046, Nat.add_sub_cancel, A070046.P13929491539944858159.a, A070046.P5794988103684771228.a, A014689, A014689.P6286543075765329050.a, A063124, A063124.P9970457058300728251.a, A246514, A246514.P626080667968607195.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A331677, A331677.P6402599086706022467.a, A020900, A020900.P12967914466540950521.a, A100484, A100484.P9678625670825099636.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A070046

/-! ## A070046.P15762103186446559117

`A076274(n+2)-A120632(n+1)`
-/

namespace A070046.P15762103186446559117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076274 (n + 2) - A120632 (n + 1)

end

end A070046.P15762103186446559117

namespace A070046

/-- `A076274(n+2)-A120632(n+1)` -/
def P15762103186446559117.Spec : Prop :=
  ∀ n, P15762103186446559117.a n = A070046 (n + 1)

end A070046

/-! ## A070046.P2154455015930057570

`A000010(A000040(n+1))-A246514(n+1)`
-/

namespace A070046.P2154455015930057570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A000040 (n + 1)).toNat - A246514 (n + 1)

end

end A070046.P2154455015930057570

namespace A070046

/-- `A000010(A000040(n+1))-A246514(n+1)` -/
def P2154455015930057570.Spec : Prop :=
  ∀ n, P2154455015930057570.a n = A070046 (n + 1)

end A070046

/-! ## A070046.P5586121381294818326

`A062234(n+1)+1-A120633(n+1)`
-/

namespace A070046.P5586121381294818326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062234 (n + 1) + (1 - A120633 (n + 1))

end

end A070046.P5586121381294818326

namespace A070046

/-- `A062234(n+1)+1-A120633(n+1)` -/
def P5586121381294818326.Spec : Prop :=
  ∀ n, P5586121381294818326.a n = A070046 (n + 1)

theorem P5586121381294818326.correct : P5586121381294818326.Spec := by
  intro n
  simp only [A070046, Nat.add_sub_cancel, A070046.P5586121381294818326.a, A070046.P5794988103684771228.a, A062234, A062234.P8592873382335253705.a, A063124, A063124.P9970457058300728251.a, A120633, A120633.P6768074309854591197.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A331677, A331677.P6402599086706022467.a, A020900, A020900.P12967914466540950521.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A100484, A100484.P9678625670825099636.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A070046

/-!
# A070047: Number of partitions of n in which no part appears more than twice and no two parts differ by 1.

The programs for A070047, there is no canonical definition to state claims against.
-/

/-! ## A070047.P12973987153826616472

`A233006(3*n)`
-/

namespace A070047.P12973987153826616472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233006 (3 * n)

end

end A070047.P12973987153826616472

/-! ## A070047.P6856926454841786576

`A233006(A005843(n)+n)%Δ[A058492(n)]`
-/

namespace A070047.P6856926454841786576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058492 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A233006 (A005843 n + (n : ℤ)).toNat) (f1 (n + 1) - f1 n)

end

end A070047.P6856926454841786576

/-! ## A070047.P2838350086308384234

`A233006(A005843(n)+n)^A001222(A008578(n+1))`
-/

namespace A070047.P2838350086308384234
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A233006 (A005843 n + (n : ℤ)).toNat : ℚ) ^ (A001222 (A008578 (n + 1)).toNat : ℤ)

end

end A070047.P2838350086308384234

/-! ## A070047.P11773586544484350199

`A233006(A005843(n)+n)/(A000035(n+1)-A000035(n))²`
-/

namespace A070047.P11773586544484350199
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A233006 (A005843 n + (n : ℤ)).toNat : ℚ) / ((A000035 (n + 1) - A000035 n) ^ 2 : ℚ)

end

end A070047.P11773586544484350199

/-! ## A070047.P12230511457889475991

`A233006(A005843(n)+n)+A008683(A001749(n+1))`
-/

namespace A070047.P12230511457889475991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233006 (A005843 n + (n : ℤ)).toNat + A008683 (A001749 (n + 1)).toNat

end

end A070047.P12230511457889475991

/-! ## A070047.P12165766815940052920

`A233006(A032766(A005843(n)))%A209726(n+1)`
-/

namespace A070047.P12165766815940052920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A233006 (A032766 (A005843 n).toNat).toNat) (A209726 (n + 1))

end

end A070047.P12165766815940052920

/-! ## A070047.P16178731007195211739

`A233006(A005843(n)+n)/A000120(A001316(n²))`
-/

namespace A070047.P16178731007195211739
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A233006 (A005843 n + (n : ℤ)).toNat : ℚ) / (A000120 (A001316 (n ^ 2)).toNat : ℚ)

end

end A070047.P16178731007195211739

/-! ## A070047.P11476115084707445468

`A000027(A233006(record[A080512(n+1)]))`
-/

namespace A070047.P11476115084707445468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080512 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A233006 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat).toNat

end

end A070047.P11476115084707445468

/-!
# A070048: Number of partitions of n into odd parts in which no part appears more than thrice.

The programs for A070048, there is no canonical definition to state claims against.
-/

/-! ## A070048.P17715225109031487574

`abs(A116498(n))`
-/

namespace A070048.P17715225109031487574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A116498 n|

end

end A070048.P17715225109031487574

/-! ## A070048.P5056963977209282941

`A033999(n)*A116498(n)`
-/

namespace A070048.P5056963977209282941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A116498 n

end

end A070048.P5056963977209282941

/-! ## A070048.P9881172314635158154

`gcd(A000038(n), A116498(n))`
-/

namespace A070048.P9881172314635158154
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A116498 n)

end

end A070048.P9881172314635158154

/-! ## A070048.P9651482570759135993

`lcm(A020985(n), A116498(n))`
-/

namespace A070048.P9651482570759135993
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A116498 n)

end

end A070048.P9651482570759135993

/-! ## A070048.P15198648713887376150

`(A004442(n)-n)*A116498(n)`
-/

namespace A070048.P15198648713887376150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004442 n - (n : ℤ)) * A116498 n

end

end A070048.P15198648713887376150

/-! ## A070048.P6754013313621828474

`A116498(Δ[A004526(n)])*A116498(n)`
-/

namespace A070048.P6754013313621828474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116498 (f1 (n + 1) - f1 n).toNat * A116498 n

end

end A070048.P6754013313621828474

/-! ## A070048.P6407296973143785008

`A116498(n)/A116498(Δ[A004526(n)]²)`
-/

namespace A070048.P6407296973143785008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A116498 n : ℚ) / (A116498 ((f1 (n + 1) - f1 n) ^ 2).toNat : ℚ)

end

end A070048.P6407296973143785008

/-! ## A070048.P666991319119803637

`A290307(∑[n+4]+2)`
-/

namespace A070048.P666991319119803637
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290307 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A070048.P666991319119803637

/-! ## A070048.P9621090070944409225

`∑[A002448(n²)]*A116498(n)`
-/

namespace A070048.P9621090070944409225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002448 (n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A116498 n

end

end A070048.P9621090070944409225

/-!
# A070049: Sum of two perfect powers.

The programs for A070049, there is no canonical definition to state claims against.
-/

/-! ## A070049.P12756840969128011222

`∪[A068537(n+1), A298591(n+1)]`
-/

namespace A070049.P12756840969128011222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068537 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298591 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A070049.P12756840969128011222

/-! ## A070049.P1977225560437339520

`∪[A068537(n+1), A391195(n+1)]`
-/

namespace A070049.P1977225560437339520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068537 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391195 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A070049.P1977225560437339520

/-! ## A070049.P10294213531966793360

`lt[0, A362426(n)]`
-/

namespace A070049.P10294213531966793360
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362426 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A070049.P10294213531966793360

/-! ## A070049.P1356316172798959921

`record[A076871(n+1)%A195927(n+1)]`
-/

namespace A070049.P1356316172798959921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A076871 (n + 1)) (A195927 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A070049.P1356316172798959921

/-! ## A070049.P10164580636029321884

`lt[0, A362422(n)]`
-/

namespace A070049.P10164580636029321884
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362422 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A070049.P10164580636029321884

/-!
# A070050: Number of Bottleneck-Monge matrices with 2 rows. In the formula below, P = 2.

The programs for A070050, the canonical program `A070050.P14479049171832621215` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070050 has offset 1).

The definition of A070050 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A070050.P14479049171832621215

`((n+1)²+3*(n+1)+16)*2^(n-2)-1`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A070050

/-- `((n+1)²+3*(n+1)+16)*2^(n-2)-1` -/
def P14479049171832621215.Spec : Prop :=
  ∀ n, P14479049171832621215.a n = (A070050 (n + 1) : ℚ)

end A070050

/-! ## A070050.P1753852291551516828

`Δ[A215149(n)+2*a(n-1)]` with `a(0)=2`
-/

namespace A070050.P1753852291551516828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  A215149 n + 2 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A070050.P1753852291551516828

namespace A070050

/-- `Δ[A215149(n)+2*a(n-1)]` -/
def P1753852291551516828.Spec : Prop :=
  ∀ n, P1753852291551516828.a n = A070050 (n + 1)

end A070050

/-!
# A070051: Number of Bottleneck-Monge matrices with 3 rows. In the formula below, P=3.

The programs for A070051, there is no canonical definition to state claims against.
-/

/-! ## A070051.P872505945248595245

`A020913(floor(sqrt(A020930(n+2))))`
-/

namespace A070051.P872505945248595245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020913 (Int.sqrt (A020930 (n + 2))).toNat

end

end A070051.P872505945248595245

/-!
# A070069: a(1) = 11; a(n) = smallest palindromic multiple of a(n-1).

The programs for A070069, there is no canonical definition to state claims against.
-/

/-! ## A070069.P7755418546749779495

`A068664(n+1)*A317311(A068971(n+1))`
-/

namespace A070069.P7755418546749779495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068664 (n + 1) * A317311 (A068971 (n + 1)).toNat

end

end A070069.P7755418546749779495

/-! ## A070069.P8220979468803289854

`A068664(n+1)*A317311(ratio[A068664(n+1)])`
-/

namespace A070069.P8220979468803289854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068664 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068664 (n + 1) * A317311 (SequenceMachineLib.roundAway ((f1 (n + 1) : ℚ) / (f1 n : ℚ))).toNat

end

end A070069.P8220979468803289854

/-! ## A070069.P17062723369954912486

`A068664(n+1)*A317311(A068664(n+2)/A068664(n+1))`
-/

namespace A070069.P17062723369954912486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068664 (n + 1) * A317311 (SequenceMachineLib.roundAway ((A068664 (n + 2) : ℚ) / (A068664 (n + 1) : ℚ))).toNat

end

end A070069.P17062723369954912486

/-!
# A070070: Rounded value of n*L_n(-1) where L is the Laguerre polynomial.

The programs for A070070, there is no canonical definition to state claims against.
-/

/-! ## A070070.P13074017185075074756

`round(n/A000142(n)*A002720(n))`
-/

namespace A070070.P13074017185075074756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℚ) / (A000142 n : ℚ) * (A002720 n : ℚ))

end

end A070070.P13074017185075074756

/-! ## A070070.P17174420365099733672

`A005041(A071734(n))-(n+1)`
-/

namespace A070070.P17174420365099733672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005041 (A071734 n).toNat - (n + 1 : ℤ)

end

end A070070.P17174420365099733672

/-! ## A070070.P10374481379468933618

`A318054(n)-A227160(n+1)%2`
-/

namespace A070070.P10374481379468933618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318054 n - Int.tmod (A227160 (n + 1)) 2

end

end A070070.P10374481379468933618

/-! ## A070070.P11411221202578665716

`∑[n²+1]+C(n, 4)-A382288(A064113(n+1))`
-/

namespace A070070.P11411221202578665716
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j + Nat.choose n 4 : ℕ) : ℤ) - A382288 (A064113 (n + 1)).toNat

end

end A070070.P11411221202578665716

/-!
# A070071: a(n) = n*B(n), where B(n) are the Bell numbers, A000110.

The programs for A070071, there is no canonical definition to state claims against.
-/

/-! ## A070071.P3746793688051036245

`n*A000110(n)`
-/

namespace A070071.P3746793688051036245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000110 n

end

end A070071.P3746793688051036245

/-! ## A070071.P18309050348597287649

`abs(n*A292935(n))`
-/

namespace A070071.P18309050348597287649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) * A292935 n|

end

end A070071.P18309050348597287649

/-! ## A070071.P17406909946806749824

`n*A011971(∑[n])`
-/

namespace A070071.P17406909946806749824
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A011971 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A070071.P17406909946806749824

/-! ## A070071.P5182605886292155694

`n*A095149(∑[n])`
-/

namespace A070071.P5182605886292155694
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A095149 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A070071.P5182605886292155694

/-! ## A070071.P3134355960986467412

`n*A108087(∑[n])`
-/

namespace A070071.P3134355960986467412
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A108087 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A070071.P3134355960986467412

/-! ## A070071.P12131760810060984760

`n*A123081(∑[n])`
-/

namespace A070071.P12131760810060984760
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A123081 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A070071.P12131760810060984760

/-! ## A070071.P17123347172829609152

`n*A144155(∑[n])`
-/

namespace A070071.P17123347172829609152
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A144155 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A070071.P17123347172829609152

/-! ## A070071.P10164352214236885906

`n*A154380(∑[n])`
-/

namespace A070071.P10164352214236885906
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A154380 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A070071.P10164352214236885906

/-! ## A070071.P11389835694407570015

`n*A186020(∑[n])`
-/

namespace A070071.P11389835694407570015
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A186020 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A070071.P11389835694407570015

/-! ## A070071.P3521324121971356913

`n*A212431(∑[n])`
-/

namespace A070071.P3521324121971356913
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A212431 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A070071.P3521324121971356913

/-!
# A070072: Number of distinct rectangles with integer sides <= n and squarefree area.

The programs for A070072, there is no canonical definition to state claims against.
-/

/-! ## A070072.P7468207507946494864

`(A118259(n+1)+1)/2`
-/

namespace A070072.P7468207507946494864
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A118259 (n + 1) + 1 : ℚ) / 2

end

end A070072.P7468207507946494864

/-! ## A070072.P7721607689258019580

`∑[A169646(n+1)]`
-/

namespace A070072.P7721607689258019580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169646 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A070072.P7721607689258019580

/-! ## A070072.P3260676326683532760

`∑[A008966(n+1)*A073311(n+1)]`
-/

namespace A070072.P3260676326683532760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008966 (n + 1) * A073311 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A070072.P3260676326683532760

/-! ## A070072.P7528611137515417454

`∑[A008966(n+1)*A091813(n+1)]`
-/

namespace A070072.P7528611137515417454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008966 (n + 1) * A091813 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A070072.P7528611137515417454

/-! ## A070072.P2041163806466988783

`∑[A008966(n+1)*A231117(n+1)]`
-/

namespace A070072.P2041163806466988783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008966 (n + 1) * A231117 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A070072.P2041163806466988783

/-! ## A070072.P3531330219138902938

`∑[lcm(A008683(n+1), A073311(n+1))]`
-/

namespace A070072.P3531330219138902938
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A008683 (n + 1)) (A073311 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A070072.P3531330219138902938

/-! ## A070072.P13127073608598862284

`A273943(A118259(n+1)+1)`
-/

namespace A070072.P13127073608598862284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A118259 (n + 1) + 1).toNat

end

end A070072.P13127073608598862284

/-! ## A070072.P7849201321762855302

`A014682(A118259(n+1)+1)`
-/

namespace A070072.P7849201321762855302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A118259 (n + 1) + 1).toNat

end

end A070072.P7849201321762855302

/-! ## A070072.P3498407662329538734

`A000463(A118259(n+1))`
-/

namespace A070072.P3498407662329538734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (A118259 (n + 1)).toNat

end

end A070072.P3498407662329538734

/-! ## A070072.P3202480313725194426

`A004525(A118259(n+1)+1)`
-/

namespace A070072.P3202480313725194426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A118259 (n + 1) + 1).toNat

end

end A070072.P3202480313725194426

/-! ## A070072.P538352329378838418

`A004526(A118259(n+1)+1)`
-/

namespace A070072.P538352329378838418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A118259 (n + 1) + 1).toNat

end

end A070072.P538352329378838418

/-! ## A070072.P3364160850357623145

`A006370(A118259(n+1)+1)`
-/

namespace A070072.P3364160850357623145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 (A118259 (n + 1) + 1).toNat

end

end A070072.P3364160850357623145

/-! ## A070072.P9400912304310184613

`A026741(A118259(n+1)+1)`
-/

namespace A070072.P9400912304310184613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A118259 (n + 1) + 1).toNat

end

end A070072.P9400912304310184613

/-! ## A070072.P15010457672296680072

`A110654(A118259(n+1)+1)`
-/

namespace A070072.P15010457672296680072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A118259 (n + 1) + 1).toNat

end

end A070072.P15010457672296680072

/-! ## A070072.P3870598477795460681

`A338478(A338478(a(n-1)))+A169646(n+1)` with `a(0)=1`
-/

namespace A070072.P3870598477795460681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A338478 (A338478 (a (n - 1)).toNat).toNat + A169646 (n + 1)

end

end A070072.P3870598477795460681

/-!
# A070074: a(n)= 2F2(n+1, n+2; 1, 2; 1) *n! *(n+1)! /exp(1), where 2F2 is the generalized hypergeometric function.

The programs for A070074, there is no canonical definition to state claims against.
-/

/-! ## A070074.P7738308036008533733

`A069948(n)+n*A182934(n)`
-/

namespace A070074.P7738308036008533733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069948 n + (n : ℤ) * A182934 n

end

end A070074.P7738308036008533733

/-!
# A070075: Stirling transform of A021009.

The programs for A070075, there is no canonical definition to state claims against.
-/

/-! ## A070075.P11633014693457102336

`A241086(∑[∑[comp[n²]]])`
-/

namespace A070075.P11633014693457102336
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241086 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A070075.P11633014693457102336

/-!
# A070076: Number of n-digit twin prime pairs.

The programs for A070076, there is no canonical definition to state claims against.
-/

/-! ## A070076.P3265187335074807322

`Δ[∑{e}[2^n, A007508(#)]]`
-/

namespace A070076.P3265187335074807322
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), A007508 (Nat.factorization (f2 n) p)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A070076.P3265187335074807322

/-! ## A070076.P18130812569847490835

`Δ[A007508(A028310(n))%A007508(n+1)]`
-/

namespace A070076.P18130812569847490835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007508 (A028310 n).toNat) (A007508 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A070076.P18130812569847490835

/-!
# A070077: Greatest common divisor of n-th squarefree number and n-th cubefree number.

The programs for A070077, the canonical program `A070077.P7230318131838969746` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070077 has offset 1).

The definition of A070077 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004709, A005117, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A070077.P7230318131838969746

`gcd(A005117(n+1), A004709(n+1))`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A070077

/-- `gcd(A005117(n+1), A004709(n+1))` -/
def P7230318131838969746.Spec : Prop :=
  ∀ n, (P7230318131838969746.a n : ℤ) = A070077 (n + 1)

theorem P7230318131838969746.correct : P7230318131838969746.Spec := by
  intro n
  simp only [A070077, Nat.add_sub_cancel]

end A070077

/-! ## A070077.P15623910460960317297

`gcd(comp[A105570(n)], A004709(n+1))`
-/

namespace A070077.P15623910460960317297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105570 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) (A004709 (n + 1))

end

end A070077.P15623910460960317297

namespace A070077

/-- `gcd(comp[A105570(n)], A004709(n+1))` -/
def P15623910460960317297.Spec : Prop :=
  ∀ n, (P15623910460960317297.a n : ℤ) = A070077 (n + 1)

end A070077

/-! ## A070077.P8537816219854613294

`gcd(sqrt(A062503(n+1)), A277803(n+1))`
-/

namespace A070077.P8537816219854613294
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway (Real.sqrt (A062503 (n + 1) : ℝ))) (A277803 (n + 1))

end

end A070077.P8537816219854613294

namespace A070077

/-- `gcd(sqrt(A062503(n+1)), A277803(n+1))` -/
def P8537816219854613294.Spec : Prop :=
  ∀ n, (P8537816219854613294.a n : ℤ) = A070077 (n + 1)

end A070077

/-! ## A070077.P16182192674549198360

`gcd(A004709(n+1)², record[A003967(n+1)])`
-/

namespace A070077.P16182192674549198360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003967 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A004709 (n + 1) ^ 2) (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A070077.P16182192674549198360

namespace A070077

/-- `gcd(A004709(n+1)², record[A003967(n+1)])` -/
def P16182192674549198360.Spec : Prop :=
  ∀ n, (P16182192674549198360.a n : ℤ) = A070077 (n + 1)

end A070077

/-! ## A070077.P8547445418810572120

`gcd(A007947(A004709(n+1)), A062503(n+1))`
-/

namespace A070077.P8547445418810572120
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A007947 (A004709 (n + 1)).toNat) (A062503 (n + 1))

end

end A070077.P8547445418810572120

namespace A070077

/-- `gcd(A007947(A004709(n+1)), A062503(n+1))` -/
def P8547445418810572120.Spec : Prop :=
  ∀ n, (P8547445418810572120.a n : ℤ) = A070077 (n + 1)

end A070077

/-! ## A070077.P4649721683583944940

`A000188(A005117(n+1)*A382888(n+1))`
-/

namespace A070077.P4649721683583944940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (A005117 (n + 1) * A382888 (n + 1)).toNat

end

end A070077.P4649721683583944940

namespace A070077

/-- `A000188(A005117(n+1)*A382888(n+1))` -/
def P4649721683583944940.Spec : Prop :=
  ∀ n, P4649721683583944940.a n = A070077 (n + 1)

end A070077

/-!
# A070078: If n is squarefree then a(n) = Min{k | A070077(k) = n} else 0.

The programs for A070078, there is no canonical definition to state claims against.
-/

/-! ## A070078.P17245171543698724907

`A171871(A299979(n+1)+A238437(n))`
-/

namespace A070078.P17245171543698724907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171871 (A299979 (n + 1) + A238437 n).toNat

end

end A070078.P17245171543698724907

/-! ## A070078.P10032108540751040116

`A027748(n+1)*A307167(A003242(n))`
-/

namespace A070078.P10032108540751040116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027748 (n + 1) * A307167 (A003242 n).toNat

end

end A070078.P10032108540751040116

/-!
# A070079: a(n) gives the odd leg of the unique primitive Pythagorean triangle with hypotenuse A002144(n).

The programs for A070079, there is no canonical definition to state claims against.
-/

/-! ## A070079.P9285177991988697583

`A079886(n+1)*A079887(n+1)`
-/

namespace A070079.P9285177991988697583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079886 (n + 1) * A079887 (n + 1)

end

end A070079.P9285177991988697583

/-! ## A070079.P7268097143437073319

`A002365(n+1)+A002366(n+1)-A145046(n)`
-/

namespace A070079.P7268097143437073319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002365 (n + 1) + (A002366 (n + 1) - A145046 n)

end

end A070079.P7268097143437073319

/-! ## A070079.P10722241969225558862

`A002330(n+2)²-A002331(n+2)²`
-/

namespace A070079.P10722241969225558862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002330 (n + 2) ^ 2 - A002331 (n + 2) ^ 2

end

end A070079.P10722241969225558862

/-! ## A070079.P7548315593163997766

`2*A002330(n+2)²-A002144(n+1)`
-/

namespace A070079.P7548315593163997766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A002330 (n + 2) ^ 2 - A002144 (n + 1)

end

end A070079.P7548315593163997766

/-! ## A070079.P12345414253132909690

`2*A002330(n+2)²-A002313(n+2)`
-/

namespace A070079.P12345414253132909690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A002330 (n + 2) ^ 2 - A002313 (n + 2)

end

end A070079.P12345414253132909690

/-! ## A070079.P10584045564144271185

`A002313(n+2)-2*A002331(n+2)²`
-/

namespace A070079.P10584045564144271185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002313 (n + 2) - 2 * A002331 (n + 2) ^ 2

end

end A070079.P10584045564144271185

/-! ## A070079.P1448590434467350665

`(A002331(n+2)+A002330(n+2))*A079887(n+1)`
-/

namespace A070079.P1448590434467350665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002331 (n + 2) + A002330 (n + 2)) * A079887 (n + 1)

end

end A070079.P1448590434467350665

/-! ## A070079.P8229138862923930029

`(A002330(n+2)-A002331(n+2))*A079886(n+1)`
-/

namespace A070079.P8229138862923930029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002330 (n + 2) - A002331 (n + 2)) * A079886 (n + 1)

end

end A070079.P8229138862923930029

/-! ## A070079.P16707535958608584839

`A145010(n+1)/A145019(n+1)`
-/

namespace A070079.P16707535958608584839
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A145010 (n + 1) : ℚ) / (A145019 (n + 1) : ℚ)

end

end A070079.P16707535958608584839

/-! ## A070079.P8377675396069906148

`A145010(n+1)/(2*A070151(n+1))`
-/

namespace A070079.P8377675396069906148
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A145010 (n + 1) : ℚ) / (2 * A070151 (n + 1) : ℚ)

end

end A070079.P8377675396069906148

/-! ## A070079.P18418595758967701370

`A145010(n+1)/(A002330(n+2)*A002331(n+2))`
-/

namespace A070079.P18418595758967701370
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A145010 (n + 1) : ℚ) / (A002330 (n + 2) * A002331 (n + 2) : ℚ)

end

end A070079.P18418595758967701370

/-! ## A070079.P3899328475970048974

`A037214(2*A002144(n+1))/2`
-/

namespace A070079.P3899328475970048974
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A037214 (2 * A002144 (n + 1)).toNat : ℚ) / 2

end

end A070079.P3899328475970048974

/-! ## A070079.P15986778718612564256

`A079887(n+1)*A099379(A002144(n+1))`
-/

namespace A070079.P15986778718612564256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079887 (n + 1) * A099379 (A002144 (n + 1)).toNat

end

end A070079.P15986778718612564256

/-!
# A070080: Smallest side of integer triangles [a(n) <= A070081(n) <= A070082(n)], sorted by perimeter, lexicographically ordered.

The programs for A070080, there is no canonical definition to state claims against.
-/

/-! ## A070080.P3671818731394622867

`A070083(n+1)-A070082(n+1)-A070081(n+1)`
-/

namespace A070080.P3671818731394622867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070083 (n + 1) - A070082 (n + 1) - A070081 (n + 1)

end

end A070080.P3671818731394622867

/-! ## A070080.P3265003913791177143

`A107573(n+1)-1`
-/

namespace A070080.P3265003913791177143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107573 (n + 1) - 1

end

end A070080.P3265003913791177143

/-! ## A070080.P16592240623744792633

`dr(A154277(n)+A107573(n+1))`
-/

namespace A070080.P16592240623744792633
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A154277 n + A107573 (n + 1))

end

end A070080.P16592240623744792633

/-! ## A070080.P10685003633534815318

`A134824(n+2)+A107573(n+1)`
-/

namespace A070080.P10685003633534815318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134824 (n + 2) + A107573 (n + 1)

end

end A070080.P10685003633534815318

/-! ## A070080.P10752567048997594909

`A153881(n+2)+A107573(n+1)`
-/

namespace A070080.P10752567048997594909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153881 (n + 2) + A107573 (n + 1)

end

end A070080.P10752567048997594909

/-! ## A070080.P15521792267114957572

`A260196(n+2)+A107573(n+1)`
-/

namespace A070080.P15521792267114957572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 (n + 2) + A107573 (n + 1)

end

end A070080.P15521792267114957572

/-! ## A070080.P4039297436760711598

`A030494(n+1)%A107573(n+1)`
-/

namespace A070080.P4039297436760711598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A030494 (n + 1)) (A107573 (n + 1))

end

end A070080.P4039297436760711598

/-! ## A070080.P3331827085884638305

`A058197(n+1)%A107573(n+1)`
-/

namespace A070080.P3331827085884638305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A058197 (n + 1)) (A107573 (n + 1))

end

end A070080.P3331827085884638305

/-! ## A070080.P18132250776028532771

`A072828(n+1)%A107573(n+1)`
-/

namespace A070080.P18132250776028532771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A072828 (n + 1)) (A107573 (n + 1))

end

end A070080.P18132250776028532771

/-! ## A070080.P14265485159594609835

`A121934(n+1)%A107573(n+1)`
-/

namespace A070080.P14265485159594609835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A121934 (n + 1)) (A107573 (n + 1))

end

end A070080.P14265485159594609835

/-! ## A070080.P6352372713046559796

`A166931(n+1)%A107573(n+1)`
-/

namespace A070080.P6352372713046559796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A166931 (n + 1)) (A107573 (n + 1))

end

end A070080.P6352372713046559796

/-! ## A070080.P7184692683245959900

`A127229(n+5)%A107573(n+1)`
-/

namespace A070080.P7184692683245959900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A127229 (n + 5)) (A107573 (n + 1))

end

end A070080.P7184692683245959900

/-! ## A070080.P6355876607221567153

`A002260(A107573(n+1)+∑[n+2])`
-/

namespace A070080.P6355876607221567153
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A107573 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A070080.P6355876607221567153

/-! ## A070080.P12588128535050125001

`A070198(A000267(n))%A107573(n+1)`
-/

namespace A070080.P12588128535050125001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A070198 (A000267 n).toNat) (A107573 (n + 1))

end

end A070080.P12588128535050125001

/-! ## A070080.P17003623336926856887

`A114592(record[A020639(n+2)])+A107573(n+1)`
-/

namespace A070080.P17003623336926856887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114592 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat + A107573 (n + 1)

end

end A070080.P17003623336926856887

/-!
# A070081: Middle side of integer triangles [A070080(n) <= a(n) <= A070082(n)], sorted by perimeter, sides lexicographically ordered.

The programs for A070081, there is no canonical definition to state claims against.
-/

/-! ## A070081.P18257879389493566517

`A070083(n+1)-A070080(n+1)-A070082(n+1)`
-/

namespace A070081.P18257879389493566517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070083 (n + 1) - A070080 (n + 1) - A070082 (n + 1)

end

end A070081.P18257879389493566517

/-! ## A070081.P14444997407119120456

`A107574(n+1)-2`
-/

namespace A070081.P14444997407119120456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107574 (n + 1) - 2

end

end A070081.P14444997407119120456

/-! ## A070081.P1062336075042633566

`A023444(A107574(n+1))`
-/

namespace A070081.P1062336075042633566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A107574 (n + 1)).toNat

end

end A070081.P1062336075042633566

/-! ## A070081.P17198253381114758972

`A023445(A107574(n+1)+1)`
-/

namespace A070081.P17198253381114758972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023445 (A107574 (n + 1) + 1).toNat

end

end A070081.P17198253381114758972

/-! ## A070081.P6729549057335027546

`A023448(A107574(n+1)+4)`
-/

namespace A070081.P6729549057335027546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023448 (A107574 (n + 1) + 4).toNat

end

end A070081.P6729549057335027546

/-! ## A070081.P1195844521499263251

`A053831(A107574(n+1)+8)`
-/

namespace A070081.P1195844521499263251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053831 (A107574 (n + 1) + 8).toNat

end

end A070081.P1195844521499263251

/-! ## A070081.P142724732664782613

`A053832(A107574(n+1)+9)`
-/

namespace A070081.P142724732664782613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053832 (A107574 (n + 1) + 9).toNat

end

end A070081.P142724732664782613

/-! ## A070081.P9343413695165066771

`A002260(A107574(n+1)+53)`
-/

namespace A070081.P9343413695165066771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A107574 (n + 1) + 53).toNat

end

end A070081.P9343413695165066771

/-! ## A070081.P12001690363853525172

`A254078(n+2)%A107574(n+1)`
-/

namespace A070081.P12001690363853525172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A254078 (n + 2)) (A107574 (n + 1))

end

end A070081.P12001690363853525172

/-! ## A070081.P496228636121644275

`A289207(A107574(n+1)%(n+7))`
-/

namespace A070081.P496228636121644275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (Int.tmod (A107574 (n + 1)) (n + 7 : ℤ)).toNat

end

end A070081.P496228636121644275

/-!
# A070082: Largest side of integer triangles [A070080(n) <= A070081(n) <= a(n)], sorted by perimeter, sides lexicographically ordered.

The programs for A070082, there is no canonical definition to state claims against.
-/

/-! ## A070082.P763432706388460329

`A070083(n+1)-A070080(n+1)-A070081(n+1)`
-/

namespace A070082.P763432706388460329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070083 (n + 1) - A070080 (n + 1) - A070081 (n + 1)

end

end A070082.P763432706388460329

/-! ## A070082.P1505215210405866032

`A070083(n+1)-(A127229(n+5)%A107573(n+1)+A107574(n+1)-2)`
-/

namespace A070082.P1505215210405866032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070083 (n + 1) - (Int.tmod (A127229 (n + 5)) (A107573 (n + 1)) + (A107574 (n + 1) - 2))

end

end A070082.P1505215210405866032

/-! ## A070082.P4897623793748450089

`A107575(n+1)-3`
-/

namespace A070082.P4897623793748450089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107575 (n + 1) - 3

end

end A070082.P4897623793748450089

/-! ## A070082.P6401757510186092142

`A174971(Δ[n²])+A107575(n+1)`
-/

namespace A070082.P6401757510186092142
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174971 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + A107575 (n + 1)

end

end A070082.P6401757510186092142

/-! ## A070082.P15550376748960311875

`A051777(A107575(n+1)+A052905(n)+3)`
-/

namespace A070082.P15550376748960311875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051777 (A107575 (n + 1) + (A052905 n + 3)).toNat

end

end A070082.P15550376748960311875

/-!
# A070083: Perimeters of integer triangles, sorted by perimeter, sides lexicographically ordered.

The programs for A070083, the canonical program `A070083.P13732470108553400898` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070083 has offset 1).

The definition of A070083 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A070083.P6820379481006681487

`A070080(n+1)+A070081(n+1)+A070082(n+1)`
-/

namespace A070083.P6820379481006681487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070080 (n + 1) + A070081 (n + 1) + A070082 (n + 1)

end

end A070083.P6820379481006681487

namespace A070083

/-- `A070080(n+1)+A070081(n+1)+A070082(n+1)` -/
def P6820379481006681487.Spec : Prop :=
  ∀ n, P6820379481006681487.a n = A070083 (n + 1)

end A070083

/-! ## A070083.P13732470108553400898

`comp[∑[A005044(n)]+n]-n`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A070083

/-- `comp[∑[A005044(n)]+n]-n` -/
def P13732470108553400898.Spec : Prop :=
  ∀ n, P13732470108553400898.a n = A070083 (n + 1)

theorem P13732470108553400898.correct : P13732470108553400898.Spec := by
  intro n
  simp only [A070083, Nat.add_sub_cancel]

end A070083

/-! ## A070083.P1245517402239328584

`∑[char[1]+char[A026810(n)]]+2`
-/

namespace A070083.P1245517402239328584
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026810 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + (if ∃ j, f3 j = (n : ℤ) then 1 else 0)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A070083.P1245517402239328584

namespace A070083

/-- `∑[char[1]+char[A026810(n)]]+2` -/
def P1245517402239328584.Spec : Prop :=
  ∀ n, (P1245517402239328584.a n : ℤ) = A070083 (n + 1)

end A070083

/-! ## A070083.P8019200345504602947

`comp[A026810(n+1)+n]-n`
-/

namespace A070083.P8019200345504602947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026810 (n + 1) + (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A070083.P8019200345504602947

namespace A070083

/-- `comp[A026810(n+1)+n]-n` -/
def P8019200345504602947.Spec : Prop :=
  ∀ n, P8019200345504602947.a n = A070083 (n + 1)

end A070083

/-! ## A070083.P8901582192090192610

`∑[char[A029253(n)]]%Δ[n²]+3`
-/

namespace A070083.P8901582192090192610
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029253 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) ((f3 (n + 1) : ℤ) - (f3 n : ℤ)) + 3

end

end A070083.P8901582192090192610

namespace A070083

/-- `∑[char[A029253(n)]]%Δ[n²]+3` -/
def P8901582192090192610.Spec : Prop :=
  ∀ n, P8901582192090192610.a n = A070083 (n + 1)

end A070083

/-! ## A070083.P12678109597229791070

`A009005(∑[char[A026810(n)]])`
-/

namespace A070083.P12678109597229791070
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026810 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009005 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A070083.P12678109597229791070

namespace A070083

/-- `A009005(∑[char[A026810(n)]])` -/
def P12678109597229791070.Spec : Prop :=
  ∀ n, P12678109597229791070.a n = A070083 (n + 1)

end A070083

/-! ## A070083.P375661415278096922

`A009005(∑[char[A029138(n)]])`
-/

namespace A070083.P375661415278096922
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029138 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009005 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A070083.P375661415278096922

namespace A070083

/-- `A009005(∑[char[A029138(n)]])` -/
def P375661415278096922.Spec : Prop :=
  ∀ n, P375661415278096922.a n = A070083 (n + 1)

end A070083

/-! ## A070083.P12443225684109174770

`A009005(∑[char[A029253(n)]])`
-/

namespace A070083.P12443225684109174770
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029253 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009005 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A070083.P12443225684109174770

namespace A070083

/-- `A009005(∑[char[A029253(n)]])` -/
def P12443225684109174770.Spec : Prop :=
  ∀ n, P12443225684109174770.a n = A070083 (n + 1)

end A070083

/-! ## A070083.P9799349163106988809

`A009005(∑[char[A288165(n)]])`
-/

namespace A070083.P9799349163106988809
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288165 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009005 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A070083.P9799349163106988809

namespace A070083

/-- `A009005(∑[char[A288165(n)]])` -/
def P9799349163106988809.Spec : Prop :=
  ∀ n, P9799349163106988809.a n = A070083 (n + 1)

end A070083

/-! ## A070083.P17144824445290358518

`A107576(n+1)-6`
-/

namespace A070083.P17144824445290358518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107576 (n + 1) - 6

end

end A070083.P17144824445290358518

namespace A070083

/-- `A107576(n+1)-6` -/
def P17144824445290358518.Spec : Prop :=
  ∀ n, P17144824445290358518.a n = A070083 (n + 1)

end A070083

/-!
# A070084: Greatest common divisor of sides of integer triangles [A070080(n), A070081(n), A070082(n)], sorted by perimeter, sides lexicographically ordered.

The programs for A070084, there is no canonical definition to state claims against.
-/

/-! ## A070084.P16234449004166204863

`A300410(A244153(n+2)+1)`
-/

namespace A070084.P16234449004166204863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300410 (A244153 (n + 2) + 1).toNat

end

end A070084.P16234449004166204863

/-! ## A070084.P9380477929116785495

`A289508(A015050(n+1)^A256911(n))`
-/

namespace A070084.P9380477929116785495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289508 (SequenceMachineLib.roundAway ((A015050 (n + 1) : ℚ) ^ (A256911 n : ℤ))).toNat

end

end A070084.P9380477929116785495

/-! ## A070084.P17145913145998672894

`A289508(A013929(n+1)^A333805(n+5))`
-/

namespace A070084.P17145913145998672894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289508 (SequenceMachineLib.roundAway ((A013929 (n + 1) : ℚ) ^ (A333805 (n + 5) : ℤ))).toNat

end

end A070084.P17145913145998672894

/-! ## A070084.P2659377568255566424

`A289508(A013929(n+1)%A015048(n+1))`
-/

namespace A070084.P2659377568255566424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289508 (Int.tmod (A013929 (n + 1)) (A015048 (n + 1))).toNat

end

end A070084.P2659377568255566424

/-! ## A070084.P17010882756742224721

`A289508(A015049(n+1)%A015048(n+1))`
-/

namespace A070084.P17010882756742224721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289508 (Int.tmod (A015049 (n + 1)) (A015048 (n + 1))).toNat

end

end A070084.P17010882756742224721

/-!
# A070085: a(n) = A070080(n)^2 + A070081(n)^2 - A070082(n)^2.

The programs for A070085, there is no canonical definition to state claims against.
-/

/-! ## A070085.P5640420781910398822

`A070080(n+1)²+A070081(n+1)²-A070082(n+1)²`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A070085.P5640420781910398822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070080 (n + 1) ^ 2 + A070081 (n + 1) ^ 2 - A070082 (n + 1) ^ 2

end

end A070085.P5640420781910398822

/-!
# A070086: Areas of integer triangles [A070080(n), A070081(n), A070082(n)], rounded values.

The programs for A070086, there is no canonical definition to state claims against.
-/

/-! ## A070086.P3266577332336182254

`A000120(and(A192198(n+1), A227451(n)))`
-/

namespace A070086.P3266577332336182254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (Int.land (A192198 (n + 1)) (A227451 n)).toNat

end

end A070086.P3266577332336182254

/-!
# A070087: P(n) > P(n+1) where P(n) (A006530) is the largest prime factor of n.

The programs for A070087, the canonical program `A070087.P14390244323313631810` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070087 has offset 1).

The definition of A070087 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A070087.P1068625445052308753

`∑[A216650(n+1)]+1`
-/

namespace A070087.P1068625445052308753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216650 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A070087.P1068625445052308753

namespace A070087

/-- `∑[A216650(n+1)]+1` -/
def P1068625445052308753.Spec : Prop :=
  ∀ n, P1068625445052308753.a n = A070087 (n + 1)

end A070087

/-! ## A070087.P4166976020188478933

`∪[A065091(n+1), A087430(n+1)]`
-/

namespace A070087.P4166976020188478933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087430 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A070087.P4166976020188478933

namespace A070087

/-- `∪[A065091(n+1), A087430(n+1)]` -/
def P4166976020188478933.Spec : Prop :=
  ∀ n, (P4166976020188478933.a n : ℤ) = A070087 (n + 1)

end A070087

/-! ## A070087.P15634728686421845186

`∪[A071870(n+1), A082418(n+1)]`
-/

namespace A070087.P15634728686421845186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071870 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082418 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A070087.P15634728686421845186

namespace A070087

/-- `∪[A071870(n+1), A082418(n+1)]` -/
def P15634728686421845186.Spec : Prop :=
  ∀ n, (P15634728686421845186.a n : ℤ) = A070087 (n + 1)

end A070087

/-! ## A070087.P2462084429533935412

`∪[A087430(n+1), A100392(n+1)]`
-/

namespace A070087.P2462084429533935412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087430 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100392 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A070087.P2462084429533935412

namespace A070087

/-- `∪[A087430(n+1), A100392(n+1)]` -/
def P2462084429533935412.Spec : Prop :=
  ∀ n, (P2462084429533935412.a n : ℤ) = A070087 (n + 1)

end A070087

/-! ## A070087.P14390244323313631810

`lt[A006530(n+2), A006530(n+1)]+1`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A070087

/-- `lt[A006530(n+2), A006530(n+1)]+1` -/
def P14390244323313631810.Spec : Prop :=
  ∀ n, (P14390244323313631810.a n : ℤ) = A070087 (n + 1)

theorem P14390244323313631810.correct : P14390244323313631810.Spec := by
  intro n
  simp only [A070087, Nat.add_sub_cancel]

end A070087

/-! ## A070087.P11353458308474771034

`eq[1, A100376(n+2)]+2`
-/

namespace A070087.P11353458308474771034
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100376 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A070087.P11353458308474771034

namespace A070087

/-- `eq[1, A100376(n+2)]+2` -/
def P11353458308474771034.Spec : Prop :=
  ∀ n, (P11353458308474771034.a n : ℤ) = A070087 (n + 1)

end A070087

/-! ## A070087.P10782877530310131601

`lt[Δ[A061395(n+1)], 1]+1`
-/

namespace A070087.P10782877530310131601
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n + 1

end

end A070087.P10782877530310131601

namespace A070087

/-- `lt[Δ[A061395(n+1)], 1]+1` -/
def P10782877530310131601.Spec : Prop :=
  ∀ n, (P10782877530310131601.a n : ℤ) = A070087 (n + 1)

end A070087

/-! ## A070087.P3515985514284456799

`lt[Δ[A070229(n+1)], 1]+1`
-/

namespace A070087.P3515985514284456799
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070229 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n + 1

end

end A070087.P3515985514284456799

namespace A070087

/-- `lt[Δ[A070229(n+1)], 1]+1` -/
def P3515985514284456799.Spec : Prop :=
  ∀ n, (P3515985514284456799.a n : ℤ) = A070087 (n + 1)

end A070087

/-! ## A070087.P9709782613959791185

`lt[A006530(n+1), A006530(∏{p}[n, #])]`
-/

namespace A070087.P9709782613959791185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (∏ p ∈ Nat.primeFactors (f3 n), p)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A070087.P9709782613959791185

namespace A070087

/-- `lt[A006530(n+1), A006530(∏{p}[n, #])]` -/
def P9709782613959791185.Spec : Prop :=
  ∀ n, (P9709782613959791185.a n : ℤ) = A070087 (n + 1)

end A070087

/-! ## A070087.P17746933504205581570

`lt[Δ[A000541(A006530(n+2))], 1]+2`
-/

namespace A070087.P17746933504205581570
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000541 (A006530 (n + 2)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n + 2

end

end A070087.P17746933504205581570

namespace A070087

/-- `lt[Δ[A000541(A006530(n+2))], 1]+2` -/
def P17746933504205581570.Spec : Prop :=
  ∀ n, (P17746933504205581570.a n : ℤ) = A070087 (n + 1)

end A070087

/-! ## A070087.P3283817650031622900

`lt[Δ[A006530(n+1)], A010052(n)]+1`
-/

namespace A070087.P3283817650031622900
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n + 1

end

end A070087.P3283817650031622900

namespace A070087

/-- `lt[Δ[A006530(n+1)], A010052(n)]+1` -/
def P3283817650031622900.Spec : Prop :=
  ∀ n, (P3283817650031622900.a n : ℤ) = A070087 (n + 1)

end A070087

/-! ## A070087.P1212598294206218811

`eq[A006530(n+1), A074399(n+1)]+1`
-/

namespace A070087.P1212598294206218811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074399 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A070087.P1212598294206218811

namespace A070087

/-- `eq[A006530(n+1), A074399(n+1)]+1` -/
def P1212598294206218811.Spec : Prop :=
  ∀ n, (P1212598294206218811.a n : ℤ) = A070087 (n + 1)

end A070087

/-! ## A070087.P1367577199735609255

`lt[A006530(n+1), A006530(A004277(n))]`
-/

namespace A070087.P1367577199735609255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A004277 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A070087.P1367577199735609255

namespace A070087

/-- `lt[A006530(n+1), A006530(A004277(n))]` -/
def P1367577199735609255.Spec : Prop :=
  ∀ n, (P1367577199735609255.a n : ℤ) = A070087 (n + 1)

end A070087

/-! ## A070087.P8961983421318969235

`lt[A006530(n+1), A006530(A022144(n))]`
-/

namespace A070087.P8961983421318969235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A022144 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A070087.P8961983421318969235

namespace A070087

/-- `lt[A006530(n+1), A006530(A022144(n))]` -/
def P8961983421318969235.Spec : Prop :=
  ∀ n, (P8961983421318969235.a n : ℤ) = A070087 (n + 1)

end A070087

/-! ## A070087.P7313178931496180442

`lt[A006530(n+1), A006530(A028310(n))]`
-/

namespace A070087.P7313178931496180442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A070087.P7313178931496180442

namespace A070087

/-- `lt[A006530(n+1), A006530(A028310(n))]` -/
def P7313178931496180442.Spec : Prop :=
  ∀ n, (P7313178931496180442.a n : ℤ) = A070087 (n + 1)

end A070087

/-! ## A070087.P12498653274301676035

`lt[A061395(n+1), A061395(A028310(n))]`
-/

namespace A070087.P12498653274301676035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A070087.P12498653274301676035

namespace A070087

/-- `lt[A061395(n+1), A061395(A028310(n))]` -/
def P12498653274301676035.Spec : Prop :=
  ∀ n, (P12498653274301676035.a n : ℤ) = A070087 (n + 1)

end A070087

/-! ## A070087.P9632471712211811227

`lt[A006530(n+1), A006530(A257088(n))]`
-/

namespace A070087.P9632471712211811227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A257088 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A070087.P9632471712211811227

namespace A070087

/-- `lt[A006530(n+1), A006530(A257088(n))]` -/
def P9632471712211811227.Spec : Prop :=
  ∀ n, (P9632471712211811227.a n : ℤ) = A070087 (n + 1)

end A070087

/-! ## A070087.P16546581387165256791

`lt[A252735(n+1), A252735(A028310(n))]`
-/

namespace A070087.P16546581387165256791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252735 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252735 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A070087.P16546581387165256791

namespace A070087

/-- `lt[A252735(n+1), A252735(A028310(n))]` -/
def P16546581387165256791.Spec : Prop :=
  ∀ n, (P16546581387165256791.a n : ℤ) = A070087 (n + 1)

end A070087

/-! ## A070087.P15646421227948533413

`eq[1, A174869(n+1)]+1`
-/

namespace A070087.P15646421227948533413
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174869 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A070087.P15646421227948533413

namespace A070087

/-- `eq[1, A174869(n+1)]+1` -/
def P15646421227948533413.Spec : Prop :=
  ∀ n, (P15646421227948533413.a n : ℤ) = A070087 (n + 1)

end A070087

/-! ## A070087.P326976331622462194

`eq[1, A174869(A028310(n))]`
-/

namespace A070087.P326976331622462194
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174869 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A070087.P326976331622462194

namespace A070087

/-- `eq[1, A174869(A028310(n))]` -/
def P326976331622462194.Spec : Prop :=
  ∀ n, (P326976331622462194.a n : ℤ) = A070087 (n + 1)

end A070087

/-!
# A070088: Number of integer-sided triangles with perimeter n and prime sides.

The programs for A070088, there is no canonical definition to state claims against.
-/

/-! ## A070088.P7268581490835331597

`A070095(n+1)+A070103(n+1)`
-/

namespace A070088.P7268581490835331597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070095 (n + 1) + A070103 (n + 1)

end

end A070088.P7268581490835331597

/-! ## A070088.P7770999010833889215

`A070090(n+1)+A070092(n+1)`
-/

namespace A070088.P7770999010833889215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070090 (n + 1) + A070092 (n + 1)

end

end A070088.P7770999010833889215

/-! ## A070088.P14941323478781308002

`A070103(A141310(n))+A070095(n+1)`
-/

namespace A070088.P14941323478781308002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070103 (A141310 n).toNat + A070095 (n + 1)

end

end A070088.P14941323478781308002

/-! ## A070088.P8302182602764142163

`A070092(n+1)+A070105(n+1)+A070097(n+1)`
-/

namespace A070088.P8302182602764142163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070092 (n + 1) + (A070105 (n + 1) + A070097 (n + 1))

end

end A070088.P8302182602764142163

/-! ## A070088.P14251301316264211124

`A070095(n+1)+A070108(n+1)+A070105(n+1)`
-/

namespace A070088.P14251301316264211124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070095 (n + 1) + (A070108 (n + 1) + A070105 (n + 1))

end

end A070088.P14251301316264211124

/-! ## A070088.P491549791534040799

`A070092(n+1)+A070090(A141310(n))`
-/

namespace A070088.P491549791534040799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070092 (n + 1) + A070090 (A141310 n).toNat

end

end A070088.P491549791534040799

/-! ## A070088.P12145607831011625546

`A070090(n+1)+A070108(n+1)+A070100(n+1)`
-/

namespace A070088.P12145607831011625546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070090 (n + 1) + (A070108 (n + 1) + A070100 (n + 1))

end

end A070088.P12145607831011625546

/-! ## A070088.P9816871443132767302

`A005044(n+1)-A308318(n+1)`
-/

namespace A070088.P9816871443132767302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005044 (n + 1) - A308318 (n + 1)

end

end A070088.P9816871443132767302

/-! ## A070088.P10090935656801383747

`A308165(n+1)/(n+1)`
-/

namespace A070088.P10090935656801383747
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A308165 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A070088.P10090935656801383747

/-! ## A070088.P17999821691185016915

`A308165(n+1)%A028310(n)`
-/

namespace A070088.P17999821691185016915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A308165 (n + 1)) (A028310 n)

end

end A070088.P17999821691185016915

/-!
# A070089: P(n) < P(n+1) where P(n) (A006530) is the largest prime factor of n.

The programs for A070089, the canonical program `A070089.P8160623282101571297` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070089 has offset 1).

The definition of A070089 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A070089.P7038828540702232075

`A216651(n)+a(n-1)` with `a(0)=1`
-/

namespace A070089.P7038828540702232075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A216651 n + a (n - 1)

end

end A070089.P7038828540702232075

namespace A070089

/-- `A216651(n)+a(n-1)` -/
def P7038828540702232075.Spec : Prop :=
  ∀ n, P7038828540702232075.a n = A070089 (n + 1)

end A070089

/-! ## A070089.P14345655027819543745

`comp[∑[A216650(n+1)]]+1`
-/

namespace A070089.P14345655027819543745
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216650 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A070089.P14345655027819543745

namespace A070089

/-- `comp[∑[A216650(n+1)]]+1` -/
def P14345655027819543745.Spec : Prop :=
  ∀ n, (P14345655027819543745.a n : ℤ) = A070089 (n + 1)

end A070089

/-! ## A070089.P7300070275074953634

`lt[A006530(n+1), A006530(n+2)]+1`
-/

namespace A070089.P7300070275074953634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A070089.P7300070275074953634

namespace A070089

/-- `lt[A006530(n+1), A006530(n+2)]+1` -/
def P7300070275074953634.Spec : Prop :=
  ∀ n, (P7300070275074953634.a n : ℤ) = A070089 (n + 1)

end A070089

/-! ## A070089.P8160623282101571297

`lt[A061395(n+1), A061395(n+2)]+1`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A070089

/-- `lt[A061395(n+1), A061395(n+2)]+1` -/
def P8160623282101571297.Spec : Prop :=
  ∀ n, (P8160623282101571297.a n : ℤ) = A070089 (n + 1)

theorem P8160623282101571297.correct : P8160623282101571297.Spec := by
  intro n
  simp only [A070089, Nat.add_sub_cancel]

end A070089

/-! ## A070089.P5473979109127641918

`eq[1, A087429(n+1)]+1`
-/

namespace A070089.P5473979109127641918
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087429 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A070089.P5473979109127641918

namespace A070089

/-- `eq[1, A087429(n+1)]+1` -/
def P5473979109127641918.Spec : Prop :=
  ∀ n, (P5473979109127641918.a n : ℤ) = A070089 (n + 1)

end A070089

/-! ## A070089.P12161905915610579046

`lt[n, A126288(n+1)]+1`
-/

namespace A070089.P12161905915610579046
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126288 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A070089.P12161905915610579046

namespace A070089

/-- `lt[n, A126288(n+1)]+1` -/
def P12161905915610579046.Spec : Prop :=
  ∀ n, (P12161905915610579046.a n : ℤ) = A070089 (n + 1)

end A070089

/-! ## A070089.P15055367910724688234

`lt[1, ratio[A006530(n+1)]]+1`
-/

namespace A070089.P15055367910724688234
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f3 (n + 1) : ℚ) / (f3 n : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n + 1

end

end A070089.P15055367910724688234

namespace A070089

/-- `lt[1, ratio[A006530(n+1)]]+1` -/
def P15055367910724688234.Spec : Prop :=
  ∀ n, (P15055367910724688234.a n : ℤ) = A070089 (n + 1)

end A070089

/-! ## A070089.P6790407757168085191

`record[(n+1)/A020639(val(n+1, A074399(n+1))+1)]`
-/

namespace A070089.P6790407757168085191
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A020639 (SequenceMachineLib.valuation (n + 1) (A074399 (n + 1)).toNat + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A070089.P6790407757168085191

namespace A070089

/-- `record[(n+1)/A020639(val(n+1, A074399(n+1))+1)]` -/
def P6790407757168085191.Spec : Prop :=
  ∀ n, P6790407757168085191.a n = (A070089 (n + 1) : ℚ)

end A070089

/-! ## A070089.P4385739695294489515

`lt[A006530(A028310(n)), A006530(n+1)]`
-/

namespace A070089.P4385739695294489515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A070089.P4385739695294489515

namespace A070089

/-- `lt[A006530(A028310(n)), A006530(n+1)]` -/
def P4385739695294489515.Spec : Prop :=
  ∀ n, (P4385739695294489515.a n : ℤ) = A070089 (n + 1)

end A070089

/-! ## A070089.P12143944870464418619

`lt[A061395(A028310(n)), A061395(n+1)]`
-/

namespace A070089.P12143944870464418619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A070089.P12143944870464418619

namespace A070089

/-- `lt[A061395(A028310(n)), A061395(n+1)]` -/
def P12143944870464418619.Spec : Prop :=
  ∀ n, (P12143944870464418619.a n : ℤ) = A070089 (n + 1)

end A070089

/-! ## A070089.P14995229887209019100

`lt[A006530(A004277(n)-n), A006530(n+1)]`
-/

namespace A070089.P14995229887209019100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A004277 n - (n : ℤ)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A070089.P14995229887209019100

namespace A070089

/-- `lt[A006530(A004277(n)-n), A006530(n+1)]` -/
def P14995229887209019100.Spec : Prop :=
  ∀ n, (P14995229887209019100.a n : ℤ) = A070089 (n + 1)

end A070089

/-! ## A070089.P18377832085276740336

`lt[1, Δ[A070229(n+1)]]+1`
-/

namespace A070089.P18377832085276740336
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070229 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A070089.P18377832085276740336

namespace A070089

/-- `lt[1, Δ[A070229(n+1)]]+1` -/
def P18377832085276740336.Spec : Prop :=
  ∀ n, (P18377832085276740336.a n : ℤ) = A070089 (n + 1)

end A070089

/-! ## A070089.P5245774296912762894

`lt[A006530(∏{p}[n, #]), A006530(n+1)]`
-/

namespace A070089.P5245774296912762894
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (∏ p ∈ Nat.primeFactors (f2 n), p)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A070089.P5245774296912762894

namespace A070089

/-- `lt[A006530(∏{p}[n, #]), A006530(n+1)]` -/
def P5245774296912762894.Spec : Prop :=
  ∀ n, (P5245774296912762894.a n : ℤ) = A070089 (n + 1)

end A070089

/-! ## A070089.P10224307344078787301

`lt[A070229(A028310(n)), A070229(n+1)]`
-/

namespace A070089.P10224307344078787301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070229 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070229 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A070089.P10224307344078787301

namespace A070089

/-- `lt[A070229(A028310(n)), A070229(n+1)]` -/
def P10224307344078787301.Spec : Prop :=
  ∀ n, (P10224307344078787301.a n : ℤ) = A070089 (n + 1)

end A070089

/-! ## A070089.P13609764192391480036

`lt[A006530(A257088(n)), A006530(n+1)]`
-/

namespace A070089.P13609764192391480036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A257088 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A070089.P13609764192391480036

namespace A070089

/-- `lt[A006530(A257088(n)), A006530(n+1)]` -/
def P13609764192391480036.Spec : Prop :=
  ∀ n, (P13609764192391480036.a n : ℤ) = A070089 (n + 1)

end A070089

/-! ## A070089.P3182609664987966020

`lt[A171462(A028310(n)), A171462(n+1)]`
-/

namespace A070089.P3182609664987966020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171462 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171462 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A070089.P3182609664987966020

namespace A070089

/-- `lt[A171462(A028310(n)), A171462(n+1)]` -/
def P3182609664987966020.Spec : Prop :=
  ∀ n, (P3182609664987966020.a n : ℤ) = A070089 (n + 1)

end A070089

/-! ## A070089.P5231810723350883745

`lt[A006530(A000007(n)+n), A006530(n+1)]`
-/

namespace A070089.P5231810723350883745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A000007 n + (n : ℤ)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A070089.P5231810723350883745

namespace A070089

/-- `lt[A006530(A000007(n)+n), A006530(n+1)]` -/
def P5231810723350883745.Spec : Prop :=
  ∀ n, (P5231810723350883745.a n : ℤ) = A070089 (n + 1)

end A070089

/-! ## A070089.P13693907943634803315

`lt[A085392(2*(n+1)), A284695(n+2)]+1`
-/

namespace A070089.P13693907943634803315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085392 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284695 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A070089.P13693907943634803315

namespace A070089

/-- `lt[A085392(2*(n+1)), A284695(n+2)]+1` -/
def P13693907943634803315.Spec : Prop :=
  ∀ n, (P13693907943634803315.a n : ℤ) = A070089 (n + 1)

end A070089

/-! ## A070089.P2453562150487253329

`lt[A085392(A028310(2*n)), A085392(2*n+2)]`
-/

namespace A070089.P2453562150487253329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085392 (A028310 (2 * n)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085392 (2 * n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A070089.P2453562150487253329

namespace A070089

/-- `lt[A085392(A028310(2*n)), A085392(2*n+2)]` -/
def P2453562150487253329.Spec : Prop :=
  ∀ n, (P2453562150487253329.a n : ℤ) = A070089 (n + 1)

end A070089

/-!
# A070090: Number of scalene integer triangles with perimeter n and prime side lengths.

The programs for A070090, there is no canonical definition to state claims against.
-/

/-! ## A070090.P15037841891577674132

`A070088(n+1)-A070092(n+1)`
-/

namespace A070090.P15037841891577674132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070088 (n + 1) - A070092 (n + 1)

end

end A070090.P15037841891577674132

/-! ## A070090.P5258385623196944338

`A070105(n+1)+A070097(n+1)`
-/

namespace A070090.P5258385623196944338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070105 (n + 1) + A070097 (n + 1)

end

end A070090.P5258385623196944338

/-! ## A070090.P18437851600451246712

`A070088(n+1)-(A070108(n+1)+A070100(n+1))`
-/

namespace A070090.P18437851600451246712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070088 (n + 1) - (A070108 (n + 1) + A070100 (n + 1))

end

end A070090.P18437851600451246712

/-! ## A070090.P17280664973878392372

`A070095(n+1)+A070103(n+1)-A070092(n+1)`
-/

namespace A070090.P17280664973878392372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070095 (n + 1) + (A070103 (n + 1) - A070092 (n + 1))

end

end A070090.P17280664973878392372

/-! ## A070090.P8700492339778598903

`A070095(n+1)+A070105(n+1)-A070100(n+1)`
-/

namespace A070090.P8700492339778598903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070095 (n + 1) + (A070105 (n + 1) - A070100 (n + 1))

end

end A070090.P8700492339778598903

/-! ## A070090.P13742626494852225196

`A308165(n+1)/(n+1)-A070092(n+1)`
-/

namespace A070090.P13742626494852225196
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A308165 (n + 1) : ℚ) / (n + 1 : ℚ) - (A070092 (n + 1) : ℚ)

end

end A070090.P13742626494852225196

/-! ## A070090.P12236623339828293619

`(A308165(n+1)-A070092(n+1))%A028310(n)`
-/

namespace A070090.P12236623339828293619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A308165 (n + 1) - A070092 (n + 1)) (A028310 n)

end

end A070090.P12236623339828293619

/-!
# A070091: Number of isosceles integer triangles with perimeter n and relatively prime side lengths.

The programs for A070091, the canonical program `A070091.P15486854157722830517` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070091 has offset 1).

The definition of A070091 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A070091.P17142401380841598861

`A070107(n+1)+A070099(n+1)`
-/

namespace A070091.P17142401380841598861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070107 (n + 1) + A070099 (n + 1)

end

end A070091.P17142401380841598861

namespace A070091

/-- `A070107(n+1)+A070099(n+1)` -/
def P17142401380841598861.Spec : Prop :=
  ∀ n, P17142401380841598861.a n = A070091 (n + 1)

theorem P17142401380841598861.correct : P17142401380841598861.Spec := by
  intro n
  simp only [A070091, Nat.add_sub_cancel, A070091.P17142401380841598861.a, A070091.P15486854157722830517.f1, A070091.P15486854157722830517.a, A008683, A008683.P18254306604665478110.a, A059169, A059169.P12427980580684764790.a, A070099, A070099.P902782668286660812.f1, A070099.P902782668286660812.a, A070107, A070107.P4147856377676697556.a, A070098, A070098.P11418208378011695116.a, A132971, A132971.P9197609016375066540.a, A156552, A156552.P4268073137713085227.a, A005941, A005941.P9595689460679922607.f1, A005941.P9595689460679922607.a, A070106, A070106.P8148621780262521077.a, A085357, A085357.P3258697467278337073.a, A106400, A106400.P11201390576172776043.a, A003152, A003152.P8355508272175907392.a, A005940, A005940.P5942875842694471387.a, A008966, A008966.P884693903657889754.a, A010060, A010060.P3080921269106500717.a, A047329, A047329.P9670378678923019251.a, A364557, A364557.P16113127302810243144.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A070091

/-! ## A070091.P11759614479645114043

`A051493(n+1)-A024162(n+1)`
-/

namespace A070091.P11759614479645114043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051493 (n + 1) - A024162 (n + 1)

end

end A070091.P11759614479645114043

namespace A070091

/-- `A051493(n+1)-A024162(n+1)` -/
def P11759614479645114043.Spec : Prop :=
  ∀ n, P11759614479645114043.a n = A070091 (n + 1)

end A070091

/-! ## A070091.P15486854157722830517

`∑{d}[n+1, A008683(#)*A059169((n+1)/#)]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A070091

/-- `∑{d}[n+1, A008683(#)*A059169((n+1)/#)]` -/
def P15486854157722830517.Spec : Prop :=
  ∀ n, P15486854157722830517.a n = A070091 (n + 1)

theorem P15486854157722830517.correct : P15486854157722830517.Spec := by
  intro n
  simp only [A070091, Nat.add_sub_cancel]

end A070091

/-! ## A070091.P8618951334001484382

`floor(floor((A000010(n+1)-A275966(n+1))/2)/2)`
-/

namespace A070091.P8618951334001484382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(⌊(A000010 (n + 1) - A275966 (n + 1) : ℚ) / 2⌋ : ℚ) / 2⌋

end

end A070091.P8618951334001484382

namespace A070091

/-- `floor(floor((A000010(n+1)-A275966(n+1))/2)/2)` -/
def P8618951334001484382.Spec : Prop :=
  ∀ n, P8618951334001484382.a n = A070091 (n + 1)

end A070091

/-! ## A070091.P4509034197648957579

`A002265(A000010(n+1)-A275966(n+1))`
-/

namespace A070091.P4509034197648957579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A000010 (n + 1) - A275966 (n + 1)).toNat

end

end A070091.P4509034197648957579

namespace A070091

/-- `A002265(A000010(n+1)-A275966(n+1))` -/
def P4509034197648957579.Spec : Prop :=
  ∀ n, P4509034197648957579.a n = A070091 (n + 1)

end A070091

/-! ## A070091.P5115573335896232404

`A002265(A039649(n+1)-A275966(n+1))`
-/

namespace A070091.P5115573335896232404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A039649 (n + 1) - A275966 (n + 1)).toNat

end

end A070091.P5115573335896232404

namespace A070091

/-- `A002265(A039649(n+1)-A275966(n+1))` -/
def P5115573335896232404.Spec : Prop :=
  ∀ n, P5115573335896232404.a n = A070091 (n + 1)

end A070091

/-! ## A070091.P15030524599200805348

`A025480(A039649(n+1)-A275966(n+1))`
-/

namespace A070091.P15030524599200805348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A039649 (n + 1) - A275966 (n + 1)).toNat

end

end A070091.P15030524599200805348

namespace A070091

/-- `A025480(A039649(n+1)-A275966(n+1))` -/
def P15030524599200805348.Spec : Prop :=
  ∀ n, P15030524599200805348.a n = A070091 (n + 1)

end A070091

/-! ## A070091.P10213682294798694198

`A070099(n+1)+A070102(n+1)-A070104(n+1)`
-/

namespace A070091.P10213682294798694198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070099 (n + 1) + (A070102 (n + 1) - A070104 (n + 1))

end

end A070091.P10213682294798694198

namespace A070091

/-- `A070099(n+1)+A070102(n+1)-A070104(n+1)` -/
def P10213682294798694198.Spec : Prop :=
  ∀ n, P10213682294798694198.a n = A070091 (n + 1)

end A070091

/-!
# A070092: Number of isosceles integer triangles with perimeter n and prime side lengths.

The programs for A070092, there is no canonical definition to state claims against.
-/

/-! ## A070092.P12006913242836659027

`A070088(n+1)-A070090(n+1)`
-/

namespace A070092.P12006913242836659027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070088 (n + 1) - A070090 (n + 1)

end

end A070092.P12006913242836659027

/-! ## A070092.P15767844263503016979

`A070108(n+1)+A070100(n+1)`
-/

namespace A070092.P15767844263503016979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070108 (n + 1) + A070100 (n + 1)

end

end A070092.P15767844263503016979

/-! ## A070092.P2670339020529607095

`A070095(n+1)+A070108(n+1)-A070097(n+1)`
-/

namespace A070092.P2670339020529607095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070095 (n + 1) + (A070108 (n + 1) - A070097 (n + 1))

end

end A070092.P2670339020529607095

/-! ## A070092.P15105590376793869474

`A070088(n+1)-(A070105(n+1)+A070097(n+1))`
-/

namespace A070092.P15105590376793869474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070088 (n + 1) - (A070105 (n + 1) + A070097 (n + 1))

end

end A070092.P15105590376793869474

/-! ## A070092.P3859713473567414964

`A070095(n+1)+A070103(n+1)-A070090(n+1)`
-/

namespace A070092.P3859713473567414964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070095 (n + 1) + (A070103 (n + 1) - A070090 (n + 1))

end

end A070092.P3859713473567414964

/-!
# A070093: Number of acute integer triangles with perimeter n.

The programs for A070093, there is no canonical definition to state claims against.
-/

/-! ## A070093.P954041987770501543

`A005044(n+1)-A070101(n+1)-A024155(n+1)`
-/

namespace A070093.P954041987770501543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005044 (n + 1) - A070101 (n + 1) - A024155 (n + 1)

end

end A070093.P954041987770501543

/-! ## A070093.P8609754401626646578

`A070098(n+1)+A024154(n+1)`
-/

namespace A070093.P8609754401626646578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070098 (n + 1) + A024154 (n + 1)

end

end A070093.P8609754401626646578

/-! ## A070093.P12544084137462005606

`A024154(n+1)+A049472(n+1)-A110654(n)`
-/

namespace A070093.P12544084137462005606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024154 (n + 1) + (A049472 (n + 1) - A110654 n)

end

end A070093.P12544084137462005606

/-! ## A070093.P14420433896892481370

`A024154(n+1)+A004526(n)-A183138(n+1)`
-/

namespace A070093.P14420433896892481370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024154 (n + 1) + (A004526 n - A183138 (n + 1))

end

end A070093.P14420433896892481370

/-! ## A070093.P17554598000498619982

`A024154(n+1)+A008619(n)-A194920(n+1)`
-/

namespace A070093.P17554598000498619982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024154 (n + 1) + (A008619 n - A194920 (n + 1))

end

end A070093.P17554598000498619982

/-! ## A070093.P16955050748607116111

`A024154(n+1)+∑[A188295(n+1)-A000035(n)]`
-/

namespace A070093.P16955050748607116111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188295 (n + 1) - A000035 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024154 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A070093.P16955050748607116111

/-! ## A070093.P15414152288490801924

`A024154(n+1)+A049474(n+1)-A008619(n+1)`
-/

namespace A070093.P15414152288490801924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024154 (n + 1) + (A049474 (n + 1) - A008619 (n + 1))

end

end A070093.P15414152288490801924

/-! ## A070093.P4544751739308391405

`A024154(n+1)+A190329(n+1)-A190336(n+1)`
-/

namespace A070093.P4544751739308391405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024154 (n + 1) + (A190329 (n + 1) - A190336 (n + 1))

end

end A070093.P4544751739308391405

/-! ## A070093.P6385059352902191795

`A024154(n+1)+A049474(n+1)-A004526(n+3)`
-/

namespace A070093.P6385059352902191795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024154 (n + 1) + (A049474 (n + 1) - A004526 (n + 3))

end

end A070093.P6385059352902191795

/-! ## A070093.P270266766848462022

`A024154(n+1)+n-(A183138(n+1)+A110654(n))`
-/

namespace A070093.P270266766848462022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024154 (n + 1) + ((n : ℤ) - (A183138 (n + 1) + A110654 n))

end

end A070093.P270266766848462022

/-! ## A070093.P9477512331349723576

`∑{d}[n+1, A070094(#)]`
-/

namespace A070093.P9477512331349723576
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A070094 d

end

end A070093.P9477512331349723576

/-! ## A070093.P8472834876014289078

`A307728(n+1)/(n+1)`
-/

namespace A070093.P8472834876014289078
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A307728 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A070093.P8472834876014289078

/-!
# A070094: Number of acute integer triangles with perimeter n and relatively prime side lengths.

The programs for A070094, there is no canonical definition to state claims against.
-/

/-! ## A070094.P12604906384339398277

`A070099(n+1)+A070096(n+1)`
-/

namespace A070094.P12604906384339398277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070099 (n + 1) + A070096 (n + 1)

end

end A070094.P12604906384339398277

/-! ## A070094.P17315288764573510670

`∑{d}[n+1, A008683(#)*A070093((n+1)/#)]`
-/

namespace A070094.P17315288764573510670
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A070093 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A070094.P17315288764573510670

/-! ## A070094.P2980216134492254437

`A070091(n+1)+A070096(n+1)-A070107(n+1)`
-/

namespace A070094.P2980216134492254437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070091 (n + 1) + (A070096 (n + 1) - A070107 (n + 1))

end

end A070094.P2980216134492254437

/-! ## A070094.P17652524240178889139

`A070099(n+1)+∑{d}[n+1, A008683(#)*A024154((n+1)/#)]`
-/

namespace A070094.P17652524240178889139
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070099 (n + 1) + ∑ d ∈ Nat.divisors (f1 n), A008683 d * A024154 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A070094.P17652524240178889139

/-! ## A070094.P5588311203216399969

`A051493(n+1)-(A070109(n+1)+A070102(n+1))`
-/

namespace A070094.P5588311203216399969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051493 (n + 1) - (A070109 (n + 1) + A070102 (n + 1))

end

end A070094.P5588311203216399969

/-!
# A070095: Number of acute integer triangles with perimeter n and prime side lengths.

The programs for A070095, there is no canonical definition to state claims against.
-/

/-! ## A070095.P7885506934882989220

`A070088(n+1)-A070103(n+1)`
-/

namespace A070095.P7885506934882989220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070088 (n + 1) - A070103 (n + 1)

end

end A070095.P7885506934882989220

/-! ## A070095.P11955303187174859643

`A070100(n+1)+A070097(n+1)`
-/

namespace A070095.P11955303187174859643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070100 (n + 1) + A070097 (n + 1)

end

end A070095.P11955303187174859643

/-! ## A070095.P5604938913668394270

`A070092(n+1)+A070097(n+1)-A070108(n+1)`
-/

namespace A070095.P5604938913668394270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070092 (n + 1) + (A070097 (n + 1) - A070108 (n + 1))

end

end A070095.P5604938913668394270

/-! ## A070095.P646559581844166151

`A070088(n+1)-(A070108(n+1)+A070105(n+1))`
-/

namespace A070095.P646559581844166151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070088 (n + 1) - (A070108 (n + 1) + A070105 (n + 1))

end

end A070095.P646559581844166151

/-! ## A070095.P11639843630380883131

`A070090(n+1)+A070092(n+1)-A070103(n+1)`
-/

namespace A070095.P11639843630380883131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070090 (n + 1) + (A070092 (n + 1) - A070103 (n + 1))

end

end A070095.P11639843630380883131

/-! ## A070095.P11725509133622855258

`A070090(n+1)+A070100(n+1)-A070105(n+1)`
-/

namespace A070095.P11725509133622855258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070090 (n + 1) + (A070100 (n + 1) - A070105 (n + 1))

end

end A070095.P11725509133622855258

/-! ## A070095.P16084995202364135913

`A005044(n+1)-(A308318(n+1)+A070103(n+1))`
-/

namespace A070095.P16084995202364135913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005044 (n + 1) - (A308318 (n + 1) + A070103 (n + 1))

end

end A070095.P16084995202364135913

/-! ## A070095.P9813579135826074550

`A308165(n+1)%A028310(n)-A070103(n+1)`
-/

namespace A070095.P9813579135826074550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A308165 (n + 1)) (A028310 n) - A070103 (n + 1)

end

end A070095.P9813579135826074550

/-!
# A070096: Number of integer triangles with perimeter n and relatively prime side lengths which are both acute and scalene.

The programs for A070096, there is no canonical definition to state claims against.
-/

/-! ## A070096.P9875831807284623995

`∑{d}[n+1, A008683(#)*A024154((n+1)/#)]`
-/

namespace A070096.P9875831807284623995
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A024154 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A070096.P9875831807284623995

/-! ## A070096.P6224066765420717797

`∑{d}[n+1, A008683(#)*A070093((n+1)/#)]-A070099(n+1)`
-/

namespace A070096.P6224066765420717797
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A070093 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat - A070099 (n + 1)

end

end A070096.P6224066765420717797

/-! ## A070096.P2874275917904219044

`A070094(n+1)-A070099(n+1)`
-/

namespace A070096.P2874275917904219044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070094 (n + 1) - A070099 (n + 1)

end

end A070096.P2874275917904219044

/-! ## A070096.P7504094147448307250

`A070094(n+1)+A070107(n+1)-A070091(n+1)`
-/

namespace A070096.P7504094147448307250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070094 (n + 1) + (A070107 (n + 1) - A070091 (n + 1))

end

end A070096.P7504094147448307250

/-! ## A070096.P2706699866465590807

`A070094(n+1)+-1%A000032(n+1)*A070099(n+1)`
-/

namespace A070096.P2706699866465590807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070094 (n + 1) + Int.tmod (-1) (A000032 (n + 1)) * A070099 (n + 1)

end

end A070096.P2706699866465590807

/-!
# A070097: Number of integer triangles with perimeter n and prime side lengths which are both acute and scalene.

The programs for A070097, there is no canonical definition to state claims against.
-/

/-! ## A070097.P13682921401209964087

`A070095(n+1)-A070100(n+1)`
-/

namespace A070097.P13682921401209964087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070095 (n + 1) - A070100 (n + 1)

end

end A070097.P13682921401209964087

/-! ## A070097.P17569103895731165243

`A070095(n+1)+A070108(n+1)-A070092(n+1)`
-/

namespace A070097.P17569103895731165243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070095 (n + 1) + (A070108 (n + 1) - A070092 (n + 1))

end

end A070097.P17569103895731165243

/-! ## A070097.P11982430811556041011

`A070088(n+1)-(A070103(n+1)+A070100(n+1))`
-/

namespace A070097.P11982430811556041011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070088 (n + 1) - (A070103 (n + 1) + A070100 (n + 1))

end

end A070097.P11982430811556041011

/-! ## A070097.P4640418020248593800

`A070088(n+1)-(A070105(n+1)+A070092(n+1))`
-/

namespace A070097.P4640418020248593800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070088 (n + 1) - (A070105 (n + 1) + A070092 (n + 1))

end

end A070097.P4640418020248593800

/-! ## A070097.P9479839621868329147

`A070090(n+1)-A070105(n+1)`
-/

namespace A070097.P9479839621868329147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070090 (n + 1) - A070105 (n + 1)

end

end A070097.P9479839621868329147

/-! ## A070097.P10678570128827637142

`A070090(n+1)+A070108(n+1)-A070103(n+1)`
-/

namespace A070097.P10678570128827637142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070090 (n + 1) + (A070108 (n + 1) - A070103 (n + 1))

end

end A070097.P10678570128827637142

/-! ## A070097.P13578490548224215792

`A160380(A048883(n)^A198255(n+1))`
-/

namespace A070097.P13578490548224215792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160380 (SequenceMachineLib.roundAway ((A048883 n : ℚ) ^ (A198255 (n + 1) : ℤ))).toNat

end

end A070097.P13578490548224215792

/-! ## A070097.P16984391600496164426

`and(A078588(n+2), A303219(A006918(n+3)))`
-/

namespace A070097.P16984391600496164426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A078588 (n + 2)) (A303219 (A006918 (n + 3)).toNat)

end

end A070097.P16984391600496164426

/-! ## A070097.P13570887786199071120

`A255361(A100800(n+1)%A065033(n))`
-/

namespace A070097.P13570887786199071120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255361 (Int.tmod (A100800 (n + 1)) (A065033 n)).toNat

end

end A070097.P13570887786199071120

/-! ## A070097.P12684285171492273222

`A320313(A048877(A320313(n+1)))%A280193(n)`
-/

namespace A070097.P12684285171492273222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A320313 (A048877 (A320313 (n + 1)).toNat).toNat) (A280193 n)

end

end A070097.P12684285171492273222

/-!
# A070098: Number of integer triangles with perimeter n which are acute and isosceles.

The programs for A070098, the canonical program `A070098.P11418208378011695116` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070098 has offset 1).

The definition of A070098 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A070106, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A070098.P2251405281570832290

`floor((n+1)/2)-floor((n+1)/(2+sqrt(2)))-(n+2)%2`
-/

namespace A070098.P2251405281570832290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℚ) / 2⌋ - ⌊(n + 1 : ℝ) / (2 + Real.sqrt (2 : ℝ))⌋ - (((n + 2) % 2 : ℕ) : ℤ)

end

end A070098.P2251405281570832290

namespace A070098

/-- `floor((n+1)/2)-floor((n+1)/(2+sqrt(2)))-(n+2)%2` -/
def P2251405281570832290.Spec : Prop :=
  ∀ n, P2251405281570832290.a n = A070098 (n + 1)

end A070098

/-! ## A070098.P16295403860867353621

`A004526(n)-A183138(n+1)`
-/

namespace A070098.P16295403860867353621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n - A183138 (n + 1)

end

end A070098.P16295403860867353621

namespace A070098

/-- `A004526(n)-A183138(n+1)` -/
def P16295403860867353621.Spec : Prop :=
  ∀ n, P16295403860867353621.a n = A070098 (n + 1)

end A070098

/-! ## A070098.P11418208378011695116

`A059169(n+1)-A070106(n+1)`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A070098

/-- `A059169(n+1)-A070106(n+1)` -/
def P11418208378011695116.Spec : Prop :=
  ∀ n, P11418208378011695116.a n = A070098 (n + 1)

theorem P11418208378011695116.correct : P11418208378011695116.Spec := by
  intro n
  simp only [A070098, Nat.add_sub_cancel]

end A070098

/-! ## A070098.P13356784530737932178

`A070093(n+1)-A024154(n+1)`
-/

namespace A070098.P13356784530737932178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070093 (n + 1) - A024154 (n + 1)

end

end A070098.P13356784530737932178

namespace A070098

/-- `A070093(n+1)-A024154(n+1)` -/
def P13356784530737932178.Spec : Prop :=
  ∀ n, P13356784530737932178.a n = A070098 (n + 1)

end A070098

/-! ## A070098.P13434370169751004348

`∑[Δ[floor(n/sqrt(2))]-n%2]`
-/

namespace A070098.P13434370169751004348
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) / Real.sqrt (2 : ℝ)⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - ((n % 2 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A070098.P13434370169751004348

namespace A070098

/-- `∑[Δ[floor(n/sqrt(2))]-n%2]` -/
def P13434370169751004348.Spec : Prop :=
  ∀ n, P13434370169751004348.a n = A070098 (n + 1)

end A070098

/-! ## A070098.P11425997334116319142

`floor((2*(n+1)*(sqrt(2)-1)+1-(-1)^(n+1))/4)`
-/

namespace A070098.P11425997334116319142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 * ((n + 1 : ℝ) * (Real.sqrt (2 : ℝ) - 1)) + (1 - (-1) ^ (n + 1) : ℝ)) / 4⌋

end

end A070098.P11425997334116319142

namespace A070098

/-- `floor((2*(n+1)*(sqrt(2)-1)+1-(-1)^(n+1))/4)` -/
def P11425997334116319142.Spec : Prop :=
  ∀ n, P11425997334116319142.a n = A070098 (n + 1)

end A070098

/-! ## A070098.P9841671565699576902

`∑{d}[n+1, A070099(#)]`
-/

namespace A070098.P9841671565699576902
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A070099 d

end

end A070098.P9841671565699576902

namespace A070098

/-- `∑{d}[n+1, A070099(#)]` -/
def P9841671565699576902.Spec : Prop :=
  ∀ n, P9841671565699576902.a n = A070098 (n + 1)

end A070098

/-! ## A070098.P15226318633847807271

`A081946(n+1)-A000982(n)`
-/

namespace A070098.P15226318633847807271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081946 (n + 1) - A000982 n

end

end A070098.P15226318633847807271

namespace A070098

/-- `A081946(n+1)-A000982(n)` -/
def P15226318633847807271.Spec : Prop :=
  ∀ n, P15226318633847807271.a n = A070098 (n + 1)

end A070098

/-! ## A070098.P12264934276993032372

`A049472(n+1)-A110654(n)`
-/

namespace A070098.P12264934276993032372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049472 (n + 1) - A110654 n

end

end A070098.P12264934276993032372

namespace A070098

/-- `A049472(n+1)-A110654(n)` -/
def P12264934276993032372.Spec : Prop :=
  ∀ n, P12264934276993032372.a n = A070098 (n + 1)

end A070098

/-! ## A070098.P9601500675031247387

`A008619(n)-A194920(n+1)`
-/

namespace A070098.P9601500675031247387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n - A194920 (n + 1)

end

end A070098.P9601500675031247387

namespace A070098

/-- `A008619(n)-A194920(n+1)` -/
def P9601500675031247387.Spec : Prop :=
  ∀ n, P9601500675031247387.a n = A070098 (n + 1)

end A070098

/-! ## A070098.P4992412742970813810

`A182769(n+1)-A075328(n)`
-/

namespace A070098.P4992412742970813810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182769 (n + 1) - A075328 n

end

end A070098.P4992412742970813810

namespace A070098

/-- `A182769(n+1)-A075328(n)` -/
def P4992412742970813810.Spec : Prop :=
  ∀ n, P4992412742970813810.a n = A070098 (n + 1)

end A070098

/-! ## A070098.P17629061828912193736

`∑[A188295(n+1)-A000035(n)]`
-/

namespace A070098.P17629061828912193736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188295 (n + 1) - A000035 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A070098.P17629061828912193736

namespace A070098

/-- `∑[A188295(n+1)-A000035(n)]` -/
def P17629061828912193736.Spec : Prop :=
  ∀ n, P17629061828912193736.a n = A070098 (n + 1)

end A070098

/-! ## A070098.P13381570642747419055

`A003152(n+1)-A032766(n+1)`
-/

namespace A070098.P13381570642747419055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003152 (n + 1) - A032766 (n + 1)

end

end A070098.P13381570642747419055

namespace A070098

/-- `A003152(n+1)-A032766(n+1)` -/
def P13381570642747419055.Spec : Prop :=
  ∀ n, P13381570642747419055.a n = A070098 (n + 1)

end A070098

/-! ## A070098.P4855598754378880602

`A049474(n+1)-A008619(n+1)`
-/

namespace A070098.P4855598754378880602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049474 (n + 1) - A008619 (n + 1)

end

end A070098.P4855598754378880602

namespace A070098

/-- `A049474(n+1)-A008619(n+1)` -/
def P4855598754378880602.Spec : Prop :=
  ∀ n, P4855598754378880602.a n = A070098 (n + 1)

end A070098

/-! ## A070098.P9570553625415010533

`A004526(n)+1-A194920(n+1)`
-/

namespace A070098.P9570553625415010533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n + (1 - A194920 (n + 1))

end

end A070098.P9570553625415010533

namespace A070098

/-- `A004526(n)+1-A194920(n+1)` -/
def P9570553625415010533.Spec : Prop :=
  ∀ n, P9570553625415010533.a n = A070098 (n + 1)

end A070098

/-! ## A070098.P4576522021362206428

`A110654(n+1)-A194920(n+1)`
-/

namespace A070098.P4576522021362206428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (n + 1) - A194920 (n + 1)

end

end A070098.P4576522021362206428

namespace A070098

/-- `A110654(n+1)-A194920(n+1)` -/
def P4576522021362206428.Spec : Prop :=
  ∀ n, P4576522021362206428.a n = A070098 (n + 1)

end A070098

/-! ## A070098.P2821526210503335604

`A188376(n+1)-A190330(n+1)`
-/

namespace A070098.P2821526210503335604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188376 (n + 1) - A190330 (n + 1)

end

end A070098.P2821526210503335604

namespace A070098

/-- `A188376(n+1)-A190330(n+1)` -/
def P2821526210503335604.Spec : Prop :=
  ∀ n, P2821526210503335604.a n = A070098 (n + 1)

end A070098

/-! ## A070098.P14317437857058618780

`A190329(n+1)-A190336(n+1)`
-/

namespace A070098.P14317437857058618780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190329 (n + 1) - A190336 (n + 1)

end

end A070098.P14317437857058618780

namespace A070098

/-- `A190329(n+1)-A190336(n+1)` -/
def P14317437857058618780.Spec : Prop :=
  ∀ n, P14317437857058618780.a n = A070098 (n + 1)

end A070098

/-! ## A070098.P2633458544190693121

`A003152(n+1)%A026178(n+1)`
-/

namespace A070098.P2633458544190693121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003152 (n + 1)) (A026178 (n + 1))

end

end A070098.P2633458544190693121

namespace A070098

/-- `A003152(n+1)%A026178(n+1)` -/
def P2633458544190693121.Spec : Prop :=
  ∀ n, P2633458544190693121.a n = A070098 (n + 1)

end A070098

/-! ## A070098.P17276492741927812879

`A190330(n+1)%A065262(n+1)`
-/

namespace A070098.P17276492741927812879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A190330 (n + 1)) (A065262 (n + 1))

end

end A070098.P17276492741927812879

namespace A070098

/-- `A190330(n+1)%A065262(n+1)` -/
def P17276492741927812879.Spec : Prop :=
  ∀ n, P17276492741927812879.a n = A070098 (n + 1)

end A070098

/-!
# A070099: Number of integer triangles with perimeter n and relatively prime side lengths which are acute and isosceles.

The programs for A070099, the canonical program `A070099.P902782668286660812` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070099 has offset 1).

The definition of A070099 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A070099.P72062091561530630

`A070091(n+1)-A070107(n+1)`
-/

namespace A070099.P72062091561530630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070091 (n + 1) - A070107 (n + 1)

end

end A070099.P72062091561530630

namespace A070099

/-- `A070091(n+1)-A070107(n+1)` -/
def P72062091561530630.Spec : Prop :=
  ∀ n, P72062091561530630.a n = A070099 (n + 1)

theorem P72062091561530630.correct : P72062091561530630.Spec := by
  intro n
  simp only [A070099, Nat.add_sub_cancel, A070099.P72062091561530630.a, A070099.P902782668286660812.f1, A070099.P902782668286660812.a, A008683, A008683.P18254306604665478110.a, A070091, A070091.P15486854157722830517.f1, A070091.P15486854157722830517.a, A070098, A070098.P11418208378011695116.a, A070107, A070107.P4147856377676697556.a, A059169, A059169.P12427980580684764790.a, A070106, A070106.P8148621780262521077.a, A132971, A132971.P9197609016375066540.a, A156552, A156552.P4268073137713085227.a, A003152, A003152.P8355508272175907392.a, A005941, A005941.P9595689460679922607.f1, A005941.P9595689460679922607.a, A047329, A047329.P9670378678923019251.a, A085357, A085357.P3258697467278337073.a, A106400, A106400.P11201390576172776043.a, A005940, A005940.P5942875842694471387.a, A008966, A008966.P884693903657889754.a, A010060, A010060.P3080921269106500717.a, A364557, A364557.P16113127302810243144.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A070099

/-! ## A070099.P902782668286660812

`∑{d}[n+1, A008683(#)*A070098((n+1)/#)]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A070099

/-- `∑{d}[n+1, A008683(#)*A070098((n+1)/#)]` -/
def P902782668286660812.Spec : Prop :=
  ∀ n, P902782668286660812.a n = A070099 (n + 1)

theorem P902782668286660812.correct : P902782668286660812.Spec := by
  intro n
  simp only [A070099, Nat.add_sub_cancel]

end A070099

/-! ## A070099.P14828171446346821140

`A051493(n+1)-(A070107(n+1)+A024162(n+1))`
-/

namespace A070099.P14828171446346821140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051493 (n + 1) - (A070107 (n + 1) + A024162 (n + 1))

end

end A070099.P14828171446346821140

namespace A070099

/-- `A051493(n+1)-(A070107(n+1)+A024162(n+1))` -/
def P14828171446346821140.Spec : Prop :=
  ∀ n, P14828171446346821140.a n = A070099 (n + 1)

end A070099

/-! ## A070099.P8832931111301112262

`∑{d}[n+1, A008683(#)*A059169((n+1)/#)]-A070107(n+1)`
-/

namespace A070099.P8832931111301112262
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A059169 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat - A070107 (n + 1)

end

end A070099.P8832931111301112262

namespace A070099

/-- `∑{d}[n+1, A008683(#)*A059169((n+1)/#)]-A070107(n+1)` -/
def P8832931111301112262.Spec : Prop :=
  ∀ n, P8832931111301112262.a n = A070099 (n + 1)

theorem P8832931111301112262.correct : P8832931111301112262.Spec := by
  intro n
  simp only [A070099, Nat.add_sub_cancel, A070099.P8832931111301112262.f1, A070099.P8832931111301112262.a, A070099.P902782668286660812.f1, A070099.P902782668286660812.a, A008683, A008683.P18254306604665478110.a, A059169, A059169.P12427980580684764790.a, A070098, A070098.P11418208378011695116.a, A070107, A070107.P4147856377676697556.a, A070091, A070091.P15486854157722830517.f1, A070091.P15486854157722830517.a, A070106, A070106.P8148621780262521077.a, A132971, A132971.P9197609016375066540.a, A156552, A156552.P4268073137713085227.a, A003152, A003152.P8355508272175907392.a, A005941, A005941.P9595689460679922607.f1, A005941.P9595689460679922607.a, A047329, A047329.P9670378678923019251.a, A085357, A085357.P3258697467278337073.a, A106400, A106400.P11201390576172776043.a, A005940, A005940.P5942875842694471387.a, A008966, A008966.P884693903657889754.a, A010060, A010060.P3080921269106500717.a, A364557, A364557.P16113127302810243144.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A070099

/-! ## A070099.P11719907396350534729

`A002265(A000010(n+1)-A275966(n+1))-A070107(n+1)`
-/

namespace A070099.P11719907396350534729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A000010 (n + 1) - A275966 (n + 1)).toNat - A070107 (n + 1)

end

end A070099.P11719907396350534729

namespace A070099

/-- `A002265(A000010(n+1)-A275966(n+1))-A070107(n+1)` -/
def P11719907396350534729.Spec : Prop :=
  ∀ n, P11719907396350534729.a n = A070099 (n + 1)

end A070099

/-! ## A070099.P5114232852942090441

`A070094(n+1)-A070096(n+1)`
-/

namespace A070099.P5114232852942090441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070094 (n + 1) - A070096 (n + 1)

end

end A070099.P5114232852942090441

namespace A070099

/-- `A070094(n+1)-A070096(n+1)` -/
def P5114232852942090441.Spec : Prop :=
  ∀ n, P5114232852942090441.a n = A070099 (n + 1)

end A070099

/-! ## A070099.P8517508817868920718

`A070091(n+1)+A070104(n+1)-A070102(n+1)`
-/

namespace A070099.P8517508817868920718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070091 (n + 1) + (A070104 (n + 1) - A070102 (n + 1))

end

end A070099.P8517508817868920718

namespace A070099

/-- `A070091(n+1)+A070104(n+1)-A070102(n+1)` -/
def P8517508817868920718.Spec : Prop :=
  ∀ n, P8517508817868920718.a n = A070099 (n + 1)

end A070099

/-! ## A070099.P13304568265713387759

`A070091(n+1)+A008683(A049591(n+1))*A070107(n+1)`
-/

namespace A070099.P13304568265713387759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070091 (n + 1) + A008683 (A049591 (n + 1)).toNat * A070107 (n + 1)

end

end A070099.P13304568265713387759

namespace A070099

/-- `A070091(n+1)+A008683(A049591(n+1))*A070107(n+1)` -/
def P13304568265713387759.Spec : Prop :=
  ∀ n, P13304568265713387759.a n = A070099 (n + 1)

end A070099

