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
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C042
import Seq.B000.C043
import Seq.B000.C044
import Seq.B000.C045
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
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
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
import Seq.B006.C000
import Seq.B007.C000
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A276600: Values of m such that m^2 + 6 is a triangular number (A000217).

The programs for A276600, the canonical program `A276600.P11426879886233691196` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A276600 has offset 1).

The definition of A276600 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A276600.P11426879886233691196

`6*a(n-3)-a(n-6)` with `a(0)=0, a(1)=2, a(2)=3, a(3)=7, a(4)=15, a(5)=20`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A276600

/-- `6*a(n-3)-a(n-6)` -/
def P11426879886233691196.Spec : Prop :=
  ∀ n, P11426879886233691196.a n = A276600 (n + 1)

theorem P11426879886233691196.correct : P11426879886233691196.Spec := by
  intro n
  simp only [A276600, Nat.add_sub_cancel]

end A276600

/-! ## A276600.P11144385498136280240

`ogf((2x+3x^2+7x^3+3x^4+2x^5)/(1-6x^3+x^6))`
-/

namespace A276600.P11144385498136280240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 2, 3, 7, 3, 2] [1, 0, 0, -6, 0, 0, 1] n

end

end A276600.P11144385498136280240

namespace A276600

/-- `ogf((2x+3x^2+7x^3+3x^4+2x^5)/(1-6x^3+x^6))` -/
def P11144385498136280240.Spec : Prop :=
  ∀ n, P11144385498136280240.a n = A276600 (n + 1)

end A276600

/-! ## A276600.P4842246693979448880

`Δ[∑[A076293(n)-A076294(n)]/2]`
-/

namespace A276600.P4842246693979448880
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076293 n - A076294 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A276600.P4842246693979448880

namespace A276600

/-- `Δ[∑[A076293(n)-A076294(n)]/2]` -/
def P4842246693979448880.Spec : Prop :=
  ∀ n, P4842246693979448880.a n = (A276600 (n + 1) : ℚ)

end A276600

/-! ## A276600.P17999792087586556891

`(A076293(n+1)-A076294(n+1))/2`
-/

namespace A276600.P17999792087586556891
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A076293 (n + 1) - A076294 (n + 1) : ℚ) / 2

end

end A276600.P17999792087586556891

namespace A276600

/-- `(A076293(n+1)-A076294(n+1))/2` -/
def P17999792087586556891.Spec : Prop :=
  ∀ n, P17999792087586556891.a n = (A276600 (n + 1) : ℚ)

end A276600

/-! ## A276600.P12542872831118145312

`sqrt(∩[n², A055999(n)])`
-/

namespace A276600.P12542872831118145312
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055999 n

open Classical in
def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n : ℝ)

end

end A276600.P12542872831118145312

namespace A276600

/-- `sqrt(∩[n², A055999(n)])` -/
def P12542872831118145312.Spec : Prop :=
  ∀ n, P12542872831118145312.a n = (A276600 (n + 1) : ℝ)

end A276600

/-!
# A276601: Values of k such that k^2 + 9 is a triangular number (A000217).

The programs for A276601, the canonical program `A276601.P10375617308700922939` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A276601 has offset 1).

The definition of A276601 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A276601.P10785506136974304003

`ogf((1+6x+6x^2+x^3)/(1-6x^2+x^4))`
-/

namespace A276601.P10785506136974304003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 6, 6, 1] [1, 0, -6, 0, 1] n

end

end A276601.P10785506136974304003

namespace A276601

/-- `ogf((1+6x+6x^2+x^3)/(1-6x^2+x^4))` -/
def P10785506136974304003.Spec : Prop :=
  ∀ n, P10785506136974304003.a n = A276601 (n + 1)

end A276601

/-! ## A276601.P10375617308700922939

`6*a(n-2)-a(n-4)` with `a(0)=1, a(1)=6, a(2)=12, a(3)=37`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A276601

/-- `6*a(n-2)-a(n-4)` -/
def P10375617308700922939.Spec : Prop :=
  ∀ n, P10375617308700922939.a n = A276601 (n + 1)

theorem P10375617308700922939.correct : P10375617308700922939.Spec := by
  intro n
  simp only [A276601, Nat.add_sub_cancel]

end A276601

/-! ## A276601.P11239712201153736057

`A154141(n+1)-A216134(n)`
-/

namespace A276601.P11239712201153736057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154141 (n + 1) - A216134 n

end

end A276601.P11239712201153736057

namespace A276601

/-- `A154141(n+1)-A216134(n)` -/
def P11239712201153736057.Spec : Prop :=
  ∀ n, P11239712201153736057.a n = A276601 (n + 1)

end A276601

/-! ## A276601.P2296350656599959434

`A276599(n+1)+Δ[A079496(n)]`
-/

namespace A276601.P2296350656599959434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079496 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276599 (n + 1) + (f1 (n + 1) - f1 n)

end

end A276601.P2296350656599959434

namespace A276601

/-- `A276599(n+1)+Δ[A079496(n)]` -/
def P2296350656599959434.Spec : Prop :=
  ∀ n, P2296350656599959434.a n = A276601 (n + 1)

end A276601

/-! ## A276601.P10934019257016056950

`A077446(n+1)+A001109(A110654(n))`
-/

namespace A276601.P10934019257016056950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077446 (n + 1) + A001109 (A110654 n).toNat

end

end A276601.P10934019257016056950

namespace A276601

/-- `A077446(n+1)+A001109(A110654(n))` -/
def P10934019257016056950.Spec : Prop :=
  ∀ n, P10934019257016056950.a n = A276601 (n + 1)

end A276601

/-! ## A276601.P6552659680257927943

`A077446(n+1)+A006451(n)-A216134(n)`
-/

namespace A276601.P6552659680257927943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077446 (n + 1) + (A006451 n - A216134 n)

end

end A276601.P6552659680257927943

namespace A276601

/-- `A077446(n+1)+A006451(n)-A216134(n)` -/
def P6552659680257927943.Spec : Prop :=
  ∀ n, P6552659680257927943.a n = A276601 (n + 1)

end A276601

/-! ## A276601.P11461386788479442463

`A077446(n+1)+A276599(n+1)-A077442(n)`
-/

namespace A276601.P11461386788479442463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077446 (n + 1) + (A276599 (n + 1) - A077442 n)

end

end A276601.P11461386788479442463

namespace A276601

/-- `A077446(n+1)+A276599(n+1)-A077442(n)` -/
def P11461386788479442463.Spec : Prop :=
  ∀ n, P11461386788479442463.a n = A276601 (n + 1)

end A276601

/-! ## A276601.P7105915909678818972

`A276599(n+1)+A276599(n+1)-A077241(n)`
-/

namespace A276601.P7105915909678818972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276599 (n + 1) + (A276599 (n + 1) - A077241 n)

end

end A276601.P7105915909678818972

namespace A276601

/-- `A276599(n+1)+A276599(n+1)-A077241(n)` -/
def P7105915909678818972.Spec : Prop :=
  ∀ n, P7105915909678818972.a n = A276601 (n + 1)

end A276601

/-! ## A276601.P13007635533075797837

`A133326(n+1)-A077241(n)`
-/

namespace A276601.P13007635533075797837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133326 (n + 1) - A077241 n

end

end A276601.P13007635533075797837

namespace A276601

/-- `A133326(n+1)-A077241(n)` -/
def P13007635533075797837.Spec : Prop :=
  ∀ n, P13007635533075797837.a n = A276601 (n + 1)

end A276601

/-! ## A276601.P15772518234205099218

`2*A276599(n+1)-A077241(n)`
-/

namespace A276601.P15772518234205099218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A276599 (n + 1) - A077241 n

end

end A276601.P15772518234205099218

namespace A276601

/-- `2*A276599(n+1)-A077241(n)` -/
def P15772518234205099218.Spec : Prop :=
  ∀ n, P15772518234205099218.a n = A276601 (n + 1)

end A276601

/-! ## A276601.P14955548288183770041

`2*A077446(n+1)-A276599(n+1)`
-/

namespace A276601.P14955548288183770041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A077446 (n + 1) - A276599 (n + 1)

end

end A276601.P14955548288183770041

namespace A276601

/-- `2*A077446(n+1)-A276599(n+1)` -/
def P14955548288183770041.Spec : Prop :=
  ∀ n, P14955548288183770041.a n = A276601 (n + 1)

end A276601

/-! ## A276601.P16381686899865716956

`A077442(n+1)-(A006452(n)+A000129(n+1))`
-/

namespace A276601.P16381686899865716956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077442 (n + 1) - (A006452 n + A000129 (n + 1))

end

end A276601.P16381686899865716956

namespace A276601

/-- `A077442(n+1)-(A006452(n)+A000129(n+1))` -/
def P16381686899865716956.Spec : Prop :=
  ∀ n, P16381686899865716956.a n = A276601 (n + 1)

end A276601

/-!
# A276602: Values of k such that k^2 + 10 is a triangular number (A000217).

The programs for A276602, the canonical program `A276602.P13964139942716156229` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A276602 has offset 1).

The definition of A276602 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A276602.P17924269386674908840

`ogf(9x/(1-6x+x^2))`
-/

namespace A276602.P17924269386674908840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 9] [1, -6, 1] n

end

end A276602.P17924269386674908840

namespace A276602

/-- `ogf(9x/(1-6x+x^2))` -/
def P17924269386674908840.Spec : Prop :=
  ∀ n, P17924269386674908840.a n = A276602 (n + 1)

end A276602

/-! ## A276602.P13964139942716156229

`6*a(n-1)-a(n-2)` with `a(0)=0, a(1)=9`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A276602

/-- `6*a(n-1)-a(n-2)` -/
def P13964139942716156229.Spec : Prop :=
  ∀ n, P13964139942716156229.a n = A276602 (n + 1)

theorem P13964139942716156229.correct : P13964139942716156229.Spec := by
  intro n
  simp only [A276602, Nat.add_sub_cancel]

end A276602

/-! ## A276602.P11804162658772596248

`9*A001109(n)`
-/

namespace A276602.P11804162658772596248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * A001109 n

end

end A276602.P11804162658772596248

namespace A276602

/-- `9*A001109(n)` -/
def P11804162658772596248.Spec : Prop :=
  ∀ n, P11804162658772596248.a n = A276602 (n + 1)

end A276602

/-! ## A276602.P5928746916638518037

`9/2*A000129(2*n)`
-/

namespace A276602.P5928746916638518037
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (9 : ℚ) / 2 * (A000129 (2 * n) : ℚ)

end

end A276602.P5928746916638518037

namespace A276602

/-- `9/2*A000129(2*n)` -/
def P5928746916638518037.Spec : Prop :=
  ∀ n, P5928746916638518037.a n = (A276602 (n + 1) : ℚ)

end A276602

/-! ## A276602.P3106835931472220810

`3*A106328(n+1)`
-/

namespace A276602.P3106835931472220810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A106328 (n + 1)

end

end A276602.P3106835931472220810

namespace A276602

/-- `3*A106328(n+1)` -/
def P3106835931472220810.Spec : Prop :=
  ∀ n, P3106835931472220810.a n = A276602 (n + 1)

end A276602

/-! ## A276602.P9673802902128416718

`3/2*A075848(n)`
-/

namespace A276602.P9673802902128416718
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) / 2 * (A075848 n : ℚ)

end

end A276602.P9673802902128416718

namespace A276602

/-- `3/2*A075848(n)` -/
def P9673802902128416718.Spec : Prop :=
  ∀ n, P9673802902128416718.a n = (A276602 (n + 1) : ℚ)

end A276602

/-! ## A276602.P17329947493239367324

`9/2*A001542(n)`
-/

namespace A276602.P17329947493239367324
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (9 : ℚ) / 2 * (A001542 n : ℚ)

end

end A276602.P17329947493239367324

namespace A276602

/-- `9/2*A001542(n)` -/
def P17329947493239367324.Spec : Prop :=
  ∀ n, P17329947493239367324.a n = (A276602 (n + 1) : ℚ)

end A276602

/-! ## A276602.P1068713838277739221

`9/8*A081554(n)`
-/

namespace A276602.P1068713838277739221
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (9 : ℚ) / 8 * (A081554 n : ℚ)

end

end A276602.P1068713838277739221

namespace A276602

/-- `9/8*A081554(n)` -/
def P1068713838277739221.Spec : Prop :=
  ∀ n, P1068713838277739221.a n = (A276602 (n + 1) : ℚ)

end A276602

/-! ## A276602.P3602026523121154190

`3*A301318(3*n+1)`
-/

namespace A276602.P3602026523121154190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A301318 (3 * n + 1)

end

end A276602.P3602026523121154190

namespace A276602

/-- `3*A301318(3*n+1)` -/
def P3602026523121154190.Spec : Prop :=
  ∀ n, P3602026523121154190.a n = A276602 (n + 1)

end A276602

/-! ## A276602.P8202345012529079596

`9*A105635(A004273(n))`
-/

namespace A276602.P8202345012529079596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * A105635 (A004273 n).toNat

end

end A276602.P8202345012529079596

namespace A276602

/-- `9*A105635(A004273(n))` -/
def P8202345012529079596.Spec : Prop :=
  ∀ n, P8202345012529079596.a n = A276602 (n + 1)

end A276602

/-! ## A276602.P13862170410646178073

`A081554(n)+A001109(n)`
-/

namespace A276602.P13862170410646178073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081554 n + A001109 n

end

end A276602.P13862170410646178073

namespace A276602

/-- `A081554(n)+A001109(n)` -/
def P13862170410646178073.Spec : Prop :=
  ∀ n, P13862170410646178073.a n = A276602 (n + 1)

end A276602

/-! ## A276602.P10538287096329004335

`A054490(n)-A038725(n)`
-/

namespace A276602.P10538287096329004335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054490 n - A038725 n

end

end A276602.P10538287096329004335

namespace A276602

/-- `A054490(n)-A038725(n)` -/
def P10538287096329004335.Spec : Prop :=
  ∀ n, P10538287096329004335.a n = A276602 (n + 1)

end A276602

/-! ## A276602.P906014828581860695

`A106328(n+1)+A075848(n)`
-/

namespace A276602.P906014828581860695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106328 (n + 1) + A075848 n

end

end A276602.P906014828581860695

namespace A276602

/-- `A106328(n+1)+A075848(n)` -/
def P906014828581860695.Spec : Prop :=
  ∀ n, P906014828581860695.a n = A276602 (n + 1)

end A276602

/-! ## A276602.P11282973145360232811

`A164541(n)-A001109(n+1)`
-/

namespace A276602.P11282973145360232811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164541 n - A001109 (n + 1)

end

end A276602.P11282973145360232811

namespace A276602

/-- `A164541(n)-A001109(n+1)` -/
def P11282973145360232811.Spec : Prop :=
  ∀ n, P11282973145360232811.a n = A276602 (n + 1)

end A276602

/-! ## A276602.P655026295903288667

`A135532(2*n)+A038723(n)`
-/

namespace A276602.P655026295903288667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135532 (2 * n) + A038723 n

end

end A276602.P655026295903288667

namespace A276602

/-- `A135532(2*n)+A038723(n)` -/
def P655026295903288667.Spec : Prop :=
  ∀ n, P655026295903288667.a n = A276602 (n + 1)

end A276602

/-! ## A276602.P1567012863423076657

`A054490(n)-A006452(2*n)`
-/

namespace A276602.P1567012863423076657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054490 n - A006452 (2 * n)

end

end A276602.P1567012863423076657

namespace A276602

/-- `A054490(n)-A006452(2*n)` -/
def P1567012863423076657.Spec : Prop :=
  ∀ n, P1567012863423076657.a n = A276602 (n + 1)

end A276602

/-! ## A276602.P12562822431450872417

`A275794(n)-2*A001541(n)`
-/

namespace A276602.P12562822431450872417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275794 n - 2 * A001541 n

end

end A276602.P12562822431450872417

namespace A276602

/-- `A275794(n)-2*A001541(n)` -/
def P12562822431450872417.Spec : Prop :=
  ∀ n, P12562822431450872417.a n = A276602 (n + 1)

end A276602

/-! ## A276602.P13097171179065609906

`9*A000129(n)*A001333(n)`
-/

namespace A276602.P13097171179065609906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * (A000129 n * A001333 n)

end

end A276602.P13097171179065609906

namespace A276602

/-- `9*A000129(n)*A001333(n)` -/
def P13097171179065609906.Spec : Prop :=
  ∀ n, P13097171179065609906.a n = A276602 (n + 1)

end A276602

/-! ## A276602.P10565216369824776185

`A077446(2*n+1)-A038725(n)`
-/

namespace A276602.P10565216369824776185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077446 (2 * n + 1) - A038725 n

end

end A276602.P10565216369824776185

namespace A276602

/-- `A077446(2*n+1)-A038725(n)` -/
def P10565216369824776185.Spec : Prop :=
  ∀ n, P10565216369824776185.a n = A276602 (n + 1)

end A276602

/-! ## A276602.P18164144645976855324

`A048655(2*n)-A006452(2*n)`
-/

namespace A276602.P18164144645976855324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048655 (2 * n) - A006452 (2 * n)

end

end A276602.P18164144645976855324

namespace A276602

/-- `A048655(2*n)-A006452(2*n)` -/
def P18164144645976855324.Spec : Prop :=
  ∀ n, P18164144645976855324.a n = A276602 (n + 1)

end A276602

/-!
# A276603: The infinite trunk of ternary beanstalk, terms divided by 2: a(n) = A276623(n) / 2.

The programs for A276603, there is no canonical definition to state claims against.
-/

/-! ## A276603.P10912401155727607598

`A276623(n)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A276603.P10912401155727607598
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A276623 n : ℚ) / 2

end

end A276603.P10912401155727607598

/-! ## A276603.P13842166247741537230

`∑[A276605(n)]`
-/

namespace A276603.P13842166247741537230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276605 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A276603.P13842166247741537230

/-! ## A276603.P5947261804653251981

`∑[A276604(n)/2]`
-/

namespace A276603.P5947261804653251981
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A276604 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A276603.P5947261804653251981

/-! ## A276603.P13609293000487728371

`A276624(A276622(n))/2`
-/

namespace A276603.P13609293000487728371
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A276624 (A276622 n).toNat : ℚ) / 2

end

end A276603.P13609293000487728371

/-! ## A276603.P11108055138026669010

`A001281(A276623(n))`
-/

namespace A276603.P11108055138026669010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A276623 n).toNat

end

end A276603.P11108055138026669010

/-! ## A276603.P7657198685645212329

`A054861(A276623(n+1))`
-/

namespace A276603.P7657198685645212329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054861 (A276623 (n + 1)).toNat

end

end A276603.P7657198685645212329

/-! ## A276603.P9256556710787717999

`A054861(∑[A276604(n+1)])`
-/

namespace A276603.P9256556710787717999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276604 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054861 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A276603.P9256556710787717999

/-! ## A276603.P11747184821183209666

`A054861(A276624(A276622(n+1)))`
-/

namespace A276603.P11747184821183209666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054861 (A276624 (A276622 (n + 1)).toNat).toNat

end

end A276603.P11747184821183209666

/-!
# A276604: After a(0)=0, the first differences of A276623.

The programs for A276604, there is no canonical definition to state claims against.
-/

/-! ## A276604.P5153921453107701519

`A053735(A276623(n))`
-/

namespace A276604.P5153921453107701519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053735 (A276623 n).toNat

end

end A276604.P5153921453107701519

/-! ## A276604.P16315765689454701382

`2*A276605(n)`
-/

namespace A276604.P16315765689454701382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A276605 n

end

end A276604.P16315765689454701382

/-! ## A276604.P13187607899276652815

`A001414(2^A276605(n))`
-/

namespace A276604.P13187607899276652815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A276605 n : ℤ))).toNat

end

end A276604.P13187607899276652815

/-! ## A276604.P5966289483429620403

`2*A089643(A276603(n))`
-/

namespace A276604.P5966289483429620403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A089643 (A276603 n).toNat

end

end A276604.P5966289483429620403

/-! ## A276604.P10418254064746511195

`A053735(2*A276603(n))`
-/

namespace A276604.P10418254064746511195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053735 (2 * A276603 n).toNat

end

end A276604.P10418254064746511195

/-! ## A276604.P14376512991810289860

`A053735(A276624(A276622(n)))`
-/

namespace A276604.P14376512991810289860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053735 (A276624 (A276622 n).toNat).toNat

end

end A276604.P14376512991810289860

/-! ## A276604.P9061600467358795629

`A053735(A276603(n)+A276603(n))`
-/

namespace A276604.P9061600467358795629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053735 (A276603 n + A276603 n).toNat

end

end A276604.P9061600467358795629

/-! ## A276604.P13421541217163272301

`2*(A276603(n)-A054861(A276623(n)))`
-/

namespace A276604.P13421541217163272301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A276603 n - A054861 (A276623 n).toNat)

end

end A276604.P13421541217163272301

/-! ## A276604.P2773222971335090252

`A053735(A276624(A261231(A276624(n))))`
-/

namespace A276604.P2773222971335090252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053735 (A276624 (A261231 (A276624 n).toNat).toNat).toNat

end

end A276604.P2773222971335090252

/-!
# A276605: After a(0)=0, the first differences of A276603.

The programs for A276605, there is no canonical definition to state claims against.
-/

/-! ## A276605.P16096221260232841869

`A276604(n)/2`
-/

namespace A276605.P16096221260232841869
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A276604 n : ℚ) / 2

end

end A276605.P16096221260232841869

/-! ## A276605.P706006436991005977

`A001281(A276604(n))`
-/

namespace A276605.P706006436991005977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A276604 n).toNat

end

end A276605.P706006436991005977

/-! ## A276605.P13474785446003442057

`A089643(A276603(n))`
-/

namespace A276605.P13474785446003442057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089643 (A276603 n).toNat

end

end A276605.P13474785446003442057

/-! ## A276605.P5149113491644282096

`A053735(A276623(n))/2`
-/

namespace A276605.P5149113491644282096
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053735 (A276623 n).toNat : ℚ) / 2

end

end A276605.P5149113491644282096

/-! ## A276605.P7265185619592827728

`A053735(2*A276603(n))/2`
-/

namespace A276605.P7265185619592827728
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053735 (2 * A276603 n).toNat : ℚ) / 2

end

end A276605.P7265185619592827728

/-! ## A276605.P18204218497513555697

`A276603(n)-A054861(A276623(n))`
-/

namespace A276605.P18204218497513555697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276603 n - A054861 (A276623 n).toNat

end

end A276605.P18204218497513555697

/-! ## A276605.P17092417766043899113

`A276603(n)-A054861(2*A276603(n))`
-/

namespace A276605.P17092417766043899113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276603 n - A054861 (2 * A276603 n).toNat

end

end A276605.P17092417766043899113

/-! ## A276605.P852171336134370827

`Δ[A054861(A276623(n))]`
-/

namespace A276605.P852171336134370827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054861 (A276623 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A276605.P852171336134370827

/-! ## A276605.P17876647207328753098

`A089643(A054861(∑[A276604(n+1)]))`
-/

namespace A276605.P17876647207328753098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276604 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089643 (A054861 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A276605.P17876647207328753098

/-!
# A276606: First differences of postludic numbers: a(n) = A254100(1+n) - A254100(n).

The programs for A276606, there is no canonical definition to state claims against.
-/

/-! ## A276606.P6484298550165023223

`A254100(n+2)-A254100(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A276606.P6484298550165023223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254100 (n + 2) - A254100 (n + 1)

end

end A276606.P6484298550165023223

/-! ## A276606.P18325549955159882184

`A254100(1+n+1)-A254100(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A276606.P18325549955159882184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254100 (1 + (n + 1)) - A254100 (n + 1)

end

end A276606.P18325549955159882184

/-! ## A276606.P8692289709094843039

`A260723(n+2)+A276607(n+1)`
-/

namespace A276606.P8692289709094843039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260723 (n + 2) + A276607 (n + 1)

end

end A276606.P8692289709094843039

/-! ## A276606.P1663455362772693661

`Δ[A254100(n+1)]`
-/

namespace A276606.P1663455362772693661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254100 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A276606.P1663455362772693661

/-! ## A276606.P3674116667902350946

`Δ[record[A254100(A242112(n))]]`
-/

namespace A276606.P3674116667902350946
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254100 (A242112 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A276606.P3674116667902350946

/-! ## A276606.P8722595618509884220

`A276607(n+1)+A260723(n+2)`
-/

namespace A276606.P8722595618509884220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276607 (n + 1) + A260723 (n + 2)

end

end A276606.P8722595618509884220

/-! ## A276606.P16157544570859129858

`A260723(n+2)+2*A276608(n+1)`
-/

namespace A276606.P16157544570859129858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260723 (n + 2) + 2 * A276608 (n + 1)

end

end A276606.P16157544570859129858

/-! ## A276606.P7720592597457328539

`Δ[A256482(n+1)+A003309(n+2)]`
-/

namespace A276606.P7720592597457328539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256482 (n + 1) + A003309 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A276606.P7720592597457328539

/-! ## A276606.P10894026533218915906

`Δ[A269379(a(n-1))]` with `a(0)=4`
-/

namespace A276606.P10894026533218915906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [4] fun n f1 =>
  A269379 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A276606.P10894026533218915906

/-! ## A276606.P1450907174378804028

`Δ[A269382(a(n-1))]` with `a(0)=3`
-/

namespace A276606.P1450907174378804028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f1 =>
  A269382 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A276606.P1450907174378804028

/-! ## A276606.P2731051682188913480

`A276610(∑[n+2])`
-/

namespace A276606.P2731051682188913480
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276610 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A276606.P2731051682188913480

/-! ## A276606.P6427730349618033217

`Δ[A255127(C(n+3, 2))]`
-/

namespace A276606.P6427730349618033217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255127 (Nat.choose (n + 3) 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A276606.P6427730349618033217

/-! ## A276606.P13814451948704930601

`Δ[A255127(A253145(n+1))]`
-/

namespace A276606.P13814451948704930601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255127 (A253145 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A276606.P13814451948704930601

/-! ## A276606.P14013968129745396255

`Δ[A255127(A000217(n+2))]`
-/

namespace A276606.P14013968129745396255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255127 (A000217 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A276606.P14013968129745396255

/-! ## A276606.P15656019458903089556

`Δ[A255129(A152950(n+2))]`
-/

namespace A276606.P15656019458903089556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255129 (A152950 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A276606.P15656019458903089556

/-! ## A276606.P8746489678317266003

`Δ[record[A254100(A193592(n))]]`
-/

namespace A276606.P8746489678317266003
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254100 (A193592 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A276606.P8746489678317266003

/-! ## A276606.P894439921329583498

`Δ[eq[2, A260739(n+1)]]`
-/

namespace A276606.P894439921329583498
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260739 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A276606.P894439921329583498

/-!
# A276607: Column 1 of A276620: a(n) = A276606(n) - A260723(1+n).

The programs for A276607, there is no canonical definition to state claims against.
-/

/-! ## A276607.P10786491407600466373

`A276606(n+1)-A260723(n+2)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A276607.P10786491407600466373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276606 (n + 1) - A260723 (n + 2)

end

end A276607.P10786491407600466373

/-! ## A276607.P1694035687497587356

`A276606(n+1)-A260723(1+n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A276607.P1694035687497587356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276606 (n + 1) - A260723 (1 + (n + 1))

end

end A276607.P1694035687497587356

/-! ## A276607.P14004969087135860202

`2*A276608(n+1)`
-/

namespace A276607.P14004969087135860202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A276608 (n + 1)

end

end A276607.P14004969087135860202

/-! ## A276607.P2615083035739674829

`A004277(A276608(n+1))`
-/

namespace A276607.P2615083035739674829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A276608 (n + 1)).toNat

end

end A276607.P2615083035739674829

/-! ## A276607.P12826621716779893056

`Δ[A254100(n+1)-A003309(n+2)]`
-/

namespace A276607.P12826621716779893056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254100 (n + 1) - A003309 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A276607.P12826621716779893056

/-! ## A276607.P8596859679117029277

`A276608(A000027(n+1))+A276608(n+1)`
-/

namespace A276607.P8596859679117029277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276608 (A000027 (n + 1)).toNat + A276608 (n + 1)

end

end A276607.P8596859679117029277

/-! ## A276607.P18328360171087927675

`A254100(n+2)-(A260723(n+2)+A254100(n+1))`
-/

namespace A276607.P18328360171087927675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254100 (n + 2) - (A260723 (n + 2) + A254100 (n + 1))

end

end A276607.P18328360171087927675

/-! ## A276607.P14412561298431558652

`Δ[A256482(n+1)]`
-/

namespace A276607.P14412561298431558652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256482 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A276607.P14412561298431558652

/-! ## A276607.P861163387805419988

`Δ[2*A256483(n+1)]`
-/

namespace A276607.P861163387805419988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A256483 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A276607.P861163387805419988

/-! ## A276607.P3599211953486301074

`A256482(n+2)-A256482(n+1)`
-/

namespace A276607.P3599211953486301074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256482 (n + 2) - A256482 (n + 1)

end

end A276607.P3599211953486301074

/-! ## A276607.P10500622149029485734

`A276620(∑[n+1])`
-/

namespace A276607.P10500622149029485734
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276620 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A276607.P10500622149029485734

/-! ## A276607.P5567518881221227152

`Δ[A257257(∑[n+1])]`
-/

namespace A276607.P5567518881221227152
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257257 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A276607.P5567518881221227152

/-! ## A276607.P9129858647660236025

`Δ[2*A257258(A000217(n+1))]`
-/

namespace A276607.P9129858647660236025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A257258 (A000217 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A276607.P9129858647660236025

/-! ## A276607.P17774536800903890666

`A276619(∑[n]+1)`
-/

namespace A276607.P17774536800903890666
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276619 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A276607.P17774536800903890666

/-! ## A276607.P10058125749138580444

`A271864(A271863(A276619(A000124(n))))`
-/

namespace A276607.P10058125749138580444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271864 (A271863 (A276619 (A000124 n).toNat).toNat).toNat

end

end A276607.P10058125749138580444

/-!
# A276608: a(n) = A276607(n) / 2.

The programs for A276608, there is no canonical definition to state claims against.
-/

/-! ## A276608.P12987177430510061441

`A276607(n+1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A276608.P12987177430510061441
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A276607 (n + 1) : ℚ) / 2

end

end A276608.P12987177430510061441

/-! ## A276608.P17620625694510416864

`A001281(A276607(n+1))`
-/

namespace A276608.P17620625694510416864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A276607 (n + 1)).toNat

