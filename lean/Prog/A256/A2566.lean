import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
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
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
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
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
import Seq.B009.C000
import Seq.B009.C001
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
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A256600: Triangle, read by rows consisting of terms T(n,k), k=0..2^n-1, where row n+1 equals the concatenation of the partial sums of the prior row with itself.

The programs for A256600, there is no canonical definition to state claims against.
-/

/-! ## A256600.P13224966325049847320

`A238845(2*n+1)*A318498(A055879(n+2))`
-/

namespace A256600.P13224966325049847320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238845 (2 * n + 1) * A318498 (A055879 (n + 2)).toNat

end

end A256600.P13224966325049847320

/-! ## A256600.P14648043818233054860

`A093873(n+1)*A093873(A033715(A068911(n)))`
-/

namespace A256600.P14648043818233054860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093873 (n + 1) * A093873 (A033715 (A068911 n).toNat).toNat

end

end A256600.P14648043818233054860

/-! ## A256600.P13835933868659685789

`A000120(xor(n+1, A035327(n))^A167439(n))`
-/

namespace A256600.P13835933868659685789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (SequenceMachineLib.roundAway ((Int.xor (n + 1 : ℤ) (A035327 n) : ℚ) ^ (A167439 n : ℤ))).toNat

end

end A256600.P13835933868659685789

/-! ## A256600.P4286294052374190098

`A093873(n+1)*A093873(A223135(A011782(n)))`
-/

namespace A256600.P4286294052374190098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093873 (n + 1) * A093873 (A223135 (A011782 n).toNat).toNat

end

end A256600.P4286294052374190098

/-! ## A256600.P103863850534280214

`A307081(A000930(n))^A264997(n)`
-/

namespace A256600.P103863850534280214
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A307081 (A000930 n).toNat : ℚ) ^ (A264997 n : ℤ)

end

end A256600.P103863850534280214

/-!
# A256602: Primes of form 12*k + 1 and not a twin prime.

The programs for A256602, the canonical program `A256602.P14275851301488169315` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A256602 has offset 1).

The definition of A256602 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3782 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A256602.P14969697771421352085

`or(1, ∩[12*n, 6*A121765(n+1)]+1)`
-/

namespace A256602.P14969697771421352085
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A121765 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n + 1)

end

end A256602.P14969697771421352085

namespace A256602

/-- `or(1, ∩[12*n, 6*A121765(n+1)]+1)` -/
def P14969697771421352085.Spec : Prop :=
  ∀ n, (P14969697771421352085.a n : ℤ) = A256602 (n + 1)

end A256602

/-! ## A256602.P11308939798070174993

`∩[A008846(n+1), A121764(n+1)]`
-/

namespace A256602.P11308939798070174993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008846 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121764 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A256602.P11308939798070174993

namespace A256602

/-- `∩[A008846(n+1), A121764(n+1)]` -/
def P11308939798070174993.Spec : Prop :=
  ∀ n, (P11308939798070174993.a n : ℤ) = A256602 (n + 1)

end A256602

/-! ## A256602.P16350071155889717348

`∩[A068228(n+1), A121764(n+1)]`
-/

namespace A256602.P16350071155889717348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068228 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121764 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A256602.P16350071155889717348

namespace A256602

/-- `∩[A068228(n+1), A121764(n+1)]` -/
def P16350071155889717348.Spec : Prop :=
  ∀ n, (P16350071155889717348.a n : ℤ) = A256602 (n + 1)

end A256602

/-! ## A256602.P14275851301488169315

`∩[A038874(n+1), A121764(n+1)]`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A256602

/-- `∩[A038874(n+1), A121764(n+1)]` -/
def P14275851301488169315.Spec : Prop :=
  ∀ n, (P14275851301488169315.a n : ℤ) = A256602 (n + 1)

theorem P14275851301488169315.correct : P14275851301488169315.Spec := by
  intro n
  simp only [A256602, Nat.add_sub_cancel]

end A256602

/-! ## A256602.P905349083971786621

`∩[A002144(n+1), A121764(n+1)]`
-/

namespace A256602.P905349083971786621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121764 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A256602.P905349083971786621

namespace A256602

/-- `∩[A002144(n+1), A121764(n+1)]` -/
def P905349083971786621.Spec : Prop :=
  ∀ n, (P905349083971786621.a n : ℤ) = A256602 (n + 1)

end A256602

/-! ## A256602.P9352101132471602445

`∩[A002313(n+1), A121764(n+1)]`
-/

namespace A256602.P9352101132471602445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002313 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121764 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A256602.P9352101132471602445

namespace A256602

/-- `∩[A002313(n+1), A121764(n+1)]` -/
def P9352101132471602445.Spec : Prop :=
  ∀ n, (P9352101132471602445.a n : ℤ) = A256602 (n + 1)

end A256602

/-! ## A256602.P7869201048732852804

`∩[A055025(n+1), A121764(n+1)]`
-/

namespace A256602.P7869201048732852804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055025 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121764 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A256602.P7869201048732852804

namespace A256602

/-- `∩[A055025(n+1), A121764(n+1)]` -/
def P7869201048732852804.Spec : Prop :=
  ∀ n, (P7869201048732852804.a n : ℤ) = A256602 (n + 1)

end A256602

/-! ## A256602.P17557610334626843902

`∩[A121764(n+1), A230779(n+1)]`
-/

namespace A256602.P17557610334626843902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121764 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230779 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A256602.P17557610334626843902

namespace A256602

/-- `∩[A121764(n+1), A230779(n+1)]` -/
def P17557610334626843902.Spec : Prop :=
  ∀ n, (P17557610334626843902.a n : ℤ) = A256602 (n + 1)

end A256602

/-! ## A256602.P4148694667937219747

`∩[A121764(n+1), A347877(n+1)]`
-/

namespace A256602.P4148694667937219747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121764 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347877 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A256602.P4148694667937219747

namespace A256602

/-- `∩[A121764(n+1), A347877(n+1)]` -/
def P4148694667937219747.Spec : Prop :=
  ∀ n, (P4148694667937219747.a n : ℤ) = A256602 (n + 1)

end A256602

/-! ## A256602.P8245610998554598612

`∩[A007510(n+1), A068228(n+1)]`
-/

namespace A256602.P8245610998554598612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007510 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068228 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A256602.P8245610998554598612

namespace A256602

/-- `∩[A007510(n+1), A068228(n+1)]` -/
def P8245610998554598612.Spec : Prop :=
  ∀ n, (P8245610998554598612.a n : ℤ) = A256602 (n + 1)

end A256602

/-! ## A256602.P5917959975150008434

`∩[A007510(n+1), A155560(n+1)]`
-/

namespace A256602.P5917959975150008434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007510 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155560 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A256602.P5917959975150008434

namespace A256602

/-- `∩[A007510(n+1), A155560(n+1)]` -/
def P5917959975150008434.Spec : Prop :=
  ∀ n, (P5917959975150008434.a n : ℤ) = A256602 (n + 1)

end A256602

/-! ## A256602.P10107697586091426749

`∩[A007510(n+1), A155563(n+1)]`
-/

namespace A256602.P10107697586091426749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007510 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155563 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A256602.P10107697586091426749

namespace A256602

/-- `∩[A007510(n+1), A155563(n+1)]` -/
def P10107697586091426749.Spec : Prop :=
  ∀ n, (P10107697586091426749.a n : ℤ) = A256602 (n + 1)

end A256602

/-! ## A256602.P2708740199203837279

`∩[A121764(n+1), A281292(n+1)]`
-/

namespace A256602.P2708740199203837279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121764 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281292 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A256602.P2708740199203837279

namespace A256602

/-- `∩[A121764(n+1), A281292(n+1)]` -/
def P2708740199203837279.Spec : Prop :=
  ∀ n, (P2708740199203837279.a n : ℤ) = A256602 (n + 1)

end A256602

/-! ## A256602.P11001361645428454236

`∩[A121764(n+1), A224450(n+1)]`
-/

namespace A256602.P11001361645428454236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121764 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224450 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A256602.P11001361645428454236

namespace A256602

/-- `∩[A121764(n+1), A224450(n+1)]` -/
def P11001361645428454236.Spec : Prop :=
  ∀ n, (P11001361645428454236.a n : ℤ) = A256602 (n + 1)

end A256602

/-! ## A256602.P1506006117322106329

`∩[A025584(n+1), A068228(n+1)]`
-/

namespace A256602.P1506006117322106329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025584 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068228 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A256602.P1506006117322106329

namespace A256602

/-- `∩[A025584(n+1), A068228(n+1)]` -/
def P1506006117322106329.Spec : Prop :=
  ∀ n, (P1506006117322106329.a n : ℤ) = A256602 (n + 1)

end A256602

/-! ## A256602.P17207168404661910216

`∩[A025584(n+1), A155560(n+1)]`
-/

namespace A256602.P17207168404661910216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025584 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155560 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A256602.P17207168404661910216

namespace A256602

/-- `∩[A025584(n+1), A155560(n+1)]` -/
def P17207168404661910216.Spec : Prop :=
  ∀ n, (P17207168404661910216.a n : ℤ) = A256602 (n + 1)

end A256602

/-! ## A256602.P4614060400509634591

`∩[A025584(n+1), A155563(n+1)]`
-/

namespace A256602.P4614060400509634591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025584 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155563 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A256602.P4614060400509634591

namespace A256602

/-- `∩[A025584(n+1), A155563(n+1)]` -/
def P4614060400509634591.Spec : Prop :=
  ∀ n, (P4614060400509634591.a n : ℤ) = A256602 (n + 1)

end A256602

/-! ## A256602.P9882083509548188391

`∩[A068228(n+1), A156828(n+1)]`
-/

namespace A256602.P9882083509548188391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068228 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156828 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A256602.P9882083509548188391

namespace A256602

/-- `∩[A068228(n+1), A156828(n+1)]` -/
def P9882083509548188391.Spec : Prop :=
  ∀ n, (P9882083509548188391.a n : ℤ) = A256602 (n + 1)

end A256602

/-! ## A256602.P6417400501181946240

`∩[A068228(n+1), A167706(n+1)]`
-/

namespace A256602.P6417400501181946240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068228 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167706 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A256602.P6417400501181946240

namespace A256602

/-- `∩[A068228(n+1), A167706(n+1)]` -/
def P6417400501181946240.Spec : Prop :=
  ∀ n, (P6417400501181946240.a n : ℤ) = A256602 (n + 1)

end A256602

/-! ## A256602.P11404874067254287776

`∩[A025584(n+1), A264732(n+1)]`
-/

namespace A256602.P11404874067254287776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025584 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264732 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A256602.P11404874067254287776

namespace A256602

/-- `∩[A025584(n+1), A264732(n+1)]` -/
def P11404874067254287776.Spec : Prop :=
  ∀ n, (P11404874067254287776.a n : ℤ) = A256602 (n + 1)

end A256602

/-!
# A256604: Numbers D such that D^2 = A^2 + B^3 + C^4 has more than one solution in positive integers (A, B, C).

The programs for A256604, there is no canonical definition to state claims against.
-/

/-! ## A256604.P4738570238177540851

`lt[1, A180243(n+1)]+1`
-/

namespace A256604.P4738570238177540851
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180243 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A256604.P4738570238177540851

/-! ## A256604.P1889685825013052096

`lt[1, A180243(A028310(n))]`
-/

namespace A256604.P1889685825013052096
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180243 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A256604.P1889685825013052096

/-! ## A256604.P8460458982117772660

`eq[1, A000009(a(A180243(n)))]` with `a(0)=3, a(1)=3`
-/

namespace A256604.P8460458982117772660
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3, 3] fun n f2 =>
  A000009 (f2 (A180243 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A256604.P8460458982117772660

/-! ## A256604.P1149989900838333783

`eq[1, A000010(a(A180243(n)))]` with `a(0)=3, a(1)=3`
-/

namespace A256604.P1149989900838333783
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3, 3] fun n f2 =>
  A000010 (f2 (A180243 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A256604.P1149989900838333783

/-! ## A256604.P15447227381386639576

`eq[1, A007318(a(A180243(n)))]` with `a(0)=4, a(1)=4`
-/

namespace A256604.P15447227381386639576
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [4, 4] fun n f2 =>
  A007318 (f2 (A180243 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A256604.P15447227381386639576

/-! ## A256604.P10150774526794242028

`lt[A001222(a(A180243(n))), 2]` with `a(0)=4, a(1)=4`
-/

namespace A256604.P10150774526794242028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [4, 4] fun n f1 =>
  A001222 (f1 (A180243 n).toNat).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A256604.P10150774526794242028

/-! ## A256604.P632822949012902285

`eq[1, A000041(a(A180243(n))-1)]` with `a(0)=3, a(1)=3`
-/

namespace A256604.P632822949012902285
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3, 3] fun n f2 =>
  A000041 (f2 (A180243 n).toNat - 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A256604.P632822949012902285

/-! ## A256604.P11514235050950027719

`eq[1, A001221(a(A180243(n))+3)]` with `a(0)=3, a(1)=3`
-/

namespace A256604.P11514235050950027719
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3, 3] fun n f2 =>
  A001221 (f2 (A180243 n).toNat + 3).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A256604.P11514235050950027719

/-!
# A256605: Least k such that n+1 is the n-th divisor of k.

The programs for A256605, the canonical program `A256605.P11334752825439384772` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A256605 has offset 2).

The definition of A256605 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A256605.P11334752825439384772

`A003418(n+3)/A007917(n+2)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A256605

/-- `A003418(n+3)/A007917(n+2)` -/
def P11334752825439384772.Spec : Prop :=
  ∀ n, P11334752825439384772.a n = (A256605 (n + 2) : ℚ)

end A256605

/-! ## A256605.P16508351430174737042

`A003418(n+3)/A136548(n+3)`
-/

namespace A256605.P16508351430174737042
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003418 (n + 3) : ℚ) / (A136548 (n + 3) : ℚ)

end

end A256605.P16508351430174737042

namespace A256605

/-- `A003418(n+3)/A136548(n+3)` -/
def P16508351430174737042.Spec : Prop :=
  ∀ n, P16508351430174737042.a n = (A256605 (n + 2) : ℚ)

end A256605

/-! ## A256605.P15834517634961815005

`A003418(n+3)/A055377(2*(n+2))`
-/

namespace A256605.P15834517634961815005
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003418 (n + 3) : ℚ) / (A055377 (2 * (n + 2)) : ℚ)

end

end A256605.P15834517634961815005

namespace A256605

/-- `A003418(n+3)/A055377(2*(n+2))` -/
def P15834517634961815005.Spec : Prop :=
  ∀ n, P15834517634961815005.a n = (A256605 (n + 2) : ℚ)

end A256605

/-! ## A256605.P1406709035834705555

`A003418(n+3)/A013635(n+3)%(n+3)`
-/

namespace A256605.P1406709035834705555
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003418 (n + 3) : ℚ) / (Int.tmod (A013635 (n + 3)) (n + 3 : ℤ) : ℚ)

end

end A256605.P1406709035834705555

namespace A256605

/-- `A003418(n+3)/A013635(n+3)%(n+3)` -/
def P1406709035834705555.Spec : Prop :=
  ∀ n, P1406709035834705555.a n = (A256605 (n + 2) : ℚ)

end A256605

/-!
# A256607: Eventual period of 2^(2^k) mod n.

The programs for A256607, there is no canonical definition to state claims against.
-/

/-! ## A256607.P10351044973182120591

`A007733(A007733(n+1))`
-/

namespace A256607.P10351044973182120591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007733 (A007733 (n + 1)).toNat

end

end A256607.P10351044973182120591

/-! ## A256607.P5526997419085799711

`A007733(A007735(-xor(n, -1)))`
-/

namespace A256607.P5526997419085799711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007733 (A007735 (-Int.xor (n : ℤ) (-1)).toNat).toNat

end

end A256607.P5526997419085799711

/-! ## A256607.P11958916081663170809

`A385989(A007735(n+1))-A007735(n+1)`
-/

namespace A256607.P11958916081663170809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385989 (A007735 (n + 1)).toNat - A007735 (n + 1)

end

end A256607.P11958916081663170809

/-! ## A256607.P8767696362068774194

`A054703(gcd(A007735(n+1), A053575(n+1)))`
-/

namespace A256607.P8767696362068774194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054703 (Int.gcd (A007735 (n + 1)) (A053575 (n + 1)))

end

end A256607.P8767696362068774194

/-! ## A256607.P14843549587101107814

`A054703(A000265(A054703(A000265(n+1))))`
-/

namespace A256607.P14843549587101107814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054703 (A000265 (A054703 (A000265 (n + 1)).toNat).toNat).toNat

end

end A256607.P14843549587101107814

/-! ## A256607.P7882091410321923132

`A007733(2*A007733(Δ[n²]-n))`
-/

namespace A256607.P7882091410321923132
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007733 (2 * A007733 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat).toNat

end

end A256607.P7882091410321923132

/-! ## A256607.P2106333226118850642

`A279185(A000982(A000265(n+1)))`
-/

namespace A256607.P2106333226118850642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279185 (A000982 (A000265 (n + 1)).toNat).toNat

end

end A256607.P2106333226118850642

/-! ## A256607.P225888119870660803

`A279185(A000265(A000265((n+1)²)+1)+1)`
-/

namespace A256607.P225888119870660803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279185 (A000265 (A000265 ((n + 1) ^ 2) + 1).toNat + 1).toNat

end

end A256607.P225888119870660803

/-! ## A256607.P11827619816813190156

`A279185(∑[n]+3)`
-/

namespace A256607.P11827619816813190156
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279185 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A256607.P11827619816813190156

/-! ## A256607.P8403808665657435760

`A000026(A279185((2*n+1)*(n+2)))`
-/

namespace A256607.P8403808665657435760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000026 (A279185 ((2 * n + 1) * (n + 2))).toNat

end

end A256607.P8403808665657435760

/-!
# A256608: Longest eventual period of a^(2^k) mod n for all a.

The programs for A256608, there is no canonical definition to state claims against.
-/

/-! ## A256608.P3528787196765883285

`A007733(A002322(n+1))`
-/

namespace A256608.P3528787196765883285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007733 (A002322 (n + 1)).toNat

end

end A256608.P3528787196765883285

/-! ## A256608.P2608651350094506586

`A007733(A011773(n+1))`
-/

namespace A256608.P2608651350094506586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007733 (A011773 (n + 1)).toNat

end

end A256608.P2608651350094506586

/-! ## A256608.P11260508077302716347

`A007733(A263027(n+1)-1)`
-/

namespace A256608.P11260508077302716347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007733 (A263027 (n + 1) - 1).toNat

end

end A256608.P11260508077302716347

/-! ## A256608.P7075759877341007295

`A007733(A134198(n+1)-A051903(n+1))`
-/

namespace A256608.P7075759877341007295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007733 (A134198 (n + 1) - A051903 (n + 1)).toNat

end

end A256608.P7075759877341007295

/-! ## A256608.P14214876812415772286

`A279187(2*n+1-A000720(2*n+1))`
-/

namespace A256608.P14214876812415772286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279187 ((2 * n + 1 : ℤ) - A000720 (2 * n + 1)).toNat

end

end A256608.P14214876812415772286

/-!
# A256617: Numbers having exactly two distinct prime factors, which are also adjacent prime numbers.

The programs for A256617, the canonical program `A256617.P10891670028466202195` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A256617 has offset 1).

The definition of A256617 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 143 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A256617.P6203224931848281621

`A251726(eq[1, A252370(n+1)]+1)`
-/

namespace A256617.P6203224931848281621
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251726 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A256617.P6203224931848281621

namespace A256617

/-- `A251726(eq[1, A252370(n+1)]+1)` -/
def P6203224931848281621.Spec : Prop :=
  ∀ n, P6203224931848281621.a n = A256617 (n + 1)

end A256617

/-! ## A256617.P4636814509873912945

`eq[A006530(n+1), A151800(A020639(n+1))]+1`
-/

namespace A256617.P4636814509873912945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A020639 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A256617.P4636814509873912945

namespace A256617

/-- `eq[A006530(n+1), A151800(A020639(n+1))]+1` -/
def P4636814509873912945.Spec : Prop :=
  ∀ n, (P4636814509873912945.a n : ℤ) = A256617 (n + 1)

end A256617

/-! ## A256617.P10891670028466202195

`filter[A007774(n+1), A137794(#)]`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A256617

/-- `filter[A007774(n+1), A137794(#)]` -/
def P10891670028466202195.Spec : Prop :=
  ∀ n, P10891670028466202195.a n = A256617 (n + 1)

theorem P10891670028466202195.correct : P10891670028466202195.Spec := by
  intro n
  simp only [A256617, Nat.add_sub_cancel]

end A256617

/-! ## A256617.P7065184408246112048

`filter[A007774(n+1), A296210(#)]`
-/

namespace A256617.P7065184408246112048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007774 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A296210 (f1 j).toNat = 1) n)

end

end A256617.P7065184408246112048

namespace A256617

/-- `filter[A007774(n+1), A296210(#)]` -/
def P7065184408246112048.Spec : Prop :=
  ∀ n, P7065184408246112048.a n = A256617 (n + 1)

end A256617

/-! ## A256617.P4167952024679939927

`∩[A007774(n+1), A066311(n+1)]`
-/

namespace A256617.P4167952024679939927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007774 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066311 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A256617.P4167952024679939927

namespace A256617

/-- `∩[A007774(n+1), A066311(n+1)]` -/
def P4167952024679939927.Spec : Prop :=
  ∀ n, (P4167952024679939927.a n : ℤ) = A256617 (n + 1)

end A256617

/-! ## A256617.P9893506089009480992

`∩[A007774(n+1), A066312(n+1)]`
-/

namespace A256617.P9893506089009480992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007774 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066312 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A256617.P9893506089009480992

namespace A256617

/-- `∩[A007774(n+1), A066312(n+1)]` -/
def P9893506089009480992.Spec : Prop :=
  ∀ n, (P9893506089009480992.a n : ℤ) = A256617 (n + 1)

end A256617

/-! ## A256617.P731575031853644701

`∩[A007774(n+1), A073491(n+1)]`
-/

namespace A256617.P731575031853644701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007774 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073491 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A256617.P731575031853644701

namespace A256617

/-- `∩[A007774(n+1), A073491(n+1)]` -/
def P731575031853644701.Spec : Prop :=
  ∀ n, (P731575031853644701.a n : ℤ) = A256617 (n + 1)

end A256617

/-! ## A256617.P12318229446418179626

`∩[A007774(n+1), A104210(n+1)]`
-/

namespace A256617.P12318229446418179626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007774 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104210 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A256617.P12318229446418179626

namespace A256617

/-- `∩[A007774(n+1), A104210(n+1)]` -/
def P12318229446418179626.Spec : Prop :=
  ∀ n, (P12318229446418179626.a n : ℤ) = A256617 (n + 1)

end A256617

/-! ## A256617.P12876931390061986496

`∩[A007774(n+1), A378884(n+1)]`
-/

namespace A256617.P12876931390061986496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007774 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378884 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A256617.P12876931390061986496

namespace A256617

/-- `∩[A007774(n+1), A378884(n+1)]` -/
def P12876931390061986496.Spec : Prop :=
  ∀ n, (P12876931390061986496.a n : ℤ) = A256617 (n + 1)

end A256617

/-! ## A256617.P2047297865147117651

`filter[A070915(n+1), A296210(#)]`
-/

namespace A256617.P2047297865147117651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070915 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A296210 (f1 j).toNat = 1) n)

end

end A256617.P2047297865147117651

namespace A256617

/-- `filter[A070915(n+1), A296210(#)]` -/
def P2047297865147117651.Spec : Prop :=
  ∀ n, P2047297865147117651.a n = A256617 (n + 1)

end A256617

/-! ## A256617.P14841956278280025892

`∩[A066312(n+1), A070915(n+1)]`
-/

namespace A256617.P14841956278280025892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066312 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070915 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A256617.P14841956278280025892

namespace A256617

/-- `∩[A066312(n+1), A070915(n+1)]` -/
def P14841956278280025892.Spec : Prop :=
  ∀ n, (P14841956278280025892.a n : ℤ) = A256617 (n + 1)

end A256617

/-! ## A256617.P9271040039734961898

`∩[A070915(n+1), A104210(n+1)]`
-/

namespace A256617.P9271040039734961898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070915 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104210 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A256617.P9271040039734961898

namespace A256617

/-- `∩[A070915(n+1), A104210(n+1)]` -/
def P9271040039734961898.Spec : Prop :=
  ∀ n, (P9271040039734961898.a n : ℤ) = A256617 (n + 1)

end A256617

/-! ## A256617.P10392389463077550881

`∩[A070915(n+1), A378884(n+1)]`
-/

namespace A256617.P10392389463077550881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070915 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378884 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A256617.P10392389463077550881

namespace A256617

/-- `∩[A070915(n+1), A378884(n+1)]` -/
def P10392389463077550881.Spec : Prop :=
  ∀ n, (P10392389463077550881.a n : ℤ) = A256617 (n + 1)

end A256617

/-! ## A256617.P11832718611243669777

`eq[1, A243055(n+1)]+1`
-/

namespace A256617.P11832718611243669777
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243055 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A256617.P11832718611243669777

namespace A256617

/-- `eq[1, A243055(n+1)]+1` -/
def P11832718611243669777.Spec : Prop :=
  ∀ n, (P11832718611243669777.a n : ℤ) = A256617 (n + 1)

end A256617

/-! ## A256617.P14067849248882166974

`eq[1, A243056(n+3)]+3`
-/

namespace A256617.P14067849248882166974
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243056 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 3

end

end A256617.P14067849248882166974

namespace A256617

/-- `eq[1, A243056(n+3)]+3` -/
def P14067849248882166974.Spec : Prop :=
  ∀ n, (P14067849248882166974.a n : ℤ) = A256617 (n + 1)

end A256617

/-! ## A256617.P10867268891915666626

`filter[A066311(n+1), A215480(#)]`
-/

namespace A256617.P10867268891915666626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066311 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A215480 (f1 j).toNat = 1) n)

