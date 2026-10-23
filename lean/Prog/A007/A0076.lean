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
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
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
import Seq.B004.C000
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B008.C001
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A007600: Minimal number of subsets in a separating family for a set of n elements.

The programs for A007600, the canonical program `A007600.P10063005414534931392` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A007600 has offset 1).

The definition of A007600 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A007600.P10063005414534931392

`a(floor(n/3))+3` with `a(0)=0, a(1)=2, a(2)=3, a(3)=4`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A007600

/-- `a(floor(n/3))+3` -/
def P10063005414534931392.Spec : Prop :=
  ∀ n, (P10063005414534931392.a n : ℤ) = A007600 (n + 1)

theorem P10063005414534931392.correct : P10063005414534931392.Spec := by
  intro n
  simp only [A007600, Nat.add_sub_cancel]

end A007600

/-! ## A007600.P15782566090733990791

`comp[A000792(n)+n]-n`
-/

namespace A007600.P15782566090733990791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000792 n + (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A007600.P15782566090733990791

namespace A007600

/-- `comp[A000792(n)+n]-n` -/
def P15782566090733990791.Spec : Prop :=
  ∀ n, P15782566090733990791.a n = A007600 (n + 1)

end A007600

/-! ## A007600.P18422612353206105721

`ceil(A027874(n+1)/(n+1))`
-/

namespace A007600.P18422612353206105721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A027874 (n + 1) : ℚ) / (n + 1 : ℚ)⌉

end

end A007600.P18422612353206105721

namespace A007600

/-- `ceil(A027874(n+1)/(n+1))` -/
def P18422612353206105721.Spec : Prop :=
  ∀ n, P18422612353206105721.a n = A007600 (n + 1)

end A007600

/-! ## A007600.P9688123081921908414

`∑[char[A122164(n)]]%(2*n+1)`
-/

namespace A007600.P9688123081921908414
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122164 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) % (2 * n + 1)

end

end A007600.P9688123081921908414

namespace A007600

/-- `∑[char[A122164(n)]]%(2*n+1)` -/
def P9688123081921908414.Spec : Prop :=
  ∀ n, (P9688123081921908414.a n : ℤ) = A007600 (n + 1)

end A007600

/-! ## A007600.P18410261125809617016

`∑[char[record[A155118(n)]]]%(2*n+1)`
-/

namespace A007600.P18410261125809617016
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155118 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) % (2 * n + 1)

end

end A007600.P18410261125809617016

namespace A007600

/-- `∑[char[record[A155118(n)]]]%(2*n+1)` -/
def P18410261125809617016.Spec : Prop :=
  ∀ n, (P18410261125809617016.a n : ℤ) = A007600 (n + 1)

end A007600

/-! ## A007600.P6435073228156157586

`A057427(n)+∑[char[A000792(n)]]`
-/

namespace A007600.P6435073228156157586
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000792 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A007600.P6435073228156157586

namespace A007600

/-- `A057427(n)+∑[char[A000792(n)]]` -/
def P6435073228156157586.Spec : Prop :=
  ∀ n, P6435073228156157586.a n = A007600 (n + 1)

end A007600

/-! ## A007600.P2086386004768341289

`∑[char[A122164(n)]]-A000007(n)`
-/

namespace A007600.P2086386004768341289
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122164 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A000007 n

end

end A007600.P2086386004768341289

namespace A007600

/-- `∑[char[A122164(n)]]-A000007(n)` -/
def P2086386004768341289.Spec : Prop :=
  ∀ n, P2086386004768341289.a n = A007600 (n + 1)

end A007600

/-! ## A007600.P13304292025247483940

`∑[char[A122164(n)]]*A057427(n)`
-/

namespace A007600.P13304292025247483940
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122164 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A057427 n

end

end A007600.P13304292025247483940

namespace A007600

/-- `∑[char[A122164(n)]]*A057427(n)` -/
def P13304292025247483940.Spec : Prop :=
  ∀ n, P13304292025247483940.a n = A007600 (n + 1)

end A007600

/-! ## A007600.P10113933615175819755

`∑[char[A163495(n)]]%A000132(n)`
-/

namespace A007600.P10113933615175819755
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163495 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (A000132 n)

end

end A007600.P10113933615175819755

namespace A007600

/-- `∑[char[A163495(n)]]%A000132(n)` -/
def P10113933615175819755.Spec : Prop :=
  ∀ n, P10113933615175819755.a n = A007600 (n + 1)

end A007600

/-! ## A007600.P2650648890136242227

`∑[char[A000792(n)]]+A030459(n+1)%2`
-/

namespace A007600.P2650648890136242227
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000792 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + Int.tmod (A030459 (n + 1)) 2

end

end A007600.P2650648890136242227

namespace A007600

/-- `∑[char[A000792(n)]]+A030459(n+1)%2` -/
def P2650648890136242227.Spec : Prop :=
  ∀ n, P2650648890136242227.a n = A007600 (n + 1)

end A007600

/-!
# A007601: Positions where A007600 increases.

The programs for A007601, there is no canonical definition to state claims against.
-/

/-! ## A007601.P5094263578953930453

`3*a(n-3)-2` with `a(0)=1, a(1)=2, a(2)=3, a(3)=4, a(4)=5`
-/

namespace A007601.P5094263578953930453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 3, 4, 5] fun n a =>
  3 * a (n - 3) - 2

end

end A007601.P5094263578953930453

/-! ## A007601.P16228274836977475043

`record[A122164(n)+1]`
-/

namespace A007601.P16228274836977475043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122164 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A007601.P16228274836977475043

/-! ## A007601.P14919032592088162982

`record[A155118(n)+1]`
-/

namespace A007601.P14919032592088162982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155118 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A007601.P14919032592088162982

/-! ## A007601.P12090227742115969295

`record[A163495(n)+1]`
-/

namespace A007601.P12090227742115969295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163495 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A007601.P12090227742115969295

/-!
# A007602: Numbers that are divisible by the product of their digits.

The programs for A007602, there is no canonical definition to state claims against.
-/

/-! ## A007602.P16019761917662370326

`A288069(n+1)*A360075(n+1)`
-/

namespace A007602.P16019761917662370326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288069 (n + 1) * A360075 (n + 1)

end

end A007602.P16019761917662370326

/-! ## A007602.P9671623127124753127

`∩[A055471(n+1), A180484(n+1)]`
-/

namespace A007602.P9671623127124753127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055471 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180484 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A007602.P9671623127124753127

/-! ## A007602.P18307180302150935582

`∩[A034838(n+1), A055471(n+1)]`
-/

namespace A007602.P18307180302150935582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034838 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055471 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A007602.P18307180302150935582

/-! ## A007602.P7938449495122957941

`∩[A055471(n+1), A180478(n+1)]`
-/

namespace A007602.P7938449495122957941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055471 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180478 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A007602.P7938449495122957941

/-! ## A007602.P4648103485430537017

`∩[A055471(n+1), A330982(n+1)]`
-/

namespace A007602.P4648103485430537017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055471 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330982 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A007602.P4648103485430537017

/-! ## A007602.P6541336193993832936

`∩[A052382(n+1), A055471(n+1)]`
-/

namespace A007602.P6541336193993832936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052382 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055471 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A007602.P6541336193993832936

/-! ## A007602.P6224637390693769651

`lt[0, A188642(n)]`
-/

namespace A007602.P6224637390693769651
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188642 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A007602.P6224637390693769651

/-! ## A007602.P16138240791953282134

`record[A360073(n+1)]`
-/

namespace A007602.P16138240791953282134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360073 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A007602.P16138240791953282134

/-! ## A007602.P5820860407073149260

`filter[n+1, A188642(#)]`
-/

namespace A007602.P5820860407073149260
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A188642 (f1 j) = 1) n)

end

end A007602.P5820860407073149260

/-! ## A007602.P16074779459071479991

`record[(n+1)*A188642(n+1)]`
-/

namespace A007602.P16074779459071479991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A188642 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A007602.P16074779459071479991

/-!
# A007604: a(n) = a(n-1) + a(n-1-(number of odd terms so far)).

The programs for A007604, there is no canonical definition to state claims against.
-/

/-! ## A007604.P2289791497487623223

`A046936(comp[∑[n]])`
-/

namespace A007604.P2289791497487623223
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046936 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A007604.P2289791497487623223

/-! ## A007604.P10618084144228966180

`∑[A046936(n)]+1`
-/

namespace A007604.P10618084144228966180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046936 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A007604.P10618084144228966180

/-! ## A007604.P6458568086165392066

`record[A046936(abs(1-n))]`
-/

namespace A007604.P6458568086165392066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046936 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A007604.P6458568086165392066

/-! ## A007604.P16530287507279495985

`∑[A011971(n)-A046934(n)]+1`
-/

namespace A007604.P16530287507279495985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011971 n - A046934 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A007604.P16530287507279495985

/-! ## A007604.P17431830361067356043

`∑[A046937(n)-A011971(n)]+1`
-/

namespace A007604.P17431830361067356043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046937 n - A011971 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A007604.P17431830361067356043

/-! ## A007604.P5238978875152707319

`∑[A011972(n)+A046937(n)-A011972(n+1)]+1`
-/

namespace A007604.P5238978875152707319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011972 n + (A046937 n - A011972 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A007604.P5238978875152707319

/-! ## A007604.P4722056207725763334

`record[Δ[A046936(n)]]`
-/

namespace A007604.P4722056207725763334
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046936 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A007604.P4722056207725763334

/-! ## A007604.P7432597097390312037

`record[A046936(n+1)-A046936(n)]`
-/

namespace A007604.P7432597097390312037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046936 (n + 1) - A046936 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A007604.P7432597097390312037

/-!
# A007605: Sum of digits of n-th prime.

The programs for A007605, the canonical program `A007605.P14521423581831153617` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A007605 has offset 1).

The definition of A007605 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A007953, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A007605.P14521423581831153617

`A007953(A000040(n+1))`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A007605

/-- `A007953(A000040(n+1))` -/
def P14521423581831153617.Spec : Prop :=
  ∀ n, P14521423581831153617.a n = A007605 (n + 1)

theorem P14521423581831153617.correct : P14521423581831153617.Spec := by
  intro n
  simp only [A007605, Nat.add_sub_cancel]

end A007605

/-! ## A007605.P13991190810357257495

`∑{digits}[Δ[A007504(n)], #]`
-/

namespace A007605.P13991190810357257495
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A007605.P13991190810357257495

namespace A007605

/-- `∑{digits}[Δ[A007504(n)], #]` -/
def P13991190810357257495.Spec : Prop :=
  ∀ n, (P13991190810357257495.a n : ℤ) = A007605 (n + 1)

end A007605

/-! ## A007605.P15102482030213537448

`∑{digits}[Δ[A008348(n)], #]`
-/

namespace A007605.P15102482030213537448
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008348 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A007605.P15102482030213537448

namespace A007605

/-- `∑{digits}[Δ[A008348(n)], #]` -/
def P15102482030213537448.Spec : Prop :=
  ∀ n, (P15102482030213537448.a n : ℤ) = A007605 (n + 1)

end A007605

/-! ## A007605.P10745353117165759751

`∑{digits}[p?[A259153(n)], #]`
-/

namespace A007605.P10745353117165759751
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259153 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A007605.P10745353117165759751

namespace A007605

/-- `∑{digits}[p?[A259153(n)], #]` -/
def P10745353117165759751.Spec : Prop :=
  ∀ n, (P10745353117165759751.a n : ℤ) = A007605 (n + 1)

end A007605

/-! ## A007605.P15321989439748621708

`∑{digits}[A004087(n+1), #]`
-/

namespace A007605.P15321989439748621708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004087 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A007605.P15321989439748621708

namespace A007605

/-- `∑{digits}[A004087(n+1), #]` -/
def P15321989439748621708.Spec : Prop :=
  ∀ n, (P15321989439748621708.a n : ℤ) = A007605 (n + 1)

end A007605

/-! ## A007605.P5166242147947556457

`∑{digits}[A028905(n+1), #]`
-/

namespace A007605.P5166242147947556457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028905 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A007605.P5166242147947556457

namespace A007605

/-- `∑{digits}[A028905(n+1), #]` -/
def P5166242147947556457.Spec : Prop :=
  ∀ n, (P5166242147947556457.a n : ℤ) = A007605 (n + 1)

end A007605

/-! ## A007605.P18312437885742869208

`∑{digits}[A028906(n+1), #]`
-/

namespace A007605.P18312437885742869208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028906 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A007605.P18312437885742869208

namespace A007605

/-- `∑{digits}[A028906(n+1), #]` -/
def P18312437885742869208.Spec : Prop :=
  ∀ n, (P18312437885742869208.a n : ℤ) = A007605 (n + 1)

end A007605

/-! ## A007605.P1811288721956890439

`∑{digits}[A142342(n+1), #]`
-/

namespace A007605.P1811288721956890439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142342 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A007605.P1811288721956890439

namespace A007605

/-- `∑{digits}[A142342(n+1), #]` -/
def P1811288721956890439.Spec : Prop :=
  ∀ n, (P1811288721956890439.a n : ℤ) = A007605 (n + 1)

end A007605

/-! ## A007605.P1642757952938945428

`∑{digits}[A273960(n+1), #]`
-/

namespace A007605.P1642757952938945428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273960 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A007605.P1642757952938945428

namespace A007605

/-- `∑{digits}[A273960(n+1), #]` -/
def P1642757952938945428.Spec : Prop :=
  ∀ n, (P1642757952938945428.a n : ℤ) = A007605 (n + 1)

end A007605

/-! ## A007605.P7584453959016713488

`∑{digits}[sqrt(A001248(n+1)), #]`
-/

namespace A007605.P7584453959016713488
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A001248 (n + 1) : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (SequenceMachineLib.roundAway (f1 n)).natAbs).map fun (x : ℕ) => x).sum

end

end A007605.P7584453959016713488

namespace A007605

/-- `∑{digits}[sqrt(A001248(n+1)), #]` -/
def P7584453959016713488.Spec : Prop :=
  ∀ n, (P7584453959016713488.a n : ℤ) = A007605 (n + 1)

end A007605

/-! ## A007605.P17673992126278945259

`∑{digits}[∑[A054541(n+1)], #]`
-/

namespace A007605.P17673992126278945259
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A007605.P17673992126278945259

namespace A007605

/-- `∑{digits}[∑[A054541(n+1)], #]` -/
def P17673992126278945259.Spec : Prop :=
  ∀ n, (P17673992126278945259.a n : ℤ) = A007605 (n + 1)

end A007605

/-! ## A007605.P10497393247227902790

`A076314(A301378(n+1))`
-/

namespace A007605.P10497393247227902790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076314 (A301378 (n + 1)).toNat

end

end A007605.P10497393247227902790

namespace A007605

/-- `A076314(A301378(n+1))` -/
def P10497393247227902790.Spec : Prop :=
  ∀ n, P10497393247227902790.a n = A007605 (n + 1)

end A007605

/-! ## A007605.P12099318641354653821

`A104251(n+1)+A104250(n+1)`
-/

namespace A007605.P12099318641354653821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104251 (n + 1) + A104250 (n + 1)

end

end A007605.P12099318641354653821

namespace A007605

/-- `A104251(n+1)+A104250(n+1)` -/
def P12099318641354653821.Spec : Prop :=
  ∀ n, P12099318641354653821.a n = A007605 (n + 1)

end A007605

/-! ## A007605.P5806365766988802790

`A104261(n+1)+A104260(n+1)`
-/

namespace A007605.P5806365766988802790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104261 (n + 1) + A104260 (n + 1)

end

end A007605.P5806365766988802790

namespace A007605

/-- `A104261(n+1)+A104260(n+1)` -/
def P5806365766988802790.Spec : Prop :=
  ∀ n, P5806365766988802790.a n = A007605 (n + 1)

end A007605

/-! ## A007605.P17237703383793955138

`A065073(n+1)-A000040(n+1)`
-/

namespace A007605.P17237703383793955138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065073 (n + 1) - A000040 (n + 1)

end

end A007605.P17237703383793955138

namespace A007605

/-- `A065073(n+1)-A000040(n+1)` -/
def P17237703383793955138.Spec : Prop :=
  ∀ n, P17237703383793955138.a n = A007605 (n + 1)

end A007605

/-! ## A007605.P15995861599812116499

`A000040(n+1)-A068395(n+1)`
-/

namespace A007605.P15995861599812116499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - A068395 (n + 1)

end

end A007605.P15995861599812116499

namespace A007605

/-- `A000040(n+1)-A068395(n+1)` -/
def P15995861599812116499.Spec : Prop :=
  ∀ n, P15995861599812116499.a n = A007605 (n + 1)

end A007605

/-! ## A007605.P513966468702486908

`A007953(n+1)-A090431(n+1)`
-/

namespace A007605.P513966468702486908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (n + 1) - A090431 (n + 1)

end

end A007605.P513966468702486908

namespace A007605

/-- `A007953(n+1)-A090431(n+1)` -/
def P513966468702486908.Spec : Prop :=
  ∀ n, P513966468702486908.a n = A007605 (n + 1)

end A007605

/-! ## A007605.P12573766598947695669

`A255005(n+1)-A053666(n+1)`
-/

namespace A007605.P12573766598947695669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255005 (n + 1) - A053666 (n + 1)

end

end A007605.P12573766598947695669

namespace A007605

/-- `A255005(n+1)-A053666(n+1)` -/
def P12573766598947695669.Spec : Prop :=
  ∀ n, P12573766598947695669.a n = A007605 (n + 1)

end A007605

/-! ## A007605.P1992246389839331693

`(A065073(n+1)-A068395(n+1))/2`
-/

namespace A007605.P1992246389839331693
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A065073 (n + 1) - A068395 (n + 1) : ℚ) / 2

end

end A007605.P1992246389839331693

namespace A007605

/-- `(A065073(n+1)-A068395(n+1))/2` -/
def P1992246389839331693.Spec : Prop :=
  ∀ n, P1992246389839331693.a n = (A007605 (n + 1) : ℚ)

end A007605

/-! ## A007605.P5627878944524823260

`A065073(n+1)-A100484(n+1)/2`
-/

namespace A007605.P5627878944524823260
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A065073 (n + 1) : ℚ) - (A100484 (n + 1) : ℚ) / 2

end

end A007605.P5627878944524823260

namespace A007605

/-- `A065073(n+1)-A100484(n+1)/2` -/
def P5627878944524823260.Spec : Prop :=
  ∀ n, P5627878944524823260.a n = (A007605 (n + 1) : ℚ)

end A007605

/-!
# A007606: Take 1, skip 2, take 3, etc.

The programs for A007606, the canonical program `A007606.P7799483194053309628` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A007606 has offset 1).

The definition of A007606 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A007606.P13055930968821231573

`comp[round(sqrt(n))²+n]`
-/

namespace A007606.P13055930968821231573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (n : ℝ)) ^ 2 + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A007606.P13055930968821231573

namespace A007606

/-- `comp[round(sqrt(n))²+n]` -/
def P13055930968821231573.Spec : Prop :=
  ∀ n, (P13055930968821231573.a n : ℤ) = A007606 (n + 1)

end A007606

/-! ## A007606.P7864111056864150952

`eq[1, round(sqrt(2*n))%2]`
-/

namespace A007606.P7864111056864150952
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (Real.sqrt (2 * n : ℝ))) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A007606.P7864111056864150952

namespace A007606

/-- `eq[1, round(sqrt(2*n))%2]` -/
def P7864111056864150952.Spec : Prop :=
  ∀ n, (P7864111056864150952.a n : ℤ) = A007606 (n + 1)

end A007606

/-! ## A007606.P4910469587335858506

`lt[val(round(sqrt(2*n))+2, 2), 1]`
-/

namespace A007606.P4910469587335858506
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (SequenceMachineLib.roundAway (Real.sqrt (2 * n : ℝ)) + 2).toNat 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A007606.P4910469587335858506

namespace A007606

/-- `lt[val(round(sqrt(2*n))+2, 2), 1]` -/
def P4910469587335858506.Spec : Prop :=
  ∀ n, (P4910469587335858506.a n : ℤ) = A007606 (n + 1)

end A007606

/-! ## A007606.P16879852988553370508

`A161983(n)+1`
-/

namespace A007606.P16879852988553370508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161983 n + 1

end

end A007606.P16879852988553370508

namespace A007606

/-- `A161983(n)+1` -/
def P16879852988553370508.Spec : Prop :=
  ∀ n, P16879852988553370508.a n = A007606 (n + 1)

end A007606

/-! ## A007606.P7799483194053309628

`A381232(n)+Δ[n²]`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A007606

/-- `A381232(n)+Δ[n²]` -/
def P7799483194053309628.Spec : Prop :=
  ∀ n, P7799483194053309628.a n = A007606 (n + 1)

theorem P7799483194053309628.correct : P7799483194053309628.Spec := by
  intro n
  simp only [A007606, Nat.add_sub_cancel]

end A007606

/-! ## A007606.P12714929514474720906

`Δ[n²]-A196199(n)`
-/

namespace A007606.P12714929514474720906
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - A196199 n

end

end A007606.P12714929514474720906

namespace A007606

/-- `Δ[n²]-A196199(n)` -/
def P12714929514474720906.Spec : Prop :=
  ∀ n, P12714929514474720906.a n = A007606 (n + 1)

end A007606

/-! ## A007606.P15862692291638604113

`∑[2*A037213(n)+1]`
-/

namespace A007606.P15862692291638604113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A037213 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007606.P15862692291638604113

namespace A007606

/-- `∑[2*A037213(n)+1]` -/
def P15862692291638604113.Spec : Prop :=
  ∀ n, P15862692291638604113.a n = A007606 (n + 1)

end A007606

/-! ## A007606.P7756504593761307074

`A002061(∑[char[n²]])+n`
-/

namespace A007606.P7756504593761307074
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002061 (∑ j ∈ Finset.range (n + 1), f1 j) + (n : ℤ)

end

end A007606.P7756504593761307074

namespace A007606

/-- `A002061(∑[char[n²]])+n` -/
def P7756504593761307074.Spec : Prop :=
  ∀ n, P7756504593761307074.a n = A007606 (n + 1)

end A007606

/-! ## A007606.P1542340176534537834

`comp[A007607(n+1)-1]+1`
-/

namespace A007606.P1542340176534537834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007607 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A007606.P1542340176534537834

namespace A007606

/-- `comp[A007607(n+1)-1]+1` -/
def P1542340176534537834.Spec : Prop :=
  ∀ n, (P1542340176534537834.a n : ℤ) = A007606 (n + 1)

end A007606

/-! ## A007606.P9467699088387518278

`lt[2/A176895(round(sqrt(2*n))), 1]`
-/

