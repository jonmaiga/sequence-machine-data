import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C005
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C012
import Seq.B000.C014
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C020
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
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
import Seq.B007.C001
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
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
import Seq.Opaque.C026

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A071700: Product of twin primes of form (4*k+3,4*(k+1)+1), k>=0.

The programs for A071700, the canonical program `A071700.P15703386413530463782` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A071700 has offset 1).

The definition of A071700 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A071700.P13572462054623338634

`(A071698(n+1)+1)²-1`
-/

namespace A071700.P13572462054623338634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A071698 (n + 1) + 1) ^ 2 - 1

end

end A071700.P13572462054623338634

namespace A071700

/-- `(A071698(n+1)+1)²-1` -/
def P13572462054623338634.Spec : Prop :=
  ∀ n, P13572462054623338634.a n = A071700 (n + 1)

end A071700

/-! ## A071700.P15703386413530463782

`(1-A071699(n+1))²-1`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A071700

/-- `(1-A071699(n+1))²-1` -/
def P15703386413530463782.Spec : Prop :=
  ∀ n, P15703386413530463782.a n = A071700 (n + 1)

theorem P15703386413530463782.correct : P15703386413530463782.Spec := by
  intro n
  simp only [A071700, Nat.add_sub_cancel]

end A071700

/-! ## A071700.P17089100628567423926

`A071698(n+1)*A071699(n+1)`
-/

namespace A071700.P17089100628567423926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071698 (n + 1) * A071699 (n + 1)

end

end A071700.P17089100628567423926

namespace A071700

/-- `A071698(n+1)*A071699(n+1)` -/
def P17089100628567423926.Spec : Prop :=
  ∀ n, P17089100628567423926.a n = A071700 (n + 1)

end A071700

/-! ## A071700.P8469767060522408761

`p?[A108245(2*(n+1))]*p?[A108245(2*n+3)]`
-/

namespace A071700.P8469767060522408761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108245 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108245 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

end

end A071700.P8469767060522408761

namespace A071700

/-- `p?[A108245(2*(n+1))]*p?[A108245(2*n+3)]` -/
def P8469767060522408761.Spec : Prop :=
  ∀ n, P8469767060522408761.a n = A071700 (n + 1)

end A071700

/-! ## A071700.P2483454017920965655

`record[(A020639(p?[4*n-1]+2)-1)²]-1`
-/

namespace A071700.P2483454017920965655
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A020639 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) + 2).toNat - 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - 1

end

end A071700.P2483454017920965655

namespace A071700

/-- `record[(A020639(p?[4*n-1]+2)-1)²]-1` -/
def P2483454017920965655.Spec : Prop :=
  ∀ n, P2483454017920965655.a n = A071700 (n + 1)

end A071700

/-! ## A071700.P8528451655344145661

`A000010(A071699(n+1))²-1`
-/

namespace A071700.P8528451655344145661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A071699 (n + 1)).toNat ^ 2 - 1

end

end A071700.P8528451655344145661

namespace A071700

/-- `A000010(A071699(n+1))²-1` -/
def P8528451655344145661.Spec : Prop :=
  ∀ n, P8528451655344145661.a n = A071700 (n + 1)

end A071700

/-! ## A071700.P16489213696885334021

`A000203(A071698(n+1))²-1`
-/

namespace A071700.P16489213696885334021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A071698 (n + 1)).toNat ^ 2 - 1

end

end A071700.P16489213696885334021

namespace A071700

/-- `A000203(A071698(n+1))²-1` -/
def P16489213696885334021.Spec : Prop :=
  ∀ n, P16489213696885334021.a n = A071700 (n + 1)

end A071700

/-! ## A071700.P11763004974523734452

`A000265(A071698(n+1)+2)*A071698(n+1)`
-/

namespace A071700.P11763004974523734452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A071698 (n + 1) + 2).toNat * A071698 (n + 1)

end

end A071700.P11763004974523734452

namespace A071700

/-- `A000265(A071698(n+1)+2)*A071698(n+1)` -/
def P11763004974523734452.Spec : Prop :=
  ∀ n, P11763004974523734452.a n = A071700 (n + 1)

end A071700

/-! ## A071700.P8543499484952977986

`A020639(A071698(n+1)+2)*A071698(n+1)`
-/

namespace A071700.P8543499484952977986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A071698 (n + 1) + 2).toNat * A071698 (n + 1)

end

end A071700.P8543499484952977986

namespace A071700

/-- `A020639(A071698(n+1)+2)*A071698(n+1)` -/
def P8543499484952977986.Spec : Prop :=
  ∀ n, P8543499484952977986.a n = A071700 (n + 1)

end A071700

/-! ## A071700.P10823054137181098058

`A007947(A071699(n+1)-2)*A071699(n+1)`
-/

namespace A071700.P10823054137181098058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A071699 (n + 1) - 2).toNat * A071699 (n + 1)

end

end A071700.P10823054137181098058

namespace A071700

/-- `A007947(A071699(n+1)-2)*A071699(n+1)` -/
def P10823054137181098058.Spec : Prop :=
  ∀ n, P10823054137181098058.a n = A071700 (n + 1)

end A071700

/-! ## A071700.P8394455024427558522

`∩[A037074(n+1), A235864(n+1)]`
-/

namespace A071700.P8394455024427558522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037074 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235864 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A071700.P8394455024427558522

namespace A071700

/-- `∩[A037074(n+1), A235864(n+1)]` -/
def P8394455024427558522.Spec : Prop :=
  ∀ n, (P8394455024427558522.a n : ℤ) = A071700 (n + 1)

end A071700

/-! ## A071700.P2316968100892706704

`∩[A134020(n+1), A235864(n+1)]`
-/

namespace A071700.P2316968100892706704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134020 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235864 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A071700.P2316968100892706704

namespace A071700

/-- `∩[A134020(n+1), A235864(n+1)]` -/
def P2316968100892706704.Spec : Prop :=
  ∀ n, (P2316968100892706704.a n : ℤ) = A071700 (n + 1)

end A071700

/-! ## A071700.P7424755179945472350

`A000203(A122564(2*n+1))²-1`
-/

namespace A071700.P7424755179945472350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A122564 (2 * n + 1)).toNat ^ 2 - 1

end

end A071700.P7424755179945472350

namespace A071700

/-- `A000203(A122564(2*n+1))²-1` -/
def P7424755179945472350.Spec : Prop :=
  ∀ n, P7424755179945472350.a n = A071700 (n + 1)

end A071700

/-! ## A071700.P4348175215977167158

`A122564(2*n+1)*A122564(2*(n+1))`
-/

namespace A071700.P4348175215977167158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122564 (2 * n + 1) * A122564 (2 * (n + 1))

end

end A071700.P4348175215977167158

namespace A071700

/-- `A122564(2*n+1)*A122564(2*(n+1))` -/
def P4348175215977167158.Spec : Prop :=
  ∀ n, P4348175215977167158.a n = A071700 (n + 1)

end A071700

/-! ## A071700.P11753071269634632096

`∩[A089954(n+1), A235864(n+1)]`
-/

namespace A071700.P11753071269634632096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089954 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235864 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A071700.P11753071269634632096

namespace A071700

/-- `∩[A089954(n+1), A235864(n+1)]` -/
def P11753071269634632096.Spec : Prop :=
  ∀ n, (P11753071269634632096.a n : ℤ) = A071700 (n + 1)

end A071700

/-! ## A071700.P8529853492824087360

`∩[A089952(n+1), A235864(n+1)]`
-/

namespace A071700.P8529853492824087360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089952 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235864 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A071700.P8529853492824087360

namespace A071700

/-- `∩[A089952(n+1), A235864(n+1)]` -/
def P8529853492824087360.Spec : Prop :=
  ∀ n, (P8529853492824087360.a n : ℤ) = A071700 (n + 1)

end A071700

/-! ## A071700.P10156820469092367012

`∩[A189045(n+1), A235864(n+1)]`
-/

namespace A071700.P10156820469092367012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189045 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235864 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A071700.P10156820469092367012

namespace A071700

/-- `∩[A189045(n+1), A235864(n+1)]` -/
def P10156820469092367012.Spec : Prop :=
  ∀ n, (P10156820469092367012.a n : ℤ) = A071700 (n + 1)

end A071700

/-! ## A071700.P16303592943583552470

`∩[A033476(n), A141759(n)]`
-/

namespace A071700.P16303592943583552470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033476 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141759 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A071700.P16303592943583552470

namespace A071700

/-- `∩[A033476(n), A141759(n)]` -/
def P16303592943583552470.Spec : Prop :=
  ∀ n, (P16303592943583552470.a n : ℤ) = A071700 (n + 1)

end A071700

/-! ## A071700.P6328670348830257971

`∩[A006094(n+1), A141759(n)]`
-/

namespace A071700.P6328670348830257971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006094 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141759 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A071700.P6328670348830257971

namespace A071700

/-- `∩[A006094(n+1), A141759(n)]` -/
def P6328670348830257971.Spec : Prop :=
  ∀ n, (P6328670348830257971.a n : ℤ) = A071700 (n + 1)

end A071700

/-! ## A071700.P7920758596614961750

`∩[A037074(n+1), A141759(n)]`
-/

namespace A071700.P7920758596614961750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037074 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141759 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A071700.P7920758596614961750

namespace A071700

/-- `∩[A037074(n+1), A141759(n)]` -/
def P7920758596614961750.Spec : Prop :=
  ∀ n, (P7920758596614961750.a n : ℤ) = A071700 (n + 1)

end A071700

/-!
# A071701: Number of twin prime pairs <= n of form (4*k+1,4*k+3), k>0.

The programs for A071701, the canonical program `A071701.P18388032048899093452` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A071701 has offset 1).

The definition of A071701 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A071701.P4284313113769987855

`∑[char[p?[p?[4*n-1]-2]-1]]%(n+3)`
-/

namespace A071701.P4284313113769987855
noncomputable section

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n : ℤ) - 1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f4 (SequenceMachineLib.nth (fun j => (f4 j).toNat.Prime) n) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => (f3 j).toNat.Prime) n) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) % (n + 3)

end

end A071701.P4284313113769987855

namespace A071701

/-- `∑[char[p?[p?[4*n-1]-2]-1]]%(n+3)` -/
def P4284313113769987855.Spec : Prop :=
  ∀ n, (P4284313113769987855.a n : ℤ) = A071701 (n + 1)

end A071701

/-! ## A071701.P17116901195006287436

`∑[char[A071695(n+1)-1]]`
-/

namespace A071701.P17116901195006287436
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071695 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071701.P17116901195006287436

namespace A071701

/-- `∑[char[A071695(n+1)-1]]` -/
def P17116901195006287436.Spec : Prop :=
  ∀ n, (P17116901195006287436.a n : ℤ) = A071701 (n + 1)

end A071701

/-! ## A071701.P4313571911869842357

`∑[char[4*A123986(n+1)]]`
-/

namespace A071701.P4313571911869842357
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A123986 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071701.P4313571911869842357

namespace A071701

/-- `∑[char[4*A123986(n+1)]]` -/
def P4313571911869842357.Spec : Prop :=
  ∀ n, (P4313571911869842357.a n : ℤ) = A071701 (n + 1)

end A071701

/-! ## A071701.P7306353080580770238

`∑[char[A000010(A071695(n+1))]]`
-/

namespace A071701.P7306353080580770238
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A071695 (n + 1)).toNat

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071701.P7306353080580770238

namespace A071701

/-- `∑[char[A000010(A071695(n+1))]]` -/
def P7306353080580770238.Spec : Prop :=
  ∀ n, (P7306353080580770238.a n : ℤ) = A071701 (n + 1)

end A071701

/-! ## A071701.P18388032048899093452

`A071538(n+1)-A071702(n+1)`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A071701

/-- `A071538(n+1)-A071702(n+1)` -/
def P18388032048899093452.Spec : Prop :=
  ∀ n, P18388032048899093452.a n = A071701 (n + 1)

theorem P18388032048899093452.correct : P18388032048899093452.Spec := by
  intro n
  simp only [A071701, Nat.add_sub_cancel]

end A071701

/-! ## A071701.P2262770728516363279

`∑[A079261(A060648(n+1))]`
-/

namespace A071701.P2262770728516363279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079261 (A060648 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071701.P2262770728516363279

namespace A071701

/-- `∑[A079261(A060648(n+1))]` -/
def P2262770728516363279.Spec : Prop :=
  ∀ n, P2262770728516363279.a n = A071701 (n + 1)

end A071701

/-! ## A071701.P18289187100080949328

`∑[C(∑{d}[n+1, #]%4, A364384(n+3))]`
-/

namespace A071701.P18289187100080949328
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ((∑ d ∈ Nat.divisors (f2 n), d) % 4) (A364384 (n + 3)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071701.P18289187100080949328

namespace A071701

/-- `∑[C(∑{d}[n+1, #]%4, A364384(n+3))]` -/
def P18289187100080949328.Spec : Prop :=
  ∀ n, (P18289187100080949328.a n : ℤ) = A071701 (n + 1)

end A071701

/-! ## A071701.P11159734476707775632

`A004218(A200675(n))`
-/

namespace A071701.P11159734476707775632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004218 (A200675 n).toNat

end

end A071701.P11159734476707775632

namespace A071701

/-- `A004218(A200675(n))` -/
def P11159734476707775632.Spec : Prop :=
  ∀ n, P11159734476707775632.a n = A071701 (n + 1)

end A071701

/-! ## A071701.P3414109062246306882

`round(A225552(n+3)/28)`
-/

namespace A071701.P3414109062246306882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A225552 (n + 3) : ℚ) / 28)

end

end A071701.P3414109062246306882

namespace A071701

/-- `round(A225552(n+3)/28)` -/
def P3414109062246306882.Spec : Prop :=
  ∀ n, P3414109062246306882.a n = A071701 (n + 1)

end A071701

/-! ## A071701.P983962425510206617

`round((A030561(A146087(n+1))+1+n)/12)`
-/

namespace A071701.P983962425510206617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A030561 (A146087 (n + 1)).toNat + 1 + (n : ℤ) : ℚ) / 12)

end

end A071701.P983962425510206617

namespace A071701

/-- `round((A030561(A146087(n+1))+1+n)/12)` -/
def P983962425510206617.Spec : Prop :=
  ∀ n, P983962425510206617.a n = A071701 (n + 1)

end A071701

/-!
# A071702: Number of twin prime pairs <= n of form (4*k+3,4*(k+1)+1), k>=0.

The programs for A071702, the canonical program `A071702.P6180211292922770860` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A071702 has offset 1).

The definition of A071702 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A071702.P17281631248698962260

`∑[char[A071699(n+1)-3]]`
-/

namespace A071702.P17281631248698962260
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071699 (n + 1) - 3

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071702.P17281631248698962260

namespace A071702

/-- `∑[char[A071699(n+1)-3]]` -/
def P17281631248698962260.Spec : Prop :=
  ∀ n, (P17281631248698962260.a n : ℤ) = A071702 (n + 1)

end A071702

/-! ## A071702.P9032767473311879196

`∑[char[A000010(A071698(n+1))]]`
-/

namespace A071702.P9032767473311879196
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A071698 (n + 1)).toNat

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071702.P9032767473311879196

namespace A071702

/-- `∑[char[A000010(A071698(n+1))]]` -/
def P9032767473311879196.Spec : Prop :=
  ∀ n, (P9032767473311879196.a n : ℤ) = A071702 (n + 1)

end A071702

/-! ## A071702.P6180211292922770860

`∑[A079260(A014973(n+1)+2)]`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A071702

/-- `∑[A079260(A014973(n+1)+2)]` -/
def P6180211292922770860.Spec : Prop :=
  ∀ n, P6180211292922770860.a n = A071702 (n + 1)

theorem P6180211292922770860.correct : P6180211292922770860.Spec := by
  intro n
  simp only [A071702, Nat.add_sub_cancel]

end A071702

/-! ## A071702.P2439364939751815972

`A071538(n+1)-A071701(n+1)`
-/

namespace A071702.P2439364939751815972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071538 (n + 1) - A071701 (n + 1)

end

end A071702.P2439364939751815972

namespace A071702

/-- `A071538(n+1)-A071701(n+1)` -/
def P2439364939751815972.Spec : Prop :=
  ∀ n, P2439364939751815972.a n = A071702 (n + 1)

end A071702

/-! ## A071702.P2519878670340049254

`∑[A010051(n+1)*A079260(n+3)]`
-/

namespace A071702.P2519878670340049254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1) * A079260 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071702.P2519878670340049254

namespace A071702

/-- `∑[A010051(n+1)*A079260(n+3)]` -/
def P2519878670340049254.Spec : Prop :=
  ∀ n, P2519878670340049254.a n = A071702 (n + 1)

end A071702

/-! ## A071702.P16844333070851689334

`∑[A079260(n+3)*A079261(n+1)]`
-/

namespace A071702.P16844333070851689334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079260 (n + 3) * A079261 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071702.P16844333070851689334

namespace A071702

/-- `∑[A079260(n+3)*A079261(n+1)]` -/
def P16844333070851689334.Spec : Prop :=
  ∀ n, P16844333070851689334.a n = A071702 (n + 1)

end A071702

/-! ## A071702.P8647452257636186153

`∑[A079261(n+1)*A241423(n+2)]`
-/

namespace A071702.P8647452257636186153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079261 (n + 1) * A241423 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071702.P8647452257636186153

namespace A071702

/-- `∑[A079261(n+1)*A241423(n+2)]` -/
def P8647452257636186153.Spec : Prop :=
  ∀ n, P8647452257636186153.a n = A071702 (n + 1)

end A071702

/-! ## A071702.P3438478997741082839

`∑[A079260(A166590(n+1))]`
-/

namespace A071702.P3438478997741082839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079260 (A166590 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071702.P3438478997741082839

namespace A071702

/-- `∑[A079260(A166590(n+1))]` -/
def P3438478997741082839.Spec : Prop :=
  ∀ n, P3438478997741082839.a n = A071702 (n + 1)

end A071702

/-! ## A071702.P12125537105045104933

`∑[val(A167920(n+1), 4)]`
-/

namespace A071702.P12125537105045104933
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A167920 (n + 1)).toNat 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071702.P12125537105045104933

namespace A071702

/-- `∑[val(A167920(n+1), 4)]` -/
def P12125537105045104933.Spec : Prop :=
  ∀ n, (P12125537105045104933.a n : ℤ) = A071702 (n + 1)

end A071702

/-!
# A071703: Number of ways to represent the n-th prime as arithmetic mean of three odd primes.

The programs for A071703, there is no canonical definition to state claims against.
-/

/-! ## A071703.P12388584234903446151

`A190353(or(1, 3*p?[round(8*n/7)]))`
-/

namespace A071703.P12388584234903446151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190353 (Int.lor 1 (3 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))).toNat

end

end A071703.P12388584234903446151

/-! ## A071703.P17316999440453773400

`A190353(A288313(n+2))`
-/

namespace A071703.P17316999440453773400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190353 (A288313 (n + 2)).toNat

end

end A071703.P17316999440453773400

/-! ## A071703.P9263218447979372628

`A190353(3*A006005(n+1))`
-/

namespace A071703.P9263218447979372628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190353 (3 * A006005 (n + 1)).toNat

end

end A071703.P9263218447979372628

/-! ## A071703.P14142980616157972375

`A190353(3*A075643(n+2))`
-/

namespace A071703.P14142980616157972375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190353 (3 * A075643 (n + 2)).toNat

end

end A071703.P14142980616157972375

/-! ## A071703.P11153591476946038171

`A190353(or(1, A001748(n+1)))`
-/

namespace A071703.P11153591476946038171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190353 (Int.lor 1 (A001748 (n + 1))).toNat

end

end A071703.P11153591476946038171

/-! ## A071703.P13837401712329047481

`A007963(floor(A001748(n+1)/2))`
-/

namespace A071703.P13837401712329047481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007963 ⌊(A001748 (n + 1) : ℚ) / 2⌋.toNat

end

end A071703.P13837401712329047481

/-! ## A071703.P8726408422040009998

`A190353(or(1, 3*A000040(n+1)))`
-/

namespace A071703.P8726408422040009998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190353 (Int.lor 1 (3 * A000040 (n + 1))).toNat

end

end A071703.P8726408422040009998

/-! ## A071703.P3123939798169644462

`A190353(A063534(n+1))%(n+1)²`
-/

namespace A071703.P3123939798169644462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A190353 (A063534 (n + 1)).toNat) ((n + 1) ^ 2 : ℤ)

end

end A071703.P3123939798169644462

/-! ## A071703.P6993175970236709004

`A190353(or(1, lcm(3, 3*A000040(2*n-(n-1)))))`
-/

namespace A071703.P6993175970236709004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190353 (Nat.lor 1 (Int.lcm 3 (3 * A000040 ((2 * n : ℤ) - ((n : ℤ) - 1)).toNat)))

end

end A071703.P6993175970236709004

/-!
# A071704: Number of ways to represent the n-th prime as arithmetic mean of three other odd primes.

The programs for A071704, there is no canonical definition to state claims against.
-/

/-! ## A071704.P10393032589135044511

`A190353(A001748(n+1))-A116619(n+1)`
-/

namespace A071704.P10393032589135044511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190353 (A001748 (n + 1)).toNat - A116619 (n + 1)

end

end A071704.P10393032589135044511

/-! ## A071704.P12883919876236280462

`A190353(A063534(n+1))-A116619(n+1)`
-/

namespace A071704.P12883919876236280462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190353 (A063534 (n + 1)).toNat - A116619 (n + 1)

end

end A071704.P12883919876236280462

/-! ## A071704.P2234116774002943886

`A190353(A288313(n+2))-A002375(A006005(n+1))`
-/

namespace A071704.P2234116774002943886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190353 (A288313 (n + 2)).toNat - A002375 (A006005 (n + 1)).toNat

end

end A071704.P2234116774002943886

/-! ## A071704.P7342053452750521255

`A190353(3*A006005(n+1))-A002375(A006005(n+1))`
-/

namespace A071704.P7342053452750521255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190353 (3 * A006005 (n + 1)).toNat - A002375 (A006005 (n + 1)).toNat

end

end A071704.P7342053452750521255

/-! ## A071704.P1750406027279946777

`A190353(A001748(n+1))-A083338(A100484(n+1))`
-/

namespace A071704.P1750406027279946777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190353 (A001748 (n + 1)).toNat - A083338 (A100484 (n + 1)).toNat

end

end A071704.P1750406027279946777

/-! ## A071704.P1175624632710033919

`A071703(n+1)-A002375(A006005(n+1))`
-/

namespace A071704.P1175624632710033919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071703 (n + 1) - A002375 (A006005 (n + 1)).toNat

end

end A071704.P1175624632710033919

/-! ## A071704.P728326634864904759

`A071703(n+1)-A190353(A100484(n+1))`
-/

namespace A071704.P728326634864904759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071703 (n + 1) - A190353 (A100484 (n + 1)).toNat

end

end A071704.P728326634864904759

/-! ## A071704.P15042500595269132325

`A028310(A071703(n+1))-A116619(n+1)`
-/

namespace A071704.P15042500595269132325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A071703 (n + 1)).toNat - A116619 (n + 1)

end

end A071704.P15042500595269132325

/-!
# A071706: Number of complete mappings f(x) of the cyclic group Z_{2n+1} such that -f(-x)=f.

The programs for A071706, there is no canonical definition to state claims against.
-/

/-! ## A071706.P4815220201850791070

`A030396(A150633(n))`
-/

namespace A071706.P4815220201850791070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030396 (A150633 n).toNat

end

end A071706.P4815220201850791070

/-! ## A071706.P3198631840572233833

`A353413(A175787(n!))`
-/

namespace A071706.P3198631840572233833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353413 (A175787 (Nat.factorial n)).toNat

end

end A071706.P3198631840572233833

/-! ## A071706.P4213110000311365904

`A126571(or(1, A308501(n)))`
-/

namespace A071706.P4213110000311365904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126571 (Int.lor 1 (A308501 n)).toNat

end

end A071706.P4213110000311365904

/-!
# A071707: Numbers k that divide tau(k)*sigma(k).

The programs for A071707, there is no canonical definition to state claims against.
-/

/-! ## A071707.P9368406893664814092

`record[gcd(n+1, A064840(n+1))]`
-/

namespace A071707.P9368406893664814092
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A064840 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A071707.P9368406893664814092

/-! ## A071707.P3668636854158274719

`record[gcd(A064840(n+1), A092486(n))]`
-/

namespace A071707.P3668636854158274719
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A064840 (n + 1)) (A092486 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A071707.P3668636854158274719

/-! ## A071707.P14560541280164396524

`record[A163105(n+1)*A176816(A062069(n+1))]`
-/

namespace A071707.P14560541280164396524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163105 (n + 1) * A176816 (A062069 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A071707.P14560541280164396524

/-!
# A071708: Numerator of Sum_{k=1..n} phi(k)/k.

The programs for A071708, there is no canonical definition to state claims against.
-/

/-! ## A071708.P1055313680559752154

`(n+2)*A072155(n+1)-A250034(n+1)`
-/

namespace A071708.P1055313680559752154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A072155 (n + 1) - A250034 (n + 1)

end

end A071708.P1055313680559752154

/-! ## A071708.P10606575295251116656

`A250034(n+1)/A250032(n+2)*A250031(n+2)`
-/

namespace A071708.P10606575295251116656
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A250034 (n + 1) : ℚ) / (A250032 (n + 2) : ℚ) * (A250031 (n + 2) : ℚ)

end

end A071708.P10606575295251116656

/-! ## A071708.P2581677302049926837

`A060791(A174965(n+1)*A250031(n+2))`
-/

namespace A071708.P2581677302049926837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060791 (A174965 (n + 1) * A250031 (n + 2)).toNat

end

end A071708.P2581677302049926837

/-!
# A071709: Array A(i,j)= T(prime(i)^j) read by antidiagonals, where T(x) denote the "type" of the integer x: T(m)=1 or 2 depending on whether 1 or 2 is a descendant of n in the Half-totient tree.

The programs for A071709, there is no canonical definition to state claims against.
-/

/-! ## A071709.P14379114424501090331

`gcd(2, A396499(n+2))`
-/

namespace A071709.P14379114424501090331
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A396499 (n + 2))

end

end A071709.P14379114424501090331

/-! ## A071709.P10205696113592402079

`A000034(A004396(A312928(n))*A128141(n+1))`
-/

namespace A071709.P10205696113592402079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A004396 (A312928 n).toNat * A128141 (n + 1)).toNat

end

end A071709.P10205696113592402079

/-! ## A071709.P11982097089925740414

`A040001(A332673(n+4)+A001248(n+5))`
-/

namespace A071709.P11982097089925740414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (A332673 (n + 4) + A001248 (n + 5)).toNat

end

end A071709.P11982097089925740414

/-! ## A071709.P16267126208997953377

`A276949(A327244(n+3)+2)`
-/

namespace A071709.P16267126208997953377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276949 (A327244 (n + 3) + 2).toNat

end

end A071709.P16267126208997953377

/-! ## A071709.P18266022461704378426

`A000034(A274706(3*n+2)+A224133(n+2))`
-/

namespace A071709.P18266022461704378426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A274706 (3 * n + 2) + A224133 (n + 2)).toNat

end

end A071709.P18266022461704378426

/-!
# A071710: Highly Wilsonian primes: smallest primes p such that w(p)=n where w(n) denote the number of nonnegative integers k such that k! = +1 or -1 (mod n).

The programs for A071710, there is no canonical definition to state claims against.
-/

/-! ## A071710.P2667468223096553288

`record[A005145(A005176(n))]`
-/

namespace A071710.P2667468223096553288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005145 (A005176 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A071710.P2667468223096553288

/-! ## A071710.P510985861531220076

`p?[A036234(A133523(n))]`
-/

namespace A071710.P510985861531220076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036234 (A133523 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A071710.P510985861531220076

/-! ## A071710.P9485427527761834152

`A142349(A299437(n+1))`
-/

namespace A071710.P9485427527761834152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142349 (A299437 (n + 1)).toNat

end

end A071710.P9485427527761834152

/-!
# A071715: Expansion of (1+x*C^4)*C^4, where C = (1-(1-4*x)^(1/2))/(2*x) is g.f. for Catalan numbers, A000108.

The programs for A071715, the canonical program `A071715.P2007050973766526109` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A071715 has offset 0).

The definition of A071715 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A071715.P2007050973766526109

`∑[A026027(n+2)-A099376(n)]`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A071715

/-- `∑[A026027(n+2)-A099376(n)]` -/
def P2007050973766526109.Spec : Prop :=
  ∀ n, P2007050973766526109.a n = A071715 n

theorem P2007050973766526109.correct : P2007050973766526109.Spec := by
  intro n
  simp only [A071715]

end A071715

/-! ## A071715.P17572515226023410591

`A026030(n+2)-Δ[A002057(n)]`
-/

namespace A071715.P17572515226023410591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002057 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026030 (n + 2) - (f1 (n + 1) - f1 n)

end

end A071715.P17572515226023410591

namespace A071715

/-- `A026030(n+2)-Δ[A002057(n)]` -/
def P17572515226023410591.Spec : Prop :=
  ∀ n, P17572515226023410591.a n = A071715 n

end A071715

/-! ## A071715.P6102345883731133784

`A026030(n+2)-A026016(n+2)`
-/

namespace A071715.P6102345883731133784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026030 (n + 2) - A026016 (n + 2)

end

end A071715.P6102345883731133784

namespace A071715

/-- `A026030(n+2)-A026016(n+2)` -/
def P6102345883731133784.Spec : Prop :=
  ∀ n, P6102345883731133784.a n = A071715 n

end A071715

/-! ## A071715.P9093768863343296848

`Δ[A120009(n+2)+A000588(n+2)]`
-/

namespace A071715.P9093768863343296848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120009 (n + 2) + A000588 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A071715.P9093768863343296848

namespace A071715

/-- `Δ[A120009(n+2)+A000588(n+2)]` -/
def P9093768863343296848.Spec : Prop :=
  ∀ n, P9093768863343296848.a n = A071715 n

end A071715

/-! ## A071715.P5522986977260855013

`A026030(n+2)-Δ[A099376(n+1)]`
-/

namespace A071715.P5522986977260855013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099376 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026030 (n + 2) - (f1 (n + 1) - f1 n)

end

end A071715.P5522986977260855013

namespace A071715

/-- `A026030(n+2)-Δ[A099376(n+1)]` -/
def P5522986977260855013.Spec : Prop :=
  ∀ n, P5522986977260855013.a n = A071715 n

end A071715

/-! ## A071715.P4453621247838742701

`A000245(n+1)+A026014(n+2)-A026013(n+1)`
-/

namespace A071715.P4453621247838742701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000245 (n + 1) + (A026014 (n + 2) - A026013 (n + 1))

end

end A071715.P4453621247838742701

namespace A071715

/-- `A000245(n+1)+A026014(n+2)-A026013(n+1)` -/
def P4453621247838742701.Spec : Prop :=
  ∀ n, P4453621247838742701.a n = A071715 n

end A071715

/-! ## A071715.P13658974715821314834

`A026017(n+3)-(A026016(n+2)+A003517(n+2))`
-/

namespace A071715.P13658974715821314834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026017 (n + 3) - (A026016 (n + 2) + A003517 (n + 2))

end

end A071715.P13658974715821314834

namespace A071715

/-- `A026017(n+3)-(A026016(n+2)+A003517(n+2))` -/
def P13658974715821314834.Spec : Prop :=
  ∀ n, P13658974715821314834.a n = A071715 n

end A071715

/-! ## A071715.P2034487817528855199

`A099376(n+1)+A003518(n+3)-A026018(n+3)`
-/

namespace A071715.P2034487817528855199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099376 (n + 1) + (A003518 (n + 3) - A026018 (n + 3))

end

end A071715.P2034487817528855199

namespace A071715

/-- `A099376(n+1)+A003518(n+3)-A026018(n+3)` -/
def P2034487817528855199.Spec : Prop :=
  ∀ n, P2034487817528855199.a n = A071715 n

end A071715

/-!
# A071716: Expansion of (1+x^2*C)*C, where C = (1-(1-4*x)^(1/2))/(2*x) is g.f. for Catalan numbers, A000108.

The programs for A071716, the canonical program `A071716.P13302059539819957554` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A071716 has offset 0).

The definition of A071716 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 172 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A071716.P11918095354782460777

`A167422(n-char[1])`
-/

namespace A071716.P11918095354782460777
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167422 (n - (if ∃ j, f1 j = n then 1 else 0))

end

end A071716.P11918095354782460777

namespace A071716

/-- `A167422(n-char[1])` -/
def P11918095354782460777.Spec : Prop :=
  ∀ n, P11918095354782460777.a n = A071716 n

end A071716

/-! ## A071716.P7914354262738758219

`abs(2-A256644(2*n))`
-/

namespace A071716.P7914354262738758219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - A256644 (2 * n)|

end

end A071716.P7914354262738758219

namespace A071716

/-- `abs(2-A256644(2*n))` -/
def P7914354262738758219.Spec : Prop :=
  ∀ n, P7914354262738758219.a n = A071716 n

end A071716

/-! ## A071716.P5190176875543827732

`Δ[A155051(A004275(n))]`
-/

namespace A071716.P5190176875543827732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155051 (A004275 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A071716.P5190176875543827732

namespace A071716

/-- `Δ[A155051(A004275(n))]` -/
def P5190176875543827732.Spec : Prop :=
  ∀ n, P5190176875543827732.a n = A071716 n

end A071716

/-! ## A071716.P9999614500289135130

`A167422(n)+A159075(n)`
-/

namespace A071716.P9999614500289135130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167422 n + A159075 n

end

end A071716.P9999614500289135130

namespace A071716

/-- `A167422(n)+A159075(n)` -/
def P9999614500289135130.Spec : Prop :=
  ∀ n, P9999614500289135130.a n = A071716 n

end A071716

/-! ## A071716.P13165118738474723671

`A246604(n)+A192480(n)`
-/

namespace A071716.P13165118738474723671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246604 n + A192480 n

end

end A071716.P13165118738474723671

namespace A071716

/-- `A246604(n)+A192480(n)` -/
def P13165118738474723671.Spec : Prop :=
  ∀ n, P13165118738474723671.a n = A071716 n

end A071716

/-! ## A071716.P10345742098097896104

`A167422(n)-A063524(n)`
-/

namespace A071716.P10345742098097896104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167422 n - A063524 n

end

end A071716.P10345742098097896104

namespace A071716

/-- `A167422(n)-A063524(n)` -/
def P10345742098097896104.Spec : Prop :=
  ∀ n, P10345742098097896104.a n = A071716 n

end A071716

/-! ## A071716.P11104699384082294077

`A167422(n)/A373565(n)`
-/

namespace A071716.P11104699384082294077
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167422 n : ℚ) / (A373565 n : ℚ)

end

end A071716.P11104699384082294077

namespace A071716

/-- `A167422(n)/A373565(n)` -/
def P11104699384082294077.Spec : Prop :=
  ∀ n, P11104699384082294077.a n = (A071716 n : ℚ)

end A071716

/-! ## A071716.P16493995534770013174

`A104722(2*(A028310(n)-1))`
-/

namespace A071716.P16493995534770013174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104722 (2 * (A028310 n - 1)).toNat

end

end A071716.P16493995534770013174

namespace A071716

/-- `A104722(2*(A028310(n)-1))` -/
def P16493995534770013174.Spec : Prop :=
  ∀ n, P16493995534770013174.a n = A071716 n

end A071716

/-! ## A071716.P12737849934224036893

`A071726(n+1)-A000245(n)`
-/

namespace A071716.P12737849934224036893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071726 (n + 1) - A000245 n

end

end A071716.P12737849934224036893

namespace A071716

/-- `A071726(n+1)-A000245(n)` -/
def P12737849934224036893.Spec : Prop :=
  ∀ n, P12737849934224036893.a n = A071716 n

end A071716

/-! ## A071716.P2999513019409626740

`A104722(2*(A004273(n)-n))`
-/

namespace A071716.P2999513019409626740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104722 (2 * (A004273 n - (n : ℤ))).toNat

end

end A071716.P2999513019409626740

namespace A071716

/-- `A104722(2*(A004273(n)-n))` -/
def P2999513019409626740.Spec : Prop :=
  ∀ n, P2999513019409626740.a n = A071716 n

end A071716

/-! ## A071716.P7169960410873381401

`abs(Δ[A090192(A004280(n+1))])`
-/

namespace A071716.P7169960410873381401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090192 (A004280 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A071716.P7169960410873381401

namespace A071716

/-- `abs(Δ[A090192(A004280(n+1))])` -/
def P7169960410873381401.Spec : Prop :=
  ∀ n, P7169960410873381401.a n = A071716 n

end A071716

/-! ## A071716.P12166614583250331728

`A071726(n+1)-Δ[A000108(n)]`
-/

namespace A071716.P12166614583250331728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071726 (n + 1) - (f1 (n + 1) - f1 n)

end

end A071716.P12166614583250331728

namespace A071716

/-- `A071726(n+1)-Δ[A000108(n)]` -/
def P12166614583250331728.Spec : Prop :=
  ∀ n, P12166614583250331728.a n = A071716 n

end A071716

/-! ## A071716.P10702278344911961759

`A199969(n+1)+A167422(n)-n`
-/

namespace A071716.P10702278344911961759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199969 (n + 1) + (A167422 n - (n : ℤ))

end

end A071716.P10702278344911961759

namespace A071716

/-- `A199969(n+1)+A167422(n)-n` -/
def P10702278344911961759.Spec : Prop :=
  ∀ n, P10702278344911961759.a n = A071716 n

end A071716

/-! ## A071716.P13302059539819957554

`A000108(n)+A000108((n-1)%a(n-1))` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A071716

/-- `A000108(n)+A000108((n-1)%a(n-1))` -/
def P13302059539819957554.Spec : Prop :=
  ∀ n, P13302059539819957554.a n = A071716 n

theorem P13302059539819957554.correct : P13302059539819957554.Spec := by
  intro n
  simp only [A071716]

end A071716

/-! ## A071716.P5745680449709988355

`A000108(n)+Δ[A014137(A289207(n))]`
-/

namespace A071716.P5745680449709988355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014137 (A289207 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n + (f1 (n + 1) - f1 n)

end

end A071716.P5745680449709988355

namespace A071716

/-- `A000108(n)+Δ[A014137(A289207(n))]` -/
def P5745680449709988355.Spec : Prop :=
  ∀ n, P5745680449709988355.a n = A071716 n

end A071716

/-! ## A071716.P4805655055182395697

`A104722(A028310(n)+A028310(n)-2)`
-/

namespace A071716.P4805655055182395697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104722 (A028310 n + (A028310 n - 2)).toNat

end

end A071716.P4805655055182395697

namespace A071716

/-- `A104722(A028310(n)+A028310(n)-2)` -/
def P4805655055182395697.Spec : Prop :=
  ∀ n, P4805655055182395697.a n = A071716 n

end A071716

/-! ## A071716.P11782264733808410773

`A104722(A028310(n)-(2-A028310(n)))`
-/

namespace A071716.P11782264733808410773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104722 (A028310 n - (2 - A028310 n)).toNat

end

end A071716.P11782264733808410773

namespace A071716

/-- `A104722(A028310(n)-(2-A028310(n)))` -/
def P11782264733808410773.Spec : Prop :=
  ∀ n, P11782264733808410773.a n = A071716 n

end A071716

/-! ## A071716.P12850654779356923216

`A167422(n)/A167422(n*A063524(n))`
-/

namespace A071716.P12850654779356923216
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167422 n : ℚ) / (A167422 ((n : ℤ) * A063524 n).toNat : ℚ)

end

end A071716.P12850654779356923216

namespace A071716

/-- `A167422(n)/A167422(n*A063524(n))` -/
def P12850654779356923216.Spec : Prop :=
  ∀ n, P12850654779356923216.a n = (A071716 n : ℚ)

end A071716

/-! ## A071716.P2973208676746974006

`A115141(n)-(A115140(n+1)+A002420(n))`
-/

namespace A071716.P2973208676746974006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115141 n - (A115140 (n + 1) + A002420 n)

end

end A071716.P2973208676746974006

namespace A071716

/-- `A115141(n)-(A115140(n+1)+A002420(n))` -/
def P2973208676746974006.Spec : Prop :=
  ∀ n, P2973208676746974006.a n = A071716 n

end A071716

/-! ## A071716.P11110489029694396517

`A071726(n+1)+A000108(n)-A000108(n+1)`
-/

namespace A071716.P11110489029694396517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071726 (n + 1) + (A000108 n - A000108 (n + 1))

end

end A071716.P11110489029694396517

namespace A071716

/-- `A071726(n+1)+A000108(n)-A000108(n+1)` -/
def P11110489029694396517.Spec : Prop :=
  ∀ n, P11110489029694396517.a n = A071716 n

end A071716

/-!
# A071717: Expansion of (1 + x^2*C)*C^2, where C = (1 - sqrt(1-4*x))/(2*x) is g.f. for Catalan numbers, A000108.

The programs for A071717, the canonical program `A071717.P2528641483426211324` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A071717 has offset 0).