end

end A276608.P17620625694510416864

/-! ## A276608.P13643259970369815758

`A026741(Δ[A276607(n)+a(n-1)])` with `a(0)=1`
-/

namespace A276608.P13643259970369815758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A276607 n + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (f1 (n + 1) - f1 n).toNat

end

end A276608.P13643259970369815758

/-! ## A276608.P625372923753269760

`A302032(Δ[A276607(n)+a(n-1)])` with `a(0)=1`
-/

namespace A276608.P625372923753269760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A276607 n + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302032 (f1 (n + 1) - f1 n).toNat

end

end A276608.P625372923753269760

/-! ## A276608.P527844725950431774

`Δ[(A254100(n+1)-A003309(n+2))/2]`
-/

namespace A276608.P527844725950431774
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A254100 (n + 1) - A003309 (n + 2) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A276608.P527844725950431774

/-! ## A276608.P13441958746026880268

`A260739(A276606(n+1)-A260723(n+2))`
-/

namespace A276608.P13441958746026880268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260739 (A276606 (n + 1) - A260723 (n + 2)).toNat

end

end A276608.P13441958746026880268

/-! ## A276608.P13852202218399869868

`Δ[A256483(n+1)]`
-/

namespace A276608.P13852202218399869868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256483 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A276608.P13852202218399869868

/-! ## A276608.P9763250551639397240

`Δ[A256482(n+1)/2]`
-/

namespace A276608.P9763250551639397240
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A256482 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A276608.P9763250551639397240

/-! ## A276608.P12763266159057907894

`A004525(Δ[A256482(n+1)])`
-/

namespace A276608.P12763266159057907894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256482 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (f1 (n + 1) - f1 n).toNat

end

end A276608.P12763266159057907894

/-! ## A276608.P13653294800981519833

`A256483(n+2)-A256483(n+1)`
-/

namespace A276608.P13653294800981519833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256483 (n + 2) - A256483 (n + 1)

end

end A276608.P13653294800981519833

/-! ## A276608.P16652199455609475631

`(A256482(n+2)-A256482(n+1))/2`
-/

namespace A276608.P16652199455609475631
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A256482 (n + 2) - A256482 (n + 1) : ℚ) / 2

end

end A276608.P16652199455609475631

/-! ## A276608.P4141574316846867140

`A276620(∑[n+1])/2`
-/

namespace A276608.P4141574316846867140
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A276620 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / 2

end

end A276608.P4141574316846867140

/-! ## A276608.P17573484319794105933

`Δ[A257258(∑[n+1])]`
-/

namespace A276608.P17573484319794105933
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257258 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A276608.P17573484319794105933

/-! ## A276608.P2649528121052914758

`A276619(A000124(n))/2`
-/

namespace A276608.P2649528121052914758
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A276619 (A000124 n).toNat : ℚ) / 2

end

end A276608.P2649528121052914758

/-!
# A276609: Transpose of square array A276610.

The programs for A276609, there is no canonical definition to state claims against.
-/

/-! ## A276609.P13299131693654659186

`A276610(A038722(n+1))`
-/

namespace A276609.P13299131693654659186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276610 (A038722 (n + 1)).toNat

end

end A276609.P13299131693654659186

/-! ## A276609.P890590228363901569

`A276610(A061579(n)+1)`
-/

namespace A276609.P890590228363901569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276610 (A061579 n + 1).toNat

end

end A276609.P890590228363901569

/-! ## A276609.P11500724963609271517

`A276610(∑[A198954(n)]-n)`
-/

namespace A276609.P11500724963609271517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198954 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276610 (∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)).toNat

end

end A276609.P11500724963609271517

/-! ## A276609.P7400468341707603342

`A276610(A114327(n)+1+n)`
-/

namespace A276609.P7400468341707603342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276610 (A114327 n + 1 + (n : ℤ)).toNat

end

end A276609.P7400468341707603342

/-! ## A276609.P17969980934200942822

`A276610(A093995(n+1)-n)`
-/

namespace A276609.P17969980934200942822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276610 (A093995 (n + 1) - (n : ℤ)).toNat

end

end A276609.P17969980934200942822

/-! ## A276609.P13949754342174765321

`A276610(n+2-A127948(n))`
-/

namespace A276609.P13949754342174765321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276610 ((n + 2 : ℤ) - A127948 n).toNat

end

end A276609.P13949754342174765321

/-! ## A276609.P13861554439924898315

`A276610(A002024(n+1)²-n)`
-/

namespace A276609.P13861554439924898315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276610 (A002024 (n + 1) ^ 2 - (n : ℤ)).toNat

end

end A276609.P13861554439924898315

/-! ## A276609.P1879331291812391916

`A276610(A099375(n)+1+n-A002024(n+1))`
-/

namespace A276609.P1879331291812391916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276610 (A099375 n + 1 + (n : ℤ) - A002024 (n + 1)).toNat

end

end A276609.P1879331291812391916

/-! ## A276609.P16374443102995266921

`A276610(A004736(n+1)+n-A002260(n+1)+1)`
-/

namespace A276609.P16374443102995266921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276610 (A004736 (n + 1) + ((n : ℤ) - A002260 (n + 1)) + 1).toNat

end

end A276609.P16374443102995266921

/-! ## A276609.P8816812339243850731

`A269379(A255129(n+2))-A255129(n+2)`
-/

namespace A276609.P8816812339243850731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269379 (A255129 (n + 2)).toNat - A255129 (n + 2)

end

end A276609.P8816812339243850731

/-!
# A276610: Square array A(row,col) = A255127(row+1,col) - A255127(row,col): the first differences of each column of Ludic array, read by descending antidiagonals as A(1,1), A(1,2), A(2,1), A(1,3), A(2,2), A(3,1), ...

The programs for A276610, there is no canonical definition to state claims against.
-/

/-! ## A276610.P14835504458093587425

`A276609(A038722(n+1))`
-/

namespace A276610.P14835504458093587425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276609 (A038722 (n + 1)).toNat

end

end A276610.P14835504458093587425

/-! ## A276610.P13135718159432038120

`A276609(A061579(n)+1)`
-/

namespace A276610.P13135718159432038120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276609 (A061579 n + 1).toNat

end

end A276610.P13135718159432038120

/-! ## A276610.P13785198517517871013

`A276609(A114327(n)+1+n)`
-/

namespace A276610.P13785198517517871013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276609 (A114327 n + 1 + (n : ℤ)).toNat

end

end A276610.P13785198517517871013

/-! ## A276610.P15275539605429319145

`A276609(A093995(n+1)-n)`
-/

namespace A276610.P15275539605429319145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276609 (A093995 (n + 1) - (n : ℤ)).toNat

end

end A276610.P15275539605429319145

/-! ## A276610.P8434480264167554474

`A276609(n+2-A127948(n))`
-/

namespace A276610.P8434480264167554474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276609 ((n + 2 : ℤ) - A127948 n).toNat

end

end A276610.P8434480264167554474

/-! ## A276610.P7590952562626534601

`A276609(A002024(n+1)²-n)`
-/

namespace A276610.P7590952562626534601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276609 (A002024 (n + 1) ^ 2 - (n : ℤ)).toNat

end

end A276610.P7590952562626534601

/-! ## A276610.P3046506314097610130

`A276609(A127739(n+1)-A002262(n))`
-/

namespace A276610.P3046506314097610130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276609 (A127739 (n + 1) - A002262 n).toNat

end

end A276610.P3046506314097610130

/-! ## A276610.P6675914360218867809

`A276609(A099375(n)+1+n-A002024(n+1))`
-/

namespace A276610.P6675914360218867809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276609 (A099375 n + 1 + (n : ℤ) - A002024 (n + 1)).toNat

end

end A276610.P6675914360218867809

/-! ## A276610.P12801190923601633596

`A276609(A004736(n+1)+n-A002260(n+1)+1)`
-/

namespace A276610.P12801190923601633596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276609 (A004736 (n + 1) + ((n : ℤ) - A002260 (n + 1)) + 1).toNat

end

end A276610.P12801190923601633596

/-! ## A276610.P9934933320456597688

`A269379(A255127(n+2))-A255127(n+2)`
-/

namespace A276610.P9934933320456597688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269379 (A255127 (n + 2)).toNat - A255127 (n + 2)

end

end A276610.P9934933320456597688

/-!
# A276611: After a(0)=0, each n occurs A261229(n) times.

The programs for A276611, the canonical program `A276611.P18078078065825971557` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A276611 has offset 0).

The definition of A276611 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A276611.P18078078065825971557

`∑[char[A261227(n+1)]]`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A276611

/-- `∑[char[A261227(n+1)]]` -/
def P18078078065825971557.Spec : Prop :=
  ∀ n, (P18078078065825971557.a n : ℤ) = A276611 n

theorem P18078078065825971557.correct : P18078078065825971557.Spec := by
  intro n
  simp only [A276611]

end A276611

/-! ## A276611.P17936481864018137870

`∑[char[A261227(n)]]-1`
-/

namespace A276611.P17936481864018137870
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261227 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A276611.P17936481864018137870

namespace A276611

/-- `∑[char[A261227(n)]]-1` -/
def P17936481864018137870.Spec : Prop :=
  ∀ n, P17936481864018137870.a n = A276611 n

end A276611

/-! ## A276611.P1879003458386743337

`∑[char[A028310(A261227(n))]]`
-/

namespace A276611.P1879003458386743337
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A261227 n).toNat

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A276611.P1879003458386743337

namespace A276611

/-- `∑[char[A028310(A261227(n))]]` -/
def P1879003458386743337.Spec : Prop :=
  ∀ n, (P1879003458386743337.a n : ℤ) = A276611 n

end A276611

/-! ## A276611.P2405666450404663800

`A048766(A276613(n))`
-/

namespace A276611.P2405666450404663800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A276613 n).toNat

end

end A276611.P2405666450404663800

namespace A276611

/-- `A048766(A276613(n))` -/
def P2405666450404663800.Spec : Prop :=
  ∀ n, P2405666450404663800.a n = A276611 n

end A276611

/-! ## A276611.P11783689008871652620

`A048766(∑[A276615(n)])`
-/

namespace A276611.P11783689008871652620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276615 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A276611.P11783689008871652620

namespace A276611

/-- `A048766(∑[A276615(n)])` -/
def P11783689008871652620.Spec : Prop :=
  ∀ n, P11783689008871652620.a n = A276611 n

end A276611

/-! ## A276611.P9695859823687957891

`A048766(A276614(n))`
-/

namespace A276611.P9695859823687957891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A276614 n).toNat

end

end A276611.P9695859823687957891

namespace A276611

/-- `A048766(A276614(n))` -/
def P9695859823687957891.Spec : Prop :=
  ∀ n, P9695859823687957891.a n = A276611 n

end A276611

/-!
# A276612: Simple self-inverse permutation of natural numbers: after a(0)=0, list each block of A261229(n) numbers in reverse order, from A261227(n) to A261228(1+n).

The programs for A276612, there is no canonical definition to state claims against.
-/

/-! ## A276612.P13938450184059896065

`A261226(A276614(n))`
-/

namespace A276612.P13938450184059896065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261226 (A276614 n).toNat

end

end A276612.P13938450184059896065

/-!
# A276613: The infinite trunk of greedy cubes beanstalk: The only infinite sequence such that a(n-1) = a(n) - number of cubes that sum to a(n) with greedy algorithm (A055401).

The programs for A276613, there is no canonical definition to state claims against.
-/

/-! ## A276613.P8624189676293610868

`A276614(A276612(n))`
-/

namespace A276613.P8624189676293610868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276614 (A276612 n).toNat

end

end A276613.P8624189676293610868

/-! ## A276613.P5208919832393835629

`∑[A276615(n)]`
-/

namespace A276613.P5208919832393835629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276615 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A276613.P5208919832393835629

/-! ## A276613.P1630273144657810472

`A276614(A261226(A276614(n)))`
-/

namespace A276613.P1630273144657810472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276614 (A261226 (A276614 n).toNat).toNat

end

end A276613.P1630273144657810472

/-! ## A276613.P8138715383243459257

`record[A261225(A261225(n+1)+A010057(n))]`
-/

namespace A276613.P8138715383243459257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261225 (A261225 (n + 1) + A010057 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A276613.P8138715383243459257

/-! ## A276613.P631467267672859148

`record[A261225(A261225(n)%A026239(n+1))]`
-/

namespace A276613.P631467267672859148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261225 (Int.tmod (A261225 n) (A026239 (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A276613.P631467267672859148

/-! ## A276613.P846378550190476163

`record[A261225(A261225(n))%A268823(n+1)]`
-/

namespace A276613.P846378550190476163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A261225 (A261225 n).toNat) (A268823 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A276613.P846378550190476163

/-!
# A276614: The infinite trunk of greedy cubes beanstalk with reversed subsections.

The programs for A276614, there is no canonical definition to state claims against.
-/

/-! ## A276614.P16444487984172954374

`A276613(A276612(n))`
-/

namespace A276614.P16444487984172954374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276613 (A276612 n).toNat

end

end A276614.P16444487984172954374

/-!
# A276615: After a(0)=0, the first differences of A276613.

The programs for A276615, there is no canonical definition to state claims against.
-/

/-! ## A276615.P1354379604035397913

`A055401(A276613(n))`
-/

namespace A276615.P1354379604035397913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055401 (A276613 n).toNat

end

end A276615.P1354379604035397913

/-! ## A276615.P1366819880350959136

`A055401(A276614(A276612(n)))`
-/

namespace A276615.P1366819880350959136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055401 (A276614 (A276612 n).toNat).toNat

end

end A276615.P1366819880350959136

/-! ## A276615.P4371307601107892404

`A055401(A276614(A261226(A276614(n))))`
-/

namespace A276615.P4371307601107892404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055401 (A276614 (A261226 (A276614 n).toNat).toNat).toNat

end

end A276615.P4371307601107892404

/-! ## A276615.P5034340284951017761

`A276613(n)-A276613(log2(A011782(n)))`
-/

namespace A276615.P5034340284951017761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276613 n - A276613 (SequenceMachineLib.roundAway (Real.logb 2 (A011782 n : ℝ))).toNat

end

end A276615.P5034340284951017761

/-! ## A276615.P3731352890018261156

`Δ[A276613(log2(A011782(n)))]`
-/

namespace A276615.P3731352890018261156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276613 (SequenceMachineLib.roundAway (Real.logb 2 (A011782 n : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A276615.P3731352890018261156

/-!
# A276616: Square array A(n,k) = A276953(n,k)/n!, read by descending antidiagonals as A(1,1), A(1,2), A(2,1), A(1,3), A(2,2), A(3,1), etc.

The programs for A276616, there is no canonical definition to state claims against.
-/

/-! ## A276616.P1945412431352363003

`A276617(A038722(n+1))`
-/

namespace A276616.P1945412431352363003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276617 (A038722 (n + 1)).toNat

end

end A276616.P1945412431352363003

/-! ## A276616.P9807034479029459551

`A276617(A061579(n)+1)`
-/

namespace A276616.P9807034479029459551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276617 (A061579 n + 1).toNat

end

end A276616.P9807034479029459551

/-! ## A276616.P2901917774340576544

`A276617(2-A127948(n)+n)`
-/

namespace A276616.P2901917774340576544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276617 (2 - A127948 n + (n : ℤ)).toNat

end

end A276616.P2901917774340576544

/-! ## A276616.P3330150183026696871

`A276617(2-(A127948(n)-n))`
-/

namespace A276616.P3330150183026696871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276617 (2 - (A127948 n - (n : ℤ))).toNat

end

end A276616.P3330150183026696871

/-! ## A276616.P17926349563363611697

`A276617(A002024(n+1)²-n)`
-/

namespace A276616.P17926349563363611697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276617 (A002024 (n + 1) ^ 2 - (n : ℤ)).toNat

end

end A276616.P17926349563363611697

/-! ## A276616.P12183623029067341894

`A276617(A004736(n+1)+n+1-A002260(n+1))`
-/

namespace A276616.P12183623029067341894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276617 (A004736 (n + 1) + ((n + 1 : ℤ) - A002260 (n + 1))).toNat

end

end A276616.P12183623029067341894

/-! ## A276616.P1022122183070865513

`A276953(n+1)/A166350(n+1)`
-/

namespace A276616.P1022122183070865513
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A276953 (n + 1) : ℚ) / (A166350 (n + 1) : ℚ)

end

end A276616.P1022122183070865513

/-! ## A276616.P4612137489449230364

`A276953(n+1)/A000142(A002260(n+1))`
-/

namespace A276616.P4612137489449230364
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A276953 (n + 1) : ℚ) / (A000142 (A002260 (n + 1)).toNat : ℚ)

end

end A276616.P4612137489449230364

/-!
# A276617: Square array A(n,k) = A276955(n,k)/k!, read by descending antidiagonals as A(1,1), A(1,2), A(2,1), A(1,3), A(2,2), A(3,1), etc.

The programs for A276617, there is no canonical definition to state claims against.
-/

/-! ## A276617.P15372825706563368712

`A276616(∑[char[∑[n]]]²-n)`
-/

namespace A276617.P15372825706563368712
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276616 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A276617.P15372825706563368712

/-! ## A276617.P269123218966674874

`A276616(A038722(n+1))%A167499(n)`
-/

namespace A276617.P269123218966674874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A276616 (A038722 (n + 1)).toNat) (A167499 n)

end

end A276617.P269123218966674874

/-! ## A276617.P6895755490895272467

`A001222(A000040(n+1))*A276616(A038722(n+1))`
-/

namespace A276617.P6895755490895272467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A000040 (n + 1)).toNat * A276616 (A038722 (n + 1)).toNat

end

end A276617.P6895755490895272467

/-! ## A276617.P15697979903686826664

`A276955(n+1)/A004736(n+1)!`
-/

namespace A276617.P15697979903686826664
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A276955 (n + 1) : ℚ) / (Nat.factorial (A004736 (n + 1)).toNat : ℚ)

end

end A276617.P15697979903686826664

/-! ## A276617.P14074623723377762228

`A001222(A158017(n+1))*A276616(A038722(n+1))`
-/

namespace A276617.P14074623723377762228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A158017 (n + 1)).toNat * A276616 (A038722 (n + 1)).toNat

end

end A276617.P14074623723377762228

/-! ## A276617.P16166005421160275871

`A276616(A038722(n+1))-A335520(A007918(n))`
-/

namespace A276617.P16166005421160275871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276616 (A038722 (n + 1)).toNat - A335520 (A007918 n).toNat

end

end A276617.P16166005421160275871

/-!
# A276618: Transpose of table A099884.

The programs for A276618, the canonical program `A276618.P14344532738654526043` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A276618 has offset 0).

The definition of A276618 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1081 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A276618.P15516212744607483685

`A099884(∑[2*n]%comp[∑[n]])`
-/

namespace A276618.P15516212744607483685
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099884 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A276618.P15516212744607483685

namespace A276618

/-- `A099884(∑[2*n]%comp[∑[n]])` -/
def P15516212744607483685.Spec : Prop :=
  ∀ n, P15516212744607483685.a n = A276618 n

end A276618

/-! ## A276618.P18253130540731438192

`A099884(∑[char[∑[n]]]²-n-1)`
-/

namespace A276618.P18253130540731438192
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099884 ((((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) - (n : ℤ) - 1).toNat

end

end A276618.P18253130540731438192

namespace A276618

/-- `A099884(∑[char[∑[n]]]²-n-1)` -/
def P18253130540731438192.Spec : Prop :=
  ∀ n, P18253130540731438192.a n = A276618 n

end A276618

/-! ## A276618.P14344532738654526043

`or(A059268(n), A099884(A061579(n)))`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A276618

/-- `or(A059268(n), A099884(A061579(n)))` -/
def P14344532738654526043.Spec : Prop :=
  ∀ n, P14344532738654526043.a n = A276618 n

theorem P14344532738654526043.correct : P14344532738654526043.Spec := by
  intro n
  simp only [A276618]

end A276618

/-! ## A276618.P861019179764327151

`A099884(A061579(n))+A000007(n+2)`
-/

namespace A276618.P861019179764327151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099884 (A061579 n).toNat + A000007 (n + 2)

end

end A276618.P861019179764327151

namespace A276618

/-- `A099884(A061579(n))+A000007(n+2)` -/
def P861019179764327151.Spec : Prop :=
  ∀ n, P861019179764327151.a n = A276618 n

end A276618

/-! ## A276618.P13926164300986838633

`A054977(n+4)*A099884(A061579(n))`
-/

namespace A276618.P13926164300986838633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 (n + 4) * A099884 (A061579 n).toNat

end

end A276618.P13926164300986838633

namespace A276618

/-- `A054977(n+4)*A099884(A061579(n))` -/
def P13926164300986838633.Spec : Prop :=
  ∀ n, P13926164300986838633.a n = A276618 n

end A276618

/-! ## A276618.P15662424231404160192

`A099884(A061579(n))%A099884(A070087(n+1))`
-/

namespace A276618.P15662424231404160192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A099884 (A061579 n).toNat) (A099884 (A070087 (n + 1)).toNat)

end

end A276618.P15662424231404160192

namespace A276618

/-- `A099884(A061579(n))%A099884(A070087(n+1))` -/
def P15662424231404160192.Spec : Prop :=
  ∀ n, P15662424231404160192.a n = A276618 n

end A276618

/-! ## A276618.P7319678662180520949

`A193231(A099884(n))`
-/

namespace A276618.P7319678662180520949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193231 (A099884 n).toNat

end

end A276618.P7319678662180520949

namespace A276618

/-- `A193231(A099884(n))` -/
def P7319678662180520949.Spec : Prop :=
  ∀ n, P7319678662180520949.a n = A276618 n

end A276618

/-! ## A276618.P16767994275035806671

`filter[A059894(n+1), A336477(#)]`
-/

namespace A276618.P16767994275035806671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059894 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A336477 (f1 j).toNat = 1) n)

end

end A276618.P16767994275035806671

namespace A276618

/-- `filter[A059894(n+1), A336477(#)]` -/
def P16767994275035806671.Spec : Prop :=
  ∀ n, P16767994275035806671.a n = A276618 n