namespace A007606.P9467699088387518278
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (A176895 (SequenceMachineLib.roundAway (Real.sqrt (2 * n : ℝ))).toNat : ℚ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n

end

end A007606.P9467699088387518278

namespace A007606

/-- `lt[2/A176895(round(sqrt(2*n))), 1]` -/
def P9467699088387518278.Spec : Prop :=
  ∀ n, (P9467699088387518278.a n : ℤ) = A007606 (n + 1)

end A007606

/-! ## A007606.P1620863579639007015

`A000196(n)+comp[ceil(sqrt(n))²+n]`
-/

namespace A007606.P1620863579639007015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (n : ℝ)⌉ ^ 2 + (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 n + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A007606.P1620863579639007015

namespace A007606

/-- `A000196(n)+comp[ceil(sqrt(n))²+n]` -/
def P1620863579639007015.Spec : Prop :=
  ∀ n, P1620863579639007015.a n = A007606 (n + 1)

end A007606

/-! ## A007606.P16566666951628390051

`A002620(2*floor(sqrt(n))+1)+n+1`
-/

namespace A007606.P16566666951628390051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (2 * Nat.sqrt n + 1) + (n + 1 : ℤ)

end

end A007606.P16566666951628390051

namespace A007606

/-- `A002620(2*floor(sqrt(n))+1)+n+1` -/
def P16566666951628390051.Spec : Prop :=
  ∀ n, P16566666951628390051.a n = A007606 (n + 1)

end A007606

/-! ## A007606.P16020204476368884576

`∑[A005408(A037213(n))]`
-/

namespace A007606.P16020204476368884576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A037213 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007606.P16020204476368884576

namespace A007606

/-- `∑[A005408(A037213(n))]` -/
def P16020204476368884576.Spec : Prop :=
  ∀ n, P16020204476368884576.a n = A007606 (n + 1)

end A007606

/-! ## A007606.P11383770089256431639

`A165776(n)-A000196(n)`
-/

namespace A007606.P11383770089256431639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165776 n - A000196 n

end

end A007606.P11383770089256431639

namespace A007606

/-- `A165776(n)-A000196(n)` -/
def P11383770089256431639.Spec : Prop :=
  ∀ n, P11383770089256431639.a n = A007606 (n + 1)

end A007606

/-! ## A007606.P2216451686329071532

`A061887(n)+A003059(n+1)`
-/

namespace A007606.P2216451686329071532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061887 n + A003059 (n + 1)

end

end A007606.P2216451686329071532

namespace A007606

/-- `A061887(n)+A003059(n+1)` -/
def P2216451686329071532.Spec : Prop :=
  ∀ n, P2216451686329071532.a n = A007606 (n + 1)

end A007606

/-! ## A007606.P2566991956510546580

`A028392(n)+A048760(n)+1`
-/

namespace A007606.P2566991956510546580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028392 n + (A048760 n + 1)

end

end A007606.P2566991956510546580

namespace A007606

/-- `A028392(n)+A048760(n)+1` -/
def P2566991956510546580.Spec : Prop :=
  ∀ n, P2566991956510546580.a n = A007606 (n + 1)

end A007606

/-! ## A007606.P16330115139349209874

`A078358(n+1)+A048760(n)`
-/

namespace A007606.P16330115139349209874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078358 (n + 1) + A048760 n

end

end A007606.P16330115139349209874

namespace A007606

/-- `A078358(n+1)+A048760(n)` -/
def P16330115139349209874.Spec : Prop :=
  ∀ n, P16330115139349209874.a n = A007606 (n + 1)

end A007606

/-! ## A007606.P2768483969729458181

`A037213(n)+A174803(n)+1`
-/

namespace A007606.P2768483969729458181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037213 n + (A174803 n + 1)

end

end A007606.P2768483969729458181

namespace A007606

/-- `A037213(n)+A174803(n)+1` -/
def P2768483969729458181.Spec : Prop :=
  ∀ n, P2768483969729458181.a n = A007606 (n + 1)

end A007606

/-! ## A007606.P14413325263606750611

`A005843(n)+1-A196199(n)`
-/

namespace A007606.P14413325263606750611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n + (1 - A196199 n)

end

end A007606.P14413325263606750611

namespace A007606

/-- `A005843(n)+1-A196199(n)` -/
def P14413325263606750611.Spec : Prop :=
  ∀ n, P14413325263606750611.a n = A007606 (n + 1)

end A007606

/-!
# A007607: Skip 1, take 2, skip 3, etc.

The programs for A007607, the canonical program `A007607.P11441618677212095950` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A007607 has offset 1).

The definition of A007607 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A007607.P11441618677212095950

`floor(sqrt(n+1)+1/2)²+n+1`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A007607

/-- `floor(sqrt(n+1)+1/2)²+n+1` -/
def P11441618677212095950.Spec : Prop :=
  ∀ n, P11441618677212095950.a n = A007607 (n + 1)

theorem P11441618677212095950.correct : P11441618677212095950.Spec := by
  intro n
  simp only [A007607, Nat.add_sub_cancel]

end A007607

/-! ## A007607.P9098840110992234157

`∑[A245552(n+1)+1]`
-/

namespace A007607.P9098840110992234157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245552 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007607.P9098840110992234157

namespace A007607

/-- `∑[A245552(n+1)+1]` -/
def P9098840110992234157.Spec : Prop :=
  ∀ n, P9098840110992234157.a n = A007607 (n + 1)

end A007607

/-! ## A007607.P12518640490841897337

`lt[0, A142150(round(sqrt(2*n)))]`
-/

namespace A007607.P12518640490841897337
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (SequenceMachineLib.roundAway (Real.sqrt (2 * n : ℝ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A007607.P12518640490841897337

namespace A007607

/-- `lt[0, A142150(round(sqrt(2*n)))]` -/
def P12518640490841897337.Spec : Prop :=
  ∀ n, (P12518640490841897337.a n : ℤ) = A007607 (n + 1)

end A007607

/-! ## A007607.P9635818887855991087

`eq[3, A060445(round(sqrt(2*n)))]`
-/

namespace A007607.P9635818887855991087
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060445 (SequenceMachineLib.roundAway (Real.sqrt (2 * n : ℝ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A007607.P9635818887855991087

namespace A007607

/-- `eq[3, A060445(round(sqrt(2*n)))]` -/
def P9635818887855991087.Spec : Prop :=
  ∀ n, (P9635818887855991087.a n : ℤ) = A007607 (n + 1)

end A007607

/-! ## A007607.P17184165843258093079

`lt[3, A176591(round(sqrt(2*n)))]`
-/

namespace A007607.P17184165843258093079
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176591 (SequenceMachineLib.roundAway (Real.sqrt (2 * n : ℝ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A007607.P17184165843258093079

namespace A007607

/-- `lt[3, A176591(round(sqrt(2*n)))]` -/
def P17184165843258093079.Spec : Prop :=
  ∀ n, (P17184165843258093079.a n : ℤ) = A007607 (n + 1)

end A007607

/-! ## A007607.P10822724240408715606

`∪[A185869(n+1), A185870(n+1)]`
-/

namespace A007607.P10822724240408715606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185869 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185870 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A007607.P10822724240408715606

namespace A007607

/-- `∪[A185869(n+1), A185870(n+1)]` -/
def P10822724240408715606.Spec : Prop :=
  ∀ n, (P10822724240408715606.a n : ℤ) = A007607 (n + 1)

end A007607

/-! ## A007607.P8498705006331939957

`filter[n+1, A057212(#)]`
-/

namespace A007607.P8498705006331939957
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A057212 (f1 j) = 1) n)

end

end A007607.P8498705006331939957

namespace A007607

/-- `filter[n+1, A057212(#)]` -/
def P8498705006331939957.Spec : Prop :=
  ∀ n, (P8498705006331939957.a n : ℤ) = A007607 (n + 1)

end A007607

/-! ## A007607.P5018395748295623835

`A020725(A162917(n+1))`
-/

namespace A007607.P5018395748295623835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A162917 (n + 1)).toNat

end

end A007607.P5018395748295623835

namespace A007607

/-- `A020725(A162917(n+1))` -/
def P5018395748295623835.Spec : Prop :=
  ∀ n, P5018395748295623835.a n = A007607 (n + 1)

end A007607

/-! ## A007607.P340700536364562400

`eq[A057211(n+1), A073423(n)]`
-/

namespace A007607.P340700536364562400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057211 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073423 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A007607.P340700536364562400

namespace A007607

/-- `eq[A057211(n+1), A073423(n)]` -/
def P340700536364562400.Spec : Prop :=
  ∀ n, (P340700536364562400.a n : ℤ) = A007607 (n + 1)

end A007607

/-! ## A007607.P17056507224358387648

`eq[A057211(n+1), A073424(n)]`
-/

namespace A007607.P17056507224358387648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057211 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073424 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A007607.P17056507224358387648

namespace A007607

/-- `eq[A057211(n+1), A073424(n)]` -/
def P17056507224358387648.Spec : Prop :=
  ∀ n, (P17056507224358387648.a n : ℤ) = A007607 (n + 1)

end A007607

/-! ## A007607.P14562185029446606269

`eq[A057212(n+1), A123110(n)]`
-/

namespace A007607.P14562185029446606269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057212 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123110 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A007607.P14562185029446606269

namespace A007607

/-- `eq[A057212(n+1), A123110(n)]` -/
def P14562185029446606269.Spec : Prop :=
  ∀ n, (P14562185029446606269.a n : ℤ) = A007607 (n + 1)

end A007607

/-! ## A007607.P4967290038921516308

`eq[A073423(n), A122759(n+1)]`
-/

namespace A007607.P4967290038921516308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073423 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122759 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A007607.P4967290038921516308

namespace A007607

/-- `eq[A073423(n), A122759(n+1)]` -/
def P4967290038921516308.Spec : Prop :=
  ∀ n, (P4967290038921516308.a n : ℤ) = A007607 (n + 1)

end A007607

/-! ## A007607.P10820808621430146858

`eq[A073424(n), A122759(n+1)]`
-/

namespace A007607.P10820808621430146858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073424 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122759 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A007607.P10820808621430146858

namespace A007607

/-- `eq[A073424(n), A122759(n+1)]` -/
def P10820808621430146858.Spec : Prop :=
  ∀ n, (P10820808621430146858.a n : ℤ) = A007607 (n + 1)

end A007607

/-! ## A007607.P6857262271169854368

`eq[A073423(n), A203905(n+1)]`
-/

namespace A007607.P6857262271169854368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073423 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203905 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A007607.P6857262271169854368

namespace A007607

/-- `eq[A073423(n), A203905(n+1)]` -/
def P6857262271169854368.Spec : Prop :=
  ∀ n, (P6857262271169854368.a n : ℤ) = A007607 (n + 1)

end A007607

/-! ## A007607.P17116546380496529689

`eq[A073424(n), A203905(n+1)]`
-/

namespace A007607.P17116546380496529689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073424 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203905 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A007607.P17116546380496529689

namespace A007607

/-- `eq[A073424(n), A203905(n+1)]` -/
def P17116546380496529689.Spec : Prop :=
  ∀ n, (P17116546380496529689.a n : ℤ) = A007607 (n + 1)

end A007607

/-! ## A007607.P8312835709115507137

`eq[A132749(n), A155997(n)]`
-/

namespace A007607.P8312835709115507137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132749 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155997 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A007607.P8312835709115507137

namespace A007607

/-- `eq[A132749(n), A155997(n)]` -/
def P8312835709115507137.Spec : Prop :=
  ∀ n, (P8312835709115507137.a n : ℤ) = A007607 (n + 1)

end A007607

/-! ## A007607.P17778991100809188017

`eq[A155998(n), A206735(n)]`
-/

namespace A007607.P17778991100809188017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155998 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206735 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A007607.P17778991100809188017

namespace A007607

/-- `eq[A155998(n), A206735(n)]` -/
def P17778991100809188017.Spec : Prop :=
  ∀ n, (P17778991100809188017.a n : ℤ) = A007607 (n + 1)

end A007607

/-! ## A007607.P13157523110363452656

`A064788(2*A064788(n+1))`
-/

namespace A007607.P13157523110363452656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064788 (2 * A064788 (n + 1)).toNat

end

end A007607.P13157523110363452656

namespace A007607

/-- `A064788(2*A064788(n+1))` -/
def P13157523110363452656.Spec : Prop :=
  ∀ n, P13157523110363452656.a n = A007607 (n + 1)

end A007607

/-! ## A007607.P10700572412842565514

`A064788(A064788(n+1)+A064788(n+1))`
-/

namespace A007607.P10700572412842565514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064788 (A064788 (n + 1) + A064788 (n + 1)).toNat

end

end A007607.P10700572412842565514

namespace A007607

/-- `A064788(A064788(n+1)+A064788(n+1))` -/
def P10700572412842565514.Spec : Prop :=
  ∀ n, P10700572412842565514.a n = A007607 (n + 1)

end A007607

/-!
# A007608: Nonnegative integers in base -4.

The programs for A007608, there is no canonical definition to state claims against.
-/

/-! ## A007608.P876115051693046075

`A057946(A177505(n))`
-/

namespace A007608.P876115051693046075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057946 (A177505 n).toNat

end

end A007608.P876115051693046075

/-! ## A007608.P16356575788249496482

`∑{p}[A018646(n+1), #-1]`
-/

namespace A007608.P16356575788249496482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018646 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, ((p : ℤ) - 1)

end

end A007608.P16356575788249496482

/-! ## A007608.P15807532393943490576

`A095013(A286863(n))+n`
-/

namespace A007608.P15807532393943490576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095013 (A286863 n).toNat + (n : ℤ)

end

end A007608.P15807532393943490576

/-! ## A007608.P3707037223976874068

`∑[A116609(A323859(n)²)]`
-/

namespace A007608.P3707037223976874068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116609 (A323859 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007608.P3707037223976874068

/-!
# A007609: Values taken by the sigma function A000203, listed with multiplicity and in ascending order.

The programs for A007609, there is no canonical definition to state claims against.
-/

/-! ## A007609.P2993981886437997946

`∑{d}[A085790(n+1), #]`
-/

namespace A007609.P2993981886437997946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085790 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A007609.P2993981886437997946

/-! ## A007609.P4900605024129487147

`A000203(A085790(n+1))`
-/

namespace A007609.P4900605024129487147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A085790 (n + 1)).toNat

end

end A007609.P4900605024129487147

/-! ## A007609.P14047486619967322234

`A097325(3*n+2)+A039653(A085790(n+1))`
-/

namespace A007609.P14047486619967322234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097325 (3 * n + 2) + A039653 (A085790 (n + 1)).toNat

end

end A007609.P14047486619967322234

/-! ## A007609.P15867057155138459809

`A039653(A085790(n+1))+A008966(A385192(2*(n+1)))`
-/

namespace A007609.P15867057155138459809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039653 (A085790 (n + 1)).toNat + A008966 (A385192 (2 * (n + 1))).toNat

end

end A007609.P15867057155138459809

/-! ## A007609.P2087835000925634220

`A039653(A085790(n+1))+A003557(A385192(n+1))`
-/

namespace A007609.P2087835000925634220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039653 (A085790 (n + 1)).toNat + A003557 (A385192 (n + 1)).toNat

end

end A007609.P2087835000925634220

/-! ## A007609.P13943444943824908088

`A002024(eq[A002024(n+1), A245093(n+1)]+1)`
-/

namespace A007609.P13943444943824908088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245093 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A007609.P13943444943824908088

/-! ## A007609.P12686640031178177425

`A003056(eq[A003056(n), A245093(n+1)])`
-/

namespace A007609.P12686640031178177425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245093 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A007609.P12686640031178177425

/-! ## A007609.P14821567474996884886

`A272172(A084849(n+1)-A085790(n+1))`
-/

namespace A007609.P14821567474996884886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272172 (A084849 (n + 1) - A085790 (n + 1)).toNat

end

end A007609.P14821567474996884886

/-!
# A007610: Sum of n consecutive primes starting at a(n) is prime (or 0 if impossible).

The programs for A007610, there is no canonical definition to state claims against.
-/

/-! ## A007610.P7055797938400525810

`A068066(n+1)%A134067(A287748(n+1))`
-/

namespace A007610.P7055797938400525810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A068066 (n + 1)) (A134067 (A287748 (n + 1)).toNat)

end

end A007610.P7055797938400525810

/-! ## A007610.P14138025387761205484

`(2-A054977(A070281(n+1)))*A068066(n+1)`
-/

namespace A007610.P14138025387761205484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A054977 (A070281 (n + 1)).toNat) * A068066 (n + 1)

end

end A007610.P14138025387761205484

/-! ## A007610.P2854880102620242841

`A068066(A054977(n)+n)%A000124(A070281(n+1))`
-/

namespace A007610.P2854880102620242841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A068066 (A054977 n + (n : ℤ)).toNat) (A000124 (A070281 (n + 1)).toNat)

end

end A007610.P2854880102620242841

/-!
# A007611: a(n) = n! + 2^n.

The programs for A007611, the canonical program `A007611.P4308921465689266201` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A007611 has offset 0).

The definition of A007611 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n!+2^n` (program `A007611.P4308921465689266201`, by `A007611.P4308921465689266201.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A007611.P17028932978472869753

`2^n+n!`
-/

namespace A007611.P17028932978472869753
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n + Nat.factorial n

end

end A007611.P17028932978472869753

namespace A007611

/-- `2^n+n!` -/
def P17028932978472869753.Spec : Prop :=
  ∀ n, (P17028932978472869753.a n : ℤ) = A007611 n

theorem P17028932978472869753.correct : P17028932978472869753.Spec := by
  intro n
  simp only [A007611, Nat.add_sub_cancel, A007611.P17028932978472869753.a, A007611.P4308921465689266201.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A007611

/-! ## A007611.P4308921465689266201

`n!+2^n`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A007611

/-- `n!+2^n` -/
def P4308921465689266201.Spec : Prop :=
  ∀ n, (P4308921465689266201.a n : ℤ) = A007611 n

theorem P4308921465689266201.correct : P4308921465689266201.Spec := by
  intro n
  simp only [A007611]

end A007611

/-! ## A007611.P3492427346722670739

`(n+4)*a(n-1)-4*n*a(n-2)+(4*n-8)*a(n-3)` with `a(0)=2, a(1)=3, a(2)=6`
-/

namespace A007611.P3492427346722670739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3, 6] fun n a =>
  (n + 4 : ℤ) * a (n - 1) - (4 * n : ℤ) * a (n - 2) + ((4 * n : ℤ) - 8) * a (n - 3)

end

end A007611.P3492427346722670739

namespace A007611

/-- `(n+4)*a(n-1)-4*n*a(n-2)+(4*n-8)*a(n-3)` -/
def P3492427346722670739.Spec : Prop :=
  ∀ n, P3492427346722670739.a n = A007611 n

end A007611

/-! ## A007611.P15609848821783609448

`A000079(n)+A000142(n)`
-/

namespace A007611.P15609848821783609448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n + A000142 n

end

end A007611.P15609848821783609448

namespace A007611

/-- `A000079(n)+A000142(n)` -/
def P15609848821783609448.Spec : Prop :=
  ∀ n, P15609848821783609448.a n = A007611 n

end A007611

/-! ## A007611.P3638805704891301374

`∏[round(1/acot(n))]+2^n`
-/

namespace A007611.P3638805704891301374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (1 / SequenceMachineLib.acot (n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j + (2 ^ n : ℤ)

end

end A007611.P3638805704891301374

namespace A007611

/-- `∏[round(1/acot(n))]+2^n` -/
def P3638805704891301374.Spec : Prop :=
  ∀ n, P3638805704891301374.a n = A007611 n

end A007611

/-! ## A007611.P8336873461814534150

`∏[ceil(abs(γ-n))]+2^n`
-/

namespace A007611.P8336873461814534150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈|Real.eulerMascheroniConstant - (n : ℝ)|⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j + (2 ^ n : ℤ)

end

end A007611.P8336873461814534150

namespace A007611

/-- `∏[ceil(abs(γ-n))]+2^n` -/
def P8336873461814534150.Spec : Prop :=
  ∀ n, P8336873461814534150.a n = A007611 n

end A007611

/-! ## A007611.P4960753839594978248

`record[ratio[A152924(n)]+1]`
-/

namespace A007611.P4960753839594978248
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152924 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ) + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A007611.P4960753839594978248

namespace A007611

/-- `record[ratio[A152924(n)]+1]` -/
def P4960753839594978248.Spec : Prop :=
  ∀ n, P4960753839594978248.a n = (A007611 n : ℚ)

end A007611

/-! ## A007611.P4612732538157134080

`root(A127986(n)+1, 2)²`
-/

namespace A007611.P4612732538157134080
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((A127986 n + 1 : ℝ) ^ (1 / (2 : ℝ))) ^ 2

end

end A007611.P4612732538157134080

namespace A007611

/-- `root(A127986(n)+1, 2)²` -/
def P4612732538157134080.Spec : Prop :=
  ∀ n, P4612732538157134080.a n = (A007611 n : ℝ)

end A007611

/-! ## A007611.P2437036069382592844

`Δ[A003422(n)+A000051(n)]`
-/

namespace A007611.P2437036069382592844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003422 n + A000051 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A007611.P2437036069382592844

namespace A007611

/-- `Δ[A003422(n)+A000051(n)]` -/
def P2437036069382592844.Spec : Prop :=
  ∀ n, P2437036069382592844.a n = A007611 n

end A007611

/-! ## A007611.P2296649485788733730

`Δ[A003422(n)+A000079(n)]`
-/

namespace A007611.P2296649485788733730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003422 n + A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A007611.P2296649485788733730

namespace A007611

/-- `Δ[A003422(n)+A000079(n)]` -/
def P2296649485788733730.Spec : Prop :=
  ∀ n, P2296649485788733730.a n = A007611 n

end A007611

/-!
# A007612: a(n+1) = a(n) + digital root (A010888) of a(n).

The programs for A007612, the canonical program `A007612.P4750525132977936897` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A007612 has offset 1).

The definition of A007612 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A007612.P4750525132977936897

`∑[dr(2*a(n-1))]` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A007612

/-- `∑[dr(2*a(n-1))]` -/
def P4750525132977936897.Spec : Prop :=
  ∀ n, (P4750525132977936897.a n : ℤ) = A007612 (n + 1)

theorem P4750525132977936897.correct : P4750525132977936897.Spec := by
  intro n
  simp only [A007612, Nat.add_sub_cancel]

end A007612

/-! ## A007612.P14448132707913389794

`∑[9-a(n-3)]` with `a(0)=1, a(1)=1, a(2)=2, a(3)=4`
-/

namespace A007612.P14448132707913389794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2, 4] fun n f1 =>
  9 - f1 (n - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007612.P14448132707913389794

namespace A007612

/-- `∑[9-a(n-3)]` -/
def P14448132707913389794.Spec : Prop :=
  ∀ n, P14448132707913389794.a n = A007612 (n + 1)

end A007612

/-! ## A007612.P9725031985613100232

`a(n-1)+dr(a(n-1))` with `a(0)=1`
-/

namespace A007612.P9725031985613100232
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + SequenceMachineLib.digitalRoot (a (n - 1) : ℤ)

end

end A007612.P9725031985613100232

namespace A007612

/-- `a(n-1)+dr(a(n-1))` -/
def P9725031985613100232.Spec : Prop :=
  ∀ n, (P9725031985613100232.a n : ℤ) = A007612 (n + 1)

end A007612

/-! ## A007612.P5201514553083991287

`a(n-1)+a(n-1)%9` with `a(0)=1`
-/

namespace A007612.P5201514553083991287
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + a (n - 1) % 9

end

end A007612.P5201514553083991287

namespace A007612

/-- `a(n-1)+a(n-1)%9` -/
def P5201514553083991287.Spec : Prop :=
  ∀ n, (P5201514553083991287.a n : ℤ) = A007612 (n + 1)

end A007612

/-! ## A007612.P8611036903828090855

`a(n-1)--a(n-1)%9` with `a(0)=1`
-/

namespace A007612.P8611036903828090855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) - Int.tmod (-a (n - 1)) 9

end

end A007612.P8611036903828090855

namespace A007612

/-- `a(n-1)--a(n-1)%9` -/
def P8611036903828090855.Spec : Prop :=
  ∀ n, P8611036903828090855.a n = A007612 (n + 1)

end A007612

/-! ## A007612.P6886457647480541415

`dr(a(n-1))-floor(-a(n-1))` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A007612.P6886457647480541415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (SequenceMachineLib.digitalRoot (a (n - 1)) : ℤ) - (-a (n - 1))

end

end A007612.P6886457647480541415

namespace A007612

/-- `dr(a(n-1))-floor(-a(n-1))` -/
def P6886457647480541415.Spec : Prop :=
  ∀ n, P6886457647480541415.a n = A007612 (n + 1)

end A007612

/-! ## A007612.P2157690891602430256

`∑[A029898(n)]`
-/

namespace A007612.P2157690891602430256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029898 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007612.P2157690891602430256

namespace A007612

/-- `∑[A029898(n)]` -/
def P2157690891602430256.Spec : Prop :=
  ∀ n, P2157690891602430256.a n = A007612 (n + 1)

end A007612

/-! ## A007612.P9742301950268433418

`∑[dr(A004207(n))]`
-/

namespace A007612.P9742301950268433418
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A004207 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007612.P9742301950268433418

namespace A007612

/-- `∑[dr(A004207(n))]` -/
def P9742301950268433418.Spec : Prop :=
  ∀ n, (P9742301950268433418.a n : ℤ) = A007612 (n + 1)

end A007612

/-! ## A007612.P15904547323023128977

`∑[dr(A065075(n+1))]`
-/

namespace A007612.P15904547323023128977
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A065075 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007612.P15904547323023128977

namespace A007612

/-- `∑[dr(A065075(n+1))]` -/
def P15904547323023128977.Spec : Prop :=
  ∀ n, (P15904547323023128977.a n : ℤ) = A007612 (n + 1)

end A007612

/-! ## A007612.P1965172784774687915

`A153130(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A007612.P1965172784774687915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A153130 (n - 1) + a (n - 1)

end

end A007612.P1965172784774687915

namespace A007612

/-- `A153130(n-1)+a(n-1)` -/
def P1965172784774687915.Spec : Prop :=
  ∀ n, P1965172784774687915.a n = A007612 (n + 1)

end A007612

/-! ## A007612.P15843153108162736970

`A016084(n+1)-A146501(n)`
-/

namespace A007612.P15843153108162736970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016084 (n + 1) - A146501 n

end

end A007612.P15843153108162736970

namespace A007612

/-- `A016084(n+1)-A146501(n)` -/
def P15843153108162736970.Spec : Prop :=
  ∀ n, P15843153108162736970.a n = A007612 (n + 1)

end A007612

/-! ## A007612.P3346214708935670254

`A193910(n+1)-A084104(n)`
-/

namespace A007612.P3346214708935670254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193910 (n + 1) - A084104 n

end

end A007612.P3346214708935670254

namespace A007612

/-- `A193910(n+1)-A084104(n)` -/
def P3346214708935670254.Spec : Prop :=
  ∀ n, P3346214708935670254.a n = A007612 (n + 1)

end A007612

/-! ## A007612.P1411983793908188372

`A130917(n+2)`
-/

namespace A007612.P1411983793908188372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130917 (n + 2)

end

end A007612.P1411983793908188372

namespace A007612

/-- `A130917(n+2)` -/
def P1411983793908188372.Spec : Prop :=
  ∀ n, P1411983793908188372.a n = A007612 (n + 1)

end A007612

/-! ## A007612.P8154723674850740516

`A016084(n+2)-9`
-/

namespace A007612.P8154723674850740516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016084 (n + 2) - 9

end

end A007612.P8154723674850740516

namespace A007612

/-- `A016084(n+2)-9` -/
def P8154723674850740516.Spec : Prop :=
  ∀ n, P8154723674850740516.a n = A007612 (n + 1)

end A007612

/-! ## A007612.P3262426543951062010

`∑[A154529(n+1)]-4`
-/

namespace A007612.P3262426543951062010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154529 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 4

end

end A007612.P3262426543951062010

namespace A007612

/-- `∑[A154529(n+1)]-4` -/
def P3262426543951062010.Spec : Prop :=
  ∀ n, P3262426543951062010.a n = A007612 (n + 1)

end A007612

/-! ## A007612.P16185487414743159743

`∑[A146501(n+3)]-4`
-/

namespace A007612.P16185487414743159743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146501 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 4

end

end A007612.P16185487414743159743

namespace A007612

/-- `∑[A146501(n+3)]-4` -/
def P16185487414743159743.Spec : Prop :=
  ∀ n, P16185487414743159743.a n = A007612 (n + 1)

end A007612

/-! ## A007612.P7395766776681331735

`A064806(a(n-1))` with `a(0)=1`
-/

namespace A007612.P7395766776681331735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A064806 (a (n - 1)).toNat

end

end A007612.P7395766776681331735

namespace A007612

/-- `A064806(a(n-1))` -/
def P7395766776681331735.Spec : Prop :=
  ∀ n, P7395766776681331735.a n = A007612 (n + 1)

end A007612

/-! ## A007612.P12996952865932524472

`A010878(a(n-1))+a(n-1)` with `a(0)=1`
-/

namespace A007612.P12996952865932524472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A010878 (a (n - 1)).toNat + a (n - 1)

end

end A007612.P12996952865932524472

namespace A007612

/-- `A010878(a(n-1))+a(n-1)` -/
def P12996952865932524472.Spec : Prop :=
  ∀ n, P12996952865932524472.a n = A007612 (n + 1)

end A007612

/-! ## A007612.P17479062449796259127

`A010888(a(n-1))+a(n-1)` with `a(0)=1`
-/

namespace A007612.P17479062449796259127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A010888 (a (n - 1)).toNat + a (n - 1)

end

end A007612.P17479062449796259127

namespace A007612

/-- `A010888(a(n-1))+a(n-1)` -/
def P17479062449796259127.Spec : Prop :=
  ∀ n, P17479062449796259127.a n = A007612 (n + 1)

end A007612

/-! ## A007612.P14089399773990035741

`A070692(a(n-1))+a(n-1)` with `a(0)=1`
-/

namespace A007612.P14089399773990035741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A070692 (a (n - 1)).toNat + a (n - 1)

end

end A007612.P14089399773990035741

namespace A007612

/-- `A070692(a(n-1))+a(n-1)` -/
def P14089399773990035741.Spec : Prop :=
  ∀ n, P14089399773990035741.a n = A007612 (n + 1)

end A007612

/-!
# A007613: a(n) = (8^n + 2*(-1)^n)/3.

The programs for A007613, the canonical program `A007613.P13559308010256543489` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A007613 has offset 0).

The definition of A007613 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(8^n+2*(-1)^n)/3` (program `A007613.P3602354495194231559`, by `A007613.P3602354495194231559.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A007613.P13559308010256543489

`8*a(n-1)+6*(-1)^n` with `a(0)=1`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A007613

/-- `8*a(n-1)+6*(-1)^n` -/
def P13559308010256543489.Spec : Prop :=
  ∀ n, P13559308010256543489.a n = A007613 n

theorem P13559308010256543489.correct : P13559308010256543489.Spec := by
  intro n
  simp only [A007613]

end A007613

/-! ## A007613.P1509832034545380320

`A078008(3*n)`
-/

namespace A007613.P1509832034545380320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078008 (3 * n)

end

end A007613.P1509832034545380320

namespace A007613

/-- `A078008(3*n)` -/
def P1509832034545380320.Spec : Prop :=
  ∀ n, P1509832034545380320.a n = A007613 n

end A007613

/-! ## A007613.P3602354495194231559

`(8^n+2*(-1)^n)/3`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A007613.P3602354495194231559
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((8 ^ n : ℤ) + 2 * (-1) ^ n : ℚ) / 3

end

end A007613.P3602354495194231559

namespace A007613

/-- `(8^n+2*(-1)^n)/3` -/
def P3602354495194231559.Spec : Prop :=
  ∀ n, P3602354495194231559.a n = (A007613 n : ℚ)

theorem P3602354495194231559.correct : P3602354495194231559.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A007613, Nat.add_sub_cancel, A007613.P3602354495194231559.a, A007613.P13559308010256543489.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A007613, Nat.add_sub_cancel, A007613.P3602354495194231559.a, A007613.P13559308010256543489.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A007613

/-! ## A007613.P5708030028816100313

`ogf((-1+5x)/(-1+7x+8x^2))`
-/

namespace A007613.P5708030028816100313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -5] [1, -7, -8] n

end

end A007613.P5708030028816100313

namespace A007613

/-- `ogf((-1+5x)/(-1+7x+8x^2))` -/
def P5708030028816100313.Spec : Prop :=
  ∀ n, P5708030028816100313.a n = A007613 n

end A007613

/-! ## A007613.P2662820846632800655

`floor(7*a(n-1)+8*a(n-2))` with `a(0)=1, a(1)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A007613.P2662820846632800655
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  7 * a (n - 1) + 8 * a (n - 2)

end

end A007613.P2662820846632800655

namespace A007613

/-- `floor(7*a(n-1)+8*a(n-2))` -/
def P2662820846632800655.Spec : Prop :=
  ∀ n, (P2662820846632800655.a n : ℤ) = A007613 n

end A007613

/-! ## A007613.P15047842568118704319

`round(7*a(n-1)+8*a(n-2))` with `a(0)=1, a(1)=2`

`round` is left out, it is the identity on integers.
-/

namespace A007613.P15047842568118704319
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  7 * a (n - 1) + 8 * a (n - 2)

end

end A007613.P15047842568118704319

namespace A007613

/-- `round(7*a(n-1)+8*a(n-2))` -/
def P15047842568118704319.Spec : Prop :=
  ∀ n, (P15047842568118704319.a n : ℤ) = A007613 n

end A007613

/-! ## A007613.P17659789615013348031

`A024493(3*n)`
-/

namespace A007613.P17659789615013348031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024493 (3 * n)

end

end A007613.P17659789615013348031

namespace A007613

/-- `A024493(3*n)` -/
def P17659789615013348031.Spec : Prop :=
  ∀ n, P17659789615013348031.a n = A007613 n

end A007613

/-! ## A007613.P4661847597966169395

`A086953(3*n)`
-/

namespace A007613.P4661847597966169395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086953 (3 * n)

end

end A007613.P4661847597966169395

namespace A007613

/-- `A086953(3*n)` -/
def P4661847597966169395.Spec : Prop :=
  ∀ n, P4661847597966169395.a n = A007613 n

end A007613

/-! ## A007613.P9503063241322018092

`A087628(3*n)`
-/

namespace A007613.P9503063241322018092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087628 (3 * n)

end

end A007613.P9503063241322018092

namespace A007613

/-- `A087628(3*n)` -/
def P9503063241322018092.Spec : Prop :=
  ∀ n, P9503063241322018092.a n = A007613 n

end A007613

/-! ## A007613.P12048512084032240966

`A087629(3*n)`
-/

namespace A007613.P12048512084032240966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087629 (3 * n)

end

end A007613.P12048512084032240966

namespace A007613

/-- `A087629(3*n)` -/
def P12048512084032240966.Spec : Prop :=
  ∀ n, P12048512084032240966.a n = A007613 n

end A007613

/-! ## A007613.P10501800705342710723

`A130707(3*n)`
-/

namespace A007613.P10501800705342710723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130707 (3 * n)

end

end A007613.P10501800705342710723

namespace A007613

/-- `A130707(3*n)` -/
def P10501800705342710723.Spec : Prop :=
  ∀ n, P10501800705342710723.a n = A007613 n

end A007613

/-! ## A007613.P13652890071813330621

`A166249(3*n)`
-/

namespace A007613.P13652890071813330621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166249 (3 * n)

end

end A007613.P13652890071813330621

namespace A007613

/-- `A166249(3*n)` -/
def P13652890071813330621.Spec : Prop :=
  ∀ n, P13652890071813330621.a n = A007613 n

end A007613

/-! ## A007613.P13086693649557613175

`A191370(3*n)`
-/

namespace A007613.P13086693649557613175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191370 (3 * n)

end

end A007613.P13086693649557613175

namespace A007613

/-- `A191370(3*n)` -/
def P13086693649557613175.Spec : Prop :=
  ∀ n, P13086693649557613175.a n = A007613 n

end A007613

/-! ## A007613.P6860156650666115467

`A230096(6*n)`
-/

namespace A007613.P6860156650666115467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230096 (6 * n)

end

end A007613.P6860156650666115467

namespace A007613

/-- `A230096(6*n)` -/
def P6860156650666115467.Spec : Prop :=
  ∀ n, P6860156650666115467.a n = A007613 n

end A007613

/-! ## A007613.P14652162209221841174

`A111927(3*n)+1`
-/

namespace A007613.P14652162209221841174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111927 (3 * n) + 1

end

end A007613.P14652162209221841174

namespace A007613

/-- `A111927(3*n)+1` -/
def P14652162209221841174.Spec : Prop :=
  ∀ n, P14652162209221841174.a n = A007613 n

end A007613

/-! ## A007613.P6680990885838715065

`A153772(3*n)+2`
-/

namespace A007613.P6680990885838715065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153772 (3 * n) + 2

end

end A007613.P6680990885838715065

namespace A007613

/-- `A153772(3*n)+2` -/
def P6680990885838715065.Spec : Prop :=
  ∀ n, P6680990885838715065.a n = A007613 n

end A007613

/-! ## A007613.P5666493626927374895

`or(2, A132805(n))-1`
-/

namespace A007613.P5666493626927374895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (A132805 n) - 1

end

end A007613.P5666493626927374895

namespace A007613

/-- `or(2, A132805(n))-1` -/
def P5666493626927374895.Spec : Prop :=
  ∀ n, P5666493626927374895.a n = A007613 n

end A007613

/-! ## A007613.P13155418048696136213

`A103333(n)-a(n-1)` with `a(0)=1`
-/

namespace A007613.P13155418048696136213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A103333 n - a (n - 1)

end

end A007613.P13155418048696136213

namespace A007613

/-- `A103333(n)-a(n-1)` -/
def P13155418048696136213.Spec : Prop :=
  ∀ n, P13155418048696136213.a n = A007613 n

end A007613

/-! ## A007613.P6831710086896329729

`A206917(2*n)-a(n-1)` with `a(0)=1`
-/

namespace A007613.P6831710086896329729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A206917 (2 * n) - a (n - 1)

end

end A007613.P6831710086896329729

namespace A007613

/-- `A206917(2*n)-a(n-1)` -/
def P6831710086896329729.Spec : Prop :=
  ∀ n, P6831710086896329729.a n = A007613 n

end A007613

/-! ## A007613.P16866037169124786693

`A122391(3*n)-a(n-1)` with `a(0)=1`
-/

namespace A007613.P16866037169124786693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A122391 (3 * n) - a (n - 1)

end

end A007613.P16866037169124786693

namespace A007613

/-- `A122391(3*n)-a(n-1)` -/
def P16866037169124786693.Spec : Prop :=
  ∀ n, P16866037169124786693.a n = A007613 n

end A007613

/-!
# A007614: All values attained by the phi(n) function, in ascending order.

The programs for A007614, there is no canonical definition to state claims against.
-/

/-! ## A007614.P2183453628479291499

`A000010(A032447(n+1))`
-/

namespace A007614.P2183453628479291499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A032447 (n + 1)).toNat

end

end A007614.P2183453628479291499

/-! ## A007614.P7808870694581939943

`A132952(lcm(2, A032447(n+1)))`
-/

namespace A007614.P7808870694581939943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132952 (Int.lcm 2 (A032447 (n + 1)))

end

end A007614.P7808870694581939943

/-! ## A007614.P16595346539705632255

`A039649(A032447(n+1))-char[A061579(n)]`
-/

namespace A007614.P16595346539705632255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061579 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039649 (A032447 (n + 1)).toNat - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A007614.P16595346539705632255

/-! ## A007614.P3430505080517317744

`A039649(A032447(n+1))-A000035(2*n+1)`
-/

namespace A007614.P3430505080517317744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039649 (A032447 (n + 1)).toNat - A000035 (2 * n + 1)

end

end A007614.P3430505080517317744

/-! ## A007614.P8694322757328923914

`A039649(A032447(n+1))-(n-A014681(n))²!`
-/

namespace A007614.P8694322757328923914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039649 (A032447 (n + 1)).toNat - (Nat.factorial (((n : ℤ) - A014681 n) ^ 2).toNat : ℤ)

end

end A007614.P8694322757328923914

/-! ## A007614.P7404238195212567176

`A039649(A032447(n+1))+A008836(A001913(n+1))`
-/

namespace A007614.P7404238195212567176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039649 (A032447 (n + 1)).toNat + A008836 (A001913 (n + 1)).toNat

end

end A007614.P7404238195212567176

/-! ## A007614.P9974256571924852403

`A039649(A032447(n+1))+A008836(A097443(n+1))`
-/

namespace A007614.P9974256571924852403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039649 (A032447 (n + 1)).toNat + A008836 (A097443 (n + 1)).toNat

end

end A007614.P9974256571924852403

/-! ## A007614.P17400276355657208687

`A039649(A032447(n+1))+A008836(A056157(n+1))`
-/

namespace A007614.P17400276355657208687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039649 (A032447 (n + 1)).toNat + A008836 (A056157 (n + 1)).toNat

end

end A007614.P17400276355657208687

/-! ## A007614.P4137788215575852308

`A000010(A206225(n+1))`
-/

namespace A007614.P4137788215575852308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A206225 (n + 1)).toNat

end

end A007614.P4137788215575852308

/-!
# A007615: Primes with unique period length (the periods are given in A007498).

The programs for A007615, there is no canonical definition to state claims against.
-/

/-! ## A007615.P5287133862509935045

`A061075(A007498(n+1))`
-/

namespace A007615.P5287133862509935045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061075 (A007498 (n + 1)).toNat

end

end A007615.P5287133862509935045

/-!
# A007616: Palindromic reflectable primes.

The programs for A007616, there is no canonical definition to state claims against.
-/

/-! ## A007616.P7116140039588132767

`∩[A002385(n+1), A125308(n+1)]`
-/

namespace A007616.P7116140039588132767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002385 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125308 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A007616.P7116140039588132767

/-! ## A007616.P4205624379628979624

`∩[A062687(n+1), A125308(n+1)]`
-/

namespace A007616.P4205624379628979624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062687 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125308 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A007616.P4205624379628979624

/-! ## A007616.P8205550457620218470

`∩[A072299(n+1), A125308(n+1)]`
-/

namespace A007616.P8205550457620218470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072299 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125308 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A007616.P8205550457620218470

/-! ## A007616.P7372120230092860518

`∩[A080716(n+1), A125308(n+1)]`
-/

namespace A007616.P7372120230092860518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080716 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125308 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A007616.P7372120230092860518

/-! ## A007616.P9481551738970977999

`∩[A083137(n+1), A125308(n+1)]`
-/

namespace A007616.P9481551738970977999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083137 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125308 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A007616.P9481551738970977999

/-! ## A007616.P7226711462286506520

`∩[A125308(n+1), A169829(n+1)]`
-/

namespace A007616.P7226711462286506520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125308 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169829 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A007616.P7226711462286506520

/-! ## A007616.P12891365516391331795

`∩[A125308(n+1), A188650(n+1)]`
-/

namespace A007616.P12891365516391331795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125308 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188650 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A007616.P12891365516391331795

/-! ## A007616.P15187245467039856012

`∩[A125308(n+1), A265641(n+1)]`
-/

namespace A007616.P15187245467039856012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125308 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265641 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A007616.P15187245467039856012

/-! ## A007616.P862010895196462596

`∩[A125308(n+1), A324989(n+1)]`
-/

namespace A007616.P862010895196462596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125308 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324989 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A007616.P862010895196462596

/-! ## A007616.P5729719104869242831

`∩[A125308(n+1), A327325(n+1)]`
-/

namespace A007616.P5729719104869242831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125308 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327325 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A007616.P5729719104869242831

/-!
# A007617: Values not in range of Euler phi function.

The programs for A007617, the canonical program `A007617.P12649734713111644015` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A007617 has offset 1).

The definition of A007617 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A007617.P4397968958467771386

`eq[1, A322310(n+1)]+1`
-/

namespace A007617.P4397968958467771386
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322310 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A007617.P4397968958467771386

namespace A007617

/-- `eq[1, A322310(n+1)]+1` -/
def P4397968958467771386.Spec : Prop :=
  ∀ n, (P4397968958467771386.a n : ℤ) = A007617 (n + 1)

end A007617

/-! ## A007617.P5513001285288660739

`lt[A323169(n+1), 1]+1`
-/

namespace A007617.P5513001285288660739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323169 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A007617.P5513001285288660739

namespace A007617

/-- `lt[A323169(n+1), 1]+1` -/
def P5513001285288660739.Spec : Prop :=
  ∀ n, (P5513001285288660739.a n : ℤ) = A007617 (n + 1)

end A007617

/-! ## A007617.P13291070110938017995

`A083534(n)+a(n-1)` with `a(0)=3`
-/

namespace A007617.P13291070110938017995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A083534 n + a (n - 1)

end

end A007617.P13291070110938017995

namespace A007617

/-- `A083534(n)+a(n-1)` -/
def P13291070110938017995.Spec : Prop :=
  ∀ n, P13291070110938017995.a n = A007617 (n + 1)

end A007617

/-! ## A007617.P12649734713111644015

`comp[A000010(n+1)-1]+1`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A007617

/-- `comp[A000010(n+1)-1]+1` -/
def P12649734713111644015.Spec : Prop :=
  ∀ n, (P12649734713111644015.a n : ℤ) = A007617 (n + 1)

theorem P12649734713111644015.correct : P12649734713111644015.Spec := by
  intro n
  simp only [A007617, Nat.add_sub_cancel]

end A007617

/-! ## A007617.P14105608068487318617

`comp[A002202(n+1)-1]+1`
-/

namespace A007617.P14105608068487318617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002202 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A007617.P14105608068487318617

namespace A007617

/-- `comp[A002202(n+1)-1]+1` -/
def P14105608068487318617.Spec : Prop :=
  ∀ n, (P14105608068487318617.a n : ℤ) = A007617 (n + 1)

end A007617

/-! ## A007617.P13712283886485128244

`∪[A005277(n+1), A144396(n+1)]`
-/

namespace A007617.P13712283886485128244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005277 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144396 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A007617.P13712283886485128244

namespace A007617

/-- `∪[A005277(n+1), A144396(n+1)]` -/
def P13712283886485128244.Spec : Prop :=
  ∀ n, (P13712283886485128244.a n : ℤ) = A007617 (n + 1)

end A007617

/-! ## A007617.P1991041992816015662

`comp[A000010(n+1)%A000203(n+1)]`
-/

namespace A007617.P1991041992816015662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000010 (n + 1)) (A000203 (n + 1))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A007617.P1991041992816015662

namespace A007617

/-- `comp[A000010(n+1)%A000203(n+1)]` -/
def P1991041992816015662.Spec : Prop :=
  ∀ n, (P1991041992816015662.a n : ℤ) = A007617 (n + 1)

end A007617

/-! ## A007617.P16292160685653646039

`eq[A069932(n+1), A070633(n+1)]+1`
-/

namespace A007617.P16292160685653646039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069932 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070633 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A007617.P16292160685653646039

namespace A007617

/-- `eq[A069932(n+1), A070633(n+1)]+1` -/
def P16292160685653646039.Spec : Prop :=
  ∀ n, (P16292160685653646039.a n : ℤ) = A007617 (n + 1)

end A007617

/-! ## A007617.P16028474084419469900

`comp[C(2, A020639(n+1))*A000010(n+1)]`
-/

namespace A007617.P16028474084419469900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose 2 (A020639 (n + 1)).toNat : ℤ) * A000010 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A007617.P16028474084419469900

namespace A007617

/-- `comp[C(2, A020639(n+1))*A000010(n+1)]` -/
def P16028474084419469900.Spec : Prop :=
  ∀ n, (P16028474084419469900.a n : ℤ) = A007617 (n + 1)

end A007617

/-! ## A007617.P3112703631518998590

`eq[A319701(2*n+1), A322311(n+2)]+2`
-/

namespace A007617.P3112703631518998590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319701 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322311 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2

end

end A007617.P3112703631518998590

namespace A007617

/-- `eq[A319701(2*n+1), A322311(n+2)]+2` -/
def P3112703631518998590.Spec : Prop :=
  ∀ n, (P3112703631518998590.a n : ℤ) = A007617 (n + 1)

end A007617

/-! ## A007617.P2828525512853381224

`∑[abs(Δ[comp[A000010(n+1)]])]`
-/

namespace A007617.P2828525512853381224
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(f2 (n + 1) : ℤ) - (f2 n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007617.P2828525512853381224

namespace A007617

/-- `∑[abs(Δ[comp[A000010(n+1)]])]` -/
def P2828525512853381224.Spec : Prop :=
  ∀ n, P2828525512853381224.a n = A007617 (n + 1)

end A007617

/-! ## A007617.P17679081086727190945

`∑[dr(Δ[comp[A000010(n+2)]])]`
-/

namespace A007617.P17679081086727190945
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 2)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007617.P17679081086727190945

namespace A007617

/-- `∑[dr(Δ[comp[A000010(n+2)]])]` -/
def P17679081086727190945.Spec : Prop :=
  ∀ n, (P17679081086727190945.a n : ℤ) = A007617 (n + 1)

end A007617

/-! ## A007617.P16387067691896232911

`∑[A000041(Δ[comp[A000010(n+1)]])]`
-/

namespace A007617.P16387067691896232911
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007617.P16387067691896232911

namespace A007617

/-- `∑[A000041(Δ[comp[A000010(n+1)]])]` -/
def P16387067691896232911.Spec : Prop :=
  ∀ n, P16387067691896232911.a n = A007617 (n + 1)

end A007617

/-! ## A007617.P5149013495456015604

`∑[A005117(Δ[comp[A000010(n+1)]])]`
-/

namespace A007617.P5149013495456015604
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007617.P5149013495456015604

namespace A007617

/-- `∑[A005117(Δ[comp[A000010(n+1)]])]` -/
def P5149013495456015604.Spec : Prop :=
  ∀ n, P5149013495456015604.a n = A007617 (n + 1)

end A007617

/-! ## A007617.P766499088272576887

