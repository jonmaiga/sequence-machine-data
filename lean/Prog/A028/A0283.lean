import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
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
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
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
import Seq.B006.C000
import Seq.B007.C000
import Seq.B008.C000
import Seq.B008.C001
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
import Seq.B013.C000
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
# A028300: a(1) = 1; thereafter a(n+1) = a(n)^2 + n.

The programs for A028300, the canonical program `A028300.P12207537077427160718` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A028300 has offset 1).

The definition of A028300 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A028300.P12207537077427160718

`a(n-1)²+n` with `a(0)=1`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A028300

/-- `a(n-1)²+n` -/
def P12207537077427160718.Spec : Prop :=
  ∀ n, (P12207537077427160718.a n : ℤ) = A028300 (n + 1)

theorem P12207537077427160718.correct : P12207537077427160718.Spec := by
  intro n
  simp only [A028300, Nat.add_sub_cancel]

end A028300

/-! ## A028300.P8402368624823739052

`a(n-1)^2+n` with `a(0)=1`
-/

namespace A028300.P8402368624823739052
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) ^ 2 + n

end

end A028300.P8402368624823739052

namespace A028300

/-- `a(n-1)^2+n` -/
def P8402368624823739052.Spec : Prop :=
  ∀ n, (P8402368624823739052.a n : ℤ) = A028300 (n + 1)

theorem P8402368624823739052.correct : P8402368624823739052.Spec := by
  intro n
  simp only [A028300, Nat.add_sub_cancel, A028300.P8402368624823739052.a, A028300.P12207537077427160718.a, SequenceMachineLib.memo_apply]

end A028300

/-! ## A028300.P11048155491857585406

`root(a(n-1), 1/2)+n` with `a(0)=1`
-/

namespace A028300.P11048155491857585406
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) ^ (1 / ((1 : ℚ) / 2 : ℝ)) + (n : ℝ)

end

end A028300.P11048155491857585406

namespace A028300

/-- `root(a(n-1), 1/2)+n` -/
def P11048155491857585406.Spec : Prop :=
  ∀ n, P11048155491857585406.a n = (A028300 (n + 1) : ℝ)

end A028300

/-! ## A028300.P7618339388724015361

`n-or(4, -a(n-1)²)` with `a(0)=1`
-/

namespace A028300.P7618339388724015361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℤ) - Int.lor 4 (-(a (n - 1) ^ 2))

end

end A028300.P7618339388724015361

namespace A028300

/-- `n-or(4, -a(n-1)²)` -/
def P7618339388724015361.Spec : Prop :=
  ∀ n, P7618339388724015361.a n = A028300 (n + 1)

end A028300

/-! ## A028300.P6880925500552571138

`2*n-(n-a(n-1)²)` with `a(0)=1`
-/

namespace A028300.P6880925500552571138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (2 * n : ℤ) - ((n : ℤ) - a (n - 1) ^ 2)

end

end A028300.P6880925500552571138

namespace A028300

/-- `2*n-(n-a(n-1)²)` -/
def P6880925500552571138.Spec : Prop :=
  ∀ n, P6880925500552571138.a n = A028300 (n + 1)

end A028300

/-!
# A028301: a(n) = a(n-1)^2 + prime(n-1), with a(1) = 1.

The programs for A028301, there is no canonical definition to state claims against.
-/

/-! ## A028301.P3189850422657854210

`A000040(n)+a(n-1)²` with `a(0)=1`
-/

namespace A028301.P3189850422657854210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000040 n + a (n - 1) ^ 2

end

end A028301.P3189850422657854210

/-! ## A028301.P12362010850310094867

`A002200(n)+a(n-1)²` with `a(0)=1`
-/

namespace A028301.P12362010850310094867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A002200 n + a (n - 1) ^ 2

end

end A028301.P12362010850310094867

/-! ## A028301.P155324116060470914

`A004051(n)+a(n-1)²` with `a(0)=1`
-/

namespace A028301.P155324116060470914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A004051 n + a (n - 1) ^ 2

end

end A028301.P155324116060470914

/-! ## A028301.P15877451755122597232

`A006514(n)+a(n-1)²` with `a(0)=1`
-/

namespace A028301.P15877451755122597232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A006514 n + a (n - 1) ^ 2

end

end A028301.P15877451755122597232

/-! ## A028301.P6004931497874408186

`A028864(n)+a(n-1)²` with `a(0)=1`
-/

namespace A028301.P6004931497874408186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A028864 n + a (n - 1) ^ 2

end

end A028301.P6004931497874408186

/-!
# A028302: a(n) = prime(n)*Catalan(n).

The programs for A028302, the canonical program `A028302.P1521673107365902007` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A028302 has offset 1).

The definition of A028302 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A028302.P1521673107365902007

`Δ[A014138(n)]*p?[A080412(n)]`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A028302

/-- `Δ[A014138(n)]*p?[A080412(n)]` -/
def P1521673107365902007.Spec : Prop :=
  ∀ n, P1521673107365902007.a n = A028302 (n + 1)

theorem P1521673107365902007.correct : P1521673107365902007.Spec := by
  intro n
  simp only [A028302, Nat.add_sub_cancel]

end A028302

/-! ## A028302.P16761432726800086143

`record[A126120(n)]*p?[A056847(n)]`
-/

namespace A028302.P16761432726800086143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126120 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056847 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

end

end A028302.P16761432726800086143

namespace A028302

/-- `record[A126120(n)]*p?[A056847(n)]` -/
def P16761432726800086143.Spec : Prop :=
  ∀ n, P16761432726800086143.a n = A028302 (n + 1)

end A028302

/-! ## A028302.P10464390264909928775

`A000040(n+1)*∑[A071724(n)]`
-/

namespace A028302.P10464390264909928775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071724 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A028302.P10464390264909928775

namespace A028302

/-- `A000040(n+1)*∑[A071724(n)]` -/
def P10464390264909928775.Spec : Prop :=
  ∀ n, P10464390264909928775.a n = A028302 (n + 1)

end A028302

/-! ## A028302.P6648758230592638160

`A000040(n+1)*Δ[A014137(n)]`
-/

namespace A028302.P6648758230592638160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014137 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * (f1 (n + 1) - f1 n)

end

end A028302.P6648758230592638160

namespace A028302

/-- `A000040(n+1)*Δ[A014137(n)]` -/
def P6648758230592638160.Spec : Prop :=
  ∀ n, P6648758230592638160.a n = A028302 (n + 1)

end A028302

/-! ## A028302.P16437487144473972572

`A000040(n+1)*Δ[A014138(n)]`
-/

namespace A028302.P16437487144473972572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014138 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * (f1 (n + 1) - f1 n)

end

end A028302.P16437487144473972572

namespace A028302

/-- `A000040(n+1)*Δ[A014138(n)]` -/
def P16437487144473972572.Spec : Prop :=
  ∀ n, P16437487144473972572.a n = A028302 (n + 1)

end A028302

/-! ## A028302.P5216007642295223519

`record[A097331(n)]*A000040(n+1)`
-/

namespace A028302.P5216007642295223519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097331 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A000040 (n + 1)

end

end A028302.P5216007642295223519

namespace A028302

/-- `record[A097331(n)]*A000040(n+1)` -/
def P5216007642295223519.Spec : Prop :=
  ∀ n, P5216007642295223519.a n = A028302 (n + 1)

end A028302

/-! ## A028302.P8389625171590375428

`A000040(n+1)*record[A099364(n)]`
-/

namespace A028302.P8389625171590375428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099364 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A028302.P8389625171590375428

namespace A028302

/-- `A000040(n+1)*record[A099364(n)]` -/
def P8389625171590375428.Spec : Prop :=
  ∀ n, P8389625171590375428.a n = A028302 (n + 1)

end A028302

/-! ## A028302.P4318002445605143898

`A000040(n+1)*record[A126120(n)]`
-/

namespace A028302.P4318002445605143898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126120 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A028302.P4318002445605143898

namespace A028302

/-- `A000040(n+1)*record[A126120(n)]` -/
def P4318002445605143898.Spec : Prop :=
  ∀ n, P4318002445605143898.a n = A028302 (n + 1)

end A028302

/-! ## A028302.P504256476029704228

`A000040(n+1)*A000108(n+1)`
-/

namespace A028302.P504256476029704228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A000108 (n + 1)

end

end A028302.P504256476029704228

namespace A028302

/-- `A000040(n+1)*A000108(n+1)` -/
def P504256476029704228.Spec : Prop :=
  ∀ n, P504256476029704228.a n = A028302 (n + 1)

end A028302

/-! ## A028302.P10869245770700384133

`A000108(n+1)*A008578(n+2)`
-/

namespace A028302.P10869245770700384133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (n + 1) * A008578 (n + 2)

end

end A028302.P10869245770700384133

namespace A028302

/-- `A000108(n+1)*A008578(n+2)` -/
def P10869245770700384133.Spec : Prop :=
  ∀ n, P10869245770700384133.a n = A028302 (n + 1)

end A028302

/-! ## A028302.P30664822697230904

`A000040(n+1)*A120588(n+2)`
-/

namespace A028302.P30664822697230904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A120588 (n + 2)

end

end A028302.P30664822697230904

namespace A028302

/-- `A000040(n+1)*A120588(n+2)` -/
def P30664822697230904.Spec : Prop :=
  ∀ n, P30664822697230904.a n = A028302 (n + 1)

end A028302

/-! ## A028302.P11376101097924263598

`A000040(n+1)*A026008(2*n)`
-/

namespace A028302.P11376101097924263598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A026008 (2 * n)

end

end A028302.P11376101097924263598

namespace A028302

/-- `A000040(n+1)*A026008(2*n)` -/
def P11376101097924263598.Spec : Prop :=
  ∀ n, P11376101097924263598.a n = A028302 (n + 1)

end A028302

/-! ## A028302.P12709487813584357152

`A000040(n+1)*A099364(2*n)`
-/

namespace A028302.P12709487813584357152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A099364 (2 * n)

end

end A028302.P12709487813584357152

namespace A028302

/-- `A000040(n+1)*A099364(2*n)` -/
def P12709487813584357152.Spec : Prop :=
  ∀ n, P12709487813584357152.a n = A028302 (n + 1)

end A028302

/-! ## A028302.P18184806707712051517

`record[A097331(n)]*record[A006530(n+2)]`
-/

namespace A028302.P18184806707712051517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097331 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

end

end A028302.P18184806707712051517

namespace A028302

/-- `record[A097331(n)]*record[A006530(n+2)]` -/
def P18184806707712051517.Spec : Prop :=
  ∀ n, P18184806707712051517.a n = A028302 (n + 1)

end A028302

/-! ## A028302.P8923584960397179449

`record[A097331(n)]*record[A020639(n+2)]`
-/

namespace A028302.P8923584960397179449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097331 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

end

end A028302.P8923584960397179449

namespace A028302

/-- `record[A097331(n)]*record[A020639(n+2)]` -/
def P8923584960397179449.Spec : Prop :=
  ∀ n, P8923584960397179449.a n = A028302 (n + 1)

end A028302

/-! ## A028302.P11635362059500004561

`A000108(n+1)*record[A006530(n+2)]`
-/

namespace A028302.P11635362059500004561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (n + 1) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A028302.P11635362059500004561

namespace A028302

/-- `A000108(n+1)*record[A006530(n+2)]` -/
def P11635362059500004561.Spec : Prop :=
  ∀ n, P11635362059500004561.a n = A028302 (n + 1)

end A028302

/-! ## A028302.P16527335314895282179

`record[A014963(n+2)]*A000108(n+1)`
-/

namespace A028302.P16527335314895282179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A000108 (n + 1)

end

end A028302.P16527335314895282179

namespace A028302

/-- `record[A014963(n+2)]*A000108(n+1)` -/
def P16527335314895282179.Spec : Prop :=
  ∀ n, P16527335314895282179.a n = A028302 (n + 1)

end A028302

/-! ## A028302.P14857703827256282015

`A000108(n+1)*record[A020639(n+2)]`
-/

namespace A028302.P14857703827256282015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (n + 1) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A028302.P14857703827256282015

namespace A028302

/-- `A000108(n+1)*record[A020639(n+2)]` -/
def P14857703827256282015.Spec : Prop :=
  ∀ n, P14857703827256282015.a n = A028302 (n + 1)

end A028302

/-! ## A028302.P3996670071358005840

`A000108(n+1)*A067747(2*n+1)`
-/

namespace A028302.P3996670071358005840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (n + 1) * A067747 (2 * n + 1)

end

end A028302.P3996670071358005840

namespace A028302

/-- `A000108(n+1)*A067747(2*n+1)` -/
def P3996670071358005840.Spec : Prop :=
  ∀ n, P3996670071358005840.a n = A028302 (n + 1)

end A028302

/-! ## A028302.P4465621922757955975

`A000108(n+1)*p?[comp[A018252(n+1)]]`
-/

namespace A028302.P4465621922757955975
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (n + 1) * (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ)

end

end A028302.P4465621922757955975

namespace A028302

/-- `A000108(n+1)*p?[comp[A018252(n+1)]]` -/
def P4465621922757955975.Spec : Prop :=
  ∀ n, P4465621922757955975.a n = A028302 (n + 1)

end A028302

/-!
# A028303: a(n) = floor( binomial(n, floor(n/2))/(1 + ceiling(n/2)) ) (interpolates between Catalan numbers).

The programs for A028303, the canonical program `A028303.P13740220522913106850` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A028303 has offset 0).

The definition of A028303 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(C(n, floor(n/2))/(1+ceil(n/2)))` (program `A028303.P13740220522913106850`, by `A028303.P13740220522913106850.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A028303.P14538770142863936830

`floor(A001405(n)/A004526(n+3))`
-/

namespace A028303.P14538770142863936830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A001405 n : ℚ) / (A004526 (n + 3) : ℚ)⌋

end

end A028303.P14538770142863936830

namespace A028303

/-- `floor(A001405(n)/A004526(n+3))` -/
def P14538770142863936830.Spec : Prop :=
  ∀ n, P14538770142863936830.a n = A028303 n

end A028303

/-! ## A028303.P13740220522913106850

`floor(C(n, floor(n/2))/(1+ceil(n/2)))`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A028303

/-- `floor(C(n, floor(n/2))/(1+ceil(n/2)))` -/
def P13740220522913106850.Spec : Prop :=
  ∀ n, P13740220522913106850.a n = A028303 n

theorem P13740220522913106850.correct : P13740220522913106850.Spec := by
  intro n
  simp only [A028303]

end A028303

/-! ## A028303.P14887683009326664631

`floor(A000108(∑[n%2])/gcd(n+1, 1-n))`
-/

namespace A028303.P14887683009326664631
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000108 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / (Int.gcd (n + 1 : ℤ) (1 - (n : ℤ)) : ℚ)⌋

end

end A028303.P14887683009326664631

namespace A028303

/-- `floor(A000108(∑[n%2])/gcd(n+1, 1-n))` -/
def P14887683009326664631.Spec : Prop :=
  ∀ n, P14887683009326664631.a n = A028303 n

end A028303

/-! ## A028303.P15556037445030407134

`A028304(n)-A036987(n+2)`
-/

namespace A028303.P15556037445030407134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028304 n - A036987 (n + 2)

end

end A028303.P15556037445030407134

namespace A028303

/-- `A028304(n)-A036987(n+2)` -/
def P15556037445030407134.Spec : Prop :=
  ∀ n, P15556037445030407134.a n = A028303 n

end A028303

/-! ## A028303.P14356104968971978738

`abs(A126120(n+1)-A028304(n))`
-/

namespace A028303.P14356104968971978738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A126120 (n + 1) - A028304 n|

end

end A028303.P14356104968971978738

namespace A028303

/-- `abs(A126120(n+1)-A028304(n))` -/
def P14356104968971978738.Spec : Prop :=
  ∀ n, P14356104968971978738.a n = A028303 n

end A028303

/-! ## A028303.P12345323243210922569

`floor(A000108(ceil(n/2))/A000034(n))`
-/

namespace A028303.P12345323243210922569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000108 ⌈(n : ℚ) / 2⌉.toNat : ℚ) / (A000034 n : ℚ)⌋

end

end A028303.P12345323243210922569

namespace A028303

/-- `floor(A000108(ceil(n/2))/A000034(n))` -/
def P12345323243210922569.Spec : Prop :=
  ∀ n, P12345323243210922569.a n = A028303 n

end A028303

/-! ## A028303.P5285931811791708095

`A028304(n)-A106433(A302242(n+3))`
-/

namespace A028303.P5285931811791708095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028304 n - A106433 (A302242 (n + 3)).toNat

end

end A028303.P5285931811791708095

namespace A028303

/-- `A028304(n)-A106433(A302242(n+3))` -/
def P5285931811791708095.Spec : Prop :=
  ∀ n, P5285931811791708095.a n = A028303 n

end A028303

/-! ## A028303.P16861147719721195512

`floor(A089408(n+2)/2)`
-/

namespace A028303.P16861147719721195512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A089408 (n + 2) : ℚ) / 2⌋

end

end A028303.P16861147719721195512

namespace A028303

/-- `floor(A089408(n+2)/2)` -/
def P16861147719721195512.Spec : Prop :=
  ∀ n, P16861147719721195512.a n = A028303 n

end A028303

/-! ## A028303.P14389548444241175570

`A089408(n+2)-A028304(n)`
-/

namespace A028303.P14389548444241175570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089408 (n + 2) - A028304 n

end

end A028303.P14389548444241175570

namespace A028303

/-- `A089408(n+2)-A028304(n)` -/
def P14389548444241175570.Spec : Prop :=
  ∀ n, P14389548444241175570.a n = A028303 n

end A028303

/-! ## A028303.P7873147436790478156

`floor(A037952(n+1)/(n+1))`
-/

namespace A028303.P7873147436790478156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A037952 (n + 1) : ℚ) / (n + 1 : ℚ)⌋

end

end A028303.P7873147436790478156

namespace A028303

/-- `floor(A037952(n+1)/(n+1))` -/
def P7873147436790478156.Spec : Prop :=
  ∀ n, P7873147436790478156.a n = A028303 n

end A028303

/-! ## A028303.P2459369324299025543

`floor(Δ[A001405(n+1)]/(n+1))`
-/

namespace A028303.P2459369324299025543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (n + 1) - f1 n : ℚ) / (n + 1 : ℚ)⌋

end

end A028303.P2459369324299025543

namespace A028303

/-- `floor(Δ[A001405(n+1)]/(n+1))` -/
def P2459369324299025543.Spec : Prop :=
  ∀ n, P2459369324299025543.a n = A028303 n

end A028303

/-! ## A028303.P3295280511259539172

`floor(Δ[A051920(n+1)]/(n+1))`
-/

namespace A028303.P3295280511259539172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051920 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (n + 1) - f1 n : ℚ) / (n + 1 : ℚ)⌋

end

end A028303.P3295280511259539172

namespace A028303

/-- `floor(Δ[A051920(n+1)]/(n+1))` -/
def P3295280511259539172.Spec : Prop :=
  ∀ n, P3295280511259539172.a n = A028303 n

end A028303

/-! ## A028303.P11672878712907812883

`floor(A007318(∑[or(1, n)]+n)/(n+1))`
-/

namespace A028303.P11672878712907812883
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A007318 (∑ j ∈ Finset.range (n + 1), f1 j + n) : ℚ) / (n + 1 : ℚ)⌋

end

end A028303.P11672878712907812883

namespace A028303

/-- `floor(A007318(∑[or(1, n)]+n)/(n+1))` -/
def P11672878712907812883.Spec : Prop :=
  ∀ n, P11672878712907812883.a n = A028303 n

end A028303

/-!
# A028304: a(n) = ceiling( binomial(n, floor(n/2))/(1 + ceiling(n/2)) ) (interpolates between Catalan numbers).

The programs for A028304, the canonical program `A028304.P2970693193829967291` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A028304 has offset 0).

The definition of A028304 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ceil(C(n, floor(n/2))/(1+ceil(n/2)))` (program `A028304.P2970693193829967291`, by `A028304.P2970693193829967291.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A028304.P2966377719662404804

`ceil(A001405(n)/A004526(n+3))`
-/

namespace A028304.P2966377719662404804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A001405 n : ℚ) / (A004526 (n + 3) : ℚ)⌉

end

end A028304.P2966377719662404804

namespace A028304

/-- `ceil(A001405(n)/A004526(n+3))` -/
def P2966377719662404804.Spec : Prop :=
  ∀ n, P2966377719662404804.a n = A028304 n

end A028304

/-! ## A028304.P2970693193829967291

`ceil(C(n, floor(n/2))/(1+ceil(n/2)))`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A028304

/-- `ceil(C(n, floor(n/2))/(1+ceil(n/2)))` -/
def P2970693193829967291.Spec : Prop :=
  ∀ n, P2970693193829967291.a n = A028304 n

theorem P2970693193829967291.correct : P2970693193829967291.Spec := by
  intro n
  simp only [A028304]

end A028304

/-! ## A028304.P9583155357254294025

`ceil(A000108(floor((n+1)/2))/gcd(2, n+1))`
-/

namespace A028304.P9583155357254294025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A000108 ⌊(n + 1 : ℚ) / 2⌋.toNat : ℚ) / (Nat.gcd 2 (n + 1) : ℚ)⌉

end

end A028304.P9583155357254294025

namespace A028304

/-- `ceil(A000108(floor((n+1)/2))/gcd(2, n+1))` -/
def P9583155357254294025.Spec : Prop :=
  ∀ n, P9583155357254294025.a n = A028304 n

end A028304

/-! ## A028304.P16457009464233874284

`A028303(n)+Δ[A000523(n+2)]`
-/

namespace A028304.P16457009464233874284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028303 n + (f1 (n + 1) - f1 n)

end

end A028304.P16457009464233874284

namespace A028304

/-- `A028303(n)+Δ[A000523(n+2)]` -/
def P16457009464233874284.Spec : Prop :=
  ∀ n, P16457009464233874284.a n = A028304 n

end A028304

/-! ## A028304.P10005441314345693446

`ceil(A089408(n+2)/2)`
-/

namespace A028304.P10005441314345693446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A089408 (n + 2) : ℚ) / 2⌉

end

end A028304.P10005441314345693446

namespace A028304

/-- `ceil(A089408(n+2)/2)` -/
def P10005441314345693446.Spec : Prop :=
  ∀ n, P10005441314345693446.a n = A028304 n

end A028304

/-! ## A028304.P18230069392419321915

`A089408(n+2)-A028303(n)`
-/

namespace A028304.P18230069392419321915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089408 (n + 2) - A028303 n

end

end A028304.P18230069392419321915

namespace A028304

/-- `A089408(n+2)-A028303(n)` -/
def P18230069392419321915.Spec : Prop :=
  ∀ n, P18230069392419321915.a n = A028304 n

end A028304

/-! ## A028304.P14666419822043224957

`ceil(A001405(n)/A008619(n+1))`
-/

namespace A028304.P14666419822043224957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A001405 n : ℚ) / (A008619 (n + 1) : ℚ)⌉

end

end A028304.P14666419822043224957

namespace A028304

/-- `ceil(A001405(n)/A008619(n+1))` -/
def P14666419822043224957.Spec : Prop :=
  ∀ n, P14666419822043224957.a n = A028304 n

end A028304

/-! ## A028304.P5336781352365800960

`ceil(A037952(n+1)/(n+1))`
-/

namespace A028304.P5336781352365800960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A037952 (n + 1) : ℚ) / (n + 1 : ℚ)⌉

end

end A028304.P5336781352365800960

namespace A028304

/-- `ceil(A037952(n+1)/(n+1))` -/
def P5336781352365800960.Spec : Prop :=
  ∀ n, P5336781352365800960.a n = A028304 n

end A028304

/-! ## A028304.P11728785564449939639

`2*A001405(n)-A366108(n+3)`
-/

namespace A028304.P11728785564449939639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001405 n - A366108 (n + 3)

end

end A028304.P11728785564449939639

namespace A028304

/-- `2*A001405(n)-A366108(n+3)` -/
def P11728785564449939639.Spec : Prop :=
  ∀ n, P11728785564449939639.a n = A028304 n

end A028304

/-! ## A028304.P14036976872842357820

`ceil(Δ[A001405(n+1)]/(n+1))`
-/

namespace A028304.P14036976872842357820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f1 (n + 1) - f1 n : ℚ) / (n + 1 : ℚ)⌉

end

end A028304.P14036976872842357820

namespace A028304

/-- `ceil(Δ[A001405(n+1)]/(n+1))` -/
def P14036976872842357820.Spec : Prop :=
  ∀ n, P14036976872842357820.a n = A028304 n

end A028304

/-! ## A028304.P11547967959823605036

`ceil(A007318(∑[or(1, n)]+n)/(n+1))`
-/

namespace A028304.P11547967959823605036
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A007318 (∑ j ∈ Finset.range (n + 1), f1 j + n) : ℚ) / (n + 1 : ℚ)⌉

end

end A028304.P11547967959823605036

namespace A028304

/-- `ceil(A007318(∑[or(1, n)]+n)/(n+1))` -/
def P11547967959823605036.Spec : Prop :=
  ∀ n, P11547967959823605036.a n = A028304 n

end A028304

/-!
# A028305: Triangle of numbers of permutations eliminating just k cards out of n in game of Mousetrap.

The programs for A028305, there is no canonical definition to state claims against.
-/

/-! ## A028305.P16714651374011785650

`A097609(n)*A121464(A187829(n+1))`
-/

namespace A028305.P16714651374011785650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097609 n * A121464 (A187829 (n + 1)).toNat

end

end A028305.P16714651374011785650

/-! ## A028305.P12147605098401980501

`A288424(A288393(n))+A288387(n)`
-/

namespace A028305.P12147605098401980501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288424 (A288393 n).toNat + A288387 n

end

end A028305.P12147605098401980501

/-! ## A028305.P4858036557616287502

`A288387(n)+A025426(A288393(n)²)`
-/

namespace A028305.P4858036557616287502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288387 n + A025426 (A288393 n ^ 2).toNat

end

end A028305.P4858036557616287502

/-!
# A028306: Triangle read by rows of numbers of permutations eliminating just card k out of n in game of Mousetrap.

The programs for A028306, there is no canonical definition to state claims against.
-/

/-! ## A028306.P18364670268082307284

`A351976(A256890(n)%A157725(n))`
-/

namespace A028306.P18364670268082307284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351976 (Int.tmod (A256890 n) (A157725 n)).toNat

end

end A028306.P18364670268082307284

/-! ## A028306.P11530139553064965674

`A187950(A087803(n+1))+A170984(A235054(n+1))`
-/

namespace A028306.P11530139553064965674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187950 (A087803 (n + 1)).toNat + A170984 (A235054 (n + 1)).toNat

end

end A028306.P11530139553064965674

/-!
# A028307: Form a triangle with n numbers in top row; all other numbers are the sum of their parents. E.g.: 4 1 2 7; 5 3 9; 8 12; 20. The numbers must be positive and distinct and the final number is to be minimized. Sequence gives final number.

The programs for A028307, there is no canonical definition to state claims against.
-/

/-! ## A028307.P10005868018192375872

`A265359(A150865(n))+A101264(n)`
-/

namespace A028307.P10005868018192375872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265359 (A150865 n).toNat + A101264 n

end

end A028307.P10005868018192375872

/-! ## A028307.P15004148094344860200

`A000006(A192466(n+1)-A192428(n))`
-/

namespace A028307.P15004148094344860200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000006 (A192466 (n + 1) - A192428 n).toNat

end

end A028307.P15004148094344860200

/-! ## A028307.P5676822214488094782

`A026819(A263986(n+3)-A045662(n))`
-/

namespace A028307.P5676822214488094782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026819 (A263986 (n + 3) - A045662 n).toNat

end

end A028307.P5676822214488094782

/-!
# A028308: Form a triangle with n numbers in top row; all other numbers are the product of their parents. The numbers must be positive and distinct and the final number is to be minimized.

The programs for A028308, there is no canonical definition to state claims against.
-/

/-! ## A028308.P8276458121541559523

`A184510(n)*A361968(A126285(n))`
-/

namespace A028308.P8276458121541559523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184510 n * A361968 (A126285 n).toNat

end

end A028308.P8276458121541559523

/-!
# A028309: Molien series for ring of symmetrized weight enumerators of self-dual codes (with respect to Euclidean inner product) of length n over GF(4).

The programs for A028309, the canonical program `A028309.P13348378921944015984` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A028309 has offset 0).

The definition of A028309 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A028309.P13348378921944015984

`∑[a(n-2)+1]` with `a(0)=1, a(1)=0, a(2)=1, a(3)=1, a(4)=2, a(5)=1`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A028309

/-- `∑[a(n-2)+1]` -/
def P13348378921944015984.Spec : Prop :=
  ∀ n, (P13348378921944015984.a n : ℤ) = A028309 n

theorem P13348378921944015984.correct : P13348378921944015984.Spec := by
  intro n
  simp only [A028309]

end A028309

/-! ## A028309.P4007145444984083338

`a(n-2)-2+n` with `a(0)=1, a(1)=1, a(2)=2, a(3)=3, a(4)=5`
-/

namespace A028309.P4007145444984083338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2, 3, 5] fun n a =>
  a (n - 2) - 2 + (n : ℤ)

end

end A028309.P4007145444984083338

namespace A028309

/-- `a(n-2)-2+n` -/
def P4007145444984083338.Spec : Prop :=
  ∀ n, P4007145444984083338.a n = A028309 n

end A028309

/-! ## A028309.P15180481406197062997

`n-(2-a(n-2))` with `a(0)=1, a(1)=1, a(2)=2, a(3)=3, a(4)=5`
-/

namespace A028309.P15180481406197062997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2, 3, 5] fun n a =>
  (n : ℤ) - (2 - a (n - 2))

end

end A028309.P15180481406197062997

namespace A028309

/-- `n-(2-a(n-2))` -/
def P15180481406197062997.Spec : Prop :=
  ∀ n, P15180481406197062997.a n = A028309 n

end A028309

/-! ## A028309.P5233233527694054994

`floor(sqrt(ceil(((1-n)/2)²)²+n²))`
-/

namespace A028309.P5233233527694054994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (⌈((1 - (n : ℤ) : ℚ) / 2) ^ 2⌉ ^ 2 + (n ^ 2 : ℤ))

end

end A028309.P5233233527694054994

namespace A028309

/-- `floor(sqrt(ceil(((1-n)/2)²)²+n²))` -/
def P5233233527694054994.Spec : Prop :=
  ∀ n, P5233233527694054994.a n = A028309 n

end A028309

/-! ## A028309.P12040925206896393160

`A184676(n+1)-A058992(n+1)`
-/

namespace A028309.P12040925206896393160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184676 (n + 1) - A058992 (n + 1)

end

end A028309.P12040925206896393160

namespace A028309

/-- `A184676(n+1)-A058992(n+1)` -/
def P12040925206896393160.Spec : Prop :=
  ∀ n, P12040925206896393160.a n = A028309 n

end A028309

/-! ## A028309.P4608577827159660100

`∑[floor((A000217(A109613(n)-1)+1)/(n+1))]`
-/

namespace A028309.P4608577827159660100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000217 (A109613 n - 1).toNat + 1 : ℚ) / (n + 1 : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A028309.P4608577827159660100

namespace A028309

/-- `∑[floor((A000217(A109613(n)-1)+1)/(n+1))]` -/
def P4608577827159660100.Spec : Prop :=
  ∀ n, P4608577827159660100.a n = A028309 n

end A028309

/-! ## A028309.P8888824495004485751

`A008747(n)+A008751(n)-A001399(n)`
-/

namespace A028309.P8888824495004485751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008747 n + (A008751 n - A001399 n)

end

end A028309.P8888824495004485751

namespace A028309

/-- `A008747(n)+A008751(n)-A001399(n)` -/
def P8888824495004485751.Spec : Prop :=
  ∀ n, P8888824495004485751.a n = A028309 n

end A028309

/-! ## A028309.P1530664443574126777

`A008751(n)+A008743(2*n+1)`
-/

namespace A028309.P1530664443574126777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008751 n + A008743 (2 * n + 1)

end

end A028309.P1530664443574126777

namespace A028309

/-- `A008751(n)+A008743(2*n+1)` -/
def P1530664443574126777.Spec : Prop :=
  ∀ n, P1530664443574126777.a n = A028309 n

end A028309

/-! ## A028309.P12313825204741931386

`A267528(A008751(n))`
-/

namespace A028309.P12313825204741931386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267528 (A008751 n).toNat

end

end A028309.P12313825204741931386

namespace A028309

/-- `A267528(A008751(n))` -/
def P12313825204741931386.Spec : Prop :=
  ∀ n, P12313825204741931386.a n = A028309 n

end A028309

/-! ## A028309.P16464153204620537002

`A083479(A110654(n+3)+A033638(n))`
-/

namespace A028309.P16464153204620537002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083479 (A110654 (n + 3) + A033638 n).toNat

end

end A028309.P16464153204620537002

namespace A028309

/-- `A083479(A110654(n+3)+A033638(n))` -/
def P16464153204620537002.Spec : Prop :=
  ∀ n, P16464153204620537002.a n = A028309 n

end A028309

/-! ## A028309.P16970547820350409508

`A008619(A092534(n))`
-/

namespace A028309.P16970547820350409508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A092534 n).toNat

end

end A028309.P16970547820350409508

namespace A028309

/-- `A008619(A092534(n))` -/
def P16970547820350409508.Spec : Prop :=
  ∀ n, P16970547820350409508.a n = A028309 n

end A028309

/-! ## A028309.P14194770863058099505

`A065033(A077169(n)-A065033(n))`
-/

namespace A028309.P14194770863058099505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A077169 n - A065033 n).toNat

end

end A028309.P14194770863058099505

namespace A028309

/-- `A065033(A077169(n)-A065033(n))` -/
def P14194770863058099505.Spec : Prop :=
  ∀ n, P14194770863058099505.a n = A028309 n

end A028309

/-!
# A028310: Expansion of (1 - x + x^2) / (1 - x)^2 in powers of x.

The programs for A028310, the canonical program `A028310.P17100011364110845930` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A028310 has offset 0).

The definition of A028310 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A028310.P17100011364110845930

