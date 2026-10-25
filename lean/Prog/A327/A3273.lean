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
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C032
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
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C009
import Seq.B001.C010
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
# A327300: Positions of 1's in {A327298(n) : n > 0}.

The programs for A327300, the canonical program `A327300.P17965462922652461988` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A327300 has offset 1).

The definition of A327300 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3363 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A327300.P17965462922652461988

`eq[n+1, A327298(n)+n]`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A327300

/-- `eq[n+1, A327298(n)+n]` -/
def P17965462922652461988.Spec : Prop :=
  ∀ n, (P17965462922652461988.a n : ℤ) = A327300 (n + 1)

theorem P17965462922652461988.correct : P17965462922652461988.Spec := by
  intro n
  simp only [A327300, Nat.add_sub_cancel]

end A327300

/-! ## A327300.P17449692319004439290

`eq[A327298(n), A329684(n)]`
-/

namespace A327300.P17449692319004439290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327298 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329684 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A327300.P17449692319004439290

namespace A327300

/-- `eq[A327298(n), A329684(n)]` -/
def P17449692319004439290.Spec : Prop :=
  ∀ n, (P17449692319004439290.a n : ℤ) = A327300 (n + 1)

end A327300

/-! ## A327300.P6873897310095070409

`eq[A327298(n), A373565(n)]`
-/

namespace A327300.P6873897310095070409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327298 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373565 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A327300.P6873897310095070409

namespace A327300

/-- `eq[A327298(n), A373565(n)]` -/
def P6873897310095070409.Spec : Prop :=
  ∀ n, (P6873897310095070409.a n : ℤ) = A327300 (n + 1)

end A327300

/-! ## A327300.P11452520345770357506

`eq[1, gcd(A016742(n), A327298(n))]`
-/

namespace A327300.P11452520345770357506
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A016742 n) (A327298 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A327300.P11452520345770357506

namespace A327300

/-- `eq[1, gcd(A016742(n), A327298(n))]` -/
def P11452520345770357506.Spec : Prop :=
  ∀ n, (P11452520345770357506.a n : ℤ) = A327300 (n + 1)

end A327300

/-! ## A327300.P11416702993775353274

`eq[A005893(n)*A327298(n), A005893(n)]`
-/

namespace A327300.P11416702993775353274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005893 n * A327298 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005893 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A327300.P11416702993775353274

namespace A327300

/-- `eq[A005893(n)*A327298(n), A005893(n)]` -/
def P11416702993775353274.Spec : Prop :=
  ∀ n, (P11416702993775353274.a n : ℤ) = A327300 (n + 1)

end A327300

/-! ## A327300.P17970219323940858574

`eq[A008619(n)*A327298(n), A008619(n)]`
-/

namespace A327300.P17970219323940858574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n * A327298 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A327300.P17970219323940858574

namespace A327300

/-- `eq[A008619(n)*A327298(n), A008619(n)]` -/
def P17970219323940858574.Spec : Prop :=
  ∀ n, (P17970219323940858574.a n : ℤ) = A327300 (n + 1)

end A327300

/-! ## A327300.P9900883829198009222

`eq[A017281(n)*A327298(n), A017281(n)]`
-/

namespace A327300.P9900883829198009222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017281 n * A327298 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017281 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A327300.P9900883829198009222

namespace A327300

/-- `eq[A017281(n)*A327298(n), A017281(n)]` -/
def P9900883829198009222.Spec : Prop :=
  ∀ n, (P9900883829198009222.a n : ℤ) = A327300 (n + 1)

end A327300

/-! ## A327300.P6546830999303237831

`eq[A017329(n)*A327298(n), A017329(n)]`
-/

namespace A327300.P6546830999303237831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017329 n * A327298 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017329 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A327300.P6546830999303237831

namespace A327300

/-- `eq[A017329(n)*A327298(n), A017329(n)]` -/
def P6546830999303237831.Spec : Prop :=
  ∀ n, (P6546830999303237831.a n : ℤ) = A327300 (n + 1)

end A327300

/-! ## A327300.P12745576906236697919

`eq[A132044(n)*A327298(n), A132044(n)]`
-/

namespace A327300.P12745576906236697919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132044 n * A327298 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132044 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A327300.P12745576906236697919

namespace A327300

/-- `eq[A132044(n)*A327298(n), A132044(n)]` -/
def P12745576906236697919.Spec : Prop :=
  ∀ n, (P12745576906236697919.a n : ℤ) = A327300 (n + 1)

end A327300

/-! ## A327300.P13515315166738064746

`eq[A137688(n)*A327298(n), A137688(n)]`
-/

namespace A327300.P13515315166738064746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137688 n * A327298 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137688 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A327300.P13515315166738064746

namespace A327300

/-- `eq[A137688(n)*A327298(n), A137688(n)]` -/
def P13515315166738064746.Spec : Prop :=
  ∀ n, (P13515315166738064746.a n : ℤ) = A327300 (n + 1)

end A327300

/-! ## A327300.P10469905264610657143

`eq[A168101(n)*A327298(n), A168101(n)]`
-/

namespace A327300.P10469905264610657143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168101 n * A327298 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168101 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A327300.P10469905264610657143

namespace A327300

/-- `eq[A168101(n)*A327298(n), A168101(n)]` -/
def P10469905264610657143.Spec : Prop :=
  ∀ n, (P10469905264610657143.a n : ℤ) = A327300 (n + 1)

end A327300

/-! ## A327300.P17752754265417287902

`eq[A168625(n)*A327298(n), A168625(n)]`
-/

namespace A327300.P17752754265417287902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168625 n * A327298 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168625 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A327300.P17752754265417287902

namespace A327300

/-- `eq[A168625(n)*A327298(n), A168625(n)]` -/
def P17752754265417287902.Spec : Prop :=
  ∀ n, (P17752754265417287902.a n : ℤ) = A327300 (n + 1)

end A327300

/-! ## A327300.P5488117287527388077

`eq[A319384(n)*A327298(n), A319384(n)]`
-/

namespace A327300.P5488117287527388077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319384 n * A327298 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319384 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A327300.P5488117287527388077

namespace A327300

/-- `eq[A319384(n)*A327298(n), A319384(n)]` -/
def P5488117287527388077.Spec : Prop :=
  ∀ n, (P5488117287527388077.a n : ℤ) = A327300 (n + 1)

end A327300

/-! ## A327300.P10423490823646728153

`eq[A327298(n)*A344180(n), A344180(n)]`
-/

namespace A327300.P10423490823646728153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327298 n * A344180 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344180 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A327300.P10423490823646728153

namespace A327300

/-- `eq[A327298(n)*A344180(n), A344180(n)]` -/
def P10423490823646728153.Spec : Prop :=
  ∀ n, (P10423490823646728153.a n : ℤ) = A327300 (n + 1)

end A327300

/-! ## A327300.P4019002536161094456

`eq[2, A135296(n+1)]+1`
-/

namespace A327300.P4019002536161094456
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135296 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A327300.P4019002536161094456

namespace A327300

/-- `eq[2, A135296(n+1)]+1` -/
def P4019002536161094456.Spec : Prop :=
  ∀ n, (P4019002536161094456.a n : ℤ) = A327300 (n + 1)

end A327300

/-! ## A327300.P12072620365943379975

`lt[A135296(n+1), Δ[A022853(n)]]+1`
-/

namespace A327300.P12072620365943379975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135296 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022853 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A327300.P12072620365943379975

namespace A327300

/-- `lt[A135296(n+1), Δ[A022853(n)]]+1` -/
def P12072620365943379975.Spec : Prop :=
  ∀ n, (P12072620365943379975.a n : ℤ) = A327300 (n + 1)

end A327300

/-! ## A327300.P7664344810790163080

`eq[A174690(n)*A327298(n), A174690(n)]`
-/

namespace A327300.P7664344810790163080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174690 n * A327298 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174690 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A327300.P7664344810790163080

namespace A327300

/-- `eq[A174690(n)*A327298(n), A174690(n)]` -/
def P7664344810790163080.Spec : Prop :=
  ∀ n, (P7664344810790163080.a n : ℤ) = A327300 (n + 1)

end A327300

/-!
# A327301: Positions of 2's in {A327298(n) : n > 0}.

The programs for A327301, the canonical program `A327301.P16692884953437895385` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A327301 has offset 1).

The definition of A327301 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A327301.P16692884953437895385

`eq[2, floor(3*π*n)%3]`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A327301

/-- `eq[2, floor(3*π*n)%3]` -/
def P16692884953437895385.Spec : Prop :=
  ∀ n, (P16692884953437895385.a n : ℤ) = A327301 (n + 1)

theorem P16692884953437895385.correct : P16692884953437895385.Spec := by
  intro n
  simp only [A327301, Nat.add_sub_cancel]

end A327301

/-! ## A327301.P12853895515913845439

`eq[A165063(n+1), A327298(n)]`
-/

namespace A327301.P12853895515913845439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165063 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327298 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A327301.P12853895515913845439

namespace A327301

/-- `eq[A165063(n+1), A327298(n)]` -/
def P12853895515913845439.Spec : Prop :=
  ∀ n, (P12853895515913845439.a n : ℤ) = A327301 (n + 1)

end A327301

/-! ## A327301.P4677201130713011896

`A344180(eq[2, A327298(A344180(n))])`
-/

namespace A327301.P4677201130713011896
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327298 (A344180 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344180 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A327301.P4677201130713011896

namespace A327301

/-- `A344180(eq[2, A327298(A344180(n))])` -/
def P4677201130713011896.Spec : Prop :=
  ∀ n, P4677201130713011896.a n = A327301 (n + 1)

end A327301

/-! ## A327301.P9063984029090015260

`eq[A036453(n+1), A327298(n)]`
-/

namespace A327301.P9063984029090015260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036453 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327298 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A327301.P9063984029090015260

namespace A327301

/-- `eq[A036453(n+1), A327298(n)]` -/
def P9063984029090015260.Spec : Prop :=
  ∀ n, (P9063984029090015260.a n : ℤ) = A327301 (n + 1)

end A327301

/-! ## A327301.P15472900035391099752

`eq[A104435(n+1), A327298(n)]`
-/

namespace A327301.P15472900035391099752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104435 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327298 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A327301.P15472900035391099752

namespace A327301

/-- `eq[A104435(n+1), A327298(n)]` -/
def P15472900035391099752.Spec : Prop :=
  ∀ n, (P15472900035391099752.a n : ℤ) = A327301 (n + 1)

end A327301

/-! ## A327301.P16558757433362533578

`eq[A185437(n+1), A327298(n)]`
-/

namespace A327301.P16558757433362533578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185437 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327298 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A327301.P16558757433362533578

namespace A327301

/-- `eq[A185437(n+1), A327298(n)]` -/
def P16558757433362533578.Spec : Prop :=
  ∀ n, (P16558757433362533578.a n : ℤ) = A327301 (n + 1)

end A327301

/-! ## A327301.P5215987548192808247

`eq[A236213(n+1), A327298(n)]`
-/

namespace A327301.P5215987548192808247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236213 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327298 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A327301.P5215987548192808247

namespace A327301

/-- `eq[A236213(n+1), A327298(n)]` -/
def P5215987548192808247.Spec : Prop :=
  ∀ n, (P5215987548192808247.a n : ℤ) = A327301 (n + 1)

end A327301

/-! ## A327301.P16646132166977439904

`eq[A329684(n)+1, A327298(n)]`
-/

namespace A327301.P16646132166977439904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329684 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327298 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A327301.P16646132166977439904

namespace A327301

/-- `eq[A329684(n)+1, A327298(n)]` -/
def P16646132166977439904.Spec : Prop :=
  ∀ n, (P16646132166977439904.a n : ℤ) = A327301 (n + 1)

end A327301

/-! ## A327301.P7479229001968214164

`eq[A373565(n)+1, A327298(n)]`
-/

namespace A327301.P7479229001968214164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373565 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327298 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A327301.P7479229001968214164

namespace A327301

/-- `eq[A373565(n)+1, A327298(n)]` -/
def P7479229001968214164.Spec : Prop :=
  ∀ n, (P7479229001968214164.a n : ℤ) = A327301 (n + 1)

end A327301

/-! ## A327301.P13694825387454253503

`eq[2, gcd(A016742(n), A327298(n))]`
-/

namespace A327301.P13694825387454253503
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A016742 n) (A327298 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A327301.P13694825387454253503

namespace A327301

/-- `eq[2, gcd(A016742(n), A327298(n))]` -/
def P13694825387454253503.Spec : Prop :=
  ∀ n, (P13694825387454253503.a n : ℤ) = A327301 (n + 1)

end A327301

/-! ## A327301.P7075113182068702510

`eq[2, and(A071820(n+1), A327298(n))]`
-/

namespace A327301.P7075113182068702510
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A071820 (n + 1)) (A327298 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A327301.P7075113182068702510

namespace A327301

/-- `eq[2, and(A071820(n+1), A327298(n))]` -/
def P7075113182068702510.Spec : Prop :=
  ∀ n, (P7075113182068702510.a n : ℤ) = A327301 (n + 1)

end A327301

/-!
# A327302: One of the two successive approximations up to 5^n for the 5-adic integer sqrt(-9). This is the 1 (mod 5) case (except for n = 0).

The programs for A327302, there is no canonical definition to state claims against.
-/

/-! ## A327302.P15417857767860238092

`(3*A034935(n))%A000351(n)`
-/

namespace A327302.P15417857767860238092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (3 * A034935 n) (A000351 n)

end

end A327302.P15417857767860238092

/-! ## A327302.P17875641368702284464

`(3*A048898(n))%A000351(n)`
-/

namespace A327302.P17875641368702284464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (3 * A048898 n) (A000351 n)

end

end A327302.P17875641368702284464

/-! ## A327302.P4385473512994092810

`A268922(n)+A269590(n)-A327303(n)`
-/

namespace A327302.P4385473512994092810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268922 n + (A269590 n - A327303 n)

end

end A327302.P4385473512994092810

/-! ## A327302.P7062646234663250595

`A324023(n)+A324024(n)-A327303(n)`
-/

namespace A327302.P7062646234663250595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324023 n + (A324024 n - A327303 n)

end

end A327302.P7062646234663250595

/-! ## A327302.P6299446999487125372

`A324027(n)+A324028(n)-A327303(n)`
-/

namespace A327302.P6299446999487125372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324027 n + (A324028 n - A327303 n)

end

end A327302.P6299446999487125372

/-!
# A327303: One of the two successive approximations up to 5^n for the 5-adic integer sqrt(-9). This is the 4 (mod 5) case (except for n = 0).

The programs for A327303, the canonical program `A327303.P4551057521544503163` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A327303 has offset 0).

The definition of A327303 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 144 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A327303.P4551057521544503163

`(A268922(n)+A048899(n))%A000351(n)`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A327303

/-- `(A268922(n)+A048899(n))%A000351(n)` -/
def P4551057521544503163.Spec : Prop :=
  ∀ n, P4551057521544503163.a n = A327303 n

theorem P4551057521544503163.correct : P4551057521544503163.Spec := by
  intro n
  simp only [A327303]

end A327303

/-! ## A327303.P14229166949129173768

`(3*A048899(n))%A000351(n)`
-/

namespace A327303.P14229166949129173768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (3 * A048899 n) (A000351 n)

end

end A327303.P14229166949129173768

namespace A327303

/-- `(3*A048899(n))%A000351(n)` -/
def P14229166949129173768.Spec : Prop :=
  ∀ n, P14229166949129173768.a n = A327303 n

end A327303

/-! ## A327303.P12068682669410495043

`A000351(n)-A327302(A028310(n))`
-/

namespace A327303.P12068682669410495043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000351 n - A327302 (A028310 n).toNat

end

end A327303.P12068682669410495043

namespace A327303

/-- `A000351(n)-A327302(A028310(n))` -/
def P12068682669410495043.Spec : Prop :=
  ∀ n, P12068682669410495043.a n = A327303 n

end A327303

/-! ## A327303.P2496930184273133783

`A048898(n)+A048899(n)-A327302(n)`
-/

namespace A327303.P2496930184273133783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048898 n + (A048899 n - A327302 n)

end

end A327303.P2496930184273133783

namespace A327303

/-- `A048898(n)+A048899(n)-A327302(n)` -/
def P2496930184273133783.Spec : Prop :=
  ∀ n, P2496930184273133783.a n = A327303 n

end A327303

/-! ## A327303.P12966132397639722933

`A268922(n)+A269590(n)-A327302(n)`
-/

namespace A327303.P12966132397639722933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268922 n + (A269590 n - A327302 n)

end

end A327303.P12966132397639722933

namespace A327303

/-- `A268922(n)+A269590(n)-A327302(n)` -/
def P12966132397639722933.Spec : Prop :=
  ∀ n, P12966132397639722933.a n = A327303 n

end A327303

/-!
# A327304: Digits of one of the two 5-adic integers sqrt(-9) that is related to A327302.

The programs for A327304, there is no canonical definition to state claims against.
-/

/-! ## A327304.P9455646604247348998

`(A327302(n+1)-A327302(n))/5^n`
-/

namespace A327304.P9455646604247348998
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A327302 (n + 1) - A327302 n : ℚ) / (5 ^ n : ℚ)

end

end A327304.P9455646604247348998

/-! ## A327304.P11575260807841927085

`floor(acot(n))+4-A327305(n)`
-/

namespace A327304.P11575260807841927085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (n : ℝ)⌋ + (4 - A327305 n)

end

end A327304.P11575260807841927085

/-! ## A327304.P8616285633581488350

`4-A327305(abs(1-n)+1)`
-/

namespace A327304.P8616285633581488350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 - A327305 (|1 - (n : ℤ)| + 1).toNat

end

end A327304.P8616285633581488350

/-! ## A327304.P7793734853016094845

`A000007(n)+4-A327305(n)`
-/

namespace A327304.P7793734853016094845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (4 - A327305 n)

end

end A327304.P7793734853016094845

/-! ## A327304.P10827214373012931430

`A000038(n)!+3-A327305(n)`
-/

namespace A327304.P10827214373012931430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A000038 n).toNat : ℤ) + (3 - A327305 n)

end

end A327304.P10827214373012931430

/-! ## A327304.P17986123535356368893

`xor(4-A327305(n), A000007(n²))`
-/

namespace A327304.P17986123535356368893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (4 - A327305 n) (A000007 (n ^ 2))

end

end A327304.P17986123535356368893

/-! ## A327304.P3056641725824748143

`and(1, A004277(n))+4-A327305(n)`
-/

namespace A327304.P3056641725824748143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A004277 n) + (4 - A327305 n)

end

end A327304.P3056641725824748143

/-! ## A327304.P7521079295026533915

`A014963(4*n+2)+3-A327305(n)`
-/

namespace A327304.P7521079295026533915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (4 * n + 2) + (3 - A327305 n)

end

end A327304.P7521079295026533915

/-! ## A327304.P6481064692260127593

`(4-A327305(n))^(A000040(n+1)%2)`
-/

namespace A327304.P6481064692260127593
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 - A327305 n : ℚ) ^ (Int.tmod (A000040 (n + 1)) 2 : ℤ)

end

end A327304.P6481064692260127593

/-! ## A327304.P3603476261901339606

`(4-A327305(n))^(A014963(∑[n+2])%2)`
-/

namespace A327304.P3603476261901339606
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 - A327305 n : ℚ) ^ (Int.tmod (A014963 (∑ j ∈ Finset.range (n + 1), f1 j)) 2 : ℤ)

end

end A327304.P3603476261901339606

/-!
# A327305: Digits of one of the two 5-adic integers sqrt(-9) that is related to A327303.

The programs for A327305, the canonical program `A327305.P16405484816997818644` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A327305 has offset 0).

The definition of A327305 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A327303, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A327305.P16405484816997818644

`(A327303(n+1)-A327303(n))/5^n`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A327305

/-- `(A327303(n+1)-A327303(n))/5^n` -/
def P16405484816997818644.Spec : Prop :=
  ∀ n, P16405484816997818644.a n = (A327305 n : ℚ)

end A327305

/-! ## A327305.P11162960403976377684

`floor(acot(n))+4-A327304(n)`
-/

namespace A327305.P11162960403976377684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (n : ℝ)⌋ + (4 - A327304 n)

end

end A327305.P11162960403976377684

namespace A327305

/-- `floor(acot(n))+4-A327304(n)` -/
def P11162960403976377684.Spec : Prop :=
  ∀ n, P11162960403976377684.a n = A327305 n

end A327305

/-! ## A327305.P13428028063555371935

`A054977(n)+3-A327304(n)`
-/

namespace A327305.P13428028063555371935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n + (3 - A327304 n)

end

end A327305.P13428028063555371935

namespace A327305

/-- `A054977(n)+3-A327304(n)` -/
def P13428028063555371935.Spec : Prop :=
  ∀ n, P13428028063555371935.a n = A327305 n

end A327305

/-! ## A327305.P16268229964483041492

`A000007(n)+4-A327304(n)`
-/

namespace A327305.P16268229964483041492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (4 - A327304 n)

end

end A327305.P16268229964483041492

namespace A327305

/-- `A000007(n)+4-A327304(n)` -/
def P16268229964483041492.Spec : Prop :=
  ∀ n, P16268229964483041492.a n = A327305 n

end A327305

/-! ## A327305.P10871489969997488331

`5-(A327304(n)+A057427(n))`
-/

namespace A327305.P10871489969997488331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 - (A327304 n + A057427 n)

end

end A327305.P10871489969997488331

namespace A327305

/-- `5-(A327304(n)+A057427(n))` -/
def P10871489969997488331.Spec : Prop :=
  ∀ n, P10871489969997488331.a n = A327305 n

end A327305

/-! ## A327305.P1223209158894941723

`5-(A327304(n)+A178334(n))`
-/

namespace A327305.P1223209158894941723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 - (A327304 n + A178334 n)

end

end A327305.P1223209158894941723

namespace A327305

/-- `5-(A327304(n)+A178334(n))` -/
def P1223209158894941723.Spec : Prop :=
  ∀ n, P1223209158894941723.a n = A327305 n

end A327305

/-! ## A327305.P10966781279443528756

`a(A000038(n))-A327304(n)` with `a(0)=4`
-/

namespace A327305.P10966781279443528756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  a (A000038 n).toNat - A327304 n