The definition of A071717 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A071717.P2528641483426211324

`A005807(n)-A120588(n)`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A071717

/-- `A005807(n)-A120588(n)` -/
def P2528641483426211324.Spec : Prop :=
  ∀ n, P2528641483426211324.a n = A071717 n

theorem P2528641483426211324.correct : P2528641483426211324.Spec := by
  intro n
  simp only [A071717]

end A071717

/-! ## A071717.P6426862570971065233

`Δ[A120588(n)+A014137(n)]`
-/

namespace A071717.P6426862570971065233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120588 n + A014137 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A071717.P6426862570971065233

namespace A071717

/-- `Δ[A120588(n)+A014137(n)]` -/
def P6426862570971065233.Spec : Prop :=
  ∀ n, P6426862570971065233.a n = A071717 n

end A071717

/-! ## A071717.P12396860020951733538

`Δ[A120588(n)+A014138(n)]`
-/

namespace A071717.P12396860020951733538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120588 n + A014138 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A071717.P12396860020951733538

namespace A071717

/-- `Δ[A120588(n)+A014138(n)]` -/
def P12396860020951733538.Spec : Prop :=
  ∀ n, P12396860020951733538.a n = A071717 n

end A071717

/-! ## A071717.P17139860285446087329

`Δ[A120588(n)-A106271(n)]`
-/

namespace A071717.P17139860285446087329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120588 n - A106271 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A071717.P17139860285446087329

namespace A071717

/-- `Δ[A120588(n)-A106271(n)]` -/
def P17139860285446087329.Spec : Prop :=
  ∀ n, P17139860285446087329.a n = A071717 n

end A071717

/-! ## A071717.P3860034763867970324

`Δ[A120588(n)+∑[A000108(n)]]`
-/

namespace A071717.P3860034763867970324
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120588 n + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A071717.P3860034763867970324

namespace A071717

/-- `Δ[A120588(n)+∑[A000108(n)]]` -/
def P3860034763867970324.Spec : Prop :=
  ∀ n, P3860034763867970324.a n = A071717 n

end A071717

/-! ## A071717.P5034859842066701597

`record[A097331(n)]+Δ[A120588(n)]`
-/

namespace A071717.P5034859842066701597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097331 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120588 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (f2 (n + 1) - f2 n)

end

end A071717.P5034859842066701597

namespace A071717

/-- `record[A097331(n)]+Δ[A120588(n)]` -/
def P5034859842066701597.Spec : Prop :=
  ∀ n, P5034859842066701597.a n = A071717 n

end A071717

/-! ## A071717.P16501095536956876742

`A000108(n+1)+Δ[A120588(n)]`
-/

namespace A071717.P16501095536956876742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120588 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (n + 1) + (f1 (n + 1) - f1 n)

end

end A071717.P16501095536956876742

namespace A071717

/-- `A000108(n+1)+Δ[A120588(n)]` -/
def P16501095536956876742.Spec : Prop :=
  ∀ n, P16501095536956876742.a n = A071717 n

end A071717

/-! ## A071717.P535243517511755899

`A120588(n+2)+Δ[A120588(n)]`
-/

namespace A071717.P535243517511755899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120588 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120588 (n + 2) + (f1 (n + 1) - f1 n)

end

end A071717.P535243517511755899

namespace A071717

/-- `A120588(n+2)+Δ[A120588(n)]` -/
def P535243517511755899.Spec : Prop :=
  ∀ n, P535243517511755899.a n = A071717 n

end A071717

/-! ## A071717.P3265509538838674352

`A071727(n+1)-A071724(n+1)`
-/

namespace A071717.P3265509538838674352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071727 (n + 1) - A071724 (n + 1)

end

end A071717.P3265509538838674352

namespace A071717

/-- `A071727(n+1)-A071724(n+1)` -/
def P3265509538838674352.Spec : Prop :=
  ∀ n, P3265509538838674352.a n = A071717 n

end A071717

/-! ## A071717.P4818347148133387601

`A005807(n)-A089408(A004273(n))`
-/

namespace A071717.P4818347148133387601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005807 n - A089408 (A004273 n).toNat

end

end A071717.P4818347148133387601

namespace A071717

/-- `A005807(n)-A089408(A004273(n))` -/
def P4818347148133387601.Spec : Prop :=
  ∀ n, P4818347148133387601.a n = A071717 n

end A071717

/-! ## A071717.P8829430192498915710

`A000108(n+1)+A000108(n)-A120588(n)`
-/

namespace A071717.P8829430192498915710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (n + 1) + (A000108 n - A120588 n)

end

end A071717.P8829430192498915710

namespace A071717

/-- `A000108(n+1)+A000108(n)-A120588(n)` -/
def P8829430192498915710.Spec : Prop :=
  ∀ n, P8829430192498915710.a n = A071717 n

end A071717

/-! ## A071717.P3671451778948556423

`A000108(n+1)+A071721(n)-A071735(n)`
-/

namespace A071717.P3671451778948556423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (n + 1) + (A071721 n - A071735 n)

end

end A071717.P3671451778948556423

namespace A071717

/-- `A000108(n+1)+A071721(n)-A071735(n)` -/
def P3671451778948556423.Spec : Prop :=
  ∀ n, P3671451778948556423.a n = A071717 n

end A071717

/-! ## A071717.P11986081974155535433

`A071716(n+1)+A000108(n)-A167422(n)`
-/

namespace A071717.P11986081974155535433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071716 (n + 1) + (A000108 n - A167422 n)

end

end A071717.P11986081974155535433

namespace A071717

/-- `A071716(n+1)+A000108(n)-A167422(n)` -/
def P11986081974155535433.Spec : Prop :=
  ∀ n, P11986081974155535433.a n = A071717 n

end A071717

/-! ## A071717.P2096641980575748171

`A000108(n+1)+Δ[A000108(A289207(n+1))]`
-/

namespace A071717.P2096641980575748171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (A289207 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (n + 1) + (f1 (n + 1) - f1 n)

end

end A071717.P2096641980575748171

namespace A071717

/-- `A000108(n+1)+Δ[A000108(A289207(n+1))]` -/
def P2096641980575748171.Spec : Prop :=
  ∀ n, P2096641980575748171.a n = A071717 n

end A071717

/-! ## A071717.P366197092052120494

`A071727(n+1)+A071727(n)-A071743(n+1)`
-/

namespace A071717.P366197092052120494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071727 (n + 1) + (A071727 n - A071743 (n + 1))

end

end A071717.P366197092052120494

namespace A071717

/-- `A071727(n+1)+A071727(n)-A071743(n+1)` -/
def P366197092052120494.Spec : Prop :=
  ∀ n, P366197092052120494.a n = A071717 n

end A071717

/-! ## A071717.P15574541787068078342

`A000108(n+1)+A289595(n+1)-A289590(n+1)`
-/

namespace A071717.P15574541787068078342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (n + 1) + (A289595 (n + 1) - A289590 (n + 1))

end

end A071717.P15574541787068078342

namespace A071717

/-- `A000108(n+1)+A289595(n+1)-A289590(n+1)` -/
def P15574541787068078342.Spec : Prop :=
  ∀ n, P15574541787068078342.a n = A071717 n

end A071717

/-! ## A071717.P4050173763921422600

`A000108(n+1)+A289601(n+1)-A289598(n+1)`
-/

namespace A071717.P4050173763921422600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (n + 1) + (A289601 (n + 1) - A289598 (n + 1))

end

end A071717.P4050173763921422600

namespace A071717

/-- `A000108(n+1)+A289601(n+1)-A289598(n+1)` -/
def P4050173763921422600.Spec : Prop :=
  ∀ n, P4050173763921422600.a n = A071717 n

end A071717

/-! ## A071717.P16917783542987362147

`A071732(n+1)-(A071733(n)+A071732(n))`
-/

namespace A071717.P16917783542987362147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071732 (n + 1) - (A071733 n + A071732 n)

end

end A071717.P16917783542987362147

namespace A071717

/-- `A071732(n+1)-(A071733(n)+A071732(n))` -/
def P16917783542987362147.Spec : Prop :=
  ∀ n, P16917783542987362147.a n = A071717 n

end A071717

/-!
# A071718: Expansion of (1+x^2*C)*C^3, where C = (1-(1-4*x)^(1/2))/(2*x) is g.f. for Catalan numbers, A000108.

The programs for A071718, the canonical program `A071718.P1631232272951733655` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A071718 has offset 0).

The definition of A071718 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A071718.P4756232470584103735

`record[Δ[A089408(xor(1, n+2))]]`
-/

namespace A071718.P4756232470584103735
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089408 (Nat.xor 1 (n + 2))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A071718.P4756232470584103735

namespace A071718

/-- `record[Δ[A089408(xor(1, n+2))]]` -/
def P4756232470584103735.Spec : Prop :=
  ∀ n, P4756232470584103735.a n = A071718 n

end A071718

/-! ## A071718.P1631232272951733655

`A099376(n)+A071721(n)`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A071718

/-- `A099376(n)+A071721(n)` -/
def P1631232272951733655.Spec : Prop :=
  ∀ n, P1631232272951733655.a n = A071718 n

theorem P1631232272951733655.correct : P1631232272951733655.Spec := by
  intro n
  simp only [A071718]

end A071718

/-! ## A071718.P18064857598890312520

`A099376(n)+Δ[A068875(n)]`
-/

namespace A071718.P18064857598890312520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068875 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099376 n + (f1 (n + 1) - f1 n)

end

end A071718.P18064857598890312520

namespace A071718

/-- `A099376(n)+Δ[A068875(n)]` -/
def P18064857598890312520.Spec : Prop :=
  ∀ n, P18064857598890312520.a n = A071718 n

end A071718

/-! ## A071718.P1950527432267076575

`A000108(n+2)-A068875(n)`
-/

namespace A071718.P1950527432267076575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (n + 2) - A068875 n

end

end A071718.P1950527432267076575

namespace A071718

/-- `A000108(n+2)-A068875(n)` -/
def P1950527432267076575.Spec : Prop :=
  ∀ n, P1950527432267076575.a n = A071718 n

end A071718

/-! ## A071718.P4194661813206283303

`A120588(n+3)-A068875(n)`
-/

namespace A071718.P4194661813206283303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120588 (n + 3) - A068875 n

end

end A071718.P4194661813206283303

namespace A071718

/-- `A120588(n+3)-A068875(n)` -/
def P4194661813206283303.Spec : Prop :=
  ∀ n, P4194661813206283303.a n = A071718 n

end A071718

/-! ## A071718.P17686463985457971840

`record[Δ[A089408(A004442(n+2))]]`
-/

namespace A071718.P17686463985457971840
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089408 (A004442 (n + 2)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A071718.P17686463985457971840

namespace A071718

/-- `record[Δ[A089408(A004442(n+2))]]` -/
def P17686463985457971840.Spec : Prop :=
  ∀ n, P17686463985457971840.a n = A071718 n

end A071718

/-! ## A071718.P2311656819925834548

`record[A126120(n+4)]-A068875(n)`
-/

namespace A071718.P2311656819925834548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126120 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A068875 n

end

end A071718.P2311656819925834548

namespace A071718

/-- `record[A126120(n+4)]-A068875(n)` -/
def P2311656819925834548.Spec : Prop :=
  ∀ n, P2311656819925834548.a n = A071718 n

end A071718

/-! ## A071718.P8499947614590209290

`A001453(n+2)+1-A068875(n)`
-/

namespace A071718.P8499947614590209290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001453 (n + 2) + (1 - A068875 n)

end

end A071718.P8499947614590209290

namespace A071718

/-- `A001453(n+2)+1-A068875(n)` -/
def P8499947614590209290.Spec : Prop :=
  ∀ n, P8499947614590209290.a n = A071718 n

end A071718

/-! ## A071718.P12707376837177598764

`A230585(n+1)-2*A000108(n)`
-/

namespace A071718.P12707376837177598764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230585 (n + 1) - 2 * A000108 n

end

end A071718.P12707376837177598764

namespace A071718

/-- `A230585(n+1)-2*A000108(n)` -/
def P12707376837177598764.Spec : Prop :=
  ∀ n, P12707376837177598764.a n = A071718 n

end A071718

/-! ## A071718.P15919325102960864541

`A028304(2*(n+2))-A068875(n)`
-/

namespace A071718.P15919325102960864541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028304 (2 * (n + 2)) - A068875 n

end

end A071718.P15919325102960864541

namespace A071718

/-- `A028304(2*(n+2))-A068875(n)` -/
def P15919325102960864541.Spec : Prop :=
  ∀ n, P15919325102960864541.a n = A071718 n

end A071718

/-! ## A071718.P14128492124364990472

`A000108(n+2)-A104722(A004273(n))`
-/

namespace A071718.P14128492124364990472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (n + 2) - A104722 (A004273 n).toNat

end

end A071718.P14128492124364990472

namespace A071718

/-- `A000108(n+2)-A104722(A004273(n))` -/
def P14128492124364990472.Spec : Prop :=
  ∀ n, P14128492124364990472.a n = A071718 n

end A071718

/-! ## A071718.P16165417911664906861

`A126120(A004277(n+2))-A068875(n)`
-/

namespace A071718.P16165417911664906861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126120 (A004277 (n + 2)).toNat - A068875 n

end

end A071718.P16165417911664906861

namespace A071718

/-- `A126120(A004277(n+2))-A068875(n)` -/
def P16165417911664906861.Spec : Prop :=
  ∀ n, P16165417911664906861.a n = A071718 n

end A071718

/-! ## A071718.P4340826445617287030

`A026012(n)+A071721(n)-A000108(n)`
-/

namespace A071718.P4340826445617287030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026012 n + (A071721 n - A000108 n)

end

end A071718.P4340826445617287030

namespace A071718

/-- `A026012(n)+A071721(n)-A000108(n)` -/
def P4340826445617287030.Spec : Prop :=
  ∀ n, P4340826445617287030.a n = A071718 n

end A071718

/-! ## A071718.P16102135541209319464

`A000245(n+1)+A071724(n)-A000108(n)`
-/

namespace A071718.P16102135541209319464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000245 (n + 1) + (A071724 n - A000108 n)

end

end A071718.P16102135541209319464

namespace A071718

/-- `A000245(n+1)+A071724(n)-A000108(n)` -/
def P16102135541209319464.Spec : Prop :=
  ∀ n, P16102135541209319464.a n = A071718 n

end A071718

/-! ## A071718.P2545592017698646769

`A071724(n+1)+A071724(n)-A000108(n)`
-/

namespace A071718.P2545592017698646769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071724 (n + 1) + (A071724 n - A000108 n)

end

end A071718.P2545592017698646769

namespace A071718

/-- `A071724(n+1)+A071724(n)-A000108(n)` -/
def P2545592017698646769.Spec : Prop :=
  ∀ n, P2545592017698646769.a n = A071718 n

end A071718

/-! ## A071718.P17053874026441403550

`A000245(n+1)+A115140(n+1)+A071724(n)`
-/

namespace A071718.P17053874026441403550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000245 (n + 1) + (A115140 (n + 1) + A071724 n)

end

end A071718.P17053874026441403550

namespace A071718

/-- `A000245(n+1)+A115140(n+1)+A071724(n)` -/
def P17053874026441403550.Spec : Prop :=
  ∀ n, P17053874026441403550.a n = A071718 n

end A071718

/-! ## A071718.P4975718300147939154

`A071724(n+1)+A115140(n+1)+A071724(n)`
-/

namespace A071718.P4975718300147939154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071724 (n + 1) + (A115140 (n + 1) + A071724 n)

end

end A071718.P4975718300147939154

namespace A071718

/-- `A071724(n+1)+A115140(n+1)+A071724(n)` -/
def P4975718300147939154.Spec : Prop :=
  ∀ n, P4975718300147939154.a n = A071718 n

end A071718

/-! ## A071718.P2154585902341613086

`A000245(n+1)+A071721(n)-A000108(n+1)`
-/

namespace A071718.P2154585902341613086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000245 (n + 1) + (A071721 n - A000108 (n + 1))

end

end A071718.P2154585902341613086

namespace A071718

/-- `A000245(n+1)+A071721(n)-A000108(n+1)` -/
def P2154585902341613086.Spec : Prop :=
  ∀ n, P2154585902341613086.a n = A071718 n

end A071718

/-! ## A071718.P112706386567311985

`A000108(n+1)+A280891(n+1)-A071716(n+1)`
-/

namespace A071718.P112706386567311985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (n + 1) + (A280891 (n + 1) - A071716 (n + 1))

end

end A071718.P112706386567311985

namespace A071718

/-- `A000108(n+1)+A280891(n+1)-A071716(n+1)` -/
def P112706386567311985.Spec : Prop :=
  ∀ n, P112706386567311985.a n = A071718 n

end A071718

/-! ## A071718.P10875361676953132889

`A071721(n)+A000108(n+2)-2*A000108(n+1)`
-/

namespace A071718.P10875361676953132889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071721 n + (A000108 (n + 2) - 2 * A000108 (n + 1))

end

end A071718.P10875361676953132889

namespace A071718

/-- `A071721(n)+A000108(n+2)-2*A000108(n+1)` -/
def P10875361676953132889.Spec : Prop :=
  ∀ n, P10875361676953132889.a n = A071718 n

end A071718

/-!
# A071719: Expansion of (1+x^2*C)*C^4, where C = (1-(1-4*x)^(1/2))/(2*x) is g.f. for Catalan numbers, A000108.

The programs for A071719, the canonical program `A071719.P16601501130629148270` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A071719 has offset 0).

The definition of A071719 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 170 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A071719.P12285288419944826085

`A071723(n)-A000588(n)`
-/

namespace A071719.P12285288419944826085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071723 n - A000588 n

end

end A071719.P12285288419944826085

namespace A071719

/-- `A071723(n)-A000588(n)` -/
def P12285288419944826085.Spec : Prop :=
  ∀ n, P12285288419944826085.a n = A071719 n

end A071719

/-! ## A071719.P15499523501845255022

`A002057(n)+Δ[A143955(n)]`
-/

namespace A071719.P15499523501845255022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143955 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002057 n + (f1 (n + 1) - f1 n)

end

end A071719.P15499523501845255022

namespace A071719

/-- `A002057(n)+Δ[A143955(n)]` -/
def P15499523501845255022.Spec : Prop :=
  ∀ n, P15499523501845255022.a n = A071719 n

end A071719

/-! ## A071719.P16601501130629148270

`A067324(n)-A000782(n+1)`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A071719

/-- `A067324(n)-A000782(n+1)` -/
def P16601501130629148270.Spec : Prop :=
  ∀ n, P16601501130629148270.a n = A071719 n

theorem P16601501130629148270.correct : P16601501130629148270.Spec := by
  intro n
  simp only [A071719]

end A071719

/-! ## A071719.P388043393260408063

`A002057(n)-A115144(n+3)`
-/

namespace A071719.P388043393260408063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002057 n - A115144 (n + 3)

end

end A071719.P388043393260408063

namespace A071719

/-- `A002057(n)-A115144(n+3)` -/
def P388043393260408063.Spec : Prop :=
  ∀ n, P388043393260408063.a n = A071719 n

end A071719

/-! ## A071719.P17187005974552825062

`A071718(n+1)-A071717(n+1)`
-/

namespace A071719.P17187005974552825062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071718 (n + 1) - A071717 (n + 1)

end

end A071719.P17187005974552825062

namespace A071719

/-- `A071718(n+1)-A071717(n+1)` -/
def P17187005974552825062.Spec : Prop :=
  ∀ n, P17187005974552825062.a n = A071719 n

end A071719

/-! ## A071719.P13006991963820824026

`A071732(n+1)-A000108(n+2)`
-/

namespace A071719.P13006991963820824026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071732 (n + 1) - A000108 (n + 2)

end

end A071719.P13006991963820824026

namespace A071719

/-- `A071732(n+1)-A000108(n+2)` -/
def P13006991963820824026.Spec : Prop :=
  ∀ n, P13006991963820824026.a n = A071719 n

end A071719

/-! ## A071719.P9189222763660623210

`A099376(n+1)-A115144(n+3)`
-/

namespace A071719.P9189222763660623210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099376 (n + 1) - A115144 (n + 3)

end

end A071719.P9189222763660623210

namespace A071719

/-- `A099376(n+1)-A115144(n+3)` -/
def P9189222763660623210.Spec : Prop :=
  ∀ n, P9189222763660623210.a n = A071719 n

end A071719

/-! ## A071719.P11560267628428936619

`A002057(n)+A071725(n)-A000108(n)`
-/

namespace A071719.P11560267628428936619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002057 n + (A071725 n - A000108 n)

end

end A071719.P11560267628428936619

namespace A071719

/-- `A002057(n)+A071725(n)-A000108(n)` -/
def P11560267628428936619.Spec : Prop :=
  ∀ n, P11560267628428936619.a n = A071719 n

end A071719

/-! ## A071719.P13132420700413053687

`A002057(n)+A099376(n)-A000245(n)`
-/

namespace A071719.P13132420700413053687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002057 n + (A099376 n - A000245 n)

end

end A071719.P13132420700413053687

namespace A071719

/-- `A002057(n)+A099376(n)-A000245(n)` -/
def P13132420700413053687.Spec : Prop :=
  ∀ n, P13132420700413053687.a n = A071719 n

end A071719

/-! ## A071719.P1444465985209989713

`A071724(n)+A071733(n)-A000108(n)`
-/

namespace A071719.P1444465985209989713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071724 n + (A071733 n - A000108 n)

end

end A071719.P1444465985209989713

namespace A071719

/-- `A071724(n)+A071733(n)-A000108(n)` -/
def P1444465985209989713.Spec : Prop :=
  ∀ n, P1444465985209989713.a n = A071719 n

end A071719

/-! ## A071719.P2874616870245437349

`record[A002420(n)+A000245(n)]-A000245(n)`
-/

namespace A071719.P2874616870245437349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002420 n + A000245 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A000245 n

end

end A071719.P2874616870245437349

namespace A071719

/-- `record[A002420(n)+A000245(n)]-A000245(n)` -/
def P2874616870245437349.Spec : Prop :=
  ∀ n, P2874616870245437349.a n = A071719 n

end A071719

/-! ## A071719.P3602450845030102840

`A067324(n)-(A000245(n)+A000108(n+1))`
-/

namespace A071719.P3602450845030102840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067324 n - (A000245 n + A000108 (n + 1))

end

end A071719.P3602450845030102840

namespace A071719

/-- `A067324(n)-(A000245(n)+A000108(n+1))` -/
def P3602450845030102840.Spec : Prop :=
  ∀ n, P3602450845030102840.a n = A071719 n

end A071719

/-! ## A071719.P5518151881929356304

`A099376(n+1)+A071725(n)-A000108(n)`
-/

namespace A071719.P5518151881929356304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099376 (n + 1) + (A071725 n - A000108 n)

end

end A071719.P5518151881929356304

namespace A071719

/-- `A099376(n+1)+A071725(n)-A000108(n)` -/
def P5518151881929356304.Spec : Prop :=
  ∀ n, P5518151881929356304.a n = A071719 n

end A071719

/-! ## A071719.P8515185531348658280

`A099376(n+1)+A099376(n)-A000245(n)`
-/

namespace A071719.P8515185531348658280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099376 (n + 1) + (A099376 n - A000245 n)

end

end A071719.P8515185531348658280

namespace A071719

/-- `A099376(n+1)+A099376(n)-A000245(n)` -/
def P8515185531348658280.Spec : Prop :=
  ∀ n, P8515185531348658280.a n = A071719 n

end A071719

/-! ## A071719.P2314993234940725126

`A070857(n)+A071722(n)-A099376(n+1)`
-/

namespace A071719.P2314993234940725126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070857 n + (A071722 n - A099376 (n + 1))

end

end A071719.P2314993234940725126

namespace A071719

/-- `A070857(n)+A071722(n)-A099376(n+1)` -/
def P2314993234940725126.Spec : Prop :=
  ∀ n, P2314993234940725126.a n = A071719 n

end A071719

/-! ## A071719.P7258675903213012770

`A071718(n+1)+A000108(n)-A005807(n+1)`
-/

namespace A071719.P7258675903213012770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071718 (n + 1) + (A000108 n - A005807 (n + 1))

end

end A071719.P7258675903213012770

namespace A071719

/-- `A071718(n+1)+A000108(n)-A005807(n+1)` -/
def P7258675903213012770.Spec : Prop :=
  ∀ n, P7258675903213012770.a n = A071719 n

end A071719

/-! ## A071719.P16909214818218098526

`A071718(n+1)-(A071718(n)+A071716(n+1))`
-/

namespace A071719.P16909214818218098526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071718 (n + 1) - (A071718 n + A071716 (n + 1))

end

end A071719.P16909214818218098526

namespace A071719

/-- `A071718(n+1)-(A071718(n)+A071716(n+1))` -/
def P16909214818218098526.Spec : Prop :=
  ∀ n, P16909214818218098526.a n = A071719 n

end A071719

/-! ## A071719.P6901707988333529210

`A071718(n+1)-(A280891(n+1)+A000108(n+1))`
-/

namespace A071719.P6901707988333529210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071718 (n + 1) - (A280891 (n + 1) + A000108 (n + 1))

end

end A071719.P6901707988333529210

namespace A071719

/-- `A071718(n+1)-(A280891(n+1)+A000108(n+1))` -/
def P6901707988333529210.Spec : Prop :=
  ∀ n, P6901707988333529210.a n = A071719 n

end A071719

/-! ## A071719.P10594529217735556073

`A280891(n+2)-(A071717(n+1)+A000108(n+1))`
-/

namespace A071719.P10594529217735556073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280891 (n + 2) - (A071717 (n + 1) + A000108 (n + 1))

end

end A071719.P10594529217735556073

namespace A071719

/-- `A280891(n+2)-(A071717(n+1)+A000108(n+1))` -/
def P10594529217735556073.Spec : Prop :=
  ∀ n, P10594529217735556073.a n = A071719 n

end A071719

/-! ## A071719.P7198229581811002032

`Δ[Δ[A059348(2*(n+1))]]-A059348(2*n+3)`
-/

namespace A071719.P7198229581811002032
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059348 (2 * (n + 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A059348 (2 * n + 3)

end

end A071719.P7198229581811002032

namespace A071719

/-- `Δ[Δ[A059348(2*(n+1))]]-A059348(2*n+3)` -/
def P7198229581811002032.Spec : Prop :=
  ∀ n, P7198229581811002032.a n = A071719 n

end A071719

/-!
# A071720: Number of spanning trees in K_{n}-e, the complete graph on n nodes minus an edge (n > 1).

The programs for A071720, there is no canonical definition to state claims against.
-/

/-! ## A071720.P13187455701411179334

`(n+2)^(n-1)*n`
-/

namespace A071720.P13187455701411179334
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (n : ℚ)

end

end A071720.P13187455701411179334

/-! ## A071720.P5140066039232601153

`record[(n-2)*n^abs(3-n)]`
-/

namespace A071720.P5140066039232601153
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 2 : ℚ) * (n : ℚ) ^ (|3 - (n : ℤ)| : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A071720.P5140066039232601153

/-! ## A071720.P11884036249588187444

`A089946(n)-A000272(n+2)`
-/

namespace A071720.P11884036249588187444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089946 n - A000272 (n + 2)

end

end A071720.P11884036249588187444

/-! ## A071720.P18227612429471539273

`A000272(n+2)-A007334(n+2)`
-/

namespace A071720.P18227612429471539273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000272 (n + 2) - A007334 (n + 2)

end

end A071720.P18227612429471539273

/-! ## A071720.P5143407185719916502

`n*A055865(n+1)/(n+1)`
-/

namespace A071720.P5143407185719916502
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * A055865 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A071720.P5143407185719916502

/-! ## A071720.P205440323955336198

`n*A085389(n+1)/(n+1)`
-/

namespace A071720.P205440323955336198
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * A085389 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A071720.P205440323955336198

/-!
# A071721: Expansion of (1+x^2*C^2)*C^2, where C = (1-(1-4*x)^(1/2))/(2*x) is g.f. for Catalan numbers, A000108.

The programs for A071721, the canonical program `A071721.P8058538894146431473` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A071721 has offset 0).

The definition of A071721 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A071721.P6320440418831773624

`Δ[(4-6/(n+1))*a(n-1)]` with `a(0)=1, a(1)=2`
-/

namespace A071721.P6320440418831773624
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  (4 - 6 / (n + 1 : ℚ)) * f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A071721.P6320440418831773624

namespace A071721

/-- `Δ[(4-6/(n+1))*a(n-1)]` -/
def P6320440418831773624.Spec : Prop :=
  ∀ n, P6320440418831773624.a n = (A071721 n : ℚ)

end A071721

/-! ## A071721.P18365119257159747235

`Δ[A068875(n)]`
-/

namespace A071721.P18365119257159747235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068875 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A071721.P18365119257159747235

namespace A071721

/-- `Δ[A068875(n)]` -/
def P18365119257159747235.Spec : Prop :=
  ∀ n, P18365119257159747235.a n = A071721 n

end A071721

/-! ## A071721.P8862451922452753975

`Δ[A329688(3*n)]`
-/

namespace A071721.P8862451922452753975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329688 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A071721.P8862451922452753975

namespace A071721

/-- `Δ[A329688(3*n)]` -/
def P8862451922452753975.Spec : Prop :=
  ∀ n, P8862451922452753975.a n = A071721 n

end A071721

/-! ## A071721.P15486020458857398841

`Δ[A329686(4*n)]`
-/

namespace A071721.P15486020458857398841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329686 (4 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A071721.P15486020458857398841

namespace A071721

/-- `Δ[A329686(4*n)]` -/
def P15486020458857398841.Spec : Prop :=
  ∀ n, P15486020458857398841.a n = A071721 n

end A071721

/-! ## A071721.P622763088807787995

`record[Δ[A089408(2*n)]]`
-/

namespace A071721.P622763088807787995
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089408 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A071721.P622763088807787995

namespace A071721

/-- `record[Δ[A089408(2*n)]]` -/
def P622763088807787995.Spec : Prop :=
  ∀ n, P622763088807787995.a n = A071721 n

end A071721

/-! ## A071721.P8382781147795881470

`floor(acot(n)+Δ[A131428(n)])`
-/

namespace A071721.P8382781147795881470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131428 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (n : ℝ) + (f1 (n + 1) - f1 n : ℝ)⌋

end

end A071721.P8382781147795881470

namespace A071721

/-- `floor(acot(n)+Δ[A131428(n)])` -/
def P8382781147795881470.Spec : Prop :=
  ∀ n, P8382781147795881470.a n = A071721 n

end A071721

/-! ## A071721.P8058538894146431473

`Δ[gcd(6, 2^n)*A000108(n)]`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A071721

/-- `Δ[gcd(6, 2^n)*A000108(n)]` -/
def P8058538894146431473.Spec : Prop :=
  ∀ n, P8058538894146431473.a n = A071721 n

theorem P8058538894146431473.correct : P8058538894146431473.Spec := by
  intro n
  simp only [A071721]

end A071721

/-! ## A071721.P7383095740005216106

`A005508(A004273(n))`
-/

namespace A071721.P7383095740005216106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005508 (A004273 n).toNat

end

end A071721.P7383095740005216106

namespace A071721

/-- `A005508(A004273(n))` -/
def P7383095740005216106.Spec : Prop :=
  ∀ n, P7383095740005216106.a n = A071721 n

end A071721

/-! ## A071721.P9038745813370930464

`A005508(A014681(2*n))`
-/

namespace A071721.P9038745813370930464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005508 (A014681 (2 * n)).toNat

end

end A071721.P9038745813370930464

namespace A071721

/-- `A005508(A014681(2*n))` -/
def P9038745813370930464.Spec : Prop :=
  ∀ n, P9038745813370930464.a n = A071721 n

end A071721

/-! ## A071721.P1371377317903730493

`A071724(n)+A000245(n)`
-/

namespace A071721.P1371377317903730493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071724 n + A000245 n

end

end A071721.P1371377317903730493

namespace A071721

/-- `A071724(n)+A000245(n)` -/
def P1371377317903730493.Spec : Prop :=
  ∀ n, P1371377317903730493.a n = A071721 n

end A071721

/-! ## A071721.P12272016597385280208

`A071718(n)-A099376(n)`
-/

namespace A071721.P12272016597385280208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071718 n - A099376 n

end

end A071721.P12272016597385280208

namespace A071721

/-- `A071718(n)-A099376(n)` -/
def P12272016597385280208.Spec : Prop :=
  ∀ n, P12272016597385280208.a n = A071721 n

end A071721

/-! ## A071721.P7797832093001391898

`A071724(n)+Δ[A000108(n)]`
-/

namespace A071721.P7797832093001391898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071724 n + (f1 (n + 1) - f1 n)

end

end A071721.P7797832093001391898

namespace A071721

/-- `A071724(n)+Δ[A000108(n)]` -/
def P7797832093001391898.Spec : Prop :=
  ∀ n, P7797832093001391898.a n = A071721 n

end A071721

/-! ## A071721.P11577636954140649030

`A005508(A004280(n+2)-2)`
-/

namespace A071721.P11577636954140649030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005508 (A004280 (n + 2) - 2).toNat

end

end A071721.P11577636954140649030

namespace A071721

/-- `A005508(A004280(n+2)-2)` -/
def P11577636954140649030.Spec : Prop :=
  ∀ n, P11577636954140649030.a n = A071721 n

end A071721

/-! ## A071721.P5785850645280540199

`A068875(n+1)-A068875(n)`
-/

namespace A071721.P5785850645280540199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068875 (n + 1) - A068875 n

end

end A071721.P5785850645280540199

namespace A071721

/-- `A068875(n+1)-A068875(n)` -/
def P5785850645280540199.Spec : Prop :=
  ∀ n, P5785850645280540199.a n = A071721 n

end A071721

/-! ## A071721.P9182140490027305237

`A036453(n+1)*A071724(n)`
-/

namespace A071721.P9182140490027305237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036453 (n + 1) * A071724 n

end

end A071721.P9182140490027305237

namespace A071721

/-- `A036453(n+1)*A071724(n)` -/
def P9182140490027305237.Spec : Prop :=
  ∀ n, P9182140490027305237.a n = A071721 n

end A071721

/-! ## A071721.P4701135828625436113

`(A057427(n)+1)*A071724(n)`
-/

namespace A071721.P4701135828625436113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A057427 n + 1) * A071724 n

end

end A071721.P4701135828625436113

namespace A071721

/-- `(A057427(n)+1)*A071724(n)` -/
def P4701135828625436113.Spec : Prop :=
  ∀ n, P4701135828625436113.a n = A071721 n

end A071721

/-! ## A071721.P8950697846370716164

`A071724(n)-A115142(n+2)`
-/

namespace A071721.P8950697846370716164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071724 n - A115142 (n + 2)

end

end A071721.P8950697846370716164

namespace A071721

/-- `A071724(n)-A115142(n+2)` -/
def P8950697846370716164.Spec : Prop :=
  ∀ n, P8950697846370716164.a n = A071721 n

end A071721

/-!
# A071722: Expansion of (1+x^2*C^2)*C^3, where C = (1-(1-4*x)^(1/2))/(2*x) is g.f. for Catalan numbers, A000108.

The programs for A071722, the canonical program `A071722.P10689110326163623616` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A071722 has offset 0).

The definition of A071722 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A071722.P10689110326163623616

`A099376(n)+A026012(n)`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A071722

/-- `A099376(n)+A026012(n)` -/
def P10689110326163623616.Spec : Prop :=
  ∀ n, P10689110326163623616.a n = A071722 n

theorem P10689110326163623616.correct : P10689110326163623616.Spec := by
  intro n
  simp only [A071722]

end A071722

/-! ## A071722.P13110853161377370093

`A099376(n)+Δ[A000245(n)]`
-/

namespace A071722.P13110853161377370093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000245 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099376 n + (f1 (n + 1) - f1 n)

end

end A071722.P13110853161377370093

namespace A071722

/-- `A099376(n)+Δ[A000245(n)]` -/
def P13110853161377370093.Spec : Prop :=
  ∀ n, P13110853161377370093.a n = A071722 n

end A071722

/-! ## A071722.P9953540071145042107

`A000108(n)+2*A099376(n)`
-/

namespace A071722.P9953540071145042107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n + 2 * A099376 n

end

end A071722.P9953540071145042107

namespace A071722

/-- `A000108(n)+2*A099376(n)` -/
def P9953540071145042107.Spec : Prop :=
  ∀ n, P9953540071145042107.a n = A071722 n

end A071722

/-! ## A071722.P17824489451544617485

`2*A026012(n)-A000108(n)`
-/

namespace A071722.P17824489451544617485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A026012 n - A000108 n

end

end A071722.P17824489451544617485

namespace A071722

/-- `2*A026012(n)-A000108(n)` -/
def P17824489451544617485.Spec : Prop :=
  ∀ n, P17824489451544617485.a n = A071722 n

end A071722

/-! ## A071722.P3150075521755718199

`A099376(n)+Δ[Δ[A120304(n)]]`
-/

namespace A071722.P3150075521755718199
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120304 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099376 n + (f1 (n + 1) - f1 n)

end

end A071722.P3150075521755718199