`n+A000007(n)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A028310

/-- `n+A000007(n)` -/
def P17100011364110845930.Spec : Prop :=
  ∀ n, P17100011364110845930.a n = A028310 n

theorem P17100011364110845930.correct : P17100011364110845930.Spec := by
  intro n
  simp only [A028310]

end A028310

/-!
# A028311: Odd numbers k such that {1..k-1} can be partitioned into disjoint sets I, J with 2I == -J (mod k) such that I, J are unions of cyclotomic cosets mod k.

The programs for A028311, there is no canonical definition to state claims against.
-/

/-! ## A028311.P9157153713032387000

`eq[A028597(n²), A073424(n)]`
-/

namespace A028311.P9157153713032387000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028597 (n ^ 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073424 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A028311.P9157153713032387000

/-! ## A028311.P14532028480968751726

`A236204(A037041(n+1)+1)`
-/

namespace A028311.P14532028480968751726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236204 (A037041 (n + 1) + 1).toNat

end

end A028311.P14532028480968751726

/-! ## A028311.P2907213778275361975

`A236204(A137409(n+1)+1)`
-/

namespace A028311.P2907213778275361975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236204 (A137409 (n + 1) + 1).toNat

end

end A028311.P2907213778275361975

/-! ## A028311.P16277756274852878826

`A007310(lt[A046550(n+1), n])`
-/

namespace A028311.P16277756274852878826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046550 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007310 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A028311.P16277756274852878826

/-! ## A028311.P17575546903565306182

`eq[A010051(n+1), A028597(n²)]`
-/

namespace A028311.P17575546903565306182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028597 (n ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A028311.P17575546903565306182

/-!
# A028312: Odd numbers k such that {1..k-1} cannot be partitioned into disjoint sets I, J such that 2I == -J (mod k) and I, J are unions of cyclotomic cosets mod k.

The programs for A028312, there is no canonical definition to state claims against.
-/

/-! ## A028312.P5571143253121728786

`eq[gcd(2, n), A138709(A090370(n+4))]`
-/

namespace A028312.P5571143253121728786
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138709 (A090370 (n + 4)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A028312.P5571143253121728786

/-! ## A028312.P12983340827353334032

`∩[A192861(n+1), A309584(n+1)]`
-/

namespace A028312.P12983340827353334032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192861 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309584 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A028312.P12983340827353334032

/-! ## A028312.P8367027195560152545

`∩[comp[A028311(n+1)], A192861(n+2)]`
-/

namespace A028312.P8367027195560152545
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028311 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192861 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f3 j = (x : ℤ)) n

end

end A028312.P8367027195560152545

/-! ## A028312.P16247926484284544201

`lt[A025475(A028476(n+3)), A050265(n+1)]`
-/

namespace A028312.P16247926484284544201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025475 (A028476 (n + 3)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050265 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A028312.P16247926484284544201

/-! ## A028312.P18123242230651526154

`lt[A000593(n+5), A245092(A078181(n+1))]`
-/

namespace A028312.P18123242230651526154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000593 (n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245092 (A078181 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A028312.P18123242230651526154

/-!
# A028313: Elements in the 5-Pascal triangle (by row).

The programs for A028313, the canonical program `A028313.P12289256614395015877` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A028313 has offset 0).

The definition of A028313 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A028313.P12289256614395015877

`A028275(n)+A323211(n)-1`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A028313

/-- `A028275(n)+A323211(n)-1` -/
def P12289256614395015877.Spec : Prop :=
  ∀ n, P12289256614395015877.a n = A028313 n

theorem P12289256614395015877.correct : P12289256614395015877.Spec := by
  intro n
  simp only [A028313]

end A028313

/-! ## A028313.P16760192514585125260

`2*A028275(n)-A028262(n)`
-/

namespace A028313.P16760192514585125260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028275 n - A028262 n

end

end A028313.P16760192514585125260

namespace A028313

/-- `2*A028275(n)-A028262(n)` -/
def P16760192514585125260.Spec : Prop :=
  ∀ n, P16760192514585125260.a n = A028313 n

end A028313

/-! ## A028313.P11391315980783991902

`2*A028262(n)-A072405(n)`
-/

namespace A028313.P11391315980783991902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028262 n - A072405 n

end

end A028313.P11391315980783991902

namespace A028313

/-- `2*A028262(n)-A072405(n)` -/
def P11391315980783991902.Spec : Prop :=
  ∀ n, P11391315980783991902.a n = A028313 n

end A028313

/-! ## A028313.P5555182276188432248

`3*A028262(n)-A028326(n)`
-/

namespace A028313.P5555182276188432248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A028262 n - A028326 n

end

end A028313.P5555182276188432248

namespace A028313

/-- `3*A028262(n)-A028326(n)` -/
def P5555182276188432248.Spec : Prop :=
  ∀ n, P5555182276188432248.a n = A028313 n

end A028313

/-! ## A028313.P8171521317475261446

`A028262(n)+A028275(n)-A007318(n)`
-/

namespace A028313.P8171521317475261446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028262 n + (A028275 n - A007318 n)

end

end A028313.P8171521317475261446

namespace A028313

/-- `A028262(n)+A028275(n)-A007318(n)` -/
def P8171521317475261446.Spec : Prop :=
  ∀ n, P8171521317475261446.a n = A028313 n

end A028313

/-! ## A028313.P125394381597628073

`A007318(n)+A028275(n)-A072405(n)`
-/

namespace A028313.P125394381597628073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n + (A028275 n - A072405 n)

end

end A028313.P125394381597628073

namespace A028313

/-- `A007318(n)+A028275(n)-A072405(n)` -/
def P125394381597628073.Spec : Prop :=
  ∀ n, P125394381597628073.a n = A028313 n

end A028313

/-! ## A028313.P12348841546610697309

`A028275(n)-A024000(A323211(n))`
-/

namespace A028313.P12348841546610697309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028275 n - A024000 (A323211 n).toNat

end

end A028313.P12348841546610697309

namespace A028313

/-- `A028275(n)-A024000(A323211(n))` -/
def P12348841546610697309.Spec : Prop :=
  ∀ n, P12348841546610697309.a n = A028313 n

end A028313

/-! ## A028313.P11002925294027352713

`A028262(n)+A005843(A028262(n)-A007318(n))`
-/

namespace A028313.P11002925294027352713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028262 n + A005843 (A028262 n - A007318 n).toNat

end

end A028313.P11002925294027352713

namespace A028313

/-- `A028262(n)+A005843(A028262(n)-A007318(n))` -/
def P11002925294027352713.Spec : Prop :=
  ∀ n, P11002925294027352713.a n = A028313 n

end A028313

/-! ## A028313.P3922605197720795680

`A028262(n)+A005843(A028275(n)-A028262(n))`
-/

namespace A028313.P3922605197720795680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028262 n + A005843 (A028275 n - A028262 n).toNat

end

end A028313.P3922605197720795680

namespace A028313

/-- `A028262(n)+A005843(A028275(n)-A028262(n))` -/
def P3922605197720795680.Spec : Prop :=
  ∀ n, P3922605197720795680.a n = A028313 n

end A028313

/-! ## A028313.P9840507419412614367

`A005843(A028275(n))-A028262(n)`
-/

namespace A028313.P9840507419412614367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A028275 n).toNat - A028262 n

end

end A028313.P9840507419412614367

namespace A028313

/-- `A005843(A028275(n))-A028262(n)` -/
def P9840507419412614367.Spec : Prop :=
  ∀ n, P9840507419412614367.a n = A028313 n

end A028313

/-! ## A028313.P14556828526948606149

`A008486(A028262(n))-A028326(n)`
-/

namespace A028313.P14556828526948606149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (A028262 n).toNat - A028326 n

end

end A028313.P14556828526948606149

namespace A028313

/-- `A008486(A028262(n))-A028326(n)` -/
def P14556828526948606149.Spec : Prop :=
  ∀ n, P14556828526948606149.a n = A028313 n

end A028313

/-! ## A028313.P346633359602868924

`A005843(A028262(n))-A072405(n)`
-/

namespace A028313.P346633359602868924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A028262 n).toNat - A072405 n

end

end A028313.P346633359602868924

namespace A028313

/-- `A005843(A028262(n))-A072405(n)` -/
def P346633359602868924.Spec : Prop :=
  ∀ n, P346633359602868924.a n = A028313 n

end A028313

/-! ## A028313.P15331843147185756603

`abs(A024000(A323211(n)+A028275(n)))`
-/

namespace A028313.P15331843147185756603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A024000 (A323211 n + A028275 n).toNat|

end

end A028313.P15331843147185756603

namespace A028313

/-- `abs(A024000(A323211(n)+A028275(n)))` -/
def P15331843147185756603.Spec : Prop :=
  ∀ n, P15331843147185756603.a n = A028313 n

end A028313

/-!
# A028314: Elements in the 5-Pascal triangle A028313 that are not 1.

The programs for A028314, the canonical program `A028314.P1408064926550668039` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A028314 has offset 0).

The definition of A028314 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A028314.P1408064926550668039

`A028276(n)+A007318(n)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A028314

/-- `A028276(n)+A007318(n)` -/
def P1408064926550668039.Spec : Prop :=
  ∀ n, P1408064926550668039.a n = A028314 n

theorem P1408064926550668039.correct : P1408064926550668039.Spec := by
  intro n
  simp only [A028314]

end A028314

/-! ## A028314.P3217389531887835561

`A028326(n)+A028263(n)`
-/

namespace A028314.P3217389531887835561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028326 n + A028263 n

end

end A028314.P3217389531887835561

namespace A028314

/-- `A028326(n)+A028263(n)` -/
def P3217389531887835561.Spec : Prop :=
  ∀ n, P3217389531887835561.a n = A028314 n

end A028314

/-! ## A028314.P1961305792603324144

`A028327(n)-A051631(n)`
-/

namespace A028314.P1961305792603324144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028327 n - A051631 n

end

end A028314.P1961305792603324144

namespace A028314

/-- `A028327(n)-A051631(n)` -/
def P1961305792603324144.Spec : Prop :=
  ∀ n, P1961305792603324144.a n = A028314 n

end A028314

/-! ## A028314.P16287683322151289890

`A028276(n)+sqrt(A008459(n))`
-/

namespace A028314.P16287683322151289890
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A028276 n : ℝ) + Real.sqrt (A008459 n : ℝ)

end

end A028314.P16287683322151289890

namespace A028314

/-- `A028276(n)+sqrt(A008459(n))` -/
def P16287683322151289890.Spec : Prop :=
  ∀ n, P16287683322151289890.a n = (A028314 n : ℝ)

end A028314

/-! ## A028314.P12105419339596456162

`A028263(n)+2*A007318(n)`
-/

namespace A028314.P12105419339596456162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028263 n + 2 * A007318 n

end

end A028314.P12105419339596456162

namespace A028314

/-- `A028263(n)+2*A007318(n)` -/
def P12105419339596456162.Spec : Prop :=
  ∀ n, P12105419339596456162.a n = A028314 n

end A028314

/-! ## A028314.P4201184145981105042

`A051597(n)+2*A028326(n)`
-/

namespace A028314.P4201184145981105042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051597 n + 2 * A028326 n

end

end A028314.P4201184145981105042

namespace A028314

/-- `A051597(n)+2*A028326(n)` -/
def P4201184145981105042.Spec : Prop :=
  ∀ n, P4201184145981105042.a n = A028314 n

end A028314

/-! ## A028314.P14269378488803922359

`2*A028276(n)-A028263(n)`
-/

namespace A028314.P14269378488803922359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028276 n - A028263 n

end

end A028314.P14269378488803922359

namespace A028314

/-- `2*A028276(n)-A028263(n)` -/
def P14269378488803922359.Spec : Prop :=
  ∀ n, P14269378488803922359.a n = A028314 n

end A028314

/-! ## A028314.P11885857875063749207

`A028276(n)+A028326(n)/2`
-/

namespace A028314.P11885857875063749207
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028276 n : ℚ) + (A028326 n : ℚ) / 2

end

end A028314.P11885857875063749207

namespace A028314

/-- `A028276(n)+A028326(n)/2` -/
def P11885857875063749207.Spec : Prop :=
  ∀ n, P11885857875063749207.a n = (A028314 n : ℚ)

end A028314

/-! ## A028314.P16362768827027035601

`2*A028263(n)-A051597(n)`
-/

namespace A028314.P16362768827027035601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028263 n - A051597 n

end

end A028314.P16362768827027035601

namespace A028314

/-- `2*A028263(n)-A051597(n)` -/
def P16362768827027035601.Spec : Prop :=
  ∀ n, P16362768827027035601.a n = A028314 n

end A028314

/-! ## A028314.P16850383112521240653

`A051597(n)+4*A007318(n)`
-/

namespace A028314.P16850383112521240653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051597 n + 4 * A007318 n

end

end A028314.P16850383112521240653

namespace A028314

/-- `A051597(n)+4*A007318(n)` -/
def P16850383112521240653.Spec : Prop :=
  ∀ n, P16850383112521240653.a n = A028314 n

end A028314

/-! ## A028314.P18213208512718110309

`A028263(n)+abs(2*A130595(n))`
-/

namespace A028314.P18213208512718110309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028263 n + |2 * A130595 n|

end

end A028314.P18213208512718110309

namespace A028314

/-- `A028263(n)+abs(2*A130595(n))` -/
def P18213208512718110309.Spec : Prop :=
  ∀ n, P18213208512718110309.a n = A028314 n

end A028314

/-! ## A028314.P6082638811058533213

`A028263(n)+2*sqrt(A008459(n))`
-/

namespace A028314.P6082638811058533213
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A028263 n : ℝ) + 2 * Real.sqrt (A008459 n : ℝ)

end

end A028314.P6082638811058533213

namespace A028314

/-- `A028263(n)+2*sqrt(A008459(n))` -/
def P6082638811058533213.Spec : Prop :=
  ∀ n, P6082638811058533213.a n = (A028314 n : ℝ)

end A028314

/-! ## A028314.P14850575136478138028

`A028276(n)+ceil(A134059(n)/3)`
-/

namespace A028314.P14850575136478138028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028276 n + ⌈(A134059 n : ℚ) / 3⌉

end

end A028314.P14850575136478138028

namespace A028314

/-- `A028276(n)+ceil(A134059(n)/3)` -/
def P14850575136478138028.Spec : Prop :=
  ∀ n, P14850575136478138028.a n = A028314 n

end A028314

/-! ## A028314.P4344514186406878679

`A014410(n+2)+A131060(n)+2`
-/

namespace A028314.P4344514186406878679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014410 (n + 2) + (A131060 n + 2)

end

end A028314.P4344514186406878679

namespace A028314

/-- `A014410(n+2)+A131060(n)+2` -/
def P4344514186406878679.Spec : Prop :=
  ∀ n, P4344514186406878679.a n = A028314 n

end A028314

/-! ## A028314.P2824200118570760066

`2*A014410(n+2)-A051631(n)`
-/

namespace A028314.P2824200118570760066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A014410 (n + 2) - A051631 n

end

end A028314.P2824200118570760066

namespace A028314

/-- `2*A014410(n+2)-A051631(n)` -/
def P2824200118570760066.Spec : Prop :=
  ∀ n, P2824200118570760066.a n = A028314 n

end A028314

/-! ## A028314.P6428013291764419722

`A028262(n)+A072405(n)+A028263(n)`
-/

namespace A028314.P6428013291764419722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028262 n + (A072405 n + A028263 n)

end

end A028314.P6428013291764419722

namespace A028314

/-- `A028262(n)+A072405(n)+A028263(n)` -/
def P6428013291764419722.Spec : Prop :=
  ∀ n, P6428013291764419722.a n = A028314 n

end A028314

/-! ## A028314.P2787048574731590663

`A028276(n)+C(A003056(n), A002262(n))`
-/

namespace A028314.P2787048574731590663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028276 n + (Nat.choose (A003056 n).toNat (A002262 n).toNat : ℤ)

end

end A028314.P2787048574731590663

namespace A028314

/-- `A028276(n)+C(A003056(n), A002262(n))` -/
def P2787048574731590663.Spec : Prop :=
  ∀ n, P2787048574731590663.a n = A028314 n

end A028314

/-! ## A028314.P6299021538872828538

`A028276(n)+C(A003056(n), A025581(n))`
-/

namespace A028314.P6299021538872828538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028276 n + (Nat.choose (A003056 n).toNat (A025581 n).toNat : ℤ)

end

end A028314.P6299021538872828538

namespace A028314

/-- `A028276(n)+C(A003056(n), A025581(n))` -/
def P6299021538872828538.Spec : Prop :=
  ∀ n, P6299021538872828538.a n = A028314 n

end A028314

/-! ## A028314.P15263675168403430376

`A028276(n)+C(A003056(n), A002260(n+1)-1)`
-/

namespace A028314.P15263675168403430376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028276 n + (Nat.choose (A003056 n).toNat (A002260 (n + 1) - 1).toNat : ℤ)

end

end A028314.P15263675168403430376

namespace A028314

/-- `A028276(n)+C(A003056(n), A002260(n+1)-1)` -/
def P15263675168403430376.Spec : Prop :=
  ∀ n, P15263675168403430376.a n = A028314 n

end A028314

/-! ## A028314.P8400590807780218914

`A028276(n)+C(A003056(n), A004736(n+1)-1)`
-/

namespace A028314.P8400590807780218914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028276 n + (Nat.choose (A003056 n).toNat (A004736 (n + 1) - 1).toNat : ℤ)

end

end A028314.P8400590807780218914

namespace A028314

/-- `A028276(n)+C(A003056(n), A004736(n+1)-1)` -/
def P8400590807780218914.Spec : Prop :=
  ∀ n, P8400590807780218914.a n = A028314 n

end A028314

/-!
# A028315: Odd elements in the 5-Pascal triangle A028313.

The programs for A028315, the canonical program `A028315.P11191738613000279177` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A028315 has offset 0).

The definition of A028315 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3024 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A028315.P11191738613000279177

`A028313(eq[1, A028313(n)%2])`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A028315

/-- `A028313(eq[1, A028313(n)%2])` -/
def P11191738613000279177.Spec : Prop :=
  ∀ n, P11191738613000279177.a n = A028315 n

theorem P11191738613000279177.correct : P11191738613000279177.Spec := by
  intro n
  simp only [A028315]

end A028315

/-! ## A028315.P2520452743183846392

`A028313(lt[val(A028313(n), 2), 1])`
-/

namespace A028315.P2520452743183846392
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A028313 n).toNat 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028313 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A028315.P2520452743183846392

namespace A028315

/-- `A028313(lt[val(A028313(n), 2), 1])` -/
def P2520452743183846392.Spec : Prop :=
  ∀ n, P2520452743183846392.a n = A028315 n

end A028315

/-! ## A028315.P15512175973827065773

`filter[A028313(n), A374134(#)]`
-/

namespace A028315.P15512175973827065773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028313 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374134 (f1 j).toNat = 1) n)

end

end A028315.P15512175973827065773

namespace A028315

/-- `filter[A028313(n), A374134(#)]` -/
def P15512175973827065773.Spec : Prop :=
  ∀ n, P15512175973827065773.a n = A028315 n

end A028315

/-! ## A028315.P7119775595793917431

`A028313(eq[1, A134451(A028313(n))])`
-/

namespace A028315.P7119775595793917431
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134451 (A028313 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028313 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A028315.P7119775595793917431

namespace A028315

/-- `A028313(eq[1, A134451(A028313(n))])` -/
def P7119775595793917431.Spec : Prop :=
  ∀ n, P7119775595793917431.a n = A028315 n

end A028315

/-! ## A028315.P17915678984062882440

`filter[A028313(n), A000035(#)]`
-/

namespace A028315.P17915678984062882440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028313 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A028315.P17915678984062882440

namespace A028315

/-- `filter[A028313(n), A000035(#)]` -/
def P17915678984062882440.Spec : Prop :=
  ∀ n, P17915678984062882440.a n = A028315 n

end A028315

/-! ## A028315.P10322035138473021148

`A028313(eq[1, A001511(A028313(n))])`
-/

namespace A028315.P10322035138473021148
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A028313 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028313 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A028315.P10322035138473021148

namespace A028315

/-- `A028313(eq[1, A001511(A028313(n))])` -/
def P10322035138473021148.Spec : Prop :=
  ∀ n, P10322035138473021148.a n = A028315 n

end A028315

/-! ## A028315.P1948857653322153036

`A028313(eq[1, A006519(A028313(n))])`
-/

namespace A028315.P1948857653322153036
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (A028313 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028313 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A028315.P1948857653322153036

namespace A028315

/-- `A028313(eq[1, A006519(A028313(n))])` -/
def P1948857653322153036.Spec : Prop :=
  ∀ n, P1948857653322153036.a n = A028315 n

end A028315

/-!
# A028316: Odd elements in the 5-Pascal triangle A028313 that are not 1.

The programs for A028316, the canonical program `A028316.P13773793493205695949` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A028316 has offset 0).

The definition of A028316 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9378 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A028316.P13773793493205695949

`A028315(lt[1, A028315(n)])`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A028316

/-- `A028315(lt[1, A028315(n)])` -/
def P13773793493205695949.Spec : Prop :=
  ∀ n, P13773793493205695949.a n = A028316 n

theorem P13773793493205695949.correct : P13773793493205695949.Spec := by
  intro n
  simp only [A028316]

end A028316

/-! ## A028316.P8926608674132033019

`A028315(eq[2, 2%A028315(n)])`
-/

namespace A028316.P8926608674132033019
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 2 (A028315 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028315 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A028316.P8926608674132033019

namespace A028316

/-- `A028315(eq[2, 2%A028315(n)])` -/
def P8926608674132033019.Spec : Prop :=
  ∀ n, P8926608674132033019.a n = A028316 n

end A028316

/-! ## A028316.P4861819850207404645

`A028314(eq[1, gcd(2, A028314(n))])`
-/

namespace A028316.P4861819850207404645
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A028314 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028314 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A028316.P4861819850207404645

namespace A028316

/-- `A028314(eq[1, gcd(2, A028314(n))])` -/
def P4861819850207404645.Spec : Prop :=
  ∀ n, P4861819850207404645.a n = A028316 n

end A028316

/-! ## A028316.P11625611563362676655

`A028314(record[n*A028314(n)%2])`
-/

namespace A028316.P11625611563362676655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * Int.tmod (A028314 n) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028314 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A028316.P11625611563362676655

namespace A028316

/-- `A028314(record[n*A028314(n)%2])` -/
def P11625611563362676655.Spec : Prop :=
  ∀ n, P11625611563362676655.a n = A028316 n

end A028316

/-! ## A028316.P4252216306127685569

`filter[A028315(n), A014306(#)]`
-/

namespace A028316.P4252216306127685569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028315 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A014306 (f1 j).toNat = 1) n)

end

end A028316.P4252216306127685569

namespace A028316

/-- `filter[A028315(n), A014306(#)]` -/
def P4252216306127685569.Spec : Prop :=
  ∀ n, P4252216306127685569.a n = A028316 n

end A028316

/-! ## A028316.P2892993928379012179

`filter[A028315(n), A347523(#)]`
-/

namespace A028316.P2892993928379012179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028315 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A347523 (f1 j).toNat = 1) n)

end

end A028316.P2892993928379012179

namespace A028316

/-- `filter[A028315(n), A347523(#)]` -/
def P2892993928379012179.Spec : Prop :=
  ∀ n, P2892993928379012179.a n = A028316 n

end A028316

/-! ## A028316.P17648507933287051937

`filter[A028314(n), A374134(#)]`
-/

namespace A028316.P17648507933287051937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028314 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374134 (f1 j).toNat = 1) n)

end

end A028316.P17648507933287051937

namespace A028316

/-- `filter[A028314(n), A374134(#)]` -/
def P17648507933287051937.Spec : Prop :=
  ∀ n, P17648507933287051937.a n = A028316 n

end A028316

/-! ## A028316.P15541937282327208547

`A028314(eq[1, A010131(A028314(n))])`
-/

namespace A028316.P15541937282327208547
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010131 (A028314 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028314 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A028316.P15541937282327208547

namespace A028316

/-- `A028314(eq[1, A010131(A028314(n))])` -/
def P15541937282327208547.Spec : Prop :=
  ∀ n, P15541937282327208547.a n = A028316 n

end A028316

/-! ## A028316.P13296838613584863506

`filter[A028314(n), A000035(#)]`
-/

namespace A028316.P13296838613584863506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028314 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A028316.P13296838613584863506

namespace A028316

/-- `filter[A028314(n), A000035(#)]` -/
def P13296838613584863506.Spec : Prop :=
  ∀ n, P13296838613584863506.a n = A028316 n

end A028316

/-! ## A028316.P16386659046353222592

`filter[A028313(n), A266070(#)]`
-/

namespace A028316.P16386659046353222592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028313 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266070 (f1 j).toNat = 1) n)

end

end A028316.P16386659046353222592

namespace A028316

/-- `filter[A028313(n), A266070(#)]` -/
def P16386659046353222592.Spec : Prop :=
  ∀ n, P16386659046353222592.a n = A028316 n

end A028316

/-!
# A028317: Even elements in the 5-Pascal triangle A028313.

The programs for A028317, the canonical program `A028317.P15776591020877796603` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A028317 has offset 0).

The definition of A028317 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7223 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A028317.P11344576288676911615

`2*A051472(n)`
-/

namespace A028317.P11344576288676911615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A051472 n

end

end A028317.P11344576288676911615

namespace A028317

/-- `2*A051472(n)` -/
def P11344576288676911615.Spec : Prop :=
  ∀ n, P11344576288676911615.a n = A028317 n

end A028317

/-! ## A028317.P2307101565028756889

`A051472(A005843(n)/2)/(1-1/2)`
-/

namespace A028317.P2307101565028756889
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051472 (SequenceMachineLib.roundAway ((A005843 n : ℚ) / 2)).toNat : ℚ) / (1 - (1 : ℚ) / 2)

end

end A028317.P2307101565028756889

namespace A028317

/-- `A051472(A005843(n)/2)/(1-1/2)` -/
def P2307101565028756889.Spec : Prop :=
  ∀ n, P2307101565028756889.a n = (A028317 n : ℚ)

end A028317

/-! ## A028317.P8513439187047310784

`A051472(A028310(n))+A051472(n)`
-/

namespace A028317.P8513439187047310784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051472 (A028310 n).toNat + A051472 n

end

end A028317.P8513439187047310784

namespace A028317

/-- `A051472(A028310(n))+A051472(n)` -/
def P8513439187047310784.Spec : Prop :=
  ∀ n, P8513439187047310784.a n = A028317 n

end A028317

/-! ## A028317.P5420262847554214345

`A051472(abs(A001489(n)))+A051472(n)`
-/

namespace A028317.P5420262847554214345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051472 |A001489 n|.toNat + A051472 n

end

end A028317.P5420262847554214345

namespace A028317

/-- `A051472(abs(A001489(n)))+A051472(n)` -/
def P5420262847554214345.Spec : Prop :=
  ∀ n, P5420262847554214345.a n = A028317 n

end A028317

/-! ## A028317.P2562118620328656532

`A051472(A005843(n)/2)+A051472(n)`
-/

namespace A028317.P2562118620328656532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051472 (SequenceMachineLib.roundAway ((A005843 n : ℚ) / 2)).toNat + A051472 n

end

end A028317.P2562118620328656532

namespace A028317

/-- `A051472(A005843(n)/2)+A051472(n)` -/
def P2562118620328656532.Spec : Prop :=
  ∀ n, P2562118620328656532.a n = A028317 n

end A028317

/-! ## A028317.P86633004127014650

`A051472(A000027(n+1)-1)+A051472(n)`
-/

namespace A028317.P86633004127014650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051472 (A000027 (n + 1) - 1).toNat + A051472 n

end

end A028317.P86633004127014650

namespace A028317

/-- `A051472(A000027(n+1)-1)+A051472(n)` -/
def P86633004127014650.Spec : Prop :=
  ∀ n, P86633004127014650.a n = A028317 n

end A028317

/-! ## A028317.P15776591020877796603

`A028314(eq[2, gcd(2, A028314(n))])`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A028317

/-- `A028314(eq[2, gcd(2, A028314(n))])` -/
def P15776591020877796603.Spec : Prop :=
  ∀ n, P15776591020877796603.a n = A028317 n

theorem P15776591020877796603.correct : P15776591020877796603.Spec := by
  intro n
  simp only [A028317]

end A028317

/-! ## A028317.P1138504130014883526

`A000027(A051472(n)+A051472(n))`
-/

namespace A028317.P1138504130014883526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A051472 n + A051472 n).toNat

end

end A028317.P1138504130014883526

namespace A028317

/-- `A000027(A051472(n)+A051472(n))` -/
def P1138504130014883526.Spec : Prop :=
  ∀ n, P1138504130014883526.a n = A028317 n

end A028317

/-! ## A028317.P6095805770951914191

`A004277(A051472(n))`
-/

namespace A028317.P6095805770951914191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A051472 n).toNat

end

end A028317.P6095805770951914191

namespace A028317

/-- `A004277(A051472(n))` -/
def P6095805770951914191.Spec : Prop :=
  ∀ n, P6095805770951914191.a n = A028317 n

end A028317

/-!
# A028319: Distinct odd elements in the 5-Pascal triangle A028313.

The programs for A028319, there is no canonical definition to state claims against.
-/

/-! ## A028319.P12146423966180084256

`filter[A028318(n), A374134(#)]`
-/

namespace A028319.P12146423966180084256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028318 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374134 (f1 j).toNat = 1) n)

end

end A028319.P12146423966180084256

/-! ## A028319.P12951936449551159340

`filter[A028318(n), A000035(#)]`
-/

namespace A028319.P12951936449551159340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028318 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A028319.P12951936449551159340

/-!
# A028320: Distinct even elements in the 5-Pascal triangle A028313.

The programs for A028320, there is no canonical definition to state claims against.
-/

/-! ## A028320.P5450758728692951871

`A028318(eq[2, A020639(A028318(n))])`
-/

namespace A028320.P5450758728692951871
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A028318 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028318 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A028320.P5450758728692951871

/-! ## A028320.P3907884412574212333

`filter[A028318(n), A059841(#)]`
-/

namespace A028320.P3907884412574212333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028318 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A059841 (f1 j).toNat = 1) n)

end

end A028320.P3907884412574212333

/-! ## A028320.P8166142315044390808

`filter[A028318(n), A267043(#)]`
-/

namespace A028320.P8166142315044390808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028318 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267043 (f1 j).toNat = 1) n)

end

end A028320.P8166142315044390808

/-! ## A028320.P7858623892868917182

`filter[A028318(n+1), A135528(#)]`
-/

namespace A028320.P7858623892868917182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028318 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A135528 (f1 j).toNat = 1) n)

end

end A028320.P7858623892868917182

/-! ## A028320.P16652555961004868116

`filter[A028318(n+1), A266591(#)]`
-/

namespace A028320.P16652555961004868116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028318 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266591 (f1 j).toNat = 1) n)

end

end A028320.P16652555961004868116

/-!
# A028321: Even elements to the right of the central elements of the 5-Pascal triangle A028313.

The programs for A028321, there is no canonical definition to state claims against.
-/

/-! ## A028321.P8464252428785800727

`2*A051473(n)`
-/

namespace A028321.P8464252428785800727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A051473 n

end

end A028321.P8464252428785800727

/-! ## A028321.P5270965053117559958

`A051473(-A001489(n))+A051473(n)`
-/

namespace A028321.P5270965053117559958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051473 (-A001489 n).toNat + A051473 n

end

end A028321.P5270965053117559958

/-! ## A028321.P9807754890160633852

`A051473(A005843(n)/2)+A051473(n)`
-/

namespace A028321.P9807754890160633852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051473 (SequenceMachineLib.roundAway ((A005843 n : ℚ) / 2)).toNat + A051473 n

end

end A028321.P9807754890160633852

/-! ## A028321.P15821211444893605748

`A051473(A005843(n)-n)+A051473(n)`
-/

namespace A028321.P15821211444893605748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051473 (A005843 n - (n : ℤ)).toNat + A051473 n

end

end A028321.P15821211444893605748

/-! ## A028321.P9089187093655790049

`(A051473(n)+A051473(n))/A178334(A178334(n+1))`
-/

namespace A028321.P9089187093655790049
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051473 n + A051473 n : ℚ) / (A178334 (A178334 (n + 1)).toNat : ℚ)

end

end A028321.P9089187093655790049

/-!
# A028322: Central elements in the 5-Pascal triangle A028313.

The programs for A028322, the canonical program `A028322.P4116974274604073125` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A028322 has offset 0).

The definition of A028322 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A028322.P4116974274604073125

`(n+1)*(7*n-2)*A000108(n)/(2*(2*n-1))`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A028322

/-- `(n+1)*(7*n-2)*A000108(n)/(2*(2*n-1))` -/
def P4116974274604073125.Spec : Prop :=
  ∀ n, P4116974274604073125.a n = (A028322 n : ℚ)

end A028322

/-! ## A028322.P15975848458130379196

`A028283(n)+n*A120588(n)`
-/

namespace A028322.P15975848458130379196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028283 n + (n : ℤ) * A120588 n

end

end A028322.P15975848458130379196

namespace A028322

/-- `A028283(n)+n*A120588(n)` -/
def P15975848458130379196.Spec : Prop :=
  ∀ n, P15975848458130379196.a n = A028322 n

end A028322

/-! ## A028322.P16391216069224427738

`A000108(n)+n*A352681(n)`
-/

namespace A028322.P16391216069224427738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n + (n : ℤ) * A352681 n

end

end A028322.P16391216069224427738

namespace A028322

/-- `A000108(n)+n*A352681(n)` -/
def P16391216069224427738.Spec : Prop :=
  ∀ n, P16391216069224427738.a n = A028322 n

end A028322

/-! ## A028322.P14306622175890813187

`A028283(n)-n*A115140(n)`
-/

namespace A028322.P14306622175890813187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028283 n - (n : ℤ) * A115140 n

end

end A028322.P14306622175890813187

namespace A028322

/-- `A028283(n)-n*A115140(n)` -/
def P14306622175890813187.Spec : Prop :=
  ∀ n, P14306622175890813187.a n = A028322 n

end A028322

/-! ## A028322.P6634437822780179722

`record[A047383(n+1)*A097331(n)]`
-/

namespace A028322.P6634437822780179722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047383 (n + 1) * A097331 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A028322.P6634437822780179722

namespace A028322

/-- `record[A047383(n+1)*A097331(n)]` -/
def P6634437822780179722.Spec : Prop :=
  ∀ n, P6634437822780179722.a n = A028322 n

end A028322

/-! ## A028322.P14717756264427831575

`record[A097331(n)*A304810(3*n)]`
-/

namespace A028322.P14717756264427831575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097331 n * A304810 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A028322.P14717756264427831575

namespace A028322

/-- `record[A097331(n)*A304810(3*n)]` -/
def P14717756264427831575.Spec : Prop :=
  ∀ n, P14717756264427831575.a n = A028322 n

end A028322

/-! ## A028322.P14557879102620681317

`(A111284(n+1)+3*n)*A120588(n)`
-/

namespace A028322.P14557879102620681317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A111284 (n + 1) + (3 * n : ℤ)) * A120588 n

end

end A028322.P14557879102620681317

namespace A028322

/-- `(A111284(n+1)+3*n)*A120588(n)` -/
def P14557879102620681317.Spec : Prop :=
  ∀ n, P14557879102620681317.a n = A028322 n

end A028322

/-! ## A028322.P15072791800984588127

`record[A065033(A304809(n))*A097331(n)]`
-/

namespace A028322.P15072791800984588127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A304809 n).toNat * A097331 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A028322.P15072791800984588127

namespace A028322

/-- `record[A065033(A304809(n))*A097331(n)]` -/
def P15072791800984588127.Spec : Prop :=
  ∀ n, P15072791800984588127.a n = A028322 n

end A028322

/-! ## A028322.P12055414491861132424

`A028313(∑[4*n])`
-/

namespace A028322.P12055414491861132424
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028313 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A028322.P12055414491861132424

namespace A028322

/-- `A028313(∑[4*n])` -/
def P12055414491861132424.Spec : Prop :=
  ∀ n, P12055414491861132424.a n = A028322 n

end A028322

/-!
# A028323: Elements to the right of the central elements of the 5-Pascal triangle A028313.