end A276618

/-! ## A276618.P3254173305568928339

`A099884(A061579(n))%A004277(A099884(n))`
-/

namespace A276618.P3254173305568928339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A099884 (A061579 n).toNat) (A004277 (A099884 n).toNat)

end

end A276618.P3254173305568928339

namespace A276618

/-- `A099884(A061579(n))%A004277(A099884(n))` -/
def P3254173305568928339.Spec : Prop :=
  ∀ n, P3254173305568928339.a n = A276618 n

end A276618

/-! ## A276618.P17615865291065740532

`A355810(A130328(n))`
-/

namespace A276618.P17615865291065740532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355810 (A130328 n).toNat

end

end A276618.P17615865291065740532

namespace A276618

/-- `A355810(A130328(n))` -/
def P17615865291065740532.Spec : Prop :=
  ∀ n, P17615865291065740532.a n = A276618 n

end A276618

/-!
# A276619: Transpose of square array A276620.

The programs for A276619, there is no canonical definition to state claims against.
-/

/-! ## A276619.P6061961591574660385

`A276620(∑[2*n]%comp[∑[n]]+1)`
-/

namespace A276619.P6061961591574660385
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276620 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n + 1)

end

end A276619.P6061961591574660385

/-! ## A276619.P15432631427352499853

`A276620(A038722(n+1))`
-/

namespace A276619.P15432631427352499853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276620 (A038722 (n + 1)).toNat

end

end A276619.P15432631427352499853

/-! ## A276619.P15534717257421634430

`A276620(A061579(n)+1)`
-/

namespace A276619.P15534717257421634430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276620 (A061579 n + 1).toNat

end

end A276619.P15534717257421634430

/-! ## A276619.P15302325577364668423

`A276620(A093995(n+1)-n)`
-/

namespace A276619.P15302325577364668423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276620 (A093995 (n + 1) - (n : ℤ)).toNat

end

end A276619.P15302325577364668423

/-! ## A276619.P1765696703785921637

`A276620(A002024(n+1)²-n)`
-/

namespace A276619.P1765696703785921637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276620 (A002024 (n + 1) ^ 2 - (n : ℤ)).toNat

end

end A276619.P1765696703785921637

/-! ## A276619.P15767703806786945883

`A276620(A265129(n+1)-(n+1))`
-/

namespace A276619.P15767703806786945883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276620 (A265129 (n + 1) - (n + 1 : ℤ)).toNat

end

end A276619.P15767703806786945883

/-!
# A276620: Square array A(row,col) = A276610(row,col+1) - A276610(row,col): the first differences of each row of array A276610, read by descending antidiagonals as A(1,1), A(1,2), A(2,1), A(1,3), A(2,2), A(3,1), ...

The programs for A276620, there is no canonical definition to state claims against.
-/

/-! ## A276620.P9914947527034135173

`A276610(comp[∑[n]])-A276610(n+1)`
-/

namespace A276620.P9914947527034135173
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276610 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) - A276610 (n + 1)

end

end A276620.P9914947527034135173

/-! ## A276620.P436489258658021937

`A276619(∑[char[∑[n]]]²-n)`
-/

namespace A276620.P436489258658021937
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276619 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A276620.P436489258658021937

/-! ## A276620.P16218272031707338193

`A276619(A038722(n+1))%A001546(n)`
-/

namespace A276620.P16218272031707338193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A276619 (A038722 (n + 1)).toNat) (A001546 n)

end

end A276620.P16218272031707338193

/-! ## A276620.P2101280345802861640

`abs(A097807(n))*A276619(A038722(n+1))`
-/

namespace A276620.P2101280345802861640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A097807 n| * A276619 (A038722 (n + 1)).toNat

end

end A276620.P2101280345802861640

/-! ## A276620.P14015078078706739057

`xor(A000007(n+2), A276619(A038722(n+1)))`
-/

namespace A276620.P14015078078706739057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000007 (n + 2)) (A276619 (A038722 (n + 1)).toNat)

end

end A276620.P14015078078706739057

/-! ## A276620.P18201620695159750836

`A276619(A038722(n+1))+A008683(4*(n+1))`
-/

namespace A276620.P18201620695159750836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276619 (A038722 (n + 1)).toNat + A008683 (4 * (n + 1))

end

end A276620.P18201620695159750836

/-! ## A276620.P5221138453392460943

`A001222(A078587(n+4))*A276619(A038722(n+1))`
-/

namespace A276620.P5221138453392460943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A078587 (n + 4)).toNat * A276619 (A038722 (n + 1)).toNat

end

end A276620.P5221138453392460943

/-!
# A276621: After a(0)=0, each n occurs A261234(n-1) times.

The programs for A276621, the canonical program `A276621.P8554351487063663393` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A276621 has offset 0).

The definition of A276621 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6251 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A276621.P8554351487063663393

`∑[char[A261232(n)]]`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A276621

/-- `∑[char[A261232(n)]]` -/
def P8554351487063663393.Spec : Prop :=
  ∀ n, (P8554351487063663393.a n : ℤ) = A276621 n

theorem P8554351487063663393.correct : P8554351487063663393.Spec := by
  intro n
  simp only [A276621]

end A276621

/-! ## A276621.P1831273719592507775

`∑[char[A261233(n)+1]]`
-/

namespace A276621.P1831273719592507775
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261233 n + 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A276621.P1831273719592507775

namespace A276621

/-- `∑[char[A261233(n)+1]]` -/
def P1831273719592507775.Spec : Prop :=
  ∀ n, (P1831273719592507775.a n : ℤ) = A276621 n

end A276621

/-! ## A276621.P1469444647767504509

`∑[char[A261231(A000244(n))]]`
-/

namespace A276621.P1469444647767504509
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261231 (A000244 n).toNat

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A276621.P1469444647767504509

namespace A276621

/-- `∑[char[A261231(A000244(n))]]` -/
def P1469444647767504509.Spec : Prop :=
  ∀ n, (P1469444647767504509.a n : ℤ) = A276621 n

end A276621

/-! ## A276621.P15380105596779319015

`∑[char[A261231(A064235(n+1))]]`
-/

namespace A276621.P15380105596779319015
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261231 (A064235 (n + 1)).toNat

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A276621.P15380105596779319015

namespace A276621

/-- `∑[char[A261231(A064235(n+1))]]` -/
def P15380105596779319015.Spec : Prop :=
  ∀ n, (P15380105596779319015.a n : ℤ) = A276621 n

end A276621

/-! ## A276621.P6030642919710969688

`round(log(A276622(A276622(n)+1+n)))`
-/

namespace A276621.P6030642919710969688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.log (A276622 (A276622 n + 1 + (n : ℤ)).toNat : ℝ))

end

end A276621.P6030642919710969688

namespace A276621

/-- `round(log(A276622(A276622(n)+1+n)))` -/
def P6030642919710969688.Spec : Prop :=
  ∀ n, P6030642919710969688.a n = A276621 n

end A276621

/-! ## A276621.P9319938691424829165

`A062153(A276624(n)+A083652(n))`
-/

namespace A276621.P9319938691424829165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062153 (A276624 n + A083652 n).toNat

end

end A276621.P9319938691424829165

namespace A276621

/-- `A062153(A276624(n)+A083652(n))` -/
def P9319938691424829165.Spec : Prop :=
  ∀ n, P9319938691424829165.a n = A276621 n

end A276621

/-! ## A276621.P6601842856411944599

`A062153(A280724(n+1)+A276624(n))`
-/

namespace A276621.P6601842856411944599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062153 (A280724 (n + 1) + A276624 n).toNat

end

end A276621.P6601842856411944599

namespace A276621

/-- `A062153(A280724(n+1)+A276624(n))` -/
def P6601842856411944599.Spec : Prop :=
  ∀ n, P6601842856411944599.a n = A276621 n

end A276621

/-! ## A276621.P14078592434730587555

`A080342(A138980(n+1)-2)`
-/

namespace A276621.P14078592434730587555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080342 (A138980 (n + 1) - 2).toNat

end

end A276621.P14078592434730587555

namespace A276621

/-- `A080342(A138980(n+1)-2)` -/
def P14078592434730587555.Spec : Prop :=
  ∀ n, P14078592434730587555.a n = A276621 n

end A276621

/-! ## A276621.P12034170944457121791

`A000195(∑[A000193(n+1)*A096520(n+1)+2])`
-/

namespace A276621.P12034170944457121791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000193 (n + 1) * A096520 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000195 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A276621.P12034170944457121791

namespace A276621

/-- `A000195(∑[A000193(n+1)*A096520(n+1)+2])` -/
def P12034170944457121791.Spec : Prop :=
  ∀ n, P12034170944457121791.a n = A276621 n

end A276621

/-! ## A276621.P18017053833846738086

`floor(log2(log2(A153033(n²+1))+n))`
-/

namespace A276621.P18017053833846738086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.logb 2 (Real.logb 2 (A153033 (n ^ 2 + 1) : ℝ) + (n : ℝ))⌋

end

end A276621.P18017053833846738086

namespace A276621

/-- `floor(log2(log2(A153033(n²+1))+n))` -/
def P18017053833846738086.Spec : Prop :=
  ∀ n, P18017053833846738086.a n = A276621 n

end A276621

/-!
# A276622: Simple self-inverse permutation of natural numbers: after a(0)=0, list each block of A261234(n) numbers in reverse order, from A261232(n) to A261233(1+n).

The programs for A276622, there is no canonical definition to state claims against.
-/

/-! ## A276622.P17927441541625899354

`A261231(A276624(n))`
-/

namespace A276622.P17927441541625899354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261231 (A276624 n).toNat

end

end A276622.P17927441541625899354

/-!
# A276623: The infinite trunk of ternary beanstalk: The only infinite sequence such that a(n-1) = a(n) - A053735(a(n)), where A053735(n) = base-3 digit sum of n.

The programs for A276623, there is no canonical definition to state claims against.
-/

/-! ## A276623.P2842463092839476108

`A276624(A276622(n))`
-/

namespace A276623.P2842463092839476108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276624 (A276622 n).toNat

end

end A276623.P2842463092839476108

/-! ## A276623.P11595691286722486429

`∑[A276604(n)]`
-/

namespace A276623.P11595691286722486429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276604 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A276623.P11595691286722486429

/-! ## A276623.P14348824342637888768

`2*A276603(n)`
-/

namespace A276623.P14348824342637888768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A276603 n

end

end A276623.P14348824342637888768

/-! ## A276623.P11995228361845101597

`∑[2*A276605(n)]`
-/

namespace A276623.P11995228361845101597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A276605 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A276623.P11995228361845101597

/-! ## A276623.P2998720785250194162

`A276603(n)+∑[A276605(n)]`
-/

namespace A276623.P2998720785250194162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276605 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276603 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A276623.P2998720785250194162

/-! ## A276623.P7297402853477434745

`A276603(A005843(n)/2)+A276603(n)`
-/

namespace A276623.P7297402853477434745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276603 (SequenceMachineLib.roundAway ((A005843 n : ℚ) / 2)).toNat + A276603 n

end

end A276623.P7297402853477434745

/-! ## A276623.P16882471468681272974

`A276603(n+1)+A276603(n)-A276605(n+1)`
-/

namespace A276623.P16882471468681272974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276603 (n + 1) + (A276603 n - A276605 (n + 1))

end

end A276623.P16882471468681272974

/-! ## A276623.P9295178798880751852

`A276603(n+1)+A276603(n+1)-A276604(n+1)`
-/

namespace A276623.P9295178798880751852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276603 (n + 1) + (A276603 (n + 1) - A276604 (n + 1))

end

end A276623.P9295178798880751852

/-! ## A276623.P5384660054192807175

`A005843(A276603(n))`
-/

namespace A276623.P5384660054192807175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A276603 n).toNat

end

end A276623.P5384660054192807175

/-! ## A276623.P13706358587889356769

`A276624(A261231(A276624(n)))`
-/

namespace A276623.P13706358587889356769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276624 (A261231 (A276624 n).toNat).toNat

end

end A276623.P13706358587889356769

/-!
# A276624: The infinite trunk of ternary beanstalk with reversed subsections.

The programs for A276624, there is no canonical definition to state claims against.
-/

/-! ## A276624.P13689951746995694495

`A276623(A276622(n))`
-/

namespace A276624.P13689951746995694495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276623 (A276622 n).toNat

end

end A276624.P13689951746995694495

/-! ## A276624.P5493915364668046890

`(2-A000007(n))*A276603(A276622(n))`
-/

namespace A276624.P5493915364668046890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A000007 n) * A276603 (A276622 n).toNat

end

end A276624.P5493915364668046890

/-! ## A276624.P9486732294644944673

`A040001(2*n)*A276603(A276622(n))`
-/

namespace A276624.P9486732294644944673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (2 * n) * A276603 (A276622 n).toNat

end

end A276624.P9486732294644944673

/-! ## A276624.P16779940171738451208

`A020639(2*(n+1))*A276603(A276622(n))`
-/

namespace A276624.P16779940171738451208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (2 * (n + 1)) * A276603 (A276622 n).toNat

end

end A276624.P16779940171738451208

/-! ## A276624.P12308017436368196302

`A006530(A001316(n))*A276603(A276622(n))`
-/

namespace A276624.P12308017436368196302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A001316 n).toNat * A276603 (A276622 n).toNat

end

end A276624.P12308017436368196302

/-! ## A276624.P1302737998052869778

`A000005(A008578(n+1))*A276603(A276622(n))`
-/

namespace A276624.P1302737998052869778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A008578 (n + 1)).toNat * A276603 (A276622 n).toNat

end

end A276624.P1302737998052869778

/-! ## A276624.P15139745298192894607

`A100577(A020639(n+1))*A276603(A276622(n))`
-/

namespace A276624.P15139745298192894607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100577 (A020639 (n + 1)).toNat * A276603 (A276622 n).toNat

end

end A276624.P15139745298192894607

/-! ## A276624.P5307865920557966254

`A000040(A093178(2*n))*A276603(A276622(n))`
-/

namespace A276624.P5307865920557966254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A093178 (2 * n)).toNat * A276603 (A276622 n).toNat

end

end A276624.P5307865920557966254

/-! ## A276624.P578502300962361004

`A000005(A172071(n+2))*A276603(A276622(n))`
-/

namespace A276624.P578502300962361004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A172071 (n + 2)).toNat * A276603 (A276622 n).toNat

end

end A276624.P578502300962361004

/-! ## A276624.P4391319371328356793

`A000005(A006512(n+2))*A276603(A276622(n))`
-/

namespace A276624.P4391319371328356793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A006512 (n + 2)).toNat * A276603 (A276622 n).toNat

end

end A276624.P4391319371328356793

/-! ## A276624.P8232632662381932700

`A178815(A331279(n))*A276603(A276622(n))`
-/

namespace A276624.P8232632662381932700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178815 (A331279 n).toNat * A276603 (A276622 n).toNat

end

end A276624.P8232632662381932700

/-! ## A276624.P3451482004357747531

`A178815(A006047(n))*A276603(A276622(n))`
-/

namespace A276624.P3451482004357747531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178815 (A006047 n).toNat * A276603 (A276622 n).toNat

end

end A276624.P3451482004357747531

/-!
# A276625: Finitary numbers. Matula-Goebel numbers of rooted identity trees.

The programs for A276625, there is no canonical definition to state claims against.
-/

/-! ## A276625.P8460007564227775067

`A000720(A277098(n+1))`
-/

namespace A276625.P8460007564227775067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A277098 (n + 1)).toNat

end

end A276625.P8460007564227775067

/-! ## A276625.P2074278351750981211

`record[A348066(n+1)]`
-/

namespace A276625.P2074278351750981211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348066 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A276625.P2074278351750981211

/-! ## A276625.P12800629215060997961

`eq[1, A206497(n+1)]+1`
-/

namespace A276625.P12800629215060997961
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206497 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A276625.P12800629215060997961

/-! ## A276625.P8025204917237660043

`eq[1, A333267(n+1)]+1`
-/

namespace A276625.P8025204917237660043
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333267 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A276625.P8025204917237660043

/-! ## A276625.P13146718090893982318

`eq[n, A348066(abs(1-n)+1)]`
-/

namespace A276625.P13146718090893982318
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348066 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A276625.P13146718090893982318

/-! ## A276625.P5764786085944166240

`∪[A324968(n+1), A324970(n+1)]`
-/

namespace A276625.P5764786085944166240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324968 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324970 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A276625.P5764786085944166240

/-! ## A276625.P922841643003894700

`eq[A000010(n+1), A000010(A348066(n+1))]+1`
-/

namespace A276625.P922841643003894700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A348066 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A276625.P922841643003894700

/-! ## A276625.P12119079101182966012

`eq[A000040(n+1), A348066(A000040(n+1))]+1`
-/

namespace A276625.P12119079101182966012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348066 (A000040 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A276625.P12119079101182966012

/-! ## A276625.P11463704793076276664

`∪[A177065(n), A297571(n+1)]`
-/

namespace A276625.P11463704793076276664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177065 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297571 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A276625.P11463704793076276664

/-! ## A276625.P6736849051304474445

`∪[A281482(n), A297571(n+1)]`
-/

namespace A276625.P6736849051304474445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281482 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297571 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A276625.P6736849051304474445

/-!
# A276626: Semiprimes n such that (n-1)/3 is prime.

The programs for A276626, there is no canonical definition to state claims against.
-/

/-! ## A276626.P1006292281447381806

`2*A162336(n+1)`
-/

namespace A276626.P1006292281447381806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A162336 (n + 1)

end

end A276626.P1006292281447381806

/-! ## A276626.P12343110906192588592

`A162336(A000027(n+1))+A162336(n+1)`
-/

namespace A276626.P12343110906192588592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162336 (A000027 (n + 1)).toNat + A162336 (n + 1)

end

end A276626.P12343110906192588592

/-! ## A276626.P1963006580593950717

`lcm(A000005(A162361(n+1)), A162336(n+1))`
-/

namespace A276626.P1963006580593950717
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000005 (A162361 (n + 1)).toNat) (A162336 (n + 1))

end

end A276626.P1963006580593950717

/-! ## A276626.P14334934343750531523

`2*p?[A104635(n+1)+A090658(n+1)]`
-/

namespace A276626.P14334934343750531523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104635 (n + 1) + A090658 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A276626.P14334934343750531523

/-! ## A276626.P6470562186264239023

`2*∩[A003627(n+1), A328058(n+1)]`
-/

namespace A276626.P6470562186264239023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003627 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328058 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A276626.P6470562186264239023

/-! ## A276626.P4173943153353967381

`2*∩[A056955(n+1), A328058(n+1)]`
-/

namespace A276626.P4173943153353967381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056955 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328058 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A276626.P4173943153353967381

/-! ## A276626.P12209593227495195588

`∩[A109373(n+1), A112774(n+1)]`
-/

namespace A276626.P12209593227495195588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109373 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112774 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A276626.P12209593227495195588

/-! ## A276626.P17531171488519790929

`∩[A109373(n+1), A232540(n+1)]`
-/

namespace A276626.P17531171488519790929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109373 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232540 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A276626.P17531171488519790929

/-! ## A276626.P6769033862844634167

`2*∩[A003627(n+1), A114454(n+1)]`
-/

namespace A276626.P6769033862844634167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003627 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114454 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A276626.P6769033862844634167

/-! ## A276626.P1166692669699793871

`2*∩[A007528(n+1), A114454(n+1)]`
-/

namespace A276626.P1166692669699793871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007528 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114454 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A276626.P1166692669699793871

/-! ## A276626.P14395815042945719912

`2*∩[A045309(n+1), A114454(n+1)]`
-/

namespace A276626.P14395815042945719912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045309 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114454 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A276626.P14395815042945719912

/-! ## A276626.P7320361560735985643

`2*∩[A045410(n+1), A114454(n+1)]`
-/

namespace A276626.P7320361560735985643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045410 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114454 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A276626.P7320361560735985643

/-! ## A276626.P16483945136557638828

`2*∩[A056955(n+1), A114454(n+1)]`
-/

namespace A276626.P16483945136557638828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056955 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114454 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A276626.P16483945136557638828

/-! ## A276626.P12470708250622518887

`record[2*A087273(n+2)]`
-/

namespace A276626.P12470708250622518887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A087273 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A276626.P12470708250622518887

/-! ## A276626.P10474021766963557703

`2*p?[A168565(n+2)+1]`
-/

namespace A276626.P10474021766963557703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168565 (n + 2) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A276626.P10474021766963557703

/-! ## A276626.P14989055690339177002

`2*p?[A179893(n+2)+2]`
-/

namespace A276626.P14989055690339177002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179893 (n + 2) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A276626.P14989055690339177002

/-! ## A276626.P17105277080143373107

`2*p?[A065091(n+1)+A006254(n+1)]`
-/

namespace A276626.P17105277080143373107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1) + A006254 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A276626.P17105277080143373107

/-! ## A276626.P2775031895641591087

`2*p?[A014682(A000040(n+1))]`
-/

namespace A276626.P2775031895641591087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A000040 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A276626.P2775031895641591087

/-! ## A276626.P4299121236527905607

`2*p?[A014682(A008578(n+2))]`
-/

namespace A276626.P4299121236527905607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A008578 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A276626.P4299121236527905607

/-! ## A276626.P17252943488107879049

`∩[A109373(n+1), A308169(n+1)]`
-/

namespace A276626.P17252943488107879049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109373 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308169 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A276626.P17252943488107879049

/-!
# A276628: Composite m such that A276469(m,k) are not all 1's.

The programs for A276628, there is no canonical definition to state claims against.
-/

/-! ## A276628.P1446454061817172428

`filter[A342256(n+1), A005171(#)]`
-/

namespace A276628.P1446454061817172428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342256 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A276628.P1446454061817172428

/-! ## A276628.P1609034232481548426

`filter[A342256(n+1), A066247(#)]`
-/

namespace A276628.P1609034232481548426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342256 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A276628.P1609034232481548426

/-! ## A276628.P6406277799578356474

`∩[A002808(n+1), A342256(n+1)]`
-/

namespace A276628.P6406277799578356474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342256 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A276628.P6406277799578356474

/-! ## A276628.P14654211521208614518

`∩[A018252(n+1), A342256(n+1)]`
-/

namespace A276628.P14654211521208614518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342256 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A276628.P14654211521208614518

/-! ## A276628.P10301278950631051385

`∩[A060679(n+1), A342256(n+1)]`
-/

namespace A276628.P10301278950631051385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060679 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342256 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A276628.P10301278950631051385

/-! ## A276628.P9119078691380653955

`∩[A132858(n+1), A342256(n+1)]`
-/

namespace A276628.P9119078691380653955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132858 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342256 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A276628.P9119078691380653955

/-! ## A276628.P8456584871060364421

`∩[A141468(n+1), A342256(n+1)]`
-/

namespace A276628.P8456584871060364421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342256 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A276628.P8456584871060364421

/-! ## A276628.P844474658029202855

`∩[A342256(n+1), comp[A342257(n+1)]]`
-/

namespace A276628.P844474658029202855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342256 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342257 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A276628.P844474658029202855

/-! ## A276628.P4672601931819609233

`eq[A085392(n+1), A253236(n+1)]+1`
-/

namespace A276628.P4672601931819609233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085392 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253236 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A276628.P4672601931819609233

/-! ## A276628.P8634352526829850441

`lt[C(A020639(n+1), n), A253236(n+1)]+1`
-/

namespace A276628.P8634352526829850441
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A020639 (n + 1)).toNat n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253236 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A276628.P8634352526829850441

/-!
# A276629: Primes p such that sigma(sigma(p-1)) is a power of 2.

The programs for A276629, there is no canonical definition to state claims against.
-/

/-! ## A276629.P6976419015479896548

`p?[A275674(n+1)+1]`
-/

namespace A276629.P6976419015479896548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275674 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A276629.P6976419015479896548

/-! ## A276629.P4739783202889844903

`record[A020639(A275674(n+1)+1)]`
-/

namespace A276629.P4739783202889844903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A275674 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A276629.P4739783202889844903

/-! ## A276629.P1097481954683669768

`A077497(C(A062724(n), A047072(n+4)))`
-/

namespace A276629.P1097481954683669768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077497 (Nat.choose (A062724 n).toNat (A047072 (n + 4)).toNat)

end

end A276629.P1097481954683669768

/-!
# A276630: a(n) = number of prime signature permutations which can prohibit the appearance of terms in A026477 that are members of the same signature set (see explanation in "Comments" and "Examples").

The programs for A276630, there is no canonical definition to state claims against.
-/

/-! ## A276630.P4938174525546278787

`A133008(A332658(n+1)+1)`
-/

namespace A276630.P4938174525546278787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133008 (A332658 (n + 1) + 1).toNat

end

end A276630.P4938174525546278787

/-! ## A276630.P1192255656614002000

`A370482(A108700(n+1))`
-/

namespace A276630.P1192255656614002000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370482 (A108700 (n + 1)).toNat

end

end A276630.P1192255656614002000

/-! ## A276630.P9357287119048182198

`A383028(A138780(n+7))`
-/

namespace A276630.P9357287119048182198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383028 (A138780 (n + 7)).toNat

end

end A276630.P9357287119048182198

/-! ## A276630.P435481814099786730

`A324903(10*A056493(n+1))`
-/

namespace A276630.P435481814099786730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324903 (10 * A056493 (n + 1)).toNat

end

end A276630.P435481814099786730

/-! ## A276630.P3258499214756230925

`(A096636(n)%A096620(n))%2`
-/

namespace A276630.P3258499214756230925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod (A096636 n) (A096620 n)) 2

end

end A276630.P3258499214756230925

/-!
# A276632: Integer part of the geometric mean of the prime factors of n.

The programs for A276632, the canonical program `A276632.P12790883415635058732` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A276632 has offset 1).

The definition of A276632 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A276632.P12790883415635058732

`A079866(∏{p}[n+1, #])`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A276632

/-- `A079866(∏{p}[n+1, #])` -/
def P12790883415635058732.Spec : Prop :=
  ∀ n, P12790883415635058732.a n = A276632 (n + 1)

theorem P12790883415635058732.correct : P12790883415635058732.Spec := by
  intro n
  simp only [A276632, Nat.add_sub_cancel]

end A276632

/-! ## A276632.P14116318511302525340

`floor(∏{p}[n+1, root(#, A001221(n+1))])`
-/