end

end A327305.P10966781279443528756

namespace A327305

/-- `a(A000038(n))-A327304(n)` -/
def P10966781279443528756.Spec : Prop :=
  ∀ n, P10966781279443528756.a n = A327305 n

end A327305

/-! ## A327305.P5035549210498288403

`A014963(4*n+2)+3-A327304(n)`
-/

namespace A327305.P5035549210498288403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (4 * n + 2) + (3 - A327304 n)

end

end A327305.P5035549210498288403

namespace A327305

/-- `A014963(4*n+2)+3-A327304(n)` -/
def P5035549210498288403.Spec : Prop :=
  ∀ n, P5035549210498288403.a n = A327305 n

end A327305

/-! ## A327305.P909322321160849987

`A020639(p?[lcm(2, 1-n)+n]+1)+2-A327304(n)`
-/

namespace A327305.P909322321160849987
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (1 - (n : ℤ)) + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) + 1) + 2 - A327304 n

end

end A327305.P909322321160849987

namespace A327305

/-- `A020639(p?[lcm(2, 1-n)+n]+1)+2-A327304(n)` -/
def P909322321160849987.Spec : Prop :=
  ∀ n, P909322321160849987.a n = A327305 n

end A327305

/-!
# A327306: a(n) = floor(3*n*r) - 3*floor(n*r), where r = sqrt(6).

The programs for A327306, there is no canonical definition to state claims against.
-/

/-! ## A327306.P8814914437975060064

`A204263(A226490(n)+A081850(n+2))`
-/

namespace A327306.P8814914437975060064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204263 (A226490 n + A081850 (n + 2)).toNat

end

end A327306.P8814914437975060064

/-! ## A327306.P3919900962971840566

`A204263(A002378(3*n+2)+A000124(n+3))`
-/

namespace A327306.P3919900962971840566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204263 (A002378 (3 * n + 2) + A000124 (n + 3)).toNat

end

end A327306.P3919900962971840566

/-! ## A327306.P6661626631216661619

`gcd(A159955(n), A185284(A330104(n+1)))`
-/

namespace A327306.P6661626631216661619
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A159955 n) (A185284 (A330104 (n + 1)).toNat)

end

end A327306.P6661626631216661619

/-! ## A327306.P10705380586709465768

`A159955(lt[A247309(n), A070850(2*n+1)])`
-/

namespace A327306.P10705380586709465768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247309 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070850 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159955 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A327306.P10705380586709465768

/-!
# A327307: Positions of 0's in {A327306(n) : n > 0}.

The programs for A327307, there is no canonical definition to state claims against.
-/

/-! ## A327307.P17267009860995210118

`eq[C(2, n), A327306(n)]`
-/

namespace A327307.P17267009860995210118
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327306 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A327307.P17267009860995210118

/-! ## A327307.P13878701031285272850

`eq[0, A327306(n+1)]+1`
-/

namespace A327307.P13878701031285272850
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327306 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A327307.P13878701031285272850

/-! ## A327307.P12515456398644147657

`eq[A000007(n), A327306(n)]`
-/

namespace A327307.P12515456398644147657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327306 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A327307.P12515456398644147657

/-! ## A327307.P17325031218741462682

`eq[A000038(n), A327306(n)]`
-/

namespace A327307.P17325031218741462682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327306 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A327307.P17325031218741462682

/-! ## A327307.P13493686049493114873

`eq[A130706(n), A327306(n)]`
-/

namespace A327307.P13493686049493114873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130706 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327306 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A327307.P13493686049493114873

/-! ## A327307.P1652860808298464902

`eq[A130713(n), A327306(n)]`
-/

namespace A327307.P1652860808298464902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130713 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327306 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A327307.P1652860808298464902

/-! ## A327307.P12641781633777574311

`eq[A143645(n), A327306(n)]`
-/

namespace A327307.P12641781633777574311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143645 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327306 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A327307.P12641781633777574311

/-! ## A327307.P4131596433913631501

`eq[A143737(n), A327306(n)]`
-/

namespace A327307.P4131596433913631501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143737 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327306 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A327307.P4131596433913631501

/-! ## A327307.P8990964783802841911

`eq[A143754(n), A327306(n)]`
-/

namespace A327307.P8990964783802841911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143754 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327306 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A327307.P8990964783802841911

/-! ## A327307.P10467791043643611818

`eq[A143756(n), A327306(n)]`
-/

namespace A327307.P10467791043643611818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143756 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327306 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A327307.P10467791043643611818

/-! ## A327307.P3886558489858948626

`eq[A143919(n), A327306(n)]`
-/

namespace A327307.P3886558489858948626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143919 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327306 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A327307.P3886558489858948626

/-! ## A327307.P9371517488890523295

`eq[A166926(n), A327306(n)]`
-/

namespace A327307.P9371517488890523295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166926 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327306 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A327307.P9371517488890523295

/-! ## A327307.P7774169878551975039

`eq[A167858(n), A327306(n)]`
-/

namespace A327307.P7774169878551975039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167858 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327306 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A327307.P7774169878551975039

/-! ## A327307.P8331017834132149522

`eq[A167876(n), A327306(n)]`
-/

namespace A327307.P8331017834132149522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167876 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327306 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A327307.P8331017834132149522

/-! ## A327307.P18421915561028678966

`eq[A169585(n), A327306(n)]`
-/

namespace A327307.P18421915561028678966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169585 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327306 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A327307.P18421915561028678966

/-! ## A327307.P11547713990670276059

`eq[A175564(n), A327306(n)]`
-/

namespace A327307.P11547713990670276059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175564 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327306 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A327307.P11547713990670276059

/-! ## A327307.P16619671513737802499

`eq[A263013(n), A327306(n)]`
-/

namespace A327307.P16619671513737802499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263013 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327306 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A327307.P16619671513737802499

/-! ## A327307.P1511401079729380

`eq[A154272(n+1), A327306(n)]`
-/

namespace A327307.P1511401079729380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154272 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327306 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A327307.P1511401079729380

/-! ## A327307.P4398310417385823699

`eq[A154955(n+1), A327306(n)]`
-/

namespace A327307.P4398310417385823699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154955 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327306 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A327307.P4398310417385823699

/-! ## A327307.P17313331837469904251

`eq[A173012(n+1), A327306(n)]`
-/

namespace A327307.P17313331837469904251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173012 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327306 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A327307.P17313331837469904251

/-!
# A327308: Positions of 1's in {A327306(n) : n > 0}.

The programs for A327308, there is no canonical definition to state claims against.
-/

/-! ## A327308.P20081063613939746

`eq[1, A327306(n)]`
-/

namespace A327308.P20081063613939746
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327306 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A327308.P20081063613939746

/-! ## A327308.P10561223761638868324

`record[(n+1)*and(1, A327306(n+1))]`
-/

namespace A327308.P10561223761638868324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * Int.land 1 (A327306 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A327308.P10561223761638868324

/-! ## A327308.P9777640519953234186

`lt[A000007(n), A327306(n)%2]`
-/

namespace A327308.P9777640519953234186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A327306 n) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A327308.P9777640519953234186

/-! ## A327308.P3756917889265921999

`lt[A000038(n), and(1, A327306(n))]`
-/

namespace A327308.P3756917889265921999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A327306 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A327308.P3756917889265921999

/-! ## A327308.P1852162077511677720

`record[A057979(A327306(n)+2*n)]`
-/

namespace A327308.P1852162077511677720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (A327306 n + (2 * n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A327308.P1852162077511677720

/-!
# A327309: Positions of 2's in {A327306(n) : n > 0}.

The programs for A327309, there is no canonical definition to state claims against.
-/

/-! ## A327309.P10294491024688335818

`lt[1, A327306(n)]`
-/

namespace A327309.P10294491024688335818
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327306 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A327309.P10294491024688335818

/-! ## A327309.P1456040042967884309

`eq[2, A327306(n+1)]+1`
-/

namespace A327309.P1456040042967884309
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327306 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A327309.P1456040042967884309

/-! ## A327309.P12430661353161779829

`eq[2, A327306(2*n-n)]`
-/

namespace A327309.P12430661353161779829
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327306 (2 * n - n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A327309.P12430661353161779829

/-! ## A327309.P6485452383700161679

`record[(n+1)*A327306(n+2)-n]`
-/

namespace A327309.P6485452383700161679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A327306 (n + 2) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A327309.P6485452383700161679

/-! ## A327309.P9369045960096720488

`eq[1, A327306(n)-A102423(A102423(n))]`
-/

namespace A327309.P9369045960096720488
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327306 n - A102423 (A102423 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A327309.P9369045960096720488

/-!
# A327310: a(n) = floor(3*n*r) - 3*floor(n*r), where r = sqrt(8).

The programs for A327310, the canonical program `A327310.P15827558595107071413` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A327310 has offset 0).

The definition of A327310 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A327310.P15827558595107071413

`floor(n*sqrt(72))%3`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A327310

/-- `floor(n*sqrt(72))%3` -/
def P15827558595107071413.Spec : Prop :=
  ∀ n, P15827558595107071413.a n = A327310 n

theorem P15827558595107071413.correct : P15827558595107071413.Spec := by
  intro n
  simp only [A327310]

end A327310

/-! ## A327310.P10074383997157236336

`3*A195178(n)-A195178(3*n)`
-/

namespace A327310.P10074383997157236336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A195178 n - A195178 (3 * n)

end

end A327310.P10074383997157236336

namespace A327310

/-- `3*A195178(n)-A195178(3*n)` -/
def P10074383997157236336.Spec : Prop :=
  ∀ n, P10074383997157236336.a n = A327310 n

end A327310

/-! ## A327310.P15607702243620563467

`A008585(A195178(n))-A195178(A008585(n))`
-/

namespace A327310.P15607702243620563467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 (A195178 n).toNat - A195178 (A008585 n).toNat

end

end A327310.P15607702243620563467

namespace A327310

/-- `A008585(A195178(n))-A195178(A008585(n))` -/
def P15607702243620563467.Spec : Prop :=
  ∀ n, P15607702243620563467.a n = A327310 n

end A327310

/-! ## A327310.P10425122177674227266

`A001951(6*n)-A008585(A001951(2*n))`
-/

namespace A327310.P10425122177674227266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001951 (6 * n) - A008585 (A001951 (2 * n)).toNat

end

end A327310.P10425122177674227266

namespace A327310

/-- `A001951(6*n)-A008585(A001951(2*n))` -/
def P10425122177674227266.Spec : Prop :=
  ∀ n, P10425122177674227266.a n = A327310 n

end A327310

/-! ## A327310.P1535599022562391328

`A097508(6*n)-A008585(A097508(2*n))`
-/

namespace A327310.P1535599022562391328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097508 (6 * n) - A008585 (A097508 (2 * n)).toNat

end

end A327310.P1535599022562391328

namespace A327310

/-- `A097508(6*n)-A008585(A097508(2*n))` -/
def P1535599022562391328.Spec : Prop :=
  ∀ n, P1535599022562391328.a n = A327310 n

end A327310

/-! ## A327310.P15567959811505889198

`A008585(A195176(2*n))-A195176(6*n)`
-/

namespace A327310.P15567959811505889198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 (A195176 (2 * n)).toNat - A195176 (6 * n)

end

end A327310.P15567959811505889198

namespace A327310

/-- `A008585(A195176(2*n))-A195176(6*n)` -/
def P15567959811505889198.Spec : Prop :=
  ∀ n, P15567959811505889198.a n = A327310 n

end A327310

/-!
# A327311: Positions of 0's in {A327310(n) : n > 0}.

The programs for A327311, the canonical program `A327311.P9940641066706563511` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A327311 has offset 1).

The definition of A327311 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3332 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A327311.P9940641066706563511

`lt[n*A327310(n), n]`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A327311

/-- `lt[n*A327310(n), n]` -/
def P9940641066706563511.Spec : Prop :=
  ∀ n, (P9940641066706563511.a n : ℤ) = A327311 (n + 1)

theorem P9940641066706563511.correct : P9940641066706563511.Spec := by
  intro n
  simp only [A327311, Nat.add_sub_cancel]

end A327311

/-! ## A327311.P9261058687387984175

`eq[0, A327310(n+2)]+2`
-/

namespace A327311.P9261058687387984175
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327310 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A327311.P9261058687387984175

namespace A327311

/-- `eq[0, A327310(n+2)]+2` -/
def P9261058687387984175.Spec : Prop :=
  ∀ n, (P9261058687387984175.a n : ℤ) = A327311 (n + 1)

end A327311

/-! ## A327311.P11335352005610114862

`lt[A327310(n+1), 1]+1`
-/

namespace A327311.P11335352005610114862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327310 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A327311.P11335352005610114862

namespace A327311

/-- `lt[A327310(n+1), 1]+1` -/
def P11335352005610114862.Spec : Prop :=
  ∀ n, (P11335352005610114862.a n : ℤ) = A327311 (n + 1)

end A327311

/-! ## A327311.P3815839831803500329

`eq[A000038(n), A327310(n)]`
-/

namespace A327311.P3815839831803500329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327310 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A327311.P3815839831803500329

namespace A327311

/-- `eq[A000038(n), A327310(n)]` -/
def P3815839831803500329.Spec : Prop :=
  ∀ n, (P3815839831803500329.a n : ℤ) = A327311 (n + 1)

end A327311

/-! ## A327311.P2013912454178225334

`eq[A135416(n+1), A327310(n)]`
-/

namespace A327311.P2013912454178225334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135416 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327310 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A327311.P2013912454178225334

namespace A327311

/-- `eq[A135416(n+1), A327310(n)]` -/
def P2013912454178225334.Spec : Prop :=
  ∀ n, (P2013912454178225334.a n : ℤ) = A327311 (n + 1)

end A327311

/-! ## A327311.P9486801774227653236

`eq[1, A000041(a(A327310(n)))]` with `a(0)=0, a(1)=2`
-/

namespace A327311.P9486801774227653236
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n f2 =>
  A000041 (f2 (A327310 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A327311.P9486801774227653236

namespace A327311

/-- `eq[1, A000041(a(A327310(n)))]` -/
def P9486801774227653236.Spec : Prop :=
  ∀ n, (P9486801774227653236.a n : ℤ) = A327311 (n + 1)

end A327311

/-! ## A327311.P16226748618988545239

`eq[3, A007318(a(A327310(n)))]` with `a(0)=7, a(1)=2`
-/

namespace A327311.P16226748618988545239
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.rec [7, 2] fun n f2 =>
  A007318 (f2 (A327310 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A327311.P16226748618988545239

namespace A327311

/-- `eq[3, A007318(a(A327310(n)))]` -/
def P16226748618988545239.Spec : Prop :=
  ∀ n, (P16226748618988545239.a n : ℤ) = A327311 (n + 1)

end A327311

/-! ## A327311.P16906525040578201027

`eq[A000007(n), A327310(n)]`
-/

namespace A327311.P16906525040578201027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327310 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A327311.P16906525040578201027

namespace A327311

/-- `eq[A000007(n), A327310(n)]` -/
def P16906525040578201027.Spec : Prop :=
  ∀ n, (P16906525040578201027.a n : ℤ) = A327311 (n + 1)

end A327311

/-! ## A327311.P5287380963436557873

`eq[A130779(n), A327310(n)]`
-/

namespace A327311.P5287380963436557873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130779 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327310 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A327311.P5287380963436557873

namespace A327311

/-- `eq[A130779(n), A327310(n)]` -/
def P5287380963436557873.Spec : Prop :=
  ∀ n, (P5287380963436557873.a n : ℤ) = A327311 (n + 1)

end A327311

/-! ## A327311.P6243267576782055483

`eq[A167876(n), A327310(n)]`
-/

namespace A327311.P6243267576782055483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167876 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327310 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A327311.P6243267576782055483

namespace A327311

/-- `eq[A167876(n), A327310(n)]` -/
def P6243267576782055483.Spec : Prop :=
  ∀ n, (P6243267576782055483.a n : ℤ) = A327311 (n + 1)

end A327311

/-! ## A327311.P8735621056496012098

`eq[A167891(n), A327310(n)]`
-/

namespace A327311.P8735621056496012098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167891 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327310 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A327311.P8735621056496012098

namespace A327311

/-- `eq[A167891(n), A327310(n)]` -/
def P8735621056496012098.Spec : Prop :=
  ∀ n, (P8735621056496012098.a n : ℤ) = A327311 (n + 1)

end A327311

/-! ## A327311.P5800775096552096224

`eq[A169585(n), A327310(n)]`
-/

namespace A327311.P5800775096552096224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169585 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327310 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A327311.P5800775096552096224

namespace A327311

/-- `eq[A169585(n), A327310(n)]` -/
def P5800775096552096224.Spec : Prop :=
  ∀ n, (P5800775096552096224.a n : ℤ) = A327311 (n + 1)

end A327311

/-! ## A327311.P9007175036423921492

`eq[A019590(n+1), A327310(n)]`
-/

namespace A327311.P9007175036423921492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019590 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327310 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A327311.P9007175036423921492

namespace A327311

/-- `eq[A019590(n+1), A327310(n)]` -/
def P9007175036423921492.Spec : Prop :=
  ∀ n, (P9007175036423921492.a n : ℤ) = A327311 (n + 1)

end A327311

/-! ## A327311.P2370617777158896600

`eq[A033322(n+1), A327310(n)]`
-/

namespace A327311.P2370617777158896600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033322 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327310 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A327311.P2370617777158896600

namespace A327311

/-- `eq[A033322(n+1), A327310(n)]` -/
def P2370617777158896600.Spec : Prop :=
  ∀ n, (P2370617777158896600.a n : ℤ) = A327311 (n + 1)

end A327311

/-! ## A327311.P9007708823042321145

`eq[A154955(n+1), A327310(n)]`
-/

namespace A327311.P9007708823042321145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154955 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327310 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A327311.P9007708823042321145

namespace A327311

/-- `eq[A154955(n+1), A327310(n)]` -/
def P9007708823042321145.Spec : Prop :=
  ∀ n, (P9007708823042321145.a n : ℤ) = A327311 (n + 1)

end A327311

/-! ## A327311.P1518483638674974440

`eq[A181403(n+1), A327310(n)]`
-/

namespace A327311.P1518483638674974440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181403 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327310 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A327311.P1518483638674974440

namespace A327311

/-- `eq[A181403(n+1), A327310(n)]` -/
def P1518483638674974440.Spec : Prop :=
  ∀ n, (P1518483638674974440.a n : ℤ) = A327311 (n + 1)

end A327311

/-! ## A327311.P6352780382338176224

`eq[A182688(n+1), A327310(n)]`
-/

namespace A327311.P6352780382338176224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182688 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327310 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A327311.P6352780382338176224

namespace A327311

/-- `eq[A182688(n+1), A327310(n)]` -/
def P6352780382338176224.Spec : Prop :=
  ∀ n, (P6352780382338176224.a n : ℤ) = A327311 (n + 1)

end A327311

/-! ## A327311.P17241574651836700422

`eq[A299529(n+1), A327310(n)]`
-/

namespace A327311.P17241574651836700422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299529 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327310 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A327311.P17241574651836700422

namespace A327311

/-- `eq[A299529(n+1), A327310(n)]` -/
def P17241574651836700422.Spec : Prop :=
  ∀ n, (P17241574651836700422.a n : ℤ) = A327311 (n + 1)

end A327311

/-! ## A327311.P10406407646003450345

`eq[A299530(n+1), A327310(n)]`
-/

namespace A327311.P10406407646003450345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299530 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327310 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A327311.P10406407646003450345

namespace A327311

/-- `eq[A299530(n+1), A327310(n)]` -/
def P10406407646003450345.Spec : Prop :=
  ∀ n, (P10406407646003450345.a n : ℤ) = A327311 (n + 1)

end A327311

/-!
# A327312: Positions of 1's in {A327310(n) : n > 0}.

The programs for A327312, the canonical program `A327312.P17579278810863265581` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A327312 has offset 1).

The definition of A327312 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A327312.P17579278810863265581

`eq[1, floor(n*sqrt(72))%3]`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A327312

/-- `eq[1, floor(n*sqrt(72))%3]` -/
def P17579278810863265581.Spec : Prop :=
  ∀ n, (P17579278810863265581.a n : ℤ) = A327312 (n + 1)

theorem P17579278810863265581.correct : P17579278810863265581.Spec := by
  intro n
  simp only [A327312, Nat.add_sub_cancel]

end A327312

/-! ## A327312.P9835635555890767771

`eq[1, A327310(n)]`
-/

namespace A327312.P9835635555890767771
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327310 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A327312.P9835635555890767771

namespace A327312

/-- `eq[1, A327310(n)]` -/
def P9835635555890767771.Spec : Prop :=
  ∀ n, (P9835635555890767771.a n : ℤ) = A327312 (n + 1)

theorem P9835635555890767771.correct : P9835635555890767771.Spec := by
  intro n
  simp only [A327312, Nat.add_sub_cancel, A327312.P9835635555890767771.f1, A327312.P9835635555890767771.f2, A327312.P9835635555890767771.a, A327312.P17579278810863265581.f1, A327312.P17579278810863265581.f2, A327312.P17579278810863265581.a, A327310, A327310.P15827558595107071413.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A327312

/-! ## A327312.P10984150000514947023

`eq[1, A190487(2*(n+1))]+1`
-/

namespace A327312.P10984150000514947023
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190487 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A327312.P10984150000514947023

namespace A327312

/-- `eq[1, A190487(2*(n+1))]+1` -/
def P10984150000514947023.Spec : Prop :=
  ∀ n, (P10984150000514947023.a n : ℤ) = A327312 (n + 1)

end A327312

/-! ## A327312.P4614540160835669721

`A000463(eq[A190487(n+1), A266724(n)])`
-/

namespace A327312.P4614540160835669721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190487 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266724 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A327312.P4614540160835669721

namespace A327312

/-- `A000463(eq[A190487(n+1), A266724(n)])` -/
def P4614540160835669721.Spec : Prop :=
  ∀ n, P4614540160835669721.a n = A327312 (n + 1)

end A327312

/-! ## A327312.P10400216307244231584

`eq[A008611(A195177(3*n)), A195177(n)]`
-/

namespace A327312.P10400216307244231584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (A195177 (3 * n)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195177 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A327312.P10400216307244231584

namespace A327312

/-- `eq[A008611(A195177(3*n)), A195177(n)]` -/
def P10400216307244231584.Spec : Prop :=
  ∀ n, (P10400216307244231584.a n : ℤ) = A327312 (n + 1)

end A327312

/-! ## A327312.P13748162416938462881

`eq[A195177(3*n)%3, A020639(A008458(n))]`
-/

namespace A327312.P13748162416938462881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A195177 (3 * n)) 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A008458 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A327312.P13748162416938462881

namespace A327312

/-- `eq[A195177(3*n)%3, A020639(A008458(n))]` -/
def P13748162416938462881.Spec : Prop :=
  ∀ n, (P13748162416938462881.a n : ℤ) = A327312 (n + 1)

end A327312

/-! ## A327312.P10844151112679045689

`eq[0, A128214(A195179(3*n))]`
-/

namespace A327312.P10844151112679045689
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128214 (A195179 (3 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A327312.P10844151112679045689

namespace A327312

/-- `eq[0, A128214(A195179(3*n))]` -/
def P10844151112679045689.Spec : Prop :=
  ∀ n, (P10844151112679045689.a n : ℤ) = A327312 (n + 1)

end A327312

/-! ## A327312.P1124625094606395954

`A055396(p?[A073846(A190489(n+1))])`
-/

namespace A327312.P1124625094606395954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073846 (A190489 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A327312.P1124625094606395954

namespace A327312

/-- `A055396(p?[A073846(A190489(n+1))])` -/
def P1124625094606395954.Spec : Prop :=
  ∀ n, P1124625094606395954.a n = A327312 (n + 1)

end A327312

/-! ## A327312.P13949435288334082498

`A055396(p?[A073846(n+1)*A190487(n+1)])`
-/

namespace A327312.P13949435288334082498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073846 (n + 1) * A190487 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A327312.P13949435288334082498

namespace A327312

/-- `A055396(p?[A073846(n+1)*A190487(n+1)])` -/
def P13949435288334082498.Spec : Prop :=
  ∀ n, P13949435288334082498.a n = A327312 (n + 1)

end A327312

/-!
# A327313: Positions of 2's in {A327310(n) : n > 0}.

The programs for A327313, the canonical program `A327313.P12810552597908694718` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A327313 has offset 1).

The definition of A327313 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A327313.P12810552597908694718

`lt[1, floor(n*sqrt(72))%3]`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A327313

/-- `lt[1, floor(n*sqrt(72))%3]` -/
def P12810552597908694718.Spec : Prop :=
  ∀ n, (P12810552597908694718.a n : ℤ) = A327313 (n + 1)

theorem P12810552597908694718.correct : P12810552597908694718.Spec := by
  intro n
  simp only [A327313, Nat.add_sub_cancel]

end A327313

/-! ## A327313.P5275964627049324232

`lt[1, A327310(n)]`
-/

namespace A327313.P5275964627049324232
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327310 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A327313.P5275964627049324232

namespace A327313

/-- `lt[1, A327310(n)]` -/
def P5275964627049324232.Spec : Prop :=
  ∀ n, (P5275964627049324232.a n : ℤ) = A327313 (n + 1)

theorem P5275964627049324232.correct : P5275964627049324232.Spec := by
  intro n
  simp only [A327313, Nat.add_sub_cancel, A327313.P5275964627049324232.f1, A327313.P5275964627049324232.f2, A327313.P5275964627049324232.a, A327313.P12810552597908694718.f1, A327313.P12810552597908694718.f2, A327313.P12810552597908694718.a, A327310, A327310.P15827558595107071413.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A327313

/-! ## A327313.P16910211253342550008

`eq[2, A327310(n+1)]+1`
-/

namespace A327313.P16910211253342550008
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327310 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A327313.P16910211253342550008

namespace A327313

/-- `eq[2, A327310(n+1)]+1` -/
def P16910211253342550008.Spec : Prop :=
  ∀ n, (P16910211253342550008.a n : ℤ) = A327313 (n + 1)

end A327313

/-! ## A327313.P4960092108973714125

`A000027(eq[2, A327310(n)])`
-/

namespace A327313.P4960092108973714125
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A327313.P4960092108973714125

namespace A327313

/-- `A000027(eq[2, A327310(n)])` -/
def P4960092108973714125.Spec : Prop :=
  ∀ n, P4960092108973714125.a n = A327313 (n + 1)

end A327313

/-! ## A327313.P8171937659111136467

`eq[A165063(n+1), A327310(n)]`
-/

namespace A327313.P8171937659111136467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165063 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327310 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A327313.P8171937659111136467

namespace A327313

/-- `eq[A165063(n+1), A327310(n)]` -/
def P8171937659111136467.Spec : Prop :=
  ∀ n, (P8171937659111136467.a n : ℤ) = A327313 (n + 1)

end A327313

/-! ## A327313.P6512702639412711285

`eq[A185437(n+1), A327310(n)]`
-/

namespace A327313.P6512702639412711285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185437 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327310 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A327313.P6512702639412711285

namespace A327313

/-- `eq[A185437(n+1), A327310(n)]` -/
def P6512702639412711285.Spec : Prop :=
  ∀ n, (P6512702639412711285.a n : ℤ) = A327313 (n + 1)

end A327313

/-! ## A327313.P89593622038334921

`eq[A236213(n+1), A327310(n)]`
-/

namespace A327313.P89593622038334921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236213 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327310 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A327313.P89593622038334921

namespace A327313

/-- `eq[A236213(n+1), A327310(n)]` -/
def P89593622038334921.Spec : Prop :=
  ∀ n, (P89593622038334921.a n : ℤ) = A327313 (n + 1)

end A327313

/-! ## A327313.P403255106792462910

`eq[A000007(n)+2, A327310(n)]`
-/

namespace A327313.P403255106792462910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327310 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A327313.P403255106792462910

namespace A327313

/-- `eq[A000007(n)+2, A327310(n)]` -/
def P403255106792462910.Spec : Prop :=
  ∀ n, (P403255106792462910.a n : ℤ) = A327313 (n + 1)

end A327313

/-! ## A327313.P13879825248241216991

`eq[2, A327310(A000038(n)+n)]`
-/

namespace A327313.P13879825248241216991
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327310 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A327313.P13879825248241216991

namespace A327313

/-- `eq[2, A327310(A000038(n)+n)]` -/
def P13879825248241216991.Spec : Prop :=
  ∀ n, (P13879825248241216991.a n : ℤ) = A327313 (n + 1)

end A327313

/-! ## A327313.P13569835389313734972

`eq[A000038(n*A000038(n)), A327310(n)]`
-/

namespace A327313.P13569835389313734972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 ((n : ℤ) * A000038 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327310 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A327313.P13569835389313734972

namespace A327313

/-- `eq[A000038(n*A000038(n)), A327310(n)]` -/
def P13569835389313734972.Spec : Prop :=
  ∀ n, (P13569835389313734972.a n : ℤ) = A327313 (n + 1)

end A327313

/-! ## A327313.P1562891781330099990

`record[A278529(A190490(n+1))]`
-/

namespace A327313.P1562891781330099990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278529 (A190490 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A327313.P1562891781330099990

namespace A327313

/-- `record[A278529(A190490(n+1))]` -/
def P1562891781330099990.Spec : Prop :=
  ∀ n, P1562891781330099990.a n = A327313 (n + 1)

end A327313

/-! ## A327313.P6307453995029770390

`eq[2, A190487(2*(n+1))]+1`
-/

namespace A327313.P6307453995029770390
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190487 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A327313.P6307453995029770390

namespace A327313

/-- `eq[2, A190487(2*(n+1))]+1` -/
def P6307453995029770390.Spec : Prop :=
  ∀ n, (P6307453995029770390.a n : ℤ) = A327313 (n + 1)

end A327313

/-! ## A327313.P1026628980077245065

`eq[A024539(2*(n+1)), A190245(2*(n+1))]+1`
-/

namespace A327313.P1026628980077245065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024539 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190245 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A327313.P1026628980077245065

namespace A327313

/-- `eq[A024539(2*(n+1)), A190245(2*(n+1))]+1` -/
def P1026628980077245065.Spec : Prop :=
  ∀ n, (P1026628980077245065.a n : ℤ) = A327313 (n + 1)

end A327313

/-! ## A327313.P1158806923144390109

`A000463(eq[A190487(n+1)/2, A266724(n)])`
-/

namespace A327313.P1158806923144390109
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A190487 (n + 1) : ℚ) / 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266724 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℚ)) n)

end

end A327313.P1158806923144390109

namespace A327313

/-- `A000463(eq[A190487(n+1)/2, A266724(n)])` -/
def P1158806923144390109.Spec : Prop :=
  ∀ n, P1158806923144390109.a n = A327313 (n + 1)

end A327313

/-!
# A327316: Triangular array read by rows: row n shows the coefficients of this polynomial of degree n: p(x,n) = ((x+r)^n - (x+s)^n)/(r - s), where r = 3 and s = 2.

The programs for A327316, the canonical program `A327316.P2975238328497280231` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A327316 has offset 1).

The definition of A327316 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A327316.P2975238328497280231

`A001047(A004736(n+1))*A074909(n)`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A327316

/-- `A001047(A004736(n+1))*A074909(n)` -/
def P2975238328497280231.Spec : Prop :=
  ∀ n, P2975238328497280231.a n = A327316 (n + 1)

theorem P2975238328497280231.correct : P2975238328497280231.Spec := by
  intro n
  simp only [A327316, Nat.add_sub_cancel]

end A327316

/-! ## A327316.P1257388846588604208

`A001047(A004736(n+1))*A007318(A007401(n+1))`
-/

namespace A327316.P1257388846588604208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001047 (A004736 (n + 1)).toNat * A007318 (A007401 (n + 1)).toNat

end

end A327316.P1257388846588604208

namespace A327316

/-- `A001047(A004736(n+1))*A007318(A007401(n+1))` -/
def P1257388846588604208.Spec : Prop :=
  ∀ n, P1257388846588604208.a n = A327316 (n + 1)

end A327316

/-! ## A327316.P14839184951066427464

`A027465(A007401(n+1))-2*A115068(n+1)`
-/

namespace A327316.P14839184951066427464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027465 (A007401 (n + 1)).toNat - 2 * A115068 (n + 1)

end

end A327316.P14839184951066427464

namespace A327316

/-- `A027465(A007401(n+1))-2*A115068(n+1)` -/
def P14839184951066427464.Spec : Prop :=
  ∀ n, P14839184951066427464.a n = A327316 (n + 1)

end A327316

/-! ## A327316.P12095315083038039134

`A006046(A130330(n))*A074909(n)`
-/

namespace A327316.P12095315083038039134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006046 (A130330 n).toNat * A074909 n

end

end A327316.P12095315083038039134

namespace A327316

/-- `A006046(A130330(n))*A074909(n)` -/
def P12095315083038039134.Spec : Prop :=
  ∀ n, P12095315083038039134.a n = A327316 (n + 1)

end A327316

/-! ## A327316.P17643950432423992659

`A027465(A007401(n+1))-A005843(A115068(n+1))`
-/

namespace A327316.P17643950432423992659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027465 (A007401 (n + 1)).toNat - A005843 (A115068 (n + 1)).toNat

end

end A327316.P17643950432423992659

namespace A327316

/-- `A027465(A007401(n+1))-A005843(A115068(n+1))` -/
def P17643950432423992659.Spec : Prop :=
  ∀ n, P17643950432423992659.a n = A327316 (n + 1)

end A327316

/-!
# A327317: Triangular array read by rows: row n shows the coefficients of this polynomial of degree n: p(x,n) = 2^(n-1) ((x+r)^n - (x+s)^n)/(r - s), where r = 2 and s = 1/2.

The programs for A327317, the canonical program `A327317.P17591906357367732011` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A327317 has offset 1).

The definition of A327317 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8552 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A327317.P15568454269144698322

`A074909(n)*A130329(n)`
-/

namespace A327317.P15568454269144698322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 n * A130329 n

end

end A327317.P15568454269144698322

namespace A327317

/-- `A074909(n)*A130329(n)` -/
def P15568454269144698322.Spec : Prop :=
  ∀ n, P15568454269144698322.a n = A327317 (n + 1)

end A327317

/-! ## A327317.P17591906357367732011

`A059268(n)*A096035(n+1)`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A327317

/-- `A059268(n)*A096035(n+1)` -/
def P17591906357367732011.Spec : Prop :=
  ∀ n, P17591906357367732011.a n = A327317 (n + 1)

theorem P17591906357367732011.correct : P17591906357367732011.Spec := by
  intro n
  simp only [A327317, Nat.add_sub_cancel]

end A327317

/-! ## A327317.P15631590838298025944

`2^A002262(n)*A096035(n+1)`
-/

namespace A327317.P15631590838298025944
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A002262 n : ℤ) * (A096035 (n + 1) : ℚ)

end

end A327317.P15631590838298025944

namespace A327317

/-- `2^A002262(n)*A096035(n+1)` -/
def P15631590838298025944.Spec : Prop :=
  ∀ n, P15631590838298025944.a n = (A327317 (n + 1) : ℚ)

end A327317

/-! ## A327317.P15714068149221920708

`A007318(comp[∑[n+1]])*A130329(n)`
-/

namespace A327317.P15714068149221920708
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) * A130329 n

end

end A327317.P15714068149221920708

namespace A327317

/-- `A007318(comp[∑[n+1]])*A130329(n)` -/
def P15714068149221920708.Spec : Prop :=
  ∀ n, P15714068149221920708.a n = A327317 (n + 1)

end A327317

/-! ## A327317.P430862080751054807

`lcm(A096035(n+1), A327320(n+1))`
-/

namespace A327317.P430862080751054807
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A096035 (n + 1)) (A327320 (n + 1))

end

end A327317.P430862080751054807

namespace A327317

/-- `lcm(A096035(n+1), A327320(n+1))` -/
def P430862080751054807.Spec : Prop :=
  ∀ n, (P430862080751054807.a n : ℤ) = A327317 (n + 1)

end A327317

/-!
# A327318: Triangular array read by rows: row n shows the coefficients of this polynomial of degree n: p(x,n) = 2^(n-1) ((x+r)^n - (x+s)^n)/(r - s), where r = 1 and s = 1/2.

The programs for A327318, the canonical program `A327318.P6576024194411720780` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A327318 has offset 1).

The definition of A327318 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A327318.P6576024194411720780

`A074909(n)*A130328(n)`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A327318

/-- `A074909(n)*A130328(n)` -/
def P6576024194411720780.Spec : Prop :=
  ∀ n, P6576024194411720780.a n = A327318 (n + 1)

theorem P6576024194411720780.correct : P6576024194411720780.Spec := by
  intro n
  simp only [A327318, Nat.add_sub_cancel]

end A327318

/-! ## A327318.P10066007308396525595

`A007318(comp[∑[n+1]])*A130328(n)`
-/

namespace A327318.P10066007308396525595
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) * A130328 n

