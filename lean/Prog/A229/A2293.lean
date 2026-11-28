import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
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
import Seq.B000.C023
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C037
import Seq.B000.C039
import Seq.B000.C045
import Seq.B000.C050
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C010
import Seq.B001.C012
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C002
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B004.C004
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B005.C003
import Seq.B006.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.Opaque.C000
import Seq.Opaque.C002
import Seq.Opaque.C003
import Seq.Opaque.C005
import Seq.Opaque.C006
import Seq.Opaque.C007
import Seq.Opaque.C008
import Seq.Opaque.C009
import Seq.Opaque.C010
import Seq.Opaque.C012
import Seq.Opaque.C013
import Seq.Opaque.C017
import Seq.Opaque.C019
import Seq.Opaque.C021
import Seq.Opaque.C022

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A229300: Numbers n such that A031971(1806*n) == n (mod 1806*n).

The programs for A229300, there is no canonical definition to state claims against.
-/

/-! ## A229300.P17908151032669345275

`comp[A229304(1+n)-1]+1`
-/

namespace A229300.P17908151032669345275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229304 (1 + n) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A229300.P17908151032669345275

/-! ## A229300.P906242762126226724

`∪[A002310(n), A229301(n+1)]`
-/

namespace A229300.P906242762126226724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002310 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229301 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A229300.P906242762126226724

/-! ## A229300.P15687392148552876568

`∪[A229301(n+1), A003099(n)]`
-/

namespace A229300.P15687392148552876568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229301 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003099 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A229300.P15687392148552876568

/-! ## A229300.P6937002183074954556

`∪[A229301(n+1), A003412(n)]`
-/

namespace A229300.P6937002183074954556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229301 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003412 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A229300.P6937002183074954556

/-! ## A229300.P12301741833760140101

`∪[A004660(n), A229301(n+1)]`
-/

namespace A229300.P12301741833760140101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004660 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229301 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A229300.P12301741833760140101

/-! ## A229300.P3521410294086490771

`∪[A229301(n+1), A004769(n)]`
-/

namespace A229300.P3521410294086490771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229301 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004769 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A229300.P3521410294086490771

/-! ## A229300.P17524218402267128142

`∪[A005317(n), A229301(n+1)]`
-/

namespace A229300.P17524218402267128142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005317 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229301 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A229300.P17524218402267128142

/-! ## A229300.P14246528852057984481

`∪[A005425(n), A229301(n+1)]`
-/

namespace A229300.P14246528852057984481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005425 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229301 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A229300.P14246528852057984481

/-! ## A229300.P14606630296587054534

`∪[A229301(n+1), A005728(n)]`
-/

namespace A229300.P14606630296587054534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229301 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A229300.P14606630296587054534

/-! ## A229300.P18092733784408323112

`∪[A007583(n), A229301(n+1)]`
-/

namespace A229300.P18092733784408323112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007583 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229301 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A229300.P18092733784408323112

/-!
# A229301: Numbers n such that A031971(42*n) == n (mod 42*n).

The programs for A229301, there is no canonical definition to state claims against.
-/

/-! ## A229301.P13019918055085810347

`comp[A229305(n+1)-1]+1`
-/

namespace A229301.P13019918055085810347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229305 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A229301.P13019918055085810347

/-! ## A229301.P11652795462321039480

`eq[char[A229305(n+1)], A151933(n)]`
-/

namespace A229301.P11652795462321039480
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229305 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A229301.P11652795462321039480

/-! ## A229301.P8197063554555313442

`A229300(comp[(3*(n+2))²+1]+1)`
-/

namespace A229301.P8197063554555313442
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (3 * (n + 2)) ^ 2 + 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229300 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1)

end

end A229301.P8197063554555313442

/-! ## A229301.P14555843888180869513

`record[A182398(21*A229300(n+1))]`
-/

namespace A229301.P14555843888180869513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182398 (21 * A229300 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A229301.P14555843888180869513

/-! ## A229301.P12020174278491553044

`∩[A229300(n+1), comp[A229305(n+1)]]`
-/

namespace A229301.P12020174278491553044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229300 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229305 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A229301.P12020174278491553044

/-! ## A229301.P10738906938507233791

`∩[A229300(n+1), comp[A229309(n+1)]]`
-/

namespace A229301.P10738906938507233791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229300 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229309 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A229301.P10738906938507233791

/-!
# A229302: Numbers n such that A031971(6*n) == n (mod 6*n).

The programs for A229302, the canonical program `A229302.P15980075922969714648` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A229302 has offset 1).

The definition of A229302 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 533 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A229302.P15980075922969714648

`eq[2, A226957(6*(n+1))]+1`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A229302

/-- `eq[2, A226957(6*(n+1))]+1` -/
def P15980075922969714648.Spec : Prop :=
  ∀ n, (P15980075922969714648.a n : ℤ) = A229302 (n + 1)

theorem P15980075922969714648.correct : P15980075922969714648.Spec := by
  intro n
  simp only [A229302, Nat.add_sub_cancel]

end A229302

/-! ## A229302.P4737401790141353045

`eq[6, A225821(6*(n+1))]+1`
-/

