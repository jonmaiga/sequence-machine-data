import SequenceMachineLib
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
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C035
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
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C001
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

/-!
# A229300: Numbers n such that A031971(1806*n) == n (mod 1806*n).

The programs for A229300, there is no canonical definition to state claims against.
-/

/-! ## A229300.P4349253645886407395

`comp[A229304(n+1)-1]+1`
-/

namespace A229300.P4349253645886407395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229304 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A229300.P4349253645886407395

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

/-! ## A229300.P15052879288208800470

`∪[A229301(n+1), A008019(n)]`
-/

namespace A229300.P15052879288208800470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229301 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008019 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A229300.P15052879288208800470

/-! ## A229300.P8947702926165607689

`∪[A229301(n+1), A008388(n)]`
-/

namespace A229300.P8947702926165607689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229301 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008388 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A229300.P8947702926165607689

/-! ## A229300.P1507218060001552430

`∪[A229301(n+1), A009905(n)]`
-/

namespace A229300.P1507218060001552430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229301 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009905 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A229300.P1507218060001552430

/-! ## A229300.P6771636315183758108

`∪[A229301(n+1), A017101(n)]`
-/

namespace A229300.P6771636315183758108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229301 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017101 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A229300.P6771636315183758108

/-! ## A229300.P150495816734329492

`∪[A229301(n+1), A017305(n)]`
-/

namespace A229300.P150495816734329492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229301 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017305 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A229300.P150495816734329492

/-!
# A229301: Numbers n such that A031971(42*n) == n (mod 42*n).

The programs for A229301, there is no canonical definition to state claims against.
-/

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

/-! ## A229301.P8952251828329962634

`A229300(comp[A000124(∑[n+8])]+1)`
-/

namespace A229301.P8952251828329962634
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 8

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (∑ j ∈ Finset.range (n + 1), f2 j)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229300 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1)

end

end A229301.P8952251828329962634

/-! ## A229301.P10915310606315403028

`A229300(comp[A002407(2*n+3)]+1)`
-/

namespace A229301.P10915310606315403028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002407 (2 * n + 3)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229300 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1)

end

end A229301.P10915310606315403028

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

/-! ## A229301.P18007409775787301691

`A229300(A258068(n+2))`
-/

namespace A229301.P18007409775787301691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229300 (A258068 (n + 2)).toNat

end

end A229301.P18007409775787301691

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

The programs for A229302, the canonical program `A229302.P15980075922969714648` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A229302 has offset 1).

The definition of A229302 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 533 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A229302.P15980075922969714648

`eq[2, A226957(6*(n+1))]+1`

The canonical program, it is in `Seq.B014.C000`.
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

/-! ## A229302.P7747760909213884488

`record[gcd(A008611(n), A182398(n+1))]`
-/

namespace A229302.P7747760909213884488
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008611 n) (A182398 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A229302.P7747760909213884488

namespace A229302

/-- `record[gcd(A008611(n), A182398(n+1))]` -/
def P7747760909213884488.Spec : Prop :=
  ∀ n, (P7747760909213884488.a n : ℤ) = A229302 (n + 1)

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

/-!
# A229303: Numbers m such that A031971(2*m) == m (mod 2*m).

The programs for A229303, the canonical program `A229303.P11807489810384231319` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A229303 has offset 1).

The definition of A229303 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A229303.P11807489810384231319

`A226872(n+2)/2`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A229303

/-- `A226872(n+2)/2` -/
def P11807489810384231319.Spec : Prop :=
  ∀ n, P11807489810384231319.a n = (A229303 (n + 1) : ℚ)

end A229303

/-! ## A229303.P3309240566061008948

`record[gcd(n+1, A182398(n+1))]`
-/

namespace A229303.P3309240566061008948
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A182398 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A229303.P3309240566061008948

namespace A229303

/-- `record[gcd(n+1, A182398(n+1))]` -/
def P3309240566061008948.Spec : Prop :=
  ∀ n, (P3309240566061008948.a n : ℤ) = A229303 (n + 1)

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

/-! ## A229303.P3283177984433008377

`eq[2, A225821(2*(n+1))]+1`
-/

namespace A229303.P3283177984433008377
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225821 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A229303.P3283177984433008377

namespace A229303

/-- `eq[2, A225821(2*(n+1))]+1` -/
def P3283177984433008377.Spec : Prop :=
  ∀ n, (P3283177984433008377.a n : ℤ) = A229303 (n + 1)

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

/-! ## A229303.P18257856556241797208

`A226957(2*n+1)+lt[A226957(2*(n+1)), 2]`
-/

namespace A229303.P18257856556241797208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226957 (2 * (n + 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226957 (2 * n + 1) + (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n : ℤ)

end

end A229303.P18257856556241797208

namespace A229303

/-- `A226957(2*n+1)+lt[A226957(2*(n+1)), 2]` -/
def P18257856556241797208.Spec : Prop :=
  ∀ n, P18257856556241797208.a n = A229303 (n + 1)

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

/-! ## A229304.P1929252287555084203

`A229305(comp[26-A229305(n+1)])`
-/

namespace A229304.P1929252287555084203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  26 - A229305 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229305 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A229304.P1929252287555084203

/-! ## A229304.P216725879208591521

`∩[A229305(n+1), A304434(n+1)]`
-/

namespace A229304.P216725879208591521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229305 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304434 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A229304.P216725879208591521

/-! ## A229304.P3833335260741035484

`∩[A062973(n+1), A229305(n+1)]`
-/

namespace A229304.P3833335260741035484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062973 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229305 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A229304.P3833335260741035484

/-! ## A229304.P12240819507580554651

`∩[A062974(n+1), A229305(n+1)]`
-/

namespace A229304.P12240819507580554651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062974 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229305 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A229304.P12240819507580554651

/-! ## A229304.P1010185167747940858

`∩[A080257(n+1), A229305(n+1)]`
-/

namespace A229304.P1010185167747940858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080257 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229305 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A229304.P1010185167747940858

/-!
# A229305: Numbers n such that A031971(42*n) <> n (mod 42*n).

The programs for A229305, there is no canonical definition to state claims against.
-/

/-! ## A229305.P2977913220519121417

`comp[A229301(n+1)-1]+1`
-/

namespace A229305.P2977913220519121417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229301 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A229305.P2977913220519121417

/-! ## A229305.P16008527174886057055

`comp[A023443(A229301(n+1))]+1`
-/

namespace A229305.P16008527174886057055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A229301 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A229305.P16008527174886057055

/-! ## A229305.P11665385061624779421

`A153152(comp[A229301(n+1)-1])`
-/

namespace A229305.P11665385061624779421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229301 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A229305.P11665385061624779421

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

The programs for A229306, the canonical program `A229306.P18317607824200291430` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A229306 has offset 1).

The definition of A229306 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 165 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A229306.P18317607824200291430

`lt[2, A226957(6*(n+1))]+1`

The canonical program, it is in `Seq.B014.C000`.
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

The programs for A229307, there is no canonical definition to state claims against.
-/

/-! ## A229307.P3899562926339052865

`A228870(n+1)/2`
-/

namespace A229307.P3899562926339052865
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A228870 (n + 1) : ℚ) / 2

end

end A229307.P3899562926339052865

/-! ## A229307.P13873873928044688479

`A000217(A228870(n+1)-1)%A228870(n+1)`
-/

namespace A229307.P13873873928044688479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000217 (A228870 (n + 1) - 1).toNat) (A228870 (n + 1))

end

end A229307.P13873873928044688479

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

/-! ## A229307.P3842395389747421472

`A003602(A228870(n+1)-1)`
-/

namespace A229307.P3842395389747421472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (A228870 (n + 1) - 1).toNat

end

end A229307.P3842395389747421472

/-! ## A229307.P16737837579432634034

`A003602(lt[1, A226957(n+1)])`
-/

namespace A229307.P16737837579432634034
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226957 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A229307.P16737837579432634034

/-! ## A229307.P6317818698806726655

`A001281(A228870(n+1))`
-/

namespace A229307.P6317818698806726655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A228870 (n + 1)).toNat

end

end A229307.P6317818698806726655

/-! ## A229307.P15649402311839762291

`A000217(9*A228870(n+1))%A228870(n+1)`
-/

namespace A229307.P15649402311839762291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000217 (9 * A228870 (n + 1)).toNat) (A228870 (n + 1))

end

end A229307.P15649402311839762291

/-!
# A229308: Primitive numbers in A229304.

The programs for A229308, there is no canonical definition to state claims against.
-/

/-! ## A229308.P17296452800745125763

`∩[A229309(n+1), A229304(A230313(n+1))]`
-/

namespace A229308.P17296452800745125763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229309 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229304 (A230313 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A229308.P17296452800745125763

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

/-! ## A229308.P4760454194806117091

`∩[A229309(n+1), A339438(n+1)]`
-/

namespace A229308.P4760454194806117091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229309 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339438 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A229308.P4760454194806117091

/-!
# A229311: Primitive numbers in A229307.

The programs for A229311, there is no canonical definition to state claims against.
-/

/-! ## A229311.P12511428955699010962

`A280187(n+1)/2`
-/

namespace A229311.P12511428955699010962
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A280187 (n + 1) : ℚ) / 2

end

end A229311.P12511428955699010962

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

/-! ## A229311.P17052683405654260634

`A000217(floor(sqrt(A280187(n+1))))`
-/

namespace A229311.P17052683405654260634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (Int.sqrt (A280187 (n + 1))).toNat

end

end A229311.P17052683405654260634

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

/-! ## A229311.P9309497620574362324

`A000217(round(sqrt(A280187(n+1))))`
-/

namespace A229311.P9309497620574362324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (SequenceMachineLib.roundAway (Real.sqrt (A280187 (n + 1) : ℝ))).toNat

end

end A229311.P9309497620574362324

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

/-! ## A229311.P3491668992504902308

`A000217(p?[A226872(n+2)+1]-1)`
-/

namespace A229311.P3491668992504902308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226872 (n + 2) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 1).toNat

end

end A229311.P3491668992504902308

/-! ## A229311.P4197949203005314824

`log2(sqrt(2))*A014963(6*(n+1))*A280187(n+1)`
-/

namespace A229311.P4197949203005314824
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Real.sqrt (2 : ℝ)) * (A014963 (6 * (n + 1)) : ℝ) * (A280187 (n + 1) : ℝ)

end

end A229311.P4197949203005314824

/-!
# A229312: Numbers n such that A031971(47058*n) == n (mod 47058*n).

The programs for A229312, there is no canonical definition to state claims against.
-/

/-! ## A229312.P4820786730129673699

`∩[A358848(n+1), A063213(n+2)]`
-/

namespace A229312.P4820786730129673699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358848 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063213 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A229312.P4820786730129673699

/-! ## A229312.P15711104027870415899

`∩[A358848(n+1), A063241(n+2)]`
-/

namespace A229312.P15711104027870415899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358848 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063241 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A229312.P15711104027870415899

/-! ## A229312.P11255880723535587054

`or(1, comp[4*n]+n)*A083945(A035133(n+1))`
-/

namespace A229312.P11255880723535587054
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 1 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + n) : ℤ) * A083945 (A035133 (n + 1)).toNat

end

end A229312.P11255880723535587054

/-! ## A229312.P16137900597118235143

`A017329(comp[A128758(n+1)-A004253(n+1)])`
-/

namespace A229312.P16137900597118235143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128758 (n + 1) - A004253 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017329 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A229312.P16137900597118235143

/-! ## A229312.P380593506989074854

`A110551(A006038(n+1))*A162699(n+1)`
-/

namespace A229312.P380593506989074854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110551 (A006038 (n + 1)).toNat * A162699 (n + 1)

end

end A229312.P380593506989074854

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

