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
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
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
import Seq.B002.C003
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
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
import Seq.Opaque.C024
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A142900: Primes congruent to 20 mod 63.

The programs for A142900, the canonical program `A142900.P15501536379614215935` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142900 has offset 1).

The definition of A142900 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2181 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142900.P15501536379614215935

`p?[63*n+20]`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A142900

/-- `p?[63*n+20]` -/
def P15501536379614215935.Spec : Prop :=
  ∀ n, (P15501536379614215935.a n : ℤ) = A142900 (n + 1)

theorem P15501536379614215935.correct : P15501536379614215935.Spec := by
  intro n
  simp only [A142900, Nat.add_sub_cancel]

end A142900

/-! ## A142900.P18314776712228627951

`∩[A045464(n+1), A061238(n+1)]`
-/

namespace A142900.P18314776712228627951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045464 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061238 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142900.P18314776712228627951

namespace A142900

/-- `∩[A045464(n+1), A061238(n+1)]` -/
def P18314776712228627951.Spec : Prop :=
  ∀ n, (P18314776712228627951.a n : ℤ) = A142900 (n + 1)

end A142900

/-! ## A142900.P4977911609314272006

`∩[A045473(n+1), A061238(n+1)]`
-/

namespace A142900.P4977911609314272006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045473 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061238 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142900.P4977911609314272006

namespace A142900

/-- `∩[A045473(n+1), A061238(n+1)]` -/
def P4977911609314272006.Spec : Prop :=
  ∀ n, (P4977911609314272006.a n : ℤ) = A142900 (n + 1)

end A142900

/-! ## A142900.P3480991881883655110

`∩[A061238(n+1), A141898(n+1)]`
-/

namespace A142900.P3480991881883655110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061238 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141898 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142900.P3480991881883655110

namespace A142900

/-- `∩[A061238(n+1), A141898(n+1)]` -/
def P3480991881883655110.Spec : Prop :=
  ∀ n, (P3480991881883655110.a n : ℤ) = A142900 (n + 1)

end A142900

/-! ## A142900.P15724422592927016706

`∩[A004624(n+1), A061238(n+1)]`
-/

namespace A142900.P15724422592927016706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004624 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061238 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142900.P15724422592927016706

namespace A142900

/-- `∩[A004624(n+1), A061238(n+1)]` -/
def P15724422592927016706.Spec : Prop :=
  ∀ n, (P15724422592927016706.a n : ℤ) = A142900 (n + 1)

end A142900

/-! ## A142900.P743368297977943129

`∩[A129807(n+1), A141898(n+1)]`
-/

namespace A142900.P743368297977943129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129807 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141898 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142900.P743368297977943129

namespace A142900

/-- `∩[A129807(n+1), A141898(n+1)]` -/
def P743368297977943129.Spec : Prop :=
  ∀ n, (P743368297977943129.a n : ℤ) = A142900 (n + 1)

end A142900

/-! ## A142900.P3989842004180602747

`∩[A045464(n+1), A301621(n+1)]`
-/

namespace A142900.P3989842004180602747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045464 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301621 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142900.P3989842004180602747

namespace A142900

/-- `∩[A045464(n+1), A301621(n+1)]` -/
def P3989842004180602747.Spec : Prop :=
  ∀ n, (P3989842004180602747.a n : ℤ) = A142900 (n + 1)

end A142900

/-! ## A142900.P11691371895677662896

`∩[A045473(n+1), A301621(n+1)]`
-/

namespace A142900.P11691371895677662896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045473 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301621 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142900.P11691371895677662896

namespace A142900

/-- `∩[A045473(n+1), A301621(n+1)]` -/
def P11691371895677662896.Spec : Prop :=
  ∀ n, (P11691371895677662896.a n : ℤ) = A142900 (n + 1)

end A142900

/-! ## A142900.P3458423669072520714

`∩[A141898(n+1), A301621(n+1)]`
-/

namespace A142900.P3458423669072520714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141898 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301621 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142900.P3458423669072520714

namespace A142900

/-- `∩[A141898(n+1), A301621(n+1)]` -/
def P3458423669072520714.Spec : Prop :=
  ∀ n, (P3458423669072520714.a n : ℤ) = A142900 (n + 1)

end A142900

/-! ## A142900.P16270748958914340990

`∩[A129807(n+1), A215146(n)-2]`
-/

namespace A142900.P16270748958914340990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129807 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215146 n - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142900.P16270748958914340990

namespace A142900

/-- `∩[A129807(n+1), A215146(n)-2]` -/
def P16270748958914340990.Spec : Prop :=
  ∀ n, (P16270748958914340990.a n : ℤ) = A142900 (n + 1)

end A142900

/-! ## A142900.P4081166525089057520

`∩[A129807(n+1), A258016(n+1)+2]`
-/

namespace A142900.P4081166525089057520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129807 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258016 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142900.P4081166525089057520

namespace A142900

/-- `∩[A129807(n+1), A258016(n+1)+2]` -/
def P4081166525089057520.Spec : Prop :=
  ∀ n, (P4081166525089057520.a n : ℤ) = A142900 (n + 1)

end A142900

/-! ## A142900.P6499947582784986076

`∩[A045464(n+1), A063305(n+2)-2]`
-/

namespace A142900.P6499947582784986076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045464 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063305 (n + 2) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142900.P6499947582784986076

namespace A142900

/-- `∩[A045464(n+1), A063305(n+2)-2]` -/
def P6499947582784986076.Spec : Prop :=
  ∀ n, (P6499947582784986076.a n : ℤ) = A142900 (n + 1)

end A142900

/-! ## A142900.P6098911664687833645

`∩[A045473(n+1), A063305(n+2)-2]`
-/

namespace A142900.P6098911664687833645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045473 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063305 (n + 2) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142900.P6098911664687833645

namespace A142900

/-- `∩[A045473(n+1), A063305(n+2)-2]` -/
def P6098911664687833645.Spec : Prop :=
  ∀ n, (P6098911664687833645.a n : ℤ) = A142900 (n + 1)

end A142900

/-! ## A142900.P11757609247614374555

`∩[A061238(n+1), A358053(n+1)]`
-/

namespace A142900.P11757609247614374555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061238 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358053 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142900.P11757609247614374555

namespace A142900

/-- `∩[A061238(n+1), A358053(n+1)]` -/
def P11757609247614374555.Spec : Prop :=
  ∀ n, (P11757609247614374555.a n : ℤ) = A142900 (n + 1)

end A142900

/-! ## A142900.P545639135045025731

`∩[A061238(n+1), A131877(n)-2]`
-/

namespace A142900.P545639135045025731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061238 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131877 n - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142900.P545639135045025731

namespace A142900

/-- `∩[A061238(n+1), A131877(n)-2]` -/
def P545639135045025731.Spec : Prop :=
  ∀ n, (P545639135045025731.a n : ℤ) = A142900 (n + 1)

end A142900

/-! ## A142900.P13086033346379580839

`∩[A045464(n+1), A076206(n+1)]`
-/

namespace A142900.P13086033346379580839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045464 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076206 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142900.P13086033346379580839

namespace A142900

/-- `∩[A045464(n+1), A076206(n+1)]` -/
def P13086033346379580839.Spec : Prop :=
  ∀ n, (P13086033346379580839.a n : ℤ) = A142900 (n + 1)

end A142900

/-! ## A142900.P14392282200187044274

`∩[A045473(n+1), A076206(n+1)]`
-/

namespace A142900.P14392282200187044274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045473 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076206 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142900.P14392282200187044274

namespace A142900

/-- `∩[A045473(n+1), A076206(n+1)]` -/
def P14392282200187044274.Spec : Prop :=
  ∀ n, (P14392282200187044274.a n : ℤ) = A142900 (n + 1)

end A142900

/-! ## A142900.P7627192168391286459

`∩[A076206(n+1), A141898(n+1)]`
-/

namespace A142900.P7627192168391286459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076206 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141898 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142900.P7627192168391286459

namespace A142900

/-- `∩[A076206(n+1), A141898(n+1)]` -/
def P7627192168391286459.Spec : Prop :=
  ∀ n, (P7627192168391286459.a n : ℤ) = A142900 (n + 1)

end A142900

/-! ## A142900.P8403192669403587860

`record[A253254(2*A017041(n))]`
-/

namespace A142900.P8403192669403587860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253254 (2 * A017041 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142900.P8403192669403587860

namespace A142900

/-- `record[A253254(2*A017041(n))]` -/
def P8403192669403587860.Spec : Prop :=
  ∀ n, P8403192669403587860.a n = A142900 (n + 1)

end A142900

/-! ## A142900.P5215760918379191982

`∩[A045464(n+1), A017185(n)]`
-/

namespace A142900.P5215760918379191982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045464 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017185 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142900.P5215760918379191982

namespace A142900

/-- `∩[A045464(n+1), A017185(n)]` -/
def P5215760918379191982.Spec : Prop :=
  ∀ n, (P5215760918379191982.a n : ℤ) = A142900 (n + 1)

end A142900

/-!
# A142901: Primes congruent to 22 mod 63.

The programs for A142901, the canonical program `A142901.P2754317628985178195` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142901 has offset 1).

The definition of A142901 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2165 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142901.P2754317628985178195

`p?[63*n+22]`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A142901

/-- `p?[63*n+22]` -/
def P2754317628985178195.Spec : Prop :=
  ∀ n, (P2754317628985178195.a n : ℤ) = A142901 (n + 1)

theorem P2754317628985178195.correct : P2754317628985178195.Spec := by
  intro n
  simp only [A142901, Nat.add_sub_cancel]

end A142901

/-! ## A142901.P1373357161080330515

`∩[A045465(n+1), A061239(n+1)]`
-/

namespace A142901.P1373357161080330515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045465 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061239 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142901.P1373357161080330515

namespace A142901

/-- `∩[A045465(n+1), A061239(n+1)]` -/
def P1373357161080330515.Spec : Prop :=
  ∀ n, (P1373357161080330515.a n : ℤ) = A142901 (n + 1)

end A142901

/-! ## A142901.P15770572664674479455

`∩[A061239(n+1), A124826(n+1)]`
-/

namespace A142901.P15770572664674479455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061239 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124826 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142901.P15770572664674479455

namespace A142901

/-- `∩[A061239(n+1), A124826(n+1)]` -/
def P15770572664674479455.Spec : Prop :=
  ∀ n, (P15770572664674479455.a n : ℤ) = A142901 (n + 1)

end A142901

/-! ## A142901.P500524028357906710

`∩[A061239(n+1), A140444(n+1)]`
-/

namespace A142901.P500524028357906710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061239 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140444 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142901.P500524028357906710

namespace A142901

/-- `∩[A061239(n+1), A140444(n+1)]` -/
def P500524028357906710.Spec : Prop :=
  ∀ n, (P500524028357906710.a n : ℤ) = A142901 (n + 1)

end A142901

/-! ## A142901.P14398304652357260193

`p?[A139611(n)+A004769(n)]%A000332(n+11)`
-/

namespace A142901.P14398304652357260193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139611 n + A004769 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A000332 (n + 11))

end

end A142901.P14398304652357260193

namespace A142901

/-- `p?[A139611(n)+A004769(n)]%A000332(n+11)` -/
def P14398304652357260193.Spec : Prop :=
  ∀ n, P14398304652357260193.a n = A142901 (n + 1)

end A142901

/-! ## A142901.P14749025197511581651

`∩[A004619(n+1), A061239(n+1)]`
-/

namespace A142901.P14749025197511581651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004619 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061239 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142901.P14749025197511581651

namespace A142901

/-- `∩[A004619(n+1), A061239(n+1)]` -/
def P14749025197511581651.Spec : Prop :=
  ∀ n, (P14749025197511581651.a n : ℤ) = A142901 (n + 1)

end A142901

/-! ## A142901.P716379627899419429

`A000027(p?[A139611(n)+A004769(n)])`
-/

namespace A142901.P716379627899419429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139611 n + A004769 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142901.P716379627899419429

namespace A142901

/-- `A000027(p?[A139611(n)+A004769(n)])` -/
def P716379627899419429.Spec : Prop :=
  ∀ n, P716379627899419429.a n = A142901 (n + 1)

end A142901

/-! ## A142901.P5389478888148116656

`∩[A124826(n+1), A129806(n+1)]`
-/

namespace A142901.P5389478888148116656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124826 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129806 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142901.P5389478888148116656

namespace A142901

/-- `∩[A124826(n+1), A129806(n+1)]` -/
def P5389478888148116656.Spec : Prop :=
  ∀ n, (P5389478888148116656.a n : ℤ) = A142901 (n + 1)

end A142901

/-! ## A142901.P15719237246475369361

`∩[A045465(n+1), A301622(n+1)]`
-/

namespace A142901.P15719237246475369361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045465 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301622 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142901.P15719237246475369361

namespace A142901

/-- `∩[A045465(n+1), A301622(n+1)]` -/
def P15719237246475369361.Spec : Prop :=
  ∀ n, (P15719237246475369361.a n : ℤ) = A142901 (n + 1)

end A142901

/-! ## A142901.P13689184052557593767

`∩[A124826(n+1), A301622(n+1)]`
-/

namespace A142901.P13689184052557593767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124826 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301622 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142901.P13689184052557593767

namespace A142901

/-- `∩[A124826(n+1), A301622(n+1)]` -/
def P13689184052557593767.Spec : Prop :=
  ∀ n, (P13689184052557593767.a n : ℤ) = A142901 (n + 1)

end A142901

/-! ## A142901.P15227141629768733055

`∩[A140444(n+1), A301622(n+1)]`
-/

namespace A142901.P15227141629768733055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140444 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301622 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142901.P15227141629768733055

namespace A142901

/-- `∩[A140444(n+1), A301622(n+1)]` -/
def P15227141629768733055.Spec : Prop :=
  ∀ n, (P15227141629768733055.a n : ℤ) = A142901 (n + 1)

end A142901

/-! ## A142901.P11128762478946071184

`∩[A079132(n+1), A124826(n+1)]`
-/

namespace A142901.P11128762478946071184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079132 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124826 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142901.P11128762478946071184

namespace A142901

/-- `∩[A079132(n+1), A124826(n+1)]` -/
def P11128762478946071184.Spec : Prop :=
  ∀ n, (P11128762478946071184.a n : ℤ) = A142901 (n + 1)

end A142901

/-! ## A142901.P9847771833420042337

`∩[A061239(n+1), A215146(n)]`
-/

namespace A142901.P9847771833420042337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061239 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215146 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142901.P9847771833420042337

namespace A142901

/-- `∩[A061239(n+1), A215146(n)]` -/
def P9847771833420042337.Spec : Prop :=
  ∀ n, (P9847771833420042337.a n : ℤ) = A142901 (n + 1)

end A142901

/-! ## A142901.P10929731753120062442

`∩[A079132(n+1), A215146(n)]`
-/

namespace A142901.P10929731753120062442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079132 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215146 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142901.P10929731753120062442

namespace A142901

/-- `∩[A079132(n+1), A215146(n)]` -/
def P10929731753120062442.Spec : Prop :=
  ∀ n, (P10929731753120062442.a n : ℤ) = A142901 (n + 1)

end A142901

/-! ## A142901.P12457459706346301739

`∩[A129806(n+1), A215146(n)]`
-/

namespace A142901.P12457459706346301739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129806 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215146 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142901.P12457459706346301739

namespace A142901

/-- `∩[A129806(n+1), A215146(n)]` -/
def P12457459706346301739.Spec : Prop :=
  ∀ n, (P12457459706346301739.a n : ℤ) = A142901 (n + 1)

end A142901

/-! ## A142901.P2091295866760972796

`∩[A045465(n+1), A063305(n+2)]`
-/

namespace A142901.P2091295866760972796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045465 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063305 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142901.P2091295866760972796

namespace A142901

/-- `∩[A045465(n+1), A063305(n+2)]` -/
def P2091295866760972796.Spec : Prop :=
  ∀ n, (P2091295866760972796.a n : ℤ) = A142901 (n + 1)

end A142901

/-! ## A142901.P12480559658253178629

`∩[A124826(n+1), A063305(n+2)]`
-/

namespace A142901.P12480559658253178629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124826 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063305 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142901.P12480559658253178629

namespace A142901

/-- `∩[A124826(n+1), A063305(n+2)]` -/
def P12480559658253178629.Spec : Prop :=
  ∀ n, (P12480559658253178629.a n : ℤ) = A142901 (n + 1)

end A142901

/-! ## A142901.P3638630275070331947

`∩[A140444(n+1), A063305(n+2)]`
-/

namespace A142901.P3638630275070331947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140444 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063305 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142901.P3638630275070331947

namespace A142901

/-- `∩[A140444(n+1), A063305(n+2)]` -/
def P3638630275070331947.Spec : Prop :=
  ∀ n, (P3638630275070331947.a n : ℤ) = A142901 (n + 1)

end A142901

/-! ## A142901.P12915670259902341934

`∩[A061239(n+1), A131877(n)]`
-/

namespace A142901.P12915670259902341934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061239 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131877 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142901.P12915670259902341934

namespace A142901

/-- `∩[A061239(n+1), A131877(n)]` -/
def P12915670259902341934.Spec : Prop :=
  ∀ n, (P12915670259902341934.a n : ℤ) = A142901 (n + 1)

end A142901

/-! ## A142901.P17696016676026858845

`∩[A045465(n+1), A017209(n)]`
-/

namespace A142901.P17696016676026858845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045465 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017209 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142901.P17696016676026858845

namespace A142901

/-- `∩[A045465(n+1), A017209(n)]` -/
def P17696016676026858845.Spec : Prop :=
  ∀ n, (P17696016676026858845.a n : ℤ) = A142901 (n + 1)

end A142901

/-!
# A142902: Primes congruent to 23 mod 63.

The programs for A142902, the canonical program `A142902.P16721140612929027147` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142902 has offset 1).

The definition of A142902 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2163 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142902.P16721140612929027147

`p?[63*n+23]`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A142902

/-- `p?[63*n+23]` -/
def P16721140612929027147.Spec : Prop :=
  ∀ n, (P16721140612929027147.a n : ℤ) = A142902 (n + 1)

theorem P16721140612929027147.correct : P16721140612929027147.Spec := by
  intro n
  simp only [A142902, Nat.add_sub_cancel]

end A142902

/-! ## A142902.P2443572651944100104

`∩[A045383(n+1), A061240(n+1)]`
-/

namespace A142902.P2443572651944100104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045383 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061240 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142902.P2443572651944100104

namespace A142902

/-- `∩[A045383(n+1), A061240(n+1)]` -/
def P2443572651944100104.Spec : Prop :=
  ∀ n, (P2443572651944100104.a n : ℤ) = A142902 (n + 1)

end A142902

/-! ## A142902.P3795877381645519481

`∩[A045392(n+1), A061240(n+1)]`
-/

namespace A142902.P3795877381645519481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045392 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061240 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142902.P3795877381645519481

namespace A142902

/-- `∩[A045392(n+1), A061240(n+1)]` -/
def P3795877381645519481.Spec : Prop :=
  ∀ n, (P3795877381645519481.a n : ℤ) = A142902 (n + 1)

end A142902

/-! ## A142902.P10255611212224043334

`∩[A061240(n+1), A140442(n+1)]`
-/

namespace A142902.P10255611212224043334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061240 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140442 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142902.P10255611212224043334

namespace A142902

/-- `∩[A061240(n+1), A140442(n+1)]` -/
def P10255611212224043334.Spec : Prop :=
  ∀ n, (P10255611212224043334.a n : ℤ) = A142902 (n + 1)

end A142902

/-! ## A142902.P4980514063560937288

`∩[A061240(n+1), A141888(n+1)]`
-/

namespace A142902.P4980514063560937288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061240 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141888 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142902.P4980514063560937288

namespace A142902

/-- `∩[A061240(n+1), A141888(n+1)]` -/
def P4980514063560937288.Spec : Prop :=
  ∀ n, (P4980514063560937288.a n : ℤ) = A142902 (n + 1)

end A142902

/-! ## A142902.P7106822966920696762

`∩[A061240(n+1), A142244(n+1)]`
-/

namespace A142902.P7106822966920696762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061240 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142244 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142902.P7106822966920696762

namespace A142902

/-- `∩[A061240(n+1), A142244(n+1)]` -/
def P7106822966920696762.Spec : Prop :=
  ∀ n, (P7106822966920696762.a n : ℤ) = A142902 (n + 1)

end A142902

/-! ## A142902.P16090668878742475009

`root(p?[A139611(n)+A004769(n)+1], 2)²`
-/

namespace A142902.P16090668878742475009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139611 n + A004769 n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℝ) ^ (1 / (2 : ℝ))) ^ 2

end

end A142902.P16090668878742475009

namespace A142902

/-- `root(p?[A139611(n)+A004769(n)+1], 2)²` -/
def P16090668878742475009.Spec : Prop :=
  ∀ n, P16090668878742475009.a n = (A142902 (n + 1) : ℝ)

end A142902

/-! ## A142902.P12560284828885280548

`∩[A129806(n+1), A141888(n+1)]`
-/

namespace A142902.P12560284828885280548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129806 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141888 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142902.P12560284828885280548

namespace A142902

/-- `∩[A129806(n+1), A141888(n+1)]` -/
def P12560284828885280548.Spec : Prop :=
  ∀ n, (P12560284828885280548.a n : ℤ) = A142902 (n + 1)

end A142902

/-! ## A142902.P2924566006876872892

`∩[A129806(n+1), A142244(n+1)]`
-/

namespace A142902.P2924566006876872892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129806 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142244 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142902.P2924566006876872892

namespace A142902

/-- `∩[A129806(n+1), A142244(n+1)]` -/
def P2924566006876872892.Spec : Prop :=
  ∀ n, (P2924566006876872892.a n : ℤ) = A142902 (n + 1)

end A142902

/-! ## A142902.P9787028042090981024

`∩[A004620(n+1), A061240(n+1)]`
-/

namespace A142902.P9787028042090981024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004620 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061240 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142902.P9787028042090981024

namespace A142902

/-- `∩[A004620(n+1), A061240(n+1)]` -/
def P9787028042090981024.Spec : Prop :=
  ∀ n, (P9787028042090981024.a n : ℤ) = A142902 (n + 1)

end A142902

/-! ## A142902.P3080902448071828195

`∩[A079131(n+1), A141888(n+1)]`
-/

namespace A142902.P3080902448071828195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079131 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141888 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142902.P3080902448071828195

namespace A142902

/-- `∩[A079131(n+1), A141888(n+1)]` -/
def P3080902448071828195.Spec : Prop :=
  ∀ n, (P3080902448071828195.a n : ℤ) = A142902 (n + 1)

end A142902

/-! ## A142902.P12685438444895305183

`∩[A079131(n+1), A142244(n+1)]`
-/

namespace A142902.P12685438444895305183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079131 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142244 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142902.P12685438444895305183

namespace A142902

/-- `∩[A079131(n+1), A142244(n+1)]` -/
def P12685438444895305183.Spec : Prop :=
  ∀ n, (P12685438444895305183.a n : ℤ) = A142902 (n + 1)

end A142902

/-! ## A142902.P14819260048989709953

`∩[A045383(n+1), A301623(n+1)]`
-/

namespace A142902.P14819260048989709953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045383 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301623 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142902.P14819260048989709953

namespace A142902

/-- `∩[A045383(n+1), A301623(n+1)]` -/
def P14819260048989709953.Spec : Prop :=
  ∀ n, (P14819260048989709953.a n : ℤ) = A142902 (n + 1)

end A142902

/-! ## A142902.P16857992357428747952

`∩[A045392(n+1), A301623(n+1)]`
-/

namespace A142902.P16857992357428747952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045392 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301623 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142902.P16857992357428747952

namespace A142902

/-- `∩[A045392(n+1), A301623(n+1)]` -/
def P16857992357428747952.Spec : Prop :=
  ∀ n, (P16857992357428747952.a n : ℤ) = A142902 (n + 1)

end A142902

/-! ## A142902.P13601747782435425340

`∩[A140442(n+1), A301623(n+1)]`
-/

namespace A142902.P13601747782435425340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140442 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301623 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142902.P13601747782435425340

namespace A142902

/-- `∩[A140442(n+1), A301623(n+1)]` -/
def P13601747782435425340.Spec : Prop :=
  ∀ n, (P13601747782435425340.a n : ℤ) = A142902 (n + 1)

end A142902

/-! ## A142902.P16368918872574750299

`∩[A141888(n+1), A301623(n+1)]`
-/

namespace A142902.P16368918872574750299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141888 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301623 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142902.P16368918872574750299

namespace A142902

/-- `∩[A141888(n+1), A301623(n+1)]` -/
def P16368918872574750299.Spec : Prop :=
  ∀ n, (P16368918872574750299.a n : ℤ) = A142902 (n + 1)

end A142902

/-! ## A142902.P158149504357152832

`∩[A142244(n+1), A301623(n+1)]`
-/

namespace A142902.P158149504357152832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142244 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301623 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142902.P158149504357152832

namespace A142902

/-- `∩[A142244(n+1), A301623(n+1)]` -/
def P158149504357152832.Spec : Prop :=
  ∀ n, (P158149504357152832.a n : ℤ) = A142902 (n + 1)

end A142902

/-! ## A142902.P16461399994526258524

`∩[A129806(n+1), A215146(n)+1]`
-/

namespace A142902.P16461399994526258524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129806 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215146 n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142902.P16461399994526258524

namespace A142902

/-- `∩[A129806(n+1), A215146(n)+1]` -/
def P16461399994526258524.Spec : Prop :=
  ∀ n, (P16461399994526258524.a n : ℤ) = A142902 (n + 1)

end A142902

/-! ## A142902.P2640650337705818896

`∩[A045383(n+1), A242215(n)]`
-/

namespace A142902.P2640650337705818896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045383 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242215 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142902.P2640650337705818896

namespace A142902

/-- `∩[A045383(n+1), A242215(n)]` -/
def P2640650337705818896.Spec : Prop :=
  ∀ n, (P2640650337705818896.a n : ℤ) = A142902 (n + 1)

end A142902

/-! ## A142902.P12654862483453864199

`∩[A045392(n+1), A242215(n)]`
-/

namespace A142902.P12654862483453864199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045392 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242215 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142902.P12654862483453864199

namespace A142902

/-- `∩[A045392(n+1), A242215(n)]` -/
def P12654862483453864199.Spec : Prop :=
  ∀ n, (P12654862483453864199.a n : ℤ) = A142902 (n + 1)

end A142902

/-!
# A142903: Primes congruent to 25 mod 63.

The programs for A142903, the canonical program `A142903.P3956129544153980981` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142903 has offset 1).

The definition of A142903 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2188 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142903.P3956129544153980981

`p?[63*n+25]`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A142903

/-- `p?[63*n+25]` -/
def P3956129544153980981.Spec : Prop :=
  ∀ n, (P3956129544153980981.a n : ℤ) = A142903 (n + 1)

theorem P3956129544153980981.correct : P3956129544153980981.Spec := by
  intro n
  simp only [A142903, Nat.add_sub_cancel]

end A142903

/-! ## A142903.P9992462632000934494

`∩[A061241(n+1), A141889(n+1)]`
-/

namespace A142903.P9992462632000934494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061241 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141889 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142903.P9992462632000934494

namespace A142903

/-- `∩[A061241(n+1), A141889(n+1)]` -/
def P9992462632000934494.Spec : Prop :=
  ∀ n, (P9992462632000934494.a n : ℤ) = A142903 (n + 1)

end A142903

/-! ## A142903.P3457238262720890362

`∩[A045471(n+1), A061241(n+1)]`
-/

namespace A142903.P3457238262720890362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045471 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061241 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142903.P3457238262720890362

namespace A142903

/-- `∩[A045471(n+1), A061241(n+1)]` -/
def P3457238262720890362.Spec : Prop :=
  ∀ n, (P3457238262720890362.a n : ℤ) = A142903 (n + 1)

end A142903

/-! ## A142903.P4219780587822604755

`∩[A004622(n+1), A061241(n+1)]`
-/

namespace A142903.P4219780587822604755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004622 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061241 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142903.P4219780587822604755

namespace A142903

/-- `∩[A004622(n+1), A061241(n+1)]` -/
def P4219780587822604755.Spec : Prop :=
  ∀ n, (P4219780587822604755.a n : ℤ) = A142903 (n + 1)

end A142903

/-! ## A142903.P5288637063251286106

`∩[A129807(n+1), A141889(n+1)]`
-/

namespace A142903.P5288637063251286106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129807 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141889 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142903.P5288637063251286106

namespace A142903

/-- `∩[A129807(n+1), A141889(n+1)]` -/
def P5288637063251286106.Spec : Prop :=
  ∀ n, (P5288637063251286106.a n : ℤ) = A142903 (n + 1)

end A142903

/-! ## A142903.P6729258074415318279

`∩[A045374(n+1), A260440(n+1)-2]`
-/

namespace A142903.P6729258074415318279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045374 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260440 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142903.P6729258074415318279

namespace A142903

/-- `∩[A045374(n+1), A260440(n+1)-2]` -/
def P6729258074415318279.Spec : Prop :=
  ∀ n, (P6729258074415318279.a n : ℤ) = A142903 (n + 1)

end A142903

/-! ## A142903.P14111509997554459608

`∩[A045387(n+1), A260440(n+1)-2]`
-/

namespace A142903.P14111509997554459608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045387 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260440 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142903.P14111509997554459608

namespace A142903

/-- `∩[A045387(n+1), A260440(n+1)-2]` -/
def P14111509997554459608.Spec : Prop :=
  ∀ n, (P14111509997554459608.a n : ℤ) = A142903 (n + 1)

end A142903

/-! ## A142903.P5737808282954261788

`∩[A078403(n+1), A141889(n+1)]`
-/

namespace A142903.P5737808282954261788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078403 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141889 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142903.P5737808282954261788

namespace A142903

/-- `∩[A078403(n+1), A141889(n+1)]` -/
def P5737808282954261788.Spec : Prop :=
  ∀ n, (P5737808282954261788.a n : ℤ) = A142903 (n + 1)

end A142903

/-! ## A142903.P15292723035130506993

`∩[A045471(n+1), A301628(n+1)]`
-/

namespace A142903.P15292723035130506993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045471 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301628 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142903.P15292723035130506993

namespace A142903

/-- `∩[A045471(n+1), A301628(n+1)]` -/
def P15292723035130506993.Spec : Prop :=
  ∀ n, (P15292723035130506993.a n : ℤ) = A142903 (n + 1)

end A142903

/-! ## A142903.P2870541120523049051

`∩[A141889(n+1), A301628(n+1)]`
-/

namespace A142903.P2870541120523049051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141889 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301628 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142903.P2870541120523049051

namespace A142903

/-- `∩[A141889(n+1), A301628(n+1)]` -/
def P2870541120523049051.Spec : Prop :=
  ∀ n, (P2870541120523049051.a n : ℤ) = A142903 (n + 1)

end A142903

/-! ## A142903.P7691952735884081313

`∩[A045471(n+1), A242215(n)+2]`
-/

namespace A142903.P7691952735884081313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045471 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242215 n + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142903.P7691952735884081313

namespace A142903

/-- `∩[A045471(n+1), A242215(n)+2]` -/
def P7691952735884081313.Spec : Prop :=
  ∀ n, (P7691952735884081313.a n : ℤ) = A142903 (n + 1)

end A142903

/-! ## A142903.P18357276947827143005

`∩[A242215(n+1)+2, A045462(n+2)]`
-/

namespace A142903.P18357276947827143005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242215 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045462 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142903.P18357276947827143005

namespace A142903

/-- `∩[A242215(n+1)+2, A045462(n+2)]` -/
def P18357276947827143005.Spec : Prop :=
  ∀ n, (P18357276947827143005.a n : ℤ) = A142903 (n + 1)

end A142903

/-! ## A142903.P18022426834162428917

`∩[A061241(n+1), A358053(n+1)-2]`
-/

namespace A142903.P18022426834162428917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061241 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358053 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142903.P18022426834162428917

namespace A142903

/-- `∩[A061241(n+1), A358053(n+1)-2]` -/
def P18022426834162428917.Spec : Prop :=
  ∀ n, (P18022426834162428917.a n : ℤ) = A142903 (n + 1)

end A142903

/-! ## A142903.P276444978724296920

`record[A006530(A019432(7*n+17))]`
-/

namespace A142903.P276444978724296920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A019432 (7 * n + 17)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142903.P276444978724296920

namespace A142903

/-- `record[A006530(A019432(7*n+17))]` -/
def P276444978724296920.Spec : Prop :=
  ∀ n, P276444978724296920.a n = A142903 (n + 1)

end A142903

/-! ## A142903.P12640389444157167730

`∩[A045471(n+1), A017245(n)]`
-/

namespace A142903.P12640389444157167730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045471 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017245 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142903.P12640389444157167730

namespace A142903

/-- `∩[A045471(n+1), A017245(n)]` -/
def P12640389444157167730.Spec : Prop :=
  ∀ n, (P12640389444157167730.a n : ℤ) = A142903 (n + 1)

end A142903

/-! ## A142903.P9047523965123014933

`∩[A017221(2*n)+2, A045462(n+2)]`
-/

namespace A142903.P9047523965123014933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017221 (2 * n) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045462 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142903.P9047523965123014933

namespace A142903

/-- `∩[A017221(2*n)+2, A045462(n+2)]` -/
def P9047523965123014933.Spec : Prop :=
  ∀ n, (P9047523965123014933.a n : ℤ) = A142903 (n + 1)

end A142903

/-! ## A142903.P9471809285631313653

`∩[A017221(2*n)+2, A045471(n+2)]`
-/

namespace A142903.P9471809285631313653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017221 (2 * n) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045471 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142903.P9471809285631313653

namespace A142903

/-- `∩[A017221(2*n)+2, A045471(n+2)]` -/
def P9471809285631313653.Spec : Prop :=
  ∀ n, (P9471809285631313653.a n : ℤ) = A142903 (n + 1)

end A142903

/-! ## A142903.P2509269247683798690

`∩[A017257(2*n)-1, A045462(n+2)]`
-/

namespace A142903.P2509269247683798690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017257 (2 * n) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045462 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142903.P2509269247683798690

namespace A142903

/-- `∩[A017257(2*n)-1, A045462(n+2)]` -/
def P2509269247683798690.Spec : Prop :=
  ∀ n, (P2509269247683798690.a n : ℤ) = A142903 (n + 1)

end A142903

/-! ## A142903.P10293144663119132726

`∩[A017257(2*n)-1, A045471(n+2)]`
-/

namespace A142903.P10293144663119132726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017257 (2 * n) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045471 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142903.P10293144663119132726

namespace A142903

/-- `∩[A017257(2*n)-1, A045471(n+2)]` -/
def P10293144663119132726.Spec : Prop :=
  ∀ n, (P10293144663119132726.a n : ℤ) = A142903 (n + 1)

end A142903

/-! ## A142903.P4237336617188439282

`∩[A143988(2*n+1)+2, A141889(n+2)]`
-/

namespace A142903.P4237336617188439282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143988 (2 * n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141889 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142903.P4237336617188439282

namespace A142903

/-- `∩[A143988(2*n+1)+2, A141889(n+2)]` -/
def P4237336617188439282.Spec : Prop :=
  ∀ n, (P4237336617188439282.a n : ℤ) = A142903 (n + 1)

end A142903

/-!
# A142904: Primes congruent to 26 mod 63.

The programs for A142904, the canonical program `A142904.P15928257826511276623` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142904 has offset 1).

The definition of A142904 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2191 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142904.P15928257826511276623

`p?[63*n-37]`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A142904

/-- `p?[63*n-37]` -/
def P15928257826511276623.Spec : Prop :=
  ∀ n, P15928257826511276623.a n = A142904 (n + 1)

theorem P15928257826511276623.correct : P15928257826511276623.Spec := by
  intro n
  simp only [A142904, Nat.add_sub_cancel]

end A142904

/-! ## A142904.P11005601348873668459

`∩[A045447(n+1), A061242(n+1)]`
-/

namespace A142904.P11005601348873668459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045447 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061242 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142904.P11005601348873668459

namespace A142904

/-- `∩[A045447(n+1), A061242(n+1)]` -/
def P11005601348873668459.Spec : Prop :=
  ∀ n, (P11005601348873668459.a n : ℤ) = A142904 (n + 1)

end A142904

/-! ## A142904.P9556642503347290681

`∩[A045458(n+1), A061242(n+1)]`
-/

namespace A142904.P9556642503347290681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045458 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061242 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142904.P9556642503347290681

namespace A142904

/-- `∩[A045458(n+1), A061242(n+1)]` -/
def P9556642503347290681.Spec : Prop :=
  ∀ n, (P9556642503347290681.a n : ℤ) = A142904 (n + 1)

end A142904

/-! ## A142904.P13927832787127813685

`∩[A061242(n+1), A141890(n+1)]`
-/

namespace A142904.P13927832787127813685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061242 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141890 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142904.P13927832787127813685

namespace A142904

/-- `∩[A061242(n+1), A141890(n+1)]` -/
def P13927832787127813685.Spec : Prop :=
  ∀ n, (P13927832787127813685.a n : ℤ) = A142904 (n + 1)

end A142904

/-! ## A142904.P3512592860602651390

`∩[A004623(n+1), A061242(n+1)]`
-/

namespace A142904.P3512592860602651390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004623 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061242 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142904.P3512592860602651390

namespace A142904

/-- `∩[A004623(n+1), A061242(n+1)]` -/
def P3512592860602651390.Spec : Prop :=
  ∀ n, (P3512592860602651390.a n : ℤ) = A142904 (n + 1)

end A142904

/-! ## A142904.P11697538350022602190

`∩[A129805(n+1), A141890(n+1)]`
-/

namespace A142904.P11697538350022602190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129805 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141890 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142904.P11697538350022602190

namespace A142904

/-- `∩[A129805(n+1), A141890(n+1)]` -/
def P11697538350022602190.Spec : Prop :=
  ∀ n, (P11697538350022602190.a n : ℤ) = A142904 (n + 1)

end A142904

/-! ## A142904.P14899644630281713505

`∩[A045359(n+1), A260440(n+1)-2]`
-/

namespace A142904.P14899644630281713505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045359 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260440 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142904.P14899644630281713505

namespace A142904

/-- `∩[A045359(n+1), A260440(n+1)-2]` -/
def P14899644630281713505.Spec : Prop :=
  ∀ n, (P14899644630281713505.a n : ℤ) = A142904 (n + 1)

end A142904

/-! ## A142904.P15697887207542910610

`∩[A045368(n+1), A260440(n+1)-2]`
-/

namespace A142904.P15697887207542910610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045368 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260440 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142904.P15697887207542910610

namespace A142904

/-- `∩[A045368(n+1), A260440(n+1)-2]` -/
def P15697887207542910610.Spec : Prop :=
  ∀ n, (P15697887207542910610.a n : ℤ) = A142904 (n + 1)

end A142904

/-! ## A142904.P8597534434851708043

`∩[A045447(n+1), A295869(n+1)]`
-/

namespace A142904.P8597534434851708043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045447 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295869 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142904.P8597534434851708043

namespace A142904

/-- `∩[A045447(n+1), A295869(n+1)]` -/
def P8597534434851708043.Spec : Prop :=
  ∀ n, (P8597534434851708043.a n : ℤ) = A142904 (n + 1)

end A142904

/-! ## A142904.P7552345870624737106

`∩[A045458(n+1), A295869(n+1)]`
-/

namespace A142904.P7552345870624737106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045458 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295869 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142904.P7552345870624737106

namespace A142904

/-- `∩[A045458(n+1), A295869(n+1)]` -/
def P7552345870624737106.Spec : Prop :=
  ∀ n, (P7552345870624737106.a n : ℤ) = A142904 (n + 1)

end A142904

/-! ## A142904.P12952370126456143273

`∩[A141890(n+1), A295869(n+1)]`
-/

namespace A142904.P12952370126456143273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141890 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295869 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142904.P12952370126456143273

namespace A142904

/-- `∩[A141890(n+1), A295869(n+1)]` -/
def P12952370126456143273.Spec : Prop :=
  ∀ n, (P12952370126456143273.a n : ℤ) = A142904 (n + 1)

end A142904

/-! ## A142904.P8234925404445891921

`∩[A045447(n+1), A239129(n+1)]`
-/

namespace A142904.P8234925404445891921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045447 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239129 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142904.P8234925404445891921

namespace A142904

/-- `∩[A045447(n+1), A239129(n+1)]` -/
def P8234925404445891921.Spec : Prop :=
  ∀ n, (P8234925404445891921.a n : ℤ) = A142904 (n + 1)

end A142904

/-! ## A142904.P14427063831951570688

`∩[A045458(n+1), A239129(n+1)]`
-/

namespace A142904.P14427063831951570688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045458 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239129 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142904.P14427063831951570688

namespace A142904

/-- `∩[A045458(n+1), A239129(n+1)]` -/
def P14427063831951570688.Spec : Prop :=
  ∀ n, (P14427063831951570688.a n : ℤ) = A142904 (n + 1)

end A142904

/-! ## A142904.P3107495078849070620

`∩[A141890(n+1), A239129(n+1)]`
-/

namespace A142904.P3107495078849070620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141890 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239129 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142904.P3107495078849070620

namespace A142904

/-- `∩[A141890(n+1), A239129(n+1)]` -/
def P3107495078849070620.Spec : Prop :=
  ∀ n, (P3107495078849070620.a n : ℤ) = A142904 (n + 1)

end A142904

/-! ## A142904.P15626063879061514953

`∩[A045447(n+1), A161705(n)-2]`
-/

namespace A142904.P15626063879061514953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045447 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161705 n - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142904.P15626063879061514953

namespace A142904

/-- `∩[A045447(n+1), A161705(n)-2]` -/
def P15626063879061514953.Spec : Prop :=
  ∀ n, (P15626063879061514953.a n : ℤ) = A142904 (n + 1)

end A142904

/-! ## A142904.P11182156981553528882

`∩[A045458(n+1), A161705(n)-2]`
-/

namespace A142904.P11182156981553528882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045458 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161705 n - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142904.P11182156981553528882

namespace A142904

/-- `∩[A045458(n+1), A161705(n)-2]` -/
def P11182156981553528882.Spec : Prop :=
  ∀ n, (P11182156981553528882.a n : ℤ) = A142904 (n + 1)

end A142904

/-! ## A142904.P1836941068525077414

`or(1, p?[A019430(A017209(n))])`
-/

namespace A142904.P1836941068525077414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019430 (A017209 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A142904.P1836941068525077414

namespace A142904

/-- `or(1, p?[A019430(A017209(n))])` -/
def P1836941068525077414.Spec : Prop :=
  ∀ n, P1836941068525077414.a n = A142904 (n + 1)

end A142904

/-! ## A142904.P15185895799166777308

`∩[A061242(n+1), A126980(n)]`
-/

namespace A142904.P15185895799166777308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061242 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126980 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142904.P15185895799166777308

namespace A142904

/-- `∩[A061242(n+1), A126980(n)]` -/
def P15185895799166777308.Spec : Prop :=
  ∀ n, (P15185895799166777308.a n : ℤ) = A142904 (n + 1)

end A142904

/-! ## A142904.P2902608534975512056

`p?[A019430(A017209(n))]%A001546(n)`
-/

namespace A142904.P2902608534975512056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019430 (A017209 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A001546 n)

end

end A142904.P2902608534975512056

namespace A142904

/-- `p?[A019430(A017209(n))]%A001546(n)` -/
def P2902608534975512056.Spec : Prop :=
  ∀ n, P2902608534975512056.a n = A142904 (n + 1)

end A142904

/-! ## A142904.P14657485017734423003

`A000035(2*n)+p?[A019430(A017209(n))]`
-/

namespace A142904.P14657485017734423003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019430 (A017209 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (2 * n) + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142904.P14657485017734423003

namespace A142904

/-- `A000035(2*n)+p?[A019430(A017209(n))]` -/
def P14657485017734423003.Spec : Prop :=
  ∀ n, P14657485017734423003.a n = A142904 (n + 1)

end A142904

/-!
# A142905: Primes congruent to 29 mod 63.

The programs for A142905, the canonical program `A142905.P15361432978310743157` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142905 has offset 1).

The definition of A142905 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2171 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142905.P15361432978310743157

`p?[7*9*n+29]`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A142905

/-- `p?[7*9*n+29]` -/
def P15361432978310743157.Spec : Prop :=
  ∀ n, (P15361432978310743157.a n : ℤ) = A142905 (n + 1)

theorem P15361432978310743157.correct : P15361432978310743157.Spec := by
  intro n
  simp only [A142905, Nat.add_sub_cancel]

end A142905

/-! ## A142905.P17299113780293475240

`∩[A045465(n+1), A061238(n+1)]`
-/

namespace A142905.P17299113780293475240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045465 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061238 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142905.P17299113780293475240

namespace A142905

/-- `∩[A045465(n+1), A061238(n+1)]` -/
def P17299113780293475240.Spec : Prop :=
  ∀ n, (P17299113780293475240.a n : ℤ) = A142905 (n + 1)

end A142905

/-! ## A142905.P13136888071439143685

`∩[A061238(n+1), A140444(n+1)]`
-/

namespace A142905.P13136888071439143685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061238 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140444 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142905.P13136888071439143685

namespace A142905

/-- `∩[A061238(n+1), A140444(n+1)]` -/
def P13136888071439143685.Spec : Prop :=
  ∀ n, (P13136888071439143685.a n : ℤ) = A142905 (n + 1)

end A142905

/-! ## A142905.P6525177548808822425

`∩[A061238(n+1), A141891(n+1)]`
-/

namespace A142905.P6525177548808822425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061238 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141891 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142905.P6525177548808822425

namespace A142905

/-- `∩[A061238(n+1), A141891(n+1)]` -/
def P6525177548808822425.Spec : Prop :=
  ∀ n, (P6525177548808822425.a n : ℤ) = A142905 (n + 1)

end A142905

/-! ## A142905.P1300023941075744985

`∩[A004619(n+1), A061238(n+1)]`
-/

namespace A142905.P1300023941075744985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004619 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061238 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142905.P1300023941075744985

namespace A142905

/-- `∩[A004619(n+1), A061238(n+1)]` -/
def P1300023941075744985.Spec : Prop :=
  ∀ n, (P1300023941075744985.a n : ℤ) = A142905 (n + 1)

end A142905

/-! ## A142905.P15865345502325277573

`∩[A129807(n+1), A141891(n+1)]`
-/

namespace A142905.P15865345502325277573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129807 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141891 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142905.P15865345502325277573

namespace A142905

/-- `∩[A129807(n+1), A141891(n+1)]` -/
def P15865345502325277573.Spec : Prop :=
  ∀ n, (P15865345502325277573.a n : ℤ) = A142905 (n + 1)

end A142905

/-! ## A142905.P16135607755573387021

`∩[A045381(n+1), A260440(n+1)+2]`
-/

namespace A142905.P16135607755573387021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045381 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260440 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142905.P16135607755573387021

namespace A142905

/-- `∩[A045381(n+1), A260440(n+1)+2]` -/
def P16135607755573387021.Spec : Prop :=
  ∀ n, (P16135607755573387021.a n : ℤ) = A142905 (n + 1)

end A142905

/-! ## A142905.P14443360512391999040

`∩[A045391(n+1), A260440(n+1)+2]`
-/

namespace A142905.P14443360512391999040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045391 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260440 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142905.P14443360512391999040

namespace A142905

/-- `∩[A045391(n+1), A260440(n+1)+2]` -/
def P14443360512391999040.Spec : Prop :=
  ∀ n, (P14443360512391999040.a n : ℤ) = A142905 (n + 1)

end A142905

/-! ## A142905.P2117352870253335557

`∩[A045465(n+1), A301621(n+1)]`
-/

namespace A142905.P2117352870253335557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045465 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301621 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142905.P2117352870253335557

namespace A142905

/-- `∩[A045465(n+1), A301621(n+1)]` -/
def P2117352870253335557.Spec : Prop :=
  ∀ n, (P2117352870253335557.a n : ℤ) = A142905 (n + 1)

end A142905

/-! ## A142905.P16505471031352074289

`∩[A140444(n+1), A301621(n+1)]`
-/

namespace A142905.P16505471031352074289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140444 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301621 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142905.P16505471031352074289

namespace A142905

/-- `∩[A140444(n+1), A301621(n+1)]` -/
def P16505471031352074289.Spec : Prop :=
  ∀ n, (P16505471031352074289.a n : ℤ) = A142905 (n + 1)

end A142905

/-! ## A142905.P1403684621047086374

`∩[A141891(n+1), A301621(n+1)]`
-/

namespace A142905.P1403684621047086374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141891 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301621 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142905.P1403684621047086374

namespace A142905

/-- `∩[A141891(n+1), A301621(n+1)]` -/
def P1403684621047086374.Spec : Prop :=
  ∀ n, (P1403684621047086374.a n : ℤ) = A142905 (n + 1)

end A142905

/-! ## A142905.P8804282586698111162

`∩[A045465(n+1), A063305(n+2)-2]`
-/

namespace A142905.P8804282586698111162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045465 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063305 (n + 2) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142905.P8804282586698111162

namespace A142905

/-- `∩[A045465(n+1), A063305(n+2)-2]` -/
def P8804282586698111162.Spec : Prop :=
  ∀ n, (P8804282586698111162.a n : ℤ) = A142905 (n + 1)

end A142905

/-! ## A142905.P16628190053860022646

`∩[A140444(n+1), A063305(n+2)-2]`
-/

namespace A142905.P16628190053860022646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140444 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063305 (n + 2) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142905.P16628190053860022646

namespace A142905

/-- `∩[A140444(n+1), A063305(n+2)-2]` -/
def P16628190053860022646.Spec : Prop :=
  ∀ n, (P16628190053860022646.a n : ℤ) = A142905 (n + 1)

end A142905

/-! ## A142905.P10757917261187215504

`∩[A061238(n+1), A131877(n)]`
-/

namespace A142905.P10757917261187215504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061238 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131877 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142905.P10757917261187215504

namespace A142905

/-- `∩[A061238(n+1), A131877(n)]` -/
def P10757917261187215504.Spec : Prop :=
  ∀ n, (P10757917261187215504.a n : ℤ) = A142905 (n + 1)

end A142905

/-! ## A142905.P13820138835893132969

`∩[A061238(n+1), A358053(n+1)+2]`
-/

namespace A142905.P13820138835893132969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061238 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358053 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142905.P13820138835893132969

namespace A142905

/-- `∩[A061238(n+1), A358053(n+1)+2]` -/
def P13820138835893132969.Spec : Prop :=
  ∀ n, (P13820138835893132969.a n : ℤ) = A142905 (n + 1)

end A142905

/-! ## A142905.P7805748133371880325

`∩[A045465(n+1), A076206(n+1)]`
-/

namespace A142905.P7805748133371880325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045465 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076206 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142905.P7805748133371880325

namespace A142905

/-- `∩[A045465(n+1), A076206(n+1)]` -/
def P7805748133371880325.Spec : Prop :=
  ∀ n, (P7805748133371880325.a n : ℤ) = A142905 (n + 1)

end A142905

/-! ## A142905.P14368701698594315659

`∩[A076206(n+1), A140444(n+1)]`
-/

namespace A142905.P14368701698594315659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076206 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140444 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142905.P14368701698594315659

namespace A142905

/-- `∩[A076206(n+1), A140444(n+1)]` -/
def P14368701698594315659.Spec : Prop :=
  ∀ n, (P14368701698594315659.a n : ℤ) = A142905 (n + 1)

end A142905

/-! ## A142905.P7915552206514430851

`∩[A076206(n+1), A141891(n+1)]`
-/

namespace A142905.P7915552206514430851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076206 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141891 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142905.P7915552206514430851

namespace A142905

/-- `∩[A076206(n+1), A141891(n+1)]` -/
def P7915552206514430851.Spec : Prop :=
  ∀ n, (P7915552206514430851.a n : ℤ) = A142905 (n + 1)

end A142905

/-! ## A142905.P1386657622236030276

`record[A020639(7*9*n+29)]`
-/

namespace A142905.P1386657622236030276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (7 * (9 * n) + 29)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142905.P1386657622236030276

namespace A142905

/-- `record[A020639(7*9*n+29)]` -/
def P1386657622236030276.Spec : Prop :=
  ∀ n, P1386657622236030276.a n = A142905 (n + 1)

end A142905

/-! ## A142905.P282926444795590205

`∩[A045465(n+1), A017185(n)]`
-/

namespace A142905.P282926444795590205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045465 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017185 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142905.P282926444795590205

namespace A142905

/-- `∩[A045465(n+1), A017185(n)]` -/
def P282926444795590205.Spec : Prop :=
  ∀ n, (P282926444795590205.a n : ℤ) = A142905 (n + 1)

end A142905

/-!
# A142906: Primes congruent to 31 mod 63.

The programs for A142906, the canonical program `A142906.P2511125151718696299` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142906 has offset 1).

The definition of A142906 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2213 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142906.P2511125151718696299

`p?[floor(63*n/2)]`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A142906

/-- `p?[floor(63*n/2)]` -/
def P2511125151718696299.Spec : Prop :=
  ∀ n, P2511125151718696299.a n = A142906 (n + 1)

theorem P2511125151718696299.correct : P2511125151718696299.Spec := by
  intro n
  simp only [A142906, Nat.add_sub_cancel]

end A142906

/-! ## A142906.P3810270567943674433

`∩[A061239(n+1), A141892(n+1)]`
-/

namespace A142906.P3810270567943674433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061239 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141892 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142906.P3810270567943674433

namespace A142906

/-- `∩[A061239(n+1), A141892(n+1)]` -/
def P3810270567943674433.Spec : Prop :=
  ∀ n, (P3810270567943674433.a n : ℤ) = A142906 (n + 1)

end A142906

/-! ## A142906.P10624594924308714153

`∩[A045425(n+1), A061239(n+1)]`
-/

namespace A142906.P10624594924308714153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045425 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061239 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142906.P10624594924308714153

namespace A142906

/-- `∩[A045425(n+1), A061239(n+1)]` -/
def P10624594924308714153.Spec : Prop :=
  ∀ n, (P10624594924308714153.a n : ℤ) = A142906 (n + 1)

end A142906

/-! ## A142906.P17160598417442025572

`∩[A045437(n+1), A061239(n+1)]`
-/

namespace A142906.P17160598417442025572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045437 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061239 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142906.P17160598417442025572

namespace A142906

/-- `∩[A045437(n+1), A061239(n+1)]` -/
def P17160598417442025572.Spec : Prop :=
  ∀ n, (P17160598417442025572.a n : ℤ) = A142906 (n + 1)

end A142906

/-! ## A142906.P7320288425298434156

`∩[A004621(n+1), A061239(n+1)]`
-/

namespace A142906.P7320288425298434156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004621 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061239 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142906.P7320288425298434156

namespace A142906

/-- `∩[A004621(n+1), A061239(n+1)]` -/
def P7320288425298434156.Spec : Prop :=
  ∀ n, (P7320288425298434156.a n : ℤ) = A142906 (n + 1)

end A142906

/-! ## A142906.P17193812882188961232

`∩[A129806(n+1), A141892(n+1)]`
-/

namespace A142906.P17193812882188961232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129806 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141892 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142906.P17193812882188961232

namespace A142906

/-- `∩[A129806(n+1), A141892(n+1)]` -/
def P17193812882188961232.Spec : Prop :=
  ∀ n, (P17193812882188961232.a n : ℤ) = A142906 (n + 1)

end A142906

/-! ## A142906.P11183621444054100736

`∩[A079132(n+1), A141892(n+1)]`
-/

namespace A142906.P11183621444054100736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079132 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141892 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142906.P11183621444054100736

namespace A142906

/-- `∩[A079132(n+1), A141892(n+1)]` -/
def P11183621444054100736.Spec : Prop :=
  ∀ n, (P11183621444054100736.a n : ℤ) = A142906 (n + 1)

end A142906

/-! ## A142906.P12265792768724377774

`∩[A045425(n+1), A301622(n+1)]`
-/

namespace A142906.P12265792768724377774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045425 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301622 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142906.P12265792768724377774

namespace A142906

/-- `∩[A045425(n+1), A301622(n+1)]` -/
def P12265792768724377774.Spec : Prop :=
  ∀ n, (P12265792768724377774.a n : ℤ) = A142906 (n + 1)

end A142906

/-! ## A142906.P7578210300255911122

`∩[A045437(n+1), A301622(n+1)]`
-/

namespace A142906.P7578210300255911122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045437 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301622 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142906.P7578210300255911122

namespace A142906

/-- `∩[A045437(n+1), A301622(n+1)]` -/
def P7578210300255911122.Spec : Prop :=
  ∀ n, (P7578210300255911122.a n : ℤ) = A142906 (n + 1)

end A142906

/-! ## A142906.P6738430433694762733

`∩[A141892(n+1), A301622(n+1)]`
-/

namespace A142906.P6738430433694762733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141892 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301622 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142906.P6738430433694762733

namespace A142906

/-- `∩[A141892(n+1), A301622(n+1)]` -/
def P6738430433694762733.Spec : Prop :=
  ∀ n, (P6738430433694762733.a n : ℤ) = A142906 (n + 1)

end A142906

/-! ## A142906.P3012845246527636965

`∩[A045425(n+1), A063305(n+2)]`
-/

namespace A142906.P3012845246527636965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045425 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063305 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142906.P3012845246527636965

namespace A142906

/-- `∩[A045425(n+1), A063305(n+2)]` -/
def P3012845246527636965.Spec : Prop :=
  ∀ n, (P3012845246527636965.a n : ℤ) = A142906 (n + 1)

end A142906

/-! ## A142906.P4768353770538619992

`∩[A045437(n+1), A063305(n+2)]`
-/

namespace A142906.P4768353770538619992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045437 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063305 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142906.P4768353770538619992

namespace A142906

/-- `∩[A045437(n+1), A063305(n+2)]` -/
def P4768353770538619992.Spec : Prop :=
  ∀ n, (P4768353770538619992.a n : ℤ) = A142906 (n + 1)

end A142906

/-! ## A142906.P3686940614475041601

`∩[A141892(n+1), A063305(n+2)]`
-/

namespace A142906.P3686940614475041601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141892 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063305 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142906.P3686940614475041601

namespace A142906

/-- `∩[A141892(n+1), A063305(n+2)]` -/
def P3686940614475041601.Spec : Prop :=
  ∀ n, (P3686940614475041601.a n : ℤ) = A142906 (n + 1)

end A142906

/-! ## A142906.P15425827626351517214

`∩[A061239(n+1), A131877(n)+2]`
-/

namespace A142906.P15425827626351517214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061239 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131877 n + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142906.P15425827626351517214

namespace A142906

/-- `∩[A061239(n+1), A131877(n)+2]` -/
def P15425827626351517214.Spec : Prop :=
  ∀ n, (P15425827626351517214.a n : ℤ) = A142906 (n + 1)

end A142906

/-! ## A142906.P13164577789182847828

`record[A006530(9*14*n+31)]`
-/

namespace A142906.P13164577789182847828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (9 * (14 * n) + 31)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142906.P13164577789182847828

namespace A142906

/-- `record[A006530(9*14*n+31)]` -/
def P13164577789182847828.Spec : Prop :=
  ∀ n, P13164577789182847828.a n = A142906 (n + 1)

end A142906

/-! ## A142906.P15599537572825486547

`record[A020639(floor(63*(n+1)/2))]`
-/

namespace A142906.P15599537572825486547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 ⌊63 * ((n + 1 : ℚ) / 2)⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142906.P15599537572825486547

namespace A142906

/-- `record[A020639(floor(63*(n+1)/2))]` -/
def P15599537572825486547.Spec : Prop :=
  ∀ n, P15599537572825486547.a n = A142906 (n + 1)

end A142906

/-! ## A142906.P15470614102195662591

`∩[A045425(n+1), A017209(n)]`
-/

namespace A142906.P15470614102195662591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045425 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017209 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142906.P15470614102195662591

namespace A142906

/-- `∩[A045425(n+1), A017209(n)]` -/
def P15470614102195662591.Spec : Prop :=
  ∀ n, (P15470614102195662591.a n : ℤ) = A142906 (n + 1)

end A142906

/-! ## A142906.P14328689163042442434

`∩[A045437(n+1), A017209(n)]`
-/

namespace A142906.P14328689163042442434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045437 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017209 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142906.P14328689163042442434

namespace A142906

/-- `∩[A045437(n+1), A017209(n)]` -/
def P14328689163042442434.Spec : Prop :=
  ∀ n, (P14328689163042442434.a n : ℤ) = A142906 (n + 1)

end A142906

/-!
# A142907: Primes congruent to 32 mod 63.

The programs for A142907, the canonical program `A142907.P14668704726298311629` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142907 has offset 1).

The definition of A142907 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2177 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142907.P14668704726298311629

`p?[a(n-1)+63]` with `a(0)=32`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A142907

/-- `p?[a(n-1)+63]` -/
def P14668704726298311629.Spec : Prop :=
  ∀ n, (P14668704726298311629.a n : ℤ) = A142907 (n + 1)

theorem P14668704726298311629.correct : P14668704726298311629.Spec := by
  intro n
  simp only [A142907, Nat.add_sub_cancel]

end A142907

/-! ## A142907.P450970439343131216

`p?[8*(8*n+4)-n]`
-/

namespace A142907.P450970439343131216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (8 * (8 * n + 4) : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142907.P450970439343131216

namespace A142907

/-- `p?[8*(8*n+4)-n]` -/
def P450970439343131216.Spec : Prop :=
  ∀ n, P450970439343131216.a n = A142907 (n + 1)

end A142907

/-! ## A142907.P706886964629515607

`∩[A045462(n+1), A061240(n+1)]`
-/

namespace A142907.P706886964629515607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045462 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061240 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142907.P706886964629515607

namespace A142907

/-- `∩[A045462(n+1), A061240(n+1)]` -/
def P706886964629515607.Spec : Prop :=
  ∀ n, (P706886964629515607.a n : ℤ) = A142907 (n + 1)

end A142907

/-! ## A142907.P120758477196635530

`∩[A045471(n+1), A061240(n+1)]`
-/

namespace A142907.P120758477196635530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045471 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061240 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142907.P120758477196635530

namespace A142907

/-- `∩[A045471(n+1), A061240(n+1)]` -/
def P120758477196635530.Spec : Prop :=
  ∀ n, (P120758477196635530.a n : ℤ) = A142907 (n + 1)

end A142907

/-! ## A142907.P12504918838611773579

`∩[A061240(n+1), A141893(n+1)]`
-/

namespace A142907.P12504918838611773579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061240 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141893 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142907.P12504918838611773579

namespace A142907

/-- `∩[A061240(n+1), A141893(n+1)]` -/
def P12504918838611773579.Spec : Prop :=
  ∀ n, (P12504918838611773579.a n : ℤ) = A142907 (n + 1)

end A142907

/-! ## A142907.P17278948460883235405

`∩[A004622(n+1), A061240(n+1)]`
-/

namespace A142907.P17278948460883235405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004622 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061240 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142907.P17278948460883235405

namespace A142907

/-- `∩[A004622(n+1), A061240(n+1)]` -/
def P17278948460883235405.Spec : Prop :=
  ∀ n, (P17278948460883235405.a n : ℤ) = A142907 (n + 1)

end A142907

/-! ## A142907.P3081731010872942144

`∩[A129806(n+1), A141893(n+1)]`
-/

namespace A142907.P3081731010872942144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129806 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141893 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142907.P3081731010872942144

namespace A142907

/-- `∩[A129806(n+1), A141893(n+1)]` -/
def P3081731010872942144.Spec : Prop :=
  ∀ n, (P3081731010872942144.a n : ℤ) = A142907 (n + 1)

end A142907

/-! ## A142907.P11742760867164768672

`A000027(p?[A008619(n)+31*(n+1)])`
-/

namespace A142907.P11742760867164768672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n + (31 * (n + 1) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142907.P11742760867164768672

namespace A142907

/-- `A000027(p?[A008619(n)+31*(n+1)])` -/
def P11742760867164768672.Spec : Prop :=
  ∀ n, P11742760867164768672.a n = A142907 (n + 1)

end A142907

/-! ## A142907.P8884821882243029261

`∩[A079131(n+1), A141893(n+1)]`
-/

namespace A142907.P8884821882243029261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079131 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141893 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142907.P8884821882243029261

namespace A142907

/-- `∩[A079131(n+1), A141893(n+1)]` -/
def P8884821882243029261.Spec : Prop :=
  ∀ n, (P8884821882243029261.a n : ℤ) = A142907 (n + 1)

end A142907

/-! ## A142907.P16877373137828409237

`∩[A045462(n+1), A301623(n+1)]`
-/

namespace A142907.P16877373137828409237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045462 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301623 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142907.P16877373137828409237

namespace A142907

/-- `∩[A045462(n+1), A301623(n+1)]` -/
def P16877373137828409237.Spec : Prop :=
  ∀ n, (P16877373137828409237.a n : ℤ) = A142907 (n + 1)

end A142907

/-! ## A142907.P3785212493828264474

`∩[A045471(n+1), A301623(n+1)]`
-/

namespace A142907.P3785212493828264474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045471 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301623 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142907.P3785212493828264474

namespace A142907

/-- `∩[A045471(n+1), A301623(n+1)]` -/
def P3785212493828264474.Spec : Prop :=
  ∀ n, (P3785212493828264474.a n : ℤ) = A142907 (n + 1)

end A142907

/-! ## A142907.P3959990690083984684

`∩[A141893(n+1), A301623(n+1)]`
-/

namespace A142907.P3959990690083984684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141893 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301623 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142907.P3959990690083984684

namespace A142907

/-- `∩[A141893(n+1), A301623(n+1)]` -/
def P3959990690083984684.Spec : Prop :=
  ∀ n, (P3959990690083984684.a n : ℤ) = A142907 (n + 1)

end A142907

/-! ## A142907.P7858469558878256204

`∩[A045462(n+1), A242215(n)]`
-/

namespace A142907.P7858469558878256204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045462 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242215 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142907.P7858469558878256204

namespace A142907

/-- `∩[A045462(n+1), A242215(n)]` -/
def P7858469558878256204.Spec : Prop :=
  ∀ n, (P7858469558878256204.a n : ℤ) = A142907 (n + 1)

end A142907

/-! ## A142907.P207492645717861438

`∩[A045471(n+1), A242215(n)]`
-/

namespace A142907.P207492645717861438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045471 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242215 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142907.P207492645717861438

namespace A142907

/-- `∩[A045471(n+1), A242215(n)]` -/
def P207492645717861438.Spec : Prop :=
  ∀ n, (P207492645717861438.a n : ℤ) = A142907 (n + 1)

end A142907

/-! ## A142907.P7353996632752463235

`∩[A141893(n+1), A242215(n)]`
-/

namespace A142907.P7353996632752463235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141893 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242215 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142907.P7353996632752463235

namespace A142907

/-- `∩[A141893(n+1), A242215(n)]` -/
def P7353996632752463235.Spec : Prop :=
  ∀ n, (P7353996632752463235.a n : ℤ) = A142907 (n + 1)

end A142907

/-! ## A142907.P191284096689830242

`∩[A061240(n+1), A358053(n+1)-2]`
-/

namespace A142907.P191284096689830242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061240 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358053 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142907.P191284096689830242

namespace A142907

/-- `∩[A061240(n+1), A358053(n+1)-2]` -/
def P191284096689830242.Spec : Prop :=
  ∀ n, (P191284096689830242.a n : ℤ) = A142907 (n + 1)

end A142907

/-! ## A142907.P13922192070867471638

`A000265(p?[ceil(63*n/2)])`
-/

namespace A142907.P13922192070867471638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈63 * ((n : ℚ) / 2)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142907.P13922192070867471638

namespace A142907

/-- `A000265(p?[ceil(63*n/2)])` -/
def P13922192070867471638.Spec : Prop :=
  ∀ n, P13922192070867471638.a n = A142907 (n + 1)

end A142907

/-! ## A142907.P14866087874589318241

`∩[A045462(n+1), A017221(n)]`
-/

namespace A142907.P14866087874589318241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045462 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017221 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142907.P14866087874589318241

namespace A142907

/-- `∩[A045462(n+1), A017221(n)]` -/
def P14866087874589318241.Spec : Prop :=
  ∀ n, (P14866087874589318241.a n : ℤ) = A142907 (n + 1)

end A142907

/-!
# A142908: Primes congruent to 34 mod 63.

The programs for A142908, the canonical program `A142908.P8797079807352569714` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142908 has offset 1).

The definition of A142908 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2193 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142908.P8797079807352569714

`p?[63*n-29]`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A142908

/-- `p?[63*n-29]` -/
def P8797079807352569714.Spec : Prop :=
  ∀ n, P8797079807352569714.a n = A142908 (n + 1)

theorem P8797079807352569714.correct : P8797079807352569714.Spec := by
  intro n
  simp only [A142908, Nat.add_sub_cancel]

end A142908

/-! ## A142908.P12550737731494371861

`∩[A061241(n+1), A141894(n+1)]`
-/

namespace A142908.P12550737731494371861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061241 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141894 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142908.P12550737731494371861

namespace A142908

/-- `∩[A061241(n+1), A141894(n+1)]` -/
def P12550737731494371861.Spec : Prop :=
  ∀ n, (P12550737731494371861.a n : ℤ) = A142908 (n + 1)

end A142908

/-! ## A142908.P6261490463672403295

`∩[A045473(n+1), A061241(n+1)]`
-/

namespace A142908.P6261490463672403295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045473 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061241 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142908.P6261490463672403295

namespace A142908

/-- `∩[A045473(n+1), A061241(n+1)]` -/
def P6261490463672403295.Spec : Prop :=
  ∀ n, (P6261490463672403295.a n : ℤ) = A142908 (n + 1)

end A142908

/-! ## A142908.P7048898961546339525

`∩[A004624(n+1), A061241(n+1)]`
-/

namespace A142908.P7048898961546339525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004624 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061241 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142908.P7048898961546339525

namespace A142908

/-- `∩[A004624(n+1), A061241(n+1)]` -/
def P7048898961546339525.Spec : Prop :=
  ∀ n, (P7048898961546339525.a n : ℤ) = A142908 (n + 1)

end A142908

/-! ## A142908.P10247588756887789240

`∩[A129807(n+1), A141894(n+1)]`
-/

namespace A142908.P10247588756887789240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129807 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141894 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142908.P10247588756887789240

namespace A142908

/-- `∩[A129807(n+1), A141894(n+1)]` -/
def P10247588756887789240.Spec : Prop :=
  ∀ n, (P10247588756887789240.a n : ℤ) = A142908 (n + 1)

end A142908

/-! ## A142908.P5202881156814704282

`∩[A045473(n+1), A301628(n+1)]`
-/

namespace A142908.P5202881156814704282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045473 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301628 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142908.P5202881156814704282

namespace A142908

/-- `∩[A045473(n+1), A301628(n+1)]` -/
def P5202881156814704282.Spec : Prop :=
  ∀ n, (P5202881156814704282.a n : ℤ) = A142908 (n + 1)

end A142908

/-! ## A142908.P15824640374114338859

`∩[A141894(n+1), A301628(n+1)]`
-/

namespace A142908.P15824640374114338859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141894 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301628 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142908.P15824640374114338859

namespace A142908

/-- `∩[A141894(n+1), A301628(n+1)]` -/
def P15824640374114338859.Spec : Prop :=
  ∀ n, (P15824640374114338859.a n : ℤ) = A142908 (n + 1)

end A142908

/-! ## A142908.P12023020969679555005

`∩[A078403(n+1), A141894(n+1)]`
-/

namespace A142908.P12023020969679555005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078403 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141894 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142908.P12023020969679555005

namespace A142908

/-- `∩[A078403(n+1), A141894(n+1)]` -/
def P12023020969679555005.Spec : Prop :=
  ∀ n, (P12023020969679555005.a n : ℤ) = A142908 (n + 1)

end A142908

/-! ## A142908.P13037730270105320135

`∩[A045473(n+1), A242215(n)+2]`
-/

namespace A142908.P13037730270105320135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045473 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242215 n + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142908.P13037730270105320135

namespace A142908

/-- `∩[A045473(n+1), A242215(n)+2]` -/
def P13037730270105320135.Spec : Prop :=
  ∀ n, (P13037730270105320135.a n : ℤ) = A142908 (n + 1)

end A142908

/-! ## A142908.P9563281870315689271

`∩[A242215(n+1)+2, A045464(n+2)]`
-/

namespace A142908.P9563281870315689271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242215 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045464 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142908.P9563281870315689271

namespace A142908

/-- `∩[A242215(n+1)+2, A045464(n+2)]` -/
def P9563281870315689271.Spec : Prop :=
  ∀ n, (P9563281870315689271.a n : ℤ) = A142908 (n + 1)

end A142908

/-! ## A142908.P4212721415414795012

`∩[A061241(n+1), A358053(n+1)]`
-/

namespace A142908.P4212721415414795012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061241 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358053 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142908.P4212721415414795012

namespace A142908

/-- `∩[A061241(n+1), A358053(n+1)]` -/
def P4212721415414795012.Spec : Prop :=
  ∀ n, (P4212721415414795012.a n : ℤ) = A142908 (n + 1)

end A142908

/-! ## A142908.P17969468258574647643

`∩[A061241(n+1), A131877(n)-2]`
-/

namespace A142908.P17969468258574647643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061241 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131877 n - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142908.P17969468258574647643

namespace A142908

/-- `∩[A061241(n+1), A131877(n)-2]` -/
def P17969468258574647643.Spec : Prop :=
  ∀ n, (P17969468258574647643.a n : ℤ) = A142908 (n + 1)

end A142908

/-! ## A142908.P14644972587366660912

`record[A020639(3*42*(n+1)-29)]`
-/

namespace A142908.P14644972587366660912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (3 * (42 * (n + 1)) - 29)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142908.P14644972587366660912

namespace A142908

/-- `record[A020639(3*42*(n+1)-29)]` -/
def P14644972587366660912.Spec : Prop :=
  ∀ n, P14644972587366660912.a n = A142908 (n + 1)

end A142908

/-! ## A142908.P9424477505942494430

`or(1, p?[A309231(A017029(n))])`
-/

namespace A142908.P9424477505942494430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309231 (A017029 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A142908.P9424477505942494430

namespace A142908

/-- `or(1, p?[A309231(A017029(n))])` -/
def P9424477505942494430.Spec : Prop :=
  ∀ n, P9424477505942494430.a n = A142908 (n + 1)

end A142908

/-! ## A142908.P2172818127520448205

`∩[A045473(n+1), A017245(n)]`
-/

namespace A142908.P2172818127520448205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045473 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017245 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142908.P2172818127520448205

namespace A142908

/-- `∩[A045473(n+1), A017245(n)]` -/
def P2172818127520448205.Spec : Prop :=
  ∀ n, (P2172818127520448205.a n : ℤ) = A142908 (n + 1)

end A142908

/-! ## A142908.P16576735443085444512

`∩[A141894(n+1), A017245(n)]`
-/

namespace A142908.P16576735443085444512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141894 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017245 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142908.P16576735443085444512

namespace A142908

/-- `∩[A141894(n+1), A017245(n)]` -/
def P16576735443085444512.Spec : Prop :=
  ∀ n, (P16576735443085444512.a n : ℤ) = A142908 (n + 1)

end A142908

/-! ## A142908.P17053349864833167790

`∩[A141894(n+1), A309231(n+1)]`
-/

namespace A142908.P17053349864833167790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141894 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309231 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142908.P17053349864833167790

namespace A142908

/-- `∩[A141894(n+1), A309231(n+1)]` -/
def P17053349864833167790.Spec : Prop :=
  ∀ n, (P17053349864833167790.a n : ℤ) = A142908 (n + 1)

end A142908

/-! ## A142908.P16638013456592394949

`∩[A141894(n+1), A326664(n+1)]`
-/

namespace A142908.P16638013456592394949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141894 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326664 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142908.P16638013456592394949

namespace A142908

/-- `∩[A141894(n+1), A326664(n+1)]` -/
def P16638013456592394949.Spec : Prop :=
  ∀ n, (P16638013456592394949.a n : ℤ) = A142908 (n + 1)

end A142908

/-! ## A142908.P3796584365007901380

`∩[A045473(n+1), A017221(n)+2]`
-/

namespace A142908.P3796584365007901380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045473 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017221 n + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142908.P3796584365007901380

namespace A142908

/-- `∩[A045473(n+1), A017221(n)+2]` -/
def P3796584365007901380.Spec : Prop :=
  ∀ n, (P3796584365007901380.a n : ℤ) = A142908 (n + 1)

end A142908

/-!
# A142909: Primes congruent to 37 mod 63.

The programs for A142909, the canonical program `A142909.P17077179559198250152` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142909 has offset 1).

The definition of A142909 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2172 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142909.P17077179559198250152

`p?[63*n-26]`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A142909

/-- `p?[63*n-26]` -/
def P17077179559198250152.Spec : Prop :=
  ∀ n, P17077179559198250152.a n = A142909 (n + 1)

theorem P17077179559198250152.correct : P17077179559198250152.Spec := by
  intro n
  simp only [A142909, Nat.add_sub_cancel]

end A142909

/-! ## A142909.P6405323523668405969

`∩[A061237(n+1), A141895(n+1)]`
-/

namespace A142909.P6405323523668405969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061237 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141895 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142909.P6405323523668405969

namespace A142909

/-- `∩[A061237(n+1), A141895(n+1)]` -/
def P6405323523668405969.Spec : Prop :=
  ∀ n, (P6405323523668405969.a n : ℤ) = A142909 (n + 1)

end A142909

/-! ## A142909.P16902150409025474833

`∩[A045383(n+1), A061237(n+1)]`
-/

namespace A142909.P16902150409025474833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045383 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061237 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142909.P16902150409025474833

namespace A142909

/-- `∩[A045383(n+1), A061237(n+1)]` -/
def P16902150409025474833.Spec : Prop :=
  ∀ n, (P16902150409025474833.a n : ℤ) = A142909 (n + 1)

end A142909

/-! ## A142909.P17728108017623030785

`∩[A045392(n+1), A061237(n+1)]`
-/

namespace A142909.P17728108017623030785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045392 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061237 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142909.P17728108017623030785

namespace A142909

/-- `∩[A045392(n+1), A061237(n+1)]` -/
def P17728108017623030785.Spec : Prop :=
  ∀ n, (P17728108017623030785.a n : ℤ) = A142909 (n + 1)

end A142909

/-! ## A142909.P15250375535160190247

`∩[A061237(n+1), A140442(n+1)]`
-/

namespace A142909.P15250375535160190247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061237 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140442 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142909.P15250375535160190247

namespace A142909

/-- `∩[A061237(n+1), A140442(n+1)]` -/
def P15250375535160190247.Spec : Prop :=
  ∀ n, (P15250375535160190247.a n : ℤ) = A142909 (n + 1)

end A142909

/-! ## A142909.P8673814086300133121

`∩[A129805(n+1), A141895(n+1)]`
-/

namespace A142909.P8673814086300133121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129805 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141895 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142909.P8673814086300133121

namespace A142909

/-- `∩[A129805(n+1), A141895(n+1)]` -/
def P8673814086300133121.Spec : Prop :=
  ∀ n, (P8673814086300133121.a n : ℤ) = A142909 (n + 1)

end A142909

/-! ## A142909.P15790729011640534

`or(1, p?[A174029(n)+A161705(n)])`
-/

namespace A142909.P15790729011640534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174029 n + A161705 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A142909.P15790729011640534

namespace A142909

/-- `or(1, p?[A174029(n)+A161705(n)])` -/
def P15790729011640534.Spec : Prop :=
  ∀ n, P15790729011640534.a n = A142909 (n + 1)

end A142909

/-! ## A142909.P16221497153137632613

`A000027(p?[A174029(n)+A161705(n)])`
-/

namespace A142909.P16221497153137632613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174029 n + A161705 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142909.P16221497153137632613

namespace A142909

/-- `A000027(p?[A174029(n)+A161705(n)])` -/
def P16221497153137632613.Spec : Prop :=
  ∀ n, P16221497153137632613.a n = A142909 (n + 1)

end A142909

/-! ## A142909.P75087916948763537

`p?[A174029(n)+A161705(n)]+A008683(4*(n+1))`
-/

namespace A142909.P75087916948763537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174029 n + A161705 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + A008683 (4 * (n + 1))

end

end A142909.P75087916948763537

namespace A142909

/-- `p?[A174029(n)+A161705(n)]+A008683(4*(n+1))` -/
def P75087916948763537.Spec : Prop :=
  ∀ n, P75087916948763537.a n = A142909 (n + 1)

end A142909

/-! ## A142909.P13748738634977965410

`∩[A004620(n+1), A061237(n+1)]`
-/

namespace A142909.P13748738634977965410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004620 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061237 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142909.P13748738634977965410

namespace A142909

/-- `∩[A004620(n+1), A061237(n+1)]` -/
def P13748738634977965410.Spec : Prop :=
  ∀ n, (P13748738634977965410.a n : ℤ) = A142909 (n + 1)

end A142909

/-! ## A142909.P10677252949304617855

`∩[A045383(n+1), A301617(n+1)]`
-/

namespace A142909.P10677252949304617855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045383 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301617 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142909.P10677252949304617855

namespace A142909

/-- `∩[A045383(n+1), A301617(n+1)]` -/
def P10677252949304617855.Spec : Prop :=
  ∀ n, (P10677252949304617855.a n : ℤ) = A142909 (n + 1)

end A142909

/-! ## A142909.P10553448708171067905

`∩[A045392(n+1), A301617(n+1)]`
-/

namespace A142909.P10553448708171067905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045392 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301617 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142909.P10553448708171067905

namespace A142909

/-- `∩[A045392(n+1), A301617(n+1)]` -/
def P10553448708171067905.Spec : Prop :=
  ∀ n, (P10553448708171067905.a n : ℤ) = A142909 (n + 1)

end A142909

/-! ## A142909.P4340253588322975768

`∩[A140442(n+1), A301617(n+1)]`
-/

namespace A142909.P4340253588322975768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140442 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301617 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142909.P4340253588322975768

namespace A142909

/-- `∩[A140442(n+1), A301617(n+1)]` -/
def P4340253588322975768.Spec : Prop :=
  ∀ n, (P4340253588322975768.a n : ℤ) = A142909 (n + 1)

end A142909

/-! ## A142909.P16936159573306702600

`∩[A141895(n+1), A301617(n+1)]`
-/

namespace A142909.P16936159573306702600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141895 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301617 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142909.P16936159573306702600

namespace A142909

/-- `∩[A141895(n+1), A301617(n+1)]` -/
def P16936159573306702600.Spec : Prop :=
  ∀ n, (P16936159573306702600.a n : ℤ) = A142909 (n + 1)

end A142909

/-! ## A142909.P15973432641211269478

`∩[A061237(n+1), A258016(n+1)-2]`
-/

namespace A142909.P15973432641211269478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061237 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258016 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142909.P15973432641211269478

namespace A142909

/-- `∩[A061237(n+1), A258016(n+1)-2]` -/
def P15973432641211269478.Spec : Prop :=
  ∀ n, (P15973432641211269478.a n : ℤ) = A142909 (n + 1)

end A142909

/-! ## A142909.P14955755729217471980

`∩[A045383(n+1), A161705(n)]`
-/

namespace A142909.P14955755729217471980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045383 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161705 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142909.P14955755729217471980

namespace A142909

/-- `∩[A045383(n+1), A161705(n)]` -/
def P14955755729217471980.Spec : Prop :=
  ∀ n, (P14955755729217471980.a n : ℤ) = A142909 (n + 1)

end A142909

/-! ## A142909.P188756962155386655

`∩[A045392(n+1), A161705(n)]`
-/

namespace A142909.P188756962155386655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045392 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161705 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142909.P188756962155386655

namespace A142909

/-- `∩[A045392(n+1), A161705(n)]` -/
def P188756962155386655.Spec : Prop :=
  ∀ n, (P188756962155386655.a n : ℤ) = A142909 (n + 1)

end A142909

/-! ## A142909.P11876104897754145610

`∩[A140442(n+1), A161705(n)]`
-/

namespace A142909.P11876104897754145610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140442 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161705 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142909.P11876104897754145610

namespace A142909

/-- `∩[A140442(n+1), A161705(n)]` -/
def P11876104897754145610.Spec : Prop :=
  ∀ n, (P11876104897754145610.a n : ℤ) = A142909 (n + 1)

end A142909

/-! ## A142909.P10725016511970947094

`∩[A141895(n+1), A161705(n)]`
-/

namespace A142909.P10725016511970947094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141895 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161705 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142909.P10725016511970947094

namespace A142909

/-- `∩[A141895(n+1), A161705(n)]` -/
def P10725016511970947094.Spec : Prop :=
  ∀ n, (P10725016511970947094.a n : ℤ) = A142909 (n + 1)

end A142909

/-! ## A142909.P14248536377172870678

`∩[A045383(n+1), A239129(n+1)+2]`
-/

namespace A142909.P14248536377172870678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045383 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239129 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142909.P14248536377172870678

namespace A142909

/-- `∩[A045383(n+1), A239129(n+1)+2]` -/
def P14248536377172870678.Spec : Prop :=
  ∀ n, (P14248536377172870678.a n : ℤ) = A142909 (n + 1)

end A142909

/-!
# A142910: Primes congruent to 38 mod 63.

The programs for A142910, the canonical program `A142910.P5060616705458251258` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142910 has offset 1).

The definition of A142910 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2173 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142910.P5060616705458251258

`p?[63*n-25]`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A142910

/-- `p?[63*n-25]` -/
def P5060616705458251258.Spec : Prop :=
  ∀ n, P5060616705458251258.a n = A142910 (n + 1)

theorem P5060616705458251258.correct : P5060616705458251258.Spec := by
  intro n
  simp only [A142910, Nat.add_sub_cancel]

end A142910

/-! ## A142910.P15789124292182921664

`∩[A045425(n+1), A061238(n+1)]`
-/

namespace A142910.P15789124292182921664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045425 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061238 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142910.P15789124292182921664

namespace A142910

/-- `∩[A045425(n+1), A061238(n+1)]` -/
def P15789124292182921664.Spec : Prop :=
  ∀ n, (P15789124292182921664.a n : ℤ) = A142910 (n + 1)

end A142910

/-! ## A142910.P1127696922971452905

`∩[A045437(n+1), A061238(n+1)]`
-/

namespace A142910.P1127696922971452905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045437 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061238 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142910.P1127696922971452905

namespace A142910

/-- `∩[A045437(n+1), A061238(n+1)]` -/
def P1127696922971452905.Spec : Prop :=
  ∀ n, (P1127696922971452905.a n : ℤ) = A142910 (n + 1)

end A142910

/-! ## A142910.P5227176251755695656

`∩[A061238(n+1), A141896(n+1)]`
-/

namespace A142910.P5227176251755695656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061238 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141896 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142910.P5227176251755695656

namespace A142910

/-- `∩[A061238(n+1), A141896(n+1)]` -/
def P5227176251755695656.Spec : Prop :=
  ∀ n, (P5227176251755695656.a n : ℤ) = A142910 (n + 1)

end A142910

/-! ## A142910.P3781514986635294721

`A000038(n+1)+p?[A305068(n+1)+A017185(n)]`
-/

namespace A142910.P3781514986635294721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305068 (n + 1) + A017185 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (n + 1) + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142910.P3781514986635294721

namespace A142910

/-- `A000038(n+1)+p?[A305068(n+1)+A017185(n)]` -/
def P3781514986635294721.Spec : Prop :=
  ∀ n, P3781514986635294721.a n = A142910 (n + 1)

end A142910

/-! ## A142910.P6457688834192706030

`A008836(n+1)²*p?[A305068(n+1)+A017185(n)]`
-/

namespace A142910.P6457688834192706030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305068 (n + 1) + A017185 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (n + 1) ^ 2 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142910.P6457688834192706030

namespace A142910

/-- `A008836(n+1)²*p?[A305068(n+1)+A017185(n)]` -/
def P6457688834192706030.Spec : Prop :=
  ∀ n, P6457688834192706030.a n = A142910 (n + 1)

end A142910

/-! ## A142910.P8641390549750569278

`A000027(p?[A305068(n+1)+A017185(n)])`
-/

namespace A142910.P8641390549750569278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305068 (n + 1) + A017185 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142910.P8641390549750569278

namespace A142910

/-- `A000027(p?[A305068(n+1)+A017185(n)])` -/
def P8641390549750569278.Spec : Prop :=
  ∀ n, P8641390549750569278.a n = A142910 (n + 1)

end A142910

/-! ## A142910.P6847380064233697705

`p?[A305068(n+1)+A017185(n)]*A181157(10*n+5)`
-/

namespace A142910.P6847380064233697705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305068 (n + 1) + A017185 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * A181157 (10 * n + 5)

end

end A142910.P6847380064233697705

namespace A142910

/-- `p?[A305068(n+1)+A017185(n)]*A181157(10*n+5)` -/
def P6847380064233697705.Spec : Prop :=
  ∀ n, P6847380064233697705.a n = A142910 (n + 1)

end A142910

/-! ## A142910.P6116840053395450273

`∩[A004621(n+1), A061238(n+1)]`
-/

namespace A142910.P6116840053395450273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004621 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061238 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142910.P6116840053395450273

namespace A142910

/-- `∩[A004621(n+1), A061238(n+1)]` -/
def P6116840053395450273.Spec : Prop :=
  ∀ n, (P6116840053395450273.a n : ℤ) = A142910 (n + 1)

end A142910

/-! ## A142910.P17592126443277835167

`∩[A129807(n+1), A141896(n+1)]`
-/

namespace A142910.P17592126443277835167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129807 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141896 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142910.P17592126443277835167

namespace A142910

/-- `∩[A129807(n+1), A141896(n+1)]` -/
def P17592126443277835167.Spec : Prop :=
  ∀ n, (P17592126443277835167.a n : ℤ) = A142910 (n + 1)

end A142910

/-! ## A142910.P1329231131348992801

`∩[A045425(n+1), A301621(n+1)]`
-/

namespace A142910.P1329231131348992801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045425 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301621 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142910.P1329231131348992801

namespace A142910

/-- `∩[A045425(n+1), A301621(n+1)]` -/
def P1329231131348992801.Spec : Prop :=
  ∀ n, (P1329231131348992801.a n : ℤ) = A142910 (n + 1)

end A142910

/-! ## A142910.P6239623118767812215

`∩[A045437(n+1), A301621(n+1)]`
-/

namespace A142910.P6239623118767812215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045437 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301621 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142910.P6239623118767812215

namespace A142910

/-- `∩[A045437(n+1), A301621(n+1)]` -/
def P6239623118767812215.Spec : Prop :=
  ∀ n, (P6239623118767812215.a n : ℤ) = A142910 (n + 1)

end A142910

/-! ## A142910.P8492124431680273816

`∩[A141896(n+1), A301621(n+1)]`
-/

namespace A142910.P8492124431680273816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141896 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301621 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142910.P8492124431680273816

namespace A142910

/-- `∩[A141896(n+1), A301621(n+1)]` -/
def P8492124431680273816.Spec : Prop :=
  ∀ n, (P8492124431680273816.a n : ℤ) = A142910 (n + 1)

end A142910

/-! ## A142910.P12349665827437551255

`∩[A258016(2*n+1)-2, A129807(n+2)]`
-/

namespace A142910.P12349665827437551255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258016 (2 * n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129807 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142910.P12349665827437551255

namespace A142910

/-- `∩[A258016(2*n+1)-2, A129807(n+2)]` -/
def P12349665827437551255.Spec : Prop :=
  ∀ n, (P12349665827437551255.a n : ℤ) = A142910 (n + 1)

end A142910

/-! ## A142910.P5782787334673090335

`∩[A045425(n+1), A063305(n+2)-2]`
-/

namespace A142910.P5782787334673090335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045425 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063305 (n + 2) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142910.P5782787334673090335

namespace A142910

/-- `∩[A045425(n+1), A063305(n+2)-2]` -/
def P5782787334673090335.Spec : Prop :=
  ∀ n, (P5782787334673090335.a n : ℤ) = A142910 (n + 1)

end A142910

/-! ## A142910.P9885858019071516163

`∩[A045437(n+1), A063305(n+2)-2]`
-/

namespace A142910.P9885858019071516163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045437 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063305 (n + 2) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142910.P9885858019071516163

namespace A142910

/-- `∩[A045437(n+1), A063305(n+2)-2]` -/
def P9885858019071516163.Spec : Prop :=
  ∀ n, (P9885858019071516163.a n : ℤ) = A142910 (n + 1)

end A142910

/-! ## A142910.P942048711806849917

`∩[A061238(n+1), A131877(n)+2]`
-/

namespace A142910.P942048711806849917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061238 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131877 n + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142910.P942048711806849917

namespace A142910

/-- `∩[A061238(n+1), A131877(n)+2]` -/
def P942048711806849917.Spec : Prop :=
  ∀ n, (P942048711806849917.a n : ℤ) = A142910 (n + 1)

end A142910

/-! ## A142910.P11729524212096692952

`∩[A061238(n+1), A126980(n)-2]`
-/

namespace A142910.P11729524212096692952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061238 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126980 n - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142910.P11729524212096692952

namespace A142910

/-- `∩[A061238(n+1), A126980(n)-2]` -/
def P11729524212096692952.Spec : Prop :=
  ∀ n, (P11729524212096692952.a n : ℤ) = A142910 (n + 1)

end A142910

/-! ## A142910.P12743157710969197581

`∩[A045425(n+1), A076206(n+1)]`
-/

namespace A142910.P12743157710969197581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045425 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076206 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142910.P12743157710969197581

namespace A142910

/-- `∩[A045425(n+1), A076206(n+1)]` -/
def P12743157710969197581.Spec : Prop :=
  ∀ n, (P12743157710969197581.a n : ℤ) = A142910 (n + 1)

end A142910

/-! ## A142910.P18310767877252054383

`∩[A045437(n+1), A076206(n+1)]`
-/

namespace A142910.P18310767877252054383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045437 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076206 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142910.P18310767877252054383

namespace A142910

/-- `∩[A045437(n+1), A076206(n+1)]` -/
def P18310767877252054383.Spec : Prop :=
  ∀ n, (P18310767877252054383.a n : ℤ) = A142910 (n + 1)

end A142910

/-!
# A142911: Primes congruent to 40 mod 63.

The programs for A142911, the canonical program `A142911.P11217717950147313963` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142911 has offset 1).

The definition of A142911 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2176 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142911.P11217717950147313963

`p?[63*n-23]`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A142911

/-- `p?[63*n-23]` -/
def P11217717950147313963.Spec : Prop :=
  ∀ n, P11217717950147313963.a n = A142911 (n + 1)

theorem P11217717950147313963.correct : P11217717950147313963.Spec := by
  intro n
  simp only [A142911, Nat.add_sub_cancel]

end A142911

/-! ## A142911.P2541775448435235218

`∩[A045447(n+1), A061239(n+1)]`
-/

namespace A142911.P2541775448435235218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045447 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061239 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142911.P2541775448435235218

namespace A142911

/-- `∩[A045447(n+1), A061239(n+1)]` -/
def P2541775448435235218.Spec : Prop :=
  ∀ n, (P2541775448435235218.a n : ℤ) = A142911 (n + 1)

end A142911

/-! ## A142911.P9683343114236434490

`∩[A045458(n+1), A061239(n+1)]`
-/

namespace A142911.P9683343114236434490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045458 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061239 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142911.P9683343114236434490

namespace A142911

/-- `∩[A045458(n+1), A061239(n+1)]` -/
def P9683343114236434490.Spec : Prop :=
  ∀ n, (P9683343114236434490.a n : ℤ) = A142911 (n + 1)

end A142911

/-! ## A142911.P16731975341704686514

`∩[A061239(n+1), A141897(n+1)]`
-/

namespace A142911.P16731975341704686514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061239 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141897 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142911.P16731975341704686514

namespace A142911

/-- `∩[A061239(n+1), A141897(n+1)]` -/
def P16731975341704686514.Spec : Prop :=
  ∀ n, (P16731975341704686514.a n : ℤ) = A142911 (n + 1)

end A142911

/-! ## A142911.P6340168456042517491

`A000027(p?[A165372(n+2)-(n-1)%(n+1)])`
-/

namespace A142911.P6340168456042517491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165372 (n + 2) - Int.tmod ((n : ℤ) - 1) (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142911.P6340168456042517491

namespace A142911

/-- `A000027(p?[A165372(n+2)-(n-1)%(n+1)])` -/
def P6340168456042517491.Spec : Prop :=
  ∀ n, P6340168456042517491.a n = A142911 (n + 1)

end A142911

/-! ## A142911.P16932730536595576938

`∩[A004623(n+1), A061239(n+1)]`
-/

namespace A142911.P16932730536595576938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004623 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061239 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142911.P16932730536595576938

namespace A142911

/-- `∩[A004623(n+1), A061239(n+1)]` -/
def P16932730536595576938.Spec : Prop :=
  ∀ n, (P16932730536595576938.a n : ℤ) = A142911 (n + 1)

end A142911

/-! ## A142911.P15407272598822642564

`∩[A129806(n+1), A141897(n+1)]`
-/

namespace A142911.P15407272598822642564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129806 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141897 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142911.P15407272598822642564

namespace A142911

/-- `∩[A129806(n+1), A141897(n+1)]` -/
def P15407272598822642564.Spec : Prop :=
  ∀ n, (P15407272598822642564.a n : ℤ) = A142911 (n + 1)

end A142911

/-! ## A142911.P16644480564999453094

`∩[A079132(n+1), A141897(n+1)]`
-/

namespace A142911.P16644480564999453094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079132 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141897 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142911.P16644480564999453094

namespace A142911

/-- `∩[A079132(n+1), A141897(n+1)]` -/
def P16644480564999453094.Spec : Prop :=
  ∀ n, (P16644480564999453094.a n : ℤ) = A142911 (n + 1)

end A142911

/-! ## A142911.P17289760933255405041

`∩[A045447(n+1), A301622(n+1)]`
-/

namespace A142911.P17289760933255405041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045447 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301622 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142911.P17289760933255405041

namespace A142911

/-- `∩[A045447(n+1), A301622(n+1)]` -/
def P17289760933255405041.Spec : Prop :=
  ∀ n, (P17289760933255405041.a n : ℤ) = A142911 (n + 1)

end A142911

/-! ## A142911.P14457104076221333231

`∩[A045458(n+1), A301622(n+1)]`
-/

namespace A142911.P14457104076221333231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045458 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301622 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142911.P14457104076221333231

namespace A142911

/-- `∩[A045458(n+1), A301622(n+1)]` -/
def P14457104076221333231.Spec : Prop :=
  ∀ n, (P14457104076221333231.a n : ℤ) = A142911 (n + 1)

end A142911

/-! ## A142911.P8928101001170092950

`∩[A141897(n+1), A301622(n+1)]`
-/

namespace A142911.P8928101001170092950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141897 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301622 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142911.P8928101001170092950

namespace A142911

/-- `∩[A141897(n+1), A301622(n+1)]` -/
def P8928101001170092950.Spec : Prop :=
  ∀ n, (P8928101001170092950.a n : ℤ) = A142911 (n + 1)

end A142911

/-! ## A142911.P6532558211997625179

`or(1, p?[A258016(A016789(n))])`
-/

namespace A142911.P6532558211997625179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258016 (A016789 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A142911.P6532558211997625179

namespace A142911

/-- `or(1, p?[A258016(A016789(n))])` -/
def P6532558211997625179.Spec : Prop :=
  ∀ n, P6532558211997625179.a n = A142911 (n + 1)

end A142911

/-! ## A142911.P16149975236965966829

`∩[A061239(n+1), A258016(n+1)]`
-/

namespace A142911.P16149975236965966829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061239 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258016 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142911.P16149975236965966829

namespace A142911

/-- `∩[A061239(n+1), A258016(n+1)]` -/
def P16149975236965966829.Spec : Prop :=
  ∀ n, (P16149975236965966829.a n : ℤ) = A142911 (n + 1)

end A142911

/-! ## A142911.P9281548705390556041

`∩[A079132(n+1), A258016(n+1)]`
-/

namespace A142911.P9281548705390556041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079132 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258016 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142911.P9281548705390556041

namespace A142911

/-- `∩[A079132(n+1), A258016(n+1)]` -/
def P9281548705390556041.Spec : Prop :=
  ∀ n, (P9281548705390556041.a n : ℤ) = A142911 (n + 1)

end A142911

/-! ## A142911.P3226809785531915462

`∩[A129806(n+1), A258016(n+1)]`
-/

namespace A142911.P3226809785531915462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129806 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258016 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142911.P3226809785531915462

namespace A142911

/-- `∩[A129806(n+1), A258016(n+1)]` -/
def P3226809785531915462.Spec : Prop :=
  ∀ n, (P3226809785531915462.a n : ℤ) = A142911 (n + 1)

end A142911

/-! ## A142911.P331650564082545557

`p?[A258016(A016789(n))]+A008683(8*n+4)`
-/

namespace A142911.P331650564082545557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258016 (A016789 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + A008683 (8 * n + 4)

end

end A142911.P331650564082545557

namespace A142911

/-- `p?[A258016(A016789(n))]+A008683(8*n+4)` -/
def P331650564082545557.Spec : Prop :=
  ∀ n, P331650564082545557.a n = A142911 (n + 1)

end A142911

/-! ## A142911.P13014189174318807718

`A007318(n²%(n+1))*p?[A258016(A016789(n))]`
-/

namespace A142911.P13014189174318807718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258016 (A016789 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (n ^ 2 % (n + 1)) * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142911.P13014189174318807718

namespace A142911

/-- `A007318(n²%(n+1))*p?[A258016(A016789(n))]` -/
def P13014189174318807718.Spec : Prop :=
  ∀ n, P13014189174318807718.a n = A142911 (n + 1)

end A142911

/-! ## A142911.P12248030569649751754

`∩[A045447(n+1), A063305(n+2)]`
-/

namespace A142911.P12248030569649751754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045447 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063305 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142911.P12248030569649751754

namespace A142911

/-- `∩[A045447(n+1), A063305(n+2)]` -/
def P12248030569649751754.Spec : Prop :=
  ∀ n, (P12248030569649751754.a n : ℤ) = A142911 (n + 1)

end A142911

/-! ## A142911.P12112545428482604167

`∩[A045458(n+1), A063305(n+2)]`
-/

namespace A142911.P12112545428482604167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045458 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063305 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142911.P12112545428482604167

namespace A142911

/-- `∩[A045458(n+1), A063305(n+2)]` -/
def P12112545428482604167.Spec : Prop :=
  ∀ n, (P12112545428482604167.a n : ℤ) = A142911 (n + 1)

end A142911

/-! ## A142911.P14442764343338231097

`∩[A141897(n+1), A063305(n+2)]`
-/

namespace A142911.P14442764343338231097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141897 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063305 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142911.P14442764343338231097

namespace A142911

/-- `∩[A141897(n+1), A063305(n+2)]` -/
def P14442764343338231097.Spec : Prop :=
  ∀ n, (P14442764343338231097.a n : ℤ) = A142911 (n + 1)

end A142911

/-!
# A142912: Primes congruent to 41 mod 63.

The programs for A142912, the canonical program `A142912.P7108346973952550342` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142912 has offset 1).

The definition of A142912 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2197 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142912.P7108346973952550342

`p?[63*n-22]`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A142912

/-- `p?[63*n-22]` -/
def P7108346973952550342.Spec : Prop :=
  ∀ n, P7108346973952550342.a n = A142912 (n + 1)

theorem P7108346973952550342.correct : P7108346973952550342.Spec := by
  intro n
  simp only [A142912, Nat.add_sub_cancel]

end A142912

/-! ## A142912.P9774193210510617005

`∩[A045464(n+1), A061240(n+1)]`
-/

namespace A142912.P9774193210510617005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045464 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061240 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142912.P9774193210510617005

namespace A142912

/-- `∩[A045464(n+1), A061240(n+1)]` -/
def P9774193210510617005.Spec : Prop :=
  ∀ n, (P9774193210510617005.a n : ℤ) = A142912 (n + 1)

end A142912

/-! ## A142912.P780921226293967329

`∩[A045473(n+1), A061240(n+1)]`
-/

namespace A142912.P780921226293967329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045473 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061240 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142912.P780921226293967329

namespace A142912

/-- `∩[A045473(n+1), A061240(n+1)]` -/
def P780921226293967329.Spec : Prop :=
  ∀ n, (P780921226293967329.a n : ℤ) = A142912 (n + 1)

end A142912

/-! ## A142912.P17941272243359975940

`∩[A061240(n+1), A141898(n+1)]`
-/

namespace A142912.P17941272243359975940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061240 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141898 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142912.P17941272243359975940

namespace A142912

/-- `∩[A061240(n+1), A141898(n+1)]` -/
def P17941272243359975940.Spec : Prop :=
  ∀ n, (P17941272243359975940.a n : ℤ) = A142912 (n + 1)

end A142912

/-! ## A142912.P12075813671524300571

`∩[A004624(n+1), A061240(n+1)]`
-/

namespace A142912.P12075813671524300571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004624 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061240 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142912.P12075813671524300571

namespace A142912

/-- `∩[A004624(n+1), A061240(n+1)]` -/
def P12075813671524300571.Spec : Prop :=
  ∀ n, (P12075813671524300571.a n : ℤ) = A142912 (n + 1)

end A142912

/-! ## A142912.P10504778588181327342

`∩[A129806(n+1), A141898(n+1)]`
-/

namespace A142912.P10504778588181327342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129806 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141898 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142912.P10504778588181327342

namespace A142912

/-- `∩[A129806(n+1), A141898(n+1)]` -/
def P10504778588181327342.Spec : Prop :=
  ∀ n, (P10504778588181327342.a n : ℤ) = A142912 (n + 1)

end A142912

/-! ## A142912.P16896936104219849193

`∩[A045464(n+1), A301623(n+1)]`
-/

namespace A142912.P16896936104219849193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045464 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301623 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142912.P16896936104219849193

namespace A142912

/-- `∩[A045464(n+1), A301623(n+1)]` -/
def P16896936104219849193.Spec : Prop :=
  ∀ n, (P16896936104219849193.a n : ℤ) = A142912 (n + 1)

end A142912

/-! ## A142912.P8307897772747748423

`∩[A045473(n+1), A301623(n+1)]`
-/

namespace A142912.P8307897772747748423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045473 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301623 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142912.P8307897772747748423

namespace A142912

/-- `∩[A045473(n+1), A301623(n+1)]` -/
def P8307897772747748423.Spec : Prop :=
  ∀ n, (P8307897772747748423.a n : ℤ) = A142912 (n + 1)

end A142912

/-! ## A142912.P11728943358055399055

`∩[A141898(n+1), A301623(n+1)]`
-/

namespace A142912.P11728943358055399055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141898 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301623 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142912.P11728943358055399055

namespace A142912

/-- `∩[A141898(n+1), A301623(n+1)]` -/
def P11728943358055399055.Spec : Prop :=
  ∀ n, (P11728943358055399055.a n : ℤ) = A142912 (n + 1)

end A142912

/-! ## A142912.P17084713229776091165

`∩[A079131(n+1), A141898(n+1)]`
-/

namespace A142912.P17084713229776091165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079131 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141898 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142912.P17084713229776091165

namespace A142912

/-- `∩[A079131(n+1), A141898(n+1)]` -/
def P17084713229776091165.Spec : Prop :=
  ∀ n, (P17084713229776091165.a n : ℤ) = A142912 (n + 1)

end A142912

/-! ## A142912.P3178721831068449060

`record[p?[A215146(A001281(n))-2]]`
-/

namespace A142912.P3178721831068449060
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215146 (A001281 n).toNat - 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142912.P3178721831068449060

namespace A142912

/-- `record[p?[A215146(A001281(n))-2]]` -/
def P3178721831068449060.Spec : Prop :=
  ∀ n, P3178721831068449060.a n = A142912 (n + 1)

end A142912

/-! ## A142912.P10422072865856948889

`∩[A129806(n+1), A215146(n)-2]`
-/

namespace A142912.P10422072865856948889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129806 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215146 n - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142912.P10422072865856948889

namespace A142912

/-- `∩[A129806(n+1), A215146(n)-2]` -/
def P10422072865856948889.Spec : Prop :=
  ∀ n, (P10422072865856948889.a n : ℤ) = A142912 (n + 1)

end A142912

/-! ## A142912.P443514523818794965

`∩[A129806(n+1), A258016(n+1)+2]`
-/

namespace A142912.P443514523818794965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129806 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258016 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142912.P443514523818794965

namespace A142912

/-- `∩[A129806(n+1), A258016(n+1)+2]` -/
def P443514523818794965.Spec : Prop :=
  ∀ n, (P443514523818794965.a n : ℤ) = A142912 (n + 1)

end A142912

/-! ## A142912.P13215643071901034783

`∩[A045464(n+1), A242215(n)]`
-/

namespace A142912.P13215643071901034783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045464 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242215 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142912.P13215643071901034783

namespace A142912

/-- `∩[A045464(n+1), A242215(n)]` -/
def P13215643071901034783.Spec : Prop :=
  ∀ n, (P13215643071901034783.a n : ℤ) = A142912 (n + 1)

end A142912

/-! ## A142912.P16169833356856785191

`∩[A045473(n+1), A242215(n)]`
-/

namespace A142912.P16169833356856785191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045473 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242215 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142912.P16169833356856785191

namespace A142912

/-- `∩[A045473(n+1), A242215(n)]` -/
def P16169833356856785191.Spec : Prop :=
  ∀ n, (P16169833356856785191.a n : ℤ) = A142912 (n + 1)

end A142912

/-! ## A142912.P10293678261183259531

`∩[A141898(n+1), A242215(n)]`
-/

namespace A142912.P10293678261183259531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141898 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242215 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142912.P10293678261183259531

namespace A142912

/-- `∩[A141898(n+1), A242215(n)]` -/
def P10293678261183259531.Spec : Prop :=
  ∀ n, (P10293678261183259531.a n : ℤ) = A142912 (n + 1)

end A142912

/-! ## A142912.P518322684217774012

`∩[A061240(n+1), A358053(n+1)]`
-/

namespace A142912.P518322684217774012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061240 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358053 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142912.P518322684217774012

namespace A142912

/-- `∩[A061240(n+1), A358053(n+1)]` -/
def P518322684217774012.Spec : Prop :=
  ∀ n, (P518322684217774012.a n : ℤ) = A142912 (n + 1)

end A142912

/-! ## A142912.P4742729771581837755

`∩[A061240(n+1), A131877(n)-2]`
-/

namespace A142912.P4742729771581837755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061240 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131877 n - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142912.P4742729771581837755

namespace A142912

/-- `∩[A061240(n+1), A131877(n)-2]` -/
def P4742729771581837755.Spec : Prop :=
  ∀ n, (P4742729771581837755.a n : ℤ) = A142912 (n + 1)

end A142912

/-! ## A142912.P10155848556184576778

`record[A006530(63*(n+1)-22)]`
-/

namespace A142912.P10155848556184576778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (63 * (n + 1) - 22)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142912.P10155848556184576778

namespace A142912

/-- `record[A006530(63*(n+1)-22)]` -/
def P10155848556184576778.Spec : Prop :=
  ∀ n, P10155848556184576778.a n = A142912 (n + 1)

end A142912

/-! ## A142912.P3420329344279469618

`record[A020639(63*(n+1)-22)]`
-/

namespace A142912.P3420329344279469618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (63 * (n + 1) - 22)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142912.P3420329344279469618

namespace A142912

/-- `record[A020639(63*(n+1)-22)]` -/
def P3420329344279469618.Spec : Prop :=
  ∀ n, P3420329344279469618.a n = A142912 (n + 1)

end A142912

/-!
# A142913: Primes congruent to 43 mod 63.

The programs for A142913, the canonical program `A142913.P5474020150282611430` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142913 has offset 1).

The definition of A142913 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2175 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142913.P5474020150282611430

`p?[63*n+43]`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A142913

/-- `p?[63*n+43]` -/
def P5474020150282611430.Spec : Prop :=
  ∀ n, (P5474020150282611430.a n : ℤ) = A142913 (n + 1)

theorem P5474020150282611430.correct : P5474020150282611430.Spec := by
  intro n
  simp only [A142913, Nat.add_sub_cancel]

end A142913

/-! ## A142913.P5504266657660610764

`∩[A061241(n+1), A124826(n+1)]`
-/

namespace A142913.P5504266657660610764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061241 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124826 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142913.P5504266657660610764

namespace A142913

/-- `∩[A061241(n+1), A124826(n+1)]` -/
def P5504266657660610764.Spec : Prop :=
  ∀ n, (P5504266657660610764.a n : ℤ) = A142913 (n + 1)

end A142913

/-! ## A142913.P3666547834289154641

`∩[A061241(n+1), A140444(n+1)]`
-/

namespace A142913.P3666547834289154641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061241 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140444 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142913.P3666547834289154641

namespace A142913

/-- `∩[A061241(n+1), A140444(n+1)]` -/
def P3666547834289154641.Spec : Prop :=
  ∀ n, (P3666547834289154641.a n : ℤ) = A142913 (n + 1)

end A142913

/-! ## A142913.P14663860259164744195

`∩[A004619(n+1), A061241(n+1)]`
-/

namespace A142913.P14663860259164744195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004619 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061241 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142913.P14663860259164744195

namespace A142913

/-- `∩[A004619(n+1), A061241(n+1)]` -/
def P14663860259164744195.Spec : Prop :=
  ∀ n, (P14663860259164744195.a n : ℤ) = A142913 (n + 1)

end A142913

/-! ## A142913.P3811936731605724298

`∩[A124826(n+1), A129807(n+1)]`
-/

namespace A142913.P3811936731605724298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124826 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129807 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142913.P3811936731605724298

namespace A142913

/-- `∩[A124826(n+1), A129807(n+1)]` -/
def P3811936731605724298.Spec : Prop :=
  ∀ n, (P3811936731605724298.a n : ℤ) = A142913 (n + 1)

end A142913

/-! ## A142913.P11753168889360662522

`∩[A078403(n+1), A124826(n+1)]`
-/

namespace A142913.P11753168889360662522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078403 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124826 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142913.P11753168889360662522

namespace A142913

/-- `∩[A078403(n+1), A124826(n+1)]` -/
def P11753168889360662522.Spec : Prop :=
  ∀ n, (P11753168889360662522.a n : ℤ) = A142913 (n + 1)

end A142913

/-! ## A142913.P1629588032813889279

`∩[A124826(n+1), A301628(n+1)]`
-/

namespace A142913.P1629588032813889279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124826 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301628 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142913.P1629588032813889279

namespace A142913

/-- `∩[A124826(n+1), A301628(n+1)]` -/
def P1629588032813889279.Spec : Prop :=
  ∀ n, (P1629588032813889279.a n : ℤ) = A142913 (n + 1)

end A142913

/-! ## A142913.P10032187838561599440

`∩[A140444(n+1), A301628(n+1)]`
-/

namespace A142913.P10032187838561599440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140444 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301628 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142913.P10032187838561599440

namespace A142913

/-- `∩[A140444(n+1), A301628(n+1)]` -/
def P10032187838561599440.Spec : Prop :=
  ∀ n, (P10032187838561599440.a n : ℤ) = A142913 (n + 1)

end A142913

/-! ## A142913.P12485040440064010477

`record[p?[A215146(A001281(n))]]`
-/

namespace A142913.P12485040440064010477
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215146 (A001281 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142913.P12485040440064010477

namespace A142913

/-- `record[p?[A215146(A001281(n))]]` -/
def P12485040440064010477.Spec : Prop :=
  ∀ n, P12485040440064010477.a n = A142913 (n + 1)

end A142913

/-! ## A142913.P10146379864023456995

`∩[A061241(n+1), A215146(n)]`
-/

namespace A142913.P10146379864023456995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061241 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215146 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142913.P10146379864023456995

namespace A142913

/-- `∩[A061241(n+1), A215146(n)]` -/
def P10146379864023456995.Spec : Prop :=
  ∀ n, (P10146379864023456995.a n : ℤ) = A142913 (n + 1)

end A142913

/-! ## A142913.P17502760199148202279

`∩[A078403(n+1), A215146(n)]`
-/

namespace A142913.P17502760199148202279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078403 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215146 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142913.P17502760199148202279

namespace A142913

/-- `∩[A078403(n+1), A215146(n)]` -/
def P17502760199148202279.Spec : Prop :=
  ∀ n, (P17502760199148202279.a n : ℤ) = A142913 (n + 1)

end A142913

/-! ## A142913.P18019892655501922390

`∩[A129807(n+1), A215146(n)]`
-/

namespace A142913.P18019892655501922390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129807 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215146 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142913.P18019892655501922390

namespace A142913

/-- `∩[A129807(n+1), A215146(n)]` -/
def P18019892655501922390.Spec : Prop :=
  ∀ n, (P18019892655501922390.a n : ℤ) = A142913 (n + 1)

end A142913

/-! ## A142913.P18252873847715832003

`∩[A140444(n+1), A242215(n)+2]`
-/

namespace A142913.P18252873847715832003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140444 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242215 n + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142913.P18252873847715832003

namespace A142913

/-- `∩[A140444(n+1), A242215(n)+2]` -/
def P18252873847715832003.Spec : Prop :=
  ∀ n, (P18252873847715832003.a n : ℤ) = A142913 (n + 1)

end A142913

/-! ## A142913.P12894375759777338039

`∩[A242215(n+1)+2, A045465(n+2)]`
-/

namespace A142913.P12894375759777338039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242215 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045465 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142913.P12894375759777338039

namespace A142913

/-- `∩[A242215(n+1)+2, A045465(n+2)]` -/
def P12894375759777338039.Spec : Prop :=
  ∀ n, (P12894375759777338039.a n : ℤ) = A142913 (n + 1)

end A142913

/-! ## A142913.P7464200232709822856

`∩[A061241(n+1), A131877(n)]`
-/

namespace A142913.P7464200232709822856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061241 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131877 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142913.P7464200232709822856

namespace A142913

/-- `∩[A061241(n+1), A131877(n)]` -/
def P7464200232709822856.Spec : Prop :=
  ∀ n, (P7464200232709822856.a n : ℤ) = A142913 (n + 1)

end A142913

/-! ## A142913.P1041145384404176767

`∩[A061241(n+1), A358053(n+1)+2]`
-/

namespace A142913.P1041145384404176767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061241 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358053 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142913.P1041145384404176767

namespace A142913

/-- `∩[A061241(n+1), A358053(n+1)+2]` -/
def P1041145384404176767.Spec : Prop :=
  ∀ n, (P1041145384404176767.a n : ℤ) = A142913 (n + 1)

end A142913

/-! ## A142913.P8587118036216643944

`∩[A017029(2*n+1)+A017029(n+1), A061241(n+2)]`
-/

namespace A142913.P8587118036216643944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017029 (2 * n + 1) + A017029 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061241 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142913.P8587118036216643944

namespace A142913

/-- `∩[A017029(2*n+1)+A017029(n+1), A061241(n+2)]` -/
def P8587118036216643944.Spec : Prop :=
  ∀ n, (P8587118036216643944.a n : ℤ) = A142913 (n + 1)

end A142913

/-! ## A142913.P1783891279715503419

`record[A020639(63*n+43)]`
-/

namespace A142913.P1783891279715503419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (63 * n + 43)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142913.P1783891279715503419

namespace A142913

/-- `record[A020639(63*n+43)]` -/
def P1783891279715503419.Spec : Prop :=
  ∀ n, P1783891279715503419.a n = A142913 (n + 1)

end A142913

/-! ## A142913.P7074230974761585239

`∩[A124826(n+1), A017245(n)]`
-/

namespace A142913.P7074230974761585239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124826 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017245 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142913.P7074230974761585239

namespace A142913

/-- `∩[A124826(n+1), A017245(n)]` -/
def P7074230974761585239.Spec : Prop :=
  ∀ n, (P7074230974761585239.a n : ℤ) = A142913 (n + 1)

end A142913

/-! ## A142913.P17824828606829405976

`∩[A140444(n+1), A017245(n)]`
-/

namespace A142913.P17824828606829405976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140444 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017245 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142913.P17824828606829405976

namespace A142913

/-- `∩[A140444(n+1), A017245(n)]` -/
def P17824828606829405976.Spec : Prop :=
  ∀ n, (P17824828606829405976.a n : ℤ) = A142913 (n + 1)

end A142913

/-!
# A142914: Primes congruent to 44 mod 63.

The programs for A142914, the canonical program `A142914.P10469601360240509478` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142914 has offset 1).

The definition of A142914 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2169 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142914.P10469601360240509478

`p?[63*n-19]`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A142914

/-- `p?[63*n-19]` -/
def P10469601360240509478.Spec : Prop :=
  ∀ n, P10469601360240509478.a n = A142914 (n + 1)

theorem P10469601360240509478.correct : P10469601360240509478.Spec := by
  intro n
  simp only [A142914, Nat.add_sub_cancel]

end A142914

/-! ## A142914.P3155039679193492264

`∩[A061242(n+1), A141888(n+1)]`
-/

namespace A142914.P3155039679193492264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061242 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141888 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142914.P3155039679193492264

namespace A142914

/-- `∩[A061242(n+1), A141888(n+1)]` -/
def P3155039679193492264.Spec : Prop :=
  ∀ n, (P3155039679193492264.a n : ℤ) = A142914 (n + 1)

end A142914

/-! ## A142914.P6541534064948341199

`∩[A061242(n+1), A142244(n+1)]`
-/

namespace A142914.P6541534064948341199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061242 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142244 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142914.P6541534064948341199

namespace A142914

/-- `∩[A061242(n+1), A142244(n+1)]` -/
def P6541534064948341199.Spec : Prop :=
  ∀ n, (P6541534064948341199.a n : ℤ) = A142914 (n + 1)

end A142914

/-! ## A142914.P7647736340939174064

`∩[A045383(n+1), A061242(n+1)]`
-/

namespace A142914.P7647736340939174064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045383 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061242 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142914.P7647736340939174064

namespace A142914

/-- `∩[A045383(n+1), A061242(n+1)]` -/
def P7647736340939174064.Spec : Prop :=
  ∀ n, (P7647736340939174064.a n : ℤ) = A142914 (n + 1)

end A142914

/-! ## A142914.P2163341356088329452

`∩[A045392(n+1), A061242(n+1)]`
-/

namespace A142914.P2163341356088329452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045392 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061242 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142914.P2163341356088329452

namespace A142914

/-- `∩[A045392(n+1), A061242(n+1)]` -/
def P2163341356088329452.Spec : Prop :=
  ∀ n, (P2163341356088329452.a n : ℤ) = A142914 (n + 1)

end A142914

/-! ## A142914.P5265129658425142417

`∩[A061242(n+1), A140442(n+1)]`
-/

namespace A142914.P5265129658425142417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061242 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140442 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142914.P5265129658425142417

namespace A142914

/-- `∩[A061242(n+1), A140442(n+1)]` -/
def P5265129658425142417.Spec : Prop :=
  ∀ n, (P5265129658425142417.a n : ℤ) = A142914 (n + 1)

end A142914

/-! ## A142914.P16652321357707644085

`∩[A129805(n+1), A141888(n+1)]`
-/

namespace A142914.P16652321357707644085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129805 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141888 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142914.P16652321357707644085

namespace A142914

/-- `∩[A129805(n+1), A141888(n+1)]` -/
def P16652321357707644085.Spec : Prop :=
  ∀ n, (P16652321357707644085.a n : ℤ) = A142914 (n + 1)

end A142914

/-! ## A142914.P13647747758145459250

`∩[A129805(n+1), A142244(n+1)]`
-/

namespace A142914.P13647747758145459250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129805 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142244 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142914.P13647747758145459250

namespace A142914

/-- `∩[A129805(n+1), A142244(n+1)]` -/
def P13647747758145459250.Spec : Prop :=
  ∀ n, (P13647747758145459250.a n : ℤ) = A142914 (n + 1)

end A142914

/-! ## A142914.P2342761205773109076

`∩[A004620(n+1), A061242(n+1)]`
-/

namespace A142914.P2342761205773109076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004620 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061242 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142914.P2342761205773109076

namespace A142914

/-- `∩[A004620(n+1), A061242(n+1)]` -/
def P2342761205773109076.Spec : Prop :=
  ∀ n, (P2342761205773109076.a n : ℤ) = A142914 (n + 1)

end A142914

/-! ## A142914.P8396929418406743117

`∩[A045383(n+1), A295869(n+1)]`
-/

namespace A142914.P8396929418406743117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045383 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295869 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142914.P8396929418406743117

namespace A142914

/-- `∩[A045383(n+1), A295869(n+1)]` -/
def P8396929418406743117.Spec : Prop :=
  ∀ n, (P8396929418406743117.a n : ℤ) = A142914 (n + 1)

end A142914

/-! ## A142914.P14196359939472082477

`∩[A045392(n+1), A295869(n+1)]`
-/

namespace A142914.P14196359939472082477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045392 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295869 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142914.P14196359939472082477

namespace A142914

/-- `∩[A045392(n+1), A295869(n+1)]` -/
def P14196359939472082477.Spec : Prop :=
  ∀ n, (P14196359939472082477.a n : ℤ) = A142914 (n + 1)

end A142914

/-! ## A142914.P16240598005054494515

`∩[A140442(n+1), A295869(n+1)]`
-/

namespace A142914.P16240598005054494515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140442 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295869 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142914.P16240598005054494515

namespace A142914

/-- `∩[A140442(n+1), A295869(n+1)]` -/
def P16240598005054494515.Spec : Prop :=
  ∀ n, (P16240598005054494515.a n : ℤ) = A142914 (n + 1)

end A142914

/-! ## A142914.P13080608689643664623

`∩[A141888(n+1), A295869(n+1)]`
-/

namespace A142914.P13080608689643664623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141888 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295869 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142914.P13080608689643664623

namespace A142914

/-- `∩[A141888(n+1), A295869(n+1)]` -/
def P13080608689643664623.Spec : Prop :=
  ∀ n, (P13080608689643664623.a n : ℤ) = A142914 (n + 1)

end A142914

/-! ## A142914.P7946619616931605475

`∩[A142244(n+1), A295869(n+1)]`
-/

namespace A142914.P7946619616931605475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142244 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295869 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142914.P7946619616931605475

namespace A142914

/-- `∩[A142244(n+1), A295869(n+1)]` -/
def P7946619616931605475.Spec : Prop :=
  ∀ n, (P7946619616931605475.a n : ℤ) = A142914 (n + 1)

end A142914

/-! ## A142914.P1599416615829572954

`∩[A129805(n+1), A215146(n)+1]`
-/

namespace A142914.P1599416615829572954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129805 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215146 n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142914.P1599416615829572954

namespace A142914

/-- `∩[A129805(n+1), A215146(n)+1]` -/
def P1599416615829572954.Spec : Prop :=
  ∀ n, (P1599416615829572954.a n : ℤ) = A142914 (n + 1)

end A142914

/-! ## A142914.P4455940372784618282

`∩[A045383(n+1), A239129(n+1)]`
-/

namespace A142914.P4455940372784618282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045383 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239129 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142914.P4455940372784618282

namespace A142914

/-- `∩[A045383(n+1), A239129(n+1)]` -/
def P4455940372784618282.Spec : Prop :=
  ∀ n, (P4455940372784618282.a n : ℤ) = A142914 (n + 1)

end A142914

/-! ## A142914.P17988965130820375824

`∩[A045392(n+1), A239129(n+1)]`
-/

namespace A142914.P17988965130820375824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045392 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239129 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142914.P17988965130820375824

namespace A142914

/-- `∩[A045392(n+1), A239129(n+1)]` -/
def P17988965130820375824.Spec : Prop :=
  ∀ n, (P17988965130820375824.a n : ℤ) = A142914 (n + 1)

end A142914

/-! ## A142914.P10042957131821073719

`∩[A140442(n+1), A239129(n+1)]`
-/

namespace A142914.P10042957131821073719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140442 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239129 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142914.P10042957131821073719

namespace A142914

/-- `∩[A140442(n+1), A239129(n+1)]` -/
def P10042957131821073719.Spec : Prop :=
  ∀ n, (P10042957131821073719.a n : ℤ) = A142914 (n + 1)

end A142914

/-! ## A142914.P17967405135951659481

`∩[A141888(n+1), A239129(n+1)]`
-/

namespace A142914.P17967405135951659481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141888 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239129 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142914.P17967405135951659481

namespace A142914

/-- `∩[A141888(n+1), A239129(n+1)]` -/
def P17967405135951659481.Spec : Prop :=
  ∀ n, (P17967405135951659481.a n : ℤ) = A142914 (n + 1)

end A142914

/-! ## A142914.P5745353424122127404

`∩[A142244(n+1), A239129(n+1)]`
-/

namespace A142914.P5745353424122127404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142244 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239129 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142914.P5745353424122127404

namespace A142914

/-- `∩[A142244(n+1), A239129(n+1)]` -/
def P5745353424122127404.Spec : Prop :=
  ∀ n, (P5745353424122127404.a n : ℤ) = A142914 (n + 1)

end A142914

/-!
# A142915: Primes congruent to 46 mod 63.

The programs for A142915, the canonical program `A142915.P8824252344397392147` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142915 has offset 1).

The definition of A142915 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2153 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142915.P8824252344397392147

`p?[63*n-17]`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A142915

/-- `p?[63*n-17]` -/
def P8824252344397392147.Spec : Prop :=
  ∀ n, P8824252344397392147.a n = A142915 (n + 1)

theorem P8824252344397392147.correct : P8824252344397392147.Spec := by
  intro n
  simp only [A142915, Nat.add_sub_cancel]

end A142915

/-! ## A142915.P13572233188847911288

`∩[A061237(n+1), A141889(n+1)]`
-/

namespace A142915.P13572233188847911288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061237 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141889 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142915.P13572233188847911288

namespace A142915

/-- `∩[A061237(n+1), A141889(n+1)]` -/
def P13572233188847911288.Spec : Prop :=
  ∀ n, (P13572233188847911288.a n : ℤ) = A142915 (n + 1)

end A142915

/-! ## A142915.P15933726100459168752

`∩[A045462(n+1), A061237(n+1)]`
-/

namespace A142915.P15933726100459168752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045462 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061237 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142915.P15933726100459168752

namespace A142915

/-- `∩[A045462(n+1), A061237(n+1)]` -/
def P15933726100459168752.Spec : Prop :=
  ∀ n, (P15933726100459168752.a n : ℤ) = A142915 (n + 1)

end A142915

/-! ## A142915.P5239044520264045114

`∩[A045471(n+1), A061237(n+1)]`
-/

namespace A142915.P5239044520264045114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045471 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061237 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142915.P5239044520264045114

namespace A142915

/-- `∩[A045471(n+1), A061237(n+1)]` -/
def P5239044520264045114.Spec : Prop :=
  ∀ n, (P5239044520264045114.a n : ℤ) = A142915 (n + 1)

end A142915

/-! ## A142915.P14921480996815767386

`A000038(n+1)+p?[A146081(n)-A017401(n)]`
-/

namespace A142915.P14921480996815767386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146081 n - A017401 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (n + 1) + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142915.P14921480996815767386

namespace A142915

/-- `A000038(n+1)+p?[A146081(n)-A017401(n)]` -/
def P14921480996815767386.Spec : Prop :=
  ∀ n, P14921480996815767386.a n = A142915 (n + 1)

end A142915

/-! ## A142915.P4974723041735318537

`p?[A146081(n)-A017401(n)]+A005843(n)%2`
-/

namespace A142915.P4974723041735318537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146081 n - A017401 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + Int.tmod (A005843 n) 2

end

end A142915.P4974723041735318537

namespace A142915

/-- `p?[A146081(n)-A017401(n)]+A005843(n)%2` -/
def P4974723041735318537.Spec : Prop :=
  ∀ n, P4974723041735318537.a n = A142915 (n + 1)

end A142915

/-! ## A142915.P13445000427981420861

`p?[A146081(n)-A017401(n)]%A201790(n+1)²`
-/

namespace A142915.P13445000427981420861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146081 n - A017401 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A201790 (n + 1) ^ 2)

end

end A142915.P13445000427981420861

namespace A142915

/-- `p?[A146081(n)-A017401(n)]%A201790(n+1)²` -/
def P13445000427981420861.Spec : Prop :=
  ∀ n, P13445000427981420861.a n = A142915 (n + 1)

end A142915

/-! ## A142915.P2670043375661132314

`∩[A004622(n+1), A061237(n+1)]`
-/

namespace A142915.P2670043375661132314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004622 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061237 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142915.P2670043375661132314

namespace A142915

/-- `∩[A004622(n+1), A061237(n+1)]` -/
def P2670043375661132314.Spec : Prop :=
  ∀ n, (P2670043375661132314.a n : ℤ) = A142915 (n + 1)

end A142915

/-! ## A142915.P436002651138602484

`A000027(p?[A146081(n)-A017401(n)])`
-/

namespace A142915.P436002651138602484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146081 n - A017401 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142915.P436002651138602484

namespace A142915

/-- `A000027(p?[A146081(n)-A017401(n)])` -/
def P436002651138602484.Spec : Prop :=
  ∀ n, P436002651138602484.a n = A142915 (n + 1)

end A142915

/-! ## A142915.P17744243501678268437

`∩[A129805(n+1), A141889(n+1)]`
-/

namespace A142915.P17744243501678268437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129805 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141889 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142915.P17744243501678268437

namespace A142915

/-- `∩[A129805(n+1), A141889(n+1)]` -/
def P17744243501678268437.Spec : Prop :=
  ∀ n, (P17744243501678268437.a n : ℤ) = A142915 (n + 1)

end A142915

/-! ## A142915.P7845687383280622856

`∩[A045462(n+1), A301617(n+1)]`
-/

namespace A142915.P7845687383280622856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045462 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301617 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142915.P7845687383280622856

namespace A142915

/-- `∩[A045462(n+1), A301617(n+1)]` -/
def P7845687383280622856.Spec : Prop :=
  ∀ n, (P7845687383280622856.a n : ℤ) = A142915 (n + 1)

end A142915

/-! ## A142915.P15719360387803044534

`∩[A045471(n+1), A301617(n+1)]`
-/

namespace A142915.P15719360387803044534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045471 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301617 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142915.P15719360387803044534

namespace A142915

/-- `∩[A045471(n+1), A301617(n+1)]` -/
def P15719360387803044534.Spec : Prop :=
  ∀ n, (P15719360387803044534.a n : ℤ) = A142915 (n + 1)

end A142915

/-! ## A142915.P5489109415696174943

`∩[A141889(n+1), A301617(n+1)]`
-/

namespace A142915.P5489109415696174943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141889 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301617 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142915.P5489109415696174943

namespace A142915

/-- `∩[A141889(n+1), A301617(n+1)]` -/
def P5489109415696174943.Spec : Prop :=
  ∀ n, (P5489109415696174943.a n : ℤ) = A142915 (n + 1)

end A142915

/-! ## A142915.P12501111752291094975

`∩[A045462(n+1), A161705(n)]`
-/

namespace A142915.P12501111752291094975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045462 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161705 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142915.P12501111752291094975

namespace A142915

/-- `∩[A045462(n+1), A161705(n)]` -/
def P12501111752291094975.Spec : Prop :=
  ∀ n, (P12501111752291094975.a n : ℤ) = A142915 (n + 1)

end A142915

/-! ## A142915.P12625402185898405772

`∩[A045471(n+1), A161705(n)]`
-/

namespace A142915.P12625402185898405772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045471 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161705 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142915.P12625402185898405772

namespace A142915

/-- `∩[A045471(n+1), A161705(n)]` -/
def P12625402185898405772.Spec : Prop :=
  ∀ n, (P12625402185898405772.a n : ℤ) = A142915 (n + 1)

end A142915

/-! ## A142915.P10372234512912500891

`∩[A141889(n+1), A161705(n)]`
-/

namespace A142915.P10372234512912500891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141889 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161705 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142915.P10372234512912500891

namespace A142915

/-- `∩[A141889(n+1), A161705(n)]` -/
def P10372234512912500891.Spec : Prop :=
  ∀ n, (P10372234512912500891.a n : ℤ) = A142915 (n + 1)

end A142915

/-! ## A142915.P11877403646605647403

`∩[A045462(n+1), A239129(n+1)+2]`
-/

namespace A142915.P11877403646605647403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045462 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239129 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142915.P11877403646605647403

namespace A142915

/-- `∩[A045462(n+1), A239129(n+1)+2]` -/
def P11877403646605647403.Spec : Prop :=
  ∀ n, (P11877403646605647403.a n : ℤ) = A142915 (n + 1)

end A142915

/-! ## A142915.P2263911030805703866

`∩[A045471(n+1), A239129(n+1)+2]`
-/

namespace A142915.P2263911030805703866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045471 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239129 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142915.P2263911030805703866

namespace A142915

/-- `∩[A045471(n+1), A239129(n+1)+2]` -/
def P2263911030805703866.Spec : Prop :=
  ∀ n, (P2263911030805703866.a n : ℤ) = A142915 (n + 1)

end A142915

/-! ## A142915.P524592697013207459

`∩[A061237(n+1), A358053(n+1)-2]`
-/

namespace A142915.P524592697013207459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061237 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358053 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142915.P524592697013207459

namespace A142915

/-- `∩[A061237(n+1), A358053(n+1)-2]` -/
def P524592697013207459.Spec : Prop :=
  ∀ n, (P524592697013207459.a n : ℤ) = A142915 (n + 1)

end A142915

/-! ## A142915.P11974056420852476360

`record[A020639(2*n+A146081(n)-A190991(n))]`
-/

namespace A142915.P11974056420852476360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 ((2 * n : ℤ) + (A146081 n - A190991 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142915.P11974056420852476360

namespace A142915

/-- `record[A020639(2*n+A146081(n)-A190991(n))]` -/
def P11974056420852476360.Spec : Prop :=
  ∀ n, P11974056420852476360.a n = A142915 (n + 1)

end A142915

/-!
# A142916: Primes congruent to 47 mod 63.

The programs for A142916, the canonical program `A142916.P16510023369052438540` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142916 has offset 1).

The definition of A142916 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2190 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142916.P16510023369052438540

`p?[63*n-16]`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A142916

/-- `p?[63*n-16]` -/
def P16510023369052438540.Spec : Prop :=
  ∀ n, P16510023369052438540.a n = A142916 (n + 1)

theorem P16510023369052438540.correct : P16510023369052438540.Spec := by
  intro n
  simp only [A142916, Nat.add_sub_cancel]

end A142916

/-! ## A142916.P11159148210835060861

`∩[A045447(n+1), A061238(n+1)]`
-/

namespace A142916.P11159148210835060861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045447 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061238 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142916.P11159148210835060861

namespace A142916

/-- `∩[A045447(n+1), A061238(n+1)]` -/
def P11159148210835060861.Spec : Prop :=
  ∀ n, (P11159148210835060861.a n : ℤ) = A142916 (n + 1)

end A142916

/-! ## A142916.P8634900867252848853

`∩[A045458(n+1), A061238(n+1)]`
-/

namespace A142916.P8634900867252848853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045458 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061238 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142916.P8634900867252848853

namespace A142916

/-- `∩[A045458(n+1), A061238(n+1)]` -/
def P8634900867252848853.Spec : Prop :=
  ∀ n, (P8634900867252848853.a n : ℤ) = A142916 (n + 1)

end A142916

/-! ## A142916.P12062714040806670425

`∩[A061238(n+1), A141890(n+1)]`
-/

namespace A142916.P12062714040806670425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061238 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141890 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142916.P12062714040806670425

namespace A142916

/-- `∩[A061238(n+1), A141890(n+1)]` -/
def P12062714040806670425.Spec : Prop :=
  ∀ n, (P12062714040806670425.a n : ℤ) = A142916 (n + 1)

end A142916

/-! ## A142916.P5298157243232497038

`∩[A004623(n+1), A061238(n+1)]`
-/

namespace A142916.P5298157243232497038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004623 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061238 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142916.P5298157243232497038

namespace A142916

/-- `∩[A004623(n+1), A061238(n+1)]` -/
def P5298157243232497038.Spec : Prop :=
  ∀ n, (P5298157243232497038.a n : ℤ) = A142916 (n + 1)

end A142916

/-! ## A142916.P18066773250437549276

`∩[A129807(n+1), A141890(n+1)]`
-/

namespace A142916.P18066773250437549276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129807 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141890 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142916.P18066773250437549276

namespace A142916

/-- `∩[A129807(n+1), A141890(n+1)]` -/
def P18066773250437549276.Spec : Prop :=
  ∀ n, (P18066773250437549276.a n : ℤ) = A142916 (n + 1)

end A142916

/-! ## A142916.P10928706550915155052

`∩[A045447(n+1), A301621(n+1)]`
-/

namespace A142916.P10928706550915155052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045447 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301621 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142916.P10928706550915155052

namespace A142916

/-- `∩[A045447(n+1), A301621(n+1)]` -/
def P10928706550915155052.Spec : Prop :=
  ∀ n, (P10928706550915155052.a n : ℤ) = A142916 (n + 1)

end A142916

/-! ## A142916.P9347363684858232236

`∩[A045458(n+1), A301621(n+1)]`
-/

namespace A142916.P9347363684858232236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045458 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301621 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142916.P9347363684858232236

namespace A142916

/-- `∩[A045458(n+1), A301621(n+1)]` -/
def P9347363684858232236.Spec : Prop :=
  ∀ n, (P9347363684858232236.a n : ℤ) = A142916 (n + 1)

end A142916

/-! ## A142916.P6877126824415061743

`∩[A141890(n+1), A301621(n+1)]`
-/

namespace A142916.P6877126824415061743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141890 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301621 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142916.P6877126824415061743

namespace A142916

/-- `∩[A141890(n+1), A301621(n+1)]` -/
def P6877126824415061743.Spec : Prop :=
  ∀ n, (P6877126824415061743.a n : ℤ) = A142916 (n + 1)

end A142916

/-! ## A142916.P7430331171610139131

`or(1, p?[A139607(A016789(n))-2])`
-/

namespace A142916.P7430331171610139131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139607 (A016789 n).toNat - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A142916.P7430331171610139131

namespace A142916

/-- `or(1, p?[A139607(A016789(n))-2])` -/
def P7430331171610139131.Spec : Prop :=
  ∀ n, P7430331171610139131.a n = A142916 (n + 1)

end A142916

/-! ## A142916.P4085530380980583913

`A000038(n+1)+p?[A139607(A016789(n))-2]`
-/

namespace A142916.P4085530380980583913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139607 (A016789 n).toNat - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (n + 1) + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142916.P4085530380980583913

namespace A142916

/-- `A000038(n+1)+p?[A139607(A016789(n))-2]` -/
def P4085530380980583913.Spec : Prop :=
  ∀ n, P4085530380980583913.a n = A142916 (n + 1)

end A142916

/-! ## A142916.P12508578186368230009

`p?[A139607(A016789(n))-2]%A051383(n+1)`
-/

namespace A142916.P12508578186368230009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139607 (A016789 n).toNat - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A051383 (n + 1))

end

end A142916.P12508578186368230009

namespace A142916

/-- `p?[A139607(A016789(n))-2]%A051383(n+1)` -/
def P12508578186368230009.Spec : Prop :=
  ∀ n, P12508578186368230009.a n = A142916 (n + 1)

end A142916

/-! ## A142916.P4573422953985560608

`∩[A045447(n+1), A063305(n+2)-2]`
-/

namespace A142916.P4573422953985560608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045447 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063305 (n + 2) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142916.P4573422953985560608

namespace A142916

/-- `∩[A045447(n+1), A063305(n+2)-2]` -/
def P4573422953985560608.Spec : Prop :=
  ∀ n, (P4573422953985560608.a n : ℤ) = A142916 (n + 1)

end A142916

/-! ## A142916.P813823399670071389

`∩[A045458(n+1), A063305(n+2)-2]`
-/

namespace A142916.P813823399670071389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045458 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063305 (n + 2) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142916.P813823399670071389

namespace A142916

/-- `∩[A045458(n+1), A063305(n+2)-2]` -/
def P813823399670071389.Spec : Prop :=
  ∀ n, (P813823399670071389.a n : ℤ) = A142916 (n + 1)

end A142916

/-! ## A142916.P14704667405568148890

`∩[A061238(n+1), A126980(n)]`
-/

namespace A142916.P14704667405568148890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061238 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126980 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142916.P14704667405568148890

namespace A142916

/-- `∩[A061238(n+1), A126980(n)]` -/
def P14704667405568148890.Spec : Prop :=
  ∀ n, (P14704667405568148890.a n : ℤ) = A142916 (n + 1)

end A142916

/-! ## A142916.P13673814462943252693

`∩[A045447(n+1), A076206(n+1)]`
-/

namespace A142916.P13673814462943252693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045447 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076206 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142916.P13673814462943252693

namespace A142916

/-- `∩[A045447(n+1), A076206(n+1)]` -/
def P13673814462943252693.Spec : Prop :=
  ∀ n, (P13673814462943252693.a n : ℤ) = A142916 (n + 1)

end A142916

/-! ## A142916.P7792686040418415046

`∩[A045458(n+1), A076206(n+1)]`
-/

namespace A142916.P7792686040418415046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045458 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076206 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142916.P7792686040418415046

namespace A142916

/-- `∩[A045458(n+1), A076206(n+1)]` -/
def P7792686040418415046.Spec : Prop :=
  ∀ n, (P7792686040418415046.a n : ℤ) = A142916 (n + 1)

end A142916

/-! ## A142916.P6966505173887764840

`∩[A076206(n+1), A141890(n+1)]`
-/

namespace A142916.P6966505173887764840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076206 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141890 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142916.P6966505173887764840

namespace A142916

/-- `∩[A076206(n+1), A141890(n+1)]` -/
def P6966505173887764840.Spec : Prop :=
  ∀ n, (P6966505173887764840.a n : ℤ) = A142916 (n + 1)

end A142916

/-! ## A142916.P12055795276856951478

`∩[A017053(2*n+1)+A017053(n+1), A061238(n+2)]`
-/

namespace A142916.P12055795276856951478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017053 (2 * n + 1) + A017053 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061238 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142916.P12055795276856951478

namespace A142916

/-- `∩[A017053(2*n+1)+A017053(n+1), A061238(n+2)]` -/
def P12055795276856951478.Spec : Prop :=
  ∀ n, (P12055795276856951478.a n : ℤ) = A142916 (n + 1)

end A142916

/-! ## A142916.P9632881007065687694

`record[A253254(2*(7*n+3))]`
-/

namespace A142916.P9632881007065687694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253254 (2 * (7 * n + 3))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142916.P9632881007065687694

namespace A142916

/-- `record[A253254(2*(7*n+3))]` -/
def P9632881007065687694.Spec : Prop :=
  ∀ n, P9632881007065687694.a n = A142916 (n + 1)

end A142916

/-!
# A142917: Primes congruent to 50 mod 63.

The programs for A142917, the canonical program `A142917.P11354661847014680718` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142917 has offset 1).

The definition of A142917 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2192 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142917.P11354661847014680718

`p?[63*n-13]`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A142917

/-- `p?[63*n-13]` -/
def P11354661847014680718.Spec : Prop :=
  ∀ n, P11354661847014680718.a n = A142917 (n + 1)

theorem P11354661847014680718.correct : P11354661847014680718.Spec := by
  intro n
  simp only [A142917, Nat.add_sub_cancel]

end A142917

/-! ## A142917.P5776834547912538743

`∩[A045465(n+1), A061240(n+1)]`
-/

namespace A142917.P5776834547912538743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045465 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061240 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142917.P5776834547912538743

namespace A142917

/-- `∩[A045465(n+1), A061240(n+1)]` -/
def P5776834547912538743.Spec : Prop :=
  ∀ n, (P5776834547912538743.a n : ℤ) = A142917 (n + 1)

end A142917

/-! ## A142917.P2576718490620143648

`∩[A061240(n+1), A140444(n+1)]`
-/

namespace A142917.P2576718490620143648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061240 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140444 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142917.P2576718490620143648

namespace A142917

/-- `∩[A061240(n+1), A140444(n+1)]` -/
def P2576718490620143648.Spec : Prop :=
  ∀ n, (P2576718490620143648.a n : ℤ) = A142917 (n + 1)

end A142917

/-! ## A142917.P10043917858075204352

`∩[A061240(n+1), A141891(n+1)]`
-/

namespace A142917.P10043917858075204352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061240 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141891 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142917.P10043917858075204352

namespace A142917

/-- `∩[A061240(n+1), A141891(n+1)]` -/
def P10043917858075204352.Spec : Prop :=
  ∀ n, (P10043917858075204352.a n : ℤ) = A142917 (n + 1)

end A142917

/-! ## A142917.P12809311711072272478

`∩[A004619(n+1), A061240(n+1)]`
-/

namespace A142917.P12809311711072272478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004619 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061240 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142917.P12809311711072272478

namespace A142917

/-- `∩[A004619(n+1), A061240(n+1)]` -/
def P12809311711072272478.Spec : Prop :=
  ∀ n, (P12809311711072272478.a n : ℤ) = A142917 (n + 1)

end A142917

/-! ## A142917.P9255292708813714393

`∩[A129806(n+1), A141891(n+1)]`
-/

namespace A142917.P9255292708813714393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129806 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141891 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142917.P9255292708813714393

namespace A142917

/-- `∩[A129806(n+1), A141891(n+1)]` -/
def P9255292708813714393.Spec : Prop :=
  ∀ n, (P9255292708813714393.a n : ℤ) = A142917 (n + 1)

end A142917

/-! ## A142917.P1743977368599231960

`∩[A045465(n+1), A301623(n+1)]`
-/

namespace A142917.P1743977368599231960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045465 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301623 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142917.P1743977368599231960

namespace A142917

/-- `∩[A045465(n+1), A301623(n+1)]` -/
def P1743977368599231960.Spec : Prop :=
  ∀ n, (P1743977368599231960.a n : ℤ) = A142917 (n + 1)

end A142917

/-! ## A142917.P13989473214473757319

`∩[A140444(n+1), A301623(n+1)]`
-/

namespace A142917.P13989473214473757319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140444 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301623 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142917.P13989473214473757319

namespace A142917

/-- `∩[A140444(n+1), A301623(n+1)]` -/
def P13989473214473757319.Spec : Prop :=
  ∀ n, (P13989473214473757319.a n : ℤ) = A142917 (n + 1)

end A142917

/-! ## A142917.P3663065643973351337

`∩[A141891(n+1), A301623(n+1)]`
-/

namespace A142917.P3663065643973351337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141891 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301623 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142917.P3663065643973351337

namespace A142917

/-- `∩[A141891(n+1), A301623(n+1)]` -/
def P3663065643973351337.Spec : Prop :=
  ∀ n, (P3663065643973351337.a n : ℤ) = A142917 (n + 1)

end A142917

/-! ## A142917.P7364010998540560927

`∩[A079131(n+1), A141891(n+1)]`
-/

namespace A142917.P7364010998540560927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079131 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141891 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142917.P7364010998540560927

namespace A142917

/-- `∩[A079131(n+1), A141891(n+1)]` -/
def P7364010998540560927.Spec : Prop :=
  ∀ n, (P7364010998540560927.a n : ℤ) = A142917 (n + 1)

end A142917

/-! ## A142917.P18367301940516166951

`∩[A045465(n+1), A242215(n)]`
-/

namespace A142917.P18367301940516166951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045465 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242215 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142917.P18367301940516166951

namespace A142917

/-- `∩[A045465(n+1), A242215(n)]` -/
def P18367301940516166951.Spec : Prop :=
  ∀ n, (P18367301940516166951.a n : ℤ) = A142917 (n + 1)

end A142917

/-! ## A142917.P5799678467946802219

`∩[A140444(n+1), A242215(n)]`
-/

namespace A142917.P5799678467946802219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140444 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242215 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142917.P5799678467946802219

namespace A142917

/-- `∩[A140444(n+1), A242215(n)]` -/
def P5799678467946802219.Spec : Prop :=
  ∀ n, (P5799678467946802219.a n : ℤ) = A142917 (n + 1)

end A142917

/-! ## A142917.P7160611840282687526

`∩[A141891(n+1), A242215(n)]`
-/

namespace A142917.P7160611840282687526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141891 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242215 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142917.P7160611840282687526

namespace A142917

/-- `∩[A141891(n+1), A242215(n)]` -/
def P7160611840282687526.Spec : Prop :=
  ∀ n, (P7160611840282687526.a n : ℤ) = A142917 (n + 1)

end A142917

/-! ## A142917.P13205563481644897591

`p?[A242215(7*n+6)]*A057078(3*(n+5))`
-/

namespace A142917.P13205563481644897591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242215 (7 * n + 6)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * A057078 (3 * (n + 5))

end

end A142917.P13205563481644897591

namespace A142917

/-- `p?[A242215(7*n+6)]*A057078(3*(n+5))` -/
def P13205563481644897591.Spec : Prop :=
  ∀ n, P13205563481644897591.a n = A142917 (n + 1)

end A142917

/-! ## A142917.P11610460519222462527

`p?[A242215(7*n+6)]%A051003(2*(n+1))`
-/

namespace A142917.P11610460519222462527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242215 (7 * n + 6)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A051003 (2 * (n + 1)))

end

end A142917.P11610460519222462527

namespace A142917

/-- `p?[A242215(7*n+6)]%A051003(2*(n+1))` -/
def P11610460519222462527.Spec : Prop :=
  ∀ n, P11610460519222462527.a n = A142917 (n + 1)

end A142917

/-! ## A142917.P202586304528946658

`∩[A061240(n+1), A131877(n)]`
-/

namespace A142917.P202586304528946658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061240 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131877 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142917.P202586304528946658

namespace A142917

/-- `∩[A061240(n+1), A131877(n)]` -/
def P202586304528946658.Spec : Prop :=
  ∀ n, (P202586304528946658.a n : ℤ) = A142917 (n + 1)

end A142917

/-! ## A142917.P4196518307453106830

`∩[A061240(n+1), A358053(n+1)+2]`
-/

namespace A142917.P4196518307453106830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061240 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358053 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142917.P4196518307453106830

namespace A142917

/-- `∩[A061240(n+1), A358053(n+1)+2]` -/
def P4196518307453106830.Spec : Prop :=
  ∀ n, (P4196518307453106830.a n : ℤ) = A142917 (n + 1)

end A142917

/-! ## A142917.P11679216732772945907

`A000265(p?[A242215(7*n+6)])`
-/

namespace A142917.P11679216732772945907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242215 (7 * n + 6)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142917.P11679216732772945907

namespace A142917

/-- `A000265(p?[A242215(7*n+6)])` -/
def P11679216732772945907.Spec : Prop :=
  ∀ n, P11679216732772945907.a n = A142917 (n + 1)

end A142917

/-! ## A142917.P9283887770326381151

`A007947(p?[A242215(7*n+6)])`
-/

namespace A142917.P9283887770326381151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242215 (7 * n + 6)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142917.P9283887770326381151

namespace A142917

/-- `A007947(p?[A242215(7*n+6)])` -/
def P9283887770326381151.Spec : Prop :=
  ∀ n, P9283887770326381151.a n = A142917 (n + 1)

end A142917

/-! ## A142917.P15731921878928232030

`∩[A045465(n+1), A017221(n)]`
-/

namespace A142917.P15731921878928232030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045465 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017221 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142917.P15731921878928232030

namespace A142917

/-- `∩[A045465(n+1), A017221(n)]` -/
def P15731921878928232030.Spec : Prop :=
  ∀ n, (P15731921878928232030.a n : ℤ) = A142917 (n + 1)

end A142917

/-!
# A142918: Primes congruent to 52 mod 63.

The programs for A142918, the canonical program `A142918.P4315972081210890278` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142918 has offset 1).

The definition of A142918 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2175 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142918.P4315972081210890278

`p?[63*n-11]`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A142918

/-- `p?[63*n-11]` -/
def P4315972081210890278.Spec : Prop :=
  ∀ n, P4315972081210890278.a n = A142918 (n + 1)

theorem P4315972081210890278.correct : P4315972081210890278.Spec := by
  intro n
  simp only [A142918, Nat.add_sub_cancel]

end A142918

/-! ## A142918.P7765903262543213888

`∩[A061241(n+1), A141892(n+1)]`
-/

namespace A142918.P7765903262543213888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061241 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141892 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142918.P7765903262543213888

namespace A142918

/-- `∩[A061241(n+1), A141892(n+1)]` -/
def P7765903262543213888.Spec : Prop :=
  ∀ n, (P7765903262543213888.a n : ℤ) = A142918 (n + 1)

end A142918

/-! ## A142918.P16096514810108563329

`∩[A045437(n+1), A061241(n+1)]`
-/

namespace A142918.P16096514810108563329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045437 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061241 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142918.P16096514810108563329

namespace A142918

/-- `∩[A045437(n+1), A061241(n+1)]` -/
def P16096514810108563329.Spec : Prop :=
  ∀ n, (P16096514810108563329.a n : ℤ) = A142918 (n + 1)

end A142918

/-! ## A142918.P610792428960724837

`∩[A004621(n+1), A061241(n+1)]`
-/

namespace A142918.P610792428960724837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004621 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061241 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142918.P610792428960724837

namespace A142918

/-- `∩[A004621(n+1), A061241(n+1)]` -/
def P610792428960724837.Spec : Prop :=
  ∀ n, (P610792428960724837.a n : ℤ) = A142918 (n + 1)

end A142918

/-! ## A142918.P9003704745697680061

`∩[A129807(n+1), A141892(n+1)]`
-/

namespace A142918.P9003704745697680061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129807 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141892 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142918.P9003704745697680061

namespace A142918

/-- `∩[A129807(n+1), A141892(n+1)]` -/
def P9003704745697680061.Spec : Prop :=
  ∀ n, (P9003704745697680061.a n : ℤ) = A142918 (n + 1)

end A142918

/-! ## A142918.P10618180803195802769

`A000027(p?[A241406(n+1)+n+1])`
-/

namespace A142918.P10618180803195802769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241406 (n + 1) + (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142918.P10618180803195802769

namespace A142918

/-- `A000027(p?[A241406(n+1)+n+1])` -/
def P10618180803195802769.Spec : Prop :=
  ∀ n, P10618180803195802769.a n = A142918 (n + 1)

end A142918

/-! ## A142918.P471019669751885682

`∩[A078403(n+1), A141892(n+1)]`
-/

namespace A142918.P471019669751885682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078403 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141892 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142918.P471019669751885682

namespace A142918

/-- `∩[A078403(n+1), A141892(n+1)]` -/
def P471019669751885682.Spec : Prop :=
  ∀ n, (P471019669751885682.a n : ℤ) = A142918 (n + 1)

end A142918

/-! ## A142918.P2006720586664052449

`∩[A045437(n+1), A301628(n+1)]`
-/

namespace A142918.P2006720586664052449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045437 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301628 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142918.P2006720586664052449

namespace A142918

/-- `∩[A045437(n+1), A301628(n+1)]` -/
def P2006720586664052449.Spec : Prop :=
  ∀ n, (P2006720586664052449.a n : ℤ) = A142918 (n + 1)

end A142918

/-! ## A142918.P6227519357862746802

`∩[A141892(n+1), A301628(n+1)]`
-/

namespace A142918.P6227519357862746802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141892 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301628 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142918.P6227519357862746802

namespace A142918

/-- `∩[A141892(n+1), A301628(n+1)]` -/
def P6227519357862746802.Spec : Prop :=
  ∀ n, (P6227519357862746802.a n : ℤ) = A142918 (n + 1)

end A142918

/-! ## A142918.P6756270033712192848

`∩[A045437(n+1), A242215(n)+2]`
-/

namespace A142918.P6756270033712192848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045437 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242215 n + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142918.P6756270033712192848

namespace A142918

/-- `∩[A045437(n+1), A242215(n)+2]` -/
def P6756270033712192848.Spec : Prop :=
  ∀ n, (P6756270033712192848.a n : ℤ) = A142918 (n + 1)

end A142918

/-! ## A142918.P10819644224572154708

`∩[A242215(n+1)+2, A045425(n+2)]`
-/

namespace A142918.P10819644224572154708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242215 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045425 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142918.P10819644224572154708

namespace A142918

/-- `∩[A242215(n+1)+2, A045425(n+2)]` -/
def P10819644224572154708.Spec : Prop :=
  ∀ n, (P10819644224572154708.a n : ℤ) = A142918 (n + 1)

end A142918

/-! ## A142918.P3381513388275774625

`A000027(p?[A019432(A047336(n+1))])`
-/

namespace A142918.P3381513388275774625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019432 (A047336 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142918.P3381513388275774625

namespace A142918

/-- `A000027(p?[A019432(A047336(n+1))])` -/
def P3381513388275774625.Spec : Prop :=
  ∀ n, P3381513388275774625.a n = A142918 (n + 1)

end A142918

/-! ## A142918.P17682765470733647724

`A000038(n+1)+p?[A019432(A047336(n+1))]`
-/

namespace A142918.P17682765470733647724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019432 (A047336 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (n + 1) + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142918.P17682765470733647724

namespace A142918

/-- `A000038(n+1)+p?[A019432(A047336(n+1))]` -/
def P17682765470733647724.Spec : Prop :=
  ∀ n, P17682765470733647724.a n = A142918 (n + 1)

end A142918

/-! ## A142918.P1743192320904645100

`A000035(2*n)+p?[A019432(A047336(n+1))]`
-/

namespace A142918.P1743192320904645100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019432 (A047336 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (2 * n) + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142918.P1743192320904645100

namespace A142918

/-- `A000035(2*n)+p?[A019432(A047336(n+1))]` -/
def P1743192320904645100.Spec : Prop :=
  ∀ n, P1743192320904645100.a n = A142918 (n + 1)

end A142918

/-! ## A142918.P9739191643153675589

`A178333(2*n)+p?[A019432(A047336(n+1))]`
-/

namespace A142918.P9739191643153675589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019432 (A047336 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178333 (2 * n) + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142918.P9739191643153675589

namespace A142918

/-- `A178333(2*n)+p?[A019432(A047336(n+1))]` -/
def P9739191643153675589.Spec : Prop :=
  ∀ n, P9739191643153675589.a n = A142918 (n + 1)

end A142918

/-! ## A142918.P16775742678278389564

`p?[A019432(A047336(n+1))]*A000034(2*n)`
-/

namespace A142918.P16775742678278389564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019432 (A047336 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * A000034 (2 * n)

end

end A142918.P16775742678278389564

namespace A142918

/-- `p?[A019432(A047336(n+1))]*A000034(2*n)` -/
def P16775742678278389564.Spec : Prop :=
  ∀ n, P16775742678278389564.a n = A142918 (n + 1)

end A142918

/-! ## A142918.P2852468110956292091

`p?[A019432(A047336(n+1))]%A156845(n+1)`
-/

namespace A142918.P2852468110956292091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019432 (A047336 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A156845 (n + 1))

end

end A142918.P2852468110956292091

namespace A142918

/-- `p?[A019432(A047336(n+1))]%A156845(n+1)` -/
def P2852468110956292091.Spec : Prop :=
  ∀ n, P2852468110956292091.a n = A142918 (n + 1)

end A142918

/-! ## A142918.P4979021563045010976

`∩[A061241(n+1), A131877(n)+2]`
-/

namespace A142918.P4979021563045010976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061241 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131877 n + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142918.P4979021563045010976

namespace A142918

/-- `∩[A061241(n+1), A131877(n)+2]` -/
def P4979021563045010976.Spec : Prop :=
  ∀ n, (P4979021563045010976.a n : ℤ) = A142918 (n + 1)

end A142918

/-! ## A142918.P16358707528206323339

`∩[A061241(n+1), A126980(n)-2]`
-/

namespace A142918.P16358707528206323339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061241 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126980 n - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142918.P16358707528206323339

namespace A142918

/-- `∩[A061241(n+1), A126980(n)-2]` -/
def P16358707528206323339.Spec : Prop :=
  ∀ n, (P16358707528206323339.a n : ℤ) = A142918 (n + 1)

end A142918

/-! ## A142918.P10814032008788753577

`∩[A116728(2*n+1)+A116728(n+2), A061241(n+2)]`
-/

namespace A142918.P10814032008788753577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116728 (2 * n + 1) + A116728 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061241 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142918.P10814032008788753577

namespace A142918

/-- `∩[A116728(2*n+1)+A116728(n+2), A061241(n+2)]` -/
def P10814032008788753577.Spec : Prop :=
  ∀ n, (P10814032008788753577.a n : ℤ) = A142918 (n + 1)

end A142918

/-!
# A142919: Primes congruent to 53 mod 63.

The programs for A142919, the canonical program `A142919.P2810603811300485717` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142919 has offset 1).

The definition of A142919 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2198 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142919.P2810603811300485717

`p?[63*n-10]`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A142919

/-- `p?[63*n-10]` -/
def P2810603811300485717.Spec : Prop :=
  ∀ n, P2810603811300485717.a n = A142919 (n + 1)

theorem P2810603811300485717.correct : P2810603811300485717.Spec := by
  intro n
  simp only [A142919, Nat.add_sub_cancel]

end A142919

/-! ## A142919.P16784804980823384446

`∩[A045462(n+1), A061242(n+1)]`
-/

namespace A142919.P16784804980823384446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045462 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061242 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142919.P16784804980823384446

namespace A142919

/-- `∩[A045462(n+1), A061242(n+1)]` -/
def P16784804980823384446.Spec : Prop :=
  ∀ n, (P16784804980823384446.a n : ℤ) = A142919 (n + 1)

end A142919

/-! ## A142919.P7895619098657859508

`∩[A045471(n+1), A061242(n+1)]`
-/

namespace A142919.P7895619098657859508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045471 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061242 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142919.P7895619098657859508

namespace A142919

/-- `∩[A045471(n+1), A061242(n+1)]` -/
def P7895619098657859508.Spec : Prop :=
  ∀ n, (P7895619098657859508.a n : ℤ) = A142919 (n + 1)

end A142919

/-! ## A142919.P9448083409726642517

`∩[A061242(n+1), A141893(n+1)]`
-/

namespace A142919.P9448083409726642517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061242 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141893 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142919.P9448083409726642517

namespace A142919

/-- `∩[A061242(n+1), A141893(n+1)]` -/
def P9448083409726642517.Spec : Prop :=
  ∀ n, (P9448083409726642517.a n : ℤ) = A142919 (n + 1)

end A142919

/-! ## A142919.P4054569859680163477

`∩[A004622(n+1), A061242(n+1)]`
-/

namespace A142919.P4054569859680163477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004622 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061242 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142919.P4054569859680163477

namespace A142919

/-- `∩[A004622(n+1), A061242(n+1)]` -/
def P4054569859680163477.Spec : Prop :=
  ∀ n, (P4054569859680163477.a n : ℤ) = A142919 (n + 1)

end A142919

/-! ## A142919.P3751862099395661905

`∩[A129805(n+1), A141893(n+1)]`
-/

namespace A142919.P3751862099395661905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129805 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141893 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142919.P3751862099395661905

namespace A142919

/-- `∩[A129805(n+1), A141893(n+1)]` -/
def P3751862099395661905.Spec : Prop :=
  ∀ n, (P3751862099395661905.a n : ℤ) = A142919 (n + 1)

end A142919

/-! ## A142919.P7404877488609049180

`∩[A045462(n+1), A295869(n+1)]`
-/

namespace A142919.P7404877488609049180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045462 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295869 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142919.P7404877488609049180

namespace A142919

/-- `∩[A045462(n+1), A295869(n+1)]` -/
def P7404877488609049180.Spec : Prop :=
  ∀ n, (P7404877488609049180.a n : ℤ) = A142919 (n + 1)

end A142919

/-! ## A142919.P1058717787638842820

`∩[A045471(n+1), A295869(n+1)]`
-/

namespace A142919.P1058717787638842820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045471 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295869 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142919.P1058717787638842820

namespace A142919

/-- `∩[A045471(n+1), A295869(n+1)]` -/
def P1058717787638842820.Spec : Prop :=
  ∀ n, (P1058717787638842820.a n : ℤ) = A142919 (n + 1)

end A142919

/-! ## A142919.P10750734270169236710

`∩[A141893(n+1), A295869(n+1)]`
-/

namespace A142919.P10750734270169236710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141893 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295869 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142919.P10750734270169236710

namespace A142919

/-- `∩[A141893(n+1), A295869(n+1)]` -/
def P10750734270169236710.Spec : Prop :=
  ∀ n, (P10750734270169236710.a n : ℤ) = A142919 (n + 1)

end A142919

/-! ## A142919.P5999572995869363156

`∩[A045462(n+1), A239129(n+1)]`
-/

namespace A142919.P5999572995869363156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045462 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239129 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142919.P5999572995869363156

namespace A142919

/-- `∩[A045462(n+1), A239129(n+1)]` -/
def P5999572995869363156.Spec : Prop :=
  ∀ n, (P5999572995869363156.a n : ℤ) = A142919 (n + 1)

end A142919

/-! ## A142919.P13653440677455330159

`∩[A045471(n+1), A239129(n+1)]`
-/

namespace A142919.P13653440677455330159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045471 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239129 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142919.P13653440677455330159

namespace A142919

/-- `∩[A045471(n+1), A239129(n+1)]` -/
def P13653440677455330159.Spec : Prop :=
  ∀ n, (P13653440677455330159.a n : ℤ) = A142919 (n + 1)

end A142919

/-! ## A142919.P3690763052488315238

`∩[A141893(n+1), A239129(n+1)]`
-/

namespace A142919.P3690763052488315238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141893 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239129 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142919.P3690763052488315238

namespace A142919

/-- `∩[A141893(n+1), A239129(n+1)]` -/
def P3690763052488315238.Spec : Prop :=
  ∀ n, (P3690763052488315238.a n : ℤ) = A142919 (n + 1)

end A142919

/-! ## A142919.P12751202695334100371

`∩[A045462(n+1), A161705(n)-2]`
-/

namespace A142919.P12751202695334100371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045462 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161705 n - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142919.P12751202695334100371

namespace A142919

/-- `∩[A045462(n+1), A161705(n)-2]` -/
def P12751202695334100371.Spec : Prop :=
  ∀ n, (P12751202695334100371.a n : ℤ) = A142919 (n + 1)

end A142919

/-! ## A142919.P8501465539274914302

`∩[A045471(n+1), A161705(n)-2]`
-/

namespace A142919.P8501465539274914302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045471 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161705 n - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142919.P8501465539274914302

namespace A142919

/-- `∩[A045471(n+1), A161705(n)-2]` -/
def P8501465539274914302.Spec : Prop :=
  ∀ n, (P8501465539274914302.a n : ℤ) = A142919 (n + 1)

end A142919

/-! ## A142919.P10704500924134791327

`record[A001414(63*(n+1)-10)]`
-/

namespace A142919.P10704500924134791327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (63 * (n + 1) - 10)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142919.P10704500924134791327

namespace A142919

/-- `record[A001414(63*(n+1)-10)]` -/
def P10704500924134791327.Spec : Prop :=
  ∀ n, P10704500924134791327.a n = A142919 (n + 1)

end A142919

/-! ## A142919.P11549935811387706578

`record[A006530(63*(n+1)-10)]`
-/

namespace A142919.P11549935811387706578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (63 * (n + 1) - 10)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142919.P11549935811387706578

namespace A142919

/-- `record[A006530(63*(n+1)-10)]` -/
def P11549935811387706578.Spec : Prop :=
  ∀ n, P11549935811387706578.a n = A142919 (n + 1)

end A142919

/-! ## A142919.P9914872477053546150

`record[A020639(63*(n+1)-10)]`
-/

namespace A142919.P9914872477053546150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (63 * (n + 1) - 10)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142919.P9914872477053546150

namespace A142919

/-- `record[A020639(63*(n+1)-10)]` -/
def P9914872477053546150.Spec : Prop :=
  ∀ n, P9914872477053546150.a n = A142919 (n + 1)

end A142919

/-! ## A142919.P1885328049984175565

`∩[A045462(n+1), A017257(n)]`
-/

namespace A142919.P1885328049984175565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045462 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017257 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142919.P1885328049984175565

namespace A142919

/-- `∩[A045462(n+1), A017257(n)]` -/
def P1885328049984175565.Spec : Prop :=
  ∀ n, (P1885328049984175565.a n : ℤ) = A142919 (n + 1)

end A142919

/-! ## A142919.P10365936871328463212

`∩[A045471(n+1), A017257(n)]`
-/

namespace A142919.P10365936871328463212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045471 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017257 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142919.P10365936871328463212

namespace A142919

/-- `∩[A045471(n+1), A017257(n)]` -/
def P10365936871328463212.Spec : Prop :=
  ∀ n, (P10365936871328463212.a n : ℤ) = A142919 (n + 1)

end A142919

/-!
# A142920: Primes congruent to 55 mod 63.

The programs for A142920, the canonical program `A142920.P902177565938556290` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142920 has offset 1).

The definition of A142920 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2193 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142920.P902177565938556290

`p?[63*n-8]`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A142920

/-- `p?[63*n-8]` -/
def P902177565938556290.Spec : Prop :=
  ∀ n, P902177565938556290.a n = A142920 (n + 1)

theorem P902177565938556290.correct : P902177565938556290.Spec := by
  intro n
  simp only [A142920, Nat.add_sub_cancel]

end A142920

/-! ## A142920.P17557618489558621529

`∩[A061237(n+1), A141894(n+1)]`
-/

namespace A142920.P17557618489558621529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061237 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141894 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142920.P17557618489558621529

namespace A142920

/-- `∩[A061237(n+1), A141894(n+1)]` -/
def P17557618489558621529.Spec : Prop :=
  ∀ n, (P17557618489558621529.a n : ℤ) = A142920 (n + 1)

end A142920

/-! ## A142920.P10749182569636853494

`∩[A045464(n+1), A061237(n+1)]`
-/

namespace A142920.P10749182569636853494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045464 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061237 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142920.P10749182569636853494

namespace A142920

/-- `∩[A045464(n+1), A061237(n+1)]` -/
def P10749182569636853494.Spec : Prop :=
  ∀ n, (P10749182569636853494.a n : ℤ) = A142920 (n + 1)

end A142920

/-! ## A142920.P9559820104466079879

`∩[A045473(n+1), A061237(n+1)]`
-/

namespace A142920.P9559820104466079879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045473 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061237 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142920.P9559820104466079879

namespace A142920

/-- `∩[A045473(n+1), A061237(n+1)]` -/
def P9559820104466079879.Spec : Prop :=
  ∀ n, (P9559820104466079879.a n : ℤ) = A142920 (n + 1)

end A142920

/-! ## A142920.P2762345147944952930

`or(p?[A157330(n+1)-(n+1)], A036987(n))`
-/

namespace A142920.P2762345147944952930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157330 (n + 1) - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A036987 n)

end

end A142920.P2762345147944952930

namespace A142920

/-- `or(p?[A157330(n+1)-(n+1)], A036987(n))` -/
def P2762345147944952930.Spec : Prop :=
  ∀ n, P2762345147944952930.a n = A142920 (n + 1)

end A142920

/-! ## A142920.P2579786615517905392

`lcm(p?[A157330(n+1)-(n+1)], A283131(n+1))`
-/

namespace A142920.P2579786615517905392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157330 (n + 1) - (n + 1 : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A283131 (n + 1))

end

end A142920.P2579786615517905392

namespace A142920

/-- `lcm(p?[A157330(n+1)-(n+1)], A283131(n+1))` -/
def P2579786615517905392.Spec : Prop :=
  ∀ n, (P2579786615517905392.a n : ℤ) = A142920 (n + 1)

end A142920

/-! ## A142920.P11469011748262940755

`∩[A004624(n+1), A061237(n+1)]`
-/

namespace A142920.P11469011748262940755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004624 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061237 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142920.P11469011748262940755

namespace A142920

/-- `∩[A004624(n+1), A061237(n+1)]` -/
def P11469011748262940755.Spec : Prop :=
  ∀ n, (P11469011748262940755.a n : ℤ) = A142920 (n + 1)

end A142920

/-! ## A142920.P11010402442619639333

`A000027(p?[A157330(n+1)-(n+1)])`
-/

namespace A142920.P11010402442619639333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157330 (n + 1) - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142920.P11010402442619639333

namespace A142920

/-- `A000027(p?[A157330(n+1)-(n+1)])` -/
def P11010402442619639333.Spec : Prop :=
  ∀ n, P11010402442619639333.a n = A142920 (n + 1)

end A142920

/-! ## A142920.P161558772701912893

`∩[A129805(n+1), A141894(n+1)]`
-/

namespace A142920.P161558772701912893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129805 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141894 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142920.P161558772701912893

namespace A142920

/-- `∩[A129805(n+1), A141894(n+1)]` -/
def P161558772701912893.Spec : Prop :=
  ∀ n, (P161558772701912893.a n : ℤ) = A142920 (n + 1)

end A142920

/-! ## A142920.P10353332869080321870

`∩[A045377(n+1), A260440(n+1)-2]`
-/

namespace A142920.P10353332869080321870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045377 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260440 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142920.P10353332869080321870

namespace A142920

/-- `∩[A045377(n+1), A260440(n+1)-2]` -/
def P10353332869080321870.Spec : Prop :=
  ∀ n, (P10353332869080321870.a n : ℤ) = A142920 (n + 1)

end A142920

/-! ## A142920.P13439567960942197528

`∩[A045389(n+1), A260440(n+1)-2]`
-/

namespace A142920.P13439567960942197528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045389 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260440 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142920.P13439567960942197528

namespace A142920

/-- `∩[A045389(n+1), A260440(n+1)-2]` -/
def P13439567960942197528.Spec : Prop :=
  ∀ n, (P13439567960942197528.a n : ℤ) = A142920 (n + 1)

end A142920

/-! ## A142920.P1092754676923980441

`∩[A045464(n+1), A301617(n+1)]`
-/

namespace A142920.P1092754676923980441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045464 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301617 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142920.P1092754676923980441

namespace A142920

/-- `∩[A045464(n+1), A301617(n+1)]` -/
def P1092754676923980441.Spec : Prop :=
  ∀ n, (P1092754676923980441.a n : ℤ) = A142920 (n + 1)

end A142920

/-! ## A142920.P13833129173581960542

`∩[A045473(n+1), A301617(n+1)]`
-/

namespace A142920.P13833129173581960542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045473 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301617 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142920.P13833129173581960542

namespace A142920

/-- `∩[A045473(n+1), A301617(n+1)]` -/
def P13833129173581960542.Spec : Prop :=
  ∀ n, (P13833129173581960542.a n : ℤ) = A142920 (n + 1)

end A142920

/-! ## A142920.P13585397473624889406

`∩[A141894(n+1), A301617(n+1)]`
-/

namespace A142920.P13585397473624889406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141894 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301617 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142920.P13585397473624889406

namespace A142920

/-- `∩[A141894(n+1), A301617(n+1)]` -/
def P13585397473624889406.Spec : Prop :=
  ∀ n, (P13585397473624889406.a n : ℤ) = A142920 (n + 1)

end A142920

/-! ## A142920.P6856603635727915505

`∩[A045464(n+1), A161705(n)]`
-/

namespace A142920.P6856603635727915505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045464 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161705 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142920.P6856603635727915505

namespace A142920

/-- `∩[A045464(n+1), A161705(n)]` -/
def P6856603635727915505.Spec : Prop :=
  ∀ n, (P6856603635727915505.a n : ℤ) = A142920 (n + 1)

end A142920

/-! ## A142920.P3793026034839512066

`∩[A045473(n+1), A161705(n)]`
-/

namespace A142920.P3793026034839512066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045473 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161705 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142920.P3793026034839512066

namespace A142920

/-- `∩[A045473(n+1), A161705(n)]` -/
def P3793026034839512066.Spec : Prop :=
  ∀ n, (P3793026034839512066.a n : ℤ) = A142920 (n + 1)

end A142920

/-! ## A142920.P8926867408877201309

`∩[A141894(n+1), A161705(n)]`
-/

namespace A142920.P8926867408877201309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141894 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161705 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142920.P8926867408877201309

namespace A142920

/-- `∩[A141894(n+1), A161705(n)]` -/
def P8926867408877201309.Spec : Prop :=
  ∀ n, (P8926867408877201309.a n : ℤ) = A142920 (n + 1)

end A142920

/-! ## A142920.P15152805986637549985

`∩[A045464(n+1), A239129(n+1)+2]`
-/

namespace A142920.P15152805986637549985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045464 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239129 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142920.P15152805986637549985

namespace A142920

/-- `∩[A045464(n+1), A239129(n+1)+2]` -/
def P15152805986637549985.Spec : Prop :=
  ∀ n, (P15152805986637549985.a n : ℤ) = A142920 (n + 1)

end A142920

/-! ## A142920.P10989584930582269142

`∩[A045473(n+1), A239129(n+1)+2]`
-/

namespace A142920.P10989584930582269142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045473 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239129 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142920.P10989584930582269142

namespace A142920

/-- `∩[A045473(n+1), A239129(n+1)+2]` -/
def P10989584930582269142.Spec : Prop :=
  ∀ n, (P10989584930582269142.a n : ℤ) = A142920 (n + 1)

end A142920

/-! ## A142920.P7635914018254727760

`∩[A061237(n+1), A358053(n+1)]`
-/

namespace A142920.P7635914018254727760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061237 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358053 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142920.P7635914018254727760

namespace A142920

/-- `∩[A061237(n+1), A358053(n+1)]` -/
def P7635914018254727760.Spec : Prop :=
  ∀ n, (P7635914018254727760.a n : ℤ) = A142920 (n + 1)

end A142920

/-!
# A142921: Primes congruent to 58 mod 63.

The programs for A142921, the canonical program `A142921.P2886790080663886087` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142921 has offset 1).

The definition of A142921 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2178 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142921.P2886790080663886087

`p?[63*n-5]`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A142921

/-- `p?[63*n-5]` -/
def P2886790080663886087.Spec : Prop :=
  ∀ n, P2886790080663886087.a n = A142921 (n + 1)

theorem P2886790080663886087.correct : P2886790080663886087.Spec := by
  intro n
  simp only [A142921, Nat.add_sub_cancel]

end A142921

/-! ## A142921.P17005456296859567294

`∩[A061239(n+1), A141895(n+1)]`
-/

namespace A142921.P17005456296859567294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061239 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141895 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142921.P17005456296859567294

namespace A142921

/-- `∩[A061239(n+1), A141895(n+1)]` -/
def P17005456296859567294.Spec : Prop :=
  ∀ n, (P17005456296859567294.a n : ℤ) = A142921 (n + 1)

end A142921

/-! ## A142921.P9181891130619165014

`∩[A045383(n+1), A061239(n+1)]`
-/

namespace A142921.P9181891130619165014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045383 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061239 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142921.P9181891130619165014

namespace A142921

/-- `∩[A045383(n+1), A061239(n+1)]` -/
def P9181891130619165014.Spec : Prop :=
  ∀ n, (P9181891130619165014.a n : ℤ) = A142921 (n + 1)

end A142921

/-! ## A142921.P6920607295684627229

`∩[A045392(n+1), A061239(n+1)]`
-/

namespace A142921.P6920607295684627229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045392 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061239 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142921.P6920607295684627229

namespace A142921

/-- `∩[A045392(n+1), A061239(n+1)]` -/
def P6920607295684627229.Spec : Prop :=
  ∀ n, (P6920607295684627229.a n : ℤ) = A142921 (n + 1)

end A142921

/-! ## A142921.P18101168113128379698

`∩[A061239(n+1), A140442(n+1)]`
-/

namespace A142921.P18101168113128379698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061239 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140442 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142921.P18101168113128379698

namespace A142921

/-- `∩[A061239(n+1), A140442(n+1)]` -/
def P18101168113128379698.Spec : Prop :=
  ∀ n, (P18101168113128379698.a n : ℤ) = A142921 (n + 1)

end A142921

/-! ## A142921.P13360925064909335841

`∩[A129806(n+1), A141895(n+1)]`
-/

namespace A142921.P13360925064909335841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129806 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141895 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142921.P13360925064909335841

namespace A142921

/-- `∩[A129806(n+1), A141895(n+1)]` -/
def P13360925064909335841.Spec : Prop :=
  ∀ n, (P13360925064909335841.a n : ℤ) = A142921 (n + 1)

end A142921

/-! ## A142921.P18169731103776780405

`or(1, p?[A260440(n+1)])`
-/

namespace A142921.P18169731103776780405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260440 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A142921.P18169731103776780405

namespace A142921

/-- `or(1, p?[A260440(n+1)])` -/
def P18169731103776780405.Spec : Prop :=
  ∀ n, P18169731103776780405.a n = A142921 (n + 1)

end A142921

/-! ## A142921.P2749776185171154472

`A000027(p?[A260440(n+1)])`
-/

namespace A142921.P2749776185171154472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260440 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142921.P2749776185171154472

namespace A142921

/-- `A000027(p?[A260440(n+1)])` -/
def P2749776185171154472.Spec : Prop :=
  ∀ n, P2749776185171154472.a n = A142921 (n + 1)

end A142921

/-! ## A142921.P13296619647876418731

`∩[A045333(n+1), A260440(n+1)]`
-/

namespace A142921.P13296619647876418731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045333 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260440 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142921.P13296619647876418731

namespace A142921

/-- `∩[A045333(n+1), A260440(n+1)]` -/
def P13296619647876418731.Spec : Prop :=
  ∀ n, (P13296619647876418731.a n : ℤ) = A142921 (n + 1)

end A142921

/-! ## A142921.P2692441058479500871

`∩[A045343(n+1), A260440(n+1)]`
-/

namespace A142921.P2692441058479500871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045343 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260440 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142921.P2692441058479500871

namespace A142921

/-- `∩[A045343(n+1), A260440(n+1)]` -/
def P2692441058479500871.Spec : Prop :=
  ∀ n, (P2692441058479500871.a n : ℤ) = A142921 (n + 1)

end A142921

/-! ## A142921.P18365761341111427689

`∩[A045359(n+1), A260440(n+1)]`
-/

namespace A142921.P18365761341111427689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045359 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260440 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142921.P18365761341111427689

namespace A142921

/-- `∩[A045359(n+1), A260440(n+1)]` -/
def P18365761341111427689.Spec : Prop :=
  ∀ n, (P18365761341111427689.a n : ℤ) = A142921 (n + 1)

end A142921

/-! ## A142921.P8546395994179142676

`∩[A045368(n+1), A260440(n+1)]`
-/

namespace A142921.P8546395994179142676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045368 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260440 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142921.P8546395994179142676

namespace A142921

/-- `∩[A045368(n+1), A260440(n+1)]` -/
def P8546395994179142676.Spec : Prop :=
  ∀ n, (P8546395994179142676.a n : ℤ) = A142921 (n + 1)

end A142921

/-! ## A142921.P18215129859508818195

`∩[A045374(n+1), A260440(n+1)]`
-/

namespace A142921.P18215129859508818195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045374 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260440 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142921.P18215129859508818195

namespace A142921

/-- `∩[A045374(n+1), A260440(n+1)]` -/
def P18215129859508818195.Spec : Prop :=
  ∀ n, (P18215129859508818195.a n : ℤ) = A142921 (n + 1)

end A142921

/-! ## A142921.P13251234321589786602

`∩[A045377(n+1), A260440(n+1)]`
-/

namespace A142921.P13251234321589786602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045377 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260440 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142921.P13251234321589786602

namespace A142921

/-- `∩[A045377(n+1), A260440(n+1)]` -/
def P13251234321589786602.Spec : Prop :=
  ∀ n, (P13251234321589786602.a n : ℤ) = A142921 (n + 1)

end A142921

/-! ## A142921.P6567390645735978298

`∩[A045381(n+1), A260440(n+1)]`
-/

namespace A142921.P6567390645735978298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045381 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260440 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142921.P6567390645735978298

namespace A142921

/-- `∩[A045381(n+1), A260440(n+1)]` -/
def P6567390645735978298.Spec : Prop :=
  ∀ n, (P6567390645735978298.a n : ℤ) = A142921 (n + 1)

end A142921

/-! ## A142921.P1008021110306863137

`∩[A045383(n+1), A260440(n+1)]`
-/

namespace A142921.P1008021110306863137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045383 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260440 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142921.P1008021110306863137

namespace A142921

/-- `∩[A045383(n+1), A260440(n+1)]` -/
def P1008021110306863137.Spec : Prop :=
  ∀ n, (P1008021110306863137.a n : ℤ) = A142921 (n + 1)

end A142921

/-! ## A142921.P12305143354327654504

`∩[A045387(n+1), A260440(n+1)]`
-/

namespace A142921.P12305143354327654504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045387 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260440 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142921.P12305143354327654504

namespace A142921

/-- `∩[A045387(n+1), A260440(n+1)]` -/
def P12305143354327654504.Spec : Prop :=
  ∀ n, (P12305143354327654504.a n : ℤ) = A142921 (n + 1)

end A142921

/-! ## A142921.P6523957440223704205

`∩[A045389(n+1), A260440(n+1)]`
-/

namespace A142921.P6523957440223704205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045389 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260440 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142921.P6523957440223704205

namespace A142921

/-- `∩[A045389(n+1), A260440(n+1)]` -/
def P6523957440223704205.Spec : Prop :=
  ∀ n, (P6523957440223704205.a n : ℤ) = A142921 (n + 1)

end A142921

/-! ## A142921.P7702877778179087807

`∩[A045391(n+1), A260440(n+1)]`
-/

namespace A142921.P7702877778179087807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045391 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260440 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142921.P7702877778179087807

namespace A142921

/-- `∩[A045391(n+1), A260440(n+1)]` -/
def P7702877778179087807.Spec : Prop :=
  ∀ n, (P7702877778179087807.a n : ℤ) = A142921 (n + 1)

end A142921

/-! ## A142921.P9053349012494294058

`∩[A045392(n+1), A260440(n+1)]`
-/

namespace A142921.P9053349012494294058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045392 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260440 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142921.P9053349012494294058

namespace A142921

/-- `∩[A045392(n+1), A260440(n+1)]` -/
def P9053349012494294058.Spec : Prop :=
  ∀ n, (P9053349012494294058.a n : ℤ) = A142921 (n + 1)

end A142921

/-!
# A142922: Primes congruent to 59 mod 63.

The programs for A142922, the canonical program `A142922.P8521400803036767735` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142922 has offset 1).

The definition of A142922 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2162 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142922.P8521400803036767735

`p?[63*n-4]`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A142922

/-- `p?[63*n-4]` -/
def P8521400803036767735.Spec : Prop :=
  ∀ n, P8521400803036767735.a n = A142922 (n + 1)

theorem P8521400803036767735.correct : P8521400803036767735.Spec := by
  intro n
  simp only [A142922, Nat.add_sub_cancel]

end A142922

/-! ## A142922.P16258276569422946991

`∩[A061240(n+1), A141896(n+1)]`
-/

namespace A142922.P16258276569422946991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061240 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141896 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142922.P16258276569422946991

namespace A142922

/-- `∩[A061240(n+1), A141896(n+1)]` -/
def P16258276569422946991.Spec : Prop :=
  ∀ n, (P16258276569422946991.a n : ℤ) = A142922 (n + 1)

end A142922

/-! ## A142922.P14168466197827205412

`∩[A045425(n+1), A061240(n+1)]`
-/

namespace A142922.P14168466197827205412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045425 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061240 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142922.P14168466197827205412

namespace A142922

/-- `∩[A045425(n+1), A061240(n+1)]` -/
def P14168466197827205412.Spec : Prop :=
  ∀ n, (P14168466197827205412.a n : ℤ) = A142922 (n + 1)

end A142922

/-! ## A142922.P17441539178724437029

`∩[A045437(n+1), A061240(n+1)]`
-/

namespace A142922.P17441539178724437029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045437 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061240 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142922.P17441539178724437029

namespace A142922

/-- `∩[A045437(n+1), A061240(n+1)]` -/
def P17441539178724437029.Spec : Prop :=
  ∀ n, (P17441539178724437029.a n : ℤ) = A142922 (n + 1)

end A142922

/-! ## A142922.P4098114120711280887

`∩[A004621(n+1), A061240(n+1)]`
-/

namespace A142922.P4098114120711280887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004621 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061240 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142922.P4098114120711280887

namespace A142922

/-- `∩[A004621(n+1), A061240(n+1)]` -/
def P4098114120711280887.Spec : Prop :=
  ∀ n, (P4098114120711280887.a n : ℤ) = A142922 (n + 1)

end A142922

/-! ## A142922.P17599839603299797824

`∩[A129806(n+1), A141896(n+1)]`
-/

namespace A142922.P17599839603299797824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129806 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141896 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142922.P17599839603299797824

namespace A142922

/-- `∩[A129806(n+1), A141896(n+1)]` -/
def P17599839603299797824.Spec : Prop :=
  ∀ n, (P17599839603299797824.a n : ℤ) = A142922 (n + 1)

end A142922

/-! ## A142922.P15288087437068133286

`∩[A045333(n+1), A260440(n+1)+2]`
-/

namespace A142922.P15288087437068133286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045333 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260440 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142922.P15288087437068133286

namespace A142922

/-- `∩[A045333(n+1), A260440(n+1)+2]` -/
def P15288087437068133286.Spec : Prop :=
  ∀ n, (P15288087437068133286.a n : ℤ) = A142922 (n + 1)

end A142922

/-! ## A142922.P9608363727807288178

`∩[A045343(n+1), A260440(n+1)+2]`
-/

namespace A142922.P9608363727807288178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045343 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260440 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142922.P9608363727807288178

namespace A142922

/-- `∩[A045343(n+1), A260440(n+1)+2]` -/
def P9608363727807288178.Spec : Prop :=
  ∀ n, (P9608363727807288178.a n : ℤ) = A142922 (n + 1)

end A142922

/-! ## A142922.P14191313024283840156

`∩[A045425(n+1), A301623(n+1)]`
-/

namespace A142922.P14191313024283840156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045425 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301623 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142922.P14191313024283840156

namespace A142922

/-- `∩[A045425(n+1), A301623(n+1)]` -/
def P14191313024283840156.Spec : Prop :=
  ∀ n, (P14191313024283840156.a n : ℤ) = A142922 (n + 1)

end A142922

/-! ## A142922.P2019227917776522586

`∩[A045437(n+1), A301623(n+1)]`
-/

namespace A142922.P2019227917776522586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045437 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301623 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142922.P2019227917776522586

namespace A142922

/-- `∩[A045437(n+1), A301623(n+1)]` -/
def P2019227917776522586.Spec : Prop :=
  ∀ n, (P2019227917776522586.a n : ℤ) = A142922 (n + 1)

end A142922

/-! ## A142922.P1879228446544853765

`∩[A141896(n+1), A301623(n+1)]`
-/

namespace A142922.P1879228446544853765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141896 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301623 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142922.P1879228446544853765

namespace A142922

/-- `∩[A141896(n+1), A301623(n+1)]` -/
def P1879228446544853765.Spec : Prop :=
  ∀ n, (P1879228446544853765.a n : ℤ) = A142922 (n + 1)

end A142922

/-! ## A142922.P5823358477896326429

`∩[A079131(n+1), A141896(n+1)]`
-/

namespace A142922.P5823358477896326429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079131 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141896 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142922.P5823358477896326429

namespace A142922

/-- `∩[A079131(n+1), A141896(n+1)]` -/
def P5823358477896326429.Spec : Prop :=
  ∀ n, (P5823358477896326429.a n : ℤ) = A142922 (n + 1)

end A142922

/-! ## A142922.P5340544659059489841

`∩[A258016(2*n+1)-2, A129806(n+2)]`
-/

namespace A142922.P5340544659059489841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258016 (2 * n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129806 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142922.P5340544659059489841

namespace A142922

/-- `∩[A258016(2*n+1)-2, A129806(n+2)]` -/
def P5340544659059489841.Spec : Prop :=
  ∀ n, (P5340544659059489841.a n : ℤ) = A142922 (n + 1)

end A142922

/-! ## A142922.P5941431482036137739

`∩[A045425(n+1), A242215(n)]`
-/

namespace A142922.P5941431482036137739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045425 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242215 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142922.P5941431482036137739

namespace A142922

/-- `∩[A045425(n+1), A242215(n)]` -/
def P5941431482036137739.Spec : Prop :=
  ∀ n, (P5941431482036137739.a n : ℤ) = A142922 (n + 1)

end A142922

/-! ## A142922.P13781158929793637544

`∩[A045437(n+1), A242215(n)]`
-/

namespace A142922.P13781158929793637544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045437 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242215 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142922.P13781158929793637544

namespace A142922

/-- `∩[A045437(n+1), A242215(n)]` -/
def P13781158929793637544.Spec : Prop :=
  ∀ n, (P13781158929793637544.a n : ℤ) = A142922 (n + 1)

end A142922

/-! ## A142922.P7209152061643650872

`∩[A141896(n+1), A242215(n)]`
-/

namespace A142922.P7209152061643650872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141896 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242215 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142922.P7209152061643650872

namespace A142922

/-- `∩[A141896(n+1), A242215(n)]` -/
def P7209152061643650872.Spec : Prop :=
  ∀ n, (P7209152061643650872.a n : ℤ) = A142922 (n + 1)

end A142922

/-! ## A142922.P1236893507508478054

`∩[A061240(n+1), A131877(n)+2]`
-/

namespace A142922.P1236893507508478054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061240 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131877 n + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142922.P1236893507508478054

namespace A142922

/-- `∩[A061240(n+1), A131877(n)+2]` -/
def P1236893507508478054.Spec : Prop :=
  ∀ n, (P1236893507508478054.a n : ℤ) = A142922 (n + 1)

end A142922

/-! ## A142922.P12651185937701765271

`record[A020639(63*(n+1)-4)]`
-/

namespace A142922.P12651185937701765271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (63 * (n + 1) - 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142922.P12651185937701765271

namespace A142922

/-- `record[A020639(63*(n+1)-4)]` -/
def P12651185937701765271.Spec : Prop :=
  ∀ n, P12651185937701765271.a n = A142922 (n + 1)

end A142922

/-! ## A142922.P5366603708607993733

`or(1, p?[A017221(7*n+6)])`
-/

namespace A142922.P5366603708607993733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017221 (7 * n + 6)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A142922.P5366603708607993733

namespace A142922

/-- `or(1, p?[A017221(7*n+6)])` -/
def P5366603708607993733.Spec : Prop :=
  ∀ n, P5366603708607993733.a n = A142922 (n + 1)

end A142922

/-! ## A142922.P3228501436204679808

`∩[A045425(n+1), A017221(n)]`
-/

namespace A142922.P3228501436204679808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045425 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017221 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142922.P3228501436204679808

namespace A142922

/-- `∩[A045425(n+1), A017221(n)]` -/
def P3228501436204679808.Spec : Prop :=
  ∀ n, (P3228501436204679808.a n : ℤ) = A142922 (n + 1)

end A142922

/-!
# A142923: Primes congruent to 61 mod 63.

The programs for A142923, the canonical program `A142923.P6677659099145543344` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142923 has offset 1).

The definition of A142923 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2186 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142923.P6677659099145543344

`p?[63*n-2]`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A142923

/-- `p?[63*n-2]` -/
def P6677659099145543344.Spec : Prop :=
  ∀ n, P6677659099145543344.a n = A142923 (n + 1)

theorem P6677659099145543344.correct : P6677659099145543344.Spec := by
  intro n
  simp only [A142923, Nat.add_sub_cancel]

end A142923

/-! ## A142923.P6430425177637587271

`∩[A061241(n+1), A141897(n+1)]`
-/

namespace A142923.P6430425177637587271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061241 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141897 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142923.P6430425177637587271

namespace A142923

/-- `∩[A061241(n+1), A141897(n+1)]` -/
def P6430425177637587271.Spec : Prop :=
  ∀ n, (P6430425177637587271.a n : ℤ) = A142923 (n + 1)

end A142923

/-! ## A142923.P6663835937032364928

`∩[A045458(n+1), A061241(n+1)]`
-/

namespace A142923.P6663835937032364928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045458 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061241 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142923.P6663835937032364928

namespace A142923

/-- `∩[A045458(n+1), A061241(n+1)]` -/
def P6663835937032364928.Spec : Prop :=
  ∀ n, (P6663835937032364928.a n : ℤ) = A142923 (n + 1)

end A142923

/-! ## A142923.P3175216290984479148

`∩[A004623(n+1), A061241(n+1)]`
-/

namespace A142923.P3175216290984479148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004623 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061241 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142923.P3175216290984479148

namespace A142923

/-- `∩[A004623(n+1), A061241(n+1)]` -/
def P3175216290984479148.Spec : Prop :=
  ∀ n, (P3175216290984479148.a n : ℤ) = A142923 (n + 1)

end A142923

/-! ## A142923.P11083211739850900278

`∩[A129807(n+1), A141897(n+1)]`
-/

namespace A142923.P11083211739850900278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129807 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141897 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142923.P11083211739850900278

namespace A142923

/-- `∩[A129807(n+1), A141897(n+1)]` -/
def P11083211739850900278.Spec : Prop :=
  ∀ n, (P11083211739850900278.a n : ℤ) = A142923 (n + 1)

end A142923

/-! ## A142923.P11535877239486215442

`∩[A078403(n+1), A141897(n+1)]`
-/

namespace A142923.P11535877239486215442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078403 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141897 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142923.P11535877239486215442

namespace A142923

/-- `∩[A078403(n+1), A141897(n+1)]` -/
def P11535877239486215442.Spec : Prop :=
  ∀ n, (P11535877239486215442.a n : ℤ) = A142923 (n + 1)

end A142923

/-! ## A142923.P81538148321905644

`∩[A045458(n+1), A301628(n+1)]`
-/

namespace A142923.P81538148321905644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045458 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301628 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142923.P81538148321905644

namespace A142923

/-- `∩[A045458(n+1), A301628(n+1)]` -/
def P81538148321905644.Spec : Prop :=
  ∀ n, (P81538148321905644.a n : ℤ) = A142923 (n + 1)

end A142923

/-! ## A142923.P18161793149924625658

`∩[A141897(n+1), A301628(n+1)]`
-/

namespace A142923.P18161793149924625658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141897 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301628 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142923.P18161793149924625658

namespace A142923

/-- `∩[A141897(n+1), A301628(n+1)]` -/
def P18161793149924625658.Spec : Prop :=
  ∀ n, (P18161793149924625658.a n : ℤ) = A142923 (n + 1)

end A142923

/-! ## A142923.P7418958529908958988

`∩[A061241(n+1), A258016(n+1)]`
-/

namespace A142923.P7418958529908958988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061241 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258016 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142923.P7418958529908958988

namespace A142923

/-- `∩[A061241(n+1), A258016(n+1)]` -/
def P7418958529908958988.Spec : Prop :=
  ∀ n, (P7418958529908958988.a n : ℤ) = A142923 (n + 1)

end A142923

/-! ## A142923.P16556989696790530024

`∩[A078403(n+1), A258016(n+1)]`
-/

namespace A142923.P16556989696790530024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078403 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258016 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142923.P16556989696790530024

namespace A142923

/-- `∩[A078403(n+1), A258016(n+1)]` -/
def P16556989696790530024.Spec : Prop :=
  ∀ n, (P16556989696790530024.a n : ℤ) = A142923 (n + 1)

end A142923

/-! ## A142923.P2442223677992804993

`∩[A129807(n+1), A258016(n+1)]`
-/

namespace A142923.P2442223677992804993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129807 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258016 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142923.P2442223677992804993

namespace A142923

/-- `∩[A129807(n+1), A258016(n+1)]` -/
def P2442223677992804993.Spec : Prop :=
  ∀ n, (P2442223677992804993.a n : ℤ) = A142923 (n + 1)

end A142923

/-! ## A142923.P11946348098877367519

`∩[A045458(n+1), A242215(n)+2]`
-/

namespace A142923.P11946348098877367519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045458 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242215 n + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142923.P11946348098877367519

namespace A142923

/-- `∩[A045458(n+1), A242215(n)+2]` -/
def P11946348098877367519.Spec : Prop :=
  ∀ n, (P11946348098877367519.a n : ℤ) = A142923 (n + 1)

end A142923

/-! ## A142923.P16161350011673552897

`∩[A242215(n+1)+2, A045447(n+2)]`
-/

namespace A142923.P16161350011673552897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242215 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045447 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142923.P16161350011673552897

namespace A142923

/-- `∩[A242215(n+1)+2, A045447(n+2)]` -/
def P16161350011673552897.Spec : Prop :=
  ∀ n, (P16161350011673552897.a n : ℤ) = A142923 (n + 1)

end A142923

/-! ## A142923.P12853461675641078935

`∩[A061241(n+1), A126980(n)]`
-/

namespace A142923.P12853461675641078935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061241 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126980 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142923.P12853461675641078935

namespace A142923

/-- `∩[A061241(n+1), A126980(n)]` -/
def P12853461675641078935.Spec : Prop :=
  ∀ n, (P12853461675641078935.a n : ℤ) = A142923 (n + 1)

end A142923

/-! ## A142923.P14999517727126395594

`∩[A017053(2*n)+A017053(n+1), A061241(n+2)]`
-/

namespace A142923.P14999517727126395594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017053 (2 * n) + A017053 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061241 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142923.P14999517727126395594

namespace A142923

/-- `∩[A017053(2*n)+A017053(n+1), A061241(n+2)]` -/
def P14999517727126395594.Spec : Prop :=
  ∀ n, (P14999517727126395594.a n : ℤ) = A142923 (n + 1)

end A142923

/-! ## A142923.P8870944038258691900

`record[A006530(63*(n+1)-2)]`
-/

namespace A142923.P8870944038258691900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (63 * (n + 1) - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142923.P8870944038258691900

namespace A142923

/-- `record[A006530(63*(n+1)-2)]` -/
def P8870944038258691900.Spec : Prop :=
  ∀ n, P8870944038258691900.a n = A142923 (n + 1)

end A142923

/-! ## A142923.P18317329388118452197

`record[A020639(63*(n+1)-2)]`
-/

namespace A142923.P18317329388118452197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (63 * (n + 1) - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142923.P18317329388118452197

namespace A142923

/-- `record[A020639(63*(n+1)-2)]` -/
def P18317329388118452197.Spec : Prop :=
  ∀ n, P18317329388118452197.a n = A142923 (n + 1)

end A142923

/-! ## A142923.P9139316035889060571

`A001414(p?[A152691(n)-(n+2)])`
-/

namespace A142923.P9139316035889060571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152691 n - (n + 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142923.P9139316035889060571

namespace A142923

/-- `A001414(p?[A152691(n)-(n+2)])` -/
def P9139316035889060571.Spec : Prop :=
  ∀ n, P9139316035889060571.a n = A142923 (n + 1)

end A142923

/-! ## A142923.P15806927536556021693

`∩[A045458(n+1), A017245(n)]`
-/

namespace A142923.P15806927536556021693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045458 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017245 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142923.P15806927536556021693

namespace A142923

/-- `∩[A045458(n+1), A017245(n)]` -/
def P15806927536556021693.Spec : Prop :=
  ∀ n, (P15806927536556021693.a n : ℤ) = A142923 (n + 1)

end A142923

/-! ## A142923.P14561519842508062201

`∩[A141897(n+1), A017245(n)]`
-/

namespace A142923.P14561519842508062201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141897 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017245 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142923.P14561519842508062201

namespace A142923

/-- `∩[A141897(n+1), A017245(n)]` -/
def P14561519842508062201.Spec : Prop :=
  ∀ n, (P14561519842508062201.a n : ℤ) = A142923 (n + 1)

end A142923

/-!
# A142924: Primes congruent to 62 mod 63.

The programs for A142924, the canonical program `A142924.P3544101350319166389` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142924 has offset 1).

The definition of A142924 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2160 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142924.P3544101350319166389

`p?[63*n-1]`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A142924

/-- `p?[63*n-1]` -/
def P3544101350319166389.Spec : Prop :=
  ∀ n, P3544101350319166389.a n = A142924 (n + 1)

theorem P3544101350319166389.correct : P3544101350319166389.Spec := by
  intro n
  simp only [A142924, Nat.add_sub_cancel]

end A142924

/-! ## A142924.P11976728136926138902

`or(1, p?[7*9*n+62])`
-/

namespace A142924.P11976728136926138902
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 * (9 * n) + 62

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A142924.P11976728136926138902

namespace A142924

/-- `or(1, p?[7*9*n+62])` -/
def P11976728136926138902.Spec : Prop :=
  ∀ n, (P11976728136926138902.a n : ℤ) = A142924 (n + 1)

end A142924

/-! ## A142924.P1449821139105033598

`∩[A045473(n+1), A061242(n+1)]`
-/

namespace A142924.P1449821139105033598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045473 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061242 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142924.P1449821139105033598

namespace A142924

/-- `∩[A045473(n+1), A061242(n+1)]` -/
def P1449821139105033598.Spec : Prop :=
  ∀ n, (P1449821139105033598.a n : ℤ) = A142924 (n + 1)

end A142924

/-! ## A142924.P8469864777211675936

`∩[A061242(n+1), A141898(n+1)]`
-/

namespace A142924.P8469864777211675936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061242 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141898 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142924.P8469864777211675936

namespace A142924

/-- `∩[A061242(n+1), A141898(n+1)]` -/
def P8469864777211675936.Spec : Prop :=
  ∀ n, (P8469864777211675936.a n : ℤ) = A142924 (n + 1)

end A142924

/-! ## A142924.P11853265773327840959

`∩[A045464(n+1), A061242(n+1)]`
-/

namespace A142924.P11853265773327840959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045464 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061242 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142924.P11853265773327840959

namespace A142924

/-- `∩[A045464(n+1), A061242(n+1)]` -/
def P11853265773327840959.Spec : Prop :=
  ∀ n, (P11853265773327840959.a n : ℤ) = A142924 (n + 1)

end A142924

/-! ## A142924.P17384938267452227439

`∩[A004624(n+1), A061242(n+1)]`
-/

namespace A142924.P17384938267452227439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004624 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061242 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142924.P17384938267452227439

namespace A142924

/-- `∩[A004624(n+1), A061242(n+1)]` -/
def P17384938267452227439.Spec : Prop :=
  ∀ n, (P17384938267452227439.a n : ℤ) = A142924 (n + 1)

end A142924

/-! ## A142924.P1429071107076158326

`A000027(p?[62*(n+1)+n])`
-/

namespace A142924.P1429071107076158326
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  62 * (n + 1) + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A142924.P1429071107076158326

namespace A142924

/-- `A000027(p?[62*(n+1)+n])` -/
def P1429071107076158326.Spec : Prop :=
  ∀ n, P1429071107076158326.a n = A142924 (n + 1)

end A142924

/-! ## A142924.P8460417322212819969

`∩[A129805(n+1), A141898(n+1)]`
-/

namespace A142924.P8460417322212819969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129805 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141898 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142924.P8460417322212819969

namespace A142924

/-- `∩[A129805(n+1), A141898(n+1)]` -/
def P8460417322212819969.Spec : Prop :=
  ∀ n, (P8460417322212819969.a n : ℤ) = A142924 (n + 1)

end A142924

/-! ## A142924.P11757372864890794884

`∩[A045464(n+1), A295869(n+1)]`
-/

namespace A142924.P11757372864890794884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045464 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295869 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142924.P11757372864890794884

namespace A142924

/-- `∩[A045464(n+1), A295869(n+1)]` -/
def P11757372864890794884.Spec : Prop :=
  ∀ n, (P11757372864890794884.a n : ℤ) = A142924 (n + 1)

end A142924

/-! ## A142924.P7066054074047386027

`∩[A045473(n+1), A295869(n+1)]`
-/

namespace A142924.P7066054074047386027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045473 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295869 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142924.P7066054074047386027

namespace A142924

/-- `∩[A045473(n+1), A295869(n+1)]` -/
def P7066054074047386027.Spec : Prop :=
  ∀ n, (P7066054074047386027.a n : ℤ) = A142924 (n + 1)

end A142924

/-! ## A142924.P15417762838480924022

`∩[A141898(n+1), A295869(n+1)]`
-/

namespace A142924.P15417762838480924022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141898 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295869 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142924.P15417762838480924022

namespace A142924

/-- `∩[A141898(n+1), A295869(n+1)]` -/
def P15417762838480924022.Spec : Prop :=
  ∀ n, (P15417762838480924022.a n : ℤ) = A142924 (n + 1)

end A142924

/-! ## A142924.P2215551855742770037

`∩[A129805(n+1), A215146(n)-2]`
-/

namespace A142924.P2215551855742770037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129805 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215146 n - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142924.P2215551855742770037

namespace A142924

/-- `∩[A129805(n+1), A215146(n)-2]` -/
def P2215551855742770037.Spec : Prop :=
  ∀ n, (P2215551855742770037.a n : ℤ) = A142924 (n + 1)

end A142924

/-! ## A142924.P454530419849479880

`∩[A129805(n+1), A258016(n+1)+2]`
-/

namespace A142924.P454530419849479880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129805 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258016 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142924.P454530419849479880

namespace A142924

/-- `∩[A129805(n+1), A258016(n+1)+2]` -/
def P454530419849479880.Spec : Prop :=
  ∀ n, (P454530419849479880.a n : ℤ) = A142924 (n + 1)

end A142924

/-! ## A142924.P14547494983370531018

`∩[A045464(n+1), A239129(n+1)]`
-/

namespace A142924.P14547494983370531018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045464 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239129 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142924.P14547494983370531018

namespace A142924

/-- `∩[A045464(n+1), A239129(n+1)]` -/
def P14547494983370531018.Spec : Prop :=
  ∀ n, (P14547494983370531018.a n : ℤ) = A142924 (n + 1)

end A142924

/-! ## A142924.P813438059890397566

`∩[A045473(n+1), A239129(n+1)]`
-/

namespace A142924.P813438059890397566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045473 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239129 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142924.P813438059890397566

namespace A142924

/-- `∩[A045473(n+1), A239129(n+1)]` -/
def P813438059890397566.Spec : Prop :=
  ∀ n, (P813438059890397566.a n : ℤ) = A142924 (n + 1)

end A142924

/-! ## A142924.P14229754522738352966

`∩[A141898(n+1), A239129(n+1)]`
-/

namespace A142924.P14229754522738352966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141898 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239129 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142924.P14229754522738352966

namespace A142924

/-- `∩[A141898(n+1), A239129(n+1)]` -/
def P14229754522738352966.Spec : Prop :=
  ∀ n, (P14229754522738352966.a n : ℤ) = A142924 (n + 1)

end A142924

/-! ## A142924.P17905031967727763858

`∩[A045464(n+1), A161705(n)-2]`
-/

namespace A142924.P17905031967727763858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045464 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161705 n - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142924.P17905031967727763858

namespace A142924

/-- `∩[A045464(n+1), A161705(n)-2]` -/
def P17905031967727763858.Spec : Prop :=
  ∀ n, (P17905031967727763858.a n : ℤ) = A142924 (n + 1)

end A142924

/-! ## A142924.P2565063755945163570

`∩[A045473(n+1), A161705(n)-2]`
-/

namespace A142924.P2565063755945163570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045473 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161705 n - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142924.P2565063755945163570

namespace A142924

/-- `∩[A045473(n+1), A161705(n)-2]` -/
def P2565063755945163570.Spec : Prop :=
  ∀ n, (P2565063755945163570.a n : ℤ) = A142924 (n + 1)

end A142924

/-!
# A142925: Primes congruent to 1 mod 64.

The programs for A142925, there is no canonical definition to state claims against.
-/

/-! ## A142925.P8846298030434341327

`∪[A105129(n+1), A208177(n+1)]`
-/

namespace A142925.P8846298030434341327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105129 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208177 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A142925.P8846298030434341327

/-! ## A142925.P7198874278685470702

`p?[64*n+1]`
-/

namespace A142925.P7198874278685470702
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  64 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142925.P7198874278685470702

/-! ## A142925.P11820142901653098827

`or(1, p?[or(1, 64*n)])`
-/

namespace A142925.P11820142901653098827
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (64 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A142925.P11820142901653098827

/-! ## A142925.P7443216371590695816

`or(1, p?[a(n-1)+64])` with `a(0)=1`
-/

namespace A142925.P7443216371590695816
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) + 64

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A142925.P7443216371590695816

/-! ## A142925.P16398321221083329727

`or(1, p?[A158071(n+1)])`
-/

namespace A142925.P16398321221083329727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158071 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A142925.P16398321221083329727

/-! ## A142925.P946778835510863622

`∩[A094407(n+1), A158071(n+1)]`
-/

namespace A142925.P946778835510863622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094407 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158071 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142925.P946778835510863622

/-! ## A142925.P2171742492791122598

`∩[A133870(n+1), A158071(n+1)]`
-/

namespace A142925.P2171742492791122598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133870 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158071 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142925.P2171742492791122598

/-! ## A142925.P1240893641882022266

`∩[A158071(n+1), A209554(n+1)]`
-/

namespace A142925.P1240893641882022266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158071 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209554 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142925.P1240893641882022266

/-! ## A142925.P14236102169426279006

`∩[A158071(n+1), A214643(n+1)]`
-/

namespace A142925.P14236102169426279006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158071 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214643 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142925.P14236102169426279006

/-! ## A142925.P16828657949199471450

`record[p?[A158071(A038502(n+1)+2)]]`
-/

namespace A142925.P16828657949199471450
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158071 (A038502 (n + 1) + 2).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142925.P16828657949199471450

/-! ## A142925.P9345014560217686333

`p?[A158071(n+1)]%A048295(n+1)`
-/

namespace A142925.P9345014560217686333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158071 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A048295 (n + 1))

end

end A142925.P9345014560217686333

/-! ## A142925.P8635603015407773880

`∩[A007519(n+1), A158071(n+1)]`
-/

namespace A142925.P8635603015407773880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007519 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158071 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142925.P8635603015407773880

/-! ## A142925.P10836447256309150527

`∩[A045390(n+1), A158071(n+1)]`
-/

namespace A142925.P10836447256309150527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045390 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158071 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142925.P10836447256309150527

/-! ## A142925.P1095425870934577630

`∩[A158071(n+1), A209544(n+1)]`
-/

namespace A142925.P1095425870934577630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158071 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209544 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142925.P1095425870934577630

/-! ## A142925.P12480371725093507339

`∩[A158071(n+1), A172280(n+1)]`
-/

namespace A142925.P12480371725093507339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158071 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172280 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142925.P12480371725093507339

/-! ## A142925.P4894140674104079028

`∩[A089200(n+1), A158071(n+1)]`
-/

namespace A142925.P4894140674104079028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089200 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158071 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142925.P4894140674104079028

/-! ## A142925.P14502410397018321101

`or(1, p?[A151984(n+1)])`
-/

namespace A142925.P14502410397018321101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151984 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A142925.P14502410397018321101

/-!
# A142926: Primes congruent to 3 mod 64.

The programs for A142926, the canonical program `A142926.P7016555721576362833` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142926 has offset 1).

The definition of A142926 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2441 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142926.P7016555721576362833

`p?[64*n+3]`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A142926

/-- `p?[64*n+3]` -/
def P7016555721576362833.Spec : Prop :=
  ∀ n, (P7016555721576362833.a n : ℤ) = A142926 (n + 1)

theorem P7016555721576362833.correct : P7016555721576362833.Spec := by
  intro n
  simp only [A142926, Nat.add_sub_cancel]

end A142926

/-! ## A142926.P8949893997356189095

`or(1, p?[or(3, 64*n)])`
-/

namespace A142926.P8949893997356189095
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 3 (64 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A142926.P8949893997356189095

namespace A142926

/-- `or(1, p?[or(3, 64*n)])` -/
def P8949893997356189095.Spec : Prop :=
  ∀ n, (P8949893997356189095.a n : ℤ) = A142926 (n + 1)

end A142926

/-! ## A142926.P1204298402664945387

`or(1, p?[a(n-1)+64])` with `a(0)=3`
-/

namespace A142926.P1204298402664945387
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3] fun n f1 =>
  f1 (n - 1) + 64

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A142926.P1204298402664945387

namespace A142926

/-- `or(1, p?[a(n-1)+64])` -/
def P1204298402664945387.Spec : Prop :=
  ∀ n, (P1204298402664945387.a n : ℤ) = A142926 (n + 1)

end A142926

/-! ## A142926.P2361496021491286623

`∩[A238477(2*n+1)-2, A214588(n+2)]`
-/

namespace A142926.P2361496021491286623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238477 (2 * n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214588 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142926.P2361496021491286623

namespace A142926

/-- `∩[A238477(2*n+1)-2, A214588(n+2)]` -/
def P2361496021491286623.Spec : Prop :=
  ∀ n, (P2361496021491286623.a n : ℤ) = A142926 (n + 1)

end A142926

/-! ## A142926.P7379715746455039195

`∩[A238477(2*n+1)-2, A042999(n+2)]`
-/

namespace A142926.P7379715746455039195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238477 (2 * n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042999 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142926.P7379715746455039195

namespace A142926

/-- `∩[A238477(2*n+1)-2, A042999(n+2)]` -/
def P7379715746455039195.Spec : Prop :=
  ∀ n, (P7379715746455039195.a n : ℤ) = A142926 (n + 1)

end A142926

/-! ## A142926.P9110626411571325163

`record[A020639(64*n+3)]`
-/

namespace A142926.P9110626411571325163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (64 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142926.P9110626411571325163

namespace A142926

/-- `record[A020639(64*n+3)]` -/
def P9110626411571325163.Spec : Prop :=
  ∀ n, P9110626411571325163.a n = A142926 (n + 1)

end A142926

/-! ## A142926.P14818936676466707100

`or(1, p?[A017101(8*n)])`
-/

namespace A142926.P14818936676466707100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017101 (8 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A142926.P14818936676466707100

namespace A142926

/-- `or(1, p?[A017101(8*n)])` -/
def P14818936676466707100.Spec : Prop :=
  ∀ n, P14818936676466707100.a n = A142926 (n + 1)

end A142926

/-! ## A142926.P3343130210289251444

`A000265(p?[A017101(8*n)])`
-/

namespace A142926.P3343130210289251444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017101 (8 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142926.P3343130210289251444

namespace A142926

/-- `A000265(p?[A017101(8*n)])` -/
def P3343130210289251444.Spec : Prop :=
  ∀ n, P3343130210289251444.a n = A142926 (n + 1)

end A142926

/-! ## A142926.P2419425670487540755

`A343996(p?[A146511(n+1)-(n+2)])`
-/

namespace A142926.P2419425670487540755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146511 (n + 1) - (n + 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343996 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142926.P2419425670487540755

namespace A142926

/-- `A343996(p?[A146511(n+1)-(n+2)])` -/
def P2419425670487540755.Spec : Prop :=
  ∀ n, P2419425670487540755.a n = A142926 (n + 1)

end A142926

/-!
# A142927: Primes congruent to 5 mod 64.

The programs for A142927, the canonical program `A142927.P4410429363118527156` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142927 has offset 1).

The definition of A142927 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2460 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142927.P4410429363118527156

`p?[64*n+5]`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A142927

/-- `p?[64*n+5]` -/
def P4410429363118527156.Spec : Prop :=
  ∀ n, (P4410429363118527156.a n : ℤ) = A142927 (n + 1)

theorem P4410429363118527156.correct : P4410429363118527156.Spec := by
  intro n
  simp only [A142927, Nat.add_sub_cancel]

end A142927

/-! ## A142927.P17413836110175581499

`or(1, p?[or(5, 64*n)])`
-/

namespace A142927.P17413836110175581499
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 5 (64 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A142927.P17413836110175581499

namespace A142927

/-- `or(1, p?[or(5, 64*n)])` -/
def P17413836110175581499.Spec : Prop :=
  ∀ n, (P17413836110175581499.a n : ℤ) = A142927 (n + 1)

end A142927

/-! ## A142927.P11304289657470192274

`or(1, p?[a(n-1)+64])` with `a(0)=5`
-/

namespace A142927.P11304289657470192274
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [5] fun n f1 =>
  f1 (n - 1) + 64

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A142927.P11304289657470192274

namespace A142927

/-- `or(1, p?[a(n-1)+64])` -/
def P11304289657470192274.Spec : Prop :=
  ∀ n, (P11304289657470192274.a n : ℤ) = A142927 (n + 1)

end A142927

/-! ## A142927.P17133093582226706562

`or(1, p?[A146511(n+1)-n])`
-/

namespace A142927.P17133093582226706562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146511 (n + 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A142927.P17133093582226706562

namespace A142927

/-- `or(1, p?[A146511(n+1)-n])` -/
def P17133093582226706562.Spec : Prop :=
  ∀ n, P17133093582226706562.a n = A142927 (n + 1)

end A142927

/-! ## A142927.P6077793712228629182

`∩[A238477(2*n+1), A045366(n+2)]`
-/

namespace A142927.P6077793712228629182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238477 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045366 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142927.P6077793712228629182

namespace A142927

/-- `∩[A238477(2*n+1), A045366(n+2)]` -/
def P6077793712228629182.Spec : Prop :=
  ∀ n, (P6077793712228629182.a n : ℤ) = A142927 (n + 1)

end A142927

/-! ## A142927.P2457169821204508651

`p?[A146511(n+1)-n]%A000096(n+5)²`
-/

namespace A142927.P2457169821204508651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146511 (n + 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A000096 (n + 5) ^ 2)

end

end A142927.P2457169821204508651

namespace A142927

/-- `p?[A146511(n+1)-n]%A000096(n+5)²` -/
def P2457169821204508651.Spec : Prop :=
  ∀ n, P2457169821204508651.a n = A142927 (n + 1)

end A142927

/-! ## A142927.P14763957005581695299

`p?[A146511(n+1)-n]/(A004442(n)-n)²`
-/

namespace A142927.P14763957005581695299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146511 (n + 1) - (n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / ((A004442 n - (n : ℤ)) ^ 2 : ℚ)

end

end A142927.P14763957005581695299

namespace A142927

/-- `p?[A146511(n+1)-n]/(A004442(n)-n)²` -/
def P14763957005581695299.Spec : Prop :=
  ∀ n, P14763957005581695299.a n = (A142927 (n + 1) : ℚ)

end A142927

/-! ## A142927.P14307221047673365991

`p?[A146511(n+1)-n]/A000041(gcd(n, n+1))`
-/

namespace A142927.P14307221047673365991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146511 (n + 1) - (n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / (A000041 (Nat.gcd n (n + 1)) : ℚ)

end

end A142927.P14307221047673365991

namespace A142927

/-- `p?[A146511(n+1)-n]/A000041(gcd(n, n+1))` -/
def P14307221047673365991.Spec : Prop :=
  ∀ n, P14307221047673365991.a n = (A142927 (n + 1) : ℚ)

end A142927

/-! ## A142927.P3934426566186265805

`∩[A238477(2*n+1), A002313(n+2)]`
-/

namespace A142927.P3934426566186265805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238477 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002313 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142927.P3934426566186265805

namespace A142927

/-- `∩[A238477(2*n+1), A002313(n+2)]` -/
def P3934426566186265805.Spec : Prop :=
  ∀ n, (P3934426566186265805.a n : ℤ) = A142927 (n + 1)

end A142927

/-! ## A142927.P8497872997518584853

`∩[A238477(2*n+1), A280084(n+2)]`
-/

namespace A142927.P8497872997518584853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238477 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280084 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142927.P8497872997518584853

namespace A142927

/-- `∩[A238477(2*n+1), A280084(n+2)]` -/
def P8497872997518584853.Spec : Prop :=
  ∀ n, (P8497872997518584853.a n : ℤ) = A142927 (n + 1)

end A142927

/-! ## A142927.P5873443952464181594

`∩[A238477(2*n+1), A045355(n+2)]`
-/

namespace A142927.P5873443952464181594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238477 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045355 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142927.P5873443952464181594

namespace A142927

/-- `∩[A238477(2*n+1), A045355(n+2)]` -/
def P5873443952464181594.Spec : Prop :=
  ∀ n, (P5873443952464181594.a n : ℤ) = A142927 (n + 1)

end A142927

/-! ## A142927.P5574314184980384350

`∩[A238477(2*n+1), A214588(n+2)]`
-/

namespace A142927.P5574314184980384350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238477 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214588 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142927.P5574314184980384350

namespace A142927

/-- `∩[A238477(2*n+1), A214588(n+2)]` -/
def P5574314184980384350.Spec : Prop :=
  ∀ n, (P5574314184980384350.a n : ℤ) = A142927 (n + 1)

end A142927

/-! ## A142927.P12732418402362760916

`∩[A238477(2*n+1), A228228(n+2)]`
-/

namespace A142927.P12732418402362760916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238477 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228228 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142927.P12732418402362760916

namespace A142927

/-- `∩[A238477(2*n+1), A228228(n+2)]` -/
def P12732418402362760916.Spec : Prop :=
  ∀ n, (P12732418402362760916.a n : ℤ) = A142927 (n + 1)

end A142927

/-! ## A142927.P4670556541638012252

`∩[A238477(2*n+1), A003629(n+2)]`
-/

namespace A142927.P4670556541638012252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238477 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003629 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142927.P4670556541638012252

namespace A142927

/-- `∩[A238477(2*n+1), A003629(n+2)]` -/
def P4670556541638012252.Spec : Prop :=
  ∀ n, (P4670556541638012252.a n : ℤ) = A142927 (n + 1)

end A142927

/-! ## A142927.P2847112238421275136

`∩[A238477(2*n+1), A042999(n+2)]`
-/

namespace A142927.P2847112238421275136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238477 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042999 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142927.P2847112238421275136

namespace A142927

/-- `∩[A238477(2*n+1), A042999(n+2)]` -/
def P2847112238421275136.Spec : Prop :=
  ∀ n, (P2847112238421275136.a n : ℤ) = A142927 (n + 1)

end A142927

/-! ## A142927.P177349814666102727

`∩[A238477(2*n+1), A055025(n+2)]`
-/

namespace A142927.P177349814666102727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238477 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055025 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142927.P177349814666102727

namespace A142927

/-- `∩[A238477(2*n+1), A055025(n+2)]` -/
def P177349814666102727.Spec : Prop :=
  ∀ n, (P177349814666102727.a n : ℤ) = A142927 (n + 1)

end A142927

/-! ## A142927.P10025450718592109991

`∩[A238477(2*n+1), A109515(n+2)]`
-/

namespace A142927.P10025450718592109991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238477 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109515 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142927.P10025450718592109991

namespace A142927

/-- `∩[A238477(2*n+1), A109515(n+2)]` -/
def P10025450718592109991.Spec : Prop :=
  ∀ n, (P10025450718592109991.a n : ℤ) = A142927 (n + 1)

end A142927

/-! ## A142927.P6819063925878568386

`A061007(A001748(n+1))+p?[A146511(n+1)-n]`
-/

namespace A142927.P6819063925878568386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146511 (n + 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061007 (A001748 (n + 1)).toNat + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142927.P6819063925878568386

namespace A142927

/-- `A061007(A001748(n+1))+p?[A146511(n+1)-n]` -/
def P6819063925878568386.Spec : Prop :=
  ∀ n, P6819063925878568386.a n = A142927 (n + 1)

end A142927

/-! ## A142927.P6782985840100762421

`A001414(p?[A152691(n)+5])`
-/

namespace A142927.P6782985840100762421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152691 n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142927.P6782985840100762421

namespace A142927

/-- `A001414(p?[A152691(n)+5])` -/
def P6782985840100762421.Spec : Prop :=
  ∀ n, P6782985840100762421.a n = A142927 (n + 1)

end A142927

/-! ## A142927.P14203660977474945488

`filter[A238477(2*n+1), A010051(#)]`
-/

namespace A142927.P14203660977474945488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238477 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A142927.P14203660977474945488

namespace A142927

/-- `filter[A238477(2*n+1), A010051(#)]` -/
def P14203660977474945488.Spec : Prop :=
  ∀ n, P14203660977474945488.a n = A142927 (n + 1)

end A142927

/-!
# A142928: Primes congruent to 7 mod 64.

The programs for A142928, the canonical program `A142928.P10249613510516575221` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142928 has offset 1).

The definition of A142928 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2441 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142928.P10249613510516575221

`p?[64*n+7]`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A142928

/-- `p?[64*n+7]` -/
def P10249613510516575221.Spec : Prop :=
  ∀ n, (P10249613510516575221.a n : ℤ) = A142928 (n + 1)

theorem P10249613510516575221.correct : P10249613510516575221.Spec := by
  intro n
  simp only [A142928, Nat.add_sub_cancel]

end A142928

/-! ## A142928.P9268332817345482178

`or(1, p?[or(7, 8*8*n)])`
-/

namespace A142928.P9268332817345482178
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 7 (8 * (8 * n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A142928.P9268332817345482178

namespace A142928

/-- `or(1, p?[or(7, 8*8*n)])` -/
def P9268332817345482178.Spec : Prop :=
  ∀ n, (P9268332817345482178.a n : ℤ) = A142928 (n + 1)

end A142928

/-! ## A142928.P11547444217954084470

`or(1, p?[a(n-1)+64])` with `a(0)=7`
-/

namespace A142928.P11547444217954084470
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [7] fun n f1 =>
  f1 (n - 1) + 64

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A142928.P11547444217954084470

namespace A142928

/-- `or(1, p?[a(n-1)+64])` -/
def P11547444217954084470.Spec : Prop :=
  ∀ n, (P11547444217954084470.a n : ℤ) = A142928 (n + 1)

end A142928

/-! ## A142928.P18273214013303261517

`∩[A238477(2*n+1)+2, A214588(n+2)]`
-/

namespace A142928.P18273214013303261517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238477 (2 * n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214588 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142928.P18273214013303261517

namespace A142928

/-- `∩[A238477(2*n+1)+2, A214588(n+2)]` -/
def P18273214013303261517.Spec : Prop :=
  ∀ n, (P18273214013303261517.a n : ℤ) = A142928 (n + 1)

end A142928

/-! ## A142928.P978466457829158599

`∩[A238477(2*n+1)+2, A003628(n+2)]`
-/

namespace A142928.P978466457829158599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238477 (2 * n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003628 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142928.P978466457829158599

namespace A142928

/-- `∩[A238477(2*n+1)+2, A003628(n+2)]` -/
def P978466457829158599.Spec : Prop :=
  ∀ n, (P978466457829158599.a n : ℤ) = A142928 (n + 1)

end A142928

/-! ## A142928.P15685095689359847960

`∩[A238477(2*n+1)+2, A045355(n+2)]`
-/

namespace A142928.P15685095689359847960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238477 (2 * n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045355 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142928.P15685095689359847960

namespace A142928

/-- `∩[A238477(2*n+1)+2, A045355(n+2)]` -/
def P15685095689359847960.Spec : Prop :=
  ∀ n, (P15685095689359847960.a n : ℤ) = A142928 (n + 1)

end A142928

/-! ## A142928.P4187977866869704144

`record[A006530(64*n+7)]`
-/

namespace A142928.P4187977866869704144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (64 * n + 7)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142928.P4187977866869704144

namespace A142928

/-- `record[A006530(64*n+7)]` -/
def P4187977866869704144.Spec : Prop :=
  ∀ n, P4187977866869704144.a n = A142928 (n + 1)

end A142928

/-! ## A142928.P11855619940956301448

`record[A020639(64*n+7)]`
-/

namespace A142928.P11855619940956301448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (64 * n + 7)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142928.P11855619940956301448

namespace A142928

/-- `record[A020639(64*n+7)]` -/
def P11855619940956301448.Spec : Prop :=
  ∀ n, P11855619940956301448.a n = A142928 (n + 1)

end A142928

/-! ## A142928.P13290179705870294778

`∩[A142037(n+1), A158938(n)]`
-/

namespace A142928.P13290179705870294778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142037 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158938 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142928.P13290179705870294778

namespace A142928

/-- `∩[A142037(n+1), A158938(n)]` -/
def P13290179705870294778.Spec : Prop :=
  ∀ n, (P13290179705870294778.a n : ℤ) = A142928 (n + 1)

end A142928

/-! ## A142928.P1094891401847012875

`∩[A103621(n+1), A142037(n+1)]`
-/

namespace A142928.P1094891401847012875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103621 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142037 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142928.P1094891401847012875

namespace A142928

/-- `∩[A103621(n+1), A142037(n+1)]` -/
def P1094891401847012875.Spec : Prop :=
  ∀ n, (P1094891401847012875.a n : ℤ) = A142928 (n + 1)

end A142928

/-! ## A142928.P17222080543440209972

`∩[A314054(2*n+1)+2, A045382(n+2)]`
-/

namespace A142928.P17222080543440209972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314054 (2 * n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045382 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142928.P17222080543440209972

namespace A142928

/-- `∩[A314054(2*n+1)+2, A045382(n+2)]` -/
def P17222080543440209972.Spec : Prop :=
  ∀ n, (P17222080543440209972.a n : ℤ) = A142928 (n + 1)

end A142928

/-!
# A142929: Primes congruent to 9 mod 64.

The programs for A142929, the canonical program `A142929.P14568511180441234267` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142929 has offset 1).

The definition of A142929 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2433 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142929.P14568511180441234267

`p?[64*n+9]`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A142929

/-- `p?[64*n+9]` -/
def P14568511180441234267.Spec : Prop :=
  ∀ n, (P14568511180441234267.a n : ℤ) = A142929 (n + 1)

theorem P14568511180441234267.correct : P14568511180441234267.Spec := by
  intro n
  simp only [A142929, Nat.add_sub_cancel]

end A142929

/-! ## A142929.P1486642455130021468

`or(1, p?[a(n-1)+64])` with `a(0)=9`
-/

namespace A142929.P1486642455130021468
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [9] fun n f1 =>
  f1 (n - 1) + 64

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A142929.P1486642455130021468

namespace A142929

/-- `or(1, p?[a(n-1)+64])` -/
def P1486642455130021468.Spec : Prop :=
  ∀ n, (P1486642455130021468.a n : ℤ) = A142929 (n + 1)

end A142929

/-! ## A142929.P7817120242865720206

`record[A006530(64*(n+1)+9)]`
-/

namespace A142929.P7817120242865720206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (64 * (n + 1) + 9)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142929.P7817120242865720206

namespace A142929

/-- `record[A006530(64*(n+1)+9)]` -/
def P7817120242865720206.Spec : Prop :=
  ∀ n, P7817120242865720206.a n = A142929 (n + 1)

end A142929

/-! ## A142929.P17585470606999578257

`record[A020639(64*(n+1)+9)]`
-/

namespace A142929.P17585470606999578257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (64 * (n + 1) + 9)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142929.P17585470606999578257

namespace A142929

/-- `record[A020639(64*(n+1)+9)]` -/
def P17585470606999578257.Spec : Prop :=
  ∀ n, P17585470606999578257.a n = A142929 (n + 1)

end A142929

/-! ## A142929.P7349439827687699815

`record[A001414(A157336(n+1)+1)]`
-/

namespace A142929.P7349439827687699815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A157336 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142929.P7349439827687699815

namespace A142929

/-- `record[A001414(A157336(n+1)+1)]` -/
def P7349439827687699815.Spec : Prop :=
  ∀ n, P7349439827687699815.a n = A142929 (n + 1)

end A142929

/-! ## A142929.P398151162572696653

`∩[A081647(n+1), A142038(n+1)]`
-/

namespace A142929.P398151162572696653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081647 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142038 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142929.P398151162572696653

namespace A142929

/-- `∩[A081647(n+1), A142038(n+1)]` -/
def P398151162572696653.Spec : Prop :=
  ∀ n, (P398151162572696653.a n : ℤ) = A142929 (n + 1)

end A142929

/-! ## A142929.P476158749879255383

`or(1, p?[A004768(8*n)])`
-/

namespace A142929.P476158749879255383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004768 (8 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A142929.P476158749879255383

namespace A142929

/-- `or(1, p?[A004768(8*n)])` -/
def P476158749879255383.Spec : Prop :=
  ∀ n, P476158749879255383.a n = A142929 (n + 1)

end A142929

/-! ## A142929.P6501046908297243078

`A000027(p?[A004768(8*n)])`
-/

namespace A142929.P6501046908297243078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004768 (8 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142929.P6501046908297243078

namespace A142929

/-- `A000027(p?[A004768(8*n)])` -/
def P6501046908297243078.Spec : Prop :=
  ∀ n, P6501046908297243078.a n = A142929 (n + 1)

end A142929

/-! ## A142929.P17300235236028376316

`A007913(p?[A004768(8*n)])`
-/

namespace A142929.P17300235236028376316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004768 (8 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142929.P17300235236028376316

namespace A142929

/-- `A007913(p?[A004768(8*n)])` -/
def P17300235236028376316.Spec : Prop :=
  ∀ n, P17300235236028376316.a n = A142929 (n + 1)

end A142929

/-! ## A142929.P62811251310617665

`or(1, p?[A017077(A017077(n))])`
-/

namespace A142929.P62811251310617665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017077 (A017077 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A142929.P62811251310617665

namespace A142929

/-- `or(1, p?[A017077(A017077(n))])` -/
def P62811251310617665.Spec : Prop :=
  ∀ n, P62811251310617665.a n = A142929 (n + 1)

end A142929

/-! ## A142929.P11242314775582560662

`∩[A142038(n+1), A158938(n)]`
-/

namespace A142929.P11242314775582560662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142038 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158938 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142929.P11242314775582560662

namespace A142929

/-- `∩[A142038(n+1), A158938(n)]` -/
def P11242314775582560662.Spec : Prop :=
  ∀ n, (P11242314775582560662.a n : ℤ) = A142929 (n + 1)

end A142929

/-! ## A142929.P17475188643755314924

`∩[A214643(n+1), A158938(n)]`
-/

namespace A142929.P17475188643755314924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214643 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158938 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142929.P17475188643755314924

namespace A142929

/-- `∩[A214643(n+1), A158938(n)]` -/
def P17475188643755314924.Spec : Prop :=
  ∀ n, (P17475188643755314924.a n : ℤ) = A142929 (n + 1)

end A142929

/-! ## A142929.P7712648202007758198

`∩[A103621(n+1), A142038(n+1)]`
-/

namespace A142929.P7712648202007758198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103621 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142038 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142929.P7712648202007758198

namespace A142929

/-- `∩[A103621(n+1), A142038(n+1)]` -/
def P7712648202007758198.Spec : Prop :=
  ∀ n, (P7712648202007758198.a n : ℤ) = A142929 (n + 1)

end A142929

/-! ## A142929.P9702629687070119670

`∩[A103621(n+1), A214643(n+1)]`
-/

namespace A142929.P9702629687070119670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103621 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214643 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142929.P9702629687070119670

namespace A142929

/-- `∩[A103621(n+1), A214643(n+1)]` -/
def P9702629687070119670.Spec : Prop :=
  ∀ n, (P9702629687070119670.a n : ℤ) = A142929 (n + 1)

end A142929

/-! ## A142929.P2903190525225067932

`p?[A004768(8*n)]*A000930(C(2, n²))`
-/

namespace A142929.P2903190525225067932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004768 (8 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * A000930 (Nat.choose 2 (n ^ 2))

end

end A142929.P2903190525225067932

namespace A142929

/-- `p?[A004768(8*n)]*A000930(C(2, n²))` -/
def P2903190525225067932.Spec : Prop :=
  ∀ n, P2903190525225067932.a n = A142929 (n + 1)

end A142929

/-! ## A142929.P12337254785859753613

`filter[A142038(n+1), A320006(#)]`
-/

namespace A142929.P12337254785859753613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142038 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A320006 (f1 j).toNat = 1) n)

end

end A142929.P12337254785859753613

namespace A142929

/-- `filter[A142038(n+1), A320006(#)]` -/
def P12337254785859753613.Spec : Prop :=
  ∀ n, P12337254785859753613.a n = A142929 (n + 1)

end A142929

/-!
# A142930: Primes congruent to 11 mod 64.

The programs for A142930, the canonical program `A142930.P3337481358159353516` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142930 has offset 1).

The definition of A142930 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2451 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142930.P3337481358159353516

`p?[8*8*n+11]`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A142930

/-- `p?[8*8*n+11]` -/
def P3337481358159353516.Spec : Prop :=
  ∀ n, (P3337481358159353516.a n : ℤ) = A142930 (n + 1)

theorem P3337481358159353516.correct : P3337481358159353516.Spec := by
  intro n
  simp only [A142930, Nat.add_sub_cancel]

end A142930

/-! ## A142930.P10830225477402584366

`or(1, p?[a(n-1)+64])` with `a(0)=11`
-/

namespace A142930.P10830225477402584366
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [11] fun n f1 =>
  f1 (n - 1) + 64

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A142930.P10830225477402584366

namespace A142930

/-- `or(1, p?[a(n-1)+64])` -/
def P10830225477402584366.Spec : Prop :=
  ∀ n, (P10830225477402584366.a n : ℤ) = A142930 (n + 1)

end A142930

/-! ## A142930.P6877720032129091732

`A000027(p?[A139612(n)-A005408(n)])`
-/

namespace A142930.P6877720032129091732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139612 n - A005408 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142930.P6877720032129091732

namespace A142930

/-- `A000027(p?[A139612(n)-A005408(n)])` -/
def P6877720032129091732.Spec : Prop :=
  ∀ n, P6877720032129091732.a n = A142930 (n + 1)

end A142930

/-! ## A142930.P14734320686812109642

`∩[A002145(n+1), A063300(n+2)-2]`
-/

namespace A142930.P14734320686812109642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063300 (n + 2) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142930.P14734320686812109642

namespace A142930

/-- `∩[A002145(n+1), A063300(n+2)-2]` -/
def P14734320686812109642.Spec : Prop :=
  ∀ n, (P14734320686812109642.a n : ℤ) = A142930 (n + 1)

end A142930

/-! ## A142930.P8941425801897224692

`∩[A007520(n+1), A063300(n+2)-2]`
-/

namespace A142930.P8941425801897224692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007520 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063300 (n + 2) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142930.P8941425801897224692

namespace A142930

/-- `∩[A007520(n+1), A063300(n+2)-2]` -/
def P8941425801897224692.Spec : Prop :=
  ∀ n, (P8941425801897224692.a n : ℤ) = A142930 (n + 1)

end A142930

/-! ## A142930.P12237855893745744184

`∩[A045339(n+1), A063300(n+2)-2]`
-/

namespace A142930.P12237855893745744184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045339 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063300 (n + 2) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142930.P12237855893745744184

namespace A142930

/-- `∩[A045339(n+1), A063300(n+2)-2]` -/
def P12237855893745744184.Spec : Prop :=
  ∀ n, (P12237855893745744184.a n : ℤ) = A142930 (n + 1)

end A142930

/-! ## A142930.P12381393206315704789

`∩[A095282(n+1), A063300(n+2)-2]`
-/

namespace A142930.P12381393206315704789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095282 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063300 (n + 2) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142930.P12381393206315704789

namespace A142930

/-- `∩[A095282(n+1), A063300(n+2)-2]` -/
def P12381393206315704789.Spec : Prop :=
  ∀ n, (P12381393206315704789.a n : ℤ) = A142930 (n + 1)

end A142930

/-! ## A142930.P16230846818189111236

`record[A006530(64*n+11)]`
-/

namespace A142930.P16230846818189111236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (64 * n + 11)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142930.P16230846818189111236

namespace A142930

/-- `record[A006530(64*n+11)]` -/
def P16230846818189111236.Spec : Prop :=
  ∀ n, P16230846818189111236.a n = A142930 (n + 1)

end A142930

/-! ## A142930.P16134846970158784201

`record[A020639(2*(4*(8*n+1)+1)+1)]`
-/

namespace A142930.P16134846970158784201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (2 * (4 * (8 * n + 1) + 1) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142930.P16134846970158784201

namespace A142930

/-- `record[A020639(2*(4*(8*n+1)+1)+1)]` -/
def P16134846970158784201.Spec : Prop :=
  ∀ n, P16134846970158784201.a n = A142930 (n + 1)

end A142930

/-! ## A142930.P6377739759032579101

`∩[A142039(n+1), A158938(n)]`
-/

namespace A142930.P6377739759032579101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142039 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158938 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142930.P6377739759032579101

namespace A142930

/-- `∩[A142039(n+1), A158938(n)]` -/
def P6377739759032579101.Spec : Prop :=
  ∀ n, (P6377739759032579101.a n : ℤ) = A142930 (n + 1)

end A142930

/-! ## A142930.P18300824746174708137

`∩[A103621(n+1), A142039(n+1)]`
-/

namespace A142930.P18300824746174708137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103621 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142039 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142930.P18300824746174708137

namespace A142930

/-- `∩[A103621(n+1), A142039(n+1)]` -/
def P18300824746174708137.Spec : Prop :=
  ∀ n, (P18300824746174708137.a n : ℤ) = A142930 (n + 1)

end A142930

/-! ## A142930.P13795911990374072514

`∩[A051085(n+1), A017077(A017077(n))+2]`
-/

namespace A142930.P13795911990374072514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051085 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017077 (A017077 n).toNat + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142930.P13795911990374072514

namespace A142930

/-- `∩[A051085(n+1), A017077(A017077(n))+2]` -/
def P13795911990374072514.Spec : Prop :=
  ∀ n, (P13795911990374072514.a n : ℤ) = A142930 (n + 1)

end A142930

/-!
# A142931: Primes congruent to 13 mod 64.

The programs for A142931, the canonical program `A142931.P365347274686259069` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142931 has offset 1).

The definition of A142931 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2433 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142931.P365347274686259069

`p?[8*8*n+13]`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A142931

/-- `p?[8*8*n+13]` -/
def P365347274686259069.Spec : Prop :=
  ∀ n, (P365347274686259069.a n : ℤ) = A142931 (n + 1)

theorem P365347274686259069.correct : P365347274686259069.Spec := by
  intro n
  simp only [A142931, Nat.add_sub_cancel]

end A142931

/-! ## A142931.P4956500287407862479

`∩[A002144(n+1), A063300(n+2)]`
-/

namespace A142931.P4956500287407862479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063300 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142931.P4956500287407862479

namespace A142931

/-- `∩[A002144(n+1), A063300(n+2)]` -/
def P4956500287407862479.Spec : Prop :=
  ∀ n, (P4956500287407862479.a n : ℤ) = A142931 (n + 1)

end A142931

/-! ## A142931.P14870934357361283629

`∩[A002313(n+1), A063300(n+2)]`
-/

namespace A142931.P14870934357361283629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002313 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063300 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142931.P14870934357361283629

namespace A142931

/-- `∩[A002313(n+1), A063300(n+2)]` -/
def P14870934357361283629.Spec : Prop :=
  ∀ n, (P14870934357361283629.a n : ℤ) = A142931 (n + 1)

end A142931

/-! ## A142931.P10837083829001590186

`∩[A003628(n+1), A063300(n+2)]`
-/

namespace A142931.P10837083829001590186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003628 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063300 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142931.P10837083829001590186

namespace A142931

/-- `∩[A003628(n+1), A063300(n+2)]` -/
def P10837083829001590186.Spec : Prop :=
  ∀ n, (P10837083829001590186.a n : ℤ) = A142931 (n + 1)

end A142931

/-! ## A142931.P10368038817094517655

`∩[A007521(n+1), A063300(n+2)]`
-/

namespace A142931.P10368038817094517655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007521 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063300 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142931.P10368038817094517655

namespace A142931

/-- `∩[A007521(n+1), A063300(n+2)]` -/
def P10368038817094517655.Spec : Prop :=
  ∀ n, (P10368038817094517655.a n : ℤ) = A142931 (n + 1)

end A142931

/-! ## A142931.P15172671312445870269

`∩[A045355(n+1), A063300(n+2)]`
-/

namespace A142931.P15172671312445870269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045355 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063300 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142931.P15172671312445870269

namespace A142931

/-- `∩[A045355(n+1), A063300(n+2)]` -/
def P15172671312445870269.Spec : Prop :=
  ∀ n, (P15172671312445870269.a n : ℤ) = A142931 (n + 1)

end A142931

/-! ## A142931.P5089513299804776026

`∩[A045366(n+1), A063300(n+2)]`
-/

namespace A142931.P5089513299804776026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045366 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063300 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142931.P5089513299804776026

namespace A142931

/-- `∩[A045366(n+1), A063300(n+2)]` -/
def P5089513299804776026.Spec : Prop :=
  ∀ n, (P5089513299804776026.a n : ℤ) = A142931 (n + 1)

end A142931

/-! ## A142931.P11258752888975401109

`∩[A055025(n+1), A063300(n+2)]`
-/

namespace A142931.P11258752888975401109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055025 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063300 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142931.P11258752888975401109

namespace A142931

/-- `∩[A055025(n+1), A063300(n+2)]` -/
def P11258752888975401109.Spec : Prop :=
  ∀ n, (P11258752888975401109.a n : ℤ) = A142931 (n + 1)

end A142931

/-! ## A142931.P9540587389389253817

`∩[A141196(n+1), A063300(n+2)]`
-/

namespace A142931.P9540587389389253817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141196 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063300 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142931.P9540587389389253817

namespace A142931

/-- `∩[A141196(n+1), A063300(n+2)]` -/
def P9540587389389253817.Spec : Prop :=
  ∀ n, (P9540587389389253817.a n : ℤ) = A142931 (n + 1)

end A142931

/-! ## A142931.P4245180629399975302

`∩[A142040(n+1), A063300(n+2)]`
-/

namespace A142931.P4245180629399975302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063300 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142931.P4245180629399975302

namespace A142931

/-- `∩[A142040(n+1), A063300(n+2)]` -/
def P4245180629399975302.Spec : Prop :=
  ∀ n, (P4245180629399975302.a n : ℤ) = A142931 (n + 1)

end A142931

/-! ## A142931.P12516904414859107320

`∩[A280084(n+1), A063300(n+2)]`
-/

namespace A142931.P12516904414859107320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280084 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063300 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142931.P12516904414859107320

namespace A142931

/-- `∩[A280084(n+1), A063300(n+2)]` -/
def P12516904414859107320.Spec : Prop :=
  ∀ n, (P12516904414859107320.a n : ℤ) = A142931 (n + 1)

end A142931

/-! ## A142931.P13828203463945939606

`∩[A385224(n+1), A063300(n+2)]`
-/

namespace A142931.P13828203463945939606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385224 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063300 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142931.P13828203463945939606

namespace A142931

/-- `∩[A385224(n+1), A063300(n+2)]` -/
def P13828203463945939606.Spec : Prop :=
  ∀ n, (P13828203463945939606.a n : ℤ) = A142931 (n + 1)

end A142931

/-! ## A142931.P9463126203665485566

`∩[A392947(n+1), A063300(n+2)]`
-/

namespace A142931.P9463126203665485566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392947 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063300 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142931.P9463126203665485566

namespace A142931

/-- `∩[A392947(n+1), A063300(n+2)]` -/
def P9463126203665485566.Spec : Prop :=
  ∀ n, (P9463126203665485566.a n : ℤ) = A142931 (n + 1)

end A142931

/-! ## A142931.P9994342218556401197

`∩[A095283(n+1), A063300(n+2)]`
-/

namespace A142931.P9994342218556401197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095283 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063300 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142931.P9994342218556401197

namespace A142931

/-- `∩[A095283(n+1), A063300(n+2)]` -/
def P9994342218556401197.Spec : Prop :=
  ∀ n, (P9994342218556401197.a n : ℤ) = A142931 (n + 1)

end A142931

/-! ## A142931.P6784208113638736619

`or(1, p?[A082285(4*n)])`
-/

namespace A142931.P6784208113638736619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082285 (4 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A142931.P6784208113638736619

namespace A142931

/-- `or(1, p?[A082285(4*n)])` -/
def P6784208113638736619.Spec : Prop :=
  ∀ n, P6784208113638736619.a n = A142931 (n + 1)

end A142931

/-! ## A142931.P12330360013403769540

`A000027(p?[A082285(4*n)])`
-/

namespace A142931.P12330360013403769540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082285 (4 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142931.P12330360013403769540

namespace A142931

/-- `A000027(p?[A082285(4*n)])` -/
def P12330360013403769540.Spec : Prop :=
  ∀ n, P12330360013403769540.a n = A142931 (n + 1)

end A142931

/-! ## A142931.P6476901891749958448

`A001222(A052480(n))*p?[A082285(4*n)]`
-/

namespace A142931.P6476901891749958448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082285 (4 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A052480 n).toNat * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142931.P6476901891749958448

namespace A142931

/-- `A001222(A052480(n))*p?[A082285(4*n)]` -/
def P6476901891749958448.Spec : Prop :=
  ∀ n, P6476901891749958448.a n = A142931 (n + 1)

end A142931

/-! ## A142931.P2548049216578683774

`record[A020639(8*8*n+13)]`
-/

namespace A142931.P2548049216578683774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (8 * (8 * n) + 13)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142931.P2548049216578683774

namespace A142931

/-- `record[A020639(8*8*n+13)]` -/
def P2548049216578683774.Spec : Prop :=
  ∀ n, P2548049216578683774.a n = A142931 (n + 1)

end A142931

/-! ## A142931.P3261277958103783062

`A000265(p?[A082285(4*n)])`
-/

namespace A142931.P3261277958103783062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082285 (4 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142931.P3261277958103783062

namespace A142931

/-- `A000265(p?[A082285(4*n)])` -/
def P3261277958103783062.Spec : Prop :=
  ∀ n, P3261277958103783062.a n = A142931 (n + 1)

end A142931

/-! ## A142931.P5509009238815372297

`A001414(p?[A082285(4*n)])`
-/

namespace A142931.P5509009238815372297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082285 (4 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142931.P5509009238815372297

namespace A142931

/-- `A001414(p?[A082285(4*n)])` -/
def P5509009238815372297.Spec : Prop :=
  ∀ n, P5509009238815372297.a n = A142931 (n + 1)

end A142931

/-!
# A142932: Primes congruent to 15 mod 64.

The programs for A142932, the canonical program `A142932.P10153030057382610172` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142932 has offset 1).

The definition of A142932 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2439 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142932.P10153030057382610172

`p?[64*n+15]`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A142932

/-- `p?[64*n+15]` -/
def P10153030057382610172.Spec : Prop :=
  ∀ n, (P10153030057382610172.a n : ℤ) = A142932 (n + 1)

theorem P10153030057382610172.correct : P10153030057382610172.Spec := by
  intro n
  simp only [A142932, Nat.add_sub_cancel]

end A142932

/-! ## A142932.P4861332711811690295

`or(1, p?[a(n-1)+64])` with `a(0)=15`
-/

namespace A142932.P4861332711811690295
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [15] fun n f1 =>
  f1 (n - 1) + 64

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A142932.P4861332711811690295

namespace A142932

/-- `or(1, p?[a(n-1)+64])` -/
def P4861332711811690295.Spec : Prop :=
  ∀ n, (P4861332711811690295.a n : ℤ) = A142932 (n + 1)

end A142932

/-! ## A142932.P7847474801052762511

`∩[A002145(n+1), A063300(n+2)+2]`
-/

namespace A142932.P7847474801052762511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063300 (n + 2) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142932.P7847474801052762511

namespace A142932

/-- `∩[A002145(n+1), A063300(n+2)+2]` -/
def P7847474801052762511.Spec : Prop :=
  ∀ n, (P7847474801052762511.a n : ℤ) = A142932 (n + 1)

end A142932

/-! ## A142932.P6014475428884061302

`∩[A095282(n+1), A063300(n+2)+2]`
-/

namespace A142932.P6014475428884061302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095282 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063300 (n + 2) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142932.P6014475428884061302

namespace A142932

/-- `∩[A095282(n+1), A063300(n+2)+2]` -/
def P6014475428884061302.Spec : Prop :=
  ∀ n, (P6014475428884061302.a n : ℤ) = A142932 (n + 1)

end A142932

/-! ## A142932.P15091784065752777164

`or(1, p?[A125169(4*n)])`
-/

namespace A142932.P15091784065752777164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125169 (4 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A142932.P15091784065752777164

namespace A142932

/-- `or(1, p?[A125169(4*n)])` -/
def P15091784065752777164.Spec : Prop :=
  ∀ n, P15091784065752777164.a n = A142932 (n + 1)

end A142932

/-! ## A142932.P10982261621840487988

`∩[A045323(n+1), A063300(n+2)+2]`
-/

namespace A142932.P10982261621840487988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045323 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063300 (n + 2) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142932.P10982261621840487988

namespace A142932

/-- `∩[A045323(n+1), A063300(n+2)+2]` -/
def P10982261621840487988.Spec : Prop :=
  ∀ n, (P10982261621840487988.a n : ℤ) = A142932 (n + 1)

end A142932

/-! ## A142932.P16636481990530782191

`A000265(p?[A125169(4*n)])`
-/

namespace A142932.P16636481990530782191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125169 (4 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142932.P16636481990530782191

namespace A142932

/-- `A000265(p?[A125169(4*n)])` -/
def P16636481990530782191.Spec : Prop :=
  ∀ n, P16636481990530782191.a n = A142932 (n + 1)

end A142932

/-! ## A142932.P12245434418693084974

`A007913(p?[A125169(4*n)])`
-/

namespace A142932.P12245434418693084974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125169 (4 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142932.P12245434418693084974

namespace A142932

/-- `A007913(p?[A125169(4*n)])` -/
def P12245434418693084974.Spec : Prop :=
  ∀ n, P12245434418693084974.a n = A142932 (n + 1)

end A142932

/-! ## A142932.P14106984735388200794

`A008472(p?[A125169(4*n)])`
-/

namespace A142932.P14106984735388200794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125169 (4 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142932.P14106984735388200794

namespace A142932

/-- `A008472(p?[A125169(4*n)])` -/
def P14106984735388200794.Spec : Prop :=
  ∀ n, P14106984735388200794.a n = A142932 (n + 1)

end A142932

/-! ## A142932.P8411708014987337618

`record[A006530(A125169(4*(n+1)))]`
-/

namespace A142932.P8411708014987337618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A125169 (4 * (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142932.P8411708014987337618

namespace A142932

/-- `record[A006530(A125169(4*(n+1)))]` -/
def P8411708014987337618.Spec : Prop :=
  ∀ n, P8411708014987337618.a n = A142932 (n + 1)

end A142932

/-! ## A142932.P1297370444426058731

`record[A006530(A004768(A004768(n))-2)]`
-/

namespace A142932.P1297370444426058731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A004768 (A004768 n).toNat - 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142932.P1297370444426058731

namespace A142932

/-- `record[A006530(A004768(A004768(n))-2)]` -/
def P1297370444426058731.Spec : Prop :=
  ∀ n, P1297370444426058731.a n = A142932 (n + 1)

end A142932

/-! ## A142932.P15735565438555392796

`record[A020639(A004768(A004768(n))-2)]`
-/

namespace A142932.P15735565438555392796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A004768 (A004768 n).toNat - 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142932.P15735565438555392796

namespace A142932

/-- `record[A020639(A004768(A004768(n))-2)]` -/
def P15735565438555392796.Spec : Prop :=
  ∀ n, P15735565438555392796.a n = A142932 (n + 1)

end A142932

/-! ## A142932.P11115140434474222173

`∩[A007522(n+1), A314054(n)]`
-/

namespace A142932.P11115140434474222173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007522 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314054 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142932.P11115140434474222173

namespace A142932

/-- `∩[A007522(n+1), A314054(n)]` -/
def P11115140434474222173.Spec : Prop :=
  ∀ n, (P11115140434474222173.a n : ℤ) = A142932 (n + 1)

end A142932

/-! ## A142932.P712225980350061828

`∩[A045382(n+1), A314054(n)]`
-/

namespace A142932.P712225980350061828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045382 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314054 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142932.P712225980350061828

namespace A142932

/-- `∩[A045382(n+1), A314054(n)]` -/
def P712225980350061828.Spec : Prop :=
  ∀ n, (P712225980350061828.a n : ℤ) = A142932 (n + 1)

end A142932

/-! ## A142932.P16323061819370607392

`∩[A314054(n), A142041(n+1)]`
-/

namespace A142932.P16323061819370607392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314054 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142041 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142932.P16323061819370607392

namespace A142932

/-- `∩[A314054(n), A142041(n+1)]` -/
def P16323061819370607392.Spec : Prop :=
  ∀ n, (P16323061819370607392.a n : ℤ) = A142932 (n + 1)

end A142932

/-! ## A142932.P3779287110786642272

`record[A006530(A157951(n+1)+29)]`
-/

namespace A142932.P3779287110786642272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A157951 (n + 1) + 29).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142932.P3779287110786642272

namespace A142932

/-- `record[A006530(A157951(n+1)+29)]` -/
def P3779287110786642272.Spec : Prop :=
  ∀ n, P3779287110786642272.a n = A142932 (n + 1)

end A142932

/-!
# A142933: Primes congruent to 17 mod 64.

The programs for A142933, the canonical program `A142933.P2848204961856478518` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142933 has offset 1).

The definition of A142933 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2407 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142933.P2848204961856478518

`p?[64*n-47]`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A142933

/-- `p?[64*n-47]` -/
def P2848204961856478518.Spec : Prop :=
  ∀ n, P2848204961856478518.a n = A142933 (n + 1)

theorem P2848204961856478518.correct : P2848204961856478518.Spec := by
  intro n
  simp only [A142933, Nat.add_sub_cancel]

end A142933

/-! ## A142933.P15929715418192347851

`floor(1/acot(p?[A146511(n+2)-n]))`
-/

namespace A142933.P15929715418192347851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146511 (n + 2) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / SequenceMachineLib.acot (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℝ)⌋

end

end A142933.P15929715418192347851

namespace A142933

/-- `floor(1/acot(p?[A146511(n+2)-n]))` -/
def P15929715418192347851.Spec : Prop :=
  ∀ n, P15929715418192347851.a n = A142933 (n + 1)

end A142933

/-! ## A142933.P16561387296809079329

`p?[A146511(n+2)-n]%A074218(n+1)`
-/

namespace A142933.P16561387296809079329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146511 (n + 2) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A074218 (n + 1))

end

end A142933.P16561387296809079329

namespace A142933

/-- `p?[A146511(n+2)-n]%A074218(n+1)` -/
def P16561387296809079329.Spec : Prop :=
  ∀ n, P16561387296809079329.a n = A142933 (n + 1)

end A142933

/-! ## A142933.P13401137914340489020

`∩[A105127(n+1), A317332(n+1)]`
-/

namespace A142933.P13401137914340489020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105127 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317332 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142933.P13401137914340489020

namespace A142933

/-- `∩[A105127(n+1), A317332(n+1)]` -/
def P13401137914340489020.Spec : Prop :=
  ∀ n, (P13401137914340489020.a n : ℤ) = A142933 (n + 1)

end A142933

/-! ## A142933.P3140071486812140062

`record[A020639(64*n+17)]`
-/

namespace A142933.P3140071486812140062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (64 * n + 17)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142933.P3140071486812140062

namespace A142933

/-- `record[A020639(64*n+17)]` -/
def P3140071486812140062.Spec : Prop :=
  ∀ n, P3140071486812140062.a n = A142933 (n + 1)

end A142933

/-! ## A142933.P3553208400214160077

`A008472(p?[A158057(4*n+1)])`
-/

namespace A142933.P3553208400214160077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158057 (4 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142933.P3553208400214160077

namespace A142933

/-- `A008472(p?[A158057(4*n+1)])` -/
def P3553208400214160077.Spec : Prop :=
  ∀ n, P3553208400214160077.a n = A142933 (n + 1)

end A142933

/-! ## A142933.P16903996057166848724

`∩[A105127(n+1), A247065(n+1)+1]`
-/

namespace A142933.P16903996057166848724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105127 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247065 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142933.P16903996057166848724

namespace A142933

/-- `∩[A105127(n+1), A247065(n+1)+1]` -/
def P16903996057166848724.Spec : Prop :=
  ∀ n, (P16903996057166848724.a n : ℤ) = A142933 (n + 1)

end A142933

/-! ## A142933.P4854171231246107783

`or(1, p?[A017077(A017089(n))])`
-/

namespace A142933.P4854171231246107783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017077 (A017089 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A142933.P4854171231246107783

namespace A142933

/-- `or(1, p?[A017077(A017089(n))])` -/
def P4854171231246107783.Spec : Prop :=
  ∀ n, P4854171231246107783.a n = A142933 (n + 1)

end A142933

/-! ## A142933.P14188731721041781033

`A000007(n+1)+p?[A017089(A017089(n))-1]`
-/

namespace A142933.P14188731721041781033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017089 (A017089 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142933.P14188731721041781033

namespace A142933

/-- `A000007(n+1)+p?[A017089(A017089(n))-1]` -/
def P14188731721041781033.Spec : Prop :=
  ∀ n, P14188731721041781033.a n = A142933 (n + 1)

end A142933

/-! ## A142933.P5301891827932907108

`filter[A105127(n+1), A073089(#)]`
-/

namespace A142933.P5301891827932907108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105127 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A073089 (f1 j).toNat = 1) n)

end

end A142933.P5301891827932907108

namespace A142933

/-- `filter[A105127(n+1), A073089(#)]` -/
def P5301891827932907108.Spec : Prop :=
  ∀ n, P5301891827932907108.a n = A142933 (n + 1)

end A142933

/-! ## A142933.P8157642132207195327

`filter[A105127(n+1), A320006(#)]`
-/

namespace A142933.P8157642132207195327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105127 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A320006 (f1 j).toNat = 1) n)

end

end A142933.P8157642132207195327

namespace A142933

/-- `filter[A105127(n+1), A320006(#)]` -/
def P8157642132207195327.Spec : Prop :=
  ∀ n, P8157642132207195327.a n = A142933 (n + 1)

end A142933

/-! ## A142933.P4467472440202186093

`∩[A002144(n+1), A315688(n)]`
-/

namespace A142933.P4467472440202186093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315688 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142933.P4467472440202186093

namespace A142933

/-- `∩[A002144(n+1), A315688(n)]` -/
def P4467472440202186093.Spec : Prop :=
  ∀ n, (P4467472440202186093.a n : ℤ) = A142933 (n + 1)

end A142933

/-!
# A142934: Primes congruent to 19 mod 64.

The programs for A142934, the canonical program `A142934.P14016541385754084313` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142934 has offset 1).

The definition of A142934 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2496 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142934.P14016541385754084313

`A091968(eq[1, and(3, A092022(n+1))]+1)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A142934

/-- `A091968(eq[1, and(3, A092022(n+1))]+1)` -/
def P14016541385754084313.Spec : Prop :=
  ∀ n, P14016541385754084313.a n = A142934 (n + 1)

theorem P14016541385754084313.correct : P14016541385754084313.Spec := by
  intro n
  simp only [A142934, Nat.add_sub_cancel]

end A142934

/-! ## A142934.P16500872047748502611

`p?[64*n+19]`
-/

namespace A142934.P16500872047748502611
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  64 * n + 19

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142934.P16500872047748502611

namespace A142934

/-- `p?[64*n+19]` -/
def P16500872047748502611.Spec : Prop :=
  ∀ n, (P16500872047748502611.a n : ℤ) = A142934 (n + 1)

end A142934

/-! ## A142934.P6984686123404289973

`p?[A143032(n+1)-12]%A219963(n+1)`
-/

namespace A142934.P6984686123404289973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143032 (n + 1) - 12

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A219963 (n + 1))

end

end A142934.P6984686123404289973

namespace A142934

/-- `p?[A143032(n+1)-12]%A219963(n+1)` -/
def P6984686123404289973.Spec : Prop :=
  ∀ n, P6984686123404289973.a n = A142934 (n + 1)

end A142934

/-! ## A142934.P18357809004743179525

`record[A006530(A143032(n+1)-12)]`
-/

namespace A142934.P18357809004743179525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A143032 (n + 1) - 12).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142934.P18357809004743179525

namespace A142934

/-- `record[A006530(A143032(n+1)-12)]` -/
def P18357809004743179525.Spec : Prop :=
  ∀ n, P18357809004743179525.a n = A142934 (n + 1)

end A142934

/-! ## A142934.P1602817353197837209

`record[A020639(A106839(n)+A051062(3*n))]`
-/

namespace A142934.P1602817353197837209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A106839 n + A051062 (3 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142934.P1602817353197837209

namespace A142934

/-- `record[A020639(A106839(n)+A051062(3*n))]` -/
def P1602817353197837209.Spec : Prop :=
  ∀ n, P1602817353197837209.a n = A142934 (n + 1)

end A142934

/-! ## A142934.P13462911557119935968

`record[A006530(A017101(8*ceil(n/2)+2))]`
-/

namespace A142934.P13462911557119935968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A017101 (8 * ⌈(n : ℚ) / 2⌉ + 2).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142934.P13462911557119935968

namespace A142934

/-- `record[A006530(A017101(8*ceil(n/2)+2))]` -/
def P13462911557119935968.Spec : Prop :=
  ∀ n, P13462911557119935968.a n = A142934 (n + 1)

end A142934

/-! ## A142934.P15973754807640011186

`record[A006530(A017089(A017089(n))+1)]`
-/

namespace A142934.P15973754807640011186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A017089 (A017089 n).toNat + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142934.P15973754807640011186

namespace A142934

/-- `record[A006530(A017089(A017089(n))+1)]` -/
def P15973754807640011186.Spec : Prop :=
  ∀ n, P15973754807640011186.a n = A142934 (n + 1)

end A142934

/-! ## A142934.P17395307255633578791

`record[A020639(A017089(A017089(n))+1)]`
-/

namespace A142934.P17395307255633578791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A017089 (A017089 n).toNat + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142934.P17395307255633578791

namespace A142934

/-- `record[A020639(A017089(A017089(n))+1)]` -/
def P17395307255633578791.Spec : Prop :=
  ∀ n, P17395307255633578791.a n = A142934 (n + 1)

end A142934

/-! ## A142934.P6997977001842621738

`∩[A091968(n+1), A311075(n)]`
-/

namespace A142934.P6997977001842621738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091968 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311075 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142934.P6997977001842621738

namespace A142934

/-- `∩[A091968(n+1), A311075(n)]` -/
def P6997977001842621738.Spec : Prop :=
  ∀ n, (P6997977001842621738.a n : ℤ) = A142934 (n + 1)

end A142934

/-! ## A142934.P18053615174671472731

`record[A006530(A157330(3*n+1)+1)]`
-/

namespace A142934.P18053615174671472731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A157330 (3 * n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142934.P18053615174671472731

namespace A142934

/-- `record[A006530(A157330(3*n+1)+1)]` -/
def P18053615174671472731.Spec : Prop :=
  ∀ n, P18053615174671472731.a n = A142934 (n + 1)

end A142934

/-!
# A142935: Primes congruent to 23 mod 64.

The programs for A142935, the canonical program `A142935.P9830366613878460616` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142935 has offset 1).

The definition of A142935 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2470 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142935.P9830366613878460616

`p?[64*n+23]`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A142935

/-- `p?[64*n+23]` -/
def P9830366613878460616.Spec : Prop :=
  ∀ n, (P9830366613878460616.a n : ℤ) = A142935 (n + 1)

theorem P9830366613878460616.correct : P9830366613878460616.Spec := by
  intro n
  simp only [A142935, Nat.add_sub_cancel]

end A142935

/-! ## A142935.P16712930695567742815

`record[A020639(64*n+23)]`
-/

namespace A142935.P16712930695567742815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (64 * n + 23)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142935.P16712930695567742815

namespace A142935

/-- `record[A020639(64*n+23)]` -/
def P16712930695567742815.Spec : Prop :=
  ∀ n, P16712930695567742815.a n = A142935 (n + 1)

end A142935

/-! ## A142935.P2461529445106938343

`or(1, p?[A004771(A017089(n))])`
-/

namespace A142935.P2461529445106938343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004771 (A017089 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A142935.P2461529445106938343

namespace A142935

/-- `or(1, p?[A004771(A017089(n))])` -/
def P2461529445106938343.Spec : Prop :=
  ∀ n, P2461529445106938343.a n = A142935 (n + 1)

end A142935

/-! ## A142935.P628027855388614012

`∩[A142044(n+1), A158938(n)]`
-/

namespace A142935.P628027855388614012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142044 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158938 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142935.P628027855388614012

namespace A142935

/-- `∩[A142044(n+1), A158938(n)]` -/
def P628027855388614012.Spec : Prop :=
  ∀ n, (P628027855388614012.a n : ℤ) = A142935 (n + 1)

end A142935

/-! ## A142935.P60388241721168206

`∩[A103621(n+1), A142044(n+1)]`
-/

namespace A142935.P60388241721168206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103621 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142044 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142935.P60388241721168206

namespace A142935

/-- `∩[A103621(n+1), A142044(n+1)]` -/
def P60388241721168206.Spec : Prop :=
  ∀ n, (P60388241721168206.a n : ℤ) = A142935 (n + 1)

end A142935

/-! ## A142935.P13869670821610761066

`or(1, p?[A317331(A317331(n+1)+2)])`
-/

namespace A142935.P13869670821610761066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317331 (A317331 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A142935.P13869670821610761066

namespace A142935

/-- `or(1, p?[A317331(A317331(n+1)+2)])` -/
def P13869670821610761066.Spec : Prop :=
  ∀ n, P13869670821610761066.a n = A142935 (n + 1)

end A142935

/-! ## A142935.P15653426471147198702

`record[A090368(4*A017101(n))]`
-/

namespace A142935.P15653426471147198702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090368 (4 * A017101 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142935.P15653426471147198702

namespace A142935

/-- `record[A090368(4*A017101(n))]` -/
def P15653426471147198702.Spec : Prop :=
  ∀ n, P15653426471147198702.a n = A142935 (n + 1)

end A142935

/-!
# A142936: Primes congruent to 25 mod 64.

The programs for A142936, the canonical program `A142936.P12727306494601712242` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142936 has offset 1).

The definition of A142936 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2457 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142936.P12727306494601712242

`p?[64*n+25]`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A142936

/-- `p?[64*n+25]` -/
def P12727306494601712242.Spec : Prop :=
  ∀ n, (P12727306494601712242.a n : ℤ) = A142936 (n + 1)

theorem P12727306494601712242.correct : P12727306494601712242.Spec := by
  intro n
  simp only [A142936, Nat.add_sub_cancel]

end A142936

/-! ## A142936.P2758111468698333258

`or(17, p?[a(n-1)+64])` with `a(0)=89`
-/

namespace A142936.P2758111468698333258
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [89] fun n f1 =>
  f1 (n - 1) + 64

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 17 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A142936.P2758111468698333258

namespace A142936

/-- `or(17, p?[a(n-1)+64])` -/
def P2758111468698333258.Spec : Prop :=
  ∀ n, (P2758111468698333258.a n : ℤ) = A142936 (n + 1)

end A142936

/-! ## A142936.P3008867821342983045

`p?[A158071(n+1)+24]^A033999(n)²`
-/

namespace A142936.P3008867821342983045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158071 (n + 1) + 24

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) ^ (A033999 n ^ 2 : ℤ)

end

end A142936.P3008867821342983045

namespace A142936

/-- `p?[A158071(n+1)+24]^A033999(n)²` -/
def P3008867821342983045.Spec : Prop :=
  ∀ n, P3008867821342983045.a n = (A142936 (n + 1) : ℚ)

end A142936

/-! ## A142936.P16889698193074997322

`A000027(p?[A158071(n+1)+24])`
-/

namespace A142936.P16889698193074997322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158071 (n + 1) + 24

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142936.P16889698193074997322

namespace A142936

/-- `A000027(p?[A158071(n+1)+24])` -/
def P16889698193074997322.Spec : Prop :=
  ∀ n, P16889698193074997322.a n = A142936 (n + 1)

end A142936

/-! ## A142936.P3703237702572885452

`record[A006530(64*(n+1)+25)]`
-/

namespace A142936.P3703237702572885452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (64 * (n + 1) + 25)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142936.P3703237702572885452

namespace A142936

/-- `record[A006530(64*(n+1)+25)]` -/
def P3703237702572885452.Spec : Prop :=
  ∀ n, P3703237702572885452.a n = A142936 (n + 1)

end A142936

/-! ## A142936.P6460924717638656857

`∩[A081647(n+1), A142045(n+1)]`
-/

namespace A142936.P6460924717638656857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081647 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142045 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142936.P6460924717638656857

namespace A142936

/-- `∩[A081647(n+1), A142045(n+1)]` -/
def P6460924717638656857.Spec : Prop :=
  ∀ n, (P6460924717638656857.a n : ℤ) = A142936 (n + 1)

end A142936

/-! ## A142936.P3058724904398380771

`or(1, p?[A004768(A017089(n))])`
-/

namespace A142936.P3058724904398380771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004768 (A017089 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A142936.P3058724904398380771

namespace A142936

/-- `or(1, p?[A004768(A017089(n))])` -/
def P3058724904398380771.Spec : Prop :=
  ∀ n, P3058724904398380771.a n = A142936 (n + 1)

end A142936

/-! ## A142936.P11726087668635505301

`or(1, p?[A017077(A017101(n))])`
-/

namespace A142936.P11726087668635505301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017077 (A017101 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A142936.P11726087668635505301

namespace A142936

/-- `or(1, p?[A017077(A017101(n))])` -/
def P11726087668635505301.Spec : Prop :=
  ∀ n, P11726087668635505301.a n = A142936 (n + 1)

end A142936

/-! ## A142936.P6562527601648763289

`∩[A142045(n+1), A158938(n)]`
-/

namespace A142936.P6562527601648763289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142045 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158938 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142936.P6562527601648763289

namespace A142936

/-- `∩[A142045(n+1), A158938(n)]` -/
def P6562527601648763289.Spec : Prop :=
  ∀ n, (P6562527601648763289.a n : ℤ) = A142936 (n + 1)

end A142936

/-! ## A142936.P234995115146463581

`∩[A103621(n+1), A142045(n+1)]`
-/

namespace A142936.P234995115146463581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103621 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142045 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142936.P234995115146463581

namespace A142936

/-- `∩[A103621(n+1), A142045(n+1)]` -/
def P234995115146463581.Spec : Prop :=
  ∀ n, (P234995115146463581.a n : ℤ) = A142936 (n + 1)

end A142936

/-! ## A142936.P13547767854895230514

`p?[A017077(A017101(n))]%A017032(n)`
-/

namespace A142936.P13547767854895230514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017077 (A017101 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A017032 n)

end

end A142936.P13547767854895230514

namespace A142936

/-- `p?[A017077(A017101(n))]%A017032(n)` -/
def P13547767854895230514.Spec : Prop :=
  ∀ n, P13547767854895230514.a n = A142936 (n + 1)

end A142936

/-! ## A142936.P15173291031969882101

`filter[A142045(n+1), A320006(#)]`
-/

namespace A142936.P15173291031969882101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142045 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A320006 (f1 j).toNat = 1) n)

end

end A142936.P15173291031969882101

namespace A142936

/-- `filter[A142045(n+1), A320006(#)]` -/
def P15173291031969882101.Spec : Prop :=
  ∀ n, P15173291031969882101.a n = A142936 (n + 1)

end A142936

/-! ## A142936.P314814781240647484

`record[A051541(A125169(n)+7)]`
-/

namespace A142936.P314814781240647484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051541 (A125169 n + 7).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142936.P314814781240647484

namespace A142936

/-- `record[A051541(A125169(n)+7)]` -/
def P314814781240647484.Spec : Prop :=
  ∀ n, P314814781240647484.a n = A142936 (n + 1)

end A142936

/-!
# A142937: Primes congruent to 27 mod 64.

The programs for A142937, the canonical program `A142937.P5495879948250332715` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142937 has offset 1).

The definition of A142937 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2491 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142937.P5495879948250332715

`p?[64*n+27]`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A142937

/-- `p?[64*n+27]` -/
def P5495879948250332715.Spec : Prop :=
  ∀ n, (P5495879948250332715.a n : ℤ) = A142937 (n + 1)

theorem P5495879948250332715.correct : P5495879948250332715.Spec := by
  intro n
  simp only [A142937, Nat.add_sub_cancel]

end A142937

/-! ## A142937.P5679477106071679142

`or(1, p?[A157330(n+1)-29])`
-/

namespace A142937.P5679477106071679142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157330 (n + 1) - 29

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A142937.P5679477106071679142

namespace A142937

/-- `or(1, p?[A157330(n+1)-29])` -/
def P5679477106071679142.Spec : Prop :=
  ∀ n, P5679477106071679142.a n = A142937 (n + 1)

end A142937

/-! ## A142937.P16482138166931686737

`p?[A157330(n+1)-29]%A103773(n+1)`
-/

namespace A142937.P16482138166931686737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157330 (n + 1) - 29

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A103773 (n + 1))

end

end A142937.P16482138166931686737

namespace A142937

/-- `p?[A157330(n+1)-29]%A103773(n+1)` -/
def P16482138166931686737.Spec : Prop :=
  ∀ n, P16482138166931686737.a n = A142937 (n + 1)

end A142937

/-! ## A142937.P14371983886523334933

`p?[A157330(n+1)-29]+A237420(n)%2`
-/

namespace A142937.P14371983886523334933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157330 (n + 1) - 29

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + Int.tmod (A237420 n) 2

end

end A142937.P14371983886523334933

namespace A142937

/-- `p?[A157330(n+1)-29]+A237420(n)%2` -/
def P14371983886523334933.Spec : Prop :=
  ∀ n, P14371983886523334933.a n = A142937 (n + 1)

end A142937

/-! ## A142937.P12857062353800370917

`p?[xor(35, A157330(n+1))]%A138129(n+1)`
-/

namespace A142937.P12857062353800370917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 35 (A157330 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A138129 (n + 1))

end

end A142937.P12857062353800370917

namespace A142937

/-- `p?[xor(35, A157330(n+1))]%A138129(n+1)` -/
def P12857062353800370917.Spec : Prop :=
  ∀ n, P12857062353800370917.a n = A142937 (n + 1)

end A142937

/-! ## A142937.P15717829939230736504

`p?[A157330(n+1)-29]/A034947(n+1)²`
-/

namespace A142937.P15717829939230736504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157330 (n + 1) - 29

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / (A034947 (n + 1) ^ 2 : ℚ)

end

end A142937.P15717829939230736504

namespace A142937

/-- `p?[A157330(n+1)-29]/A034947(n+1)²` -/
def P15717829939230736504.Spec : Prop :=
  ∀ n, P15717829939230736504.a n = (A142937 (n + 1) : ℚ)

end A142937

/-! ## A142937.P12264042844766650111

`char[A159746(n+1)²]+p?[A157330(n+1)-29]`
-/

namespace A142937.P12264042844766650111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159746 (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157330 (n + 1) - 29

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) + f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

end

end A142937.P12264042844766650111

namespace A142937

/-- `char[A159746(n+1)²]+p?[A157330(n+1)-29]` -/
def P12264042844766650111.Spec : Prop :=
  ∀ n, P12264042844766650111.a n = A142937 (n + 1)

end A142937

/-! ## A142937.P16282118655596771970

`∩[A063300(2*n+3)+A063300(n+3), A007520(n+2)]`
-/

namespace A142937.P16282118655596771970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063300 (2 * n + 3) + A063300 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007520 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142937.P16282118655596771970

namespace A142937

/-- `∩[A063300(2*n+3)+A063300(n+3), A007520(n+2)]` -/
def P16282118655596771970.Spec : Prop :=
  ∀ n, (P16282118655596771970.a n : ℤ) = A142937 (n + 1)

end A142937

/-! ## A142937.P16133706842279316618

`∩[A063300(2*n+3)+A063300(n+3), A045339(n+2)]`
-/

namespace A142937.P16133706842279316618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063300 (2 * n + 3) + A063300 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045339 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142937.P16133706842279316618

namespace A142937

/-- `∩[A063300(2*n+3)+A063300(n+3), A045339(n+2)]` -/
def P16133706842279316618.Spec : Prop :=
  ∀ n, (P16133706842279316618.a n : ℤ) = A142937 (n + 1)

end A142937

/-! ## A142937.P82463871662860309

`∩[A063300(2*n+3)+A063300(n+3), A095282(n+2)]`
-/

namespace A142937.P82463871662860309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063300 (2 * n + 3) + A063300 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095282 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142937.P82463871662860309

namespace A142937

/-- `∩[A063300(2*n+3)+A063300(n+3), A095282(n+2)]` -/
def P82463871662860309.Spec : Prop :=
  ∀ n, (P82463871662860309.a n : ℤ) = A142937 (n + 1)

end A142937

/-! ## A142937.P908660281263961979

`∩[A063300(2*n+3)+A063300(n+3), A051071(n+2)]`
-/

namespace A142937.P908660281263961979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063300 (2 * n + 3) + A063300 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051071 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142937.P908660281263961979

namespace A142937

/-- `∩[A063300(2*n+3)+A063300(n+3), A051071(n+2)]` -/
def P908660281263961979.Spec : Prop :=
  ∀ n, (P908660281263961979.a n : ℤ) = A142937 (n + 1)

end A142937

/-! ## A142937.P6802063646702585093

`∩[A063300(2*n+3)+A063300(n+3), A051073(n+2)]`
-/

namespace A142937.P6802063646702585093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063300 (2 * n + 3) + A063300 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051073 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142937.P6802063646702585093

namespace A142937

/-- `∩[A063300(2*n+3)+A063300(n+3), A051073(n+2)]` -/
def P6802063646702585093.Spec : Prop :=
  ∀ n, (P6802063646702585093.a n : ℤ) = A142937 (n + 1)

end A142937

/-! ## A142937.P16312355445919831759

`∩[A063300(2*n+3)+A063300(n+3), A341784(n+2)]`
-/

namespace A142937.P16312355445919831759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063300 (2 * n + 3) + A063300 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341784 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142937.P16312355445919831759

namespace A142937

/-- `∩[A063300(2*n+3)+A063300(n+3), A341784(n+2)]` -/
def P16312355445919831759.Spec : Prop :=
  ∀ n, (P16312355445919831759.a n : ℤ) = A142937 (n + 1)

end A142937

/-! ## A142937.P1768344688674874120

`∩[A063300(2*n+3)+A063300(n+3), A051077(n+2)]`
-/

namespace A142937.P1768344688674874120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063300 (2 * n + 3) + A063300 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051077 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142937.P1768344688674874120

namespace A142937

/-- `∩[A063300(2*n+3)+A063300(n+3), A051077(n+2)]` -/
def P1768344688674874120.Spec : Prop :=
  ∀ n, (P1768344688674874120.a n : ℤ) = A142937 (n + 1)

end A142937

/-! ## A142937.P7966337633268904736

`∩[A063300(2*n+3)+A063300(n+3), A051085(n+2)]`
-/

namespace A142937.P7966337633268904736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063300 (2 * n + 3) + A063300 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051085 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142937.P7966337633268904736

namespace A142937

/-- `∩[A063300(2*n+3)+A063300(n+3), A051085(n+2)]` -/
def P7966337633268904736.Spec : Prop :=
  ∀ n, (P7966337633268904736.a n : ℤ) = A142937 (n + 1)

end A142937

/-! ## A142937.P6150972067413051559

`or(1, p?[A017101(A017101(n))])`
-/

namespace A142937.P6150972067413051559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017101 (A017101 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A142937.P6150972067413051559

namespace A142937

/-- `or(1, p?[A017101(A017101(n))])` -/
def P6150972067413051559.Spec : Prop :=
  ∀ n, P6150972067413051559.a n = A142937 (n + 1)

end A142937

/-! ## A142937.P5121385495678628049

`∩[A142046(n+1), A158938(n)]`
-/

namespace A142937.P5121385495678628049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142046 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158938 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142937.P5121385495678628049

namespace A142937

/-- `∩[A142046(n+1), A158938(n)]` -/
def P5121385495678628049.Spec : Prop :=
  ∀ n, (P5121385495678628049.a n : ℤ) = A142937 (n + 1)

end A142937

/-! ## A142937.P19275289758182786

`or(1, p?[A004769(A004769(n)-1)])`
-/

namespace A142937.P19275289758182786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004769 (A004769 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A142937.P19275289758182786

namespace A142937

/-- `or(1, p?[A004769(A004769(n)-1)])` -/
def P19275289758182786.Spec : Prop :=
  ∀ n, P19275289758182786.a n = A142937 (n + 1)

end A142937

/-! ## A142937.P1890231875264129447

`∩[A103621(n+1), A142046(n+1)]`
-/

namespace A142937.P1890231875264129447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103621 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142046 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142937.P1890231875264129447

namespace A142937

/-- `∩[A103621(n+1), A142046(n+1)]` -/
def P1890231875264129447.Spec : Prop :=
  ∀ n, (P1890231875264129447.a n : ℤ) = A142937 (n + 1)

end A142937

/-!
# A142938: Primes congruent to 29 mod 64.

The programs for A142938, the canonical program `A142938.P7378514744952116202` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142938 has offset 1).

The definition of A142938 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2459 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142938.P7378514744952116202

`p?[64*n+29]`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A142938

/-- `p?[64*n+29]` -/
def P7378514744952116202.Spec : Prop :=
  ∀ n, (P7378514744952116202.a n : ℤ) = A142938 (n + 1)

theorem P7378514744952116202.correct : P7378514744952116202.Spec := by
  intro n
  simp only [A142938, Nat.add_sub_cancel]

end A142938

/-! ## A142938.P8238167071186878808

`p?[a(n-1)+64]%A345507(n+1)` with `a(0)=29`
-/

namespace A142938.P8238167071186878808
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [29] fun n f1 =>
  f1 (n - 1) + 64

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) (A345507 (n + 1))

end

end A142938.P8238167071186878808

namespace A142938

/-- `p?[a(n-1)+64]%A345507(n+1)` -/
def P8238167071186878808.Spec : Prop :=
  ∀ n, P8238167071186878808.a n = A142938 (n + 1)

end A142938

/-! ## A142938.P15604365956124778977

`p?[A143032(n+1)-2]/cot(atan(1))`
-/

namespace A142938.P15604365956124778977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143032 (n + 1) - 2

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℝ) / Real.cot (Real.arctan (1 : ℝ))

end

end A142938.P15604365956124778977

namespace A142938

/-- `p?[A143032(n+1)-2]/cot(atan(1))` -/
def P15604365956124778977.Spec : Prop :=
  ∀ n, P15604365956124778977.a n = (A142938 (n + 1) : ℝ)

end A142938

/-! ## A142938.P17819962879261469929

`∩[A003628(n+1), A143032(n+1)-2]`
-/

namespace A142938.P17819962879261469929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003628 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143032 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142938.P17819962879261469929

namespace A142938

/-- `∩[A003628(n+1), A143032(n+1)-2]` -/
def P17819962879261469929.Spec : Prop :=
  ∀ n, (P17819962879261469929.a n : ℤ) = A142938 (n + 1)

end A142938

/-! ## A142938.P15967591437359154552

`∩[A045355(n+1), A143032(n+1)-2]`
-/

namespace A142938.P15967591437359154552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045355 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143032 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142938.P15967591437359154552

namespace A142938

/-- `∩[A045355(n+1), A143032(n+1)-2]` -/
def P15967591437359154552.Spec : Prop :=
  ∀ n, (P15967591437359154552.a n : ℤ) = A142938 (n + 1)

end A142938

/-! ## A142938.P4007444150083753196

`∩[A239128(2*n+1)-2, A003628(n+2)]`
-/

namespace A142938.P4007444150083753196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239128 (2 * n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003628 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142938.P4007444150083753196

namespace A142938

/-- `∩[A239128(2*n+1)-2, A003628(n+2)]` -/
def P4007444150083753196.Spec : Prop :=
  ∀ n, (P4007444150083753196.a n : ℤ) = A142938 (n + 1)

end A142938

/-! ## A142938.P9387799762203687331

`∩[A239128(2*n+1)-2, A045355(n+2)]`
-/

namespace A142938.P9387799762203687331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239128 (2 * n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045355 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142938.P9387799762203687331

namespace A142938

/-- `∩[A239128(2*n+1)-2, A045355(n+2)]` -/
def P9387799762203687331.Spec : Prop :=
  ∀ n, (P9387799762203687331.a n : ℤ) = A142938 (n + 1)

end A142938

/-! ## A142938.P6884529246226419506

`∩[A239128(2*n+1)-2, A228228(n+2)]`
-/

namespace A142938.P6884529246226419506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239128 (2 * n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228228 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142938.P6884529246226419506

namespace A142938

/-- `∩[A239128(2*n+1)-2, A228228(n+2)]` -/
def P6884529246226419506.Spec : Prop :=
  ∀ n, (P6884529246226419506.a n : ℤ) = A142938 (n + 1)

end A142938

/-! ## A142938.P10206663924611678899

`record[p?[A082285(A000265(n+1)+n)]]`
-/

namespace A142938.P10206663924611678899
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082285 (A000265 (n + 1) + (n : ℤ)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142938.P10206663924611678899

namespace A142938

/-- `record[p?[A082285(A000265(n+1)+n)]]` -/
def P10206663924611678899.Spec : Prop :=
  ∀ n, P10206663924611678899.a n = A142938 (n + 1)

end A142938

/-! ## A142938.P9344581963834663950

`record[A020639(64*n+29)]`
-/

namespace A142938.P9344581963834663950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (64 * n + 29)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142938.P9344581963834663950

namespace A142938

/-- `record[A020639(64*n+29)]` -/
def P9344581963834663950.Spec : Prop :=
  ∀ n, P9344581963834663950.a n = A142938 (n + 1)

end A142938

/-! ## A142938.P9772614981241642957

`record[p?[A004770(lcm(4, n+1))]]`
-/

namespace A142938.P9772614981241642957
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004770 (Nat.lcm 4 (n + 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142938.P9772614981241642957

namespace A142938

/-- `record[p?[A004770(lcm(4, n+1))]]` -/
def P9772614981241642957.Spec : Prop :=
  ∀ n, P9772614981241642957.a n = A142938 (n + 1)

end A142938

/-! ## A142938.P12267243434158631664

`or(1, p?[A004770(A017113(n))])`
-/

namespace A142938.P12267243434158631664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004770 (A017113 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A142938.P12267243434158631664

namespace A142938

/-- `or(1, p?[A004770(A017113(n))])` -/
def P12267243434158631664.Spec : Prop :=
  ∀ n, P12267243434158631664.a n = A142938 (n + 1)

end A142938

/-! ## A142938.P391491833786184005

`∩[A142047(n+1), A158938(n)+2]`
-/

namespace A142938.P391491833786184005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142047 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158938 n + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142938.P391491833786184005

namespace A142938

/-- `∩[A142047(n+1), A158938(n)+2]` -/
def P391491833786184005.Spec : Prop :=
  ∀ n, (P391491833786184005.a n : ℤ) = A142938 (n + 1)

end A142938

/-! ## A142938.P11548679869281409255

`∩[A103621(n+1)+2, A142047(n+1)]`
-/

namespace A142938.P11548679869281409255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103621 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142047 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142938.P11548679869281409255

namespace A142938

/-- `∩[A103621(n+1)+2, A142047(n+1)]` -/
def P11548679869281409255.Spec : Prop :=
  ∀ n, (P11548679869281409255.a n : ℤ) = A142938 (n + 1)

end A142938

/-! ## A142938.P9126219577662390936

`filter[A142047(n+1), A320006(#)]`
-/

namespace A142938.P9126219577662390936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142047 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A320006 (f1 j).toNat = 1) n)

end

end A142938.P9126219577662390936

namespace A142938

/-- `filter[A142047(n+1), A320006(#)]` -/
def P9126219577662390936.Spec : Prop :=
  ∀ n, P9126219577662390936.a n = A142938 (n + 1)

end A142938

/-! ## A142938.P5611936659615160392

`∩[A007521(n+1), A315683(n)+2]`
-/

namespace A142938.P5611936659615160392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007521 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315683 n + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142938.P5611936659615160392

namespace A142938

/-- `∩[A007521(n+1), A315683(n)+2]` -/
def P5611936659615160392.Spec : Prop :=
  ∀ n, (P5611936659615160392.a n : ℤ) = A142938 (n + 1)

end A142938

/-! ## A142938.P2197619906813360427

`∩[A045366(n+1), A315683(n)+2]`
-/

namespace A142938.P2197619906813360427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045366 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315683 n + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142938.P2197619906813360427

namespace A142938

/-- `∩[A045366(n+1), A315683(n)+2]` -/
def P2197619906813360427.Spec : Prop :=
  ∀ n, (P2197619906813360427.a n : ℤ) = A142938 (n + 1)

end A142938

/-! ## A142938.P9895250744545535816

`or(1, p?[A047621(A051062(n))])`
-/

namespace A142938.P9895250744545535816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047621 (A051062 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A142938.P9895250744545535816

namespace A142938

/-- `or(1, p?[A047621(A051062(n))])` -/
def P9895250744545535816.Spec : Prop :=
  ∀ n, P9895250744545535816.a n = A142938 (n + 1)

end A142938

/-!
# A142939: Primes congruent to 31 mod 64.

The programs for A142939, the canonical program `A142939.P3435509049681326123` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142939 has offset 1).

The definition of A142939 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2424 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142939.P3435509049681326123

`p?[64*n+31]`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A142939

/-- `p?[64*n+31]` -/
def P3435509049681326123.Spec : Prop :=
  ∀ n, (P3435509049681326123.a n : ℤ) = A142939 (n + 1)

theorem P3435509049681326123.correct : P3435509049681326123.Spec := by
  intro n
  simp only [A142939, Nat.add_sub_cancel]

end A142939

/-! ## A142939.P1337302931036557739

`or(1, p?[A143032(n+1)])`
-/

namespace A142939.P1337302931036557739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143032 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A142939.P1337302931036557739

namespace A142939

/-- `or(1, p?[A143032(n+1)])` -/
def P1337302931036557739.Spec : Prop :=
  ∀ n, P1337302931036557739.a n = A142939 (n + 1)

end A142939

/-! ## A142939.P3608765944405383856

`∩[A127576(n+1), A143032(n+1)]`
-/

namespace A142939.P3608765944405383856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127576 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143032 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142939.P3608765944405383856

namespace A142939

/-- `∩[A127576(n+1), A143032(n+1)]` -/
def P3608765944405383856.Spec : Prop :=
  ∀ n, (P3608765944405383856.a n : ℤ) = A142939 (n + 1)

end A142939

/-! ## A142939.P18403498998357151320

`∩[A127578(n+1), A143032(n+1)]`
-/

namespace A142939.P18403498998357151320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143032 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142939.P18403498998357151320

namespace A142939

/-- `∩[A127578(n+1), A143032(n+1)]` -/
def P18403498998357151320.Spec : Prop :=
  ∀ n, (P18403498998357151320.a n : ℤ) = A142939 (n + 1)

end A142939

/-! ## A142939.P12690484129732032783

`∩[A007522(n+1), A143032(n+1)]`
-/

namespace A142939.P12690484129732032783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007522 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143032 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142939.P12690484129732032783

namespace A142939

/-- `∩[A007522(n+1), A143032(n+1)]` -/
def P12690484129732032783.Spec : Prop :=
  ∀ n, (P12690484129732032783.a n : ℤ) = A142939 (n + 1)

end A142939

/-! ## A142939.P3844667975367783942

`∩[A045382(n+1), A143032(n+1)]`
-/

namespace A142939.P3844667975367783942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045382 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143032 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142939.P3844667975367783942

namespace A142939

/-- `∩[A045382(n+1), A143032(n+1)]` -/
def P3844667975367783942.Spec : Prop :=
  ∀ n, (P3844667975367783942.a n : ℤ) = A142939 (n + 1)

end A142939

/-! ## A142939.P15207115913882045049

`∩[A094712(n+1), A143032(n+1)]`
-/

namespace A142939.P15207115913882045049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094712 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143032 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142939.P15207115913882045049

namespace A142939

/-- `∩[A094712(n+1), A143032(n+1)]` -/
def P15207115913882045049.Spec : Prop :=
  ∀ n, (P15207115913882045049.a n : ℤ) = A142939 (n + 1)

end A142939

/-! ## A142939.P14069718981571968101

`∩[A089199(n+1), A143032(n+1)]`
-/

namespace A142939.P14069718981571968101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089199 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143032 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142939.P14069718981571968101

namespace A142939

/-- `∩[A089199(n+1), A143032(n+1)]` -/
def P14069718981571968101.Spec : Prop :=
  ∀ n, (P14069718981571968101.a n : ℤ) = A142939 (n + 1)

end A142939

/-! ## A142939.P2752902498204075799

`∩[A014663(n+1), A143032(n+1)]`
-/

namespace A142939.P2752902498204075799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014663 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143032 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142939.P2752902498204075799

namespace A142939

/-- `∩[A014663(n+1), A143032(n+1)]` -/
def P2752902498204075799.Spec : Prop :=
  ∀ n, (P2752902498204075799.a n : ℤ) = A142939 (n + 1)

end A142939

/-! ## A142939.P1796400009025363698

`∩[A239128(2*n+1), A007522(n+2)]`
-/

namespace A142939.P1796400009025363698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239128 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007522 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142939.P1796400009025363698

namespace A142939

/-- `∩[A239128(2*n+1), A007522(n+2)]` -/
def P1796400009025363698.Spec : Prop :=
  ∀ n, (P1796400009025363698.a n : ℤ) = A142939 (n + 1)

end A142939

/-! ## A142939.P5328302650204108296

`∩[A239128(2*n+1), A045382(n+2)]`
-/

namespace A142939.P5328302650204108296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239128 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045382 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142939.P5328302650204108296

namespace A142939

/-- `∩[A239128(2*n+1), A045382(n+2)]` -/
def P5328302650204108296.Spec : Prop :=
  ∀ n, (P5328302650204108296.a n : ℤ) = A142939 (n + 1)

end A142939

/-! ## A142939.P4232123568879984353

`∩[A040098(n+1), A143032(n+1)]`
-/

namespace A142939.P4232123568879984353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040098 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143032 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142939.P4232123568879984353

namespace A142939

/-- `∩[A040098(n+1), A143032(n+1)]` -/
def P4232123568879984353.Spec : Prop :=
  ∀ n, (P4232123568879984353.a n : ℤ) = A142939 (n + 1)

end A142939

/-! ## A142939.P2416130526152590818

`∩[A143032(n+1), A225185(n+1)]`
-/

namespace A142939.P2416130526152590818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143032 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225185 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142939.P2416130526152590818

namespace A142939

/-- `∩[A143032(n+1), A225185(n+1)]` -/
def P2416130526152590818.Spec : Prop :=
  ∀ n, (P2416130526152590818.a n : ℤ) = A142939 (n + 1)

end A142939

/-! ## A142939.P6173832914029067198

`∩[A040141(n+1), A143032(n+1)]`
-/

namespace A142939.P6173832914029067198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040141 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143032 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142939.P6173832914029067198

namespace A142939

/-- `∩[A040141(n+1), A143032(n+1)]` -/
def P6173832914029067198.Spec : Prop :=
  ∀ n, (P6173832914029067198.a n : ℤ) = A142939 (n + 1)

end A142939

/-! ## A142939.P12142649540997217532

`∩[A045315(n+1), A143032(n+1)]`
-/

namespace A142939.P12142649540997217532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045315 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143032 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142939.P12142649540997217532

namespace A142939

/-- `∩[A045315(n+1), A143032(n+1)]` -/
def P12142649540997217532.Spec : Prop :=
  ∀ n, (P12142649540997217532.a n : ℤ) = A142939 (n + 1)

end A142939

/-! ## A142939.P9213564608490057984

`∩[A001132(n+1), A143032(n+1)]`
-/

namespace A142939.P9213564608490057984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001132 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143032 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142939.P9213564608490057984

namespace A142939

/-- `∩[A001132(n+1), A143032(n+1)]` -/
def P9213564608490057984.Spec : Prop :=
  ∀ n, (P9213564608490057984.a n : ℤ) = A142939 (n + 1)

end A142939

/-! ## A142939.P209737421592661063

`∩[A038873(n+1), A143032(n+1)]`
-/

namespace A142939.P209737421592661063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038873 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143032 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142939.P209737421592661063

namespace A142939

/-- `∩[A038873(n+1), A143032(n+1)]` -/
def P209737421592661063.Spec : Prop :=
  ∀ n, (P209737421592661063.a n : ℤ) = A142939 (n + 1)

end A142939

/-! ## A142939.P5646875408346560483

`∩[A097958(n+1), A143032(n+1)]`
-/

namespace A142939.P5646875408346560483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097958 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143032 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142939.P5646875408346560483

namespace A142939

/-- `∩[A097958(n+1), A143032(n+1)]` -/
def P5646875408346560483.Spec : Prop :=
  ∀ n, (P5646875408346560483.a n : ℤ) = A142939 (n + 1)

end A142939

/-! ## A142939.P18216278312441121583

`∩[A002145(n+1), A143032(n+1)]`
-/

namespace A142939.P18216278312441121583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143032 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142939.P18216278312441121583

namespace A142939

/-- `∩[A002145(n+1), A143032(n+1)]` -/
def P18216278312441121583.Spec : Prop :=
  ∀ n, (P18216278312441121583.a n : ℤ) = A142939 (n + 1)

end A142939

/-!
# A142940: Primes congruent to 35 mod 64.

The programs for A142940, the canonical program `A142940.P17418045244918883104` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142940 has offset 1).

The definition of A142940 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2529 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142940.P17418045244918883104

`A091968(eq[2, and(3, A092022(n+1))]+1)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A142940

/-- `A091968(eq[2, and(3, A092022(n+1))]+1)` -/
def P17418045244918883104.Spec : Prop :=
  ∀ n, P17418045244918883104.a n = A142940 (n + 1)

theorem P17418045244918883104.correct : P17418045244918883104.Spec := by
  intro n
  simp only [A142940, Nat.add_sub_cancel]

end A142940

/-! ## A142940.P4142658312697121900

`p?[a(n-1)+64]` with `a(0)=35`
-/

namespace A142940.P4142658312697121900
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [35] fun n f1 =>
  f1 (n - 1) + 64

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142940.P4142658312697121900

namespace A142940

/-- `p?[a(n-1)+64]` -/
def P4142658312697121900.Spec : Prop :=
  ∀ n, (P4142658312697121900.a n : ℤ) = A142940 (n + 1)

end A142940

/-! ## A142940.P1242141207642503849

`p?[8*(8*n+4)+3]`
-/

namespace A142940.P1242141207642503849
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * (8 * n + 4) + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142940.P1242141207642503849

namespace A142940

/-- `p?[8*(8*n+4)+3]` -/
def P1242141207642503849.Spec : Prop :=
  ∀ n, (P1242141207642503849.a n : ℤ) = A142940 (n + 1)

end A142940

/-! ## A142940.P687279137694669210

`∩[A238477(2*(n+1))-2, A214588(n+2)]`
-/

namespace A142940.P687279137694669210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238477 (2 * (n + 1)) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214588 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142940.P687279137694669210

namespace A142940

/-- `∩[A238477(2*(n+1))-2, A214588(n+2)]` -/
def P687279137694669210.Spec : Prop :=
  ∀ n, (P687279137694669210.a n : ℤ) = A142940 (n + 1)

end A142940

/-! ## A142940.P2399100050002771786

`∩[A238477(2*(n+1))-2, A003629(n+2)]`
-/

namespace A142940.P2399100050002771786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238477 (2 * (n + 1)) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003629 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142940.P2399100050002771786

namespace A142940

/-- `∩[A238477(2*(n+1))-2, A003629(n+2)]` -/
def P2399100050002771786.Spec : Prop :=
  ∀ n, (P2399100050002771786.a n : ℤ) = A142940 (n + 1)

end A142940

/-! ## A142940.P14905831385904940050

`∩[A002145(n+1), A063300(n+2)]`
-/

namespace A142940.P14905831385904940050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063300 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142940.P14905831385904940050

namespace A142940

/-- `∩[A002145(n+1), A063300(n+2)]` -/
def P14905831385904940050.Spec : Prop :=
  ∀ n, (P14905831385904940050.a n : ℤ) = A142940 (n + 1)

end A142940

/-! ## A142940.P13328641670275374682

`∩[A007520(n+1), A063300(n+2)]`
-/

namespace A142940.P13328641670275374682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007520 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063300 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142940.P13328641670275374682

namespace A142940

/-- `∩[A007520(n+1), A063300(n+2)]` -/
def P13328641670275374682.Spec : Prop :=
  ∀ n, (P13328641670275374682.a n : ℤ) = A142940 (n + 1)

end A142940

/-! ## A142940.P9757067535220362463

`∩[A033200(n+1), A063300(n+2)]`
-/

namespace A142940.P9757067535220362463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033200 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063300 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142940.P9757067535220362463

namespace A142940

/-- `∩[A033200(n+1), A063300(n+2)]` -/
def P9757067535220362463.Spec : Prop :=
  ∀ n, (P9757067535220362463.a n : ℤ) = A142940 (n + 1)

end A142940

/-! ## A142940.P9372192638116898187

`∩[A045326(n+1), A063300(n+2)]`
-/

namespace A142940.P9372192638116898187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045326 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063300 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142940.P9372192638116898187

namespace A142940

/-- `∩[A045326(n+1), A063300(n+2)]` -/
def P9372192638116898187.Spec : Prop :=
  ∀ n, (P9372192638116898187.a n : ℤ) = A142940 (n + 1)

end A142940

/-! ## A142940.P7412066894558226283

`∩[A045339(n+1), A063300(n+2)]`
-/

namespace A142940.P7412066894558226283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045339 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063300 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142940.P7412066894558226283

namespace A142940

/-- `∩[A045339(n+1), A063300(n+2)]` -/
def P7412066894558226283.Spec : Prop :=
  ∀ n, (P7412066894558226283.a n : ℤ) = A142940 (n + 1)

end A142940

/-! ## A142940.P17571080170089356160

`∩[A051071(n+1), A063300(n+2)]`
-/

namespace A142940.P17571080170089356160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051071 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063300 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142940.P17571080170089356160

namespace A142940

/-- `∩[A051071(n+1), A063300(n+2)]` -/
def P17571080170089356160.Spec : Prop :=
  ∀ n, (P17571080170089356160.a n : ℤ) = A142940 (n + 1)

end A142940

/-! ## A142940.P14084161096140319280

`∩[A051073(n+1), A063300(n+2)]`
-/

namespace A142940.P14084161096140319280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051073 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063300 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142940.P14084161096140319280

namespace A142940

/-- `∩[A051073(n+1), A063300(n+2)]` -/
def P14084161096140319280.Spec : Prop :=
  ∀ n, (P14084161096140319280.a n : ℤ) = A142940 (n + 1)

end A142940

/-! ## A142940.P16814704639559455503

`∩[A091968(n+1), A063300(n+2)]`
-/

namespace A142940.P16814704639559455503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091968 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063300 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142940.P16814704639559455503

namespace A142940

/-- `∩[A091968(n+1), A063300(n+2)]` -/
def P16814704639559455503.Spec : Prop :=
  ∀ n, (P16814704639559455503.a n : ℤ) = A142940 (n + 1)

end A142940

/-! ## A142940.P2130541277126252716

`∩[A095282(n+1), A063300(n+2)]`
-/

namespace A142940.P2130541277126252716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095282 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063300 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142940.P2130541277126252716

namespace A142940

/-- `∩[A095282(n+1), A063300(n+2)]` -/
def P2130541277126252716.Spec : Prop :=
  ∀ n, (P2130541277126252716.a n : ℤ) = A142940 (n + 1)

end A142940

/-! ## A142940.P5951045693502301393

`∩[A142035(n+1), A063300(n+2)]`
-/

namespace A142940.P5951045693502301393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142035 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063300 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142940.P5951045693502301393

namespace A142940

/-- `∩[A142035(n+1), A063300(n+2)]` -/
def P5951045693502301393.Spec : Prop :=
  ∀ n, (P5951045693502301393.a n : ℤ) = A142940 (n + 1)

end A142940

/-! ## A142940.P5468165348718009462

`∩[A163183(n+1), A063300(n+2)]`
-/

namespace A142940.P5468165348718009462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163183 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063300 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142940.P5468165348718009462

namespace A142940

/-- `∩[A163183(n+1), A063300(n+2)]` -/
def P5468165348718009462.Spec : Prop :=
  ∀ n, (P5468165348718009462.a n : ℤ) = A142940 (n + 1)

end A142940

/-! ## A142940.P3631119429582521695

`∩[A214588(n+1), A063300(n+2)]`
-/

namespace A142940.P3631119429582521695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214588 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063300 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142940.P3631119429582521695

namespace A142940

/-- `∩[A214588(n+1), A063300(n+2)]` -/
def P3631119429582521695.Spec : Prop :=
  ∀ n, (P3631119429582521695.a n : ℤ) = A142940 (n + 1)

end A142940

/-! ## A142940.P3557926443655437492

`∩[A341784(n+1), A063300(n+2)]`
-/

namespace A142940.P3557926443655437492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341784 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063300 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142940.P3557926443655437492

namespace A142940

/-- `∩[A341784(n+1), A063300(n+2)]` -/
def P3557926443655437492.Spec : Prop :=
  ∀ n, (P3557926443655437492.a n : ℤ) = A142940 (n + 1)

end A142940

/-! ## A142940.P12085802461017724249

`∩[A063300(n+2), A385221(n+1)]`
-/

namespace A142940.P12085802461017724249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063300 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385221 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142940.P12085802461017724249

namespace A142940

/-- `∩[A063300(n+2), A385221(n+1)]` -/
def P12085802461017724249.Spec : Prop :=
  ∀ n, (P12085802461017724249.a n : ℤ) = A142940 (n + 1)

end A142940

/-! ## A142940.P10105568021728571807

`∩[A051077(n+1), A063300(n+2)]`
-/

namespace A142940.P10105568021728571807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051077 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063300 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142940.P10105568021728571807

namespace A142940

/-- `∩[A051077(n+1), A063300(n+2)]` -/
def P10105568021728571807.Spec : Prop :=
  ∀ n, (P10105568021728571807.a n : ℤ) = A142940 (n + 1)

end A142940

/-!
# A142941: Primes congruent to 37 mod 64.

The programs for A142941, the canonical program `A142941.P12578231015707486366` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142941 has offset 1).

The definition of A142941 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2429 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142941.P12578231015707486366

`p?[64*n-27]`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A142941

/-- `p?[64*n-27]` -/
def P12578231015707486366.Spec : Prop :=
  ∀ n, P12578231015707486366.a n = A142941 (n + 1)

theorem P12578231015707486366.correct : P12578231015707486366.Spec := by
  intro n
  simp only [A142941, Nat.add_sub_cancel]

end A142941

/-! ## A142941.P8609722060444976827

`∩[A238477(2*(n+1)), A007521(n+2)]`
-/

namespace A142941.P8609722060444976827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238477 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007521 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142941.P8609722060444976827

namespace A142941

/-- `∩[A238477(2*(n+1)), A007521(n+2)]` -/
def P8609722060444976827.Spec : Prop :=
  ∀ n, (P8609722060444976827.a n : ℤ) = A142941 (n + 1)

end A142941

/-! ## A142941.P7455947272932989570

`∩[A238477(2*(n+1)), A045366(n+2)]`
-/

namespace A142941.P7455947272932989570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238477 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045366 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142941.P7455947272932989570

namespace A142941

/-- `∩[A238477(2*(n+1)), A045366(n+2)]` -/
def P7455947272932989570.Spec : Prop :=
  ∀ n, (P7455947272932989570.a n : ℤ) = A142941 (n + 1)

end A142941

/-! ## A142941.P12374797555558390097

`∩[A238477(2*(n+1)), A127589(n+2)]`
-/

namespace A142941.P12374797555558390097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238477 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127589 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142941.P12374797555558390097

namespace A142941

/-- `∩[A238477(2*(n+1)), A127589(n+2)]` -/
def P12374797555558390097.Spec : Prop :=
  ∀ n, (P12374797555558390097.a n : ℤ) = A142941 (n + 1)

end A142941

/-! ## A142941.P2974345056405436797

`∩[A238477(2*(n+1)), A002144(n+2)]`
-/

namespace A142941.P2974345056405436797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238477 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142941.P2974345056405436797

namespace A142941

/-- `∩[A238477(2*(n+1)), A002144(n+2)]` -/
def P2974345056405436797.Spec : Prop :=
  ∀ n, (P2974345056405436797.a n : ℤ) = A142941 (n + 1)

end A142941

/-! ## A142941.P5107677098282242495

`∩[A238477(2*(n+1)), A002313(n+2)]`
-/

namespace A142941.P5107677098282242495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238477 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002313 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142941.P5107677098282242495

namespace A142941

/-- `∩[A238477(2*(n+1)), A002313(n+2)]` -/
def P5107677098282242495.Spec : Prop :=
  ∀ n, (P5107677098282242495.a n : ℤ) = A142941 (n + 1)

end A142941

/-! ## A142941.P15220477693370423201

`∩[A238477(2*(n+1)), A280084(n+2)]`
-/

namespace A142941.P15220477693370423201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238477 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280084 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142941.P15220477693370423201

namespace A142941

/-- `∩[A238477(2*(n+1)), A280084(n+2)]` -/
def P15220477693370423201.Spec : Prop :=
  ∀ n, (P15220477693370423201.a n : ℤ) = A142941 (n + 1)

end A142941

/-! ## A142941.P15315746158452702697

`∩[A238477(2*(n+1)), A214588(n+2)]`
-/

namespace A142941.P15315746158452702697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238477 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214588 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142941.P15315746158452702697

namespace A142941

/-- `∩[A238477(2*(n+1)), A214588(n+2)]` -/
def P15315746158452702697.Spec : Prop :=
  ∀ n, (P15315746158452702697.a n : ℤ) = A142941 (n + 1)

end A142941

/-! ## A142941.P14244133381621086441

`∩[A238477(2*(n+1)), A003628(n+2)]`
-/

namespace A142941.P14244133381621086441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238477 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003628 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142941.P14244133381621086441

namespace A142941

/-- `∩[A238477(2*(n+1)), A003628(n+2)]` -/
def P14244133381621086441.Spec : Prop :=
  ∀ n, (P14244133381621086441.a n : ℤ) = A142941 (n + 1)

end A142941

/-! ## A142941.P2180659057622263672

`∩[A238477(2*(n+1)), A003629(n+2)]`
-/

namespace A142941.P2180659057622263672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238477 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003629 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142941.P2180659057622263672

namespace A142941

/-- `∩[A238477(2*(n+1)), A003629(n+2)]` -/
def P2180659057622263672.Spec : Prop :=
  ∀ n, (P2180659057622263672.a n : ℤ) = A142941 (n + 1)

end A142941

/-! ## A142941.P5621483551232398042

`∩[A238477(2*(n+1)), A045355(n+2)]`
-/

namespace A142941.P5621483551232398042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238477 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045355 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142941.P5621483551232398042

namespace A142941

/-- `∩[A238477(2*(n+1)), A045355(n+2)]` -/
def P5621483551232398042.Spec : Prop :=
  ∀ n, (P5621483551232398042.a n : ℤ) = A142941 (n + 1)

end A142941

/-! ## A142941.P17186604757315785955

`∩[A238477(2*(n+1)), A228228(n+2)]`
-/

namespace A142941.P17186604757315785955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238477 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228228 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142941.P17186604757315785955

namespace A142941

/-- `∩[A238477(2*(n+1)), A228228(n+2)]` -/
def P17186604757315785955.Spec : Prop :=
  ∀ n, (P17186604757315785955.a n : ℤ) = A142941 (n + 1)

end A142941

/-! ## A142941.P5896777791234296991

`∩[A002144(n+1), A063300(n+2)+2]`
-/

namespace A142941.P5896777791234296991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063300 (n + 2) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142941.P5896777791234296991

namespace A142941

/-- `∩[A002144(n+1), A063300(n+2)+2]` -/
def P5896777791234296991.Spec : Prop :=
  ∀ n, (P5896777791234296991.a n : ℤ) = A142941 (n + 1)

end A142941

/-! ## A142941.P7752034341111153755

`∩[A002313(n+1), A063300(n+2)+2]`
-/

namespace A142941.P7752034341111153755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002313 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063300 (n + 2) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142941.P7752034341111153755

namespace A142941

/-- `∩[A002313(n+1), A063300(n+2)+2]` -/
def P7752034341111153755.Spec : Prop :=
  ∀ n, (P7752034341111153755.a n : ℤ) = A142941 (n + 1)

end A142941

/-! ## A142941.P13003969055570938103

`∩[A007521(n+1), A063300(n+2)+2]`
-/

namespace A142941.P13003969055570938103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007521 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063300 (n + 2) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142941.P13003969055570938103

namespace A142941

/-- `∩[A007521(n+1), A063300(n+2)+2]` -/
def P13003969055570938103.Spec : Prop :=
  ∀ n, (P13003969055570938103.a n : ℤ) = A142941 (n + 1)

end A142941

/-! ## A142941.P15427477372660106247

`∩[A045366(n+1), A063300(n+2)+2]`
-/

namespace A142941.P15427477372660106247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045366 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063300 (n + 2) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142941.P15427477372660106247

namespace A142941

/-- `∩[A045366(n+1), A063300(n+2)+2]` -/
def P15427477372660106247.Spec : Prop :=
  ∀ n, (P15427477372660106247.a n : ℤ) = A142941 (n + 1)

end A142941

/-! ## A142941.P2732420149130048153

`∩[A055025(n+1), A063300(n+2)+2]`
-/

namespace A142941.P2732420149130048153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055025 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063300 (n + 2) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142941.P2732420149130048153

namespace A142941

/-- `∩[A055025(n+1), A063300(n+2)+2]` -/
def P2732420149130048153.Spec : Prop :=
  ∀ n, (P2732420149130048153.a n : ℤ) = A142941 (n + 1)

end A142941

/-! ## A142941.P14403417035160779281

`∩[A214588(n+1), A063300(n+2)+2]`
-/

namespace A142941.P14403417035160779281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214588 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063300 (n + 2) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142941.P14403417035160779281

namespace A142941

/-- `∩[A214588(n+1), A063300(n+2)+2]` -/
def P14403417035160779281.Spec : Prop :=
  ∀ n, (P14403417035160779281.a n : ℤ) = A142941 (n + 1)

end A142941

/-! ## A142941.P12445976644980663685

`∩[A280084(n+2), A063300(n+3)+2]`
-/

namespace A142941.P12445976644980663685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280084 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063300 (n + 3) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142941.P12445976644980663685

namespace A142941

/-- `∩[A280084(n+2), A063300(n+3)+2]` -/
def P12445976644980663685.Spec : Prop :=
  ∀ n, (P12445976644980663685.a n : ℤ) = A142941 (n + 1)

end A142941

/-! ## A142941.P17151356880866077403

`∩[A095283(n+1), A063300(n+2)+2]`
-/

namespace A142941.P17151356880866077403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095283 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063300 (n + 2) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142941.P17151356880866077403

namespace A142941

/-- `∩[A095283(n+1), A063300(n+2)+2]` -/
def P17151356880866077403.Spec : Prop :=
  ∀ n, (P17151356880866077403.a n : ℤ) = A142941 (n + 1)

end A142941

/-!
# A142942: Primes congruent to 39 mod 64.

The programs for A142942, the canonical program `A142942.P7322160798847157632` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142942 has offset 1).

The definition of A142942 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2458 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142942.P7322160798847157632

`p?[64*n-25]`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A142942

/-- `p?[64*n-25]` -/
def P7322160798847157632.Spec : Prop :=
  ∀ n, P7322160798847157632.a n = A142942 (n + 1)

theorem P7322160798847157632.correct : P7322160798847157632.Spec := by
  intro n
  simp only [A142942, Nat.add_sub_cancel]

end A142942

/-! ## A142942.P2109668889894891034

`A000027(p?[A157330(n+1)-17])`
-/

namespace A142942.P2109668889894891034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157330 (n + 1) - 17

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142942.P2109668889894891034

namespace A142942

/-- `A000027(p?[A157330(n+1)-17])` -/
def P2109668889894891034.Spec : Prop :=
  ∀ n, P2109668889894891034.a n = A142942 (n + 1)

end A142942

/-! ## A142942.P10186555290596070505

`∩[A238477(2*(n+1))+2, A214588(n+2)]`
-/

namespace A142942.P10186555290596070505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238477 (2 * (n + 1)) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214588 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142942.P10186555290596070505

namespace A142942

/-- `∩[A238477(2*(n+1))+2, A214588(n+2)]` -/
def P10186555290596070505.Spec : Prop :=
  ∀ n, (P10186555290596070505.a n : ℤ) = A142942 (n + 1)

end A142942

/-! ## A142942.P16952293778317405008

`∩[A238477(2*(n+1))+2, A003628(n+2)]`
-/

namespace A142942.P16952293778317405008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238477 (2 * (n + 1)) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003628 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142942.P16952293778317405008

namespace A142942

/-- `∩[A238477(2*(n+1))+2, A003628(n+2)]` -/
def P16952293778317405008.Spec : Prop :=
  ∀ n, (P16952293778317405008.a n : ℤ) = A142942 (n + 1)

end A142942

/-! ## A142942.P6150689033586480066

`∩[A238477(2*(n+1))+2, A045355(n+2)]`
-/

namespace A142942.P6150689033586480066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238477 (2 * (n + 1)) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045355 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142942.P6150689033586480066

namespace A142942

/-- `∩[A238477(2*(n+1))+2, A045355(n+2)]` -/
def P6150689033586480066.Spec : Prop :=
  ∀ n, (P6150689033586480066.a n : ℤ) = A142942 (n + 1)

end A142942

/-! ## A142942.P13687487735421523124

`record[A020639(Δ[(n+2)*(32*n+5)]+2)]`
-/

namespace A142942.P13687487735421523124
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 2) * (32 * n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 ((f2 (n + 1) : ℤ) - (f2 n : ℤ) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142942.P13687487735421523124

namespace A142942

/-- `record[A020639(Δ[(n+2)*(32*n+5)]+2)]` -/
def P13687487735421523124.Spec : Prop :=
  ∀ n, P13687487735421523124.a n = A142942 (n + 1)

end A142942

/-! ## A142942.P10703214389994902523

`record[A001414(A157336(n+1)+31)]`
-/

namespace A142942.P10703214389994902523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A157336 (n + 1) + 31).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142942.P10703214389994902523

namespace A142942

/-- `record[A001414(A157336(n+1)+31)]` -/
def P10703214389994902523.Spec : Prop :=
  ∀ n, P10703214389994902523.a n = A142942 (n + 1)

end A142942

/-! ## A142942.P6772782434900031392

`record[A006530(A157336(n+1)+31)]`
-/

namespace A142942.P6772782434900031392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A157336 (n + 1) + 31).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142942.P6772782434900031392

namespace A142942

/-- `record[A006530(A157336(n+1)+31)]` -/
def P6772782434900031392.Spec : Prop :=
  ∀ n, P6772782434900031392.a n = A142942 (n + 1)

end A142942

/-! ## A142942.P11429605964465072764

`A001414(p?[A157336(n+1)+31])`
-/

namespace A142942.P11429605964465072764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157336 (n + 1) + 31

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142942.P11429605964465072764

namespace A142942

/-- `A001414(p?[A157336(n+1)+31])` -/
def P11429605964465072764.Spec : Prop :=
  ∀ n, P11429605964465072764.a n = A142942 (n + 1)

end A142942

/-! ## A142942.P7986151748132009130

`record[A006530(A004771(A004771(n)+5))]`
-/

namespace A142942.P7986151748132009130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A004771 (A004771 n + 5).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142942.P7986151748132009130

namespace A142942

/-- `record[A006530(A004771(A004771(n)+5))]` -/
def P7986151748132009130.Spec : Prop :=
  ∀ n, P7986151748132009130.a n = A142942 (n + 1)

end A142942

/-! ## A142942.P903290212379340139

`∩[A007522(n+1), A314054(n)+1]`
-/

namespace A142942.P903290212379340139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007522 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314054 n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142942.P903290212379340139

namespace A142942

/-- `∩[A007522(n+1), A314054(n)+1]` -/
def P903290212379340139.Spec : Prop :=
  ∀ n, (P903290212379340139.a n : ℤ) = A142942 (n + 1)

end A142942

/-! ## A142942.P10531828617973465034

`∩[A314054(n+1)+1, A045382(n+2)]`
-/

namespace A142942.P10531828617973465034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314054 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045382 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142942.P10531828617973465034

namespace A142942

/-- `∩[A314054(n+1)+1, A045382(n+2)]` -/
def P10531828617973465034.Spec : Prop :=
  ∀ n, (P10531828617973465034.a n : ℤ) = A142942 (n + 1)

end A142942

/-! ## A142942.P2916539830327955793

`∩[A073088(A073088(n+1)+1), A141194(n+1)]`
-/

namespace A142942.P2916539830327955793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073088 (A073088 (n + 1) + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141194 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142942.P2916539830327955793

namespace A142942

/-- `∩[A073088(A073088(n+1)+1), A141194(n+1)]` -/
def P2916539830327955793.Spec : Prop :=
  ∀ n, (P2916539830327955793.a n : ℤ) = A142942 (n + 1)

end A142942

/-!
# A142943: Primes congruent to 41 mod 64.

The programs for A142943, the canonical program `A142943.P13880456349358536681` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142943 has offset 1).

The definition of A142943 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2451 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142943.P13880456349358536681

`p?[64*n-23]`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A142943

/-- `p?[64*n-23]` -/
def P13880456349358536681.Spec : Prop :=
  ∀ n, P13880456349358536681.a n = A142943 (n + 1)

theorem P13880456349358536681.correct : P13880456349358536681.Spec := by
  intro n
  simp only [A142943, Nat.add_sub_cancel]

end A142943

/-! ## A142943.P8127561112422714745

`A000027(p?[A165372(n+2)+1])`
-/

namespace A142943.P8127561112422714745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165372 (n + 2) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142943.P8127561112422714745

namespace A142943

/-- `A000027(p?[A165372(n+2)+1])` -/
def P8127561112422714745.Spec : Prop :=
  ∀ n, P8127561112422714745.a n = A142943 (n + 1)

end A142943

/-! ## A142943.P4354581690859221005

`record[A006530(8*8*n+41)]`
-/

namespace A142943.P4354581690859221005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (8 * (8 * n) + 41)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142943.P4354581690859221005

namespace A142943

/-- `record[A006530(8*8*n+41)]` -/
def P4354581690859221005.Spec : Prop :=
  ∀ n, P4354581690859221005.a n = A142943 (n + 1)

end A142943

/-! ## A142943.P5255482211344339287

`record[A020639(A143032(n+1)+10)]`
-/

namespace A142943.P5255482211344339287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A143032 (n + 1) + 10).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142943.P5255482211344339287

namespace A142943

/-- `record[A020639(A143032(n+1)+10)]` -/
def P5255482211344339287.Spec : Prop :=
  ∀ n, P5255482211344339287.a n = A142943 (n + 1)

end A142943

/-! ## A142943.P8812794744601146831

`record[A020639(A305075(2*(n+1))+1)]`
-/

namespace A142943.P8812794744601146831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A305075 (2 * (n + 1)) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142943.P8812794744601146831

namespace A142943

/-- `record[A020639(A305075(2*(n+1))+1)]` -/
def P8812794744601146831.Spec : Prop :=
  ∀ n, P8812794744601146831.a n = A142943 (n + 1)

end A142943

/-! ## A142943.P5540398864860610122

`A000265(p?[A270296(n+1)+A042948(n)])`
-/

namespace A142943.P5540398864860610122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270296 (n + 1) + A042948 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142943.P5540398864860610122

namespace A142943

/-- `A000265(p?[A270296(n+1)+A042948(n)])` -/
def P5540398864860610122.Spec : Prop :=
  ∀ n, P5540398864860610122.a n = A142943 (n + 1)

end A142943

/-! ## A142943.P8914898090052857164

`or(1, p?[A004768(A017113(n))])`
-/

namespace A142943.P8914898090052857164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004768 (A017113 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A142943.P8914898090052857164

namespace A142943

/-- `or(1, p?[A004768(A017113(n))])` -/
def P8914898090052857164.Spec : Prop :=
  ∀ n, P8914898090052857164.a n = A142943 (n + 1)

end A142943

/-! ## A142943.P11584321774517176009

`record[A020639(A004768(4*(2*n+1)))]`
-/

namespace A142943.P11584321774517176009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A004768 (4 * (2 * n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142943.P11584321774517176009

namespace A142943

/-- `record[A020639(A004768(4*(2*n+1)))]` -/
def P11584321774517176009.Spec : Prop :=
  ∀ n, P11584321774517176009.a n = A142943 (n + 1)

end A142943

/-!
# A142944: Primes congruent to 43 mod 64.

The programs for A142944, the canonical program `A142944.P5862644719263893988` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142944 has offset 1).

The definition of A142944 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2443 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142944.P5862644719263893988

`p?[64*n-21]`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A142944

/-- `p?[64*n-21]` -/
def P5862644719263893988.Spec : Prop :=
  ∀ n, P5862644719263893988.a n = A142944 (n + 1)

theorem P5862644719263893988.correct : P5862644719263893988.Spec := by
  intro n
  simp only [A142944, Nat.add_sub_cancel]

end A142944

/-! ## A142944.P4138688558884457445

`or(p?[A143032(n+1)+12], A000007(n))`
-/

namespace A142944.P4138688558884457445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143032 (n + 1) + 12

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A000007 n)

end

end A142944.P4138688558884457445

namespace A142944

/-- `or(p?[A143032(n+1)+12], A000007(n))` -/
def P4138688558884457445.Spec : Prop :=
  ∀ n, P4138688558884457445.a n = A142944 (n + 1)

end A142944

/-! ## A142944.P8959325618928340670

`or(p?[A143032(n+1)+12], A000038(n))`
-/

namespace A142944.P8959325618928340670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143032 (n + 1) + 12

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A000038 n)

end

end A142944.P8959325618928340670

namespace A142944

/-- `or(p?[A143032(n+1)+12], A000038(n))` -/
def P8959325618928340670.Spec : Prop :=
  ∀ n, P8959325618928340670.a n = A142944 (n + 1)

end A142944

/-! ## A142944.P7822943848165536333

`A000007(n+1)+p?[A143032(n+1)+12]`
-/

namespace A142944.P7822943848165536333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143032 (n + 1) + 12

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142944.P7822943848165536333

namespace A142944

/-- `A000007(n+1)+p?[A143032(n+1)+12]` -/
def P7822943848165536333.Spec : Prop :=
  ∀ n, P7822943848165536333.a n = A142944 (n + 1)

end A142944

/-! ## A142944.P7026468052780471918

`∩[A063300(2*(n+1))-A063300(n+3), A007520(n+2)]`
-/

namespace A142944.P7026468052780471918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063300 (2 * (n + 1)) - A063300 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007520 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142944.P7026468052780471918

namespace A142944

/-- `∩[A063300(2*(n+1))-A063300(n+3), A007520(n+2)]` -/
def P7026468052780471918.Spec : Prop :=
  ∀ n, (P7026468052780471918.a n : ℤ) = A142944 (n + 1)

end A142944

/-! ## A142944.P15396047120891970448

`∩[A063300(2*(n+1))-A063300(n+3), A045339(n+2)]`
-/

namespace A142944.P15396047120891970448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063300 (2 * (n + 1)) - A063300 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045339 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142944.P15396047120891970448

namespace A142944

/-- `∩[A063300(2*(n+1))-A063300(n+3), A045339(n+2)]` -/
def P15396047120891970448.Spec : Prop :=
  ∀ n, (P15396047120891970448.a n : ℤ) = A142944 (n + 1)

end A142944

/-! ## A142944.P2008326480190406078

`∩[A063300(2*(n+1))-A063300(n+3), A051071(n+2)]`
-/

namespace A142944.P2008326480190406078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063300 (2 * (n + 1)) - A063300 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051071 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142944.P2008326480190406078

namespace A142944

/-- `∩[A063300(2*(n+1))-A063300(n+3), A051071(n+2)]` -/
def P2008326480190406078.Spec : Prop :=
  ∀ n, (P2008326480190406078.a n : ℤ) = A142944 (n + 1)

end A142944

/-! ## A142944.P15810194347097237222

`∩[A063300(2*(n+1))-A063300(n+3), A051073(n+2)]`
-/

namespace A142944.P15810194347097237222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063300 (2 * (n + 1)) - A063300 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051073 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142944.P15810194347097237222

namespace A142944

/-- `∩[A063300(2*(n+1))-A063300(n+3), A051073(n+2)]` -/
def P15810194347097237222.Spec : Prop :=
  ∀ n, (P15810194347097237222.a n : ℤ) = A142944 (n + 1)

end A142944

/-! ## A142944.P12753453139276791369

`∩[A063300(2*(n+1))-A063300(n+3), A051077(n+2)]`
-/

namespace A142944.P12753453139276791369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063300 (2 * (n + 1)) - A063300 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051077 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142944.P12753453139276791369

namespace A142944

/-- `∩[A063300(2*(n+1))-A063300(n+3), A051077(n+2)]` -/
def P12753453139276791369.Spec : Prop :=
  ∀ n, (P12753453139276791369.a n : ℤ) = A142944 (n + 1)

end A142944

/-! ## A142944.P1448811971686153091

`∩[A063300(2*(n+1))-A063300(n+3), A051085(n+2)]`
-/

namespace A142944.P1448811971686153091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063300 (2 * (n + 1)) - A063300 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051085 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142944.P1448811971686153091

namespace A142944

/-- `∩[A063300(2*(n+1))-A063300(n+3), A051085(n+2)]` -/
def P1448811971686153091.Spec : Prop :=
  ∀ n, (P1448811971686153091.a n : ℤ) = A142944 (n + 1)

end A142944

/-! ## A142944.P2904147160676177955

`∩[A063300(2*(n+1))-A063300(n+3), A095282(n+2)]`
-/

namespace A142944.P2904147160676177955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063300 (2 * (n + 1)) - A063300 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095282 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142944.P2904147160676177955

namespace A142944

/-- `∩[A063300(2*(n+1))-A063300(n+3), A095282(n+2)]` -/
def P2904147160676177955.Spec : Prop :=
  ∀ n, (P2904147160676177955.a n : ℤ) = A142944 (n + 1)

end A142944

/-! ## A142944.P11847249445493754393

`∩[A063300(2*(n+1))-A063300(n+3), A341784(n+2)]`
-/

namespace A142944.P11847249445493754393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063300 (2 * (n + 1)) - A063300 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341784 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142944.P11847249445493754393

namespace A142944

/-- `∩[A063300(2*(n+1))-A063300(n+3), A341784(n+2)]` -/
def P11847249445493754393.Spec : Prop :=
  ∀ n, (P11847249445493754393.a n : ℤ) = A142944 (n + 1)

end A142944

/-! ## A142944.P7748407874582364560

`record[A006530(8*(8*n+5)+3)]`
-/

namespace A142944.P7748407874582364560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (8 * (8 * n + 5) + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142944.P7748407874582364560

namespace A142944

/-- `record[A006530(8*(8*n+5)+3)]` -/
def P7748407874582364560.Spec : Prop :=
  ∀ n, P7748407874582364560.a n = A142944 (n + 1)

end A142944

/-! ## A142944.P9388811628754617039

`∩[A063300(2*(n+1))-A063300(n+3), A309581(n+2)]`
-/

namespace A142944.P9388811628754617039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063300 (2 * (n + 1)) - A063300 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309581 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142944.P9388811628754617039

namespace A142944

/-- `∩[A063300(2*(n+1))-A063300(n+3), A309581(n+2)]` -/
def P9388811628754617039.Spec : Prop :=
  ∀ n, (P9388811628754617039.a n : ℤ) = A142944 (n + 1)

end A142944

/-!
# A142945: Primes congruent to 45 mod 64.

The programs for A142945, the canonical program `A142945.P2563163270019381156` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142945 has offset 1).

The definition of A142945 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2458 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142945.P2563163270019381156

`p?[64*n-19]`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A142945

/-- `p?[64*n-19]` -/
def P2563163270019381156.Spec : Prop :=
  ∀ n, P2563163270019381156.a n = A142945 (n + 1)

theorem P2563163270019381156.correct : P2563163270019381156.Spec := by
  intro n
  simp only [A142945, Nat.add_sub_cancel]

end A142945

/-! ## A142945.P14367057644456255010

`or(1, p?[A082285(4*n+2)])`
-/

namespace A142945.P14367057644456255010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082285 (4 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A142945.P14367057644456255010

namespace A142945

/-- `or(1, p?[A082285(4*n+2)])` -/
def P14367057644456255010.Spec : Prop :=
  ∀ n, P14367057644456255010.a n = A142945 (n + 1)

end A142945

/-! ## A142945.P13409471044755150973

`A000027(p?[A082285(4*n+2)])`
-/

namespace A142945.P13409471044755150973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082285 (4 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142945.P13409471044755150973

namespace A142945

/-- `A000027(p?[A082285(4*n+2)])` -/
def P13409471044755150973.Spec : Prop :=
  ∀ n, P13409471044755150973.a n = A142945 (n + 1)

end A142945

/-! ## A142945.P2472842598917937017

`record[p?[A082285(2*A000265(n+1))]]`
-/

namespace A142945.P2472842598917937017
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082285 (2 * A000265 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142945.P2472842598917937017

namespace A142945

/-- `record[p?[A082285(2*A000265(n+1))]]` -/
def P2472842598917937017.Spec : Prop :=
  ∀ n, P2472842598917937017.a n = A142945 (n + 1)

end A142945

/-! ## A142945.P52195697705555872

`char[A008918(n+1)]+p?[A082285(4*n+2)]`
-/

namespace A142945.P52195697705555872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008918 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082285 (4 * n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) + f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

end

end A142945.P52195697705555872

namespace A142945

/-- `char[A008918(n+1)]+p?[A082285(4*n+2)]` -/
def P52195697705555872.Spec : Prop :=
  ∀ n, P52195697705555872.a n = A142945 (n + 1)

end A142945

/-! ## A142945.P1816720629548772493

`p?[A082285(A016825(n))]%A337873(n+1)`
-/

namespace A142945.P1816720629548772493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082285 (A016825 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A337873 (n + 1))

end

end A142945.P1816720629548772493

namespace A142945

/-- `p?[A082285(A016825(n))]%A337873(n+1)` -/
def P1816720629548772493.Spec : Prop :=
  ∀ n, P1816720629548772493.a n = A142945 (n + 1)

end A142945

/-! ## A142945.P9800735556588668560

`A000035(A168273(n+1))+p?[A082285(4*n+2)]`
-/

namespace A142945.P9800735556588668560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082285 (4 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A168273 (n + 1)).toNat + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142945.P9800735556588668560

namespace A142945

/-- `A000035(A168273(n+1))+p?[A082285(4*n+2)]` -/
def P9800735556588668560.Spec : Prop :=
  ∀ n, P9800735556588668560.a n = A142945 (n + 1)

end A142945

/-! ## A142945.P15255209856683681952

`A000265(p?[A082285(4*n+2)])`
-/

namespace A142945.P15255209856683681952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082285 (4 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142945.P15255209856683681952

namespace A142945

/-- `A000265(p?[A082285(4*n+2)])` -/
def P15255209856683681952.Spec : Prop :=
  ∀ n, P15255209856683681952.a n = A142945 (n + 1)

end A142945

/-! ## A142945.P6903448744201274137

`A001414(p?[A082285(4*n+2)])`
-/

namespace A142945.P6903448744201274137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082285 (4 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142945.P6903448744201274137

namespace A142945

/-- `A001414(p?[A082285(4*n+2)])` -/
def P6903448744201274137.Spec : Prop :=
  ∀ n, P6903448744201274137.a n = A142945 (n + 1)

end A142945

/-! ## A142945.P13851082449816056739

`A008472(p?[A082285(4*n+2)])`
-/

namespace A142945.P13851082449816056739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082285 (4 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142945.P13851082449816056739

namespace A142945

/-- `A008472(p?[A082285(4*n+2)])` -/
def P13851082449816056739.Spec : Prop :=
  ∀ n, P13851082449816056739.a n = A142945 (n + 1)

end A142945

/-! ## A142945.P9948083512610043132

`or(1, p?[A004770(8*n+6)])`
-/

namespace A142945.P9948083512610043132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004770 (8 * n + 6)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A142945.P9948083512610043132

namespace A142945

/-- `or(1, p?[A004770(8*n+6)])` -/
def P9948083512610043132.Spec : Prop :=
  ∀ n, P9948083512610043132.a n = A142945 (n + 1)

end A142945

/-! ## A142945.P4667402091740916810

`∩[A002144(n+1), A315688(n)-2]`
-/

namespace A142945.P4667402091740916810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315688 n - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142945.P4667402091740916810

namespace A142945

/-- `∩[A002144(n+1), A315688(n)-2]` -/
def P4667402091740916810.Spec : Prop :=
  ∀ n, (P4667402091740916810.a n : ℤ) = A142945 (n + 1)

end A142945

/-! ## A142945.P12816732282468213035

`∩[A315683(2*n+1)-2, A007521(n+2)]`
-/

namespace A142945.P12816732282468213035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315683 (2 * n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007521 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142945.P12816732282468213035

namespace A142945

/-- `∩[A315683(2*n+1)-2, A007521(n+2)]` -/
def P12816732282468213035.Spec : Prop :=
  ∀ n, (P12816732282468213035.a n : ℤ) = A142945 (n + 1)

end A142945

/-! ## A142945.P13260044318227454893

`∩[A315683(2*n+1)-2, A045366(n+2)]`
-/

namespace A142945.P13260044318227454893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315683 (2 * n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045366 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142945.P13260044318227454893

namespace A142945

/-- `∩[A315683(2*n+1)-2, A045366(n+2)]` -/
def P13260044318227454893.Spec : Prop :=
  ∀ n, (P13260044318227454893.a n : ℤ) = A142945 (n + 1)

end A142945

/-!
# A142946: Primes congruent to 47 mod 64.

The programs for A142946, the canonical program `A142946.P3067631128433133171` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142946 has offset 1).

The definition of A142946 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2488 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142946.P3067631128433133171

`p?[64*n+47]`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A142946

/-- `p?[64*n+47]` -/
def P3067631128433133171.Spec : Prop :=
  ∀ n, (P3067631128433133171.a n : ℤ) = A142946 (n + 1)

theorem P3067631128433133171.correct : P3067631128433133171.Spec := by
  intro n
  simp only [A142946, Nat.add_sub_cancel]

end A142946

/-! ## A142946.P17176493093422388960

`record[A020639(64*n+47)]`
-/

namespace A142946.P17176493093422388960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (64 * n + 47)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142946.P17176493093422388960

namespace A142946

/-- `record[A020639(64*n+47)]` -/
def P17176493093422388960.Spec : Prop :=
  ∀ n, P17176493093422388960.a n = A142946 (n + 1)

end A142946

/-! ## A142946.P15155866491913421307

`record[A006530(8*8*n+47)]`
-/

namespace A142946.P15155866491913421307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (8 * (8 * n) + 47)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142946.P15155866491913421307

namespace A142946

/-- `record[A006530(8*8*n+47)]` -/
def P15155866491913421307.Spec : Prop :=
  ∀ n, P15155866491913421307.a n = A142946 (n + 1)

end A142946

/-! ## A142946.P2246596130197902765

`record[A001414(64*(n+1)-17)]`
-/

namespace A142946.P2246596130197902765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (64 * (n + 1) - 17)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142946.P2246596130197902765

namespace A142946

/-- `record[A001414(64*(n+1)-17)]` -/
def P2246596130197902765.Spec : Prop :=
  ∀ n, P2246596130197902765.a n = A142946 (n + 1)

end A142946

/-! ## A142946.P14138689803156989329

`∩[A007522(n+1), A314054(n)-2]`
-/

namespace A142946.P14138689803156989329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007522 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314054 n - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142946.P14138689803156989329

namespace A142946

/-- `∩[A007522(n+1), A314054(n)-2]` -/
def P14138689803156989329.Spec : Prop :=
  ∀ n, (P14138689803156989329.a n : ℤ) = A142946 (n + 1)

end A142946

/-! ## A142946.P6776190703568393860

`∩[A314054(2*n+1)-2, A045382(n+2)]`
-/

namespace A142946.P6776190703568393860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314054 (2 * n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045382 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142946.P6776190703568393860

namespace A142946

/-- `∩[A314054(2*n+1)-2, A045382(n+2)]` -/
def P6776190703568393860.Spec : Prop :=
  ∀ n, (P6776190703568393860.a n : ℤ) = A142946 (n + 1)

end A142946

/-! ## A142946.P3757440719830852159

`p?[A044614(n+1)+1]%A251531(n+1)`
-/

namespace A142946.P3757440719830852159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044614 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A251531 (n + 1))

end

end A142946.P3757440719830852159

namespace A142946

/-- `p?[A044614(n+1)+1]%A251531(n+1)` -/
def P3757440719830852159.Spec : Prop :=
  ∀ n, P3757440719830852159.a n = A142946 (n + 1)

end A142946

/-!
# A142947: Primes congruent to 49 mod 64.

The programs for A142947, the canonical program `A142947.P13720696350314908485` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142947 has offset 1).

The definition of A142947 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2442 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142947.P13720696350314908485

`p?[64*n-15]`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A142947

/-- `p?[64*n-15]` -/
def P13720696350314908485.Spec : Prop :=
  ∀ n, P13720696350314908485.a n = A142947 (n + 1)

theorem P13720696350314908485.correct : P13720696350314908485.Spec := by
  intro n
  simp only [A142947, Nat.add_sub_cancel]

end A142947

/-! ## A142947.P18150548461541866580

`A062977(A001511(n+1))+p?[A157330(n+1)-7]`
-/

namespace A142947.P18150548461541866580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157330 (n + 1) - 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062977 (A001511 (n + 1)).toNat + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142947.P18150548461541866580

namespace A142947

/-- `A062977(A001511(n+1))+p?[A157330(n+1)-7]` -/
def P18150548461541866580.Spec : Prop :=
  ∀ n, P18150548461541866580.a n = A142947 (n + 1)

end A142947

/-! ## A142947.P17465945354021938511

`p?[A157330(n+1)-7]%A106100(A106092(n+1))`
-/

namespace A142947.P17465945354021938511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157330 (n + 1) - 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A106100 (A106092 (n + 1)).toNat)

end

end A142947.P17465945354021938511

namespace A142947

/-- `p?[A157330(n+1)-7]%A106100(A106092(n+1))` -/
def P17465945354021938511.Spec : Prop :=
  ∀ n, P17465945354021938511.a n = A142947 (n + 1)

end A142947

/-! ## A142947.P4964725108901249874

`∩[A105127(n+1), A317333(n+1)]`
-/

namespace A142947.P4964725108901249874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105127 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317333 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142947.P4964725108901249874

namespace A142947

/-- `∩[A105127(n+1), A317333(n+1)]` -/
def P4964725108901249874.Spec : Prop :=
  ∀ n, (P4964725108901249874.a n : ℤ) = A142947 (n + 1)

end A142947

/-! ## A142947.P16752416228637427089

`A007947(p?[A157330(n+1)-7])`
-/

namespace A142947.P16752416228637427089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157330 (n + 1) - 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142947.P16752416228637427089

namespace A142947

/-- `A007947(p?[A157330(n+1)-7])` -/
def P16752416228637427089.Spec : Prop :=
  ∀ n, P16752416228637427089.a n = A142947 (n + 1)

end A142947

/-! ## A142947.P15428452041965105633

`record[A006530(A158071(n+1)+48)]`
-/

namespace A142947.P15428452041965105633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A158071 (n + 1) + 48).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142947.P15428452041965105633

namespace A142947

/-- `record[A006530(A158071(n+1)+48)]` -/
def P15428452041965105633.Spec : Prop :=
  ∀ n, P15428452041965105633.a n = A142947 (n + 1)

end A142947

/-! ## A142947.P15041376346166594242

`∩[A105127(n+1), A247065(n+1)]`
-/

namespace A142947.P15041376346166594242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105127 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247065 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142947.P15041376346166594242

namespace A142947

/-- `∩[A105127(n+1), A247065(n+1)]` -/
def P15041376346166594242.Spec : Prop :=
  ∀ n, (P15041376346166594242.a n : ℤ) = A142947 (n + 1)

end A142947

/-! ## A142947.P17586793407954227860

`p?[A157330(n+1)-7]/A001511(A106095(n+1))`
-/

namespace A142947.P17586793407954227860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157330 (n + 1) - 7

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / (A001511 (A106095 (n + 1)).toNat : ℚ)

end

end A142947.P17586793407954227860

namespace A142947

/-- `p?[A157330(n+1)-7]/A001511(A106095(n+1))` -/
def P17586793407954227860.Spec : Prop :=
  ∀ n, P17586793407954227860.a n = (A142947 (n + 1) : ℚ)

end A142947

/-! ## A142947.P7323235686463460687

`p?[A157330(n+1)-7]/A003602(A046644(n+1))`
-/

namespace A142947.P7323235686463460687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157330 (n + 1) - 7

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / (A003602 (A046644 (n + 1)).toNat : ℚ)

end

end A142947.P7323235686463460687

namespace A142947

/-- `p?[A157330(n+1)-7]/A003602(A046644(n+1))` -/
def P7323235686463460687.Spec : Prop :=
  ∀ n, P7323235686463460687.a n = (A142947 (n + 1) : ℚ)

end A142947

/-! ## A142947.P17861428662986979692

`∩[A081647(n+1), A105127(n+1)]`
-/

namespace A142947.P17861428662986979692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081647 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105127 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142947.P17861428662986979692

namespace A142947

/-- `∩[A081647(n+1), A105127(n+1)]` -/
def P17861428662986979692.Spec : Prop :=
  ∀ n, (P17861428662986979692.a n : ℤ) = A142947 (n + 1)

end A142947

/-! ## A142947.P15757832742070748693

`or(1, p?[A017077(A008579(n))])`
-/

namespace A142947.P15757832742070748693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017077 (A008579 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A142947.P15757832742070748693

namespace A142947

/-- `or(1, p?[A017077(A008579(n))])` -/
def P15757832742070748693.Spec : Prop :=
  ∀ n, P15757832742070748693.a n = A142947 (n + 1)

end A142947

/-! ## A142947.P7710541501693411040

`∩[A002144(n+1), A315688(n)+2]`
-/

namespace A142947.P7710541501693411040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315688 n + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142947.P7710541501693411040

namespace A142947

/-- `∩[A002144(n+1), A315688(n)+2]` -/
def P7710541501693411040.Spec : Prop :=
  ∀ n, (P7710541501693411040.a n : ℤ) = A142947 (n + 1)

end A142947

/-!
# A142948: Primes congruent to 51 mod 64.

The programs for A142948, the canonical program `A142948.P11630965134437301542` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142948 has offset 1).

The definition of A142948 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2497 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142948.P11630965134437301542

`A091968(eq[3, and(3, A092022(n+1))]+1)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A142948

/-- `A091968(eq[3, and(3, A092022(n+1))]+1)` -/
def P11630965134437301542.Spec : Prop :=
  ∀ n, P11630965134437301542.a n = A142948 (n + 1)

theorem P11630965134437301542.correct : P11630965134437301542.Spec := by
  intro n
  simp only [A142948, Nat.add_sub_cancel]

end A142948

/-! ## A142948.P12853715727791368165

`p?[64*n-13]`
-/

namespace A142948.P12853715727791368165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (64 * n : ℤ) - 13

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142948.P12853715727791368165

namespace A142948

/-- `p?[64*n-13]` -/
def P12853715727791368165.Spec : Prop :=
  ∀ n, P12853715727791368165.a n = A142948 (n + 1)

end A142948

/-! ## A142948.P14311753743342381505

`or(p?[A157330(n+1)-5], A014707(n))`
-/

namespace A142948.P14311753743342381505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157330 (n + 1) - 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A014707 n)

end

end A142948.P14311753743342381505

namespace A142948

/-- `or(p?[A157330(n+1)-5], A014707(n))` -/
def P14311753743342381505.Spec : Prop :=
  ∀ n, P14311753743342381505.a n = A142948 (n + 1)

end A142948

/-! ## A142948.P2856507187927948524

`A000027(p?[A157330(n+1)-5])`
-/

namespace A142948.P2856507187927948524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157330 (n + 1) - 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142948.P2856507187927948524

namespace A142948

/-- `A000027(p?[A157330(n+1)-5])` -/
def P2856507187927948524.Spec : Prop :=
  ∀ n, P2856507187927948524.a n = A142948 (n + 1)

end A142948

/-! ## A142948.P10297063452876822544

`∩[A042999(n+1), A239124(n+1)-2]`
-/

namespace A142948.P10297063452876822544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042999 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239124 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142948.P10297063452876822544

namespace A142948

/-- `∩[A042999(n+1), A239124(n+1)-2]` -/
def P10297063452876822544.Spec : Prop :=
  ∀ n, (P10297063452876822544.a n : ℤ) = A142948 (n + 1)

end A142948

/-! ## A142948.P3737935863048622957

`∩[A059265(n+1), A239124(n+1)-2]`
-/

namespace A142948.P3737935863048622957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059265 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239124 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142948.P3737935863048622957

namespace A142948

/-- `∩[A059265(n+1), A239124(n+1)-2]` -/
def P3737935863048622957.Spec : Prop :=
  ∀ n, (P3737935863048622957.a n : ℤ) = A142948 (n + 1)

end A142948

/-! ## A142948.P6655682296048379428

`∩[A059263(n+1), A239124(n+1)-2]`
-/

namespace A142948.P6655682296048379428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059263 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239124 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142948.P6655682296048379428

namespace A142948

/-- `∩[A059263(n+1), A239124(n+1)-2]` -/
def P6655682296048379428.Spec : Prop :=
  ∀ n, (P6655682296048379428.a n : ℤ) = A142948 (n + 1)

end A142948

/-! ## A142948.P5195252872591324899

`∩[A040100(n+1), A239124(n+1)-2]`
-/

namespace A142948.P5195252872591324899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040100 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239124 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142948.P5195252872591324899

namespace A142948

/-- `∩[A040100(n+1), A239124(n+1)-2]` -/
def P5195252872591324899.Spec : Prop :=
  ∀ n, (P5195252872591324899.a n : ℤ) = A142948 (n + 1)

end A142948

/-! ## A142948.P12903524351879403337

`∩[A040144(n+1), A239124(n+1)-2]`
-/

namespace A142948.P12903524351879403337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239124 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142948.P12903524351879403337

namespace A142948

/-- `∩[A040144(n+1), A239124(n+1)-2]` -/
def P12903524351879403337.Spec : Prop :=
  ∀ n, (P12903524351879403337.a n : ℤ) = A142948 (n + 1)

end A142948

/-! ## A142948.P15789568432791303130

`∩[A040993(n+1), A239124(n+1)-2]`
-/

namespace A142948.P15789568432791303130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040993 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239124 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142948.P15789568432791303130

namespace A142948

/-- `∩[A040993(n+1), A239124(n+1)-2]` -/
def P15789568432791303130.Spec : Prop :=
  ∀ n, (P15789568432791303130.a n : ℤ) = A142948 (n + 1)

end A142948

/-! ## A142948.P9418764136284655761

`∩[A014662(n+1), A239124(n+1)-2]`
-/

namespace A142948.P9418764136284655761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014662 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239124 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142948.P9418764136284655761

namespace A142948

/-- `∩[A014662(n+1), A239124(n+1)-2]` -/
def P9418764136284655761.Spec : Prop :=
  ∀ n, (P9418764136284655761.a n : ℤ) = A142948 (n + 1)

end A142948

/-! ## A142948.P2798358107318957945

`∩[A045395(n+1), A239124(n+1)-2]`
-/

namespace A142948.P2798358107318957945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045395 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239124 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142948.P2798358107318957945

namespace A142948

/-- `∩[A045395(n+1), A239124(n+1)-2]` -/
def P2798358107318957945.Spec : Prop :=
  ∀ n, (P2798358107318957945.a n : ℤ) = A142948 (n + 1)

end A142948

/-! ## A142948.P2711484072347540276

`A000265(p?[A157330(n+1)-5])`
-/

namespace A142948.P2711484072347540276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157330 (n + 1) - 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142948.P2711484072347540276

namespace A142948

/-- `A000265(p?[A157330(n+1)-5])` -/
def P2711484072347540276.Spec : Prop :=
  ∀ n, P2711484072347540276.a n = A142948 (n + 1)

end A142948

/-! ## A142948.P7121032681183662544

`or(1, p?[A004769(A004769(n)+2)])`
-/

namespace A142948.P7121032681183662544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004769 (A004769 n + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A142948.P7121032681183662544

namespace A142948

/-- `or(1, p?[A004769(A004769(n)+2)])` -/
def P7121032681183662544.Spec : Prop :=
  ∀ n, P7121032681183662544.a n = A142948 (n + 1)

end A142948

/-!
# A142949: Primes congruent to 53 mod 64.

The programs for A142949, the canonical program `A142949.P9238791156441791020` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142949 has offset 1).

The definition of A142949 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2469 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142949.P9238791156441791020

`p?[64*n-11]`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A142949

/-- `p?[64*n-11]` -/
def P9238791156441791020.Spec : Prop :=
  ∀ n, P9238791156441791020.a n = A142949 (n + 1)

theorem P9238791156441791020.correct : P9238791156441791020.Spec := by
  intro n
  simp only [A142949, Nat.add_sub_cancel]

end A142949

/-! ## A142949.P17694516537250499581

`or(1, p?[a(n-1)+64])` with `a(0)=53`
-/

namespace A142949.P17694516537250499581
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [53] fun n f1 =>
  f1 (n - 1) + 64

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A142949.P17694516537250499581

namespace A142949

/-- `or(1, p?[a(n-1)+64])` -/
def P17694516537250499581.Spec : Prop :=
  ∀ n, (P17694516537250499581.a n : ℤ) = A142949 (n + 1)

end A142949

/-! ## A142949.P14693198333146683274

`∩[A127589(n+1), A239124(n+1)]`
-/

namespace A142949.P14693198333146683274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127589 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239124 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142949.P14693198333146683274

namespace A142949

/-- `∩[A127589(n+1), A239124(n+1)]` -/
def P14693198333146683274.Spec : Prop :=
  ∀ n, (P14693198333146683274.a n : ℤ) = A142949 (n + 1)

end A142949

/-! ## A142949.P15354178195004673999

`∩[A142043(n+1), A239124(n+1)]`
-/

namespace A142949.P15354178195004673999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142043 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239124 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142949.P15354178195004673999

namespace A142949

/-- `∩[A142043(n+1), A239124(n+1)]` -/
def P15354178195004673999.Spec : Prop :=
  ∀ n, (P15354178195004673999.a n : ℤ) = A142949 (n + 1)

end A142949

/-! ## A142949.P15053574897012126325

`∩[A007521(n+1), A239124(n+1)]`
-/

namespace A142949.P15053574897012126325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007521 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239124 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142949.P15053574897012126325

namespace A142949

/-- `∩[A007521(n+1), A239124(n+1)]` -/
def P15053574897012126325.Spec : Prop :=
  ∀ n, (P15053574897012126325.a n : ℤ) = A142949 (n + 1)

end A142949

/-! ## A142949.P8252406519350793467

`∩[A045366(n+1), A239124(n+1)]`
-/

namespace A142949.P8252406519350793467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045366 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239124 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142949.P8252406519350793467

namespace A142949

/-- `∩[A045366(n+1), A239124(n+1)]` -/
def P8252406519350793467.Spec : Prop :=
  ∀ n, (P8252406519350793467.a n : ℤ) = A142949 (n + 1)

end A142949

/-! ## A142949.P14837414386597337107

`∩[A239124(n+1), A385224(n+1)]`
-/

namespace A142949.P14837414386597337107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239124 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385224 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142949.P14837414386597337107

namespace A142949

/-- `∩[A239124(n+1), A385224(n+1)]` -/
def P14837414386597337107.Spec : Prop :=
  ∀ n, (P14837414386597337107.a n : ℤ) = A142949 (n + 1)

end A142949

/-! ## A142949.P3853860282309212787

`∩[A239124(n+1), A392947(n+1)]`
-/

namespace A142949.P3853860282309212787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239124 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392947 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142949.P3853860282309212787

namespace A142949

/-- `∩[A239124(n+1), A392947(n+1)]` -/
def P3853860282309212787.Spec : Prop :=
  ∀ n, (P3853860282309212787.a n : ℤ) = A142949 (n + 1)

end A142949

/-! ## A142949.P11413103448707121871

`∩[A002144(n+1), A239124(n+1)]`
-/

namespace A142949.P11413103448707121871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239124 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142949.P11413103448707121871

namespace A142949

/-- `∩[A002144(n+1), A239124(n+1)]` -/
def P11413103448707121871.Spec : Prop :=
  ∀ n, (P11413103448707121871.a n : ℤ) = A142949 (n + 1)

end A142949

/-! ## A142949.P11208235838944191965

`∩[A003628(n+1), A239124(n+1)]`
-/

namespace A142949.P11208235838944191965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003628 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239124 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142949.P11208235838944191965

namespace A142949

/-- `∩[A003628(n+1), A239124(n+1)]` -/
def P11208235838944191965.Spec : Prop :=
  ∀ n, (P11208235838944191965.a n : ℤ) = A142949 (n + 1)

end A142949

/-! ## A142949.P1068627531275411519

`∩[A042999(n+1), A239124(n+1)]`
-/

namespace A142949.P1068627531275411519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042999 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239124 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142949.P1068627531275411519

namespace A142949

/-- `∩[A042999(n+1), A239124(n+1)]` -/
def P1068627531275411519.Spec : Prop :=
  ∀ n, (P1068627531275411519.a n : ℤ) = A142949 (n + 1)

end A142949

/-! ## A142949.P7201308441278502654

`∩[A045355(n+1), A239124(n+1)]`
-/

namespace A142949.P7201308441278502654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045355 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239124 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142949.P7201308441278502654

namespace A142949

/-- `∩[A045355(n+1), A239124(n+1)]` -/
def P7201308441278502654.Spec : Prop :=
  ∀ n, (P7201308441278502654.a n : ℤ) = A142949 (n + 1)

end A142949

/-! ## A142949.P11356652074981414261

`∩[A109515(n+1), A239124(n+1)]`
-/

namespace A142949.P11356652074981414261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109515 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239124 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142949.P11356652074981414261

namespace A142949

/-- `∩[A109515(n+1), A239124(n+1)]` -/
def P11356652074981414261.Spec : Prop :=
  ∀ n, (P11356652074981414261.a n : ℤ) = A142949 (n + 1)

end A142949

/-! ## A142949.P7795126676359909999

`∩[A216738(n+1), A239124(n+1)]`
-/

namespace A142949.P7795126676359909999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216738 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239124 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142949.P7795126676359909999

namespace A142949

/-- `∩[A216738(n+1), A239124(n+1)]` -/
def P7795126676359909999.Spec : Prop :=
  ∀ n, (P7795126676359909999.a n : ℤ) = A142949 (n + 1)

end A142949

/-! ## A142949.P4957918327076428172

`∩[A059265(n+1), A239124(n+1)]`
-/

namespace A142949.P4957918327076428172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059265 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239124 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142949.P4957918327076428172

namespace A142949

/-- `∩[A059265(n+1), A239124(n+1)]` -/
def P4957918327076428172.Spec : Prop :=
  ∀ n, (P4957918327076428172.a n : ℤ) = A142949 (n + 1)

end A142949

/-! ## A142949.P10489583549158545393

`∩[A059263(n+1), A239124(n+1)]`
-/

namespace A142949.P10489583549158545393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059263 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239124 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142949.P10489583549158545393

namespace A142949

/-- `∩[A059263(n+1), A239124(n+1)]` -/
def P10489583549158545393.Spec : Prop :=
  ∀ n, (P10489583549158545393.a n : ℤ) = A142949 (n + 1)

end A142949

/-! ## A142949.P18051907280162389181

`∩[A059311(n+1), A239124(n+1)]`
-/

namespace A142949.P18051907280162389181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059311 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239124 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142949.P18051907280162389181

namespace A142949

/-- `∩[A059311(n+1), A239124(n+1)]` -/
def P18051907280162389181.Spec : Prop :=
  ∀ n, (P18051907280162389181.a n : ℤ) = A142949 (n + 1)

end A142949

/-! ## A142949.P11579711524978280890

`∩[A216742(n+1), A239124(n+1)]`
-/

namespace A142949.P11579711524978280890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216742 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239124 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142949.P11579711524978280890

namespace A142949

/-- `∩[A216742(n+1), A239124(n+1)]` -/
def P11579711524978280890.Spec : Prop :=
  ∀ n, (P11579711524978280890.a n : ℤ) = A142949 (n + 1)

end A142949

/-! ## A142949.P15337167820320224616

`∩[A049092(n+1), A239124(n+1)]`
-/

namespace A142949.P15337167820320224616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049092 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239124 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142949.P15337167820320224616

namespace A142949

/-- `∩[A049092(n+1), A239124(n+1)]` -/
def P15337167820320224616.Spec : Prop :=
  ∀ n, (P15337167820320224616.a n : ℤ) = A142949 (n + 1)

end A142949

/-! ## A142949.P18261293303625299988

`∩[A040100(n+1), A239124(n+1)]`
-/

namespace A142949.P18261293303625299988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040100 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239124 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142949.P18261293303625299988

namespace A142949

/-- `∩[A040100(n+1), A239124(n+1)]` -/
def P18261293303625299988.Spec : Prop :=
  ∀ n, (P18261293303625299988.a n : ℤ) = A142949 (n + 1)

end A142949

/-!
# A142950: Primes congruent to 55 mod 64.

The programs for A142950, the canonical program `A142950.P3420115073611070946` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142950 has offset 1).

The definition of A142950 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2463 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142950.P3420115073611070946

`p?[64*n-9]`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A142950

/-- `p?[64*n-9]` -/
def P3420115073611070946.Spec : Prop :=
  ∀ n, P3420115073611070946.a n = A142950 (n + 1)

theorem P3420115073611070946.correct : P3420115073611070946.Spec := by
  intro n
  simp only [A142950, Nat.add_sub_cancel]

end A142950

/-! ## A142950.P10721301134691057529

`or(1, p?[a(n-1)+64])` with `a(0)=55`
-/

namespace A142950.P10721301134691057529
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [55] fun n f1 =>
  f1 (n - 1) + 64

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A142950.P10721301134691057529

namespace A142950

/-- `or(1, p?[a(n-1)+64])` -/
def P10721301134691057529.Spec : Prop :=
  ∀ n, (P10721301134691057529.a n : ℤ) = A142950 (n + 1)

end A142950

/-! ## A142950.P1442348570750459876

`A000027(p?[A157330(n+1)-1])`
-/

namespace A142950.P1442348570750459876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157330 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142950.P1442348570750459876

namespace A142950

/-- `A000027(p?[A157330(n+1)-1])` -/
def P1442348570750459876.Spec : Prop :=
  ∀ n, P1442348570750459876.a n = A142950 (n + 1)

end A142950

/-! ## A142950.P10322040714429596743

`∩[A045355(n+1), A239124(n+1)+2]`
-/

namespace A142950.P10322040714429596743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045355 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239124 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142950.P10322040714429596743

namespace A142950

/-- `∩[A045355(n+1), A239124(n+1)+2]` -/
def P10322040714429596743.Spec : Prop :=
  ∀ n, (P10322040714429596743.a n : ℤ) = A142950 (n + 1)

end A142950

/-! ## A142950.P378961171512983783

`∩[A002145(n+1), A063300(n+2)-1]`
-/

namespace A142950.P378961171512983783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063300 (n + 2) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142950.P378961171512983783

namespace A142950

/-- `∩[A002145(n+1), A063300(n+2)-1]` -/
def P378961171512983783.Spec : Prop :=
  ∀ n, (P378961171512983783.a n : ℤ) = A142950 (n + 1)

end A142950

/-! ## A142950.P1840247428129069620

`∩[A003628(n+1), A063300(n+2)-1]`
-/

namespace A142950.P1840247428129069620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003628 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063300 (n + 2) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142950.P1840247428129069620

namespace A142950

/-- `∩[A003628(n+1), A063300(n+2)-1]` -/
def P1840247428129069620.Spec : Prop :=
  ∀ n, (P1840247428129069620.a n : ℤ) = A142950 (n + 1)

end A142950

/-! ## A142950.P12920153296501823979

`∩[A045355(n+1), A063300(n+2)-1]`
-/

namespace A142950.P12920153296501823979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045355 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063300 (n + 2) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142950.P12920153296501823979

namespace A142950

/-- `∩[A045355(n+1), A063300(n+2)-1]` -/
def P12920153296501823979.Spec : Prop :=
  ∀ n, (P12920153296501823979.a n : ℤ) = A142950 (n + 1)

end A142950

/-! ## A142950.P5547460793308652695

`∩[A214588(n+1), A063300(n+2)-1]`
-/

namespace A142950.P5547460793308652695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214588 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063300 (n + 2) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142950.P5547460793308652695

namespace A142950

/-- `∩[A214588(n+1), A063300(n+2)-1]` -/
def P5547460793308652695.Spec : Prop :=
  ∀ n, (P5547460793308652695.a n : ℤ) = A142950 (n + 1)

end A142950

/-! ## A142950.P8207218075458246046

`∩[A216738(n+1), A239124(n+1)+2]`
-/

namespace A142950.P8207218075458246046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216738 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239124 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142950.P8207218075458246046

namespace A142950

/-- `∩[A216738(n+1), A239124(n+1)+2]` -/
def P8207218075458246046.Spec : Prop :=
  ∀ n, (P8207218075458246046.a n : ℤ) = A142950 (n + 1)

end A142950

/-! ## A142950.P11791281359498601028

`∩[A216690(n+1), A239124(n+1)+2]`
-/

namespace A142950.P11791281359498601028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216690 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239124 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142950.P11791281359498601028

namespace A142950

/-- `∩[A216690(n+1), A239124(n+1)+2]` -/
def P11791281359498601028.Spec : Prop :=
  ∀ n, (P11791281359498601028.a n : ℤ) = A142950 (n + 1)

end A142950

/-! ## A142950.P17198154678733766514

`∩[A095283(n+1), A239124(n+1)+2]`
-/

namespace A142950.P17198154678733766514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095283 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239124 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142950.P17198154678733766514

namespace A142950

/-- `∩[A095283(n+1), A239124(n+1)+2]` -/
def P17198154678733766514.Spec : Prop :=
  ∀ n, (P17198154678733766514.a n : ℤ) = A142950 (n + 1)

end A142950

/-! ## A142950.P11847685423199760269

`∩[A216734(n+1), A239124(n+1)+2]`
-/

namespace A142950.P11847685423199760269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216734 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239124 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142950.P11847685423199760269

namespace A142950

/-- `∩[A216734(n+1), A239124(n+1)+2]` -/
def P11847685423199760269.Spec : Prop :=
  ∀ n, (P11847685423199760269.a n : ℤ) = A142950 (n + 1)

end A142950

/-! ## A142950.P9720489595492218977

`∩[A095283(n+1), A063300(n+2)-1]`
-/

namespace A142950.P9720489595492218977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095283 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063300 (n + 2) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142950.P9720489595492218977

namespace A142950

/-- `∩[A095283(n+1), A063300(n+2)-1]` -/
def P9720489595492218977.Spec : Prop :=
  ∀ n, (P9720489595492218977.a n : ℤ) = A142950 (n + 1)

end A142950

/-! ## A142950.P17791703273197424745

`∩[A045395(n+1), A239124(n+1)+2]`
-/

namespace A142950.P17791703273197424745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045395 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239124 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142950.P17791703273197424745

namespace A142950

/-- `∩[A045395(n+1), A239124(n+1)+2]` -/
def P17791703273197424745.Spec : Prop :=
  ∀ n, (P17791703273197424745.a n : ℤ) = A142950 (n + 1)

end A142950

/-! ## A142950.P15838746552691886500

`∩[A216737(n+1), A239124(n+1)+2]`
-/

namespace A142950.P15838746552691886500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216737 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239124 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142950.P15838746552691886500

namespace A142950

/-- `∩[A216737(n+1), A239124(n+1)+2]` -/
def P15838746552691886500.Spec : Prop :=
  ∀ n, (P15838746552691886500.a n : ℤ) = A142950 (n + 1)

end A142950

/-! ## A142950.P14996494072429506696

`∩[A045323(n+1), A063300(n+2)-1]`
-/

namespace A142950.P14996494072429506696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045323 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063300 (n + 2) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142950.P14996494072429506696

namespace A142950

/-- `∩[A045323(n+1), A063300(n+2)-1]` -/
def P14996494072429506696.Spec : Prop :=
  ∀ n, (P14996494072429506696.a n : ℤ) = A142950 (n + 1)

end A142950

/-! ## A142950.P18168249337946404940

`A000265(p?[A157330(n+1)-1])`
-/

namespace A142950.P18168249337946404940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157330 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142950.P18168249337946404940

namespace A142950

/-- `A000265(p?[A157330(n+1)-1])` -/
def P18168249337946404940.Spec : Prop :=
  ∀ n, P18168249337946404940.a n = A142950 (n + 1)

end A142950

/-!
# A142951: Primes congruent to 57 mod 64.

The programs for A142951, the canonical program `A142951.P4112686697446518170` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142951 has offset 1).

The definition of A142951 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2450 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142951.P4112686697446518170

`p?[64*n-7]`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A142951

/-- `p?[64*n-7]` -/
def P4112686697446518170.Spec : Prop :=
  ∀ n, P4112686697446518170.a n = A142951 (n + 1)

theorem P4112686697446518170.correct : P4112686697446518170.Spec := by
  intro n
  simp only [A142951, Nat.add_sub_cancel]

end A142951

/-! ## A142951.P13888332018665251714

`record[p?[lcm(32, n)+25]]`
-/

namespace A142951.P13888332018665251714
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 32 n + 25

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142951.P13888332018665251714

namespace A142951

/-- `record[p?[lcm(32, n)+25]]` -/
def P13888332018665251714.Spec : Prop :=
  ∀ n, (P13888332018665251714.a n : ℤ) = A142951 (n + 1)

end A142951

/-! ## A142951.P12076996780531983582

`p?[A157330(n+1)+1]%A226800(n)`
-/

namespace A142951.P12076996780531983582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157330 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A226800 n)

end

end A142951.P12076996780531983582

namespace A142951

/-- `p?[A157330(n+1)+1]%A226800(n)` -/
def P12076996780531983582.Spec : Prop :=
  ∀ n, P12076996780531983582.a n = A142951 (n + 1)

end A142951

/-! ## A142951.P15553792470954676007

`A000035(2*n)+p?[A157330(n+1)+1]`
-/

namespace A142951.P15553792470954676007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157330 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (2 * n) + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142951.P15553792470954676007

namespace A142951

/-- `A000035(2*n)+p?[A157330(n+1)+1]` -/
def P15553792470954676007.Spec : Prop :=
  ∀ n, P15553792470954676007.a n = A142951 (n + 1)

end A142951

/-! ## A142951.P8451458653791439263

`A000027(p?[A157330(n+1)+1])`
-/

namespace A142951.P8451458653791439263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157330 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142951.P8451458653791439263

namespace A142951

/-- `A000027(p?[A157330(n+1)+1])` -/
def P8451458653791439263.Spec : Prop :=
  ∀ n, P8451458653791439263.a n = A142951 (n + 1)

end A142951

/-! ## A142951.P9041440385386265412

`∩[A002144(n+1), A063300(n+2)+1]`
-/

namespace A142951.P9041440385386265412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063300 (n + 2) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142951.P9041440385386265412

namespace A142951

/-- `∩[A002144(n+1), A063300(n+2)+1]` -/
def P9041440385386265412.Spec : Prop :=
  ∀ n, (P9041440385386265412.a n : ℤ) = A142951 (n + 1)

end A142951

/-! ## A142951.P9220769448232698672

`∩[A002313(n+1), A063300(n+2)+1]`
-/

namespace A142951.P9220769448232698672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002313 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063300 (n + 2) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142951.P9220769448232698672

namespace A142951

/-- `∩[A002313(n+1), A063300(n+2)+1]` -/
def P9220769448232698672.Spec : Prop :=
  ∀ n, (P9220769448232698672.a n : ℤ) = A142951 (n + 1)

end A142951

/-! ## A142951.P14265828809108917395

`∩[A280084(n+1), A063300(n+2)+1]`
-/

namespace A142951.P14265828809108917395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280084 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063300 (n + 2) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142951.P14265828809108917395

namespace A142951

/-- `∩[A280084(n+1), A063300(n+2)+1]` -/
def P14265828809108917395.Spec : Prop :=
  ∀ n, (P14265828809108917395.a n : ℤ) = A142951 (n + 1)

end A142951

/-! ## A142951.P4153420178715199392

`∩[A095283(n+1), A063300(n+2)+1]`
-/

namespace A142951.P4153420178715199392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095283 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063300 (n + 2) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142951.P4153420178715199392

namespace A142951

/-- `∩[A095283(n+1), A063300(n+2)+1]` -/
def P4153420178715199392.Spec : Prop :=
  ∀ n, (P4153420178715199392.a n : ℤ) = A142951 (n + 1)

end A142951

/-! ## A142951.P9346886167248956259

`∩[A045323(n+1), A063300(n+2)+1]`
-/

namespace A142951.P9346886167248956259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045323 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063300 (n + 2) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142951.P9346886167248956259

namespace A142951

/-- `∩[A045323(n+1), A063300(n+2)+1]` -/
def P9346886167248956259.Spec : Prop :=
  ∀ n, (P9346886167248956259.a n : ℤ) = A142951 (n + 1)

end A142951

/-! ## A142951.P5462816249798845872

`A000265(p?[A157330(n+1)+1])`
-/

namespace A142951.P5462816249798845872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157330 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142951.P5462816249798845872

namespace A142951

/-- `A000265(p?[A157330(n+1)+1])` -/
def P5462816249798845872.Spec : Prop :=
  ∀ n, P5462816249798845872.a n = A142951 (n + 1)

end A142951

/-! ## A142951.P11174906580293394321

`A007947(p?[A157330(n+1)+1])`
-/

namespace A142951.P11174906580293394321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157330 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142951.P11174906580293394321

namespace A142951

/-- `A007947(p?[A157330(n+1)+1])` -/
def P11174906580293394321.Spec : Prop :=
  ∀ n, P11174906580293394321.a n = A142951 (n + 1)

end A142951

/-! ## A142951.P12356970951928069179

`∩[A007519(n+1), A133898(n)]`
-/

namespace A142951.P12356970951928069179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007519 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133898 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142951.P12356970951928069179

namespace A142951

/-- `∩[A007519(n+1), A133898(n)]` -/
def P12356970951928069179.Spec : Prop :=
  ∀ n, (P12356970951928069179.a n : ℤ) = A142951 (n + 1)

end A142951

/-! ## A142951.P10246643698544937327

`∩[A045390(n+1), A133898(n)]`
-/

namespace A142951.P10246643698544937327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045390 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133898 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142951.P10246643698544937327

namespace A142951

/-- `∩[A045390(n+1), A133898(n)]` -/
def P10246643698544937327.Spec : Prop :=
  ∀ n, (P10246643698544937327.a n : ℤ) = A142951 (n + 1)

end A142951

/-! ## A142951.P10406322598579108376

`∩[A105126(n+1), A133898(n)]`
-/

namespace A142951.P10406322598579108376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105126 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133898 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142951.P10406322598579108376

namespace A142951

/-- `∩[A105126(n+1), A133898(n)]` -/
def P10406322598579108376.Spec : Prop :=
  ∀ n, (P10406322598579108376.a n : ℤ) = A142951 (n + 1)

end A142951

/-! ## A142951.P14988779717239780333

`∩[A142045(n+1), A133898(n)]`
-/

namespace A142951.P14988779717239780333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142045 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133898 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142951.P14988779717239780333

namespace A142951

/-- `∩[A142045(n+1), A133898(n)]` -/
def P14988779717239780333.Spec : Prop :=
  ∀ n, (P14988779717239780333.a n : ℤ) = A142951 (n + 1)

end A142951

/-! ## A142951.P7885220576037614270

`∩[A209544(n+1), A133898(n)]`
-/

namespace A142951.P7885220576037614270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209544 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133898 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142951.P7885220576037614270

namespace A142951

/-- `∩[A209544(n+1), A133898(n)]` -/
def P7885220576037614270.Spec : Prop :=
  ∀ n, (P7885220576037614270.a n : ℤ) = A142951 (n + 1)

end A142951

/-! ## A142951.P7299229423216052121

`A006530(2*p?[A157330(n+1)+1])`
-/

namespace A142951.P7299229423216052121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157330 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (2 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142951.P7299229423216052121

namespace A142951

/-- `A006530(2*p?[A157330(n+1)+1])` -/
def P7299229423216052121.Spec : Prop :=
  ∀ n, P7299229423216052121.a n = A142951 (n + 1)

end A142951

/-!
# A142952: Primes congruent to 59 mod 64.

The programs for A142952, the canonical program `A142952.P18232660293362250301` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142952 has offset 1).

The definition of A142952 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2430 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142952.P18232660293362250301

`p?[64*n-5]`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A142952

/-- `p?[64*n-5]` -/
def P18232660293362250301.Spec : Prop :=
  ∀ n, P18232660293362250301.a n = A142952 (n + 1)

theorem P18232660293362250301.correct : P18232660293362250301.Spec := by
  intro n
  simp only [A142952, Nat.add_sub_cancel]

end A142952

/-! ## A142952.P12889753986032945914

`or(1, p?[xor(3, 64*n+56)])`
-/

namespace A142952.P12889753986032945914
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 (64 * n + 56)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A142952.P12889753986032945914

namespace A142952

/-- `or(1, p?[xor(3, 64*n+56)])` -/
def P12889753986032945914.Spec : Prop :=
  ∀ n, (P12889753986032945914.a n : ℤ) = A142952 (n + 1)

end A142952

/-! ## A142952.P16959203236189069223

`record[A006530(64*(n+1)-5)]`
-/

namespace A142952.P16959203236189069223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (64 * (n + 1) - 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142952.P16959203236189069223

namespace A142952

/-- `record[A006530(64*(n+1)-5)]` -/
def P16959203236189069223.Spec : Prop :=
  ∀ n, P16959203236189069223.a n = A142952 (n + 1)

end A142952

/-! ## A142952.P10881018001977905306

`record[A020639(64*(n+1)-5)]`
-/

namespace A142952.P10881018001977905306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (64 * (n + 1) - 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142952.P10881018001977905306

namespace A142952

/-- `record[A020639(64*(n+1)-5)]` -/
def P10881018001977905306.Spec : Prop :=
  ∀ n, P10881018001977905306.a n = A142952 (n + 1)

end A142952

/-! ## A142952.P12790405717454570599

`A001414(p?[A152691(n)-5])`
-/

namespace A142952.P12790405717454570599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152691 n - 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142952.P12790405717454570599

namespace A142952

/-- `A001414(p?[A152691(n)-5])` -/
def P12790405717454570599.Spec : Prop :=
  ∀ n, P12790405717454570599.a n = A142952 (n + 1)

end A142952

/-! ## A142952.P5597551772863697869

`∩[A007520(n+1), A133898(n)]`
-/

namespace A142952.P5597551772863697869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007520 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133898 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142952.P5597551772863697869

namespace A142952

/-- `∩[A007520(n+1), A133898(n)]` -/
def P5597551772863697869.Spec : Prop :=
  ∀ n, (P5597551772863697869.a n : ℤ) = A142952 (n + 1)

end A142952

/-! ## A142952.P6934712566704046827

`∩[A045339(n+1), A133898(n)]`
-/

namespace A142952.P6934712566704046827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045339 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133898 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142952.P6934712566704046827

namespace A142952

/-- `∩[A045339(n+1), A133898(n)]` -/
def P6934712566704046827.Spec : Prop :=
  ∀ n, (P6934712566704046827.a n : ℤ) = A142952 (n + 1)

end A142952

/-! ## A142952.P8633017076976712673

`∩[A141195(n+1), A133898(n)]`
-/

namespace A142952.P8633017076976712673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141195 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133898 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142952.P8633017076976712673

namespace A142952

/-- `∩[A141195(n+1), A133898(n)]` -/
def P8633017076976712673.Spec : Prop :=
  ∀ n, (P8633017076976712673.a n : ℤ) = A142952 (n + 1)

end A142952

/-! ## A142952.P8765322450174818867

`∩[A142046(n+1), A133898(n)]`
-/

namespace A142952.P8765322450174818867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142046 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133898 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142952.P8765322450174818867

namespace A142952

/-- `∩[A142046(n+1), A133898(n)]` -/
def P8765322450174818867.Spec : Prop :=
  ∀ n, (P8765322450174818867.a n : ℤ) = A142952 (n + 1)

end A142952

/-! ## A142952.P10445709381790124947

`∩[A228227(n+1), A133898(n)]`
-/

namespace A142952.P10445709381790124947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228227 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133898 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142952.P10445709381790124947

namespace A142952

/-- `∩[A228227(n+1), A133898(n)]` -/
def P10445709381790124947.Spec : Prop :=
  ∀ n, (P10445709381790124947.a n : ℤ) = A142952 (n + 1)

end A142952

/-! ## A142952.P3860267041044126970

`or(1, p?[A004771(A004771(n))-4])`
-/

namespace A142952.P3860267041044126970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004771 (A004771 n).toNat - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A142952.P3860267041044126970

namespace A142952

/-- `or(1, p?[A004771(A004771(n))-4])` -/
def P3860267041044126970.Spec : Prop :=
  ∀ n, P3860267041044126970.a n = A142952 (n + 1)

end A142952

/-! ## A142952.P9203915193340930479

`∩[A142046(n+1), A158938(n)-2]`
-/

namespace A142952.P9203915193340930479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142046 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158938 n - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142952.P9203915193340930479

namespace A142952

/-- `∩[A142046(n+1), A158938(n)-2]` -/
def P9203915193340930479.Spec : Prop :=
  ∀ n, (P9203915193340930479.a n : ℤ) = A142952 (n + 1)

end A142952

/-! ## A142952.P7387472924151825231

`∩[A103621(n+1)-2, A142046(n+1)]`
-/

namespace A142952.P7387472924151825231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103621 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142046 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142952.P7387472924151825231

namespace A142952

/-- `∩[A103621(n+1)-2, A142046(n+1)]` -/
def P7387472924151825231.Spec : Prop :=
  ∀ n, (P7387472924151825231.a n : ℤ) = A142952 (n + 1)

end A142952

/-! ## A142952.P964245755389290281

`p?[A004771(A004771(n))-4]%A016841(n)`
-/

namespace A142952.P964245755389290281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004771 (A004771 n).toNat - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A016841 n)

end

end A142952.P964245755389290281

namespace A142952

/-- `p?[A004771(A004771(n))-4]%A016841(n)` -/
def P964245755389290281.Spec : Prop :=
  ∀ n, P964245755389290281.a n = A142952 (n + 1)

end A142952

/-!
# A142953: Primes congruent to 61 mod 64.

The programs for A142953, the canonical program `A142953.P593526132870738264` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142953 has offset 1).

The definition of A142953 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2457 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142953.P593526132870738264

`p?[64*n-3]`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A142953

/-- `p?[64*n-3]` -/
def P593526132870738264.Spec : Prop :=
  ∀ n, P593526132870738264.a n = A142953 (n + 1)

theorem P593526132870738264.correct : P593526132870738264.Spec := by
  intro n
  simp only [A142953, Nat.add_sub_cancel]

end A142953

/-! ## A142953.P13392862413775552035

`or(1, p?[a(n-1)+64])` with `a(0)=61`
-/

namespace A142953.P13392862413775552035
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [61] fun n f1 =>
  f1 (n - 1) + 64

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A142953.P13392862413775552035

namespace A142953

/-- `or(1, p?[a(n-1)+64])` -/
def P13392862413775552035.Spec : Prop :=
  ∀ n, (P13392862413775552035.a n : ℤ) = A142953 (n + 1)

end A142953

/-! ## A142953.P15960162768987456261

`∩[A239128(2*(n+1))-2, A003628(n+2)]`
-/

namespace A142953.P15960162768987456261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239128 (2 * (n + 1)) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003628 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142953.P15960162768987456261

namespace A142953

/-- `∩[A239128(2*(n+1))-2, A003628(n+2)]` -/
def P15960162768987456261.Spec : Prop :=
  ∀ n, (P15960162768987456261.a n : ℤ) = A142953 (n + 1)

end A142953

/-! ## A142953.P2271512514499938438

`∩[A239128(2*(n+1))-2, A045355(n+2)]`
-/

namespace A142953.P2271512514499938438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239128 (2 * (n + 1)) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045355 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142953.P2271512514499938438

namespace A142953

/-- `∩[A239128(2*(n+1))-2, A045355(n+2)]` -/
def P2271512514499938438.Spec : Prop :=
  ∀ n, (P2271512514499938438.a n : ℤ) = A142953 (n + 1)

end A142953

/-! ## A142953.P3365694212289526628

`∩[A239128(2*(n+1))-2, A228228(n+2)]`
-/

namespace A142953.P3365694212289526628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239128 (2 * (n + 1)) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228228 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142953.P3365694212289526628

namespace A142953

/-- `∩[A239128(2*(n+1))-2, A228228(n+2)]` -/
def P3365694212289526628.Spec : Prop :=
  ∀ n, (P3365694212289526628.a n : ℤ) = A142953 (n + 1)

end A142953

/-! ## A142953.P15228722797266527265

`record[A006530(64*(n+1)-3)]`
-/

namespace A142953.P15228722797266527265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (64 * (n + 1) - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142953.P15228722797266527265

namespace A142953

/-- `record[A006530(64*(n+1)-3)]` -/
def P15228722797266527265.Spec : Prop :=
  ∀ n, P15228722797266527265.a n = A142953 (n + 1)

end A142953

/-! ## A142953.P13596738814766604166

`record[A020639(64*(n+1)-3)]`
-/

namespace A142953.P13596738814766604166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (64 * (n + 1) - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142953.P13596738814766604166

namespace A142953

/-- `record[A020639(64*(n+1)-3)]` -/
def P13596738814766604166.Spec : Prop :=
  ∀ n, P13596738814766604166.a n = A142953 (n + 1)

end A142953

/-! ## A142953.P1899591287243580940

`∩[A007521(n+1), A133898(n)]`
-/

namespace A142953.P1899591287243580940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007521 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133898 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142953.P1899591287243580940

namespace A142953

/-- `∩[A007521(n+1), A133898(n)]` -/
def P1899591287243580940.Spec : Prop :=
  ∀ n, (P1899591287243580940.a n : ℤ) = A142953 (n + 1)

end A142953

/-! ## A142953.P8118791481557028710

`∩[A045366(n+1), A133898(n)]`
-/

namespace A142953.P8118791481557028710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045366 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133898 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142953.P8118791481557028710

namespace A142953

/-- `∩[A045366(n+1), A133898(n)]` -/
def P8118791481557028710.Spec : Prop :=
  ∀ n, (P8118791481557028710.a n : ℤ) = A142953 (n + 1)

end A142953

/-! ## A142953.P10852564766709300384

`∩[A141196(n+1), A133898(n)]`
-/

namespace A142953.P10852564766709300384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141196 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133898 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142953.P10852564766709300384

namespace A142953

/-- `∩[A141196(n+1), A133898(n)]` -/
def P10852564766709300384.Spec : Prop :=
  ∀ n, (P10852564766709300384.a n : ℤ) = A142953 (n + 1)

end A142953

/-! ## A142953.P14340302003480178386

`∩[A142047(n+1), A133898(n)]`
-/

namespace A142953.P14340302003480178386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142047 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133898 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142953.P14340302003480178386

namespace A142953

/-- `∩[A142047(n+1), A133898(n)]` -/
def P14340302003480178386.Spec : Prop :=
  ∀ n, (P14340302003480178386.a n : ℤ) = A142953 (n + 1)

end A142953

/-! ## A142953.P4830521697125762746

`∩[A103621(n+1), A142047(n+1)]`
-/

namespace A142953.P4830521697125762746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103621 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142047 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142953.P4830521697125762746

namespace A142953

/-- `∩[A103621(n+1), A142047(n+1)]` -/
def P4830521697125762746.Spec : Prop :=
  ∀ n, (P4830521697125762746.a n : ℤ) = A142953 (n + 1)

end A142953

/-! ## A142953.P10420864472353500328

`∩[A142047(n+1), A158938(n)]`
-/

namespace A142953.P10420864472353500328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142047 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158938 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142953.P10420864472353500328

namespace A142953

/-- `∩[A142047(n+1), A158938(n)]` -/
def P10420864472353500328.Spec : Prop :=
  ∀ n, (P10420864472353500328.a n : ℤ) = A142953 (n + 1)

end A142953

/-! ## A142953.P5658838036563488964

`∩[A133898(n), A160215(n+1)]`
-/

namespace A142953.P5658838036563488964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133898 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160215 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142953.P5658838036563488964

namespace A142953

/-- `∩[A133898(n), A160215(n+1)]` -/
def P5658838036563488964.Spec : Prop :=
  ∀ n, (P5658838036563488964.a n : ℤ) = A142953 (n + 1)

end A142953

/-! ## A142953.P14672352352127564405

`record[A051541(A125169(n))]`
-/

namespace A142953.P14672352352127564405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051541 (A125169 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142953.P14672352352127564405

namespace A142953

/-- `record[A051541(A125169(n))]` -/
def P14672352352127564405.Spec : Prop :=
  ∀ n, P14672352352127564405.a n = A142953 (n + 1)

end A142953

/-!
# A142954: a(n) = 2*n + 3 + 3*(-1)^n.

The programs for A142954, the canonical program `A142954.P14047007990667398489` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142954 has offset 1).

The definition of A142954 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*(n+1)+3+3*(-1)^(n+1)` (program `A142954.P14047007990667398489`, by `A142954.P14047007990667398489.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A142954.P14047007990667398489

`2*(n+1)+3+3*(-1)^(n+1)`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A142954

/-- `2*(n+1)+3+3*(-1)^(n+1)` -/
def P14047007990667398489.Spec : Prop :=
  ∀ n, P14047007990667398489.a n = A142954 (n + 1)

theorem P14047007990667398489.correct : P14047007990667398489.Spec := by
  intro n
  simp only [A142954, Nat.add_sub_cancel]

end A142954

/-! ## A142954.P4537905727527677858

`2*A097062(n+3)`
-/

namespace A142954.P4537905727527677858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A097062 (n + 3)

end

end A142954.P4537905727527677858

namespace A142954

/-- `2*A097062(n+3)` -/
def P4537905727527677858.Spec : Prop :=
  ∀ n, P4537905727527677858.a n = A142954 (n + 1)

end A142954

/-! ## A142954.P9109085710239492386

`∑[4-a(n-1)]` with `a(0)=2, a(1)=8`
-/

namespace A142954.P9109085710239492386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 8] fun n f1 =>
  4 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A142954.P9109085710239492386

namespace A142954

/-- `∑[4-a(n-1)]` -/
def P9109085710239492386.Spec : Prop :=
  ∀ n, P9109085710239492386.a n = A142954 (n + 1)

end A142954

/-! ## A142954.P12560130334173241880

`2*(4^(n%2)+n)`
-/

namespace A142954.P12560130334173241880
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (4 ^ (n % 2) + n)

end

end A142954.P12560130334173241880

namespace A142954

/-- `2*(4^(n%2)+n)` -/
def P12560130334173241880.Spec : Prop :=
  ∀ n, (P12560130334173241880.a n : ℤ) = A142954 (n + 1)

end A142954

/-! ## A142954.P1153083638261252197

`or(2, Δ[xor(1, n²)]+3)`
-/

namespace A142954.P1153083638261252197
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + 3)

end

end A142954.P1153083638261252197

namespace A142954

/-- `or(2, Δ[xor(1, n²)]+3)` -/
def P1153083638261252197.Spec : Prop :=
  ∀ n, P1153083638261252197.a n = A142954 (n + 1)

end A142954

/-! ## A142954.P11986573784689279788

`∑[∑[ogf((2+8x-6x^2)/(1+x))]]`
-/

namespace A142954.P11986573784689279788
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 8, -6] [1, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A142954.P11986573784689279788

namespace A142954

/-- `∑[∑[ogf((2+8x-6x^2)/(1+x))]]` -/
def P11986573784689279788.Spec : Prop :=
  ∀ n, P11986573784689279788.a n = A142954 (n + 1)

end A142954

/-! ## A142954.P7056028333295238341

`ogf((2+8x-6x^2)/(1-x-x^2+x^3))`
-/

namespace A142954.P7056028333295238341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 8, -6] [1, -1, -1, 1] n

end

end A142954.P7056028333295238341

namespace A142954

/-- `ogf((2+8x-6x^2)/(1-x-x^2+x^3))` -/
def P7056028333295238341.Spec : Prop :=
  ∀ n, P7056028333295238341.a n = A142954 (n + 1)

end A142954

/-! ## A142954.P15118600952209694243

`or(2, 4-2*xor(1, -n))`
-/

namespace A142954.P15118600952209694243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (4 - 2 * Int.xor 1 (-(n : ℤ)))

end

end A142954.P15118600952209694243

namespace A142954

/-- `or(2, 4-2*xor(1, -n))` -/
def P15118600952209694243.Spec : Prop :=
  ∀ n, P15118600952209694243.a n = A142954 (n + 1)

end A142954

/-! ## A142954.P17487421058561395831

`2*(gcd(2, n+1)²+n)`
-/

namespace A142954.P17487421058561395831
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (Nat.gcd 2 (n + 1) ^ 2 + n)

end

end A142954.P17487421058561395831

namespace A142954

/-- `2*(gcd(2, n+1)²+n)` -/
def P17487421058561395831.Spec : Prop :=
  ∀ n, (P17487421058561395831.a n : ℤ) = A142954 (n + 1)

end A142954

/-! ## A142954.P1172166909118352146

`2*((and(1, n)+1)²+n)`
-/

namespace A142954.P1172166909118352146
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * ((Nat.land 1 n + 1) ^ 2 + n)

end

end A142954.P1172166909118352146

namespace A142954

/-- `2*((and(1, n)+1)²+n)` -/
def P1172166909118352146.Spec : Prop :=
  ∀ n, (P1172166909118352146.a n : ℤ) = A142954 (n + 1)

end A142954

/-! ## A142954.P8779418903065380600

`lcm(2, gcd(4, (n+1)²)+n)`
-/

namespace A142954.P8779418903065380600
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 (Nat.gcd 4 ((n + 1) ^ 2) + n)

end

end A142954.P8779418903065380600

namespace A142954

/-- `lcm(2, gcd(4, (n+1)²)+n)` -/
def P8779418903065380600.Spec : Prop :=
  ∀ n, (P8779418903065380600.a n : ℤ) = A142954 (n + 1)

end A142954

/-! ## A142954.P10194368479306393657

`Δ[A214345(n)]`
-/

namespace A142954.P10194368479306393657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214345 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A142954.P10194368479306393657

namespace A142954

/-- `Δ[A214345(n)]` -/
def P10194368479306393657.Spec : Prop :=
  ∀ n, P10194368479306393657.a n = A142954 (n + 1)

end A142954

/-! ## A142954.P7204368817356629156

`or(2, A124356(n+1))`
-/

namespace A142954.P7204368817356629156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (A124356 (n + 1))

end

end A142954.P7204368817356629156

namespace A142954

/-- `or(2, A124356(n+1))` -/
def P7204368817356629156.Spec : Prop :=
  ∀ n, P7204368817356629156.a n = A142954 (n + 1)

end A142954

/-! ## A142954.P14772052035027651324

`2*(A010685(n)+n)`
-/

namespace A142954.P14772052035027651324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A010685 n + (n : ℤ))

end

end A142954.P14772052035027651324

namespace A142954

/-- `2*(A010685(n)+n)` -/
def P14772052035027651324.Spec : Prop :=
  ∀ n, P14772052035027651324.a n = A142954 (n + 1)

end A142954

/-! ## A142954.P2243266164232899545

`2*(A010674(n)+n+1)`
-/

namespace A142954.P2243266164232899545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A010674 n + (n + 1 : ℤ))

end

end A142954.P2243266164232899545

namespace A142954

/-- `2*(A010674(n)+n+1)` -/
def P2243266164232899545.Spec : Prop :=
  ∀ n, P2243266164232899545.a n = A142954 (n + 1)

end A142954

/-! ## A142954.P401221632315229022

`2*(A040005(n+1)+n)`
-/

namespace A142954.P401221632315229022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A040005 (n + 1) + (n : ℤ))

end

end A142954.P401221632315229022

namespace A142954

/-- `2*(A040005(n+1)+n)` -/
def P401221632315229022.Spec : Prop :=
  ∀ n, P401221632315229022.a n = A142954 (n + 1)

end A142954

/-! ## A142954.P6203585405639589377

`2*(A168205(n+1)-(n+1))`
-/

namespace A142954.P6203585405639589377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A168205 (n + 1) - (n + 1 : ℤ))

end

end A142954.P6203585405639589377

namespace A142954

/-- `2*(A168205(n+1)-(n+1))` -/
def P6203585405639589377.Spec : Prop :=
  ∀ n, P6203585405639589377.a n = A142954 (n + 1)

end A142954

/-! ## A142954.P18113867335709803414

`A016825(A030451(n))`
-/

namespace A142954.P18113867335709803414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016825 (A030451 n).toNat

end

end A142954.P18113867335709803414

namespace A142954

/-- `A016825(A030451(n))` -/
def P18113867335709803414.Spec : Prop :=
  ∀ n, P18113867335709803414.a n = A142954 (n + 1)

end A142954

/-! ## A142954.P17469320301640003524

`A130824(A052938(n))`
-/

namespace A142954.P17469320301640003524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130824 (A052938 n).toNat

end

end A142954.P17469320301640003524

namespace A142954

/-- `A130824(A052938(n))` -/
def P17469320301640003524.Spec : Prop :=
  ∀ n, P17469320301640003524.a n = A142954 (n + 1)

end A142954

/-! ## A142954.P15311551052917444518

`A111284(A060762(n+1))`
-/

namespace A142954.P15311551052917444518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111284 (A060762 (n + 1)).toNat

end

end A142954.P15311551052917444518

namespace A142954

/-- `A111284(A060762(n+1))` -/
def P15311551052917444518.Spec : Prop :=
  ∀ n, P15311551052917444518.a n = A142954 (n + 1)

end A142954

/-!
# A142955: Primes of the form 3*x^2 + 4*x*y - 5*y^2 (as well as of the form 3*x^2 + 10*x*y + 2*y^2).

The programs for A142955, there is no canonical definition to state claims against.
-/

/-! ## A142955.P16269788150079708252

`∩[A040145(n+1), A045326(n+1)]`
-/

namespace A142955.P16269788150079708252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045326 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142955.P16269788150079708252

/-! ## A142955.P10972777195442006673

`∩[A040145(n+1), A332555(n+1)]`
-/

namespace A142955.P10972777195442006673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332555 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142955.P10972777195442006673

/-! ## A142955.P5477246015516779600

`∩[A040145(n+1), A097987(n+1)]`
-/

namespace A142955.P5477246015516779600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097987 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142955.P5477246015516779600

/-! ## A142955.P8318709708825727842

`∩[A040145(n+1), A120127(n+1)]`
-/

namespace A142955.P8318709708825727842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120127 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142955.P8318709708825727842

/-! ## A142955.P16368976209824054489

`filter[A040145(n+1), A347871(#)]`
-/

namespace A142955.P16368976209824054489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040145 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A347871 (f1 j).toNat = 1) n)

end

end A142955.P16368976209824054489

/-! ## A142955.P17049918829961742903

`∩[A004144(n+1), A040145(n+1)]`
-/

namespace A142955.P17049918829961742903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040145 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142955.P17049918829961742903

/-! ## A142955.P17667672119771204025

`∩[A040145(n+1), A394579(n+1)]`
-/

namespace A142955.P17667672119771204025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394579 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142955.P17667672119771204025

/-! ## A142955.P11312407433545369645

`∩[A040145(n+1), A081754(n+1)]`
-/

namespace A142955.P11312407433545369645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081754 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142955.P11312407433545369645

/-! ## A142955.P13532415264229966689

`∩[A040145(n+1), A268377(n+1)]`
-/

namespace A142955.P13532415264229966689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268377 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142955.P13532415264229966689

/-! ## A142955.P929309286229712898

`∩[A040145(n+1), A047531(n+1)]`
-/

namespace A142955.P929309286229712898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047531 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142955.P929309286229712898

/-! ## A142955.P14244560242224499859

`∩[A040145(n+1), A053438(n)]`
-/

namespace A142955.P14244560242224499859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053438 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142955.P14244560242224499859

/-! ## A142955.P151135660273753565

`∩[A040145(n+1), A042964(n+1)]`
-/

namespace A142955.P151135660273753565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042964 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142955.P151135660273753565

/-! ## A142955.P10284905844436829831

`∩[A040145(n+1), A047532(n+1)]`
-/

namespace A142955.P10284905844436829831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047532 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142955.P10284905844436829831

/-! ## A142955.P312341592685490415

`∩[A040145(n+1), A047546(n+1)]`
-/

namespace A142955.P312341592685490415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047546 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142955.P312341592685490415

/-! ## A142955.P11276553541019112428

`∩[A040145(n+1), A338691(n+1)]`
-/

namespace A142955.P11276553541019112428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338691 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142955.P11276553541019112428

/-! ## A142955.P208753098663062304

`∩[A040145(n+1), A209921(n+1)]`
-/

namespace A142955.P208753098663062304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209921 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142955.P208753098663062304

/-! ## A142955.P16203359483130469485

`∩[A040145(n+1), A347873(n+1)]`
-/

namespace A142955.P16203359483130469485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347873 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142955.P16203359483130469485

/-! ## A142955.P4691008411574959828

`∩[A014456(n+1), A040145(n+1)]`
-/

namespace A142955.P4691008411574959828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014456 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040145 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142955.P4691008411574959828

/-! ## A142955.P3841184693208162471

`∩[A040145(n+1), A047518(n+1)]`
-/

namespace A142955.P3841184693208162471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047518 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142955.P3841184693208162471

/-! ## A142955.P5523385344405834079

`∩[A040145(n+1), A047547(n+1)]`
-/

namespace A142955.P5523385344405834079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047547 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142955.P5523385344405834079

/-!
# A142956: Primes of the form -3*x^2 + 4*x*y + 5*y^2 (as well as of the form 6*x^2 + 10*x*y + y^2).

The programs for A142956, the canonical program `A142956.P11267907444795798616` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142956 has offset 1).

The definition of A142956 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3734 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142956.P18300520029615230831

`∩[A008846(n+1), A038891(n+1)]`
-/

namespace A142956.P18300520029615230831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008846 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038891 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142956.P18300520029615230831

namespace A142956

/-- `∩[A008846(n+1), A038891(n+1)]` -/
def P18300520029615230831.Spec : Prop :=
  ∀ n, (P18300520029615230831.a n : ℤ) = A142956 (n + 1)

end A142956

/-! ## A142956.P4115124895743886074

`∩[A002144(n+1), A038891(n+1)]`
-/

namespace A142956.P4115124895743886074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038891 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142956.P4115124895743886074

namespace A142956

/-- `∩[A002144(n+1), A038891(n+1)]` -/
def P4115124895743886074.Spec : Prop :=
  ∀ n, (P4115124895743886074.a n : ℤ) = A142956 (n + 1)

end A142956

/-! ## A142956.P2602074919437285081

`∩[A002313(n+1), A038891(n+1)]`
-/

namespace A142956.P2602074919437285081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002313 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038891 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142956.P2602074919437285081

namespace A142956

/-- `∩[A002313(n+1), A038891(n+1)]` -/
def P2602074919437285081.Spec : Prop :=
  ∀ n, (P2602074919437285081.a n : ℤ) = A142956 (n + 1)

end A142956

/-! ## A142956.P13480382746603010088

`∩[A002144(n+1), A106863(n+1)]`
-/

namespace A142956.P13480382746603010088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106863 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142956.P13480382746603010088

namespace A142956

/-- `∩[A002144(n+1), A106863(n+1)]` -/
def P13480382746603010088.Spec : Prop :=
  ∀ n, (P13480382746603010088.a n : ℤ) = A142956 (n + 1)

end A142956

/-! ## A142956.P16474368373115853463

`∩[A002313(n+1), A106863(n+1)]`
-/

namespace A142956.P16474368373115853463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002313 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106863 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142956.P16474368373115853463

namespace A142956

/-- `∩[A002313(n+1), A106863(n+1)]` -/
def P16474368373115853463.Spec : Prop :=
  ∀ n, (P16474368373115853463.a n : ℤ) = A142956 (n + 1)

end A142956

/-! ## A142956.P2710468638484564630

`∩[A002144(n+1), A297175(n+1)]`
-/

namespace A142956.P2710468638484564630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297175 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142956.P2710468638484564630

namespace A142956

/-- `∩[A002144(n+1), A297175(n+1)]` -/
def P2710468638484564630.Spec : Prop :=
  ∀ n, (P2710468638484564630.a n : ℤ) = A142956 (n + 1)

end A142956

/-! ## A142956.P8240608099393453284

`∩[A038891(n+1), A055025(n+1)]`
-/

namespace A142956.P8240608099393453284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038891 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055025 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142956.P8240608099393453284

namespace A142956

/-- `∩[A038891(n+1), A055025(n+1)]` -/
def P8240608099393453284.Spec : Prop :=
  ∀ n, (P8240608099393453284.a n : ℤ) = A142956 (n + 1)

end A142956

/-! ## A142956.P2136750028799698333

`∩[A055025(n+1), A297175(n+1)]`
-/

namespace A142956.P2136750028799698333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055025 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297175 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142956.P2136750028799698333

namespace A142956

/-- `∩[A055025(n+1), A297175(n+1)]` -/
def P2136750028799698333.Spec : Prop :=
  ∀ n, (P2136750028799698333.a n : ℤ) = A142956 (n + 1)

end A142956

/-! ## A142956.P8424679193605625712

`∩[A038891(n+1), A125018(n+1)]`
-/

namespace A142956.P8424679193605625712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038891 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125018 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142956.P8424679193605625712

namespace A142956

/-- `∩[A038891(n+1), A125018(n+1)]` -/
def P8424679193605625712.Spec : Prop :=
  ∀ n, (P8424679193605625712.a n : ℤ) = A142956 (n + 1)

end A142956

/-! ## A142956.P854509726448320753

`∩[A038891(n+1), A230779(n+1)]`
-/

namespace A142956.P854509726448320753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038891 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230779 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142956.P854509726448320753

namespace A142956

/-- `∩[A038891(n+1), A230779(n+1)]` -/
def P854509726448320753.Spec : Prop :=
  ∀ n, (P854509726448320753.a n : ℤ) = A142956 (n + 1)

end A142956

/-! ## A142956.P10994506741039873645

`∩[A106863(n+1), A230779(n+1)]`
-/

namespace A142956.P10994506741039873645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106863 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230779 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142956.P10994506741039873645

namespace A142956

/-- `∩[A106863(n+1), A230779(n+1)]` -/
def P10994506741039873645.Spec : Prop :=
  ∀ n, (P10994506741039873645.a n : ℤ) = A142956 (n + 1)

end A142956

/-! ## A142956.P11267907444795798616

`∩[A191019(n+1), A230779(n+1)]`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A142956

/-- `∩[A191019(n+1), A230779(n+1)]` -/
def P11267907444795798616.Spec : Prop :=
  ∀ n, (P11267907444795798616.a n : ℤ) = A142956 (n + 1)

theorem P11267907444795798616.correct : P11267907444795798616.Spec := by
  intro n
  simp only [A142956, Nat.add_sub_cancel]

end A142956

/-! ## A142956.P12739462915387730135

`∩[A230779(n+1), A297175(n+1)]`
-/

namespace A142956.P12739462915387730135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230779 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297175 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142956.P12739462915387730135

namespace A142956

/-- `∩[A230779(n+1), A297175(n+1)]` -/
def P12739462915387730135.Spec : Prop :=
  ∀ n, (P12739462915387730135.a n : ℤ) = A142956 (n + 1)

end A142956

/-! ## A142956.P12072928328884385621

`∩[A230779(n+1), A341787(n+1)]`
-/

namespace A142956.P12072928328884385621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230779 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341787 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142956.P12072928328884385621

namespace A142956

/-- `∩[A230779(n+1), A341787(n+1)]` -/
def P12072928328884385621.Spec : Prop :=
  ∀ n, (P12072928328884385621.a n : ℤ) = A142956 (n + 1)

end A142956

/-! ## A142956.P4408485329120271653

`∩[A038891(n+1), A347877(n+1)]`
-/

namespace A142956.P4408485329120271653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038891 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347877 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142956.P4408485329120271653

namespace A142956

/-- `∩[A038891(n+1), A347877(n+1)]` -/
def P4408485329120271653.Spec : Prop :=
  ∀ n, (P4408485329120271653.a n : ℤ) = A142956 (n + 1)

end A142956

/-! ## A142956.P2091261459745150644

`∩[A106863(n+1), A347877(n+1)]`
-/

namespace A142956.P2091261459745150644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106863 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347877 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142956.P2091261459745150644

namespace A142956

/-- `∩[A106863(n+1), A347877(n+1)]` -/
def P2091261459745150644.Spec : Prop :=
  ∀ n, (P2091261459745150644.a n : ℤ) = A142956 (n + 1)

end A142956

/-! ## A142956.P9271097585626014354

`∩[A191019(n+1), A347877(n+1)]`
-/

namespace A142956.P9271097585626014354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191019 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347877 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142956.P9271097585626014354

namespace A142956

/-- `∩[A191019(n+1), A347877(n+1)]` -/
def P9271097585626014354.Spec : Prop :=
  ∀ n, (P9271097585626014354.a n : ℤ) = A142956 (n + 1)

end A142956

/-! ## A142956.P9864440087979153823

`∩[A297175(n+1), A347877(n+1)]`
-/

namespace A142956.P9864440087979153823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297175 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347877 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142956.P9864440087979153823

namespace A142956

/-- `∩[A297175(n+1), A347877(n+1)]` -/
def P9864440087979153823.Spec : Prop :=
  ∀ n, (P9864440087979153823.a n : ℤ) = A142956 (n + 1)

end A142956

/-! ## A142956.P9428077699568849070

`∩[A281292(n+1), A038891(n+1)]`
-/

namespace A142956.P9428077699568849070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281292 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038891 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142956.P9428077699568849070

namespace A142956

/-- `∩[A281292(n+1), A038891(n+1)]` -/
def P9428077699568849070.Spec : Prop :=
  ∀ n, (P9428077699568849070.a n : ℤ) = A142956 (n + 1)

end A142956

/-! ## A142956.P2469997140290069159

`∩[A003653(n+1), A038891(n+1)]`
-/

namespace A142956.P2469997140290069159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003653 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038891 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142956.P2469997140290069159

namespace A142956

/-- `∩[A003653(n+1), A038891(n+1)]` -/
def P2469997140290069159.Spec : Prop :=
  ∀ n, (P2469997140290069159.a n : ℤ) = A142956 (n + 1)

end A142956

/-!
# A142958: Roman numerals containing three letters (i.e., III, VII, XII, XIV, ...).

The programs for A142958, there is no canonical definition to state claims against.
-/

/-! ## A142958.P2829611834535743401

`A003587(n+39)`
-/

namespace A142958.P2829611834535743401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003587 (n + 39)

end

end A142958.P2829611834535743401

/-! ## A142958.P15778190062454416473

`eq[3, A006968(n+1)]+1`
-/

namespace A142958.P15778190062454416473
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006968 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A142958.P15778190062454416473

/-! ## A142958.P5405248710541613492

`eq[3, A006968(A028310(n))]`
-/

namespace A142958.P5405248710541613492
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006968 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A142958.P5405248710541613492

/-! ## A142958.P3685977106239757499

`A020725(eq[3, A006968(n+1)])`
-/

namespace A142958.P3685977106239757499
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006968 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A142958.P3685977106239757499

/-! ## A142958.P14573302379983466939

`A065475(eq[3, A006968(n+1)])`
-/

namespace A142958.P14573302379983466939
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006968 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A142958.P14573302379983466939

/-! ## A142958.P11761843678623758436

`eq[3, A006968(A065033(2*n))]`
-/

namespace A142958.P11761843678623758436
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006968 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A142958.P11761843678623758436

/-! ## A142958.P5261384831192748136

`eq[3, A006968(A000007(n)+n)]`
-/

namespace A142958.P5261384831192748136
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006968 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A142958.P5261384831192748136

/-! ## A142958.P4969615331324821285

`eq[3, A006968(xor(n, A000007(n)))]`
-/

namespace A142958.P4969615331324821285
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006968 (Int.xor (n : ℤ) (A000007 n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A142958.P4969615331324821285

/-! ## A142958.P18342415008952170329

`eq[3, A006968(A233583(n+1))]`
-/

namespace A142958.P18342415008952170329
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006968 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A142958.P18342415008952170329

/-!
# A142962: Scaled convolution of (n^3)*A000984(n) with A000984(n).

The programs for A142962, the canonical program `A142962.P8209291907298733933` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142962 has offset 1).

The definition of A142962 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A142962.P8209291907298733933

`(n+1)²*(3+5*(n+1))/2`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A142962

/-- `(n+1)²*(3+5*(n+1))/2` -/
def P8209291907298733933.Spec : Prop :=
  ∀ n, P8209291907298733933.a n = (A142962 (n + 1) : ℚ)

end A142962

/-! ## A142962.P14134083050309185385

`∑[∑[a(n-1)+15]]` with `a(0)=4, a(1)=18`
-/

namespace A142962.P14134083050309185385
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [4, 18] fun n f2 =>
  f2 (n - 1) + 15

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A142962.P14134083050309185385

namespace A142962

/-- `∑[∑[a(n-1)+15]]` -/
def P14134083050309185385.Spec : Prop :=
  ∀ n, (P14134083050309185385.a n : ℤ) = A142962 (n + 1)

end A142962

/-! ## A142962.P11146366803535841417

`∑[A129111(n)-4]`
-/

namespace A142962.P11146366803535841417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129111 n - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A142962.P11146366803535841417

namespace A142962

/-- `∑[A129111(n)-4]` -/
def P11146366803535841417.Spec : Prop :=
  ∀ n, P11146366803535841417.a n = A142962 (n + 1)

end A142962

/-! ## A142962.P11545034899678046514

`(n+1)*∑[A016897(n)]`
-/

namespace A142962.P11545034899678046514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016897 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A142962.P11545034899678046514

namespace A142962

/-- `(n+1)*∑[A016897(n)]` -/
def P11545034899678046514.Spec : Prop :=
  ∀ n, P11545034899678046514.a n = A142962 (n + 1)

end A142962

/-! ## A142962.P16584985505258863845

`∑[∑[A127547(n)]+n²]`
-/

namespace A142962.P16584985505258863845
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127547 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A142962.P16584985505258863845

namespace A142962

/-- `∑[∑[A127547(n)]+n²]` -/
def P16584985505258863845.Spec : Prop :=
  ∀ n, P16584985505258863845.a n = A142962 (n + 1)

end A142962

/-! ## A142962.P5958264093150166965

`∑[∑[3*A016861(n)]+1]`
-/

namespace A142962.P5958264093150166965
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A016861 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A142962.P5958264093150166965

namespace A142962

/-- `∑[∑[3*A016861(n)]+1]` -/
def P5958264093150166965.Spec : Prop :=
  ∀ n, P5958264093150166965.a n = A142962 (n + 1)

end A142962

/-! ## A142962.P10960740328901369015

`∑[A152741(n)+(n+2)²]`
-/

namespace A142962.P10960740328901369015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152741 n + ((n + 2) ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A142962.P10960740328901369015

namespace A142962

/-- `∑[A152741(n)+(n+2)²]` -/
def P10960740328901369015.Spec : Prop :=
  ∀ n, P10960740328901369015.a n = A142962 (n + 1)

end A142962

/-! ## A142962.P10290109678466773447

`(n+1)*(A364352(n+1)-3)`
-/

namespace A142962.P10290109678466773447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A364352 (n + 1) - 3)

end

end A142962.P10290109678466773447

namespace A142962

/-- `(n+1)*(A364352(n+1)-3)` -/
def P10290109678466773447.Spec : Prop :=
  ∀ n, P10290109678466773447.a n = A142962 (n + 1)

end A142962

/-! ## A142962.P5856965161664222130

`(n+1)/2*A126264(n+1)`
-/

namespace A142962.P5856965161664222130
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 2 * (A126264 (n + 1) : ℚ)

end

end A142962.P5856965161664222130

namespace A142962

/-- `(n+1)/2*A126264(n+1)` -/
def P5856965161664222130.Spec : Prop :=
  ∀ n, P5856965161664222130.a n = (A142962 (n + 1) : ℚ)

end A142962

/-! ## A142962.P1664617878862728253

`A085789(n+1)+(n+1)^3`
-/

namespace A142962.P1664617878862728253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085789 (n + 1) + ((n + 1) ^ 3 : ℤ)

end

end A142962.P1664617878862728253

namespace A142962

/-- `A085789(n+1)+(n+1)^3` -/
def P1664617878862728253.Spec : Prop :=
  ∀ n, P1664617878862728253.a n = A142962 (n + 1)

end A142962

/-! ## A142962.P7248392789556670585

`A144640(n+1)+A005920(n)`
-/

namespace A142962.P7248392789556670585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144640 (n + 1) + A005920 n

end

end A142962.P7248392789556670585

namespace A142962

/-- `A144640(n+1)+A005920(n)` -/
def P7248392789556670585.Spec : Prop :=
  ∀ n, P7248392789556670585.a n = A142962 (n + 1)

end A142962

/-! ## A142962.P12377624690645403319

`A126335(n+1)+A064808(n)`
-/

namespace A142962.P12377624690645403319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126335 (n + 1) + A064808 n

end

end A142962.P12377624690645403319

namespace A142962

/-- `A126335(n+1)+A064808(n)` -/
def P12377624690645403319.Spec : Prop :=
  ∀ n, P12377624690645403319.a n = A142962 (n + 1)

end A142962

/-! ## A142962.P3372347190530150885

`A268484(n)+A100182(n+1)`
-/

namespace A142962.P3372347190530150885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268484 n + A100182 (n + 1)

end

end A142962.P3372347190530150885

namespace A142962

/-- `A268484(n)+A100182(n+1)` -/
def P3372347190530150885.Spec : Prop :=
  ∀ n, P3372347190530150885.a n = A142962 (n + 1)

end A142962

/-! ## A142962.P9722302151256297231

`A024394(n+1)-A027480(n)`
-/

namespace A142962.P9722302151256297231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024394 (n + 1) - A027480 n

end

end A142962.P9722302151256297231

namespace A142962

/-- `A024394(n+1)-A027480(n)` -/
def P9722302151256297231.Spec : Prop :=
  ∀ n, P9722302151256297231.a n = A142962 (n + 1)

end A142962

/-! ## A142962.P14704638559370548900

`A228887(n+1)-A281381(n)`
-/

namespace A142962.P14704638559370548900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228887 (n + 1) - A281381 n

end

end A142962.P14704638559370548900

namespace A142962

/-- `A228887(n+1)-A281381(n)` -/
def P14704638559370548900.Spec : Prop :=
  ∀ n, P14704638559370548900.a n = A142962 (n + 1)

end A142962

/-! ## A142962.P12680492395804895766

`∑[A016789(n)²-∑[A008585(n)]]`
-/

namespace A142962.P12680492395804895766
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016789 n ^ 2 - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A142962.P12680492395804895766

namespace A142962

/-- `∑[A016789(n)²-∑[A008585(n)]]` -/
def P12680492395804895766.Spec : Prop :=
  ∀ n, P12680492395804895766.a n = A142962 (n + 1)

end A142962

/-! ## A142962.P16659043501235452525

`A143941(n+1)+A100156(n+1)`
-/

namespace A142962.P16659043501235452525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143941 (n + 1) + A100156 (n + 1)

end

end A142962.P16659043501235452525

namespace A142962

/-- `A143941(n+1)+A100156(n+1)` -/
def P16659043501235452525.Spec : Prop :=
  ∀ n, P16659043501235452525.a n = A142962 (n + 1)

end A142962

/-! ## A142962.P15751018221692877383

`A089207(n+1)-A036659(n+1)`
-/

namespace A142962.P15751018221692877383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089207 (n + 1) - A036659 (n + 1)

end

end A142962.P15751018221692877383

namespace A142962

/-- `A089207(n+1)-A036659(n+1)` -/
def P15751018221692877383.Spec : Prop :=
  ∀ n, P15751018221692877383.a n = A142962 (n + 1)

end A142962

/-! ## A142962.P1107267007536023538

`A162148(n)+2*A033994(n+1)`
-/

namespace A142962.P1107267007536023538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162148 n + 2 * A033994 (n + 1)

end

end A142962.P1107267007536023538

namespace A142962

/-- `A162148(n)+2*A033994(n+1)` -/
def P1107267007536023538.Spec : Prop :=
  ∀ n, P1107267007536023538.a n = A142962 (n + 1)

end A142962

/-! ## A142962.P7393203504261171452

`A125200(n+1)+A114364(n+1)/2`
-/

namespace A142962.P7393203504261171452
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A125200 (n + 1) : ℚ) + (A114364 (n + 1) : ℚ) / 2

end

end A142962.P7393203504261171452

namespace A142962

/-- `A125200(n+1)+A114364(n+1)/2` -/
def P7393203504261171452.Spec : Prop :=
  ∀ n, P7393203504261171452.a n = (A142962 (n + 1) : ℚ)

end A142962

/-!
# A142963: Triangle read by rows, coefficients of the polynomials P(k, x) = (1/2) Sum_{p=0..k-1} Stirling2(k, p+1)*x^p*(1-4*x)^(k-1-p)*(2*p+2)!/(p+1)!.

The programs for A142963, the canonical program `A142963.P16909533885943590084` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142963 has offset 1).

The definition of A142963 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A142963.P16909533885943590084

`(col(n)+1)*T(n-1,k)+(4*(row(n)+1)-4*col(n)-2)*T(n-1,k-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A142963

/-- `(col(n)+1)*T(n-1,k)+(4*(row(n)+1)-4*col(n)-2)*T(n-1,k-1)` -/
def P16909533885943590084.Spec : Prop :=
  ∀ n, P16909533885943590084.a n = A142963 (n + 1)

theorem P16909533885943590084.correct : P16909533885943590084.Spec := by
  intro n
  simp only [A142963, Nat.add_sub_cancel]

end A142963

/-! ## A142963.P14735414371017045812

`A059268(n)*A156920(n)`
-/

namespace A142963.P14735414371017045812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n * A156920 n

end

end A142963.P14735414371017045812

namespace A142963

/-- `A059268(n)*A156920(n)` -/
def P14735414371017045812.Spec : Prop :=
  ∀ n, P14735414371017045812.a n = A142963 (n + 1)

end A142963

/-! ## A142963.P1235715821580864766

`2^A002262(n)*A156920(n)`
-/

namespace A142963.P1235715821580864766
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A002262 n : ℤ) * (A156920 n : ℚ)

end

end A142963.P1235715821580864766

namespace A142963

/-- `2^A002262(n)*A156920(n)` -/
def P1235715821580864766.Spec : Prop :=
  ∀ n, P1235715821580864766.a n = (A142963 (n + 1) : ℚ)

end A142963

/-! ## A142963.P18282913268020822979

`A000079(A002262(n))*A156920(n)`
-/

namespace A142963.P18282913268020822979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A002262 n).toNat * A156920 n

end

end A142963.P18282913268020822979

namespace A142963

/-- `A000079(A002262(n))*A156920(n)` -/
def P18282913268020822979.Spec : Prop :=
  ∀ n, P18282913268020822979.a n = A142963 (n + 1)

end A142963

/-! ## A142963.P3023774603086608016

`A011782(A002260(n+1))*A156920(n)`
-/

namespace A142963.P3023774603086608016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A002260 (n + 1)).toNat * A156920 n

end

end A142963.P3023774603086608016

namespace A142963

/-- `A011782(A002260(n+1))*A156920(n)` -/
def P3023774603086608016.Spec : Prop :=
  ∀ n, P3023774603086608016.a n = A142963 (n + 1)

end A142963

/-! ## A142963.P691309669891009623

`A000079(val(A036561(n), 3))*A156920(n)`
-/

namespace A142963.P691309669891009623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (SequenceMachineLib.valuation (A036561 n).toNat 3) * A156920 n

end

end A142963.P691309669891009623

namespace A142963

/-- `A000079(val(A036561(n), 3))*A156920(n)` -/
def P691309669891009623.Spec : Prop :=
  ∀ n, P691309669891009623.a n = A142963 (n + 1)

end A142963

/-! ## A142963.P14382614090495606351

`A064989(A036561(n))*A156920(n)`
-/

namespace A142963.P14382614090495606351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (A036561 n).toNat * A156920 n

end

end A142963.P14382614090495606351

namespace A142963

/-- `A064989(A036561(n))*A156920(n)` -/
def P14382614090495606351.Spec : Prop :=
  ∀ n, P14382614090495606351.a n = A142963 (n + 1)

end A142963

/-!
# A142964: a(n) = 6*2^n - 2*n - 5.

The programs for A142964, the canonical program `A142964.P13021207393841812729` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142964 has offset 0).

The definition of A142964 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `6*2^n-2*n-5` (program `A142964.P13021207393841812729`, by `A142964.P13021207393841812729.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A142964.P13021207393841812729

`6*2^n-2*n-5`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A142964

/-- `6*2^n-2*n-5` -/
def P13021207393841812729.Spec : Prop :=
  ∀ n, P13021207393841812729.a n = A142964 n

theorem P13021207393841812729.correct : P13021207393841812729.Spec := by
  intro n
  simp only [A142964]

end A142964

/-! ## A142964.P16055116561850314206

`∑[ogf((1+x)/(1-3x+2x^2))]`
-/

namespace A142964.P16055116561850314206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1] [1, -3, 2] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A142964.P16055116561850314206

namespace A142964

/-- `∑[ogf((1+x)/(1-3x+2x^2))]` -/
def P16055116561850314206.Spec : Prop :=
  ∀ n, P16055116561850314206.a n = A142964 n

end A142964

/-! ## A142964.P9705142244078507891

`ogf((1+x)/(1-4x+5x^2-2x^3))`
-/

namespace A142964.P9705142244078507891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1] [1, -4, 5, -2] n

end

end A142964.P9705142244078507891

namespace A142964

/-- `ogf((1+x)/(1-4x+5x^2-2x^3))` -/
def P9705142244078507891.Spec : Prop :=
  ∀ n, P9705142244078507891.a n = A142964 n

end A142964

/-! ## A142964.P13792627949420834663

`abs(∑[2-lcm(3, 2^n)])`
-/

namespace A142964.P13792627949420834663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (Nat.lcm 3 (2 ^ n) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A142964.P13792627949420834663

namespace A142964

/-- `abs(∑[2-lcm(3, 2^n)])` -/
def P13792627949420834663.Spec : Prop :=
  ∀ n, P13792627949420834663.a n = A142964 n

end A142964

/-! ## A142964.P14721519139153393814

`∑[∑[2*a(n-1)]]` with `a(0)=1, a(1)=3`
-/

namespace A142964.P14721519139153393814
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n f2 =>
  2 * f2 (n - 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A142964.P14721519139153393814

namespace A142964

/-- `∑[∑[2*a(n-1)]]` -/
def P14721519139153393814.Spec : Prop :=
  ∀ n, (P14721519139153393814.a n : ℤ) = A142964 n

end A142964

/-! ## A142964.P2120759658141788668

`∑[a(n-1)+a(n-1)+2]` with `a(0)=1`
-/

namespace A142964.P2120759658141788668
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) + (f1 (n - 1) + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A142964.P2120759658141788668

namespace A142964

/-- `∑[a(n-1)+a(n-1)+2]` -/
def P2120759658141788668.Spec : Prop :=
  ∀ n, (P2120759658141788668.a n : ℤ) = A142964 n

end A142964

/-! ## A142964.P13225833786504335539

`record[a(n-2)+a(n-2)+n+1]` with `a(0)=1, a(1)=0`
-/

namespace A142964.P13225833786504335539
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0] fun n f1 =>
  f1 (n - 2) + (f1 (n - 2) + (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142964.P13225833786504335539

namespace A142964

/-- `record[a(n-2)+a(n-2)+n+1]` -/
def P13225833786504335539.Spec : Prop :=
  ∀ n, (P13225833786504335539.a n : ℤ) = A142964 n

end A142964

/-! ## A142964.P17325470077063100476

`∑[A033484(n)]`
-/

namespace A142964.P17325470077063100476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033484 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A142964.P17325470077063100476

namespace A142964

/-- `∑[A033484(n)]` -/
def P17325470077063100476.Spec : Prop :=
  ∀ n, P17325470077063100476.a n = A142964 n

end A142964

/-! ## A142964.P11900533954189170841

`A050488(n+1)`
-/

namespace A142964.P11900533954189170841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050488 (n + 1)

end

end A142964.P11900533954189170841

namespace A142964

/-- `A050488(n+1)` -/
def P11900533954189170841.Spec : Prop :=
  ∀ n, P11900533954189170841.a n = A142964 n

theorem P11900533954189170841.correct : P11900533954189170841.Spec := by
  intro n
  simp only [A142964, Nat.add_sub_cancel, A142964.P11900533954189170841.a, A142964.P13021207393841812729.a, A050488, A050488.P4828719649079771572.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A142964

/-! ## A142964.P8360628259766123048

`A077866(2*n)`
-/

namespace A142964.P8360628259766123048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077866 (2 * n)

end

end A142964.P8360628259766123048

namespace A142964

/-- `A077866(2*n)` -/
def P8360628259766123048.Spec : Prop :=
  ∀ n, P8360628259766123048.a n = A142964 n

end A142964

/-! ## A142964.P339557834188993017

`∑[∑[A003945(n)]]`
-/

namespace A142964.P339557834188993017
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003945 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A142964.P339557834188993017

namespace A142964

/-- `∑[∑[A003945(n)]]` -/
def P339557834188993017.Spec : Prop :=
  ∀ n, P339557834188993017.a n = A142964 n

end A142964

/-! ## A142964.P14329990834522338708

`∑[A296953(n+1)]`
-/

namespace A142964.P14329990834522338708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296953 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A142964.P14329990834522338708

namespace A142964

/-- `∑[A296953(n+1)]` -/
def P14329990834522338708.Spec : Prop :=
  ∀ n, P14329990834522338708.a n = A142964 n

end A142964

/-! ## A142964.P8410924654517925767

`∑[A153893(n)-1]`
-/

namespace A142964.P8410924654517925767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153893 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A142964.P8410924654517925767

namespace A142964

/-- `∑[A153893(n)-1]` -/
def P8410924654517925767.Spec : Prop :=
  ∀ n, P8410924654517925767.a n = A142964 n

end A142964

/-! ## A142964.P12888082497637983615

`∑[A007283(n)-2]`
-/

namespace A142964.P12888082497637983615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007283 n - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A142964.P12888082497637983615

namespace A142964

/-- `∑[A007283(n)-2]` -/
def P12888082497637983615.Spec : Prop :=
  ∀ n, P12888082497637983615.a n = A142964 n

end A142964

/-! ## A142964.P15684611289691841586

`∑[2-A165751(n)]`
-/

namespace A142964.P15684611289691841586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A165751 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A142964.P15684611289691841586

namespace A142964

/-- `∑[2-A165751(n)]` -/
def P15684611289691841586.Spec : Prop :=
  ∀ n, P15684611289691841586.a n = A142964 n

end A142964

/-! ## A142964.P13686573423522434520

`∑[A027383(2*n)]`
-/

namespace A142964.P13686573423522434520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027383 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A142964.P13686573423522434520

namespace A142964

/-- `∑[A027383(2*n)]` -/
def P13686573423522434520.Spec : Prop :=
  ∀ n, P13686573423522434520.a n = A142964 n

end A142964

/-! ## A142964.P17905312741015774284

`∑[A099942(2*n)]`
-/

namespace A142964.P17905312741015774284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099942 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A142964.P17905312741015774284

namespace A142964

/-- `∑[A099942(2*n)]` -/
def P17905312741015774284.Spec : Prop :=
  ∀ n, P17905312741015774284.a n = A142964 n

end A142964

/-! ## A142964.P6729751825190380053

`∑[A181565(n)-3]`
-/

namespace A142964.P6729751825190380053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181565 n - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A142964.P6729751825190380053

namespace A142964

/-- `∑[A181565(n)-3]` -/
def P6729751825190380053.Spec : Prop :=
  ∀ n, P6729751825190380053.a n = A142964 n

end A142964

/-! ## A142964.P10714760585475690615

`∑[A164094(n)-4]`
-/

namespace A142964.P10714760585475690615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164094 n - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A142964.P10714760585475690615

namespace A142964

/-- `∑[A164094(n)-4]` -/
def P10714760585475690615.Spec : Prop :=
  ∀ n, P10714760585475690615.a n = A142964 n

end A142964

/-! ## A142964.P8346441928619431395

`∑[A089143(n)/3]`
-/

namespace A142964.P8346441928619431395
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A089143 n : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A142964.P8346441928619431395

namespace A142964

/-- `∑[A089143(n)/3]` -/
def P8346441928619431395.Spec : Prop :=
  ∀ n, P8346441928619431395.a n = (A142964 n : ℚ)

end A142964

/-!
# A142965: One fourth of third column (m=2) of triangle A142963.

The programs for A142965, there is no canonical definition to state claims against.
-/

/-! ## A142965.P2282711016726242818

`A156920(∑[n+2]+3)`
-/

namespace A142965.P2282711016726242818
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156920 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A142965.P2282711016726242818

/-! ## A142965.P7561901346714789167

`A211399(A167614(n+2))`
-/

namespace A142965.P7561901346714789167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211399 (A167614 (n + 2)).toNat

end

end A142965.P7561901346714789167

/-! ## A142965.P2774392191762864311

`A211399(A055999(n)+9)`
-/

namespace A142965.P2774392191762864311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211399 (A055999 n + 9).toNat

end

end A142965.P2774392191762864311

/-! ## A142965.P15851170928478809995

`A211399(eq[3, A002262(n)])`
-/

namespace A142965.P15851170928478809995
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211399 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A142965.P15851170928478809995

/-! ## A142965.P5902205776738183247

`A211399(eq[6, A233543(n)])`
-/

namespace A142965.P5902205776738183247
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233543 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211399 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A142965.P5902205776738183247

/-! ## A142965.P2049806545191341462

`A211399(eq[3, A144328(n+1)])`
-/

namespace A142965.P2049806545191341462
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211399 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A142965.P2049806545191341462

/-! ## A142965.P831033422981062557

`A102365(∑[n+3]+n+3)`
-/

namespace A142965.P831033422981062557
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102365 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A142965.P831033422981062557

/-! ## A142965.P14778849005208539994

`record[A102365(abs(A046691(n)))]`
-/

namespace A142965.P14778849005208539994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102365 |A046691 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142965.P14778849005208539994

/-! ## A142965.P15193319022939647133

`A142963(A167614(n+1))/4`
-/

namespace A142965.P15193319022939647133
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A142963 (A167614 (n + 1)).toNat : ℚ) / 4

end

end A142965.P15193319022939647133

/-!
# A142966: Fourth column (m=3) of triangle A142963 divided by 8.

The programs for A142966, there is no canonical definition to state claims against.
-/

/-! ## A142966.P17539661761981201452

`A156920(A167614(n+2))`
-/

namespace A142966.P17539661761981201452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156920 (A167614 (n + 2)).toNat

end

end A142966.P17539661761981201452

/-! ## A142966.P15071839100058387143

`A211399(A145018(n+5))`
-/

namespace A142966.P15071839100058387143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211399 (A145018 (n + 5)).toNat

end

end A142966.P15071839100058387143

/-! ## A142966.P1381045961274025768

`A156920(A055999(n)+9)`
-/

namespace A142966.P1381045961274025768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156920 (A055999 n + 9).toNat

end

end A142966.P1381045961274025768

/-! ## A142966.P3491580967519478567

`A211399(A056000(n)+14)`
-/

namespace A142966.P3491580967519478567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211399 (A056000 n + 14).toNat

end

end A142966.P3491580967519478567

/-! ## A142966.P14364246896844749365

`A211399(eq[4, A002262(n)])`
-/

namespace A142966.P14364246896844749365
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211399 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A142966.P14364246896844749365

/-! ## A142966.P10730414921272769786

`A156920(A000124(n+3)+2)`
-/

namespace A142966.P10730414921272769786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156920 (A000124 (n + 3) + 2).toNat

end

end A142966.P10730414921272769786

/-! ## A142966.P10748189094188270296

`A211399(A052905(n+1)+9)`
-/

namespace A142966.P10748189094188270296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211399 (A052905 (n + 1) + 9).toNat

end

end A142966.P10748189094188270296

/-! ## A142966.P11797085424978743846

`A211399(eq[2, A144328(n+1)-2])`
-/

namespace A142966.P11797085424978743846
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211399 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A142966.P11797085424978743846

/-! ## A142966.P6506886060030706976

`A211399(eq[2, A144328(n+1)/2])`
-/

namespace A142966.P6506886060030706976
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A144328 (n + 1) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211399 (SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n)

end

end A142966.P6506886060030706976

/-! ## A142966.P9513250739392008839

`record[A102365(A052905(n))]`
-/

namespace A142966.P9513250739392008839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102365 (A052905 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142966.P9513250739392008839

/-!
# A142967: Row sums of triangle A142963.

The programs for A142967, there is no canonical definition to state claims against.
-/

/-! ## A142967.P13768330133675905091

`or(A004273(A346766(n)), A067278(n))`
-/

namespace A142967.P13768330133675905091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A004273 (A346766 n).toNat) (A067278 n)

end

end A142967.P13768330133675905091

/-! ## A142967.P4417850781046732460

`or(A004273(2*n), A004273(A346766(n)))`
-/

namespace A142967.P4417850781046732460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A004273 (2 * n)) (A004273 (A346766 n).toNat)

end

end A142967.P4417850781046732460

/-!
# A142968: Fifth column (m=4) of triangle A142963 divided by 16=2^4.

The programs for A142968, there is no canonical definition to state claims against.
-/

/-! ## A142968.P10997743675469362509

`A156920(A167614(n+3)+1)`
-/

namespace A142968.P10997743675469362509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156920 (A167614 (n + 3) + 1).toNat

end

end A142968.P10997743675469362509

/-! ## A142968.P3372003654328098237

`A156920(A167499(n+3)-1)`
-/

namespace A142968.P3372003654328098237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156920 (A167499 (n + 3) - 1).toNat

end

end A142968.P3372003654328098237

/-! ## A142968.P1770851511320325915

`record[A102365(A055999(n))]`
-/

namespace A142968.P1770851511320325915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102365 (A055999 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142968.P1770851511320325915

/-! ## A142968.P15195364815072568311

`A102365(A055999(n+3))`
-/

namespace A142968.P15195364815072568311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102365 (A055999 (n + 3)).toNat

end

end A142968.P15195364815072568311

/-! ## A142968.P15561435939673688368

`A102365(eq[5, A025581(n)])`
-/

namespace A142968.P15561435939673688368
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102365 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A142968.P15561435939673688368

/-! ## A142968.P13836672431244099654

`A102365(eq[6, A193739(n)])`
-/

namespace A142968.P13836672431244099654
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102365 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A142968.P13836672431244099654

/-! ## A142968.P17593692431035573106

`A102365(eq[11, A099375(n)])`
-/

namespace A142968.P17593692431035573106
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102365 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A142968.P17593692431035573106

/-! ## A142968.P5068357671211586529

`A102365(eq[32, A130321(n)])`
-/

namespace A142968.P5068357671211586529
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  32

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102365 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A142968.P5068357671211586529

/-! ## A142968.P11795029837623531484

`record[A102365(A052905(n)-1)]`
-/

namespace A142968.P11795029837623531484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102365 (A052905 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142968.P11795029837623531484

/-! ## A142968.P2571822155501106960

`record[A102365(abs(2-A046691(n)))]`
-/

namespace A142968.P2571822155501106960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102365 |2 - A046691 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142968.P2571822155501106960

/-!
# A142969: Numerators of approximants of a continued fraction for 4/Pi - 1 = (4 - Pi)/Pi.

The programs for A142969, there is no canonical definition to state claims against.
-/

/-! ## A142969.P6001232845924907300

`A025547(n+2)-A007509(n+1)`
-/

namespace A142969.P6001232845924907300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025547 (n + 2) - A007509 (n + 1)

end

end A142969.P6001232845924907300

/-!
# A142970: Numerators of n-th approximants of a continued fraction for Pi-3.

The programs for A142970, the canonical program `A142970.P3574131498627403957` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142970 has offset 0).

The definition of A142970 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A142970.P3574131498627403957

`6*a(n-1)+(2*n-1)²*a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A142970

/-- `6*a(n-1)+(2*n-1)²*a(n-2)` -/
def P3574131498627403957.Spec : Prop :=
  ∀ n, P3574131498627403957.a n = A142970 n

theorem P3574131498627403957.correct : P3574131498627403957.Spec := by
  intro n
  simp only [A142970]

end A142970

/-!
# A142971: Triangle read by rows: A061397 with negative signs interleaved with (k-1) zeros.

The programs for A142971, the canonical program `A142971.P11295584291541300663` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142971 has offset 1).

The definition of A142971 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 117 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142971.P3242732744827341639

`-A061397(A051537(n+1))`
-/

namespace A142971.P3242732744827341639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A061397 (A051537 (n + 1)).toNat

end

end A142971.P3242732744827341639

namespace A142971

/-- `-A061397(A051537(n+1))` -/
def P3242732744827341639.Spec : Prop :=
  ∀ n, P3242732744827341639.a n = A142971 (n + 1)

end A142971

/-! ## A142971.P4676117991589538839

`-A331044(A126988(n+1))`
-/

namespace A142971.P4676117991589538839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A331044 (A126988 (n + 1)).toNat

end

end A142971.P4676117991589538839

namespace A142971

/-- `-A331044(A126988(n+1))` -/
def P4676117991589538839.Spec : Prop :=
  ∀ n, P4676117991589538839.a n = A142971 (n + 1)

end A142971

/-! ## A142971.P4707690983183970954

`floor(sin(A054525(n+1)))*A010766(n+1)`
-/

namespace A142971.P4707690983183970954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sin (A054525 (n + 1) : ℝ)⌋ * A010766 (n + 1)

end

end A142971.P4707690983183970954

namespace A142971

/-- `floor(sin(A054525(n+1)))*A010766(n+1)` -/
def P4707690983183970954.Spec : Prop :=
  ∀ n, P4707690983183970954.a n = A142971 (n + 1)

end A142971

/-! ## A142971.P976753254302902681

`floor(atan(A054525(n+1)))*A126988(n+1)`
-/

namespace A142971.P976753254302902681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.arctan (A054525 (n + 1) : ℝ)⌋ * A126988 (n + 1)

end

end A142971.P976753254302902681

namespace A142971

/-- `floor(atan(A054525(n+1)))*A126988(n+1)` -/
def P976753254302902681.Spec : Prop :=
  ∀ n, P976753254302902681.a n = A142971 (n + 1)

end A142971

/-! ## A142971.P13210086470741563679

`floor(A054525(n+1)/2)*A049834(n+1)`
-/

namespace A142971.P13210086470741563679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A054525 (n + 1) : ℚ) / 2⌋ * A049834 (n + 1)

end

end A142971.P13210086470741563679

namespace A142971

/-- `floor(A054525(n+1)/2)*A049834(n+1)` -/
def P13210086470741563679.Spec : Prop :=
  ∀ n, P13210086470741563679.a n = A142971 (n + 1)

end A142971

/-! ## A142971.P14658471184973805263

`-A061397(A104634(A286158(n+1)))`
-/

namespace A142971.P14658471184973805263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A061397 (A104634 (A286158 (n + 1)).toNat).toNat

end

end A142971.P14658471184973805263

namespace A142971

/-- `-A061397(A104634(A286158(n+1)))` -/
def P14658471184973805263.Spec : Prop :=
  ∀ n, P14658471184973805263.a n = A142971 (n + 1)

end A142971

/-! ## A142971.P1990227261164377449

`A196199(A061397(A051537(n+1))²)`
-/

namespace A142971.P1990227261164377449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196199 (A061397 (A051537 (n + 1)).toNat ^ 2).toNat

end

end A142971.P1990227261164377449

namespace A142971

/-- `A196199(A061397(A051537(n+1))²)` -/
def P1990227261164377449.Spec : Prop :=
  ∀ n, P1990227261164377449.a n = A142971 (n + 1)

end A142971

/-! ## A142971.P6686669719754780056

`∑{p}[A061397(A051537(n+1)), A001489(#)]`
-/

namespace A142971.P6686669719754780056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061397 (A051537 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A001489 p

end

end A142971.P6686669719754780056

namespace A142971

/-- `∑{p}[A061397(A051537(n+1)), A001489(#)]` -/
def P6686669719754780056.Spec : Prop :=
  ∀ n, P6686669719754780056.a n = A142971 (n + 1)

end A142971

/-! ## A142971.P2540968700311579754

`Δ[A025581(n)]*A061397(A051537(n+1))`
-/

namespace A142971.P2540968700311579754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A061397 (A051537 (n + 1)).toNat

end

end A142971.P2540968700311579754

namespace A142971

/-- `Δ[A025581(n)]*A061397(A051537(n+1))` -/
def P2540968700311579754.Spec : Prop :=
  ∀ n, P2540968700311579754.a n = A142971 (n + 1)

end A142971

/-! ## A142971.P3532192275945113125

`A000007(n+1)-A061397(A051537(n+1))`
-/

namespace A142971.P3532192275945113125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) - A061397 (A051537 (n + 1)).toNat

end

end A142971.P3532192275945113125

namespace A142971

/-- `A000007(n+1)-A061397(A051537(n+1))` -/
def P3532192275945113125.Spec : Prop :=
  ∀ n, P3532192275945113125.a n = A142971 (n + 1)

end A142971

/-! ## A142971.P10722593208352689359

`A000038(n+1)-A061397(A051537(n+1))`
-/

namespace A142971.P10722593208352689359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (n + 1) - A061397 (A051537 (n + 1)).toNat

end

end A142971.P10722593208352689359

namespace A142971

/-- `A000038(n+1)-A061397(A051537(n+1))` -/
def P10722593208352689359.Spec : Prop :=
  ∀ n, P10722593208352689359.a n = A142971 (n + 1)

end A142971

/-! ## A142971.P7972797789581692760

`A054525(n+1)*A092509(A054531(n+1))`
-/

namespace A142971.P7972797789581692760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054525 (n + 1) * A092509 (A054531 (n + 1)).toNat

end

end A142971.P7972797789581692760

namespace A142971

/-- `A054525(n+1)*A092509(A054531(n+1))` -/
def P7972797789581692760.Spec : Prop :=
  ∀ n, P7972797789581692760.a n = A142971 (n + 1)

end A142971

/-! ## A142971.P9543495618021811663

`A000035(2*n)-A061397(A051537(n+1))`
-/

namespace A142971.P9543495618021811663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (2 * n) - A061397 (A051537 (n + 1)).toNat

end

end A142971.P9543495618021811663

namespace A142971

/-- `A000035(2*n)-A061397(A051537(n+1))` -/
def P9543495618021811663.Spec : Prop :=
  ∀ n, P9543495618021811663.a n = A142971 (n + 1)

end A142971

/-! ## A142971.P4302672710409378880

`A001489(n)-A061397(A051537(n+1))+n`
-/

namespace A142971.P4302672710409378880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001489 n - A061397 (A051537 (n + 1)).toNat + (n : ℤ)

end

end A142971.P4302672710409378880

namespace A142971

/-- `A001489(n)-A061397(A051537(n+1))+n` -/
def P4302672710409378880.Spec : Prop :=
  ∀ n, P4302672710409378880.a n = A142971 (n + 1)

end A142971

/-! ## A142971.P11295584291541300663

`-(A051731(n+1)*A061397(A054531(n+1)))`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A142971

/-- `-(A051731(n+1)*A061397(A054531(n+1)))` -/
def P11295584291541300663.Spec : Prop :=
  ∀ n, P11295584291541300663.a n = A142971 (n + 1)

theorem P11295584291541300663.correct : P11295584291541300663.Spec := by
  intro n
  simp only [A142971, Nat.add_sub_cancel]

end A142971

/-! ## A142971.P3830723836791934617

`A174557(n+1)%A014963(A051537(n+1))²`
-/

namespace A142971.P3830723836791934617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A174557 (n + 1)) (A014963 (A051537 (n + 1)).toNat ^ 2)

end

end A142971.P3830723836791934617

namespace A142971

/-- `A174557(n+1)%A014963(A051537(n+1))²` -/
def P3830723836791934617.Spec : Prop :=
  ∀ n, P3830723836791934617.a n = A142971 (n + 1)

end A142971

/-! ## A142971.P8337543796467006306

`(A049828(n+1)-1)*A061397(A051537(n+1))`
-/

namespace A142971.P8337543796467006306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A049828 (n + 1) - 1) * A061397 (A051537 (n + 1)).toNat

end

end A142971.P8337543796467006306

namespace A142971

/-- `(A049828(n+1)-1)*A061397(A051537(n+1))` -/
def P8337543796467006306.Spec : Prop :=
  ∀ n, P8337543796467006306.a n = A142971 (n + 1)

end A142971

/-! ## A142971.P8739875855636612264

`A008683(4*(n+1))-A061397(A051537(n+1))`
-/

namespace A142971.P8739875855636612264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (4 * (n + 1)) - A061397 (A051537 (n + 1)).toNat

end

end A142971.P8739875855636612264

namespace A142971

/-- `A008683(4*(n+1))-A061397(A051537(n+1))` -/
def P8739875855636612264.Spec : Prop :=
  ∀ n, P8739875855636612264.a n = A142971 (n + 1)

end A142971

/-! ## A142971.P5561904612168270134

`A000045(C(n, n+1))-A061397(A051537(n+1))`
-/

namespace A142971.P5561904612168270134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (Nat.choose n (n + 1)) - A061397 (A051537 (n + 1)).toNat

end

end A142971.P5561904612168270134

namespace A142971

/-- `A000045(C(n, n+1))-A061397(A051537(n+1))` -/
def P5561904612168270134.Spec : Prop :=
  ∀ n, P5561904612168270134.a n = A142971 (n + 1)

end A142971

/-! ## A142971.P14510940849007217055

`A049828(A000124(n))-A061397(A051537(n+1))`
-/

namespace A142971.P14510940849007217055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049828 (A000124 n).toNat - A061397 (A051537 (n + 1)).toNat

end

end A142971.P14510940849007217055

namespace A142971

/-- `A049828(A000124(n))-A061397(A051537(n+1))` -/
def P14510940849007217055.Spec : Prop :=
  ∀ n, P14510940849007217055.a n = A142971 (n + 1)

end A142971

/-!
# A142972: a(n) = the largest integer such that each positive integer <= a(n) divides at least one integer k, where the n-th prime <= k <= the (n+1)th prime.

The programs for A142972, there is no canonical definition to state claims against.
-/

/-! ## A142972.P7812501759440047317

`A142973(n+1)-1`
-/

namespace A142972.P7812501759440047317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142973 (n + 1) - 1

end

end A142972.P7812501759440047317

/-! ## A142972.P4151948474081355260

`A002837(A142973(n+1))`
-/

namespace A142972.P4151948474081355260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002837 (A142973 (n + 1)).toNat

end

end A142972.P4151948474081355260

/-! ## A142972.P5367104995627121744

`A057918(A142973(n+1)²)`
-/

namespace A142972.P5367104995627121744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057918 (A142973 (n + 1) ^ 2).toNat

end

end A142972.P5367104995627121744

/-! ## A142972.P12754078967820313353

`A086520(A142973(n+1)²)`
-/

namespace A142972.P12754078967820313353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086520 (A142973 (n + 1) ^ 2).toNat

end

end A142972.P12754078967820313353

/-! ## A142972.P3178609962023644568

`A259361(A142973(n+1)²)`
-/

namespace A142972.P3178609962023644568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259361 (A142973 (n + 1) ^ 2).toNat

end

end A142972.P3178609962023644568

/-! ## A142972.P9487679766351004565

`A289207(A142973(n+1)+1)`
-/

namespace A142972.P9487679766351004565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A142973 (n + 1) + 1).toNat

end

end A142972.P9487679766351004565

/-! ## A142972.P8680481340864136844

`A023448(A142973(n+1)+5)`
-/

namespace A142972.P8680481340864136844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023448 (A142973 (n + 1) + 5).toNat

end

end A142972.P8680481340864136844

/-! ## A142972.P15687025751876789139

`A032615(3*A142973(n+1))`
-/

namespace A142972.P15687025751876789139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032615 (3 * A142973 (n + 1)).toNat

end

end A142972.P15687025751876789139

/-! ## A142972.P2025320807096203371

`A023453(A142973(n+1)+10)`
-/

namespace A142972.P2025320807096203371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023453 (A142973 (n + 1) + 10).toNat

end

end A142972.P2025320807096203371

/-! ## A142972.P8299336782381980039

`A086520(A142973(n+1)^2)`
-/

namespace A142972.P8299336782381980039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086520 (A142973 (n + 1) ^ 2).toNat

end

end A142972.P8299336782381980039

/-!
# A142973: a(n) = the smallest positive integer that does not divide any integer k, where the n-th prime <= k <= the (n+1)th prime.

The programs for A142973, there is no canonical definition to state claims against.
-/

/-! ## A142973.P16255207231561023871

`A142972(n+1)+1`
-/

namespace A142973.P16255207231561023871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142972 (n + 1) + 1

end

end A142973.P16255207231561023871

/-! ## A142973.P9547466308441079943

`A004722(A142972(n+1))`
-/

namespace A142973.P9547466308441079943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004722 (A142972 (n + 1)).toNat

end

end A142973.P9547466308441079943

/-!
# A142974: A007318 * [1, 1, -1, 1, 1, 1, ...].

The programs for A142974, the canonical program `A142974.P3482987154250714936` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142974 has offset 1).

The definition of A142974 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A142974.P3482987154250714936

`2^n-n*(n-1)`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A142974

/-- `2^n-n*(n-1)` -/
def P3482987154250714936.Spec : Prop :=
  ∀ n, P3482987154250714936.a n = A142974 (n + 1)

theorem P3482987154250714936.correct : P3482987154250714936.Spec := by
  intro n
  simp only [A142974, Nat.add_sub_cancel]

end A142974

/-! ## A142974.P13928209572990455138

`abs(2^n-lcm(n, n-1))`
-/

namespace A142974.P13928209572990455138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(2 ^ n : ℤ) - (Int.lcm (n : ℤ) ((n : ℤ) - 1) : ℤ)|

end

end A142974.P13928209572990455138

namespace A142974

/-- `abs(2^n-lcm(n, n-1))` -/
def P13928209572990455138.Spec : Prop :=
  ∀ n, P13928209572990455138.a n = A142974 (n + 1)

end A142974

/-! ## A142974.P9513435266523959487

`∑[2*(a(n-1)-3+n)]` with `a(0)=1, a(1)=1`
-/

namespace A142974.P9513435266523959487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  2 * (f1 (n - 1) - 3 + (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A142974.P9513435266523959487

namespace A142974

/-- `∑[2*(a(n-1)-3+n)]` -/
def P9513435266523959487.Spec : Prop :=
  ∀ n, P9513435266523959487.a n = A142974 (n + 1)

end A142974

/-! ## A142974.P11389225155227544377

`∑[2*(a(n-1)-(3-n))]` with `a(0)=1, a(1)=1`
-/

namespace A142974.P11389225155227544377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  2 * (f1 (n - 1) - (3 - (n : ℤ)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A142974.P11389225155227544377

namespace A142974

/-- `∑[2*(a(n-1)-(3-n))]` -/
def P11389225155227544377.Spec : Prop :=
  ∀ n, P11389225155227544377.a n = A142974 (n + 1)

end A142974

/-! ## A142974.P15763288422408887931

`abs((2-n)²+2*a(n-1)-n)` with `a(0)=1`
-/

namespace A142974.P15763288422408887931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  |(2 - (n : ℤ)) ^ 2 + 2 * a (n - 1) - (n : ℤ)|

end

end A142974.P15763288422408887931

namespace A142974

/-- `abs((2-n)²+2*a(n-1)-n)` -/
def P15763288422408887931.Spec : Prop :=
  ∀ n, P15763288422408887931.a n = A142974 (n + 1)

end A142974

/-! ## A142974.P4165527188858453410

`∑[∑[a(n-1)+a(n-1)+2]]` with `a(0)=1, a(1)=0, a(2)=-1`
-/

namespace A142974.P4165527188858453410
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 0, -1] fun n f2 =>
  f2 (n - 1) + (f2 (n - 1) + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A142974.P4165527188858453410

namespace A142974

/-- `∑[∑[a(n-1)+a(n-1)+2]]` -/
def P4165527188858453410.Spec : Prop :=
  ∀ n, P4165527188858453410.a n = A142974 (n + 1)

end A142974

/-! ## A142974.P12224182160676884113

`abs(A024012(n)+n)`
-/

namespace A142974.P12224182160676884113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A024012 n + (n : ℤ)|

end

end A142974.P12224182160676884113

namespace A142974

/-- `abs(A024012(n)+n)` -/
def P12224182160676884113.Spec : Prop :=
  ∀ n, P12224182160676884113.a n = A142974 (n + 1)

end A142974

/-! ## A142974.P6246496707427558924

`abs(n-A176776(n))`
-/

namespace A142974.P6246496707427558924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) - A176776 n|

end

end A142974.P6246496707427558924

namespace A142974

/-- `abs(n-A176776(n))` -/
def P6246496707427558924.Spec : Prop :=
  ∀ n, P6246496707427558924.a n = A142974 (n + 1)

end A142974

/-! ## A142974.P10915824449235818886

`abs(n²-A000079(n)-n)`
-/

namespace A142974.P10915824449235818886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n ^ 2 : ℤ) - A000079 n - (n : ℤ)|

end

end A142974.P10915824449235818886

namespace A142974

/-- `abs(n²-A000079(n)-n)` -/
def P10915824449235818886.Spec : Prop :=
  ∀ n, P10915824449235818886.a n = A142974 (n + 1)

end A142974

/-! ## A142974.P12064601920513843890

`∑[A132824(n)-floor(2^(n-1))]`
-/

namespace A142974.P12064601920513843890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132824 n - ⌊(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A142974.P12064601920513843890

namespace A142974

/-- `∑[A132824(n)-floor(2^(n-1))]` -/
def P12064601920513843890.Spec : Prop :=
  ∀ n, P12064601920513843890.a n = A142974 (n + 1)

end A142974

/-! ## A142974.P6223754700508922821

`abs(n²-(n+1)-A000225(n))`
-/

namespace A142974.P6223754700508922821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n ^ 2 : ℤ) - (n + 1 : ℤ) - A000225 n|

end

end A142974.P6223754700508922821

namespace A142974

/-- `abs(n²-(n+1)-A000225(n))` -/
def P6223754700508922821.Spec : Prop :=
  ∀ n, P6223754700508922821.a n = A142974 (n + 1)

end A142974

/-! ## A142974.P7872034141444670645

`abs(A000051(n)-(1-n)²-n)`
-/

namespace A142974.P7872034141444670645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000051 n - (1 - (n : ℤ)) ^ 2 - (n : ℤ)|

end

end A142974.P7872034141444670645

namespace A142974

/-- `abs(A000051(n)-(1-n)²-n)` -/
def P7872034141444670645.Spec : Prop :=
  ∀ n, P7872034141444670645.a n = A142974 (n + 1)

end A142974

/-! ## A142974.P10020696094422972997

`∑[A056469(n)-A004277(n)]`
-/

namespace A142974.P10020696094422972997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056469 n - A004277 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A142974.P10020696094422972997

namespace A142974

/-- `∑[A056469(n)-A004277(n)]` -/
def P10020696094422972997.Spec : Prop :=
  ∀ n, P10020696094422972997.a n = A142974 (n + 1)

end A142974

/-! ## A142974.P10476242128133336792

`A048578(n)%A020873(n)`
-/

namespace A142974.P10476242128133336792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A048578 n) (A020873 n)

end

end A142974.P10476242128133336792

namespace A142974

/-- `A048578(n)%A020873(n)` -/
def P10476242128133336792.Spec : Prop :=
  ∀ n, P10476242128133336792.a n = A142974 (n + 1)

end A142974

/-! ## A142974.P13335173246285284562

`Δ[A000051(n)-A007290(n)]`
-/

namespace A142974.P13335173246285284562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n - A007290 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A142974.P13335173246285284562

namespace A142974

/-- `Δ[A000051(n)-A007290(n)]` -/
def P13335173246285284562.Spec : Prop :=
  ∀ n, P13335173246285284562.a n = A142974 (n + 1)

theorem P13335173246285284562.correct : P13335173246285284562.Spec := by
  intro n
  simp only [A142974, Nat.add_sub_cancel, A142974.P13335173246285284562.f1, A142974.P13335173246285284562.a, A142974.P3482987154250714936.a, A000051, A000051.P14067217022188782580.a, A007290, A007290.P9295456119697579818.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A142974

/-! ## A142974.P14330531876622446474

`A020707(n)%A308580(n)`
-/

namespace A142974.P14330531876622446474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A020707 n) (A308580 n)

end

end A142974.P14330531876622446474

namespace A142974

/-- `A020707(n)%A308580(n)` -/
def P14330531876622446474.Spec : Prop :=
  ∀ n, P14330531876622446474.a n = A142974 (n + 1)

end A142974

/-! ## A142974.P15020426895304908355

`A146541(n)%A308580(n)`
-/

namespace A142974.P15020426895304908355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A146541 n) (A308580 n)

end

end A142974.P15020426895304908355

namespace A142974

/-- `A146541(n)%A308580(n)` -/
def P15020426895304908355.Spec : Prop :=
  ∀ n, P15020426895304908355.a n = A142974 (n + 1)

end A142974

/-! ## A142974.P7412192021741196399

`A130129(n)%A275970(n)`
-/

namespace A142974.P7412192021741196399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A130129 n) (A275970 n)

end

end A142974.P7412192021741196399

namespace A142974

/-- `A130129(n)%A275970(n)` -/
def P7412192021741196399.Spec : Prop :=
  ∀ n, P7412192021741196399.a n = A142974 (n + 1)

end A142974

/-! ## A142974.P888008230494769473

`A118415(n+1)%A145071(n+1)`
-/

namespace A142974.P888008230494769473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A118415 (n + 1)) (A145071 (n + 1))

end

end A142974.P888008230494769473

namespace A142974

/-- `A118415(n+1)%A145071(n+1)` -/
def P888008230494769473.Spec : Prop :=
  ∀ n, P888008230494769473.a n = A142974 (n + 1)

end A142974

/-! ## A142974.P17603763429552644984

`A052481(n)%A052548(n)`
-/

namespace A142974.P17603763429552644984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A052481 n) (A052548 n)

end

end A142974.P17603763429552644984

namespace A142974

/-- `A052481(n)%A052548(n)` -/
def P17603763429552644984.Spec : Prop :=
  ∀ n, P17603763429552644984.a n = A142974 (n + 1)

end A142974

/-!
# A142975: n-th term of the Fibonacci-type sequence x(1)=1, x(2)=Fibonacci(n), x(k+1)=x(k)+x(k-1) for k>1.

The programs for A142975, the canonical program `A142975.P10502756567082669567` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142975 has offset 1).

The definition of A142975 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 241 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142975.P10502756567082669567

`2*A051450(n)-a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A142975

/-- `2*A051450(n)-a(n-1)` -/
def P10502756567082669567.Spec : Prop :=
  ∀ n, P10502756567082669567.a n = A142975 (n + 1)

theorem P10502756567082669567.correct : P10502756567082669567.Spec := by
  intro n
  simp only [A142975, Nat.add_sub_cancel]

end A142975

/-! ## A142975.P12958865775383197014

`A212804(n)+∑[round(ϕ^n/sqrt(5))²]`
-/

namespace A142975.P12958865775383197014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.goldenRatio ^ n / Real.sqrt (5 : ℝ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A142975.P12958865775383197014

namespace A142975

/-- `A212804(n)+∑[round(ϕ^n/sqrt(5))²]` -/
def P12958865775383197014.Spec : Prop :=
  ∀ n, P12958865775383197014.a n = A142975 (n + 1)

end A142975

/-! ## A142975.P14737208566936055567

`A001654(n)+Δ[A000045(n)]`
-/

namespace A142975.P14737208566936055567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001654 n + (f1 (n + 1) - f1 n)

end

end A142975.P14737208566936055567

namespace A142975

/-- `A001654(n)+Δ[A000045(n)]` -/
def P14737208566936055567.Spec : Prop :=
  ∀ n, P14737208566936055567.a n = A142975 (n + 1)

end A142975

/-! ## A142975.P11042607807858695030

`A001654(n)+Δ[A001611(n)]`
-/

namespace A142975.P11042607807858695030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001611 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001654 n + (f1 (n + 1) - f1 n)

end

end A142975.P11042607807858695030

namespace A142975

/-- `A001654(n)+Δ[A001611(n)]` -/
def P11042607807858695030.Spec : Prop :=
  ∀ n, P11042607807858695030.a n = A142975 (n + 1)

end A142975

/-! ## A142975.P11590004322041427499

`A001654(n)-A152163(n+1)`
-/

namespace A142975.P11590004322041427499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001654 n - A152163 (n + 1)

end

end A142975.P11590004322041427499

namespace A142975

/-- `A001654(n)-A152163(n+1)` -/
def P11590004322041427499.Spec : Prop :=
  ∀ n, P11590004322041427499.a n = A142975 (n + 1)

end A142975

/-! ## A142975.P16276116022164967895

`A286983(n+1)-A000045(n)`
-/

namespace A142975.P16276116022164967895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286983 (n + 1) - A000045 n

end

end A142975.P16276116022164967895

namespace A142975

/-- `A286983(n+1)-A000045(n)` -/
def P16276116022164967895.Spec : Prop :=
  ∀ n, P16276116022164967895.a n = A142975 (n + 1)

end A142975

/-! ## A142975.P2981284872837819220

`A001654(n)+A118658(n)/2`
-/

namespace A142975.P2981284872837819220
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001654 n : ℚ) + (A118658 n : ℚ) / 2

end

end A142975.P2981284872837819220

namespace A142975

/-- `A001654(n)+A118658(n)/2` -/
def P2981284872837819220.Spec : Prop :=
  ∀ n, P2981284872837819220.a n = (A142975 (n + 1) : ℚ)

end A142975

/-! ## A142975.P17856526553290442801

`A305412(n)-2*A000045(n)`
-/

namespace A142975.P17856526553290442801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305412 n - 2 * A000045 n

end

end A142975.P17856526553290442801

namespace A142975

/-- `A305412(n)-2*A000045(n)` -/
def P17856526553290442801.Spec : Prop :=
  ∀ n, P17856526553290442801.a n = A142975 (n + 1)

end A142975

/-! ## A142975.P231060520804836131

`Δ[A000045(n)]+∑[A007598(n)]`
-/

namespace A142975.P231060520804836131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007598 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A142975.P231060520804836131

namespace A142975

/-- `Δ[A000045(n)]+∑[A007598(n)]` -/
def P231060520804836131.Spec : Prop :=
  ∀ n, P231060520804836131.a n = A142975 (n + 1)

end A142975

/-! ## A142975.P7955904575916238830

`∑[A007598(n)]-A152163(n+1)`
-/

namespace A142975.P7955904575916238830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007598 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A152163 (n + 1)

end

end A142975.P7955904575916238830

namespace A142975

/-- `∑[A007598(n)]-A152163(n+1)` -/
def P7955904575916238830.Spec : Prop :=
  ∀ n, P7955904575916238830.a n = A142975 (n + 1)

end A142975

/-! ## A142975.P9260166524950492046

`A000071(n+1)*A001611(n)+1`
-/

namespace A142975.P9260166524950492046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (n + 1) * A001611 n + 1

end

end A142975.P9260166524950492046

namespace A142975

/-- `A000071(n+1)*A001611(n)+1` -/
def P9260166524950492046.Spec : Prop :=
  ∀ n, P9260166524950492046.a n = A142975 (n + 1)

end A142975

/-! ## A142975.P1122158010297614306

`A000045(2*n)+A000045(n)-a(n-1)` with `a(0)=1`
-/

namespace A142975.P1122158010297614306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000045 (2 * n) + (A000045 n - a (n - 1))

end

end A142975.P1122158010297614306

namespace A142975

/-- `A000045(2*n)+A000045(n)-a(n-1)` -/
def P1122158010297614306.Spec : Prop :=
  ∀ n, P1122158010297614306.a n = A142975 (n + 1)

end A142975

/-! ## A142975.P14256725273786092311

`A000045(n)+record[A000045(n%4+n)]-a(n-1)` with `a(0)=1`
-/

namespace A142975.P14256725273786092311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n % 4 + n)

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000045 n + (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - a (n - 1))

end

end A142975.P14256725273786092311

namespace A142975

/-- `A000045(n)+record[A000045(n%4+n)]-a(n-1)` -/
def P14256725273786092311.Spec : Prop :=
  ∀ n, P14256725273786092311.a n = A142975 (n + 1)

end A142975

/-! ## A142975.P5770387501496351492

`A000032(n)+A001654(n)-A000045(n+1)`
-/

namespace A142975.P5770387501496351492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n + (A001654 n - A000045 (n + 1))

end

end A142975.P5770387501496351492

namespace A142975

/-- `A000032(n)+A001654(n)-A000045(n+1)` -/
def P5770387501496351492.Spec : Prop :=
  ∀ n, P5770387501496351492.a n = A142975 (n + 1)

end A142975

/-! ## A142975.P1283799755284676182

`A000045(n+1)+A001654(n)-A000045(n)`
-/

namespace A142975.P1283799755284676182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) + (A001654 n - A000045 n)

end

end A142975.P1283799755284676182

namespace A142975

/-- `A000045(n+1)+A001654(n)-A000045(n)` -/
def P1283799755284676182.Spec : Prop :=
  ∀ n, P1283799755284676182.a n = A142975 (n + 1)

end A142975

/-! ## A142975.P15143411251809001203

`A000045(n+1)*A001611(n)-A000045(n)`
-/

namespace A142975.P15143411251809001203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) * A001611 n - A000045 n

end

end A142975.P15143411251809001203

namespace A142975

/-- `A000045(n+1)*A001611(n)-A000045(n)` -/
def P15143411251809001203.Spec : Prop :=
  ∀ n, P15143411251809001203.a n = A142975 (n + 1)

end A142975

/-! ## A142975.P4608578199334248572

`A001611(n+1)*A001611(n)-A001588(n)`
-/

namespace A142975.P4608578199334248572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001611 (n + 1) * A001611 n - A001588 n

end

end A142975.P4608578199334248572

namespace A142975

/-- `A001611(n+1)*A001611(n)-A001588(n)` -/
def P4608578199334248572.Spec : Prop :=
  ∀ n, P4608578199334248572.a n = A142975 (n + 1)

end A142975

/-! ## A142975.P11049801505857060391

`A286983(n+1)+A286983(n+1)-A305412(n)`
-/

namespace A142975.P11049801505857060391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286983 (n + 1) + (A286983 (n + 1) - A305412 n)

end

end A142975.P11049801505857060391

namespace A142975

/-- `A286983(n+1)+A286983(n+1)-A305412(n)` -/
def P11049801505857060391.Spec : Prop :=
  ∀ n, P11049801505857060391.a n = A142975 (n + 1)

end A142975

/-! ## A142975.P15583535692133566795

`A000045(n+1)+A000045(n)*A000071(n+1)`
-/

namespace A142975.P15583535692133566795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) + A000045 n * A000071 (n + 1)

end

end A142975.P15583535692133566795

namespace A142975

/-- `A000045(n+1)+A000045(n)*A000071(n+1)` -/
def P15583535692133566795.Spec : Prop :=
  ∀ n, P15583535692133566795.a n = A142975 (n + 1)

end A142975

/-! ## A142975.P10587694581704842784

`A000045(n+1)*A000045(n)-A152163(n+1)`
-/

namespace A142975.P10587694581704842784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) * A000045 n - A152163 (n + 1)

end

end A142975.P10587694581704842784

namespace A142975

/-- `A000045(n+1)*A000045(n)-A152163(n+1)` -/
def P10587694581704842784.Spec : Prop :=
  ∀ n, P10587694581704842784.a n = A142975 (n + 1)

end A142975

/-!
# A142976: a(n) = (1/18)*(9*n^2 + 21*n + 10 - 4^(n+2)*(3*n+5) + 10*7^(n+1)).

The programs for A142976, there is no canonical definition to state claims against.
-/

/-! ## A142976.P2429102571138768153

`A142458(∑[n+2]+4)`
-/

namespace A142976.P2429102571138768153
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142458 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A142976.P2429102571138768153

/-! ## A142976.P15795552419780748377

`gcd(A000038(n), A142458(A167614(n+1)))`
-/

namespace A142976.P15795552419780748377
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A142458 (A167614 (n + 1)).toNat)

end

end A142976.P15795552419780748377

/-! ## A142976.P17944694167697177793

`lcm(A033999(n), A142458(A167614(n+1)))`
-/

namespace A142976.P17944694167697177793
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A142458 (A167614 (n + 1)).toNat)

end

end A142976.P17944694167697177793

/-! ## A142976.P16278383615636142258

`or(A089801(n), A142458(A167614(n+1)))`
-/

namespace A142976.P16278383615636142258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A089801 n) (A142458 (A167614 (n + 1)).toNat)

end

end A142976.P16278383615636142258

/-! ## A142976.P3396330589527176264

`or(A142458(A167614(n+1)), A151933(n))`
-/

namespace A142976.P3396330589527176264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A142458 (A167614 (n + 1)).toNat) (A151933 n)

end

end A142976.P3396330589527176264

/-! ## A142976.P11436730894997024656

`A142458(A167614(n+1))*A262079(n+1)`
-/

namespace A142976.P11436730894997024656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142458 (A167614 (n + 1)).toNat * A262079 (n + 1)

end

end A142976.P11436730894997024656

/-! ## A142976.P11553512446702862547

`A142458(A167614(n+1))%A091628(n+1)`
-/

namespace A142976.P11553512446702862547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A142458 (A167614 (n + 1)).toNat) (A091628 (n + 1))

end

end A142976.P11553512446702862547

/-! ## A142976.P12647021946020661613

`record[A142458(Δ[A054974(n+2)])]`
-/

namespace A142976.P12647021946020661613
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054974 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142458 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142976.P12647021946020661613

/-! ## A142976.P2666966632382202755

`record[A142458(n+1)*A185018(n)]`
-/

namespace A142976.P2666966632382202755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142458 (n + 1) * A185018 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142976.P2666966632382202755

/-!
# A142977: Table of coefficients in the expansion of the rational function 1/{(1-x)^2 - y*(1+x)^2}.

The programs for A142977, there is no canonical definition to state claims against.
-/

/-! ## A142977.P16584271493643440045

`A163269(n+1)/A241578(A288319(n))`
-/

namespace A142977.P16584271493643440045
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A163269 (n + 1) : ℚ) / (A241578 (A288319 n).toNat : ℚ)

end

end A142977.P16584271493643440045

/-!
# A142978: Table of figurate numbers for the n-dimensional cross polytopes.

The programs for A142978, the canonical program `A142978.P10033750224547927258` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142978 has offset 1).

The definition of A142978 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9860 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142978.P8548121189961698866

`A104698(A061579(n))`
-/

namespace A142978.P8548121189961698866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104698 (A061579 n).toNat

end

end A142978.P8548121189961698866

namespace A142978

/-- `A104698(A061579(n))` -/
def P8548121189961698866.Spec : Prop :=
  ∀ n, P8548121189961698866.a n = A142978 (n + 1)

end A142978

/-! ## A142978.P10033750224547927258

`A217874(A007401(n+1))`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A142978

/-- `A217874(A007401(n+1))` -/
def P10033750224547927258.Spec : Prop :=
  ∀ n, P10033750224547927258.a n = A142978 (n + 1)

theorem P10033750224547927258.correct : P10033750224547927258.Spec := by
  intro n
  simp only [A142978, Nat.add_sub_cancel]

end A142978

/-! ## A142978.P15425636270822163113

`A217874(∑[A010054(n)]+n)`
-/

namespace A142978.P15425636270822163113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217874 (∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)).toNat

end

end A142978.P15425636270822163113

namespace A142978

/-- `A217874(∑[A010054(n)]+n)` -/
def P15425636270822163113.Spec : Prop :=
  ∀ n, P15425636270822163113.a n = A142978 (n + 1)

end A142978

/-! ## A142978.P11967535998611987383

`A113413(lt[1, A113413(n)])/2`
-/

namespace A142978.P11967535998611987383
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113413 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A113413 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n) : ℚ) / 2

end

end A142978.P11967535998611987383

namespace A142978

/-- `A113413(lt[1, A113413(n)])/2` -/
def P11967535998611987383.Spec : Prop :=
  ∀ n, P11967535998611987383.a n = (A142978 (n + 1) : ℚ)

end A142978

/-! ## A142978.P3859591625240326204

`A113413(A014132(n+1)-1)/2`
-/

namespace A142978.P3859591625240326204
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A113413 (A014132 (n + 1) - 1).toNat : ℚ) / 2

end

end A142978.P3859591625240326204

namespace A142978

/-- `A113413(A014132(n+1)-1)/2` -/
def P3859591625240326204.Spec : Prop :=
  ∀ n, P3859591625240326204.a n = (A142978 (n + 1) : ℚ)

end A142978

/-! ## A142978.P7405251169795145705

`(A008288(A007401(n+1))+A008288(n))/2`
-/

namespace A142978.P7405251169795145705
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008288 (A007401 (n + 1)).toNat + A008288 n : ℚ) / 2

end

end A142978.P7405251169795145705

namespace A142978

/-- `(A008288(A007401(n+1))+A008288(n))/2` -/
def P7405251169795145705.Spec : Prop :=
  ∀ n, P7405251169795145705.a n = (A142978 (n + 1) : ℚ)

end A142978

/-! ## A142978.P4068507369221567906

`A122542(lt[1, A122542(n)])/2`
-/

namespace A142978.P4068507369221567906
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122542 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A122542 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n) : ℚ) / 2

end

end A142978.P4068507369221567906

namespace A142978

/-- `A122542(lt[1, A122542(n)])/2` -/
def P4068507369221567906.Spec : Prop :=
  ∀ n, P4068507369221567906.a n = (A142978 (n + 1) : ℚ)

end A142978

/-! ## A142978.P6548459729923379589

`A217874(lt[1, A217891(n+2)])`
-/

namespace A142978.P6548459729923379589
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217891 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217874 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A142978.P6548459729923379589

namespace A142978

/-- `A217874(lt[1, A217891(n+2)])` -/
def P6548459729923379589.Spec : Prop :=
  ∀ n, P6548459729923379589.a n = A142978 (n + 1)

end A142978

/-!
# A142979: a(1) = 1, a(2) = 3, a(n+2) = 3*a(n+1) + (n+1)^2*a(n).

The programs for A142979, there is no canonical definition to state claims against.
-/

/-! ## A142979.P15733644095082851640

`∏[n²/a(n-1)+3]` with `a(0)=1, a(1)=3`
-/

namespace A142979.P15733644095082851640
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 3] fun n f1 =>
  (n ^ 2 : ℚ) / f1 (n - 1) + 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A142979.P15733644095082851640

/-! ## A142979.P1037692789827323039

`3*a(n-1)+n²*a(n-2)` with `a(0)=1, a(1)=3`
-/

namespace A142979.P1037692789827323039
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n a =>
  3 * a (n - 1) + n ^ 2 * a (n - 2)

end

end A142979.P1037692789827323039

/-! ## A142979.P4330464689935674125

`3*a(n-1)+n*n*a(n-2)` with `a(0)=1, a(1)=3`
-/

namespace A142979.P4330464689935674125
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n a =>
  3 * a (n - 1) + n * (n * a (n - 2))

end

end A142979.P4330464689935674125

/-!
# A142980: a(1) = 1, a(2) = 5, a(n+2) = 5*a(n+1) + (n + 1)^2*a(n).

The programs for A142980, there is no canonical definition to state claims against.
-/

/-! ## A142980.P15654086779317714522

`5*a(n-1)+n²*a(n-2)` with `a(0)=1, a(1)=5`
-/

namespace A142980.P15654086779317714522
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 5] fun n a =>
  5 * a (n - 1) + n ^ 2 * a (n - 2)

end

end A142980.P15654086779317714522

/-!
# A142981: a(1) = 1, a(2) = 7, a(n+2) = 7*a(n+1) + (n+1)^2*a(n).

The programs for A142981, there is no canonical definition to state claims against.
-/

/-! ## A142981.P14370842003019154901

`A237262(n+1)+A023443(A244038(n))`
-/

namespace A142981.P14370842003019154901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237262 (n + 1) + A023443 (A244038 n).toNat

end

end A142981.P14370842003019154901

/-!
# A142983: a(1) = 1, a(2) = 2, a(n+2) = 2*a(n+1) + (n + 1)*(n + 2)*a(n).

The programs for A142983, there is no canonical definition to state claims against.
-/

/-! ## A142983.P15926434083629691950

`2*(a(n-1)+a(n-2)*∑[n])` with `a(0)=1, a(1)=2`
-/

namespace A142983.P15926434083629691950
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  2 * (a (n - 1) + a (n - 2) * (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A142983.P15926434083629691950

/-! ## A142983.P3851834937884569924

`∏[A028310(n)-2*n]+(n+2)*a(n-1)` with `a(0)=1`
-/

namespace A142983.P3851834937884569924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n - (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ∏ j ∈ Finset.range (n + 1), f1 j + (n + 2 : ℤ) * a (n - 1)

end

end A142983.P3851834937884569924

/-! ## A142983.P8505660078061271153

`A025527(n+2)*A025559(n+1)`
-/

namespace A142983.P8505660078061271153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025527 (n + 2) * A025559 (n + 1)

end

end A142983.P8505660078061271153

/-! ## A142983.P45949988381845095

`A087301(n+2)-A024168(n+2)`
-/

namespace A142983.P45949988381845095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087301 (n + 2) - A024168 (n + 2)

end

end A142983.P45949988381845095

/-! ## A142983.P10075848196152283477

`A025557(n+1)/2*A025559(n+1)`
-/

namespace A142983.P10075848196152283477
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025557 (n + 1) : ℚ) / 2 * (A025559 (n + 1) : ℚ)

end

end A142983.P10075848196152283477

/-!
# A142984: a(1) = 1, a(2) = 4, a(n+2) = 4*a(n+1) + (n + 1)*(n + 2)*a(n).

The programs for A142984, there is no canonical definition to state claims against.
-/

/-! ## A142984.P951807221059036397

`∏[∑[2*n]/a(n-1)+4]` with `a(0)=1, a(1)=4`
-/

namespace A142984.P951807221059036397
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 4] fun n f1 =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℚ) / f1 (n - 1) + 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A142984.P951807221059036397

/-!
# A142985: a(1) = 1, a(2) = 6, a(n+2) = 6*a(n+1) + (n + 1)*(n + 2)*a(n).

The programs for A142985, the canonical program `A142985.P16762855357233574482` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142985 has offset 1).

The definition of A142985 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A142985.P16762855357233574482

`6*a(n-1)+n*(n+1)*a(n-2)` with `a(0)=1, a(1)=6`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A142985

/-- `6*a(n-1)+n*(n+1)*a(n-2)` -/
def P16762855357233574482.Spec : Prop :=
  ∀ n, (P16762855357233574482.a n : ℤ) = A142985 (n + 1)

theorem P16762855357233574482.correct : P16762855357233574482.Spec := by
  intro n
  simp only [A142985, Nat.add_sub_cancel]

end A142985

/-!
# A142986: a(1) = 1, a(2) = 8, a(n+2) = 8*a(n+1) + (n + 1)*(n + 2)*a(n).

The programs for A142986, the canonical program `A142986.P8396766956546322614` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142986 has offset 1).

The definition of A142986 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A142986.P8396766956546322614

`8*a(n-1)+(n+1)*n*a(n-2)` with `a(0)=1, a(1)=8`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A142986

/-- `8*a(n-1)+(n+1)*n*a(n-2)` -/
def P8396766956546322614.Spec : Prop :=
  ∀ n, (P8396766956546322614.a n : ℤ) = A142986 (n + 1)

theorem P8396766956546322614.correct : P8396766956546322614.Spec := by
  intro n
  simp only [A142986, Nat.add_sub_cancel]

end A142986

/-!
# A142988: a(1) = 1, a(2) = 3, a(n+2) = 3*a(n+1) + (n + 1)*(n + 3)*a(n).

The programs for A142988, there is no canonical definition to state claims against.
-/

/-! ## A142988.P3536589582627687335

`∏[n*(n+2)/a(n-1)+3]` with `a(0)=1, a(1)=3`
-/

namespace A142988.P3536589582627687335
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 3] fun n f1 =>
  (n * (n + 2) : ℚ) / f1 (n - 1) + 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A142988.P3536589582627687335

/-! ## A142988.P162952048583734261

`A133942(n)+(n+3)*a(n-1)` with `a(0)=1`
-/

namespace A142988.P162952048583734261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A133942 n + (n + 3 : ℤ) * a (n - 1)

end

end A142988.P162952048583734261

/-!
# A142989: a(1) = 1, a(2) = 5, a(n+2) = 5*a(n+1)+(n+1)*(n+3)*a(n).

The programs for A142989, the canonical program `A142989.P5879885142219168390` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142989 has offset 1).

The definition of A142989 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A142989.P5879885142219168390

`5*a(n-1)+n*(n+2)*a(n-2)` with `a(0)=1, a(1)=5`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A142989

/-- `5*a(n-1)+n*(n+2)*a(n-2)` -/
def P5879885142219168390.Spec : Prop :=
  ∀ n, (P5879885142219168390.a n : ℤ) = A142989 (n + 1)

theorem P5879885142219168390.correct : P5879885142219168390.Spec := by
  intro n
  simp only [A142989, Nat.add_sub_cancel]

end A142989

/-!
# A142990: a(1) = 1, a(2) = 7, a(n+2) = 7*a(n+1)+(n+1)*(n+3)*a(n).

The programs for A142990, there is no canonical definition to state claims against.
-/

/-! ## A142990.P11257693231778505824

`A072154(A005563(n)*A088716(n))`
-/

namespace A142990.P11257693231778505824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072154 (A005563 n * A088716 n).toNat

end

end A142990.P11257693231778505824

/-!
# A142992: Square array, read by ascending antidiagonals, of the crystal ball sequences for the root lattices of type C_n.

The programs for A142992, the canonical program `A142992.P6139702825425951330` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142992 has offset 0).

The definition of A142992 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2626 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142992.P6139702825425951330

`A101603(A245300(n)+A114327(n))`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A142992

/-- `A101603(A245300(n)+A114327(n))` -/
def P6139702825425951330.Spec : Prop :=
  ∀ n, P6139702825425951330.a n = A142992 n

theorem P6139702825425951330.correct : P6139702825425951330.Spec := by
  intro n
  simp only [A142992]

end A142992

/-! ## A142992.P12036917536308789870

`A217874(A245300(n)+A002262(n))`
-/

namespace A142992.P12036917536308789870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217874 (A245300 n + A002262 n).toNat

end

end A142992.P12036917536308789870

namespace A142992

/-- `A217874(A245300(n)+A002262(n))` -/
def P12036917536308789870.Spec : Prop :=
  ∀ n, P12036917536308789870.a n = A142992 n

end A142992

/-! ## A142992.P7037595500267448304

`and(A038873(A022112(n)), A113711(n))`
-/

namespace A142992.P7037595500267448304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A038873 (A022112 n).toNat) (A113711 n)

end

end A142992.P7037595500267448304

namespace A142992

/-- `and(A038873(A022112(n)), A113711(n))` -/
def P7037595500267448304.Spec : Prop :=
  ∀ n, P7037595500267448304.a n = A142992 n

end A142992

/-! ## A142992.P1864924834296150268

`A000196(A145905(n)²)-A334709(n+2)`
-/

namespace A142992.P1864924834296150268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A145905 n ^ 2).toNat - A334709 (n + 2)

end

end A142992.P1864924834296150268

namespace A142992

/-- `A000196(A145905(n)²)-A334709(n+2)` -/
def P1864924834296150268.Spec : Prop :=
  ∀ n, P1864924834296150268.a n = A142992 n

end A142992

/-! ## A142992.P6302289359249448230

`A035064(2*A047884(n+1))`
-/

namespace A142992.P6302289359249448230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035064 (2 * A047884 (n + 1)).toNat

end

end A142992.P6302289359249448230

namespace A142992

/-- `A035064(2*A047884(n+1))` -/
def P6302289359249448230.Spec : Prop :=
  ∀ n, P6302289359249448230.a n = A142992 n

end A142992

/-!
# A142993: Crystal ball sequence for the lattice C_4.

The programs for A142993, the canonical program `A142993.P870076669599264593` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142993 has offset 0).

The definition of A142993 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A142993.P870076669599264593

`(2*n+1)²*(4*n²+4*n+3)/3`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A142993

/-- `(2*n+1)²*(4*n²+4*n+3)/3` -/
def P870076669599264593.Spec : Prop :=
  ∀ n, P870076669599264593.a n = (A142993 n : ℚ)

end A142993

/-! ## A142993.P16772030694591576515

`round(xor(3, (2*n+1)²)²/3)`
-/

namespace A142993.P16772030694591576515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.xor 3 ((2 * n + 1) ^ 2) ^ 2 : ℚ) / 3)

end

end A142993.P16772030694591576515

namespace A142993

/-- `round(xor(3, (2*n+1)²)²/3)` -/
def P16772030694591576515.Spec : Prop :=
  ∀ n, P16772030694591576515.a n = A142993 n

end A142993

/-! ## A142993.P16520446395438005226

`∑[A019560(n)]`
-/

namespace A142993.P16520446395438005226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019560 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A142993.P16520446395438005226

namespace A142993

/-- `∑[A019560(n)]` -/
def P16520446395438005226.Spec : Prop :=
  ∀ n, P16520446395438005226.a n = A142993 n

end A142993

/-! ## A142993.P16773271513706923594

`Δ[n²]*A057813(n)`
-/

namespace A142993.P16773271513706923594
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) * A057813 n

end

end A142993.P16773271513706923594

namespace A142993

/-- `Δ[n²]*A057813(n)` -/
def P16773271513706923594.Spec : Prop :=
  ∀ n, P16773271513706923594.a n = A142993 n

end A142993

/-! ## A142993.P14265879934298271316

`2*((2*n+1)*A050533(n)+n)+1`
-/

namespace A142993.P14265879934298271316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((2 * n + 1 : ℤ) * A050533 n + (n : ℤ)) + 1

end

end A142993.P14265879934298271316

namespace A142993

/-- `2*((2*n+1)*A050533(n)+n)+1` -/
def P14265879934298271316.Spec : Prop :=
  ∀ n, P14265879934298271316.a n = A142993 n

end A142993

/-! ## A142993.P15862263910019041782

`A384288(n)+A107731(n)`
-/

namespace A142993.P15862263910019041782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384288 n + A107731 n

end

end A142993.P15862263910019041782

namespace A142993

/-- `A384288(n)+A107731(n)` -/
def P15862263910019041782.Spec : Prop :=
  ∀ n, P15862263910019041782.a n = A142993 n

end A142993

/-! ## A142993.P4871943587611585551

`A001845(n)²-A002492(n)²`
-/

namespace A142993.P4871943587611585551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001845 n ^ 2 - A002492 n ^ 2

end

end A142993.P4871943587611585551

namespace A142993

/-- `A001845(n)²-A002492(n)²` -/
def P4871943587611585551.Spec : Prop :=
  ∀ n, P4871943587611585551.a n = A142993 n

end A142993

/-! ## A142993.P2753414781337275279

`Δ[Δ[Δ[C(2*n+1, 7)]]]`
-/

namespace A142993.P2753414781337275279
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n + 1) 7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f3 (n + 1) : ℤ) - (f3 n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A142993.P2753414781337275279

namespace A142993

/-- `Δ[Δ[Δ[C(2*n+1, 7)]]]` -/
def P2753414781337275279.Spec : Prop :=
  ∀ n, P2753414781337275279.a n = A142993 n

end A142993

/-! ## A142993.P11110279438703393860

`∑[A008412(2*n)]`
-/

namespace A142993.P11110279438703393860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008412 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A142993.P11110279438703393860

namespace A142993

/-- `∑[A008412(2*n)]` -/
def P11110279438703393860.Spec : Prop :=
  ∀ n, P11110279438703393860.a n = A142993 n

end A142993

/-! ## A142993.P2399278716555925049

`∑[∑[A115293(2*n)]]`
-/

namespace A142993.P2399278716555925049
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115293 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A142993.P2399278716555925049

namespace A142993

/-- `∑[∑[A115293(2*n)]]` -/
def P2399278716555925049.Spec : Prop :=
  ∀ n, P2399278716555925049.a n = A142993 n

end A142993

/-! ## A142993.P15733463046179462850

`A008412(n+n)+a(n-1)` with `a(0)=1`
-/

namespace A142993.P15733463046179462850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A008412 (n + n) + a (n - 1)

end

end A142993.P15733463046179462850

namespace A142993

/-- `A008412(n+n)+a(n-1)` -/
def P15733463046179462850.Spec : Prop :=
  ∀ n, P15733463046179462850.a n = A142993 n

end A142993

/-! ## A142993.P9055479613683907738

`A014820(2*n)`
-/

namespace A142993.P9055479613683907738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014820 (2 * n)

end

end A142993.P9055479613683907738

namespace A142993

/-- `A014820(2*n)` -/
def P9055479613683907738.Spec : Prop :=
  ∀ n, P9055479613683907738.a n = A142993 n

end A142993

/-! ## A142993.P15790026495345192512

`(2*n+1)*A167875(2*n)`
-/

namespace A142993.P15790026495345192512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * A167875 (2 * n)

end

end A142993.P15790026495345192512

namespace A142993

/-- `(2*n+1)*A167875(2*n)` -/
def P15790026495345192512.Spec : Prop :=
  ∀ n, P15790026495345192512.a n = A142993 n

end A142993

/-! ## A142993.P11764787369233393572

`(2*n+1)*A006527(2*n+1)`
-/

namespace A142993.P11764787369233393572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * A006527 (2 * n + 1)

end

end A142993.P11764787369233393572

namespace A142993

/-- `(2*n+1)*A006527(2*n+1)` -/
def P11764787369233393572.Spec : Prop :=
  ∀ n, P11764787369233393572.a n = A142993 n

end A142993

/-! ## A142993.P13197138702491150157

`(2*n+1)*A167238(2*n+1)`
-/

namespace A142993.P13197138702491150157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * A167238 (2 * n + 1)

end

end A142993.P13197138702491150157

namespace A142993

/-- `(2*n+1)*A167238(2*n+1)` -/
def P13197138702491150157.Spec : Prop :=
  ∀ n, P13197138702491150157.a n = A142993 n

end A142993

/-! ## A142993.P10992906174799103199

`(2*n+1)*A178946(2*n+1)`
-/

namespace A142993.P10992906174799103199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * A178946 (2 * n + 1)

end

end A142993.P10992906174799103199

namespace A142993

/-- `(2*n+1)*A178946(2*n+1)` -/
def P10992906174799103199.Spec : Prop :=
  ∀ n, P10992906174799103199.a n = A142993 n

end A142993

/-! ## A142993.P2686324797558326037

`A100188(2*n+1)+A002378(2*n)`
-/

namespace A142993.P2686324797558326037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100188 (2 * n + 1) + A002378 (2 * n)

end

end A142993.P2686324797558326037

namespace A142993

/-- `A100188(2*n+1)+A002378(2*n)` -/
def P2686324797558326037.Spec : Prop :=
  ∀ n, P2686324797558326037.a n = A142993 n

end A142993

/-! ## A142993.P8037533416384685286

`A006324(2*n+1)-A016061(2*n)`
-/

namespace A142993.P8037533416384685286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006324 (2 * n + 1) - A016061 (2 * n)

end

end A142993.P8037533416384685286

namespace A142993

/-- `A006324(2*n+1)-A016061(2*n)` -/
def P8037533416384685286.Spec : Prop :=
  ∀ n, P8037533416384685286.a n = A142993 n

end A142993

/-! ## A142993.P10408274823586769338

`A071238(2*n+1)-A000330(2*n)`
-/

namespace A142993.P10408274823586769338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071238 (2 * n + 1) - A000330 (2 * n)

end

end A142993.P10408274823586769338

namespace A142993

/-- `A071238(2*n+1)-A000330(2*n)` -/
def P10408274823586769338.Spec : Prop :=
  ∀ n, P10408274823586769338.a n = A142993 n

end A142993

/-!
# A142994: Crystal ball sequence for the lattice C_5.

The programs for A142994, the canonical program `A142994.P872285276720751459` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142994 has offset 0).

The definition of A142994 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A142994.P872285276720751459

`(2*n+1)*(32*n^4+64*n^3+88*n²+56*n+15)/15`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A142994

/-- `(2*n+1)*(32*n^4+64*n^3+88*n²+56*n+15)/15` -/
def P872285276720751459.Spec : Prop :=
  ∀ n, P872285276720751459.a n = (A142994 n : ℚ)

end A142994

/-! ## A142994.P2653885444062980707

`∑[A019561(n)]`
-/

namespace A142994.P2653885444062980707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019561 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A142994.P2653885444062980707

namespace A142994

/-- `∑[A019561(n)]` -/
def P2653885444062980707.Spec : Prop :=
  ∀ n, P2653885444062980707.a n = A142994 n

end A142994

/-! ## A142994.P2588141820950321942

`∑[A010006(n)+n*A019560(n)]`
-/

namespace A142994.P2588141820950321942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010006 n + (n : ℤ) * A019560 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A142994.P2588141820950321942

namespace A142994

/-- `∑[A010006(n)+n*A019560(n)]` -/
def P2588141820950321942.Spec : Prop :=
  ∀ n, P2588141820950321942.a n = A142994 n

end A142994

/-! ## A142994.P11056496862693672943

`∑[A008413(2*n)]`
-/

namespace A142994.P11056496862693672943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008413 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A142994.P11056496862693672943

namespace A142994

/-- `∑[A008413(2*n)]` -/
def P11056496862693672943.Spec : Prop :=
  ∀ n, P11056496862693672943.a n = A142994 n

end A142994

/-! ## A142994.P6129317173430368247

`A008413(n+n)+a(n-1)` with `a(0)=1`
-/

namespace A142994.P6129317173430368247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A008413 (n + n) + a (n - 1)

end

end A142994.P6129317173430368247

namespace A142994

/-- `A008413(n+n)+a(n-1)` -/
def P6129317173430368247.Spec : Prop :=
  ∀ n, P6129317173430368247.a n = A142994 n

end A142994

/-! ## A142994.P16800509483555590766

`A069038(Δ[n²])`
-/

namespace A142994.P16800509483555590766
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069038 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A142994.P16800509483555590766

namespace A142994

/-- `A069038(Δ[n²])` -/
def P16800509483555590766.Spec : Prop :=
  ∀ n, P16800509483555590766.a n = A142994 n

end A142994

/-! ## A142994.P6912497254784741746

`A069038(2*n)+A001846(2*n)`
-/

namespace A142994.P6912497254784741746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069038 (2 * n) + A001846 (2 * n)

end

end A142994.P6912497254784741746

namespace A142994

/-- `A069038(2*n)+A001846(2*n)` -/
def P6912497254784741746.Spec : Prop :=
  ∀ n, P6912497254784741746.a n = A142994 n

end A142994

/-! ## A142994.P9373690423524704188

`A001847(2*n)-A069038(2*n)`
-/

namespace A142994.P9373690423524704188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001847 (2 * n) - A069038 (2 * n)

end

end A142994.P9373690423524704188

namespace A142994

/-- `A001847(2*n)-A069038(2*n)` -/
def P9373690423524704188.Spec : Prop :=
  ∀ n, P9373690423524704188.a n = A142994 n

end A142994

/-! ## A142994.P1897882532248575139

`A061927(2*n+1)+A061927(2*n)`
-/

namespace A142994.P1897882532248575139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061927 (2 * n + 1) + A061927 (2 * n)

end

end A142994.P1897882532248575139

namespace A142994

/-- `A061927(2*n+1)+A061927(2*n)` -/
def P1897882532248575139.Spec : Prop :=
  ∀ n, P1897882532248575139.a n = A142994 n

end A142994

/-! ## A142994.P13768042781847132596

`A277229(2*n+1)+A277228(2*n)`
-/

namespace A142994.P13768042781847132596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277229 (2 * n + 1) + A277228 (2 * n)

end

end A142994.P13768042781847132596

namespace A142994

/-- `A277229(2*n+1)+A277228(2*n)` -/
def P13768042781847132596.Spec : Prop :=
  ∀ n, P13768042781847132596.a n = A142994 n

end A142994

/-! ## A142994.P6111196898974679655

`A001847(2*n)-A035599(2*n)/2`
-/

namespace A142994.P6111196898974679655
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001847 (2 * n) : ℚ) - (A035599 (2 * n) : ℚ) / 2

end

end A142994.P6111196898974679655

namespace A142994

/-- `A001847(2*n)-A035599(2*n)/2` -/
def P6111196898974679655.Spec : Prop :=
  ∀ n, P6111196898974679655.a n = (A142994 n : ℚ)

end A142994

/-! ## A142994.P600329172378862852

`A131176(2*n+1)+A082107(2*n+1)`
-/

namespace A142994.P600329172378862852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131176 (2 * n + 1) + A082107 (2 * n + 1)

end

end A142994.P600329172378862852

namespace A142994

/-- `A131176(2*n+1)+A082107(2*n+1)` -/
def P600329172378862852.Spec : Prop :=
  ∀ n, P600329172378862852.a n = A142994 n

end A142994

/-! ## A142994.P8920292549505524072

`A035599(2*n+1)-A069038(2*n+1)`
-/

namespace A142994.P8920292549505524072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035599 (2 * n + 1) - A069038 (2 * n + 1)

end

end A142994.P8920292549505524072

namespace A142994

/-- `A035599(2*n+1)-A069038(2*n+1)` -/
def P8920292549505524072.Spec : Prop :=
  ∀ n, P8920292549505524072.a n = A142994 n

end A142994

/-! ## A142994.P2552974020513366517

`A290360(2*n+1)-A006325(2*n+1)`
-/

namespace A142994.P2552974020513366517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290360 (2 * n + 1) - A006325 (2 * n + 1)

end

end A142994.P2552974020513366517

namespace A142994

/-- `A290360(2*n+1)-A006325(2*n+1)` -/
def P2552974020513366517.Spec : Prop :=
  ∀ n, P2552974020513366517.a n = A142994 n

end A142994

/-! ## A142994.P13095496449056488160

`∑[∑[A287324(2*n+1)+A287324(2*n)]]`
-/

namespace A142994.P13095496449056488160
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287324 (2 * n + 1) + A287324 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A142994.P13095496449056488160

namespace A142994

/-- `∑[∑[A287324(2*n+1)+A287324(2*n)]]` -/
def P13095496449056488160.Spec : Prop :=
  ∀ n, P13095496449056488160.a n = A142994 n

end A142994

/-! ## A142994.P5134669832083788489

`gcd(A069038(2*n+1)*A069038(n+1), A069038(2*n+1))`
-/

namespace A142994.P5134669832083788489
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A069038 (2 * n + 1) * A069038 (n + 1)) (A069038 (2 * n + 1))

end

end A142994.P5134669832083788489

namespace A142994

/-- `gcd(A069038(2*n+1)*A069038(n+1), A069038(2*n+1))` -/
def P5134669832083788489.Spec : Prop :=
  ∀ n, (P5134669832083788489.a n : ℤ) = A142994 n

end A142994

/-!
# A142995: a(0) = 0, a(1) = 1, a(n+1) = (2*n^2 + 2*n + 3)*a(n) - n^4*a(n-1), n >= 1.

The programs for A142995, there is no canonical definition to state claims against.
-/

/-! ## A142995.P12374099598302462918

`A052406(A326490(n²))`
-/

namespace A142995.P12374099598302462918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052406 (A326490 (n ^ 2)).toNat

end

end A142995.P12374099598302462918

/-!
# A142996: a(0) = 0, a(1) = 1, a(n+1) = (2*n^2+2*n+7)*a(n) - n^4*a(n-1), n >= 1.

The programs for A142996, there is no canonical definition to state claims against.
-/

/-! ## A142996.P2510961237499136420

`A005206(A179497(n+1)+1)-1`
-/

namespace A142996.P2510961237499136420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005206 (A179497 (n + 1) + 1).toNat - 1

end

end A142996.P2510961237499136420

/-!
# A142999: a(0) = 0, a(1) = 1; for n > 1, a(n+1) = (2*n + 1)*a(n) + n^4*a(n-1).

The programs for A142999, the canonical program `A142999.P11229539780927841453` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142999 has offset 0).

The definition of A142999 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A142999.P11229539780927841453

`(2*(n-1)+1)*a(n-1)+(n-1)^4*a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A142999

/-- `(2*(n-1)+1)*a(n-1)+(n-1)^4*a(n-2)` -/
def P11229539780927841453.Spec : Prop :=
  ∀ n, P11229539780927841453.a n = A142999 n

theorem P11229539780927841453.correct : P11229539780927841453.Spec := by
  intro n
  simp only [A142999]

end A142999

