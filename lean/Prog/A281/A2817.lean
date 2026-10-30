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
import Seq.B000.C031
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C042
import Seq.B000.C043
import Seq.B000.C044
import Seq.B000.C045
import Seq.B000.C047
import Seq.B000.C050
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C011
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
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
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C024

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A281700: Number of examples for Simpson's paradox with data items in {0,1,...,n}.

The programs for A281700, there is no canonical definition to state claims against.
-/

/-! ## A281700.P1981525035014158444

`A164736(A369620(n))*A337635(n)`
-/

namespace A281700.P1981525035014158444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164736 (A369620 n).toNat * A337635 n

end

end A281700.P1981525035014158444

/-! ## A281700.P6770223388185639033

`A164736(A369620(n))*A356607(n)`
-/

namespace A281700.P6770223388185639033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164736 (A369620 n).toNat * A356607 n

end

end A281700.P6770223388185639033

/-!
# A281702: Numbers k such that A001221(k) = A001221(A000326(k)).

The programs for A281702, the canonical program `A281702.P5613369963216576044` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A281702 has offset 1).

The definition of A281702 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 313 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A281702.P8361805862110274774

`record[A266303(A278529(A000961(n+1)))]`
-/

namespace A281702.P8361805862110274774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266303 (A278529 (A000961 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A281702.P8361805862110274774

namespace A281702

/-- `record[A266303(A278529(A000961(n+1)))]` -/
def P8361805862110274774.Spec : Prop :=
  ∀ n, P8361805862110274774.a n = A281702 (n + 1)

end A281702

/-! ## A281702.P4723232190720764561

`record[A267354(A278539(A034699(n+1)))]`
-/

namespace A281702.P4723232190720764561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267354 (A278539 (A034699 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A281702.P4723232190720764561

namespace A281702

/-- `record[A267354(A278539(A034699(n+1)))]` -/
def P4723232190720764561.Spec : Prop :=
  ∀ n, P4723232190720764561.a n = A281702 (n + 1)

end A281702

/-! ## A281702.P5613369963216576044

`eq[2, A000095(3*n+2)]+1`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A281702

/-- `eq[2, A000095(3*n+2)]+1` -/
def P5613369963216576044.Spec : Prop :=
  ∀ n, (P5613369963216576044.a n : ℤ) = A281702 (n + 1)

theorem P5613369963216576044.correct : P5613369963216576044.Spec := by
  intro n
  simp only [A281702, Nat.add_sub_cancel]

end A281702

/-! ## A281702.P8412745999687451661

`record[A163491(A344969(4*n+1))]`
-/

namespace A281702.P8412745999687451661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163491 (A344969 (4 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A281702.P8412745999687451661

namespace A281702

/-- `record[A163491(A344969(4*n+1))]` -/
def P8412745999687451661.Spec : Prop :=
  ∀ n, P8412745999687451661.a n = A281702 (n + 1)

end A281702

/-! ## A281702.P16711543036691417965

`eq[2, A035181(A014963(A022429(n)))]`
-/

namespace A281702.P16711543036691417965
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035181 (A014963 (A022429 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A281702.P16711543036691417965

namespace A281702

/-- `eq[2, A035181(A014963(A022429(n)))]` -/
def P16711543036691417965.Spec : Prop :=
  ∀ n, (P16711543036691417965.a n : ℤ) = A281702 (n + 1)

end A281702

/-! ## A281702.P10308408550108595127

`record[A009531(A008620(A074583(n+1)))]`
-/

namespace A281702.P10308408550108595127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009531 (A008620 (A074583 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A281702.P10308408550108595127

namespace A281702

/-- `record[A009531(A008620(A074583(n+1)))]` -/
def P10308408550108595127.Spec : Prop :=
  ∀ n, P10308408550108595127.a n = A281702 (n + 1)

end A281702

/-! ## A281702.P18423383546674026175

`record[A345999(6*n+3+6*n)]`
-/

namespace A281702.P18423383546674026175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345999 (6 * n + 3 + 6 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A281702.P18423383546674026175

namespace A281702

/-- `record[A345999(6*n+3+6*n)]` -/
def P18423383546674026175.Spec : Prop :=
  ∀ n, P18423383546674026175.a n = A281702 (n + 1)

end A281702

/-!
# A281703: Numbers k such that A000005(k) = A000005(A000326(k)).

The programs for A281703, the canonical program `A281703.P6915530931857286295` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A281703 has offset 1).

The definition of A281703 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A281703.P10479233175389185809

`(p?[or(2, 3*n)-9]+1)/3`
-/

namespace A281703.P10479233175389185809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 2 (3 * n) : ℤ) - 9

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 1 : ℚ) / 3

end

end A281703.P10479233175389185809

namespace A281703

/-- `(p?[or(2, 3*n)-9]+1)/3` -/
def P10479233175389185809.Spec : Prop :=
  ∀ n, P10479233175389185809.a n = (A281703 (n + 1) : ℚ)

end A281703

/-! ## A281703.P13423761854489198922

`(A243183(n+1)+1)/3`
-/

namespace A281703.P13423761854489198922
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A243183 (n + 1) + 1 : ℚ) / 3

end

end A281703.P13423761854489198922

namespace A281703

/-- `(A243183(n+1)+1)/3` -/
def P13423761854489198922.Spec : Prop :=
  ∀ n, P13423761854489198922.a n = (A281703 (n + 1) : ℚ)

end A281703

/-! ## A281703.P6915530931857286295

`ceil(p?[A100531(n)+1+n]/3)`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A281703

/-- `ceil(p?[A100531(n)+1+n]/3)` -/
def P6915530931857286295.Spec : Prop :=
  ∀ n, P6915530931857286295.a n = A281703 (n + 1)

theorem P6915530931857286295.correct : P6915530931857286295.Spec := by
  intro n
  simp only [A281703, Nat.add_sub_cancel]

end A281703

/-! ## A281703.P1788073713428503801

`eq[1, A001222(xor(2, n+2)+2*(n+1))]+1`
-/

namespace A281703.P1788073713428503801
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Nat.xor 2 (n + 2) + 2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A281703.P1788073713428503801

namespace A281703

/-- `eq[1, A001222(xor(2, n+2)+2*(n+1))]+1` -/
def P1788073713428503801.Spec : Prop :=
  ∀ n, (P1788073713428503801.a n : ℤ) = A281703 (n + 1)

end A281703

/-! ## A281703.P6903419301601811821

`record[A099254(A067076(n+1))]`
-/

namespace A281703.P6903419301601811821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099254 (A067076 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A281703.P6903419301601811821

namespace A281703

/-- `record[A099254(A067076(n+1))]` -/
def P6903419301601811821.Spec : Prop :=
  ∀ n, P6903419301601811821.a n = A281703 (n + 1)

end A281703

/-! ## A281703.P1705314255492967618

`filter[A087370(n+1), A166486(#)]`
-/

namespace A281703.P1705314255492967618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A166486 (f1 j).toNat = 1) n)

end

end A281703.P1705314255492967618

namespace A281703

/-- `filter[A087370(n+1), A166486(#)]` -/
def P1705314255492967618.Spec : Prop :=
  ∀ n, P1705314255492967618.a n = A281703 (n + 1)

end A281703

/-! ## A281703.P17378989039708462176

`filter[A087370(n+1), A359374(#)]`
-/

namespace A281703.P17378989039708462176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359374 (f1 j).toNat = 1) n)

end

end A281703.P17378989039708462176

namespace A281703

/-- `filter[A087370(n+1), A359374(#)]` -/
def P17378989039708462176.Spec : Prop :=
  ∀ n, P17378989039708462176.a n = A281703 (n + 1)

end A281703

/-! ## A281703.P17449336348100089957

`filter[A087370(n+1), A359820(#)]`
-/

namespace A281703.P17449336348100089957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359820 (f1 j).toNat = 1) n)

end

end A281703.P17449336348100089957

namespace A281703

/-- `filter[A087370(n+1), A359820(#)]` -/
def P17449336348100089957.Spec : Prop :=
  ∀ n, P17449336348100089957.a n = A281703 (n + 1)

end A281703

/-! ## A281703.P9026329693147233571

`filter[A087370(n+1), A391844(#)]`
-/

namespace A281703.P9026329693147233571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A391844 (f1 j).toNat = 1) n)

end

end A281703.P9026329693147233571

namespace A281703

/-- `filter[A087370(n+1), A391844(#)]` -/
def P9026329693147233571.Spec : Prop :=
  ∀ n, P9026329693147233571.a n = A281703 (n + 1)

end A281703

/-! ## A281703.P14038435076857286471

`∩[A087370(n+1), A014528(n)]`
-/

namespace A281703.P14038435076857286471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087370 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014528 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A281703.P14038435076857286471

namespace A281703

/-- `∩[A087370(n+1), A014528(n)]` -/
def P14038435076857286471.Spec : Prop :=
  ∀ n, (P14038435076857286471.a n : ℤ) = A281703 (n + 1)

end A281703

/-! ## A281703.P3343471694930115601

`∩[A087370(n+1), A053438(n)]`
-/

namespace A281703.P3343471694930115601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087370 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053438 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A281703.P3343471694930115601

namespace A281703

/-- `∩[A087370(n+1), A053438(n)]` -/
def P3343471694930115601.Spec : Prop :=
  ∀ n, (P3343471694930115601.a n : ℤ) = A281703 (n + 1)

end A281703

/-! ## A281703.P14287145731584548239

`∩[A042963(n+1), A087370(n+1)]`
-/

namespace A281703.P14287145731584548239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042963 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087370 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A281703.P14287145731584548239

namespace A281703

/-- `∩[A042963(n+1), A087370(n+1)]` -/
def P14287145731584548239.Spec : Prop :=
  ∀ n, (P14287145731584548239.a n : ℤ) = A281703 (n + 1)

end A281703

/-! ## A281703.P5274630807575663825

`∩[A042968(n+1), A087370(n+1)]`
-/

namespace A281703.P5274630807575663825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042968 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087370 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A281703.P5274630807575663825

namespace A281703

/-- `∩[A042968(n+1), A087370(n+1)]` -/
def P5274630807575663825.Spec : Prop :=
  ∀ n, (P5274630807575663825.a n : ℤ) = A281703 (n + 1)

end A281703

/-! ## A281703.P5794231741667775578

`∩[A047396(n+1), A087370(n+1)]`
-/

namespace A281703.P5794231741667775578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047396 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087370 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A281703.P5794231741667775578

namespace A281703

/-- `∩[A047396(n+1), A087370(n+1)]` -/
def P5794231741667775578.Spec : Prop :=
  ∀ n, (P5794231741667775578.a n : ℤ) = A281703 (n + 1)

end A281703

/-! ## A281703.P10365976291761483554

`∩[A047404(n+1), A087370(n+1)]`
-/

namespace A281703.P10365976291761483554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047404 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087370 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A281703.P10365976291761483554

namespace A281703

/-- `∩[A047404(n+1), A087370(n+1)]` -/
def P10365976291761483554.Spec : Prop :=
  ∀ n, (P10365976291761483554.a n : ℤ) = A281703 (n + 1)

end A281703

/-! ## A281703.P13219435654942230183

`∩[A047449(n+1), A087370(n+1)]`
-/

namespace A281703.P13219435654942230183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047449 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087370 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A281703.P13219435654942230183

namespace A281703

/-- `∩[A047449(n+1), A087370(n+1)]` -/
def P13219435654942230183.Spec : Prop :=
  ∀ n, (P13219435654942230183.a n : ℤ) = A281703 (n + 1)

end A281703

/-! ## A281703.P3093896696004709256

`∩[A047554(n+1), A087370(n+1)]`
-/

namespace A281703.P3093896696004709256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047554 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087370 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A281703.P3093896696004709256

namespace A281703

/-- `∩[A047554(n+1), A087370(n+1)]` -/
def P3093896696004709256.Spec : Prop :=
  ∀ n, (P3093896696004709256.a n : ℤ) = A281703 (n + 1)

end A281703

/-! ## A281703.P14410355755608190788

`∩[A047561(n+1), A087370(n+1)]`
-/

namespace A281703.P14410355755608190788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047561 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087370 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A281703.P14410355755608190788

namespace A281703

/-- `∩[A047561(n+1), A087370(n+1)]` -/
def P14410355755608190788.Spec : Prop :=
  ∀ n, (P14410355755608190788.a n : ℤ) = A281703 (n + 1)

end A281703

/-! ## A281703.P2464057291172755878

`∩[A047580(n+1), A087370(n+1)]`
-/

namespace A281703.P2464057291172755878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047580 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087370 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A281703.P2464057291172755878

namespace A281703

/-- `∩[A047580(n+1), A087370(n+1)]` -/
def P2464057291172755878.Spec : Prop :=
  ∀ n, (P2464057291172755878.a n : ℤ) = A281703 (n + 1)

end A281703

/-! ## A281703.P15729818320612574003

`∩[A087370(n+1), A111284(n+1)]`
-/

namespace A281703.P15729818320612574003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087370 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111284 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A281703.P15729818320612574003

namespace A281703

/-- `∩[A087370(n+1), A111284(n+1)]` -/
def P15729818320612574003.Spec : Prop :=
  ∀ n, (P15729818320612574003.a n : ℤ) = A281703 (n + 1)

end A281703

/-!
# A281704: Expansion of Sum_{i>=1} x^(i^2) / (1 - Sum_{j>=1} x^(j^2))^2.

The programs for A281704, there is no canonical definition to state claims against.
-/

/-! ## A281704.P15916629979385562108

`∑{#}[n+1, #*A337165(C(n+2, 2)+#)]`
-/

namespace A281704.P15916629979385562108
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (k : ℤ) * A337165 (Nat.choose (n + 2) 2 + k)

end

end A281704.P15916629979385562108

/-! ## A281704.P2237205915606188985

`A035936(A078057(n))-A284674(n+1)`
-/

namespace A281704.P2237205915606188985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035936 (A078057 n).toNat - A284674 (n + 1)

end

end A281704.P2237205915606188985

/-! ## A281704.P17714890693598787872

`or(A003056(A038746(n+2)), A033104(n+1))`
-/

namespace A281704.P17714890693598787872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A003056 (A038746 (n + 2)).toNat) (A033104 (n + 1))

end

end A281704.P17714890693598787872

/-! ## A281704.P1728552001271316844

`∑[A000005(∏{p}[n!, n+1-#])]`
-/

namespace A281704.P1728552001271316844
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (∏ p ∈ Nat.primeFactors (f2 n), ((n + 1 : ℤ) - (p : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A281704.P1728552001271316844

/-! ## A281704.P472555783128928866

`A293411(n)+A062153(A148192(n))`
-/

namespace A281704.P472555783128928866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293411 n + A062153 (A148192 n).toNat

end

end A281704.P472555783128928866

/-!
# A281706: Number of sets of three positive numbers <= n whose sum is a square.

The programs for A281706, there is no canonical definition to state claims against.
-/

/-! ## A281706.P4186975748153378451

`A281871(A152950(n+1))%A098331(n)`
-/

namespace A281706.P4186975748153378451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A281871 (A152950 (n + 1)).toNat) (A098331 n)

end

end A281706.P4186975748153378451

/-! ## A281706.P4190621965197914460

`A281871(A152950(n+1))-A000007(A342263(n))`
-/

namespace A281706.P4190621965197914460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281871 (A152950 (n + 1)).toNat - A000007 (A342263 n).toNat

end

end A281706.P4190621965197914460

/-! ## A281706.P11584573011295702413

`A179184(A005378(n))*A281871(A152950(n+1))`
-/

namespace A281706.P11584573011295702413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179184 (A005378 n).toNat * A281871 (A152950 (n + 1)).toNat

end

end A281706.P11584573011295702413

/-! ## A281706.P10643622134969047525

`A157928(A112310(n))*A281871(A152950(n+1))`
-/

namespace A281706.P10643622134969047525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157928 (A112310 n).toNat * A281871 (A152950 (n + 1)).toNat

end

end A281706.P10643622134969047525

/-! ## A281706.P14242676253787629564

`A179184(A003056(n)+1)*A281871(A152950(n+1))`
-/

namespace A281706.P14242676253787629564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179184 (A003056 n + 1).toNat * A281871 (A152950 (n + 1)).toNat

end

end A281706.P14242676253787629564

/-!
# A281707: Even integers k such that phi(sum of even divisors of k) = sum of odd divisors of k.

The programs for A281707, there is no canonical definition to state claims against.
-/

/-! ## A281707.P14483224424400978672

`2*A046528(n+1)`
-/

namespace A281707.P14483224424400978672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A046528 (n + 1)

end

end A281707.P14483224424400978672

/-! ## A281707.P3178692789757480185

`lcm(2, A046528(A000027(n+1)))`
-/

namespace A281707.P3178692789757480185
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A046528 (A000027 (n + 1)).toNat)

end

end A281707.P3178692789757480185

/-! ## A281707.P7000107768060029117

`lcm(A046528(n+1), A076303(n+1))`
-/

namespace A281707.P7000107768060029117
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A046528 (n + 1)) (A076303 (n + 1))

end

end A281707.P7000107768060029117

/-! ## A281707.P16518055237000572023

`2*∩[A054784(n+1), A282572(n+1)]`
-/

namespace A281707.P16518055237000572023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054784 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282572 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A281707.P16518055237000572023

/-! ## A281707.P3651231512416851859

`2*∪[A051281(n+1), A254603(n+1)]`
-/

namespace A281707.P3651231512416851859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051281 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254603 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A281707.P3651231512416851859

/-!
# A281709: Number of n X n 0..1 arrays with no element unequal to a strict majority of its horizontal, diagonal and antidiagonal neighbors and with new values introduced in order 0 sequentially upwards.

The programs for A281709, there is no canonical definition to state claims against.
-/

/-! ## A281709.P3433278672199778974

`A281715(∑[4*n]+1)`
-/

namespace A281709.P3433278672199778974
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281715 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A281709.P3433278672199778974

/-! ## A281709.P12922386301370764198

`A281715(A001844(n))+char[10]`
-/