end

end A256617.P10867268891915666626

namespace A256617

/-- `filter[A066311(n+1), A215480(#)]` -/
def P10867268891915666626.Spec : Prop :=
  ∀ n, P10867268891915666626.a n = A256617 (n + 1)

end A256617

/-! ## A256617.P18392415909096924797

`filter[A066312(n+1), A215480(#)]`
-/

namespace A256617.P18392415909096924797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066312 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A215480 (f1 j).toNat = 1) n)

end

end A256617.P18392415909096924797

namespace A256617

/-- `filter[A066312(n+1), A215480(#)]` -/
def P18392415909096924797.Spec : Prop :=
  ∀ n, P18392415909096924797.a n = A256617 (n + 1)

end A256617

/-! ## A256617.P6686084206111975160

`filter[A073491(n+1), A215480(#)]`
-/

namespace A256617.P6686084206111975160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073491 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A215480 (f1 j).toNat = 1) n)

end

end A256617.P6686084206111975160

namespace A256617

/-- `filter[A073491(n+1), A215480(#)]` -/
def P6686084206111975160.Spec : Prop :=
  ∀ n, P6686084206111975160.a n = A256617 (n + 1)

end A256617

/-! ## A256617.P9053435188545988770

`filter[A104210(n+1), A215480(#)]`
-/

namespace A256617.P9053435188545988770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104210 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A215480 (f1 j).toNat = 1) n)

end

end A256617.P9053435188545988770

namespace A256617

/-- `filter[A104210(n+1), A215480(#)]` -/
def P9053435188545988770.Spec : Prop :=
  ∀ n, P9053435188545988770.a n = A256617 (n + 1)

end A256617

/-! ## A256617.P3064066680079576051

`filter[A378884(n+1), A215480(#)]`
-/

namespace A256617.P3064066680079576051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378884 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A215480 (f1 j).toNat = 1) n)

end

end A256617.P3064066680079576051

namespace A256617

/-- `filter[A378884(n+1), A215480(#)]` -/
def P3064066680079576051.Spec : Prop :=
  ∀ n, P3064066680079576051.a n = A256617 (n + 1)

end A256617

/-!
# A256618: Index i such that A121217(i) = n, or 0 if no such i exists.

The programs for A256618, there is no canonical definition to state claims against.
-/

/-! ## A256618.P16762462089559365371

`A255479(n+1)+A107110(A059328(n))`
-/

namespace A256618.P16762462089559365371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255479 (n + 1) + A107110 (A059328 n).toNat

end

end A256618.P16762462089559365371

/-! ## A256618.P8201108795452478010

`A272269(A255479(n+1))+1`
-/

namespace A256618.P8201108795452478010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272269 (A255479 (n + 1)).toNat + 1

end

end A256618.P8201108795452478010

/-! ## A256618.P16256204321124459899

`A255479(n+1)+A098804(A174640(n))`
-/

namespace A256618.P16256204321124459899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255479 (n + 1) + A098804 (A174640 n).toNat

end

end A256618.P16256204321124459899

/-! ## A256618.P2129111811325551469

`A255479(n+1)+A067898(A318748(n))`
-/

namespace A256618.P2129111811325551469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255479 (n + 1) + A067898 (A318748 n).toNat

end

end A256618.P2129111811325551469

/-! ## A256618.P7470258383802322819

`or(A025469(A005578(n)), A255479(n+1))`
-/

namespace A256618.P7470258383802322819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A025469 (A005578 n).toNat) (A255479 (n + 1))

end

end A256618.P7470258383802322819

/-!
# A256623: Number of distinct n-digit patterns in base 10 such that the pattern and its reverse are prime.

The programs for A256623, there is no canonical definition to state claims against.
-/

/-! ## A256623.P16911153064136471521

`(A048054(n+1)+A016115(n+1))/2`
-/

namespace A256623.P16911153064136471521
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048054 (n + 1) + A016115 (n + 1) : ℚ) / 2

end

end A256623.P16911153064136471521

/-! ## A256623.P12176186119280798738

`(A048054(n+1)+Δ[A050251(n)])/2`
-/

namespace A256623.P12176186119280798738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050251 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048054 (n + 1) + (f1 (n + 1) - f1 n) : ℚ) / 2

end

end A256623.P12176186119280798738

/-! ## A256623.P290060162402061948

`(A048054(n+1)+A050251(n+1)-A050251(n))/2`
-/

namespace A256623.P290060162402061948
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048054 (n + 1) + (A050251 (n + 1) - A050251 n) : ℚ) / 2

end

end A256623.P290060162402061948

/-! ## A256623.P12871321365196044856

`Δ[A050251(n)]+A152014(n+1)/2`
-/

namespace A256623.P12871321365196044856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050251 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) + (A152014 (n + 1) : ℚ) / 2

end

end A256623.P12871321365196044856

/-! ## A256623.P8454107621535619334

`A016115(n+1)+A152014(n+1)/2`
-/

namespace A256623.P8454107621535619334
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016115 (n + 1) : ℚ) + (A152014 (n + 1) : ℚ) / 2

end

end A256623.P8454107621535619334

/-!
# A256624: a(n) = 2 * A153182(n) - A005875(n).

The programs for A256624, there is no canonical definition to state claims against.
-/

/-! ## A256624.P248619484418020666

`2*A153182(n)-A005875(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A256624.P248619484418020666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A153182 n - A005875 n

end

end A256624.P248619484418020666

/-! ## A256624.P4000919464732896578

`(-1)^n*A153181(n)`
-/

namespace A256624.P4000919464732896578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A153181 n

end

end A256624.P4000919464732896578

/-! ## A256624.P3604328927931493007

`A153182(4*n)`
-/

namespace A256624.P3604328927931493007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153182 (4 * n)

end

end A256624.P3604328927931493007

/-! ## A256624.P3543401152903571386

`A153182(A008574(n))-A000007(n)`
-/

namespace A256624.P3543401152903571386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153182 (A008574 n).toNat - A000007 n

end

end A256624.P3543401152903571386

/-! ## A256624.P15034772694142585833

`A153182(A008586(n))%A174259(n+1)`
-/

namespace A256624.P15034772694142585833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A153182 (A008586 n).toNat) (A174259 (n + 1))

end

end A256624.P15034772694142585833

/-! ## A256624.P17482007693414776323

`A153182(A008574(n))-A359774(A005384(n+1))`
-/

namespace A256624.P17482007693414776323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153182 (A008574 n).toNat - A359774 (A005384 (n + 1)).toNat

end

end A256624.P17482007693414776323

/-! ## A256624.P1478275610680920035

`A153182(A008586(n))/A034380(A033948(n+1))`
-/

namespace A256624.P1478275610680920035
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A153182 (A008586 n).toNat : ℚ) / (A034380 (A033948 (n + 1)).toNat : ℚ)

end

end A256624.P1478275610680920035

/-! ## A256624.P11537870217083278415

`A153182(A005843(A005843(n)))%A006512(n+1)`
-/

namespace A256624.P11537870217083278415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A153182 (A005843 (A005843 n).toNat).toNat) (A006512 (n + 1))

end

end A256624.P11537870217083278415

/-! ## A256624.P9391309132783829322

`A000038(n)-(A259825(n)+A117726(A028310(n)))`
-/

namespace A256624.P9391309132783829322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n - (A259825 n + A117726 (A028310 n).toNat)

end

end A256624.P9391309132783829322

/-!
# A256625: Product of the first n lucky numbers.

The programs for A256625, there is no canonical definition to state claims against.
-/

/-! ## A256625.P5209364138321124831

`∏[A350001(∑[n])]`
-/

namespace A256625.P5209364138321124831
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350001 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A256625.P5209364138321124831

/-! ## A256625.P13229298897906563394

`∏[A000959(n+1)]`
-/

namespace A256625.P13229298897906563394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A256625.P13229298897906563394

/-! ## A256625.P18215396753755087150

`∏[sqrt(A032598(n+1))]`
-/

namespace A256625.P18215396753755087150
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A032598 (n + 1) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A256625.P18215396753755087150

/-! ## A256625.P1047143840300510451

`∏[A255545(∑[n+1])]`
-/

namespace A256625.P1047143840300510451
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255545 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A256625.P1047143840300510451

/-! ## A256625.P17030724973480423377

`∏[A255547(∑[n]+1)]`
-/

namespace A256625.P17030724973480423377
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255547 (∑ j ∈ Finset.range (n + 1), f2 j + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A256625.P17030724973480423377

/-! ## A256625.P3752709384163853978

`∏[A254967(∑[n]+n)]`
-/

namespace A256625.P3752709384163853978
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254967 (∑ j ∈ Finset.range (n + 1), f2 j + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A256625.P3752709384163853978

/-! ## A256625.P13076911107393399991

`∏[eq[1, A260429(n+1)]+1]`
-/

namespace A256625.P13076911107393399991
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260429 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A256625.P13076911107393399991

/-! ## A256625.P16406685658422444291

`∏[lt[A260437(n+1), 1]+1]`
-/

namespace A256625.P16406685658422444291
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260437 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A256625.P16406685658422444291

/-! ## A256625.P5149359575920004563

`∏[lt[A264940(n+1), 1]+1]`
-/

namespace A256625.P5149359575920004563
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264940 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A256625.P5149359575920004563

/-! ## A256625.P4050289540569119394

`∏[A032600(n+1)+A000040(n+1)]`
-/

namespace A256625.P4050289540569119394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032600 (n + 1) + A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A256625.P4050289540569119394

/-!
# A256626: Expansion of psi(x) / psi(x^3) in powers of x where psi() is a Ramanujan theta function.

The programs for A256626, there is no canonical definition to state claims against.
-/

/-! ## A256626.P16930089241908575530

`(-1)^n*A135211(n)`
-/

namespace A256626.P16930089241908575530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A135211 n

end

end A256626.P16930089241908575530

/-! ## A256626.P16392788679372818169

`A135211(n)/A033999(n)`
-/

namespace A256626.P16392788679372818169
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A135211 n : ℚ) / (A033999 n : ℚ)

end

end A256626.P16392788679372818169

/-! ## A256626.P9817803844579319338

`A271722(2*n)`
-/

namespace A256626.P9817803844579319338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271722 (2 * n)

end

end A256626.P9817803844579319338

/-!
# A256628: Index i such that A251622(i) = n, or 0 if no such i exists.

The programs for A256628, there is no canonical definition to state claims against.
-/

/-! ## A256628.P17356860010485897976

`A112990(n+1)-A175337(A256648(n))`
-/

namespace A256628.P17356860010485897976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112990 (n + 1) - A175337 (A256648 n).toNat

end

end A256628.P17356860010485897976

/-! ## A256628.P9233552666419118292

`A112990(n+1)-A189668(A006086(n+1))`
-/

namespace A256628.P9233552666419118292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112990 (n + 1) - A189668 (A006086 (n + 1)).toNat

end

end A256628.P9233552666419118292

/-!
# A256629: Integer areas A of integer-sided triangles such that the length of the circumradius is a prime number.

The programs for A256629, there is no canonical definition to state claims against.
-/

/-! ## A256629.P15054524545442896250

`A230136(n+1)/2`
-/

namespace A256629.P15054524545442896250
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A230136 (n + 1) : ℚ) / 2

end

end A256629.P15054524545442896250

/-! ## A256629.P11644991197092357659

`A273943(A230136(n+1))`
-/

namespace A256629.P11644991197092357659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A230136 (n + 1)).toNat

end

end A256629.P11644991197092357659

/-! ## A256629.P13479369310991685698

`A014682(∪[A230136(n+1), A357252(n+4)])`
-/

namespace A256629.P13479369310991685698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230136 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357252 (n + 4)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A256629.P13479369310991685698

/-! ## A256629.P3532853226323916502

`A103391(A230136(n+1)-2)`
-/

namespace A256629.P3532853226323916502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103391 (A230136 (n + 1) - 2).toNat

end

end A256629.P3532853226323916502

/-!
# A256631: Numbers n such that the decimal expansions of both n and n^2 have 0 as smallest digit and 5 as largest digit.

The programs for A256631, there is no canonical definition to state claims against.
-/

/-! ## A256631.P4177382015104089387

`A044000(eq[A067434(2*n+1), A226078(n+1)])`
-/

namespace A256631.P4177382015104089387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067434 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226078 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044000 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A256631.P4177382015104089387

/-!
# A256636: Expansion of phi(-x^3) / f(-x^2) in powers of x where phi(), f() are Ramanujan theta functions.

The programs for A256636, there is no canonical definition to state claims against.
-/

/-! ## A256636.P4091686572804964373

`(-1)^n*A258327(n)`
-/

namespace A256636.P4091686572804964373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A258327 n

end

end A256636.P4091686572804964373

/-! ## A256636.P12300574152945521604

`A258327(n)/A033999(n)`
-/

namespace A256636.P12300574152945521604
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A258327 n : ℚ) / (A033999 n : ℚ)

end

end A256636.P12300574152945521604

/-! ## A256636.P17581827564223259732

`A258327(n)*A292493(Δ[A110654(n)])`
-/

namespace A256636.P17581827564223259732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258327 n * A292493 (f1 (n + 1) - f1 n).toNat

end

end A256636.P17581827564223259732

/-! ## A256636.P7750723896140361986

`A256626(3*n)`
-/

namespace A256636.P7750723896140361986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256626 (3 * n)

end

end A256636.P7750723896140361986

/-! ## A256636.P16372782236927123127

`or(A000007(n), A256626(A008486(n)))`
-/

namespace A256636.P16372782236927123127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A256626 (A008486 n).toNat)

end

end A256636.P16372782236927123127

/-! ## A256636.P16046192086145543955

`A256626(A008486(n))+A000007(n+1)`
-/

namespace A256636.P16046192086145543955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256626 (A008486 n).toNat + A000007 (n + 1)

end

end A256636.P16046192086145543955

/-! ## A256636.P8715929077519576541

`A256626(A016777(n)-1)+2%Δ[A032766(n)]`
-/

namespace A256636.P8715929077519576541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256626 (A016777 n - 1).toNat + Int.tmod 2 (f1 (n + 1) - f1 n)

end

end A256636.P8715929077519576541

/-! ## A256636.P3542848002305334065

`A271722(6*n)`
-/

namespace A256636.P3542848002305334065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271722 (6 * n)

end

end A256636.P3542848002305334065

/-! ## A256636.P5000799498159698041

`A256626(A008486(n))%∑[A242144(n+1)]`
-/

namespace A256636.P5000799498159698041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242144 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A256626 (A008486 n).toNat) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A256636.P5000799498159698041

/-!
# A256637: Expansion of psi(-q) * phi(-q^3)^2 / (q * psi(-q^3)^3) in powers of q where phi(), psi() are Ramanujan theta functions.

The programs for A256637, there is no canonical definition to state claims against.
-/

/-! ## A256637.P4948702803109202387

`A003406(A042347(n))`
-/

namespace A256637.P4948702803109202387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003406 (A042347 n).toNat

end

end A256637.P4948702803109202387

/-! ## A256637.P11780161383098209994

`A164272(n)/A131713(A331022(n))`
-/

namespace A256637.P11780161383098209994
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A164272 n : ℚ) / (A131713 (A331022 n).toNat : ℚ)

end

end A256637.P11780161383098209994

/-! ## A256637.P12938355242286538094

`A002655(lcm(A144845(n), A268272(n)))`
-/

namespace A256637.P12938355242286538094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002655 (Int.lcm (A144845 n) (A268272 n))

end

end A256637.P12938355242286538094

/-! ## A256637.P5136205813421251071

`A226289(A127920(n+1)%A244174(n))`
-/

namespace A256637.P5136205813421251071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226289 (Int.tmod (A127920 (n + 1)) (A244174 n)).toNat

end

end A256637.P5136205813421251071

/-! ## A256637.P8533953518659254897

`A113446(A051966(n+1)-A167911(n+1))`
-/

namespace A256637.P8533953518659254897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113446 (A051966 (n + 1) - A167911 (n + 1)).toNat

end

end A256637.P8533953518659254897

/-!
# A256638: Orders n of cyclotomic polynomials containing a coefficient with an absolute value greater than one, with n not divisible by 5.

The programs for A256638, there is no canonical definition to state claims against.
-/

/-! ## A256638.P16602271362247308128

`filter[A013590(n+1), A011558(#)]`
-/

namespace A256638.P16602271362247308128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013590 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A011558 (f1 j).toNat = 1) n)

end

end A256638.P16602271362247308128

/-!
# A256639: a(n) is the base-(-10) representation of a(n-1) read in base 10, starting from -1.

The programs for A256639, there is no canonical definition to state claims against.
-/

/-! ## A256639.P9182599070543959902

`A039723(a(n-1))` with `a(0)=-1, a(1)=19`
-/

namespace A256639.P9182599070543959902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [-1, 19] fun n a =>
  A039723 (a (n - 1)).toNat

end

end A256639.P9182599070543959902

/-!
# A256641: a(n) is the total number of free ends of 5 line segments expansion at n iterations (see Comments lines for definition).

The programs for A256641, there is no canonical definition to state claims against.
-/

/-! ## A256641.P7495787620726162190

`lcm(5, A158522(A018212(n)))`
-/

namespace A256641.P7495787620726162190
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 5 (A158522 (A018212 n).toNat)

end

end A256641.P7495787620726162190

/-! ## A256641.P2090518507646534875

`5*A034444(record[A164652(n)])`
-/

namespace A256641.P2090518507646534875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164652 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A034444 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A256641.P2090518507646534875

/-! ## A256641.P1756077770301073333

`5*A000005(A171450(n+1))`
-/

namespace A256641.P1756077770301073333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A000005 (A171450 (n + 1)).toNat

end

end A256641.P1756077770301073333

/-! ## A256641.P1846562052343728349

`A102260(A032559(n+1)-A116680(n))`
-/

namespace A256641.P1846562052343728349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102260 (A032559 (n + 1) - A116680 n).toNat

end

end A256641.P1846562052343728349

/-! ## A256641.P17006335756938085903

`A222181(A343732(n+1)-A343766(n))`
-/

namespace A256641.P17006335756938085903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222181 (A343732 (n + 1) - A343766 n).toNat

end

end A256641.P17006335756938085903

/-!
# A256644: Numbers of alternating permutations where numbers at odd positions and even positions are monotone respectively.

The programs for A256644, there is no canonical definition to state claims against.
-/

/-! ## A256644.P16122536596836781096

`A210671(n)%A000800(n)+1`
-/

namespace A256644.P16122536596836781096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A210671 n) (A000800 n) + 1

end

end A256644.P16122536596836781096

/-! ## A256644.P13283493007755692530

`A153152(A210671(and(n, A290114(n))))`
-/

namespace A256644.P13283493007755692530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (A210671 (Int.land (n : ℤ) (A290114 n)).toNat).toNat

end

end A256644.P13283493007755692530

/-!
# A256645: 25-gonal pyramidal numbers: a(n) = n*(n+1)*(23*n-20)/6.

The programs for A256645, the canonical program `A256645.P2769046030559513140` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A256645 has offset 0).

The definition of A256645 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(n+1)*(23*n-20)/6` (program `A256645.P10262124526438936741`, by `A256645.P10262124526438936741.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A256645.P10262124526438936741

`n*(n+1)*(23*n-20)/6`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A256645.P10262124526438936741
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n * (n + 1) : ℤ) * ((23 * n : ℤ) - 20) : ℚ) / 6

end

end A256645.P10262124526438936741

namespace A256645

/-- `n*(n+1)*(23*n-20)/6` -/
def P10262124526438936741.Spec : Prop :=
  ∀ n, P10262124526438936741.a n = (A256645 n : ℚ)

theorem P10262124526438936741.correct : P10262124526438936741.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A256645, Nat.add_sub_cancel, A256645.P10262124526438936741.a, A256645.P2769046030559513140.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A256645, Nat.add_sub_cancel, A256645.P10262124526438936741.a, A256645.P2769046030559513140.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A256645