`∑[A006530(Δ[comp[A000010(n+1)]])]`
-/

namespace A007617.P766499088272576887
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007617.P766499088272576887

namespace A007617

/-- `∑[A006530(Δ[comp[A000010(n+1)]])]` -/
def P766499088272576887.Spec : Prop :=
  ∀ n, P766499088272576887.a n = A007617 (n + 1)

end A007617

/-! ## A007617.P6227353484266122134

`∑[A014963(Δ[comp[A000010(n+1)]])]`
-/

namespace A007617.P6227353484266122134
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007617.P6227353484266122134

namespace A007617

/-- `∑[A014963(Δ[comp[A000010(n+1)]])]` -/
def P6227353484266122134.Spec : Prop :=
  ∀ n, P6227353484266122134.a n = A007617 (n + 1)

end A007617

/-! ## A007617.P1232048907785120176

`∑[A020639(Δ[comp[A000010(n+1)]])]`
-/

namespace A007617.P1232048907785120176
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007617.P1232048907785120176

namespace A007617

/-- `∑[A020639(Δ[comp[A000010(n+1)]])]` -/
def P1232048907785120176.Spec : Prop :=
  ∀ n, P1232048907785120176.a n = A007617 (n + 1)

end A007617

/-! ## A007617.P13504777663482143434

`eq[1, A316665(n+1)]+1`
-/

namespace A007617.P13504777663482143434
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316665 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A007617.P13504777663482143434

namespace A007617

/-- `eq[1, A316665(n+1)]+1` -/
def P13504777663482143434.Spec : Prop :=
  ∀ n, (P13504777663482143434.a n : ℤ) = A007617 (n + 1)

end A007617

/-! ## A007617.P8957387727826173845

`lt[A014197(n+1), 1]+1`
-/

namespace A007617.P8957387727826173845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014197 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A007617.P8957387727826173845

namespace A007617

/-- `lt[A014197(n+1), 1]+1` -/
def P8957387727826173845.Spec : Prop :=
  ∀ n, (P8957387727826173845.a n : ℤ) = A007617 (n + 1)

end A007617

/-! ## A007617.P6492914053945495132

`lt[A049283(n+1), 1]+1`
-/

namespace A007617.P6492914053945495132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049283 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A007617.P6492914053945495132

namespace A007617

/-- `lt[A049283(n+1), 1]+1` -/
def P6492914053945495132.Spec : Prop :=
  ∀ n, (P6492914053945495132.a n : ℤ) = A007617 (n + 1)

end A007617

/-!
# A007618: a(n) = a(n-1) + sum of digits of a(n-1), a(1) = 5.

The programs for A007618, the canonical program `A007618.P6018863421737465196` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A007618 has offset 1).

The definition of A007618 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A062028, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A007618.P6018863421737465196

`A062028(a(n-1))` with `a(0)=5`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A007618

/-- `A062028(a(n-1))` -/
def P6018863421737465196.Spec : Prop :=
  ∀ n, P6018863421737465196.a n = A007618 (n + 1)

theorem P6018863421737465196.correct : P6018863421737465196.Spec := by
  intro n
  simp only [A007618, Nat.add_sub_cancel]

end A007618

/-! ## A007618.P4490135129907695598

`A352375(n)+a(n-1)` with `a(0)=5`
-/

namespace A007618.P4490135129907695598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  A352375 n + a (n - 1)

end

end A007618.P4490135129907695598

namespace A007618

/-- `A352375(n)+a(n-1)` -/
def P4490135129907695598.Spec : Prop :=
  ∀ n, P4490135129907695598.a n = A007618 (n + 1)

end A007618

/-! ## A007618.P11239908192149601135

`∑[A352375(A000007(n)+n)]`
-/

namespace A007618.P11239908192149601135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352375 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007618.P11239908192149601135

namespace A007618

/-- `∑[A352375(A000007(n)+n)]` -/
def P11239908192149601135.Spec : Prop :=
  ∀ n, P11239908192149601135.a n = A007618 (n + 1)

end A007618

/-! ## A007618.P5650664311347814819

`A129888(2*n+1)-A352375(n+1)`
-/

namespace A007618.P5650664311347814819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129888 (2 * n + 1) - A352375 (n + 1)

end

end A007618.P5650664311347814819

namespace A007618

/-- `A129888(2*n+1)-A352375(n+1)` -/
def P5650664311347814819.Spec : Prop :=
  ∀ n, P5650664311347814819.a n = A007618 (n + 1)

end A007618

/-! ## A007618.P880090430708093342

`A160931(a(n-1)-1)+1` with `a(0)=5`
-/

namespace A007618.P880090430708093342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  A160931 (a (n - 1) - 1).toNat + 1

end

end A007618.P880090430708093342

namespace A007618

/-- `A160931(a(n-1)-1)+1` -/
def P880090430708093342.Spec : Prop :=
  ∀ n, P880090430708093342.a n = A007618 (n + 1)

end A007618

/-! ## A007618.P10927832338502141534

`A007953(a(n-1))+a(n-1)` with `a(0)=5`
-/

namespace A007618.P10927832338502141534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  A007953 (a (n - 1)).toNat + a (n - 1)

end

end A007618.P10927832338502141534

namespace A007618

/-- `A007953(a(n-1))+a(n-1)` -/
def P10927832338502141534.Spec : Prop :=
  ∀ n, P10927832338502141534.a n = A007618 (n + 1)

end A007618

/-! ## A007618.P12645346233582933903

`record[A062028(a(A046666(n)))]` with `a(0)=5, a(1)=0`
-/

namespace A007618.P12645346233582933903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [5, 0] fun n f1 =>
  A062028 (f1 (A046666 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A007618.P12645346233582933903

namespace A007618

/-- `record[A062028(a(A046666(n)))]` -/
def P12645346233582933903.Spec : Prop :=
  ∀ n, P12645346233582933903.a n = A007618 (n + 1)

end A007618

/-! ## A007618.P3672871282897051991

`A160939(a(n-1)+1)-1` with `a(0)=5`
-/

namespace A007618.P3672871282897051991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  A160939 (a (n - 1) + 1).toNat - 1

end

end A007618.P3672871282897051991

namespace A007618

/-- `A160939(a(n-1)+1)-1` -/
def P3672871282897051991.Spec : Prop :=
  ∀ n, P3672871282897051991.a n = A007618 (n + 1)

end A007618

/-! ## A007618.P17015998961545509869

`eq[5, A036233(n+1)]+1`
-/

namespace A007618.P17015998961545509869
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036233 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A007618.P17015998961545509869

namespace A007618

/-- `eq[5, A036233(n+1)]+1` -/
def P17015998961545509869.Spec : Prop :=
  ∀ n, (P17015998961545509869.a n : ℤ) = A007618 (n + 1)

end A007618

/-!
# A007619: Wilson quotients: ((p-1)! + 1)/p where p is the n-th prime.

The programs for A007619, there is no canonical definition to state claims against.
-/

/-! ## A007619.P2131668432003990198

`A157249(p?[comp[n²]])`
-/

namespace A007619.P2131668432003990198
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157249 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A007619.P2131668432003990198

/-! ## A007619.P18227812729320237535

`A091330(n+1)+1`
-/

namespace A007619.P18227812729320237535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091330 (n + 1) + 1

end

end A007619.P18227812729320237535

/-! ## A007619.P18442298500247097763

`A157249(record[p?[∏{p}[n+1, #]]])`
-/

namespace A007619.P18442298500247097763
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), p

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157249 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A007619.P18442298500247097763

/-! ## A007619.P10777058238239636041

`A005450(p?[A001057(n)])`
-/

namespace A007619.P10777058238239636041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005450 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A007619.P10777058238239636041

/-! ## A007619.P3690720175100411714

`A005450(A000040(n+1))`
-/

namespace A007619.P3690720175100411714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005450 (A000040 (n + 1)).toNat

end

end A007619.P3690720175100411714

/-!
# A007620: Numbers m such that every k <= m is a sum of proper divisors of m (for m>1).

The programs for A007620, there is no canonical definition to state claims against.
-/

/-! ## A007620.P18081985839510679390

`record[A327832(A092671(n+1))]`
-/

namespace A007620.P18081985839510679390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327832 (A092671 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A007620.P18081985839510679390

/-! ## A007620.P10402713821436967778

`record[A327832(A138591(n+1))]`
-/

namespace A007620.P10402713821436967778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327832 (A138591 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A007620.P10402713821436967778

/-! ## A007620.P7846481792360374305

`filter[A005153(n+1), A267579(#)]`
-/

namespace A007620.P7846481792360374305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005153 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267579 (f1 j).toNat = 1) n)

end

end A007620.P7846481792360374305

/-! ## A007620.P12511790262317325019

`filter[A092671(n+1), A322860(#)]`
-/

namespace A007620.P12511790262317325019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092671 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A322860 (f1 j).toNat = 1) n)

end

end A007620.P12511790262317325019

/-! ## A007620.P3358606907336825354

`filter[A138591(n+1), A322860(#)]`
-/

namespace A007620.P3358606907336825354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138591 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A322860 (f1 j).toNat = 1) n)

end

end A007620.P3358606907336825354

/-! ## A007620.P14018020080684953433

`filter[A361102(n+1), A322860(#)]`
-/

namespace A007620.P14018020080684953433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361102 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A322860 (f1 j).toNat = 1) n)

end

end A007620.P14018020080684953433

/-! ## A007620.P5316844527064986557

`record[gcd(A120112(n), A327832(n+1))]`
-/

namespace A007620.P5316844527064986557
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A120112 n) (A327832 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A007620.P5316844527064986557

/-! ## A007620.P4651101749646129907

`∩[A005153(n+1), A092671(n+1)]`
-/

namespace A007620.P4651101749646129907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005153 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092671 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A007620.P4651101749646129907

/-! ## A007620.P4657050065077484216

`∩[A005153(n+1), A138591(n+1)]`
-/

namespace A007620.P4657050065077484216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005153 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138591 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A007620.P4657050065077484216

/-! ## A007620.P18053087703850216506

`∩[A005153(n+1), A361102(n+1)]`
-/

namespace A007620.P18053087703850216506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005153 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361102 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A007620.P18053087703850216506

/-! ## A007620.P18189093568791218090

`∩[A092671(n+1), A377929(n+1)]`
-/

namespace A007620.P18189093568791218090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092671 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377929 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A007620.P18189093568791218090

/-! ## A007620.P5093964292482748597

`∩[A361102(n+1), A377929(n+1)]`
-/

namespace A007620.P5093964292482748597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361102 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377929 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A007620.P5093964292482748597

/-! ## A007620.P16602202900491433432

`record[A327832(n+1)/A100994(n+1)]`
-/

namespace A007620.P16602202900491433432
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A327832 (n + 1) : ℚ) / (A100994 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A007620.P16602202900491433432

/-! ## A007620.P6565414448808699362

`record[gcd(A290480(n+2), A327832(n+2))]`
-/

namespace A007620.P6565414448808699362
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A290480 (n + 2)) (A327832 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A007620.P6565414448808699362

/-! ## A007620.P14626181510523460828

`record[A327832(n+1)-A100995(n+1)²]`
-/

namespace A007620.P14626181510523460828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327832 (n + 1) - A100995 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A007620.P14626181510523460828

/-! ## A007620.P3914061280166178874

`record[A327832(n+1)/A014963(n+1)²]`
-/

namespace A007620.P3914061280166178874
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A327832 (n + 1) : ℚ) / (A014963 (n + 1) ^ 2 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A007620.P3914061280166178874

/-! ## A007620.P1141526271692455752

`record[A327832(A327832(n+2)-A120112(n+1))]`
-/

namespace A007620.P1141526271692455752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327832 (A327832 (n + 2) - A120112 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A007620.P1141526271692455752

/-! ## A007620.P5478825748841103286

`record[A327832(n+1)/A327832(A006530(n+1))²]`
-/

namespace A007620.P5478825748841103286
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A327832 (n + 1) : ℚ) / (A327832 (A006530 (n + 1)).toNat ^ 2 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A007620.P5478825748841103286

/-! ## A007620.P6280142411199544049

`record[A327832(A014963(n+1)+n)]`
-/

namespace A007620.P6280142411199544049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327832 (A014963 (n + 1) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A007620.P6280142411199544049

/-! ## A007620.P12146972138318971246

`record[A327832(A100994(n+1)+n)]`
-/

namespace A007620.P12146972138318971246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327832 (A100994 (n + 1) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A007620.P12146972138318971246

/-!
# A007621: Impractical numbers: even abundant numbers (A173490) that are not practical(2) (A007620).

The programs for A007621, there is no canonical definition to state claims against.
-/

/-! ## A007621.P7250531490965814122

`A353061(n+1)%A157010(A116645(n))`
-/

namespace A007621.P7250531490965814122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A353061 (n + 1)) (A157010 (A116645 n).toNat)

end

end A007621.P7250531490965814122

/-! ## A007621.P4626835682831720906

`A353061(n+1)+A000007(A057102(n+1))`
-/

namespace A007621.P4626835682831720906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353061 (n + 1) + A000007 (A057102 (n + 1)).toNat

end

end A007621.P4626835682831720906

/-! ## A007621.P1578414295692407155

`A353061(n+1)+A007814(A069127(n+1))`
-/

namespace A007621.P1578414295692407155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353061 (n + 1) + A007814 (A069127 (n + 1)).toNat

end

end A007621.P1578414295692407155

/-! ## A007621.P9366771477304462778

`A353061(n+1)%A093472(n)`
-/

namespace A007621.P9366771477304462778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A353061 (n + 1)) (A093472 n)

end

end A007621.P9366771477304462778

/-!
# A007622: Consider Leibniz's harmonic triangle (A003506) and look at the non-boundary terms. Sequence gives numbers appearing in denominators, sorted.

The programs for A007622, there is no canonical definition to state claims against.
-/

/-! ## A007622.P2446746957392437217

`record[A243618(A243941(n+1))]`
-/

namespace A007622.P2446746957392437217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243618 (A243941 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A007622.P2446746957392437217

/-! ## A007622.P5688348578876172945

`eq[A186714(n+1), A308896(n)]`
-/

namespace A007622.P5688348578876172945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186714 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308896 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A007622.P5688348578876172945

/-! ## A007622.P2172971409613974759

`record[A129858(n+1)/A203484(n)]`
-/

namespace A007622.P2172971409613974759
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A129858 (n + 1) : ℚ) / (A203484 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A007622.P2172971409613974759

/-! ## A007622.P10972026794431360931

`lt[A097285(n+1)², A340734(n)]`
-/

namespace A007622.P10972026794431360931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097285 (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340734 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A007622.P10972026794431360931

/-! ## A007622.P8826252647964175479

`∩[A121411(n+1), A304391(n+1)]`
-/

namespace A007622.P8826252647964175479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121411 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304391 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A007622.P8826252647964175479

/-!
# A007623: Integers written in factorial base.

The programs for A007623, there is no canonical definition to state claims against.
-/

/-! ## A007623.P1812153316548526098

`A124252(n)/10`
-/

namespace A007623.P1812153316548526098
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A124252 n : ℚ) / 10

end

end A007623.P1812153316548526098

/-! ## A007623.P17793854601528755753

`A276326(A153880(n)-n)`
-/

namespace A007623.P17793854601528755753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276326 (A153880 n - (n : ℤ)).toNat

end

end A007623.P17793854601528755753

/-! ## A007623.P13511545393441947436

`A276326(record[A276009(n)]-n)`
-/

namespace A007623.P13511545393441947436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276009 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276326 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (n : ℤ)).toNat

end

end A007623.P13511545393441947436

/-! ## A007623.P13806039239233705686

`A276326(A001489(n)+record[A276009(n)])`
-/

namespace A007623.P13806039239233705686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276009 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276326 (A001489 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A007623.P13806039239233705686

/-! ## A007623.P1716146324285079920

`A276326(∑[A073575(n+1)]-A073575(n+1))`
-/

namespace A007623.P1716146324285079920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073575 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276326 (∑ j ∈ Finset.range (n + 1), f1 j - A073575 (n + 1)).toNat

end

end A007623.P1716146324285079920

/-! ## A007623.P16132370346183526989

`A049345(A351576(n))`
-/

namespace A007623.P16132370346183526989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049345 (A351576 n).toNat

end

end A007623.P16132370346183526989

/-! ## A007623.P2820327579454154162

`A001202(A277012(n)+1)`
-/

namespace A007623.P2820327579454154162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001202 (A277012 n + 1).toNat

end

end A007623.P2820327579454154162

/-! ## A007623.P12838728900661445574

`A049345(A277021(A277012(n)))`
-/

namespace A007623.P12838728900661445574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049345 (A277021 (A277012 n).toNat).toNat

end

end A007623.P12838728900661445574

/-! ## A007623.P5462253513621250063

`A085217(∑[n])`
-/

namespace A007623.P5462253513621250063
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085217 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A007623.P5462253513621250063

/-! ## A007623.P10063873791886161241

`A085221(∑[n])`
-/

namespace A007623.P10063873791886161241
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085221 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A007623.P10063873791886161241

/-! ## A007623.P11845834497203923355

`A085222(∑[n])`
-/

namespace A007623.P11845834497203923355
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085222 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A007623.P11845834497203923355

/-! ## A007623.P13065620413099668771

`A049345(A328849(n+1))/20`
-/

namespace A007623.P13065620413099668771
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049345 (A328849 (n + 1)).toNat : ℚ) / 20

end

end A007623.P13065620413099668771

/-!
# A007624: Numbers m such that the product of proper divisors of m = m^k, k>1.

The programs for A007624, the canonical program `A007624.P2362214832513877708` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A007624 has offset 1).

The definition of A007624 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9905 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A007624.P4441827206245878905

`lt[4, A123023(A000005(n+1))]+1`
-/

namespace A007624.P4441827206245878905
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123023 (A000005 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A007624.P4441827206245878905

namespace A007624

/-- `lt[4, A123023(A000005(n+1))]+1` -/
def P4441827206245878905.Spec : Prop :=
  ∀ n, (P4441827206245878905.a n : ℤ) = A007624 (n + 1)

end A007624

/-! ## A007624.P13654146809980812978

`lt[1, A035442(A000005(n+1)+2)]+1`
-/

namespace A007624.P13654146809980812978
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035442 (A000005 (n + 1) + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A007624.P13654146809980812978

namespace A007624

/-- `lt[1, A035442(A000005(n+1)+2)]+1` -/
def P13654146809980812978.Spec : Prop :=
  ∀ n, (P13654146809980812978.a n : ℤ) = A007624 (n + 1)

end A007624

/-! ## A007624.P6672971505850288612

`lt[2, A242096(A000005(n+1)+1)+1]+1`
-/

namespace A007624.P6672971505850288612
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242096 (A000005 (n + 1) + 1).toNat + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A007624.P6672971505850288612

namespace A007624

/-- `lt[2, A242096(A000005(n+1)+1)+1]+1` -/
def P6672971505850288612.Spec : Prop :=
  ∀ n, (P6672971505850288612.a n : ℤ) = A007624 (n + 1)

end A007624

/-! ## A007624.P16642794085049257364

`lt[1, A057979(A000005((n-1)%(n+1)+1)-1)]`
-/

namespace A007624.P16642794085049257364
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (A000005 (Int.tmod ((n : ℤ) - 1) (n + 1 : ℤ) + 1).toNat - 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A007624.P16642794085049257364

namespace A007624

/-- `lt[1, A057979(A000005((n-1)%(n+1)+1)-1)]` -/
def P16642794085049257364.Spec : Prop :=
  ∀ n, (P16642794085049257364.a n : ℤ) = A007624 (n + 1)

end A007624

/-! ## A007624.P2362214832513877708

`filter[A058080(n+1), A049240(#)]`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A007624

/-- `filter[A058080(n+1), A049240(#)]` -/
def P2362214832513877708.Spec : Prop :=
  ∀ n, P2362214832513877708.a n = A007624 (n + 1)

theorem P2362214832513877708.correct : P2362214832513877708.Spec := by
  intro n
  simp only [A007624, Nat.add_sub_cancel]

end A007624

/-! ## A007624.P16589176503900902020

`filter[A066423(n+1), A049240(#)]`
-/

namespace A007624.P16589176503900902020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066423 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A049240 (f1 j).toNat = 1) n)

end

end A007624.P16589176503900902020

namespace A007624

/-- `filter[A066423(n+1), A049240(#)]` -/
def P16589176503900902020.Spec : Prop :=
  ∀ n, P16589176503900902020.a n = A007624 (n + 1)

end A007624

/-! ## A007624.P12353224874412737593

`∩[A058080(n+1), A089229(n+1)]`
-/

namespace A007624.P12353224874412737593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058080 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089229 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A007624.P12353224874412737593

namespace A007624

/-- `∩[A058080(n+1), A089229(n+1)]` -/
def P12353224874412737593.Spec : Prop :=
  ∀ n, (P12353224874412737593.a n : ℤ) = A007624 (n + 1)

end A007624

/-! ## A007624.P17707014278647399155

`∩[A066423(n+1), A089229(n+1)]`
-/

namespace A007624.P17707014278647399155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066423 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089229 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A007624.P17707014278647399155

namespace A007624

/-- `∩[A066423(n+1), A089229(n+1)]` -/
def P17707014278647399155.Spec : Prop :=
  ∀ n, (P17707014278647399155.a n : ℤ) = A007624 (n + 1)

end A007624

/-! ## A007624.P7553680490289988679

`∩[A089229(n+1), A210994(n+1)]`
-/

namespace A007624.P7553680490289988679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089229 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210994 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A007624.P7553680490289988679

namespace A007624

/-- `∩[A089229(n+1), A210994(n+1)]` -/
def P7553680490289988679.Spec : Prop :=
  ∀ n, (P7553680490289988679.a n : ℤ) = A007624 (n + 1)

end A007624

/-! ## A007624.P14653477966430262509

`∩[A000037(n+1), A058080(n+1)]`
-/

namespace A007624.P14653477966430262509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000037 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058080 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A007624.P14653477966430262509

namespace A007624

/-- `∩[A000037(n+1), A058080(n+1)]` -/
def P14653477966430262509.Spec : Prop :=
  ∀ n, (P14653477966430262509.a n : ℤ) = A007624 (n + 1)

end A007624

/-! ## A007624.P4290952195427411060

`∩[A000037(n+1), A066423(n+1)]`
-/

namespace A007624.P4290952195427411060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000037 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066423 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A007624.P4290952195427411060

namespace A007624

/-- `∩[A000037(n+1), A066423(n+1)]` -/
def P4290952195427411060.Spec : Prop :=
  ∀ n, (P4290952195427411060.a n : ℤ) = A007624 (n + 1)

end A007624

/-! ## A007624.P1465725429492726269

`∩[A058080(n+1), A164514(n+1)]`
-/

namespace A007624.P1465725429492726269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058080 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164514 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A007624.P1465725429492726269

namespace A007624

/-- `∩[A058080(n+1), A164514(n+1)]` -/
def P1465725429492726269.Spec : Prop :=
  ∀ n, (P1465725429492726269.a n : ℤ) = A007624 (n + 1)

end A007624

/-! ## A007624.P17412455577101970729

`∩[A066423(n+1), A164514(n+1)]`
-/

namespace A007624.P17412455577101970729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066423 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164514 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A007624.P17412455577101970729

namespace A007624

/-- `∩[A066423(n+1), A164514(n+1)]` -/
def P17412455577101970729.Spec : Prop :=
  ∀ n, (P17412455577101970729.a n : ℤ) = A007624 (n + 1)

end A007624

/-! ## A007624.P8216328398132331047

`lt[2, A126120(∏{e}[n, #+1])]`
-/

namespace A007624.P8216328398132331047
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126120 (∏ p ∈ Nat.primeFactors (f3 n), (Nat.factorization (f3 n) p + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A007624.P8216328398132331047

namespace A007624

/-- `lt[2, A126120(∏{e}[n, #+1])]` -/
def P8216328398132331047.Spec : Prop :=
  ∀ n, (P8216328398132331047.a n : ℤ) = A007624 (n + 1)

end A007624

/-! ## A007624.P7404508507014207397

`eq[0, A159782(A032741(n))]`
-/

namespace A007624.P7404508507014207397
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159782 (A032741 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A007624.P7404508507014207397

namespace A007624

/-- `eq[0, A159782(A032741(n))]` -/
def P7404508507014207397.Spec : Prop :=
  ∀ n, (P7404508507014207397.a n : ℤ) = A007624 (n + 1)

end A007624

/-! ## A007624.P10450231396209985075

`lt[1, A057979(A319410(n)/2)]`
-/

namespace A007624.P10450231396209985075
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (SequenceMachineLib.roundAway ((A319410 n : ℚ) / 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A007624.P10450231396209985075

namespace A007624

/-- `lt[1, A057979(A319410(n)/2)]` -/
def P10450231396209985075.Spec : Prop :=
  ∀ n, (P10450231396209985075.a n : ℤ) = A007624 (n + 1)

end A007624

/-! ## A007624.P2108474364192427261

`filter[A058080(n+1), A267594(#)]`
-/

namespace A007624.P2108474364192427261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058080 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267594 (f1 j).toNat = 1) n)

end

end A007624.P2108474364192427261

namespace A007624

/-- `filter[A058080(n+1), A267594(#)]` -/
def P2108474364192427261.Spec : Prop :=
  ∀ n, P2108474364192427261.a n = A007624 (n + 1)

end A007624

/-! ## A007624.P11545095707307325710

`filter[A058080(n+1), A267635(#)]`
-/

namespace A007624.P11545095707307325710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058080 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267635 (f1 j).toNat = 1) n)

end

end A007624.P11545095707307325710

namespace A007624

/-- `filter[A058080(n+1), A267635(#)]` -/
def P11545095707307325710.Spec : Prop :=
  ∀ n, P11545095707307325710.a n = A007624 (n + 1)

end A007624

/-! ## A007624.P9470141225253966888

`filter[A066423(n+1), A267594(#)]`
-/

namespace A007624.P9470141225253966888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066423 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267594 (f1 j).toNat = 1) n)

end

end A007624.P9470141225253966888

namespace A007624

/-- `filter[A066423(n+1), A267594(#)]` -/
def P9470141225253966888.Spec : Prop :=
  ∀ n, P9470141225253966888.a n = A007624 (n + 1)

end A007624

/-! ## A007624.P17424984879806507229

`filter[A066423(n+1), A267635(#)]`
-/

namespace A007624.P17424984879806507229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066423 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267635 (f1 j).toNat = 1) n)

end

end A007624.P17424984879806507229

namespace A007624

/-- `filter[A066423(n+1), A267635(#)]` -/
def P17424984879806507229.Spec : Prop :=
  ∀ n, P17424984879806507229.a n = A007624 (n + 1)

end A007624

/-!
# A007625: Number of M-sequences from multicomplexes on at most 6 variables with no monomial of degree more than n-1.

The programs for A007625, there is no canonical definition to state claims against.
-/

/-! ## A007625.P12630648858546475182

`A007723(eq[6, A025581(n)])`
-/

namespace A007625.P12630648858546475182
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007723 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A007625.P12630648858546475182

/-! ## A007625.P16755868390870413511

`A007723(eq[7, A193739(n)])`
-/

namespace A007625.P16755868390870413511
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007723 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A007625.P16755868390870413511

/-! ## A007625.P1215925832478762394

`A007723(eq[13, A099375(n)])`
-/

namespace A007625.P1215925832478762394
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007723 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A007625.P1215925832478762394

/-! ## A007625.P16180134859595166741

`A007723(eq[7, A004736(n+1)])`
-/

namespace A007625.P16180134859595166741
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007723 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A007625.P16180134859595166741

/-! ## A007625.P7489418808469755815

`A007723(eq[11, A027293(n+1)])`
-/

namespace A007625.P7489418808469755815
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027293 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007723 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A007625.P7489418808469755815

/-!
# A007626: Sum of divisors of superabundant numbers (A004394).

The programs for A007626, there is no canonical definition to state claims against.
-/

/-! ## A007626.P9596834927232588129

`A000203(A004394(n+1))`
-/

namespace A007626.P9596834927232588129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A004394 (n + 1)).toNat

end

end A007626.P9596834927232588129

/-! ## A007626.P4349470401860114745

`A356425(A293635(n+1))`
-/

namespace A007626.P4349470401860114745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356425 (A293635 (n + 1)).toNat

end

end A007626.P4349470401860114745

/-! ## A007626.P17685244801321910354

`∑{d}[A166981(n+1), #]`
-/

namespace A007626.P17685244801321910354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166981 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A007626.P17685244801321910354

/-! ## A007626.P116048782024433376

`∑{d}[A055932(A332035(n+1)), #]`
-/

namespace A007626.P116048782024433376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055932 (A332035 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A007626.P116048782024433376

/-! ## A007626.P6440621870540805289

`∑{d}[A061799(A349607(n+1)), #]`
-/

namespace A007626.P6440621870540805289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061799 (A349607 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A007626.P6440621870540805289

/-!
# A007627: Primitive modest numbers.

The programs for A007627, there is no canonical definition to state claims against.
-/

/-! ## A007627.P4712436263646535025

`∩[A054986(n+1), A088450(n+1)]`
-/

namespace A007627.P4712436263646535025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054986 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088450 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A007627.P4712436263646535025

/-! ## A007627.P13706813438280095738

`∩[A054986(n+1), A121537(n+1)]`
-/

namespace A007627.P13706813438280095738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054986 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121537 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A007627.P13706813438280095738

/-! ## A007627.P14974135120604030417

`∩[A054986(n+1), A140297(n+1)]`
-/

namespace A007627.P14974135120604030417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054986 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140297 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A007627.P14974135120604030417

/-! ## A007627.P11583112933102625030

`∩[A054986(n+1), A196736(n+1)]`
-/

namespace A007627.P11583112933102625030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054986 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196736 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A007627.P11583112933102625030

/-! ## A007627.P6244914101594283948

`∩[A054986(n+1), A283970(n+1)]`
-/

namespace A007627.P6244914101594283948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054986 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283970 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A007627.P6244914101594283948

/-!
# A007628: Reflectable emirps.

The programs for A007628, there is no canonical definition to state claims against.
-/

/-! ## A007628.P4272050563283182368

`∩[A006567(n+1), A007284(n)]`
-/

namespace A007628.P4272050563283182368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006567 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007284 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A007628.P4272050563283182368

/-! ## A007628.P13834924669984841336

`∩[A006567(n+1), A125308(n+1)]`
-/

namespace A007628.P13834924669984841336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006567 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125308 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A007628.P13834924669984841336

/-! ## A007628.P8920020312786454339

`∩[A068893(n+1), A125308(n+1)]`
-/

namespace A007628.P8920020312786454339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068893 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125308 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A007628.P8920020312786454339

/-! ## A007628.P7229053425293872554

`∩[A109019(n+1), A125308(n+1)]`
-/

namespace A007628.P7229053425293872554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109019 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125308 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A007628.P7229053425293872554

/-! ## A007628.P5078229956177013468

`∩[A125308(n+1), A350867(n+1)]`
-/

namespace A007628.P5078229956177013468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125308 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350867 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A007628.P5078229956177013468

/-!
# A007629: Keith numbers, or Repfigit (REPlicating FIbonnaci diGIT) numbers.

The programs for A007629, there is no canonical definition to state claims against.
-/

/-! ## A007629.P299809244764119727

`A130010(n+11)`
-/

namespace A007629.P299809244764119727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130010 (n + 11)

end

end A007629.P299809244764119727

/-! ## A007629.P1212140966015636795

`A121235(A029964(n+2))`
-/

namespace A007629.P1212140966015636795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121235 (A029964 (n + 2)).toNat

end

end A007629.P1212140966015636795

/-! ## A007629.P13033819975435027470

`∩[A121235(n+1), A332111(n+1)]`
-/

namespace A007629.P13033819975435027470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121235 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332111 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A007629.P13033819975435027470

/-!
# A007630: A queens problem.

The programs for A007630, there is no canonical definition to state claims against.
-/

/-! ## A007630.P14446633096037753742

`A002562(n+9)`
-/

namespace A007630.P14446633096037753742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002562 (n + 9)

end

end A007630.P14446633096037753742

/-!
# A007631: Number of solutions to non-attacking reflecting queens problem.

The programs for A007631, there is no canonical definition to state claims against.
-/

/-! ## A007631.P15513273057479617351

`and(A332681(n+1), A332684(A225546(n+1)))`
-/

namespace A007631.P15513273057479617351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A332681 (n + 1)) (A332684 (A225546 (n + 1)).toNat)

end

end A007631.P15513273057479617351

/-! ## A007631.P1846304884459415052

`and(A059570(A026820(n+1)), A209023(3*(n+1)))`
-/

namespace A007631.P1846304884459415052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A059570 (A026820 (n + 1)).toNat) (A209023 (3 * (n + 1)))

end

end A007631.P1846304884459415052

/-!
# A007632: Numbers that are palindromic in bases 2 and 10.

The programs for A007632, there is no canonical definition to state claims against.
-/

/-! ## A007632.P4256733219972852321

`∩[A069024(n+1), A081434(n+1)]`
-/

namespace A007632.P4256733219972852321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069024 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081434 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A007632.P4256733219972852321

/-! ## A007632.P17562355999879375063

`∩[A081434(n+1), A173551(n+1)]`
-/

namespace A007632.P17562355999879375063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081434 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173551 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A007632.P17562355999879375063

/-! ## A007632.P10172679342890644776

`∩[A002113(n+1), A006995(n+1)]`
-/

namespace A007632.P10172679342890644776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006995 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A007632.P10172679342890644776

/-! ## A007632.P10748412827925070187

`∩[A006995(n+1), A069024(n+1)]`
-/

namespace A007632.P10748412827925070187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006995 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069024 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A007632.P10748412827925070187

/-! ## A007632.P17104526682543231173

`∩[A002113(n+1), A081434(n+1)]`
-/

namespace A007632.P17104526682543231173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081434 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A007632.P17104526682543231173

/-!
# A007633: Palindromic in bases 3 and 10.

The programs for A007633, there is no canonical definition to state claims against.
-/

/-! ## A007633.P1439450935250183665

`∩[A002113(n+1), A014190(n+1)]`
-/

namespace A007633.P1439450935250183665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014190 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A007633.P1439450935250183665

/-! ## A007633.P5216903488587182389

`∩[A014190(n+1), A173551(n+1)]`
-/

namespace A007633.P5216903488587182389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014190 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173551 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A007633.P5216903488587182389

/-! ## A007633.P10076799594886700992

`eq[A020485(n), A030102(n)]`
-/

namespace A007633.P10076799594886700992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020485 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030102 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A007633.P10076799594886700992

/-! ## A007633.P15128709605777014633

`eq[A030102(n), A082216(n)]`
-/

namespace A007633.P15128709605777014633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030102 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082216 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A007633.P15128709605777014633

/-!
# A007634: Numbers k such that k^2 + k + 41 is composite.

The programs for A007634, there is no canonical definition to state claims against.
-/

/-! ## A007634.P1905547626057856565

`comp[A056561(n+1)]`
-/

namespace A007634.P1905547626057856565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056561 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A007634.P1905547626057856565

/-! ## A007634.P16164475565087456921

`comp[A002837(n+1)-1]`
-/

namespace A007634.P16164475565087456921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002837 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A007634.P16164475565087456921

/-! ## A007634.P9392446172522732993

`floor(sqrt(A145292(n+1)-1))`
-/

namespace A007634.P9392446172522732993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A145292 (n + 1) - 1)

end

end A007634.P9392446172522732993

/-! ## A007634.P3788726170201951150

`A023443(comp[A002837(n+1)])`
-/

namespace A007634.P3788726170201951150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002837 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A007634.P3788726170201951150

/-! ## A007634.P17367180909562113779

`A023443(ceil(sqrt(A145292(n+1))))`
-/

namespace A007634.P17367180909562113779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 ⌈Real.sqrt (A145292 (n + 1) : ℝ)⌉.toNat

end

end A007634.P17367180909562113779

/-! ## A007634.P18340900050484189766

`abs(A024000(comp[A002837(n+1)]))`
-/

namespace A007634.P18340900050484189766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002837 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A024000 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)|

end

end A007634.P18340900050484189766

/-! ## A007634.P3694101548050338209

`A233583(comp[A002837(n+1)])`
-/

namespace A007634.P3694101548050338209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002837 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A007634.P3694101548050338209

/-!
# A007635: Primes of form n^2 + n + 17.