namespace A229302.P4737401790141353045
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225821 (6 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A229302.P4737401790141353045

namespace A229302

/-- `eq[6, A225821(6*(n+1))]+1` -/
def P4737401790141353045.Spec : Prop :=
  ∀ n, (P4737401790141353045.a n : ℤ) = A229302 (n + 1)

end A229302

/-! ## A229302.P2106902154342506408

`eq[n+1, A182398(3*(n+1))]+1`
-/

namespace A229302.P2106902154342506408
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182398 (3 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A229302.P2106902154342506408

namespace A229302

/-- `eq[n+1, A182398(3*(n+1))]+1` -/
def P2106902154342506408.Spec : Prop :=
  ∀ n, (P2106902154342506408.a n : ℤ) = A229302 (n + 1)

end A229302

/-! ## A229302.P18365669612148415467

`record[gcd(floor((n+1)/3), A182398(n+1))]`
-/

namespace A229302.P18365669612148415467
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ⌊(n + 1 : ℚ) / 3⌋ (A182398 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A229302.P18365669612148415467

namespace A229302

/-- `record[gcd(floor((n+1)/3), A182398(n+1))]` -/
def P18365669612148415467.Spec : Prop :=
  ∀ n, (P18365669612148415467.a n : ℤ) = A229302 (n + 1)

end A229302

/-! ## A229302.P16286660460011199529

`eq[2, A226957(A008458(n))]`
-/

namespace A229302.P16286660460011199529
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226957 (A008458 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A229302.P16286660460011199529

namespace A229302

/-- `eq[2, A226957(A008458(n))]` -/
def P16286660460011199529.Spec : Prop :=
  ∀ n, (P16286660460011199529.a n : ℤ) = A229302 (n + 1)

end A229302

/-! ## A229302.P9892596474181651877

`eq[n, A182398(A008486(n))]`
-/

namespace A229302.P9892596474181651877
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182398 (A008486 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A229302.P9892596474181651877

namespace A229302

/-- `eq[n, A182398(A008486(n))]` -/
def P9892596474181651877.Spec : Prop :=
  ∀ n, (P9892596474181651877.a n : ℤ) = A229302 (n + 1)

end A229302

/-! ## A229302.P10259928720184482383

`eq[2, A226957(A008486(2*n))]`
-/

namespace A229302.P10259928720184482383
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226957 (A008486 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A229302.P10259928720184482383

namespace A229302

/-- `eq[2, A226957(A008486(2*n))]` -/
def P10259928720184482383.Spec : Prop :=
  ∀ n, (P10259928720184482383.a n : ℤ) = A229302 (n + 1)

end A229302

/-! ## A229302.P17219836209476106468

`A103221(eq[6, A225821(n+1)])`
-/

namespace A229302.P17219836209476106468
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225821 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A229302.P17219836209476106468

namespace A229302

/-- `A103221(eq[6, A225821(n+1)])` -/
def P17219836209476106468.Spec : Prop :=
  ∀ n, P17219836209476106468.a n = A229302 (n + 1)

end A229302

/-! ## A229302.P16312239958216662977

`A008611(eq[6, A225821(2*(n+1))])`
-/

namespace A229302.P16312239958216662977
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225821 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A229302.P16312239958216662977

namespace A229302

/-- `A008611(eq[6, A225821(2*(n+1))])` -/
def P16312239958216662977.Spec : Prop :=
  ∀ n, P16312239958216662977.a n = A229302 (n + 1)

end A229302

/-! ## A229302.P5719927513717248779

`comp[A229306(n+1)-1]+1`
-/

namespace A229302.P5719927513717248779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229306 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A229302.P5719927513717248779

namespace A229302

/-- `comp[A229306(n+1)-1]+1` -/
def P5719927513717248779.Spec : Prop :=
  ∀ n, (P5719927513717248779.a n : ℤ) = A229302 (n + 1)

end A229302

/-!
# A229303: Numbers m such that A031971(2*m) == m (mod 2*m).

The programs for A229303, the canonical program `A229303.P8742085581289733336` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A229303 has offset 1).

The definition of A229303 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5843 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A229303.P5668181782546717459

`comp[A229307(1+n)-1]+1`
-/

namespace A229303.P5668181782546717459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229307 (1 + n) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A229303.P5668181782546717459

namespace A229303

/-- `comp[A229307(1+n)-1]+1` -/
def P5668181782546717459.Spec : Prop :=
  ∀ n, (P5668181782546717459.a n : ℤ) = A229303 (n + 1)

end A229303

/-! ## A229303.P17181944953896896663

`A226872(2+n)/2`
-/

namespace A229303.P17181944953896896663
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A226872 (2 + n) : ℚ) / 2

end

end A229303.P17181944953896896663

namespace A229303

/-- `A226872(2+n)/2` -/
def P17181944953896896663.Spec : Prop :=
  ∀ n, P17181944953896896663.a n = (A229303 (n + 1) : ℚ)

end A229303

/-! ## A229303.P8742085581289733336

`record[gcd(1+n, A182398(n+1))]`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A229303

/-- `record[gcd(1+n, A182398(n+1))]` -/
def P8742085581289733336.Spec : Prop :=
  ∀ n, (P8742085581289733336.a n : ℤ) = A229303 (n + 1)

theorem P8742085581289733336.correct : P8742085581289733336.Spec := by
  intro n
  simp only [A229303, Nat.add_sub_cancel]

end A229303

/-! ## A229303.P6622747132360360911

`record[A182398(A130481(n)+1)]`
-/

namespace A229303.P6622747132360360911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182398 (A130481 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A229303.P6622747132360360911

namespace A229303

/-- `record[A182398(A130481(n)+1)]` -/
def P6622747132360360911.Spec : Prop :=
  ∀ n, P6622747132360360911.a n = A229303 (n + 1)

end A229303

/-! ## A229303.P12994964500215052557

`eq[A000265(n+1), A000265(A182398(n+1))]+1`
-/

namespace A229303.P12994964500215052557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A182398 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A229303.P12994964500215052557

namespace A229303

/-- `eq[A000265(n+1), A000265(A182398(n+1))]+1` -/
def P12994964500215052557.Spec : Prop :=
  ∀ n, (P12994964500215052557.a n : ℤ) = A229303 (n + 1)

end A229303

/-! ## A229303.P8660168197205560968

`∩[A004275(n+1), A228869(n+2)]/2`
-/

namespace A229303.P8660168197205560968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228869 (n + 2)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A229303.P8660168197205560968

namespace A229303

/-- `∩[A004275(n+1), A228869(n+2)]/2` -/
def P8660168197205560968.Spec : Prop :=
  ∀ n, P8660168197205560968.a n = (A229303 (n + 1) : ℚ)

end A229303

/-! ## A229303.P3556362754756282356

`∩[A004277(n+1), A228869(n+2)]/2`
-/

namespace A229303.P3556362754756282356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228869 (n + 2)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A229303.P3556362754756282356

namespace A229303

/-- `∩[A004277(n+1), A228869(n+2)]/2` -/
def P3556362754756282356.Spec : Prop :=
  ∀ n, P3556362754756282356.a n = (A229303 (n + 1) : ℚ)

end A229303

/-! ## A229303.P12570574716106811078

`eq[1, A226957(2*(n+1))]+1`
-/

namespace A229303.P12570574716106811078
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226957 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A229303.P12570574716106811078

namespace A229303

/-- `eq[1, A226957(2*(n+1))]+1` -/
def P12570574716106811078.Spec : Prop :=
  ∀ n, (P12570574716106811078.a n : ℤ) = A229303 (n + 1)

end A229303

/-! ## A229303.P306429187699130882

`eq[2, A225821(2*(1+n))]+1`
-/

namespace A229303.P306429187699130882
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225821 (2 * (1 + n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A229303.P306429187699130882

namespace A229303

/-- `eq[2, A225821(2*(1+n))]+1` -/
def P306429187699130882.Spec : Prop :=
  ∀ n, (P306429187699130882.a n : ℤ) = A229303 (n + 1)

end A229303

/-! ## A229303.P18088528303279873249

`eq[2, gcd(4*n, A027642(2*n))]`
-/

namespace A229303.P18088528303279873249
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (4 * n : ℤ) (A027642 (2 * n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A229303.P18088528303279873249

namespace A229303

/-- `eq[2, gcd(4*n, A027642(2*n))]` -/
def P18088528303279873249.Spec : Prop :=
  ∀ n, (P18088528303279873249.a n : ℤ) = A229303 (n + 1)

end A229303

/-! ## A229303.P6429841238411472241

`A001281(A226872(n+2))`
-/

namespace A229303.P6429841238411472241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A226872 (n + 2)).toNat

end

end A229303.P6429841238411472241

namespace A229303

/-- `A001281(A226872(n+2))` -/
def P6429841238411472241.Spec : Prop :=
  ∀ n, P6429841238411472241.a n = A229303 (n + 1)

end A229303

/-! ## A229303.P14950240055168077739

`A008619(A226872(n+2)-1)`
-/

namespace A229303.P14950240055168077739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A226872 (n + 2) - 1).toNat

end

end A229303.P14950240055168077739

namespace A229303

/-- `A008619(A226872(n+2)-1)` -/
def P14950240055168077739.Spec : Prop :=
  ∀ n, P14950240055168077739.a n = A229303 (n + 1)

end A229303

/-! ## A229303.P14825654636909826353

`eq[2, gcd(A106458(2*n), A122656(2*n))]`
-/

namespace A229303.P14825654636909826353
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A106458 (2 * n)) (A122656 (2 * n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A229303.P14825654636909826353

namespace A229303

/-- `eq[2, gcd(A106458(2*n), A122656(2*n))]` -/
def P14825654636909826353.Spec : Prop :=
  ∀ n, (P14825654636909826353.a n : ℤ) = A229303 (n + 1)

end A229303

/-! ## A229303.P15288744423198873809

`A002265(2*A226872(n+2))`
-/

namespace A229303.P15288744423198873809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (2 * A226872 (n + 2)).toNat

end

end A229303.P15288744423198873809

namespace A229303

/-- `A002265(2*A226872(n+2))` -/
def P15288744423198873809.Spec : Prop :=
  ∀ n, P15288744423198873809.a n = A229303 (n + 1)

end A229303

/-!
# A229304: Numbers n such that A031971(1806*n) <> n (mod 1806*n).

The programs for A229304, there is no canonical definition to state claims against.
-/

/-! ## A229304.P1518751827863011451

`∩[A173298(n+1), A229305(n+1)]`
-/

namespace A229304.P1518751827863011451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173298 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229305 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A229304.P1518751827863011451

/-! ## A229304.P13948947636173314420

`comp[A229300(n+1)-1]+1`
-/

namespace A229304.P13948947636173314420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229300 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A229304.P13948947636173314420

/-! ## A229304.P11583735779358659314

`∩[A089970(n+1), A229305(n+1)]`
-/

namespace A229304.P11583735779358659314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089970 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229305 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A229304.P11583735779358659314

/-! ## A229304.P10272063911613890199

`∩[A145395(n+1), A229305(n+1)]`
-/

namespace A229304.P10272063911613890199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145395 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229305 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A229304.P10272063911613890199

/-! ## A229304.P493801182485477084

`∩[A189891(n+1), A229305(n+1)]`
-/

namespace A229304.P493801182485477084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189891 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229305 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A229304.P493801182485477084

/-!
# A229305: Numbers n such that A031971(42*n) <> n (mod 42*n).

The programs for A229305, there is no canonical definition to state claims against.
-/

/-! ## A229305.P2946413912559686482

`comp[A229301(1+n)-1]+1`
-/

namespace A229305.P2946413912559686482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229301 (1 + n) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A229305.P2946413912559686482

/-! ## A229305.P4394532393439477489

`comp[A023443(A229301(1+n))]+1`
-/

namespace A229305.P4394532393439477489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A229301 (1 + n)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A229305.P4394532393439477489

/-! ## A229305.P12332567297528001054

`A153152(comp[A229301(1+n)-1])`
-/

namespace A229305.P12332567297528001054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229301 (1 + n) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A229305.P12332567297528001054

/-! ## A229305.P1323736615671254937

`comp[∪[A229301(n+1), A000578(n)]]`
-/

namespace A229305.P1323736615671254937
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229301 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A229305.P1323736615671254937

/-! ## A229305.P15602126288661198034

`∩[A068938(n+1), comp[A229301(n+1)]]`
-/

namespace A229305.P15602126288661198034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068938 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229301 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A229305.P15602126288661198034

/-!
# A229306: Numbers n such that A031971(6*n) <> n (mod 6*n).

The programs for A229306, the canonical program `A229306.P18317607824200291430` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A229306 has offset 1).

The definition of A229306 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 165 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A229306.P7934140476007404693

`comp[A229302(n+1)-1]+1`
-/

namespace A229306.P7934140476007404693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229302 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A229306.P7934140476007404693

namespace A229306

/-- `comp[A229302(n+1)-1]+1` -/
def P7934140476007404693.Spec : Prop :=
  ∀ n, (P7934140476007404693.a n : ℤ) = A229306 (n + 1)

end A229306

/-! ## A229306.P18317607824200291430

`lt[2, A226957(6*(n+1))]+1`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A229306

/-- `lt[2, A226957(6*(n+1))]+1` -/
def P18317607824200291430.Spec : Prop :=
  ∀ n, (P18317607824200291430.a n : ℤ) = A229306 (n + 1)

theorem P18317607824200291430.correct : P18317607824200291430.Spec := by
  intro n
  simp only [A229306, Nat.add_sub_cancel]

end A229306

/-! ## A229306.P15027784388267921638

`lt[6, A225821(6*(n+1))]+1`
-/

namespace A229306.P15027784388267921638
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225821 (6 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A229306.P15027784388267921638

namespace A229306

/-- `lt[6, A225821(6*(n+1))]+1` -/
def P15027784388267921638.Spec : Prop :=
  ∀ n, (P15027784388267921638.a n : ℤ) = A229306 (n + 1)

end A229306

/-! ## A229306.P9400663383494679949

`lt[7, gcd(2*n², A002445(3*n))]`
-/

namespace A229306.P9400663383494679949
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (2 * n ^ 2 : ℤ) (A002445 (3 * n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A229306.P9400663383494679949

namespace A229306

/-- `lt[7, gcd(2*n², A002445(3*n))]` -/
def P9400663383494679949.Spec : Prop :=
  ∀ n, (P9400663383494679949.a n : ℤ) = A229306 (n + 1)

end A229306

/-! ## A229306.P8737622813042744107

`lt[2, A226957(A008458(n))]`
-/

namespace A229306.P8737622813042744107
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226957 (A008458 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A229306.P8737622813042744107

namespace A229306

/-- `lt[2, A226957(A008458(n))]` -/
def P8737622813042744107.Spec : Prop :=
  ∀ n, (P8737622813042744107.a n : ℤ) = A229306 (n + 1)

end A229306

/-! ## A229306.P14516140854377495349

`lt[9, A225821(A004277(3*n))]`
-/

namespace A229306.P14516140854377495349
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225821 (A004277 (3 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A229306.P14516140854377495349

namespace A229306

/-- `lt[9, A225821(A004277(3*n))]` -/
def P14516140854377495349.Spec : Prop :=
  ∀ n, (P14516140854377495349.a n : ℤ) = A229306 (n + 1)

end A229306

/-! ## A229306.P335077105794650525

`lt[6, gcd(n², A006955(3*n))]`
-/

namespace A229306.P335077105794650525
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n ^ 2 : ℤ) (A006955 (3 * n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A229306.P335077105794650525

namespace A229306

/-- `lt[6, gcd(n², A006955(3*n))]` -/
def P335077105794650525.Spec : Prop :=
  ∀ n, (P335077105794650525.a n : ℤ) = A229306 (n + 1)

end A229306

/-!
# A229307: Numbers k such that A031971(2*k) <> k (mod 2*k).

The programs for A229307, the canonical program `A229307.P10721516212086115371` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A229307 has offset 1).

The definition of A229307 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A229307.P10721516212086115371

`A228870(1+n)/2`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A229307

/-- `A228870(1+n)/2` -/
def P10721516212086115371.Spec : Prop :=
  ∀ n, P10721516212086115371.a n = (A229307 (n + 1) : ℚ)

end A229307

/-! ## A229307.P13873873928044688479

`A000217(A228870(n+1)-1)%A228870(n+1)`
-/

namespace A229307.P13873873928044688479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000217 (A228870 (n + 1) - 1).toNat) (A228870 (n + 1))

end

end A229307.P13873873928044688479

namespace A229307

/-- `A000217(A228870(n+1)-1)%A228870(n+1)` -/
def P13873873928044688479.Spec : Prop :=
  ∀ n, P13873873928044688479.a n = A229307 (n + 1)

end A229307

/-! ## A229307.P11378789865948474124

`lt[2, gcd(n, A002445(n))]`
-/

namespace A229307.P11378789865948474124
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A002445 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A229307.P11378789865948474124

namespace A229307

/-- `lt[2, gcd(n, A002445(n))]` -/
def P11378789865948474124.Spec : Prop :=
  ∀ n, (P11378789865948474124.a n : ℤ) = A229307 (n + 1)

end A229307

/-! ## A229307.P16400690934614427973

`lt[1, A226957(2*(n+1))]+1`
-/

namespace A229307.P16400690934614427973
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226957 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A229307.P16400690934614427973

namespace A229307

/-- `lt[1, A226957(2*(n+1))]+1` -/
def P16400690934614427973.Spec : Prop :=
  ∀ n, (P16400690934614427973.a n : ℤ) = A229307 (n + 1)

end A229307

/-! ## A229307.P14397306255662750598

`lt[2, A225821(2*(n+1))]+1`
-/

namespace A229307.P14397306255662750598
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225821 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A229307.P14397306255662750598

namespace A229307

/-- `lt[2, A225821(2*(n+1))]+1` -/
def P14397306255662750598.Spec : Prop :=
  ∀ n, (P14397306255662750598.a n : ℤ) = A229307 (n + 1)

end A229307

/-! ## A229307.P15911458591610239151

`(lt[1, A226957(n+1)]+1)/2`
-/

namespace A229307.P15911458591610239151
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226957 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1 : ℚ) / 2

end

end A229307.P15911458591610239151

namespace A229307

/-- `(lt[1, A226957(n+1)]+1)/2` -/
def P15911458591610239151.Spec : Prop :=
  ∀ n, P15911458591610239151.a n = (A229307 (n + 1) : ℚ)

end A229307

/-! ## A229307.P10359758626666879929

`lt[2, A225821(A004277(n))]`
-/

namespace A229307.P10359758626666879929
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225821 (A004277 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A229307.P10359758626666879929

namespace A229307

/-- `lt[2, A225821(A004277(n))]` -/
def P10359758626666879929.Spec : Prop :=
  ∀ n, (P10359758626666879929.a n : ℤ) = A229307 (n + 1)

end A229307

/-! ## A229307.P3842395389747421472

`A003602(A228870(n+1)-1)`
-/

namespace A229307.P3842395389747421472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (A228870 (n + 1) - 1).toNat

end

end A229307.P3842395389747421472

namespace A229307

/-- `A003602(A228870(n+1)-1)` -/
def P3842395389747421472.Spec : Prop :=
  ∀ n, P3842395389747421472.a n = A229307 (n + 1)

end A229307

/-! ## A229307.P6317818698806726655

`A001281(A228870(n+1))`
-/

namespace A229307.P6317818698806726655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A228870 (n + 1)).toNat

end

end A229307.P6317818698806726655

namespace A229307

/-- `A001281(A228870(n+1))` -/
def P6317818698806726655.Spec : Prop :=
  ∀ n, P6317818698806726655.a n = A229307 (n + 1)

end A229307

/-! ## A229307.P15649402311839762291

`A000217(9*A228870(n+1))%A228870(n+1)`
-/

namespace A229307.P15649402311839762291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000217 (9 * A228870 (n + 1)).toNat) (A228870 (n + 1))

end

end A229307.P15649402311839762291

namespace A229307

/-- `A000217(9*A228870(n+1))%A228870(n+1)` -/
def P15649402311839762291.Spec : Prop :=
  ∀ n, P15649402311839762291.a n = A229307 (n + 1)

end A229307

/-!
# A229308: Primitive numbers in A229304.

The programs for A229308, there is no canonical definition to state claims against.
-/

/-! ## A229308.P5453810055872081125

`∩[A229304(n+1), A229309(n+1)]`
-/

namespace A229308.P5453810055872081125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229304 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229309 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A229308.P5453810055872081125

/-! ## A229308.P8339932337687482871

`∩[A229309(n+1), A344882(n+1)]`
-/

namespace A229308.P8339932337687482871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229309 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344882 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A229308.P8339932337687482871

/-! ## A229308.P13723351336798553465

`∩[A096529(n+1), A229309(n+1)]`
-/

namespace A229308.P13723351336798553465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096529 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229309 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A229308.P13723351336798553465

/-!
# A229311: Primitive numbers in A229307.

The programs for A229311, there is no canonical definition to state claims against.
-/

/-! ## A229311.P5966891558608797245

`A280187(1+n)/2`
-/

namespace A229311.P5966891558608797245
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A280187 (1 + n) : ℚ) / 2

end

end A229311.P5966891558608797245

/-! ## A229311.P9289997913889764431

`C(p?[A226872(n+2)+1], 2)`
-/

namespace A229311.P9289997913889764431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226872 (n + 2) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat 2

end

end A229311.P9289997913889764431

/-! ## A229311.P14342605879818331762

`A000217(floor(sqrt(A280187(1+n))))`
-/

namespace A229311.P14342605879818331762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (Int.sqrt (A280187 (1 + n))).toNat

end

end A229311.P14342605879818331762

/-! ## A229311.P11852156695031202905

`A161680(ceil(sqrt(A280187(n+1))))`
-/

namespace A229311.P11852156695031202905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 ⌈Real.sqrt (A280187 (n + 1) : ℝ)⌉.toNat

end

end A229311.P11852156695031202905

/-! ## A229311.P16621247871324329427

`A326419(ceil(sqrt(A280187(n+1))))`
-/

namespace A229311.P16621247871324329427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326419 ⌈Real.sqrt (A280187 (n + 1) : ℝ)⌉.toNat

end

end A229311.P16621247871324329427

/-! ## A229311.P8990190483508571175

`A000124(round(sqrt(A280187(n+1))))-1`
-/

namespace A229311.P8990190483508571175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (SequenceMachineLib.roundAway (Real.sqrt (A280187 (n + 1) : ℝ))).toNat - 1

end

end A229311.P8990190483508571175

/-! ## A229311.P6199511387813754248

`A024816(p?[A226872(n+2)+1])+1`
-/

namespace A229311.P6199511387813754248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226872 (n + 2) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024816 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat + 1

end

end A229311.P6199511387813754248

/-!
# A229312: Numbers n such that A031971(47058*n) == n (mod 47058*n).

The programs for A229312, there is no canonical definition to state claims against.
-/

/-! ## A229312.P380593506989074854

`A110551(A006038(n+1))*A162699(n+1)`
-/

namespace A229312.P380593506989074854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110551 (A006038 (n + 1)).toNat * A162699 (n + 1)

end

end A229312.P380593506989074854

/-! ## A229312.P15304802050754523207

`∩[A067761(n+1), A122124(n+1)]`
-/

namespace A229312.P15304802050754523207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067761 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122124 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A229312.P15304802050754523207

/-! ## A229312.P14931824903607019920

`∩[A122124(n+1), A358848(n+1)]`
-/

namespace A229312.P14931824903607019920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122124 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358848 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A229312.P14931824903607019920

/-! ## A229312.P10683229966572599817

`∩[A067761(n+1), A294748(n+1)]`
-/

namespace A229312.P10683229966572599817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067761 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294748 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A229312.P10683229966572599817

/-!
# A229313: Number of n X n 0..3 arrays of the median of the corresponding element, the element to the east and the element to the south in a larger (n+1)X(n+1) 0..3 array without adjacent equal elements in the latter.

The programs for A229313, there is no canonical definition to state claims against.
-/

/-! ## A229313.P13905856690647618759

`A229320(∑[4*n]+1)`
-/

namespace A229313.P13905856690647618759
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229320 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A229313.P13905856690647618759

/-!
# A229314: Number of n X 1 0..3 arrays of the median of the corresponding element, the element to the east and the element to the south in a larger (n+1) X 2 0..3 array without adjacent equal elements in the latter.

The programs for A229314, the canonical program `A229314.P11497750345104596552` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A229314 has offset 1).

The definition of A229314 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 182 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A229314.P12873254084228798760

`ogf((4+2x+2x^3)/(1-3x-2x^2+x^3-2x^4))`
-/

namespace A229314.P12873254084228798760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, 2, 0, 2] [1, -3, -2, 1, -2] n

end

end A229314.P12873254084228798760

namespace A229314

/-- `ogf((4+2x+2x^3)/(1-3x-2x^2+x^3-2x^4))` -/
def P12873254084228798760.Spec : Prop :=
  ∀ n, P12873254084228798760.a n = A229314 (n + 1)

end A229314

/-! ## A229314.P11497750345104596552

`3*a(n-1)+2*a(n-2)-a(n-3)+2*a(n-4)` with `a(0)=4, a(1)=14, a(2)=50, a(3)=176`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A229314

/-- `3*a(n-1)+2*a(n-2)-a(n-3)+2*a(n-4)` -/
def P11497750345104596552.Spec : Prop :=
  ∀ n, P11497750345104596552.a n = A229314 (n + 1)

theorem P11497750345104596552.correct : P11497750345104596552.Spec := by
  intro n
  simp only [A229314, Nat.add_sub_cancel]

end A229314

/-! ## A229314.P18012997951473760403

`A229320(∑[n]+1)`
-/

namespace A229314.P18012997951473760403
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229320 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A229314.P18012997951473760403

namespace A229314

/-- `A229320(∑[n]+1)` -/
def P18012997951473760403.Spec : Prop :=
  ∀ n, P18012997951473760403.a n = A229314 (n + 1)

end A229314

/-! ## A229314.P15122737763923899255

`record[A229320(A056534(n+1))]`
-/

namespace A229314.P15122737763923899255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229320 (A056534 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A229314.P15122737763923899255

namespace A229314

/-- `record[A229320(A056534(n+1))]` -/
def P15122737763923899255.Spec : Prop :=
  ∀ n, P15122737763923899255.a n = A229314 (n + 1)

end A229314

/-!
# A229315: Number of nX2 0..3 arrays of the median of the corresponding element, the element to the east and the element to the south in a larger (n+1)X3 0..3 array without adjacent equal elements in the latter.

The programs for A229315, there is no canonical definition to state claims against.
-/

/-! ## A229315.P9720035244030799020

`A229320(∑[n+1]+2)`
-/

namespace A229315.P9720035244030799020
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229320 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A229315.P9720035244030799020

/-! ## A229315.P4558597174620176718

`record[A010054(n)*A229320(n+2)]`
-/

namespace A229315.P4558597174620176718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A229320 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A229315.P4558597174620176718

/-! ## A229315.P2000204588165450599

`record[root(A229320(n+3), A221499(n+1))]`
-/

namespace A229315.P2000204588165450599
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A229320 (n + 3) : ℝ) ^ (1 / (A221499 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A229315.P2000204588165450599

/-! ## A229315.P6596261933155355254

`record[A229320(Δ[A003453(n+5)])]`
-/

namespace A229315.P6596261933155355254
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229320 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A229315.P6596261933155355254

/-! ## A229315.P18382688725142451934

`record[A229320(n+2)/A154335(n+2)]`
-/

namespace A229315.P18382688725142451934
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A229320 (n + 2) : ℚ) / (A154335 (n + 2) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A229315.P18382688725142451934

/-!
# A229316: Number of nX3 0..3 arrays of the median of the corresponding element, the element to the east and the element to the south in a larger (n+1)X4 0..3 array without adjacent equal elements in the latter.

The programs for A229316, there is no canonical definition to state claims against.
-/

/-! ## A229316.P8859347420372361374

`A229320(∑[n+2]+4)`
-/

namespace A229316.P8859347420372361374
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229320 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A229316.P8859347420372361374

/-! ## A229316.P5194268756407618541

`record[gcd(A229320(n+4), A373223(n+1))]`
-/

namespace A229316.P5194268756407618541
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A229320 (n + 4)) (A373223 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A229316.P5194268756407618541

/-!
# A229317: Number of nX4 0..3 arrays of the median of the corresponding element, the element to the east and the element to the south in a larger (n+1)X5 0..3 array without adjacent equal elements in the latter.

The programs for A229317, there is no canonical definition to state claims against.
-/

/-! ## A229317.P2379159278309238135

`A229320(∑[n+3]+7)`
-/

namespace A229317.P2379159278309238135
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229320 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A229317.P2379159278309238135

/-!
# A229318: Number of nX5 0..3 arrays of the median of the corresponding element, the element to the east and the element to the south in a larger (n+1)X6 0..3 array without adjacent equal elements in the latter.

The programs for A229318, there is no canonical definition to state claims against.
-/

/-! ## A229318.P8138424356959173952

`A229320(∑[n+4]+11)`
-/

namespace A229318.P8138424356959173952
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229320 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A229318.P8138424356959173952

/-!
# A229319: Number of nX6 0..3 arrays of the median of the corresponding element, the element to the east and the element to the south in a larger (n+1)X7 0..3 array without adjacent equal elements in the latter.

The programs for A229319, there is no canonical definition to state claims against.
-/

/-! ## A229319.P1575139702828534711

`A229320(A374007(1+n))`
-/

namespace A229319.P1575139702828534711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229320 (A374007 (1 + n)).toNat

end

end A229319.P1575139702828534711

/-!
# A229320: T(n,k)=Number of nXk 0..3 arrays of the median of the corresponding element, the element to the east and the element to the south in a larger (n+1)X(k+1) 0..3 array without adjacent equal elements in the latter.

The programs for A229320, there is no canonical definition to state claims against.
-/

/-! ## A229320.P17199046725018683815

`A107919(a(n-1))+a(n-1)` with `a(0)=4, a(1)=14, a(2)=14`
-/

namespace A229320.P17199046725018683815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4, 14, 14] fun n a =>
  A107919 (a (n - 1)).toNat + a (n - 1)

end

end A229320.P17199046725018683815

/-!
# A229321: Composite squarefree numbers n such that p-tau(n) divides n+phi(n), where p are the prime factors of n, tau(n) = A000005(n) and phi(n) = A000010(n).

The programs for A229321, there is no canonical definition to state claims against.
-/

/-! ## A229321.P4263126776793768663

`A080365(lt[A166888(n), A004018(n)])`
-/

namespace A229321.P4263126776793768663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166888 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004018 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080365 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A229321.P4263126776793768663

/-! ## A229321.P3129421451552048337

`A353833(3*n+5)+A052275(A167016(n))`
-/

namespace A229321.P3129421451552048337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353833 (3 * n + 5) + A052275 (A167016 n).toNat

end

end A229321.P3129421451552048337

/-!
# A229324: Composite squarefree numbers n such that p + tau(n) divides n - phi(n), where p are the prime factors of n, tau(n) = A000005(n) and phi(n) = A000010(n).

The programs for A229324, the canonical program `A229324.P5724625720212629655` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A229324 has offset 1).

The definition of A229324 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 500 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A229324.P5724625720212629655

`5*p?[9*(n+1)+5]`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A229324

/-- `5*p?[9*(n+1)+5]` -/
def P5724625720212629655.Spec : Prop :=
  ∀ n, (P5724625720212629655.a n : ℤ) = A229324 (n + 1)

theorem P5724625720212629655.correct : P5724625720212629655.Spec := by
  intro n
  simp only [A229324, Nat.add_sub_cancel]

end A229324

/-! ## A229324.P16373610879971024200

`5*A061240(2+n)`
-/

namespace A229324.P16373610879971024200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A061240 (2 + n)

end

end A229324.P16373610879971024200

namespace A229324

/-- `5*A061240(2+n)` -/
def P16373610879971024200.Spec : Prop :=
  ∀ n, P16373610879971024200.a n = A229324 (n + 1)

end A229324

/-! ## A229324.P10943536238373720722

`lcm(5, A061240(n+2))`
-/

namespace A229324.P10943536238373720722
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 5 (A061240 (n + 2))

end

end A229324.P10943536238373720722

namespace A229324

/-- `lcm(5, A061240(n+2))` -/
def P10943536238373720722.Spec : Prop :=
  ∀ n, (P10943536238373720722.a n : ℤ) = A229324 (n + 1)

end A229324

/-! ## A229324.P12951069231032626197

`A001750(A163595(n+2))`
-/

namespace A229324.P12951069231032626197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001750 (A163595 (n + 2)).toNat

end

end A229324.P12951069231032626197

namespace A229324

/-- `A001750(A163595(n+2))` -/
def P12951069231032626197.Spec : Prop :=
  ∀ n, P12951069231032626197.a n = A229324 (n + 1)

end A229324

/-! ## A229324.P10488443781540589067

`∩[A001750(n+1), A362008(n+1)]`
-/

namespace A229324.P10488443781540589067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001750 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362008 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A229324.P10488443781540589067

namespace A229324

/-- `∩[A001750(n+1), A362008(n+1)]` -/
def P10488443781540589067.Spec : Prop :=
  ∀ n, (P10488443781540589067.a n : ℤ) = A229324 (n + 1)

end A229324

/-! ## A229324.P1991560826504383540

`∩[A161835(n+1), A362008(n+1)]`
-/

namespace A229324.P1991560826504383540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161835 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362008 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A229324.P1991560826504383540

namespace A229324

/-- `∩[A161835(n+1), A362008(n+1)]` -/
def P1991560826504383540.Spec : Prop :=
  ∀ n, (P1991560826504383540.a n : ℤ) = A229324 (n + 1)

end A229324

/-! ## A229324.P18229137305340645875

`A008706(p?[9*n+14])`
-/

namespace A229324.P18229137305340645875
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9 * n + 14

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A229324.P18229137305340645875

namespace A229324

/-- `A008706(p?[9*n+14])` -/
def P18229137305340645875.Spec : Prop :=
  ∀ n, P18229137305340645875.a n = A229324 (n + 1)

end A229324

/-! ## A229324.P17412344450021462009

`A008587(A061240(n+2))`
-/

namespace A229324.P17412344450021462009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008587 (A061240 (n + 2)).toNat

end

end A229324.P17412344450021462009

namespace A229324

/-- `A008587(A061240(n+2))` -/
def P17412344450021462009.Spec : Prop :=
  ∀ n, P17412344450021462009.a n = A229324 (n + 1)

end A229324

/-! ## A229324.P12241573526404573300

`5*A028310(p?[A017221(n+1)])`
-/

namespace A229324.P12241573526404573300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017221 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A028310 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A229324.P12241573526404573300

namespace A229324

/-- `5*A028310(p?[A017221(n+1)])` -/
def P12241573526404573300.Spec : Prop :=
  ∀ n, P12241573526404573300.a n = A229324 (n + 1)

end A229324

/-!
# A229325: Total sum of cubes of parts in all partitions of n.

The programs for A229325, there is no canonical definition to state claims against.
-/

/-! ## A229325.P12201487352522852332

`∑{#}[n-1, A066633(C(n, 2)+#+1)*(#+1)^3]`
-/

namespace A229325.P12201487352522852332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, A066633 (Nat.choose n 2 + (k + 1)) * ((k + 1) ^ 3 : ℤ)

end

end A229325.P12201487352522852332

/-! ## A229325.P5298598273921588017

`A213191(∑[n+3]+n+3)`
-/

namespace A229325.P5298598273921588017
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213191 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A229325.P5298598273921588017

/-! ## A229325.P9808370101347396957

`record[A213191(abs(A046691(n)))]`
-/

namespace A229325.P9808370101347396957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213191 |A046691 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A229325.P9808370101347396957

/-!
# A229326: Total sum of 4th powers of parts in all partitions of n.

The programs for A229326, there is no canonical definition to state claims against.
-/

/-! ## A229326.P17621738583505274340

`∑{#}[n-1, A066633(C(n, 2)+#+1)*(#+1)^4]`
-/

namespace A229326.P17621738583505274340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, A066633 (Nat.choose n 2 + (k + 1)) * ((k + 1) ^ 4 : ℤ)

end

end A229326.P17621738583505274340

/-! ## A229326.P13005768379655937404

`A213191(A052905(n+2))`
-/

namespace A229326.P13005768379655937404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213191 (A052905 (n + 2)).toNat

end

end A229326.P13005768379655937404

/-!
# A229327: Total sum of 5th powers of parts in all partitions of n.

The programs for A229327, there is no canonical definition to state claims against.
-/

/-! ## A229327.P17259374864272319439

`∑{#}[n-1, A066633(C(n, 2)+#+1)*(#+1)^5]`
-/

namespace A229327.P17259374864272319439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, A066633 (Nat.choose n 2 + (k + 1)) * ((k + 1) ^ 5 : ℤ)

end

end A229327.P17259374864272319439

/-! ## A229327.P16147243233837111949

`A213191(A055999(n+3))`
-/

namespace A229327.P16147243233837111949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213191 (A055999 (n + 3)).toNat

end

end A229327.P16147243233837111949

/-!
# A229328: Total sum of 6th powers of parts in all partitions of n.

The programs for A229328, there is no canonical definition to state claims against.
-/

/-! ## A229328.P18279985928277235994

`∑{#}[n-1, A066633(C(n, 2)+#+1)*(#+1)^6]`
-/

namespace A229328.P18279985928277235994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, A066633 (Nat.choose n 2 + (k + 1)) * ((k + 1) ^ 6 : ℤ)

end

end A229328.P18279985928277235994

/-! ## A229328.P13502454257184157075

`A213191(C(n+7, 2)+n)`
-/

namespace A229328.P13502454257184157075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213191 (Nat.choose (n + 7) 2 + n)

end

end A229328.P13502454257184157075

/-!
# A229329: Total sum of 7th powers of parts in all partitions of n.

The programs for A229329, there is no canonical definition to state claims against.
-/

/-! ## A229329.P17421016792488356070

`∑{#}[n-1, A066633(C(n, 2)+#+1)*(#+1)^7]`
-/

namespace A229329.P17421016792488356070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, A066633 (Nat.choose n 2 + (k + 1)) * ((k + 1) ^ 7 : ℤ)

end

end A229329.P17421016792488356070

/-! ## A229329.P14487467166034920732

`A213191(A155212(n+4))`
-/

namespace A229329.P14487467166034920732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213191 (A155212 (n + 4)).toNat

end

end A229329.P14487467166034920732

/-!
# A229330: Total sum of 8th powers of parts in all partitions of n.

The programs for A229330, there is no canonical definition to state claims against.
-/

/-! ## A229330.P11281870998344397231

`∑{#}[n-1, A066633(C(n, 2)+#+1)*(#+1)^8]`
-/

namespace A229330.P11281870998344397231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, A066633 (Nat.choose n 2 + (k + 1)) * ((k + 1) ^ 8 : ℤ)

end

end A229330.P11281870998344397231

/-! ## A229330.P13131865385941916734

`A213191(A000217(n+9)-9)`
-/

namespace A229330.P13131865385941916734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213191 (A000217 (n + 9) - 9).toNat

end

end A229330.P13131865385941916734

/-!
# A229331: Total sum of 9th powers of parts in all partitions of n.

The programs for A229331, there is no canonical definition to state claims against.
-/

/-! ## A229331.P68694328386543036

`∑{#}[n-1, A066633(C(n, 2)+#+1)*(#+1)^9]`
-/

namespace A229331.P68694328386543036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, A066633 (Nat.choose n 2 + (k + 1)) * ((k + 1) ^ 9 : ℤ)

end

end A229331.P68694328386543036

/-! ## A229331.P8695050498470447332

`A213191(A056000(n+6))`
-/

namespace A229331.P8695050498470447332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213191 (A056000 (n + 6)).toNat

end

end A229331.P8695050498470447332

/-!
# A229332: Total sum of 10th powers of parts in all partitions of n.

The programs for A229332, there is no canonical definition to state claims against.
-/

/-! ## A229332.P15942681520863425765

`A213191(eq[10, A025581(n)])`
-/

namespace A229332.P15942681520863425765
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213191 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A229332.P15942681520863425765

/-!
# A229333: Product of sizes of all the nonempty subsets of an n-element set.

The programs for A229333, there is no canonical definition to state claims against.
-/

/-! ## A229333.P1543651989912693534

`∏{d}[n!, #^C(n, #)]`
-/

namespace A229333.P1543651989912693534
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), d ^ Nat.choose n d

end

end A229333.P1543651989912693534

/-! ## A229333.P2331940266759256511

`A121853(2^n)`
-/

namespace A229333.P2331940266759256511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121853 (2 ^ n)

end

end A229333.P2331940266759256511

/-! ## A229333.P13022870821614813553

`a(n-1)*A064320(n)` with `a(0)=1`
-/

namespace A229333.P13022870821614813553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A064320 n

end

end A229333.P13022870821614813553

/-!
# A229335: Sum of sums of elements of subsets of divisors of n.

The programs for A229335, the canonical program `A229335.P12546027953543292786` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A229335 has offset 1).

The definition of A229335 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A229335.P5049909239849646580

`A000203(n+1)*A100577(n+1)`
-/

namespace A229335.P5049909239849646580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) * A100577 (n + 1)

end

end A229335.P5049909239849646580

namespace A229335

/-- `A000203(n+1)*A100577(n+1)` -/
def P5049909239849646580.Spec : Prop :=
  ∀ n, P5049909239849646580.a n = A229335 (n + 1)

end A229335

/-! ## A229335.P12546027953543292786

`A000203(n+1)*(A100587(n+1)+1)/2`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A229335

/-- `A000203(n+1)*(A100587(n+1)+1)/2` -/
def P12546027953543292786.Spec : Prop :=
  ∀ n, P12546027953543292786.a n = (A229335 (n + 1) : ℚ)

end A229335

/-! ## A229335.P6228081476617767039

`A000203(n+1)*2^(A000005(n+1)-1)`
-/

namespace A229335.P6228081476617767039
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) : ℚ) * (2 : ℚ) ^ (A000005 (n + 1) - 1 : ℤ)

end

end A229335.P6228081476617767039

namespace A229335

/-- `A000203(n+1)*2^(A000005(n+1)-1)` -/
def P6228081476617767039.Spec : Prop :=
  ∀ n, P6228081476617767039.a n = (A229335 (n + 1) : ℚ)

end A229335

/-! ## A229335.P2347203168362972853

`∑{d}[n+1, #]*A100577(n+1)`
-/

namespace A229335.P2347203168362972853
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) * A100577 (n + 1)

end

end A229335.P2347203168362972853

namespace A229335

/-- `∑{d}[n+1, #]*A100577(n+1)` -/
def P2347203168362972853.Spec : Prop :=
  ∀ n, P2347203168362972853.a n = A229335 (n + 1)

end A229335

/-! ## A229335.P1929374379787224237

`2^A032741(n+1)*∑{d}[n+1, #]`
-/

namespace A229335.P1929374379787224237
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A032741 (n + 1) : ℤ) * ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℚ)