namespace A071722

/-- `A099376(n)+Δ[Δ[A120304(n)]]` -/
def P3150075521755718199.Spec : Prop :=
  ∀ n, P3150075521755718199.a n = A071722 n

end A071722

/-! ## A071722.P16461881883509214993

`A220902(n+2)-A120009(n+1)`
-/

namespace A071722.P16461881883509214993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220902 (n + 2) - A120009 (n + 1)

end

end A071722.P16461881883509214993

namespace A071722

/-- `A220902(n+2)-A120009(n+1)` -/
def P16461881883509214993.Spec : Prop :=
  ∀ n, P16461881883509214993.a n = A071722 n

end A071722

/-! ## A071722.P9902948898852049789

`A376161(n)-2*A120009(n+1)`
-/

namespace A071722.P9902948898852049789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376161 n - 2 * A120009 (n + 1)

end

end A071722.P9902948898852049789

namespace A071722

/-- `A376161(n)-2*A120009(n+1)` -/
def P9902948898852049789.Spec : Prop :=
  ∀ n, P9902948898852049789.a n = A071722 n

end A071722

/-! ## A071722.P7849170310591296116

`2*A071738(n+1)-A120588(n+1)`
-/

namespace A071722.P7849170310591296116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A071738 (n + 1) - A120588 (n + 1)

end

end A071722.P7849170310591296116

namespace A071722

/-- `2*A071738(n+1)-A120588(n+1)` -/
def P7849170310591296116.Spec : Prop :=
  ∀ n, P7849170310591296116.a n = A071722 n

end A071722

/-! ## A071722.P3293631159792851016

`A026012(n)+∑[A026012(n)-A071724(n)]`
-/

namespace A071722.P3293631159792851016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026012 n - A071724 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026012 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071722.P3293631159792851016

namespace A071722

/-- `A026012(n)+∑[A026012(n)-A071724(n)]` -/
def P3293631159792851016.Spec : Prop :=
  ∀ n, P3293631159792851016.a n = A071722 n

end A071722

/-! ## A071722.P14047646370731681632

`A000245(n+1)+A099376(n)-A000245(n)`
-/

namespace A071722.P14047646370731681632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000245 (n + 1) + (A099376 n - A000245 n)

end

end A071722.P14047646370731681632

namespace A071722

/-- `A000245(n+1)+A099376(n)-A000245(n)` -/
def P14047646370731681632.Spec : Prop :=
  ∀ n, P14047646370731681632.a n = A071722 n

end A071722

/-! ## A071722.P13152296379667483618

`A071724(n+1)+A071725(n)-A000108(n)`
-/

namespace A071722.P13152296379667483618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071724 (n + 1) + (A071725 n - A000108 n)

end

end A071722.P13152296379667483618

namespace A071722

/-- `A071724(n+1)+A071725(n)-A000108(n)` -/
def P13152296379667483618.Spec : Prop :=
  ∀ n, P13152296379667483618.a n = A071722 n

end A071722

/-! ## A071722.P8936189018278811727

`A071738(n+1)+A071738(n+1)-A000108(n)`
-/

namespace A071722.P8936189018278811727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071738 (n + 1) + (A071738 (n + 1) - A000108 n)

end

end A071722.P8936189018278811727

namespace A071722

/-- `A071738(n+1)+A071738(n+1)-A000108(n)` -/
def P8936189018278811727.Spec : Prop :=
  ∀ n, P8936189018278811727.a n = A071722 n

end A071722

/-! ## A071722.P6134649683608578809

`record[Δ[A005508(n)]]`
-/

namespace A071722.P6134649683608578809
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005508 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A071722.P6134649683608578809

namespace A071722

/-- `record[Δ[A005508(n)]]` -/
def P6134649683608578809.Spec : Prop :=
  ∀ n, P6134649683608578809.a n = A071722 n

end A071722

/-! ## A071722.P14062905675452510408

`A070031(n)-Δ[(4-6/(n+1))*a(n-1)]` with `a(0)=1`
-/

namespace A071722.P14062905675452510408
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  (4 - 6 / (n + 1 : ℚ)) * f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A070031 n : ℚ) - (f1 (n + 1) - f1 n)

end

end A071722.P14062905675452510408

namespace A071722

/-- `A070031(n)-Δ[(4-6/(n+1))*a(n-1)]` -/
def P14062905675452510408.Spec : Prop :=
  ∀ n, P14062905675452510408.a n = (A071722 n : ℚ)

end A071722

/-! ## A071722.P15989244704830988126

`A070031(n)-A000245(n)`
-/

namespace A071722.P15989244704830988126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070031 n - A000245 n

end

end A071722.P15989244704830988126

namespace A071722

/-- `A070031(n)-A000245(n)` -/
def P15989244704830988126.Spec : Prop :=
  ∀ n, P15989244704830988126.a n = A071722 n

end A071722

/-! ## A071722.P4339541268492807484

`A067324(n)-A033434(n)`
-/

namespace A071722.P4339541268492807484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067324 n - A033434 n

end

end A071722.P4339541268492807484

namespace A071722

/-- `A067324(n)-A033434(n)` -/
def P4339541268492807484.Spec : Prop :=
  ∀ n, P4339541268492807484.a n = A071722 n

end A071722

/-! ## A071722.P422261496091965756

`Δ[A099376(n)]-A000588(n)`
-/

namespace A071722.P422261496091965756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099376 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A000588 n

end

end A071722.P422261496091965756

namespace A071722

/-- `Δ[A099376(n)]-A000588(n)` -/
def P422261496091965756.Spec : Prop :=
  ∀ n, P422261496091965756.a n = A071722 n

end A071722

/-! ## A071722.P17700244867609014183

`A026016(n+1)-A000588(n)`
-/

namespace A071722.P17700244867609014183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026016 (n + 1) - A000588 n

end

end A071722.P17700244867609014183

namespace A071722

/-- `A026016(n+1)-A000588(n)` -/
def P17700244867609014183.Spec : Prop :=
  ∀ n, P17700244867609014183.a n = A071722 n

end A071722

/-! ## A071722.P5540300427138669319

`Δ[Δ[A131428(n)]]-A000108(n)`
-/

namespace A071722.P5540300427138669319
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131428 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A000108 n

end

end A071722.P5540300427138669319

namespace A071722

/-- `Δ[Δ[A131428(n)]]-A000108(n)` -/
def P5540300427138669319.Spec : Prop :=
  ∀ n, P5540300427138669319.a n = A071722 n

end A071722

/-! ## A071722.P1755791521919217509

`A002057(n)-Δ[Δ[A143955(n)]]`
-/

namespace A071722.P1755791521919217509
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143955 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002057 n - (f1 (n + 1) - f1 n)

end

end A071722.P1755791521919217509

namespace A071722

/-- `A002057(n)-Δ[Δ[A143955(n)]]` -/
def P1755791521919217509.Spec : Prop :=
  ∀ n, P1755791521919217509.a n = A071722 n

end A071722

/-!
# A071723: Expansion of (1+x^2*C^2)*C^4, where C = (1-(1-4*x)^(1/2))/(2*x) is g.f. for Catalan numbers, A000108.

The programs for A071723, the canonical program `A071723.P7421491437555663530` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A071723 has offset 0).

The definition of A071723 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 170 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A071723.P7421491437555663530

`A071719(n)+A000588(n)`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A071723

/-- `A071719(n)+A000588(n)` -/
def P7421491437555663530.Spec : Prop :=
  ∀ n, P7421491437555663530.a n = A071723 n

theorem P7421491437555663530.correct : P7421491437555663530.Spec := by
  intro n
  simp only [A071723]

end A071723

/-! ## A071723.P16799643245127734311

`A070857(n)-A099376(n)`
-/

namespace A071723.P16799643245127734311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070857 n - A099376 n

end

end A071723.P16799643245127734311

namespace A071723

/-- `A070857(n)-A099376(n)` -/
def P16799643245127734311.Spec : Prop :=
  ∀ n, P16799643245127734311.a n = A071723 n

end A071723

/-! ## A071723.P16343857869226765451

`∑[A071757(n)-A000245(n)]`
-/

namespace A071723.P16343857869226765451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071757 n - A000245 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071723.P16343857869226765451

namespace A071723

/-- `∑[A071757(n)-A000245(n)]` -/
def P16343857869226765451.Spec : Prop :=
  ∀ n, P16343857869226765451.a n = A071723 n

end A071723

/-! ## A071723.P2961026256344957499

`A070857(n)-Δ[A279557(n)]`
-/

namespace A071723.P2961026256344957499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279557 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070857 n - (f1 (n + 1) - f1 n)

end

end A071723.P2961026256344957499

namespace A071723

/-- `A070857(n)-Δ[A279557(n)]` -/
def P2961026256344957499.Spec : Prop :=
  ∀ n, P2961026256344957499.a n = A071723 n

end A071723

/-! ## A071723.P11691953521863070629

`A390965(n)+A000245(n+1)`
-/

namespace A071723.P11691953521863070629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390965 n + A000245 (n + 1)

end

end A071723.P11691953521863070629

namespace A071723

/-- `A390965(n)+A000245(n+1)` -/
def P11691953521863070629.Spec : Prop :=
  ∀ n, P11691953521863070629.a n = A071723 n

end A071723

/-! ## A071723.P13839300524569113140

`A115143(n+3)+A070857(n)`
-/

namespace A071723.P13839300524569113140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115143 (n + 3) + A070857 n

end

end A071723.P13839300524569113140

namespace A071723

/-- `A115143(n+3)+A070857(n)` -/
def P13839300524569113140.Spec : Prop :=
  ∀ n, P13839300524569113140.a n = A071723 n

end A071723

/-! ## A071723.P4322347558469797875

`2*A002057(n)-A070031(n)`
-/

namespace A071723.P4322347558469797875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A002057 n - A070031 n

end

end A071723.P4322347558469797875

namespace A071723

/-- `2*A002057(n)-A070031(n)` -/
def P4322347558469797875.Spec : Prop :=
  ∀ n, P4322347558469797875.a n = A071723 n

end A071723

/-! ## A071723.P7312503748789478669

`A002057(n)-Δ[A120009(n+1)]`
-/

namespace A071723.P7312503748789478669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120009 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002057 n - (f1 (n + 1) - f1 n)

end

end A071723.P7312503748789478669

namespace A071723

/-- `A002057(n)-Δ[A120009(n+1)]` -/
def P7312503748789478669.Spec : Prop :=
  ∀ n, P7312503748789478669.a n = A071723 n

end A071723

/-! ## A071723.P2690588367483296504

`Δ[2*A099376(n)-A014137(n)]`
-/

namespace A071723.P2690588367483296504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A099376 n - A014137 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A071723.P2690588367483296504

namespace A071723

/-- `Δ[2*A099376(n)-A014137(n)]` -/
def P2690588367483296504.Spec : Prop :=
  ∀ n, P2690588367483296504.a n = A071723 n

end A071723

/-! ## A071723.P918013281260703453

`Δ[2*A099376(n)-A014138(n)]`
-/

namespace A071723.P918013281260703453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A099376 n - A014138 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A071723.P918013281260703453

namespace A071723

/-- `Δ[2*A099376(n)-A014138(n)]` -/
def P918013281260703453.Spec : Prop :=
  ∀ n, P918013281260703453.a n = A071723 n

end A071723

/-! ## A071723.P12437876313332173726

`A071722(n+1)-A071721(n+1)`
-/

namespace A071723.P12437876313332173726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071722 (n + 1) - A071721 (n + 1)

end

end A071723.P12437876313332173726

namespace A071723

/-- `A071722(n+1)-A071721(n+1)` -/
def P12437876313332173726.Spec : Prop :=
  ∀ n, P12437876313332173726.a n = A071723 n

end A071723

/-! ## A071723.P17063951932501019938

`A071736(n+1)-A000108(n+2)`
-/

namespace A071723.P17063951932501019938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071736 (n + 1) - A000108 (n + 2)

end

end A071723.P17063951932501019938

namespace A071723

/-- `A071736(n+1)-A000108(n+2)` -/
def P17063951932501019938.Spec : Prop :=
  ∀ n, P17063951932501019938.a n = A071723 n

end A071723

/-! ## A071723.P2466065948978861606

`A390965(n)+A026008(2*n+1)`
-/

namespace A071723.P2466065948978861606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390965 n + A026008 (2 * n + 1)

end

end A071723.P2466065948978861606

namespace A071723

/-- `A390965(n)+A026008(2*n+1)` -/
def P2466065948978861606.Spec : Prop :=
  ∀ n, P2466065948978861606.a n = A071723 n

end A071723

/-! ## A071723.P10995840373324713694

`2*A071725(n+1)-A000108(n+1)`
-/

namespace A071723.P10995840373324713694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A071725 (n + 1) - A000108 (n + 1)

end

end A071723.P10995840373324713694

namespace A071723

/-- `2*A071725(n+1)-A000108(n+1)` -/
def P10995840373324713694.Spec : Prop :=
  ∀ n, P10995840373324713694.a n = A071723 n

end A071723

/-! ## A071723.P10668578862113691328

`2*A026012(n+1)-A000782(n+2)`
-/

namespace A071723.P10668578862113691328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A026012 (n + 1) - A000782 (n + 2)

end

end A071723.P10668578862113691328

namespace A071723

/-- `2*A026012(n+1)-A000782(n+2)` -/
def P10668578862113691328.Spec : Prop :=
  ∀ n, P10668578862113691328.a n = A071723 n

end A071723

/-! ## A071723.P6514813114188796217

`2*A026021(2*n+1)-A000108(n+1)`
-/

namespace A071723.P6514813114188796217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A026021 (2 * n + 1) - A000108 (n + 1)

end

end A071723.P6514813114188796217

namespace A071723

/-- `2*A026021(2*n+1)-A000108(n+1)` -/
def P6514813114188796217.Spec : Prop :=
  ∀ n, P6514813114188796217.a n = A071723 n

end A071723

/-! ## A071723.P7475139444506550938

`2*A026021(2*n+1)-A026008(2*n)`
-/

namespace A071723.P7475139444506550938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A026021 (2 * n + 1) - A026008 (2 * n)

end

end A071723.P7475139444506550938

namespace A071723

/-- `2*A026021(2*n+1)-A026008(2*n)` -/
def P7475139444506550938.Spec : Prop :=
  ∀ n, P7475139444506550938.a n = A071723 n

end A071723

/-! ## A071723.P5499878821628753666

`A000108(n+1)+A390965(n)+A099376(n)`
-/

namespace A071723.P5499878821628753666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (n + 1) + (A390965 n + A099376 n)

end

end A071723.P5499878821628753666

namespace A071723

/-- `A000108(n+1)+A390965(n)+A099376(n)` -/
def P5499878821628753666.Spec : Prop :=
  ∀ n, P5499878821628753666.a n = A071723 n

end A071723

/-! ## A071723.P1331386908618918338

`A026016(n+1)+A002057(n)-A000245(n+1)`
-/

namespace A071723.P1331386908618918338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026016 (n + 1) + (A002057 n - A000245 (n + 1))

end

end A071723.P1331386908618918338

namespace A071723

/-- `A026016(n+1)+A002057(n)-A000245(n+1)` -/
def P1331386908618918338.Spec : Prop :=
  ∀ n, P1331386908618918338.a n = A071723 n

end A071723

/-! ## A071723.P17673190322021224801

`A000108(n+1)+A070857(n)-A000245(n+1)`
-/

namespace A071723.P17673190322021224801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (n + 1) + (A070857 n - A000245 (n + 1))

end

end A071723.P17673190322021224801

namespace A071723

/-- `A000108(n+1)+A070857(n)-A000245(n+1)` -/
def P17673190322021224801.Spec : Prop :=
  ∀ n, P17673190322021224801.a n = A071723 n

end A071723

/-!
# A071724: a(n) = 3*binomial(2n, n-1)/(n+2), n > 0, with a(0)=1.

The programs for A071724, the canonical program `A071724.P13075293376280166576` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A071724 has offset 0).

The definition of A071724 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 172 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A071724.P11112686874498638280

`Δ[(4-6/(n+1))*a(n-1)]` with `a(0)=0, a(1)=1`
-/

namespace A071724.P11112686874498638280
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  (4 - 6 / (n + 1 : ℚ)) * f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A071724.P11112686874498638280

namespace A071724

/-- `Δ[(4-6/(n+1))*a(n-1)]` -/
def P11112686874498638280.Spec : Prop :=
  ∀ n, P11112686874498638280.a n = (A071724 n : ℚ)

end A071724

/-! ## A071724.P13075293376280166576

`Δ[A141351(n)]`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A071724

/-- `Δ[A141351(n)]` -/
def P13075293376280166576.Spec : Prop :=
  ∀ n, P13075293376280166576.a n = A071724 n

theorem P13075293376280166576.correct : P13075293376280166576.Spec := by
  intro n
  simp only [A071724]

end A071724

/-! ## A071724.P5935575342304511955

`abs(Δ[A141364(n)])`
-/

namespace A071724.P5935575342304511955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141364 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A071724.P5935575342304511955

namespace A071724

/-- `abs(Δ[A141364(n)])` -/
def P5935575342304511955.Spec : Prop :=
  ∀ n, P5935575342304511955.a n = A071724 n

end A071724

/-! ## A071724.P2908188144409024986

`Δ[record[A329696(n)]]`
-/

namespace A071724.P2908188144409024986
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329696 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A071724.P2908188144409024986

namespace A071724

/-- `Δ[record[A329696(n)]]` -/
def P2908188144409024986.Spec : Prop :=
  ∀ n, P2908188144409024986.a n = A071724 n

end A071724

/-! ## A071724.P16780404308884254522

`Δ[A329696(2*n)]`
-/

namespace A071724.P16780404308884254522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329696 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A071724.P16780404308884254522

namespace A071724

/-- `Δ[A329696(2*n)]` -/
def P16780404308884254522.Spec : Prop :=
  ∀ n, P16780404308884254522.a n = A071724 n

end A071724

/-! ## A071724.P10849581505936206266

`abs(Δ[A115141(n+1)])`
-/

namespace A071724.P10849581505936206266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115141 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A071724.P10849581505936206266

namespace A071724

/-- `abs(Δ[A115141(n+1)])` -/
def P10849581505936206266.Spec : Prop :=
  ∀ n, P10849581505936206266.a n = A071724 n

end A071724

/-! ## A071724.P2474639726695095580

`Δ[record[A126120(n+1)]]`
-/

namespace A071724.P2474639726695095580
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126120 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A071724.P2474639726695095580

namespace A071724

/-- `Δ[record[A126120(n+1)]]` -/
def P2474639726695095580.Spec : Prop :=
  ∀ n, P2474639726695095580.a n = A071724 n

end A071724

/-! ## A071724.P9338727304716153071

`Δ[record[A097331(n+2)]]`
-/

namespace A071724.P9338727304716153071
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097331 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A071724.P9338727304716153071

namespace A071724

/-- `Δ[record[A097331(n+2)]]` -/
def P9338727304716153071.Spec : Prop :=
  ∀ n, P9338727304716153071.a n = A071724 n

end A071724

/-! ## A071724.P10327306205667747209

`Δ[record[A329687(n+2)]]`
-/

namespace A071724.P10327306205667747209
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329687 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A071724.P10327306205667747209

namespace A071724

/-- `Δ[record[A329687(n+2)]]` -/
def P10327306205667747209.Spec : Prop :=
  ∀ n, P10327306205667747209.a n = A071724 n

end A071724

/-! ## A071724.P108601415329091354

`A000245(floor(acot(n)+n))`
-/

namespace A071724.P108601415329091354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000245 ⌊SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌋.toNat

end

end A071724.P108601415329091354

namespace A071724

/-- `A000245(floor(acot(n)+n))` -/
def P108601415329091354.Spec : Prop :=
  ∀ n, P108601415329091354.a n = A071724 n

end A071724

/-! ## A071724.P15120344965776232313

`Δ[A192480(n+1)]-1`
-/

namespace A071724.P15120344965776232313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192480 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A071724.P15120344965776232313

namespace A071724

/-- `Δ[A192480(n+1)]-1` -/
def P15120344965776232313.Spec : Prop :=
  ∀ n, P15120344965776232313.a n = A071724 n

end A071724

/-! ## A071724.P13701125899715884906

`Δ[abs(Δ[A156906(2*n)])]`
-/

namespace A071724.P13701125899715884906
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156906 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A071724.P13701125899715884906

namespace A071724

/-- `Δ[abs(Δ[A156906(2*n)])]` -/
def P13701125899715884906.Spec : Prop :=
  ∀ n, P13701125899715884906.a n = A071724 n

end A071724

/-! ## A071724.P1138587474313906576

`floor(Δ[A000108(n)+sqrt(n)])`
-/

namespace A071724.P1138587474313906576
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A000108 n : ℝ) + Real.sqrt (n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊f1 (n + 1) - f1 n⌋

end

end A071724.P1138587474313906576

namespace A071724

/-- `floor(Δ[A000108(n)+sqrt(n)])` -/
def P1138587474313906576.Spec : Prop :=
  ∀ n, P1138587474313906576.a n = A071724 n

end A071724

/-! ## A071724.P3108693781371350860

`A071738(n)+a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A071724.P3108693781371350860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A071738 n + a (n - 1)

end

end A071724.P3108693781371350860

namespace A071724

/-- `A071738(n)+a(n-1)` -/
def P3108693781371350860.Spec : Prop :=
  ∀ n, P3108693781371350860.a n = A071724 n

end A071724

/-! ## A071724.P15985792773360143782

`A280891(n)-a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A071724.P15985792773360143782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A280891 n - a (n - 1)

end

end A071724.P15985792773360143782

namespace A071724

/-- `A280891(n)-a(n-1)` -/
def P15985792773360143782.Spec : Prop :=
  ∀ n, P15985792773360143782.a n = A071724 n

end A071724

/-! ## A071724.P8560128078215899020

`abs(Δ[A000108(abs(1-n)+1)])`
-/

namespace A071724.P8560128078215899020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A071724.P8560128078215899020

namespace A071724

/-- `abs(Δ[A000108(abs(1-n)+1)])` -/
def P8560128078215899020.Spec : Prop :=
  ∀ n, P8560128078215899020.a n = A071724 n

end A071724

/-! ## A071724.P10491275191116875644

`A000245(A028310(n))`
-/

namespace A071724.P10491275191116875644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000245 (A028310 n).toNat

end

end A071724.P10491275191116875644

namespace A071724

/-- `A000245(A028310(n))` -/
def P10491275191116875644.Spec : Prop :=
  ∀ n, P10491275191116875644.a n = A071724 n

end A071724

/-! ## A071724.P5717644133174710677

`A026008(A004273(n))`
-/

namespace A071724.P5717644133174710677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026008 (A004273 n).toNat

end

end A071724.P5717644133174710677

namespace A071724

/-- `A026008(A004273(n))` -/
def P5717644133174710677.Spec : Prop :=
  ∀ n, P5717644133174710677.a n = A071724 n

end A071724

/-! ## A071724.P1064240660499317917

`A000245(A000007(n)+n)`
-/

namespace A071724.P1064240660499317917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000245 (A000007 n + (n : ℤ)).toNat

end

end A071724.P1064240660499317917

namespace A071724

/-- `A000245(A000007(n)+n)` -/
def P1064240660499317917.Spec : Prop :=
  ∀ n, P1064240660499317917.a n = A071724 n

end A071724

/-! ## A071724.P6156259651291415908

`xor(A000007(n), A000245(n))`
-/

namespace A071724.P6156259651291415908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000007 n) (A000245 n)

end

end A071724.P6156259651291415908

namespace A071724

/-- `xor(A000007(n), A000245(n))` -/
def P6156259651291415908.Spec : Prop :=
  ∀ n, P6156259651291415908.a n = A071724 n

end A071724

/-!
# A071725: Expansion of (1+x^2*C^4)*C, where C = (1 - sqrt(1-4*x))/(2*x) is g.f. for Catalan numbers, A000108.

The programs for A071725, the canonical program `A071725.P14742020930531540904` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A071725 has offset 0).

The definition of A071725 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A071725.P14742020930531540904

`6*(n²+1)/((n+2)*(n+3))*A000108(n)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A071725

/-- `6*(n²+1)/((n+2)*(n+3))*A000108(n)` -/
def P14742020930531540904.Spec : Prop :=
  ∀ n, P14742020930531540904.a n = (A071725 n : ℚ)

end A071725

/-! ## A071725.P6770735074619596138

`Δ[Δ[abs(A104496(n))]]`
-/

namespace A071725.P6770735074619596138
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A104496 n|

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A071725.P6770735074619596138

namespace A071725

/-- `Δ[Δ[abs(A104496(n))]]` -/
def P6770735074619596138.Spec : Prop :=
  ∀ n, P6770735074619596138.a n = A071725 n

end A071725

/-! ## A071725.P10293296327486104030

`A026016((2*n)%(n+1)+1)`
-/

namespace A071725.P10293296327486104030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026016 (2 * n % (n + 1) + 1)

end

end A071725.P10293296327486104030

namespace A071725

/-- `A026016((2*n)%(n+1)+1)` -/
def P10293296327486104030.Spec : Prop :=
  ∀ n, P10293296327486104030.a n = A071725 n

end A071725

/-! ## A071725.P2939870372846209093

`A026012(n)-Δ[(4-6/(n+1))*a(n-1)]` with `a(0)=1`
-/

namespace A071725.P2939870372846209093
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  (4 - 6 / (n + 1 : ℚ)) * f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026012 n : ℚ) - (f1 (n + 1) - f1 n)

end

end A071725.P2939870372846209093

namespace A071725

/-- `A026012(n)-Δ[(4-6/(n+1))*a(n-1)]` -/
def P2939870372846209093.Spec : Prop :=
  ∀ n, P2939870372846209093.a n = (A071725 n : ℚ)

end A071725

/-! ## A071725.P9046410588717817415

`A026021(A004273(n))`
-/

namespace A071725.P9046410588717817415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026021 (A004273 n).toNat

end

end A071725.P9046410588717817415

namespace A071725

/-- `A026021(A004273(n))` -/
def P9046410588717817415.Spec : Prop :=
  ∀ n, P9046410588717817415.a n = A071725 n

end A071725

/-! ## A071725.P4472903534709525256

`A026016(A028310(n))`
-/

namespace A071725.P4472903534709525256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026016 (A028310 n).toNat

end

end A071725.P4472903534709525256

namespace A071725

/-- `A026016(A028310(n))` -/
def P4472903534709525256.Spec : Prop :=
  ∀ n, P4472903534709525256.a n = A071725 n

end A071725

/-! ## A071725.P3801215524407194485

`A026016(A065033(2*n))`
-/

namespace A071725.P3801215524407194485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026016 (A065033 (2 * n)).toNat

end

end A071725.P3801215524407194485

namespace A071725

/-- `A026016(A065033(2*n))` -/
def P3801215524407194485.Spec : Prop :=
  ∀ n, P3801215524407194485.a n = A071725 n

end A071725

/-! ## A071725.P2747586810543694596

`A026016(A000007(n)+n)`
-/

namespace A071725.P2747586810543694596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026016 (A000007 n + (n : ℤ)).toNat

end

end A071725.P2747586810543694596

namespace A071725

/-- `A026016(A000007(n)+n)` -/
def P2747586810543694596.Spec : Prop :=
  ∀ n, P2747586810543694596.a n = A071725 n

end A071725

/-! ## A071725.P1707815637235394401

`A026012(n)-A000245(n)`
-/

namespace A071725.P1707815637235394401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026012 n - A000245 n

end

end A071725.P1707815637235394401

namespace A071725

/-- `A026012(n)-A000245(n)` -/
def P1707815637235394401.Spec : Prop :=
  ∀ n, P1707815637235394401.a n = A071725 n

end A071725

/-! ## A071725.P7083409929697452983

`A026016(gcd(n, A008486(n)))`
-/

namespace A071725.P7083409929697452983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026016 (Int.gcd (n : ℤ) (A008486 n))

end

end A071725.P7083409929697452983

namespace A071725

/-- `A026016(gcd(n, A008486(n)))` -/
def P7083409929697452983.Spec : Prop :=
  ∀ n, P7083409929697452983.a n = A071725 n

end A071725

/-! ## A071725.P10399767114303533223

`A026016(or(n, A000007(n)))`
-/

namespace A071725.P10399767114303533223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026016 (Int.lor (n : ℤ) (A000007 n)).toNat

end

end A071725.P10399767114303533223

namespace A071725

/-- `A026016(or(n, A000007(n)))` -/
def P10399767114303533223.Spec : Prop :=
  ∀ n, P10399767114303533223.a n = A071725 n

end A071725

/-! ## A071725.P15660508111140941327

`A026016(xor(n, A000007(n)))`
-/

namespace A071725.P15660508111140941327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026016 (Int.xor (n : ℤ) (A000007 n)).toNat

end

end A071725.P15660508111140941327

namespace A071725

/-- `A026016(xor(n, A000007(n)))` -/
def P15660508111140941327.Spec : Prop :=
  ∀ n, P15660508111140941327.a n = A071725 n

end A071725

/-! ## A071725.P2575402542645680920

`A000108(n)+Δ[A143955(n)]`
-/

namespace A071725.P2575402542645680920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143955 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n + (f1 (n + 1) - f1 n)

end

end A071725.P2575402542645680920

namespace A071725

/-- `A000108(n)+Δ[A143955(n)]` -/
def P2575402542645680920.Spec : Prop :=
  ∀ n, P2575402542645680920.a n = A071725 n

end A071725

/-! ## A071725.P14130545242137251694

`Δ[A000245(n)-A000108(n)]`
-/

namespace A071725.P14130545242137251694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000245 n - A000108 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A071725.P14130545242137251694

namespace A071725

/-- `Δ[A000245(n)-A000108(n)]` -/
def P14130545242137251694.Spec : Prop :=
  ∀ n, P14130545242137251694.a n = A071725 n

end A071725

/-! ## A071725.P13798079010462767478

`A026012(n)-Δ[A000108(n)]`
-/

namespace A071725.P13798079010462767478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026012 n - (f1 (n + 1) - f1 n)

end

end A071725.P13798079010462767478

namespace A071725

/-- `A026012(n)-Δ[A000108(n)]` -/
def P13798079010462767478.Spec : Prop :=
  ∀ n, P13798079010462767478.a n = A071725 n

end A071725

/-! ## A071725.P9766194585340943163

`A026021(A004275(n+1)-1)`
-/

namespace A071725.P9766194585340943163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026021 (A004275 (n + 1) - 1).toNat

end

end A071725.P9766194585340943163

namespace A071725

/-- `A026021(A004275(n+1)-1)` -/
def P9766194585340943163.Spec : Prop :=
  ∀ n, P9766194585340943163.a n = A071725 n

end A071725

/-! ## A071725.P3243794146069810463

`A026021(A004275(2*n)/2)`
-/

namespace A071725.P3243794146069810463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026021 (SequenceMachineLib.roundAway ((A004275 (2 * n) : ℚ) / 2)).toNat

end

end A071725.P3243794146069810463

namespace A071725

/-- `A026021(A004275(2*n)/2)` -/
def P3243794146069810463.Spec : Prop :=
  ∀ n, P3243794146069810463.a n = A071725 n

end A071725

/-! ## A071725.P9421079728457066365

`A071738(n+1)-A000245(n)`
-/

namespace A071725.P9421079728457066365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071738 (n + 1) - A000245 n

end

end A071725.P9421079728457066365

namespace A071725

/-- `A071738(n+1)-A000245(n)` -/
def P9421079728457066365.Spec : Prop :=
  ∀ n, P9421079728457066365.a n = A071725 n

end A071725

/-! ## A071725.P14783857844089438127

`A026021(2*n)-A000245(n)`
-/

namespace A071725.P14783857844089438127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026021 (2 * n) - A000245 n

end

end A071725.P14783857844089438127

namespace A071725

/-- `A026021(2*n)-A000245(n)` -/
def P14783857844089438127.Spec : Prop :=
  ∀ n, P14783857844089438127.a n = A071725 n

end A071725

/-! ## A071725.P10081394125313617196

`A026016(A008486(n)-2*n)`
-/

namespace A071725.P10081394125313617196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026016 (A008486 n - (2 * n : ℤ)).toNat

end

end A071725.P10081394125313617196

namespace A071725

/-- `A026016(A008486(n)-2*n)` -/
def P10081394125313617196.Spec : Prop :=
  ∀ n, P10081394125313617196.a n = A071725 n

end A071725

/-!
# A071726: Expansion of (1+x^3*C)*C, where C = (1-(1-4*x)^(1/2))/(2*x) is g.f. for Catalan numbers, A000108.

The programs for A071726, the canonical program `A071726.P12729125227773311374` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A071726 has offset 0).

The definition of A071726 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 173 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A071726.P12729125227773311374

`A000108(n)+A000108(n-2)%a(n-1)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A071726

/-- `A000108(n)+A000108(n-2)%a(n-1)` -/
def P12729125227773311374.Spec : Prop :=
  ∀ n, P12729125227773311374.a n = A071726 n

theorem P12729125227773311374.correct : P12729125227773311374.Spec := by
  intro n
  simp only [A071726]

end A071726

/-! ## A071726.P6599915906998983751

`A071742(n+1)+A000108(n)-A000108(n+1)`
-/

namespace A071726.P6599915906998983751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071742 (n + 1) + (A000108 n - A000108 (n + 1))

end

end A071726.P6599915906998983751

namespace A071726

/-- `A071742(n+1)+A000108(n)-A000108(n+1)` -/
def P6599915906998983751.Spec : Prop :=
  ∀ n, P6599915906998983751.a n = A071726 n

end A071726

/-! ## A071726.P14374812302601531500

`A059365(A238531(n))+A000108(n)`
-/

namespace A071726.P14374812302601531500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059365 (A238531 n).toNat + A000108 n

end

end A071726.P14374812302601531500

namespace A071726

/-- `A059365(A238531(n))+A000108(n)` -/
def P14374812302601531500.Spec : Prop :=
  ∀ n, P14374812302601531500.a n = A071726 n

end A071726

/-! ## A071726.P7222360734105285533

`A059365(A238531(n))+abs(A168491(n))`
-/

namespace A071726.P7222360734105285533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059365 (A238531 n).toNat + |A168491 n|

end

end A071726.P7222360734105285533

namespace A071726

/-- `A059365(A238531(n))+abs(A168491(n))` -/
def P7222360734105285533.Spec : Prop :=
  ∀ n, P7222360734105285533.a n = A071726 n

end A071726

/-! ## A071726.P17953567119666834058

`A120588(n+1)+A059365(A238531(n))`
-/

namespace A071726.P17953567119666834058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120588 (n + 1) + A059365 (A238531 n).toNat

end

end A071726.P17953567119666834058

namespace A071726

/-- `A120588(n+1)+A059365(A238531(n))` -/
def P17953567119666834058.Spec : Prop :=
  ∀ n, P17953567119666834058.a n = A071726 n

end A071726

/-! ## A071726.P5045522501481564843

`A257558(A342939(n+1))`
-/

namespace A071726.P5045522501481564843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257558 (A342939 (n + 1)).toNat

end

end A071726.P5045522501481564843

namespace A071726

/-- `A257558(A342939(n+1))` -/
def P5045522501481564843.Spec : Prop :=
  ∀ n, P5045522501481564843.a n = A071726 n

end A071726

/-! ## A071726.P2471279424135342402

`A257558(A000124(n)+char[2])`
-/

namespace A071726.P2471279424135342402
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257558 (A000124 n + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)).toNat

end

end A071726.P2471279424135342402

namespace A071726

/-- `A257558(A000124(n)+char[2])` -/
def P2471279424135342402.Spec : Prop :=
  ∀ n, P2471279424135342402.a n = A071726 n

end A071726

/-! ## A071726.P10676663351933702195

`A257558(or(char[2], A000124(n)))`
-/

namespace A071726.P10676663351933702195
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257558 (Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A000124 n)).toNat

end

end A071726.P10676663351933702195

namespace A071726

/-- `A257558(or(char[2], A000124(n)))` -/
def P10676663351933702195.Spec : Prop :=
  ∀ n, P10676663351933702195.a n = A071726 n

end A071726

/-!
# A071727: Expansion of (1+x^3*C)*C^2, where C = (1-(1-4*x)^(1/2))/(2*x) is g.f. for Catalan numbers, A000108.

The programs for A071727, the canonical program `A071727.P16205519223476338135` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A071727 has offset 0).

The definition of A071727 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 172 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A071727.P16205519223476338135

`A000245(floor(n-atan(n)))+A000108(n+1)`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A071727

/-- `A000245(floor(n-atan(n)))+A000108(n+1)` -/
def P16205519223476338135.Spec : Prop :=
  ∀ n, P16205519223476338135.a n = A071727 n

theorem P16205519223476338135.correct : P16205519223476338135.Spec := by
  intro n
  simp only [A071727]

end A071727

/-! ## A071727.P2456593549533526124

`A000108(n+1)+A289595(n)-A289590(n)`
-/

namespace A071727.P2456593549533526124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (n + 1) + (A289595 n - A289590 n)

end

end A071727.P2456593549533526124

namespace A071727

/-- `A000108(n+1)+A289595(n)-A289590(n)` -/
def P2456593549533526124.Spec : Prop :=
  ∀ n, P2456593549533526124.a n = A071727 n

end A071727

/-! ## A071727.P6496768686300262457

`A000108(n+1)+A289601(n)-A289598(n)`
-/

namespace A071727.P6496768686300262457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (n + 1) + (A289601 n - A289598 n)

end

end A071727.P6496768686300262457

namespace A071727

/-- `A000108(n+1)+A289601(n)-A289598(n)` -/
def P6496768686300262457.Spec : Prop :=
  ∀ n, P6496768686300262457.a n = A071727 n

end A071727

/-! ## A071727.P12649380235361674137

`A000108(n+1)+Δ[A120588(A289207(n+1))]`
-/