The programs for A229314, the canonical program `A229314.P11497750345104596552` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A229314 has offset 1).

The definition of A229314 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 182 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A229314.P11497750345104596552

`3*a(n-1)+2*a(n-2)-a(n-3)+2*a(n-4)` with `a(0)=4, a(1)=14, a(2)=50, a(3)=176`

The canonical program, it is in `Seq.B000.C027`.
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

/-! ## A229314.P11183558103216837922

`lcm(2, A229320(A000124(n)))`
-/

namespace A229314.P11183558103216837922
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A229320 (A000124 n).toNat)

end

end A229314.P11183558103216837922

namespace A229314

/-- `lcm(2, A229320(A000124(n)))` -/
def P11183558103216837922.Spec : Prop :=
  ∀ n, (P11183558103216837922.a n : ℤ) = A229314 (n + 1)

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

/-! ## A229316.P7194442940271240081

`lcm(2, A229320(A167614(n+1)))`
-/

namespace A229316.P7194442940271240081
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A229320 (A167614 (n + 1)).toNat)

end

end A229316.P7194442940271240081

/-! ## A229316.P4751116264840419998

`A229320(A167614(n+1))+A025443(n)`
-/

namespace A229316.P4751116264840419998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229320 (A167614 (n + 1)).toNat + A025443 n

end

end A229316.P4751116264840419998

/-! ## A229316.P6164167313835303600

`A229320(A167614(n+1))+A033483(n)`
-/

namespace A229316.P6164167313835303600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229320 (A167614 (n + 1)).toNat + A033483 n

end

end A229316.P6164167313835303600

/-! ## A229316.P5879316440174878338

`A229320(A167614(n+1))+A085860(n)`
-/

namespace A229316.P5879316440174878338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229320 (A167614 (n + 1)).toNat + A085860 n

end

end A229316.P5879316440174878338

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

/-! ## A229317.P8988780062499581642

`A308069(n+1)+A229320(A374004(n+1))`
-/

namespace A229317.P8988780062499581642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308069 (n + 1) + A229320 (A374004 (n + 1)).toNat

end

end A229317.P8988780062499581642

/-! ## A229317.P9816516383518938135

`A229320(A055998(n+2))*A295260(n+1)`
-/

namespace A229317.P9816516383518938135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229320 (A055998 (n + 2)).toNat * A295260 (n + 1)

end

end A229317.P9816516383518938135

/-! ## A229317.P12072624776916789230

`A229320(A055998(n+2))+A146076(2*n+5)`
-/

namespace A229317.P12072624776916789230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229320 (A055998 (n + 2)).toNat + A146076 (2 * n + 5)

end

end A229317.P12072624776916789230

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

/-! ## A229318.P13250788916596791937

`A000034(A319387(n))*A229320(A056000(n)+15)`
-/

namespace A229318.P13250788916596791937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A319387 n).toNat * A229320 (A056000 n + 15).toNat

end

end A229318.P13250788916596791937

/-! ## A229318.P131910668695778912

`A000034(A229320(n+1))*A229320(A056000(n)+15)`
-/

namespace A229318.P131910668695778912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A229320 (n + 1)).toNat * A229320 (A056000 n + 15).toNat

end

end A229318.P131910668695778912

/-!
# A229319: Number of nX6 0..3 arrays of the median of the corresponding element, the element to the east and the element to the south in a larger (n+1)X7 0..3 array without adjacent equal elements in the latter.

The programs for A229319, there is no canonical definition to state claims against.
-/

/-! ## A229319.P17827872122675388457

`A229320(A374007(n+1))`
-/

namespace A229319.P17827872122675388457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229320 (A374007 (n + 1)).toNat

end

end A229319.P17827872122675388457

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

/-! ## A229321.P17810870948083492001

`A136358(n+1)+A048793(A230216(2*(n+2)))`
-/

namespace A229321.P17810870948083492001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136358 (n + 1) + A048793 (A230216 (2 * (n + 2))).toNat

end

end A229321.P17810870948083492001

/-!
# A229324: Composite squarefree numbers n such that p + tau(n) divides n - phi(n), where p are the prime factors of n, tau(n) = A000005(n) and phi(n) = A000010(n).

The programs for A229324, the canonical program `A229324.P5724625720212629655` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A229324 has offset 1).

The definition of A229324 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 500 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A229324.P5724625720212629655

`5*p?[9*(n+1)+5]`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A229324

/-- `5*p?[9*(n+1)+5]` -/
def P5724625720212629655.Spec : Prop :=
  ∀ n, (P5724625720212629655.a n : ℤ) = A229324 (n + 1)

theorem P5724625720212629655.correct : P5724625720212629655.Spec := by
  intro n
  simp only [A229324, Nat.add_sub_cancel]

end A229324

/-! ## A229324.P6896929447496448972

`5*A061240(n+2)`
-/

namespace A229324.P6896929447496448972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A061240 (n + 2)

end

end A229324.P6896929447496448972

namespace A229324

/-- `5*A061240(n+2)` -/
def P6896929447496448972.Spec : Prop :=
  ∀ n, P6896929447496448972.a n = A229324 (n + 1)

end A229324

/-! ## A229324.P16139559684457095115

`lcm(5, p?[A017221(n+1)])`
-/

namespace A229324.P16139559684457095115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017221 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 5 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A229324.P16139559684457095115

namespace A229324

/-- `lcm(5, p?[A017221(n+1)])` -/
def P16139559684457095115.Spec : Prop :=
  ∀ n, (P16139559684457095115.a n : ℤ) = A229324 (n + 1)

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

/-! ## A229324.P17511084554808154766

`lcm(A061240(n+1)%6, A061240(n+2))`
-/

namespace A229324.P17511084554808154766
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (Int.tmod (A061240 (n + 1)) 6) (A061240 (n + 2))

end

end A229324.P17511084554808154766

namespace A229324

/-- `lcm(A061240(n+1)%6, A061240(n+2))` -/
def P17511084554808154766.Spec : Prop :=
  ∀ n, (P17511084554808154766.a n : ℤ) = A229324 (n + 1)

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

/-! ## A229324.P488424848527799619

`A008587(p?[A017221(n+1)])`
-/

namespace A229324.P488424848527799619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017221 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008587 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A229324.P488424848527799619

namespace A229324

/-- `A008587(p?[A017221(n+1)])` -/
def P488424848527799619.Spec : Prop :=
  ∀ n, P488424848527799619.a n = A229324 (n + 1)

end A229324

/-! ## A229324.P15050276213983543329

`A120063(p?[A061240(n+2)])`
-/

namespace A229324.P15050276213983543329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061240 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120063 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A229324.P15050276213983543329

namespace A229324

/-- `A120063(p?[A061240(n+2)])` -/
def P15050276213983543329.Spec : Prop :=
  ∀ n, P15050276213983543329.a n = A229324 (n + 1)

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

/-! ## A229325.P3236507659409747357

`A054977(n)*A213191(A046691(n+2))`
-/

namespace A229325.P3236507659409747357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n * A213191 (A046691 (n + 2)).toNat

end

end A229325.P3236507659409747357

/-! ## A229325.P1088255025631525085

`A213191(A046691(n+2))%A024038(n)`
-/

namespace A229325.P1088255025631525085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A213191 (A046691 (n + 2)).toNat) (A024038 n)

end

end A229325.P1088255025631525085

/-! ## A229325.P3152833402640135531

`lcm(A153881(n+1), A213191(A046691(n+2)))`
-/

namespace A229325.P3152833402640135531
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A153881 (n + 1)) (A213191 (A046691 (n + 2)).toNat)

end

end A229325.P3152833402640135531

/-!
# A229326: Total sum of 4th powers of parts in all partitions of n.

The programs for A229326, there is no canonical definition to state claims against.
-/

/-! ## A229326.P13005768379655937404

`A213191(A052905(n+2))`
-/

namespace A229326.P13005768379655937404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213191 (A052905 (n + 2)).toNat

end

end A229326.P13005768379655937404

/-! ## A229326.P7641014220983384445

`A213191(eq[4, A025581(n)])`
-/

namespace A229326.P7641014220983384445
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213191 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A229326.P7641014220983384445

/-! ## A229326.P13127401374516946887

`A213191(A000217(n+5)-5)`
-/

namespace A229326.P13127401374516946887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213191 (A000217 (n + 5) - 5).toNat

end

end A229326.P13127401374516946887

/-! ## A229326.P4870885441868493973

`A213191(Δ[A023545(n+1)]-1)`
-/

namespace A229326.P4870885441868493973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213191 (f1 (n + 1) - f1 n - 1).toNat

end

end A229326.P4870885441868493973

/-! ## A229326.P8829730078297579255

`A213191(4*(n+1)+A167499(n))`
-/

namespace A229326.P8829730078297579255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213191 ((4 * (n + 1) : ℤ) + A167499 n).toNat

end

end A229326.P8829730078297579255

/-! ## A229326.P1171859924518347281

`A213191(A016897(n+1)+A000124(n))`
-/

namespace A229326.P1171859924518347281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213191 (A016897 (n + 1) + A000124 n).toNat

end

end A229326.P1171859924518347281

/-!
# A229327: Total sum of 5th powers of parts in all partitions of n.

The programs for A229327, there is no canonical definition to state claims against.
-/

/-! ## A229327.P16147243233837111949

`A213191(A055999(n+3))`
-/

namespace A229327.P16147243233837111949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213191 (A055999 (n + 3)).toNat

end

end A229327.P16147243233837111949

/-! ## A229327.P17048449809225307880

`A213191(A000217(n+6)-6)`
-/

namespace A229327.P17048449809225307880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213191 (A000217 (n + 6) - 6).toNat

end

end A229327.P17048449809225307880

/-! ## A229327.P4929132910595902761

`A213191(eq[5, val(A036561(n), 2)])`
-/

namespace A229327.P4929132910595902761
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A036561 n).toNat 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213191 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A229327.P4929132910595902761

/-! ## A229327.P3834699722753740955

`A213191(Δ[A023545(n+2)]-2)`
-/

namespace A229327.P3834699722753740955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213191 (f1 (n + 1) - f1 n - 2).toNat

end

end A229327.P3834699722753740955

/-! ## A229327.P1755352364763994047

`A213191(A167499(n+3)+2*n)`
-/

namespace A229327.P1755352364763994047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213191 (A167499 (n + 3) + (2 * n : ℤ)).toNat

end

end A229327.P1755352364763994047

/-! ## A229327.P12526842401889056532

`A213191(A016777(n+3)+A000096(n+2))`
-/

namespace A229327.P12526842401889056532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213191 (A016777 (n + 3) + A000096 (n + 2)).toNat

end

end A229327.P12526842401889056532

/-! ## A229327.P3350475275797804524

`A213191(A004275(n+4)+A000096(n+3))`
-/

namespace A229327.P3350475275797804524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213191 (A004275 (n + 4) + A000096 (n + 3)).toNat

end

end A229327.P3350475275797804524

/-!
# A229328: Total sum of 6th powers of parts in all partitions of n.

The programs for A229328, there is no canonical definition to state claims against.
-/

/-! ## A229328.P13502454257184157075

`A213191(C(n+7, 2)+n)`
-/

namespace A229328.P13502454257184157075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213191 (Nat.choose (n + 7) 2 + n)

end

end A229328.P13502454257184157075

/-! ## A229328.P14786600767407796880

`A213191(A055999(n+4)-1)`
-/

namespace A229328.P14786600767407796880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213191 (A055999 (n + 4) - 1).toNat

end

end A229328.P14786600767407796880

/-! ## A229328.P9538913828241154286

`A213191(A000217(n+7)-7)`
-/

namespace A229328.P9538913828241154286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213191 (A000217 (n + 7) - 7).toNat

end

end A229328.P9538913828241154286