end

end A327318.P10066007308396525595

namespace A327318

/-- `A007318(comp[∑[n+1]])*A130328(n)` -/
def P10066007308396525595.Spec : Prop :=
  ∀ n, P10066007308396525595.a n = A327318 (n + 1)

end A327318

/-! ## A327318.P11761820186395908210

`A059268(n)*A091913(n+1)`
-/

namespace A327318.P11761820186395908210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n * A091913 (n + 1)

end

end A327318.P11761820186395908210

namespace A327318

/-- `A059268(n)*A091913(n+1)` -/
def P11761820186395908210.Spec : Prop :=
  ∀ n, P11761820186395908210.a n = A327318 (n + 1)

end A327318

/-! ## A327318.P10106332184001598752

`A130328(n)*A135278(A061579(n))`
-/

namespace A327318.P10106332184001598752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130328 n * A135278 (A061579 n).toNat

end

end A327318.P10106332184001598752

namespace A327318

/-- `A130328(n)*A135278(A061579(n))` -/
def P10106332184001598752.Spec : Prop :=
  ∀ n, P10106332184001598752.a n = A327318 (n + 1)

end A327318

/-! ## A327318.P9361229301680634881

`A074909(n)*A173787(comp[∑[n-1]])`
-/

namespace A327318.P9361229301680634881
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 n * A173787 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A327318.P9361229301680634881

namespace A327318

/-- `A074909(n)*A173787(comp[∑[n-1]])` -/
def P9361229301680634881.Spec : Prop :=
  ∀ n, P9361229301680634881.a n = A327318 (n + 1)

end A327318

/-!
# A327319: a(n) = binomial(n, 2) + 6*binomial(n, 4).

The programs for A327319, the canonical program `A327319.P13809795220041064015` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A327319 has offset 0).

The definition of A327319 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(n, 2)+6*C(n, 4)` (program `A327319.P13809795220041064015`, by `A327319.P13809795220041064015.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A327319.P13809795220041064015

`C(n, 2)+6*C(n, 4)`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A327319

/-- `C(n, 2)+6*C(n, 4)` -/
def P13809795220041064015.Spec : Prop :=
  ∀ n, (P13809795220041064015.a n : ℤ) = A327319 n

theorem P13809795220041064015.correct : P13809795220041064015.Spec := by
  intro n
  simp only [A327319]

end A327319

/-! ## A327319.P5988953221394758159

`5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=0, a(1)=0, a(2)=1, a(3)=3, a(4)=12`
-/

namespace A327319.P5988953221394758159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1, 3, 12] fun n a =>
  5 * a (n - 1) - 10 * a (n - 2) + 10 * a (n - 3) - 5 * a (n - 4) + a (n - 5)

end

end A327319.P5988953221394758159

namespace A327319

/-- `5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` -/
def P5988953221394758159.Spec : Prop :=
  ∀ n, P5988953221394758159.a n = A327319 n

end A327319

/-! ## A327319.P6046072451104496437

`C(n, 2)²-6*C(n, 3)`
-/

namespace A327319.P6046072451104496437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose n 2 ^ 2 : ℤ) - (6 * Nat.choose n 3 : ℤ)

end

end A327319.P6046072451104496437

namespace A327319

/-- `C(n, 2)²-6*C(n, 3)` -/
def P6046072451104496437.Spec : Prop :=
  ∀ n, P6046072451104496437.a n = A327319 n

theorem P6046072451104496437.correct : P6046072451104496437.Spec := by
  intro n
  simp only [A327319, Nat.add_sub_cancel, A327319.P6046072451104496437.a, A327319.P13809795220041064015.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A327319

/-! ## A327319.P10181459977257593470

`((n-2)^3+n)*n/4`
-/

namespace A327319.P10181459977257593470
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n : ℤ) - 2) ^ 3 + (n : ℤ) : ℚ) * ((n : ℚ) / 4)

end

end A327319.P10181459977257593470

namespace A327319

/-- `((n-2)^3+n)*n/4` -/
def P10181459977257593470.Spec : Prop :=
  ∀ n, P10181459977257593470.a n = (A327319 n : ℚ)

theorem P10181459977257593470.correct : P10181459977257593470.Spec := by
  intro n
  simp only [A327319, Nat.add_sub_cancel, A327319.P10181459977257593470.a, A327319.P13809795220041064015.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A327319

/-! ## A327319.P13105376455203370145

`(n-1-C(n, 2))²+n-1`
-/

namespace A327319.P13105376455203370145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1 - (Nat.choose n 2 : ℤ)) ^ 2 + ((n : ℤ) - 1)

end

end A327319.P13105376455203370145

namespace A327319

/-- `(n-1-C(n, 2))²+n-1` -/
def P13105376455203370145.Spec : Prop :=
  ∀ n, P13105376455203370145.a n = A327319 n

theorem P13105376455203370145.correct : P13105376455203370145.Spec := by
  intro n
  simp only [A327319, Nat.add_sub_cancel, A327319.P13105376455203370145.a, A327319.P13809795220041064015.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A327319

/-! ## A327319.P3951655753216429844

`∑[∑[∑[a(n-1)+6]]]` with `a(0)=0, a(1)=0, a(2)=1, a(3)=0`
-/

namespace A327319.P3951655753216429844
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 1, 0] fun n f3 =>
  f3 (n - 1) + 6

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A327319.P3951655753216429844

namespace A327319

/-- `∑[∑[∑[a(n-1)+6]]]` -/
def P3951655753216429844.Spec : Prop :=
  ∀ n, (P3951655753216429844.a n : ℤ) = A327319 n

end A327319

/-! ## A327319.P3955316494440908180

`a(n-1)+(n-2)^3+1` with `a(0)=0`
-/

namespace A327319.P3955316494440908180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (((n : ℤ) - 2) ^ 3 + 1)

end

end A327319.P3955316494440908180

namespace A327319

/-- `a(n-1)+(n-2)^3+1` -/
def P3955316494440908180.Spec : Prop :=
  ∀ n, P3955316494440908180.a n = A327319 n

end A327319

/-! ## A327319.P10951215489166762130

`1-((2-n)^3-a(n-1))` with `a(0)=0`
-/

namespace A327319.P10951215489166762130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  1 - ((2 - (n : ℤ)) ^ 3 - a (n - 1))

end

end A327319.P10951215489166762130

namespace A327319

/-- `1-((2-n)^3-a(n-1))` -/
def P10951215489166762130.Spec : Prop :=
  ∀ n, P10951215489166762130.a n = A327319 n

end A327319

/-! ## A327319.P13119124019711843155

`(lcm(n-1, n-2)/2)²+n-1`
-/

namespace A327319.P13119124019711843155
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Int.lcm ((n : ℤ) - 1) ((n : ℤ) - 2) : ℚ) / 2) ^ 2 + ((n : ℤ) - 1 : ℚ)

end

end A327319.P13119124019711843155

namespace A327319

/-- `(lcm(n-1, n-2)/2)²+n-1` -/
def P13119124019711843155.Spec : Prop :=
  ∀ n, P13119124019711843155.a n = (A327319 n : ℚ)

end A327319

/-! ## A327319.P3083162097457957788

`∑[n]²-A212133(n)`
-/

namespace A327319.P3083162097457957788
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) - A212133 n

end

end A327319.P3083162097457957788

namespace A327319

/-- `∑[n]²-A212133(n)` -/
def P3083162097457957788.Spec : Prop :=
  ∀ n, P3083162097457957788.a n = A327319 n

end A327319

/-! ## A327319.P11080705129564601455