namespace A281709.P12922386301370764198
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281715 (A001844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A281709.P12922386301370764198

/-! ## A281709.P4942979809689904325

`record[A003982(n)*A281715(n+1)]`
-/

namespace A281709.P4942979809689904325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A281715 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A281709.P4942979809689904325

/-! ## A281709.P9812523292784113429

`record[A077606(n+1)*A281715(n+1)]`
-/

namespace A281709.P9812523292784113429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077606 (n + 1) * A281715 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A281709.P9812523292784113429

/-! ## A281709.P2428526188931900223

`record[gcd(A204016(n+1), A281715(n+1))]`
-/

namespace A281709.P2428526188931900223
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A204016 (n + 1)) (A281715 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A281709.P2428526188931900223

/-!
# A281710: Number of n X 3 0..1 arrays with no element unequal to a strict majority of its horizontal, diagonal and antidiagonal neighbors and with new values introduced in order 0 sequentially upwards.

The programs for A281710, the canonical program `A281710.P2363071738315247686` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A281710 has offset 1).

The definition of A281710 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 478 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A281710.P11773251109120540452

`ogf((1+5x-6x^2-x^3-4x^4-4x^5)/(1-2x+x^3))`
-/

namespace A281710.P11773251109120540452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 5, -6, -1, -4, -4] [1, -2, 0, 1] n

end

end A281710.P11773251109120540452

namespace A281710

/-- `ogf((1+5x-6x^2-x^3-4x^4-4x^5)/(1-2x+x^3))` -/
def P11773251109120540452.Spec : Prop :=
  ∀ n, P11773251109120540452.a n = A281710 (n + 1)

end A281710

/-! ## A281710.P2363071738315247686

`2*a(n-1)-a(n-3)` with `a(0)=1, a(1)=7, a(2)=8, a(3)=14, a(4)=17, a(5)=22`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A281710

/-- `2*a(n-1)-a(n-3)` -/
def P2363071738315247686.Spec : Prop :=
  ∀ n, P2363071738315247686.a n = A281710 (n + 1)

theorem P2363071738315247686.correct : P2363071738315247686.Spec := by
  intro n
  simp only [A281710, Nat.add_sub_cancel]

end A281710

/-! ## A281710.P17784673391610171738

`A281715(∑[n+3]+1)`
-/

namespace A281710.P17784673391610171738
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281715 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A281710.P17784673391610171738

namespace A281710

/-- `A281715(∑[n+3]+1)` -/
def P17784673391610171738.Spec : Prop :=
  ∀ n, P17784673391610171738.a n = A281710 (n + 1)

end A281710

/-! ## A281710.P11707915440577558401

`record[A281715(abs(A255878(n+1)))]`
-/

namespace A281710.P11707915440577558401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281715 |A255878 (n + 1)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A281710.P11707915440577558401

namespace A281710

/-- `record[A281715(abs(A255878(n+1)))]` -/
def P11707915440577558401.Spec : Prop :=
  ∀ n, P11707915440577558401.a n = A281710 (n + 1)

end A281710

/-! ## A281710.P12628581839039744240

`record[A010054(n+3)*A281715(n+1)]`
-/

namespace A281710.P12628581839039744240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (n + 3) * A281715 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A281710.P12628581839039744240

namespace A281710

/-- `record[A010054(n+3)*A281715(n+1)]` -/
def P12628581839039744240.Spec : Prop :=
  ∀ n, P12628581839039744240.a n = A281710 (n + 1)

end A281710

/-!
# A281711: Number of nX4 0..1 arrays with no element unequal to a strict majority of its horizontal, diagonal and antidiagonal neighbors and with new values introduced in order 0 sequentially upwards.

The programs for A281711, there is no canonical definition to state claims against.
-/

/-! ## A281711.P17963300166982689194

`A281715(∑[n+4]+3)`
-/

namespace A281711.P17963300166982689194
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281715 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A281711.P17963300166982689194

/-! ## A281711.P9144885610515632729

`A281715(A055998(n+2))%A042774(n)`
-/

namespace A281711.P9144885610515632729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A281715 (A055998 (n + 2)).toNat) (A042774 n)

end

end A281711.P9144885610515632729

/-! ## A281711.P17212937026371710171

`or(A281715(A055998(n+2)), A284258(n+4))`
-/

namespace A281711.P17212937026371710171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A281715 (A055998 (n + 2)).toNat) (A284258 (n + 4))

end

end A281711.P17212937026371710171

/-! ## A281711.P13208359045881705533

`or(A082784(3*(n+1)), A281715(A055998(n+2)))`
-/

namespace A281711.P13208359045881705533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A082784 (3 * (n + 1))) (A281715 (A055998 (n + 2)).toNat)

end

end A281711.P13208359045881705533

/-!
# A281712: Number of nX5 0..1 arrays with no element unequal to a strict majority of its horizontal, diagonal and antidiagonal neighbors and with new values introduced in order 0 sequentially upwards.

The programs for A281712, there is no canonical definition to state claims against.
-/

/-! ## A281712.P4431703856239924969

`A281715(∑[n+5]+6)`
-/

namespace A281712.P4431703856239924969
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281715 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A281712.P4431703856239924969

/-!
# A281713: Number of n X 6 0..1 arrays with no element unequal to a strict majority of its horizontal, diagonal and antidiagonal neighbors and with new values introduced in order 0 sequentially upwards.

The programs for A281713, there is no canonical definition to state claims against.
-/

/-! ## A281713.P12073172877085844044

`A281715(A052905(n+3))`
-/

namespace A281713.P12073172877085844044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281715 (A052905 (n + 3)).toNat

end

end A281713.P12073172877085844044

/-! ## A281713.P6827328667008104634

`A281715(eq[3, A219347(n)])`
-/

namespace A281713.P6827328667008104634
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281715 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A281713.P6827328667008104634

/-! ## A281713.P11905950305731048337

`A281715(eq[5, A193592(n)])`
-/

namespace A281713.P11905950305731048337
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281715 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A281713.P11905950305731048337

/-! ## A281713.P9384635187014156079

`A281715(eq[8, A258709(n)])`
-/

namespace A281713.P9384635187014156079
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258709 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281715 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A281713.P9384635187014156079

/-! ## A281713.P14259410871762595614

`A281715(A055999(n+3)+1)`
-/

namespace A281713.P14259410871762595614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281715 (A055999 (n + 3) + 1).toNat

end

end A281713.P14259410871762595614

/-!
# A281714: Number of n X 7 0..1 arrays with no element unequal to a strict majority of its horizontal, diagonal and antidiagonal neighbors and with new values introduced in order 0 sequentially upwards.

The programs for A281714, there is no canonical definition to state claims against.
-/

/-! ## A281714.P18231286759946628442

`A281715(A055999(n+4))`
-/

namespace A281714.P18231286759946628442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281715 (A055999 (n + 4)).toNat

end

end A281714.P18231286759946628442

/-! ## A281714.P4271929468394624681

`A281715(eq[4, A219347(n)])`
-/

namespace A281714.P4271929468394624681
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281715 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A281714.P4271929468394624681

/-! ## A281714.P15347638597902719063

`A281715(eq[6, A193592(n)])`
-/

namespace A281714.P15347638597902719063
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281715 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A281714.P15347638597902719063

/-! ## A281714.P13867497657974360186

`A281715(Δ[A023551(n+2)])`
-/

namespace A281714.P13867497657974360186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281715 (f1 (n + 1) - f1 n).toNat

end

end A281714.P13867497657974360186

/-! ## A281714.P4201467010743034665

`A281715(A052905(n+4)-1)`
-/

namespace A281714.P4201467010743034665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281715 (A052905 (n + 4) - 1).toNat

end

end A281714.P4201467010743034665

/-!
# A281716: Number of 2 X n 0..1 arrays with no element unequal to a strict majority of its horizontal, diagonal and antidiagonal neighbors and with new values introduced in order 0 sequentially upwards.

The programs for A281716, the canonical program `A281716.P4933120202861558162` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A281716 has offset 1).

The definition of A281716 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 296 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A281716.P883483785826646439

`ogf((2-3x-4x^2+2x^3+2x^4)/(1-3x-x^2+6x^3+2x^4-4x^5))`
-/

namespace A281716.P883483785826646439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -3, -4, 2, 2] [1, -3, -1, 6, 2, -4] n

end

end A281716.P883483785826646439

namespace A281716

/-- `ogf((2-3x-4x^2+2x^3+2x^4)/(1-3x-x^2+6x^3+2x^4-4x^5))` -/
def P883483785826646439.Spec : Prop :=
  ∀ n, P883483785826646439.a n = A281716 (n + 1)

end A281716

/-! ## A281716.P4933120202861558162

`3*a(n-1)+a(n-2)-6*a(n-3)-2*a(n-4)+4*a(n-5)` with `a(0)=2, a(1)=3, a(2)=7, a(3)=14, a(4)=29`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A281716

/-- `3*a(n-1)+a(n-2)-6*a(n-3)-2*a(n-4)+4*a(n-5)` -/
def P4933120202861558162.Spec : Prop :=
  ∀ n, P4933120202861558162.a n = A281716 (n + 1)

theorem P4933120202861558162.correct : P4933120202861558162.Spec := by
  intro n
  simp only [A281716, Nat.add_sub_cancel]

end A281716

/-! ## A281716.P15038682228508105879

`A052933(n)+2^n`
-/

namespace A281716.P15038682228508105879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052933 n + (2 ^ n : ℤ)

end

end A281716.P15038682228508105879

namespace A281716

/-- `A052933(n)+2^n` -/
def P15038682228508105879.Spec : Prop :=
  ∀ n, P15038682228508105879.a n = A281716 (n + 1)

end A281716

/-! ## A281716.P17961011841721275967

`A131577(n+1)+A052933(n)`
-/

namespace A281716.P17961011841721275967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 (n + 1) + A052933 n

end

end A281716.P17961011841721275967

namespace A281716

/-- `A131577(n+1)+A052933(n)` -/
def P17961011841721275967.Spec : Prop :=
  ∀ n, P17961011841721275967.a n = A281716 (n + 1)

end A281716

/-! ## A281716.P3387339097902609068

`A074323(2*n+1)+A052933(n)`
-/

namespace A281716.P3387339097902609068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074323 (2 * n + 1) + A052933 n

end

end A281716.P3387339097902609068

namespace A281716

/-- `A074323(2*n+1)+A052933(n)` -/
def P3387339097902609068.Spec : Prop :=
  ∀ n, P3387339097902609068.a n = A281716 (n + 1)

end A281716

/-! ## A281716.P15675819540447677183

`A156552(A000040(n+1))+A052933(n)`
-/

namespace A281716.P15675819540447677183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156552 (A000040 (n + 1)).toNat + A052933 n

end

end A281716.P15675819540447677183

namespace A281716

/-- `A156552(A000040(n+1))+A052933(n)` -/
def P15675819540447677183.Spec : Prop :=
  ∀ n, P15675819540447677183.a n = A281716 (n + 1)

end A281716

/-! ## A281716.P6994411202976128614

`A059268(A052905(n)-n)+A052933(n)`
-/

namespace A281716.P6994411202976128614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 (A052905 n - (n : ℤ)).toNat + A052933 n

end

end A281716.P6994411202976128614

namespace A281716

/-- `A059268(A052905(n)-n)+A052933(n)` -/
def P6994411202976128614.Spec : Prop :=
  ∀ n, P6994411202976128614.a n = A281716 (n + 1)

end A281716

/-! ## A281716.P14475119604556246618

`A059268(A052905(n+2))+A052933(n)`
-/

namespace A281716.P14475119604556246618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 (A052905 (n + 2)).toNat + A052933 n

end

end A281716.P14475119604556246618

namespace A281716

/-- `A059268(A052905(n+2))+A052933(n)` -/
def P14475119604556246618.Spec : Prop :=
  ∀ n, P14475119604556246618.a n = A281716 (n + 1)

end A281716

/-! ## A281716.P11311217366206410348

`A130321(∑[n])+A052933(n)`
-/

namespace A281716.P11311217366206410348
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 (∑ j ∈ Finset.range (n + 1), f1 j) + A052933 n

end

end A281716.P11311217366206410348

namespace A281716

/-- `A130321(∑[n])+A052933(n)` -/
def P11311217366206410348.Spec : Prop :=
  ∀ n, P11311217366206410348.a n = A281716 (n + 1)

end A281716

/-!
# A281717: Number of 3 X n 0..1 arrays with no element unequal to a strict majority of its horizontal, diagonal and antidiagonal neighbors and with new values introduced in order 0 sequentially upwards.

The programs for A281717, there is no canonical definition to state claims against.
-/

/-! ## A281717.P14166895217687101223

`A281715(∑[n+2]+4)`
-/

namespace A281717.P14166895217687101223
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281715 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A281717.P14166895217687101223

/-! ## A281717.P13831603676032278080

`A281715(A055998(n)+6)+char[23]`
-/

namespace A281717.P13831603676032278080
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  23

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281715 (A055998 n + 6).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A281717.P13831603676032278080

/-! ## A281717.P5684041030181194496

`A281715(A167614(n+1))+char[47]`
-/

namespace A281717.P5684041030181194496
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  47

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281715 (A167614 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A281717.P5684041030181194496

/-! ## A281717.P2472930400610540237

`A281715(A000217(n+2)+3)+char[49]`
-/

namespace A281717.P2472930400610540237
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  49

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281715 (A000217 (n + 2) + 3).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A281717.P2472930400610540237

/-! ## A281717.P10538229650199639387

`A324179(n+1)+A281715(A167614(n+1))`
-/

namespace A281717.P10538229650199639387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324179 (n + 1) + A281715 (A167614 (n + 1)).toNat

end

end A281717.P10538229650199639387

/-!
# A281718: Number of 4Xn 0..1 arrays with no element unequal to a strict majority of its horizontal, diagonal and antidiagonal neighbors and with new values introduced in order 0 sequentially upwards.

The programs for A281718, there is no canonical definition to state claims against.
-/

/-! ## A281718.P9103385691019445285

`A281715(∑[n+3]+7)`
-/

namespace A281718.P9103385691019445285
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281715 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A281718.P9103385691019445285

/-! ## A281718.P16101584998472835359

`A281715(A000096(n+2)+5)+char[20]`
-/

namespace A281718.P16101584998472835359
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  20

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281715 (A000096 (n + 2) + 5).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A281718.P16101584998472835359

/-! ## A281718.P1698087380864773769

`A014963(10*(n+1))*A281715(A000096(n+2)+5)`
-/

namespace A281718.P1698087380864773769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (10 * (n + 1)) * A281715 (A000096 (n + 2) + 5).toNat

end

end A281718.P1698087380864773769

/-! ## A281718.P6023140188145469205

`A000041(C(2, n+2))*A281715(A000096(n+2)+5)`
-/

namespace A281718.P6023140188145469205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose 2 (n + 2)) * A281715 (A000096 (n + 2) + 5).toNat

end

end A281718.P6023140188145469205

/-! ## A281718.P2599988681716229771

`A007318(C(n+2, 2))*A281715(A000096(n+2)+5)`
-/

namespace A281718.P2599988681716229771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose (n + 2) 2) * A281715 (A000096 (n + 2) + 5).toNat

end

end A281718.P2599988681716229771

/-!
# A281719: Number of 5Xn 0..1 arrays with no element unequal to a strict majority of its horizontal, diagonal and antidiagonal neighbors and with new values introduced in order 0 sequentially upwards.

The programs for A281719, there is no canonical definition to state claims against.
-/

/-! ## A281719.P10893151791064685736

`A281715(A167499(n+3))`
-/

namespace A281719.P10893151791064685736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281715 (A167499 (n + 3)).toNat

end

end A281719.P10893151791064685736

/-! ## A281719.P15303358750163646319

`A281715(A155212(n)+13)`
-/

namespace A281719.P15303358750163646319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281715 (A155212 n + 13).toNat

end

end A281719.P15303358750163646319

/-! ## A281719.P16723907944083714927

`A281715(A056000(n)+15)`
-/

namespace A281719.P16723907944083714927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281715 (A056000 n + 15).toNat

end

end A281719.P16723907944083714927

/-! ## A281719.P14811347429439515861

`A281715(eq[7, A066657(n)])`
-/

namespace A281719.P14811347429439515861
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281715 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A281719.P14811347429439515861

/-!
# A281720: Number of 6Xn 0..1 arrays with no element unequal to a strict majority of its horizontal, diagonal and antidiagonal neighbors and with new values introduced in order 0 sequentially upwards.

The programs for A281720, there is no canonical definition to state claims against.
-/

/-! ## A281720.P3836871178297246077

`A281715(∑[n+5]+16)`
-/

namespace A281720.P3836871178297246077
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281715 (∑ j ∈ Finset.range (n + 1), f1 j + 16)

end

end A281720.P3836871178297246077

/-! ## A281720.P14534740526139258568

`A127836(n)*A281715(A167614(n+4)+3)`
-/

namespace A281720.P14534740526139258568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127836 n * A281715 (A167614 (n + 4) + 3).toNat

end

end A281720.P14534740526139258568

/-! ## A281720.P16437930662192842888

`A281715(A167614(n+4)+3)%A344423(n)`
-/

namespace A281720.P16437930662192842888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A281715 (A167614 (n + 4) + 3).toNat) (A344423 n)

end

end A281720.P16437930662192842888

/-! ## A281720.P7027625178050265977

`A281715(A167614(n+4)+3)+A033716(3*n+2)`
-/

namespace A281720.P7027625178050265977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281715 (A167614 (n + 4) + 3).toNat + A033716 (3 * n + 2)

end

end A281720.P7027625178050265977

/-!
# A281721: Number of 7Xn 0..1 arrays with no element unequal to a strict majority of its horizontal, diagonal and antidiagonal neighbors and with new values introduced in order 0 sequentially upwards.

The programs for A281721, there is no canonical definition to state claims against.
-/

/-! ## A281721.P5579425404876058670

`A281715(A167487(n+5))`
-/

namespace A281721.P5579425404876058670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281715 (A167487 (n + 5)).toNat

end

end A281721.P5579425404876058670

/-! ## A281721.P16067663708559330834

`A281715(eq[11, A066657(n)])`
-/

namespace A281721.P16067663708559330834
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281715 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A281721.P16067663708559330834

/-! ## A281721.P2317013334063113896

`A281715(A167499(n+5)+2)`
-/

namespace A281721.P2317013334063113896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281715 (A167499 (n + 5) + 2).toNat

end

end A281721.P2317013334063113896

/-! ## A281721.P17526161891168427387

`A281715(A167614(n+5)+4)`
-/

namespace A281721.P17526161891168427387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281715 (A167614 (n + 5) + 4).toNat

end

end A281721.P17526161891168427387

/-! ## A281721.P7790120561264578705