namespace A276632.P14116318511302525340
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∏ p ∈ Nat.primeFactors (f1 n), (p : ℝ) ^ (1 / (A001221 (n + 1) : ℝ))⌋

end

end A276632.P14116318511302525340

namespace A276632

/-- `floor(∏{p}[n+1, root(#, A001221(n+1))])` -/
def P14116318511302525340.Spec : Prop :=
  ∀ n, P14116318511302525340.a n = A276632 (n + 1)

end A276632

/-! ## A276632.P12139794598943536336

`A079866(A007947(n+1))`
-/

namespace A276632.P12139794598943536336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079866 (A007947 (n + 1)).toNat

end

end A276632.P12139794598943536336

namespace A276632

/-- `A079866(A007947(n+1))` -/
def P12139794598943536336.Spec : Prop :=
  ∀ n, P12139794598943536336.a n = A276632 (n + 1)

end A276632

/-! ## A276632.P8911629681411375693

`A079866(A062759(n+1))`
-/

namespace A276632.P8911629681411375693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079866 (A062759 (n + 1)).toNat

end

end A276632.P8911629681411375693

namespace A276632

/-- `A079866(A062759(n+1))` -/
def P8911629681411375693.Spec : Prop :=
  ∀ n, P8911629681411375693.a n = A276632 (n + 1)

end A276632

/-! ## A276632.P17452359288688785489

`A079866(sqrt(A078615(n+1)))`
-/

namespace A276632.P17452359288688785489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079866 (SequenceMachineLib.roundAway (Real.sqrt (A078615 (n + 1) : ℝ))).toNat

end

end A276632.P17452359288688785489

namespace A276632

/-- `A079866(sqrt(A078615(n+1)))` -/
def P17452359288688785489.Spec : Prop :=
  ∀ n, P17452359288688785489.a n = A276632 (n + 1)

end A276632

/-! ## A276632.P12680951419057715779

`A079866((n+1)/A003557(n+1))`
-/

namespace A276632.P12680951419057715779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079866 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A003557 (n + 1) : ℚ))).toNat

end

end A276632.P12680951419057715779

namespace A276632

/-- `A079866((n+1)/A003557(n+1))` -/
def P12680951419057715779.Spec : Prop :=
  ∀ n, P12680951419057715779.a n = A276632 (n + 1)

end A276632

/-! ## A276632.P10525728016180200103

`A079866(A166140(n+1))`
-/

namespace A276632.P10525728016180200103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079866 (A166140 (n + 1)).toNat

end

end A276632.P10525728016180200103

namespace A276632

/-- `A079866(A166140(n+1))` -/
def P10525728016180200103.Spec : Prop :=
  ∀ n, P10525728016180200103.a n = A276632 (n + 1)

end A276632

/-! ## A276632.P3194064279717451969

`A079866(A078615(n+1))`
-/

namespace A276632.P3194064279717451969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079866 (A078615 (n + 1)).toNat

end

end A276632.P3194064279717451969

namespace A276632

/-- `A079866(A078615(n+1))` -/
def P3194064279717451969.Spec : Prop :=
  ∀ n, P3194064279717451969.a n = A276632 (n + 1)

end A276632

/-! ## A276632.P6990727448498304907

`A079866(A015052(n+1)²)`
-/

namespace A276632.P6990727448498304907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079866 (A015052 (n + 1) ^ 2).toNat

end

end A276632.P6990727448498304907

namespace A276632

/-- `A079866(A015052(n+1)²)` -/
def P6990727448498304907.Spec : Prop :=
  ∀ n, P6990727448498304907.a n = A276632 (n + 1)

end A276632

/-! ## A276632.P548469437224414404

`A079866(A015053(n+1)²)`
-/

namespace A276632.P548469437224414404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079866 (A015053 (n + 1) ^ 2).toNat

end

end A276632.P548469437224414404

namespace A276632

/-- `A079866(A015053(n+1)²)` -/
def P548469437224414404.Spec : Prop :=
  ∀ n, P548469437224414404.a n = A276632 (n + 1)

end A276632

/-! ## A276632.P9524470790054039844

`A079866(A053166(n+1)²)`
-/

namespace A276632.P9524470790054039844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079866 (A053166 (n + 1) ^ 2).toNat

end

end A276632.P9524470790054039844

namespace A276632

/-- `A079866(A053166(n+1)²)` -/
def P9524470790054039844.Spec : Prop :=
  ∀ n, P9524470790054039844.a n = A276632 (n + 1)

end A276632

/-! ## A276632.P1334379911147632421

`A079866(A007913(A003557((n+1)²)))`
-/

namespace A276632.P1334379911147632421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079866 (A007913 (A003557 ((n + 1) ^ 2)).toNat).toNat

end

end A276632.P1334379911147632421

namespace A276632

/-- `A079866(A007913(A003557((n+1)²)))` -/
def P1334379911147632421.Spec : Prop :=
  ∀ n, P1334379911147632421.a n = A276632 (n + 1)

end A276632

/-!
# A276633: a(n) = smallest integer not yet in the sequence with no digits in common with a(n-1) and a(n-2); a(0)=0, a(1)=1.

The programs for A276633, there is no canonical definition to state claims against.
-/

/-! ## A276633.P2382388676695860965

`lt[A185974(Δ[n²]), 25]`
-/

namespace A276633.P2382388676695860965
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185974 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  25

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n

end

end A276633.P2382388676695860965

/-! ## A276633.P14709355600025177858

`lt[A215366(Δ[n²]), 25]`
-/

namespace A276633.P14709355600025177858
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215366 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  25

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n

end

end A276633.P14709355600025177858

/-! ## A276633.P5877675496946393333

`lt[sqrt(A185974(2*n+1)), 5]`
-/

namespace A276633.P5877675496946393333
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A185974 (2 * n + 1) : ℝ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A276633.P5877675496946393333

/-! ## A276633.P3017215071759490883

`lt[sqrt(A215366(2*n+1)), 5]`
-/

namespace A276633.P3017215071759490883
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A215366 (2 * n + 1) : ℝ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A276633.P3017215071759490883

/-! ## A276633.P1846837365596878085

`A301801(A055648(n))`
-/

namespace A276633.P1846837365596878085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301801 (A055648 n).toNat

end

end A276633.P1846837365596878085

/-!
# A276634: Sum of cubes of proper divisors of n.

The programs for A276634, the canonical program `A276634.P10773123215461950839` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A276634 has offset 1).

The definition of A276634 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A276634.P10773123215461950839

`A001158(n+1)-A000578(n+1)`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A276634

/-- `A001158(n+1)-A000578(n+1)` -/
def P10773123215461950839.Spec : Prop :=
  ∀ n, P10773123215461950839.a n = A276634 (n + 1)

theorem P10773123215461950839.correct : P10773123215461950839.Spec := by
  intro n
  simp only [A276634, Nat.add_sub_cancel]

end A276634

/-! ## A276634.P7758592460530323505

`∑{d}[n+1, (#%(n+1))^3]`
-/

namespace A276634.P7758592460530323505
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d % (n + 1)) ^ 3

end

end A276634.P7758592460530323505

namespace A276634

/-- `∑{d}[n+1, (#%(n+1))^3]` -/
def P7758592460530323505.Spec : Prop :=
  ∀ n, (P7758592460530323505.a n : ℤ) = A276634 (n + 1)

end A276634

/-! ## A276634.P1098051803288465508

`A001158(n+1)-(n+1)^3`
-/

namespace A276634.P1098051803288465508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001158 (n + 1) - ((n + 1) ^ 3 : ℤ)

end

end A276634.P1098051803288465508

namespace A276634

/-- `A001158(n+1)-(n+1)^3` -/
def P1098051803288465508.Spec : Prop :=
  ∀ n, P1098051803288465508.a n = A276634 (n + 1)

theorem P1098051803288465508.correct : P1098051803288465508.Spec := by
  intro n
  simp only [A276634, Nat.add_sub_cancel, A276634.P1098051803288465508.a, A276634.P10773123215461950839.a, A000578, A000578.P12162961755414704816.a, A001158, A001158.P5142498491642488153.f1, A001158.P5142498491642488153.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A276634

/-! ## A276634.P12350744739223087554

`∑{d}[n+1, A000578(#)]-A000578(n+1)`
-/

namespace A276634.P12350744739223087554
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000578 d - A000578 (n + 1)

end

end A276634.P12350744739223087554

namespace A276634

/-- `∑{d}[n+1, A000578(#)]-A000578(n+1)` -/
def P12350744739223087554.Spec : Prop :=
  ∀ n, P12350744739223087554.a n = A276634 (n + 1)

theorem P12350744739223087554.correct : P12350744739223087554.Spec := by
  intro n
  simp only [A276634, Nat.add_sub_cancel, A276634.P12350744739223087554.f1, A276634.P12350744739223087554.a, A276634.P10773123215461950839.a, A000578, A000578.P12162961755414704816.a, A001158, A001158.P5142498491642488153.f1, A001158.P5142498491642488153.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A276634

/-! ## A276634.P10406385416933589562

`∑{d}[n+1, A000056(#)*A001065((n+1)/#)]`
-/

namespace A276634.P10406385416933589562
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000056 d * A001065 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A276634.P10406385416933589562

namespace A276634

/-- `∑{d}[n+1, A000056(#)*A001065((n+1)/#)]` -/
def P10406385416933589562.Spec : Prop :=
  ∀ n, P10406385416933589562.a n = A276634 (n + 1)

end A276634

/-! ## A276634.P8011595394655495345

`∑{d}[n+1, A032741(#)*A059376((n+1)/#)]`
-/

namespace A276634.P8011595394655495345
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A032741 d * A059376 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A276634.P8011595394655495345

namespace A276634

/-- `∑{d}[n+1, A032741(#)*A059376((n+1)/#)]` -/
def P8011595394655495345.Spec : Prop :=
  ∀ n, P8011595394655495345.a n = A276634 (n + 1)

end A276634

/-! ## A276634.P18022550494002442019

`∑{d}[n+1, A053191(#)*A067558((n+1)/#)]`
-/

namespace A276634.P18022550494002442019
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A053191 d * A067558 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A276634.P18022550494002442019

namespace A276634

/-- `∑{d}[n+1, A053191(#)*A067558((n+1)/#)]` -/
def P18022550494002442019.Spec : Prop :=
  ∀ n, P18022550494002442019.a n = A276634 (n + 1)

end A276634

/-! ## A276634.P5988500162891856532

`∑{d}[n+1, A064279(#)*A068963((n+1)/#)]`
-/

namespace A276634.P5988500162891856532
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A064279 d * A068963 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A276634.P5988500162891856532

namespace A276634

/-- `∑{d}[n+1, A064279(#)*A068963((n+1)/#)]` -/
def P5988500162891856532.Spec : Prop :=
  ∀ n, P5988500162891856532.a n = A276634 (n + 1)

end A276634

/-! ## A276634.P6427205779439870201

`∑{d}[n+1, A001158(#)*A157658((n+1)/#)]`
-/

namespace A276634.P6427205779439870201
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001158 d * A157658 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A276634.P6427205779439870201

namespace A276634

/-- `∑{d}[n+1, A001158(#)*A157658((n+1)/#)]` -/
def P6427205779439870201.Spec : Prop :=
  ∀ n, P6427205779439870201.a n = A276634 (n + 1)

end A276634

/-! ## A276634.P4045143608744546737

`∑{d}[n+1, A091570(#)*A208895((n+1)/#)]`
-/

namespace A276634.P4045143608744546737
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A091570 d * A208895 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A276634.P4045143608744546737

namespace A276634

/-- `∑{d}[n+1, A091570(#)*A208895((n+1)/#)]` -/
def P4045143608744546737.Spec : Prop :=
  ∀ n, P4045143608744546737.a n = A276634 (n + 1)

end A276634

/-! ## A276634.P5415701557788611034

`∑{d}[n+1, A051953(#)*A350156((n+1)/#)]`
-/

namespace A276634.P5415701557788611034
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A051953 d * A350156 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A276634.P5415701557788611034

namespace A276634

/-- `∑{d}[n+1, A051953(#)*A350156((n+1)/#)]` -/
def P5415701557788611034.Spec : Prop :=
  ∀ n, P5415701557788611034.a n = A276634 (n + 1)

end A276634

/-! ## A276634.P13009252371407627031

`∑{d}[n+1, A065959(#)*A344617((n+1)/#)]`
-/

namespace A276634.P13009252371407627031
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A065959 d * A344617 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A276634.P13009252371407627031

namespace A276634

/-- `∑{d}[n+1, A065959(#)*A344617((n+1)/#)]` -/
def P13009252371407627031.Spec : Prop :=
  ∀ n, P13009252371407627031.a n = A276634 (n + 1)

end A276634

/-! ## A276634.P13037633868656373599

`∑{d}[n+1, A296066(#)*A328408((n+1)/#)]`
-/

namespace A276634.P13037633868656373599
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A296066 d * A328408 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A276634.P13037633868656373599

namespace A276634

/-- `∑{d}[n+1, A296066(#)*A328408((n+1)/#)]` -/
def P13037633868656373599.Spec : Prop :=
  ∀ n, P13037633868656373599.a n = A276634 (n + 1)

end A276634

/-! ## A276634.P17722342832197911690

`∑{d}[n+1, #^3]-Δ[∑[n]²]`
-/

namespace A276634.P17722342832197911690
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f3 j) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), d ^ 3 : ℕ) : ℤ) - ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

end

end A276634.P17722342832197911690

namespace A276634

/-- `∑{d}[n+1, #^3]-Δ[∑[n]²]` -/
def P17722342832197911690.Spec : Prop :=
  ∀ n, P17722342832197911690.a n = A276634 (n + 1)

end A276634

/-!
# A276636: Number of up-down sequences with 3 copies each of 1,2,...,n.

The programs for A276636, there is no canonical definition to state claims against.
-/

/-! ## A276636.P11359152142876811380

`A275784(∑[n+3]+n+3)`
-/

namespace A276636.P11359152142876811380
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275784 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A276636.P11359152142876811380

/-! ## A276636.P13554600151537378059

`A275784(A046691(n+2))+A185284(n)`
-/

namespace A276636.P13554600151537378059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275784 (A046691 (n + 2)).toNat + A185284 n

end

end A276636.P13554600151537378059

/-! ## A276636.P2439329661828352636

`lcm(A275784(A046691(n+2)), A330034(n))`
-/

namespace A276636.P2439329661828352636
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A275784 (A046691 (n + 2)).toNat) (A330034 n)

end

end A276636.P2439329661828352636

/-! ## A276636.P7545370255250195227

`A275784(A046691(n+2))+A070140(n+1)`
-/

namespace A276636.P7545370255250195227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275784 (A046691 (n + 2)).toNat + A070140 (n + 1)

end

end A276636.P7545370255250195227

/-!
# A276637: Number of up-down sequences with n copies each of 1,2,...,5.

The programs for A276637, there is no canonical definition to state claims against.
-/

/-! ## A276637.P853823706611859975

`record[A275784(A167499(n))]`
-/

namespace A276637.P853823706611859975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275784 (A167499 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A276637.P853823706611859975

/-! ## A276637.P6159532171505835932

`A275784(eq[5, A002262(n)])`
-/

namespace A276637.P6159532171505835932
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275784 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A276637.P6159532171505835932

/-! ## A276637.P8791976676534713945

`record[A275784(A027379(n)+8)]`
-/

namespace A276637.P8791976676534713945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275784 (A027379 n + 8).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A276637.P8791976676534713945

/-! ## A276637.P12244354561189345245

`A275784(eq[5, A025668(n+1)])`
-/

namespace A276637.P12244354561189345245
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025668 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275784 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A276637.P12244354561189345245

/-! ## A276637.P4344587809266959023

`A275784(eq[6, A002260(n+1)])`
-/

namespace A276637.P4344587809266959023
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275784 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A276637.P4344587809266959023

/-!
# A276638: a(0)=0; thereafter a(n) is the number of matches between the first n terms circularly shifted by s and the reverse of the first n terms, maximized over s.

The programs for A276638, there is no canonical definition to state claims against.
-/

/-! ## A276638.P18440508294026210354

`A183041(A246416(2*(n+1)))%A217599(n+1)`
-/

namespace A276638.P18440508294026210354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A183041 (A246416 (2 * (n + 1))).toNat) (A217599 (n + 1))

end

end A276638.P18440508294026210354

/-! ## A276638.P342559279213439826

`A005811(and(A142970(n), A288704(n+1)))`
-/

namespace A276638.P342559279213439826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 (Int.land (A142970 n) (A288704 (n + 1))).toNat

end

end A276638.P342559279213439826

/-! ## A276638.P16185434448275841183

`n-2*A131576(A148060(n))`
-/

namespace A276638.P16185434448275841183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 2 * A131576 (A148060 n).toNat

end

end A276638.P16185434448275841183

/-! ## A276638.P2148888808003826214

`A283431(A240134(n+1))`
-/

namespace A276638.P2148888808003826214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283431 (A240134 (n + 1)).toNat

end

end A276638.P2148888808003826214

/-! ## A276638.P7155977202731235423

`A283431(n*A158416(n))`
-/

namespace A276638.P7155977202731235423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283431 ((n : ℤ) * A158416 n).toNat

end

end A276638.P7155977202731235423

/-!
# A276639: Triangle T(m, n) = the number of point-labeled graphs with n points and m edges, no points isolated. By rows, n >= 0, ceiling(n/2) <= m <= binomial(n,2).

The programs for A276639, there is no canonical definition to state claims against.
-/

/-! ## A276639.P16267381433264310884

`A054548(lt[0, A054548(n)])`
-/

namespace A276639.P16267381433264310884
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054548 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054548 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A276639.P16267381433264310884

/-! ## A276639.P7995702375720725202

`filter[A054548(n), A276398(#)]`
-/

namespace A276639.P7995702375720725202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054548 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A276398 (f1 j).toNat = 1) n)

end

end A276639.P7995702375720725202

/-!
# A276640: Triangle T(n, k) = the number of point-labeled graphs with n points and k edges, no points isolated, no edges isolated. By rows, 0 <= n, ceiling(2*n/3) <= k <= binomial(n, 2).

The programs for A276640, there is no canonical definition to state claims against.
-/

/-! ## A276640.P2846418372626783003

`A123527(A077168(n)+1)`
-/

namespace A276640.P2846418372626783003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123527 (A077168 n + 1).toNat

end

end A276640.P2846418372626783003

/-! ## A276640.P13892095848916912250

`A123527(A187829(n+2))`
-/

namespace A276640.P13892095848916912250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123527 (A187829 (n + 2)).toNat

end

end A276640.P13892095848916912250

/-! ## A276640.P10560694162771832448

`A123527(A343443(2^n))`
-/

namespace A276640.P10560694162771832448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123527 (A343443 (2 ^ n)).toNat

end

end A276640.P10560694162771832448

/-! ## A276640.P15197106757788536091

`A123527(A280700(2^n)+1)`
-/

namespace A276640.P15197106757788536091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123527 (A280700 (2 ^ n) + 1).toNat

end

end A276640.P15197106757788536091

/-! ## A276640.P11008106554733534200

`A123527(A073642(2^n)+2)`
-/

namespace A276640.P11008106554733534200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123527 (A073642 (2 ^ n) + 2).toNat

end

end A276640.P11008106554733534200

/-!
# A276643: Number of distinct 4-digit vehicle plates whose sum is n.

The programs for A276643, there is no canonical definition to state claims against.
-/

/-! ## A276643.P12512273865692650954

`A213651(n+58)`
-/

namespace A276643.P12512273865692650954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213651 (n + 58)

end

end A276643.P12512273865692650954

/-! ## A276643.P10759780848539405366

`∑[eq[A060959(n), A141020(n)]]`
-/

namespace A276643.P10759780848539405366
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060959 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141020 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A276643.P10759780848539405366

/-! ## A276643.P13757130663838396832

`∑[eq[A051162(n), A169945(n)]]`
-/

namespace A276643.P13757130663838396832
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051162 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169945 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A276643.P13757130663838396832

/-! ## A276643.P547266814498845386

`∑[lt[A096801(n), A256140(n)]]`
-/

namespace A276643.P547266814498845386
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096801 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256140 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A276643.P547266814498845386

/-! ## A276643.P4860800995221654456

`∑[lt[A139459(n), A186965(n+1)]]`
-/

namespace A276643.P4860800995221654456
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139459 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186965 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A276643.P4860800995221654456

/-!
# A276644: Self-composition of the repunits; g.f.: A(x) = G(G(x)), where G(x) = g.f. of A002275.

The programs for A276644, the canonical program `A276644.P17851397877237996234` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A276644 has offset 0).

The definition of A276644 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A276644.P17851397877237996234

`33*a(n-1)-272*a(n-2)+330*a(n-3)-100*a(n-4)` with `a(0)=0, a(1)=1, a(2)=22, a(3)=464`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A276644

/-- `33*a(n-1)-272*a(n-2)+330*a(n-3)-100*a(n-4)` -/
def P17851397877237996234.Spec : Prop :=
  ∀ n, P17851397877237996234.a n = A276644 n

theorem P17851397877237996234.correct : P17851397877237996234.Spec := by
  intro n
  simp only [A276644]

end A276644

/-!
# A276645: Numbers n such that A002088(n) is a triangular number.

The programs for A276645, there is no canonical definition to state claims against.
-/

/-! ## A276645.P15772726110461732985

`eq[0, A303301(A002088(n))]`
-/

namespace A276645.P15772726110461732985
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303301 (A002088 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A276645.P15772726110461732985

/-! ## A276645.P12639807043551040687

`lt[0, A003982(A140466(n))]`
-/

namespace A276645.P12639807043551040687
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 (A140466 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A276645.P12639807043551040687

/-! ## A276645.P7075303977620338360

`eq[n, n*A319047(A005728(n))]`
-/

namespace A276645.P7075303977620338360
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A319047 (A005728 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A276645.P7075303977620338360

/-! ## A276645.P7763609702322753188

`eq[A000007(n), A152146(A002088(n))]`
-/

namespace A276645.P7763609702322753188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152146 (A002088 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A276645.P7763609702322753188

/-!
# A276646: a(n) = floor(Sum_{k=1..n} 0.k).

The programs for A276646, there is no canonical definition to state claims against.
-/

/-! ## A276646.P15467607242678171657

`floor(A275625(n+1)/A275626(n+1))`
-/

namespace A276646.P15467607242678171657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A275625 (n + 1) : ℚ) / (A275626 (n + 1) : ℚ)⌋

end

end A276646.P15467607242678171657

/-! ## A276646.P14946024224604896036

`∑[char[A275624(n+1)-1]]`
-/

namespace A276646.P14946024224604896036
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275624 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A276646.P14946024224604896036

/-! ## A276646.P9843412024486470555

`∑[char[A023443(A275624(n+1))]]`
-/

namespace A276646.P9843412024486470555
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A275624 (n + 1)).toNat

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A276646.P9843412024486470555

/-!
# A276647: Number of squares after the n-th generation in a symmetric (with 45-degree angles) non-overlapping Pythagoras tree.

The programs for A276647, the canonical program `A276647.P16405369365541037222` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A276647 has offset 0).

The definition of A276647 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A276647.P16405369365541037222

`20*2^floor(n/2)+28*2^floor((n-1)/2)-(2*n²+10*n+33)`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A276647

/-- `20*2^floor(n/2)+28*2^floor((n-1)/2)-(2*n²+10*n+33)` -/
def P16405369365541037222.Spec : Prop :=
  ∀ n, P16405369365541037222.a n = (A276647 n : ℚ)

end A276647

/-! ## A276647.P17500730725160049791

`ogf((1-x^2+2x^3+2x^4)/(1-3x+x^2+5x^3-6x^4+2x^5))`
-/

namespace A276647.P17500730725160049791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, -1, 2, 2] [1, -3, 1, 5, -6, 2] n

end

end A276647.P17500730725160049791

namespace A276647

/-- `ogf((1-x^2+2x^3+2x^4)/(1-3x+x^2+5x^3-6x^4+2x^5))` -/
def P17500730725160049791.Spec : Prop :=
  ∀ n, P17500730725160049791.a n = A276647 n

end A276647

/-! ## A276647.P11631100976483481727

`∑[∑[2*(a(n-2)+2)]]` with `a(0)=1, a(1)=1, a(2)=2, a(3)=4`
-/

namespace A276647.P11631100976483481727
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 2, 4] fun n f2 =>
  2 * (f2 (n - 2) + 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A276647.P11631100976483481727

namespace A276647

/-- `∑[∑[2*(a(n-2)+2)]]` -/
def P11631100976483481727.Spec : Prop :=
  ∀ n, (P11631100976483481727.a n : ℤ) = A276647 n

end A276647

/-! ## A276647.P11565631963467196663

`∑[A276677(n)]`
-/

namespace A276647.P11565631963467196663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276677 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A276647.P11565631963467196663

namespace A276647

/-- `∑[A276677(n)]` -/
def P11565631963467196663.Spec : Prop :=
  ∀ n, P11565631963467196663.a n = A276647 n

end A276647

/-! ## A276647.P4704843464678342826

`∑[∑[A060482(n+1)]-n]`
-/

namespace A276647.P4704843464678342826
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060482 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A276647.P4704843464678342826

namespace A276647

/-- `∑[∑[A060482(n+1)]-n]` -/
def P4704843464678342826.Spec : Prop :=
  ∀ n, P4704843464678342826.a n = A276647 n

end A276647

/-! ## A276647.P18332505522897802591

`∑[∑[A027383(n)]-A004273(n)]`
-/

namespace A276647.P18332505522897802591
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027383 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A004273 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A276647.P18332505522897802591

namespace A276647

/-- `∑[∑[A027383(n)]-A004273(n)]` -/
def P18332505522897802591.Spec : Prop :=
  ∀ n, P18332505522897802591.a n = A276647 n

end A276647

/-! ## A276647.P10150076378508802239

`∑[A053599(n+1)-A004273(n)]`
-/

namespace A276647.P10150076378508802239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053599 (n + 1) - A004273 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A276647.P10150076378508802239

namespace A276647

/-- `∑[A053599(n+1)-A004273(n)]` -/
def P10150076378508802239.Spec : Prop :=
  ∀ n, P10150076378508802239.a n = A276647 n

end A276647

/-!
# A276648: Number of points of norm <= n in the body-centered cubic lattice with the lattice parameter equal to 2/sqrt(3).

The programs for A276648, there is no canonical definition to state claims against.
-/

/-! ## A276648.P1239836630738184370

`or(A276450(n), A340598(A057771(n)))`
-/

namespace A276648.P1239836630738184370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A276450 n) (A340598 (A057771 n).toNat)