`C(n, 2)²-A007531(n)`
-/

namespace A327319.P11080705129564601455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose n 2 ^ 2 : ℤ) - A007531 n

end

end A327319.P11080705129564601455

namespace A327319

/-- `C(n, 2)²-A007531(n)` -/
def P11080705129564601455.Spec : Prop :=
  ∀ n, P11080705129564601455.a n = A327319 n

theorem P11080705129564601455.correct : P11080705129564601455.Spec := by
  intro n
  simp only [A327319, Nat.add_sub_cancel, A327319.P11080705129564601455.a, A327319.P13809795220041064015.a, A007531, A007531.P15538264737483534371.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A327319

/-! ## A327319.P7143000627876842047

`A212135(n)-A188667(n)`
-/

namespace A327319.P7143000627876842047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212135 n - A188667 n

end

end A327319.P7143000627876842047

namespace A327319

/-- `A212135(n)-A188667(n)` -/
def P7143000627876842047.Spec : Prop :=
  ∀ n, P7143000627876842047.a n = A327319 n

end A327319

/-! ## A327319.P16287402550625235476

`A161680(n)²-A007531(n)`
-/

namespace A327319.P16287402550625235476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 n ^ 2 - A007531 n

end

end A327319.P16287402550625235476

namespace A327319

/-- `A161680(n)²-A007531(n)` -/
def P16287402550625235476.Spec : Prop :=
  ∀ n, P16287402550625235476.a n = A327319 n

theorem P16287402550625235476.correct : P16287402550625235476.Spec := by
  intro n
  simp only [A327319, Nat.add_sub_cancel, A327319.P16287402550625235476.a, A327319.P13809795220041064015.a, A007531, A007531.P15538264737483534371.a, A161680, A161680.P17206074215489759881.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A327319

/-! ## A327319.P6999449131266723930

`A341703(n)-A152947(n+1)`
-/

namespace A327319.P6999449131266723930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341703 n - A152947 (n + 1)

end

end A327319.P6999449131266723930

namespace A327319

/-- `A341703(n)-A152947(n+1)` -/
def P6999449131266723930.Spec : Prop :=
  ∀ n, P6999449131266723930.a n = A327319 n

theorem P6999449131266723930.correct : P6999449131266723930.Spec := by
  intro n
  simp only [A327319, Nat.add_sub_cancel, A327319.P6999449131266723930.a, A327319.P13809795220041064015.a, A152947, A152947.P16367813442806996368.a, A341703, A341703.P11625102259490537725.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A327319

/-! ## A327319.P5662840659733127818

`(n-A000217(n))²-A007531(n)`
-/

namespace A327319.P5662840659733127818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - A000217 n) ^ 2 - A007531 n

end

end A327319.P5662840659733127818

namespace A327319

/-- `(n-A000217(n))²-A007531(n)` -/
def P5662840659733127818.Spec : Prop :=
  ∀ n, P5662840659733127818.a n = A327319 n

theorem P5662840659733127818.correct : P5662840659733127818.Spec := by
  intro n
  simp only [A327319, Nat.add_sub_cancel, A327319.P5662840659733127818.a, A327319.P13809795220041064015.a, A000217, A000217.P10269402890581615239.a, A007531, A007531.P15538264737483534371.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A327319

/-! ## A327319.P8310115891429553931

`A023443(n)+(A152947(n+1)-n)²`
-/

namespace A327319.P8310115891429553931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 n + (A152947 (n + 1) - (n : ℤ)) ^ 2

end

end A327319.P8310115891429553931

namespace A327319

/-- `A023443(n)+(A152947(n+1)-n)²` -/
def P8310115891429553931.Spec : Prop :=
  ∀ n, P8310115891429553931.a n = A327319 n

theorem P8310115891429553931.correct : P8310115891429553931.Spec := by
  intro n
  simp only [A327319, Nat.add_sub_cancel, A327319.P8310115891429553931.a, A327319.P13809795220041064015.a, A023443, A023443.P2966051066474347068.a, A152947, A152947.P16367813442806996368.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A327319

/-! ## A327319.P438060102669929346

`(A161680(n)+A024000(n))²-A024000(n)`
-/

namespace A327319.P438060102669929346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A161680 n + A024000 n) ^ 2 - A024000 n

end

end A327319.P438060102669929346

namespace A327319

/-- `(A161680(n)+A024000(n))²-A024000(n)` -/
def P438060102669929346.Spec : Prop :=
  ∀ n, P438060102669929346.a n = A327319 n

theorem P438060102669929346.correct : P438060102669929346.Spec := by
  intro n
  simp only [A327319, Nat.add_sub_cancel, A327319.P438060102669929346.a, A327319.P13809795220041064015.a, A024000, A024000.P8748414335487061084.a, A161680, A161680.P17206074215489759881.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A327319

/-! ## A327319.P16399306930863333541

`A289207(n+1)+A161680(A289207(n+1))²`
-/

namespace A327319.P16399306930863333541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (n + 1) + A161680 (A289207 (n + 1)).toNat ^ 2

end

end A327319.P16399306930863333541

namespace A327319

/-- `A289207(n+1)+A161680(A289207(n+1))²` -/
def P16399306930863333541.Spec : Prop :=
  ∀ n, P16399306930863333541.a n = A327319 n

end A327319

/-!
# A327320: Triangular array read by rows: row n shows the coefficients of the polynomial p(x,n) constructed as in Comments; these polynomials form a strong divisibility sequence.

The programs for A327320, there is no canonical definition to state claims against.
-/

/-! ## A327320.P15245740048378882067

`gcd(A000010(A056236(n)), A328650(n))`
-/

namespace A327320.P15245740048378882067
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000010 (A056236 n).toNat) (A328650 n)

end

end A327320.P15245740048378882067

/-!
# A327323: Triangular array read by rows: row n shows the coefficients of the polynomial p(x,n) constructed as in Comments; these polynomials form a strong divisibility sequence.

The programs for A327323, there is no canonical definition to state claims against.
-/

/-! ## A327323.P17994299502525822616

`A218491(9*A001766(n+1))`
-/

namespace A327323.P17994299502525822616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218491 (9 * A001766 (n + 1)).toNat

end

end A327323.P17994299502525822616

/-! ## A327323.P6895128065770935669

`A003963(A350579(n+1)+1+n)`
-/

namespace A327323.P6895128065770935669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (A350579 (n + 1) + 1 + (n : ℤ)).toNat

end

end A327323.P6895128065770935669

/-!
# A327324: Palindromes whose number and sum of divisors are both also palindromic.

The programs for A327324, there is no canonical definition to state claims against.
-/

/-! ## A327324.P17470313580703355083

`∩[A028980(n+1), A118600(n+1)]`
-/

namespace A327324.P17470313580703355083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028980 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118600 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A327324.P17470313580703355083

/-! ## A327324.P9231141546866371242

`∩[A084831(n+1), A098897(n+1)]`
-/

namespace A327324.P9231141546866371242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084831 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098897 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A327324.P9231141546866371242

/-! ## A327324.P13592811941461843457

`∩[A028980(n+1), A324988(n+1)]`
-/

namespace A327324.P13592811941461843457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028980 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324988 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A327324.P13592811941461843457

/-! ## A327324.P13418025943947372140

`A028986(A097855(n+1)+A043562(n))`
-/

namespace A327324.P13418025943947372140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028986 (A097855 (n + 1) + A043562 n).toNat

end

end A327324.P13418025943947372140

/-! ## A327324.P3912598019997150669

`A028986(A085134(n+1)%A062687(n+2))`
-/

namespace A327324.P3912598019997150669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028986 (Int.tmod (A085134 (n + 1)) (A062687 (n + 2))).toNat

end

end A327324.P3912598019997150669

/-!
# A327325: Integers with palindromic product of divisors.

The programs for A327325, there is no canonical definition to state claims against.
-/

/-! ## A327325.P8613908181117902943

`∪[A002385(n+1), A244411(n+1)]`
-/

namespace A327325.P8613908181117902943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002385 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244411 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A327325.P8613908181117902943

/-! ## A327325.P11935133464772272397

`∪[A244411(n+1), A324989(n+1)]`
-/

namespace A327325.P11935133464772272397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244411 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324989 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A327325.P11935133464772272397

/-! ## A327325.P14269747174768531137

`∪[A069217(n+1), A244411(n+1)]`
-/

namespace A327325.P14269747174768531137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069217 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244411 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A327325.P14269747174768531137

/-! ## A327325.P790456237218655456

`A218469(A000083(n))+n`
-/

namespace A327325.P790456237218655456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218469 (A000083 n).toNat + (n : ℤ)

end

end A327325.P790456237218655456

/-!
# A327326: a(n) = A006218(n) - A005187(n).

The programs for A327326, the canonical program `A327326.P15839165817513930619` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A327326 has offset 0).

The definition of A327326 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A006218(n)-A005187(n)` (program `A327326.P15839165817513930619`, by `A327326.P15839165817513930619.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A327326.P15839165817513930619

`A006218(n)-A005187(n)`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A327326

/-- `A006218(n)-A005187(n)` -/
def P15839165817513930619.Spec : Prop :=
  ∀ n, P15839165817513930619.a n = A327326 n

theorem P15839165817513930619.correct : P15839165817513930619.Spec := by
  intro n
  simp only [A327326]

end A327326

/-! ## A327326.P17733798848354410001

`A326987(n)+a(n-1)` with `a(0)=0`
-/

namespace A327326.P17733798848354410001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A326987 n + a (n - 1)

end

end A327326.P17733798848354410001

namespace A327326

/-- `A326987(n)+a(n-1)` -/
def P17733798848354410001.Spec : Prop :=
  ∀ n, P17733798848354410001.a n = A327326 n

end A327326

/-! ## A327326.P4007071107204227022

`∑[∑{d}[n, A006530(2*#)%2]]`
-/

namespace A327326.P4007071107204227022
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), Int.tmod (A006530 (2 * d)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A327326.P4007071107204227022

namespace A327326

/-- `∑[∑{d}[n, A006530(2*#)%2]]` -/
def P4007071107204227022.Spec : Prop :=
  ∀ n, P4007071107204227022.a n = A327326 n

end A327326

/-! ## A327326.P11403940550229417730

`∑[∑{d}[n, A014963(#)%2]]-n`
-/

namespace A327326.P11403940550229417730
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), Int.tmod (A014963 d) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A327326.P11403940550229417730

namespace A327326

/-- `∑[∑{d}[n, A014963(#)%2]]-n` -/
def P11403940550229417730.Spec : Prop :=
  ∀ n, P11403940550229417730.a n = A327326 n

end A327326

/-! ## A327326.P6925027913361479733

`A054519(n)-A101925(n)`
-/

namespace A327326.P6925027913361479733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054519 n - A101925 n

end

end A327326.P6925027913361479733

namespace A327326

/-- `A054519(n)-A101925(n)` -/
def P6925027913361479733.Spec : Prop :=
  ∀ n, P6925027913361479733.a n = A327326 n

theorem P6925027913361479733.correct : P6925027913361479733.Spec := by
  intro n
  simp only [A327326, Nat.add_sub_cancel, A327326.P6925027913361479733.a, A327326.P15839165817513930619.a, A005187, A005187.P3874015513960485494.a, A006218, A006218.P9218434490128439557.a, A054519, A054519.P3292618312068876157.a, A101925, A101925.P9724492527127448858.a, A000005, A000005.P16091521709108585461.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A327326

/-! ## A327326.P12148337800932830837

`∑[∑{d}[n, A087436(A006530(#))]]`
-/

namespace A327326.P12148337800932830837
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), A087436 (A006530 d).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A327326.P12148337800932830837

namespace A327326

/-- `∑[∑{d}[n, A087436(A006530(#))]]` -/
def P12148337800932830837.Spec : Prop :=
  ∀ n, P12148337800932830837.a n = A327326 n

end A327326

/-! ## A327326.P5024394496196688734

`A006218(n)-(A011371(n)+n)`
-/

namespace A327326.P5024394496196688734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n - (A011371 n + (n : ℤ))

end

end A327326.P5024394496196688734

namespace A327326

/-- `A006218(n)-(A011371(n)+n)` -/
def P5024394496196688734.Spec : Prop :=
  ∀ n, P5024394496196688734.a n = A327326 n

end A327326

/-! ## A327326.P9522825815083500501

`A006218(n)-∑[val(A255177(n), 2)]`
-/

namespace A327326.P9522825815083500501
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A255177 n).toNat 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A327326.P9522825815083500501

namespace A327326

/-- `A006218(n)-∑[val(A255177(n), 2)]` -/
def P9522825815083500501.Spec : Prop :=
  ∀ n, P9522825815083500501.a n = A327326 n

end A327326

/-! ## A327326.P3672224067073505321

`A000120(n)+∑[A032741(n)]-n`
-/

namespace A327326.P3672224067073505321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n + (∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ))

end

end A327326.P3672224067073505321

namespace A327326

/-- `A000120(n)+∑[A032741(n)]-n` -/
def P3672224067073505321.Spec : Prop :=
  ∀ n, P3672224067073505321.a n = A327326 n

end A327326

/-! ## A327326.P12695734060260189328

`∑[A032741(n)]+n-A005187(n)`
-/

namespace A327326.P12695734060260189328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ((n : ℤ) - A005187 n)

end

end A327326.P12695734060260189328

namespace A327326

/-- `∑[A032741(n)]+n-A005187(n)` -/
def P12695734060260189328.Spec : Prop :=
  ∀ n, P12695734060260189328.a n = A327326 n

end A327326

/-! ## A327326.P4469333865036396040

`A006218(n)-(2*n-A000120(n))`
-/

namespace A327326.P4469333865036396040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n - ((2 * n : ℤ) - A000120 n)

end

end A327326.P4469333865036396040

namespace A327326

/-- `A006218(n)-(2*n-A000120(n))` -/
def P4469333865036396040.Spec : Prop :=
  ∀ n, P4469333865036396040.a n = A327326 n

theorem P4469333865036396040.correct : P4469333865036396040.Spec := by
  intro n
  simp only [A327326, Nat.add_sub_cancel, A327326.P4469333865036396040.a, A327326.P15839165817513930619.a, A000120, A000120.P2816527436160941581.a, A005187, A005187.P3874015513960485494.a, A006218, A006218.P9218434490128439557.a, A000005, A000005.P16091521709108585461.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A327326

/-! ## A327326.P7356754599907595024

`∑[A326987(n+1)]-A326987(n+1)`
-/

namespace A327326.P7356754599907595024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326987 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A326987 (n + 1)

end

end A327326.P7356754599907595024

namespace A327326

/-- `∑[A326987(n+1)]-A326987(n+1)` -/
def P7356754599907595024.Spec : Prop :=
  ∀ n, P7356754599907595024.a n = A327326 n

end A327326

/-! ## A327326.P15197863896717606014

`∑[A000005(abs(1-n)+1)]-2-A005187(n)`
-/

namespace A327326.P15197863896717606014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2 - A005187 n

end

end A327326.P15197863896717606014

namespace A327326

/-- `∑[A000005(abs(1-n)+1)]-2-A005187(n)` -/
def P15197863896717606014.Spec : Prop :=
  ∀ n, P15197863896717606014.a n = A327326 n

end A327326

/-! ## A327326.P269423499865632183

`∑[A000005(n+1)]-(A005187(n)+A000005(n+1))`
-/

namespace A327326.P269423499865632183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (A005187 n + A000005 (n + 1))

end

end A327326.P269423499865632183

namespace A327326

/-- `∑[A000005(n+1)]-(A005187(n)+A000005(n+1))` -/
def P269423499865632183.Spec : Prop :=
  ∀ n, P269423499865632183.a n = A327326 n

end A327326

/-! ## A327326.P4255056841774534757

`A006218(n)-∑[A001222(A207790(n+1))]`
-/

namespace A327326.P4255056841774534757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A207790 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A327326.P4255056841774534757

namespace A327326

/-- `A006218(n)-∑[A001222(A207790(n+1))]` -/
def P4255056841774534757.Spec : Prop :=
  ∀ n, P4255056841774534757.a n = A327326 n

end A327326

/-! ## A327326.P15011047890600228496

`∑[∑{d}[n, 2-A014963(2*#)]]`
-/

namespace A327326.P15011047890600228496
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), (2 - A014963 (2 * d))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A327326.P15011047890600228496

namespace A327326

/-- `∑[∑{d}[n, 2-A014963(2*#)]]` -/
def P15011047890600228496.Spec : Prop :=
  ∀ n, P15011047890600228496.a n = A327326 n

end A327326

/-! ## A327326.P7169500413015625251

`A006218(n)-A011371(2*n)`
-/

namespace A327326.P7169500413015625251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n - A011371 (2 * n)

end

end A327326.P7169500413015625251

namespace A327326

/-- `A006218(n)-A011371(2*n)` -/
def P7169500413015625251.Spec : Prop :=
  ∀ n, P7169500413015625251.a n = A327326 n

end A327326

/-! ## A327326.P6614954704243726907

`∑[∑{d}[n, and(1, A014963(4*#))]]`
-/

namespace A327326.P6614954704243726907
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), Int.land 1 (A014963 (4 * d))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A327326.P6614954704243726907

namespace A327326

/-- `∑[∑{d}[n, and(1, A014963(4*#))]]` -/
def P6614954704243726907.Spec : Prop :=
  ∀ n, P6614954704243726907.a n = A327326 n

end A327326

/-! ## A327326.P14052400988777506694

`∑[A032741(n)]-(n-A001222(A005940(n+1)))`
-/

namespace A327326.P14052400988777506694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ((n : ℤ) - A001222 (A005940 (n + 1)).toNat)

end

end A327326.P14052400988777506694

namespace A327326

/-- `∑[A032741(n)]-(n-A001222(A005940(n+1)))` -/
def P14052400988777506694.Spec : Prop :=
  ∀ n, P14052400988777506694.a n = A327326 n

end A327326

/-!
# A327327: Partial sums of the sum of nonpowers of 2 dividing n.

The programs for A327327, the canonical program `A327327.P333352576343243044` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A327327 has offset 1).

The definition of A327327 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A327327.P333352576343243044

`A024916(n+1)-A080277(n+1)`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A327327

/-- `A024916(n+1)-A080277(n+1)` -/
def P333352576343243044.Spec : Prop :=
  ∀ n, P333352576343243044.a n = A327327 (n + 1)

theorem P333352576343243044.correct : P333352576343243044.Spec := by
  intro n
  simp only [A327327, Nat.add_sub_cancel]

end A327327

/-! ## A327327.P13425860699276306632

`∑[∑{d}[n+1, #]-xor(n, n+1)]`
-/