/-! ## A229328.P13906590719654316276

`A213191(A000124(n+7)-8)`
-/

namespace A229328.P13906590719654316276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213191 (A000124 (n + 7) - 8).toNat

end

end A229328.P13906590719654316276

/-! ## A229328.P17218199262887905551

`A213191(eq[7, A004736(n+1)])`
-/

namespace A229328.P17218199262887905551
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213191 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A229328.P17218199262887905551

/-! ## A229328.P8988326796592195985

`A213191(4*(n+4)+A000096(n+2))`
-/

namespace A229328.P8988326796592195985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213191 ((4 * (n + 4) : ℤ) + A000096 (n + 2)).toNat

end

end A229328.P8988326796592195985

/-! ## A229328.P18243960808604694808

`A213191(A017053(n+2)+A000124(n))`
-/

namespace A229328.P18243960808604694808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213191 (A017053 (n + 2) + A000124 n).toNat

end

end A229328.P18243960808604694808

/-!
# A229329: Total sum of 7th powers of parts in all partitions of n.

The programs for A229329, there is no canonical definition to state claims against.
-/

/-! ## A229329.P14487467166034920732

`A213191(A155212(n+4))`
-/

namespace A229329.P14487467166034920732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213191 (A155212 (n + 4)).toNat

end

end A229329.P14487467166034920732

/-! ## A229329.P16766019435164410193

`A213191(A000217(n+8)-8)`
-/

namespace A229329.P16766019435164410193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213191 (A000217 (n + 8) - 8).toNat

end

end A229329.P16766019435164410193

/-! ## A229329.P3166692380215457827

`A213191(eq[7, val(A036561(n), 2)])`
-/

namespace A229329.P3166692380215457827
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A036561 n).toNat 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213191 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A229329.P3166692380215457827

/-! ## A229329.P13051093774643475920

`A213191(A000096(n+6)+n+1)`
-/

namespace A229329.P13051093774643475920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213191 (A000096 (n + 6) + (n + 1 : ℤ)).toNat

end

end A229329.P13051093774643475920

/-! ## A229329.P10477342699903391678

`A213191(A005563(n+5)-A000124(n+3))`
-/

namespace A229329.P10477342699903391678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213191 (A005563 (n + 5) - A000124 (n + 3)).toNat

end

end A229329.P10477342699903391678

/-!
# A229330: Total sum of 8th powers of parts in all partitions of n.

The programs for A229330, there is no canonical definition to state claims against.
-/

/-! ## A229330.P13131865385941916734

`A213191(A000217(n+9)-9)`
-/

namespace A229330.P13131865385941916734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213191 (A000217 (n + 9) - 9).toNat

end

end A229330.P13131865385941916734

/-! ## A229330.P3615901697381631422

`A213191(n+1+A000096(n+7))`
-/

namespace A229330.P3615901697381631422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213191 ((n + 1 : ℤ) + A000096 (n + 7)).toNat

end

end A229330.P3615901697381631422

/-! ## A229330.P7088240603307475740

`A213191(A175631(n+10)+n+1)`
-/

namespace A229330.P7088240603307475740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213191 (A175631 (n + 10) + (n + 1 : ℤ)).toNat

end

end A229330.P7088240603307475740

/-! ## A229330.P13919048264982590884

`A213191((n+7)²-A167614(n+3))`
-/

namespace A229330.P13919048264982590884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213191 (((n + 7) ^ 2 : ℤ) - A167614 (n + 3)).toNat

end

end A229330.P13919048264982590884

/-! ## A229330.P9909674611892532234

`A213191(A167614(n+16)-A008590(n+15))`
-/

namespace A229330.P9909674611892532234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213191 (A167614 (n + 16) - A008590 (n + 15)).toNat

end

end A229330.P9909674611892532234

/-!
# A229331: Total sum of 9th powers of parts in all partitions of n.

The programs for A229331, there is no canonical definition to state claims against.
-/

/-! ## A229331.P8695050498470447332

`A213191(A056000(n+6))`
-/

namespace A229331.P8695050498470447332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213191 (A056000 (n + 6)).toNat

end

end A229331.P8695050498470447332

/-! ## A229331.P5026909760377334972

`A213191(A046691(n+8)-6)`
-/

namespace A229331.P5026909760377334972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213191 (A046691 (n + 8) - 6).toNat

end

end A229331.P5026909760377334972

/-! ## A229331.P975518551918452515

`A213191(A055998(n+8)-7)`
-/

namespace A229331.P975518551918452515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213191 (A055998 (n + 8) - 7).toNat

end

end A229331.P975518551918452515

/-! ## A229331.P2021706272315093273

`A213191(A000217(n+10)-10)`
-/

namespace A229331.P2021706272315093273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213191 (A000217 (n + 10) - 10).toNat

end

end A229331.P2021706272315093273

/-! ## A229331.P10384460654149274933

`A213191(n+1+A000096(n+8))`
-/

namespace A229331.P10384460654149274933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213191 ((n + 1 : ℤ) + A000096 (n + 8)).toNat

end

end A229331.P10384460654149274933

/-! ## A229331.P15146126251102739078

`A213191(A016897(n+5)+A000124(n+5))`
-/

namespace A229331.P15146126251102739078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213191 (A016897 (n + 5) + A000124 (n + 5)).toNat

end

end A229331.P15146126251102739078

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

/-! ## A229332.P6409550235376393007

`A213191(eq[12, A116598(n)])`
-/

namespace A229332.P6409550235376393007
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116598 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213191 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A229332.P6409550235376393007

/-! ## A229332.P4040333639510301561

`A213191(A000217(n+11)-11)`
-/

namespace A229332.P4040333639510301561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213191 (A000217 (n + 11) - 11).toNat

end

end A229332.P4040333639510301561

/-! ## A229332.P15757572694047263996

`A213191(eq[11, A004736(n+1)])`
-/

namespace A229332.P15757572694047263996
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213191 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A229332.P15757572694047263996

/-! ## A229332.P12729978232387864887

`A213191(A008590(n+6)+A000124(n+3))`
-/

namespace A229332.P12729978232387864887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213191 (A008590 (n + 6) + A000124 (n + 3)).toNat

end

end A229332.P12729978232387864887

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

The programs for A229335, the canonical program `A229335.P16993302265292166254` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A229335 has offset 1).

The definition of A229335 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A100587, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
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

/-! ## A229335.P16993302265292166254

`A000203(n+1)*(A100587(n+1)+1)/2`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A229335

/-- `A000203(n+1)*(A100587(n+1)+1)/2` -/
def P16993302265292166254.Spec : Prop :=
  ∀ n, P16993302265292166254.a n = (A229335 (n + 1) : ℚ)

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

The programs for A229337, the canonical program `A229337.P13277258750618214647` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A229337 has offset 1).

The definition of A229337 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A020696, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A229337.P13277258750618214647

`A020696(n+1)-1`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A229337

/-- `A020696(n+1)-1` -/
def P13277258750618214647.Spec : Prop :=
  ∀ n, P13277258750618214647.a n = A229337 (n + 1)

theorem P13277258750618214647.correct : P13277258750618214647.Spec := by
  intro n
  simp only [A229337, Nat.add_sub_cancel]

end A229337

/-! ## A229337.P8855638353096606972

`∏{d}[n+1, #+1]-1`
-/

namespace A229337.P8855638353096606972
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ d ∈ Nat.divisors (f1 n), (d + 1) : ℕ) : ℤ) - 1

end

end A229337.P8855638353096606972

namespace A229337

/-- `∏{d}[n+1, #+1]-1` -/
def P8855638353096606972.Spec : Prop :=
  ∀ n, P8855638353096606972.a n = A229337 (n + 1)

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

/-! ## A229337.P6972993492039316172

`A321800(A010784(n+1))+A020696(n+1)`
-/

namespace A229337.P6972993492039316172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321800 (A010784 (n + 1)).toNat + A020696 (n + 1)

end

end A229337.P6972993492039316172

namespace A229337

/-- `A321800(A010784(n+1))+A020696(n+1)` -/
def P6972993492039316172.Spec : Prop :=
  ∀ n, P6972993492039316172.a n = A229337 (n + 1)

end A229337

/-! ## A229337.P7908810960554919877

`A321800(A276766(n))+A020696(n+1)`
-/

namespace A229337.P7908810960554919877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321800 (A276766 n).toNat + A020696 (n + 1)

end

end A229337.P7908810960554919877

namespace A229337

/-- `A321800(A276766(n))+A020696(n+1)` -/
def P7908810960554919877.Spec : Prop :=
  ∀ n, P7908810960554919877.a n = A229337 (n + 1)

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

/-! ## A229338.P6367674772856784312

`(n+1)^A000010(A000010(A000005(n+1)^3))`
-/

namespace A229338.P6367674772856784312
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A000010 (A000010 (A000005 (n + 1) ^ 3).toNat).toNat : ℤ)

end

end A229338.P6367674772856784312

/-!
# A229339: GCD of all sums of n consecutive Lucas numbers.

The programs for A229339, the canonical program `A229339.P17445840520596043980` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A229339 has offset 1).

The definition of A229339 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 480 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A229339.P17445840520596043980

`gcd(3-A061084(n), ∑[A061084(n)])`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A229339

/-- `gcd(3-A061084(n), ∑[A061084(n)])` -/
def P17445840520596043980.Spec : Prop :=
  ∀ n, (P17445840520596043980.a n : ℤ) = A229339 (n + 1)

theorem P17445840520596043980.correct : P17445840520596043980.Spec := by
  intro n
  simp only [A229339, Nat.add_sub_cancel]

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

The programs for A229340, the canonical program `A229340.P17722889321809029525` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A229340 has offset 1).

The definition of A229340 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A229340.P17722889321809029525

`∑{e}[A006530(n+1), A000010(A003415((n+1)/#))]`

The canonical program, it is in `Seq.B008.C001`.
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

The programs for A229341, the canonical program `A229341.P12246436327909898701` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A229341 has offset 2).

The definition of A229341 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A003415, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A229341.P12246436327909898701

`A000005(A003415(n+2))`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A229341

/-- `A000005(A003415(n+2))` -/
def P12246436327909898701.Spec : Prop :=
  ∀ n, P12246436327909898701.a n = A229341 (n + 2)

theorem P12246436327909898701.correct : P12246436327909898701.Spec := by
  intro n
  simp only [A229341, Nat.add_sub_cancel]

end A229341

/-! ## A229341.P4349884042021340408

`A000005(∑[A258057(n+1)])`
-/

namespace A229341.P4349884042021340408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258057 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A229341.P4349884042021340408

namespace A229341

/-- `A000005(∑[A258057(n+1)])` -/
def P4349884042021340408.Spec : Prop :=
  ∀ n, P4349884042021340408.a n = A229341 (n + 2)

end A229341

/-! ## A229341.P1769753783816508396

`∏{e}[A003415(2*n+2-n), #+1]`
-/

namespace A229341.P1769753783816508396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 ((2 * n : ℤ) + (2 - (n : ℤ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1)

end

end A229341.P1769753783816508396

namespace A229341

/-- `∏{e}[A003415(2*n+2-n), #+1]` -/
def P1769753783816508396.Spec : Prop :=
  ∀ n, (P1769753783816508396.a n : ℤ) = A229341 (n + 2)

end A229341

/-! ## A229341.P17171837409737097310

`A000005(Δ[A190121(n+1)])`
-/

namespace A229341.P17171837409737097310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190121 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (f1 (n + 1) - f1 n).toNat

end

end A229341.P17171837409737097310

namespace A229341

/-- `A000005(Δ[A190121(n+1)])` -/
def P17171837409737097310.Spec : Prop :=
  ∀ n, P17171837409737097310.a n = A229341 (n + 2)

end A229341

/-! ## A229341.P3871452065300995912

`A000005(A129283(n+2)-(n+2))`
-/

namespace A229341.P3871452065300995912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A129283 (n + 2) - (n + 2 : ℤ)).toNat

end

end A229341.P3871452065300995912

namespace A229341

/-- `A000005(A129283(n+2)-(n+2))` -/
def P3871452065300995912.Spec : Prop :=
  ∀ n, P3871452065300995912.a n = A229341 (n + 2)

end A229341

/-! ## A229341.P5984351173696542614

`A000005(A190116(n+2)/(n+2))`
-/

namespace A229341.P5984351173696542614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((A190116 (n + 2) : ℚ) / (n + 2 : ℚ))).toNat