end

end A276648.P1239836630738184370

/-!
# A276649: Primes such that A271229(n) = prime(n).

The programs for A276649, there is no canonical definition to state claims against.
-/

/-! ## A276649.P16338397836741038003

`A167860(n%a(n-1))` with `a(0)=2`
-/

namespace A276649.P16338397836741038003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A167860 (Int.tmod (n : ℤ) (a (n - 1))).toNat

end

end A276649.P16338397836741038003

/-! ## A276649.P8004415627561810339

`p?[∪[2*n, A167860(n+1)]]`
-/

namespace A276649.P8004415627561810339
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167860 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = x) ∨ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A276649.P8004415627561810339

/-! ## A276649.P10736599531016888890

`A167860(C(n-1, a(n-1))+n)` with `a(0)=2`
-/

namespace A276649.P10736599531016888890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A167860 (Nat.choose ((n : ℤ) - 1).toNat (a (n - 1)).toNat + n)

end

end A276649.P10736599531016888890

/-! ## A276649.P13710239774671300316

`p?[∪[A167860(n+1), A081672(n)]]`
-/

namespace A276649.P13710239774671300316
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167860 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081672 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A276649.P13710239774671300316

/-! ## A276649.P14742648487339449430

`p?[∪[A167860(n+1), A100071(n)]]`
-/

namespace A276649.P14742648487339449430
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167860 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100071 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A276649.P14742648487339449430

/-!
# A276651: a(n) = numerator of Sum_{p|n} 0.d where p runs through the prime divisors of n.

The programs for A276651, there is no canonical definition to state claims against.
-/

/-! ## A276651.P17641838594874464838

`gcd(A104599(A340522(n)), A123528(n+2))`
-/

namespace A276651.P17641838594874464838
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A104599 (A340522 n).toNat) (A123528 (n + 2))

end

end A276651.P17641838594874464838

/-!
# A276652: a(n) = denominator of Sum_{p|n} 0.d where p runs through the prime divisors of n.

The programs for A276652, there is no canonical definition to state claims against.
-/

/-! ## A276652.P10039467533148362747

`A078267(A123528(n+2)^A260340(n+2))`
-/

namespace A276652.P10039467533148362747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078267 (SequenceMachineLib.roundAway ((A123528 (n + 2) : ℚ) ^ (A260340 (n + 2) : ℤ))).toNat

end

end A276652.P10039467533148362747

/-! ## A276652.P2745156268862273141

`A078267(n+2)%A000255(A078267(n+1))`
-/

namespace A276652.P2745156268862273141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A078267 (n + 2)) (A000255 (A078267 (n + 1)).toNat)

end

end A276652.P2745156268862273141

/-! ## A276652.P14499131163305841034

`A078267(A123528(n+2)%A103537(3*n+2))`
-/

namespace A276652.P14499131163305841034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078267 (Int.tmod (A123528 (n + 2)) (A103537 (3 * n + 2))).toNat

end

end A276652.P14499131163305841034

/-!
# A276653: a(n) = floor(Sum_{p|n} 0.p) where p runs through the prime divisors of n>1.

The programs for A276653, there is no canonical definition to state claims against.
-/

/-! ## A276653.P4842377789118649614

`floor(A276651(n+2)/A276652(n+2))`
-/

namespace A276653.P4842377789118649614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A276651 (n + 2) : ℚ) / (A276652 (n + 2) : ℚ)⌋

end

end A276653.P4842377789118649614

/-! ## A276653.P3203108899832460695

`A056926(C(A276651(n+2), A276652(n+2)))`
-/

namespace A276653.P3203108899832460695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056926 (Nat.choose (A276651 (n + 2)).toNat (A276652 (n + 2)).toNat)

end

end A276653.P3203108899832460695

/-! ## A276653.P10911111753284983332

`A057427(C(A276651(n+2), A276652(n+2)))`
-/

namespace A276653.P10911111753284983332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (Nat.choose (A276651 (n + 2)).toNat (A276652 (n + 2)).toNat)

end

end A276653.P10911111753284983332

/-! ## A276653.P7050655712712842405

`A057428(C(A276651(n+2), A276652(n+2)))²`
-/

namespace A276653.P7050655712712842405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (Nat.choose (A276651 (n + 2)).toNat (A276652 (n + 2)).toNat) ^ 2

end

end A276653.P7050655712712842405

/-! ## A276653.P5907260236422723480

`A087126(C(A276651(n+2), A276652(n+2))+1)²%3`
-/

namespace A276653.P5907260236422723480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A087126 (Nat.choose (A276651 (n + 2)).toNat (A276652 (n + 2)).toNat + 1) ^ 2) 3

end

end A276653.P5907260236422723480

/-! ## A276653.P10939290338836185695

`val(A253139(A002183(n+1)), A059558(n+2))`
-/

namespace A276653.P10939290338836185695
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A253139 (A002183 (n + 1)).toNat).toNat (A059558 (n + 2)).toNat

end

end A276653.P10939290338836185695

/-! ## A276653.P6260975177785949884

`A366289(2*A169739(n+1))`
-/

namespace A276653.P6260975177785949884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366289 (2 * A169739 (n + 1)).toNat

end

end A276653.P6260975177785949884

/-! ## A276653.P7956033658917268049

`A291747(n+1)%A376369(n+2)`
-/

namespace A276653.P7956033658917268049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A291747 (n + 1)) (A376369 (n + 2))

end

end A276653.P7956033658917268049

/-! ## A276653.P10024796795089144253

`A286688(A279858(n+1))`
-/

namespace A276653.P10024796795089144253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286688 (A279858 (n + 1)).toNat

end

end A276653.P10024796795089144253

/-!
# A276655: Numbers j such that Sum_{p|j} 0.p is an integer where p ranges over the prime divisors of j.

The programs for A276655, there is no canonical definition to state claims against.
-/

/-! ## A276655.P7952618027974836460

`record[(n+2)^A318886(A276652(n+2))]`
-/

namespace A276655.P7952618027974836460
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) ^ (A318886 (A276652 (n + 2)).toNat : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A276655.P7952618027974836460

/-! ## A276655.P10063150835050886855

`eq[A026046(n+6)%(n+5), A074372(A233583(n+1))]`
-/

namespace A276655.P10063150835050886855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A026046 (n + 6)) (n + 5 : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074372 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A276655.P10063150835050886855

/-!
# A276656: Nearest integer to the inverse function of the factorial where the exponential of n is the argument.

The programs for A276656, there is no canonical definition to state claims against.
-/

/-! ## A276656.P906055344261267927

`A048766(∑[p?[A330275(n+1)]])`
-/

namespace A276656.P906055344261267927
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330275 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A276656.P906055344261267927

/-! ## A276656.P2873838486251680995

`A048766(∑[A155086(A052294(n+1))])`
-/

namespace A276656.P2873838486251680995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155086 (A052294 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A276656.P2873838486251680995

/-! ## A276656.P5851376011030619264

`A048766(∑[A167499(A228363(n+1))])`
-/

namespace A276656.P5851376011030619264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167499 (A228363 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A276656.P5851376011030619264

/-! ## A276656.P2489236665968937446

`A048766(A154266(n)+A000040(A034856(n+1)))`
-/

namespace A276656.P2489236665968937446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A154266 n + A000040 (A034856 (n + 1)).toNat).toNat

end

end A276656.P2489236665968937446

/-! ## A276656.P17979204010555673173

`floor(log(∑[A280430(n)]))+2`
-/

namespace A276656.P17979204010555673173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280430 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.log ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℝ)⌋ + 2

end

end A276656.P17979204010555673173

/-!
# A276657: Number of ways to occupy n unlabeled phone booths in a circle one by one, each time picking a phone booth adjacent to the smallest number of previously occupied phone booths.

The programs for A276657, there is no canonical definition to state claims against.
-/

/-! ## A276657.P7943259753052350762

`A192009(n+1)/(n+1)`
-/

namespace A276657.P7943259753052350762
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A192009 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A276657.P7943259753052350762

/-!
# A276658: Tribonacci-like sequence a(n) = a(n-1) + a(n-2) + a(n-3) for n >= 3, with a(0) = 1, a(1) = 2, a(2) = 0.

The programs for A276658, the canonical program `A276658.P15196334201113624955` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A276658 has offset 0).

The definition of A276658 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-2)+a(n-3)` (program `A276658.P15196334201113624955`, by `A276658.P15196334201113624955.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A276658.P217086604141997465

`ogf((1+x-3x^2)/(1-x-x^2-x^3))`
-/

namespace A276658.P217086604141997465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, -3] [1, -1, -1, -1] n

end

end A276658.P217086604141997465

namespace A276658

/-- `ogf((1+x-3x^2)/(1-x-x^2-x^3))` -/
def P217086604141997465.Spec : Prop :=
  ∀ n, P217086604141997465.a n = A276658 n

end A276658

/-! ## A276658.P15196334201113624955

`a(n-1)+a(n-2)+a(n-3)` with `a(0)=1, a(1)=2, a(2)=0`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A276658

/-- `a(n-1)+a(n-2)+a(n-3)` -/
def P15196334201113624955.Spec : Prop :=
  ∀ n, (P15196334201113624955.a n : ℤ) = A276658 n

theorem P15196334201113624955.correct : P15196334201113624955.Spec := by
  intro n
  simp only [A276658]

end A276658

/-! ## A276658.P13749235925555916893

`A275778(n)-A000073(n)`
-/

namespace A276658.P13749235925555916893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275778 n - A000073 n

end

end A276658.P13749235925555916893

namespace A276658

/-- `A275778(n)-A000073(n)` -/
def P13749235925555916893.Spec : Prop :=
  ∀ n, P13749235925555916893.a n = A276658 n

end A276658

/-! ## A276658.P2137780608669587371

`2*a(n-1)-a(n-4)` with `a(0)=1, a(1)=2, a(2)=0, a(3)=3`
-/

namespace A276658.P2137780608669587371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 0, 3] fun n a =>
  2 * a (n - 1) - a (n - 4)

end

end A276658.P2137780608669587371

namespace A276658

/-- `2*a(n-1)-a(n-4)` -/
def P2137780608669587371.Spec : Prop :=
  ∀ n, P2137780608669587371.a n = A276658 n

end A276658

/-! ## A276658.P16476273611426590529

`a(n-1)-(a(n-4)-a(n-1))` with `a(0)=1, a(1)=2, a(2)=0, a(3)=3`
-/

namespace A276658.P16476273611426590529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 0, 3] fun n a =>
  a (n - 1) - (a (n - 4) - a (n - 1))

end

end A276658.P16476273611426590529

namespace A276658

/-- `a(n-1)-(a(n-4)-a(n-1))` -/
def P16476273611426590529.Spec : Prop :=
  ∀ n, P16476273611426590529.a n = A276658 n

end A276658

/-! ## A276658.P4401892460654485041

`A081172(n)+A001590(n)`
-/

namespace A276658.P4401892460654485041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081172 n + A001590 n

end

end A276658.P4401892460654485041

namespace A276658

/-- `A081172(n)+A001590(n)` -/
def P4401892460654485041.Spec : Prop :=
  ∀ n, P4401892460654485041.a n = A276658 n

end A276658

/-! ## A276658.P6171678180804228805

`A081172(n)+Δ[A000073(n)]`
-/

namespace A276658.P6171678180804228805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000073 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081172 n + (f1 (n + 1) - f1 n)

end

end A276658.P6171678180804228805

namespace A276658

/-- `A081172(n)+Δ[A000073(n)]` -/
def P6171678180804228805.Spec : Prop :=
  ∀ n, P6171678180804228805.a n = A276658 n

end A276658

/-! ## A276658.P14829900227251685841

`A000213(n)+A001590(n)-A000073(n)`
-/

namespace A276658.P14829900227251685841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000213 n + (A001590 n - A000073 n)

end

end A276658.P14829900227251685841

namespace A276658

/-- `A000213(n)+A001590(n)-A000073(n)` -/
def P14829900227251685841.Spec : Prop :=
  ∀ n, P14829900227251685841.a n = A276658 n

end A276658

/-! ## A276658.P755037702010407061

`A000073(n+1)+A081172(n)-A000073(n)`
-/

namespace A276658.P755037702010407061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000073 (n + 1) + (A081172 n - A000073 n)

end

end A276658.P755037702010407061

namespace A276658

/-- `A000073(n+1)+A081172(n)-A000073(n)` -/
def P755037702010407061.Spec : Prop :=
  ∀ n, P755037702010407061.a n = A276658 n

end A276658

/-! ## A276658.P744272872503769067

`A000213(n)+A000213(n)-A081172(n+1)`
-/

namespace A276658.P744272872503769067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000213 n + (A000213 n - A081172 (n + 1))

end

end A276658.P744272872503769067

namespace A276658

/-- `A000213(n)+A000213(n)-A081172(n+1)` -/
def P744272872503769067.Spec : Prop :=
  ∀ n, P744272872503769067.a n = A276658 n

end A276658

/-! ## A276658.P14586991722514185595

`A000073(n+1)+A000213(n)-A354784(n)`
-/

namespace A276658.P14586991722514185595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000073 (n + 1) + (A000213 n - A354784 n)

end

end A276658.P14586991722514185595

namespace A276658

/-- `A000073(n+1)+A000213(n)-A354784(n)` -/
def P14586991722514185595.Spec : Prop :=
  ∀ n, P14586991722514185595.a n = A276658 n

end A276658

/-! ## A276658.P389366443755232610

`A214727(n)-A354784(n)`
-/

namespace A276658.P389366443755232610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214727 n - A354784 n

end

end A276658.P389366443755232610

namespace A276658

/-- `A214727(n)-A354784(n)` -/
def P389366443755232610.Spec : Prop :=
  ∀ n, P389366443755232610.a n = A276658 n

end A276658

/-! ## A276658.P5931869467228150048

`A141036(n)-Δ[A001590(n)]`
-/

namespace A276658.P5931869467228150048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001590 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141036 n - (f1 (n + 1) - f1 n)

end

end A276658.P5931869467228150048

namespace A276658

/-- `A141036(n)-Δ[A001590(n)]` -/
def P5931869467228150048.Spec : Prop :=
  ∀ n, P5931869467228150048.a n = A276658 n

end A276658

/-! ## A276658.P5227244962627166479

`A214727(n)-Δ[A000213(n)]`
-/

namespace A276658.P5227244962627166479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000213 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214727 n - (f1 (n + 1) - f1 n)

end

end A276658.P5227244962627166479

namespace A276658

/-- `A214727(n)-Δ[A000213(n)]` -/
def P5227244962627166479.Spec : Prop :=
  ∀ n, P5227244962627166479.a n = A276658 n

end A276658

/-! ## A276658.P2159252343027678962

`A214727(n)-2*A000073(n)`
-/

namespace A276658.P2159252343027678962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214727 n - 2 * A000073 n

end

end A276658.P2159252343027678962

namespace A276658

/-- `A214727(n)-2*A000073(n)` -/
def P2159252343027678962.Spec : Prop :=
  ∀ n, P2159252343027678962.a n = A276658 n

end A276658

/-! ## A276658.P2740707016274322123

`A275778(n)-A354784(n)/2`
-/

namespace A276658.P2740707016274322123
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A275778 n : ℚ) - (A354784 n : ℚ) / 2

end

end A276658.P2740707016274322123

namespace A276658

/-- `A275778(n)-A354784(n)/2` -/
def P2740707016274322123.Spec : Prop :=
  ∀ n, P2740707016274322123.a n = (A276658 n : ℚ)

end A276658

/-! ## A276658.P8531988808550061420

`A020992(n)+A020992(n)-A100683(n)`
-/

namespace A276658.P8531988808550061420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020992 n + (A020992 n - A100683 n)

end

end A276658.P8531988808550061420

namespace A276658

/-- `A020992(n)+A020992(n)-A100683(n)` -/
def P8531988808550061420.Spec : Prop :=
  ∀ n, P8531988808550061420.a n = A276658 n

end A276658

/-! ## A276658.P7822845952904650674

`A020992(n)+A141523(n)-A214899(n)`
-/

namespace A276658.P7822845952904650674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020992 n + (A141523 n - A214899 n)

end

end A276658.P7822845952904650674

namespace A276658

/-- `A020992(n)+A141523(n)-A214899(n)` -/
def P7822845952904650674.Spec : Prop :=
  ∀ n, P7822845952904650674.a n = A276658 n

end A276658

/-! ## A276658.P10551289944942393806

`A275778(n)+A275778(n)-A214727(n)`
-/

namespace A276658.P10551289944942393806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275778 n + (A275778 n - A214727 n)

end

end A276658.P10551289944942393806

namespace A276658

/-- `A275778(n)+A275778(n)-A214727(n)` -/
def P10551289944942393806.Spec : Prop :=
  ∀ n, P10551289944942393806.a n = A276658 n

end A276658

/-! ## A276658.P8780803016992401607

`A214899(n)-(A000073(n)+Δ[A001590(n)])`
-/

namespace A276658.P8780803016992401607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001590 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214899 n - (A000073 n + (f1 (n + 1) - f1 n))

end

end A276658.P8780803016992401607

namespace A276658

/-- `A214899(n)-(A000073(n)+Δ[A001590(n)])` -/
def P8780803016992401607.Spec : Prop :=
  ∀ n, P8780803016992401607.a n = A276658 n

end A276658

/-!
# A276659: Accumulation of the upper left triangle used in binomial transform of nonnegative integers.

The programs for A276659, the canonical program `A276659.P3187042620927487117` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A276659 has offset 0).

The definition of A276659 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A276659.P3187042620927487117

`a(n-1)+A058877(n+1)` with `a(0)=0`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A276659

/-- `a(n-1)+A058877(n+1)` -/
def P3187042620927487117.Spec : Prop :=
  ∀ n, P3187042620927487117.a n = A276659 n

theorem P3187042620927487117.correct : P3187042620927487117.Spec := by
  intro n
  simp only [A276659]

end A276659

/-! ## A276659.P16393234996654097209

`(2^(n+2)-n-3)*n/2`
-/

namespace A276659.P16393234996654097209
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((2 ^ (n + 2) : ℤ) - (n : ℤ) - 3) * (n : ℤ) : ℚ) / 2

end

end A276659.P16393234996654097209

namespace A276659

/-- `(2^(n+2)-n-3)*n/2` -/
def P16393234996654097209.Spec : Prop :=
  ∀ n, P16393234996654097209.a n = (A276659 n : ℚ)

theorem P16393234996654097209.correct : P16393234996654097209.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A276659, Nat.add_sub_cancel, A276659.P16393234996654097209.a, A276659.P3187042620927487117.a, A058877, A058877.P1227274421615768529.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A276659, Nat.add_sub_cancel, A276659.P16393234996654097209.a, A276659.P3187042620927487117.a, A058877, A058877.P1227274421615768529.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A276659

/-! ## A276659.P11686596047340297766

`ogf((2x-3x^2)/(1-7x+19x^2-25x^3+16x^4-4x^5))`
-/

namespace A276659.P11686596047340297766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 2, -3] [1, -7, 19, -25, 16, -4] n

end

end A276659.P11686596047340297766

namespace A276659

/-- `ogf((2x-3x^2)/(1-7x+19x^2-25x^3+16x^4-4x^5))` -/
def P11686596047340297766.Spec : Prop :=
  ∀ n, P11686596047340297766.a n = A276659 n

end A276659

/-! ## A276659.P12010931797432650588

`∑[∑[∑[ogf((2x-3x^2)/(1-4x+4x^2))]]]`
-/

namespace A276659.P12010931797432650588
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 2, -3] [1, -4, 4] n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A276659.P12010931797432650588

namespace A276659

/-- `∑[∑[∑[ogf((2x-3x^2)/(1-4x+4x^2))]]]` -/
def P12010931797432650588.Spec : Prop :=
  ∀ n, P12010931797432650588.a n = A276659 n

end A276659

/-! ## A276659.P3292344414164407729

`n*∑[2*a(n-1)]-∑[n]` with `a(0)=1`
-/

namespace A276659.P3292344414164407729
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  2 * f1 (n - 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n * (∑ j ∈ Finset.range (n + 1), f1 j) : ℕ) : ℤ) - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A276659.P3292344414164407729

namespace A276659

/-- `n*∑[2*a(n-1)]-∑[n]` -/
def P3292344414164407729.Spec : Prop :=
  ∀ n, P3292344414164407729.a n = A276659 n

end A276659

/-! ## A276659.P11532338727296001520

`a(n-1)+(n+1)*(2^n-1)` with `a(0)=0`
-/

namespace A276659.P11532338727296001520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (n + 1 : ℤ) * ((2 ^ n : ℤ) - 1)

end

end A276659.P11532338727296001520

namespace A276659

/-- `a(n-1)+(n+1)*(2^n-1)` -/
def P11532338727296001520.Spec : Prop :=
  ∀ n, P11532338727296001520.a n = A276659 n

end A276659

/-! ## A276659.P763161044782438812

`∑[A058877(n+1)]`
-/

namespace A276659.P763161044782438812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058877 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A276659.P763161044782438812

namespace A276659

/-- `∑[A058877(n+1)]` -/
def P763161044782438812.Spec : Prop :=
  ∀ n, P763161044782438812.a n = A276659 n

end A276659

/-! ## A276659.P16594124255731065987

`∑[A048493(n)-1]`
-/

namespace A276659.P16594124255731065987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048493 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A276659.P16594124255731065987

namespace A276659

/-- `∑[A048493(n)-1]` -/
def P16594124255731065987.Spec : Prop :=
  ∀ n, P16594124255731065987.a n = A276659 n

end A276659

/-! ## A276659.P3110935393563828377

`A059672(n)-∑[n]`
-/

namespace A276659.P3110935393563828377
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059672 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A276659.P3110935393563828377

namespace A276659

/-- `A059672(n)-∑[n]` -/
def P3110935393563828377.Spec : Prop :=
  ∀ n, P3110935393563828377.a n = A276659 n

end A276659

/-! ## A276659.P13187312087760005150

`∑[A087323(n)-n]`
-/

namespace A276659.P13187312087760005150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087323 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A276659.P13187312087760005150

namespace A276659

/-- `∑[A087323(n)-n]` -/
def P13187312087760005150.Spec : Prop :=
  ∀ n, P13187312087760005150.a n = A276659 n

end A276659

/-! ## A276659.P1127895312111286958

`∑[∑[A001792(n)-1]]`
-/

namespace A276659.P1127895312111286958
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001792 n - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A276659.P1127895312111286958

namespace A276659

/-- `∑[∑[A001792(n)-1]]` -/
def P1127895312111286958.Spec : Prop :=
  ∀ n, P1127895312111286958.a n = A276659 n

end A276659

/-! ## A276659.P10857599753191814298

`∑[A092442(n)+n²]`
-/

namespace A276659.P10857599753191814298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092442 n + (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A276659.P10857599753191814298

namespace A276659

/-- `∑[A092442(n)+n²]` -/
def P10857599753191814298.Spec : Prop :=
  ∀ n, P10857599753191814298.a n = A276659 n

end A276659

/-! ## A276659.P7984560434089465193

`∑[Δ[A188716(n)]-n]`
-/

namespace A276659.P7984560434089465193
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188716 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A276659.P7984560434089465193

namespace A276659

/-- `∑[Δ[A188716(n)]-n]` -/
def P7984560434089465193.Spec : Prop :=
  ∀ n, P7984560434089465193.a n = A276659 n

end A276659

/-! ## A276659.P3069721988636029069

`∑[(n+1)*A000225(n)]`
-/

namespace A276659.P3069721988636029069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000225 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A276659.P3069721988636029069

namespace A276659

/-- `∑[(n+1)*A000225(n)]` -/
def P3069721988636029069.Spec : Prop :=
  ∀ n, P3069721988636029069.a n = A276659 n

end A276659

/-! ## A276659.P8881720334882788656

`n/2*A125128(n+1)`
-/

namespace A276659.P8881720334882788656
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 2 * (A125128 (n + 1) : ℚ)

end

end A276659.P8881720334882788656

namespace A276659

/-- `n/2*A125128(n+1)` -/
def P8881720334882788656.Spec : Prop :=
  ∀ n, P8881720334882788656.a n = (A276659 n : ℚ)

theorem P8881720334882788656.correct : P8881720334882788656.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A276659, Nat.add_sub_cancel, A276659.P8881720334882788656.a, A276659.P3187042620927487117.a, A058877, A058877.P1227274421615768529.a, A125128, A125128.P15302475142462672969.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A276659, Nat.add_sub_cancel, A276659.P8881720334882788656.a, A276659.P3187042620927487117.a, A058877, A058877.P1227274421615768529.a, A125128, A125128.P15302475142462672969.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A276659

/-! ## A276659.P7888950874457213819

`∑[∑[A211227(2*n)-1]]`
-/

namespace A276659.P7888950874457213819
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211227 (2 * n) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A276659.P7888950874457213819

namespace A276659

/-- `∑[∑[A211227(2*n)-1]]` -/
def P7888950874457213819.Spec : Prop :=
  ∀ n, P7888950874457213819.a n = A276659 n

end A276659

/-! ## A276659.P284450666600575813

`∑[Δ[A000337(n)]-(n+1)]`
-/

namespace A276659.P284450666600575813
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000337 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A276659.P284450666600575813

namespace A276659

/-- `∑[Δ[A000337(n)]-(n+1)]` -/
def P284450666600575813.Spec : Prop :=
  ∀ n, P284450666600575813.a n = A276659 n

end A276659

/-! ## A276659.P16974587867810848177

`A000337(n+1)-∑[n+1]`
-/

namespace A276659.P16974587867810848177
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000337 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A276659.P16974587867810848177

namespace A276659

/-- `A000337(n+1)-∑[n+1]` -/
def P16974587867810848177.Spec : Prop :=
  ∀ n, P16974587867810848177.a n = A276659 n

end A276659

/-! ## A276659.P8834202882346113183

`∑[A001787(n+1)-(n+1)]`
-/

namespace A276659.P8834202882346113183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001787 (n + 1) - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A276659.P8834202882346113183

namespace A276659

/-- `∑[A001787(n+1)-(n+1)]` -/
def P8834202882346113183.Spec : Prop :=
  ∀ n, P8834202882346113183.a n = A276659 n

end A276659

/-!
# A276660: Primes of the form p*2^k - 1 where p is an odd prime and k >= 0.

The programs for A276660, there is no canonical definition to state claims against.
-/

/-! ## A276660.P12828192290041557017

`p?[A038550(n+1)-1]`
-/

namespace A276660.P12828192290041557017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038550 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A276660.P12828192290041557017

/-! ## A276660.P3309760756166955217

`p?[eq[2, A001227(n+1)]]`
-/

namespace A276660.P3309760756166955217
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A276660.P3309760756166955217

/-! ## A276660.P11466798974499772080

`p?[eq[2, A336158(n+1)]]`
-/

namespace A276660.P11466798974499772080
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336158 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A276660.P11466798974499772080

/-! ## A276660.P8936928471233526519

`p?[n*A069283(n+1)]`
-/

namespace A276660.P8936928471233526519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A069283 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A276660.P8936928471233526519

/-! ## A276660.P7096018233259683226

`p?[n*A087436(n+1)]`
-/

namespace A276660.P7096018233259683226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A087436 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A276660.P7096018233259683226

/-! ## A276660.P10535015801015096621

`p?[n*A318451(n+1)]`
-/

namespace A276660.P10535015801015096621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A318451 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A276660.P10535015801015096621

/-! ## A276660.P2385690925815797862

`p?[n*A325392(n+1)]`
-/

namespace A276660.P2385690925815797862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A325392 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A276660.P2385690925815797862

/-! ## A276660.P13870966449046251909

`p?[n*A325403(n+1)]`
-/

namespace A276660.P13870966449046251909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A325403 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A276660.P13870966449046251909

/-! ## A276660.P8925435266187373056

`p?[n*A353670(n+1)]`
-/

namespace A276660.P8925435266187373056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A353670 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A276660.P8925435266187373056

/-! ## A276660.P233707216580979206

`p?[ceil(A238905(n+1)/3)]`
-/

namespace A276660.P233707216580979206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A238905 (n + 1) : ℚ) / 3⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A276660.P233707216580979206