end

end A229335.P1929374379787224237

namespace A229335

/-- `2^A032741(n+1)*∑{d}[n+1, #]` -/
def P1929374379787224237.Spec : Prop :=
  ∀ n, P1929374379787224237.a n = (A229335 (n + 1) : ℚ)

end A229335

/-! ## A229335.P17498818556377491370

`∑{d}[n+1, #]*A011782(∏{e}[n+1, #+1])`
-/

namespace A229335.P17498818556377491370
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) * A011782 (∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1))

end

end A229335.P17498818556377491370

namespace A229335

/-- `∑{d}[n+1, #]*A011782(∏{e}[n+1, #+1])` -/
def P17498818556377491370.Spec : Prop :=
  ∀ n, P17498818556377491370.a n = A229335 (n + 1)

end A229335

/-! ## A229335.P5543757945317874282

`A000203(n+1)/2*A338506(n+1)`
-/

namespace A229335.P5543757945317874282
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) : ℚ) / 2 * (A338506 (n + 1) : ℚ)

end

end A229335.P5543757945317874282

namespace A229335

/-- `A000203(n+1)/2*A338506(n+1)` -/
def P5543757945317874282.Spec : Prop :=
  ∀ n, P5543757945317874282.a n = (A229335 (n + 1) : ℚ)