The programs for A007635, there is no canonical definition to state claims against.
-/

/-! ## A007635.P10818180848592041687

`A028823(n+1)²+A028823(n+1)+17`
-/

namespace A007635.P10818180848592041687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028823 (n + 1) ^ 2 + A028823 (n + 1) + 17

end

end A007635.P10818180848592041687

/-! ## A007635.P4198117210917320041

`p?[∑[2*n]+17]`
-/

namespace A007635.P4198117210917320041
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 17

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A007635.P4198117210917320041

/-! ## A007635.P16441833414335616540

`or(1, p?[n²+17+n])`
-/

namespace A007635.P16441833414335616540
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + 17 + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A007635.P16441833414335616540

/-! ## A007635.P1560618601344401265

`∏{d}[p?[n²+17+n], #]`
-/

namespace A007635.P1560618601344401265
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + 17 + n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), d

end

end A007635.P1560618601344401265

/-! ## A007635.P13316198719297228524

`∑{p}[p?[n²+17+n], #]`
-/

namespace A007635.P13316198719297228524
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + 17 + n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), p

end

end A007635.P13316198719297228524

/-! ## A007635.P2459113348129907202

`record[A020639(n²+17+n)]`
-/

namespace A007635.P2459113348129907202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n ^ 2 + 17 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A007635.P2459113348129907202

/-! ## A007635.P8063647559136194317

`record[A006530(n²+17-n)]`
-/

namespace A007635.P8063647559136194317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 ((n ^ 2 : ℤ) + (17 - (n : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A007635.P8063647559136194317

/-! ## A007635.P3914357044375812887

`record[A014963(n²+17+n)]`
-/

namespace A007635.P3914357044375812887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n ^ 2 + 17 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A007635.P3914357044375812887

/-!
# A007636: Numbers k such that k^2 + k + 17 is composite.

The programs for A007636, there is no canonical definition to state claims against.
-/

/-! ## A007636.P17002155702675940593

`comp[A028823(n+1)]`
-/

namespace A007636.P17002155702675940593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028823 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A007636.P17002155702675940593

/-! ## A007636.P4932842241311894306

`A260678(n+1)-17`
-/

namespace A007636.P4932842241311894306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260678 (n + 1) - 17

end

end A007636.P4932842241311894306

/-! ## A007636.P13816106692833650526

`comp[floor(sqrt(A007635(n+1)-17))]`
-/

namespace A007636.P13816106692833650526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A007635 (n + 1) - 17)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A007636.P13816106692833650526

/-! ## A007636.P2320858787206314045

`lt[char[A028823(n+1)], A057427(n)]`
-/

namespace A007636.P2320858787206314045
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028823 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f3 j) n

end

end A007636.P2320858787206314045

/-! ## A007636.P10718357747578852291

`A023459(A260678(n+1))`
-/

namespace A007636.P10718357747578852291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023459 (A260678 (n + 1)).toNat

end

end A007636.P10718357747578852291

/-! ## A007636.P276611018626506774

`eq[0, A010051(n²+17+n)]`
-/

namespace A007636.P276611018626506774
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n ^ 2 + 17 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A007636.P276611018626506774

/-! ## A007636.P6832149145418364200

`lt[2, A000005(n²+17+n)]`
-/

namespace A007636.P6832149145418364200
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n ^ 2 + 17 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A007636.P6832149145418364200

/-! ## A007636.P17154909636491582998

`lt[3, A336063(A001222(n²+17+n)+1)]`
-/

namespace A007636.P17154909636491582998
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336063 (A001222 (n ^ 2 + 17 + n) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A007636.P17154909636491582998

/-! ## A007636.P6757918754237788553

`eq[1, A066247(n²+17+n)]`
-/

namespace A007636.P6757918754237788553
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066247 (n ^ 2 + 17 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A007636.P6757918754237788553

/-!
# A007637: Primes of form 3*k^2 - 3*k + 23.

The programs for A007637, the canonical program `A007637.P10089372056069285516` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A007637 has offset 1).

The definition of A007637 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 286 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A007637.P10089372056069285516

`p?[∑[6*n]+23]`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A007637

/-- `p?[∑[6*n]+23]` -/
def P10089372056069285516.Spec : Prop :=
  ∀ n, (P10089372056069285516.a n : ℤ) = A007637 (n + 1)

theorem P10089372056069285516.correct : P10089372056069285516.Spec := by
  intro n
  simp only [A007637, Nat.add_sub_cancel]

end A007637

/-! ## A007637.P6389328370764858368

`or(1, p?[3*A027692(n)+2])`
-/

namespace A007637.P6389328370764858368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A027692 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A007637.P6389328370764858368

namespace A007637

/-- `or(1, p?[3*A027692(n)+2])` -/
def P6389328370764858368.Spec : Prop :=
  ∀ n, P6389328370764858368.a n = A007637 (n + 1)

end A007637

/-! ## A007637.P10529596438504959473

`A000007(n+1)+p?[3*A027692(n)+2]`
-/

namespace A007637.P10529596438504959473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A027692 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A007637.P10529596438504959473

namespace A007637

/-- `A000007(n+1)+p?[3*A027692(n)+2]` -/
def P10529596438504959473.Spec : Prop :=
  ∀ n, P10529596438504959473.a n = A007637 (n + 1)

end A007637

/-! ## A007637.P14007233388009047879

`p?[3*A027692(n)+2]*A057979(4*n)`
-/

namespace A007637.P14007233388009047879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A027692 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * A057979 (4 * n)

end

end A007637.P14007233388009047879

namespace A007637

/-- `p?[3*A027692(n)+2]*A057979(4*n)` -/
def P14007233388009047879.Spec : Prop :=
  ∀ n, P14007233388009047879.a n = A007637 (n + 1)

end A007637

/-! ## A007637.P13571625363379613935

`p?[3*A027692(n)+2]*A328580(4*n)`
-/

namespace A007637.P13571625363379613935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A027692 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * A328580 (4 * n)

end

end A007637.P13571625363379613935

namespace A007637

/-- `p?[3*A027692(n)+2]*A328580(4*n)` -/
def P13571625363379613935.Spec : Prop :=
  ∀ n, P13571625363379613935.a n = A007637 (n + 1)

end A007637

/-! ## A007637.P18028333861848494553

`p?[3*A027692(n)+2]%A001248(n+81)`
-/

namespace A007637.P18028333861848494553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A027692 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A001248 (n + 81))

end

end A007637.P18028333861848494553

namespace A007637

/-- `p?[3*A027692(n)+2]%A001248(n+81)` -/
def P18028333861848494553.Spec : Prop :=
  ∀ n, P18028333861848494553.a n = A007637 (n + 1)

end A007637

/-! ## A007637.P10975580694749311449

`and(1, A001097(n+1))*p?[3*A027692(n)+2]`
-/

namespace A007637.P10975580694749311449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A027692 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A001097 (n + 1)) * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A007637.P10975580694749311449

namespace A007637

/-- `and(1, A001097(n+1))*p?[3*A027692(n)+2]` -/
def P10975580694749311449.Spec : Prop :=
  ∀ n, P10975580694749311449.a n = A007637 (n + 1)

end A007637

/-! ## A007637.P2342285044491506748

`p?[3*A027692(n)+2]*A014306(A000040(n+1))`
-/

namespace A007637.P2342285044491506748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A027692 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * A014306 (A000040 (n + 1)).toNat

end

end A007637.P2342285044491506748

namespace A007637

/-- `p?[3*A027692(n)+2]*A014306(A000040(n+1))` -/
def P2342285044491506748.Spec : Prop :=
  ∀ n, P2342285044491506748.a n = A007637 (n + 1)

end A007637

/-! ## A007637.P15334080006502995265

`A008683(A179875(n+1))*p?[3*A027692(n)+2]`
-/

namespace A007637.P15334080006502995265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A027692 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A179875 (n + 1)).toNat * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A007637.P15334080006502995265

namespace A007637

/-- `A008683(A179875(n+1))*p?[3*A027692(n)+2]` -/
def P15334080006502995265.Spec : Prop :=
  ∀ n, P15334080006502995265.a n = A007637 (n + 1)

end A007637

/-! ## A007637.P4894482349283845322

`A000027(p?[3*A027692(n)+2])`
-/

namespace A007637.P4894482349283845322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A027692 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A007637.P4894482349283845322

namespace A007637

/-- `A000027(p?[3*A027692(n)+2])` -/
def P4894482349283845322.Spec : Prop :=
  ∀ n, P4894482349283845322.a n = A007637 (n + 1)

end A007637

/-! ## A007637.P5109907396229887049

`record[A006530(6*(C(n, 2)+3)+5)]`
-/

namespace A007637.P5109907396229887049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (6 * (Nat.choose n 2 + 3) + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A007637.P5109907396229887049

namespace A007637

/-- `record[A006530(6*(C(n, 2)+3)+5)]` -/
def P5109907396229887049.Spec : Prop :=
  ∀ n, P5109907396229887049.a n = A007637 (n + 1)

end A007637

/-! ## A007637.P17163988082954051984

`record[A006530(A003215(n)+22)]`
-/

namespace A007637.P17163988082954051984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A003215 n + 22).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A007637.P17163988082954051984

namespace A007637

/-- `record[A006530(A003215(n)+22)]` -/
def P17163988082954051984.Spec : Prop :=
  ∀ n, P17163988082954051984.a n = A007637 (n + 1)

end A007637

/-! ## A007637.P23016268781214129

`record[A020639(A003215(n)+22)]`
-/

namespace A007637.P23016268781214129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A003215 n + 22).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A007637.P23016268781214129

namespace A007637

/-- `record[A020639(A003215(n)+22)]` -/
def P23016268781214129.Spec : Prop :=
  ∀ n, P23016268781214129.a n = A007637 (n + 1)

end A007637

/-!
# A007638: Numbers k such that 3*k^2 - 3*k + 23 is composite.

The programs for A007638, there is no canonical definition to state claims against.
-/

/-! ## A007638.P2579292378903107336

`lt[1, A001221(∑[a(n-1)+6])]` with `a(0)=23, a(1)=0`
-/

namespace A007638.P2579292378903107336
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.rec [23, 0] fun n f3 =>
  f3 (n - 1) + 6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (∑ j ∈ Finset.range (n + 1), f3 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A007638.P2579292378903107336

/-! ## A007638.P12754269633436346682

`lt[1, A001222(∑[a(n-1)+6])]` with `a(0)=23, a(1)=0`
-/

namespace A007638.P12754269633436346682
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.rec [23, 0] fun n f3 =>
  f3 (n - 1) + 6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∑ j ∈ Finset.range (n + 1), f3 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A007638.P12754269633436346682

/-! ## A007638.P3771893956753770170

`lt[1, A001222((n+1)*3*n+23)]+1`
-/

namespace A007638.P3771893956753770170
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 ((n + 1) * (3 * n) + 23)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A007638.P3771893956753770170

/-! ## A007638.P2072072142604962045

`lt[1, A001221(3*A027692(n)+2)]+1`
-/

namespace A007638.P2072072142604962045
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (3 * A027692 n + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A007638.P2072072142604962045

/-! ## A007638.P15552523463037869842

`lt[2, A000005(3*A027692(n)+2)]+1`
-/

namespace A007638.P15552523463037869842
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (3 * A027692 n + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A007638.P15552523463037869842

/-! ## A007638.P15612288781757668617

`lt[1, A014963(A001222((n-1)*3*n+23))]`
-/

namespace A007638.P15612288781757668617
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A001222 (((n : ℤ) - 1) * (3 * n : ℤ) + 23).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A007638.P15612288781757668617

/-!
# A007639: Primes of form 2n^2 - 2n + 19.

The programs for A007639, the canonical program `A007639.P14022480987876734010` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A007639 has offset 1).

The definition of A007639 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 292 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A007639.P14022480987876734010

`p?[∑[4*n]+19]`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A007639

/-- `p?[∑[4*n]+19]` -/
def P14022480987876734010.Spec : Prop :=
  ∀ n, (P14022480987876734010.a n : ℤ) = A007639 (n + 1)

theorem P14022480987876734010.correct : P14022480987876734010.Spec := by
  intro n
  simp only [A007639, Nat.add_sub_cancel]

end A007639

/-! ## A007639.P3113142036240866941

`∏{p}[p?[A001844(n)+18], #]`
-/

namespace A007639.P3113142036240866941
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001844 n + 18

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A007639.P3113142036240866941

namespace A007639

/-- `∏{p}[p?[A001844(n)+18], #]` -/
def P3113142036240866941.Spec : Prop :=
  ∀ n, (P3113142036240866941.a n : ℤ) = A007639 (n + 1)

end A007639

/-! ## A007639.P10131478898886866868

`or(1, p?[A259555(n+1)+2])`
-/

namespace A007639.P10131478898886866868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259555 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A007639.P10131478898886866868

namespace A007639

/-- `or(1, p?[A259555(n+1)+2])` -/
def P10131478898886866868.Spec : Prop :=
  ∀ n, P10131478898886866868.a n = A007639 (n + 1)

end A007639

/-! ## A007639.P8088670880960643580

`A000007(n+1)+p?[A000982(n)+18]`
-/

namespace A007639.P8088670880960643580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000982 n + 18

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A007639.P8088670880960643580

namespace A007639

/-- `A000007(n+1)+p?[A000982(n)+18]` -/
def P8088670880960643580.Spec : Prop :=
  ∀ n, P8088670880960643580.a n = A007639 (n + 1)

end A007639

/-! ## A007639.P9752427022538365332

`p?[A259555(n+1)+2]%∑[A158066(n+1)]`
-/

namespace A007639.P9752427022538365332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259555 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158066 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A007639.P9752427022538365332

namespace A007639

/-- `p?[A259555(n+1)+2]%∑[A158066(n+1)]` -/
def P9752427022538365332.Spec : Prop :=
  ∀ n, P9752427022538365332.a n = A007639 (n + 1)

end A007639

/-! ## A007639.P11369617786235448997

`A007814(4*n+1)+p?[A259555(n+1)+2]`
-/

namespace A007639.P11369617786235448997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259555 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (4 * n + 1) + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A007639.P11369617786235448997

namespace A007639

/-- `A007814(4*n+1)+p?[A259555(n+1)+2]` -/
def P11369617786235448997.Spec : Prop :=
  ∀ n, P11369617786235448997.a n = A007639 (n + 1)

end A007639

/-! ## A007639.P8288136224572135087

`p?[A259555(n+1)+2]*A001511(4*n+1)`
-/

namespace A007639.P8288136224572135087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259555 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * A001511 (4 * n + 1)

end

end A007639.P8288136224572135087

namespace A007639

/-- `p?[A259555(n+1)+2]*A001511(4*n+1)` -/
def P8288136224572135087.Spec : Prop :=
  ∀ n, P8288136224572135087.a n = A007639 (n + 1)

end A007639

/-! ## A007639.P12785661831599243092

`p?[A259555(n+1)+2]*A006519(4*n+1)`
-/

namespace A007639.P12785661831599243092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259555 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * A006519 (4 * n + 1)

end

end A007639.P12785661831599243092

namespace A007639

/-- `p?[A259555(n+1)+2]*A006519(4*n+1)` -/
def P12785661831599243092.Spec : Prop :=
  ∀ n, P12785661831599243092.a n = A007639 (n + 1)

end A007639

/-! ## A007639.P14094830271372111267

`p?[A000982(n)+18]-A000007(A005408(n))`
-/

namespace A007639.P14094830271372111267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000982 n + 18

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - A000007 (A005408 n).toNat

end

end A007639.P14094830271372111267

namespace A007639

/-- `p?[A000982(n)+18]-A000007(A005408(n))` -/
def P14094830271372111267.Spec : Prop :=
  ∀ n, P14094830271372111267.a n = A007639 (n + 1)

end A007639

/-! ## A007639.P7155823828312112514

`p?[A000982(n)+18]*A000265(2^A059126(n))`
-/

namespace A007639.P7155823828312112514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000982 n + 18

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * A000265 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A059126 n : ℤ))).toNat

end

end A007639.P7155823828312112514

namespace A007639

/-- `p?[A000982(n)+18]*A000265(2^A059126(n))` -/
def P7155823828312112514.Spec : Prop :=
  ∀ n, P7155823828312112514.a n = A007639 (n + 1)

end A007639

/-! ## A007639.P14930946339528928184

`A014269(A090368(n+1))+p?[A259555(n+1)+2]`
-/

namespace A007639.P14930946339528928184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259555 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014269 (A090368 (n + 1)).toNat + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A007639.P14930946339528928184

namespace A007639

/-- `A014269(A090368(n+1))+p?[A259555(n+1)+2]` -/
def P14930946339528928184.Spec : Prop :=
  ∀ n, P14930946339528928184.a n = A007639 (n + 1)

end A007639

/-! ## A007639.P3461316719148383477

`A001221(A151800(n+3))*p?[A259555(n+1)+2]`
-/

namespace A007639.P3461316719148383477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259555 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A151800 (n + 3)).toNat * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A007639.P3461316719148383477

namespace A007639

/-- `A001221(A151800(n+3))*p?[A259555(n+1)+2]` -/
def P3461316719148383477.Spec : Prop :=
  ∀ n, P3461316719148383477.a n = A007639 (n + 1)

end A007639

/-! ## A007639.P530404163265214691

`p?[A259555(n+1)+2]*A014256(1-A219641(n)+n)`
-/

namespace A007639.P530404163265214691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259555 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * A014256 (1 - A219641 n + (n : ℤ)).toNat

end

end A007639.P530404163265214691

namespace A007639

/-- `p?[A259555(n+1)+2]*A014256(1-A219641(n)+n)` -/
def P530404163265214691.Spec : Prop :=
  ∀ n, P530404163265214691.a n = A007639 (n + 1)

end A007639

/-! ## A007639.P537665383967427030

`p?[A259555(n+1)+2]*A014262(1-A219641(n)+n)`
-/

namespace A007639.P537665383967427030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259555 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * A014262 (1 - A219641 n + (n : ℤ)).toNat

end

end A007639.P537665383967427030

namespace A007639

/-- `p?[A259555(n+1)+2]*A014262(1-A219641(n)+n)` -/
def P537665383967427030.Spec : Prop :=
  ∀ n, P537665383967427030.a n = A007639 (n + 1)

end A007639

/-! ## A007639.P12102031798208646624

`A000027(p?[A000982(n)+18])`
-/

namespace A007639.P12102031798208646624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000982 n + 18

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A007639.P12102031798208646624

namespace A007639

/-- `A000027(p?[A000982(n)+18])` -/
def P12102031798208646624.Spec : Prop :=
  ∀ n, P12102031798208646624.a n = A007639 (n + 1)

end A007639

/-! ## A007639.P12451716710103961991

`A000027(p?[A259555(n+1)+2])`
-/

namespace A007639.P12451716710103961991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259555 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A007639.P12451716710103961991

namespace A007639

/-- `A000027(p?[A259555(n+1)+2])` -/
def P12451716710103961991.Spec : Prop :=
  ∀ n, P12451716710103961991.a n = A007639 (n + 1)

end A007639

/-! ## A007639.P13660777657211052629

`record[A020639(∑[4*n]+19)]`
-/

namespace A007639.P13660777657211052629
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (∑ j ∈ Finset.range (n + 1), f2 j + 19)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A007639.P13660777657211052629

namespace A007639

/-- `record[A020639(∑[4*n]+19)]` -/
def P13660777657211052629.Spec : Prop :=
  ∀ n, P13660777657211052629.a n = A007639 (n + 1)

end A007639

/-! ## A007639.P14978389768299716644

`record[A006530(2*(n²+9-n)+1)]`
-/

namespace A007639.P14978389768299716644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (2 * ((n ^ 2 : ℤ) + (9 - (n : ℤ))) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A007639.P14978389768299716644

namespace A007639

/-- `record[A006530(2*(n²+9-n)+1)]` -/
def P14978389768299716644.Spec : Prop :=
  ∀ n, P14978389768299716644.a n = A007639 (n + 1)

end A007639

/-!
# A007640: Numbers k such that 2*k^2 - 2*k + 19 is composite.

The programs for A007640, the canonical program `A007640.P6533582036686519537` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A007640 has offset 1).

The definition of A007640 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 106 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A007640.P9052954185809597130

`lt[2, A000005(4*C(n, 2)+19)]`
-/

namespace A007640.P9052954185809597130
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (4 * Nat.choose n 2 + 19)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A007640.P9052954185809597130

namespace A007640

/-- `lt[2, A000005(4*C(n, 2)+19)]` -/
def P9052954185809597130.Spec : Prop :=
  ∀ n, (P9052954185809597130.a n : ℤ) = A007640 (n + 1)

end A007640

/-! ## A007640.P4557044831601550614

`lt[2, A000005(2*(n²-n)+19)]`
-/

namespace A007640.P4557044831601550614
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (2 * ((n ^ 2 : ℤ) - (n : ℤ)) + 19).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A007640.P4557044831601550614

namespace A007640

/-- `lt[2, A000005(2*(n²-n)+19)]` -/
def P4557044831601550614.Spec : Prop :=
  ∀ n, (P4557044831601550614.a n : ℤ) = A007640 (n + 1)

end A007640

/-! ## A007640.P446713229796039247

`lt[A020639(4*C(n, 2)+19), C(n, 2)]`
-/

namespace A007640.P446713229796039247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (4 * Nat.choose n 2 + 19)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A007640.P446713229796039247

namespace A007640

/-- `lt[A020639(4*C(n, 2)+19), C(n, 2)]` -/
def P446713229796039247.Spec : Prop :=
  ∀ n, (P446713229796039247.a n : ℤ) = A007640 (n + 1)

end A007640

/-! ## A007640.P16238501363430531187

`lt[2, A000005((n+1)*2*n+19)]+1`
-/

namespace A007640.P16238501363430531187
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 ((n + 1) * (2 * n) + 19)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A007640.P16238501363430531187

namespace A007640

/-- `lt[2, A000005((n+1)*2*n+19)]+1` -/
def P16238501363430531187.Spec : Prop :=
  ∀ n, (P16238501363430531187.a n : ℤ) = A007640 (n + 1)

end A007640

/-! ## A007640.P6533582036686519537

`eq[0, A010051(A051890(n)+17)]`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A007640

/-- `eq[0, A010051(A051890(n)+17)]` -/
def P6533582036686519537.Spec : Prop :=
  ∀ n, (P6533582036686519537.a n : ℤ) = A007640 (n + 1)

theorem P6533582036686519537.correct : P6533582036686519537.Spec := by
  intro n
  simp only [A007640, Nat.add_sub_cancel]

end A007640

/-! ## A007640.P13489313856284451531

`lt[A020639(A051890(n)+17), 8*n]`
-/

namespace A007640.P13489313856284451531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A051890 n + 17).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A007640.P13489313856284451531

namespace A007640

/-- `lt[A020639(A051890(n)+17), 8*n]` -/
def P13489313856284451531.Spec : Prop :=
  ∀ n, (P13489313856284451531.a n : ℤ) = A007640 (n + 1)

end A007640

/-! ## A007640.P1625725682219278406

`lt[3, A000005(A046092(n+1)+19)+1]+2`
-/

namespace A007640.P1625725682219278406
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A046092 (n + 1) + 19).toNat + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 2

end

end A007640.P1625725682219278406

namespace A007640

/-- `lt[3, A000005(A046092(n+1)+19)+1]+2` -/
def P1625725682219278406.Spec : Prop :=
  ∀ n, (P1625725682219278406.a n : ℤ) = A007640 (n + 1)

end A007640

/-!
# A007641: Primes of the form 2*k^2 + 29.

The programs for A007641, the canonical program `A007641.P11731960137110261033` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A007641 has offset 1).

The definition of A007641 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 367 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A007641.P11731960137110261033

`p?[2*n²+29]`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A007641

/-- `p?[2*n²+29]` -/
def P11731960137110261033.Spec : Prop :=
  ∀ n, (P11731960137110261033.a n : ℤ) = A007641 (n + 1)

theorem P11731960137110261033.correct : P11731960137110261033.Spec := by
  intro n
  simp only [A007641, Nat.add_sub_cancel]

end A007641

/-! ## A007641.P16433144172527004714

`or(1, p?[n*2*n+29])`
-/

namespace A007641.P16433144172527004714
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (2 * n) + 29

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A007641.P16433144172527004714

namespace A007641

/-- `or(1, p?[n*2*n+29])` -/
def P16433144172527004714.Spec : Prop :=
  ∀ n, (P16433144172527004714.a n : ℤ) = A007641 (n + 1)

end A007641

/-! ## A007641.P4504578201291447481

`∑{p}[p?[A056220(n)+30], #]`
-/

namespace A007641.P4504578201291447481
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056220 n + 30

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A007641.P4504578201291447481

namespace A007641

/-- `∑{p}[p?[A056220(n)+30], #]` -/
def P4504578201291447481.Spec : Prop :=
  ∀ n, (P4504578201291447481.a n : ℤ) = A007641 (n + 1)

end A007641

/-! ## A007641.P871756676975202119

`p?[n²+n²+29]%A020224(n+1)`
-/

namespace A007641.P871756676975202119
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + (n ^ 2 + 29)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) (A020224 (n + 1))

end

end A007641.P871756676975202119

namespace A007641

/-- `p?[n²+n²+29]%A020224(n+1)` -/
def P871756676975202119.Spec : Prop :=
  ∀ n, P871756676975202119.a n = A007641 (n + 1)

end A007641

/-! ## A007641.P3321025311497196140

`A153011(A000040(n+1))+p?[A056220(n)+30]`
-/

namespace A007641.P3321025311497196140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056220 n + 30

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153011 (A000040 (n + 1)).toNat + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A007641.P3321025311497196140

namespace A007641

/-- `A153011(A000040(n+1))+p?[A056220(n)+30]` -/
def P3321025311497196140.Spec : Prop :=
  ∀ n, P3321025311497196140.a n = A007641 (n + 1)

end A007641

/-! ## A007641.P5129950122418251139

`record[A001414(2*n²+29)]`
-/

namespace A007641.P5129950122418251139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (2 * n ^ 2 + 29)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A007641.P5129950122418251139

namespace A007641

/-- `record[A001414(2*n²+29)]` -/
def P5129950122418251139.Spec : Prop :=
  ∀ n, P5129950122418251139.a n = A007641 (n + 1)

end A007641

/-! ## A007641.P5220237719987445153

`record[A006530(2*n²+29)]`
-/

namespace A007641.P5220237719987445153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (2 * n ^ 2 + 29)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A007641.P5220237719987445153

namespace A007641

/-- `record[A006530(2*n²+29)]` -/
def P5220237719987445153.Spec : Prop :=
  ∀ n, P5220237719987445153.a n = A007641 (n + 1)

end A007641

/-! ## A007641.P8879214178836377344

`record[A020639(2*n²+29)]`
-/

namespace A007641.P8879214178836377344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (2 * n ^ 2 + 29)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A007641.P8879214178836377344

namespace A007641

/-- `record[A020639(2*n²+29)]` -/
def P8879214178836377344.Spec : Prop :=
  ∀ n, P8879214178836377344.a n = A007641 (n + 1)

end A007641

/-! ## A007641.P17171025488180611763

`record[A014963(2*n²+29)]`
-/

namespace A007641.P17171025488180611763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (2 * n ^ 2 + 29)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A007641.P17171025488180611763

namespace A007641

/-- `record[A014963(2*n²+29)]` -/
def P17171025488180611763.Spec : Prop :=
  ∀ n, P17171025488180611763.a n = A007641 (n + 1)

end A007641

/-!
# A007642: Numbers k such that 2*k^2 +29 is composite.

The programs for A007642, there is no canonical definition to state claims against.
-/

/-! ## A007642.P6125686855997743659

`comp[A352800(n+1)]`
-/

namespace A007642.P6125686855997743659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352800 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A007642.P6125686855997743659

/-! ## A007642.P1596336223520014336

`floor(sqrt(A352949(n+1)/2))`
-/

namespace A007642.P1596336223520014336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt ((A352949 (n + 1) : ℚ) / 2 : ℝ)⌋

end

end A007642.P1596336223520014336

/-! ## A007642.P5086360723471861082

`round(sqrt(A352949(Δ[n²]-n)/2))`
-/

namespace A007642.P5086360723471861082
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt ((A352949 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat : ℚ) / 2 : ℝ))

end

end A007642.P5086360723471861082

/-! ## A007642.P15849579721873789244

`round(sqrt(A006667(n+1)+A352949(n+1)/2))`
-/

namespace A007642.P15849579721873789244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt ((A006667 (n + 1) : ℚ) + (A352949 (n + 1) : ℚ) / 2 : ℝ))

end

end A007642.P15849579721873789244

/-! ## A007642.P1917133408183702584

`round(sqrt(A352949(n+1)/2))%A044374(n+1)`
-/

namespace A007642.P1917133408183702584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (Real.sqrt ((A352949 (n + 1) : ℚ) / 2 : ℝ))) (A044374 (n + 1))

end

end A007642.P1917133408183702584

/-! ## A007642.P12788228208323656924

`lt[1, A001222(2*n²+29)]`
-/

namespace A007642.P12788228208323656924
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (2 * n ^ 2 + 29)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A007642.P12788228208323656924

/-! ## A007642.P16910817545314678511

`eq[0, A101264(A114962(n))]`
-/

namespace A007642.P16910817545314678511
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101264 (A114962 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A007642.P16910817545314678511

/-! ## A007642.P810122835359313080

`eq[0, A010051(A056220(n)+30)]`
-/

namespace A007642.P810122835359313080
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A056220 n + 30).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A007642.P810122835359313080

/-! ## A007642.P8962541879669993083

`eq[0, A156788(A000005(2*n²+29))]`
-/

namespace A007642.P8962541879669993083
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156788 (A000005 (2 * n ^ 2 + 29)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A007642.P8962541879669993083

/-!
# A007643: Primes not of form | 3^x - 2^y |.

The programs for A007643, there is no canonical definition to state claims against.
-/

/-! ## A007643.P11739276715208540089

`p?[gcd(n, A128760(n))]`
-/

namespace A007643.P11739276715208540089
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A128760 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A007643.P11739276715208540089

/-! ## A007643.P11186167054978948916

`p?[A128760(n+5)+n+5]`
-/

namespace A007643.P11186167054978948916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128760 (n + 5) + (n + 5 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A007643.P11186167054978948916

/-! ## A007643.P1807745168501860008

`eq[A007920(n), A128760(n)]`
-/

namespace A007643.P1807745168501860008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007920 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128760 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A007643.P1807745168501860008

/-! ## A007643.P17019674888412154005

`eq[A082023(n), A128760(n)]`
-/

namespace A007643.P17019674888412154005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082023 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128760 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A007643.P17019674888412154005

/-! ## A007643.P4422870432282325131

`eq[A086134(n), A128760(n)]`
-/

namespace A007643.P4422870432282325131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086134 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128760 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A007643.P4422870432282325131

/-! ## A007643.P1990832948882476912

`eq[A128760(n), A277894(n)]`
-/

namespace A007643.P1990832948882476912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128760 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277894 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A007643.P1990832948882476912

/-! ## A007643.P3429173804243680761

`eq[A128760(n), A295335(n)]`
-/

namespace A007643.P3429173804243680761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128760 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295335 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A007643.P3429173804243680761

/-! ## A007643.P4221602415967343224

`eq[A128760(n), A295520(n)]`
-/

namespace A007643.P4221602415967343224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128760 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295520 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A007643.P4221602415967343224

/-! ## A007643.P10336400403192761060

`eq[A128760(n), A325142(n)]`
-/

namespace A007643.P10336400403192761060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128760 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325142 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A007643.P10336400403192761060

/-! ## A007643.P4950690675254298078

`eq[A128760(n), A340732(n)]`
-/

namespace A007643.P4950690675254298078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128760 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340732 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A007643.P4950690675254298078

/-! ## A007643.P14571625673377981219

`eq[A128760(n), A341702(n)]`
-/

namespace A007643.P14571625673377981219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128760 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341702 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A007643.P14571625673377981219

/-! ## A007643.P8547882889457906927

`eq[A128760(n), A361902(n)]`
-/

namespace A007643.P8547882889457906927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128760 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361902 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A007643.P8547882889457906927

/-! ## A007643.P16936655412812784765

`eq[2*A068346(n), A128760(n)]`
-/

namespace A007643.P16936655412812784765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A068346 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128760 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A007643.P16936655412812784765

/-! ## A007643.P3725311386027178196

`p?[n*A005925(n*A128760(n))]`
-/

namespace A007643.P3725311386027178196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A005925 ((n : ℤ) * A128760 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A007643.P3725311386027178196

/-!
# A007644: Primes not of form | 3^a +- 2^b | where a, b are nonnegative integers.

The programs for A007644, there is no canonical definition to state claims against.
-/

/-! ## A007644.P13035912294601224271

`∩[A007643(n+1), A173829(n+1)]`
-/

namespace A007644.P13035912294601224271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007643 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173829 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A007644.P13035912294601224271

/-! ## A007644.P6549057630634306301

`∩[A173829(n+1), p?[A128760(n+5)+n+5]]`
-/

namespace A007644.P6549057630634306301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173829 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128760 (n + 5) + (n + 5 : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => (f3 j).toNat.Prime) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A007644.P6549057630634306301

/-! ## A007644.P6715762231618362969

`p?[A173829(n+2)+A128760(A173829(n+2))]`
-/

namespace A007644.P6715762231618362969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173829 (n + 2) + A128760 (A173829 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A007644.P6715762231618362969

/-!
# A007645: Generalized cuban primes: primes of the form x^2 + xy + y^2; or primes of the form x^2 + 3*y^2; or primes == 0 or 1 (mod 3).

The programs for A007645, the canonical program `A007645.P3094909596101690884` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A007645 has offset 1).

The definition of A007645 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A007645.P3094909596101690884

`p?[or(1, 3*n)]`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A007645

/-- `p?[or(1, 3*n)]` -/
def P3094909596101690884.Spec : Prop :=
  ∀ n, (P3094909596101690884.a n : ℤ) = A007645 (n + 1)

theorem P3094909596101690884.correct : P3094909596101690884.Spec := by
  intro n
  simp only [A007645, Nat.add_sub_cancel]

end A007645

/-! ## A007645.P7503499413000468518

`p?[ogf((3+x+2x^2)/(1-2x+x^2))]`
-/

namespace A007645.P7503499413000468518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, 1, 2] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A007645.P7503499413000468518

namespace A007645

/-- `p?[ogf((3+x+2x^2)/(1-2x+x^2))]` -/
def P7503499413000468518.Spec : Prop :=
  ∀ n, P7503499413000468518.a n = A007645 (n + 1)

end A007645

/-! ## A007645.P15532601746447325724

`or(1, A045375(n+1))`
-/

namespace A007645.P15532601746447325724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A045375 (n + 1))

end

end A007645.P15532601746447325724

namespace A007645

/-- `or(1, A045375(n+1))` -/
def P15532601746447325724.Spec : Prop :=
  ∀ n, P15532601746447325724.a n = A007645 (n + 1)

end A007645

/-! ## A007645.P3420298510317173589

`A002476(n%a(n-1))` with `a(0)=3`
-/

namespace A007645.P3420298510317173589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A002476 (Int.tmod (n : ℤ) (a (n - 1))).toNat

end

end A007645.P3420298510317173589

namespace A007645

/-- `A002476(n%a(n-1))` -/
def P3420298510317173589.Spec : Prop :=
  ∀ n, P3420298510317173589.a n = A007645 (n + 1)

end A007645

/-! ## A007645.P10299056764372859217

`abs(1-n)-n+A123365(n+1)+1`
-/

namespace A007645.P10299056764372859217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (n : ℤ)| - (n : ℤ) + (A123365 (n + 1) + 1)

end

end A007645.P10299056764372859217

namespace A007645

/-- `abs(1-n)-n+A123365(n+1)+1` -/
def P10299056764372859217.Spec : Prop :=
  ∀ n, P10299056764372859217.a n = A007645 (n + 1)

end A007645

/-! ## A007645.P16071059371449602118

`A045375(n+1)+A000007(n)`
-/

namespace A007645.P16071059371449602118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045375 (n + 1) + A000007 n

end

end A007645.P16071059371449602118

namespace A007645

/-- `A045375(n+1)+A000007(n)` -/
def P16071059371449602118.Spec : Prop :=
  ∀ n, P16071059371449602118.a n = A007645 (n + 1)

end A007645

/-! ## A007645.P14842340812728689561

`A123365(n+1)+A000038(n)`
-/

namespace A007645.P14842340812728689561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123365 (n + 1) + A000038 n

end

end A007645.P14842340812728689561

namespace A007645

/-- `A123365(n+1)+A000038(n)` -/
def P14842340812728689561.Spec : Prop :=
  ∀ n, P14842340812728689561.a n = A007645 (n + 1)

end A007645

/-! ## A007645.P11941609677211856842

`A171715(n+1)+A003627(n+1)`
-/

namespace A007645.P11941609677211856842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171715 (n + 1) + A003627 (n + 1)

end

end A007645.P11941609677211856842

namespace A007645

/-- `A171715(n+1)+A003627(n+1)` -/
def P11941609677211856842.Spec : Prop :=
  ∀ n, P11941609677211856842.a n = A007645 (n + 1)

end A007645

/-! ## A007645.P8011219138970381943

`A045375(n+1)+A045410(n+1)-A003627(n+1)`
-/

namespace A007645.P8011219138970381943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045375 (n + 1) + (A045410 (n + 1) - A003627 (n + 1))

end

end A007645.P8011219138970381943

namespace A007645

/-- `A045375(n+1)+A045410(n+1)-A003627(n+1)` -/
def P8011219138970381943.Spec : Prop :=
  ∀ n, P8011219138970381943.a n = A007645 (n + 1)

end A007645

/-! ## A007645.P7379110878636840322

`A045331(n+2)`
-/

namespace A007645.P7379110878636840322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045331 (n + 2)

end

end A007645.P7379110878636840322

namespace A007645

/-- `A045331(n+2)` -/
def P7379110878636840322.Spec : Prop :=
  ∀ n, P7379110878636840322.a n = A007645 (n + 1)

end A007645

/-! ## A007645.P2140906290253358190

`A045375(n+1)+A045309(n+2)-A003627(n+1)`
-/

namespace A007645.P2140906290253358190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045375 (n + 1) + (A045309 (n + 2) - A003627 (n + 1))

end

end A007645.P2140906290253358190

namespace A007645

/-- `A045375(n+1)+A045309(n+2)-A003627(n+1)` -/
def P2140906290253358190.Spec : Prop :=
  ∀ n, P2140906290253358190.a n = A007645 (n + 1)

end A007645

/-! ## A007645.P12704138643386422347

`p?[A055664(n+1)]`
-/

namespace A007645.P12704138643386422347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055664 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A007645.P12704138643386422347

namespace A007645

/-- `p?[A055664(n+1)]` -/
def P12704138643386422347.Spec : Prop :=
  ∀ n, P12704138643386422347.a n = A007645 (n + 1)

end A007645

/-! ## A007645.P5502303681157654557

`p?[(2*n+1)*gcd(3, n+1)]`
-/

namespace A007645.P5502303681157654557
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) * Nat.gcd 3 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A007645.P5502303681157654557