The programs for A028323, the canonical program `A028323.P9765385915217977419` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A028323 has offset 0).

The definition of A028323 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A028323.P9765385915217977419

`2*A028284(n)-A028271(n)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A028323

/-- `2*A028284(n)-A028271(n)` -/
def P9765385915217977419.Spec : Prop :=
  ∀ n, P9765385915217977419.a n = A028323 n

theorem P9765385915217977419.correct : P9765385915217977419.Spec := by
  intro n
  simp only [A028323]

end A028323

/-! ## A028323.P17988510365618953146

`A028313(eq[0, A052553(n)])`
-/

namespace A028323.P17988510365618953146
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052553 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028313 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A028323.P17988510365618953146

namespace A028323

/-- `A028313(eq[0, A052553(n)])` -/
def P17988510365618953146.Spec : Prop :=
  ∀ n, P17988510365618953146.a n = A028323 n

end A028323

/-! ## A028323.P2143589457686669448

`A028313(eq[0, A061896(n)])`
-/

namespace A028323.P2143589457686669448
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061896 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028313 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A028323.P2143589457686669448

namespace A028323

/-- `A028313(eq[0, A061896(n)])` -/
def P2143589457686669448.Spec : Prop :=
  ∀ n, P2143589457686669448.a n = A028323 n

end A028323

/-! ## A028323.P15369123943271203591

`A028313(eq[0, A080159(n)])`
-/

namespace A028323.P15369123943271203591
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080159 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028313 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A028323.P15369123943271203591

namespace A028323

/-- `A028313(eq[0, A080159(n)])` -/
def P15369123943271203591.Spec : Prop :=
  ∀ n, P15369123943271203591.a n = A028323 n

end A028323

/-! ## A028323.P1250152278151612626

`A028313(A274428(n+1)-1)`
-/

namespace A028323.P1250152278151612626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028313 (A274428 (n + 1) - 1).toNat

end

end A028323.P1250152278151612626

namespace A028323

/-- `A028313(A274428(n+1)-1)` -/
def P1250152278151612626.Spec : Prop :=
  ∀ n, P1250152278151612626.a n = A028323 n

end A028323

/-! ## A028323.P11041091070239116247

`A159854(A274428(n+1))+A028284(n)`
-/

namespace A028323.P11041091070239116247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159854 (A274428 (n + 1)).toNat + A028284 n

end

end A028323.P11041091070239116247

namespace A028323

/-- `A159854(A274428(n+1))+A028284(n)` -/
def P11041091070239116247.Spec : Prop :=
  ∀ n, P11041091070239116247.a n = A028323 n

end A028323

/-! ## A028323.P11480805020949876114

`A028271(n)+2*A159854(A274428(n+1))`
-/

namespace A028323.P11480805020949876114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028271 n + 2 * A159854 (A274428 (n + 1)).toNat

end

end A028323.P11480805020949876114

namespace A028323

/-- `A028271(n)+2*A159854(A274428(n+1))` -/
def P11480805020949876114.Spec : Prop :=
  ∀ n, P11480805020949876114.a n = A028323 n

end A028323

/-! ## A028323.P9264266838820541159

`A028271(n)+A005843(A028284(n)-A028271(n))`
-/

namespace A028323.P9264266838820541159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028271 n + A005843 (A028284 n - A028271 n).toNat

end

end A028323.P9264266838820541159

namespace A028323

/-- `A028271(n)+A005843(A028284(n)-A028271(n))` -/
def P9264266838820541159.Spec : Prop :=
  ∀ n, P9264266838820541159.a n = A028323 n

end A028323

/-! ## A028323.P7118294613101025592

`A028271(n)+A005843(A028271(n)-A014413(n+1))`
-/

namespace A028323.P7118294613101025592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028271 n + A005843 (A028271 n - A014413 (n + 1)).toNat

end

end A028323.P7118294613101025592

namespace A028323

/-- `A028271(n)+A005843(A028271(n)-A014413(n+1))` -/
def P7118294613101025592.Spec : Prop :=
  ∀ n, P7118294613101025592.a n = A028323 n

end A028323

/-! ## A028323.P7847764676670874832

`A005843(A028284(n))-A028271(n)`
-/

namespace A028323.P7847764676670874832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A028284 n).toNat - A028271 n

end

end A028323.P7847764676670874832

namespace A028323

/-- `A005843(A028284(n))-A028271(n)` -/
def P7847764676670874832.Spec : Prop :=
  ∀ n, P7847764676670874832.a n = A028323 n

end A028323

/-!
# A028324: Elements to the right of the central elements of the 5-Pascal triangle A028313 that are not 1.

The programs for A028324, the canonical program `A028324.P3744947203801218243` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A028324 has offset 0).

The definition of A028324 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A028324.P9828481272736153280

`A028330(n)+A028272(n)`
-/

namespace A028324.P9828481272736153280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028330 n + A028272 n

end

end A028324.P9828481272736153280

namespace A028324

/-- `A028330(n)+A028272(n)` -/
def P9828481272736153280.Spec : Prop :=
  ∀ n, P9828481272736153280.a n = A028324 n

end A028324

/-! ## A028324.P3744947203801218243

`A028285(n)+A014413(n+1)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A028324

/-- `A028285(n)+A014413(n+1)` -/
def P3744947203801218243.Spec : Prop :=
  ∀ n, P3744947203801218243.a n = A028324 n

theorem P3744947203801218243.correct : P3744947203801218243.Spec := by
  intro n
  simp only [A028324]

end A028324

/-! ## A028324.P11901698934586679888

`2*A028285(n)-A028272(n)`
-/

namespace A028324.P11901698934586679888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028285 n - A028272 n

end

end A028324.P11901698934586679888

namespace A028324

/-- `2*A028285(n)-A028272(n)` -/
def P11901698934586679888.Spec : Prop :=
  ∀ n, P11901698934586679888.a n = A028324 n

end A028324

/-! ## A028324.P16702611292726016939

`A028285(n)+A028330(n)/2`
-/

namespace A028324.P16702611292726016939
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028285 n : ℚ) + (A028330 n : ℚ) / 2

end

end A028324.P16702611292726016939

namespace A028324

/-- `A028285(n)+A028330(n)/2` -/
def P16702611292726016939.Spec : Prop :=
  ∀ n, P16702611292726016939.a n = (A028324 n : ℚ)

end A028324

/-! ## A028324.P2636766116528538771

`A028272(n)+2*A014413(n+1)`
-/

namespace A028324.P2636766116528538771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028272 n + 2 * A014413 (n + 1)

end

end A028324.P2636766116528538771

namespace A028324

/-- `A028272(n)+2*A014413(n+1)` -/
def P2636766116528538771.Spec : Prop :=
  ∀ n, P2636766116528538771.a n = A028324 n

end A028324

/-! ## A028324.P9252044751181645939

`A014411(n+1)+3*A014413(n+1)`
-/

namespace A028324.P9252044751181645939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014411 (n + 1) + 3 * A014413 (n + 1)

end

end A028324.P9252044751181645939

namespace A028324

/-- `A014411(n+1)+3*A014413(n+1)` -/
def P9252044751181645939.Spec : Prop :=
  ∀ n, P9252044751181645939.a n = A028324 n

end A028324

/-! ## A028324.P1583568388798383324

`A028323(A183569(n+1))`
-/

namespace A028324.P1583568388798383324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028323 (A183569 (n + 1)).toNat

end

end A028324.P1583568388798383324

namespace A028324

/-- `A028323(A183569(n+1))` -/
def P1583568388798383324.Spec : Prop :=
  ∀ n, P1583568388798383324.a n = A028324 n

end A028324

/-! ## A028324.P6152194826872533757

`A028323(lt[1, A028323(n)])`
-/

namespace A028324.P6152194826872533757
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028323 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028323 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A028324.P6152194826872533757

namespace A028324

/-- `A028323(lt[1, A028323(n)])` -/
def P6152194826872533757.Spec : Prop :=
  ∀ n, P6152194826872533757.a n = A028324 n

end A028324

/-! ## A028324.P10417483780180557246

`A028272(n)+A005843(A014413(n+1))`
-/

namespace A028324.P10417483780180557246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028272 n + A005843 (A014413 (n + 1)).toNat

end

end A028324.P10417483780180557246

namespace A028324

/-- `A028272(n)+A005843(A014413(n+1))` -/
def P10417483780180557246.Spec : Prop :=
  ∀ n, P10417483780180557246.a n = A028324 n

end A028324

/-! ## A028324.P13498102502115844446

`A028285(n)+A004525(A028330(n))`
-/

namespace A028324.P13498102502115844446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028285 n + A004525 (A028330 n).toNat

end

end A028324.P13498102502115844446

namespace A028324

/-- `A028285(n)+A004525(A028330(n))` -/
def P13498102502115844446.Spec : Prop :=
  ∀ n, P13498102502115844446.a n = A028324 n

end A028324

/-!
# A028325: Odd elements to the right of the central elements of the 5-Pascal triangle A028313.

The programs for A028325, the canonical program `A028325.P16207228055409848812` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A028325 has offset 0).

The definition of A028325 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2478 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A028325.P16207228055409848812

`A028323(record[n/gcd(2, A028323(n))])`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A028325

/-- `A028323(record[n/gcd(2, A028323(n))])` -/
def P16207228055409848812.Spec : Prop :=
  ∀ n, P16207228055409848812.a n = A028325 n

theorem P16207228055409848812.correct : P16207228055409848812.Spec := by
  intro n
  simp only [A028325]

end A028325

/-! ## A028325.P3612265526703560255

`filter[A028323(n), A374134(#)]`
-/

namespace A028325.P3612265526703560255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028323 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374134 (f1 j).toNat = 1) n)

end

end A028325.P3612265526703560255

namespace A028325

/-- `filter[A028323(n), A374134(#)]` -/
def P3612265526703560255.Spec : Prop :=
  ∀ n, P3612265526703560255.a n = A028325 n

end A028325

/-! ## A028325.P14518845996730080678

`A028323(eq[1, A010131(A028323(n))])`
-/

namespace A028325.P14518845996730080678
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010131 (A028323 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028323 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A028325.P14518845996730080678

namespace A028325

/-- `A028323(eq[1, A010131(A028323(n))])` -/
def P14518845996730080678.Spec : Prop :=
  ∀ n, P14518845996730080678.a n = A028325 n

end A028325

/-! ## A028325.P4568134863240835192

`A028323(eq[1, A265331(A028323(n))])`
-/

namespace A028325.P4568134863240835192
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265331 (A028323 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028323 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A028325.P4568134863240835192

namespace A028325

/-- `A028323(eq[1, A265331(A028323(n))])` -/
def P4568134863240835192.Spec : Prop :=
  ∀ n, P4568134863240835192.a n = A028325 n

end A028325

/-! ## A028325.P10060445818900539964

`filter[A028323(n), A000035(#)]`
-/

namespace A028325.P10060445818900539964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028323 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A028325.P10060445818900539964

namespace A028325

/-- `filter[A028323(n), A000035(#)]` -/
def P10060445818900539964.Spec : Prop :=
  ∀ n, P10060445818900539964.a n = A028325 n

end A028325

/-!
# A028326: Twice Pascal's triangle A007318: T(n,k) = 2*C(n,k).

The programs for A028326, the canonical program `A028326.P16610217584664895500` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A028326 has offset 0).

The definition of A028326 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A028326.P11079312870778523035

`A109128(n)+1`
-/

namespace A028326.P11079312870778523035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109128 n + 1

end

end A028326.P11079312870778523035

namespace A028326

/-- `A109128(n)+1` -/
def P11079312870778523035.Spec : Prop :=
  ∀ n, P11079312870778523035.a n = A028326 n

end A028326

/-! ## A028326.P16610217584664895500

`2*A007318(n)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A028326

/-- `2*A007318(n)` -/
def P16610217584664895500.Spec : Prop :=
  ∀ n, P16610217584664895500.a n = A028326 n

theorem P16610217584664895500.correct : P16610217584664895500.Spec := by
  intro n
  simp only [A028326]

end A028326

/-! ## A028326.P17903597093795463265

`lcm(2, A124927(n))`
-/

namespace A028326.P17903597093795463265
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A124927 n)

end

end A028326.P17903597093795463265

namespace A028326

/-- `lcm(2, A124927(n))` -/
def P17903597093795463265.Spec : Prop :=
  ∀ n, (P17903597093795463265.a n : ℤ) = A028326 n

end A028326

/-! ## A028326.P10494226993344545195

`abs(2*A108086(n))`
-/

namespace A028326.P10494226993344545195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 * A108086 n|

end

end A028326.P10494226993344545195

namespace A028326

/-- `abs(2*A108086(n))` -/
def P10494226993344545195.Spec : Prop :=
  ∀ n, P10494226993344545195.a n = A028326 n

end A028326

/-! ## A028326.P7528654749554837030

`abs(2*A130595(n))`
-/

namespace A028326.P7528654749554837030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 * A130595 n|

end

end A028326.P7528654749554837030

namespace A028326

/-- `abs(2*A130595(n))` -/
def P7528654749554837030.Spec : Prop :=
  ∀ n, P7528654749554837030.a n = A028326 n

end A028326

/-! ## A028326.P14740203596829949064

`sqrt(A141596(n)+3)`
-/

namespace A028326.P14740203596829949064
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A141596 n + 3 : ℝ)

end

end A028326.P14740203596829949064

namespace A028326

/-- `sqrt(A141596(n)+3)` -/
def P14740203596829949064.Spec : Prop :=
  ∀ n, P14740203596829949064.a n = (A028326 n : ℝ)

end A028326

/-! ## A028326.P3635331667242311987

`2*sqrt(A008459(n))`
-/

namespace A028326.P3635331667242311987
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  2 * Real.sqrt (A008459 n : ℝ)

end

end A028326.P3635331667242311987

namespace A028326

/-- `2*sqrt(A008459(n))` -/
def P3635331667242311987.Spec : Prop :=
  ∀ n, P3635331667242311987.a n = (A028326 n : ℝ)

end A028326

/-! ## A028326.P2121851800885918932

`Δ[2*A102363(n)]`
-/

namespace A028326.P2121851800885918932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A102363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A028326.P2121851800885918932

namespace A028326

/-- `Δ[2*A102363(n)]` -/
def P2121851800885918932.Spec : Prop :=
  ∀ n, P2121851800885918932.a n = A028326 n

end A028326

/-! ## A028326.P8751880279541149232

`2*(A014473(n)+1)`
-/

namespace A028326.P8751880279541149232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A014473 n + 1)

end

end A028326.P8751880279541149232

namespace A028326

/-- `2*(A014473(n)+1)` -/
def P8751880279541149232.Spec : Prop :=
  ∀ n, P8751880279541149232.a n = A028326 n

end A028326

/-! ## A028326.P3804171809540808265

`(A131061(n)+3)/2`
-/

namespace A028326.P3804171809540808265
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A131061 n + 3 : ℚ) / 2

end

end A028326.P3804171809540808265

namespace A028326

/-- `(A131061(n)+3)/2` -/
def P3804171809540808265.Spec : Prop :=
  ∀ n, P3804171809540808265.a n = (A028326 n : ℚ)

end A028326

/-! ## A028326.P7563659160490518552

`(A131065(n)+5)/3`
-/

namespace A028326.P7563659160490518552
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A131065 n + 5 : ℚ) / 3

end

end A028326.P7563659160490518552

namespace A028326

/-- `(A131065(n)+5)/3` -/
def P7563659160490518552.Spec : Prop :=
  ∀ n, P7563659160490518552.a n = (A028326 n : ℚ)

end A028326

/-! ## A028326.P5597121527746025456

`or(1, A132731(n))+1`
-/

namespace A028326.P5597121527746025456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A132731 n) + 1

end

end A028326.P5597121527746025456

namespace A028326

/-- `or(1, A132731(n))+1` -/
def P5597121527746025456.Spec : Prop :=
  ∀ n, P5597121527746025456.a n = A028326 n

end A028326

/-! ## A028326.P4366523483442554654

`A134058(C(2, n)+n)`
-/

namespace A028326.P4366523483442554654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134058 (Nat.choose 2 n + n)

end

end A028326.P4366523483442554654

namespace A028326

/-- `A134058(C(2, n)+n)` -/
def P4366523483442554654.Spec : Prop :=
  ∀ n, P4366523483442554654.a n = A028326 n

end A028326

/-! ## A028326.P12434238672003726491

`abs(2*(2-A173740(n)))`
-/

namespace A028326.P12434238672003726491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 * (2 - A173740 n)|

end

end A028326.P12434238672003726491

namespace A028326

/-- `abs(2*(2-A173740(n)))` -/
def P12434238672003726491.Spec : Prop :=
  ∀ n, P12434238672003726491.a n = A028326 n

end A028326

/-! ## A028326.P15468734088971663138

`A134058(A028310(n))`
-/

namespace A028326.P15468734088971663138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134058 (A028310 n).toNat

end

end A028326.P15468734088971663138

namespace A028326

/-- `A134058(A028310(n))` -/
def P15468734088971663138.Spec : Prop :=
  ∀ n, P15468734088971663138.a n = A028326 n

end A028326

/-! ## A028326.P1876938628692076472

`A072405(n)+A028262(n)`
-/

namespace A028326.P1876938628692076472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072405 n + A028262 n

end

end A028326.P1876938628692076472

namespace A028326

/-- `A072405(n)+A028262(n)` -/
def P1876938628692076472.Spec : Prop :=
  ∀ n, P1876938628692076472.a n = A028326 n

end A028326

/-! ## A028326.P13851757335094145893

`A087698(n)+A028275(n)`
-/

namespace A028326.P13851757335094145893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087698 n + A028275 n

end

end A028326.P13851757335094145893

namespace A028326

/-- `A087698(n)+A028275(n)` -/
def P13851757335094145893.Spec : Prop :=
  ∀ n, P13851757335094145893.a n = A028326 n

end A028326

/-! ## A028326.P2171838437901387666

`A097805(n)+A029653(n)`
-/

namespace A028326.P2171838437901387666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097805 n + A029653 n

end

end A028326.P2171838437901387666

namespace A028326

/-- `A097805(n)+A029653(n)` -/
def P2171838437901387666.Spec : Prop :=
  ∀ n, P2171838437901387666.a n = A028326 n

end A028326

/-! ## A028326.P7223526164008319747

`A134058(A000007(n)+n)`
-/

namespace A028326.P7223526164008319747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134058 (A000007 n + (n : ℤ)).toNat

end

end A028326.P7223526164008319747

namespace A028326

/-- `A134058(A000007(n)+n)` -/
def P7223526164008319747.Spec : Prop :=
  ∀ n, P7223526164008319747.a n = A028326 n

end A028326

/-! ## A028326.P12574373770423217275

`A124927(n)+A010054(n)`
-/

namespace A028326.P12574373770423217275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124927 n + A010054 n

end

end A028326.P12574373770423217275

namespace A028326

/-- `A124927(n)+A010054(n)` -/
def P12574373770423217275.Spec : Prop :=
  ∀ n, P12574373770423217275.a n = A028326 n

end A028326

/-!
# A028327: Elements in the even-Pascal triangle A028326 that are not 2.

The programs for A028327, the canonical program `A028327.P9835590816428302231` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A028327 has offset 0).

The definition of A028327 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A028327.P9835590816428302231

`2*(A014430(n)+1)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A028327

/-- `2*(A014430(n)+1)` -/
def P9835590816428302231.Spec : Prop :=
  ∀ n, P9835590816428302231.a n = A028327 n

theorem P9835590816428302231.correct : P9835590816428302231.Spec := by
  intro n
  simp only [A028327]

end A028327

/-! ## A028327.P4758981176495393427

`2*A014410(n+2)`
-/

namespace A028327.P4758981176495393427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A014410 (n + 2)

end

end A028327.P4758981176495393427

namespace A028327

/-- `2*A014410(n+2)` -/
def P4758981176495393427.Spec : Prop :=
  ∀ n, P4758981176495393427.a n = A028327 n

end A028327

/-! ## A028327.P7622155801708759135

`2*ceil(sqrt(A065420(n)))`
-/

namespace A028327.P7622155801708759135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ⌈Real.sqrt (A065420 n : ℝ)⌉

end

end A028327.P7622155801708759135

namespace A028327

/-- `2*ceil(sqrt(A065420(n)))` -/
def P7622155801708759135.Spec : Prop :=
  ∀ n, P7622155801708759135.a n = A028327 n

end A028327

/-! ## A028327.P702359813632823527

`2*A074909(comp[∑[n]])`
-/

namespace A028327.P702359813632823527
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A074909 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A028327.P702359813632823527

namespace A028327

/-- `2*A074909(comp[∑[n]])` -/
def P702359813632823527.Spec : Prop :=
  ∀ n, P702359813632823527.a n = A028327 n

end A028327

/-! ## A028327.P4411501462175133397

`2*sqrt(A014719(n+2))`
-/

namespace A028327.P4411501462175133397
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  2 * Real.sqrt (A014719 (n + 2) : ℝ)

end

end A028327.P4411501462175133397

namespace A028327

/-- `2*sqrt(A014719(n+2))` -/
def P4411501462175133397.Spec : Prop :=
  ∀ n, P4411501462175133397.a n = (A028327 n : ℝ)

end A028327

/-! ## A028327.P12491229335598190644

`A028326(lt[2, A028326(n)])`
-/

namespace A028327.P12491229335598190644
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028326 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028326 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A028327.P12491229335598190644

namespace A028327

/-- `A028326(lt[2, A028326(n)])` -/
def P12491229335598190644.Spec : Prop :=
  ∀ n, P12491229335598190644.a n = A028327 n

end A028327

/-! ## A028327.P4025718892275338048

`A124927(lt[2, A124927(n)])`
-/

namespace A028327.P4025718892275338048
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124927 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124927 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A028327.P4025718892275338048

namespace A028327

/-- `A124927(lt[2, A124927(n)])` -/
def P4025718892275338048.Spec : Prop :=
  ∀ n, P4025718892275338048.a n = A028327 n

end A028327

/-! ## A028327.P540052396153013392

`A051597(n)+A028263(n)`
-/

namespace A028327.P540052396153013392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051597 n + A028263 n

end

end A028327.P540052396153013392

namespace A028327

/-- `A051597(n)+A028263(n)` -/
def P540052396153013392.Spec : Prop :=
  ∀ n, P540052396153013392.a n = A028327 n

end A028327

/-! ## A028327.P2697792873769098699

`A051601(n)+A028276(n)`
-/

namespace A028327.P2697792873769098699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051601 n + A028276 n

end

end A028327.P2697792873769098699

namespace A028327

/-- `A051601(n)+A028276(n)` -/
def P2697792873769098699.Spec : Prop :=
  ∀ n, P2697792873769098699.a n = A028327 n

end A028327

/-! ## A028327.P8749364764209112039

`A051631(n)+A028314(n)`
-/

namespace A028327.P8749364764209112039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051631 n + A028314 n

end

end A028327.P8749364764209112039

namespace A028327

/-- `A051631(n)+A028314(n)` -/
def P8749364764209112039.Spec : Prop :=
  ∀ n, P8749364764209112039.a n = A028327 n

end A028327

/-! ## A028327.P16568635051461870183

`A194121(n)-A222403(n)`
-/

namespace A028327.P16568635051461870183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194121 n - A222403 n

end

end A028327.P16568635051461870183

namespace A028327

/-- `A194121(n)-A222403(n)` -/
def P16568635051461870183.Spec : Prop :=
  ∀ n, P16568635051461870183.a n = A028327 n

end A028327

/-! ## A028327.P4606878362219098643

`A109128(lt[1, A109128(n)])+1`
-/

namespace A028327.P4606878362219098643
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109128 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109128 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n) + 1

end

end A028327.P4606878362219098643

namespace A028327

/-- `A109128(lt[1, A109128(n)])+1` -/
def P4606878362219098643.Spec : Prop :=
  ∀ n, P4606878362219098643.a n = A028327 n

end A028327

/-! ## A028327.P14350801348503652232

`2*(A051597(n)+A007318(n))`
-/

namespace A028327.P14350801348503652232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A051597 n + A007318 n)

end

end A028327.P14350801348503652232

namespace A028327

/-- `2*(A051597(n)+A007318(n))` -/
def P14350801348503652232.Spec : Prop :=
  ∀ n, P14350801348503652232.a n = A028327 n

end A028327

/-! ## A028327.P13390173253184091530

`2*(A051601(n)+A028326(n))`
-/

namespace A028327.P13390173253184091530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A051601 n + A028326 n)

end

end A028327.P13390173253184091530

namespace A028327

/-- `2*(A051601(n)+A028326(n))` -/
def P13390173253184091530.Spec : Prop :=
  ∀ n, P13390173253184091530.a n = A028327 n

end A028327

/-! ## A028327.P5932193568094560824

`A028326(n)+2*A051597(n)`
-/

namespace A028327.P5932193568094560824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028326 n + 2 * A051597 n

end

end A028327.P5932193568094560824

namespace A028327

/-- `A028326(n)+2*A051597(n)` -/
def P5932193568094560824.Spec : Prop :=
  ∀ n, P5932193568094560824.a n = A028327 n

end A028327

/-! ## A028327.P12378506398040951865

`2*(A135278(n)+A074909(n))`
-/

namespace A028327.P12378506398040951865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A135278 n + A074909 n)

end

end A028327.P12378506398040951865

namespace A028327

/-- `2*(A135278(n)+A074909(n))` -/
def P12378506398040951865.Spec : Prop :=
  ∀ n, P12378506398040951865.a n = A028327 n

end A028327

/-! ## A028327.P12165116238382097151

`2*(A028263(n)-A007318(n))`
-/

namespace A028327.P12165116238382097151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A028263 n - A007318 n)

end

end A028327.P12165116238382097151

namespace A028327

/-- `2*(A028263(n)-A007318(n))` -/
def P12165116238382097151.Spec : Prop :=
  ∀ n, P12165116238382097151.a n = A028327 n

end A028327

/-! ## A028327.P18037533816954853743

`2*A028263(n)-A028326(n)`
-/

namespace A028327.P18037533816954853743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028263 n - A028326 n

end

end A028327.P18037533816954853743

namespace A028327

/-- `2*A028263(n)-A028326(n)` -/
def P18037533816954853743.Spec : Prop :=
  ∀ n, P18037533816954853743.a n = A028327 n

end A028327

/-! ## A028327.P6624340856707358503

`2*(A028276(n)-A028326(n))`
-/

namespace A028327.P6624340856707358503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A028276 n - A028326 n)

end

end A028327.P6624340856707358503

namespace A028327

/-- `2*(A028276(n)-A028326(n))` -/
def P6624340856707358503.Spec : Prop :=
  ∀ n, P6624340856707358503.a n = A028327 n

end A028327

/-! ## A028327.P7753058451052462557

`2*(A134636(n)-A051631(n))`
-/

namespace A028327.P7753058451052462557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A134636 n - A051631 n)

end

end A028327.P7753058451052462557

namespace A028327

/-- `2*(A134636(n)-A051631(n))` -/
def P7753058451052462557.Spec : Prop :=
  ∀ n, P7753058451052462557.a n = A028327 n

end A028327

/-!
# A028328: Distinct elements in the even-Pascal triangle A028326.

The programs for A028328, there is no canonical definition to state claims against.
-/

/-! ## A028328.P16625480945423080347

`2*A014631(n+1)`
-/

namespace A028328.P16625480945423080347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A014631 (n + 1)

end

end A028328.P16625480945423080347

/-! ## A028328.P14540894268442615739

`A014631(C(n+1, n))+A014631(n+1)`
-/

namespace A028328.P14540894268442615739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014631 (Nat.choose (n + 1) n) + A014631 (n + 1)

end

end A028328.P14540894268442615739

/-! ## A028328.P11203238976358948619

`A014631(n+1)+A014631(Δ[n²]-n)`
-/

namespace A028328.P11203238976358948619
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014631 (n + 1) + A014631 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat

end

end A028328.P11203238976358948619

/-! ## A028328.P10830727691978014375

`2*sqrt(A014764(n+1))`
-/

namespace A028328.P10830727691978014375
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  2 * Real.sqrt (A014764 (n + 1) : ℝ)

end

end A028328.P10830727691978014375

/-! ## A028328.P6181939711816789057

`A014631(n+1)+sqrt(A014764(n+1))`
-/

namespace A028328.P6181939711816789057
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A014631 (n + 1) : ℝ) + Real.sqrt (A014764 (n + 1) : ℝ)

end

end A028328.P6181939711816789057

/-! ## A028328.P5679531165101815991

`∑{d}[A014631(n+1), A005843(A000010(#))]`
-/

namespace A028328.P5679531165101815991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014631 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A005843 (A000010 d).toNat

end

end A028328.P5679531165101815991

/-! ## A028328.P1775968704845399080

`A004277(A014631(n+1))`
-/

namespace A028328.P1775968704845399080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A014631 (n + 1)).toNat

end

end A028328.P1775968704845399080

/-! ## A028328.P2435107007547366681

`A004275(A014631(n+1)+1)`
-/

namespace A028328.P2435107007547366681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A014631 (n + 1) + 1).toNat

end

end A028328.P2435107007547366681

/-! ## A028328.P2105824384632956680

`A005843(A014631(C(n+1, n)))`
-/

namespace A028328.P2105824384632956680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A014631 (Nat.choose (n + 1) n)).toNat

end

end A028328.P2105824384632956680

/-!
# A028329: Twice central binomial coefficients.

The programs for A028329, the canonical program `A028329.P2723209719397665586` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A028329 has offset 0).

The definition of A028329 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A028329.P2723209719397665586

`2*A000984(n)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A028329

/-- `2*A000984(n)` -/
def P2723209719397665586.Spec : Prop :=
  ∀ n, P2723209719397665586.a n = A028329 n

theorem P2723209719397665586.correct : P2723209719397665586.Spec := by
  intro n
  simp only [A028329]

end A028329

/-! ## A028329.P14086305482176952610

`(4-2/n)*a(n-1)` with `a(0)=2`
-/

namespace A028329.P14086305482176952610
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [2] fun n a =>
  (4 - 2 / (n : ℚ)) * a (n - 1)

end

end A028329.P14086305482176952610

namespace A028329

/-- `(4-2/n)*a(n-1)` -/
def P14086305482176952610.Spec : Prop :=
  ∀ n, P14086305482176952610.a n = (A028329 n : ℚ)

end A028329

/-! ## A028329.P5676454167838196105

`2*(2-n^(-1))*a(n-1)` with `a(0)=2`
-/

namespace A028329.P5676454167838196105
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [2] fun n a =>
  2 * ((2 - (n : ℚ) ^ (-1 : ℤ)) * a (n - 1))

end

end A028329.P5676454167838196105

namespace A028329

/-- `2*(2-n^(-1))*a(n-1)` -/
def P5676454167838196105.Spec : Prop :=
  ∀ n, P5676454167838196105.a n = (A028329 n : ℚ)

end A028329

/-! ## A028329.P17262523668324564540

`record[a(n-1)/(floor(n/2)/n-1)]` with `a(0)=2`
-/

namespace A028329.P17262523668324564540
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [2] fun n f1 =>
  f1 (n - 1) / ((⌊(n : ℚ) / 2⌋ : ℚ) / (n : ℚ) - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A028329.P17262523668324564540

namespace A028329

/-- `record[a(n-1)/(floor(n/2)/n-1)]` -/
def P17262523668324564540.Spec : Prop :=
  ∀ n, P17262523668324564540.a n = (A028329 n : ℚ)

end A028329

/-! ## A028329.P11045768453793086485

`A134760(n)+1`
-/

namespace A028329.P11045768453793086485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134760 n + 1

end

end A028329.P11045768453793086485

namespace A028329

/-- `A134760(n)+1` -/
def P11045768453793086485.Spec : Prop :=
  ∀ n, P11045768453793086485.a n = A028329 n

end A028329

/-! ## A028329.P222883379286351761

`A240530(n)/2`
-/

namespace A028329.P222883379286351761
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A240530 n : ℚ) / 2

end

end A028329.P222883379286351761

namespace A028329

/-- `A240530(n)/2` -/
def P222883379286351761.Spec : Prop :=
  ∀ n, P222883379286351761.a n = (A028329 n : ℚ)

end A028329

/-! ## A028329.P14192860930702655241

`lcm(2, A100320(n))`
-/

namespace A028329.P14192860930702655241
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A100320 n)

end

end A028329.P14192860930702655241

namespace A028329

/-- `lcm(2, A100320(n))` -/
def P14192860930702655241.Spec : Prop :=
  ∀ n, (P14192860930702655241.a n : ℤ) = A028329 n

end A028329

/-! ## A028329.P8456149298959993002

`A047073(Δ[n²])`
-/

namespace A028329.P8456149298959993002
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047073 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A028329.P8456149298959993002

namespace A028329

/-- `A047073(Δ[n²])` -/
def P8456149298959993002.Spec : Prop :=
  ∀ n, P8456149298959993002.a n = A028329 n

end A028329

/-! ## A028329.P6909248221738630768

`A063886(Δ[n²])`
-/

namespace A028329.P6909248221738630768
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063886 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A028329.P6909248221738630768

namespace A028329

/-- `A063886(Δ[n²])` -/
def P6909248221738630768.Spec : Prop :=
  ∀ n, P6909248221738630768.a n = A028329 n

end A028329

/-! ## A028329.P7708750227025535424

`record[A134761(n)+1]`
-/

namespace A028329.P7708750227025535424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134761 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A028329.P7708750227025535424

namespace A028329

/-- `record[A134761(n)+1]` -/
def P7708750227025535424.Spec : Prop :=
  ∀ n, P7708750227025535424.a n = A028329 n

end A028329

/-! ## A028329.P14735779044084410884

`record[2*A081668(n)]`
-/

namespace A028329.P14735779044084410884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A081668 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A028329.P14735779044084410884

namespace A028329

/-- `record[2*A081668(n)]` -/
def P14735779044084410884.Spec : Prop :=
  ∀ n, P14735779044084410884.a n = A028329 n

end A028329

/-! ## A028329.P8389224291984908889

`record[2*A089849(n)]`
-/

namespace A028329.P8389224291984908889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A089849 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A028329.P8389224291984908889

namespace A028329

/-- `record[2*A089849(n)]` -/
def P8389224291984908889.Spec : Prop :=
  ∀ n, P8389224291984908889.a n = A028329 n

end A028329

/-! ## A028329.P9584846593304582845

`record[2*A126869(n)]`
-/

namespace A028329.P9584846593304582845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A126869 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A028329.P9584846593304582845

namespace A028329

/-- `record[2*A126869(n)]` -/
def P9584846593304582845.Spec : Prop :=
  ∀ n, P9584846593304582845.a n = A028329 n

end A028329

/-! ## A028329.P12313635301070482812

`record[2*A126930(n)]`
-/

namespace A028329.P12313635301070482812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A126930 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A028329.P12313635301070482812

namespace A028329

/-- `record[2*A126930(n)]` -/
def P12313635301070482812.Spec : Prop :=
  ∀ n, P12313635301070482812.a n = A028329 n

end A028329

/-! ## A028329.P6181989275739863637

`A134761(2*n)+1`
-/

namespace A028329.P6181989275739863637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134761 (2 * n) + 1

end

end A028329.P6181989275739863637

namespace A028329

/-- `A134761(2*n)+1` -/
def P6181989275739863637.Spec : Prop :=
  ∀ n, P6181989275739863637.a n = A028329 n

end A028329

/-! ## A028329.P12474048999252808783

`A182027(2*(n+1))`
-/

namespace A028329.P12474048999252808783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182027 (2 * (n + 1))

end

end A028329.P12474048999252808783

namespace A028329

/-- `A182027(2*(n+1))` -/
def P12474048999252808783.Spec : Prop :=
  ∀ n, P12474048999252808783.a n = A028329 n

end A028329

/-! ## A028329.P5530978613887769406

`A218008(2*n)+2`
-/

namespace A028329.P5530978613887769406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218008 (2 * n) + 2

end

end A028329.P5530978613887769406

namespace A028329

/-- `A218008(2*n)+2` -/
def P5530978613887769406.Spec : Prop :=
  ∀ n, P5530978613887769406.a n = A028329 n

end A028329

/-! ## A028329.P14095578818779050626

`2*A001405(2*n)`
-/

namespace A028329.P14095578818779050626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001405 (2 * n)

end

end A028329.P14095578818779050626

namespace A028329

/-- `2*A001405(2*n)` -/
def P14095578818779050626.Spec : Prop :=
  ∀ n, P14095578818779050626.a n = A028329 n

end A028329

/-! ## A028329.P5946955260651112725

`2*A063886(2*n)`
-/

namespace A028329.P5946955260651112725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A063886 (2 * n)

end

end A028329.P5946955260651112725

namespace A028329

/-- `2*A063886(2*n)` -/
def P5946955260651112725.Spec : Prop :=
  ∀ n, P5946955260651112725.a n = A028329 n

end A028329

/-! ## A028329.P9143676475564017375

`2*A081668(2*n)`
-/

namespace A028329.P9143676475564017375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A081668 (2 * n)

end

end A028329.P9143676475564017375

namespace A028329

/-- `2*A081668(2*n)` -/
def P9143676475564017375.Spec : Prop :=
  ∀ n, P9143676475564017375.a n = A028329 n

end A028329

/-!
# A028330: Elements to the right of the central elements of the even-Pascal triangle A028326.

The programs for A028330, the canonical program `A028330.P6625420377303343371` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A028330 has offset 0).

The definition of A028330 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014413, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A028330.P6625420377303343371

`2*A014413(n+1)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A028330