`A281715(A000124(n+6)+6)`
-/

namespace A281721.P7790120561264578705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281715 (A000124 (n + 6) + 6).toNat

end

end A281721.P7790120561264578705

/-!
# A281722: Expansion of r(q) * s(q) in powers of q where r(), s() are cubic AGM functions.

The programs for A281722, there is no canonical definition to state claims against.
-/

/-! ## A281722.P300720584271113450

`A061347(n+1)*A096726(n)`
-/

namespace A281722.P300720584271113450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061347 (n + 1) * A096726 n

end

end A281722.P300720584271113450

/-! ## A281722.P4536654305054829722

`A096726(n)*A131713(A004092(n))`
-/

namespace A281722.P4536654305054829722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096726 n * A131713 (A004092 n).toNat

end

end A281722.P4536654305054829722

/-! ## A281722.P8701567735867423970

`A096726(n)*A131556(Δ[A008620(n)])`
-/

namespace A281722.P8701567735867423970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096726 n * A131556 (f1 (n + 1) - f1 n).toNat

end

end A281722.P8701567735867423970

/-! ## A281722.P11833810711535046127

`A096726(n)*A097109(A038500(n+1))`
-/

namespace A281722.P11833810711535046127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096726 n * A097109 (A038500 (n + 1)).toNat

end

end A281722.P11833810711535046127

/-! ## A281722.P7174319431947640605

`A096726(n)*A131713(n+2)`
-/

namespace A281722.P7174319431947640605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096726 n * A131713 (n + 2)

end

end A281722.P7174319431947640605

/-! ## A281722.P11663183455374509020

`A242874(2*n)/A008653(2*n)*A008653(n)`
-/

namespace A281722.P11663183455374509020
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A242874 (2 * n) : ℚ) / (A008653 (2 * n) : ℚ) * (A008653 n : ℚ)

end

end A281722.P11663183455374509020

/-! ## A281722.P8277992695035112038

`A057079(2*n)*A096726(n)`
-/

namespace A281722.P8277992695035112038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057079 (2 * n) * A096726 n

end

end A281722.P8277992695035112038

/-! ## A281722.P16899585024018908801

`A008653(n)/A132954(2*n)`
-/

namespace A281722.P16899585024018908801
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008653 n : ℚ) / (A132954 (2 * n) : ℚ)

end

end A281722.P16899585024018908801

/-! ## A281722.P14111033590057356525

`A282610(3*n)`
-/

namespace A281722.P14111033590057356525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282610 (3 * n)

end

end A281722.P14111033590057356525

/-! ## A281722.P7348153918304039507

`or(A000007(n), A282610(A008585(n)))`
-/

namespace A281722.P7348153918304039507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A282610 (A008585 n).toNat)

end

end A281722.P7348153918304039507

/-! ## A281722.P15519175251333654616

`A282610(A008486(n))+A000038(n)²`
-/

namespace A281722.P15519175251333654616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282610 (A008486 n).toNat + A000038 n ^ 2

end

end A281722.P15519175251333654616

/-! ## A281722.P17135445652906917297

`A282610(A008585(n))+A000007(n+1)`
-/

namespace A281722.P17135445652906917297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282610 (A008585 n).toNat + A000007 (n + 1)

end

end A281722.P17135445652906917297

/-! ## A281722.P12178266873252993311

`A282610(A008585(n))%A186304(n+1)`
-/

namespace A281722.P12178266873252993311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A282610 (A008585 n).toNat) (A186304 (n + 1))

end

end A281722.P12178266873252993311

/-!
# A281724: Numbers k with the property that (sum of digits of k) times (number of digits of k) equals (sum of {each digit of k} raised to the power {number of digits in k}).

The programs for A281724, there is no canonical definition to state claims against.
-/

/-! ## A281724.P11583887993948282657

`eq[A101337(n+1), A110805(n+1)]+1`
-/

namespace A281724.P11583887993948282657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101337 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110805 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A281724.P11583887993948282657

/-!
# A281725: Triangular array T(n,k) is the sum of elements in an n X k matrix that will be assigned the same value whether the integers from 1 to n*k are assigned to elements in row-major order or column-major order.

The programs for A281725, the canonical program `A281725.P2164127396884126570` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A281725 has offset 1).

The definition of A281725 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9870 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A281725.P2164127396884126570

`A000124(A279417(n+1))-A000124(A279416(n+1))`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A281725

/-- `A000124(A279417(n+1))-A000124(A279416(n+1))` -/
def P2164127396884126570.Spec : Prop :=
  ∀ n, P2164127396884126570.a n = A281725 (n + 1)

theorem P2164127396884126570.correct : P2164127396884126570.Spec := by
  intro n
  simp only [A281725, Nat.add_sub_cancel]

end A281725

/-! ## A281725.P1765133084346757227

`A001281((A075362(n+1)+1)*A281726(n+1))`
-/

namespace A281725.P1765133084346757227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 ((A075362 (n + 1) + 1) * A281726 (n + 1)).toNat

end

end A281725.P1765133084346757227

namespace A281725

/-- `A001281((A075362(n+1)+1)*A281726(n+1))` -/
def P1765133084346757227.Spec : Prop :=
  ∀ n, P1765133084346757227.a n = A281725 (n + 1)

end A281725

/-! ## A281725.P5166019972461512404

`A004525((A075362(n+1)+1)*A281726(n+1))`
-/

namespace A281725.P5166019972461512404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 ((A075362 (n + 1) + 1) * A281726 (n + 1)).toNat

end

end A281725.P5166019972461512404

namespace A281725

/-- `A004525((A075362(n+1)+1)*A281726(n+1))` -/
def P5166019972461512404.Spec : Prop :=
  ∀ n, P5166019972461512404.a n = A281725 (n + 1)

end A281725

/-! ## A281725.P9459346095738981190

`A004526((A075362(n+1)+1)*A281726(n+1))`
-/

namespace A281725.P9459346095738981190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 ((A075362 (n + 1) + 1) * A281726 (n + 1)).toNat

end

end A281725.P9459346095738981190

namespace A281725

/-- `A004526((A075362(n+1)+1)*A281726(n+1))` -/
def P9459346095738981190.Spec : Prop :=
  ∀ n, P9459346095738981190.a n = A281725 (n + 1)

end A281725

/-!
# A281726: Triangular array read by rows: T(n,k) is the number of elements in an n X k matrix that will be assigned the same value whether the integers from 1 to n*k are assigned to elements in row-major order or column-major order.

The programs for A281726, the canonical program `A281726.P2826563298210792098` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A281726 has offset 1).

The definition of A281726 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A281726.P2826563298210792098

`1+gcd(col(n), row(n))`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A281726

/-- `1+gcd(col(n), row(n))` -/
def P2826563298210792098.Spec : Prop :=
  ∀ n, (P2826563298210792098.a n : ℤ) = A281726 (n + 1)

theorem P2826563298210792098.correct : P2826563298210792098.Spec := by
  intro n
  simp only [A281726, Nat.add_sub_cancel]

end A281726

/-! ## A281726.P1278615028907852195

`gcd(C(∑[char[∑[n]]], 2)+n, ∑[char[∑[n+1]]])+1`
-/

namespace A281726.P1278615028907852195
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

open Classical in
def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f5 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 + n) (∑ j ∈ Finset.range (n + 1), f4 j) + 1

end

end A281726.P1278615028907852195

namespace A281726

/-- `gcd(C(∑[char[∑[n]]], 2)+n, ∑[char[∑[n+1]]])+1` -/
def P1278615028907852195.Spec : Prop :=
  ∀ n, (P1278615028907852195.a n : ℤ) = A281726 (n + 1)

end A281726

/-! ## A281726.P3027863293111471843

`A109004(n)+1`
-/

namespace A281726.P3027863293111471843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109004 n + 1

end

end A281726.P3027863293111471843

namespace A281726

/-- `A109004(n)+1` -/
def P3027863293111471843.Spec : Prop :=
  ∀ n, P3027863293111471843.a n = A281726 (n + 1)

theorem P3027863293111471843.correct : P3027863293111471843.Spec := by
  intro n
  simp only [A281726, Nat.add_sub_cancel, A281726.P3027863293111471843.a, A281726.P2826563298210792098.a, A109004, A109004.P10845233505462579827.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A281726

/-! ## A281726.P14027843398635958758

`gcd(comp[∑[n]]%(n+2), A025581(n))+1`
-/

namespace A281726.P14027843398635958758
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n % (n + 2) : ℕ) : ℤ) (A025581 n) + 1

end

end A281726.P14027843398635958758

namespace A281726

/-- `gcd(comp[∑[n]]%(n+2), A025581(n))+1` -/
def P14027843398635958758.Spec : Prop :=
  ∀ n, (P14027843398635958758.a n : ℤ) = A281726 (n + 1)

end A281726

/-! ## A281726.P7558143178211272063

`gcd(round(sqrt(2*(n+1)))²-(2*n+1), A109042(n))+1`
-/

namespace A281726.P7558143178211272063
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway (Real.sqrt (2 * (n + 1) : ℝ)) ^ 2 - (2 * n + 1 : ℤ)) (A109042 n) + 1

end

end A281726.P7558143178211272063

namespace A281726

/-- `gcd(round(sqrt(2*(n+1)))²-(2*n+1), A109042(n))+1` -/
def P7558143178211272063.Spec : Prop :=
  ∀ n, (P7558143178211272063.a n : ℤ) = A281726 (n + 1)

end A281726

/-! ## A281726.P15981031715195228287

`A008619(2*A109004(n))`
-/

namespace A281726.P15981031715195228287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * A109004 n).toNat

end

end A281726.P15981031715195228287

namespace A281726

/-- `A008619(2*A109004(n))` -/
def P15981031715195228287.Spec : Prop :=
  ∀ n, P15981031715195228287.a n = A281726 (n + 1)

end A281726

/-! ## A281726.P15751859343660261336

`A028242(2*A109004(n))`
-/

namespace A281726.P15751859343660261336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (2 * A109004 n).toNat

end

end A281726.P15751859343660261336

namespace A281726

/-- `A028242(2*A109004(n))` -/
def P15751859343660261336.Spec : Prop :=
  ∀ n, P15751859343660261336.a n = A281726 (n + 1)

end A281726

/-! ## A281726.P14051646640678041298

`A029579(2*A109004(n))`
-/

namespace A281726.P14051646640678041298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029579 (2 * A109004 n).toNat

end

end A281726.P14051646640678041298

namespace A281726

/-- `A029579(2*A109004(n))` -/
def P14051646640678041298.Spec : Prop :=
  ∀ n, P14051646640678041298.a n = A281726 (n + 1)

end A281726

/-! ## A281726.P3739457773491232421

`A080513(2*A109004(n))`
-/

namespace A281726.P3739457773491232421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080513 (2 * A109004 n).toNat

end

end A281726.P3739457773491232421

namespace A281726

/-- `A080513(2*A109004(n))` -/
def P3739457773491232421.Spec : Prop :=
  ∀ n, P3739457773491232421.a n = A281726 (n + 1)

end A281726

/-! ## A281726.P16031690898869924536

`A106466(2*A109004(n))`
-/

namespace A281726.P16031690898869924536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106466 (2 * A109004 n).toNat

end

end A281726.P16031690898869924536

namespace A281726

/-- `A106466(2*A109004(n))` -/
def P16031690898869924536.Spec : Prop :=
  ∀ n, P16031690898869924536.a n = A281726 (n + 1)

end A281726

/-! ## A281726.P1671341062046308875

`A007318(n)+A140682(n)+1`
-/

namespace A281726.P1671341062046308875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n + (A140682 n + 1)

end

end A281726.P1671341062046308875

namespace A281726

/-- `A007318(n)+A140682(n)+1` -/
def P1671341062046308875.Spec : Prop :=
  ∀ n, P1671341062046308875.a n = A281726 (n + 1)

end A281726

/-! ## A281726.P13369340270752025160

`gcd(A002262(n), A003056(n))+1`
-/

namespace A281726.P13369340270752025160
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A003056 n) + 1

end

end A281726.P13369340270752025160

namespace A281726

/-- `gcd(A002262(n), A003056(n))+1` -/
def P13369340270752025160.Spec : Prop :=
  ∀ n, (P13369340270752025160.a n : ℤ) = A281726 (n + 1)

end A281726

/-! ## A281726.P1929615912235816853

`gcd(A003984(n), A004197(n))+1`
-/

namespace A281726.P1929615912235816853
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003984 n) (A004197 n) + 1

end

end A281726.P1929615912235816853

namespace A281726

/-- `gcd(A003984(n), A004197(n))+1` -/
def P1929615912235816853.Spec : Prop :=
  ∀ n, (P1929615912235816853.a n : ℤ) = A281726 (n + 1)

end A281726

/-! ## A281726.P2138315604113428114

`gcd(A025581(n), A049581(n))+1`
-/

namespace A281726.P2138315604113428114
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A025581 n) (A049581 n) + 1

end

end A281726.P2138315604113428114

namespace A281726

/-- `gcd(A025581(n), A049581(n))+1` -/
def P2138315604113428114.Spec : Prop :=
  ∀ n, (P2138315604113428114.a n : ℤ) = A281726 (n + 1)

end A281726

/-! ## A281726.P333351386555935619

`gcd(A061885(n), A063656(n))+1`
-/

namespace A281726.P333351386555935619
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A061885 n) (A063656 n) + 1

end

end A281726.P333351386555935619

namespace A281726

/-- `gcd(A061885(n), A063656(n))+1` -/
def P333351386555935619.Spec : Prop :=
  ∀ n, (P333351386555935619.a n : ℤ) = A281726 (n + 1)

end A281726

/-! ## A281726.P17482171059779081353

`gcd(A103822(n), A103823(n))+1`
-/

namespace A281726.P17482171059779081353
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A103822 n) (A103823 n) + 1

end

end A281726.P17482171059779081353

namespace A281726

/-- `gcd(A103822(n), A103823(n))+1` -/
def P17482171059779081353.Spec : Prop :=
  ∀ n, (P17482171059779081353.a n : ℤ) = A281726 (n + 1)

end A281726

/-! ## A281726.P9535267233189598433

`gcd(A056942(n), A162611(n))+1`
-/

namespace A281726.P9535267233189598433
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A056942 n) (A162611 n) + 1

end

end A281726.P9535267233189598433

namespace A281726

/-- `gcd(A056942(n), A162611(n))+1` -/
def P9535267233189598433.Spec : Prop :=
  ∀ n, (P9535267233189598433.a n : ℤ) = A281726 (n + 1)

end A281726

/-! ## A281726.P9401379640849737248

`gcd(A109042(n), A114327(n))+1`
-/

namespace A281726.P9401379640849737248
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A109042 n) (A114327 n) + 1

end

end A281726.P9401379640849737248

namespace A281726

/-- `gcd(A109042(n), A114327(n))+1` -/
def P9401379640849737248.Spec : Prop :=
  ∀ n, (P9401379640849737248.a n : ℤ) = A281726 (n + 1)

end A281726

/-! ## A281726.P6913885323603627198

`A279417(n+1)-A279416(n+1)`
-/

namespace A281726.P6913885323603627198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279417 (n + 1) - A279416 (n + 1)

end

end A281726.P6913885323603627198

namespace A281726

/-- `A279417(n+1)-A279416(n+1)` -/
def P6913885323603627198.Spec : Prop :=
  ∀ n, P6913885323603627198.a n = A281726 (n + 1)

end A281726

/-! ## A281726.P8441030839628067557

`2*A279417(n+1)-A075362(n+1)`
-/

namespace A281726.P8441030839628067557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A279417 (n + 1) - A075362 (n + 1)

end

end A281726.P8441030839628067557

namespace A281726

/-- `2*A279417(n+1)-A075362(n+1)` -/
def P8441030839628067557.Spec : Prop :=
  ∀ n, P8441030839628067557.a n = A281726 (n + 1)

end A281726

/-!
# A281727: a(n) = (-1)^n * 2 if n = 3*k and n!=0, otherwise a(n) = (-1)^n.

The programs for A281727, the canonical program `A281727.P15629082218726189506` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A281727 has offset 0).

The definition of A281727 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A281727.P15629082218726189506

`ogf((1-x+x^2-x^3)/(1+x^3))`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A281727

/-- `ogf((1-x+x^2-x^3)/(1+x^3))` -/
def P15629082218726189506.Spec : Prop :=
  ∀ n, P15629082218726189506.a n = A281727 n

theorem P15629082218726189506.correct : P15629082218726189506.Spec := by
  intro n
  simp only [A281727]

end A281727

/-!
# A281728: Johnson's non-Wieferich numbers of the first kind.

The programs for A281728, there is no canonical definition to state claims against.
-/

/-! ## A281728.P7234308869423902608

`∩[A153443(n+1), A370425(n+1)]`
-/

namespace A281728.P7234308869423902608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153443 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370425 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A281728.P7234308869423902608

/-! ## A281728.P6850374211173868705

`∩[A059055(n+1), A153443(n+1)]`
-/

namespace A281728.P6850374211173868705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059055 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153443 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A281728.P6850374211173868705

/-! ## A281728.P18351764804002003984

`∩[A153443(n+1), A206946(n+1)]`
-/

namespace A281728.P18351764804002003984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153443 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206946 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A281728.P18351764804002003984

/-! ## A281728.P8116213268590794516

`∩[A059055(n+1), A370425(n+1)]`
-/

namespace A281728.P8116213268590794516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059055 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370425 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A281728.P8116213268590794516

/-! ## A281728.P11314625300823721818

`∩[A144755(n+1), A370425(n+1)]`
-/

namespace A281728.P11314625300823721818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144755 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370425 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A281728.P11314625300823721818

/-!
# A281729: Number of ways to write n as x^2 + y^2 + z^2 + w^2 with x,z positive integers and y,w nonnegative integers such that both 9*x^2 + 246*x*y + y^2 and 9*z^2 + 666*z*w + w^2 are squares.

The programs for A281729, there is no canonical definition to state claims against.
-/

/-! ## A281729.P14855785168423928950

`A056944(n)-A224447(A268448(n+1))`
-/

namespace A281729.P14855785168423928950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056944 n - A224447 (A268448 (n + 1)).toNat

end

end A281729.P14855785168423928950

/-! ## A281729.P3786159818448058198

`A292264(∑{e}[A348848(n+1), #])`
-/

namespace A281729.P3786159818448058198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348848 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292264 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p)

end

end A281729.P3786159818448058198