/-! ## A256645.P2769046030559513140

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=0, a(1)=1, a(2)=26, a(3)=98`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A256645

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P2769046030559513140.Spec : Prop :=
  ∀ n, P2769046030559513140.a n = A256645 n

theorem P2769046030559513140.correct : P2769046030559513140.Spec := by
  intro n
  simp only [A256645]

end A256645

/-! ## A256645.P2363438259071150634

`∑[∑[a(n-1)+23]]` with `a(0)=0, a(1)=1`
-/

namespace A256645.P2363438259071150634
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f2 =>
  f2 (n - 1) + 23

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A256645.P2363438259071150634

namespace A256645

/-- `∑[∑[a(n-1)+23]]` -/
def P2363438259071150634.Spec : Prop :=
  ∀ n, (P2363438259071150634.a n : ℤ) = A256645 n

end A256645

/-! ## A256645.P7793315632283763896

`∑[3*C(n, 2)]+∑[n*(10*n-9)]`
-/

namespace A256645.P7793315632283763896
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * Nat.choose n 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ((10 * n : ℤ) - 9)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A256645.P7793315632283763896

namespace A256645

/-- `∑[3*C(n, 2)]+∑[n*(10*n-9)]` -/
def P7793315632283763896.Spec : Prop :=
  ∀ n, P7793315632283763896.a n = A256645 n

end A256645

/-! ## A256645.P12349784032446313272

`∑[n*(13*n-12)]-∑[3*C(n, 2)]`
-/

namespace A256645.P12349784032446313272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ((13 * n : ℤ) - 12)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * Nat.choose n 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A256645.P12349784032446313272

namespace A256645

/-- `∑[n*(13*n-12)]-∑[3*C(n, 2)]` -/
def P12349784032446313272.Spec : Prop :=
  ∀ n, P12349784032446313272.a n = A256645 n

end A256645

/-! ## A256645.P6660983106614877889

`n*record[or(1, n)²-n]-(C(n+4, 3)-4)`
-/

namespace A256645.P6660983106614877889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 1 n ^ 2 : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - ((Nat.choose (n + 4) 3 : ℤ) - 4)

end

end A256645.P6660983106614877889

namespace A256645

/-- `n*record[or(1, n)²-n]-(C(n+4, 3)-4)` -/
def P6660983106614877889.Spec : Prop :=
  ∀ n, P6660983106614877889.a n = A256645 n

end A256645

/-! ## A256645.P9049662700790837909

`∑[A255184(n)]`
-/

namespace A256645.P9049662700790837909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255184 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A256645.P9049662700790837909

namespace A256645

/-- `∑[A255184(n)]` -/
def P9049662700790837909.Spec : Prop :=
  ∀ n, P9049662700790837909.a n = A256645 n

end A256645

/-! ## A256645.P5160843261639718713

`A203552(n)+A083127(n)`
-/

namespace A256645.P5160843261639718713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203552 n + A083127 n

end

end A256645.P5160843261639718713

namespace A256645

/-- `A203552(n)+A083127(n)` -/
def P5160843261639718713.Spec : Prop :=
  ∀ n, P5160843261639718713.a n = A256645 n

end A256645

/-! ## A256645.P15036998589415714032

`A172117(n)+A135503(n)`
-/

namespace A256645.P15036998589415714032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172117 n + A135503 n

end

end A256645.P15036998589415714032

namespace A256645

/-- `A172117(n)+A135503(n)` -/
def P15036998589415714032.Spec : Prop :=
  ∀ n, P15036998589415714032.a n = A256645 n

end A256645

/-! ## A256645.P9525825719804940277

`A110451(n)-A092286(n)`
-/

namespace A256645.P9525825719804940277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110451 n - A092286 n

end

end A256645.P9525825719804940277

namespace A256645

/-- `A110451(n)-A092286(n)` -/
def P9525825719804940277.Spec : Prop :=
  ∀ n, P9525825719804940277.a n = A256645 n

end A256645

/-! ## A256645.P4365784686347022011

`A256648(n)-A135503(n)`
-/

namespace A256645.P4365784686347022011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256648 n - A135503 n

end

end A256645.P4365784686347022011

namespace A256645

/-- `A256648(n)-A135503(n)` -/
def P4365784686347022011.Spec : Prop :=
  ∀ n, P4365784686347022011.a n = A256645 n

end A256645

/-! ## A256645.P10605431099747185948

`A237617(n)+2*A135503(n)`
-/

namespace A256645.P10605431099747185948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237617 n + 2 * A135503 n

end

end A256645.P10605431099747185948

namespace A256645

/-- `A237617(n)+2*A135503(n)` -/
def P10605431099747185948.Spec : Prop :=
  ∀ n, P10605431099747185948.a n = A256645 n

end A256645

/-! ## A256645.P14427945654387192134

`2*A172073(n)-A000292(n)`
-/

namespace A256645.P14427945654387192134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A172073 n - A000292 n

end

end A256645.P14427945654387192134

namespace A256645

/-- `2*A172073(n)-A000292(n)` -/
def P14427945654387192134.Spec : Prop :=
  ∀ n, P14427945654387192134.a n = A256645 n

end A256645

/-! ## A256645.P37176814644960361

`2*A172076(n)-A002413(n)`
-/

namespace A256645.P37176814644960361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A172076 n - A002413 n

end

end A256645.P37176814644960361

namespace A256645

/-- `2*A172076(n)-A002413(n)` -/
def P37176814644960361.Spec : Prop :=
  ∀ n, P37176814644960361.a n = A256645 n

end A256645

/-! ## A256645.P13956011648029033034

`2*A237616(n)-A007584(n)`
-/

namespace A256645.P13956011648029033034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A237616 n - A007584 n

end

end A256645.P13956011648029033034

namespace A256645

/-- `2*A237616(n)-A007584(n)` -/
def P13956011648029033034.Spec : Prop :=
  ∀ n, P13956011648029033034.a n = A256645 n

end A256645

/-! ## A256645.P11456521204114400281

`2*A237618(n)-A237616(n)`
-/

namespace A256645.P11456521204114400281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A237618 n - A237616 n

end

end A256645.P11456521204114400281

namespace A256645

/-- `2*A237618(n)-A237616(n)` -/
def P11456521204114400281.Spec : Prop :=
  ∀ n, P11456521204114400281.a n = A256645 n

end A256645

/-! ## A256645.P6302245514783342485

`2*A256718(n)-A237618(n)`
-/

namespace A256645.P6302245514783342485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A256718 n - A237618 n

end

end A256645.P6302245514783342485

namespace A256645

/-- `2*A256718(n)-A237618(n)` -/
def P6302245514783342485.Spec : Prop :=
  ∀ n, P6302245514783342485.a n = A256645 n

end A256645

/-! ## A256645.P17950230932212801007

`n²+A144129(n)-A000292(n)`
-/

namespace A256645.P17950230932212801007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) + (A144129 n - A000292 n)

end

end A256645.P17950230932212801007

namespace A256645

/-- `n²+A144129(n)-A000292(n)` -/
def P17950230932212801007.Spec : Prop :=
  ∀ n, P17950230932212801007.a n = A256645 n

end A256645

/-! ## A256645.P14876918769413776145

`∑[A195039(n)+n]-A195039(n)`
-/

namespace A256645.P14876918769413776145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195039 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A195039 n

end

end A256645.P14876918769413776145

namespace A256645

/-- `∑[A195039(n)+n]-A195039(n)` -/
def P14876918769413776145.Spec : Prop :=
  ∀ n, P14876918769413776145.a n = A256645 n

end A256645

/-! ## A256645.P8878105781471171151

`A092966(n+1)-A343560(n+1)`
-/

namespace A256645.P8878105781471171151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092966 (n + 1) - A343560 (n + 1)

end

end A256645.P8878105781471171151

namespace A256645

/-- `A092966(n+1)-A343560(n+1)` -/
def P8878105781471171151.Spec : Prop :=
  ∀ n, P8878105781471171151.a n = A256645 n

end A256645

/-!
# A256646: 26-gonal pyramidal numbers: a(n) = n*(n+1)*(8*n-7)/2.

The programs for A256646, the canonical program `A256646.P18366836819213321195` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A256646 has offset 0).

The definition of A256646 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(n+1)*(8*n-7)/2` (program `A256646.P7580113732826579649`, by `A256646.P7580113732826579649.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A256646.P18366836819213321195

`(8*n-7)*C(n+1, 2)`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A256646

/-- `(8*n-7)*C(n+1, 2)` -/
def P18366836819213321195.Spec : Prop :=
  ∀ n, P18366836819213321195.a n = A256646 n

theorem P18366836819213321195.correct : P18366836819213321195.Spec := by
  intro n
  simp only [A256646]

end A256646

/-! ## A256646.P7580113732826579649

`n*(n+1)*(8*n-7)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A256646.P7580113732826579649
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n * (n + 1) : ℤ) * ((8 * n : ℤ) - 7) : ℚ) / 2

end

end A256646.P7580113732826579649

namespace A256646

/-- `n*(n+1)*(8*n-7)/2` -/
def P7580113732826579649.Spec : Prop :=
  ∀ n, P7580113732826579649.a n = (A256646 n : ℚ)