namespace A071727.P12649380235361674137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120588 (A289207 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (n + 1) + (f1 (n + 1) - f1 n)

end

end A071727.P12649380235361674137

namespace A071727

/-- `A000108(n+1)+Δ[A120588(A289207(n+1))]` -/
def P12649380235361674137.Spec : Prop :=
  ∀ n, P12649380235361674137.a n = A071727 n

end A071727

/-! ## A071727.P7265471321919585273

`A071747(n+1)-A071748(n)`
-/

namespace A071727.P7265471321919585273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071747 (n + 1) - A071748 n

end

end A071727.P7265471321919585273

namespace A071727

/-- `A071747(n+1)-A071748(n)` -/
def P7265471321919585273.Spec : Prop :=
  ∀ n, P7265471321919585273.a n = A071727 n

end A071727

/-! ## A071727.P1967970906607666887

`A071743(n+1)-A071724(n+1)`
-/

namespace A071727.P1967970906607666887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071743 (n + 1) - A071724 (n + 1)

end

end A071727.P1967970906607666887

namespace A071727

/-- `A071743(n+1)-A071724(n+1)` -/
def P1967970906607666887.Spec : Prop :=
  ∀ n, P1967970906607666887.a n = A071727 n

end A071727

/-! ## A071727.P1268336569281370563

`Δ[A120588(abs(1-n))+A014137(n)]`
-/

namespace A071727.P1268336569281370563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120588 |1 - (n : ℤ)|.toNat + A014137 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A071727.P1268336569281370563

namespace A071727

/-- `Δ[A120588(abs(1-n))+A014137(n)]` -/
def P1268336569281370563.Spec : Prop :=
  ∀ n, P1268336569281370563.a n = A071727 n

end A071727

/-! ## A071727.P8391744696213115837

`Δ[A014137(n)+A000108(A289207(n))]`
-/

namespace A071727.P8391744696213115837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014137 n + A000108 (A289207 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A071727.P8391744696213115837

namespace A071727

/-- `Δ[A014137(n)+A000108(A289207(n))]` -/
def P8391744696213115837.Spec : Prop :=
  ∀ n, P8391744696213115837.a n = A071727 n

end A071727

/-! ## A071727.P12112424953285153442

`A067323(∑[n])+A000245(A289207(n))`
-/

namespace A071727.P12112424953285153442
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067323 (∑ j ∈ Finset.range (n + 1), f1 j) + A000245 (A289207 n).toNat

end

end A071727.P12112424953285153442

namespace A071727

/-- `A067323(∑[n])+A000245(A289207(n))` -/
def P12112424953285153442.Spec : Prop :=
  ∀ n, P12112424953285153442.a n = A071727 n

end A071727

/-!
# A071728: Expansion of (1+x^3*C)*C^3, where C = (1-(1-4*x)^(1/2))/(2*x) is g.f. for Catalan numbers, A000108.

The programs for A071728, the canonical program `A071728.P8013549024474898456` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A071728 has offset 0).

The definition of A071728 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A071728.P8013549024474898456

`A099376(n)+A071731(n)`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A071728

/-- `A099376(n)+A071731(n)` -/
def P8013549024474898456.Spec : Prop :=
  ∀ n, P8013549024474898456.a n = A071728 n

theorem P8013549024474898456.correct : P8013549024474898456.Spec := by
  intro n
  simp only [A071728]

end A071728

/-! ## A071728.P704618372769491043

`A071731(n)+Δ[A279557(n)]`
-/

namespace A071728.P704618372769491043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279557 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071731 n + (f1 (n + 1) - f1 n)

end

end A071728.P704618372769491043

namespace A071728

/-- `A071731(n)+Δ[A279557(n)]` -/
def P704618372769491043.Spec : Prop :=
  ∀ n, P704618372769491043.a n = A071728 n

end A071728

/-! ## A071728.P2473936422653986891

`A071751(n+1)-A071755(n)`
-/

namespace A071728.P2473936422653986891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071751 (n + 1) - A071755 n

end

end A071728.P2473936422653986891

namespace A071728

/-- `A071751(n+1)-A071755(n)` -/
def P2473936422653986891.Spec : Prop :=
  ∀ n, P2473936422653986891.a n = A071728 n

end A071728

/-! ## A071728.P16453749917652207513

`A071747(n+1)-A000108(n+1)`
-/

namespace A071728.P16453749917652207513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071747 (n + 1) - A000108 (n + 1)

end

end A071728.P16453749917652207513

namespace A071728

/-- `A071747(n+1)-A000108(n+1)` -/
def P16453749917652207513.Spec : Prop :=
  ∀ n, P16453749917652207513.a n = A071728 n

end A071728

/-! ## A071728.P11734737849308782395

`A115140(n+2)+A071747(n+1)`
-/

namespace A071728.P11734737849308782395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115140 (n + 2) + A071747 (n + 1)

end

end A071728.P11734737849308782395

namespace A071728

/-- `A115140(n+2)+A071747(n+1)` -/
def P11734737849308782395.Spec : Prop :=
  ∀ n, P11734737849308782395.a n = A071728 n

end A071728

/-! ## A071728.P12789449576623112679

`A099376(floor(n-atan(n)))+A000245(n+1)`
-/

namespace A071728.P12789449576623112679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099376 ⌊(n : ℝ) - Real.arctan (n : ℝ)⌋.toNat + A000245 (n + 1)

end

end A071728.P12789449576623112679

namespace A071728

/-- `A099376(floor(n-atan(n)))+A000245(n+1)` -/
def P12789449576623112679.Spec : Prop :=
  ∀ n, P12789449576623112679.a n = A071728 n

end A071728

/-! ## A071728.P11060790686510101571

`A071748(n)+A000245(A289207(n))`
-/

namespace A071728.P11060790686510101571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071748 n + A000245 (A289207 n).toNat

end

end A071728.P11060790686510101571

namespace A071728

/-- `A071748(n)+A000245(A289207(n))` -/
def P11060790686510101571.Spec : Prop :=
  ∀ n, P11060790686510101571.a n = A071728 n

end A071728

/-! ## A071728.P9609541846579886339

`A071731(n)+Δ[A143955(n)+A000108(n)]`
-/

namespace A071728.P9609541846579886339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143955 n + A000108 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071731 n + (f1 (n + 1) - f1 n)

end

end A071728.P9609541846579886339

namespace A071728

/-- `A071731(n)+Δ[A143955(n)+A000108(n)]` -/
def P9609541846579886339.Spec : Prop :=
  ∀ n, P9609541846579886339.a n = A071728 n

end A071728

/-! ## A071728.P11124063199265774805

`A071727(n)+A071748(n)-A000108(n+1)`
-/

namespace A071728.P11124063199265774805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071727 n + (A071748 n - A000108 (n + 1))

end

end A071728.P11124063199265774805

namespace A071728

/-- `A071727(n)+A071748(n)-A000108(n+1)` -/
def P11124063199265774805.Spec : Prop :=
  ∀ n, P11124063199265774805.a n = A071728 n

end A071728

/-! ## A071728.P16959338124990907731

`A000108(n+1)+A071732(n)-A071755(n)`
-/

namespace A071728.P16959338124990907731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (n + 1) + (A071732 n - A071755 n)

end

end A071728.P16959338124990907731

namespace A071728

/-- `A000108(n+1)+A071732(n)-A071755(n)` -/
def P16959338124990907731.Spec : Prop :=
  ∀ n, P16959338124990907731.a n = A071728 n

end A071728

/-! ## A071728.P16263844804961672777

`A071724(n+1)+A071731(n)-A000108(n+1)`
-/

namespace A071728.P16263844804961672777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071724 (n + 1) + (A071731 n - A000108 (n + 1))

end

end A071728.P16263844804961672777

namespace A071728

/-- `A071724(n+1)+A071731(n)-A000108(n+1)` -/
def P16263844804961672777.Spec : Prop :=
  ∀ n, P16263844804961672777.a n = A071728 n

end A071728

/-!
# A071729: Expansion of (1+x^3*C)*C^4, where C = (1-(1-4*x)^(1/2))/(2*x) is g.f. for Catalan numbers, A000108.

The programs for A071729, the canonical program `A071729.P4327875483729827891` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A071729 has offset 0).

The definition of A071729 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 170 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A071729.P17947489933465652040

`A071741(n)-A001089(n)`
-/

namespace A071729.P17947489933465652040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071741 n - A001089 n

end

end A071729.P17947489933465652040

namespace A071729

/-- `A071741(n)-A001089(n)` -/
def P17947489933465652040.Spec : Prop :=
  ∀ n, P17947489933465652040.a n = A071729 n

end A071729

/-! ## A071729.P4327875483729827891

`Δ[A071728(n)-∑[A071726(n)]]`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A071729

/-- `Δ[A071728(n)-∑[A071726(n)]]` -/
def P4327875483729827891.Spec : Prop :=
  ∀ n, P4327875483729827891.a n = A071729 n

theorem P4327875483729827891.correct : P4327875483729827891.Spec := by
  intro n
  simp only [A071729]

end A071729

/-! ## A071729.P4602909509018603490

`Δ[A071728(n)]-A071726(n+1)`
-/

namespace A071729.P4602909509018603490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071728 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A071726 (n + 1)

end

end A071729.P4602909509018603490

namespace A071729

/-- `Δ[A071728(n)]-A071726(n+1)` -/
def P4602909509018603490.Spec : Prop :=
  ∀ n, P4602909509018603490.a n = A071729 n

end A071729

/-! ## A071729.P10483725796347623597

`A071728(n+1)-A071727(n+1)`
-/

namespace A071729.P10483725796347623597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071728 (n + 1) - A071727 (n + 1)

end

end A071729.P10483725796347623597

namespace A071729

/-- `A071728(n+1)-A071727(n+1)` -/
def P10483725796347623597.Spec : Prop :=
  ∀ n, P10483725796347623597.a n = A071729 n

end A071729

/-! ## A071729.P16649733907879832001

`A071748(n+1)-A000108(n+2)`
-/

namespace A071729.P16649733907879832001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071748 (n + 1) - A000108 (n + 2)

end

end A071729.P16649733907879832001

namespace A071729

/-- `A071748(n+1)-A000108(n+2)` -/
def P16649733907879832001.Spec : Prop :=
  ∀ n, P16649733907879832001.a n = A071729 n

end A071729

/-! ## A071729.P1717776573696726553

`A071719(n)+A071732(n)-A071722(n)`
-/

namespace A071729.P1717776573696726553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071719 n + (A071732 n - A071722 n)

end

end A071729.P1717776573696726553

namespace A071729

/-- `A071719(n)+A071732(n)-A071722(n)` -/
def P1717776573696726553.Spec : Prop :=
  ∀ n, P1717776573696726553.a n = A071729 n

end A071729

/-!
# A071730: Smallest prime p > prime(n) such that p-prime(n) is a square.

The programs for A071730, there is no canonical definition to state claims against.
-/

/-! ## A071730.P256385205885968277

`A059843(p?[xor(1, n)+1])`
-/

namespace A071730.P256385205885968277
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059843 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A071730.P256385205885968277

/-! ## A071730.P13930289800689970038

`A059843(Δ[A007504(n)])`
-/

namespace A071730.P13930289800689970038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059843 (f1 (n + 1) - f1 n).toNat

end

end A071730.P13930289800689970038

/-! ## A071730.P13083885360653706297

`A059843(A000040(n+1))`
-/

namespace A071730.P13083885360653706297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059843 (A000040 (n + 1)).toNat

end

end A071730.P13083885360653706297

/-! ## A071730.P13632226683930300026

`A059843(A008578(n+2))`
-/

namespace A071730.P13632226683930300026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059843 (A008578 (n + 2)).toNat

end

end A071730.P13632226683930300026

/-! ## A071730.P206100570959536395

`A059843(A182986(n+2))`
-/

namespace A071730.P206100570959536395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059843 (A182986 (n + 2)).toNat

end

end A071730.P206100570959536395

/-! ## A071730.P17542692210749161236

`A000040(n+1)+A127356(n+1)²`
-/

namespace A071730.P17542692210749161236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + A127356 (n + 1) ^ 2

end

end A071730.P17542692210749161236

/-! ## A071730.P8404378013493959779

`A059843(p?[A131732(n)])`
-/

namespace A071730.P8404378013493959779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131732 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059843 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A071730.P8404378013493959779

/-!
# A071731: Expansion of (1+x^3*C^2)*C^2, where C = (1-(1-4*x)^(1/2))/(2*x) is g.f. for Catalan numbers, A000108.

The programs for A071731, the canonical program `A071731.P2765701597909956439` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A071731 has offset 0).

The definition of A071731 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A071731.P2765701597909956439

`Δ[record[abs(1-n)*A091712(n)]]`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A071731

/-- `Δ[record[abs(1-n)*A091712(n)]]` -/
def P2765701597909956439.Spec : Prop :=
  ∀ n, P2765701597909956439.a n = A071731 n

theorem P2765701597909956439.correct : P2765701597909956439.Spec := by
  intro n
  simp only [A071731]

end A071731

/-! ## A071731.P8044024542666381182

`A071728(n)-A099376(n)`
-/

namespace A071731.P8044024542666381182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071728 n - A099376 n

end

end A071731.P8044024542666381182

namespace A071731

/-- `A071728(n)-A099376(n)` -/
def P8044024542666381182.Spec : Prop :=
  ∀ n, P8044024542666381182.a n = A071731 n

end A071731

/-! ## A071731.P13716740616965151822

`A071728(n)-Δ[A279557(n)]`
-/

namespace A071731.P13716740616965151822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279557 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071728 n - (f1 (n + 1) - f1 n)

end

end A071731.P13716740616965151822

namespace A071731

/-- `A071728(n)-Δ[A279557(n)]` -/
def P13716740616965151822.Spec : Prop :=
  ∀ n, P13716740616965151822.a n = A071731 n

end A071731

/-! ## A071731.P8544321816999880743

`A071751(n+1)-A071752(n)`
-/

namespace A071731.P8544321816999880743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071751 (n + 1) - A071752 n

end

end A071731.P8544321816999880743

namespace A071731

/-- `A071751(n+1)-A071752(n)` -/
def P8544321816999880743.Spec : Prop :=
  ∀ n, P8544321816999880743.a n = A071731 n

end A071731

/-! ## A071731.P15806737233771061631

`Δ[A120589(n)+Δ[A120588(n)]]`
-/

namespace A071731.P15806737233771061631
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120588 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120589 n + (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A071731.P15806737233771061631

namespace A071731

/-- `Δ[A120589(n)+Δ[A120588(n)]]` -/
def P15806737233771061631.Spec : Prop :=
  ∀ n, P15806737233771061631.a n = A071731 n

end A071731

/-! ## A071731.P18226111544886626077

`A000108(n)+A071717(n)-A071716(n)`
-/

namespace A071731.P18226111544886626077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n + (A071717 n - A071716 n)

end

end A071731.P18226111544886626077

namespace A071731

/-- `A000108(n)+A071717(n)-A071716(n)` -/
def P18226111544886626077.Spec : Prop :=
  ∀ n, P18226111544886626077.a n = A071731 n

end A071731

/-! ## A071731.P10048248005678465738

`A071727(n)+A071751(n)-A000108(n+1)`
-/

namespace A071731.P10048248005678465738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071727 n + (A071751 n - A000108 (n + 1))

end

end A071731.P10048248005678465738

namespace A071731

/-- `A071727(n)+A071751(n)-A000108(n+1)` -/
def P10048248005678465738.Spec : Prop :=
  ∀ n, P10048248005678465738.a n = A071731 n

end A071731

/-! ## A071731.P15129083137994786489

`A000108(n+1)+A071728(n)-A071724(n+1)`
-/

namespace A071731.P15129083137994786489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (n + 1) + (A071728 n - A071724 (n + 1))

end

end A071731.P15129083137994786489

namespace A071731

/-- `A000108(n+1)+A071728(n)-A071724(n+1)` -/
def P15129083137994786489.Spec : Prop :=
  ∀ n, P15129083137994786489.a n = A071731 n

end A071731

/-! ## A071731.P9744076329171189561

`A000108(n+1)+A071729(n)-A071749(n)`
-/

namespace A071731.P9744076329171189561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (n + 1) + (A071729 n - A071749 n)

end

end A071731.P9744076329171189561

namespace A071731

/-- `A000108(n+1)+A071729(n)-A071749(n)` -/
def P9744076329171189561.Spec : Prop :=
  ∀ n, P9744076329171189561.a n = A071731 n

end A071731

/-! ## A071731.P14410608227004993570

`Δ[A033820(record[A276944(n+1)])]`
-/

namespace A071731.P14410608227004993570
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276944 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033820 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A071731.P14410608227004993570

namespace A071731

/-- `Δ[A033820(record[A276944(n+1)])]` -/
def P14410608227004993570.Spec : Prop :=
  ∀ n, P14410608227004993570.a n = A071731 n

end A071731

/-!
# A071732: Expansion of (1+x^3*C^2)*C^3, where C = (1-(1-4*x)^(1/2))/(2*x) is g.f. for Catalan numbers, A000108.

The programs for A071732, the canonical program `A071732.P16807153438452664902` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A071732 has offset 0).

The definition of A071732 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A071732.P1087450511618743402

`A099376(n)+A071735(n)`
-/

namespace A071732.P1087450511618743402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099376 n + A071735 n

end

end A071732.P1087450511618743402

namespace A071732

/-- `A099376(n)+A071735(n)` -/
def P1087450511618743402.Spec : Prop :=
  ∀ n, P1087450511618743402.a n = A071732 n

end A071732

/-! ## A071732.P8068099503531599905

`A071735(n)+Δ[A279557(n)]`
-/

namespace A071732.P8068099503531599905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279557 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071735 n + (f1 (n + 1) - f1 n)

end

end A071732.P8068099503531599905

namespace A071732

/-- `A071735(n)+Δ[A279557(n)]` -/
def P8068099503531599905.Spec : Prop :=
  ∀ n, P8068099503531599905.a n = A071732 n

end A071732

/-! ## A071732.P16807153438452664902

`A071718(n)-Δ[A120588(n)]`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A071732

/-- `A071718(n)-Δ[A120588(n)]` -/
def P16807153438452664902.Spec : Prop :=
  ∀ n, P16807153438452664902.a n = A071732 n

theorem P16807153438452664902.correct : P16807153438452664902.Spec := by
  intro n
  simp only [A071732]

end A071732

/-! ## A071732.P1812221809251514173

`A071751(n+1)-A000108(n+1)`
-/

namespace A071732.P1812221809251514173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071751 (n + 1) - A000108 (n + 1)

end

end A071732.P1812221809251514173

namespace A071732

/-- `A071751(n+1)-A000108(n+1)` -/
def P1812221809251514173.Spec : Prop :=
  ∀ n, P1812221809251514173.a n = A071732 n

end A071732

/-! ## A071732.P14147419786077350449

`A071718(n)-Δ[A000108(abs(1-n))]`
-/

namespace A071732.P14147419786077350449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071718 n - (f1 (n + 1) - f1 n)

end

end A071732.P14147419786077350449

namespace A071732

/-- `A071718(n)-Δ[A000108(abs(1-n))]` -/
def P14147419786077350449.Spec : Prop :=
  ∀ n, P14147419786077350449.a n = A071732 n

end A071732

/-! ## A071732.P14566979416406141649

`A026012(n)+A071735(n)-A000108(n)`
-/

namespace A071732.P14566979416406141649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026012 n + (A071735 n - A000108 n)

end

end A071732.P14566979416406141649

namespace A071732

/-- `A026012(n)+A071735(n)-A000108(n)` -/
def P14566979416406141649.Spec : Prop :=
  ∀ n, P14566979416406141649.a n = A071732 n

end A071732

/-! ## A071732.P18145868347793022940

`A071722(n)+A071735(n)-A026012(n)`
-/

namespace A071732.P18145868347793022940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071722 n + (A071735 n - A026012 n)

end

end A071732.P18145868347793022940

namespace A071732

/-- `A071722(n)+A071735(n)-A026012(n)` -/
def P18145868347793022940.Spec : Prop :=
  ∀ n, P18145868347793022940.a n = A071732 n

end A071732

/-! ## A071732.P722949244082712658

`A000108(n+1)+A071718(n)-A071717(n)`
-/

namespace A071732.P722949244082712658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (n + 1) + (A071718 n - A071717 n)

end

end A071732.P722949244082712658

namespace A071732

/-- `A000108(n+1)+A071718(n)-A071717(n)` -/
def P722949244082712658.Spec : Prop :=
  ∀ n, P722949244082712658.a n = A071732 n

end A071732

/-! ## A071732.P2338525378656073029

`A071728(n)+A071755(n)-A000108(n+1)`
-/

namespace A071732.P2338525378656073029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071728 n + (A071755 n - A000108 (n + 1))

end

end A071732.P2338525378656073029

namespace A071732

/-- `A071728(n)+A071755(n)-A000108(n+1)` -/
def P2338525378656073029.Spec : Prop :=
  ∀ n, P2338525378656073029.a n = A071732 n

end A071732

/-! ## A071732.P9670547954916452556

`A280891(n+1)+A071738(n)-A000108(n+1)`
-/

namespace A071732.P9670547954916452556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280891 (n + 1) + (A071738 n - A000108 (n + 1))

end

end A071732.P9670547954916452556

namespace A071732

/-- `A280891(n+1)+A071738(n)-A000108(n+1)` -/
def P9670547954916452556.Spec : Prop :=
  ∀ n, P9670547954916452556.a n = A071732 n

end A071732

/-! ## A071732.P5414368951459811566

`A070031(n)-Δ[A071738(n)]`
-/

namespace A071732.P5414368951459811566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071738 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070031 n - (f1 (n + 1) - f1 n)

end

end A071732.P5414368951459811566

namespace A071732

/-- `A070031(n)-Δ[A071738(n)]` -/
def P5414368951459811566.Spec : Prop :=
  ∀ n, P5414368951459811566.a n = A071732 n

end A071732

/-! ## A071732.P1640184885499809775

`A000108(n)+A071729(n)-A070859(n)`
-/

namespace A071732.P1640184885499809775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n + (A071729 n - A070859 n)

end

end A071732.P1640184885499809775

namespace A071732

/-- `A000108(n)+A071729(n)-A070859(n)` -/
def P1640184885499809775.Spec : Prop :=
  ∀ n, P1640184885499809775.a n = A071732 n

end A071732

/-!
# A071733: Expansion of (1+x^3*C^2)*C^4, where C = (1-(1-4*x)^(1/2))/(2*x) is g.f. for Catalan numbers, A000108.

The programs for A071733, the canonical program `A071733.P8791643933779463557` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A071733 has offset 0).

The definition of A071733 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 170 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A071733.P1227299172144564357

`Δ[A071732(n)]-A071717(n)`
-/

namespace A071733.P1227299172144564357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071732 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A071717 n

end

end A071733.P1227299172144564357

namespace A071733

/-- `Δ[A071732(n)]-A071717(n)` -/
def P1227299172144564357.Spec : Prop :=
  ∀ n, P1227299172144564357.a n = A071733 n

end A071733

/-! ## A071733.P12803952471730816045

`Δ[A071718(n)-A081293(n)]`
-/

namespace A071733.P12803952471730816045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071718 n - A081293 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A071733.P12803952471730816045

namespace A071733

/-- `Δ[A071718(n)-A081293(n)]` -/
def P12803952471730816045.Spec : Prop :=
  ∀ n, P12803952471730816045.a n = A071733 n

end A071733

/-! ## A071733.P10208240075205529699

`Δ[A071718(n)]-∑[A071735(n)]`
-/

namespace A071733.P10208240075205529699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071718 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071735 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - ∑ j ∈ Finset.range (n + 1), f2 j

end

end A071733.P10208240075205529699

namespace A071733

/-- `Δ[A071718(n)]-∑[A071735(n)]` -/
def P10208240075205529699.Spec : Prop :=
  ∀ n, P10208240075205529699.a n = A071733 n

end A071733

/-! ## A071733.P16781660575618441820

`Δ[A071718(n)]-A000782(n+1)`
-/

namespace A071733.P16781660575618441820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071718 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A000782 (n + 1)

end

end A071733.P16781660575618441820

namespace A071733

/-- `Δ[A071718(n)]-A000782(n+1)` -/
def P16781660575618441820.Spec : Prop :=
  ∀ n, P16781660575618441820.a n = A071733 n

end A071733

/-! ## A071733.P16033581937916103566

`Δ[A071718(n)]-A005508(2*n)`
-/

namespace A071733.P16033581937916103566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071718 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A005508 (2 * n)

end

end A071733.P16033581937916103566

namespace A071733

/-- `Δ[A071718(n)]-A005508(2*n)` -/
def P16033581937916103566.Spec : Prop :=
  ∀ n, P16033581937916103566.a n = A071733 n

end A071733

/-! ## A071733.P3047875221836432402

`A071752(n+1)-A000108(n+2)`
-/

namespace A071733.P3047875221836432402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071752 (n + 1) - A000108 (n + 2)

end

end A071733.P3047875221836432402

namespace A071733

/-- `A071752(n+1)-A000108(n+2)` -/
def P3047875221836432402.Spec : Prop :=
  ∀ n, P3047875221836432402.a n = A071733 n

end A071733

/-! ## A071733.P8791643933779463557

`A002057(n)+A071725(n)-A071724(n)`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A071733

/-- `A002057(n)+A071725(n)-A071724(n)` -/
def P8791643933779463557.Spec : Prop :=
  ∀ n, P8791643933779463557.a n = A071733 n

theorem P8791643933779463557.correct : P8791643933779463557.Spec := by
  intro n
  simp only [A071733]

end A071733

/-!
# A071734: a(n) = p(5n+4)/5 where p(k) denotes the k-th partition number.

The programs for A071734, there is no canonical definition to state claims against.
-/

/-! ## A071734.P5541388740001948956

`A213260(n)/5`
-/

namespace A071734.P5541388740001948956
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A213260 n : ℚ) / 5

end

end A071734.P5541388740001948956

/-! ## A071734.P10889277316400407732

`1/5*A000041(5*n+4)`
-/

namespace A071734.P10889277316400407732
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 5 * (A000041 (5 * n + 4) : ℚ)

end

end A071734.P10889277316400407732

/-! ## A071734.P4828978276577648544

`A000041(A016897(n))/5`
-/

namespace A071734.P4828978276577648544
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000041 (A016897 n).toNat : ℚ) / 5

end

end A071734.P4828978276577648544

/-! ## A071734.P5223234322599627363

`A000041(5*n+4)/5`
-/

namespace A071734.P5223234322599627363
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000041 (5 * n + 4) : ℚ) / 5

end

end A071734.P5223234322599627363

/-! ## A071734.P16987649979207997320

`A035363(10*n+8)/5`
-/

namespace A071734.P16987649979207997320
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A035363 (10 * n + 8) : ℚ) / 5

end

end A071734.P16987649979207997320

/-! ## A071734.P8736019251141923004

`A119620(10*n+8)/5`
-/

namespace A071734.P8736019251141923004
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A119620 (10 * n + 8) : ℚ) / 5

end

end A071734.P8736019251141923004

/-! ## A071734.P5381121957766224909

`A100824(A017365(n))/5`
-/

namespace A071734.P5381121957766224909
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A100824 (A017365 n).toNat : ℚ) / 5

end

end A071734.P5381121957766224909

/-! ## A071734.P1131658308055942146

`A363237(A016897(n))`
-/

namespace A071734.P1131658308055942146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363237 (A016897 n).toNat

end

end A071734.P1131658308055942146

/-!
# A071735: Expansion of (1+x^3*C^3)*C^2, where C = (1-(1-4*x)^(1/2))/(2*x) is g.f. for Catalan numbers, A000108.

The programs for A071735, the canonical program `A071735.P2830187826988805830` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A071735 has offset 0).

The definition of A071735 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A071735.P2830187826988805830

`A071738(n)+A000245(n)`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A071735

/-- `A071738(n)+A000245(n)` -/
def P2830187826988805830.Spec : Prop :=
  ∀ n, P2830187826988805830.a n = A071735 n

theorem P2830187826988805830.correct : P2830187826988805830.Spec := by
  intro n
  simp only [A071735]

end A071735

/-! ## A071735.P7823010610599420045

`A071732(n)-A099376(n)`
-/

namespace A071735.P7823010610599420045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071732 n - A099376 n

end

end A071735.P7823010610599420045

namespace A071735

/-- `A071732(n)-A099376(n)` -/
def P7823010610599420045.Spec : Prop :=
  ∀ n, P7823010610599420045.a n = A071735 n

end A071735

/-! ## A071735.P9070404657794350569

`Δ[A068875(n)-A120588(n)]`
-/

namespace A071735.P9070404657794350569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068875 n - A120588 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A071735.P9070404657794350569

namespace A071735

/-- `Δ[A068875(n)-A120588(n)]` -/
def P9070404657794350569.Spec : Prop :=
  ∀ n, P9070404657794350569.a n = A071735 n

end A071735

/-! ## A071735.P10299401562424166163

`A071721(n)-Δ[A120588(n)]`
-/

namespace A071735.P10299401562424166163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120588 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071721 n - (f1 (n + 1) - f1 n)

end

end A071735.P10299401562424166163

namespace A071735

/-- `A071721(n)-Δ[A120588(n)]` -/
def P10299401562424166163.Spec : Prop :=
  ∀ n, P10299401562424166163.a n = A071735 n

end A071735

/-! ## A071735.P4134049604937937911

`A071738(n)+Δ[A120588(n+1)]`
-/

namespace A071735.P4134049604937937911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120588 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071738 n + (f1 (n + 1) - f1 n)

end

end A071735.P4134049604937937911

namespace A071735

/-- `A071738(n)+Δ[A120588(n+1)]` -/
def P4134049604937937911.Spec : Prop :=
  ∀ n, P4134049604937937911.a n = A071735 n

end A071735

/-! ## A071735.P10161594520910655796

`A071751(n+1)-A071724(n+1)`
-/

namespace A071735.P10161594520910655796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071751 (n + 1) - A071724 (n + 1)

end

end A071735.P10161594520910655796

namespace A071735

/-- `A071751(n+1)-A071724(n+1)` -/
def P10161594520910655796.Spec : Prop :=
  ∀ n, P10161594520910655796.a n = A071735 n

end A071735

/-! ## A071735.P18418037795419420147

`Δ[A068875(n)-A000108(abs(1-n))]`
-/

namespace A071735.P18418037795419420147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068875 n - A000108 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A071735.P18418037795419420147

namespace A071735

/-- `Δ[A068875(n)-A000108(abs(1-n))]` -/
def P18418037795419420147.Spec : Prop :=
  ∀ n, P18418037795419420147.a n = A071735 n

end A071735

/-! ## A071735.P5319673982008576003

`Δ[A068875(n)-A028304(abs(2*(1-n)))]`
-/

namespace A071735.P5319673982008576003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068875 n - A028304 |2 * (1 - (n : ℤ))|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A071735.P5319673982008576003

namespace A071735

/-- `Δ[A068875(n)-A028304(abs(2*(1-n)))]` -/
def P5319673982008576003.Spec : Prop :=
  ∀ n, P5319673982008576003.a n = A071735 n

end A071735

/-! ## A071735.P6709152473386872945

`Δ[A068875(n)-A126120(abs(2*(1-n)))]`
-/

namespace A071735.P6709152473386872945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068875 n - A126120 |2 * (1 - (n : ℤ))|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A071735.P6709152473386872945

namespace A071735

/-- `Δ[A068875(n)-A126120(abs(2*(1-n)))]` -/
def P6709152473386872945.Spec : Prop :=
  ∀ n, P6709152473386872945.a n = A071735 n

end A071735

/-! ## A071735.P15619164454190399839

`Δ[A068875(n)-A097331(A004277(n)-1)]`
-/

namespace A071735.P15619164454190399839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068875 n - A097331 (A004277 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A071735.P15619164454190399839

namespace A071735

/-- `Δ[A068875(n)-A097331(A004277(n)-1)]` -/
def P15619164454190399839.Spec : Prop :=
  ∀ n, P15619164454190399839.a n = A071735 n

end A071735

/-! ## A071735.P564288557935656101

`A000108(n+1)+A071738(n)-A000108(n)`
-/

namespace A071735.P564288557935656101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (n + 1) + (A071738 n - A000108 n)

end

end A071735.P564288557935656101

namespace A071735

/-- `A000108(n+1)+A071738(n)-A000108(n)` -/
def P564288557935656101.Spec : Prop :=
  ∀ n, P564288557935656101.a n = A071735 n

end A071735

/-! ## A071735.P2796531785667790490

`A071731(n)+A071755(n)-A000108(n+1)`
-/

namespace A071735.P2796531785667790490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071731 n + (A071755 n - A000108 (n + 1))

end

end A071735.P2796531785667790490

namespace A071735

/-- `A071731(n)+A071755(n)-A000108(n+1)` -/
def P2796531785667790490.Spec : Prop :=
  ∀ n, P2796531785667790490.a n = A071735 n

end A071735

/-! ## A071735.P14108278151186757303

`A000108(n+1)+A071732(n)-A071724(n+1)`
-/

namespace A071735.P14108278151186757303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (n + 1) + (A071732 n - A071724 (n + 1))

end

end A071735.P14108278151186757303

namespace A071735

/-- `A000108(n+1)+A071732(n)-A071724(n+1)` -/
def P14108278151186757303.Spec : Prop :=
  ∀ n, P14108278151186757303.a n = A071735 n

end A071735

/-! ## A071735.P2851805421818716528

`Δ[A071717(n)-A071724(n)]`
-/

namespace A071735.P2851805421818716528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071717 n - A071724 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A071735.P2851805421818716528

namespace A071735

/-- `Δ[A071717(n)-A071724(n)]` -/
def P2851805421818716528.Spec : Prop :=
  ∀ n, P2851805421818716528.a n = A071735 n

end A071735

/-! ## A071735.P17338197805092349986

`A071755(n+1)-A071756(n)`
-/

namespace A071735.P17338197805092349986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071755 (n + 1) - A071756 n

end

end A071735.P17338197805092349986

namespace A071735

/-- `A071755(n+1)-A071756(n)` -/
def P17338197805092349986.Spec : Prop :=
  ∀ n, P17338197805092349986.a n = A071735 n

end A071735

/-! ## A071735.P13458375460473861949

`A071751(n+1)-A071721(n+1)/2`
-/

namespace A071735.P13458375460473861949
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A071751 (n + 1) : ℚ) - (A071721 (n + 1) : ℚ) / 2

end

end A071735.P13458375460473861949

namespace A071735

/-- `A071751(n+1)-A071721(n+1)/2` -/
def P13458375460473861949.Spec : Prop :=
  ∀ n, P13458375460473861949.a n = (A071735 n : ℚ)

end A071735

/-! ## A071735.P6977571920136095762

`A000108(n+1)+A071733(n)-A071753(n)`
-/

namespace A071735.P6977571920136095762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (n + 1) + (A071733 n - A071753 n)

end

end A071735.P6977571920136095762

namespace A071735

/-- `A000108(n+1)+A071733(n)-A071753(n)` -/
def P6977571920136095762.Spec : Prop :=
  ∀ n, P6977571920136095762.a n = A071735 n

end A071735

/-! ## A071735.P14613242926393411251

`A000108(n+1)+A071731(n+1)-A071727(n+1)`
-/

namespace A071735.P14613242926393411251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (n + 1) + (A071731 (n + 1) - A071727 (n + 1))

end

end A071735.P14613242926393411251

namespace A071735

/-- `A000108(n+1)+A071731(n+1)-A071727(n+1)` -/
def P14613242926393411251.Spec : Prop :=
  ∀ n, P14613242926393411251.a n = A071735 n

end A071735

/-! ## A071735.P16664446513704691494

`Δ[A068875(n)-A039599(A000217(n)-n)]`
-/

namespace A071735.P16664446513704691494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068875 n - A039599 (A000217 n - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A071735.P16664446513704691494

namespace A071735

/-- `Δ[A068875(n)-A039599(A000217(n)-n)]` -/
def P16664446513704691494.Spec : Prop :=
  ∀ n, P16664446513704691494.a n = A071735 n

end A071735

/-!
# A071736: Expansion of (1+x^3*C^3)*C^3, where C = (1-(1-4*x)^(1/2))/(2*x) is g.f. for Catalan numbers, A000108.

The programs for A071736, the canonical program `A071736.P17590571516365406048` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A071736 has offset 0).

The definition of A071736 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A071736.P4282206044483370560

`A099376(n)+A071739(n)`
-/

namespace A071736.P4282206044483370560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099376 n + A071739 n

end

end A071736.P4282206044483370560

namespace A071736

/-- `A099376(n)+A071739(n)` -/
def P4282206044483370560.Spec : Prop :=
  ∀ n, P4282206044483370560.a n = A071736 n

end A071736

/-! ## A071736.P17590571516365406048

`A071725(n)+Δ[A071724(n)]`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A071736

/-- `A071725(n)+Δ[A071724(n)]` -/
def P17590571516365406048.Spec : Prop :=
  ∀ n, P17590571516365406048.a n = A071736 n

theorem P17590571516365406048.correct : P17590571516365406048.Spec := by
  intro n
  simp only [A071736]

end A071736

/-! ## A071736.P3882196143972308932

`2*A026012(n)-A071724(n)`
-/

namespace A071736.P3882196143972308932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A026012 n - A071724 n

end

end A071736.P3882196143972308932

namespace A071736

/-- `2*A026012(n)-A071724(n)` -/
def P3882196143972308932.Spec : Prop :=
  ∀ n, P3882196143972308932.a n = A071736 n

end A071736

/-! ## A071736.P15679112652481853118

`A000108(n+1)+A071722(n)-A071721(n)`
-/

namespace A071736.P15679112652481853118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (n + 1) + (A071722 n - A071721 n)

end

end A071736.P15679112652481853118

namespace A071736

/-- `A000108(n+1)+A071722(n)-A071721(n)` -/
def P15679112652481853118.Spec : Prop :=
  ∀ n, P15679112652481853118.a n = A071736 n

end A071736

/-! ## A071736.P12083951850073528083

`A000245(n+1)+A071725(n)-A071724(n)`
-/

namespace A071736.P12083951850073528083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000245 (n + 1) + (A071725 n - A071724 n)

end

end A071736.P12083951850073528083

namespace A071736

/-- `A000245(n+1)+A071725(n)-A071724(n)` -/
def P12083951850073528083.Spec : Prop :=
  ∀ n, P12083951850073528083.a n = A071736 n

end A071736

/-! ## A071736.P13582381251670159267

`A071724(n+1)+A071725(n)-A071724(n)`
-/

namespace A071736.P13582381251670159267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071724 (n + 1) + (A071725 n - A071724 n)

end

end A071736.P13582381251670159267

namespace A071736

/-- `A071724(n+1)+A071725(n)-A071724(n)` -/
def P13582381251670159267.Spec : Prop :=
  ∀ n, P13582381251670159267.a n = A071736 n