/-! ## A281729.P7639144433635440730

`A332995(∑{e}[A348848(n+1), #])`
-/

namespace A281729.P7639144433635440730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348848 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332995 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p)

end

end A281729.P7639144433635440730

/-! ## A281729.P5185655642914241564

`A341594(or(A001939(n), A335407(n)))`
-/

namespace A281729.P5185655642914241564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341594 (Int.lor (A001939 n) (A335407 n)).toNat

end

end A281729.P5185655642914241564

/-! ## A281729.P4338456925396381373

`A001222(A261061(n+2)+A049386(2*n))`
-/

namespace A281729.P4338456925396381373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A261061 (n + 2) + A049386 (2 * n)).toNat

end

end A281729.P4338456925396381373

/-!
# A281730: Binary representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 517", based on the 5-celled von Neumann neighborhood.

The programs for A281730, there is no canonical definition to state claims against.
-/

/-! ## A281730.P5626318569070167026

`A007088(A282825(n))`
-/

namespace A281730.P5626318569070167026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A282825 n).toNat

end

end A281730.P5626318569070167026

/-! ## A281730.P3892712169628688752

`A185544(2*A282825(n))`
-/

namespace A281730.P3892712169628688752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A282825 n).toNat

end

end A281730.P3892712169628688752

/-! ## A281730.P18388401751534389405

`A185544(A282825(n)+A282825(n))`
-/

namespace A281730.P18388401751534389405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (A282825 n + A282825 n).toNat

end

end A281730.P18388401751534389405

/-! ## A281730.P14778251773167357738

`A256078(A000225(n+3)-A282825(n))`
-/

namespace A281730.P14778251773167357738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256078 (A000225 (n + 3) - A282825 n).toNat

end

end A281730.P14778251773167357738

/-! ## A281730.P14352632044265370258

`A256078(xor(A000225(n+3), A282825(n)))`
-/

namespace A281730.P14352632044265370258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256078 (Int.xor (A000225 (n + 3)) (A282825 n)).toNat

end

end A281730.P14352632044265370258

/-!
# A281733: Positive integers T_i such that Sum_{k >= 0} (S_k * x^(2*k+1)) + 1/24 - Sum_{k >= 1} (T_k * x^(2*k)) = (cos((2/3) * arccos(6 * sqrt(3) * x)))/12 for all real x with |x| <= 1/(6 * sqrt(3)), where S_k = A176898(k).

The programs for A281733, the canonical program `A281733.P13513498360236193547` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A281733 has offset 1).

The definition of A281733 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A281733.P13227911628870777654

`A078531(2*(n+1)-1)/2`
-/

namespace A281733.P13227911628870777654
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A078531 (2 * (n + 1) - 1) : ℚ) / 2

end

end A281733.P13227911628870777654

namespace A281733

/-- `A078531(2*(n+1)-1)/2` -/
def P13227911628870777654.Spec : Prop :=
  ∀ n, P13227911628870777654.a n = (A281733 (n + 1) : ℚ)

end A281733

/-! ## A281733.P13513498360236193547

`16^n*C(3*(n+1)-2, 2*(n+1)-1)/(n+1)`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A281733

/-- `16^n*C(3*(n+1)-2, 2*(n+1)-1)/(n+1)` -/
def P13513498360236193547.Spec : Prop :=
  ∀ n, P13513498360236193547.a n = (A281733 (n + 1) : ℚ)

end A281733

/-! ## A281733.P16180948587988420427

`8^n*A369510(n)`
-/

namespace A281733.P16180948587988420427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (8 ^ n : ℤ) * A369510 n

end

end A281733.P16180948587988420427

namespace A281733

/-- `8^n*A369510(n)` -/
def P16180948587988420427.Spec : Prop :=
  ∀ n, P16180948587988420427.a n = A281733 (n + 1)

end A281733

/-! ## A281733.P14217201216046547605

`floor(A078531(2*n+1)/2)`
-/

namespace A281733.P14217201216046547605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A078531 (2 * n + 1) : ℚ) / 2⌋

end

end A281733.P14217201216046547605

namespace A281733

/-- `floor(A078531(2*n+1)/2)` -/
def P14217201216046547605.Spec : Prop :=
  ∀ n, P14217201216046547605.a n = A281733 (n + 1)

end A281733

/-! ## A281733.P4421572803265424763

`2^n*A006013(n)*8^n`
-/

namespace A281733.P4421572803265424763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A006013 n * (8 ^ n : ℤ)

end

end A281733.P4421572803265424763

namespace A281733

/-- `2^n*A006013(n)*8^n` -/
def P4421572803265424763.Spec : Prop :=
  ∀ n, P4421572803265424763.a n = A281733 (n + 1)

end A281733

/-! ## A281733.P9121790087435633753

`A001025(n)*A006013(n)`
-/

namespace A281733.P9121790087435633753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001025 n * A006013 n

end

end A281733.P9121790087435633753

namespace A281733

/-- `A001025(n)*A006013(n)` -/
def P9121790087435633753.Spec : Prop :=
  ∀ n, P9121790087435633753.a n = A281733 (n + 1)

end A281733

/-! ## A281733.P3883717797872328089

`A000302(n)²*A006013(n)`
-/

namespace A281733.P3883717797872328089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000302 n ^ 2 * A006013 n

end

end A281733.P3883717797872328089

namespace A281733

/-- `A000302(n)²*A006013(n)` -/
def P3883717797872328089.Spec : Prop :=
  ∀ n, P3883717797872328089.a n = A281733 (n + 1)

end A281733

/-! ## A281733.P9985191749852966750

`A000302(2*n)*A006013(n)`
-/

namespace A281733.P9985191749852966750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000302 (2 * n) * A006013 n

end

end A281733.P9985191749852966750

namespace A281733

/-- `A000302(2*n)*A006013(n)` -/
def P9985191749852966750.Spec : Prop :=
  ∀ n, P9985191749852966750.a n = A281733 (n + 1)

end A281733

/-! ## A281733.P888702760247434842

`A000079(4*n)*A006013(n)`
-/

namespace A281733.P888702760247434842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (4 * n) * A006013 n

end

end A281733.P888702760247434842

namespace A281733

/-- `A000079(4*n)*A006013(n)` -/
def P888702760247434842.Spec : Prop :=
  ∀ n, P888702760247434842.a n = A281733 (n + 1)

end A281733

/-! ## A281733.P412149822658282240

`A051437(4*n)*A006013(n)`
-/

namespace A281733.P412149822658282240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051437 (4 * n) * A006013 n

end

end A281733.P412149822658282240

namespace A281733

/-- `A051437(4*n)*A006013(n)` -/
def P412149822658282240.Spec : Prop :=
  ∀ n, P412149822658282240.a n = A281733 (n + 1)

end A281733

/-!
# A281734: Numbers k such that (2*10^k + 529)/9 is prime.

The programs for A281734, there is no canonical definition to state claims against.
-/

/-! ## A281734.P10198496813733003061

`record[and(A032766(n), A246458(n+4))]`
-/

namespace A281734.P10198496813733003061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A032766 n) (A246458 (n + 4))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A281734.P10198496813733003061

/-! ## A281734.P12368010744067125268

`eq[A031076(A151880(n)), A318458(2*n+5)]`
-/

namespace A281734.P12368010744067125268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031076 (A151880 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318458 (2 * n + 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A281734.P12368010744067125268

/-! ## A281734.P11115480538278707838

`lt[A006500(n), A219410(A140061(2*n+5))]`
-/

namespace A281734.P11115480538278707838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006500 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219410 (A140061 (2 * n + 5)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A281734.P11115480538278707838

/-! ## A281734.P15206614794081114251

`lt[A000032(n+1), A219410(A140061(2*n+5))]`
-/

namespace A281734.P15206614794081114251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219410 (A140061 (2 * n + 5)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A281734.P15206614794081114251

/-! ## A281734.P17862583716195215637

`eq[A248886(A065716(3*n+1)), A325249(2*n+5)]`
-/

namespace A281734.P17862583716195215637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248886 (A065716 (3 * n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325249 (2 * n + 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A281734.P17862583716195215637

/-!
# A281736: Binary representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 390", based on the 5-celled von Neumann neighborhood.

The programs for A281736, there is no canonical definition to state claims against.
-/

/-! ## A281736.P6305915983716147553

`A000042(n+1)-A283401(A028310(n))`
-/

namespace A281736.P6305915983716147553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000042 (n + 1) - A283401 (A028310 n).toNat

end

end A281736.P6305915983716147553

/-!
# A281737: Decimal representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 390", based on the 5-celled von Neumann neighborhood.

The programs for A281737, the canonical program `A281737.P15050795909465169128` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A281737 has offset 0).

The definition of A281737 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A281737.P15050795909465169128

`ogf((1+3x+2x^3+x^4+x^5-3x^6-x^7+2x^9-15x^10-55x^11-3x^12-3x^13-3x^14-3x^15-3x^16-3x^17-3x^18-3x^19-3x^20-3x^21-3x^22-x^23-4x^24-12x^25)/(1-4x^2))`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A281737

/-- `ogf((1+3x+2x^3+x^4+x^5-3x^6-x^7+2x^9-15x^10-55x^11-3x^12-3x^13-3x^14-3x^15-3x^16-3x^17-3x^18-3x^19-3x^20-3x^21-3x^22-x^23-4x^24-12x^25)/(1-4x^2))` -/
def P15050795909465169128.Spec : Prop :=
  ∀ n, P15050795909465169128.a n = A281737 n

theorem P15050795909465169128.correct : P15050795909465169128.Spec := by
  intro n
  simp only [A281737]

end A281737

/-! ## A281737.P1287936001692585431

`A095121(n)+1-A283402(n)`
-/

namespace A281737.P1287936001692585431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095121 n + (1 - A283402 n)

end

end A281737.P1287936001692585431

namespace A281737

/-- `A095121(n)+1-A283402(n)` -/
def P1287936001692585431.Spec : Prop :=
  ∀ n, P1287936001692585431.a n = A281737 n

end A281737

/-! ## A281737.P17598479711934167327

`A052955(A004277(n))-A283402(n)`
-/

namespace A281737.P17598479711934167327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052955 (A004277 n).toNat - A283402 n

end

end A281737.P17598479711934167327

namespace A281737

/-- `A052955(A004277(n))-A283402(n)` -/
def P17598479711934167327.Spec : Prop :=
  ∀ n, P17598479711934167327.a n = A281737 n

end A281737

/-! ## A281737.P11205894623522180472

`A126646(n)-A283402(A028310(n))`
-/

namespace A281737.P11205894623522180472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126646 n - A283402 (A028310 n).toNat

end

end A281737.P11205894623522180472

namespace A281737

/-- `A126646(n)-A283402(A028310(n))` -/
def P11205894623522180472.Spec : Prop :=
  ∀ n, P11205894623522180472.a n = A281737 n

end A281737

/-! ## A281737.P7829290928496515427

`∑[A000079(n)]-A283402(A028310(n))`
-/

namespace A281737.P7829290928496515427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A283402 (A028310 n).toNat

end

end A281737.P7829290928496515427

namespace A281737

/-- `∑[A000079(n)]-A283402(A028310(n))` -/
def P7829290928496515427.Spec : Prop :=
  ∀ n, P7829290928496515427.a n = A281737 n

end A281737

/-! ## A281737.P10068837951375181583

`A000225(n+1)-A283402(A028310(n))`
-/

namespace A281737.P10068837951375181583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (n + 1) - A283402 (A028310 n).toNat

end

end A281737.P10068837951375181583

namespace A281737

/-- `A000225(n+1)-A283402(A028310(n))` -/
def P10068837951375181583.Spec : Prop :=
  ∀ n, P10068837951375181583.a n = A281737 n

end A281737

/-! ## A281737.P2252453731838428786

`A126646(n)-A283402(n)%A051049(n)`
-/

namespace A281737.P2252453731838428786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126646 n - Int.tmod (A283402 n) (A051049 n)

end

end A281737.P2252453731838428786

namespace A281737

/-- `A126646(n)-A283402(n)%A051049(n)` -/
def P2252453731838428786.Spec : Prop :=
  ∀ n, P2252453731838428786.a n = A281737 n

end A281737

/-! ## A281737.P10989655999914997326

`A126646(n)-and(A000225(n), A283402(n))`
-/

namespace A281737.P10989655999914997326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126646 n - Int.land (A000225 n) (A283402 n)

end

end A281737.P10989655999914997326

namespace A281737

/-- `A126646(n)-and(A000225(n), A283402(n))` -/
def P10989655999914997326.Spec : Prop :=
  ∀ n, P10989655999914997326.a n = A281737 n

end A281737

/-! ## A281737.P14839194213050432792

`or(A000225(n), A052531(n))-A283402(n)`
-/

namespace A281737.P14839194213050432792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000225 n) (A052531 n) - A283402 n

end

end A281737.P14839194213050432792

namespace A281737

/-- `or(A000225(n), A052531(n))-A283402(n)` -/
def P14839194213050432792.Spec : Prop :=
  ∀ n, P14839194213050432792.a n = A281737 n

end A281737

/-!
# A281738: Decimal representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 390", based on the 5-celled von Neumann neighborhood.

The programs for A281738, there is no canonical definition to state claims against.
-/

/-! ## A281738.P10301378352701624928

`A126646(n)-A283403(A028310(n))`
-/

namespace A281738.P10301378352701624928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126646 n - A283403 (A028310 n).toNat

end

end A281738.P10301378352701624928

/-!
# A281739: Binary representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 393", based on the 5-celled von Neumann neighborhood.

The programs for A281739, there is no canonical definition to state claims against.
-/

/-! ## A281739.P7154264293880848963

`A007088(A281741(n))`
-/

namespace A281739.P7154264293880848963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A281741 n).toNat

end

end A281739.P7154264293880848963

/-! ## A281739.P14801364531043128087

`A185544(2*A281741(n))`
-/

namespace A281739.P14801364531043128087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A281741 n).toNat

end

end A281739.P14801364531043128087

/-! ## A281739.P7507084902914168245

`A185544(A281741(n)+A281741(n))`
-/

namespace A281739.P7507084902914168245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (A281741 n + A281741 n).toNat

end

end A281739.P7507084902914168245

/-! ## A281739.P15446261077945667119

`A281740(n)/A174480(A321401(n))`
-/

namespace A281739.P15446261077945667119
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A281740 n : ℚ) / (A174480 (A321401 n).toNat : ℚ)

end

end A281739.P15446261077945667119

/-!
# A281740: Binary representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 393", based on the 5-celled von Neumann neighborhood.

The programs for A281740, there is no canonical definition to state claims against.
-/

/-! ## A281740.P3625997691085634790

`A007088(A281742(n))`
-/

namespace A281740.P3625997691085634790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A281742 n).toNat

end

end A281740.P3625997691085634790

/-! ## A281740.P10340538481130441548

`A185544(2*A281742(n))`
-/

namespace A281740.P10340538481130441548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A281742 n).toNat

end

end A281740.P10340538481130441548

/-! ## A281740.P936745810423388744

`A185544(A281742(n)+A281742(n))`
-/

namespace A281740.P936745810423388744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (A281742 n + A281742 n).toNat

end

end A281740.P936745810423388744

/-! ## A281740.P10419583181810813976

`A284176(n)+A010051(A053983(n))`
-/

namespace A281740.P10419583181810813976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284176 n + A010051 (A053983 n).toNat

end

end A281740.P10419583181810813976

/-!
# A281741: Decimal representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 393", based on the 5-celled von Neumann neighborhood.

The programs for A281741, there is no canonical definition to state claims against.
-/

/-! ## A281741.P10590462476997225289

`and(A000975(A032555(n+1)), A279666(n))`
-/

namespace A281741.P10590462476997225289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000975 (A032555 (n + 1)).toNat) (A279666 n)

end

end A281741.P10590462476997225289

/-! ## A281741.P2977882364541958536

`and(A000975(A078213(n+1)), A279666(n))`
-/

namespace A281741.P2977882364541958536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000975 (A078213 (n + 1)).toNat) (A279666 n)

end

end A281741.P2977882364541958536

/-!
# A281742: Decimal representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 393", based on the 5-celled von Neumann neighborhood.

The programs for A281742, there is no canonical definition to state claims against.
-/

/-! ## A281742.P161775832126466955

`and(A000975(A279810(n)), A279668(n))`
-/

namespace A281742.P161775832126466955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000975 (A279810 n).toNat) (A279668 n)

end

end A281742.P161775832126466955

/-! ## A281742.P3823167188896732065

`and(A080610(A032555(n+1)), A279668(n))`
-/

namespace A281742.P3823167188896732065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A080610 (A032555 (n + 1)).toNat) (A279668 n)

end

end A281742.P3823167188896732065

/-! ## A281742.P6250573201605684095

`and(A080610(A078213(n+1)), A279668(n))`
-/

namespace A281742.P6250573201605684095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A080610 (A078213 (n + 1)).toNat) (A279668 n)

end

end A281742.P6250573201605684095

/-! ## A281742.P7098883924434380030

`and(A000975(A187023(n+2)), A279668(n))`
-/

namespace A281742.P7098883924434380030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000975 (A187023 (n + 2)).toNat) (A279668 n)

end

end A281742.P7098883924434380030

/-! ## A281742.P9273439743342565248

`and(A000975(A032555(n+1)+n), A279668(n))`
-/

namespace A281742.P9273439743342565248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000975 (A032555 (n + 1) + (n : ℤ)).toNat) (A279668 n)

end

end A281742.P9273439743342565248

/-!
# A281743: Expansion of chi(-x) * chi(-x^4) / (chi(-x^3) * chi(-x^12)) in powers of x where chi() is a Ramanujan theta function.

The programs for A281743, there is no canonical definition to state claims against.
-/

/-! ## A281743.P6899455680936223480

`xor(A049347(n), A102683(A048577(n)))`
-/

namespace A281743.P6899455680936223480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A049347 n) (A102683 (A048577 n).toNat)

end

end A281743.P6899455680936223480

/-! ## A281743.P11714393827881533200

`A257075(n)-A010051(A215928(n))`
-/

namespace A281743.P11714393827881533200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257075 n - A010051 (A215928 n).toNat

end

end A281743.P11714393827881533200

/-! ## A281743.P15524002784511738436

`A016350(2*n+1)-A016371(A214408(n+1))`
-/

namespace A281743.P15524002784511738436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016350 (2 * n + 1) - A016371 (A214408 (n + 1)).toNat