end

end A229341.P5984351173696542614

namespace A229341

/-- `A000005(A190116(n+2)/(n+2))` -/
def P5984351173696542614.Spec : Prop :=
  ∀ n, P5984351173696542614.a n = A229341 (n + 2)

end A229341

/-! ## A229341.P13705213597620514818

`A000005(A211991(n+2)+A001065(n+2))`
-/

namespace A229341.P13705213597620514818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A211991 (n + 2) + A001065 (n + 2)).toNat

end

end A229341.P13705213597620514818

namespace A229341

/-- `A000005(A211991(n+2)+A001065(n+2))` -/
def P13705213597620514818.Spec : Prop :=
  ∀ n, P13705213597620514818.a n = A229341 (n + 2)

end A229341

/-! ## A229341.P5458642767511490571

`A000005(A319703(2*(n+2)))`
-/

namespace A229341.P5458642767511490571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A319703 (2 * (n + 2))).toNat

end

end A229341.P5458642767511490571

namespace A229341

/-- `A000005(A319703(2*(n+2)))` -/
def P5458642767511490571.Spec : Prop :=
  ∀ n, P5458642767511490571.a n = A229341 (n + 2)

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

/-! ## A229341.P5191951846085653846

`A320111(A003415(n+2)+A003415(n+2))`
-/

namespace A229341.P5191951846085653846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320111 (A003415 (n + 2) + A003415 (n + 2)).toNat

end

end A229341.P5191951846085653846

namespace A229341

/-- `A320111(A003415(n+2)+A003415(n+2))` -/
def P5191951846085653846.Spec : Prop :=
  ∀ n, P5191951846085653846.a n = A229341 (n + 2)

end A229341

/-! ## A229341.P11260175372231381669

`A320111(A389906(A319703(A389906(n+2))))`
-/

namespace A229341.P11260175372231381669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320111 (A389906 (A319703 (A389906 (n + 2)).toNat).toNat).toNat

end

end A229341.P11260175372231381669

namespace A229341

/-- `A320111(A389906(A319703(A389906(n+2))))` -/
def P11260175372231381669.Spec : Prop :=
  ∀ n, P11260175372231381669.a n = A229341 (n + 2)

end A229341

/-!
# A229342: a(n) = sigma(n'), the sum of divisors of the arithmetic derivative of n.

The programs for A229342, the canonical program `A229342.P3262806412783250556` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A229342 has offset 2).

The definition of A229342 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A229342.P3262806412783250556

`A000203(A003415(n+2))`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A229342

/-- `A000203(A003415(n+2))` -/
def P3262806412783250556.Spec : Prop :=
  ∀ n, P3262806412783250556.a n = A229342 (n + 2)

theorem P3262806412783250556.correct : P3262806412783250556.Spec := by
  intro n
  simp only [A229342, Nat.add_sub_cancel]

end A229342

/-! ## A229342.P11640985864300035354

`∑{d}[∑[A258057(n+1)], #]`
-/

namespace A229342.P11640985864300035354
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258057 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A229342.P11640985864300035354

namespace A229342

/-- `∑{d}[∑[A258057(n+1)], #]` -/
def P11640985864300035354.Spec : Prop :=
  ∀ n, (P11640985864300035354.a n : ℤ) = A229342 (n + 2)

end A229342

/-! ## A229342.P875296756308780574

`A000203(∑[A258057(n+1)])`
-/

namespace A229342.P875296756308780574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258057 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A229342.P875296756308780574

namespace A229342

/-- `A000203(∑[A258057(n+1)])` -/
def P875296756308780574.Spec : Prop :=
  ∀ n, P875296756308780574.a n = A229342 (n + 2)

end A229342

/-! ## A229342.P11395013327853674218

`A000203(A300252(n+2)+A300251(n+2))`
-/

namespace A229342.P11395013327853674218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A300252 (n + 2) + A300251 (n + 2)).toNat

end

end A229342.P11395013327853674218

namespace A229342

/-- `A000203(A300252(n+2)+A300251(n+2))` -/
def P11395013327853674218.Spec : Prop :=
  ∀ n, P11395013327853674218.a n = A229342 (n + 2)

end A229342

/-! ## A229342.P10212649005579283260

`A000203(A000203(n+2)-A343224(n+2))`
-/

namespace A229342.P10212649005579283260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A000203 (n + 2) - A343224 (n + 2)).toNat

end

end A229342.P10212649005579283260

namespace A229342

/-- `A000203(A000203(n+2)-A343224(n+2))` -/
def P10212649005579283260.Spec : Prop :=
  ∀ n, P10212649005579283260.a n = A229342 (n + 2)

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

/-! ## A229342.P833797343075516792

`A000203(Δ[A190121(n+1)])`
-/

namespace A229342.P833797343075516792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190121 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (f1 (n + 1) - f1 n).toNat

end

end A229342.P833797343075516792

namespace A229342

/-- `A000203(Δ[A190121(n+1)])` -/
def P833797343075516792.Spec : Prop :=
  ∀ n, P833797343075516792.a n = A229342 (n + 2)

end A229342

/-! ## A229342.P5071159735961316187

`A000203(A168036(n+2)+n+2)`
-/

namespace A229342.P5071159735961316187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A168036 (n + 2) + (n + 2 : ℤ)).toNat

end

end A229342.P5071159735961316187

namespace A229342

/-- `A000203(A168036(n+2)+n+2)` -/
def P5071159735961316187.Spec : Prop :=
  ∀ n, P5071159735961316187.a n = A229342 (n + 2)

end A229342

/-! ## A229342.P18361349731791407098

`A000203(A129283(n+2)-(n+2))`
-/

namespace A229342.P18361349731791407098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A129283 (n + 2) - (n + 2 : ℤ)).toNat

end

end A229342.P18361349731791407098

namespace A229342

/-- `A000203(A129283(n+2)-(n+2))` -/
def P18361349731791407098.Spec : Prop :=
  ∀ n, P18361349731791407098.a n = A229342 (n + 2)

end A229342

/-! ## A229342.P6423069096158833058

`A000203(A190116(n+2)/(n+2))`
-/

namespace A229342.P6423069096158833058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.roundAway ((A190116 (n + 2) : ℚ) / (n + 2 : ℚ))).toNat

end

end A229342.P6423069096158833058

namespace A229342

/-- `A000203(A190116(n+2)/(n+2))` -/
def P6423069096158833058.Spec : Prop :=
  ∀ n, P6423069096158833058.a n = A229342 (n + 2)

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

/-! ## A229342.P9692789638662401879

`A000203(A003961(n+2)-A348937(n+2))`
-/

namespace A229342.P9692789638662401879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A003961 (n + 2) - A348937 (n + 2)).toNat

end

end A229342.P9692789638662401879

namespace A229342

/-- `A000203(A003961(n+2)-A348937(n+2))` -/
def P9692789638662401879.Spec : Prop :=
  ∀ n, P9692789638662401879.a n = A229342 (n + 2)

end A229342

/-! ## A229342.P11615209829371452475

`A000203(A319703(2*(n+2)))`
-/

namespace A229342.P11615209829371452475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A319703 (2 * (n + 2))).toNat

end

end A229342.P11615209829371452475

namespace A229342

/-- `A000203(A319703(2*(n+2)))` -/
def P11615209829371452475.Spec : Prop :=
  ∀ n, P11615209829371452475.a n = A229342 (n + 2)

end A229342

/-! ## A229342.P9031131764582535013

`A000203(A348497((n+2)²)/(n+2))`
-/

namespace A229342.P9031131764582535013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.roundAway ((A348497 ((n + 2) ^ 2) : ℚ) / (n + 2 : ℚ))).toNat

end

end A229342.P9031131764582535013

namespace A229342

/-- `A000203(A348497((n+2)²)/(n+2))` -/
def P9031131764582535013.Spec : Prop :=
  ∀ n, P9031131764582535013.a n = A229342 (n + 2)

end A229342

/-!
# A229343: Moebius function of the arithmetic derivative of n: a(n) = mu(n').

The programs for A229343, the canonical program `A229343.P14743053429634653820` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A229343 has offset 2).

The definition of A229343 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, A008683, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A229343.P14743053429634653820

`A008683(A003415(n+2))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A229343

/-- `A008683(A003415(n+2))` -/
def P14743053429634653820.Spec : Prop :=
  ∀ n, P14743053429634653820.a n = A229343 (n + 2)

theorem P14743053429634653820.correct : P14743053429634653820.Spec := by
  intro n
  simp only [A229343, Nat.add_sub_cancel]

end A229343

/-! ## A229343.P7815288569315181690

`A008683(∑[A258057(n+1)])`
-/

namespace A229343.P7815288569315181690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258057 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A229343.P7815288569315181690

namespace A229343

/-- `A008683(∑[A258057(n+1)])` -/
def P7815288569315181690.Spec : Prop :=
  ∀ n, P7815288569315181690.a n = A229343 (n + 2)

end A229343

/-! ## A229343.P13763062301758485661

`A008683(∑{d}[n+2, A300251(#)])`
-/

namespace A229343.P13763062301758485661
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (∑ d ∈ Nat.divisors (f1 n), A300251 d).toNat

end

end A229343.P13763062301758485661

namespace A229343

/-- `A008683(∑{d}[n+2, A300251(#)])` -/
def P13763062301758485661.Spec : Prop :=
  ∀ n, P13763062301758485661.a n = A229343 (n + 2)

end A229343

/-! ## A229343.P5425075969109366588

`A008683(Δ[A190121(n+1)])`
-/

namespace A229343.P5425075969109366588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190121 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (f1 (n + 1) - f1 n).toNat

end

end A229343.P5425075969109366588

namespace A229343

/-- `A008683(Δ[A190121(n+1)])` -/
def P5425075969109366588.Spec : Prop :=
  ∀ n, P5425075969109366588.a n = A229343 (n + 2)

end A229343

/-! ## A229343.P9203932869282345846

`A008683(A129283(n+2)-(n+2))`
-/

namespace A229343.P9203932869282345846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A129283 (n + 2) - (n + 2 : ℤ)).toNat

end

end A229343.P9203932869282345846

namespace A229343

/-- `A008683(A129283(n+2)-(n+2))` -/
def P9203932869282345846.Spec : Prop :=
  ∀ n, P9203932869282345846.a n = A229343 (n + 2)

end A229343

/-!
# A229344: Mertens's function of the arithmetic derivative of n: a(n) = M(n'), a(1) = 0.

The programs for A229344, the canonical program `A229344.P6312581941137850236` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A229344 has offset 1).

The definition of A229344 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2047 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A229344.P6312581941137850236

`A002321(abs(A003415(n+1)-1)+1)`

The canonical program, it is in `Seq.B006.C001`.
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

The programs for A229347, the canonical program `A229347.P15433898513579831732` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A229347 has offset 1).

The definition of A229347 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A229347.P4298301304526301073

`lcm(2, A298473(n+1))/2`
-/

namespace A229347.P4298301304526301073
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A298473 (n + 1)) : ℚ) / 2

end

end A229347.P4298301304526301073

namespace A229347