namespace A327327.P13425860699276306632
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f2 n), d : ℕ) : ℤ) - (Nat.xor n (n + 1) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A327327.P13425860699276306632

namespace A327327

/-- `∑[∑{d}[n+1, #]-xor(n, n+1)]` -/
def P13425860699276306632.Spec : Prop :=
  ∀ n, P13425860699276306632.a n = A327327 (n + 1)

end A327327

/-! ## A327327.P327280594735967661

`∑[xor(n, -(n+2))+∑{d}[n+1, #]+1]`
-/

namespace A327327.P327280594735967661
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (-(n + 2 : ℤ)) + ((∑ d ∈ Nat.divisors (f2 n), d + 1 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A327327.P327280594735967661

namespace A327327

/-- `∑[xor(n, -(n+2))+∑{d}[n+1, #]+1]` -/
def P327280594735967661.Spec : Prop :=
  ∀ n, P327280594735967661.a n = A327327 (n + 1)

end A327327

/-! ## A327327.P15371185832106698525

`∑[A326988(n+1)]`
-/

namespace A327327.P15371185832106698525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326988 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A327327.P15371185832106698525

namespace A327327

/-- `∑[A326988(n+1)]` -/
def P15371185832106698525.Spec : Prop :=
  ∀ n, P15371185832106698525.a n = A327327 (n + 1)

end A327327

/-! ## A327327.P4523850712329855413

`∑[∑{d}[n+1, #-A048298(#)]]`
-/

namespace A327327.P4523850712329855413
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), ((d : ℤ) - A048298 d)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A327327.P4523850712329855413

namespace A327327

/-- `∑[∑{d}[n+1, #-A048298(#)]]` -/
def P4523850712329855413.Spec : Prop :=
  ∀ n, P4523850712329855413.a n = A327327 (n + 1)

end A327327

/-! ## A327327.P10234049150685184858

`∑[∑{d}[n+1, #%A002131(#)]]`
-/

namespace A327327.P10234049150685184858
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), Int.tmod (d : ℤ) (A002131 d)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A327327.P10234049150685184858

namespace A327327

/-- `∑[∑{d}[n+1, #%A002131(#)]]` -/
def P10234049150685184858.Spec : Prop :=
  ∀ n, P10234049150685184858.a n = A327327 (n + 1)

end A327327

/-! ## A327327.P13755574981419113676

`∑[A000203(n+1)-xor(n, n+1)]`
-/

namespace A327327.P13755574981419113676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - (Nat.xor n (n + 1) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A327327.P13755574981419113676

namespace A327327

/-- `∑[A000203(n+1)-xor(n, n+1)]` -/
def P13755574981419113676.Spec : Prop :=
  ∀ n, P13755574981419113676.a n = A327327 (n + 1)

end A327327

/-! ## A327327.P11778096857658411059

`∑[A088580(n+1)-xor(n, n+1)-1]`
-/

namespace A327327.P11778096857658411059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088580 (n + 1) - (Nat.xor n (n + 1) : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A327327.P11778096857658411059

namespace A327327

/-- `∑[A088580(n+1)-xor(n, n+1)-1]` -/
def P11778096857658411059.Spec : Prop :=
  ∀ n, P11778096857658411059.a n = A327327 (n + 1)

end A327327

/-! ## A327327.P8429758119092221783

`∑[A000203(n+1)-A038712(n+1)]`
-/

namespace A327327.P8429758119092221783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A038712 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A327327.P8429758119092221783

namespace A327327

/-- `∑[A000203(n+1)-A038712(n+1)]` -/
def P8429758119092221783.Spec : Prop :=
  ∀ n, P8429758119092221783.a n = A327327 (n + 1)

end A327327

/-! ## A327327.P7166323802343974525

`∑[A038712(n+1)*A326990(n+1)]`
-/

namespace A327327.P7166323802343974525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038712 (n + 1) * A326990 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A327327.P7166323802343974525

namespace A327327

/-- `∑[A038712(n+1)*A326990(n+1)]` -/
def P7166323802343974525.Spec : Prop :=
  ∀ n, P7166323802343974525.a n = A327327 (n + 1)

end A327327

/-! ## A327327.P13962292371317790173

`∑[A000203(n+1)-A000203(2^val(n+1, 2))]`
-/

namespace A327327.P13962292371317790173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A000203 (2 ^ SequenceMachineLib.valuation (n + 1) 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A327327.P13962292371317790173

namespace A327327

/-- `∑[A000203(n+1)-A000203(2^val(n+1, 2))]` -/
def P13962292371317790173.Spec : Prop :=
  ∀ n, P13962292371317790173.a n = A327327 (n + 1)

end A327327

/-! ## A327327.P18409505477341034998

`∑[A000203(n+1)-A000203(n+1-and(n, n+1))]`
-/

namespace A327327.P18409505477341034998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A000203 (n + 1 - Nat.land n (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A327327.P18409505477341034998

namespace A327327

/-- `∑[A000203(n+1)-A000203(n+1-and(n, n+1))]` -/
def P18409505477341034998.Spec : Prop :=
  ∀ n, P18409505477341034998.a n = A327327 (n + 1)

end A327327

/-! ## A327327.P5756922241104559516

`∑[A000203(n+1)-A000203(A006519(n+1))]`
-/

namespace A327327.P5756922241104559516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A000203 (A006519 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A327327.P5756922241104559516

namespace A327327

/-- `∑[A000203(n+1)-A000203(A006519(n+1))]` -/
def P5756922241104559516.Spec : Prop :=
  ∀ n, P5756922241104559516.a n = A327327 (n + 1)

end A327327

/-! ## A327327.P17239482332673772055

`∑[A000203(n+1)-A000203(n+1)/A000593(n+1)]`
-/

namespace A327327.P17239482332673772055
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) : ℚ) - (A000203 (n + 1) : ℚ) / (A000593 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A327327.P17239482332673772055

namespace A327327

/-- `∑[A000203(n+1)-A000203(n+1)/A000593(n+1)]` -/
def P17239482332673772055.Spec : Prop :=
  ∀ n, P17239482332673772055.a n = (A327327 (n + 1) : ℚ)

end A327327

/-!
# A327329: Twice the sum of all divisors of all positive integers <= n.

The programs for A327329, the canonical program `A327329.P5185755489289824233` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A327329 has offset 1).

The definition of A327329 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A327329.P5185755489289824233

`2*A024916(n+1)`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A327329

/-- `2*A024916(n+1)` -/
def P5185755489289824233.Spec : Prop :=
  ∀ n, P5185755489289824233.a n = A327329 (n + 1)

theorem P5185755489289824233.correct : P5185755489289824233.Spec := by
  intro n
  simp only [A327329, Nat.add_sub_cancel]

end A327329

/-! ## A327329.P10863149600841849895

`A243980(n+1)/2`
-/

namespace A327329.P10863149600841849895
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A243980 (n + 1) : ℚ) / 2

end

end A327329.P10863149600841849895

namespace A327329

/-- `A243980(n+1)/2` -/
def P10863149600841849895.Spec : Prop :=
  ∀ n, P10863149600841849895.a n = (A327329 (n + 1) : ℚ)

theorem P10863149600841849895.correct : P10863149600841849895.Spec := by
  intro n
  simp only [A327329, Nat.add_sub_cancel, A327329.P10863149600841849895.a, A327329.P5185755489289824233.a, A024916, A024916.P6070136297472608546.a, A243980, A243980.P11138556836325931032.a, A160664, A160664.P14996881624845338289.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A327329

/-! ## A327329.P9779706046460736102

`A006218(n+1)+A222548(n+1)`
-/

namespace A327329.P9779706046460736102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 (n + 1) + A222548 (n + 1)

end

end A327329.P9779706046460736102

namespace A327329

/-- `A006218(n+1)+A222548(n+1)` -/
def P9779706046460736102.Spec : Prop :=
  ∀ n, P9779706046460736102.a n = A327329 (n + 1)

theorem P9779706046460736102.correct : P9779706046460736102.Spec := by
  intro n
  simp only [A327329, Nat.add_sub_cancel, A327329.P9779706046460736102.a, A327329.P5185755489289824233.a, A006218, A006218.P9218434490128439557.a, A024916, A024916.P6070136297472608546.a, A222548, A222548.P12009654421931561066.a, A000005, A000005.P16091521709108585461.a, A160664, A160664.P14996881624845338289.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A327329

/-! ## A327329.P7985816314019900304

`A001105(n+1)-A067436(n+1)`
-/

namespace A327329.P7985816314019900304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001105 (n + 1) - A067436 (n + 1)

end

end A327329.P7985816314019900304

namespace A327329

/-- `A001105(n+1)-A067436(n+1)` -/
def P7985816314019900304.Spec : Prop :=
  ∀ n, P7985816314019900304.a n = A327329 (n + 1)

end A327329

/-! ## A327329.P5631110472057487555

`∑[2*∑{d}[n+1, #]]`
-/

namespace A327329.P5631110472057487555
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (∑ d ∈ Nat.divisors (f2 n), d)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A327329.P5631110472057487555

namespace A327329

/-- `∑[2*∑{d}[n+1, #]]` -/
def P5631110472057487555.Spec : Prop :=
  ∀ n, (P5631110472057487555.a n : ℤ) = A327329 (n + 1)

end A327329

/-! ## A327329.P540892812300299496

`∑[∑{d}[n+1, #+#]]`
-/

namespace A327329.P540892812300299496
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), (d + d)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A327329.P540892812300299496

namespace A327329

/-- `∑[∑{d}[n+1, #+#]]` -/
def P540892812300299496.Spec : Prop :=
  ∀ n, (P540892812300299496.a n : ℤ) = A327329 (n + 1)

end A327329

/-! ## A327329.P9498441504064678967

`2*∑[∑{d}[2*n-(n-1), #]]`
-/

namespace A327329.P9498441504064678967
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - ((n : ℤ) - 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n).natAbs, d

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A327329.P9498441504064678967

namespace A327329

/-- `2*∑[∑{d}[2*n-(n-1), #]]` -/
def P9498441504064678967.Spec : Prop :=
  ∀ n, (P9498441504064678967.a n : ℤ) = A327329 (n + 1)

end A327329

/-! ## A327329.P4121929925448263529

`∑{d}[n+1, 2*#]+a(n-1)` with `a(0)=2`
-/

namespace A327329.P4121929925448263529
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  ∑ d ∈ Nat.divisors (f1 n), 2 * d + a (n - 1)

end

end A327329.P4121929925448263529

namespace A327329

/-- `∑{d}[n+1, 2*#]+a(n-1)` -/
def P4121929925448263529.Spec : Prop :=
  ∀ n, (P4121929925448263529.a n : ℤ) = A327329 (n + 1)

end A327329

/-! ## A327329.P1092490988332333258

`∑[A074400(n+1)]`
-/

namespace A327329.P1092490988332333258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074400 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A327329.P1092490988332333258

namespace A327329

/-- `∑[A074400(n+1)]` -/
def P1092490988332333258.Spec : Prop :=
  ∀ n, P1092490988332333258.a n = A327329 (n + 1)

end A327329

/-! ## A327329.P10475089784317553529

`∑[2*Δ[A160664(n)]]`
-/

namespace A327329.P10475089784317553529
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A327329.P10475089784317553529

namespace A327329

/-- `∑[2*Δ[A160664(n)]]` -/
def P10475089784317553529.Spec : Prop :=
  ∀ n, P10475089784317553529.a n = A327329 (n + 1)

end A327329

/-! ## A327329.P9775275658746065527

`∑[A002659(n+1)+1]`
-/

namespace A327329.P9775275658746065527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002659 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A327329.P9775275658746065527

namespace A327329

/-- `∑[A002659(n+1)+1]` -/
def P9775275658746065527.Spec : Prop :=
  ∀ n, P9775275658746065527.a n = A327329 (n + 1)

end A327329

/-! ## A327329.P7822535821267385028

`∑[2*A000203(n+1)]`
-/

namespace A327329.P7822535821267385028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000203 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A327329.P7822535821267385028

namespace A327329

/-- `∑[2*A000203(n+1)]` -/
def P7822535821267385028.Spec : Prop :=
  ∀ n, P7822535821267385028.a n = A327329 (n + 1)

end A327329

/-! ## A327329.P5012523375884371972

`∑[A326136(2*(n+1))]`
-/

namespace A327329.P5012523375884371972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326136 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A327329.P5012523375884371972

namespace A327329

/-- `∑[A326136(2*(n+1))]` -/
def P5012523375884371972.Spec : Prop :=
  ∀ n, P5012523375884371972.a n = A327329 (n + 1)

end A327329

/-! ## A327329.P14677487807329154315

`∑[A239050(n+1)/2]`
-/

namespace A327329.P14677487807329154315
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A239050 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A327329.P14677487807329154315

namespace A327329

/-- `∑[A239050(n+1)/2]` -/
def P14677487807329154315.Spec : Prop :=
  ∀ n, P14677487807329154315.a n = (A327329 (n + 1) : ℚ)

end A327329

/-! ## A327329.P259557343857126209

`∑[A274536(n+1)/3]`
-/

namespace A327329.P259557343857126209
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A274536 (n + 1) : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A327329.P259557343857126209

namespace A327329

/-- `∑[A274536(n+1)/3]` -/
def P259557343857126209.Spec : Prop :=
  ∀ n, P259557343857126209.a n = (A327329 (n + 1) : ℚ)

end A327329

/-! ## A327329.P1330267599452025549

`∑[A319528(n+1)/4]`
-/

namespace A327329.P1330267599452025549
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A319528 (n + 1) : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A327329.P1330267599452025549

namespace A327329

/-- `∑[A319528(n+1)/4]` -/
def P1330267599452025549.Spec : Prop :=
  ∀ n, P1330267599452025549.a n = (A327329 (n + 1) : ℚ)

end A327329

/-! ## A327329.P13521016400675172557

`∑[A326122(n+1)/5]`
-/

namespace A327329.P13521016400675172557
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A326122 (n + 1) : ℚ) / 5

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A327329.P13521016400675172557

namespace A327329

/-- `∑[A326122(n+1)/5]` -/
def P13521016400675172557.Spec : Prop :=
  ∀ n, P13521016400675172557.a n = (A327329 (n + 1) : ℚ)

end A327329

/-! ## A327329.P18295381683552972123

`2*(A160664(n+1)-1)`
-/

namespace A327329.P18295381683552972123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A160664 (n + 1) - 1)

end

end A327329.P18295381683552972123

namespace A327329

/-- `2*(A160664(n+1)-1)` -/
def P18295381683552972123.Spec : Prop :=
  ∀ n, P18295381683552972123.a n = A327329 (n + 1)

end A327329

/-! ## A327329.P1833750145389579089

`∑[abs(2*A143348(n+1))]`
-/

namespace A327329.P1833750145389579089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 * A143348 (n + 1)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A327329.P1833750145389579089

namespace A327329

/-- `∑[abs(2*A143348(n+1))]` -/
def P1833750145389579089.Spec : Prop :=
  ∀ n, P1833750145389579089.a n = A327329 (n + 1)

end A327329

/-! ## A327329.P1299343888707107168

`∑[2*sqrt(A072861(n+1))]`
-/

namespace A327329.P1299343888707107168
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  2 * Real.sqrt (A072861 (n + 1) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A327329.P1299343888707107168

namespace A327329

/-- `∑[2*sqrt(A072861(n+1))]` -/
def P1299343888707107168.Spec : Prop :=
  ∀ n, P1299343888707107168.a n = (A327329 (n + 1) : ℝ)

end A327329

/-!
# A327330: "Concave pentagon" toothpick sequence (see Comments for precise definition).

The programs for A327330, there is no canonical definition to state claims against.
-/

/-! ## A327330.P14051383922183641847

`A327331(n)+a(n-1)` with `a(0)=0`
-/

namespace A327330.P14051383922183641847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A327331 n + a (n - 1)

end

end A327330.P14051383922183641847

/-! ## A327330.P13819644204858996523

`∑[A327331(round(sqrt(n²+1)))]-1`
-/

namespace A327330.P13819644204858996523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327331 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A327330.P13819644204858996523

/-! ## A327330.P15935921701367662851

`abs(A327331(n+1)-∑[A327331(n+1)])`
-/

namespace A327330.P15935921701367662851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327331 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A327331 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j|

end

end A327330.P15935921701367662851

/-! ## A327330.P6421842998076672158

`∑[A327331(A028310(n))%A005408(n)]`
-/

namespace A327330.P6421842998076672158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A327331 (A028310 n).toNat) (A005408 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A327330.P6421842998076672158

/-! ## A327330.P17828941763923851645

`A231348(n)-A106167(A001263(n+1))`
-/

namespace A327330.P17828941763923851645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231348 n - A106167 (A001263 (n + 1)).toNat

end

end A327330.P17828941763923851645

/-!
# A327331: Number of elements added at n-th stage to the toothpick structure of A327330.

The programs for A327331, there is no canonical definition to state claims against.
-/

/-! ## A327331.P998018363803972771

`Δ[A327330(n)]`
-/

namespace A327331.P998018363803972771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327330 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A327331.P998018363803972771

/-! ## A327331.P487516630730595400

`A327330(n+1)-A327330(n)`
-/

namespace A327331.P487516630730595400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327330 (n + 1) - A327330 n

end

end A327331.P487516630730595400

/-! ## A327331.P10966508046976617604

`record[A327330(abs(1-n))]-A327330(n)`
-/

namespace A327331.P10966508046976617604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327330 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A327330 n

end

end A327331.P10966508046976617604

/-!
# A327332: "Concave pentagon" toothpick sequence, starting with a V-toothpick (see Comments for precise definition).

The programs for A327332, there is no canonical definition to state claims against.
-/

/-! ## A327332.P5434171594082581273

`A327333(n)+a(n-1)` with `a(0)=0`
-/

namespace A327332.P5434171594082581273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A327333 n + a (n - 1)

end

end A327332.P5434171594082581273

/-! ## A327332.P6863368724512319984

`∑[A327333(abs(1-n)+1)]-2`
-/

namespace A327332.P6863368724512319984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327333 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A327332.P6863368724512319984

/-! ## A327332.P857587483081863380

`abs(1-∑[A327333(A028310(n))])`
-/

namespace A327332.P857587483081863380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327333 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - ∑ j ∈ Finset.range (n + 1), f1 j|

end

end A327332.P857587483081863380

/-! ## A327332.P3374328367628176170

`∑[A178334(n)*A327333(A028310(n))]`
-/

namespace A327332.P3374328367628176170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 n * A327333 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A327332.P3374328367628176170

/-! ## A327332.P3488013228765972808

`∑[A327333(A028310(n))%A049632(n)]`
-/

namespace A327332.P3488013228765972808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A327333 (A028310 n).toNat) (A049632 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A327332.P3488013228765972808

/-! ## A327332.P16725879201435312027

`∑[A327333(A028310(n))]+1-A020639(2*(n+1))`
-/

namespace A327332.P16725879201435312027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327333 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1 - A020639 (2 * (n + 1))

end

end A327332.P16725879201435312027

/-! ## A327332.P9805935679169919307

`∑[A327333(A028310(n))]%A000040(50*(n+1))-1`
-/

namespace A327332.P9805935679169919307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327333 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A000040 (50 * (n + 1))) - 1

end

end A327332.P9805935679169919307

/-!
# A327333: Number of elements added at n-th stage to the toothpick structure of A327332.

The programs for A327333, there is no canonical definition to state claims against.
-/

/-! ## A327333.P1976340611992073619

`Δ[A327332(n)]`
-/

namespace A327333.P1976340611992073619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327332 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A327333.P1976340611992073619

/-! ## A327333.P9059623240922983693

`A327332(n+1)-A327332(n)`
-/

namespace A327333.P9059623240922983693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327332 (n + 1) - A327332 n

end

end A327333.P9059623240922983693

/-! ## A327333.P15064308053915770181

`record[A327332(abs(1-n))]-A327332(n)`
-/

namespace A327333.P15064308053915770181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327332 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A327332 n

end

end A327333.P15064308053915770181

/-!
# A327334: Triangle read by rows where T(n,k) is the number of labeled simple graphs with n vertices and vertex-connectivity k.

The programs for A327334, there is no canonical definition to state claims against.
-/

/-! ## A327334.P2595990734698441344

`xor(char[A101881(n)], A327125(n))`
-/

namespace A327334.P2595990734698441344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101881 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A327125 n)

end

end A327334.P2595990734698441344

/-! ## A327334.P6987959017687041495

`A327125(n)+Δ[A029441(A086460(n))]`
-/

namespace A327334.P6987959017687041495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029441 (A086460 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327125 n + (f1 (n + 1) - f1 n)

end

end A327334.P6987959017687041495

/-! ## A327334.P4192415241037746348

`A327125(n)+Δ[A029441(A118344(n))]`
-/

namespace A327334.P4192415241037746348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029441 (A118344 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327125 n + (f1 (n + 1) - f1 n)

end

end A327334.P4192415241037746348

/-! ## A327334.P1673048959900556247

`C(A327125(n), A005128(A127701(n+1)))`
-/

namespace A327334.P1673048959900556247
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A327125 n).toNat (A005128 (A127701 (n + 1)).toNat).toNat

end

end A327334.P1673048959900556247

/-! ## A327334.P16214324225582781439

`A327125(A127701(n+1)+A028310(n))`
-/

namespace A327334.P16214324225582781439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327125 (A127701 (n + 1) + A028310 n).toNat

end

end A327334.P16214324225582781439

/-!
# A327335: Number of non-isomorphic set-systems with n vertices and at least one endpoint/leaf.

The programs for A327335, there is no canonical definition to state claims against.
-/

/-! ## A327335.P16886145349446239109

`Δ[(char[5]+1)*n!]`
-/

namespace A327335.P16886145349446239109
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f2 j = n then 1 else 0) + 1) * Nat.factorial n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A327335.P16886145349446239109

/-!
# A327336: Number of labeled simple graphs with vertex-connectivity 1.

The programs for A327336, there is no canonical definition to state claims against.
-/

/-! ## A327336.P13745462245557754453

`A327114(n)+char[2]`
-/

namespace A327336.P13745462245557754453
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327114 n + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A327336.P13745462245557754453

/-! ## A327336.P6885584768208107572

`or(char[A090249(n)], A327114(n))`
-/

namespace A327336.P6885584768208107572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090249 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A327114 n)

end

end A327336.P6885584768208107572

/-! ## A327336.P18065321194313732078

`A327114(n)^A102382(A352685(n))`
-/

namespace A327336.P18065321194313732078
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A327114 n : ℚ) ^ (A102382 (A352685 n).toNat : ℤ)

end

end A327336.P18065321194313732078

/-! ## A327336.P7220100553396036208

`gcd(A083928(A103517(n)), A327114(n))`
-/

namespace A327336.P7220100553396036208
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A083928 (A103517 n).toNat) (A327114 n)

end

end A327336.P7220100553396036208

/-! ## A327336.P7538053680224624838

`or(A000007(A060475(n)), A327114(n))`
-/

namespace A327336.P7538053680224624838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 (A060475 n).toNat) (A327114 n)

end

end A327336.P7538053680224624838

/-!
# A327341: Denominators of the rationals r(n) = (1/n^2)*Phi_1(n), with Phi_1(n) = Sum{k=1..n} psi(k), with the Dedekind psi function.

The programs for A327341, there is no canonical definition to state claims against.
-/

/-! ## A327341.P14222028266432887484

`A291186(n+1)^A000034(A327006(n+1))`
-/

namespace A327341.P14222028266432887484
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A291186 (n + 1) : ℚ) ^ (A000034 (A327006 (n + 1)).toNat : ℤ)

end

end A327341.P14222028266432887484

/-! ## A327341.P13558596003696564524

`A323707(n+1)^A000034(A327006(n+1))`
-/

namespace A327341.P13558596003696564524
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A323707 (n + 1) : ℚ) ^ (A000034 (A327006 (n + 1)).toNat : ℤ)

end

end A327341.P13558596003696564524

/-!
# A327342: a(n) gives the number of distinct odd prime divisors of m(n) = A002559(n) (Markoff numbers).

The programs for A327342, there is no canonical definition to state claims against.
-/

/-! ## A327342.P17509023261365642819

`log2(A327343(n+1))`
-/

namespace A327342.P17509023261365642819
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A327343 (n + 1) : ℝ)

end

end A327342.P17509023261365642819

/-! ## A327342.P13431958011193436219

`A000120(A327343(n+1)-1)`
-/

namespace A327342.P13431958011193436219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A327343 (n + 1) - 1).toNat

end

end A327342.P13431958011193436219

/-! ## A327342.P11692222300480534247

`A000194(A327343(n+1)-1)`
-/

namespace A327342.P11692222300480534247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A327343 (n + 1) - 1).toNat

end

end A327342.P11692222300480534247

/-! ## A327342.P1218266550864452975

`A002487(A327343(n+1)-1)`
-/

namespace A327342.P1218266550864452975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (A327343 (n + 1) - 1).toNat

end

end A327342.P1218266550864452975

/-! ## A327342.P14894001242324209975

`A004718(A327343(n+1)-1)`
-/

namespace A327342.P14894001242324209975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004718 (A327343 (n + 1) - 1).toNat

end

end A327342.P14894001242324209975

/-! ## A327342.P8146781282417020125

`A061392(A327343(n+1)-1)`
-/

namespace A327342.P8146781282417020125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061392 (A327343 (n + 1) - 1).toNat

end

end A327342.P8146781282417020125

/-! ## A327342.P11272088279854106200

`A159918(A327343(n+1)-1)`
-/

namespace A327342.P11272088279854106200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159918 (A327343 (n + 1) - 1).toNat

end

end A327342.P11272088279854106200

/-! ## A327342.P3749580102985105925

`A333381(A327343(n+1)-1)`
-/

namespace A327342.P3749580102985105925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333381 (A327343 (n + 1) - 1).toNat

end

end A327342.P3749580102985105925

/-! ## A327342.P4566718807361037698