end

end A281743.P15524002784511738436

/-! ## A281743.P14586175370794276866

`A099494(A045950(n))`
-/

namespace A281743.P14586175370794276866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099494 (A045950 n).toNat

end

end A281743.P14586175370794276866

/-! ## A281743.P1226579232696541490

`A128834(A362592(n+1)-A071558(n+1))`
-/

namespace A281743.P1226579232696541490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128834 (A362592 (n + 1) - A071558 (n + 1)).toNat

end

end A281743.P1226579232696541490

/-!
# A281744: Expansion of chi(-x^3) * chi(-x^12) / (chi(-x) * chi(-x^4)) in powers of x where chi() is a Ramanujan theta function.

The programs for A281744, there is no canonical definition to state claims against.
-/

/-! ## A281744.P7009805641868564127

`A391618(A233759(n+1)+A121269(n))`
-/

namespace A281744.P7009805641868564127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391618 (A233759 (n + 1) + A121269 n).toNat

end

end A281744.P7009805641868564127

/-! ## A281744.P15885746164978692737

`A105224(A219585(n)+A055922(2*(n+1)))`
-/

namespace A281744.P15885746164978692737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105224 (A219585 n + A055922 (2 * (n + 1))).toNat

end

end A281744.P15885746164978692737

/-! ## A281744.P6815371755350823819

`A105224(A055922(2*(n+1))+A000003(n+1))`
-/

namespace A281744.P6815371755350823819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105224 (A055922 (2 * (n + 1)) + A000003 (n + 1)).toNat

end

end A281744.P6815371755350823819

/-! ## A281744.P15043271436150950470

`A105224(A055922(2*(n+1))+A001511(n+1))`
-/

namespace A281744.P15043271436150950470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105224 (A055922 (2 * (n + 1)) + A001511 (n + 1)).toNat

end

end A281744.P15043271436150950470

/-! ## A281744.P5049791385892126314

`A105224(A078680(n+1)+A055922(2*(n+1)))`
-/

namespace A281744.P5049791385892126314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105224 (A078680 (n + 1) + A055922 (2 * (n + 1))).toNat

end

end A281744.P5049791385892126314

/-!
# A281745: Numbers k with the property that the square root of the product of the digits of k is equal to the sum of the square roots of its digits.

The programs for A281745, there is no canonical definition to state claims against.
-/

/-! ## A281745.P2637684106909635031

`∑[A328394(A014374(n)²)]`
-/

namespace A281745.P2637684106909635031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328394 (A014374 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A281745.P2637684106909635031

/-! ## A281745.P15357878296958774043

`A267394(C(n, 9)+1)+n`
-/

namespace A281745.P15357878296958774043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267394 (Nat.choose n 9 + 1) + (n : ℤ)

end

end A281745.P15357878296958774043

/-! ## A281745.P12285767444532274940

`A094280(A032581(n+1))`
-/

namespace A281745.P12285767444532274940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094280 (A032581 (n + 1)).toNat

end

end A281745.P12285767444532274940

/-! ## A281745.P14228333025144762367

`A125668(A048409(n+1))`
-/

namespace A281745.P14228333025144762367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125668 (A048409 (n + 1)).toNat

end

end A281745.P14228333025144762367

/-! ## A281745.P14162942591002075109

`A125668(A066565(n+1))`
-/

namespace A281745.P14162942591002075109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125668 (A066565 (n + 1)).toNat

end

end A281745.P14162942591002075109

/-!
# A281746: Nonnegative numbers k such that k == 0 (mod 3) or k == 0 (mod 5).

The programs for A281746, the canonical program `A281746.P13236418530599901081` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A281746 has offset 1).

The definition of A281746 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A281746.P10963254239266087034

`ogf((3x+2x^2+x^3+3x^4+x^5+2x^6+3x^7)/(1-x-x^7+x^8))`
-/

namespace A281746.P10963254239266087034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 3, 2, 1, 3, 1, 2, 3] [1, -1, 0, 0, 0, 0, 0, -1, 1] n

end

end A281746.P10963254239266087034

namespace A281746

/-- `ogf((3x+2x^2+x^3+3x^4+x^5+2x^6+3x^7)/(1-x-x^7+x^8))` -/
def P10963254239266087034.Spec : Prop :=
  ∀ n, P10963254239266087034.a n = A281746 (n + 1)

end A281746

/-! ## A281746.P13236418530599901081

`a(n-1)+a(n-7)-a(n-8)` with `a(0)=0, a(1)=3, a(2)=5, a(3)=6, a(4)=9, a(5)=10, a(6)=12, a(7)=15`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A281746

/-- `a(n-1)+a(n-7)-a(n-8)` -/
def P13236418530599901081.Spec : Prop :=
  ∀ n, P13236418530599901081.a n = A281746 (n + 1)

theorem P13236418530599901081.correct : P13236418530599901081.Spec := by
  intro n
  simp only [A281746, Nat.add_sub_cancel]

end A281746

/-! ## A281746.P16369953858530346441

`∪[3*n, 5*n]`
-/

namespace A281746.P16369953858530346441
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = x) n

end

end A281746.P16369953858530346441

namespace A281746

/-- `∪[3*n, 5*n]` -/
def P16369953858530346441.Spec : Prop :=
  ∀ n, (P16369953858530346441.a n : ℤ) = A281746 (n + 1)

end A281746

/-! ## A281746.P7225647829635363576

`lt[lcm(15, n), 8*n+4]`
-/

namespace A281746.P7225647829635363576
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 15 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * n + 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A281746.P7225647829635363576

namespace A281746

/-- `lt[lcm(15, n), 8*n+4]` -/
def P7225647829635363576.Spec : Prop :=
  ∀ n, (P7225647829635363576.a n : ℤ) = A281746 (n + 1)

end A281746

/-! ## A281746.P16517177152080966186

`lt[n-gcd(45, n), n-1]`
-/

namespace A281746.P16517177152080966186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (Nat.gcd 45 n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A281746.P16517177152080966186

namespace A281746

/-- `lt[n-gcd(45, n), n-1]` -/
def P16517177152080966186.Spec : Prop :=
  ∀ n, (P16517177152080966186.a n : ℤ) = A281746 (n + 1)

end A281746

/-! ## A281746.P14732750958266433170

`lt[A020639(2*(n+7)+1)², 42]`
-/

namespace A281746.P14732750958266433170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (2 * (n + 7) + 1) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  42

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A281746.P14732750958266433170

namespace A281746

/-- `lt[A020639(2*(n+7)+1)², 42]` -/
def P14732750958266433170.Spec : Prop :=
  ∀ n, (P14732750958266433170.a n : ℤ) = A281746 (n + 1)

end A281746

/-! ## A281746.P13382638955420892282

`comp[A229829(n+1)]`
-/

namespace A281746.P13382638955420892282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229829 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A281746.P13382638955420892282

namespace A281746

/-- `comp[A229829(n+1)]` -/
def P13382638955420892282.Spec : Prop :=
  ∀ n, (P13382638955420892282.a n : ℤ) = A281746 (n + 1)

end A281746

/-! ## A281746.P1088344793708969760

`lt[A252358(n), 6]`
-/

namespace A281746.P1088344793708969760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252358 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A281746.P1088344793708969760

namespace A281746

/-- `lt[A252358(n), 6]` -/
def P1088344793708969760.Spec : Prop :=
  ∀ n, (P1088344793708969760.a n : ℤ) = A281746 (n + 1)

end A281746

/-! ## A281746.P10872334692143760913

`record[Δ[A126592(n+1)]]`
-/

namespace A281746.P10872334692143760913
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126592 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A281746.P10872334692143760913

namespace A281746

/-- `record[Δ[A126592(n+1)]]` -/
def P10872334692143760913.Spec : Prop :=
  ∀ n, P10872334692143760913.a n = A281746 (n + 1)

end A281746

/-! ## A281746.P17996617661793474489

`lt[A106616(n), A065855(n+1)+1]`
-/

namespace A281746.P17996617661793474489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106616 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065855 (n + 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A281746.P17996617661793474489

namespace A281746

/-- `lt[A106616(n), A065855(n+1)+1]` -/
def P17996617661793474489.Spec : Prop :=
  ∀ n, (P17996617661793474489.a n : ℤ) = A281746 (n + 1)

end A281746

/-! ## A281746.P2504993511751178118

`lt[-1, ∏{p}[2*n, #-5]]`
-/

namespace A281746.P2504993511751178118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), ((p : ℤ) - 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A281746.P2504993511751178118

namespace A281746

/-- `lt[-1, ∏{p}[2*n, #-5]]` -/
def P2504993511751178118.Spec : Prop :=
  ∀ n, (P2504993511751178118.a n : ℤ) = A281746 (n + 1)

end A281746

/-! ## A281746.P2755123246496500312

`eq[0, A255680(n)]`
-/

namespace A281746.P2755123246496500312
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255680 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A281746.P2755123246496500312

namespace A281746

/-- `eq[0, A255680(n)]` -/
def P2755123246496500312.Spec : Prop :=
  ∀ n, (P2755123246496500312.a n : ℤ) = A281746 (n + 1)

end A281746

/-! ## A281746.P14291896217319526016

`eq[0, n*A316569(n)]`
-/

namespace A281746.P14291896217319526016
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A316569 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A281746.P14291896217319526016

namespace A281746

/-- `eq[0, n*A316569(n)]` -/
def P14291896217319526016.Spec : Prop :=
  ∀ n, (P14291896217319526016.a n : ℤ) = A281746 (n + 1)

end A281746

/-! ## A281746.P6903949303810791895

`eq[A132681(n), A316569(n)]`
-/

namespace A281746.P6903949303810791895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132681 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316569 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A281746.P6903949303810791895

namespace A281746

/-- `eq[A132681(n), A316569(n)]` -/
def P6903949303810791895.Spec : Prop :=
  ∀ n, (P6903949303810791895.a n : ℤ) = A281746 (n + 1)

end A281746

/-! ## A281746.P15170658499287488139

`eq[A132710(n), A316569(n)]`
-/

namespace A281746.P15170658499287488139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132710 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316569 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A281746.P15170658499287488139

namespace A281746

/-- `eq[A132710(n), A316569(n)]` -/
def P15170658499287488139.Spec : Prop :=
  ∀ n, (P15170658499287488139.a n : ℤ) = A281746 (n + 1)

end A281746

/-! ## A281746.P9451129707507043978

`eq[A159075(n), A316569(n)]`
-/

namespace A281746.P9451129707507043978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159075 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316569 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A281746.P9451129707507043978

namespace A281746

/-- `eq[A159075(n), A316569(n)]` -/
def P9451129707507043978.Spec : Prop :=
  ∀ n, (P9451129707507043978.a n : ℤ) = A281746 (n + 1)

end A281746

/-! ## A281746.P2495823505594732356

`eq[A185017(n), A316569(n)]`
-/

namespace A281746.P2495823505594732356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185017 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316569 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A281746.P2495823505594732356

namespace A281746

/-- `eq[A185017(n), A316569(n)]` -/
def P2495823505594732356.Spec : Prop :=
  ∀ n, (P2495823505594732356.a n : ℤ) = A281746 (n + 1)

end A281746

/-! ## A281746.P16086417143279201387

`lt[A106616(n), A242112(n)]`
-/

namespace A281746.P16086417143279201387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106616 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242112 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A281746.P16086417143279201387

namespace A281746

/-- `lt[A106616(n), A242112(n)]` -/
def P16086417143279201387.Spec : Prop :=
  ∀ n, (P16086417143279201387.a n : ℤ) = A281746 (n + 1)

end A281746

/-! ## A281746.P12263530771292918660

`eq[A112053(n+1), A316569(n)]`
-/

namespace A281746.P12263530771292918660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112053 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316569 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A281746.P12263530771292918660

namespace A281746

/-- `eq[A112053(n+1), A316569(n)]` -/
def P12263530771292918660.Spec : Prop :=
  ∀ n, (P12263530771292918660.a n : ℤ) = A281746 (n + 1)

end A281746

/-! ## A281746.P9730701834569662616

`eq[A181405(n+1), A316569(n)]`
-/

namespace A281746.P9730701834569662616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181405 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316569 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A281746.P9730701834569662616

namespace A281746

/-- `eq[A181405(n+1), A316569(n)]` -/
def P9730701834569662616.Spec : Prop :=
  ∀ n, (P9730701834569662616.a n : ℤ) = A281746 (n + 1)

end A281746

/-!
# A281748: Binary representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 395", based on the 5-celled von Neumann neighborhood.

The programs for A281748, there is no canonical definition to state claims against.
-/

/-! ## A281748.P9579224935514899003

`A007088(A281750(n))`
-/

namespace A281748.P9579224935514899003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A281750 n).toNat

end

end A281748.P9579224935514899003

/-! ## A281748.P9531387776354704385

`A185544(2*A281750(n))`
-/

namespace A281748.P9531387776354704385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A281750 n).toNat

end

end A281748.P9531387776354704385

/-! ## A281748.P718019052155210507

`A185544(A281750(n)+A281750(n))`
-/

namespace A281748.P718019052155210507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (A281750 n + A281750 n).toNat

end

end A281748.P718019052155210507

/-! ## A281748.P9735667423841253122

`A282363(A004892(n+1))`
-/

namespace A281748.P9735667423841253122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282363 (A004892 (n + 1)).toNat

end

end A281748.P9735667423841253122

/-! ## A281748.P8616284995239121301

`A282363(A004903(n+1))`
-/

namespace A281748.P8616284995239121301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282363 (A004903 (n + 1)).toNat

end

end A281748.P8616284995239121301

/-!
# A281749: Binary representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 395", based on the 5-celled von Neumann neighborhood.

The programs for A281749, there is no canonical definition to state claims against.
-/

/-! ## A281749.P11398232000291081701

`A007088(A281751(n))`
-/

namespace A281749.P11398232000291081701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A281751 n).toNat

end

end A281749.P11398232000291081701

/-! ## A281749.P5962946979008206596

`A185544(2*A281751(n))`
-/

namespace A281749.P5962946979008206596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A281751 n).toNat

end

end A281749.P5962946979008206596

/-! ## A281749.P16219536938505755369

`A282364(A004892(n+1))`
-/

namespace A281749.P16219536938505755369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282364 (A004892 (n + 1)).toNat

end

end A281749.P16219536938505755369

/-! ## A281749.P8712857694958563010

`A282364(A004903(n+1))`
-/

namespace A281749.P8712857694958563010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282364 (A004903 (n + 1)).toNat

end

end A281749.P8712857694958563010

/-! ## A281749.P15334617553536080472

`A282364(A004914(n+1))`
-/

namespace A281749.P15334617553536080472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282364 (A004914 (n + 1)).toNat

end

end A281749.P15334617553536080472

/-!
# A281750: Decimal representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 395", based on the 5-celled von Neumann neighborhood.

The programs for A281750, there is no canonical definition to state claims against.
-/

/-! ## A281750.P1149592303963811703

`A282365(n)-A285007(A177794(n+1))`
-/

namespace A281750.P1149592303963811703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282365 n - A285007 (A177794 (n + 1)).toNat

end

end A281750.P1149592303963811703

/-! ## A281750.P12269006991874387018

`A282365(A274708(n²))`
-/

namespace A281750.P12269006991874387018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282365 (A274708 (n ^ 2)).toNat

end

end A281750.P12269006991874387018

/-! ## A281750.P10855260714762925464

`A282365(A004892(n+1))`
-/

namespace A281750.P10855260714762925464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282365 (A004892 (n + 1)).toNat

end

end A281750.P10855260714762925464

/-! ## A281750.P12371801590076301890

`A282365(A004903(n+1))`
-/

namespace A281750.P12371801590076301890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282365 (A004903 (n + 1)).toNat

end

end A281750.P12371801590076301890

/-! ## A281750.P14714197698243887246

`A282365(A004914(n+1))`
-/

namespace A281750.P14714197698243887246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282365 (A004914 (n + 1)).toNat

end

end A281750.P14714197698243887246

/-!
# A281751: Decimal representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 395", based on the 5-celled von Neumann neighborhood.

The programs for A281751, there is no canonical definition to state claims against.
-/

/-! ## A281751.P10496022752242329959

`A282366(n)-A285007(A177794(n+1))²`
-/

namespace A281751.P10496022752242329959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282366 n - A285007 (A177794 (n + 1)).toNat ^ 2

end

end A281751.P10496022752242329959

/-! ## A281751.P1258132397302821996

`A282366(A097448(n²))`
-/

namespace A281751.P1258132397302821996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282366 (A097448 (n ^ 2)).toNat

end

end A281751.P1258132397302821996

/-! ## A281751.P14939356009858072291

`A282366(A004892(n+1))`
-/

namespace A281751.P14939356009858072291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282366 (A004892 (n + 1)).toNat

end

end A281751.P14939356009858072291

/-! ## A281751.P4736580399480686748

`A282366(A004903(n+1))`
-/

namespace A281751.P4736580399480686748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282366 (A004903 (n + 1)).toNat

end

end A281751.P4736580399480686748

/-! ## A281751.P2999927198334665977

`A282366(A004914(n+1))`
-/

namespace A281751.P2999927198334665977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282366 (A004914 (n + 1)).toNat

end

end A281751.P2999927198334665977

/-!
# A281752: Binary representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 397", based on the 5-celled von Neumann neighborhood.

The programs for A281752, there is no canonical definition to state claims against.
-/

/-! ## A281752.P17406992837304020065

`A007088(A281754(n))`
-/

namespace A281752.P17406992837304020065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A281754 n).toNat

end

end A281752.P17406992837304020065

/-! ## A281752.P1496996874162642520

`A185544(2*A281754(n))`
-/

namespace A281752.P1496996874162642520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A281754 n).toNat

end

end A281752.P1496996874162642520

/-! ## A281752.P8684343930051022952

`∏{e}[7^n, A282117(#)]`
-/

namespace A281752.P8684343930051022952
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A282117 (Nat.factorization (f1 n) p)

end

end A281752.P8684343930051022952

/-! ## A281752.P8506631028328696510

`A282117(A001222(5^n))`
-/

namespace A281752.P8506631028328696510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282117 (A001222 (5 ^ n)).toNat

end

end A281752.P8506631028328696510

/-!
# A281753: Binary representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 397", based on the 5-celled von Neumann neighborhood.

The programs for A281753, there is no canonical definition to state claims against.
-/