/-- `2*A014413(n+1)` -/
def P6625420377303343371.Spec : Prop :=
  ∀ n, P6625420377303343371.a n = A028330 n

theorem P6625420377303343371.correct : P6625420377303343371.Spec := by
  intro n
  simp only [A028330]

end A028330

/-! ## A028330.P7375515392481265865

`A034869(n)+A029666(n)`
-/

namespace A028330.P7375515392481265865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034869 n + A029666 n

end

end A028330.P7375515392481265865

namespace A028330

/-- `A034869(n)+A029666(n)` -/
def P7375515392481265865.Spec : Prop :=
  ∀ n, P7375515392481265865.a n = A028330 n

end A028330

/-! ## A028330.P7016119549208923359

`A028324(n)-A028272(n)`
-/

namespace A028330.P7016119549208923359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028324 n - A028272 n

end

end A028330.P7016119549208923359

namespace A028330

/-- `A028324(n)-A028272(n)` -/
def P7016119549208923359.Spec : Prop :=
  ∀ n, P7016119549208923359.a n = A028330 n

end A028330

/-! ## A028330.P4846970747229183634

`A029614(n)-A034869(n)`
-/

namespace A028330.P4846970747229183634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029614 n - A034869 n

end

end A028330.P4846970747229183634

namespace A028330

/-- `A029614(n)-A034869(n)` -/
def P4846970747229183634.Spec : Prop :=
  ∀ n, P4846970747229183634.a n = A028330 n

end A028330

/-! ## A028330.P13385849048669623393

`A028285(n)-A014411(n+1)`
-/

namespace A028330.P13385849048669623393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028285 n - A014411 (n + 1)

end

end A028330.P13385849048669623393

namespace A028330

/-- `A028285(n)-A014411(n+1)` -/
def P13385849048669623393.Spec : Prop :=
  ∀ n, P13385849048669623393.a n = A028330 n

end A028330

/-! ## A028330.P16636379018230221527

`2*(A028285(n)-A028272(n))`
-/

namespace A028330.P16636379018230221527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A028285 n - A028272 n)

end

end A028330.P16636379018230221527

namespace A028330

/-- `2*(A028285(n)-A028272(n))` -/
def P16636379018230221527.Spec : Prop :=
  ∀ n, P16636379018230221527.a n = A028330 n

end A028330

/-! ## A028330.P17819912575249326087

`2*(A028324(n)-A028285(n))`
-/

namespace A028330.P17819912575249326087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A028324 n - A028285 n)

end

end A028330.P17819912575249326087

namespace A028330

/-- `2*(A028324(n)-A028285(n))` -/
def P17819912575249326087.Spec : Prop :=
  ∀ n, P17819912575249326087.a n = A028330 n

end A028330

/-! ## A028330.P5263836450267237957

`2*(A029614(n)-A029648(n))`
-/

namespace A028330.P5263836450267237957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A029614 n - A029648 n)

end

end A028330.P5263836450267237957

namespace A028330

/-- `2*(A029614(n)-A029648(n))` -/
def P5263836450267237957.Spec : Prop :=
  ∀ n, P5263836450267237957.a n = A028330 n

end A028330

/-! ## A028330.P12961290802239687181

`2*(A029632(n)-A029666(n))`
-/

namespace A028330.P12961290802239687181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A029632 n - A029666 n)

end

end A028330.P12961290802239687181

namespace A028330

/-- `2*(A029632(n)-A029666(n))` -/
def P12961290802239687181.Spec : Prop :=
  ∀ n, P12961290802239687181.a n = A028330 n

end A028330

/-! ## A028330.P18231879022776777785

`2*(A029648(n)-A034869(n))`
-/

namespace A028330.P18231879022776777785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A029648 n - A034869 n)

end

end A028330.P18231879022776777785

namespace A028330

/-- `2*(A029648(n)-A034869(n))` -/
def P18231879022776777785.Spec : Prop :=
  ∀ n, P18231879022776777785.a n = A028330 n

end A028330

/-! ## A028330.P194132195630707292

`2*(A028272(n)-A014411(n+1))`
-/

namespace A028330.P194132195630707292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A028272 n - A014411 (n + 1))

end

end A028330.P194132195630707292

namespace A028330

/-- `2*(A028272(n)-A014411(n+1))` -/
def P194132195630707292.Spec : Prop :=
  ∀ n, P194132195630707292.a n = A028330 n

end A028330

/-! ## A028330.P14472472615678354561

`2/A027434(n+1)*A046207(n+1)`
-/

namespace A028330.P14472472615678354561
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (A027434 (n + 1) : ℚ) * (A046207 (n + 1) : ℚ)

end

end A028330.P14472472615678354561

namespace A028330

/-- `2/A027434(n+1)*A046207(n+1)` -/
def P14472472615678354561.Spec : Prop :=
  ∀ n, P14472472615678354561.a n = (A028330 n : ℚ)

end A028330

/-! ## A028330.P10850992284594244235

`2*A008311(A078358(n+1))`
-/

namespace A028330.P10850992284594244235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008311 (A078358 (n + 1)).toNat

end

end A028330.P10850992284594244235

namespace A028330

/-- `2*A008311(A078358(n+1))` -/
def P10850992284594244235.Spec : Prop :=
  ∀ n, P10850992284594244235.a n = A028330 n

end A028330

/-! ## A028330.P979635485692672969

`2*sqrt(A014721(n+1))`
-/

namespace A028330.P979635485692672969
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  2 * Real.sqrt (A014721 (n + 1) : ℝ)

end

end A028330.P979635485692672969

namespace A028330

/-- `2*sqrt(A014721(n+1))` -/
def P979635485692672969.Spec : Prop :=
  ∀ n, P979635485692672969.a n = (A028330 n : ℝ)

end A028330

/-! ## A028330.P10183315723893209874

`A014413(n+1)+A014721(n+1)/A014413(n+1)`
-/

namespace A028330.P10183315723893209874
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014413 (n + 1) : ℚ) + (A014721 (n + 1) : ℚ) / (A014413 (n + 1) : ℚ)

end

end A028330.P10183315723893209874

namespace A028330

/-- `A014413(n+1)+A014721(n+1)/A014413(n+1)` -/
def P10183315723893209874.Spec : Prop :=
  ∀ n, P10183315723893209874.a n = (A028330 n : ℚ)

end A028330

/-! ## A028330.P11048238430354410057

`A028326(eq[1, A340507(n)])`
-/

namespace A028330.P11048238430354410057
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340507 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028326 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A028330.P11048238430354410057

namespace A028330

/-- `A028326(eq[1, A340507(n)])` -/
def P11048238430354410057.Spec : Prop :=
  ∀ n, P11048238430354410057.a n = A028330 n

end A028330

/-! ## A028330.P4290250746030686908

`2*A178300(A091995(n+1))`
-/

namespace A028330.P4290250746030686908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A178300 (A091995 (n + 1)).toNat

end

end A028330.P4290250746030686908

namespace A028330

/-- `2*A178300(A091995(n+1))` -/
def P4290250746030686908.Spec : Prop :=
  ∀ n, P4290250746030686908.a n = A028330 n

end A028330

/-! ## A028330.P14976540583443300226

`2*A007318(eq[1, A340507(n)])`
-/

namespace A028330.P14976540583443300226
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340507 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007318 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A028330.P14976540583443300226

namespace A028330

/-- `2*A007318(eq[1, A340507(n)])` -/
def P14976540583443300226.Spec : Prop :=
  ∀ n, P14976540583443300226.a n = A028330 n

end A028330

/-! ## A028330.P18198986045835602580

`A028326(eq[0, A061896(n)])`
-/

namespace A028330.P18198986045835602580
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061896 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028326 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A028330.P18198986045835602580

namespace A028330

/-- `A028326(eq[0, A061896(n)])` -/
def P18198986045835602580.Spec : Prop :=
  ∀ n, P18198986045835602580.a n = A028330 n

end A028330

/-! ## A028330.P1907403944646943319

`2*A007318(eq[0, A052553(n)])`
-/

namespace A028330.P1907403944646943319
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052553 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007318 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A028330.P1907403944646943319

namespace A028330

/-- `2*A007318(eq[0, A052553(n)])` -/
def P1907403944646943319.Spec : Prop :=
  ∀ n, P1907403944646943319.a n = A028330 n

end A028330

/-!
# A028331: Elements to the right of the central elements of the even-Pascal triangle A028326 that are not 2.

The programs for A028331, the canonical program `A028331.P79324678744647748` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A028331 has offset 0).

The definition of A028331 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A028331.P79324678744647748

`2*A014411(n+1)`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A028331

/-- `2*A014411(n+1)` -/
def P79324678744647748.Spec : Prop :=
  ∀ n, P79324678744647748.a n = A028331 n

theorem P79324678744647748.correct : P79324678744647748.Spec := by
  intro n
  simp only [A028331]

end A028331

/-! ## A028331.P15770476847713799023

`2*A014413(A049068(n+1))`
-/

namespace A028331.P15770476847713799023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A014413 (A049068 (n + 1)).toNat

end

end A028331.P15770476847713799023

namespace A028331

/-- `2*A014413(A049068(n+1))` -/
def P15770476847713799023.Spec : Prop :=
  ∀ n, P15770476847713799023.a n = A028331 n

end A028331

/-! ## A028331.P6399869875882387666

`2*A028272(n)-A028330(n)`
-/

namespace A028331.P6399869875882387666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028272 n - A028330 n

end

end A028331.P6399869875882387666

namespace A028331

/-- `2*A028272(n)-A028330(n)` -/
def P6399869875882387666.Spec : Prop :=
  ∀ n, P6399869875882387666.a n = A028331 n

end A028331

/-! ## A028331.P16459743498926452806

`2*(A028285(n)-A028330(n))`
-/

namespace A028331.P16459743498926452806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A028285 n - A028330 n)

end

end A028331.P16459743498926452806

namespace A028331

/-- `2*(A028285(n)-A028330(n))` -/
def P16459743498926452806.Spec : Prop :=
  ∀ n, P16459743498926452806.a n = A028331 n

end A028331

/-! ## A028331.P10318513424722056402

`2*(A029633(n)-A029663(n))`
-/

namespace A028331.P10318513424722056402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A029633 n - A029663 n)

end

end A028331.P10318513424722056402

namespace A028331

/-- `2*(A029633(n)-A029663(n))` -/
def P10318513424722056402.Spec : Prop :=
  ∀ n, P10318513424722056402.a n = A028331 n

end A028331

/-! ## A028331.P13715490618255454131

`2*A014413(A000267(n)+2+n)`
-/

namespace A028331.P13715490618255454131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A014413 (A000267 n + 2 + (n : ℤ)).toNat

end

end A028331.P13715490618255454131

namespace A028331

/-- `2*A014413(A000267(n)+2+n)` -/
def P13715490618255454131.Spec : Prop :=
  ∀ n, P13715490618255454131.a n = A028331 n

end A028331

/-! ## A028331.P16596755702589685940

`2*(A028272(n)-A014413(n+1))`
-/

namespace A028331.P16596755702589685940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A028272 n - A014413 (n + 1))

end

end A028331.P16596755702589685940

namespace A028331

/-- `2*(A028272(n)-A014413(n+1))` -/
def P16596755702589685940.Spec : Prop :=
  ∀ n, P16596755702589685940.a n = A028331 n

end A028331

/-! ## A028331.P17566018810383544680

`2*(A029615(n+1)-A029649(n))`
-/

namespace A028331.P17566018810383544680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A029615 (n + 1) - A029649 n)

end

end A028331.P17566018810383544680

namespace A028331

/-- `2*(A029615(n+1)-A029649(n))` -/
def P17566018810383544680.Spec : Prop :=
  ∀ n, P17566018810383544680.a n = A028331 n

end A028331

/-! ## A028331.P11650819238105085151

`(A029663(n)+A029615(n+1))/2`
-/

namespace A028331.P11650819238105085151
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A029663 n + A029615 (n + 1) : ℚ) / 2

end

end A028331.P11650819238105085151

namespace A028331

/-- `(A029663(n)+A029615(n+1))/2` -/
def P11650819238105085151.Spec : Prop :=
  ∀ n, P11650819238105085151.a n = (A028331 n : ℚ)

end A028331

/-! ## A028331.P5522976270428985728

`A028330(A183569(n+1))`
-/

namespace A028331.P5522976270428985728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028330 (A183569 (n + 1)).toNat

end

end A028331.P5522976270428985728

namespace A028331

/-- `A028330(A183569(n+1))` -/
def P5522976270428985728.Spec : Prop :=
  ∀ n, P5522976270428985728.a n = A028331 n

end A028331

/-! ## A028331.P11623118034208271854

`A028330(lt[1, A028323(n)])`
-/

namespace A028331.P11623118034208271854
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028323 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028330 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A028331.P11623118034208271854

namespace A028331

/-- `A028330(lt[1, A028323(n)])` -/
def P11623118034208271854.Spec : Prop :=
  ∀ n, P11623118034208271854.a n = A028331 n

end A028331

/-! ## A028331.P1621357295785996718

`A028330(lt[2, A028330(n)])`
-/

namespace A028331.P1621357295785996718
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028330 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028330 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A028331.P1621357295785996718

namespace A028331

/-- `A028330(lt[2, A028330(n)])` -/
def P1621357295785996718.Spec : Prop :=
  ∀ n, P1621357295785996718.a n = A028331 n

end A028331

/-! ## A028331.P8312223040060138725

`2*sqrt(A014720(n+1))`
-/

namespace A028331.P8312223040060138725
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  2 * Real.sqrt (A014720 (n + 1) : ℝ)

end

end A028331.P8312223040060138725

namespace A028331

/-- `2*sqrt(A014720(n+1))` -/
def P8312223040060138725.Spec : Prop :=
  ∀ n, P8312223040060138725.a n = (A028331 n : ℝ)

end A028331

/-! ## A028331.P11254971922774397200

`A014411(n+1)+A014720(n+1)/A014411(n+1)`
-/

namespace A028331.P11254971922774397200
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014411 (n + 1) : ℚ) + (A014720 (n + 1) : ℚ) / (A014411 (n + 1) : ℚ)

end

end A028331.P11254971922774397200

namespace A028331

/-- `A014411(n+1)+A014720(n+1)/A014411(n+1)` -/
def P11254971922774397200.Spec : Prop :=
  ∀ n, P11254971922774397200.a n = (A028331 n : ℚ)

end A028331

/-! ## A028331.P5751575167371297198

`2*A007318(lt[1, A212363(n)])`
-/

namespace A028331.P5751575167371297198
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007318 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A028331.P5751575167371297198

namespace A028331

/-- `2*A007318(lt[1, A212363(n)])` -/
def P5751575167371297198.Spec : Prop :=
  ∀ n, P5751575167371297198.a n = A028331 n

end A028331

/-! ## A028331.P4895740505188999833

`2*A007318(lt[1, A026729(n)])`
-/

namespace A028331.P4895740505188999833
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026729 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007318 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A028331.P4895740505188999833

namespace A028331

/-- `2*A007318(lt[1, A026729(n)])` -/
def P4895740505188999833.Spec : Prop :=
  ∀ n, P4895740505188999833.a n = A028331 n

end A028331

/-! ## A028331.P2183045043546353204

`2*A007318(lt[1, A098158(n)])`
-/

namespace A028331.P2183045043546353204
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098158 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007318 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A028331.P2183045043546353204

namespace A028331

/-- `2*A007318(lt[1, A098158(n)])` -/
def P2183045043546353204.Spec : Prop :=
  ∀ n, P2183045043546353204.a n = A028331 n

end A028331

/-! ## A028331.P15125494117252250883

`2*A007318(lt[A047010(n), A047071(n)])`
-/

namespace A028331.P15125494117252250883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047010 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047071 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007318 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A028331.P15125494117252250883

namespace A028331

/-- `2*A007318(lt[A047010(n), A047071(n)])` -/
def P15125494117252250883.Spec : Prop :=
  ∀ n, P15125494117252250883.a n = A028331 n

end A028331

/-! ## A028331.P9033001522966731232

`A028326(lt[2, A028326(n)*A112467(n)])`
-/

namespace A028331.P9033001522966731232
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028326 n * A112467 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028326 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A028331.P9033001522966731232

namespace A028331

/-- `A028326(lt[2, A028326(n)*A112467(n)])` -/
def P9033001522966731232.Spec : Prop :=
  ∀ n, P9033001522966731232.a n = A028331 n

end A028331

/-! ## A028331.P16270999215930931948

`A028326(lt[2/A028326(n), A112467(n)])`
-/

namespace A028331.P16270999215930931948
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (A028326 n : ℚ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112467 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028326 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n)

end

end A028331.P16270999215930931948

namespace A028331

/-- `A028326(lt[2/A028326(n), A112467(n)])` -/
def P16270999215930931948.Spec : Prop :=
  ∀ n, P16270999215930931948.a n = A028331 n

end A028331

/-!
# A028332: Distinct elements to the right of the central elements of the even-Pascal triangle A028326.

The programs for A028332, there is no canonical definition to state claims against.
-/

/-! ## A028332.P15715709749928611559

`A028330(lt[A053148(n+1), A028330(n)])`
-/

namespace A028332.P15715709749928611559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053148 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028330 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028330 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A028332.P15715709749928611559

/-! ## A028332.P6159785464309142136

`A028330(lt[A172313(2*n+3), A028330(n)])`
-/

namespace A028332.P6159785464309142136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172313 (2 * n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028330 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028330 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A028332.P6159785464309142136

/-! ## A028332.P12770014290462855777

`A028330(lt[A028312(n+1), A028324(n)])`
-/

namespace A028332.P12770014290462855777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028312 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028324 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028330 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A028332.P12770014290462855777

/-!
# A028333: Number of nonzero terms in expansion of square of Vandermonde determinant of order (n+1)x(n+1) in terms of Schur functions.

The programs for A028333, there is no canonical definition to state claims against.
-/

/-! ## A028333.P6285762488419724448

`A007747(∑[A361658(n)])`
-/

namespace A028333.P6285762488419724448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361658 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007747 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A028333.P6285762488419724448

/-! ## A028333.P14901686422023929028

`A007747(A001096(n)+1)`
-/

namespace A028333.P14901686422023929028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007747 (A001096 n + 1).toNat

end

end A028333.P14901686422023929028

/-!
# A028334: Differences between consecutive odd primes, divided by 2.

The programs for A028334, the canonical program `A028334.P10406468168552607692` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A028334 has offset 2).

The definition of A028334 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A028334.P17947733201026886086

`A001223(n+2)/2`
-/

namespace A028334.P17947733201026886086
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001223 (n + 2) : ℚ) / 2

end

end A028334.P17947733201026886086

namespace A028334

/-- `A001223(n+2)/2` -/
def P17947733201026886086.Spec : Prop :=
  ∀ n, P17947733201026886086.a n = (A028334 (n + 2) : ℚ)

end A028334

/-! ## A028334.P11532939782184087968

`ceil(A176246(n+1)/2)`
-/

namespace A028334.P11532939782184087968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A176246 (n + 1) : ℚ) / 2⌉

end

end A028334.P11532939782184087968

namespace A028334

/-- `ceil(A176246(n+1)/2)` -/
def P11532939782184087968.Spec : Prop :=
  ∀ n, P11532939782184087968.a n = A028334 (n + 2)

end A028334

/-! ## A028334.P17712997072158212810

`∑[1-A073274(n+1)]`
-/

namespace A028334.P17712997072158212810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A073274 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A028334.P17712997072158212810

namespace A028334

/-- `∑[1-A073274(n+1)]` -/
def P17712997072158212810.Spec : Prop :=
  ∀ n, P17712997072158212810.a n = A028334 (n + 2)

end A028334

/-! ## A028334.P9871256698554506362

`A162775(n+1)/(n+2)`
-/

namespace A028334.P9871256698554506362
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A162775 (n + 1) : ℚ) / (n + 2 : ℚ)

end

end A028334.P9871256698554506362

namespace A028334

/-- `A162775(n+1)/(n+2)` -/
def P9871256698554506362.Spec : Prop :=
  ∀ n, P9871256698554506362.a n = (A028334 (n + 2) : ℚ)

end A028334

/-! ## A028334.P1013941362586101793

`A052288(n)-a(n-1)` with `a(0)=1`
-/

namespace A028334.P1013941362586101793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A052288 n - a (n - 1)

end

end A028334.P1013941362586101793

namespace A028334

/-- `A052288(n)-a(n-1)` -/
def P1013941362586101793.Spec : Prop :=
  ∀ n, P1013941362586101793.a n = A028334 (n + 2)

end A028334

/-! ## A028334.P12092240997470279765

`A000463(A135732(n+1))`
-/

namespace A028334.P12092240997470279765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (A135732 (n + 1)).toNat

end

end A028334.P12092240997470279765

namespace A028334

/-- `A000463(A135732(n+1))` -/
def P12092240997470279765.Spec : Prop :=
  ∀ n, P12092240997470279765.a n = A028334 (n + 2)

end A028334

/-! ## A028334.P13880802678686295744

`A000463(A176246(n+1))`
-/

namespace A028334.P13880802678686295744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (A176246 (n + 1)).toNat

end

end A028334.P13880802678686295744

namespace A028334

/-- `A000463(A176246(n+1))` -/
def P13880802678686295744.Spec : Prop :=
  ∀ n, P13880802678686295744.a n = A028334 (n + 2)

end A028334

/-! ## A028334.P10406468168552607692

`A001281(A001223(n+2))`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A028334

/-- `A001281(A001223(n+2))` -/
def P10406468168552607692.Spec : Prop :=
  ∀ n, P10406468168552607692.a n = A028334 (n + 2)

theorem P10406468168552607692.correct : P10406468168552607692.Spec := by
  intro n
  simp only [A028334, Nat.add_sub_cancel]

end A028334

/-! ## A028334.P11413461753001657405

`A330492(A001223(n+2)+2)`
-/

namespace A028334.P11413461753001657405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330492 (A001223 (n + 2) + 2).toNat

end

end A028334.P11413461753001657405

namespace A028334

/-- `A330492(A001223(n+2)+2)` -/
def P11413461753001657405.Spec : Prop :=
  ∀ n, P11413461753001657405.a n = A028334 (n + 2)

end A028334

/-! ## A028334.P7460459132019975213

`A054576(2*A001223(n+2))`
-/

namespace A028334.P7460459132019975213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054576 (2 * A001223 (n + 2)).toNat

end

end A028334.P7460459132019975213

namespace A028334

/-- `A054576(2*A001223(n+2))` -/
def P7460459132019975213.Spec : Prop :=
  ∀ n, P7460459132019975213.a n = A028334 (n + 2)

end A028334

/-! ## A028334.P9488578994006466547

`A024675(n+1)-A065091(n+1)`
-/

namespace A028334.P9488578994006466547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024675 (n + 1) - A065091 (n + 1)

end

end A028334.P9488578994006466547

namespace A028334

/-- `A024675(n+1)-A065091(n+1)` -/
def P9488578994006466547.Spec : Prop :=
  ∀ n, P9488578994006466547.a n = A028334 (n + 2)

end A028334

/-! ## A028334.P13362062436864157288

`A073273(n+1)-A078444(n+1)`
-/

namespace A028334.P13362062436864157288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073273 (n + 1) - A078444 (n + 1)

end

end A028334.P13362062436864157288

namespace A028334

/-- `A073273(n+1)-A078444(n+1)` -/
def P13362062436864157288.Spec : Prop :=
  ∀ n, P13362062436864157288.a n = A028334 (n + 2)

end A028334

/-! ## A028334.P6336840381432831322

`A215848(n+1)-A024675(n+1)`
-/

namespace A028334.P6336840381432831322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215848 (n + 1) - A024675 (n + 1)

end

end A028334.P6336840381432831322

namespace A028334

/-- `A215848(n+1)-A024675(n+1)` -/
def P6336840381432831322.Spec : Prop :=
  ∀ n, P6336840381432831322.a n = A028334 (n + 2)

end A028334

/-! ## A028334.P17347314532265216823

`A305748(n+1)-A001223(n+1)`
-/

namespace A028334.P17347314532265216823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305748 (n + 1) - A001223 (n + 1)

end

end A028334.P17347314532265216823

namespace A028334

/-- `A305748(n+1)-A001223(n+1)` -/
def P17347314532265216823.Spec : Prop :=
  ∀ n, P17347314532265216823.a n = A028334 (n + 2)

end A028334

/-! ## A028334.P17360593957321938634

`A031131(n+1)-A305748(n+1)`
-/

namespace A028334.P17360593957321938634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031131 (n + 1) - A305748 (n + 1)

end

end A028334.P17360593957321938634

namespace A028334

/-- `A031131(n+1)-A305748(n+1)` -/
def P17360593957321938634.Spec : Prop :=
  ∀ n, P17360593957321938634.a n = A028334 (n + 2)

end A028334

/-! ## A028334.P1787586090784227182

`A140511(n+2)-A144519(n+1)`
-/

namespace A028334.P1787586090784227182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140511 (n + 2) - A144519 (n + 1)

end

end A028334.P1787586090784227182

namespace A028334

/-- `A140511(n+2)-A144519(n+1)` -/
def P1787586090784227182.Spec : Prop :=
  ∀ n, P1787586090784227182.a n = A028334 (n + 2)

end A028334

/-! ## A028334.P11060812736932116201

`A205955(n+1)/A100484(n+1)`
-/

namespace A028334.P11060812736932116201
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A205955 (n + 1) : ℚ) / (A100484 (n + 1) : ℚ)

end

end A028334.P11060812736932116201

namespace A028334

/-- `A205955(n+1)/A100484(n+1)` -/
def P11060812736932116201.Spec : Prop :=
  ∀ n, P11060812736932116201.a n = (A028334 (n + 2) : ℚ)

end A028334

/-! ## A028334.P15123888015256172384

`A162153(n+1)%A024675(n+1)`
-/

namespace A028334.P15123888015256172384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A162153 (n + 1)) (A024675 (n + 1))

end

end A028334.P15123888015256172384

namespace A028334

/-- `A162153(n+1)%A024675(n+1)` -/
def P15123888015256172384.Spec : Prop :=
  ∀ n, P15123888015256172384.a n = A028334 (n + 2)

end A028334

/-! ## A028334.P8464484548815521331

`A102770(n+1)%A014664(n+2)`
-/

namespace A028334.P8464484548815521331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A102770 (n + 1)) (A014664 (n + 2))

end

end A028334.P8464484548815521331

namespace A028334

/-- `A102770(n+1)%A014664(n+2)` -/
def P8464484548815521331.Spec : Prop :=
  ∀ n, P8464484548815521331.a n = A028334 (n + 2)

end A028334

/-!
# A028335: Number of decimal digits in n-th Mersenne prime.

The programs for A028335, there is no canonical definition to state claims against.
-/

/-! ## A028335.P8919539385256709046

`floor(A000043(n+1)*log(2)/log(10))+1`
-/

namespace A028335.P8919539385256709046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000043 (n + 1) : ℝ) * Real.log (2 : ℝ) / Real.log (10 : ℝ)⌋ + 1

end

end A028335.P8919539385256709046

/-! ## A028335.P9279101741886657294

`ceil(A000043(n+1)/log2(10))`
-/

namespace A028335.P9279101741886657294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A000043 (n + 1) : ℝ) / Real.logb 2 (10 : ℝ)⌉

end

end A028335.P9279101741886657294

/-!
# A028336: Positive numbers k such that k*(k+1) is a palindrome.

The programs for A028336, there is no canonical definition to state claims against.
-/

/-! ## A028336.P11067308035625358610

`A056794(n+2)-1`
-/

namespace A028336.P11067308035625358610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056794 (n + 2) - 1

end

end A028336.P11067308035625358610

/-! ## A028336.P831967514620484109

`∑[abs(Δ[A056794(n+1)])]`
-/

namespace A028336.P831967514620484109
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056794 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A028336.P831967514620484109

/-! ## A028336.P16696882641093439611

`floor(sqrt(A028337(n+1)))`
-/

namespace A028336.P16696882641093439611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A028337 (n + 1))

end

end A028336.P16696882641093439611

/-! ## A028336.P16498543373070125714

`round(sqrt(A028337(n+1)-A000217(n)))`
-/

namespace A028336.P16498543373070125714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A028337 (n + 1) - A000217 n : ℝ))

end

end A028336.P16498543373070125714

/-! ## A028336.P17559272722272253969

`round(sqrt(A028337(n+1)-A002378(n)))`
-/

namespace A028336.P17559272722272253969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A028337 (n + 1) - A002378 n : ℝ))

end

end A028336.P17559272722272253969

/-!
# A028337: Palindromes of the form k*(k + 1).

The programs for A028337, there is no canonical definition to state claims against.
-/

/-! ## A028337.P3570160013937239986

`A028336(n+1)*A056794(n+2)`
-/

namespace A028337.P3570160013937239986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028336 (n + 1) * A056794 (n + 2)

end

end A028337.P3570160013937239986

/-! ## A028337.P8122000457177981693

`(A057427(A028310(n))+A028336(n+1))*A028336(n+1)`
-/

namespace A028337.P8122000457177981693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A057427 (A028310 n).toNat + A028336 (n + 1)) * A028336 (n + 1)

end

end A028337.P8122000457177981693

/-! ## A028337.P15529808128562009309

`(A028336(n+1)+A001221(A147853(n+2)))*A028336(n+1)`
-/

namespace A028337.P15529808128562009309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A028336 (n + 1) + A001221 (A147853 (n + 2)).toNat) * A028336 (n + 1)

end

end A028337.P15529808128562009309

/-! ## A028337.P5836265995142165795

`A002378(A028336(n+1))`
-/

namespace A028337.P5836265995142165795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 (A028336 (n + 1)).toNat

end

end A028337.P5836265995142165795

/-! ## A028337.P10995037212972887873

`A103505(A056794(n+2))`
-/

namespace A028337.P10995037212972887873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103505 (A056794 (n + 2)).toNat

end

end A028337.P10995037212972887873

/-!
# A028338: Triangle of coefficients in expansion of (x+1)*(x+3)*...*(x + 2n - 1) in rising powers of x.

The programs for A028338, there is no canonical definition to state claims against.
-/

/-! ## A028338.P3162264342607385311

`abs(A039757(n))`
-/

namespace A028338.P3162264342607385311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A039757 n|

end

end A028338.P3162264342607385311

/-! ## A028338.P11755854775823678046

`A109692(A061579(n))`
-/

namespace A028338.P11755854775823678046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109692 (A061579 n).toNat

end

end A028338.P11755854775823678046

/-! ## A028338.P10861161969175483605

`A039757(n)*A097807(n)`
-/

namespace A028338.P10861161969175483605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039757 n * A097807 n

end

end A028338.P10861161969175483605

/-! ## A028338.P6565446926150480560

`gcd(A000038(n), A039757(n))`
-/

namespace A028338.P6565446926150480560
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A039757 n)

end

end A028338.P6565446926150480560

/-! ## A028338.P10440501340495573617

`lcm(A020985(n), A039757(n))`
-/

namespace A028338.P10440501340495573617
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A039757 n)

end

end A028338.P10440501340495573617

/-! ## A028338.P14739958052747842904

`A109692(A038722(n+1)-1)`
-/

namespace A028338.P14739958052747842904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109692 (A038722 (n + 1) - 1).toNat

end

end A028338.P14739958052747842904

/-! ## A028338.P8983656773832028944

`lcm(A034947(n+1)*A039757(n), A034947(n+1))`
-/

namespace A028338.P8983656773832028944
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A034947 (n + 1) * A039757 n) (A034947 (n + 1))

end

end A028338.P8983656773832028944

/-! ## A028338.P15648683099384673773

`A109692(A038722(n+2))`
-/

namespace A028338.P15648683099384673773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109692 (A038722 (n + 2)).toNat

end

end A028338.P15648683099384673773

/-! ## A028338.P18150242844185356499

`A161198(n)/A059268(n)`
-/

namespace A028338.P18150242844185356499
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A161198 n : ℚ) / (A059268 n : ℚ)

end

end A028338.P18150242844185356499

/-! ## A028338.P11989892146379494793

`A225475(n)/A233543(n)`
-/

namespace A028338.P11989892146379494793
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A225475 n : ℚ) / (A233543 n : ℚ)

end

end A028338.P11989892146379494793

/-!
# A028339: Coefficient of x^2 in expansion of (x+1)*(x+3)*...*(x+2*n-1).

The programs for A028339, there is no canonical definition to state claims against.
-/

/-! ## A028339.P16039712872390768880

`A109692(∑[n+3])`
-/

namespace A028339.P16039712872390768880
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109692 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A028339.P16039712872390768880

/-! ## A028339.P10119119612032237475

`abs(A039758(∑[n+3]))`
-/

namespace A028339.P10119119612032237475
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A039758 (∑ j ∈ Finset.range (n + 1), f1 j)|

end

end A028339.P10119119612032237475

/-! ## A028339.P5098872177241864429

`A028338(∑[n+2]+3)`
-/

namespace A028339.P5098872177241864429
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028338 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A028339.P5098872177241864429