`A070824(2*A327343(n+1))`
-/

namespace A327342.P4566718807361037698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070824 (2 * A327343 (n + 1)).toNat

end

end A327342.P4566718807361037698

/-! ## A327342.P10215562997392423251

`A000196(xor(1, A327343(n+1)))`
-/

namespace A327342.P10215562997392423251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (Int.xor 1 (A327343 (n + 1))).toNat

end

end A327342.P10215562997392423251

/-! ## A327342.P11154492011987195045

`A001222(A327343(-xor(n, -1)))`
-/

namespace A327342.P11154492011987195045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A327343 (-Int.xor (n : ℤ) (-1)).toNat).toNat

end

end A327342.P11154492011987195045

/-! ## A327342.P5005772972130242820

`∑{d}[A327343(n+1), A001221(#)]`
-/

namespace A327342.P5005772972130242820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327343 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A001221 d

end

end A327342.P5005772972130242820

/-! ## A327342.P16144464857015302846

`A001222(and(-1, A327343(n+1)))`
-/

namespace A327342.P16144464857015302846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.land (-1) (A327343 (n + 1))).toNat

end

end A327342.P16144464857015302846

/-! ## A327342.P18105170622294535196

`A001222(A327343(n+1)²)/2`
-/

namespace A327342.P18105170622294535196
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001222 (A327343 (n + 1) ^ 2).toNat : ℚ) / 2

end

end A327342.P18105170622294535196

/-! ## A327342.P4684383819810617424

`A001222(root(A327343(n+1), 2)²)`
-/

namespace A327342.P4684383819810617424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway (((A327343 (n + 1) : ℝ) ^ (1 / (2 : ℝ))) ^ 2)).toNat

end

end A327342.P4684383819810617424

/-! ## A327342.P3306559609859198990

`A001222(A327343(n+1)+char[2])`
-/

namespace A327342.P3306559609859198990
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A327343 (n + 1) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)).toNat

end

end A327342.P3306559609859198990

/-! ## A327342.P8227638333931482086

`A001222(A327343(xor(1, xor(1, n+1))))`
-/

namespace A327342.P8227638333931482086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A327343 (Nat.xor 1 (Nat.xor 1 (n + 1)))).toNat

end

end A327342.P8227638333931482086

/-! ## A327342.P5449014986250271426

`A001222(A327343(n+1)%(n+2))`
-/

namespace A327342.P5449014986250271426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.tmod (A327343 (n + 1)) (n + 2 : ℤ)).toNat

end

end A327342.P5449014986250271426

/-! ## A327342.P15013061168849466432

`∑{e}[A327343(n+1), A001222(2^#)]`
-/

namespace A327342.P15013061168849466432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327343 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A001222 (2 ^ Nat.factorization (f1 n).natAbs p)

end

end A327342.P15013061168849466432

/-! ## A327342.P13372076109112284480

`val(A327343(n+1), A020639(2*(n+1)))`
-/

namespace A327342.P13372076109112284480
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A327343 (n + 1)).toNat (A020639 (2 * (n + 1))).toNat

end

end A327342.P13372076109112284480

/-!
# A327343: a(n) gives the number of representative parallel primitive forms for binary quadratic forms of discriminant Disc(n) = 9*m(n)^2 - 4 and representation of -m(n)^2, with m(n) = A002559(n) (Markoff numbers).

The programs for A327343, there is no canonical definition to state claims against.
-/

/-! ## A327343.P6799842680081067730

`2^A327342(n+1)`
-/

namespace A327343.P6799842680081067730
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A327342 (n + 1) : ℤ)

end

end A327343.P6799842680081067730

/-! ## A327343.P1912022509507737502

`A059268(A327342(n+1)+∑[n])`
-/

namespace A327343.P1912022509507737502
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 (A327342 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A327343.P1912022509507737502

/-! ## A327343.P9064874410907546793

`A057728(∑[n+1]-A327342(n+1))`
-/

namespace A327343.P9064874410907546793
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057728 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A327342 (n + 1)).toNat

end

end A327343.P9064874410907546793

/-! ## A327343.P17350085114527857188

`A008859(abs(abs(A327342(n+1)-n)-n))`
-/

namespace A327343.P17350085114527857188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008859 |(|A327342 (n + 1) - (n : ℤ)| - (n : ℤ))|.toNat

end

end A327343.P17350085114527857188

/-! ## A327343.P6806715481482886587

`A011782(A327342(n+1)+A178334(n))`
-/

namespace A327343.P6806715481482886587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A327342 (n + 1) + A178334 n).toNat

end

end A327343.P6806715481482886587

/-! ## A327343.P6149569211470289499

`A000079(A178334(n)*A327342(n+1))`
-/

namespace A327343.P6149569211470289499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A178334 n * A327342 (n + 1)).toNat

end

end A327343.P6149569211470289499

/-! ## A327343.P80279279291531045

`A000079(A327342(n+1)/(2-A178334(n)))`
-/

namespace A327343.P80279279291531045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (SequenceMachineLib.roundAway ((A327342 (n + 1) : ℚ) / (2 - A178334 n : ℚ))).toNat

end

end A327343.P80279279291531045

/-! ## A327343.P15572685872315836279

`A000079(A327342(n+1)+n)/A000079(n)`
-/

namespace A327343.P15572685872315836279
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000079 (A327342 (n + 1) + (n : ℤ)).toNat : ℚ) / (A000079 n : ℚ)

end

end A327343.P15572685872315836279

/-! ## A327343.P9581406409713103492

`A011782(A327342(n+1)+n)/A011782(n)`
-/

namespace A327343.P9581406409713103492
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A011782 (A327342 (n + 1) + (n : ℤ)).toNat : ℚ) / (A011782 n : ℚ)

end

end A327343.P9581406409713103492

/-! ## A327343.P16785223906689637119

`A000079(A327342(n+1)+n*A036987(2*n))`
-/

namespace A327343.P16785223906689637119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A327342 (n + 1) + (n : ℤ) * A036987 (2 * n)).toNat

end

end A327343.P16785223906689637119

/-!
# A327344: 9 + 8*a(n) appears in a congruence which determines representative parallel primitive binary quadratic forms for discriminant 9*m(n)^2 - 4 and representation -m(n)^2, where m(n) = A002559(n) (Markoff numbers).

The programs for A327344, there is no canonical definition to state claims against.
-/

/-! ## A327344.P15462947319020540240

`A002264(39*3*∑[C(floor(2^(n-1)), 2)])`
-/

namespace A327344.P15462947319020540240
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ⌊(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋.toNat 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (39 * (3 * (∑ j ∈ Finset.range (n + 1), f1 j)))

end

end A327344.P15462947319020540240

/-!
# A327345: Irregular triangle read by rows: Maximal numbers of the Markoff triples at level L of the Markoff tree, with members of the triples ordered increasingly.

The programs for A327345, there is no canonical definition to state claims against.
-/

/-! ## A327345.P12539064726811714445

`A066657(Δ[Δ[A306150(n)]])`
-/

namespace A327345.P12539064726811714445
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306150 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 (f1 (n + 1) - f1 n).toNat

end

end A327345.P12539064726811714445

/-! ## A327345.P1464585447383825960

`A253809(A291153(n+1)+1)`
-/

namespace A327345.P1464585447383825960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253809 (A291153 (n + 1) + 1).toNat

end

end A327345.P1464585447383825960

/-!
# A327348: The 66 prime dates in each non-leap year of the form concatenate (month,day) without leading zeros for days.

The programs for A327348, there is no canonical definition to state claims against.
-/

/-! ## A327348.P5740449180746598404

`p?[A327349(n+1)+char[12]]`
-/

namespace A327348.P5740449180746598404
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327349 (n + 1) + ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A327348.P5740449180746598404

/-! ## A327348.P11553977981626549970

`A327349(A011760(n+1))`
-/

namespace A327348.P11553977981626549970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327349 (A011760 (n + 1)).toNat

end

end A327348.P11553977981626549970

/-! ## A327348.P9636977174019332726

`A327349(comp[Δ[A060628(n)]])`
-/

namespace A327348.P9636977174019332726
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060628 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327349 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A327348.P9636977174019332726

/-! ## A327348.P7393723468157015299

`A327349(comp[A060628(n)-1])`
-/

namespace A327348.P7393723468157015299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060628 n - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327349 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A327348.P7393723468157015299

/-! ## A327348.P549754000136258825

`A327349(comp[n*A195024(n)])`
-/

namespace A327348.P549754000136258825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A195024 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327349 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A327348.P549754000136258825

/-! ## A327348.P9202479459665243344

`A327349(comp[n²*A327349(n+1)])`
-/

namespace A327348.P9202479459665243344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * A327349 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327349 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A327348.P9202479459665243344

/-! ## A327348.P4492684210704337858

`A327349(comp[4*A087209(n+1)]+1)`
-/

namespace A327348.P4492684210704337858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A087209 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327349 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1)

end

end A327348.P4492684210704337858

/-! ## A327348.P16831517969824801163

`A327349(comp[A087183(n+1)*A217319(n+1)]+1)`
-/

namespace A327348.P16831517969824801163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087183 (n + 1) * A217319 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327349 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1)

end

end A327348.P16831517969824801163

/-! ## A327348.P200554624288120906

`A327349(comp[A087217(n+2)*A132140(n+1)]+1)`
-/

namespace A327348.P200554624288120906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087217 (n + 2) * A132140 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327349 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1)

end

end A327348.P200554624288120906

/-! ## A327348.P3007428181771271871

`A327349(comp[A087184(2*n+1)*A087217(n+2)]+1)`
-/

namespace A327348.P3007428181771271871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087184 (2 * n + 1) * A087217 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327349 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1)

end

end A327348.P3007428181771271871

/-!
# A327352: Irregular triangle read by rows with trailing zeros removed where T(n,k) is the number of antichains of nonempty subsets of {1..n} with spanning edge-connectivity k.

The programs for A327352, there is no canonical definition to state claims against.
-/

/-! ## A327352.P13528408302074840224

`A327355(A003603(n+1)%A327355(n))`
-/

namespace A327352.P13528408302074840224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327355 (Int.tmod (A003603 (n + 1)) (A327355 n)).toNat

end

end A327352.P13528408302074840224

/-! ## A327352.P9589881139067310685

`A227134(A207873(n+1)%A227120(n+1))`
-/

namespace A327352.P9589881139067310685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227134 (Int.tmod (A207873 (n + 1)) (A227120 (n + 1))).toNat

end

end A327352.P9589881139067310685

/-! ## A327352.P11571133713854332299

`A227134(A207873(n+1))%A232859(n+1)`
-/

namespace A327352.P11571133713854332299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A227134 (A207873 (n + 1)).toNat) (A232859 (n + 1))

end

end A327352.P11571133713854332299

/-! ## A327352.P2304175601171930293

`A246322(A056057(n+1)+A056056(2*n+3))`
-/

namespace A327352.P2304175601171930293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246322 (A056057 (n + 1) + A056056 (2 * n + 3)).toNat

end

end A327352.P2304175601171930293

/-! ## A327352.P2430773944440379633

`A246322(A056647(n+1)+A056056(2*n+3))`
-/

namespace A327352.P2430773944440379633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246322 (A056647 (n + 1) + A056056 (2 * n + 3)).toNat

end

end A327352.P2430773944440379633

/-!
# A327354: Number of disconnected or empty antichains of nonempty subsets of {1..n} (non-spanning edge-connectivity 0).

The programs for A327354, there is no canonical definition to state claims against.
-/

/-! ## A327354.P9176660616370923274

`A000372(n)-A304986(n)`
-/

namespace A327354.P9176660616370923274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000372 n - A304986 n

end

end A327354.P9176660616370923274

/-! ## A327354.P14160299983070396277

`A014466(n)+1-A304986(n)`
-/

namespace A327354.P14160299983070396277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014466 n + (1 - A304986 n)

end

end A327354.P14160299983070396277

/-! ## A327354.P10357919800705047659

`A007153(n)+2-A304986(n)`
-/

namespace A327354.P10357919800705047659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007153 n + (2 - A304986 n)

end

end A327354.P10357919800705047659

/-! ## A327354.P13107637212779693085

`A000372(n)-(A305005(n)+n)`
-/

namespace A327354.P13107637212779693085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000372 n - (A305005 n + (n : ℤ))

end

end A327354.P13107637212779693085

/-! ## A327354.P715802123418765750

`1-(A343609(n)-A014466(n))-A304986(n)`
-/

namespace A327354.P715802123418765750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A343609 n - A014466 n) - A304986 n

end

end A327354.P715802123418765750

/-!
# A327355: Number of antichains of nonempty subsets of {1..n} that are either non-connected or non-covering (spanning edge-connectivity 0).

The programs for A327355, there is no canonical definition to state claims against.
-/

/-! ## A327355.P15912135223326442163

`A014466(round(sqrt(n²+1)))-A048143(n)`
-/

namespace A327355.P15912135223326442163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014466 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat - A048143 n

end

end A327355.P15912135223326442163

/-! ## A327355.P7991683298544565778

`A014466(n)-A048143(n)%A014466(n)`
-/

namespace A327355.P7991683298544565778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014466 n - Int.tmod (A048143 n) (A014466 n)

end

end A327355.P7991683298544565778

/-! ## A327355.P17279854481974255183

`A014466(A028310(n))-A317674(C(n, 2)+1)`
-/

namespace A327355.P17279854481974255183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014466 (A028310 n).toNat - A317674 (Nat.choose n 2 + 1)

end

end A327355.P17279854481974255183

/-! ## A327355.P6508413516042829068

`A000372(n)-(A303837(n+1)+A048143(n))`
-/

namespace A327355.P6508413516042829068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000372 n - (A303837 (n + 1) + A048143 n)

end

end A327355.P6508413516042829068

/-! ## A327355.P2605988844029658853

`A014466(A028310(n))-ceil(A304985(n)/2^n)`
-/

namespace A327355.P2605988844029658853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014466 (A028310 n).toNat - ⌈(A304985 n : ℚ) / (2 ^ n : ℚ)⌉

end

end A327355.P2605988844029658853

/-!
# A327356: Number of connected separable antichains of nonempty sets covering n vertices (vertex-connectivity 1).

The programs for A327356, there is no canonical definition to state claims against.
-/

/-! ## A327356.P5493266617469999962

`A327351(∑[n]+ceil(acot(n)))`
-/

namespace A327356.P5493266617469999962
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327351 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + ⌈SequenceMachineLib.acot (n : ℝ)⌉).toNat

end

end A327356.P5493266617469999962

/-!
# A327359: Triangle read by rows where T(n,k) is the number of unlabeled antichains of nonempty sets covering n vertices with vertex-connectivity exactly k.

The programs for A327359, there is no canonical definition to state claims against.
-/

/-! ## A327359.P17591012234249105711

`A025853(A246905(n+1)%A311911(n))`
-/

namespace A327359.P17591012234249105711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025853 (Int.tmod (A246905 (n + 1)) (A311911 n)).toNat

end

end A327359.P17591012234249105711

/-! ## A327359.P13409970045680294667

`A051126(A266659(n)+A005176(n))`
-/

namespace A327359.P13409970045680294667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051126 (A266659 n + A005176 n).toNat

end

end A327359.P13409970045680294667

/-! ## A327359.P14334243030979850076

`A001055(A351936(n))*A352521(n)`
-/

namespace A327359.P14334243030979850076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001055 (A351936 n).toNat * A352521 n

end

end A327359.P14334243030979850076

/-! ## A327359.P597393861472431719

`A001222(A023490(n)^A183134(n))`
-/

namespace A327359.P597393861472431719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((A023490 n : ℚ) ^ (A183134 n : ℤ))).toNat

end

end A327359.P597393861472431719

/-! ## A327359.P15988269295893621354

`A218603(A285943(2*n+3)+A056931(n+2))`
-/

namespace A327359.P15988269295893621354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218603 (A285943 (2 * n + 3) + A056931 (n + 2)).toNat

end

end A327359.P15988269295893621354

/-!
# A327360: Minimal numerator among the fractions with n-digit numerator and n-digit denominator that best approximate Pi.

The programs for A327360, there is no canonical definition to state claims against.
-/

/-! ## A327360.P15438248197882567254

`round(π*A327361(n+1))`
-/

namespace A327360.P15438248197882567254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.pi * (A327361 (n + 1) : ℝ))

end

end A327360.P15438248197882567254

/-!
# A327361: Minimal denominator among the fractions with n-digit numerator and n-digit denominator that best approximate Pi.

The programs for A327361, there is no canonical definition to state claims against.
-/

/-! ## A327361.P13180679523354034968

`round(A327360(n+1)/π)`
-/

namespace A327361.P13180679523354034968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A327360 (n + 1) : ℝ) / Real.pi)

end

end A327361.P13180679523354034968

/-!
# A327362: Number of labeled connected graphs covering n vertices with at least one endpoint (vertex of degree 1).

The programs for A327362, there is no canonical definition to state claims against.
-/

/-! ## A327362.P18307063772984343320

`A001187(n)-A059166(n)`
-/

namespace A327362.P18307063772984343320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001187 n - A059166 n

end

end A327362.P18307063772984343320

/-! ## A327362.P5467040684821685887

`A223894(A028310(∑[n]))-A059166(n)`
-/

namespace A327362.P5467040684821685887
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223894 (A028310 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat - A059166 n

end

end A327362.P5467040684821685887

/-! ## A327362.P7234071416381883522

`A223894(A179865(n+1))-A059166(n)`
-/

namespace A327362.P7234071416381883522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223894 (A179865 (n + 1)).toNat - A059166 n

end

end A327362.P7234071416381883522

/-! ## A327362.P2629088577356133107

`A006125(n)-(A059166(n)+A054592(n))`
-/

namespace A327362.P2629088577356133107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006125 n - (A059166 n + A054592 n)

end

end A327362.P2629088577356133107

/-! ## A327362.P17975418505921168494

`A223894(A065033(∑[2*n]))-A059166(n)`
-/

namespace A327362.P17975418505921168494
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223894 (A065033 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat - A059166 n

end

end A327362.P17975418505921168494

/-!
# A327363: Triangle read by rows where T(n,k) is the number of labeled simple graphs with n vertices and vertex-connectivity >= k.

The programs for A327363, there is no canonical definition to state claims against.
-/

/-! ## A327363.P4925886881460982450

`A125653(A225738(n))*A183190(n)`
-/

namespace A327363.P4925886881460982450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125653 (A225738 (n + 10)).toNat * A183190 n

end

end A327363.P4925886881460982450

/-! ## A327363.P9375347644581001674

`and(A005250(A186020(n)), A115380(n+1))`
-/

namespace A327363.P9375347644581001674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A005250 (A186020 n).toNat) (A115380 (n + 1))

end

end A327363.P9375347644581001674

/-! ## A327363.P12787620864369227145

`and(A117260(n+1), A329854(A089404(n)))`
-/

namespace A327363.P12787620864369227145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A117260 (n + 1)) (A329854 (A089404 n).toNat)

end

end A327363.P12787620864369227145

/-! ## A327363.P17208381406751730274

`and(A132610(n), A335413(A359068(n+1)))`
-/

namespace A327363.P17208381406751730274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A132610 n) (A335413 (A359068 (n + 1)).toNat)

end

end A327363.P17208381406751730274

/-! ## A327363.P2649428177767414574

`A224798(n+1)*A269027(A224798(2*n))`
-/

namespace A327363.P2649428177767414574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224798 (n + 1) * A269027 (A224798 (2 * n)).toNat

end

end A327363.P2649428177767414574

/-!
# A327364: Number of labeled simple graphs with n vertices, a connected edge-set, and at least one endpoint (vertex of degree 1).

The programs for A327364, there is no canonical definition to state claims against.
-/

/-! ## A327364.P3740425232589366731

`A000720(A239447(n!))`
-/

namespace A327364.P3740425232589366731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A239447 (Nat.factorial n)).toNat

end

end A327364.P3740425232589366731

/-! ## A327364.P4387997499633429730

`A002264(floor(sqrt(A336212(n))))`
-/

namespace A327364.P4387997499633429730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (Int.sqrt (A336212 n)).toNat

end

end A327364.P4387997499633429730

/-!
# A327367: Number of labeled simple graphs with n vertices, at least one of which is isolated.

The programs for A327367, there is no canonical definition to state claims against.
-/

/-! ## A327367.P17484397783168527129

`A006125(n)-A006129(n)`
-/

namespace A327367.P17484397783168527129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006125 n - A006129 n

end

end A327367.P17484397783168527129

/-! ## A327367.P16752096311113089614

`∏[A011782(n)]-A006129(n)`
-/

namespace A327367.P16752096311113089614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j - A006129 n

end

end A327367.P16752096311113089614

/-! ## A327367.P6174878123811297510

`2^A161680(n)-A006129(n)`
-/

namespace A327367.P6174878123811297510
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A161680 n : ℤ) - (A006129 n : ℚ)

end

end A327367.P6174878123811297510

/-! ## A327367.P11064419473198531421

`A000079(C(n, 2))-A006129(n)`
-/

namespace A327367.P11064419473198531421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (Nat.choose n 2) - A006129 n

end

end A327367.P11064419473198531421

/-! ## A327367.P8737708249893756170

`A006125(n)-(A327377(∑[n])+A327227(n))`
-/

namespace A327367.P8737708249893756170
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006125 n - (A327377 (∑ j ∈ Finset.range (n + 1), f1 j) + A327227 n)

end

end A327367.P8737708249893756170

/-!
# A327368: The positions of ones in the reversed binary expansion of n have integer mean and integer geometric mean.

The programs for A327368, there is no canonical definition to state claims against.
-/

/-! ## A327368.P3297816581518340541

`∩[A115423(n+1), A334522(n+1)]`
-/

namespace A327368.P3297816581518340541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115423 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334522 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A327368.P3297816581518340541

/-! ## A327368.P18100629784398974264

`∩[A115424(n+1), A334522(n+1)]`
-/

namespace A327368.P18100629784398974264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115424 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334522 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A327368.P18100629784398974264

/-! ## A327368.P3548150077019954143

`∩[A325363(n+1), A326673(n+1)]`
-/

namespace A327368.P3548150077019954143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325363 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326673 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A327368.P3548150077019954143

/-! ## A327368.P9380623133783277759

