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
import Seq.B008.C000
import Seq.B008.C001
import Seq.B010.C000
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
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C023
import Seq.Opaque.C024
import Seq.Opaque.C025

/-!
# A142000: Primes congruent to 24 mod 29.

The programs for A142000, the canonical program `A142000.P15065755748301898321` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142000 has offset 1).

The definition of A142000 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2798 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142000.P15065755748301898321

`p?[29*n-5]`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A142000

/-- `p?[29*n-5]` -/
def P15065755748301898321.Spec : Prop :=
  ∀ n, P15065755748301898321.a n = A142000 (n + 1)

theorem P15065755748301898321.correct : P15065755748301898321.Spec := by
  intro n
  simp only [A142000, Nat.add_sub_cancel]

end A142000

/-! ## A142000.P9001075563784375785

`or(1, p?[a(n-1)+29])` with `a(0)=24`
-/

namespace A142000.P9001075563784375785
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [24] fun n f1 =>
  f1 (n - 1) + 29

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A142000.P9001075563784375785

namespace A142000

/-- `or(1, p?[a(n-1)+29])` -/
def P9001075563784375785.Spec : Prop :=
  ∀ n, (P9001075563784375785.a n : ℤ) = A142000 (n + 1)

end A142000

/-! ## A142000.P6396200569662993297

`or(1, p?[A128473(n+2)-n])`
-/

namespace A142000.P6396200569662993297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128473 (n + 2) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A142000.P6396200569662993297

namespace A142000

/-- `or(1, p?[A128473(n+2)-n])` -/
def P6396200569662993297.Spec : Prop :=
  ∀ n, P6396200569662993297.a n = A142000 (n + 1)

end A142000

/-! ## A142000.P9264392329482255549

`∩[A169599(n+1)+1, A304724(n+1)]`
-/

namespace A142000.P9264392329482255549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169599 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304724 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142000.P9264392329482255549

namespace A142000

/-- `∩[A169599(n+1)+1, A304724(n+1)]` -/
def P9264392329482255549.Spec : Prop :=
  ∀ n, (P9264392329482255549.a n : ℤ) = A142000 (n + 1)

end A142000

/-! ## A142000.P6580359235915429653

`record[A006530(29*(n+1)+24)]`
-/

namespace A142000.P6580359235915429653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (29 * (n + 1) + 24)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142000.P6580359235915429653

namespace A142000

/-- `record[A006530(29*(n+1)+24)]` -/
def P6580359235915429653.Spec : Prop :=
  ∀ n, P6580359235915429653.a n = A142000 (n + 1)

end A142000

/-! ## A142000.P14378728309470337792

`record[A020639(29*(n+1)+24)]`
-/

namespace A142000.P14378728309470337792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (29 * (n + 1) + 24)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142000.P14378728309470337792

namespace A142000

/-- `record[A020639(29*(n+1)+24)]` -/
def P14378728309470337792.Spec : Prop :=
  ∀ n, P14378728309470337792.a n = A142000 (n + 1)

end A142000

/-! ## A142000.P15087254507224749448

`∩[A313569(2*n+1)+A313569(n+1), A304724(n+2)]`
-/

namespace A142000.P15087254507224749448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313569 (2 * n + 1) + A313569 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304724 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142000.P15087254507224749448

namespace A142000

/-- `∩[A313569(2*n+1)+A313569(n+1), A304724(n+2)]` -/
def P15087254507224749448.Spec : Prop :=
  ∀ n, (P15087254507224749448.a n : ℤ) = A142000 (n + 1)

end A142000

/-!
# A142001: Primes congruent to 25 mod 29.

The programs for A142001, the canonical program `A142001.P6642892303876696954` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142001 has offset 1).

The definition of A142001 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2788 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142001.P6642892303876696954

`p?[29*n-4]`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A142001

/-- `p?[29*n-4]` -/
def P6642892303876696954.Spec : Prop :=
  ∀ n, P6642892303876696954.a n = A142001 (n + 1)

theorem P6642892303876696954.correct : P6642892303876696954.Spec := by
  intro n
  simp only [A142001, Nat.add_sub_cancel]

end A142001

/-! ## A142001.P9723020054852754161

`A000027(p?[A248572(n)+82])`
-/

namespace A142001.P9723020054852754161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248572 n + 82

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142001.P9723020054852754161

namespace A142001

/-- `A000027(p?[A248572(n)+82])` -/
def P9723020054852754161.Spec : Prop :=
  ∀ n, P9723020054852754161.a n = A142001 (n + 1)

end A142001

/-! ## A142001.P3926433852231013355

`∩[A169599(n+1)+2, A304724(n+1)]`
-/

namespace A142001.P3926433852231013355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169599 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304724 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142001.P3926433852231013355

namespace A142001

/-- `∩[A169599(n+1)+2, A304724(n+1)]` -/
def P3926433852231013355.Spec : Prop :=
  ∀ n, (P3926433852231013355.a n : ℤ) = A142001 (n + 1)

end A142001

/-! ## A142001.P15063854454391964990

`record[A006530(A248572(n)+82)]`
-/

namespace A142001.P15063854454391964990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A248572 n + 82).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142001.P15063854454391964990

namespace A142001

/-- `record[A006530(A248572(n)+82)]` -/
def P15063854454391964990.Spec : Prop :=
  ∀ n, P15063854454391964990.a n = A142001 (n + 1)

end A142001

/-! ## A142001.P3178158866688065905

`A008475(p?[A053741(n)+A004770(n+1)])`
-/

namespace A142001.P3178158866688065905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053741 n + A004770 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008475 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142001.P3178158866688065905

namespace A142001

/-- `A008475(p?[A053741(n)+A004770(n+1)])` -/
def P3178158866688065905.Spec : Prop :=
  ∀ n, P3178158866688065905.a n = A142001 (n + 1)

end A142001

/-! ## A142001.P8711752937130866117

`∩[A304724(n+1), A315707(n)+2]`
-/

namespace A142001.P8711752937130866117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304724 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315707 n + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142001.P8711752937130866117

namespace A142001

/-- `∩[A304724(n+1), A315707(n)+2]` -/
def P8711752937130866117.Spec : Prop :=
  ∀ n, (P8711752937130866117.a n : ℤ) = A142001 (n + 1)

end A142001

/-! ## A142001.P755758380850599646

`A006530(2*p?[A248572(n)+82])`
-/

namespace A142001.P755758380850599646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248572 n + 82

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (2 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142001.P755758380850599646

namespace A142001

/-- `A006530(2*p?[A248572(n)+82])` -/
def P755758380850599646.Spec : Prop :=
  ∀ n, P755758380850599646.a n = A142001 (n + 1)

end A142001

/-!
# A142002: Primes congruent to 26 mod 29.

The programs for A142002, the canonical program `A142002.P14421223377485261696` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142002 has offset 1).

The definition of A142002 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2806 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142002.P14421223377485261696

`p?[29*n-3]`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A142002

/-- `p?[29*n-3]` -/
def P14421223377485261696.Spec : Prop :=
  ∀ n, P14421223377485261696.a n = A142002 (n + 1)

theorem P14421223377485261696.correct : P14421223377485261696.Spec := by
  intro n
  simp only [A142002, Nat.add_sub_cancel]

end A142002

/-! ## A142002.P1367944393908631435

`A000027(p?[A304840(n+1)+A016969(n)])`
-/

namespace A142002.P1367944393908631435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304840 (n + 1) + A016969 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142002.P1367944393908631435

namespace A142002

/-- `A000027(p?[A304840(n+1)+A016969(n)])` -/
def P1367944393908631435.Spec : Prop :=
  ∀ n, P1367944393908631435.a n = A142002 (n + 1)

end A142002

/-! ## A142002.P18346385697235619153

`or(p?[A161714(n+4)+n], A000007(n))`
-/

namespace A142002.P18346385697235619153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161714 (n + 4) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A000007 n)

end

end A142002.P18346385697235619153

namespace A142002

/-- `or(p?[A161714(n+4)+n], A000007(n))` -/
def P18346385697235619153.Spec : Prop :=
  ∀ n, P18346385697235619153.a n = A142002 (n + 1)

end A142002

/-! ## A142002.P18387618080340291347

`p?[A161714(n+4)+n]%(2*A123866(n+2))`
-/

namespace A142002.P18387618080340291347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161714 (n + 4) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (2 * A123866 (n + 2))

end

end A142002.P18387618080340291347

namespace A142002

/-- `p?[A161714(n+4)+n]%(2*A123866(n+2))` -/
def P18387618080340291347.Spec : Prop :=
  ∀ n, P18387618080340291347.a n = A142002 (n + 1)

end A142002

/-! ## A142002.P1481203339364393846

`A000027(p?[A044102(n)-A017017(n)])`
-/

namespace A142002.P1481203339364393846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044102 n - A017017 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142002.P1481203339364393846

namespace A142002

/-- `A000027(p?[A044102(n)-A017017(n)])` -/
def P1481203339364393846.Spec : Prop :=
  ∀ n, P1481203339364393846.a n = A142002 (n + 1)

end A142002

/-! ## A142002.P9757961924159856940

`A000027(p?[A158060(n+1)+A008586(n)])`
-/

namespace A142002.P9757961924159856940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158060 (n + 1) + A008586 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142002.P9757961924159856940

namespace A142002

/-- `A000027(p?[A158060(n+1)+A008586(n)])` -/
def P9757961924159856940.Spec : Prop :=
  ∀ n, P9757961924159856940.a n = A142002 (n + 1)

end A142002

/-! ## A142002.P8574036512808817740

`A001222(A157996(n+1))*p?[A161714(n+4)+n]`
-/

namespace A142002.P8574036512808817740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161714 (n + 4) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A157996 (n + 1)).toNat * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142002.P8574036512808817740

namespace A142002

/-- `A001222(A157996(n+1))*p?[A161714(n+4)+n]` -/
def P8574036512808817740.Spec : Prop :=
  ∀ n, P8574036512808817740.a n = A142002 (n + 1)

end A142002

/-! ## A142002.P13975906786070068049

`record[A006530(A161714(n+4)+n)]`
-/

namespace A142002.P13975906786070068049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A161714 (n + 4) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142002.P13975906786070068049

namespace A142002

/-- `record[A006530(A161714(n+4)+n)]` -/
def P13975906786070068049.Spec : Prop :=
  ∀ n, P13975906786070068049.a n = A142002 (n + 1)

end A142002

/-! ## A142002.P18251867951559898300

`record[A020639(A161714(n+4)+n)]`
-/

namespace A142002.P18251867951559898300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A161714 (n + 4) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142002.P18251867951559898300

namespace A142002

/-- `record[A020639(A161714(n+4)+n)]` -/
def P18251867951559898300.Spec : Prop :=
  ∀ n, P18251867951559898300.a n = A142002 (n + 1)

end A142002

/-! ## A142002.P7479431356561146949

`A007913(p?[A044102(n)-A017017(n)])`
-/

namespace A142002.P7479431356561146949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044102 n - A017017 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142002.P7479431356561146949

namespace A142002

/-- `A007913(p?[A044102(n)-A017017(n)])` -/
def P7479431356561146949.Spec : Prop :=
  ∀ n, P7479431356561146949.a n = A142002 (n + 1)

end A142002

/-! ## A142002.P1066056507274551302

`A007913(p?[A135631(n)-A166519(n)])`
-/

namespace A142002.P1066056507274551302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135631 n - A166519 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142002.P1066056507274551302

namespace A142002

/-- `A007913(p?[A135631(n)-A166519(n)])` -/
def P1066056507274551302.Spec : Prop :=
  ∀ n, P1066056507274551302.a n = A142002 (n + 1)

end A142002

/-! ## A142002.P8895783307668720681

`A007913(p?[A158060(n+1)+A008574(n)])`
-/

namespace A142002.P8895783307668720681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158060 (n + 1) + A008574 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142002.P8895783307668720681

namespace A142002

/-- `A007913(p?[A158060(n+1)+A008574(n)])` -/
def P8895783307668720681.Spec : Prop :=
  ∀ n, P8895783307668720681.a n = A142002 (n + 1)

end A142002

/-! ## A142002.P16876328251841412124

`A001414(p?[A304840(n+1)+A016969(n)])`
-/

namespace A142002.P16876328251841412124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304840 (n + 1) + A016969 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142002.P16876328251841412124

namespace A142002

/-- `A001414(p?[A304840(n+1)+A016969(n)])` -/
def P16876328251841412124.Spec : Prop :=
  ∀ n, P16876328251841412124.a n = A142002 (n + 1)

end A142002

/-! ## A142002.P2886457270629977445

`A007947(p?[A304840(n+1)+A016969(n)])`
-/

namespace A142002.P2886457270629977445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304840 (n + 1) + A016969 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142002.P2886457270629977445

namespace A142002

/-- `A007947(p?[A304840(n+1)+A016969(n)])` -/
def P2886457270629977445.Spec : Prop :=
  ∀ n, P2886457270629977445.a n = A142002 (n + 1)

end A142002

/-! ## A142002.P15489190171744719027

`A125746(p?[A017041(4*n+3)+n])`
-/

namespace A142002.P15489190171744719027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017041 (4 * n + 3) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125746 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142002.P15489190171744719027

namespace A142002

/-- `A125746(p?[A017041(4*n+3)+n])` -/
def P15489190171744719027.Spec : Prop :=
  ∀ n, P15489190171744719027.a n = A142002 (n + 1)

end A142002

/-! ## A142002.P6270565133989076014

`A034699(p?[A158060(n+1)+A008574(n)])`
-/

namespace A142002.P6270565133989076014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158060 (n + 1) + A008574 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142002.P6270565133989076014

namespace A142002

/-- `A034699(p?[A158060(n+1)+A008574(n)])` -/
def P6270565133989076014.Spec : Prop :=
  ∀ n, P6270565133989076014.a n = A142002 (n + 1)

end A142002

/-!
# A142003: Primes congruent to 27 mod 29.

The programs for A142003, the canonical program `A142003.P5906945974808956508` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142003 has offset 1).

The definition of A142003 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2823 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142003.P5906945974808956508

`p?[29*n-2]`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A142003

/-- `p?[29*n-2]` -/
def P5906945974808956508.Spec : Prop :=
  ∀ n, P5906945974808956508.a n = A142003 (n + 1)

theorem P5906945974808956508.correct : P5906945974808956508.Spec := by
  intro n
  simp only [A142003, Nat.add_sub_cancel]

end A142003

/-! ## A142003.P11092524410187318363

`A000027(p?[A249674(n)-(n+2)])`
-/

namespace A142003.P11092524410187318363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249674 n - (n + 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142003.P11092524410187318363

namespace A142003

/-- `A000027(p?[A249674(n)-(n+2)])` -/
def P11092524410187318363.Spec : Prop :=
  ∀ n, P11092524410187318363.a n = A142003 (n + 1)

end A142003

/-! ## A142003.P16032693844813175738

`A000265(p?[A249674(n)-(n+2)])`
-/

namespace A142003.P16032693844813175738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249674 n - (n + 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142003.P16032693844813175738

namespace A142003

/-- `A000265(p?[A249674(n)-(n+2)])` -/
def P16032693844813175738.Spec : Prop :=
  ∀ n, P16032693844813175738.a n = A142003 (n + 1)

end A142003

/-! ## A142003.P244271833214489838

`A007913(p?[A249674(n)-(n+2)])`
-/

namespace A142003.P244271833214489838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249674 n - (n + 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142003.P244271833214489838

namespace A142003

/-- `A007913(p?[A249674(n)-(n+2)])` -/
def P244271833214489838.Spec : Prop :=
  ∀ n, P244271833214489838.a n = A142003 (n + 1)

end A142003

/-! ## A142003.P7702686955361045621

`A000265(p?[A144619(n)+A002264(n)])`
-/

namespace A142003.P7702686955361045621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144619 n + A002264 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142003.P7702686955361045621

namespace A142003

/-- `A000265(p?[A144619(n)+A002264(n)])` -/
def P7702686955361045621.Spec : Prop :=
  ∀ n, P7702686955361045621.a n = A142003 (n + 1)

end A142003

/-! ## A142003.P3925453091866408710

`A052410(p?[A111284(n+1)+A008607(n)])`
-/

namespace A142003.P3925453091866408710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111284 (n + 1) + A008607 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052410 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142003.P3925453091866408710

namespace A142003

/-- `A052410(p?[A111284(n+1)+A008607(n)])` -/
def P3925453091866408710.Spec : Prop :=
  ∀ n, P3925453091866408710.a n = A142003 (n + 1)

end A142003

/-! ## A142003.P7525626417441264564

`A299149(p?[A158060(n+1)+A016813(n)])`
-/

namespace A142003.P7525626417441264564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158060 (n + 1) + A016813 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299149 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142003.P7525626417441264564

namespace A142003

/-- `A299149(p?[A158060(n+1)+A016813(n)])` -/
def P7525626417441264564.Spec : Prop :=
  ∀ n, P7525626417441264564.a n = A142003 (n + 1)

end A142003

/-!
# A142004: Primes congruent to 28 mod 29.

The programs for A142004, the canonical program `A142004.P14454865169866432114` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142004 has offset 1).

The definition of A142004 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2791 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142004.P14454865169866432114

`p?[29*n-1]`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A142004

/-- `p?[29*n-1]` -/
def P14454865169866432114.Spec : Prop :=
  ∀ n, P14454865169866432114.a n = A142004 (n + 1)

theorem P14454865169866432114.correct : P14454865169866432114.Spec := by
  intro n
  simp only [A142004, Nat.add_sub_cancel]

end A142004

/-! ## A142004.P11860336589644981638

`or(1, p?[28*(n+1)+n])`
-/

namespace A142004.P11860336589644981638
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  28 * (n + 1) + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A142004.P11860336589644981638

namespace A142004

/-- `or(1, p?[28*(n+1)+n])` -/
def P11860336589644981638.Spec : Prop :=
  ∀ n, (P11860336589644981638.a n : ℤ) = A142004 (n + 1)

end A142004

/-! ## A142004.P12377015171030251631

`∏{d}[p?[28*(n+1)+n], #]`
-/

namespace A142004.P12377015171030251631
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  28 * (n + 1) + n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), d

end

end A142004.P12377015171030251631

namespace A142004

/-- `∏{d}[p?[28*(n+1)+n], #]` -/
def P12377015171030251631.Spec : Prop :=
  ∀ n, (P12377015171030251631.a n : ℤ) = A142004 (n + 1)

end A142004

/-! ## A142004.P13724384540579831243

`∑{p}[p?[28*(n+1)+n], #]`
-/

namespace A142004.P13724384540579831243
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  28 * (n + 1) + n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), p

end

end A142004.P13724384540579831243

namespace A142004

/-- `∑{p}[p?[28*(n+1)+n], #]` -/
def P13724384540579831243.Spec : Prop :=
  ∀ n, (P13724384540579831243.a n : ℤ) = A142004 (n + 1)

end A142004

/-! ## A142004.P7588070148998088890

`∏{p}[p?[57*(n+1)+n], #]`
-/

namespace A142004.P7588070148998088890
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  57 * (n + 1) + n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), p

end

end A142004.P7588070148998088890

namespace A142004

/-- `∏{p}[p?[57*(n+1)+n], #]` -/
def P7588070148998088890.Spec : Prop :=
  ∀ n, (P7588070148998088890.a n : ℤ) = A142004 (n + 1)

end A142004

/-! ## A142004.P12314105656372409127

`∩[A038901(n+1), A248572(n)-2]`
-/

namespace A142004.P12314105656372409127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038901 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248572 n - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142004.P12314105656372409127

namespace A142004

/-- `∩[A038901(n+1), A248572(n)-2]` -/
def P12314105656372409127.Spec : Prop :=
  ∀ n, (P12314105656372409127.a n : ℤ) = A142004 (n + 1)

end A142004

/-! ## A142004.P18202142487930043253

`∩[A191022(n+1), A248572(n)-2]`
-/

namespace A142004.P18202142487930043253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248572 n - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142004.P18202142487930043253

namespace A142004

/-- `∩[A191022(n+1), A248572(n)-2]` -/
def P18202142487930043253.Spec : Prop :=
  ∀ n, (P18202142487930043253.a n : ℤ) = A142004 (n + 1)

end A142004

/-! ## A142004.P17043458291669730262

`∩[A000040(n+1), A248572(n)-2]`
-/

namespace A142004.P17043458291669730262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248572 n - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142004.P17043458291669730262

namespace A142004

/-- `∩[A000040(n+1), A248572(n)-2]` -/
def P17043458291669730262.Spec : Prop :=
  ∀ n, (P17043458291669730262.a n : ℤ) = A142004 (n + 1)

end A142004

/-!
# A142005: Primes congruent to 1 mod 31.

The programs for A142005, the canonical program `A142005.P16017676294522784959` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142005 has offset 1).

The definition of A142005 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2592 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142005.P16017676294522784959

`p?[31*n+1]`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A142005

/-- `p?[31*n+1]` -/
def P16017676294522784959.Spec : Prop :=
  ∀ n, (P16017676294522784959.a n : ℤ) = A142005 (n + 1)

theorem P16017676294522784959.correct : P16017676294522784959.Spec := by
  intro n
  simp only [A142005, Nat.add_sub_cancel]

end A142005

/-! ## A142005.P4893944029518691147

`or(1, p?[or(1, 62*n)])`
-/

namespace A142005.P4893944029518691147
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (62 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A142005.P4893944029518691147

namespace A142005

/-- `or(1, p?[or(1, 62*n)])` -/
def P4893944029518691147.Spec : Prop :=
  ∀ n, (P4893944029518691147.a n : ℤ) = A142005 (n + 1)

end A142005

/-! ## A142005.P11911906324296942744

`∏{d}[p?[xor(1, 62*n)], #]`
-/

namespace A142005.P11911906324296942744
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (62 * n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), d

end

end A142005.P11911906324296942744

namespace A142005

/-- `∏{d}[p?[xor(1, 62*n)], #]` -/
def P11911906324296942744.Spec : Prop :=
  ∀ n, (P11911906324296942744.a n : ℤ) = A142005 (n + 1)

end A142005

/-! ## A142005.P9241388273053659305

`∑{p}[p?[xor(1, 62*n)], #]`
-/

namespace A142005.P9241388273053659305
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (62 * n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), p

end

end A142005.P9241388273053659305

namespace A142005

/-- `∑{p}[p?[xor(1, 62*n)], #]` -/
def P9241388273053659305.Spec : Prop :=
  ∀ n, (P9241388273053659305.a n : ℤ) = A142005 (n + 1)

end A142005

/-! ## A142005.P10237021279215580426

`∑{d}[p?[32*n-(n-1)], #]-1`
-/

namespace A142005.P10237021279215580426
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (32 * n : ℤ) - ((n : ℤ) - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n).natAbs, d : ℕ) : ℤ) - 1

end

end A142005.P10237021279215580426

namespace A142005

/-- `∑{d}[p?[32*n-(n-1)], #]-1` -/
def P10237021279215580426.Spec : Prop :=
  ∀ n, P10237021279215580426.a n = A142005 (n + 1)

end A142005

/-! ## A142005.P9671324399776769350

`∩[A051040(n+1), A099184(n+2)]`
-/

namespace A142005.P9671324399776769350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099184 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142005.P9671324399776769350

namespace A142005

/-- `∩[A051040(n+1), A099184(n+2)]` -/
def P9671324399776769350.Spec : Prop :=
  ∀ n, (P9671324399776769350.a n : ℤ) = A142005 (n + 1)

end A142005

/-! ## A142005.P13829728584439540092

`∩[A050261(n+1), A051040(n+1)]`
-/

namespace A142005.P13829728584439540092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050261 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051040 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142005.P13829728584439540092

namespace A142005

/-- `∩[A050261(n+1), A051040(n+1)]` -/
def P13829728584439540092.Spec : Prop :=
  ∀ n, (P13829728584439540092.a n : ℤ) = A142005 (n + 1)

end A142005

/-! ## A142005.P10984239129565887238

`∩[A004139(n+1), A051040(n+1)]`
-/

namespace A142005.P10984239129565887238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051040 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142005.P10984239129565887238

namespace A142005

/-- `∩[A004139(n+1), A051040(n+1)]` -/
def P10984239129565887238.Spec : Prop :=
  ∀ n, (P10984239129565887238.a n : ℤ) = A142005 (n + 1)

end A142005

/-! ## A142005.P3014523851310051665

`∩[A051040(n+1), A065091(n+1)]`
-/

namespace A142005.P3014523851310051665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142005.P3014523851310051665

namespace A142005

/-- `∩[A051040(n+1), A065091(n+1)]` -/
def P3014523851310051665.Spec : Prop :=
  ∀ n, (P3014523851310051665.a n : ℤ) = A142005 (n + 1)

end A142005

/-! ## A142005.P2622331933109916723

`∩[A051040(n+1), A065376(n+1)]`
-/

namespace A142005.P2622331933109916723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065376 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142005.P2622331933109916723

namespace A142005

/-- `∩[A051040(n+1), A065376(n+1)]` -/
def P2622331933109916723.Spec : Prop :=
  ∀ n, (P2622331933109916723.a n : ℤ) = A142005 (n + 1)

end A142005

/-! ## A142005.P17740759288922694795

`∩[A051040(n+1), A065396(n+1)]`
-/

namespace A142005.P17740759288922694795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065396 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142005.P17740759288922694795

namespace A142005

/-- `∩[A051040(n+1), A065396(n+1)]` -/
def P17740759288922694795.Spec : Prop :=
  ∀ n, (P17740759288922694795.a n : ℤ) = A142005 (n + 1)

end A142005

/-! ## A142005.P10912257558337466696

`∩[A051040(n+1), A071621(n+1)]`
-/

namespace A142005.P10912257558337466696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071621 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142005.P10912257558337466696

namespace A142005

/-- `∩[A051040(n+1), A071621(n+1)]` -/
def P10912257558337466696.Spec : Prop :=
  ∀ n, (P10912257558337466696.a n : ℤ) = A142005 (n + 1)

end A142005

/-! ## A142005.P5322014305953048045

`∩[A051040(n+1), A078132(n+1)]`
-/

namespace A142005.P5322014305953048045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078132 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142005.P5322014305953048045

namespace A142005

/-- `∩[A051040(n+1), A078132(n+1)]` -/
def P5322014305953048045.Spec : Prop :=
  ∀ n, (P5322014305953048045.a n : ℤ) = A142005 (n + 1)

end A142005

/-! ## A142005.P17477814972370619993

`∩[A051040(n+1), A078138(n+1)]`
-/

namespace A142005.P17477814972370619993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078138 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142005.P17477814972370619993

namespace A142005

/-- `∩[A051040(n+1), A078138(n+1)]` -/
def P17477814972370619993.Spec : Prop :=
  ∀ n, (P17477814972370619993.a n : ℤ) = A142005 (n + 1)

end A142005

/-! ## A142005.P1104942016773267696

`∩[A051040(n+1), A106119(n+1)]`
-/

namespace A142005.P1104942016773267696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106119 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142005.P1104942016773267696

namespace A142005

/-- `∩[A051040(n+1), A106119(n+1)]` -/
def P1104942016773267696.Spec : Prop :=
  ∀ n, (P1104942016773267696.a n : ℤ) = A142005 (n + 1)

end A142005

/-! ## A142005.P15261699106666089947

`∩[A051040(n+1), A108719(n+1)]`
-/

namespace A142005.P15261699106666089947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108719 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142005.P15261699106666089947

namespace A142005

/-- `∩[A051040(n+1), A108719(n+1)]` -/
def P15261699106666089947.Spec : Prop :=
  ∀ n, (P15261699106666089947.a n : ℤ) = A142005 (n + 1)

end A142005

/-! ## A142005.P17790047898399819039

`∩[A051040(n+1), A122259(n+1)]`
-/

namespace A142005.P17790047898399819039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122259 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142005.P17790047898399819039

namespace A142005

/-- `∩[A051040(n+1), A122259(n+1)]` -/
def P17790047898399819039.Spec : Prop :=
  ∀ n, (P17790047898399819039.a n : ℤ) = A142005 (n + 1)

end A142005

/-! ## A142005.P11397380247161285205

`∩[A051040(n+1), A124598(n+1)]`
-/

namespace A142005.P11397380247161285205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124598 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142005.P11397380247161285205

namespace A142005

/-- `∩[A051040(n+1), A124598(n+1)]` -/
def P11397380247161285205.Spec : Prop :=
  ∀ n, (P11397380247161285205.a n : ℤ) = A142005 (n + 1)

end A142005

/-! ## A142005.P8121924222454841678

`∩[A051040(n+1), A157996(n+1)]`
-/

namespace A142005.P8121924222454841678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157996 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142005.P8121924222454841678

namespace A142005

/-- `∩[A051040(n+1), A157996(n+1)]` -/
def P8121924222454841678.Spec : Prop :=
  ∀ n, (P8121924222454841678.a n : ℤ) = A142005 (n + 1)

end A142005

/-! ## A142005.P16075812441422743785

`∩[A051040(n+1), A162789(n+1)]`
-/

namespace A142005.P16075812441422743785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162789 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142005.P16075812441422743785

namespace A142005

/-- `∩[A051040(n+1), A162789(n+1)]` -/
def P16075812441422743785.Spec : Prop :=
  ∀ n, (P16075812441422743785.a n : ℤ) = A142005 (n + 1)

end A142005

/-!
# A142006: Primes congruent to 2 mod 31.

The programs for A142006, there is no canonical definition to state claims against.
-/

/-! ## A142006.P4139838670210309873

`∪[A007352(n+1), A142874(n+1)]`
-/

namespace A142006.P4139838670210309873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007352 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142874 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A142006.P4139838670210309873

/-! ## A142006.P16044776054279127208

`p?[31*n+2]`
-/

namespace A142006.P16044776054279127208
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  31 * n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142006.P16044776054279127208

/-! ## A142006.P9811187934662822923

`lcm((-1)^n, p?[31*n-29])`
-/

namespace A142006.P9811187934662822923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (31 * n : ℤ) - 29

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A142006.P9811187934662822923

/-! ## A142006.P13217844961804276963

`p?[31*n-29]-A000035(2*n)`
-/

namespace A142006.P13217844961804276963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (31 * n : ℤ) - 29

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - A000035 (2 * n)

end

end A142006.P13217844961804276963

/-! ## A142006.P16871215098679551066

`p?[31*n-29]*A008295(and(2, 1-n))`
-/

namespace A142006.P16871215098679551066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (31 * n : ℤ) - 29

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * A008295 (Int.land 2 (1 - (n : ℤ))).toNat

end

end A142006.P16871215098679551066

/-! ## A142006.P4700924173000056863

`A000027(p?[a(n-1)+31])` with `a(0)=2`
-/

namespace A142006.P4700924173000056863
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2] fun n f1 =>
  f1 (n - 1) + 31

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A142006.P4700924173000056863

/-! ## A142006.P7147669397388191195

`A000027(p?[A249674(n)+2+n])`
-/

namespace A142006.P7147669397388191195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249674 n + 2 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142006.P7147669397388191195

/-! ## A142006.P2920954858154586958

`A000027(p?[A174312(n)+2-n])`
-/

namespace A142006.P2920954858154586958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174312 n + (2 - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142006.P2920954858154586958

/-! ## A142006.P6560713988654241578

`p?[31*n-29]-and(8, A290107(A007318(n)))`
-/

namespace A142006.P6560713988654241578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (31 * n : ℤ) - 29

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - Int.land 8 (A290107 (A007318 n).toNat)

end

end A142006.P6560713988654241578

/-! ## A142006.P15266542277079107089

`record[p?[∏{p}[A004767(8*n)-n-1, #]]]`
-/

namespace A142006.P15266542277079107089
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004767 (8 * n) - (n : ℤ) - 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n).natAbs, p

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142006.P15266542277079107089

/-!
# A142007: Primes congruent to 3 mod 31.

The programs for A142007, the canonical program `A142007.P2747788869624958561` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142007 has offset 1).

The definition of A142007 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2629 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142007.P2747788869624958561

`p?[31*n+3]`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A142007

/-- `p?[31*n+3]` -/
def P2747788869624958561.Spec : Prop :=
  ∀ n, (P2747788869624958561.a n : ℤ) = A142007 (n + 1)

theorem P2747788869624958561.correct : P2747788869624958561.Spec := by
  intro n
  simp only [A142007, Nat.add_sub_cancel]

end A142007

/-! ## A142007.P10001831988069163897

`∩[A004139(n+1), A051040(n+1)+2]`
-/

namespace A142007.P10001831988069163897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051040 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142007.P10001831988069163897

namespace A142007

/-- `∩[A004139(n+1), A051040(n+1)+2]` -/
def P10001831988069163897.Spec : Prop :=
  ∀ n, (P10001831988069163897.a n : ℤ) = A142007 (n + 1)

end A142007

/-! ## A142007.P6776140518291611423

`∩[A051040(n+1)+2, A065091(n+1)]`
-/

namespace A142007.P6776140518291611423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051040 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142007.P6776140518291611423

namespace A142007

/-- `∩[A051040(n+1)+2, A065091(n+1)]` -/
def P6776140518291611423.Spec : Prop :=
  ∀ n, (P6776140518291611423.a n : ℤ) = A142007 (n + 1)

end A142007

/-! ## A142007.P15600364266125861761

`∩[A051040(n+1)+2, A065396(n+1)]`
-/

namespace A142007.P15600364266125861761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051040 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065396 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142007.P15600364266125861761

namespace A142007

/-- `∩[A051040(n+1)+2, A065396(n+1)]` -/
def P15600364266125861761.Spec : Prop :=
  ∀ n, (P15600364266125861761.a n : ℤ) = A142007 (n + 1)

end A142007

/-! ## A142007.P10906094440935578221

`∩[A051040(n+1)+2, A351398(n+1)]`
-/

namespace A142007.P10906094440935578221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051040 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351398 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142007.P10906094440935578221

namespace A142007

/-- `∩[A051040(n+1)+2, A351398(n+1)]` -/
def P10906094440935578221.Spec : Prop :=
  ∀ n, (P10906094440935578221.a n : ℤ) = A142007 (n + 1)

end A142007

/-! ## A142007.P7090817097197996198

`A000265(p?[A139222(n+1)+n])`
-/

namespace A142007.P7090817097197996198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139222 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142007.P7090817097197996198

namespace A142007

/-- `A000265(p?[A139222(n+1)+n])` -/
def P7090817097197996198.Spec : Prop :=
  ∀ n, P7090817097197996198.a n = A142007 (n + 1)

end A142007

/-! ## A142007.P531045008696253188

`A001414(p?[A139222(n+1)+n])`
-/

namespace A142007.P531045008696253188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139222 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142007.P531045008696253188

namespace A142007

/-- `A001414(p?[A139222(n+1)+n])` -/
def P531045008696253188.Spec : Prop :=
  ∀ n, P531045008696253188.a n = A142007 (n + 1)

end A142007

/-! ## A142007.P13897044956150625665

`A000265(p?[A161714(n)+A016789(n)])`
-/

namespace A142007.P13897044956150625665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161714 n + A016789 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142007.P13897044956150625665

namespace A142007

/-- `A000265(p?[A161714(n)+A016789(n)])` -/
def P13897044956150625665.Spec : Prop :=
  ∀ n, P13897044956150625665.a n = A142007 (n + 1)

end A142007

/-! ## A142007.P9369230191702569509

`A000265(p?[A183010(n)+A017029(n)])`
-/

namespace A142007.P9369230191702569509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183010 n + A017029 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142007.P9369230191702569509

namespace A142007

/-- `A000265(p?[A183010(n)+A017029(n)])` -/
def P9369230191702569509.Spec : Prop :=
  ∀ n, P9369230191702569509.a n = A142007 (n + 1)

end A142007

/-! ## A142007.P6269789542142710108

`A034699(p?[A139222(n+1)+n])`
-/

namespace A142007.P6269789542142710108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139222 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142007.P6269789542142710108

namespace A142007

/-- `A034699(p?[A139222(n+1)+n])` -/
def P6269789542142710108.Spec : Prop :=
  ∀ n, P6269789542142710108.a n = A142007 (n + 1)

end A142007

/-!
# A142008: Primes congruent to 4 mod 31.

The programs for A142008, the canonical program `A142008.P2886295417472548207` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142008 has offset 1).

The definition of A142008 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2614 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142008.P2886295417472548207

`p?[31*n+4]`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A142008

/-- `p?[31*n+4]` -/
def P2886295417472548207.Spec : Prop :=
  ∀ n, (P2886295417472548207.a n : ℤ) = A142008 (n + 1)

theorem P2886295417472548207.correct : P2886295417472548207.Spec := by
  intro n
  simp only [A142008, Nat.add_sub_cancel]

end A142008

/-! ## A142008.P9594242675264393315

`A000027(p?[A183010(n)+A017041(n)])`
-/

namespace A142008.P9594242675264393315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183010 n + A017041 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142008.P9594242675264393315

namespace A142008

/-- `A000027(p?[A183010(n)+A017041(n)])` -/
def P9594242675264393315.Spec : Prop :=
  ∀ n, P9594242675264393315.a n = A142008 (n + 1)

end A142008

/-! ## A142008.P13515292708979552863

`A007947(p?[A135631(n)+4])`
-/

namespace A142008.P13515292708979552863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135631 n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142008.P13515292708979552863

namespace A142008

/-- `A007947(p?[A135631(n)+4])` -/
def P13515292708979552863.Spec : Prop :=
  ∀ n, P13515292708979552863.a n = A142008 (n + 1)

end A142008

/-! ## A142008.P1318447714671974317

`filter[A169600(2*n+1), A010051(#)]`
-/

namespace A142008.P1318447714671974317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169600 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A142008.P1318447714671974317

namespace A142008

/-- `filter[A169600(2*n+1), A010051(#)]` -/
def P1318447714671974317.Spec : Prop :=
  ∀ n, P1318447714671974317.a n = A142008 (n + 1)

end A142008

/-! ## A142008.P6787279390515895233

`A007913(p?[A017029(n)+A008606(n)])`
-/

namespace A142008.P6787279390515895233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017029 n + A008606 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142008.P6787279390515895233

namespace A142008

/-- `A007913(p?[A017029(n)+A008606(n)])` -/
def P6787279390515895233.Spec : Prop :=
  ∀ n, P6787279390515895233.a n = A142008 (n + 1)

end A142008

/-! ## A142008.P11691970452778247082

`A000265(p?[A183010(n)+A017041(n)])`
-/

namespace A142008.P11691970452778247082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183010 n + A017041 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142008.P11691970452778247082

namespace A142008

/-- `A000265(p?[A183010(n)+A017041(n)])` -/
def P11691970452778247082.Spec : Prop :=
  ∀ n, P11691970452778247082.a n = A142008 (n + 1)

end A142008

/-! ## A142008.P18088978202069920095

`A007913(p?[A183010(n)+A017041(n)])`
-/

namespace A142008.P18088978202069920095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183010 n + A017041 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142008.P18088978202069920095

namespace A142008

/-- `A007913(p?[A183010(n)+A017041(n)])` -/
def P18088978202069920095.Spec : Prop :=
  ∀ n, P18088978202069920095.a n = A142008 (n + 1)

end A142008

/-! ## A142008.P18301341609443261736

`A008472(p?[A183010(n)+A017041(n)])`
-/

namespace A142008.P18301341609443261736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183010 n + A017041 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142008.P18301341609443261736

namespace A142008

/-- `A008472(p?[A183010(n)+A017041(n)])` -/
def P18301341609443261736.Spec : Prop :=
  ∀ n, P18301341609443261736.a n = A142008 (n + 1)

end A142008

/-! ## A142008.P13369406288358624007

`A007913(p?[A215148(n)+A017101(n)])`
-/

namespace A142008.P13369406288358624007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215148 n + A017101 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142008.P13369406288358624007

namespace A142008

/-- `A007913(p?[A215148(n)+A017101(n)])` -/
def P13369406288358624007.Spec : Prop :=
  ∀ n, P13369406288358624007.a n = A142008 (n + 1)

end A142008

/-! ## A142008.P1866999598680528424

`filter[A169600(2*n+1), A323152(#)]`
-/

namespace A142008.P1866999598680528424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169600 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323152 (f1 j).toNat = 1) n)

end

end A142008.P1866999598680528424

namespace A142008

/-- `filter[A169600(2*n+1), A323152(#)]` -/
def P1866999598680528424.Spec : Prop :=
  ∀ n, P1866999598680528424.a n = A142008 (n + 1)

end A142008

/-! ## A142008.P5713846725573300260

`filter[A169600(2*n+1), A323153(#)]`
-/

namespace A142008.P5713846725573300260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169600 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323153 (f1 j).toNat = 1) n)

end

end A142008.P5713846725573300260

namespace A142008

/-- `filter[A169600(2*n+1), A323153(#)]` -/
def P5713846725573300260.Spec : Prop :=
  ∀ n, P5713846725573300260.a n = A142008 (n + 1)

end A142008

/-! ## A142008.P1124004243194055118

`A034699(p?[A183010(n)+A017041(n)])`
-/

namespace A142008.P1124004243194055118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183010 n + A017041 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142008.P1124004243194055118

namespace A142008

/-- `A034699(p?[A183010(n)+A017041(n)])` -/
def P1124004243194055118.Spec : Prop :=
  ∀ n, P1124004243194055118.a n = A142008 (n + 1)

end A142008

/-! ## A142008.P3168737157369647116

`A034699(p?[A327529(n+1)+A139222(n+1)])`
-/

namespace A142008.P3168737157369647116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327529 (n + 1) + A139222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142008.P3168737157369647116

namespace A142008

/-- `A034699(p?[A327529(n+1)+A139222(n+1)])` -/
def P3168737157369647116.Spec : Prop :=
  ∀ n, P3168737157369647116.a n = A142008 (n + 1)

end A142008

/-!
# A142009: Primes congruent to 5 mod 31.

The programs for A142009, the canonical program `A142009.P17668888222048217800` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142009 has offset 1).

The definition of A142009 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2612 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142009.P17668888222048217800

`p?[62*n+5]`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A142009

/-- `p?[62*n+5]` -/
def P17668888222048217800.Spec : Prop :=
  ∀ n, (P17668888222048217800.a n : ℤ) = A142009 (n + 1)

theorem P17668888222048217800.correct : P17668888222048217800.Spec := by
  intro n
  simp only [A142009, Nat.add_sub_cancel]

end A142009

/-! ## A142009.P11093713964247136305

`A000027(p?[a(n-1)+31])` with `a(0)=5`
-/

namespace A142009.P11093713964247136305
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [5] fun n f1 =>
  f1 (n - 1) + 31

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A142009.P11093713964247136305

namespace A142009

/-- `A000027(p?[a(n-1)+31])` -/
def P11093713964247136305.Spec : Prop :=
  ∀ n, P11093713964247136305.a n = A142009 (n + 1)

end A142009

/-! ## A142009.P7036753010479683067

`A000027(p?[A016969(n)+A008607(n)])`
-/

namespace A142009.P7036753010479683067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016969 n + A008607 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142009.P7036753010479683067

namespace A142009

/-- `A000027(p?[A016969(n)+A008607(n)])` -/
def P7036753010479683067.Spec : Prop :=
  ∀ n, P7036753010479683067.a n = A142009 (n + 1)

end A142009

/-! ## A142009.P750568358858597549

`record[A006530(31*n+5)]`
-/

namespace A142009.P750568358858597549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (31 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142009.P750568358858597549

namespace A142009

/-- `record[A006530(31*n+5)]` -/
def P750568358858597549.Spec : Prop :=
  ∀ n, P750568358858597549.a n = A142009 (n + 1)

end A142009

/-! ## A142009.P16030308693953515393

`record[A020639(abs(xor(31*n, -2))+3)]`
-/

namespace A142009.P16030308693953515393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (|Int.xor (31 * n : ℤ) (-2)| + 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142009.P16030308693953515393

namespace A142009

/-- `record[A020639(abs(xor(31*n, -2))+3)]` -/
def P16030308693953515393.Spec : Prop :=
  ∀ n, P16030308693953515393.a n = A142009 (n + 1)

end A142009

/-!
# A142010: Primes congruent to 6 mod 31.

The programs for A142010, the canonical program `A142010.P8383026999669484565` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142010 has offset 1).

The definition of A142010 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2606 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142010.P8383026999669484565

`p?[31*n+6]`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A142010

/-- `p?[31*n+6]` -/
def P8383026999669484565.Spec : Prop :=
  ∀ n, (P8383026999669484565.a n : ℤ) = A142010 (n + 1)

theorem P8383026999669484565.correct : P8383026999669484565.Spec := by
  intro n
  simp only [A142010, Nat.add_sub_cancel]

end A142010

/-! ## A142010.P361754121075247488

`∩[A164131(2*n+1)-2, A191067(n+2)]`
-/

namespace A142010.P361754121075247488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164131 (2 * n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191067 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142010.P361754121075247488

namespace A142010

/-- `∩[A164131(2*n+1)-2, A191067(n+2)]` -/
def P361754121075247488.Spec : Prop :=
  ∀ n, (P361754121075247488.a n : ℤ) = A142010 (n + 1)

end A142010

/-! ## A142010.P188640476564730444

`record[A006530(31*(n+1)+6)]`
-/

namespace A142010.P188640476564730444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (31 * (n + 1) + 6)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142010.P188640476564730444

namespace A142010

/-- `record[A006530(31*(n+1)+6)]` -/
def P188640476564730444.Spec : Prop :=
  ∀ n, P188640476564730444.a n = A142010 (n + 1)

end A142010

/-! ## A142010.P16251946626740421897

`record[A020639(31*(n+1)+6)]`
-/

namespace A142010.P16251946626740421897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (31 * (n + 1) + 6)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142010.P16251946626740421897

namespace A142010

/-- `record[A020639(31*(n+1)+6)]` -/
def P16251946626740421897.Spec : Prop :=
  ∀ n, P16251946626740421897.a n = A142010 (n + 1)

end A142010

/-! ## A142010.P18328604709310105259

`A007913(p?[A139249(n+1)+n])`
-/

namespace A142010.P18328604709310105259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139249 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142010.P18328604709310105259

namespace A142010

/-- `A007913(p?[A139249(n+1)+n])` -/
def P18328604709310105259.Spec : Prop :=
  ∀ n, P18328604709310105259.a n = A142010 (n + 1)

end A142010

/-! ## A142010.P5138862733760760702

`A000265(p?[A017137(4*n)-n])`
-/

namespace A142010.P5138862733760760702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017137 (4 * n) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142010.P5138862733760760702

namespace A142010

/-- `A000265(p?[A017137(4*n)-n])` -/
def P5138862733760760702.Spec : Prop :=
  ∀ n, P5138862733760760702.a n = A142010 (n + 1)

end A142010

/-!
# A142011: Primes congruent to 7 mod 31.

The programs for A142011, the canonical program `A142011.P15778736285981160088` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142011 has offset 1).

The definition of A142011 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2622 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142011.P15778736285981160088

`p?[31*n+7]`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A142011

/-- `p?[31*n+7]` -/
def P15778736285981160088.Spec : Prop :=
  ∀ n, (P15778736285981160088.a n : ℤ) = A142011 (n + 1)

theorem P15778736285981160088.correct : P15778736285981160088.Spec := by
  intro n
  simp only [A142011, Nat.add_sub_cancel]

end A142011

/-! ## A142011.P16532762865731846729

`A000027(p?[A128471(n)+n])`
-/

namespace A142011.P16532762865731846729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128471 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142011.P16532762865731846729

namespace A142011

/-- `A000027(p?[A128471(n)+n])` -/
def P16532762865731846729.Spec : Prop :=
  ∀ n, P16532762865731846729.a n = A142011 (n + 1)

end A142011

/-! ## A142011.P4683257274588437361

`p?[A128471(n)+n]%A017318(n)`
-/

namespace A142011.P4683257274588437361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128471 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A017318 n)

end

end A142011.P4683257274588437361

namespace A142011

/-- `p?[A128471(n)+n]%A017318(n)` -/
def P4683257274588437361.Spec : Prop :=
  ∀ n, P4683257274588437361.a n = A142011 (n + 1)

end A142011

/-! ## A142011.P16392297160978634764

`∩[A164131(n+1)-1, A191024(n+1)]`
-/

namespace A142011.P16392297160978634764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164131 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191024 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142011.P16392297160978634764

namespace A142011

/-- `∩[A164131(n+1)-1, A191024(n+1)]` -/
def P16392297160978634764.Spec : Prop :=
  ∀ n, (P16392297160978634764.a n : ℤ) = A142011 (n + 1)

end A142011

/-! ## A142011.P6128192247597029793

`∩[A164131(n+1)-1, A267481(n+1)]`
-/

namespace A142011.P6128192247597029793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164131 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267481 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142011.P6128192247597029793

namespace A142011

/-- `∩[A164131(n+1)-1, A267481(n+1)]` -/
def P6128192247597029793.Spec : Prop :=
  ∀ n, (P6128192247597029793.a n : ℤ) = A142011 (n + 1)

end A142011

/-! ## A142011.P15020567180614591098

`record[A020639(62*n+7)]`
-/

namespace A142011.P15020567180614591098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (62 * n + 7)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142011.P15020567180614591098

namespace A142011

/-- `record[A020639(62*n+7)]` -/
def P15020567180614591098.Spec : Prop :=
  ∀ n, P15020567180614591098.a n = A142011 (n + 1)

end A142011

/-! ## A142011.P5000188289301578041

`A006530(lcm(2, p?[A128471(n)+n]))`
-/

namespace A142011.P5000188289301578041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128471 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Int.lcm 2 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)))

end

end A142011.P5000188289301578041

namespace A142011

/-- `A006530(lcm(2, p?[A128471(n)+n]))` -/
def P5000188289301578041.Spec : Prop :=
  ∀ n, P5000188289301578041.a n = A142011 (n + 1)

end A142011

/-!
# A142012: Primes congruent to 8 mod 31.

The programs for A142012, the canonical program `A142012.P7843368770873152612` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142012 has offset 1).

The definition of A142012 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2618 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142012.P7843368770873152612

`p?[31*n+8]`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A142012

/-- `p?[31*n+8]` -/
def P7843368770873152612.Spec : Prop :=
  ∀ n, (P7843368770873152612.a n : ℤ) = A142012 (n + 1)

theorem P7843368770873152612.correct : P7843368770873152612.Spec := by
  intro n
  simp only [A142012, Nat.add_sub_cancel]

end A142012

/-! ## A142012.P11885513223775439403

`A000027(p?[A305075(n+1)-n])`
-/

namespace A142012.P11885513223775439403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305075 (n + 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142012.P11885513223775439403

namespace A142012

/-- `A000027(p?[A305075(n+1)-n])` -/
def P11885513223775439403.Spec : Prop :=
  ∀ n, P11885513223775439403.a n = A142012 (n + 1)

end A142012

/-! ## A142012.P13186630871036124708

`∩[A164131(n+1), A191024(n+1)]`
-/

namespace A142012.P13186630871036124708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164131 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191024 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142012.P13186630871036124708

namespace A142012

/-- `∩[A164131(n+1), A191024(n+1)]` -/
def P13186630871036124708.Spec : Prop :=
  ∀ n, (P13186630871036124708.a n : ℤ) = A142012 (n + 1)

end A142012

/-! ## A142012.P14383566420353452706

`∩[A164131(n+1), A267481(n+1)]`
-/

namespace A142012.P14383566420353452706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164131 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267481 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142012.P14383566420353452706

namespace A142012

/-- `∩[A164131(n+1), A267481(n+1)]` -/
def P14383566420353452706.Spec : Prop :=
  ∀ n, (P14383566420353452706.a n : ℤ) = A142012 (n + 1)

end A142012

/-! ## A142012.P217257793588457781

`A000265(p?[A305075(n+1)-n])`
-/

namespace A142012.P217257793588457781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305075 (n + 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142012.P217257793588457781

namespace A142012

/-- `A000265(p?[A305075(n+1)-n])` -/
def P217257793588457781.Spec : Prop :=
  ∀ n, P217257793588457781.a n = A142012 (n + 1)

end A142012

/-! ## A142012.P13305471871249662606

`A007913(p?[A305075(n+1)-n])`
-/

namespace A142012.P13305471871249662606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305075 (n + 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142012.P13305471871249662606

namespace A142012

/-- `A007913(p?[A305075(n+1)-n])` -/
def P13305471871249662606.Spec : Prop :=
  ∀ n, P13305471871249662606.a n = A142012 (n + 1)

end A142012

/-! ## A142012.P11175071293792733959

`A007947(p?[A305075(n+1)-n])`
-/

namespace A142012.P11175071293792733959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305075 (n + 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142012.P11175071293792733959

namespace A142012

/-- `A007947(p?[A305075(n+1)-n])` -/
def P11175071293792733959.Spec : Prop :=
  ∀ n, P11175071293792733959.a n = A142012 (n + 1)

end A142012

/-! ## A142012.P16295444894070686644

`filter[A164131(2*n+1), A010051(#)]`
-/

namespace A142012.P16295444894070686644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164131 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A142012.P16295444894070686644

namespace A142012

/-- `filter[A164131(2*n+1), A010051(#)]` -/
def P16295444894070686644.Spec : Prop :=
  ∀ n, P16295444894070686644.a n = A142012 (n + 1)

end A142012

/-! ## A142012.P13592781778188001530

`A034699(p?[A305075(n+1)-n])`
-/

namespace A142012.P13592781778188001530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305075 (n + 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142012.P13592781778188001530

namespace A142012

/-- `A034699(p?[A305075(n+1)-n])` -/
def P13592781778188001530.Spec : Prop :=
  ∀ n, P13592781778188001530.a n = A142012 (n + 1)

end A142012

/-! ## A142012.P16410019222374229735

`filter[A164131(2*n+1), A323152(#)]`
-/

namespace A142012.P16410019222374229735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164131 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323152 (f1 j).toNat = 1) n)

end

end A142012.P16410019222374229735

namespace A142012

/-- `filter[A164131(2*n+1), A323152(#)]` -/
def P16410019222374229735.Spec : Prop :=
  ∀ n, P16410019222374229735.a n = A142012 (n + 1)

end A142012

/-! ## A142012.P16429059882497651896

`filter[A164131(2*n+1), A323153(#)]`
-/

namespace A142012.P16429059882497651896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164131 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323153 (f1 j).toNat = 1) n)

end

end A142012.P16429059882497651896

namespace A142012

/-- `filter[A164131(2*n+1), A323153(#)]` -/
def P16429059882497651896.Spec : Prop :=
  ∀ n, P16429059882497651896.a n = A142012 (n + 1)

end A142012

/-!
# A142013: Primes congruent to 9 mod 31.

The programs for A142013, the canonical program `A142013.P18424126282494978244` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142013 has offset 1).

The definition of A142013 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2630 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142013.P18424126282494978244

`p?[31*n+9]`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A142013

/-- `p?[31*n+9]` -/
def P18424126282494978244.Spec : Prop :=
  ∀ n, (P18424126282494978244.a n : ℤ) = A142013 (n + 1)

theorem P18424126282494978244.correct : P18424126282494978244.Spec := by
  intro n
  simp only [A142013, Nat.add_sub_cancel]

end A142013

/-! ## A142013.P1082374449602943683

`∩[A164131(n+1)+1, A191024(n+1)]`
-/

namespace A142013.P1082374449602943683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164131 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191024 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142013.P1082374449602943683

namespace A142013

/-- `∩[A164131(n+1)+1, A191024(n+1)]` -/
def P1082374449602943683.Spec : Prop :=
  ∀ n, (P1082374449602943683.a n : ℤ) = A142013 (n + 1)

end A142013

/-! ## A142013.P370471176211287108

`∩[A164131(n+1)+1, A267481(n+1)]`
-/

namespace A142013.P370471176211287108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164131 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267481 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142013.P370471176211287108

namespace A142013

/-- `∩[A164131(n+1)+1, A267481(n+1)]` -/
def P370471176211287108.Spec : Prop :=
  ∀ n, (P370471176211287108.a n : ℤ) = A142013 (n + 1)

end A142013

/-! ## A142013.P1992149940350381917

`A000265(p?[31*n-53])`
-/

namespace A142013.P1992149940350381917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (31 * n : ℤ) - 53

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142013.P1992149940350381917

namespace A142013

/-- `A000265(p?[31*n-53])` -/
def P1992149940350381917.Spec : Prop :=
  ∀ n, P1992149940350381917.a n = A142013 (n + 1)

end A142013

/-! ## A142013.P3722649782858006686

`record[A020639(62*(n+1)+9)]`
-/

namespace A142013.P3722649782858006686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (62 * (n + 1) + 9)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142013.P3722649782858006686

namespace A142013

/-- `record[A020639(62*(n+1)+9)]` -/
def P3722649782858006686.Spec : Prop :=
  ∀ n, P3722649782858006686.a n = A142013 (n + 1)

end A142013

/-! ## A142013.P2563506718320788940

`record[A001414(A157336(n+1)-A005408(n))]`
-/

namespace A142013.P2563506718320788940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A157336 (n + 1) - A005408 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142013.P2563506718320788940

namespace A142013

/-- `record[A001414(A157336(n+1)-A005408(n))]` -/
def P2563506718320788940.Spec : Prop :=
  ∀ n, P2563506718320788940.a n = A142013 (n + 1)

end A142013

/-! ## A142013.P6477111960979006450

`record[A006530(A137506(n+1)+1)]`
-/

namespace A142013.P6477111960979006450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A137506 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142013.P6477111960979006450

namespace A142013

/-- `record[A006530(A137506(n+1)+1)]` -/
def P6477111960979006450.Spec : Prop :=
  ∀ n, P6477111960979006450.a n = A142013 (n + 1)

end A142013

/-!
# A142014: Primes congruent to 10 mod 31.

The programs for A142014, the canonical program `A142014.P10460385428154183684` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142014 has offset 1).

The definition of A142014 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2606 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142014.P10460385428154183684

`p?[31*n+10]`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A142014

/-- `p?[31*n+10]` -/
def P10460385428154183684.Spec : Prop :=
  ∀ n, (P10460385428154183684.a n : ℤ) = A142014 (n + 1)

theorem P10460385428154183684.correct : P10460385428154183684.Spec := by
  intro n
  simp only [A142014, Nat.add_sub_cancel]

end A142014

/-! ## A142014.P14940676047997717602

`A000027(p?[a(n-1)+31])` with `a(0)=10`
-/

namespace A142014.P14940676047997717602
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [10] fun n f1 =>
  f1 (n - 1) + 31

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A142014.P14940676047997717602

namespace A142014

/-- `A000027(p?[a(n-1)+31])` -/
def P14940676047997717602.Spec : Prop :=
  ∀ n, P14940676047997717602.a n = A142014 (n + 1)

end A142014

/-! ## A142014.P15730314926352095837

`∩[A164131(2*n+1)+2, A191024(n+2)]`
-/

namespace A142014.P15730314926352095837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164131 (2 * n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191024 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142014.P15730314926352095837

namespace A142014

/-- `∩[A164131(2*n+1)+2, A191024(n+2)]` -/
def P15730314926352095837.Spec : Prop :=
  ∀ n, (P15730314926352095837.a n : ℤ) = A142014 (n + 1)

end A142014

/-! ## A142014.P14205699988826490534

`record[A006530(31*(n+1)+10)]`
-/

namespace A142014.P14205699988826490534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (31 * (n + 1) + 10)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142014.P14205699988826490534

namespace A142014

/-- `record[A006530(31*(n+1)+10)]` -/
def P14205699988826490534.Spec : Prop :=
  ∀ n, P14205699988826490534.a n = A142014 (n + 1)

end A142014

/-! ## A142014.P2599501150557476746

`record[A020639(31*(n+1)+10)]`
-/

namespace A142014.P2599501150557476746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (31 * (n + 1) + 10)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142014.P2599501150557476746

namespace A142014

/-- `record[A020639(31*(n+1)+10)]` -/
def P2599501150557476746.Spec : Prop :=
  ∀ n, P2599501150557476746.a n = A142014 (n + 1)

end A142014

/-! ## A142014.P11483118156124153535

`A000265(p?[A270296(n+1)+n])`
-/

namespace A142014.P11483118156124153535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270296 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142014.P11483118156124153535

namespace A142014

/-- `A000265(p?[A270296(n+1)+n])` -/
def P11483118156124153535.Spec : Prop :=
  ∀ n, P11483118156124153535.a n = A142014 (n + 1)

end A142014

/-! ## A142014.P13287284976419523656

`∩[A191024(n+1), A310511(n)]`
-/

namespace A142014.P13287284976419523656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191024 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310511 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142014.P13287284976419523656

namespace A142014

/-- `∩[A191024(n+1), A310511(n)]` -/
def P13287284976419523656.Spec : Prop :=
  ∀ n, (P13287284976419523656.a n : ℤ) = A142014 (n + 1)

end A142014

/-!
# A142015: Primes congruent to 11 mod 31.

The programs for A142015, the canonical program `A142015.P17645844078819288955` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142015 has offset 1).

The definition of A142015 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2629 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142015.P17645844078819288955

`p?[62*n+11]`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A142015

/-- `p?[62*n+11]` -/
def P17645844078819288955.Spec : Prop :=
  ∀ n, (P17645844078819288955.a n : ℤ) = A142015 (n + 1)

theorem P17645844078819288955.correct : P17645844078819288955.Spec := by
  intro n
  simp only [A142015, Nat.add_sub_cancel]

end A142015

/-! ## A142015.P6918501571076981082

`or(1, p?[a(n-1)+31])` with `a(0)=11`
-/

namespace A142015.P6918501571076981082
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [11] fun n f1 =>
  f1 (n - 1) + 31

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A142015.P6918501571076981082

namespace A142015

/-- `or(1, p?[a(n-1)+31])` -/
def P6918501571076981082.Spec : Prop :=
  ∀ n, (P6918501571076981082.a n : ℤ) = A142015 (n + 1)

end A142015

/-! ## A142015.P2685529573478838854

`record[∑{p}[62*n+11, #]]`
-/

namespace A142015.P2685529573478838854
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  62 * n + 11

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142015.P2685529573478838854

namespace A142015

/-- `record[∑{p}[62*n+11, #]]` -/
def P2685529573478838854.Spec : Prop :=
  ∀ n, (P2685529573478838854.a n : ℤ) = A142015 (n + 1)

end A142015

/-! ## A142015.P8080250813695537027

`record[A020639(31*n+11)]`
-/

namespace A142015.P8080250813695537027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (31 * n + 11)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142015.P8080250813695537027

namespace A142015

/-- `record[A020639(31*n+11)]` -/
def P8080250813695537027.Spec : Prop :=
  ∀ n, P8080250813695537027.a n = A142015 (n + 1)

end A142015

/-! ## A142015.P3403922415459412978

`record[A008475(62*n+11)]`
-/

namespace A142015.P3403922415459412978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008475 (62 * n + 11)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142015.P3403922415459412978

namespace A142015

/-- `record[A008475(62*n+11)]` -/
def P3403922415459412978.Spec : Prop :=
  ∀ n, P3403922415459412978.a n = A142015 (n + 1)

end A142015

/-! ## A142015.P4594875508195448742

`record[A006530(A241406(2*n+1)+n)]`
-/

namespace A142015.P4594875508195448742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A241406 (2 * n + 1) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142015.P4594875508195448742

namespace A142015

/-- `record[A006530(A241406(2*n+1)+n)]` -/
def P4594875508195448742.Spec : Prop :=
  ∀ n, P4594875508195448742.a n = A142015 (n + 1)

end A142015

/-! ## A142015.P14314300310042370410

`record[A006530(10*A016921(n)+2*n+1)]`
-/

namespace A142015.P14314300310042370410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (10 * A016921 n + (2 * n + 1 : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142015.P14314300310042370410

namespace A142015

/-- `record[A006530(10*A016921(n)+2*n+1)]` -/
def P14314300310042370410.Spec : Prop :=
  ∀ n, P14314300310042370410.a n = A142015 (n + 1)

end A142015

/-! ## A142015.P1007945206237493683

`record[A006530(A008592(3*(n%2+n)+1)+n+1)]`
-/

namespace A142015.P1007945206237493683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A008592 (3 * (n % 2 + n) + 1) + (n : ℤ) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142015.P1007945206237493683

namespace A142015

/-- `record[A006530(A008592(3*(n%2+n)+1)+n+1)]` -/
def P1007945206237493683.Spec : Prop :=
  ∀ n, P1007945206237493683.a n = A142015 (n + 1)

end A142015

/-! ## A142015.P6265450619311648270

`A000265(p?[A139611(n)+A008588(n)+n])`
-/

namespace A142015.P6265450619311648270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139611 n + A008588 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142015.P6265450619311648270

namespace A142015

/-- `A000265(p?[A139611(n)+A008588(n)+n])` -/
def P6265450619311648270.Spec : Prop :=
  ∀ n, P6265450619311648270.a n = A142015 (n + 1)

end A142015

/-! ## A142015.P1518731177524153097

`∩[A191067(n+1), A315498(n)]`
-/

namespace A142015.P1518731177524153097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191067 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315498 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142015.P1518731177524153097

namespace A142015

/-- `∩[A191067(n+1), A315498(n)]` -/
def P1518731177524153097.Spec : Prop :=
  ∀ n, (P1518731177524153097.a n : ℤ) = A142015 (n + 1)

end A142015

/-!
# A142016: Primes congruent to 12 mod 31.

The programs for A142016, the canonical program `A142016.P7732691917348421130` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142016 has offset 1).

The definition of A142016 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2627 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142016.P7732691917348421130

`p?[31*n+12]`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A142016

/-- `p?[31*n+12]` -/
def P7732691917348421130.Spec : Prop :=
  ∀ n, (P7732691917348421130.a n : ℤ) = A142016 (n + 1)

theorem P7732691917348421130.correct : P7732691917348421130.Spec := by
  intro n
  simp only [A142016, Nat.add_sub_cancel]

end A142016

/-! ## A142016.P3423426641031788333

`record[A001414(A082369(n+2)+n)]`
-/

namespace A142016.P3423426641031788333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A082369 (n + 2) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142016.P3423426641031788333

namespace A142016

/-- `record[A001414(A082369(n+2)+n)]` -/
def P3423426641031788333.Spec : Prop :=
  ∀ n, P3423426641031788333.a n = A142016 (n + 1)

end A142016

/-! ## A142016.P12682487389579773474

`record[A006530(A082369(n+2)+n)]`
-/

namespace A142016.P12682487389579773474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A082369 (n + 2) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142016.P12682487389579773474

namespace A142016

/-- `record[A006530(A082369(n+2)+n)]` -/
def P12682487389579773474.Spec : Prop :=
  ∀ n, P12682487389579773474.a n = A142016 (n + 1)

end A142016

/-! ## A142016.P15911397648870075745

`record[A020639(A082369(n+2)+n)]`
-/

namespace A142016.P15911397648870075745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A082369 (n + 2) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142016.P15911397648870075745

namespace A142016

/-- `record[A020639(A082369(n+2)+n)]` -/
def P15911397648870075745.Spec : Prop :=
  ∀ n, P15911397648870075745.a n = A142016 (n + 1)

end A142016

/-! ## A142016.P6551680132625603719

`record[A008475(A017305(3*n+4)+n)]`
-/

namespace A142016.P6551680132625603719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008475 (A017305 (3 * n + 4) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142016.P6551680132625603719

namespace A142016

/-- `record[A008475(A017305(3*n+4)+n)]` -/
def P6551680132625603719.Spec : Prop :=
  ∀ n, P6551680132625603719.a n = A142016 (n + 1)

end A142016

/-! ## A142016.P9396146760062259655

`record[A006530(A017293(3*n+4)+n+1)]`
-/

namespace A142016.P9396146760062259655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A017293 (3 * n + 4) + (n : ℤ) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142016.P9396146760062259655

namespace A142016

/-- `record[A006530(A017293(3*n+4)+n+1)]` -/
def P9396146760062259655.Spec : Prop :=
  ∀ n, P9396146760062259655.a n = A142016 (n + 1)

end A142016

/-! ## A142016.P3586993034933114102

`record[A006530(5*(A016777(n)+1)+A004768(2*n+3))]`
-/

namespace A142016.P3586993034933114102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (5 * (A016777 n + 1) + A004768 (2 * n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142016.P3586993034933114102

namespace A142016

/-- `record[A006530(5*(A016777(n)+1)+A004768(2*n+3))]` -/
def P3586993034933114102.Spec : Prop :=
  ∀ n, P3586993034933114102.a n = A142016 (n + 1)

end A142016

/-!
# A142017: Primes congruent to 13 mod 31.

The programs for A142017, the canonical program `A142017.P11625030124948837998` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142017 has offset 1).

The definition of A142017 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2625 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142017.P11625030124948837998

`p?[31*n+13]`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A142017

/-- `p?[31*n+13]` -/
def P11625030124948837998.Spec : Prop :=
  ∀ n, (P11625030124948837998.a n : ℤ) = A142017 (n + 1)

theorem P11625030124948837998.correct : P11625030124948837998.Spec := by
  intro n
  simp only [A142017, Nat.add_sub_cancel]

end A142017

/-! ## A142017.P15564552891257396853

`∏{d}[p?[31*n-18], #]`
-/

namespace A142017.P15564552891257396853
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (31 * n : ℤ) - 18

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A142017.P15564552891257396853

namespace A142017

/-- `∏{d}[p?[31*n-18], #]` -/
def P15564552891257396853.Spec : Prop :=
  ∀ n, (P15564552891257396853.a n : ℤ) = A142017 (n + 1)

end A142017

/-! ## A142017.P2177349170903075029

`p?[31*n-18]%ceil(p?[31*n-18]/(tanh(1)-1))`
-/

namespace A142017.P2177349170903075029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (31 * n : ℤ) - 18

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (31 * n : ℤ) - 18

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) ⌈(f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) : ℝ) / (Real.tanh (1 : ℝ) - 1)⌉

end

end A142017.P2177349170903075029

namespace A142017

/-- `p?[31*n-18]%ceil(p?[31*n-18]/(tanh(1)-1))` -/
def P2177349170903075029.Spec : Prop :=
  ∀ n, P2177349170903075029.a n = A142017 (n + 1)

end A142017

/-! ## A142017.P8966814279482908153

`floor(sqrt(A010684(n)))*p?[31*n-18]`
-/

namespace A142017.P8966814279482908153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (31 * n : ℤ) - 18

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A010684 n) * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142017.P8966814279482908153

namespace A142017

/-- `floor(sqrt(A010684(n)))*p?[31*n-18]` -/
def P8966814279482908153.Spec : Prop :=
  ∀ n, P8966814279482908153.a n = A142017 (n + 1)

end A142017

/-! ## A142017.P2724794335074551362

`p?[31*n-18]-and(2, A002061(n)%3)`
-/

namespace A142017.P2724794335074551362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (31 * n : ℤ) - 18

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - Int.land 2 (Int.tmod (A002061 n) 3)

end

end A142017.P2724794335074551362

namespace A142017

/-- `p?[31*n-18]-and(2, A002061(n)%3)` -/
def P2724794335074551362.Spec : Prop :=
  ∀ n, P2724794335074551362.a n = A142017 (n + 1)

end A142017

/-! ## A142017.P9441996853884398726

`gcd(2, ∑[2^n])*p?[31*n-18]`
-/

namespace A142017.P9441996853884398726
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (31 * n : ℤ) - 18

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 2 (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ) * f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

end

end A142017.P9441996853884398726

namespace A142017

/-- `gcd(2, ∑[2^n])*p?[31*n-18]` -/
def P9441996853884398726.Spec : Prop :=
  ∀ n, P9441996853884398726.a n = A142017 (n + 1)

end A142017

/-! ## A142017.P11519505727109861516

`record[A020639(3*(10*n+4)+1+n)]`
-/

namespace A142017.P11519505727109861516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (3 * (10 * n + 4) + 1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142017.P11519505727109861516

namespace A142017

/-- `record[A020639(3*(10*n+4)+1+n)]` -/
def P11519505727109861516.Spec : Prop :=
  ∀ n, P11519505727109861516.a n = A142017 (n + 1)

end A142017

/-! ## A142017.P9297194935910778614

`∩[A248474(2*n+1)+n, A000040(n+2)]`
-/

namespace A142017.P9297194935910778614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248474 (2 * n + 1) + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142017.P9297194935910778614

namespace A142017

/-- `∩[A248474(2*n+1)+n, A000040(n+2)]` -/
def P9297194935910778614.Spec : Prop :=
  ∀ n, (P9297194935910778614.a n : ℤ) = A142017 (n + 1)

end A142017

/-! ## A142017.P17509170042572274802

`∩[A248474(2*n+1)+n, A006005(n+2)]`
-/

namespace A142017.P17509170042572274802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248474 (2 * n + 1) + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142017.P17509170042572274802

namespace A142017

/-- `∩[A248474(2*n+1)+n, A006005(n+2)]` -/
def P17509170042572274802.Spec : Prop :=
  ∀ n, (P17509170042572274802.a n : ℤ) = A142017 (n + 1)

end A142017

/-! ## A142017.P11993378950793442429

`∩[A248474(2*n+1)+n, A000430(n+2)]`
-/

namespace A142017.P11993378950793442429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248474 (2 * n + 1) + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000430 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142017.P11993378950793442429

namespace A142017

/-- `∩[A248474(2*n+1)+n, A000430(n+2)]` -/
def P11993378950793442429.Spec : Prop :=
  ∀ n, (P11993378950793442429.a n : ℤ) = A142017 (n + 1)

end A142017

/-!
# A142018: Primes congruent to 14 mod 31.

The programs for A142018, the canonical program `A142018.P9161494494111257867` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142018 has offset 1).

The definition of A142018 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2597 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142018.P9161494494111257867

`p?[31*n-48]`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A142018

/-- `p?[31*n-48]` -/
def P9161494494111257867.Spec : Prop :=
  ∀ n, P9161494494111257867.a n = A142018 (n + 1)

theorem P9161494494111257867.correct : P9161494494111257867.Spec := by
  intro n
  simp only [A142018, Nat.add_sub_cancel]

end A142018

/-! ## A142018.P8473482381154089903

`or(1, p?[31*n+14])`
-/

namespace A142018.P8473482381154089903
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  31 * n + 14

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A142018.P8473482381154089903

namespace A142018

/-- `or(1, p?[31*n+14])` -/
def P8473482381154089903.Spec : Prop :=
  ∀ n, (P8473482381154089903.a n : ℤ) = A142018 (n + 1)

end A142018

/-! ## A142018.P4679664643235959285

`A000027(p?[A082369(n+1)+n+1])`
-/

namespace A142018.P4679664643235959285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082369 (n + 1) + (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142018.P4679664643235959285

namespace A142018

/-- `A000027(p?[A082369(n+1)+n+1])` -/
def P4679664643235959285.Spec : Prop :=
  ∀ n, P4679664643235959285.a n = A142018 (n + 1)

end A142018

/-! ## A142018.P714876482137154627

`A000027(p?[A154266(n)+A016825(n)])`
-/

namespace A142018.P714876482137154627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154266 n + A016825 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142018.P714876482137154627

namespace A142018

/-- `A000027(p?[A154266(n)+A016825(n)])` -/
def P714876482137154627.Spec : Prop :=
  ∀ n, P714876482137154627.a n = A142018 (n + 1)

end A142018

/-! ## A142018.P1696801646572681472

`A007947(p?[A257645(2*n)+n])`
-/

namespace A142018.P1696801646572681472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257645 (2 * n) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142018.P1696801646572681472

namespace A142018

/-- `A007947(p?[A257645(2*n)+n])` -/
def P1696801646572681472.Spec : Prop :=
  ∀ n, P1696801646572681472.a n = A142018 (n + 1)

end A142018

/-! ## A142018.P6474541891810042548

`A007947(p?[A139607(n)+A017353(n)])`
-/

namespace A142018.P6474541891810042548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139607 n + A017353 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142018.P6474541891810042548

namespace A142018

/-- `A007947(p?[A139607(n)+A017353(n)])` -/
def P6474541891810042548.Spec : Prop :=
  ∀ n, P6474541891810042548.a n = A142018 (n + 1)

end A142018

/-! ## A142018.P17540230594751323977

`A000265(p?[A154266(n)+A016825(n)])`
-/

namespace A142018.P17540230594751323977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154266 n + A016825 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142018.P17540230594751323977

namespace A142018

/-- `A000265(p?[A154266(n)+A016825(n)])` -/
def P17540230594751323977.Spec : Prop :=
  ∀ n, P17540230594751323977.a n = A142018 (n + 1)

end A142018

/-! ## A142018.P16305967890055127511

`A007947(p?[A154266(n)+A016825(n)])`
-/

namespace A142018.P16305967890055127511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154266 n + A016825 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142018.P16305967890055127511

namespace A142018

/-- `A007947(p?[A154266(n)+A016825(n)])` -/
def P16305967890055127511.Spec : Prop :=
  ∀ n, P16305967890055127511.a n = A142018 (n + 1)

end A142018

/-! ## A142018.P15580315458184550481

`∩[A191024(n+1), A315692(n)]`
-/

namespace A142018.P15580315458184550481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191024 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315692 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142018.P15580315458184550481

namespace A142018

/-- `∩[A191024(n+1), A315692(n)]` -/
def P15580315458184550481.Spec : Prop :=
  ∀ n, (P15580315458184550481.a n : ℤ) = A142018 (n + 1)

end A142018

/-!
# A142019: Primes congruent to 15 mod 31.

The programs for A142019, the canonical program `A142019.P6462402050578494635` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142019 has offset 1).

The definition of A142019 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2624 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142019.P6462402050578494635

`p?[31*n+77]`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A142019

/-- `p?[31*n+77]` -/
def P6462402050578494635.Spec : Prop :=
  ∀ n, (P6462402050578494635.a n : ℤ) = A142019 (n + 1)

theorem P6462402050578494635.correct : P6462402050578494635.Spec := by
  intro n
  simp only [A142019, Nat.add_sub_cancel]

end A142019

/-! ## A142019.P6771140176628300335

`A000027(p?[A135631(n)-16])`
-/

namespace A142019.P6771140176628300335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135631 n - 16

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142019.P6771140176628300335

namespace A142019

/-- `A000027(p?[A135631(n)-16])` -/
def P6771140176628300335.Spec : Prop :=
  ∀ n, P6771140176628300335.a n = A142019 (n + 1)

end A142019

/-! ## A142019.P10457763941867983762

`A000027(p?[A082369(n+1)+n+2])`
-/

namespace A142019.P10457763941867983762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082369 (n + 1) + (n + 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142019.P10457763941867983762

namespace A142019

/-- `A000027(p?[A082369(n+1)+n+2])` -/
def P10457763941867983762.Spec : Prop :=
  ∀ n, P10457763941867983762.a n = A142019 (n + 1)

end A142019

/-! ## A142019.P16679616488609879237

`A000027(p?[A139607(n)+A017365(n)])`
-/

namespace A142019.P16679616488609879237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139607 n + A017365 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142019.P16679616488609879237

namespace A142019

/-- `A000027(p?[A139607(n)+A017365(n)])` -/
def P16679616488609879237.Spec : Prop :=
  ∀ n, P16679616488609879237.a n = A142019 (n + 1)

end A142019

/-! ## A142019.P10887672439314939302

`A000265(p?[A135631(n)-78])`
-/

namespace A142019.P10887672439314939302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135631 n - 78

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142019.P10887672439314939302

namespace A142019

/-- `A000265(p?[A135631(n)-78])` -/
def P10887672439314939302.Spec : Prop :=
  ∀ n, P10887672439314939302.a n = A142019 (n + 1)

end A142019

/-! ## A142019.P3860148564775039684

`A000265(p?[A082369(n+1)+n+2])`
-/

namespace A142019.P3860148564775039684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082369 (n + 1) + (n + 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142019.P3860148564775039684

namespace A142019

/-- `A000265(p?[A082369(n+1)+n+2])` -/
def P3860148564775039684.Spec : Prop :=
  ∀ n, P3860148564775039684.a n = A142019 (n + 1)

end A142019

/-! ## A142019.P7315605612740303537

`A000265(p?[A125169(n)+A008597(n)])`
-/

namespace A142019.P7315605612740303537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125169 n + A008597 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142019.P7315605612740303537

namespace A142019

/-- `A000265(p?[A125169(n)+A008597(n)])` -/
def P7315605612740303537.Spec : Prop :=
  ∀ n, P7315605612740303537.a n = A142019 (n + 1)

end A142019

/-! ## A142019.P17284546636560909579

`A000265(p?[A139611(n)+A017029(n)])`
-/

namespace A142019.P17284546636560909579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139611 n + A017029 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142019.P17284546636560909579

namespace A142019

/-- `A000265(p?[A139611(n)+A017029(n)])` -/
def P17284546636560909579.Spec : Prop :=
  ∀ n, P17284546636560909579.a n = A142019 (n + 1)

end A142019

/-! ## A142019.P9028649846031511757

`∩[A164131(2*(n+1))-A164131(n+2), A191067(n+2)]`
-/

namespace A142019.P9028649846031511757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164131 (2 * (n + 1)) - A164131 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191067 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142019.P9028649846031511757

namespace A142019

/-- `∩[A164131(2*(n+1))-A164131(n+2), A191067(n+2)]` -/
def P9028649846031511757.Spec : Prop :=
  ∀ n, (P9028649846031511757.a n : ℤ) = A142019 (n + 1)

end A142019

/-!
# A142020: Primes congruent to 16 mod 31.

The programs for A142020, the canonical program `A142020.P16586427795945706816` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142020 has offset 1).

The definition of A142020 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2616 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142020.P16586427795945706816

`p?[a(n-1)+31]` with `a(0)=16`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A142020

/-- `p?[a(n-1)+31]` -/
def P16586427795945706816.Spec : Prop :=
  ∀ n, (P16586427795945706816.a n : ℤ) = A142020 (n + 1)

theorem P16586427795945706816.correct : P16586427795945706816.Spec := by
  intro n
  simp only [A142020, Nat.add_sub_cancel]

end A142020

/-! ## A142020.P5680632721325472440

`p?[30*n-15+n]`
-/

namespace A142020.P5680632721325472440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (30 * n : ℤ) - 15 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142020.P5680632721325472440

namespace A142020

/-- `p?[30*n-15+n]` -/
def P5680632721325472440.Spec : Prop :=
  ∀ n, P5680632721325472440.a n = A142020 (n + 1)

end A142020

/-! ## A142020.P8380221559899909019

`or(1, p?[A128468(n+1)+n])`
-/

namespace A142020.P8380221559899909019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128468 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A142020.P8380221559899909019

namespace A142020

/-- `or(1, p?[A128468(n+1)+n])` -/
def P8380221559899909019.Spec : Prop :=
  ∀ n, P8380221559899909019.a n = A142020 (n + 1)

end A142020

/-! ## A142020.P2813371975109253981

`record[A006530(A128468(n+1)+n)]`
-/

namespace A142020.P2813371975109253981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A128468 (n + 1) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142020.P2813371975109253981

namespace A142020

/-- `record[A006530(A128468(n+1)+n)]` -/
def P2813371975109253981.Spec : Prop :=
  ∀ n, P2813371975109253981.a n = A142020 (n + 1)

end A142020

/-! ## A142020.P5178159566094542700

`record[A020639(A128468(n+1)+n)]`
-/

namespace A142020.P5178159566094542700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A128468 (n + 1) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142020.P5178159566094542700

namespace A142020

/-- `record[A020639(A128468(n+1)+n)]` -/
def P5178159566094542700.Spec : Prop :=
  ∀ n, P5178159566094542700.a n = A142020 (n + 1)

end A142020

/-! ## A142020.P1092500677408511636

`record[A006530(A125169(2*(n+1))-n)]`
-/

namespace A142020.P1092500677408511636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A125169 (2 * (n + 1)) - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142020.P1092500677408511636

namespace A142020

/-- `record[A006530(A125169(2*(n+1))-n)]` -/
def P1092500677408511636.Spec : Prop :=
  ∀ n, P1092500677408511636.a n = A142020 (n + 1)

end A142020

/-! ## A142020.P6373447931803078878

`A000265(p?[A154266(n)+4*(n+1)])`
-/

namespace A142020.P6373447931803078878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154266 n + (4 * (n + 1) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142020.P6373447931803078878

namespace A142020

/-- `A000265(p?[A154266(n)+4*(n+1)])` -/
def P6373447931803078878.Spec : Prop :=
  ∀ n, P6373447931803078878.a n = A142020 (n + 1)

end A142020

/-! ## A142020.P18402094902279603416

`record[A020639(4*A017113(n+1)-(n+1))]`
-/

namespace A142020.P18402094902279603416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (4 * A017113 (n + 1) - (n + 1 : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142020.P18402094902279603416

namespace A142020

/-- `record[A020639(4*A017113(n+1)-(n+1))]` -/
def P18402094902279603416.Spec : Prop :=
  ∀ n, P18402094902279603416.a n = A142020 (n + 1)

end A142020

/-! ## A142020.P11171095324820904140

`∩[A164131(2*n+1)-A164131(n+2), A191024(n+2)]`
-/

namespace A142020.P11171095324820904140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164131 (2 * n + 1) - A164131 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191024 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142020.P11171095324820904140

namespace A142020

/-- `∩[A164131(2*n+1)-A164131(n+2), A191024(n+2)]` -/
def P11171095324820904140.Spec : Prop :=
  ∀ n, (P11171095324820904140.a n : ℤ) = A142020 (n + 1)

end A142020

/-! ## A142020.P4346753362486576152

`record[A006530(31*(2*n+3)+1)]`
-/

namespace A142020.P4346753362486576152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (31 * (2 * n + 3) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142020.P4346753362486576152

namespace A142020

/-- `record[A006530(31*(2*n+3)+1)]` -/
def P4346753362486576152.Spec : Prop :=
  ∀ n, P4346753362486576152.a n = A142020 (n + 1)

end A142020

/-!
# A142021: Primes congruent to 17 mod 31.

The programs for A142021, the canonical program `A142021.P15168188517911633826` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142021 has offset 1).

The definition of A142021 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2623 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142021.P15168188517911633826

`p?[31*n+17]`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A142021

/-- `p?[31*n+17]` -/
def P15168188517911633826.Spec : Prop :=
  ∀ n, (P15168188517911633826.a n : ℤ) = A142021 (n + 1)

theorem P15168188517911633826.correct : P15168188517911633826.Spec := by
  intro n
  simp only [A142021, Nat.add_sub_cancel]

end A142021

/-! ## A142021.P6863305390495888197

`or(1, p?[31*n-14])`
-/

namespace A142021.P6863305390495888197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (31 * n : ℤ) - 14

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A142021.P6863305390495888197

namespace A142021

/-- `or(1, p?[31*n-14])` -/
def P6863305390495888197.Spec : Prop :=
  ∀ n, P6863305390495888197.a n = A142021 (n + 1)

end A142021

/-! ## A142021.P11593547493546652244

`record[A020639(A128468(n)+n)]`
-/

namespace A142021.P11593547493546652244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A128468 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142021.P11593547493546652244

namespace A142021

/-- `record[A020639(A128468(n)+n)]` -/
def P11593547493546652244.Spec : Prop :=
  ∀ n, P11593547493546652244.a n = A142021 (n + 1)

end A142021

/-! ## A142021.P6396499661163797773

`record[A020639(A063118(2*(n+1))+n)]`
-/

namespace A142021.P6396499661163797773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A063118 (2 * (n + 1)) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142021.P6396499661163797773

namespace A142021

/-- `record[A020639(A063118(2*(n+1))+n)]` -/
def P6396499661163797773.Spec : Prop :=
  ∀ n, P6396499661163797773.a n = A142021 (n + 1)

end A142021

/-! ## A142021.P12856706965859646790

`record[A020639(A248474(2*(n+1))+n)]`
-/

namespace A142021.P12856706965859646790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A248474 (2 * (n + 1)) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142021.P12856706965859646790

namespace A142021

/-- `record[A020639(A248474(2*(n+1))+n)]` -/
def P12856706965859646790.Spec : Prop :=
  ∀ n, P12856706965859646790.a n = A142021 (n + 1)

end A142021

/-! ## A142021.P10733429581287892445

`record[A020639(A142241(n)+A017017(n))]`
-/

namespace A142021.P10733429581287892445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A142241 n + A017017 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142021.P10733429581287892445

namespace A142021

/-- `record[A020639(A142241(n)+A017017(n))]` -/
def P10733429581287892445.Spec : Prop :=
  ∀ n, P10733429581287892445.a n = A142021 (n + 1)

end A142021

/-! ## A142021.P6517775325471129526

`record[A020639(A154267(n)+A016825(n))]`
-/

namespace A142021.P6517775325471129526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A154267 n + A016825 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142021.P6517775325471129526

namespace A142021

/-- `record[A020639(A154267(n)+A016825(n))]` -/
def P6517775325471129526.Spec : Prop :=
  ∀ n, P6517775325471129526.a n = A142021 (n + 1)

end A142021

/-! ## A142021.P14675674818972167401

`A007913(p?[A142241(n)+A017017(n)])`
-/

namespace A142021.P14675674818972167401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142241 n + A017017 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142021.P14675674818972167401

namespace A142021

/-- `A007913(p?[A142241(n)+A017017(n)])` -/
def P14675674818972167401.Spec : Prop :=
  ∀ n, P14675674818972167401.a n = A142021 (n + 1)

end A142021

/-! ## A142021.P7776561237803767739

`record[A020639(A304157(n+1)-A269044(n))]`
-/

namespace A142021.P7776561237803767739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A304157 (n + 1) - A269044 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142021.P7776561237803767739

namespace A142021

/-- `record[A020639(A304157(n+1)-A269044(n))]` -/
def P7776561237803767739.Spec : Prop :=
  ∀ n, P7776561237803767739.a n = A142021 (n + 1)

end A142021

/-! ## A142021.P11001122248131485483

`record[A020639(A022288(n+1)+2-A022288(n))]`
-/

namespace A142021.P11001122248131485483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A022288 (n + 1) + (2 - A022288 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142021.P11001122248131485483

namespace A142021

/-- `record[A020639(A022288(n+1)+2-A022288(n))]` -/
def P11001122248131485483.Spec : Prop :=
  ∀ n, P11001122248131485483.a n = A142021 (n + 1)

end A142021

/-! ## A142021.P1826055383807443426

`record[A020639(A204675(n+1)-(A204675(n)+1+n))]`
-/

namespace A142021.P1826055383807443426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A204675 (n + 1) - (A204675 n + 1 + (n : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142021.P1826055383807443426

namespace A142021

/-- `record[A020639(A204675(n+1)-(A204675(n)+1+n))]` -/
def P1826055383807443426.Spec : Prop :=
  ∀ n, P1826055383807443426.a n = A142021 (n + 1)

end A142021

/-! ## A142021.P2246275664413571565

`∩[A063118(2*(n+1))+n, A000040(n+2)]`
-/

namespace A142021.P2246275664413571565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063118 (2 * (n + 1)) + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142021.P2246275664413571565

namespace A142021

/-- `∩[A063118(2*(n+1))+n, A000040(n+2)]` -/
def P2246275664413571565.Spec : Prop :=
  ∀ n, (P2246275664413571565.a n : ℤ) = A142021 (n + 1)

end A142021

/-! ## A142021.P61062781560879773

`∩[A063118(2*(n+1))+n, A008578(n+2)]`
-/

namespace A142021.P61062781560879773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063118 (2 * (n + 1)) + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142021.P61062781560879773

namespace A142021

/-- `∩[A063118(2*(n+1))+n, A008578(n+2)]` -/
def P61062781560879773.Spec : Prop :=
  ∀ n, (P61062781560879773.a n : ℤ) = A142021 (n + 1)

end A142021

/-! ## A142021.P11891744191369209976

`∩[A063118(2*(n+1))+n, A045319(n+2)]`
-/

namespace A142021.P11891744191369209976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063118 (2 * (n + 1)) + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142021.P11891744191369209976

namespace A142021

/-- `∩[A063118(2*(n+1))+n, A045319(n+2)]` -/
def P11891744191369209976.Spec : Prop :=
  ∀ n, (P11891744191369209976.a n : ℤ) = A142021 (n + 1)

end A142021

/-! ## A142021.P6435527043371335252

`∩[A063118(2*(n+1))+n, A045344(n+2)]`
-/

namespace A142021.P6435527043371335252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063118 (2 * (n + 1)) + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142021.P6435527043371335252

namespace A142021

/-- `∩[A063118(2*(n+1))+n, A045344(n+2)]` -/
def P6435527043371335252.Spec : Prop :=
  ∀ n, (P6435527043371335252.a n : ℤ) = A142021 (n + 1)

end A142021

/-! ## A142021.P5163559147929082151

`∩[A248474(2*(n+1))+n, A000040(n+2)]`
-/

namespace A142021.P5163559147929082151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248474 (2 * (n + 1)) + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142021.P5163559147929082151

namespace A142021

/-- `∩[A248474(2*(n+1))+n, A000040(n+2)]` -/
def P5163559147929082151.Spec : Prop :=
  ∀ n, (P5163559147929082151.a n : ℤ) = A142021 (n + 1)

end A142021

/-! ## A142021.P7704763105310775941

`∩[A248474(2*(n+1))+n, A006005(n+2)]`
-/

namespace A142021.P7704763105310775941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248474 (2 * (n + 1)) + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142021.P7704763105310775941

namespace A142021

/-- `∩[A248474(2*(n+1))+n, A006005(n+2)]` -/
def P7704763105310775941.Spec : Prop :=
  ∀ n, (P7704763105310775941.a n : ℤ) = A142021 (n + 1)

end A142021

/-! ## A142021.P561154410671673291

`∩[A063118(2*(n+1))+n, A015919(n+2)]`
-/

namespace A142021.P561154410671673291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063118 (2 * (n + 1)) + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015919 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142021.P561154410671673291

namespace A142021

/-- `∩[A063118(2*(n+1))+n, A015919(n+2)]` -/
def P561154410671673291.Spec : Prop :=
  ∀ n, (P561154410671673291.a n : ℤ) = A142021 (n + 1)

end A142021

/-! ## A142021.P6197447257287457923

`∩[A248474(2*(n+1))+n, A000430(n+2)]`
-/

namespace A142021.P6197447257287457923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248474 (2 * (n + 1)) + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000430 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142021.P6197447257287457923

namespace A142021

/-- `∩[A248474(2*(n+1))+n, A000430(n+2)]` -/
def P6197447257287457923.Spec : Prop :=
  ∀ n, (P6197447257287457923.a n : ℤ) = A142021 (n + 1)

end A142021

/-!
# A142022: Primes congruent to 18 mod 31.

The programs for A142022, the canonical program `A142022.P10416321363538169702` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142022 has offset 1).

The definition of A142022 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2596 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142022.P10416321363538169702

`p?[31*n-13]`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A142022

/-- `p?[31*n-13]` -/
def P10416321363538169702.Spec : Prop :=
  ∀ n, P10416321363538169702.a n = A142022 (n + 1)

theorem P10416321363538169702.correct : P10416321363538169702.Spec := by
  intro n
  simp only [A142022, Nat.add_sub_cancel]

end A142022

/-! ## A142022.P14321767770976782657

`or(1, p?[31*(n+1)+49])`
-/

namespace A142022.P14321767770976782657
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  31 * (n + 1) + 49

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A142022.P14321767770976782657

namespace A142022

/-- `or(1, p?[31*(n+1)+49])` -/
def P14321767770976782657.Spec : Prop :=
  ∀ n, (P14321767770976782657.a n : ℤ) = A142022 (n + 1)

end A142022

/-! ## A142022.P11517783759115631622

`∏{d}[p?[31*(n+1)+49], #]`
-/

namespace A142022.P11517783759115631622
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  31 * (n + 1) + 49

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), d

end

end A142022.P11517783759115631622

namespace A142022

/-- `∏{d}[p?[31*(n+1)+49], #]` -/
def P11517783759115631622.Spec : Prop :=
  ∀ n, (P11517783759115631622.a n : ℤ) = A142022 (n + 1)

end A142022

/-! ## A142022.P10092287376019202612

`A000027(p?[A135631(n)+18])`
-/

namespace A142022.P10092287376019202612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135631 n + 18

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142022.P10092287376019202612

namespace A142022

/-- `A000027(p?[A135631(n)+18])` -/
def P10092287376019202612.Spec : Prop :=
  ∀ n, P10092287376019202612.a n = A142022 (n + 1)

end A142022

/-! ## A142022.P12848249744450876160

`A000027(p?[A128468(n)+1+n])`
-/

namespace A142022.P12848249744450876160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128468 n + 1 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142022.P12848249744450876160

namespace A142022

/-- `A000027(p?[A128468(n)+1+n])` -/
def P12848249744450876160.Spec : Prop :=
  ∀ n, P12848249744450876160.a n = A142022 (n + 1)

end A142022

/-! ## A142022.P10939740815226186581

`A000027(p?[A142241(n)+A017029(n)])`
-/

namespace A142022.P10939740815226186581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142241 n + A017029 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142022.P10939740815226186581

namespace A142022

/-- `A000027(p?[A142241(n)+A017029(n)])` -/
def P10939740815226186581.Spec : Prop :=
  ∀ n, P10939740815226186581.a n = A142022 (n + 1)

end A142022

/-! ## A142022.P13092782311796451500

`∑{p}[p?[A267984(2*n+1)+n+1], #]`
-/

namespace A142022.P13092782311796451500
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267984 (2 * n + 1) + (n + 1 : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A142022.P13092782311796451500

namespace A142022

/-- `∑{p}[p?[A267984(2*n+1)+n+1], #]` -/
def P13092782311796451500.Spec : Prop :=
  ∀ n, (P13092782311796451500.a n : ℤ) = A142022 (n + 1)

end A142022

/-! ## A142022.P13741867644594022332

`A000265(p?[A128468(n)+1+n])`
-/

namespace A142022.P13741867644594022332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128468 n + 1 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142022.P13741867644594022332

namespace A142022

/-- `A000265(p?[A128468(n)+1+n])` -/
def P13741867644594022332.Spec : Prop :=
  ∀ n, P13741867644594022332.a n = A142022 (n + 1)

end A142022

/-! ## A142022.P13108737578161460372

`A007913(p?[A063118(2*(n+1))+n+1])`
-/

namespace A142022.P13108737578161460372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063118 (2 * (n + 1)) + (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142022.P13108737578161460372

namespace A142022

/-- `A007913(p?[A063118(2*(n+1))+n+1])` -/
def P13108737578161460372.Spec : Prop :=
  ∀ n, P13108737578161460372.a n = A142022 (n + 1)

end A142022

/-!
# A142023: Primes congruent to 19 mod 31.

The programs for A142023, the canonical program `A142023.P14274148652728911942` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142023 has offset 1).

The definition of A142023 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2612 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142023.P14274148652728911942

`p?[31*n-12]`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A142023

/-- `p?[31*n-12]` -/
def P14274148652728911942.Spec : Prop :=
  ∀ n, P14274148652728911942.a n = A142023 (n + 1)

theorem P14274148652728911942.correct : P14274148652728911942.Spec := by
  intro n
  simp only [A142023, Nat.add_sub_cancel]

end A142023

/-! ## A142023.P8890728006867492495

`A000027(p?[A144619(n)+A017653(n)])`
-/

namespace A142023.P8890728006867492495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144619 n + A017653 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142023.P8890728006867492495

namespace A142023

/-- `A000027(p?[A144619(n)+A017653(n)])` -/
def P8890728006867492495.Spec : Prop :=
  ∀ n, P8890728006867492495.a n = A142023 (n + 1)

end A142023

/-! ## A142023.P18349636925541872912

`A000027(p?[A255413(2*(n+1))+n])`
-/

namespace A142023.P18349636925541872912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255413 (2 * (n + 1)) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142023.P18349636925541872912

namespace A142023

/-- `A000027(p?[A255413(2*(n+1))+n])` -/
def P18349636925541872912.Spec : Prop :=
  ∀ n, P18349636925541872912.a n = A142023 (n + 1)

end A142023

/-! ## A142023.P5493166603418441874

`record[A020639(A156376(n)+n)]`
-/

namespace A142023.P5493166603418441874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A156376 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142023.P5493166603418441874

namespace A142023

/-- `record[A020639(A156376(n)+n)]` -/
def P5493166603418441874.Spec : Prop :=
  ∀ n, P5493166603418441874.a n = A142023 (n + 1)

end A142023

/-! ## A142023.P625489190333258909

`record[A020639(A272100(2*(n+1))-n)]`
-/

namespace A142023.P625489190333258909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A272100 (2 * (n + 1)) - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142023.P625489190333258909

namespace A142023

/-- `record[A020639(A272100(2*(n+1))-n)]` -/
def P625489190333258909.Spec : Prop :=
  ∀ n, P625489190333258909.a n = A142023 (n + 1)

end A142023

/-! ## A142023.P6502172561041940675

`A007913(p?[A063118(2*(n+1))+n+2])`
-/

namespace A142023.P6502172561041940675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063118 (2 * (n + 1)) + (n + 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142023.P6502172561041940675

namespace A142023

/-- `A007913(p?[A063118(2*(n+1))+n+2])` -/
def P6502172561041940675.Spec : Prop :=
  ∀ n, P6502172561041940675.a n = A142023 (n + 1)

end A142023

/-! ## A142023.P13213335318300602763

`record[A020639(A142241(n)+A017041(n))]`
-/

namespace A142023.P13213335318300602763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A142241 n + A017041 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142023.P13213335318300602763

namespace A142023

/-- `record[A020639(A142241(n)+A017041(n))]` -/
def P13213335318300602763.Spec : Prop :=
  ∀ n, P13213335318300602763.a n = A142023 (n + 1)

end A142023

/-! ## A142023.P3314372746393041636

`A000265(p?[A142241(n)+A017041(n)])`
-/

namespace A142023.P3314372746393041636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142241 n + A017041 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142023.P3314372746393041636

namespace A142023

/-- `A000265(p?[A142241(n)+A017041(n)])` -/
def P3314372746393041636.Spec : Prop :=
  ∀ n, P3314372746393041636.a n = A142023 (n + 1)

end A142023

/-! ## A142023.P10152722567196907878

`record[A020639(A304205(n+1)+A269044(n))]`
-/

namespace A142023.P10152722567196907878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A304205 (n + 1) + A269044 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142023.P10152722567196907878

namespace A142023

/-- `record[A020639(A304205(n+1)+A269044(n))]` -/
def P10152722567196907878.Spec : Prop :=
  ∀ n, P10152722567196907878.a n = A142023 (n + 1)

end A142023

/-! ## A142023.P326336003145392799

`record[A020639(A004769(4*n+1)-n)]`
-/

namespace A142023.P326336003145392799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A004769 (4 * n + 1) - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142023.P326336003145392799

namespace A142023

/-- `record[A020639(A004769(4*n+1)-n)]` -/
def P326336003145392799.Spec : Prop :=
  ∀ n, P326336003145392799.a n = A142023 (n + 1)

end A142023

/-!
# A142024: Primes congruent to 20 mod 31.

The programs for A142024, the canonical program `A142024.P9422991563371637175` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142024 has offset 1).

The definition of A142024 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2631 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142024.P9422991563371637175

`p?[62*n-11]`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A142024

/-- `p?[62*n-11]` -/
def P9422991563371637175.Spec : Prop :=
  ∀ n, P9422991563371637175.a n = A142024 (n + 1)

theorem P9422991563371637175.correct : P9422991563371637175.Spec := by
  intro n
  simp only [A142024, Nat.add_sub_cancel]

end A142024

/-! ## A142024.P11589605908934224245

`A000027(p?[A156376(n)+1+n])`
-/

namespace A142024.P11589605908934224245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156376 n + 1 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142024.P11589605908934224245

namespace A142024

/-- `A000027(p?[A156376(n)+1+n])` -/
def P11589605908934224245.Spec : Prop :=
  ∀ n, P11589605908934224245.a n = A142024 (n + 1)

end A142024

/-! ## A142024.P12926779421079724231

`A000027(p?[A124388(n)+A016825(n)])`
-/

namespace A142024.P12926779421079724231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124388 n + A016825 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142024.P12926779421079724231

namespace A142024

/-- `A000027(p?[A124388(n)+A016825(n)])` -/
def P12926779421079724231.Spec : Prop :=
  ∀ n, P12926779421079724231.a n = A142024 (n + 1)

end A142024

/-! ## A142024.P11484023428885371492

`A000027(p?[A255413(2*(n+1))+n+1])`
-/

namespace A142024.P11484023428885371492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255413 (2 * (n + 1)) + (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142024.P11484023428885371492

namespace A142024

/-- `A000027(p?[A255413(2*(n+1))+n+1])` -/
def P11484023428885371492.Spec : Prop :=
  ∀ n, P11484023428885371492.a n = A142024 (n + 1)

end A142024

/-! ## A142024.P12775813704556468597

`A001414(p?[A135631(n)-11])`
-/

namespace A142024.P12775813704556468597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135631 n - 11

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142024.P12775813704556468597

namespace A142024

/-- `A001414(p?[A135631(n)-11])` -/
def P12775813704556468597.Spec : Prop :=
  ∀ n, P12775813704556468597.a n = A142024 (n + 1)

end A142024

/-! ## A142024.P1824387637860778910

`A000265(p?[A124388(n)+A016825(n)])`
-/

namespace A142024.P1824387637860778910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124388 n + A016825 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142024.P1824387637860778910

namespace A142024

/-- `A000265(p?[A124388(n)+A016825(n)])` -/
def P1824387637860778910.Spec : Prop :=
  ∀ n, P1824387637860778910.a n = A142024 (n + 1)

end A142024

/-! ## A142024.P4918847633946231247

`A007947(p?[A124388(n)+A016825(n)])`
-/

namespace A142024.P4918847633946231247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124388 n + A016825 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142024.P4918847633946231247

namespace A142024

/-- `A007947(p?[A124388(n)+A016825(n)])` -/
def P4918847633946231247.Spec : Prop :=
  ∀ n, P4918847633946231247.a n = A142024 (n + 1)

end A142024

/-! ## A142024.P3376396094709558393

`A007947(p?[A156376(n)-A001478(n+1)])`
-/

namespace A142024.P3376396094709558393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156376 n - A001478 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142024.P3376396094709558393

namespace A142024

/-- `A007947(p?[A156376(n)-A001478(n+1)])` -/
def P3376396094709558393.Spec : Prop :=
  ∀ n, P3376396094709558393.a n = A142024 (n + 1)

end A142024

/-!
# A142025: Primes congruent to 21 mod 31.

The programs for A142025, the canonical program `A142025.P7961048039919575719` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142025 has offset 1).

The definition of A142025 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2625 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142025.P7961048039919575719

`p?[31*n-10]`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A142025

/-- `p?[31*n-10]` -/
def P7961048039919575719.Spec : Prop :=
  ∀ n, P7961048039919575719.a n = A142025 (n + 1)

theorem P7961048039919575719.correct : P7961048039919575719.Spec := by
  intro n
  simp only [A142025, Nat.add_sub_cancel]

end A142025

/-! ## A142025.P5952727361730115221

`A000027(p?[A270296(n+1)+n+1])`
-/

namespace A142025.P5952727361730115221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270296 (n + 1) + (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142025.P5952727361730115221

namespace A142025

/-- `A000027(p?[A270296(n+1)+n+1])` -/
def P5952727361730115221.Spec : Prop :=
  ∀ n, P5952727361730115221.a n = A142025 (n + 1)

end A142025

/-! ## A142025.P13319298325028043202

`A000027(p?[A255413(2*(n+1))+n+2])`
-/

namespace A142025.P13319298325028043202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255413 (2 * (n + 1)) + (n + 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142025.P13319298325028043202

namespace A142025

/-- `A000027(p?[A255413(2*(n+1))+n+2])` -/
def P13319298325028043202.Spec : Prop :=
  ∀ n, P13319298325028043202.a n = A142025 (n + 1)

end A142025

/-! ## A142025.P9602521731126664360

`∩[A164131(2*(n+1))-2, A191067(n+2)]`
-/

namespace A142025.P9602521731126664360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164131 (2 * (n + 1)) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191067 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142025.P9602521731126664360

namespace A142025

/-- `∩[A164131(2*(n+1))-2, A191067(n+2)]` -/
def P9602521731126664360.Spec : Prop :=
  ∀ n, (P9602521731126664360.a n : ℤ) = A142025 (n + 1)

end A142025

/-! ## A142025.P14411495282067182283

`record[A020639(62*(n+1)+21)]`
-/

namespace A142025.P14411495282067182283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (62 * (n + 1) + 21)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142025.P14411495282067182283

namespace A142025

/-- `record[A020639(62*(n+1)+21)]` -/
def P14411495282067182283.Spec : Prop :=
  ∀ n, P14411495282067182283.a n = A142025 (n + 1)

end A142025

/-! ## A142025.P13491366173272149212

`record[A006530(A128473(n+3)+n)]`
-/

namespace A142025.P13491366173272149212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A128473 (n + 3) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142025.P13491366173272149212

namespace A142025

/-- `record[A006530(A128473(n+3)+n)]` -/
def P13491366173272149212.Spec : Prop :=
  ∀ n, P13491366173272149212.a n = A142025 (n + 1)

end A142025

/-! ## A142025.P2133294894170986345

`A000265(p?[A270296(n+1)+n+1])`
-/

namespace A142025.P2133294894170986345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270296 (n + 1) + (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142025.P2133294894170986345

namespace A142025

/-- `A000265(p?[A270296(n+1)+n+1])` -/
def P2133294894170986345.Spec : Prop :=
  ∀ n, P2133294894170986345.a n = A142025 (n + 1)

end A142025

/-! ## A142025.P13228657105309891978

`∩[A191067(n+1), A310511(n)]`
-/

namespace A142025.P13228657105309891978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191067 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310511 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142025.P13228657105309891978

namespace A142025

/-- `∩[A191067(n+1), A310511(n)]` -/
def P13228657105309891978.Spec : Prop :=
  ∀ n, (P13228657105309891978.a n : ℤ) = A142025 (n + 1)

end A142025

/-! ## A142025.P17991256316274728744

`∩[A315266(2*n)+A315266(n+1), A191067(n+2)]`
-/

namespace A142025.P17991256316274728744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315266 (2 * n) + A315266 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191067 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142025.P17991256316274728744

namespace A142025

/-- `∩[A315266(2*n)+A315266(n+1), A191067(n+2)]` -/
def P17991256316274728744.Spec : Prop :=
  ∀ n, (P17991256316274728744.a n : ℤ) = A142025 (n + 1)

end A142025

/-!
# A142026: Primes congruent to 22 mod 31.

The programs for A142026, the canonical program `A142026.P13160825783324097446` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142026 has offset 1).

The definition of A142026 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2598 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142026.P13160825783324097446

`p?[62*n-9]`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A142026

/-- `p?[62*n-9]` -/
def P13160825783324097446.Spec : Prop :=
  ∀ n, P13160825783324097446.a n = A142026 (n + 1)

theorem P13160825783324097446.correct : P13160825783324097446.Spec := by
  intro n
  simp only [A142026, Nat.add_sub_cancel]

end A142026

/-! ## A142026.P12492966362981607882

`∩[A164131(n+1)-1, A191067(n+1)]`
-/

namespace A142026.P12492966362981607882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164131 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191067 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142026.P12492966362981607882

namespace A142026

/-- `∩[A164131(n+1)-1, A191067(n+1)]` -/
def P12492966362981607882.Spec : Prop :=
  ∀ n, (P12492966362981607882.a n : ℤ) = A142026 (n + 1)

end A142026

/-! ## A142026.P12053321756682227714

`A000265(p?[31*n+53])`
-/

namespace A142026.P12053321756682227714
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  31 * n + 53

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A142026.P12053321756682227714

namespace A142026

/-- `A000265(p?[31*n+53])` -/
def P12053321756682227714.Spec : Prop :=
  ∀ n, P12053321756682227714.a n = A142026 (n + 1)

end A142026

/-! ## A142026.P6395791216377139946

`record[A020639(62*(n+1)-9)]`
-/

namespace A142026.P6395791216377139946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (62 * (n + 1) - 9)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142026.P6395791216377139946

namespace A142026

/-- `record[A020639(62*(n+1)-9)]` -/
def P6395791216377139946.Spec : Prop :=
  ∀ n, P6395791216377139946.a n = A142026 (n + 1)

end A142026

/-! ## A142026.P5148931568655095656

`A007947(p?[A017293(3*n+2)+n])`
-/

namespace A142026.P5148931568655095656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017293 (3 * n + 2) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142026.P5148931568655095656

namespace A142026

/-- `A007947(p?[A017293(3*n+2)+n])` -/
def P5148931568655095656.Spec : Prop :=
  ∀ n, P5148931568655095656.a n = A142026 (n + 1)

end A142026

/-!
# A142027: Primes congruent to 23 mod 31.

The programs for A142027, the canonical program `A142027.P1497223335984843028` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142027 has offset 1).

The definition of A142027 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2627 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142027.P1497223335984843028

`p?[31*n-8]`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A142027

/-- `p?[31*n-8]` -/
def P1497223335984843028.Spec : Prop :=
  ∀ n, P1497223335984843028.a n = A142027 (n + 1)

theorem P1497223335984843028.correct : P1497223335984843028.Spec := by
  intro n
  simp only [A142027, Nat.add_sub_cancel]

end A142027

/-! ## A142027.P2909376401157254670

`∩[A164131(n+1), A191067(n+1)]`
-/

namespace A142027.P2909376401157254670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164131 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191067 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142027.P2909376401157254670

namespace A142027

/-- `∩[A164131(n+1), A191067(n+1)]` -/
def P2909376401157254670.Spec : Prop :=
  ∀ n, (P2909376401157254670.a n : ℤ) = A142027 (n + 1)

end A142027

/-! ## A142027.P4181371561150664730

`record[A020639(31*(n+1)-8)]`
-/

namespace A142027.P4181371561150664730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (31 * (n + 1) - 8)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142027.P4181371561150664730

namespace A142027

/-- `record[A020639(31*(n+1)-8)]` -/
def P4181371561150664730.Spec : Prop :=
  ∀ n, P4181371561150664730.a n = A142027 (n + 1)

end A142027

/-! ## A142027.P14791275846435574119

`record[A006530(A304839(n+1)+n)]`
-/

namespace A142027.P14791275846435574119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A304839 (n + 1) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142027.P14791275846435574119

namespace A142027

/-- `record[A006530(A304839(n+1)+n)]` -/
def P14791275846435574119.Spec : Prop :=
  ∀ n, P14791275846435574119.a n = A142027 (n + 1)

end A142027

/-! ## A142027.P1376092352189033498

`A007913(p?[A304839(n+1)+n])`
-/

namespace A142027.P1376092352189033498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304839 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142027.P1376092352189033498

namespace A142027

/-- `A007913(p?[A304839(n+1)+n])` -/
def P1376092352189033498.Spec : Prop :=
  ∀ n, P1376092352189033498.a n = A142027 (n + 1)

end A142027

/-! ## A142027.P8102062582061599563

`filter[A164131(2*(n+1)), A010051(#)]`
-/

namespace A142027.P8102062582061599563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164131 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A142027.P8102062582061599563

namespace A142027

/-- `filter[A164131(2*(n+1)), A010051(#)]` -/
def P8102062582061599563.Spec : Prop :=
  ∀ n, P8102062582061599563.a n = A142027 (n + 1)

end A142027

/-! ## A142027.P3138504186334853988

`filter[A164131(2*(n+1)), A355937(#)]`
-/

namespace A142027.P3138504186334853988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164131 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355937 (f1 j).toNat = 1) n)

end

end A142027.P3138504186334853988

namespace A142027

/-- `filter[A164131(2*(n+1)), A355937(#)]` -/
def P3138504186334853988.Spec : Prop :=
  ∀ n, P3138504186334853988.a n = A142027 (n + 1)

end A142027

/-! ## A142027.P18239266479435618276

`record[A006530(A139611(n)+A004769(n)-(n-1))]`
-/

namespace A142027.P18239266479435618276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A139611 n + A004769 n - ((n : ℤ) - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142027.P18239266479435618276

namespace A142027

/-- `record[A006530(A139611(n)+A004769(n)-(n-1))]` -/
def P18239266479435618276.Spec : Prop :=
  ∀ n, P18239266479435618276.a n = A142027 (n + 1)

end A142027

/-! ## A142027.P1078944578954041833

`filter[A164131(2*(n+1)), A302777(#)]`
-/

namespace A142027.P1078944578954041833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164131 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A302777 (f1 j).toNat = 1) n)

end

end A142027.P1078944578954041833

namespace A142027

/-- `filter[A164131(2*(n+1)), A302777(#)]` -/
def P1078944578954041833.Spec : Prop :=
  ∀ n, P1078944578954041833.a n = A142027 (n + 1)

end A142027

/-! ## A142027.P11363547197805907243

`filter[A164131(2*(n+1)), A323152(#)]`
-/

namespace A142027.P11363547197805907243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164131 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323152 (f1 j).toNat = 1) n)

end

end A142027.P11363547197805907243

namespace A142027

/-- `filter[A164131(2*(n+1)), A323152(#)]` -/
def P11363547197805907243.Spec : Prop :=
  ∀ n, P11363547197805907243.a n = A142027 (n + 1)

end A142027

/-! ## A142027.P14427265294746841194

`filter[A164131(2*(n+1)), A323153(#)]`
-/

namespace A142027.P14427265294746841194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164131 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323153 (f1 j).toNat = 1) n)

end

end A142027.P14427265294746841194

namespace A142027

/-- `filter[A164131(2*(n+1)), A323153(#)]` -/
def P14427265294746841194.Spec : Prop :=
  ∀ n, P14427265294746841194.a n = A142027 (n + 1)

end A142027

/-! ## A142027.P16846176226252007810

`filter[A164131(2*(n+1)), A351957(#)]`
-/

namespace A142027.P16846176226252007810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164131 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A351957 (f1 j).toNat = 1) n)

end

end A142027.P16846176226252007810

namespace A142027

/-- `filter[A164131(2*(n+1)), A351957(#)]` -/
def P16846176226252007810.Spec : Prop :=
  ∀ n, P16846176226252007810.a n = A142027 (n + 1)

end A142027

/-!
# A142028: Primes congruent to 24 mod 31.

The programs for A142028, the canonical program `A142028.P1386416701456778253` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142028 has offset 1).

The definition of A142028 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2625 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142028.P1386416701456778253

`p?[31*n-7]`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A142028

/-- `p?[31*n-7]` -/
def P1386416701456778253.Spec : Prop :=
  ∀ n, P1386416701456778253.a n = A142028 (n + 1)

theorem P1386416701456778253.correct : P1386416701456778253.Spec := by
  intro n
  simp only [A142028, Nat.add_sub_cancel]

end A142028

/-! ## A142028.P5439724092074870927

`A000027(p?[A157330(n+1)-A005408(n)])`
-/

namespace A142028.P5439724092074870927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157330 (n + 1) - A005408 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142028.P5439724092074870927

namespace A142028

/-- `A000027(p?[A157330(n+1)-A005408(n)])` -/
def P5439724092074870927.Spec : Prop :=
  ∀ n, P5439724092074870927.a n = A142028 (n + 1)

end A142028

/-! ## A142028.P5211745764284376207

`or(1, p?[3*A017365(n)+n])`
-/

namespace A142028.P5211745764284376207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A017365 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A142028.P5211745764284376207

namespace A142028

/-- `or(1, p?[3*A017365(n)+n])` -/
def P5211745764284376207.Spec : Prop :=
  ∀ n, P5211745764284376207.a n = A142028 (n + 1)

end A142028

/-! ## A142028.P12181431768563304052

`A000027(p?[A128473(n+1)+n+1])`
-/

namespace A142028.P12181431768563304052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128473 (n + 1) + (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142028.P12181431768563304052

namespace A142028

/-- `A000027(p?[A128473(n+1)+n+1])` -/
def P12181431768563304052.Spec : Prop :=
  ∀ n, P12181431768563304052.a n = A142028 (n + 1)

end A142028

/-! ## A142028.P6380511910926041241

`A000035(2*n)+p?[3*A017365(n)+n]`
-/

namespace A142028.P6380511910926041241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A017365 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (2 * n) + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142028.P6380511910926041241

namespace A142028

/-- `A000035(2*n)+p?[3*A017365(n)+n]` -/
def P6380511910926041241.Spec : Prop :=
  ∀ n, P6380511910926041241.a n = A142028 (n + 1)

end A142028

/-! ## A142028.P10050465913592230925

`A000027(p?[A248339(n)+A017221(n)])`
-/

namespace A142028.P10050465913592230925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248339 n + A017221 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142028.P10050465913592230925

namespace A142028

/-- `A000027(p?[A248339(n)+A017221(n)])` -/
def P10050465913592230925.Spec : Prop :=
  ∀ n, P10050465913592230925.a n = A142028 (n + 1)

end A142028

/-! ## A142028.P17279556503433475392

`∩[A164131(n+1)+1, A191067(n+1)]`
-/

namespace A142028.P17279556503433475392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164131 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191067 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142028.P17279556503433475392

namespace A142028

/-- `∩[A164131(n+1)+1, A191067(n+1)]` -/
def P17279556503433475392.Spec : Prop :=
  ∀ n, (P17279556503433475392.a n : ℤ) = A142028 (n + 1)

end A142028

/-! ## A142028.P6566251889751230253

`A008472(p?[A135631(n)-7])`
-/

namespace A142028.P6566251889751230253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135631 n - 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142028.P6566251889751230253

namespace A142028

/-- `A008472(p?[A135631(n)-7])` -/
def P6566251889751230253.Spec : Prop :=
  ∀ n, P6566251889751230253.a n = A142028 (n + 1)

end A142028

/-! ## A142028.P8855836144590866630

`A000265(p?[A157330(n+1)-A005408(n)])`
-/

namespace A142028.P8855836144590866630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157330 (n + 1) - A005408 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142028.P8855836144590866630

namespace A142028

/-- `A000265(p?[A157330(n+1)-A005408(n)])` -/
def P8855836144590866630.Spec : Prop :=
  ∀ n, P8855836144590866630.a n = A142028 (n + 1)

end A142028

/-! ## A142028.P11722814708912916797

`A007913(p?[A016993(4*n+3)+A016789(n)])`
-/

namespace A142028.P11722814708912916797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016993 (4 * n + 3) + A016789 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142028.P11722814708912916797

namespace A142028

/-- `A007913(p?[A016993(4*n+3)+A016789(n)])` -/
def P11722814708912916797.Spec : Prop :=
  ∀ n, P11722814708912916797.a n = A142028 (n + 1)

end A142028

/-!
# A142029: Primes congruent to 25 mod 31.

The programs for A142029, the canonical program `A142029.P10063750050715036443` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142029 has offset 1).

The definition of A142029 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2609 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142029.P10063750050715036443

`p?[31*n-6]`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A142029

/-- `p?[31*n-6]` -/
def P10063750050715036443.Spec : Prop :=
  ∀ n, P10063750050715036443.a n = A142029 (n + 1)

theorem P10063750050715036443.correct : P10063750050715036443.Spec := by
  intro n
  simp only [A142029, Nat.add_sub_cancel]

end A142029

/-! ## A142029.P18160214437408872925

`or(1, p?[62*n+25])`
-/

namespace A142029.P18160214437408872925
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  62 * n + 25

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A142029.P18160214437408872925

namespace A142029

/-- `or(1, p?[62*n+25])` -/
def P18160214437408872925.Spec : Prop :=
  ∀ n, (P18160214437408872925.a n : ℤ) = A142029 (n + 1)

end A142029

/-! ## A142029.P11371373383491929995

`A000027(p?[A304158(n+1)+A005408(n)])`
-/

namespace A142029.P11371373383491929995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304158 (n + 1) + A005408 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142029.P11371373383491929995

namespace A142029

/-- `A000027(p?[A304158(n+1)+A005408(n)])` -/
def P11371373383491929995.Spec : Prop :=
  ∀ n, P11371373383491929995.a n = A142029 (n + 1)

end A142029

/-! ## A142029.P7319177676171945761

`A000027(p?[A257645(n)+A106839(n)])`
-/

namespace A142029.P7319177676171945761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257645 n + A106839 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142029.P7319177676171945761

namespace A142029

/-- `A000027(p?[A257645(n)+A106839(n)])` -/
def P7319177676171945761.Spec : Prop :=
  ∀ n, P7319177676171945761.a n = A142029 (n + 1)

end A142029

/-! ## A142029.P17329006134484139806

`∩[A164131(2*(n+1))+2, A191024(n+2)]`
-/

namespace A142029.P17329006134484139806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164131 (2 * (n + 1)) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191024 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142029.P17329006134484139806

namespace A142029

/-- `∩[A164131(2*(n+1))+2, A191024(n+2)]` -/
def P17329006134484139806.Spec : Prop :=
  ∀ n, (P17329006134484139806.a n : ℤ) = A142029 (n + 1)

end A142029

/-! ## A142029.P14320010659329888553

`A000265(p?[A135631(n)-6])`
-/

namespace A142029.P14320010659329888553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135631 n - 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142029.P14320010659329888553

namespace A142029

/-- `A000265(p?[A135631(n)-6])` -/
def P14320010659329888553.Spec : Prop :=
  ∀ n, P14320010659329888553.a n = A142029 (n + 1)

end A142029

/-! ## A142029.P18232654654321247749

`filter[A169600(2*(n+1)), A010051(#)]`
-/

namespace A142029.P18232654654321247749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169600 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A142029.P18232654654321247749

namespace A142029

/-- `filter[A169600(2*(n+1)), A010051(#)]` -/
def P18232654654321247749.Spec : Prop :=
  ∀ n, P18232654654321247749.a n = A142029 (n + 1)

end A142029

/-! ## A142029.P11738579071473317396

`A001414(p?[A257645(n)+A106839(n)])`
-/

namespace A142029.P11738579071473317396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257645 n + A106839 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142029.P11738579071473317396

namespace A142029

/-- `A001414(p?[A257645(n)+A106839(n)])` -/
def P11738579071473317396.Spec : Prop :=
  ∀ n, P11738579071473317396.a n = A142029 (n + 1)

end A142029

/-! ## A142029.P15555516089933124198

`A008472(p?[A257645(n)+A106839(n)])`
-/

namespace A142029.P15555516089933124198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257645 n + A106839 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142029.P15555516089933124198

namespace A142029

/-- `A008472(p?[A257645(n)+A106839(n)])` -/
def P15555516089933124198.Spec : Prop :=
  ∀ n, P15555516089933124198.a n = A142029 (n + 1)

end A142029

/-! ## A142029.P4220009321300341938

`A000265(p?[A304158(n+1)+A005408(n)])`
-/

namespace A142029.P4220009321300341938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304158 (n + 1) + A005408 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142029.P4220009321300341938

namespace A142029

/-- `A000265(p?[A304158(n+1)+A005408(n)])` -/
def P4220009321300341938.Spec : Prop :=
  ∀ n, P4220009321300341938.a n = A142029 (n + 1)

end A142029

/-! ## A142029.P3401824437397761393

`A007913(p?[A304158(n+1)+A005408(n)])`
-/

namespace A142029.P3401824437397761393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304158 (n + 1) + A005408 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142029.P3401824437397761393

namespace A142029

/-- `A007913(p?[A304158(n+1)+A005408(n)])` -/
def P3401824437397761393.Spec : Prop :=
  ∀ n, P3401824437397761393.a n = A142029 (n + 1)

end A142029

/-! ## A142029.P155094876052758128

`filter[A169600(2*(n+1)), A323152(#)]`
-/

namespace A142029.P155094876052758128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169600 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323152 (f1 j).toNat = 1) n)

end

end A142029.P155094876052758128

namespace A142029

/-- `filter[A169600(2*(n+1)), A323152(#)]` -/
def P155094876052758128.Spec : Prop :=
  ∀ n, P155094876052758128.a n = A142029 (n + 1)

end A142029

/-! ## A142029.P57395476388648993

`filter[A169600(2*(n+1)), A323153(#)]`
-/

namespace A142029.P57395476388648993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169600 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323153 (f1 j).toNat = 1) n)

end

end A142029.P57395476388648993

namespace A142029

/-- `filter[A169600(2*(n+1)), A323153(#)]` -/
def P57395476388648993.Spec : Prop :=
  ∀ n, P57395476388648993.a n = A142029 (n + 1)

end A142029

/-! ## A142029.P7583870292175604427

`filter[A169600(2*(n+1)), A351957(#)]`
-/

namespace A142029.P7583870292175604427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169600 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A351957 (f1 j).toNat = 1) n)

end

end A142029.P7583870292175604427

namespace A142029

/-- `filter[A169600(2*(n+1)), A351957(#)]` -/
def P7583870292175604427.Spec : Prop :=
  ∀ n, P7583870292175604427.a n = A142029 (n + 1)

end A142029

/-!
# A142030: Primes congruent to 26 mod 31.

The programs for A142030, the canonical program `A142030.P5890763793859988796` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142030 has offset 1).

The definition of A142030 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2624 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142030.P5890763793859988796

`p?[62*n-5]`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A142030

/-- `p?[62*n-5]` -/
def P5890763793859988796.Spec : Prop :=
  ∀ n, P5890763793859988796.a n = A142030 (n + 1)

theorem P5890763793859988796.correct : P5890763793859988796.Spec := by
  intro n
  simp only [A142030, Nat.add_sub_cancel]

end A142030

/-! ## A142030.P10619767735436532404

`or(1, p?[A128470(n+6)+n])`
-/

namespace A142030.P10619767735436532404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128470 (n + 6) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A142030.P10619767735436532404

namespace A142030

/-- `or(1, p?[A128470(n+6)+n])` -/
def P10619767735436532404.Spec : Prop :=
  ∀ n, P10619767735436532404.a n = A142030 (n + 1)

end A142030

/-! ## A142030.P9077567020997122439

`A000027(p?[A084967(n+1)+A032742(n+1)])`
-/

namespace A142030.P9077567020997122439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084967 (n + 1) + A032742 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142030.P9077567020997122439

namespace A142030

/-- `A000027(p?[A084967(n+1)+A032742(n+1)])` -/
def P9077567020997122439.Spec : Prop :=
  ∀ n, P9077567020997122439.a n = A142030 (n + 1)

end A142030

/-! ## A142030.P766782873465631593

`record[A006530(A128470(n+6)+n)]`
-/

namespace A142030.P766782873465631593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A128470 (n + 6) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142030.P766782873465631593

namespace A142030

/-- `record[A006530(A128470(n+6)+n)]` -/
def P766782873465631593.Spec : Prop :=
  ∀ n, P766782873465631593.a n = A142030 (n + 1)

end A142030

/-! ## A142030.P5610487529763138977

`record[A020639(A128470(n+6)+n)]`
-/

namespace A142030.P5610487529763138977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A128470 (n + 6) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142030.P5610487529763138977

namespace A142030

/-- `record[A020639(A128470(n+6)+n)]` -/
def P5610487529763138977.Spec : Prop :=
  ∀ n, P5610487529763138977.a n = A142030 (n + 1)

end A142030

/-! ## A142030.P5797566734250015597

`A000265(p?[A017341(3*n+2)+n])`
-/

namespace A142030.P5797566734250015597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017341 (3 * n + 2) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142030.P5797566734250015597

namespace A142030

/-- `A000265(p?[A017341(3*n+2)+n])` -/
def P5797566734250015597.Spec : Prop :=
  ∀ n, P5797566734250015597.a n = A142030 (n + 1)

end A142030

/-! ## A142030.P10528227677836960722

`A000265(p?[A017185(3*n+5)+4*n+10])`
-/

namespace A142030.P10528227677836960722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017185 (3 * n + 5) + (4 * n + 10 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142030.P10528227677836960722

namespace A142030

/-- `A000265(p?[A017185(3*n+5)+4*n+10])` -/
def P10528227677836960722.Spec : Prop :=
  ∀ n, P10528227677836960722.a n = A142030 (n + 1)

end A142030

/-! ## A142030.P5021414593903569094

`A007947(p?[A106839(n)-A032742(n+1)])`
-/

namespace A142030.P5021414593903569094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106839 n - A032742 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142030.P5021414593903569094

namespace A142030

/-- `A007947(p?[A106839(n)-A032742(n+1)])` -/
def P5021414593903569094.Spec : Prop :=
  ∀ n, P5021414593903569094.a n = A142030 (n + 1)

end A142030

/-! ## A142030.P18087854861659991550

`A006530(2*p?[A128470(n+6)+n])`
-/

namespace A142030.P18087854861659991550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128470 (n + 6) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (2 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142030.P18087854861659991550

namespace A142030

/-- `A006530(2*p?[A128470(n+6)+n])` -/
def P18087854861659991550.Spec : Prop :=
  ∀ n, P18087854861659991550.a n = A142030 (n + 1)

end A142030

/-!
# A142031: Primes congruent to 27 mod 31.

The programs for A142031, the canonical program `A142031.P8145539369088862934` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142031 has offset 1).

The definition of A142031 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2604 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142031.P8145539369088862934

`p?[31*n-4]`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A142031

/-- `p?[31*n-4]` -/
def P8145539369088862934.Spec : Prop :=
  ∀ n, P8145539369088862934.a n = A142031 (n + 1)

theorem P8145539369088862934.correct : P8145539369088862934.Spec := by
  intro n
  simp only [A142031, Nat.add_sub_cancel]

end A142031

/-! ## A142031.P6106779175174022475

`A000027(p?[A135631(n)+58])`
-/

namespace A142031.P6106779175174022475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135631 n + 58

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142031.P6106779175174022475

namespace A142031

/-- `A000027(p?[A135631(n)+58])` -/
def P6106779175174022475.Spec : Prop :=
  ∀ n, P6106779175174022475.a n = A142031 (n + 1)

end A142031

/-! ## A142031.P1754257401538688017

`A000027(p?[A157948(n+1)-A017138(n)])`
-/

namespace A142031.P1754257401538688017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157948 (n + 1) - A017138 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142031.P1754257401538688017

namespace A142031

/-- `A000027(p?[A157948(n+1)-A017138(n)])` -/
def P1754257401538688017.Spec : Prop :=
  ∀ n, P1754257401538688017.a n = A142031 (n + 1)

end A142031

/-! ## A142031.P12866688298720936152

`A000265(p?[A135631(n)-4])`
-/

namespace A142031.P12866688298720936152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135631 n - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142031.P12866688298720936152

namespace A142031

/-- `A000265(p?[A135631(n)-4])` -/
def P12866688298720936152.Spec : Prop :=
  ∀ n, P12866688298720936152.a n = A142031 (n + 1)

end A142031

/-! ## A142031.P7300346054069656681

`A007913(p?[A135631(n)-4])`
-/

namespace A142031.P7300346054069656681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135631 n - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142031.P7300346054069656681

namespace A142031

/-- `A007913(p?[A135631(n)-4])` -/
def P7300346054069656681.Spec : Prop :=
  ∀ n, P7300346054069656681.a n = A142031 (n + 1)

end A142031

/-! ## A142031.P8454051831918571035

`A007947(p?[A135631(n)-4])`
-/

namespace A142031.P8454051831918571035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135631 n - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142031.P8454051831918571035

namespace A142031

/-- `A007947(p?[A135631(n)-4])` -/
def P8454051831918571035.Spec : Prop :=
  ∀ n, P8454051831918571035.a n = A142031 (n + 1)

end A142031

/-! ## A142031.P321079557244432229

`A000265(p?[A157948(n+1)-A017138(n)])`
-/

namespace A142031.P321079557244432229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157948 (n + 1) - A017138 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142031.P321079557244432229

namespace A142031

/-- `A000265(p?[A157948(n+1)-A017138(n)])` -/
def P321079557244432229.Spec : Prop :=
  ∀ n, P321079557244432229.a n = A142031 (n + 1)

end A142031

/-! ## A142031.P1444083044264621477

`A007913(p?[A157948(n+1)-A017138(n)])`
-/

namespace A142031.P1444083044264621477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157948 (n + 1) - A017138 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142031.P1444083044264621477

namespace A142031

/-- `A007913(p?[A157948(n+1)-A017138(n)])` -/
def P1444083044264621477.Spec : Prop :=
  ∀ n, P1444083044264621477.a n = A142031 (n + 1)

end A142031

/-! ## A142031.P1703170011855102962

`A008472(p?[A157948(n+1)-A017138(n)])`
-/

namespace A142031.P1703170011855102962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157948 (n + 1) - A017138 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142031.P1703170011855102962

namespace A142031

/-- `A008472(p?[A157948(n+1)-A017138(n)])` -/
def P1703170011855102962.Spec : Prop :=
  ∀ n, P1703170011855102962.a n = A142031 (n + 1)

end A142031

/-! ## A142031.P4003217638697222734

`A008472(p?[A304158(n+1)+A144396(n+1)])`
-/

namespace A142031.P4003217638697222734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304158 (n + 1) + A144396 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142031.P4003217638697222734

namespace A142031

/-- `A008472(p?[A304158(n+1)+A144396(n+1)])` -/
def P4003217638697222734.Spec : Prop :=
  ∀ n, P4003217638697222734.a n = A142031 (n + 1)

end A142031

/-! ## A142031.P5249422603096630596

`A000265(p?[A017569(5*n+2)+A004273(n)])`
-/

namespace A142031.P5249422603096630596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017569 (5 * n + 2) + A004273 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142031.P5249422603096630596

namespace A142031

/-- `A000265(p?[A017569(5*n+2)+A004273(n)])` -/
def P5249422603096630596.Spec : Prop :=
  ∀ n, P5249422603096630596.a n = A142031 (n + 1)

end A142031

/-!
# A142032: Primes congruent to 28 mod 31.

The programs for A142032, the canonical program `A142032.P10932960151328989973` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142032 has offset 1).

The definition of A142032 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2613 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142032.P10932960151328989973

`p?[31*n-3]`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A142032

/-- `p?[31*n-3]` -/
def P10932960151328989973.Spec : Prop :=
  ∀ n, P10932960151328989973.a n = A142032 (n + 1)

theorem P10932960151328989973.correct : P10932960151328989973.Spec := by
  intro n
  simp only [A142032, Nat.add_sub_cancel]

end A142032

/-! ## A142032.P14875975144510362618

`∏{p}[p?[A033580(n+2)-A033568(n)+1], #]`
-/

namespace A142032.P14875975144510362618
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033580 (n + 2) - A033568 n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A142032.P14875975144510362618

namespace A142032

/-- `∏{p}[p?[A033580(n+2)-A033568(n)+1], #]` -/
def P14875975144510362618.Spec : Prop :=
  ∀ n, (P14875975144510362618.a n : ℤ) = A142032 (n + 1)

end A142032

/-! ## A142032.P8908659014789179755

`A000027(p?[A156795(n+1)-A053742(n)])`
-/

namespace A142032.P8908659014789179755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156795 (n + 1) - A053742 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142032.P8908659014789179755

namespace A142032

/-- `A000027(p?[A156795(n+1)-A053742(n)])` -/
def P8908659014789179755.Spec : Prop :=
  ∀ n, P8908659014789179755.a n = A142032 (n + 1)

end A142032

/-! ## A142032.P17731245659747086973

`p?[A156795(n+1)-A053742(n)]%A024750(n+1)`
-/

namespace A142032.P17731245659747086973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156795 (n + 1) - A053742 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A024750 (n + 1))

end

end A142032.P17731245659747086973

namespace A142032

/-- `p?[A156795(n+1)-A053742(n)]%A024750(n+1)` -/
def P17731245659747086973.Spec : Prop :=
  ∀ n, P17731245659747086973.a n = A142032 (n + 1)

end A142032

/-! ## A142032.P4119496013271273644

`record[A020639(62*(n+1)-3)]`
-/

namespace A142032.P4119496013271273644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (62 * (n + 1) - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142032.P4119496013271273644

namespace A142032

/-- `record[A020639(62*(n+1)-3)]` -/
def P4119496013271273644.Spec : Prop :=
  ∀ n, P4119496013271273644.a n = A142032 (n + 1)

end A142032

/-!
# A142033: Primes congruent to 29 mod 31.

The programs for A142033, the canonical program `A142033.P5035171021861625087` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142033 has offset 1).

The definition of A142033 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2602 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142033.P5035171021861625087

`p?[31*n-2]`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A142033

/-- `p?[31*n-2]` -/
def P5035171021861625087.Spec : Prop :=
  ∀ n, P5035171021861625087.a n = A142033 (n + 1)

theorem P5035171021861625087.correct : P5035171021861625087.Spec := by
  intro n
  simp only [A142033, Nat.add_sub_cancel]

end A142033

/-! ## A142033.P2031926041298766849

`abs(p?[30*n+29+n]*A033999(n))`
-/

namespace A142033.P2031926041298766849
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  30 * n + 29 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) * A033999 n|

end

end A142033.P2031926041298766849

namespace A142033

/-- `abs(p?[30*n+29+n]*A033999(n))` -/
def P2031926041298766849.Spec : Prop :=
  ∀ n, P2031926041298766849.a n = A142033 (n + 1)

end A142033

/-! ## A142033.P4970534268330589625

`A000038(n+1)+p?[30*n+29+n]`
-/

namespace A142033.P4970534268330589625
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  30 * n + 29 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (n + 1) + (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ)

end

end A142033.P4970534268330589625

namespace A142033

/-- `A000038(n+1)+p?[30*n+29+n]` -/
def P4970534268330589625.Spec : Prop :=
  ∀ n, P4970534268330589625.a n = A142033 (n + 1)

end A142033

/-! ## A142033.P8579686988307328195

`p?[30*n+29+n]%A090789(n+1)`
-/

namespace A142033.P8579686988307328195
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  30 * n + 29 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) (A090789 (n + 1))

end

end A142033.P8579686988307328195

namespace A142033

/-- `p?[30*n+29+n]%A090789(n+1)` -/
def P8579686988307328195.Spec : Prop :=
  ∀ n, P8579686988307328195.a n = A142033 (n + 1)

end A142033

/-! ## A142033.P3417928463881886977

`record[A020639(31*(n+1)-2)]`
-/

namespace A142033.P3417928463881886977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (31 * (n + 1) - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142033.P3417928463881886977

namespace A142033

/-- `record[A020639(31*(n+1)-2)]` -/
def P3417928463881886977.Spec : Prop :=
  ∀ n, P3417928463881886977.a n = A142033 (n + 1)

end A142033

/-! ## A142033.P15881121460345381676

`A000265(p?[30*n+29+n])`
-/

namespace A142033.P15881121460345381676
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  30 * n + 29 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A142033.P15881121460345381676

namespace A142033

/-- `A000265(p?[30*n+29+n])` -/
def P15881121460345381676.Spec : Prop :=
  ∀ n, P15881121460345381676.a n = A142033 (n + 1)

end A142033

/-! ## A142033.P12125701921052848367

`∩[A191067(n+1), A310511(n)-2]`
-/

namespace A142033.P12125701921052848367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191067 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310511 n - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142033.P12125701921052848367

namespace A142033

/-- `∩[A191067(n+1), A310511(n)-2]` -/
def P12125701921052848367.Spec : Prop :=
  ∀ n, (P12125701921052848367.a n : ℤ) = A142033 (n + 1)

end A142033

/-! ## A142033.P15671500196267216127

`record[A090368(A125169(2*n)-n)]`
-/

namespace A142033.P15671500196267216127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090368 (A125169 (2 * n) - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142033.P15671500196267216127

namespace A142033

/-- `record[A090368(A125169(2*n)-n)]` -/
def P15671500196267216127.Spec : Prop :=
  ∀ n, P15671500196267216127.a n = A142033 (n + 1)

end A142033

/-!
# A142034: Primes congruent to 30 mod 31.

The programs for A142034, the canonical program `A142034.P16484057784270041110` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142034 has offset 1).

The definition of A142034 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2645 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142034.P16484057784270041110

`p?[31*n-1]`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A142034

/-- `p?[31*n-1]` -/
def P16484057784270041110.Spec : Prop :=
  ∀ n, P16484057784270041110.a n = A142034 (n + 1)

theorem P16484057784270041110.correct : P16484057784270041110.Spec := by
  intro n
  simp only [A142034, Nat.add_sub_cancel]

end A142034

/-! ## A142034.P6548182990374063921

`or(1, p?[30*(n+1)+n])`
-/

namespace A142034.P6548182990374063921
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  30 * (n + 1) + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A142034.P6548182990374063921

namespace A142034

/-- `or(1, p?[30*(n+1)+n])` -/
def P6548182990374063921.Spec : Prop :=
  ∀ n, (P6548182990374063921.a n : ℤ) = A142034 (n + 1)

end A142034

/-! ## A142034.P15454781861701800716

`∏{p}[p?[30*(n+1)+n], #]`
-/

namespace A142034.P15454781861701800716
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  30 * (n + 1) + n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), p

end

end A142034.P15454781861701800716

namespace A142034

/-- `∏{p}[p?[30*(n+1)+n], #]` -/
def P15454781861701800716.Spec : Prop :=
  ∀ n, (P15454781861701800716.a n : ℤ) = A142034 (n + 1)

end A142034

/-! ## A142034.P8118346917470709394

`A000027(p?[A249674(n)-1+n])`
-/

namespace A142034.P8118346917470709394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249674 n - 1 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142034.P8118346917470709394

namespace A142034

/-- `A000027(p?[A249674(n)-1+n])` -/
def P8118346917470709394.Spec : Prop :=
  ∀ n, P8118346917470709394.a n = A142034 (n + 1)

end A142034

/-! ## A142034.P13962401425783471447

`A000027(p?[A249674(n)-(1-n)])`
-/

namespace A142034.P13962401425783471447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249674 n - (1 - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142034.P13962401425783471447

namespace A142034

/-- `A000027(p?[A249674(n)-(1-n)])` -/
def P13962401425783471447.Spec : Prop :=
  ∀ n, P13962401425783471447.a n = A142034 (n + 1)

end A142034

/-! ## A142034.P3512286209126016979

`∩[A051040(n+1)-2, A071621(n+1)]`
-/

namespace A142034.P3512286209126016979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051040 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071621 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142034.P3512286209126016979

namespace A142034

/-- `∩[A051040(n+1)-2, A071621(n+1)]` -/
def P3512286209126016979.Spec : Prop :=
  ∀ n, (P3512286209126016979.a n : ℤ) = A142034 (n + 1)

end A142034

/-! ## A142034.P12513086327997587835

`∩[A051040(n+1)-2, A106119(n+1)]`
-/

namespace A142034.P12513086327997587835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051040 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106119 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142034.P12513086327997587835

namespace A142034

/-- `∩[A051040(n+1)-2, A106119(n+1)]` -/
def P12513086327997587835.Spec : Prop :=
  ∀ n, (P12513086327997587835.a n : ℤ) = A142034 (n + 1)

end A142034

/-! ## A142034.P17655327605651924485

`∩[A051040(n+1)-2, A157996(n+1)]`
-/

namespace A142034.P17655327605651924485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051040 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157996 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142034.P17655327605651924485

namespace A142034

/-- `∩[A051040(n+1)-2, A157996(n+1)]` -/
def P17655327605651924485.Spec : Prop :=
  ∀ n, (P17655327605651924485.a n : ℤ) = A142034 (n + 1)

end A142034

/-! ## A142034.P2712949495578708056

`∩[A051040(n+1)-2, A178456(n+1)]`
-/

namespace A142034.P2712949495578708056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051040 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178456 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142034.P2712949495578708056

namespace A142034

/-- `∩[A051040(n+1)-2, A178456(n+1)]` -/
def P2712949495578708056.Spec : Prop :=
  ∀ n, (P2712949495578708056.a n : ℤ) = A142034 (n + 1)

end A142034

/-! ## A142034.P6823143668878437150

`∩[A004139(n+1), A051040(n+1)-2]`
-/

namespace A142034.P6823143668878437150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051040 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142034.P6823143668878437150

namespace A142034

/-- `∩[A004139(n+1), A051040(n+1)-2]` -/
def P6823143668878437150.Spec : Prop :=
  ∀ n, (P6823143668878437150.a n : ℤ) = A142034 (n + 1)

end A142034

/-! ## A142034.P7291662455177076124

`∩[A051040(n+1)-2, A065091(n+1)]`
-/

namespace A142034.P7291662455177076124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051040 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142034.P7291662455177076124

namespace A142034

/-- `∩[A051040(n+1)-2, A065091(n+1)]` -/
def P7291662455177076124.Spec : Prop :=
  ∀ n, (P7291662455177076124.a n : ℤ) = A142034 (n + 1)

end A142034

/-! ## A142034.P14004592951059425802

`∩[A051040(n+1)-2, A108719(n+1)]`
-/

namespace A142034.P14004592951059425802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051040 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108719 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142034.P14004592951059425802

namespace A142034

/-- `∩[A051040(n+1)-2, A108719(n+1)]` -/
def P14004592951059425802.Spec : Prop :=
  ∀ n, (P14004592951059425802.a n : ℤ) = A142034 (n + 1)

end A142034

/-! ## A142034.P11755298407851223497

`∩[A051040(n+1)-2, A215848(n+1)]`
-/

namespace A142034.P11755298407851223497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051040 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215848 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142034.P11755298407851223497

namespace A142034

/-- `∩[A051040(n+1)-2, A215848(n+1)]` -/
def P11755298407851223497.Spec : Prop :=
  ∀ n, (P11755298407851223497.a n : ℤ) = A142034 (n + 1)

end A142034

/-! ## A142034.P4949813868037331278

`∩[A051040(n+1)-2, A351398(n+1)]`
-/

namespace A142034.P4949813868037331278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051040 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351398 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142034.P4949813868037331278

namespace A142034

/-- `∩[A051040(n+1)-2, A351398(n+1)]` -/
def P4949813868037331278.Spec : Prop :=
  ∀ n, (P4949813868037331278.a n : ℤ) = A142034 (n + 1)

end A142034

/-! ## A142034.P12403794747112696017

`∩[A051040(n+1)-2, A216495(n+1)]`
-/

namespace A142034.P12403794747112696017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051040 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216495 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142034.P12403794747112696017

namespace A142034

/-- `∩[A051040(n+1)-2, A216495(n+1)]` -/
def P12403794747112696017.Spec : Prop :=
  ∀ n, (P12403794747112696017.a n : ℤ) = A142034 (n + 1)

end A142034

/-! ## A142034.P1823733854789721338

`record[A020639(31*(n+2)-1)]`
-/

namespace A142034.P1823733854789721338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (31 * (n + 2) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142034.P1823733854789721338

namespace A142034

/-- `record[A020639(31*(n+2)-1)]` -/
def P1823733854789721338.Spec : Prop :=
  ∀ n, P1823733854789721338.a n = A142034 (n + 1)

end A142034

/-! ## A142034.P2391581311917067840

`A000265(p?[A174312(n)-(n+1)])`
-/

namespace A142034.P2391581311917067840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174312 n - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142034.P2391581311917067840

namespace A142034

/-- `A000265(p?[A174312(n)-(n+1)])` -/
def P2391581311917067840.Spec : Prop :=
  ∀ n, P2391581311917067840.a n = A142034 (n + 1)

end A142034

/-! ## A142034.P11130943068767009934

`∩[A310511(2*n)-1, A191067(n+2)]`
-/

namespace A142034.P11130943068767009934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310511 (2 * n) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191067 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142034.P11130943068767009934

namespace A142034

/-- `∩[A310511(2*n)-1, A191067(n+2)]` -/
def P11130943068767009934.Spec : Prop :=
  ∀ n, (P11130943068767009934.a n : ℤ) = A142034 (n + 1)

end A142034

/-!
# A142035: Primes congruent to 3 mod 32.

The programs for A142035, the canonical program `A142035.P15887348333000805245` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142035 has offset 1).

The definition of A142035 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142035.P15887348333000805245

`∪[A142926(n+1), A142940(n+1)]`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A142035

/-- `∪[A142926(n+1), A142940(n+1)]` -/
def P15887348333000805245.Spec : Prop :=
  ∀ n, (P15887348333000805245.a n : ℤ) = A142035 (n + 1)

theorem P15887348333000805245.correct : P15887348333000805245.Spec := by
  intro n
  simp only [A142035, Nat.add_sub_cancel]

end A142035

/-! ## A142035.P3387818990102958404

`p?[32*n+3]`
-/

namespace A142035.P3387818990102958404
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  32 * n + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142035.P3387818990102958404

namespace A142035

/-- `p?[32*n+3]` -/
def P3387818990102958404.Spec : Prop :=
  ∀ n, (P3387818990102958404.a n : ℤ) = A142035 (n + 1)

end A142035

/-! ## A142035.P6718119895414615097

`or(1, p?[or(3, 32*n)])`
-/

namespace A142035.P6718119895414615097
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 3 (32 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A142035.P6718119895414615097

namespace A142035

/-- `or(1, p?[or(3, 32*n)])` -/
def P6718119895414615097.Spec : Prop :=
  ∀ n, (P6718119895414615097.a n : ℤ) = A142035 (n + 1)

end A142035

/-! ## A142035.P12027013794505561830

`∩[2*A158057(n)+1, A051071(n+2)]`
-/

namespace A142035.P12027013794505561830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A158057 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051071 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142035.P12027013794505561830

namespace A142035

/-- `∩[2*A158057(n)+1, A051071(n+2)]` -/
def P12027013794505561830.Spec : Prop :=
  ∀ n, (P12027013794505561830.a n : ℤ) = A142035 (n + 1)

end A142035

/-! ## A142035.P14456936777921504548

`∩[2*A158057(n)+1, A033203(n+2)]`
-/

namespace A142035.P14456936777921504548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A158057 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033203 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142035.P14456936777921504548

namespace A142035

/-- `∩[2*A158057(n)+1, A033203(n+2)]` -/
def P14456936777921504548.Spec : Prop :=
  ∀ n, (P14456936777921504548.a n : ℤ) = A142035 (n + 1)

end A142035

/-! ## A142035.P2587712151596035347

`∩[A214588(n+1), A238477(n+1)-2]`
-/

namespace A142035.P2587712151596035347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214588 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238477 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142035.P2587712151596035347

namespace A142035

/-- `∩[A214588(n+1), A238477(n+1)-2]` -/
def P2587712151596035347.Spec : Prop :=
  ∀ n, (P2587712151596035347.a n : ℤ) = A142035 (n + 1)

end A142035

/-! ## A142035.P15457228432031098252

`∩[A003629(n+1), A238477(n+1)-2]`
-/

namespace A142035.P15457228432031098252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003629 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238477 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142035.P15457228432031098252

namespace A142035

/-- `∩[A003629(n+1), A238477(n+1)-2]` -/
def P15457228432031098252.Spec : Prop :=
  ∀ n, (P15457228432031098252.a n : ℤ) = A142035 (n + 1)

end A142035

/-! ## A142035.P15492926656494029682

`∩[A042999(n+1), A238477(n+1)-2]`
-/

namespace A142035.P15492926656494029682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042999 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238477 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142035.P15492926656494029682

namespace A142035

/-- `∩[A042999(n+1), A238477(n+1)-2]` -/
def P15492926656494029682.Spec : Prop :=
  ∀ n, (P15492926656494029682.a n : ℤ) = A142035 (n + 1)

end A142035

/-! ## A142035.P3071674210857692352

`∩[A228228(n+1), A238477(n+1)-2]`
-/

namespace A142035.P3071674210857692352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228228 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238477 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142035.P3071674210857692352

namespace A142035

/-- `∩[A228228(n+1), A238477(n+1)-2]` -/
def P3071674210857692352.Spec : Prop :=
  ∀ n, (P3071674210857692352.a n : ℤ) = A142035 (n + 1)

end A142035

/-! ## A142035.P8493162633781357900

`∩[A033200(n+1), A151983(n+1)+2]`
-/

namespace A142035.P8493162633781357900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033200 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151983 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142035.P8493162633781357900

namespace A142035

/-- `∩[A033200(n+1), A151983(n+1)+2]` -/
def P8493162633781357900.Spec : Prop :=
  ∀ n, (P8493162633781357900.a n : ℤ) = A142035 (n + 1)

end A142035

/-! ## A142035.P11104577628684483166

`∩[A033203(n+2), A151983(n+2)+2]`
-/

namespace A142035.P11104577628684483166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033203 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151983 (n + 2) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142035.P11104577628684483166

namespace A142035

/-- `∩[A033203(n+2), A151983(n+2)+2]` -/
def P11104577628684483166.Spec : Prop :=
  ∀ n, (P11104577628684483166.a n : ℤ) = A142035 (n + 1)

end A142035

/-! ## A142035.P14845471546354603858

`∩[A170837(2*n)-2, A042999(n+2)]`
-/

namespace A142035.P14845471546354603858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170837 (2 * n) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042999 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142035.P14845471546354603858

namespace A142035

/-- `∩[A170837(2*n)-2, A042999(n+2)]` -/
def P14845471546354603858.Spec : Prop :=
  ∀ n, (P14845471546354603858.a n : ℤ) = A142035 (n + 1)

end A142035

/-! ## A142035.P16992016650414911750

`record[A020639(8*(A173773(n+1)+2)+3)]`
-/

namespace A142035.P16992016650414911750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (8 * (A173773 (n + 1) + 2) + 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142035.P16992016650414911750

namespace A142035

/-- `record[A020639(8*(A173773(n+1)+2)+3)]` -/
def P16992016650414911750.Spec : Prop :=
  ∀ n, P16992016650414911750.a n = A142035 (n + 1)

end A142035

/-! ## A142035.P4089667523683624847

`A000027(p?[A017101(4*n)])`
-/

namespace A142035.P4089667523683624847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017101 (4 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142035.P4089667523683624847

namespace A142035

/-- `A000027(p?[A017101(4*n)])` -/
def P4089667523683624847.Spec : Prop :=
  ∀ n, P4089667523683624847.a n = A142035 (n + 1)

end A142035

/-! ## A142035.P1151719482833939325

`A007913(p?[A017101(4*n)])`
-/

namespace A142035.P1151719482833939325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017101 (4 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142035.P1151719482833939325

namespace A142035

/-- `A007913(p?[A017101(4*n)])` -/
def P1151719482833939325.Spec : Prop :=
  ∀ n, P1151719482833939325.a n = A142035 (n + 1)

end A142035

/-! ## A142035.P4803650724501411042

`∩[A298360(2*n+1)+n, A000040(n+2)]`
-/

namespace A142035.P4803650724501411042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298360 (2 * n + 1) + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142035.P4803650724501411042

namespace A142035

/-- `∩[A298360(2*n+1)+n, A000040(n+2)]` -/
def P4803650724501411042.Spec : Prop :=
  ∀ n, (P4803650724501411042.a n : ℤ) = A142035 (n + 1)

end A142035

/-! ## A142035.P10914159194378096969

`∑{p}[p?[A047470(A047470(n+1)+2)], #]`
-/

namespace A142035.P10914159194378096969
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047470 (A047470 (n + 1) + 2).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A142035.P10914159194378096969

namespace A142035

/-- `∑{p}[p?[A047470(A047470(n+1)+2)], #]` -/
def P10914159194378096969.Spec : Prop :=
  ∀ n, (P10914159194378096969.a n : ℤ) = A142035 (n + 1)

end A142035

/-!
# A142036: Primes congruent to 5 mod 32.

The programs for A142036, the canonical program `A142036.P18024300388264956067` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142036 has offset 1).

The definition of A142036 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142036.P18024300388264956067

`∪[A142927(n+1), A142941(n+1)]`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A142036

/-- `∪[A142927(n+1), A142941(n+1)]` -/
def P18024300388264956067.Spec : Prop :=
  ∀ n, (P18024300388264956067.a n : ℤ) = A142036 (n + 1)

theorem P18024300388264956067.correct : P18024300388264956067.Spec := by
  intro n
  simp only [A142036, Nat.add_sub_cancel]

end A142036

/-! ## A142036.P13994746509944768565

`p?[32*n+5]`
-/

namespace A142036.P13994746509944768565
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  32 * n + 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142036.P13994746509944768565

namespace A142036

/-- `p?[32*n+5]` -/
def P13994746509944768565.Spec : Prop :=
  ∀ n, (P13994746509944768565.a n : ℤ) = A142036 (n + 1)

end A142036

/-! ## A142036.P16561727551668223117

`or(1, p?[a(n-1)+32])` with `a(0)=5`
-/

namespace A142036.P16561727551668223117
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [5] fun n f1 =>
  f1 (n - 1) + 32

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A142036.P16561727551668223117

namespace A142036

/-- `or(1, p?[a(n-1)+32])` -/
def P16561727551668223117.Spec : Prop :=
  ∀ n, (P16561727551668223117.a n : ℤ) = A142036 (n + 1)

end A142036

/-! ## A142036.P14732986796020000522

`∩[A007521(n+1), A238477(n+1)]`
-/

namespace A142036.P14732986796020000522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007521 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238477 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142036.P14732986796020000522

namespace A142036

/-- `∩[A007521(n+1), A238477(n+1)]` -/
def P14732986796020000522.Spec : Prop :=
  ∀ n, (P14732986796020000522.a n : ℤ) = A142036 (n + 1)

end A142036

/-! ## A142036.P4794543774765432809

`∩[A045366(n+1), A238477(n+1)]`
-/

namespace A142036.P4794543774765432809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045366 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238477 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142036.P4794543774765432809

namespace A142036

/-- `∩[A045366(n+1), A238477(n+1)]` -/
def P4794543774765432809.Spec : Prop :=
  ∀ n, (P4794543774765432809.a n : ℤ) = A142036 (n + 1)

end A142036

/-! ## A142036.P18320616651515958697

`∩[A127589(n+1), A238477(n+1)]`
-/

namespace A142036.P18320616651515958697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127589 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238477 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142036.P18320616651515958697

namespace A142036

/-- `∩[A127589(n+1), A238477(n+1)]` -/
def P18320616651515958697.Spec : Prop :=
  ∀ n, (P18320616651515958697.a n : ℤ) = A142036 (n + 1)

end A142036

/-! ## A142036.P1857504986284171447

`∩[A238477(n+1), A385224(n+1)]`
-/

namespace A142036.P1857504986284171447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238477 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385224 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142036.P1857504986284171447

namespace A142036

/-- `∩[A238477(n+1), A385224(n+1)]` -/
def P1857504986284171447.Spec : Prop :=
  ∀ n, (P1857504986284171447.a n : ℤ) = A142036 (n + 1)

end A142036

/-! ## A142036.P2238558914469674302

`∩[A238477(n+1), A392947(n+1)]`
-/

namespace A142036.P2238558914469674302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238477 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392947 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142036.P2238558914469674302

namespace A142036

/-- `∩[A238477(n+1), A392947(n+1)]` -/
def P2238558914469674302.Spec : Prop :=
  ∀ n, (P2238558914469674302.a n : ℤ) = A142036 (n + 1)

end A142036

/-! ## A142036.P4279172360283558821

`∩[A002144(n+1), A238477(n+1)]`
-/

namespace A142036.P4279172360283558821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238477 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142036.P4279172360283558821

namespace A142036

/-- `∩[A002144(n+1), A238477(n+1)]` -/
def P4279172360283558821.Spec : Prop :=
  ∀ n, (P4279172360283558821.a n : ℤ) = A142036 (n + 1)

end A142036

/-! ## A142036.P17260111748842041074

`∩[A002313(n+1), A238477(n+1)]`
-/

namespace A142036.P17260111748842041074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002313 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238477 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142036.P17260111748842041074

namespace A142036

/-- `∩[A002313(n+1), A238477(n+1)]` -/
def P17260111748842041074.Spec : Prop :=
  ∀ n, (P17260111748842041074.a n : ℤ) = A142036 (n + 1)

end A142036

/-! ## A142036.P11461373881294997633

`∩[A238477(n+1), A280084(n+1)]`
-/

namespace A142036.P11461373881294997633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238477 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280084 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142036.P11461373881294997633

namespace A142036

/-- `∩[A238477(n+1), A280084(n+1)]` -/
def P11461373881294997633.Spec : Prop :=
  ∀ n, (P11461373881294997633.a n : ℤ) = A142036 (n + 1)

end A142036

/-! ## A142036.P15277519059979843610

`∩[A214588(n+1), A238477(n+1)]`
-/

namespace A142036.P15277519059979843610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214588 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238477 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142036.P15277519059979843610

namespace A142036

/-- `∩[A214588(n+1), A238477(n+1)]` -/
def P15277519059979843610.Spec : Prop :=
  ∀ n, (P15277519059979843610.a n : ℤ) = A142036 (n + 1)

end A142036

/-! ## A142036.P12372036337322362920

`∩[A003628(n+1), A238477(n+1)]`
-/

namespace A142036.P12372036337322362920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003628 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238477 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142036.P12372036337322362920

namespace A142036

/-- `∩[A003628(n+1), A238477(n+1)]` -/
def P12372036337322362920.Spec : Prop :=
  ∀ n, (P12372036337322362920.a n : ℤ) = A142036 (n + 1)

end A142036

/-! ## A142036.P12409178480821414512

`∩[A045355(n+1), A238477(n+1)]`
-/

namespace A142036.P12409178480821414512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045355 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238477 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142036.P12409178480821414512

namespace A142036

/-- `∩[A045355(n+1), A238477(n+1)]` -/
def P12409178480821414512.Spec : Prop :=
  ∀ n, (P12409178480821414512.a n : ℤ) = A142036 (n + 1)

end A142036

/-! ## A142036.P12228278518107041661

`∩[A228228(n+1), A238477(n+1)]`
-/

namespace A142036.P12228278518107041661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228228 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238477 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142036.P12228278518107041661

namespace A142036

/-- `∩[A228228(n+1), A238477(n+1)]` -/
def P12228278518107041661.Spec : Prop :=
  ∀ n, (P12228278518107041661.a n : ℤ) = A142036 (n + 1)

end A142036

/-! ## A142036.P13929698418502179571

`∩[A003629(n+1), A238477(n+1)]`
-/

namespace A142036.P13929698418502179571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003629 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238477 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142036.P13929698418502179571

namespace A142036

/-- `∩[A003629(n+1), A238477(n+1)]` -/
def P13929698418502179571.Spec : Prop :=
  ∀ n, (P13929698418502179571.a n : ℤ) = A142036 (n + 1)

end A142036

/-! ## A142036.P5749075785976743281

`∩[A042999(n+1), A238477(n+1)]`
-/

namespace A142036.P5749075785976743281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042999 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238477 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142036.P5749075785976743281

namespace A142036

/-- `∩[A042999(n+1), A238477(n+1)]` -/
def P5749075785976743281.Spec : Prop :=
  ∀ n, (P5749075785976743281.a n : ℤ) = A142036 (n + 1)

end A142036

/-! ## A142036.P5026259681986804935

`∩[A055025(n+1), A238477(n+1)]`
-/

namespace A142036.P5026259681986804935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055025 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238477 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142036.P5026259681986804935

namespace A142036

/-- `∩[A055025(n+1), A238477(n+1)]` -/
def P5026259681986804935.Spec : Prop :=
  ∀ n, (P5026259681986804935.a n : ℤ) = A142036 (n + 1)

end A142036

/-! ## A142036.P18075222653105061156

`∩[A172480(n+1), A238477(n+1)]`
-/

namespace A142036.P18075222653105061156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172480 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238477 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142036.P18075222653105061156

namespace A142036

/-- `∩[A172480(n+1), A238477(n+1)]` -/
def P18075222653105061156.Spec : Prop :=
  ∀ n, (P18075222653105061156.a n : ℤ) = A142036 (n + 1)

end A142036

/-! ## A142036.P4075610872296066230

`∩[A175768(n+1), A238477(n+1)]`
-/

namespace A142036.P4075610872296066230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175768 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238477 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142036.P4075610872296066230

namespace A142036

/-- `∩[A175768(n+1), A238477(n+1)]` -/
def P4075610872296066230.Spec : Prop :=
  ∀ n, (P4075610872296066230.a n : ℤ) = A142036 (n + 1)

end A142036

/-!
# A142037: Primes congruent to 7 mod 32.

The programs for A142037, the canonical program `A142037.P2683542611358419371` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142037 has offset 1).

The definition of A142037 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142037.P2683542611358419371

`∪[A142928(n+1), A142942(n+1)]`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A142037

/-- `∪[A142928(n+1), A142942(n+1)]` -/
def P2683542611358419371.Spec : Prop :=
  ∀ n, (P2683542611358419371.a n : ℤ) = A142037 (n + 1)

theorem P2683542611358419371.correct : P2683542611358419371.Spec := by
  intro n
  simp only [A142037, Nat.add_sub_cancel]

end A142037

/-! ## A142037.P10912447359389415108

`p?[32*n+7]`
-/

namespace A142037.P10912447359389415108
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  32 * n + 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142037.P10912447359389415108

namespace A142037

/-- `p?[32*n+7]` -/
def P10912447359389415108.Spec : Prop :=
  ∀ n, (P10912447359389415108.a n : ℤ) = A142037 (n + 1)

end A142037

/-! ## A142037.P7431385403379829808

`or(1, p?[a(n-2)+32])` with `a(0)=7, a(1)=0`
-/

namespace A142037.P7431385403379829808
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [7, 0] fun n f1 =>
  f1 (n - 2) + 32

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A142037.P7431385403379829808

namespace A142037

/-- `or(1, p?[a(n-2)+32])` -/
def P7431385403379829808.Spec : Prop :=
  ∀ n, (P7431385403379829808.a n : ℤ) = A142037 (n + 1)

end A142037

/-! ## A142037.P2080258683710057429

`∩[A214588(n+1), A238477(n+1)+2]`
-/

namespace A142037.P2080258683710057429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214588 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238477 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142037.P2080258683710057429

namespace A142037

/-- `∩[A214588(n+1), A238477(n+1)+2]` -/
def P2080258683710057429.Spec : Prop :=
  ∀ n, (P2080258683710057429.a n : ℤ) = A142037 (n + 1)

end A142037

/-! ## A142037.P10161413040162458836

`∩[A003628(n+1), A238477(n+1)+2]`
-/

namespace A142037.P10161413040162458836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003628 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238477 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142037.P10161413040162458836

namespace A142037

/-- `∩[A003628(n+1), A238477(n+1)+2]` -/
def P10161413040162458836.Spec : Prop :=
  ∀ n, (P10161413040162458836.a n : ℤ) = A142037 (n + 1)

end A142037

/-! ## A142037.P10947874267421466326

`∩[A045355(n+1), A238477(n+1)+2]`
-/

namespace A142037.P10947874267421466326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045355 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238477 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142037.P10947874267421466326

namespace A142037

/-- `∩[A045355(n+1), A238477(n+1)+2]` -/
def P10947874267421466326.Spec : Prop :=
  ∀ n, (P10947874267421466326.a n : ℤ) = A142037 (n + 1)

end A142037

/-! ## A142037.P17140156111551989421

`∩[A216738(n+1), A238477(n+1)+2]`
-/

namespace A142037.P17140156111551989421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216738 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238477 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142037.P17140156111551989421

namespace A142037

/-- `∩[A216738(n+1), A238477(n+1)+2]` -/
def P17140156111551989421.Spec : Prop :=
  ∀ n, (P17140156111551989421.a n : ℤ) = A142037 (n + 1)

end A142037

/-! ## A142037.P8622561562363888688

`∩[A167135(n+1), A267985(n+1)+n]`
-/

namespace A142037.P8622561562363888688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167135 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267985 (n + 1) + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142037.P8622561562363888688

namespace A142037

/-- `∩[A167135(n+1), A267985(n+1)+n]` -/
def P8622561562363888688.Spec : Prop :=
  ∀ n, (P8622561562363888688.a n : ℤ) = A142037 (n + 1)

end A142037

/-! ## A142037.P9450555205787404132

`∩[A170837(2*n)+2, A003628(n+2)]`
-/

namespace A142037.P9450555205787404132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170837 (2 * n) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003628 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142037.P9450555205787404132

namespace A142037

/-- `∩[A170837(2*n)+2, A003628(n+2)]` -/
def P9450555205787404132.Spec : Prop :=
  ∀ n, (P9450555205787404132.a n : ℤ) = A142037 (n + 1)

end A142037

/-! ## A142037.P7949113036076983266

`∩[A170837(2*n)+2, A045355(n+2)]`
-/

namespace A142037.P7949113036076983266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170837 (2 * n) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045355 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142037.P7949113036076983266

namespace A142037

/-- `∩[A170837(2*n)+2, A045355(n+2)]` -/
def P7949113036076983266.Spec : Prop :=
  ∀ n, (P7949113036076983266.a n : ℤ) = A142037 (n + 1)

end A142037

/-! ## A142037.P1644329778350238436

`record[A020639((char[1]+1)*(32*n+5)+2)]`
-/

namespace A142037.P1644329778350238436
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (((if ∃ j, f2 j = n then 1 else 0) + 1) * (32 * n + 5) + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142037.P1644329778350238436

namespace A142037

/-- `record[A020639((char[1]+1)*(32*n+5)+2)]` -/
def P1644329778350238436.Spec : Prop :=
  ∀ n, P1644329778350238436.a n = A142037 (n + 1)

end A142037

/-! ## A142037.P12010957441872730904

`record[A008472(ceil(2/(n+1))+32*n+38)]`
-/

namespace A142037.P12010957441872730904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (⌈2 / (n + 1 : ℚ)⌉ + (32 * n : ℤ) + 38).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142037.P12010957441872730904

namespace A142037

/-- `record[A008472(ceil(2/(n+1))+32*n+38)]` -/
def P12010957441872730904.Spec : Prop :=
  ∀ n, P12010957441872730904.a n = A142037 (n + 1)

end A142037

/-! ## A142037.P4266384332683165418

`∩[A272100(2*(n+1))-A272100(n+2), A002145(n+2)]`
-/

namespace A142037.P4266384332683165418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272100 (2 * (n + 1)) - A272100 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002145 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142037.P4266384332683165418

namespace A142037

/-- `∩[A272100(2*(n+1))-A272100(n+2), A002145(n+2)]` -/
def P4266384332683165418.Spec : Prop :=
  ∀ n, (P4266384332683165418.a n : ℤ) = A142037 (n + 1)

end A142037

/-! ## A142037.P3499767823162005516

`∩[A272100(2*(n+1))-A272100(n+2), A045326(n+2)]`
-/

namespace A142037.P3499767823162005516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272100 (2 * (n + 1)) - A272100 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045326 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142037.P3499767823162005516

namespace A142037

/-- `∩[A272100(2*(n+1))-A272100(n+2), A045326(n+2)]` -/
def P3499767823162005516.Spec : Prop :=
  ∀ n, (P3499767823162005516.a n : ℤ) = A142037 (n + 1)

end A142037

/-! ## A142037.P18077493754268705251

`∩[A272100(2*(n+1))-A272100(n+2), A049098(n+2)]`
-/

namespace A142037.P18077493754268705251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272100 (2 * (n + 1)) - A272100 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049098 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142037.P18077493754268705251

namespace A142037

/-- `∩[A272100(2*(n+1))-A272100(n+2), A049098(n+2)]` -/
def P18077493754268705251.Spec : Prop :=
  ∀ n, (P18077493754268705251.a n : ℤ) = A142037 (n + 1)

end A142037

/-! ## A142037.P15440946138448028990

`∩[A272100(2*(n+1))-A272100(n+2), A214588(n+2)]`
-/

namespace A142037.P15440946138448028990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272100 (2 * (n + 1)) - A272100 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214588 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142037.P15440946138448028990

namespace A142037

/-- `∩[A272100(2*(n+1))-A272100(n+2), A214588(n+2)]` -/
def P15440946138448028990.Spec : Prop :=
  ∀ n, (P15440946138448028990.a n : ℤ) = A142037 (n + 1)

end A142037

/-! ## A142037.P13669880607511728140

`∩[A170837(2*n)+2, A095283(n+2)]`
-/

namespace A142037.P13669880607511728140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170837 (2 * n) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095283 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142037.P13669880607511728140

namespace A142037

/-- `∩[A170837(2*n)+2, A095283(n+2)]` -/
def P13669880607511728140.Spec : Prop :=
  ∀ n, (P13669880607511728140.a n : ℤ) = A142037 (n + 1)

end A142037

/-! ## A142037.P5634017158951503021

`∩[A296716(2*n+1)+n, A004139(n+2)]`
-/

namespace A142037.P5634017158951503021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296716 (2 * n + 1) + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142037.P5634017158951503021

namespace A142037

/-- `∩[A296716(2*n+1)+n, A004139(n+2)]` -/
def P5634017158951503021.Spec : Prop :=
  ∀ n, (P5634017158951503021.a n : ℤ) = A142037 (n + 1)

end A142037

/-! ## A142037.P8002353957816995460

`∩[A296716(2*n+1)+n, A000040(n+2)]`
-/

namespace A142037.P8002353957816995460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296716 (2 * n + 1) + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142037.P8002353957816995460

namespace A142037

/-- `∩[A296716(2*n+1)+n, A000040(n+2)]` -/
def P8002353957816995460.Spec : Prop :=
  ∀ n, (P8002353957816995460.a n : ℤ) = A142037 (n + 1)

end A142037

/-! ## A142037.P11061835816834142067

`∩[A298360(2*(n+1))+n, A000040(n+2)]`
-/

namespace A142037.P11061835816834142067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298360 (2 * (n + 1)) + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142037.P11061835816834142067

namespace A142037

/-- `∩[A298360(2*(n+1))+n, A000040(n+2)]` -/
def P11061835816834142067.Spec : Prop :=
  ∀ n, (P11061835816834142067.a n : ℤ) = A142037 (n + 1)

end A142037

/-!
# A142038: Primes congruent to 9 mod 32.

The programs for A142038, the canonical program `A142038.P4402446302083685320` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142038 has offset 1).

The definition of A142038 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142038.P4402446302083685320

`∪[A142929(n+1), A142943(n+1)]`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A142038

/-- `∪[A142929(n+1), A142943(n+1)]` -/
def P4402446302083685320.Spec : Prop :=
  ∀ n, (P4402446302083685320.a n : ℤ) = A142038 (n + 1)

theorem P4402446302083685320.correct : P4402446302083685320.Spec := by
  intro n
  simp only [A142038, Nat.add_sub_cancel]

end A142038

/-! ## A142038.P11007174719067655429

`∩[A105126(n+1), A214643(n+1)]`
-/

namespace A142038.P11007174719067655429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105126 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214643 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142038.P11007174719067655429

namespace A142038

/-- `∩[A105126(n+1), A214643(n+1)]` -/
def P11007174719067655429.Spec : Prop :=
  ∀ n, (P11007174719067655429.a n : ℤ) = A142038 (n + 1)

end A142038

/-! ## A142038.P10558552917482289395

`p?[32*n+9]`
-/

namespace A142038.P10558552917482289395
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  32 * n + 9

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142038.P10558552917482289395

namespace A142038

/-- `p?[32*n+9]` -/
def P10558552917482289395.Spec : Prop :=
  ∀ n, (P10558552917482289395.a n : ℤ) = A142038 (n + 1)

end A142038

/-! ## A142038.P11052204792736695423

`∩[A106839(2*n)-2, A033200(n+2)]`
-/

namespace A142038.P11052204792736695423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106839 (2 * n) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033200 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142038.P11052204792736695423

namespace A142038

/-- `∩[A106839(2*n)-2, A033200(n+2)]` -/
def P11052204792736695423.Spec : Prop :=
  ∀ n, (P11052204792736695423.a n : ℤ) = A142038 (n + 1)

end A142038

/-! ## A142038.P2186101448998411482

`∩[A106839(2*n)-2, A033203(n+2)]`
-/

namespace A142038.P2186101448998411482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106839 (2 * n) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033203 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142038.P2186101448998411482

namespace A142038

/-- `∩[A106839(2*n)-2, A033203(n+2)]` -/
def P2186101448998411482.Spec : Prop :=
  ∀ n, (P2186101448998411482.a n : ℤ) = A142038 (n + 1)

end A142038

/-! ## A142038.P3447293066921818994

`record[A020639(Δ[(2*(n+1)+2*n+1)²]+1)]`
-/

namespace A142038.P3447293066921818994
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) + (2 * n + 1)) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 ((f2 (n + 1) : ℤ) - (f2 n : ℤ) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142038.P3447293066921818994

namespace A142038

/-- `record[A020639(Δ[(2*(n+1)+2*n+1)²]+1)]` -/
def P3447293066921818994.Spec : Prop :=
  ∀ n, P3447293066921818994.a n = A142038 (n + 1)

end A142038

/-! ## A142038.P2985802332750789151

`record[A006530(Δ[A004767(n)²]+1)]`
-/

namespace A142038.P2985802332750789151
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004767 n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (f2 (n + 1) - f2 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142038.P2985802332750789151

namespace A142038

/-- `record[A006530(Δ[A004767(n)²]+1)]` -/
def P2985802332750789151.Spec : Prop :=
  ∀ n, P2985802332750789151.a n = A142038 (n + 1)

end A142038

/-! ## A142038.P17491277646158917251

`filter[A317332(2*n+1), A010051(#)]`
-/

namespace A142038.P17491277646158917251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317332 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A142038.P17491277646158917251

namespace A142038

/-- `filter[A317332(2*n+1), A010051(#)]` -/
def P17491277646158917251.Spec : Prop :=
  ∀ n, P17491277646158917251.a n = A142038 (n + 1)

end A142038

/-! ## A142038.P12497163565174607739

`record[A006530(Δ[2*A046092(2*n+1)]+1)]`
-/

namespace A142038.P12497163565174607739
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A046092 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (f2 (n + 1) - f2 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142038.P12497163565174607739

namespace A142038

/-- `record[A006530(Δ[2*A046092(2*n+1)]+1)]` -/
def P12497163565174607739.Spec : Prop :=
  ∀ n, P12497163565174607739.a n = A142038 (n + 1)

end A142038

/-! ## A142038.P13647409083182982550

`∩[A105126(n+1), A317332(n+1)]`
-/

namespace A142038.P13647409083182982550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105126 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317332 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142038.P13647409083182982550

namespace A142038

/-- `∩[A105126(n+1), A317332(n+1)]` -/
def P13647409083182982550.Spec : Prop :=
  ∀ n, (P13647409083182982550.a n : ℤ) = A142038 (n + 1)

end A142038

/-! ## A142038.P5098414859439449952

`record[A006530(Δ[A005563(4*n)]+17)]`
-/

namespace A142038.P5098414859439449952
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005563 (4 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (f2 (n + 1) - f2 n + 17).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142038.P5098414859439449952

namespace A142038

/-- `record[A006530(Δ[A005563(4*n)]+17)]` -/
def P5098414859439449952.Spec : Prop :=
  ∀ n, P5098414859439449952.a n = A142038 (n + 1)

end A142038

/-! ## A142038.P15263975341287611836

`filter[A105126(n+1), A073089(#)]`
-/

namespace A142038.P15263975341287611836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105126 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A073089 (f1 j).toNat = 1) n)

end

end A142038.P15263975341287611836

namespace A142038

/-- `filter[A105126(n+1), A073089(#)]` -/
def P15263975341287611836.Spec : Prop :=
  ∀ n, P15263975341287611836.a n = A142038 (n + 1)

end A142038

/-! ## A142038.P10218011489972922928

`filter[A317332(2*n+1), A323152(#)]`
-/

namespace A142038.P10218011489972922928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317332 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323152 (f1 j).toNat = 1) n)

end

end A142038.P10218011489972922928

namespace A142038

/-- `filter[A317332(2*n+1), A323152(#)]` -/
def P10218011489972922928.Spec : Prop :=
  ∀ n, P10218011489972922928.a n = A142038 (n + 1)

end A142038

/-! ## A142038.P7358563165031873233

`filter[A317332(2*n+1), A323153(#)]`
-/

namespace A142038.P7358563165031873233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317332 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323153 (f1 j).toNat = 1) n)

end

end A142038.P7358563165031873233

namespace A142038

/-- `filter[A317332(2*n+1), A323153(#)]` -/
def P7358563165031873233.Spec : Prop :=
  ∀ n, P7358563165031873233.a n = A142038 (n + 1)

end A142038

/-! ## A142038.P9942823509944129086

`filter[A317332(2*n+1), A353817(#)]`
-/

namespace A142038.P9942823509944129086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317332 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353817 (f1 j).toNat = 1) n)

end

end A142038.P9942823509944129086

namespace A142038

/-- `filter[A317332(2*n+1), A353817(#)]` -/
def P9942823509944129086.Spec : Prop :=
  ∀ n, P9942823509944129086.a n = A142038 (n + 1)

end A142038

/-! ## A142038.P11292351160803286481

`∩[A214643(n+1), A296368(n)]`
-/

namespace A142038.P11292351160803286481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214643 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296368 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142038.P11292351160803286481

namespace A142038

/-- `∩[A214643(n+1), A296368(n)]` -/
def P11292351160803286481.Spec : Prop :=
  ∀ n, (P11292351160803286481.a n : ℤ) = A142038 (n + 1)

end A142038

/-! ## A142038.P17432437237490050509

`∩[A214643(n+1), A214865(n+1)]`
-/

namespace A142038.P17432437237490050509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214643 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214865 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142038.P17432437237490050509

namespace A142038

/-- `∩[A214643(n+1), A214865(n+1)]` -/
def P17432437237490050509.Spec : Prop :=
  ∀ n, (P17432437237490050509.a n : ℤ) = A142038 (n + 1)

end A142038

/-! ## A142038.P15932061467841753041

`∩[A073088(n+1)+2, A105126(n+1)]`
-/

namespace A142038.P15932061467841753041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073088 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105126 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142038.P15932061467841753041

namespace A142038

/-- `∩[A073088(n+1)+2, A105126(n+1)]` -/
def P15932061467841753041.Spec : Prop :=
  ∀ n, (P15932061467841753041.a n : ℤ) = A142038 (n + 1)

end A142038

/-! ## A142038.P11637122248808643789

`record[A006530(A004768(A004768(n))+1)]`
-/

namespace A142038.P11637122248808643789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A004768 (A004768 n).toNat + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142038.P11637122248808643789

namespace A142038

/-- `record[A006530(A004768(A004768(n))+1)]` -/
def P11637122248808643789.Spec : Prop :=
  ∀ n, P11637122248808643789.a n = A142038 (n + 1)

end A142038

/-! ## A142038.P16347460715783409752

`record[A006530(A017089(A017089(n+1)))]`
-/

namespace A142038.P16347460715783409752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A017089 (A017089 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142038.P16347460715783409752

namespace A142038

/-- `record[A006530(A017089(A017089(n+1)))]` -/
def P16347460715783409752.Spec : Prop :=
  ∀ n, P16347460715783409752.a n = A142038 (n + 1)

end A142038

/-!
# A142039: Primes congruent to 11 mod 32.

The programs for A142039, the canonical program `A142039.P4379301169805079559` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142039 has offset 1).

The definition of A142039 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142039.P4379301169805079559

`∪[A142930(n+1), A142944(n+1)]`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A142039

/-- `∪[A142930(n+1), A142944(n+1)]` -/
def P4379301169805079559.Spec : Prop :=
  ∀ n, (P4379301169805079559.a n : ℤ) = A142039 (n + 1)

theorem P4379301169805079559.correct : P4379301169805079559.Spec := by
  intro n
  simp only [A142039, Nat.add_sub_cancel]

end A142039

/-! ## A142039.P14717879926199004049

`p?[32*n+11]`
-/

namespace A142039.P14717879926199004049
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  32 * n + 11

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142039.P14717879926199004049

namespace A142039

/-- `p?[32*n+11]` -/
def P14717879926199004049.Spec : Prop :=
  ∀ n, (P14717879926199004049.a n : ℤ) = A142039 (n + 1)

end A142039

/-! ## A142039.P2022721621098238543

`∩[A106839(2*n), A007520(n+1)]`
-/

namespace A142039.P2022721621098238543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106839 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007520 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142039.P2022721621098238543

namespace A142039

/-- `∩[A106839(2*n), A007520(n+1)]` -/
def P2022721621098238543.Spec : Prop :=
  ∀ n, (P2022721621098238543.a n : ℤ) = A142039 (n + 1)

end A142039

/-! ## A142039.P2837208473045505166

`∩[A106839(2*n), A045339(n+1)]`
-/

namespace A142039.P2837208473045505166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106839 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045339 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142039.P2837208473045505166

namespace A142039

/-- `∩[A106839(2*n), A045339(n+1)]` -/
def P2837208473045505166.Spec : Prop :=
  ∀ n, (P2837208473045505166.a n : ℤ) = A142039 (n + 1)

end A142039

/-! ## A142039.P12962659497377839127

`∩[A106839(2*n), A051073(n+2)]`
-/

namespace A142039.P12962659497377839127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106839 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051073 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142039.P12962659497377839127

namespace A142039

/-- `∩[A106839(2*n), A051073(n+2)]` -/
def P12962659497377839127.Spec : Prop :=
  ∀ n, (P12962659497377839127.a n : ℤ) = A142039 (n + 1)

end A142039

/-! ## A142039.P4627971695380605862

`∩[A002145(n+1), A272100(n+1)-1]`
-/

namespace A142039.P4627971695380605862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272100 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142039.P4627971695380605862

namespace A142039

/-- `∩[A002145(n+1), A272100(n+1)-1]` -/
def P4627971695380605862.Spec : Prop :=
  ∀ n, (P4627971695380605862.a n : ℤ) = A142039 (n + 1)

end A142039

/-! ## A142039.P1642776962810177455

`∩[A003629(n+1), A272100(n+1)-1]`
-/

namespace A142039.P1642776962810177455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003629 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272100 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142039.P1642776962810177455

namespace A142039

/-- `∩[A003629(n+1), A272100(n+1)-1]` -/
def P1642776962810177455.Spec : Prop :=
  ∀ n, (P1642776962810177455.a n : ℤ) = A142039 (n + 1)

end A142039

/-! ## A142039.P14483685892020047782

`∩[A007520(n+1), A272100(n+1)-1]`
-/

namespace A142039.P14483685892020047782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007520 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272100 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142039.P14483685892020047782

namespace A142039

/-- `∩[A007520(n+1), A272100(n+1)-1]` -/
def P14483685892020047782.Spec : Prop :=
  ∀ n, (P14483685892020047782.a n : ℤ) = A142039 (n + 1)

end A142039

/-! ## A142039.P16367191576749569986

`∩[A033200(n+1), A272100(n+1)-1]`
-/

namespace A142039.P16367191576749569986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033200 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272100 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142039.P16367191576749569986

namespace A142039

/-- `∩[A033200(n+1), A272100(n+1)-1]` -/
def P16367191576749569986.Spec : Prop :=
  ∀ n, (P16367191576749569986.a n : ℤ) = A142039 (n + 1)

end A142039

/-! ## A142039.P7105734835678274542

`∩[A033203(n+1), A272100(n+1)-1]`
-/

namespace A142039.P7105734835678274542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033203 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272100 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142039.P7105734835678274542

namespace A142039

/-- `∩[A033203(n+1), A272100(n+1)-1]` -/
def P7105734835678274542.Spec : Prop :=
  ∀ n, (P7105734835678274542.a n : ℤ) = A142039 (n + 1)

end A142039

/-! ## A142039.P5411304148880782853

`∩[A040100(n+1), A272100(n+1)-1]`
-/

namespace A142039.P5411304148880782853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040100 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272100 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142039.P5411304148880782853

namespace A142039

/-- `∩[A040100(n+1), A272100(n+1)-1]` -/
def P5411304148880782853.Spec : Prop :=
  ∀ n, (P5411304148880782853.a n : ℤ) = A142039 (n + 1)

end A142039

/-! ## A142039.P3765038352422608409

`∩[A040144(n+1), A272100(n+1)-1]`
-/

namespace A142039.P3765038352422608409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272100 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142039.P3765038352422608409

namespace A142039

/-- `∩[A040144(n+1), A272100(n+1)-1]` -/
def P3765038352422608409.Spec : Prop :=
  ∀ n, (P3765038352422608409.a n : ℤ) = A142039 (n + 1)

end A142039

/-! ## A142039.P17222199812602041880

`∩[A040993(n+1), A272100(n+1)-1]`
-/

namespace A142039.P17222199812602041880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040993 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272100 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142039.P17222199812602041880

namespace A142039

/-- `∩[A040993(n+1), A272100(n+1)-1]` -/
def P17222199812602041880.Spec : Prop :=
  ∀ n, (P17222199812602041880.a n : ℤ) = A142039 (n + 1)

end A142039

/-! ## A142039.P15447636957964879204

`∩[A042999(n+1), A272100(n+1)-1]`
-/

namespace A142039.P15447636957964879204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042999 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272100 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142039.P15447636957964879204

namespace A142039

/-- `∩[A042999(n+1), A272100(n+1)-1]` -/
def P15447636957964879204.Spec : Prop :=
  ∀ n, (P15447636957964879204.a n : ℤ) = A142039 (n + 1)

end A142039

/-! ## A142039.P7546476060079472253

`∩[A045326(n+1), A272100(n+1)-1]`
-/

namespace A142039.P7546476060079472253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045326 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272100 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142039.P7546476060079472253

namespace A142039

/-- `∩[A045326(n+1), A272100(n+1)-1]` -/
def P7546476060079472253.Spec : Prop :=
  ∀ n, (P7546476060079472253.a n : ℤ) = A142039 (n + 1)

end A142039

/-! ## A142039.P1776237809079473657

`∩[A045339(n+1), A272100(n+1)-1]`
-/

namespace A142039.P1776237809079473657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045339 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272100 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142039.P1776237809079473657

namespace A142039

/-- `∩[A045339(n+1), A272100(n+1)-1]` -/
def P1776237809079473657.Spec : Prop :=
  ∀ n, (P1776237809079473657.a n : ℤ) = A142039 (n + 1)

end A142039

/-! ## A142039.P15511783467301123525

`∩[A049098(n+1), A272100(n+1)-1]`
-/

namespace A142039.P15511783467301123525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049098 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272100 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142039.P15511783467301123525

namespace A142039

/-- `∩[A049098(n+1), A272100(n+1)-1]` -/
def P15511783467301123525.Spec : Prop :=
  ∀ n, (P15511783467301123525.a n : ℤ) = A142039 (n + 1)

end A142039

/-! ## A142039.P5288349894492523954

`∩[A059263(n+1), A272100(n+1)-1]`
-/

namespace A142039.P5288349894492523954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059263 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272100 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142039.P5288349894492523954

namespace A142039

/-- `∩[A059263(n+1), A272100(n+1)-1]` -/
def P5288349894492523954.Spec : Prop :=
  ∀ n, (P5288349894492523954.a n : ℤ) = A142039 (n + 1)

end A142039

/-! ## A142039.P4442827345282772705

`∩[A095282(n+1), A272100(n+1)-1]`
-/

namespace A142039.P4442827345282772705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095282 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272100 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142039.P4442827345282772705

namespace A142039

/-- `∩[A095282(n+1), A272100(n+1)-1]` -/
def P4442827345282772705.Spec : Prop :=
  ∀ n, (P4442827345282772705.a n : ℤ) = A142039 (n + 1)

end A142039

/-! ## A142039.P18011515823753308592

`∩[A106839(2*n), A051077(n+2)]`
-/

namespace A142039.P18011515823753308592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106839 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051077 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142039.P18011515823753308592

namespace A142039

/-- `∩[A106839(2*n), A051077(n+2)]` -/
def P18011515823753308592.Spec : Prop :=
  ∀ n, (P18011515823753308592.a n : ℤ) = A142039 (n + 1)

end A142039

/-!
# A142040: Primes congruent to 13 mod 32.

The programs for A142040, the canonical program `A142040.P11145662148218653823` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142040 has offset 1).

The definition of A142040 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142040.P11145662148218653823

`∪[A142931(n+1), A142945(n+1)]`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A142040

/-- `∪[A142931(n+1), A142945(n+1)]` -/
def P11145662148218653823.Spec : Prop :=
  ∀ n, (P11145662148218653823.a n : ℤ) = A142040 (n + 1)

theorem P11145662148218653823.correct : P11145662148218653823.Spec := by
  intro n
  simp only [A142040, Nat.add_sub_cancel]

end A142040

/-! ## A142040.P2040022489169456932

`p?[4*8*n+13]`
-/

namespace A142040.P2040022489169456932
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (8 * n) + 13

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142040.P2040022489169456932

namespace A142040

/-- `p?[4*8*n+13]` -/
def P2040022489169456932.Spec : Prop :=
  ∀ n, (P2040022489169456932.a n : ℤ) = A142040 (n + 1)

end A142040

/-! ## A142040.P12508340489336972039

`∩[A003628(n+1), A143031(n+1)-2]`
-/

namespace A142040.P12508340489336972039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003628 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143031 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142040.P12508340489336972039

namespace A142040

/-- `∩[A003628(n+1), A143031(n+1)-2]` -/
def P12508340489336972039.Spec : Prop :=
  ∀ n, (P12508340489336972039.a n : ℤ) = A142040 (n + 1)

end A142040

/-! ## A142040.P5727218429994292147

`∩[A045355(n+1), A143031(n+1)-2]`
-/

namespace A142040.P5727218429994292147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045355 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143031 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142040.P5727218429994292147

namespace A142040

/-- `∩[A045355(n+1), A143031(n+1)-2]` -/
def P5727218429994292147.Spec : Prop :=
  ∀ n, (P5727218429994292147.a n : ℤ) = A142040 (n + 1)

end A142040

/-! ## A142040.P8678055217817606805

`∩[A082285(2*n), A007521(n+2)]`
-/

namespace A142040.P8678055217817606805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082285 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007521 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142040.P8678055217817606805

namespace A142040

/-- `∩[A082285(2*n), A007521(n+2)]` -/
def P8678055217817606805.Spec : Prop :=
  ∀ n, (P8678055217817606805.a n : ℤ) = A142040 (n + 1)

end A142040

/-! ## A142040.P13107027192817021757

`∩[A082285(2*n), A045366(n+2)]`
-/

namespace A142040.P13107027192817021757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082285 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045366 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142040.P13107027192817021757

namespace A142040

/-- `∩[A082285(2*n), A045366(n+2)]` -/
def P13107027192817021757.Spec : Prop :=
  ∀ n, (P13107027192817021757.a n : ℤ) = A142040 (n + 1)

end A142040

/-! ## A142040.P13626300394621026203

`record[p?[A082285(A000265(n+1)-1)]]`
-/

namespace A142040.P13626300394621026203
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082285 (A000265 (n + 1) - 1).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142040.P13626300394621026203

namespace A142040

/-- `record[p?[A082285(A000265(n+1)-1)]]` -/
def P13626300394621026203.Spec : Prop :=
  ∀ n, P13626300394621026203.a n = A142040 (n + 1)

end A142040

/-! ## A142040.P447567139337112463

`∩[A003629(n+1), A272100(n+1)+1]`
-/

namespace A142040.P447567139337112463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003629 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272100 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142040.P447567139337112463

namespace A142040

/-- `∩[A003629(n+1), A272100(n+1)+1]` -/
def P447567139337112463.Spec : Prop :=
  ∀ n, (P447567139337112463.a n : ℤ) = A142040 (n + 1)

end A142040

/-! ## A142040.P17783694668348029490

`∩[A040100(n+1), A272100(n+1)+1]`
-/

namespace A142040.P17783694668348029490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040100 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272100 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142040.P17783694668348029490

namespace A142040

/-- `∩[A040100(n+1), A272100(n+1)+1]` -/
def P17783694668348029490.Spec : Prop :=
  ∀ n, (P17783694668348029490.a n : ℤ) = A142040 (n + 1)

end A142040

/-! ## A142040.P2968808301491511108

`∩[A040144(n+1), A272100(n+1)+1]`
-/

namespace A142040.P2968808301491511108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272100 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142040.P2968808301491511108

namespace A142040

/-- `∩[A040144(n+1), A272100(n+1)+1]` -/
def P2968808301491511108.Spec : Prop :=
  ∀ n, (P2968808301491511108.a n : ℤ) = A142040 (n + 1)

end A142040

/-! ## A142040.P6629143298153597327

`∩[A040993(n+1), A272100(n+1)+1]`
-/

namespace A142040.P6629143298153597327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040993 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272100 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142040.P6629143298153597327

namespace A142040

/-- `∩[A040993(n+1), A272100(n+1)+1]` -/
def P6629143298153597327.Spec : Prop :=
  ∀ n, (P6629143298153597327.a n : ℤ) = A142040 (n + 1)

end A142040

/-! ## A142040.P18100541954348622541

`∩[A042999(n+1), A272100(n+1)+1]`
-/

namespace A142040.P18100541954348622541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042999 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272100 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142040.P18100541954348622541

namespace A142040

/-- `∩[A042999(n+1), A272100(n+1)+1]` -/
def P18100541954348622541.Spec : Prop :=
  ∀ n, (P18100541954348622541.a n : ℤ) = A142040 (n + 1)

end A142040

/-! ## A142040.P7550030011304391745

`∩[A059263(n+1), A272100(n+1)+1]`
-/

namespace A142040.P7550030011304391745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059263 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272100 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142040.P7550030011304391745

namespace A142040

/-- `∩[A059263(n+1), A272100(n+1)+1]` -/
def P7550030011304391745.Spec : Prop :=
  ∀ n, (P7550030011304391745.a n : ℤ) = A142040 (n + 1)

end A142040

/-! ## A142040.P799905773382491200

`∩[A082285(2*n), A002144(n+2)]`
-/

namespace A142040.P799905773382491200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082285 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142040.P799905773382491200

namespace A142040

/-- `∩[A082285(2*n), A002144(n+2)]` -/
def P799905773382491200.Spec : Prop :=
  ∀ n, (P799905773382491200.a n : ℤ) = A142040 (n + 1)

end A142040

/-! ## A142040.P8481071271369805682

`∩[A082285(2*n), A002313(n+2)]`
-/

namespace A142040.P8481071271369805682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082285 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002313 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142040.P8481071271369805682

namespace A142040

/-- `∩[A082285(2*n), A002313(n+2)]` -/
def P8481071271369805682.Spec : Prop :=
  ∀ n, (P8481071271369805682.a n : ℤ) = A142040 (n + 1)

end A142040

/-! ## A142040.P6020727184083732747

`∩[A082285(2*n), A003628(n+2)]`
-/

namespace A142040.P6020727184083732747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082285 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003628 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142040.P6020727184083732747

namespace A142040

/-- `∩[A082285(2*n), A003628(n+2)]` -/
def P6020727184083732747.Spec : Prop :=
  ∀ n, (P6020727184083732747.a n : ℤ) = A142040 (n + 1)

end A142040

/-! ## A142040.P17620931090389993955

`∩[A082285(2*n), A045355(n+2)]`
-/

namespace A142040.P17620931090389993955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082285 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045355 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142040.P17620931090389993955

namespace A142040

/-- `∩[A082285(2*n), A045355(n+2)]` -/
def P17620931090389993955.Spec : Prop :=
  ∀ n, (P17620931090389993955.a n : ℤ) = A142040 (n + 1)

end A142040

/-! ## A142040.P8566512057427295664

`∩[A000040(n+1), A248474(n+1)+n]`
-/

namespace A142040.P8566512057427295664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248474 (n + 1) + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142040.P8566512057427295664

namespace A142040

/-- `∩[A000040(n+1), A248474(n+1)+n]` -/
def P8566512057427295664.Spec : Prop :=
  ∀ n, (P8566512057427295664.a n : ℤ) = A142040 (n + 1)

end A142040

/-! ## A142040.P13909692852184598993

`∩[A006005(n+1), A248474(n+1)+n]`
-/

namespace A142040.P13909692852184598993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248474 (n + 1) + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142040.P13909692852184598993

namespace A142040

/-- `∩[A006005(n+1), A248474(n+1)+n]` -/
def P13909692852184598993.Spec : Prop :=
  ∀ n, (P13909692852184598993.a n : ℤ) = A142040 (n + 1)

end A142040

/-! ## A142040.P8122159292411909342

`∩[A082285(2*n), A003629(n+2)]`
-/

namespace A142040.P8122159292411909342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082285 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003629 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142040.P8122159292411909342

namespace A142040

/-- `∩[A082285(2*n), A003629(n+2)]` -/
def P8122159292411909342.Spec : Prop :=
  ∀ n, (P8122159292411909342.a n : ℤ) = A142040 (n + 1)

end A142040

/-!
# A142041: Primes congruent to 15 mod 32.

The programs for A142041, the canonical program `A142041.P16073640399214139543` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142041 has offset 1).

The definition of A142041 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142041.P16073640399214139543

`∪[A142932(n+1), A142946(n+1)]`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A142041

/-- `∪[A142932(n+1), A142946(n+1)]` -/
def P16073640399214139543.Spec : Prop :=
  ∀ n, (P16073640399214139543.a n : ℤ) = A142041 (n + 1)

theorem P16073640399214139543.correct : P16073640399214139543.Spec := by
  intro n
  simp only [A142041, Nat.add_sub_cancel]

end A142041

/-! ## A142041.P10322532384357032227

`p?[a(n-1)+32]` with `a(0)=15`
-/

namespace A142041.P10322532384357032227
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [15] fun n f1 =>
  f1 (n - 1) + 32

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142041.P10322532384357032227

namespace A142041

/-- `p?[a(n-1)+32]` -/
def P10322532384357032227.Spec : Prop :=
  ∀ n, (P10322532384357032227.a n : ℤ) = A142041 (n + 1)

end A142041

/-! ## A142041.P4180076115367864690

`p?[16*(2*n+1)-1]`
-/

namespace A142041.P4180076115367864690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (16 * (2 * n + 1) : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142041.P4180076115367864690

namespace A142041

/-- `p?[16*(2*n+1)-1]` -/
def P4180076115367864690.Spec : Prop :=
  ∀ n, P4180076115367864690.a n = A142041 (n + 1)

end A142041

/-! ## A142041.P2599196643132534222

`or(1, p?[A143031(n+1)])`
-/

namespace A142041.P2599196643132534222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143031 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A142041.P2599196643132534222

namespace A142041

/-- `or(1, p?[A143031(n+1)])` -/
def P2599196643132534222.Spec : Prop :=
  ∀ n, P2599196643132534222.a n = A142041 (n + 1)

end A142041

/-! ## A142041.P4810930664520047674

`∩[A007522(n+1), A143031(n+1)]`
-/

namespace A142041.P4810930664520047674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007522 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143031 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142041.P4810930664520047674

namespace A142041

/-- `∩[A007522(n+1), A143031(n+1)]` -/
def P4810930664520047674.Spec : Prop :=
  ∀ n, (P4810930664520047674.a n : ℤ) = A142041 (n + 1)

end A142041

/-! ## A142041.P1818559844448745002

`∩[A040098(n+1), A143031(n+1)]`
-/

namespace A142041.P1818559844448745002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040098 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143031 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142041.P1818559844448745002

namespace A142041

/-- `∩[A040098(n+1), A143031(n+1)]` -/
def P1818559844448745002.Spec : Prop :=
  ∀ n, (P1818559844448745002.a n : ℤ) = A142041 (n + 1)

end A142041

/-! ## A142041.P8947788242486253945

`∩[A045382(n+1), A143031(n+1)]`
-/

namespace A142041.P8947788242486253945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045382 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143031 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142041.P8947788242486253945

namespace A142041

/-- `∩[A045382(n+1), A143031(n+1)]` -/
def P8947788242486253945.Spec : Prop :=
  ∀ n, (P8947788242486253945.a n : ℤ) = A142041 (n + 1)

end A142041

/-! ## A142041.P15629607496304881262

`∩[A089199(n+1), A143031(n+1)]`
-/

namespace A142041.P15629607496304881262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089199 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143031 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142041.P15629607496304881262

namespace A142041

/-- `∩[A089199(n+1), A143031(n+1)]` -/
def P15629607496304881262.Spec : Prop :=
  ∀ n, (P15629607496304881262.a n : ℤ) = A142041 (n + 1)

end A142041

/-! ## A142041.P14247203174285858531

`∩[A094712(n+1), A143031(n+1)]`
-/

namespace A142041.P14247203174285858531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094712 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143031 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142041.P14247203174285858531

namespace A142041

/-- `∩[A094712(n+1), A143031(n+1)]` -/
def P14247203174285858531.Spec : Prop :=
  ∀ n, (P14247203174285858531.a n : ℤ) = A142041 (n + 1)

end A142041

/-! ## A142041.P11967655457906856497

`∩[A095282(n+1), A143031(n+1)]`
-/

namespace A142041.P11967655457906856497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095282 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143031 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142041.P11967655457906856497

namespace A142041

/-- `∩[A095282(n+1), A143031(n+1)]` -/
def P11967655457906856497.Spec : Prop :=
  ∀ n, (P11967655457906856497.a n : ℤ) = A142041 (n + 1)

end A142041

/-! ## A142041.P3147894869837057325

`∩[A127576(n+1), A143031(n+1)]`
-/

namespace A142041.P3147894869837057325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127576 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143031 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142041.P3147894869837057325

namespace A142041

/-- `∩[A127576(n+1), A143031(n+1)]` -/
def P3147894869837057325.Spec : Prop :=
  ∀ n, (P3147894869837057325.a n : ℤ) = A142041 (n + 1)

end A142041

/-! ## A142041.P8368364812497438127

`∩[A143031(n+1), A225185(n+1)]`
-/

namespace A142041.P8368364812497438127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143031 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225185 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142041.P8368364812497438127

namespace A142041

/-- `∩[A143031(n+1), A225185(n+1)]` -/
def P8368364812497438127.Spec : Prop :=
  ∀ n, (P8368364812497438127.a n : ℤ) = A142041 (n + 1)

end A142041

/-! ## A142041.P8224317759731678562

`∩[A014663(n+1), A143031(n+1)]`
-/

namespace A142041.P8224317759731678562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014663 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143031 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142041.P8224317759731678562

namespace A142041

/-- `∩[A014663(n+1), A143031(n+1)]` -/
def P8224317759731678562.Spec : Prop :=
  ∀ n, (P8224317759731678562.a n : ℤ) = A142041 (n + 1)

end A142041

/-! ## A142041.P4128355643780615832

`∩[A040141(n+1), A143031(n+1)]`
-/

namespace A142041.P4128355643780615832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040141 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143031 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142041.P4128355643780615832

namespace A142041

/-- `∩[A040141(n+1), A143031(n+1)]` -/
def P4128355643780615832.Spec : Prop :=
  ∀ n, (P4128355643780615832.a n : ℤ) = A142041 (n + 1)

end A142041

/-! ## A142041.P13569407027137092698

`∩[A001132(n+1), A143031(n+1)]`
-/

namespace A142041.P13569407027137092698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001132 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143031 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142041.P13569407027137092698

namespace A142041

/-- `∩[A001132(n+1), A143031(n+1)]` -/
def P13569407027137092698.Spec : Prop :=
  ∀ n, (P13569407027137092698.a n : ℤ) = A142041 (n + 1)

end A142041

/-! ## A142041.P15468334148836512316

`∩[A038873(n+1), A143031(n+1)]`
-/

namespace A142041.P15468334148836512316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038873 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143031 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142041.P15468334148836512316

namespace A142041

/-- `∩[A038873(n+1), A143031(n+1)]` -/
def P15468334148836512316.Spec : Prop :=
  ∀ n, (P15468334148836512316.a n : ℤ) = A142041 (n + 1)

end A142041

/-! ## A142041.P6815050606636187348

`∩[A097958(n+1), A143031(n+1)]`
-/

namespace A142041.P6815050606636187348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097958 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143031 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142041.P6815050606636187348

namespace A142041

/-- `∩[A097958(n+1), A143031(n+1)]` -/
def P6815050606636187348.Spec : Prop :=
  ∀ n, (P6815050606636187348.a n : ℤ) = A142041 (n + 1)

end A142041

/-! ## A142041.P16263160546573743001

`∩[A003628(n+1), A143031(n+1)]`
-/

namespace A142041.P16263160546573743001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003628 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143031 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142041.P16263160546573743001

namespace A142041

/-- `∩[A003628(n+1), A143031(n+1)]` -/
def P16263160546573743001.Spec : Prop :=
  ∀ n, (P16263160546573743001.a n : ℤ) = A142041 (n + 1)

end A142041

/-! ## A142041.P9702204942536626317

`∩[A045355(n+1), A143031(n+1)]`
-/

namespace A142041.P9702204942536626317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045355 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143031 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142041.P9702204942536626317

namespace A142041

/-- `∩[A045355(n+1), A143031(n+1)]` -/
def P9702204942536626317.Spec : Prop :=
  ∀ n, (P9702204942536626317.a n : ℤ) = A142041 (n + 1)

end A142041

/-!
# A142042: Primes congruent to 19 mod 32.

The programs for A142042, the canonical program `A142042.P17750205476111570286` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142042 has offset 1).

The definition of A142042 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142042.P17750205476111570286

`∪[A142934(n+1), A142948(n+1)]`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A142042

/-- `∪[A142934(n+1), A142948(n+1)]` -/
def P17750205476111570286.Spec : Prop :=
  ∀ n, (P17750205476111570286.a n : ℤ) = A142042 (n + 1)

theorem P17750205476111570286.correct : P17750205476111570286.Spec := by
  intro n
  simp only [A142042, Nat.add_sub_cancel]

end A142042

/-! ## A142042.P6210979997067341024

`A091968(eq[1, and(1, A092022(n+1))]+1)`
-/

namespace A142042.P6210979997067341024
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A092022 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091968 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A142042.P6210979997067341024

namespace A142042

/-- `A091968(eq[1, and(1, A092022(n+1))]+1)` -/
def P6210979997067341024.Spec : Prop :=
  ∀ n, P6210979997067341024.a n = A142042 (n + 1)

end A142042

/-! ## A142042.P8606084751553931338

`p?[a(n-1)+32]` with `a(0)=19`
-/

namespace A142042.P8606084751553931338
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [19] fun n f1 =>
  f1 (n - 1) + 32

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142042.P8606084751553931338

namespace A142042

/-- `p?[a(n-1)+32]` -/
def P8606084751553931338.Spec : Prop :=
  ∀ n, (P8606084751553931338.a n : ℤ) = A142042 (n + 1)

end A142042

/-! ## A142042.P8721647753220600871

`p?[8*(4*n+2)+3]`
-/

namespace A142042.P8721647753220600871
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * (4 * n + 2) + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142042.P8721647753220600871

namespace A142042

/-- `p?[8*(4*n+2)+3]` -/
def P8721647753220600871.Spec : Prop :=
  ∀ n, (P8721647753220600871.a n : ℤ) = A142042 (n + 1)

end A142042

/-! ## A142042.P2371263141890424253

`or(1, p?[A272100(n+1)])`
-/

namespace A142042.P2371263141890424253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272100 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A142042.P2371263141890424253

namespace A142042

/-- `or(1, p?[A272100(n+1)])` -/
def P2371263141890424253.Spec : Prop :=
  ∀ n, P2371263141890424253.a n = A142042 (n + 1)

end A142042

/-! ## A142042.P18144501767791661425

`∩[A002145(n+1), A272100(n+1)]`
-/

namespace A142042.P18144501767791661425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272100 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142042.P18144501767791661425

namespace A142042

/-- `∩[A002145(n+1), A272100(n+1)]` -/
def P18144501767791661425.Spec : Prop :=
  ∀ n, (P18144501767791661425.a n : ℤ) = A142042 (n + 1)

end A142042

/-! ## A142042.P13379521175467662785

`∩[A003629(n+1), A272100(n+1)]`
-/

namespace A142042.P13379521175467662785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003629 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272100 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142042.P13379521175467662785

namespace A142042

/-- `∩[A003629(n+1), A272100(n+1)]` -/
def P13379521175467662785.Spec : Prop :=
  ∀ n, (P13379521175467662785.a n : ℤ) = A142042 (n + 1)

end A142042

/-! ## A142042.P8186307169771959194

`∩[A007520(n+1), A272100(n+1)]`
-/

namespace A142042.P8186307169771959194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007520 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272100 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142042.P8186307169771959194

namespace A142042

/-- `∩[A007520(n+1), A272100(n+1)]` -/
def P8186307169771959194.Spec : Prop :=
  ∀ n, (P8186307169771959194.a n : ℤ) = A142042 (n + 1)

end A142042

/-! ## A142042.P12094300285959117316

`∩[A033200(n+1), A272100(n+1)]`
-/

namespace A142042.P12094300285959117316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033200 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272100 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142042.P12094300285959117316

namespace A142042

/-- `∩[A033200(n+1), A272100(n+1)]` -/
def P12094300285959117316.Spec : Prop :=
  ∀ n, (P12094300285959117316.a n : ℤ) = A142042 (n + 1)

end A142042

/-! ## A142042.P7021992305967577941

`∩[A033203(n+1), A272100(n+1)]`
-/

namespace A142042.P7021992305967577941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033203 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272100 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142042.P7021992305967577941

namespace A142042

/-- `∩[A033203(n+1), A272100(n+1)]` -/
def P7021992305967577941.Spec : Prop :=
  ∀ n, (P7021992305967577941.a n : ℤ) = A142042 (n + 1)

end A142042

/-! ## A142042.P13718358425289478687

`∩[A040100(n+1), A272100(n+1)]`
-/

namespace A142042.P13718358425289478687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040100 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272100 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142042.P13718358425289478687

namespace A142042

/-- `∩[A040100(n+1), A272100(n+1)]` -/
def P13718358425289478687.Spec : Prop :=
  ∀ n, (P13718358425289478687.a n : ℤ) = A142042 (n + 1)

end A142042

/-! ## A142042.P12492909931215227569

`∩[A040144(n+1), A272100(n+1)]`
-/

namespace A142042.P12492909931215227569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272100 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142042.P12492909931215227569

namespace A142042

/-- `∩[A040144(n+1), A272100(n+1)]` -/
def P12492909931215227569.Spec : Prop :=
  ∀ n, (P12492909931215227569.a n : ℤ) = A142042 (n + 1)

end A142042

/-! ## A142042.P5106612567763295192

`∩[A040993(n+1), A272100(n+1)]`
-/

namespace A142042.P5106612567763295192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040993 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272100 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142042.P5106612567763295192

namespace A142042

/-- `∩[A040993(n+1), A272100(n+1)]` -/
def P5106612567763295192.Spec : Prop :=
  ∀ n, (P5106612567763295192.a n : ℤ) = A142042 (n + 1)

end A142042

/-! ## A142042.P9584554642956587814

`∩[A042999(n+1), A272100(n+1)]`
-/

namespace A142042.P9584554642956587814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042999 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272100 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142042.P9584554642956587814

namespace A142042

/-- `∩[A042999(n+1), A272100(n+1)]` -/
def P9584554642956587814.Spec : Prop :=
  ∀ n, (P9584554642956587814.a n : ℤ) = A142042 (n + 1)

end A142042

/-! ## A142042.P8381487179465943987

`∩[A045326(n+1), A272100(n+1)]`
-/

namespace A142042.P8381487179465943987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045326 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272100 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142042.P8381487179465943987

namespace A142042

/-- `∩[A045326(n+1), A272100(n+1)]` -/
def P8381487179465943987.Spec : Prop :=
  ∀ n, (P8381487179465943987.a n : ℤ) = A142042 (n + 1)

end A142042

/-! ## A142042.P16321976062275094061

`∩[A045339(n+1), A272100(n+1)]`
-/

namespace A142042.P16321976062275094061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045339 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272100 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142042.P16321976062275094061

namespace A142042

/-- `∩[A045339(n+1), A272100(n+1)]` -/
def P16321976062275094061.Spec : Prop :=
  ∀ n, (P16321976062275094061.a n : ℤ) = A142042 (n + 1)

end A142042

/-! ## A142042.P9423165256179048663

`∩[A049098(n+1), A272100(n+1)]`
-/

namespace A142042.P9423165256179048663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049098 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272100 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142042.P9423165256179048663

namespace A142042

/-- `∩[A049098(n+1), A272100(n+1)]` -/
def P9423165256179048663.Spec : Prop :=
  ∀ n, (P9423165256179048663.a n : ℤ) = A142042 (n + 1)

end A142042

/-! ## A142042.P13280248940265152082

`∩[A059263(n+1), A272100(n+1)]`
-/

namespace A142042.P13280248940265152082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059263 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272100 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142042.P13280248940265152082

namespace A142042

/-- `∩[A059263(n+1), A272100(n+1)]` -/
def P13280248940265152082.Spec : Prop :=
  ∀ n, (P13280248940265152082.a n : ℤ) = A142042 (n + 1)

end A142042

/-! ## A142042.P6714106365615633622

`∩[A091968(n+1), A272100(n+1)]`
-/

namespace A142042.P6714106365615633622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091968 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272100 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142042.P6714106365615633622

namespace A142042

/-- `∩[A091968(n+1), A272100(n+1)]` -/
def P6714106365615633622.Spec : Prop :=
  ∀ n, (P6714106365615633622.a n : ℤ) = A142042 (n + 1)

end A142042

/-! ## A142042.P8363606574751913620

`∩[A095282(n+1), A272100(n+1)]`
-/

namespace A142042.P8363606574751913620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095282 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272100 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142042.P8363606574751913620

namespace A142042

/-- `∩[A095282(n+1), A272100(n+1)]` -/
def P8363606574751913620.Spec : Prop :=
  ∀ n, (P8363606574751913620.a n : ℤ) = A142042 (n + 1)

end A142042

/-!
# A142043: Primes congruent to 21 mod 32.

The programs for A142043, the canonical program `A142043.P5205622206172157271` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142043 has offset 1).

The definition of A142043 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142043.P5205622206172157271

`∪[A127592(n+1), A142949(n+1)]`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A142043

/-- `∪[A127592(n+1), A142949(n+1)]` -/
def P5205622206172157271.Spec : Prop :=
  ∀ n, (P5205622206172157271.a n : ℤ) = A142043 (n + 1)

theorem P5205622206172157271.correct : P5205622206172157271.Spec := by
  intro n
  simp only [A142043, Nat.add_sub_cancel]

end A142043

/-! ## A142043.P2632282695523278560

`p?[32*n-11]`
-/

namespace A142043.P2632282695523278560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (32 * n : ℤ) - 11

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142043.P2632282695523278560

namespace A142043

/-- `p?[32*n-11]` -/
def P2632282695523278560.Spec : Prop :=
  ∀ n, P2632282695523278560.a n = A142043 (n + 1)

end A142043

/-! ## A142043.P5806665613120763818

`A000027(p?[A255413(n+1)+n+1])`
-/

namespace A142043.P5806665613120763818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255413 (n + 1) + (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142043.P5806665613120763818

namespace A142043

/-- `A000027(p?[A255413(n+1)+n+1])` -/
def P5806665613120763818.Spec : Prop :=
  ∀ n, P5806665613120763818.a n = A142043 (n + 1)

end A142043

/-! ## A142043.P8433337689535932430

`∩[A003629(n+1), A272100(n+1)+2]`
-/

namespace A142043.P8433337689535932430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003629 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272100 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142043.P8433337689535932430

namespace A142043

/-- `∩[A003629(n+1), A272100(n+1)+2]` -/
def P8433337689535932430.Spec : Prop :=
  ∀ n, (P8433337689535932430.a n : ℤ) = A142043 (n + 1)

end A142043

/-! ## A142043.P797595609337054914

`∩[A040100(n+1), A272100(n+1)+2]`
-/

namespace A142043.P797595609337054914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040100 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272100 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142043.P797595609337054914

namespace A142043

/-- `∩[A040100(n+1), A272100(n+1)+2]` -/
def P797595609337054914.Spec : Prop :=
  ∀ n, (P797595609337054914.a n : ℤ) = A142043 (n + 1)

end A142043

/-! ## A142043.P7308638348217580654

`∩[A040144(n+1), A272100(n+1)+2]`
-/

namespace A142043.P7308638348217580654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272100 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142043.P7308638348217580654

namespace A142043

/-- `∩[A040144(n+1), A272100(n+1)+2]` -/
def P7308638348217580654.Spec : Prop :=
  ∀ n, (P7308638348217580654.a n : ℤ) = A142043 (n + 1)

end A142043

/-! ## A142043.P15520129403541403945

`∩[A040993(n+1), A272100(n+1)+2]`
-/

namespace A142043.P15520129403541403945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040993 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272100 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142043.P15520129403541403945

namespace A142043

/-- `∩[A040993(n+1), A272100(n+1)+2]` -/
def P15520129403541403945.Spec : Prop :=
  ∀ n, (P15520129403541403945.a n : ℤ) = A142043 (n + 1)

end A142043

/-! ## A142043.P6337362689634408416

`∩[A042999(n+1), A272100(n+1)+2]`
-/

namespace A142043.P6337362689634408416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042999 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272100 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142043.P6337362689634408416

namespace A142043

/-- `∩[A042999(n+1), A272100(n+1)+2]` -/
def P6337362689634408416.Spec : Prop :=
  ∀ n, (P6337362689634408416.a n : ℤ) = A142043 (n + 1)

end A142043

/-! ## A142043.P12651931467937629046

`∩[A059263(n+1), A272100(n+1)+2]`
-/

namespace A142043.P12651931467937629046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059263 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272100 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142043.P12651931467937629046

namespace A142043

/-- `∩[A059263(n+1), A272100(n+1)+2]` -/
def P12651931467937629046.Spec : Prop :=
  ∀ n, (P12651931467937629046.a n : ℤ) = A142043 (n + 1)

end A142043

/-! ## A142043.P2844929974618653327

`∩[A214588(n+1), A272100(n+1)+2]`
-/

namespace A142043.P2844929974618653327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214588 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272100 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142043.P2844929974618653327

namespace A142043

/-- `∩[A214588(n+1), A272100(n+1)+2]` -/
def P2844929974618653327.Spec : Prop :=
  ∀ n, (P2844929974618653327.a n : ℤ) = A142043 (n + 1)

end A142043

/-! ## A142043.P10042181013096129695

`∩[A170837(2*n+1), A007521(n+2)]`
-/

namespace A142043.P10042181013096129695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170837 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007521 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142043.P10042181013096129695

namespace A142043

/-- `∩[A170837(2*n+1), A007521(n+2)]` -/
def P10042181013096129695.Spec : Prop :=
  ∀ n, (P10042181013096129695.a n : ℤ) = A142043 (n + 1)

end A142043

/-! ## A142043.P7449350472665237909

`∩[A170837(2*n+1), A045366(n+2)]`
-/

namespace A142043.P7449350472665237909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170837 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045366 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142043.P7449350472665237909

namespace A142043

/-- `∩[A170837(2*n+1), A045366(n+2)]` -/
def P7449350472665237909.Spec : Prop :=
  ∀ n, (P7449350472665237909.a n : ℤ) = A142043 (n + 1)

end A142043

/-! ## A142043.P4877177293782565207

`∩[A170837(2*n+1), A002144(n+2)]`
-/

namespace A142043.P4877177293782565207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170837 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142043.P4877177293782565207

namespace A142043

/-- `∩[A170837(2*n+1), A002144(n+2)]` -/
def P4877177293782565207.Spec : Prop :=
  ∀ n, (P4877177293782565207.a n : ℤ) = A142043 (n + 1)

end A142043

/-! ## A142043.P9169984726236090629

`∩[A170837(2*n+1), A002313(n+2)]`
-/

namespace A142043.P9169984726236090629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170837 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002313 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142043.P9169984726236090629

namespace A142043

/-- `∩[A170837(2*n+1), A002313(n+2)]` -/
def P9169984726236090629.Spec : Prop :=
  ∀ n, (P9169984726236090629.a n : ℤ) = A142043 (n + 1)

end A142043

/-! ## A142043.P13225478760209334559

`∩[A170837(2*n+1), A003628(n+2)]`
-/

namespace A142043.P13225478760209334559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170837 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003628 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142043.P13225478760209334559

namespace A142043

/-- `∩[A170837(2*n+1), A003628(n+2)]` -/
def P13225478760209334559.Spec : Prop :=
  ∀ n, (P13225478760209334559.a n : ℤ) = A142043 (n + 1)

end A142043

/-! ## A142043.P11285956730266040576

`∩[A170837(2*n+1), A045355(n+2)]`
-/

namespace A142043.P11285956730266040576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170837 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045355 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142043.P11285956730266040576

namespace A142043

/-- `∩[A170837(2*n+1), A045355(n+2)]` -/
def P11285956730266040576.Spec : Prop :=
  ∀ n, (P11285956730266040576.a n : ℤ) = A142043 (n + 1)

end A142043

/-! ## A142043.P10589089123482118813

`∩[A170837(2*n+1), A003629(n+2)]`
-/

namespace A142043.P10589089123482118813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170837 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003629 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142043.P10589089123482118813

namespace A142043

/-- `∩[A170837(2*n+1), A003629(n+2)]` -/
def P10589089123482118813.Spec : Prop :=
  ∀ n, (P10589089123482118813.a n : ℤ) = A142043 (n + 1)

end A142043

/-! ## A142043.P15019981099855579669

`∩[A170837(2*n+1), A042999(n+2)]`
-/

namespace A142043.P15019981099855579669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170837 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042999 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142043.P15019981099855579669

namespace A142043

/-- `∩[A170837(2*n+1), A042999(n+2)]` -/
def P15019981099855579669.Spec : Prop :=
  ∀ n, (P15019981099855579669.a n : ℤ) = A142043 (n + 1)

end A142043

/-! ## A142043.P11350623609974347890

`∩[A170837(2*n+1), A055025(n+2)]`
-/

namespace A142043.P11350623609974347890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170837 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055025 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142043.P11350623609974347890

namespace A142043

/-- `∩[A170837(2*n+1), A055025(n+2)]` -/
def P11350623609974347890.Spec : Prop :=
  ∀ n, (P11350623609974347890.a n : ℤ) = A142043 (n + 1)

end A142043

/-! ## A142043.P11797591006674572620

`filter[A170837(2*n+1), A010051(#)]`
-/

namespace A142043.P11797591006674572620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170837 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A142043.P11797591006674572620

namespace A142043

/-- `filter[A170837(2*n+1), A010051(#)]` -/
def P11797591006674572620.Spec : Prop :=
  ∀ n, P11797591006674572620.a n = A142043 (n + 1)

end A142043

/-!
# A142044: Primes congruent to 23 mod 32.

The programs for A142044, the canonical program `A142044.P5022247538457653579` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142044 has offset 1).

The definition of A142044 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142044.P5022247538457653579

`∪[A142935(n+1), A142950(n+1)]`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A142044

/-- `∪[A142935(n+1), A142950(n+1)]` -/
def P5022247538457653579.Spec : Prop :=
  ∀ n, (P5022247538457653579.a n : ℤ) = A142044 (n + 1)

theorem P5022247538457653579.correct : P5022247538457653579.Spec := by
  intro n
  simp only [A142044, Nat.add_sub_cancel]

end A142044

/-! ## A142044.P13466159888076454298

`p?[32*n-9]`
-/

namespace A142044.P13466159888076454298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (32 * n : ℤ) - 9

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142044.P13466159888076454298

namespace A142044

/-- `p?[32*n-9]` -/
def P13466159888076454298.Spec : Prop :=
  ∀ n, P13466159888076454298.a n = A142044 (n + 1)

end A142044

/-! ## A142044.P7191665813729297738

`∏{p}[p?[32*n+23], #]`
-/

namespace A142044.P7191665813729297738
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  32 * n + 23

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), p

end

end A142044.P7191665813729297738

namespace A142044

/-- `∏{p}[p?[32*n+23], #]` -/
def P7191665813729297738.Spec : Prop :=
  ∀ n, (P7191665813729297738.a n : ℤ) = A142044 (n + 1)

end A142044

/-! ## A142044.P263485752536007578

`or(19, p?[a(n-2)+32])` with `a(0)=23, a(1)=12`
-/

namespace A142044.P263485752536007578
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [23, 12] fun n f1 =>
  f1 (n - 2) + 32

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 19 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A142044.P263485752536007578

namespace A142044

/-- `or(19, p?[a(n-2)+32])` -/
def P263485752536007578.Spec : Prop :=
  ∀ n, (P263485752536007578.a n : ℤ) = A142044 (n + 1)

end A142044

/-! ## A142044.P17057716621444872041

`∩[A170837(2*n+1)+2, A003628(n+2)]`
-/

namespace A142044.P17057716621444872041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170837 (2 * n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003628 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142044.P17057716621444872041

namespace A142044

/-- `∩[A170837(2*n+1)+2, A003628(n+2)]` -/
def P17057716621444872041.Spec : Prop :=
  ∀ n, (P17057716621444872041.a n : ℤ) = A142044 (n + 1)

end A142044

/-! ## A142044.P15612220557050631196

`∩[A170837(2*n+1)+2, A045355(n+2)]`
-/

namespace A142044.P15612220557050631196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170837 (2 * n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045355 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142044.P15612220557050631196

namespace A142044

/-- `∩[A170837(2*n+1)+2, A045355(n+2)]` -/
def P15612220557050631196.Spec : Prop :=
  ∀ n, (P15612220557050631196.a n : ℤ) = A142044 (n + 1)

end A142044

/-! ## A142044.P5477768940535477942

`record[A020639(Δ[(4*n+1)²]-1)]`
-/

namespace A142044.P5477768940535477942
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (4 * n + 1) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 ((f2 (n + 1) : ℤ) - (f2 n : ℤ) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142044.P5477768940535477942

namespace A142044

/-- `record[A020639(Δ[(4*n+1)²]-1)]` -/
def P5477768940535477942.Spec : Prop :=
  ∀ n, P5477768940535477942.a n = A142044 (n + 1)

end A142044

/-! ## A142044.P12184044649915933

`∩[A170837(2*n+1)+2, A095283(n+2)]`
-/

namespace A142044.P12184044649915933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170837 (2 * n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095283 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142044.P12184044649915933

namespace A142044

/-- `∩[A170837(2*n+1)+2, A095283(n+2)]` -/
def P12184044649915933.Spec : Prop :=
  ∀ n, (P12184044649915933.a n : ℤ) = A142044 (n + 1)

end A142044

/-! ## A142044.P16285506431045601347

`∩[A314054(2*n)+2, A007522(n+2)]`
-/

namespace A142044.P16285506431045601347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314054 (2 * n) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007522 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142044.P16285506431045601347

namespace A142044

/-- `∩[A314054(2*n)+2, A007522(n+2)]` -/
def P16285506431045601347.Spec : Prop :=
  ∀ n, (P16285506431045601347.a n : ℤ) = A142044 (n + 1)

end A142044

/-! ## A142044.P16523755169815394287

`∩[A314054(2*n)+2, A045382(n+2)]`
-/

namespace A142044.P16523755169815394287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314054 (2 * n) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045382 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142044.P16523755169815394287

namespace A142044

/-- `∩[A314054(2*n)+2, A045382(n+2)]` -/
def P16523755169815394287.Spec : Prop :=
  ∀ n, (P16523755169815394287.a n : ℤ) = A142044 (n + 1)

end A142044

/-! ## A142044.P3332069977149474599

`∩[A073088(n+1)-2, A141194(n+1)]`
-/

namespace A142044.P3332069977149474599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073088 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141194 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142044.P3332069977149474599

namespace A142044

/-- `∩[A073088(n+1)-2, A141194(n+1)]` -/
def P3332069977149474599.Spec : Prop :=
  ∀ n, (P3332069977149474599.a n : ℤ) = A142044 (n + 1)

end A142044

/-! ## A142044.P6922809753943910196

`∩[A040976(n+1)+2, A047589(A047589(n+1))]`
-/

namespace A142044.P6922809753943910196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047589 (A047589 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142044.P6922809753943910196

namespace A142044

/-- `∩[A040976(n+1)+2, A047589(A047589(n+1))]` -/
def P6922809753943910196.Spec : Prop :=
  ∀ n, (P6922809753943910196.a n : ℤ) = A142044 (n + 1)

end A142044

/-! ## A142044.P17719513862812056366

`record[p?[A004273(A110185(n))]]`
-/

namespace A142044.P17719513862812056366
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A110185 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142044.P17719513862812056366

namespace A142044

/-- `record[p?[A004273(A110185(n))]]` -/
def P17719513862812056366.Spec : Prop :=
  ∀ n, P17719513862812056366.a n = A142044 (n + 1)

end A142044

/-!
# A142045: Primes congruent to 25 mod 32.

The programs for A142045, the canonical program `A142045.P17621399904502160490` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142045 has offset 1).

The definition of A142045 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142045.P17621399904502160490

`∪[A142936(n+1), A142951(n+1)]`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A142045

/-- `∪[A142936(n+1), A142951(n+1)]` -/
def P17621399904502160490.Spec : Prop :=
  ∀ n, (P17621399904502160490.a n : ℤ) = A142045 (n + 1)

theorem P17621399904502160490.correct : P17621399904502160490.Spec := by
  intro n
  simp only [A142045, Nat.add_sub_cancel]

end A142045

/-! ## A142045.P11714393699756745855

`p?[32*n-7]`
-/

namespace A142045.P11714393699756745855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (32 * n : ℤ) - 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142045.P11714393699756745855

namespace A142045

/-- `p?[32*n-7]` -/
def P11714393699756745855.Spec : Prop :=
  ∀ n, P11714393699756745855.a n = A142045 (n + 1)

end A142045

/-! ## A142045.P13771435193243976846

`∩[A105126(n+1), A278494(n+1)]`
-/

namespace A142045.P13771435193243976846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105126 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278494 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142045.P13771435193243976846

namespace A142045

/-- `∩[A105126(n+1), A278494(n+1)]` -/
def P13771435193243976846.Spec : Prop :=
  ∀ n, (P13771435193243976846.a n : ℤ) = A142045 (n + 1)

end A142045

/-! ## A142045.P9867850330864127648

`∑{p}[p?[A267984(n+1)+1+n], #]`
-/

namespace A142045.P9867850330864127648
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267984 (n + 1) + 1 + (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A142045.P9867850330864127648

namespace A142045

/-- `∑{p}[p?[A267984(n+1)+1+n], #]` -/
def P9867850330864127648.Spec : Prop :=
  ∀ n, (P9867850330864127648.a n : ℤ) = A142045 (n + 1)

end A142045

/-! ## A142045.P9141887843342373862

`A000027(p?[A317333(2*(n+1))])`
-/

namespace A142045.P9141887843342373862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317333 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142045.P9141887843342373862

namespace A142045

/-- `A000027(p?[A317333(2*(n+1))])` -/
def P9141887843342373862.Spec : Prop :=
  ∀ n, P9141887843342373862.a n = A142045 (n + 1)

end A142045

/-! ## A142045.P16148734051692945999

`or(p?[A317333(2*(n+1))], A000007(n))`
-/

namespace A142045.P16148734051692945999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317333 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A000007 n)

end

end A142045.P16148734051692945999

namespace A142045

/-- `or(p?[A317333(2*(n+1))], A000007(n))` -/
def P16148734051692945999.Spec : Prop :=
  ∀ n, P16148734051692945999.a n = A142045 (n + 1)

end A142045

/-! ## A142045.P14994273901386263086

`∩[A317333(2*(n+1)), A105126(n+2)]`
-/

namespace A142045.P14994273901386263086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317333 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105126 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142045.P14994273901386263086

namespace A142045

/-- `∩[A317333(2*(n+1)), A105126(n+2)]` -/
def P14994273901386263086.Spec : Prop :=
  ∀ n, (P14994273901386263086.a n : ℤ) = A142045 (n + 1)

end A142045

/-! ## A142045.P5664231753902664413

`p?[A317333(2*(n+1))]%A060012(n+1)`
-/

namespace A142045.P5664231753902664413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317333 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A060012 (n + 1))

end

end A142045.P5664231753902664413

namespace A142045

/-- `p?[A317333(2*(n+1))]%A060012(n+1)` -/
def P5664231753902664413.Spec : Prop :=
  ∀ n, P5664231753902664413.a n = A142045 (n + 1)

end A142045

/-! ## A142045.P632950403313152709

`or(p?[A317333(2*(n+1))], A296212(n+1))`
-/

namespace A142045.P632950403313152709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317333 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A296212 (n + 1))

end

end A142045.P632950403313152709

namespace A142045

/-- `or(p?[A317333(2*(n+1))], A296212(n+1))` -/
def P632950403313152709.Spec : Prop :=
  ∀ n, P632950403313152709.a n = A142045 (n + 1)

end A142045

/-! ## A142045.P1146819629359644086

`p?[A317333(2*(n+1))]*A008619(2*n)/(n+1)`
-/

namespace A142045.P1146819629359644086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317333 (2 * (n + 1))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * A008619 (2 * n) : ℚ) / (n + 1 : ℚ)

end

end A142045.P1146819629359644086

namespace A142045

/-- `p?[A317333(2*(n+1))]*A008619(2*n)/(n+1)` -/
def P1146819629359644086.Spec : Prop :=
  ∀ n, P1146819629359644086.a n = (A142045 (n + 1) : ℚ)

end A142045

/-! ## A142045.P1975002684081642554

`∩[A106839(2*n+1)-2, A033200(n+2)]`
-/

namespace A142045.P1975002684081642554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106839 (2 * n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033200 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142045.P1975002684081642554

namespace A142045

/-- `∩[A106839(2*n+1)-2, A033200(n+2)]` -/
def P1975002684081642554.Spec : Prop :=
  ∀ n, (P1975002684081642554.a n : ℤ) = A142045 (n + 1)

end A142045

/-! ## A142045.P5213264068611882963

`∩[A106839(2*n+1)-2, A033203(n+2)]`
-/

namespace A142045.P5213264068611882963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106839 (2 * n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033203 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142045.P5213264068611882963

namespace A142045

/-- `∩[A106839(2*n+1)-2, A033203(n+2)]` -/
def P5213264068611882963.Spec : Prop :=
  ∀ n, (P5213264068611882963.a n : ℤ) = A142045 (n + 1)

end A142045

/-! ## A142045.P6950142594444913553

`A008472(p?[A317333(2*(n+1))])`
-/

namespace A142045.P6950142594444913553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317333 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142045.P6950142594444913553

namespace A142045

/-- `A008472(p?[A317333(2*(n+1))])` -/
def P6950142594444913553.Spec : Prop :=
  ∀ n, P6950142594444913553.a n = A142045 (n + 1)

end A142045

/-! ## A142045.P7231917156198360284

`filter[A317333(2*(n+1)), A010051(#)]`
-/

namespace A142045.P7231917156198360284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317333 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A142045.P7231917156198360284

namespace A142045

/-- `filter[A317333(2*(n+1)), A010051(#)]` -/
def P7231917156198360284.Spec : Prop :=
  ∀ n, P7231917156198360284.a n = A142045 (n + 1)

end A142045

/-! ## A142045.P2390328781327018429

`A000265(p?[A000265(a(n-1)+32)])` with `a(0)=18`
-/

namespace A142045.P2390328781327018429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [18] fun n f1 =>
  A000265 (f1 (n - 1) + 32).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142045.P2390328781327018429

namespace A142045

/-- `A000265(p?[A000265(a(n-1)+32)])` -/
def P2390328781327018429.Spec : Prop :=
  ∀ n, P2390328781327018429.a n = A142045 (n + 1)

end A142045

/-! ## A142045.P7973693428891756432

`∩[A105126(n+1), A317333(n+1)]`
-/

namespace A142045.P7973693428891756432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105126 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317333 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142045.P7973693428891756432

namespace A142045

/-- `∩[A105126(n+1), A317333(n+1)]` -/
def P7973693428891756432.Spec : Prop :=
  ∀ n, (P7973693428891756432.a n : ℤ) = A142045 (n + 1)

end A142045

/-! ## A142045.P13062662581603242646

`∩[A272100(2*n+1)-A272100(n+2), A033200(n+2)]`
-/

namespace A142045.P13062662581603242646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272100 (2 * n + 1) - A272100 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033200 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142045.P13062662581603242646

namespace A142045

/-- `∩[A272100(2*n+1)-A272100(n+2), A033200(n+2)]` -/
def P13062662581603242646.Spec : Prop :=
  ∀ n, (P13062662581603242646.a n : ℤ) = A142045 (n + 1)

end A142045

/-! ## A142045.P866621914554086947

`∩[A272100(2*n+1)-A272100(n+2), A033203(n+2)]`
-/

namespace A142045.P866621914554086947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272100 (2 * n + 1) - A272100 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033203 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142045.P866621914554086947

namespace A142045

/-- `∩[A272100(2*n+1)-A272100(n+2), A033203(n+2)]` -/
def P866621914554086947.Spec : Prop :=
  ∀ n, (P866621914554086947.a n : ℤ) = A142045 (n + 1)

end A142045

/-! ## A142045.P6612634561217154214

`filter[A317333(2*(n+1)), A351957(#)]`
-/

namespace A142045.P6612634561217154214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317333 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A351957 (f1 j).toNat = 1) n)

end

end A142045.P6612634561217154214

namespace A142045

/-- `filter[A317333(2*(n+1)), A351957(#)]` -/
def P6612634561217154214.Spec : Prop :=
  ∀ n, P6612634561217154214.a n = A142045 (n + 1)

end A142045

/-! ## A142045.P1120397437724366078

`filter[A317333(2*(n+1)), A353817(#)]`
-/

namespace A142045.P1120397437724366078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317333 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353817 (f1 j).toNat = 1) n)

end

end A142045.P1120397437724366078

namespace A142045

/-- `filter[A317333(2*(n+1)), A353817(#)]` -/
def P1120397437724366078.Spec : Prop :=
  ∀ n, P1120397437724366078.a n = A142045 (n + 1)

end A142045

/-!
# A142046: Primes congruent to 27 mod 32.

The programs for A142046, the canonical program `A142046.P13470369612893551844` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142046 has offset 1).

The definition of A142046 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142046.P13470369612893551844

`∪[A142937(n+1), A142952(n+1)]`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A142046

/-- `∪[A142937(n+1), A142952(n+1)]` -/
def P13470369612893551844.Spec : Prop :=
  ∀ n, (P13470369612893551844.a n : ℤ) = A142046 (n + 1)

theorem P13470369612893551844.correct : P13470369612893551844.Spec := by
  intro n
  simp only [A142046, Nat.add_sub_cancel]

end A142046

/-! ## A142046.P9976046827759253061

`p?[32*n-5]`
-/

namespace A142046.P9976046827759253061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (32 * n : ℤ) - 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142046.P9976046827759253061

namespace A142046

/-- `p?[32*n-5]` -/
def P9976046827759253061.Spec : Prop :=
  ∀ n, P9976046827759253061.a n = A142046 (n + 1)

end A142046

/-! ## A142046.P7392654297831376322

`or(1, p?[32*n+27])`
-/

namespace A142046.P7392654297831376322
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  32 * n + 27

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A142046.P7392654297831376322

namespace A142046

/-- `or(1, p?[32*n+27])` -/
def P7392654297831376322.Spec : Prop :=
  ∀ n, (P7392654297831376322.a n : ℤ) = A142046 (n + 1)

end A142046

/-! ## A142046.P17410615156577135131

`record[p?[A082285(A000265(n+1))-2]]`
-/

namespace A142046.P17410615156577135131
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082285 (A000265 (n + 1)).toNat - 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142046.P17410615156577135131

namespace A142046

/-- `record[p?[A082285(A000265(n+1))-2]]` -/
def P17410615156577135131.Spec : Prop :=
  ∀ n, P17410615156577135131.a n = A142046 (n + 1)

end A142046

/-! ## A142046.P2877046528602365233

`∩[A106839(2*n+1), A007520(n+2)]`
-/

namespace A142046.P2877046528602365233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106839 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007520 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142046.P2877046528602365233

namespace A142046

/-- `∩[A106839(2*n+1), A007520(n+2)]` -/
def P2877046528602365233.Spec : Prop :=
  ∀ n, (P2877046528602365233.a n : ℤ) = A142046 (n + 1)

end A142046

/-! ## A142046.P15910523981561403548

`∩[A106839(2*n+1), A045339(n+2)]`
-/

namespace A142046.P15910523981561403548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106839 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045339 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142046.P15910523981561403548

namespace A142046

/-- `∩[A106839(2*n+1), A045339(n+2)]` -/
def P15910523981561403548.Spec : Prop :=
  ∀ n, (P15910523981561403548.a n : ℤ) = A142046 (n + 1)

end A142046

/-! ## A142046.P3954206790337298971

`∩[A106839(2*n+1), A051073(n+2)]`
-/

namespace A142046.P3954206790337298971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106839 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051073 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142046.P3954206790337298971

namespace A142046

/-- `∩[A106839(2*n+1), A051073(n+2)]` -/
def P3954206790337298971.Spec : Prop :=
  ∀ n, (P3954206790337298971.a n : ℤ) = A142046 (n + 1)

end A142046

/-! ## A142046.P16551311905749490540

`∩[A106839(2*n+1), A051077(n+2)]`
-/

namespace A142046.P16551311905749490540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106839 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051077 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142046.P16551311905749490540

namespace A142046

/-- `∩[A106839(2*n+1), A051077(n+2)]` -/
def P16551311905749490540.Spec : Prop :=
  ∀ n, (P16551311905749490540.a n : ℤ) = A142046 (n + 1)

end A142046

/-! ## A142046.P3900420862995728140

`∩[A106839(2*n+1), A051071(n+2)]`
-/

namespace A142046.P3900420862995728140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106839 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051071 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142046.P3900420862995728140

namespace A142046

/-- `∩[A106839(2*n+1), A051071(n+2)]` -/
def P3900420862995728140.Spec : Prop :=
  ∀ n, (P3900420862995728140.a n : ℤ) = A142046 (n + 1)

end A142046

/-! ## A142046.P9162558355321799333

`∩[A106839(2*n+1), A002145(n+2)]`
-/

namespace A142046.P9162558355321799333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106839 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002145 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142046.P9162558355321799333

namespace A142046

/-- `∩[A106839(2*n+1), A002145(n+2)]` -/
def P9162558355321799333.Spec : Prop :=
  ∀ n, (P9162558355321799333.a n : ℤ) = A142046 (n + 1)

end A142046

/-! ## A142046.P9965976855545697000

`∩[A106839(2*n+1), A003629(n+2)]`
-/

namespace A142046.P9965976855545697000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106839 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003629 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142046.P9965976855545697000

namespace A142046

/-- `∩[A106839(2*n+1), A003629(n+2)]` -/
def P9965976855545697000.Spec : Prop :=
  ∀ n, (P9965976855545697000.a n : ℤ) = A142046 (n + 1)

end A142046

/-! ## A142046.P687942956390259050

`∩[A106839(2*n+1), A033200(n+2)]`
-/

namespace A142046.P687942956390259050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106839 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033200 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142046.P687942956390259050

namespace A142046

/-- `∩[A106839(2*n+1), A033200(n+2)]` -/
def P687942956390259050.Spec : Prop :=
  ∀ n, (P687942956390259050.a n : ℤ) = A142046 (n + 1)

end A142046

/-! ## A142046.P4131082759477465381

`∩[A106839(2*n+1), A033203(n+2)]`
-/

namespace A142046.P4131082759477465381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106839 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033203 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142046.P4131082759477465381

namespace A142046

/-- `∩[A106839(2*n+1), A033203(n+2)]` -/
def P4131082759477465381.Spec : Prop :=
  ∀ n, (P4131082759477465381.a n : ℤ) = A142046 (n + 1)

end A142046

/-! ## A142046.P12366176862101499203

`∩[A106839(2*n+1), A042999(n+2)]`
-/

namespace A142046.P12366176862101499203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106839 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042999 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142046.P12366176862101499203

namespace A142046

/-- `∩[A106839(2*n+1), A042999(n+2)]` -/
def P12366176862101499203.Spec : Prop :=
  ∀ n, (P12366176862101499203.a n : ℤ) = A142046 (n + 1)

end A142046

/-! ## A142046.P1367386985857057517

`∩[A106839(2*n+1), A045326(n+2)]`
-/

namespace A142046.P1367386985857057517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106839 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045326 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142046.P1367386985857057517

namespace A142046

/-- `∩[A106839(2*n+1), A045326(n+2)]` -/
def P1367386985857057517.Spec : Prop :=
  ∀ n, (P1367386985857057517.a n : ℤ) = A142046 (n + 1)

end A142046

/-! ## A142046.P17754940855584757781

`∩[A082285(2*n+1)-2, A003629(n+2)]`
-/

namespace A142046.P17754940855584757781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082285 (2 * n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003629 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142046.P17754940855584757781

namespace A142046

/-- `∩[A082285(2*n+1)-2, A003629(n+2)]` -/
def P17754940855584757781.Spec : Prop :=
  ∀ n, (P17754940855584757781.a n : ℤ) = A142046 (n + 1)

end A142046

/-! ## A142046.P5536398119409184700

`∩[A082285(2*n+1)-2, A042999(n+2)]`
-/

namespace A142046.P5536398119409184700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082285 (2 * n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042999 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142046.P5536398119409184700

namespace A142046

/-- `∩[A082285(2*n+1)-2, A042999(n+2)]` -/
def P5536398119409184700.Spec : Prop :=
  ∀ n, (P5536398119409184700.a n : ℤ) = A142046 (n + 1)

end A142046

/-! ## A142046.P10396201940189917195

`filter[A106839(2*n+1), A010051(#)]`
-/

namespace A142046.P10396201940189917195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106839 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A142046.P10396201940189917195

namespace A142046

/-- `filter[A106839(2*n+1), A010051(#)]` -/
def P10396201940189917195.Spec : Prop :=
  ∀ n, P10396201940189917195.a n = A142046 (n + 1)

end A142046

/-! ## A142046.P10798848015873083588

`filter[A106839(2*n+1), A355937(#)]`
-/

namespace A142046.P10798848015873083588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106839 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355937 (f1 j).toNat = 1) n)

end

end A142046.P10798848015873083588

namespace A142046

/-- `filter[A106839(2*n+1), A355937(#)]` -/
def P10798848015873083588.Spec : Prop :=
  ∀ n, P10798848015873083588.a n = A142046 (n + 1)

end A142046

/-! ## A142046.P5801890910226929553

`filter[A106839(2*n+1), A365716(#)]`
-/

namespace A142046.P5801890910226929553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106839 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A365716 (f1 j).toNat = 1) n)

end

end A142046.P5801890910226929553

namespace A142046

/-- `filter[A106839(2*n+1), A365716(#)]` -/
def P5801890910226929553.Spec : Prop :=
  ∀ n, P5801890910226929553.a n = A142046 (n + 1)

end A142046

/-!
# A142047: Primes congruent to 29 mod 32.

The programs for A142047, the canonical program `A142047.P5700770285790569133` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142047 has offset 1).

The definition of A142047 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142047.P5700770285790569133

`∪[A142938(n+1), A142953(n+1)]`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A142047

/-- `∪[A142938(n+1), A142953(n+1)]` -/
def P5700770285790569133.Spec : Prop :=
  ∀ n, (P5700770285790569133.a n : ℤ) = A142047 (n + 1)

theorem P5700770285790569133.correct : P5700770285790569133.Spec := by
  intro n
  simp only [A142047, Nat.add_sub_cancel]

end A142047

/-! ## A142047.P6369648554180681246

`p?[32*n-3]`
-/

namespace A142047.P6369648554180681246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (32 * n : ℤ) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142047.P6369648554180681246

namespace A142047

/-- `p?[32*n-3]` -/
def P6369648554180681246.Spec : Prop :=
  ∀ n, P6369648554180681246.a n = A142047 (n + 1)

end A142047

/-! ## A142047.P5483021769106497972

`∩[A003628(n+1), A239128(n+1)-2]`
-/

namespace A142047.P5483021769106497972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003628 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239128 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142047.P5483021769106497972

namespace A142047

/-- `∩[A003628(n+1), A239128(n+1)-2]` -/
def P5483021769106497972.Spec : Prop :=
  ∀ n, (P5483021769106497972.a n : ℤ) = A142047 (n + 1)

end A142047

/-! ## A142047.P6732033133587506410

`∩[A045355(n+1), A239128(n+1)-2]`
-/

namespace A142047.P6732033133587506410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045355 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239128 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142047.P6732033133587506410

namespace A142047

/-- `∩[A045355(n+1), A239128(n+1)-2]` -/
def P6732033133587506410.Spec : Prop :=
  ∀ n, (P6732033133587506410.a n : ℤ) = A142047 (n + 1)

end A142047

/-! ## A142047.P4739006531509677326

`∩[A228228(n+1), A239128(n+1)-2]`
-/

namespace A142047.P4739006531509677326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228228 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239128 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142047.P4739006531509677326

namespace A142047

/-- `∩[A228228(n+1), A239128(n+1)-2]` -/
def P4739006531509677326.Spec : Prop :=
  ∀ n, (P4739006531509677326.a n : ℤ) = A142047 (n + 1)

end A142047

/-! ## A142047.P13519447906325008385

`record[p?[A082285(A000265(n+1))]]`
-/

namespace A142047.P13519447906325008385
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082285 (A000265 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142047.P13519447906325008385

namespace A142047

/-- `record[p?[A082285(A000265(n+1))]]` -/
def P13519447906325008385.Spec : Prop :=
  ∀ n, P13519447906325008385.a n = A142047 (n + 1)

end A142047

/-! ## A142047.P18061863393902864134

`p?[A082285(2*n+1)]*A050932(A082285(n+1))`
-/

namespace A142047.P18061863393902864134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082285 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * A050932 (A082285 (n + 1)).toNat

end

end A142047.P18061863393902864134

namespace A142047

/-- `p?[A082285(2*n+1)]*A050932(A082285(n+1))` -/
def P18061863393902864134.Spec : Prop :=
  ∀ n, P18061863393902864134.a n = A142047 (n + 1)

end A142047

/-! ## A142047.P6701516919269204725

`∩[A082285(2*n+1), A002144(n+2)]`
-/

namespace A142047.P6701516919269204725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082285 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142047.P6701516919269204725

namespace A142047

/-- `∩[A082285(2*n+1), A002144(n+2)]` -/
def P6701516919269204725.Spec : Prop :=
  ∀ n, (P6701516919269204725.a n : ℤ) = A142047 (n + 1)

end A142047

/-! ## A142047.P6191971516750241947

`∩[A082285(2*n+1), A002313(n+2)]`
-/

namespace A142047.P6191971516750241947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082285 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002313 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142047.P6191971516750241947

namespace A142047

/-- `∩[A082285(2*n+1), A002313(n+2)]` -/
def P6191971516750241947.Spec : Prop :=
  ∀ n, (P6191971516750241947.a n : ℤ) = A142047 (n + 1)

end A142047

/-! ## A142047.P303445167576247380

`∩[A082285(2*n+1), A003628(n+2)]`
-/

namespace A142047.P303445167576247380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082285 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003628 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142047.P303445167576247380

namespace A142047

/-- `∩[A082285(2*n+1), A003628(n+2)]` -/
def P303445167576247380.Spec : Prop :=
  ∀ n, (P303445167576247380.a n : ℤ) = A142047 (n + 1)

end A142047

/-! ## A142047.P4250267411768637670

`∩[A082285(2*n+1), A045355(n+2)]`
-/

namespace A142047.P4250267411768637670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082285 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045355 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142047.P4250267411768637670

namespace A142047

/-- `∩[A082285(2*n+1), A045355(n+2)]` -/
def P4250267411768637670.Spec : Prop :=
  ∀ n, (P4250267411768637670.a n : ℤ) = A142047 (n + 1)

end A142047

/-! ## A142047.P2572572958431819635

`∩[A125169(2*n+1)-2, A003628(n+2)]`
-/

namespace A142047.P2572572958431819635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125169 (2 * n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003628 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142047.P2572572958431819635

namespace A142047

/-- `∩[A125169(2*n+1)-2, A003628(n+2)]` -/
def P2572572958431819635.Spec : Prop :=
  ∀ n, (P2572572958431819635.a n : ℤ) = A142047 (n + 1)

end A142047

/-! ## A142047.P15808062200693916118

`∩[A125169(2*n+1)-2, A045355(n+2)]`
-/

namespace A142047.P15808062200693916118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125169 (2 * n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045355 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142047.P15808062200693916118

namespace A142047

/-- `∩[A125169(2*n+1)-2, A045355(n+2)]` -/
def P15808062200693916118.Spec : Prop :=
  ∀ n, (P15808062200693916118.a n : ℤ) = A142047 (n + 1)

end A142047

/-! ## A142047.P12983108930976918517

`∩[A082285(2*n+1), A003629(n+2)]`
-/

namespace A142047.P12983108930976918517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082285 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003629 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142047.P12983108930976918517

namespace A142047

/-- `∩[A082285(2*n+1), A003629(n+2)]` -/
def P12983108930976918517.Spec : Prop :=
  ∀ n, (P12983108930976918517.a n : ℤ) = A142047 (n + 1)

end A142047

/-! ## A142047.P12816252204137323790

`∩[A082285(2*n+1), A042999(n+2)]`
-/

namespace A142047.P12816252204137323790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082285 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042999 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142047.P12816252204137323790

namespace A142047

/-- `∩[A082285(2*n+1), A042999(n+2)]` -/
def P12816252204137323790.Spec : Prop :=
  ∀ n, (P12816252204137323790.a n : ℤ) = A142047 (n + 1)

end A142047

/-! ## A142047.P12473650224996969462

`∩[A106839(2*n+1)+2, A003629(n+2)]`
-/

namespace A142047.P12473650224996969462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106839 (2 * n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003629 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142047.P12473650224996969462

namespace A142047

/-- `∩[A106839(2*n+1)+2, A003629(n+2)]` -/
def P12473650224996969462.Spec : Prop :=
  ∀ n, (P12473650224996969462.a n : ℤ) = A142047 (n + 1)

end A142047

/-! ## A142047.P4215691593912272955

`∩[A082285(2*n+1), A055025(n+2)]`
-/

namespace A142047.P4215691593912272955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082285 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055025 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142047.P4215691593912272955

namespace A142047

/-- `∩[A082285(2*n+1), A055025(n+2)]` -/
def P4215691593912272955.Spec : Prop :=
  ∀ n, (P4215691593912272955.a n : ℤ) = A142047 (n + 1)

end A142047

/-! ## A142047.P7377636579038167668

`∩[A082285(2*n+1), A172480(n+2)]`
-/

namespace A142047.P7377636579038167668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082285 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172480 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142047.P7377636579038167668

namespace A142047

/-- `∩[A082285(2*n+1), A172480(n+2)]` -/
def P7377636579038167668.Spec : Prop :=
  ∀ n, (P7377636579038167668.a n : ℤ) = A142047 (n + 1)

end A142047

/-! ## A142047.P9696417718859187857

`∩[A082285(2*n+1), A319041(n+2)]`
-/

namespace A142047.P9696417718859187857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082285 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319041 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142047.P9696417718859187857

namespace A142047

/-- `∩[A082285(2*n+1), A319041(n+2)]` -/
def P9696417718859187857.Spec : Prop :=
  ∀ n, (P9696417718859187857.a n : ℤ) = A142047 (n + 1)

end A142047

/-! ## A142047.P8888923224663968411

`record[A020639(4*or(7, n)+1)]`
-/

namespace A142047.P8888923224663968411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (4 * Nat.lor 7 n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142047.P8888923224663968411

namespace A142047

/-- `record[A020639(4*or(7, n)+1)]` -/
def P8888923224663968411.Spec : Prop :=
  ∀ n, P8888923224663968411.a n = A142047 (n + 1)

end A142047

/-!
# A142049: Primes congruent to 1 mod 33.

The programs for A142049, the canonical program `A142049.P7957472508449430480` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142049 has offset 1).

The definition of A142049 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3909 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142049.P7957472508449430480

`p?[33*n+1]`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A142049

/-- `p?[33*n+1]` -/
def P7957472508449430480.Spec : Prop :=
  ∀ n, (P7957472508449430480.a n : ℤ) = A142049 (n + 1)

theorem P7957472508449430480.correct : P7957472508449430480.Spec := by
  intro n
  simp only [A142049, Nat.add_sub_cancel]

end A142049

/-! ## A142049.P2324387687633652275

`∩[A107013(n+1), A141849(n+1)]`
-/

namespace A142049.P2324387687633652275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107013 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141849 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142049.P2324387687633652275

namespace A142049

/-- `∩[A107013(n+1), A141849(n+1)]` -/
def P2324387687633652275.Spec : Prop :=
  ∀ n, (P2324387687633652275.a n : ℤ) = A142049 (n + 1)

end A142049

/-! ## A142049.P12419091708971008458

`∩[A141177(n+1), A141849(n+1)]`
-/

namespace A142049.P12419091708971008458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141177 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141849 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142049.P12419091708971008458

namespace A142049

/-- `∩[A141177(n+1), A141849(n+1)]` -/
def P12419091708971008458.Spec : Prop :=
  ∀ n, (P12419091708971008458.a n : ℤ) = A142049 (n + 1)

end A142049

/-! ## A142049.P10193192934615966403

`∩[A107013(n+1), A215390(n+1)]`
-/

namespace A142049.P10193192934615966403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107013 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215390 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142049.P10193192934615966403

namespace A142049

/-- `∩[A107013(n+1), A215390(n+1)]` -/
def P10193192934615966403.Spec : Prop :=
  ∀ n, (P10193192934615966403.a n : ℤ) = A142049 (n + 1)

end A142049

/-! ## A142049.P14439465353427909027

`∩[A141177(n+1), A215390(n+1)]`
-/

namespace A142049.P14439465353427909027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141177 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215390 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142049.P14439465353427909027

namespace A142049

/-- `∩[A141177(n+1), A215390(n+1)]` -/
def P14439465353427909027.Spec : Prop :=
  ∀ n, (P14439465353427909027.a n : ℤ) = A142049 (n + 1)

end A142049

/-! ## A142049.P6097341544933922774

`∩[A107013(n+1), A352494(n+1)]`
-/

namespace A142049.P6097341544933922774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107013 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352494 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142049.P6097341544933922774

namespace A142049

/-- `∩[A107013(n+1), A352494(n+1)]` -/
def P6097341544933922774.Spec : Prop :=
  ∀ n, (P6097341544933922774.a n : ℤ) = A142049 (n + 1)

end A142049

/-! ## A142049.P12827846542449099988

`∩[A141177(n+1), A352494(n+1)]`
-/

namespace A142049.P12827846542449099988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141177 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352494 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142049.P12827846542449099988

namespace A142049

/-- `∩[A141177(n+1), A352494(n+1)]` -/
def P12827846542449099988.Spec : Prop :=
  ∀ n, (P12827846542449099988.a n : ℤ) = A142049 (n + 1)

end A142049

/-! ## A142049.P4023926437510414778

`∩[A141849(n+1), A161505(n+1)]`
-/

namespace A142049.P4023926437510414778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141849 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161505 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142049.P4023926437510414778

namespace A142049

/-- `∩[A141849(n+1), A161505(n+1)]` -/
def P4023926437510414778.Spec : Prop :=
  ∀ n, (P4023926437510414778.a n : ℤ) = A142049 (n + 1)

end A142049

/-! ## A142049.P13822710585203619267

`∩[A161505(n+1), A215390(n+1)]`
-/

namespace A142049.P13822710585203619267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161505 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215390 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142049.P13822710585203619267

namespace A142049

/-- `∩[A161505(n+1), A215390(n+1)]` -/
def P13822710585203619267.Spec : Prop :=
  ∀ n, (P13822710585203619267.a n : ℤ) = A142049 (n + 1)

end A142049

/-! ## A142049.P1732218785152367007

`∩[A161505(n+1), A215214(n+1)]`
-/

namespace A142049.P1732218785152367007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161505 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215214 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142049.P1732218785152367007

namespace A142049

/-- `∩[A161505(n+1), A215214(n+1)]` -/
def P1732218785152367007.Spec : Prop :=
  ∀ n, (P1732218785152367007.a n : ℤ) = A142049 (n + 1)

end A142049

/-! ## A142049.P1778026063478214362

`∩[A138686(n+1), A141849(n+1)]`
-/

namespace A142049.P1778026063478214362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138686 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141849 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142049.P1778026063478214362

namespace A142049

/-- `∩[A138686(n+1), A141849(n+1)]` -/
def P1778026063478214362.Spec : Prop :=
  ∀ n, (P1778026063478214362.a n : ℤ) = A142049 (n + 1)

end A142049

/-! ## A142049.P2189762732667056640

`∩[A002476(n+1), A141849(n+1)]`
-/

namespace A142049.P2189762732667056640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002476 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141849 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142049.P2189762732667056640

namespace A142049

/-- `∩[A002476(n+1), A141849(n+1)]` -/
def P2189762732667056640.Spec : Prop :=
  ∀ n, (P2189762732667056640.a n : ℤ) = A142049 (n + 1)

end A142049

/-! ## A142049.P8604899133596931430

`∩[A007645(n+1), A141849(n+1)]`
-/

namespace A142049.P8604899133596931430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007645 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141849 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142049.P8604899133596931430

namespace A142049

/-- `∩[A007645(n+1), A141849(n+1)]` -/
def P8604899133596931430.Spec : Prop :=
  ∀ n, (P8604899133596931430.a n : ℤ) = A142049 (n + 1)

end A142049

/-! ## A142049.P14167874460319964950

`∩[A045331(n+1), A141849(n+1)]`
-/

namespace A142049.P14167874460319964950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045331 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141849 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142049.P14167874460319964950

namespace A142049

/-- `∩[A045331(n+1), A141849(n+1)]` -/
def P14167874460319964950.Spec : Prop :=
  ∀ n, (P14167874460319964950.a n : ℤ) = A142049 (n + 1)

end A142049

/-! ## A142049.P8991045807968409380

`∩[A045375(n+1), A141849(n+1)]`
-/

namespace A142049.P8991045807968409380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045375 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141849 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142049.P8991045807968409380

namespace A142049

/-- `∩[A045375(n+1), A141849(n+1)]` -/
def P8991045807968409380.Spec : Prop :=
  ∀ n, (P8991045807968409380.a n : ℤ) = A142049 (n + 1)

end A142049

/-! ## A142049.P1909925882728467726

`∩[A123365(n+1), A141849(n+1)]`
-/

namespace A142049.P1909925882728467726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123365 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141849 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142049.P1909925882728467726

namespace A142049

/-- `∩[A123365(n+1), A141849(n+1)]` -/
def P1909925882728467726.Spec : Prop :=
  ∀ n, (P1909925882728467726.a n : ℤ) = A142049 (n + 1)

end A142049

/-! ## A142049.P1359083437655103840

`∩[A141849(n+1), A279815(n+1)]`
-/

namespace A142049.P1359083437655103840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141849 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279815 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142049.P1359083437655103840

namespace A142049

/-- `∩[A141849(n+1), A279815(n+1)]` -/
def P1359083437655103840.Spec : Prop :=
  ∀ n, (P1359083437655103840.a n : ℤ) = A142049 (n + 1)

end A142049

/-! ## A142049.P17110759870949960731

`∩[A038907(n+1), A141849(n+1)]`
-/

namespace A142049.P17110759870949960731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038907 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141849 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142049.P17110759870949960731

namespace A142049

/-- `∩[A038907(n+1), A141849(n+1)]` -/
def P17110759870949960731.Spec : Prop :=
  ∀ n, (P17110759870949960731.a n : ℤ) = A142049 (n + 1)

end A142049

/-! ## A142049.P2024661542430349875

`∩[A055664(n+1), A141849(n+1)]`
-/

namespace A142049.P2024661542430349875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055664 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141849 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142049.P2024661542430349875

namespace A142049

/-- `∩[A055664(n+1), A141849(n+1)]` -/
def P2024661542430349875.Spec : Prop :=
  ∀ n, (P2024661542430349875.a n : ℤ) = A142049 (n + 1)

end A142049

/-! ## A142049.P9978965932266937285

`∩[A133290(n+1), A141849(n+1)]`
-/

namespace A142049.P9978965932266937285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133290 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141849 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142049.P9978965932266937285

namespace A142049

/-- `∩[A133290(n+1), A141849(n+1)]` -/
def P9978965932266937285.Spec : Prop :=
  ∀ n, (P9978965932266937285.a n : ℤ) = A142049 (n + 1)

end A142049

/-!
# A142050: Primes congruent to 2 mod 33.

The programs for A142050, the canonical program `A142050.P14625853988464788971` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142050 has offset 1).

The definition of A142050 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3911 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142050.P14625853988464788971

`p?[33*n+2]`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A142050

/-- `p?[33*n+2]` -/
def P14625853988464788971.Spec : Prop :=
  ∀ n, (P14625853988464788971.a n : ℤ) = A142050 (n + 1)

theorem P14625853988464788971.correct : P14625853988464788971.Spec := by
  intro n
  simp only [A142050, Nat.add_sub_cancel]

end A142050

/-! ## A142050.P10008859653724763305

`∩[A090187(n+1), A141176(n+1)]`
-/

namespace A142050.P10008859653724763305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090187 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141176 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142050.P10008859653724763305

namespace A142050

/-- `∩[A090187(n+1), A141176(n+1)]` -/
def P10008859653724763305.Spec : Prop :=
  ∀ n, (P10008859653724763305.a n : ℤ) = A142050 (n + 1)

end A142050

/-! ## A142050.P12077890153396206425

`∩[A141176(n+1), A214888(n+1)]`
-/

namespace A142050.P12077890153396206425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141176 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214888 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142050.P12077890153396206425

namespace A142050

/-- `∩[A141176(n+1), A214888(n+1)]` -/
def P12077890153396206425.Spec : Prop :=
  ∀ n, (P12077890153396206425.a n : ℤ) = A142050 (n + 1)

end A142050

/-! ## A142050.P14490280284622871512

`∩[A141176(n+1), A215167(n+1)]`
-/

namespace A142050.P14490280284622871512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141176 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215167 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142050.P14490280284622871512

namespace A142050

/-- `∩[A141176(n+1), A215167(n+1)]` -/
def P14490280284622871512.Spec : Prop :=
  ∀ n, (P14490280284622871512.a n : ℤ) = A142050 (n + 1)

end A142050

/-! ## A142050.P12944940562536692079

`∩[A141176(n+1), A215390(n+1)]`
-/

namespace A142050.P12944940562536692079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141176 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215390 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142050.P12944940562536692079

namespace A142050

/-- `∩[A141176(n+1), A215390(n+1)]` -/
def P12944940562536692079.Spec : Prop :=
  ∀ n, (P12944940562536692079.a n : ℤ) = A142050 (n + 1)

end A142050

/-! ## A142050.P10266900010259685309

`∩[A141176(n+1), A215102(n+1)]`
-/

namespace A142050.P10266900010259685309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141176 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215102 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142050.P10266900010259685309

namespace A142050

/-- `∩[A141176(n+1), A215102(n+1)]` -/
def P10266900010259685309.Spec : Prop :=
  ∀ n, (P10266900010259685309.a n : ℤ) = A142050 (n + 1)

end A142050

/-! ## A142050.P8767224818767062083

`∩[A141176(n+1), A215134(n+1)]`
-/

namespace A142050.P8767224818767062083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141176 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215134 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142050.P8767224818767062083

namespace A142050

/-- `∩[A141176(n+1), A215134(n+1)]` -/
def P8767224818767062083.Spec : Prop :=
  ∀ n, (P8767224818767062083.a n : ℤ) = A142050 (n + 1)

end A142050

/-! ## A142050.P552246055563636675

`∩[A141176(n+1), A215279(n+1)]`
-/

namespace A142050.P552246055563636675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141176 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215279 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142050.P552246055563636675

namespace A142050

/-- `∩[A141176(n+1), A215279(n+1)]` -/
def P552246055563636675.Spec : Prop :=
  ∀ n, (P552246055563636675.a n : ℤ) = A142050 (n + 1)

end A142050

/-! ## A142050.P9926598151773118244

`A000027(p?[A174312(n)+2+n])`
-/

namespace A142050.P9926598151773118244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174312 n + 2 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142050.P9926598151773118244

namespace A142050

/-- `A000027(p?[A174312(n)+2+n])` -/
def P9926598151773118244.Spec : Prop :=
  ∀ n, P9926598151773118244.a n = A142050 (n + 1)

end A142050

/-! ## A142050.P10533675385667890569

`∩[A141176(n+1), A215302(n+1)]`
-/

namespace A142050.P10533675385667890569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141176 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215302 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142050.P10533675385667890569

namespace A142050

/-- `∩[A141176(n+1), A215302(n+1)]` -/
def P10533675385667890569.Spec : Prop :=
  ∀ n, (P10533675385667890569.a n : ℤ) = A142050 (n + 1)

end A142050

/-! ## A142050.P10974964396014049695

`∩[A141176(n+1), A215306(n+1)]`
-/

namespace A142050.P10974964396014049695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141176 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215306 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142050.P10974964396014049695

namespace A142050

/-- `∩[A141176(n+1), A215306(n+1)]` -/
def P10974964396014049695.Spec : Prop :=
  ∀ n, (P10974964396014049695.a n : ℤ) = A142050 (n + 1)

end A142050

/-! ## A142050.P3356291644839176070

`∩[A141176(n+1), A215314(n+1)]`
-/

namespace A142050.P3356291644839176070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141176 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215314 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142050.P3356291644839176070

namespace A142050

/-- `∩[A141176(n+1), A215314(n+1)]` -/
def P3356291644839176070.Spec : Prop :=
  ∀ n, (P3356291644839176070.a n : ℤ) = A142050 (n + 1)

end A142050

/-! ## A142050.P482810546910942405

`∩[A038907(n+1), A090187(n+1)]`
-/

namespace A142050.P482810546910942405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038907 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090187 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142050.P482810546910942405

namespace A142050

/-- `∩[A038907(n+1), A090187(n+1)]` -/
def P482810546910942405.Spec : Prop :=
  ∀ n, (P482810546910942405.a n : ℤ) = A142050 (n + 1)

end A142050

/-! ## A142050.P14496152093698273973

`∩[A003627(n+1), A090187(n+1)]`
-/

namespace A142050.P14496152093698273973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003627 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090187 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142050.P14496152093698273973

namespace A142050

/-- `∩[A003627(n+1), A090187(n+1)]` -/
def P14496152093698273973.Spec : Prop :=
  ∀ n, (P14496152093698273973.a n : ℤ) = A142050 (n + 1)

end A142050

/-! ## A142050.P5314121013501772202

`∩[A141176(n+1), A215310(n+1)]`
-/

namespace A142050.P5314121013501772202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141176 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215310 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142050.P5314121013501772202

namespace A142050

/-- `∩[A141176(n+1), A215310(n+1)]` -/
def P5314121013501772202.Spec : Prop :=
  ∀ n, (P5314121013501772202.a n : ℤ) = A142050 (n + 1)

end A142050

/-! ## A142050.P1952604333122348781

`∩[A045309(n+1), A090187(n+1)]`
-/

namespace A142050.P1952604333122348781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045309 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090187 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142050.P1952604333122348781

namespace A142050

/-- `∩[A045309(n+1), A090187(n+1)]` -/
def P1952604333122348781.Spec : Prop :=
  ∀ n, (P1952604333122348781.a n : ℤ) = A142050 (n + 1)

end A142050

/-! ## A142050.P16694539692877811366

`∩[A066501(n+1), A090187(n+1)]`
-/

namespace A142050.P16694539692877811366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066501 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090187 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142050.P16694539692877811366

namespace A142050

/-- `∩[A066501(n+1), A090187(n+1)]` -/
def P16694539692877811366.Spec : Prop :=
  ∀ n, (P16694539692877811366.a n : ℤ) = A142050 (n + 1)

end A142050

/-! ## A142050.P1586975716385500168

`A000027(p?[A017413(3*n)])`
-/

namespace A142050.P1586975716385500168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017413 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142050.P1586975716385500168

namespace A142050

/-- `A000027(p?[A017413(3*n)])` -/
def P1586975716385500168.Spec : Prop :=
  ∀ n, P1586975716385500168.a n = A142050 (n + 1)

end A142050

/-! ## A142050.P12705672856327469412

`∩[A003627(n+1), A017413(n)]`
-/

namespace A142050.P12705672856327469412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003627 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017413 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142050.P12705672856327469412

namespace A142050

/-- `∩[A003627(n+1), A017413(n)]` -/
def P12705672856327469412.Spec : Prop :=
  ∀ n, (P12705672856327469412.a n : ℤ) = A142050 (n + 1)

end A142050

/-! ## A142050.P256699348644792934

`∩[A038907(n+1), A017413(n)]`
-/

namespace A142050.P256699348644792934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038907 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017413 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142050.P256699348644792934

namespace A142050

/-- `∩[A038907(n+1), A017413(n)]` -/
def P256699348644792934.Spec : Prop :=
  ∀ n, (P256699348644792934.a n : ℤ) = A142050 (n + 1)

end A142050

/-!
# A142051: Primes congruent to 4 mod 33.

The programs for A142051, the canonical program `A142051.P11565715162518936311` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142051 has offset 1).

The definition of A142051 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3912 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142051.P11565715162518936311

`p?[33*n+4]`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A142051

/-- `p?[33*n+4]` -/
def P11565715162518936311.Spec : Prop :=
  ∀ n, (P11565715162518936311.a n : ℤ) = A142051 (n + 1)

theorem P11565715162518936311.correct : P11565715162518936311.Spec := by
  intro n
  simp only [A142051, Nat.add_sub_cancel]

end A142051

/-! ## A142051.P11818618190543426006

`∩[A107013(n+1), A141851(n+1)]`
-/

namespace A142051.P11818618190543426006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107013 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141851 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142051.P11818618190543426006

namespace A142051

/-- `∩[A107013(n+1), A141851(n+1)]` -/
def P11818618190543426006.Spec : Prop :=
  ∀ n, (P11818618190543426006.a n : ℤ) = A142051 (n + 1)

end A142051

/-! ## A142051.P16984858192510166025

`∩[A141177(n+1), A141851(n+1)]`
-/

namespace A142051.P16984858192510166025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141177 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141851 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142051.P16984858192510166025

namespace A142051

/-- `∩[A141177(n+1), A141851(n+1)]` -/
def P16984858192510166025.Spec : Prop :=
  ∀ n, (P16984858192510166025.a n : ℤ) = A142051 (n + 1)

end A142051

/-! ## A142051.P9563713480039865919

`∩[A002476(n+1), A141851(n+1)]`
-/

namespace A142051.P9563713480039865919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002476 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141851 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142051.P9563713480039865919

namespace A142051

/-- `∩[A002476(n+1), A141851(n+1)]` -/
def P9563713480039865919.Spec : Prop :=
  ∀ n, (P9563713480039865919.a n : ℤ) = A142051 (n + 1)

end A142051

/-! ## A142051.P9741977803499185474

`∩[A007645(n+1), A141851(n+1)]`
-/

namespace A142051.P9741977803499185474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007645 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141851 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142051.P9741977803499185474

namespace A142051

/-- `∩[A007645(n+1), A141851(n+1)]` -/
def P9741977803499185474.Spec : Prop :=
  ∀ n, (P9741977803499185474.a n : ℤ) = A142051 (n + 1)

end A142051

/-! ## A142051.P10654813677752544608

`∩[A045375(n+1), A141851(n+1)]`
-/

namespace A142051.P10654813677752544608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045375 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141851 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142051.P10654813677752544608

namespace A142051

/-- `∩[A045375(n+1), A141851(n+1)]` -/
def P10654813677752544608.Spec : Prop :=
  ∀ n, (P10654813677752544608.a n : ℤ) = A142051 (n + 1)

end A142051

/-! ## A142051.P6306618549777624003

`∩[A123365(n+1), A141851(n+1)]`
-/

namespace A142051.P6306618549777624003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123365 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141851 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142051.P6306618549777624003

namespace A142051

/-- `∩[A123365(n+1), A141851(n+1)]` -/
def P6306618549777624003.Spec : Prop :=
  ∀ n, (P6306618549777624003.a n : ℤ) = A142051 (n + 1)

end A142051

/-! ## A142051.P17801951538865332612

`∩[A038907(n+1), A141851(n+1)]`
-/

namespace A142051.P17801951538865332612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038907 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141851 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142051.P17801951538865332612

namespace A142051

/-- `∩[A038907(n+1), A141851(n+1)]` -/
def P17801951538865332612.Spec : Prop :=
  ∀ n, (P17801951538865332612.a n : ℤ) = A142051 (n + 1)

end A142051

/-! ## A142051.P16703885670560393628

`∩[A045331(n+1), A141851(n+1)]`
-/

namespace A142051.P16703885670560393628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045331 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141851 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142051.P16703885670560393628

namespace A142051

/-- `∩[A045331(n+1), A141851(n+1)]` -/
def P16703885670560393628.Spec : Prop :=
  ∀ n, (P16703885670560393628.a n : ℤ) = A142051 (n + 1)

end A142051

/-! ## A142051.P12643342625223100233

`∩[A107013(n+1), A137977(n+1)]`
-/

namespace A142051.P12643342625223100233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107013 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137977 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142051.P12643342625223100233

namespace A142051

/-- `∩[A107013(n+1), A137977(n+1)]` -/
def P12643342625223100233.Spec : Prop :=
  ∀ n, (P12643342625223100233.a n : ℤ) = A142051 (n + 1)

end A142051

/-! ## A142051.P13985698764419190478

`∩[A137977(n+1), A141177(n+1)]`
-/

namespace A142051.P13985698764419190478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137977 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141177 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142051.P13985698764419190478

namespace A142051

/-- `∩[A137977(n+1), A141177(n+1)]` -/
def P13985698764419190478.Spec : Prop :=
  ∀ n, (P13985698764419190478.a n : ℤ) = A142051 (n + 1)

end A142051

/-! ## A142051.P12408411966449394470

`∩[A141851(n+1), A279815(n+1)]`
-/

namespace A142051.P12408411966449394470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141851 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279815 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142051.P12408411966449394470

namespace A142051

/-- `∩[A141851(n+1), A279815(n+1)]` -/
def P12408411966449394470.Spec : Prop :=
  ∀ n, (P12408411966449394470.a n : ℤ) = A142051 (n + 1)

end A142051

/-! ## A142051.P16818890707252505078

`∩[A055664(n+1), A141851(n+1)]`
-/

namespace A142051.P16818890707252505078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055664 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141851 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142051.P16818890707252505078

namespace A142051

/-- `∩[A055664(n+1), A141851(n+1)]` -/
def P16818890707252505078.Spec : Prop :=
  ∀ n, (P16818890707252505078.a n : ℤ) = A142051 (n + 1)

end A142051

/-! ## A142051.P15055311339536612340

`∩[A133290(n+1), A141851(n+1)]`
-/

namespace A142051.P15055311339536612340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133290 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141851 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142051.P15055311339536612340

namespace A142051

/-- `∩[A133290(n+1), A141851(n+1)]` -/
def P15055311339536612340.Spec : Prop :=
  ∀ n, (P15055311339536612340.a n : ℤ) = A142051 (n + 1)

end A142051

/-! ## A142051.P3150422799059810931

`∩[A137827(n+1), A141851(n+1)]`
-/

namespace A142051.P3150422799059810931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137827 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141851 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142051.P3150422799059810931

namespace A142051

/-- `∩[A137827(n+1), A141851(n+1)]` -/
def P3150422799059810931.Spec : Prop :=
  ∀ n, (P3150422799059810931.a n : ℤ) = A142051 (n + 1)

end A142051

/-! ## A142051.P16212131846243769521

`filter[A141851(n+1), A070563(#)]`
-/

namespace A142051.P16212131846243769521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141851 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A070563 (f1 j).toNat = 1) n)

end

end A142051.P16212131846243769521

namespace A142051

/-- `filter[A141851(n+1), A070563(#)]` -/
def P16212131846243769521.Spec : Prop :=
  ∀ n, P16212131846243769521.a n = A142051 (n + 1)

end A142051

/-! ## A142051.P15688023545253886540

`∩[A107925(n+1), A141851(n+1)]`
-/

namespace A142051.P15688023545253886540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107925 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141851 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142051.P15688023545253886540

namespace A142051

/-- `∩[A107925(n+1), A141851(n+1)]` -/
def P15688023545253886540.Spec : Prop :=
  ∀ n, (P15688023545253886540.a n : ℤ) = A142051 (n + 1)

end A142051

/-! ## A142051.P6162335952151933419

`∩[A004611(n+1), A141851(n+1)]`
-/

namespace A142051.P6162335952151933419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004611 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141851 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142051.P6162335952151933419

namespace A142051

/-- `∩[A004611(n+1), A141851(n+1)]` -/
def P6162335952151933419.Spec : Prop :=
  ∀ n, (P6162335952151933419.a n : ℤ) = A142051 (n + 1)

end A142051

/-! ## A142051.P2458527767664240670

`∩[A129904(n+1), A141851(n+1)]`
-/

namespace A142051.P2458527767664240670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129904 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141851 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142051.P2458527767664240670

namespace A142051

/-- `∩[A129904(n+1), A141851(n+1)]` -/
def P2458527767664240670.Spec : Prop :=
  ∀ n, (P2458527767664240670.a n : ℤ) = A142051 (n + 1)

end A142051

/-! ## A142051.P3132585029531731613

`∩[A002476(n+1), A017437(n)]`
-/

namespace A142051.P3132585029531731613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002476 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017437 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142051.P3132585029531731613

namespace A142051

/-- `∩[A002476(n+1), A017437(n)]` -/
def P3132585029531731613.Spec : Prop :=
  ∀ n, (P3132585029531731613.a n : ℤ) = A142051 (n + 1)

end A142051

/-!
# A142052: Primes congruent to 5 mod 33.

The programs for A142052, the canonical program `A142052.P14670125918708881788` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142052 has offset 1).

The definition of A142052 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3916 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142052.P14670125918708881788

`p?[3*11*n+5]`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A142052

/-- `p?[3*11*n+5]` -/
def P14670125918708881788.Spec : Prop :=
  ∀ n, (P14670125918708881788.a n : ℤ) = A142052 (n + 1)

theorem P14670125918708881788.correct : P14670125918708881788.Spec := by
  intro n
  simp only [A142052, Nat.add_sub_cancel]

end A142052

/-! ## A142052.P6895281679958877324

`∩[A107010(n+1), A141852(n+1)]`
-/

namespace A142052.P6895281679958877324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107010 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141852 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142052.P6895281679958877324

namespace A142052

/-- `∩[A107010(n+1), A141852(n+1)]` -/
def P6895281679958877324.Spec : Prop :=
  ∀ n, (P6895281679958877324.a n : ℤ) = A142052 (n + 1)

end A142052

/-! ## A142052.P4997266209504396848

`∩[A107010(n+1), A215167(n+1)]`
-/

namespace A142052.P4997266209504396848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107010 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215167 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142052.P4997266209504396848

namespace A142052

/-- `∩[A107010(n+1), A215167(n+1)]` -/
def P4997266209504396848.Spec : Prop :=
  ∀ n, (P4997266209504396848.a n : ℤ) = A142052 (n + 1)

end A142052

/-! ## A142052.P5302943568547238267

`∩[A107010(n+1), A215210(n+1)]`
-/

namespace A142052.P5302943568547238267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107010 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215210 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142052.P5302943568547238267

namespace A142052

/-- `∩[A107010(n+1), A215210(n+1)]` -/
def P5302943568547238267.Spec : Prop :=
  ∀ n, (P5302943568547238267.a n : ℤ) = A142052 (n + 1)

end A142052

/-! ## A142052.P3720511391819517386

`∩[A107010(n+1), A146511(n+1)]`
-/

namespace A142052.P3720511391819517386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107010 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146511 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142052.P3720511391819517386

namespace A142052

/-- `∩[A107010(n+1), A146511(n+1)]` -/
def P3720511391819517386.Spec : Prop :=
  ∀ n, (P3720511391819517386.a n : ℤ) = A142052 (n + 1)

end A142052

/-! ## A142052.P14594709427099691349

`∩[A141852(n+1), A146511(n+1)]`
-/

namespace A142052.P14594709427099691349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141852 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146511 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142052.P14594709427099691349

namespace A142052

/-- `∩[A141852(n+1), A146511(n+1)]` -/
def P14594709427099691349.Spec : Prop :=
  ∀ n, (P14594709427099691349.a n : ℤ) = A142052 (n + 1)

end A142052

/-! ## A142052.P16733984716230444930

`∩[A146511(n+1), A215102(n+1)]`
-/

namespace A142052.P16733984716230444930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146511 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215102 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142052.P16733984716230444930

namespace A142052

/-- `∩[A146511(n+1), A215102(n+1)]` -/
def P16733984716230444930.Spec : Prop :=
  ∀ n, (P16733984716230444930.a n : ℤ) = A142052 (n + 1)

end A142052

/-! ## A142052.P9610141947280024860

`∩[A146511(n+1), A215167(n+1)]`
-/

namespace A142052.P9610141947280024860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146511 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215167 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142052.P9610141947280024860

namespace A142052

/-- `∩[A146511(n+1), A215167(n+1)]` -/
def P9610141947280024860.Spec : Prop :=
  ∀ n, (P9610141947280024860.a n : ℤ) = A142052 (n + 1)

end A142052

/-! ## A142052.P8860488870779888613

`∩[A146511(n+1), A215210(n+1)]`
-/

namespace A142052.P8860488870779888613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146511 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215210 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142052.P8860488870779888613

namespace A142052

/-- `∩[A146511(n+1), A215210(n+1)]` -/
def P8860488870779888613.Spec : Prop :=
  ∀ n, (P8860488870779888613.a n : ℤ) = A142052 (n + 1)

end A142052

/-! ## A142052.P12074395780062924228

`∩[A146511(n+1), A215214(n+1)]`
-/

namespace A142052.P12074395780062924228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146511 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215214 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142052.P12074395780062924228

namespace A142052

/-- `∩[A146511(n+1), A215214(n+1)]` -/
def P12074395780062924228.Spec : Prop :=
  ∀ n, (P12074395780062924228.a n : ℤ) = A142052 (n + 1)

end A142052

/-! ## A142052.P6238950623251642808

`∩[A146511(n+1), A215306(n+1)]`
-/

namespace A142052.P6238950623251642808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146511 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215306 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142052.P6238950623251642808

namespace A142052

/-- `∩[A146511(n+1), A215306(n+1)]` -/
def P6238950623251642808.Spec : Prop :=
  ∀ n, (P6238950623251642808.a n : ℤ) = A142052 (n + 1)

end A142052

/-! ## A142052.P18239686517705133684

`∩[A146511(n+1), A167134(n+1)]`
-/

namespace A142052.P18239686517705133684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146511 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167134 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142052.P18239686517705133684

namespace A142052

/-- `∩[A146511(n+1), A167134(n+1)]` -/
def P18239686517705133684.Spec : Prop :=
  ∀ n, (P18239686517705133684.a n : ℤ) = A142052 (n + 1)

end A142052

/-! ## A142052.P2895047917148265587

`∩[A146511(n+1), A215314(n+1)]`
-/

namespace A142052.P2895047917148265587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146511 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215314 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142052.P2895047917148265587

namespace A142052

/-- `∩[A146511(n+1), A215314(n+1)]` -/
def P2895047917148265587.Spec : Prop :=
  ∀ n, (P2895047917148265587.a n : ℤ) = A142052 (n + 1)

end A142052

/-! ## A142052.P4959468852220568285

`∩[A146511(n+1), A215354(n+1)]`
-/

namespace A142052.P4959468852220568285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146511 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215354 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142052.P4959468852220568285

namespace A142052

/-- `∩[A146511(n+1), A215354(n+1)]` -/
def P4959468852220568285.Spec : Prop :=
  ∀ n, (P4959468852220568285.a n : ℤ) = A142052 (n + 1)

end A142052

/-! ## A142052.P7743504168506956368

`∩[A056874(n+1), A146511(n+1)]`
-/

namespace A142052.P7743504168506956368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056874 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146511 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142052.P7743504168506956368

namespace A142052

/-- `∩[A056874(n+1), A146511(n+1)]` -/
def P7743504168506956368.Spec : Prop :=
  ∀ n, (P7743504168506956368.a n : ℤ) = A142052 (n + 1)

end A142052

/-! ## A142052.P12023983129983549966

`∩[A137978(n+1), A146511(n+1)]`
-/

namespace A142052.P12023983129983549966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137978 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146511 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142052.P12023983129983549966

namespace A142052

/-- `∩[A137978(n+1), A146511(n+1)]` -/
def P12023983129983549966.Spec : Prop :=
  ∀ n, (P12023983129983549966.a n : ℤ) = A142052 (n + 1)

end A142052

/-! ## A142052.P15552722000522299189

`∩[A146511(n+1), A296920(n+1)]`
-/

namespace A142052.P15552722000522299189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146511 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296920 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142052.P15552722000522299189

namespace A142052

/-- `∩[A146511(n+1), A296920(n+1)]` -/
def P15552722000522299189.Spec : Prop :=
  ∀ n, (P15552722000522299189.a n : ℤ) = A142052 (n + 1)

end A142052

/-! ## A142052.P4864199215909835652

`∩[A003627(n+1), A141852(n+1)]`
-/

namespace A142052.P4864199215909835652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003627 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141852 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142052.P4864199215909835652

namespace A142052

/-- `∩[A003627(n+1), A141852(n+1)]` -/
def P4864199215909835652.Spec : Prop :=
  ∀ n, (P4864199215909835652.a n : ℤ) = A142052 (n + 1)

end A142052

/-! ## A142052.P10046617439476620107

`∩[A007528(n+1), A141852(n+1)]`
-/

namespace A142052.P10046617439476620107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007528 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141852 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142052.P10046617439476620107

namespace A142052

/-- `∩[A007528(n+1), A141852(n+1)]` -/
def P10046617439476620107.Spec : Prop :=
  ∀ n, (P10046617439476620107.a n : ℤ) = A142052 (n + 1)

end A142052

/-! ## A142052.P1139810303396407771

`∩[A038908(n+1), A141852(n+1)]`
-/

namespace A142052.P1139810303396407771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038908 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141852 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142052.P1139810303396407771

namespace A142052

/-- `∩[A038908(n+1), A141852(n+1)]` -/
def P1139810303396407771.Spec : Prop :=
  ∀ n, (P1139810303396407771.a n : ℤ) = A142052 (n + 1)

end A142052

/-!
# A142053: Primes congruent to 7 mod 33.

The programs for A142053, the canonical program `A142053.P13334455639310119624` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142053 has offset 1).

The definition of A142053 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3940 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142053.P13334455639310119624

`p?[33*n+7]`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A142053

/-- `p?[33*n+7]` -/
def P13334455639310119624.Spec : Prop :=
  ∀ n, (P13334455639310119624.a n : ℤ) = A142053 (n + 1)

theorem P13334455639310119624.correct : P13334455639310119624.Spec := by
  intro n
  simp only [A142053, Nat.add_sub_cancel]

end A142053

/-! ## A142053.P2834225124914963648

`∩[A141854(n+1), A161505(n+1)]`
-/

namespace A142053.P2834225124914963648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141854 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161505 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142053.P2834225124914963648

namespace A142053

/-- `∩[A141854(n+1), A161505(n+1)]` -/
def P2834225124914963648.Spec : Prop :=
  ∀ n, (P2834225124914963648.a n : ℤ) = A142053 (n + 1)

end A142053

/-! ## A142053.P11602596025294233303

`∩[A161505(n+1), A215206(n+1)]`
-/

namespace A142053.P11602596025294233303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161505 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215206 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142053.P11602596025294233303

namespace A142053

/-- `∩[A161505(n+1), A215206(n+1)]` -/
def P11602596025294233303.Spec : Prop :=
  ∀ n, (P11602596025294233303.a n : ℤ) = A142053 (n + 1)

end A142053

/-! ## A142053.P10943460031764765956

`∩[A161505(n+1), A215210(n+1)]`
-/

namespace A142053.P10943460031764765956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161505 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215210 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142053.P10943460031764765956

namespace A142053

/-- `∩[A161505(n+1), A215210(n+1)]` -/
def P10943460031764765956.Spec : Prop :=
  ∀ n, (P10943460031764765956.a n : ℤ) = A142053 (n + 1)

end A142053

/-! ## A142053.P8689981203829765453

`∩[A146511(n+1)+2, A215210(n+1)]`
-/

namespace A142053.P8689981203829765453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146511 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215210 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142053.P8689981203829765453

namespace A142053

/-- `∩[A146511(n+1)+2, A215210(n+1)]` -/
def P8689981203829765453.Spec : Prop :=
  ∀ n, (P8689981203829765453.a n : ℤ) = A142053 (n + 1)

end A142053

/-! ## A142053.P14754764202708092285

`∩[A146511(n+1)+2, A167134(n+1)]`
-/

namespace A142053.P14754764202708092285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146511 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167134 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142053.P14754764202708092285

namespace A142053

/-- `∩[A146511(n+1)+2, A167134(n+1)]` -/
def P14754764202708092285.Spec : Prop :=
  ∀ n, (P14754764202708092285.a n : ℤ) = A142053 (n + 1)

end A142053

/-! ## A142053.P6229069540949428705

`∩[A002476(n+1), A141854(n+1)]`
-/

namespace A142053.P6229069540949428705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002476 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141854 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142053.P6229069540949428705

namespace A142053

/-- `∩[A002476(n+1), A141854(n+1)]` -/
def P6229069540949428705.Spec : Prop :=
  ∀ n, (P6229069540949428705.a n : ℤ) = A142053 (n + 1)

end A142053

/-! ## A142053.P6067086319791510447

`∩[A007645(n+1), A141854(n+1)]`
-/

namespace A142053.P6067086319791510447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007645 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141854 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142053.P6067086319791510447

namespace A142053

/-- `∩[A007645(n+1), A141854(n+1)]` -/
def P6067086319791510447.Spec : Prop :=
  ∀ n, (P6067086319791510447.a n : ℤ) = A142053 (n + 1)

end A142053

/-! ## A142053.P6699280925482470857

`∩[A045331(n+1), A141854(n+1)]`
-/

namespace A142053.P6699280925482470857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045331 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141854 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142053.P6699280925482470857

namespace A142053

/-- `∩[A045331(n+1), A141854(n+1)]` -/
def P6699280925482470857.Spec : Prop :=
  ∀ n, (P6699280925482470857.a n : ℤ) = A142053 (n + 1)

end A142053

/-! ## A142053.P5755394665237223029

`∩[A045375(n+1), A141854(n+1)]`
-/

namespace A142053.P5755394665237223029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045375 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141854 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142053.P5755394665237223029

namespace A142053

/-- `∩[A045375(n+1), A141854(n+1)]` -/
def P5755394665237223029.Spec : Prop :=
  ∀ n, (P5755394665237223029.a n : ℤ) = A142053 (n + 1)

end A142053

/-! ## A142053.P11767385489149300326

`∩[A123365(n+1), A141854(n+1)]`
-/

namespace A142053.P11767385489149300326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123365 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141854 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142053.P11767385489149300326

namespace A142053

/-- `∩[A123365(n+1), A141854(n+1)]` -/
def P11767385489149300326.Spec : Prop :=
  ∀ n, (P11767385489149300326.a n : ℤ) = A142053 (n + 1)

end A142053

/-! ## A142053.P7770753557627941322

`∩[A141854(n+1), A279815(n+1)]`
-/

namespace A142053.P7770753557627941322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141854 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279815 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142053.P7770753557627941322

namespace A142053

/-- `∩[A141854(n+1), A279815(n+1)]` -/
def P7770753557627941322.Spec : Prop :=
  ∀ n, (P7770753557627941322.a n : ℤ) = A142053 (n + 1)

end A142053

/-! ## A142053.P10276115579297368959

`∩[A137978(n+1), A146511(n+1)+2]`
-/

namespace A142053.P10276115579297368959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137978 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146511 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142053.P10276115579297368959

namespace A142053

/-- `∩[A137978(n+1), A146511(n+1)+2]` -/
def P10276115579297368959.Spec : Prop :=
  ∀ n, (P10276115579297368959.a n : ℤ) = A142053 (n + 1)

end A142053

/-! ## A142053.P12780869772002531421

`∩[A038908(n+1), A141854(n+1)]`
-/

namespace A142053.P12780869772002531421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038908 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141854 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142053.P12780869772002531421

namespace A142053

/-- `∩[A038908(n+1), A141854(n+1)]` -/
def P12780869772002531421.Spec : Prop :=
  ∀ n, (P12780869772002531421.a n : ℤ) = A142053 (n + 1)

end A142053

/-! ## A142053.P5854943270337217525

`∩[A055664(n+1), A141854(n+1)]`
-/

namespace A142053.P5854943270337217525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055664 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141854 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142053.P5854943270337217525

namespace A142053

/-- `∩[A055664(n+1), A141854(n+1)]` -/
def P5854943270337217525.Spec : Prop :=
  ∀ n, (P5854943270337217525.a n : ℤ) = A142053 (n + 1)

end A142053

/-! ## A142053.P10684605578228233824

`∩[A133290(n+1), A141854(n+1)]`
-/

namespace A142053.P10684605578228233824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133290 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141854 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142053.P10684605578228233824

namespace A142053

/-- `∩[A133290(n+1), A141854(n+1)]` -/
def P10684605578228233824.Spec : Prop :=
  ∀ n, (P10684605578228233824.a n : ℤ) = A142053 (n + 1)

end A142053

/-! ## A142053.P13953882807998242341

`∩[A137827(n+1), A141854(n+1)]`
-/

namespace A142053.P13953882807998242341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137827 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141854 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142053.P13953882807998242341

namespace A142053

/-- `∩[A137827(n+1), A141854(n+1)]` -/
def P13953882807998242341.Spec : Prop :=
  ∀ n, (P13953882807998242341.a n : ℤ) = A142053 (n + 1)

end A142053

/-! ## A142053.P3487356695717891226

`filter[A141854(n+1), A070563(#)]`
-/

namespace A142053.P3487356695717891226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141854 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A070563 (f1 j).toNat = 1) n)

end

end A142053.P3487356695717891226

namespace A142053

/-- `filter[A141854(n+1), A070563(#)]` -/
def P3487356695717891226.Spec : Prop :=
  ∀ n, P3487356695717891226.a n = A142053 (n + 1)

end A142053

/-! ## A142053.P1160002308616862539

`∩[A107925(n+1), A141854(n+1)]`
-/

namespace A142053.P1160002308616862539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107925 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141854 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142053.P1160002308616862539

namespace A142053

/-- `∩[A107925(n+1), A141854(n+1)]` -/
def P1160002308616862539.Spec : Prop :=
  ∀ n, (P1160002308616862539.a n : ℤ) = A142053 (n + 1)

end A142053

/-! ## A142053.P8095758994218444874

`∩[A004611(n+1), A141854(n+1)]`
-/

namespace A142053.P8095758994218444874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004611 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141854 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142053.P8095758994218444874

namespace A142053

/-- `∩[A004611(n+1), A141854(n+1)]` -/
def P8095758994218444874.Spec : Prop :=
  ∀ n, (P8095758994218444874.a n : ℤ) = A142053 (n + 1)

end A142053

/-!
# A142054: Primes congruent to 8 mod 33.

The programs for A142054, the canonical program `A142054.P11674088080574549015` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142054 has offset 1).

The definition of A142054 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3936 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142054.P11674088080574549015

`p?[33*n+8]`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A142054

/-- `p?[33*n+8]` -/
def P11674088080574549015.Spec : Prop :=
  ∀ n, (P11674088080574549015.a n : ℤ) = A142054 (n + 1)

theorem P11674088080574549015.correct : P11674088080574549015.Spec := by
  intro n
  simp only [A142054, Nat.add_sub_cancel]

end A142054

/-! ## A142054.P140449546386152741

`∩[A141176(n+1), A141855(n+1)]`
-/

namespace A142054.P140449546386152741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141176 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141855 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142054.P140449546386152741

namespace A142054

/-- `∩[A141176(n+1), A141855(n+1)]` -/
def P140449546386152741.Spec : Prop :=
  ∀ n, (P140449546386152741.a n : ℤ) = A142054 (n + 1)

end A142054

/-! ## A142054.P13842646833660839286

`∩[A141855(n+1), A161505(n+1)]`
-/

namespace A142054.P13842646833660839286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141855 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161505 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142054.P13842646833660839286

namespace A142054

/-- `∩[A141855(n+1), A161505(n+1)]` -/
def P13842646833660839286.Spec : Prop :=
  ∀ n, (P13842646833660839286.a n : ℤ) = A142054 (n + 1)

end A142054

/-! ## A142054.P6308545868064741914

`∩[A038907(n+1), A141855(n+1)]`
-/

namespace A142054.P6308545868064741914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038907 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141855 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142054.P6308545868064741914

namespace A142054

/-- `∩[A038907(n+1), A141855(n+1)]` -/
def P6308545868064741914.Spec : Prop :=
  ∀ n, (P6308545868064741914.a n : ℤ) = A142054 (n + 1)

end A142054

/-! ## A142054.P17945616666384532097

`∩[A007528(n+1), A141855(n+1)]`
-/

namespace A142054.P17945616666384532097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007528 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141855 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142054.P17945616666384532097

namespace A142054

/-- `∩[A007528(n+1), A141855(n+1)]` -/
def P17945616666384532097.Spec : Prop :=
  ∀ n, (P17945616666384532097.a n : ℤ) = A142054 (n + 1)

end A142054

/-! ## A142054.P17201985703757481328

`∩[A003627(n+1), A141855(n+1)]`
-/

namespace A142054.P17201985703757481328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003627 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141855 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142054.P17201985703757481328

namespace A142054

/-- `∩[A003627(n+1), A141855(n+1)]` -/
def P17201985703757481328.Spec : Prop :=
  ∀ n, (P17201985703757481328.a n : ℤ) = A142054 (n + 1)

end A142054

/-! ## A142054.P8601963499719459218

`∩[A045309(n+1), A141855(n+1)]`
-/

namespace A142054.P8601963499719459218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045309 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141855 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142054.P8601963499719459218

namespace A142054

/-- `∩[A045309(n+1), A141855(n+1)]` -/
def P8601963499719459218.Spec : Prop :=
  ∀ n, (P8601963499719459218.a n : ℤ) = A142054 (n + 1)

end A142054

/-! ## A142054.P18116011453662475729

`∩[A045410(n+1), A141855(n+1)]`
-/

namespace A142054.P18116011453662475729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045410 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141855 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142054.P18116011453662475729

namespace A142054

/-- `∩[A045410(n+1), A141855(n+1)]` -/
def P18116011453662475729.Spec : Prop :=
  ∀ n, (P18116011453662475729.a n : ℤ) = A142054 (n + 1)

end A142054

/-! ## A142054.P16648972820117460859

`∩[A056955(n+1), A141855(n+1)]`
-/

namespace A142054.P16648972820117460859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056955 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141855 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142054.P16648972820117460859

namespace A142054

/-- `∩[A056955(n+1), A141855(n+1)]` -/
def P16648972820117460859.Spec : Prop :=
  ∀ n, (P16648972820117460859.a n : ℤ) = A142054 (n + 1)

end A142054

/-! ## A142054.P17857674013903776894

`∩[A003627(n+1), A248339(n)]`
-/

namespace A142054.P17857674013903776894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003627 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248339 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142054.P17857674013903776894

namespace A142054

/-- `∩[A003627(n+1), A248339(n)]` -/
def P17857674013903776894.Spec : Prop :=
  ∀ n, (P17857674013903776894.a n : ℤ) = A142054 (n + 1)

end A142054

/-! ## A142054.P6162424209612042450

`∩[A007528(n+1), A248339(n)]`
-/

namespace A142054.P6162424209612042450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007528 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248339 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142054.P6162424209612042450

namespace A142054

/-- `∩[A007528(n+1), A248339(n)]` -/
def P6162424209612042450.Spec : Prop :=
  ∀ n, (P6162424209612042450.a n : ℤ) = A142054 (n + 1)

end A142054

/-! ## A142054.P9530983981106772714

`∩[A038907(n+1), A248339(n)]`
-/

namespace A142054.P9530983981106772714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038907 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248339 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142054.P9530983981106772714

namespace A142054

/-- `∩[A038907(n+1), A248339(n)]` -/
def P9530983981106772714.Spec : Prop :=
  ∀ n, (P9530983981106772714.a n : ℤ) = A142054 (n + 1)

end A142054

/-! ## A142054.P8250165403454380432

`∩[A045309(n+1), A248339(n)]`
-/

namespace A142054.P8250165403454380432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045309 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248339 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142054.P8250165403454380432

namespace A142054

/-- `∩[A045309(n+1), A248339(n)]` -/
def P8250165403454380432.Spec : Prop :=
  ∀ n, (P8250165403454380432.a n : ℤ) = A142054 (n + 1)

end A142054

/-! ## A142054.P9472271646966266426

`∩[A045410(n+1), A248339(n)]`
-/

namespace A142054.P9472271646966266426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045410 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248339 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142054.P9472271646966266426

namespace A142054

/-- `∩[A045410(n+1), A248339(n)]` -/
def P9472271646966266426.Spec : Prop :=
  ∀ n, (P9472271646966266426.a n : ℤ) = A142054 (n + 1)

end A142054

/-! ## A142054.P8635838389884437358

`∩[A056955(n+1), A248339(n)]`
-/

namespace A142054.P8635838389884437358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056955 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248339 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142054.P8635838389884437358

namespace A142054

/-- `∩[A056955(n+1), A248339(n)]` -/
def P8635838389884437358.Spec : Prop :=
  ∀ n, (P8635838389884437358.a n : ℤ) = A142054 (n + 1)

end A142054

/-! ## A142054.P3495768526249307800

`∩[A141176(n+1), A248339(n)]`
-/

namespace A142054.P3495768526249307800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141176 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248339 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142054.P3495768526249307800

namespace A142054

/-- `∩[A141176(n+1), A248339(n)]` -/
def P3495768526249307800.Spec : Prop :=
  ∀ n, (P3495768526249307800.a n : ℤ) = A142054 (n + 1)

end A142054

/-! ## A142054.P9362254150872201878

`∩[A161505(n+1), A248339(n)]`
-/

namespace A142054.P9362254150872201878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161505 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248339 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142054.P9362254150872201878

namespace A142054

/-- `∩[A161505(n+1), A248339(n)]` -/
def P9362254150872201878.Spec : Prop :=
  ∀ n, (P9362254150872201878.a n : ℤ) = A142054 (n + 1)

end A142054

/-! ## A142054.P10049571891956333702

`∩[A066501(n+1), A248339(n)]`
-/

namespace A142054.P10049571891956333702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066501 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248339 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142054.P10049571891956333702

namespace A142054

/-- `∩[A066501(n+1), A248339(n)]` -/
def P10049571891956333702.Spec : Prop :=
  ∀ n, (P10049571891956333702.a n : ℤ) = A142054 (n + 1)

end A142054

/-! ## A142054.P12194589556197755288

`∩[A066501(n+1), A141855(n+1)]`
-/

namespace A142054.P12194589556197755288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066501 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141855 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142054.P12194589556197755288

namespace A142054

/-- `∩[A066501(n+1), A141855(n+1)]` -/
def P12194589556197755288.Spec : Prop :=
  ∀ n, (P12194589556197755288.a n : ℤ) = A142054 (n + 1)

end A142054

/-! ## A142054.P7680614166665419664

`∑{p}[p?[A017485(3*n)], #]`
-/

namespace A142054.P7680614166665419664
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017485 (3 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A142054.P7680614166665419664

namespace A142054

/-- `∑{p}[p?[A017485(3*n)], #]` -/
def P7680614166665419664.Spec : Prop :=
  ∀ n, (P7680614166665419664.a n : ℤ) = A142054 (n + 1)

end A142054

/-!
# A142055: Primes congruent to 10 mod 33.

The programs for A142055, the canonical program `A142055.P2924894407730717356` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142055 has offset 1).

The definition of A142055 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3910 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142055.P2924894407730717356

`p?[10+33*n]`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A142055

/-- `p?[10+33*n]` -/
def P2924894407730717356.Spec : Prop :=
  ∀ n, (P2924894407730717356.a n : ℤ) = A142055 (n + 1)

theorem P2924894407730717356.correct : P2924894407730717356.Spec := by
  intro n
  simp only [A142055, Nat.add_sub_cancel]

end A142055

/-! ## A142055.P7695912627422418242

`∏{p}[p?[Δ[A004767(n)²]+3+n], #]`
-/

namespace A142055.P7695912627422418242
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004767 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n + 3 + (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A142055.P7695912627422418242

namespace A142055

/-- `∏{p}[p?[Δ[A004767(n)²]+3+n], #]` -/
def P7695912627422418242.Spec : Prop :=
  ∀ n, (P7695912627422418242.a n : ℤ) = A142055 (n + 1)

end A142055

/-! ## A142055.P16054015495907044681

`∩[A002476(n+1), A141857(n+1)]`
-/

namespace A142055.P16054015495907044681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002476 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141857 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142055.P16054015495907044681

namespace A142055

/-- `∩[A002476(n+1), A141857(n+1)]` -/
def P16054015495907044681.Spec : Prop :=
  ∀ n, (P16054015495907044681.a n : ℤ) = A142055 (n + 1)

end A142055

/-! ## A142055.P4710454915312352141

`∩[A007645(n+1), A141857(n+1)]`
-/

namespace A142055.P4710454915312352141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007645 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141857 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142055.P4710454915312352141

namespace A142055

/-- `∩[A007645(n+1), A141857(n+1)]` -/
def P4710454915312352141.Spec : Prop :=
  ∀ n, (P4710454915312352141.a n : ℤ) = A142055 (n + 1)

end A142055

/-! ## A142055.P12961250112919145008

`∩[A045331(n+1), A141857(n+1)]`
-/

namespace A142055.P12961250112919145008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045331 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141857 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142055.P12961250112919145008

namespace A142055

/-- `∩[A045331(n+1), A141857(n+1)]` -/
def P12961250112919145008.Spec : Prop :=
  ∀ n, (P12961250112919145008.a n : ℤ) = A142055 (n + 1)

end A142055

/-! ## A142055.P8120635183616447327

`∩[A045375(n+1), A141857(n+1)]`
-/

namespace A142055.P8120635183616447327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045375 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141857 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142055.P8120635183616447327

namespace A142055

/-- `∩[A045375(n+1), A141857(n+1)]` -/
def P8120635183616447327.Spec : Prop :=
  ∀ n, (P8120635183616447327.a n : ℤ) = A142055 (n + 1)

end A142055

/-! ## A142055.P17265002691621681879

`∩[A123365(n+1), A141857(n+1)]`
-/

namespace A142055.P17265002691621681879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123365 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141857 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142055.P17265002691621681879

namespace A142055

/-- `∩[A123365(n+1), A141857(n+1)]` -/
def P17265002691621681879.Spec : Prop :=
  ∀ n, (P17265002691621681879.a n : ℤ) = A142055 (n + 1)

end A142055

/-! ## A142055.P16256499179719512149

`∩[A141857(n+1), A279815(n+1)]`
-/

namespace A142055.P16256499179719512149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141857 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279815 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142055.P16256499179719512149

namespace A142055

/-- `∩[A141857(n+1), A279815(n+1)]` -/
def P16256499179719512149.Spec : Prop :=
  ∀ n, (P16256499179719512149.a n : ℤ) = A142055 (n + 1)

end A142055

/-! ## A142055.P14254887151409236773

`∩[A038908(n+1), A141857(n+1)]`
-/

namespace A142055.P14254887151409236773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038908 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141857 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142055.P14254887151409236773

namespace A142055

/-- `∩[A038908(n+1), A141857(n+1)]` -/
def P14254887151409236773.Spec : Prop :=
  ∀ n, (P14254887151409236773.a n : ℤ) = A142055 (n + 1)

end A142055

/-! ## A142055.P13244325383608086541

`∩[A055664(n+1), A141857(n+1)]`
-/

namespace A142055.P13244325383608086541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055664 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141857 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142055.P13244325383608086541

namespace A142055

/-- `∩[A055664(n+1), A141857(n+1)]` -/
def P13244325383608086541.Spec : Prop :=
  ∀ n, (P13244325383608086541.a n : ℤ) = A142055 (n + 1)

end A142055

/-! ## A142055.P12562592717406986682

`∩[A133290(n+1), A141857(n+1)]`
-/

namespace A142055.P12562592717406986682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133290 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141857 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142055.P12562592717406986682

namespace A142055

/-- `∩[A133290(n+1), A141857(n+1)]` -/
def P12562592717406986682.Spec : Prop :=
  ∀ n, (P12562592717406986682.a n : ℤ) = A142055 (n + 1)

end A142055

/-! ## A142055.P14022455389399068435

`∩[A137827(n+1), A141857(n+1)]`
-/

namespace A142055.P14022455389399068435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137827 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141857 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142055.P14022455389399068435

namespace A142055

/-- `∩[A137827(n+1), A141857(n+1)]` -/
def P14022455389399068435.Spec : Prop :=
  ∀ n, (P14022455389399068435.a n : ℤ) = A142055 (n + 1)

end A142055

/-! ## A142055.P7953828472800745757

`∩[A002476(n+1), A248339(n)+2]`
-/

namespace A142055.P7953828472800745757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002476 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248339 n + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142055.P7953828472800745757

namespace A142055

/-- `∩[A002476(n+1), A248339(n)+2]` -/
def P7953828472800745757.Spec : Prop :=
  ∀ n, (P7953828472800745757.a n : ℤ) = A142055 (n + 1)

end A142055

/-! ## A142055.P15143022100248281840

`∩[A007645(n+1), A248339(n)+2]`
-/

namespace A142055.P15143022100248281840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007645 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248339 n + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142055.P15143022100248281840

namespace A142055

/-- `∩[A007645(n+1), A248339(n)+2]` -/
def P15143022100248281840.Spec : Prop :=
  ∀ n, (P15143022100248281840.a n : ℤ) = A142055 (n + 1)

end A142055

/-! ## A142055.P18167008445994979630

`∩[A038908(n+1), A248339(n)+2]`
-/

namespace A142055.P18167008445994979630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038908 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248339 n + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142055.P18167008445994979630

namespace A142055

/-- `∩[A038908(n+1), A248339(n)+2]` -/
def P18167008445994979630.Spec : Prop :=
  ∀ n, (P18167008445994979630.a n : ℤ) = A142055 (n + 1)

end A142055

/-! ## A142055.P3576853247648454063

`∩[A045331(n+1), A248339(n)+2]`
-/

namespace A142055.P3576853247648454063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045331 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248339 n + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142055.P3576853247648454063

namespace A142055

/-- `∩[A045331(n+1), A248339(n)+2]` -/
def P3576853247648454063.Spec : Prop :=
  ∀ n, (P3576853247648454063.a n : ℤ) = A142055 (n + 1)

end A142055

/-! ## A142055.P2373762467960990223

`∩[A045375(n+1), A248339(n)+2]`
-/

namespace A142055.P2373762467960990223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045375 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248339 n + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142055.P2373762467960990223

namespace A142055

/-- `∩[A045375(n+1), A248339(n)+2]` -/
def P2373762467960990223.Spec : Prop :=
  ∀ n, (P2373762467960990223.a n : ℤ) = A142055 (n + 1)

end A142055

/-! ## A142055.P10580479792229707861

`∩[A055664(n+1), A248339(n)+2]`
-/

namespace A142055.P10580479792229707861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055664 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248339 n + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142055.P10580479792229707861

namespace A142055

/-- `∩[A055664(n+1), A248339(n)+2]` -/
def P10580479792229707861.Spec : Prop :=
  ∀ n, (P10580479792229707861.a n : ℤ) = A142055 (n + 1)

end A142055

/-! ## A142055.P13020888984661733155

`∩[A123365(n+1), A248339(n)+2]`
-/

namespace A142055.P13020888984661733155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123365 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248339 n + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142055.P13020888984661733155

namespace A142055

/-- `∩[A123365(n+1), A248339(n)+2]` -/
def P13020888984661733155.Spec : Prop :=
  ∀ n, (P13020888984661733155.a n : ℤ) = A142055 (n + 1)

end A142055

/-! ## A142055.P10392265799279989287

`∩[A279815(n+1), A248339(n)+2]`
-/

namespace A142055.P10392265799279989287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279815 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248339 n + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142055.P10392265799279989287

namespace A142055

/-- `∩[A279815(n+1), A248339(n)+2]` -/
def P10392265799279989287.Spec : Prop :=
  ∀ n, (P10392265799279989287.a n : ℤ) = A142055 (n + 1)

end A142055

/-!
# A142056: Primes congruent to 13 mod 33.

The programs for A142056, the canonical program `A142056.P13329390542527921275` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142056 has offset 1).

The definition of A142056 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3932 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142056.P13329390542527921275

`p?[33*n+13]`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A142056

/-- `p?[33*n+13]` -/
def P13329390542527921275.Spec : Prop :=
  ∀ n, (P13329390542527921275.a n : ℤ) = A142056 (n + 1)

theorem P13329390542527921275.correct : P13329390542527921275.Spec := by
  intro n
  simp only [A142056, Nat.add_sub_cancel]

end A142056

/-! ## A142056.P12909123167330386383

`record[∑{p}[A139612(n)+1, #]]`
-/

namespace A142056.P12909123167330386383
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139612 n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142056.P12909123167330386383

namespace A142056

/-- `record[∑{p}[A139612(n)+1, #]]` -/
def P12909123167330386383.Spec : Prop :=
  ∀ n, (P12909123167330386383.a n : ℤ) = A142056 (n + 1)

end A142056

/-! ## A142056.P4187096985667182626

`p?[A139612(n)+1]/A020985(n)²`
-/

namespace A142056.P4187096985667182626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139612 n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / (A020985 n ^ 2 : ℚ)

end

end A142056.P4187096985667182626

namespace A142056

/-- `p?[A139612(n)+1]/A020985(n)²` -/
def P4187096985667182626.Spec : Prop :=
  ∀ n, P4187096985667182626.a n = (A142056 (n + 1) : ℚ)

end A142056

/-! ## A142056.P6114675484359281148

`∩[A002476(n+1), A090187(n+1)]`
-/

namespace A142056.P6114675484359281148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002476 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090187 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142056.P6114675484359281148

namespace A142056

/-- `∩[A002476(n+1), A090187(n+1)]` -/
def P6114675484359281148.Spec : Prop :=
  ∀ n, (P6114675484359281148.a n : ℤ) = A142056 (n + 1)

end A142056

/-! ## A142056.P13560966052660576199

`∩[A007645(n+1), A090187(n+1)]`
-/

namespace A142056.P13560966052660576199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007645 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090187 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142056.P13560966052660576199

namespace A142056

/-- `∩[A007645(n+1), A090187(n+1)]` -/
def P13560966052660576199.Spec : Prop :=
  ∀ n, (P13560966052660576199.a n : ℤ) = A142056 (n + 1)

end A142056

/-! ## A142056.P14587932944476449285

`∩[A090187(n+1), A123365(n+1)]`
-/

namespace A142056.P14587932944476449285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090187 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123365 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142056.P14587932944476449285

namespace A142056

/-- `∩[A090187(n+1), A123365(n+1)]` -/
def P14587932944476449285.Spec : Prop :=
  ∀ n, (P14587932944476449285.a n : ℤ) = A142056 (n + 1)

end A142056

/-! ## A142056.P5400844788853797410

`∩[A090187(n+1), A279815(n+1)]`
-/

namespace A142056.P5400844788853797410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090187 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279815 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142056.P5400844788853797410

namespace A142056

/-- `∩[A090187(n+1), A279815(n+1)]` -/
def P5400844788853797410.Spec : Prop :=
  ∀ n, (P5400844788853797410.a n : ℤ) = A142056 (n + 1)

end A142056

/-! ## A142056.P2777784667439616714

`∩[A038908(n+1), A090187(n+1)]`
-/

namespace A142056.P2777784667439616714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038908 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090187 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142056.P2777784667439616714

namespace A142056

/-- `∩[A038908(n+1), A090187(n+1)]` -/
def P2777784667439616714.Spec : Prop :=
  ∀ n, (P2777784667439616714.a n : ℤ) = A142056 (n + 1)

end A142056

/-! ## A142056.P2498154377448741439

`∩[A055664(n+1), A090187(n+1)]`
-/

namespace A142056.P2498154377448741439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055664 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090187 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142056.P2498154377448741439

namespace A142056

/-- `∩[A055664(n+1), A090187(n+1)]` -/
def P2498154377448741439.Spec : Prop :=
  ∀ n, (P2498154377448741439.a n : ℤ) = A142056 (n + 1)

end A142056

/-! ## A142056.P8933291274442232921

`∩[A090187(n+1), A133290(n+1)]`
-/

namespace A142056.P8933291274442232921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090187 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133290 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142056.P8933291274442232921

namespace A142056

/-- `∩[A090187(n+1), A133290(n+1)]` -/
def P8933291274442232921.Spec : Prop :=
  ∀ n, (P8933291274442232921.a n : ℤ) = A142056 (n + 1)

end A142056

/-! ## A142056.P13504728539388670751

`∩[A090187(n+1), A137827(n+1)]`
-/

namespace A142056.P13504728539388670751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090187 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137827 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142056.P13504728539388670751

namespace A142056

/-- `∩[A090187(n+1), A137827(n+1)]` -/
def P13504728539388670751.Spec : Prop :=
  ∀ n, (P13504728539388670751.a n : ℤ) = A142056 (n + 1)

end A142056

/-! ## A142056.P5279291024912597496

`record[p?[A014682(A017497(n))-1]]`
-/

namespace A142056.P5279291024912597496
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A017497 n).toNat - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142056.P5279291024912597496

namespace A142056

/-- `record[p?[A014682(A017497(n))-1]]` -/
def P5279291024912597496.Spec : Prop :=
  ∀ n, P5279291024912597496.a n = A142056 (n + 1)

end A142056

/-! ## A142056.P2924234227174238776

`filter[A090187(n+1), A070563(#)]`
-/

namespace A142056.P2924234227174238776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090187 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A070563 (f1 j).toNat = 1) n)

end

end A142056.P2924234227174238776

namespace A142056

/-- `filter[A090187(n+1), A070563(#)]` -/
def P2924234227174238776.Spec : Prop :=
  ∀ n, P2924234227174238776.a n = A142056 (n + 1)

end A142056

/-! ## A142056.P17864043356196868177

`∩[A090187(n+1), A107925(n+1)]`
-/

namespace A142056.P17864043356196868177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090187 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107925 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142056.P17864043356196868177

namespace A142056

/-- `∩[A090187(n+1), A107925(n+1)]` -/
def P17864043356196868177.Spec : Prop :=
  ∀ n, (P17864043356196868177.a n : ℤ) = A142056 (n + 1)

end A142056

/-! ## A142056.P6256365106728431805

`∩[A090187(n+1), A129904(n+1)]`
-/

namespace A142056.P6256365106728431805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090187 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129904 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142056.P6256365106728431805

namespace A142056

/-- `∩[A090187(n+1), A129904(n+1)]` -/
def P6256365106728431805.Spec : Prop :=
  ∀ n, (P6256365106728431805.a n : ℤ) = A142056 (n + 1)

end A142056

/-! ## A142056.P9659722620455817867

`∩[A004611(n+1), A090187(n+1)]`
-/

namespace A142056.P9659722620455817867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004611 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090187 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142056.P9659722620455817867

namespace A142056

/-- `∩[A004611(n+1), A090187(n+1)]` -/
def P9659722620455817867.Spec : Prop :=
  ∀ n, (P9659722620455817867.a n : ℤ) = A142056 (n + 1)

end A142056

/-! ## A142056.P14816334895933230852

`∩[A002476(n+1), A017413(n)]`
-/

namespace A142056.P14816334895933230852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002476 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017413 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142056.P14816334895933230852

namespace A142056

/-- `∩[A002476(n+1), A017413(n)]` -/
def P14816334895933230852.Spec : Prop :=
  ∀ n, (P14816334895933230852.a n : ℤ) = A142056 (n + 1)

end A142056

/-! ## A142056.P16903366082239612988

`∩[A007645(n+1), A017413(n)]`
-/

namespace A142056.P16903366082239612988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007645 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017413 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142056.P16903366082239612988

namespace A142056

/-- `∩[A007645(n+1), A017413(n)]` -/
def P16903366082239612988.Spec : Prop :=
  ∀ n, (P16903366082239612988.a n : ℤ) = A142056 (n + 1)

end A142056

/-! ## A142056.P7849571845001711572

`∩[A038908(n+1), A017413(n)]`
-/

namespace A142056.P7849571845001711572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038908 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017413 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142056.P7849571845001711572

namespace A142056

/-- `∩[A038908(n+1), A017413(n)]` -/
def P7849571845001711572.Spec : Prop :=
  ∀ n, (P7849571845001711572.a n : ℤ) = A142056 (n + 1)

end A142056

/-! ## A142056.P16119721677289909896

`∩[A055664(n+1), A017413(n)]`
-/

namespace A142056.P16119721677289909896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055664 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017413 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142056.P16119721677289909896

namespace A142056

/-- `∩[A055664(n+1), A017413(n)]` -/
def P16119721677289909896.Spec : Prop :=
  ∀ n, (P16119721677289909896.a n : ℤ) = A142056 (n + 1)

end A142056

/-!
# A142057: Primes congruent to 14 mod 33.

The programs for A142057, the canonical program `A142057.P2851651434208903845` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142057 has offset 1).

The definition of A142057 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3883 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142057.P2851651434208903845

`p?[33*n+47]`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A142057

/-- `p?[33*n+47]` -/
def P2851651434208903845.Spec : Prop :=
  ∀ n, (P2851651434208903845.a n : ℤ) = A142057 (n + 1)

theorem P2851651434208903845.correct : P2851651434208903845.Spec := by
  intro n
  simp only [A142057, Nat.add_sub_cancel]

end A142057

/-! ## A142057.P10734817780071468588

`∩[A107010(n+1), A141850(n+1)]`
-/

namespace A142057.P10734817780071468588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107010 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141850 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142057.P10734817780071468588

namespace A142057

/-- `∩[A107010(n+1), A141850(n+1)]` -/
def P10734817780071468588.Spec : Prop :=
  ∀ n, (P10734817780071468588.a n : ℤ) = A142057 (n + 1)

end A142057

/-! ## A142057.P10772144700942699797

`∩[A107010(n+1), A214888(n+1)]`
-/

namespace A142057.P10772144700942699797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107010 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214888 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142057.P10772144700942699797

namespace A142057

/-- `∩[A107010(n+1), A214888(n+1)]` -/
def P10772144700942699797.Spec : Prop :=
  ∀ n, (P10772144700942699797.a n : ℤ) = A142057 (n + 1)

end A142057

/-! ## A142057.P11997209685657781706

`∩[A107010(n+1), A215386(n+1)]`
-/

namespace A142057.P11997209685657781706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107010 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215386 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142057.P11997209685657781706

namespace A142057

/-- `∩[A107010(n+1), A215386(n+1)]` -/
def P11997209685657781706.Spec : Prop :=
  ∀ n, (P11997209685657781706.a n : ℤ) = A142057 (n + 1)

end A142057

/-! ## A142057.P1213905036935292031

`∩[A038908(n+1), A141850(n+1)]`
-/

namespace A142057.P1213905036935292031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038908 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141850 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142057.P1213905036935292031

namespace A142057

/-- `∩[A038908(n+1), A141850(n+1)]` -/
def P1213905036935292031.Spec : Prop :=
  ∀ n, (P1213905036935292031.a n : ℤ) = A142057 (n + 1)

end A142057

/-! ## A142057.P13510377991281575202

`∩[A003627(n+1), A141850(n+1)]`
-/

namespace A142057.P13510377991281575202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003627 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141850 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142057.P13510377991281575202

namespace A142057

/-- `∩[A003627(n+1), A141850(n+1)]` -/
def P13510377991281575202.Spec : Prop :=
  ∀ n, (P13510377991281575202.a n : ℤ) = A142057 (n + 1)

end A142057

/-! ## A142057.P7571021200474348171

`∩[A007528(n+1), A141850(n+1)]`
-/

namespace A142057.P7571021200474348171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007528 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141850 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142057.P7571021200474348171

namespace A142057

/-- `∩[A007528(n+1), A141850(n+1)]` -/
def P7571021200474348171.Spec : Prop :=
  ∀ n, (P7571021200474348171.a n : ℤ) = A142057 (n + 1)

end A142057

/-! ## A142057.P15661023691573999323

`∩[A056955(n+1), A141850(n+1)]`
-/

namespace A142057.P15661023691573999323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056955 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141850 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142057.P15661023691573999323

namespace A142057

/-- `∩[A056955(n+1), A141850(n+1)]` -/
def P15661023691573999323.Spec : Prop :=
  ∀ n, (P15661023691573999323.a n : ℤ) = A142057 (n + 1)

end A142057

/-! ## A142057.P17761234835711090291

`∩[A003627(n+1), A161709(n)+2]`
-/

namespace A142057.P17761234835711090291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003627 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161709 n + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142057.P17761234835711090291

namespace A142057

/-- `∩[A003627(n+1), A161709(n)+2]` -/
def P17761234835711090291.Spec : Prop :=
  ∀ n, (P17761234835711090291.a n : ℤ) = A142057 (n + 1)

end A142057

/-! ## A142057.P15947276284174440164

`∩[A007528(n+1), A161709(n)+2]`
-/

namespace A142057.P15947276284174440164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007528 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161709 n + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142057.P15947276284174440164

namespace A142057

/-- `∩[A007528(n+1), A161709(n)+2]` -/
def P15947276284174440164.Spec : Prop :=
  ∀ n, (P15947276284174440164.a n : ℤ) = A142057 (n + 1)

end A142057

/-! ## A142057.P17109585224984541629

`∩[A038908(n+1), A161709(n)+2]`
-/

namespace A142057.P17109585224984541629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038908 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161709 n + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142057.P17109585224984541629

namespace A142057

/-- `∩[A038908(n+1), A161709(n)+2]` -/
def P17109585224984541629.Spec : Prop :=
  ∀ n, (P17109585224984541629.a n : ℤ) = A142057 (n + 1)

end A142057

/-! ## A142057.P10222977804286376241

`∩[A056955(n+1), A161709(n)+2]`
-/

namespace A142057.P10222977804286376241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056955 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161709 n + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142057.P10222977804286376241

namespace A142057

/-- `∩[A056955(n+1), A161709(n)+2]` -/
def P10222977804286376241.Spec : Prop :=
  ∀ n, (P10222977804286376241.a n : ℤ) = A142057 (n + 1)

end A142057

/-! ## A142057.P11181265680756149328

`∩[A107010(n+1), A161709(n)+2]`
-/

namespace A142057.P11181265680756149328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107010 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161709 n + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142057.P11181265680756149328

namespace A142057

/-- `∩[A107010(n+1), A161709(n)+2]` -/
def P11181265680756149328.Spec : Prop :=
  ∀ n, (P11181265680756149328.a n : ℤ) = A142057 (n + 1)

end A142057

/-! ## A142057.P5854749467529637663

`∩[A161709(n+1)+2, A045309(n+2)]`
-/

namespace A142057.P5854749467529637663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161709 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045309 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142057.P5854749467529637663

namespace A142057

/-- `∩[A161709(n+1)+2, A045309(n+2)]` -/
def P5854749467529637663.Spec : Prop :=
  ∀ n, (P5854749467529637663.a n : ℤ) = A142057 (n + 1)

end A142057

/-! ## A142057.P10714922516522146172

`∩[A161709(n+1)+2, A045410(n+2)]`
-/

namespace A142057.P10714922516522146172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161709 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045410 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142057.P10714922516522146172

namespace A142057

/-- `∩[A161709(n+1)+2, A045410(n+2)]` -/
def P10714922516522146172.Spec : Prop :=
  ∀ n, (P10714922516522146172.a n : ℤ) = A142057 (n + 1)

end A142057

/-! ## A142057.P15100721258028468157

`record[p?[A014682(A017497(n))]]`
-/

namespace A142057.P15100721258028468157
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A017497 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142057.P15100721258028468157

namespace A142057

/-- `record[p?[A014682(A017497(n))]]` -/
def P15100721258028468157.Spec : Prop :=
  ∀ n, P15100721258028468157.a n = A142057 (n + 1)

end A142057

/-! ## A142057.P771824923881281932

`∩[A003627(n+1), A017425(n)]`
-/

namespace A142057.P771824923881281932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003627 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017425 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142057.P771824923881281932

namespace A142057

/-- `∩[A003627(n+1), A017425(n)]` -/
def P771824923881281932.Spec : Prop :=
  ∀ n, (P771824923881281932.a n : ℤ) = A142057 (n + 1)

end A142057

/-! ## A142057.P410682191504386364

`∩[A007528(n+1), A017425(n)]`
-/

namespace A142057.P410682191504386364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007528 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017425 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142057.P410682191504386364

namespace A142057

/-- `∩[A007528(n+1), A017425(n)]` -/
def P410682191504386364.Spec : Prop :=
  ∀ n, (P410682191504386364.a n : ℤ) = A142057 (n + 1)

end A142057

/-! ## A142057.P16773026297416593046

`∩[A038908(n+1), A017425(n)]`
-/

namespace A142057.P16773026297416593046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038908 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017425 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142057.P16773026297416593046

namespace A142057

/-- `∩[A038908(n+1), A017425(n)]` -/
def P16773026297416593046.Spec : Prop :=
  ∀ n, (P16773026297416593046.a n : ℤ) = A142057 (n + 1)

end A142057

/-! ## A142057.P7001174621711646403

`∩[A056955(n+1), A017425(n)]`
-/

namespace A142057.P7001174621711646403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056955 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017425 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142057.P7001174621711646403

namespace A142057

/-- `∩[A056955(n+1), A017425(n)]` -/
def P7001174621711646403.Spec : Prop :=
  ∀ n, (P7001174621711646403.a n : ℤ) = A142057 (n + 1)

end A142057

/-!
# A142058: Primes congruent to 16 mod 33.

The programs for A142058, the canonical program `A142058.P17944085755997940685` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142058 has offset 1).

The definition of A142058 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3937 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142058.P17944085755997940685

`p?[33*n+49]`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A142058

/-- `p?[33*n+49]` -/
def P17944085755997940685.Spec : Prop :=
  ∀ n, (P17944085755997940685.a n : ℤ) = A142058 (n + 1)

theorem P17944085755997940685.correct : P17944085755997940685.Spec := by
  intro n
  simp only [A142058, Nat.add_sub_cancel]

end A142058

/-! ## A142058.P5036931568419068172

`∏{p}[p?[round((3*11*n-1)/2)], #]`
-/

namespace A142058.P5036931568419068172
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((3 * (11 * n) : ℤ) - 1 : ℚ) / 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A142058.P5036931568419068172

namespace A142058

/-- `∏{p}[p?[round((3*11*n-1)/2)], #]` -/
def P5036931568419068172.Spec : Prop :=
  ∀ n, (P5036931568419068172.a n : ℤ) = A142058 (n + 1)

end A142058

/-! ## A142058.P2629549967767548776

`∩[A107013(n+1), A141852(n+1)]`
-/

namespace A142058.P2629549967767548776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107013 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141852 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142058.P2629549967767548776

namespace A142058

/-- `∩[A107013(n+1), A141852(n+1)]` -/
def P2629549967767548776.Spec : Prop :=
  ∀ n, (P2629549967767548776.a n : ℤ) = A142058 (n + 1)

end A142058

/-! ## A142058.P2349507886672068378

`∩[A141177(n+1), A141852(n+1)]`
-/

namespace A142058.P2349507886672068378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141177 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141852 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142058.P2349507886672068378

namespace A142058

/-- `∩[A141177(n+1), A141852(n+1)]` -/
def P2349507886672068378.Spec : Prop :=
  ∀ n, (P2349507886672068378.a n : ℤ) = A142058 (n + 1)

end A142058

/-! ## A142058.P7996960154632757382

`∩[A107013(n+1), A215167(n+1)]`
-/

namespace A142058.P7996960154632757382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107013 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215167 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142058.P7996960154632757382

namespace A142058

/-- `∩[A107013(n+1), A215167(n+1)]` -/
def P7996960154632757382.Spec : Prop :=
  ∀ n, (P7996960154632757382.a n : ℤ) = A142058 (n + 1)

end A142058

/-! ## A142058.P3543496880802890430

`∩[A141177(n+1), A215167(n+1)]`
-/

namespace A142058.P3543496880802890430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141177 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215167 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142058.P3543496880802890430

namespace A142058

/-- `∩[A141177(n+1), A215167(n+1)]` -/
def P3543496880802890430.Spec : Prop :=
  ∀ n, (P3543496880802890430.a n : ℤ) = A142058 (n + 1)

end A142058

/-! ## A142058.P3749848461889276390

`∩[A107013(n+1), A215210(n+1)]`
-/

namespace A142058.P3749848461889276390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107013 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215210 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142058.P3749848461889276390

namespace A142058

/-- `∩[A107013(n+1), A215210(n+1)]` -/
def P3749848461889276390.Spec : Prop :=
  ∀ n, (P3749848461889276390.a n : ℤ) = A142058 (n + 1)

end A142058

/-! ## A142058.P5400595633309368132

`∩[A141177(n+1), A215210(n+1)]`
-/

namespace A142058.P5400595633309368132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141177 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215210 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142058.P5400595633309368132

namespace A142058

/-- `∩[A141177(n+1), A215210(n+1)]` -/
def P5400595633309368132.Spec : Prop :=
  ∀ n, (P5400595633309368132.a n : ℤ) = A142058 (n + 1)

end A142058

/-! ## A142058.P11483951206615856568

`∩[A002476(n+1), A141852(n+1)]`
-/

namespace A142058.P11483951206615856568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002476 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141852 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142058.P11483951206615856568

namespace A142058

/-- `∩[A002476(n+1), A141852(n+1)]` -/
def P11483951206615856568.Spec : Prop :=
  ∀ n, (P11483951206615856568.a n : ℤ) = A142058 (n + 1)

end A142058

/-! ## A142058.P9537717354665592398

`∩[A007645(n+1), A141852(n+1)]`
-/

namespace A142058.P9537717354665592398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007645 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141852 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142058.P9537717354665592398

namespace A142058

/-- `∩[A007645(n+1), A141852(n+1)]` -/
def P9537717354665592398.Spec : Prop :=
  ∀ n, (P9537717354665592398.a n : ℤ) = A142058 (n + 1)

end A142058

/-! ## A142058.P8111461336330662382

`∩[A045331(n+1), A141852(n+1)]`
-/

namespace A142058.P8111461336330662382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045331 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141852 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142058.P8111461336330662382

namespace A142058

/-- `∩[A045331(n+1), A141852(n+1)]` -/
def P8111461336330662382.Spec : Prop :=
  ∀ n, (P8111461336330662382.a n : ℤ) = A142058 (n + 1)

end A142058

/-! ## A142058.P5014746731753592105

`∩[A045375(n+1), A141852(n+1)]`
-/

namespace A142058.P5014746731753592105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045375 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141852 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142058.P5014746731753592105

namespace A142058

/-- `∩[A045375(n+1), A141852(n+1)]` -/
def P5014746731753592105.Spec : Prop :=
  ∀ n, (P5014746731753592105.a n : ℤ) = A142058 (n + 1)

end A142058

/-! ## A142058.P14147614972886428423

`∩[A123365(n+1), A141852(n+1)]`
-/

namespace A142058.P14147614972886428423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123365 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141852 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142058.P14147614972886428423

namespace A142058

/-- `∩[A123365(n+1), A141852(n+1)]` -/
def P14147614972886428423.Spec : Prop :=
  ∀ n, (P14147614972886428423.a n : ℤ) = A142058 (n + 1)

end A142058

/-! ## A142058.P18266140892738554860

`∩[A141852(n+1), A279815(n+1)]`
-/

namespace A142058.P18266140892738554860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141852 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279815 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142058.P18266140892738554860

namespace A142058

/-- `∩[A141852(n+1), A279815(n+1)]` -/
def P18266140892738554860.Spec : Prop :=
  ∀ n, (P18266140892738554860.a n : ℤ) = A142058 (n + 1)

end A142058

/-! ## A142058.P11896479419653739935

`∩[A038907(n+1), A141852(n+1)]`
-/

namespace A142058.P11896479419653739935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038907 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141852 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142058.P11896479419653739935

namespace A142058

/-- `∩[A038907(n+1), A141852(n+1)]` -/
def P11896479419653739935.Spec : Prop :=
  ∀ n, (P11896479419653739935.a n : ℤ) = A142058 (n + 1)

end A142058

/-! ## A142058.P7693891342992466540

`∩[A055664(n+1), A141852(n+1)]`
-/

namespace A142058.P7693891342992466540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055664 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141852 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142058.P7693891342992466540

namespace A142058

/-- `∩[A055664(n+1), A141852(n+1)]` -/
def P7693891342992466540.Spec : Prop :=
  ∀ n, (P7693891342992466540.a n : ℤ) = A142058 (n + 1)

end A142058

/-! ## A142058.P720470760235496218

`∩[A133290(n+1), A141852(n+1)]`
-/

namespace A142058.P720470760235496218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133290 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141852 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142058.P720470760235496218

namespace A142058

/-- `∩[A133290(n+1), A141852(n+1)]` -/
def P720470760235496218.Spec : Prop :=
  ∀ n, (P720470760235496218.a n : ℤ) = A142058 (n + 1)

end A142058

/-! ## A142058.P7236499731090358812

`∩[A137827(n+1), A141852(n+1)]`
-/

namespace A142058.P7236499731090358812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137827 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141852 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142058.P7236499731090358812

namespace A142058

/-- `∩[A137827(n+1), A141852(n+1)]` -/
def P7236499731090358812.Spec : Prop :=
  ∀ n, (P7236499731090358812.a n : ℤ) = A142058 (n + 1)

end A142058

/-! ## A142058.P826468347776408926

`filter[A141852(n+1), A070563(#)]`
-/

namespace A142058.P826468347776408926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141852 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A070563 (f1 j).toNat = 1) n)

end

end A142058.P826468347776408926

namespace A142058

/-- `filter[A141852(n+1), A070563(#)]` -/
def P826468347776408926.Spec : Prop :=
  ∀ n, P826468347776408926.a n = A142058 (n + 1)

end A142058

/-! ## A142058.P14467812385326244363

`∩[A107925(n+1), A141852(n+1)]`
-/

namespace A142058.P14467812385326244363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107925 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141852 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142058.P14467812385326244363

namespace A142058

/-- `∩[A107925(n+1), A141852(n+1)]` -/
def P14467812385326244363.Spec : Prop :=
  ∀ n, (P14467812385326244363.a n : ℤ) = A142058 (n + 1)

end A142058

/-!
# A142059: Primes congruent to 17 mod 33.

The programs for A142059, the canonical program `A142059.P15032487665649612019` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142059 has offset 1).

The definition of A142059 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3945 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142059.P15032487665649612019

`p?[33*n-49]`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A142059

/-- `p?[33*n-49]` -/
def P15032487665649612019.Spec : Prop :=
  ∀ n, P15032487665649612019.a n = A142059 (n + 1)

theorem P15032487665649612019.correct : P15032487665649612019.Spec := by
  intro n
  simp only [A142059, Nat.add_sub_cancel]

end A142059

/-! ## A142059.P17436888874151753262

`∩[A141176(n+1), A141853(n+1)]`
-/

namespace A142059.P17436888874151753262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141176 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141853 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142059.P17436888874151753262

namespace A142059

/-- `∩[A141176(n+1), A141853(n+1)]` -/
def P17436888874151753262.Spec : Prop :=
  ∀ n, (P17436888874151753262.a n : ℤ) = A142059 (n + 1)

end A142059

/-! ## A142059.P13526326019008234023

`∩[A141176(n+1), A215106(n+1)]`
-/

namespace A142059.P13526326019008234023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141176 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215106 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142059.P13526326019008234023

namespace A142059

/-- `∩[A141176(n+1), A215106(n+1)]` -/
def P13526326019008234023.Spec : Prop :=
  ∀ n, (P13526326019008234023.a n : ℤ) = A142059 (n + 1)

end A142059

/-! ## A142059.P17230586754850767369

`∩[A141176(n+1), A146511(n+1)]`
-/

namespace A142059.P17230586754850767369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141176 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146511 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142059.P17230586754850767369

namespace A142059

/-- `∩[A141176(n+1), A146511(n+1)]` -/
def P17230586754850767369.Spec : Prop :=
  ∀ n, (P17230586754850767369.a n : ℤ) = A142059 (n + 1)

end A142059

/-! ## A142059.P634028406137276243

`∩[A141853(n+1), A146511(n+1)]`
-/

namespace A142059.P634028406137276243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141853 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146511 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142059.P634028406137276243

namespace A142059

/-- `∩[A141853(n+1), A146511(n+1)]` -/
def P634028406137276243.Spec : Prop :=
  ∀ n, (P634028406137276243.a n : ℤ) = A142059 (n + 1)

end A142059

/-! ## A142059.P5133027986751723806

`∩[A146511(n+1), A215386(n+1)]`
-/

namespace A142059.P5133027986751723806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146511 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215386 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142059.P5133027986751723806

namespace A142059

/-- `∩[A146511(n+1), A215386(n+1)]` -/
def P5133027986751723806.Spec : Prop :=
  ∀ n, (P5133027986751723806.a n : ℤ) = A142059 (n + 1)

end A142059

/-! ## A142059.P13920770106049278310

`∩[A146511(n+1), A215350(n+1)]`
-/

namespace A142059.P13920770106049278310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146511 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215350 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142059.P13920770106049278310

namespace A142059

/-- `∩[A146511(n+1), A215350(n+1)]` -/
def P13920770106049278310.Spec : Prop :=
  ∀ n, (P13920770106049278310.a n : ℤ) = A142059 (n + 1)

end A142059

/-! ## A142059.P5956476486265007862

`∩[A146511(n+1), A215382(n+1)]`
-/

namespace A142059.P5956476486265007862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146511 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215382 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142059.P5956476486265007862

namespace A142059

/-- `∩[A146511(n+1), A215382(n+1)]` -/
def P5956476486265007862.Spec : Prop :=
  ∀ n, (P5956476486265007862.a n : ℤ) = A142059 (n + 1)

end A142059

/-! ## A142059.P7194543989272432813

`∩[A038907(n+1), A141853(n+1)]`
-/

namespace A142059.P7194543989272432813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038907 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141853 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142059.P7194543989272432813

namespace A142059

/-- `∩[A038907(n+1), A141853(n+1)]` -/
def P7194543989272432813.Spec : Prop :=
  ∀ n, (P7194543989272432813.a n : ℤ) = A142059 (n + 1)

end A142059

/-! ## A142059.P15358853188916746230

`∩[A038907(n+1), A146511(n+1)]`
-/

namespace A142059.P15358853188916746230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038907 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146511 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142059.P15358853188916746230

namespace A142059

/-- `∩[A038907(n+1), A146511(n+1)]` -/
def P15358853188916746230.Spec : Prop :=
  ∀ n, (P15358853188916746230.a n : ℤ) = A142059 (n + 1)

end A142059

/-! ## A142059.P13566064263978115050

`∩[A137977(n+1), A146511(n+1)]`
-/

namespace A142059.P13566064263978115050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137977 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146511 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142059.P13566064263978115050

namespace A142059

/-- `∩[A137977(n+1), A146511(n+1)]` -/
def P13566064263978115050.Spec : Prop :=
  ∀ n, (P13566064263978115050.a n : ℤ) = A142059 (n + 1)

end A142059

/-! ## A142059.P12618010673120359777

`∩[A146511(n+1), A191060(n+1)]`
-/

namespace A142059.P12618010673120359777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146511 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191060 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142059.P12618010673120359777

namespace A142059

/-- `∩[A146511(n+1), A191060(n+1)]` -/
def P12618010673120359777.Spec : Prop :=
  ∀ n, (P12618010673120359777.a n : ℤ) = A142059 (n + 1)

end A142059

/-! ## A142059.P16262173089060321051

`∩[A146511(n+1), A215322(n+1)]`
-/

namespace A142059.P16262173089060321051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146511 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215322 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142059.P16262173089060321051

namespace A142059

/-- `∩[A146511(n+1), A215322(n+1)]` -/
def P16262173089060321051.Spec : Prop :=
  ∀ n, (P16262173089060321051.a n : ℤ) = A142059 (n + 1)

end A142059

/-! ## A142059.P6677669803645039276

`∩[A003627(n+1), A141853(n+1)]`
-/

namespace A142059.P6677669803645039276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003627 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141853 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142059.P6677669803645039276

namespace A142059

/-- `∩[A003627(n+1), A141853(n+1)]` -/
def P6677669803645039276.Spec : Prop :=
  ∀ n, (P6677669803645039276.a n : ℤ) = A142059 (n + 1)

end A142059

/-! ## A142059.P16255998543850460441

`∩[A007528(n+1), A141853(n+1)]`
-/

namespace A142059.P16255998543850460441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007528 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141853 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142059.P16255998543850460441

namespace A142059

/-- `∩[A007528(n+1), A141853(n+1)]` -/
def P16255998543850460441.Spec : Prop :=
  ∀ n, (P16255998543850460441.a n : ℤ) = A142059 (n + 1)

end A142059

/-! ## A142059.P11464452076492511444

`∩[A045309(n+1), A141853(n+1)]`
-/

namespace A142059.P11464452076492511444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045309 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141853 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142059.P11464452076492511444

namespace A142059

/-- `∩[A045309(n+1), A141853(n+1)]` -/
def P11464452076492511444.Spec : Prop :=
  ∀ n, (P11464452076492511444.a n : ℤ) = A142059 (n + 1)

end A142059

/-! ## A142059.P5827833584615157165

`∩[A045410(n+1), A141853(n+1)]`
-/

namespace A142059.P5827833584615157165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045410 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141853 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142059.P5827833584615157165

namespace A142059

/-- `∩[A045410(n+1), A141853(n+1)]` -/
def P5827833584615157165.Spec : Prop :=
  ∀ n, (P5827833584615157165.a n : ℤ) = A142059 (n + 1)

end A142059

/-! ## A142059.P5206839935130069753

`∩[A056955(n+1), A141853(n+1)]`
-/

namespace A142059.P5206839935130069753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056955 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141853 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142059.P5206839935130069753

namespace A142059

/-- `∩[A056955(n+1), A141853(n+1)]` -/
def P5206839935130069753.Spec : Prop :=
  ∀ n, (P5206839935130069753.a n : ℤ) = A142059 (n + 1)

end A142059

/-! ## A142059.P424071658215813696

`∩[A003627(n+1), A248339(n)-2]`
-/

namespace A142059.P424071658215813696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003627 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248339 n - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142059.P424071658215813696

namespace A142059

/-- `∩[A003627(n+1), A248339(n)-2]` -/
def P424071658215813696.Spec : Prop :=
  ∀ n, (P424071658215813696.a n : ℤ) = A142059 (n + 1)

end A142059

/-! ## A142059.P8897107870116048805

`∩[A007528(n+1), A248339(n)-2]`
-/

namespace A142059.P8897107870116048805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007528 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248339 n - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142059.P8897107870116048805

namespace A142059

/-- `∩[A007528(n+1), A248339(n)-2]` -/
def P8897107870116048805.Spec : Prop :=
  ∀ n, (P8897107870116048805.a n : ℤ) = A142059 (n + 1)

end A142059

/-!
# A142060: Primes congruent to 19 mod 33.

The programs for A142060, the canonical program `A142060.P773736401028258990` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142060 has offset 1).

The definition of A142060 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3937 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142060.P773736401028258990

`p?[33*n+19]`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A142060

/-- `p?[33*n+19]` -/
def P773736401028258990.Spec : Prop :=
  ∀ n, (P773736401028258990.a n : ℤ) = A142060 (n + 1)

theorem P773736401028258990.correct : P773736401028258990.Spec := by
  intro n
  simp only [A142060, Nat.add_sub_cancel]

end A142060

/-! ## A142060.P4918359623940748192

`∩[A002476(n+1), A141855(n+1)]`
-/

namespace A142060.P4918359623940748192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002476 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141855 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142060.P4918359623940748192

namespace A142060

/-- `∩[A002476(n+1), A141855(n+1)]` -/
def P4918359623940748192.Spec : Prop :=
  ∀ n, (P4918359623940748192.a n : ℤ) = A142060 (n + 1)

end A142060

/-! ## A142060.P12286476934909782781

`∩[A007645(n+1), A141855(n+1)]`
-/

namespace A142060.P12286476934909782781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007645 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141855 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142060.P12286476934909782781

namespace A142060

/-- `∩[A007645(n+1), A141855(n+1)]` -/
def P12286476934909782781.Spec : Prop :=
  ∀ n, (P12286476934909782781.a n : ℤ) = A142060 (n + 1)

end A142060

/-! ## A142060.P6023673174176639698

`∩[A045331(n+1), A141855(n+1)]`
-/

namespace A142060.P6023673174176639698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045331 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141855 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142060.P6023673174176639698

namespace A142060

/-- `∩[A045331(n+1), A141855(n+1)]` -/
def P6023673174176639698.Spec : Prop :=
  ∀ n, (P6023673174176639698.a n : ℤ) = A142060 (n + 1)

end A142060

/-! ## A142060.P12673608846498086767

`∩[A045375(n+1), A141855(n+1)]`
-/

namespace A142060.P12673608846498086767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045375 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141855 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142060.P12673608846498086767

namespace A142060

/-- `∩[A045375(n+1), A141855(n+1)]` -/
def P12673608846498086767.Spec : Prop :=
  ∀ n, (P12673608846498086767.a n : ℤ) = A142060 (n + 1)

end A142060

/-! ## A142060.P8094897045345829901

`∩[A123365(n+1), A141855(n+1)]`
-/

namespace A142060.P8094897045345829901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123365 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141855 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142060.P8094897045345829901

namespace A142060

/-- `∩[A123365(n+1), A141855(n+1)]` -/
def P8094897045345829901.Spec : Prop :=
  ∀ n, (P8094897045345829901.a n : ℤ) = A142060 (n + 1)

end A142060

/-! ## A142060.P7924176930435150580

`∩[A141855(n+1), A279815(n+1)]`
-/

namespace A142060.P7924176930435150580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141855 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279815 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142060.P7924176930435150580

namespace A142060

/-- `∩[A141855(n+1), A279815(n+1)]` -/
def P7924176930435150580.Spec : Prop :=
  ∀ n, (P7924176930435150580.a n : ℤ) = A142060 (n + 1)

end A142060

/-! ## A142060.P9292583838653278604

`∩[A137977(n+1), A146511(n+1)+2]`
-/

namespace A142060.P9292583838653278604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137977 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146511 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142060.P9292583838653278604

namespace A142060

/-- `∩[A137977(n+1), A146511(n+1)+2]` -/
def P9292583838653278604.Spec : Prop :=
  ∀ n, (P9292583838653278604.a n : ℤ) = A142060 (n + 1)

end A142060

/-! ## A142060.P7597021179427562887

`∩[A038908(n+1), A141855(n+1)]`
-/

namespace A142060.P7597021179427562887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038908 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141855 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142060.P7597021179427562887

namespace A142060

/-- `∩[A038908(n+1), A141855(n+1)]` -/
def P7597021179427562887.Spec : Prop :=
  ∀ n, (P7597021179427562887.a n : ℤ) = A142060 (n + 1)

end A142060

/-! ## A142060.P7010181824507393864

`∩[A055664(n+1), A141855(n+1)]`
-/

namespace A142060.P7010181824507393864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055664 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141855 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142060.P7010181824507393864

namespace A142060

/-- `∩[A055664(n+1), A141855(n+1)]` -/
def P7010181824507393864.Spec : Prop :=
  ∀ n, (P7010181824507393864.a n : ℤ) = A142060 (n + 1)

end A142060

/-! ## A142060.P6295287921381627160

`∩[A133290(n+1), A141855(n+1)]`
-/

namespace A142060.P6295287921381627160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133290 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141855 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142060.P6295287921381627160

namespace A142060

/-- `∩[A133290(n+1), A141855(n+1)]` -/
def P6295287921381627160.Spec : Prop :=
  ∀ n, (P6295287921381627160.a n : ℤ) = A142060 (n + 1)

end A142060

/-! ## A142060.P2776878740482105362

`∩[A137827(n+1), A141855(n+1)]`
-/

namespace A142060.P2776878740482105362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137827 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141855 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142060.P2776878740482105362

namespace A142060

/-- `∩[A137827(n+1), A141855(n+1)]` -/
def P2776878740482105362.Spec : Prop :=
  ∀ n, (P2776878740482105362.a n : ℤ) = A142060 (n + 1)

end A142060

/-! ## A142060.P16339444823071334067

`∩[A002476(n+1), A248339(n)]`
-/

namespace A142060.P16339444823071334067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002476 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248339 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142060.P16339444823071334067

namespace A142060

/-- `∩[A002476(n+1), A248339(n)]` -/
def P16339444823071334067.Spec : Prop :=
  ∀ n, (P16339444823071334067.a n : ℤ) = A142060 (n + 1)

end A142060

/-! ## A142060.P13219058782248123510

`∩[A007645(n+1), A248339(n)]`
-/

namespace A142060.P13219058782248123510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007645 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248339 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142060.P13219058782248123510

namespace A142060

/-- `∩[A007645(n+1), A248339(n)]` -/
def P13219058782248123510.Spec : Prop :=
  ∀ n, (P13219058782248123510.a n : ℤ) = A142060 (n + 1)

end A142060

/-! ## A142060.P17300480279396562252

`∩[A038908(n+1), A248339(n)]`
-/

namespace A142060.P17300480279396562252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038908 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248339 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142060.P17300480279396562252

namespace A142060

/-- `∩[A038908(n+1), A248339(n)]` -/
def P17300480279396562252.Spec : Prop :=
  ∀ n, (P17300480279396562252.a n : ℤ) = A142060 (n + 1)

end A142060

/-! ## A142060.P8286143703756290704

`∩[A045331(n+1), A248339(n)]`
-/

namespace A142060.P8286143703756290704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045331 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248339 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142060.P8286143703756290704

namespace A142060

/-- `∩[A045331(n+1), A248339(n)]` -/
def P8286143703756290704.Spec : Prop :=
  ∀ n, (P8286143703756290704.a n : ℤ) = A142060 (n + 1)

end A142060

/-! ## A142060.P18196693026953645212

`∩[A045375(n+1), A248339(n)]`
-/

namespace A142060.P18196693026953645212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045375 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248339 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142060.P18196693026953645212

namespace A142060

/-- `∩[A045375(n+1), A248339(n)]` -/
def P18196693026953645212.Spec : Prop :=
  ∀ n, (P18196693026953645212.a n : ℤ) = A142060 (n + 1)

end A142060

/-! ## A142060.P17859188213494994216

`∩[A055664(n+1), A248339(n)]`
-/

namespace A142060.P17859188213494994216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055664 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248339 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142060.P17859188213494994216

namespace A142060

/-- `∩[A055664(n+1), A248339(n)]` -/
def P17859188213494994216.Spec : Prop :=
  ∀ n, (P17859188213494994216.a n : ℤ) = A142060 (n + 1)

end A142060

/-! ## A142060.P8467529108239957480

`∩[A123365(n+1), A248339(n)]`
-/

namespace A142060.P8467529108239957480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123365 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248339 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142060.P8467529108239957480

namespace A142060

/-- `∩[A123365(n+1), A248339(n)]` -/
def P8467529108239957480.Spec : Prop :=
  ∀ n, (P8467529108239957480.a n : ℤ) = A142060 (n + 1)

end A142060

/-! ## A142060.P3379906551003180976

`∩[A279815(n+1), A248339(n)]`
-/

namespace A142060.P3379906551003180976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279815 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248339 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142060.P3379906551003180976

namespace A142060

/-- `∩[A279815(n+1), A248339(n)]` -/
def P3379906551003180976.Spec : Prop :=
  ∀ n, (P3379906551003180976.a n : ℤ) = A142060 (n + 1)

end A142060

/-!
# A142061: Primes congruent to 20 mod 33.

The programs for A142061, the canonical program `A142061.P17231929898932925675` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142061 has offset 1).

The definition of A142061 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3935 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142061.P17231929898932925675

`p?[33*n-13]`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A142061

/-- `p?[33*n-13]` -/
def P17231929898932925675.Spec : Prop :=
  ∀ n, P17231929898932925675.a n = A142061 (n + 1)

theorem P17231929898932925675.correct : P17231929898932925675.Spec := by
  intro n
  simp only [A142061, Nat.add_sub_cancel]

end A142061

/-! ## A142061.P8805445575377332694

`∩[A107010(n+1), A141856(n+1)]`
-/

namespace A142061.P8805445575377332694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107010 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141856 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142061.P8805445575377332694

namespace A142061

/-- `∩[A107010(n+1), A141856(n+1)]` -/
def P8805445575377332694.Spec : Prop :=
  ∀ n, (P8805445575377332694.a n : ℤ) = A142061 (n + 1)

end A142061

/-! ## A142061.P12187755215627847003

`∩[A121762(n+1), A141856(n+1)]`
-/

namespace A142061.P12187755215627847003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121762 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141856 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142061.P12187755215627847003

namespace A142061

/-- `∩[A121762(n+1), A141856(n+1)]` -/
def P12187755215627847003.Spec : Prop :=
  ∀ n, (P12187755215627847003.a n : ℤ) = A142061 (n + 1)

end A142061

/-! ## A142061.P2497969913579610697

`∩[A003627(n+1), A141856(n+1)]`
-/

namespace A142061.P2497969913579610697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003627 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141856 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142061.P2497969913579610697

namespace A142061

/-- `∩[A003627(n+1), A141856(n+1)]` -/
def P2497969913579610697.Spec : Prop :=
  ∀ n, (P2497969913579610697.a n : ℤ) = A142061 (n + 1)

end A142061

/-! ## A142061.P8500616421123293584

`∩[A007528(n+1), A141856(n+1)]`
-/

namespace A142061.P8500616421123293584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007528 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141856 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142061.P8500616421123293584

namespace A142061

/-- `∩[A007528(n+1), A141856(n+1)]` -/
def P8500616421123293584.Spec : Prop :=
  ∀ n, (P8500616421123293584.a n : ℤ) = A142061 (n + 1)

end A142061

/-! ## A142061.P1921009318299659130

`∩[A038908(n+1), A141856(n+1)]`
-/

namespace A142061.P1921009318299659130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038908 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141856 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142061.P1921009318299659130

namespace A142061

/-- `∩[A038908(n+1), A141856(n+1)]` -/
def P1921009318299659130.Spec : Prop :=
  ∀ n, (P1921009318299659130.a n : ℤ) = A142061 (n + 1)

end A142061

/-! ## A142061.P10814770177005769344

`∩[A045309(n+1), A141856(n+1)]`
-/

namespace A142061.P10814770177005769344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045309 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141856 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142061.P10814770177005769344

namespace A142061

/-- `∩[A045309(n+1), A141856(n+1)]` -/
def P10814770177005769344.Spec : Prop :=
  ∀ n, (P10814770177005769344.a n : ℤ) = A142061 (n + 1)

end A142061

/-! ## A142061.P7404374820917992523

`∩[A045410(n+1), A141856(n+1)]`
-/

namespace A142061.P7404374820917992523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045410 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141856 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142061.P7404374820917992523

namespace A142061

/-- `∩[A045410(n+1), A141856(n+1)]` -/
def P7404374820917992523.Spec : Prop :=
  ∀ n, (P7404374820917992523.a n : ℤ) = A142061 (n + 1)

end A142061

/-! ## A142061.P3647709292655743891

`∩[A056955(n+1), A141856(n+1)]`
-/

namespace A142061.P3647709292655743891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056955 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141856 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142061.P3647709292655743891

namespace A142061

/-- `∩[A056955(n+1), A141856(n+1)]` -/
def P3647709292655743891.Spec : Prop :=
  ∀ n, (P3647709292655743891.a n : ℤ) = A142061 (n + 1)

end A142061

/-! ## A142061.P7683823564108847946

`∩[A003627(n+1), A063154(n+1)]`
-/

namespace A142061.P7683823564108847946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003627 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063154 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142061.P7683823564108847946

namespace A142061

/-- `∩[A003627(n+1), A063154(n+1)]` -/
def P7683823564108847946.Spec : Prop :=
  ∀ n, (P7683823564108847946.a n : ℤ) = A142061 (n + 1)

end A142061

/-! ## A142061.P3879206309084097115

`∩[A007528(n+1), A063154(n+1)]`
-/

namespace A142061.P3879206309084097115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007528 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063154 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142061.P3879206309084097115

namespace A142061

/-- `∩[A007528(n+1), A063154(n+1)]` -/
def P3879206309084097115.Spec : Prop :=
  ∀ n, (P3879206309084097115.a n : ℤ) = A142061 (n + 1)

end A142061

/-! ## A142061.P8981044002976368786

`∩[A038908(n+1), A063154(n+1)]`
-/

namespace A142061.P8981044002976368786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038908 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063154 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142061.P8981044002976368786

namespace A142061

/-- `∩[A038908(n+1), A063154(n+1)]` -/
def P8981044002976368786.Spec : Prop :=
  ∀ n, (P8981044002976368786.a n : ℤ) = A142061 (n + 1)

end A142061

/-! ## A142061.P14745366845228014972

`∩[A045309(n+1), A063154(n+1)]`
-/

namespace A142061.P14745366845228014972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045309 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063154 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142061.P14745366845228014972

namespace A142061

/-- `∩[A045309(n+1), A063154(n+1)]` -/
def P14745366845228014972.Spec : Prop :=
  ∀ n, (P14745366845228014972.a n : ℤ) = A142061 (n + 1)

end A142061

/-! ## A142061.P6429791309950570016

`∩[A045410(n+1), A063154(n+1)]`
-/

namespace A142061.P6429791309950570016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045410 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063154 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142061.P6429791309950570016

namespace A142061

/-- `∩[A045410(n+1), A063154(n+1)]` -/
def P6429791309950570016.Spec : Prop :=
  ∀ n, (P6429791309950570016.a n : ℤ) = A142061 (n + 1)

end A142061

/-! ## A142061.P7016901086979481517

`∩[A056955(n+1), A063154(n+1)]`
-/

namespace A142061.P7016901086979481517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056955 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063154 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142061.P7016901086979481517

namespace A142061

/-- `∩[A056955(n+1), A063154(n+1)]` -/
def P7016901086979481517.Spec : Prop :=
  ∀ n, (P7016901086979481517.a n : ℤ) = A142061 (n + 1)

end A142061

/-! ## A142061.P24372636170543140

`∩[A063154(n+1), A107010(n+1)]`
-/

namespace A142061.P24372636170543140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063154 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107010 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142061.P24372636170543140

namespace A142061

/-- `∩[A063154(n+1), A107010(n+1)]` -/
def P24372636170543140.Spec : Prop :=
  ∀ n, (P24372636170543140.a n : ℤ) = A142061 (n + 1)

end A142061

/-! ## A142061.P10038809880635634297

`∩[A063154(n+1), A121762(n+1)]`
-/

namespace A142061.P10038809880635634297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063154 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121762 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142061.P10038809880635634297

namespace A142061

/-- `∩[A063154(n+1), A121762(n+1)]` -/
def P10038809880635634297.Spec : Prop :=
  ∀ n, (P10038809880635634297.a n : ℤ) = A142061 (n + 1)

end A142061

/-! ## A142061.P14553163569148825674

`∩[A066501(n+1), A141856(n+1)]`
-/

namespace A142061.P14553163569148825674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066501 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141856 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142061.P14553163569148825674

namespace A142061

/-- `∩[A066501(n+1), A141856(n+1)]` -/
def P14553163569148825674.Spec : Prop :=
  ∀ n, (P14553163569148825674.a n : ℤ) = A142061 (n + 1)

end A142061

/-! ## A142061.P9062575181601707063

`∩[A003627(n+1), A017497(n)]`
-/

namespace A142061.P9062575181601707063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003627 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017497 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142061.P9062575181601707063

namespace A142061

/-- `∩[A003627(n+1), A017497(n)]` -/
def P9062575181601707063.Spec : Prop :=
  ∀ n, (P9062575181601707063.a n : ℤ) = A142061 (n + 1)

end A142061

/-! ## A142061.P18267123440697552136

`∩[A007528(n+1), A017497(n)]`
-/

namespace A142061.P18267123440697552136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007528 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017497 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142061.P18267123440697552136

namespace A142061

/-- `∩[A007528(n+1), A017497(n)]` -/
def P18267123440697552136.Spec : Prop :=
  ∀ n, (P18267123440697552136.a n : ℤ) = A142061 (n + 1)

end A142061

/-!
# A142062: Primes congruent to 23 mod 33.

The programs for A142062, the canonical program `A142062.P18079343739128686435` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142062 has offset 1).

The definition of A142062 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3949 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142062.P18079343739128686435

`p?[3*11*n-10]`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A142062

/-- `p?[3*11*n-10]` -/
def P18079343739128686435.Spec : Prop :=
  ∀ n, P18079343739128686435.a n = A142062 (n + 1)

theorem P18079343739128686435.correct : P18079343739128686435.Spec := by
  intro n
  simp only [A142062, Nat.add_sub_cancel]

end A142062

/-! ## A142062.P12766575684975722321

`∩[A107010(n+1), A141849(n+1)]`
-/

namespace A142062.P12766575684975722321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107010 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141849 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142062.P12766575684975722321

namespace A142062

/-- `∩[A107010(n+1), A141849(n+1)]` -/
def P12766575684975722321.Spec : Prop :=
  ∀ n, (P12766575684975722321.a n : ℤ) = A142062 (n + 1)

end A142062

/-! ## A142062.P8012577625171819707

`∩[A107010(n+1), A215390(n+1)]`
-/

namespace A142062.P8012577625171819707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107010 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215390 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142062.P8012577625171819707

namespace A142062

/-- `∩[A107010(n+1), A215390(n+1)]` -/
def P8012577625171819707.Spec : Prop :=
  ∀ n, (P8012577625171819707.a n : ℤ) = A142062 (n + 1)

end A142062

/-! ## A142062.P3491292482661550430

`∩[A038908(n+1), A141849(n+1)]`
-/

namespace A142062.P3491292482661550430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038908 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141849 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142062.P3491292482661550430

namespace A142062

/-- `∩[A038908(n+1), A141849(n+1)]` -/
def P3491292482661550430.Spec : Prop :=
  ∀ n, (P3491292482661550430.a n : ℤ) = A142062 (n + 1)

end A142062

/-! ## A142062.P5274830123192447027

`∩[A003627(n+1), A141849(n+1)]`
-/

namespace A142062.P5274830123192447027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003627 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141849 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142062.P5274830123192447027

namespace A142062

/-- `∩[A003627(n+1), A141849(n+1)]` -/
def P5274830123192447027.Spec : Prop :=
  ∀ n, (P5274830123192447027.a n : ℤ) = A142062 (n + 1)

end A142062

/-! ## A142062.P13606022561387983409

`∩[A007528(n+1), A141849(n+1)]`
-/

namespace A142062.P13606022561387983409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007528 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141849 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142062.P13606022561387983409

namespace A142062

/-- `∩[A007528(n+1), A141849(n+1)]` -/
def P13606022561387983409.Spec : Prop :=
  ∀ n, (P13606022561387983409.a n : ℤ) = A142062 (n + 1)

end A142062

/-! ## A142062.P6828204286534785488

`∩[A045309(n+1), A141849(n+1)]`
-/

namespace A142062.P6828204286534785488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045309 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141849 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142062.P6828204286534785488

namespace A142062

/-- `∩[A045309(n+1), A141849(n+1)]` -/
def P6828204286534785488.Spec : Prop :=
  ∀ n, (P6828204286534785488.a n : ℤ) = A142062 (n + 1)

end A142062

/-! ## A142062.P8414816772678300294

`∩[A045410(n+1), A141849(n+1)]`
-/

namespace A142062.P8414816772678300294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045410 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141849 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142062.P8414816772678300294

namespace A142062

/-- `∩[A045410(n+1), A141849(n+1)]` -/
def P8414816772678300294.Spec : Prop :=
  ∀ n, (P8414816772678300294.a n : ℤ) = A142062 (n + 1)

end A142062

/-! ## A142062.P8877043370999757968

`∩[A056955(n+1), A141849(n+1)]`
-/

namespace A142062.P8877043370999757968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056955 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141849 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142062.P8877043370999757968

namespace A142062

/-- `∩[A056955(n+1), A141849(n+1)]` -/
def P8877043370999757968.Spec : Prop :=
  ∀ n, (P8877043370999757968.a n : ℤ) = A142062 (n + 1)

end A142062

/-! ## A142062.P9372262373946049380

`or(1, p?[A161709(3*n+1)])`
-/

namespace A142062.P9372262373946049380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161709 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A142062.P9372262373946049380

namespace A142062

/-- `or(1, p?[A161709(3*n+1)])` -/
def P9372262373946049380.Spec : Prop :=
  ∀ n, P9372262373946049380.a n = A142062 (n + 1)

end A142062

/-! ## A142062.P18244072744836588347

`∩[A003627(n+1), A161709(n)]`
-/

namespace A142062.P18244072744836588347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003627 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161709 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142062.P18244072744836588347

namespace A142062

/-- `∩[A003627(n+1), A161709(n)]` -/
def P18244072744836588347.Spec : Prop :=
  ∀ n, (P18244072744836588347.a n : ℤ) = A142062 (n + 1)

end A142062

/-! ## A142062.P8908272987750128117

`∩[A007528(n+1), A161709(n)]`
-/

namespace A142062.P8908272987750128117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007528 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161709 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142062.P8908272987750128117

namespace A142062

/-- `∩[A007528(n+1), A161709(n)]` -/
def P8908272987750128117.Spec : Prop :=
  ∀ n, (P8908272987750128117.a n : ℤ) = A142062 (n + 1)

end A142062

/-! ## A142062.P15919127010198415788

`∩[A038908(n+1), A161709(n)]`
-/

namespace A142062.P15919127010198415788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038908 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161709 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142062.P15919127010198415788

namespace A142062

/-- `∩[A038908(n+1), A161709(n)]` -/
def P15919127010198415788.Spec : Prop :=
  ∀ n, (P15919127010198415788.a n : ℤ) = A142062 (n + 1)

end A142062

/-! ## A142062.P6078592254861581354

`∩[A045309(n+1), A161709(n)]`
-/

namespace A142062.P6078592254861581354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045309 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161709 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142062.P6078592254861581354

namespace A142062

/-- `∩[A045309(n+1), A161709(n)]` -/
def P6078592254861581354.Spec : Prop :=
  ∀ n, (P6078592254861581354.a n : ℤ) = A142062 (n + 1)

end A142062

/-! ## A142062.P13651284907901221496

`∩[A045410(n+1), A161709(n)]`
-/

namespace A142062.P13651284907901221496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045410 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161709 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142062.P13651284907901221496

namespace A142062

/-- `∩[A045410(n+1), A161709(n)]` -/
def P13651284907901221496.Spec : Prop :=
  ∀ n, (P13651284907901221496.a n : ℤ) = A142062 (n + 1)

end A142062

/-! ## A142062.P9526044344520691711

`∩[A056955(n+1), A161709(n)]`
-/

namespace A142062.P9526044344520691711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056955 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161709 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142062.P9526044344520691711

namespace A142062

/-- `∩[A056955(n+1), A161709(n)]` -/
def P9526044344520691711.Spec : Prop :=
  ∀ n, (P9526044344520691711.a n : ℤ) = A142062 (n + 1)

end A142062

/-! ## A142062.P11278301946494577923

`∩[A107010(n+1), A161709(n)]`
-/

namespace A142062.P11278301946494577923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107010 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161709 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142062.P11278301946494577923

namespace A142062

/-- `∩[A107010(n+1), A161709(n)]` -/
def P11278301946494577923.Spec : Prop :=
  ∀ n, (P11278301946494577923.a n : ℤ) = A142062 (n + 1)

end A142062

/-! ## A142062.P11299038771984007578

`∩[A066501(n+1), A141849(n+1)]`
-/

namespace A142062.P11299038771984007578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066501 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141849 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142062.P11299038771984007578

namespace A142062

/-- `∩[A066501(n+1), A141849(n+1)]` -/
def P11299038771984007578.Spec : Prop :=
  ∀ n, (P11299038771984007578.a n : ℤ) = A142062 (n + 1)

end A142062

/-! ## A142062.P3046826341734820787

`∩[A003627(n+1), A017401(n)]`
-/

namespace A142062.P3046826341734820787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003627 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017401 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142062.P3046826341734820787

namespace A142062

/-- `∩[A003627(n+1), A017401(n)]` -/
def P3046826341734820787.Spec : Prop :=
  ∀ n, (P3046826341734820787.a n : ℤ) = A142062 (n + 1)

end A142062

/-! ## A142062.P17170966897253915118

`∩[A007528(n+1), A017401(n)]`
-/

namespace A142062.P17170966897253915118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007528 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017401 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142062.P17170966897253915118

namespace A142062

/-- `∩[A007528(n+1), A017401(n)]` -/
def P17170966897253915118.Spec : Prop :=
  ∀ n, (P17170966897253915118.a n : ℤ) = A142062 (n + 1)

end A142062

/-!
# A142063: Primes congruent to 25 mod 33.

The programs for A142063, the canonical program `A142063.P13615811643452234008` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142063 has offset 1).

The definition of A142063 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3930 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142063.P13615811643452234008

`p?[33*n-8]`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A142063

/-- `p?[33*n-8]` -/
def P13615811643452234008.Spec : Prop :=
  ∀ n, P13615811643452234008.a n = A142063 (n + 1)

theorem P13615811643452234008.correct : P13615811643452234008.Spec := by
  intro n
  simp only [A142063, Nat.add_sub_cancel]

end A142063

/-! ## A142063.P13140690182004136375

`∩[A107013(n+1), A141850(n+1)]`
-/

namespace A142063.P13140690182004136375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107013 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141850 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142063.P13140690182004136375

namespace A142063

/-- `∩[A107013(n+1), A141850(n+1)]` -/
def P13140690182004136375.Spec : Prop :=
  ∀ n, (P13140690182004136375.a n : ℤ) = A142063 (n + 1)

end A142063

/-! ## A142063.P8874961563505158680

`∩[A107013(n+1), A214888(n+1)]`
-/

namespace A142063.P8874961563505158680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107013 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214888 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142063.P8874961563505158680

namespace A142063

/-- `∩[A107013(n+1), A214888(n+1)]` -/
def P8874961563505158680.Spec : Prop :=
  ∀ n, (P8874961563505158680.a n : ℤ) = A142063 (n + 1)

end A142063

/-! ## A142063.P2868898937540052673

`∩[A107013(n+1), A215374(n+1)]`
-/

namespace A142063.P2868898937540052673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107013 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215374 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142063.P2868898937540052673

namespace A142063

/-- `∩[A107013(n+1), A215374(n+1)]` -/
def P2868898937540052673.Spec : Prop :=
  ∀ n, (P2868898937540052673.a n : ℤ) = A142063 (n + 1)

end A142063

/-! ## A142063.P12276366644319394221

`∩[A141850(n+1), A161505(n+1)]`
-/

namespace A142063.P12276366644319394221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141850 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161505 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142063.P12276366644319394221

namespace A142063

/-- `∩[A141850(n+1), A161505(n+1)]` -/
def P12276366644319394221.Spec : Prop :=
  ∀ n, (P12276366644319394221.a n : ℤ) = A142063 (n + 1)

end A142063

/-! ## A142063.P1419658102871435953

`∩[A161505(n+1), A214888(n+1)]`
-/

namespace A142063.P1419658102871435953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161505 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214888 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142063.P1419658102871435953

namespace A142063

/-- `∩[A161505(n+1), A214888(n+1)]` -/
def P1419658102871435953.Spec : Prop :=
  ∀ n, (P1419658102871435953.a n : ℤ) = A142063 (n + 1)

end A142063

/-! ## A142063.P1240150720863467420

`∩[A161505(n+1), A215106(n+1)]`
-/

namespace A142063.P1240150720863467420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161505 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215106 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142063.P1240150720863467420

namespace A142063

/-- `∩[A161505(n+1), A215106(n+1)]` -/
def P1240150720863467420.Spec : Prop :=
  ∀ n, (P1240150720863467420.a n : ℤ) = A142063 (n + 1)

end A142063

/-! ## A142063.P1735870046839360066

`∩[A161505(n+1), A215374(n+1)]`
-/

namespace A142063.P1735870046839360066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161505 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215374 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142063.P1735870046839360066

namespace A142063

/-- `∩[A161505(n+1), A215374(n+1)]` -/
def P1735870046839360066.Spec : Prop :=
  ∀ n, (P1735870046839360066.a n : ℤ) = A142063 (n + 1)

end A142063

/-! ## A142063.P12716226233682165581

`∩[A161505(n+1), A215102(n+1)]`
-/

namespace A142063.P12716226233682165581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161505 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215102 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142063.P12716226233682165581

namespace A142063

/-- `∩[A161505(n+1), A215102(n+1)]` -/
def P12716226233682165581.Spec : Prop :=
  ∀ n, (P12716226233682165581.a n : ℤ) = A142063 (n + 1)

end A142063

/-! ## A142063.P2337870353286405149

`∩[A107013(n+1), A215386(n+1)]`
-/

namespace A142063.P2337870353286405149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107013 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215386 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142063.P2337870353286405149

namespace A142063

/-- `∩[A107013(n+1), A215386(n+1)]` -/
def P2337870353286405149.Spec : Prop :=
  ∀ n, (P2337870353286405149.a n : ℤ) = A142063 (n + 1)

end A142063

/-! ## A142063.P18128267122924369197

`∩[A161505(n+1), A215386(n+1)]`
-/

namespace A142063.P18128267122924369197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161505 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215386 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142063.P18128267122924369197

namespace A142063

/-- `∩[A161505(n+1), A215386(n+1)]` -/
def P18128267122924369197.Spec : Prop :=
  ∀ n, (P18128267122924369197.a n : ℤ) = A142063 (n + 1)

end A142063

/-! ## A142063.P11406954410792596797

`∩[A161505(n+1), A215370(n+1)]`
-/

namespace A142063.P11406954410792596797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161505 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215370 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142063.P11406954410792596797

namespace A142063

/-- `∩[A161505(n+1), A215370(n+1)]` -/
def P11406954410792596797.Spec : Prop :=
  ∀ n, (P11406954410792596797.a n : ℤ) = A142063 (n + 1)

end A142063

/-! ## A142063.P3850348186180434657

`∩[A002476(n+1), A141850(n+1)]`
-/

namespace A142063.P3850348186180434657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002476 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141850 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142063.P3850348186180434657

namespace A142063

/-- `∩[A002476(n+1), A141850(n+1)]` -/
def P3850348186180434657.Spec : Prop :=
  ∀ n, (P3850348186180434657.a n : ℤ) = A142063 (n + 1)

end A142063

/-! ## A142063.P5752900923658074132

`∩[A045375(n+1), A141850(n+1)]`
-/

namespace A142063.P5752900923658074132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045375 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141850 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142063.P5752900923658074132

namespace A142063

/-- `∩[A045375(n+1), A141850(n+1)]` -/
def P5752900923658074132.Spec : Prop :=
  ∀ n, (P5752900923658074132.a n : ℤ) = A142063 (n + 1)

end A142063

/-! ## A142063.P8244560686746678013

`∩[A123365(n+1), A141850(n+1)]`
-/

namespace A142063.P8244560686746678013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123365 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141850 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142063.P8244560686746678013

namespace A142063

/-- `∩[A123365(n+1), A141850(n+1)]` -/
def P8244560686746678013.Spec : Prop :=
  ∀ n, (P8244560686746678013.a n : ℤ) = A142063 (n + 1)

end A142063

/-! ## A142063.P6924684050732981546

`∩[A133290(n+1), A141850(n+1)]`
-/

namespace A142063.P6924684050732981546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133290 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141850 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142063.P6924684050732981546

namespace A142063

/-- `∩[A133290(n+1), A141850(n+1)]` -/
def P6924684050732981546.Spec : Prop :=
  ∀ n, (P6924684050732981546.a n : ℤ) = A142063 (n + 1)

end A142063

/-! ## A142063.P9569114220310861218

`∩[A137827(n+1), A141850(n+1)]`
-/

namespace A142063.P9569114220310861218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137827 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141850 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142063.P9569114220310861218

namespace A142063

/-- `∩[A137827(n+1), A141850(n+1)]` -/
def P9569114220310861218.Spec : Prop :=
  ∀ n, (P9569114220310861218.a n : ℤ) = A142063 (n + 1)

end A142063

/-! ## A142063.P11541915812445954587

`∩[A002476(n+1), A161709(n)+2]`
-/

namespace A142063.P11541915812445954587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002476 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161709 n + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142063.P11541915812445954587

namespace A142063

/-- `∩[A002476(n+1), A161709(n)+2]` -/
def P11541915812445954587.Spec : Prop :=
  ∀ n, (P11541915812445954587.a n : ℤ) = A142063 (n + 1)

end A142063

/-! ## A142063.P3554258156319281957

`∩[A107013(n+1), A161709(n)+2]`
-/

namespace A142063.P3554258156319281957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107013 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161709 n + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142063.P3554258156319281957

namespace A142063

/-- `∩[A107013(n+1), A161709(n)+2]` -/
def P3554258156319281957.Spec : Prop :=
  ∀ n, (P3554258156319281957.a n : ℤ) = A142063 (n + 1)

end A142063

/-! ## A142063.P14776300564421384726

`∩[A161505(n+1), A161709(n)+2]`
-/

namespace A142063.P14776300564421384726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161505 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161709 n + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142063.P14776300564421384726

namespace A142063

/-- `∩[A161505(n+1), A161709(n)+2]` -/
def P14776300564421384726.Spec : Prop :=
  ∀ n, (P14776300564421384726.a n : ℤ) = A142063 (n + 1)

end A142063

/-!
# A142064: Primes congruent to 26 mod 33.

The programs for A142064, the canonical program `A142064.P13407911316614423869` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142064 has offset 1).

The definition of A142064 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3927 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142064.P13407911316614423869

`p?[33*n-7]`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A142064

/-- `p?[33*n-7]` -/
def P13407911316614423869.Spec : Prop :=
  ∀ n, P13407911316614423869.a n = A142064 (n + 1)

theorem P13407911316614423869.correct : P13407911316614423869.Spec := by
  intro n
  simp only [A142064, Nat.add_sub_cancel]

end A142064

/-! ## A142064.P852866067339018776

`∩[A107010(n+1), A141851(n+1)]`
-/

namespace A142064.P852866067339018776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107010 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141851 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142064.P852866067339018776

namespace A142064

/-- `∩[A107010(n+1), A141851(n+1)]` -/
def P852866067339018776.Spec : Prop :=
  ∀ n, (P852866067339018776.a n : ℤ) = A142064 (n + 1)

end A142064

/-! ## A142064.P2548286558586815182

`∩[A107010(n+1), A161505(n+1)]`
-/

namespace A142064.P2548286558586815182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107010 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161505 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142064.P2548286558586815182

namespace A142064

/-- `∩[A107010(n+1), A161505(n+1)]` -/
def P2548286558586815182.Spec : Prop :=
  ∀ n, (P2548286558586815182.a n : ℤ) = A142064 (n + 1)

end A142064

/-! ## A142064.P304303842027702134

`∩[A141851(n+1), A161505(n+1)]`
-/

namespace A142064.P304303842027702134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141851 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161505 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142064.P304303842027702134

namespace A142064

/-- `∩[A141851(n+1), A161505(n+1)]` -/
def P304303842027702134.Spec : Prop :=
  ∀ n, (P304303842027702134.a n : ℤ) = A142064 (n + 1)

end A142064

/-! ## A142064.P11545096826460987829

`∩[A161505(n+1), A215275(n+1)]`
-/

namespace A142064.P11545096826460987829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161505 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215275 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142064.P11545096826460987829

namespace A142064

/-- `∩[A161505(n+1), A215275(n+1)]` -/
def P11545096826460987829.Spec : Prop :=
  ∀ n, (P11545096826460987829.a n : ℤ) = A142064 (n + 1)

end A142064

/-! ## A142064.P6150424500463193512

`∩[A161505(n+1), A215427(n+1)]`
-/

namespace A142064.P6150424500463193512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161505 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215427 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142064.P6150424500463193512

namespace A142064

/-- `∩[A161505(n+1), A215427(n+1)]` -/
def P6150424500463193512.Spec : Prop :=
  ∀ n, (P6150424500463193512.a n : ℤ) = A142064 (n + 1)

end A142064

/-! ## A142064.P9184230437833429196

`∩[A038908(n+1), A141851(n+1)]`
-/

namespace A142064.P9184230437833429196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038908 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141851 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142064.P9184230437833429196

namespace A142064

/-- `∩[A038908(n+1), A141851(n+1)]` -/
def P9184230437833429196.Spec : Prop :=
  ∀ n, (P9184230437833429196.a n : ℤ) = A142064 (n + 1)

end A142064

/-! ## A142064.P14156938138727301138

`∩[A003627(n+1), A141851(n+1)]`
-/

namespace A142064.P14156938138727301138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003627 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141851 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142064.P14156938138727301138

namespace A142064

/-- `∩[A003627(n+1), A141851(n+1)]` -/
def P14156938138727301138.Spec : Prop :=
  ∀ n, (P14156938138727301138.a n : ℤ) = A142064 (n + 1)

end A142064

/-! ## A142064.P5042629104943983789

`∩[A007528(n+1), A141851(n+1)]`
-/

namespace A142064.P5042629104943983789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007528 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141851 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142064.P5042629104943983789

namespace A142064

/-- `∩[A007528(n+1), A141851(n+1)]` -/
def P5042629104943983789.Spec : Prop :=
  ∀ n, (P5042629104943983789.a n : ℤ) = A142064 (n + 1)

end A142064

/-! ## A142064.P1512528584184018060

`∩[A045309(n+1), A141851(n+1)]`
-/

namespace A142064.P1512528584184018060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045309 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141851 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142064.P1512528584184018060

namespace A142064

/-- `∩[A045309(n+1), A141851(n+1)]` -/
def P1512528584184018060.Spec : Prop :=
  ∀ n, (P1512528584184018060.a n : ℤ) = A142064 (n + 1)

end A142064

/-! ## A142064.P9518771040158816366

`∩[A045410(n+1), A141851(n+1)]`
-/

namespace A142064.P9518771040158816366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045410 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141851 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142064.P9518771040158816366

namespace A142064

/-- `∩[A045410(n+1), A141851(n+1)]` -/
def P9518771040158816366.Spec : Prop :=
  ∀ n, (P9518771040158816366.a n : ℤ) = A142064 (n + 1)

end A142064

/-! ## A142064.P10494225845047195620

`∩[A056955(n+1), A141851(n+1)]`
-/

namespace A142064.P10494225845047195620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056955 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141851 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142064.P10494225845047195620

namespace A142064

/-- `∩[A056955(n+1), A141851(n+1)]` -/
def P10494225845047195620.Spec : Prop :=
  ∀ n, (P10494225845047195620.a n : ℤ) = A142064 (n + 1)

end A142064

/-! ## A142064.P2239199795954696657

`∩[A066501(n+1), A141851(n+1)]`
-/

namespace A142064.P2239199795954696657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066501 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141851 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142064.P2239199795954696657

namespace A142064

/-- `∩[A066501(n+1), A141851(n+1)]` -/
def P2239199795954696657.Spec : Prop :=
  ∀ n, (P2239199795954696657.a n : ℤ) = A142064 (n + 1)

end A142064

/-! ## A142064.P17622343471284335329

`∩[A003627(n+1), A017437(n)]`
-/

namespace A142064.P17622343471284335329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003627 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017437 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142064.P17622343471284335329

namespace A142064

/-- `∩[A003627(n+1), A017437(n)]` -/
def P17622343471284335329.Spec : Prop :=
  ∀ n, (P17622343471284335329.a n : ℤ) = A142064 (n + 1)

end A142064

/-! ## A142064.P14154054383692876711

`∩[A007528(n+1), A017437(n)]`
-/

namespace A142064.P14154054383692876711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007528 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017437 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142064.P14154054383692876711

namespace A142064

/-- `∩[A007528(n+1), A017437(n)]` -/
def P14154054383692876711.Spec : Prop :=
  ∀ n, (P14154054383692876711.a n : ℤ) = A142064 (n + 1)

end A142064

/-! ## A142064.P13761769293768314529

`∩[A038908(n+1), A017437(n)]`
-/

namespace A142064.P13761769293768314529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038908 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017437 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142064.P13761769293768314529

namespace A142064

/-- `∩[A038908(n+1), A017437(n)]` -/
def P13761769293768314529.Spec : Prop :=
  ∀ n, (P13761769293768314529.a n : ℤ) = A142064 (n + 1)

end A142064

/-! ## A142064.P10664872735259218260

`∩[A045309(n+1), A017437(n)]`
-/

namespace A142064.P10664872735259218260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045309 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017437 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142064.P10664872735259218260

namespace A142064

/-- `∩[A045309(n+1), A017437(n)]` -/
def P10664872735259218260.Spec : Prop :=
  ∀ n, (P10664872735259218260.a n : ℤ) = A142064 (n + 1)

end A142064

/-! ## A142064.P18257493264967927887

`∩[A045410(n+1), A017437(n)]`
-/

namespace A142064.P18257493264967927887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045410 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017437 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142064.P18257493264967927887

namespace A142064

/-- `∩[A045410(n+1), A017437(n)]` -/
def P18257493264967927887.Spec : Prop :=
  ∀ n, (P18257493264967927887.a n : ℤ) = A142064 (n + 1)

end A142064

/-! ## A142064.P16861706152905765849

`∩[A056955(n+1), A017437(n)]`
-/

namespace A142064.P16861706152905765849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056955 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017437 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142064.P16861706152905765849

namespace A142064

/-- `∩[A056955(n+1), A017437(n)]` -/
def P16861706152905765849.Spec : Prop :=
  ∀ n, (P16861706152905765849.a n : ℤ) = A142064 (n + 1)

end A142064

/-! ## A142064.P17973619189795054924

`∩[A107010(n+1), A017437(n)]`
-/

namespace A142064.P17973619189795054924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107010 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017437 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142064.P17973619189795054924

namespace A142064

/-- `∩[A107010(n+1), A017437(n)]` -/
def P17973619189795054924.Spec : Prop :=
  ∀ n, (P17973619189795054924.a n : ℤ) = A142064 (n + 1)

end A142064

/-!
# A142065: Primes congruent to 28 mod 33.

The programs for A142065, the canonical program `A142065.P7129530371948878668` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142065 has offset 1).

The definition of A142065 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3931 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142065.P7129530371948878668

`p?[33*n-5]`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A142065

/-- `p?[33*n-5]` -/
def P7129530371948878668.Spec : Prop :=
  ∀ n, P7129530371948878668.a n = A142065 (n + 1)

theorem P7129530371948878668.correct : P7129530371948878668.Spec := by
  intro n
  simp only [A142065, Nat.add_sub_cancel]

end A142065

/-! ## A142065.P14915696377948133878

`∩[A002476(n+1), A141853(n+1)]`
-/

namespace A142065.P14915696377948133878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002476 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141853 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142065.P14915696377948133878

namespace A142065

/-- `∩[A002476(n+1), A141853(n+1)]` -/
def P14915696377948133878.Spec : Prop :=
  ∀ n, (P14915696377948133878.a n : ℤ) = A142065 (n + 1)

end A142065

/-! ## A142065.P11363895329352002279

`∩[A007645(n+1), A141853(n+1)]`
-/

namespace A142065.P11363895329352002279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007645 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141853 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142065.P11363895329352002279

namespace A142065

/-- `∩[A007645(n+1), A141853(n+1)]` -/
def P11363895329352002279.Spec : Prop :=
  ∀ n, (P11363895329352002279.a n : ℤ) = A142065 (n + 1)

end A142065

/-! ## A142065.P7684621112231225994

`∩[A038908(n+1), A141853(n+1)]`
-/

namespace A142065.P7684621112231225994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038908 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141853 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142065.P7684621112231225994

namespace A142065

/-- `∩[A038908(n+1), A141853(n+1)]` -/
def P7684621112231225994.Spec : Prop :=
  ∀ n, (P7684621112231225994.a n : ℤ) = A142065 (n + 1)

end A142065

/-! ## A142065.P16193904240356583215

`∩[A045331(n+1), A141853(n+1)]`
-/

namespace A142065.P16193904240356583215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045331 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141853 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142065.P16193904240356583215

namespace A142065

/-- `∩[A045331(n+1), A141853(n+1)]` -/
def P16193904240356583215.Spec : Prop :=
  ∀ n, (P16193904240356583215.a n : ℤ) = A142065 (n + 1)

end A142065

/-! ## A142065.P6755718756309320300

`∩[A045375(n+1), A141853(n+1)]`
-/

namespace A142065.P6755718756309320300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045375 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141853 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142065.P6755718756309320300

namespace A142065

/-- `∩[A045375(n+1), A141853(n+1)]` -/
def P6755718756309320300.Spec : Prop :=
  ∀ n, (P6755718756309320300.a n : ℤ) = A142065 (n + 1)

end A142065

/-! ## A142065.P3457984414841266273

`∩[A123365(n+1), A141853(n+1)]`
-/

namespace A142065.P3457984414841266273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123365 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141853 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142065.P3457984414841266273

namespace A142065

/-- `∩[A123365(n+1), A141853(n+1)]` -/
def P3457984414841266273.Spec : Prop :=
  ∀ n, (P3457984414841266273.a n : ℤ) = A142065 (n + 1)

end A142065

/-! ## A142065.P8032944357666470101

`∩[A141853(n+1), A279815(n+1)]`
-/

namespace A142065.P8032944357666470101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141853 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279815 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142065.P8032944357666470101

namespace A142065

/-- `∩[A141853(n+1), A279815(n+1)]` -/
def P8032944357666470101.Spec : Prop :=
  ∀ n, (P8032944357666470101.a n : ℤ) = A142065 (n + 1)

end A142065

/-! ## A142065.P4074234071479360127

`∩[A055664(n+1), A141853(n+1)]`
-/

namespace A142065.P4074234071479360127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055664 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141853 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142065.P4074234071479360127

namespace A142065

/-- `∩[A055664(n+1), A141853(n+1)]` -/
def P4074234071479360127.Spec : Prop :=
  ∀ n, (P4074234071479360127.a n : ℤ) = A142065 (n + 1)

end A142065

/-! ## A142065.P13141380450032556523

`∩[A133290(n+1), A141853(n+1)]`
-/

namespace A142065.P13141380450032556523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133290 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141853 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142065.P13141380450032556523

namespace A142065

/-- `∩[A133290(n+1), A141853(n+1)]` -/
def P13141380450032556523.Spec : Prop :=
  ∀ n, (P13141380450032556523.a n : ℤ) = A142065 (n + 1)

end A142065

/-! ## A142065.P15181994243086316243

`∩[A137827(n+1), A141853(n+1)]`
-/

namespace A142065.P15181994243086316243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137827 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141853 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142065.P15181994243086316243

namespace A142065

/-- `∩[A137827(n+1), A141853(n+1)]` -/
def P15181994243086316243.Spec : Prop :=
  ∀ n, (P15181994243086316243.a n : ℤ) = A142065 (n + 1)

end A142065

/-! ## A142065.P12361771741344401085

`∩[A002476(n+1), A248339(n)-2]`
-/

namespace A142065.P12361771741344401085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002476 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248339 n - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142065.P12361771741344401085

namespace A142065

/-- `∩[A002476(n+1), A248339(n)-2]` -/
def P12361771741344401085.Spec : Prop :=
  ∀ n, (P12361771741344401085.a n : ℤ) = A142065 (n + 1)

end A142065

/-! ## A142065.P7672458525766362612

`∩[A007645(n+1), A248339(n)-2]`
-/

namespace A142065.P7672458525766362612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007645 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248339 n - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142065.P7672458525766362612

namespace A142065

/-- `∩[A007645(n+1), A248339(n)-2]` -/
def P7672458525766362612.Spec : Prop :=
  ∀ n, (P7672458525766362612.a n : ℤ) = A142065 (n + 1)

end A142065

/-! ## A142065.P6952680214720163080

`∩[A038908(n+1), A248339(n)-2]`
-/

namespace A142065.P6952680214720163080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038908 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248339 n - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142065.P6952680214720163080

namespace A142065

/-- `∩[A038908(n+1), A248339(n)-2]` -/
def P6952680214720163080.Spec : Prop :=
  ∀ n, (P6952680214720163080.a n : ℤ) = A142065 (n + 1)

end A142065

/-! ## A142065.P17693813665096081416

`∩[A045331(n+1), A248339(n)-2]`
-/

namespace A142065.P17693813665096081416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045331 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248339 n - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142065.P17693813665096081416

namespace A142065

/-- `∩[A045331(n+1), A248339(n)-2]` -/
def P17693813665096081416.Spec : Prop :=
  ∀ n, (P17693813665096081416.a n : ℤ) = A142065 (n + 1)

end A142065

/-! ## A142065.P3763256361303258390

`∩[A045375(n+1), A248339(n)-2]`
-/

namespace A142065.P3763256361303258390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045375 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248339 n - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142065.P3763256361303258390

namespace A142065

/-- `∩[A045375(n+1), A248339(n)-2]` -/
def P3763256361303258390.Spec : Prop :=
  ∀ n, (P3763256361303258390.a n : ℤ) = A142065 (n + 1)

end A142065

/-! ## A142065.P2071936130967037506

`∩[A055664(n+1), A248339(n)-2]`
-/

namespace A142065.P2071936130967037506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055664 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248339 n - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142065.P2071936130967037506

namespace A142065

/-- `∩[A055664(n+1), A248339(n)-2]` -/
def P2071936130967037506.Spec : Prop :=
  ∀ n, (P2071936130967037506.a n : ℤ) = A142065 (n + 1)

end A142065

/-! ## A142065.P9864718270868660167

`∩[A123365(n+1), A248339(n)-2]`
-/

namespace A142065.P9864718270868660167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123365 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248339 n - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142065.P9864718270868660167

namespace A142065

/-- `∩[A123365(n+1), A248339(n)-2]` -/
def P9864718270868660167.Spec : Prop :=
  ∀ n, (P9864718270868660167.a n : ℤ) = A142065 (n + 1)

end A142065

/-! ## A142065.P6992092325028205121

`filter[A141853(n+1), A070563(#)]`
-/

namespace A142065.P6992092325028205121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141853 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A070563 (f1 j).toNat = 1) n)

end

end A142065.P6992092325028205121

namespace A142065

/-- `filter[A141853(n+1), A070563(#)]` -/
def P6992092325028205121.Spec : Prop :=
  ∀ n, P6992092325028205121.a n = A142065 (n + 1)

end A142065

/-! ## A142065.P8087971068767929533

`∩[A107925(n+1), A141853(n+1)]`
-/

namespace A142065.P8087971068767929533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107925 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141853 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142065.P8087971068767929533

namespace A142065

/-- `∩[A107925(n+1), A141853(n+1)]` -/
def P8087971068767929533.Spec : Prop :=
  ∀ n, (P8087971068767929533.a n : ℤ) = A142065 (n + 1)

end A142065

/-!
# A142066: Primes congruent to 29 mod 33.

The programs for A142066, the canonical program `A142066.P10225337079812906531` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142066 has offset 1).

The definition of A142066 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3934 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142066.P10225337079812906531

`p?[33*n-4]`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A142066

/-- `p?[33*n-4]` -/
def P10225337079812906531.Spec : Prop :=
  ∀ n, P10225337079812906531.a n = A142066 (n + 1)

theorem P10225337079812906531.correct : P10225337079812906531.Spec := by
  intro n
  simp only [A142066, Nat.add_sub_cancel]

end A142066

/-! ## A142066.P18381090507401210398

`∩[A141176(n+1), A141854(n+1)]`
-/

namespace A142066.P18381090507401210398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141176 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141854 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142066.P18381090507401210398

namespace A142066

/-- `∩[A141176(n+1), A141854(n+1)]` -/
def P18381090507401210398.Spec : Prop :=
  ∀ n, (P18381090507401210398.a n : ℤ) = A142066 (n + 1)

end A142066

/-! ## A142066.P3501352613081872286

`∩[A038907(n+1), A141854(n+1)]`
-/

namespace A142066.P3501352613081872286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038907 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141854 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142066.P3501352613081872286

namespace A142066

/-- `∩[A038907(n+1), A141854(n+1)]` -/
def P3501352613081872286.Spec : Prop :=
  ∀ n, (P3501352613081872286.a n : ℤ) = A142066 (n + 1)

end A142066

/-! ## A142066.P12679072307912872746

`∩[A137978(n+1), A141176(n+1)]`
-/

namespace A142066.P12679072307912872746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137978 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141176 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142066.P12679072307912872746

namespace A142066

/-- `∩[A137978(n+1), A141176(n+1)]` -/
def P12679072307912872746.Spec : Prop :=
  ∀ n, (P12679072307912872746.a n : ℤ) = A142066 (n + 1)

end A142066

/-! ## A142066.P205601223207631475

`∩[A003627(n+1), A141854(n+1)]`
-/

namespace A142066.P205601223207631475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003627 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141854 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142066.P205601223207631475

namespace A142066

/-- `∩[A003627(n+1), A141854(n+1)]` -/
def P205601223207631475.Spec : Prop :=
  ∀ n, (P205601223207631475.a n : ℤ) = A142066 (n + 1)

end A142066

/-! ## A142066.P9142795687117629800

`∩[A007528(n+1), A141854(n+1)]`
-/

namespace A142066.P9142795687117629800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007528 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141854 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142066.P9142795687117629800

namespace A142066

/-- `∩[A007528(n+1), A141854(n+1)]` -/
def P9142795687117629800.Spec : Prop :=
  ∀ n, (P9142795687117629800.a n : ℤ) = A142066 (n + 1)

end A142066

/-! ## A142066.P15461312995871997676

`∩[A045309(n+1), A141854(n+1)]`
-/

namespace A142066.P15461312995871997676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045309 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141854 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142066.P15461312995871997676

namespace A142066

/-- `∩[A045309(n+1), A141854(n+1)]` -/
def P15461312995871997676.Spec : Prop :=
  ∀ n, (P15461312995871997676.a n : ℤ) = A142066 (n + 1)

end A142066

/-! ## A142066.P17960782141062448254

`∩[A045410(n+1), A141854(n+1)]`
-/

namespace A142066.P17960782141062448254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045410 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141854 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142066.P17960782141062448254

namespace A142066

/-- `∩[A045410(n+1), A141854(n+1)]` -/
def P17960782141062448254.Spec : Prop :=
  ∀ n, (P17960782141062448254.a n : ℤ) = A142066 (n + 1)

end A142066

/-! ## A142066.P4472354099367864339

`∩[A056955(n+1), A141854(n+1)]`
-/

namespace A142066.P4472354099367864339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056955 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141854 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142066.P4472354099367864339

namespace A142066

/-- `∩[A056955(n+1), A141854(n+1)]` -/
def P4472354099367864339.Spec : Prop :=
  ∀ n, (P4472354099367864339.a n : ℤ) = A142066 (n + 1)

end A142066

/-! ## A142066.P8835748440633238424

`∩[A003627(n+1), A063154(n+1)-2]`
-/

namespace A142066.P8835748440633238424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003627 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063154 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142066.P8835748440633238424

namespace A142066

/-- `∩[A003627(n+1), A063154(n+1)-2]` -/
def P8835748440633238424.Spec : Prop :=
  ∀ n, (P8835748440633238424.a n : ℤ) = A142066 (n + 1)

end A142066

/-! ## A142066.P9236478854056532137

`∩[A007528(n+1), A063154(n+1)-2]`
-/

namespace A142066.P9236478854056532137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007528 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063154 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142066.P9236478854056532137

namespace A142066

/-- `∩[A007528(n+1), A063154(n+1)-2]` -/
def P9236478854056532137.Spec : Prop :=
  ∀ n, (P9236478854056532137.a n : ℤ) = A142066 (n + 1)

end A142066

/-! ## A142066.P472432378369097472

`∩[A038907(n+1), A063154(n+1)-2]`
-/

namespace A142066.P472432378369097472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038907 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063154 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142066.P472432378369097472

namespace A142066

/-- `∩[A038907(n+1), A063154(n+1)-2]` -/
def P472432378369097472.Spec : Prop :=
  ∀ n, (P472432378369097472.a n : ℤ) = A142066 (n + 1)

end A142066

/-! ## A142066.P11898282253523482732

`∩[A045309(n+1), A063154(n+1)-2]`
-/

namespace A142066.P11898282253523482732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045309 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063154 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142066.P11898282253523482732

namespace A142066

/-- `∩[A045309(n+1), A063154(n+1)-2]` -/
def P11898282253523482732.Spec : Prop :=
  ∀ n, (P11898282253523482732.a n : ℤ) = A142066 (n + 1)

end A142066

/-! ## A142066.P16038137893994954277

`∩[A045410(n+1), A063154(n+1)-2]`
-/

namespace A142066.P16038137893994954277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045410 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063154 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142066.P16038137893994954277

namespace A142066

/-- `∩[A045410(n+1), A063154(n+1)-2]` -/
def P16038137893994954277.Spec : Prop :=
  ∀ n, (P16038137893994954277.a n : ℤ) = A142066 (n + 1)

end A142066

/-! ## A142066.P7572256090906218918

`∩[A066501(n+1), A141854(n+1)]`
-/

namespace A142066.P7572256090906218918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066501 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141854 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142066.P7572256090906218918

namespace A142066

/-- `∩[A066501(n+1), A141854(n+1)]` -/
def P7572256090906218918.Spec : Prop :=
  ∀ n, (P7572256090906218918.a n : ℤ) = A142066 (n + 1)

end A142066

/-! ## A142066.P5256264933024403406

`∩[A092222(n+1), A141176(n+1)]`
-/

namespace A142066.P5256264933024403406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092222 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141176 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142066.P5256264933024403406

namespace A142066

/-- `∩[A092222(n+1), A141176(n+1)]` -/
def P5256264933024403406.Spec : Prop :=
  ∀ n, (P5256264933024403406.a n : ℤ) = A142066 (n + 1)

end A142066

/-! ## A142066.P3606386104472170364

`∩[A092222(n+1), A141854(n+1)]`
-/

namespace A142066.P3606386104472170364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092222 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141854 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142066.P3606386104472170364

namespace A142066

/-- `∩[A092222(n+1), A141854(n+1)]` -/
def P3606386104472170364.Spec : Prop :=
  ∀ n, (P3606386104472170364.a n : ℤ) = A142066 (n + 1)

end A142066

/-! ## A142066.P5828640382441008201

`∩[A092222(n+1), A167134(n+1)]`
-/

namespace A142066.P5828640382441008201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092222 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167134 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142066.P5828640382441008201

namespace A142066

/-- `∩[A092222(n+1), A167134(n+1)]` -/
def P5828640382441008201.Spec : Prop :=
  ∀ n, (P5828640382441008201.a n : ℤ) = A142066 (n + 1)

end A142066

/-! ## A142066.P12706648742960917689

`∩[A092222(n+1), A215206(n+1)]`
-/

namespace A142066.P12706648742960917689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092222 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215206 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142066.P12706648742960917689

namespace A142066

/-- `∩[A092222(n+1), A215206(n+1)]` -/
def P12706648742960917689.Spec : Prop :=
  ∀ n, (P12706648742960917689.a n : ℤ) = A142066 (n + 1)

end A142066

/-! ## A142066.P1700789454926152144

`∩[A092222(n+1), A215210(n+1)]`
-/

namespace A142066.P1700789454926152144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092222 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215210 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142066.P1700789454926152144

namespace A142066

/-- `∩[A092222(n+1), A215210(n+1)]` -/
def P1700789454926152144.Spec : Prop :=
  ∀ n, (P1700789454926152144.a n : ℤ) = A142066 (n + 1)

end A142066

/-!
# A142067: Primes congruent to 31 mod 33.

The programs for A142067, the canonical program `A142067.P2316696778376834968` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142067 has offset 1).

The definition of A142067 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3893 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142067.P2316696778376834968

`p?[33*n-2]`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A142067

/-- `p?[33*n-2]` -/
def P2316696778376834968.Spec : Prop :=
  ∀ n, P2316696778376834968.a n = A142067 (n + 1)

theorem P2316696778376834968.correct : P2316696778376834968.Spec := by
  intro n
  simp only [A142067, Nat.add_sub_cancel]

end A142067

/-! ## A142067.P9645172912907443041

`∩[A107013(n+1), A141856(n+1)]`
-/

namespace A142067.P9645172912907443041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107013 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141856 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142067.P9645172912907443041

namespace A142067

/-- `∩[A107013(n+1), A141856(n+1)]` -/
def P9645172912907443041.Spec : Prop :=
  ∀ n, (P9645172912907443041.a n : ℤ) = A142067 (n + 1)

end A142067

/-! ## A142067.P14106515023331911468

`∩[A141177(n+1), A141856(n+1)]`
-/

namespace A142067.P14106515023331911468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141177 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141856 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142067.P14106515023331911468

namespace A142067

/-- `∩[A141177(n+1), A141856(n+1)]` -/
def P14106515023331911468.Spec : Prop :=
  ∀ n, (P14106515023331911468.a n : ℤ) = A142067 (n + 1)

end A142067

/-! ## A142067.P14776252944021063132

`∩[A002476(n+1), A141856(n+1)]`
-/

namespace A142067.P14776252944021063132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002476 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141856 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142067.P14776252944021063132

namespace A142067

/-- `∩[A002476(n+1), A141856(n+1)]` -/
def P14776252944021063132.Spec : Prop :=
  ∀ n, (P14776252944021063132.a n : ℤ) = A142067 (n + 1)

end A142067

/-! ## A142067.P11865794533807828465

`∩[A007645(n+1), A141856(n+1)]`
-/

namespace A142067.P11865794533807828465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007645 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141856 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142067.P11865794533807828465

namespace A142067

/-- `∩[A007645(n+1), A141856(n+1)]` -/
def P11865794533807828465.Spec : Prop :=
  ∀ n, (P11865794533807828465.a n : ℤ) = A142067 (n + 1)

end A142067

/-! ## A142067.P18336499639780705272

`∩[A045331(n+1), A141856(n+1)]`
-/

namespace A142067.P18336499639780705272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045331 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141856 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142067.P18336499639780705272

namespace A142067

/-- `∩[A045331(n+1), A141856(n+1)]` -/
def P18336499639780705272.Spec : Prop :=
  ∀ n, (P18336499639780705272.a n : ℤ) = A142067 (n + 1)

end A142067

/-! ## A142067.P2520924566734164556

`∩[A045375(n+1), A141856(n+1)]`
-/

namespace A142067.P2520924566734164556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045375 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141856 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142067.P2520924566734164556

namespace A142067

/-- `∩[A045375(n+1), A141856(n+1)]` -/
def P2520924566734164556.Spec : Prop :=
  ∀ n, (P2520924566734164556.a n : ℤ) = A142067 (n + 1)

end A142067

/-! ## A142067.P4082628642916006557

`∩[A123365(n+1), A141856(n+1)]`
-/

namespace A142067.P4082628642916006557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123365 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141856 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142067.P4082628642916006557

namespace A142067

/-- `∩[A123365(n+1), A141856(n+1)]` -/
def P4082628642916006557.Spec : Prop :=
  ∀ n, (P4082628642916006557.a n : ℤ) = A142067 (n + 1)

end A142067

/-! ## A142067.P17512198546057090030

`∩[A038907(n+1), A141856(n+1)]`
-/

namespace A142067.P17512198546057090030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038907 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141856 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142067.P17512198546057090030

namespace A142067

/-- `∩[A038907(n+1), A141856(n+1)]` -/
def P17512198546057090030.Spec : Prop :=
  ∀ n, (P17512198546057090030.a n : ℤ) = A142067 (n + 1)

end A142067

/-! ## A142067.P12692942972291475629

`∩[A141856(n+1), A279815(n+1)]`
-/

namespace A142067.P12692942972291475629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141856 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279815 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142067.P12692942972291475629

namespace A142067

/-- `∩[A141856(n+1), A279815(n+1)]` -/
def P12692942972291475629.Spec : Prop :=
  ∀ n, (P12692942972291475629.a n : ℤ) = A142067 (n + 1)

end A142067

/-! ## A142067.P13627728074477126620

`∩[A055664(n+1), A141856(n+1)]`
-/

namespace A142067.P13627728074477126620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055664 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141856 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142067.P13627728074477126620

namespace A142067

/-- `∩[A055664(n+1), A141856(n+1)]` -/
def P13627728074477126620.Spec : Prop :=
  ∀ n, (P13627728074477126620.a n : ℤ) = A142067 (n + 1)

end A142067

/-! ## A142067.P5031293042017866621

`∩[A133290(n+1), A141856(n+1)]`
-/

namespace A142067.P5031293042017866621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133290 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141856 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142067.P5031293042017866621

namespace A142067

/-- `∩[A133290(n+1), A141856(n+1)]` -/
def P5031293042017866621.Spec : Prop :=
  ∀ n, (P5031293042017866621.a n : ℤ) = A142067 (n + 1)

end A142067

/-! ## A142067.P3009921221602401434

`∩[A137827(n+1), A141856(n+1)]`
-/

namespace A142067.P3009921221602401434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137827 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141856 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142067.P3009921221602401434

namespace A142067

/-- `∩[A137827(n+1), A141856(n+1)]` -/
def P3009921221602401434.Spec : Prop :=
  ∀ n, (P3009921221602401434.a n : ℤ) = A142067 (n + 1)

end A142067

/-! ## A142067.P9441441204301064782

`∩[A002476(n+1), A063154(n+1)]`
-/

namespace A142067.P9441441204301064782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002476 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063154 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142067.P9441441204301064782

namespace A142067

/-- `∩[A002476(n+1), A063154(n+1)]` -/
def P9441441204301064782.Spec : Prop :=
  ∀ n, (P9441441204301064782.a n : ℤ) = A142067 (n + 1)

end A142067

/-! ## A142067.P10779904275296077724

`∩[A007645(n+1), A063154(n+1)]`
-/

namespace A142067.P10779904275296077724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007645 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063154 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142067.P10779904275296077724

namespace A142067

/-- `∩[A007645(n+1), A063154(n+1)]` -/
def P10779904275296077724.Spec : Prop :=
  ∀ n, (P10779904275296077724.a n : ℤ) = A142067 (n + 1)

end A142067

/-! ## A142067.P6044711278214682556

`∩[A038907(n+1), A063154(n+1)]`
-/

namespace A142067.P6044711278214682556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038907 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063154 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142067.P6044711278214682556

namespace A142067

/-- `∩[A038907(n+1), A063154(n+1)]` -/
def P6044711278214682556.Spec : Prop :=
  ∀ n, (P6044711278214682556.a n : ℤ) = A142067 (n + 1)

end A142067

/-! ## A142067.P9733583100409582675

`∩[A045331(n+1), A063154(n+1)]`
-/

namespace A142067.P9733583100409582675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045331 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063154 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142067.P9733583100409582675

namespace A142067

/-- `∩[A045331(n+1), A063154(n+1)]` -/
def P9733583100409582675.Spec : Prop :=
  ∀ n, (P9733583100409582675.a n : ℤ) = A142067 (n + 1)

end A142067

/-! ## A142067.P3877438023349551213

`∩[A045375(n+1), A063154(n+1)]`
-/

namespace A142067.P3877438023349551213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045375 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063154 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142067.P3877438023349551213

namespace A142067

/-- `∩[A045375(n+1), A063154(n+1)]` -/
def P3877438023349551213.Spec : Prop :=
  ∀ n, (P3877438023349551213.a n : ℤ) = A142067 (n + 1)

end A142067

/-! ## A142067.P5972254872930672076

`∩[A063154(n+1), A107013(n+1)]`
-/

namespace A142067.P5972254872930672076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063154 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107013 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142067.P5972254872930672076

namespace A142067

/-- `∩[A063154(n+1), A107013(n+1)]` -/
def P5972254872930672076.Spec : Prop :=
  ∀ n, (P5972254872930672076.a n : ℤ) = A142067 (n + 1)

end A142067

/-! ## A142067.P4897709041761823670

`∩[A063154(n+1), A123365(n+1)]`
-/

namespace A142067.P4897709041761823670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063154 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123365 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142067.P4897709041761823670

namespace A142067

/-- `∩[A063154(n+1), A123365(n+1)]` -/
def P4897709041761823670.Spec : Prop :=
  ∀ n, (P4897709041761823670.a n : ℤ) = A142067 (n + 1)

end A142067

/-!
# A142068: Primes congruent to 32 mod 33.

The programs for A142068, the canonical program `A142068.P12150171660204582869` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142068 has offset 1).

The definition of A142068 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3929 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142068.P12150171660204582869

`p?[33*n-1]`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A142068

/-- `p?[33*n-1]` -/
def P12150171660204582869.Spec : Prop :=
  ∀ n, P12150171660204582869.a n = A142068 (n + 1)

theorem P12150171660204582869.correct : P12150171660204582869.Spec := by
  intro n
  simp only [A142068, Nat.add_sub_cancel]

end A142068

/-! ## A142068.P9114915101570773732

`or(1, p?[3*11*n+32])`
-/

namespace A142068.P9114915101570773732
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (11 * n) + 32

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A142068.P9114915101570773732

namespace A142068

/-- `or(1, p?[3*11*n+32])` -/
def P9114915101570773732.Spec : Prop :=
  ∀ n, (P9114915101570773732.a n : ℤ) = A142068 (n + 1)

end A142068

/-! ## A142068.P5540782053332426521

`∏{d}[p?[6*11*n+65], #]`
-/

namespace A142068.P5540782053332426521
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * (11 * n) + 65

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), d

end

end A142068.P5540782053332426521

namespace A142068

/-- `∏{d}[p?[6*11*n+65], #]` -/
def P5540782053332426521.Spec : Prop :=
  ∀ n, (P5540782053332426521.a n : ℤ) = A142068 (n + 1)

end A142068

/-! ## A142068.P2590079891385378724

`∏{p}[p?[6*11*n+65], #]`
-/

namespace A142068.P2590079891385378724
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * (11 * n) + 65

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), p

end

end A142068.P2590079891385378724

namespace A142068

/-- `∏{p}[p?[6*11*n+65], #]` -/
def P2590079891385378724.Spec : Prop :=
  ∀ n, (P2590079891385378724.a n : ℤ) = A142068 (n + 1)

end A142068

/-! ## A142068.P10439854439511850209

`∑{p}[p?[32*(n+1)+n], #]`
-/

namespace A142068.P10439854439511850209
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  32 * (n + 1) + n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), p

end

end A142068.P10439854439511850209

namespace A142068

/-- `∑{p}[p?[32*(n+1)+n], #]` -/
def P10439854439511850209.Spec : Prop :=
  ∀ n, (P10439854439511850209.a n : ℤ) = A142068 (n + 1)

end A142068

/-! ## A142068.P6849812938560825378

`∩[A141176(n+1), A141857(n+1)]`
-/

namespace A142068.P6849812938560825378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141176 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141857 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142068.P6849812938560825378

namespace A142068

/-- `∩[A141176(n+1), A141857(n+1)]` -/
def P6849812938560825378.Spec : Prop :=
  ∀ n, (P6849812938560825378.a n : ℤ) = A142068 (n + 1)

end A142068

/-! ## A142068.P11951253236149412935

`∩[A141857(n+1), A161505(n+1)]`
-/

namespace A142068.P11951253236149412935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141857 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161505 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142068.P11951253236149412935

namespace A142068

/-- `∩[A141857(n+1), A161505(n+1)]` -/
def P11951253236149412935.Spec : Prop :=
  ∀ n, (P11951253236149412935.a n : ℤ) = A142068 (n + 1)

end A142068

/-! ## A142068.P4678449122655700478

`∩[A038907(n+1), A141857(n+1)]`
-/

namespace A142068.P4678449122655700478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038907 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141857 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142068.P4678449122655700478

namespace A142068

/-- `∩[A038907(n+1), A141857(n+1)]` -/
def P4678449122655700478.Spec : Prop :=
  ∀ n, (P4678449122655700478.a n : ℤ) = A142068 (n + 1)

end A142068

/-! ## A142068.P13044904196099803282

`∩[A003627(n+1), A141857(n+1)]`
-/

namespace A142068.P13044904196099803282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003627 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141857 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142068.P13044904196099803282

namespace A142068

/-- `∩[A003627(n+1), A141857(n+1)]` -/
def P13044904196099803282.Spec : Prop :=
  ∀ n, (P13044904196099803282.a n : ℤ) = A142068 (n + 1)

end A142068

/-! ## A142068.P14401333854983975379

`∩[A007528(n+1), A141857(n+1)]`
-/

namespace A142068.P14401333854983975379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007528 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141857 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142068.P14401333854983975379

namespace A142068

/-- `∩[A007528(n+1), A141857(n+1)]` -/
def P14401333854983975379.Spec : Prop :=
  ∀ n, (P14401333854983975379.a n : ℤ) = A142068 (n + 1)

end A142068

/-! ## A142068.P15688363211440072594

`∩[A045309(n+1), A141857(n+1)]`
-/

namespace A142068.P15688363211440072594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045309 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141857 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142068.P15688363211440072594

namespace A142068

/-- `∩[A045309(n+1), A141857(n+1)]` -/
def P15688363211440072594.Spec : Prop :=
  ∀ n, (P15688363211440072594.a n : ℤ) = A142068 (n + 1)

end A142068

/-! ## A142068.P14789304625666463932

`∩[A045410(n+1), A141857(n+1)]`
-/

namespace A142068.P14789304625666463932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045410 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141857 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142068.P14789304625666463932

namespace A142068

/-- `∩[A045410(n+1), A141857(n+1)]` -/
def P14789304625666463932.Spec : Prop :=
  ∀ n, (P14789304625666463932.a n : ℤ) = A142068 (n + 1)

end A142068

/-! ## A142068.P5983495627705896920

`∩[A056955(n+1), A141857(n+1)]`
-/

namespace A142068.P5983495627705896920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056955 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141857 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142068.P5983495627705896920

namespace A142068

/-- `∩[A056955(n+1), A141857(n+1)]` -/
def P5983495627705896920.Spec : Prop :=
  ∀ n, (P5983495627705896920.a n : ℤ) = A142068 (n + 1)

end A142068

/-! ## A142068.P15798144426165028478

`∩[A003627(n+1), A248339(n)+2]`
-/

namespace A142068.P15798144426165028478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003627 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248339 n + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142068.P15798144426165028478

namespace A142068

/-- `∩[A003627(n+1), A248339(n)+2]` -/
def P15798144426165028478.Spec : Prop :=
  ∀ n, (P15798144426165028478.a n : ℤ) = A142068 (n + 1)

end A142068

/-! ## A142068.P16084528913537186047

`∩[A007528(n+1), A248339(n)+2]`
-/

namespace A142068.P16084528913537186047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007528 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248339 n + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142068.P16084528913537186047

namespace A142068

/-- `∩[A007528(n+1), A248339(n)+2]` -/
def P16084528913537186047.Spec : Prop :=
  ∀ n, (P16084528913537186047.a n : ℤ) = A142068 (n + 1)

end A142068

/-! ## A142068.P18290974551755689924

`∩[A038907(n+1), A248339(n)+2]`
-/

namespace A142068.P18290974551755689924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038907 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248339 n + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142068.P18290974551755689924

namespace A142068

/-- `∩[A038907(n+1), A248339(n)+2]` -/
def P18290974551755689924.Spec : Prop :=
  ∀ n, (P18290974551755689924.a n : ℤ) = A142068 (n + 1)

end A142068

/-! ## A142068.P16460544931193413805

`∩[A045309(n+1), A248339(n)+2]`
-/

namespace A142068.P16460544931193413805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045309 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248339 n + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142068.P16460544931193413805

namespace A142068

/-- `∩[A045309(n+1), A248339(n)+2]` -/
def P16460544931193413805.Spec : Prop :=
  ∀ n, (P16460544931193413805.a n : ℤ) = A142068 (n + 1)

end A142068

/-! ## A142068.P9571377189799536505

`∩[A045410(n+1), A248339(n)+2]`
-/

namespace A142068.P9571377189799536505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045410 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248339 n + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142068.P9571377189799536505

namespace A142068

/-- `∩[A045410(n+1), A248339(n)+2]` -/
def P9571377189799536505.Spec : Prop :=
  ∀ n, (P9571377189799536505.a n : ℤ) = A142068 (n + 1)

end A142068

/-! ## A142068.P14254235088903761204

`∩[A056955(n+1), A248339(n)+2]`
-/

namespace A142068.P14254235088903761204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056955 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248339 n + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142068.P14254235088903761204

namespace A142068

/-- `∩[A056955(n+1), A248339(n)+2]` -/
def P14254235088903761204.Spec : Prop :=
  ∀ n, (P14254235088903761204.a n : ℤ) = A142068 (n + 1)

end A142068

/-! ## A142068.P18370325946025056902

`∩[A141176(n+1), A248339(n)+2]`
-/

namespace A142068.P18370325946025056902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141176 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248339 n + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142068.P18370325946025056902

namespace A142068

/-- `∩[A141176(n+1), A248339(n)+2]` -/
def P18370325946025056902.Spec : Prop :=
  ∀ n, (P18370325946025056902.a n : ℤ) = A142068 (n + 1)

end A142068

/-!
# A142069: Period 9: repeat [3, 7, 2, 6, 1, 5, 0, 4, 8].

The programs for A142069, the canonical program `A142069.P17671227044963186128` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142069 has offset 0).

The definition of A142069 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A142069.P17671227044963186128

`a(n-9)` with `a(0)=3, a(1)=7, a(2)=2, a(3)=6, a(4)=1, a(5)=5, a(6)=0, a(7)=4, a(8)=8`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A142069

/-- `a(n-9)` -/
def P17671227044963186128.Spec : Prop :=
  ∀ n, (P17671227044963186128.a n : ℤ) = A142069 n

theorem P17671227044963186128.correct : P17671227044963186128.Spec := by
  intro n
  simp only [A142069]

end A142069

/-!
# A142070: Triangle T(n,k) read by rows: the coefficient [x^k] of the polynomial Product_{i=1..n} (i+1)*x-i in row n>=0 and column 0<=k<=n.

The programs for A142070, there is no canonical definition to state claims against.
-/

/-! ## A142070.P14521701284846039411

`A059364(A038722(n+1))*A097807(n)`
-/

namespace A142070.P14521701284846039411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059364 (A038722 (n + 1)).toNat * A097807 n

end

end A142070.P14521701284846039411

/-! ## A142070.P840498639804528854

`A088996(A014132(n+1))*A097807(n)`
-/

namespace A142070.P840498639804528854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088996 (A014132 (n + 1)).toNat * A097807 n

end

end A142070.P840498639804528854

/-! ## A142070.P14757209695532524313

`A059364(A038722(C(n+1, n)))/A097807(n)`
-/

namespace A142070.P14757209695532524313
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059364 (A038722 (Nat.choose (n + 1) n)).toNat : ℚ) / (A097807 n : ℚ)

end

end A142070.P14757209695532524313

/-! ## A142070.P14742852612565834612

`A088996(A014132(n-log2(1/2)))/A097807(n)`
-/

namespace A142070.P14742852612565834612
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A088996 (A014132 (SequenceMachineLib.roundAway ((n : ℝ) - Real.logb 2 ((1 : ℚ) / 2 : ℝ))).toNat).toNat : ℚ) / (A097807 n : ℚ)

end

end A142070.P14742852612565834612

/-! ## A142070.P1178645496465590865

`A059364(A038722(floor((n+1+n)/2)+1))/A097807(n)`
-/

namespace A142070.P1178645496465590865
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059364 (A038722 (⌊(n + 1 + n : ℚ) / 2⌋ + 1).toNat).toNat : ℚ) / (A097807 n : ℚ)

end

end A142070.P1178645496465590865

/-! ## A142070.P7008109478523415509

`A033999(A025581(n))*A059364(A038722(n+1))`
-/

namespace A142070.P7008109478523415509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A025581 n).toNat * A059364 (A038722 (n + 1)).toNat

end

end A142070.P7008109478523415509

/-! ## A142070.P13214391267096710824

`A033999(A154680(n+1))*A059364(A038722(n+1))`
-/

namespace A142070.P13214391267096710824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A154680 (n + 1)).toNat * A059364 (A038722 (n + 1)).toNat

end

end A142070.P13214391267096710824

/-! ## A142070.P17946668981622703845

`A033999(A144650(n+1)+1)*A059364(A038722(n+1))`
-/

namespace A142070.P17946668981622703845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A144650 (n + 1) + 1).toNat * A059364 (A038722 (n + 1)).toNat

end

end A142070.P17946668981622703845

/-! ## A142070.P3819946224641175471

`(A059364(A038722(n+1))/A097807(n))%A000984(n+1)`
-/

namespace A142070.P3819946224641175471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A059364 (A038722 (n + 1)).toNat : ℚ) / (A097807 n : ℚ))) (A000984 (n + 1))

end

end A142070.P3819946224641175471

/-!
# A142071: Expansion of the exponential generating function 1 - log(1 - x*(exp(z) - 1)), triangle read by rows, T(n,k) for n >= 0 and 0 <= k <= n.

The programs for A142071, there is no canonical definition to state claims against.
-/

/-! ## A142071.P7597517703473892155

`A048993(n)*A165680(n+1)`
-/

namespace A142071.P7597517703473892155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048993 n * A165680 (n + 1)

end

end A142071.P7597517703473892155

/-! ## A142071.P11348931527450738042

`A131689(n)/A130270(n+1)`
-/

namespace A142071.P11348931527450738042
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A131689 n : ℚ) / (A130270 (n + 1) : ℚ)

end

end A142071.P11348931527450738042

/-! ## A142071.P3247411988087615167

`A131689(n)/A144328(n+1)`
-/

namespace A142071.P3247411988087615167
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A131689 n : ℚ) / (A144328 (n + 1) : ℚ)

end

end A142071.P3247411988087615167

/-! ## A142071.P18141954057661203019

`A131689(n)/A028310(A002262(n))`
-/

namespace A142071.P18141954057661203019
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A131689 n : ℚ) / (A028310 (A002262 n).toNat : ℚ)

end

end A142071.P18141954057661203019

/-! ## A142071.P11619413929147799720

`A131689(n)/A002260(A028310(n))`
-/

namespace A142071.P11619413929147799720
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A131689 n : ℚ) / (A002260 (A028310 n).toNat : ℚ)

end

end A142071.P11619413929147799720

/-! ## A142071.P6563318982473628049

`A090657(n)/A134399(n)`
-/

namespace A142071.P6563318982473628049
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A090657 n : ℚ) / (A134399 n : ℚ)

end

end A142071.P6563318982473628049

/-! ## A142071.P15408791486215891511

`A131689(n)/A002260(A233583(n+1))`
-/

namespace A142071.P15408791486215891511
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A131689 n : ℚ) / (A002260 (A233583 (n + 1)).toNat : ℚ)

end

end A142071.P15408791486215891511

/-! ## A142071.P2437148828139560361

`A131689(n)/A000005(A232089(n))`
-/

namespace A142071.P2437148828139560361
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A131689 n : ℚ) / (A000005 (A232089 n).toNat : ℚ)

end

end A142071.P2437148828139560361

/-! ## A142071.P4332224125078741836

`A131689(n)/A000005(A000010(A059268(n)))`
-/

namespace A142071.P4332224125078741836
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A131689 n : ℚ) / (A000005 (A000010 (A059268 n).toNat).toNat : ℚ)

end

end A142071.P4332224125078741836

/-!
# A142072: Primes congruent to 19 mod 34.

The programs for A142072, the canonical program `A142072.P2788559626094725930` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142072 has offset 1).

The definition of A142072 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142072.P2788559626094725930

`A140544(n+2)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A142072

/-- `A140544(n+2)` -/
def P2788559626094725930.Spec : Prop :=
  ∀ n, P2788559626094725930.a n = A142072 (n + 1)

theorem P2788559626094725930.correct : P2788559626094725930.Spec := by
  intro n
  simp only [A142072, Nat.add_sub_cancel]

end A142072

/-! ## A142072.P9764801113775801078

`∩[A214890(n+2), A215392(n+2)]`
-/

namespace A142072.P9764801113775801078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214890 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215392 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142072.P9764801113775801078

namespace A142072

/-- `∩[A214890(n+2), A215392(n+2)]` -/
def P9764801113775801078.Spec : Prop :=
  ∀ n, (P9764801113775801078.a n : ℤ) = A142072 (n + 1)

end A142072

/-! ## A142072.P5741596402434092819

`∩[A214890(n+1), A215208(n+2)]`
-/

namespace A142072.P5741596402434092819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214890 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215208 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142072.P5741596402434092819

namespace A142072

/-- `∩[A214890(n+1), A215208(n+2)]` -/
def P5741596402434092819.Spec : Prop :=
  ∀ n, (P5741596402434092819.a n : ℤ) = A142072 (n + 1)

end A142072

/-! ## A142072.P2308208900856155365

`∩[A214890(n+1), A215169(n+2)]`
-/

namespace A142072.P2308208900856155365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214890 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215169 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142072.P2308208900856155365

namespace A142072

/-- `∩[A214890(n+1), A215169(n+2)]` -/
def P2308208900856155365.Spec : Prop :=
  ∀ n, (P2308208900856155365.a n : ℤ) = A142072 (n + 1)

end A142072

/-! ## A142072.P3635726709614375106

`∩[A215169(n+2), A215208(n+2)]`
-/

namespace A142072.P3635726709614375106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215169 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215208 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142072.P3635726709614375106

namespace A142072

/-- `∩[A215169(n+2), A215208(n+2)]` -/
def P3635726709614375106.Spec : Prop :=
  ∀ n, (P3635726709614375106.a n : ℤ) = A142072 (n + 1)

end A142072

/-! ## A142072.P6378075596396342267

`p?[17*(n+1)+2]`
-/

namespace A142072.P6378075596396342267
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17 * (n + 1) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142072.P6378075596396342267

namespace A142072

/-- `p?[17*(n+1)+2]` -/
def P6378075596396342267.Spec : Prop :=
  ∀ n, (P6378075596396342267.a n : ℤ) = A142072 (n + 1)

end A142072

/-! ## A142072.P8132402461007526697

`∩[A215153(n+1), A215169(n+2)]`
-/

namespace A142072.P8132402461007526697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215153 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215169 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142072.P8132402461007526697

namespace A142072

/-- `∩[A215153(n+1), A215169(n+2)]` -/
def P8132402461007526697.Spec : Prop :=
  ∀ n, (P8132402461007526697.a n : ℤ) = A142072 (n + 1)

end A142072

/-! ## A142072.P2370425618784426352

`∩[A215153(n+1), A215208(n+2)]`
-/

namespace A142072.P2370425618784426352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215153 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215208 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142072.P2370425618784426352

namespace A142072

/-- `∩[A215153(n+1), A215208(n+2)]` -/
def P2370425618784426352.Spec : Prop :=
  ∀ n, (P2370425618784426352.a n : ℤ) = A142072 (n + 1)

end A142072

/-! ## A142072.P9135770639693568721

`∩[A215104(n+2), A215208(n+2)]`
-/

namespace A142072.P9135770639693568721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215104 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215208 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142072.P9135770639693568721

namespace A142072

/-- `∩[A215104(n+2), A215208(n+2)]` -/
def P9135770639693568721.Spec : Prop :=
  ∀ n, (P9135770639693568721.a n : ℤ) = A142072 (n + 1)

end A142072

/-! ## A142072.P16955296351193897203

`∩[A214890(n+1), A215212(n+2)]`
-/

namespace A142072.P16955296351193897203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214890 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215212 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142072.P16955296351193897203

namespace A142072

/-- `∩[A214890(n+1), A215212(n+2)]` -/
def P16955296351193897203.Spec : Prop :=
  ∀ n, (P16955296351193897203.a n : ℤ) = A142072 (n + 1)

end A142072

/-! ## A142072.P5539828886351639074

`∩[A215153(n+1), A215212(n+2)]`
-/

namespace A142072.P5539828886351639074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215153 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215212 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142072.P5539828886351639074

namespace A142072

/-- `∩[A215153(n+1), A215212(n+2)]` -/
def P5539828886351639074.Spec : Prop :=
  ∀ n, (P5539828886351639074.a n : ℤ) = A142072 (n + 1)

end A142072

/-! ## A142072.P17537137303537278784

`∩[A214890(n+1), A215273(n+2)]`
-/

namespace A142072.P17537137303537278784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214890 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215273 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142072.P17537137303537278784

namespace A142072

/-- `∩[A214890(n+1), A215273(n+2)]` -/
def P17537137303537278784.Spec : Prop :=
  ∀ n, (P17537137303537278784.a n : ℤ) = A142072 (n + 1)

end A142072

/-! ## A142072.P4356187582426169438

`∩[A215169(n+2), A215281(n+2)]`
-/

namespace A142072.P4356187582426169438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215169 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215281 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142072.P4356187582426169438

namespace A142072

/-- `∩[A215169(n+2), A215281(n+2)]` -/
def P4356187582426169438.Spec : Prop :=
  ∀ n, (P4356187582426169438.a n : ℤ) = A142072 (n + 1)

end A142072

/-! ## A142072.P4344281199783745669

`∩[A215208(n+2), A215273(n+2)]`
-/

namespace A142072.P4344281199783745669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215208 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215273 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142072.P4344281199783745669

namespace A142072

/-- `∩[A215208(n+2), A215273(n+2)]` -/
def P4344281199783745669.Spec : Prop :=
  ∀ n, (P4344281199783745669.a n : ℤ) = A142072 (n + 1)

end A142072

/-! ## A142072.P17221354894259465348

`∩[A215208(n+2), A215281(n+2)]`
-/

namespace A142072.P17221354894259465348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215208 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215281 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142072.P17221354894259465348

namespace A142072

/-- `∩[A215208(n+2), A215281(n+2)]` -/
def P17221354894259465348.Spec : Prop :=
  ∀ n, (P17221354894259465348.a n : ℤ) = A142072 (n + 1)

end A142072

/-! ## A142072.P17267865898667575050

`∩[A214890(n+1), A215277(n+2)]`
-/

namespace A142072.P17267865898667575050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214890 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215277 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142072.P17267865898667575050

namespace A142072

/-- `∩[A214890(n+1), A215277(n+2)]` -/
def P17267865898667575050.Spec : Prop :=
  ∀ n, (P17267865898667575050.a n : ℤ) = A142072 (n + 1)

end A142072

/-! ## A142072.P8491113471912880359

`∩[A215153(n+1), A215277(n+2)]`
-/

namespace A142072.P8491113471912880359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215153 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215277 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142072.P8491113471912880359

namespace A142072

/-- `∩[A215153(n+1), A215277(n+2)]` -/
def P8491113471912880359.Spec : Prop :=
  ∀ n, (P8491113471912880359.a n : ℤ) = A142072 (n + 1)

end A142072

/-! ## A142072.P2681161996934554829

`∩[A215208(n+2), A215277(n+2)]`
-/

namespace A142072.P2681161996934554829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215208 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215277 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142072.P2681161996934554829

namespace A142072

/-- `∩[A215208(n+2), A215277(n+2)]` -/
def P2681161996934554829.Spec : Prop :=
  ∀ n, (P2681161996934554829.a n : ℤ) = A142072 (n + 1)

end A142072

/-! ## A142072.P13518365265548964327

`∩[A214890(n+1), A215425(n+2)]`
-/

namespace A142072.P13518365265548964327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214890 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215425 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142072.P13518365265548964327

namespace A142072

/-- `∩[A214890(n+1), A215425(n+2)]` -/
def P13518365265548964327.Spec : Prop :=
  ∀ n, (P13518365265548964327.a n : ℤ) = A142072 (n + 1)

end A142072

/-! ## A142072.P8392263470566186437

`record[A020639(17*(n+1)+2)]`
-/

namespace A142072.P8392263470566186437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (17 * (n + 1) + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142072.P8392263470566186437

namespace A142072

/-- `record[A020639(17*(n+1)+2)]` -/
def P8392263470566186437.Spec : Prop :=
  ∀ n, P8392263470566186437.a n = A142072 (n + 1)

end A142072

/-!
# A142073: Irregular triangle, T(n, k) = coefficients of p(x, n), where p(x, n) = (1-2*x)^(n+1) * Sum_{j>=0} j^n*(x/(1-x))^j, read by rows.

The programs for A142073, there is no canonical definition to state claims against.
-/

/-! ## A142073.P17747556349867649127

`A291977(lt[A291940(3*n+4), A291923(n+1)])`
-/

namespace A142073.P17747556349867649127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291940 (3 * n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291923 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291977 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A142073.P17747556349867649127

/-!
# A142074: Prime number superposition a(n) = 10*A008578(2n-1) + A008578(2n).

The programs for A142074, the canonical program `A142074.P11769292884091216833` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142074 has offset 1).

The definition of A142074 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008578, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A142074.P11769292884091216833

`10*A008578(2*(n+1)-1)+A008578(2*(n+1))`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A142074

/-- `10*A008578(2*(n+1)-1)+A008578(2*(n+1))` -/
def P11769292884091216833.Spec : Prop :=
  ∀ n, P11769292884091216833.a n = A142074 (n + 1)

theorem P11769292884091216833.correct : P11769292884091216833.Spec := by
  intro n
  simp only [A142074, Nat.add_sub_cancel]

end A142074

/-! ## A142074.P8220263856847945247

`A008578(2*(n+1))+5*A001747(2*n+1)`
-/

namespace A142074.P8220263856847945247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (2 * (n + 1)) + 5 * A001747 (2 * n + 1)

end

end A142074.P8220263856847945247

namespace A142074

/-- `A008578(2*(n+1))+5*A001747(2*n+1)` -/
def P8220263856847945247.Spec : Prop :=
  ∀ n, P8220263856847945247.a n = A142074 (n + 1)

end A142074

/-! ## A142074.P691488948014704840

`A000040(2*n+1)+10*A008578(2*n+1)`
-/

namespace A142074.P691488948014704840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (2 * n + 1) + 10 * A008578 (2 * n + 1)

end

end A142074.P691488948014704840

namespace A142074

/-- `A000040(2*n+1)+10*A008578(2*n+1)` -/
def P691488948014704840.Spec : Prop :=
  ∀ n, P691488948014704840.a n = A142074 (n + 1)

end A142074

/-! ## A142074.P13302261827369135673

`A008578(2*(n+1))+10*A008578(2*n+1)`
-/

namespace A142074.P13302261827369135673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (2 * (n + 1)) + 10 * A008578 (2 * n + 1)

end

end A142074.P13302261827369135673

namespace A142074

/-- `A008578(2*(n+1))+10*A008578(2*n+1)` -/
def P13302261827369135673.Spec : Prop :=
  ∀ n, P13302261827369135673.a n = A142074 (n + 1)

end A142074

/-! ## A142074.P10862447290103924637

`A008592(A008578(2*n+1))+A000040(Δ[n²])`
-/

namespace A142074.P10862447290103924637
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008592 (A008578 (2 * n + 1)).toNat + A000040 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A142074.P10862447290103924637

namespace A142074

/-- `A008592(A008578(2*n+1))+A000040(Δ[n²])` -/
def P10862447290103924637.Spec : Prop :=
  ∀ n, P10862447290103924637.a n = A142074 (n + 1)

end A142074

/-! ## A142074.P9031687420775145772

`A008592(A008578(2*n+1))+A008578(2*(n+1))`
-/

namespace A142074.P9031687420775145772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008592 (A008578 (2 * n + 1)).toNat + A008578 (2 * (n + 1))

end

end A142074.P9031687420775145772

namespace A142074

/-- `A008592(A008578(2*n+1))+A008578(2*(n+1))` -/
def P9031687420775145772.Spec : Prop :=
  ∀ n, P9031687420775145772.a n = A142074 (n + 1)

end A142074

/-! ## A142074.P12609423860392616365

`A008706(A001747(2*n+1))+A000040(2*n+1)`
-/

namespace A142074.P12609423860392616365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 (A001747 (2 * n + 1)).toNat + A000040 (2 * n + 1)

end

end A142074.P12609423860392616365

namespace A142074

/-- `A008706(A001747(2*n+1))+A000040(2*n+1)` -/
def P12609423860392616365.Spec : Prop :=
  ∀ n, P12609423860392616365.a n = A142074 (n + 1)

end A142074

/-!
# A142075: Triangle T(n, k) = 2^(k-1) * E(n, k-1) where E(n,k) are the Eulerian numbers A173018, read by rows.

The programs for A142075, there is no canonical definition to state claims against.
-/

/-! ## A142075.P12891175580138727239

`A156365(n+1)`
-/

namespace A142075.P12891175580138727239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156365 (n + 1)

end

end A142075.P12891175580138727239

/-! ## A142075.P2279507341260784553

`A008292(n+1)*A059268(n)`
-/

namespace A142075.P2279507341260784553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008292 (n + 1) * A059268 n

end

end A142075.P2279507341260784553

/-! ## A142075.P8651112547446542844

`A059268(n)*A173018(comp[A000096(n)])`
-/

namespace A142075.P8651112547446542844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n * A173018 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A142075.P8651112547446542844

/-! ## A142075.P7038111533229395741

`A059268(n)*A173018(lt[0, A173787(n)])`
-/

namespace A142075.P7038111533229395741
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173787 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n * A173018 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A142075.P7038111533229395741

/-! ## A142075.P15042368437617162340

`A059268(n)*A173018(lt[1, A130321(n)])`
-/

namespace A142075.P15042368437617162340
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n * A173018 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A142075.P15042368437617162340

/-! ## A142075.P18179448353128878500

`(A000225(A002262(n))+1)*A008292(n+1)`
-/

namespace A142075.P18179448353128878500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000225 (A002262 n).toNat + 1) * A008292 (n + 1)

end

end A142075.P18179448353128878500

/-! ## A142075.P7544603985395524142

`A059268(n)*A173018(lt[1, A004736(n+1)])`
-/

namespace A142075.P7544603985395524142
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n * A173018 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A142075.P7544603985395524142

/-! ## A142075.P13020010937534277643

`A059268(n)*A173018(A002024(n+1)+n)`
-/

namespace A142075.P13020010937534277643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n * A173018 (A002024 (n + 1) + (n : ℤ)).toNat

end

end A142075.P13020010937534277643

/-! ## A142075.P4111536325139408945

`A059268(n)*A173018(lt[1, A057555(2*(n+1))])`
-/

namespace A142075.P4111536325139408945
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057555 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n * A173018 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A142075.P4111536325139408945

/-! ## A142075.P2513808697031973867

`A008292(n+1)/A004736(n+1)*A130128(n+1)`
-/

namespace A142075.P2513808697031973867
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008292 (n + 1) : ℚ) / (A004736 (n + 1) : ℚ) * (A130128 (n + 1) : ℚ)

end

end A142075.P2513808697031973867

/-! ## A142075.P10784500334641555074

`A257609(n)/A130321(n)`
-/

namespace A142075.P10784500334641555074
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A257609 n : ℚ) / (A130321 n : ℚ)

end

end A142075.P10784500334641555074

/-! ## A142075.P16904429126944047045

`A296229(n+1)/A090988(n+1)`
-/

namespace A142075.P16904429126944047045
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A296229 (n + 1) : ℚ) / (A090988 (n + 1) : ℚ)

end

end A142075.P16904429126944047045

/-! ## A142075.P8874921910775288387

`A008292(n+1)/A156920(n)*A142963(n+1)`
-/

namespace A142075.P8874921910775288387
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008292 (n + 1) : ℚ) / (A156920 n : ℚ) * (A142963 (n + 1) : ℚ)

end

end A142075.P8874921910775288387

/-! ## A142075.P2079299377359059338

`sqrt(A177823(n+1))*A059268(n)`
-/

namespace A142075.P2079299377359059338
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A177823 (n + 1) : ℝ) * (A059268 n : ℝ)

end

end A142075.P2079299377359059338

/-!
# A142076: Primes congruent to 1 mod 35.

The programs for A142076, the canonical program `A142076.P3602534623972657781` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142076 has offset 1).

The definition of A142076 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142076.P3602534623972657781

`∪[A073102(n+1), A140856(n+1)]`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A142076

/-- `∪[A073102(n+1), A140856(n+1)]` -/
def P3602534623972657781.Spec : Prop :=
  ∀ n, (P3602534623972657781.a n : ℤ) = A142076 (n + 1)

theorem P3602534623972657781.correct : P3602534623972657781.Spec := by
  intro n
  simp only [A142076, Nat.add_sub_cancel]

end A142076

/-! ## A142076.P5260389860093734877

`∩[A089720(n+1), A111092(n+1)]`
-/

namespace A142076.P5260389860093734877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089720 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111092 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142076.P5260389860093734877

namespace A142076

/-- `∩[A089720(n+1), A111092(n+1)]` -/
def P5260389860093734877.Spec : Prop :=
  ∀ n, (P5260389860093734877.a n : ℤ) = A142076 (n + 1)

end A142076

/-! ## A142076.P1336820090627400281

`p?[35*n+1]`
-/

namespace A142076.P1336820090627400281
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  35 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142076.P1336820090627400281

namespace A142076

/-- `p?[35*n+1]` -/
def P1336820090627400281.Spec : Prop :=
  ∀ n, (P1336820090627400281.a n : ℤ) = A142076 (n + 1)

end A142076

/-! ## A142076.P16405688684682498828

`or(1, p?[or(1, 35*n)])`
-/

namespace A142076.P16405688684682498828
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (35 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A142076.P16405688684682498828

namespace A142076

/-- `or(1, p?[or(1, 35*n)])` -/
def P16405688684682498828.Spec : Prop :=
  ∀ n, (P16405688684682498828.a n : ℤ) = A142076 (n + 1)

end A142076

/-! ## A142076.P1015988653558499116

`∩[A045465(n+1), A089720(n+1)]`
-/

namespace A142076.P1015988653558499116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045465 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089720 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142076.P1015988653558499116

namespace A142076

/-- `∩[A045465(n+1), A089720(n+1)]` -/
def P1015988653558499116.Spec : Prop :=
  ∀ n, (P1015988653558499116.a n : ℤ) = A142076 (n + 1)

end A142076

/-! ## A142076.P11487448313291103804

`∩[A045465(n+1), A111092(n+1)]`
-/

namespace A142076.P11487448313291103804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045465 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111092 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142076.P11487448313291103804

namespace A142076

/-- `∩[A045465(n+1), A111092(n+1)]` -/
def P11487448313291103804.Spec : Prop :=
  ∀ n, (P11487448313291103804.a n : ℤ) = A142076 (n + 1)

end A142076

/-! ## A142076.P12180881616037325421

`∩[A089720(n+1), A140444(n+1)]`
-/

namespace A142076.P12180881616037325421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089720 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140444 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142076.P12180881616037325421

namespace A142076

/-- `∩[A089720(n+1), A140444(n+1)]` -/
def P12180881616037325421.Spec : Prop :=
  ∀ n, (P12180881616037325421.a n : ℤ) = A142076 (n + 1)

end A142076

/-! ## A142076.P15126750468485100846

`∩[A111092(n+1), A140444(n+1)]`
-/

namespace A142076.P15126750468485100846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111092 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140444 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142076.P15126750468485100846

namespace A142076

/-- `∩[A111092(n+1), A140444(n+1)]` -/
def P15126750468485100846.Spec : Prop :=
  ∀ n, (P15126750468485100846.a n : ℤ) = A142076 (n + 1)

end A142076

/-! ## A142076.P3747387656680443658

`∩[A045465(n+1), A216145(n+1)]`
-/

namespace A142076.P3747387656680443658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045465 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216145 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142076.P3747387656680443658

namespace A142076

/-- `∩[A045465(n+1), A216145(n+1)]` -/
def P3747387656680443658.Spec : Prop :=
  ∀ n, (P3747387656680443658.a n : ℤ) = A142076 (n + 1)

end A142076

/-! ## A142076.P7877376474123500487

`∩[A089720(n+1), A216145(n+1)]`
-/

namespace A142076.P7877376474123500487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089720 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216145 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142076.P7877376474123500487

namespace A142076

/-- `∩[A089720(n+1), A216145(n+1)]` -/
def P7877376474123500487.Spec : Prop :=
  ∀ n, (P7877376474123500487.a n : ℤ) = A142076 (n + 1)

end A142076

/-! ## A142076.P1633555333243576971

`∩[A111092(n+1), A216145(n+1)]`
-/

namespace A142076.P1633555333243576971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111092 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216145 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142076.P1633555333243576971

namespace A142076

/-- `∩[A111092(n+1), A216145(n+1)]` -/
def P1633555333243576971.Spec : Prop :=
  ∀ n, (P1633555333243576971.a n : ℤ) = A142076 (n + 1)

end A142076

/-! ## A142076.P15342844644148532575

`∩[A140444(n+1), A216145(n+1)]`
-/

namespace A142076.P15342844644148532575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140444 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216145 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142076.P15342844644148532575

namespace A142076

/-- `∩[A140444(n+1), A216145(n+1)]` -/
def P15342844644148532575.Spec : Prop :=
  ∀ n, (P15342844644148532575.a n : ℤ) = A142076 (n + 1)

end A142076

/-! ## A142076.P8960666962967950885

`∩[A004619(n+1), A089720(n+1)]`
-/

namespace A142076.P8960666962967950885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004619 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089720 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142076.P8960666962967950885

namespace A142076

/-- `∩[A004619(n+1), A089720(n+1)]` -/
def P8960666962967950885.Spec : Prop :=
  ∀ n, (P8960666962967950885.a n : ℤ) = A142076 (n + 1)

end A142076

/-! ## A142076.P8131640830294902108

`∩[A004619(n+1), A111092(n+1)]`
-/

namespace A142076.P8131640830294902108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004619 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111092 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142076.P8131640830294902108

namespace A142076

/-- `∩[A004619(n+1), A111092(n+1)]` -/
def P8131640830294902108.Spec : Prop :=
  ∀ n, (P8131640830294902108.a n : ℤ) = A142076 (n + 1)

end A142076

/-! ## A142076.P11862326028635110806

`∩[A004619(n+1), A216145(n+1)]`
-/

namespace A142076.P11862326028635110806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004619 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216145 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142076.P11862326028635110806

namespace A142076

/-- `∩[A004619(n+1), A216145(n+1)]` -/
def P11862326028635110806.Spec : Prop :=
  ∀ n, (P11862326028635110806.a n : ℤ) = A142076 (n + 1)

end A142076

/-! ## A142076.P16125198696934251714

`∩[A106881(n+1), A111092(n+1)]`
-/

namespace A142076.P16125198696934251714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106881 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111092 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142076.P16125198696934251714

namespace A142076

/-- `∩[A106881(n+1), A111092(n+1)]` -/
def P16125198696934251714.Spec : Prop :=
  ∀ n, (P16125198696934251714.a n : ℤ) = A142076 (n + 1)

end A142076

/-! ## A142076.P11076777098314482704

`∩[A004619(n+1), A030430(n+1)]`
-/

namespace A142076.P11076777098314482704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004619 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030430 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142076.P11076777098314482704

namespace A142076

/-- `∩[A004619(n+1), A030430(n+1)]` -/
def P11076777098314482704.Spec : Prop :=
  ∀ n, (P11076777098314482704.a n : ℤ) = A142076 (n + 1)

end A142076

/-! ## A142076.P17547189971256577212

`∩[A004619(n+1), A045453(n+1)]`
-/

namespace A142076.P17547189971256577212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004619 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045453 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142076.P17547189971256577212

namespace A142076

/-- `∩[A004619(n+1), A045453(n+1)]` -/
def P17547189971256577212.Spec : Prop :=
  ∀ n, (P17547189971256577212.a n : ℤ) = A142076 (n + 1)

end A142076

/-! ## A142076.P1260021107573407040

`∩[A030430(n+1), A045465(n+1)]`
-/

namespace A142076.P1260021107573407040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030430 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045465 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142076.P1260021107573407040

namespace A142076

/-- `∩[A030430(n+1), A045465(n+1)]` -/
def P1260021107573407040.Spec : Prop :=
  ∀ n, (P1260021107573407040.a n : ℤ) = A142076 (n + 1)

end A142076

/-! ## A142076.P16943612060473095461

`∩[A045453(n+1), A045465(n+1)]`
-/

namespace A142076.P16943612060473095461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045453 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045465 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142076.P16943612060473095461

namespace A142076

/-- `∩[A045453(n+1), A045465(n+1)]` -/
def P16943612060473095461.Spec : Prop :=
  ∀ n, (P16943612060473095461.a n : ℤ) = A142076 (n + 1)

end A142076

/-!
# A142077: Primes congruent to 2 mod 35.

The programs for A142077, the canonical program `A142077.P16338474201965277594` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142077 has offset 1).

The definition of A142077 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3273 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142077.P16338474201965277594

`p?[35*n+2]`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A142077

/-- `p?[35*n+2]` -/
def P16338474201965277594.Spec : Prop :=
  ∀ n, (P16338474201965277594.a n : ℤ) = A142077 (n + 1)

theorem P16338474201965277594.correct : P16338474201965277594.Spec := by
  intro n
  simp only [A142077, Nat.add_sub_cancel]

end A142077

/-! ## A142077.P4696534382500314524

`∩[A045392(n+1), A216145(n+1)]`
-/

namespace A142077.P4696534382500314524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045392 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216145 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142077.P4696534382500314524

namespace A142077

/-- `∩[A045392(n+1), A216145(n+1)]` -/
def P4696534382500314524.Spec : Prop :=
  ∀ n, (P4696534382500314524.a n : ℤ) = A142077 (n + 1)

end A142077

/-! ## A142077.P255328402249804582

`∩[A045383(n+1), A216145(n+1)]`
-/

namespace A142077.P255328402249804582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045383 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216145 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142077.P255328402249804582

namespace A142077

/-- `∩[A045383(n+1), A216145(n+1)]` -/
def P255328402249804582.Spec : Prop :=
  ∀ n, (P255328402249804582.a n : ℤ) = A142077 (n + 1)

end A142077

/-! ## A142077.P9244663099415789333

`∩[A045357(n+1), A045392(n+1)]`
-/

namespace A142077.P9244663099415789333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045357 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045392 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142077.P9244663099415789333

namespace A142077

/-- `∩[A045357(n+1), A045392(n+1)]` -/
def P9244663099415789333.Spec : Prop :=
  ∀ n, (P9244663099415789333.a n : ℤ) = A142077 (n + 1)

end A142077

/-! ## A142077.P2162312022265284217

`∩[A045380(n+1), A045392(n+1)]`
-/

namespace A142077.P2162312022265284217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045380 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045392 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142077.P2162312022265284217

namespace A142077

/-- `∩[A045380(n+1), A045392(n+1)]` -/
def P2162312022265284217.Spec : Prop :=
  ∀ n, (P2162312022265284217.a n : ℤ) = A142077 (n + 1)

end A142077

/-! ## A142077.P17040675247580971394

`∩[A045357(n+1), A216145(n+1)]`
-/

namespace A142077.P17040675247580971394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045357 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216145 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142077.P17040675247580971394

namespace A142077

/-- `∩[A045357(n+1), A216145(n+1)]` -/
def P17040675247580971394.Spec : Prop :=
  ∀ n, (P17040675247580971394.a n : ℤ) = A142077 (n + 1)

end A142077

/-! ## A142077.P851272718523636786

`∩[A045380(n+1), A216145(n+1)]`
-/

namespace A142077.P851272718523636786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045380 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216145 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142077.P851272718523636786

namespace A142077

/-- `∩[A045380(n+1), A216145(n+1)]` -/
def P851272718523636786.Spec : Prop :=
  ∀ n, (P851272718523636786.a n : ℤ) = A142077 (n + 1)

end A142077

/-! ## A142077.P13476361157176788533

`∩[A045359(n+1), A216145(n+1)]`
-/

namespace A142077.P13476361157176788533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045359 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216145 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142077.P13476361157176788533

namespace A142077

/-- `∩[A045359(n+1), A216145(n+1)]` -/
def P13476361157176788533.Spec : Prop :=
  ∀ n, (P13476361157176788533.a n : ℤ) = A142077 (n + 1)

end A142077

/-! ## A142077.P4635768059767011391

`∩[A045368(n+1), A216145(n+1)]`
-/

namespace A142077.P4635768059767011391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045368 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216145 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142077.P4635768059767011391

namespace A142077

/-- `∩[A045368(n+1), A216145(n+1)]` -/
def P4635768059767011391.Spec : Prop :=
  ∀ n, (P4635768059767011391.a n : ℤ) = A142077 (n + 1)

end A142077

/-! ## A142077.P16190210290014678919

`∩[A045377(n+1), A216145(n+1)]`
-/

namespace A142077.P16190210290014678919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045377 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216145 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142077.P16190210290014678919

namespace A142077

/-- `∩[A045377(n+1), A216145(n+1)]` -/
def P16190210290014678919.Spec : Prop :=
  ∀ n, (P16190210290014678919.a n : ℤ) = A142077 (n + 1)

end A142077

/-! ## A142077.P15304728182881806597

`∩[A045389(n+1), A216145(n+1)]`
-/

namespace A142077.P15304728182881806597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045389 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216145 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142077.P15304728182881806597

namespace A142077

/-- `∩[A045389(n+1), A216145(n+1)]` -/
def P15304728182881806597.Spec : Prop :=
  ∀ n, (P15304728182881806597.a n : ℤ) = A142077 (n + 1)

end A142077

/-! ## A142077.P8690187888442589452

`∩[A004620(n+1), A045357(n+1)]`
-/

namespace A142077.P8690187888442589452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004620 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045357 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142077.P8690187888442589452

namespace A142077

/-- `∩[A004620(n+1), A045357(n+1)]` -/
def P8690187888442589452.Spec : Prop :=
  ∀ n, (P8690187888442589452.a n : ℤ) = A142077 (n + 1)

end A142077

/-! ## A142077.P1162473897587567449

`∩[A004620(n+1), A045380(n+1)]`
-/

namespace A142077.P1162473897587567449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004620 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045380 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142077.P1162473897587567449

namespace A142077

/-- `∩[A004620(n+1), A045380(n+1)]` -/
def P1162473897587567449.Spec : Prop :=
  ∀ n, (P1162473897587567449.a n : ℤ) = A142077 (n + 1)

end A142077

/-! ## A142077.P15095656370373179266

`∩[A004620(n+1), A216145(n+1)]`
-/

namespace A142077.P15095656370373179266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004620 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216145 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142077.P15095656370373179266

namespace A142077

/-- `∩[A004620(n+1), A216145(n+1)]` -/
def P15095656370373179266.Spec : Prop :=
  ∀ n, (P15095656370373179266.a n : ℤ) = A142077 (n + 1)

end A142077

/-! ## A142077.P12055457839996613439

`∩[A045354(n+1), A216145(n+1)]`
-/

namespace A142077.P12055457839996613439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045354 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216145 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142077.P12055457839996613439

namespace A142077

/-- `∩[A045354(n+1), A216145(n+1)]` -/
def P12055457839996613439.Spec : Prop :=
  ∀ n, (P12055457839996613439.a n : ℤ) = A142077 (n + 1)

end A142077

/-! ## A142077.P18365086495698481099

`∩[A045365(n+1), A216145(n+1)]`
-/

namespace A142077.P18365086495698481099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045365 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216145 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142077.P18365086495698481099

namespace A142077

/-- `∩[A045365(n+1), A216145(n+1)]` -/
def P18365086495698481099.Spec : Prop :=
  ∀ n, (P18365086495698481099.a n : ℤ) = A142077 (n + 1)

end A142077

/-! ## A142077.P5740869961307793007

`∩[A191068(n+1), A216145(n+1)]`
-/

namespace A142077.P5740869961307793007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191068 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216145 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142077.P5740869961307793007

namespace A142077

/-- `∩[A191068(n+1), A216145(n+1)]` -/
def P5740869961307793007.Spec : Prop :=
  ∀ n, (P5740869961307793007.a n : ℤ) = A142077 (n + 1)

end A142077

/-! ## A142077.P6366711678239600756

`∩[A004616(n+1), A045392(n+1)]`
-/

namespace A142077.P6366711678239600756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004616 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045392 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142077.P6366711678239600756

namespace A142077

/-- `∩[A004616(n+1), A045392(n+1)]` -/
def P6366711678239600756.Spec : Prop :=
  ∀ n, (P6366711678239600756.a n : ℤ) = A142077 (n + 1)

end A142077

/-! ## A142077.P1459019187996569884

`∩[A004616(n+1), A216145(n+1)]`
-/

namespace A142077.P1459019187996569884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004616 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216145 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142077.P1459019187996569884

namespace A142077

/-- `∩[A004616(n+1), A216145(n+1)]` -/
def P1459019187996569884.Spec : Prop :=
  ∀ n, (P1459019187996569884.a n : ℤ) = A142077 (n + 1)

end A142077

/-! ## A142077.P15051487217392222419

`record[A006530(35*n+2)]`
-/

namespace A142077.P15051487217392222419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (35 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142077.P15051487217392222419

namespace A142077

/-- `record[A006530(35*n+2)]` -/
def P15051487217392222419.Spec : Prop :=
  ∀ n, P15051487217392222419.a n = A142077 (n + 1)

end A142077

/-!
# A142078: Primes congruent to 3 mod 35.

The programs for A142078, the canonical program `A142078.P18378913914792671546` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142078 has offset 1).

The definition of A142078 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3290 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142078.P18378913914792671546

`p?[35*n+3]`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A142078

/-- `p?[35*n+3]` -/
def P18378913914792671546.Spec : Prop :=
  ∀ n, (P18378913914792671546.a n : ℤ) = A142078 (n + 1)

theorem P18378913914792671546.correct : P18378913914792671546.Spec := by
  intro n
  simp only [A142078, Nat.add_sub_cancel]

end A142078

/-! ## A142078.P8192719562264854360

`∩[A045425(n+1), A216145(n+1)]`
-/

namespace A142078.P8192719562264854360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045425 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216145 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142078.P8192719562264854360

namespace A142078

/-- `∩[A045425(n+1), A216145(n+1)]` -/
def P8192719562264854360.Spec : Prop :=
  ∀ n, (P8192719562264854360.a n : ℤ) = A142078 (n + 1)

end A142078

/-! ## A142078.P7385018736267416527

`∩[A045437(n+1), A216145(n+1)]`
-/

namespace A142078.P7385018736267416527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045437 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216145 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142078.P7385018736267416527

namespace A142078

/-- `∩[A045437(n+1), A216145(n+1)]` -/
def P7385018736267416527.Spec : Prop :=
  ∀ n, (P7385018736267416527.a n : ℤ) = A142078 (n + 1)

end A142078

/-! ## A142078.P11306679507827941628

`∩[A030431(n+1), A045425(n+1)]`
-/

namespace A142078.P11306679507827941628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030431 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045425 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142078.P11306679507827941628

namespace A142078

/-- `∩[A030431(n+1), A045425(n+1)]` -/
def P11306679507827941628.Spec : Prop :=
  ∀ n, (P11306679507827941628.a n : ℤ) = A142078 (n + 1)

end A142078

/-! ## A142078.P9973444303744565612

`∩[A030431(n+1), A045437(n+1)]`
-/

namespace A142078.P9973444303744565612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030431 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045437 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142078.P9973444303744565612

namespace A142078

/-- `∩[A030431(n+1), A045437(n+1)]` -/
def P9973444303744565612.Spec : Prop :=
  ∀ n, (P9973444303744565612.a n : ℤ) = A142078 (n + 1)

end A142078

/-! ## A142078.P12429572778782364784

`∩[A045414(n+1), A045425(n+1)]`
-/

namespace A142078.P12429572778782364784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045414 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045425 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142078.P12429572778782364784

namespace A142078

/-- `∩[A045414(n+1), A045425(n+1)]` -/
def P12429572778782364784.Spec : Prop :=
  ∀ n, (P12429572778782364784.a n : ℤ) = A142078 (n + 1)

end A142078

/-! ## A142078.P3093710754557611087

`∩[A045414(n+1), A045437(n+1)]`
-/

namespace A142078.P3093710754557611087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045414 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045437 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142078.P3093710754557611087

namespace A142078

/-- `∩[A045414(n+1), A045437(n+1)]` -/
def P3093710754557611087.Spec : Prop :=
  ∀ n, (P3093710754557611087.a n : ℤ) = A142078 (n + 1)

end A142078

/-! ## A142078.P5543970587683647233

`∩[A030431(n+1), A216145(n+1)]`
-/

namespace A142078.P5543970587683647233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030431 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216145 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142078.P5543970587683647233

namespace A142078

/-- `∩[A030431(n+1), A216145(n+1)]` -/
def P5543970587683647233.Spec : Prop :=
  ∀ n, (P5543970587683647233.a n : ℤ) = A142078 (n + 1)

end A142078

/-! ## A142078.P12297509539607505169

`∩[A045414(n+1), A216145(n+1)]`
-/

namespace A142078.P12297509539607505169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045414 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216145 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142078.P12297509539607505169

namespace A142078

/-- `∩[A045414(n+1), A216145(n+1)]` -/
def P12297509539607505169.Spec : Prop :=
  ∀ n, (P12297509539607505169.a n : ℤ) = A142078 (n + 1)

end A142078

/-! ## A142078.P4947296168069185511

`∩[A106878(n+1), A216145(n+1)]`
-/

namespace A142078.P4947296168069185511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106878 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216145 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142078.P4947296168069185511

namespace A142078

/-- `∩[A106878(n+1), A216145(n+1)]` -/
def P4947296168069185511.Spec : Prop :=
  ∀ n, (P4947296168069185511.a n : ℤ) = A142078 (n + 1)

end A142078

/-! ## A142078.P3781735448917358384

`∩[A004621(n+1), A030431(n+1)]`
-/

namespace A142078.P3781735448917358384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004621 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030431 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142078.P3781735448917358384

namespace A142078

/-- `∩[A004621(n+1), A030431(n+1)]` -/
def P3781735448917358384.Spec : Prop :=
  ∀ n, (P3781735448917358384.a n : ℤ) = A142078 (n + 1)

end A142078

/-! ## A142078.P18251935133588059064

`∩[A004621(n+1), A045414(n+1)]`
-/

namespace A142078.P18251935133588059064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004621 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045414 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142078.P18251935133588059064

namespace A142078

/-- `∩[A004621(n+1), A045414(n+1)]` -/
def P18251935133588059064.Spec : Prop :=
  ∀ n, (P18251935133588059064.a n : ℤ) = A142078 (n + 1)

end A142078

/-! ## A142078.P16182020725201511359

`∩[A004621(n+1), A216145(n+1)]`
-/

namespace A142078.P16182020725201511359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004621 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216145 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142078.P16182020725201511359

namespace A142078

/-- `∩[A004621(n+1), A216145(n+1)]` -/
def P16182020725201511359.Spec : Prop :=
  ∀ n, (P16182020725201511359.a n : ℤ) = A142078 (n + 1)

end A142078

/-! ## A142078.P8289925011355576218

`∩[A045401(n+1), A216145(n+1)]`
-/

namespace A142078.P8289925011355576218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045401 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216145 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142078.P8289925011355576218

namespace A142078

/-- `∩[A045401(n+1), A216145(n+1)]` -/
def P8289925011355576218.Spec : Prop :=
  ∀ n, (P8289925011355576218.a n : ℤ) = A142078 (n + 1)

end A142078

/-! ## A142078.P3468859657320413988

`∩[A045416(n+1), A216145(n+1)]`
-/

namespace A142078.P3468859657320413988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045416 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216145 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142078.P3468859657320413988

namespace A142078

/-- `∩[A045416(n+1), A216145(n+1)]` -/
def P3468859657320413988.Spec : Prop :=
  ∀ n, (P3468859657320413988.a n : ℤ) = A142078 (n + 1)

end A142078

/-! ## A142078.P243534108920231335

`∩[A045423(n+1), A216145(n+1)]`
-/

namespace A142078.P243534108920231335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045423 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216145 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142078.P243534108920231335

namespace A142078

/-- `∩[A045423(n+1), A216145(n+1)]` -/
def P243534108920231335.Spec : Prop :=
  ∀ n, (P243534108920231335.a n : ℤ) = A142078 (n + 1)

end A142078

/-! ## A142078.P10539441302597021100

`∩[A045434(n+1), A216145(n+1)]`
-/

namespace A142078.P10539441302597021100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045434 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216145 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142078.P10539441302597021100

namespace A142078

/-- `∩[A045434(n+1), A216145(n+1)]` -/
def P10539441302597021100.Spec : Prop :=
  ∀ n, (P10539441302597021100.a n : ℤ) = A142078 (n + 1)

end A142078

/-! ## A142078.P3151163661629320091

`∩[A003625(n+1), A216145(n+1)]`
-/

namespace A142078.P3151163661629320091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003625 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216145 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142078.P3151163661629320091

namespace A142078

/-- `∩[A003625(n+1), A216145(n+1)]` -/
def P3151163661629320091.Spec : Prop :=
  ∀ n, (P3151163661629320091.a n : ℤ) = A142078 (n + 1)

end A142078

/-! ## A142078.P11090200263415018126

`∩[A045399(n+1), A216145(n+1)]`
-/

namespace A142078.P11090200263415018126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045399 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216145 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142078.P11090200263415018126

namespace A142078

/-- `∩[A045399(n+1), A216145(n+1)]` -/
def P11090200263415018126.Spec : Prop :=
  ∀ n, (P11090200263415018126.a n : ℤ) = A142078 (n + 1)

end A142078

/-! ## A142078.P800678559145528117

`∩[A004617(n+1), A045425(n+1)]`
-/

namespace A142078.P800678559145528117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004617 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045425 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142078.P800678559145528117

namespace A142078

/-- `∩[A004617(n+1), A045425(n+1)]` -/
def P800678559145528117.Spec : Prop :=
  ∀ n, (P800678559145528117.a n : ℤ) = A142078 (n + 1)

end A142078

/-!
# A142079: Primes congruent to 4 mod 35.

The programs for A142079, the canonical program `A142079.P13141199653635146576` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142079 has offset 1).

The definition of A142079 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3261 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142079.P13141199653635146576

`p?[35*n+4]`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A142079

/-- `p?[35*n+4]` -/
def P13141199653635146576.Spec : Prop :=
  ∀ n, (P13141199653635146576.a n : ℤ) = A142079 (n + 1)

theorem P13141199653635146576.correct : P13141199653635146576.Spec := by
  intro n
  simp only [A142079, Nat.add_sub_cancel]

end A142079

/-! ## A142079.P2087219498985817306

`∩[A045462(n+1), A216145(n+1)]`
-/

namespace A142079.P2087219498985817306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045462 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216145 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142079.P2087219498985817306

namespace A142079

/-- `∩[A045462(n+1), A216145(n+1)]` -/
def P2087219498985817306.Spec : Prop :=
  ∀ n, (P2087219498985817306.a n : ℤ) = A142079 (n + 1)

end A142079

/-! ## A142079.P5971682793320540269

`∩[A045471(n+1), A216145(n+1)]`
-/

namespace A142079.P5971682793320540269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045471 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216145 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142079.P5971682793320540269

namespace A142079

/-- `∩[A045471(n+1), A216145(n+1)]` -/
def P5971682793320540269.Spec : Prop :=
  ∀ n, (P5971682793320540269.a n : ℤ) = A142079 (n + 1)

end A142079

/-! ## A142079.P17946567116195553525

`∩[A004622(n+1), A216145(n+1)]`
-/

namespace A142079.P17946567116195553525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004622 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216145 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142079.P17946567116195553525

namespace A142079

/-- `∩[A004622(n+1), A216145(n+1)]` -/
def P17946567116195553525.Spec : Prop :=
  ∀ n, (P17946567116195553525.a n : ℤ) = A142079 (n + 1)

end A142079

/-! ## A142079.P3456582110392178644

`A000027(p?[A053743(n)-A139249(n+1)])`
-/

namespace A142079.P3456582110392178644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053743 n - A139249 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142079.P3456582110392178644

namespace A142079

/-- `A000027(p?[A053743(n)-A139249(n+1)])` -/
def P3456582110392178644.Spec : Prop :=
  ∀ n, P3456582110392178644.a n = A142079 (n + 1)

end A142079

/-! ## A142079.P16318920625696321117

`∩[A004622(n+1), A030433(n+1)]`
-/

namespace A142079.P16318920625696321117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004622 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030433 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142079.P16318920625696321117

namespace A142079

/-- `∩[A004622(n+1), A030433(n+1)]` -/
def P16318920625696321117.Spec : Prop :=
  ∀ n, (P16318920625696321117.a n : ℤ) = A142079 (n + 1)

end A142079

/-! ## A142079.P1196144028182803308

`∩[A004622(n+1), A045457(n+1)]`
-/

namespace A142079.P1196144028182803308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004622 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045457 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142079.P1196144028182803308

namespace A142079

/-- `∩[A004622(n+1), A045457(n+1)]` -/
def P1196144028182803308.Spec : Prop :=
  ∀ n, (P1196144028182803308.a n : ℤ) = A142079 (n + 1)

end A142079

/-! ## A142079.P14466332856032035719

`∩[A030433(n+1), A045462(n+1)]`
-/

namespace A142079.P14466332856032035719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030433 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045462 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142079.P14466332856032035719

namespace A142079

/-- `∩[A030433(n+1), A045462(n+1)]` -/
def P14466332856032035719.Spec : Prop :=
  ∀ n, (P14466332856032035719.a n : ℤ) = A142079 (n + 1)

end A142079

/-! ## A142079.P2217310568433899019

`∩[A030433(n+1), A045471(n+1)]`
-/

namespace A142079.P2217310568433899019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030433 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045471 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142079.P2217310568433899019

namespace A142079

/-- `∩[A030433(n+1), A045471(n+1)]` -/
def P2217310568433899019.Spec : Prop :=
  ∀ n, (P2217310568433899019.a n : ℤ) = A142079 (n + 1)

end A142079

/-! ## A142079.P3767622101301231694

`∩[A045457(n+1), A045462(n+1)]`
-/

namespace A142079.P3767622101301231694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045457 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045462 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142079.P3767622101301231694

namespace A142079

/-- `∩[A045457(n+1), A045462(n+1)]` -/
def P3767622101301231694.Spec : Prop :=
  ∀ n, (P3767622101301231694.a n : ℤ) = A142079 (n + 1)

end A142079

/-! ## A142079.P7210010671893748984

`∩[A045457(n+1), A045471(n+1)]`
-/

namespace A142079.P7210010671893748984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045457 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045471 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142079.P7210010671893748984

namespace A142079

/-- `∩[A045457(n+1), A045471(n+1)]` -/
def P7210010671893748984.Spec : Prop :=
  ∀ n, (P7210010671893748984.a n : ℤ) = A142079 (n + 1)

end A142079

/-! ## A142079.P1955519618103818617

`∩[A030433(n+1), A216145(n+1)]`
-/

namespace A142079.P1955519618103818617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030433 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216145 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142079.P1955519618103818617

namespace A142079

/-- `∩[A030433(n+1), A216145(n+1)]` -/
def P1955519618103818617.Spec : Prop :=
  ∀ n, (P1955519618103818617.a n : ℤ) = A142079 (n + 1)

end A142079

/-! ## A142079.P11037336195844832375

`∩[A045457(n+1), A216145(n+1)]`
-/

namespace A142079.P11037336195844832375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045457 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216145 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142079.P11037336195844832375

namespace A142079

/-- `∩[A045457(n+1), A216145(n+1)]` -/
def P11037336195844832375.Spec : Prop :=
  ∀ n, (P11037336195844832375.a n : ℤ) = A142079 (n + 1)

end A142079

/-! ## A142079.P9692432104261844746

`∩[A045462(n+1), A327753(n+1)]`
-/

namespace A142079.P9692432104261844746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045462 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327753 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142079.P9692432104261844746

namespace A142079

/-- `∩[A045462(n+1), A327753(n+1)]` -/
def P9692432104261844746.Spec : Prop :=
  ∀ n, (P9692432104261844746.a n : ℤ) = A142079 (n + 1)

end A142079

/-! ## A142079.P2554201169655753112

`∩[A045471(n+1), A327753(n+1)]`
-/

namespace A142079.P2554201169655753112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045471 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327753 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142079.P2554201169655753112

namespace A142079

/-- `∩[A045471(n+1), A327753(n+1)]` -/
def P2554201169655753112.Spec : Prop :=
  ∀ n, (P2554201169655753112.a n : ℤ) = A142079 (n + 1)

end A142079

/-! ## A142079.P16873471835233879554

`∩[A216145(n+1), A327753(n+1)]`
-/

namespace A142079.P16873471835233879554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327753 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142079.P16873471835233879554

namespace A142079

/-- `∩[A216145(n+1), A327753(n+1)]` -/
def P16873471835233879554.Spec : Prop :=
  ∀ n, (P16873471835233879554.a n : ℤ) = A142079 (n + 1)

end A142079

/-! ## A142079.P8044538526053945043

`∩[A004618(n+1), A045462(n+1)]`
-/

namespace A142079.P8044538526053945043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004618 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045462 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142079.P8044538526053945043

namespace A142079

/-- `∩[A004618(n+1), A045462(n+1)]` -/
def P8044538526053945043.Spec : Prop :=
  ∀ n, (P8044538526053945043.a n : ℤ) = A142079 (n + 1)

end A142079

/-! ## A142079.P4090324014348588073

`∩[A004618(n+1), A045471(n+1)]`
-/

namespace A142079.P4090324014348588073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004618 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045471 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142079.P4090324014348588073

namespace A142079

/-- `∩[A004618(n+1), A045471(n+1)]` -/
def P4090324014348588073.Spec : Prop :=
  ∀ n, (P4090324014348588073.a n : ℤ) = A142079 (n + 1)

end A142079

/-! ## A142079.P8566907741409323842

`∩[A004618(n+1), A216145(n+1)]`
-/

namespace A142079.P8566907741409323842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004618 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216145 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142079.P8566907741409323842

namespace A142079

/-- `∩[A004618(n+1), A216145(n+1)]` -/
def P8566907741409323842.Spec : Prop :=
  ∀ n, (P8566907741409323842.a n : ℤ) = A142079 (n + 1)

end A142079

/-! ## A142079.P14816617968727216410

`∩[A045441(n+1), A216145(n+1)]`
-/

namespace A142079.P14816617968727216410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045441 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216145 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142079.P14816617968727216410

namespace A142079

/-- `∩[A045441(n+1), A216145(n+1)]` -/
def P14816617968727216410.Spec : Prop :=
  ∀ n, (P14816617968727216410.a n : ℤ) = A142079 (n + 1)

end A142079

/-!
# A142080: Primes congruent to 6 mod 35.

The programs for A142080, the canonical program `A142080.P15792423998821649615` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142080 has offset 1).

The definition of A142080 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3267 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142080.P15792423998821649615

`p?[35*n+6]`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A142080

/-- `p?[35*n+6]` -/
def P15792423998821649615.Spec : Prop :=
  ∀ n, (P15792423998821649615.a n : ℤ) = A142080 (n + 1)

theorem P15792423998821649615.correct : P15792423998821649615.Spec := by
  intro n
  simp only [A142080, Nat.add_sub_cancel]

end A142080

/-! ## A142080.P652574649659722690

`∩[A045464(n+1), A089721(n+1)]`
-/

namespace A142080.P652574649659722690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045464 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089721 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142080.P652574649659722690

namespace A142080

/-- `∩[A045464(n+1), A089721(n+1)]` -/
def P652574649659722690.Spec : Prop :=
  ∀ n, (P652574649659722690.a n : ℤ) = A142080 (n + 1)

end A142080

/-! ## A142080.P13515731138610568948

`∩[A045473(n+1), A089721(n+1)]`
-/

namespace A142080.P13515731138610568948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045473 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089721 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142080.P13515731138610568948

namespace A142080

/-- `∩[A045473(n+1), A089721(n+1)]` -/
def P13515731138610568948.Spec : Prop :=
  ∀ n, (P13515731138610568948.a n : ℤ) = A142080 (n + 1)

end A142080

/-! ## A142080.P5973351983454286831

`∩[A004624(n+1), A089721(n+1)]`
-/

namespace A142080.P5973351983454286831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004624 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089721 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142080.P5973351983454286831

namespace A142080

/-- `∩[A004624(n+1), A089721(n+1)]` -/
def P5973351983454286831.Spec : Prop :=
  ∀ n, (P5973351983454286831.a n : ℤ) = A142080 (n + 1)

end A142080

/-! ## A142080.P8020647560239490567

`∩[A004624(n+1), A030430(n+1)]`
-/

namespace A142080.P8020647560239490567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004624 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030430 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142080.P8020647560239490567

namespace A142080

/-- `∩[A004624(n+1), A030430(n+1)]` -/
def P8020647560239490567.Spec : Prop :=
  ∀ n, (P8020647560239490567.a n : ℤ) = A142080 (n + 1)

end A142080

/-! ## A142080.P7474729623491903259

`∩[A030430(n+1), A045464(n+1)]`
-/

namespace A142080.P7474729623491903259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030430 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045464 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142080.P7474729623491903259

namespace A142080

/-- `∩[A030430(n+1), A045464(n+1)]` -/
def P7474729623491903259.Spec : Prop :=
  ∀ n, (P7474729623491903259.a n : ℤ) = A142080 (n + 1)

end A142080

/-! ## A142080.P14581924144712047529

`∩[A030430(n+1), A045473(n+1)]`
-/

namespace A142080.P14581924144712047529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030430 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045473 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142080.P14581924144712047529

namespace A142080

/-- `∩[A030430(n+1), A045473(n+1)]` -/
def P14581924144712047529.Spec : Prop :=
  ∀ n, (P14581924144712047529.a n : ℤ) = A142080 (n + 1)

end A142080

/-! ## A142080.P17440652635242624795

`∩[A004624(n+1), A045453(n+1)]`
-/

namespace A142080.P17440652635242624795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004624 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045453 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142080.P17440652635242624795

namespace A142080

/-- `∩[A004624(n+1), A045453(n+1)]` -/
def P17440652635242624795.Spec : Prop :=
  ∀ n, (P17440652635242624795.a n : ℤ) = A142080 (n + 1)

end A142080

/-! ## A142080.P14362249527642082415

`∩[A045453(n+1), A045464(n+1)]`
-/

namespace A142080.P14362249527642082415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045453 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045464 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142080.P14362249527642082415

namespace A142080

/-- `∩[A045453(n+1), A045464(n+1)]` -/
def P14362249527642082415.Spec : Prop :=
  ∀ n, (P14362249527642082415.a n : ℤ) = A142080 (n + 1)

end A142080

/-! ## A142080.P18051254146663033542

`∩[A045453(n+1), A045473(n+1)]`
-/

namespace A142080.P18051254146663033542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045453 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045473 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142080.P18051254146663033542

namespace A142080

/-- `∩[A045453(n+1), A045473(n+1)]` -/
def P18051254146663033542.Spec : Prop :=
  ∀ n, (P18051254146663033542.a n : ℤ) = A142080 (n + 1)

end A142080

/-! ## A142080.P427968795645651739

`∩[A004624(n+1), A090756(n+1)]`
-/

namespace A142080.P427968795645651739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004624 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090756 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142080.P427968795645651739

namespace A142080

/-- `∩[A004624(n+1), A090756(n+1)]` -/
def P427968795645651739.Spec : Prop :=
  ∀ n, (P427968795645651739.a n : ℤ) = A142080 (n + 1)

end A142080

/-! ## A142080.P16504717113751521280

`∩[A045464(n+1), A090756(n+1)]`
-/

namespace A142080.P16504717113751521280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045464 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090756 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142080.P16504717113751521280

namespace A142080

/-- `∩[A045464(n+1), A090756(n+1)]` -/
def P16504717113751521280.Spec : Prop :=
  ∀ n, (P16504717113751521280.a n : ℤ) = A142080 (n + 1)

end A142080

/-! ## A142080.P2561808014692394368

`∩[A045473(n+1), A090756(n+1)]`
-/

namespace A142080.P2561808014692394368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045473 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090756 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142080.P2561808014692394368

namespace A142080

/-- `∩[A045473(n+1), A090756(n+1)]` -/
def P2561808014692394368.Spec : Prop :=
  ∀ n, (P2561808014692394368.a n : ℤ) = A142080 (n + 1)

end A142080

/-! ## A142080.P3200203144116883372

`∩[A045464(n+1), A327752(n+1)]`
-/

namespace A142080.P3200203144116883372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045464 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327752 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142080.P3200203144116883372

namespace A142080

/-- `∩[A045464(n+1), A327752(n+1)]` -/
def P3200203144116883372.Spec : Prop :=
  ∀ n, (P3200203144116883372.a n : ℤ) = A142080 (n + 1)

end A142080

/-! ## A142080.P13316980252805925093

`∩[A045473(n+1), A327752(n+1)]`
-/

namespace A142080.P13316980252805925093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045473 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327752 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142080.P13316980252805925093

namespace A142080

/-- `∩[A045473(n+1), A327752(n+1)]` -/
def P13316980252805925093.Spec : Prop :=
  ∀ n, (P13316980252805925093.a n : ℤ) = A142080 (n + 1)

end A142080

/-! ## A142080.P11247066790439953531

`∩[A045463(n+1), A089721(n+1)]`
-/

namespace A142080.P11247066790439953531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045463 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089721 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142080.P11247066790439953531

namespace A142080

/-- `∩[A045463(n+1), A089721(n+1)]` -/
def P11247066790439953531.Spec : Prop :=
  ∀ n, (P11247066790439953531.a n : ℤ) = A142080 (n + 1)

end A142080

/-! ## A142080.P17588006507130180754

`∩[A045472(n+1), A089721(n+1)]`
-/

namespace A142080.P17588006507130180754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045472 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089721 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142080.P17588006507130180754

namespace A142080

/-- `∩[A045472(n+1), A089721(n+1)]` -/
def P17588006507130180754.Spec : Prop :=
  ∀ n, (P17588006507130180754.a n : ℤ) = A142080 (n + 1)

end A142080

/-! ## A142080.P13367342107313688859

`∩[A045460(n+1), A089721(n+1)]`
-/

namespace A142080.P13367342107313688859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045460 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089721 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142080.P13367342107313688859

namespace A142080

/-- `∩[A045460(n+1), A089721(n+1)]` -/
def P13367342107313688859.Spec : Prop :=
  ∀ n, (P13367342107313688859.a n : ℤ) = A142080 (n + 1)

end A142080

/-! ## A142080.P9185717013991836546

`∩[A045467(n+1), A089721(n+1)]`
-/

namespace A142080.P9185717013991836546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045467 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089721 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142080.P9185717013991836546

namespace A142080

/-- `∩[A045467(n+1), A089721(n+1)]` -/
def P9185717013991836546.Spec : Prop :=
  ∀ n, (P9185717013991836546.a n : ℤ) = A142080 (n + 1)

end A142080

/-! ## A142080.P12708760703261880313

`∩[A004615(n+1), A045464(n+1)]`
-/

namespace A142080.P12708760703261880313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004615 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045464 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142080.P12708760703261880313

namespace A142080

/-- `∩[A004615(n+1), A045464(n+1)]` -/
def P12708760703261880313.Spec : Prop :=
  ∀ n, (P12708760703261880313.a n : ℤ) = A142080 (n + 1)

end A142080

/-!
# A142081: Primes congruent to 8 mod 35.

The programs for A142081, the canonical program `A142081.P12117061539707555917` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142081 has offset 1).

The definition of A142081 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3261 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142081.P12117061539707555917

`p?[35*n+8]`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A142081

/-- `p?[35*n+8]` -/
def P12117061539707555917.Spec : Prop :=
  ∀ n, (P12117061539707555917.a n : ℤ) = A142081 (n + 1)

theorem P12117061539707555917.correct : P12117061539707555917.Spec := by
  intro n
  simp only [A142081, Nat.add_sub_cancel]

end A142081

/-! ## A142081.P2421720126843648774

`or(1, p?[a(n-1)+35])` with `a(0)=8`
-/

namespace A142081.P2421720126843648774
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [8] fun n f1 =>
  f1 (n - 1) + 35

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A142081.P2421720126843648774

namespace A142081

/-- `or(1, p?[a(n-1)+35])` -/
def P2421720126843648774.Spec : Prop :=
  ∀ n, (P2421720126843648774.a n : ℤ) = A142081 (n + 1)

end A142081

/-! ## A142081.P11839119962537991122

`∩[A004619(n+1), A030431(n+1)]`
-/

namespace A142081.P11839119962537991122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004619 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030431 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142081.P11839119962537991122

namespace A142081

/-- `∩[A004619(n+1), A030431(n+1)]` -/
def P11839119962537991122.Spec : Prop :=
  ∀ n, (P11839119962537991122.a n : ℤ) = A142081 (n + 1)

end A142081

/-! ## A142081.P9051844990835754229

`∩[A004619(n+1), A045414(n+1)]`
-/

namespace A142081.P9051844990835754229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004619 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045414 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142081.P9051844990835754229

namespace A142081

/-- `∩[A004619(n+1), A045414(n+1)]` -/
def P9051844990835754229.Spec : Prop :=
  ∀ n, (P9051844990835754229.a n : ℤ) = A142081 (n + 1)

end A142081

/-! ## A142081.P1879951720851072556

`∩[A030431(n+1), A045465(n+1)]`
-/

namespace A142081.P1879951720851072556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030431 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045465 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142081.P1879951720851072556

namespace A142081

/-- `∩[A030431(n+1), A045465(n+1)]` -/
def P1879951720851072556.Spec : Prop :=
  ∀ n, (P1879951720851072556.a n : ℤ) = A142081 (n + 1)

end A142081

/-! ## A142081.P13429877434111079436

`∩[A045414(n+1), A045465(n+1)]`
-/

namespace A142081.P13429877434111079436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045414 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045465 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142081.P13429877434111079436

namespace A142081

/-- `∩[A045414(n+1), A045465(n+1)]` -/
def P13429877434111079436.Spec : Prop :=
  ∀ n, (P13429877434111079436.a n : ℤ) = A142081 (n + 1)

end A142081

/-! ## A142081.P7779629630301101693

`∩[A030431(n+1), A140444(n+1)]`
-/

namespace A142081.P7779629630301101693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030431 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140444 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142081.P7779629630301101693

namespace A142081

/-- `∩[A030431(n+1), A140444(n+1)]` -/
def P7779629630301101693.Spec : Prop :=
  ∀ n, (P7779629630301101693.a n : ℤ) = A142081 (n + 1)

end A142081

/-! ## A142081.P7709543183745176911

`∩[A045414(n+1), A140444(n+1)]`
-/

namespace A142081.P7709543183745176911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045414 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140444 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142081.P7709543183745176911

namespace A142081

/-- `∩[A045414(n+1), A140444(n+1)]` -/
def P7709543183745176911.Spec : Prop :=
  ∀ n, (P7709543183745176911.a n : ℤ) = A142081 (n + 1)

end A142081

/-! ## A142081.P3279490083640734313

`A000027(p?[A139609(n)-(n+1)])`
-/

namespace A142081.P3279490083640734313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139609 n - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142081.P3279490083640734313

namespace A142081

/-- `A000027(p?[A139609(n)-(n+1)])` -/
def P3279490083640734313.Spec : Prop :=
  ∀ n, P3279490083640734313.a n = A142081 (n + 1)

end A142081

/-! ## A142081.P13526443049463096468

`∩[A004617(n+1), A045465(n+1)]`
-/

namespace A142081.P13526443049463096468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004617 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045465 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142081.P13526443049463096468

namespace A142081

/-- `∩[A004617(n+1), A045465(n+1)]` -/
def P13526443049463096468.Spec : Prop :=
  ∀ n, (P13526443049463096468.a n : ℤ) = A142081 (n + 1)

end A142081

/-! ## A142081.P4557608943694214318

`∩[A004617(n+1), A140444(n+1)]`
-/

namespace A142081.P4557608943694214318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004617 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140444 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142081.P4557608943694214318

namespace A142081

/-- `∩[A004617(n+1), A140444(n+1)]` -/
def P4557608943694214318.Spec : Prop :=
  ∀ n, (P4557608943694214318.a n : ℤ) = A142081 (n + 1)

end A142081

/-! ## A142081.P2068369275374909995

`∩[A030431(n+1), A131877(n)]`
-/

namespace A142081.P2068369275374909995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030431 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131877 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142081.P2068369275374909995

namespace A142081

/-- `∩[A030431(n+1), A131877(n)]` -/
def P2068369275374909995.Spec : Prop :=
  ∀ n, (P2068369275374909995.a n : ℤ) = A142081 (n + 1)

end A142081

/-! ## A142081.P10694230260131521926

`∩[A045414(n+1), A131877(n)]`
-/

namespace A142081.P10694230260131521926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045414 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131877 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142081.P10694230260131521926

namespace A142081

/-- `∩[A045414(n+1), A131877(n)]` -/
def P10694230260131521926.Spec : Prop :=
  ∀ n, (P10694230260131521926.a n : ℤ) = A142081 (n + 1)

end A142081

/-! ## A142081.P3691721367494722796

`∩[A030431(n+1), A358053(n+1)+2]`
-/

namespace A142081.P3691721367494722796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030431 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358053 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142081.P3691721367494722796

namespace A142081

/-- `∩[A030431(n+1), A358053(n+1)+2]` -/
def P3691721367494722796.Spec : Prop :=
  ∀ n, (P3691721367494722796.a n : ℤ) = A142081 (n + 1)

end A142081

/-! ## A142081.P15035282213166726658

`∩[A045414(n+1), A358053(n+1)+2]`
-/

namespace A142081.P15035282213166726658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045414 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358053 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142081.P15035282213166726658

namespace A142081

/-- `∩[A045414(n+1), A358053(n+1)+2]` -/
def P15035282213166726658.Spec : Prop :=
  ∀ n, (P15035282213166726658.a n : ℤ) = A142081 (n + 1)

end A142081

/-! ## A142081.P17887027962779075164

`∩[A030431(n+1), A063230(n+1)+2]`
-/

namespace A142081.P17887027962779075164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030431 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063230 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142081.P17887027962779075164

namespace A142081

/-- `∩[A030431(n+1), A063230(n+1)+2]` -/
def P17887027962779075164.Spec : Prop :=
  ∀ n, (P17887027962779075164.a n : ℤ) = A142081 (n + 1)

end A142081

/-! ## A142081.P14904662665467192184

`∩[A045414(n+1), A063230(n+1)+2]`
-/

namespace A142081.P14904662665467192184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045414 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063230 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142081.P14904662665467192184

namespace A142081

/-- `∩[A045414(n+1), A063230(n+1)+2]` -/
def P14904662665467192184.Spec : Prop :=
  ∀ n, (P14904662665467192184.a n : ℤ) = A142081 (n + 1)

end A142081

/-! ## A142081.P13492078007006626122

`∩[A063230(2*(n+1))+2, A045381(n+2)]`
-/

namespace A142081.P13492078007006626122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063230 (2 * (n + 1)) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045381 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142081.P13492078007006626122

namespace A142081

/-- `∩[A063230(2*(n+1))+2, A045381(n+2)]` -/
def P13492078007006626122.Spec : Prop :=
  ∀ n, (P13492078007006626122.a n : ℤ) = A142081 (n + 1)

end A142081

/-! ## A142081.P12121224565316671126

`∩[A045465(n+1), A017305(n)]`
-/

namespace A142081.P12121224565316671126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045465 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017305 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142081.P12121224565316671126

namespace A142081

/-- `∩[A045465(n+1), A017305(n)]` -/
def P12121224565316671126.Spec : Prop :=
  ∀ n, (P12121224565316671126.a n : ℤ) = A142081 (n + 1)

end A142081

/-! ## A142081.P6836568705475049861

`∩[A140444(n+1), A017305(n)]`
-/

namespace A142081.P6836568705475049861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140444 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017305 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142081.P6836568705475049861

namespace A142081

/-- `∩[A140444(n+1), A017305(n)]` -/
def P6836568705475049861.Spec : Prop :=
  ∀ n, (P6836568705475049861.a n : ℤ) = A142081 (n + 1)

end A142081

/-!
# A142082: Primes congruent to 9 mod 35.

The programs for A142082, the canonical program `A142082.P11234807902744466555` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142082 has offset 1).

The definition of A142082 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8339 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142082.P11234807902744466555

`A030433(eq[2, A030433(n+1)%7]+1)`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A142082

/-- `A030433(eq[2, A030433(n+1)%7]+1)` -/
def P11234807902744466555.Spec : Prop :=
  ∀ n, P11234807902744466555.a n = A142082 (n + 1)

theorem P11234807902744466555.correct : P11234807902744466555.Spec := by
  intro n
  simp only [A142082, Nat.add_sub_cancel]

end A142082

/-! ## A142082.P7306924797226235056

`p?[35*n+9]`
-/

namespace A142082.P7306924797226235056
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  35 * n + 9

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142082.P7306924797226235056

namespace A142082

/-- `p?[35*n+9]` -/
def P7306924797226235056.Spec : Prop :=
  ∀ n, (P7306924797226235056.a n : ℤ) = A142082 (n + 1)

end A142082

/-! ## A142082.P4654983585476258872

`∩[A030433(n+1), A045383(n+1)]`
-/

namespace A142082.P4654983585476258872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030433 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045383 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142082.P4654983585476258872

namespace A142082

/-- `∩[A030433(n+1), A045383(n+1)]` -/
def P4654983585476258872.Spec : Prop :=
  ∀ n, (P4654983585476258872.a n : ℤ) = A142082 (n + 1)

end A142082

/-! ## A142082.P6173250915656363209

`∩[A030433(n+1), A045392(n+1)]`
-/

namespace A142082.P6173250915656363209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030433 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045392 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142082.P6173250915656363209

namespace A142082

/-- `∩[A030433(n+1), A045392(n+1)]` -/
def P6173250915656363209.Spec : Prop :=
  ∀ n, (P6173250915656363209.a n : ℤ) = A142082 (n + 1)

end A142082

/-! ## A142082.P4325361231274381296

`∩[A045383(n+1), A045457(n+1)]`
-/

namespace A142082.P4325361231274381296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045383 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045457 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142082.P4325361231274381296

namespace A142082

/-- `∩[A045383(n+1), A045457(n+1)]` -/
def P4325361231274381296.Spec : Prop :=
  ∀ n, (P4325361231274381296.a n : ℤ) = A142082 (n + 1)

end A142082

/-! ## A142082.P8753150194174865808

`∩[A045392(n+1), A045457(n+1)]`
-/

namespace A142082.P8753150194174865808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045392 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045457 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142082.P8753150194174865808

namespace A142082

/-- `∩[A045392(n+1), A045457(n+1)]` -/
def P8753150194174865808.Spec : Prop :=
  ∀ n, (P8753150194174865808.a n : ℤ) = A142082 (n + 1)

end A142082

/-! ## A142082.P4779774682939099374

`∩[A030433(n+1), A140442(n+1)]`
-/

namespace A142082.P4779774682939099374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030433 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140442 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142082.P4779774682939099374

namespace A142082

/-- `∩[A030433(n+1), A140442(n+1)]` -/
def P4779774682939099374.Spec : Prop :=
  ∀ n, (P4779774682939099374.a n : ℤ) = A142082 (n + 1)

end A142082

/-! ## A142082.P7984138976285607340

`∩[A045457(n+1), A140442(n+1)]`
-/

namespace A142082.P7984138976285607340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045457 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140442 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142082.P7984138976285607340

namespace A142082

/-- `∩[A045457(n+1), A140442(n+1)]` -/
def P7984138976285607340.Spec : Prop :=
  ∀ n, (P7984138976285607340.a n : ℤ) = A142082 (n + 1)

end A142082

/-! ## A142082.P4293058849008997421

`∩[A045383(n+1), A327753(n+1)]`
-/

namespace A142082.P4293058849008997421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045383 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327753 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142082.P4293058849008997421

namespace A142082

/-- `∩[A045383(n+1), A327753(n+1)]` -/
def P4293058849008997421.Spec : Prop :=
  ∀ n, (P4293058849008997421.a n : ℤ) = A142082 (n + 1)

end A142082

/-! ## A142082.P17953607217748705361

`∩[A045392(n+1), A327753(n+1)]`
-/

namespace A142082.P17953607217748705361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045392 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327753 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142082.P17953607217748705361

namespace A142082

/-- `∩[A045392(n+1), A327753(n+1)]` -/
def P17953607217748705361.Spec : Prop :=
  ∀ n, (P17953607217748705361.a n : ℤ) = A142082 (n + 1)

end A142082

/-! ## A142082.P13515199891655892685

`∩[A140442(n+1), A327753(n+1)]`
-/

namespace A142082.P13515199891655892685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140442 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327753 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142082.P13515199891655892685

namespace A142082

/-- `∩[A140442(n+1), A327753(n+1)]` -/
def P13515199891655892685.Spec : Prop :=
  ∀ n, (P13515199891655892685.a n : ℤ) = A142082 (n + 1)

end A142082

/-! ## A142082.P1024205606337090682

`∩[A004618(n+1), A045383(n+1)]`
-/

namespace A142082.P1024205606337090682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004618 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045383 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142082.P1024205606337090682

namespace A142082

/-- `∩[A004618(n+1), A045383(n+1)]` -/
def P1024205606337090682.Spec : Prop :=
  ∀ n, (P1024205606337090682.a n : ℤ) = A142082 (n + 1)

end A142082

/-! ## A142082.P13535426351331714248

`∩[A004618(n+1), A045392(n+1)]`
-/

namespace A142082.P13535426351331714248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004618 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045392 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142082.P13535426351331714248

namespace A142082

/-- `∩[A004618(n+1), A045392(n+1)]` -/
def P13535426351331714248.Spec : Prop :=
  ∀ n, (P13535426351331714248.a n : ℤ) = A142082 (n + 1)

end A142082

/-! ## A142082.P8348551543511065554

`∩[A004618(n+1), A140442(n+1)]`
-/

namespace A142082.P8348551543511065554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004618 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140442 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142082.P8348551543511065554

namespace A142082

/-- `∩[A004618(n+1), A140442(n+1)]` -/
def P8348551543511065554.Spec : Prop :=
  ∀ n, (P8348551543511065554.a n : ℤ) = A142082 (n + 1)

end A142082

/-! ## A142082.P13032353127785603606

`∩[A004620(n+1), A030433(n+1)]`
-/

namespace A142082.P13032353127785603606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004620 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030433 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142082.P13032353127785603606

namespace A142082

/-- `∩[A004620(n+1), A030433(n+1)]` -/
def P13032353127785603606.Spec : Prop :=
  ∀ n, (P13032353127785603606.a n : ℤ) = A142082 (n + 1)

end A142082

/-! ## A142082.P18002422369290354121

`∩[A004620(n+1), A045457(n+1)]`
-/

namespace A142082.P18002422369290354121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004620 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045457 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142082.P18002422369290354121

namespace A142082

/-- `∩[A004620(n+1), A045457(n+1)]` -/
def P18002422369290354121.Spec : Prop :=
  ∀ n, (P18002422369290354121.a n : ℤ) = A142082 (n + 1)

end A142082

/-! ## A142082.P15315729980801839614

`∩[A045374(n+1), A063230(n+1)+2]`
-/

namespace A142082.P15315729980801839614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045374 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063230 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142082.P15315729980801839614

namespace A142082

/-- `∩[A045374(n+1), A063230(n+1)+2]` -/
def P15315729980801839614.Spec : Prop :=
  ∀ n, (P15315729980801839614.a n : ℤ) = A142082 (n + 1)

end A142082

/-! ## A142082.P327364981866727302

`∩[A045387(n+1), A063230(n+1)+2]`
-/

namespace A142082.P327364981866727302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045387 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063230 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142082.P327364981866727302

namespace A142082

/-- `∩[A045387(n+1), A063230(n+1)+2]` -/
def P327364981866727302.Spec : Prop :=
  ∀ n, (P327364981866727302.a n : ℤ) = A142082 (n + 1)

end A142082

/-! ## A142082.P2195187200158819963

`record[A006530(7*(10*n+11)+2)]`
-/

namespace A142082.P2195187200158819963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (7 * (10 * n + 11) + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142082.P2195187200158819963

namespace A142082

/-- `record[A006530(7*(10*n+11)+2)]` -/
def P2195187200158819963.Spec : Prop :=
  ∀ n, P2195187200158819963.a n = A142082 (n + 1)

end A142082

/-! ## A142082.P4068929828995492000

`∩[A045383(n+1), A017377(n)]`
-/

namespace A142082.P4068929828995492000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045383 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017377 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142082.P4068929828995492000

namespace A142082

/-- `∩[A045383(n+1), A017377(n)]` -/
def P4068929828995492000.Spec : Prop :=
  ∀ n, (P4068929828995492000.a n : ℤ) = A142082 (n + 1)

end A142082

/-!
# A142083: Primes congruent to 11 mod 35.

The programs for A142083, the canonical program `A142083.P10277068139363312282` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142083 has offset 1).

The definition of A142083 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3264 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142083.P10277068139363312282

`p?[35*n+11]`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A142083

/-- `p?[35*n+11]` -/
def P10277068139363312282.Spec : Prop :=
  ∀ n, (P10277068139363312282.a n : ℤ) = A142083 (n + 1)

theorem P10277068139363312282.correct : P10277068139363312282.Spec := by
  intro n
  simp only [A142083, Nat.add_sub_cancel]

end A142083

/-! ## A142083.P8293299337003489376

`∩[A045462(n+1), A089720(n+1)]`
-/

namespace A142083.P8293299337003489376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045462 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089720 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142083.P8293299337003489376

namespace A142083

/-- `∩[A045462(n+1), A089720(n+1)]` -/
def P8293299337003489376.Spec : Prop :=
  ∀ n, (P8293299337003489376.a n : ℤ) = A142083 (n + 1)

end A142083

/-! ## A142083.P15643765476784730149

`∩[A045471(n+1), A089720(n+1)]`
-/

namespace A142083.P15643765476784730149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045471 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089720 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142083.P15643765476784730149

namespace A142083

/-- `∩[A045471(n+1), A089720(n+1)]` -/
def P15643765476784730149.Spec : Prop :=
  ∀ n, (P15643765476784730149.a n : ℤ) = A142083 (n + 1)

end A142083

/-! ## A142083.P7637652910336448523

`or(p?[A139264(n+1)+4], A057427(n))`
-/

namespace A142083.P7637652910336448523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139264 (n + 1) + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A057427 n)

end

end A142083.P7637652910336448523

namespace A142083

/-- `or(p?[A139264(n+1)+4], A057427(n))` -/
def P7637652910336448523.Spec : Prop :=
  ∀ n, P7637652910336448523.a n = A142083 (n + 1)

end A142083

/-! ## A142083.P7952535044499290143

`∩[A004622(n+1), A089720(n+1)]`
-/

namespace A142083.P7952535044499290143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004622 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089720 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142083.P7952535044499290143

namespace A142083

/-- `∩[A004622(n+1), A089720(n+1)]` -/
def P7952535044499290143.Spec : Prop :=
  ∀ n, (P7952535044499290143.a n : ℤ) = A142083 (n + 1)

end A142083

/-! ## A142083.P3016968478056761248

`A000027(p?[A139264(n+1)+4])`
-/

namespace A142083.P3016968478056761248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139264 (n + 1) + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142083.P3016968478056761248

namespace A142083

/-- `A000027(p?[A139264(n+1)+4])` -/
def P3016968478056761248.Spec : Prop :=
  ∀ n, P3016968478056761248.a n = A142083 (n + 1)

end A142083

/-! ## A142083.P15194174564887121477

`∩[A004622(n+1), A030430(n+1)]`
-/

namespace A142083.P15194174564887121477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004622 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030430 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142083.P15194174564887121477

namespace A142083

/-- `∩[A004622(n+1), A030430(n+1)]` -/
def P15194174564887121477.Spec : Prop :=
  ∀ n, (P15194174564887121477.a n : ℤ) = A142083 (n + 1)

end A142083

/-! ## A142083.P1467744713303914732

`∩[A004622(n+1), A045453(n+1)]`
-/

namespace A142083.P1467744713303914732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004622 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045453 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142083.P1467744713303914732

namespace A142083

/-- `∩[A004622(n+1), A045453(n+1)]` -/
def P1467744713303914732.Spec : Prop :=
  ∀ n, (P1467744713303914732.a n : ℤ) = A142083 (n + 1)

end A142083

/-! ## A142083.P1695965417565740161

`∩[A030430(n+1), A045462(n+1)]`
-/

namespace A142083.P1695965417565740161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030430 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045462 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142083.P1695965417565740161

namespace A142083

/-- `∩[A030430(n+1), A045462(n+1)]` -/
def P1695965417565740161.Spec : Prop :=
  ∀ n, (P1695965417565740161.a n : ℤ) = A142083 (n + 1)

end A142083

/-! ## A142083.P4343351603993139484

`∩[A030430(n+1), A045471(n+1)]`
-/

namespace A142083.P4343351603993139484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030430 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045471 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142083.P4343351603993139484

namespace A142083

/-- `∩[A030430(n+1), A045471(n+1)]` -/
def P4343351603993139484.Spec : Prop :=
  ∀ n, (P4343351603993139484.a n : ℤ) = A142083 (n + 1)

end A142083

/-! ## A142083.P15346691087200475493

`∩[A045453(n+1), A045462(n+1)]`
-/

namespace A142083.P15346691087200475493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045453 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045462 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142083.P15346691087200475493

namespace A142083

/-- `∩[A045453(n+1), A045462(n+1)]` -/
def P15346691087200475493.Spec : Prop :=
  ∀ n, (P15346691087200475493.a n : ℤ) = A142083 (n + 1)

end A142083

/-! ## A142083.P8873794557763750979

`∩[A045453(n+1), A045471(n+1)]`
-/

namespace A142083.P8873794557763750979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045453 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045471 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142083.P8873794557763750979

namespace A142083

/-- `∩[A045453(n+1), A045471(n+1)]` -/
def P8873794557763750979.Spec : Prop :=
  ∀ n, (P8873794557763750979.a n : ℤ) = A142083 (n + 1)

end A142083

/-! ## A142083.P12690360486071862330

`∩[A004622(n+1), A090756(n+1)]`
-/

namespace A142083.P12690360486071862330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004622 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090756 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142083.P12690360486071862330

namespace A142083

/-- `∩[A004622(n+1), A090756(n+1)]` -/
def P12690360486071862330.Spec : Prop :=
  ∀ n, (P12690360486071862330.a n : ℤ) = A142083 (n + 1)

end A142083

/-! ## A142083.P4541183894540288189

`∩[A045462(n+1), A090756(n+1)]`
-/

namespace A142083.P4541183894540288189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045462 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090756 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142083.P4541183894540288189

namespace A142083

/-- `∩[A045462(n+1), A090756(n+1)]` -/
def P4541183894540288189.Spec : Prop :=
  ∀ n, (P4541183894540288189.a n : ℤ) = A142083 (n + 1)

end A142083

/-! ## A142083.P7698185684471096596

`∩[A045471(n+1), A090756(n+1)]`
-/

namespace A142083.P7698185684471096596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045471 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090756 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142083.P7698185684471096596

namespace A142083

/-- `∩[A045471(n+1), A090756(n+1)]` -/
def P7698185684471096596.Spec : Prop :=
  ∀ n, (P7698185684471096596.a n : ℤ) = A142083 (n + 1)

end A142083

/-! ## A142083.P16176210349762450940

`∩[A045462(n+1), A327752(n+1)]`
-/

namespace A142083.P16176210349762450940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045462 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327752 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142083.P16176210349762450940

namespace A142083

/-- `∩[A045462(n+1), A327752(n+1)]` -/
def P16176210349762450940.Spec : Prop :=
  ∀ n, (P16176210349762450940.a n : ℤ) = A142083 (n + 1)

end A142083

/-! ## A142083.P8978335163467966258

`∩[A045471(n+1), A327752(n+1)]`
-/

namespace A142083.P8978335163467966258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045471 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327752 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142083.P8978335163467966258

namespace A142083

/-- `∩[A045471(n+1), A327752(n+1)]` -/
def P8978335163467966258.Spec : Prop :=
  ∀ n, (P8978335163467966258.a n : ℤ) = A142083 (n + 1)

end A142083

/-! ## A142083.P10089045373928047827

`∩[A045374(n+1), A089720(n+1)]`
-/

namespace A142083.P10089045373928047827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045374 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089720 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142083.P10089045373928047827

namespace A142083

/-- `∩[A045374(n+1), A089720(n+1)]` -/
def P10089045373928047827.Spec : Prop :=
  ∀ n, (P10089045373928047827.a n : ℤ) = A142083 (n + 1)

end A142083

/-! ## A142083.P1226438339742265373

`∩[A045387(n+1), A089720(n+1)]`
-/

namespace A142083.P1226438339742265373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045387 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089720 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142083.P1226438339742265373

namespace A142083

/-- `∩[A045387(n+1), A089720(n+1)]` -/
def P1226438339742265373.Spec : Prop :=
  ∀ n, (P1226438339742265373.a n : ℤ) = A142083 (n + 1)

end A142083

/-! ## A142083.P574986373410060106

`∩[A045421(n+1), A089720(n+1)]`
-/

namespace A142083.P574986373410060106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045421 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089720 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142083.P574986373410060106

namespace A142083

/-- `∩[A045421(n+1), A089720(n+1)]` -/
def P574986373410060106.Spec : Prop :=
  ∀ n, (P574986373410060106.a n : ℤ) = A142083 (n + 1)

end A142083

/-!
# A142084: Primes congruent to 12 mod 35.

The programs for A142084, the canonical program `A142084.P10505866821454008841` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142084 has offset 1).

The definition of A142084 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3285 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142084.P10505866821454008841

`p?[35*n+12]`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A142084

/-- `p?[35*n+12]` -/
def P10505866821454008841.Spec : Prop :=
  ∀ n, (P10505866821454008841.a n : ℤ) = A142084 (n + 1)

theorem P10505866821454008841.correct : P10505866821454008841.Spec := by
  intro n
  simp only [A142084, Nat.add_sub_cancel]

end A142084

/-! ## A142084.P17787438244619405623

`or(1, p?[A114646(n+1)])`
-/

namespace A142084.P17787438244619405623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114646 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A142084.P17787438244619405623

namespace A142084

/-- `or(1, p?[A114646(n+1)])` -/
def P17787438244619405623.Spec : Prop :=
  ∀ n, P17787438244619405623.a n = A142084 (n + 1)

end A142084

/-! ## A142084.P6658936077713798533

`∩[A045447(n+1), A114646(n+1)]`
-/

namespace A142084.P6658936077713798533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045447 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114646 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142084.P6658936077713798533

namespace A142084

/-- `∩[A045447(n+1), A114646(n+1)]` -/
def P6658936077713798533.Spec : Prop :=
  ∀ n, (P6658936077713798533.a n : ℤ) = A142084 (n + 1)

end A142084

/-! ## A142084.P1200756829195506852

`∩[A045458(n+1), A114646(n+1)]`
-/

namespace A142084.P1200756829195506852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045458 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114646 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142084.P1200756829195506852

namespace A142084

/-- `∩[A045458(n+1), A114646(n+1)]` -/
def P1200756829195506852.Spec : Prop :=
  ∀ n, (P1200756829195506852.a n : ℤ) = A142084 (n + 1)

end A142084

/-! ## A142084.P15900316415130394768

`∩[A106878(n+1), A114646(n+1)]`
-/

namespace A142084.P15900316415130394768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106878 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114646 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142084.P15900316415130394768

namespace A142084

/-- `∩[A106878(n+1), A114646(n+1)]` -/
def P15900316415130394768.Spec : Prop :=
  ∀ n, (P15900316415130394768.a n : ℤ) = A142084 (n + 1)

end A142084

/-! ## A142084.P16316374046847624091

`∩[A030432(n+1), A045458(n+1)]`
-/

namespace A142084.P16316374046847624091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030432 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045458 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142084.P16316374046847624091

namespace A142084

/-- `∩[A030432(n+1), A045458(n+1)]` -/
def P16316374046847624091.Spec : Prop :=
  ∀ n, (P16316374046847624091.a n : ℤ) = A142084 (n + 1)

end A142084

/-! ## A142084.P8547569369713577683

`∩[A045380(n+1), A045458(n+1)]`
-/

namespace A142084.P8547569369713577683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045380 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045458 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142084.P8547569369713577683

namespace A142084

/-- `∩[A045380(n+1), A045458(n+1)]` -/
def P8547569369713577683.Spec : Prop :=
  ∀ n, (P8547569369713577683.a n : ℤ) = A142084 (n + 1)

end A142084

/-! ## A142084.P14994854199388193127

`∩[A030432(n+1), A114646(n+1)]`
-/

namespace A142084.P14994854199388193127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030432 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114646 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142084.P14994854199388193127

namespace A142084

/-- `∩[A030432(n+1), A114646(n+1)]` -/
def P14994854199388193127.Spec : Prop :=
  ∀ n, (P14994854199388193127.a n : ℤ) = A142084 (n + 1)

end A142084

/-! ## A142084.P17901164023257637321

`∩[A045357(n+1), A114646(n+1)]`
-/

namespace A142084.P17901164023257637321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045357 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114646 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142084.P17901164023257637321

namespace A142084

/-- `∩[A045357(n+1), A114646(n+1)]` -/
def P17901164023257637321.Spec : Prop :=
  ∀ n, (P17901164023257637321.a n : ℤ) = A142084 (n + 1)

end A142084

/-! ## A142084.P1210947588086844302

`∩[A045380(n+1), A114646(n+1)]`
-/

namespace A142084.P1210947588086844302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045380 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114646 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142084.P1210947588086844302

namespace A142084

/-- `∩[A045380(n+1), A114646(n+1)]` -/
def P1210947588086844302.Spec : Prop :=
  ∀ n, (P1210947588086844302.a n : ℤ) = A142084 (n + 1)

end A142084

/-! ## A142084.P4549351795266940432

`∩[A004623(n+1), A030432(n+1)]`
-/

namespace A142084.P4549351795266940432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004623 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030432 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142084.P4549351795266940432

namespace A142084

/-- `∩[A004623(n+1), A030432(n+1)]` -/
def P4549351795266940432.Spec : Prop :=
  ∀ n, (P4549351795266940432.a n : ℤ) = A142084 (n + 1)

end A142084

/-! ## A142084.P16260794602394513875

`∩[A004623(n+1), A045380(n+1)]`
-/

namespace A142084.P16260794602394513875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004623 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045380 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142084.P16260794602394513875

namespace A142084

/-- `∩[A004623(n+1), A045380(n+1)]` -/
def P16260794602394513875.Spec : Prop :=
  ∀ n, (P16260794602394513875.a n : ℤ) = A142084 (n + 1)

end A142084

/-! ## A142084.P15245173699422533773

`∩[A045359(n+1), A114646(n+1)]`
-/

namespace A142084.P15245173699422533773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045359 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114646 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142084.P15245173699422533773

namespace A142084

/-- `∩[A045359(n+1), A114646(n+1)]` -/
def P15245173699422533773.Spec : Prop :=
  ∀ n, (P15245173699422533773.a n : ℤ) = A142084 (n + 1)

end A142084

/-! ## A142084.P259669417604304720

`∩[A045368(n+1), A114646(n+1)]`
-/

namespace A142084.P259669417604304720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045368 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114646 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142084.P259669417604304720

namespace A142084

/-- `∩[A045368(n+1), A114646(n+1)]` -/
def P259669417604304720.Spec : Prop :=
  ∀ n, (P259669417604304720.a n : ℤ) = A142084 (n + 1)

end A142084

/-! ## A142084.P11893096040742638120

`∩[A045446(n+1), A114646(n+1)]`
-/

namespace A142084.P11893096040742638120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045446 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114646 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142084.P11893096040742638120

namespace A142084

/-- `∩[A045446(n+1), A114646(n+1)]` -/
def P11893096040742638120.Spec : Prop :=
  ∀ n, (P11893096040742638120.a n : ℤ) = A142084 (n + 1)

end A142084

/-! ## A142084.P3852079451842998514

`∩[A045456(n+1), A114646(n+1)]`
-/

namespace A142084.P3852079451842998514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045456 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114646 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142084.P3852079451842998514

namespace A142084

/-- `∩[A045456(n+1), A114646(n+1)]` -/
def P3852079451842998514.Spec : Prop :=
  ∀ n, (P3852079451842998514.a n : ℤ) = A142084 (n + 1)

end A142084

/-! ## A142084.P13812056589096400225

`∩[A045452(n+1), A114646(n+1)]`
-/

namespace A142084.P13812056589096400225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045452 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114646 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142084.P13812056589096400225

namespace A142084

/-- `∩[A045452(n+1), A114646(n+1)]` -/
def P13812056589096400225.Spec : Prop :=
  ∀ n, (P13812056589096400225.a n : ℤ) = A142084 (n + 1)

end A142084

/-! ## A142084.P11817140917791120719

`∩[A045401(n+1), A114646(n+1)]`
-/

namespace A142084.P11817140917791120719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045401 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114646 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142084.P11817140917791120719

namespace A142084

/-- `∩[A045401(n+1), A114646(n+1)]` -/
def P11817140917791120719.Spec : Prop :=
  ∀ n, (P11817140917791120719.a n : ℤ) = A142084 (n + 1)

end A142084

/-! ## A142084.P1575590880645405088

`∩[A045416(n+1), A114646(n+1)]`
-/

namespace A142084.P1575590880645405088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045416 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114646 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142084.P1575590880645405088

namespace A142084

/-- `∩[A045416(n+1), A114646(n+1)]` -/
def P1575590880645405088.Spec : Prop :=
  ∀ n, (P1575590880645405088.a n : ℤ) = A142084 (n + 1)

end A142084

/-! ## A142084.P11833057821361910626

`∩[A045441(n+1), A114646(n+1)]`
-/

namespace A142084.P11833057821361910626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045441 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114646 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142084.P11833057821361910626

namespace A142084

/-- `∩[A045441(n+1), A114646(n+1)]` -/
def P11833057821361910626.Spec : Prop :=
  ∀ n, (P11833057821361910626.a n : ℤ) = A142084 (n + 1)

end A142084

/-!
# A142085: Primes congruent to 13 mod 35.

The programs for A142085, there is no canonical definition to state claims against.
-/

/-! ## A142085.P16460279008080382848

`∪[A140841(n+1), A141570(n+1)]`
-/

namespace A142085.P16460279008080382848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140841 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141570 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A142085.P16460279008080382848

/-! ## A142085.P11970110242940413049

`p?[35*n-57]`
-/

namespace A142085.P11970110242940413049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (35 * n : ℤ) - 57

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142085.P11970110242940413049

/-! ## A142085.P12436538139448427443

`∩[A004624(n+1), A030431(n+1)]`
-/

namespace A142085.P12436538139448427443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004624 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030431 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142085.P12436538139448427443

/-! ## A142085.P7430206597424050485

`∩[A004624(n+1), A045414(n+1)]`
-/

namespace A142085.P7430206597424050485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004624 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045414 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142085.P7430206597424050485

/-! ## A142085.P6839622732844946161

`∩[A030431(n+1), A045464(n+1)]`
-/

namespace A142085.P6839622732844946161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030431 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045464 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142085.P6839622732844946161

/-! ## A142085.P7559296833871625195

`∩[A030431(n+1), A045473(n+1)]`
-/

namespace A142085.P7559296833871625195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030431 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045473 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142085.P7559296833871625195

/-! ## A142085.P12603771329247510417

`∩[A045414(n+1), A045464(n+1)]`
-/

namespace A142085.P12603771329247510417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045414 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045464 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142085.P12603771329247510417

/-! ## A142085.P7872723725992829424

`∩[A045414(n+1), A045473(n+1)]`
-/

namespace A142085.P7872723725992829424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045414 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045473 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142085.P7872723725992829424

/-! ## A142085.P17654558623479495352

`∩[A004617(n+1), A045464(n+1)]`
-/

namespace A142085.P17654558623479495352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004617 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045464 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142085.P17654558623479495352

/-! ## A142085.P15194717318403307858

`∩[A004617(n+1), A045473(n+1)]`
-/

namespace A142085.P15194717318403307858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004617 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045473 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142085.P15194717318403307858

/-! ## A142085.P1771349720437672068

`∩[A030431(n+1), A358053(n+1)]`
-/

namespace A142085.P1771349720437672068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030431 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358053 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142085.P1771349720437672068

/-! ## A142085.P1488449174076039379

`∩[A045414(n+1), A358053(n+1)]`
-/

namespace A142085.P1488449174076039379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045414 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358053 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142085.P1488449174076039379

/-! ## A142085.P3489189043203921394

`∩[A030431(n+1), A131877(n)-2]`
-/

namespace A142085.P3489189043203921394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030431 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131877 n - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142085.P3489189043203921394

/-! ## A142085.P15562470221477323531

`∩[A045414(n+1), A131877(n)-2]`
-/

namespace A142085.P15562470221477323531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045414 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131877 n - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142085.P15562470221477323531

/-! ## A142085.P16810435394388456511

`record[A020639(35*(n+1)-22)]`
-/

namespace A142085.P16810435394388456511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (35 * (n + 1) - 22)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142085.P16810435394388456511

/-! ## A142085.P6191450768619230909

`∩[A045464(n+1), A017305(n)]`
-/

namespace A142085.P6191450768619230909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045464 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017305 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142085.P6191450768619230909

/-! ## A142085.P5112832862134025660

`∩[A045473(n+1), A017305(n)]`
-/

namespace A142085.P5112832862134025660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045473 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017305 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142085.P5112832862134025660

/-! ## A142085.P18239126476992863436

`A007947(p?[A139264(n+1)+6])`
-/

namespace A142085.P18239126476992863436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139264 (n + 1) + 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142085.P18239126476992863436

/-! ## A142085.P4157575401567970954

`record[A006530(5*A166544(n+1)+3)]`
-/

namespace A142085.P4157575401567970954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (5 * A166544 (n + 1) + 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142085.P4157575401567970954

/-! ## A142085.P6016656337566032396

`∩[A017209(n+1)+n, A045464(n+2)]`
-/

namespace A142085.P6016656337566032396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017209 (n + 1) + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045464 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142085.P6016656337566032396

/-!
# A142086: Primes congruent to 16 mod 35.

The programs for A142086, the canonical program `A142086.P6530813108441564761` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142086 has offset 1).

The definition of A142086 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3270 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142086.P6530813108441564761

`p?[35*n-19]`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A142086

/-- `p?[35*n-19]` -/
def P6530813108441564761.Spec : Prop :=
  ∀ n, P6530813108441564761.a n = A142086 (n + 1)

theorem P6530813108441564761.correct : P6530813108441564761.Spec := by
  intro n
  simp only [A142086, Nat.add_sub_cancel]

end A142086

/-! ## A142086.P1468905446079741398

`∏{p}[p?[35*n+51], #]`
-/

namespace A142086.P1468905446079741398
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  35 * n + 51

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), p

end

end A142086.P1468905446079741398

namespace A142086

/-- `∏{p}[p?[35*n+51], #]` -/
def P1468905446079741398.Spec : Prop :=
  ∀ n, (P1468905446079741398.a n : ℤ) = A142086 (n + 1)

end A142086

/-! ## A142086.P7118784674369160995

`∩[A045383(n+1), A089721(n+1)]`
-/

namespace A142086.P7118784674369160995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045383 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089721 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142086.P7118784674369160995

namespace A142086

/-- `∩[A045383(n+1), A089721(n+1)]` -/
def P7118784674369160995.Spec : Prop :=
  ∀ n, (P7118784674369160995.a n : ℤ) = A142086 (n + 1)

end A142086

/-! ## A142086.P11680665914078804023

`∩[A045392(n+1), A089721(n+1)]`
-/

namespace A142086.P11680665914078804023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045392 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089721 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142086.P11680665914078804023

namespace A142086

/-- `∩[A045392(n+1), A089721(n+1)]` -/
def P11680665914078804023.Spec : Prop :=
  ∀ n, (P11680665914078804023.a n : ℤ) = A142086 (n + 1)

end A142086

/-! ## A142086.P12799795375645043534

`∩[A089721(n+1), A140442(n+1)]`
-/

namespace A142086.P12799795375645043534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089721 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140442 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142086.P12799795375645043534

namespace A142086

/-- `∩[A089721(n+1), A140442(n+1)]` -/
def P12799795375645043534.Spec : Prop :=
  ∀ n, (P12799795375645043534.a n : ℤ) = A142086 (n + 1)

end A142086

/-! ## A142086.P17761448639040428733

`A000027(p?[A139264(n+1)-26])`
-/

namespace A142086.P17761448639040428733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139264 (n + 1) - 26

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142086.P17761448639040428733

namespace A142086

/-- `A000027(p?[A139264(n+1)-26])` -/
def P17761448639040428733.Spec : Prop :=
  ∀ n, P17761448639040428733.a n = A142086 (n + 1)

end A142086

/-! ## A142086.P3964224787321668755

`∩[A089721(n+1), A106881(n+1)]`
-/

namespace A142086.P3964224787321668755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089721 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106881 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142086.P3964224787321668755

namespace A142086

/-- `∩[A089721(n+1), A106881(n+1)]` -/
def P3964224787321668755.Spec : Prop :=
  ∀ n, (P3964224787321668755.a n : ℤ) = A142086 (n + 1)

end A142086

/-! ## A142086.P2275812299171630985

`∩[A030430(n+1), A045383(n+1)]`
-/

namespace A142086.P2275812299171630985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030430 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045383 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142086.P2275812299171630985

namespace A142086

/-- `∩[A030430(n+1), A045383(n+1)]` -/
def P2275812299171630985.Spec : Prop :=
  ∀ n, (P2275812299171630985.a n : ℤ) = A142086 (n + 1)

end A142086

/-! ## A142086.P4042004813753101331

`∩[A030430(n+1), A045392(n+1)]`
-/

namespace A142086.P4042004813753101331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030430 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045392 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142086.P4042004813753101331

namespace A142086

/-- `∩[A030430(n+1), A045392(n+1)]` -/
def P4042004813753101331.Spec : Prop :=
  ∀ n, (P4042004813753101331.a n : ℤ) = A142086 (n + 1)

end A142086

/-! ## A142086.P12131257186260127054

`∩[A045383(n+1), A045453(n+1)]`
-/

namespace A142086.P12131257186260127054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045383 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045453 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142086.P12131257186260127054

namespace A142086

/-- `∩[A045383(n+1), A045453(n+1)]` -/
def P12131257186260127054.Spec : Prop :=
  ∀ n, (P12131257186260127054.a n : ℤ) = A142086 (n + 1)

end A142086

/-! ## A142086.P8061174906449336042

`∩[A045392(n+1), A045453(n+1)]`
-/

namespace A142086.P8061174906449336042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045392 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045453 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142086.P8061174906449336042

namespace A142086

/-- `∩[A045392(n+1), A045453(n+1)]` -/
def P8061174906449336042.Spec : Prop :=
  ∀ n, (P8061174906449336042.a n : ℤ) = A142086 (n + 1)

end A142086

/-! ## A142086.P13123380845775105147

`∩[A030430(n+1), A140442(n+1)]`
-/

namespace A142086.P13123380845775105147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030430 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140442 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142086.P13123380845775105147

namespace A142086

/-- `∩[A030430(n+1), A140442(n+1)]` -/
def P13123380845775105147.Spec : Prop :=
  ∀ n, (P13123380845775105147.a n : ℤ) = A142086 (n + 1)

end A142086

/-! ## A142086.P2683935684082121102

`∩[A045453(n+1), A140442(n+1)]`
-/

namespace A142086.P2683935684082121102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045453 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140442 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142086.P2683935684082121102

namespace A142086

/-- `∩[A045453(n+1), A140442(n+1)]` -/
def P2683935684082121102.Spec : Prop :=
  ∀ n, (P2683935684082121102.a n : ℤ) = A142086 (n + 1)

end A142086

/-! ## A142086.P10262029948903152551

`∩[A045383(n+1), A090756(n+1)]`
-/

namespace A142086.P10262029948903152551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045383 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090756 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142086.P10262029948903152551

namespace A142086

/-- `∩[A045383(n+1), A090756(n+1)]` -/
def P10262029948903152551.Spec : Prop :=
  ∀ n, (P10262029948903152551.a n : ℤ) = A142086 (n + 1)

end A142086

/-! ## A142086.P2254679467429650176

`∩[A045392(n+1), A090756(n+1)]`
-/

namespace A142086.P2254679467429650176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045392 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090756 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142086.P2254679467429650176

namespace A142086

/-- `∩[A045392(n+1), A090756(n+1)]` -/
def P2254679467429650176.Spec : Prop :=
  ∀ n, (P2254679467429650176.a n : ℤ) = A142086 (n + 1)

end A142086

/-! ## A142086.P6787348182510127330

`∩[A090756(n+1), A140442(n+1)]`
-/

namespace A142086.P6787348182510127330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090756 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140442 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142086.P6787348182510127330

namespace A142086

/-- `∩[A090756(n+1), A140442(n+1)]` -/
def P6787348182510127330.Spec : Prop :=
  ∀ n, (P6787348182510127330.a n : ℤ) = A142086 (n + 1)

end A142086

/-! ## A142086.P13682729354286146579

`∩[A045383(n+1), A327752(n+1)]`
-/

namespace A142086.P13682729354286146579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045383 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327752 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142086.P13682729354286146579

namespace A142086

/-- `∩[A045383(n+1), A327752(n+1)]` -/
def P13682729354286146579.Spec : Prop :=
  ∀ n, (P13682729354286146579.a n : ℤ) = A142086 (n + 1)

end A142086

/-! ## A142086.P16963517143168204660

`∩[A045392(n+1), A327752(n+1)]`
-/

namespace A142086.P16963517143168204660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045392 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327752 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142086.P16963517143168204660

namespace A142086

/-- `∩[A045392(n+1), A327752(n+1)]` -/
def P16963517143168204660.Spec : Prop :=
  ∀ n, (P16963517143168204660.a n : ℤ) = A142086 (n + 1)

end A142086

/-! ## A142086.P8813546633841785564

`∩[A140442(n+1), A327752(n+1)]`
-/

namespace A142086.P8813546633841785564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140442 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327752 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142086.P8813546633841785564

namespace A142086

/-- `∩[A140442(n+1), A327752(n+1)]` -/
def P8813546633841785564.Spec : Prop :=
  ∀ n, (P8813546633841785564.a n : ℤ) = A142086 (n + 1)

end A142086

/-! ## A142086.P13049864426125935226

`∩[A045381(n+1), A089721(n+1)]`
-/

namespace A142086.P13049864426125935226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045381 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089721 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142086.P13049864426125935226

namespace A142086

/-- `∩[A045381(n+1), A089721(n+1)]` -/
def P13049864426125935226.Spec : Prop :=
  ∀ n, (P13049864426125935226.a n : ℤ) = A142086 (n + 1)

end A142086

/-!
# A142087: Primes congruent to 17 mod 35.

The programs for A142087, the canonical program `A142087.P14344118086552666950` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142087 has offset 1).

The definition of A142087 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3263 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142087.P14344118086552666950

`p?[35*n-18]`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A142087

/-- `p?[35*n-18]` -/
def P14344118086552666950.Spec : Prop :=
  ∀ n, P14344118086552666950.a n = A142087 (n + 1)

theorem P14344118086552666950.correct : P14344118086552666950.Spec := by
  intro n
  simp only [A142087, Nat.add_sub_cancel]

end A142087

/-! ## A142087.P5768238478872920615

`or(1, p?[5*7*n+17])`
-/

namespace A142087.P5768238478872920615
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * (7 * n) + 17

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A142087.P5768238478872920615

namespace A142087

/-- `or(1, p?[5*7*n+17])` -/
def P5768238478872920615.Spec : Prop :=
  ∀ n, (P5768238478872920615.a n : ℤ) = A142087 (n + 1)

end A142087

/-! ## A142087.P7197400445942315833

`lcm(p?[5*7*n+17], A033999(n))`
-/

namespace A142087.P7197400445942315833
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * (7 * n) + 17

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) (A033999 n)

end

end A142087.P7197400445942315833

namespace A142087

/-- `lcm(p?[5*7*n+17], A033999(n))` -/
def P7197400445942315833.Spec : Prop :=
  ∀ n, (P7197400445942315833.a n : ℤ) = A142087 (n + 1)

end A142087

/-! ## A142087.P2225209414495212716

`A000035(4*n)+p?[5*7*n+17]`
-/

namespace A142087.P2225209414495212716
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * (7 * n) + 17

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (4 * n) + (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ)

end

end A142087.P2225209414495212716

namespace A142087

/-- `A000035(4*n)+p?[5*7*n+17]` -/
def P2225209414495212716.Spec : Prop :=
  ∀ n, P2225209414495212716.a n = A142087 (n + 1)

end A142087

/-! ## A142087.P5683007394804126738

`∩[A030432(n+1), A045437(n+1)]`
-/

namespace A142087.P5683007394804126738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030432 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045437 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142087.P5683007394804126738

namespace A142087

/-- `∩[A030432(n+1), A045437(n+1)]` -/
def P5683007394804126738.Spec : Prop :=
  ∀ n, (P5683007394804126738.a n : ℤ) = A142087 (n + 1)

end A142087

/-! ## A142087.P3275662739102367476

`∩[A045357(n+1), A045437(n+1)]`
-/

namespace A142087.P3275662739102367476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045357 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045437 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142087.P3275662739102367476

namespace A142087

/-- `∩[A045357(n+1), A045437(n+1)]` -/
def P3275662739102367476.Spec : Prop :=
  ∀ n, (P3275662739102367476.a n : ℤ) = A142087 (n + 1)

end A142087

/-! ## A142087.P17185457379739066854

`∩[A045380(n+1), A045437(n+1)]`
-/

namespace A142087.P17185457379739066854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045380 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045437 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142087.P17185457379739066854

namespace A142087

/-- `∩[A045380(n+1), A045437(n+1)]` -/
def P17185457379739066854.Spec : Prop :=
  ∀ n, (P17185457379739066854.a n : ℤ) = A142087 (n + 1)

end A142087

/-! ## A142087.P8372416896755543930

`∩[A004621(n+1), A030432(n+1)]`
-/

namespace A142087.P8372416896755543930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004621 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030432 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142087.P8372416896755543930

namespace A142087

/-- `∩[A004621(n+1), A030432(n+1)]` -/
def P8372416896755543930.Spec : Prop :=
  ∀ n, (P8372416896755543930.a n : ℤ) = A142087 (n + 1)

end A142087

/-! ## A142087.P1492203732803783089

`∩[A004621(n+1), A045357(n+1)]`
-/

namespace A142087.P1492203732803783089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004621 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045357 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142087.P1492203732803783089

namespace A142087

/-- `∩[A004621(n+1), A045357(n+1)]` -/
def P1492203732803783089.Spec : Prop :=
  ∀ n, (P1492203732803783089.a n : ℤ) = A142087 (n + 1)

end A142087

/-! ## A142087.P16068101213430271155

`∩[A004621(n+1), A045380(n+1)]`
-/

namespace A142087.P16068101213430271155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004621 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045380 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142087.P16068101213430271155

namespace A142087

/-- `∩[A004621(n+1), A045380(n+1)]` -/
def P16068101213430271155.Spec : Prop :=
  ∀ n, (P16068101213430271155.a n : ℤ) = A142087 (n + 1)

end A142087

/-! ## A142087.P3156106949007133952

`∩[A045437(n+1), A090652(n+1)]`
-/

namespace A142087.P3156106949007133952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045437 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090652 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142087.P3156106949007133952

namespace A142087

/-- `∩[A045437(n+1), A090652(n+1)]` -/
def P3156106949007133952.Spec : Prop :=
  ∀ n, (P3156106949007133952.a n : ℤ) = A142087 (n + 1)

end A142087

/-! ## A142087.P13727107334897208033

`∩[A239129(2*n+1)-n, A045425(n+2)]`
-/

namespace A142087.P13727107334897208033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239129 (2 * n + 1) - (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045425 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142087.P13727107334897208033

namespace A142087

/-- `∩[A239129(2*n+1)-n, A045425(n+2)]` -/
def P13727107334897208033.Spec : Prop :=
  ∀ n, (P13727107334897208033.a n : ℤ) = A142087 (n + 1)

end A142087

/-! ## A142087.P12717608349975986942

`∩[A239129(2*n+1)-n, A045437(n+2)]`
-/

namespace A142087.P12717608349975986942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239129 (2 * n + 1) - (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045437 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142087.P12717608349975986942

namespace A142087

/-- `∩[A239129(2*n+1)-n, A045437(n+2)]` -/
def P12717608349975986942.Spec : Prop :=
  ∀ n, (P12717608349975986942.a n : ℤ) = A142087 (n + 1)

end A142087

/-! ## A142087.P10413229505294799073

`∩[A030432(n+1), A131877(n)+2]`
-/

namespace A142087.P10413229505294799073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030432 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131877 n + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142087.P10413229505294799073

namespace A142087

/-- `∩[A030432(n+1), A131877(n)+2]` -/
def P10413229505294799073.Spec : Prop :=
  ∀ n, (P10413229505294799073.a n : ℤ) = A142087 (n + 1)

end A142087

/-! ## A142087.P10358307365119030386

`∩[A045357(n+1), A131877(n)+2]`
-/

namespace A142087.P10358307365119030386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045357 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131877 n + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142087.P10358307365119030386

namespace A142087

/-- `∩[A045357(n+1), A131877(n)+2]` -/
def P10358307365119030386.Spec : Prop :=
  ∀ n, (P10358307365119030386.a n : ℤ) = A142087 (n + 1)

end A142087

/-! ## A142087.P13128430582039031578

`∩[A045380(n+1), A131877(n)+2]`
-/

namespace A142087.P13128430582039031578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045380 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131877 n + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142087.P13128430582039031578

namespace A142087

/-- `∩[A045380(n+1), A131877(n)+2]` -/
def P13128430582039031578.Spec : Prop :=
  ∀ n, (P13128430582039031578.a n : ℤ) = A142087 (n + 1)

end A142087

/-! ## A142087.P2551482358719193762

`∩[A004616(n+1), A045437(n+1)]`
-/

namespace A142087.P2551482358719193762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004616 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045437 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142087.P2551482358719193762

namespace A142087

/-- `∩[A004616(n+1), A045437(n+1)]` -/
def P2551482358719193762.Spec : Prop :=
  ∀ n, (P2551482358719193762.a n : ℤ) = A142087 (n + 1)

end A142087

/-! ## A142087.P8374883627520650888

`∩[A030432(n+1), A063230(n+1)]`
-/

namespace A142087.P8374883627520650888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030432 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063230 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142087.P8374883627520650888

namespace A142087

/-- `∩[A030432(n+1), A063230(n+1)]` -/
def P8374883627520650888.Spec : Prop :=
  ∀ n, (P8374883627520650888.a n : ℤ) = A142087 (n + 1)

end A142087

/-! ## A142087.P11229958520613914083

`∩[A042995(n+1), A063230(n+1)]`
-/

namespace A142087.P11229958520613914083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042995 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063230 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142087.P11229958520613914083

namespace A142087

/-- `∩[A042995(n+1), A063230(n+1)]` -/
def P11229958520613914083.Spec : Prop :=
  ∀ n, (P11229958520613914083.a n : ℤ) = A142087 (n + 1)

end A142087

/-! ## A142087.P10251343364973508770

`∩[A045314(n+1), A063230(n+1)]`
-/

namespace A142087.P10251343364973508770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045314 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063230 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142087.P10251343364973508770

namespace A142087

/-- `∩[A045314(n+1), A063230(n+1)]` -/
def P10251343364973508770.Spec : Prop :=
  ∀ n, (P10251343364973508770.a n : ℤ) = A142087 (n + 1)

end A142087

/-!
# A142088: Primes congruent to 18 mod 35.

The programs for A142088, the canonical program `A142088.P16642203838786314292` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142088 has offset 1).

The definition of A142088 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3288 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142088.P16642203838786314292

`p?[35*n+18]`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A142088

/-- `p?[35*n+18]` -/
def P16642203838786314292.Spec : Prop :=
  ∀ n, (P16642203838786314292.a n : ℤ) = A142088 (n + 1)

theorem P16642203838786314292.correct : P16642203838786314292.Spec := by
  intro n
  simp only [A142088, Nat.add_sub_cancel]

end A142088

/-! ## A142088.P11252131314394957293

`∩[A004622(n+1), A030431(n+1)]`
-/

namespace A142088.P11252131314394957293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004622 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030431 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142088.P11252131314394957293

namespace A142088

/-- `∩[A004622(n+1), A030431(n+1)]` -/
def P11252131314394957293.Spec : Prop :=
  ∀ n, (P11252131314394957293.a n : ℤ) = A142088 (n + 1)

end A142088

/-! ## A142088.P7197368030689389622

`∩[A004622(n+1), A045414(n+1)]`
-/

namespace A142088.P7197368030689389622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004622 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045414 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142088.P7197368030689389622

namespace A142088

/-- `∩[A004622(n+1), A045414(n+1)]` -/
def P7197368030689389622.Spec : Prop :=
  ∀ n, (P7197368030689389622.a n : ℤ) = A142088 (n + 1)

end A142088

/-! ## A142088.P12959167964003972631

`∩[A030431(n+1), A045462(n+1)]`
-/

namespace A142088.P12959167964003972631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030431 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045462 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142088.P12959167964003972631

namespace A142088

/-- `∩[A030431(n+1), A045462(n+1)]` -/
def P12959167964003972631.Spec : Prop :=
  ∀ n, (P12959167964003972631.a n : ℤ) = A142088 (n + 1)

end A142088

/-! ## A142088.P3592601950026052424

`∩[A030431(n+1), A045471(n+1)]`
-/

namespace A142088.P3592601950026052424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030431 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045471 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142088.P3592601950026052424

namespace A142088

/-- `∩[A030431(n+1), A045471(n+1)]` -/
def P3592601950026052424.Spec : Prop :=
  ∀ n, (P3592601950026052424.a n : ℤ) = A142088 (n + 1)

end A142088

/-! ## A142088.P15187387484609667080

`∩[A045414(n+1), A045462(n+1)]`
-/

namespace A142088.P15187387484609667080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045414 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045462 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142088.P15187387484609667080

namespace A142088

/-- `∩[A045414(n+1), A045462(n+1)]` -/
def P15187387484609667080.Spec : Prop :=
  ∀ n, (P15187387484609667080.a n : ℤ) = A142088 (n + 1)

end A142088

/-! ## A142088.P5641271168777987741

`∩[A045414(n+1), A045471(n+1)]`
-/

namespace A142088.P5641271168777987741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045414 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045471 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142088.P5641271168777987741

namespace A142088

/-- `∩[A045414(n+1), A045471(n+1)]` -/
def P5641271168777987741.Spec : Prop :=
  ∀ n, (P5641271168777987741.a n : ℤ) = A142088 (n + 1)

end A142088

/-! ## A142088.P1064374233642168784

`∩[A004617(n+1), A045462(n+1)]`
-/

namespace A142088.P1064374233642168784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004617 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045462 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142088.P1064374233642168784

namespace A142088

/-- `∩[A004617(n+1), A045462(n+1)]` -/
def P1064374233642168784.Spec : Prop :=
  ∀ n, (P1064374233642168784.a n : ℤ) = A142088 (n + 1)

end A142088

/-! ## A142088.P16681536966596789632

`∩[A004617(n+1), A045471(n+1)]`
-/

namespace A142088.P16681536966596789632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004617 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045471 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142088.P16681536966596789632

namespace A142088

/-- `∩[A004617(n+1), A045471(n+1)]` -/
def P16681536966596789632.Spec : Prop :=
  ∀ n, (P16681536966596789632.a n : ℤ) = A142088 (n + 1)

end A142088

/-! ## A142088.P7337779598506588590

`∩[A030431(n+1), A358053(n+1)-2]`
-/

namespace A142088.P7337779598506588590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030431 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358053 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142088.P7337779598506588590

namespace A142088

/-- `∩[A030431(n+1), A358053(n+1)-2]` -/
def P7337779598506588590.Spec : Prop :=
  ∀ n, (P7337779598506588590.a n : ℤ) = A142088 (n + 1)

end A142088

/-! ## A142088.P10015976898663466747

`∩[A045414(n+1), A358053(n+1)-2]`
-/

namespace A142088.P10015976898663466747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045414 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358053 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142088.P10015976898663466747

namespace A142088

/-- `∩[A045414(n+1), A358053(n+1)-2]` -/
def P10015976898663466747.Spec : Prop :=
  ∀ n, (P10015976898663466747.a n : ℤ) = A142088 (n + 1)

end A142088

/-! ## A142088.P15989637652069868796

`∩[A030431(n+1), A063230(n+1)]`
-/

namespace A142088.P15989637652069868796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030431 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063230 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142088.P15989637652069868796

namespace A142088

/-- `∩[A030431(n+1), A063230(n+1)]` -/
def P15989637652069868796.Spec : Prop :=
  ∀ n, (P15989637652069868796.a n : ℤ) = A142088 (n + 1)

end A142088

/-! ## A142088.P14343056338640066174

`∩[A045351(n+1), A063230(n+1)]`
-/

namespace A142088.P14343056338640066174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045351 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063230 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142088.P14343056338640066174

namespace A142088

/-- `∩[A045351(n+1), A063230(n+1)]` -/
def P14343056338640066174.Spec : Prop :=
  ∀ n, (P14343056338640066174.a n : ℤ) = A142088 (n + 1)

end A142088

/-! ## A142088.P4902889217329194763

`∩[A045363(n+1), A063230(n+1)]`
-/

namespace A142088.P4902889217329194763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045363 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063230 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142088.P4902889217329194763

namespace A142088

/-- `∩[A045363(n+1), A063230(n+1)]` -/
def P4902889217329194763.Spec : Prop :=
  ∀ n, (P4902889217329194763.a n : ℤ) = A142088 (n + 1)

end A142088

/-! ## A142088.P13062409602257441222

`∩[A045374(n+1), A063230(n+1)]`
-/

namespace A142088.P13062409602257441222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045374 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063230 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142088.P13062409602257441222

namespace A142088

/-- `∩[A045374(n+1), A063230(n+1)]` -/
def P13062409602257441222.Spec : Prop :=
  ∀ n, (P13062409602257441222.a n : ℤ) = A142088 (n + 1)

end A142088

/-! ## A142088.P106451232324199702

`∩[A045387(n+1), A063230(n+1)]`
-/

namespace A142088.P106451232324199702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045387 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063230 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142088.P106451232324199702

namespace A142088

/-- `∩[A045387(n+1), A063230(n+1)]` -/
def P106451232324199702.Spec : Prop :=
  ∀ n, (P106451232324199702.a n : ℤ) = A142088 (n + 1)

end A142088

/-! ## A142088.P12588941097611141043

`∩[A045414(n+1), A063230(n+1)]`
-/

namespace A142088.P12588941097611141043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045414 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063230 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142088.P12588941097611141043

namespace A142088

/-- `∩[A045414(n+1), A063230(n+1)]` -/
def P12588941097611141043.Spec : Prop :=
  ∀ n, (P12588941097611141043.a n : ℤ) = A142088 (n + 1)

end A142088

/-! ## A142088.P12314659429170659765

`∩[A045441(n+1), A063230(n+1)]`
-/

namespace A142088.P12314659429170659765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045441 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063230 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142088.P12314659429170659765

namespace A142088

/-- `∩[A045441(n+1), A063230(n+1)]` -/
def P12314659429170659765.Spec : Prop :=
  ∀ n, (P12314659429170659765.a n : ℤ) = A142088 (n + 1)

end A142088

/-! ## A142088.P3177864043891330739

`∩[A045452(n+1), A063230(n+1)]`
-/

namespace A142088.P3177864043891330739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045452 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063230 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142088.P3177864043891330739

namespace A142088

/-- `∩[A045452(n+1), A063230(n+1)]` -/
def P3177864043891330739.Spec : Prop :=
  ∀ n, (P3177864043891330739.a n : ℤ) = A142088 (n + 1)

end A142088

/-! ## A142088.P974183580204739714

`∩[A045462(n+1), A063230(n+1)]`
-/

namespace A142088.P974183580204739714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045462 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063230 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142088.P974183580204739714

namespace A142088

/-- `∩[A045462(n+1), A063230(n+1)]` -/
def P974183580204739714.Spec : Prop :=
  ∀ n, (P974183580204739714.a n : ℤ) = A142088 (n + 1)

end A142088

/-!
# A142089: Primes congruent to 19 mod 35.

The programs for A142089, the canonical program `A142089.P9481183596839956720` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142089 has offset 1).

The definition of A142089 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142089.P9481183596839956720

`∪[A140843(n+1), A141866(n+1)]`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A142089

/-- `∪[A140843(n+1), A141866(n+1)]` -/
def P9481183596839956720.Spec : Prop :=
  ∀ n, (P9481183596839956720.a n : ℤ) = A142089 (n + 1)

theorem P9481183596839956720.correct : P9481183596839956720.Spec := by
  intro n
  simp only [A142089, Nat.add_sub_cancel]

end A142089

/-! ## A142089.P18016185812385899142

`p?[35*n+19]`
-/

namespace A142089.P18016185812385899142
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  35 * n + 19

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142089.P18016185812385899142

namespace A142089

/-- `p?[35*n+19]` -/
def P18016185812385899142.Spec : Prop :=
  ∀ n, (P18016185812385899142.a n : ℤ) = A142089 (n + 1)

end A142089

/-! ## A142089.P13502853465929878638

`or(1, p?[35*n-51])`
-/

namespace A142089.P13502853465929878638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (35 * n : ℤ) - 51

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A142089.P13502853465929878638

namespace A142089

/-- `or(1, p?[35*n-51])` -/
def P13502853465929878638.Spec : Prop :=
  ∀ n, P13502853465929878638.a n = A142089 (n + 1)

end A142089

/-! ## A142089.P11634360211684733848

`∏{p}[p?[35*n-51], #]`
-/

namespace A142089.P11634360211684733848
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (35 * n : ℤ) - 51

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A142089.P11634360211684733848

namespace A142089

/-- `∏{p}[p?[35*n-51], #]` -/
def P11634360211684733848.Spec : Prop :=
  ∀ n, (P11634360211684733848.a n : ℤ) = A142089 (n + 1)

end A142089

/-! ## A142089.P8924162875775986364

`∩[A030433(n+1), A045447(n+1)]`
-/

namespace A142089.P8924162875775986364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030433 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045447 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142089.P8924162875775986364

namespace A142089

/-- `∩[A030433(n+1), A045447(n+1)]` -/
def P8924162875775986364.Spec : Prop :=
  ∀ n, (P8924162875775986364.a n : ℤ) = A142089 (n + 1)

end A142089

/-! ## A142089.P1707534506637215347

`∩[A030433(n+1), A045458(n+1)]`
-/

namespace A142089.P1707534506637215347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030433 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045458 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142089.P1707534506637215347

namespace A142089

/-- `∩[A030433(n+1), A045458(n+1)]` -/
def P1707534506637215347.Spec : Prop :=
  ∀ n, (P1707534506637215347.a n : ℤ) = A142089 (n + 1)

end A142089

/-! ## A142089.P6706306614015344951

`∩[A045447(n+1), A327753(n+1)]`
-/

namespace A142089.P6706306614015344951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045447 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327753 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142089.P6706306614015344951

namespace A142089

/-- `∩[A045447(n+1), A327753(n+1)]` -/
def P6706306614015344951.Spec : Prop :=
  ∀ n, (P6706306614015344951.a n : ℤ) = A142089 (n + 1)

end A142089

/-! ## A142089.P15240157276768828212

`∩[A045458(n+1), A327753(n+1)]`
-/

namespace A142089.P15240157276768828212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045458 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327753 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142089.P15240157276768828212

namespace A142089

/-- `∩[A045458(n+1), A327753(n+1)]` -/
def P15240157276768828212.Spec : Prop :=
  ∀ n, (P15240157276768828212.a n : ℤ) = A142089 (n + 1)

end A142089

/-! ## A142089.P1033727170846113144

`∩[A004623(n+1), A030433(n+1)]`
-/

namespace A142089.P1033727170846113144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004623 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030433 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142089.P1033727170846113144

namespace A142089

/-- `∩[A004623(n+1), A030433(n+1)]` -/
def P1033727170846113144.Spec : Prop :=
  ∀ n, (P1033727170846113144.a n : ℤ) = A142089 (n + 1)

end A142089

/-! ## A142089.P6114731701216514819

`∩[A004618(n+1), A045447(n+1)]`
-/

namespace A142089.P6114731701216514819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004618 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045447 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142089.P6114731701216514819

namespace A142089

/-- `∩[A004618(n+1), A045447(n+1)]` -/
def P6114731701216514819.Spec : Prop :=
  ∀ n, (P6114731701216514819.a n : ℤ) = A142089 (n + 1)

end A142089

/-! ## A142089.P15140924041475052269

`∩[A004618(n+1), A045458(n+1)]`
-/

namespace A142089.P15140924041475052269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004618 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045458 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142089.P15140924041475052269

namespace A142089

/-- `∩[A004618(n+1), A045458(n+1)]` -/
def P15140924041475052269.Spec : Prop :=
  ∀ n, (P15140924041475052269.a n : ℤ) = A142089 (n + 1)

end A142089

/-! ## A142089.P12106346399655692447

`∩[A161705(2*n+1)-n, A045447(n+2)]`
-/

namespace A142089.P12106346399655692447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161705 (2 * n + 1) - (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045447 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142089.P12106346399655692447

namespace A142089

/-- `∩[A161705(2*n+1)-n, A045447(n+2)]` -/
def P12106346399655692447.Spec : Prop :=
  ∀ n, (P12106346399655692447.a n : ℤ) = A142089 (n + 1)

end A142089

/-! ## A142089.P1791675964892001494

`∩[A161705(2*n+1)-n, A045457(n+2)]`
-/

namespace A142089.P1791675964892001494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161705 (2 * n + 1) - (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045457 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142089.P1791675964892001494

namespace A142089

/-- `∩[A161705(2*n+1)-n, A045457(n+2)]` -/
def P1791675964892001494.Spec : Prop :=
  ∀ n, (P1791675964892001494.a n : ℤ) = A142089 (n + 1)

end A142089

/-! ## A142089.P8952219075201112274

`∩[A161705(2*n+1)-n, A045458(n+2)]`
-/

namespace A142089.P8952219075201112274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161705 (2 * n + 1) - (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045458 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142089.P8952219075201112274

namespace A142089

/-- `∩[A161705(2*n+1)-n, A045458(n+2)]` -/
def P8952219075201112274.Spec : Prop :=
  ∀ n, (P8952219075201112274.a n : ℤ) = A142089 (n + 1)

end A142089

/-! ## A142089.P7441647167049066484

`∩[A045441(n+1), A063230(n+1)+2]`
-/

namespace A142089.P7441647167049066484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045441 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063230 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142089.P7441647167049066484

namespace A142089

/-- `∩[A045441(n+1), A063230(n+1)+2]` -/
def P7441647167049066484.Spec : Prop :=
  ∀ n, (P7441647167049066484.a n : ℤ) = A142089 (n + 1)

end A142089

/-! ## A142089.P6354267128623405200

`∩[A045452(n+1), A063230(n+1)+2]`
-/

namespace A142089.P6354267128623405200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045452 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063230 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142089.P6354267128623405200

namespace A142089

/-- `∩[A045452(n+1), A063230(n+1)+2]` -/
def P6354267128623405200.Spec : Prop :=
  ∀ n, (P6354267128623405200.a n : ℤ) = A142089 (n + 1)

end A142089

/-! ## A142089.P10004387606069456502

`∩[A063230(2*(n+1))+2, A045401(n+2)]`
-/

namespace A142089.P10004387606069456502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063230 (2 * (n + 1)) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045401 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142089.P10004387606069456502

namespace A142089

/-- `∩[A063230(2*(n+1))+2, A045401(n+2)]` -/
def P10004387606069456502.Spec : Prop :=
  ∀ n, (P10004387606069456502.a n : ℤ) = A142089 (n + 1)

end A142089

/-! ## A142089.P8475319546697522294

`∩[A063230(2*(n+1))+2, A045416(n+2)]`
-/

namespace A142089.P8475319546697522294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063230 (2 * (n + 1)) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045416 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142089.P8475319546697522294

namespace A142089

/-- `∩[A063230(2*(n+1))+2, A045416(n+2)]` -/
def P8475319546697522294.Spec : Prop :=
  ∀ n, (P8475319546697522294.a n : ℤ) = A142089 (n + 1)

end A142089

/-! ## A142089.P4518983126931647848

`record[A020639(35*(n+1)-16)]`
-/

namespace A142089.P4518983126931647848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (35 * (n + 1) - 16)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142089.P4518983126931647848

namespace A142089

/-- `record[A020639(35*(n+1)-16)]` -/
def P4518983126931647848.Spec : Prop :=
  ∀ n, P4518983126931647848.a n = A142089 (n + 1)

end A142089

/-! ## A142089.P4754858761978156225

`∩[A045447(n+1), A017377(n)]`
-/

namespace A142089.P4754858761978156225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045447 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017377 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142089.P4754858761978156225

namespace A142089

/-- `∩[A045447(n+1), A017377(n)]` -/
def P4754858761978156225.Spec : Prop :=
  ∀ n, (P4754858761978156225.a n : ℤ) = A142089 (n + 1)

end A142089

/-!
# A142090: Primes congruent to 22 mod 35.

The programs for A142090, the canonical program `A142090.P301763299342873140` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142090 has offset 1).

The definition of A142090 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3277 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142090.P301763299342873140

`p?[35*n-13]`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A142090

/-- `p?[35*n-13]` -/
def P301763299342873140.Spec : Prop :=
  ∀ n, P301763299342873140.a n = A142090 (n + 1)

theorem P301763299342873140.correct : P301763299342873140.Spec := by
  intro n
  simp only [A142090, Nat.add_sub_cancel]

end A142090

/-! ## A142090.P9740287359587278496

`∩[A004619(n+1), A030432(n+1)]`
-/

namespace A142090.P9740287359587278496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004619 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030432 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142090.P9740287359587278496

namespace A142090

/-- `∩[A004619(n+1), A030432(n+1)]` -/
def P9740287359587278496.Spec : Prop :=
  ∀ n, (P9740287359587278496.a n : ℤ) = A142090 (n + 1)

end A142090

/-! ## A142090.P2678826533491610369

`∩[A004619(n+1), A045357(n+1)]`
-/

namespace A142090.P2678826533491610369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004619 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045357 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142090.P2678826533491610369

namespace A142090

/-- `∩[A004619(n+1), A045357(n+1)]` -/
def P2678826533491610369.Spec : Prop :=
  ∀ n, (P2678826533491610369.a n : ℤ) = A142090 (n + 1)

end A142090

/-! ## A142090.P15782504956931077113

`∩[A004619(n+1), A045380(n+1)]`
-/

namespace A142090.P15782504956931077113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004619 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045380 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142090.P15782504956931077113

namespace A142090

/-- `∩[A004619(n+1), A045380(n+1)]` -/
def P15782504956931077113.Spec : Prop :=
  ∀ n, (P15782504956931077113.a n : ℤ) = A142090 (n + 1)

end A142090

/-! ## A142090.P358036260189553526

`∩[A030432(n+1), A140444(n+1)]`
-/

namespace A142090.P358036260189553526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030432 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140444 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142090.P358036260189553526

namespace A142090

/-- `∩[A030432(n+1), A140444(n+1)]` -/
def P358036260189553526.Spec : Prop :=
  ∀ n, (P358036260189553526.a n : ℤ) = A142090 (n + 1)

end A142090

/-! ## A142090.P3376963312115981023

`∩[A045357(n+1), A140444(n+1)]`
-/

namespace A142090.P3376963312115981023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045357 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140444 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142090.P3376963312115981023

namespace A142090

/-- `∩[A045357(n+1), A140444(n+1)]` -/
def P3376963312115981023.Spec : Prop :=
  ∀ n, (P3376963312115981023.a n : ℤ) = A142090 (n + 1)

end A142090

/-! ## A142090.P15858518324754818190

`∩[A045380(n+1), A140444(n+1)]`
-/

namespace A142090.P15858518324754818190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045380 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140444 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142090.P15858518324754818190

namespace A142090

/-- `∩[A045380(n+1), A140444(n+1)]` -/
def P15858518324754818190.Spec : Prop :=
  ∀ n, (P15858518324754818190.a n : ℤ) = A142090 (n + 1)

end A142090

/-! ## A142090.P3800802786620154261

`∩[A090652(n+1), A140444(n+1)]`
-/

namespace A142090.P3800802786620154261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090652 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140444 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142090.P3800802786620154261

namespace A142090

/-- `∩[A090652(n+1), A140444(n+1)]` -/
def P3800802786620154261.Spec : Prop :=
  ∀ n, (P3800802786620154261.a n : ℤ) = A142090 (n + 1)

end A142090

/-! ## A142090.P14420351882508513146

`∩[A030432(n+1), A131877(n)]`
-/

namespace A142090.P14420351882508513146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030432 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131877 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142090.P14420351882508513146

namespace A142090

/-- `∩[A030432(n+1), A131877(n)]` -/
def P14420351882508513146.Spec : Prop :=
  ∀ n, (P14420351882508513146.a n : ℤ) = A142090 (n + 1)

end A142090

/-! ## A142090.P4844934241572520544

`∩[A045357(n+1), A131877(n)]`
-/

namespace A142090.P4844934241572520544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045357 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131877 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142090.P4844934241572520544

namespace A142090

/-- `∩[A045357(n+1), A131877(n)]` -/
def P4844934241572520544.Spec : Prop :=
  ∀ n, (P4844934241572520544.a n : ℤ) = A142090 (n + 1)

end A142090

/-! ## A142090.P16777090854351594597

`∩[A045380(n+1), A131877(n)]`
-/

namespace A142090.P16777090854351594597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045380 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131877 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142090.P16777090854351594597

namespace A142090

/-- `∩[A045380(n+1), A131877(n)]` -/
def P16777090854351594597.Spec : Prop :=
  ∀ n, (P16777090854351594597.a n : ℤ) = A142090 (n + 1)

end A142090

/-! ## A142090.P12880295666791741790

`∩[A030432(n+1), A358053(n+1)+2]`
-/

namespace A142090.P12880295666791741790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030432 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358053 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142090.P12880295666791741790

namespace A142090

/-- `∩[A030432(n+1), A358053(n+1)+2]` -/
def P12880295666791741790.Spec : Prop :=
  ∀ n, (P12880295666791741790.a n : ℤ) = A142090 (n + 1)

end A142090

/-! ## A142090.P9890087972967229014

`∩[A045357(n+1), A358053(n+1)+2]`
-/

namespace A142090.P9890087972967229014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045357 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358053 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142090.P9890087972967229014

namespace A142090

/-- `∩[A045357(n+1), A358053(n+1)+2]` -/
def P9890087972967229014.Spec : Prop :=
  ∀ n, (P9890087972967229014.a n : ℤ) = A142090 (n + 1)

end A142090

/-! ## A142090.P6729643153500582664

`∩[A045380(n+1), A358053(n+1)+2]`
-/

namespace A142090.P6729643153500582664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045380 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358053 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142090.P6729643153500582664

namespace A142090

/-- `∩[A045380(n+1), A358053(n+1)+2]` -/
def P6729643153500582664.Spec : Prop :=
  ∀ n, (P6729643153500582664.a n : ℤ) = A142090 (n + 1)

end A142090

/-! ## A142090.P11264463184673472930

`∩[A004616(n+1), A140444(n+1)]`
-/

namespace A142090.P11264463184673472930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004616 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140444 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142090.P11264463184673472930

namespace A142090

/-- `∩[A004616(n+1), A140444(n+1)]` -/
def P11264463184673472930.Spec : Prop :=
  ∀ n, (P11264463184673472930.a n : ℤ) = A142090 (n + 1)

end A142090

/-! ## A142090.P14316620878750775014

`∩[A140444(n+1), A017353(n)]`
-/

namespace A142090.P14316620878750775014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140444 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017353 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142090.P14316620878750775014

namespace A142090

/-- `∩[A140444(n+1), A017353(n)]` -/
def P14316620878750775014.Spec : Prop :=
  ∀ n, (P14316620878750775014.a n : ℤ) = A142090 (n + 1)

end A142090

/-! ## A142090.P2091655948349985268

`∩[A140444(n+1), A160912(n+1)]`
-/

namespace A142090.P2091655948349985268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140444 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160912 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142090.P2091655948349985268

namespace A142090

/-- `∩[A140444(n+1), A160912(n+1)]` -/
def P2091655948349985268.Spec : Prop :=
  ∀ n, (P2091655948349985268.a n : ℤ) = A142090 (n + 1)

end A142090

/-! ## A142090.P2864800404569173660

`∩[A140444(n+1), A277594(n+1)]`
-/

namespace A142090.P2864800404569173660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140444 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277594 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142090.P2864800404569173660

namespace A142090

/-- `∩[A140444(n+1), A277594(n+1)]` -/
def P2864800404569173660.Spec : Prop :=
  ∀ n, (P2864800404569173660.a n : ℤ) = A142090 (n + 1)

end A142090

/-! ## A142090.P7538628895531353379

`∩[A030432(n+1), A016993(n)]`
-/

namespace A142090.P7538628895531353379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030432 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016993 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142090.P7538628895531353379

namespace A142090

/-- `∩[A030432(n+1), A016993(n)]` -/
def P7538628895531353379.Spec : Prop :=
  ∀ n, (P7538628895531353379.a n : ℤ) = A142090 (n + 1)

end A142090

/-! ## A142090.P13753011932221033115

`∩[A045357(n+1), A016993(n)]`
-/

namespace A142090.P13753011932221033115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045357 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016993 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142090.P13753011932221033115

namespace A142090

/-- `∩[A045357(n+1), A016993(n)]` -/
def P13753011932221033115.Spec : Prop :=
  ∀ n, (P13753011932221033115.a n : ℤ) = A142090 (n + 1)

end A142090

/-!
# A142091: Primes congruent to 23 mod 35.

The programs for A142091, the canonical program `A142091.P5312883380898051111` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142091 has offset 1).

The definition of A142091 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3258 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142091.P5312883380898051111

`p?[35*n-12]`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A142091

/-- `p?[35*n-12]` -/
def P5312883380898051111.Spec : Prop :=
  ∀ n, P5312883380898051111.a n = A142091 (n + 1)

theorem P5312883380898051111.correct : P5312883380898051111.Spec := by
  intro n
  simp only [A142091, Nat.add_sub_cancel]

end A142091

/-! ## A142091.P11054661401186686683

`∩[A030431(n+1), A045383(n+1)]`
-/

namespace A142091.P11054661401186686683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030431 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045383 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142091.P11054661401186686683

namespace A142091

/-- `∩[A030431(n+1), A045383(n+1)]` -/
def P11054661401186686683.Spec : Prop :=
  ∀ n, (P11054661401186686683.a n : ℤ) = A142091 (n + 1)

end A142091

/-! ## A142091.P18213636082955252097

`∩[A030431(n+1), A045392(n+1)]`
-/

namespace A142091.P18213636082955252097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030431 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045392 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142091.P18213636082955252097

namespace A142091

/-- `∩[A030431(n+1), A045392(n+1)]` -/
def P18213636082955252097.Spec : Prop :=
  ∀ n, (P18213636082955252097.a n : ℤ) = A142091 (n + 1)

end A142091

/-! ## A142091.P2396541268160607062

`∩[A045383(n+1), A045414(n+1)]`
-/

namespace A142091.P2396541268160607062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045383 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045414 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142091.P2396541268160607062

namespace A142091

/-- `∩[A045383(n+1), A045414(n+1)]` -/
def P2396541268160607062.Spec : Prop :=
  ∀ n, (P2396541268160607062.a n : ℤ) = A142091 (n + 1)

end A142091

/-! ## A142091.P10843697309949147968

`∩[A045392(n+1), A045414(n+1)]`
-/

namespace A142091.P10843697309949147968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045392 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045414 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142091.P10843697309949147968

namespace A142091

/-- `∩[A045392(n+1), A045414(n+1)]` -/
def P10843697309949147968.Spec : Prop :=
  ∀ n, (P10843697309949147968.a n : ℤ) = A142091 (n + 1)

end A142091

/-! ## A142091.P5105316828656037783

`∩[A030431(n+1), A140442(n+1)]`
-/

namespace A142091.P5105316828656037783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030431 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140442 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142091.P5105316828656037783

namespace A142091

/-- `∩[A030431(n+1), A140442(n+1)]` -/
def P5105316828656037783.Spec : Prop :=
  ∀ n, (P5105316828656037783.a n : ℤ) = A142091 (n + 1)

end A142091

/-! ## A142091.P11484475507313452544

`∩[A045414(n+1), A140442(n+1)]`
-/

namespace A142091.P11484475507313452544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045414 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140442 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142091.P11484475507313452544

namespace A142091

/-- `∩[A045414(n+1), A140442(n+1)]` -/
def P11484475507313452544.Spec : Prop :=
  ∀ n, (P11484475507313452544.a n : ℤ) = A142091 (n + 1)

end A142091

/-! ## A142091.P10971196340616628901

`∩[A004620(n+1), A030431(n+1)]`
-/

namespace A142091.P10971196340616628901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004620 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030431 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142091.P10971196340616628901

namespace A142091

/-- `∩[A004620(n+1), A030431(n+1)]` -/
def P10971196340616628901.Spec : Prop :=
  ∀ n, (P10971196340616628901.a n : ℤ) = A142091 (n + 1)

end A142091

/-! ## A142091.P9440947109975043908

`∩[A004620(n+1), A045414(n+1)]`
-/

namespace A142091.P9440947109975043908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004620 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045414 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142091.P9440947109975043908

namespace A142091

/-- `∩[A004620(n+1), A045414(n+1)]` -/
def P9440947109975043908.Spec : Prop :=
  ∀ n, (P9440947109975043908.a n : ℤ) = A142091 (n + 1)

end A142091

/-! ## A142091.P7646754090284598117

`A000027(p?[A057539(n+1)-6])`
-/

namespace A142091.P7646754090284598117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057539 (n + 1) - 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142091.P7646754090284598117

namespace A142091

/-- `A000027(p?[A057539(n+1)-6])` -/
def P7646754090284598117.Spec : Prop :=
  ∀ n, P7646754090284598117.a n = A142091 (n + 1)

end A142091

/-! ## A142091.P17450027193257598406

`p?[A057539(n+1)-6]/gcd(n+1, A014601(n))`
-/

namespace A142091.P17450027193257598406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057539 (n + 1) - 6

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / (Int.gcd (n + 1 : ℤ) (A014601 n) : ℚ)

end

end A142091.P17450027193257598406

namespace A142091

/-- `p?[A057539(n+1)-6]/gcd(n+1, A014601(n))` -/
def P17450027193257598406.Spec : Prop :=
  ∀ n, P17450027193257598406.a n = (A142091 (n + 1) : ℚ)

end A142091

/-! ## A142091.P2549032133520512232

`∩[A004617(n+1), A045383(n+1)]`
-/

namespace A142091.P2549032133520512232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004617 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045383 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142091.P2549032133520512232

namespace A142091

/-- `∩[A004617(n+1), A045383(n+1)]` -/
def P2549032133520512232.Spec : Prop :=
  ∀ n, (P2549032133520512232.a n : ℤ) = A142091 (n + 1)

end A142091

/-! ## A142091.P9485733930540289913

`∩[A004617(n+1), A045392(n+1)]`
-/

namespace A142091.P9485733930540289913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004617 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045392 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142091.P9485733930540289913

namespace A142091

/-- `∩[A004617(n+1), A045392(n+1)]` -/
def P9485733930540289913.Spec : Prop :=
  ∀ n, (P9485733930540289913.a n : ℤ) = A142091 (n + 1)

end A142091

/-! ## A142091.P14569612102387217605

`∩[A004617(n+1), A140442(n+1)]`
-/

namespace A142091.P14569612102387217605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004617 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140442 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142091.P14569612102387217605

namespace A142091

/-- `∩[A004617(n+1), A140442(n+1)]` -/
def P14569612102387217605.Spec : Prop :=
  ∀ n, (P14569612102387217605.a n : ℤ) = A142091 (n + 1)

end A142091

/-! ## A142091.P8011117975640135332

`∩[A242215(2*n+1)-n, A030431(n+2)]`
-/

namespace A142091.P8011117975640135332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242215 (2 * n + 1) - (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030431 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142091.P8011117975640135332

namespace A142091

/-- `∩[A242215(2*n+1)-n, A030431(n+2)]` -/
def P8011117975640135332.Spec : Prop :=
  ∀ n, (P8011117975640135332.a n : ℤ) = A142091 (n + 1)

end A142091

/-! ## A142091.P7663252476224462621

`∩[A242215(2*n+1)-n, A045383(n+2)]`
-/

namespace A142091.P7663252476224462621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242215 (2 * n + 1) - (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045383 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142091.P7663252476224462621

namespace A142091

/-- `∩[A242215(2*n+1)-n, A045383(n+2)]` -/
def P7663252476224462621.Spec : Prop :=
  ∀ n, (P7663252476224462621.a n : ℤ) = A142091 (n + 1)

end A142091

/-! ## A142091.P108662208351308613

`∩[A242215(2*n+1)-n, A045392(n+2)]`
-/

namespace A142091.P108662208351308613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242215 (2 * n + 1) - (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045392 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142091.P108662208351308613

namespace A142091

/-- `∩[A242215(2*n+1)-n, A045392(n+2)]` -/
def P108662208351308613.Spec : Prop :=
  ∀ n, (P108662208351308613.a n : ℤ) = A142091 (n + 1)

end A142091

/-! ## A142091.P1773365871815755325

`∩[A045383(n+1), A017305(n)]`
-/

namespace A142091.P1773365871815755325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045383 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017305 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142091.P1773365871815755325

namespace A142091

/-- `∩[A045383(n+1), A017305(n)]` -/
def P1773365871815755325.Spec : Prop :=
  ∀ n, (P1773365871815755325.a n : ℤ) = A142091 (n + 1)

end A142091

/-! ## A142091.P14931858286102010589

`∩[A045392(n+1), A017305(n)]`
-/

namespace A142091.P14931858286102010589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045392 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017305 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142091.P14931858286102010589

namespace A142091

/-- `∩[A045392(n+1), A017305(n)]` -/
def P14931858286102010589.Spec : Prop :=
  ∀ n, (P14931858286102010589.a n : ℤ) = A142091 (n + 1)

end A142091

/-! ## A142091.P18411354223413584770

`∩[A140442(n+1), A017305(n)]`
-/

namespace A142091.P18411354223413584770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140442 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017305 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142091.P18411354223413584770

namespace A142091

/-- `∩[A140442(n+1), A017305(n)]` -/
def P18411354223413584770.Spec : Prop :=
  ∀ n, (P18411354223413584770.a n : ℤ) = A142091 (n + 1)

end A142091

/-!
# A142092: Primes congruent to 24 mod 35.

The programs for A142092, the canonical program `A142092.P5017379542963769773` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142092 has offset 1).

The definition of A142092 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3259 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142092.P5017379542963769773

`p?[35*n-11]`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A142092

/-- `p?[35*n-11]` -/
def P5017379542963769773.Spec : Prop :=
  ∀ n, P5017379542963769773.a n = A142092 (n + 1)

theorem P5017379542963769773.correct : P5017379542963769773.Spec := by
  intro n
  simp only [A142092, Nat.add_sub_cancel]

end A142092

/-! ## A142092.P2241659420585410671

`or(1, p?[a(n-1)+35])` with `a(0)=24`
-/

namespace A142092.P2241659420585410671
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [24] fun n f1 =>
  f1 (n - 1) + 35

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A142092.P2241659420585410671

namespace A142092

/-- `or(1, p?[a(n-1)+35])` -/
def P2241659420585410671.Spec : Prop :=
  ∀ n, (P2241659420585410671.a n : ℤ) = A142092 (n + 1)

end A142092

/-! ## A142092.P15326358345702102379

`∩[A030433(n+1), A045425(n+1)]`
-/

namespace A142092.P15326358345702102379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030433 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045425 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142092.P15326358345702102379

namespace A142092

/-- `∩[A030433(n+1), A045425(n+1)]` -/
def P15326358345702102379.Spec : Prop :=
  ∀ n, (P15326358345702102379.a n : ℤ) = A142092 (n + 1)

end A142092

/-! ## A142092.P727249281631674954

`∩[A030433(n+1), A045437(n+1)]`
-/

namespace A142092.P727249281631674954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030433 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045437 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142092.P727249281631674954

namespace A142092

/-- `∩[A030433(n+1), A045437(n+1)]` -/
def P727249281631674954.Spec : Prop :=
  ∀ n, (P727249281631674954.a n : ℤ) = A142092 (n + 1)

end A142092

/-! ## A142092.P16652112229908563767

`∩[A045425(n+1), A045457(n+1)]`
-/

namespace A142092.P16652112229908563767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045425 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045457 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142092.P16652112229908563767

namespace A142092

/-- `∩[A045425(n+1), A045457(n+1)]` -/
def P16652112229908563767.Spec : Prop :=
  ∀ n, (P16652112229908563767.a n : ℤ) = A142092 (n + 1)

end A142092

/-! ## A142092.P2977262390891716755

`∩[A045437(n+1), A045457(n+1)]`
-/

namespace A142092.P2977262390891716755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045437 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045457 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142092.P2977262390891716755

namespace A142092

/-- `∩[A045437(n+1), A045457(n+1)]` -/
def P2977262390891716755.Spec : Prop :=
  ∀ n, (P2977262390891716755.a n : ℤ) = A142092 (n + 1)

end A142092

/-! ## A142092.P11527188870011285818

`∩[A045425(n+1), A327753(n+1)]`
-/

namespace A142092.P11527188870011285818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045425 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327753 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142092.P11527188870011285818

namespace A142092

/-- `∩[A045425(n+1), A327753(n+1)]` -/
def P11527188870011285818.Spec : Prop :=
  ∀ n, (P11527188870011285818.a n : ℤ) = A142092 (n + 1)

end A142092

/-! ## A142092.P10912436215107568871

`∩[A045437(n+1), A327753(n+1)]`
-/

namespace A142092.P10912436215107568871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045437 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327753 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142092.P10912436215107568871

namespace A142092

/-- `∩[A045437(n+1), A327753(n+1)]` -/
def P10912436215107568871.Spec : Prop :=
  ∀ n, (P10912436215107568871.a n : ℤ) = A142092 (n + 1)

end A142092

/-! ## A142092.P6440021369932509394

`∩[A004618(n+1), A045425(n+1)]`
-/

namespace A142092.P6440021369932509394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004618 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045425 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142092.P6440021369932509394

namespace A142092

/-- `∩[A004618(n+1), A045425(n+1)]` -/
def P6440021369932509394.Spec : Prop :=
  ∀ n, (P6440021369932509394.a n : ℤ) = A142092 (n + 1)

end A142092

/-! ## A142092.P1125800188316411870

`∩[A004618(n+1), A045437(n+1)]`
-/

namespace A142092.P1125800188316411870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004618 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045437 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142092.P1125800188316411870

namespace A142092

/-- `∩[A004618(n+1), A045437(n+1)]` -/
def P1125800188316411870.Spec : Prop :=
  ∀ n, (P1125800188316411870.a n : ℤ) = A142092 (n + 1)

end A142092

/-! ## A142092.P2551048156540693571

`∩[A004621(n+1), A030433(n+1)]`
-/

namespace A142092.P2551048156540693571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004621 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030433 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142092.P2551048156540693571

namespace A142092

/-- `∩[A004621(n+1), A030433(n+1)]` -/
def P2551048156540693571.Spec : Prop :=
  ∀ n, (P2551048156540693571.a n : ℤ) = A142092 (n + 1)

end A142092

/-! ## A142092.P13176371932530879936

`∩[A004621(n+1), A045457(n+1)]`
-/

namespace A142092.P13176371932530879936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004621 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045457 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142092.P13176371932530879936

namespace A142092

/-- `∩[A004621(n+1), A045457(n+1)]` -/
def P13176371932530879936.Spec : Prop :=
  ∀ n, (P13176371932530879936.a n : ℤ) = A142092 (n + 1)

end A142092

/-! ## A142092.P12364548671973994496

`∩[A030433(n+1), A131877(n)+2]`
-/

namespace A142092.P12364548671973994496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030433 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131877 n + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142092.P12364548671973994496

namespace A142092

/-- `∩[A030433(n+1), A131877(n)+2]` -/
def P12364548671973994496.Spec : Prop :=
  ∀ n, (P12364548671973994496.a n : ℤ) = A142092 (n + 1)

end A142092

/-! ## A142092.P5626167283788981296

`∩[A045457(n+1), A131877(n)+2]`
-/

namespace A142092.P5626167283788981296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045457 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131877 n + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142092.P5626167283788981296

namespace A142092

/-- `∩[A045457(n+1), A131877(n)+2]` -/
def P5626167283788981296.Spec : Prop :=
  ∀ n, (P5626167283788981296.a n : ℤ) = A142092 (n + 1)

end A142092

/-! ## A142092.P17907686177219938654

`∩[A045425(n+1), A017377(n)]`
-/

namespace A142092.P17907686177219938654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045425 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017377 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142092.P17907686177219938654

namespace A142092

/-- `∩[A045425(n+1), A017377(n)]` -/
def P17907686177219938654.Spec : Prop :=
  ∀ n, (P17907686177219938654.a n : ℤ) = A142092 (n + 1)

end A142092

/-! ## A142092.P11925013749193860477

`∩[A045437(n+1), A017377(n)]`
-/

namespace A142092.P11925013749193860477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045437 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017377 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142092.P11925013749193860477

namespace A142092

/-- `∩[A045437(n+1), A017377(n)]` -/
def P11925013749193860477.Spec : Prop :=
  ∀ n, (P11925013749193860477.a n : ℤ) = A142092 (n + 1)

end A142092

/-! ## A142092.P13347433196380165997

`record[A006530(5*A017041(n+1)-1)]`
-/

namespace A142092.P13347433196380165997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (5 * A017041 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142092.P13347433196380165997

namespace A142092

/-- `record[A006530(5*A017041(n+1)-1)]` -/
def P13347433196380165997.Spec : Prop :=
  ∀ n, P13347433196380165997.a n = A142092 (n + 1)

end A142092

/-! ## A142092.P14052466845888831734

`∩[A045425(n+1), A277596(n+1)]`
-/

namespace A142092.P14052466845888831734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045425 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277596 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142092.P14052466845888831734

namespace A142092

/-- `∩[A045425(n+1), A277596(n+1)]` -/
def P14052466845888831734.Spec : Prop :=
  ∀ n, (P14052466845888831734.a n : ℤ) = A142092 (n + 1)

end A142092

/-! ## A142092.P1325257336418674828

`∩[A045437(n+1), A277596(n+1)]`
-/

namespace A142092.P1325257336418674828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045437 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277596 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142092.P1325257336418674828

namespace A142092

/-- `∩[A045437(n+1), A277596(n+1)]` -/
def P1325257336418674828.Spec : Prop :=
  ∀ n, (P1325257336418674828.a n : ℤ) = A142092 (n + 1)

end A142092

/-! ## A142092.P1676920348416177646

`∩[A030433(n+1), A017017(n)]`
-/

namespace A142092.P1676920348416177646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030433 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017017 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142092.P1676920348416177646

namespace A142092

/-- `∩[A030433(n+1), A017017(n)]` -/
def P1676920348416177646.Spec : Prop :=
  ∀ n, (P1676920348416177646.a n : ℤ) = A142092 (n + 1)

end A142092

/-!
# A142093: Primes congruent to 26 mod 35.

The programs for A142093, the canonical program `A142093.P5613027184552983238` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142093 has offset 1).

The definition of A142093 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3273 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142093.P5613027184552983238

`p?[35*n-9]`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A142093

/-- `p?[35*n-9]` -/
def P5613027184552983238.Spec : Prop :=
  ∀ n, P5613027184552983238.a n = A142093 (n + 1)

theorem P5613027184552983238.correct : P5613027184552983238.Spec := by
  intro n
  simp only [A142093, Nat.add_sub_cancel]

end A142093

/-! ## A142093.P5741017148542820622

`∩[A045447(n+1), A089721(n+1)]`
-/

namespace A142093.P5741017148542820622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045447 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089721 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142093.P5741017148542820622

namespace A142093

/-- `∩[A045447(n+1), A089721(n+1)]` -/
def P5741017148542820622.Spec : Prop :=
  ∀ n, (P5741017148542820622.a n : ℤ) = A142093 (n + 1)

end A142093

/-! ## A142093.P2196936380209204421

`∩[A045458(n+1), A089721(n+1)]`
-/

namespace A142093.P2196936380209204421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045458 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089721 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142093.P2196936380209204421

namespace A142093

/-- `∩[A045458(n+1), A089721(n+1)]` -/
def P2196936380209204421.Spec : Prop :=
  ∀ n, (P2196936380209204421.a n : ℤ) = A142093 (n + 1)

end A142093

/-! ## A142093.P4785375954120518608

`∩[A030430(n+1), A045447(n+1)]`
-/

namespace A142093.P4785375954120518608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030430 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045447 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142093.P4785375954120518608

namespace A142093

/-- `∩[A030430(n+1), A045447(n+1)]` -/
def P4785375954120518608.Spec : Prop :=
  ∀ n, (P4785375954120518608.a n : ℤ) = A142093 (n + 1)

end A142093

/-! ## A142093.P5351530121383259094

`∩[A030430(n+1), A045458(n+1)]`
-/

namespace A142093.P5351530121383259094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030430 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045458 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142093.P5351530121383259094

namespace A142093

/-- `∩[A030430(n+1), A045458(n+1)]` -/
def P5351530121383259094.Spec : Prop :=
  ∀ n, (P5351530121383259094.a n : ℤ) = A142093 (n + 1)

end A142093

/-! ## A142093.P15571599226341487224

`∩[A045447(n+1), A090756(n+1)]`
-/

namespace A142093.P15571599226341487224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045447 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090756 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142093.P15571599226341487224

namespace A142093

/-- `∩[A045447(n+1), A090756(n+1)]` -/
def P15571599226341487224.Spec : Prop :=
  ∀ n, (P15571599226341487224.a n : ℤ) = A142093 (n + 1)

end A142093

/-! ## A142093.P13167911753598157187

`∩[A045458(n+1), A090756(n+1)]`
-/

namespace A142093.P13167911753598157187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045458 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090756 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142093.P13167911753598157187

namespace A142093

/-- `∩[A045458(n+1), A090756(n+1)]` -/
def P13167911753598157187.Spec : Prop :=
  ∀ n, (P13167911753598157187.a n : ℤ) = A142093 (n + 1)

end A142093

/-! ## A142093.P6910910598737334360

`∩[A045447(n+1), A327752(n+1)]`
-/

namespace A142093.P6910910598737334360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045447 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327752 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142093.P6910910598737334360

namespace A142093

/-- `∩[A045447(n+1), A327752(n+1)]` -/
def P6910910598737334360.Spec : Prop :=
  ∀ n, (P6910910598737334360.a n : ℤ) = A142093 (n + 1)

end A142093

/-! ## A142093.P11405108793029789895

`∩[A045458(n+1), A327752(n+1)]`
-/

namespace A142093.P11405108793029789895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045458 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327752 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142093.P11405108793029789895

namespace A142093

/-- `∩[A045458(n+1), A327752(n+1)]` -/
def P11405108793029789895.Spec : Prop :=
  ∀ n, (P11405108793029789895.a n : ℤ) = A142093 (n + 1)

end A142093

/-! ## A142093.P18078154814630933091

`∩[A004623(n+1), A030430(n+1)]`
-/

namespace A142093.P18078154814630933091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004623 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030430 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142093.P18078154814630933091

namespace A142093

/-- `∩[A004623(n+1), A030430(n+1)]` -/
def P18078154814630933091.Spec : Prop :=
  ∀ n, (P18078154814630933091.a n : ℤ) = A142093 (n + 1)

end A142093

/-! ## A142093.P11912958521199397138

`∩[A004623(n+1), A089721(n+1)]`
-/

namespace A142093.P11912958521199397138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004623 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089721 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142093.P11912958521199397138

namespace A142093

/-- `∩[A004623(n+1), A089721(n+1)]` -/
def P11912958521199397138.Spec : Prop :=
  ∀ n, (P11912958521199397138.a n : ℤ) = A142093 (n + 1)

end A142093

/-! ## A142093.P11456867108144067346

`∩[A004623(n+1), A090756(n+1)]`
-/

namespace A142093.P11456867108144067346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004623 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090756 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142093.P11456867108144067346

namespace A142093

/-- `∩[A004623(n+1), A090756(n+1)]` -/
def P11456867108144067346.Spec : Prop :=
  ∀ n, (P11456867108144067346.a n : ℤ) = A142093 (n + 1)

end A142093

/-! ## A142093.P9812910814670820355

`∩[A045446(n+1), A089721(n+1)]`
-/

namespace A142093.P9812910814670820355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045446 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089721 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142093.P9812910814670820355

namespace A142093

/-- `∩[A045446(n+1), A089721(n+1)]` -/
def P9812910814670820355.Spec : Prop :=
  ∀ n, (P9812910814670820355.a n : ℤ) = A142093 (n + 1)

end A142093

/-! ## A142093.P13991457468474808663

`∩[A045456(n+1), A089721(n+1)]`
-/

namespace A142093.P13991457468474808663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045456 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089721 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142093.P13991457468474808663

namespace A142093

/-- `∩[A045456(n+1), A089721(n+1)]` -/
def P13991457468474808663.Spec : Prop :=
  ∀ n, (P13991457468474808663.a n : ℤ) = A142093 (n + 1)

end A142093

/-! ## A142093.P13521517910174139262

`or(1, p?[5*A017041(n)+1])`
-/

namespace A142093.P13521517910174139262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A017041 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A142093.P13521517910174139262

namespace A142093

/-- `or(1, p?[5*A017041(n)+1])` -/
def P13521517910174139262.Spec : Prop :=
  ∀ n, P13521517910174139262.a n = A142093 (n + 1)

end A142093

/-! ## A142093.P4706800469795324795

`A000027(p?[5*A017041(n)+1])`
-/

namespace A142093.P4706800469795324795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A017041 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142093.P4706800469795324795

namespace A142093

/-- `A000027(p?[5*A017041(n)+1])` -/
def P4706800469795324795.Spec : Prop :=
  ∀ n, P4706800469795324795.a n = A142093 (n + 1)

end A142093

/-! ## A142093.P18286173694506347930

`∩[A045441(n+1), A089721(n+1)]`
-/

namespace A142093.P18286173694506347930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045441 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089721 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142093.P18286173694506347930

namespace A142093

/-- `∩[A045441(n+1), A089721(n+1)]` -/
def P18286173694506347930.Spec : Prop :=
  ∀ n, (P18286173694506347930.a n : ℤ) = A142093 (n + 1)

end A142093

/-! ## A142093.P7323939404266715417

`∩[A045452(n+1), A089721(n+1)]`
-/

namespace A142093.P7323939404266715417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045452 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089721 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142093.P7323939404266715417

namespace A142093

/-- `∩[A045452(n+1), A089721(n+1)]` -/
def P7323939404266715417.Spec : Prop :=
  ∀ n, (P7323939404266715417.a n : ℤ) = A142093 (n + 1)

end A142093

/-! ## A142093.P17740722068985827638

`∩[A004615(n+1), A045447(n+1)]`
-/

namespace A142093.P17740722068985827638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004615 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045447 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142093.P17740722068985827638

namespace A142093

/-- `∩[A004615(n+1), A045447(n+1)]` -/
def P17740722068985827638.Spec : Prop :=
  ∀ n, (P17740722068985827638.a n : ℤ) = A142093 (n + 1)

end A142093

/-! ## A142093.P7658696331517310804

`∩[A004615(n+1), A045458(n+1)]`
-/

namespace A142093.P7658696331517310804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004615 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045458 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142093.P7658696331517310804

namespace A142093

/-- `∩[A004615(n+1), A045458(n+1)]` -/
def P7658696331517310804.Spec : Prop :=
  ∀ n, (P7658696331517310804.a n : ℤ) = A142093 (n + 1)

end A142093

/-!
# A142094: Primes congruent to 27 mod 35.

The programs for A142094, the canonical program `A142094.P13754732341440805904` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142094 has offset 1).

The definition of A142094 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3267 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142094.P13754732341440805904

`p?[35*n-8]`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A142094

/-- `p?[35*n-8]` -/
def P13754732341440805904.Spec : Prop :=
  ∀ n, P13754732341440805904.a n = A142094 (n + 1)

theorem P13754732341440805904.correct : P13754732341440805904.Spec := by
  intro n
  simp only [A142094, Nat.add_sub_cancel]

end A142094

/-! ## A142094.P8853824588570528778

`∩[A004624(n+1), A030432(n+1)]`
-/

namespace A142094.P8853824588570528778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004624 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030432 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142094.P8853824588570528778

namespace A142094

/-- `∩[A004624(n+1), A030432(n+1)]` -/
def P8853824588570528778.Spec : Prop :=
  ∀ n, (P8853824588570528778.a n : ℤ) = A142094 (n + 1)

end A142094

/-! ## A142094.P10504997801791014887

`∩[A004624(n+1), A045380(n+1)]`
-/

namespace A142094.P10504997801791014887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004624 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045380 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142094.P10504997801791014887

namespace A142094

/-- `∩[A004624(n+1), A045380(n+1)]` -/
def P10504997801791014887.Spec : Prop :=
  ∀ n, (P10504997801791014887.a n : ℤ) = A142094 (n + 1)

end A142094

/-! ## A142094.P3752493844557272564

`∩[A030432(n+1), A045473(n+1)]`
-/

namespace A142094.P3752493844557272564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030432 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045473 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142094.P3752493844557272564

namespace A142094

/-- `∩[A030432(n+1), A045473(n+1)]` -/
def P3752493844557272564.Spec : Prop :=
  ∀ n, (P3752493844557272564.a n : ℤ) = A142094 (n + 1)

end A142094

/-! ## A142094.P9860273054509269620

`∩[A045380(n+1), A045473(n+1)]`
-/

namespace A142094.P9860273054509269620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045380 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045473 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142094.P9860273054509269620

namespace A142094

/-- `∩[A045380(n+1), A045473(n+1)]` -/
def P9860273054509269620.Spec : Prop :=
  ∀ n, (P9860273054509269620.a n : ℤ) = A142094 (n + 1)

end A142094

/-! ## A142094.P57942403577740603

`∩[A004624(n+1), A045357(n+1)]`
-/

namespace A142094.P57942403577740603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004624 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045357 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142094.P57942403577740603

namespace A142094

/-- `∩[A004624(n+1), A045357(n+1)]` -/
def P57942403577740603.Spec : Prop :=
  ∀ n, (P57942403577740603.a n : ℤ) = A142094 (n + 1)

end A142094

/-! ## A142094.P13226098252175587484

`∩[A045357(n+1), A045473(n+1)]`
-/

namespace A142094.P13226098252175587484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045357 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045473 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142094.P13226098252175587484

namespace A142094

/-- `∩[A045357(n+1), A045473(n+1)]` -/
def P13226098252175587484.Spec : Prop :=
  ∀ n, (P13226098252175587484.a n : ℤ) = A142094 (n + 1)

end A142094

/-! ## A142094.P9813347977659424432

`∩[A045473(n+1), A090652(n+1)]`
-/

namespace A142094.P9813347977659424432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045473 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090652 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142094.P9813347977659424432

namespace A142094

/-- `∩[A045473(n+1), A090652(n+1)]` -/
def P9813347977659424432.Spec : Prop :=
  ∀ n, (P9813347977659424432.a n : ℤ) = A142094 (n + 1)

end A142094

/-! ## A142094.P8351902810980649903

`∩[A030432(n+1), A358053(n+1)]`
-/

namespace A142094.P8351902810980649903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030432 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358053 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142094.P8351902810980649903

namespace A142094

/-- `∩[A030432(n+1), A358053(n+1)]` -/
def P8351902810980649903.Spec : Prop :=
  ∀ n, (P8351902810980649903.a n : ℤ) = A142094 (n + 1)

end A142094

/-! ## A142094.P11077589294415375275

`∩[A045357(n+1), A358053(n+1)]`
-/

namespace A142094.P11077589294415375275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045357 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358053 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142094.P11077589294415375275

namespace A142094

/-- `∩[A045357(n+1), A358053(n+1)]` -/
def P11077589294415375275.Spec : Prop :=
  ∀ n, (P11077589294415375275.a n : ℤ) = A142094 (n + 1)

end A142094

/-! ## A142094.P14067081119977977812

`∩[A045380(n+1), A358053(n+1)]`
-/

namespace A142094.P14067081119977977812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045380 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358053 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142094.P14067081119977977812

namespace A142094

/-- `∩[A045380(n+1), A358053(n+1)]` -/
def P14067081119977977812.Spec : Prop :=
  ∀ n, (P14067081119977977812.a n : ℤ) = A142094 (n + 1)

end A142094

/-! ## A142094.P3841711696860257488

`∩[A030432(n+1), A131877(n)-2]`
-/

namespace A142094.P3841711696860257488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030432 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131877 n - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142094.P3841711696860257488

namespace A142094

/-- `∩[A030432(n+1), A131877(n)-2]` -/
def P3841711696860257488.Spec : Prop :=
  ∀ n, (P3841711696860257488.a n : ℤ) = A142094 (n + 1)

end A142094

/-! ## A142094.P3364981222405514008

`∩[A045357(n+1), A131877(n)-2]`
-/

namespace A142094.P3364981222405514008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045357 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131877 n - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142094.P3364981222405514008

namespace A142094

/-- `∩[A045357(n+1), A131877(n)-2]` -/
def P3364981222405514008.Spec : Prop :=
  ∀ n, (P3364981222405514008.a n : ℤ) = A142094 (n + 1)

end A142094

/-! ## A142094.P14544574791284576042

`∩[A045380(n+1), A131877(n)-2]`
-/

namespace A142094.P14544574791284576042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045380 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131877 n - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142094.P14544574791284576042

namespace A142094

/-- `∩[A045380(n+1), A131877(n)-2]` -/
def P14544574791284576042.Spec : Prop :=
  ∀ n, (P14544574791284576042.a n : ℤ) = A142094 (n + 1)

end A142094

/-! ## A142094.P10184459472215504957

`∩[A004616(n+1), A045473(n+1)]`
-/

namespace A142094.P10184459472215504957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004616 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045473 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142094.P10184459472215504957

namespace A142094

/-- `∩[A004616(n+1), A045473(n+1)]` -/
def P10184459472215504957.Spec : Prop :=
  ∀ n, (P10184459472215504957.a n : ℤ) = A142094 (n + 1)

end A142094

/-! ## A142094.P6052609550524267358

`∩[A030432(n+1), A063230(n+1)-2]`
-/

namespace A142094.P6052609550524267358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030432 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063230 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142094.P6052609550524267358

namespace A142094

/-- `∩[A030432(n+1), A063230(n+1)-2]` -/
def P6052609550524267358.Spec : Prop :=
  ∀ n, (P6052609550524267358.a n : ℤ) = A142094 (n + 1)

end A142094

/-! ## A142094.P5164932761313342989

`∩[A045357(n+1), A063230(n+1)-2]`
-/

namespace A142094.P5164932761313342989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045357 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063230 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142094.P5164932761313342989

namespace A142094

/-- `∩[A045357(n+1), A063230(n+1)-2]` -/
def P5164932761313342989.Spec : Prop :=
  ∀ n, (P5164932761313342989.a n : ℤ) = A142094 (n + 1)

end A142094

/-! ## A142094.P8929543827554013705

`∩[A045380(n+1), A063230(n+1)-2]`
-/

namespace A142094.P8929543827554013705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045380 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063230 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142094.P8929543827554013705

namespace A142094

/-- `∩[A045380(n+1), A063230(n+1)-2]` -/
def P8929543827554013705.Spec : Prop :=
  ∀ n, (P8929543827554013705.a n : ℤ) = A142094 (n + 1)

end A142094

/-! ## A142094.P1949801237157300665

`∩[A045473(n+1), A017353(n)]`
-/

namespace A142094.P1949801237157300665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045473 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017353 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142094.P1949801237157300665

namespace A142094

/-- `∩[A045473(n+1), A017353(n)]` -/
def P1949801237157300665.Spec : Prop :=
  ∀ n, (P1949801237157300665.a n : ℤ) = A142094 (n + 1)

end A142094

/-! ## A142094.P12680353583519148423

`∩[A045473(n+1), A160912(n+1)]`
-/

namespace A142094.P12680353583519148423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045473 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160912 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142094.P12680353583519148423

namespace A142094

/-- `∩[A045473(n+1), A160912(n+1)]` -/
def P12680353583519148423.Spec : Prop :=
  ∀ n, (P12680353583519148423.a n : ℤ) = A142094 (n + 1)

end A142094

/-!
# A142095: Primes congruent to 29 mod 35.

The programs for A142095, the canonical program `A142095.P14741884496573611207` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142095 has offset 1).

The definition of A142095 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8316 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142095.P14741884496573611207

`A030433(eq[1, A030433(n+1)%7]+1)`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A142095

/-- `A030433(eq[1, A030433(n+1)%7]+1)` -/
def P14741884496573611207.Spec : Prop :=
  ∀ n, P14741884496573611207.a n = A142095 (n + 1)

theorem P14741884496573611207.correct : P14741884496573611207.Spec := by
  intro n
  simp only [A142095, Nat.add_sub_cancel]

end A142095

/-! ## A142095.P1536306931325511013

`p?[35*n-6]`
-/

namespace A142095.P1536306931325511013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (35 * n : ℤ) - 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142095.P1536306931325511013

namespace A142095

/-- `p?[35*n-6]` -/
def P1536306931325511013.Spec : Prop :=
  ∀ n, P1536306931325511013.a n = A142095 (n + 1)

end A142095

/-! ## A142095.P5390225126128394651

`∩[A004619(n+1), A030433(n+1)]`
-/

namespace A142095.P5390225126128394651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004619 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030433 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142095.P5390225126128394651

namespace A142095

/-- `∩[A004619(n+1), A030433(n+1)]` -/
def P5390225126128394651.Spec : Prop :=
  ∀ n, (P5390225126128394651.a n : ℤ) = A142095 (n + 1)

end A142095

/-! ## A142095.P1097084350446546023

`∩[A004619(n+1), A045457(n+1)]`
-/

namespace A142095.P1097084350446546023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004619 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045457 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142095.P1097084350446546023

namespace A142095

/-- `∩[A004619(n+1), A045457(n+1)]` -/
def P1097084350446546023.Spec : Prop :=
  ∀ n, (P1097084350446546023.a n : ℤ) = A142095 (n + 1)

end A142095

/-! ## A142095.P15574036387915576182

`∩[A030433(n+1), A045465(n+1)]`
-/

namespace A142095.P15574036387915576182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030433 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045465 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142095.P15574036387915576182

namespace A142095

/-- `∩[A030433(n+1), A045465(n+1)]` -/
def P15574036387915576182.Spec : Prop :=
  ∀ n, (P15574036387915576182.a n : ℤ) = A142095 (n + 1)

end A142095

/-! ## A142095.P18377487134297167425

`∩[A045457(n+1), A045465(n+1)]`
-/

namespace A142095.P18377487134297167425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045457 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045465 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142095.P18377487134297167425

namespace A142095

/-- `∩[A045457(n+1), A045465(n+1)]` -/
def P18377487134297167425.Spec : Prop :=
  ∀ n, (P18377487134297167425.a n : ℤ) = A142095 (n + 1)

end A142095

/-! ## A142095.P17271283759141671953

`∩[A030433(n+1), A140444(n+1)]`
-/

namespace A142095.P17271283759141671953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030433 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140444 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142095.P17271283759141671953

namespace A142095

/-- `∩[A030433(n+1), A140444(n+1)]` -/
def P17271283759141671953.Spec : Prop :=
  ∀ n, (P17271283759141671953.a n : ℤ) = A142095 (n + 1)

end A142095

/-! ## A142095.P1664662911917519462

`∩[A045457(n+1), A140444(n+1)]`
-/

namespace A142095.P1664662911917519462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045457 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140444 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142095.P1664662911917519462

namespace A142095

/-- `∩[A045457(n+1), A140444(n+1)]` -/
def P1664662911917519462.Spec : Prop :=
  ∀ n, (P1664662911917519462.a n : ℤ) = A142095 (n + 1)

end A142095

/-! ## A142095.P15635834462054085577

`∩[A045465(n+1), A327753(n+1)]`
-/

namespace A142095.P15635834462054085577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045465 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327753 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142095.P15635834462054085577

namespace A142095

/-- `∩[A045465(n+1), A327753(n+1)]` -/
def P15635834462054085577.Spec : Prop :=
  ∀ n, (P15635834462054085577.a n : ℤ) = A142095 (n + 1)

end A142095

/-! ## A142095.P9493978263443258271

`∩[A140444(n+1), A327753(n+1)]`
-/

namespace A142095.P9493978263443258271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140444 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327753 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142095.P9493978263443258271

namespace A142095

/-- `∩[A140444(n+1), A327753(n+1)]` -/
def P9493978263443258271.Spec : Prop :=
  ∀ n, (P9493978263443258271.a n : ℤ) = A142095 (n + 1)

end A142095

/-! ## A142095.P9131400249018958377

`∩[A004618(n+1), A045465(n+1)]`
-/

namespace A142095.P9131400249018958377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004618 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045465 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142095.P9131400249018958377

namespace A142095

/-- `∩[A004618(n+1), A045465(n+1)]` -/
def P9131400249018958377.Spec : Prop :=
  ∀ n, (P9131400249018958377.a n : ℤ) = A142095 (n + 1)

end A142095

/-! ## A142095.P4578275110129699206

`∩[A004618(n+1), A140444(n+1)]`
-/

namespace A142095.P4578275110129699206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004618 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140444 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142095.P4578275110129699206

namespace A142095

/-- `∩[A004618(n+1), A140444(n+1)]` -/
def P4578275110129699206.Spec : Prop :=
  ∀ n, (P4578275110129699206.a n : ℤ) = A142095 (n + 1)

end A142095

/-! ## A142095.P14913492241424636131

`∩[A030433(n+1), A131877(n)]`
-/

namespace A142095.P14913492241424636131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030433 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131877 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142095.P14913492241424636131

namespace A142095

/-- `∩[A030433(n+1), A131877(n)]` -/
def P14913492241424636131.Spec : Prop :=
  ∀ n, (P14913492241424636131.a n : ℤ) = A142095 (n + 1)

end A142095

/-! ## A142095.P17941192677670810736

`∩[A045457(n+1), A131877(n)]`
-/

namespace A142095.P17941192677670810736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045457 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131877 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142095.P17941192677670810736

namespace A142095

/-- `∩[A045457(n+1), A131877(n)]` -/
def P17941192677670810736.Spec : Prop :=
  ∀ n, (P17941192677670810736.a n : ℤ) = A142095 (n + 1)

end A142095

/-! ## A142095.P4542820564779572310

`∩[A257645(n+1)-n, A030433(n+2)]`
-/

namespace A142095.P4542820564779572310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257645 (n + 1) - (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030433 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142095.P4542820564779572310

namespace A142095

/-- `∩[A257645(n+1)-n, A030433(n+2)]` -/
def P4542820564779572310.Spec : Prop :=
  ∀ n, (P4542820564779572310.a n : ℤ) = A142095 (n + 1)

end A142095

/-! ## A142095.P13351566963043777324

`∩[A030433(n+1), A063230(n+1)]`
-/

namespace A142095.P13351566963043777324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030433 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063230 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142095.P13351566963043777324

namespace A142095

/-- `∩[A030433(n+1), A063230(n+1)]` -/
def P13351566963043777324.Spec : Prop :=
  ∀ n, (P13351566963043777324.a n : ℤ) = A142095 (n + 1)

end A142095

/-! ## A142095.P14912612998516633899

`∩[A045358(n+1), A063230(n+1)]`
-/

namespace A142095.P14912612998516633899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063230 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142095.P14912612998516633899

namespace A142095

/-- `∩[A045358(n+1), A063230(n+1)]` -/
def P14912612998516633899.Spec : Prop :=
  ∀ n, (P14912612998516633899.a n : ℤ) = A142095 (n + 1)

end A142095

/-! ## A142095.P17106650060132539537

`∩[A045367(n+1), A063230(n+1)]`
-/

namespace A142095.P17106650060132539537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045367 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063230 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142095.P17106650060132539537

namespace A142095

/-- `∩[A045367(n+1), A063230(n+1)]` -/
def P17106650060132539537.Spec : Prop :=
  ∀ n, (P17106650060132539537.a n : ℤ) = A142095 (n + 1)

end A142095

/-! ## A142095.P12520739057672917227

`∩[A045381(n+1), A063230(n+1)]`
-/

namespace A142095.P12520739057672917227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045381 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063230 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142095.P12520739057672917227

namespace A142095

/-- `∩[A045381(n+1), A063230(n+1)]` -/
def P12520739057672917227.Spec : Prop :=
  ∀ n, (P12520739057672917227.a n : ℤ) = A142095 (n + 1)

end A142095

/-! ## A142095.P13091034389581720065

`∩[A045391(n+1), A063230(n+1)]`
-/

namespace A142095.P13091034389581720065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045391 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063230 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142095.P13091034389581720065

namespace A142095

/-- `∩[A045391(n+1), A063230(n+1)]` -/
def P13091034389581720065.Spec : Prop :=
  ∀ n, (P13091034389581720065.a n : ℤ) = A142095 (n + 1)

end A142095

/-!
# A142096: Primes congruent to 31 mod 35.

The programs for A142096, the canonical program `A142096.P10624013665993607037` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142096 has offset 1).

The definition of A142096 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3293 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142096.P10624013665993607037

`p?[35*n-4]`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A142096

/-- `p?[35*n-4]` -/
def P10624013665993607037.Spec : Prop :=
  ∀ n, P10624013665993607037.a n = A142096 (n + 1)

theorem P10624013665993607037.correct : P10624013665993607037.Spec := by
  intro n
  simp only [A142096, Nat.add_sub_cancel]

end A142096

/-! ## A142096.P8287338552465592440

`∩[A045425(n+1), A089721(n+1)]`
-/

namespace A142096.P8287338552465592440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045425 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089721 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142096.P8287338552465592440

namespace A142096

/-- `∩[A045425(n+1), A089721(n+1)]` -/
def P8287338552465592440.Spec : Prop :=
  ∀ n, (P8287338552465592440.a n : ℤ) = A142096 (n + 1)

end A142096

/-! ## A142096.P867368589759532231

`∩[A045437(n+1), A089721(n+1)]`
-/

namespace A142096.P867368589759532231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045437 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089721 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142096.P867368589759532231

namespace A142096

/-- `∩[A045437(n+1), A089721(n+1)]` -/
def P867368589759532231.Spec : Prop :=
  ∀ n, (P867368589759532231.a n : ℤ) = A142096 (n + 1)

end A142096

/-! ## A142096.P11346791704872575206

`∩[A030430(n+1), A045425(n+1)]`
-/

namespace A142096.P11346791704872575206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030430 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045425 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142096.P11346791704872575206

namespace A142096

/-- `∩[A030430(n+1), A045425(n+1)]` -/
def P11346791704872575206.Spec : Prop :=
  ∀ n, (P11346791704872575206.a n : ℤ) = A142096 (n + 1)

end A142096

/-! ## A142096.P2676784316126923335

`∩[A030430(n+1), A045437(n+1)]`
-/

namespace A142096.P2676784316126923335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030430 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045437 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142096.P2676784316126923335

namespace A142096

/-- `∩[A030430(n+1), A045437(n+1)]` -/
def P2676784316126923335.Spec : Prop :=
  ∀ n, (P2676784316126923335.a n : ℤ) = A142096 (n + 1)

end A142096

/-! ## A142096.P1020914549377672445

`∩[A045425(n+1), A045453(n+1)]`
-/

namespace A142096.P1020914549377672445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045425 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045453 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142096.P1020914549377672445

namespace A142096

/-- `∩[A045425(n+1), A045453(n+1)]` -/
def P1020914549377672445.Spec : Prop :=
  ∀ n, (P1020914549377672445.a n : ℤ) = A142096 (n + 1)

end A142096

/-! ## A142096.P9503849099110791009

`∩[A045437(n+1), A045453(n+1)]`
-/

namespace A142096.P9503849099110791009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045437 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045453 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142096.P9503849099110791009

namespace A142096

/-- `∩[A045437(n+1), A045453(n+1)]` -/
def P9503849099110791009.Spec : Prop :=
  ∀ n, (P9503849099110791009.a n : ℤ) = A142096 (n + 1)

end A142096

/-! ## A142096.P12510076054830408703

`∩[A045425(n+1), A090756(n+1)]`
-/

namespace A142096.P12510076054830408703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045425 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090756 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142096.P12510076054830408703

namespace A142096

/-- `∩[A045425(n+1), A090756(n+1)]` -/
def P12510076054830408703.Spec : Prop :=
  ∀ n, (P12510076054830408703.a n : ℤ) = A142096 (n + 1)

end A142096

/-! ## A142096.P13340230671540714419

`∩[A045437(n+1), A090756(n+1)]`
-/

namespace A142096.P13340230671540714419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045437 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090756 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142096.P13340230671540714419

namespace A142096

/-- `∩[A045437(n+1), A090756(n+1)]` -/
def P13340230671540714419.Spec : Prop :=
  ∀ n, (P13340230671540714419.a n : ℤ) = A142096 (n + 1)

end A142096

/-! ## A142096.P12532443411861767346

`∩[A045425(n+1), A327752(n+1)]`
-/

namespace A142096.P12532443411861767346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045425 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327752 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142096.P12532443411861767346

namespace A142096

/-- `∩[A045425(n+1), A327752(n+1)]` -/
def P12532443411861767346.Spec : Prop :=
  ∀ n, (P12532443411861767346.a n : ℤ) = A142096 (n + 1)

end A142096

/-! ## A142096.P11004367548379547707

`∩[A045437(n+1), A327752(n+1)]`
-/

namespace A142096.P11004367548379547707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045437 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327752 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142096.P11004367548379547707

namespace A142096

/-- `∩[A045437(n+1), A327752(n+1)]` -/
def P11004367548379547707.Spec : Prop :=
  ∀ n, (P11004367548379547707.a n : ℤ) = A142096 (n + 1)

end A142096

/-! ## A142096.P3334422108804854010

`∩[A004621(n+1), A030430(n+1)]`
-/

namespace A142096.P3334422108804854010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004621 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030430 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142096.P3334422108804854010

namespace A142096

/-- `∩[A004621(n+1), A030430(n+1)]` -/
def P3334422108804854010.Spec : Prop :=
  ∀ n, (P3334422108804854010.a n : ℤ) = A142096 (n + 1)

end A142096

/-! ## A142096.P10604022208198492151

`∩[A004621(n+1), A045453(n+1)]`
-/

namespace A142096.P10604022208198492151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004621 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045453 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142096.P10604022208198492151

namespace A142096

/-- `∩[A004621(n+1), A045453(n+1)]` -/
def P10604022208198492151.Spec : Prop :=
  ∀ n, (P10604022208198492151.a n : ℤ) = A142096 (n + 1)

end A142096

/-! ## A142096.P15355411600850204942

`∩[A004621(n+1), A089721(n+1)]`
-/

namespace A142096.P15355411600850204942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004621 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089721 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142096.P15355411600850204942

namespace A142096

/-- `∩[A004621(n+1), A089721(n+1)]` -/
def P15355411600850204942.Spec : Prop :=
  ∀ n, (P15355411600850204942.a n : ℤ) = A142096 (n + 1)

end A142096

/-! ## A142096.P14742767262193040468

`∩[A045436(n+1), A089721(n+1)]`
-/

namespace A142096.P14742767262193040468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045436 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089721 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142096.P14742767262193040468

namespace A142096

/-- `∩[A045436(n+1), A089721(n+1)]` -/
def P14742767262193040468.Spec : Prop :=
  ∀ n, (P14742767262193040468.a n : ℤ) = A142096 (n + 1)

end A142096

/-! ## A142096.P14557194328068635926

`∩[A045424(n+1), A089721(n+1)]`
-/

namespace A142096.P14557194328068635926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045424 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089721 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142096.P14557194328068635926

namespace A142096

/-- `∩[A045424(n+1), A089721(n+1)]` -/
def P14557194328068635926.Spec : Prop :=
  ∀ n, (P14557194328068635926.a n : ℤ) = A142096 (n + 1)

end A142096

/-! ## A142096.P17658318604733204950

`∩[A045421(n+1), A089721(n+1)]`
-/

namespace A142096.P17658318604733204950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045421 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089721 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142096.P17658318604733204950

namespace A142096

/-- `∩[A045421(n+1), A089721(n+1)]` -/
def P17658318604733204950.Spec : Prop :=
  ∀ n, (P17658318604733204950.a n : ℤ) = A142096 (n + 1)

end A142096

/-! ## A142096.P16525611905300875861

`∩[A045432(n+1), A089721(n+1)]`
-/

namespace A142096.P16525611905300875861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045432 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089721 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142096.P16525611905300875861

namespace A142096

/-- `∩[A045432(n+1), A089721(n+1)]` -/
def P16525611905300875861.Spec : Prop :=
  ∀ n, (P16525611905300875861.a n : ℤ) = A142096 (n + 1)

end A142096

/-! ## A142096.P17659276228330994709

`A000027(p?[A158060(n+1)+A017329(n)])`
-/

namespace A142096.P17659276228330994709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158060 (n + 1) + A017329 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142096.P17659276228330994709

namespace A142096

/-- `A000027(p?[A158060(n+1)+A017329(n)])` -/
def P17659276228330994709.Spec : Prop :=
  ∀ n, P17659276228330994709.a n = A142096 (n + 1)

end A142096

/-! ## A142096.P3569299380559630010

`∩[A004615(n+1), A045425(n+1)]`
-/

namespace A142096.P3569299380559630010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004615 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045425 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142096.P3569299380559630010

namespace A142096

/-- `∩[A004615(n+1), A045425(n+1)]` -/
def P3569299380559630010.Spec : Prop :=
  ∀ n, (P3569299380559630010.a n : ℤ) = A142096 (n + 1)

end A142096

/-!
# A142097: Primes congruent to 32 mod 35.

The programs for A142097, the canonical program `A142097.P18409017806951583958` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142097 has offset 1).

The definition of A142097 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3256 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142097.P18409017806951583958

`p?[35*n-3]`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A142097

/-- `p?[35*n-3]` -/
def P18409017806951583958.Spec : Prop :=
  ∀ n, P18409017806951583958.a n = A142097 (n + 1)

theorem P18409017806951583958.correct : P18409017806951583958.Spec := by
  intro n
  simp only [A142097, Nat.add_sub_cancel]

end A142097

/-! ## A142097.P7185319933344137272

`A000027(p?[A139264(n+1)-10])`
-/

namespace A142097.P7185319933344137272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139264 (n + 1) - 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142097.P7185319933344137272

namespace A142097

/-- `A000027(p?[A139264(n+1)-10])` -/
def P7185319933344137272.Spec : Prop :=
  ∀ n, P7185319933344137272.a n = A142097 (n + 1)

end A142097

/-! ## A142097.P1094034690359640978

`∩[A004622(n+1), A030432(n+1)]`
-/

namespace A142097.P1094034690359640978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004622 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030432 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142097.P1094034690359640978

namespace A142097

/-- `∩[A004622(n+1), A030432(n+1)]` -/
def P1094034690359640978.Spec : Prop :=
  ∀ n, (P1094034690359640978.a n : ℤ) = A142097 (n + 1)

end A142097

/-! ## A142097.P15354257498244039251

`∩[A004622(n+1), A045357(n+1)]`
-/

namespace A142097.P15354257498244039251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004622 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045357 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142097.P15354257498244039251

namespace A142097

/-- `∩[A004622(n+1), A045357(n+1)]` -/
def P15354257498244039251.Spec : Prop :=
  ∀ n, (P15354257498244039251.a n : ℤ) = A142097 (n + 1)

end A142097

/-! ## A142097.P12565288945559302607

`∩[A004622(n+1), A045380(n+1)]`
-/

namespace A142097.P12565288945559302607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004622 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045380 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142097.P12565288945559302607

namespace A142097

/-- `∩[A004622(n+1), A045380(n+1)]` -/
def P12565288945559302607.Spec : Prop :=
  ∀ n, (P12565288945559302607.a n : ℤ) = A142097 (n + 1)

end A142097

/-! ## A142097.P13381815001531344755

`∩[A030432(n+1), A045471(n+1)]`
-/

namespace A142097.P13381815001531344755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030432 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045471 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142097.P13381815001531344755

namespace A142097

/-- `∩[A030432(n+1), A045471(n+1)]` -/
def P13381815001531344755.Spec : Prop :=
  ∀ n, (P13381815001531344755.a n : ℤ) = A142097 (n + 1)

end A142097

/-! ## A142097.P11976101634447675545

`∩[A045357(n+1), A045471(n+1)]`
-/

namespace A142097.P11976101634447675545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045357 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045471 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142097.P11976101634447675545

namespace A142097

/-- `∩[A045357(n+1), A045471(n+1)]` -/
def P11976101634447675545.Spec : Prop :=
  ∀ n, (P11976101634447675545.a n : ℤ) = A142097 (n + 1)

end A142097

/-! ## A142097.P1012243860208113106

`∩[A045380(n+1), A045471(n+1)]`
-/

namespace A142097.P1012243860208113106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045380 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045471 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142097.P1012243860208113106

namespace A142097

/-- `∩[A045380(n+1), A045471(n+1)]` -/
def P1012243860208113106.Spec : Prop :=
  ∀ n, (P1012243860208113106.a n : ℤ) = A142097 (n + 1)

end A142097

/-! ## A142097.P557048156314786650

`∩[A045471(n+1), A090652(n+1)]`
-/

namespace A142097.P557048156314786650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045471 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090652 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142097.P557048156314786650

namespace A142097

/-- `∩[A045471(n+1), A090652(n+1)]` -/
def P557048156314786650.Spec : Prop :=
  ∀ n, (P557048156314786650.a n : ℤ) = A142097 (n + 1)

end A142097

/-! ## A142097.P2709242734190813513

`∩[A030432(n+1), A358053(n+1)-2]`
-/

namespace A142097.P2709242734190813513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030432 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358053 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142097.P2709242734190813513

namespace A142097

/-- `∩[A030432(n+1), A358053(n+1)-2]` -/
def P2709242734190813513.Spec : Prop :=
  ∀ n, (P2709242734190813513.a n : ℤ) = A142097 (n + 1)

end A142097

/-! ## A142097.P7782267512187224658

`∩[A045357(n+1), A358053(n+1)-2]`
-/

namespace A142097.P7782267512187224658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045357 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358053 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142097.P7782267512187224658

namespace A142097

/-- `∩[A045357(n+1), A358053(n+1)-2]` -/
def P7782267512187224658.Spec : Prop :=
  ∀ n, (P7782267512187224658.a n : ℤ) = A142097 (n + 1)

end A142097

/-! ## A142097.P5278062090428285743

`∩[A045380(n+1), A358053(n+1)-2]`
-/

namespace A142097.P5278062090428285743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045380 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358053 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142097.P5278062090428285743

namespace A142097

/-- `∩[A045380(n+1), A358053(n+1)-2]` -/
def P5278062090428285743.Spec : Prop :=
  ∀ n, (P5278062090428285743.a n : ℤ) = A142097 (n + 1)

end A142097

/-! ## A142097.P17926840396243816936

`∩[A004616(n+1), A045471(n+1)]`
-/

namespace A142097.P17926840396243816936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004616 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045471 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142097.P17926840396243816936

namespace A142097

/-- `∩[A004616(n+1), A045471(n+1)]` -/
def P17926840396243816936.Spec : Prop :=
  ∀ n, (P17926840396243816936.a n : ℤ) = A142097 (n + 1)

end A142097

/-! ## A142097.P7274115241680060610

`record[p?[A017497(A014682(n))+n]]`
-/

namespace A142097.P7274115241680060610
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017497 (A014682 n).toNat + (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142097.P7274115241680060610

namespace A142097

/-- `record[p?[A017497(A014682(n))+n]]` -/
def P7274115241680060610.Spec : Prop :=
  ∀ n, P7274115241680060610.a n = A142097 (n + 1)

end A142097

/-! ## A142097.P11044592632230420364

`record[A006530(70*(n+1)-3)]`
-/

namespace A142097.P11044592632230420364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (70 * (n + 1) - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142097.P11044592632230420364

namespace A142097

/-- `record[A006530(70*(n+1)-3)]` -/
def P11044592632230420364.Spec : Prop :=
  ∀ n, P11044592632230420364.a n = A142097 (n + 1)

end A142097

/-! ## A142097.P17100144680666503090

`record[A020639(70*(n+1)-3)]`
-/

namespace A142097.P17100144680666503090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (70 * (n + 1) - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142097.P17100144680666503090

namespace A142097

/-- `record[A020639(70*(n+1)-3)]` -/
def P17100144680666503090.Spec : Prop :=
  ∀ n, P17100144680666503090.a n = A142097 (n + 1)

end A142097

/-! ## A142097.P3668973813153798767

`∩[A045471(n+1), A017353(n)]`
-/

namespace A142097.P3668973813153798767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045471 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017353 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142097.P3668973813153798767

namespace A142097

/-- `∩[A045471(n+1), A017353(n)]` -/
def P3668973813153798767.Spec : Prop :=
  ∀ n, (P3668973813153798767.a n : ℤ) = A142097 (n + 1)

end A142097

/-! ## A142097.P12075843475250001160

`∩[A045471(n+1), A160912(n+1)]`
-/

namespace A142097.P12075843475250001160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045471 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160912 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142097.P12075843475250001160

namespace A142097

/-- `∩[A045471(n+1), A160912(n+1)]` -/
def P12075843475250001160.Spec : Prop :=
  ∀ n, (P12075843475250001160.a n : ℤ) = A142097 (n + 1)

end A142097

/-! ## A142097.P17615294822901864130

`∩[A045471(n+1), A017245(n)+n]`
-/

namespace A142097.P17615294822901864130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045471 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017245 n + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142097.P17615294822901864130

namespace A142097

/-- `∩[A045471(n+1), A017245(n)+n]` -/
def P17615294822901864130.Spec : Prop :=
  ∀ n, (P17615294822901864130.a n : ℤ) = A142097 (n + 1)

end A142097

/-! ## A142097.P14355847778779363784

`∩[A017257(n+1)+n, A045462(n+2)]`
-/

namespace A142097.P14355847778779363784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017257 (n + 1) + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045462 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142097.P14355847778779363784

namespace A142097

/-- `∩[A017257(n+1)+n, A045462(n+2)]` -/
def P14355847778779363784.Spec : Prop :=
  ∀ n, (P14355847778779363784.a n : ℤ) = A142097 (n + 1)

end A142097

/-!
# A142098: Primes congruent to 33 mod 35.

The programs for A142098, the canonical program `A142098.P10542078899576561010` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142098 has offset 1).

The definition of A142098 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3285 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142098.P10542078899576561010

`p?[35*n-2]`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A142098

/-- `p?[35*n-2]` -/
def P10542078899576561010.Spec : Prop :=
  ∀ n, P10542078899576561010.a n = A142098 (n + 1)

theorem P10542078899576561010.correct : P10542078899576561010.Spec := by
  intro n
  simp only [A142098, Nat.add_sub_cancel]

end A142098

/-! ## A142098.P558050071141953861

`or(1, p?[a(n-1)+35])` with `a(0)=33`
-/

namespace A142098.P558050071141953861
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [33] fun n f1 =>
  f1 (n - 1) + 35

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A142098.P558050071141953861

namespace A142098

/-- `or(1, p?[a(n-1)+35])` -/
def P558050071141953861.Spec : Prop :=
  ∀ n, (P558050071141953861.a n : ℤ) = A142098 (n + 1)

end A142098

/-! ## A142098.P2524774531512736978

`∑{p}[p?[34*(n+2)+n], #]`
-/

namespace A142098.P2524774531512736978
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  34 * (n + 2) + n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), p

end

end A142098.P2524774531512736978

namespace A142098

/-- `∑{p}[p?[34*(n+2)+n], #]` -/
def P2524774531512736978.Spec : Prop :=
  ∀ n, (P2524774531512736978.a n : ℤ) = A142098 (n + 1)

end A142098

/-! ## A142098.P3799156624902805214

`∩[A030431(n+1), A045447(n+1)]`
-/

namespace A142098.P3799156624902805214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030431 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045447 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142098.P3799156624902805214

namespace A142098

/-- `∩[A030431(n+1), A045447(n+1)]` -/
def P3799156624902805214.Spec : Prop :=
  ∀ n, (P3799156624902805214.a n : ℤ) = A142098 (n + 1)

end A142098

/-! ## A142098.P3319107263543221154

`∩[A030431(n+1), A045458(n+1)]`
-/

namespace A142098.P3319107263543221154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030431 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045458 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142098.P3319107263543221154

namespace A142098

/-- `∩[A030431(n+1), A045458(n+1)]` -/
def P3319107263543221154.Spec : Prop :=
  ∀ n, (P3319107263543221154.a n : ℤ) = A142098 (n + 1)

end A142098

/-! ## A142098.P14595857885395005428

`∩[A004623(n+1), A030431(n+1)]`
-/

namespace A142098.P14595857885395005428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004623 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030431 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142098.P14595857885395005428

namespace A142098

/-- `∩[A004623(n+1), A030431(n+1)]` -/
def P14595857885395005428.Spec : Prop :=
  ∀ n, (P14595857885395005428.a n : ℤ) = A142098 (n + 1)

end A142098

/-! ## A142098.P13227839244667696866

`∩[A004617(n+1), A045447(n+1)]`
-/

namespace A142098.P13227839244667696866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004617 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045447 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142098.P13227839244667696866

namespace A142098

/-- `∩[A004617(n+1), A045447(n+1)]` -/
def P13227839244667696866.Spec : Prop :=
  ∀ n, (P13227839244667696866.a n : ℤ) = A142098 (n + 1)

end A142098

/-! ## A142098.P16068316806768919906

`∩[A004617(n+1), A045458(n+1)]`
-/

namespace A142098.P16068316806768919906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004617 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045458 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142098.P16068316806768919906

namespace A142098

/-- `∩[A004617(n+1), A045458(n+1)]` -/
def P16068316806768919906.Spec : Prop :=
  ∀ n, (P16068316806768919906.a n : ℤ) = A142098 (n + 1)

end A142098

/-! ## A142098.P5640273800829989796

`∩[A030431(n+1), A126980(n)]`
-/

namespace A142098.P5640273800829989796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030431 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126980 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142098.P5640273800829989796

namespace A142098

/-- `∩[A030431(n+1), A126980(n)]` -/
def P5640273800829989796.Spec : Prop :=
  ∀ n, (P5640273800829989796.a n : ℤ) = A142098 (n + 1)

end A142098

/-! ## A142098.P15897672919765856066

`∩[A045414(n+1), A126980(n)]`
-/

namespace A142098.P15897672919765856066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045414 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126980 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142098.P15897672919765856066

namespace A142098

/-- `∩[A045414(n+1), A126980(n)]` -/
def P15897672919765856066.Spec : Prop :=
  ∀ n, (P15897672919765856066.a n : ℤ) = A142098 (n + 1)

end A142098

/-! ## A142098.P9809210979937426725

`record[A006530(34*(n+3)+n+1)]`
-/

namespace A142098.P9809210979937426725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (34 * (n + 3) + (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142098.P9809210979937426725

namespace A142098

/-- `record[A006530(34*(n+3)+n+1)]` -/
def P9809210979937426725.Spec : Prop :=
  ∀ n, P9809210979937426725.a n = A142098 (n + 1)

end A142098

/-! ## A142098.P654554148110429383

`A001414(p?[A019430(5*n)])`
-/

namespace A142098.P654554148110429383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019430 (5 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142098.P654554148110429383

namespace A142098

/-- `A001414(p?[A019430(5*n)])` -/
def P654554148110429383.Spec : Prop :=
  ∀ n, P654554148110429383.a n = A142098 (n + 1)

end A142098

/-! ## A142098.P6355631653249403112

`∩[A045447(n+1), A017305(n)]`
-/

namespace A142098.P6355631653249403112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045447 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017305 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142098.P6355631653249403112

namespace A142098

/-- `∩[A045447(n+1), A017305(n)]` -/
def P6355631653249403112.Spec : Prop :=
  ∀ n, (P6355631653249403112.a n : ℤ) = A142098 (n + 1)

end A142098

/-! ## A142098.P846413940126106512

`∩[A045458(n+1), A017305(n)]`
-/

namespace A142098.P846413940126106512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045458 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017305 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142098.P846413940126106512

namespace A142098

/-- `∩[A045458(n+1), A017305(n)]` -/
def P846413940126106512.Spec : Prop :=
  ∀ n, (P846413940126106512.a n : ℤ) = A142098 (n + 1)

end A142098

/-! ## A142098.P11619794585517906555

`∩[A017209(n+1)+n, A045447(n+2)]`
-/

namespace A142098.P11619794585517906555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017209 (n + 1) + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045447 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142098.P11619794585517906555

namespace A142098

/-- `∩[A017209(n+1)+n, A045447(n+2)]` -/
def P11619794585517906555.Spec : Prop :=
  ∀ n, (P11619794585517906555.a n : ℤ) = A142098 (n + 1)

end A142098

/-! ## A142098.P9619591197352118158

`∩[A017209(n+1)+n, A045458(n+2)]`
-/

namespace A142098.P9619591197352118158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017209 (n + 1) + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045458 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142098.P9619591197352118158

namespace A142098

/-- `∩[A017209(n+1)+n, A045458(n+2)]` -/
def P9619591197352118158.Spec : Prop :=
  ∀ n, (P9619591197352118158.a n : ℤ) = A142098 (n + 1)

end A142098

/-! ## A142098.P9817386099491852480

`∩[A045447(n+1), A277590(n+1)]`
-/

namespace A142098.P9817386099491852480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045447 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277590 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142098.P9817386099491852480

namespace A142098

/-- `∩[A045447(n+1), A277590(n+1)]` -/
def P9817386099491852480.Spec : Prop :=
  ∀ n, (P9817386099491852480.a n : ℤ) = A142098 (n + 1)

end A142098

/-! ## A142098.P451477491325069307

`∩[A045458(n+1), A277590(n+1)]`
-/

namespace A142098.P451477491325069307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045458 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277590 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142098.P451477491325069307

namespace A142098

/-- `∩[A045458(n+1), A277590(n+1)]` -/
def P451477491325069307.Spec : Prop :=
  ∀ n, (P451477491325069307.a n : ℤ) = A142098 (n + 1)

end A142098

/-! ## A142098.P9409807347008318994

`∩[A030431(n+1), A017041(n)]`
-/

namespace A142098.P9409807347008318994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030431 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017041 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142098.P9409807347008318994

namespace A142098

/-- `∩[A030431(n+1), A017041(n)]` -/
def P9409807347008318994.Spec : Prop :=
  ∀ n, (P9409807347008318994.a n : ℤ) = A142098 (n + 1)

end A142098

/-! ## A142098.P123874234538620825

`∩[A030431(n+1), A116728(n+1)]`
-/

namespace A142098.P123874234538620825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030431 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116728 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142098.P123874234538620825

namespace A142098

/-- `∩[A030431(n+1), A116728(n+1)]` -/
def P123874234538620825.Spec : Prop :=
  ∀ n, (P123874234538620825.a n : ℤ) = A142098 (n + 1)

end A142098

/-!
# A142099: Primes congruent to 34 mod 35.

The programs for A142099, the canonical program `A142099.P7691558053280592165` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142099 has offset 1).

The definition of A142099 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3273 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142099.P7691558053280592165

`p?[35*n-1]`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A142099

/-- `p?[35*n-1]` -/
def P7691558053280592165.Spec : Prop :=
  ∀ n, P7691558053280592165.a n = A142099 (n + 1)

theorem P7691558053280592165.correct : P7691558053280592165.Spec := by
  intro n
  simp only [A142099, Nat.add_sub_cancel]

end A142099

/-! ## A142099.P12408594396377288273

`or(1, p?[5*7*n+34])`
-/

namespace A142099.P12408594396377288273
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * (7 * n) + 34

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A142099.P12408594396377288273

namespace A142099

/-- `or(1, p?[5*7*n+34])` -/
def P12408594396377288273.Spec : Prop :=
  ∀ n, (P12408594396377288273.a n : ℤ) = A142099 (n + 1)

end A142099

/-! ## A142099.P3594174084655233929

`∏{d}[p?[5*7*n+34], #]`
-/

namespace A142099.P3594174084655233929
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * (7 * n) + 34

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), d

end

end A142099.P3594174084655233929

namespace A142099

/-- `∏{d}[p?[5*7*n+34], #]` -/
def P3594174084655233929.Spec : Prop :=
  ∀ n, (P3594174084655233929.a n : ℤ) = A142099 (n + 1)

end A142099

/-! ## A142099.P14442912504443529683

`∑{p}[p?[34*(n+1)+n], #]`
-/

namespace A142099.P14442912504443529683
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  34 * (n + 1) + n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), p

end

end A142099.P14442912504443529683

namespace A142099

/-- `∑{p}[p?[34*(n+1)+n], #]` -/
def P14442912504443529683.Spec : Prop :=
  ∀ n, (P14442912504443529683.a n : ℤ) = A142099 (n + 1)

end A142099

/-! ## A142099.P15159990825164629827

`∩[A045464(n+1), A111092(n+1)]`
-/

namespace A142099.P15159990825164629827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045464 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111092 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142099.P15159990825164629827

namespace A142099

/-- `∩[A045464(n+1), A111092(n+1)]` -/
def P15159990825164629827.Spec : Prop :=
  ∀ n, (P15159990825164629827.a n : ℤ) = A142099 (n + 1)

end A142099

/-! ## A142099.P3519218052622146296

`∩[A045473(n+1), A111092(n+1)]`
-/

namespace A142099.P3519218052622146296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045473 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111092 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142099.P3519218052622146296

namespace A142099

/-- `∩[A045473(n+1), A111092(n+1)]` -/
def P3519218052622146296.Spec : Prop :=
  ∀ n, (P3519218052622146296.a n : ℤ) = A142099 (n + 1)

end A142099

/-! ## A142099.P2714966723951262269

`∩[A004624(n+1), A111092(n+1)]`
-/

namespace A142099.P2714966723951262269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004624 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111092 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142099.P2714966723951262269

namespace A142099

/-- `∩[A004624(n+1), A111092(n+1)]` -/
def P2714966723951262269.Spec : Prop :=
  ∀ n, (P2714966723951262269.a n : ℤ) = A142099 (n + 1)

end A142099

/-! ## A142099.P697914840201609157

`∩[A004624(n+1), A030433(n+1)]`
-/

namespace A142099.P697914840201609157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004624 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030433 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142099.P697914840201609157

namespace A142099

/-- `∩[A004624(n+1), A030433(n+1)]` -/
def P697914840201609157.Spec : Prop :=
  ∀ n, (P697914840201609157.a n : ℤ) = A142099 (n + 1)

end A142099

/-! ## A142099.P10676625314092972169

`∩[A004624(n+1), A045457(n+1)]`
-/

namespace A142099.P10676625314092972169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004624 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045457 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142099.P10676625314092972169

namespace A142099

/-- `∩[A004624(n+1), A045457(n+1)]` -/
def P10676625314092972169.Spec : Prop :=
  ∀ n, (P10676625314092972169.a n : ℤ) = A142099 (n + 1)

end A142099

/-! ## A142099.P15728213809962672309

`∩[A030433(n+1), A045464(n+1)]`
-/

namespace A142099.P15728213809962672309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030433 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045464 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142099.P15728213809962672309

namespace A142099

/-- `∩[A030433(n+1), A045464(n+1)]` -/
def P15728213809962672309.Spec : Prop :=
  ∀ n, (P15728213809962672309.a n : ℤ) = A142099 (n + 1)

end A142099

/-! ## A142099.P17639112683541188824

`∩[A030433(n+1), A045473(n+1)]`
-/

namespace A142099.P17639112683541188824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030433 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045473 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142099.P17639112683541188824

namespace A142099

/-- `∩[A030433(n+1), A045473(n+1)]` -/
def P17639112683541188824.Spec : Prop :=
  ∀ n, (P17639112683541188824.a n : ℤ) = A142099 (n + 1)

end A142099

/-! ## A142099.P8236035159054135790

`∩[A045457(n+1), A045464(n+1)]`
-/

namespace A142099.P8236035159054135790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045457 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045464 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142099.P8236035159054135790

namespace A142099

/-- `∩[A045457(n+1), A045464(n+1)]` -/
def P8236035159054135790.Spec : Prop :=
  ∀ n, (P8236035159054135790.a n : ℤ) = A142099 (n + 1)

end A142099

/-! ## A142099.P14680172588018057075

`∩[A045457(n+1), A045473(n+1)]`
-/

namespace A142099.P14680172588018057075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045457 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045473 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142099.P14680172588018057075

namespace A142099

/-- `∩[A045457(n+1), A045473(n+1)]` -/
def P14680172588018057075.Spec : Prop :=
  ∀ n, (P14680172588018057075.a n : ℤ) = A142099 (n + 1)

end A142099

/-! ## A142099.P12445840141145002716

`∩[A030433(n+1), A111092(n+1)]`
-/

namespace A142099.P12445840141145002716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030433 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111092 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142099.P12445840141145002716

namespace A142099

/-- `∩[A030433(n+1), A111092(n+1)]` -/
def P12445840141145002716.Spec : Prop :=
  ∀ n, (P12445840141145002716.a n : ℤ) = A142099 (n + 1)

end A142099

/-! ## A142099.P16378495459080868738

`∩[A045457(n+1), A111092(n+1)]`
-/

namespace A142099.P16378495459080868738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045457 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111092 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142099.P16378495459080868738

namespace A142099

/-- `∩[A045457(n+1), A111092(n+1)]` -/
def P16378495459080868738.Spec : Prop :=
  ∀ n, (P16378495459080868738.a n : ℤ) = A142099 (n + 1)

end A142099

/-! ## A142099.P8702007166763672675

`∩[A045464(n+1), A327753(n+1)]`
-/

namespace A142099.P8702007166763672675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045464 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327753 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142099.P8702007166763672675

namespace A142099

/-- `∩[A045464(n+1), A327753(n+1)]` -/
def P8702007166763672675.Spec : Prop :=
  ∀ n, (P8702007166763672675.a n : ℤ) = A142099 (n + 1)

end A142099

/-! ## A142099.P9150972033117383929

`∩[A045473(n+1), A327753(n+1)]`
-/

namespace A142099.P9150972033117383929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045473 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327753 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142099.P9150972033117383929

namespace A142099

/-- `∩[A045473(n+1), A327753(n+1)]` -/
def P9150972033117383929.Spec : Prop :=
  ∀ n, (P9150972033117383929.a n : ℤ) = A142099 (n + 1)

end A142099

/-! ## A142099.P16513082625991018141

`∩[A111092(n+1), A327753(n+1)]`
-/

namespace A142099.P16513082625991018141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111092 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327753 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142099.P16513082625991018141

namespace A142099

/-- `∩[A111092(n+1), A327753(n+1)]` -/
def P16513082625991018141.Spec : Prop :=
  ∀ n, (P16513082625991018141.a n : ℤ) = A142099 (n + 1)

end A142099

/-! ## A142099.P16666398242066169674

`∩[A004618(n+1), A045464(n+1)]`
-/

namespace A142099.P16666398242066169674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004618 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045464 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142099.P16666398242066169674

namespace A142099

/-- `∩[A004618(n+1), A045464(n+1)]` -/
def P16666398242066169674.Spec : Prop :=
  ∀ n, (P16666398242066169674.a n : ℤ) = A142099 (n + 1)

end A142099

/-! ## A142099.P16240119330974718704

`∩[A004618(n+1), A045473(n+1)]`
-/

namespace A142099.P16240119330974718704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004618 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045473 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142099.P16240119330974718704

namespace A142099

/-- `∩[A004618(n+1), A045473(n+1)]` -/
def P16240119330974718704.Spec : Prop :=
  ∀ n, (P16240119330974718704.a n : ℤ) = A142099 (n + 1)

end A142099