theorem P7580113732826579649.correct : P7580113732826579649.Spec := by
  intro n
  simp only [A256646, Nat.add_sub_cancel, A256646.P7580113732826579649.a, A256646.P18366836819213321195.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A256646

/-! ## A256646.P13718611589249919264

`∑[24*C(n, 2)+n]`
-/

namespace A256646.P13718611589249919264
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  24 * Nat.choose n 2 + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A256646.P13718611589249919264

namespace A256646

/-- `∑[24*C(n, 2)+n]` -/
def P13718611589249919264.Spec : Prop :=
  ∀ n, (P13718611589249919264.a n : ℤ) = A256646 n

end A256646

/-! ## A256646.P2506401377596872400

`∑[∑[a(n-1)+24]]` with `a(0)=0, a(1)=1`
-/

namespace A256646.P2506401377596872400
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f2 =>
  f2 (n - 1) + 24

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A256646.P2506401377596872400

namespace A256646

/-- `∑[∑[a(n-1)+24]]` -/
def P2506401377596872400.Spec : Prop :=
  ∀ n, (P2506401377596872400.a n : ℤ) = A256646 n

end A256646

/-! ## A256646.P6776397334114248215

`a(n-1)+n*(12*n-11)` with `a(0)=0`
-/

namespace A256646.P6776397334114248215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (n : ℤ) * ((12 * n : ℤ) - 11)

end

end A256646.P6776397334114248215

namespace A256646

/-- `a(n-1)+n*(12*n-11)` -/
def P6776397334114248215.Spec : Prop :=
  ∀ n, P6776397334114248215.a n = A256646 n

end A256646

/-! ## A256646.P7160719575649452943

`(4*2*(n+1)+1)*C(n, 2)+n`
-/

namespace A256646.P7160719575649452943
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (4 * (2 * (n + 1)) + 1) * Nat.choose n 2 + n

end

end A256646.P7160719575649452943

namespace A256646

/-- `(4*2*(n+1)+1)*C(n, 2)+n` -/
def P7160719575649452943.Spec : Prop :=
  ∀ n, (P7160719575649452943.a n : ℤ) = A256646 n

theorem P7160719575649452943.correct : P7160719575649452943.Spec := by
  intro n
  simp only [A256646, Nat.add_sub_cancel, A256646.P7160719575649452943.a, A256646.P18366836819213321195.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A256646

/-! ## A256646.P16903959611866686289

`∑[A255185(n)]`
-/

namespace A256646.P16903959611866686289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255185 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A256646.P16903959611866686289

namespace A256646

/-- `∑[A255185(n)]` -/
def P16903959611866686289.Spec : Prop :=
  ∀ n, P16903959611866686289.a n = A256646 n

end A256646

/-! ## A256646.P11927203904078726495

`∑[A064200(n)+n]`
-/

namespace A256646.P11927203904078726495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064200 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A256646.P11927203904078726495

namespace A256646

/-- `∑[A064200(n)+n]` -/
def P11927203904078726495.Spec : Prop :=
  ∀ n, P11927203904078726495.a n = A256646 n

end A256646

/-! ## A256646.P14531309198072876592

`A272871(n)+∑[n]`
-/

namespace A256646.P14531309198072876592
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272871 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A256646.P14531309198072876592

namespace A256646

/-- `A272871(n)+∑[n]` -/
def P14531309198072876592.Spec : Prop :=
  ∀ n, P14531309198072876592.a n = A256646 n

end A256646

/-! ## A256646.P10002181107728908262

`A280089(n)+∑[n-1]`
-/

namespace A256646.P10002181107728908262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280089 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A256646.P10002181107728908262

namespace A256646

/-- `A280089(n)+∑[n-1]` -/
def P10002181107728908262.Spec : Prop :=
  ∀ n, P10002181107728908262.a n = A256646 n

end A256646

/-! ## A256646.P1123151308119363822

`∑[2*A051866(n)-n]`
-/

namespace A256646.P1123151308119363822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A051866 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A256646.P1123151308119363822

namespace A256646

/-- `∑[2*A051866(n)-n]` -/
def P1123151308119363822.Spec : Prop :=
  ∀ n, P1123151308119363822.a n = A256646 n

end A256646

/-! ## A256646.P1894943592432519386

`∑[A152767(n)-2*n]`
-/

namespace A256646.P1894943592432519386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152767 n - (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A256646.P1894943592432519386

namespace A256646

/-- `∑[A152767(n)-2*n]` -/
def P1894943592432519386.Spec : Prop :=
  ∀ n, P1894943592432519386.a n = A256646 n

end A256646

/-! ## A256646.P4223507716383783706

`2*A172073(n)-∑[n]`
-/

namespace A256646.P4223507716383783706
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A172073 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A256646.P4223507716383783706

namespace A256646

/-- `2*A172073(n)-∑[n]` -/
def P4223507716383783706.Spec : Prop :=
  ∀ n, P4223507716383783706.a n = A256646 n

end A256646

/-! ## A256646.P7451409177491496100

`∑[n]+A144129(n)-n`
-/

namespace A256646.P7451409177491496100
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + (A144129 n - (n : ℤ))

end

end A256646.P7451409177491496100

namespace A256646

/-- `∑[n]+A144129(n)-n` -/
def P7451409177491496100.Spec : Prop :=
  ∀ n, P7451409177491496100.a n = A256646 n

end A256646

/-! ## A256646.P11233104325356934289

`(n+1)/2*A051870(n)`
-/

namespace A256646.P11233104325356934289
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 2 * (A051870 n : ℚ)

end

end A256646.P11233104325356934289

namespace A256646

/-- `(n+1)/2*A051870(n)` -/
def P11233104325356934289.Spec : Prop :=
  ∀ n, P11233104325356934289.a n = (A256646 n : ℚ)

theorem P11233104325356934289.correct : P11233104325356934289.Spec := by
  intro n
  simp only [A256646, Nat.add_sub_cancel, A256646.P11233104325356934289.a, A256646.P18366836819213321195.a, A051870, A051870.P3674433124874018284.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A256646

/-! ## A256646.P9429570555995260596

`A211612(n)-n*(n+2)`
-/

namespace A256646.P9429570555995260596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211612 n - (n * (n + 2) : ℤ)

end

end A256646.P9429570555995260596

namespace A256646

/-- `A211612(n)-n*(n+2)` -/
def P9429570555995260596.Spec : Prop :=
  ∀ n, P9429570555995260596.a n = A256646 n

end A256646

/-! ## A256646.P2782521120259493810

`∑[A288918(n+1)-n]-n`
-/

namespace A256646.P2782521120259493810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288918 (n + 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A256646.P2782521120259493810

namespace A256646

/-- `∑[A288918(n+1)-n]-n` -/
def P2782521120259493810.Spec : Prop :=
  ∀ n, P2782521120259493810.a n = A256646 n

end A256646

/-! ## A256646.P11738608673799709851

`A161680(n)+A144129(n)`
-/

namespace A256646.P11738608673799709851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 n + A144129 n

end

end A256646.P11738608673799709851

namespace A256646

/-- `A161680(n)+A144129(n)` -/
def P11738608673799709851.Spec : Prop :=
  ∀ n, P11738608673799709851.a n = A256646 n

theorem P11738608673799709851.correct : P11738608673799709851.Spec := by
  intro n
  simp only [A256646, Nat.add_sub_cancel, A256646.P11738608673799709851.a, A256646.P18366836819213321195.a, A144129, A144129.P2880121179738500010.a, A161680, A161680.P17206074215489759881.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A256646

/-! ## A256646.P14660100547436317802

`A256718(n)+A135503(n)`
-/

namespace A256646.P14660100547436317802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256718 n + A135503 n

end

end A256646.P14660100547436317802

namespace A256646

/-- `A256718(n)+A135503(n)` -/
def P14660100547436317802.Spec : Prop :=
  ∀ n, P14660100547436317802.a n = A256646 n

end A256646

/-! ## A256646.P18236243137525734424

`A056578(n)-A131895(n)`
-/

namespace A256646.P18236243137525734424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056578 n - A131895 n

end

end A256646.P18236243137525734424

namespace A256646

/-- `A056578(n)-A131895(n)` -/
def P18236243137525734424.Spec : Prop :=
  ∀ n, P18236243137525734424.a n = A256646 n

end A256646

/-!
# A256647: 27-gonal pyramidal numbers: a(n) = n*(n+1)*(25*n-22)/6.

The programs for A256647, the canonical program `A256647.P12070274261931262003` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A256647 has offset 0).

The definition of A256647 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(n+1)*(25*n-22)/6` (program `A256647.P15572947092053334840`, by `A256647.P15572947092053334840.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A256647.P15572947092053334840

`n*(n+1)*(25*n-22)/6`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A256647.P15572947092053334840
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n * (n + 1) : ℤ) * ((25 * n : ℤ) - 22) : ℚ) / 6

end

end A256647.P15572947092053334840

namespace A256647

/-- `n*(n+1)*(25*n-22)/6` -/
def P15572947092053334840.Spec : Prop :=
  ∀ n, P15572947092053334840.a n = (A256647 n : ℚ)

theorem P15572947092053334840.correct : P15572947092053334840.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A256647, Nat.add_sub_cancel, A256647.P15572947092053334840.a, A256647.P12070274261931262003.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A256647, Nat.add_sub_cancel, A256647.P15572947092053334840.a, A256647.P12070274261931262003.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A256647

/-! ## A256647.P12070274261931262003

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=0, a(1)=1, a(2)=28, a(3)=106`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A256647

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P12070274261931262003.Spec : Prop :=
  ∀ n, P12070274261931262003.a n = A256647 n

theorem P12070274261931262003.correct : P12070274261931262003.Spec := by
  intro n
  simp only [A256647]

end A256647

/-! ## A256647.P4142752082314966051

`∑[25*C(n, 2)+n]`
-/

namespace A256647.P4142752082314966051
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  25 * Nat.choose n 2 + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A256647.P4142752082314966051

namespace A256647

/-- `∑[25*C(n, 2)+n]` -/
def P4142752082314966051.Spec : Prop :=
  ∀ n, (P4142752082314966051.a n : ℤ) = A256647 n

end A256647

/-! ## A256647.P762366295304341964

`∑[∑[a(n-1)+25]]` with `a(0)=0, a(1)=1`
-/

namespace A256647.P762366295304341964
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f2 =>
  f2 (n - 1) + 25

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A256647.P762366295304341964

namespace A256647

/-- `∑[∑[a(n-1)+25]]` -/
def P762366295304341964.Spec : Prop :=
  ∀ n, (P762366295304341964.a n : ℤ) = A256647 n

end A256647

/-! ## A256647.P18158377205887799444

`∑[A255186(n)]`
-/

namespace A256647.P18158377205887799444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255186 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A256647.P18158377205887799444

namespace A256647

/-- `∑[A255186(n)]` -/
def P18158377205887799444.Spec : Prop :=
  ∀ n, P18158377205887799444.a n = A256647 n

end A256647

/-! ## A256647.P11473039177605049270

`A272871(n)+∑[∑[n]]`
-/

namespace A256647.P11473039177605049270
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272871 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A256647.P11473039177605049270

namespace A256647

/-- `A272871(n)+∑[∑[n]]` -/
def P11473039177605049270.Spec : Prop :=
  ∀ n, P11473039177605049270.a n = A256647 n

end A256647

/-! ## A256647.P5575301300435535884

`A144129(n)+A005581(n)`
-/

namespace A256647.P5575301300435535884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144129 n + A005581 n

end

end A256647.P5575301300435535884

namespace A256647

/-- `A144129(n)+A005581(n)` -/
def P5575301300435535884.Spec : Prop :=
  ∀ n, P5575301300435535884.a n = A256647 n

end A256647

/-! ## A256647.P17829692533425357408

`A256716(n)+A135503(n)`
-/

namespace A256647.P17829692533425357408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256716 n + A135503 n

end

end A256647.P17829692533425357408

namespace A256647

/-- `A256716(n)+A135503(n)` -/
def P17829692533425357408.Spec : Prop :=
  ∀ n, P17829692533425357408.a n = A256647 n

end A256647

/-! ## A256647.P3516020110309983050

`A256650(n)-A135503(n)`
-/

namespace A256647.P3516020110309983050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256650 n - A135503 n

end

end A256647.P3516020110309983050

namespace A256647

/-- `A256650(n)-A135503(n)` -/
def P3516020110309983050.Spec : Prop :=
  ∀ n, P3516020110309983050.a n = A256647 n

end A256647

/-! ## A256647.P8896363025894409638

`A237618(n)+2*A135503(n)`
-/

namespace A256647.P8896363025894409638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237618 n + 2 * A135503 n

end

end A256647.P8896363025894409638

namespace A256647

/-- `A237618(n)+2*A135503(n)` -/
def P8896363025894409638.Spec : Prop :=
  ∀ n, P8896363025894409638.a n = A256647 n

end A256647

/-! ## A256647.P16429818395832207743

`2*A177890(n)-A000292(n)`
-/

namespace A256647.P16429818395832207743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A177890 n - A000292 n

end

end A256647.P16429818395832207743

namespace A256647

/-- `2*A177890(n)-A000292(n)` -/
def P16429818395832207743.Spec : Prop :=
  ∀ n, P16429818395832207743.a n = A256647 n

end A256647

/-! ## A256647.P11247894251351583717

`2*A172082(n)-A050441(n)`
-/

namespace A256647.P11247894251351583717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A172082 n - A050441 n

end

end A256647.P11247894251351583717

namespace A256647

/-- `2*A172082(n)-A050441(n)` -/
def P11247894251351583717.Spec : Prop :=
  ∀ n, P11247894251351583717.a n = A256647 n

end A256647

/-! ## A256647.P7813192915984565315

`2*A237616(n)-A002413(n)`
-/

namespace A256647.P7813192915984565315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A237616 n - A002413 n

end

end A256647.P7813192915984565315

namespace A256647

/-- `2*A237616(n)-A002413(n)` -/
def P7813192915984565315.Spec : Prop :=
  ∀ n, P7813192915984565315.a n = A256647 n

end A256647

/-! ## A256647.P2822630735290691696

`2*A172117(n)-A237616(n)`
-/

namespace A256647.P2822630735290691696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A172117 n - A237616 n

end

end A256647.P2822630735290691696

namespace A256647

/-- `2*A172117(n)-A237616(n)` -/
def P2822630735290691696.Spec : Prop :=
  ∀ n, P2822630735290691696.a n = A256647 n

end A256647

/-! ## A256647.P16831244467618725508

`2*A256646(n)-A256645(n)`
-/

namespace A256647.P16831244467618725508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A256646 n - A256645 n

end

end A256647.P16831244467618725508

namespace A256647

/-- `2*A256646(n)-A256645(n)` -/
def P16831244467618725508.Spec : Prop :=
  ∀ n, P16831244467618725508.a n = A256647 n

end A256647

/-! ## A256647.P11258871273465326100

`2*A256645(n)-A256718(n)`
-/

namespace A256647.P11258871273465326100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A256645 n - A256718 n

end

end A256647.P11258871273465326100

namespace A256647

/-- `2*A256645(n)-A256718(n)` -/
def P11258871273465326100.Spec : Prop :=
  ∀ n, P11258871273465326100.a n = A256647 n

end A256647

/-! ## A256647.P5277850852407482416

`A000292(n)+A144129(n)-n`
-/

namespace A256647.P5277850852407482416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 n + (A144129 n - (n : ℤ))

end

end A256647.P5277850852407482416

namespace A256647

/-- `A000292(n)+A144129(n)-n` -/
def P5277850852407482416.Spec : Prop :=
  ∀ n, P5277850852407482416.a n = A256647 n

end A256647

/-! ## A256647.P6380820770052761254

`∑[A123296(n)+n]-A123296(n)`
-/

namespace A256647.P6380820770052761254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123296 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A123296 n

end

end A256647.P6380820770052761254

namespace A256647

/-- `∑[A123296(n)+n]-A123296(n)` -/
def P6380820770052761254.Spec : Prop :=
  ∀ n, P6380820770052761254.a n = A256647 n

end A256647

/-! ## A256647.P5758747481420752275

`∑[n]+A256648(n)-A000292(n)`
-/

namespace A256647.P5758747481420752275
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + (A256648 n - A000292 n)

end

end A256647.P5758747481420752275

namespace A256647

/-- `∑[n]+A256648(n)-A000292(n)` -/
def P5758747481420752275.Spec : Prop :=
  ∀ n, P5758747481420752275.a n = A256647 n

end A256647

/-! ## A256647.P14145127992899687639

`A002411(n)+A256646(n)-A000330(n)`
-/

namespace A256647.P14145127992899687639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002411 n + (A256646 n - A000330 n)

end

end A256647.P14145127992899687639

namespace A256647

/-- `A002411(n)+A256646(n)-A000330(n)` -/
def P14145127992899687639.Spec : Prop :=
  ∀ n, P14145127992899687639.a n = A256647 n

end A256647

/-!
# A256648: 28-gonal pyramidal numbers: a(n) = n*(n+1)*(26*n-23)/6.

The programs for A256648, the canonical program `A256648.P17443662371783012439` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A256648 has offset 0).

The definition of A256648 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(n+1)*(26*n-23)/6` (program `A256648.P7570325587243008450`, by `A256648.P7570325587243008450.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A256648.P7570325587243008450

`n*(n+1)*(26*n-23)/6`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A256648.P7570325587243008450
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n * (n + 1) : ℤ) * ((26 * n : ℤ) - 23) : ℚ) / 6

end

end A256648.P7570325587243008450

namespace A256648

/-- `n*(n+1)*(26*n-23)/6` -/
def P7570325587243008450.Spec : Prop :=
  ∀ n, P7570325587243008450.a n = (A256648 n : ℚ)

theorem P7570325587243008450.correct : P7570325587243008450.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A256648, Nat.add_sub_cancel, A256648.P7570325587243008450.a, A256648.P17443662371783012439.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A256648, Nat.add_sub_cancel, A256648.P7570325587243008450.a, A256648.P17443662371783012439.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A256648

/-! ## A256648.P17443662371783012439

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=0, a(1)=1, a(2)=29, a(3)=110`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A256648

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P17443662371783012439.Spec : Prop :=
  ∀ n, P17443662371783012439.a n = A256648 n

theorem P17443662371783012439.correct : P17443662371783012439.Spec := by
  intro n
  simp only [A256648]

end A256648

/-! ## A256648.P7914497246414295699

`a(n-1)+n*(13*n-12)` with `a(0)=0`
-/

namespace A256648.P7914497246414295699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (n : ℤ) * ((13 * n : ℤ) - 12)

end

end A256648.P7914497246414295699

namespace A256648

/-- `a(n-1)+n*(13*n-12)` -/
def P7914497246414295699.Spec : Prop :=
  ∀ n, P7914497246414295699.a n = A256648 n

end A256648

/-! ## A256648.P3901626230245597973

`∑[A161935(n)]`
-/

namespace A256648.P3901626230245597973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161935 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A256648.P3901626230245597973

namespace A256648

/-- `∑[A161935(n)]` -/
def P3901626230245597973.Spec : Prop :=
  ∀ n, P3901626230245597973.a n = A256648 n

end A256648

/-! ## A256648.P8738972218609987278

`∑[A064200(n)+n²]`
-/

namespace A256648.P8738972218609987278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064200 n + (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A256648.P8738972218609987278

namespace A256648

/-- `∑[A064200(n)+n²]` -/
def P8738972218609987278.Spec : Prop :=
  ∀ n, P8738972218609987278.a n = A256648 n

end A256648

/-! ## A256648.P12564290928054444801

`A272871(n)+∑[n²]`
-/

namespace A256648.P12564290928054444801
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272871 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A256648.P12564290928054444801

namespace A256648

/-- `A272871(n)+∑[n²]` -/
def P12564290928054444801.Spec : Prop :=
  ∀ n, P12564290928054444801.a n = A256648 n

end A256648

/-! ## A256648.P2541914373169013630

`2*A177890(n)-∑[n]`
-/

namespace A256648.P2541914373169013630
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A177890 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A256648.P2541914373169013630

namespace A256648

/-- `2*A177890(n)-∑[n]` -/
def P2541914373169013630.Spec : Prop :=
  ∀ n, P2541914373169013630.a n = A256648 n

end A256648

/-! ## A256648.P17470963666198934193

`A144129(n)+A051925(n)`
-/

namespace A256648.P17470963666198934193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144129 n + A051925 n

end

end A256648.P17470963666198934193

namespace A256648

/-- `A144129(n)+A051925(n)` -/
def P17470963666198934193.Spec : Prop :=
  ∀ n, P17470963666198934193.a n = A256648 n

end A256648

/-! ## A256648.P8015493997322144648

`A256645(n)+A135503(n)`
-/

namespace A256648.P8015493997322144648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256645 n + A135503 n

end

end A256648.P8015493997322144648

namespace A256648

/-- `A256645(n)+A135503(n)` -/
def P8015493997322144648.Spec : Prop :=
  ∀ n, P8015493997322144648.a n = A256648 n

end A256648

/-! ## A256648.P665810984677622143

`A063493(n+1)-A239325(n)`
-/

namespace A256648.P665810984677622143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063493 (n + 1) - A239325 n

end

end A256648.P665810984677622143

namespace A256648

/-- `A063493(n+1)-A239325(n)` -/
def P665810984677622143.Spec : Prop :=
  ∀ n, P665810984677622143.a n = A256648 n

end A256648

/-! ## A256648.P4339834894828035419

`A172117(n)+2*A135503(n)`
-/

namespace A256648.P4339834894828035419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172117 n + 2 * A135503 n

end

end A256648.P4339834894828035419

namespace A256648

/-- `A172117(n)+2*A135503(n)` -/
def P4339834894828035419.Spec : Prop :=
  ∀ n, P4339834894828035419.a n = A256648 n

end A256648

/-! ## A256648.P10978302092791021496

`2*A172076(n)-A000330(n)`
-/

namespace A256648.P10978302092791021496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A172076 n - A000330 n

end

end A256648.P10978302092791021496

namespace A256648

/-- `2*A172076(n)-A000330(n)` -/
def P10978302092791021496.Spec : Prop :=
  ∀ n, P10978302092791021496.a n = A256648 n

end A256648

/-! ## A256648.P11098656557921794469

`2*A237616(n)-A002412(n)`
-/

namespace A256648.P11098656557921794469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A237616 n - A002412 n

end

end A256648.P11098656557921794469

namespace A256648

/-- `2*A237616(n)-A002412(n)` -/
def P11098656557921794469.Spec : Prop :=
  ∀ n, P11098656557921794469.a n = A256648 n

end A256648

/-! ## A256648.P2272396817807455081

`2*A256716(n)-A172082(n)`
-/

namespace A256648.P2272396817807455081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A256716 n - A172082 n

end

end A256648.P2272396817807455081

namespace A256648

/-- `2*A256716(n)-A172082(n)` -/
def P2272396817807455081.Spec : Prop :=
  ∀ n, P2272396817807455081.a n = A256648 n

end A256648

/-! ## A256648.P14352360231733460573

`2*A256649(n)-A256650(n)`
-/

namespace A256648.P14352360231733460573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A256649 n - A256650 n

end

end A256648.P14352360231733460573

namespace A256648

/-- `2*A256649(n)-A256650(n)` -/
def P14352360231733460573.Spec : Prop :=
  ∀ n, P14352360231733460573.a n = A256648 n

end A256648

/-! ## A256648.P12772435600743127696

`∑[A173307(n)+n]-A173307(n)`
-/

namespace A256648.P12772435600743127696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173307 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A173307 n

end

end A256648.P12772435600743127696

namespace A256648

/-- `∑[A173307(n)+n]-A173307(n)` -/
def P12772435600743127696.Spec : Prop :=
  ∀ n, P12772435600743127696.a n = A256648 n

end A256648

/-! ## A256648.P5956649393713334644

`A000292(n)+A256649(n)-A000330(n)`
-/

namespace A256648.P5956649393713334644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 n + (A256649 n - A000330 n)

end

end A256648.P5956649393713334644

namespace A256648

/-- `A000292(n)+A256649(n)-A000330(n)` -/
def P5956649393713334644.Spec : Prop :=
  ∀ n, P5956649393713334644.a n = A256648 n

end A256648

/-! ## A256648.P18312187890292846480

`A000330(n)+A256647(n)-A000292(n)`
-/

namespace A256648.P18312187890292846480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 n + (A256647 n - A000292 n)

end

end A256648.P18312187890292846480

namespace A256648

/-- `A000330(n)+A256647(n)-A000292(n)` -/
def P18312187890292846480.Spec : Prop :=
  ∀ n, P18312187890292846480.a n = A256648 n

end A256648

/-! ## A256648.P2014397979036615793

`A000292(n)+A256650(n)-A002411(n)`
-/

namespace A256648.P2014397979036615793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 n + (A256650 n - A002411 n)

end

end A256648.P2014397979036615793

namespace A256648

/-- `A000292(n)+A256650(n)-A002411(n)` -/
def P2014397979036615793.Spec : Prop :=
  ∀ n, P2014397979036615793.a n = A256648 n

end A256648

/-! ## A256648.P10859460097878675669

`A237616(n)+A256718(n)-A007587(n)`
-/

namespace A256648.P10859460097878675669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237616 n + (A256718 n - A007587 n)

end

end A256648.P10859460097878675669

namespace A256648

/-- `A237616(n)+A256718(n)-A007587(n)` -/
def P10859460097878675669.Spec : Prop :=
  ∀ n, P10859460097878675669.a n = A256648 n

end A256648

/-!
# A256649: 29-gonal pyramidal numbers: a(n) = n*(n+1)*(9*n-8)/2.

The programs for A256649, the canonical program `A256649.P16900477846513486277` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A256649 has offset 0).

The definition of A256649 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(n+1)*(9*n-8)/2` (program `A256649.P15988581735295065550`, by `A256649.P15988581735295065550.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A256649.P15988581735295065550

`n*(n+1)*(9*n-8)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A256649.P15988581735295065550
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n * (n + 1) : ℤ) * ((9 * n : ℤ) - 8) : ℚ) / 2

end

end A256649.P15988581735295065550

namespace A256649

/-- `n*(n+1)*(9*n-8)/2` -/
def P15988581735295065550.Spec : Prop :=
  ∀ n, P15988581735295065550.a n = (A256649 n : ℚ)

theorem P15988581735295065550.correct : P15988581735295065550.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A256649, Nat.add_sub_cancel, A256649.P15988581735295065550.a, A256649.P16900477846513486277.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A256649, Nat.add_sub_cancel, A256649.P15988581735295065550.a, A256649.P16900477846513486277.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A256649

/-! ## A256649.P16900477846513486277

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=0, a(1)=1, a(2)=30, a(3)=114`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A256649

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P16900477846513486277.Spec : Prop :=
  ∀ n, P16900477846513486277.a n = A256649 n

theorem P16900477846513486277.correct : P16900477846513486277.Spec := by
  intro n
  simp only [A256649]

end A256649

/-! ## A256649.P6257061960794366722

`∑[27*C(n, 2)+n]`
-/

namespace A256649.P6257061960794366722
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  27 * Nat.choose n 2 + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A256649.P6257061960794366722

namespace A256649

/-- `∑[27*C(n, 2)+n]` -/
def P6257061960794366722.Spec : Prop :=
  ∀ n, (P6257061960794366722.a n : ℤ) = A256649 n

end A256649

/-! ## A256649.P17511095863200870968

`∑[∑[a(n-1)+27]]` with `a(0)=0, a(1)=1`
-/

namespace A256649.P17511095863200870968
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f2 =>
  f2 (n - 1) + 27

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A256649.P17511095863200870968

namespace A256649

/-- `∑[∑[a(n-1)+27]]` -/
def P17511095863200870968.Spec : Prop :=
  ∀ n, (P17511095863200870968.a n : ℤ) = A256649 n

end A256649

/-! ## A256649.P12305922937722988688

`abs((9*n-8)*C(n+1, 2))`
-/

namespace A256649.P12305922937722988688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((9 * n : ℤ) - 8) * (Nat.choose (n + 1) 2 : ℤ)|

end

end A256649.P12305922937722988688

namespace A256649

/-- `abs((9*n-8)*C(n+1, 2))` -/
def P12305922937722988688.Spec : Prop :=
  ∀ n, P12305922937722988688.a n = A256649 n

end A256649

/-! ## A256649.P1888545799985509773

`∑[A255187(n)]`
-/

namespace A256649.P1888545799985509773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255187 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A256649.P1888545799985509773

namespace A256649

/-- `∑[A255187(n)]` -/
def P1888545799985509773.Spec : Prop :=
  ∀ n, P1888545799985509773.a n = A256649 n

end A256649

/-! ## A256649.P10248233235078546161

`n*(A022267(n)-4)`
-/

namespace A256649.P10248233235078546161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A022267 n - 4)

end

end A256649.P10248233235078546161

namespace A256649

/-- `n*(A022267(n)-4)` -/
def P10248233235078546161.Spec : Prop :=
  ∀ n, P10248233235078546161.a n = A256649 n

end A256649

/-! ## A256649.P7206158336502693893

`n*(A006137(n)-5)`
-/

namespace A256649.P7206158336502693893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A006137 n - 5)

end

end A256649.P7206158336502693893

namespace A256649

/-- `n*(A006137(n)-5)` -/
def P7206158336502693893.Spec : Prop :=
  ∀ n, P7206158336502693893.a n = A256649 n

end A256649

/-! ## A256649.P6786358780136200807

`∑[A153783(n)-2*n]`
-/

namespace A256649.P6786358780136200807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153783 n - (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A256649.P6786358780136200807

namespace A256649

/-- `∑[A153783(n)-2*n]` -/
def P6786358780136200807.Spec : Prop :=
  ∀ n, P6786358780136200807.a n = A256649 n

end A256649

/-! ## A256649.P14618014803122442159

`A272871(n)+n*∑[n]`
-/

namespace A256649.P14618014803122442159
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272871 n + ((n * (∑ j ∈ Finset.range (n + 1), f1 j) : ℕ) : ℤ)

end

end A256649.P14618014803122442159

namespace A256649

/-- `A272871(n)+n*∑[n]` -/
def P14618014803122442159.Spec : Prop :=
  ∀ n, P14618014803122442159.a n = A256649 n

end A256649

/-! ## A256649.P10235831813472791792

`(n+1)/2*A051872(n)`
-/

namespace A256649.P10235831813472791792
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 2 * (A051872 n : ℚ)

end

end A256649.P10235831813472791792

namespace A256649

/-- `(n+1)/2*A051872(n)` -/
def P10235831813472791792.Spec : Prop :=
  ∀ n, P10235831813472791792.a n = (A256649 n : ℚ)

end A256649

/-! ## A256649.P18203334454515022649

`A256646(n)+A135503(n)`
-/

namespace A256649.P18203334454515022649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256646 n + A135503 n

end

end A256649.P18203334454515022649

namespace A256649

/-- `A256646(n)+A135503(n)` -/
def P18203334454515022649.Spec : Prop :=
  ∀ n, P18203334454515022649.a n = A256649 n

end A256649

/-! ## A256649.P14297797794419706987

`A254474(n)+A134171(n+1)`
-/

namespace A256649.P14297797794419706987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254474 n + A134171 (n + 1)

end

end A256649.P14297797794419706987

namespace A256649

/-- `A254474(n)+A134171(n+1)` -/
def P14297797794419706987.Spec : Prop :=
  ∀ n, P14297797794419706987.a n = A256649 n

end A256649

/-! ## A256649.P75579616609825315

`A280089(n)-A110427(n+1)`
-/

namespace A256649.P75579616609825315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280089 n - A110427 (n + 1)

end

end A256649.P75579616609825315

namespace A256649

/-- `A280089(n)-A110427(n+1)` -/
def P75579616609825315.Spec : Prop :=
  ∀ n, P75579616609825315.a n = A256649 n

end A256649

/-! ## A256649.P15532041223620937568

`A215543(n)-A187297(n+1)`
-/

namespace A256649.P15532041223620937568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215543 n - A187297 (n + 1)

end

end A256649.P15532041223620937568

namespace A256649

/-- `A215543(n)-A187297(n+1)` -/
def P15532041223620937568.Spec : Prop :=
  ∀ n, P15532041223620937568.a n = A256649 n

end A256649

/-! ## A256649.P10576031608628600457

`A256718(n)+2*A135503(n)`
-/

namespace A256649.P10576031608628600457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256718 n + 2 * A135503 n

end

end A256649.P10576031608628600457

namespace A256649

/-- `A256718(n)+2*A135503(n)` -/
def P10576031608628600457.Spec : Prop :=
  ∀ n, P10576031608628600457.a n = A256649 n

end A256649

/-! ## A256649.P2839974405979234768

`2*A172076(n)-A000292(n)`
-/

namespace A256649.P2839974405979234768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A172076 n - A000292 n

end

end A256649.P2839974405979234768

namespace A256649

/-- `2*A172076(n)-A000292(n)` -/
def P2839974405979234768.Spec : Prop :=
  ∀ n, P2839974405979234768.a n = A256649 n

end A256649

/-! ## A256649.P8526840716500296359

`2*A172082(n)-A007586(n)`
-/

namespace A256649.P8526840716500296359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A172082 n - A007586 n

end

end A256649.P8526840716500296359

namespace A256649

/-- `2*A172082(n)-A007586(n)` -/
def P8526840716500296359.Spec : Prop :=
  ∀ n, P8526840716500296359.a n = A256649 n

end A256649

/-! ## A256649.P13167075712417051286

`2*A237616(n)-A002411(n)`
-/

namespace A256649.P13167075712417051286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A237616 n - A002411 n

end

end A256649.P13167075712417051286

namespace A256649

/-- `2*A237616(n)-A002411(n)` -/
def P13167075712417051286.Spec : Prop :=
  ∀ n, P13167075712417051286.a n = A256649 n

end A256649

/-! ## A256649.P7408789651754781378

`2*A237618(n)-A050441(n)`
-/

namespace A256649.P7408789651754781378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A237618 n - A050441 n

end

end A256649.P7408789651754781378

namespace A256649

/-- `2*A237618(n)-A050441(n)` -/
def P7408789651754781378.Spec : Prop :=
  ∀ n, P7408789651754781378.a n = A256649 n

end A256649

/-!
# A256650: 30-gonal pyramidal numbers: a(n) = n*(n+1)*(28*n-25)/6.

The programs for A256650, the canonical program `A256650.P4255131343856735714` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A256650 has offset 0).

The definition of A256650 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(n+1)*(28*n-25)/6` (program `A256650.P14129575774050928240`, by `A256650.P14129575774050928240.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A256650.P14129575774050928240

`n*(n+1)*(28*n-25)/6`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A256650.P14129575774050928240
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n * (n + 1) : ℤ) * ((28 * n : ℤ) - 25) : ℚ) / 6

end

end A256650.P14129575774050928240

namespace A256650

/-- `n*(n+1)*(28*n-25)/6` -/
def P14129575774050928240.Spec : Prop :=
  ∀ n, P14129575774050928240.a n = (A256650 n : ℚ)

theorem P14129575774050928240.correct : P14129575774050928240.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A256650, Nat.add_sub_cancel, A256650.P14129575774050928240.a, A256650.P4255131343856735714.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A256650, Nat.add_sub_cancel, A256650.P14129575774050928240.a, A256650.P4255131343856735714.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A256650