`∩[A326673(n+1), A334522(n+1)]`
-/

namespace A327368.P9380623133783277759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326673 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334522 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A327368.P9380623133783277759

/-! ## A327368.P1441643232789598451

`∩[A152111(n+1), A334522(n+1)]`
-/

namespace A327368.P1441643232789598451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152111 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334522 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A327368.P1441643232789598451

/-!
# A327370: Number of labeled simple graphs with n vertices and exactly n - 1 endpoints (vertices of degree 1).

The programs for A327370, the canonical program `A327370.P17973664641611426474` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A327370 has offset 0).

The definition of A327370 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 116 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A327370.P17973664641611426474

`Δ[A000085(n)-abs(A055634(n))]`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A327370

/-- `Δ[A000085(n)-abs(A055634(n))]` -/
def P17973664641611426474.Spec : Prop :=
  ∀ n, P17973664641611426474.a n = A327370 n

theorem P17973664641611426474.correct : P17973664641611426474.Spec := by
  intro n
  simp only [A327370]

end A327370

/-! ## A327370.P2514136355935962694

`Δ[A000085(n)-A133221(n+1)]`
-/

namespace A327370.P2514136355935962694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000085 n - A133221 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A327370.P2514136355935962694

namespace A327370

/-- `Δ[A000085(n)-A133221(n+1)]` -/
def P2514136355935962694.Spec : Prop :=
  ∀ n, P2514136355935962694.a n = A327370 n

end A327370

/-! ## A327370.P10286715971351072780

`Δ[A378100(n)-A123023(n+1)]`
-/

namespace A327370.P10286715971351072780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378100 n - A123023 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A327370.P10286715971351072780

namespace A327370

/-- `Δ[A378100(n)-A123023(n+1)]` -/
def P10286715971351072780.Spec : Prop :=
  ∀ n, P10286715971351072780.a n = A327370 n

end A327370

/-! ## A327370.P18387120341864892211

`Δ[A000085(n)-A001147(A065033(n))]`
-/

namespace A327370.P18387120341864892211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000085 n - A001147 (A065033 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A327370.P18387120341864892211

namespace A327370

/-- `Δ[A000085(n)-A001147(A065033(n))]` -/
def P18387120341864892211.Spec : Prop :=
  ∀ n, P18387120341864892211.a n = A327370 n

end A327370

/-!
# A327371: Triangle read by rows where T(n,k) is the number of unlabeled simple graphs with n vertices and exactly k endpoints (vertices of degree 1).

The programs for A327371, there is no canonical definition to state claims against.
-/

/-! ## A327371.P6020042823997677031

`val(A291769(A075202(n+1)), 2)`
-/

namespace A327371.P6020042823997677031
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A291769 (A075202 (n + 1)).toNat).toNat 2

end

end A327371.P6020042823997677031

/-! ## A327371.P12300593259501782007

`A332670(A331022(n)-A057427(n))`
-/

namespace A327371.P12300593259501782007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332670 (A331022 n - A057427 n).toNat

end

end A327371.P12300593259501782007

/-! ## A327371.P7839376412104259986

`A320582(n)/A327359(A100862(n))`
-/

namespace A327371.P7839376412104259986
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A320582 n : ℚ) / (A327359 (A100862 n).toNat : ℚ)

end

end A327371.P7839376412104259986

/-! ## A327371.P8310063518949295047

`A127324(A079171(n+2)+A056964(n))`
-/

namespace A327371.P8310063518949295047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127324 (A079171 (n + 2) + A056964 n).toNat

end

end A327371.P8310063518949295047

/-! ## A327371.P18409748007591981224

`A354667(n)+A336562(A006081(n+2))`
-/

namespace A327371.P18409748007591981224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354667 n + A336562 (A006081 (n + 2)).toNat

end

end A327371.P18409748007591981224

/-!
# A327373: BII-numbers of complete simple graphs.

The programs for A327373, there is no canonical definition to state claims against.
-/

/-! ## A327373.P17824900252128857151

`A327234(n)`
-/

namespace A327373.P17824900252128857151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327234 n

end

end A327373.P17824900252128857151

/-!
# A327374: BII-numbers of set-systems with vertex-connectivity 2.

The programs for A327374, there is no canonical definition to state claims against.
-/

/-! ## A327374.P6990721687232437231

`gcd(5, ∏[n+1])+51+n`
-/

namespace A327374.P6990721687232437231
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 5 (∏ j ∈ Finset.range (n + 1), f1 j) + 51 + n

end

end A327374.P6990721687232437231

/-!
# A327375: Number of set-systems with n vertices and vertex-connectivity 2.

The programs for A327375, there is no canonical definition to state claims against.
-/

/-! ## A327375.P5443691444821755671

`72*(a(n-1)-6)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=72`
-/

namespace A327375.P5443691444821755671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 0, 72] fun n a =>
  72 * (a (n - 1) - 6)

end

end A327375.P5443691444821755671

/-!
# A327376: BII-numbers of set-systems with vertex-connectivity 3.

The programs for A327376, there is no canonical definition to state claims against.
-/

/-! ## A327376.P9433860865980516588

`A329626(A102022(3*n+4))+A102008(n+1)`
-/

namespace A327376.P9433860865980516588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329626 (A102022 (3 * n + 4)).toNat + A102008 (n + 1)

end

end A327376.P9433860865980516588

/-!
# A327379: Number of labeled non-mating-type graphs with n vertices.

The programs for A327379, there is no canonical definition to state claims against.
-/

/-! ## A327379.P1493279514676083196

`A006125(n+1)-A006024(n+1)`
-/

namespace A327379.P1493279514676083196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006125 (n + 1) - A006024 (n + 1)

end

end A327379.P1493279514676083196

/-! ## A327379.P3983674364758185982

`A000079(A000217(n))-A006024(n+1)`
-/

namespace A327379.P3983674364758185982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A000217 n).toNat - A006024 (n + 1)

end

end A327379.P3983674364758185982

/-!
# A327380: Number of colored integer partitions of n such that two colors are used and parts differ by size or by color.

The programs for A327380, there is no canonical definition to state claims against.
-/

/-! ## A327380.P4091245693066365133

`A022567(n+2)-(A000009(n+2)+A000009(n+2))`
-/

namespace A327380.P4091245693066365133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022567 (n + 2) - (A000009 (n + 2) + A000009 (n + 2))

end

end A327380.P4091245693066365133

/-! ## A327380.P2878478748289937324

`record[A308680(∑[n]+2)]`
-/

namespace A327380.P2878478748289937324
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308680 (∑ j ∈ Finset.range (n + 1), f2 j + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A327380.P2878478748289937324

/-! ## A327380.P5709530978439061581

`A308680(∑[n+2]+3)`
-/

namespace A327380.P5709530978439061581
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308680 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A327380.P5709530978439061581

/-! ## A327380.P16779689979875654237

`A308680(A133263(n+2))%A022112(n)`
-/

namespace A327380.P16779689979875654237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A308680 (A133263 (n + 2)).toNat) (A022112 n)

end

end A327380.P16779689979875654237

/-! ## A327380.P1454789525024947481

`lcm(A000034(n), A308680(A340266(n+1)))`
-/

namespace A327380.P1454789525024947481
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000034 n) (A308680 (A340266 (n + 1)).toNat)

end

end A327380.P1454789525024947481

/-! ## A327380.P17705862099871283967

`or(A000007(n), A308680(A340266(n+1)))`
-/

namespace A327380.P17705862099871283967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A308680 (A340266 (n + 1)).toNat)

end

end A327380.P17705862099871283967

/-! ## A327380.P11354325650162561293

`A308680(A133263(n+2))+A000035(2*n)`
-/

namespace A327380.P11354325650162561293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308680 (A133263 (n + 2)).toNat + A000035 (2 * n)

end

end A327380.P11354325650162561293

/-! ## A327380.P14196914001420691304

`A308680(A340266(n+1))%A014252(n+1)`
-/

namespace A327380.P14196914001420691304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A308680 (A340266 (n + 1)).toNat) (A014252 (n + 1))

end

end A327380.P14196914001420691304

/-! ## A327380.P1753454011789058685

`A119335(A000124(n))*A308680(A133263(n+2))`
-/

namespace A327380.P1753454011789058685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119335 (A000124 n).toNat * A308680 (A133263 (n + 2)).toNat

end

end A327380.P1753454011789058685

/-!
# A327381: Number of colored integer partitions of n such that three colors are used and parts differ by size or by color.

The programs for A327381, there is no canonical definition to state claims against.
-/

/-! ## A327381.P1590540932507766766

`record[A308680(∑[n+1]+3)]`
-/

namespace A327381.P1590540932507766766
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308680 (∑ j ∈ Finset.range (n + 1), f2 j + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A327381.P1590540932507766766

/-! ## A327381.P1191216587722758679

`A308680(A167614(n+2))`
-/

namespace A327381.P1191216587722758679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308680 (A167614 (n + 2)).toNat

end

end A327381.P1191216587722758679

/-! ## A327381.P18101637606399630441

`A308680(A152950(n+4))`
-/

namespace A327381.P18101637606399630441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308680 (A152950 (n + 4)).toNat

end

end A327381.P18101637606399630441

/-! ## A327381.P8844241216023689355

`A308680(A052905(n)+8)`
-/

namespace A327381.P8844241216023689355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308680 (A052905 n + 8).toNat

end

end A327381.P8844241216023689355

/-! ## A327381.P14380068209237141985

`A308680(A055999(n)+9)`
-/

namespace A327381.P14380068209237141985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308680 (A055999 n + 9).toNat

end

end A327381.P14380068209237141985

/-! ## A327381.P7908806311745868545

`A308680(A340266(n+2)+1)`
-/

namespace A327381.P7908806311745868545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308680 (A340266 (n + 2) + 1).toNat

end

end A327381.P7908806311745868545

/-! ## A327381.P12340021938429847850

`A308680(A000096(n+2)+4)`
-/

namespace A327381.P12340021938429847850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308680 (A000096 (n + 2) + 4).toNat

end

end A327381.P12340021938429847850

/-! ## A327381.P8711305438628494105

`A308680(A000217(n+4)-(n+1))`
-/

namespace A327381.P8711305438628494105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308680 (A000217 (n + 4) - (n + 1 : ℤ)).toNat

end

end A327381.P8711305438628494105

/-! ## A327381.P4302747828078689999

`A308680(eq[2, A002260(n+1)-2])`
-/

namespace A327381.P4302747828078689999
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308680 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A327381.P4302747828078689999

/-! ## A327381.P11404119554980047149

`A308680(eq[2, A002260(n+1)/2])`
-/

namespace A327381.P11404119554980047149
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002260 (n + 1) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308680 (SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n)

end

end A327381.P11404119554980047149

/-! ## A327381.P15722566364622997800

`A308680(eq[2, A141169(n)])`
-/

namespace A327381.P15722566364622997800
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141169 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308680 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A327381.P15722566364622997800

/-! ## A327381.P8336665996026734591

`A308680(eq[3, A002262(n)])`
-/

namespace A327381.P8336665996026734591
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308680 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A327381.P8336665996026734591

/-!
# A327382: Number of colored integer partitions of n such that four colors are used and parts differ by size or by color.

The programs for A327382, there is no canonical definition to state claims against.
-/

/-! ## A327382.P3531344931797150652

`A308680(∑[n+4]+10)`
-/

namespace A327382.P3531344931797150652
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308680 (∑ j ∈ Finset.range (n + 1), f1 j + 10)

end

end A327382.P3531344931797150652

/-! ## A327382.P10576466104847349024

`record[A308680(A153151(A167499(n)))]`
-/

namespace A327382.P10576466104847349024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308680 (A153151 (A167499 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A327382.P10576466104847349024

/-!
# A327383: Number of colored integer partitions of n such that five colors are used and parts differ by size or by color.

The programs for A327383, there is no canonical definition to state claims against.
-/

/-! ## A327383.P17671101777566608621

`A308680(A167499(n+4))`
-/

namespace A327383.P17671101777566608621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308680 (A167499 (n + 4)).toNat

end

end A327383.P17671101777566608621

/-! ## A327383.P14711714367857552260

`A308680(A000124(n+5)+4)`
-/

namespace A327383.P14711714367857552260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308680 (A000124 (n + 5) + 4).toNat

end

end A327383.P14711714367857552260

/-! ## A327383.P2434704853423870032

`A308680(A000096(n+4)+6)`
-/

namespace A327383.P2434704853423870032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308680 (A000096 (n + 4) + 6).toNat

end

end A327383.P2434704853423870032

/-! ## A327383.P2826448196833175940

`A308680(A000217(n+6)-(n+1))`
-/

namespace A327383.P2826448196833175940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308680 (A000217 (n + 6) - (n + 1 : ℤ)).toNat

end

end A327383.P2826448196833175940

/-! ## A327383.P6348614202396714040

`A308680(A052905(n)+A005408(n+9))`
-/

namespace A327383.P6348614202396714040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308680 (A052905 n + A005408 (n + 9)).toNat

end

end A327383.P6348614202396714040

/-!
# A327384: Number of colored integer partitions of n such that six colors are used and parts differ by size or by color.

The programs for A327384, there is no canonical definition to state claims against.
-/

/-! ## A327384.P11975542571658649222

`A308680(A167499(n+5)+1)`
-/

namespace A327384.P11975542571658649222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308680 (A167499 (n + 5) + 1).toNat

end

end A327384.P11975542571658649222

/-! ## A327384.P18186870339753740922

`A308680(A000096(n+5)+7)`
-/

namespace A327384.P18186870339753740922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308680 (A000096 (n + 5) + 7).toNat

end

end A327384.P18186870339753740922

/-! ## A327384.P7141775786748895660

`A308680(A000217(n+7)-(n+1))`
-/

namespace A327384.P7141775786748895660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308680 (A000217 (n + 7) - (n + 1 : ℤ)).toNat

end

end A327384.P7141775786748895660

/-! ## A327384.P4301604090208615757

`A308680(eq[7, A002260(n+1)])`
-/

namespace A327384.P4301604090208615757
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308680 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A327384.P4301604090208615757

/-! ## A327384.P10685028206044179498

`A308680(eq[6, A002262(n)])`
-/

namespace A327384.P10685028206044179498
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308680 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A327384.P10685028206044179498

/-! ## A327384.P8375102809836637468

`A308680(eq[8, A141169(n)])`
-/

namespace A327384.P8375102809836637468
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141169 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308680 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A327384.P8375102809836637468

/-!
# A327385: Number of colored integer partitions of n such that seven colors are used and parts differ by size or by color.

The programs for A327385, there is no canonical definition to state claims against.
-/

/-! ## A327385.P7691115002616450796

`A308680(A167499(n+6)+2)`
-/

namespace A327385.P7691115002616450796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308680 (A167499 (n + 6) + 2).toNat

end

end A327385.P7691115002616450796

/-! ## A327385.P689411816530023685

`A308680(A000096(n+6)+8)`
-/

namespace A327385.P689411816530023685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308680 (A000096 (n + 6) + 8).toNat

end

end A327385.P689411816530023685

/-! ## A327385.P15084446326815089355

`A308680(A000217(n+7)+7)`
-/

namespace A327385.P15084446326815089355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308680 (A000217 (n + 7) + 7).toNat

end

end A327385.P15084446326815089355

/-! ## A327385.P9428609209188287877

`A308680(A046691(n+5)+11)`
-/

namespace A327385.P9428609209188287877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308680 (A046691 (n + 5) + 11).toNat

end

end A327385.P9428609209188287877

/-! ## A327385.P8404752330021744827

`A308680(A223134(n+9)+A000124(n+5))`
-/

namespace A327385.P8404752330021744827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308680 (A223134 (n + 9) + A000124 (n + 5)).toNat

end

end A327385.P8404752330021744827

/-!
# A327386: Number of colored integer partitions of n such that eight colors are used and parts differ by size or by color.

The programs for A327386, there is no canonical definition to state claims against.
-/

/-! ## A327386.P263006899050833464

`A308680(A056126(n)+44)`
-/

namespace A327386.P263006899050833464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308680 (A056126 n + 44).toNat

end

end A327386.P263006899050833464

/-! ## A327386.P6411663729267716719

`A308680(A167499(n+7)+3)`
-/

namespace A327386.P6411663729267716719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308680 (A167499 (n + 7) + 3).toNat

end

end A327386.P6411663729267716719

/-! ## A327386.P12730982781074812296

`A308680(A133263(n+8)+6)`
-/

namespace A327386.P12730982781074812296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308680 (A133263 (n + 8) + 6).toNat

end

end A327386.P12730982781074812296

/-! ## A327386.P2054158630749492829

`A308680(A000096(n+7)+9)`
-/

namespace A327386.P2054158630749492829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308680 (A000096 (n + 7) + 9).toNat

end

end A327386.P2054158630749492829

/-! ## A327386.P14174951121634790887

`A308680(A000217(n+8)+8)`
-/

namespace A327386.P14174951121634790887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308680 (A000217 (n + 8) + 8).toNat

end

end A327386.P14174951121634790887

/-!
# A327387: Number of colored integer partitions of n such that nine colors are used and parts differ by size or by color.

The programs for A327387, there is no canonical definition to state claims against.
-/

/-! ## A327387.P5826520107368984069

`A308680(A167499(n+8)+4)`
-/

namespace A327387.P5826520107368984069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308680 (A167499 (n + 8) + 4).toNat

end

end A327387.P5826520107368984069

/-! ## A327387.P17005141914359084812

`A308680(A000096(n+8)+10)`
-/

namespace A327387.P17005141914359084812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308680 (A000096 (n + 8) + 10).toNat

end

end A327387.P17005141914359084812

/-! ## A327387.P2659116098522517274

`A308680(A000217(n+9)+9)`
-/

namespace A327387.P2659116098522517274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308680 (A000217 (n + 9) + 9).toNat

end

end A327387.P2659116098522517274

/-! ## A327387.P4977246948316317731

`A308680(A052905(n+8)-A005408(n+3))`
-/

namespace A327387.P4977246948316317731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308680 (A052905 (n + 8) - A005408 (n + 3)).toNat

end

end A327387.P4977246948316317731

/-! ## A327387.P1059398839974637740

`A308680(A052905(n+8)-(A005843(n)+7))`
-/

namespace A327387.P1059398839974637740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308680 (A052905 (n + 8) - (A005843 n + 7)).toNat

end

end A327387.P1059398839974637740

/-!
# A327388: Number of colored integer partitions of n such that ten colors are used and parts differ by size or by color.

The programs for A327388, there is no canonical definition to state claims against.
-/

/-! ## A327388.P16481232436046463381

`A308680(A167499(n+9)+5)`
-/

namespace A327388.P16481232436046463381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308680 (A167499 (n + 9) + 5).toNat

end

end A327388.P16481232436046463381

/-! ## A327388.P356881227989733719

`A308680(A000096(n+9)+11)`
-/

namespace A327388.P356881227989733719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308680 (A000096 (n + 9) + 11).toNat

end

end A327388.P356881227989733719

/-! ## A327388.P15235719266514749069

`A308680(A000217(n+11)-(n+1))`
-/

namespace A327388.P15235719266514749069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308680 (A000217 (n + 11) - (n + 1 : ℤ)).toNat

end

end A327388.P15235719266514749069

/-! ## A327388.P3401123198204573638

`A308680(A000124(n+11)-(n+2))`
-/

namespace A327388.P3401123198204573638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308680 (A000124 (n + 11) - (n + 2 : ℤ)).toNat

end

end A327388.P3401123198204573638

/-! ## A327388.P11114679449543047232

`A308680(A052905(n+10)-A008585(n+7))`
-/

namespace A327388.P11114679449543047232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308680 (A052905 (n + 10) - A008585 (n + 7)).toNat

end

end A327388.P11114679449543047232

/-!
# A327389: Maximum divisor of n that is prime or whose prime indices are pairwise coprime.

The programs for A327389, there is no canonical definition to state claims against.
-/

/-! ## A327389.P13270416578092693545

`A327512(2*(n+1))/2`
-/

namespace A327389.P13270416578092693545
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A327512 (2 * (n + 1)) : ℚ) / 2

end

end A327389.P13270416578092693545

/-! ## A327389.P7174812579160444787

`(n+1)/A327401(n+1)`
-/

namespace A327389.P7174812579160444787
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A327401 (n + 1) : ℚ)

end

end A327389.P7174812579160444787

/-! ## A327389.P8241074972975538218

`floor(A327512(n+2+n)/2)`
-/

namespace A327389.P8241074972975538218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A327512 (n + 2 + n) : ℚ) / 2⌋

end

end A327389.P8241074972975538218

/-! ## A327389.P6881425023687580195

`ceil(A327512(Δ[n²]+1)/2)`
-/

namespace A327389.P6881425023687580195
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A327512 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + 1).toNat : ℚ) / 2⌉

end

end A327389.P6881425023687580195

/-! ## A327389.P8256926171878534243

`(n+1)%A327512(2*n+2)`
-/

namespace A327389.P8256926171878534243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A327512 (2 * n + 2))

end

end A327389.P8256926171878534243

/-! ## A327389.P9828883633340177752

`gcd(n+1, A327512(4*(n+1)))`
-/

namespace A327389.P9828883633340177752
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A327512 (4 * (n + 1)))

end

end A327389.P9828883633340177752

/-! ## A327389.P12796876620715220364

`A004526(A327512(2*(n+1)))`
-/

namespace A327389.P12796876620715220364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A327512 (2 * (n + 1))).toNat

end

end A327389.P12796876620715220364

/-! ## A327389.P10251270259973651126

`(n+1)/A052126(A327656(n+1))`
-/

namespace A327389.P10251270259973651126
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A052126 (A327656 (n + 1)).toNat : ℚ)

end

end A327389.P10251270259973651126

/-! ## A327389.P8679928946527915050

`lcm(A006530(n+1), A327512(n+1))`
-/

namespace A327389.P8679928946527915050
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A006530 (n + 1)) (A327512 (n + 1))

end

end A327389.P8679928946527915050

/-! ## A327389.P9107790239615541453

`A327531(n+1)/A327514(n+1)*A327535(n+1)`
-/

namespace A327389.P9107790239615541453
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A327531 (n + 1) : ℚ) / (A327514 (n + 1) : ℚ) * (A327535 (n + 1) : ℚ)