namespace A007645

/-- `p?[(2*n+1)*gcd(3, n+1)]` -/
def P5502303681157654557.Spec : Prop :=
  ∀ n, (P5502303681157654557.a n : ℤ) = A007645 (n + 1)

end A007645

/-! ## A007645.P2579960317400523192

`p?[lcm(3, n)-(n+1)]`
-/

namespace A007645.P2579960317400523192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 3 n : ℤ) - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A007645.P2579960317400523192

namespace A007645

/-- `p?[lcm(3, n)-(n+1)]` -/
def P2579960317400523192.Spec : Prop :=
  ∀ n, P2579960317400523192.a n = A007645 (n + 1)

end A007645

/-! ## A007645.P5668395421799814319

`p?[2*n-gcd(9, 3-n)]`
-/

namespace A007645.P5668395421799814319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - (Int.gcd 9 (3 - (n : ℤ)) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A007645.P5668395421799814319

namespace A007645

/-- `p?[2*n-gcd(9, 3-n)]` -/
def P5668395421799814319.Spec : Prop :=
  ∀ n, P5668395421799814319.a n = A007645 (n + 1)

end A007645

/-! ## A007645.P6442159402687424803

`p?[floor(3*n/2)]`
-/

namespace A007645.P6442159402687424803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊3 * ((n : ℚ) / 2)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A007645.P6442159402687424803

namespace A007645

/-- `p?[floor(3*n/2)]` -/
def P6442159402687424803.Spec : Prop :=
  ∀ n, P6442159402687424803.a n = A007645 (n + 1)

end A007645

/-! ## A007645.P16738535511261336962

`record[p?[A014682(n+1)+2]]`
-/

namespace A007645.P16738535511261336962
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (n + 1) + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A007645.P16738535511261336962

namespace A007645

/-- `record[p?[A014682(n+1)+2]]` -/
def P16738535511261336962.Spec : Prop :=
  ∀ n, P16738535511261336962.a n = A007645 (n + 1)

end A007645

/-! ## A007645.P10376854778490162536

`A000040(A171820(n+1))`
-/

namespace A007645.P10376854778490162536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A171820 (n + 1)).toNat

end

end A007645.P10376854778490162536

namespace A007645

/-- `A000040(A171820(n+1))` -/
def P10376854778490162536.Spec : Prop :=
  ∀ n, P10376854778490162536.a n = A007645 (n + 1)

end A007645

/-! ## A007645.P1321286060502929111

`∩[A000040(n+1), A055664(n+1)]`
-/

namespace A007645.P1321286060502929111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055664 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A007645.P1321286060502929111

namespace A007645

/-- `∩[A000040(n+1), A055664(n+1)]` -/
def P1321286060502929111.Spec : Prop :=
  ∀ n, (P1321286060502929111.a n : ℤ) = A007645 (n + 1)

end A007645

/-! ## A007645.P5349541580698758974

`∩[A000040(n+1), A279815(n+1)]`
-/

namespace A007645.P5349541580698758974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279815 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A007645.P5349541580698758974

namespace A007645

/-- `∩[A000040(n+1), A279815(n+1)]` -/
def P5349541580698758974.Spec : Prop :=
  ∀ n, (P5349541580698758974.a n : ℤ) = A007645 (n + 1)

end A007645

/-!
# A007646: Numbers k such that k*4^k + 1 is prime.

The programs for A007646, there is no canonical definition to state claims against.
-/

/-! ## A007646.P9449632241673905651

`record[A152271(A029544(n+1))]`
-/

namespace A007646.P9449632241673905651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152271 (A029544 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A007646.P9449632241673905651

/-! ## A007646.P3681352335923485966

`record[A246425(A029544(n+2))]`
-/

namespace A007646.P3681352335923485966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246425 (A029544 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A007646.P3681352335923485966

/-!
# A007647: Numbers k such that k*10^k + 1 is prime.

The programs for A007647, there is no canonical definition to state claims against.
-/

/-! ## A007647.P5320820224276432723

`∑[∩[ceil(n²/3), A294532(n)]]`
-/

namespace A007647.P5320820224276432723
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n ^ 2 : ℚ) / 3⌉

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294532 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∧ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007647.P5320820224276432723

/-!
# A007648: Numbers k such that k*18^k + 1 is prime.

The programs for A007648, there is no canonical definition to state claims against.
-/

/-! ## A007648.P15826751264588574568

`A336151(∑[∑[n^7]+1])`
-/

namespace A007648.P15826751264588574568
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 7

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336151 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A007648.P15826751264588574568

/-!
# A007649: Number of set-like molecular species of degree n.

The programs for A007649, there is no canonical definition to state claims against.
-/

/-! ## A007649.P134931596365299011

`A226066(∑[A319107(n)])`
-/

namespace A007649.P134931596365299011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319107 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226066 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A007649.P134931596365299011

/-! ## A007649.P8449731540287255757

`or(C(A111581(n), 3), A057574(n))`
-/

namespace A007649.P8449731540287255757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (Nat.choose (A111581 n).toNat 3 : ℤ) (A057574 n)

end

end A007649.P8449731540287255757

/-! ## A007649.P3176622943638714941

`or(C(A118168(n), 3), A057574(n))`
-/

namespace A007649.P3176622943638714941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (Nat.choose (A118168 n).toNat 3 : ℤ) (A057574 n)

end

end A007649.P3176622943638714941

/-! ## A007649.P1057626022601601169

`or(A296030(3*n+1)², A057574(n))`
-/

namespace A007649.P1057626022601601169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A296030 (3 * n + 1) ^ 2) (A057574 n)

end

end A007649.P1057626022601601169

/-! ## A007649.P13996077852931558082

`A336362(A058014(n))+A079500(n)`
-/

namespace A007649.P13996077852931558082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336362 (A058014 n).toNat + A079500 n

end

end A007649.P13996077852931558082

/-!
# A007651: Describe the previous term! (method B - initial term is 1).

The programs for A007651, there is no canonical definition to state claims against.
-/

/-! ## A007651.P12057159495705619665

`A318927(A005649(n))-A369057(n+5)`
-/

namespace A007651.P12057159495705619665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318927 (A005649 n).toNat - A369057 (n + 5)

end

end A007651.P12057159495705619665

/-!
# A007652: Final digit of prime(n).

The programs for A007652, the canonical program `A007652.P8278837090424156821` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A007652 has offset 1).

The definition of A007652 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A007652.P8278837090424156821

`A010879(A000040(n+1))`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A007652

/-- `A010879(A000040(n+1))` -/
def P8278837090424156821.Spec : Prop :=
  ∀ n, P8278837090424156821.a n = A007652 (n + 1)

theorem P8278837090424156821.correct : P8278837090424156821.Spec := by
  intro n
  simp only [A007652, Nat.add_sub_cancel]

end A007652

/-! ## A007652.P3924807550152265143

`Δ[A007504(n)]%10`
-/

namespace A007652.P3924807550152265143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) 10

end

end A007652.P3924807550152265143

namespace A007652

/-- `Δ[A007504(n)]%10` -/
def P3924807550152265143.Spec : Prop :=
  ∀ n, P3924807550152265143.a n = A007652 (n + 1)

end A007652

/-! ## A007652.P10504471916804384538

`5-A277097(n+1)`
-/

namespace A007652.P10504471916804384538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 - A277097 (n + 1)

end

end A007652.P10504471916804384538

namespace A007652

/-- `5-A277097(n+1)` -/
def P10504471916804384538.Spec : Prop :=
  ∀ n, P10504471916804384538.a n = A007652 (n + 1)

end A007652

/-! ## A007652.P16664595315619022575

`10-A072003(n+1)`
-/

namespace A007652.P16664595315619022575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 - A072003 (n + 1)

end

end A007652.P16664595315619022575

namespace A007652

/-- `10-A072003(n+1)` -/
def P16664595315619022575.Spec : Prop :=
  ∀ n, P16664595315619022575.a n = A007652 (n + 1)

end A007652

/-! ## A007652.P4223234504741653892

`A045532(n+1)%10`
-/

namespace A007652.P4223234504741653892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A045532 (n + 1)) 10

end

end A007652.P4223234504741653892

namespace A007652

/-- `A045532(n+1)%10` -/
def P4223234504741653892.Spec : Prop :=
  ∀ n, P4223234504741653892.a n = A007652 (n + 1)

end A007652

/-! ## A007652.P11250322439565595012

`∏{digits}[A242120(n+1), #]`
-/

namespace A007652.P11250322439565595012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242120 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).prod

end

end A007652.P11250322439565595012

namespace A007652

/-- `∏{digits}[A242120(n+1), #]` -/
def P11250322439565595012.Spec : Prop :=
  ∀ n, (P11250322439565595012.a n : ℤ) = A007652 (n + 1)

end A007652

/-! ## A007652.P1210888523089362068

`p?[A247665(n+1)]%10`
-/

namespace A007652.P1210888523089362068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247665 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) 10

end

end A007652.P1210888523089362068

namespace A007652

/-- `p?[A247665(n+1)]%10` -/
def P1210888523089362068.Spec : Prop :=
  ∀ n, P1210888523089362068.a n = A007652 (n + 1)

end A007652

/-! ## A007652.P3806942110017783289

`dr(A000040(2*n-(n-1))%10)`
-/

namespace A007652.P3806942110017783289
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (Int.tmod (A000040 ((2 * n : ℤ) - ((n : ℤ) - 1)).toNat) 10)

end

end A007652.P3806942110017783289

namespace A007652

/-- `dr(A000040(2*n-(n-1))%10)` -/
def P3806942110017783289.Spec : Prop :=
  ∀ n, (P3806942110017783289.a n : ℤ) = A007652 (n + 1)

end A007652

/-! ## A007652.P10599786317736452434

`A030076(A074972(n+1))`
-/

namespace A007652.P10599786317736452434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030076 (A074972 (n + 1)).toNat

end

end A007652.P10599786317736452434

namespace A007652

/-- `A030076(A074972(n+1))` -/
def P10599786317736452434.Spec : Prop :=
  ∀ n, P10599786317736452434.a n = A007652 (n + 1)

end A007652

/-! ## A007652.P9608010255130368300

`A010879(A095959(n+1))`
-/

namespace A007652.P9608010255130368300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 (A095959 (n + 1)).toNat

end

end A007652.P9608010255130368300

namespace A007652

/-- `A010879(A095959(n+1))` -/
def P9608010255130368300.Spec : Prop :=
  ∀ n, P9608010255130368300.a n = A007652 (n + 1)

end A007652

/-! ## A007652.P1483571414299390805

`A010879(A110923(n+1))`
-/

namespace A007652.P1483571414299390805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 (A110923 (n + 1)).toNat

end

end A007652.P1483571414299390805

namespace A007652

/-- `A010879(A110923(n+1))` -/
def P1483571414299390805.Spec : Prop :=
  ∀ n, P1483571414299390805.a n = A007652 (n + 1)

end A007652

/-! ## A007652.P15681184364222193687

`A010879(A137589(n+1))`
-/

namespace A007652.P15681184364222193687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 (A137589 (n + 1)).toNat

end

end A007652.P15681184364222193687

namespace A007652

/-- `A010879(A137589(n+1))` -/
def P15681184364222193687.Spec : Prop :=
  ∀ n, P15681184364222193687.a n = A007652 (n + 1)

end A007652

/-! ## A007652.P6882688707898210331

`A002024(A161625(n+1))`
-/

namespace A007652.P6882688707898210331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A161625 (n + 1)).toNat

end

end A007652.P6882688707898210331

namespace A007652

/-- `A002024(A161625(n+1))` -/
def P6882688707898210331.Spec : Prop :=
  ∀ n, P6882688707898210331.a n = A007652 (n + 1)

end A007652

/-! ## A007652.P7070086924442275466

`A000030(A166499(n+1))`
-/

namespace A007652.P7070086924442275466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 (A166499 (n + 1)).toNat

end

end A007652.P7070086924442275466

namespace A007652

/-- `A000030(A166499(n+1))` -/
def P7070086924442275466.Spec : Prop :=
  ∀ n, P7070086924442275466.a n = A007652 (n + 1)

end A007652

/-! ## A007652.P1453092272371833926

`A000040(n+1)%A040020(n)`
-/

namespace A007652.P1453092272371833926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1)) (A040020 n)

end

end A007652.P1453092272371833926

namespace A007652

/-- `A000040(n+1)%A040020(n)` -/
def P1453092272371833926.Spec : Prop :=
  ∀ n, P1453092272371833926.a n = A007652 (n + 1)

end A007652

/-! ## A007652.P1156026438575785105

`A031344(n+1)%A040030(n)`
-/

namespace A007652.P1156026438575785105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A031344 (n + 1)) (A040030 n)

end

end A007652.P1156026438575785105

namespace A007652

/-- `A031344(n+1)%A040030(n)` -/
def P1156026438575785105.Spec : Prop :=
  ∀ n, P1156026438575785105.a n = A007652 (n + 1)

end A007652

/-! ## A007652.P2388612371310216517

`A032604(n+1)%A040020(n)`
-/

namespace A007652.P2388612371310216517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A032604 (n + 1)) (A040020 n)

end

end A007652.P2388612371310216517

namespace A007652

/-- `A032604(n+1)%A040020(n)` -/
def P2388612371310216517.Spec : Prop :=
  ∀ n, P2388612371310216517.a n = A007652 (n + 1)

end A007652

/-! ## A007652.P4744075100895379443

`A039790(n+1)%A040020(n)`
-/

namespace A007652.P4744075100895379443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A039790 (n + 1)) (A040020 n)

end

end A007652.P4744075100895379443

namespace A007652

/-- `A039790(n+1)%A040020(n)` -/
def P4744075100895379443.Spec : Prop :=
  ∀ n, P4744075100895379443.a n = A007652 (n + 1)

end A007652

/-! ## A007652.P12162907296924241332

`A050997(n+1)%A040020(n)`
-/

namespace A007652.P12162907296924241332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A050997 (n + 1)) (A040020 n)

end

end A007652.P12162907296924241332

namespace A007652

/-- `A050997(n+1)%A040020(n)` -/
def P12162907296924241332.Spec : Prop :=
  ∀ n, P12162907296924241332.a n = A007652 (n + 1)

end A007652

/-! ## A007652.P7947521000742599384

`A080437(n+1)%A040020(n)`
-/

namespace A007652.P7947521000742599384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A080437 (n + 1)) (A040020 n)

end

end A007652.P7947521000742599384

namespace A007652

/-- `A080437(n+1)%A040020(n)` -/
def P7947521000742599384.Spec : Prop :=
  ∀ n, P7947521000742599384.a n = A007652 (n + 1)

end A007652

/-!
# A007653: Coefficients of L-series for elliptic curve "37a1": y^2 + y = x^3 - x.

The programs for A007653, there is no canonical definition to state claims against.
-/

/-! ## A007653.P14677948827306068513

`(A045866(n+1)-A045867(n+1))/2`
-/

namespace A007653.P14677948827306068513
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045866 (n + 1) - A045867 (n + 1) : ℚ) / 2

end

end A007653.P14677948827306068513

/-!
# A007654: Numbers k such that the standard deviation of 1,...,k is an integer.

The programs for A007654, the canonical program `A007654.P12931302433447475572` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A007654 has offset 1).

The definition of A007654 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A007654.P12931302433447475572

`3*A098301(n)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A007654

/-- `3*A098301(n)` -/
def P12931302433447475572.Spec : Prop :=
  ∀ n, P12931302433447475572.a n = A007654 (n + 1)

theorem P12931302433447475572.correct : P12931302433447475572.Spec := by
  intro n
  simp only [A007654, Nat.add_sub_cancel]

end A007654

/-! ## A007654.P8990621937456890947

`A001075(n)²-1`
-/

namespace A007654.P8990621937456890947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001075 n ^ 2 - 1

end

end A007654.P8990621937456890947

namespace A007654

/-- `A001075(n)²-1` -/
def P8990621937456890947.Spec : Prop :=
  ∀ n, P8990621937456890947.a n = A007654 (n + 1)

end A007654

/-! ## A007654.P14878547952011033811

`3*A001353(n)²`
-/

namespace A007654.P14878547952011033811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A001353 n ^ 2

end

end A007654.P14878547952011033811

namespace A007654

/-- `3*A001353(n)²` -/
def P14878547952011033811.Spec : Prop :=
  ∀ n, P14878547952011033811.a n = A007654 (n + 1)

end A007654

/-! ## A007654.P17884380437377181314

`A055793(n+2)-1`
-/

namespace A007654.P17884380437377181314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055793 (n + 2) - 1

end

end A007654.P17884380437377181314

namespace A007654

/-- `A055793(n+2)-1` -/
def P17884380437377181314.Spec : Prop :=
  ∀ n, P17884380437377181314.a n = A007654 (n + 1)

end A007654

/-! ## A007654.P7639251030728352867

`∑[ogf((3x+3x^2)/(1-14x+x^2))]`
-/

namespace A007654.P7639251030728352867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 3, 3] [1, -14, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007654.P7639251030728352867

namespace A007654

/-- `∑[ogf((3x+3x^2)/(1-14x+x^2))]` -/
def P7639251030728352867.Spec : Prop :=
  ∀ n, P7639251030728352867.a n = A007654 (n + 1)

end A007654

/-! ## A007654.P428966718911040438

`14*a(n-1)-a(n-2)+6` with `a(0)=0, a(1)=3`
-/

namespace A007654.P428966718911040438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 3] fun n a =>
  14 * a (n - 1) - a (n - 2) + 6

end

end A007654.P428966718911040438

namespace A007654

/-- `14*a(n-1)-a(n-2)+6` -/
def P428966718911040438.Spec : Prop :=
  ∀ n, P428966718911040438.a n = A007654 (n + 1)

end A007654

/-! ## A007654.P12514720195595740679

`floor(((floor((sqrt(3)+2)^n)+1)²-2)/4)`
-/

namespace A007654.P12514720195595740679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((⌊(Real.sqrt (3 : ℝ) + 2) ^ n⌋ + 1) ^ 2 - 2 : ℚ) / 4⌋

end

end A007654.P12514720195595740679

namespace A007654

/-- `floor(((floor((sqrt(3)+2)^n)+1)²-2)/4)` -/
def P12514720195595740679.Spec : Prop :=
  ∀ n, P12514720195595740679.a n = A007654 (n + 1)

end A007654

/-! ## A007654.P5904075550608508728

`3*∑[4*a(n-1)-a(n-2)]²` with `a(0)=0, a(1)=1, a(2)=3`
-/

namespace A007654.P5904075550608508728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 3] fun n f1 =>
  4 * f1 (n - 1) - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A007654.P5904075550608508728

namespace A007654

/-- `3*∑[4*a(n-1)-a(n-2)]²` -/
def P5904075550608508728.Spec : Prop :=
  ∀ n, P5904075550608508728.a n = A007654 (n + 1)

end A007654

/-! ## A007654.P6930770924171200362

`record[14*a(n-1)-a(n-2)-6]-1` with `a(0)=1, a(1)=0, a(2)=1, a(3)=4`
-/

namespace A007654.P6930770924171200362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1, 4] fun n f1 =>
  14 * f1 (n - 1) - f1 (n - 2) - 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - 1

end

end A007654.P6930770924171200362

namespace A007654

/-- `record[14*a(n-1)-a(n-2)-6]-1` -/
def P6930770924171200362.Spec : Prop :=
  ∀ n, P6930770924171200362.a n = A007654 (n + 1)

end A007654

/-! ## A007654.P15685472831163336570

`3*A106707(n)²`
-/

namespace A007654.P15685472831163336570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A106707 n ^ 2

end

end A007654.P15685472831163336570

namespace A007654

/-- `3*A106707(n)²` -/
def P15685472831163336570.Spec : Prop :=
  ∀ n, P15685472831163336570.a n = A007654 (n + 1)

end A007654

/-!
# A007655: Standard deviation of A007654.

The programs for A007655, the canonical program `A007655.P12335511684273890842` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A007655 has offset 1).

The definition of A007655 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A007655.P12335511684273890842

`14*a(n-1)-a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A007655

/-- `14*a(n-1)-a(n-2)` -/
def P12335511684273890842.Spec : Prop :=
  ∀ n, P12335511684273890842.a n = A007655 (n + 1)

theorem P12335511684273890842.correct : P12335511684273890842.Spec := by
  intro n
  simp only [A007655, Nat.add_sub_cancel]

end A007655

/-! ## A007655.P9176440669859280309

`((7+4*sqrt(3))^n-(7-4*sqrt(3))^n)/(8*sqrt(3))`
-/

namespace A007655.P9176440669859280309
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((7 + 4 * Real.sqrt (3 : ℝ)) ^ n - (7 - 4 * Real.sqrt (3 : ℝ)) ^ n) / (8 * Real.sqrt (3 : ℝ))

end

end A007655.P9176440669859280309

namespace A007655

/-- `((7+4*sqrt(3))^n-(7-4*sqrt(3))^n)/(8*sqrt(3))` -/
def P9176440669859280309.Spec : Prop :=
  ∀ n, P9176440669859280309.a n = (A007655 (n + 1) : ℝ)

end A007655

/-! ## A007655.P7391610112686190255

`sqrt((A011943(n+1)²-1)/48)`
-/

namespace A007655.P7391610112686190255
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((A011943 (n + 1) ^ 2 - 1 : ℚ) / 48 : ℝ)

end

end A007655.P7391610112686190255

namespace A007655

/-- `sqrt((A011943(n+1)²-1)/48)` -/
def P7391610112686190255.Spec : Prop :=
  ∀ n, P7391610112686190255.a n = (A007655 (n + 1) : ℝ)

end A007655

/-! ## A007655.P7550117969143970430

`ogf(x/(1-14x+x^2))`
-/

namespace A007655.P7550117969143970430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1] [1, -14, 1] n

end

end A007655.P7550117969143970430

namespace A007655

/-- `ogf(x/(1-14x+x^2))` -/
def P7550117969143970430.Spec : Prop :=
  ∀ n, P7550117969143970430.a n = A007655 (n + 1)

end A007655

/-! ## A007655.P10275170719539286264

`∑[A122571(n+1)]-1`
-/

namespace A007655.P10275170719539286264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122571 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A007655.P10275170719539286264

namespace A007655

/-- `∑[A122571(n+1)]-1` -/
def P10275170719539286264.Spec : Prop :=
  ∀ n, P10275170719539286264.a n = A007655 (n + 1)

end A007655

/-! ## A007655.P13435714955697299180

`∑[A094347(n)/2]-1`
-/

namespace A007655.P13435714955697299180
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A094347 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A007655.P13435714955697299180

namespace A007655

/-- `∑[A094347(n)/2]-1` -/
def P13435714955697299180.Spec : Prop :=
  ∀ n, P13435714955697299180.a n = (A007655 (n + 1) : ℚ)

end A007655

/-! ## A007655.P14791389770217214526

`A001570(n)+a(n-1)` with `a(0)=0`
-/

namespace A007655.P14791389770217214526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A001570 n + a (n - 1)

end

end A007655.P14791389770217214526

namespace A007655

/-- `A001570(n)+a(n-1)` -/
def P14791389770217214526.Spec : Prop :=
  ∀ n, P14791389770217214526.a n = A007655 (n + 1)

end A007655

/-! ## A007655.P16880022867084587490

`abs(1-∑[A122572(n+1)])`
-/

namespace A007655.P16880022867084587490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122572 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - ∑ j ∈ Finset.range (n + 1), f1 j|

end

end A007655.P16880022867084587490

namespace A007655

/-- `abs(1-∑[A122572(n+1)])` -/
def P16880022867084587490.Spec : Prop :=
  ∀ n, P16880022867084587490.a n = A007655 (n + 1)

end A007655

/-! ## A007655.P13216326050092681500

`A099486(A004273(n))`
-/

namespace A007655.P13216326050092681500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099486 (A004273 n).toNat

end

end A007655.P13216326050092681500

namespace A007655

/-- `A099486(A004273(n))` -/
def P13216326050092681500.Spec : Prop :=
  ∀ n, P13216326050092681500.a n = A007655 (n + 1)

end A007655

/-! ## A007655.P11092074304350281842

`A217855(n)-A098301(n)`
-/

namespace A007655.P11092074304350281842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217855 n - A098301 n

end

end A007655.P11092074304350281842

namespace A007655

/-- `A217855(n)-A098301(n)` -/
def P11092074304350281842.Spec : Prop :=
  ∀ n, P11092074304350281842.a n = A007655 (n + 1)

end A007655

/-!
# A007656: Mass number of the most abundant isotope of the element with atomic number Z = n.

The programs for A007656, there is no canonical definition to state claims against.
-/

/-! ## A007656.P16910134137846301732

`A236854(A236854(n+1))+A058317(n+1)`
-/

namespace A007656.P16910134137846301732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236854 (A236854 (n + 1)).toNat + A058317 (n + 1)

end

end A007656.P16910134137846301732

/-! ## A007656.P2939403524125944411

`A181094(A181094(n+1))+A058317(n+1)`
-/

namespace A007656.P2939403524125944411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181094 (A181094 (n + 1)).toNat + A058317 (n + 1)

end

end A007656.P2939403524125944411

/-! ## A007656.P13505046089994539838

`A181095(A181095(n+1))+A058317(n+1)`
-/

namespace A007656.P13505046089994539838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181095 (A181095 (n + 1)).toNat + A058317 (n + 1)

end

end A007656.P13505046089994539838

/-! ## A007656.P15810881061824668458

`A355166(A355166(n+1))+A058317(n+1)`
-/

namespace A007656.P15810881061824668458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355166 (A355166 (n + 1)).toNat + A058317 (n + 1)

end

end A007656.P15810881061824668458

/-! ## A007656.P18430587332433204365

`A058317(A328617(n+1))+1+n`
-/

namespace A007656.P18430587332433204365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058317 (A328617 (n + 1)).toNat + 1 + (n : ℤ)

end

end A007656.P18430587332433204365

/-!
# A007657: Maximal coefficient in (x + x^2 + x^4 + x^8 + ...)^n.

The programs for A007657, there is no canonical definition to state claims against.
-/

/-! ## A007657.P11700025148516356029

`A004525(Δ[∏[ceil(3^(n/3))]])`
-/

namespace A007657.P11700025148516356029
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(3 : ℝ) ^ ((n : ℚ) / 3 : ℝ)⌉

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (f1 (n + 1) - f1 n).toNat

end

end A007657.P11700025148516356029

/-! ## A007657.P1511673634332655184

`A110654(Δ[∏[ceil(3^(n/3))]])`
-/

namespace A007657.P1511673634332655184
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(3 : ℝ) ^ ((n : ℚ) / 3 : ℝ)⌉

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (f1 (n + 1) - f1 n).toNat

end

end A007657.P1511673634332655184

/-!
# A007658: Numbers k such that (3^k + 1)/4 is prime.

The programs for A007658, there is no canonical definition to state claims against.
-/

/-! ## A007658.P1305399540032571491

`p?[A275575(n+2)]`
-/

namespace A007658.P1305399540032571491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275575 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A007658.P1305399540032571491

/-! ## A007658.P15464492033572894335

`∩[A006005(n+1), A275575(n+1)]`
-/

namespace A007658.P15464492033572894335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275575 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A007658.P15464492033572894335

/-! ## A007658.P9884599852011304882

`∩[A065091(n+1), A275575(n+1)]`
-/

namespace A007658.P9884599852011304882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275575 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A007658.P9884599852011304882

/-! ## A007658.P3294581152866243984

`∩[A245072(n+1), A275575(n+1)]`
-/

namespace A007658.P3294581152866243984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245072 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275575 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A007658.P3294581152866243984

/-! ## A007658.P1754463950204755416

`p?[A138927(n+1)]`
-/

namespace A007658.P1754463950204755416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138927 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A007658.P1754463950204755416

/-!
# A007659: Primes p such that Ramanujan number tau(p) is divisible by p.

The programs for A007659, there is no canonical definition to state claims against.
-/

/-! ## A007659.P12630569444815952896

`p?[A063938(n+1)]`
-/

namespace A007659.P12630569444815952896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063938 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A007659.P12630569444815952896

/-!
# A007660: a(n) = a(n-1)*a(n-2) + 1 with a(0) = a(1) = 0.

The programs for A007660, the canonical program `A007660.P11651177498931733772` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A007660 has offset 0).

The definition of A007660 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)*a(n-2)+1` (program `A007660.P11651177498931733772`, by `A007660.P11651177498931733772.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A007660.P11651177498931733772

`a(n-1)*a(n-2)+1` with `a(0)=0, a(1)=0`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A007660

/-- `a(n-1)*a(n-2)+1` -/
def P11651177498931733772.Spec : Prop :=
  ∀ n, (P11651177498931733772.a n : ℤ) = A007660 n

theorem P11651177498931733772.correct : P11651177498931733772.Spec := by
  intro n
  simp only [A007660]

end A007660

/-! ## A007660.P1438821736912916571

`lcm(a(n-1), a(n-2))+1` with `a(0)=0, a(1)=0`
-/

namespace A007660.P1438821736912916571
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0] fun n a =>
  Nat.lcm (a (n - 1)) (a (n - 2)) + 1

end

end A007660.P1438821736912916571

namespace A007660

/-- `lcm(a(n-1), a(n-2))+1` -/
def P1438821736912916571.Spec : Prop :=
  ∀ n, (P1438821736912916571.a n : ℤ) = A007660 n

end A007660

/-! ## A007660.P8132060848316876385

`1-ceil(-a(n-1))*a(n-2)` with `a(0)=0, a(1)=0`

`ceil` is left out, it is the identity on integers.
-/

namespace A007660.P8132060848316876385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  1 - (-a (n - 1)) * a (n - 2)

end

end A007660.P8132060848316876385

namespace A007660

/-- `1-ceil(-a(n-1))*a(n-2)` -/
def P8132060848316876385.Spec : Prop :=
  ∀ n, P8132060848316876385.a n = A007660 n

end A007660

/-! ## A007660.P419428074217924184

`1-round(-a(n-1))*a(n-2)` with `a(0)=0, a(1)=0`

`round` is left out, it is the identity on integers.
-/

namespace A007660.P419428074217924184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  1 - (-a (n - 1)) * a (n - 2)

end

end A007660.P419428074217924184

namespace A007660

/-- `1-round(-a(n-1))*a(n-2)` -/
def P419428074217924184.Spec : Prop :=
  ∀ n, P419428074217924184.a n = A007660 n

end A007660

/-! ## A007660.P7804195126364837384

`-xor(a(n-1)*a(n-2), -1)` with `a(0)=0, a(1)=0`
-/

namespace A007660.P7804195126364837384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  -Int.xor (a (n - 1) * a (n - 2)) (-1)

end

end A007660.P7804195126364837384

namespace A007660

/-- `-xor(a(n-1)*a(n-2), -1)` -/
def P7804195126364837384.Spec : Prop :=
  ∀ n, P7804195126364837384.a n = A007660 n

end A007660

/-!
# A007661: Triple factorial numbers a(n) = n!!!, defined by a(n) = n*a(n-3), a(0) = a(1) = 1, a(2) = 2. Sometimes written n!3.

The programs for A007661, the canonical program `A007661.P16296030319596518937` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A007661 has offset 0).

The definition of A007661 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*a(n-3)` (program `A007661.P16296030319596518937`, by `A007661.P16296030319596518937.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A007661.P16296030319596518937

`n*a(n-3)` with `a(0)=1, a(1)=1, a(2)=2`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A007661

/-- `n*a(n-3)` -/
def P16296030319596518937.Spec : Prop :=
  ∀ n, (P16296030319596518937.a n : ℤ) = A007661 n

theorem P16296030319596518937.correct : P16296030319596518937.Spec := by
  intro n
  simp only [A007661]

end A007661

/-! ## A007661.P4587719032531111043

`a(abs(3-n))/tan(acot(n))` with `a(0)=1, a(1)=1`
-/

namespace A007661.P4587719032531111043
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [1, 1] fun n a =>
  a |3 - (n : ℤ)|.toNat / Real.tan (SequenceMachineLib.acot (n : ℝ))

end

end A007661.P4587719032531111043

namespace A007661

/-- `a(abs(3-n))/tan(acot(n))` -/
def P4587719032531111043.Spec : Prop :=
  ∀ n, P4587719032531111043.a n = (A007661 n : ℝ)

end A007661

/-! ## A007661.P16584865229428133855

`a(n-3)/n^(-1)` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A007661.P16584865229428133855
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  a (n - 3) / (n : ℚ) ^ (-1 : ℤ)

end

end A007661.P16584865229428133855

namespace A007661

/-- `a(n-3)/n^(-1)` -/
def P16584865229428133855.Spec : Prop :=
  ∀ n, P16584865229428133855.a n = (A007661 n : ℚ)

end A007661

/-! ## A007661.P2999504942067171142

`(n%3)!*A161474(n)`
-/

namespace A007661.P2999504942067171142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n % 3) : ℤ) * A161474 n

end

end A007661.P2999504942067171142

namespace A007661

/-- `(n%3)!*A161474(n)` -/
def P2999504942067171142.Spec : Prop :=
  ∀ n, P2999504942067171142.a n = A007661 n

end A007661

/-! ## A007661.P7602823897107404739

`A161474(n)*A177702(n)`
-/

namespace A007661.P7602823897107404739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161474 n * A177702 n

end

end A007661.P7602823897107404739

namespace A007661

/-- `A161474(n)*A177702(n)` -/
def P7602823897107404739.Spec : Prop :=
  ∀ n, P7602823897107404739.a n = A007661 n

end A007661

/-! ## A007661.P11813695787423982055

`gcd(A085158(2*n), A114806(3*n))`
-/

namespace A007661.P11813695787423982055
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A085158 (2 * n)) (A114806 (3 * n))

end

end A007661.P11813695787423982055