theorem P13582381251670159267.correct : P13582381251670159267.Spec := by
  intro n
  simp only [A071736, Nat.add_sub_cancel, A071736.P13582381251670159267.a, A071736.P17590571516365406048.f1, A071736.P17590571516365406048.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A071736

/-! ## A071736.P6487977612401431502

`A071724(n+1)+A071739(n)-A000108(n+1)`
-/

namespace A071736.P6487977612401431502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071724 (n + 1) + (A071739 n - A000108 (n + 1))

end

end A071736.P6487977612401431502

namespace A071736

/-- `A071724(n+1)+A071739(n)-A000108(n+1)` -/
def P6487977612401431502.Spec : Prop :=
  ∀ n, P6487977612401431502.a n = A071736 n

end A071736

/-! ## A071736.P13880437601987056665

`Δ[A071721(n)-A000108(n)]`
-/

namespace A071736.P13880437601987056665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071721 n - A000108 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A071736.P13880437601987056665

namespace A071736

/-- `Δ[A071721(n)-A000108(n)]` -/
def P13880437601987056665.Spec : Prop :=
  ∀ n, P13880437601987056665.a n = A071736 n

end A071736

/-! ## A071736.P12579951165099954721

`Δ[A071721(n)]-A000245(n)`
-/

namespace A071736.P12579951165099954721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071721 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A000245 n

end

end A071736.P12579951165099954721

namespace A071736

/-- `Δ[A071721(n)]-A000245(n)` -/
def P12579951165099954721.Spec : Prop :=
  ∀ n, P12579951165099954721.a n = A071736 n

end A071736

/-! ## A071736.P730309308930990993

`Δ[A071721(n)-A120304(n)]`
-/

namespace A071736.P730309308930990993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071721 n - A120304 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A071736.P730309308930990993

namespace A071736

/-- `Δ[A071721(n)-A120304(n)]` -/
def P730309308930990993.Spec : Prop :=
  ∀ n, P730309308930990993.a n = A071736 n

end A071736

/-! ## A071736.P14056466485568582278

`A071735(n+1)-A071721(n)`
-/

namespace A071736.P14056466485568582278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071735 (n + 1) - A071721 n

end

end A071736.P14056466485568582278

namespace A071736

/-- `A071735(n+1)-A071721(n)` -/
def P14056466485568582278.Spec : Prop :=
  ∀ n, P14056466485568582278.a n = A071736 n

end A071736

/-! ## A071736.P5640545856944269697

`Δ[Δ[A068875(n)]-A000108(n)]`
-/

namespace A071736.P5640545856944269697
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068875 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - A000108 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A071736.P5640545856944269697

namespace A071736

/-- `Δ[Δ[A068875(n)]-A000108(n)]` -/
def P5640545856944269697.Spec : Prop :=
  ∀ n, P5640545856944269697.a n = A071736 n

end A071736

/-! ## A071736.P16218432268222618282

`Δ[A071721(n)-A120588(n+1)]`
-/

namespace A071736.P16218432268222618282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071721 n - A120588 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A071736.P16218432268222618282

namespace A071736

/-- `Δ[A071721(n)-A120588(n+1)]` -/
def P16218432268222618282.Spec : Prop :=
  ∀ n, P16218432268222618282.a n = A071736 n

end A071736

/-! ## A071736.P4371583985757110285

`A071755(n+1)-A000108(n+1)`
-/

namespace A071736.P4371583985757110285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071755 (n + 1) - A000108 (n + 1)

end

end A071736.P4371583985757110285

namespace A071736

/-- `A071755(n+1)-A000108(n+1)` -/
def P4371583985757110285.Spec : Prop :=
  ∀ n, P4371583985757110285.a n = A071736 n

end A071736

/-! ## A071736.P11417192385620219374

`A071752(n+1)-A026012(n+1)`
-/

namespace A071736.P11417192385620219374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071752 (n + 1) - A026012 (n + 1)

end

end A071736.P11417192385620219374

namespace A071736

/-- `A071752(n+1)-A026012(n+1)` -/
def P11417192385620219374.Spec : Prop :=
  ∀ n, P11417192385620219374.a n = A071736 n

end A071736

/-! ## A071736.P2082213614565076093

`Δ[record[A005508(n)-A208355(n+1)]]`
-/

namespace A071736.P2082213614565076093
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005508 n - A208355 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A071736.P2082213614565076093

namespace A071736

/-- `Δ[record[A005508(n)-A208355(n+1)]]` -/
def P2082213614565076093.Spec : Prop :=
  ∀ n, P2082213614565076093.a n = A071736 n

end A071736

/-! ## A071736.P55015420279163502

`A000108(n)+A071733(n)-A070859(n)`
-/

namespace A071736.P55015420279163502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n + (A071733 n - A070859 n)

end

end A071736.P55015420279163502

namespace A071736

/-- `A000108(n)+A071733(n)-A070859(n)` -/
def P55015420279163502.Spec : Prop :=
  ∀ n, P55015420279163502.a n = A071736 n

end A071736

/-! ## A071736.P14014070194873517276

`Δ[A071721(n)]+A071724(n)-A071721(n)`
-/

namespace A071736.P14014070194873517276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071721 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (A071724 n - A071721 n)

end

end A071736.P14014070194873517276

namespace A071736

/-- `Δ[A071721(n)]+A071724(n)-A071721(n)` -/
def P14014070194873517276.Spec : Prop :=
  ∀ n, P14014070194873517276.a n = A071736 n

end A071736

/-! ## A071736.P17728687376179532872

`A071721(n+1)-(A071721(n)+A000245(n))`
-/

namespace A071736.P17728687376179532872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071721 (n + 1) - (A071721 n + A000245 n)

end

end A071736.P17728687376179532872

namespace A071736

/-- `A071721(n+1)-(A071721(n)+A000245(n))` -/
def P17728687376179532872.Spec : Prop :=
  ∀ n, P17728687376179532872.a n = A071736 n

end A071736

/-! ## A071736.P16138998726985709729

`A061557(n+1)-(A071721(n)+A000782(n+1))`
-/

namespace A071736.P16138998726985709729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061557 (n + 1) - (A071721 n + A000782 (n + 1))

end

end A071736.P16138998726985709729

namespace A071736

/-- `A061557(n+1)-(A071721(n)+A000782(n+1))` -/
def P16138998726985709729.Spec : Prop :=
  ∀ n, P16138998726985709729.a n = A071736 n

end A071736

/-!
# A071737: Expansion of (1+x^3*C^3)*C^4, where C = (1-(1-4*x)^(1/2))/(2*x) is g.f. for Catalan numbers, A000108.

The programs for A071737, the canonical program `A071737.P12356561809484092700` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A071737 has offset 0).

The definition of A071737 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 170 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A071737.P12356561809484092700

`A002057(n)+A000588(n)`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A071737

/-- `A002057(n)+A000588(n)` -/
def P12356561809484092700.Spec : Prop :=
  ∀ n, P12356561809484092700.a n = A071737 n

theorem P12356561809484092700.correct : P12356561809484092700.Spec := by
  intro n
  simp only [A071737]

end A071737

/-! ## A071737.P17604686434844967806

`Δ[A071736(n)]-A071721(n)`
-/

namespace A071737.P17604686434844967806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071736 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A071721 n

end

end A071737.P17604686434844967806

namespace A071737

/-- `Δ[A071736(n)]-A071721(n)` -/
def P17604686434844967806.Spec : Prop :=
  ∀ n, P17604686434844967806.a n = A071737 n

end A071737

/-! ## A071737.P3842624224875550686

`A099376(n+1)+A000588(n)`
-/

namespace A071737.P3842624224875550686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099376 (n + 1) + A000588 n

end

end A071737.P3842624224875550686

namespace A071737

/-- `A099376(n+1)+A000588(n)` -/
def P3842624224875550686.Spec : Prop :=
  ∀ n, P3842624224875550686.a n = A071737 n

end A071737

/-! ## A071737.P7454667074787557922

`A390965(n)+A000782(n+1)`
-/

namespace A071737.P7454667074787557922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390965 n + A000782 (n + 1)

end

end A071737.P7454667074787557922

namespace A071737

/-- `A390965(n)+A000782(n+1)` -/
def P7454667074787557922.Spec : Prop :=
  ∀ n, P7454667074787557922.a n = A071737 n

end A071737

/-! ## A071737.P15952184975382119111

`A000588(n)-A115143(n+4)`
-/

namespace A071737.P15952184975382119111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000588 n - A115143 (n + 4)

end

end A071737.P15952184975382119111

namespace A071737

/-- `A000588(n)-A115143(n+4)` -/
def P15952184975382119111.Spec : Prop :=
  ∀ n, P15952184975382119111.a n = A071737 n

end A071737

/-! ## A071737.P3313015490616711735

`A002057(n)-A115146(n+4)`
-/

namespace A071737.P3313015490616711735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002057 n - A115146 (n + 4)

end

end A071737.P3313015490616711735

namespace A071737

/-- `A002057(n)-A115146(n+4)` -/
def P3313015490616711735.Spec : Prop :=
  ∀ n, P3313015490616711735.a n = A071737 n

end A071737

/-! ## A071737.P15661814696958272054

`A000588(n)+∑[A026016(n+1)]`
-/

namespace A071737.P15661814696958272054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026016 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000588 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071737.P15661814696958272054

namespace A071737

/-- `A000588(n)+∑[A026016(n+1)]` -/
def P15661814696958272054.Spec : Prop :=
  ∀ n, P15661814696958272054.a n = A071737 n

end A071737

/-! ## A071737.P14330636491841013709

`Δ[2*A099376(n)-A000245(n)]`
-/

namespace A071737.P14330636491841013709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A099376 n - A000245 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A071737.P14330636491841013709

namespace A071737

/-- `Δ[2*A099376(n)-A000245(n)]` -/
def P14330636491841013709.Spec : Prop :=
  ∀ n, P14330636491841013709.a n = A071737 n

end A071737

/-! ## A071737.P6664515909947317193

`A071756(n+1)-A000108(n+2)`
-/

namespace A071737.P6664515909947317193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071756 (n + 1) - A000108 (n + 2)

end

end A071737.P6664515909947317193

namespace A071737

/-- `A071756(n+1)-A000108(n+2)` -/
def P6664515909947317193.Spec : Prop :=
  ∀ n, P6664515909947317193.a n = A071737 n

end A071737

/-! ## A071737.P16235516150894732807

`2*A026016(n+1)-A026012(n)`
-/

namespace A071737.P16235516150894732807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A026016 (n + 1) - A026012 n

end

end A071737.P16235516150894732807

namespace A071737

/-- `2*A026016(n+1)-A026012(n)` -/
def P16235516150894732807.Spec : Prop :=
  ∀ n, P16235516150894732807.a n = A071737 n

end A071737

/-! ## A071737.P16872516756085686476

`2*A026021(2*n+1)-A026021(2*n)`
-/

namespace A071737.P16872516756085686476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A026021 (2 * n + 1) - A026021 (2 * n)

end

end A071737.P16872516756085686476

namespace A071737

/-- `2*A026021(2*n+1)-A026021(2*n)` -/
def P16872516756085686476.Spec : Prop :=
  ∀ n, P16872516756085686476.a n = A071737 n

end A071737

/-! ## A071737.P11175766100596862590

`A000108(n+1)+A071723(n)-A026012(n)`
-/

namespace A071737.P11175766100596862590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (n + 1) + (A071723 n - A026012 n)

end

end A071737.P11175766100596862590

namespace A071737

/-- `A000108(n+1)+A071723(n)-A026012(n)` -/
def P11175766100596862590.Spec : Prop :=
  ∀ n, P11175766100596862590.a n = A071737 n

end A071737

/-! ## A071737.P5127969403162779938

`A071736(n+1)-(A070031(n)+A000108(n))`
-/

namespace A071737.P5127969403162779938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071736 (n + 1) - (A070031 n + A000108 n)

end

end A071737.P5127969403162779938

namespace A071737

/-- `A071736(n+1)-(A070031(n)+A000108(n))` -/
def P5127969403162779938.Spec : Prop :=
  ∀ n, P5127969403162779938.a n = A071737 n

end A071737

/-! ## A071737.P1209637545642252267

`A071721(n+1)+A390965(n)-A071722(n)`
-/

namespace A071737.P1209637545642252267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071721 (n + 1) + (A390965 n - A071722 n)

end

end A071737.P1209637545642252267

namespace A071737

/-- `A071721(n+1)+A390965(n)-A071722(n)` -/
def P1209637545642252267.Spec : Prop :=
  ∀ n, P1209637545642252267.a n = A071737 n

end A071737

/-! ## A071737.P5674344764672612908

`Δ[Δ[A005508(2*n)]]-A005508(2*n+1)`
-/

namespace A071737.P5674344764672612908
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005508 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A005508 (2 * n + 1)

end

end A071737.P5674344764672612908

namespace A071737

/-- `Δ[Δ[A005508(2*n)]]-A005508(2*n+1)` -/
def P5674344764672612908.Spec : Prop :=
  ∀ n, P5674344764672612908.a n = A071737 n

end A071737

/-! ## A071737.P2140793976776217428

`A026012(n+1)+A070859(n+1)-A228339(n)`
-/

namespace A071737.P2140793976776217428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026012 (n + 1) + (A070859 (n + 1) - A228339 n)

end

end A071737.P2140793976776217428

namespace A071737

/-- `A026012(n+1)+A070859(n+1)-A228339(n)` -/
def P2140793976776217428.Spec : Prop :=
  ∀ n, P2140793976776217428.a n = A071737 n

end A071737

/-!
# A071738: Expansion of (1+x^3*C^4)*C, where C = (1-(1-4*x)^(1/2))/(2*x) is g.f. for Catalan numbers, A000108.

The programs for A071738, the canonical program `A071738.P7757935969038714407` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A071738 has offset 0).

The definition of A071738 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 172 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A071738.P3759471172312104496

`Δ[Δ[(4-6/n)*a(n-1)]]` with `a(0)=2, a(1)=1`
-/

namespace A071738.P3759471172312104496
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.rec [2, 1] fun n f2 =>
  (4 - 6 / (n : ℚ)) * f2 (n - 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A071738.P3759471172312104496

namespace A071738

/-- `Δ[Δ[(4-6/n)*a(n-1)]]` -/
def P3759471172312104496.Spec : Prop :=
  ∀ n, P3759471172312104496.a n = (A071738 n : ℚ)

end A071738

/-! ## A071738.P1098695292357973152

`Δ[A289598(n)]+1`
-/

namespace A071738.P1098695292357973152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289598 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A071738.P1098695292357973152

namespace A071738

/-- `Δ[A289598(n)]+1` -/
def P1098695292357973152.Spec : Prop :=
  ∀ n, P1098695292357973152.a n = A071738 n

end A071738

/-! ## A071738.P1481936132134161777

`A026021(comp[2*n+3])`
-/

namespace A071738.P1481936132134161777
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026021 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A071738.P1481936132134161777

namespace A071738

/-- `A026021(comp[2*n+3])` -/
def P1481936132134161777.Spec : Prop :=
  ∀ n, P1481936132134161777.a n = A071738 n

end A071738

/-! ## A071738.P7757935969038714407

`abs(Δ[A000245(abs(1-n))])`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A071738

/-- `abs(Δ[A000245(abs(1-n))])` -/
def P7757935969038714407.Spec : Prop :=
  ∀ n, P7757935969038714407.a n = A071738 n

theorem P7757935969038714407.correct : P7757935969038714407.Spec := by
  intro n
  simp only [A071738]

end A071738

/-! ## A071738.P10598367015285810447

`A026012(abs(ceil(n*sin(11))))`
-/

namespace A071738.P10598367015285810447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026012 |⌈(n : ℝ) * Real.sin (11 : ℝ)⌉|.toNat

end

end A071738.P10598367015285810447

namespace A071738

/-- `A026012(abs(ceil(n*sin(11))))` -/
def P10598367015285810447.Spec : Prop :=
  ∀ n, P10598367015285810447.a n = A071738 n

end A071738

/-! ## A071738.P5393196496560366849

`A026012((n-1)%(n+1))`
-/

namespace A071738.P5393196496560366849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026012 (Int.tmod ((n : ℤ) - 1) (n + 1 : ℤ)).toNat

end

end A071738.P5393196496560366849

namespace A071738

/-- `A026012((n-1)%(n+1))` -/
def P5393196496560366849.Spec : Prop :=
  ∀ n, P5393196496560366849.a n = A071738 n

end A071738

/-! ## A071738.P16637499768378455080

`A026012(A289207(n+1))`
-/

namespace A071738.P16637499768378455080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026012 (A289207 (n + 1)).toNat

end

end A071738.P16637499768378455080

namespace A071738

/-- `A026012(A289207(n+1))` -/
def P16637499768378455080.Spec : Prop :=
  ∀ n, P16637499768378455080.a n = A071738 n

end A071738

/-! ## A071738.P2312263286482230276

`A026012(A289207(2*n)/2)`
-/

namespace A071738.P2312263286482230276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026012 (SequenceMachineLib.roundAway ((A289207 (2 * n) : ℚ) / 2)).toNat

end

end A071738.P2312263286482230276

namespace A071738

/-- `A026012(A289207(2*n)/2)` -/
def P2312263286482230276.Spec : Prop :=
  ∀ n, P2312263286482230276.a n = A071738 n

end A071738

/-! ## A071738.P2405813705072201633

`Δ[Δ[A120588(n)+A004273(n)]]`
-/

namespace A071738.P2405813705072201633
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120588 n + A004273 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A071738.P2405813705072201633

namespace A071738

/-- `Δ[Δ[A120588(n)+A004273(n)]]` -/
def P2405813705072201633.Spec : Prop :=
  ∀ n, P2405813705072201633.a n = A071738 n

end A071738

/-! ## A071738.P9742018142437045777

`A000108(n+1)+A120588(n)-A068875(n)`
-/

namespace A071738.P9742018142437045777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (n + 1) + (A120588 n - A068875 n)

end

end A071738.P9742018142437045777

namespace A071738

/-- `A000108(n+1)+A120588(n)-A068875(n)` -/
def P9742018142437045777.Spec : Prop :=
  ∀ n, P9742018142437045777.a n = A071738 n

end A071738

/-! ## A071738.P1566308209266955256

`A071735(n)-A000245(n)`
-/

namespace A071738.P1566308209266955256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071735 n - A000245 n

end

end A071738.P1566308209266955256

namespace A071738

/-- `A071735(n)-A000245(n)` -/
def P1566308209266955256.Spec : Prop :=
  ∀ n, P1566308209266955256.a n = A071738 n

end A071738

/-! ## A071738.P12767830458094792327

`A000108(n)+A071735(n)-A000108(n+1)`
-/

namespace A071738.P12767830458094792327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n + (A071735 n - A000108 (n + 1))

end

end A071738.P12767830458094792327

namespace A071738

/-- `A000108(n)+A071735(n)-A000108(n+1)` -/
def P12767830458094792327.Spec : Prop :=
  ∀ n, P12767830458094792327.a n = A071738 n

end A071738

/-! ## A071738.P13768590275548151355

`A000108(n)+A071732(n)-A071724(n+1)`
-/

namespace A071738.P13768590275548151355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n + (A071732 n - A071724 (n + 1))

end

end A071738.P13768590275548151355

namespace A071738

/-- `A000108(n)+A071732(n)-A071724(n+1)` -/
def P13768590275548151355.Spec : Prop :=
  ∀ n, P13768590275548151355.a n = A071738 n

end A071738

/-! ## A071738.P16501039780748342008

`A000108(n)+A071733(n)-A071753(n)`
-/

namespace A071738.P16501039780748342008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n + (A071733 n - A071753 n)

end

end A071738.P16501039780748342008

namespace A071738

/-- `A000108(n)+A071733(n)-A071753(n)` -/
def P16501039780748342008.Spec : Prop :=
  ∀ n, P16501039780748342008.a n = A071738 n

end A071738

/-! ## A071738.P7279352991289652196

`A071731(n+1)+A000108(n)-A071727(n+1)`
-/

namespace A071738.P7279352991289652196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071731 (n + 1) + (A000108 n - A071727 (n + 1))

end

end A071738.P7279352991289652196

namespace A071738

/-- `A071731(n+1)+A000108(n)-A071727(n+1)` -/
def P7279352991289652196.Spec : Prop :=
  ∀ n, P7279352991289652196.a n = A071738 n

end A071738

/-! ## A071738.P8695539879603686756

`A071735(n+1)+A071735(n)-A071721(n+1)`
-/

namespace A071738.P8695539879603686756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071735 (n + 1) + (A071735 n - A071721 (n + 1))

end

end A071738.P8695539879603686756

namespace A071738

/-- `A071735(n+1)+A071735(n)-A071721(n+1)` -/
def P8695539879603686756.Spec : Prop :=
  ∀ n, P8695539879603686756.a n = A071738 n

end A071738

/-! ## A071738.P7881294440912024752

`A050157(A238531(n))`
-/

namespace A071738.P7881294440912024752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050157 (A238531 n).toNat

end

end A071738.P7881294440912024752

namespace A071738

/-- `A050157(A238531(n))` -/
def P7881294440912024752.Spec : Prop :=
  ∀ n, P7881294440912024752.a n = A071738 n

end A071738

/-! ## A071738.P17976534117576270356

`A059346(∑[n+2]-2)`
-/

namespace A071738.P17976534117576270356
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059346 (∑ j ∈ Finset.range (n + 1), f1 j - 2)

end

end A071738.P17976534117576270356

namespace A071738

/-- `A059346(∑[n+2]-2)` -/
def P17976534117576270356.Spec : Prop :=
  ∀ n, P17976534117576270356.a n = A071738 n

end A071738

/-! ## A071738.P9559290806435520402

`A026012(A000194(n²-n))`
-/

namespace A071738.P9559290806435520402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026012 (A000194 (n ^ 2 - n)).toNat

end

end A071738.P9559290806435520402

namespace A071738

/-- `A026012(A000194(n²-n))` -/
def P9559290806435520402.Spec : Prop :=
  ∀ n, P9559290806435520402.a n = A071738 n

end A071738

/-! ## A071738.P16488738578428515920

`A026012(A000196(n²-n))`
-/

namespace A071738.P16488738578428515920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026012 (A000196 (n ^ 2 - n)).toNat

end

end A071738.P16488738578428515920

namespace A071738

/-- `A026012(A000196(n²-n))` -/
def P16488738578428515920.Spec : Prop :=
  ∀ n, P16488738578428515920.a n = A071738 n

end A071738

/-!
# A071739: Expansion of (1+x^3*C^4)*C^2, where C = (1-(1-4*x)^(1/2))/(2*x) is g.f. for Catalan numbers, A000108.

The programs for A071739, the canonical program `A071739.P1815555829644906627` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A071739 has offset 0).

The definition of A071739 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A071739.P1815555829644906627

`A071736(n)-A099376(n)`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A071739

/-- `A071736(n)-A099376(n)` -/
def P1815555829644906627.Spec : Prop :=
  ∀ n, P1815555829644906627.a n = A071739 n

theorem P1815555829644906627.correct : P1815555829644906627.Spec := by
  intro n
  simp only [A071739]

end A071739

/-! ## A071739.P18159385256244933042

`A120588(n)+Δ[A071738(n)]`
-/

namespace A071739.P18159385256244933042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071738 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120588 n + (f1 (n + 1) - f1 n)

end

end A071739.P18159385256244933042

namespace A071739

/-- `A120588(n)+Δ[A071738(n)]` -/
def P18159385256244933042.Spec : Prop :=
  ∀ n, P18159385256244933042.a n = A071739 n

end A071739

/-! ## A071739.P15503495828560624417

`A068875(n)+Δ[A143955(n)]`
-/

namespace A071739.P15503495828560624417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143955 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068875 n + (f1 (n + 1) - f1 n)

end

end A071739.P15503495828560624417

namespace A071739

/-- `A068875(n)+Δ[A143955(n)]` -/
def P15503495828560624417.Spec : Prop :=
  ∀ n, P15503495828560624417.a n = A071739 n

end A071739

/-! ## A071739.P16006916345118293476

`A071756(n)-Δ[A071738(n)]`
-/

namespace A071739.P16006916345118293476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071738 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071756 n - (f1 (n + 1) - f1 n)

end

end A071739.P16006916345118293476

namespace A071739

/-- `A071756(n)-Δ[A071738(n)]` -/
def P16006916345118293476.Spec : Prop :=
  ∀ n, P16006916345118293476.a n = A071739 n

end A071739

/-! ## A071739.P15605634266786798882

`A220902(n+2)-A071721(n)`
-/

namespace A071739.P15605634266786798882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220902 (n + 2) - A071721 n

end

end A071739.P15605634266786798882

namespace A071739

/-- `A220902(n+2)-A071721(n)` -/
def P15605634266786798882.Spec : Prop :=
  ∀ n, P15605634266786798882.a n = A071739 n

end A071739

/-! ## A071739.P359761227029239305

`A000108(n)+Δ[A071724(n)-A000108(n)]`
-/

namespace A071739.P359761227029239305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071724 n - A000108 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n + (f1 (n + 1) - f1 n)

end

end A071739.P359761227029239305

namespace A071739

/-- `A000108(n)+Δ[A071724(n)-A000108(n)]` -/
def P359761227029239305.Spec : Prop :=
  ∀ n, P359761227029239305.a n = A071739 n

end A071739

/-! ## A071739.P1991965893502807335

`A000245(n+1)+A000108(n)-A071721(n)`
-/

namespace A071739.P1991965893502807335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000245 (n + 1) + (A000108 n - A071721 n)

end

end A071739.P1991965893502807335

namespace A071739

/-- `A000245(n+1)+A000108(n)-A071721(n)` -/
def P1991965893502807335.Spec : Prop :=
  ∀ n, P1991965893502807335.a n = A071739 n

end A071739

/-! ## A071739.P4128732179650772849

`A000108(n+1)+A026012(n)-A071721(n)`
-/

namespace A071739.P4128732179650772849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (n + 1) + (A026012 n - A071721 n)

end

end A071739.P4128732179650772849

namespace A071739

/-- `A000108(n+1)+A026012(n)-A071721(n)` -/
def P4128732179650772849.Spec : Prop :=
  ∀ n, P4128732179650772849.a n = A071739 n

end A071739

/-! ## A071739.P6121628493779379189

`A000108(n+1)+A071725(n)-A071724(n)`
-/

namespace A071739.P6121628493779379189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (n + 1) + (A071725 n - A071724 n)

end

end A071739.P6121628493779379189

namespace A071739

/-- `A000108(n+1)+A071725(n)-A071724(n)` -/
def P6121628493779379189.Spec : Prop :=
  ∀ n, P6121628493779379189.a n = A071739 n

end A071739

/-! ## A071739.P4995858267832417561

`A220902(n+2)-(A071724(n)+A000245(n))`
-/

namespace A071739.P4995858267832417561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220902 (n + 2) - (A071724 n + A000245 n)

end

end A071739.P4995858267832417561

namespace A071739

/-- `A220902(n+2)-(A071724(n)+A000245(n))` -/
def P4995858267832417561.Spec : Prop :=
  ∀ n, P4995858267832417561.a n = A071739 n

end A071739

/-! ## A071739.P14964135300449798837

`A000108(n+1)+A071736(n)-A000245(n+1)`
-/

namespace A071739.P14964135300449798837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (n + 1) + (A071736 n - A000245 (n + 1))

end

end A071739.P14964135300449798837

namespace A071739

/-- `A000108(n+1)+A071736(n)-A000245(n+1)` -/
def P14964135300449798837.Spec : Prop :=
  ∀ n, P14964135300449798837.a n = A071739 n

end A071739

/-! ## A071739.P11696408129656751894

`A071735(n+1)-A071718(n)`
-/

namespace A071739.P11696408129656751894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071735 (n + 1) - A071718 n

end

end A071739.P11696408129656751894

namespace A071739

/-- `A071735(n+1)-A071718(n)` -/
def P11696408129656751894.Spec : Prop :=
  ∀ n, P11696408129656751894.a n = A071739 n

end A071739

/-! ## A071739.P176007413201121540

`Δ[Δ[A081293(n)]]-A071718(n)`
-/

namespace A071739.P176007413201121540
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081293 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A071718 n

end

end A071739.P176007413201121540

namespace A071739

/-- `Δ[Δ[A081293(n)]]-A071718(n)` -/
def P176007413201121540.Spec : Prop :=
  ∀ n, P176007413201121540.a n = A071739 n

end A071739

/-! ## A071739.P330463616051941719

`Δ[A000782(n+1)]-A071718(n)`
-/

namespace A071739.P330463616051941719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A071718 n

end

end A071739.P330463616051941719

namespace A071739

/-- `Δ[A000782(n+1)]-A071718(n)` -/
def P330463616051941719.Spec : Prop :=
  ∀ n, P330463616051941719.a n = A071739 n

end A071739

/-! ## A071739.P2304345474856547625

`Δ[A005508(2*n)]-A071718(n)`
-/

namespace A071739.P2304345474856547625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005508 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A071718 n

end

end A071739.P2304345474856547625

namespace A071739

/-- `Δ[A005508(2*n)]-A071718(n)` -/
def P2304345474856547625.Spec : Prop :=
  ∀ n, P2304345474856547625.a n = A071739 n

end A071739

/-! ## A071739.P13757386360733782433

`A071755(n+1)-A071724(n+1)`
-/

namespace A071739.P13757386360733782433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071755 (n + 1) - A071724 (n + 1)

end

end A071739.P13757386360733782433

namespace A071739

/-- `A071755(n+1)-A071724(n+1)` -/
def P13757386360733782433.Spec : Prop :=
  ∀ n, P13757386360733782433.a n = A071739 n

end A071739

/-! ## A071739.P10772853144133511238

`A071755(n+1)-A071721(n+1)/2`
-/

namespace A071739.P10772853144133511238
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A071755 (n + 1) : ℚ) - (A071721 (n + 1) : ℚ) / 2

end

end A071739.P10772853144133511238

namespace A071739

/-- `A071755(n+1)-A071721(n+1)/2` -/
def P10772853144133511238.Spec : Prop :=
  ∀ n, P10772853144133511238.a n = (A071739 n : ℚ)

end A071739

/-! ## A071739.P18096500198116395798

`A071735(n)-(A071718(n)-Δ[A071735(n)])`
-/

namespace A071739.P18096500198116395798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071735 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071735 n - (A071718 n - (f1 (n + 1) - f1 n))

end

end A071739.P18096500198116395798

namespace A071739

/-- `A071735(n)-(A071718(n)-Δ[A071735(n)])` -/
def P18096500198116395798.Spec : Prop :=
  ∀ n, P18096500198116395798.a n = A071739 n

end A071739

/-! ## A071739.P834209012090189322

`A000245(n+1)+A071736(n)-A070031(n)`
-/

namespace A071739.P834209012090189322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000245 (n + 1) + (A071736 n - A070031 n)

end

end A071739.P834209012090189322

namespace A071739

/-- `A000245(n+1)+A071736(n)-A070031(n)` -/
def P834209012090189322.Spec : Prop :=
  ∀ n, P834209012090189322.a n = A071739 n

end A071739

/-! ## A071739.P14984016142933337723

`Δ[A071717(n+1)]-A071728(n+1)`
-/

namespace A071739.P14984016142933337723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071717 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A071728 (n + 1)

end

end A071739.P14984016142933337723

namespace A071739

/-- `Δ[A071717(n+1)]-A071728(n+1)` -/
def P14984016142933337723.Spec : Prop :=
  ∀ n, P14984016142933337723.a n = A071739 n

end A071739

/-!
# A071740: Expansion of (1+x^3*C^4)*C^3, where C = (1-(1-4*x)^(1/2))/(2*x) is g.f. for Catalan numbers, A000108.

The programs for A071740, the canonical program `A071740.P5522841597563350787` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A071740 has offset 0).

The definition of A071740 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 170 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A071740.P4248876730271821137

`A026029(n)+Δ[(4-6/(n+1))*a(n-1)]` with `a(0)=1`
-/

namespace A071740.P4248876730271821137
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  (4 - 6 / (n + 1 : ℚ)) * f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026029 n : ℚ) + (f1 (n + 1) - f1 n)

end

end A071740.P4248876730271821137

namespace A071740

/-- `A026029(n)+Δ[(4-6/(n+1))*a(n-1)]` -/
def P4248876730271821137.Spec : Prop :=
  ∀ n, P4248876730271821137.a n = (A071740 n : ℚ)

end A071740

/-! ## A071740.P5522841597563350787

`A026029(n)+A000245(n)`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A071740

/-- `A026029(n)+A000245(n)` -/
def P5522841597563350787.Spec : Prop :=
  ∀ n, P5522841597563350787.a n = A071740 n

theorem P5522841597563350787.correct : P5522841597563350787.Spec := by
  intro n
  simp only [A071740]

end A071740

/-! ## A071740.P5609192004729155290

`A033434(n)-A099376(n)`
-/

namespace A071740.P5609192004729155290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033434 n - A099376 n

end

end A071740.P5609192004729155290

namespace A071740

/-- `A033434(n)-A099376(n)` -/
def P5609192004729155290.Spec : Prop :=
  ∀ n, P5609192004729155290.a n = A071740 n

end A071740

/-! ## A071740.P13225872330392465790

`A000588(n)+∑[A026012(n)]`
-/

namespace A071740.P13225872330392465790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026012 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000588 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071740.P13225872330392465790

namespace A071740

/-- `A000588(n)+∑[A026012(n)]` -/
def P13225872330392465790.Spec : Prop :=
  ∀ n, P13225872330392465790.a n = A071740 n

end A071740

/-! ## A071740.P12284201330191338497

`A026029(n)+Δ[A000108(n)]`
-/

namespace A071740.P12284201330191338497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026029 n + (f1 (n + 1) - f1 n)

end

end A071740.P12284201330191338497

namespace A071740

/-- `A026029(n)+Δ[A000108(n)]` -/
def P12284201330191338497.Spec : Prop :=
  ∀ n, P12284201330191338497.a n = A071740 n

end A071740

/-! ## A071740.P6372638752181848330

`A000108(n)+Δ[A071725(n)]`
-/

namespace A071740.P6372638752181848330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071725 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n + (f1 (n + 1) - f1 n)

end

end A071740.P6372638752181848330

namespace A071740

/-- `A000108(n)+Δ[A071725(n)]` -/
def P6372638752181848330.Spec : Prop :=
  ∀ n, P6372638752181848330.a n = A071740 n

end A071740

/-! ## A071740.P8512051307682474998

`A000588(n)+A000245(n+1)`
-/

namespace A071740.P8512051307682474998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000588 n + A000245 (n + 1)

end

end A071740.P8512051307682474998

namespace A071740

/-- `A000588(n)+A000245(n+1)` -/
def P8512051307682474998.Spec : Prop :=
  ∀ n, P8512051307682474998.a n = A071740 n

end A071740

/-! ## A071740.P11052922652941051884

`A071724(n+1)+A000588(n)`
-/

namespace A071740.P11052922652941051884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071724 (n + 1) + A000588 n

end

end A071740.P11052922652941051884

namespace A071740

/-- `A071724(n+1)+A000588(n)` -/
def P11052922652941051884.Spec : Prop :=
  ∀ n, P11052922652941051884.a n = A071740 n

end A071740

/-! ## A071740.P16979851490366489610

`A026012(n+1)-A071722(n)`
-/

namespace A071740.P16979851490366489610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026012 (n + 1) - A071722 n

end

end A071740.P16979851490366489610

namespace A071740

/-- `A026012(n+1)-A071722(n)` -/
def P16979851490366489610.Spec : Prop :=
  ∀ n, P16979851490366489610.a n = A071740 n

end A071740

/-! ## A071740.P8478098144412257344

`A026034(2*n)+A000245(n)`
-/

namespace A071740.P8478098144412257344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026034 (2 * n) + A000245 n

end

end A071740.P8478098144412257344

namespace A071740

/-- `A026034(2*n)+A000245(n)` -/
def P8478098144412257344.Spec : Prop :=
  ∀ n, P8478098144412257344.a n = A071740 n

end A071740

/-! ## A071740.P10481362915045001534

`Δ[Δ[A000245(n)]]-A099376(n)`
-/

namespace A071740.P10481362915045001534
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000245 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A099376 n

end

end A071740.P10481362915045001534

namespace A071740

/-- `Δ[Δ[A000245(n)]]-A099376(n)` -/
def P10481362915045001534.Spec : Prop :=
  ∀ n, P10481362915045001534.a n = A071740 n

end A071740

/-! ## A071740.P15078370584350035914

`A000588(n)+Δ[A000108(n+1)]`
-/

namespace A071740.P15078370584350035914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000588 n + (f1 (n + 1) - f1 n)

end

end A071740.P15078370584350035914

namespace A071740

/-- `A000588(n)+Δ[A000108(n+1)]` -/
def P15078370584350035914.Spec : Prop :=
  ∀ n, P15078370584350035914.a n = A071740 n

end A071740

/-! ## A071740.P9104217328797401144

`A071739(n+1)-A071738(n+1)`
-/

namespace A071740.P9104217328797401144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071739 (n + 1) - A071738 (n + 1)

end

end A071740.P9104217328797401144

namespace A071740

/-- `A071739(n+1)-A071738(n+1)` -/
def P9104217328797401144.Spec : Prop :=
  ∀ n, P9104217328797401144.a n = A071740 n

end A071740

/-! ## A071740.P14004716216019061823

`A026008(2*n+1)+A000588(n)`
-/

namespace A071740.P14004716216019061823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026008 (2 * n + 1) + A000588 n

end

end A071740.P14004716216019061823

namespace A071740

/-- `A026008(2*n+1)+A000588(n)` -/
def P14004716216019061823.Spec : Prop :=
  ∀ n, P14004716216019061823.a n = A071740 n

end A071740

/-! ## A071740.P3632402242936294735

`A000108(n)+A033434(n)-A026012(n)`
-/

namespace A071740.P3632402242936294735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n + (A033434 n - A026012 n)

end

end A071740.P3632402242936294735

namespace A071740

/-- `A000108(n)+A033434(n)-A026012(n)` -/
def P3632402242936294735.Spec : Prop :=
  ∀ n, P3632402242936294735.a n = A071740 n

end A071740

/-! ## A071740.P2749877457268425174

`Δ[A099376(n)+A000108(n)]-A099376(n)`
-/

namespace A071740.P2749877457268425174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099376 n + A000108 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A099376 n

end

end A071740.P2749877457268425174

namespace A071740

/-- `Δ[A099376(n)+A000108(n)]-A099376(n)` -/
def P2749877457268425174.Spec : Prop :=
  ∀ n, P2749877457268425174.a n = A071740 n

end A071740

/-! ## A071740.P429184720067876099

`Δ[A120304(n)+A099376(n)]-A099376(n)`
-/

namespace A071740.P429184720067876099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120304 n + A099376 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A099376 n

end

end A071740.P429184720067876099

namespace A071740

/-- `Δ[A120304(n)+A099376(n)]-A099376(n)` -/
def P429184720067876099.Spec : Prop :=
  ∀ n, P429184720067876099.a n = A071740 n

end A071740

/-! ## A071740.P7582013711582452392

`A000108(n+1)+A026029(n)-A000108(n)`
-/

namespace A071740.P7582013711582452392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (n + 1) + (A026029 n - A000108 n)

end

end A071740.P7582013711582452392

namespace A071740

/-- `A000108(n+1)+A026029(n)-A000108(n)` -/
def P7582013711582452392.Spec : Prop :=
  ∀ n, P7582013711582452392.a n = A071740 n

end A071740

/-! ## A071740.P3441888339452948409

`A026016(n+1)+A000108(n)-A071725(n)`
-/

namespace A071740.P3441888339452948409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026016 (n + 1) + (A000108 n - A071725 n)

end

end A071740.P3441888339452948409

namespace A071740

/-- `A026016(n+1)+A000108(n)-A071725(n)` -/
def P3441888339452948409.Spec : Prop :=
  ∀ n, P3441888339452948409.a n = A071740 n

end A071740

/-! ## A071740.P3334463268333082043

`A026016(n+1)+A000245(n)-A099376(n)`
-/

namespace A071740.P3334463268333082043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026016 (n + 1) + (A000245 n - A099376 n)

end

end A071740.P3334463268333082043

namespace A071740

/-- `A026016(n+1)+A000245(n)-A099376(n)` -/
def P3334463268333082043.Spec : Prop :=
  ∀ n, P3334463268333082043.a n = A071740 n

end A071740