/-! ## A028339.P4673585744111011704

`record[A028338(gcd(n, A303913(n)))]`
-/

namespace A028339.P4673585744111011704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028338 (Int.gcd (n : ℤ) (A303913 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A028339.P4673585744111011704

/-! ## A028339.P4788145471314400744

`abs(A039757(A134869(n+2)+1))`
-/

namespace A028339.P4788145471314400744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A039757 (A134869 (n + 2) + 1).toNat|

end

end A028339.P4788145471314400744

/-! ## A028339.P5404541755659049809

`abs(A039757(eq[2, A144328(n+1)]))`
-/

namespace A028339.P5404541755659049809
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A039757 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)|

end

end A028339.P5404541755659049809

/-!
# A028340: Coefficient of x^3 in expansion of (x+1)*(x+3)*...*(x+2*n-1).

The programs for A028340, there is no canonical definition to state claims against.
-/

/-! ## A028340.P14774600895544259879

`A109692(∑[n+3]+n+3)`
-/

namespace A028340.P14774600895544259879
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109692 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A028340.P14774600895544259879

/-! ## A028340.P1931240153154955456

`A028338(A167614(n+2))`
-/

namespace A028340.P1931240153154955456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028338 (A167614 (n + 2)).toNat

end

end A028340.P1931240153154955456

/-! ## A028340.P35072038687128261

`A028338(A052905(n)+8)`
-/

namespace A028340.P35072038687128261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028338 (A052905 n + 8).toNat

end

end A028340.P35072038687128261

/-! ## A028340.P9869291008342977034

`A028338(eq[2, A141169(n)])`
-/

namespace A028340.P9869291008342977034
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141169 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028338 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A028340.P9869291008342977034

/-! ## A028340.P2332454363504697866

`A028338(eq[3, A002262(n)])`
-/

namespace A028340.P2332454363504697866
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028338 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A028340.P2332454363504697866

/-! ## A028340.P11202532620941466181

`A028338(eq[4, A002260(n+1)])`
-/

namespace A028340.P11202532620941466181
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028338 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A028340.P11202532620941466181

/-!
# A028341: Coefficient of x^4 in expansion of (x+1)*(x+3)*...*(x+2*n-1).

The programs for A028341, there is no canonical definition to state claims against.
-/

/-! ## A028341.P14920574845068780499

`A109692(A052905(n+2))`
-/

namespace A028341.P14920574845068780499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109692 (A052905 (n + 2)).toNat

end

end A028341.P14920574845068780499

/-! ## A028341.P18404277502597165299

`A028338(eq[3, A141169(n)])`
-/

namespace A028341.P18404277502597165299
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141169 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028338 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A028341.P18404277502597165299

/-! ## A028341.P18440245381768298832

`A028338(eq[4, A002262(n)])`
-/

namespace A028341.P18440245381768298832
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028338 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A028341.P18440245381768298832

/-! ## A028341.P18287405960564710735

`A109692(eq[4, A025581(n)])`
-/

namespace A028341.P18287405960564710735
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109692 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A028341.P18287405960564710735

/-! ## A028341.P9784996198494704975

`A109692(A027379(n+3)-2)`
-/

namespace A028341.P9784996198494704975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109692 (A027379 (n + 3) - 2).toNat

end

end A028341.P9784996198494704975

/-! ## A028341.P14540945933803595277

`A028338(eq[5, A002260(n+1)])`
-/

namespace A028341.P14540945933803595277
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028338 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A028341.P14540945933803595277

/-!
# A028342: Expansion of Product_{i>=1} (1 - x^i)^(-1/i); also of exp(Sum_{n>=1} (d(n)*x^n/n)) where d is number of divisors function.

The programs for A028342, there is no canonical definition to state claims against.
-/

/-! ## A028342.P7007667089705209127

`A294761(∑[n]+n)`
-/

namespace A028342.P7007667089705209127
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294761 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A028342.P7007667089705209127

/-! ## A028342.P11641534026955432010

`or(1, A294761(A000096(n)))`
-/

namespace A028342.P11641534026955432010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A294761 (A000096 n).toNat)

end

end A028342.P11641534026955432010

/-! ## A028342.P7637843102212397335

`A294761(A000096(n))+A000007(n+1)`
-/

namespace A028342.P7637843102212397335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294761 (A000096 n).toNat + A000007 (n + 1)

end

end A028342.P7637843102212397335

/-! ## A028342.P8652657839827568989

`A294761(A000096(n))+A088689(3*n)`
-/

namespace A028342.P8652657839827568989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294761 (A000096 n).toNat + A088689 (3 * n)

end

end A028342.P8652657839827568989

/-! ## A028342.P3755252666218205569

`A028657(A000217(n))*A294761(A000096(n))`
-/

namespace A028342.P3755252666218205569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028657 (A000217 n).toNat * A294761 (A000096 n).toNat

end

end A028342.P3755252666218205569

/-!
# A028343: Expansion of Product_{i>=1} (1-x^i)^(1/i); also of exp(- Sum_{n>=1}(d(n)*x^n/n)) where d(n) is the number of divisors of n.

The programs for A028343, there is no canonical definition to state claims against.
-/

/-! ## A028343.P2647918515086413019

`A294616(∑[n]+n)`
-/

namespace A028343.P2647918515086413019
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294616 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A028343.P2647918515086413019

/-! ## A028343.P2359264498376599998

`or(1, A294616(A000096(n)))`
-/

namespace A028343.P2359264498376599998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A294616 (A000096 n).toNat)

end

end A028343.P2359264498376599998

/-! ## A028343.P7706160361112856777

`A294616(A000096(n))+A000007(n+4)`
-/

namespace A028343.P7706160361112856777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294616 (A000096 n).toNat + A000007 (n + 4)

end

end A028343.P7706160361112856777

/-! ## A028343.P14619577054291973825

`A322437(2*n+1)+A294616(A000096(n))`
-/

namespace A028343.P14619577054291973825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322437 (2 * n + 1) + A294616 (A000096 n).toNat

end

end A028343.P14619577054291973825

/-! ## A028343.P14720772137923337230

`abs((-1)^A000796(n))*A294616(A000096(n))`
-/

namespace A028343.P14720772137923337230
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(-1 : ℚ) ^ (A000796 (n + 1) : ℤ)| * (A294616 (A000096 n).toNat : ℚ)

end

end A028343.P14720772137923337230

/-!
# A028344: Molien series for complete weight enumerator of self-dual code over GF(5).

The programs for A028344, there is no canonical definition to state claims against.
-/

/-! ## A028344.P4858143742250128754

`A350042(n)+A166698(A350019(n+1))`
-/

namespace A028344.P4858143742250128754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350042 n + A166698 (A350019 (n + 1)).toNat

end

end A028344.P4858143742250128754

/-!
# A028345: Molien series for complete weight enumerator of self-dual code over GF(5) containing all-1's vector.

The programs for A028345, there is no canonical definition to state claims against.
-/

/-! ## A028345.P14914440058268555965

`A258702(2*n)`
-/

namespace A028345.P14914440058268555965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258702 (2 * n)

end

end A028345.P14914440058268555965

/-! ## A028345.P9914663467045317662

`A258702(record[A014681(n)])%A017056(n)`
-/

namespace A028345.P9914663467045317662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A258702 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat) (A017056 n)

end

end A028345.P9914663467045317662

/-! ## A028345.P1850788749100575503

`A258702(record[A014681(n)])+A000007(n+1)`
-/

namespace A028345.P1850788749100575503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258702 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat + A000007 (n + 1)

end

end A028345.P1850788749100575503

/-! ## A028345.P778399823883264594

`A258702(n+n)^A004736(A004736(n+1)+n)`
-/

namespace A028345.P778399823883264594
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A258702 (n + n) : ℚ) ^ (A004736 (A004736 (n + 1) + (n : ℤ)).toNat : ℤ)

end

end A028345.P778399823883264594

/-! ## A028345.P18290919712402379374

`A258702(n+n)^A004736(∑[n+1])`
-/

namespace A028345.P18290919712402379374
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A258702 (n + n) : ℚ) ^ (A004736 (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ)

end

end A028345.P18290919712402379374

/-! ## A028345.P11676928125835663982

`A258702(record[A014681(n)])/A108784(n+1)²`
-/

namespace A028345.P11676928125835663982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A258702 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat : ℚ) / (A108784 (n + 1) ^ 2 : ℚ)

end

end A028345.P11676928125835663982

/-!
# A028346: Expansion of 1/((1-x)^4*(1-x^2)^2).

The programs for A028346, the canonical program `A028346.P15624539718510548098` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A028346 has offset 0).

The definition of A028346 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A028346.P15624539718510548098

`∑[∑[∑[∑[∑[n+1]%(n+2)]]]]`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A028346

/-- `∑[∑[∑[∑[∑[n+1]%(n+2)]]]]` -/
def P15624539718510548098.Spec : Prop :=
  ∀ n, (P15624539718510548098.a n : ℤ) = A028346 n

theorem P15624539718510548098.correct : P15624539718510548098.Spec := by
  intro n
  simp only [A028346]

end A028346

/-! ## A028346.P15538012505897474217

`∑[∑[∑[∑[∑[∑[(n+1)*(-1)^n]]]]]]`
-/

namespace A028346.P15538012505897474217
noncomputable section

def f6 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (-1) ^ n

def f5 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A028346.P15538012505897474217

namespace A028346

/-- `∑[∑[∑[∑[∑[∑[(n+1)*(-1)^n]]]]]]` -/
def P15538012505897474217.Spec : Prop :=
  ∀ n, P15538012505897474217.a n = A028346 n

end A028346

/-! ## A028346.P1504681767947614346

`∑[C(n+4, 4)-a(n-1)]-a(n-1)` with `a(0)=1`
-/

namespace A028346.P1504681767947614346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  (Nat.choose (n + 4) 4 : ℤ) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j - a (n - 1)

end

end A028346.P1504681767947614346

namespace A028346

/-- `∑[C(n+4, 4)-a(n-1)]-a(n-1)` -/
def P1504681767947614346.Spec : Prop :=
  ∀ n, P1504681767947614346.a n = A028346 n

end A028346

/-! ## A028346.P4052016892836437862

`∑[∑[∑[∑[a(n-2)+2]-a(n-1)]]]/2` with `a(0)=2, a(1)=2`
-/

namespace A028346.P4052016892836437862
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.rec [2, 2] fun n f4 =>
  f4 (n - 2) + 2

def f3 : ℕ → ℤ := SequenceMachineLib.rec [2, 2] fun n f3 =>
  ((∑ j ∈ Finset.range (n + 1), f4 j : ℕ) : ℤ) - f3 (n - 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A028346.P4052016892836437862

namespace A028346

/-- `∑[∑[∑[∑[a(n-2)+2]-a(n-1)]]]/2` -/
def P4052016892836437862.Spec : Prop :=
  ∀ n, P4052016892836437862.a n = (A028346 n : ℚ)

end A028346

/-! ## A028346.P8132639216026416249

`abs(∑[∑[∑[a(n-2)+n+1]-a(n-1)]])` with `a(0)=1, a(1)=2`
-/

namespace A028346.P8132639216026416249
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n f3 =>
  f3 (n - 2) + (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n f2 =>
  ((∑ j ∈ Finset.range (n + 1), f3 j : ℕ) : ℤ) - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A028346.P8132639216026416249

namespace A028346

/-- `abs(∑[∑[∑[a(n-2)+n+1]-a(n-1)]])` -/
def P8132639216026416249.Spec : Prop :=
  ∀ n, P8132639216026416249.a n = A028346 n

end A028346

/-! ## A028346.P4333680344621965926

`floor(∑[∑[∑[a(n-2)+n+1]-a(n-1)]])` with `a(0)=1, a(1)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A028346.P4333680344621965926
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n f3 =>
  f3 (n - 2) + (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n f2 =>
  ((∑ j ∈ Finset.range (n + 1), f3 j : ℕ) : ℤ) - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A028346.P4333680344621965926

namespace A028346

/-- `floor(∑[∑[∑[a(n-2)+n+1]-a(n-1)]])` -/
def P4333680344621965926.Spec : Prop :=
  ∀ n, P4333680344621965926.a n = A028346 n

end A028346

/-! ## A028346.P7437233936103385

`ceil(∑[∑[∑[a(n-2)+n+1]-a(n-1)]])` with `a(0)=1, a(1)=2`

`ceil` is left out, it is the identity on integers.
-/

namespace A028346.P7437233936103385
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n f3 =>
  f3 (n - 2) + (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n f2 =>
  ((∑ j ∈ Finset.range (n + 1), f3 j : ℕ) : ℤ) - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A028346.P7437233936103385

namespace A028346

/-- `ceil(∑[∑[∑[a(n-2)+n+1]-a(n-1)]])` -/
def P7437233936103385.Spec : Prop :=
  ∀ n, P7437233936103385.a n = A028346 n

end A028346

/-! ## A028346.P14118979172091134502

`round(∑[∑[∑[a(n-2)+n+1]-a(n-1)]])` with `a(0)=1, a(1)=2`

`round` is left out, it is the identity on integers.
-/

namespace A028346.P14118979172091134502
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n f3 =>
  f3 (n - 2) + (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n f2 =>
  ((∑ j ∈ Finset.range (n + 1), f3 j : ℕ) : ℤ) - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A028346.P14118979172091134502

namespace A028346

/-- `round(∑[∑[∑[a(n-2)+n+1]-a(n-1)]])` -/
def P14118979172091134502.Spec : Prop :=
  ∀ n, P14118979172091134502.a n = A028346 n

end A028346

/-! ## A028346.P7199443519444381889

`2*∑[A002624(n)/2]`
-/

namespace A028346.P7199443519444381889
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002624 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A028346.P7199443519444381889

namespace A028346

/-- `2*∑[A002624(n)/2]` -/
def P7199443519444381889.Spec : Prop :=
  ∀ n, P7199443519444381889.a n = (A028346 n : ℚ)

end A028346

/-! ## A028346.P15612136100517245818

`A001753(n)-a(n-1)` with `a(0)=1`
-/

namespace A028346.P15612136100517245818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A001753 n - a (n - 1)

end

end A028346.P15612136100517245818

namespace A028346

/-- `A001753(n)-a(n-1)` -/
def P15612136100517245818.Spec : Prop :=
  ∀ n, P15612136100517245818.a n = A028346 n

end A028346

/-! ## A028346.P3056471036888461098

`A001752(n)+a(n-2)` with `a(0)=1, a(1)=4`
-/

namespace A028346.P3056471036888461098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  A001752 n + a (n - 2)

end

end A028346.P3056471036888461098

namespace A028346

/-- `A001752(n)+a(n-2)` -/
def P3056471036888461098.Spec : Prop :=
  ∀ n, P3056471036888461098.a n = A028346 n

end A028346

/-! ## A028346.P7907072669033677425

`A038163(n)+∑[A096338(n)]`
-/

namespace A028346.P7907072669033677425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096338 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038163 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A028346.P7907072669033677425

namespace A028346

/-- `A038163(n)+∑[A096338(n)]` -/
def P7907072669033677425.Spec : Prop :=
  ∀ n, P7907072669033677425.a n = A028346 n

end A028346

/-! ## A028346.P3573601287877956404

`2*A299335(n)-A001769(n)`
-/

namespace A028346.P3573601287877956404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A299335 n - A001769 n

end

end A028346.P3573601287877956404

namespace A028346

/-- `2*A299335(n)-A001769(n)` -/
def P3573601287877956404.Spec : Prop :=
  ∀ n, P3573601287877956404.a n = A028346 n

end A028346

/-! ## A028346.P10541745118393656744

`(A032093(n+8)-A018210(n))/2`
-/

namespace A028346.P10541745118393656744
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A032093 (n + 8) - A018210 n : ℚ) / 2

end

end A028346.P10541745118393656744

namespace A028346

/-- `(A032093(n+8)-A018210(n))/2` -/
def P10541745118393656744.Spec : Prop :=
  ∀ n, P10541745118393656744.a n = (A028346 n : ℚ)

end A028346

/-! ## A028346.P11542889529086557347

`∑[A096338(n+1)]+∑[A096338(n)]`
-/

namespace A028346.P11542889529086557347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096338 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096338 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A028346.P11542889529086557347

namespace A028346

/-- `∑[A096338(n+1)]+∑[A096338(n)]` -/
def P11542889529086557347.Spec : Prop :=
  ∀ n, P11542889529086557347.a n = A028346 n

end A028346

/-! ## A028346.P9889169335911151343

`A038163(n)+A038163(n)-A096338(n+1)`
-/

namespace A028346.P9889169335911151343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038163 n + (A038163 n - A096338 (n + 1))

end

end A028346.P9889169335911151343

namespace A028346

/-- `A038163(n)+A038163(n)-A096338(n+1)` -/
def P9889169335911151343.Spec : Prop :=
  ∀ n, P9889169335911151343.a n = A028346 n

end A028346

/-! ## A028346.P11756661960572364362

`A001753(n+1)-(A038163(n+1)+A038163(n))`
-/

namespace A028346.P11756661960572364362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001753 (n + 1) - (A038163 (n + 1) + A038163 n)

end

end A028346.P11756661960572364362

namespace A028346

/-- `A001753(n+1)-(A038163(n+1)+A038163(n))` -/
def P11756661960572364362.Spec : Prop :=
  ∀ n, P11756661960572364362.a n = A028346 n

end A028346

/-! ## A028346.P4094535167998067311

`A038163(n+1)+A038163(n)-A002624(n+1)`
-/

namespace A028346.P4094535167998067311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038163 (n + 1) + (A038163 n - A002624 (n + 1))

end

end A028346.P4094535167998067311

namespace A028346

/-- `A038163(n+1)+A038163(n)-A002624(n+1)` -/
def P4094535167998067311.Spec : Prop :=
  ∀ n, P4094535167998067311.a n = A028346 n

end A028346

/-! ## A028346.P3053050742943497656

`A189375(2*n)+a(n-1)` with `a(0)=1`
-/

namespace A028346.P3053050742943497656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A189375 (2 * n) + a (n - 1)

end

end A028346.P3053050742943497656

namespace A028346

/-- `A189375(2*n)+a(n-1)` -/
def P3053050742943497656.Spec : Prop :=
  ∀ n, P3053050742943497656.a n = A028346 n

end A028346

/-! ## A028346.P3474072468240948402

`∑[A088932(2*n+1)]-A088932(2*n)`
-/

namespace A028346.P3474072468240948402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088932 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A088932 (2 * n)

end

end A028346.P3474072468240948402

namespace A028346

/-- `∑[A088932(2*n+1)]-A088932(2*n)` -/
def P3474072468240948402.Spec : Prop :=
  ∀ n, P3474072468240948402.a n = A028346 n

end A028346

/-!
# A028347: a(n) = n^2 - 4.

The programs for A028347, the canonical program `A028347.P15904181073632825404` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A028347 has offset 2).

The definition of A028347 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A028347.P15904181073632825404

`n*(n+4)`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A028347

/-- `n*(n+4)` -/
def P15904181073632825404.Spec : Prop :=
  ∀ n, (P15904181073632825404.a n : ℤ) = A028347 (n + 2)

theorem P15904181073632825404.correct : P15904181073632825404.Spec := by
  intro n
  simp only [A028347, Nat.add_sub_cancel]

end A028347

/-!
# A028348: Numbers k such that k^2 + 3*k + 1 is a palindrome.

The programs for A028348, there is no canonical definition to state claims against.
-/

/-! ## A028348.P1534040101701545207

`floor(sqrt(A028349(n+2)))-1`
-/

namespace A028348.P1534040101701545207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A028349 (n + 2)) - 1

end

end A028348.P1534040101701545207

/-! ## A028348.P14985566690000313340

`floor(A153881(n+2)+sqrt(A028349(n+2)))`
-/

namespace A028348.P14985566690000313340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A153881 (n + 2) : ℝ) + Real.sqrt (A028349 (n + 2) : ℝ)⌋

end

end A028348.P14985566690000313340

/-! ## A028348.P1983688786600249218

`round(A153881(6*(n+1))+sqrt(A028349(n+2)))`
-/

namespace A028348.P1983688786600249218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A153881 (6 * (n + 1)) : ℝ) + Real.sqrt (A028349 (n + 2) : ℝ))

end

end A028348.P1983688786600249218

/-! ## A028348.P4917546494470778800

`A023443(floor(sqrt(A028349(n+2))))`
-/

namespace A028348.P4917546494470778800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (Int.sqrt (A028349 (n + 2))).toNat

end

end A028348.P4917546494470778800

/-! ## A028348.P10733635273553658188

`A023443(round(sqrt(A028349(n+2))))`
-/

namespace A028348.P10733635273553658188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (SequenceMachineLib.roundAway (Real.sqrt (A028349 (n + 2) : ℝ))).toNat

end

end A028348.P10733635273553658188

/-!
# A028349: Palindromes of form n^2 + 3*n + 1.

The programs for A028349, there is no canonical definition to state claims against.
-/

/-! ## A028349.P14636558757577141156

`∩[(n+1)²+n, A002113(n+1)]`
-/

namespace A028349.P14636558757577141156
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2 + n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A028349.P14636558757577141156

/-! ## A028349.P7301495383884012531

`∩[A029950(n+1), A028387(n)]`
-/

namespace A028349.P7301495383884012531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029950 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028387 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A028349.P7301495383884012531

/-! ## A028349.P1198181499713838640

`∩[A098897(n+1), A028387(n)]`
-/

namespace A028349.P1198181499713838640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098897 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028387 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A028349.P1198181499713838640

/-! ## A028349.P16388655215889917669

`∩[A324988(n+1), A028387(n)]`
-/

namespace A028349.P16388655215889917669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324988 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028387 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A028349.P16388655215889917669

/-! ## A028349.P9646429259936562984

`∩[A029950(n+1), A140144(n+1)]`
-/

namespace A028349.P9646429259936562984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029950 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140144 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A028349.P9646429259936562984

/-!
# A028350: Expansion of -1/x + 6*3F2( 5/6, 1, 7/6; 3/2, 2; 108*x).

The programs for A028350, there is no canonical definition to state claims against.
-/

/-! ## A028350.P5383370687498680269

`A206300(2*n)`
-/

namespace A028350.P5383370687498680269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206300 (2 * n)

end

end A028350.P5383370687498680269

/-! ## A028350.P11027076166292021698

`record[-A224884(n)]`
-/

namespace A028350.P11027076166292021698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A224884 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A028350.P11027076166292021698

/-! ## A028350.P5702097862723557742

`-A224884(2*n)`
-/

namespace A028350.P5702097862723557742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A224884 (2 * n)

end

end A028350.P5702097862723557742

/-! ## A028350.P12057068879585417705

`record[A248394(n)-A224884(n)]`
-/

namespace A028350.P12057068879585417705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248394 n - A224884 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A028350.P12057068879585417705

/-! ## A028350.P10647574903716706797

`abs(A224884(2*n))-A000038(n)`
-/

namespace A028350.P10647574903716706797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A224884 (2 * n)| - A000038 n

end

end A028350.P10647574903716706797

/-! ## A028350.P10249536327537674640

`abs(A224884(2*n))*A158388(n)`
-/

namespace A028350.P10249536327537674640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A224884 (2 * n)| * A158388 n

end

end A028350.P10249536327537674640

/-! ## A028350.P3098682205860977360

`A021913(n²)-A224884(2*n)`
-/

namespace A028350.P3098682205860977360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021913 (n ^ 2) - A224884 (2 * n)

end

end A028350.P3098682205860977360

/-! ## A028350.P12452447237981963239

`record[A122840(n+1)-A224884(n)]`
-/

namespace A028350.P12452447237981963239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122840 (n + 1) - A224884 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A028350.P12452447237981963239

/-! ## A028350.P10123583139550616062

`A000038(n+1)-A224884(2*n)`
-/

namespace A028350.P10123583139550616062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (n + 1) - A224884 (2 * n)

end

end A028350.P10123583139550616062

/-! ## A028350.P3094261612595051379

`A248394(2*n)-A224884(2*n)`
-/

namespace A028350.P3094261612595051379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248394 (2 * n) - A224884 (2 * n)

end

end A028350.P3094261612595051379

/-!
# A028351: Dimension of invariant subspace of Lie polynomials of degree 2n under action of SL_2(C) on free Lie algebra of rank 2.

The programs for A028351, there is no canonical definition to state claims against.
-/

/-! ## A028351.P16040444112477059760

`A126120(n)+A005354(n+2)`
-/

namespace A028351.P16040444112477059760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126120 n + A005354 (n + 2)

end

end A028351.P16040444112477059760

/-! ## A028351.P11122499915527971651

`A022553(n+1)-A000150(n+1)`
-/

namespace A028351.P11122499915527971651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022553 (n + 1) - A000150 (n + 1)

end

end A028351.P11122499915527971651

/-! ## A028351.P18237574826724383361

`A097331(n+1)+A005354(n+2)`
-/

namespace A028351.P18237574826724383361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097331 (n + 1) + A005354 (n + 2)

end

end A028351.P18237574826724383361

/-! ## A028351.P18168759478718296286

`A054358(n+1)-A005354(n+2)`
-/

namespace A028351.P18168759478718296286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054358 (n + 1) - A005354 (n + 2)

end

end A028351.P18168759478718296286

/-! ## A028351.P15217161599205471254

`A005354(n+2)-A210628(n+1)`
-/

namespace A028351.P15217161599205471254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005354 (n + 2) - A210628 (n + 1)

end

end A028351.P15217161599205471254

/-!
# A028352: A Golomb-like recurrence that decreases infinitely often.

The programs for A028352, the canonical program `A028352.P7725361967464943559` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A028352 has offset 1).

The definition of A028352 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A028352.P7725361967464943559

`∑[2*Δ[(2*n+a(n-1)-1)%(2*n)]]` with `a(0)=-1`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A028352

/-- `∑[2*Δ[(2*n+a(n-1)-1)%(2*n)]]` -/
def P7725361967464943559.Spec : Prop :=
  ∀ n, P7725361967464943559.a n = A028352 (n + 1)

theorem P7725361967464943559.correct : P7725361967464943559.Spec := by
  intro n
  simp only [A028352, Nat.add_sub_cancel]

end A028352

/-! ## A028352.P84332324262021395

`a(n-1)+2*(2*n+1-(n+1)*2%a(n-1))` with `a(0)=2`
-/

namespace A028352.P84332324262021395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) + 2 * ((2 * n + 1 : ℤ) - (n + 1 : ℤ) * Int.tmod 2 (a (n - 1)))

end

end A028352.P84332324262021395

namespace A028352

/-- `a(n-1)+2*(2*n+1-(n+1)*2%a(n-1))` -/
def P84332324262021395.Spec : Prop :=
  ∀ n, P84332324262021395.a n = A028352 (n + 1)

end A028352

/-!
# A028353: Coefficient of x^(2*n+1) in arctanh(x)/sqrt(1-x^2), multiplied by (2*n+1)!.

The programs for A028353, there is no canonical definition to state claims against.
-/

/-! ## A028353.P13169285492323605142

`∏[(1-2*n)²]+(2*n)²*a(n-1)` with `a(0)=1`
-/

namespace A028353.P13169285492323605142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (2 * n : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ∏ j ∈ Finset.range (n + 1), f1 j + ((2 * n) ^ 2 : ℤ) * a (n - 1)

end

end A028353.P13169285492323605142

/-! ## A028353.P13859861775007636058

`A060524(A130883(n+1))`
-/

namespace A028353.P13859861775007636058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060524 (A130883 (n + 1)).toNat

end

end A028353.P13859861775007636058

/-! ## A028353.P10365344358446159867

`A060524(eq[2, A130125(n)])`
-/

namespace A028353.P10365344358446159867
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130125 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060524 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A028353.P10365344358446159867

/-! ## A028353.P17539811939273868237

`record[A060524(A000124(n+1))]`
-/

namespace A028353.P17539811939273868237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060524 (A000124 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A028353.P17539811939273868237

/-! ## A028353.P6510224734143328632

`record[A060524(A133263(n)-1)]`
-/

namespace A028353.P6510224734143328632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060524 (A133263 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A028353.P6510224734143328632

/-!
# A028354: How the astronomical clock ("Orloj") in Prague strikes the hours (digits follow 12343212343... (A028356), n-th group adds to n).

The programs for A028354, there is no canonical definition to state claims against.
-/

/-! ## A028354.P15200669531445713532

`gcd(val(A294961(n+1), 11), A028355(n+1))`
-/

namespace A028354.P15200669531445713532
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.valuation (A294961 (n + 1)).toNat 11 : ℤ) (A028355 (n + 1))

end

end A028354.P15200669531445713532

/-!
# A028355: How the astronomical clock ("Orloj") in Prague would strike 1,2,3,...,24,25,.. (digits follow 12343212343... (A028356), n-th group adds to n).

The programs for A028355, there is no canonical definition to state claims against.
-/

/-! ## A028355.P12088341409007421380

`val(A115960(n+1), 3)*A028354(n+1)`
-/

namespace A028355.P12088341409007421380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (A115960 (n + 1)).toNat 3 : ℤ) * A028354 (n + 1)

end

end A028355.P12088341409007421380

/-! ## A028355.P14811940959994299631

`∑{e}[A089018(n+1), #*A028354(n+1)]`
-/

namespace A028355.P14811940959994299631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089018 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p : ℤ) * A028354 (n + 1)

end

end A028355.P14811940959994299631

/-! ## A028355.P16572448875163014900

`A028354(n+1)+A250254(n+1)%(-1)`
-/

namespace A028355.P16572448875163014900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028354 (n + 1) + Int.tmod (A250254 (n + 1)) (-1)

end

end A028355.P16572448875163014900

/-! ## A028355.P13213873405386741757

`A028354(n+1)+A000007(A027383(n))`
-/

namespace A028355.P13213873405386741757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028354 (n + 1) + A000007 (A027383 n).toNat

end

end A028355.P13213873405386741757

/-! ## A028355.P17045406804377361554

`A063524(A062724(n))+A028354(n+1)`
-/

namespace A028355.P17045406804377361554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063524 (A062724 n).toNat + A028354 (n + 1)

end

end A028355.P17045406804377361554

/-!
# A028356: Simple periodic sequence underlying clock sequence A028354.

The programs for A028356, the canonical program `A028356.P8822174427576505822` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A028356 has offset 0).

The definition of A028356 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A028356.P8822174427576505822

`a(n-1)-a(n-3)+a(n-4)` with `a(0)=1, a(1)=2, a(2)=3, a(3)=4`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A028356

/-- `a(n-1)-a(n-3)+a(n-4)` -/
def P8822174427576505822.Spec : Prop :=
  ∀ n, P8822174427576505822.a n = A028356 n

theorem P8822174427576505822.correct : P8822174427576505822.Spec := by
  intro n
  simp only [A028356]

end A028356

/-!
# A028357: Partial sums of A028356.

The programs for A028357, the canonical program `A028357.P13766361952085088478` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A028357 has offset 0).

The definition of A028357 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A028357.P13766361952085088478

`∑[(gcd(6, n)+1)%6]`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A028357

/-- `∑[(gcd(6, n)+1)%6]` -/
def P13766361952085088478.Spec : Prop :=
  ∀ n, (P13766361952085088478.a n : ℤ) = A028357 n

theorem P13766361952085088478.correct : P13766361952085088478.Spec := by
  intro n
  simp only [A028357]

end A028357

/-! ## A028357.P17049862491303041044

`∑[sqrt(n²%12)+1]`
-/

namespace A028357.P17049862491303041044
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((n ^ 2 % 12 : ℕ) : ℝ) + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A028357.P17049862491303041044

namespace A028357

/-- `∑[sqrt(n²%12)+1]` -/
def P17049862491303041044.Spec : Prop :=
  ∀ n, P17049862491303041044.a n = (A028357 n : ℝ)

end A028357

/-! ## A028357.P1502840489900701142

`∑[floor(sqrt(C(6, n%6)))]`
-/

namespace A028357.P1502840489900701142
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.sqrt (Nat.choose 6 (n % 6))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A028357.P1502840489900701142

namespace A028357

/-- `∑[floor(sqrt(C(6, n%6)))]` -/
def P1502840489900701142.Spec : Prop :=
  ∀ n, (P1502840489900701142.a n : ℤ) = A028357 n

end A028357

/-! ## A028357.P2667837266633166875

`∑[5-a(n-3)]` with `a(0)=1, a(1)=2, a(2)=3`
-/

namespace A028357.P2667837266633166875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 3] fun n f1 =>
  5 - f1 (n - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A028357.P2667837266633166875

namespace A028357

/-- `∑[5-a(n-3)]` -/
def P2667837266633166875.Spec : Prop :=
  ∀ n, P2667837266633166875.a n = A028357 n

end A028357

/-! ## A028357.P11959693092061167368

`5*n-(a(n-3)+4)` with `a(0)=1, a(1)=3, a(2)=6`
-/

namespace A028357.P11959693092061167368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 6] fun n a =>
  (5 * n : ℤ) - (a (n - 3) + 4)

end

end A028357.P11959693092061167368

namespace A028357

/-- `5*n-(a(n-3)+4)` -/
def P11959693092061167368.Spec : Prop :=
  ∀ n, P11959693092061167368.a n = A028357 n

end A028357

/-! ## A028357.P13107816183469405341

`5*n-4-a(n-3)` with `a(0)=1, a(1)=3, a(2)=6`
-/

namespace A028357.P13107816183469405341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 6] fun n a =>
  (5 * n : ℤ) - 4 - a (n - 3)

end

end A028357.P13107816183469405341

namespace A028357

/-- `5*n-4-a(n-3)` -/
def P13107816183469405341.Spec : Prop :=
  ∀ n, P13107816183469405341.a n = A028357 n

end A028357

/-! ## A028357.P2459983472840034385

`∑[(n²*ceil(n²/2)+1)%6]`
-/

namespace A028357.P2459983472840034385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n ^ 2 : ℤ) * ⌈(n ^ 2 : ℚ) / 2⌉ + 1) 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A028357.P2459983472840034385

namespace A028357

/-- `∑[(n²*ceil(n²/2)+1)%6]` -/
def P2459983472840034385.Spec : Prop :=
  ∀ n, P2459983472840034385.a n = A028357 n

end A028357

/-! ## A028357.P991127083262810022

`∑[A028356(n)]`
-/

namespace A028357.P991127083262810022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028356 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A028357.P991127083262810022

namespace A028357

/-- `∑[A028356(n)]` -/
def P991127083262810022.Spec : Prop :=
  ∀ n, P991127083262810022.a n = A028357 n

end A028357

/-! ## A028357.P7162125522680117390

`∑[A260686(n)+1]`
-/

namespace A028357.P7162125522680117390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260686 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A028357.P7162125522680117390

namespace A028357

/-- `∑[A260686(n)+1]` -/
def P7162125522680117390.Spec : Prop :=
  ∀ n, P7162125522680117390.a n = A028357 n

end A028357

/-! ## A028357.P16016000884623957944

`A130974(n)+A047215(n)`
-/

namespace A028357.P16016000884623957944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130974 n + A047215 n

end

end A028357.P16016000884623957944

namespace A028357

/-- `A130974(n)+A047215(n)` -/
def P16016000884623957944.Spec : Prop :=
  ∀ n, P16016000884623957944.a n = A028357 n