end

end A327389.P9107790239615541453

/-!
# A327390: Number of connected divisors of n.

The programs for A327390, there is no canonical definition to state claims against.
-/

/-! ## A327390.P14163022546686346397

`A322306(n+1)+1`
-/

namespace A327390.P14163022546686346397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322306 (n + 1) + 1

end

end A327390.P14163022546686346397

/-! ## A327390.P2628582685531783784

`A327657(n+1)+n%2`
-/

namespace A327390.P2628582685531783784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327657 (n + 1) + ((n % 2 : ℕ) : ℤ)

end

end A327390.P2628582685531783784

/-! ## A327390.P11214466283048001122

`A327657(2*(n+1))+and(1, n)`
-/

namespace A327390.P11214466283048001122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327657 (2 * (n + 1)) + (Nat.land 1 n : ℤ)

end

end A327390.P11214466283048001122

/-! ## A327390.P15427403943653799627

`A327657(n+1)+A000035(n)`
-/

namespace A327390.P15427403943653799627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327657 (n + 1) + A000035 n

end

end A327390.P15427403943653799627

/-! ## A327390.P1778864306156499149

`A372584(n)+A327657(n+1)`
-/

namespace A327390.P1778864306156499149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372584 n + A327657 (n + 1)

end

end A327390.P1778864306156499149

/-! ## A327390.P896132499373064828

`A327657(n+1)+log2(A000034(n))`
-/

namespace A327390.P896132499373064828
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A327657 (n + 1) : ℝ) + Real.logb 2 (A000034 n : ℝ)

end

end A327390.P896132499373064828

/-! ## A327390.P8015186813897778982

`A327657(n+1)+Δ[A004526(n)]`
-/

namespace A327390.P8015186813897778982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327657 (n + 1) + (f1 (n + 1) - f1 n)

end

end A327390.P8015186813897778982

/-! ## A327390.P12902670223610903116

`A327657(n+1)+A059841(n+1)`
-/

namespace A327390.P12902670223610903116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327657 (n + 1) + A059841 (n + 1)

end

end A327390.P12902670223610903116

/-! ## A327390.P5379235051343450486

`A327657(n+1)+A000045(and(1, -n))`
-/

namespace A327390.P5379235051343450486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327657 (n + 1) + A000045 (Int.land 1 (-(n : ℤ))).toNat

end

end A327390.P5379235051343450486

/-! ## A327390.P11731245658823622896

`A327657(n+1)+1-A374134(n+1)`
-/

namespace A327390.P11731245658823622896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327657 (n + 1) + (1 - A374134 (n + 1))

end

end A327390.P11731245658823622896

/-!
# A327391: Number of divisors of n that are 1, prime, or whose prime indices are pairwise coprime.

The programs for A327391, there is no canonical definition to state claims against.
-/

/-! ## A327391.P8674817784944455464

`A327513(n+1)+∑{p}[n+1, #%2]`
-/

namespace A327391.P8674817784944455464
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327513 (n + 1) + ((∑ p ∈ Nat.primeFactors (f1 n), p % 2 : ℕ) : ℤ)

end

end A327391.P8674817784944455464

/-! ## A327391.P23541879341419168

`∑{d}[n+1, A320656(A290104(#))]`
-/

namespace A327391.P23541879341419168
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A320656 (A290104 d).toNat

end

end A327391.P23541879341419168

/-! ## A327391.P6107140466993217472

`A327513(n+1)+A005087(n+1)`
-/

namespace A327391.P6107140466993217472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327513 (n + 1) + A005087 (n + 1)

end

end A327391.P6107140466993217472

/-! ## A327391.P16216817421603662623

`A327513(n+1)+log2(A068068(n+1))`
-/

namespace A327391.P16216817421603662623
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A327513 (n + 1) : ℝ) + Real.logb 2 (A068068 (n + 1) : ℝ)

end

end A327391.P16216817421603662623

/-! ## A327391.P3653380885510126393

`A001511(n+1)*A316556(2*(n+1))`
-/

namespace A327391.P3653380885510126393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (n + 1) * A316556 (2 * (n + 1))

end

end A327391.P3653380885510126393

/-! ## A327391.P17688045964473057886

`A327513(n+1)+A001221(2*(n+1))-1`
-/

namespace A327391.P17688045964473057886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327513 (n + 1) + (A001221 (2 * (n + 1)) - 1)

end

end A327391.P17688045964473057886

/-! ## A327391.P2775182594682928614

`A327513(n+1)+A001221((n+1)/2^val(n+1, 2))`
-/

namespace A327391.P2775182594682928614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327513 (n + 1) + A001221 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat

end

end A327391.P2775182594682928614

/-! ## A327391.P552963247295527282

`A327513(n+1)+A001221(A000265(n+1))`
-/

namespace A327391.P552963247295527282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327513 (n + 1) + A001221 (A000265 (n + 1)).toNat

end

end A327391.P552963247295527282

/-! ## A327391.P4569143094404553235

`A327513(n+1)+A001221(A064989(n+1))`
-/

namespace A327391.P4569143094404553235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327513 (n + 1) + A001221 (A064989 (n + 1)).toNat

end

end A327391.P4569143094404553235

/-! ## A327391.P17327299106668383303

`A327513(n+1)+A072273(A007947(n+1))`
-/

namespace A327391.P17327299106668383303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327513 (n + 1) + A072273 (A007947 (n + 1)).toNat

end

end A327391.P17327299106668383303

/-!
# A327392: Irregular triangle read by rows giving the connected components of the prime indices of n.

The programs for A327392, there is no canonical definition to state claims against.
-/

/-! ## A327392.P10647934724264169187

`A112798(A011760(n+2)%A307745(n+1))`
-/

namespace A327392.P10647934724264169187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112798 (Int.tmod (A011760 (n + 2)) (A307745 (n + 1))).toNat

end

end A327392.P10647934724264169187

/-! ## A327392.P17187277464141993588

`A112798(lt[A329644(2*n+5), A331381(2*(n+2))])`
-/

namespace A327392.P17187277464141993588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329644 (2 * n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331381 (2 * (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112798 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A327392.P17187277464141993588

/-! ## A327392.P14353111582063565106

`A112798(lt[A308022(n+4), A081608(3*n)])`
-/

namespace A327392.P14353111582063565106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308022 (n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081608 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112798 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A327392.P14353111582063565106

/-! ## A327392.P6100056519270246184

`A112798(lt[A248664(n+1), A071160(n)])`
-/

namespace A327392.P6100056519270246184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248664 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071160 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112798 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A327392.P6100056519270246184

/-! ## A327392.P14669052634661638199

`A112049(A068821(n+1))`
-/

namespace A327392.P14669052634661638199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112049 (A068821 (n + 1)).toNat

end

end A327392.P14669052634661638199

/-!
# A327393: Maximum stable divisor of n.

The programs for A327393, there is no canonical definition to state claims against.
-/

/-! ## A327393.P17990521312893472860

`(n+1)/A327402(n+1)`
-/

namespace A327393.P17990521312893472860
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A327402 (n + 1) : ℚ)

end

end A327393.P17990521312893472860

/-! ## A327393.P10407515374926926226

`floor((Δ[n²]-n)/A327402(ϕ²-(ϕ-n)))`
-/

namespace A327393.P10407515374926926226
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ) : ℚ) / (A327402 (SequenceMachineLib.roundAway (Real.goldenRatio ^ 2 - (Real.goldenRatio - (n : ℝ)))).toNat : ℚ)⌋

end

end A327393.P10407515374926926226

/-! ## A327393.P6034606875884377078

`-(xor(n, -1)/A327402(A008611(3*n)))`
-/

namespace A327393.P6034606875884377078
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  -((Int.xor (n : ℤ) (-1) : ℚ) / (A327402 (A008611 (3 * n)).toNat : ℚ))

end

end A327393.P6034606875884377078

/-! ## A327393.P4793048763870840899

`A010766(A327402(n+1)+∑[n])`
-/

namespace A327393.P4793048763870840899
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010766 (A327402 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A327393.P4793048763870840899

/-! ## A327393.P8870944806240376918

`A049834(A327402(n+1)+∑[n])`
-/

namespace A327393.P8870944806240376918
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049834 (A327402 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A327393.P8870944806240376918

/-! ## A327393.P15444068935496063121

`A051537(A327402(n+1)+∑[n])`
-/

namespace A327393.P15444068935496063121
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051537 (A327402 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A327393.P15444068935496063121

/-! ## A327393.P12839471502927202331

`A054531(A327402(n+1)+∑[n])`
-/

namespace A327393.P12839471502927202331
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054531 (A327402 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A327393.P12839471502927202331

/-! ## A327393.P13439950328302270202

`A126988(A327402(n+1)+∑[n])`
-/

namespace A327393.P13439950328302270202
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126988 (A327402 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A327393.P13439950328302270202

/-! ## A327393.P6987547478286527942

`A267177(A327402(n+1)+n²)`
-/

namespace A327393.P6987547478286527942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267177 (A327402 (n + 1) + (n ^ 2 : ℤ)).toNat

end

end A327393.P6987547478286527942

/-!
# A327394: Number of stable divisors of n.

The programs for A327394, there is no canonical definition to state claims against.
-/

/-! ## A327394.P78923480749104315

`∑{d}[n+1, A378442(#)]`
-/

namespace A327394.P78923480749104315
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A378442 d

end

end A327394.P78923480749104315

/-! ## A327394.P2726775431963695849

`A010054(A376704(n+4))+A001222(2*(n+1))`
-/

namespace A327394.P2726775431963695849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (A376704 (n + 4)).toNat + A001222 (2 * (n + 1))

end

end A327394.P2726775431963695849

/-! ## A327394.P9381495508196721779

`A001222((and(A173557(n+1), A179612(n+1))+1)*(n+1))`
-/

namespace A327394.P9381495508196721779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 ((Int.land (A173557 (n + 1)) (A179612 (n + 1)) + 1) * (n + 1 : ℤ)).toNat

end

end A327394.P9381495508196721779

/-! ## A327394.P8436125180139722542

`A374326(A267788(n+1))+A001222(n+1)`
-/

namespace A327394.P8436125180139722542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374326 (A267788 (n + 1)).toNat + A001222 (n + 1)

end

end A327394.P8436125180139722542

/-! ## A327394.P14015999654559958098

`A001511(A065672(2*n+3))+A001222(n+1)`
-/

namespace A327394.P14015999654559958098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A065672 (2 * n + 3)).toNat + A001222 (n + 1)

end

end A327394.P14015999654559958098

/-!
# A327395: Quotient of n over the maximum connected divisor of n.

The programs for A327395, there is no canonical definition to state claims against.
-/

/-! ## A327395.P9257211409210261373

`(n+1)/A327076(n+1)`
-/

namespace A327395.P9257211409210261373
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A327076 (n + 1) : ℚ)

end

end A327395.P9257211409210261373

/-! ## A327395.P13592897732722949087

`A327405(gcd(n+1, ∏{p}[n+1, (n+1)/#]))`
-/

namespace A327395.P13592897732722949087
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327405 (Int.gcd (n + 1 : ℤ) (SequenceMachineLib.roundAway (∏ p ∈ Nat.primeFactors (f1 n), (n + 1 : ℚ) / (p : ℚ))))

end

end A327395.P13592897732722949087

/-! ## A327395.P13299464205246435572

`A327405(n+1)/∏{p}[n+1, 2-2%#]!`
-/

namespace A327395.P13299464205246435572
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A327405 (n + 1) : ℚ) / (Nat.factorial (∏ p ∈ Nat.primeFactors (f1 n), (2 - ((2 % p : ℕ) : ℤ))).toNat : ℚ)

end

end A327395.P13299464205246435572

/-! ## A327395.P9463798526019580253

`A327405((n+1)/ceil((n+1)/∏{p}[n+1, (n+1)/#]))`
-/

namespace A327395.P9463798526019580253
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327405 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (⌈(n + 1 : ℚ) / (∏ p ∈ Nat.primeFactors (f1 n), (n + 1 : ℚ) / (p : ℚ))⌉ : ℚ))).toNat

end

end A327395.P9463798526019580253

/-! ## A327395.P12518896440175714568

`A327405(A048671(n+1))`
-/

namespace A327395.P12518896440175714568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327405 (A048671 (n + 1)).toNat

end

end A327395.P12518896440175714568

/-! ## A327395.P18231777754167798433

`A327405(gcd(n+1, A003418(n)))`
-/

namespace A327395.P18231777754167798433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327405 (Int.gcd (n + 1 : ℤ) (A003418 n))

end

end A327395.P18231777754167798433

/-! ## A327395.P14285980022884710392

`gcd(A012125(n), A327405(n+1))`
-/

namespace A327395.P14285980022884710392
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A012125 n) (A327405 (n + 1))

end

end A327395.P14285980022884710392

/-! ## A327395.P2464358736922559159

`gcd(A327405((n+1)²), A153152(n))`
-/

namespace A327395.P2464358736922559159
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A327405 ((n + 1) ^ 2)) (A153152 n)

end

end A327395.P2464358736922559159

/-! ## A327395.P6638752158215240717

`A327405((n+1)/A014963(n+1))`
-/

namespace A327395.P6638752158215240717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327405 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A014963 (n + 1) : ℚ))).toNat

end

end A327395.P6638752158215240717

/-! ## A327395.P6776244960010315648

`(n+1)/(gcd(2, A006530(n+1))*A327656(n+1))`
-/

namespace A327395.P6776244960010315648
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((Int.gcd 2 (A006530 (n + 1)) : ℤ) * A327656 (n + 1) : ℚ)

end

end A327395.P6776244960010315648

/-!
# A327396: Triangle read by rows: T(n,k) is the number of n-bead necklace structures with beads of exactly k colors and no adjacent beads having the same color.

The programs for A327396, there is no canonical definition to state claims against.
-/

/-! ## A327396.P3146721368347793103

`A298848(A074650(n+1))%A059268(n)`
-/

namespace A327396.P3146721368347793103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A298848 (A074650 (n + 1)).toNat) (A059268 n)

end

end A327396.P3146721368347793103

/-! ## A327396.P15358285559651399854

`A326625(A330341(n+1))`
-/

namespace A327396.P15358285559651399854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326625 (A330341 (n + 1)).toNat

end

end A327396.P15358285559651399854

/-! ## A327396.P13894486350115287973

`A316695(A330618(n+1)+1)`
-/

namespace A327396.P13894486350115287973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316695 (A330618 (n + 1) + 1).toNat

end

end A327396.P13894486350115287973

/-! ## A327396.P7787274440513623535

`A000120(A029218(A333429(n+1))^2)`
-/

namespace A327396.P7787274440513623535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A029218 (A333429 (n + 1)).toNat ^ 2).toNat

end

end A327396.P7787274440513623535

/-! ## A327396.P11699533404495894214

`A058177(A118343(n))`
-/

namespace A327396.P11699533404495894214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058177 (A118343 n).toNat

end

end A327396.P11699533404495894214

/-!
# A327397: Number of n-bead necklace structures with beads of exactly three colors and no adjacent beads having the same color.

The programs for A327397, there is no canonical definition to state claims against.
-/

/-! ## A327397.P4215988975775262530

`A306888(n+1)-A000035(n)`
-/

namespace A327397.P4215988975775262530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306888 (n + 1) - A000035 n

end

end A327397.P4215988975775262530

/-! ## A327397.P6272645058224905890

`A306888(n+1)-A131734(n)²`
-/

namespace A327397.P6272645058224905890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306888 (n + 1) - A131734 n ^ 2

end

end A327397.P6272645058224905890

/-! ## A327397.P4091269520828029997

`A306888(n+1)-Δ[A004526(n)]`
-/

namespace A327397.P4091269520828029997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306888 (n + 1) - (f1 (n + 1) - f1 n)

end

end A327397.P4091269520828029997

/-! ## A327397.P7793944691786154002

`A306888(n+1)-Δ[A008619(n)]`
-/

namespace A327397.P7793944691786154002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306888 (n + 1) - (f1 (n + 1) - f1 n)

end

end A327397.P7793944691786154002

/-! ## A327397.P30764065473879134

`A306888(n+1)-char[A005408(n)]`
-/

namespace A327397.P30764065473879134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306888 (n + 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A327397.P30764065473879134

/-! ## A327397.P10758531107964989867

`A306888(n+1)-A059841(n+1)`
-/

namespace A327397.P10758531107964989867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306888 (n + 1) - A059841 (n + 1)

end

end A327397.P10758531107964989867

/-! ## A327397.P2749730228893011405

`A306888(n+1)-and(1, A017005(n))`
-/

namespace A327397.P2749730228893011405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306888 (n + 1) - Int.land 1 (A017005 n)

end

end A327397.P2749730228893011405

/-! ## A327397.P9319522398966536786

`A306888(n+1)-and(1, A057164(A057164(n)))`
-/

namespace A327397.P9319522398966536786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306888 (n + 1) - Int.land 1 (A057164 (A057164 n).toNat)

end

end A327397.P9319522398966536786

/-! ## A327397.P11378754205945222564

`A327396(A145018(n+1)-A057427(n))`
-/

namespace A327397.P11378754205945222564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327396 (A145018 (n + 1) - A057427 n).toNat

end

end A327397.P11378754205945222564

/-!
# A327398: Maximum connected squarefree divisor of n.

The programs for A327398, there is no canonical definition to state claims against.
-/

/-! ## A327398.P7112787513107329743

`∏{p}[n+1, #]/A327395(∏{p}[n+1, #])`
-/

namespace A327398.P7112787513107329743
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) / (A327395 (∏ p ∈ Nat.primeFactors (f2 n), p) : ℚ)

end

end A327398.P7112787513107329743

/-! ## A327398.P2113062370173546468

`A327076(∏{p}[n+1, #])`
-/

namespace A327398.P2113062370173546468
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327076 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A327398.P2113062370173546468

/-! ## A327398.P14192811103792260170

`A327076(abs(∏{p}[2*n-(n-1), -#]))`
-/

namespace A327398.P14192811103792260170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - ((n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327076 |∏ p ∈ Nat.primeFactors (f1 n).natAbs, (-(p : ℤ))|.toNat

end

end A327398.P14192811103792260170

/-! ## A327398.P9877155094924008317

`A327076(A007947(n+1))`
-/

namespace A327398.P9877155094924008317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327076 (A007947 (n + 1)).toNat

end

end A327398.P9877155094924008317

/-! ## A327398.P11786955715544593721

`A327076(A015052(n+1))`
-/

namespace A327398.P11786955715544593721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327076 (A015052 (n + 1)).toNat

end

end A327398.P11786955715544593721

/-! ## A327398.P178686189270427427

`A327076(A015053(n+1))`
-/

namespace A327398.P178686189270427427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327076 (A015053 (n + 1)).toNat

end

end A327398.P178686189270427427

/-! ## A327398.P3655570036122798127

`A327076(A019555(n+1))`
-/

namespace A327398.P3655570036122798127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327076 (A019555 (n + 1)).toNat

end

end A327398.P3655570036122798127

/-! ## A327398.P6824969005188850168

`A327076(A053166(n+1))`
-/

namespace A327398.P6824969005188850168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327076 (A053166 (n + 1)).toNat

end

end A327398.P6824969005188850168

/-! ## A327398.P8242088130381601254

`A327076(A066069(n+1))`
-/

namespace A327398.P8242088130381601254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327076 (A066069 (n + 1)).toNat

end

end A327398.P8242088130381601254

/-! ## A327398.P7052958904587352464

`A327076(A386469(n+1))`
-/

namespace A327398.P7052958904587352464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327076 (A386469 (n + 1)).toNat

end

end A327398.P7052958904587352464

/-!
# A327399: Number of factorizations of n that are constant or whose distinct factors are pairwise coprime.

The programs for A327399, there is no canonical definition to state claims against.
-/

/-! ## A327399.P10951407402819408290

`A327695(n+1)+A089723(n+1)`
-/

namespace A327399.P10951407402819408290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327695 (n + 1) + A089723 (n + 1)

end

end A327399.P10951407402819408290

/-! ## A327399.P11306958231046861662

`A305149(n+1)-val(A305150(n+1), 3)`
-/

namespace A327399.P11306958231046861662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305149 (n + 1) - (SequenceMachineLib.valuation (A305150 (n + 1)).toNat 3 : ℤ)

end

end A327399.P11306958231046861662

/-! ## A327399.P2627530122725955425

`round(A327695(n+1)+sqrt(A295920(n+1)))`
-/

namespace A327399.P2627530122725955425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A327695 (n + 1) : ℝ) + Real.sqrt (A295920 (n + 1) : ℝ))

end

end A327399.P2627530122725955425

/-! ## A327399.P2365346076612038168

`A327695(n+1)+A000005(A316782(n+1))`
-/

namespace A327399.P2365346076612038168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327695 (n + 1) + A000005 (A316782 (n + 1)).toNat

end

end A327399.P2365346076612038168

/-! ## A327399.P7628950832148562546

`A305149(n+1)-A159459(A305150(n+1))`
-/

namespace A327399.P7628950832148562546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305149 (n + 1) - A159459 (A305150 (n + 1)).toNat

end

end A327399.P7628950832148562546

/-! ## A327399.P5810738914476320686

`A327695(n+1)+A001222(A316789(n+1)+2)`
-/

namespace A327399.P5810738914476320686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327695 (n + 1) + A001222 (A316789 (n + 1) + 2).toNat

end

end A327399.P5810738914476320686

/-! ## A327399.P17185264217904563616

`A327695(n+1)+∏{e}[A052409(n+1), A000040(#)]`
-/

namespace A327399.P17185264217904563616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052409 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327695 (n + 1) + ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000040 (Nat.factorization (f1 n).natAbs p)

end

end A327399.P17185264217904563616

/-! ## A327399.P1833601880281970573

`A327695(n+1)+∏{e}[A316782(n+1), A000040(#)]`
-/

namespace A327399.P1833601880281970573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327695 (n + 1) + ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000040 (Nat.factorization (f1 n).natAbs p)

end

end A327399.P1833601880281970573

/-! ## A327399.P7797936809425127653

`A000005(n+1)+A327695(n+1)-A178638(n+1)`
-/

namespace A327399.P7797936809425127653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) + (A327695 (n + 1) - A178638 (n + 1))

end

end A327399.P7797936809425127653