/-!
# A071741: Expansion of (1+x^3*C^4)*C^4, where C = (1-(1-4*x)^(1/2))/(2*x) is g.f. for Catalan numbers, A000108.

The programs for A071741, the canonical program `A071741.P9703723317413013413` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A071741 has offset 0).

The definition of A071741 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 170 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A071741.P9703723317413013413

`Δ[A026029(n)]`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A071741

/-- `Δ[A026029(n)]` -/
def P9703723317413013413.Spec : Prop :=
  ∀ n, P9703723317413013413.a n = A071741 n

theorem P9703723317413013413.correct : P9703723317413013413.Spec := by
  intro n
  simp only [A071741]

end A071741

/-! ## A071741.P16620085384450991725

`Δ[A026034(2*n)]`
-/

namespace A071741.P16620085384450991725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026034 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A071741.P16620085384450991725

namespace A071741

/-- `Δ[A026034(2*n)]` -/
def P16620085384450991725.Spec : Prop :=
  ∀ n, P16620085384450991725.a n = A071741 n

end A071741

/-! ## A071741.P5394289495986284477

`A071729(n)+A001089(n)`
-/

namespace A071741.P5394289495986284477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071729 n + A001089 n

end

end A071741.P5394289495986284477

namespace A071741

/-- `A071729(n)+A001089(n)` -/
def P5394289495986284477.Spec : Prop :=
  ∀ n, P5394289495986284477.a n = A071741 n

end A071741

/-! ## A071741.P12162725283051010894

`Δ[A026012(n)+A000588(n)]`
-/

namespace A071741.P12162725283051010894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026012 n + A000588 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A071741.P12162725283051010894

namespace A071741

/-- `Δ[A026012(n)+A000588(n)]` -/
def P12162725283051010894.Spec : Prop :=
  ∀ n, P12162725283051010894.a n = A071741 n

end A071741

/-! ## A071741.P2189972578161064441

`A070031(n)+A000588(n+1)`
-/

namespace A071741.P2189972578161064441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070031 n + A000588 (n + 1)

end

end A071741.P2189972578161064441

namespace A071741

/-- `A070031(n)+A000588(n+1)` -/
def P2189972578161064441.Spec : Prop :=
  ∀ n, P2189972578161064441.a n = A071741 n

end A071741

/-! ## A071741.P16903367528237944618

`A026029(n+1)-A026029(n)`
-/

namespace A071741.P16903367528237944618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026029 (n + 1) - A026029 n

end

end A071741.P16903367528237944618

namespace A071741

/-- `A026029(n+1)-A026029(n)` -/
def P16903367528237944618.Spec : Prop :=
  ∀ n, P16903367528237944618.a n = A071741 n

theorem P16903367528237944618.correct : P16903367528237944618.Spec := by
  intro n
  simp only [A071741, Nat.add_sub_cancel, A071741.P16903367528237944618.a, A071741.P9703723317413013413.f1, A071741.P9703723317413013413.a, SequenceMachineLib.memo_apply]

end A071741

/-! ## A071741.P17387463838583256751

`A099376(n)+A026026(n+2)`
-/

namespace A071741.P17387463838583256751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099376 n + A026026 (n + 2)

end

end A071741.P17387463838583256751

namespace A071741

/-- `A099376(n)+A026026(n+2)` -/
def P17387463838583256751.Spec : Prop :=
  ∀ n, P17387463838583256751.a n = A071741 n

end A071741

/-! ## A071741.P8485135759585609828

`Δ[A000588(n)+Δ[A000245(n)]]`
-/

namespace A071741.P8485135759585609828
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000245 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000588 n + (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A071741.P8485135759585609828

namespace A071741

/-- `Δ[A000588(n)+Δ[A000245(n)]]` -/
def P8485135759585609828.Spec : Prop :=
  ∀ n, P8485135759585609828.a n = A071741 n

end A071741

/-! ## A071741.P16563482278141549089

`A026034(2*(n+1))-A026034(2*n)`
-/

namespace A071741.P16563482278141549089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026034 (2 * (n + 1)) - A026034 (2 * n)

end

end A071741.P16563482278141549089

namespace A071741

/-- `A026034(2*(n+1))-A026034(2*n)` -/
def P16563482278141549089.Spec : Prop :=
  ∀ n, P16563482278141549089.a n = A071741 n

end A071741

/-! ## A071741.P16711855516392862970

`A000245(n+1)+A099376(n)+A000588(n+1)`
-/

namespace A071741.P16711855516392862970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000245 (n + 1) + (A099376 n + A000588 (n + 1))

end

end A071741.P16711855516392862970

namespace A071741

/-- `A000245(n+1)+A099376(n)+A000588(n+1)` -/
def P16711855516392862970.Spec : Prop :=
  ∀ n, P16711855516392862970.a n = A071741 n

end A071741

/-! ## A071741.P4145585386546180380

`A000245(n+1)+A026013(n+1)-A026016(n+1)`
-/

namespace A071741.P4145585386546180380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000245 (n + 1) + (A026013 (n + 1) - A026016 (n + 1))

end

end A071741.P4145585386546180380

namespace A071741

/-- `A000245(n+1)+A026013(n+1)-A026016(n+1)` -/
def P4145585386546180380.Spec : Prop :=
  ∀ n, P4145585386546180380.a n = A071741 n

end A071741

/-! ## A071741.P10509422485448104313

`A000245(n+1)+A026013(n+1)-A071725(n+1)`
-/

namespace A071741.P10509422485448104313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000245 (n + 1) + (A026013 (n + 1) - A071725 (n + 1))

end

end A071741.P10509422485448104313

namespace A071741

/-- `A000245(n+1)+A026013(n+1)-A071725(n+1)` -/
def P10509422485448104313.Spec : Prop :=
  ∀ n, P10509422485448104313.a n = A071741 n

end A071741

/-! ## A071741.P14622867759457690340

`A026013(n+1)+A071724(n+1)-A071725(n+1)`
-/

namespace A071741.P14622867759457690340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026013 (n + 1) + (A071724 (n + 1) - A071725 (n + 1))

end

end A071741.P14622867759457690340

namespace A071741

/-- `A026013(n+1)+A071724(n+1)-A071725(n+1)` -/
def P14622867759457690340.Spec : Prop :=
  ∀ n, P14622867759457690340.a n = A071741 n

end A071741

/-! ## A071741.P14447503108319221819

`A000344(n+2)-A390965(n)`
-/

namespace A071741.P14447503108319221819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000344 (n + 2) - A390965 n

end

end A071741.P14447503108319221819

namespace A071741

/-- `A000344(n+2)-A390965(n)` -/
def P14447503108319221819.Spec : Prop :=
  ∀ n, P14447503108319221819.a n = A071741 n

end A071741

/-! ## A071741.P7035998056972132835

`Δ[Δ[A071725(n)]]-A071725(n)`
-/

namespace A071741.P7035998056972132835
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071725 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A071725 n

end

end A071741.P7035998056972132835

namespace A071741

/-- `Δ[Δ[A071725(n)]]-A071725(n)` -/
def P7035998056972132835.Spec : Prop :=
  ∀ n, P7035998056972132835.a n = A071741 n

end A071741

/-! ## A071741.P11585852957982872294

`A033434(n+1)-A071736(n+1)`
-/

namespace A071741.P11585852957982872294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033434 (n + 1) - A071736 (n + 1)

end

end A071741.P11585852957982872294

namespace A071741

/-- `A033434(n+1)-A071736(n+1)` -/
def P11585852957982872294.Spec : Prop :=
  ∀ n, P11585852957982872294.a n = A071741 n

end A071741

/-! ## A071741.P4324004979659803330

`Δ[A026016(n+1)]-A026016(n+1)`
-/

namespace A071741.P4324004979659803330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026016 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A026016 (n + 1)

end

end A071741.P4324004979659803330

namespace A071741

/-- `Δ[A026016(n+1)]-A026016(n+1)` -/
def P4324004979659803330.Spec : Prop :=
  ∀ n, P4324004979659803330.a n = A071741 n

end A071741

/-! ## A071741.P13565488137356535478

`Δ[A026012(n+1)]-A071736(n+1)`
-/

namespace A071741.P13565488137356535478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026012 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A071736 (n + 1)

end

end A071741.P13565488137356535478

namespace A071741

/-- `Δ[A026012(n+1)]-A071736(n+1)` -/
def P13565488137356535478.Spec : Prop :=
  ∀ n, P13565488137356535478.a n = A071741 n

end A071741

/-! ## A071741.P17939627041503588745

`A026016(n+2)-2*A026016(n+1)`
-/

namespace A071741.P17939627041503588745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026016 (n + 2) - 2 * A026016 (n + 1)

end

end A071741.P17939627041503588745

namespace A071741

/-- `A026016(n+2)-2*A026016(n+1)` -/
def P17939627041503588745.Spec : Prop :=
  ∀ n, P17939627041503588745.a n = A071741 n

end A071741

/-! ## A071741.P4221098778032953147

`Δ[Δ[A000245(n+1)]]-A071736(n+1)`
-/

namespace A071741.P4221098778032953147
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000245 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A071736 (n + 1)

end

end A071741.P4221098778032953147

namespace A071741

/-- `Δ[Δ[A000245(n+1)]]-A071736(n+1)` -/
def P4221098778032953147.Spec : Prop :=
  ∀ n, P4221098778032953147.a n = A071741 n

end A071741

/-!
# A071742: Expansion of (1+x^4*C)*C, where C = (1-(1-4*x)^(1/2))/(2*x) is g.f. for Catalan numbers, A000108.

The programs for A071742, there is no canonical definition to state claims against.
-/

/-! ## A071742.P13935956894831787324

`A033183(A368098(n))+A000108(n)`
-/

namespace A071742.P13935956894831787324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033183 (A368098 n).toNat + A000108 n

end

end A071742.P13935956894831787324

/-!
# A071743: Expansion of (1+x^4*C)*C^2, where C = (1-(1-4*x)^(1/2))/(2*x) is g.f. for Catalan numbers, A000108.

The programs for A071743, the canonical program `A071743.P394647172679144474` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A071743 has offset 0).

The definition of A071743 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 172 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A071743.P394647172679144474

`Δ[A120588(A289207(n))]+A000108(n+1)`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A071743

/-- `Δ[A120588(A289207(n))]+A000108(n+1)` -/
def P394647172679144474.Spec : Prop :=
  ∀ n, P394647172679144474.a n = A071743 n

theorem P394647172679144474.correct : P394647172679144474.Spec := by
  intro n
  simp only [A071743]

end A071743

/-! ## A071743.P4109043518468146896

`A089408(2*n+3)+Δ[A120588(A289207(n))]`
-/

namespace A071743.P4109043518468146896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120588 (A289207 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089408 (2 * n + 3) + (f1 (n + 1) - f1 n)

end

end A071743.P4109043518468146896

namespace A071743

/-- `A089408(2*n+3)+Δ[A120588(A289207(n))]` -/
def P4109043518468146896.Spec : Prop :=
  ∀ n, P4109043518468146896.a n = A071743 n

end A071743

/-! ## A071743.P11530716969001981126

`Δ[A120588(abs(2-n))+A014137(n)]`
-/

namespace A071743.P11530716969001981126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120588 |2 - (n : ℤ)|.toNat + A014137 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A071743.P11530716969001981126

namespace A071743

/-- `Δ[A120588(abs(2-n))+A014137(n)]` -/
def P11530716969001981126.Spec : Prop :=
  ∀ n, P11530716969001981126.a n = A071743 n

end A071743

/-! ## A071743.P15044530875706636022

`Δ[A120588(A289207(n))+A014138(n)]`
-/

namespace A071743.P15044530875706636022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120588 (A289207 n).toNat + A014138 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A071743.P15044530875706636022

namespace A071743

/-- `Δ[A120588(A289207(n))+A014138(n)]` -/
def P15044530875706636022.Spec : Prop :=
  ∀ n, P15044530875706636022.a n = A071743 n

end A071743

/-!
# A071744: Expansion of (1+x^4*C)*C^3, where C = (1-(1-4*x)^(1/2))/(2*x) is g.f. for Catalan numbers, A000108.

The programs for A071744, the canonical program `A071744.P1175977613929385666` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A071744 has offset 0).

The definition of A071744 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A071744.P1175977613929385666

`A099376(n)+A071747(n)`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A071744

/-- `A099376(n)+A071747(n)` -/
def P1175977613929385666.Spec : Prop :=
  ∀ n, P1175977613929385666.a n = A071744 n

theorem P1175977613929385666.correct : P1175977613929385666.Spec := by
  intro n
  simp only [A071744]

end A071744

/-! ## A071744.P1759732653035606159

`A071747(n)+Δ[A279557(n)]`
-/

namespace A071744.P1759732653035606159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279557 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071747 n + (f1 (n + 1) - f1 n)

end

end A071744.P1759732653035606159

namespace A071744

/-- `A071747(n)+Δ[A279557(n)]` -/
def P1759732653035606159.Spec : Prop :=
  ∀ n, P1759732653035606159.a n = A071744 n

end A071744

/-! ## A071744.P6814653645088805877

`A071718(n)+A071747(n)-A071721(n)`
-/

namespace A071744.P6814653645088805877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071718 n + (A071747 n - A071721 n)

end

end A071744.P6814653645088805877

namespace A071744

/-- `A071718(n)+A071747(n)-A071721(n)` -/
def P6814653645088805877.Spec : Prop :=
  ∀ n, P6814653645088805877.a n = A071744 n

end A071744

/-! ## A071744.P8138051636960422988

`A071728(n)+A071747(n)-A071731(n)`
-/

namespace A071744.P8138051636960422988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071728 n + (A071747 n - A071731 n)

end

end A071744.P8138051636960422988

namespace A071744

/-- `A071728(n)+A071747(n)-A071731(n)` -/
def P8138051636960422988.Spec : Prop :=
  ∀ n, P8138051636960422988.a n = A071744 n

end A071744

/-! ## A071744.P1479887771093929527

`A071732(n)+A071747(n)-A071735(n)`
-/

namespace A071744.P1479887771093929527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071732 n + (A071747 n - A071735 n)

end

end A071744.P1479887771093929527

namespace A071744

/-- `A071732(n)+A071747(n)-A071735(n)` -/
def P1479887771093929527.Spec : Prop :=
  ∀ n, P1479887771093929527.a n = A071744 n

end A071744

/-!
# A071745: Expansion of (1+x^4*C)*C^4, where C = (1-(1-4*x)^(1/2))/(2*x) is g.f. for Catalan numbers, A000108.

The programs for A071745, the canonical program `A071745.P1552346463266665555` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A071745 has offset 0).

The definition of A071745 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 170 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A071745.P15180689976613887361

`Δ[A071744(n)-∑[A071742(n)]]`
-/

namespace A071745.P15180689976613887361
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071742 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071744 n - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A071745.P15180689976613887361

namespace A071745

/-- `Δ[A071744(n)-∑[A071742(n)]]` -/
def P15180689976613887361.Spec : Prop :=
  ∀ n, P15180689976613887361.a n = A071745 n

end A071745

/-! ## A071745.P9787861646864663660

`Δ[A071744(n)]-A071742(n+1)`
-/

namespace A071745.P9787861646864663660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071744 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A071742 (n + 1)

end

end A071745.P9787861646864663660

namespace A071745

/-- `Δ[A071744(n)]-A071742(n+1)` -/
def P9787861646864663660.Spec : Prop :=
  ∀ n, P9787861646864663660.a n = A071745 n

end A071745

/-! ## A071745.P9375306055978109058

`A071744(n+1)-A071743(n+1)`
-/

namespace A071745.P9375306055978109058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071744 (n + 1) - A071743 (n + 1)

end

end A071745.P9375306055978109058

namespace A071745

/-- `A071744(n+1)-A071743(n+1)` -/
def P9375306055978109058.Spec : Prop :=
  ∀ n, P9375306055978109058.a n = A071745 n

end A071745

/-! ## A071745.P1552346463266665555

`A071719(n)+A071748(n)-A071722(n)`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A071745

/-- `A071719(n)+A071748(n)-A071722(n)` -/
def P1552346463266665555.Spec : Prop :=
  ∀ n, P1552346463266665555.a n = A071745 n

theorem P1552346463266665555.correct : P1552346463266665555.Spec := by
  intro n
  simp only [A071745]

end A071745

/-! ## A071745.P17580968870833760999

`A071729(n)+A071748(n)-A071732(n)`
-/

namespace A071745.P17580968870833760999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071729 n + (A071748 n - A071732 n)

end

end A071745.P17580968870833760999

namespace A071745

/-- `A071729(n)+A071748(n)-A071732(n)` -/
def P17580968870833760999.Spec : Prop :=
  ∀ n, P17580968870833760999.a n = A071745 n

end A071745

/-!
# A071746: a(n) = p(7n+5)/7 where p(k) denotes the k-th partition number.

The programs for A071746, there is no canonical definition to state claims against.
-/

/-! ## A071746.P4608280184858770016

`A213261(n)/7`
-/

namespace A071746.P4608280184858770016
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A213261 n : ℚ) / 7

end

end A071746.P4608280184858770016

/-! ## A071746.P3236642317460716780

`1/7*A000041(7*n+5)`
-/

namespace A071746.P3236642317460716780
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 7 * (A000041 (7 * n + 5) : ℚ)

end

end A071746.P3236642317460716780

/-! ## A071746.P14221787679595371657

`A000041(A017041(n))/7`
-/

namespace A071746.P14221787679595371657
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000041 (A017041 n).toNat : ℚ) / 7

end

end A071746.P14221787679595371657

/-! ## A071746.P1210702704366461407

`A000041(7*n+5)/7`
-/

namespace A071746.P1210702704366461407
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000041 (7 * n + 5) : ℚ) / 7

end

end A071746.P1210702704366461407

/-! ## A071746.P16354660131418146962

`record[ratio[A213261(A142150(n))]]`
-/

namespace A071746.P16354660131418146962
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213261 (A142150 n).toNat

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A071746.P16354660131418146962

/-! ## A071746.P8098215439063254144

`A003964(A031388(n+1))/7`
-/

namespace A071746.P8098215439063254144
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003964 (A031388 (n + 1)).toNat : ℚ) / 7

end

end A071746.P8098215439063254144

/-! ## A071746.P13377916187885775534

`A299200(A031381(n+1))/7`
-/

namespace A071746.P13377916187885775534
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A299200 (A031381 (n + 1)).toNat : ℚ) / 7

end

end A071746.P13377916187885775534

/-! ## A071746.P5931570650843730096

`A363239(A017041(n))`
-/

namespace A071746.P5931570650843730096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363239 (A017041 n).toNat

end

end A071746.P5931570650843730096

/-!
# A071747: Expansion of (1+x^4*C^2)*C^2, where C = (1-(1-4*x)^(1/2))/(2*x) is g.f. for Catalan numbers, A000108.

The programs for A071747, the canonical program `A071747.P16063353787672862217` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A071747 has offset 0).

The definition of A071747 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 172 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A071747.P16063353787672862217

`A071731(A289207(n+1))+A000245(n)`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A071747

/-- `A071731(A289207(n+1))+A000245(n)` -/
def P16063353787672862217.Spec : Prop :=
  ∀ n, P16063353787672862217.a n = A071747 n

theorem P16063353787672862217.correct : P16063353787672862217.Spec := by
  intro n
  simp only [A071747]

end A071747

/-! ## A071747.P1048558332415865282

`A000108(n+1)+A071727(n)-A071742(n+1)`
-/

namespace A071747.P1048558332415865282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (n + 1) + (A071727 n - A071742 (n + 1))

end

end A071747.P1048558332415865282

namespace A071747

/-- `A000108(n+1)+A071727(n)-A071742(n+1)` -/
def P1048558332415865282.Spec : Prop :=
  ∀ n, P1048558332415865282.a n = A071747 n

end A071747

/-! ## A071747.P6073249755781041107

`A071744(n)-A099376(n)`
-/

namespace A071747.P6073249755781041107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071744 n - A099376 n

end

end A071747.P6073249755781041107

namespace A071747

/-- `A071744(n)-A099376(n)` -/
def P6073249755781041107.Spec : Prop :=
  ∀ n, P6073249755781041107.a n = A071747 n

end A071747

/-! ## A071747.P11473897414425751193

`A071744(n)-Δ[A279557(n)]`
-/

namespace A071747.P11473897414425751193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279557 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071744 n - (f1 (n + 1) - f1 n)

end

end A071747.P11473897414425751193

namespace A071747

/-- `A071744(n)-Δ[A279557(n)]` -/
def P11473897414425751193.Spec : Prop :=
  ∀ n, P11473897414425751193.a n = A071747 n

end A071747

/-! ## A071747.P17308581221604408088

`A071721(n)+A071744(n)-A071718(n)`
-/

namespace A071747.P17308581221604408088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071721 n + (A071744 n - A071718 n)

end

end A071747.P17308581221604408088

namespace A071747

/-- `A071721(n)+A071744(n)-A071718(n)` -/
def P17308581221604408088.Spec : Prop :=
  ∀ n, P17308581221604408088.a n = A071747 n

end A071747

/-! ## A071747.P2617913908441331854

`A000108(n+1)+A071744(n)-A071724(n+1)`
-/

namespace A071747.P2617913908441331854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (n + 1) + (A071744 n - A071724 (n + 1))

end

end A071747.P2617913908441331854

namespace A071747

/-- `A000108(n+1)+A071744(n)-A071724(n+1)` -/
def P2617913908441331854.Spec : Prop :=
  ∀ n, P2617913908441331854.a n = A071747 n

end A071747

/-! ## A071747.P12142402351524673008

`A071727(n)-A059365(A238531(n))`
-/

namespace A071747.P12142402351524673008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071727 n - A059365 (A238531 n).toNat

end

end A071747.P12142402351524673008

namespace A071747

/-- `A071727(n)-A059365(A238531(n))` -/
def P12142402351524673008.Spec : Prop :=
  ∀ n, P12142402351524673008.a n = A071747 n

end A071747

/-!
# A071748: Expansion of (1+x^4*C^2)*C^3, where C = (1-(1-4*x)^(1/2))/(2*x) is g.f. for Catalan numbers, A000108.

The programs for A071748, the canonical program `A071748.P5053261563516852531` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A071748 has offset 0).

The definition of A071748 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A071748.P12129878464337762848

`A099376(n)+A071751(n)`
-/

namespace A071748.P12129878464337762848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099376 n + A071751 n

end

end A071748.P12129878464337762848

namespace A071748

/-- `A099376(n)+A071751(n)` -/
def P12129878464337762848.Spec : Prop :=
  ∀ n, P12129878464337762848.a n = A071748 n

end A071748

/-! ## A071748.P17331012850065201696

`A071751(n)+Δ[A279557(n)]`
-/

namespace A071748.P17331012850065201696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279557 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071751 n + (f1 (n + 1) - f1 n)

end

end A071748.P17331012850065201696

namespace A071748

/-- `A071751(n)+Δ[A279557(n)]` -/
def P17331012850065201696.Spec : Prop :=
  ∀ n, P17331012850065201696.a n = A071748 n

end A071748

/-! ## A071748.P8506859480704420947

`A071728(n)-A000245(A289207(n))`
-/

namespace A071748.P8506859480704420947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071728 n - A000245 (A289207 n).toNat

end

end A071748.P8506859480704420947

namespace A071748

/-- `A071728(n)-A000245(A289207(n))` -/
def P8506859480704420947.Spec : Prop :=
  ∀ n, P8506859480704420947.a n = A071748 n

end A071748

/-! ## A071748.P2002450723200471619

`A071718(n)+A071751(n)-A071721(n)`
-/

namespace A071748.P2002450723200471619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071718 n + (A071751 n - A071721 n)

end

end A071748.P2002450723200471619

namespace A071748

/-- `A071718(n)+A071751(n)-A071721(n)` -/
def P2002450723200471619.Spec : Prop :=
  ∀ n, P2002450723200471619.a n = A071748 n

end A071748

/-! ## A071748.P4283335654852153888

`A071728(n)+A071751(n)-A071731(n)`
-/

namespace A071748.P4283335654852153888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071728 n + (A071751 n - A071731 n)

end

end A071748.P4283335654852153888

namespace A071748

/-- `A071728(n)+A071751(n)-A071731(n)` -/
def P4283335654852153888.Spec : Prop :=
  ∀ n, P4283335654852153888.a n = A071748 n

end A071748

/-! ## A071748.P5053261563516852531

`A000108(n+1)+A071728(n)-A071727(n)`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A071748

/-- `A000108(n+1)+A071728(n)-A071727(n)` -/
def P5053261563516852531.Spec : Prop :=
  ∀ n, P5053261563516852531.a n = A071748 n

theorem P5053261563516852531.correct : P5053261563516852531.Spec := by
  intro n
  simp only [A071748]

end A071748

/-! ## A071748.P16195357681931473648

`A071724(n+1)+A071751(n)-A000108(n+1)`
-/

namespace A071748.P16195357681931473648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071724 (n + 1) + (A071751 n - A000108 (n + 1))

end

end A071748.P16195357681931473648

namespace A071748

/-- `A071724(n+1)+A071751(n)-A000108(n+1)` -/
def P16195357681931473648.Spec : Prop :=
  ∀ n, P16195357681931473648.a n = A071748 n

end A071748

/-!
# A071749: Expansion of (1+x^4*C^2)*C^4, where C = (1-(1-4*x)^(1/2))/(2*x) is g.f. for Catalan numbers, A000108.

The programs for A071749, the canonical program `A071749.P11877832049882480316` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A071749 has offset 0).

The definition of A071749 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 170 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A071749.P11877832049882480316

`Δ[A071728(n)]-A071717(n)`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A071749

/-- `Δ[A071728(n)]-A071717(n)` -/
def P11877832049882480316.Spec : Prop :=
  ∀ n, P11877832049882480316.a n = A071749 n

theorem P11877832049882480316.correct : P11877832049882480316.Spec := by
  intro n
  simp only [A071749]

end A071749

/-! ## A071749.P15587072072041888118

`Δ[A071748(n)]-A071727(n)`
-/

namespace A071749.P15587072072041888118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071748 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A071727 n

end

end A071749.P15587072072041888118

namespace A071749

/-- `Δ[A071748(n)]-A071727(n)` -/
def P15587072072041888118.Spec : Prop :=
  ∀ n, P15587072072041888118.a n = A071749 n

end A071749

/-! ## A071749.P5640643573075133031

`A071752(n)-A115144(n+4)`
-/

namespace A071749.P5640643573075133031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071752 n - A115144 (n + 4)

end

end A071749.P5640643573075133031

namespace A071749

/-- `A071752(n)-A115144(n+4)` -/
def P5640643573075133031.Spec : Prop :=
  ∀ n, P5640643573075133031.a n = A071749 n

end A071749

/-! ## A071749.P4757034626289767343

`A071748(n+1)-A071747(n+1)`
-/

namespace A071749.P4757034626289767343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071748 (n + 1) - A071747 (n + 1)

end

end A071749.P4757034626289767343

namespace A071749

/-- `A071748(n+1)-A071747(n+1)` -/
def P4757034626289767343.Spec : Prop :=
  ∀ n, P4757034626289767343.a n = A071749 n

end A071749

/-! ## A071749.P2804627640348529241

`A071729(n)-A099376(A289207(n))`
-/

namespace A071749.P2804627640348529241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071729 n - A099376 (A289207 n).toNat

end

end A071749.P2804627640348529241

namespace A071749

/-- `A071729(n)-A099376(A289207(n))` -/
def P2804627640348529241.Spec : Prop :=
  ∀ n, P2804627640348529241.a n = A071749 n

end A071749

/-! ## A071749.P13667577662680898436

`A000108(n+1)+A071729(n)-A071731(n)`
-/

namespace A071749.P13667577662680898436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (n + 1) + (A071729 n - A071731 n)

end

end A071749.P13667577662680898436

namespace A071749

/-- `A000108(n+1)+A071729(n)-A071731(n)` -/
def P13667577662680898436.Spec : Prop :=
  ∀ n, P13667577662680898436.a n = A071749 n

end A071749

/-! ## A071749.P6714978421504911124

`A071748(n+1)-(A071748(n)+A071727(n))`
-/

namespace A071749.P6714978421504911124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071748 (n + 1) - (A071748 n + A071727 n)

end

end A071749.P6714978421504911124

namespace A071749

/-- `A071748(n+1)-(A071748(n)+A071727(n))` -/
def P6714978421504911124.Spec : Prop :=
  ∀ n, P6714978421504911124.a n = A071749 n

end A071749

/-!
# A071750: Numbers k such that 13 divides p(k), the k-th partition number, A000041(k).

The programs for A071750, there is no canonical definition to state claims against.
-/

/-! ## A071750.P12398166677457418606

`eq[0, A000041(n)%13]`
-/

namespace A071750.P12398166677457418606
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000041 n) 13

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A071750.P12398166677457418606

/-! ## A071750.P2356374120576862205

`eq[12, A000065(n)%13]`
-/

namespace A071750.P2356374120576862205
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000065 n) 13

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A071750.P2356374120576862205

/-! ## A071750.P5374521280282877298

`eq[0, A299473(n)%13]`
-/

namespace A071750.P5374521280282877298
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A299473 n) 13

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A071750.P5374521280282877298

/-! ## A071750.P16498601268276132024

`eq[0, A035363(A005843(n))%13]`
-/

namespace A071750.P16498601268276132024
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A035363 (A005843 n).toNat) 13

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A071750.P16498601268276132024

/-! ## A071750.P18283121422516146960

`eq[13, gcd(13, A001255(n))]`
-/

namespace A071750.P18283121422516146960
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 13 (A001255 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A071750.P18283121422516146960

/-!
# A071751: Expansion of (1+x^4*C^3)*C^2, where C = (1-(1-4*x)^(1/2))/(2*x) is g.f. for Catalan numbers, A000108.

The programs for A071751, the canonical program `A071751.P10296614711207118545` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A071751 has offset 0).

The definition of A071751 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A071751.P10296614711207118545

`A071748(n)-A099376(n)`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A071751

/-- `A071748(n)-A099376(n)` -/
def P10296614711207118545.Spec : Prop :=
  ∀ n, P10296614711207118545.a n = A071751 n

theorem P10296614711207118545.correct : P10296614711207118545.Spec := by
  intro n
  simp only [A071751]

end A071751

/-! ## A071751.P3752977229639691511

`A071748(n)-Δ[A279557(n)]`
-/

namespace A071751.P3752977229639691511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279557 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071748 n - (f1 (n + 1) - f1 n)

end

end A071751.P3752977229639691511

namespace A071751

/-- `A071748(n)-Δ[A279557(n)]` -/
def P3752977229639691511.Spec : Prop :=
  ∀ n, P3752977229639691511.a n = A071751 n

end A071751

/-! ## A071751.P16110855699102125453

`A071731(n)-A000245(A289207(n))`
-/

namespace A071751.P16110855699102125453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071731 n - A000245 (A289207 n).toNat

end

end A071751.P16110855699102125453

namespace A071751

/-- `A071731(n)-A000245(A289207(n))` -/
def P16110855699102125453.Spec : Prop :=
  ∀ n, P16110855699102125453.a n = A071751 n

end A071751

/-! ## A071751.P15612873775281853443

`A071721(n)+A071748(n)-A071718(n)`
-/

namespace A071751.P15612873775281853443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071721 n + (A071748 n - A071718 n)

end

end A071751.P15612873775281853443

namespace A071751

/-- `A071721(n)+A071748(n)-A071718(n)` -/
def P15612873775281853443.Spec : Prop :=
  ∀ n, P15612873775281853443.a n = A071751 n

end A071751

/-! ## A071751.P1754949815279370403

`A071731(n)+A071748(n)-A071728(n)`
-/

namespace A071751.P1754949815279370403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071731 n + (A071748 n - A071728 n)

end

end A071751.P1754949815279370403

namespace A071751

/-- `A071731(n)+A071748(n)-A071728(n)` -/
def P1754949815279370403.Spec : Prop :=
  ∀ n, P1754949815279370403.a n = A071751 n

end A071751

/-! ## A071751.P6494015990825499126

`A000108(n+1)+A071731(n)-A071727(n)`
-/

namespace A071751.P6494015990825499126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (n + 1) + (A071731 n - A071727 n)

end

end A071751.P6494015990825499126

namespace A071751

/-- `A000108(n+1)+A071731(n)-A071727(n)` -/
def P6494015990825499126.Spec : Prop :=
  ∀ n, P6494015990825499126.a n = A071751 n

end A071751

/-! ## A071751.P15645839614857260739

`A000108(n+1)+A071748(n)-A071724(n+1)`
-/

namespace A071751.P15645839614857260739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (n + 1) + (A071748 n - A071724 (n + 1))

end

end A071751.P15645839614857260739

namespace A071751

/-- `A000108(n+1)+A071748(n)-A071724(n+1)` -/
def P15645839614857260739.Spec : Prop :=
  ∀ n, P15645839614857260739.a n = A071751 n

end A071751

/-!
# A071752: Expansion of (1+x^4*C^3)*C^3, where C = (1-(1-4*x)^(1/2))/(2*x) is g.f. for Catalan numbers, A000108.

The programs for A071752, the canonical program `A071752.P14853445562846689292` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A071752 has offset 0).

The definition of A071752 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A071752.P17560193120402976133

`A099376(n)+A071755(n)`
-/

namespace A071752.P17560193120402976133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099376 n + A071755 n

end

end A071752.P17560193120402976133

namespace A071752

/-- `A099376(n)+A071755(n)` -/
def P17560193120402976133.Spec : Prop :=
  ∀ n, P17560193120402976133.a n = A071752 n

end A071752

/-! ## A071752.P9824103933700842037

`A071755(n)+Δ[A279557(n)]`
-/

namespace A071752.P9824103933700842037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279557 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071755 n + (f1 (n + 1) - f1 n)

end

end A071752.P9824103933700842037

namespace A071752

/-- `A071755(n)+Δ[A279557(n)]` -/
def P9824103933700842037.Spec : Prop :=
  ∀ n, P9824103933700842037.a n = A071752 n

end A071752

/-! ## A071752.P14853445562846689292

`A071751(n+1)-A071731(n)`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A071752

/-- `A071751(n+1)-A071731(n)` -/
def P14853445562846689292.Spec : Prop :=
  ∀ n, P14853445562846689292.a n = A071752 n

theorem P14853445562846689292.correct : P14853445562846689292.Spec := by
  intro n
  simp only [A071752]

end A071752

/-! ## A071752.P3241106304293236971

`A071748(n)+A000588(A289207(n))`
-/

namespace A071752.P3241106304293236971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071748 n + A000588 (A289207 n).toNat

end

end A071752.P3241106304293236971

namespace A071752

/-- `A071748(n)+A000588(A289207(n))` -/
def P3241106304293236971.Spec : Prop :=
  ∀ n, P3241106304293236971.a n = A071752 n

end A071752

/-! ## A071752.P14718148710750775683

`A071732(n)-A099376(A289207(n))`
-/

namespace A071752.P14718148710750775683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071732 n - A099376 (A289207 n).toNat

end

end A071752.P14718148710750775683

namespace A071752

/-- `A071732(n)-A099376(A289207(n))` -/
def P14718148710750775683.Spec : Prop :=
  ∀ n, P14718148710750775683.a n = A071752 n

end A071752

/-! ## A071752.P7108620847445424120

`A071718(n)+A071755(n)-A071721(n)`
-/

namespace A071752.P7108620847445424120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071718 n + (A071755 n - A071721 n)

end

end A071752.P7108620847445424120

namespace A071752

/-- `A071718(n)+A071755(n)-A071721(n)` -/
def P7108620847445424120.Spec : Prop :=
  ∀ n, P7108620847445424120.a n = A071752 n

end A071752

/-! ## A071752.P1352246806822985312

`A071724(n+1)+A071755(n)-A000108(n+1)`
-/

namespace A071752.P1352246806822985312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071724 (n + 1) + (A071755 n - A000108 (n + 1))

end

end A071752.P1352246806822985312

namespace A071752

/-- `A071724(n+1)+A071755(n)-A000108(n+1)` -/
def P1352246806822985312.Spec : Prop :=
  ∀ n, P1352246806822985312.a n = A071752 n

end A071752

/-!
# A071753: Expansion of (1+x^4*C^3)*C^4, where C = (1-(1-4*x)^(1/2))/(2*x) is g.f. for Catalan numbers, A000108.

The programs for A071753, the canonical program `A071753.P30936712519136142` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A071753 has offset 0).

The definition of A071753 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 170 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A071753.P8822860772865434617

`Δ[A071732(n)-A068875(n)]`
-/

namespace A071753.P8822860772865434617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071732 n - A068875 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A071753.P8822860772865434617

namespace A071753

/-- `Δ[A071732(n)-A068875(n)]` -/
def P8822860772865434617.Spec : Prop :=
  ∀ n, P8822860772865434617.a n = A071753 n

end A071753

/-! ## A071753.P14781396626275378221

`Δ[A071732(n)]-A071721(n)`
-/

namespace A071753.P14781396626275378221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071732 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A071721 n

end

end A071753.P14781396626275378221

namespace A071753

/-- `Δ[A071732(n)]-A071721(n)` -/
def P14781396626275378221.Spec : Prop :=
  ∀ n, P14781396626275378221.a n = A071753 n

end A071753

/-! ## A071753.P7083090480701066071

`Δ[A071752(n)]-A071731(n)`
-/

namespace A071753.P7083090480701066071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071752 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A071731 n

end

end A071753.P7083090480701066071

namespace A071753

/-- `Δ[A071752(n)]-A071731(n)` -/
def P7083090480701066071.Spec : Prop :=
  ∀ n, P7083090480701066071.a n = A071753 n

end A071753

/-! ## A071753.P30936712519136142

`A002057(n)+A000588(abs(1-n))`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A071753

/-- `A002057(n)+A000588(abs(1-n))` -/
def P30936712519136142.Spec : Prop :=
  ∀ n, P30936712519136142.a n = A071753 n

theorem P30936712519136142.correct : P30936712519136142.Spec := by
  intro n
  simp only [A071753]

end A071753

/-! ## A071753.P1821465928868991497

`A071752(n+1)-A071751(n+1)`
-/

namespace A071753.P1821465928868991497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071752 (n + 1) - A071751 (n + 1)

end

end A071753.P1821465928868991497

namespace A071753

/-- `A071752(n+1)-A071751(n+1)` -/
def P1821465928868991497.Spec : Prop :=
  ∀ n, P1821465928868991497.a n = A071753 n

end A071753

/-!
# A071754: a(n) = Sum_{k=0..n} pp(k) where pp(k) is the parity of p(k) the k-th partition number = A040051(k).

The programs for A071754, there is no canonical definition to state claims against.
-/

/-! ## A071754.P15232928594911358469

`∑[A040051(n)]`
-/

namespace A071754.P15232928594911358469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040051 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071754.P15232928594911358469

/-! ## A071754.P10108000646282179478

`∑[A000700(n)%2]`
-/

namespace A071754.P10108000646282179478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000700 n) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071754.P10108000646282179478

/-! ## A071754.P12544902638123123837

`∑[A132969(n)%2]`
-/

namespace A071754.P12544902638123123837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A132969 n) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071754.P12544902638123123837