end A229335

/-! ## A229335.P4021463385075335865

`2^A032741(n+1)*A000203(n+1)`
-/

namespace A229335.P4021463385075335865
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A032741 (n + 1) : ℤ) * (A000203 (n + 1) : ℚ)

end

end A229335.P4021463385075335865

namespace A229335

/-- `2^A032741(n+1)*A000203(n+1)` -/
def P4021463385075335865.Spec : Prop :=
  ∀ n, P4021463385075335865.a n = (A229335 (n + 1) : ℚ)

end A229335

/-! ## A229335.P10351000082286171298

`∑{d}[n+1, #]*A000079(Δ[A006218(n)]+1)/4`
-/

namespace A229335.P10351000082286171298
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) * A000079 (f2 (n + 1) - f2 n + 1).toNat : ℚ) / 4

end

end A229335.P10351000082286171298

namespace A229335

/-- `∑{d}[n+1, #]*A000079(Δ[A006218(n)]+1)/4` -/
def P10351000082286171298.Spec : Prop :=
  ∀ n, P10351000082286171298.a n = (A229335 (n + 1) : ℚ)

end A229335

/-! ## A229335.P3967495175723248284

`A000203(n+1)*A011782(A000005(n+1))`
-/

namespace A229335.P3967495175723248284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) * A011782 (A000005 (n + 1)).toNat

end

end A229335.P3967495175723248284

namespace A229335

/-- `A000203(n+1)*A011782(A000005(n+1))` -/
def P3967495175723248284.Spec : Prop :=
  ∀ n, P3967495175723248284.a n = A229335 (n + 1)

end A229335

/-! ## A229335.P7247782873293731736

`A000079(A000005(n+1)-1)*A000203(n+1)`
-/

namespace A229335.P7247782873293731736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A000005 (n + 1) - 1).toNat * A000203 (n + 1)

end

end A229335.P7247782873293731736

namespace A229335

/-- `A000079(A000005(n+1)-1)*A000203(n+1)` -/
def P7247782873293731736.Spec : Prop :=
  ∀ n, P7247782873293731736.a n = A229335 (n + 1)

end A229335

/-! ## A229335.P15491028935293396506

`A131577(A000005(n+1)+1)/2*A000203(n+1)`
-/

namespace A229335.P15491028935293396506
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A131577 (A000005 (n + 1) + 1).toNat : ℚ) / 2 * (A000203 (n + 1) : ℚ)

end

end A229335.P15491028935293396506

namespace A229335

/-- `A131577(A000005(n+1)+1)/2*A000203(n+1)` -/
def P15491028935293396506.Spec : Prop :=
  ∀ n, P15491028935293396506.a n = (A229335 (n + 1) : ℚ)

end A229335

/-! ## A229335.P13971382860145757968

`A000079(A000005(n+1)+1)/4*A000203(n+1)`
-/

namespace A229335.P13971382860145757968
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000079 (A000005 (n + 1) + 1).toNat : ℚ) / 4 * (A000203 (n + 1) : ℚ)

end

end A229335.P13971382860145757968

namespace A229335

/-- `A000079(A000005(n+1)+1)/4*A000203(n+1)` -/
def P13971382860145757968.Spec : Prop :=
  ∀ n, P13971382860145757968.a n = (A229335 (n + 1) : ℚ)

end A229335

/-! ## A229335.P16465437822092629280

`A000203(n+1)*A000010(A338506(n+1))`
-/

namespace A229335.P16465437822092629280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) * A000010 (A338506 (n + 1)).toNat

end

end A229335.P16465437822092629280

namespace A229335

/-- `A000203(n+1)*A000010(A338506(n+1))` -/
def P16465437822092629280.Spec : Prop :=
  ∀ n, P16465437822092629280.a n = A229335 (n + 1)

end A229335

/-!
# A229337: Sum of products of elements of nonempty subsets of divisors of n.

The programs for A229337, the canonical program `A229337.P13277258750618214647` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A229337 has offset 1).

The definition of A229337 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A020696, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A229337.P13277258750618214647

`A020696(n+1)-1`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A229337

/-- `A020696(n+1)-1` -/
def P13277258750618214647.Spec : Prop :=
  ∀ n, P13277258750618214647.a n = A229337 (n + 1)

theorem P13277258750618214647.correct : P13277258750618214647.Spec := by
  intro n
  simp only [A229337, Nat.add_sub_cancel]

end A229337

/-! ## A229337.P17052219749430357794

`∏{d}[1+n, #+1]-1`
-/

namespace A229337.P17052219749430357794
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ d ∈ Nat.divisors (f1 n), (d + 1) : ℕ) : ℤ) - 1

end

end A229337.P17052219749430357794

namespace A229337

/-- `∏{d}[1+n, #+1]-1` -/
def P17052219749430357794.Spec : Prop :=
  ∀ n, P17052219749430357794.a n = A229337 (n + 1)

end A229337

/-! ## A229337.P11510044985637556473

`exp(∑{d}[n+1, log(#+1)])-1`
-/

namespace A229337.P11510044985637556473
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.exp (∑ d ∈ Nat.divisors (f1 n), Real.log (d + 1 : ℝ)) - 1

end

end A229337.P11510044985637556473

namespace A229337

/-- `exp(∑{d}[n+1, log(#+1)])-1` -/
def P11510044985637556473.Spec : Prop :=
  ∀ n, P11510044985637556473.a n = (A229337 (n + 1) : ℝ)

end A229337

/-! ## A229337.P14787780262935268041

`abs(or(1, -∏{d}[n+1, #+1]))`
-/

namespace A229337.P14787780262935268041
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.lor 1 (-((∏ d ∈ Nat.divisors (f1 n), (d + 1) : ℕ) : ℤ))|

end

end A229337.P14787780262935268041

namespace A229337

/-- `abs(or(1, -∏{d}[n+1, #+1]))` -/
def P14787780262935268041.Spec : Prop :=
  ∀ n, P14787780262935268041.a n = A229337 (n + 1)

end A229337

/-! ## A229337.P9420559462668298192

`-or(1, -∏{d}[n+1, #+1])`
-/

namespace A229337.P9420559462668298192
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.lor 1 (-((∏ d ∈ Nat.divisors (f1 n), (d + 1) : ℕ) : ℤ))

end

end A229337.P9420559462668298192

namespace A229337

/-- `-or(1, -∏{d}[n+1, #+1])` -/
def P9420559462668298192.Spec : Prop :=
  ∀ n, P9420559462668298192.a n = A229337 (n + 1)

end A229337

/-! ## A229337.P17866976612392427673

`2^∑{d}[n+1, log2(#+1)]-1`
-/

namespace A229337.P17866976612392427673
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (2 : ℝ) ^ (∑ d ∈ Nat.divisors (f1 n), Real.logb 2 (d + 1 : ℝ)) - 1

end

end A229337.P17866976612392427673

namespace A229337

/-- `2^∑{d}[n+1, log2(#+1)]-1` -/
def P17866976612392427673.Spec : Prop :=
  ∀ n, P17866976612392427673.a n = (A229337 (n + 1) : ℝ)

end A229337

/-!
# A229338: Product of products of elements of subsets of divisors of n.

The programs for A229338, there is no canonical definition to state claims against.
-/

/-! ## A229338.P6973179647442841651

`sqrt((n+1)^A229253(n+1))`
-/

namespace A229338.P6973179647442841651
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((n + 1 : ℚ) ^ (A229253 (n + 1) : ℤ) : ℝ)

end

end A229338.P6973179647442841651

/-! ## A229338.P10240875433931345897

`(n+1)^A002605(∏{e}[n+1, #+1])`
-/

namespace A229338.P10240875433931345897
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A002605 (∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1)) : ℤ)

end

end A229338.P10240875433931345897

/-! ## A229338.P11785732240853163342

`(n+1)^A026134(∏{e}[n+1, #+1])`
-/

namespace A229338.P11785732240853163342
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A026134 (∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1)) : ℤ)

end

end A229338.P11785732240853163342

/-! ## A229338.P5513622211940719646

`(n+1)^A057711(∏{e}[n+1, #+1])`
-/

namespace A229338.P5513622211940719646
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A057711 (∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1)) : ℤ)

end

end A229338.P5513622211940719646

/-! ## A229338.P239775001742102869

`((1+n)*∏{p}[1+n, #])^A002865(∏{e}[n+1, C(#+2, 2)])`
-/

namespace A229338.P239775001742102869
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((1 + n) * (∏ p ∈ Nat.primeFactors (f1 n), p) : ℕ) : ℚ) ^ (A002865 (∏ p ∈ Nat.primeFactors (f2 n), Nat.choose (Nat.factorization (f2 n) p + 2) 2) : ℤ)

end

end A229338.P239775001742102869

/-!
# A229339: GCD of all sums of n consecutive Lucas numbers.

The programs for A229339, the canonical program `A229339.P1145594097769627869` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A229339 has offset 1).

The definition of A229339 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A229339.P4202774395057482845

`ogf((1+x+2x^2+5x^3-2x^4+x^5-6x^6-x^7-2x^8-5x^9+2x^10-x^11+x^12)/(1-3x^4-x^6+x^8+3x^10-x^14))`
-/

namespace A229339.P4202774395057482845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, 2, 5, -2, 1, -6, -1, -2, -5, 2, -1, 1] [1, 0, 0, 0, -3, 0, -1, 0, 1, 0, 3, 0, 0, 0, -1] n

end

end A229339.P4202774395057482845

namespace A229339

/-- `ogf((1+x+2x^2+5x^3-2x^4+x^5-6x^6-x^7-2x^8-5x^9+2x^10-x^11+x^12)/(1-3x^4-x^6+x^8+3x^10-x^14))` -/
def P4202774395057482845.Spec : Prop :=
  ∀ n, P4202774395057482845.a n = A229339 (n + 1)

end A229339

/-! ## A229339.P1145594097769627869

`gcd(A000032(n+1)-2, A000032(n)+1)`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A229339

/-- `gcd(A000032(n+1)-2, A000032(n)+1)` -/
def P1145594097769627869.Spec : Prop :=
  ∀ n, (P1145594097769627869.a n : ℤ) = A229339 (n + 1)

theorem P1145594097769627869.correct : P1145594097769627869.Spec := by
  intro n
  simp only [A229339, Nat.add_sub_cancel]

end A229339

/-! ## A229339.P17445840520596043980

`gcd(3-A061084(n), ∑[A061084(n)])`
-/

namespace A229339.P17445840520596043980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061084 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (3 - A061084 n) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A229339.P17445840520596043980

namespace A229339

/-- `gcd(3-A061084(n), ∑[A061084(n)])` -/
def P17445840520596043980.Spec : Prop :=
  ∀ n, (P17445840520596043980.a n : ℤ) = A229339 (n + 1)

end A229339

/-! ## A229339.P7739279812546283181

`gcd(A075193(n)+2, ∑[A075193(n)])`
-/

namespace A229339.P7739279812546283181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075193 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A075193 n + 2) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A229339.P7739279812546283181

namespace A229339

/-- `gcd(A075193(n)+2, ∑[A075193(n)])` -/
def P7739279812546283181.Spec : Prop :=
  ∀ n, (P7739279812546283181.a n : ℤ) = A229339 (n + 1)

end A229339

/-! ## A229339.P4086757378844369091

`gcd(1-Δ[A098600(n)], A098600(n))`
-/

namespace A229339.P4086757378844369091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098600 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (1 - (f1 (n + 1) - f1 n)) (A098600 n)

end

end A229339.P4086757378844369091

namespace A229339

/-- `gcd(1-Δ[A098600(n)], A098600(n))` -/
def P4086757378844369091.Spec : Prop :=
  ∀ n, (P4086757378844369091.a n : ℤ) = A229339 (n + 1)

end A229339

/-! ## A229339.P667118125301637813

`gcd(A001350(n)+1, A001350(n+1))`
-/

namespace A229339.P667118125301637813
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001350 n + 1) (A001350 (n + 1))

end

end A229339.P667118125301637813

namespace A229339

/-- `gcd(A001350(n)+1, A001350(n+1))` -/
def P667118125301637813.Spec : Prop :=
  ∀ n, (P667118125301637813.a n : ℤ) = A229339 (n + 1)

end A229339

/-! ## A229339.P7111068074659057127

`gcd(∑[A000032(n)], A001612(n))`
-/

namespace A229339.P7111068074659057127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (∑ j ∈ Finset.range (n + 1), f1 j) (A001612 n)

end

end A229339.P7111068074659057127

namespace A229339

/-- `gcd(∑[A000032(n)], A001612(n))` -/
def P7111068074659057127.Spec : Prop :=
  ∀ n, (P7111068074659057127.a n : ℤ) = A229339 (n + 1)

end A229339

/-! ## A229339.P17478946862265311124

`gcd(A001610(n+1), A098600(n))`
-/

namespace A229339.P17478946862265311124
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001610 (n + 1)) (A098600 n)

end

end A229339.P17478946862265311124

namespace A229339

/-- `gcd(A001610(n+1), A098600(n))` -/
def P17478946862265311124.Spec : Prop :=
  ∀ n, (P17478946862265311124.a n : ℤ) = A229339 (n + 1)

end A229339

/-! ## A229339.P6024117970329061590

`gcd(2-A000204(n+1), ∑[A000204(n+1)])`
-/

namespace A229339.P6024117970329061590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000204 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (2 - A000204 (n + 1)) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A229339.P6024117970329061590

namespace A229339

/-- `gcd(2-A000204(n+1), ∑[A000204(n+1)])` -/
def P6024117970329061590.Spec : Prop :=
  ∀ n, (P6024117970329061590.a n : ℤ) = A229339 (n + 1)

end A229339

/-! ## A229339.P4133960675892824708

`gcd(A119997(n+1)+A098600(n), A098600(n)²)`
-/

namespace A229339.P4133960675892824708
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A119997 (n + 1) + A098600 n) (A098600 n ^ 2)

end

end A229339.P4133960675892824708

namespace A229339

/-- `gcd(A119997(n+1)+A098600(n), A098600(n)²)` -/
def P4133960675892824708.Spec : Prop :=
  ∀ n, (P4133960675892824708.a n : ℤ) = A229339 (n + 1)

end A229339

/-! ## A229339.P3615421978604594671

`gcd(A001612(n), A216243(n))`
-/

namespace A229339.P3615421978604594671
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001612 n) (A216243 n)

end

end A229339.P3615421978604594671

namespace A229339

/-- `gcd(A001612(n), A216243(n))` -/
def P3615421978604594671.Spec : Prop :=
  ∀ n, (P3615421978604594671.a n : ℤ) = A229339 (n + 1)

end A229339

/-! ## A229339.P6512535491062277527

`gcd(A098600(n), A188378(n))`
-/

namespace A229339.P6512535491062277527
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A098600 n) (A188378 n)

end

end A229339.P6512535491062277527

namespace A229339

/-- `gcd(A098600(n), A188378(n))` -/
def P6512535491062277527.Spec : Prop :=
  ∀ n, (P6512535491062277527.a n : ℤ) = A229339 (n + 1)

end A229339

/-! ## A229339.P18176055294281542506

`gcd(A099921(n+1), A355021(n))`
-/

namespace A229339.P18176055294281542506
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A099921 (n + 1)) (A355021 n)

end

end A229339.P18176055294281542506

namespace A229339

/-- `gcd(A099921(n+1), A355021(n))` -/
def P18176055294281542506.Spec : Prop :=
  ∀ n, (P18176055294281542506.a n : ℤ) = A229339 (n + 1)

end A229339

/-! ## A229339.P13530300669946286236

`gcd(A032126(n+1), A120537(n+1))`
-/

namespace A229339.P13530300669946286236
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A032126 (n + 1)) (A120537 (n + 1))

end

end A229339.P13530300669946286236

namespace A229339