/-! ## A256650.P4255131343856735714

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=0, a(1)=1, a(2)=31, a(3)=118`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A256650

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P4255131343856735714.Spec : Prop :=
  ∀ n, P4255131343856735714.a n = A256650 n

theorem P4255131343856735714.correct : P4255131343856735714.Spec := by
  intro n
  simp only [A256650]

end A256650

/-! ## A256650.P340698451703184941

`C(n+1, 2)+28*C(n+1, 3)`
-/

namespace A256650.P340698451703184941
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) 2 + 28 * Nat.choose (n + 1) 3

end

end A256650.P340698451703184941

namespace A256650

/-- `C(n+1, 2)+28*C(n+1, 3)` -/
def P340698451703184941.Spec : Prop :=
  ∀ n, (P340698451703184941.a n : ℤ) = A256650 n

end A256650

/-! ## A256650.P10143630698692034263

`a(n-1)+n*(14*n-13)` with `a(0)=0`
-/

namespace A256650.P10143630698692034263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (n : ℤ) * ((14 * n : ℤ) - 13)

end

end A256650.P10143630698692034263

namespace A256650

/-- `a(n-1)+n*(14*n-13)` -/
def P10143630698692034263.Spec : Prop :=
  ∀ n, P10143630698692034263.a n = A256650 n

end A256650

/-! ## A256650.P8427857773762066785

`∑[A254474(n)]`
-/

namespace A256650.P8427857773762066785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254474 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A256650.P8427857773762066785

namespace A256650

/-- `∑[A254474(n)]` -/
def P8427857773762066785.Spec : Prop :=
  ∀ n, P8427857773762066785.a n = A256650 n

end A256650

/-! ## A256650.P7301695203757433055

`∑[A263226(n)-n²]`
-/

namespace A256650.P7301695203757433055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263226 n - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A256650.P7301695203757433055

namespace A256650

/-- `∑[A263226(n)-n²]` -/
def P7301695203757433055.Spec : Prop :=
  ∀ n, P7301695203757433055.a n = A256650 n

end A256650

/-! ## A256650.P12428254775781956160

`2*A172076(n)-∑[n]`
-/

namespace A256650.P12428254775781956160
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A172076 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A256650.P12428254775781956160

namespace A256650

/-- `2*A172076(n)-∑[n]` -/
def P12428254775781956160.Spec : Prop :=
  ∀ n, P12428254775781956160.a n = A256650 n

end A256650

/-! ## A256650.P191626569822877781

`A256647(n)+∑[3*C(n, 2)]`
-/

namespace A256650.P191626569822877781
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * Nat.choose n 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256647 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A256650.P191626569822877781

namespace A256650

/-- `A256647(n)+∑[3*C(n, 2)]` -/
def P191626569822877781.Spec : Prop :=
  ∀ n, P191626569822877781.a n = A256650 n

end A256650

/-! ## A256650.P7001052981225273077

`A272871(n)+A002412(n)`
-/

namespace A256650.P7001052981225273077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272871 n + A002412 n

end

end A256650.P7001052981225273077

namespace A256650

/-- `A272871(n)+A002412(n)` -/
def P7001052981225273077.Spec : Prop :=
  ∀ n, P7001052981225273077.a n = A256650 n

end A256650

/-! ## A256650.P11156882297699611848

`A256647(n)+A135503(n)`
-/

namespace A256650.P11156882297699611848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256647 n + A135503 n

end

end A256650.P11156882297699611848

namespace A256650

/-- `A256647(n)+A135503(n)` -/
def P11156882297699611848.Spec : Prop :=
  ∀ n, P11156882297699611848.a n = A256650 n

end A256650

/-! ## A256650.P18080194584899621620

`A256716(n)+2*A135503(n)`
-/

namespace A256650.P18080194584899621620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256716 n + 2 * A135503 n

end

end A256650.P18080194584899621620

namespace A256650

/-- `A256716(n)+2*A135503(n)` -/
def P18080194584899621620.Spec : Prop :=
  ∀ n, P18080194584899621620.a n = A256650 n

end A256650

/-! ## A256650.P4129682110069248746

`2*A172078(n)-A002412(n)`
-/

namespace A256650.P4129682110069248746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A172078 n - A002412 n

end

end A256650.P4129682110069248746

namespace A256650

/-- `2*A172078(n)-A002412(n)` -/
def P4129682110069248746.Spec : Prop :=
  ∀ n, P4129682110069248746.a n = A256650 n

end A256650

/-! ## A256650.P12214698967809633069

`2*A237616(n)-A000330(n)`
-/

namespace A256650.P12214698967809633069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A237616 n - A000330 n

end

end A256650.P12214698967809633069

namespace A256650

/-- `2*A237616(n)-A000330(n)` -/
def P12214698967809633069.Spec : Prop :=
  ∀ n, P12214698967809633069.a n = A256650 n

end A256650

/-! ## A256650.P1869354375855297496

`2*A256645(n)-A172082(n)`
-/

namespace A256650.P1869354375855297496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A256645 n - A172082 n

end

end A256650.P1869354375855297496

namespace A256650

/-- `2*A256645(n)-A172082(n)` -/
def P1869354375855297496.Spec : Prop :=
  ∀ n, P1869354375855297496.a n = A256650 n

end A256650

/-! ## A256650.P8187726474728183059

`A000330(n)+A256649(n)-A000292(n)`
-/

namespace A256650.P8187726474728183059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 n + (A256649 n - A000292 n)

end

end A256650.P8187726474728183059

namespace A256650

/-- `A000330(n)+A256649(n)-A000292(n)` -/
def P8187726474728183059.Spec : Prop :=
  ∀ n, P8187726474728183059.a n = A256650 n

end A256650

/-! ## A256650.P1398421772098888159

`A002411(n)+A256648(n)-A000292(n)`
-/

namespace A256650.P1398421772098888159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002411 n + (A256648 n - A000292 n)

end

end A256650.P1398421772098888159

namespace A256650

/-- `A002411(n)+A256648(n)-A000292(n)` -/
def P1398421772098888159.Spec : Prop :=
  ∀ n, P1398421772098888159.a n = A256650 n

end A256650

/-! ## A256650.P14530019625511076479

`A002412(n)+A256647(n)-A000292(n)`
-/

namespace A256650.P14530019625511076479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002412 n + (A256647 n - A000292 n)

end

end A256650.P14530019625511076479

namespace A256650

/-- `A002412(n)+A256647(n)-A000292(n)` -/
def P14530019625511076479.Spec : Prop :=
  ∀ n, P14530019625511076479.a n = A256650 n

end A256650

/-! ## A256650.P12653719649523056577

`A002413(n)+A256646(n)-A000292(n)`
-/

namespace A256650.P12653719649523056577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002413 n + (A256646 n - A000292 n)

end

end A256650.P12653719649523056577

namespace A256650

/-- `A002413(n)+A256646(n)-A000292(n)` -/
def P12653719649523056577.Spec : Prop :=
  ∀ n, P12653719649523056577.a n = A256650 n

end A256650

/-! ## A256650.P4297917750917808809

`A002411(n)+A256649(n)-A000330(n)`
-/

namespace A256650.P4297917750917808809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002411 n + (A256649 n - A000330 n)

end

end A256650.P4297917750917808809

namespace A256650

/-- `A002411(n)+A256649(n)-A000330(n)` -/
def P4297917750917808809.Spec : Prop :=
  ∀ n, P4297917750917808809.a n = A256650 n

end A256650

/-! ## A256650.P12665455825802647447

`A172073(n)+A237618(n)-A002411(n)`
-/

namespace A256650.P12665455825802647447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172073 n + (A237618 n - A002411 n)

end

end A256650.P12665455825802647447

namespace A256650

/-- `A172073(n)+A237618(n)-A002411(n)` -/
def P12665455825802647447.Spec : Prop :=
  ∀ n, P12665455825802647447.a n = A256650 n

end A256650

/-!
# A256654: Least Fibonacci number not less than n.

The programs for A256654, the canonical program `A256654.P7882076535163150395` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A256654 has offset 1).

The definition of A256654 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A256654.P10115441358990847350

`eq[1, round(a(floor(n/ϕ)))]-n+1` with `a(0)=1, a(1)=2, a(2)=1, a(3)=2`

`round` is left out, it is the identity on integers.
-/

namespace A256654.P10115441358990847350
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 1, 2] fun n f2 =>
  f2 ⌊(n : ℝ) / Real.goldenRatio⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j = f2 j) n : ℤ) - (n : ℤ) + 1

end

end A256654.P10115441358990847350

namespace A256654

/-- `eq[1, round(a(floor(n/ϕ)))]-n+1` -/
def P10115441358990847350.Spec : Prop :=
  ∀ n, P10115441358990847350.a n = A256654 (n + 1)

end A256654

/-! ## A256654.P7169040130216337134

`a(n-1)+floor(C(n+1, a(n-1))/ϕ)` with `a(0)=1`
-/

namespace A256654.P7169040130216337134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + ⌊(Nat.choose (n + 1) (a (n - 1)).toNat : ℝ) / Real.goldenRatio⌋

end

end A256654.P7169040130216337134

namespace A256654

/-- `a(n-1)+floor(C(n+1, a(n-1))/ϕ)` -/
def P7169040130216337134.Spec : Prop :=
  ∀ n, P7169040130216337134.a n = A256654 (n + 1)

end A256654

/-! ## A256654.P7882076535163150395

`A000045(A108852(n))`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A256654

/-- `A000045(A108852(n))` -/
def P7882076535163150395.Spec : Prop :=
  ∀ n, P7882076535163150395.a n = A256654 (n + 1)

theorem P7882076535163150395.correct : P7882076535163150395.Spec := by
  intro n
  simp only [A256654, Nat.add_sub_cancel]

end A256654

/-! ## A256654.P17334074982563105965

`A000045(A130233(n)+1)`
-/

namespace A256654.P17334074982563105965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A130233 n + 1).toNat

end

end A256654.P17334074982563105965

namespace A256654

/-- `A000045(A130233(n)+1)` -/
def P17334074982563105965.Spec : Prop :=
  ∀ n, P17334074982563105965.a n = A256654 (n + 1)

end A256654

/-! ## A256654.P9385439085411803124

`A212804(A130233(n)+2)`
-/

namespace A256654.P9385439085411803124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (A130233 n + 2).toNat

end

end A256654.P9385439085411803124

namespace A256654

/-- `A212804(A130233(n)+2)` -/
def P9385439085411803124.Spec : Prop :=
  ∀ n, P9385439085411803124.a n = A256654 (n + 1)

end A256654

/-! ## A256654.P16442384139659137611

`A053602(2*A108852(n))`
-/

namespace A256654.P16442384139659137611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053602 (2 * A108852 n).toNat

end

end A256654.P16442384139659137611

namespace A256654

/-- `A053602(2*A108852(n))` -/
def P16442384139659137611.Spec : Prop :=
  ∀ n, P16442384139659137611.a n = A256654 (n + 1)

end A256654

/-! ## A256654.P16919640318781881808

`A000045(∑[A010056(n)]+1)`
-/

namespace A256654.P16919640318781881808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010056 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A256654.P16919640318781881808

namespace A256654

/-- `A000045(∑[A010056(n)]+1)` -/
def P16919640318781881808.Spec : Prop :=
  ∀ n, P16919640318781881808.a n = A256654 (n + 1)

end A256654

/-! ## A256654.P10468042914887374442

`A000071(A130233(n)+1)+1`
-/

namespace A256654.P10468042914887374442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (A130233 n + 1).toNat + 1

end

end A256654.P10468042914887374442

namespace A256654

/-- `A000071(A130233(n)+1)+1` -/
def P10468042914887374442.Spec : Prop :=
  ∀ n, P10468042914887374442.a n = A256654 (n + 1)

end A256654

/-! ## A256654.P9094661121928825259

`A000045(A131234(n+1)+1)`
-/

namespace A256654.P9094661121928825259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A131234 (n + 1) + 1).toNat

end

end A256654.P9094661121928825259

namespace A256654

/-- `A000045(A131234(n+1)+1)` -/
def P9094661121928825259.Spec : Prop :=
  ∀ n, P9094661121928825259.a n = A256654 (n + 1)

end A256654

/-! ## A256654.P4412443162436056811

`A053602(2*(A130233(n)+1))`
-/

namespace A256654.P4412443162436056811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053602 (2 * (A130233 n + 1)).toNat

end

end A256654.P4412443162436056811

namespace A256654

/-- `A053602(2*(A130233(n)+1))` -/
def P4412443162436056811.Spec : Prop :=
  ∀ n, P4412443162436056811.a n = A256654 (n + 1)

end A256654

/-! ## A256654.P15362559377689626767

`A272912(2*(A108852(n)+1))`
-/

namespace A256654.P15362559377689626767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272912 (2 * (A108852 n + 1)).toNat

end

end A256654.P15362559377689626767

namespace A256654

/-- `A272912(2*(A108852(n)+1))` -/
def P15362559377689626767.Spec : Prop :=
  ∀ n, P15362559377689626767.a n = A256654 (n + 1)

end A256654

/-! ## A256654.P13021454269734240820

`A272912(2*A108852(n)-1)`
-/

namespace A256654.P13021454269734240820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272912 (2 * A108852 n - 1).toNat

end

end A256654.P13021454269734240820

namespace A256654

/-- `A272912(2*A108852(n)-1)` -/
def P13021454269734240820.Spec : Prop :=
  ∀ n, P13021454269734240820.a n = A256654 (n + 1)

end A256654

/-! ## A256654.P9816534659665923002

`A006355(A130233(n)+2)/2`
-/

namespace A256654.P9816534659665923002
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006355 (A130233 n + 2).toNat : ℚ) / 2

end

end A256654.P9816534659665923002

namespace A256654

/-- `A006355(A130233(n)+2)/2` -/
def P9816534659665923002.Spec : Prop :=
  ∀ n, P9816534659665923002.a n = (A256654 (n + 1) : ℚ)

end A256654

/-! ## A256654.P4402284434648621433

`A000045(∑[char[A000045(n)]]+1)`
-/

namespace A256654.P4402284434648621433
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A256654.P4402284434648621433

namespace A256654

/-- `A000045(∑[char[A000045(n)]]+1)` -/
def P4402284434648621433.Spec : Prop :=
  ∀ n, P4402284434648621433.a n = A256654 (n + 1)

end A256654

/-! ## A256654.P15329008241550799099

`A212804(∑[char[A212804(n)]]+2)`
-/

namespace A256654.P15329008241550799099
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A256654.P15329008241550799099

namespace A256654

/-- `A212804(∑[char[A212804(n)]]+2)` -/
def P15329008241550799099.Spec : Prop :=
  ∀ n, P15329008241550799099.a n = A256654 (n + 1)

end A256654

/-! ## A256654.P14465246063938483191

`A079977(∑[2*char[A079977(n)]])`
-/

namespace A256654.P14465246063938483191
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079977 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (if ∃ j, f2 j = (n : ℤ) then 1 else 0)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079977 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A256654.P14465246063938483191

namespace A256654

/-- `A079977(∑[2*char[A079977(n)]])` -/
def P14465246063938483191.Spec : Prop :=
  ∀ n, P14465246063938483191.a n = A256654 (n + 1)

end A256654

/-! ## A256654.P6707222310596904504

`A000045(comp[A000045(n)+n]-n)`
-/

namespace A256654.P6707222310596904504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n + (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n - n)

end

end A256654.P6707222310596904504

namespace A256654

/-- `A000045(comp[A000045(n)+n]-n)` -/
def P6707222310596904504.Spec : Prop :=
  ∀ n, P6707222310596904504.a n = A256654 (n + 1)

end A256654

/-! ## A256654.P6892363821881935592

`A053602(A108852(n)+A108852(n))`
-/

namespace A256654.P6892363821881935592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053602 (A108852 n + A108852 n).toNat

end

end A256654.P6892363821881935592

namespace A256654

/-- `A053602(A108852(n)+A108852(n))` -/
def P6892363821881935592.Spec : Prop :=
  ∀ n, P6892363821881935592.a n = A256654 (n + 1)

end A256654

/-! ## A256654.P10613327991915679093

`A053602(A130233(n)+A130233(n)+2)`
-/

namespace A256654.P10613327991915679093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053602 (A130233 n + (A130233 n + 2)).toNat

end

end A256654.P10613327991915679093

namespace A256654

/-- `A053602(A130233(n)+A130233(n)+2)` -/
def P10613327991915679093.Spec : Prop :=
  ∀ n, P10613327991915679093.a n = A256654 (n + 1)

end A256654

/-! ## A256654.P16143306482992050033

`A000045(A130234(n+1))`
-/

namespace A256654.P16143306482992050033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A130234 (n + 1)).toNat

end

end A256654.P16143306482992050033

namespace A256654

/-- `A000045(A130234(n+1))` -/
def P16143306482992050033.Spec : Prop :=
  ∀ n, P16143306482992050033.a n = A256654 (n + 1)

end A256654

/-!
# A256656: Numbers for which the minimal alternating Fibonacci representation has positive trace.

The programs for A256656, there is no canonical definition to state claims against.
-/

/-! ## A256656.P14334524585475703609

`eq[1, ceil(acot(A255973(n)))]`
-/

namespace A256656.P14334524585475703609
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈SequenceMachineLib.acot (A255973 n : ℝ)⌉

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A256656.P14334524585475703609

/-! ## A256656.P6168392387163846209

`eq[1, A256660(n+1)%2]+1`
-/

namespace A256656.P6168392387163846209
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A256660 (n + 1)) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A256656.P6168392387163846209

/-! ## A256656.P10750050728581534693

`eq[A256660(n)%2, A057427(n)]`
-/

namespace A256656.P10750050728581534693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A256660 n) 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A256656.P10750050728581534693

/-! ## A256656.P17676489115173812878

`eq[val(A256660(n), 2), A000007(n)]`
-/

namespace A256656.P17676489115173812878
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A256660 n).toNat 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A256656.P17676489115173812878

/-! ## A256656.P11694340105798075997

`eq[gcd(2, A256660(n)), A000038(n)!]`
-/

namespace A256656.P11694340105798075997
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A256660 n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A000038 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A256656.P11694340105798075997

/-! ## A256656.P9375107441838199234

`eq[A255973(n+1), A255973(A256663(n+1))]+1`
-/

namespace A256656.P9375107441838199234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255973 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255973 (A256663 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A256656.P9375107441838199234

/-! ## A256656.P8027245460738280066

`eq[1, and(A000051(n), A256660(n))]`
-/

namespace A256656.P8027245460738280066
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000051 n) (A256660 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A256656.P8027245460738280066

/-!
# A256657: Numbers for which the minimal alternating Fibonacci representation has negative trace.

The programs for A256657, there is no canonical definition to state claims against.
-/

/-! ## A256657.P8466403711392098588

`eq[0, A256660(n)%2]`
-/

namespace A256657.P8466403711392098588
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A256660 n) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A256657.P8466403711392098588

/-! ## A256657.P17593905218448410702

`eq[0, ceil(acot(A255973(n)))]`
-/

namespace A256657.P17593905218448410702
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈SequenceMachineLib.acot (A255973 n : ℝ)⌉

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A256657.P17593905218448410702

/-! ## A256657.P14280869839838649617

`A028310(eq[2, gcd(2, A256660(n))])`
-/

namespace A256657.P14280869839838649617
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A256660 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A256657.P14280869839838649617

/-! ## A256657.P6772250805576991636

`eq[and(1, A256660(n)), A000038(n)]`
-/

namespace A256657.P6772250805576991636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A256660 n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A256657.P6772250805576991636

/-! ## A256657.P17539547179134958109

`lt[A256660(A256663(n)), A256660(n)]`
-/

namespace A256657.P17539547179134958109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256660 (A256663 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256660 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A256657.P17539547179134958109

/-!
# A256660: Number of terms in the minimal alternating Fibonacci representation of n.

The programs for A256660, there is no canonical definition to state claims against.
-/

/-! ## A256660.P6557186003929792363

`A007895(A256662(C(2, n)+n))`
-/

namespace A256660.P6557186003929792363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007895 (A256662 (Nat.choose 2 n + n)).toNat

end

end A256660.P6557186003929792363

/-! ## A256660.P13169254320900723047

`A007895(or(C(2, n), A256662(n)))`
-/

namespace A256660.P13169254320900723047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007895 (Int.lor (Nat.choose 2 n : ℤ) (A256662 n)).toNat

end

end A256660.P13169254320900723047

/-! ## A256660.P707858776625939175

`A007895(A256662(floor(acot(n)+n)))`
-/

namespace A256660.P707858776625939175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007895 (A256662 ⌊SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌋.toNat).toNat

end

end A256660.P707858776625939175

/-! ## A256660.P1617598112174782477

`A007895(A256662(A000007(n)+n))`
-/

namespace A256660.P1617598112174782477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007895 (A256662 (A000007 n + (n : ℤ)).toNat).toNat

end

end A256660.P1617598112174782477

/-! ## A256660.P13085521414995437846

`A007895(abs(A000007(n)-A256662(n)))`
-/

namespace A256660.P13085521414995437846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007895 |A000007 n - A256662 n|.toNat

end

end A256660.P13085521414995437846

/-! ## A256660.P3789822038128023915

`A007895(A256662(n))+A132200(n)%2`
-/

namespace A256660.P3789822038128023915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007895 (A256662 n).toNat + Int.tmod (A132200 n) 2

end

end A256660.P3789822038128023915

/-! ## A256660.P3353756068248509934

`gcd((A000523(n+1)+1)!, A007895(A256662(n)))`
-/

namespace A256660.P3353756068248509934
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Nat.factorial (A000523 (n + 1) + 1).toNat : ℤ) (A007895 (A256662 n).toNat)

end

end A256660.P3353756068248509934

/-! ## A256660.P16020872777506589766

`A007895(A256662(n))^A176095(A006005(n+1))`
-/

namespace A256660.P16020872777506589766
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007895 (A256662 n).toNat : ℚ) ^ (A176095 (A006005 (n + 1)).toNat : ℤ)

end

end A256660.P16020872777506589766

/-! ## A256660.P17252694403673683735

`A008683(A001597(n+1))+A007895(A256662(n))`
-/

namespace A256660.P17252694403673683735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A001597 (n + 1)).toNat + A007895 (A256662 n).toNat

end

end A256660.P17252694403673683735

/-! ## A256660.P17431939625218478422

`A008683((n+1)²)+A007895(A256662(n))`
-/

namespace A256660.P17431939625218478422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 ((n + 1) ^ 2) + A007895 (A256662 n).toNat

end

end A256660.P17431939625218478422

/-!
# A256662: Sum of absolute values of terms in the minimal alternating Fibonacci representation of n.

The programs for A256662, there is no canonical definition to state claims against.
-/

/-! ## A256662.P2912803624955379435

`2*A256664(n)+n`
-/

namespace A256662.P2912803624955379435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A256664 n + (n : ℤ)

end

end A256662.P2912803624955379435

/-! ## A256662.P13613681305453963548

`2*A256663(n)-n`
-/

namespace A256662.P13613681305453963548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A256663 n - (n : ℤ)

end

end A256662.P13613681305453963548

/-! ## A256662.P6185470584130890267

`A005843(A256664(n))+n`
-/

namespace A256662.P6185470584130890267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A256664 n).toNat + (n : ℤ)

end

end A256662.P6185470584130890267

/-! ## A256662.P16363558178006902495

`A256664(n)+A256663(n)`
-/

namespace A256662.P16363558178006902495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256664 n + A256663 n

end

end A256662.P16363558178006902495

/-! ## A256662.P7859601036618304475

`A256664(n)-A001489(A256664(n)+n)`
-/

namespace A256662.P7859601036618304475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256664 n - A001489 (A256664 n + (n : ℤ)).toNat

end

end A256662.P7859601036618304475

/-! ## A256662.P17826571983578149735

`A256663(n)+A256663(n)-A222224(A222224(n))`
-/

namespace A256662.P17826571983578149735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256663 n + (A256663 n - A222224 (A222224 n).toNat)

end

end A256662.P17826571983578149735

/-! ## A256662.P12205237059563372329

`A256663(n)+A256663(n)-A222230(A222230(n))`
-/

namespace A256662.P12205237059563372329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256663 n + (A256663 n - A222230 (A222230 n).toNat)

end

end A256662.P12205237059563372329

/-! ## A256662.P5493614466436640948

`A256663(n)+A256663(n)-A222231(A222231(n))`
-/

namespace A256662.P5493614466436640948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256663 n + (A256663 n - A222231 (A222231 n).toNat)

end

end A256662.P5493614466436640948

/-! ## A256662.P2975067708443403708

`A256663(n)+A256663(n)-A222236(A222236(n))`
-/

namespace A256662.P2975067708443403708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256663 n + (A256663 n - A222236 (A222236 n).toNat)

end

end A256662.P2975067708443403708

/-! ## A256662.P6833048402572295038

`A256663(n)+A256663(n)-A222237(A222237(n))`
-/

namespace A256662.P6833048402572295038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256663 n + (A256663 n - A222237 (A222237 n).toNat)

end

end A256662.P6833048402572295038

/-!
# A256663: Nonnegative part of the minimal alternating Fibonacci representation of n.

The programs for A256663, there is no canonical definition to state claims against.
-/

/-! ## A256663.P3414728296521259770

`A256664(n)+n`
-/

namespace A256663.P3414728296521259770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256664 n + (n : ℤ)

end

end A256663.P3414728296521259770

/-! ## A256663.P17716083546140966687

`(A256662(n)+n)/2`
-/

namespace A256663.P17716083546140966687
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A256662 n + (n : ℤ) : ℚ) / 2

end

end A256663.P17716083546140966687

/-! ## A256663.P10438212721900223173

`A004525(A256662(n)+n)`
-/

namespace A256663.P10438212721900223173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A256662 n + (n : ℤ)).toNat

end

end A256663.P10438212721900223173

/-! ## A256663.P16894339972661542690

`A004526(A256662(n)+n)`
-/

namespace A256663.P16894339972661542690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A256662 n + (n : ℤ)).toNat

end

end A256663.P16894339972661542690

/-! ## A256663.P16736866403240898600

`A110654(A256662(n)+n)`
-/

namespace A256663.P16736866403240898600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A256662 n + (n : ℤ)).toNat

end

end A256663.P16736866403240898600

/-! ## A256663.P13520361715378321758

`A256662(n)-A256664(n)`
-/

namespace A256663.P13520361715378321758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256662 n - A256664 n

end

end A256663.P13520361715378321758

/-! ## A256663.P3380431676704632306

`A052938(A256662(n)+n)-1`
-/

namespace A256663.P3380431676704632306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052938 (A256662 n + (n : ℤ)).toNat - 1

end

end A256663.P3380431676704632306

/-! ## A256663.P11540796057713485751

`A080513(A256662(n)+n)-1`
-/

namespace A256663.P11540796057713485751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080513 (A256662 n + (n : ℤ)).toNat - 1

end

end A256663.P11540796057713485751

/-! ## A256663.P10137877923415300231

`A065033(A256662(n))+n-A065033(n)`
-/

namespace A256663.P10137877923415300231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A256662 n).toNat + ((n : ℤ) - A065033 n)

end

end A256663.P10137877923415300231

/-! ## A256663.P4524064762073477591

`n-(A004526(n)-A004526(A256662(n)))`
-/

namespace A256663.P4524064762073477591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A004526 n - A004526 (A256662 n).toNat)

end

end A256663.P4524064762073477591

/-! ## A256663.P14997482226822779562

`n-(A052938(n)-A052938(A256662(n)))`
-/

namespace A256663.P14997482226822779562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A052938 n - A052938 (A256662 n).toNat)

end

end A256663.P14997482226822779562

/-! ## A256663.P5993800898971426138

`n-(A080513(n)-A080513(A256662(n)))`
-/

namespace A256663.P5993800898971426138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A080513 n - A080513 (A256662 n).toNat)

end

end A256663.P5993800898971426138

/-! ## A256663.P10247319135058713743

`n-(A110654(n)-A110654(A256662(n)))`
-/

namespace A256663.P10247319135058713743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A110654 n - A110654 (A256662 n).toNat)

end

end A256663.P10247319135058713743

/-! ## A256663.P5163587672766274948

`A256662(n)-A004525(A256662(n)-n)`
-/

namespace A256663.P5163587672766274948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256662 n - A004525 (A256662 n - (n : ℤ)).toNat

end

end A256663.P5163587672766274948

/-!
# A256664: Nonpositive part of the minimal alternating Fibonacci representation of n.

The programs for A256664, there is no canonical definition to state claims against.
-/

/-! ## A256664.P2028042377479427748

`A256663(n)-n`
-/

namespace A256664.P2028042377479427748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256663 n - (n : ℤ)

end

end A256664.P2028042377479427748

/-! ## A256664.P4775244591748742159

`(A256662(n)-n)/2`
-/

namespace A256664.P4775244591748742159
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A256662 n - (n : ℤ) : ℚ) / 2

end

end A256664.P4775244591748742159

/-! ## A256664.P13886965651248493141

`A004525(A256662(n)-n)`
-/

namespace A256664.P13886965651248493141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A256662 n - (n : ℤ)).toNat

end

end A256664.P13886965651248493141

/-! ## A256664.P1849760564369227974

`A004526(A256662(n)-n)`
-/

namespace A256664.P1849760564369227974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A256662 n - (n : ℤ)).toNat

end

end A256664.P1849760564369227974

/-! ## A256664.P4060711062321523357

`A110654(A256662(n)-n)`
-/

namespace A256664.P4060711062321523357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A256662 n - (n : ℤ)).toNat

end

end A256664.P4060711062321523357

/-! ## A256664.P17947455206650159129

`A256663(n)%A028310(n)`
-/

namespace A256664.P17947455206650159129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A256663 n) (A028310 n)

end

end A256664.P17947455206650159129

/-! ## A256664.P14788383456386522278

`A052938(A256662(n))-A052938(n)`
-/

namespace A256664.P14788383456386522278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052938 (A256662 n).toNat - A052938 n

end

end A256664.P14788383456386522278

/-! ## A256664.P10129532092251927697

`A065033(A256662(n))-A065033(n)`
-/

namespace A256664.P10129532092251927697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A256662 n).toNat - A065033 n

end

end A256664.P10129532092251927697

/-! ## A256664.P17559226557873009916

`A080513(A256662(n))-A080513(n)`
-/

namespace A256664.P17559226557873009916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080513 (A256662 n).toNat - A080513 n

end

end A256664.P17559226557873009916

/-! ## A256664.P10028226434604409393

`A055087(A256663(n)+n²)`
-/

namespace A256664.P10028226434604409393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055087 (A256663 n + (n ^ 2 : ℤ)).toNat

end

end A256664.P10028226434604409393

/-!
# A256665: Triangle of Arnold L(b) for Springer numbers.

The programs for A256665, there is no canonical definition to state claims against.
-/

/-! ## A256665.P8382108159416130356

`A202817(∑[char[∑[n]]]²-n)`
-/

namespace A256665.P8382108159416130356
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202817 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A256665.P8382108159416130356

/-! ## A256665.P6731331037154658197

`A202691(A099375(n)+A004201(n+1))`
-/

namespace A256665.P6731331037154658197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202691 (A099375 n + A004201 (n + 1)).toNat

end

end A256665.P6731331037154658197

/-! ## A256665.P604538649398058482

`A202691(A114327(n)+A004202(n+1))`
-/

namespace A256665.P604538649398058482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202691 (A114327 n + A004202 (n + 1)).toNat

end

end A256665.P604538649398058482

/-! ## A256665.P15127304286145722965

`A178334(n)*A202817(A038722(n+1))`
-/

namespace A256665.P15127304286145722965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 n * A202817 (A038722 (n + 1)).toNat

end

end A256665.P15127304286145722965

/-! ## A256665.P2476505616554846616

`A202817(A061579(n)+1)/A007318(C(2, n))`
-/

namespace A256665.P2476505616554846616
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A202817 (A061579 n + 1).toNat : ℚ) / (A007318 (Nat.choose 2 n) : ℚ)

end

end A256665.P2476505616554846616

/-!
# A256666: a(n) = ( 2*n*(2*n^2 + 11*n + 26) - (-1)^n + 1 )/16.

The programs for A256666, the canonical program `A256666.P7660789563561400856` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A256666 has offset 0).

The definition of A256666 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2*n*(2*n²+11*n+26)-(-1)^n+1)/16` (program `A256666.P10566117201337521093`, by `A256666.P10566117201337521093.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A256666.P10566117201337521093

`(2*n*(2*n²+11*n+26)-(-1)^n+1)/16`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A256666.P10566117201337521093
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 * n * (2 * n ^ 2 + 11 * n + 26) : ℤ) - (-1) ^ n + 1 : ℚ) / 16

end

end A256666.P10566117201337521093

namespace A256666

/-- `(2*n*(2*n²+11*n+26)-(-1)^n+1)/16` -/
def P10566117201337521093.Spec : Prop :=
  ∀ n, P10566117201337521093.a n = (A256666 n : ℚ)

theorem P10566117201337521093.correct : P10566117201337521093.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 | 4 =>
      simp [A256666, Nat.add_sub_cancel, A256666.P10566117201337521093.a, A256666.P7660789563561400856.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 5 =>
      have h1 := ih (m + 4) (by omega)
      have h2 := ih (m + 3) (by omega)
      have h3 := ih (m + 2) (by omega)
      have h4 := ih (m + 1) (by omega)
      have h5 := ih m (by omega)
      simp only [A256666, Nat.add_sub_cancel, A256666.P10566117201337521093.a, A256666.P7660789563561400856.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 h5 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 5 - 1 = m + 4 by omega, show m + 5 - 2 = m + 3 by omega, show m + 5 - 3 = m + 2 by omega, show m + 5 - 4 = m + 1 by omega, show m + 5 - 5 = m by omega, show m + 4 < m + 5 by omega, show m + 3 < m + 5 by omega, show m + 2 < m + 5 by omega, show m + 1 < m + 5 by omega, show m < m + 5 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 h5 ⊢
      rw [← h1, ← h2, ← h3, ← h4, ← h5]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A256666

/-! ## A256666.P7660789563561400856

`3*a(n-1)-2*a(n-2)-2*a(n-3)+3*a(n-4)-a(n-5)` with `a(0)=0, a(1)=5, a(2)=14, a(3)=29, a(4)=51`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A256666

/-- `3*a(n-1)-2*a(n-2)-2*a(n-3)+3*a(n-4)-a(n-5)` -/
def P7660789563561400856.Spec : Prop :=
  ∀ n, P7660789563561400856.a n = A256666 n

theorem P7660789563561400856.correct : P7660789563561400856.Spec := by
  intro n
  simp only [A256666]

end A256666

/-! ## A256666.P12126638127892835192

`∑[∑[a(n-2)+3]]` with `a(0)=0, a(1)=5, a(2)=4, a(3)=6`
-/

namespace A256666.P12126638127892835192
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 5, 4, 6] fun n f2 =>
  f2 (n - 2) + 3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A256666.P12126638127892835192

namespace A256666

/-- `∑[∑[a(n-2)+3]]` -/
def P12126638127892835192.Spec : Prop :=
  ∀ n, (P12126638127892835192.a n : ℤ) = A256666 n

end A256666

/-! ## A256666.P2510596956541340720

`∑[∑[∑[gcd(2, n+1)]]+1]-2`
-/

namespace A256666.P2510596956541340720
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 2

end

end A256666.P2510596956541340720

namespace A256666

/-- `∑[∑[∑[gcd(2, n+1)]]+1]-2` -/
def P2510596956541340720.Spec : Prop :=
  ∀ n, P2510596956541340720.a n = A256666 n

end A256666

/-! ## A256666.P6343659651658665992

`abs(2*(C(n+3, 3)-1)-∑[floor((n/2)²+n)])`
-/

namespace A256666.P6343659651658665992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n : ℚ) / 2) ^ 2 + (n : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 * ((Nat.choose (n + 3) 3 : ℤ) - 1) - ∑ j ∈ Finset.range (n + 1), f1 j|

end

end A256666.P6343659651658665992

namespace A256666

/-- `abs(2*(C(n+3, 3)-1)-∑[floor((n/2)²+n)])` -/
def P6343659651658665992.Spec : Prop :=
  ∀ n, P6343659651658665992.a n = A256666 n

end A256666

/-! ## A256666.P10367665062346358585

`A289877(n+2)-(2*n+1)`
-/

namespace A256666.P10367665062346358585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289877 (n + 2) - (2 * n + 1 : ℤ)

end

end A256666.P10367665062346358585

namespace A256666

/-- `A289877(n+2)-(2*n+1)` -/
def P10367665062346358585.Spec : Prop :=
  ∀ n, P10367665062346358585.a n = A256666 n

end A256666

/-! ## A256666.P3930178223440877979

`abs(2-∑[∑[A007494(n)+1]+1])`
-/

namespace A256666.P3930178223440877979
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007494 n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - ∑ j ∈ Finset.range (n + 1), f1 j|

end

end A256666.P3930178223440877979

namespace A256666

/-- `abs(2-∑[∑[A007494(n)+1]+1])` -/
def P3930178223440877979.Spec : Prop :=
  ∀ n, P3930178223440877979.a n = A256666 n

end A256666

/-! ## A256666.P2985302375121446781

`A028552(n)+A019298(n)`
-/

namespace A256666.P2985302375121446781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028552 n + A019298 n

end

end A256666.P2985302375121446781

namespace A256666

/-- `A028552(n)+A019298(n)` -/
def P2985302375121446781.Spec : Prop :=
  ∀ n, P2985302375121446781.a n = A256666 n

end A256666

/-! ## A256666.P10024895442541157336

`A180118(n)-A005744(n)`
-/

namespace A256666.P10024895442541157336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180118 n - A005744 n

end

end A256666.P10024895442541157336

namespace A256666

/-- `A180118(n)-A005744(n)` -/
def P10024895442541157336.Spec : Prop :=
  ∀ n, P10024895442541157336.a n = A256666 n

end A256666

/-! ## A256666.P8336229614044953519

`∑[A163300(n+1)+A077043(n)]`
-/

namespace A256666.P8336229614044953519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163300 (n + 1) + A077043 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A256666.P8336229614044953519

namespace A256666

/-- `∑[A163300(n+1)+A077043(n)]` -/
def P8336229614044953519.Spec : Prop :=
  ∀ n, P8336229614044953519.a n = A256666 n

end A256666

/-! ## A256666.P9708523921237631161

`A002717(n+1)-1+n`
-/

namespace A256666.P9708523921237631161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002717 (n + 1) - 1 + (n : ℤ)

end

end A256666.P9708523921237631161

namespace A256666

/-- `A002717(n+1)-1+n` -/
def P9708523921237631161.Spec : Prop :=
  ∀ n, P9708523921237631161.a n = A256666 n

end A256666

/-! ## A256666.P1658625249493122784

`∑[A244239(3*(n+3))-round(sqrt(n²+1))]`
-/

namespace A256666.P1658625249493122784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244239 (3 * (n + 3)) - SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A256666.P1658625249493122784

namespace A256666

/-- `∑[A244239(3*(n+3))-round(sqrt(n²+1))]` -/
def P1658625249493122784.Spec : Prop :=
  ∀ n, P1658625249493122784.a n = A256666 n

end A256666

/-! ## A256666.P17893255858793625946

`∑[A014591(3*n+4)%A014634(n)]`
-/

namespace A256666.P17893255858793625946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A014591 (3 * n + 4)) (A014634 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A256666.P17893255858793625946

namespace A256666

/-- `∑[A014591(3*n+4)%A014634(n)]` -/
def P17893255858793625946.Spec : Prop :=
  ∀ n, P17893255858793625946.a n = A256666 n

end A256666

/-!
# A256668: a(n) = 3*B*C*(n mod A) + 5*A*C*(n mod B) + 2*A*B*(n mod C) with A=7, B=11, C=17.

The programs for A256668, the canonical program `A256668.P9262143052932927713` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A256668 has offset 1).

The definition of A256668 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A256668.P9262143052932927713

`561*(n+1)%7+595*(n+1)%11+154*(n+1)%17`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A256668

/-- `561*(n+1)%7+595*(n+1)%11+154*(n+1)%17` -/
def P9262143052932927713.Spec : Prop :=
  ∀ n, (P9262143052932927713.a n : ℤ) = A256668 (n + 1)

theorem P9262143052932927713.correct : P9262143052932927713.Spec := by
  intro n
  simp only [A256668, Nat.add_sub_cancel]

end A256668

/-!
# A256669: 

The programs for A256669, there is no canonical definition to state claims against.
-/

/-! ## A256669.P2493691261581459216

`n!!-(n!+n)`
-/

namespace A256669.P2493691261581459216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (Nat.factorial n) : ℤ) - (Nat.factorial n + n : ℤ)

end

end A256669.P2493691261581459216

/-!
# A256671: Numerators of the inverse binomial transform of Bernoulli(n+2).

The programs for A256671, there is no canonical definition to state claims against.
-/

/-! ## A256671.P11086853452867639135

`A168516(∑[n]+1)`
-/

namespace A256671.P11086853452867639135
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168516 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A256671.P11086853452867639135

/-! ## A256671.P2402695277938476450

`A168516(A000124(n))+char[15]`
-/

namespace A256671.P2402695277938476450
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168516 (A000124 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A256671.P2402695277938476450

/-! ## A256671.P17241230758826823584

`A168516(A000124(n))*A304042(n)`
-/

namespace A256671.P17241230758826823584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168516 (A000124 n).toNat * A304042 n

end

end A256671.P17241230758826823584

/-! ## A256671.P3641873911218757147

`A168516(A000124(n))%A051721(n)`
-/

namespace A256671.P3641873911218757147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A168516 (A000124 n).toNat) (A051721 n)

end

end A256671.P3641873911218757147

/-! ## A256671.P8103515733437228180

`or(A000007(n), A168516(A000124(n)))`
-/

namespace A256671.P8103515733437228180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A168516 (A000124 n).toNat)

end

end A256671.P8103515733437228180

/-!
# A256672: Number of idempotents in the Motzkin monoid of degree n.

The programs for A256672, there is no canonical definition to state claims against.
-/

/-! ## A256672.P12918551531117096717

`A008615(A005319(n))+A001333(n)`
-/

namespace A256672.P12918551531117096717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (A005319 n).toNat + A001333 n

end

end A256672.P12918551531117096717

/-! ## A256672.P11695456345182168722

`A108954(A119259(n)+A062992(n))`
-/

namespace A256672.P11695456345182168722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108954 (A119259 n + A062992 n).toNat

end

end A256672.P11695456345182168722

/-!
# A256673: Odd numbers with prime arithmetic derivative A003415.

The programs for A256673, the canonical program `A256673.P18348728144748040292` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A256673 has offset 1).

The definition of A256673 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4322 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A256673.P18348728144748040292

`A157037(eq[1, A157037(n+1)%2]+1)`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A256673

/-- `A157037(eq[1, A157037(n+1)%2]+1)` -/
def P18348728144748040292.Spec : Prop :=
  ∀ n, P18348728144748040292.a n = A256673 (n + 1)

theorem P18348728144748040292.correct : P18348728144748040292.Spec := by
  intro n
  simp only [A256673, Nat.add_sub_cancel]

end A256673

/-! ## A256673.P5072494095695928162

`∩[2*n+1, A157037(n+1)]`
-/

namespace A256673.P5072494095695928162
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157037 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A256673.P5072494095695928162

namespace A256673

/-- `∩[2*n+1, A157037(n+1)]` -/
def P5072494095695928162.Spec : Prop :=
  ∀ n, (P5072494095695928162.a n : ℤ) = A256673 (n + 1)

end A256673

/-! ## A256673.P3776034185949842544

`filter[A157037(n+1), A322980(#)]`
-/

namespace A256673.P3776034185949842544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157037 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A322980 (f1 j).toNat = 1) n)

end

end A256673.P3776034185949842544

namespace A256673

/-- `filter[A157037(n+1), A322980(#)]` -/
def P3776034185949842544.Spec : Prop :=
  ∀ n, P3776034185949842544.a n = A256673 (n + 1)

end A256673

/-! ## A256673.P11819396719361570496

`∩[A157037(n+1), A392008(n+1)]`
-/

namespace A256673.P11819396719361570496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157037 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392008 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A256673.P11819396719361570496

namespace A256673

/-- `∩[A157037(n+1), A392008(n+1)]` -/
def P11819396719361570496.Spec : Prop :=
  ∀ n, (P11819396719361570496.a n : ℤ) = A256673 (n + 1)

end A256673

/-! ## A256673.P5440498819496761868

`filter[A157037(n+1), A035263(#)]`
-/

namespace A256673.P5440498819496761868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157037 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A035263 (f1 j).toNat = 1) n)