/-- `lcm(2, A298473(n+1))/2` -/
def P4298301304526301073.Spec : Prop :=
  ∀ n, P4298301304526301073.a n = (A229347 (n + 1) : ℚ)

end A229347

/-! ## A229347.P9579716270682943455

`(n+1)*A007875(n+1)`
-/

namespace A229347.P9579716270682943455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A007875 (n + 1)

end

end A229347.P9579716270682943455

namespace A229347

/-- `(n+1)*A007875(n+1)` -/
def P9579716270682943455.Spec : Prop :=
  ∀ n, P9579716270682943455.a n = A229347 (n + 1)

end A229347

/-! ## A229347.P1100678135558843957

`(n+1)*2^A297155(n+1)`
-/

namespace A229347.P1100678135558843957
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * (2 : ℚ) ^ (A297155 (n + 1) : ℤ)

end

end A229347.P1100678135558843957

namespace A229347

/-- `(n+1)*2^A297155(n+1)` -/
def P1100678135558843957.Spec : Prop :=
  ∀ n, P1100678135558843957.a n = (A229347 (n + 1) : ℚ)

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

/-! ## A229347.P21469255480571072

`(n+1)*a(A034444(n+1)/2-1)` with `a(0)=1`
-/

namespace A229347.P21469255480571072
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (n + 1) * a (SequenceMachineLib.roundAway ((A034444 (n + 1) : ℚ) / 2 - 1)).toNat

end

end A229347.P21469255480571072

namespace A229347

/-- `(n+1)*a(A034444(n+1)/2-1)` -/
def P21469255480571072.Spec : Prop :=
  ∀ n, (P21469255480571072.a n : ℤ) = A229347 (n + 1)

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

The canonical program, it is in `Seq.B002.C004`.
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

/-! ## A229347.P120118327567954681

`(n+1)*A347115(A074816(n+1))`
-/

namespace A229347.P120118327567954681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A347115 (A074816 (n + 1)).toNat

end

end A229347.P120118327567954681

namespace A229347

/-- `(n+1)*A347115(A074816(n+1))` -/
def P120118327567954681.Spec : Prop :=
  ∀ n, P120118327567954681.a n = A229347 (n + 1)

end A229347

/-! ## A229347.P17237729336153868445

`(n+1)*A351944(A329607(n+1))`
-/

namespace A229347.P17237729336153868445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A351944 (A329607 (n + 1)).toNat

end

end A229347.P17237729336153868445

namespace A229347

/-- `(n+1)*A351944(A329607(n+1))` -/
def P17237729336153868445.Spec : Prop :=
  ∀ n, P17237729336153868445.a n = A229347 (n + 1)

end A229347

/-! ## A229347.P6872592542793839889

`(n+1)*A011782(∑{p}[n+1, A001222(#)])`
-/

namespace A229347.P6872592542793839889
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A011782 (∑ p ∈ Nat.primeFactors (f1 n), A001222 p).toNat

end

end A229347.P6872592542793839889

namespace A229347

/-- `(n+1)*A011782(∑{p}[n+1, A001222(#)])` -/
def P6872592542793839889.Spec : Prop :=
  ∀ n, P6872592542793839889.a n = A229347 (n + 1)

end A229347

/-! ## A229347.P2271702704965007303

`∑{d}[n+1, A053822(#)*A067692((n+1)/#)]`
-/

namespace A229347.P2271702704965007303
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A053822 d * A067692 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A229347.P2271702704965007303

namespace A229347

/-- `∑{d}[n+1, A053822(#)*A067692((n+1)/#)]` -/
def P2271702704965007303.Spec : Prop :=
  ∀ n, P2271702704965007303.a n = A229347 (n + 1)

end A229347

/-! ## A229347.P5242334319011339316

`∑{d}[n+1, A000010(#)*A318674((n+1)/#)]`
-/

namespace A229347.P5242334319011339316
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d * A318674 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A229347.P5242334319011339316

namespace A229347

/-- `∑{d}[n+1, A000010(#)*A318674((n+1)/#)]` -/
def P5242334319011339316.Spec : Prop :=
  ∀ n, P5242334319011339316.a n = A229347 (n + 1)

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

/-! ## A229349.P7967512809216345280

`∑[A262626(A239426(n))]`
-/

namespace A229349.P7967512809216345280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262626 (A239426 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A229349.P7967512809216345280

/-!
# A229351: Numerators of the ordinary convergents of continued fraction [2/1, 3/2, 4/3, 5/4,...].

The programs for A229351, there is no canonical definition to state claims against.
-/

/-! ## A229351.P659932844815757004

`A176889(∑[16*n]+1)*A229353(n)`
-/

namespace A229351.P659932844815757004
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176889 (∑ j ∈ Finset.range (n + 1), f1 j + 1) * A229353 (n + 1)

end

end A229351.P659932844815757004

/-! ## A229351.P6551266591063198029

`A229353(n)+A000007(A141214(n))`
-/

namespace A229351.P6551266591063198029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229353 (n + 1) + A000007 (A141214 n).toNat

end

end A229351.P6551266591063198029

/-! ## A229351.P5292138660910992795

`A229353(n)+A124764(A059268(n))`
-/

namespace A229351.P5292138660910992795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229353 (n + 1) + A124764 (A059268 n).toNat

end

end A229351.P5292138660910992795

/-! ## A229351.P16315268979395672685

`A229353(n)+A000007(A298805(n))`
-/

namespace A229351.P16315268979395672685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229353 (n + 1) + A000007 (A298805 n).toNat

end

end A229351.P16315268979395672685

/-!
# A229352: Denominators of the ordinary convergents of continued fraction [2/1,3/2,4/3,5/4,...].

The programs for A229352, there is no canonical definition to state claims against.
-/

/-! ## A229352.P15391299875623725886

`A229873(A247496(n))+A151984(n+1)`
-/

namespace A229352.P15391299875623725886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229873 (A247496 n).toNat + A151984 (n + 1)

end

end A229352.P15391299875623725886

/-!
# A229354: Total sum of n-th powers of parts in all partitions of 3.

The programs for A229354, the canonical program `A229354.P18225024868484811947` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A229354 has offset 0).

The definition of A229354 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A229354.P18225024868484811947

`4+2^n+3^n`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A229354

/-- `4+2^n+3^n` -/
def P18225024868484811947.Spec : Prop :=
  ∀ n, (P18225024868484811947.a n : ℤ) = A229354 n

theorem P18225024868484811947.correct : P18225024868484811947.Spec := by
  intro n
  simp only [A229354]

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

/-! ## A229354.P14035740290549071513

`abs(Δ[A099754(n)]+4)`
-/

namespace A229354.P14035740290549071513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099754 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n + 4|

end

end A229354.P14035740290549071513

namespace A229354

/-- `abs(Δ[A099754(n)]+4)` -/
def P14035740290549071513.Spec : Prop :=
  ∀ n, P14035740290549071513.a n = A229354 n

end A229354

/-! ## A229354.P14188987543933341834

`or(A001550(n)+3, char[1])`
-/

namespace A229354.P14188987543933341834
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001550 n + 3) ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A229354.P14188987543933341834

namespace A229354

/-- `or(A001550(n)+3, char[1])` -/
def P14188987543933341834.Spec : Prop :=
  ∀ n, P14188987543933341834.a n = A229354 n

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

The programs for A229355, the canonical program `A229355.P13194659041670685549` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A229355 has offset 0).

The definition of A229355 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A229355.P13194659041670685549

`7+3*2^n+3^n+4^n`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A229355

/-- `7+3*2^n+3^n+4^n` -/
def P13194659041670685549.Spec : Prop :=
  ∀ n, (P13194659041670685549.a n : ℤ) = A229355 n

theorem P13194659041670685549.correct : P13194659041670685549.Spec := by
  intro n
  simp only [A229355]

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

/-! ## A229355.P5944905320446818159

`A213191(A000124(n+4)+3)`
-/

namespace A229355.P5944905320446818159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213191 (A000124 (n + 4) + 3).toNat

end

end A229355.P5944905320446818159

namespace A229355

/-- `A213191(A000124(n+4)+3)` -/
def P5944905320446818159.Spec : Prop :=
  ∀ n, P5944905320446818159.a n = A229355 n

end A229355

/-! ## A229355.P4715262072711477402

`A213191(eq[5, A002260(n+1)])`
-/

namespace A229355.P4715262072711477402
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213191 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A229355.P4715262072711477402

namespace A229355

/-- `A213191(eq[5, A002260(n+1)])` -/
def P4715262072711477402.Spec : Prop :=
  ∀ n, P4715262072711477402.a n = A229355 n

end A229355

/-! ## A229355.P7620720466543334094

`A213191(eq[6, A245093(n+1)])`
-/

namespace A229355.P7620720466543334094
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245093 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213191 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A229355.P7620720466543334094

namespace A229355

/-- `A213191(eq[6, A245093(n+1)])` -/
def P7620720466543334094.Spec : Prop :=
  ∀ n, P7620720466543334094.a n = A229355 n

end A229355

/-! ## A229355.P15097701887670765399

`A213191(A000217(n+5)-(n+1))`
-/

namespace A229355.P15097701887670765399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213191 (A000217 (n + 5) - (n + 1 : ℤ)).toNat

end

end A229355.P15097701887670765399

namespace A229355

/-- `A213191(A000217(n+5)-(n+1))` -/
def P15097701887670765399.Spec : Prop :=
  ∀ n, P15097701887670765399.a n = A229355 n

end A229355

/-! ## A229355.P1081292410506520767

`A213191(A161680(n+6)-(n+1))`
-/

namespace A229355.P1081292410506520767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213191 (A161680 (n + 6) - (n + 1 : ℤ)).toNat

end

end A229355.P1081292410506520767

namespace A229355

/-- `A213191(A161680(n+6)-(n+1))` -/
def P1081292410506520767.Spec : Prop :=
  ∀ n, P1081292410506520767.a n = A229355 n

end A229355

/-! ## A229355.P5977044527077009170

`A213191(A000096(n+5)-4-2*(n+1))`
-/

namespace A229355.P5977044527077009170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213191 (A000096 (n + 5) - 4 - (2 * (n + 1) : ℤ)).toNat

end

end A229355.P5977044527077009170

namespace A229355

/-- `A213191(A000096(n+5)-4-2*(n+1))` -/
def P5977044527077009170.Spec : Prop :=
  ∀ n, P5977044527077009170.a n = A229355 n

end A229355

/-!
# A229356: Total sum of n-th powers of parts in all partitions of 5.

The programs for A229356, the canonical program `A229356.P15382494703564254203` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A229356 has offset 0).

The definition of A229356 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A229356.P15382494703564254203

`12+4*2^n+2*3^n+4^n+5^n`

The canonical program, it is in `Seq.B000.C027`.
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

/-! ## A229356.P18022016640966808034

`A213191(A167614(n+4)+2)`
-/

namespace A229356.P18022016640966808034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213191 (A167614 (n + 4) + 2).toNat

end

end A229356.P18022016640966808034

namespace A229356

/-- `A213191(A167614(n+4)+2)` -/
def P18022016640966808034.Spec : Prop :=
  ∀ n, P18022016640966808034.a n = A229356 n

end A229356

/-! ## A229356.P852172971485034555

`A213191(A000124(n+5)+4)`
-/

namespace A229356.P852172971485034555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213191 (A000124 (n + 5) + 4).toNat

end

end A229356.P852172971485034555

namespace A229356

/-- `A213191(A000124(n+5)+4)` -/
def P852172971485034555.Spec : Prop :=
  ∀ n, P852172971485034555.a n = A229356 n

end A229356

/-! ## A229356.P9369510013860847772

`A213191(A000217(n+5)+5)`
-/

namespace A229356.P9369510013860847772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213191 (A000217 (n + 5) + 5).toNat