/-- `gcd(A032126(n+1), A120537(n+1))` -/
def P13530300669946286236.Spec : Prop :=
  ∀ n, (P13530300669946286236.a n : ℤ) = A229339 (n + 1)

end A229339

/-!
# A229340: Euler totient function of the arithmetic derivative of n: a(n) = phi(n'), a(1) = 0.

The programs for A229340, the canonical program `A229340.P17722889321809029525` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A229340 has offset 1).

The definition of A229340 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A229340.P17722889321809029525

`∑{e}[A006530(n+1), A000010(A003415((n+1)/#))]`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A229340

/-- `∑{e}[A006530(n+1), A000010(A003415((n+1)/#))]` -/
def P17722889321809029525.Spec : Prop :=
  ∀ n, P17722889321809029525.a n = A229340 (n + 1)

theorem P17722889321809029525.correct : P17722889321809029525.Spec := by
  intro n
  simp only [A229340, Nat.add_sub_cancel]

end A229340

/-! ## A229340.P8076148608292206605

`∑{e}[A020639(2*n+1), A000010(A003415((n+1)/#))]`
-/

namespace A229340.P8076148608292206605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A000010 (A003415 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (Nat.factorization (f1 n).natAbs p : ℚ))).toNat).toNat

end

end A229340.P8076148608292206605

namespace A229340

/-- `∑{e}[A020639(2*n+1), A000010(A003415((n+1)/#))]` -/
def P8076148608292206605.Spec : Prop :=
  ∀ n, P8076148608292206605.a n = A229340 (n + 1)

end A229340

/-! ## A229340.P13519820226599405328

`∑{d}[∑[A258057(n)], A007431(#)]`
-/

namespace A229340.P13519820226599405328
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258057 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A007431 d

end

end A229340.P13519820226599405328

namespace A229340

/-- `∑{d}[∑[A258057(n)], A007431(#)]` -/
def P13519820226599405328.Spec : Prop :=
  ∀ n, P13519820226599405328.a n = A229340 (n + 1)

end A229340

/-! ## A229340.P13273129694957912376

`∑{d}[A003415(n+1), A007431(#)]`
-/

namespace A229340.P13273129694957912376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A007431 d

end

end A229340.P13273129694957912376

namespace A229340

/-- `∑{d}[A003415(n+1), A007431(#)]` -/
def P13273129694957912376.Spec : Prop :=
  ∀ n, P13273129694957912376.a n = A229340 (n + 1)

end A229340

/-! ## A229340.P7954323588917845731

`∑{e}[A159477(n+1), A000010(A003415((n+1)/#))]`
-/

namespace A229340.P7954323588917845731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159477 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A000010 (A003415 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (Nat.factorization (f1 n).natAbs p : ℚ))).toNat).toNat

end

end A229340.P7954323588917845731

namespace A229340

/-- `∑{e}[A159477(n+1), A000010(A003415((n+1)/#))]` -/
def P7954323588917845731.Spec : Prop :=
  ∀ n, P7954323588917845731.a n = A229340 (n + 1)

end A229340

/-!
# A229341: a(n) = tau(n'), the number of divisors of the arithmetic derivative of n.

The programs for A229341, the canonical program `A229341.P12246436327909898701` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A229341 has offset 2).

The definition of A229341 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A229341.P12246436327909898701

`A000005(A003415(n+2))`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A229341

/-- `A000005(A003415(n+2))` -/
def P12246436327909898701.Spec : Prop :=
  ∀ n, P12246436327909898701.a n = A229341 (n + 2)

theorem P12246436327909898701.correct : P12246436327909898701.Spec := by
  intro n
  simp only [A229341, Nat.add_sub_cancel]

end A229341

/-! ## A229341.P4544252477602636409

`∏{e}[∑{d}[2+n, A300251(#)], #+1]`
-/

namespace A229341.P4544252477602636409
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 + n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), A300251 d

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1)

end

end A229341.P4544252477602636409

namespace A229341

/-- `∏{e}[∑{d}[2+n, A300251(#)], #+1]` -/
def P4544252477602636409.Spec : Prop :=
  ∀ n, (P4544252477602636409.a n : ℤ) = A229341 (n + 2)

end A229341

/-! ## A229341.P10839413482543762728

`∏{e}[A003415(2+n), #+1]`
-/

namespace A229341.P10839413482543762728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (2 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1)

end

end A229341.P10839413482543762728

namespace A229341

/-- `∏{e}[A003415(2+n), #+1]` -/
def P10839413482543762728.Spec : Prop :=
  ∀ n, (P10839413482543762728.a n : ℤ) = A229341 (n + 2)

end A229341

/-! ## A229341.P8976315981344538764

`A320111(2*A003415(n+2))`
-/

namespace A229341.P8976315981344538764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320111 (2 * A003415 (n + 2)).toNat

end

end A229341.P8976315981344538764

namespace A229341

/-- `A320111(2*A003415(n+2))` -/
def P8976315981344538764.Spec : Prop :=
  ∀ n, P8976315981344538764.a n = A229341 (n + 2)

end A229341

/-! ## A229341.P13082026218019831051

`A365552(A003415(n+2)²)`
-/

namespace A229341.P13082026218019831051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365552 (A003415 (n + 2) ^ 2).toNat

end

end A229341.P13082026218019831051

namespace A229341

/-- `A365552(A003415(n+2)²)` -/
def P13082026218019831051.Spec : Prop :=
  ∀ n, P13082026218019831051.a n = A229341 (n + 2)

end A229341

/-!
# A229342: a(n) = sigma(n'), the sum of divisors of the arithmetic derivative of n.

The programs for A229342, the canonical program `A229342.P3262806412783250556` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A229342 has offset 2).

The definition of A229342 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A229342.P3262806412783250556

`A000203(A003415(n+2))`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A229342

/-- `A000203(A003415(n+2))` -/
def P3262806412783250556.Spec : Prop :=
  ∀ n, P3262806412783250556.a n = A229342 (n + 2)

theorem P3262806412783250556.correct : P3262806412783250556.Spec := by
  intro n
  simp only [A229342, Nat.add_sub_cancel]

end A229342

/-! ## A229342.P6752690115688934634

`∑{d}[∑[A258057(1+n)], #]`
-/

namespace A229342.P6752690115688934634
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258057 (1 + n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A229342.P6752690115688934634

namespace A229342

/-- `∑{d}[∑[A258057(1+n)], #]` -/
def P6752690115688934634.Spec : Prop :=
  ∀ n, (P6752690115688934634.a n : ℤ) = A229342 (n + 2)

end A229342

/-! ## A229342.P16161033776157230050

`∑{d}[∑{d}[2+n, A300251(#)], #]`
-/

namespace A229342.P16161033776157230050
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 + n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), A300251 d

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A229342.P16161033776157230050

namespace A229342

/-- `∑{d}[∑{d}[2+n, A300251(#)], #]` -/
def P16161033776157230050.Spec : Prop :=
  ∀ n, (P16161033776157230050.a n : ℤ) = A229342 (n + 2)

end A229342

/-! ## A229342.P15287035846482629429

`∑{d}[A003415(2+n), #]`
-/

namespace A229342.P15287035846482629429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (2 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A229342.P15287035846482629429

namespace A229342

/-- `∑{d}[A003415(2+n), #]` -/
def P15287035846482629429.Spec : Prop :=
  ∀ n, (P15287035846482629429.a n : ℤ) = A229342 (n + 2)

end A229342

/-! ## A229342.P1432752704650588524

`∑{d}[Δ[A190121(n+1)], #]`
-/

namespace A229342.P1432752704650588524
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190121 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A229342.P1432752704650588524

namespace A229342

/-- `∑{d}[Δ[A190121(n+1)], #]` -/
def P1432752704650588524.Spec : Prop :=
  ∀ n, (P1432752704650588524.a n : ℤ) = A229342 (n + 2)

end A229342

/-! ## A229342.P2381876154726601859

`∑{d}[A003557(n+2)*A342001(n+2), #]`
-/

namespace A229342.P2381876154726601859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (n + 2) * A342001 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A229342.P2381876154726601859

namespace A229342

/-- `∑{d}[A003557(n+2)*A342001(n+2), #]` -/
def P2381876154726601859.Spec : Prop :=
  ∀ n, (P2381876154726601859.a n : ℤ) = A229342 (n + 2)

end A229342

/-! ## A229342.P18296383850653657677

`∑{d}[A319703(2*(n+2)), #]`
-/

namespace A229342.P18296383850653657677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319703 (2 * (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A229342.P18296383850653657677

namespace A229342

/-- `∑{d}[A319703(2*(n+2)), #]` -/
def P18296383850653657677.Spec : Prop :=
  ∀ n, (P18296383850653657677.a n : ℤ) = A229342 (n + 2)

end A229342

/-!
# A229343: Moebius function of the arithmetic derivative of n: a(n) = mu(n').

The programs for A229343, the canonical program `A229343.P14743053429634653820` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A229343 has offset 2).

The definition of A229343 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A229343.P14743053429634653820

`A008683(A003415(n+2))`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A229343

/-- `A008683(A003415(n+2))` -/
def P14743053429634653820.Spec : Prop :=
  ∀ n, P14743053429634653820.a n = A229343 (n + 2)

theorem P14743053429634653820.correct : P14743053429634653820.Spec := by
  intro n
  simp only [A229343, Nat.add_sub_cancel]

end A229343

/-! ## A229343.P6920673402188444736

`round(1/∏{e}[∑[A258057(n+1)], -#²])`
-/

namespace A229343.P6920673402188444736
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258057 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (1 / ((∏ p ∈ Nat.primeFactors (f1 n).natAbs, (-(Nat.factorization (f1 n).natAbs p ^ 2 : ℤ)) : ℤ) : ℚ))

end

end A229343.P6920673402188444736

namespace A229343

/-- `round(1/∏{e}[∑[A258057(n+1)], -#²])` -/
def P6920673402188444736.Spec : Prop :=
  ∀ n, P6920673402188444736.a n = A229343 (n + 2)

end A229343

/-! ## A229343.P6287726936802540021

`∏{e}[A003415(n+2), -floor(1/#)]`
-/

namespace A229343.P6287726936802540021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (-⌊1 / (Nat.factorization (f1 n).natAbs p : ℚ)⌋)

end

end A229343.P6287726936802540021

namespace A229343

/-- `∏{e}[A003415(n+2), -floor(1/#)]` -/
def P6287726936802540021.Spec : Prop :=
  ∀ n, P6287726936802540021.a n = A229343 (n + 2)

end A229343

/-! ## A229343.P13941527097332472000

`A128190(A036655(n+1))`
-/

namespace A229343.P13941527097332472000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128190 (A036655 (n + 1)).toNat

end

end A229343.P13941527097332472000

namespace A229343

/-- `A128190(A036655(n+1))` -/
def P13941527097332472000.Spec : Prop :=
  ∀ n, P13941527097332472000.a n = A229343 (n + 2)

end A229343

/-! ## A229343.P11035640848544065620

`A131851(A402519(n+1))`
-/

namespace A229343.P11035640848544065620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131851 (A402519 (n + 1)).toNat

end

end A229343.P11035640848544065620

namespace A229343

/-- `A131851(A402519(n+1))` -/
def P11035640848544065620.Spec : Prop :=
  ∀ n, P11035640848544065620.a n = A229343 (n + 2)

end A229343

/-!
# A229344: Mertens's function of the arithmetic derivative of n: a(n) = M(n'), a(1) = 0.

The programs for A229344, the canonical program `A229344.P6312581941137850236` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A229344 has offset 1).

The definition of A229344 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2047 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A229344.P6312581941137850236

`A002321(abs(A003415(n+1)-1)+1)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A229344

/-- `A002321(abs(A003415(n+1)-1)+1)` -/
def P6312581941137850236.Spec : Prop :=
  ∀ n, P6312581941137850236.a n = A229344 (n + 1)

theorem P6312581941137850236.correct : P6312581941137850236.Spec := by
  intro n
  simp only [A229344, Nat.add_sub_cancel]

end A229344

/-! ## A229344.P662992581100413411

`A100198(A003415(n+1))+1`
-/

namespace A229344.P662992581100413411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100198 (A003415 (n + 1)).toNat + 1

end

end A229344.P662992581100413411

namespace A229344

/-- `A100198(A003415(n+1))+1` -/
def P662992581100413411.Spec : Prop :=
  ∀ n, P662992581100413411.a n = A229344 (n + 1)

end A229344

/-! ## A229344.P4329622420344369137

`A004718(A287786(∏{e}[n+1, #+1]))`
-/

namespace A229344.P4329622420344369137
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004718 (A287786 (∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1))).toNat

end

end A229344.P4329622420344369137

namespace A229344

/-- `A004718(A287786(∏{e}[n+1, #+1]))` -/
def P4329622420344369137.Spec : Prop :=
  ∀ n, P4329622420344369137.a n = A229344 (n + 1)

end A229344

/-! ## A229344.P9403364668751043821

`A117163(A000005(A187829(n+1)))`
-/

namespace A229344.P9403364668751043821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117163 (A000005 (A187829 (n + 1)).toNat).toNat

end

end A229344.P9403364668751043821

namespace A229344

/-- `A117163(A000005(A187829(n+1)))` -/
def P9403364668751043821.Spec : Prop :=
  ∀ n, P9403364668751043821.a n = A229344 (n + 1)

end A229344

/-! ## A229344.P1990025164844193834

`A010894(3*n)-A144634(A000005(n+1))`
-/

namespace A229344.P1990025164844193834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010894 (3 * n + 21) - A144634 (A000005 (n + 1)).toNat

end

end A229344.P1990025164844193834

namespace A229344

/-- `A010894(3*n)-A144634(A000005(n+1))` -/
def P1990025164844193834.Spec : Prop :=
  ∀ n, P1990025164844193834.a n = A229344 (n + 1)

end A229344

/-!
# A229346: Number of lattice paths from {n}^n to {0}^n using steps that decrement one component or all components by the same positive integer.

The programs for A229346, there is no canonical definition to state claims against.
-/

/-! ## A229346.P4079379890357827232

`A229345(∑[4*n])`
-/

namespace A229346.P4079379890357827232
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229345 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A229346.P4079379890357827232

/-!
# A229347: a(1) = 1, for n > 1 a(n) = n*2^(omega(n)-1) where omega is A001221.

The programs for A229347, the canonical program `A229347.P15433898513579831732` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A229347 has offset 1).

The definition of A229347 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A229347.P11990035368682976305

`(n+1)*2^floor(∑{p}[n+1, root(γ, #)])`
-/

namespace A229347.P11990035368682976305
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * (2 : ℚ) ^ (⌊∑ p ∈ Nat.primeFactors (f1 n), Real.eulerMascheroniConstant ^ (1 / (p : ℝ))⌋ : ℤ)

end

end A229347.P11990035368682976305

namespace A229347

/-- `(n+1)*2^floor(∑{p}[n+1, root(γ, #)])` -/
def P11990035368682976305.Spec : Prop :=
  ∀ n, P11990035368682976305.a n = (A229347 (n + 1) : ℚ)

end A229347

/-! ## A229347.P13183860618058242701

`(n+1)*ceil(2^∑{p}[n+1, gcd(n, #)]/2)`
-/

namespace A229347.P13183860618058242701
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * ⌈(2 ^ (∑ p ∈ Nat.primeFactors (f1 n), Nat.gcd n p) : ℚ) / 2⌉

end

end A229347.P13183860618058242701

namespace A229347

/-- `(n+1)*ceil(2^∑{p}[n+1, gcd(n, #)]/2)` -/
def P13183860618058242701.Spec : Prop :=
  ∀ n, P13183860618058242701.a n = A229347 (n + 1)

end A229347

/-! ## A229347.P6769775022529648608

`round(floor(∏{e}[n+1, #/(n+1)+2])/2*(n+1))`
-/

namespace A229347.P6769775022529648608
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((⌊∏ p ∈ Nat.primeFactors (f1 n), ((Nat.factorization (f1 n) p : ℚ) / (n + 1 : ℚ) + 2)⌋ : ℚ) / 2 * (n + 1 : ℚ))

end

end A229347.P6769775022529648608

namespace A229347

/-- `round(floor(∏{e}[n+1, #/(n+1)+2])/2*(n+1))` -/
def P6769775022529648608.Spec : Prop :=
  ∀ n, P6769775022529648608.a n = A229347 (n + 1)

end A229347

/-! ## A229347.P4157530060939358182

`lcm(2, A298473(1+n))/2`
-/

namespace A229347.P4157530060939358182
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A298473 (1 + n)) : ℚ) / 2