/-! ## A281753.P1379531997299725224

`A007088(A281755(n))`
-/

namespace A281753.P1379531997299725224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A281755 n).toNat

end

end A281753.P1379531997299725224

/-! ## A281753.P10869267933493099496

`A185544(2*A281755(n))`
-/

namespace A281753.P10869267933493099496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A281755 n).toNat

end

end A281753.P10869267933493099496

/-! ## A281753.P17944171646953383946

`A282118(A004880(n+1))`
-/

namespace A281753.P17944171646953383946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282118 (A004880 (n + 1)).toNat

end

end A281753.P17944171646953383946

/-! ## A281753.P11374568884922924561

`A282118(A004891(n+1))`
-/

namespace A281753.P11374568884922924561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282118 (A004891 (n + 1)).toNat

end

end A281753.P11374568884922924561

/-!
# A281754: Decimal representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 397", based on the 5-celled von Neumann neighborhood.

The programs for A281754, there is no canonical definition to state claims against.
-/

/-! ## A281754.P4222769225984356996

`A282119(A004891(n+1))`
-/

namespace A281754.P4222769225984356996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282119 (A004891 (n + 1)).toNat

end

end A281754.P4222769225984356996

/-! ## A281754.P2869589910993764025

`A282119(A004902(n+1))`
-/

namespace A281754.P2869589910993764025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282119 (A004902 (n + 1)).toNat

end

end A281754.P2869589910993764025

/-! ## A281754.P8779576735059885262

`A282119(A004913(n+1))`
-/

namespace A281754.P8779576735059885262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282119 (A004913 (n + 1)).toNat

end

end A281754.P8779576735059885262

/-! ## A281754.P4513831747930802251

`A282119(A032551(n+1))`
-/

namespace A281754.P4513831747930802251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282119 (A032551 (n + 1)).toNat

end

end A281754.P4513831747930802251

/-!
# A281755: Decimal representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 397", based on the 5-celled von Neumann neighborhood.

The programs for A281755, there is no canonical definition to state claims against.
-/

/-! ## A281755.P10842303916011831143

`A282120(n)%p?[3^n+16]`
-/

namespace A281755.P10842303916011831143
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n + 16

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A282120 n) (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ)

end

end A281755.P10842303916011831143

/-! ## A281755.P17942933992586470289

`A033862(A282120(n))`
-/

namespace A281755.P17942933992586470289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033862 (A282120 n).toNat

end

end A281755.P17942933992586470289

/-! ## A281755.P619019327013178295

`A052410(A282120(n)²)`
-/

namespace A281755.P619019327013178295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052410 (A282120 n ^ 2).toNat

end

end A281755.P619019327013178295

/-! ## A281755.P8075946980429609438

`A282120(A004891(n+1))`
-/

namespace A281755.P8075946980429609438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282120 (A004891 (n + 1)).toNat

end

end A281755.P8075946980429609438

/-!
# A281756: Binary representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 398", based on the 5-celled von Neumann neighborhood.

The programs for A281756, there is no canonical definition to state claims against.
-/

/-! ## A281756.P18221003626417687074

`A000042(n+1)-A283065(A028310(n))`
-/

namespace A281756.P18221003626417687074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000042 (n + 1) - A283065 (A028310 n).toNat

end

end A281756.P18221003626417687074

/-! ## A281756.P4730955671264564189

`A282977(n)+A282007(n)-A283065(n)`
-/

namespace A281756.P4730955671264564189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282977 n + A282007 n - A283065 n

end

end A281756.P4730955671264564189

/-! ## A281756.P3116716519463283430

`A007088(A281758(n))`
-/

namespace A281756.P3116716519463283430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A281758 n).toNat

end

end A281756.P3116716519463283430

/-! ## A281756.P3439341210165177294

`A007088(A095121(n)+1-A283067(n))`
-/

namespace A281756.P3439341210165177294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A095121 n + (1 - A283067 n)).toNat

end

end A281756.P3439341210165177294

/-! ## A281756.P13481423226130219042

`A007088(1-(A283067(n)-A095121(n)))`
-/

namespace A281756.P13481423226130219042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (1 - (A283067 n - A095121 n)).toNat

end

end A281756.P13481423226130219042

/-!
# A281757: Binary representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 398", based on the 5-celled von Neumann neighborhood.

The programs for A281757, there is no canonical definition to state claims against.
-/

/-! ## A281757.P5144961296507523543

`A281756(n)+A283065(n)-A283066(n)`
-/

namespace A281757.P5144961296507523543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281756 n + (A283065 n - A283066 n)

end

end A281757.P5144961296507523543

/-! ## A281757.P15342592830675583478

`A007088(A281759(n))`
-/

namespace A281757.P15342592830675583478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A281759 n).toNat

end

end A281757.P15342592830675583478

/-! ## A281757.P1655381676079794265

`A007088(A095121(n)+1-A283068(n))`
-/

namespace A281757.P1655381676079794265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A095121 n + (1 - A283068 n)).toNat

end

end A281757.P1655381676079794265

/-! ## A281757.P17201008804262029269

`A007088(1-(A283068(n)-A095121(n)))`
-/

namespace A281757.P17201008804262029269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (1 - (A283068 n - A095121 n)).toNat

end

end A281757.P17201008804262029269

/-! ## A281757.P17156012117806942340

`A007088(or(1, A126646(n)-A283068(n)))`
-/

namespace A281757.P17156012117806942340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (Int.lor 1 (A126646 n - A283068 n)).toNat

end

end A281757.P17156012117806942340

/-!
# A281758: Decimal representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 398", based on the 5-celled von Neumann neighborhood.

The programs for A281758, there is no canonical definition to state claims against.
-/

/-! ## A281758.P18129960499814551939

`A095121(n)+1-A283067(n)`
-/

namespace A281758.P18129960499814551939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095121 n + (1 - A283067 n)

end

end A281758.P18129960499814551939

/-! ## A281758.P8883095854922930383

`xor(record[A324715(n+1)], A283067(n))`
-/

namespace A281758.P8883095854922930383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324715 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A283067 n)

end

end A281758.P8883095854922930383

/-! ## A281758.P17614431347027871344

`A126646(n)-A283067(A028310(n))`
-/

namespace A281758.P17614431347027871344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126646 n - A283067 (A028310 n).toNat

end

end A281758.P17614431347027871344

/-! ## A281758.P1430773660749495712

`A281759(n)+A283068(n)-A283067(n)`
-/

namespace A281758.P1430773660749495712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281759 n + (A283068 n - A283067 n)

end

end A281758.P1430773660749495712

/-! ## A281758.P10436525568829528741

`A282979(n)+A282009(n)-A283067(n)`
-/

namespace A281758.P10436525568829528741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282979 n + A282009 n - A283067 n

end

end A281758.P10436525568829528741

/-! ## A281758.P2229542650408093184

`A282264(n)+A282829(n)-A283067(n)`
-/

namespace A281758.P2229542650408093184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282264 n + (A282829 n - A283067 n)

end

end A281758.P2229542650408093184

/-! ## A281758.P10934326707001392260

`A126646(n)+A057428(n)*A283067(n)`
-/

namespace A281758.P10934326707001392260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126646 n + A057428 n * A283067 n

end

end A281758.P10934326707001392260

/-! ## A281758.P9891074082342454147

`A126646(n)-A283067(n)%A000079(n)`
-/

namespace A281758.P9891074082342454147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126646 n - Int.tmod (A283067 n) (A000079 n)

end

end A281758.P9891074082342454147

/-! ## A281758.P480668088505271209

`xor(A126646(n)%A007070(n), A283067(n))`
-/

namespace A281758.P480668088505271209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (Int.tmod (A126646 n) (A007070 n)) (A283067 n)

end

end A281758.P480668088505271209

/-! ## A281758.P10339175166931789094

`A127330(A000124(n))-A283067(n)`
-/

namespace A281758.P10339175166931789094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127330 (A000124 n).toNat - A283067 n

end

end A281758.P10339175166931789094

/-!
# A281759: Decimal representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 398", based on the 5-celled von Neumann neighborhood.

The programs for A281759, there is no canonical definition to state claims against.
-/

/-! ## A281759.P5741170691721865377

`A095121(n)+1-A283068(n)`
-/

namespace A281759.P5741170691721865377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095121 n + (1 - A283068 n)

end

end A281759.P5741170691721865377

/-! ## A281759.P18012836327834505697

`or(1, A126646(n)-A283068(n))`
-/

namespace A281759.P18012836327834505697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A126646 n - A283068 n)

end

end A281759.P18012836327834505697

/-! ## A281759.P6343256504495613049

`A281758(n)+A283067(n)-A283068(n)`
-/

namespace A281759.P6343256504495613049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281758 n + (A283067 n - A283068 n)

end

end A281759.P6343256504495613049

/-! ## A281759.P286688645782703213

`A282264(n)+A282829(n)-A283068(n)`
-/

namespace A281759.P286688645782703213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282264 n + (A282829 n - A283068 n)

end

end A281759.P286688645782703213

/-! ## A281759.P194840156520512916

`A126646(n)+A057428(n)*A283068(n)`
-/

namespace A281759.P194840156520512916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126646 n + A057428 n * A283068 n

end

end A281759.P194840156520512916

/-! ## A281759.P9476736616646471757

`A126646(n)-A283068(n)%A007070(n)`
-/

namespace A281759.P9476736616646471757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126646 n - Int.tmod (A283068 n) (A007070 n)

end

end A281759.P9476736616646471757

/-! ## A281759.P14249004891198526204

`A127330(A000124(n))-A283068(n)`
-/

namespace A281759.P14249004891198526204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127330 (A000124 n).toNat - A283068 n

end

end A281759.P14249004891198526204

/-!
# A281760: Number of n X 3 0..1 arrays with no element unequal to a strict majority of its horizontal, diagonal and antidiagonal neighbors, with the exception of exactly one element, and with new values introduced in order 0 sequentially upwards.

The programs for A281760, the canonical program `A281760.P386550362659306252` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A281760 has offset 1).

The definition of A281760 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 463 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A281760.P386550362659306252

`ogf((2+6x-x^2-38x^3+49x^4-32x^5-26x^6+36x^7+6x^8+8x^9+8x^10)/(1-4x+4x^2+2x^3-4x^4+x^6))`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A281760

/-- `ogf((2+6x-x^2-38x^3+49x^4-32x^5-26x^6+36x^7+6x^8+8x^9+8x^10)/(1-4x+4x^2+2x^3-4x^4+x^6))` -/
def P386550362659306252.Spec : Prop :=
  ∀ n, P386550362659306252.a n = A281760 (n + 1)

theorem P386550362659306252.correct : P386550362659306252.Spec := by
  intro n
  simp only [A281760, Nat.add_sub_cancel]

end A281760

/-! ## A281760.P15938699747121210547

`A281765(∑[n+3]+1)`
-/

namespace A281760.P15938699747121210547
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281765 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A281760.P15938699747121210547

namespace A281760

/-- `A281765(∑[n+3]+1)` -/
def P15938699747121210547.Spec : Prop :=
  ∀ n, P15938699747121210547.a n = A281760 (n + 1)

end A281760

/-! ## A281760.P15154831175351036798

`A281765(A034856(n+2))+char[16]`
-/

namespace A281760.P15154831175351036798
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281765 (A034856 (n + 2)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A281760.P15154831175351036798

namespace A281760

/-- `A281765(A034856(n+2))+char[16]` -/
def P15154831175351036798.Spec : Prop :=
  ∀ n, P15154831175351036798.a n = A281760 (n + 1)

end A281760

/-! ## A281760.P17668676575455891621

`record[gcd(A281765(n+1), A328610(n+1))]`
-/

namespace A281760.P17668676575455891621
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A281765 (n + 1)) (A328610 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A281760.P17668676575455891621

namespace A281760

/-- `record[gcd(A281765(n+1), A328610(n+1))]` -/
def P17668676575455891621.Spec : Prop :=
  ∀ n, (P17668676575455891621.a n : ℤ) = A281760 (n + 1)

end A281760

/-! ## A281760.P3538229693899082541

`A281765(A034856(n+2))%A279130(n+1)`
-/

namespace A281760.P3538229693899082541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A281765 (A034856 (n + 2)).toNat) (A279130 (n + 1))

end

end A281760.P3538229693899082541

namespace A281760

/-- `A281765(A034856(n+2))%A279130(n+1)` -/
def P3538229693899082541.Spec : Prop :=
  ∀ n, P3538229693899082541.a n = A281760 (n + 1)

end A281760

/-!
# A281761: Number of nX4 0..1 arrays with no element unequal to a strict majority of its horizontal, diagonal and antidiagonal neighbors, with the exception of exactly one element, and with new values introduced in order 0 sequentially upwards.

The programs for A281761, there is no canonical definition to state claims against.
-/

/-! ## A281761.P13483851758517618334

`A281765(∑[n+4]+3)`
-/

namespace A281761.P13483851758517618334
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281765 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A281761.P13483851758517618334

/-! ## A281761.P15588306830231068393

`lcm(2, A281765(A027379(n+2)))`
-/

namespace A281761.P15588306830231068393
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A281765 (A027379 (n + 2)).toNat)

end

end A281761.P15588306830231068393

/-! ## A281761.P4111351906871833960

`record[gcd(A281765(n+1), A374996(n+3))]`
-/

namespace A281761.P4111351906871833960
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A281765 (n + 1)) (A374996 (n + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A281761.P4111351906871833960

/-! ## A281761.P7013325993275816813

`record[A281765(A141214(∑[(-1)^(n%3)]))]`
-/

namespace A281761.P7013325993275816813
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ (n % 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281765 (A141214 (∑ j ∈ Finset.range (n + 1), f2 j).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A281761.P7013325993275816813

/-! ## A281761.P16437636180315403573

`A281765(A027379(n+2))%A080125(n+1)`
-/

namespace A281761.P16437636180315403573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A281765 (A027379 (n + 2)).toNat) (A080125 (n + 1))

end

end A281761.P16437636180315403573

/-!
# A281762: Number of nX5 0..1 arrays with no element unequal to a strict majority of its horizontal, diagonal and antidiagonal neighbors, with the exception of exactly one element, and with new values introduced in order 0 sequentially upwards.

The programs for A281762, there is no canonical definition to state claims against.
-/

/-! ## A281762.P12797517855260150973

`A281765(∑[n+5]+6)`
-/

namespace A281762.P12797517855260150973
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281765 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A281762.P12797517855260150973

/-!
# A281763: Number of nX6 0..1 arrays with no element unequal to a strict majority of its horizontal, diagonal and antidiagonal neighbors, with the exception of exactly one element, and with new values introduced in order 0 sequentially upwards.

The programs for A281763, there is no canonical definition to state claims against.
-/

/-! ## A281763.P6790592495704572356

`A281765(A052905(n+3))`
-/

namespace A281763.P6790592495704572356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281765 (A052905 (n + 3)).toNat

end

end A281763.P6790592495704572356

/-! ## A281763.P12196941290086976591

`A281765(A056119(n)+16)`
-/

namespace A281763.P12196941290086976591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281765 (A056119 n + 16).toNat

end

end A281763.P12196941290086976591

/-! ## A281763.P14660689990445066544

`A281765(eq[3, A219347(n)])`
-/

namespace A281763.P14660689990445066544
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281765 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A281763.P14660689990445066544

/-! ## A281763.P8176429604508274575

`A281765(eq[5, A193592(n)])`
-/

namespace A281763.P8176429604508274575
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281765 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A281763.P8176429604508274575

/-! ## A281763.P1766142247017028642

`A281765(eq[8, A258709(n)])`
-/

namespace A281763.P1766142247017028642
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258709 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281765 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A281763.P1766142247017028642

/-!
# A281764: Number of nX7 0..1 arrays with no element unequal to a strict majority of its horizontal, diagonal and antidiagonal neighbors, with the exception of exactly one element, and with new values introduced in order 0 sequentially upwards.

The programs for A281764, there is no canonical definition to state claims against.
-/

/-! ## A281764.P2973111314039257878

`A281765(A055999(n+4))`
-/

namespace A281764.P2973111314039257878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281765 (A055999 (n + 4)).toNat

end

end A281764.P2973111314039257878

/-! ## A281764.P14557884616458403398

`A281765(eq[4, A219347(n)])`
-/

namespace A281764.P14557884616458403398
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281765 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A281764.P14557884616458403398

/-! ## A281764.P3040317545010075696

`A281765(eq[5, A332954(n)])`
-/

namespace A281764.P3040317545010075696
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332954 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281765 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A281764.P3040317545010075696

/-! ## A281764.P4778677063649125042

`A281765(eq[6, A193592(n)])`
-/

namespace A281764.P4778677063649125042
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281765 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A281764.P4778677063649125042

/-! ## A281764.P7683634655386067257

`A281765(Δ[A023551(n+2)])`
-/

namespace A281764.P7683634655386067257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281765 (f1 (n + 1) - f1 n).toNat

end

end A281764.P7683634655386067257

/-!
# A281766: Number of 2 X n 0..1 arrays with no element unequal to a strict majority of its horizontal, diagonal and antidiagonal neighbors, with the exception of exactly one element, and with new values introduced in order 0 sequentially upwards.

The programs for A281766, the canonical program `A281766.P4187896924620825813` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A281766 has offset 1).

The definition of A281766 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 288 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A281766.P4187896924620825813

`ogf((4x-2x^2-20x^3+28x^5+2x^6-12x^7)/(1-4x-x^2+16x^3+x^4-30x^5-4x^6+24x^7+4x^8-8x^9))`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A281766

/-- `ogf((4x-2x^2-20x^3+28x^5+2x^6-12x^7)/(1-4x-x^2+16x^3+x^4-30x^5-4x^6+24x^7+4x^8-8x^9))` -/
def P4187896924620825813.Spec : Prop :=
  ∀ n, P4187896924620825813.a n = A281766 (n + 1)

theorem P4187896924620825813.correct : P4187896924620825813.Spec := by
  intro n
  simp only [A281766, Nat.add_sub_cancel]

end A281766

/-! ## A281766.P5233107399414887070

`A281765(∑[n+1]+2)`
-/

namespace A281766.P5233107399414887070
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281765 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A281766.P5233107399414887070

namespace A281766

/-- `A281765(∑[n+1]+2)` -/
def P5233107399414887070.Spec : Prop :=
  ∀ n, P5233107399414887070.a n = A281766 (n + 1)

end A281766

/-! ## A281766.P15831630392445955682

`lcm(2, A281765(A133263(n+1)))`
-/

namespace A281766.P15831630392445955682
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A281765 (A133263 (n + 1)).toNat)

end

end A281766.P15831630392445955682

namespace A281766

/-- `lcm(2, A281765(A133263(n+1)))` -/
def P15831630392445955682.Spec : Prop :=
  ∀ n, (P15831630392445955682.a n : ℤ) = A281766 (n + 1)

end A281766

/-! ## A281766.P1743296883951358209

`record[A281765(n+1)*A326822(n)]`
-/

namespace A281766.P1743296883951358209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281765 (n + 1) * A326822 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A281766.P1743296883951358209

namespace A281766

/-- `record[A281765(n+1)*A326822(n)]` -/
def P1743296883951358209.Spec : Prop :=
  ∀ n, P1743296883951358209.a n = A281766 (n + 1)

end A281766

/-! ## A281766.P12462554687487802499

`record[A010054(n)*A281765(n+2)]`
-/

namespace A281766.P12462554687487802499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A281765 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A281766.P12462554687487802499

namespace A281766

/-- `record[A010054(n)*A281765(n+2)]` -/
def P12462554687487802499.Spec : Prop :=
  ∀ n, P12462554687487802499.a n = A281766 (n + 1)

end A281766

/-!
# A281767: Number of 3Xn 0..1 arrays with no element unequal to a strict majority of its horizontal, diagonal and antidiagonal neighbors, with the exception of exactly one element, and with new values introduced in order 0 sequentially upwards.

The programs for A281767, there is no canonical definition to state claims against.
-/

/-! ## A281767.P5841026790197122611

`A281765(∑[n+2]+4)`
-/

namespace A281767.P5841026790197122611
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281765 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A281767.P5841026790197122611

/-! ## A281767.P14823272498443604240

`ceil(acot(n))*A281765(A167614(n+1))`
-/

namespace A281767.P14823272498443604240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈SequenceMachineLib.acot (n : ℝ)⌉ * A281765 (A167614 (n + 1)).toNat

end

end A281767.P14823272498443604240

/-! ## A281767.P7350565197346089692

`lcm(log2(1/2), A281765(A046691(n)+7))`
-/

namespace A281767.P7350565197346089692
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (SequenceMachineLib.roundAway (Real.logb 2 ((1 : ℚ) / 2 : ℝ))) (A281765 (A046691 n + 7).toNat)

end

end A281767.P7350565197346089692

/-! ## A281767.P11748307610918419409

`A281765(A167614(n+1))%A010997(n)`
-/

namespace A281767.P11748307610918419409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A281765 (A167614 (n + 1)).toNat) (A010997 (n + 44))