end A028357

/-! ## A028357.P17252563038652741488

`A249916(n)+A030451(n)`
-/

namespace A028357.P17252563038652741488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249916 n + A030451 n

end

end A028357.P17252563038652741488

namespace A028357

/-- `A249916(n)+A030451(n)` -/
def P17252563038652741488.Spec : Prop :=
  ∀ n, P17252563038652741488.a n = A028357 n

end A028357

/-! ## A028357.P11814510584171525508

`∑[A122872(∑[A122876(n)])]`
-/

namespace A028357.P11814510584171525508
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122876 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122872 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A028357.P11814510584171525508

namespace A028357

/-- `∑[A122872(∑[A122876(n)])]` -/
def P11814510584171525508.Spec : Prop :=
  ∀ n, P11814510584171525508.a n = A028357 n

end A028357

/-! ## A028357.P24875446379990875

`A047211(n+1)-A130151(n)`
-/

namespace A028357.P24875446379990875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047211 (n + 1) - A130151 n

end

end A028357.P24875446379990875

namespace A028357

/-- `A047211(n+1)-A130151(n)` -/
def P24875446379990875.Spec : Prop :=
  ∀ n, P24875446379990875.a n = A028357 n

end A028357

/-! ## A028357.P1577890122262138160

`A028358(n+1)-(A028358(n)+A028356(n+1))`
-/

namespace A028357.P1577890122262138160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028358 (n + 1) - (A028358 n + A028356 (n + 1))

end

end A028357.P1577890122262138160

namespace A028357

/-- `A028358(n+1)-(A028358(n)+A028356(n+1))` -/
def P1577890122262138160.Spec : Prop :=
  ∀ n, P1577890122262138160.a n = A028357 n

end A028357

/-! ## A028357.P7400490821829787784

`A091999(n+2)+A249916(n)-A175885(n+2)`
-/

namespace A028357.P7400490821829787784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091999 (n + 2) + (A249916 n - A175885 (n + 2))

end

end A028357.P7400490821829787784

namespace A028357

/-- `A091999(n+2)+A249916(n)-A175885(n+2)` -/
def P7400490821829787784.Spec : Prop :=
  ∀ n, P7400490821829787784.a n = A028357 n

end A028357

/-! ## A028357.P472128565103481119

`eq[A003417(n), A131554(n)]`
-/

namespace A028357.P472128565103481119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003417 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131554 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A028357.P472128565103481119

namespace A028357

/-- `eq[A003417(n), A131554(n)]` -/
def P472128565103481119.Spec : Prop :=
  ∀ n, (P472128565103481119.a n : ℤ) = A028357 n

end A028357

/-! ## A028357.P15621966141513658029

`lt[1, A255680(A255680(n+1))]`
-/

namespace A028357.P15621966141513658029
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255680 (A255680 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A028357.P15621966141513658029

namespace A028357

/-- `lt[1, A255680(A255680(n+1))]` -/
def P15621966141513658029.Spec : Prop :=
  ∀ n, (P15621966141513658029.a n : ℤ) = A028357 n

end A028357

/-! ## A028357.P339628186829603186

`∑[A100833(A061925(n))]`
-/

namespace A028357.P339628186829603186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100833 (A061925 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A028357.P339628186829603186

namespace A028357

/-- `∑[A100833(A061925(n))]` -/
def P339628186829603186.Spec : Prop :=
  ∀ n, P339628186829603186.a n = A028357 n

end A028357

/-!
# A028358: Partial sums of A028357.

The programs for A028358, the canonical program `A028358.P1667053554284301899` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A028358 has offset 0).

The definition of A028358 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A028358.P1667053554284301899

`(9+72*n+30*n²+32*cos((n+1)*π/3)-(-1)^n)/24`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A028358

/-- `(9+72*n+30*n²+32*cos((n+1)*π/3)-(-1)^n)/24` -/
def P1667053554284301899.Spec : Prop :=
  ∀ n, P1667053554284301899.a n = (A028358 n : ℝ)

end A028358

/-! ## A028358.P15141703712142505459

`∑[∑[(gcd(6, n)+1)%6]]`
-/

namespace A028358.P15141703712142505459
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 6 n + 1) % 6

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A028358.P15141703712142505459

namespace A028358

/-- `∑[∑[(gcd(6, n)+1)%6]]` -/
def P15141703712142505459.Spec : Prop :=
  ∀ n, (P15141703712142505459.a n : ℤ) = A028358 n

end A028358

/-! ## A028358.P12478307130647546069

`∑[∑[sqrt(n²%12)+1]]`
-/

namespace A028358.P12478307130647546069
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((n ^ 2 % 12 : ℕ) : ℝ) + 1

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A028358.P12478307130647546069

namespace A028358

/-- `∑[∑[sqrt(n²%12)+1]]` -/
def P12478307130647546069.Spec : Prop :=
  ∀ n, P12478307130647546069.a n = (A028358 n : ℝ)

end A028358

/-! ## A028358.P10209779298637957351

`∑[∑[5-a(n-3)]]` with `a(0)=1, a(1)=2, a(2)=3`
-/

namespace A028358.P10209779298637957351
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 3] fun n f2 =>
  5 - f2 (n - 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A028358.P10209779298637957351

namespace A028358

/-- `∑[∑[5-a(n-3)]]` -/
def P10209779298637957351.Spec : Prop :=
  ∀ n, P10209779298637957351.a n = A028358 n

end A028358

/-! ## A028358.P1180757703734384604

`∑[A028357(n)]`
-/

namespace A028358.P1180757703734384604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028357 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A028358.P1180757703734384604

namespace A028358

/-- `∑[A028357(n)]` -/
def P1180757703734384604.Spec : Prop :=
  ∀ n, P1180757703734384604.a n = A028358 n

end A028358

/-! ## A028358.P18194492765910528655

`∑[∑[A028356(n)]]`
-/

namespace A028358.P18194492765910528655
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028356 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A028358.P18194492765910528655

namespace A028358

/-- `∑[∑[A028356(n)]]` -/
def P18194492765910528655.Spec : Prop :=
  ∀ n, P18194492765910528655.a n = A028358 n

end A028358

/-! ## A028358.P1253211476345986640

`∑[∑[A260686(n)+1]]`
-/

namespace A028358.P1253211476345986640
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260686 n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A028358.P1253211476345986640

namespace A028358

/-- `∑[∑[A260686(n)+1]]` -/
def P1253211476345986640.Spec : Prop :=
  ∀ n, P1253211476345986640.a n = A028358 n

end A028358

/-! ## A028358.P18310114262292775890

`∑[∑[A100833(A061925(n))]]`
-/

namespace A028358.P18310114262292775890
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100833 (A061925 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A028358.P18310114262292775890

namespace A028358

/-- `∑[∑[A100833(A061925(n))]]` -/
def P18310114262292775890.Spec : Prop :=
  ∀ n, P18310114262292775890.a n = A028358 n

end A028358

/-!
# A028359: Two-bell analog of A028355.

The programs for A028359, there is no canonical definition to state claims against.
-/

/-! ## A028359.P16590433076887168420

`record[A165300(n+1)]`
-/

namespace A028359.P16590433076887168420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165300 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A028359.P16590433076887168420

/-! ## A028359.P1513921101189891972

`A165300(A319371(n+1))`
-/

namespace A028359.P1513921101189891972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165300 (A319371 (n + 1)).toNat

end

end A028359.P1513921101189891972

/-! ## A028359.P6828906302857361222

`A165300(A376455(n+1))`
-/

namespace A028359.P6828906302857361222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165300 (A376455 (n + 1)).toNat

end

end A028359.P6828906302857361222

/-! ## A028359.P338472684682584548

`A165300(lt[A010815(n), A263832(n+1)])`
-/

namespace A028359.P338472684682584548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010815 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263832 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165300 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A028359.P338472684682584548

/-! ## A028359.P5237365563831431866

`A165300(lt[A198631(n), A251722(n+1)])`
-/

namespace A028359.P5237365563831431866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198631 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251722 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165300 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A028359.P5237365563831431866

/-!
# A028361: Number of totally isotropic spaces of index n in orthogonal geometry of dimension 2n.

The programs for A028361, there is no canonical definition to state claims against.
-/

/-! ## A028361.P3831996808461485812

`∏[ceil(cosh(n*log(2)))]`
-/

namespace A028361.P3831996808461485812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.cosh ((n : ℝ) * Real.log (2 : ℝ))⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A028361.P3831996808461485812

/-! ## A028361.P9451537463391133784

`∏[∑[ceil(2^(n-2))]]`
-/

namespace A028361.P9451537463391133784
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 : ℚ) ^ ((n : ℤ) - 2 : ℤ)⌉

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A028361.P9451537463391133784

/-! ## A028361.P1453930144784658704

`(2^(n-1)+1)*a(n-1)` with `a(0)=1`
-/

namespace A028361.P1453930144784658704
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  ((2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) + 1) * a (n - 1)

end

end A028361.P1453930144784658704

/-! ## A028361.P1869742709645506933

`a(n-1)*∑[ceil(2^(n-2))]` with `a(0)=1`
-/

namespace A028361.P1869742709645506933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 : ℚ) ^ ((n : ℤ) - 2 : ℤ)⌉

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A028361.P1869742709645506933

/-! ## A028361.P15251003631907508237

`a(n-1)+a(n-1)/2^(1-n)` with `a(0)=1`
-/

namespace A028361.P15251003631907508237
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + a (n - 1) / (2 : ℚ) ^ (1 - (n : ℤ) : ℤ)

end

end A028361.P15251003631907508237

/-!
# A028362: Total number of self-dual binary codes of length 2n. Totally isotropic spaces of index n in symplectic geometry of dimension 2n.

The programs for A028362, there is no canonical definition to state claims against.
-/

/-! ## A028362.P8506781591964168942

`or(1, 2^(n-1))*a(n-1)` with `a(0)=1`
-/

namespace A028362.P8506781591964168942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.lor 1 (SequenceMachineLib.roundAway ((2 : ℚ) ^ ((n : ℤ) - 1 : ℤ))) * a (n - 1)

end

end A028362.P8506781591964168942

/-! ## A028362.P10414415577479365102

`a(n-1)*A127904(n)` with `a(0)=1`
-/

namespace A028362.P10414415577479365102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A127904 n

end

end A028362.P10414415577479365102

/-! ## A028362.P1728432165004558523

`a(n-1)*A094373(n)` with `a(0)=1, a(1)=1`
-/

namespace A028362.P1728432165004558523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) * A094373 n

end

end A028362.P1728432165004558523

/-! ## A028362.P7196063452291362073

`a(n-1)*A240277(n+1)` with `a(0)=1, a(1)=1`
-/

namespace A028362.P7196063452291362073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) * A240277 (n + 1)

end

end A028362.P7196063452291362073

/-! ## A028362.P11341516497515360707

`A393299(n)/A002884(n)`
-/

namespace A028362.P11341516497515360707
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A393299 n : ℚ) / (A002884 n : ℚ)

end

end A028362.P11341516497515360707

/-!
# A028364: Triangle T(n,m) = Sum_{k=0..m} Catalan(n-k)*Catalan(k).

The programs for A028364, there is no canonical definition to state claims against.
-/

/-! ## A028364.P16292228030152775763

`A067323(A061579(n))`
-/

namespace A028364.P16292228030152775763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067323 (A061579 n).toNat

end

end A028364.P16292228030152775763

/-! ## A028364.P3172465405208047912

`A028378(A122797(n+1))`
-/

namespace A028364.P3172465405208047912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028378 (A122797 (n + 1)).toNat

end

end A028364.P3172465405208047912

/-! ## A028364.P15385288923085493642

`A067323(A114327(n)+n)`
-/

namespace A028364.P15385288923085493642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067323 (A114327 n + (n : ℤ)).toNat

end

end A028364.P15385288923085493642

/-! ## A028364.P2383294407945724345

`A067323(A038722(n+1)-1)`
-/

namespace A028364.P2383294407945724345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067323 (A038722 (n + 1) - 1).toNat

end

end A028364.P2383294407945724345

/-! ## A028364.P8107323478552688423

`A028378(1-A003056(n)+n)`
-/

namespace A028364.P8107323478552688423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028378 (1 - A003056 n + (n : ℤ)).toNat

end

end A028364.P8107323478552688423

/-! ## A028364.P1062004160332140157

`A028378(1-(A003056(n)-n))`
-/

namespace A028364.P1062004160332140157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028378 (1 - (A003056 n - (n : ℤ))).toNat

end

end A028364.P1062004160332140157

/-! ## A028364.P2502046968649068355

`A067323(A093995(n+1)-(n+1))`
-/

namespace A028364.P2502046968649068355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067323 (A093995 (n + 1) - (n + 1 : ℤ)).toNat

end

end A028364.P2502046968649068355

/-! ## A028364.P2188793941788353488

`A067323(A002378(n)%A014132(n+1))`
-/

namespace A028364.P2188793941788353488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067323 (Int.tmod (A002378 n) (A014132 (n + 1))).toNat

end

end A028364.P2188793941788353488

/-! ## A028364.P1738508493556200188

`A028376(comp[∑[n]])`
-/

namespace A028364.P1738508493556200188
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028376 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A028364.P1738508493556200188

/-!
# A028365: Order of general affine group over GF(2), AGL(n,2).

The programs for A028365, the canonical program `A028365.P14324510846143956834` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A028365 has offset 0).

The definition of A028365 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A028365.P18365758457238667935

`2^n*A002884(n)`
-/

namespace A028365.P18365758457238667935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A002884 n

end

end A028365.P18365758457238667935

namespace A028365

/-- `2^n*A002884(n)` -/
def P18365758457238667935.Spec : Prop :=
  ∀ n, P18365758457238667935.a n = A028365 n

end A028365

/-! ## A028365.P15300946905388174824

`2^n*n!*A053601(n)`
-/

namespace A028365.P15300946905388174824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n * Nat.factorial n : ℤ) * A053601 n

end

end A028365.P15300946905388174824

namespace A028365

/-- `2^n*n!*A053601(n)` -/
def P15300946905388174824.Spec : Prop :=
  ∀ n, P15300946905388174824.a n = A028365 n

end A028365

/-! ## A028365.P14324510846143956834