end

end A229347.P4157530060939358182

namespace A229347

/-- `lcm(2, A298473(1+n))/2` -/
def P4157530060939358182.Spec : Prop :=
  ∀ n, P4157530060939358182.a n = (A229347 (n + 1) : ℚ)

end A229347

/-! ## A229347.P4322366068793719599

`(1+n)*A007875(1+n)`
-/

namespace A229347.P4322366068793719599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 + n : ℤ) * A007875 (1 + n)

end

end A229347.P4322366068793719599

namespace A229347

/-- `(1+n)*A007875(1+n)` -/
def P4322366068793719599.Spec : Prop :=
  ∀ n, P4322366068793719599.a n = A229347 (n + 1)

end A229347

/-! ## A229347.P2675813335643198190

`2^A297155(n+1)*(n+1)`
-/

namespace A229347.P2675813335643198190
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A297155 (n + 1) : ℤ) * (n + 1 : ℚ)

end

end A229347.P2675813335643198190

namespace A229347

/-- `2^A297155(n+1)*(n+1)` -/
def P2675813335643198190.Spec : Prop :=
  ∀ n, P2675813335643198190.a n = (A229347 (n + 1) : ℚ)

end A229347

/-! ## A229347.P6606747579039913604

`(n+1)*∑{d}[n+1, A353629(#)]`
-/

namespace A229347.P6606747579039913604
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (∑ d ∈ Nat.divisors (f1 n), A353629 d)

end

end A229347.P6606747579039913604

namespace A229347

/-- `(n+1)*∑{d}[n+1, A353629(#)]` -/
def P6606747579039913604.Spec : Prop :=
  ∀ n, P6606747579039913604.a n = A229347 (n + 1)

end A229347

/-! ## A229347.P6673419598496736415

`(n+1)*A038548(∏{p}[n+1, #])`
-/

namespace A229347.P6673419598496736415
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A038548 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A229347.P6673419598496736415

namespace A229347

/-- `(n+1)*A038548(∏{p}[n+1, #])` -/
def P6673419598496736415.Spec : Prop :=
  ∀ n, P6673419598496736415.a n = A229347 (n + 1)

end A229347

/-! ## A229347.P668875190855211571

`ceil(A034444(n+1)/2)*(n+1)`
-/

namespace A229347.P668875190855211571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A034444 (n + 1) : ℚ) / 2⌉ * (n + 1 : ℤ)

end

end A229347.P668875190855211571

namespace A229347

/-- `ceil(A034444(n+1)/2)*(n+1)` -/
def P668875190855211571.Spec : Prop :=
  ∀ n, P668875190855211571.a n = A229347 (n + 1)

end A229347

/-! ## A229347.P15182700766772186460

`(n+1)*A000079(floor(∑{p}[n+1, root(γ, #)]))`
-/

namespace A229347.P15182700766772186460
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000079 ⌊∑ p ∈ Nat.primeFactors (f1 n), Real.eulerMascheroniConstant ^ (1 / (p : ℝ))⌋.toNat

end

end A229347.P15182700766772186460

namespace A229347

/-- `(n+1)*A000079(floor(∑{p}[n+1, root(γ, #)]))` -/
def P15182700766772186460.Spec : Prop :=
  ∀ n, P15182700766772186460.a n = A229347 (n + 1)

end A229347

/-! ## A229347.P5656782255674457759

`ceil(sqrt(((n+1)*A158522(n+1))²-n)/2)`
-/

namespace A229347.P5656782255674457759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (((n + 1 : ℤ) * A158522 (n + 1)) ^ 2 - (n : ℤ) : ℝ) / 2⌉

end

end A229347.P5656782255674457759

namespace A229347

/-- `ceil(sqrt(((n+1)*A158522(n+1))²-n)/2)` -/
def P5656782255674457759.Spec : Prop :=
  ∀ n, P5656782255674457759.a n = A229347 (n + 1)

end A229347

/-! ## A229347.P14880490329071160589

`(n+1)*A000010(A034444(n+1))`
-/

namespace A229347.P14880490329071160589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000010 (A034444 (n + 1)).toNat

end

end A229347.P14880490329071160589

namespace A229347

/-- `(n+1)*A000010(A034444(n+1))` -/
def P14880490329071160589.Spec : Prop :=
  ∀ n, P14880490329071160589.a n = A229347 (n + 1)

end A229347

/-! ## A229347.P13024251490369094995

`(n+1)*A038548(A007947(n+1))`
-/

namespace A229347.P13024251490369094995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A038548 (A007947 (n + 1)).toNat

end

end A229347.P13024251490369094995

namespace A229347

/-- `(n+1)*A038548(A007947(n+1))` -/
def P13024251490369094995.Spec : Prop :=
  ∀ n, P13024251490369094995.a n = A229347 (n + 1)

end A229347

/-! ## A229347.P12771017666829401704

`(n+1)*A034444(A028234(n+1))`
-/

namespace A229347.P12771017666829401704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A034444 (A028234 (n + 1)).toNat

end

end A229347.P12771017666829401704

namespace A229347

/-- `(n+1)*A034444(A028234(n+1))` -/
def P12771017666829401704.Spec : Prop :=
  ∀ n, P12771017666829401704.a n = A229347 (n + 1)

end A229347

/-! ## A229347.P7921575504996487856

`(n+1)*A034444(A052125(n+1))`
-/

namespace A229347.P7921575504996487856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A034444 (A052125 (n + 1)).toNat

end

end A229347.P7921575504996487856

namespace A229347

/-- `(n+1)*A034444(A052125(n+1))` -/
def P7921575504996487856.Spec : Prop :=
  ∀ n, P7921575504996487856.a n = A229347 (n + 1)

end A229347

/-! ## A229347.P15433898513579831732

`(n+1)*A052938(A087893(n+1))`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A229347

/-- `(n+1)*A052938(A087893(n+1))` -/
def P15433898513579831732.Spec : Prop :=
  ∀ n, P15433898513579831732.a n = A229347 (n + 1)

theorem P15433898513579831732.correct : P15433898513579831732.Spec := by
  intro n
  simp only [A229347, Nat.add_sub_cancel]

end A229347

/-! ## A229347.P9517857629876833285

`(n+1)*A162510(A082476(n+1))`
-/

namespace A229347.P9517857629876833285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A162510 (A082476 (n + 1)).toNat

end

end A229347.P9517857629876833285

namespace A229347

/-- `(n+1)*A162510(A082476(n+1))` -/
def P9517857629876833285.Spec : Prop :=
  ∀ n, P9517857629876833285.a n = A229347 (n + 1)

end A229347

/-! ## A229347.P909966441783937611

`(n+1)*A001227(A292586(n+1))`
-/

namespace A229347.P909966441783937611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A001227 (A292586 (n + 1)).toNat

end

end A229347.P909966441783937611

namespace A229347

/-- `(n+1)*A001227(A292586(n+1))` -/
def P909966441783937611.Spec : Prop :=
  ∀ n, P909966441783937611.a n = A229347 (n + 1)

end A229347

/-! ## A229347.P8575896766783576609

`(n+1)*A000005(A293810(n+1))`
-/

namespace A229347.P8575896766783576609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000005 (A293810 (n + 1)).toNat

end

end A229347.P8575896766783576609

namespace A229347

/-- `(n+1)*A000005(A293810(n+1))` -/
def P8575896766783576609.Spec : Prop :=
  ∀ n, P8575896766783576609.a n = A229347 (n + 1)

end A229347

/-! ## A229347.P16453004086250042029

`(n+1)*A000005(A333175(n+1))`
-/

namespace A229347.P16453004086250042029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000005 (A333175 (n + 1)).toNat

end

end A229347.P16453004086250042029

namespace A229347

/-- `(n+1)*A000005(A333175(n+1))` -/
def P16453004086250042029.Spec : Prop :=
  ∀ n, P16453004086250042029.a n = A229347 (n + 1)

end A229347

/-!
# A229348: Numerators of the ordinary convergents of continued fraction [x(1),x(2),x(3),...], where x(n) = F(n+1)/F(n), F = A000045 (Fibonacci numbers).

The programs for A229348, there is no canonical definition to state claims against.
-/

/-! ## A229348.P9967455314753208102

`A147270(A147277(n+5))+A001610(n)`
-/

namespace A229348.P9967455314753208102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147270 (A147277 (n + 5)).toNat + A001610 n

end

end A229348.P9967455314753208102

/-!
# A229349: Denominators of the ordinary convergents of continued fraction [x(1),x(2),x(3),...], where x(n) = F(n+1)/F(n), where F = A000045 (Fibonacci numbers).

The programs for A229349, there is no canonical definition to state claims against.
-/

/-! ## A229349.P16095252367381658195

`∑[A061674(A110609(n))]`
-/

namespace A229349.P16095252367381658195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061674 (A110609 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A229349.P16095252367381658195

/-!
# A229354: Total sum of n-th powers of parts in all partitions of 3.

The programs for A229354, the canonical program `A229354.P18225024868484811947` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A229354 has offset 0).

The definition of A229354 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A229354.P18225024868484811947

`4+2^n+3^n`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A229354

/-- `4+2^n+3^n` -/
def P18225024868484811947.Spec : Prop :=
  ∀ n, (P18225024868484811947.a n : ℤ) = A229354 n

theorem P18225024868484811947.correct : P18225024868484811947.Spec := by
  intro n
  simp only [A229354]

end A229354

/-! ## A229354.P14646816182452316838

`ogf((6-27x+29x^2)/(1-6x+11x^2-6x^3))`
-/

namespace A229354.P14646816182452316838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [6, -27, 29] [1, -6, 11, -6] n

end

end A229354.P14646816182452316838

namespace A229354

/-- `ogf((6-27x+29x^2)/(1-6x+11x^2-6x^3))` -/
def P14646816182452316838.Spec : Prop :=
  ∀ n, P14646816182452316838.a n = A229354 n

end A229354

/-! ## A229354.P17216213715218030880

`∑[6*(a(n-1)-a(n-2))-a(n-1)]` with `a(0)=6, a(1)=3, a(2)=8`
-/

namespace A229354.P17216213715218030880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [6, 3, 8] fun n f1 =>
  6 * (f1 (n - 1) - f1 (n - 2)) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A229354.P17216213715218030880

namespace A229354

/-- `∑[6*(a(n-1)-a(n-2))-a(n-1)]` -/
def P17216213715218030880.Spec : Prop :=
  ∀ n, P17216213715218030880.a n = A229354 n

end A229354

/-! ## A229354.P13259833471251099504

`Δ[A094374(n)+4*n]`
-/

namespace A229354.P13259833471251099504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094374 n + (4 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A229354.P13259833471251099504

namespace A229354

/-- `Δ[A094374(n)+4*n]` -/
def P13259833471251099504.Spec : Prop :=
  ∀ n, P13259833471251099504.a n = A229354 n

end A229354

/-! ## A229354.P11664291860738243550

`2*(A007689(n)/2+2)`
-/

namespace A229354.P11664291860738243550
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * ((A007689 n : ℚ) / 2 + 2)

end

end A229354.P11664291860738243550

namespace A229354

/-- `2*(A007689(n)/2+2)` -/
def P11664291860738243550.Spec : Prop :=
  ∀ n, P11664291860738243550.a n = (A229354 n : ℚ)

theorem P11664291860738243550.correct : P11664291860738243550.Spec := by
  intro n
  simp only [A229354, Nat.add_sub_cancel, A229354.P11664291860738243550.a, A229354.P18225024868484811947.a, A007689, A007689.P5844437503402331617.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A229354

/-! ## A229354.P16924676294558259645

`Δ[∑[A085281(n)]+4*n]`
-/

namespace A229354.P16924676294558259645
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085281 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (4 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A229354.P16924676294558259645

namespace A229354

/-- `Δ[∑[A085281(n)]+4*n]` -/
def P16924676294558259645.Spec : Prop :=
  ∀ n, P16924676294558259645.a n = A229354 n

end A229354

/-! ## A229354.P13052614114407747027

`record[A001550(n-2%(n+1))+3]`
-/

namespace A229354.P13052614114407747027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001550 (n - 2 % (n + 1)) + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A229354.P13052614114407747027

namespace A229354

/-- `record[A001550(n-2%(n+1))+3]` -/
def P13052614114407747027.Spec : Prop :=
  ∀ n, P13052614114407747027.a n = A229354 n

end A229354

/-! ## A229354.P17001670319832653717

`abs(A000225(n)-A254028(n))`
-/

namespace A229354.P17001670319832653717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000225 n - A254028 n|

end

end A229354.P17001670319832653717

namespace A229354

/-- `abs(A000225(n)-A254028(n))` -/
def P17001670319832653717.Spec : Prop :=
  ∀ n, P17001670319832653717.a n = A229354 n

end A229354

/-! ## A229354.P3765445819716817102

`Δ[4*n+A007051(n)+A000918(n)]`
-/

namespace A229354.P3765445819716817102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n : ℤ) + (A007051 n + A000918 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A229354.P3765445819716817102

namespace A229354

/-- `Δ[4*n+A007051(n)+A000918(n)]` -/
def P3765445819716817102.Spec : Prop :=
  ∀ n, P3765445819716817102.a n = A229354 n

end A229354

/-! ## A229354.P16906423353085817281

`(A254365(n)+A000244(n))%A254362(n)`
-/

namespace A229354.P16906423353085817281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A254365 n + A000244 n) (A254362 n)

end

end A229354.P16906423353085817281

namespace A229354

/-- `(A254365(n)+A000244(n))%A254362(n)` -/
def P16906423353085817281.Spec : Prop :=
  ∀ n, P16906423353085817281.a n = A229354 n

end A229354

/-! ## A229354.P15991255649511367652

`record[A007689(A025581(n))+4]`
-/

namespace A229354.P15991255649511367652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007689 (A025581 n).toNat + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A229354.P15991255649511367652

namespace A229354

/-- `record[A007689(A025581(n))+4]` -/
def P15991255649511367652.Spec : Prop :=
  ∀ n, P15991255649511367652.a n = A229354 n

end A229354

/-!
# A229355: Total sum of n-th powers of parts in all partitions of 4.

The programs for A229355, the canonical program `A229355.P13194659041670685549` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A229355 has offset 0).

The definition of A229355 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A229355.P13194659041670685549

`7+3*2^n+3^n+4^n`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A229355

/-- `7+3*2^n+3^n+4^n` -/
def P13194659041670685549.Spec : Prop :=
  ∀ n, (P13194659041670685549.a n : ℤ) = A229355 n

theorem P13194659041670685549.correct : P13194659041670685549.Spec := by
  intro n
  simp only [A229355]

end A229355

/-! ## A229355.P7213885311520285101

`ogf((12-100x+264x^2-218x^3)/(1-10x+35x^2-50x^3+24x^4))`
-/

namespace A229355.P7213885311520285101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [12, -100, 264, -218] [1, -10, 35, -50, 24] n

end

end A229355.P7213885311520285101

namespace A229355

/-- `ogf((12-100x+264x^2-218x^3)/(1-10x+35x^2-50x^3+24x^4))` -/
def P7213885311520285101.Spec : Prop :=
  ∀ n, P7213885311520285101.a n = A229355 n

end A229355

/-! ## A229355.P12324688525449180633

`A213191(eq[4, A002262(n)])`
-/

namespace A229355.P12324688525449180633
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213191 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A229355.P12324688525449180633

namespace A229355

/-- `A213191(eq[4, A002262(n)])` -/
def P12324688525449180633.Spec : Prop :=
  ∀ n, P12324688525449180633.a n = A229355 n

end A229355

/-!
# A229356: Total sum of n-th powers of parts in all partitions of 5.

The programs for A229356, the canonical program `A229356.P15382494703564254203` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A229356 has offset 0).

The definition of A229356 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A229356.P15382494703564254203

`12+4*2^n+2*3^n+4^n+5^n`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A229356

/-- `12+4*2^n+2*3^n+4^n+5^n` -/
def P15382494703564254203.Spec : Prop :=
  ∀ n, (P15382494703564254203.a n : ℤ) = A229356 n

theorem P15382494703564254203.correct : P15382494703564254203.Spec := by
  intro n
  simp only [A229356]

end A229356

/-! ## A229356.P393678204161238807