/-! ## A071754.P18301924108660217980

`∑[and(1, A081362(n))]`
-/

namespace A071754.P18301924108660217980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A081362 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071754.P18301924108660217980

/-! ## A071754.P7007009762198304978

`∑[and(1, A178743(n))]`
-/

namespace A071754.P7007009762198304978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A178743 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071754.P7007009762198304978

/-! ## A071754.P9608055673443483039

`∑[and(1, A260221(n))]`
-/

namespace A071754.P9608055673443483039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A260221 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071754.P9608055673443483039

/-! ## A071754.P10232145097112461419

`1-A087177(n)+n`
-/

namespace A071754.P10232145097112461419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A087177 n + (n : ℤ)

end

end A071754.P10232145097112461419

/-! ## A071754.P14032688174849487198

`∑[char[A052002(n+1)]]`
-/

namespace A071754.P14032688174849487198
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052002 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071754.P14032688174849487198

/-! ## A071754.P6842755585356467757

`∑[char[eq[0, A278478(n)]]]`
-/

namespace A071754.P6842755585356467757
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278478 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f3 j : ℤ) = f4 j) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071754.P6842755585356467757

/-! ## A071754.P5766960533569803218

`∑[1-round(atan(A355676(n)))]`
-/

namespace A071754.P5766960533569803218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - SequenceMachineLib.roundAway (Real.arctan (A355676 n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071754.P5766960533569803218

/-! ## A071754.P9636732628044192624

`∑[1-char[A001560(n+1)]]`
-/

namespace A071754.P9636732628044192624
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001560 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071754.P9636732628044192624

/-! ## A071754.P15740389556005778348

`∑[A000041(n)%2]`
-/

namespace A071754.P15740389556005778348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000041 n) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071754.P15740389556005778348

/-! ## A071754.P10081956813204419505

`∑[and(1, ∑[A002865(n)])]`
-/

namespace A071754.P10081956813204419505
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071754.P10081956813204419505

/-! ## A071754.P18155423331866406028

`∑[2-gcd(2, A000041(2*n-n))]`
-/

namespace A071754.P18155423331866406028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (Int.gcd 2 (A000041 (2 * n - n)) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071754.P18155423331866406028

/-! ## A071754.P6460963343132175530

`∑[and(1, A295341(n)+A000726(n))]`
-/

namespace A071754.P6460963343132175530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A295341 n + A000726 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071754.P6460963343132175530

/-! ## A071754.P16288367672739114790

`1-∑[A000045(and(1, 1-A000041(n)))]+n`
-/

namespace A071754.P16288367672739114790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (Int.land 1 (1 - A000041 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A071754.P16288367672739114790

/-! ## A071754.P7559517939560278422

`∑[and(1, A139582(n)/2)]`
-/

namespace A071754.P7559517939560278422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (SequenceMachineLib.roundAway ((A139582 n : ℚ) / 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071754.P7559517939560278422

/-! ## A071754.P8321418819255127215

`∑[A000035(A108802(2*n))]`
-/

namespace A071754.P8321418819255127215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A108802 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071754.P8321418819255127215

/-! ## A071754.P7932657265704935623

`∑[and(1, A035363(2*n))]`
-/

namespace A071754.P7932657265704935623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A035363 (2 * n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071754.P7932657265704935623

/-! ## A071754.P8039943528073782110

`∑[and(1, A022661(n))]`
-/

namespace A071754.P8039943528073782110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A022661 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071754.P8039943528073782110

/-!
# A071755: Expansion of (1+x^4*C^4)*C^2, where C = (1-(1-4*x)^(1/2))/(2*x) is g.f. for Catalan numbers, A000108.

The programs for A071755, the canonical program `A071755.P6343348831511308488` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A071755 has offset 0).

The definition of A071755 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A071755.P6343348831511308488

`A071752(n)-A099376(n)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A071755

/-- `A071752(n)-A099376(n)` -/
def P6343348831511308488.Spec : Prop :=
  ∀ n, P6343348831511308488.a n = A071755 n

theorem P6343348831511308488.correct : P6343348831511308488.Spec := by
  intro n
  simp only [A071755]

end A071755

/-! ## A071755.P1933662256963791958

`A071752(n)-Δ[A279557(n)]`
-/

namespace A071755.P1933662256963791958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279557 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071752 n - (f1 (n + 1) - f1 n)

end

end A071755.P1933662256963791958

namespace A071755

/-- `A071752(n)-Δ[A279557(n)]` -/
def P1933662256963791958.Spec : Prop :=
  ∀ n, P1933662256963791958.a n = A071755 n

end A071755

/-! ## A071755.P10427391003619602662

`A071751(n+1)-A071728(n)`
-/

namespace A071755.P10427391003619602662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071751 (n + 1) - A071728 n

end

end A071755.P10427391003619602662

namespace A071755

/-- `A071751(n+1)-A071728(n)` -/
def P10427391003619602662.Spec : Prop :=
  ∀ n, P10427391003619602662.a n = A071755 n

end A071755

/-! ## A071755.P3621717445183060650

`abs(A126079(n+2)-A120589(n))`
-/

namespace A071755.P3621717445183060650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A126079 (n + 2) - A120589 n|

end

end A071755.P3621717445183060650

namespace A071755

/-- `abs(A126079(n+2)-A120589(n))` -/
def P3621717445183060650.Spec : Prop :=
  ∀ n, P3621717445183060650.a n = A071755 n

end A071755

/-! ## A071755.P13306043767131116110

`A000108(n)+A071752(n)-A026012(n)`
-/

namespace A071755.P13306043767131116110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n + (A071752 n - A026012 n)

end

end A071755.P13306043767131116110

namespace A071755

/-- `A000108(n)+A071752(n)-A026012(n)` -/
def P13306043767131116110.Spec : Prop :=
  ∀ n, P13306043767131116110.a n = A071755 n

end A071755

/-! ## A071755.P8278238039288196422

`A000108(n+1)+A071752(n)-A071724(n+1)`
-/

namespace A071755.P8278238039288196422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (n + 1) + (A071752 n - A071724 (n + 1))

end

end A071755.P8278238039288196422

namespace A071755

/-- `A000108(n+1)+A071752(n)-A071724(n+1)` -/
def P8278238039288196422.Spec : Prop :=
  ∀ n, P8278238039288196422.a n = A071755 n

end A071755

/-! ## A071755.P12969512887469653755

`A071752(n)-(A002420(n+2)+A000108(n+2))`
-/

namespace A071755.P12969512887469653755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071752 n - (A002420 (n + 2) + A000108 (n + 2))

end

end A071755.P12969512887469653755

namespace A071755

/-- `A071752(n)-(A002420(n+2)+A000108(n+2))` -/
def P12969512887469653755.Spec : Prop :=
  ∀ n, P12969512887469653755.a n = A071755 n

end A071755

/-! ## A071755.P11837633500728592835

`A071732(n)-(A099376(n)+A099376(A289207(n)))`
-/

namespace A071755.P11837633500728592835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071732 n - (A099376 n + A099376 (A289207 n).toNat)

end

end A071755.P11837633500728592835

namespace A071755

/-- `A071732(n)-(A099376(n)+A099376(A289207(n)))` -/
def P11837633500728592835.Spec : Prop :=
  ∀ n, P11837633500728592835.a n = A071755 n

end A071755

/-!
# A071756: Expansion of (1+x^4*C^4)*C^3, where C = (1-(1-4*x)^(1/2))/(2*x) is g.f. for Catalan numbers, A000108.

The programs for A071756, the canonical program `A071756.P14006536037210745974` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A071756 has offset 0).

The definition of A071756 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A071756.P14006536037210745974

`A071739(n)+Δ[A071738(n)]`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A071756

/-- `A071739(n)+Δ[A071738(n)]` -/
def P14006536037210745974.Spec : Prop :=
  ∀ n, P14006536037210745974.a n = A071756 n

theorem P14006536037210745974.correct : P14006536037210745974.Spec := by
  intro n
  simp only [A071756]

end A071756

/-! ## A071756.P16047115054507201649

`2*A071739(n)-A120588(n)`
-/

namespace A071756.P16047115054507201649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A071739 n - A120588 n

end

end A071756.P16047115054507201649

namespace A071756

/-- `2*A071739(n)-A120588(n)` -/
def P16047115054507201649.Spec : Prop :=
  ∀ n, P16047115054507201649.a n = A071756 n

end A071756

/-! ## A071756.P8612960874572290561

`A120588(n)+Δ[2*A071738(n)]`
-/

namespace A071756.P8612960874572290561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A071738 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120588 n + (f1 (n + 1) - f1 n)

end

end A071756.P8612960874572290561

namespace A071756

/-- `A120588(n)+Δ[2*A071738(n)]` -/
def P8612960874572290561.Spec : Prop :=
  ∀ n, P8612960874572290561.a n = A071756 n

end A071756

/-! ## A071756.P4438138238133811748

`A000588(abs(1-n))+A000245(n+1)`
-/

namespace A071756.P4438138238133811748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000588 |1 - (n : ℤ)|.toNat + A000245 (n + 1)

end

end A071756.P4438138238133811748

namespace A071756

/-- `A000588(abs(1-n))+A000245(n+1)` -/
def P4438138238133811748.Spec : Prop :=
  ∀ n, P4438138238133811748.a n = A071756 n

end A071756

/-! ## A071756.P10608183629688204794

`A026008(2*n+1)+A000588(abs(1-n))`
-/

namespace A071756.P10608183629688204794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026008 (2 * n + 1) + A000588 |1 - (n : ℤ)|.toNat

end

end A071756.P10608183629688204794

namespace A071756

/-- `A026008(2*n+1)+A000588(abs(1-n))` -/
def P10608183629688204794.Spec : Prop :=
  ∀ n, P10608183629688204794.a n = A071756 n

end A071756

/-! ## A071756.P14365519118107858712

`A071752(n+1)-(A071729(n)+A000108(n+1))`
-/

namespace A071756.P14365519118107858712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071752 (n + 1) - (A071729 n + A000108 (n + 1))

end

end A071756.P14365519118107858712

namespace A071756

/-- `A071752(n+1)-(A071729(n)+A000108(n+1))` -/
def P14365519118107858712.Spec : Prop :=
  ∀ n, P14365519118107858712.a n = A071756 n

end A071756

/-!
# A071757: Expansion of (1+x^4*C^4)*C^4, where C = (1-(1-4*x)^(1/2))/(2*x) is g.f. for Catalan numbers, A000108.

The programs for A071757, the canonical program `A071757.P8104647612587833424` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A071757 has offset 0).

The definition of A071757 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 170 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A071757.P8104647612587833424

`Δ[A071736(n)-A000245(n)]`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A071757

/-- `Δ[A071736(n)-A000245(n)]` -/
def P8104647612587833424.Spec : Prop :=
  ∀ n, P8104647612587833424.a n = A071757 n

theorem P8104647612587833424.correct : P8104647612587833424.Spec := by
  intro n
  simp only [A071757]

end A071757

/-! ## A071757.P8792495414586174638

`Δ[A071736(n)]-A026012(n)`
-/

namespace A071757.P8792495414586174638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071736 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A026012 n

end

end A071757.P8792495414586174638

namespace A071757

/-- `Δ[A071736(n)]-A026012(n)` -/
def P8792495414586174638.Spec : Prop :=
  ∀ n, P8792495414586174638.a n = A071757 n

end A071757

/-! ## A071757.P2298854255867193495

`A036453(n+1)*A370477(n)`
-/

namespace A071757.P2298854255867193495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036453 (n + 1) * A370477 n

end

end A071757.P2298854255867193495

namespace A071757

/-- `A036453(n+1)*A370477(n)` -/
def P2298854255867193495.Spec : Prop :=
  ∀ n, P2298854255867193495.a n = A071757 n

end A071757

/-! ## A071757.P9844853632697277080

`Δ[A036453(n+1)*A071725(n)]`
-/

namespace A071757.P9844853632697277080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036453 (n + 1) * A071725 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A071757.P9844853632697277080

namespace A071757

/-- `Δ[A036453(n+1)*A071725(n)]` -/
def P9844853632697277080.Spec : Prop :=
  ∀ n, P9844853632697277080.a n = A071757 n

end A071757

/-! ## A071757.P7739186977118691735

`A071756(n+1)-A071755(n+1)`
-/

namespace A071757.P7739186977118691735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071756 (n + 1) - A071755 (n + 1)

end

end A071757.P7739186977118691735

namespace A071757

/-- `A071756(n+1)-A071755(n+1)` -/
def P7739186977118691735.Spec : Prop :=
  ∀ n, P7739186977118691735.a n = A071757 n

end A071757

/-! ## A071757.P7069303773410702814

`Δ[A014963(A001316(n))*A071725(n)]`
-/

namespace A071757.P7069303773410702814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A001316 n).toNat * A071725 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A071757.P7069303773410702814

namespace A071757

/-- `Δ[A014963(A001316(n))*A071725(n)]` -/
def P7069303773410702814.Spec : Prop :=
  ∀ n, P7069303773410702814.a n = A071757 n

end A071757

/-! ## A071757.P6303197658869497747

`A033434(n)+A033434(n)%A026012(n)`
-/

namespace A071757.P6303197658869497747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033434 n + Int.tmod (A033434 n) (A026012 n)

end

end A071757.P6303197658869497747

namespace A071757

/-- `A033434(n)+A033434(n)%A026012(n)` -/
def P6303197658869497747.Spec : Prop :=
  ∀ n, P6303197658869497747.a n = A071757 n

end A071757

/-!
# A071759: Consider sequence b(m) = | Sum_{k=1..m} mu(k)/k |; sequence gives numerators of record low values of b(m).

The programs for A071759, there is no canonical definition to state claims against.
-/

/-! ## A071759.P8337963549221042896

`A070888(A070892(n+2))`
-/

namespace A071759.P8337963549221042896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070888 (A070892 (n + 2)).toNat

end

end A071759.P8337963549221042896

/-!
# A071760: Denominators of record absolute values of partial sums of Sum (mu(n)/n).

The programs for A071760, there is no canonical definition to state claims against.
-/

/-! ## A071760.P3105191967880281237

`A070889(A070892(n+2))`
-/

namespace A071760.P3105191967880281237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070889 (A070892 (n + 2)).toNat

end

end A071760.P3105191967880281237

/-!
# A071761: Dealing cards in a game of solitaire.

The programs for A071761, there is no canonical definition to state claims against.
-/

/-! ## A071761.P10676095876536483119

`A081541(∑[char[∑[n]]]²-n)`
-/

namespace A071761.P10676095876536483119
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081541 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A071761.P10676095876536483119

/-! ## A071761.P15334308400230527190

`record[A262557(2*n+1)/10]`
-/

namespace A071761.P15334308400230527190
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A262557 (2 * n + 1) : ℚ) / 10

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A071761.P15334308400230527190

/-! ## A071761.P18409941418926588738

`record[A262557(floor(acot(n))+2*n)]`
-/

namespace A071761.P18409941418926588738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262557 (⌊SequenceMachineLib.acot (n : ℝ)⌋ + (2 * n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A071761.P18409941418926588738

/-! ## A071761.P9977750692050923977

`A262557(A087136(n))`
-/

namespace A071761.P9977750692050923977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262557 (A087136 n).toNat

end

end A071761.P9977750692050923977

/-! ## A071761.P8792547850167233286

`record[A262557(A004277(n))]`
-/

namespace A071761.P8792547850167233286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262557 (A004277 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A071761.P8792547850167233286

/-!
# A071762: Leftmost 1 is converted to a 2, which then propagates one step at a time until it is rightmost; then it changes to a pair of 1's and the process repeats.

The programs for A071762, the canonical program `A071762.P10622872981181749292` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A071762 has offset 0).

The definition of A071762 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A071762.P10622872981181749292

`A002275(A003056(n))+(1-A010054(n))*10^A025581(n)`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A071762

/-- `A002275(A003056(n))+(1-A010054(n))*10^A025581(n)` -/
def P10622872981181749292.Spec : Prop :=
  ∀ n, P10622872981181749292.a n = (A071762 n : ℚ)

end A071762

/-! ## A071762.P6959401931523540731

`A261300(A089633(n))`
-/

namespace A071762.P6959401931523540731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261300 (A089633 n).toNat

end

end A071762.P6959401931523540731

namespace A071762

/-- `A261300(A089633(n))` -/
def P6959401931523540731.Spec : Prop :=
  ∀ n, P6959401931523540731.a n = A071762 n

end A071762

/-! ## A071762.P5327376452597171396

`A261300(record[A180201(n)])`
-/

namespace A071762.P5327376452597171396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180201 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261300 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A071762.P5327376452597171396

namespace A071762

/-- `A261300(record[A180201(n)])` -/
def P5327376452597171396.Spec : Prop :=
  ∀ n, P5327376452597171396.a n = A071762 n

end A071762

/-! ## A071762.P12881845259409659864

`A261300(record[A233277(n)])`
-/

namespace A071762.P12881845259409659864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233277 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261300 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A071762.P12881845259409659864

namespace A071762

/-- `A261300(record[A233277(n)])` -/
def P12881845259409659864.Spec : Prop :=
  ∀ n, P12881845259409659864.a n = A071762 n

end A071762

/-! ## A071762.P7010541504818557200

`A261300(record[A279645(n)])`
-/

namespace A071762.P7010541504818557200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279645 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261300 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A071762.P7010541504818557200

namespace A071762

/-- `A261300(record[A279645(n)])` -/
def P7010541504818557200.Spec : Prop :=
  ∀ n, P7010541504818557200.a n = A071762 n

end A071762

/-!
# A071764: Number of minimal rectangular envelopes (up to rotation) that enclose n contiguous squares.

The programs for A071764, there is no canonical definition to state claims against.
-/

/-! ## A071764.P17117626135918931347

`A092982(A008484(n)+A004652(n))`
-/

namespace A071764.P17117626135918931347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092982 (A008484 n + A004652 n).toNat

end

end A071764.P17117626135918931347

/-! ## A071764.P4005424879249741873

`A111660(A008764(n)+1)`
-/

namespace A071764.P4005424879249741873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111660 (A008764 n + 1).toNat

end

end A071764.P4005424879249741873

/-!
# A071765: Number of n-tuples of elements e_1,e_2,...,e_n in the alternating group A_4 such that the subgroup generated by e_1,e_2,...,e_n is A_4.

The programs for A071765, there is no canonical definition to state claims against.
-/

/-! ## A071765.P17077398719702616392

`lcm(4^n-1, ∑[8*3^n])`
-/

namespace A071765.P17077398719702616392
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * 3 ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((4 ^ n : ℤ) - 1) ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A071765.P17077398719702616392

/-! ## A071765.P14623641949021973454

`(1-3^(n+1))*(4-4^(n+1))`
-/

namespace A071765.P14623641949021973454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (3 ^ (n + 1) : ℤ)) * (4 - (4 ^ (n + 1) : ℤ))

end

end A071765.P14623641949021973454

/-!
# A071766: Denominator of the continued fraction expansion whose terms are the first-order differences of exponents in the binary representation of 4n, with the exponents of 2 being listed in descending order.

The programs for A071766, the canonical program `A071766.P4720922600265952592` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A071766 has offset 0).

The definition of A071766 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9216 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A071766.P13269122446987979073

`A071585(n-A053644(n))`
-/

namespace A071766.P13269122446987979073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071585 ((n : ℤ) - A053644 n).toNat

end

end A071766.P13269122446987979073

namespace A071766

/-- `A071585(n-A053644(n))` -/
def P13269122446987979073.Spec : Prop :=
  ∀ n, P13269122446987979073.a n = A071766 n

end A071766

/-! ## A071766.P12956677539155801079

`A071585(n)-A229742(n)`
-/

namespace A071766.P12956677539155801079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071585 n - A229742 n

end

end A071766.P12956677539155801079

namespace A071766

/-- `A071585(n)-A229742(n)` -/
def P12956677539155801079.Spec : Prop :=
  ∀ n, P12956677539155801079.a n = A071766 n

end A071766

/-! ## A071766.P17266100168115229435

`A086593(n+1)-A071585(n)`
-/

namespace A071766.P17266100168115229435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086593 (n + 1) - A071585 n

end

end A071766.P17266100168115229435

namespace A071766

/-- `A086593(n+1)-A071585(n)` -/
def P17266100168115229435.Spec : Prop :=
  ∀ n, P17266100168115229435.a n = A071766 n

end A071766

/-! ## A071766.P4720922600265952592

`A007305(A233279(n)+1)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A071766

/-- `A007305(A233279(n)+1)` -/
def P4720922600265952592.Spec : Prop :=
  ∀ n, P4720922600265952592.a n = A071766 n

theorem P4720922600265952592.correct : P4720922600265952592.Spec := by
  intro n
  simp only [A071766]

end A071766

/-! ## A071766.P10982082551714146120

`A245328(A345401(n))`
-/

namespace A071766.P10982082551714146120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245328 (A345401 n).toNat

end

end A071766.P10982082551714146120

namespace A071766

/-- `A245328(A345401(n))` -/
def P10982082551714146120.Spec : Prop :=
  ∀ n, P10982082551714146120.a n = A071766 n

end A071766

/-! ## A071766.P285691029443303139

`A071585(A092754(n+1))-A071585(n)`
-/

namespace A071766.P285691029443303139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071585 (A092754 (n + 1)).toNat - A071585 n

end

end A071766.P285691029443303139

namespace A071766

/-- `A071585(A092754(n+1))-A071585(n)` -/
def P285691029443303139.Spec : Prop :=
  ∀ n, P285691029443303139.a n = A071766 n

end A071766

/-! ## A071766.P4657144884301337203

`A071585(A004761(n+2))-A071585(n)`
-/

namespace A071766.P4657144884301337203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071585 (A004761 (n + 2)).toNat - A071585 n

end

end A071766.P4657144884301337203

namespace A071766

/-- `A071585(A004761(n+2))-A071585(n)` -/
def P4657144884301337203.Spec : Prop :=
  ∀ n, P4657144884301337203.a n = A071766 n

end A071766

/-! ## A071766.P16018959148259669011

`A324338(A059893(A000069(n+1)))`
-/

namespace A071766.P16018959148259669011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324338 (A059893 (A000069 (n + 1)).toNat).toNat

end

end A071766.P16018959148259669011

namespace A071766

/-- `A324338(A059893(A000069(n+1)))` -/
def P16018959148259669011.Spec : Prop :=
  ∀ n, P16018959148259669011.a n = A071766 n

end A071766

/-! ## A071766.P8128564705524194136

`A294442(A049773(2*n+1)-1)`
-/

namespace A071766.P8128564705524194136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294442 (A049773 (2 * n + 1) - 1).toNat

end

end A071766.P8128564705524194136

namespace A071766

/-- `A294442(A049773(2*n+1)-1)` -/
def P8128564705524194136.Spec : Prop :=
  ∀ n, P8128564705524194136.a n = A071766 n

end A071766

/-! ## A071766.P1143346401646273889

`A086592(2*n+1)-A071585(n)`
-/

namespace A071766.P1143346401646273889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086592 (2 * n + 1) - A071585 n

end

end A071766.P1143346401646273889

namespace A071766

/-- `A086592(2*n+1)-A071585(n)` -/
def P1143346401646273889.Spec : Prop :=
  ∀ n, P1143346401646273889.a n = A071766 n

end A071766

/-! ## A071766.P15363023726755077870

`A086593(n+1)-A093875(2*n+1)`
-/

namespace A071766.P15363023726755077870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086593 (n + 1) - A093875 (2 * n + 1)

end

end A071766.P15363023726755077870

namespace A071766

/-- `A086593(n+1)-A093875(2*n+1)` -/
def P15363023726755077870.Spec : Prop :=
  ∀ n, P15363023726755077870.a n = A071766 n

end A071766

/-! ## A071766.P6409051965337639323

`A086592(2*n+1)-A093875(2*n+1)`
-/

namespace A071766.P6409051965337639323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086592 (2 * n + 1) - A093875 (2 * n + 1)

end

end A071766.P6409051965337639323

namespace A071766

/-- `A086592(2*n+1)-A093875(2*n+1)` -/
def P6409051965337639323.Spec : Prop :=
  ∀ n, P6409051965337639323.a n = A071766 n

end A071766

/-! ## A071766.P1183492586268347584

`A020650(A145341(n+1))`
-/

namespace A071766.P1183492586268347584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020650 (A145341 (n + 1)).toNat

end

end A071766.P1183492586268347584

namespace A071766

/-- `A020650(A145341(n+1))` -/
def P1183492586268347584.Spec : Prop :=
  ∀ n, P1183492586268347584.a n = A071766 n

end A071766

/-! ## A071766.P15457940727984914169

`A071585(A004760(n+1)+1)-A071585(n)`
-/

namespace A071766.P15457940727984914169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071585 (A004760 (n + 1) + 1).toNat - A071585 n

end

end A071766.P15457940727984914169

namespace A071766

/-- `A071585(A004760(n+1)+1)-A071585(n)` -/
def P15457940727984914169.Spec : Prop :=
  ∀ n, P15457940727984914169.a n = A071766 n

end A071766

/-! ## A071766.P27694594947143466

`A245325(A010078(n+1))`
-/

namespace A071766.P27694594947143466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245325 (A010078 (n + 1)).toNat

end

end A071766.P27694594947143466

namespace A071766

/-- `A245325(A010078(n+1))` -/
def P27694594947143466.Spec : Prop :=
  ∀ n, P27694594947143466.a n = A071766 n

end A071766

/-! ## A071766.P17459857919264170661

`A229742(A004760(n+2))`
-/

namespace A071766.P17459857919264170661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229742 (A004760 (n + 2)).toNat

end

end A071766.P17459857919264170661

namespace A071766

/-- `A229742(A004760(n+2))` -/
def P17459857919264170661.Spec : Prop :=
  ∀ n, P17459857919264170661.a n = A071766 n

end A071766

/-! ## A071766.P6415272293555052955

`A245327(2*A345401(n))`
-/

namespace A071766.P6415272293555052955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245327 (2 * A345401 n).toNat

end

end A071766.P6415272293555052955

namespace A071766

/-- `A245327(2*A345401(n))` -/
def P6415272293555052955.Spec : Prop :=
  ∀ n, P6415272293555052955.a n = A071766 n

end A071766

/-! ## A071766.P14405153647265749748

`A093873(A059893(2*n+1))`
-/

namespace A071766.P14405153647265749748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093873 (A059893 (2 * n + 1)).toNat

end

end A071766.P14405153647265749748

namespace A071766

/-- `A093873(A059893(2*n+1))` -/
def P14405153647265749748.Spec : Prop :=
  ∀ n, P14405153647265749748.a n = A071766 n

end A071766

/-! ## A071766.P10526387535219204270

`A093873(A145342(2*(n+1))-1)`
-/

namespace A071766.P10526387535219204270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093873 (A145342 (2 * (n + 1)) - 1).toNat

end

end A071766.P10526387535219204270

namespace A071766

/-- `A093873(A145342(2*(n+1))-1)` -/
def P10526387535219204270.Spec : Prop :=
  ∀ n, P10526387535219204270.a n = A071766 n

end A071766

/-! ## A071766.P3917837188065764161

`A071585(A004760(n+2))-A071585(n)`
-/

namespace A071766.P3917837188065764161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071585 (A004760 (n + 2)).toNat - A071585 n

end

end A071766.P3917837188065764161

namespace A071766

/-- `A071585(A004760(n+2))-A071585(n)` -/
def P3917837188065764161.Spec : Prop :=
  ∀ n, P3917837188065764161.a n = A071766 n

end A071766

/-!
# A071770: Tersum n + [n/3] (answer recorded in base 10).

The programs for A071770, there is no canonical definition to state claims against.
-/

/-! ## A071770.P11702459570833855326

`floor(A242399(n)/3)`
-/

namespace A071770.P11702459570833855326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A242399 n : ℚ) / 3⌋

end

end A071770.P11702459570833855326

/-! ## A071770.P2842122969735385848

`A004488(A060587(n))`
-/

namespace A071770.P2842122969735385848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004488 (A060587 n).toNat

end

end A071770.P2842122969735385848

/-! ## A071770.P6497827997246945439

`A060587(A117966(n)+n)`
-/

namespace A071770.P6497827997246945439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060587 (A117966 n + (n : ℤ)).toNat

end

end A071770.P6497827997246945439

/-! ## A071770.P1324431641778758095

`A060587(A374363(n)+A244042(n))`
-/

namespace A071770.P1324431641778758095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060587 (A374363 n + A244042 n).toNat

end

end A071770.P1324431641778758095

/-! ## A071770.P5090053806709344530

`A060587(A117967(n)-A117966(2*n))`
-/

namespace A071770.P5090053806709344530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060587 (A117967 n - A117966 (2 * n)).toNat

end

end A071770.P5090053806709344530

/-! ## A071770.P16729933539430247098

`A002264(A242399(n))`
-/

namespace A071770.P16729933539430247098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A242399 n).toNat

end

end A071770.P16729933539430247098

/-! ## A071770.P6347778046182390846

`A060587(A004489((n+1)*2*n))`
-/

namespace A071770.P6347778046182390846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060587 (A004489 ((n + 1) * (2 * n))).toNat

end

end A071770.P6347778046182390846

/-!
# A071772: Absolute values of the numerator of B(prime(n)-1) where B(k) are the Bernoulli numbers.

The programs for A071772, there is no canonical definition to state claims against.
-/

/-! ## A071772.P12263762286091869739

`abs(A051716(A000040(n+1)))`
-/

namespace A071772.P12263762286091869739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A051716 (A000040 (n + 1)).toNat|

end

end A071772.P12263762286091869739

/-! ## A071772.P9609307502828681042

`A246006(eq[1, ∑{e}[n+1, #]])`
-/

namespace A071772.P9609307502828681042
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246006 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A071772.P9609307502828681042

/-! ## A071772.P17366670979145410224

`A246006(eq[2, ∏{e}[n+1, #+1]])`
-/

namespace A071772.P17366670979145410224
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), (Nat.factorization (f3 n) p + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246006 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A071772.P17366670979145410224

/-! ## A071772.P15239596854925465046

`A246006(record[A000010(n+1)])`
-/

namespace A071772.P15239596854925465046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246006 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A071772.P15239596854925465046

/-! ## A071772.P8336704225827722878

`A246006(A000040(n+1)-1)`
-/

namespace A071772.P8336704225827722878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246006 (A000040 (n + 1) - 1).toNat

end

end A071772.P8336704225827722878

/-!
# A071773: a(n) = gcd(rad(n), n/rad(n)), where rad(n) = A007947(n) is the squarefree kernel of n.

The programs for A071773, the canonical program `A071773.P8380425068933087955` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A071773 has offset 1).

The definition of A071773 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A071773.P8380425068933087955

`∏{p}[ceil(n/∏{p}[n+1, #]), #]`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A071773

/-- `∏{p}[ceil(n/∏{p}[n+1, #]), #]` -/
def P8380425068933087955.Spec : Prop :=
  ∀ n, (P8380425068933087955.a n : ℤ) = A071773 (n + 1)

theorem P8380425068933087955.correct : P8380425068933087955.Spec := by
  intro n
  simp only [A071773, Nat.add_sub_cancel]

end A071773

/-! ## A071773.P15630730507536336841

`∏{p}[round(n/∏{p}[n+1, #]), #]`
-/

namespace A071773.P15630730507536336841
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A071773.P15630730507536336841

namespace A071773

/-- `∏{p}[round(n/∏{p}[n+1, #]), #]` -/
def P15630730507536336841.Spec : Prop :=
  ∀ n, (P15630730507536336841.a n : ℤ) = A071773 (n + 1)

end A071773

/-! ## A071773.P5322928571761055060

`∏{p}[n+1, gcd(#, (n+1)/#)]`
-/

namespace A071773.P5322928571761055060
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), Int.gcd (p : ℤ) (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (p : ℚ)))

end

end A071773.P5322928571761055060

namespace A071773

/-- `∏{p}[n+1, gcd(#, (n+1)/#)]` -/
def P5322928571761055060.Spec : Prop :=
  ∀ n, (P5322928571761055060.a n : ℤ) = A071773 (n + 1)

end A071773

/-! ## A071773.P47764578198258676

`∏{p}[(n+1)/∏{p}[n+1, #], #]`
-/

namespace A071773.P47764578198258676
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f1 n)).natAbs, p

end

end A071773.P47764578198258676

namespace A071773

/-- `∏{p}[(n+1)/∏{p}[n+1, #], #]` -/
def P47764578198258676.Spec : Prop :=
  ∀ n, (P47764578198258676.a n : ℤ) = A071773 (n + 1)

end A071773

/-! ## A071773.P43731466742914829

`∏{p}[∏{p}[n+1, #^val(n+1, #²)], #]`
-/

namespace A071773.P43731466742914829
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p ^ SequenceMachineLib.valuation (n + 1) (p ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), p

end

end A071773.P43731466742914829

namespace A071773

/-- `∏{p}[∏{p}[n+1, #^val(n+1, #²)], #]` -/
def P43731466742914829.Spec : Prop :=
  ∀ n, (P43731466742914829.a n : ℤ) = A071773 (n + 1)

end A071773

/-! ## A071773.P16121189122272886319

`∏{p}[A000188(n+1), #]`
-/

namespace A071773.P16121189122272886319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A071773.P16121189122272886319

namespace A071773

/-- `∏{p}[A000188(n+1), #]` -/
def P16121189122272886319.Spec : Prop :=
  ∀ n, (P16121189122272886319.a n : ℤ) = A071773 (n + 1)

end A071773

/-! ## A071773.P4072284581126942533

`∏{p}[A000189(n+1), #]`
-/

namespace A071773.P4072284581126942533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000189 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A071773.P4072284581126942533

namespace A071773

/-- `∏{p}[A000189(n+1), #]` -/
def P4072284581126942533.Spec : Prop :=
  ∀ n, (P4072284581126942533.a n : ℤ) = A071773 (n + 1)

end A071773

/-! ## A071773.P6297379745698307676

`∏{p}[A000190(n+1), #]`
-/

namespace A071773.P6297379745698307676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000190 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A071773.P6297379745698307676

namespace A071773

/-- `∏{p}[A000190(n+1), #]` -/
def P6297379745698307676.Spec : Prop :=
  ∀ n, (P6297379745698307676.a n : ℤ) = A071773 (n + 1)

end A071773

/-! ## A071773.P9274975527748829887

`∏{p}[A003557(n+1), #]`
-/

namespace A071773.P9274975527748829887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A071773.P9274975527748829887

namespace A071773

/-- `∏{p}[A003557(n+1), #]` -/
def P9274975527748829887.Spec : Prop :=
  ∀ n, (P9274975527748829887.a n : ℤ) = A071773 (n + 1)

end A071773

/-! ## A071773.P16213689552896638781

`∏{p}[A008833(n+1), #]`
-/

namespace A071773.P16213689552896638781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008833 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A071773.P16213689552896638781

namespace A071773

/-- `∏{p}[A008833(n+1), #]` -/
def P16213689552896638781.Spec : Prop :=
  ∀ n, (P16213689552896638781.a n : ℤ) = A071773 (n + 1)

end A071773

/-! ## A071773.P13259369540293260452

`∏{p}[A011264(n+1), #]`
-/

namespace A071773.P13259369540293260452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011264 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A071773.P13259369540293260452

namespace A071773

/-- `∏{p}[A011264(n+1), #]` -/
def P13259369540293260452.Spec : Prop :=
  ∀ n, (P13259369540293260452.a n : ℤ) = A071773 (n + 1)

end A071773

/-! ## A071773.P10079551897379047996

`∏{p}[A057521(n+1), #]`
-/

namespace A071773.P10079551897379047996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057521 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A071773.P10079551897379047996

namespace A071773

/-- `∏{p}[A057521(n+1), #]` -/
def P10079551897379047996.Spec : Prop :=
  ∀ n, (P10079551897379047996.a n : ℤ) = A071773 (n + 1)

end A071773

/-! ## A071773.P11783432541681246854

`∏{p}[A085731(n+1), #]`
-/

namespace A071773.P11783432541681246854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085731 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A071773.P11783432541681246854

namespace A071773

/-- `∏{p}[A085731(n+1), #]` -/
def P11783432541681246854.Spec : Prop :=
  ∀ n, (P11783432541681246854.a n : ℤ) = A071773 (n + 1)

end A071773

/-! ## A071773.P3810512086990005706

`∏{p}[A308993(n+1), #]`
-/

namespace A071773.P3810512086990005706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308993 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A071773.P3810512086990005706

namespace A071773

/-- `∏{p}[A308993(n+1), #]` -/
def P3810512086990005706.Spec : Prop :=
  ∀ n, (P3810512086990005706.a n : ℤ) = A071773 (n + 1)

end A071773

/-! ## A071773.P16431124130380465732

`∏{p}[A358272(n+1), #]`
-/

namespace A071773.P16431124130380465732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358272 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A071773.P16431124130380465732

namespace A071773

/-- `∏{p}[A358272(n+1), #]` -/
def P16431124130380465732.Spec : Prop :=
  ∀ n, (P16431124130380465732.a n : ℤ) = A071773 (n + 1)

end A071773

/-! ## A071773.P11971725723520610417

`∏{p}[A366993(n+1), #]`
-/

namespace A071773.P11971725723520610417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366993 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A071773.P11971725723520610417

namespace A071773

/-- `∏{p}[A366993(n+1), #]` -/
def P11971725723520610417.Spec : Prop :=
  ∀ n, (P11971725723520610417.a n : ℤ) = A071773 (n + 1)

end A071773

/-! ## A071773.P4317265604967486348

`∏{p}[A057918(n+1)+1, #]`
-/

namespace A071773.P4317265604967486348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057918 (n + 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A071773.P4317265604967486348

namespace A071773

/-- `∏{p}[A057918(n+1)+1, #]` -/
def P4317265604967486348.Spec : Prop :=
  ∀ n, (P4317265604967486348.a n : ℤ) = A071773 (n + 1)

end A071773

/-! ## A071773.P12390639256813821177

`∏{p}[A336642(n+1)+1, #]`
-/

namespace A071773.P12390639256813821177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336642 (n + 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A071773.P12390639256813821177

namespace A071773

/-- `∏{p}[A336642(n+1)+1, #]` -/
def P12390639256813821177.Spec : Prop :=
  ∀ n, (P12390639256813821177.a n : ℤ) = A071773 (n + 1)

end A071773

/-! ## A071773.P12846813469720349816

`∏{p}[A337101(2*(n+1)), #]`
-/

namespace A071773.P12846813469720349816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337101 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A071773.P12846813469720349816

namespace A071773

/-- `∏{p}[A337101(2*(n+1)), #]` -/
def P12846813469720349816.Spec : Prop :=
  ∀ n, (P12846813469720349816.a n : ℤ) = A071773 (n + 1)

end A071773

/-! ## A071773.P4033954963327374291

`A007947((n+1)/∏{p}[n+1, #])`
-/

namespace A071773.P4033954963327374291
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ))).toNat

end

end A071773.P4033954963327374291

namespace A071773

/-- `A007947((n+1)/∏{p}[n+1, #])` -/
def P4033954963327374291.Spec : Prop :=
  ∀ n, P4033954963327374291.a n = A071773 (n + 1)