end

end A256673.P5440498819496761868

namespace A256673

/-- `filter[A157037(n+1), A035263(#)]` -/
def P5440498819496761868.Spec : Prop :=
  ∀ n, P5440498819496761868.a n = A256673 (n + 1)

end A256673

/-! ## A256673.P1199102292421006321

`filter[A157037(n+1), A105234(#)]`
-/

namespace A256673.P1199102292421006321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157037 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A105234 (f1 j).toNat = 1) n)

end

end A256673.P1199102292421006321

namespace A256673

/-- `filter[A157037(n+1), A105234(#)]` -/
def P1199102292421006321.Spec : Prop :=
  ∀ n, P1199102292421006321.a n = A256673 (n + 1)

end A256673

/-! ## A256673.P15520345844851734

`filter[A157037(n+1), A152822(#)]`
-/

namespace A256673.P15520345844851734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157037 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A152822 (f1 j).toNat = 1) n)

end

end A256673.P15520345844851734

namespace A256673

/-- `filter[A157037(n+1), A152822(#)]` -/
def P15520345844851734.Spec : Prop :=
  ∀ n, P15520345844851734.a n = A256673 (n + 1)

end A256673

/-! ## A256673.P5608083259800066137

`filter[A046340(n+1), A341995(#)]`
-/

namespace A256673.P5608083259800066137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046340 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A341995 (f1 j).toNat = 1) n)

end

end A256673.P5608083259800066137

namespace A256673

/-- `filter[A046340(n+1), A341995(#)]` -/
def P5608083259800066137.Spec : Prop :=
  ∀ n, P5608083259800066137.a n = A256673 (n + 1)

end A256673

/-! ## A256673.P7189043550108872431

`filter[A157037(n+1), A323158(#)]`
-/

namespace A256673.P7189043550108872431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157037 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323158 (f1 j).toNat = 1) n)

end

end A256673.P7189043550108872431

namespace A256673

/-- `filter[A157037(n+1), A323158(#)]` -/
def P7189043550108872431.Spec : Prop :=
  ∀ n, P7189043550108872431.a n = A256673 (n + 1)

end A256673

/-! ## A256673.P5706155268963030012

`filter[A157037(n+1), A323239(#)]`
-/

namespace A256673.P5706155268963030012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157037 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323239 (f1 j).toNat = 1) n)

end

end A256673.P5706155268963030012

namespace A256673

/-- `filter[A157037(n+1), A323239(#)]` -/
def P5706155268963030012.Spec : Prop :=
  ∀ n, P5706155268963030012.a n = A256673 (n + 1)

end A256673

/-! ## A256673.P6886731537870091184

`filter[A157037(n+1), A324908(#)]`
-/

namespace A256673.P6886731537870091184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157037 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A324908 (f1 j).toNat = 1) n)

end

end A256673.P6886731537870091184

namespace A256673

/-- `filter[A157037(n+1), A324908(#)]` -/
def P6886731537870091184.Spec : Prop :=
  ∀ n, P6886731537870091184.a n = A256673 (n + 1)

end A256673

/-! ## A256673.P8836634251629452549

`filter[A392008(n+1), A341995(#)]`
-/

namespace A256673.P8836634251629452549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392008 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A341995 (f1 j).toNat = 1) n)

end

end A256673.P8836634251629452549

namespace A256673

/-- `filter[A392008(n+1), A341995(#)]` -/
def P8836634251629452549.Spec : Prop :=
  ∀ n, P8836634251629452549.a n = A256673 (n + 1)

end A256673

/-! ## A256673.P1522552118734264021

`filter[A216918(n+1), A341995(#)]`
-/

namespace A256673.P1522552118734264021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216918 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A341995 (f1 j).toNat = 1) n)

end

end A256673.P1522552118734264021

namespace A256673

/-- `filter[A216918(n+1), A341995(#)]` -/
def P1522552118734264021.Spec : Prop :=
  ∀ n, P1522552118734264021.a n = A256673 (n + 1)

end A256673

/-! ## A256673.P8983456154353520277

`∩[A157037(n+1), A216918(n+1)]`
-/

namespace A256673.P8983456154353520277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157037 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216918 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A256673.P8983456154353520277

namespace A256673

/-- `∩[A157037(n+1), A216918(n+1)]` -/
def P8983456154353520277.Spec : Prop :=
  ∀ n, (P8983456154353520277.a n : ℤ) = A256673 (n + 1)

end A256673

/-! ## A256673.P7537460886209165347

`eq[A123726(n), A341995(n)]`
-/

namespace A256673.P7537460886209165347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123726 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341995 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A256673.P7537460886209165347

namespace A256673

/-- `eq[A123726(n), A341995(n)]` -/
def P7537460886209165347.Spec : Prop :=
  ∀ n, (P7537460886209165347.a n : ℤ) = A256673 (n + 1)

end A256673

/-! ## A256673.P12002135077844774640

`filter[A333326(n+1), A341995(#)]`
-/

namespace A256673.P12002135077844774640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333326 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A341995 (f1 j).toNat = 1) n)

end

end A256673.P12002135077844774640

namespace A256673

/-- `filter[A333326(n+1), A341995(#)]` -/
def P12002135077844774640.Spec : Prop :=
  ∀ n, P12002135077844774640.a n = A256673 (n + 1)