`A213191(A167499(n+4))`
-/

namespace A229356.P393678204161238807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213191 (A167499 (n + 4)).toNat

end

end A229356.P393678204161238807

namespace A229356

/-- `A213191(A167499(n+4))` -/
def P393678204161238807.Spec : Prop :=
  ∀ n, P393678204161238807.a n = A229356 n

end A229356

/-!
# A229357: Total sum of n-th powers of parts in all partitions of 6.

The programs for A229357, the canonical program `A229357.P2301415006490489591` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A229357 has offset 0).

The definition of A229357 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A229357.P2301415006490489591

`19+8*2^n+4*3^n+2*4^n+5^n+6^n`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A229357

/-- `19+8*2^n+4*3^n+2*4^n+5^n+6^n` -/
def P2301415006490489591.Spec : Prop :=
  ∀ n, (P2301415006490489591.a n : ℤ) = A229357 n

theorem P2301415006490489591.correct : P2301415006490489591.Spec := by
  intro n
  simp only [A229357]

end A229357

/-! ## A229357.P6979425045861119269

`A213191(eq[6, A002262(n)])`
-/

namespace A229357.P6979425045861119269
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213191 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A229357.P6979425045861119269

namespace A229357

/-- `A213191(eq[6, A002262(n)])` -/
def P6979425045861119269.Spec : Prop :=
  ∀ n, P6979425045861119269.a n = A229357 n

end A229357

/-!
# A229358: Total sum of n-th powers of parts in all partitions of 7.

The programs for A229358, there is no canonical definition to state claims against.
-/

/-! ## A229358.P18187575633631408242

`A213191(eq[7, A002262(n)])`
-/

namespace A229358.P18187575633631408242
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213191 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A229358.P18187575633631408242

/-!
# A229359: Total sum of n-th powers of parts in all partitions of 8.

The programs for A229359, there is no canonical definition to state claims against.
-/

/-! ## A229359.P2608033623700351127

`A213191(A167499(n+7)+3)`
-/

namespace A229359.P2608033623700351127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213191 (A167499 (n + 7) + 3).toNat

end

end A229359.P2608033623700351127

/-!
# A229360: Total sum of n-th powers of parts in all partitions of 9.

The programs for A229360, there is no canonical definition to state claims against.
-/

/-! ## A229360.P759121523869903763

`A213191(A167499(8+n)+4)`
-/

namespace A229360.P759121523869903763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213191 (A167499 (8 + n) + 4).toNat

end

end A229360.P759121523869903763

/-!
# A229361: Total sum of n-th powers of parts in all partitions of 10.

The programs for A229361, there is no canonical definition to state claims against.
-/

/-! ## A229361.P13726297807576594069

`A213191(A167499(n+9)+5)`
-/

namespace A229361.P13726297807576594069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213191 (A167499 (n + 9) + 5).toNat

end

end A229361.P13726297807576594069

/-!
# A229363: a(1) = 0; for n > 1: a(n) = smallest even number greater than a(n-1) which does not use any digit used by a(n-1).

The programs for A229363, the canonical program `A229363.P3609768523449951024` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A229363 has offset 1).

The definition of A229363 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A229363.P3609768523449951024

`ogf((2x+4x^2+4x^3+4x^4+4x^5+14x^6+20x^7+20x^8-20x^10-20x^11-20x^12-20x^13-110x^14+10x^15+100x^16)/(1-x^2-10x^8+10x^10))`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A229363

/-- `ogf((2x+4x^2+4x^3+4x^4+4x^5+14x^6+20x^7+20x^8-20x^10-20x^11-20x^12-20x^13-110x^14+10x^15+100x^16)/(1-x^2-10x^8+10x^10))` -/
def P3609768523449951024.Spec : Prop :=
  ∀ n, P3609768523449951024.a n = A229363 (n + 1)

theorem P3609768523449951024.correct : P3609768523449951024.Spec := by
  intro n
  simp only [A229363, Nat.add_sub_cancel]

end A229363

/-! ## A229363.P6607238817030956951

`ceil(n/∑[n+2])*A083490(abs(1-n))`
-/

namespace A229363.P6607238817030956951
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ)⌉ * A083490 |1 - (n : ℤ)|.toNat

end

end A229363.P6607238817030956951

namespace A229363

/-- `ceil(n/∑[n+2])*A083490(abs(1-n))` -/
def P6607238817030956951.Spec : Prop :=
  ∀ n, P6607238817030956951.a n = A229363 (n + 1)

end A229363

/-! ## A229363.P17865481878231227443

`A083490(abs(1-n))-A000038(n)²`
-/

namespace A229363.P17865481878231227443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083490 |1 - (n : ℤ)|.toNat - A000038 n ^ 2

end

end A229363.P17865481878231227443

namespace A229363

/-- `A083490(abs(1-n))-A000038(n)²` -/
def P17865481878231227443.Spec : Prop :=
  ∀ n, P17865481878231227443.a n = A229363 (n + 1)

end A229363

/-! ## A229363.P14339687070531577833

`∪[A083490(n)-A000038(n), A083490(n)]`
-/

namespace A229363.P14339687070531577833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083490 n - A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083490 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A229363.P14339687070531577833

namespace A229363

/-- `∪[A083490(n)-A000038(n), A083490(n)]` -/
def P14339687070531577833.Spec : Prop :=
  ∀ n, (P14339687070531577833.a n : ℤ) = A229363 (n + 1)

end A229363

/-! ## A229363.P10056011900449046571

`A083490(abs(1-n))*A057428(n)*A057428(n)`
-/

namespace A229363.P10056011900449046571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083490 |1 - (n : ℤ)|.toNat * A057428 n * A057428 n

end

end A229363.P10056011900449046571

namespace A229363

/-- `A083490(abs(1-n))*A057428(n)*A057428(n)` -/
def P10056011900449046571.Spec : Prop :=
  ∀ n, P10056011900449046571.a n = A229363 (n + 1)

end A229363

/-! ## A229363.P11456800337540115824

`record[A083490(A008612(2*n+3))%A083490(n)]`
-/

namespace A229363.P11456800337540115824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083490 (A008612 (2 * n + 3)).toNat) (A083490 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A229363.P11456800337540115824

namespace A229363

/-- `record[A083490(A008612(2*n+3))%A083490(n)]` -/
def P11456800337540115824.Spec : Prop :=
  ∀ n, P11456800337540115824.a n = A229363 (n + 1)

end A229363

/-! ## A229363.P11283746001574017495

`∪[A083490(n)%A082541(n), A083490(n)]`
-/

namespace A229363.P11283746001574017495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083490 n) (A082541 n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083490 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A229363.P11283746001574017495

namespace A229363

/-- `∪[A083490(n)%A082541(n), A083490(n)]` -/
def P11283746001574017495.Spec : Prop :=
  ∀ n, (P11283746001574017495.a n : ℤ) = A229363 (n + 1)

end A229363

/-!
# A229364: a(1) = 1; for n > 1: a(n) = smallest odd number greater than a(n-1) which does not use any digit used by a(n-1).

The programs for A229364, the canonical program `A229364.P15380157351986657807` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A229364 has offset 1).

The definition of A229364 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A229364.P15380157351986657807

`ogf((1+3x+4x^2+4x^3+4x^4+4x^5+14x^6+30x^7+20x^8-10x^9-20x^10-20x^11-20x^12-20x^13-10x^14)/(1-x^2-10x^8+10x^10))`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A229364

/-- `ogf((1+3x+4x^2+4x^3+4x^4+4x^5+14x^6+30x^7+20x^8-10x^9-20x^10-20x^11-20x^12-20x^13-10x^14)/(1-x^2-10x^8+10x^10))` -/
def P15380157351986657807.Spec : Prop :=
  ∀ n, P15380157351986657807.a n = A229364 (n + 1)

theorem P15380157351986657807.correct : P15380157351986657807.Spec := by
  intro n
  simp only [A229364, Nat.add_sub_cancel]

end A229364

/-! ## A229364.P16122190771140791331

`eq[A133733(n+1), A287722(n+1)]`
-/

namespace A229364.P16122190771140791331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133733 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287722 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A229364.P16122190771140791331

namespace A229364

/-- `eq[A133733(n+1), A287722(n+1)]` -/
def P16122190771140791331.Spec : Prop :=
  ∀ n, (P16122190771140791331.a n : ℤ) = A229364 (n + 1)

end A229364

/-!
# A229365: Number of n X n 0..2 arrays avoiding 11 horizontally, 22 vertically and 00 antidiagonally.

The programs for A229365, there is no canonical definition to state claims against.
-/

/-! ## A229365.P580517653938974355

`A229372(∑[4*n]+1)`
-/

namespace A229365.P580517653938974355
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229372 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A229365.P580517653938974355

/-! ## A229365.P4561973022306130896

`record[gcd(A114327(n), A229372(n+1))]`
-/

namespace A229365.P4561973022306130896
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114327 n) (A229372 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A229365.P4561973022306130896

/-!
# A229366: Number of n X 2 0..2 arrays avoiding 11 horizontally, 22 vertically and 00 antidiagonally.

The programs for A229366, the canonical program `A229366.P3668101050282867944` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A229366 has offset 1).

The definition of A229366 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 147 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A229366.P3668101050282867944

`ogf((8+22x+4x^2-17x^3+4x^4)/(1-2x-13x^2-3x^3+13x^4-4x^5))`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A229366

/-- `ogf((8+22x+4x^2-17x^3+4x^4)/(1-2x-13x^2-3x^3+13x^4-4x^5))` -/
def P3668101050282867944.Spec : Prop :=
  ∀ n, P3668101050282867944.a n = A229366 (n + 1)

theorem P3668101050282867944.correct : P3668101050282867944.Spec := by
  intro n
  simp only [A229366, Nat.add_sub_cancel]

end A229366

/-! ## A229366.P14837775956005765731

`A229372(∑[n+1]+2)`
-/

namespace A229366.P14837775956005765731
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229372 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A229366.P14837775956005765731

namespace A229366

/-- `A229372(∑[n+1]+2)` -/
def P14837775956005765731.Spec : Prop :=
  ∀ n, P14837775956005765731.a n = A229366 (n + 1)

end A229366

/-! ## A229366.P5642011415269237188

`record[A229372(A133263(abs(1-n)))]`
-/

namespace A229366.P5642011415269237188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229372 (A133263 |1 - (n : ℤ)|.toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A229366.P5642011415269237188

namespace A229366

/-- `record[A229372(A133263(abs(1-n)))]` -/
def P5642011415269237188.Spec : Prop :=
  ∀ n, P5642011415269237188.a n = A229366 (n + 1)

end A229366

/-! ## A229366.P9247229693658977847

`record[A010054(n)*A229372(n+2)]`
-/

namespace A229366.P9247229693658977847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A229372 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A229366.P9247229693658977847

namespace A229366

/-- `record[A010054(n)*A229372(n+2)]` -/
def P9247229693658977847.Spec : Prop :=
  ∀ n, P9247229693658977847.a n = A229366 (n + 1)

end A229366

/-! ## A229366.P18424738299931573157

`record[gcd(A002262(n), A229372(n+2))]`
-/

namespace A229366.P18424738299931573157
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A229372 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A229366.P18424738299931573157

namespace A229366

/-- `record[gcd(A002262(n), A229372(n+2))]` -/
def P18424738299931573157.Spec : Prop :=
  ∀ n, (P18424738299931573157.a n : ℤ) = A229366 (n + 1)

end A229366

/-!
# A229367: Number of nX3 0..2 arrays avoiding 11 horizontally, 22 vertically and 00 antidiagonally.

The programs for A229367, there is no canonical definition to state claims against.
-/

/-! ## A229367.P13393724209032957411

`A229372(∑[n+2]+4)`
-/

namespace A229367.P13393724209032957411
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229372 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A229367.P13393724209032957411

/-!
# A229368: Number of nX4 0..2 arrays avoiding 11 horizontally, 22 vertically and 00 antidiagonally.

The programs for A229368, there is no canonical definition to state claims against.
-/

/-! ## A229368.P4311209420428424818

`A229372(A374004(n+1))`
-/

namespace A229368.P4311209420428424818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229372 (A374004 (n + 1)).toNat

end

end A229368.P4311209420428424818

/-! ## A229368.P17621121126080923585

`A229372(A141214(n+1))`
-/

namespace A229368.P17621121126080923585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229372 (A141214 (n + 1)).toNat

end

end A229368.P17621121126080923585

/-!
# A229369: Number of nX5 0..2 arrays avoiding 11 horizontally, 22 vertically and 00 antidiagonally.

The programs for A229369, there is no canonical definition to state claims against.
-/

/-! ## A229369.P14300232795266753607

`A229372(A374005(n+1))`
-/

namespace A229369.P14300232795266753607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229372 (A374005 (n + 1)).toNat

end

end A229369.P14300232795266753607

/-!
# A229370: Number of nX6 0..2 arrays avoiding 11 horizontally, 22 vertically and 00 antidiagonally.

The programs for A229370, there is no canonical definition to state claims against.
-/

/-! ## A229370.P17106717679059908009

`A229372(A374007(n+1))`
-/

namespace A229370.P17106717679059908009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229372 (A374007 (n + 1)).toNat

end

end A229370.P17106717679059908009

/-!
# A229371: Number of n X 7 0..2 arrays avoiding 11 horizontally, 22 vertically and 00 antidiagonally.

The programs for A229371, there is no canonical definition to state claims against.
-/

/-! ## A229371.P15713407583383660256

`A229372(A374008(n+1))`
-/

namespace A229371.P15713407583383660256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229372 (A374008 (n + 1)).toNat

end

end A229371.P15713407583383660256

/-!
# A229373: Number of n X n 0..2 arrays avoiding 11 horizontally, 22 vertically and 00 diagonally or antidiagonally.

The programs for A229373, there is no canonical definition to state claims against.
-/

/-! ## A229373.P8046918305987980850

`A229380(∑[4*n]+1)`
-/

namespace A229373.P8046918305987980850
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229380 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A229373.P8046918305987980850

/-!
# A229374: Number of n X 2 0..2 arrays avoiding 11 horizontally, 22 vertically and 00 diagonally or antidiagonally.

The programs for A229374, the canonical program `A229374.P692511944548409641` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A229374 has offset 1).

The definition of A229374 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 162 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A229374.P9524651678837323677

`ogf((-8+2x+2x^2)/(-1+4x+x^2-2x^3))`
-/

namespace A229374.P9524651678837323677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [8, -2, -2] [1, -4, -1, 2] n

end

end A229374.P9524651678837323677

namespace A229374

/-- `ogf((-8+2x+2x^2)/(-1+4x+x^2-2x^3))` -/
def P9524651678837323677.Spec : Prop :=
  ∀ n, P9524651678837323677.a n = A229374 (n + 1)

end A229374

/-! ## A229374.P692511944548409641

`4*a(n-1)+a(n-2)-2*a(n-3)` with `a(0)=8, a(1)=30, a(2)=126`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A229374

/-- `4*a(n-1)+a(n-2)-2*a(n-3)` -/
def P692511944548409641.Spec : Prop :=
  ∀ n, P692511944548409641.a n = A229374 (n + 1)

theorem P692511944548409641.correct : P692511944548409641.Spec := by
  intro n
  simp only [A229374, Nat.add_sub_cancel]

end A229374

/-! ## A229374.P11555977581232866472

`2*Δ[A301946(1+n)]`
-/

namespace A229374.P11555977581232866472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301946 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f1 (n + 1) - f1 n)

end

end A229374.P11555977581232866472

namespace A229374

/-- `2*Δ[A301946(1+n)]` -/
def P11555977581232866472.Spec : Prop :=
  ∀ n, P11555977581232866472.a n = A229374 (n + 1)

end A229374

/-! ## A229374.P3878301272894253219

`Δ[Δ[A052990(n)]]`
-/

namespace A229374.P3878301272894253219
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052990 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A229374.P3878301272894253219

namespace A229374

/-- `Δ[Δ[A052990(n)]]` -/
def P3878301272894253219.Spec : Prop :=
  ∀ n, P3878301272894253219.a n = A229374 (n + 1)

end A229374

/-! ## A229374.P468826322960509520

`A229380(∑[n+1]+2)`
-/

namespace A229374.P468826322960509520
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229380 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A229374.P468826322960509520

namespace A229374

/-- `A229380(∑[n+1]+2)` -/
def P468826322960509520.Spec : Prop :=
  ∀ n, P468826322960509520.a n = A229374 (n + 1)