end

end A229356.P9369510013860847772

namespace A229356

/-- `A213191(A000217(n+5)+5)` -/
def P9369510013860847772.Spec : Prop :=
  ∀ n, P9369510013860847772.a n = A229356 n

end A229356

/-! ## A229356.P4803882674515141575

`A213191(A034856(n+5)-(n-1))`
-/

namespace A229356.P4803882674515141575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213191 (A034856 (n + 5) - ((n : ℤ) - 1)).toNat

end

end A229356.P4803882674515141575

namespace A229356

/-- `A213191(A034856(n+5)-(n-1))` -/
def P4803882674515141575.Spec : Prop :=
  ∀ n, P4803882674515141575.a n = A229356 n

end A229356

/-!
# A229357: Total sum of n-th powers of parts in all partitions of 6.

The programs for A229357, the canonical program `A229357.P2301415006490489591` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A229357 has offset 0).

The definition of A229357 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A229357.P2301415006490489591

`19+8*2^n+4*3^n+2*4^n+5^n+6^n`

The canonical program, it is in `Seq.B000.C027`.
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

/-! ## A229357.P2684091898910815353

`A213191(A000124(n+6)+5)`
-/

namespace A229357.P2684091898910815353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213191 (A000124 (n + 6) + 5).toNat

end

end A229357.P2684091898910815353

namespace A229357

/-- `A213191(A000124(n+6)+5)` -/
def P2684091898910815353.Spec : Prop :=
  ∀ n, P2684091898910815353.a n = A229357 n

end A229357

/-! ## A229357.P7636921660376389940

`A213191(A000096(n+5)+7)`
-/

namespace A229357.P7636921660376389940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213191 (A000096 (n + 5) + 7).toNat

end

end A229357.P7636921660376389940

namespace A229357

/-- `A213191(A000096(n+5)+7)` -/
def P7636921660376389940.Spec : Prop :=
  ∀ n, P7636921660376389940.a n = A229357 n

end A229357

/-! ## A229357.P693592863763178735

`A213191(eq[7, A002260(n+1)])`
-/

namespace A229357.P693592863763178735
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213191 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A229357.P693592863763178735

namespace A229357

/-- `A213191(eq[7, A002260(n+1)])` -/
def P693592863763178735.Spec : Prop :=
  ∀ n, P693592863763178735.a n = A229357 n

end A229357

/-! ## A229357.P1978038229999010662

`A213191(A005408(n+8)+A000217(n+4))`
-/

namespace A229357.P1978038229999010662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213191 (A005408 (n + 8) + A000217 (n + 4)).toNat

end

end A229357.P1978038229999010662

namespace A229357

/-- `A213191(A005408(n+8)+A000217(n+4))` -/
def P1978038229999010662.Spec : Prop :=
  ∀ n, P1978038229999010662.a n = A229357 n

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

/-! ## A229358.P18202911364156592741

`A213191(A167499(n+6)+2)`
-/

namespace A229358.P18202911364156592741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213191 (A167499 (n + 6) + 2).toNat

end

end A229358.P18202911364156592741

/-! ## A229358.P4414554952237447437

`A213191(A167614(n+6)+4)`
-/

namespace A229358.P4414554952237447437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213191 (A167614 (n + 6) + 4).toNat

end

end A229358.P4414554952237447437

/-! ## A229358.P9204930377725256765

`A213191(A000096(n+6)+8)`
-/

namespace A229358.P9204930377725256765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213191 (A000096 (n + 6) + 8).toNat

end

end A229358.P9204930377725256765

/-! ## A229358.P17565367522020899664

`A213191(A175631(n+9)+8)`
-/

namespace A229358.P17565367522020899664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213191 (A175631 (n + 9) + 8).toNat

end

end A229358.P17565367522020899664

/-! ## A229358.P16559645210480921687

`A213191(A017053(n+4)+A000124(n))`
-/

namespace A229358.P16559645210480921687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213191 (A017053 (n + 4) + A000124 n).toNat

end

end A229358.P16559645210480921687

/-! ## A229358.P154091725760637250

`A213191(A000217(n+9)-A005843(n+5))`
-/

namespace A229358.P154091725760637250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213191 (A000217 (n + 9) - A005843 (n + 5)).toNat

end

end A229358.P154091725760637250

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

/-! ## A229359.P6065681323924817193

`A213191(A167614(n+7)+5)`
-/

namespace A229359.P6065681323924817193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213191 (A167614 (n + 7) + 5).toNat

end

end A229359.P6065681323924817193

/-! ## A229359.P4728939840362992515

`A213191(A000096(n+7)+9)`
-/

namespace A229359.P4728939840362992515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213191 (A000096 (n + 7) + 9).toNat

end

end A229359.P4728939840362992515

/-! ## A229359.P6962916285529915112

`A213191(A000217(n+8)+8)`
-/

namespace A229359.P6962916285529915112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213191 (A000217 (n + 8) + 8).toNat

end

end A229359.P6962916285529915112

/-! ## A229359.P16254979331763209846

`A213191(A056000(n+6)-(2*n+1))`
-/

namespace A229359.P16254979331763209846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213191 (A056000 (n + 6) - (2 * n + 1 : ℤ)).toNat

end

end A229359.P16254979331763209846

/-!
# A229360: Total sum of n-th powers of parts in all partitions of 9.

The programs for A229360, there is no canonical definition to state claims against.
-/

/-! ## A229360.P3277640114463718983

`A213191(A167499(n+8)+4)`
-/

namespace A229360.P3277640114463718983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213191 (A167499 (n + 8) + 4).toNat

end

end A229360.P3277640114463718983

/-! ## A229360.P8799829342270439177

`A213191(A000124(n+9)+8)`
-/

namespace A229360.P8799829342270439177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213191 (A000124 (n + 9) + 8).toNat

end

end A229360.P8799829342270439177

/-! ## A229360.P1386597041668565339

`A213191(A000096(n+8)+10)`
-/

namespace A229360.P1386597041668565339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213191 (A000096 (n + 8) + 10).toNat

end

end A229360.P1386597041668565339

/-! ## A229360.P8970758862456396492

`A213191(A000217(n+9)+9)`
-/

namespace A229360.P8970758862456396492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213191 (A000217 (n + 9) + 9).toNat

end

end A229360.P8970758862456396492

/-! ## A229360.P17267012409214438979

`A213191(A046691(n+7)+13)`
-/

namespace A229360.P17267012409214438979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213191 (A046691 (n + 7) + 13).toNat

end

end A229360.P17267012409214438979

/-! ## A229360.P16117631026160681851

`A213191(A167614(n+9)-(n+4))`
-/

namespace A229360.P16117631026160681851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213191 (A167614 (n + 9) - (n + 4 : ℤ)).toNat

end

end A229360.P16117631026160681851

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

/-! ## A229361.P11907748430988372305

`A213191(A167614(n+9)+7)`
-/

namespace A229361.P11907748430988372305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213191 (A167614 (n + 9) + 7).toNat

end

end A229361.P11907748430988372305

/-! ## A229361.P16642330822532430246

`A213191(A000217(n+11)-(n+1))`
-/

namespace A229361.P16642330822532430246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213191 (A000217 (n + 11) - (n + 1 : ℤ)).toNat

end

end A229361.P16642330822532430246

/-! ## A229361.P13677314581636880704

`A213191(A000124(n+11)-(n+2))`
-/

namespace A229361.P13677314581636880704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213191 (A000124 (n + 11) - (n + 2 : ℤ)).toNat

end

end A229361.P13677314581636880704

/-! ## A229361.P3397277203344571805

`A213191(A016897(n+9)+A000124(n+5))`
-/

namespace A229361.P3397277203344571805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213191 (A016897 (n + 9) + A000124 (n + 5)).toNat

end

end A229361.P3397277203344571805

/-!
# A229363: a(1) = 0; for n > 1: a(n) = smallest even number greater than a(n-1) which does not use any digit used by a(n-1).

The programs for A229363, there is no canonical definition to state claims against.
-/

/-! ## A229363.P6217262055681556170

`A057427(n)*A083490(abs(1-n))`
-/

namespace A229363.P6217262055681556170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A083490 |1 - (n : ℤ)|.toNat

end

end A229363.P6217262055681556170

/-! ## A229363.P17865481878231227443

`A083490(abs(1-n))-A000038(n)²`
-/

namespace A229363.P17865481878231227443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083490 |1 - (n : ℤ)|.toNat - A000038 n ^ 2

end

end A229363.P17865481878231227443

/-! ## A229363.P1443840828879198588

`and(1, A000040(n+1))*A083490(abs(1-n))`
-/

namespace A229363.P1443840828879198588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A000040 (n + 1)) * A083490 |1 - (n : ℤ)|.toNat

end

end A229363.P1443840828879198588

/-! ## A229363.P12283229740851439588

`A001221(A062383(n))*A083490(abs(1-n))`
-/

namespace A229363.P12283229740851439588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A062383 n).toNat * A083490 |1 - (n : ℤ)|.toNat

end

end A229363.P12283229740851439588

/-! ## A229363.P5548295467382603387

`lt[A007015(n+1), A000005(A306985(n+1))]`
-/

namespace A229363.P5548295467382603387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007015 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A306985 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A229363.P5548295467382603387

/-!
# A229364: a(1) = 1; for n > 1: a(n) = smallest odd number greater than a(n-1) which does not use any digit used by a(n-1).

The programs for A229364, there is no canonical definition to state claims against.
-/

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

/-! ## A229364.P15938336791608334510

`eq[A004247(A240862(n)), A027656(n)]`
-/

namespace A229364.P15938336791608334510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004247 (A240862 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027656 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A229364.P15938336791608334510

/-! ## A229364.P4687440952348679942

`eq[A010166(n), A103451(A240862(n))]`
-/

namespace A229364.P4687440952348679942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010166 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103451 (A240862 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A229364.P4687440952348679942

/-! ## A229364.P7369908673554344221

`eq[A000035(n), A157636(A240862(n))]`
-/

namespace A229364.P7369908673554344221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157636 (A240862 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A229364.P7369908673554344221

/-! ## A229364.P10380994552795898718

`eq[A103451(A240862(n)), A134451(n)]`
-/

namespace A229364.P10380994552795898718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103451 (A240862 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134451 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A229364.P10380994552795898718

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

/-! ## A229365.P5473997702283636323

`A229372(A001844(n))+A025443(n)`
-/

namespace A229365.P5473997702283636323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229372 (A001844 n).toNat + A025443 n

end

end A229365.P5473997702283636323

/-! ## A229365.P2111201645481079772

`or(A000038(n), A229372(A001844(n)))`
-/

namespace A229365.P2111201645481079772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000038 n) (A229372 (A001844 n).toNat)

end

end A229365.P2111201645481079772

/-! ## A229365.P7105685007036908302

`or(1, A000035(n))*A229372(A001844(n))`
-/

namespace A229365.P7105685007036908302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A000035 n) * A229372 (A001844 n).toNat

end

end A229365.P7105685007036908302

/-!
# A229366: Number of n X 2 0..2 arrays avoiding 11 horizontally, 22 vertically and 00 antidiagonally.

The programs for A229366, there is no canonical definition to state claims against.
-/

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

/-! ## A229366.P7621714840655952984

`A166486(2*n+1)*A229372(A000096(n+1))`
-/

namespace A229366.P7621714840655952984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166486 (2 * n + 1) * A229372 (A000096 (n + 1)).toNat

end

end A229366.P7621714840655952984

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

/-! ## A229367.P2181583360886292183

`A229372(A167614(n+1))+A025466(n)`
-/

namespace A229367.P2181583360886292183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229372 (A167614 (n + 1)).toNat + A025466 n

end

end A229367.P2181583360886292183

/-! ## A229367.P14556107182524398667

`A229372(A167614(n+1))+A025469(n)`
-/

namespace A229367.P14556107182524398667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229372 (A167614 (n + 1)).toNat + A025469 n

end

end A229367.P14556107182524398667

/-! ## A229367.P9235215714308028724

`lcm(A033999(n), A229372(A167614(n+1)))`
-/

namespace A229367.P9235215714308028724
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A229372 (A167614 (n + 1)).toNat)

end

end A229367.P9235215714308028724

/-! ## A229367.P8286547926938351854

`or(A229372(A167614(n+1)), A353349(n+1))`
-/

namespace A229367.P8286547926938351854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A229372 (A167614 (n + 1)).toNat) (A353349 (n + 1))