end A256673

/-! ## A256673.P5109659411320591730

`∩[A157037(n+1), A333326(n+1)]`
-/

namespace A256673.P5109659411320591730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157037 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333326 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A256673.P5109659411320591730

namespace A256673

/-- `∩[A157037(n+1), A333326(n+1)]` -/
def P5109659411320591730.Spec : Prop :=
  ∀ n, (P5109659411320591730.a n : ℤ) = A256673 (n + 1)

end A256673

/-! ## A256673.P8074743155986789791

`∩[A157037(n+1), A381218(n+1)]`
-/

namespace A256673.P8074743155986789791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157037 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381218 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A256673.P8074743155986789791

namespace A256673

/-- `∩[A157037(n+1), A381218(n+1)]` -/
def P8074743155986789791.Spec : Prop :=
  ∀ n, (P8074743155986789791.a n : ℤ) = A256673 (n + 1)

end A256673

/-! ## A256673.P11993749149867430663

`filter[A306104(n+1), A341995(#)]`
-/

namespace A256673.P11993749149867430663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306104 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A341995 (f1 j).toNat = 1) n)

end

end A256673.P11993749149867430663

namespace A256673

/-- `filter[A306104(n+1), A341995(#)]` -/
def P11993749149867430663.Spec : Prop :=
  ∀ n, P11993749149867430663.a n = A256673 (n + 1)

end A256673

/-! ## A256673.P13016810466520282865

`∩[A157037(n+1), A306104(n+1)]`
-/

namespace A256673.P13016810466520282865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157037 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306104 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A256673.P13016810466520282865

namespace A256673

/-- `∩[A157037(n+1), A306104(n+1)]` -/
def P13016810466520282865.Spec : Prop :=
  ∀ n, (P13016810466520282865.a n : ℤ) = A256673 (n + 1)

end A256673

/-!
# A256675: Denominators of the inverse binomial transform of Bernoulli(n+2).

The programs for A256675, there is no canonical definition to state claims against.
-/

/-! ## A256675.P12980827780252010432

`A085738(∑[n+3])`
-/

namespace A256675.P12980827780252010432
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085738 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A256675.P12980827780252010432

/-! ## A256675.P17332616422927233973

`lcm(A001897(A008619(n)), A306821(n))`
-/

namespace A256675.P17332616422927233973
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A001897 (A008619 n).toNat) (A306821 n)

end

end A256675.P17332616422927233973

/-! ## A256675.P17349418814975794737

`A168426(∑[n]+1)`
-/

namespace A256675.P17349418814975794737
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168426 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A256675.P17349418814975794737

/-! ## A256675.P12657921313557457948

`lcm(3, A168426(A000124(n)))`
-/

namespace A256675.P12657921313557457948
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 (A168426 (A000124 n).toNat)

end

end A256675.P12657921313557457948

/-! ## A256675.P10283654938676638055

`A168426(A000124(n))+A025444(n)`
-/

namespace A256675.P10283654938676638055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168426 (A000124 n).toNat + A025444 n

end

end A256675.P10283654938676638055

/-!
# A256676: Digital roots of centered 11-gonal numbers (A069125).

The programs for A256676, the canonical program `A256676.P17821721453002571502` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A256676 has offset 1).

The definition of A256676 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A256676.P17821721453002571502

`a(n-9)` with `a(0)=1, a(1)=3, a(2)=7, a(3)=4, a(4)=3, a(5)=4, a(6)=7, a(7)=3, a(8)=1`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A256676

/-- `a(n-9)` -/
def P17821721453002571502.Spec : Prop :=
  ∀ n, (P17821721453002571502.a n : ℤ) = A256676 (n + 1)

theorem P17821721453002571502.correct : P17821721453002571502.Spec := by
  intro n
  simp only [A256676, Nat.add_sub_cancel]

end A256676

/-!
# A256679: A signed triangle of V. I. Arnold for the Springer numbers (A001586).

The programs for A256679, there is no canonical definition to state claims against.
-/

/-! ## A256679.P12671944294336032839

`A097807(A131137(n+3))*A202818(n+1)`
-/

namespace A256679.P12671944294336032839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097807 (A131137 (n + 3)).toNat * A202818 (n + 1)

end

end A256679.P12671944294336032839

/-!
# A256680: Minimal most likely sum for a roll of n 4-sided dice.

The programs for A256680, the canonical program `A256680.P18021108313069087886` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A256680 has offset 0).

The definition of A256680 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A256680.P18021108313069087886

`a(n-1)+a(n-2)-a(n-3)` with `a(0)=0, a(1)=1, a(2)=5, a(3)=7, a(4)=10`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A256680

/-- `a(n-1)+a(n-2)-a(n-3)` -/
def P18021108313069087886.Spec : Prop :=
  ∀ n, P18021108313069087886.a n = A256680 n

theorem P18021108313069087886.correct : P18021108313069087886.Spec := by
  intro n
  simp only [A256680]

end A256680

/-! ## A256680.P14159802541417813488

`floor(5*n/2)-char[1]`
-/

namespace A256680.P14159802541417813488
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊5 * ((n : ℚ) / 2)⌋ - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A256680.P14159802541417813488

namespace A256680

/-- `floor(5*n/2)-char[1]` -/
def P14159802541417813488.Spec : Prop :=
  ∀ n, P14159802541417813488.a n = A256680 n

end A256680

/-! ## A256680.P1102977904278836160

`∑[5-a(n-1)]` with `a(0)=0, a(1)=1, a(2)=4, a(3)=2`
-/

namespace A256680.P1102977904278836160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 4, 2] fun n f1 =>
  5 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A256680.P1102977904278836160

namespace A256680

/-- `∑[5-a(n-1)]` -/
def P1102977904278836160.Spec : Prop :=
  ∀ n, P1102977904278836160.a n = A256680 n

end A256680

/-! ## A256680.P17946648201938646155

`ogf((x+4x^2+x^3-x^4)/(1-x-x^2+x^3))`
-/

namespace A256680.P17946648201938646155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 4, 1, -1] [1, -1, -1, 1] n

end

end A256680.P17946648201938646155

namespace A256680

/-- `ogf((x+4x^2+x^3-x^4)/(1-x-x^2+x^3))` -/
def P17946648201938646155.Spec : Prop :=
  ∀ n, P17946648201938646155.a n = A256680 n

end A256680

/-! ## A256680.P13788344380135698320

`∑[a((n+1)%2)+2]` with `a(0)=0, a(1)=1, a(2)=4`
-/

namespace A256680.P13788344380135698320
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 4] fun n f1 =>
  f1 ((n + 1) % 2) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A256680.P13788344380135698320

namespace A256680

/-- `∑[a((n+1)%2)+2]` -/
def P13788344380135698320.Spec : Prop :=
  ∀ n, (P13788344380135698320.a n : ℤ) = A256680 n

end A256680

/-! ## A256680.P12899472217247783625

`A047215(n)/A141044(n)`
-/

namespace A256680.P12899472217247783625
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A047215 n : ℚ) / (A141044 n : ℚ)

end

end A256680.P12899472217247783625

namespace A256680

/-- `A047215(n)/A141044(n)` -/
def P12899472217247783625.Spec : Prop :=
  ∀ n, P12899472217247783625.a n = (A256680 n : ℚ)

end A256680

/-! ## A256680.P16479165784389106776

`A047215(n)/A373565(n)`
-/

namespace A256680.P16479165784389106776
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A047215 n : ℚ) / (A373565 n : ℚ)

end

end A256680.P16479165784389106776

namespace A256680

/-- `A047215(n)/A373565(n)` -/
def P16479165784389106776.Spec : Prop :=
  ∀ n, P16479165784389106776.a n = (A256680 n : ℚ)

end A256680

/-! ## A256680.P163791239190444821

`A173511(n)%A113127(n)`
-/

namespace A256680.P163791239190444821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A173511 n) (A113127 n)

end

end A256680.P163791239190444821

namespace A256680

/-- `A173511(n)%A113127(n)` -/
def P163791239190444821.Spec : Prop :=
  ∀ n, P163791239190444821.a n = A256680 n

end A256680

/-! ## A256680.P7831984902834622697

`A047215(n)/(A063524(n)+1)`
-/

namespace A256680.P7831984902834622697
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A047215 n : ℚ) / (A063524 n + 1 : ℚ)

end

end A256680.P7831984902834622697

namespace A256680

/-- `A047215(n)/(A063524(n)+1)` -/
def P7831984902834622697.Spec : Prop :=
  ∀ n, P7831984902834622697.a n = (A256680 n : ℚ)

end A256680

/-! ## A256680.P3133242699896299360

`(A032766(n)+n)/A141044(n)`
-/

namespace A256680.P3133242699896299360
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A032766 n + (n : ℤ) : ℚ) / (A141044 n : ℚ)

end

end A256680.P3133242699896299360

namespace A256680

/-- `(A032766(n)+n)/A141044(n)` -/
def P3133242699896299360.Spec : Prop :=
  ∀ n, P3133242699896299360.a n = (A256680 n : ℚ)

end A256680

/-! ## A256680.P15702145180797085561

`Δ[ceil(abs((n-1)/2*A016861(n)-n)/2)]`
-/

namespace A256680.P15702145180797085561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈|((n : ℤ) - 1 : ℚ) / 2 * (A016861 n : ℚ) - (n : ℚ)| / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A256680.P15702145180797085561

namespace A256680

/-- `Δ[ceil(abs((n-1)/2*A016861(n)-n)/2)]` -/
def P15702145180797085561.Spec : Prop :=
  ∀ n, P15702145180797085561.a n = A256680 n

end A256680

/-! ## A256680.P11208685855413463618

`record[A093545(char[1]+n)]`
-/

namespace A256680.P11208685855413463618
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093545 ((if ∃ j, f2 j = n then 1 else 0) + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A256680.P11208685855413463618

namespace A256680

/-- `record[A093545(char[1]+n)]` -/
def P11208685855413463618.Spec : Prop :=
  ∀ n, P11208685855413463618.a n = A256680 n

end A256680

/-! ## A256680.P272247792068726486

`record[A093545(n)-char[1]]`
-/

namespace A256680.P272247792068726486
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093545 n - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A256680.P272247792068726486

namespace A256680

/-- `record[A093545(n)-char[1]]` -/
def P272247792068726486.Spec : Prop :=
  ∀ n, P272247792068726486.a n = A256680 n

end A256680

/-! ## A256680.P6959306714538493964

`A001068(comp[A004277(n)+1])`
-/

namespace A256680.P6959306714538493964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n + 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001068 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A256680.P6959306714538493964

namespace A256680

/-- `A001068(comp[A004277(n)+1])` -/
def P6959306714538493964.Spec : Prop :=
  ∀ n, P6959306714538493964.a n = A256680 n

end A256680

/-! ## A256680.P95699232064991272

`A001068(comp[A004273(n)+2])`
-/

namespace A256680.P95699232064991272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n + 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001068 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A256680.P95699232064991272

namespace A256680

/-- `A001068(comp[A004273(n)+2])` -/
def P95699232064991272.Spec : Prop :=
  ∀ n, P95699232064991272.a n = A256680 n

end A256680

/-! ## A256680.P16762154773470984526

`abs(1-(A001068(2*n+1)-char[1]))`
-/

namespace A256680.P16762154773470984526
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (A001068 (2 * n + 1) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ))|

end

end A256680.P16762154773470984526

namespace A256680

/-- `abs(1-(A001068(2*n+1)-char[1]))` -/
def P16762154773470984526.Spec : Prop :=
  ∀ n, P16762154773470984526.a n = A256680 n

end A256680

/-! ## A256680.P8558492587236637756

`abs(2*n-(char[1]-A002265(2*n)))`
-/

namespace A256680.P8558492587236637756
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(2 * n : ℤ) - (((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) - A002265 (2 * n))|

end

end A256680.P8558492587236637756

namespace A256680

/-- `abs(2*n-(char[1]-A002265(2*n)))` -/
def P8558492587236637756.Spec : Prop :=
  ∀ n, P8558492587236637756.a n = A256680 n

end A256680

/-! ## A256680.P568999111886871598

`A360501(A130773(n))`
-/

namespace A256680.P568999111886871598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360501 (A130773 n).toNat

end

end A256680.P568999111886871598

namespace A256680

/-- `A360501(A130773(n))` -/
def P568999111886871598.Spec : Prop :=
  ∀ n, P568999111886871598.a n = A256680 n

end A256680

/-! ## A256680.P5735952166934145211

`A032769(A140139(n+1))`
-/

namespace A256680.P5735952166934145211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032769 (A140139 (n + 1)).toNat

end

end A256680.P5735952166934145211

namespace A256680

/-- `A032769(A140139(n+1))` -/
def P5735952166934145211.Spec : Prop :=
  ∀ n, P5735952166934145211.a n = A256680 n

end A256680

/-!
# A256688: From third root of Riemann zeta function: form Dirichlet series Sum b(n)/n^x whose cube is zeta function; sequence gives numerator of b(n).

The programs for A256688, the canonical program `A256688.P10016313267920444038` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A256688 has offset 1).

The definition of A256688 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A256688.P10016313267920444038

`∏{e}[n+1, A004117(#)]`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A256688

/-- `∏{e}[n+1, A004117(#)]` -/
def P10016313267920444038.Spec : Prop :=
  ∀ n, P10016313267920444038.a n = A256688 (n + 1)

theorem P10016313267920444038.correct : P10016313267920444038.Spec := by
  intro n
  simp only [A256688, Nat.add_sub_cancel]

end A256688

/-! ## A256688.P3809341067557239964

`A383793(n+1)/A038502(n+1)`
-/

namespace A256688.P3809341067557239964
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A383793 (n + 1) : ℚ) / (A038502 (n + 1) : ℚ)

end

end A256688.P3809341067557239964

namespace A256688

/-- `A383793(n+1)/A038502(n+1)` -/
def P3809341067557239964.Spec : Prop :=
  ∀ n, P3809341067557239964.a n = (A256688 (n + 1) : ℚ)

end A256688

/-! ## A256688.P14642066408415230647

`A000688(A256690(n+1))*A004117(A051903(n+1))`
-/

namespace A256688.P14642066408415230647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000688 (A256690 (n + 1)).toNat * A004117 (A051903 (n + 1)).toNat

end

end A256688.P14642066408415230647

namespace A256688

/-- `A000688(A256690(n+1))*A004117(A051903(n+1))` -/
def P14642066408415230647.Spec : Prop :=
  ∀ n, P14642066408415230647.a n = A256688 (n + 1)

end A256688

/-! ## A256688.P9264033637650450595

`A000188(A294875(n+1))*A004117(A051903(n+1))`
-/

namespace A256688.P9264033637650450595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (A294875 (n + 1)).toNat * A004117 (A051903 (n + 1)).toNat

end

end A256688.P9264033637650450595

namespace A256688

/-- `A000188(A294875(n+1))*A004117(A051903(n+1))` -/
def P9264033637650450595.Spec : Prop :=
  ∀ n, P9264033637650450595.a n = A256688 (n + 1)

end A256688

/-! ## A256688.P12847628809689071575

`A004117(A005361(n+1)%A141214(n))`
-/

namespace A256688.P12847628809689071575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004117 (Int.tmod (A005361 (n + 1)) (A141214 n)).toNat

end

end A256688.P12847628809689071575

namespace A256688

/-- `A004117(A005361(n+1)%A141214(n))` -/
def P12847628809689071575.Spec : Prop :=
  ∀ n, P12847628809689071575.a n = A256688 (n + 1)

end A256688

/-!
# A256689: From third root of Riemann zeta function: form Dirichlet series Sum b(n)/n^x whose cube is zeta function; sequence gives denominator of b(n).

The programs for A256689, the canonical program `A256689.P3752054960592622050` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A256689 has offset 1).

The definition of A256689 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A256689.P3752054960592622050

`∏{e}[n+1, A067623(#)]`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A256689

/-- `∏{e}[n+1, A067623(#)]` -/
def P3752054960592622050.Spec : Prop :=
  ∀ n, P3752054960592622050.a n = A256689 (n + 1)

theorem P3752054960592622050.correct : P3752054960592622050.Spec := by
  intro n
  simp only [A256689, Nat.add_sub_cancel]

end A256689

/-! ## A256689.P12968768365110064159

`A038500(n+1)*A383794(n+1)`
-/

namespace A256689.P12968768365110064159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038500 (n + 1) * A383794 (n + 1)

end

end A256689.P12968768365110064159

namespace A256689

/-- `A038500(n+1)*A383794(n+1)` -/
def P12968768365110064159.Spec : Prop :=
  ∀ n, P12968768365110064159.a n = A256689 (n + 1)

end A256689

/-! ## A256689.P3578407337797760368

`A383794(A319525(n+1))`
-/

namespace A256689.P3578407337797760368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383794 (A319525 (n + 1)).toNat

end

end A256689.P3578407337797760368

namespace A256689

/-- `A383794(A319525(n+1))` -/
def P3578407337797760368.Spec : Prop :=
  ∀ n, P3578407337797760368.a n = A256689 (n + 1)

end A256689

/-! ## A256689.P15727246314155717106

`3^A257089(n+1)`
-/

namespace A256689.P15727246314155717106
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (A257089 (n + 1) : ℤ)

end

end A256689.P15727246314155717106

namespace A256689

/-- `3^A257089(n+1)` -/
def P15727246314155717106.Spec : Prop :=
  ∀ n, P15727246314155717106.a n = (A256689 (n + 1) : ℚ)

end A256689

/-! ## A256689.P12654936009548350740

`A000244(A257089(n+1))`
-/

namespace A256689.P12654936009548350740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 (A257089 (n + 1)).toNat

end

end A256689.P12654936009548350740

namespace A256689

/-- `A000244(A257089(n+1))` -/
def P12654936009548350740.Spec : Prop :=
  ∀ n, P12654936009548350740.a n = A256689 (n + 1)

end A256689

/-! ## A256689.P3732897175365512949

`A383794(A357983(n+1))`
-/

namespace A256689.P3732897175365512949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383794 (A357983 (n + 1)).toNat

end

end A256689.P3732897175365512949

namespace A256689

/-- `A383794(A357983(n+1))` -/
def P3732897175365512949.Spec : Prop :=
  ∀ n, P3732897175365512949.a n = A256689 (n + 1)

end A256689

/-! ## A256689.P828709554033366485

`A383794(A045966(n+1))`
-/

namespace A256689.P828709554033366485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383794 (A045966 (n + 1)).toNat

end

end A256689.P828709554033366485

namespace A256689

/-- `A383794(A045966(n+1))` -/
def P828709554033366485.Spec : Prop :=
  ∀ n, P828709554033366485.a n = A256689 (n + 1)

end A256689

/-! ## A256689.P1649878669566106979

`A383794(A354202(n+1))`
-/

namespace A256689.P1649878669566106979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383794 (A354202 (n + 1)).toNat

end

end A256689.P1649878669566106979

namespace A256689

/-- `A383794(A354202(n+1))` -/
def P1649878669566106979.Spec : Prop :=
  ∀ n, P1649878669566106979.a n = A256689 (n + 1)

end A256689

/-! ## A256689.P9078480162925767325

`A383794(A357852(n+1))`
-/

namespace A256689.P9078480162925767325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383794 (A357852 (n + 1)).toNat

end

end A256689.P9078480162925767325

namespace A256689

/-- `A383794(A357852(n+1))` -/
def P9078480162925767325.Spec : Prop :=
  ∀ n, P9078480162925767325.a n = A256689 (n + 1)

end A256689

/-! ## A256689.P6764293313807304923

`A383794(A389084(n+1))`
-/

namespace A256689.P6764293313807304923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383794 (A389084 (n + 1)).toNat

end

end A256689.P6764293313807304923

namespace A256689

/-- `A383794(A389084(n+1))` -/
def P6764293313807304923.Spec : Prop :=
  ∀ n, P6764293313807304923.a n = A256689 (n + 1)

end A256689

/-!
# A256690: From fourth root of Riemann zeta function: form Dirichlet series Sum b(n)/n^x whose fourth power is zeta function; sequence gives numerator of b(n).

The programs for A256690, the canonical program `A256690.P103638891413910646` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A256690 has offset 1).

The definition of A256690 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A256690.P103638891413910646

`∏{e}[n+1, A004130(#)]`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A256690

/-- `∏{e}[n+1, A004130(#)]` -/
def P103638891413910646.Spec : Prop :=
  ∀ n, P103638891413910646.a n = A256690 (n + 1)

theorem P103638891413910646.correct : P103638891413910646.Spec := by
  intro n
  simp only [A256690, Nat.add_sub_cancel]

end A256690

/-! ## A256690.P8593586908412234879

`A004130(A005361(n+1)%A141214(n))`
-/

namespace A256690.P8593586908412234879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004130 (Int.tmod (A005361 (n + 1)) (A141214 n)).toNat

end

end A256690.P8593586908412234879

namespace A256690

/-- `A004130(A005361(n+1)%A141214(n))` -/
def P8593586908412234879.Spec : Prop :=
  ∀ n, P8593586908412234879.a n = A256690 (n + 1)

end A256690

/-! ## A256690.P4367656821339567403

`A004130(A051903(n+1)%A141214(n))`
-/

namespace A256690.P4367656821339567403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004130 (Int.tmod (A051903 (n + 1)) (A141214 n)).toNat

end

end A256690.P4367656821339567403

namespace A256690

/-- `A004130(A051903(n+1)%A141214(n))` -/
def P4367656821339567403.Spec : Prop :=
  ∀ n, P4367656821339567403.a n = A256690 (n + 1)

end A256690

/-! ## A256690.P14663862949738685880

`A004130(A005361(n+1))%A220169(n+1)`
-/

namespace A256690.P14663862949738685880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004130 (A005361 (n + 1)).toNat) (A220169 (n + 1))

end

end A256690.P14663862949738685880

namespace A256690

/-- `A004130(A005361(n+1))%A220169(n+1)` -/
def P14663862949738685880.Spec : Prop :=
  ∀ n, P14663862949738685880.a n = A256690 (n + 1)

end A256690

/-! ## A256690.P18267702508394009136

`A004130(A051903(n+1))%A220169(n+1)`
-/

namespace A256690.P18267702508394009136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004130 (A051903 (n + 1)).toNat) (A220169 (n + 1))

end

end A256690.P18267702508394009136

namespace A256690

/-- `A004130(A051903(n+1))%A220169(n+1)` -/
def P18267702508394009136.Spec : Prop :=
  ∀ n, P18267702508394009136.a n = A256690 (n + 1)

end A256690

/-!
# A256691: From fourth root of Riemann zeta function: form Dirichlet series Sum b(n)/n^x whose fourth power is zeta function; sequence gives denominator of b(n).

The programs for A256691, the canonical program `A256691.P2977468991779873035` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A256691 has offset 1).

The definition of A256691 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A256691.P2977468991779873035

`∏{e}[n+1, A088802(#)]`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A256691

/-- `∏{e}[n+1, A088802(#)]` -/
def P2977468991779873035.Spec : Prop :=
  ∀ n, P2977468991779873035.a n = A256691 (n + 1)

theorem P2977468991779873035.correct : P2977468991779873035.Spec := by
  intro n
  simp only [A256691, Nat.add_sub_cancel]

end A256691

/-! ## A256691.P14049621161224414862

`A046644(n+1)*A061142(n+1)`
-/