end A229374

/-!
# A229375: Number of nX3 0..2 arrays avoiding 11 horizontally, 22 vertically and 00 diagonally or antidiagonally.

The programs for A229375, there is no canonical definition to state claims against.
-/

/-! ## A229375.P3678439599845304361

`A229380(∑[n+2]+4)`
-/

namespace A229375.P3678439599845304361
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229380 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A229375.P3678439599845304361

/-!
# A229376: Number of nX4 0..2 arrays avoiding 11 horizontally, 22 vertically and 00 diagonally or antidiagonally.

The programs for A229376, there is no canonical definition to state claims against.
-/

/-! ## A229376.P9301156629894906976

`A229380(A374004(n+1))`
-/

namespace A229376.P9301156629894906976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229380 (A374004 (n + 1)).toNat

end

end A229376.P9301156629894906976

/-! ## A229376.P8325054399554127619

`A229380(A141214(n+1))`
-/

namespace A229376.P8325054399554127619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229380 (A141214 (n + 1)).toNat

end

end A229376.P8325054399554127619

/-!
# A229377: Number of nX5 0..2 arrays avoiding 11 horizontally, 22 vertically and 00 diagonally or antidiagonally.

The programs for A229377, there is no canonical definition to state claims against.
-/

/-! ## A229377.P14683921058429709795

`A229380(A374005(n+1))`
-/

namespace A229377.P14683921058429709795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229380 (A374005 (n + 1)).toNat

end

end A229377.P14683921058429709795

/-!
# A229378: Number of nX6 0..2 arrays avoiding 11 horizontally, 22 vertically and 00 diagonally or antidiagonally.

The programs for A229378, there is no canonical definition to state claims against.
-/

/-! ## A229378.P5348696565964334727

`A229380(A374007(n+1))`
-/

namespace A229378.P5348696565964334727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229380 (A374007 (n + 1)).toNat

end

end A229378.P5348696565964334727

/-!
# A229379: Number of nX7 0..2 arrays avoiding 11 horizontally, 22 vertically and 00 diagonally or antidiagonally.

The programs for A229379, there is no canonical definition to state claims against.
-/

/-! ## A229379.P4740717221625616592

`A229380(A374008(n+1))`
-/

namespace A229379.P4740717221625616592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229380 (A374008 (n + 1)).toNat

end

end A229379.P4740717221625616592

/-!
# A229385: Number of n X n 0..3 arrays of the sum of the corresponding element, the element to the east and the element to the south in a larger (n+1)X(n+1) 0..1 array.

The programs for A229385, there is no canonical definition to state claims against.
-/

/-! ## A229385.P18280700044334957092

`A229392((n+1)²+n²)`
-/

namespace A229385.P18280700044334957092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229392 ((n + 1) ^ 2 + n ^ 2)

end

end A229385.P18280700044334957092

/-!
# A229386: Number of n X 2 0..3 arrays of the sum of the corresponding element, the element to the east and the element to the south in a larger (n+1) X 3 0..1 array.

The programs for A229386, the canonical program `A229386.P5442662331566907591` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A229386 has offset 1).

The definition of A229386 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 110 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A229386.P5442662331566907591

`ogf((14-40x+32x^2-16x^3)/(1-12x+36x^2-32x^3+16x^4))`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A229386

/-- `ogf((14-40x+32x^2-16x^3)/(1-12x+36x^2-32x^3+16x^4))` -/
def P5442662331566907591.Spec : Prop :=
  ∀ n, P5442662331566907591.a n = A229386 (n + 1)

theorem P5442662331566907591.correct : P5442662331566907591.Spec := by
  intro n
  simp only [A229386, Nat.add_sub_cancel]

end A229386

/-! ## A229386.P15547573497528179132

`A229392(∑[n+1]+2)`
-/

namespace A229386.P15547573497528179132
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229392 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A229386.P15547573497528179132

namespace A229386

/-- `A229392(∑[n+1]+2)` -/
def P15547573497528179132.Spec : Prop :=
  ∀ n, P15547573497528179132.a n = A229386 (n + 1)

end A229386

/-! ## A229386.P1794059108313168460

`record[A229392(A286235(n+1)+1)]`
-/

namespace A229386.P1794059108313168460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229392 (A286235 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A229386.P1794059108313168460

namespace A229386

/-- `record[A229392(A286235(n+1)+1)]` -/
def P1794059108313168460.Spec : Prop :=
  ∀ n, P1794059108313168460.a n = A229386 (n + 1)

end A229386

/-! ## A229386.P12790119455813952742

`record[A010054(n)*A229392(n+2)]`
-/

namespace A229386.P12790119455813952742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A229392 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A229386.P12790119455813952742

namespace A229386

/-- `record[A010054(n)*A229392(n+2)]` -/
def P12790119455813952742.Spec : Prop :=
  ∀ n, P12790119455813952742.a n = A229386 (n + 1)

end A229386

/-! ## A229386.P17286746503872649861

`record[A229392(Δ[A003453(n+5)])]`
-/

namespace A229386.P17286746503872649861
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229392 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A229386.P17286746503872649861

namespace A229386

/-- `record[A229392(Δ[A003453(n+5)])]` -/
def P17286746503872649861.Spec : Prop :=
  ∀ n, P17286746503872649861.a n = A229386 (n + 1)

end A229386

/-!
# A229387: Number of n X 3 0..3 arrays of the sum of the corresponding element, the element to the east and the element to the south in a larger (n+1) X 4 0..1 array.

The programs for A229387, there is no canonical definition to state claims against.
-/

/-! ## A229387.P14356113269896617995

`A229392(∑[n+2]+4)`
-/

namespace A229387.P14356113269896617995
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229392 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A229387.P14356113269896617995

/-!
# A229388: Number of nX4 0..3 arrays of the sum of the corresponding element, the element to the east and the element to the south in a larger (n+1)X5 0..1 array.

The programs for A229388, there is no canonical definition to state claims against.
-/

/-! ## A229388.P3579274577661862922

`A229392(A141214(n)+7)`
-/

namespace A229388.P3579274577661862922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229392 (A141214 n + 7).toNat

end

end A229388.P3579274577661862922

/-! ## A229388.P16426729663338598417

`A229392(A141214(n+1))`
-/

namespace A229388.P16426729663338598417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229392 (A141214 (n + 1)).toNat

end

end A229388.P16426729663338598417

/-!
# A229389: Number of nX5 0..3 arrays of the sum of the corresponding element, the element to the east and the element to the south in a larger (n+1)X6 0..1 array.

The programs for A229389, there is no canonical definition to state claims against.
-/

/-! ## A229389.P6228919983680209000

`A229392(A167499(n+3))`
-/

namespace A229389.P6228919983680209000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229392 (A167499 (n + 3)).toNat

end

end A229389.P6228919983680209000

/-! ## A229389.P3427178024325467076

`A229392(A374005(n+1))`
-/

namespace A229389.P3427178024325467076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229392 (A374005 (n + 1)).toNat

end

end A229389.P3427178024325467076

/-!
# A229390: Number of nX6 0..3 arrays of the sum of the corresponding element, the element to the east and the element to the south in a larger (n+1)X7 0..1 array.

The programs for A229390, there is no canonical definition to state claims against.
-/

/-! ## A229390.P202494753649670800

`A229392(eq[7, A131818(n+1)])`
-/

namespace A229390.P202494753649670800
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229392 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A229390.P202494753649670800

/-! ## A229390.P16088233465157363939

`A229392(A374007(n+1))`
-/

namespace A229390.P16088233465157363939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229392 (A374007 (n + 1)).toNat

end

end A229390.P16088233465157363939

/-!
# A229391: Number of nX7 0..3 arrays of the sum of the corresponding element, the element to the east and the element to the south in a larger (n+1)X8 0..1 array.

The programs for A229391, there is no canonical definition to state claims against.
-/

/-! ## A229391.P12499903194895368123

`A229392(eq[8, A131818(n+1)])`
-/

namespace A229391.P12499903194895368123
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229392 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A229391.P12499903194895368123

/-! ## A229391.P4597685539339575364

`A229392(A374008(n+1))`
-/

namespace A229391.P4597685539339575364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229392 (A374008 (n + 1)).toNat

end

end A229391.P4597685539339575364

/-!
# A229392: T(n,k)=Number of nXk 0..3 arrays of the sum of the corresponding element, the element to the east and the element to the south in a larger (n+1)X(k+1) 0..1 array.

The programs for A229392, there is no canonical definition to state claims against.
-/

/-! ## A229392.P17249303262823953763

`A324978(a(n-1)+8)` with `a(0)=4, a(1)=14, a(2)=14`
-/

namespace A229392.P17249303262823953763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4, 14, 14] fun n a =>
  A324978 (a (n - 1) + 8).toNat

end

end A229392.P17249303262823953763

/-!
# A229393: Number of shapes of balanced 8-ary trees with n nodes, where a tree is balanced if the total number of nodes in subtrees corresponding to the branches of any node differ by at most one.

The programs for A229393, there is no canonical definition to state claims against.
-/

/-! ## A229393.P12497913331682629118

`A221857(Δ[A111144(n)]+1)`
-/

namespace A229393.P12497913331682629118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111144 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221857 (f1 (n + 1) - f1 n + 1).toNat

end

end A229393.P12497913331682629118

/-!
# A229394: Number of shapes of balanced 9-ary trees with n nodes, where a tree is balanced if the total number of nodes in subtrees corresponding to the branches of any node differ by at most one.

The programs for A229394, there is no canonical definition to state claims against.
-/

/-! ## A229394.P8171801452729320430

`A221857(Δ[A111144(n+1)])`
-/

namespace A229394.P8171801452729320430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111144 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221857 (f1 (n + 1) - f1 n).toNat

end

end A229394.P8171801452729320430

/-! ## A229394.P3964773588689051212

`C(9, ∑{e}[(2*n+1)^(n-1), #])`
-/

namespace A229394.P3964773588689051212
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℚ) ^ ((n : ℤ) - 1 : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 9 (∑ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f1 n)).natAbs, Nat.factorization (SequenceMachineLib.roundAway (f1 n)).natAbs p)

end

end A229394.P3964773588689051212

/-! ## A229394.P14357630038469125987

`∏{e}[(2*n+1)^(n-1), C(9, #)]`
-/

namespace A229394.P14357630038469125987
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℚ) ^ ((n : ℤ) - 1 : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f1 n)).natAbs, Nat.choose 9 (Nat.factorization (SequenceMachineLib.roundAway (f1 n)).natAbs p)

end

end A229394.P14357630038469125987

/-!
# A229395: Number of shapes of balanced 10-ary trees with n nodes, where a tree is balanced if the total number of nodes in subtrees corresponding to the branches of any node differ by at most one.

The programs for A229395, there is no canonical definition to state claims against.
-/

/-! ## A229395.P13522116130211187243

`A221857(A055999(n+8)-5)`
-/

namespace A229395.P13522116130211187243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221857 (A055999 (n + 8) - 5).toNat

end

end A229395.P13522116130211187243

/-! ## A229395.P437394854475072652

`C(10, (n-1)%∑[n]!)`
-/

namespace A229395.P437394854475072652
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 10 (Int.tmod ((n : ℤ) - 1) (Nat.factorial (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ)).toNat

end

end A229395.P437394854475072652

/-! ## A229395.P13295270237828295319

`filter[A291057(n+2), A179081(#)]`
-/

namespace A229395.P13295270237828295319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291057 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A179081 (f1 j).toNat = 1) n)

end

end A229395.P13295270237828295319

/-! ## A229395.P11698622787185860380

`A173389(A043077(n+2))`
-/

namespace A229395.P11698622787185860380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173389 (A043077 (n + 2)).toNat

end

end A229395.P11698622787185860380

/-!
# A229396: Number of n X n 0..2 arrays with top left element 0, horizontal differences mod 3 never 1, vertical differences mod 3 never -1, and antidiagonal differences never 0.

The programs for A229396, there is no canonical definition to state claims against.
-/

/-! ## A229396.P10865151037220239913

`A229402((n+1)²+n²)`
-/

namespace A229396.P10865151037220239913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229402 ((n + 1) ^ 2 + n ^ 2)

end

end A229396.P10865151037220239913

/-! ## A229396.P15747043254778844285

`record[A003982(n)*A229402(n+1)]`
-/

namespace A229396.P15747043254778844285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A229402 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A229396.P15747043254778844285

/-! ## A229396.P12124034404156038342

`record[gcd(A112467(n), A229402(n+1))]`
-/

namespace A229396.P12124034404156038342
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A112467 n) (A229402 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A229396.P12124034404156038342

/-!
# A229397: Number of n X 3 0..2 arrays with top left element 0, horizontal differences mod 3 never 1, vertical differences mod 3 never -1, and antidiagonal differences never 0.

The programs for A229397, the canonical program `A229397.P2920910428248174037` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A229397 has offset 1).

The definition of A229397 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 183 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A229397.P14182238728147112400

`ogf((4-7x+3x^2-x^3)/(1-5x+6x^2-3x^3+x^4))`
-/

namespace A229397.P14182238728147112400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, -7, 3, -1] [1, -5, 6, -3, 1] n

end

end A229397.P14182238728147112400

namespace A229397

/-- `ogf((4-7x+3x^2-x^3)/(1-5x+6x^2-3x^3+x^4))` -/
def P14182238728147112400.Spec : Prop :=
  ∀ n, P14182238728147112400.a n = A229397 (n + 1)

end A229397

/-! ## A229397.P2920910428248174037

`5*a(n-1)-6*a(n-2)+3*a(n-3)-a(n-4)` with `a(0)=4, a(1)=13, a(2)=44, a(3)=153`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A229397

/-- `5*a(n-1)-6*a(n-2)+3*a(n-3)-a(n-4)` -/
def P2920910428248174037.Spec : Prop :=
  ∀ n, P2920910428248174037.a n = A229397 (n + 1)

theorem P2920910428248174037.correct : P2920910428248174037.Spec := by
  intro n
  simp only [A229397, Nat.add_sub_cancel]

end A229397

/-! ## A229397.P14865035139404295022

`A229402(∑[n+2]+4)`
-/

namespace A229397.P14865035139404295022
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229402 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A229397.P14865035139404295022

namespace A229397

/-- `A229402(∑[n+2]+4)` -/
def P14865035139404295022.Spec : Prop :=
  ∀ n, P14865035139404295022.a n = A229397 (n + 1)

end A229397

/-!
# A229398: Number of n X 4 0..2 arrays with top left element 0, horizontal differences mod 3 never 1, vertical differences mod 3 never -1, and antidiagonal differences never 0.

The programs for A229398, the canonical program `A229398.P13551381251264419652` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A229398 has offset 1).

The definition of A229398 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 146 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A229398.P13551381251264419652

`ogf((8-38x+71x^2-90x^3+84x^4-50x^5+17x^6-2x^7)/(1-9x+28x^2-47x^3+55x^4-47x^5+28x^6-9x^7+x^8))`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A229398

/-- `ogf((8-38x+71x^2-90x^3+84x^4-50x^5+17x^6-2x^7)/(1-9x+28x^2-47x^3+55x^4-47x^5+28x^6-9x^7+x^8))` -/
def P13551381251264419652.Spec : Prop :=
  ∀ n, P13551381251264419652.a n = A229398 (n + 1)

theorem P13551381251264419652.correct : P13551381251264419652.Spec := by
  intro n
  simp only [A229398, Nat.add_sub_cancel]

end A229398

/-! ## A229398.P4016001296779570568

`A229402(A374004(n+1))`
-/

namespace A229398.P4016001296779570568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229402 (A374004 (n + 1)).toNat

end

end A229398.P4016001296779570568

namespace A229398

/-- `A229402(A374004(n+1))` -/
def P4016001296779570568.Spec : Prop :=
  ∀ n, P4016001296779570568.a n = A229398 (n + 1)

end A229398

/-!
# A229399: Number of n X 5 0..2 arrays with top left element 0, horizontal differences mod 3 never 1, vertical differences mod 3 never -1, and antidiagonal differences never 0.

The programs for A229399, there is no canonical definition to state claims against.
-/

/-! ## A229399.P12143832140303604066

`A229402(A374005(n+1))`
-/

namespace A229399.P12143832140303604066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229402 (A374005 (n + 1)).toNat

end

end A229399.P12143832140303604066