/-!
# A276661: Least k such that there is a set S in {1, 2, ..., k} with n elements and the property that each of its subsets has a distinct sum.

The programs for A276661, there is no canonical definition to state claims against.
-/

/-! ## A276661.P7980158181003270366

`A005318(n)+char[11]`
-/

namespace A276661.P7980158181003270366
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005318 n + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A276661.P7980158181003270366

/-! ## A276661.P9396499937488791757

`A349777(n+1)-1`
-/

namespace A276661.P9396499937488791757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349777 (n + 1) - 1

end

end A276661.P9396499937488791757

/-! ## A276661.P6735874247831197120

`A005318(comp[11*(n+1)])`
-/

namespace A276661.P6735874247831197120
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005318 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A276661.P6735874247831197120

/-! ## A276661.P16817816005823726146

`A004180(A005318(n))`
-/

namespace A276661.P16817816005823726146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004180 (A005318 n).toNat

end

end A276661.P16817816005823726146

/-! ## A276661.P1303403450720403573

`A205744(A298871(n))`
-/

namespace A276661.P1303403450720403573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205744 (A298871 n).toNat

end

end A276661.P1303403450720403573

/-!
# A276662: Iterative procedure in A316941 applied to the odd composite numbers (A071904) (a(n) = -1 if no prime is ever reached).

The programs for A276662, there is no canonical definition to state claims against.
-/

/-! ## A276662.P7221099989169038632

`A316941(A071904(n+1))`
-/

namespace A276662.P7221099989169038632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316941 (A071904 (n + 1)).toNat

end

end A276662.P7221099989169038632

/-! ## A276662.P10454296953719668540

`A316941(A014076(n+2))`
-/

namespace A276662.P10454296953719668540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316941 (A014076 (n + 2)).toNat

end

end A276662.P10454296953719668540

/-! ## A276662.P7676401487153662191

`A316941(eq[1, A107393(n)])`
-/

namespace A276662.P7676401487153662191
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107393 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316941 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A276662.P7676401487153662191

/-! ## A276662.P4456695199511142502

`A316941(A309355(n+1)+1)`
-/

namespace A276662.P4456695199511142502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316941 (A309355 (n + 1) + 1).toNat

end

end A276662.P4456695199511142502

/-! ## A276662.P5371479886639797107

`A316941(A146538(n+1)+3)`
-/

namespace A276662.P5371479886639797107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316941 (A146538 (n + 1) + 3).toNat

end

end A276662.P5371479886639797107

/-!
# A276663: Sum of primes dividing n-th perfect number (with repetition).

The programs for A276663, there is no canonical definition to state claims against.
-/

/-! ## A276663.P6097825116638295319

`2^A000043(n+1)+2*A000043(n+1)-3`
-/

namespace A276663.P6097825116638295319
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A000043 (n + 1) : ℤ) + (2 * A000043 (n + 1) : ℚ) - 3

end

end A276663.P6097825116638295319

/-! ## A276663.P7829139184122847080

`record[A049479(n+2)+2*(n+1)]`
-/

namespace A276663.P7829139184122847080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049479 (n + 2) + (2 * (n + 1) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A276663.P7829139184122847080

/-! ## A276663.P14439833606625975092

`A131898(A090748(n+1))`
-/

namespace A276663.P14439833606625975092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131898 (A090748 (n + 1)).toNat

end

end A276663.P14439833606625975092

/-! ## A276663.P4469499893667241175

`A131898(A153798(n+1)+1)`
-/

namespace A276663.P4469499893667241175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131898 (A153798 (n + 1) + 1).toNat

end

end A276663.P4469499893667241175

/-! ## A276663.P1672331172573307303

`A131898(A000043(n+1)-1)`
-/

namespace A276663.P1672331172573307303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131898 (A000043 (n + 1) - 1).toNat

end

end A276663.P1672331172573307303

/-!
# A276664: Number of solutions to the congruence y^2 == x^3 - x^2 + 4*x - 4 (mod p) as p runs through the primes.

The programs for A276664, there is no canonical definition to state claims against.
-/

/-! ## A276664.P5448627619888925667

`Δ[A007504(n)]-A276695(n+1)`
-/

namespace A276664.P5448627619888925667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A276695 (n + 1)

end

end A276664.P5448627619888925667

/-! ## A276664.P11161137539264999165

`A000040(n+1)-A276695(n+1)`
-/

namespace A276664.P11161137539264999165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - A276695 (n + 1)

end

end A276664.P11161137539264999165

/-! ## A276664.P11913881108156999357

`A272207(n+1)+A273163(n+1)-A276695(n+1)`
-/

namespace A276664.P11913881108156999357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272207 (n + 1) + (A273163 (n + 1) - A276695 (n + 1))

end

end A276664.P11913881108156999357

/-! ## A276664.P8294913905274862595

`A008578(n+2)-A276695(n+1)`
-/

namespace A276664.P8294913905274862595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 2) - A276695 (n + 1)

end

end A276664.P8294913905274862595

/-! ## A276664.P4694609267543631133

`p?[A000961(n+1)]-A276695(n+1)`
-/

namespace A276664.P4694609267543631133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - A276695 (n + 1)

end

end A276664.P4694609267543631133

/-! ## A276664.P29767730570472381

`p?[A026424(n+1)]-A276695(n+1)`
-/

namespace A276664.P29767730570472381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026424 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - A276695 (n + 1)

end

end A276664.P29767730570472381

/-! ## A276664.P14423698708832488871

`record[A051698(n)]-A276695(n+1)`
-/

namespace A276664.P14423698708832488871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051698 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A276695 (n + 1)

end

end A276664.P14423698708832488871

/-! ## A276664.P10175251659821827270

`p?[A014681(n)]-A276695(n+1)`
-/

namespace A276664.P10175251659821827270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - A276695 (n + 1)

end

end A276664.P10175251659821827270

/-! ## A276664.P18093868192052528567

`p?[A090223(n)]-A276695(n+1)`
-/

namespace A276664.P18093868192052528567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090223 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - A276695 (n + 1)

end

end A276664.P18093868192052528567

/-! ## A276664.P14069816050085298749

`p?[A004526(A003815(n))]-A276695(n+1)`
-/

namespace A276664.P14069816050085298749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A003815 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - A276695 (n + 1)

end

end A276664.P14069816050085298749

/-!
# A276665: In the '3x+1' problem, these values for the starting value set new records for both the number of steps and the highest point of trajectory before reaching 1.

The programs for A276665, there is no canonical definition to state claims against.
-/

/-! ## A276665.P15428977767291696402

`A006884(A017986(n))`
-/

namespace A276665.P15428977767291696402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006884 (A017986 n).toNat

end

end A276665.P15428977767291696402

/-! ## A276665.P6009260762400229932

`A006884(A018142(n))`
-/

namespace A276665.P6009260762400229932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006884 (A018142 n).toNat

end

end A276665.P6009260762400229932

/-! ## A276665.P7238032009393316154

`A006884(A342759(n))`
-/

namespace A276665.P7238032009393316154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006884 (A342759 n).toNat

end

end A276665.P7238032009393316154

/-!
# A276666: a(n) = (n-1)*Catalan(n).

The programs for A276666, the canonical program `A276666.P3198409013776322395` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A276666 has offset 0).

The definition of A276666 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n-1)*A000108(n)` (program `A276666.P3198409013776322395`, by `A276666.P3198409013776322395.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A276666.P3198409013776322395

`(n-1)*A000108(n)`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A276666

/-- `(n-1)*A000108(n)` -/
def P3198409013776322395.Spec : Prop :=
  ∀ n, P3198409013776322395.a n = A276666 n

theorem P3198409013776322395.correct : P3198409013776322395.Spec := by
  intro n
  simp only [A276666]

end A276666

/-! ## A276666.P223053164440974407

`A000984(n+1)-3*A000984(n)`
-/

namespace A276666.P223053164440974407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 (n + 1) - 3 * A000984 n

end

end A276666.P223053164440974407

namespace A276666

/-- `A000984(n+1)-3*A000984(n)` -/
def P223053164440974407.Spec : Prop :=
  ∀ n, P223053164440974407.a n = A276666 n

end A276666

/-! ## A276666.P9157106467075564878

`A232500(2*n)`
-/

namespace A276666.P9157106467075564878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232500 (2 * n)

end

end A276666.P9157106467075564878

namespace A276666

/-- `A232500(2*n)` -/
def P9157106467075564878.Spec : Prop :=
  ∀ n, P9157106467075564878.a n = A276666 n

end A276666

/-! ## A276666.P17220689884972148761

`A056040(2*n)*(1-2/(n+1))`
-/

namespace A276666.P17220689884972148761
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056040 (2 * n) : ℚ) * (1 - 2 / (n + 1 : ℚ))

end

end A276666.P17220689884972148761

namespace A276666

/-- `A056040(2*n)*(1-2/(n+1))` -/
def P17220689884972148761.Spec : Prop :=
  ∀ n, P17220689884972148761.a n = (A276666 n : ℚ)

end A276666

/-! ## A276666.P14402859535436725992

`A056040(2*n)-2*A057977(2*n)`
-/

namespace A276666.P14402859535436725992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056040 (2 * n) - 2 * A057977 (2 * n)

end

end A276666.P14402859535436725992

namespace A276666

/-- `A056040(2*n)-2*A057977(2*n)` -/
def P14402859535436725992.Spec : Prop :=
  ∀ n, P14402859535436725992.a n = A276666 n

end A276666

/-! ## A276666.P2684746868348235399

`a(n-1)*2*(n-1)*(2*n-1)/((n-2)*(n+1))` with `a(0)=-1, a(1)=0, a(2)=2`
-/

namespace A276666.P2684746868348235399
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [-1, 0, 2] fun n a =>
  a (n - 1) * 2 * ((n : ℤ) - 1 : ℚ) * ((2 * n : ℤ) - 1 : ℚ) / (((n : ℤ) - 2) * (n + 1 : ℤ) : ℚ)

end

end A276666.P2684746868348235399

namespace A276666

/-- `a(n-1)*2*(n-1)*(2*n-1)/((n-2)*(n+1))` -/
def P2684746868348235399.Spec : Prop :=
  ∀ n, P2684746868348235399.a n = (A276666 n : ℚ)

end A276666

/-! ## A276666.P7273481907796373920

`(1-n)*A115140(n+1)`
-/

namespace A276666.P7273481907796373920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (n : ℤ)) * A115140 (n + 1)

end

end A276666.P7273481907796373920

namespace A276666

/-- `(1-n)*A115140(n+1)` -/
def P7273481907796373920.Spec : Prop :=
  ∀ n, P7273481907796373920.a n = A276666 n

end A276666

/-! ## A276666.P9878962257366857984

`(n-1)*A120588(n+1)`
-/

namespace A276666.P9878962257366857984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * A120588 (n + 1)

end

end A276666.P9878962257366857984

namespace A276666

/-- `(n-1)*A120588(n+1)` -/
def P9878962257366857984.Spec : Prop :=
  ∀ n, P9878962257366857984.a n = A276666 n

end A276666

/-! ## A276666.P7902491526150840247

`(n-1)*A028303(2*n)`
-/

namespace A276666.P7902491526150840247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * A028303 (2 * n)

end

end A276666.P7902491526150840247

namespace A276666

/-- `(n-1)*A028303(2*n)` -/
def P7902491526150840247.Spec : Prop :=
  ∀ n, P7902491526150840247.a n = A276666 n

end A276666

/-! ## A276666.P17565837676189974638

`(n-1)*A028304(2*n)`
-/

namespace A276666.P17565837676189974638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * A028304 (2 * n)

end

end A276666.P17565837676189974638

namespace A276666

/-- `(n-1)*A028304(2*n)` -/
def P17565837676189974638.Spec : Prop :=
  ∀ n, P17565837676189974638.a n = A276666 n

end A276666

/-! ## A276666.P8242026086398398000

`(n-1)*A057977(2*n)`
-/

namespace A276666.P8242026086398398000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * A057977 (2 * n)

end

end A276666.P8242026086398398000

namespace A276666

/-- `(n-1)*A057977(2*n)` -/
def P8242026086398398000.Spec : Prop :=
  ∀ n, P8242026086398398000.a n = A276666 n

end A276666

/-! ## A276666.P15988966660888198716

`(n-1)*A099363(2*n)`
-/

namespace A276666.P15988966660888198716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * A099363 (2 * n)

end

end A276666.P15988966660888198716

namespace A276666

/-- `(n-1)*A099363(2*n)` -/
def P15988966660888198716.Spec : Prop :=
  ∀ n, P15988966660888198716.a n = A276666 n

end A276666

/-! ## A276666.P7218927497075964326

`(n-1)*A126120(2*n)`
-/

namespace A276666.P7218927497075964326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * A126120 (2 * n)

end

end A276666.P7218927497075964326

namespace A276666

/-- `(n-1)*A126120(2*n)` -/
def P7218927497075964326.Spec : Prop :=
  ∀ n, P7218927497075964326.a n = A276666 n

end A276666

/-! ## A276666.P8829115956275934122

`(n-1)*A126324(2*n)`
-/

namespace A276666.P8829115956275934122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * A126324 (2 * n)

end

end A276666.P8829115956275934122

namespace A276666

/-- `(n-1)*A126324(2*n)` -/
def P8829115956275934122.Spec : Prop :=
  ∀ n, P8829115956275934122.a n = A276666 n

end A276666

/-! ## A276666.P17394629877833833018

`(n-1)*A208355(2*n)`
-/

namespace A276666.P17394629877833833018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * A208355 (2 * n)

end

end A276666.P17394629877833833018

namespace A276666

/-- `(n-1)*A208355(2*n)` -/
def P17394629877833833018.Spec : Prop :=
  ∀ n, P17394629877833833018.a n = A276666 n

end A276666

/-! ## A276666.P14586239864336558662

`(n-1)*A089408(2*n+1)`
-/

namespace A276666.P14586239864336558662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * A089408 (2 * n + 1)

end

end A276666.P14586239864336558662

namespace A276666

/-- `(n-1)*A089408(2*n+1)` -/
def P14586239864336558662.Spec : Prop :=
  ∀ n, P14586239864336558662.a n = A276666 n

end A276666

/-! ## A276666.P13680756376663364657

`(n-1)*A089849(2*n+1)`
-/

namespace A276666.P13680756376663364657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * A089849 (2 * n + 1)

end

end A276666.P13680756376663364657

namespace A276666

/-- `(n-1)*A089849(2*n+1)` -/
def P13680756376663364657.Spec : Prop :=
  ∀ n, P13680756376663364657.a n = A276666 n

end A276666

/-! ## A276666.P17229412688933731377

`(n-1)*A097331(2*n+1)`
-/

namespace A276666.P17229412688933731377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * A097331 (2 * n + 1)

end

end A276666.P17229412688933731377

namespace A276666

/-- `(n-1)*A097331(2*n+1)` -/
def P17229412688933731377.Spec : Prop :=
  ∀ n, P17229412688933731377.a n = A276666 n

end A276666

/-!
# A276667: a(n) = numerator(b(2*n)) with b(n) = n!*Bernoulli(n,1/2)/(n*(n-1)) for n>=2, b(0)=1, b(1)=0.

The programs for A276667, there is no canonical definition to state claims against.
-/

/-! ## A276667.P16920182482541524391

`A335953(∑[4*n+1]+1)`
-/

namespace A276667.P16920182482541524391
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335953 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A276667.P16920182482541524391

/-!
# A276669: Triangle read by rows T(n,k) in which row n lists the first 2n-1 nonnegative integers representing 2n-1 equidistant points labeled in counterclockwise direction around a circle, with the 0th point at the top and reading them from left to right.

The programs for A276669, there is no canonical definition to state claims against.
-/

/-! ## A276669.P17038295410865809131

`and(A123547(A165826(n+1)), A286610(n+1))`
-/

namespace A276669.P17038295410865809131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A123547 (A165826 (n + 1)).toNat) (A286610 (n + 1))

end

end A276669.P17038295410865809131

/-! ## A276669.P1797625011713386367

`A037853(C(A000040(n+1), A033676(n+1)))`
-/

namespace A276669.P1797625011713386367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037853 (Nat.choose (A000040 (n + 1)).toNat (A033676 (n + 1)).toNat)

end

end A276669.P1797625011713386367

/-! ## A276669.P16228228761590571392

`A001222(n+1)*A326787(A326748(n))`
-/

namespace A276669.P16228228761590571392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) * A326787 (A326748 n).toNat

end

end A276669.P16228228761590571392

/-! ## A276669.P12745293828786075864

`and(A066328(A249513(n)), A137752(n+1))`
-/

namespace A276669.P12745293828786075864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A066328 (A249513 n).toNat) (A137752 (n + 1))

end

end A276669.P12745293828786075864

/-! ## A276669.P6141721582806973181

`and(A066328(A249513(n)), A329382(n+1))`
-/

namespace A276669.P6141721582806973181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A066328 (A249513 n).toNat) (A329382 (n + 1))

end

end A276669.P6141721582806973181

/-!
# A276670: Numerator of (n-1)*n*(n+1)/4.

The programs for A276670, the canonical program `A276670.P10613911067036995534` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A276670 has offset 0).

The definition of A276670 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A276670.P12978090655001861232

`lcm(4, n-n^3)/4`
-/

namespace A276670.P12978090655001861232
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 4 ((n : ℤ) - (n ^ 3 : ℤ)) : ℚ) / 4

end

end A276670.P12978090655001861232

namespace A276670

/-- `lcm(4, n-n^3)/4` -/
def P12978090655001861232.Spec : Prop :=
  ∀ n, P12978090655001861232.a n = (A276670 n : ℚ)

end A276670

/-! ## A276670.P10613911067036995534