end A071773

/-!
# A071774: Related to Pisano periods: integers k such that the period of Fibonacci numbers mod k equals 2*(k+1).

The programs for A071774, there is no canonical definition to state claims against.
-/

/-! ## A071774.P14803355388974051671

`record[A006530(A060305(n+2)-2)]`
-/

namespace A071774.P14803355388974051671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A060305 (n + 2) - 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A071774.P14803355388974051671

/-! ## A071774.P4213693525217780577

`record[p?[A074806(n+1)]]`
-/

namespace A071774.P4213693525217780577
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074806 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A071774.P4213693525217780577

/-! ## A071774.P14618063980534952390

`p?[A106291(A020639(n+1))-(n+3)]`
-/

namespace A071774.P14618063980534952390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106291 (A020639 (n + 1)).toNat - (n + 3 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A071774.P14618063980534952390

/-! ## A071774.P16766711887391413125

`record[A260228(n+3)%A001175(n+3)]`
-/

namespace A071774.P16766711887391413125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A260228 (n + 3)) (A001175 (n + 3))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A071774.P16766711887391413125

/-! ## A071774.P6312220590001721348

`A005408(eq[A001175(2*n+1), 4*(n+1)])`
-/

namespace A071774.P6312220590001721348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001175 (2 * n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℤ)) n)

end

end A071774.P6312220590001721348

/-! ## A071774.P10943983886940671127

`record[A004139(n+1)%A001175(A004139(n+1))]`
-/

namespace A071774.P10943983886940671127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004139 (n + 1)) (A001175 (A004139 (n + 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A071774.P10943983886940671127

/-! ## A071774.P16404135518902967486

`record[A065091(n+1)%A106291(A065091(n+1))]`
-/

namespace A071774.P16404135518902967486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A065091 (n + 1)) (A106291 (A065091 (n + 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A071774.P16404135518902967486

/-! ## A071774.P3648943268267758663

`eq[2*A008619(n), A281230(A233583(n+1))]`
-/

namespace A071774.P3648943268267758663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008619 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281230 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A071774.P3648943268267758663

/-!
# A071775: Continued fraction for C = 0.23571379....the concatenation of final decimal digits of primes.

The programs for A071775, there is no canonical definition to state claims against.
-/

/-! ## A071775.P11223698105193605413

`A270613(2*a(n-1))` with `a(0)=0, a(1)=4, a(2)=4, a(3)=8`
-/

namespace A071775.P11223698105193605413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 4, 4, 8] fun n a =>
  A270613 (2 * a (n - 1)).toNat

end

end A071775.P11223698105193605413

/-!
# A071776: Related to Pisano periods: n such that the period of Fibonacci numbers mod n equals 3*(n+2).

The programs for A071776, there is no canonical definition to state claims against.
-/

/-! ## A071776.P2280531632859163396

`2*∩[A071774(n+1), A106952(n+1)]`
-/

namespace A071776.P2280531632859163396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071774 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106952 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A071776.P2280531632859163396

/-! ## A071776.P1618051953855307033

`2*∩[A071774(n+1), A155916(n+1)]`
-/

namespace A071776.P1618051953855307033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071774 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155916 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A071776.P1618051953855307033

/-! ## A071776.P9497136460424888180

`record[A106291(A155916(n+1))-2]`
-/

namespace A071776.P9497136460424888180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106291 (A155916 (n + 1)).toNat - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A071776.P9497136460424888180

/-! ## A071776.P2636979707694595389

`A229466(n+2)/5`
-/

namespace A071776.P2636979707694595389
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A229466 (n + 2) : ℚ) / 5

end

end A071776.P2636979707694595389

/-! ## A071776.P766676279035082823

`A255590(A229466(n+2))`
-/

namespace A071776.P766676279035082823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255590 (A229466 (n + 2)).toNat

end

end A071776.P766676279035082823

/-!
# A071777: Prime(n) divides F(n)-1 where F(n) are the Fibonacci numbers.

The programs for A071777, there is no canonical definition to state claims against.
-/

/-! ## A071777.P12044562755336946852

`A342001(A135083(n)*A156060(2*(n+2)))`
-/

namespace A071777.P12044562755336946852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342001 (A135083 n * A156060 (2 * (n + 2))).toNat

end

end A071777.P12044562755336946852

/-!
# A071778: Number of ordered triples (a, b, c) with gcd(a, b, c) = 1 and 1 <= {a, b, c} <= n.

The programs for A071778, the canonical program `A071778.P17795933685845442771` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A071778 has offset 1).

The definition of A071778 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A071778.P638667917711404435

`∑[A344596(n+1)]`
-/

namespace A071778.P638667917711404435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344596 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071778.P638667917711404435

namespace A071778

/-- `∑[A344596(n+1)]` -/
def P638667917711404435.Spec : Prop :=
  ∀ n, P638667917711404435.a n = A071778 (n + 1)

end A071778

/-! ## A071778.P5535491655963279160

`6*A100448(n+1)+1`
-/

namespace A071778.P5535491655963279160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A100448 (n + 1) + 1

end

end A071778.P5535491655963279160

namespace A071778

/-- `6*A100448(n+1)+1` -/
def P5535491655963279160.Spec : Prop :=
  ∀ n, P5535491655963279160.a n = A071778 (n + 1)

end A071778

/-! ## A071778.P10646919654267081273

`∑[6*A102309(n+1)]+1`
-/

namespace A071778.P10646919654267081273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A102309 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A071778.P10646919654267081273

namespace A071778

/-- `∑[6*A102309(n+1)]+1` -/
def P10646919654267081273.Spec : Prop :=
  ∀ n, P10646919654267081273.a n = A071778 (n + 1)

end A071778

/-! ## A071778.P17795933685845442771

`∑[∑{d}[n+1, A008683(#)*A003215((n+1)/#-1)]]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A071778

/-- `∑[∑{d}[n+1, A008683(#)*A003215((n+1)/#-1)]]` -/
def P17795933685845442771.Spec : Prop :=
  ∀ n, P17795933685845442771.a n = A071778 (n + 1)

theorem P17795933685845442771.correct : P17795933685845442771.Spec := by
  intro n
  simp only [A071778, Nat.add_sub_cancel]

end A071778

/-! ## A071778.P5602906541081010133

`A100450(n+1)-2*A048134(n+1)`
-/

namespace A071778.P5602906541081010133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100450 (n + 1) - 2 * A048134 (n + 1)

end

end A071778.P5602906541081010133

namespace A071778

/-- `A100450(n+1)-2*A048134(n+1)` -/
def P5602906541081010133.Spec : Prop :=
  ∀ n, P5602906541081010133.a n = A071778 (n + 1)

end A071778

/-! ## A071778.P14243180869643321980

`∑[A008486(A007434(n+1)-A000010(n+1))]`
-/

namespace A071778.P14243180869643321980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (A007434 (n + 1) - A000010 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071778.P14243180869643321980

namespace A071778

/-- `∑[A008486(A007434(n+1)-A000010(n+1))]` -/
def P14243180869643321980.Spec : Prop :=
  ∀ n, P14243180869643321980.a n = A071778 (n + 1)

end A071778

/-! ## A071778.P7764564996467583185

`A344527(∑[n+3]+1)`
-/

namespace A071778.P7764564996467583185
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344527 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A071778.P7764564996467583185

namespace A071778

/-- `A344527(∑[n+3]+1)` -/
def P7764564996467583185.Spec : Prop :=
  ∀ n, P7764564996467583185.a n = A071778 (n + 1)

end A071778

/-! ## A071778.P9493260728065670032

`A358307(n+1)+A358307(n+1)-A018805(n+1)`
-/

namespace A071778.P9493260728065670032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358307 (n + 1) + (A358307 (n + 1) - A018805 (n + 1))

end

end A071778.P9493260728065670032

namespace A071778

/-- `A358307(n+1)+A358307(n+1)-A018805(n+1)` -/
def P9493260728065670032.Spec : Prop :=
  ∀ n, P9493260728065670032.a n = A071778 (n + 1)

end A071778

/-!
# A071779: Smallest k > n such that F(n) + F(i) divides F(k) + F(i) 1<=i<=n and where F(n) are the Fibonacci numbers.

The programs for A071779, there is no canonical definition to state claims against.
-/

/-! ## A071779.P17944110724304989515

`A246173(A084165(n+1))`
-/

namespace A071779.P17944110724304989515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246173 (A084165 (n + 1)).toNat

end

end A071779.P17944110724304989515

/-!
# A071780: Smallest k > n such that there are exactly n pairs (x,y) (1 <= x <= y <= k) solutions of the equation: phi(xy)=sigma(x)+sigma(y).

The programs for A071780, there is no canonical definition to state claims against.
-/

/-! ## A071780.P6111718382958659013

`A180122(n+1)+A034883(A258109(n+3))`
-/

namespace A071780.P6111718382958659013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180122 (n + 1) + A034883 (A258109 (n + 3)).toNat

end

end A071780.P6111718382958659013

/-!
# A071781: Primes p with p-2^e and p+2^e prime for some exponent e.

The programs for A071781, there is no canonical definition to state claims against.
-/

/-! ## A071781.P4257239143152654326

`p?[Δ[p?[2^n+3]]+3]`
-/

namespace A071781.P4257239143152654326
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n + 3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => (f3 j).Prime) n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ) + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A071781.P4257239143152654326

/-!
# A071782: Sum of distinct squares in Z_n (mod n).

The programs for A071782, there is no canonical definition to state claims against.
-/

/-! ## A071782.P16213277628095124222

`A165909(n+1)%(n+1)`
-/

namespace A071782.P16213277628095124222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A165909 (n + 1)) (n + 1 : ℤ)

end

end A071782.P16213277628095124222

/-! ## A071782.P9608253680959117948

`(∑[n]-A165898(n+1))%(n+1)`
-/

namespace A071782.P9608253680959117948
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A165898 (n + 1)) (n + 1 : ℤ)

end

end A071782.P9608253680959117948

/-! ## A071782.P8530400482532709999

`(A165923(n+1)+A165914(n+1))%(n+1)`
-/

namespace A071782.P8530400482532709999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A165923 (n + 1) + A165914 (n + 1)) (n + 1 : ℤ)

end

end A071782.P8530400482532709999

/-! ## A071782.P2091862645564255185

`(A000124(n)-(A165898(n+1)+1))%(n+1)`
-/

namespace A071782.P2091862645564255185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000124 n - (A165898 (n + 1) + 1)) (n + 1 : ℤ)

end

end A071782.P2091862645564255185

/-! ## A071782.P18105914487234484546

`(A000217(n+1)%(A165898(n+1)+n+1))%(n+1)`
-/

namespace A071782.P18105914487234484546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod (A000217 (n + 1)) (A165898 (n + 1) + (n + 1 : ℤ))) (n + 1 : ℤ)

end

end A071782.P18105914487234484546

/-! ## A071782.P6072102707361818846

`((A255644(n+1)+∑[n])/2)%(n+1)`
-/

namespace A071782.P6072102707361818846
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A255644 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) : ℚ) / 2)) (n + 1 : ℤ)

end

end A071782.P6072102707361818846

/-!
# A071783: Palindromic primes with at least one zero digit.

The programs for A071783, there is no canonical definition to state claims against.
-/

/-! ## A071783.P7743235947592801738

`p?[record[A082216(A070565(n))]]`
-/

namespace A071783.P7743235947592801738
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082216 (A070565 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A071783.P7743235947592801738

/-! ## A071783.P4012224635384325958

`p?[A056525(A011540(n+2))]`
-/

namespace A071783.P4012224635384325958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056525 (A011540 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A071783.P4012224635384325958

/-! ## A071783.P14763418368852671116

`p?[record[A082216(A011540(n+1))]]`
-/

namespace A071783.P14763418368852671116
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082216 (A011540 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A071783.P14763418368852671116

/-! ## A071783.P3858631654470173679

`p?[or(-A230200(n+1), A002385(n+1))]`
-/

namespace A071783.P3858631654470173679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (-A230200 (n + 1)) (A002385 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A071783.P3858631654470173679

/-! ## A071783.P1799734728491010313

`p?[A118600(A043453(n+1))]`
-/

namespace A071783.P1799734728491010313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118600 (A043453 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A071783.P1799734728491010313

/-!
# A071784: Determinant of the n X n matrix whose element (i,j) equals the floor( Phi^(i-j) + 1).

The programs for A071784, the canonical program `A071784.P7254121118466723294` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A071784 has offset 1).

The definition of A071784 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 822 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A071784.P7254121118466723294

`∑[a(n-2)-a(n-3)]` with `a(0)=2, a(1)=0, a(2)=-1`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A071784

/-- `∑[a(n-2)-a(n-3)]` -/
def P7254121118466723294.Spec : Prop :=
  ∀ n, P7254121118466723294.a n = A071784 (n + 1)

theorem P7254121118466723294.correct : P7254121118466723294.Spec := by
  intro n
  simp only [A071784, Nat.add_sub_cancel]

end A071784

/-! ## A071784.P16395841061665956866

`a(n-2)-(a(n-3)+1)` with `a(0)=2, a(1)=2, a(2)=1`
-/

namespace A071784.P16395841061665956866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 2, 1] fun n a =>
  a (n - 2) - (a (n - 3) + 1)

end

end A071784.P16395841061665956866

namespace A071784

/-- `a(n-2)-(a(n-3)+1)` -/
def P16395841061665956866.Spec : Prop :=
  ∀ n, P16395841061665956866.a n = A071784 (n + 1)

end A071784

/-! ## A071784.P11350243164283826046

`a(n-2)-1-a(n-3)` with `a(0)=2, a(1)=2, a(2)=1`
-/

namespace A071784.P11350243164283826046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 2, 1] fun n a =>
  a (n - 2) - 1 - a (n - 3)

end

end A071784.P11350243164283826046

namespace A071784

/-- `a(n-2)-1-a(n-3)` -/
def P11350243164283826046.Spec : Prop :=
  ∀ n, P11350243164283826046.a n = A071784 (n + 1)

end A071784

/-! ## A071784.P3816169647669669672

`A124745(n+1)-1+2*A124745(n)`
-/

namespace A071784.P3816169647669669672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124745 (n + 1) - 1 + 2 * A124745 n

end

end A071784.P3816169647669669672

namespace A071784

/-- `A124745(n+1)-1+2*A124745(n)` -/
def P3816169647669669672.Spec : Prop :=
  ∀ n, P3816169647669669672.a n = A071784 (n + 1)

end A071784

/-! ## A071784.P13410986167307423969

`∑[∑[A109266(n+1)]+A109266(n)+2]`
-/

namespace A071784.P13410986167307423969
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109266 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (A109266 n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071784.P13410986167307423969

namespace A071784

/-- `∑[∑[A109266(n+1)]+A109266(n)+2]` -/
def P13410986167307423969.Spec : Prop :=
  ∀ n, P13410986167307423969.a n = A071784 (n + 1)

end A071784

/-! ## A071784.P6952902093848096974

`3*A124745(n)-A077883(n)`
-/

namespace A071784.P6952902093848096974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A124745 n - A077883 n

end

end A071784.P6952902093848096974

namespace A071784

/-- `3*A124745(n)-A077883(n)` -/
def P6952902093848096974.Spec : Prop :=
  ∀ n, P6952902093848096974.a n = A071784 (n + 1)

end A071784

/-!
# A071785: In prime factorization of n replace each prime with the sum of its decimal digits.

The programs for A071785, the canonical program `A071785.P13852867602320339478` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A071785 has offset 1).

The definition of A071785 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A071785.P13852867602320339478

`∏{d}[n+1, A007953(A014963(#))]`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A071785

/-- `∏{d}[n+1, A007953(A014963(#))]` -/
def P13852867602320339478.Spec : Prop :=
  ∀ n, P13852867602320339478.a n = A071785 (n + 1)

theorem P13852867602320339478.correct : P13852867602320339478.Spec := by
  intro n
  simp only [A071785, Nat.add_sub_cancel]

end A071785

/-! ## A071785.P4948505826077149794

`∏{e}[A181821(n+1), A007605(#)]`
-/

namespace A071785.P4948505826077149794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181821 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A007605 (Nat.factorization (f1 n).natAbs p)

end

end A071785.P4948505826077149794

namespace A071785

/-- `∏{e}[A181821(n+1), A007605(#)]` -/
def P4948505826077149794.Spec : Prop :=
  ∀ n, P4948505826077149794.a n = A071785 (n + 1)

end A071785

/-! ## A071785.P12119834515720306429

`∏{e}[A304660(n+1), A007605(#)]`
-/

namespace A071785.P12119834515720306429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304660 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A007605 (Nat.factorization (f1 n).natAbs p)

end

end A071785.P12119834515720306429

namespace A071785

/-- `∏{e}[A304660(n+1), A007605(#)]` -/
def P12119834515720306429.Spec : Prop :=
  ∀ n, P12119834515720306429.a n = A071785 (n + 1)

end A071785

/-! ## A071785.P9628527334128103681

`∏{e}[A181821(n+1), A007953(A000040(#))]`
-/

namespace A071785.P9628527334128103681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181821 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A007953 (A000040 (Nat.factorization (f1 n).natAbs p)).toNat

end

end A071785.P9628527334128103681

namespace A071785

/-- `∏{e}[A181821(n+1), A007953(A000040(#))]` -/
def P9628527334128103681.Spec : Prop :=
  ∀ n, P9628527334128103681.a n = A071785 (n + 1)

end A071785

/-! ## A071785.P13337758966587510172

`∏{e}[A181821(n+1), A007953(A004087(#))]`
-/

namespace A071785.P13337758966587510172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181821 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A007953 (A004087 (Nat.factorization (f1 n).natAbs p)).toNat

end

end A071785.P13337758966587510172

namespace A071785

/-- `∏{e}[A181821(n+1), A007953(A004087(#))]` -/
def P13337758966587510172.Spec : Prop :=
  ∀ n, P13337758966587510172.a n = A071785 (n + 1)

end A071785

/-!
# A071786: In prime factorization of n replace each prime with its reversal (in decimal notation).

The programs for A071786, there is no canonical definition to state claims against.
-/

/-! ## A071786.P7865960113718088149

`∏{d}[n+1, A004086(A014963(#))]`
-/

namespace A071786.P7865960113718088149
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), A004086 (A014963 d).toNat

end

end A071786.P7865960113718088149

/-! ## A071786.P17932712432319520295

`∏{d}[A000027(n+1), A188649(A014963(#))]`
-/

namespace A071786.P17932712432319520295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A188649 (A014963 d).toNat

end

end A071786.P17932712432319520295

/-! ## A071786.P1347077247413958244

`∏{e}[A181821(n+1), A004087(#)]`
-/

namespace A071786.P1347077247413958244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181821 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A004087 (Nat.factorization (f1 n).natAbs p)

end

end A071786.P1347077247413958244

/-! ## A071786.P12212246125551946653

`∏{e}[A304660(n+1), A004087(#)]`
-/

namespace A071786.P12212246125551946653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304660 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A004087 (Nat.factorization (f1 n).natAbs p)

end

end A071786.P12212246125551946653

/-! ## A071786.P15945506959997409311

`∏{e}[A181821(n+1), A004086(A000040(#))]`
-/

namespace A071786.P15945506959997409311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181821 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A004086 (A000040 (Nat.factorization (f1 n).natAbs p)).toNat

end

end A071786.P15945506959997409311

/-!
# A071787: Continued exponent expansion of the power series 1/(1-x); odd terms being numerators and even terms being denominators of the rational terms of the expansion: 1/(1-x) = e^[(a(1)/a(2))*x*e^[(a(3)/a(4))*x*e^[(a(5)/a(6))*x*e^[...]]]].

The programs for A071787, there is no canonical definition to state claims against.
-/

/-! ## A071787.P9899984854739239572

`A216266(A149449(n))`
-/

namespace A071787.P9899984854739239572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216266 (A149449 n).toNat

end

end A071787.P9899984854739239572

/-! ## A071787.P17671572485674022685

`A186520(A185647(n))`
-/

namespace A071787.P17671572485674022685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186520 (A185647 n).toNat

end

end A071787.P17671572485674022685

/-! ## A071787.P15253908068476826019

`A283106(A378672(n+2))`
-/

namespace A071787.P15253908068476826019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283106 (A378672 (n + 2)).toNat

end

end A071787.P15253908068476826019

/-! ## A071787.P14738757445084504327

`A167865(A014517(n)+1+n)`
-/

namespace A071787.P14738757445084504327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167865 (A014517 n + 1 + (n : ℤ)).toNat

end

end A071787.P14738757445084504327

/-!
# A071788: Integer quotients arising in A071687.

The programs for A071788, there is no canonical definition to state claims against.
-/

/-! ## A071788.P4620229029682675524

`A070246(A071687(n+1))`
-/

namespace A071788.P4620229029682675524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070246 (A071687 (n + 1)).toNat

end

end A071788.P4620229029682675524

/-!
# A071789: Decimal expansion of the first (of 10) decimal selvage numbers; the n-th digit of a decimal selvage number, x, is equal to the tenths digit of n*x.

The programs for A071789, there is no canonical definition to state claims against.
-/

/-! ## A071789.P17269653206631266358

`9-A071877(n)`
-/

namespace A071789.P17269653206631266358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A071877 n

end

end A071789.P17269653206631266358

/-! ## A071789.P6716967072604020873

`A010879(lcm(A001961(n+5)-5, floor((n+1)/2^sin(60))))`
-/

namespace A071789.P6716967072604020873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 (Int.lcm (A001961 (n + 5) - 5) ⌊(n + 1 : ℝ) / (2 : ℝ) ^ (Real.sin (60 : ℝ))⌋)

end

end A071789.P6716967072604020873

/-! ## A071789.P8221901801199910788

`A010879(comp[floor(21*n/4)]%(12*n+11-A226190(12*n+11)))`
-/

namespace A071789.P8221901801199910788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊21 * ((n : ℚ) / 4)⌋

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 (Int.tmod (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) ((12 * n + 11 : ℤ) - A226190 (12 * n + 11))).toNat

end

end A071789.P8221901801199910788

/-! ## A071789.P12994197462532170268

`A115180(n+1)%10`
-/

namespace A071789.P12994197462532170268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A115180 (n + 1)) 10

end

end A071789.P12994197462532170268

/-! ## A071789.P5222273405549060919

`A010879(A115180(n+1))`
-/

namespace A071789.P5222273405549060919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 (A115180 (n + 1)).toNat

end

end A071789.P5222273405549060919

/-!
# A071790: Decimal expansion of the second (of 10) decimal selvage numbers; the n-th digit of a decimal selvage number, x, is equal to the tenths digit of n*x.

The programs for A071790, there is no canonical definition to state claims against.
-/

/-! ## A071790.P16816592715629905502

`9-A071876(n)`
-/

namespace A071790.P16816592715629905502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A071876 n

end

end A071790.P16816592715629905502

/-! ## A071790.P14809674560600955671

`(A329991(n+3)+5)%10`
-/

namespace A071790.P14809674560600955671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A329991 (n + 3) + 5) 10

end

end A071790.P14809674560600955671

/-! ## A071790.P14189679389975177125

`A010888(xor(3, A000384(3*n+1)))`
-/

namespace A071790.P14189679389975177125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010888 (Int.xor 3 (A000384 (3 * n + 1))).toNat

end

end A071790.P14189679389975177125

/-! ## A071790.P6562328768330956498

`A131870(A161703(n))`
-/

namespace A071790.P6562328768330956498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131870 (A161703 n).toNat

end

end A071790.P6562328768330956498

/-!
# A071791: Decimal expansion of the third (of 10) decimal selvage numbers; the n-th digit of a decimal selvage number, x, is equal to the tenths digit of n*x.

The programs for A071791, there is no canonical definition to state claims against.
-/

/-! ## A071791.P11042438338182877725

`9-A071875(n)`
-/

namespace A071791.P11042438338182877725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A071875 n

end

end A071791.P11042438338182877725

/-! ## A071791.P2720368130737941150

`A094561(A200860(n+1))`
-/

namespace A071791.P2720368130737941150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094561 (A200860 (n + 1)).toNat

end

end A071791.P2720368130737941150

/-!
# A071792: Decimal expansion of the fourth (of 10) decimal selvage number; the n-th digit of a decimal selvage number, x, is equal to the tenths digit of n*x.

The programs for A071792, there is no canonical definition to state claims against.
-/

/-! ## A071792.P10093955647048980192

`9-A071874(n)`
-/

namespace A071792.P10093955647048980192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A071874 n

end

end A071792.P10093955647048980192

/-! ## A071792.P12666317490882745696

`A010879(A000572(n+1)%A048363(n+1))`
-/

namespace A071792.P12666317490882745696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 (Int.tmod (A000572 (n + 1)) (A048363 (n + 1))).toNat

end

end A071792.P12666317490882745696

/-! ## A071792.P4886855969809391626

`A189403(n+1)%A066441(A308795(3*n+4))`
-/

namespace A071792.P4886855969809391626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A189403 (n + 1)) (A066441 (A308795 (3 * n + 4)).toNat)

end

end A071792.P4886855969809391626

/-! ## A071792.P17640028060443480978

`(A292647(n+1)+A000210(n+1))%A066441(A308795(3*n+4))`
-/

namespace A071792.P17640028060443480978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A292647 (n + 1) + A000210 (n + 1)) (A066441 (A308795 (3 * n + 4)).toNat)

end

end A071792.P17640028060443480978

/-!
# A071793: Decimal expansion of the fifth (of 10) decimal selvage number; the n-th digit of a decimal selvage number, x, is equal to the tenths digit of n*x.

The programs for A071793, there is no canonical definition to state claims against.
-/

/-! ## A071793.P14542598219022282515

`9-A071873(n)`
-/

namespace A071793.P14542598219022282515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A071873 n

end

end A071793.P14542598219022282515

/-!
# A071794: a(n) is the smallest integer > 0 that cannot be obtained from the integers {1, ..., n} using each number at most once and the operators +, -, *, /, ^.

The programs for A071794, there is no canonical definition to state claims against.
-/

/-! ## A071794.P13241760107996595304

`A088962(ceil(exp(n)))`
-/

namespace A071794.P13241760107996595304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088962 ⌈Real.exp (n : ℝ)⌉.toNat

end

end A071794.P13241760107996595304

/-!
# A071795: Numerators of a(n+1) = Sum_{k=1..n} a'(n/k), a(1)=1, where a'(x)=a(x) if x integer and is linearly interpolated otherwise.

The programs for A071795, there is no canonical definition to state claims against.
-/

/-! ## A071795.P1529538355150542247

`A208453(n)-A380868(A107648(n+1))`
-/

namespace A071795.P1529538355150542247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208453 n - A380868 (A107648 (n + 1)).toNat

end

end A071795.P1529538355150542247

/-! ## A071795.P1848001232061184700

`A055086(lcm(A002841(n+3), A036653(n)))`
-/

namespace A071795.P1848001232061184700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055086 (Int.lcm (A002841 (n + 3)) (A036653 n))

end

end A071795.P1848001232061184700

/-!
# A071797: Restart counting after each new odd integer (a fractal sequence).

The programs for A071797, the canonical program `A071797.P11056123776626041658` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A071797 has offset 1).

The definition of A071797 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A071797.P11056123776626041658

`1+A053186(n)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A071797

/-- `1+A053186(n)` -/
def P11056123776626041658.Spec : Prop :=
  ∀ n, P11056123776626041658.a n = A071797 (n + 1)

theorem P11056123776626041658.correct : P11056123776626041658.Spec := by
  intro n
  simp only [A071797, Nat.add_sub_cancel]

end A071797

/-! ## A071797.P12217459458732946009

`1-floor(sqrt(n))²+n`
-/

namespace A071797.P12217459458732946009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (Nat.sqrt n ^ 2 : ℤ) + (n : ℤ)

end

end A071797.P12217459458732946009

namespace A071797

/-- `1-floor(sqrt(n))²+n` -/
def P12217459458732946009.Spec : Prop :=
  ∀ n, P12217459458732946009.a n = A071797 (n + 1)

end A071797

/-! ## A071797.P4269876123585936142

`abs(xor(n-floor(sqrt(n))², -1))`
-/

namespace A071797.P4269876123585936142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor ((n : ℤ) - (Nat.sqrt n ^ 2 : ℤ)) (-1)|

end

end A071797.P4269876123585936142

namespace A071797

/-- `abs(xor(n-floor(sqrt(n))², -1))` -/
def P4269876123585936142.Spec : Prop :=
  ∀ n, P4269876123585936142.a n = A071797 (n + 1)

end A071797

/-! ## A071797.P9118579087516571052

`-xor(n-floor(sqrt(n))², -1)`
-/

namespace A071797.P9118579087516571052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor ((n : ℤ) - (Nat.sqrt n ^ 2 : ℤ)) (-1)

end

end A071797.P9118579087516571052

namespace A071797

/-- `-xor(n-floor(sqrt(n))², -1)` -/
def P9118579087516571052.Spec : Prop :=
  ∀ n, P9118579087516571052.a n = A071797 (n + 1)

end A071797

/-! ## A071797.P104547208356845214

`abs(or(1, -n)%2-(n-floor(sqrt(n))²))`
-/

namespace A071797.P104547208356845214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (Int.lor 1 (-(n : ℤ))) 2 - ((n : ℤ) - (Nat.sqrt n ^ 2 : ℤ))|

end

end A071797.P104547208356845214

namespace A071797

/-- `abs(or(1, -n)%2-(n-floor(sqrt(n))²))` -/
def P104547208356845214.Spec : Prop :=
  ∀ n, P104547208356845214.a n = A071797 (n + 1)

end A071797

/-! ## A071797.P18292248876301306894

`abs(1-A048760(n)+n)`
-/

namespace A071797.P18292248876301306894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A048760 n + (n : ℤ)|

end

end A071797.P18292248876301306894

namespace A071797

/-- `abs(1-A048760(n)+n)` -/
def P18292248876301306894.Spec : Prop :=
  ∀ n, P18292248876301306894.a n = A071797 (n + 1)

end A071797

/-! ## A071797.P6056291648511653941

`abs(n-(A094761(n)+1))`
-/

namespace A071797.P6056291648511653941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) - (A094761 n + 1)|

end

end A071797.P6056291648511653941

namespace A071797

/-- `abs(n-(A094761(n)+1))` -/
def P6056291648511653941.Spec : Prop :=
  ∀ n, P6056291648511653941.a n = A071797 (n + 1)

end A071797

/-! ## A071797.P11859043461256518257

`(A094765(n)+2-n)/2`
-/

namespace A071797.P11859043461256518257
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A094765 n + (2 - (n : ℤ)) : ℚ) / 2

end

end A071797.P11859043461256518257

namespace A071797

/-- `(A094765(n)+2-n)/2` -/
def P11859043461256518257.Spec : Prop :=
  ∀ n, P11859043461256518257.a n = (A071797 (n + 1) : ℚ)

end A071797

/-! ## A071797.P18215977365062338562

`abs(n+1-A000196(n)²)`
-/

namespace A071797.P18215977365062338562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n + 1 : ℤ) - A000196 n ^ 2|

end

end A071797.P18215977365062338562

namespace A071797

/-- `abs(n+1-A000196(n)²)` -/
def P18215977365062338562.Spec : Prop :=
  ∀ n, P18215977365062338562.a n = A071797 (n + 1)

end A071797

/-! ## A071797.P7262331363582938764

`A004741(A170950(n+1))`
-/

namespace A071797.P7262331363582938764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004741 (A170950 (n + 1)).toNat

end

end A071797.P7262331363582938764

namespace A071797

/-- `A004741(A170950(n+1))` -/
def P7262331363582938764.Spec : Prop :=
  ∀ n, P7262331363582938764.a n = A071797 (n + 1)

end A071797

/-! ## A071797.P6183832672631312774

`A008619(2*A053186(n))`
-/

namespace A071797.P6183832672631312774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * A053186 n).toNat

end

end A071797.P6183832672631312774

namespace A071797

/-- `A008619(2*A053186(n))` -/
def P6183832672631312774.Spec : Prop :=
  ∀ n, P6183832672631312774.a n = A071797 (n + 1)

end A071797

/-! ## A071797.P3042887639508611623

`A080883(A020703(n+1)-1)`
-/

namespace A071797.P3042887639508611623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080883 (A020703 (n + 1) - 1).toNat

end

end A071797.P3042887639508611623

namespace A071797

/-- `A080883(A020703(n+1)-1)` -/
def P3042887639508611623.Spec : Prop :=
  ∀ n, P3042887639508611623.a n = A071797 (n + 1)

end A071797

/-! ## A071797.P12371893632288282971

`A165776(n)%A001670(n+1)`
-/

namespace A071797.P12371893632288282971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A165776 n) (A001670 (n + 1))

end

end A071797.P12371893632288282971

namespace A071797

/-- `A165776(n)%A001670(n+1)` -/
def P12371893632288282971.Spec : Prop :=
  ∀ n, P12371893632288282971.a n = A071797 (n + 1)

end A071797

/-! ## A071797.P8683427988424659933

`A327724(n+1)/A003059(n+1)`
-/

namespace A071797.P8683427988424659933
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A327724 (n + 1) : ℚ) / (A003059 (n + 1) : ℚ)

end

end A071797.P8683427988424659933

namespace A071797

/-- `A327724(n+1)/A003059(n+1)` -/
def P8683427988424659933.Spec : Prop :=
  ∀ n, P8683427988424659933.a n = (A071797 (n + 1) : ℚ)

end A071797

/-! ## A071797.P14712606472899766454

`A327724(n+1)/A135034(n+1)`
-/

namespace A071797.P14712606472899766454
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A327724 (n + 1) : ℚ) / (A135034 (n + 1) : ℚ)

end

end A071797.P14712606472899766454

namespace A071797

/-- `A327724(n+1)/A135034(n+1)` -/
def P14712606472899766454.Spec : Prop :=
  ∀ n, P14712606472899766454.a n = (A071797 (n + 1) : ℚ)

end A071797

/-! ## A071797.P7161092830089479276

`A074294(A078358(n+1))`
-/

namespace A071797.P7161092830089479276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074294 (A078358 (n + 1)).toNat

end

end A071797.P7161092830089479276

namespace A071797

/-- `A074294(A078358(n+1))` -/
def P7161092830089479276.Spec : Prop :=
  ∀ n, P7161092830089479276.a n = A071797 (n + 1)

end A071797

/-! ## A071797.P15370776318628554224

`A074294(lt[1, A074294(n+1)])`
-/

namespace A071797.P15370776318628554224
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074294 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074294 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A071797.P15370776318628554224

namespace A071797

/-- `A074294(lt[1, A074294(n+1)])` -/
def P15370776318628554224.Spec : Prop :=
  ∀ n, P15370776318628554224.a n = A071797 (n + 1)

end A071797

/-! ## A071797.P6149583576213083966

`A053186(lt[1, A053186(n)]-1)`
-/

namespace A071797.P6149583576213083966
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053186 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053186 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n - 1)

end

end A071797.P6149583576213083966

namespace A071797

/-- `A053186(lt[1, A053186(n)]-1)` -/
def P6149583576213083966.Spec : Prop :=
  ∀ n, P6149583576213083966.a n = A071797 (n + 1)

end A071797

/-! ## A071797.P5923270563359418277

`A002260(A007606(n+1))`
-/

namespace A071797.P5923270563359418277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A007606 (n + 1)).toNat

end

end A071797.P5923270563359418277

namespace A071797

/-- `A002260(A007606(n+1))` -/
def P5923270563359418277.Spec : Prop :=
  ∀ n, P5923270563359418277.a n = A071797 (n + 1)

end A071797

/-! ## A071797.P7236874233047558511

`A002260(A381232(n)+2*n+1)`
-/

namespace A071797.P7236874233047558511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A381232 n + (2 * n + 1 : ℤ)).toNat

end

end A071797.P7236874233047558511

namespace A071797

/-- `A002260(A381232(n)+2*n+1)` -/
def P7236874233047558511.Spec : Prop :=
  ∀ n, P7236874233047558511.a n = A071797 (n + 1)

end A071797

/-!
# A071798: Number of paths on the surface of the n-dimensional lattice [0..2]^n; i.e., the lattice paths that do not pass through the point (1,1,...,1).

The programs for A071798, there is no canonical definition to state claims against.
-/

/-! ## A071798.P16413863708243062299

`∏[(2*n+1)*(n+1)]-(n+1)!²`
-/

namespace A071798.P16413863708243062299
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (Nat.factorial (n + 1) ^ 2 : ℤ)

end

end A071798.P16413863708243062299

/-! ## A071798.P15223885273669377020

`(∏[2*n+1]-(n+1)!)*(n+1)!`
-/

namespace A071798.P15223885273669377020
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (Nat.factorial (n + 1) : ℤ)) * (Nat.factorial (n + 1) : ℤ)

end

end A071798.P15223885273669377020

/-! ## A071798.P13602050781576430069

`∏[(2*n+1)*(n+1)]-∏[(n+1)²]`
-/

namespace A071798.P13602050781576430069
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) * (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ((∏ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A071798.P13602050781576430069

/-! ## A071798.P3063280597659977991

`(A001147(n+1)-A000142(n+1))*A000142(n+1)`
-/

namespace A071798.P3063280597659977991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001147 (n + 1) - A000142 (n + 1)) * A000142 (n + 1)

end

end A071798.P3063280597659977991

/-! ## A071798.P16450903883890230853

`(A006882(2*n+1)-A000142(n+1))*A000142(n+1)`
-/

namespace A071798.P16450903883890230853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A006882 (2 * n + 1) - A000142 (n + 1)) * A000142 (n + 1)

end

end A071798.P16450903883890230853

/-!
# A071799: Number of lattice paths in the lattice [0..2n] X [0..2n] which do not pass through the point (n,n).

The programs for A071799, there is no canonical definition to state claims against.
-/

/-! ## A071799.P3432170650198296433

`A071801(2*(n+1))`
-/

namespace A071799.P3432170650198296433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071801 (2 * (n + 1))

end

end A071799.P3432170650198296433

/-! ## A071799.P4131116933514595495

`2*A387635(n+1)`
-/

namespace A071799.P4131116933514595495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A387635 (n + 1)

end

end A071799.P4131116933514595495

/-! ## A071799.P17982581158026810772

`2*A058621(2*(n+1))`
-/

namespace A071799.P17982581158026810772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A058621 (2 * (n + 1))

end

end A071799.P17982581158026810772

/-! ## A071799.P2694821334001709898

`A001448(n+1)-A002894(n+1)`
-/

namespace A071799.P2694821334001709898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001448 (n + 1) - A002894 (n + 1)

end

end A071799.P2694821334001709898

/-! ## A071799.P4091290323568245941

`A001448(n+1)-A000984(n+1)²`
-/

namespace A071799.P4091290323568245941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001448 (n + 1) - A000984 (n + 1) ^ 2

end

end A071799.P4091290323568245941

/-! ## A071799.P960281598534692340

`A000984(2*(n+1))-A002894(n+1)`
-/

namespace A071799.P960281598534692340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 (2 * (n + 1)) - A002894 (n + 1)

end

end A071799.P960281598534692340