namespace A007661

/-- `gcd(A085158(2*n), A114806(3*n))` -/
def P11813695787423982055.Spec : Prop :=
  ∀ n, (P11813695787423982055.a n : ℤ) = A007661 n

end A007661

/-! ## A007661.P3807245090100139161

`A129116(∑[n+2]-1)`
-/

namespace A007661.P3807245090100139161
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129116 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A007661.P3807245090100139161

namespace A007661

/-- `A129116(∑[n+2]-1)` -/
def P3807245090100139161.Spec : Prop :=
  ∀ n, P3807245090100139161.a n = A007661 n

end A007661

/-! ## A007661.P14675112824913772609

`or(char[1], A129116(A034856(n+1)))`
-/

namespace A007661.P14675112824913772609
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A129116 (A034856 (n + 1)).toNat)

end

end A007661.P14675112824913772609

namespace A007661

/-- `or(char[1], A129116(A034856(n+1)))` -/
def P14675112824913772609.Spec : Prop :=
  ∀ n, P14675112824913772609.a n = A007661 n

end A007661

/-! ## A007661.P3627717932855000498

`gcd(A000038(n), A129116(A034856(n+1)))`
-/

namespace A007661.P3627717932855000498
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A129116 (A034856 (n + 1)).toNat)

end

end A007661.P3627717932855000498

namespace A007661

/-- `gcd(A000038(n), A129116(A034856(n+1)))` -/
def P3627717932855000498.Spec : Prop :=
  ∀ n, (P3627717932855000498.a n : ℤ) = A007661 n

end A007661

/-! ## A007661.P1981553717516402514

`A114423(A340266(n+1))`
-/

namespace A007661.P1981553717516402514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114423 (A340266 (n + 1)).toNat

end

end A007661.P1981553717516402514

namespace A007661

/-- `A114423(A340266(n+1))` -/
def P1981553717516402514.Spec : Prop :=
  ∀ n, P1981553717516402514.a n = A007661 n

end A007661

/-!
# A007662: Quadruple factorial numbers n!!!!: a(n) = n*a(n-4).

The programs for A007662, the canonical program `A007662.P9251466768483060723` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A007662 has offset 0).

The definition of A007662 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*a(n-4)` (program `A007662.P9251466768483060723`, by `A007662.P9251466768483060723.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A007662.P9251466768483060723

`n*a(n-4)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=3`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A007662

/-- `n*a(n-4)` -/
def P9251466768483060723.Spec : Prop :=
  ∀ n, (P9251466768483060723.a n : ℤ) = A007662 n

theorem P9251466768483060723.correct : P9251466768483060723.Spec := by
  intro n
  simp only [A007662]

end A007662

/-! ## A007662.P4037533650909581090

`a(n-4)/n^(-1)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=3`
-/

namespace A007662.P4037533650909581090
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1, 2, 3] fun n a =>
  a (n - 4) / (n : ℚ) ^ (-1 : ℤ)

end

end A007662.P4037533650909581090

namespace A007662

/-- `a(n-4)/n^(-1)` -/
def P4037533650909581090.Spec : Prop :=
  ∀ n, P4037533650909581090.a n = (A007662 n : ℚ)

end A007662

/-! ## A007662.P7039331508312407986

`∏[n/a(n-1)]/a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A007662.P7039331508312407986
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  (n : ℚ) / f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n a =>
  (∏ j ∈ Finset.range (n + 1), f1 j) / a (n - 2)

end

end A007662.P7039331508312407986

namespace A007662

/-- `∏[n/a(n-1)]/a(n-2)` -/
def P7039331508312407986.Spec : Prop :=
  ∀ n, P7039331508312407986.a n = (A007662 n : ℚ)

end A007662

/-! ## A007662.P4618083164511582364

`A006882(n)/a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A007662.P4618083164511582364
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n a =>
  (A006882 n : ℚ) / a (n - 2)

end

end A007662.P4618083164511582364

namespace A007662

/-- `A006882(n)/a(n-2)` -/
def P4618083164511582364.Spec : Prop :=
  ∀ n, P4618083164511582364.a n = (A007662 n : ℚ)

end A007662

/-! ## A007662.P12575804163302443065

`A214916(n)/a(n-1)` with `a(0)=1`
-/

namespace A007662.P12575804163302443065
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (A214916 n : ℚ) / a (n - 1)

end

end A007662.P12575804163302443065

namespace A007662

/-- `A214916(n)/a(n-1)` -/
def P12575804163302443065.Spec : Prop :=
  ∀ n, P12575804163302443065.a n = (A007662 n : ℚ)

end A007662

/-! ## A007662.P6257857296327261673

`A129116(record[a(n-1)-5+n])` with `a(0)=4, a(1)=3`
-/

namespace A007662.P6257857296327261673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [4, 3] fun n f1 =>
  f1 (n - 1) - 5 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129116 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A007662.P6257857296327261673

namespace A007662

/-- `A129116(record[a(n-1)-5+n])` -/
def P6257857296327261673.Spec : Prop :=
  ∀ n, P6257857296327261673.a n = A007662 n

end A007662

/-! ## A007662.P11762794560819580046

`A129116(A052905(n)+A057427(n)+1)`
-/

namespace A007662.P11762794560819580046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129116 (A052905 n + (A057427 n + 1)).toNat

end

end A007662.P11762794560819580046

namespace A007662

/-- `A129116(A052905(n)+A057427(n)+1)` -/
def P11762794560819580046.Spec : Prop :=
  ∀ n, P11762794560819580046.a n = A007662 n

end A007662

/-! ## A007662.P10030758361871574074

`A114423(A167614(n+2))`
-/

namespace A007662.P10030758361871574074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114423 (A167614 (n + 2)).toNat

end

end A007662.P10030758361871574074

namespace A007662

/-- `A114423(A167614(n+2))` -/
def P10030758361871574074.Spec : Prop :=
  ∀ n, P10030758361871574074.a n = A007662 n

end A007662

/-!
# A007663: Fermat quotients: (2^(p-1)-1)/p, where p=prime(n).

The programs for A007663, there is no canonical definition to state claims against.
-/

/-! ## A007663.P12219903707371741786

`record[A001226(n+1)]`
-/

namespace A007663.P12219903707371741786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001226 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A007663.P12219903707371741786

/-! ## A007663.P7410799602747019272

`record[A329238(n+1)]`
-/

namespace A007663.P7410799602747019272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329238 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A007663.P7410799602747019272

/-! ## A007663.P11456347137803403680

`A064535(n+2)/2`
-/

namespace A007663.P11456347137803403680
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064535 (n + 2) : ℚ) / 2

end

end A007663.P11456347137803403680

/-! ## A007663.P7416503875496636385

`A000048(p?[2*n+1])`
-/

namespace A007663.P7416503875496636385
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000048 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A007663.P7416503875496636385

/-! ## A007663.P10379471657671712099

`A006788(p?[2*n+1])`
-/

namespace A007663.P10379471657671712099
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006788 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A007663.P10379471657671712099

/-! ## A007663.P4216189015455547150

`A051841(p?[2*n+1])`
-/

namespace A007663.P4216189015455547150
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051841 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A007663.P4216189015455547150

/-! ## A007663.P12177044604995271791

`A054650(p?[2*n+1])`
-/

namespace A007663.P12177044604995271791
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054650 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A007663.P12177044604995271791

/-! ## A007663.P3215046328253339304

`A056295(p?[2*n+1])`
-/

namespace A007663.P3215046328253339304
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056295 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A007663.P3215046328253339304

/-! ## A007663.P585804206379951343

`A056303(p?[2*n+1])`
-/

namespace A007663.P585804206379951343
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056303 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A007663.P585804206379951343

/-! ## A007663.P17833117808972278595

`A060172(p?[2*n+1])`
-/

namespace A007663.P17833117808972278595
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060172 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A007663.P17833117808972278595

/-!
# A007664: Reve's puzzle: number of moves needed to solve the Towers of Hanoi puzzle with 4 pegs and n disks, according to the Frame-Stewart algorithm.

The programs for A007664, the canonical program `A007664.P5381836251417023660` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A007664 has offset 0).

The definition of A007664 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A007664.P5381836251417023660

`1+(n-1-A003056(n)*(A003056(n)-1)/2)*2^A003056(n)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A007664

/-- `1+(n-1-A003056(n)*(A003056(n)-1)/2)*2^A003056(n)` -/
def P5381836251417023660.Spec : Prop :=
  ∀ n, P5381836251417023660.a n = (A007664 n : ℚ)

end A007664

/-! ## A007664.P3235999679571624782

`∑[2^∑[char[∑[n+1]+1]]]-1`
-/

namespace A007664.P3235999679571624782
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j + 1

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A007664.P3235999679571624782

namespace A007664

/-- `∑[2^∑[char[∑[n+1]+1]]]-1` -/
def P3235999679571624782.Spec : Prop :=
  ∀ n, P3235999679571624782.a n = A007664 n

end A007664

/-! ## A007664.P11873698853404416164

`∑[A131577(comp[∑[n+1]]-n)]`
-/

namespace A007664.P11873698853404416164
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n - n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007664.P11873698853404416164

namespace A007664

/-- `∑[A131577(comp[∑[n+1]]-n)]` -/
def P11873698853404416164.Spec : Prop :=
  ∀ n, P11873698853404416164.a n = A007664 n

end A007664

/-! ## A007664.P3526706855067026328

`∑[2*a(A083920(n)-char[1])]` with `a(0)=0, a(1)=1`
-/

namespace A007664.P3526706855067026328
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  2 * f1 (A083920 n - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007664.P3526706855067026328

namespace A007664

/-- `∑[2*a(A083920(n)-char[1])]` -/
def P3526706855067026328.Spec : Prop :=
  ∀ n, (P3526706855067026328.a n : ℤ) = A007664 n

end A007664

/-! ## A007664.P6219595364317735152

`∑[A034008(A123578(n)+1)]`
-/

namespace A007664.P6219595364317735152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034008 (A123578 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007664.P6219595364317735152

namespace A007664

/-- `∑[A034008(A123578(n)+1)]` -/
def P6219595364317735152.Spec : Prop :=
  ∀ n, P6219595364317735152.a n = A007664 n

end A007664

/-! ## A007664.P5402399649632015569

`(∑[A140513(n)]-A140513(n))/2`
-/

namespace A007664.P5402399649632015569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140513 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j - A140513 n : ℤ) : ℚ) / 2

end

end A007664.P5402399649632015569

namespace A007664

/-- `(∑[A140513(n)]-A140513(n))/2` -/
def P5402399649632015569.Spec : Prop :=
  ∀ n, P5402399649632015569.a n = (A007664 n : ℚ)

end A007664

/-! ## A007664.P3194927047463075603

`∑[2*a(n+1-A172471(A172471(n)+n))]` with `a(0)=0, a(1)=1`
-/

namespace A007664.P3194927047463075603
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  2 * f1 ((n + 1 : ℤ) - A172471 (A172471 n + (n : ℤ)).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007664.P3194927047463075603

namespace A007664

/-- `∑[2*a(n+1-A172471(A172471(n)+n))]` -/
def P3194927047463075603.Spec : Prop :=
  ∀ n, (P3194927047463075603.a n : ℤ) = A007664 n

end A007664

/-! ## A007664.P6713373702019276463

`∑[A034008(A000194(2*n)+1)]`
-/

namespace A007664.P6713373702019276463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034008 (A000194 (2 * n) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007664.P6713373702019276463

namespace A007664

/-- `∑[A034008(A000194(2*n)+1)]` -/
def P6713373702019276463.Spec : Prop :=
  ∀ n, P6713373702019276463.a n = A007664 n

end A007664

/-! ## A007664.P12570147380835625964

`∑[A053644(record[A073137(n)])]`
-/

namespace A007664.P12570147380835625964
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073137 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053644 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007664.P12570147380835625964

namespace A007664

/-- `∑[A053644(record[A073137(n)])]` -/
def P12570147380835625964.Spec : Prop :=
  ∀ n, P12570147380835625964.a n = A007664 n

end A007664

/-! ## A007664.P15666778307207120199

`∑[A053644(∑[A007318(n)]-1)]`
-/

namespace A007664.P15666778307207120199
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053644 (∑ j ∈ Finset.range (n + 1), f2 j - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007664.P15666778307207120199

namespace A007664

/-- `∑[A053644(∑[A007318(n)]-1)]` -/
def P15666778307207120199.Spec : Prop :=
  ∀ n, P15666778307207120199.a n = A007664 n

end A007664

/-!
# A007665: Tower of Hanoi with 5 pegs.

The programs for A007665, the canonical program `A007665.P8211161841248500358` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A007665 has offset 1).

The definition of A007665 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A007665.P8211161841248500358

`∑[2^(∑[char[C(n, 3)]]-1)]`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A007665

/-- `∑[2^(∑[char[C(n, 3)]]-1)]` -/
def P8211161841248500358.Spec : Prop :=
  ∀ n, P8211161841248500358.a n = (A007665 (n + 1) : ℚ)

end A007665

/-! ## A007665.P9054698987725595147

`∑[2^∑[char[C(n, 3)]]/2]`
-/

namespace A007665.P9054698987725595147
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 3

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 ^ (∑ j ∈ Finset.range (n + 1), f2 j) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007665.P9054698987725595147

namespace A007665

/-- `∑[2^∑[char[C(n, 3)]]/2]` -/
def P9054698987725595147.Spec : Prop :=
  ∀ n, P9054698987725595147.a n = (A007665 (n + 1) : ℚ)

end A007665

/-! ## A007665.P6882827007932323658

`∑[∏[char[∑[∑[n+1]]]+1]]`
-/

namespace A007665.P6882827007932323658
noncomputable section

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f3 j = n then 1 else 0) + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007665.P6882827007932323658

namespace A007665

/-- `∑[∏[char[∑[∑[n+1]]]+1]]` -/
def P6882827007932323658.Spec : Prop :=
  ∀ n, (P6882827007932323658.a n : ℤ) = A007665 (n + 1)

end A007665

/-! ## A007665.P11264785791831990869

`A000027(∑[2^A056556(n)])`
-/

namespace A007665.P11264785791831990869
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A056556 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A007665.P11264785791831990869

namespace A007665

/-- `A000027(∑[2^A056556(n)])` -/
def P11264785791831990869.Spec : Prop :=
  ∀ n, P11264785791831990869.a n = A007665 (n + 1)

end A007665

/-! ## A007665.P14159949419224205069

`A000265(∑[2^A056556(n)])`
-/

namespace A007665.P14159949419224205069
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A056556 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A007665.P14159949419224205069

namespace A007665

/-- `A000265(∑[2^A056556(n)])` -/
def P14159949419224205069.Spec : Prop :=
  ∀ n, P14159949419224205069.a n = A007665 (n + 1)

end A007665

/-! ## A007665.P14568215919941056606

`A109613(∑[2^A056556(n)])`
-/

namespace A007665.P14568215919941056606
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A056556 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A007665.P14568215919941056606

namespace A007665

/-- `A109613(∑[2^A056556(n)])` -/
def P14568215919941056606.Spec : Prop :=
  ∀ n, P14568215919941056606.a n = A007665 (n + 1)

end A007665

/-!
# A007667: The sum of both two and three consecutive squares.

The programs for A007667, the canonical program `A007667.P14906312947735841670` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A007667 has offset 1).

The definition of A007667 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A007667.P14906312947735841670

`3*A006061(n+1)+2`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A007667

/-- `3*A006061(n+1)+2` -/
def P14906312947735841670.Spec : Prop :=
  ∀ n, P14906312947735841670.a n = A007667 (n + 1)

theorem P14906312947735841670.correct : P14906312947735841670.Spec := by
  intro n
  simp only [A007667, Nat.add_sub_cancel]

end A007667

/-! ## A007667.P6770938039152775083

`9*A045502(n)+5`
-/

namespace A007667.P6770938039152775083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * A045502 n + 5

end

end A007667.P6770938039152775083

namespace A007667

/-- `9*A045502(n)+5` -/
def P6770938039152775083.Spec : Prop :=
  ∀ n, P6770938039152775083.a n = A007667 (n + 1)

end A007667

/-! ## A007667.P17895465837487352907

`3*A054320(n)²+2`
-/

namespace A007667.P17895465837487352907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A054320 n ^ 2 + 2

end

end A007667.P17895465837487352907

namespace A007667

/-- `3*A054320(n)²+2` -/
def P17895465837487352907.Spec : Prop :=
  ∀ n, P17895465837487352907.a n = A007667 (n + 1)

end A007667

/-! ## A007667.P7848192667797734528

`4*A006244(n+1)+1`
-/

namespace A007667.P7848192667797734528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A006244 (n + 1) + 1

end

end A007667.P7848192667797734528

namespace A007667

/-- `4*A006244(n+1)+1` -/
def P7848192667797734528.Spec : Prop :=
  ∀ n, P7848192667797734528.a n = A007667 (n + 1)

end A007667

/-! ## A007667.P13949858906465403605

`6*A219113(n+1)-1`
-/

namespace A007667.P13949858906465403605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A219113 (n + 1) - 1

end

end A007667.P13949858906465403605

namespace A007667

/-- `6*A219113(n+1)-1` -/
def P13949858906465403605.Spec : Prop :=
  ∀ n, P13949858906465403605.a n = A007667 (n + 1)

end A007667

/-! ## A007667.P10516153880509137181

`round(A146313(n+1)+A146313(n+1)/2)`
-/

namespace A007667.P10516153880509137181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A146313 (n + 1) : ℚ) + (A146313 (n + 1) : ℚ) / 2)

end

end A007667.P10516153880509137181

namespace A007667

/-- `round(A146313(n+1)+A146313(n+1)/2)` -/
def P10516153880509137181.Spec : Prop :=
  ∀ n, P10516153880509137181.a n = A007667 (n + 1)

end A007667

/-! ## A007667.P2726453725464525059

`A098297(2*n+1)+A171640(2*(n+1))+1`
-/

namespace A007667.P2726453725464525059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098297 (2 * n + 1) + (A171640 (2 * (n + 1)) + 1)

end

end A007667.P2726453725464525059

namespace A007667

/-- `A098297(2*n+1)+A171640(2*(n+1))+1` -/
def P2726453725464525059.Spec : Prop :=
  ∀ n, P2726453725464525059.a n = A007667 (n + 1)

end A007667

/-! ## A007667.P2235170694712263257

`A001079(2*n+1)+1-A098297(2*n+1)`
-/

namespace A007667.P2235170694712263257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001079 (2 * n + 1) + (1 - A098297 (2 * n + 1))

end

end A007667.P2235170694712263257

namespace A007667

/-- `A001079(2*n+1)+1-A098297(2*n+1)` -/
def P2235170694712263257.Spec : Prop :=
  ∀ n, P2235170694712263257.a n = A007667 (n + 1)

end A007667

/-! ## A007667.P10050358163556351217

`A098297(2*n+1)+A132596(2*n+1)+2`
-/

namespace A007667.P10050358163556351217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098297 (2 * n + 1) + (A132596 (2 * n + 1) + 2)

end

end A007667.P10050358163556351217

namespace A007667

/-- `A098297(2*n+1)+A132596(2*n+1)+2` -/
def P10050358163556351217.Spec : Prop :=
  ∀ n, P10050358163556351217.a n = A007667 (n + 1)

end A007667

/-!
# A007668: Numbers k such that phi(k) divides sigma(k) and sigma(k)/k > sigma(m)/m for all m < k.

The programs for A007668, there is no canonical definition to state claims against.
-/

/-! ## A007668.P9270807561741795130

`A081125(A017987(n))`
-/

namespace A007668.P9270807561741795130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081125 (A017987 n).toNat

end

end A007668.P9270807561741795130

/-!
# A007670: Numbers k such that 2^k - 2^((k + 1)/2) + 1 is prime.

The programs for A007670, there is no canonical definition to state claims against.
-/

/-! ## A007670.P1813544645905579340

`∩[A057429(n+1), A097958(n+1)]`
-/

namespace A007670.P1813544645905579340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057429 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097958 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A007670.P1813544645905579340

/-! ## A007670.P18335737786737992270

`2*A006598(n+1)+1`
-/

namespace A007670.P18335737786737992270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A006598 (n + 1) + 1

end

end A007670.P18335737786737992270

/-! ## A007670.P2383667617573673915

`A005408(A006598(n+1))`
-/

namespace A007670.P2383667617573673915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A006598 (n + 1)).toNat

end

end A007670.P2383667617573673915

/-! ## A007670.P11202198584345668853

`A004273(A006598(n+1)+1)`
-/

namespace A007670.P11202198584345668853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A006598 (n + 1) + 1).toNat

end

end A007670.P11202198584345668853

/-! ## A007670.P16470140519095015449

`A060308(A006598(n+1)+1)`
-/

namespace A007670.P16470140519095015449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060308 (A006598 (n + 1) + 1).toNat

end

end A007670.P16470140519095015449

/-!
# A007671: Numbers n such that 2^n + 2^((n + 1)/2) + 1 is prime.

The programs for A007671, there is no canonical definition to state claims against.
-/

/-! ## A007671.P17501643085968677602

`2*A006599(n+1)+1`
-/

namespace A007671.P17501643085968677602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A006599 (n + 1) + 1

end

end A007671.P17501643085968677602

/-! ## A007671.P2127155241982635853

`2*A108062(n+1)-1`
-/

namespace A007671.P2127155241982635853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A108062 (n + 1) - 1

end

end A007671.P2127155241982635853

/-! ## A007671.P17945324932963549669

`A108062(n+1)+A006599(n+1)`
-/

namespace A007671.P17945324932963549669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108062 (n + 1) + A006599 (n + 1)

end

end A007671.P17945324932963549669

/-! ## A007671.P11673054403663860139

`A005408(A006599(n+1))`
-/

namespace A007671.P11673054403663860139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A006599 (n + 1)).toNat

end

end A007671.P11673054403663860139

/-! ## A007671.P15500072740461063206

`A004273(A108062(n+1))`
-/

namespace A007671.P15500072740461063206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A108062 (n + 1)).toNat

end

end A007671.P15500072740461063206

/-!
# A007672: a(n) = A002034(n)!/n.

The programs for A007672, there is no canonical definition to state claims against.
-/

/-! ## A007672.P15511192368633826487

`A002034(n+1)!/(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A007672.P15511192368633826487
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A002034 (n + 1)).toNat : ℚ) / (n + 1 : ℚ)

end

end A007672.P15511192368633826487

/-! ## A007672.P16896480720635114914

`A139148(n+1)-1`
-/

namespace A007672.P16896480720635114914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139148 (n + 1) - 1

end

end A007672.P16896480720635114914

/-! ## A007672.P11941430669441231560

`A092495(n+1)/(n+1)`
-/

namespace A007672.P11941430669441231560
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A092495 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A007672.P11941430669441231560

/-! ## A007672.P14195465980702158565

`A000142(A064760(n+1))/(n+1)`
-/

namespace A007672.P14195465980702158565
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 (A064760 (n + 1)).toNat : ℚ) / (n + 1 : ℚ)

end

end A007672.P14195465980702158565

/-! ## A007672.P3095040625726729487

`A000142(A002034(n+1))/A000027(n+1)`
-/

namespace A007672.P3095040625726729487
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 (A002034 (n + 1)).toNat : ℚ) / (A000027 (n + 1) : ℚ)

end

end A007672.P3095040625726729487

/-! ## A007672.P18098498361531715265

`A000142(A002034(n+1))/A119628(A083872(n+1))`
-/

namespace A007672.P18098498361531715265
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 (A002034 (n + 1)).toNat : ℚ) / (A119628 (A083872 (n + 1)).toNat : ℚ)

end

end A007672.P18098498361531715265

/-!
# A007674: Numbers m such that m and m+1 are squarefree.

The programs for A007674, the canonical program `A007674.P4121978718907005715` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A007674 has offset 1).

The definition of A007674 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A007674.P17472889836225262245

`floor(sqrt(A229882(n+1)))`
-/

namespace A007674.P17472889836225262245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A229882 (n + 1))

end

end A007674.P17472889836225262245

namespace A007674

/-- `floor(sqrt(A229882(n+1)))` -/
def P17472889836225262245.Spec : Prop :=
  ∀ n, P17472889836225262245.a n = A007674 (n + 1)

end A007674

/-! ## A007674.P1187553064062954110

`floor(A295243(n+1)/2)`
-/

namespace A007674.P1187553064062954110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A295243 (n + 1) : ℚ) / 2⌋

end

end A007674.P1187553064062954110

namespace A007674

/-- `floor(A295243(n+1)/2)` -/
def P1187553064062954110.Spec : Prop :=
  ∀ n, P1187553064062954110.a n = A007674 (n + 1)

end A007674

/-! ## A007674.P9452241288196696851

`A005117(A375927(n+1))`
-/

namespace A007674.P9452241288196696851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (A375927 (n + 1)).toNat

end

end A007674.P9452241288196696851

namespace A007674

/-- `A005117(A375927(n+1))` -/
def P9452241288196696851.Spec : Prop :=
  ∀ n, P9452241288196696851.a n = A007674 (n + 1)

end A007674

/-! ## A007674.P4121978718907005715

`eq[A087049(n+1), A105570(n)]`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A007674

/-- `eq[A087049(n+1), A105570(n)]` -/
def P4121978718907005715.Spec : Prop :=
  ∀ n, (P4121978718907005715.a n : ℤ) = A007674 (n + 1)

theorem P4121978718907005715.correct : P4121978718907005715.Spec := by
  intro n
  simp only [A007674, Nat.add_sub_cancel]

end A007674

/-! ## A007674.P39179384269538366

`eq[A105570(n), A347048(n+1)]`
-/

namespace A007674.P39179384269538366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105570 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347048 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A007674.P39179384269538366

namespace A007674

/-- `eq[A105570(n), A347048(n+1)]` -/
def P39179384269538366.Spec : Prop :=
  ∀ n, (P39179384269538366.a n : ℤ) = A007674 (n + 1)

end A007674

/-! ## A007674.P3638857408096486834

`eq[A105570(n), A347439(n+1)]`
-/

namespace A007674.P3638857408096486834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105570 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347439 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A007674.P3638857408096486834

namespace A007674

/-- `eq[A105570(n), A347439(n+1)]` -/
def P3638857408096486834.Spec : Prop :=
  ∀ n, (P3638857408096486834.a n : ℤ) = A007674 (n + 1)

end A007674

/-! ## A007674.P16725567756139112903

`record[A007947(A007947(n+2)-1)]`
-/

namespace A007674.P16725567756139112903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A007947 (n + 2) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A007674.P16725567756139112903

namespace A007674

/-- `record[A007947(A007947(n+2)-1)]` -/
def P16725567756139112903.Spec : Prop :=
  ∀ n, P16725567756139112903.a n = A007674 (n + 1)

end A007674

/-! ## A007674.P13742858229319920274

`record[A007947(n+1)*A008966(n+2)]`
-/

namespace A007674.P13742858229319920274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1) * A008966 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A007674.P13742858229319920274

namespace A007674

/-- `record[A007947(n+1)*A008966(n+2)]` -/
def P13742858229319920274.Spec : Prop :=
  ∀ n, P13742858229319920274.a n = A007674 (n + 1)

end A007674

/-! ## A007674.P6898019329972492465

`record[A007947(n+1)/A051903(n+2)]`
-/

namespace A007674.P6898019329972492465
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007947 (n + 1) : ℚ) / (A051903 (n + 2) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A007674.P6898019329972492465

namespace A007674

/-- `record[A007947(n+1)/A051903(n+2)]` -/
def P6898019329972492465.Spec : Prop :=
  ∀ n, P6898019329972492465.a n = (A007674 (n + 1) : ℚ)

end A007674

/-! ## A007674.P17446094623942633334

`record[A007913(n+1)%A007913(n+2)]`
-/

namespace A007674.P17446094623942633334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007913 (n + 1)) (A007913 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A007674.P17446094623942633334

namespace A007674

/-- `record[A007913(n+1)%A007913(n+2)]` -/
def P17446094623942633334.Spec : Prop :=
  ∀ n, P17446094623942633334.a n = A007674 (n + 1)

end A007674

/-! ## A007674.P12962717010901156926

`record[A007947(n+1)%A007947(n+2)]`
-/

namespace A007674.P12962717010901156926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007947 (n + 1)) (A007947 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A007674.P12962717010901156926

namespace A007674

/-- `record[A007947(n+1)%A007947(n+2)]` -/
def P12962717010901156926.Spec : Prop :=
  ∀ n, P12962717010901156926.a n = A007674 (n + 1)

end A007674

/-! ## A007674.P16580957698340473772

`filter[A081083(n+1), A008966(#)]`
-/

namespace A007674.P16580957698340473772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081083 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A007674.P16580957698340473772

namespace A007674

/-- `filter[A081083(n+1), A008966(#)]` -/
def P16580957698340473772.Spec : Prop :=
  ∀ n, P16580957698340473772.a n = A007674 (n + 1)

end A007674

/-! ## A007674.P13914537178406901566

`filter[A081083(n+1), A166486(#)]`
-/

namespace A007674.P13914537178406901566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081083 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A166486 (f1 j).toNat = 1) n)

end

end A007674.P13914537178406901566

namespace A007674

/-- `filter[A081083(n+1), A166486(#)]` -/
def P13914537178406901566.Spec : Prop :=
  ∀ n, P13914537178406901566.a n = A007674 (n + 1)

end A007674

/-! ## A007674.P15554028923090162802

`filter[A081083(n+1), A212793(#)]`
-/

namespace A007674.P15554028923090162802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081083 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A212793 (f1 j).toNat = 1) n)

end

end A007674.P15554028923090162802

namespace A007674

/-- `filter[A081083(n+1), A212793(#)]` -/
def P15554028923090162802.Spec : Prop :=
  ∀ n, P15554028923090162802.a n = A007674 (n + 1)

end A007674

/-! ## A007674.P8526479034121013941

`filter[A081083(n+1), A323154(#)]`
-/

namespace A007674.P8526479034121013941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081083 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323154 (f1 j).toNat = 1) n)

end

end A007674.P8526479034121013941

namespace A007674

/-- `filter[A081083(n+1), A323154(#)]` -/
def P8526479034121013941.Spec : Prop :=
  ∀ n, P8526479034121013941.a n = A007674 (n + 1)

end A007674

/-! ## A007674.P7259898300731214437

`filter[A081083(n+1), A350070(#)]`
-/

namespace A007674.P7259898300731214437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081083 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A350070 (f1 j).toNat = 1) n)

end

end A007674.P7259898300731214437

namespace A007674

/-- `filter[A081083(n+1), A350070(#)]` -/
def P7259898300731214437.Spec : Prop :=
  ∀ n, P7259898300731214437.a n = A007674 (n + 1)

end A007674

/-! ## A007674.P11390223332356589863

`filter[A081083(n+1), A353559(#)]`
-/

namespace A007674.P11390223332356589863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081083 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353559 (f1 j).toNat = 1) n)

end

end A007674.P11390223332356589863

namespace A007674

/-- `filter[A081083(n+1), A353559(#)]` -/
def P11390223332356589863.Spec : Prop :=
  ∀ n, P11390223332356589863.a n = A007674 (n + 1)

end A007674

/-! ## A007674.P10968384209769048986

`filter[A081083(n+1), A359471(#)]`
-/

namespace A007674.P10968384209769048986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081083 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359471 (f1 j).toNat = 1) n)

end

end A007674.P10968384209769048986

namespace A007674

/-- `filter[A081083(n+1), A359471(#)]` -/
def P10968384209769048986.Spec : Prop :=
  ∀ n, P10968384209769048986.a n = A007674 (n + 1)

end A007674

/-! ## A007674.P14397048371482490560

`filter[A081083(n+1), A359550(#)]`
-/

namespace A007674.P14397048371482490560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081083 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359550 (f1 j).toNat = 1) n)

end

end A007674.P14397048371482490560

namespace A007674

/-- `filter[A081083(n+1), A359550(#)]` -/
def P14397048371482490560.Spec : Prop :=
  ∀ n, P14397048371482490560.a n = A007674 (n + 1)

end A007674

/-! ## A007674.P12658661500376933478

`filter[A081083(n+1), A371087(#)]`
-/

namespace A007674.P12658661500376933478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081083 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A371087 (f1 j).toNat = 1) n)

end

end A007674.P12658661500376933478

namespace A007674

/-- `filter[A081083(n+1), A371087(#)]` -/
def P12658661500376933478.Spec : Prop :=
  ∀ n, P12658661500376933478.a n = A007674 (n + 1)

end A007674

/-!
# A007675: Numbers m such that m, m+1 and m+2 are squarefree.

The programs for A007675, the canonical program `A007675.P4991608707947414915` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A007675 has offset 1).

The definition of A007675 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6285 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A007675.P5022685015753051496

`A228649(n+1)-1`
-/

namespace A007675.P5022685015753051496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228649 (n + 1) - 1

end

end A007675.P5022685015753051496

namespace A007675

/-- `A228649(n+1)-1` -/
def P5022685015753051496.Spec : Prop :=
  ∀ n, P5022685015753051496.a n = A007675 (n + 1)

end A007675

/-! ## A007675.P12837916869332351180

`4*A370600(n+1)+1`
-/

namespace A007675.P12837916869332351180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A370600 (n + 1) + 1

end

end A007675.P12837916869332351180

namespace A007675

/-- `4*A370600(n+1)+1` -/
def P12837916869332351180.Spec : Prop :=
  ∀ n, P12837916869332351180.a n = A007675 (n + 1)

end A007675

/-! ## A007675.P9921423666422118414

`A016825(A370600(n+1))-1`
-/

namespace A007675.P9921423666422118414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016825 (A370600 (n + 1)).toNat - 1

end

end A007675.P9921423666422118414

namespace A007675

/-- `A016825(A370600(n+1))-1` -/
def P9921423666422118414.Spec : Prop :=
  ∀ n, P9921423666422118414.a n = A007675 (n + 1)

end A007675

/-! ## A007675.P8459922364955993952

`xor(A157532(n+2), A228649(n+1))`
-/

namespace A007675.P8459922364955993952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A157532 (n + 2)) (A228649 (n + 1))

end

end A007675.P8459922364955993952

namespace A007675

/-- `xor(A157532(n+2), A228649(n+1))` -/
def P8459922364955993952.Spec : Prop :=
  ∀ n, P8459922364955993952.a n = A007675 (n + 1)

end A007675

/-! ## A007675.P4991608707947414915

`eq[2, n+1-lcm(a(n-1), A008683(n+2))]` with `a(0)=0`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A007675

/-- `eq[2, n+1-lcm(a(n-1), A008683(n+2))]` -/
def P4991608707947414915.Spec : Prop :=
  ∀ n, (P4991608707947414915.a n : ℤ) = A007675 (n + 1)

theorem P4991608707947414915.correct : P4991608707947414915.Spec := by
  intro n
  simp only [A007675, Nat.add_sub_cancel]

end A007675

/-! ## A007675.P14100022976994611267

`A016813(A370600(n+1))`
-/

namespace A007675.P14100022976994611267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 (A370600 (n + 1)).toNat

end

end A007675.P14100022976994611267

namespace A007675

/-- `A016813(A370600(n+1))` -/
def P14100022976994611267.Spec : Prop :=
  ∀ n, P14100022976994611267.a n = A007675 (n + 1)

end A007675

/-! ## A007675.P8377745739402339955

`∩[A039956(n+1), A067874(n+1)]-1`
-/

namespace A007675.P8377745739402339955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039956 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067874 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A007675.P8377745739402339955

namespace A007675

/-- `∩[A039956(n+1), A067874(n+1)]-1` -/
def P8377745739402339955.Spec : Prop :=
  ∀ n, P8377745739402339955.a n = A007675 (n + 1)

end A007675

/-! ## A007675.P18388382162331314168

`∩[A067874(n+1), A245289(n+1)]-1`
-/

namespace A007675.P18388382162331314168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067874 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245289 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A007675.P18388382162331314168

namespace A007675

/-- `∩[A067874(n+1), A245289(n+1)]-1` -/
def P18388382162331314168.Spec : Prop :=
  ∀ n, P18388382162331314168.a n = A007675 (n + 1)

end A007675

/-! ## A007675.P11680525589879060954

`∩[A007674(n+1), A069977(n+1)]`
-/

namespace A007675.P11680525589879060954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007674 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069977 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A007675.P11680525589879060954

namespace A007675