end

end A281767.P11748307610918419409

/-! ## A281767.P15376991635899620833

`lcm(A011602(n), A281765(A167614(n+1)))`
-/

namespace A281767.P15376991635899620833
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A011602 n) (A281765 (A167614 (n + 1)).toNat)

end

end A281767.P15376991635899620833

/-!
# A281768: Number of 4Xn 0..1 arrays with no element unequal to a strict majority of its horizontal, diagonal and antidiagonal neighbors, with the exception of exactly one element, and with new values introduced in order 0 sequentially upwards.

The programs for A281768, there is no canonical definition to state claims against.
-/

/-! ## A281768.P699693135285455106

`A281765(∑[n+3]+7)`
-/

namespace A281768.P699693135285455106
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281765 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A281768.P699693135285455106

/-! ## A281768.P17207698689827293853

`lcm(2, A281765(A052905(n)+9))`
-/

namespace A281768.P17207698689827293853
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A281765 (A052905 n + 9).toNat)

end

end A281768.P17207698689827293853

/-! ## A281768.P155854737961343351

`char[A007318(n)]*A281765(A052905(n)+9)`
-/

namespace A281768.P155854737961343351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A281765 (A052905 n + 9).toNat

end

end A281768.P155854737961343351

/-! ## A281768.P3237563583087700487

`A014963(6*(n+1))*A281765(A052905(n)+9)`
-/

namespace A281768.P3237563583087700487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (6 * (n + 1)) * A281765 (A052905 n + 9).toNat

end

end A281768.P3237563583087700487

/-! ## A281768.P2417734556640586804

`A281765(A052905(n)+9)+A008683(9*(n+1))`
-/

namespace A281768.P2417734556640586804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281765 (A052905 n + 9).toNat + A008683 (9 * (n + 1))

end

end A281768.P2417734556640586804

/-!
# A281769: Number of 5Xn 0..1 arrays with no element unequal to a strict majority of its horizontal, diagonal and antidiagonal neighbors, with the exception of exactly one element, and with new values introduced in order 0 sequentially upwards.

The programs for A281769, there is no canonical definition to state claims against.
-/

/-! ## A281769.P14281166792916851811

`A281765(A167499(n+3))`
-/

namespace A281769.P14281166792916851811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281765 (A167499 (n + 3)).toNat

end

end A281769.P14281166792916851811

/-! ## A281769.P7590827550048448131

`A281765(A155212(n)+13)`
-/

namespace A281769.P7590827550048448131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281765 (A155212 n + 13).toNat

end

end A281769.P7590827550048448131

/-! ## A281769.P7313187734449422694

`A281765(A056000(n)+15)`
-/

namespace A281769.P7313187734449422694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281765 (A056000 n + 15).toNat

end

end A281769.P7313187734449422694

/-! ## A281769.P6419551476718874909

`A281765(eq[7, A066657(n)])`
-/

namespace A281769.P6419551476718874909
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281765 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A281769.P6419551476718874909

/-! ## A281769.P13155758030300326172

`A281765(A167614(n+3)+2)`
-/

namespace A281769.P13155758030300326172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281765 (A167614 (n + 3) + 2).toNat

end

end A281769.P13155758030300326172

/-!
# A281770: Number of 6Xn 0..1 arrays with no element unequal to a strict majority of its horizontal, diagonal and antidiagonal neighbors, with the exception of exactly one element, and with new values introduced in order 0 sequentially upwards.

The programs for A281770, there is no canonical definition to state claims against.
-/

/-! ## A281770.P10168094888034474605

`A281765(C(n+6, 2)+6)`
-/

namespace A281770.P10168094888034474605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281765 (Nat.choose (n + 6) 2 + 6)

end

end A281770.P10168094888034474605

/-! ## A281770.P1981537459671462345

`A281765(A056115(n)+21)`
-/

namespace A281770.P1981537459671462345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281765 (A056115 n + 21).toNat

end

end A281770.P1981537459671462345

/-! ## A281770.P7690000707865747128

`A281765(A167499(n+4)+1)`
-/

namespace A281770.P7690000707865747128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281765 (A167499 (n + 4) + 1).toNat

end

end A281770.P7690000707865747128

/-! ## A281770.P16909387387638506785

`A281765(A046691(n+3)+10)`
-/

namespace A281770.P16909387387638506785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281765 (A046691 (n + 3) + 10).toNat

end

end A281770.P16909387387638506785

/-! ## A281770.P526653512305894321

`A281765(eq[6, A130270(n+1)])`
-/

namespace A281770.P526653512305894321
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130270 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281765 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A281770.P526653512305894321

/-!
# A281771: Number of 7Xn 0..1 arrays with no element unequal to a strict majority of its horizontal, diagonal and antidiagonal neighbors, with the exception of exactly one element, and with new values introduced in order 0 sequentially upwards.

The programs for A281771, there is no canonical definition to state claims against.
-/

/-! ## A281771.P2084470662546612086

`A281765(A056119(n)+28)`
-/

namespace A281771.P2084470662546612086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281765 (A056119 n + 28).toNat

end

end A281771.P2084470662546612086

/-! ## A281771.P17079118814549584056

`A281765(eq[11, A066657(n)])`
-/

namespace A281771.P17079118814549584056
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281765 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A281771.P17079118814549584056

/-! ## A281771.P10328100029621377189

`A281765(eq[8, A131818(n+1)])`
-/

namespace A281771.P10328100029621377189
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281765 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A281771.P10328100029621377189

/-!
# A281772: a(n)=common difference of the n-th run of consecutive terms in arithmetic progression in A281579.

The programs for A281772, there is no canonical definition to state claims against.
-/

/-! ## A281772.P8688597640883760075

`A049347(lt[A347777(3*n), A003961(n+1)])`
-/

namespace A281772.P8688597640883760075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347777 (3 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049347 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A281772.P8688597640883760075

/-! ## A281772.P1195436858419050484

`A330025(A244895(n)+A022998(n)%A216560(n+1))`
-/

namespace A281772.P1195436858419050484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330025 (A244895 n + Int.tmod (A022998 n) (A216560 (n + 1))).toNat

end

end A281772.P1195436858419050484

/-! ## A281772.P5319774372776459511

`A330025(2*n*or(1, n²))`
-/

namespace A281772.P5319774372776459511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330025 (2 * (n * Nat.lor 1 (n ^ 2)))

end

end A281772.P5319774372776459511

/-! ## A281772.P17797717340399723656

`A102283(lt[A373948(n), A373948(3*n+1)])`
-/

namespace A281772.P17797717340399723656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373948 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373948 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102283 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A281772.P17797717340399723656

/-! ## A281772.P9979479811613125854

`A049347(lt[A294386(n), A103824(3*n+1)])`
-/

namespace A281772.P9979479811613125854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294386 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103824 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049347 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A281772.P9979479811613125854

/-!
# A281773: Number of distinct topologies on an n-set that have exactly 4 open sets.

The programs for A281773, the canonical program `A281773.P17493314902543766414` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A281773 has offset 0).

The definition of A281773 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A281773.P5611504940230884909

`ogf((x^2+3x^3)/(1-6x+11x^2-6x^3))`
-/

namespace A281773.P5611504940230884909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 1, 3] [1, -6, 11, -6] n

end

end A281773.P5611504940230884909

namespace A281773

/-- `ogf((x^2+3x^3)/(1-6x+11x^2-6x^3))` -/
def P5611504940230884909.Spec : Prop :=
  ∀ n, P5611504940230884909.a n = A281773 n

end A281773

/-! ## A281773.P14552161265455794562

`A000392(n+1)+3*A000392(n)`
-/

namespace A281773.P14552161265455794562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000392 (n + 1) + 3 * A000392 n

end

end A281773.P14552161265455794562

namespace A281773

/-- `A000392(n+1)+3*A000392(n)` -/
def P14552161265455794562.Spec : Prop :=
  ∀ n, P14552161265455794562.a n = A281773 n

end A281773

/-! ## A281773.P17493314902543766414

`6*a(n-1)-11*a(n-2)+6*a(n-3)` with `a(0)=0, a(1)=0, a(2)=1, a(3)=9`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A281773

/-- `6*a(n-1)-11*a(n-2)+6*a(n-3)` -/
def P17493314902543766414.Spec : Prop :=
  ∀ n, P17493314902543766414.a n = A281773 n

theorem P17493314902543766414.correct : P17493314902543766414.Spec := by
  intro n
  simp only [A281773]

end A281773

/-! ## A281773.P16354731596694353541

`∑[ogf((x^2+3x^3)/(1-5x+6x^2))]`
-/

namespace A281773.P16354731596694353541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 1, 3] [1, -5, 6] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A281773.P16354731596694353541

namespace A281773

/-- `∑[ogf((x^2+3x^3)/(1-5x+6x^2))]` -/
def P16354731596694353541.Spec : Prop :=
  ∀ n, P16354731596694353541.a n = A281773 n

end A281773

/-! ## A281773.P12048431644076856235

`3^n+1-∑[2^n]-ceil(2^(n-1))`
-/

namespace A281773.P12048431644076856235
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) + (1 - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)) - ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉

end

end A281773.P12048431644076856235

namespace A281773

/-- `3^n+1-∑[2^n]-ceil(2^(n-1))` -/
def P12048431644076856235.Spec : Prop :=
  ∀ n, P12048431644076856235.a n = A281773 n

end A281773

/-! ## A281773.P5952396743792964664

`Δ[A298564(round(acot(n)+n)-2)]`
-/

namespace A281773.P5952396743792964664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298564 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ)) - 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A281773.P5952396743792964664

namespace A281773

/-- `Δ[A298564(round(acot(n)+n)-2)]` -/
def P5952396743792964664.Spec : Prop :=
  ∀ n, P5952396743792964664.a n = A281773 n

end A281773

/-! ## A281773.P2192474171061821716

`abs(A083323(n)-A083329(n))`
-/

namespace A281773.P2192474171061821716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A083323 n - A083329 n|

end

end A281773.P2192474171061821716

namespace A281773

/-- `abs(A083323(n)-A083329(n))` -/
def P2192474171061821716.Spec : Prop :=
  ∀ n, P2192474171061821716.a n = A281773 n

end A281773

/-! ## A281773.P5830791866802022642

`abs(A083313(n)-A095121(n))`
-/

namespace A281773.P5830791866802022642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A083313 n - A095121 n|

end

end A281773.P5830791866802022642

namespace A281773

/-- `abs(A083313(n)-A095121(n))` -/
def P5830791866802022642.Spec : Prop :=
  ∀ n, P5830791866802022642.a n = A281773 n

end A281773

/-! ## A281773.P10836017925304889279

`abs(A001047(n)-A296953(n))`
-/

namespace A281773.P10836017925304889279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001047 n - A296953 n|

end

end A281773.P10836017925304889279

namespace A281773

/-- `abs(A001047(n)-A296953(n))` -/
def P10836017925304889279.Spec : Prop :=
  ∀ n, P10836017925304889279.a n = A281773 n

end A281773

/-! ## A281773.P15201259531286116376

`Δ[A298564(A233583(n+1)-2)]`
-/

namespace A281773.P15201259531286116376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298564 (A233583 (n + 1) - 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A281773.P15201259531286116376

namespace A281773

/-- `Δ[A298564(A233583(n+1)-2)]` -/
def P15201259531286116376.Spec : Prop :=
  ∀ n, P15201259531286116376.a n = A281773 n

end A281773

/-!
# A281774: Number of distinct topologies on an n-set with exactly 6 open sets.

The programs for A281774, there is no canonical definition to state claims against.
-/

/-! ## A281774.P4429486072849581351

`or(2, n)*A008615(A000670(n))`
-/

namespace A281774.P4429486072849581351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 2 n : ℤ) * A008615 (A000670 n).toNat

end

end A281774.P4429486072849581351

/-! ## A281774.P492142172301848644

`A008585(A198198(n)-A286515(n))`
-/

namespace A281774.P492142172301848644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 (A198198 n - A286515 n).toNat

end

end A281774.P492142172301848644

/-!
# A281775: Number of distinct topologies on an n-set that have exactly 7 open sets.

The programs for A281775, there is no canonical definition to state claims against.
-/

/-! ## A281775.P14058728849153762346

`A381993(A134304(n+1))`
-/

namespace A281775.P14058728849153762346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381993 (A134304 (n + 1)).toNat

end

end A281775.P14058728849153762346

/-! ## A281775.P6928454386025253755

`A326679(A145126(n)+2)`
-/

namespace A281775.P6928454386025253755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326679 (A145126 n + 2).toNat

end

end A281775.P6928454386025253755

/-!
# A281776: Number of distinct topologies on an n-set that have exactly 8 open sets.

The programs for A281776, there is no canonical definition to state claims against.
-/

/-! ## A281776.P4626959891575013844

`A004525(A308998(n²))`
-/

namespace A281776.P4626959891575013844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A308998 (n ^ 2)).toNat

end

end A281776.P4626959891575013844

/-! ## A281776.P4304110291539687380

`A131142(A093972(n+1))`
-/

namespace A281776.P4304110291539687380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131142 (A093972 (n + 1)).toNat

end

end A281776.P4304110291539687380

/-!
# A281777: Number of distinct topologies on an n-set that have exactly 9 open sets.

The programs for A281777, there is no canonical definition to state claims against.
-/

/-! ## A281777.P10167561753406005058

`A326882(or(7, 2^n))`
-/

namespace A281777.P10167561753406005058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326882 (Nat.lor 7 (2 ^ n))

end

end A281777.P10167561753406005058

/-! ## A281777.P5102032230138749915

`A349796(A029907(n))*A370193(n+1)`
-/

namespace A281777.P5102032230138749915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349796 (A029907 n).toNat * A370193 (n + 1)

end

end A281777.P5102032230138749915

/-!
# A281778: Number of distinct topologies on an n-set that have exactly 10 open sets.

The programs for A281778, there is no canonical definition to state claims against.
-/

/-! ## A281778.P17982907322461555219

`A063730(∑[floor(sqrt(n))]!)`
-/