`2^A000217(n)*A005329(n)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A028365

/-- `2^A000217(n)*A005329(n)` -/
def P14324510846143956834.Spec : Prop :=
  ∀ n, P14324510846143956834.a n = (A028365 n : ℚ)

end A028365

/-! ## A028365.P7382186753485279840

`∏[lcm(2, 4^n)-2^n]`
-/

namespace A028365.P7382186753485279840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 2 (4 ^ n) : ℤ) - (2 ^ n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A028365.P7382186753485279840

namespace A028365

/-- `∏[lcm(2, 4^n)-2^n]` -/
def P7382186753485279840.Spec : Prop :=
  ∀ n, P7382186753485279840.a n = A028365 n

end A028365

/-! ## A028365.P5979719129846943715

`∏[2^n*or(1, 2^n-1)]`
-/

namespace A028365.P5979719129846943715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * Int.lor 1 ((2 ^ n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A028365.P5979719129846943715

namespace A028365

/-- `∏[2^n*or(1, 2^n-1)]` -/
def P5979719129846943715.Spec : Prop :=
  ∀ n, P5979719129846943715.a n = A028365 n

end A028365

/-!
# A028366: a(n) = (2^n - 1)!.

The programs for A028366, the canonical program `A028366.P12369114174315101345` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A028366 has offset 0).

The definition of A028366 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2^n-1)!` (program `A028366.P12369114174315101345`, by `A028366.P12369114174315101345.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A028366.P12369114174315101345

`(2^n-1)!`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A028366

/-- `(2^n-1)!` -/
def P12369114174315101345.Spec : Prop :=
  ∀ n, (P12369114174315101345.a n : ℤ) = A028366 n

theorem P12369114174315101345.correct : P12369114174315101345.Spec := by
  intro n
  simp only [A028366]

end A028366

/-! ## A028366.P15738598268807067239

`(2^n)!/2^n`
-/

namespace A028366.P15738598268807067239
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (2 ^ n) : ℚ) / (2 ^ n : ℚ)

end

end A028366.P15738598268807067239

namespace A028366

/-- `(2^n)!/2^n` -/
def P15738598268807067239.Spec : Prop :=
  ∀ n, P15738598268807067239.a n = (A028366 n : ℚ)

end A028366

/-! ## A028366.P16619612000154335243

`A056218(2^n)`
-/

namespace A028366.P16619612000154335243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056218 (2 ^ n)

end

end A028366.P16619612000154335243

namespace A028366

/-- `A056218(2^n)` -/
def P16619612000154335243.Spec : Prop :=
  ∀ n, P16619612000154335243.a n = A028366 n

end A028366

/-!
# A028367: 

The programs for A028367, there is no canonical definition to state claims against.
-/

/-! ## A028367.P3300465727280941663

`(2*A000225(n))!`
-/

namespace A028367.P3300465727280941663
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (2 * A000225 n).toNat

end

end A028367.P3300465727280941663

/-!
# A028368: a(n) = (Product_{j=1..n-1} (2^j-1)) * 2^binomial(n+1,2).

The programs for A028368, there is no canonical definition to state claims against.
-/

/-! ## A028368.P15888542285716707911

`a(n-1)*A059153(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A028368.P15888542285716707911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 1) * A059153 (n - 2)

end

end A028368.P15888542285716707911

/-! ## A028368.P14707702998593534438

`∏[2^A004280(n+1)-2^n]`
-/

namespace A028368.P14707702998593534438
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A004280 (n + 1) : ℤ) - (2 ^ n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A028368.P14707702998593534438

/-! ## A028368.P10419555733235979340

`∏[and(A134169(n), A171476(n))]`
-/

namespace A028368.P10419555733235979340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A134169 n) (A171476 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A028368.P10419555733235979340

/-! ## A028368.P13145782511122819856

`∏[and(A134169(n), A171499(n))]`
-/

namespace A028368.P13145782511122819856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A134169 n) (A171499 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A028368.P13145782511122819856

/-! ## A028368.P6717932336457882298

`A000918(n)*A011782(n)*a(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A028368.P6717932336457882298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A000918 n * A011782 n * a (n - 1)

end

end A028368.P6717932336457882298

/-!
# A028369: a(n) = 2^(2^(n-1) + n - 2).

The programs for A028369, the canonical program `A028369.P7949698135834787215` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A028369 has offset 1).

The definition of A028369 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A028369.P7949698135834787215

`2^(n-1)*2^2^n`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A028369

/-- `2^(n-1)*2^2^n` -/
def P7949698135834787215.Spec : Prop :=
  ∀ n, P7949698135834787215.a n = (A028369 (n + 1) : ℚ)

end A028369

/-! ## A028369.P6847955025747144358

`2^A052944(n)`
-/

namespace A028369.P6847955025747144358
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A052944 n : ℤ)

end

end A028369.P6847955025747144358

namespace A028369

/-- `2^A052944(n)` -/
def P6847955025747144358.Spec : Prop :=
  ∀ n, P6847955025747144358.a n = (A028369 (n + 1) : ℚ)

end A028369

/-! ## A028369.P10979246929237140777

`2^or(n, 2^n)/2`
-/

namespace A028369.P10979246929237140777
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 ^ Nat.lor n (2 ^ n) : ℚ) / 2

end

end A028369.P10979246929237140777

namespace A028369

/-- `2^or(n, 2^n)/2` -/
def P10979246929237140777.Spec : Prop :=
  ∀ n, P10979246929237140777.a n = (A028369 (n + 1) : ℚ)

end A028369

/-! ## A028369.P15184720595742126021

`2^xor(n, 2^n)/2`
-/

namespace A028369.P15184720595742126021
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 ^ Nat.xor n (2 ^ n) : ℚ) / 2

end

end A028369.P15184720595742126021

namespace A028369

/-- `2^xor(n, 2^n)/2` -/
def P15184720595742126021.Spec : Prop :=
  ∀ n, P15184720595742126021.a n = (A028369 (n + 1) : ℚ)

end A028369

/-! ## A028369.P11136229643320240004

`∏[a(n-1)²/2]` with `a(0)=1, a(1)=4`
-/

namespace A028369.P11136229643320240004
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 4] fun n f1 =>
  f1 (n - 1) ^ 2 / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A028369.P11136229643320240004

namespace A028369

/-- `∏[a(n-1)²/2]` -/
def P11136229643320240004.Spec : Prop :=
  ∀ n, P11136229643320240004.a n = (A028369 (n + 1) : ℚ)

end A028369

/-!
# A028370: 

The programs for A028370, there is no canonical definition to state claims against.
-/

/-! ## A028370.P3137681691933350896

`A002866(2^n)`
-/

namespace A028370.P3137681691933350896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002866 (2 ^ n)

end

end A028370.P3137681691933350896

/-!
# A028371: 

The programs for A028371, there is no canonical definition to state claims against.
-/

/-! ## A028371.P7807303282641273588

`A057869(4^n)`
-/

namespace A028371.P7807303282641273588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057869 (4 ^ n)

end

end A028371.P7807303282641273588

/-!
# A028372: Smallest prime that is simultaneously of forms x^2 + m*y^2 for m = 1, ..., n.

The programs for A028372, there is no canonical definition to state claims against.
-/

/-! ## A028372.P17301467132771463823

`A155715(or(1, A004874(n+1)))`
-/

namespace A028372.P17301467132771463823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155715 (Int.lor 1 (A004874 (n + 1))).toNat

end

end A028372.P17301467132771463823

/-! ## A028372.P13038962656649912934

`A155715(or(1, A004907(n+1)))`
-/

namespace A028372.P13038962656649912934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155715 (Int.lor 1 (A004907 (n + 1))).toNat

end

end A028372.P13038962656649912934

/-! ## A028372.P14467278697518512535

`A155715(n+1)%A155737(A140359(n))`
-/

namespace A028372.P14467278697518512535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A155715 (n + 1)) (A155737 (A140359 n).toNat)

end

end A028372.P14467278697518512535

/-! ## A028372.P7619719360789500510

`A155715(A381000(n+1))`
-/

namespace A028372.P7619719360789500510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155715 (A381000 (n + 1)).toNat

end

end A028372.P7619719360789500510

/-! ## A028372.P17917876475708031378

`A155715(A049872(or(1, n)))`
-/

namespace A028372.P17917876475708031378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155715 (A049872 (Nat.lor 1 n)).toNat

end

end A028372.P17917876475708031378

/-!
# A028373: Numbers that have only the straight digits {1, 4, 7}.

The programs for A028373, the canonical program `A028373.P164616944108449217` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A028373 has offset 1).

The definition of A028373 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 282 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A028373.P164616944108449217

`A307913(A033033(n+1)+1)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A028373

/-- `A307913(A033033(n+1)+1)` -/
def P164616944108449217.Spec : Prop :=
  ∀ n, P164616944108449217.a n = A028373 (n + 1)

theorem P164616944108449217.correct : P164616944108449217.Spec := by
  intro n
  simp only [A028373, Nat.add_sub_cancel]

end A028373

/-! ## A028373.P16481019970446867610

`2*A007093(A033033(n+1))-A007932(n+1)`
-/

namespace A028373.P16481019970446867610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007093 (A033033 (n + 1)).toNat - A007932 (n + 1)

end

end A028373.P16481019970446867610

namespace A028373

/-- `2*A007093(A033033(n+1))-A007932(n+1)` -/
def P16481019970446867610.Spec : Prop :=
  ∀ n, P16481019970446867610.a n = A028373 (n + 1)

end A028373

/-! ## A028373.P6219290771467256495

`∩[A078309(n+1), A385292(n+1)]`
-/

namespace A028373.P6219290771467256495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078309 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385292 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A028373.P6219290771467256495

namespace A028373

/-- `∩[A078309(n+1), A385292(n+1)]` -/
def P6219290771467256495.Spec : Prop :=
  ∀ n, (P6219290771467256495.a n : ℤ) = A028373 (n + 1)

end A028373

/-! ## A028373.P16832739973737736189

`A222253(A036435(n+1))`
-/

namespace A028373.P16832739973737736189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222253 (A036435 (n + 1)).toNat

end

end A028373.P16832739973737736189

namespace A028373

/-- `A222253(A036435(n+1))` -/
def P16832739973737736189.Spec : Prop :=
  ∀ n, P16832739973737736189.a n = A028373 (n + 1)

end A028373

/-! ## A028373.P2184330244055536229

`eq[A010371(n), A027389(n)]`
-/

namespace A028373.P2184330244055536229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010371 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027389 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A028373.P2184330244055536229

namespace A028373

/-- `eq[A010371(n), A027389(n)]` -/
def P2184330244055536229.Spec : Prop :=
  ∀ n, (P2184330244055536229.a n : ℤ) = A028373 (n + 1)

end A028373

/-! ## A028373.P4681356631097885780

`eq[A027389(n), A074458(n)]`
-/

namespace A028373.P4681356631097885780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027389 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074458 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A028373.P4681356631097885780

namespace A028373

/-- `eq[A027389(n), A074458(n)]` -/
def P4681356631097885780.Spec : Prop :=
  ∀ n, (P4681356631097885780.a n : ℤ) = A028373 (n + 1)

end A028373

/-! ## A028373.P7746801123978309451

`eq[A136400(n), A397694(n)]`
-/

namespace A028373.P7746801123978309451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136400 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397694 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A028373.P7746801123978309451

namespace A028373

/-- `eq[A136400(n), A397694(n)]` -/
def P7746801123978309451.Spec : Prop :=
  ∀ n, (P7746801123978309451.a n : ℤ) = A028373 (n + 1)

end A028373

/-! ## A028373.P11001594226472940320

`eq[A136400(n), A397695(n)]`
-/

namespace A028373.P11001594226472940320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136400 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397695 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A028373.P11001594226472940320

namespace A028373

/-- `eq[A136400(n), A397695(n)]` -/
def P11001594226472940320.Spec : Prop :=
  ∀ n, (P11001594226472940320.a n : ℤ) = A028373 (n + 1)

end A028373

/-! ## A028373.P2579992851385019337

`eq[dr(A055012(n)), A055642(n)]`
-/

namespace A028373.P2579992851385019337
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A055012 n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A028373.P2579992851385019337

namespace A028373

/-- `eq[dr(A055012(n)), A055642(n)]` -/
def P2579992851385019337.Spec : Prop :=
  ∀ n, (P2579992851385019337.a n : ℤ) = A028373 (n + 1)

end A028373

/-! ## A028373.P17066808725528144603

`A106747(A036435(n+1))+A007932(n+1)`
-/

namespace A028373.P17066808725528144603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106747 (A036435 (n + 1)).toNat + A007932 (n + 1)

end

end A028373.P17066808725528144603

namespace A028373

/-- `A106747(A036435(n+1))+A007932(n+1)` -/
def P17066808725528144603.Spec : Prop :=
  ∀ n, P17066808725528144603.a n = A028373 (n + 1)

end A028373

/-! ## A028373.P14327725633187993757

`A106747(A036435(n+1))+A007090(A023705(n+1))`
-/

namespace A028373.P14327725633187993757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106747 (A036435 (n + 1)).toNat + A007090 (A023705 (n + 1)).toNat

end

end A028373.P14327725633187993757

namespace A028373

/-- `A106747(A036435(n+1))+A007090(A023705(n+1))` -/
def P14327725633187993757.Spec : Prop :=
  ∀ n, P14327725633187993757.a n = A028373 (n + 1)

end A028373

/-! ## A028373.P16446849593012296722

`A235049(A007932(n+1))+A007093(A033033(n+1))`
-/

namespace A028373.P16446849593012296722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235049 (A007932 (n + 1)).toNat + A007093 (A033033 (n + 1)).toNat

end

end A028373.P16446849593012296722

namespace A028373

/-- `A235049(A007932(n+1))+A007093(A033033(n+1))` -/
def P16446849593012296722.Spec : Prop :=
  ∀ n, P16446849593012296722.a n = A028373 (n + 1)

end A028373

/-! ## A028373.P17376086168643171508

`A008706(A007932(n+1))-A029581(A023705(n+1))`
-/

namespace A028373.P17376086168643171508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 (A007932 (n + 1)).toNat - A029581 (A023705 (n + 1)).toNat

end

end A028373.P17376086168643171508

namespace A028373

/-- `A008706(A007932(n+1))-A029581(A023705(n+1))` -/
def P17376086168643171508.Spec : Prop :=
  ∀ n, P17376086168643171508.a n = A028373 (n + 1)

end A028373

/-!
# A028374: Numbers that have only curved digits {0, 3, 6, 8, 9} or digits that are both curved and linear {2, 5}.

The programs for A028374, there is no canonical definition to state claims against.
-/

/-! ## A028374.P2148646968212567827

`eq[n, A222224(A004179(n))]`
-/

namespace A028374.P2148646968212567827
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222224 (A004179 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A028374.P2148646968212567827

/-! ## A028374.P9934224780210433994

`eq[n, A222221(A004182(n))]`
-/

namespace A028374.P9934224780210433994
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222221 (A004182 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A028374.P9934224780210433994

/-! ## A028374.P1054512537937184009

`eq[n, A222242(A004176(n))]`
-/

namespace A028374.P1054512537937184009
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222242 (A004176 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A028374.P1054512537937184009

/-! ## A028374.P5113616405895609244

`eq[n, A222224(A222221(n))]`
-/

namespace A028374.P5113616405895609244
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222224 (A222221 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A028374.P5113616405895609244

/-! ## A028374.P17915263204121511713

`eq[n, A222242(A222224(n))]`
-/

namespace A028374.P17915263204121511713
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222242 (A222224 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A028374.P17915263204121511713

/-! ## A028374.P10855909680669681979

`eq[A222221(n), A222242(n)]`
-/

namespace A028374.P10855909680669681979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222221 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222242 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A028374.P10855909680669681979

/-!
# A028375: Squares of (odd numbers not divisible by 5).

The programs for A028375, the canonical program `A028375.P14206303758100324755` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A028375 has offset 1).

The definition of A028375 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A028375.P14206303758100324755

`a(n-1)+2*a(n-4)-2*a(n-5)-a(n-8)+a(n-9)` with `a(0)=1, a(1)=9, a(2)=49, a(3)=81, a(4)=121, a(5)=169, a(6)=289, a(7)=361, a(8)=441`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A028375

/-- `a(n-1)+2*a(n-4)-2*a(n-5)-a(n-8)+a(n-9)` -/
def P14206303758100324755.Spec : Prop :=
  ∀ n, P14206303758100324755.a n = A028375 (n + 1)

theorem P14206303758100324755.correct : P14206303758100324755.Spec := by
  intro n
  simp only [A028375, Nat.add_sub_cancel]

end A028375

/-! ## A028375.P17183592841877386871

`A045572(n+1)²`
-/

namespace A028375.P17183592841877386871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045572 (n + 1) ^ 2

end

end A028375.P17183592841877386871

namespace A028375

/-- `A045572(n+1)²` -/
def P17183592841877386871.Spec : Prop :=
  ∀ n, P17183592841877386871.a n = A028375 (n + 1)

end A028375

/-! ## A028375.P9169594999483301012

`lt[5*n, lcm(10, n)]²`
-/

namespace A028375.P9169594999483301012
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 10 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n ^ 2

end

end A028375.P9169594999483301012

namespace A028375

/-- `lt[5*n, lcm(10, n)]²` -/
def P9169594999483301012.Spec : Prop :=
  ∀ n, (P9169594999483301012.a n : ℤ) = A028375 (n + 1)

end A028375

/-! ## A028375.P18419946554615746819

`record[lcm(20, (n+1)²)/20]`
-/

namespace A028375.P18419946554615746819
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 20 ((n + 1) ^ 2) : ℚ) / 20

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A028375.P18419946554615746819

namespace A028375

/-- `record[lcm(20, (n+1)²)/20]` -/
def P18419946554615746819.Spec : Prop :=
  ∀ n, P18419946554615746819.a n = (A028375 (n + 1) : ℚ)

end A028375

/-! ## A028375.P9869625992985054143

`or(1, comp[3*n]+n)²`
-/

namespace A028375.P9869625992985054143
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + n) ^ 2

end

end A028375.P9869625992985054143

namespace A028375

/-- `or(1, comp[3*n]+n)²` -/
def P9869625992985054143.Spec : Prop :=
  ∀ n, (P9869625992985054143.a n : ℤ) = A028375 (n + 1)

end A028375

/-! ## A028375.P7385199115896318195

`eq[1, root(gcd(10, n), n+1)]²`
-/

namespace A028375.P7385199115896318195
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 10 n : ℝ) ^ (1 / (n + 1 : ℝ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) = f2 j) n ^ 2

end

end A028375.P7385199115896318195

namespace A028375

/-- `eq[1, root(gcd(10, n), n+1)]²` -/
def P7385199115896318195.Spec : Prop :=
  ∀ n, (P7385199115896318195.a n : ℤ) = A028375 (n + 1)

end A028375

/-! ## A028375.P15972611779919753438

`record[(2*n-gcd(5, n+2))²]`
-/

namespace A028375.P15972611779919753438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n : ℤ) - (Nat.gcd 5 (n + 2) : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A028375.P15972611779919753438

namespace A028375

/-- `record[(2*n-gcd(5, n+2))²]` -/
def P15972611779919753438.Spec : Prop :=
  ∀ n, P15972611779919753438.a n = A028375 (n + 1)

end A028375

/-! ## A028375.P10588319094498298517

`(∑[abs(1-and(4, n²))]+n)²`
-/

namespace A028375.P10588319094498298517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (Nat.land 4 (n ^ 2) : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)) ^ 2

end

end A028375.P10588319094498298517

namespace A028375

/-- `(∑[abs(1-and(4, n²))]+n)²` -/
def P10588319094498298517.Spec : Prop :=
  ∀ n, P10588319094498298517.a n = A028375 (n + 1)

end A028375

/-! ## A028375.P10467412195186162850

`∑[floor(a(n-4))]²` with `a(0)=1, a(1)=2, a(2)=4, a(3)=2, a(4)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A028375.P10467412195186162850
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 4, 2, 2] fun n f1 =>
  f1 (n - 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A028375.P10467412195186162850

namespace A028375

/-- `∑[floor(a(n-4))]²` -/
def P10467412195186162850.Spec : Prop :=
  ∀ n, (P10467412195186162850.a n : ℤ) = A028375 (n + 1)

end A028375

/-! ## A028375.P8720465924347021273

`∑[gcd(4, a(n-4))]²` with `a(0)=1, a(1)=2, a(2)=4, a(3)=2, a(4)=2`
-/

namespace A028375.P8720465924347021273
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 4, 2, 2] fun n f1 =>
  Nat.gcd 4 (f1 (n - 4))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A028375.P8720465924347021273

namespace A028375

/-- `∑[gcd(4, a(n-4))]²` -/
def P8720465924347021273.Spec : Prop :=
  ∀ n, (P8720465924347021273.a n : ℤ) = A028375 (n + 1)

end A028375

/-! ## A028375.P1635674626927421407

`∑[a(n-4)%5]²` with `a(0)=1, a(1)=2, a(2)=4, a(3)=2, a(4)=2`
-/

namespace A028375.P1635674626927421407
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 4, 2, 2] fun n f1 =>
  f1 (n - 4) % 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A028375.P1635674626927421407

namespace A028375

/-- `∑[a(n-4)%5]²` -/
def P1635674626927421407.Spec : Prop :=
  ∀ n, (P1635674626927421407.a n : ℤ) = A028375 (n + 1)

end A028375

/-! ## A028375.P7265308660726319869

`(1-∑[gcd(2*n, lcm(2, n+2))])²`
-/

namespace A028375.P7265308660726319869
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (2 * n) (Nat.lcm 2 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)) ^ 2

end

end A028375.P7265308660726319869

namespace A028375

/-- `(1-∑[gcd(2*n, lcm(2, n+2))])²` -/
def P7265308660726319869.Spec : Prop :=
  ∀ n, P7265308660726319869.a n = A028375 (n + 1)

end A028375

/-! ## A028375.P2551018318274889608

`record[((2*n+1)%lcm(5, n+3))²]`
-/

namespace A028375.P2551018318274889608
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((2 * n + 1) % Nat.lcm 5 (n + 3)) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A028375.P2551018318274889608

namespace A028375

/-- `record[((2*n+1)%lcm(5, n+3))²]` -/
def P2551018318274889608.Spec : Prop :=
  ∀ n, (P2551018318274889608.a n : ℤ) = A028375 (n + 1)

end A028375

/-! ## A028375.P5932897137076597849

`record[(2*n+1)^(2-val(n+3, 5))]`
-/

namespace A028375.P5932897137076597849
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℚ) ^ (2 - (SequenceMachineLib.valuation (n + 3) 5 : ℤ) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A028375.P5932897137076597849

namespace A028375

/-- `record[(2*n+1)^(2-val(n+3, 5))]` -/
def P5932897137076597849.Spec : Prop :=
  ∀ n, P5932897137076597849.a n = (A028375 (n + 1) : ℚ)

end A028375

/-! ## A028375.P10828363854073550048

`(∑[and(4, n²)/2]+2*n+1)²`
-/

namespace A028375.P10828363854073550048
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.land 4 (n ^ 2) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j + (2 * n + 1 : ℚ)) ^ 2

end

end A028375.P10828363854073550048

namespace A028375

/-- `(∑[and(4, n²)/2]+2*n+1)²` -/
def P10828363854073550048.Spec : Prop :=
  ∀ n, P10828363854073550048.a n = (A028375 (n + 1) : ℚ)

end A028375

/-! ## A028375.P735803305509410905

`record[(2*n+1-val((n+3)², 5))²]`
-/

namespace A028375.P735803305509410905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n + 1 : ℤ) - (SequenceMachineLib.valuation ((n + 3) ^ 2) 5 : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A028375.P735803305509410905

namespace A028375

/-- `record[(2*n+1-val((n+3)², 5))²]` -/
def P735803305509410905.Spec : Prop :=
  ∀ n, P735803305509410905.a n = A028375 (n + 1)

end A028375

/-! ## A028375.P5421400899685842769

`(∑[and(2, and(n, n+1))]+2*n+1)²`
-/

namespace A028375.P5421400899685842769
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 2 (Nat.land n (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j + (2 * n + 1)) ^ 2

end

end A028375.P5421400899685842769

namespace A028375

/-- `(∑[and(2, and(n, n+1))]+2*n+1)²` -/
def P5421400899685842769.Spec : Prop :=
  ∀ n, (P5421400899685842769.a n : ℤ) = A028375 (n + 1)

end A028375

/-! ## A028375.P5175752238343726552

`record[(2*n+1)^(3-gcd(n+3, n-2))]`
-/

namespace A028375.P5175752238343726552
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℚ) ^ (3 - (Int.gcd (n + 3 : ℤ) ((n : ℤ) - 2) : ℤ) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A028375.P5175752238343726552

namespace A028375

/-- `record[(2*n+1)^(3-gcd(n+3, n-2))]` -/
def P5175752238343726552.Spec : Prop :=
  ∀ n, P5175752238343726552.a n = (A028375 (n + 1) : ℚ)

end A028375

/-! ## A028375.P4635145246451828281

`(2*A047207(n+1)+1)²`
-/

namespace A028375.P4635145246451828281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * A047207 (n + 1) + 1) ^ 2

end

end A028375.P4635145246451828281

namespace A028375

/-- `(2*A047207(n+1)+1)²` -/
def P4635145246451828281.Spec : Prop :=
  ∀ n, P4635145246451828281.a n = A028375 (n + 1)

end A028375

/-! ## A028375.P3677912641860761341

`(A047260(n+1)+1+n)²`
-/

namespace A028375.P3677912641860761341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A047260 (n + 1) + 1 + (n : ℤ)) ^ 2

end

end A028375.P3677912641860761341

namespace A028375

/-- `(A047260(n+1)+1+n)²` -/
def P3677912641860761341.Spec : Prop :=
  ∀ n, P3677912641860761341.a n = A028375 (n + 1)

end A028375

/-!
# A028376: Triangle read by rows: T(n,m) = Sum Catalan(n-k)*Catalan(k), k=0..m.

The programs for A028376, there is no canonical definition to state claims against.
-/

/-! ## A028376.P8969856435151714463

`A067323(A056943(n))%A028364(n)`
-/

namespace A028376.P8969856435151714463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A067323 (A056943 n).toNat) (A028364 n)

end

end A028376.P8969856435151714463

/-! ## A028376.P12301695485368689622

`A001221(A059268(n))*A067323(A056943(n))`
-/

namespace A028376.P12301695485368689622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A059268 n).toNat * A067323 (A056943 n).toNat

end

end A028376.P12301695485368689622

/-! ## A028376.P17299686957674545788

`A048766(A002262(n)*A096594(n+1))`
-/

namespace A028376.P17299686957674545788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A002262 n * A096594 (n + 1)).toNat

end

end A028376.P17299686957674545788

/-! ## A028376.P18298431830991763407

`A160755(A095149(n))%A028364(n)`
-/

namespace A028376.P18298431830991763407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A160755 (A095149 n).toNat) (A028364 n)

end

end A028376.P18298431830991763407

/-! ## A028376.P14223813020939665924

`char[A014132(n+1)]*A160755(A095149(n))`
-/

namespace A028376.P14223813020939665924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014132 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A160755 (A095149 n).toNat

end

end A028376.P14223813020939665924

/-!
# A028378: Concatenate rows of triangle in A028364 (removing duplicates).

The programs for A028378, there is no canonical definition to state claims against.
-/

/-! ## A028378.P16425808847217965126

`record[A028364(n)-C(2, n)]`
-/

namespace A028378.P16425808847217965126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028364 n - (Nat.choose 2 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A028378.P16425808847217965126

/-! ## A028378.P3310665789740849673

`record[A023532(n)*A028364(n)]`
-/

namespace A028378.P3310665789740849673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023532 n * A028364 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A028378.P3310665789740849673

/-! ## A028378.P8008158643183551973

`record[A028364(n)-A078391(n)]`
-/

namespace A028378.P8008158643183551973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028364 n - A078391 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A028378.P8008158643183551973

/-! ## A028378.P1506854510491656855

`record[A028364(n)%A050157(n+1)]`
-/

namespace A028378.P1506854510491656855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028364 n) (A050157 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A028378.P1506854510491656855

/-! ## A028378.P18360866741919447930

`record[A028376(n)]`
-/

namespace A028378.P18360866741919447930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028376 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A028378.P18360866741919447930

/-! ## A028378.P17434254293086646834

`record[A028364(A028242(n))%A028364(n)]`
-/

namespace A028378.P17434254293086646834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028364 (A028242 n).toNat) (A028364 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A028378.P17434254293086646834

/-! ## A028378.P17704995230112730195

`record[A028364(n)%A072576(n)]`
-/

namespace A028378.P17704995230112730195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028364 n) (A072576 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A028378.P17704995230112730195

/-! ## A028378.P7842785035917934218

`record[A001221(A130321(n))*A028364(n)]`
-/

namespace A028378.P7842785035917934218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A130321 n).toNat * A028364 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A028378.P7842785035917934218

/-! ## A028378.P3530055378573893221

`record[A028364(n)-A151933(n)]`
-/

namespace A028378.P3530055378573893221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028364 n - A151933 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A028378.P3530055378573893221

/-!
# A028379: a(n) = 6*(n+1)*(2*n+6)!/((n+3)!*(n+5)!).

The programs for A028379, there is no canonical definition to state claims against.
-/

/-! ## A028379.P10998780961906427468

`n*record[A007054(n)]`
-/

namespace A028379.P10998780961906427468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007054 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A028379.P10998780961906427468

/-! ## A028379.P254351471418814587

`n*A007054(n+2)`
-/

namespace A028379.P254351471418814587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A007054 (n + 2)

end

end A028379.P254351471418814587

/-! ## A028379.P10555304309887099698

`n*abs(A184881(n+3))`
-/

namespace A028379.P10555304309887099698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * |A184881 (n + 3)|

end

end A028379.P10555304309887099698

/-! ## A028379.P1431412482500932713

`(3-3/(n+1))*A002057(n)`
-/

namespace A028379.P1431412482500932713
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 - 3 / (n + 1 : ℚ)) * (A002057 n : ℚ)

end

end A028379.P1431412482500932713

/-! ## A028379.P1006709250578913308

`n/(n+2)*A071721(n+2)`
-/

namespace A028379.P1006709250578913308
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (n + 2 : ℚ) * (A071721 (n + 2) : ℚ)

end

end A028379.P1006709250578913308

/-! ## A028379.P17929994378752851221

`n*A038629(n+2)/(n+3)`
-/

namespace A028379.P17929994378752851221
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * ((A038629 (n + 2) : ℚ) / (n + 3 : ℚ))

end

end A028379.P17929994378752851221

/-! ## A028379.P13375935640523616198

`n*record[6/(n+2)*A000108(n)]`
-/

namespace A028379.P13375935640523616198
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  6 / (n + 2 : ℚ) * (A000108 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A028379.P13375935640523616198

/-! ## A028379.P1578762842836716939

`2*n/(n+2)*Δ[A000108(n+2)]`
-/

namespace A028379.P1578762842836716939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (n + 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * n : ℚ) / (n + 2 : ℚ) * (f1 (n + 1) - f1 n : ℚ)

end

end A028379.P1578762842836716939

/-!
# A028382: Weight distribution of [ 31,16,7 ] binary BCH and quadratic-residue codes.

The programs for A028382, there is no canonical definition to state claims against.
-/

/-! ## A028382.P10929381169138688438

`A119907(A182719(n+1)^A014374(n))`
-/

namespace A028382.P10929381169138688438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119907 (SequenceMachineLib.roundAway ((A182719 (n + 1) : ℚ) ^ (A014374 n : ℤ))).toNat

end

end A028382.P10929381169138688438

/-! ## A028382.P14800860046382323175

`A351907(A351927(n+4))*A351951(2*n+1)`
-/

namespace A028382.P14800860046382323175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351907 (A351927 (n + 4)).toNat * A351951 (2 * n + 1)

end

end A028382.P14800860046382323175

/-! ## A028382.P2464241575786171132

`C(∑[8*a(n-2)-a(n-4)]-1, 3*n²+n)` with `a(0)=2, a(1)=1, a(2)=1, a(3)=1, a(4)=9, a(5)=8`
-/

namespace A028382.P2464241575786171132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 1, 1, 1, 9, 8] fun n f1 =>
  8 * f1 (n - 2) - f1 (n - 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j - 1).toNat (3 * n ^ 2 + n)

end

end A028382.P2464241575786171132

/-! ## A028382.P4694236290457685731

`C(A210478(n), 22*n)`
-/

namespace A028382.P4694236290457685731
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A210478 n).toNat (22 * n)

end

end A028382.P4694236290457685731

/-!
# A028383: Weight distribution of [ 31,15,8 ] binary quadratic-residue code.

The programs for A028383, there is no canonical definition to state claims against.
-/

/-! ## A028383.P3621305939637864785

`A028382(4*(gcd(3, C(8, n+2))+n-1))`
-/

namespace A028383.P3621305939637864785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028382 (4 * ((Nat.gcd 3 (Nat.choose 8 (n + 2)) : ℤ) + ((n : ℤ) - 1))).toNat

end

end A028383.P3621305939637864785

/-! ## A028383.P12777197197944516748

`A028382(A242399(n))`
-/

namespace A028383.P12777197197944516748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028382 (A242399 n).toNat

end

end A028383.P12777197197944516748

/-! ## A028383.P13008077248531042402

`A028382(A034045(n+1))`
-/

namespace A028383.P13008077248531042402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028382 (A034045 (n + 1)).toNat

end

end A028383.P13008077248531042402

/-!
# A028384: Weight distribution of [ 47,24,11 ] binary quadratic-residue code.

The programs for A028384, there is no canonical definition to state claims against.
-/

/-! ## A028384.P17262946348740415378

`A303813(C(floor(2^(n/2)), 4*n))`
-/

namespace A028384.P17262946348740415378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303813 (Nat.choose ⌊(2 : ℝ) ^ ((n : ℚ) / 2 : ℝ)⌋.toNat (4 * n))

end

end A028384.P17262946348740415378

/-! ## A028384.P15061322078402337498

`A000330(C(A106604(n), 2*n))`
-/

namespace A028384.P15061322078402337498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 (Nat.choose (A106604 n).toNat (2 * n))

end

end A028384.P15061322078402337498

/-! ## A028384.P192463485429383603

`A248961(C(A008300(n), 2*n))`
-/

namespace A028384.P192463485429383603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248961 (Nat.choose (A008300 n).toNat (2 * n))

end

end A028384.P192463485429383603

/-! ## A028384.P1613720731202958003

`A000330(C(A329301(n), 2*n))`
-/

namespace A028384.P1613720731202958003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 (Nat.choose (A329301 n).toNat (2 * n))

end

end A028384.P1613720731202958003

/-! ## A028384.P9673590388066355609

`A000330(C(A105728(n+1), 2*n))`
-/

namespace A028384.P9673590388066355609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 (Nat.choose (A105728 (n + 1)).toNat (2 * n))

end

end A028384.P9673590388066355609

/-!
# A028385: Weight distribution of [ 47,23,12 ] binary quadratic-residue code.

The programs for A028385, there is no canonical definition to state claims against.
-/

/-! ## A028385.P16545151410263245777

`A028384(4*n)`
-/

namespace A028385.P16545151410263245777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028384 (4 * n)

end

end A028385.P16545151410263245777

/-! ## A028385.P7562940783017795208

`and(-1, A028384(A008586(n)))`
-/

namespace A028385.P7562940783017795208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A028384 (A008586 n).toNat)

end

end A028385.P7562940783017795208

/-! ## A028385.P6960353749836617821

`A028384(A008574(n))+A000007(n)`
-/

namespace A028385.P6960353749836617821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028384 (A008574 n).toNat + A000007 n

end

end A028385.P6960353749836617821

/-! ## A028385.P14930104481222642076

`A028384(A008574(n))+A014856(n)`
-/

namespace A028385.P14930104481222642076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028384 (A008574 n).toNat + A014856 n

end

end A028385.P14930104481222642076

/-! ## A028385.P11122329550017128952

`A028384(A008574(n))+A015161(n)`
-/

namespace A028385.P11122329550017128952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028384 (A008574 n).toNat + A015161 n

end

end A028385.P11122329550017128952

/-!
# A028386: Numbers k such that k*(3k-1)/2 is a pentagonal palindrome.

The programs for A028386, there is no canonical definition to state claims against.
-/

/-! ## A028386.P335962923505924616

`lt[(A000326(n)-A004163(n))², n]`
-/

namespace A028386.P335962923505924616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000326 n - A004163 n) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A028386.P335962923505924616

/-! ## A028386.P9458369779548168603

`eq[A000326(n+1), A004163(n+1)]+1`
-/

namespace A028386.P9458369779548168603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000326 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004163 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A028386.P9458369779548168603

/-! ## A028386.P904351395127714293

`eq[A000326(n), A004163(A028310(n))]`
-/

namespace A028386.P904351395127714293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000326 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004163 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A028386.P904351395127714293

/-!
# A028387: a(n) = n + (n+1)^2.

The programs for A028387, the canonical program `A028387.P5954590561330899546` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A028387 has offset 0).

The definition of A028387 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n+(n+1)²` (program `A028387.P5954590561330899546`, by `A028387.P5954590561330899546.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A028387.P5954590561330899546

`n+(n+1)²`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A028387

/-- `n+(n+1)²` -/
def P5954590561330899546.Spec : Prop :=
  ∀ n, (P5954590561330899546.a n : ℤ) = A028387 n

theorem P5954590561330899546.correct : P5954590561330899546.Spec := by
  intro n
  simp only [A028387]

end A028387

/-! ## A028387.P5185581290104428604

`sqrt(A062938(n))`
-/

namespace A028387.P5185581290104428604
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A062938 n : ℝ)

end

end A028387.P5185581290104428604

namespace A028387

/-- `sqrt(A062938(n))` -/
def P5185581290104428604.Spec : Prop :=
  ∀ n, P5185581290104428604.a n = (A028387 n : ℝ)

end A028387

/-! ## A028387.P16106662296472616188

`A005408(A000096(n))`
-/

namespace A028387.P16106662296472616188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A000096 n).toNat

end

end A028387.P16106662296472616188

namespace A028387

/-- `A005408(A000096(n))` -/
def P16106662296472616188.Spec : Prop :=
  ∀ n, P16106662296472616188.a n = A028387 n

end A028387

/-! ## A028387.P8158149598365019134

`or(1, n*(n+3))`
-/

namespace A028387.P8158149598365019134
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (n * (n + 3))

end

end A028387.P8158149598365019134

namespace A028387

/-- `or(1, n*(n+3))` -/
def P8158149598365019134.Spec : Prop :=
  ∀ n, (P8158149598365019134.a n : ℤ) = A028387 n

end A028387

/-! ## A028387.P11258539322063154691

`xor(1, n*(n+3))`
-/

namespace A028387.P11258539322063154691
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (n * (n + 3))

end

end A028387.P11258539322063154691

namespace A028387

/-- `xor(1, n*(n+3))` -/
def P11258539322063154691.Spec : Prop :=
  ∀ n, (P11258539322063154691.a n : ℤ) = A028387 n

end A028387

/-! ## A028387.P1682583285808975129

`record[(1-n)²-n]`
-/

namespace A028387.P1682583285808975129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (n : ℤ)) ^ 2 - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A028387.P1682583285808975129

namespace A028387

/-- `record[(1-n)²-n]` -/
def P1682583285808975129.Spec : Prop :=
  ∀ n, P1682583285808975129.a n = A028387 n

end A028387

/-! ## A028387.P18100083287511625365

`∑[record[2-xor(1, -n)]]`
-/

namespace A028387.P18100083287511625365
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - Int.xor 1 (-(n : ℤ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A028387.P18100083287511625365

namespace A028387

/-- `∑[record[2-xor(1, -n)]]` -/
def P18100083287511625365.Spec : Prop :=
  ∀ n, P18100083287511625365.a n = A028387 n

end A028387

/-! ## A028387.P13535447603271175675

`floor(cot(Δ[n/(n+1)]))`
-/

namespace A028387.P13535447603271175675
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.cot (f1 (n + 1) - f1 n : ℝ)⌋

end

end A028387.P13535447603271175675

namespace A028387

/-- `floor(cot(Δ[n/(n+1)]))` -/
def P13535447603271175675.Spec : Prop :=
  ∀ n, P13535447603271175675.a n = A028387 n

end A028387

/-! ## A028387.P18097759466795008451

`∑[a(n-1)+2]` with `a(0)=1, a(1)=4`
-/

namespace A028387.P18097759466795008451
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 4] fun n f1 =>
  f1 (n - 1) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A028387.P18097759466795008451

namespace A028387

/-- `∑[a(n-1)+2]` -/
def P18097759466795008451.Spec : Prop :=
  ∀ n, (P18097759466795008451.a n : ℤ) = A028387 n

end A028387

/-! ## A028387.P8874515543786462575

`∑[record[xor(1, n+1)+1]]`
-/

namespace A028387.P8874515543786462575
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (n + 1) + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A028387.P8874515543786462575

namespace A028387

/-- `∑[record[xor(1, n+1)+1]]` -/
def P8874515543786462575.Spec : Prop :=
  ∀ n, (P8874515543786462575.a n : ℤ) = A028387 n

end A028387

/-! ## A028387.P9051454015334704460

`ceil(1/acot(n*(n+3)))`
-/

namespace A028387.P9051454015334704460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈1 / SequenceMachineLib.acot (n * (n + 3) : ℝ)⌉

end

end A028387.P9051454015334704460

namespace A028387

/-- `ceil(1/acot(n*(n+3)))` -/
def P9051454015334704460.Spec : Prop :=
  ∀ n, P9051454015334704460.a n = A028387 n

end A028387

/-! ## A028387.P12878206632508724614

`floor(n/acot(n+3)+ϕ)`
-/

namespace A028387.P12878206632508724614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) / SequenceMachineLib.acot (n + 3 : ℝ) + Real.goldenRatio⌋

end

end A028387.P12878206632508724614

namespace A028387

/-- `floor(n/acot(n+3)+ϕ)` -/
def P12878206632508724614.Spec : Prop :=
  ∀ n, P12878206632508724614.a n = A028387 n

end A028387

/-! ## A028387.P13838740272075470439

`abs(1-2*C(n+2, 2))`
-/

namespace A028387.P13838740272075470439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (2 * Nat.choose (n + 2) 2 : ℤ)|

end

end A028387.P13838740272075470439

namespace A028387

/-- `abs(1-2*C(n+2, 2))` -/
def P13838740272075470439.Spec : Prop :=
  ∀ n, P13838740272075470439.a n = A028387 n

end A028387

/-! ## A028387.P1032695593356554178

`abs(1-lcm(n+1, n+2))`
-/

namespace A028387.P1032695593356554178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (Nat.lcm (n + 1) (n + 2) : ℤ)|

end

end A028387.P1032695593356554178

namespace A028387

/-- `abs(1-lcm(n+1, n+2))` -/
def P1032695593356554178.Spec : Prop :=
  ∀ n, P1032695593356554178.a n = A028387 n

end A028387

/-! ## A028387.P12036835408853455470

`Δ[2*C(n+2, 3)-n]`
-/

namespace A028387.P12036835408853455470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * Nat.choose (n + 2) 3 : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A028387.P12036835408853455470

namespace A028387

/-- `Δ[2*C(n+2, 3)-n]` -/
def P12036835408853455470.Spec : Prop :=
  ∀ n, P12036835408853455470.a n = A028387 n

end A028387

/-! ## A028387.P17498260510256762828

`floor(2*(cos(2)+∑[n+1]))`
-/

namespace A028387.P17498260510256762828
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊2 * (Real.cos (2 : ℝ) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ))⌋

end

end A028387.P17498260510256762828

namespace A028387

/-- `floor(2*(cos(2)+∑[n+1]))` -/
def P17498260510256762828.Spec : Prop :=
  ∀ n, P17498260510256762828.a n = A028387 n

end A028387

/-! ## A028387.P470137023544056304

`ceil(2*(∑[n+1]-cos(1)))`
-/

namespace A028387.P470137023544056304
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈2 * (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ) - Real.cos (1 : ℝ))⌉

end

end A028387.P470137023544056304

namespace A028387

/-- `ceil(2*(∑[n+1]-cos(1)))` -/
def P470137023544056304.Spec : Prop :=
  ∀ n, P470137023544056304.a n = A028387 n

end A028387

/-! ## A028387.P17181104595059575317

`round(2*(cos(2)+∑[n+1]))`
-/

namespace A028387.P17181104595059575317
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (2 * (Real.cos (2 : ℝ) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ)))

end

end A028387.P17181104595059575317

namespace A028387

/-- `round(2*(cos(2)+∑[n+1]))` -/
def P17181104595059575317.Spec : Prop :=
  ∀ n, P17181104595059575317.a n = A028387 n

end A028387

/-!
# A028388: Good primes (version 2): prime(n) such that prime(n)^2 > prime(n-i)*prime(n+i) for all 1 <= i <= n-1.

The programs for A028388, there is no canonical definition to state claims against.
-/

/-! ## A028388.P17656803244977095648

`record[gcd(A045344(n+2), A339115(2*(n+3)))]`
-/

namespace A028388.P17656803244977095648
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A045344 (n + 2)) (A339115 (2 * (n + 3)))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A028388.P17656803244977095648

/-! ## A028388.P14934398345165942323

`sqrt(∩[(2*n+3)², A339115(n+2)])`
-/

namespace A028388.P14934398345165942323
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 3) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339115 (n + 2)

open Classical in
def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n : ℝ)

end

end A028388.P14934398345165942323

/-! ## A028388.P934211245767298023

`p?[∏{p}[A339115(n+3), #]]`
-/

namespace A028388.P934211245767298023
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339115 (n + 3)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A028388.P934211245767298023

/-! ## A028388.P3087095038272869752

`p?[A007947(A339115(n+3))]`
-/

namespace A028388.P3087095038272869752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A339115 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A028388.P3087095038272869752

/-! ## A028388.P17983611309184721621

`A006530(∩[A339115(n+3), n²])`
-/

namespace A028388.P17983611309184721621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339115 (n + 3)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n)

end

end A028388.P17983611309184721621

/-!
# A028389: The 5x + 1 sequence beginning at 7.

The programs for A028389, there is no canonical definition to state claims against.
-/

/-! ## A028389.P13869750323512672025

`A008836(A023201(n+1))+A259193(n+4)+1`
-/

namespace A028389.P13869750323512672025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (A023201 (n + 1)).toNat + (A259193 (n + 4) + 1)

end

end A028389.P13869750323512672025

/-! ## A028389.P4563877582810307879

`A259193(log2(A011782(n+5)))`
-/

namespace A028389.P4563877582810307879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259193 (SequenceMachineLib.roundAway (Real.logb 2 (A011782 (n + 5) : ℝ))).toNat

end

end A028389.P4563877582810307879

/-! ## A028389.P8502681281064859728

`and(A008836(A000057(n+1)), A259193(n+4))`
-/

namespace A028389.P8502681281064859728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A008836 (A000057 (n + 1)).toNat) (A259193 (n + 4))

end

end A028389.P8502681281064859728

/-! ## A028389.P13158158383805730799

`A008836((n+1)²)*A259193(n+4)`
-/

namespace A028389.P13158158383805730799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 ((n + 1) ^ 2) * A259193 (n + 4)

end

end A028389.P13158158383805730799

/-! ## A028389.P2022657729609559841

`A259193(A011262(A011262(n+1))+3)`
-/

namespace A028389.P2022657729609559841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259193 (A011262 (A011262 (n + 1)).toNat + 3).toNat

end

end A028389.P2022657729609559841

/-! ## A028389.P3338654987268606302

`A000035(A259182(n+1))*A259193(n+4)`
-/

namespace A028389.P3338654987268606302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A259182 (n + 1)).toNat * A259193 (n + 4)

end

end A028389.P3338654987268606302

/-!
# A028390: Nearest integer to 3n/4 unless that is an integer, when 3n/2.

The programs for A028390, the canonical program `A028390.P7932204980656736229` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A028390 has offset 0).

The definition of A028390 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A028390.P7932204980656736229

`A006368(or(n, and(1, lcm(2, n)/2)))`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A028390

/-- `A006368(or(n, and(1, lcm(2, n)/2)))` -/
def P7932204980656736229.Spec : Prop :=
  ∀ n, P7932204980656736229.a n = A028390 n

theorem P7932204980656736229.correct : P7932204980656736229.Spec := by
  intro n
  simp only [A028390]

end A028390

/-! ## A028390.P5815687001961614396

`A006368(or(n, A003815(n)))`
-/

namespace A028390.P5815687001961614396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006368 (Int.lor (n : ℤ) (A003815 n)).toNat

end

end A028390.P5815687001961614396

namespace A028390

/-- `A006368(or(n, A003815(n)))` -/
def P5815687001961614396.Spec : Prop :=
  ∀ n, P5815687001961614396.a n = A028390 n

end A028390

/-! ## A028390.P13771930046304326846

`A006368(or(n, A014707(n)))`
-/

namespace A028390.P13771930046304326846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006368 (Int.lor (n : ℤ) (A014707 n)).toNat

end

end A028390.P13771930046304326846

namespace A028390

/-- `A006368(or(n, A014707(n)))` -/
def P13771930046304326846.Spec : Prop :=
  ∀ n, P13771930046304326846.a n = A028390 n

end A028390

/-! ## A028390.P17516214828738511021

`A006368(or(n, A021913(n)))`
-/

namespace A028390.P17516214828738511021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006368 (Int.lor (n : ℤ) (A021913 n)).toNat

end

end A028390.P17516214828738511021

namespace A028390

/-- `A006368(or(n, A021913(n)))` -/
def P17516214828738511021.Spec : Prop :=
  ∀ n, P17516214828738511021.a n = A028390 n

end A028390

/-! ## A028390.P17467295950891425810

`A006368(or(n, A059125(n)))`
-/

namespace A028390.P17467295950891425810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006368 (Int.lor (n : ℤ) (A059125 n)).toNat

end

end A028390.P17467295950891425810

namespace A028390

/-- `A006368(or(n, A059125(n)))` -/
def P17467295950891425810.Spec : Prop :=
  ∀ n, P17467295950891425810.a n = A028390 n

end A028390

/-! ## A028390.P5299064637726091933

`A006368(or(n, A088440(n)))`
-/

namespace A028390.P5299064637726091933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006368 (Int.lor (n : ℤ) (A088440 n)).toNat

end

end A028390.P5299064637726091933

namespace A028390

/-- `A006368(or(n, A088440(n)))` -/
def P5299064637726091933.Spec : Prop :=
  ∀ n, P5299064637726091933.a n = A028390 n

end A028390

/-! ## A028390.P13551112192770676220

`A006368(or(n, A165560(n)))`
-/

namespace A028390.P13551112192770676220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006368 (Int.lor (n : ℤ) (A165560 n)).toNat

end

end A028390.P13551112192770676220

namespace A028390

/-- `A006368(or(n, A165560(n)))` -/
def P13551112192770676220.Spec : Prop :=
  ∀ n, P13551112192770676220.a n = A028390 n

end A028390

/-! ## A028390.P8187419826123763569

`A006368(or(n, A166486(n)))`
-/

namespace A028390.P8187419826123763569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006368 (Int.lor (n : ℤ) (A166486 n)).toNat

end

end A028390.P8187419826123763569

namespace A028390

/-- `A006368(or(n, A166486(n)))` -/
def P8187419826123763569.Spec : Prop :=
  ∀ n, P8187419826123763569.a n = A028390 n

end A028390

/-! ## A028390.P8985521394800871142

`A006368(or(n, A241979(n)))`
-/

namespace A028390.P8985521394800871142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006368 (Int.lor (n : ℤ) (A241979 n)).toNat

end

end A028390.P8985521394800871142

namespace A028390

/-- `A006368(or(n, A241979(n)))` -/
def P8985521394800871142.Spec : Prop :=
  ∀ n, P8985521394800871142.a n = A028390 n

end A028390

/-! ## A028390.P6562216635747438490

`A006368(char[A016825(n)]+n)`
-/

namespace A028390.P6562216635747438490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016825 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006368 ((if ∃ j, f1 j = (n : ℤ) then 1 else 0) + n)

end

end A028390.P6562216635747438490

namespace A028390

/-- `A006368(char[A016825(n)]+n)` -/
def P6562216635747438490.Spec : Prop :=
  ∀ n, P6562216635747438490.a n = A028390 n

end A028390

/-! ## A028390.P8312463727372074662

`A006368(xor(n, char[A016825(n)]))`
-/

namespace A028390.P8312463727372074662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016825 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006368 (Nat.xor n (if ∃ j, f1 j = (n : ℤ) then 1 else 0))

end

end A028390.P8312463727372074662

namespace A028390

/-- `A006368(xor(n, char[A016825(n)]))` -/
def P8312463727372074662.Spec : Prop :=
  ∀ n, P8312463727372074662.a n = A028390 n

end A028390

/-! ## A028390.P10984937895163015588

`A047379(n+1)-A214392(n)`
-/

namespace A028390.P10984937895163015588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047379 (n + 1) - A214392 n

end

end A028390.P10984937895163015588

namespace A028390

/-- `A047379(n+1)-A214392(n)` -/
def P10984937895163015588.Spec : Prop :=
  ∀ n, P10984937895163015588.a n = A028390 n

end A028390

/-! ## A028390.P18262454588061993225

`A006368(or(n, and(1, A006368(n))))`
-/

namespace A028390.P18262454588061993225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006368 (Int.lor (n : ℤ) (Int.land 1 (A006368 n))).toNat

end

end A028390.P18262454588061993225

namespace A028390

/-- `A006368(or(n, and(1, A006368(n))))` -/
def P18262454588061993225.Spec : Prop :=
  ∀ n, P18262454588061993225.a n = A028390 n

end A028390

/-! ## A028390.P16126236076589885999

`A006368(or(n, Δ[A004524(n)]))`
-/

namespace A028390.P16126236076589885999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006368 (Int.lor (n : ℤ) (f1 (n + 1) - f1 n)).toNat

end

end A028390.P16126236076589885999

namespace A028390

/-- `A006368(or(n, Δ[A004524(n)]))` -/
def P16126236076589885999.Spec : Prop :=
  ∀ n, P16126236076589885999.a n = A028390 n

end A028390

/-! ## A028390.P2750648686497029076

`A006368(n+1-A000035(A281098(n+2)))`
-/

namespace A028390.P2750648686497029076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006368 ((n + 1 : ℤ) - A000035 (A281098 (n + 2)).toNat).toNat

end

end A028390.P2750648686497029076

namespace A028390

/-- `A006368(n+1-A000035(A281098(n+2)))` -/
def P2750648686497029076.Spec : Prop :=
  ∀ n, P2750648686497029076.a n = A028390 n

end A028390

/-! ## A028390.P12607382835989923514

`A029578(A004525(n)+or(1, n))`
-/

namespace A028390.P12607382835989923514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029578 (A004525 n + (Nat.lor 1 n : ℤ)).toNat

end

end A028390.P12607382835989923514

namespace A028390

/-- `A029578(A004525(n)+or(1, n))` -/
def P12607382835989923514.Spec : Prop :=
  ∀ n, P12607382835989923514.a n = A028390 n

end A028390

/-! ## A028390.P7786233887516230344

`A047329(n+1)-(A064680(A064680(n))+1)`
-/

namespace A028390.P7786233887516230344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047329 (n + 1) - (A064680 (A064680 n).toNat + 1)

end

end A028390.P7786233887516230344

namespace A028390

/-- `A047329(n+1)-(A064680(A064680(n))+1)` -/
def P7786233887516230344.Spec : Prop :=
  ∀ n, P7786233887516230344.a n = A028390 n

end A028390

/-! ## A028390.P11865679939903819752

`A029578(A004525(2*n+1)+A004525(n))`
-/

namespace A028390.P11865679939903819752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029578 (A004525 (2 * n + 1) + A004525 n).toNat

end

end A028390.P11865679939903819752

namespace A028390

/-- `A029578(A004525(2*n+1)+A004525(n))` -/
def P11865679939903819752.Spec : Prop :=
  ∀ n, P11865679939903819752.a n = A028390 n

end A028390

/-! ## A028390.P13047137782639102219

`A006368(A006368(2*n+1)-A004525(n+1))`
-/