`3*A138190((2*n)%(n+1)+1)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A276670

/-- `3*A138190((2*n)%(n+1)+1)` -/
def P10613911067036995534.Spec : Prop :=
  ∀ n, P10613911067036995534.a n = A276670 n

theorem P10613911067036995534.correct : P10613911067036995534.Spec := by
  intro n
  simp only [A276670]

end A276670

/-! ## A276670.P17751100772027316755

`3*A138190(A028310(n))`
-/

namespace A276670.P17751100772027316755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A138190 (A028310 n).toNat

end

end A276670.P17751100772027316755

namespace A276670

/-- `3*A138190(A028310(n))` -/
def P17751100772027316755.Spec : Prop :=
  ∀ n, P17751100772027316755.a n = A276670 n

end A276670

/-! ## A276670.P1368507485924730689

`A010704(n)*A208950(n)`
-/

namespace A276670.P1368507485924730689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010704 n * A208950 n

end

end A276670.P1368507485924730689

namespace A276670

/-- `A010704(n)*A208950(n)` -/
def P1368507485924730689.Spec : Prop :=
  ∀ n, P1368507485924730689.a n = A276670 n

end A276670

/-! ## A276670.P2809908055304563482

`A043547(n+1)*A185138(n)`
-/

namespace A276670.P2809908055304563482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043547 (n + 1) * A185138 n

end

end A276670.P2809908055304563482

namespace A276670

/-- `A043547(n+1)*A185138(n)` -/
def P2809908055304563482.Spec : Prop :=
  ∀ n, P2809908055304563482.a n = A276670 n

end A276670

/-! ## A276670.P9195402231055541068

`3*A000034(n)*A208950(n)`
-/

namespace A276670.P9195402231055541068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A000034 n * A208950 n

end

end A276670.P9195402231055541068

namespace A276670

/-- `3*A000034(n)*A208950(n)` -/
def P9195402231055541068.Spec : Prop :=
  ∀ n, P9195402231055541068.a n = A276670 n

end A276670

/-! ## A276670.P7219332957206686640

`A135503(n)/gcd(2, A135503(n))`
-/

namespace A276670.P7219332957206686640
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A135503 n : ℚ) / (Int.gcd 2 (A135503 n) : ℚ)

end

end A276670.P7219332957206686640

namespace A276670

/-- `A135503(n)/gcd(2, A135503(n))` -/
def P7219332957206686640.Spec : Prop :=
  ∀ n, P7219332957206686640.a n = (A276670 n : ℚ)

end A276670

/-! ## A276670.P2171627457902244352

`A006011(n)/gcd(n, A280167(n)²)`
-/

namespace A276670.P2171627457902244352
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006011 n : ℚ) / (Int.gcd (n : ℤ) (A280167 n ^ 2) : ℚ)

end

end A276670.P2171627457902244352

namespace A276670

/-- `A006011(n)/gcd(n, A280167(n)²)` -/
def P2171627457902244352.Spec : Prop :=
  ∀ n, P2171627457902244352.a n = (A276670 n : ℚ)

end A276670

/-! ## A276670.P9881894551182575274

`(n+1)/2*A177704(n+1)*C(n, 2)`
-/

namespace A276670.P9881894551182575274
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 2 * (A177704 (n + 1) : ℚ) * (Nat.choose n 2 : ℚ)

end

end A276670.P9881894551182575274

namespace A276670

/-- `(n+1)/2*A177704(n+1)*C(n, 2)` -/
def P9881894551182575274.Spec : Prop :=
  ∀ n, P9881894551182575274.a n = (A276670 n : ℚ)

end A276670

/-! ## A276670.P3947353129542674414

`A007531(n+1)/gcd(4, A007531(n+1))`
-/

namespace A276670.P3947353129542674414
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007531 (n + 1) : ℚ) / (Int.gcd 4 (A007531 (n + 1)) : ℚ)

end

end A276670.P3947353129542674414

namespace A276670

/-- `A007531(n+1)/gcd(4, A007531(n+1))` -/
def P3947353129542674414.Spec : Prop :=
  ∀ n, P3947353129542674414.a n = (A276670 n : ℚ)

end A276670

/-! ## A276670.P18167237626250570836

`A106609(2*n)*A214630(2*n)`
-/

namespace A276670.P18167237626250570836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106609 (2 * n) * A214630 (2 * n)

end

end A276670.P18167237626250570836

namespace A276670

/-- `A106609(2*n)*A214630(2*n)` -/
def P18167237626250570836.Spec : Prop :=
  ∀ n, P18167237626250570836.a n = A276670 n

end A276670

/-! ## A276670.P5472721795423382721

`A026741(A026741(n))*A214630(2*n)`
-/

namespace A276670.P5472721795423382721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A026741 n).toNat * A214630 (2 * n)

end

end A276670.P5472721795423382721

namespace A276670

/-- `A026741(A026741(n))*A214630(2*n)` -/
def P5472721795423382721.Spec : Prop :=
  ∀ n, P5472721795423382721.a n = A276670 n

end A276670

/-!
# A276675: A repetition-resistant sequence.

The programs for A276675, there is no canonical definition to state claims against.
-/

/-! ## A276675.P11107418595354909531

`A333816(or(A000070(n+3), A029965(n+1)))`
-/

namespace A276675.P11107418595354909531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333816 (Int.lor (A000070 (n + 3)) (A029965 (n + 1))).toNat

end

end A276675.P11107418595354909531

/-! ## A276675.P4361556940266712013

`(A232565(n+1)%A303998(3*n+5))%A232398(n+5)`
-/

namespace A276675.P4361556940266712013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod (A232565 (n + 1)) (A303998 (3 * n + 5))) (A232398 (n + 5))

end

end A276675.P4361556940266712013

/-! ## A276675.P17747750484267008975

`A287112(A001005(n)+1)`
-/

namespace A276675.P17747750484267008975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287112 (A001005 n + 1).toNat

end

end A276675.P17747750484267008975

/-! ## A276675.P3851504164961333198

`A101662(A157908(n²+1))`
-/

namespace A276675.P3851504164961333198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101662 (A157908 (n ^ 2 + 1)).toNat

end

end A276675.P3851504164961333198

/-! ## A276675.P6662810801274112770

`A086071(A155212(∑[n+1]+1))`
-/

namespace A276675.P6662810801274112770
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086071 (A155212 (∑ j ∈ Finset.range (n + 1), f1 j + 1)).toNat

end

end A276675.P6662810801274112770

/-!
# A276676: Triangle read by rows: T(n,k) (n>=2, k=2,...,n) is the minimal position at which the sequence A_n merges with the sequence A_k, where A_n be the sequence defined in the same way as A159559 but with initial term prime(n).

The programs for A276676, there is no canonical definition to state claims against.
-/

/-! ## A276676.P6336021629077448887

`and(47, A080663(A325220(n)))`
-/

namespace A276676.P6336021629077448887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 47 (A080663 (A325220 n).toNat)

end

end A276676.P6336021629077448887

/-! ## A276676.P14954737465156457922

`A091021(gcd(A109979(n), A109980(n)))`
-/

namespace A276676.P14954737465156457922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091021 (Int.gcd (A109979 n) (A109980 n))

end

end A276676.P14954737465156457922

/-!
# A276677: Number of squares added at the n-th generation of a symmetric (with 45-degree angles), non-overlapping Pythagoras tree.

The programs for A276677, the canonical program `A276677.P13548950270199122373` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A276677 has offset 0).

The definition of A276677 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A276677.P13535866383850631452

`ogf((1-x^2+2x^3+2x^4)/(1-2x-x^2+4x^3-2x^4))`
-/

namespace A276677.P13535866383850631452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, -1, 2, 2] [1, -2, -1, 4, -2] n

end

end A276677.P13535866383850631452

namespace A276677

/-- `ogf((1-x^2+2x^3+2x^4)/(1-2x-x^2+4x^3-2x^4))` -/
def P13535866383850631452.Spec : Prop :=
  ∀ n, P13535866383850631452.a n = A276677 n

end A276677

/-! ## A276677.P13548950270199122373

`2*a(n-1)+a(n-2)-4*a(n-3)+2*a(n-4)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=8, a(4)=16`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A276677

/-- `2*a(n-1)+a(n-2)-4*a(n-3)+2*a(n-4)` -/
def P13548950270199122373.Spec : Prop :=
  ∀ n, P13548950270199122373.a n = A276677 n

theorem P13548950270199122373.correct : P13548950270199122373.Spec := by
  intro n
  simp only [A276677]

end A276677

/-! ## A276677.P454301564392392805

`∑[2*(a(n-2)+2)]` with `a(0)=1, a(1)=1, a(2)=2, a(3)=4`
-/

namespace A276677.P454301564392392805
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 2, 4] fun n f1 =>
  2 * (f1 (n - 2) + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A276677.P454301564392392805

namespace A276677

/-- `∑[2*(a(n-2)+2)]` -/
def P454301564392392805.Spec : Prop :=
  ∀ n, (P454301564392392805.a n : ℤ) = A276677 n

end A276677

/-! ## A276677.P2833529467297431466

`∑[∑[2*a(n-2)]]` with `a(0)=1, a(1)=0, a(2)=1, a(3)=2, a(4)=4`
-/

namespace A276677.P2833529467297431466
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 1, 2, 4] fun n f2 =>
  2 * f2 (n - 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A276677.P2833529467297431466

namespace A276677

/-- `∑[∑[2*a(n-2)]]` -/
def P2833529467297431466.Spec : Prop :=
  ∀ n, (P2833529467297431466.a n : ℤ) = A276677 n

end A276677

/-! ## A276677.P13729070294447539384

`∑[lcm(2, a(n-2))+3]-n` with `a(0)=1, a(1)=2, a(2)=3`
-/

namespace A276677.P13729070294447539384
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 3] fun n f1 =>
  Nat.lcm 2 (f1 (n - 2)) + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n : ℤ)

end

end A276677.P13729070294447539384

namespace A276677

/-- `∑[lcm(2, a(n-2))+3]-n` -/
def P13729070294447539384.Spec : Prop :=
  ∀ n, P13729070294447539384.a n = A276677 n

end A276677

/-! ## A276677.P10886953818267222732

`∑[a(n-2)+a(n-2)+4]` with `a(0)=1, a(1)=1, a(2)=2, a(3)=4`
-/

namespace A276677.P10886953818267222732
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 2, 4] fun n f1 =>
  f1 (n - 2) + (f1 (n - 2) + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A276677.P10886953818267222732

namespace A276677

/-- `∑[a(n-2)+a(n-2)+4]` -/
def P10886953818267222732.Spec : Prop :=
  ∀ n, (P10886953818267222732.a n : ℤ) = A276677 n

end A276677

/-! ## A276677.P11695226712615813330

`∑[A060482(n+1)]-n`
-/

namespace A276677.P11695226712615813330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060482 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A276677.P11695226712615813330

namespace A276677

/-- `∑[A060482(n+1)]-n` -/
def P11695226712615813330.Spec : Prop :=
  ∀ n, P11695226712615813330.a n = A276677 n

end A276677

/-! ## A276677.P16523872723151703244

`A347789(n)+a(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A276677.P16523872723151703244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A347789 n + a (n - 1)

end

end A276677.P16523872723151703244

namespace A276677

/-- `A347789(n)+a(n-1)` -/
def P16523872723151703244.Spec : Prop :=
  ∀ n, P16523872723151703244.a n = A276677 n

end A276677

/-! ## A276677.P2110090397751410684

`∑[∑[A016116(n-char[2])]]-n`
-/

namespace A276677.P2110090397751410684
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 (n - (if ∃ j, f3 j = n then 1 else 0))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A276677.P2110090397751410684

namespace A276677

/-- `∑[∑[A016116(n-char[2])]]-n` -/
def P2110090397751410684.Spec : Prop :=
  ∀ n, P2110090397751410684.a n = A276677 n

end A276677

/-! ## A276677.P7774655089702704665

`∑[A027383(n)]-A004273(n)`
-/

namespace A276677.P7774655089702704665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027383 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A004273 n

end

end A276677.P7774655089702704665

namespace A276677

/-- `∑[A027383(n)]-A004273(n)` -/
def P7774655089702704665.Spec : Prop :=
  ∀ n, P7774655089702704665.a n = A276677 n

end A276677

/-! ## A276677.P11024552660108223971

`A053599(n+1)-A004273(n)`
-/

namespace A276677.P11024552660108223971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053599 (n + 1) - A004273 n

end

end A276677.P11024552660108223971

namespace A276677

/-- `A053599(n+1)-A004273(n)` -/
def P11024552660108223971.Spec : Prop :=
  ∀ n, P11024552660108223971.a n = A276677 n

end A276677

/-! ## A276677.P4675137972309744447

`∑[A027383(n)-A157928(n)]-n`
-/

namespace A276677.P4675137972309744447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027383 n - A157928 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A276677.P4675137972309744447

namespace A276677

/-- `∑[A027383(n)-A157928(n)]-n` -/
def P4675137972309744447.Spec : Prop :=
  ∀ n, P4675137972309744447.a n = A276677 n

end A276677

/-! ## A276677.P13601069417795253057

`∑[∑[A016116(n)]]+1-A004277(n)`
-/

namespace A276677.P13601069417795253057
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1 - A004277 n

end

end A276677.P13601069417795253057

namespace A276677

/-- `∑[∑[A016116(n)]]+1-A004277(n)` -/
def P13601069417795253057.Spec : Prop :=
  ∀ n, P13601069417795253057.a n = A276677 n

end A276677

/-! ## A276677.P6290562467237760352

`∑[2*A029744(n+1)]-A008574(n)`
-/

namespace A276677.P6290562467237760352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A029744 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A008574 n

end

end A276677.P6290562467237760352

namespace A276677

/-- `∑[2*A029744(n+1)]-A008574(n)` -/
def P6290562467237760352.Spec : Prop :=
  ∀ n, P6290562467237760352.a n = A276677 n

end A276677

/-! ## A276677.P17987747234413835299

`∑[A027383(n)]-lt[A321543(n+1), 2]`
-/

namespace A276677.P17987747234413835299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027383 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321543 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n : ℤ)

end

end A276677.P17987747234413835299

namespace A276677

/-- `∑[A027383(n)]-lt[A321543(n+1), 2]` -/
def P17987747234413835299.Spec : Prop :=
  ∀ n, P17987747234413835299.a n = A276677 n

end A276677

/-! ## A276677.P72017156645961297

`A063757(n+1)-(A004277(2*n)+2)`
-/

namespace A276677.P72017156645961297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063757 (n + 1) - (A004277 (2 * n) + 2)

end

end A276677.P72017156645961297

namespace A276677

/-- `A063757(n+1)-(A004277(2*n)+2)` -/
def P72017156645961297.Spec : Prop :=
  ∀ n, P72017156645961297.a n = A276677 n

end A276677

/-! ## A276677.P3437476102970344687

`A053599(n+1)-eq[n, A030101(A030101(n))]`
-/

namespace A276677.P3437476102970344687
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (A030101 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053599 (n + 1) - (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ)

end

end A276677.P3437476102970344687

namespace A276677

/-- `A053599(n+1)-eq[n, A030101(A030101(n))]` -/
def P3437476102970344687.Spec : Prop :=
  ∀ n, P3437476102970344687.a n = A276677 n

end A276677

/-!
# A276678: Number of divisors of the n-th pentagonal number.

The programs for A276678, the canonical program `A276678.P1507170948591821380` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A276678 has offset 1).

The definition of A276678 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A276678.P1507170948591821380

`A000005(A000326(n+1))`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A276678

/-- `A000005(A000326(n+1))` -/
def P1507170948591821380.Spec : Prop :=
  ∀ n, P1507170948591821380.a n = A276678 (n + 1)

theorem P1507170948591821380.correct : P1507170948591821380.Spec := by
  intro n
  simp only [A276678, Nat.add_sub_cancel]

end A276678

/-! ## A276678.P5931880311379076223

`A320111(3*n+2)*A320111(n+1)`
-/

namespace A276678.P5931880311379076223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320111 (3 * n + 2) * A320111 (n + 1)

end

end A276678.P5931880311379076223

namespace A276678

/-- `A320111(3*n+2)*A320111(n+1)` -/
def P5931880311379076223.Spec : Prop :=
  ∀ n, P5931880311379076223.a n = A276678 (n + 1)

end A276678

/-! ## A276678.P5639404133965408580

`∏{e}[∑[3*n+1], #+1]`
-/

namespace A276678.P5639404133965408580
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1)

end

end A276678.P5639404133965408580

namespace A276678

/-- `∏{e}[∑[3*n+1], #+1]` -/
def P5639404133965408580.Spec : Prop :=
  ∀ n, (P5639404133965408580.a n : ℤ) = A276678 (n + 1)

end A276678

/-! ## A276678.P14061500652478191162

`∑{d}[∑[3*n+1], (#%2)!]`
-/

namespace A276678.P14061500652478191162
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Nat.factorial (d % 2)

end

end A276678.P14061500652478191162

namespace A276678

/-- `∑{d}[∑[3*n+1], (#%2)!]` -/
def P14061500652478191162.Spec : Prop :=
  ∀ n, (P14061500652478191162.a n : ℤ) = A276678 (n + 1)

end A276678

/-! ## A276678.P2027526191782974525

`A032742(A239614(3*n+2)*A239614(n+1))`
-/

namespace A276678.P2027526191782974525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A239614 (3 * n + 2) * A239614 (n + 1)).toNat

end

end A276678.P2027526191782974525

namespace A276678

/-- `A032742(A239614(3*n+2)*A239614(n+1))` -/
def P2027526191782974525.Spec : Prop :=
  ∀ n, P2027526191782974525.a n = A276678 (n + 1)

end A276678

/-! ## A276678.P13094334603055514993

`A000005(A278255(n+1))`
-/

namespace A276678.P13094334603055514993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A278255 (n + 1)).toNat

end

end A276678.P13094334603055514993

namespace A276678

/-- `A000005(A278255(n+1))` -/
def P13094334603055514993.Spec : Prop :=
  ∀ n, P13094334603055514993.a n = A276678 (n + 1)

end A276678

/-! ## A276678.P15690523340908232436

`A000005(Δ[n*∑[n]])`
-/

namespace A276678.P15690523340908232436
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A276678.P15690523340908232436

namespace A276678

/-- `A000005(Δ[n*∑[n]])` -/
def P15690523340908232436.Spec : Prop :=
  ∀ n, P15690523340908232436.a n = A276678 (n + 1)

end A276678

/-! ## A276678.P9667813105127014953

`A000005(∑[n]+(n+1)²)%(n+9)`
-/

namespace A276678.P9667813105127014953
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000005 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 1) ^ 2)) (n + 9 : ℤ)

end

end A276678.P9667813105127014953

namespace A276678

/-- `A000005(∑[n]+(n+1)²)%(n+9)` -/
def P9667813105127014953.Spec : Prop :=
  ∀ n, P9667813105127014953.a n = A276678 (n + 1)

end A276678

/-! ## A276678.P15050932069236268823

`A000027(A000005(∑[3*n+1]))`
-/

namespace A276678.P15050932069236268823
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A000005 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A276678.P15050932069236268823

namespace A276678

/-- `A000027(A000005(∑[3*n+1]))` -/
def P15050932069236268823.Spec : Prop :=
  ∀ n, P15050932069236268823.a n = A276678 (n + 1)

end A276678

/-! ## A276678.P1589337993271719838

`A331308(∑[n]+(n+1)²)`
-/

namespace A276678.P1589337993271719838
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331308 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 1) ^ 2)

end

end A276678.P1589337993271719838

namespace A276678

/-- `A331308(∑[n]+(n+1)²)` -/
def P1589337993271719838.Spec : Prop :=
  ∀ n, P1589337993271719838.a n = A276678 (n + 1)

end A276678

/-!
# A276679: Number of divisors of the n-th hexagonal number.

The programs for A276679, the canonical program `A276679.P3505518426421667446` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A276679 has offset 1).

The definition of A276679 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A276679.P3505518426421667446

`A000005(A000384(n+1))`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A276679

/-- `A000005(A000384(n+1))` -/
def P3505518426421667446.Spec : Prop :=
  ∀ n, P3505518426421667446.a n = A276679 (n + 1)

theorem P3505518426421667446.correct : P3505518426421667446.Spec := by
  intro n
  simp only [A276679, Nat.add_sub_cancel]

end A276679

/-! ## A276679.P4724793555632092390

`Δ[A006218(n)]*∏{e}[Δ[n²], #+1]`
-/

namespace A276679.P4724793555632092390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f3 (n + 1) : ℤ) - (f3 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * ((∏ p ∈ Nat.primeFactors (f2 n).natAbs, (Nat.factorization (f2 n).natAbs p + 1) : ℕ) : ℤ)

end

end A276679.P4724793555632092390

namespace A276679

/-- `Δ[A006218(n)]*∏{e}[Δ[n²], #+1]` -/
def P4724793555632092390.Spec : Prop :=
  ∀ n, P4724793555632092390.a n = A276679 (n + 1)

end A276679

/-! ## A276679.P13479535467986022122

`∏{e}[Δ[n²], #+1]*A000005(n+1)`
-/

namespace A276679.P13479535467986022122
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1) : ℕ) : ℤ) * A000005 (n + 1)

end

end A276679.P13479535467986022122

namespace A276679

/-- `∏{e}[Δ[n²], #+1]*A000005(n+1)` -/
def P13479535467986022122.Spec : Prop :=
  ∀ n, P13479535467986022122.a n = A276679 (n + 1)

end A276679

/-! ## A276679.P1989300643432771469

`∏{e}[n+1, #+1]*A320111(2*n+1)`
-/

namespace A276679.P1989300643432771469
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ) * A320111 (2 * n + 1)

end

end A276679.P1989300643432771469

namespace A276679

/-- `∏{e}[n+1, #+1]*A320111(2*n+1)` -/
def P1989300643432771469.Spec : Prop :=
  ∀ n, P1989300643432771469.a n = A276679 (n + 1)

end A276679

/-! ## A276679.P15552474345757731970

`Δ[A054519(n)]*A099774(n+1)`
-/

namespace A276679.P15552474345757731970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054519 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A099774 (n + 1)

end

end A276679.P15552474345757731970

namespace A276679

/-- `Δ[A054519(n)]*A099774(n+1)` -/
def P15552474345757731970.Spec : Prop :=
  ∀ n, P15552474345757731970.a n = A276679 (n + 1)

end A276679

/-! ## A276679.P8437427436202885170

`A000005(Δ[n²])*Δ[A006218(n)]`
-/

namespace A276679.P8437427436202885170
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat * (f2 (n + 1) - f2 n)

end

end A276679.P8437427436202885170

namespace A276679

/-- `A000005(Δ[n²])*Δ[A006218(n)]` -/
def P8437427436202885170.Spec : Prop :=
  ∀ n, P8437427436202885170.a n = A276679 (n + 1)

end A276679

/-! ## A276679.P11847997477333587985

`A000005(n+1)*A099774(n+1)`
-/

namespace A276679.P11847997477333587985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) * A099774 (n + 1)

end

end A276679.P11847997477333587985

namespace A276679

/-- `A000005(n+1)*A099774(n+1)` -/
def P11847997477333587985.Spec : Prop :=
  ∀ n, P11847997477333587985.a n = A276679 (n + 1)

end A276679

/-! ## A276679.P10192784806863215192

`A000005(n+1)*A000005(Δ[n²])`
-/

namespace A276679.P10192784806863215192
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) * A000005 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A276679.P10192784806863215192

namespace A276679

/-- `A000005(n+1)*A000005(Δ[n²])` -/
def P10192784806863215192.Spec : Prop :=
  ∀ n, P10192784806863215192.a n = A276679 (n + 1)

end A276679

/-! ## A276679.P5391449225126235400

`A000005(2*n+1)*Δ[A054519(n)]`
-/

namespace A276679.P5391449225126235400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054519 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (2 * n + 1) * (f1 (n + 1) - f1 n)

end

end A276679.P5391449225126235400

namespace A276679

/-- `A000005(2*n+1)*Δ[A054519(n)]` -/
def P5391449225126235400.Spec : Prop :=
  ∀ n, P5391449225126235400.a n = A276679 (n + 1)

end A276679

/-! ## A276679.P13177663302925233087

`(A032741(n+1)+1)*A000005(2*n+1)`
-/

namespace A276679.P13177663302925233087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A032741 (n + 1) + 1) * A000005 (2 * n + 1)

end

end A276679.P13177663302925233087

namespace A276679

/-- `(A032741(n+1)+1)*A000005(2*n+1)` -/
def P13177663302925233087.Spec : Prop :=
  ∀ n, P13177663302925233087.a n = A276679 (n + 1)

end A276679

/-! ## A276679.P13057196549977970613

`A063440(Δ[n²])`
-/

namespace A276679.P13057196549977970613
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063440 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A276679.P13057196549977970613

namespace A276679

/-- `A063440(Δ[n²])` -/
def P13057196549977970613.Spec : Prop :=
  ∀ n, P13057196549977970613.a n = A276679 (n + 1)

end A276679

/-! ## A276679.P8644938804123529675

`A099774(n+1)*A183063(2*(n+1))`
-/

namespace A276679.P8644938804123529675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099774 (n + 1) * A183063 (2 * (n + 1))

end

end A276679.P8644938804123529675

namespace A276679

/-- `A099774(n+1)*A183063(2*(n+1))` -/
def P8644938804123529675.Spec : Prop :=
  ∀ n, P8644938804123529675.a n = A276679 (n + 1)

end A276679

/-! ## A276679.P15820025742879688016

`(A032741(n+1)+1)*A001227(2*n+1)`
-/

namespace A276679.P15820025742879688016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A032741 (n + 1) + 1) * A001227 (2 * n + 1)

end

end A276679.P15820025742879688016

namespace A276679

/-- `(A032741(n+1)+1)*A001227(2*n+1)` -/
def P15820025742879688016.Spec : Prop :=
  ∀ n, P15820025742879688016.a n = A276679 (n + 1)

end A276679

/-! ## A276679.P1509324067077041765

`(A032741(n+1)+1)*A048272(2*n+1)`
-/

namespace A276679.P1509324067077041765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A032741 (n + 1) + 1) * A048272 (2 * n + 1)

end

end A276679.P1509324067077041765

namespace A276679

/-- `(A032741(n+1)+1)*A048272(2*n+1)` -/
def P1509324067077041765.Spec : Prop :=
  ∀ n, P1509324067077041765.a n = A276679 (n + 1)

end A276679

/-! ## A276679.P13796654077742702169

`(A032741(n+1)+1)*A076984(2*n+1)`
-/

namespace A276679.P13796654077742702169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A032741 (n + 1) + 1) * A076984 (2 * n + 1)

end

end A276679.P13796654077742702169

namespace A276679

/-- `(A032741(n+1)+1)*A076984(2*n+1)` -/
def P13796654077742702169.Spec : Prop :=
  ∀ n, P13796654077742702169.a n = A276679 (n + 1)

end A276679

/-! ## A276679.P15784913951638656975

`A133950(2*n+1)+A133949(2*n+1)`
-/

namespace A276679.P15784913951638656975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133950 (2 * n + 1) + A133949 (2 * n + 1)

end

end A276679.P15784913951638656975

namespace A276679

/-- `A133950(2*n+1)+A133949(2*n+1)` -/
def P15784913951638656975.Spec : Prop :=
  ∀ n, P15784913951638656975.a n = A276679 (n + 1)

end A276679

/-! ## A276679.P218922857305700792

`A000005(2*n+1)*A069157(2*(n+1))`
-/

namespace A276679.P218922857305700792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (2 * n + 1) * A069157 (2 * (n + 1))

end

end A276679.P218922857305700792

namespace A276679

/-- `A000005(2*n+1)*A069157(2*(n+1))` -/
def P218922857305700792.Spec : Prop :=
  ∀ n, P218922857305700792.a n = A276679 (n + 1)

end A276679

/-! ## A276679.P3130493527855047488

`A000005(2*n+1)*A183063(2*(n+1))`
-/

namespace A276679.P3130493527855047488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (2 * n + 1) * A183063 (2 * (n + 1))

end

end A276679.P3130493527855047488

namespace A276679

/-- `A000005(2*n+1)*A183063(2*(n+1))` -/
def P3130493527855047488.Spec : Prop :=
  ∀ n, P3130493527855047488.a n = A276679 (n + 1)

end A276679

/-! ## A276679.P17258403580447810899

`∏{e}[(n+1)*(2*n+1), #+1]`
-/

namespace A276679.P17258403580447810899
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1)

end

end A276679.P17258403580447810899

namespace A276679

/-- `∏{e}[(n+1)*(2*n+1), #+1]` -/
def P17258403580447810899.Spec : Prop :=
  ∀ n, (P17258403580447810899.a n : ℤ) = A276679 (n + 1)

end A276679

/-! ## A276679.P947138002632890369

`∑{d}[(n+1)*(2*n+1), gcd(n, #)]`
-/

namespace A276679.P947138002632890369
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Nat.gcd n d

end

end A276679.P947138002632890369

namespace A276679

/-- `∑{d}[(n+1)*(2*n+1), gcd(n, #)]` -/
def P947138002632890369.Spec : Prop :=
  ∀ n, (P947138002632890369.a n : ℤ) = A276679 (n + 1)

end A276679

/-!
# A276680: Number of divisors of the n-th heptagonal number.

The programs for A276680, the canonical program `A276680.P15546991815700362490` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A276680 has offset 1).

The definition of A276680 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A276680.P15546991815700362490

`A000005(A000566(n+1))`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A276680

/-- `A000005(A000566(n+1))` -/
def P15546991815700362490.Spec : Prop :=
  ∀ n, P15546991815700362490.a n = A276680 (n + 1)

theorem P15546991815700362490.correct : P15546991815700362490.Spec := by
  intro n
  simp only [A276680, Nat.add_sub_cancel]

end A276680

/-! ## A276680.P9145867039066173665

`∏{e}[∑[5*n+1], #+1]`
-/

namespace A276680.P9145867039066173665
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1)

end

end A276680.P9145867039066173665

namespace A276680

/-- `∏{e}[∑[5*n+1], #+1]` -/
def P9145867039066173665.Spec : Prop :=
  ∀ n, (P9145867039066173665.a n : ℤ) = A276680 (n + 1)

end A276680

/-! ## A276680.P1119462600877663721

`A000027(∏{e}[∑[A016861(n)], #+1])`
-/

namespace A276680.P1119462600877663721
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016861 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1))

end

end A276680.P1119462600877663721

namespace A276680

/-- `A000027(∏{e}[∑[A016861(n)], #+1])` -/
def P1119462600877663721.Spec : Prop :=
  ∀ n, P1119462600877663721.a n = A276680 (n + 1)

end A276680

/-! ## A276680.P3334663098047011852

`A000027(∏{e}[∑[A008706(n)]+n, #+1])`
-/

namespace A276680.P3334663098047011852
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1))

end

end A276680.P3334663098047011852

namespace A276680

/-- `A000027(∏{e}[∑[A008706(n)]+n, #+1])` -/
def P3334663098047011852.Spec : Prop :=
  ∀ n, P3334663098047011852.a n = A276680 (n + 1)

end A276680

/-! ## A276680.P8600303563068633071

`A000027(∏{e}[A260699(2*n+1)+A000217(n), #+1])`
-/

namespace A276680.P8600303563068633071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260699 (2 * n + 1) + A000217 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1))

end

end A276680.P8600303563068633071

namespace A276680

/-- `A000027(∏{e}[A260699(2*n+1)+A000217(n), #+1])` -/
def P8600303563068633071.Spec : Prop :=
  ∀ n, P8600303563068633071.a n = A276680 (n + 1)

end A276680

/-! ## A276680.P268667652903473861

`A000005(∑[5*n+1])`
-/

namespace A276680.P268667652903473861
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A276680.P268667652903473861

namespace A276680

/-- `A000005(∑[5*n+1])` -/
def P268667652903473861.Spec : Prop :=
  ∀ n, P268667652903473861.a n = A276680 (n + 1)

end A276680

/-! ## A276680.P1837501213016228614

`A000027(A000005(∑[a(n-1)+5]))` with `a(0)=1`
-/

namespace A276680.P1837501213016228614
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A000005 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A276680.P1837501213016228614

namespace A276680

/-- `A000027(A000005(∑[a(n-1)+5]))` -/
def P1837501213016228614.Spec : Prop :=
  ∀ n, P1837501213016228614.a n = A276680 (n + 1)

end A276680

/-! ## A276680.P16900714199445697542

`abs(A000005(A192136(n+1)-1)-1)+1`
-/

namespace A276680.P16900714199445697542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000005 (A192136 (n + 1) - 1).toNat - 1| + 1

end

end A276680.P16900714199445697542