namespace A256691.P14049621161224414862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046644 (n + 1) * A061142 (n + 1)

end

end A256691.P14049621161224414862

namespace A256691

/-- `A046644(n+1)*A061142(n+1)` -/
def P14049621161224414862.Spec : Prop :=
  ∀ n, P14049621161224414862.a n = A256691 (n + 1)

end A256691

/-! ## A256691.P13719829875153429540

`A165825(n+1)*A317934(n+1)`
-/

namespace A256691.P13719829875153429540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165825 (n + 1) * A317934 (n + 1)

end

end A256691.P13719829875153429540

namespace A256691

/-- `A165825(n+1)*A317934(n+1)` -/
def P13719829875153429540.Spec : Prop :=
  ∀ n, P13719829875153429540.a n = A256691 (n + 1)

end A256691

/-! ## A256691.P17335629806122840361

`A165829(n+1)/A037445(n+1)`
-/

namespace A256691.P17335629806122840361
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A165829 (n + 1) : ℚ) / (A037445 (n + 1) : ℚ)

end

end A256691.P17335629806122840361

namespace A256691

/-- `A165829(n+1)/A037445(n+1)` -/
def P17335629806122840361.Spec : Prop :=
  ∀ n, P17335629806122840361.a n = (A256691 (n + 1) : ℚ)

end A256691

/-! ## A256691.P14309476191536179412

`A061142(n+1)²*A317934(n+1)`
-/

namespace A256691.P14309476191536179412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061142 (n + 1) ^ 2 * A317934 (n + 1)

end

end A256691.P14309476191536179412

namespace A256691

/-- `A061142(n+1)²*A317934(n+1)` -/
def P14309476191536179412.Spec : Prop :=
  ∀ n, P14309476191536179412.a n = A256691 (n + 1)

end A256691

/-! ## A256691.P1287072498782197808

`A046644(n+1)²/A317934(n+1)`
-/

namespace A256691.P1287072498782197808
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046644 (n + 1) ^ 2 : ℚ) / (A317934 (n + 1) : ℚ)

end

end A256691.P1287072498782197808

namespace A256691

/-- `A046644(n+1)²/A317934(n+1)` -/
def P1287072498782197808.Spec : Prop :=
  ∀ n, P1287072498782197808.a n = (A256691 (n + 1) : ℚ)

end A256691

/-! ## A256691.P15676243034043163092

`A000079(A001222(n+1))*A046644(n+1)`
-/

namespace A256691.P15676243034043163092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A001222 (n + 1)).toNat * A046644 (n + 1)

end

end A256691.P15676243034043163092

namespace A256691

/-- `A000079(A001222(n+1))*A046644(n+1)` -/
def P15676243034043163092.Spec : Prop :=
  ∀ n, P15676243034043163092.a n = A256691 (n + 1)

end A256691

/-! ## A256691.P7819061446501739796

`A000302(A046645(n+1))/A317934(n+1)`
-/

namespace A256691.P7819061446501739796
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000302 (A046645 (n + 1)).toNat : ℚ) / (A317934 (n + 1) : ℚ)

end

end A256691.P7819061446501739796

namespace A256691

/-- `A000302(A046645(n+1))/A317934(n+1)` -/
def P7819061446501739796.Spec : Prop :=
  ∀ n, P7819061446501739796.a n = (A256691 (n + 1) : ℚ)

end A256691

/-! ## A256691.P16324305131610549183

`A046644(n+1)²/A046644(A000188(n+1))`
-/

namespace A256691.P16324305131610549183
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046644 (n + 1) ^ 2 : ℚ) / (A046644 (A000188 (n + 1)).toNat : ℚ)

end

end A256691.P16324305131610549183

namespace A256691

/-- `A046644(n+1)²/A046644(A000188(n+1))` -/
def P16324305131610549183.Spec : Prop :=
  ∀ n, P16324305131610549183.a n = (A256691 (n + 1) : ℚ)

end A256691

/-! ## A256691.P8410959852581161094

`A037445(n+1)*A046644(n+1)*A317934(n+1)`
-/

namespace A256691.P8410959852581161094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037445 (n + 1) * A046644 (n + 1) * A317934 (n + 1)

end

end A256691.P8410959852581161094

namespace A256691

/-- `A037445(n+1)*A046644(n+1)*A317934(n+1)` -/
def P8410959852581161094.Spec : Prop :=
  ∀ n, P8410959852581161094.a n = A256691 (n + 1)

end A256691

/-! ## A256691.P5721442132420110181

`A061142(n+1)/A037445(n+1)*A061142(n+1)²`
-/

namespace A256691.P5721442132420110181
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061142 (n + 1) : ℚ) / (A037445 (n + 1) : ℚ) * (A061142 (n + 1) ^ 2 : ℚ)

end

end A256691.P5721442132420110181

namespace A256691

/-- `A061142(n+1)/A037445(n+1)*A061142(n+1)²` -/
def P5721442132420110181.Spec : Prop :=
  ∀ n, P5721442132420110181.a n = (A256691 (n + 1) : ℚ)

end A256691

/-! ## A256691.P13366188690985866701

`2^A257090(n+1)`
-/

namespace A256691.P13366188690985866701
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A257090 (n + 1) : ℤ)

end

end A256691.P13366188690985866701

namespace A256691

/-- `2^A257090(n+1)` -/
def P13366188690985866701.Spec : Prop :=
  ∀ n, P13366188690985866701.a n = (A256691 (n + 1) : ℚ)

end A256691

/-! ## A256691.P4316576198660259321

`A000079(A257090(n+1))`
-/

namespace A256691.P4316576198660259321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A257090 (n + 1)).toNat

end

end A256691.P4316576198660259321

namespace A256691

/-- `A000079(A257090(n+1))` -/
def P4316576198660259321.Spec : Prop :=
  ∀ n, P4316576198660259321.a n = A256691 (n + 1)

end A256691

/-! ## A256691.P14220329835161186811

`A011782(A257090(n+1)+1)`
-/

namespace A256691.P14220329835161186811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A257090 (n + 1) + 1).toNat

end

end A256691.P14220329835161186811

namespace A256691

/-- `A011782(A257090(n+1)+1)` -/
def P14220329835161186811.Spec : Prop :=
  ∀ n, P14220329835161186811.a n = A256691 (n + 1)

end A256691

/-! ## A256691.P8404529629084117417

`A034008(A257090(n+1)+2)`
-/

namespace A256691.P8404529629084117417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034008 (A257090 (n + 1) + 2).toNat

end

end A256691.P8404529629084117417

namespace A256691

/-- `A034008(A257090(n+1)+2)` -/
def P8404529629084117417.Spec : Prop :=
  ∀ n, P8404529629084117417.a n = A256691 (n + 1)

end A256691

/-! ## A256691.P11906993606017160608

`A317934((n+1)²)²/A317934(n+1)`
-/

namespace A256691.P11906993606017160608
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A317934 ((n + 1) ^ 2) ^ 2 : ℚ) / (A317934 (n + 1) : ℚ)

end

end A256691.P11906993606017160608

namespace A256691

/-- `A317934((n+1)²)²/A317934(n+1)` -/
def P11906993606017160608.Spec : Prop :=
  ∀ n, P11906993606017160608.a n = (A256691 (n + 1) : ℚ)

end A256691

/-! ## A256691.P13112298680756700481

`A061142(n+1)*A061142(A061142(n+1)*A317934(n+1))`
-/

namespace A256691.P13112298680756700481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061142 (n + 1) * A061142 (A061142 (n + 1) * A317934 (n + 1)).toNat

end

end A256691.P13112298680756700481

namespace A256691

/-- `A061142(n+1)*A061142(A061142(n+1)*A317934(n+1))` -/
def P13112298680756700481.Spec : Prop :=
  ∀ n, P13112298680756700481.a n = A256691 (n + 1)

end A256691

/-! ## A256691.P3493319372866894607

`A037445(A302023(n+1))*A046644(n+1)`
-/

namespace A256691.P3493319372866894607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037445 (A302023 (n + 1)).toNat * A046644 (n + 1)

end

end A256691.P3493319372866894607

namespace A256691

/-- `A037445(A302023(n+1))*A046644(n+1)` -/
def P3493319372866894607.Spec : Prop :=
  ∀ n, P3493319372866894607.a n = A256691 (n + 1)

end A256691

/-!
# A256692: From fifth root of Riemann zeta function: form Dirichlet series Sum b(n)/n^x whose fifth power is zeta function; sequence gives numerator of b(n).

The programs for A256692, there is no canonical definition to state claims against.
-/

/-! ## A256692.P7768055217244075921

`A324766(floor(cosh(∏{e}[n+1, #])))`
-/

namespace A256692.P7768055217244075921
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324766 ⌊Real.cosh ((∏ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℝ)⌋.toNat

end

end A256692.P7768055217244075921

/-! ## A256692.P14657506769817664913

`A324766(floor(sinh(∏{e}[n+1, #])))`
-/

namespace A256692.P14657506769817664913
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324766 ⌊Real.sinh ((∏ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℝ)⌋.toNat

end

end A256692.P14657506769817664913

/-! ## A256692.P9164958691978220362

`A137620(3^∑{e}[n+1, #-1])`
-/

namespace A256692.P9164958691978220362
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137620 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (∑ p ∈ Nat.primeFactors (f1 n), ((Nat.factorization (f1 n) p : ℤ) - 1) : ℤ))).toNat

end

end A256692.P9164958691978220362

/-! ## A256692.P4185176161206914277

`A257639(15^∑{e}[n+1, #-1])`
-/

namespace A256692.P4185176161206914277
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257639 (SequenceMachineLib.roundAway ((15 : ℚ) ^ (∑ p ∈ Nat.primeFactors (f1 n), ((Nat.factorization (f1 n) p : ℤ) - 1) : ℤ))).toNat

end

end A256692.P4185176161206914277

/-! ## A256692.P11035856136722598746

`A356380(A112624(n+1))`
-/

namespace A256692.P11035856136722598746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356380 (A112624 (n + 1)).toNat

end

end A256692.P11035856136722598746

/-!
# A256693: From fifth root of Riemann zeta function: form Dirichlet series Sum b(n)/n^x whose fifth power is zeta function; sequence gives denominator of b(n).

The programs for A256693, the canonical program `A256693.P12800536853273981062` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A256693 has offset 1).

The definition of A256693 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A256693.P12800536853273981062

`5^A257091(n+1)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A256693

/-- `5^A257091(n+1)` -/
def P12800536853273981062.Spec : Prop :=
  ∀ n, P12800536853273981062.a n = (A256693 (n + 1) : ℚ)

end A256693

/-! ## A256693.P6779606246956978116

`A276147(5^∑{e}[n+1, #])`
-/

namespace A256693.P6779606246956978116
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276147 (5 ^ (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p))

end

end A256693.P6779606246956978116

namespace A256693

/-- `A276147(5^∑{e}[n+1, #])` -/
def P6779606246956978116.Spec : Prop :=
  ∀ n, P6779606246956978116.a n = A256693 (n + 1)

end A256693

/-! ## A256693.P13943970882768893837

`A343250(5^∑{e}[n+1, #])`
-/

namespace A256693.P13943970882768893837
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343250 (5 ^ (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p))

end

end A256693.P13943970882768893837

namespace A256693

/-- `A343250(5^∑{e}[n+1, #])` -/
def P13943970882768893837.Spec : Prop :=
  ∀ n, P13943970882768893837.a n = A256693 (n + 1)

end A256693

/-! ## A256693.P16336883131738843270

`A064553(7^∑{e}[n+1, #])`
-/

namespace A256693.P16336883131738843270
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064553 (7 ^ (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p))

end

end A256693.P16336883131738843270

namespace A256693

/-- `A064553(7^∑{e}[n+1, #])` -/
def P16336883131738843270.Spec : Prop :=
  ∀ n, P16336883131738843270.a n = A256693 (n + 1)

end A256693

/-! ## A256693.P5409815216465101006

`A064989(7^∑{e}[n+1, #])`
-/

namespace A256693.P5409815216465101006
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (7 ^ (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p))

end

end A256693.P5409815216465101006

namespace A256693

/-- `A064989(7^∑{e}[n+1, #])` -/
def P5409815216465101006.Spec : Prop :=
  ∀ n, P5409815216465101006.a n = A256693 (n + 1)

end A256693

/-!
# A256694: The radius of the largest of four circles with different integer radii arranged so that each circle is tangent externally to the other three circles.

The programs for A256694, there is no canonical definition to state claims against.
-/

/-! ## A256694.P6044073825885918441

`record[A265189(A070048(2*(n+2))^A046563(n+1))]`
-/

namespace A256694.P6044073825885918441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265189 (SequenceMachineLib.roundAway ((A070048 (2 * (n + 2)) : ℚ) ^ (A046563 (n + 1) : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A256694.P6044073825885918441

/-!
# A256695: Integer areas A of integer-sided triangles (a, b, c) such that the area of the triangle (a+b, a+c, b+c) is also an integer.

The programs for A256695, there is no canonical definition to state claims against.
-/

/-! ## A256695.P1399723194629325665

`record[12*(n+1)²-A033428(A006983(2*(n+2)))]`
-/

namespace A256695.P1399723194629325665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (12 * (n + 1) ^ 2 : ℤ) - A033428 (A006983 (2 * (n + 2))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A256695.P1399723194629325665

/-! ## A256695.P14820190715037592038

`3*∑{e}[4^(n+1), #²]`
-/

namespace A256695.P14820190715037592038
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 ^ (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p ^ 2)

end

end A256695.P14820190715037592038

/-! ## A256695.P13764550936259817234

`3*∏{e}[4^(n+1), #²]`
-/

namespace A256695.P13764550936259817234
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 ^ (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (∏ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p ^ 2)

end

end A256695.P13764550936259817234

/-! ## A256695.P6076344605967840314

`record[3*∑{e}[(n+2)², #²]]`
-/

namespace A256695.P6076344605967840314
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 2) ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A256695.P6076344605967840314

/-! ## A256695.P16996933733764268426

`3*A140819(∑[n+1])²`
-/

namespace A256695.P16996933733764268426
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A140819 (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A256695.P16996933733764268426

/-!
# A256697: Trace of the minimal alternating triangular-number representation of n.

The programs for A256697, there is no canonical definition to state claims against.
-/

/-! ## A256697.P3282592110666839836

`A255974(∑[A182321(n)])`
-/

namespace A256697.P3282592110666839836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182321 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255974 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A256697.P3282592110666839836

/-! ## A256697.P13659397801330378982

`A255974(∑[a(A004736(n)-1)+1])` with `a(0)=0`
-/

namespace A256697.P13659397801330378982
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 (A004736 n - 1).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255974 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A256697.P13659397801330378982

/-! ## A256697.P11600931114094476491

`A255974(∑[a(A057554(2*n))+1])` with `a(0)=0`
-/

namespace A256697.P11600931114094476491
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 (A057554 (2 * n)).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255974 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A256697.P11600931114094476491

/-! ## A256697.P13095580604289205077

`A255974(∑[a(A127739(n)%n)+1])` with `a(0)=0`
-/

namespace A256697.P13095580604289205077
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 (Int.tmod (A127739 n) (n : ℤ)).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255974 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A256697.P13095580604289205077

/-! ## A256697.P3186591969717421508

`A255974(lt[A236308(n+1), A255974(n+1)])`
-/

namespace A256697.P3186591969717421508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236308 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255974 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255974 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A256697.P3186591969717421508

/-!
# A256698: Numbers with positive triangular trace.

The programs for A256698, the canonical program `A256698.P10084946441943223524` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A256698 has offset 1).

The definition of A256698 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A256698.P10084946441943223524

`eq[0, 1-a(A025581(n-1))]` with `a(0)=1`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A256698

/-- `eq[0, 1-a(A025581(n-1))]` -/
def P10084946441943223524.Spec : Prop :=
  ∀ n, (P10084946441943223524.a n : ℤ) = A256698 (n + 1)

theorem P10084946441943223524.correct : P10084946441943223524.Spec := by
  intro n
  simp only [A256698, Nat.add_sub_cancel]

end A256698

/-! ## A256698.P10533579519313449701

`lt[1-a(A004736(n)-1), 1]` with `a(0)=1`
-/

namespace A256698.P10533579519313449701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  1 - f1 (A004736 n - 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A256698.P10533579519313449701

namespace A256698

/-- `lt[1-a(A004736(n)-1), 1]` -/
def P10533579519313449701.Spec : Prop :=
  ∀ n, (P10533579519313449701.a n : ℤ) = A256698 (n + 1)

end A256698

/-! ## A256698.P9770130218061381142

`lt[0, 1-a(A057554(A004277(n)))]` with `a(0)=0`
-/

namespace A256698.P9770130218061381142
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f2 =>
  1 - f2 (A057554 (A004277 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A256698.P9770130218061381142

namespace A256698

/-- `lt[0, 1-a(A057554(A004277(n)))]` -/
def P9770130218061381142.Spec : Prop :=
  ∀ n, (P9770130218061381142.a n : ℤ) = A256698 (n + 1)

end A256698

/-! ## A256698.P14042168793737332588

`lt[A120223(a(A004736(n)-1)), 3]` with `a(0)=5`
-/

namespace A256698.P14042168793737332588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [5] fun n f1 =>
  A120223 (f1 (A004736 n - 1).toNat).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A256698.P14042168793737332588

namespace A256698

/-- `lt[A120223(a(A004736(n)-1)), 3]` -/
def P14042168793737332588.Spec : Prop :=
  ∀ n, (P14042168793737332588.a n : ℤ) = A256698 (n + 1)

end A256698

/-! ## A256698.P14370427616085428955

`lt[0, A256697(n)]`
-/

namespace A256698.P14370427616085428955
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256697 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A256698.P14370427616085428955

namespace A256698

/-- `lt[0, A256697(n)]` -/
def P14370427616085428955.Spec : Prop :=
  ∀ n, (P14370427616085428955.a n : ℤ) = A256698 (n + 1)

end A256698

/-! ## A256698.P4356988034847049522

`eq[1, A182321(n)%2]`
-/

namespace A256698.P4356988034847049522
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A182321 n) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A256698.P4356988034847049522

namespace A256698

/-- `eq[1, A182321(n)%2]` -/
def P4356988034847049522.Spec : Prop :=
  ∀ n, (P4356988034847049522.a n : ℤ) = A256698 (n + 1)

end A256698

/-! ## A256698.P12241075904149752184

`record[(n+1)%(A256697(n+1)+n+1)]`
-/

namespace A256698.P12241075904149752184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A256697 (n + 1) + (n + 1 : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A256698.P12241075904149752184

namespace A256698

/-- `record[(n+1)%(A256697(n+1)+n+1)]` -/
def P12241075904149752184.Spec : Prop :=
  ∀ n, P12241075904149752184.a n = A256698 (n + 1)

end A256698

/-! ## A256698.P3114992878834594479

`eq[A000463(2*n+1)-n, and(1, A182321(n))]`
-/

namespace A256698.P3114992878834594479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (2 * n + 1) - (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A182321 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A256698.P3114992878834594479

namespace A256698

/-- `eq[A000463(2*n+1)-n, and(1, A182321(n))]` -/
def P3114992878834594479.Spec : Prop :=
  ∀ n, (P3114992878834594479.a n : ℤ) = A256698 (n + 1)

end A256698

/-! ## A256698.P17132775406035497286

`eq[2*n+1-A005843(n), and(1, A182321(n))]`
-/

namespace A256698.P17132775406035497286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) - A005843 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A182321 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A256698.P17132775406035497286

namespace A256698

/-- `eq[2*n+1-A005843(n), and(1, A182321(n))]` -/
def P17132775406035497286.Spec : Prop :=
  ∀ n, (P17132775406035497286.a n : ℤ) = A256698 (n + 1)

end A256698

/-! ## A256698.P15066001269048274546

`eq[1, gcd(A131577(n), A182321(n))]`
-/

namespace A256698.P15066001269048274546
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A131577 n) (A182321 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A256698.P15066001269048274546

namespace A256698

/-- `eq[1, gcd(A131577(n), A182321(n))]` -/
def P15066001269048274546.Spec : Prop :=
  ∀ n, (P15066001269048274546.a n : ℤ) = A256698 (n + 1)

end A256698

/-!
# A256699: Numbers with negative triangular trace.

The programs for A256699, the canonical program `A256699.P8613917048069733691` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A256699 has offset 1).

The definition of A256699 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 484 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A256699.P8352868861562097024

`lt[A256697(n), 0]`
-/

namespace A256699.P8352868861562097024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256697 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A256699.P8352868861562097024

namespace A256699

/-- `lt[A256697(n), 0]` -/
def P8352868861562097024.Spec : Prop :=
  ∀ n, (P8352868861562097024.a n : ℤ) = A256699 (n + 1)

end A256699

/-! ## A256699.P8613917048069733691

`eq[2, gcd(6, A182321(n))]`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A256699

/-- `eq[2, gcd(6, A182321(n))]` -/
def P8613917048069733691.Spec : Prop :=
  ∀ n, (P8613917048069733691.a n : ℤ) = A256699 (n + 1)

theorem P8613917048069733691.correct : P8613917048069733691.Spec := by
  intro n
  simp only [A256699, Nat.add_sub_cancel]

end A256699

/-! ## A256699.P3104165170760188933

`eq[A182321(n)%2, A000007(n)]`
-/

namespace A256699.P3104165170760188933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A182321 n) 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A256699.P3104165170760188933

namespace A256699

/-- `eq[A182321(n)%2, A000007(n)]` -/
def P3104165170760188933.Spec : Prop :=
  ∀ n, (P3104165170760188933.a n : ℤ) = A256699 (n + 1)

end A256699

/-! ## A256699.P14587988333392874329

`eq[and(1, A182321(n)), A089799(n)]`
-/

namespace A256699.P14587988333392874329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A182321 n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089799 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A256699.P14587988333392874329

namespace A256699

/-- `eq[and(1, A182321(n)), A089799(n)]` -/
def P14587988333392874329.Spec : Prop :=
  ∀ n, (P14587988333392874329.a n : ℤ) = A256699 (n + 1)

end A256699

/-! ## A256699.P4554802468432133699

`eq[and(1, A182321(n)), A198954(n)]`
-/

namespace A256699.P4554802468432133699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A182321 n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198954 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A256699.P4554802468432133699

namespace A256699

/-- `eq[and(1, A182321(n)), A198954(n)]` -/
def P4554802468432133699.Spec : Prop :=
  ∀ n, (P4554802468432133699.a n : ℤ) = A256699 (n + 1)

end A256699

/-! ## A256699.P15464265463123268118

`eq[A089799(n), A286400(A130321(n))]`
-/

namespace A256699.P15464265463123268118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089799 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286400 (A130321 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A256699.P15464265463123268118

namespace A256699

/-- `eq[A089799(n), A286400(A130321(n))]` -/
def P15464265463123268118.Spec : Prop :=
  ∀ n, (P15464265463123268118.a n : ℤ) = A256699 (n + 1)

end A256699

/-! ## A256699.P2255421045044696994

`eq[A198954(n), A286339(A130321(n))]`
-/

namespace A256699.P2255421045044696994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198954 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286339 (A130321 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A256699.P2255421045044696994

namespace A256699

/-- `eq[A198954(n), A286339(A130321(n))]` -/
def P2255421045044696994.Spec : Prop :=
  ∀ n, (P2255421045044696994.a n : ℤ) = A256699 (n + 1)

end A256699