/-- `∩[A007674(n+1), A069977(n+1)]` -/
def P11680525589879060954.Spec : Prop :=
  ∀ n, (P11680525589879060954.a n : ℤ) = A007675 (n + 1)

end A007675

/-! ## A007675.P10449134079201067856

`∩[A007674(n+1), A067874(n+1)-1]`
-/

namespace A007675.P10449134079201067856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007674 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067874 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A007675.P10449134079201067856

namespace A007675

/-- `∩[A007674(n+1), A067874(n+1)-1]` -/
def P10449134079201067856.Spec : Prop :=
  ∀ n, (P10449134079201067856.a n : ℤ) = A007675 (n + 1)

end A007675

/-! ## A007675.P10717972782505080464

`∩[A007674(n+1), A245289(n+1)-1]`
-/

namespace A007675.P10717972782505080464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007674 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245289 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A007675.P10717972782505080464

namespace A007675

/-- `∩[A007674(n+1), A245289(n+1)-1]` -/
def P10717972782505080464.Spec : Prop :=
  ∀ n, (P10717972782505080464.a n : ℤ) = A007675 (n + 1)

end A007675

/-! ## A007675.P4772403441192131287

`∩[A069977(n+1), A081083(n+1)]`
-/

namespace A007675.P4772403441192131287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069977 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081083 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A007675.P4772403441192131287

namespace A007675

/-- `∩[A069977(n+1), A081083(n+1)]` -/
def P4772403441192131287.Spec : Prop :=
  ∀ n, (P4772403441192131287.a n : ℤ) = A007675 (n + 1)

end A007675

/-! ## A007675.P14762637253585994839

`∩[A067874(n+1)-1, A081083(n+1)]`
-/

namespace A007675.P14762637253585994839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067874 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081083 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A007675.P14762637253585994839

namespace A007675

/-- `∩[A067874(n+1)-1, A081083(n+1)]` -/
def P14762637253585994839.Spec : Prop :=
  ∀ n, (P14762637253585994839.a n : ℤ) = A007675 (n + 1)

end A007675

/-! ## A007675.P8338644848637305833

`∩[A081083(n+1), A245289(n+1)-1]`
-/

namespace A007675.P8338644848637305833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081083 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245289 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A007675.P8338644848637305833

namespace A007675

/-- `∩[A081083(n+1), A245289(n+1)-1]` -/
def P8338644848637305833.Spec : Prop :=
  ∀ n, (P8338644848637305833.a n : ℤ) = A007675 (n + 1)

end A007675

/-! ## A007675.P9458259105569257047

`∩[A069977(n+1), A344314(n+1)]`
-/

namespace A007675.P9458259105569257047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069977 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344314 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A007675.P9458259105569257047

namespace A007675

/-- `∩[A069977(n+1), A344314(n+1)]` -/
def P9458259105569257047.Spec : Prop :=
  ∀ n, (P9458259105569257047.a n : ℤ) = A007675 (n + 1)

end A007675

/-! ## A007675.P7851129042444997703

`∩[A245289(n+1)-1, A344314(n+1)]`
-/

namespace A007675.P7851129042444997703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245289 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344314 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A007675.P7851129042444997703

namespace A007675

/-- `∩[A245289(n+1)-1, A344314(n+1)]` -/
def P7851129042444997703.Spec : Prop :=
  ∀ n, (P7851129042444997703.a n : ℤ) = A007675 (n + 1)

end A007675

/-! ## A007675.P5772590171759207926

`∩[A069977(n+1), A358817(n+1)]`
-/

namespace A007675.P5772590171759207926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069977 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358817 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A007675.P5772590171759207926

namespace A007675

/-- `∩[A069977(n+1), A358817(n+1)]` -/
def P5772590171759207926.Spec : Prop :=
  ∀ n, (P5772590171759207926.a n : ℤ) = A007675 (n + 1)

end A007675

/-! ## A007675.P2140467316694105429

`∩[A245289(n+1)-1, A358817(n+1)]`
-/

namespace A007675.P2140467316694105429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245289 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358817 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A007675.P2140467316694105429

namespace A007675

/-- `∩[A245289(n+1)-1, A358817(n+1)]` -/
def P2140467316694105429.Spec : Prop :=
  ∀ n, (P2140467316694105429.a n : ℤ) = A007675 (n + 1)

end A007675

/-!
# A007676: Numerators of convergents to e.

The programs for A007676, the canonical program `A007676.P3349414848293175676` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A007676 has offset 0).

The definition of A007676 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 155 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A007676.P3349414848293175676

`A113873(n+2)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A007676

/-- `A113873(n+2)` -/
def P3349414848293175676.Spec : Prop :=
  ∀ n, P3349414848293175676.a n = A007676 n

theorem P3349414848293175676.correct : P3349414848293175676.Spec := by
  intro n
  simp only [A007676]

end A007676

/-! ## A007676.P12315499427468546294

`record[A113873(abs(2-n))]`
-/

namespace A007676.P12315499427468546294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113873 |2 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A007676.P12315499427468546294

namespace A007676

/-- `record[A113873(abs(2-n))]` -/
def P12315499427468546294.Spec : Prop :=
  ∀ n, P12315499427468546294.a n = A007676 n

end A007676

/-! ## A007676.P935402529582044846

`A085368(n)-A007677(n)`
-/

namespace A007676.P935402529582044846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085368 n - A007677 n

end

end A007676.P935402529582044846

namespace A007676

/-- `A085368(n)-A007677(n)` -/
def P935402529582044846.Spec : Prop :=
  ∀ n, P935402529582044846.a n = A007676 n

end A007676

/-! ## A007676.P2150231740978948708

`record[A054977(n)*A113873(n)]`
-/

namespace A007676.P2150231740978948708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n * A113873 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A007676.P2150231740978948708

namespace A007676

/-- `record[A054977(n)*A113873(n)]` -/
def P2150231740978948708.Spec : Prop :=
  ∀ n, P2150231740978948708.a n = A007676 n

end A007676

/-! ## A007676.P6976836910512770933

`A006258(A339267(n+1))`
-/

namespace A007676.P6976836910512770933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006258 (A339267 (n + 1)).toNat

end

end A007676.P6976836910512770933

namespace A007676

/-- `A006258(A339267(n+1))` -/
def P6976836910512770933.Spec : Prop :=
  ∀ n, P6976836910512770933.a n = A007676 n

end A007676

/-! ## A007676.P17325273236984612660

`A006258(∑[∑[A120691(n)]])`
-/

namespace A007676.P17325273236984612660
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120691 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006258 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A007676.P17325273236984612660

namespace A007676

/-- `A006258(∑[∑[A120691(n)]])` -/
def P17325273236984612660.Spec : Prop :=
  ∀ n, P17325273236984612660.a n = A007676 n

end A007676

/-!
# A007677: Denominators of convergents to e.

The programs for A007677, the canonical program `A007677.P2199356504323934864` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A007677 has offset 0).

The definition of A007677 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 157 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A007677.P2199356504323934864

`A113874(n+2)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A007677

/-- `A113874(n+2)` -/
def P2199356504323934864.Spec : Prop :=
  ∀ n, P2199356504323934864.a n = A007677 n

theorem P2199356504323934864.correct : P2199356504323934864.Spec := by
  intro n
  simp only [A007677]

end A007677

/-! ## A007677.P16955384731131657819

`round(record[A113874(n)/A054977(n)])`
-/

namespace A007677.P16955384731131657819
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A113874 n : ℚ) / (A054977 n : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A007677.P16955384731131657819

namespace A007677

/-- `round(record[A113874(n)/A054977(n)])` -/
def P16955384731131657819.Spec : Prop :=
  ∀ n, P16955384731131657819.a n = A007677 n

end A007677

/-! ## A007677.P9081593037273651262

`round(A007676(n)/e)`
-/

namespace A007677.P9081593037273651262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A007676 n : ℝ) / Real.exp 1)

end

end A007677.P9081593037273651262

namespace A007677

/-- `round(A007676(n)/e)` -/
def P9081593037273651262.Spec : Prop :=
  ∀ n, P9081593037273651262.a n = A007677 n

end A007677

/-! ## A007677.P15101816863007736075

`A085368(n)-A007676(n)`
-/

namespace A007677.P15101816863007736075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085368 n - A007676 n

end

end A007677.P15101816863007736075

namespace A007677

/-- `A085368(n)-A007676(n)` -/
def P15101816863007736075.Spec : Prop :=
  ∀ n, P15101816863007736075.a n = A007677 n

end A007677

/-! ## A007677.P10717564954823716585

`A085368(n)-A113873(n+2)`
-/

namespace A007677.P10717564954823716585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085368 n - A113873 (n + 2)

end

end A007677.P10717564954823716585

namespace A007677

/-- `A085368(n)-A113873(n+2)` -/
def P10717564954823716585.Spec : Prop :=
  ∀ n, P10717564954823716585.a n = A007677 n

end A007677

/-! ## A007677.P5547334309517511076

`A006259(∑[A003417(n)])`
-/

namespace A007677.P5547334309517511076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003417 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006259 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A007677.P5547334309517511076

namespace A007677

/-- `A006259(∑[A003417(n)])` -/
def P5547334309517511076.Spec : Prop :=
  ∀ n, P5547334309517511076.a n = A007677 n

end A007677

/-! ## A007677.P1862745456196072846

`A006259(A339267(n+1))`
-/

namespace A007677.P1862745456196072846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006259 (A339267 (n + 1)).toNat

end

end A007677.P1862745456196072846

namespace A007677

/-- `A006259(A339267(n+1))` -/
def P1862745456196072846.Spec : Prop :=
  ∀ n, P1862745456196072846.a n = A007677 n

end A007677

/-! ## A007677.P1114095208095435380

`A006259(∑[∑[A120691(n)]])`
-/

namespace A007677.P1114095208095435380
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120691 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006259 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A007677.P1114095208095435380

namespace A007677

/-- `A006259(∑[∑[A120691(n)]])` -/
def P1114095208095435380.Spec : Prop :=
  ∀ n, P1114095208095435380.a n = A007677 n

end A007677

/-!
# A007678: Number of regions in regular n-gon with all diagonals drawn.

The programs for A007678, there is no canonical definition to state claims against.
-/

/-! ## A007678.P10349987348567487913

`A006533(n+1)-(n+1)`
-/

namespace A007678.P10349987348567487913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006533 (n + 1) - (n + 1 : ℤ)

end

end A007678.P10349987348567487913

/-! ## A007678.P13215287788588632941

`A135565(n+1)-A007569(n+1)+1`
-/

namespace A007678.P13215287788588632941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135565 (n + 1) - A007569 (n + 1) + 1

end

end A007678.P13215287788588632941

/-! ## A007678.P8707882487351122064

`abs(A006533(n+1)+A001478(n+1))`
-/

namespace A007678.P8707882487351122064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A006533 (n + 1) + A001478 (n + 1)|

end

end A007678.P8707882487351122064

/-! ## A007678.P8379501071834645592

`A135565(n+1)-(A006561(n+1)+n)`
-/

namespace A007678.P8379501071834645592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135565 (n + 1) - (A006561 (n + 1) + (n : ℤ))

end

end A007678.P8379501071834645592

/-! ## A007678.P13988758972101692058

`A006561(n+1)+A006533(n+1)%A007569(n+1)`
-/

namespace A007678.P13988758972101692058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006561 (n + 1) + Int.tmod (A006533 (n + 1)) (A007569 (n + 1))

end

end A007678.P13988758972101692058

/-! ## A007678.P10776359746156281924

`A024000(n+2)+A006533(n+1)`
-/

namespace A007678.P10776359746156281924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024000 (n + 2) + A006533 (n + 1)

end

end A007678.P10776359746156281924

/-!
# A007679: If n mod 4 = 0 then 2^(n-1)+1 elif n mod 4 = 2 then 2^(n-1)-1 else 2^(n-1).

The programs for A007679, the canonical program `A007679.P14526759962440073437` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A007679 has offset 1).

The definition of A007679 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A007679.P4433799770585825111

`2^n+cos(π*(n+1)/2)`
-/

namespace A007679.P4433799770585825111
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℝ) + Real.cos (Real.pi * (n + 1 : ℝ) / 2)

end

end A007679.P4433799770585825111

namespace A007679

/-- `2^n+cos(π*(n+1)/2)` -/
def P4433799770585825111.Spec : Prop :=
  ∀ n, P4433799770585825111.a n = (A007679 (n + 1) : ℝ)

end A007679

/-! ## A007679.P14526759962440073437

`2*a(n-1)-a(n-2)+2*a(n-3)` with `a(0)=1, a(1)=1, a(2)=4`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A007679

/-- `2*a(n-1)-a(n-2)+2*a(n-3)` -/
def P14526759962440073437.Spec : Prop :=
  ∀ n, P14526759962440073437.a n = A007679 (n + 1)

theorem P14526759962440073437.correct : P14526759962440073437.Spec := by
  intro n
  simp only [A007679, Nat.add_sub_cancel]

end A007679

/-! ## A007679.P9414250152379945931

`ogf((1-x+3x^2)/(1-2x+x^2-2x^3))`
-/

namespace A007679.P9414250152379945931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, 3] [1, -2, 1, -2] n

end

end A007679.P9414250152379945931

namespace A007679

/-- `ogf((1-x+3x^2)/(1-2x+x^2-2x^3))` -/
def P9414250152379945931.Spec : Prop :=
  ∀ n, P9414250152379945931.a n = A007679 (n + 1)

end A007679

/-! ## A007679.P10337659450940850117

`2^n+∑[(-1)^∑[n+1]]+1`
-/

namespace A007679.P10337659450940850117
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) + (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A007679.P10337659450940850117

namespace A007679

/-- `2^n+∑[(-1)^∑[n+1]]+1` -/
def P10337659450940850117.Spec : Prop :=
  ∀ n, P10337659450940850117.a n = A007679 (n + 1)

end A007679

/-! ## A007679.P2946358554771446439

`Δ[∑[n+1]%2+2^n]`
-/

namespace A007679.P2946358554771446439
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) % 2 + 2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A007679.P2946358554771446439

namespace A007679

/-- `Δ[∑[n+1]%2+2^n]` -/
def P2946358554771446439.Spec : Prop :=
  ∀ n, P2946358554771446439.a n = A007679 (n + 1)

end A007679

/-! ## A007679.P13013065418142651059

`Δ[2^n-gcd(2, ∑[n+1])]`
-/

namespace A007679.P13013065418142651059
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - (Nat.gcd 2 (∑ j ∈ Finset.range (n + 1), f2 j) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A007679.P13013065418142651059

namespace A007679

/-- `Δ[2^n-gcd(2, ∑[n+1])]` -/
def P13013065418142651059.Spec : Prop :=
  ∀ n, P13013065418142651059.a n = A007679 (n + 1)

end A007679

/-! ## A007679.P769768209930162854

`Δ[A014695(n+1)+A000051(n)]`
-/

namespace A007679.P769768209930162854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014695 (n + 1) + A000051 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A007679.P769768209930162854

namespace A007679

/-- `Δ[A014695(n+1)+A000051(n)]` -/
def P769768209930162854.Spec : Prop :=
  ∀ n, P769768209930162854.a n = A007679 (n + 1)

end A007679

/-! ## A007679.P417091598016724146

`A377714(n+1)/2^n`
-/

namespace A007679.P417091598016724146
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A377714 (n + 1) : ℚ) / (2 ^ n : ℚ)

end

end A007679.P417091598016724146

namespace A007679

/-- `A377714(n+1)/2^n` -/
def P417091598016724146.Spec : Prop :=
  ∀ n, P417091598016724146.a n = (A007679 (n + 1) : ℚ)

end A007679

/-! ## A007679.P17768224844502675009

`A267036(n)/A100455(n)`
-/

namespace A007679.P17768224844502675009
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A267036 n : ℚ) / (A100455 n : ℚ)

end

end A007679.P17768224844502675009

namespace A007679

/-- `A267036(n)/A100455(n)` -/
def P17768224844502675009.Spec : Prop :=
  ∀ n, P17768224844502675009.a n = (A007679 (n + 1) : ℚ)

end A007679

/-! ## A007679.P9161187086683588879

`(A011782(n+1)²-A009545(2*n))/A011782(n+1)`
-/

namespace A007679.P9161187086683588879
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A011782 (n + 1) ^ 2 - A009545 (2 * n) : ℚ) / (A011782 (n + 1) : ℚ)

end

end A007679.P9161187086683588879

namespace A007679

/-- `(A011782(n+1)²-A009545(2*n))/A011782(n+1)` -/
def P9161187086683588879.Spec : Prop :=
  ∀ n, P9161187086683588879.a n = (A007679 (n + 1) : ℚ)

end A007679

/-! ## A007679.P3129412415918073908

`(A131577(n+1)²-A009545(2*n))/A131577(n+1)`
-/

namespace A007679.P3129412415918073908
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A131577 (n + 1) ^ 2 - A009545 (2 * n) : ℚ) / (A131577 (n + 1) : ℚ)

end

end A007679.P3129412415918073908

namespace A007679

/-- `(A131577(n+1)²-A009545(2*n))/A131577(n+1)` -/
def P3129412415918073908.Spec : Prop :=
  ∀ n, P3129412415918073908.a n = (A007679 (n + 1) : ℚ)

end A007679

/-! ## A007679.P13257807105758812797

`(A157823(2*n+1)+A009545(2*n))/A157823(n+1)`
-/

namespace A007679.P13257807105758812797
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A157823 (2 * n + 1) + A009545 (2 * n) : ℚ) / (A157823 (n + 1) : ℚ)

end

end A007679.P13257807105758812797

namespace A007679

/-- `(A157823(2*n+1)+A009545(2*n))/A157823(n+1)` -/
def P13257807105758812797.Spec : Prop :=
  ∀ n, P13257807105758812797.a n = (A007679 (n + 1) : ℚ)

end A007679

/-! ## A007679.P18332780277767029489

`(A011782(2*n+1)-A009545(2*n))/A011782(n+1)`
-/

namespace A007679.P18332780277767029489
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A011782 (2 * n + 1) - A009545 (2 * n) : ℚ) / (A011782 (n + 1) : ℚ)

end

end A007679.P18332780277767029489

namespace A007679

/-- `(A011782(2*n+1)-A009545(2*n))/A011782(n+1)` -/
def P18332780277767029489.Spec : Prop :=
  ∀ n, P18332780277767029489.a n = (A007679 (n + 1) : ℚ)

end A007679

/-! ## A007679.P17902113531969043501

`(A131577(2*n+1)-A009545(2*n))/A131577(n+1)`
-/

namespace A007679.P17902113531969043501
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A131577 (2 * n + 1) - A009545 (2 * n) : ℚ) / (A131577 (n + 1) : ℚ)

end

end A007679.P17902113531969043501

namespace A007679

/-- `(A131577(2*n+1)-A009545(2*n))/A131577(n+1)` -/
def P17902113531969043501.Spec : Prop :=
  ∀ n, P17902113531969043501.a n = (A007679 (n + 1) : ℚ)

end A007679

/-! ## A007679.P11769498921020816388

`(2*A000079(n)²-A090132(2*n+1))/A000079(n+1)`
-/

namespace A007679.P11769498921020816388
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * A000079 n ^ 2 - A090132 (2 * n + 1) : ℚ) / (A000079 (n + 1) : ℚ)

end

end A007679.P11769498921020816388

namespace A007679

/-- `(2*A000079(n)²-A090132(2*n+1))/A000079(n+1)` -/
def P11769498921020816388.Spec : Prop :=
  ∀ n, P11769498921020816388.a n = (A007679 (n + 1) : ℚ)

end A007679

/-! ## A007679.P8400904293242643579

`(A000079(2*n+1)-A090132(2*n+1))/A000079(n+1)`
-/

namespace A007679.P8400904293242643579
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000079 (2 * n + 1) - A090132 (2 * n + 1) : ℚ) / (A000079 (n + 1) : ℚ)

end

end A007679.P8400904293242643579

namespace A007679

/-- `(A000079(2*n+1)-A090132(2*n+1))/A000079(n+1)` -/
def P8400904293242643579.Spec : Prop :=
  ∀ n, P8400904293242643579.a n = (A007679 (n + 1) : ℚ)

end A007679

/-! ## A007679.P13695042729626368646

`A140883(∑[n+1])`
-/

namespace A007679.P13695042729626368646
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140883 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A007679.P13695042729626368646

namespace A007679

/-- `A140883(∑[n+1])` -/
def P13695042729626368646.Spec : Prop :=
  ∀ n, P13695042729626368646.a n = A007679 (n + 1)

end A007679

/-!
# A007680: a(n) = (2n+1)*n!.

The programs for A007680, the canonical program `A007680.P14662614683744922745` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A007680 has offset 0).

The definition of A007680 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2*n+1)*n!` (program `A007680.P14662614683744922745`, by `A007680.P14662614683744922745.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A007680.P14662614683744922745

`(2*n+1)*n!`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A007680

/-- `(2*n+1)*n!` -/
def P14662614683744922745.Spec : Prop :=
  ∀ n, (P14662614683744922745.a n : ℤ) = A007680 n

theorem P14662614683744922745.correct : P14662614683744922745.Spec := by
  intro n
  simp only [A007680]

end A007680

/-! ## A007680.P18391968766828916641

`(A208528(n+2)+A208529(n+2))/2`
-/

namespace A007680.P18391968766828916641
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A208528 (n + 2) + A208529 (n + 2) : ℚ) / 2

end

end A007680.P18391968766828916641

namespace A007680

/-- `(A208528(n+2)+A208529(n+2))/2` -/
def P18391968766828916641.Spec : Prop :=
  ∀ n, P18391968766828916641.a n = (A007680 n : ℚ)

end A007680

/-! ## A007680.P13101573550372391653

`n!*Δ[n²]`
-/

namespace A007680.P13101573550372391653
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A007680.P13101573550372391653

namespace A007680

/-- `n!*Δ[n²]` -/
def P13101573550372391653.Spec : Prop :=
  ∀ n, P13101573550372391653.a n = A007680 n

theorem P13101573550372391653.correct : P13101573550372391653.Spec := by
  intro n
  simp only [A007680, Nat.add_sub_cancel, A007680.P13101573550372391653.f1, A007680.P13101573550372391653.a, A007680.P14662614683744922745.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A007680

/-! ## A007680.P15708155773627478877

`Δ[∑[n!]+n!]`
-/

namespace A007680.P15708155773627478877
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + Nat.factorial n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A007680.P15708155773627478877

namespace A007680

/-- `Δ[∑[n!]+n!]` -/
def P15708155773627478877.Spec : Prop :=
  ∀ n, P15708155773627478877.a n = A007680 n

end A007680

/-! ## A007680.P3965903026071045549

`Δ[n!]+(n+1)!`
-/

namespace A007680.P3965903026071045549
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) + (Nat.factorial (n + 1) : ℤ)

end

end A007680.P3965903026071045549

namespace A007680

/-- `Δ[n!]+(n+1)!` -/
def P3965903026071045549.Spec : Prop :=
  ∀ n, P3965903026071045549.a n = A007680 n

theorem P3965903026071045549.correct : P3965903026071045549.Spec := by
  intro n
  simp only [A007680, Nat.add_sub_cancel, A007680.P3965903026071045549.f1, A007680.P3965903026071045549.a, A007680.P14662614683744922745.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A007680

/-! ## A007680.P15356822073043184021

`abs(n!*xor(2*n, -1))`
-/

namespace A007680.P15356822073043184021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(Nat.factorial n : ℤ) * Int.xor (2 * n : ℤ) (-1)|

end

end A007680.P15356822073043184021

namespace A007680

/-- `abs(n!*xor(2*n, -1))` -/
def P15356822073043184021.Spec : Prop :=
  ∀ n, P15356822073043184021.a n = A007680 n

end A007680

/-! ## A007680.P13405931293434129311

`-(n!*xor(2*n, -1))`
-/

namespace A007680.P13405931293434129311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((Nat.factorial n : ℤ) * Int.xor (2 * n : ℤ) (-1))

end

end A007680.P13405931293434129311

namespace A007680

/-- `-(n!*xor(2*n, -1))` -/
def P13405931293434129311.Spec : Prop :=
  ∀ n, P13405931293434129311.a n = A007680 n

end A007680

/-! ## A007680.P4555222170307708305

`(3-ratio[n+1])*∏[n+1]`
-/

namespace A007680.P4555222170307708305
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 - (f1 (n + 1) : ℚ) / (f1 n : ℚ)) * ((∏ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℚ)

end

end A007680.P4555222170307708305

namespace A007680

/-- `(3-ratio[n+1])*∏[n+1]` -/
def P4555222170307708305.Spec : Prop :=
  ∀ n, P4555222170307708305.a n = (A007680 n : ℚ)

end A007680

/-! ## A007680.P16093989516244988736

`(n+1)!+(n+1)!-n!`
-/

namespace A007680.P16093989516244988736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 1) : ℤ) + ((Nat.factorial (n + 1) : ℤ) - (Nat.factorial n : ℤ))

end

end A007680.P16093989516244988736

namespace A007680

/-- `(n+1)!+(n+1)!-n!` -/
def P16093989516244988736.Spec : Prop :=
  ∀ n, P16093989516244988736.a n = A007680 n

theorem P16093989516244988736.correct : P16093989516244988736.Spec := by
  intro n
  simp only [A007680, Nat.add_sub_cancel, A007680.P16093989516244988736.a, A007680.P14662614683744922745.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A007680

/-! ## A007680.P3412941862705720814

`∏[(1-n)²/a(n-1)+3]` with `a(0)=1`
-/

namespace A007680.P3412941862705720814
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  ((1 - (n : ℤ)) ^ 2 : ℚ) / f1 (n - 1) + 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A007680.P3412941862705720814

namespace A007680

/-- `∏[(1-n)²/a(n-1)+3]` -/
def P3412941862705720814.Spec : Prop :=
  ∀ n, P3412941862705720814.a n = (A007680 n : ℚ)

end A007680

/-!
# A007681: a(n) = (2*n+1)^2*n!.

The programs for A007681, the canonical program `A007681.P14753519052402784389` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A007681 has offset 0).

The definition of A007681 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2*n+1)²*n!` (program `A007681.P14753519052402784389`, by `A007681.P14753519052402784389.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A007681.P14753519052402784389

`(2*n+1)²*n!`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A007681

/-- `(2*n+1)²*n!` -/
def P14753519052402784389.Spec : Prop :=
  ∀ n, (P14753519052402784389.a n : ℤ) = A007681 n

theorem P14753519052402784389.correct : P14753519052402784389.Spec := by
  intro n
  simp only [A007681]

end A007681

/-! ## A007681.P14144658712822967396

`n!*record[xor(1, n)²]`
-/

namespace A007681.P14144658712822967396
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A007681.P14144658712822967396

namespace A007681

/-- `n!*record[xor(1, n)²]` -/
def P14144658712822967396.Spec : Prop :=
  ∀ n, (P14144658712822967396.a n : ℤ) = A007681 n

end A007681

/-! ## A007681.P2021863605264346194

`n!/(2*n+1)^-2`
-/

namespace A007681.P2021863605264346194
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℚ) / (2 * n + 1 : ℚ) ^ (-2 : ℤ)

end

end A007681.P2021863605264346194

namespace A007681

/-- `n!/(2*n+1)^-2` -/
def P2021863605264346194.Spec : Prop :=
  ∀ n, P2021863605264346194.a n = (A007681 n : ℚ)

theorem P2021863605264346194.correct : P2021863605264346194.Spec := by
  intro n
  simp only [A007681, Nat.add_sub_cancel, A007681.P2021863605264346194.a, A007681.P14753519052402784389.a, SequenceMachineLib.memo_apply]
  try push_cast
  try field_simp
  try (first | ring1 | ring_nf)

end A007681

/-! ## A007681.P10479429576029681076

`n!*Δ[C(2*n+1, 3)]`
-/

namespace A007681.P10479429576029681076
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n + 1) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A007681.P10479429576029681076

namespace A007681

/-- `n!*Δ[C(2*n+1, 3)]` -/
def P10479429576029681076.Spec : Prop :=
  ∀ n, P10479429576029681076.a n = A007681 n

end A007681

/-! ## A007681.P1987895650275903782

`Δ[n²]²*∏[round(1/acot(n))]`
-/

namespace A007681.P1987895650275903782
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (1 / SequenceMachineLib.acot (n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 2 * (∏ j ∈ Finset.range (n + 1), f2 j)

end

end A007681.P1987895650275903782

namespace A007681

/-- `Δ[n²]²*∏[round(1/acot(n))]` -/
def P1987895650275903782.Spec : Prop :=
  ∀ n, P1987895650275903782.a n = A007681 n

end A007681

/-! ## A007681.P13343457544600120455

`(2*n+1)*n!*comp[2*n]`
-/

namespace A007681.P13343457544600120455
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) * Nat.factorial n * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A007681.P13343457544600120455

namespace A007681

/-- `(2*n+1)*n!*comp[2*n]` -/
def P13343457544600120455.Spec : Prop :=
  ∀ n, (P13343457544600120455.a n : ℤ) = A007681 n

end A007681

/-! ## A007681.P9579897313318275108

`(2*n+1)*(2*n+1)*n!`
-/

namespace A007681.P9579897313318275108
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) * ((2 * n + 1) * Nat.factorial n)

end

end A007681.P9579897313318275108

namespace A007681

/-- `(2*n+1)*(2*n+1)*n!` -/
def P9579897313318275108.Spec : Prop :=
  ∀ n, (P9579897313318275108.a n : ℤ) = A007681 n

theorem P9579897313318275108.correct : P9579897313318275108.Spec := by
  intro n
  simp only [A007681, Nat.add_sub_cancel, A007681.P9579897313318275108.a, A007681.P14753519052402784389.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A007681

/-! ## A007681.P4055187986314873665

`(2*n+1)²/(n+1)*∏[n+1]`
-/

namespace A007681.P4055187986314873665
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 * n + 1) ^ 2 : ℚ) / (n + 1 : ℚ) * ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ)

end

end A007681.P4055187986314873665

namespace A007681

/-- `(2*n+1)²/(n+1)*∏[n+1]` -/
def P4055187986314873665.Spec : Prop :=
  ∀ n, P4055187986314873665.a n = (A007681 n : ℚ)

end A007681

/-! ## A007681.P11547372543433635080

`2*A175925(n)-A007680(n)`
-/

namespace A007681.P11547372543433635080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A175925 n - A007680 n

end

end A007681.P11547372543433635080

namespace A007681

/-- `2*A175925(n)-A007680(n)` -/
def P11547372543433635080.Spec : Prop :=
  ∀ n, P11547372543433635080.a n = A007681 n

end A007681

/-! ## A007681.P3383631174571816545

`A000142(n)/(1/A005408(n))²`
-/

namespace A007681.P3383631174571816545
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 n : ℚ) / (1 / (A005408 n : ℚ)) ^ 2

end

end A007681.P3383631174571816545

namespace A007681

/-- `A000142(n)/(1/A005408(n))²` -/
def P3383631174571816545.Spec : Prop :=
  ∀ n, P3383631174571816545.a n = (A007681 n : ℚ)

end A007681

/-!
# A007682: a(n) = -Sum_{k = 0..n-1} (n+k)!a(k)/(2k)!.

The programs for A007682, there is no canonical definition to state claims against.
-/

/-! ## A007682.P13847569668898417759

`A046900(∑[n])`
-/

namespace A007682.P13847569668898417759
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046900 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A007682.P13847569668898417759

/-! ## A007682.P17833587357068785155

`or(1, A046900((n²+n)/2))`
-/

namespace A007682.P17833587357068785155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A046900 (SequenceMachineLib.roundAway ((n ^ 2 + n : ℚ) / 2)).toNat)

end

end A007682.P17833587357068785155

/-! ## A007682.P3876987238084028199

`gcd(n, n+1)*A046900(A000217(n))`
-/

namespace A007682.P3876987238084028199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd n (n + 1) : ℤ) * A046900 (A000217 n).toNat

end

end A007682.P3876987238084028199

/-! ## A007682.P2939300303249890094

`or(A046900(A000217(n)), A057427(n))`
-/

namespace A007682.P2939300303249890094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A046900 (A000217 n).toNat) (A057427 n)

end

end A007682.P2939300303249890094

/-! ## A007682.P14445587929448750305

`or(A046900(A000217(n)), A104162(n))`
-/

namespace A007682.P14445587929448750305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A046900 (A000217 n).toNat) (A104162 n)

end

end A007682.P14445587929448750305

/-! ## A007682.P3531699882080455160

`or(A046900(A000217(n)), A186741(n))`
-/

namespace A007682.P3531699882080455160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A046900 (A000217 n).toNat) (A186741 n)

end

end A007682.P3531699882080455160

/-! ## A007682.P1970773958270043433

`char[A004488(n)]*A046900(A000217(n))`
-/

namespace A007682.P1970773958270043433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004488 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A046900 (A000217 n).toNat

end

end A007682.P1970773958270043433

/-! ## A007682.P6709430206043996784

`A046900(A000217(n))+A000035(2*n)`
-/

namespace A007682.P6709430206043996784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046900 (A000217 n).toNat + A000035 (2 * n)

end

end A007682.P6709430206043996784

/-! ## A007682.P18063466313672027906

`A046900(A000217(n))+C(n, A000040(n+1))`
-/

namespace A007682.P18063466313672027906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046900 (A000217 n).toNat + (Nat.choose n (A000040 (n + 1)).toNat : ℤ)

end

end A007682.P18063466313672027906

/-! ## A007682.P15820379975799096497

`A000045(round(n/(n+1)))!*A046900(A000217(n))`
-/

namespace A007682.P15820379975799096497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A000045 (SequenceMachineLib.roundAway ((n : ℚ) / (n + 1 : ℚ))).toNat).toNat : ℤ) * A046900 (A000217 n).toNat

end

end A007682.P15820379975799096497

/-!
# A007683: a(1) = 1; a(n) = -Sum_{k = 1..n-1} (n+k)!a(k)/(2k)!.

The programs for A007683, there is no canonical definition to state claims against.
-/

/-! ## A007683.P6385959358467469274

`A046900(∑[n+1]+1)`
-/

namespace A007683.P6385959358467469274
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046900 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A007683.P6385959358467469274

/-! ## A007683.P18343339394432224253

`A046900(A134869(n+1))+A000038(n)`
-/

namespace A007683.P18343339394432224253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046900 (A134869 (n + 1)).toNat + A000038 n

end

end A007683.P18343339394432224253

/-! ## A007683.P2964403653519915324

`A046900(A134869(n+1))^A178334(n)`
-/

namespace A007683.P2964403653519915324
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046900 (A134869 (n + 1)).toNat : ℚ) ^ (A178334 n : ℤ)

end

end A007683.P2964403653519915324

/-! ## A007683.P13374253424749415505

`and(A046900(A134869(n+1)), A153881(n+1))`
-/

namespace A007683.P13374253424749415505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A046900 (A134869 (n + 1)).toNat) (A153881 (n + 1))

end

end A007683.P13374253424749415505

/-! ## A007683.P614948790943881768

`A046900(A134869(n+1))^gcd(n, A255500(n+1))`
-/

namespace A007683.P614948790943881768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046900 (A134869 (n + 1)).toNat ^ Int.gcd (n : ℤ) (A255500 (n + 1))

end

end A007683.P614948790943881768

/-!
# A007684: Prime(n)*...*prime(a(n)) is the least product of consecutive primes that is non-deficient.

The programs for A007684, there is no canonical definition to state claims against.
-/

/-! ## A007684.P13591406003612698990

`A007707(n+1)-C(2, n+2)`
-/

namespace A007684.P13591406003612698990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007707 (n + 1) - (Nat.choose 2 (n + 2) : ℤ)

end

end A007684.P13591406003612698990

/-! ## A007684.P10387878653010875370