end

end A229367.P8286547926938351854

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

/-! ## A229368.P13853670853802198470

`A229372(A141214(n)+7)`
-/

namespace A229368.P13853670853802198470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229372 (A141214 n + 7).toNat

end

end A229368.P13853670853802198470

/-! ## A229368.P7844558735953180151

`A229372(A052905(n)+9)`
-/

namespace A229368.P7844558735953180151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229372 (A052905 n + 9).toNat

end

end A229368.P7844558735953180151

/-! ## A229368.P12518624071548238400

`A229372(A055999(n)+10)`
-/

namespace A229368.P12518624071548238400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229372 (A055999 n + 10).toNat

end

end A229368.P12518624071548238400

/-! ## A229368.P10861524932796056776

`A229372(A167614(n+2)+1)`
-/

namespace A229368.P10861524932796056776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229372 (A167614 (n + 2) + 1).toNat

end

end A229368.P10861524932796056776

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

/-! ## A229369.P4193755991215360725

`A229372(A155212(n)+13)`
-/

namespace A229369.P4193755991215360725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229372 (A155212 n + 13).toNat

end

end A229369.P4193755991215360725

/-! ## A229369.P15194400467627985176

`A229372(eq[6, A131818(n+1)])`
-/

namespace A229369.P15194400467627985176
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229372 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A229369.P15194400467627985176

/-! ## A229369.P2576689192921392758

`A229372(Δ[A264443(n)])`
-/

namespace A229369.P2576689192921392758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229372 (f1 (n + 1) - f1 n).toNat

end

end A229369.P2576689192921392758

/-! ## A229369.P10840449401926351219

`A229372(eq[2, A092921(n)])`
-/

namespace A229369.P10840449401926351219
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092921 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229372 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A229369.P10840449401926351219

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

/-! ## A229370.P806399490344542196

`A229372(A056115(n)+21)`
-/

namespace A229370.P806399490344542196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229372 (A056115 n + 21).toNat

end

end A229370.P806399490344542196

/-! ## A229370.P15172396840273616538

`A229372(eq[7, A131818(n+1)])`
-/

namespace A229370.P15172396840273616538
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229372 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A229370.P15172396840273616538

/-! ## A229370.P3660941799222787848

`A229372(A052905(n+3))`
-/

namespace A229370.P3660941799222787848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229372 (A052905 (n + 3)).toNat

end

end A229370.P3660941799222787848

/-! ## A229370.P323214029880440291

`A229372(eq[3, A219347(n)])`
-/

namespace A229370.P323214029880440291
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229372 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A229370.P323214029880440291

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

/-! ## A229371.P2761634429626305816

`A229372(eq[11, A066657(n)])`
-/

namespace A229371.P2761634429626305816
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229372 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A229371.P2761634429626305816

/-! ## A229371.P5867595372865123563

`A229372(eq[8, A131818(n+1)])`
-/

namespace A229371.P5867595372865123563
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229372 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A229371.P5867595372865123563

/-! ## A229371.P7475699717498142337

`A229372(eq[4, A219347(n)])`
-/

namespace A229371.P7475699717498142337
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229372 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A229371.P7475699717498142337

/-! ## A229371.P10419674563817149902

`A229372(eq[6, A193592(n)])`
-/

namespace A229371.P10419674563817149902
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229372 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A229371.P10419674563817149902

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

/-! ## A229373.P3111613679281603571

`lcm(A087960(n), A229380(A001844(n)))`
-/

namespace A229373.P3111613679281603571
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A087960 n) (A229380 (A001844 n).toNat)

end

end A229373.P3111613679281603571

/-! ## A229373.P17871455125620686218

`or(A000007(n), A229380(A001844(n)))`
-/

namespace A229373.P17871455125620686218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A229380 (A001844 n).toNat)

end

end A229373.P17871455125620686218

/-! ## A229373.P4230942729027270132

`or(A000038(n), A229380(A001844(n)))`
-/

namespace A229373.P4230942729027270132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000038 n) (A229380 (A001844 n).toNat)

end

end A229373.P4230942729027270132

/-! ## A229373.P10459453619513579364

`or(A076710(n), A229380(A001844(n)))`
-/

namespace A229373.P10459453619513579364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A076710 n) (A229380 (A001844 n).toNat)

end

end A229373.P10459453619513579364

/-!
# A229374: Number of n X 2 0..2 arrays avoiding 11 horizontally, 22 vertically and 00 diagonally or antidiagonally.

The programs for A229374, the canonical program `A229374.P692511944548409641` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A229374 has offset 1).

The definition of A229374 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 162 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A229374.P692511944548409641

`4*a(n-1)+a(n-2)-2*a(n-3)` with `a(0)=8, a(1)=30, a(2)=126`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A229374

/-- `4*a(n-1)+a(n-2)-2*a(n-3)` -/
def P692511944548409641.Spec : Prop :=
  ∀ n, P692511944548409641.a n = A229374 (n + 1)

theorem P692511944548409641.correct : P692511944548409641.Spec := by
  intro n
  simp only [A229374, Nat.add_sub_cancel]

end A229374

/-! ## A229374.P10354794130164738893

`2*Δ[A301946(n+1)]`
-/

namespace A229374.P10354794130164738893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301946 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f1 (n + 1) - f1 n)

end

end A229374.P10354794130164738893

namespace A229374

/-- `2*Δ[A301946(n+1)]` -/
def P10354794130164738893.Spec : Prop :=
  ∀ n, P10354794130164738893.a n = A229374 (n + 1)

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

/-! ## A229375.P11239259566353756274

`lcm(2, A229380(A167614(n+1)))`
-/

namespace A229375.P11239259566353756274
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A229380 (A167614 (n + 1)).toNat)

end

end A229375.P11239259566353756274

/-! ## A229375.P15515026513948325310

`or(A000038(n), A229380(A167614(n+1)))`
-/

namespace A229375.P15515026513948325310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000038 n) (A229380 (A167614 (n + 1)).toNat)

end

end A229375.P15515026513948325310

/-! ## A229375.P2919887083368991822

`A229380(A167614(n+1))+A000038(n+2)`
-/

namespace A229375.P2919887083368991822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229380 (A167614 (n + 1)).toNat + A000038 (n + 2)

end

end A229375.P2919887083368991822

/-! ## A229375.P12803636587230792307

`A229380(A167614(n+1))%A164367(n+1)`
-/

namespace A229375.P12803636587230792307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A229380 (A167614 (n + 1)).toNat) (A164367 (n + 1))

end

end A229375.P12803636587230792307

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

/-! ## A229376.P6150634190330966814

`A229380(A141214(n)+7)`
-/

namespace A229376.P6150634190330966814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229380 (A141214 n + 7).toNat

end

end A229376.P6150634190330966814

/-! ## A229376.P16478530922280197923

`A229380(A052905(n)+9)`
-/

namespace A229376.P16478530922280197923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229380 (A052905 n + 9).toNat

end

end A229376.P16478530922280197923

/-! ## A229376.P278224505579028988

`A229380(A055999(n)+10)`
-/

namespace A229376.P278224505579028988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229380 (A055999 n + 10).toNat

end

end A229376.P278224505579028988

/-! ## A229376.P9560480001109388950

`A229380(A167614(n+2)+1)`
-/

namespace A229376.P9560480001109388950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229380 (A167614 (n + 2) + 1).toNat

end

end A229376.P9560480001109388950

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

/-! ## A229377.P7373205951326966490

`A229380(A167499(n+3))`
-/

namespace A229377.P7373205951326966490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229380 (A167499 (n + 3)).toNat

end

end A229377.P7373205951326966490

/-! ## A229377.P8265567663420749770

`A229380(A155212(n)+13)`
-/

namespace A229377.P8265567663420749770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229380 (A155212 n + 13).toNat

end

end A229377.P8265567663420749770

/-! ## A229377.P12250855812180792792

`A229380(A056000(n)+15)`
-/

namespace A229377.P12250855812180792792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229380 (A056000 n + 15).toNat

end

end A229377.P12250855812180792792

/-! ## A229377.P17022061685846571896

`A229380(A167614(n+1)+A005408(n)+8)`
-/

namespace A229377.P17022061685846571896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229380 (A167614 (n + 1) + A005408 n + 8).toNat

end

end A229377.P17022061685846571896

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

/-! ## A229378.P2874989436701008441

`A229380(eq[7, A131818(n+1)])`
-/

namespace A229378.P2874989436701008441
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229380 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A229378.P2874989436701008441

/-! ## A229378.P14955593345461759789

`A229380(eq[7, A004736(n+1)]-2*n)`
-/

namespace A229378.P14955593345461759789
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229380 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n - 2 * n)

end

end A229378.P14955593345461759789

/-! ## A229378.P11073494448793642514

`A229380(A052905(n+3))`
-/

namespace A229378.P11073494448793642514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229380 (A052905 (n + 3)).toNat

end

end A229378.P11073494448793642514

/-! ## A229378.P2927141446971746521

`A229380(eq[3, A219347(n)])`
-/

namespace A229378.P2927141446971746521
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229380 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A229378.P2927141446971746521

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

/-! ## A229379.P18207183268419008758

`A229380(eq[11, A066657(n)])`
-/

namespace A229379.P18207183268419008758
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229380 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A229379.P18207183268419008758

/-! ## A229379.P9085654803561109085

`A229380(eq[8, A131818(n+1)])`
-/

namespace A229379.P9085654803561109085
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229380 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A229379.P9085654803561109085

/-! ## A229379.P2533700410047827108

`A229380(A000124(n+7)-(n+1))`
-/

namespace A229379.P2533700410047827108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229380 (A000124 (n + 7) - (n + 1 : ℤ)).toNat

end

end A229379.P2533700410047827108

/-! ## A229379.P9085663938349692732

`A229380(A055999(n+4))`
-/

namespace A229379.P9085663938349692732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229380 (A055999 (n + 4)).toNat

end

end A229379.P9085663938349692732

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

The programs for A229386, there is no canonical definition to state claims against.
-/

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

/-! ## A229386.P15889145212793491570

`A229392(A000096(n+1))%A081135(2*n+3)`
-/

namespace A229386.P15889145212793491570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A229392 (A000096 (n + 1)).toNat) (A081135 (2 * n + 3))

end

end A229386.P15889145212793491570

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

/-! ## A229387.P7537140620612007841

`lcm(2, A229392(A167614(n+1)))`
-/

namespace A229387.P7537140620612007841
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A229392 (A167614 (n + 1)).toNat)

end

end A229387.P7537140620612007841

/-! ## A229387.P12424814485857769754

`A000034(2*n)*A229392(A167614(n+1))`
-/

namespace A229387.P12424814485857769754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (2 * n) * A229392 (A167614 (n + 1)).toNat

end

end A229387.P12424814485857769754

/-! ## A229387.P3280954673052548866

`A040001(2*n+1)*A229392(A167614(n+1))`
-/

namespace A229387.P3280954673052548866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (2 * n + 1) * A229392 (A167614 (n + 1)).toNat

end

end A229387.P3280954673052548866