namespace A276680

/-- `abs(A000005(A192136(n+1)-1)-1)+1` -/
def P16900714199445697542.Spec : Prop :=
  ∀ n, P16900714199445697542.a n = A276680 (n + 1)

end A276680

/-! ## A276680.P11836446816914469477

`A000005(∑[A016861(n)])%A007521(n+1)`
-/

namespace A276680.P11836446816914469477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016861 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000005 (∑ j ∈ Finset.range (n + 1), f1 j).toNat) (A007521 (n + 1))

end

end A276680.P11836446816914469477

namespace A276680

/-- `A000005(∑[A016861(n)])%A007521(n+1)` -/
def P11836446816914469477.Spec : Prop :=
  ∀ n, P11836446816914469477.a n = A276680 (n + 1)

end A276680

/-! ## A276680.P9800659989894218740

`A320111(A135706(n+1))`
-/

namespace A276680.P9800659989894218740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320111 (A135706 (n + 1)).toNat

end

end A276680.P9800659989894218740

namespace A276680

/-- `A320111(A135706(n+1))` -/
def P9800659989894218740.Spec : Prop :=
  ∀ n, P9800659989894218740.a n = A276680 (n + 1)

end A276680

/-!
# A276681: Number of divisors of the n-th octagonal number.

The programs for A276681, the canonical program `A276681.P5271611203890390845` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A276681 has offset 1).

The definition of A276681 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A276681.P5271611203890390845

`A000005(A000567(n+1))`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A276681

/-- `A000005(A000567(n+1))` -/
def P5271611203890390845.Spec : Prop :=
  ∀ n, P5271611203890390845.a n = A276681 (n + 1)

theorem P5271611203890390845.correct : P5271611203890390845.Spec := by
  intro n
  simp only [A276681, Nat.add_sub_cancel]

end A276681

/-! ## A276681.P220339009737331821

`∏{e}[∑[6*n+1], #+1]`
-/

namespace A276681.P220339009737331821
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1)

end

end A276681.P220339009737331821

namespace A276681

/-- `∏{e}[∑[6*n+1], #+1]` -/
def P220339009737331821.Spec : Prop :=
  ∀ n, (P220339009737331821.a n : ℤ) = A276681 (n + 1)

end A276681

/-! ## A276681.P6161062840466431733

`∑{d}[A140676(n)+1, ceil(acot(#))]`
-/

namespace A276681.P6161062840466431733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140676 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, ⌈SequenceMachineLib.acot (d : ℝ)⌉

end

end A276681.P6161062840466431733

namespace A276681

/-- `∑{d}[A140676(n)+1, ceil(acot(#))]` -/
def P6161062840466431733.Spec : Prop :=
  ∀ n, P6161062840466431733.a n = A276681 (n + 1)

end A276681

/-! ## A276681.P8888148501103757155

`A028310(∏{e}[Δ[n*n²]+n, #+1])`
-/

namespace A276681.P8888148501103757155
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1))

end

end A276681.P8888148501103757155

namespace A276681

/-- `A028310(∏{e}[Δ[n*n²]+n, #+1])` -/
def P8888148501103757155.Spec : Prop :=
  ∀ n, P8888148501103757155.a n = A276681 (n + 1)

end A276681

/-! ## A276681.P10626272191565964772

`∑{d}[∑[record[A000265(3*n+1)]], (#%2)!]`
-/

namespace A276681.P10626272191565964772
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (3 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, Nat.factorial (d % 2)

end

end A276681.P10626272191565964772

namespace A276681

/-- `∑{d}[∑[record[A000265(3*n+1)]], (#%2)!]` -/
def P10626272191565964772.Spec : Prop :=
  ∀ n, (P10626272191565964772.a n : ℤ) = A276681 (n + 1)

end A276681

/-! ## A276681.P11375144677318006093

`A000027(∏{e}[(n+1)*A016777(n), #+1])`
-/

namespace A276681.P11375144677318006093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A016777 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1))

end

end A276681.P11375144677318006093

namespace A276681

/-- `A000027(∏{e}[(n+1)*A016777(n), #+1])` -/
def P11375144677318006093.Spec : Prop :=
  ∀ n, P11375144677318006093.a n = A276681 (n + 1)

end A276681

/-! ## A276681.P1702578803220144788

`A000005(∑[6*n+1])`
-/

namespace A276681.P1702578803220144788
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A276681.P1702578803220144788

namespace A276681

/-- `A000005(∑[6*n+1])` -/
def P1702578803220144788.Spec : Prop :=
  ∀ n, P1702578803220144788.a n = A276681 (n + 1)

end A276681

/-! ## A276681.P13811028263022344176

`A000005(Δ[n^3]+n)%(n+26)`
-/

namespace A276681.P13811028263022344176
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000005 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + (n : ℤ)).toNat) (n + 26 : ℤ)

end

end A276681.P13811028263022344176

namespace A276681

/-- `A000005(Δ[n^3]+n)%(n+26)` -/
def P13811028263022344176.Spec : Prop :=
  ∀ n, P13811028263022344176.a n = A276681 (n + 1)

end A276681

/-! ## A276681.P11392516239186753959

`A000027(A000005(∑[or(1, 6*n)]))`
-/

namespace A276681.P11392516239186753959
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (6 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A000005 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A276681.P11392516239186753959

namespace A276681

/-- `A000027(A000005(∑[or(1, 6*n)]))` -/
def P11392516239186753959.Spec : Prop :=
  ∀ n, P11392516239186753959.a n = A276681 (n + 1)

end A276681

/-! ## A276681.P6566689265008830798

`A000027(A000005(∑[a(n-1)+6]))` with `a(0)=1`
-/

namespace A276681.P6566689265008830798
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) + 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A000005 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A276681.P6566689265008830798

namespace A276681

/-- `A000027(A000005(∑[a(n-1)+6]))` -/
def P6566689265008830798.Spec : Prop :=
  ∀ n, P6566689265008830798.a n = A276681 (n + 1)

end A276681

/-! ## A276681.P12610573343199178280

`A028310(A000005((3*n+1)*(n+1)))`
-/

namespace A276681.P12610573343199178280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A000005 ((3 * n + 1) * (n + 1))).toNat

end

end A276681.P12610573343199178280

namespace A276681

/-- `A028310(A000005((3*n+1)*(n+1)))` -/
def P12610573343199178280.Spec : Prop :=
  ∀ n, P12610573343199178280.a n = A276681 (n + 1)

end A276681

/-!
# A276682: Number of divisors of the n-th 9-gonal number.

The programs for A276682, the canonical program `A276682.P14610706334698834383` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A276682 has offset 1).

The definition of A276682 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A276682.P14610706334698834383

`A000005(A001106(n+1))`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A276682

/-- `A000005(A001106(n+1))` -/
def P14610706334698834383.Spec : Prop :=
  ∀ n, P14610706334698834383.a n = A276682 (n + 1)

theorem P14610706334698834383.correct : P14610706334698834383.Spec := by
  intro n
  simp only [A276682, Nat.add_sub_cancel]

end A276682

/-! ## A276682.P17136556100176019046

`∏{e}[∑[7*n+1], #+1]`
-/

namespace A276682.P17136556100176019046
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 * n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1)

end

end A276682.P17136556100176019046

namespace A276682

/-- `∏{e}[∑[7*n+1], #+1]` -/
def P17136556100176019046.Spec : Prop :=
  ∀ n, (P17136556100176019046.a n : ℤ) = A276682 (n + 1)

end A276682

/-! ## A276682.P9582389294534398817

`∑{d}[∑[7*n+1], ceil(acot(#))]`
-/

namespace A276682.P9582389294534398817
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 * n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), ⌈SequenceMachineLib.acot (d : ℝ)⌉

end

end A276682.P9582389294534398817

namespace A276682

/-- `∑{d}[∑[7*n+1], ceil(acot(#))]` -/
def P9582389294534398817.Spec : Prop :=
  ∀ n, P9582389294534398817.a n = A276682 (n + 1)

end A276682

/-! ## A276682.P15145571616234736664

`∑{d}[∑[7*n+1], ceil(1/#)]`
-/

namespace A276682.P15145571616234736664
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 * n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), ⌈1 / (d : ℚ)⌉

end

end A276682.P15145571616234736664

namespace A276682

/-- `∑{d}[∑[7*n+1], ceil(1/#)]` -/
def P15145571616234736664.Spec : Prop :=
  ∀ n, P15145571616234736664.a n = A276682 (n + 1)

end A276682

/-! ## A276682.P4008327269693679969

`A000005(∑[7*n+1])`
-/

namespace A276682.P4008327269693679969
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A276682.P4008327269693679969

namespace A276682

/-- `A000005(∑[7*n+1])` -/
def P4008327269693679969.Spec : Prop :=
  ∀ n, P4008327269693679969.a n = A276682 (n + 1)

end A276682

/-! ## A276682.P2507846254691580806

`A000005(A118277(2*n+1))%90`
-/

namespace A276682.P2507846254691580806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000005 (A118277 (2 * n + 1)).toNat) 90

end

end A276682.P2507846254691580806

namespace A276682

/-- `A000005(A118277(2*n+1))%90` -/
def P2507846254691580806.Spec : Prop :=
  ∀ n, P2507846254691580806.a n = A276682 (n + 1)

end A276682

/-! ## A276682.P9402438753702133280

`A118759(A000005(∑[a(n-1)+7]))` with `a(0)=1`
-/

namespace A276682.P9402438753702133280
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) + 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (A000005 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A276682.P9402438753702133280

namespace A276682

/-- `A118759(A000005(∑[a(n-1)+7]))` -/
def P9402438753702133280.Spec : Prop :=
  ∀ n, P9402438753702133280.a n = A276682 (n + 1)

end A276682

/-! ## A276682.P15675005820200206991

`A320111(A139268(n+1))`
-/

namespace A276682.P15675005820200206991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320111 (A139268 (n + 1)).toNat

end

end A276682.P15675005820200206991

namespace A276682

/-- `A320111(A139268(n+1))` -/
def P15675005820200206991.Spec : Prop :=
  ∀ n, P15675005820200206991.a n = A276682 (n + 1)

end A276682

/-!
# A276683: Number of divisors of the n-th 10-gonal number.

The programs for A276683, the canonical program `A276683.P1282822124416539506` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A276683 has offset 1).

The definition of A276683 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A276683.P1282822124416539506

`A000005(A001107(n+1))`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A276683

/-- `A000005(A001107(n+1))` -/
def P1282822124416539506.Spec : Prop :=
  ∀ n, P1282822124416539506.a n = A276683 (n + 1)

theorem P1282822124416539506.correct : P1282822124416539506.Spec := by
  intro n
  simp only [A276683, Nat.add_sub_cancel]

end A276683

/-! ## A276683.P9963830030404234009

`∏{e}[Δ[n²]²+n, #+1]`
-/

namespace A276683.P9963830030404234009
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f2 (n + 1) : ℤ) - (f2 n : ℤ)) ^ 2 + (n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1)

end

end A276683.P9963830030404234009

namespace A276683

/-- `∏{e}[Δ[n²]²+n, #+1]` -/
def P9963830030404234009.Spec : Prop :=
  ∀ n, (P9963830030404234009.a n : ℤ) = A276683 (n + 1)

end A276683

/-! ## A276683.P10457580768566063712

`∑{d}[(2*n+1)²+n, gcd(n, #)]`
-/

namespace A276683.P10457580768566063712
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) ^ 2 + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Nat.gcd n d

end

end A276683.P10457580768566063712

namespace A276683

/-- `∑{d}[(2*n+1)²+n, gcd(n, #)]` -/
def P10457580768566063712.Spec : Prop :=
  ∀ n, (P10457580768566063712.a n : ℤ) = A276683 (n + 1)

end A276683

/-! ## A276683.P16006189276029803464

`∏{e}[(2*n+1)²+n, #+1]%(3*(n+1))`
-/

namespace A276683.P16006189276029803464
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) ^ 2 + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1)) % (3 * (n + 1))

end

end A276683.P16006189276029803464

namespace A276683

/-- `∏{e}[(2*n+1)²+n, #+1]%(3*(n+1))` -/
def P16006189276029803464.Spec : Prop :=
  ∀ n, (P16006189276029803464.a n : ℤ) = A276683 (n + 1)

end A276683

/-! ## A276683.P14240603773096155843

`∑{d}[∑[A017077(n)], ceil(1/#)]`
-/

namespace A276683.P14240603773096155843
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017077 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, ⌈1 / (d : ℚ)⌉

end

end A276683.P14240603773096155843

namespace A276683

/-- `∑{d}[∑[A017077(n)], ceil(1/#)]` -/
def P14240603773096155843.Spec : Prop :=
  ∀ n, P14240603773096155843.a n = A276683 (n + 1)

end A276683

/-! ## A276683.P5866466949911418425

`A028310(∏{e}[(2*n+1)²+n, #+1])`
-/

namespace A276683.P5866466949911418425
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) ^ 2 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1))

end

end A276683.P5866466949911418425

namespace A276683

/-- `A028310(∏{e}[(2*n+1)²+n, #+1])` -/
def P5866466949911418425.Spec : Prop :=
  ∀ n, P5866466949911418425.a n = A276683 (n + 1)

end A276683

/-! ## A276683.P10640125175080275785

`∑{d}[A001107(n+1), A002061(#²%#)]`
-/

namespace A276683.P10640125175080275785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001107 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A002061 (d ^ 2 % d)

end

end A276683.P10640125175080275785

namespace A276683

/-- `∑{d}[A001107(n+1), A002061(#²%#)]` -/
def P10640125175080275785.Spec : Prop :=
  ∀ n, P10640125175080275785.a n = A276683 (n + 1)

end A276683

/-! ## A276683.P5372136780581821380

`A000005(∑[8*n+1])`
-/

namespace A276683.P5372136780581821380
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A276683.P5372136780581821380

namespace A276683

/-- `A000005(∑[8*n+1])` -/
def P5372136780581821380.Spec : Prop :=
  ∀ n, P5372136780581821380.a n = A276683 (n + 1)

end A276683

/-! ## A276683.P3457295193793812140

`A000005((2*n+1)²+n)+C(2, n+3)`
-/

namespace A276683.P3457295193793812140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 ((2 * n + 1) ^ 2 + n) + (Nat.choose 2 (n + 3) : ℤ)

end

end A276683.P3457295193793812140

namespace A276683

/-- `A000005((2*n+1)²+n)+C(2, n+3)` -/
def P3457295193793812140.Spec : Prop :=
  ∀ n, P3457295193793812140.a n = A276683 (n + 1)

end A276683

/-! ## A276683.P9994410702881176044

`A000005((4*n+1)*(n+1))%(2*(n+2))`
-/

namespace A276683.P9994410702881176044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000005 ((4 * n + 1) * (n + 1))) (2 * (n + 2) : ℤ)

end

end A276683.P9994410702881176044

namespace A276683

/-- `A000005((4*n+1)*(n+1))%(2*(n+2))` -/
def P9994410702881176044.Spec : Prop :=
  ∀ n, P9994410702881176044.a n = A276683 (n + 1)

end A276683

/-!
# A276684: Between two successive even digits "a" and "b" there are exactly |a-b| odd digits.

The programs for A276684, there is no canonical definition to state claims against.
-/

/-! ## A276684.P2912002600186081387

`A336551(∏[n%2+2]-1)+round((lcm(3, n)+n)/3)`
-/

namespace A276684.P2912002600186081387
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2 + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336551 (∏ j ∈ Finset.range (n + 1), f1 j - 1) + SequenceMachineLib.roundAway ((Nat.lcm 3 n + n : ℚ) / 3)

end

end A276684.P2912002600186081387

/-! ## A276684.P12516122915188267985

`A046660(A196423(n+1))+A006369(n)`
-/

namespace A276684.P12516122915188267985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046660 (A196423 (n + 1)).toNat + A006369 n

end

end A276684.P12516122915188267985

/-!
# A276687: Number of prime plane trees of weight prime(n).

The programs for A276687, there is no canonical definition to state claims against.
-/

/-! ## A276687.P8574836757652190298

`A305896(∏[A305840(n+2)])`
-/

namespace A276687.P8574836757652190298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305840 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305896 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A276687.P8574836757652190298

/-! ## A276687.P8120386981025960988

`A065825(a(n-1)+gcd(n+2, a(n-1)))` with `a(0)=1, a(1)=1`
-/

namespace A276687.P8120386981025960988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A065825 (a (n - 1) + (Int.gcd (n + 2 : ℤ) (a (n - 1)) : ℤ)).toNat

end

end A276687.P8120386981025960988

/-! ## A276687.P12604370715169511489

`A120951(A148159(n))`
-/

namespace A276687.P12604370715169511489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120951 (A148159 n).toNat

end

end A276687.P12604370715169511489

/-!
# A276689: Least term in the periodic part of the continued fraction expansion of sqrt(n) or 0 if n is square.

The programs for A276689, there is no canonical definition to state claims against.
-/

/-! ## A276689.P6579834852358853677

`A091453(n*Δ[A347520(n)]²)`
-/

namespace A276689.P6579834852358853677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347520 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091453 ((n : ℤ) * (f1 (n + 1) - f1 n) ^ 2).toNat

end

end A276689.P6579834852358853677

/-! ## A276689.P15148045479379617075

`A091453(n)/Δ[A347520(n)]!`
-/

namespace A276689.P15148045479379617075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347520 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A091453 n : ℚ) / (Nat.factorial (f1 (n + 1) - f1 n).toNat : ℚ)

end

end A276689.P15148045479379617075

/-! ## A276689.P8519175610695262018

`ceil(1/(sqrt(n)+1-ceil(sqrt(n))))-1-A025455(A327377(n))`
-/

namespace A276689.P8519175610695262018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈1 / (Real.sqrt (n : ℝ) + (1 - ⌈Real.sqrt (n : ℝ)⌉ : ℝ))⌉ - 1 - A025455 (A327377 n).toNat

end

end A276689.P8519175610695262018

/-! ## A276689.P8269840468552897156

`(ceil(1/(sqrt(n)+1-ceil(sqrt(n))))-1)^A290054(A089732(n))`
-/

namespace A276689.P8269840468552897156
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌈1 / (Real.sqrt (n : ℝ) + (1 - ⌈Real.sqrt (n : ℝ)⌉ : ℝ))⌉ - 1 : ℚ) ^ (A290054 (A089732 n).toNat : ℤ)

end

end A276689.P8269840468552897156

/-! ## A276689.P2562192770456147759

`A091453(n)/A347520(Δ[A347520(n)])`
-/

namespace A276689.P2562192770456147759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347520 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A091453 n : ℚ) / (A347520 (f1 (n + 1) - f1 n).toNat : ℚ)

end

end A276689.P2562192770456147759

/-!
# A276690: Binary Barker codes written in base 10.

The programs for A276690, there is no canonical definition to state claims against.
-/

/-! ## A276690.P17695952650934469233

`A076314(A076324(n+1))+A076273(n)`
-/

namespace A276690.P17695952650934469233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076314 (A076324 (n + 1)).toNat + A076273 n

end

end A276690.P17695952650934469233

/-! ## A276690.P5607329671323654943

`A206915(A302239(n)+A095198(n+1))`
-/

namespace A276690.P5607329671323654943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206915 (A302239 n + A095198 (n + 1)).toNat

end

end A276690.P5607329671323654943

/-!
# A276691: Sum of maximum subrange sum over all length-n arrays of {1, -1}.

The programs for A276691, there is no canonical definition to state claims against.
-/

/-! ## A276691.P16144128999828967745

`∑[∑[A005041(A150279(n))]]`
-/

namespace A276691.P16144128999828967745
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005041 (A150279 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A276691.P16144128999828967745

/-! ## A276691.P1019946922767571004

`A006980(n+7)-A284562(A096650(3*(n+1)))`
-/

namespace A276691.P1019946922767571004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006980 (n + 7) - A284562 (A096650 (3 * (n + 1))).toNat

end

end A276691.P1019946922767571004

/-! ## A276691.P7323721472381812537

`∑[∑[A003056(A151169(n))]]`
-/

namespace A276691.P7323721472381812537
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A151169 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A276691.P7323721472381812537

/-!
# A276692: Binary representations of n and n^2 have no common 3-digit substring.

The programs for A276692, there is no canonical definition to state claims against.
-/

/-! ## A276692.P11225969637218181371

`lt[A177062(round(acot(n)+n)), 3]`
-/

namespace A276692.P11225969637218181371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177062 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A276692.P11225969637218181371

/-! ## A276692.P13843912400767139237

`lt[A177062(A028310(n)), 3]`
-/

namespace A276692.P13843912400767139237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177062 (A028310 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A276692.P13843912400767139237

/-! ## A276692.P13070240163645155174

`lt[A177062(A233583(n+1)), 3]`
-/

namespace A276692.P13070240163645155174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177062 (A233583 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A276692.P13070240163645155174

/-! ## A276692.P1115782538213005921

`eq[A105592(n), A241194(n+1)]`
-/

namespace A276692.P1115782538213005921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105592 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241194 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A276692.P1115782538213005921

/-! ## A276692.P3129197064523557891

`record[A340831(∑[A072103(n+1)])]`
-/

namespace A276692.P3129197064523557891
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072103 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340831 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A276692.P3129197064523557891

/-!
# A276693: a(n) = a(n-2)*a(n-3) - a(n-1); a(0) = 3, a(1) = 5, a(2) = 7.

The programs for A276693, the canonical program `A276693.P3307920721967447677` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A276693 has offset 0).

The definition of A276693 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-2)*a(n-3)-a(n-1)` (program `A276693.P3307920721967447677`, by `A276693.P3307920721967447677.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A276693.P3307920721967447677

`a(n-2)*a(n-3)-a(n-1)` with `a(0)=3, a(1)=5, a(2)=7`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A276693

/-- `a(n-2)*a(n-3)-a(n-1)` -/
def P3307920721967447677.Spec : Prop :=
  ∀ n, P3307920721967447677.a n = A276693 n

theorem P3307920721967447677.correct : P3307920721967447677.Spec := by
  intro n
  simp only [A276693]

end A276693

/-! ## A276693.P13736975721551682527

`lcm(a(n-2), a(n-3))-a(n-1)` with `a(0)=3, a(1)=5, a(2)=7`
-/

namespace A276693.P13736975721551682527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 5, 7] fun n a =>
  (Int.lcm (a (n - 2)) (a (n - 3)) : ℤ) - a (n - 1)

end

end A276693.P13736975721551682527

namespace A276693

/-- `lcm(a(n-2), a(n-3))-a(n-1)` -/
def P13736975721551682527.Spec : Prop :=
  ∀ n, P13736975721551682527.a n = A276693 n

end A276693

/-!
# A276694: Where records occur in A209252.

The programs for A276694, there is no canonical definition to state claims against.
-/

/-! ## A276694.P5984180248934165141

`xor(Δ[n²], A320356(5*ceil(n/2)))`
-/

namespace A276694.P5984180248934165141
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) (A320356 (5 * ⌈(n : ℚ) / 2⌉).toNat)

end

end A276694.P5984180248934165141

/-!
# A276695: P-defects p - N(p) of the congruence y^2 == x^3 - x^2 + 4*x - 4 (mod p) for primes p, where N(p) is the number of solutions given for p = prime(n) by A276664(n).

The programs for A276695, there is no canonical definition to state claims against.
-/

/-! ## A276695.P9661711677531967527

`A000040(n+1)-A276664(n+1)`
-/

namespace A276695.P9661711677531967527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - A276664 (n + 1)

end

end A276695.P9661711677531967527

/-! ## A276695.P461664064696626261

`A070750(n+1)*A273163(n+1)`
-/

namespace A276695.P461664064696626261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070750 (n + 1) * A273163 (n + 1)

end

end A276695.P461664064696626261

/-! ## A276695.P628106687108849739

`A272207(n+1)+A273163(n+1)-A276664(n+1)`
-/

namespace A276695.P628106687108849739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272207 (n + 1) + (A273163 (n + 1) - A276664 (n + 1))

end

end A276695.P628106687108849739

/-! ## A276695.P1906363841638805116

`p?[A000037(n+1)]-A276664(n+1)`
-/

namespace A276695.P1906363841638805116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000037 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - A276664 (n + 1)

end

end A276695.P1906363841638805116

/-! ## A276695.P4288412758927455411

`A113658(A006005(n+1))+1-A276664(n+1)`
-/

namespace A276695.P4288412758927455411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113658 (A006005 (n + 1)).toNat + 1 - A276664 (n + 1)

end

end A276695.P4288412758927455411

/-! ## A276695.P15400392373887386706

`p?[A342768(n+1)]-A276664(n+1)`
-/

namespace A276695.P15400392373887386706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342768 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - A276664 (n + 1)

end

end A276695.P15400392373887386706

/-!
# A276696: Triangle read by rows, T(n,k) = T(n-1, k-1) + T(n-2, k) if k is odd, T(n-1, k-1) + T(n-1, k) if k is even, for k<=0<=n and n>=2 with T(0,0)=T(1,0)=T(1,1)=0 and T(n,k)=0 when k>n, k<0, or n<0.

The programs for A276696, there is no canonical definition to state claims against.
-/

/-! ## A276696.P8719935930551840357

`A034851(n)-A025459(A288972(n))`
-/

namespace A276696.P8719935930551840357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034851 n - A025459 (A288972 n).toNat

end

end A276696.P8719935930551840357

/-! ## A276696.P3047934525709931775

`A088855(n+1)-A025459(A288972(n))`
-/

namespace A276696.P3047934525709931775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088855 (n + 1) - A025459 (A288972 n).toNat

end

end A276696.P3047934525709931775

/-! ## A276696.P16081448887600437800

`A034853(n+3)-A276167(A331278(n))`
-/

namespace A276696.P16081448887600437800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034853 (n + 3) - A276167 (A331278 n).toNat

end

end A276696.P16081448887600437800

/-! ## A276696.P16282795691345211303

`A034851(n)-A056626(A079475(2*n+3))`
-/

namespace A276696.P16282795691345211303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034851 n - A056626 (A079475 (2 * n + 3)).toNat

end

end A276696.P16282795691345211303

/-! ## A276696.P274048786283289817

`A097865(9*A034853(n+3))`
-/

namespace A276696.P274048786283289817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097865 (9 * A034853 (n + 3)).toNat

end

end A276696.P274048786283289817