`A007707(floor(a(n-1)+n)-a(n-1)+1)` with `a(0)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A007684.P10387878653010875370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A007707 (a (n - 1) + (n : ℤ) - a (n - 1) + 1).toNat

end

end A007684.P10387878653010875370

/-! ## A007684.P10035533901687037582

`A007707(n+1)-A000007(n)`
-/

namespace A007684.P10035533901687037582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007707 (n + 1) - A000007 n

end

end A007684.P10035533901687037582

/-! ## A007684.P9931758801752399786

`A007707(n+1)+n-A028310(n)`
-/

namespace A007684.P9931758801752399786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007707 (n + 1) + ((n : ℤ) - A028310 n)

end

end A007684.P9931758801752399786

/-! ## A007684.P17439170437030846468

`A007707(n+1)-∑[A000010(n+1)]%2`
-/

namespace A007684.P17439170437030846468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007707 (n + 1) - Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) 2

end

end A007684.P17439170437030846468

/-! ## A007684.P3462723996013354797

`A007707(n+1)-A192490(A017089(n))`
-/

namespace A007684.P3462723996013354797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007707 (n + 1) - A192490 (A017089 n).toNat

end

end A007684.P3462723996013354797

/-! ## A007684.P17571613985917769123

`A007707(n+1)-A178333(A121856(n)+1)`
-/

namespace A007684.P17571613985917769123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007707 (n + 1) - A178333 (A121856 n + 1).toNat

end

end A007684.P17571613985917769123

/-! ## A007684.P4132283836423764346

`A007707(n+1)-A083896(a(A083896(n)))` with `a(0)=2`
-/

namespace A007684.P4132283836423764346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A007707 (n + 1) - A083896 (a (A083896 n).toNat).toNat

end

end A007684.P4132283836423764346

/-! ## A007684.P16958945026894372498

`A007707(n+1)-A192490(A000040(n+1)+1)`
-/

namespace A007684.P16958945026894372498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007707 (n + 1) - A192490 (A000040 (n + 1) + 1).toNat

end

end A007684.P16958945026894372498

/-! ## A007684.P15556320093646770497

`A007707(n+1)+A034444(A034444(n+1))-2`
-/

namespace A007684.P15556320093646770497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007707 (n + 1) + (A034444 (A034444 (n + 1)).toNat - 2)

end

end A007684.P15556320093646770497

/-! ## A007684.P11945036069861632926

`A083896(a(A083896(n+1)))+A007707(n+1)` with `a(0)=2`
-/

namespace A007684.P11945036069861632926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A083896 (a (A083896 (n + 1)).toNat).toNat + A007707 (n + 1)

end

end A007684.P11945036069861632926

/-! ## A007684.P10747934076549613707

`A007707(n+1)-val(A007707(n+2), A007707(n+1))`
-/

namespace A007684.P10747934076549613707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007707 (n + 1) - (SequenceMachineLib.valuation (A007707 (n + 2)).toNat (A007707 (n + 1)).toNat : ℤ)

end

end A007684.P10747934076549613707

/-! ## A007684.P13264461093284058641

`A007707(n+1)-∑[3*A016116(n)]%2`
-/

namespace A007684.P13264461093284058641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A016116 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007707 (n + 1) - Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) 2

end

end A007684.P13264461093284058641

/-! ## A007684.P5758590247602798643

`A007707(n+1)+A107705(n+1)-A108227(n+1)`
-/

namespace A007684.P5758590247602798643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007707 (n + 1) + (A107705 (n + 1) - A108227 (n + 1))

end

end A007684.P5758590247602798643

/-! ## A007684.P14236069651806927239

`A007707(n+1)-A192490(A212883(n+1))`
-/

namespace A007684.P14236069651806927239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007707 (n + 1) - A192490 (A212883 (n + 1)).toNat

end

end A007684.P14236069651806927239

/-! ## A007684.P7595613060252115550

`A007707(n+1)-A178333(A132378(n+1))`
-/

namespace A007684.P7595613060252115550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007707 (n + 1) - A178333 (A132378 (n + 1)).toNat

end

end A007684.P7595613060252115550

/-!
# A007685: a(n) = Product_{k=1..n} binomial(2*k,k).

The programs for A007685, there is no canonical definition to state claims against.
-/

/-! ## A007685.P16781578330463839150

`∏[C(2*n, n)]`
-/

namespace A007685.P16781578330463839150
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A007685.P16781578330463839150

/-! ## A007685.P15026413532227765078

`exp(∑[log(C(2*n, n))])`
-/

namespace A007685.P15026413532227765078
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.log (Nat.choose (2 * n) n : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.exp (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A007685.P15026413532227765078

/-! ## A007685.P10667768811693373791

`∏[(2*n)!/n!²]`
-/

namespace A007685.P10667768811693373791
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (2 * n) : ℚ) / (Nat.factorial n ^ 2 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A007685.P10667768811693373791

/-! ## A007685.P18061099520573132459

`C(2*n, n)*a(n-1)` with `a(0)=1`
-/

namespace A007685.P18061099520573132459
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.choose (2 * n) n * a (n - 1)

end

end A007685.P18061099520573132459

/-! ## A007685.P454148324037605503

`∏[(4-2/n)*a(n-1)]` with `a(0)=1`
-/

namespace A007685.P454148324037605503
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  (4 - 2 / (n : ℚ)) * f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A007685.P454148324037605503

/-!
# A007686: Prime(n)*...*a(n) is the least product of consecutive primes which is non-deficient.

The programs for A007686, there is no canonical definition to state claims against.
-/

/-! ## A007686.P9610363281850799052

`A007708(n+1)-A000038(n)`
-/

namespace A007686.P9610363281850799052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007708 (n + 1) - A000038 n

end

end A007686.P9610363281850799052

/-! ## A007686.P7807171071178413788

`A007708(n+1)-2*A000007(n)`
-/

namespace A007686.P7807171071178413788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007708 (n + 1) - 2 * A000007 n

end

end A007686.P7807171071178413788

/-! ## A007686.P3277419614146356049

`A007708(n+1)-A000122(A005117(n+1))`
-/

namespace A007686.P3277419614146356049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007708 (n + 1) - A000122 (A005117 (n + 1)).toNat

end

end A007686.P3277419614146356049

/-! ## A007686.P17681348695092235556

`A007708(n+1)-A109578(A000040(n+1))`
-/

namespace A007686.P17681348695092235556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007708 (n + 1) - A109578 (A000040 (n + 1)).toNat

end

end A007686.P17681348695092235556

/-! ## A007686.P6812006616336297881

`A007708(n+1)-A323882(A027746(n+1))`
-/

namespace A007686.P6812006616336297881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007708 (n + 1) - A323882 (A027746 (n + 1)).toNat

end

end A007686.P6812006616336297881

/-! ## A007686.P2065188287359118641

`A007708(n+1)-2*A192490(A008458(n))`
-/

namespace A007686.P2065188287359118641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007708 (n + 1) - 2 * A192490 (A008458 n).toNat

end

end A007686.P2065188287359118641

/-! ## A007686.P15693770780772806652

`A007708(n+1)-A000122(A000122(n)+n)`
-/

namespace A007686.P15693770780772806652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007708 (n + 1) - A000122 (A000122 n + (n : ℤ)).toNat

end

end A007686.P15693770780772806652

/-! ## A007686.P2352948995105783423

`A007708(n+1)-A007684(n+1)%A007707(n+1)`
-/

namespace A007686.P2352948995105783423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007708 (n + 1) - Int.tmod (A007684 (n + 1)) (A007707 (n + 1))

end

end A007686.P2352948995105783423

/-! ## A007686.P5487716611755753381

`A000040(A007684(n+1))`
-/

namespace A007686.P5487716611755753381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A007684 (n + 1)).toNat

end

end A007686.P5487716611755753381

/-!
# A007688: Number of 5-colorings of cyclic group of order n.

The programs for A007688, there is no canonical definition to state claims against.
-/

/-! ## A007688.P8969867066724352094

`∑[A018669(3*n+4)]`
-/

namespace A007688.P8969867066724352094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018669 (3 * n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007688.P8969867066724352094

/-!
# A007689: a(n) = 2^n + 3^n.

The programs for A007689, the canonical program `A007689.P5844437503402331617` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A007689 has offset 0).

The definition of A007689 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^n+3^n` (program `A007689.P5844437503402331617`, by `A007689.P5844437503402331617.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A007689.P5844437503402331617

`2^n+3^n`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A007689

/-- `2^n+3^n` -/
def P5844437503402331617.Spec : Prop :=
  ∀ n, (P5844437503402331617.a n : ℤ) = A007689 n

theorem P5844437503402331617.correct : P5844437503402331617.Spec := by
  intro n
  simp only [A007689]

end A007689

/-! ## A007689.P8424920532595874811

`ogf((2-5x)/(1-5x+6x^2))`
-/

namespace A007689.P8424920532595874811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -5] [1, -5, 6] n

end

end A007689.P8424920532595874811

namespace A007689

/-- `ogf((2-5x)/(1-5x+6x^2))` -/
def P8424920532595874811.Spec : Prop :=
  ∀ n, P8424920532595874811.a n = A007689 n

end A007689

/-! ## A007689.P7591825586045754054

`∑{p}[-a(n-1), #^n]` with `a(0)=6`
-/

namespace A007689.P7591825586045754054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [6] fun n f1 =>
  -f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p ^ n

end

end A007689.P7591825586045754054

namespace A007689

/-- `∑{p}[-a(n-1), #^n]` -/
def P7591825586045754054.Spec : Prop :=
  ∀ n, (P7591825586045754054.a n : ℤ) = A007689 n

end A007689

/-! ## A007689.P8017963012346740141

`floor(5*(a(n-1)-a(n-2))-a(n-2))` with `a(0)=2, a(1)=5`

`floor` is left out, it is the identity on integers.
-/

namespace A007689.P8017963012346740141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 5] fun n a =>
  5 * (a (n - 1) - a (n - 2)) - a (n - 2)

end

end A007689.P8017963012346740141

namespace A007689

/-- `floor(5*(a(n-1)-a(n-2))-a(n-2))` -/
def P8017963012346740141.Spec : Prop :=
  ∀ n, P8017963012346740141.a n = A007689 n

theorem P8017963012346740141.correct : P8017963012346740141.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A007689, Nat.add_sub_cancel, A007689.P8017963012346740141.a, A007689.P5844437503402331617.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A007689, Nat.add_sub_cancel, A007689.P8017963012346740141.a, A007689.P5844437503402331617.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [h1, h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A007689

/-! ## A007689.P1932867890729210121

`∑[6*(a(n-1)-a(n-2))-a(n-1)]` with `a(0)=2, a(1)=3, a(2)=8`
-/

namespace A007689.P1932867890729210121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 3, 8] fun n f1 =>
  6 * (f1 (n - 1) - f1 (n - 2)) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007689.P1932867890729210121

namespace A007689

/-- `∑[6*(a(n-1)-a(n-2))-a(n-1)]` -/
def P1932867890729210121.Spec : Prop :=
  ∀ n, P1932867890729210121.a n = A007689 n

end A007689

/-! ## A007689.P10740593191694230259

`Δ[A094374(n)]`
-/

namespace A007689.P10740593191694230259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094374 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A007689.P10740593191694230259

namespace A007689

/-- `Δ[A094374(n)]` -/
def P10740593191694230259.Spec : Prop :=
  ∀ n, P10740593191694230259.a n = A007689 n

end A007689

/-! ## A007689.P12368109547140150829

`Δ[A099754(n)]`
-/

namespace A007689.P12368109547140150829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099754 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A007689.P12368109547140150829

namespace A007689

/-- `Δ[A099754(n)]` -/
def P12368109547140150829.Spec : Prop :=
  ∀ n, P12368109547140150829.a n = A007689 n

end A007689

/-! ## A007689.P12987991826380217200

`A085281(n+1)`
-/

namespace A007689.P12987991826380217200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085281 (n + 1)

end

end A007689.P12987991826380217200

namespace A007689

/-- `A085281(n+1)` -/
def P12987991826380217200.Spec : Prop :=
  ∀ n, P12987991826380217200.a n = A007689 n

end A007689

/-! ## A007689.P12041759591243567258

`A229194(2*n+3)`
-/

namespace A007689.P12041759591243567258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229194 (2 * n + 3)

end

end A007689.P12041759591243567258

namespace A007689

/-- `A229194(2*n+3)` -/
def P12041759591243567258.Spec : Prop :=
  ∀ n, P12041759591243567258.a n = A007689 n

end A007689

/-! ## A007689.P15753382256625974889

`record[A085281(abs(1-n))]`
-/

namespace A007689.P15753382256625974889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085281 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A007689.P15753382256625974889

namespace A007689

/-- `record[A085281(abs(1-n))]` -/
def P15753382256625974889.Spec : Prop :=
  ∀ n, P15753382256625974889.a n = A007689 n

end A007689

/-! ## A007689.P17382933823671514133

`∑[A025192(n)+A011782(n)]`
-/

namespace A007689.P17382933823671514133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025192 n + A011782 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007689.P17382933823671514133

namespace A007689

/-- `∑[A025192(n)+A011782(n)]` -/
def P17382933823671514133.Spec : Prop :=
  ∀ n, P17382933823671514133.a n = A007689 n

end A007689

/-! ## A007689.P3495769753485691350

`Δ[A007051(n)+A000225(n)]`
-/

namespace A007689.P3495769753485691350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007051 n + A000225 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A007689.P3495769753485691350

namespace A007689

/-- `Δ[A007051(n)+A000225(n)]` -/
def P3495769753485691350.Spec : Prop :=
  ∀ n, P3495769753485691350.a n = A007689 n

end A007689

/-! ## A007689.P6768694337295550762

`abs(1-(A000244(n)+A000051(n)))`
-/

namespace A007689.P6768694337295550762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (A000244 n + A000051 n)|

end

end A007689.P6768694337295550762

namespace A007689

/-- `abs(1-(A000244(n)+A000051(n)))` -/
def P6768694337295550762.Spec : Prop :=
  ∀ n, P6768694337295550762.a n = A007689 n

end A007689

/-! ## A007689.P1862411268710988243

`Δ[A072674(n)/2]`
-/

namespace A007689.P1862411268710988243
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A072674 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A007689.P1862411268710988243

namespace A007689

/-- `Δ[A072674(n)/2]` -/
def P1862411268710988243.Spec : Prop :=
  ∀ n, P1862411268710988243.a n = (A007689 n : ℚ)

end A007689

/-! ## A007689.P13877032199948056994

`Δ[A254028(n)/2]`
-/

namespace A007689.P13877032199948056994
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A254028 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A007689.P13877032199948056994

namespace A007689

/-- `Δ[A254028(n)/2]` -/
def P13877032199948056994.Spec : Prop :=
  ∀ n, P13877032199948056994.a n = (A007689 n : ℚ)

end A007689

/-! ## A007689.P3681058790264274930

`(A134350(n)+3)/2`
-/

namespace A007689.P3681058790264274930
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A134350 n + 3 : ℚ) / 2

end

end A007689.P3681058790264274930

namespace A007689

/-- `(A134350(n)+3)/2` -/
def P3681058790264274930.Spec : Prop :=
  ∀ n, P3681058790264274930.a n = (A007689 n : ℚ)

end A007689

/-! ## A007689.P15988823486205302167

`Δ[A085279(n+1)/2]`
-/

namespace A007689.P15988823486205302167
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A085279 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A007689.P15988823486205302167

namespace A007689

/-- `Δ[A085279(n+1)/2]` -/
def P15988823486205302167.Spec : Prop :=
  ∀ n, P15988823486205302167.a n = (A007689 n : ℚ)

end A007689

/-! ## A007689.P14340828866802199180

`A306293(2*(n+1))/2`
-/

namespace A007689.P14340828866802199180
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A306293 (2 * (n + 1)) : ℚ) / 2

end

end A007689.P14340828866802199180

namespace A007689

/-- `A306293(2*(n+1))/2` -/
def P14340828866802199180.Spec : Prop :=
  ∀ n, P14340828866802199180.a n = (A007689 n : ℚ)

end A007689

/-! ## A007689.P6809996826498026658

`A094125(n+1)/6`
-/

namespace A007689.P6809996826498026658
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A094125 (n + 1) : ℚ) / 6

end

end A007689.P6809996826498026658

namespace A007689

/-- `A094125(n+1)/6` -/
def P6809996826498026658.Spec : Prop :=
  ∀ n, P6809996826498026658.a n = (A007689 n : ℚ)

end A007689

/-! ## A007689.P5153247944622278914

`A005032(n)%A304168(n+1)`
-/

namespace A007689.P5153247944622278914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005032 n) (A304168 (n + 1))

end

end A007689.P5153247944622278914

namespace A007689

/-- `A005032(n)%A304168(n+1)` -/
def P5153247944622278914.Spec : Prop :=
  ∀ n, P5153247944622278914.a n = A007689 n

end A007689

/-!
# A007690: Number of partitions of n in which no part occurs just once.

The programs for A007690, there is no canonical definition to state claims against.
-/

/-! ## A007690.P15778906261835503121

`A000041(n)-A183558(n)`
-/

namespace A007690.P15778906261835503121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A183558 n

end

end A007690.P15778906261835503121

/-! ## A007690.P4794736777177113740

`∑[A002865(n)]-A183558(n)`
-/

namespace A007690.P4794736777177113740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A183558 n

end

end A007690.P4794736777177113740

/-! ## A007690.P13375787932077826734

`A119620(2*n)-A183558(n)`
-/

namespace A007690.P13375787932077826734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119620 (2 * n) - A183558 n

end

end A007690.P13375787932077826734

/-! ## A007690.P4430433371959781975

`A116595(∑[A123578(n)])`
-/

namespace A007690.P4430433371959781975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123578 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116595 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A007690.P4430433371959781975

/-! ## A007690.P17735751941209925436

`A116595(∑[A000194(2*n)])`
-/

namespace A007690.P17735751941209925436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116595 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A007690.P17735751941209925436

/-! ## A007690.P67125745618313860

`A116595(A075349(n+1)-1)`
-/

namespace A007690.P67125745618313860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116595 (A075349 (n + 1) - 1).toNat

end

end A007690.P67125745618313860

/-! ## A007690.P1282173381934278525

`A116595(∑[A002024(n+1)]-A002024(n+1))`
-/

namespace A007690.P1282173381934278525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116595 (∑ j ∈ Finset.range (n + 1), f1 j - A002024 (n + 1)).toNat

end

end A007690.P1282173381934278525

/-! ## A007690.P9393470024917549088

`A264403(∑[n])`
-/

namespace A007690.P9393470024917549088
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264403 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A007690.P9393470024917549088

/-! ## A007690.P7279314454945906554

`A000041(n)-A243978(∑[n]+1)`
-/

namespace A007690.P7279314454945906554
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A243978 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A007690.P7279314454945906554

/-!
# A007691: Multiply-perfect numbers: n divides sigma(n).

The programs for A007691, there is no canonical definition to state claims against.
-/

/-! ## A007691.P7981663636117962419

`lcm(A098204(n+1), A320024(n+1))`
-/

namespace A007691.P7981663636117962419
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A098204 (n + 1)) (A320024 (n + 1))

end

end A007691.P7981663636117962419

/-! ## A007691.P2681931698172353433

`A000079(A134665(n+1))*A320024(n+1)`
-/

namespace A007691.P2681931698172353433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A134665 (n + 1)).toNat * A320024 (n + 1)

end

end A007691.P2681931698172353433

/-! ## A007691.P10730874607328451636

`A000079(val(A098204(n+1), 2))*A320024(n+1)`
-/

namespace A007691.P10730874607328451636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (SequenceMachineLib.valuation (A098204 (n + 1)).toNat 2) * A320024 (n + 1)

end

end A007691.P10730874607328451636

/-! ## A007691.P5090436174750925901

`∪[A166069(n+1), A325023(n+1)]`
-/

namespace A007691.P5090436174750925901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166069 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325023 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A007691.P5090436174750925901

/-! ## A007691.P5870105886334929077

`∪[A166069(n+1), A325025(n+1)]`
-/

namespace A007691.P5870105886334929077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166069 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325025 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A007691.P5870105886334929077

/-! ## A007691.P4698381539409652594

`A307741(n+1)/A054030(n+1)`
-/

namespace A007691.P4698381539409652594
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A307741 (n + 1) : ℚ) / (A054030 (n + 1) : ℚ)

end

end A007691.P4698381539409652594

/-! ## A007691.P10251743248114929122

`gcd(A000079(n), A098204(n+1))*A320024(n+1)`
-/

namespace A007691.P10251743248114929122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (A000079 n) (A098204 (n + 1)) : ℤ) * A320024 (n + 1)

end

end A007691.P10251743248114929122

/-! ## A007691.P2415893646055389187

`∪[A325023(n+1), A354073(n+1)]`
-/

namespace A007691.P2415893646055389187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325023 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354073 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A007691.P2415893646055389187

/-! ## A007691.P9884103797075394854

`∪[A325025(n+1), A354073(n+1)]`
-/

namespace A007691.P9884103797075394854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325025 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354073 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A007691.P9884103797075394854

/-!
# A007692: Numbers that are the sum of 2 nonzero squares in 2 or more ways.

The programs for A007692, there is no canonical definition to state claims against.
-/

/-! ## A007692.P7191219799768281925

`∪[A024508(n+1), A025285(n+1)]`
-/

namespace A007692.P7191219799768281925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024508 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025285 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A007692.P7191219799768281925

/-! ## A007692.P17308736573150729799

`∪[A025285(n+1), A025294(n+1)]`
-/

namespace A007692.P17308736573150729799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025285 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025294 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A007692.P17308736573150729799

/-! ## A007692.P16944575525825174099

`∪[A024508(n+1), A273293(n+1)]`
-/

namespace A007692.P16944575525825174099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024508 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273293 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A007692.P16944575525825174099

/-! ## A007692.P18094028178158827041

`lt[1, A025426(n)]`
-/

namespace A007692.P18094028178158827041
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025426 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A007692.P18094028178158827041

/-! ## A007692.P13414025829079906356

`lt[2, A063725(n)]`
-/

namespace A007692.P13414025829079906356
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063725 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A007692.P13414025829079906356

/-! ## A007692.P2688918442266683083

`lt[A000122(n)!, A000161(n)]`
-/

namespace A007692.P2688918442266683083
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A000122 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000161 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A007692.P2688918442266683083

/-! ## A007692.P18147538213502753428

`lt[A000122(n)+2, A000925(n)]`
-/

namespace A007692.P18147538213502753428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000925 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A007692.P18147538213502753428

/-! ## A007692.P7358952142731795730

`lt[2, A000925(n)-abs(A002448(n))]`
-/

namespace A007692.P7358952142731795730
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000925 n - |A002448 n|

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A007692.P7358952142731795730

/-! ## A007692.P10134748428990253090

`eq[A000038(n), A014087(A063725(n))]`
-/

namespace A007692.P10134748428990253090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014087 (A063725 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A007692.P10134748428990253090

/-! ## A007692.P7005327550870836998

`lt[A000161(A000925(n)), A025441(n)]`
-/

namespace A007692.P7005327550870836998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000161 (A000925 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025441 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A007692.P7005327550870836998

/-! ## A007692.P11422935358707068440

`lt[A169695(A037213(n)), A000161(n)]`
-/

namespace A007692.P11422935358707068440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169695 (A037213 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000161 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A007692.P11422935358707068440

/-! ## A007692.P10324740980688492912

`lt[A229062(A143574(n)), A025441(n)]`
-/

namespace A007692.P10324740980688492912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229062 (A143574 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025441 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A007692.P10324740980688492912

/-! ## A007692.P8925380257526724613

`lt[A000122(n)!, A000164(n)-A025427(n)]`
-/

namespace A007692.P8925380257526724613
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A000122 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000164 n - A025427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A007692.P8925380257526724613

/-! ## A007692.P8072000398342497682

`lt[A000122(n)!, A000925(n)-A025435(n)]`
-/

namespace A007692.P8072000398342497682
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A000122 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000925 n - A025435 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A007692.P8072000398342497682

/-! ## A007692.P14794968685434007014

`lt[1, A025435(2*n)]`
-/

namespace A007692.P14794968685434007014
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025435 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A007692.P14794968685434007014

/-! ## A007692.P1117823027649730511

`lt[1, A000925(2*n)-2]`
-/

namespace A007692.P1117823027649730511
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000925 (2 * n) - 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A007692.P1117823027649730511

/-! ## A007692.P3088132743020397524

`eq[1, A091247(A000925(2*n))]`
-/

namespace A007692.P3088132743020397524
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091247 (A000925 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A007692.P3088132743020397524

/-! ## A007692.P14550345755337896689

`lt[5, A342154(n)]`
-/

namespace A007692.P14550345755337896689
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342154 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A007692.P14550345755337896689

/-!
# A007693: Primes p such that 6*p + 1 is also prime.

The programs for A007693, there is no canonical definition to state claims against.
-/

/-! ## A007693.P8004267792685528406

`(A051644(n+1)-1)/6`
-/

namespace A007693.P8004267792685528406
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051644 (n + 1) - 1 : ℚ) / 6

end

end A007693.P8004267792685528406

/-! ## A007693.P7789384998989212023

`ceil(A216880(n+1)/3)`
-/

namespace A007693.P7789384998989212023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A216880 (n + 1) : ℚ) / 3⌉

end

end A007693.P7789384998989212023

/-! ## A007693.P16629009271488742459

`p?[A024899(n+1)]`
-/

namespace A007693.P16629009271488742459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024899 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A007693.P16629009271488742459

/-! ## A007693.P1104426570171468557

`p?[A153218(n+1)+1]`
-/

namespace A007693.P1104426570171468557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153218 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A007693.P1104426570171468557

/-! ## A007693.P12452109255801079548

`record[A006530(A024892(n+1))]`
-/

namespace A007693.P12452109255801079548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A024892 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A007693.P12452109255801079548

/-! ## A007693.P17576774087875900755

`record[A006530(A024899(n+2))]`
-/

namespace A007693.P17576774087875900755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A024899 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A007693.P17576774087875900755

/-! ## A007693.P4481417450695309350

`filter[A024899(n+1), A010051(#)]`
-/

namespace A007693.P4481417450695309350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024899 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A007693.P4481417450695309350

/-! ## A007693.P1431829651065706381

`record[A006530(A034936(n+1)+1)]`
-/

namespace A007693.P1431829651065706381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A034936 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A007693.P1431829651065706381

/-! ## A007693.P8336589509960682104

`p?[A014682(A034936(n+1)+1)]`
-/

namespace A007693.P8336589509960682104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A034936 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A007693.P8336589509960682104

/-! ## A007693.P14601984755788139742

`record[A006530(A089953(n+1)+2)]`
-/

namespace A007693.P14601984755788139742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A089953 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A007693.P14601984755788139742

/-! ## A007693.P13165671839045444556

`record[A006530(A153218(n+2)+1)]`
-/

namespace A007693.P13165671839045444556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A153218 (n + 2) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A007693.P13165671839045444556

/-! ## A007693.P191836682533984758

`∩[A000040(n+1), A024899(n+1)]`
-/

namespace A007693.P191836682533984758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024899 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A007693.P191836682533984758

/-! ## A007693.P10782330130220199867

`∩[A024899(n+1), A042966(n+1)]`
-/

namespace A007693.P10782330130220199867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024899 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042966 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A007693.P10782330130220199867

/-! ## A007693.P15771842841457268863

`∩[A024899(n+1), A042986(n+1)]`
-/

namespace A007693.P15771842841457268863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024899 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042986 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A007693.P15771842841457268863

/-! ## A007693.P12665433974561847090

`∩[A024899(n+1), A175787(n+1)]`
-/

namespace A007693.P12665433974561847090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024899 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175787 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A007693.P12665433974561847090

/-! ## A007693.P4476376806692604182

`∩[A024899(n+1), A182986(n+1)]`
-/

namespace A007693.P4476376806692604182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024899 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A007693.P4476376806692604182

/-! ## A007693.P14871838102769137720

`∩[A024899(n+1), A189710(n+1)]`
-/

namespace A007693.P14871838102769137720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024899 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189710 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A007693.P14871838102769137720

/-!
# A007694: Numbers k such that phi(k) divides k.

The programs for A007694, there is no canonical definition to state claims against.
-/

/-! ## A007694.P4074817265894853142

`ceil(A187778(n+1)/3)`
-/

namespace A007694.P4074817265894853142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A187778 (n + 1) : ℚ) / 3⌉

end

end A007694.P4074817265894853142

/-! ## A007694.P14756302123802959299

`A033845((n-1)%a(n-1)+1)/3` with `a(0)=1`
-/

namespace A007694.P14756302123802959299
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (A033845 (Int.tmod ((n : ℤ) - 1) (SequenceMachineLib.roundAway (a (n - 1))) + 1).toNat : ℚ) / 3

end

end A007694.P14756302123802959299

/-! ## A007694.P7185238646474576630

`A187778(n+1)/A122553(n)`
-/

namespace A007694.P7185238646474576630
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A187778 (n + 1) : ℚ) / (A122553 n : ℚ)

end

end A007694.P7185238646474576630

/-! ## A007694.P12452987050759727114

`∪[A000079(n), A033845(n+1)]`
-/

namespace A007694.P12452987050759727114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033845 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A007694.P12452987050759727114

/-! ## A007694.P16862795556799457803

`∪[A000079(n), A187778(n+1)]`
-/

namespace A007694.P16862795556799457803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187778 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A007694.P16862795556799457803

/-! ## A007694.P3473821462041824243

`∪[A025610(n+1), A033845(n+1)]`
-/

namespace A007694.P3473821462041824243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025610 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033845 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A007694.P3473821462041824243

/-! ## A007694.P17784605146681074237

`∪[2*A025614(n+1), A025610(n+1)]`
-/

namespace A007694.P17784605146681074237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A025614 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025610 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A007694.P17784605146681074237

/-! ## A007694.P10165820705509583993

`A190812(A028310(n))+n/A028310(n)`
-/

namespace A007694.P10165820705509583993
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A190812 (A028310 n).toNat : ℚ) + (n : ℚ) / (A028310 n : ℚ)

end

end A007694.P10165820705509583993

/-! ## A007694.P14968491392987913121

`A190812(n)+A135062(a(A000122(n+1)))` with `a(0)=1`
-/

namespace A007694.P14968491392987913121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A190812 n + A135062 (a (A000122 (n + 1)).toNat).toNat

end

end A007694.P14968491392987913121

/-! ## A007694.P1353813660441090090

`∏{e}[A006530(n+1), A000079(#)*A003586(n)]`
-/

namespace A007694.P1353813660441090090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000079 (Nat.factorization (f1 n).natAbs p) * A003586 n

end

end A007694.P1353813660441090090

/-! ## A007694.P14293889210667230105

`∏{e}[A006530(n+1), A003586(n)*A006895(#)]`
-/

namespace A007694.P14293889210667230105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A003586 n * A006895 (Nat.factorization (f1 n).natAbs p)

end

end A007694.P14293889210667230105

/-! ## A007694.P8930032031000328845

`∏{e}[A006530(n+1), A003586(n)*A085240(#)]`
-/

namespace A007694.P8930032031000328845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A003586 n * A085240 (Nat.factorization (f1 n).natAbs p)

end

end A007694.P8930032031000328845

/-! ## A007694.P4507087296292949149

`sqrt(A063755(n+1))`
-/

namespace A007694.P4507087296292949149
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A063755 (n + 1) : ℝ)

end

end A007694.P4507087296292949149

/-! ## A007694.P16411548394020486931

`A000423(n+2)/3`
-/

namespace A007694.P16411548394020486931
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000423 (n + 2) : ℚ) / 3

end

end A007694.P16411548394020486931

/-! ## A007694.P3784905833319586228

`∩[A003586(n+1), A333978(n+1)]`
-/

namespace A007694.P3784905833319586228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003586 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333978 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A007694.P3784905833319586228

/-! ## A007694.P2826099247558412227

`∪[A002023(n), A358308(n+1)]`
-/

namespace A007694.P2826099247558412227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002023 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358308 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A007694.P2826099247558412227

/-! ## A007694.P1009027760882796220

`∪[A008776(n), A358308(n+1)]`
-/

namespace A007694.P1009027760882796220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008776 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358308 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A007694.P1009027760882796220

/-! ## A007694.P18254791408187026711

`∪[A025192(n), A358308(n+1)]`
-/

namespace A007694.P18254791408187026711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025192 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358308 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A007694.P18254791408187026711

/-! ## A007694.P17806864598206554019

`∪[A026549(n), A358308(n+1)]`
-/

namespace A007694.P17806864598206554019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026549 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358308 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A007694.P17806864598206554019

/-! ## A007694.P10552671809528668402

`∪[A058764(n), A358308(n+1)]`
-/

namespace A007694.P10552671809528668402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058764 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358308 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A007694.P10552671809528668402

/-!
# A007695: Cardinalities of Sperner families on 1,...,n.

The programs for A007695, there is no canonical definition to state claims against.
-/

/-! ## A007695.P12334342039288849236

`A220880(n)+1`
-/

namespace A007695.P12334342039288849236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220880 n + 1

end

end A007695.P12334342039288849236

/-! ## A007695.P3021159594422998161

`A185284(comp[ceil(ϕ*n)]+n)+A011833(n+1)`
-/

namespace A007695.P3021159594422998161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.goldenRatio * (n : ℝ)⌉

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + n) + A011833 (n + 1)

end

end A007695.P3021159594422998161

/-! ## A007695.P17802913054671343641

`A011833(n+1)+A006925(A011845(n))`
-/

namespace A007695.P17802913054671343641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011833 (n + 1) + A006925 (A011845 n).toNat

end

end A007695.P17802913054671343641

/-! ## A007695.P14228668296290867531

`A011833(n+1)+A011681(A011817(n))`
-/

namespace A007695.P14228668296290867531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011833 (n + 1) + A011681 (A011817 n).toNat

end

end A007695.P14228668296290867531

/-! ## A007695.P7332145949222210944

`A011833(n+1)+A011729(A011816(n))`
-/

namespace A007695.P7332145949222210944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011833 (n + 1) + A011729 (A011816 n).toNat

end

end A007695.P7332145949222210944

/-!
# A007696: Quartic (or 4-fold) factorial numbers: a(n) = Product_{k = 0..n-1} (4*k + 1).

The programs for A007696, there is no canonical definition to state claims against.
-/

/-! ## A007696.P3835726115473290521

`∏[a(n-1)+4]` with `a(0)=1, a(1)=1`
-/

namespace A007696.P3835726115473290521
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  f1 (n - 1) + 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A007696.P3835726115473290521

/-! ## A007696.P3538887298341990452

`∏[abs(2-4*n)-1]`
-/

namespace A007696.P3538887298341990452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - (4 * n : ℤ)| - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A007696.P3538887298341990452

/-! ## A007696.P2847697778735638185

`(4*n-3)*a(n-1)` with `a(0)=1`
-/

namespace A007696.P2847697778735638185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ((4 * n : ℤ) - 3) * a (n - 1)

end

end A007696.P2847697778735638185

/-! ## A007696.P13742193999864243797

`A290319(∑[n])`
-/

namespace A007696.P13742193999864243797
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290319 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A007696.P13742193999864243797

/-! ## A007696.P13084156109112447315

`A049029(C(n, 2)+1)`
-/

namespace A007696.P13084156109112447315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049029 (Nat.choose n 2 + 1)

end

end A007696.P13084156109112447315

/-! ## A007696.P11882191623251168422

`A049029(∑[abs(1-n)])`
-/

namespace A007696.P11882191623251168422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049029 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A007696.P11882191623251168422

/-! ## A007696.P15291252662255682801

`A265606(∑[n+1]+1)`
-/

namespace A007696.P15291252662255682801
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265606 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A007696.P15291252662255682801

/-! ## A007696.P16162846695418862917

`A370915(∑[n+1]+1)`
-/

namespace A007696.P16162846695418862917
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370915 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A007696.P16162846695418862917

/-! ## A007696.P305771562979365506

`a(n-1)*A016813(n-1)` with `a(0)=1`
-/

namespace A007696.P305771562979365506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A016813 (n - 1)

end

end A007696.P305771562979365506

/-! ## A007696.P78511972561644566

`a(n-1)*A047620(2*n)` with `a(0)=1`
-/

namespace A007696.P78511972561644566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A047620 (2 * n)

end

end A007696.P78511972561644566

/-!
# A007697: Smallest odd number expressible in at least n ways as p+2*m^2 where p is 1 or a prime and m >= 0.

The programs for A007697, there is no canonical definition to state claims against.
-/

/-! ## A007697.P1054407389099132546

`A055202(A037442(n+1))`
-/

namespace A007697.P1054407389099132546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055202 (A037442 (n + 1)).toNat

end

end A007697.P1054407389099132546

/-! ## A007697.P7999057826496260862

`A055202(A065666(n+1))`
-/

namespace A007697.P7999057826496260862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055202 (A065666 (n + 1)).toNat

end

end A007697.P7999057826496260862

/-! ## A007697.P3027340571799277677

`A055202(A065667(n+1))`
-/

namespace A007697.P3027340571799277677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055202 (A065667 (n + 1)).toNat

end

end A007697.P3027340571799277677