namespace A028390.P13047137782639102219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006368 (A006368 (2 * n + 1) - A004525 (n + 1)).toNat

end

end A028390.P13047137782639102219

namespace A028390

/-- `A006368(A006368(2*n+1)-A004525(n+1))` -/
def P13047137782639102219.Spec : Prop :=
  ∀ n, P13047137782639102219.a n = A028390 n

end A028390

/-! ## A028390.P13244025974422027838

`round(A026741(3*n)/A176895(n))`
-/

namespace A028390.P13244025974422027838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A026741 (3 * n) : ℚ) / (A176895 n : ℚ))

end

end A028390.P13244025974422027838

namespace A028390

/-- `round(A026741(3*n)/A176895(n))` -/
def P13244025974422027838.Spec : Prop :=
  ∀ n, P13244025974422027838.a n = A028390 n

end A028390

/-!
# A028391: a(n) = n - floor(sqrt(n)).

The programs for A028391, the canonical program `A028391.P17198271841435315725` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A028391 has offset 0).

The definition of A028391 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n-floor(sqrt(n))` (program `A028391.P17198271841435315725`, by `A028391.P17198271841435315725.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A028391.P17198271841435315725

`n-floor(sqrt(n))`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A028391

/-- `n-floor(sqrt(n))` -/
def P17198271841435315725.Spec : Prop :=
  ∀ n, P17198271841435315725.a n = A028391 n

theorem P17198271841435315725.correct : P17198271841435315725.Spec := by
  intro n
  simp only [A028391]

end A028391

/-! ## A028391.P6191451587852018697

`∑[xor(1, char[n²])]`
-/

namespace A028391.P6191451587852018697
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (if ∃ j, f2 j = n then 1 else 0)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A028391.P6191451587852018697

namespace A028391

/-- `∑[xor(1, char[n²])]` -/
def P6191451587852018697.Spec : Prop :=
  ∀ n, (P6191451587852018697.a n : ℤ) = A028391 n

end A028391

/-! ## A028391.P9441434789394280907

`∑[floor(cos(char[n²]))]`
-/

namespace A028391.P9441434789394280907
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.cos ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A028391.P9441434789394280907

namespace A028391

/-- `∑[floor(cos(char[n²]))]` -/
def P9441434789394280907.Spec : Prop :=
  ∀ n, P9441434789394280907.a n = A028391 n

end A028391

/-! ## A028391.P15041235038158880964

`∑[floor(acos(char[n²]))]`
-/

namespace A028391.P15041235038158880964
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.arccos ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A028391.P15041235038158880964

namespace A028391

/-- `∑[floor(acos(char[n²]))]` -/
def P15041235038158880964.Spec : Prop :=
  ∀ n, P15041235038158880964.a n = A028391 n

end A028391

/-! ## A028391.P2907644230803327502

`∑[floor(acot(char[n²]))]`
-/

namespace A028391.P2907644230803327502
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A028391.P2907644230803327502

namespace A028391

/-- `∑[floor(acot(char[n²]))]` -/
def P2907644230803327502.Spec : Prop :=
  ∀ n, P2907644230803327502.a n = A028391 n

end A028391

/-! ## A028391.P8896678459798747570

`∑[sin(acos(char[n²]))]`
-/

namespace A028391.P8896678459798747570
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sin (Real.arccos ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A028391.P8896678459798747570

namespace A028391

/-- `∑[sin(acos(char[n²]))]` -/
def P8896678459798747570.Spec : Prop :=
  ∀ n, P8896678459798747570.a n = (A028391 n : ℝ)

end A028391

/-! ## A028391.P17326591092790177861

`∑[cos(asin(char[n²]))]`
-/

namespace A028391.P17326591092790177861
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cos (Real.arcsin ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A028391.P17326591092790177861

namespace A028391

/-- `∑[cos(asin(char[n²]))]` -/
def P17326591092790177861.Spec : Prop :=
  ∀ n, P17326591092790177861.a n = (A028391 n : ℝ)

end A028391

/-! ## A028391.P12121349732964903830

`∑[dr(1-char[n²])]`
-/

namespace A028391.P12121349732964903830
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (1 - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A028391.P12121349732964903830

namespace A028391

/-- `∑[dr(1-char[n²])]` -/
def P12121349732964903830.Spec : Prop :=
  ∀ n, (P12121349732964903830.a n : ℤ) = A028391 n

end A028391

/-! ## A028391.P9787162767981112614

`∑[char[lt[char[n²], 1]]]`
-/

namespace A028391.P9787162767981112614
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f4 j = n then 1 else 0

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f3 j < f5 j) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A028391.P9787162767981112614

namespace A028391

/-- `∑[char[lt[char[n²], 1]]]` -/
def P9787162767981112614.Spec : Prop :=
  ∀ n, (P9787162767981112614.a n : ℤ) = A028391 n

end A028391

/-! ## A028391.P2328976378507882199

`∑[(char[n²]+1)%2]`
-/

namespace A028391.P2328976378507882199
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f2 j = n then 1 else 0) + 1) % 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A028391.P2328976378507882199

namespace A028391

/-- `∑[(char[n²]+1)%2]` -/
def P2328976378507882199.Spec : Prop :=
  ∀ n, (P2328976378507882199.a n : ℤ) = A028391 n

end A028391

/-! ## A028391.P3833350388660743082

`∑[val(char[n²]+2, 2)]`
-/

namespace A028391.P3833350388660743082
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation ((if ∃ j, f2 j = n then 1 else 0) + 2) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A028391.P3833350388660743082

namespace A028391

/-- `∑[val(char[n²]+2, 2)]` -/
def P3833350388660743082.Spec : Prop :=
  ∀ n, (P3833350388660743082.a n : ℤ) = A028391 n

end A028391

/-! ## A028391.P4995361048559509102

`∑[and(1, char[n²]+1)]`
-/

namespace A028391.P4995361048559509102
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 ((if ∃ j, f2 j = n then 1 else 0) + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A028391.P4995361048559509102

namespace A028391

/-- `∑[and(1, char[n²]+1)]` -/
def P4995361048559509102.Spec : Prop :=
  ∀ n, (P4995361048559509102.a n : ℤ) = A028391 n

end A028391

/-! ## A028391.P14535335642965253392

`∑[C(2, char[n²]+2)]`
-/

namespace A028391.P14535335642965253392
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 ((if ∃ j, f2 j = n then 1 else 0) + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A028391.P14535335642965253392

namespace A028391

/-- `∑[C(2, char[n²]+2)]` -/
def P14535335642965253392.Spec : Prop :=
  ∀ n, (P14535335642965253392.a n : ℤ) = A028391 n

end A028391

/-! ## A028391.P7163873380513305

`∑[3-or(2, char[n²])]`
-/

namespace A028391.P7163873380513305
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - (Nat.lor 2 (if ∃ j, f2 j = n then 1 else 0) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A028391.P7163873380513305

namespace A028391

/-- `∑[3-or(2, char[n²])]` -/
def P7163873380513305.Spec : Prop :=
  ∀ n, P7163873380513305.a n = A028391 n

end A028391

/-! ## A028391.P5733790545196106552

`Δ[n²]%comp[∑[2*n]]`
-/

namespace A028391.P5733790545196106552
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n : ℤ)

end

end A028391.P5733790545196106552

namespace A028391

/-- `Δ[n²]%comp[∑[2*n]]` -/
def P5733790545196106552.Spec : Prop :=
  ∀ n, P5733790545196106552.a n = A028391 n

end A028391

/-! ## A028391.P7890659130748108272

`∑[gcd(n, n+1)-char[n²]]`
-/

namespace A028391.P7890659130748108272
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd n (n + 1) : ℤ) - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A028391.P7890659130748108272

namespace A028391

/-- `∑[gcd(n, n+1)-char[n²]]` -/
def P7890659130748108272.Spec : Prop :=
  ∀ n, P7890659130748108272.a n = A028391 n

end A028391

/-! ## A028391.P17173498531347105040

`floor((a(a(a(n-1)))+2*n)/3)` with `a(0)=0`
-/

namespace A028391.P17173498531347105040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ⌊(a (a (a (n - 1)).toNat).toNat + (2 * n : ℤ) : ℚ) / 3⌋

end

end A028391.P17173498531347105040

namespace A028391

/-- `floor((a(a(a(n-1)))+2*n)/3)` -/
def P17173498531347105040.Spec : Prop :=
  ∀ n, P17173498531347105040.a n = A028391 n

end A028391

/-! ## A028391.P3871531306501964096

`floor((a(a(a(n-1)))+n+n)/3)` with `a(0)=0`
-/

namespace A028391.P3871531306501964096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ⌊(a (a (a (n - 1)).toNat).toNat + (n : ℤ) + (n : ℤ) : ℚ) / 3⌋

end

end A028391.P3871531306501964096

namespace A028391

/-- `floor((a(a(a(n-1)))+n+n)/3)` -/
def P3871531306501964096.Spec : Prop :=
  ∀ n, P3871531306501964096.a n = A028391 n

end A028391

/-!
# A028392: a(n) = n + floor(sqrt(n)).

The programs for A028392, the canonical program `A028392.P968666440364652535` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A028392 has offset 0).

The definition of A028392 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n+floor(sqrt(n))` (program `A028392.P968666440364652535`, by `A028392.P968666440364652535.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A028392.P968666440364652535

`n+floor(sqrt(n))`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A028392

/-- `n+floor(sqrt(n))` -/
def P968666440364652535.Spec : Prop :=
  ∀ n, (P968666440364652535.a n : ℤ) = A028392 n

theorem P968666440364652535.correct : P968666440364652535.Spec := by
  intro n
  simp only [A028392]

end A028392

/-! ## A028392.P4263927121391756544

`comp[xor(n, -1)+n²]`
-/

namespace A028392.P4263927121391756544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (-1) + (n ^ 2 : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A028392.P4263927121391756544

namespace A028392

/-- `comp[xor(n, -1)+n²]` -/
def P4263927121391756544.Spec : Prop :=
  ∀ n, (P4263927121391756544.a n : ℤ) = A028392 n

end A028392

/-! ## A028392.P16317329198614377043

`comp[2*C(n, 2)-1]`
-/

namespace A028392.P16317329198614377043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * Nat.choose n 2 : ℤ) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A028392.P16317329198614377043

namespace A028392

/-- `comp[2*C(n, 2)-1]` -/
def P16317329198614377043.Spec : Prop :=
  ∀ n, (P16317329198614377043.a n : ℤ) = A028392 n

end A028392

/-! ## A028392.P9336416300030912190

`comp[lcm(n, n+1)-1]`
-/

namespace A028392.P9336416300030912190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lcm n (n + 1) : ℤ) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A028392.P9336416300030912190

namespace A028392

/-- `comp[lcm(n, n+1)-1]` -/
def P9336416300030912190.Spec : Prop :=
  ∀ n, (P9336416300030912190.a n : ℤ) = A028392 n

end A028392

/-! ## A028392.P1363828435868000701

`comp[or(1, n*(n+3))]`
-/

namespace A028392.P1363828435868000701
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (n * (n + 3))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A028392.P1363828435868000701

namespace A028392

/-- `comp[or(1, n*(n+3))]` -/
def P1363828435868000701.Spec : Prop :=
  ∀ n, (P1363828435868000701.a n : ℤ) = A028392 n

end A028392

/-! ## A028392.P13729654188591722452

`comp[xor(1, n*(n+3))]`
-/

namespace A028392.P13729654188591722452
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (n * (n + 3))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A028392.P13729654188591722452

namespace A028392

/-- `comp[xor(1, n*(n+3))]` -/
def P13729654188591722452.Spec : Prop :=
  ∀ n, (P13729654188591722452.a n : ℤ) = A028392 n

end A028392

/-! ## A028392.P6373347746524845374

`comp[∑[comp[or(1, n)]]-1]`
-/

namespace A028392.P6373347746524845374
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A028392.P6373347746524845374

namespace A028392

/-- `comp[∑[comp[or(1, n)]]-1]` -/
def P6373347746524845374.Spec : Prop :=
  ∀ n, (P6373347746524845374.a n : ℤ) = A028392 n

end A028392

/-! ## A028392.P7197321569581960977

`comp[record[(1-n)²]+n]`
-/

namespace A028392.P7197321569581960977
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (n : ℤ)) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A028392.P7197321569581960977

namespace A028392

/-- `comp[record[(1-n)²]+n]` -/
def P7197321569581960977.Spec : Prop :=
  ∀ n, (P7197321569581960977.a n : ℤ) = A028392 n

end A028392

/-! ## A028392.P18292568525025100961

`comp[record[(1-n)²-n]]`
-/

namespace A028392.P18292568525025100961
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (n : ℤ)) ^ 2 - (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A028392.P18292568525025100961

namespace A028392

/-- `comp[record[(1-n)²-n]]` -/
def P18292568525025100961.Spec : Prop :=
  ∀ n, (P18292568525025100961.a n : ℤ) = A028392 n

end A028392

/-! ## A028392.P6338394474593114086

`comp[C(n+1, n)²+n]`
-/

namespace A028392.P6338394474593114086
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) n ^ 2 + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A028392.P6338394474593114086

namespace A028392

/-- `comp[C(n+1, n)²+n]` -/
def P6338394474593114086.Spec : Prop :=
  ∀ n, (P6338394474593114086.a n : ℤ) = A028392 n

end A028392

/-! ## A028392.P6197780192569607586

`comp[a(n-1)+2*n]` with `a(0)=1, a(1)=1`
-/

namespace A028392.P6197780192569607586
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  f1 (n - 1) + 2 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A028392.P6197780192569607586

namespace A028392

/-- `comp[a(n-1)+2*n]` -/
def P6197780192569607586.Spec : Prop :=
  ∀ n, (P6197780192569607586.a n : ℤ) = A028392 n

end A028392

/-! ## A028392.P7633049593153801409

`comp[n%(n+1)+(n+1)²]`
-/

namespace A028392.P7633049593153801409
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % (n + 1) + (n + 1) ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A028392.P7633049593153801409

namespace A028392

/-- `comp[n%(n+1)+(n+1)²]` -/
def P7633049593153801409.Spec : Prop :=
  ∀ n, (P7633049593153801409.a n : ℤ) = A028392 n

end A028392

/-!
# A028393: Iterate the map in A006368 starting at 8.

The programs for A028393, the canonical program `A028393.P12035346811171582160` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A028393 has offset 0).

The definition of A028393 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3810 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A028393.P12035346811171582160

`A180864(n+4)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A028393

/-- `A180864(n+4)` -/
def P12035346811171582160.Spec : Prop :=
  ∀ n, P12035346811171582160.a n = A028393 n

theorem P12035346811171582160.correct : P12035346811171582160.Spec := by
  intro n
  simp only [A028393]

end A028393

/-! ## A028393.P9080743298422367

`A168221(a(n-2))` with `a(0)=8, a(1)=12`
-/

namespace A028393.P9080743298422367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [8, 12] fun n a =>
  A168221 (a (n - 2)).toNat

end

end A028393.P9080743298422367

namespace A028393

/-- `A168221(a(n-2))` -/
def P9080743298422367.Spec : Prop :=
  ∀ n, P9080743298422367.a n = A028393 n

end A028393

/-! ## A028393.P15996387837264792893

`A168221(A168221(A180864(n)))`
-/

namespace A028393.P15996387837264792893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168221 (A168221 (A180864 n).toNat).toNat

end

end A028393.P15996387837264792893

namespace A028393

/-- `A168221(A168221(A180864(n)))` -/
def P15996387837264792893.Spec : Prop :=
  ∀ n, P15996387837264792893.a n = A028393 n

end A028393

/-! ## A028393.P12777654227551676351

`A006368(a(n-1))` with `a(0)=8`
-/

namespace A028393.P12777654227551676351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [8] fun n a =>
  A006368 (a (n - 1)).toNat

end

end A028393.P12777654227551676351

namespace A028393

/-- `A006368(a(n-1))` -/
def P12777654227551676351.Spec : Prop :=
  ∀ n, P12777654227551676351.a n = A028393 n

end A028393

/-! ## A028393.P5849329279640392586

`A351412(xor(1, a(n-1)))` with `a(0)=8`
-/

namespace A028393.P5849329279640392586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [8] fun n a =>
  A351412 (Int.xor 1 (a (n - 1))).toNat

end

end A028393.P5849329279640392586

namespace A028393

/-- `A351412(xor(1, a(n-1)))` -/
def P5849329279640392586.Spec : Prop :=
  ∀ n, P5849329279640392586.a n = A028393 n

end A028393

/-! ## A028393.P5035169094708380172

`floor(A165355(a(n-1))/2)` with `a(0)=8`
-/

namespace A028393.P5035169094708380172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [8] fun n a =>
  ⌊(A165355 (a (n - 1)).toNat : ℚ) / 2⌋

end

end A028393.P5035169094708380172

namespace A028393

/-- `floor(A165355(a(n-1))/2)` -/
def P5035169094708380172.Spec : Prop :=
  ∀ n, P5035169094708380172.a n = A028393 n

end A028393

/-! ## A028393.P14532142551396997650

`A342131(a(n-1)-1)+1` with `a(0)=8`
-/

namespace A028393.P14532142551396997650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [8] fun n a =>
  A342131 (a (n - 1) - 1).toNat + 1

end

end A028393.P14532142551396997650

namespace A028393

/-- `A342131(a(n-1)-1)+1` -/
def P14532142551396997650.Spec : Prop :=
  ∀ n, P14532142551396997650.a n = A028393 n

end A028393

/-! ## A028393.P5526835290960544163

`A006368(ceil(a(A023443(n))))` with `a(0)=8`

`ceil` is left out, it is the identity on integers.
-/

namespace A028393.P5526835290960544163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [8] fun n a =>
  A006368 (a (A023443 n).toNat).toNat

end

end A028393.P5526835290960544163

namespace A028393

/-- `A006368(ceil(a(A023443(n))))` -/
def P5526835290960544163.Spec : Prop :=
  ∀ n, P5526835290960544163.a n = A028393 n

end A028393

/-! ## A028393.P13324239660473029204

`A074306(A159966(a(n-1)))` with `a(0)=8`
-/

namespace A028393.P13324239660473029204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [8] fun n a =>
  A074306 (A159966 (a (n - 1)).toNat).toNat

end

end A028393.P13324239660473029204

namespace A028393

/-- `A074306(A159966(a(n-1)))` -/
def P13324239660473029204.Spec : Prop :=
  ∀ n, P13324239660473029204.a n = A028393 n

end A028393

/-!
# A028394: Iterate the map in A006369 starting at 8.

The programs for A028394, there is no canonical definition to state claims against.
-/

/-! ## A028394.P7955727568908942569

`A094332(n+2)`
-/

namespace A028394.P7955727568908942569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094332 (n + 2)

end

end A028394.P7955727568908942569

/-! ## A028394.P9141628489659590378

`A006369(a(n-1))` with `a(0)=8`
-/

namespace A028394.P9141628489659590378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [8] fun n a =>
  A006369 (a (n - 1)).toNat

end

end A028394.P9141628489659590378

/-! ## A028394.P14267766862360749050

`sqrt(A173536(a(n-1)+2))` with `a(0)=8`
-/

namespace A028394.P14267766862360749050
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [8] fun n a =>
  Real.sqrt (A173536 (SequenceMachineLib.roundAway (a (n - 1) + 2)).toNat : ℝ)

end

end A028394.P14267766862360749050

/-! ## A028394.P699778790181984520

`A265667(a(n-1)+1)-1` with `a(0)=8`
-/

namespace A028394.P699778790181984520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [8] fun n a =>
  A265667 (a (n - 1) + 1).toNat - 1

end

end A028394.P699778790181984520

/-! ## A028394.P8654778700524178802

`lcm(2, A042965(a(n-1)+1))/2` with `a(0)=8`
-/

namespace A028394.P8654778700524178802
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [8] fun n a =>
  (Int.lcm 2 (A042965 (SequenceMachineLib.roundAway (a (n - 1) + 1)).toNat) : ℚ) / 2

end

end A028394.P8654778700524178802

/-! ## A028394.P3141273525572623266

`A168222(A006368(a(n-1)))` with `a(0)=8`
-/

namespace A028394.P3141273525572623266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [8] fun n a =>
  A168222 (A006368 (a (n - 1)).toNat).toNat

end

end A028394.P3141273525572623266

/-! ## A028394.P17044634384608350554

`A168222(A351412(xor(1, a(n-1))))` with `a(0)=8`
-/

namespace A028394.P17044634384608350554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [8] fun n a =>
  A168222 (A351412 (Int.xor 1 (a (n - 1))).toNat).toNat

end

end A028394.P17044634384608350554

/-! ## A028394.P11209947864416961120

`A168222(floor(A165355(a(n-1))/2))` with `a(0)=8`
-/

namespace A028394.P11209947864416961120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [8] fun n a =>
  A168222 ⌊(A165355 (a (n - 1)).toNat : ℚ) / 2⌋.toNat

end

end A028394.P11209947864416961120

/-! ## A028394.P18057102377524522161

`A087627(2*a(n-1))-1` with `a(0)=8`
-/

namespace A028394.P18057102377524522161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [8] fun n a =>
  A087627 (2 * a (n - 1)).toNat - 1

end

end A028394.P18057102377524522161

/-! ## A028394.P16488613962098557459

`A089598(A047271(a(n-1)))` with `a(0)=8`
-/

namespace A028394.P16488613962098557459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [8] fun n a =>
  A089598 (A047271 (a (n - 1)).toNat).toNat

end

end A028394.P16488613962098557459

/-!
# A028395: Iterate the map in A006368 starting at 14.

The programs for A028395, there is no canonical definition to state claims against.
-/

/-! ## A028395.P14727241978328818638

`A006368(a(n-1))` with `a(0)=14`
-/

namespace A028395.P14727241978328818638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [14] fun n a =>
  A006368 (a (n - 1)).toNat

end

end A028395.P14727241978328818638

/-! ## A028395.P10723390923192424068

`A351412(xor(1, a(n-1)))` with `a(0)=14`
-/

namespace A028395.P10723390923192424068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [14] fun n a =>
  A351412 (Int.xor 1 (a (n - 1))).toNat

end

end A028395.P10723390923192424068

/-! ## A028395.P15341733296787681484

`floor(A165355(a(n-1))/2)` with `a(0)=14`
-/

namespace A028395.P15341733296787681484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [14] fun n a =>
  ⌊(A165355 (a (n - 1)).toNat : ℚ) / 2⌋

end

end A028395.P15341733296787681484

/-! ## A028395.P5475488733770014309

`A342131(a(n-1)-1)+1` with `a(0)=14`
-/

namespace A028395.P5475488733770014309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [14] fun n a =>
  A342131 (a (n - 1) - 1).toNat + 1

end

end A028395.P5475488733770014309

/-! ## A028395.P10298388421353974862

`A006368(ceil(a(A023443(n))))` with `a(0)=14`

`ceil` is left out, it is the identity on integers.
-/

namespace A028395.P10298388421353974862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [14] fun n a =>
  A006368 (a (A023443 n).toNat).toNat

end

end A028395.P10298388421353974862

/-! ## A028395.P17545785182009569746

`A168221(A006369(a(n-1)))` with `a(0)=14`
-/

namespace A028395.P17545785182009569746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [14] fun n a =>
  A168221 (A006369 (a (n - 1)).toNat).toNat

end

end A028395.P17545785182009569746

/-! ## A028395.P6545429101462102588

`A074306(A159966(a(n-1)))` with `a(0)=14`
-/

namespace A028395.P6545429101462102588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [14] fun n a =>
  A074306 (A159966 (a (n - 1)).toNat).toNat

end

end A028395.P6545429101462102588

/-!
# A028396: Iterate the map in A006369 starting at 14.

The programs for A028396, there is no canonical definition to state claims against.
-/

/-! ## A028396.P7612044178158612766

`A094329(n+3)`
-/

namespace A028396.P7612044178158612766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094329 (n + 3)

end

end A028396.P7612044178158612766

/-! ## A028396.P14714236164676861788

`A006369(a(n-1))` with `a(0)=14`
-/

namespace A028396.P14714236164676861788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [14] fun n a =>
  A006369 (a (n - 1)).toNat

end

end A028396.P14714236164676861788

/-! ## A028396.P2802430827818077599

`sqrt(A173536(a(n-1)+2))` with `a(0)=14`
-/

namespace A028396.P2802430827818077599
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [14] fun n a =>
  Real.sqrt (A173536 (SequenceMachineLib.roundAway (a (n - 1) + 2)).toNat : ℝ)

end

end A028396.P2802430827818077599

/-! ## A028396.P7105329520523265443

`A265667(a(n-1)+1)-1` with `a(0)=14`
-/

namespace A028396.P7105329520523265443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [14] fun n a =>
  A265667 (a (n - 1) + 1).toNat - 1

end

end A028396.P7105329520523265443

/-! ## A028396.P9760773766399008472

`lcm(2, A042965(a(n-1)+1))/2` with `a(0)=14`
-/

namespace A028396.P9760773766399008472
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [14] fun n a =>
  (Int.lcm 2 (A042965 (SequenceMachineLib.roundAway (a (n - 1) + 1)).toNat) : ℚ) / 2

end

end A028396.P9760773766399008472

/-! ## A028396.P7362139783047838161

`A168222(A006368(a(n-1)))` with `a(0)=14`
-/

namespace A028396.P7362139783047838161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [14] fun n a =>
  A168222 (A006368 (a (n - 1)).toNat).toNat

end

end A028396.P7362139783047838161

/-! ## A028396.P11994309128522895255

`A006369(A094329(comp[n²²²]))`
-/

namespace A028396.P11994309128522895255
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((n ^ 2) ^ 2) ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006369 (A094329 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)).toNat

end

end A028396.P11994309128522895255

/-! ## A028396.P16495752873784213538

`A168222(A351412(xor(1, a(n-1))))` with `a(0)=14`
-/

namespace A028396.P16495752873784213538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [14] fun n a =>
  A168222 (A351412 (Int.xor 1 (a (n - 1))).toNat).toNat

end

end A028396.P16495752873784213538

/-! ## A028396.P14296651980291207224

`A168222(floor(A165355(a(n-1))/2))` with `a(0)=14`
-/

namespace A028396.P14296651980291207224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [14] fun n a =>
  A168222 ⌊(A165355 (a (n - 1)).toNat : ℚ) / 2⌋.toNat

end

end A028396.P14296651980291207224

/-! ## A028396.P13513919644888677936

`A089598(A047271(a(n-1)))` with `a(0)=14`
-/

namespace A028396.P13513919644888677936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [14] fun n a =>
  A089598 (A047271 (a (n - 1)).toNat).toNat

end

end A028396.P13513919644888677936

/-!
# A028399: a(n) = 2^n - 4.

The programs for A028399, the canonical program `A028399.P12294397406549119117` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A028399 has offset 2).

The definition of A028399 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A028399.P12294397406549119117

`4*A000225(n)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A028399

/-- `4*A000225(n)` -/
def P12294397406549119117.Spec : Prop :=
  ∀ n, P12294397406549119117.a n = A028399 (n + 2)

theorem P12294397406549119117.correct : P12294397406549119117.Spec := by
  intro n
  simp only [A028399, Nat.add_sub_cancel]

end A028399

/-! ## A028399.P8229442303290295016

`A175164(2*n)/A140504(n+2)`
-/

namespace A028399.P8229442303290295016
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A175164 (2 * n) : ℚ) / (A140504 (n + 2) : ℚ)

end

end A028399.P8229442303290295016

namespace A028399

/-- `A175164(2*n)/A140504(n+2)` -/
def P8229442303290295016.Spec : Prop :=
  ∀ n, P8229442303290295016.a n = (A028399 (n + 2) : ℚ)

end A028399

/-! ## A028399.P13231387857369289055

`2^(n+2)-4`
-/

namespace A028399.P13231387857369289055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 2) : ℤ) - 4

end

end A028399.P13231387857369289055

namespace A028399

/-- `2^(n+2)-4` -/
def P13231387857369289055.Spec : Prop :=
  ∀ n, P13231387857369289055.a n = A028399 (n + 2)

end A028399

/-! ## A028399.P1509559292828391619

`lcm(4, 1-2^n)`
-/

namespace A028399.P1509559292828391619
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 4 (1 - (2 ^ n : ℤ))

end

end A028399.P1509559292828391619

namespace A028399

/-- `lcm(4, 1-2^n)` -/
def P1509559292828391619.Spec : Prop :=
  ∀ n, (P1509559292828391619.a n : ℤ) = A028399 (n + 2)

end A028399

/-! ## A028399.P1654194436772107546

`xor(2, ∑[2^(n+1)])`
-/

namespace A028399.P1654194436772107546
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 2 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A028399.P1654194436772107546

namespace A028399

/-- `xor(2, ∑[2^(n+1)])` -/
def P1654194436772107546.Spec : Prop :=
  ∀ n, (P1654194436772107546.a n : ℤ) = A028399 (n + 2)

end A028399

/-! ## A028399.P4669954825430092834

`2*xor(1, ∑[2^n])`
-/

namespace A028399.P4669954825430092834
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.xor 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A028399.P4669954825430092834

namespace A028399

/-- `2*xor(1, ∑[2^n])` -/
def P4669954825430092834.Spec : Prop :=
  ∀ n, (P4669954825430092834.a n : ℤ) = A028399 (n + 2)

end A028399

/-! ## A028399.P12870258841673402237

`2*(a(n-1)+2)` with `a(0)=0`
-/

namespace A028399.P12870258841673402237
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  2 * (a (n - 1) + 2)

end

end A028399.P12870258841673402237

namespace A028399

/-- `2*(a(n-1)+2)` -/
def P12870258841673402237.Spec : Prop :=
  ∀ n, (P12870258841673402237.a n : ℤ) = A028399 (n + 2)

end A028399

/-! ## A028399.P2211620616918257128

`2*or(2, a(n-1))` with `a(0)=0`
-/

namespace A028399.P2211620616918257128
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  2 * Nat.lor 2 (a (n - 1))

end

end A028399.P2211620616918257128

namespace A028399

/-- `2*or(2, a(n-1))` -/
def P2211620616918257128.Spec : Prop :=
  ∀ n, (P2211620616918257128.a n : ℤ) = A028399 (n + 2)

end A028399

/-! ## A028399.P15072350380776084488

`∑[2*a(n-1)]` with `a(0)=0, a(1)=4`
-/

namespace A028399.P15072350380776084488
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 4] fun n f1 =>
  2 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A028399.P15072350380776084488

namespace A028399

/-- `∑[2*a(n-1)]` -/
def P15072350380776084488.Spec : Prop :=
  ∀ n, (P15072350380776084488.a n : ℤ) = A028399 (n + 2)

end A028399

/-! ## A028399.P1138042546113089314

`or(4, lcm(8, a(n-1)))` with `a(0)=0`
-/

namespace A028399.P1138042546113089314
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Nat.lor 4 (Nat.lcm 8 (a (n - 1)))

end

end A028399.P1138042546113089314

namespace A028399

/-- `or(4, lcm(8, a(n-1)))` -/
def P1138042546113089314.Spec : Prop :=
  ∀ n, (P1138042546113089314.a n : ℤ) = A028399 (n + 2)

end A028399

/-! ## A028399.P6147904075240589806

`record[2^abs(2-n)-4]`
-/

namespace A028399.P6147904075240589806
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (|2 - (n : ℤ)| : ℤ) - 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A028399.P6147904075240589806

namespace A028399

/-- `record[2^abs(2-n)-4]` -/
def P6147904075240589806.Spec : Prop :=
  ∀ n, P6147904075240589806.a n = (A028399 (n + 2) : ℚ)

end A028399

/-! ## A028399.P10469575829363466296

`∑[and(-3, 2^(n+1))]`
-/

namespace A028399.P10469575829363466296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-3) (2 ^ (n + 1) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A028399.P10469575829363466296

namespace A028399

/-- `∑[and(-3, 2^(n+1))]` -/
def P10469575829363466296.Spec : Prop :=
  ∀ n, P10469575829363466296.a n = A028399 (n + 2)

end A028399

/-! ## A028399.P3427295839350140706

`abs(xor(-2^(n+2), -4))`
-/

namespace A028399.P3427295839350140706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (-(2 ^ (n + 2) : ℤ)) (-4)|

end

end A028399.P3427295839350140706

namespace A028399

/-- `abs(xor(-2^(n+2), -4))` -/
def P3427295839350140706.Spec : Prop :=
  ∀ n, P3427295839350140706.a n = A028399 (n + 2)

end A028399

/-! ## A028399.P5675677556767443444

`∑[2^n*2%(n+2)]`
-/

namespace A028399.P5675677556767443444
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n * (2 % (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A028399.P5675677556767443444

namespace A028399

/-- `∑[2^n*2%(n+2)]` -/
def P5675677556767443444.Spec : Prop :=
  ∀ n, (P5675677556767443444.a n : ℤ) = A028399 (n + 2)

end A028399

/-! ## A028399.P10682402730022146310

`∑[ceil(atan(2*n))^(n+1)]`
-/

namespace A028399.P10682402730022146310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.arctan (2 * n : ℝ)⌉ ^ (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A028399.P10682402730022146310

namespace A028399

/-- `∑[ceil(atan(2*n))^(n+1)]` -/
def P10682402730022146310.Spec : Prop :=
  ∀ n, P10682402730022146310.a n = A028399 (n + 2)

end A028399

/-! ## A028399.P16557031509832838627

`2*(xor(3, a(n-1))-1)` with `a(0)=0`
-/

namespace A028399.P16557031509832838627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  2 * (Int.xor 3 (a (n - 1)) - 1)

end

end A028399.P16557031509832838627

namespace A028399

/-- `2*(xor(3, a(n-1))-1)` -/
def P16557031509832838627.Spec : Prop :=
  ∀ n, P16557031509832838627.a n = A028399 (n + 2)

end A028399

/-! ## A028399.P13776260915201894859

`2*(2-floor(-a(n-1)))` with `a(0)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A028399.P13776260915201894859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  2 * (2 - (-a (n - 1)))

end

end A028399.P13776260915201894859

namespace A028399

/-- `2*(2-floor(-a(n-1)))` -/
def P13776260915201894859.Spec : Prop :=
  ∀ n, P13776260915201894859.a n = A028399 (n + 2)

end A028399

/-! ## A028399.P12725266144192099191

`2*(2-ceil(-a(n-1)))` with `a(0)=0`

`ceil` is left out, it is the identity on integers.
-/

namespace A028399.P12725266144192099191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  2 * (2 - (-a (n - 1)))

end

end A028399.P12725266144192099191

namespace A028399

/-- `2*(2-ceil(-a(n-1)))` -/
def P12725266144192099191.Spec : Prop :=
  ∀ n, P12725266144192099191.a n = A028399 (n + 2)

end A028399

/-! ## A028399.P6276647637145767371

`2*(2-round(-a(n-1)))` with `a(0)=0`

`round` is left out, it is the identity on integers.
-/

namespace A028399.P6276647637145767371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  2 * (2 - (-a (n - 1)))

end

end A028399.P6276647637145767371

namespace A028399

/-- `2*(2-round(-a(n-1)))` -/
def P6276647637145767371.Spec : Prop :=
  ∀ n, P6276647637145767371.a n = A028399 (n + 2)

end A028399