namespace A281778.P17982907322461555219
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.sqrt n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063730 (Nat.factorial (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A281778.P17982907322461555219

/-! ## A281778.P8814196520334641419

`A035930(A047707(n))`
-/

namespace A281778.P8814196520334641419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035930 (A047707 n).toNat

end

end A281778.P8814196520334641419

/-!
# A281780: Number of distinct topologies on an n-set that have exactly 12 open sets.

The programs for A281780, there is no canonical definition to state claims against.
-/

/-! ## A281780.P8225756363587054395

`lcm(A001609(n+1), A037185(A069241(n)))`
-/

namespace A281780.P8225756363587054395
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A001609 (n + 1)) (A037185 (A069241 n).toNat)

end

end A281780.P8225756363587054395

/-! ## A281780.P591505171806127188

`A268708(C(∑[n], 8))`
-/

namespace A281780.P591505171806127188
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268708 (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 8)

end

end A281780.P591505171806127188

/-!
# A281782: Numbers n such that sum of prime power divisors of n > sum of prime power divisors of m for all m < n.

The programs for A281782, there is no canonical definition to state claims against.
-/

/-! ## A281782.P15115371471054063175

`∩[A128603(n+1), A239973(n+1)]`
-/

namespace A281782.P15115371471054063175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128603 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239973 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A281782.P15115371471054063175

/-! ## A281782.P12365120663060509338

`∩[A263977(n+1), A340324(n+1)]`
-/

namespace A281782.P12365120663060509338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263977 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340324 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A281782.P12365120663060509338

/-! ## A281782.P1079876218907504469

`eq[A228351(A225620(3*n+4)), A333224(n)]`
-/

namespace A281782.P1079876218907504469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228351 (A225620 (3 * n + 4)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333224 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A281782.P1079876218907504469

/-!
# A281783: a(n)=index of first term of n-th run of consecutive terms in arithmetic progression in A281579.

The programs for A281783, there is no canonical definition to state claims against.
-/

/-! ## A281783.P14084463842910263168

`A380317(n)+a(n-1)` with `a(0)=1`
-/

namespace A281783.P14084463842910263168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A380317 n + a (n - 1)

end

end A281783.P14084463842910263168

/-! ## A281783.P2543523313782720016

`∑[A281579(round(acot(n)+n))-1]`
-/

namespace A281783.P2543523313782720016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281579 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A281783.P2543523313782720016

/-! ## A281783.P642025271860548754

`a(n-1)+A281579(n)-1` with `a(0)=1`
-/

namespace A281783.P642025271860548754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A281579 n - 1)

end

end A281783.P642025271860548754

/-! ## A281783.P14791257310044210343

`∑[A281579(round(sqrt(n²+1)))-1]`
-/

namespace A281783.P14791257310044210343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281579 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A281783.P14791257310044210343

/-! ## A281783.P18428496658044418480

`∑[(A281579(n)-1)*a(2-A000034(n))]` with `a(0)=1`
-/

namespace A281783.P18428496658044418480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  (A281579 n - 1) * f1 (2 - A000034 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A281783.P18428496658044418480

/-! ## A281783.P10859058534778844210

`∑[(A281579(n)-1)*a(A225654(n))]` with `a(0)=1`
-/

namespace A281783.P10859058534778844210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  (A281579 n - 1) * f1 (A225654 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A281783.P10859058534778844210

/-!
# A281784: Number of permutations of size n avoiding the three vincular patterns 2-41-3, 3-14-2 and 3-41-2.

The programs for A281784, there is no canonical definition to state claims against.
-/

/-! ## A281784.P14963223272084169041

`round(sqrt(A002313(round((n+2)^n/3)+1)))`
-/

namespace A281784.P14963223272084169041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A002313 (SequenceMachineLib.roundAway (((n + 2) ^ n : ℚ) / 3) + 1).toNat : ℝ))

end

end A281784.P14963223272084169041

/-! ## A281784.P10244320323352614122

`A039708(A150868(n))`
-/

namespace A281784.P10244320323352614122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039708 (A150868 n).toNat

end

end A281784.P10244320323352614122

/-!
# A281785: a(n) is multiplicative with a(2^e) = 1, a(3^e) = -8 if e>0, a(p^e) = (p^(e+1) - 1) / (p - 1) if p>3.

The programs for A281785, the canonical program `A281785.P16696734962775317770` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A281785 has offset 1).

The definition of A281785 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A281785.P16696734962775317770

`A061347(n+1)*A116607(A000265(n+1))`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A281785

/-- `A061347(n+1)*A116607(A000265(n+1))` -/
def P16696734962775317770.Spec : Prop :=
  ∀ n, P16696734962775317770.a n = A281785 (n + 1)

theorem P16696734962775317770.correct : P16696734962775317770.Spec := by
  intro n
  simp only [A281785, Nat.add_sub_cancel]

end A281785

/-! ## A281785.P2567116451277924883

`A281786(n+1)/3`
-/

namespace A281785.P2567116451277924883
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A281786 (n + 1) : ℚ) / 3

end

end A281785.P2567116451277924883

namespace A281785

/-- `A281786(n+1)/3` -/
def P2567116451277924883.Spec : Prop :=
  ∀ n, P2567116451277924883.a n = (A281785 (n + 1) : ℚ)

end A281785

/-! ## A281785.P6418441744991811793

`Δ[∑[A281786(n)]/3]`
-/

namespace A281785.P6418441744991811793
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281786 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A281785.P6418441744991811793

namespace A281785

/-- `Δ[∑[A281786(n)]/3]` -/
def P6418441744991811793.Spec : Prop :=
  ∀ n, P6418441744991811793.a n = (A281785 (n + 1) : ℚ)

end A281785

/-! ## A281785.P12392626481962367361

`A116607(A000265(n+1))*A195587(2*n+5)`
-/

namespace A281785.P12392626481962367361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116607 (A000265 (n + 1)).toNat * A195587 (2 * n + 5)

end

end A281785.P12392626481962367361

namespace A281785

/-- `A116607(A000265(n+1))*A195587(2*n+5)` -/
def P12392626481962367361.Spec : Prop :=
  ∀ n, P12392626481962367361.a n = A281785 (n + 1)

end A281785

/-! ## A281785.P10280228809028247279

`A186099(n+1)-A284103(A276086(2*n+1))`
-/

namespace A281785.P10280228809028247279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186099 (n + 1) - A284103 (A276086 (2 * n + 1)).toNat

end

end A281785.P10280228809028247279

namespace A281785

/-- `A186099(n+1)-A284103(A276086(2*n+1))` -/
def P10280228809028247279.Spec : Prop :=
  ∀ n, P10280228809028247279.a n = A281785 (n + 1)

end A281785

/-!
# A281786: Expansion of a(q) * b(q^2) + a(q^2) * b(q) in powers of q where a(), b() are cubic AGM functions.

The programs for A281786, there is no canonical definition to state claims against.
-/

/-! ## A281786.P849542764092137412

`A252650(2*n)+A252650(4*n)`
-/

namespace A281786.P849542764092137412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252650 (2 * n) + A252650 (4 * n)

end

end A281786.P849542764092137412

/-!
# A281787: a(n) = sum of all numbers between 1 and 10^n that are divisible by 3 or 5.

The programs for A281787, the canonical program `A281787.P6667093566369883980` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A281787 has offset 1).

The definition of A281787 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A281787.P6667093566369883980

`7/30*100^(n+1)-1/6*10^(n+1)+4/3`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A281787

/-- `7/30*100^(n+1)-1/6*10^(n+1)+4/3` -/
def P6667093566369883980.Spec : Prop :=
  ∀ n, P6667093566369883980.a n = (A281787 (n + 1) : ℚ)

end A281787

/-!
# A281792: Primes of the form x^2 + p^4 where x > 0 and p is prime.

The programs for A281792, there is no canonical definition to state claims against.
-/

/-! ## A281792.P1871887627994011199

`A070179(n+1)-A331428(A034691(n))`
-/

namespace A281792.P1871887627994011199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070179 (n + 1) - A331428 (A034691 n).toNat

end

end A281792.P1871887627994011199

/-! ## A281792.P1638053685373572186

`A354764(A083495(n)+A026424(n+2))`
-/

namespace A281792.P1638053685373572186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354764 (A083495 n + A026424 (n + 2)).toNat

end

end A281792.P1638053685373572186

/-!
# A281793: The largest prime factor of (1+n)*(1+n^2).

The programs for A281793, the canonical program `A281793.P3676669769379353085` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A281793 has offset 0).

The definition of A281793 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A281793.P3676669769379353085

`A006530(A281660(n))`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A281793

/-- `A006530(A281660(n))` -/
def P3676669769379353085.Spec : Prop :=
  ∀ n, P3676669769379353085.a n = A281793 n

theorem P3676669769379353085.correct : P3676669769379353085.Spec := by
  intro n
  simp only [A281793]

end A281793

/-! ## A281793.P7023068491380518379

`A006530((1+n)*(1+n²))`
-/

namespace A281793.P7023068491380518379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 ((1 + n) * (1 + n ^ 2))

end

end A281793.P7023068491380518379

namespace A281793

/-- `A006530((1+n)*(1+n²))` -/
def P7023068491380518379.Spec : Prop :=
  ∀ n, P7023068491380518379.a n = A281793 n

end A281793

/-! ## A281793.P5402014555834756523

`A006530(A053698(n))%A016949(n)`
-/

namespace A281793.P5402014555834756523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006530 (A053698 n).toNat) (A016949 n)

end

end A281793.P5402014555834756523

namespace A281793

/-- `A006530(A053698(n))%A016949(n)` -/
def P5402014555834756523.Spec : Prop :=
  ∀ n, P5402014555834756523.a n = A281793 n

end A281793

/-! ## A281793.P10614281207599218484

`A007814(2*n+1)+A006530(A053698(n))`
-/

namespace A281793.P10614281207599218484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (2 * n + 1) + A006530 (A053698 n).toNat

end

end A281793.P10614281207599218484

namespace A281793

/-- `A007814(2*n+1)+A006530(A053698(n))` -/
def P10614281207599218484.Spec : Prop :=
  ∀ n, P10614281207599218484.a n = A281793 n

end A281793

/-! ## A281793.P400470427839283437

`A020761(2*(n+2))+A006530(A053698(n))`
-/

namespace A281793.P400470427839283437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020761 (2 * (n + 2)) + A006530 (A053698 n).toNat

end

end A281793.P400470427839283437

namespace A281793

/-- `A020761(2*(n+2))+A006530(A053698(n))` -/
def P400470427839283437.Spec : Prop :=
  ∀ n, P400470427839283437.a n = A281793 n

end A281793

/-!
# A281794: The largest prime factor of (1+n^2)*(1+n^3).

The programs for A281794, the canonical program `A281794.P13729554616467775863` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A281794 has offset 0).

The definition of A281794 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A281794.P13729554616467775863

`A006530((1+n²)*(1+n^3))`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A281794

/-- `A006530((1+n²)*(1+n^3))` -/
def P13729554616467775863.Spec : Prop :=
  ∀ n, P13729554616467775863.a n = A281794 n

theorem P13729554616467775863.correct : P13729554616467775863.Spec := by
  intro n
  simp only [A281794]

end A281794

/-! ## A281794.P10896325617193974435

`A034699((n²+1)*A002061(n))`
-/

namespace A281794.P10896325617193974435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 ((n ^ 2 + 1 : ℤ) * A002061 n).toNat

end

end A281794.P10896325617193974435

namespace A281794

/-- `A034699((n²+1)*A002061(n))` -/
def P10896325617193974435.Spec : Prop :=
  ∀ n, P10896325617193974435.a n = A281794 n

end A281794

/-! ## A281794.P1757660413324066797

`A088387((n²+1)*A002061(n))`
-/

namespace A281794.P1757660413324066797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088387 ((n ^ 2 + 1 : ℤ) * A002061 n).toNat

end

end A281794.P1757660413324066797

namespace A281794

/-- `A088387((n²+1)*A002061(n))` -/
def P1757660413324066797.Spec : Prop :=
  ∀ n, P1757660413324066797.a n = A281794 n

end A281794

/-!
# A281795: Number of unit squares (partially) covered by a disk of radius n centered at the origin.

The programs for A281795, the canonical program `A281795.P16291790419329872202` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A281795 has offset 0).

The definition of A281795 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A281795.P16291790419329872202

`∑{#}[n-1, 4*ceil(sqrt(n²-#²))]`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A281795

/-- `∑{#}[n-1, 4*ceil(sqrt(n²-#²))]` -/
def P16291790419329872202.Spec : Prop :=
  ∀ n, P16291790419329872202.a n = A281795 n

theorem P16291790419329872202.correct : P16291790419329872202.Spec := by
  intro n
  simp only [A281795]

end A281795

/-! ## A281795.P5826497048435209693

`and(A051132(n)+4*n, -2)`
-/

namespace A281795.P5826497048435209693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A051132 n + (4 * n : ℤ)) (-2)

end

end A281795.P5826497048435209693

namespace A281795

/-- `and(A051132(n)+4*n, -2)` -/
def P5826497048435209693.Spec : Prop :=
  ∀ n, P5826497048435209693.a n = A281795 n

end A281795

/-! ## A281795.P14647133856086211927

`A051132(round(sqrt(n²+1)))+4*n-1`
-/

namespace A281795.P14647133856086211927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051132 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat + (4 * n : ℤ) - 1

end

end A281795.P14647133856086211927

namespace A281795

/-- `A051132(round(sqrt(n²+1)))+4*n-1` -/
def P14647133856086211927.Spec : Prop :=
  ∀ n, P14647133856086211927.a n = A281795 n

end A281795

/-! ## A281795.P15345701372376283585

`A051132(n)+record[A059029(n)]`
-/

namespace A281795.P15345701372376283585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059029 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051132 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A281795.P15345701372376283585

namespace A281795

/-- `A051132(n)+record[A059029(n)]` -/
def P15345701372376283585.Spec : Prop :=
  ∀ n, P15345701372376283585.a n = A281795 n

end A281795

/-! ## A281795.P7200298434869920816

`A008574(n)+A051132(n)-1`
-/

namespace A281795.P7200298434869920816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + (A051132 n - 1)

end

end A281795.P7200298434869920816

namespace A281795

/-- `A008574(n)+A051132(n)-1` -/
def P7200298434869920816.Spec : Prop :=
  ∀ n, P7200298434869920816.a n = A281795 n

end A281795

/-! ## A281795.P12313773358403202067

`A051132(n)+A004273(2*n)`
-/

namespace A281795.P12313773358403202067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051132 n + A004273 (2 * n)

end

end A281795.P12313773358403202067

namespace A281795

/-- `A051132(n)+A004273(2*n)` -/
def P12313773358403202067.Spec : Prop :=
  ∀ n, P12313773358403202067.a n = A281795 n

end A281795

/-! ## A281795.P10503692061825517106

`A051132(n)+A014681(4*n)`
-/

namespace A281795.P10503692061825517106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051132 n + A014681 (4 * n)

end

end A281795.P10503692061825517106

namespace A281795

/-- `A051132(n)+A014681(4*n)` -/
def P10503692061825517106.Spec : Prop :=
  ∀ n, P10503692061825517106.a n = A281795 n

end A281795

/-! ## A281795.P2758044860090719739

`floor(A051132(n)+4*n-n/A000041(n))`
-/

namespace A281795.P2758044860090719739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A051132 n + (4 * n : ℤ) : ℚ) - (n : ℚ) / (A000041 n : ℚ)⌋

end

end A281795.P2758044860090719739

namespace A281795

/-- `floor(A051132(n)+4*n-n/A000041(n))` -/
def P2758044860090719739.Spec : Prop :=
  ∀ n, P2758044860090719739.a n = A281795 n

end A281795

/-! ## A281795.P14504413654517376316

`4*n+A051132(A007318(∑[n]+1))-1`
-/

namespace A281795.P14504413654517376316
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n : ℤ) + (A051132 (A007318 (∑ j ∈ Finset.range (n + 1), f1 j + 1)).toNat - 1)

end

end A281795.P14504413654517376316

namespace A281795

/-- `4*n+A051132(A007318(∑[n]+1))-1` -/
def P14504413654517376316.Spec : Prop :=
  ∀ n, P14504413654517376316.a n = A281795 n

end A281795

/-! ## A281795.P1452203710478830654

`A242118(n)+A119677(n)`
-/

namespace A281795.P1452203710478830654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242118 n + A119677 n

end

end A281795.P1452203710478830654

namespace A281795

/-- `A242118(n)+A119677(n)` -/
def P1452203710478830654.Spec : Prop :=
  ∀ n, P1452203710478830654.a n = A281795 n

end A281795

/-!
# A281797: Number of nX3 0..1 arrays with no element unequal to a strict majority of its horizontal, diagonal and antidiagonal neighbors, with the exception of exactly two elements, and with new values introduced in order 0 sequentially upwards.

The programs for A281797, there is no canonical definition to state claims against.
-/

/-! ## A281797.P11549421055347444397

`A281802(∑[n+3]+1)`
-/

namespace A281797.P11549421055347444397
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281802 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A281797.P11549421055347444397

/-! ## A281797.P14821931814926015211

`A281802(A034856(n+2))+char[15]`
-/

namespace A281797.P14821931814926015211
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281802 (A034856 (n + 2)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A281797.P14821931814926015211

/-! ## A281797.P2190315774176628886

`A281802(A055999(n)+4)+char[18]`
-/

namespace A281797.P2190315774176628886
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  18

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281802 (A055999 n + 4).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A281797.P2190315774176628886

/-! ## A281797.P5361601540310468985

`record[A010054(n+3)*A281802(n+1)]`
-/

namespace A281797.P5361601540310468985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (n + 3) * A281802 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A281797.P5361601540310468985

/-! ## A281797.P11063296101770990733

`A326680(n)+A281802(A034856(n+2))`
-/

namespace A281797.P11063296101770990733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326680 n + A281802 (A034856 (n + 2)).toNat

end

end A281797.P11063296101770990733

/-!
# A281798: Number of nX4 0..1 arrays with no element unequal to a strict majority of its horizontal, diagonal and antidiagonal neighbors, with the exception of exactly two elements, and with new values introduced in order 0 sequentially upwards.

The programs for A281798, there is no canonical definition to state claims against.
-/

/-! ## A281798.P7691271422038997455

`A281802(∑[n+4]+3)`
-/

namespace A281798.P7691271422038997455
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281802 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A281798.P7691271422038997455

/-! ## A281798.P4823242415798129

`A281802(A141214(n+1))+A025469(n)`
-/

namespace A281798.P4823242415798129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281802 (A141214 (n + 1)).toNat + A025469 n

end

end A281798.P4823242415798129

/-! ## A281798.P13725370453314886155

`A281802(A027379(n+2))+A025469(n)`
-/

namespace A281798.P13725370453314886155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281802 (A027379 (n + 2)).toNat + A025469 n

end

end A281798.P13725370453314886155

/-! ## A281798.P17529523206212602829

`A281802(A141214(n+1))%A244303(n)`
-/

namespace A281798.P17529523206212602829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A281802 (A141214 (n + 1)).toNat) (A244303 (n + 11))

end

end A281798.P17529523206212602829

/-! ## A281798.P10120825938892351758

`A281802(A027379(n+2))%A244303(n)`
-/

namespace A281798.P10120825938892351758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A281802 (A027379 (n + 2)).toNat) (A244303 (n + 11))

end

end A281798.P10120825938892351758

/-!
# A281799: Number of nX5 0..1 arrays with no element unequal to a strict majority of its horizontal, diagonal and antidiagonal neighbors, with the exception of exactly two elements, and with new values introduced in order 0 sequentially upwards.

The programs for A281799, there is no canonical definition to state claims against.
-/

/-! ## A281799.P14124107735239832660

`A281802(∑[n+5]+6)`
-/

namespace A281799.P14124107735239832660
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281802 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A281799.P14124107735239832660

/-! ## A281799.P6082169124797526323

`A281802(A056115(n)+11)%A279132(n+1)`
-/

namespace A281799.P6082169124797526323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A281802 (A056115 n + 11).toNat) (A279132 (n + 1))

end

end A281799.P6082169124797526323