/-! ## A229387.P6121597278082807646

`A062157(2*n+1)*A229392(A167614(n+1))`
-/

namespace A229387.P6121597278082807646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 (2 * n + 1) * A229392 (A167614 (n + 1)).toNat

end

end A229387.P6121597278082807646

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

/-! ## A229388.P4789798564648053514

`A229392(A052905(n)+9)`
-/

namespace A229388.P4789798564648053514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229392 (A052905 n + 9).toNat

end

end A229388.P4789798564648053514

/-! ## A229388.P5093758838961731630

`A229392(A055999(n)+10)`
-/

namespace A229388.P5093758838961731630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229392 (A055999 n + 10).toNat

end

end A229388.P5093758838961731630

/-! ## A229388.P12233939023214739889

`A229392(A167614(n+2)+1)`
-/

namespace A229388.P12233939023214739889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229392 (A167614 (n + 2) + 1).toNat

end

end A229388.P12233939023214739889

/-! ## A229388.P18288767025203867516

`A229392(Δ[A023545(n+1)-n²])`
-/

namespace A229388.P18288767025203867516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1) - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229392 (f1 (n + 1) - f1 n).toNat

end

end A229388.P18288767025203867516

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

/-! ## A229389.P120860098946807379

`A229392(A155212(n)+13)`
-/

namespace A229389.P120860098946807379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229392 (A155212 n + 13).toNat

end

end A229389.P120860098946807379

/-! ## A229389.P3427178024325467076

`A229392(A374005(n+1))`
-/

namespace A229389.P3427178024325467076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229392 (A374005 (n + 1)).toNat

end

end A229389.P3427178024325467076

/-! ## A229389.P10742726633915532288

`A229392(A046691(n+3))`
-/

namespace A229389.P10742726633915532288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229392 (A046691 (n + 3)).toNat

end

end A229389.P10742726633915532288

/-! ## A229389.P14215807420371814153

`A229392(Δ[A023545(n+1)])`
-/

namespace A229389.P14215807420371814153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229392 (f1 (n + 1) - f1 n).toNat

end

end A229389.P14215807420371814153

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

/-! ## A229390.P7571991232516760558

`A229392(Δ[A023545(n+1)]+10)`
-/

namespace A229390.P7571991232516760558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229392 (f1 (n + 1) - f1 n + 10).toNat

end

end A229390.P7571991232516760558

/-! ## A229390.P16088233465157363939

`A229392(A374007(n+1))`
-/

namespace A229390.P16088233465157363939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229392 (A374007 (n + 1)).toNat

end

end A229390.P16088233465157363939

/-! ## A229390.P11059416880008255038

`A229392(A052905(n+3))`
-/

namespace A229390.P11059416880008255038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229392 (A052905 (n + 3)).toNat

end

end A229390.P11059416880008255038

/-! ## A229390.P2184356522336823234

`A229392(Δ[Δ[A006504(n+1)]])`
-/

namespace A229390.P2184356522336823234
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229392 (f1 (n + 1) - f1 n).toNat

end

end A229390.P2184356522336823234

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

/-! ## A229391.P4773082094749805477

`A229392(A055999(n+4))`
-/

namespace A229391.P4773082094749805477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229392 (A055999 (n + 4)).toNat

end

end A229391.P4773082094749805477

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

/-! ## A229393.P8505657370594018171

`A221857(A000217(n+9)-9)`
-/

namespace A229393.P8505657370594018171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221857 (A000217 (n + 9) - 9).toNat

end

end A229393.P8505657370594018171

/-! ## A229393.P13277339368816675539

`A221857(A052905(n+5)+n+5)`
-/

namespace A229393.P13277339368816675539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221857 (A052905 (n + 5) + (n + 5 : ℤ)).toNat

end

end A229393.P13277339368816675539

/-! ## A229393.P9135423514052007431

`A221857(A167499(n+7)+n-5)`
-/

namespace A229393.P9135423514052007431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221857 (A167499 (n + 7) + ((n : ℤ) - 5)).toNat

end

end A229393.P9135423514052007431

/-! ## A229393.P1857114474012714722

`A221857(A005408(n+3)+A000124(n+7))`
-/

namespace A229393.P1857114474012714722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221857 (A005408 (n + 3) + A000124 (n + 7)).toNat

end

end A229393.P1857114474012714722

/-! ## A229393.P14696893013299945536

`A221857(A103517(n+5)+A046691(n+5))`
-/

namespace A229393.P14696893013299945536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221857 (A103517 (n + 5) + A046691 (n + 5)).toNat

end

end A229393.P14696893013299945536

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

/-! ## A229394.P7606364162191817436

`A221857(A000217(n+10)-10)`
-/

namespace A229394.P7606364162191817436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221857 (A000217 (n + 10) - 10).toNat

end

end A229394.P7606364162191817436

/-! ## A229394.P11014477967232229450

`A221857(A027379(n+7)+n+3)`
-/

namespace A229394.P11014477967232229450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221857 (A027379 (n + 7) + (n + 3 : ℤ)).toNat

end

end A229394.P11014477967232229450

/-! ## A229394.P13730065466499573421

`A221857(A052905(n+6)+n+5)`
-/

namespace A229394.P13730065466499573421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221857 (A052905 (n + 6) + (n + 5 : ℤ)).toNat

end

end A229394.P13730065466499573421

/-! ## A229394.P9294185795204325712

`A221857(A155212(A020715(n))-2)`
-/

namespace A229394.P9294185795204325712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221857 (A155212 (A020715 n).toNat - 2).toNat

end

end A229394.P9294185795204325712

/-! ## A229394.P5343192393196614419

`A221857(A167614(n+7)+A103517(n+2))`
-/

namespace A229394.P5343192393196614419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221857 (A167614 (n + 7) + A103517 (n + 2)).toNat

end

end A229394.P5343192393196614419

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

/-! ## A229395.P2706064969453217339

`A221857(A000217(n+11)-11)`
-/

namespace A229395.P2706064969453217339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221857 (A000217 (n + 11) - 11).toNat

end

end A229395.P2706064969453217339

/-! ## A229395.P10212791254803575843

`A221857(A052905(n+7)+n+5)`
-/

namespace A229395.P10212791254803575843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221857 (A052905 (n + 7) + (n + 5 : ℤ)).toNat

end

end A229395.P10212791254803575843

/-! ## A229395.P12188941456171566958

`A221857(A005408(n+4)+A000124(n+9))`
-/

namespace A229395.P12188941456171566958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221857 (A005408 (n + 4) + A000124 (n + 9)).toNat

end

end A229395.P12188941456171566958

/-! ## A229395.P6654946896616996466

`A221857(A103517(n+6)+A046691(n+7))`
-/

namespace A229395.P6654946896616996466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221857 (A103517 (n + 6) + A046691 (n + 7)).toNat

end

end A229395.P6654946896616996466

/-! ## A229395.P1078997443327058081

`A221857(A046691(n+7)+A005843(n+7))`
-/

namespace A229395.P1078997443327058081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221857 (A046691 (n + 7) + A005843 (n + 7)).toNat

end

end A229395.P1078997443327058081

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

/-! ## A229396.P17116716671910321898

`gcd(A000038(n), A229402(A001844(n)))`
-/

namespace A229396.P17116716671910321898
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A229402 (A001844 n).toNat)

end

end A229396.P17116716671910321898

/-! ## A229396.P12292776896545786212

`or(A000007(n), A229402(A001844(n)))`
-/

namespace A229396.P12292776896545786212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A229402 (A001844 n).toNat)

end

end A229396.P12292776896545786212

/-!
# A229397: Number of n X 3 0..2 arrays with top left element 0, horizontal differences mod 3 never 1, vertical differences mod 3 never -1, and antidiagonal differences never 0.

The programs for A229397, the canonical program `A229397.P2920910428248174037` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A229397 has offset 1).

The definition of A229397 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 183 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A229397.P2920910428248174037

`5*a(n-1)-6*a(n-2)+3*a(n-3)-a(n-4)` with `a(0)=4, a(1)=13, a(2)=44, a(3)=153`

The canonical program, it is in `Seq.B000.C027`.
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

/-! ## A229397.P5264960839701585299

`A229402(A167614(n+1))+A025439(n)`
-/

namespace A229397.P5264960839701585299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229402 (A167614 (n + 1)).toNat + A025439 n

end

end A229397.P5264960839701585299

namespace A229397

/-- `A229402(A167614(n+1))+A025439(n)` -/
def P5264960839701585299.Spec : Prop :=
  ∀ n, P5264960839701585299.a n = A229397 (n + 1)

end A229397

/-! ## A229397.P258907942240601528

`A229402(A167614(n+1))%A199689(n)`
-/

namespace A229397.P258907942240601528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A229402 (A167614 (n + 1)).toNat) (A199689 n)

end

end A229397.P258907942240601528

namespace A229397

/-- `A229402(A167614(n+1))%A199689(n)` -/
def P258907942240601528.Spec : Prop :=
  ∀ n, P258907942240601528.a n = A229397 (n + 1)

end A229397

/-! ## A229397.P10389562767050363738

`lcm(A106400(n), A229402(A167614(n+1)))`
-/

namespace A229397.P10389562767050363738
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A106400 n) (A229402 (A167614 (n + 1)).toNat)

end

end A229397.P10389562767050363738

namespace A229397

/-- `lcm(A106400(n), A229402(A167614(n+1)))` -/
def P10389562767050363738.Spec : Prop :=
  ∀ n, (P10389562767050363738.a n : ℤ) = A229397 (n + 1)

end A229397

/-!
# A229398: Number of n X 4 0..2 arrays with top left element 0, horizontal differences mod 3 never 1, vertical differences mod 3 never -1, and antidiagonal differences never 0.

The programs for A229398, there is no canonical definition to state claims against.
-/

/-! ## A229398.P4016001296779570568

`A229402(A374004(n+1))`
-/

namespace A229398.P4016001296779570568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229402 (A374004 (n + 1)).toNat

end

end A229398.P4016001296779570568

/-! ## A229398.P8932727887903456383

`A229402(A052905(n)+9)`
-/

namespace A229398.P8932727887903456383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229402 (A052905 n + 9).toNat

end

end A229398.P8932727887903456383

/-! ## A229398.P2303622508779239269

`A229402(A055999(n)+10)`
-/

namespace A229398.P2303622508779239269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229402 (A055999 n + 10).toNat

end

end A229398.P2303622508779239269

/-! ## A229398.P8776659498252137384

`A229402(A167614(n+2)+1)`
-/

namespace A229398.P8776659498252137384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229402 (A167614 (n + 2) + 1).toNat

end

end A229398.P8776659498252137384

/-! ## A229398.P1566501684271795819

`A229402(A167499(n+2)-1)`
-/

namespace A229398.P1566501684271795819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229402 (A167499 (n + 2) - 1).toNat

end

end A229398.P1566501684271795819

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

/-! ## A229399.P8935734710423194627

`A229402(A167499(n+3))`
-/

namespace A229399.P8935734710423194627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229402 (A167499 (n + 3)).toNat

end

end A229399.P8935734710423194627

/-! ## A229399.P17543038008803459925

`A229402(A167614(n+3)+2)`
-/

namespace A229399.P17543038008803459925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229402 (A167614 (n + 3) + 2).toNat

end

end A229399.P17543038008803459925

/-! ## A229399.P4227171096628201041

`A229402(A000217(n+4)+5)`
-/

namespace A229399.P4227171096628201041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229402 (A000217 (n + 4) + 5).toNat

end

end A229399.P4227171096628201041

/-! ## A229399.P11927781885919020752

`A229402(A055999(n+1)+11)`
-/

namespace A229399.P11927781885919020752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229402 (A055999 (n + 1) + 11).toNat

end

end A229399.P11927781885919020752

