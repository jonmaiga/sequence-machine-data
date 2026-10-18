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
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
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
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
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
# A164600: a(n) = 18*a(n-1) - 79*a(n-2) for n > 1; a(0) = 1, a(1) = 17.

The programs for A164600, the canonical program `A164600.P10108602873014580381` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164600 has offset 0).

The definition of A164600 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `18*a(n-1)-79*a(n-2)` (program `A164600.P10108602873014580381`, by `A164600.P10108602873014580381.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A164600.P10108602873014580381

`18*a(n-1)-79*a(n-2)` with `a(0)=1, a(1)=17`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A164600

/-- `18*a(n-1)-79*a(n-2)` -/
def P10108602873014580381.Spec : Prop :=
  ∀ n, P10108602873014580381.a n = A164600 n

theorem P10108602873014580381.correct : P10108602873014580381.Spec := by
  intro n
  simp only [A164600]

end A164600

/-! ## A164600.P6315130834689973106

`((1+4*sqrt(2))*(9+sqrt(2))^n+(1-4*sqrt(2))*(9-sqrt(2))^n)/2`
-/

namespace A164600.P6315130834689973106
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((1 + 4 * Real.sqrt (2 : ℝ)) * (9 + Real.sqrt (2 : ℝ)) ^ n + (1 - 4 * Real.sqrt (2 : ℝ)) * (9 - Real.sqrt (2 : ℝ)) ^ n) / 2

end

end A164600.P6315130834689973106

namespace A164600

/-- `((1+4*sqrt(2))*(9+sqrt(2))^n+(1-4*sqrt(2))*(9-sqrt(2))^n)/2` -/
def P6315130834689973106.Spec : Prop :=
  ∀ n, P6315130834689973106.a n = (A164600 n : ℝ)

end A164600

/-! ## A164600.P16966565391839245147

`Δ[A163461(n)-A147960(n)]`
-/

namespace A164600.P16966565391839245147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163461 n - A147960 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A164600.P16966565391839245147

namespace A164600

/-- `Δ[A163461(n)-A147960(n)]` -/
def P16966565391839245147.Spec : Prop :=
  ∀ n, P16966565391839245147.a n = A164600 n

end A164600

/-! ## A164600.P5609771681271749658

`Δ[A163447(n)-A163461(n)]`
-/

namespace A164600.P5609771681271749658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163447 n - A163461 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A164600.P5609771681271749658

namespace A164600

/-- `Δ[A163447(n)-A163461(n)]` -/
def P5609771681271749658.Spec : Prop :=
  ∀ n, P5609771681271749658.a n = A164600 n

end A164600

/-! ## A164600.P13371850803131427770

`2*A163415(n)-A147960(n)`
-/

namespace A164600.P13371850803131427770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A163415 n - A147960 n

end

end A164600.P13371850803131427770

namespace A164600

/-- `2*A163415(n)-A147960(n)` -/
def P13371850803131427770.Spec : Prop :=
  ∀ n, P13371850803131427770.a n = A164600 n

end A164600

/-!
# A164602: a(n) = ((1+4*sqrt(2))*(1+2*sqrt(2))^n + (1-4*sqrt(2))*(1-2*sqrt(2))^n)/2.

The programs for A164602, the canonical program `A164602.P5696899452797165930` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164602 has offset 0).

The definition of A164602 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A164602.P5696899452797165930

`2*a(n-1)+7*a(n-2)` with `a(0)=1, a(1)=17`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A164602

/-- `2*a(n-1)+7*a(n-2)` -/
def P5696899452797165930.Spec : Prop :=
  ∀ n, (P5696899452797165930.a n : ℤ) = A164602 n

theorem P5696899452797165930.correct : P5696899452797165930.Spec := by
  intro n
  simp only [A164602]

end A164602

/-! ## A164602.P2179283902066632356

`A291001(n)+A083100(n)`
-/

namespace A164602.P2179283902066632356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291001 n + A083100 n

end

end A164602.P2179283902066632356

namespace A164602

/-- `A291001(n)+A083100(n)` -/
def P2179283902066632356.Spec : Prop :=
  ∀ n, P2179283902066632356.a n = A164602 n

end A164602

/-! ## A164602.P7867077384440030011

`A083100(n)+Δ[A084058(n)]`
-/

namespace A164602.P7867077384440030011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084058 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083100 n + (f1 (n + 1) - f1 n)

end

end A164602.P7867077384440030011

namespace A164602

/-- `A083100(n)+Δ[A084058(n)]` -/
def P7867077384440030011.Spec : Prop :=
  ∀ n, P7867077384440030011.a n = A164602 n

end A164602

/-! ## A164602.P17328284669898445156

`2*A164539(n)-A083100(n)`
-/

namespace A164602.P17328284669898445156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A164539 n - A083100 n

end

end A164602.P17328284669898445156

namespace A164602

/-- `2*A164539(n)-A083100(n)` -/
def P17328284669898445156.Spec : Prop :=
  ∀ n, P17328284669898445156.a n = A164602 n

end A164602

/-! ## A164602.P14651475119382187796

`A164539(n)+A291001(n)/2`
-/

namespace A164602.P14651475119382187796
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A164539 n : ℚ) + (A291001 n : ℚ) / 2

end

end A164602.P14651475119382187796

namespace A164602

/-- `A164539(n)+A291001(n)/2` -/
def P14651475119382187796.Spec : Prop :=
  ∀ n, P14651475119382187796.a n = (A164602 n : ℚ)

end A164602

/-! ## A164602.P17480725629334660022

`A164539(n)+4*A015519(n)`
-/

namespace A164602.P17480725629334660022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164539 n + 4 * A015519 n

end

end A164602.P17480725629334660022

namespace A164602

/-- `A164539(n)+4*A015519(n)` -/
def P17480725629334660022.Spec : Prop :=
  ∀ n, P17480725629334660022.a n = A164602 n

end A164602

/-! ## A164602.P14969814374996209608

`A084058(n+1)+Δ[A084058(n)]`
-/

namespace A164602.P14969814374996209608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084058 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084058 (n + 1) + (f1 (n + 1) - f1 n)

end

end A164602.P14969814374996209608

namespace A164602

/-- `A084058(n+1)+Δ[A084058(n)]` -/
def P14969814374996209608.Spec : Prop :=
  ∀ n, P14969814374996209608.a n = A164602 n

end A164602

/-! ## A164602.P6759729052992170592

`A083100(n)+Δ[2*A084136(n)]`
-/

namespace A164602.P6759729052992170592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A084136 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083100 n + (f1 (n + 1) - f1 n)

end

end A164602.P6759729052992170592

namespace A164602

/-- `A083100(n)+Δ[2*A084136(n)]` -/
def P6759729052992170592.Spec : Prop :=
  ∀ n, P6759729052992170592.a n = A164602 n

end A164602

/-! ## A164602.P2941933570834653942

`Δ[A015519(n+1)+Δ[A015519(n)]]`
-/

namespace A164602.P2941933570834653942
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015519 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015519 (n + 1) + (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A164602.P2941933570834653942

namespace A164602

/-- `Δ[A015519(n+1)+Δ[A015519(n)]]` -/
def P2941933570834653942.Spec : Prop :=
  ∀ n, P2941933570834653942.a n = A164602 n

end A164602

/-!
# A164603: a(n) = ((1+4*sqrt(2))*(2+2*sqrt(2))^n + (1-4*sqrt(2))*(2-2*sqrt(2))^n)/2.

The programs for A164603, the canonical program `A164603.P8387248700862899132` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164603 has offset 0).

The definition of A164603 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A164603.P8387248700862899132

`4*a(n-1)+4*a(n-2)` with `a(0)=1, a(1)=18`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A164603

/-- `4*a(n-1)+4*a(n-2)` -/
def P8387248700862899132.Spec : Prop :=
  ∀ n, (P8387248700862899132.a n : ℤ) = A164603 n

theorem P8387248700862899132.correct : P8387248700862899132.Spec := by
  intro n
  simp only [A164603]

end A164603

/-! ## A164603.P11384654380021413290

`4*(a(n-1)+a(n-2))` with `a(0)=1, a(1)=18`
-/

namespace A164603.P11384654380021413290
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 18] fun n a =>
  4 * (a (n - 1) + a (n - 2))

end

end A164603.P11384654380021413290

namespace A164603

/-- `4*(a(n-1)+a(n-2))` -/
def P11384654380021413290.Spec : Prop :=
  ∀ n, (P11384654380021413290.a n : ℤ) = A164603 n

theorem P11384654380021413290.correct : P11384654380021413290.Spec := by
  intro n
  simp only [A164603, Nat.add_sub_cancel, A164603.P11384654380021413290.a, A164603.P8387248700862899132.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A164603

/-! ## A164603.P15848935488494235283

`2^n*A048696(n)`
-/

namespace A164603.P15848935488494235283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A048696 n

end

end A164603.P15848935488494235283

namespace A164603

/-- `2^n*A048696(n)` -/
def P15848935488494235283.Spec : Prop :=
  ∀ n, P15848935488494235283.a n = A164603 n

end A164603

/-! ## A164603.P5015100602772367391

`lcm(A000079(n), A048696(n))`
-/

namespace A164603.P5015100602772367391
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000079 n) (A048696 n)

end

end A164603.P5015100602772367391

namespace A164603

/-- `lcm(A000079(n), A048696(n))` -/
def P5015100602772367391.Spec : Prop :=
  ∀ n, (P5015100602772367391.a n : ℤ) = A164603 n

end A164603

/-! ## A164603.P4689035314074544340

`Δ[A170931(n)]-A084128(n)`
-/

namespace A164603.P4689035314074544340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170931 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A084128 n

end

end A164603.P4689035314074544340

namespace A164603

/-- `Δ[A170931(n)]-A084128(n)` -/
def P4689035314074544340.Spec : Prop :=
  ∀ n, P4689035314074544340.a n = A164603 n

end A164603

/-! ## A164603.P18035171509628033710

`A048696(n)*A143095(2*n)`
-/

namespace A164603.P18035171509628033710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048696 n * A143095 (2 * n)

end

end A164603.P18035171509628033710

namespace A164603

/-- `A048696(n)*A143095(2*n)` -/
def P18035171509628033710.Spec : Prop :=
  ∀ n, P18035171509628033710.a n = A164603 n

end A164603

/-! ## A164603.P14787666929445751716

`Δ[A084128(n)]+2*A106568(n)`
-/

namespace A164603.P14787666929445751716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084128 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 2 * A106568 n

end

end A164603.P14787666929445751716

namespace A164603

/-- `Δ[A084128(n)]+2*A106568(n)` -/
def P14787666929445751716.Spec : Prop :=
  ∀ n, P14787666929445751716.a n = A164603 n

end A164603

/-! ## A164603.P8783665848624852084

`A048696(n)*A112032(2*n+1)`
-/

namespace A164603.P8783665848624852084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048696 n * A112032 (2 * n + 1)

end

end A164603.P8783665848624852084

namespace A164603

/-- `A048696(n)*A112032(2*n+1)` -/
def P8783665848624852084.Spec : Prop :=
  ∀ n, P8783665848624852084.a n = A164603 n

end A164603

/-! ## A164603.P15504149938993134023

`A048696(n)*A163864(2*n+1)`
-/

namespace A164603.P15504149938993134023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048696 n * A163864 (2 * n + 1)

end

end A164603.P15504149938993134023

namespace A164603

/-- `A048696(n)*A163864(2*n+1)` -/
def P15504149938993134023.Spec : Prop :=
  ∀ n, P15504149938993134023.a n = A164603 n

end A164603

/-! ## A164603.P918009602843707807

`A048696(n)*A164587(2*n+1)`
-/

namespace A164603.P918009602843707807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048696 n * A164587 (2 * n + 1)

end

end A164603.P918009602843707807

namespace A164603

/-- `A048696(n)*A164587(2*n+1)` -/
def P918009602843707807.Spec : Prop :=
  ∀ n, P918009602843707807.a n = A164603 n

end A164603

/-! ## A164603.P6671692349444520969

`A170931(n+1)-3*A084128(n)`
-/

namespace A164603.P6671692349444520969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170931 (n + 1) - 3 * A084128 n

end

end A164603.P6671692349444520969

namespace A164603

/-- `A170931(n+1)-3*A084128(n)` -/
def P6671692349444520969.Spec : Prop :=
  ∀ n, P6671692349444520969.a n = A164603 n

end A164603

/-! ## A164603.P6544371218609300952

`(A048697(n)-A000129(n))*A000079(n)`
-/

namespace A164603.P6544371218609300952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A048697 n - A000129 n) * A000079 n

end

end A164603.P6544371218609300952

namespace A164603

/-- `(A048697(n)-A000129(n))*A000079(n)` -/
def P6544371218609300952.Spec : Prop :=
  ∀ n, P6544371218609300952.a n = A164603 n

end A164603

/-! ## A164603.P10120672307444604394

`A170931(n+1)-(A170931(n)+A084128(n))`
-/

namespace A164603.P10120672307444604394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170931 (n + 1) - (A170931 n + A084128 n)

end

end A164603.P10120672307444604394

namespace A164603

/-- `A170931(n+1)-(A170931(n)+A084128(n))` -/
def P10120672307444604394.Spec : Prop :=
  ∀ n, P10120672307444604394.a n = A164603 n

end A164603

/-! ## A164603.P12370092615659052034

`(A135532(n)+A002203(n+1))*A000079(n)`
-/

namespace A164603.P12370092615659052034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A135532 n + A002203 (n + 1)) * A000079 n

end

end A164603.P12370092615659052034

namespace A164603

/-- `(A135532(n)+A002203(n+1))*A000079(n)` -/
def P12370092615659052034.Spec : Prop :=
  ∀ n, P12370092615659052034.a n = A164603 n

end A164603

/-!
# A164604: a(n) = ((1+4*sqrt(2))*(3+2*sqrt(2))^n + (1-4*sqrt(2))*(3-2*sqrt(2))^n)/2.

The programs for A164604, the canonical program `A164604.P9461524173921126507` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164604 has offset 0).

The definition of A164604 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A164604.P9461524173921126507

`6*a(n-1)-a(n-2)` with `a(0)=1, a(1)=19`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A164604

/-- `6*a(n-1)-a(n-2)` -/
def P9461524173921126507.Spec : Prop :=
  ∀ n, P9461524173921126507.a n = A164604 n

theorem P9461524173921126507.correct : P9461524173921126507.Spec := by
  intro n
  simp only [A164604]

end A164604

/-! ## A164604.P12529157279711185359

`A048696(2*n)`
-/

namespace A164604.P12529157279711185359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048696 (2 * n)

end

end A164604.P12529157279711185359

namespace A164604

/-- `A048696(2*n)` -/
def P12529157279711185359.Spec : Prop :=
  ∀ n, P12529157279711185359.a n = A164604 n

end A164604

/-! ## A164604.P3560103662457719025

`2*A154139(2*n+1)+1`
-/

namespace A164604.P3560103662457719025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A154139 (2 * n + 1) + 1

end

end A164604.P3560103662457719025

namespace A164604

/-- `2*A154139(2*n+1)+1` -/
def P3560103662457719025.Spec : Prop :=
  ∀ n, P3560103662457719025.a n = A164604 n

end A164604

/-! ## A164604.P1387981337580519026

`record[A048696(A237420(n))]`
-/

namespace A164604.P1387981337580519026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048696 (A237420 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A164604.P1387981337580519026

namespace A164604

/-- `record[A048696(A237420(n))]` -/
def P1387981337580519026.Spec : Prop :=
  ∀ n, P1387981337580519026.a n = A164604 n

end A164604

/-! ## A164604.P14812754833194380851

`A081554(n)+A054490(n)`
-/

namespace A164604.P14812754833194380851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081554 n + A054490 n

end

end A164604.P14812754833194380851

namespace A164604

/-- `A081554(n)+A054490(n)` -/
def P14812754833194380851.Spec : Prop :=
  ∀ n, P14812754833194380851.a n = A164604 n

end A164604

/-! ## A164604.P13911605862297521006

`A054490(n)+2*A005319(n)`
-/

namespace A164604.P13911605862297521006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054490 n + 2 * A005319 n

end

end A164604.P13911605862297521006

namespace A164604

/-- `A054490(n)+2*A005319(n)` -/
def P13911605862297521006.Spec : Prop :=
  ∀ n, P13911605862297521006.a n = A164604 n

end A164604

/-! ## A164604.P6489252139964194084

`A002315(n)+2*A075848(n)`
-/

namespace A164604.P6489252139964194084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002315 n + 2 * A075848 n

end

end A164604.P6489252139964194084

namespace A164604

/-- `A002315(n)+2*A075848(n)` -/
def P6489252139964194084.Spec : Prop :=
  ∀ n, P6489252139964194084.a n = A164604 n

end A164604

/-! ## A164604.P9462839901379161793

`2*A054490(n)-A001541(n)`
-/

namespace A164604.P9462839901379161793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A054490 n - A001541 n

end

end A164604.P9462839901379161793

namespace A164604

/-- `2*A054490(n)-A001541(n)` -/
def P9462839901379161793.Spec : Prop :=
  ∀ n, P9462839901379161793.a n = A164604 n

end A164604

/-! ## A164604.P2531785790181576096

`A164541(n)+A081554(n)/2`
-/

namespace A164604.P2531785790181576096
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A164541 n : ℚ) + (A081554 n : ℚ) / 2

end

end A164604.P2531785790181576096

namespace A164604

/-- `A164541(n)+A081554(n)/2` -/
def P2531785790181576096.Spec : Prop :=
  ∀ n, P2531785790181576096.a n = (A164604 n : ℚ)

end A164604

/-! ## A164604.P2148904867544167407

`A038761(n)+10*A001109(n)`
-/

namespace A164604.P2148904867544167407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038761 n + 10 * A001109 n

end

end A164604.P2148904867544167407

namespace A164604

/-- `A038761(n)+10*A001109(n)` -/
def P2148904867544167407.Spec : Prop :=
  ∀ n, P2148904867544167407.a n = A164604 n

end A164604

/-! ## A164604.P11867765546886863058

`A002315(n)+12*A001109(n)`
-/

namespace A164604.P11867765546886863058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002315 n + 12 * A001109 n

end

end A164604.P11867765546886863058

namespace A164604

/-- `A002315(n)+12*A001109(n)` -/
def P11867765546886863058.Spec : Prop :=
  ∀ n, P11867765546886863058.a n = A164604 n

end A164604

/-! ## A164604.P12687800313257195713

`Δ[A001108(n)]+2*A075848(n)`
-/

namespace A164604.P12687800313257195713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001108 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 2 * A075848 n

end

end A164604.P12687800313257195713

namespace A164604

/-- `Δ[A001108(n)]+2*A075848(n)` -/
def P12687800313257195713.Spec : Prop :=
  ∀ n, P12687800313257195713.a n = A164604 n

end A164604

/-! ## A164604.P11406569351126684397

`2*A054490(n)-Δ[A182435(n)]`
-/

namespace A164604.P11406569351126684397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182435 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A054490 n - (f1 (n + 1) - f1 n)

end

end A164604.P11406569351126684397

namespace A164604

/-- `2*A054490(n)-Δ[A182435(n)]` -/
def P11406569351126684397.Spec : Prop :=
  ∀ n, P11406569351126684397.a n = A164604 n

end A164604

/-! ## A164604.P121629149175617008

`A154144(2*n+1)-A072221(n)`
-/

namespace A164604.P121629149175617008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154144 (2 * n + 1) - A072221 n

end

end A164604.P121629149175617008

namespace A164604

/-- `A154144(2*n+1)-A072221(n)` -/
def P121629149175617008.Spec : Prop :=
  ∀ n, P121629149175617008.a n = A164604 n

end A164604

/-! ## A164604.P7921485192212096882

`A048695(2*n)+A000129(2*n)`
-/

namespace A164604.P7921485192212096882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048695 (2 * n) + A000129 (2 * n)

end

end A164604.P7921485192212096882

namespace A164604

/-- `A048695(2*n)+A000129(2*n)` -/
def P7921485192212096882.Spec : Prop :=
  ∀ n, P7921485192212096882.a n = A164604 n

end A164604

/-! ## A164604.P6931753646398287916

`A048697(2*n)-A000129(2*n)`
-/

namespace A164604.P6931753646398287916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048697 (2 * n) - A000129 (2 * n)

end

end A164604.P6931753646398287916

namespace A164604

/-- `A048697(2*n)-A000129(2*n)` -/
def P6931753646398287916.Spec : Prop :=
  ∀ n, P6931753646398287916.a n = A164604 n

end A164604

/-! ## A164604.P7517694657712159033

`A164303(2*n)-A002203(2*n)`
-/

namespace A164604.P7517694657712159033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164303 (2 * n) - A002203 (2 * n)

end

end A164604.P7517694657712159033

namespace A164604

/-- `A164303(2*n)-A002203(2*n)` -/
def P7517694657712159033.Spec : Prop :=
  ∀ n, P7517694657712159033.a n = A164604 n

end A164604

/-! ## A164604.P3442740345098318521

`A001541(n+2)%A077445(n+1)`
-/

namespace A164604.P3442740345098318521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001541 (n + 2)) (A077445 (n + 1))

end

end A164604.P3442740345098318521

namespace A164604

/-- `A001541(n+2)%A077445(n+1)` -/
def P3442740345098318521.Spec : Prop :=
  ∀ n, P3442740345098318521.a n = A164604 n

end A164604

/-! ## A164604.P12443388858979375669

`A276602(n+1)+A276599(2*n+1)`
-/

namespace A164604.P12443388858979375669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276602 (n + 1) + A276599 (2 * n + 1)

end

end A164604.P12443388858979375669

namespace A164604

/-- `A276602(n+1)+A276599(2*n+1)` -/
def P12443388858979375669.Spec : Prop :=
  ∀ n, P12443388858979375669.a n = A164604 n

end A164604

/-!
# A164605: a(n) = ((1+4*sqrt(2))*(4+2*sqrt(2))^n + (1-4*sqrt(2))*(4-2*sqrt(2))^n)/2.

The programs for A164605, the canonical program `A164605.P7558677959195558587` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164605 has offset 0).

The definition of A164605 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A164605.P7558677959195558587

`8*a(n-1)-8*a(n-2)` with `a(0)=1, a(1)=20`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A164605

/-- `8*a(n-1)-8*a(n-2)` -/
def P7558677959195558587.Spec : Prop :=
  ∀ n, P7558677959195558587.a n = A164605 n

theorem P7558677959195558587.correct : P7558677959195558587.Spec := by
  intro n
  simp only [A164605]

end A164605

/-! ## A164605.P17662275609223691515

`8*(a(n-1)-a(n-2))` with `a(0)=1, a(1)=20`
-/

namespace A164605.P17662275609223691515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 20] fun n a =>
  8 * (a (n - 1) - a (n - 2))

end

end A164605.P17662275609223691515

namespace A164605

/-- `8*(a(n-1)-a(n-2))` -/
def P17662275609223691515.Spec : Prop :=
  ∀ n, P17662275609223691515.a n = A164605 n

theorem P17662275609223691515.correct : P17662275609223691515.Spec := by
  intro n
  simp only [A164605, Nat.add_sub_cancel, A164605.P17662275609223691515.a, A164605.P7558677959195558587.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A164605

/-! ## A164605.P8157189910517254156

`2^n*A164298(n)`
-/

namespace A164605.P8157189910517254156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A164298 n

end

end A164605.P8157189910517254156

namespace A164605

/-- `2^n*A164298(n)` -/
def P8157189910517254156.Spec : Prop :=
  ∀ n, P8157189910517254156.a n = A164605 n

end A164605

/-! ## A164605.P10188739492272901967

`lcm(A094015(n), A164298(n))`
-/

namespace A164605.P10188739492272901967
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A094015 n) (A164298 n)

end

end A164605.P10188739492272901967

namespace A164605

/-- `lcm(A094015(n), A164298(n))` -/
def P10188739492272901967.Spec : Prop :=
  ∀ n, (P10188739492272901967.a n : ℤ) = A164605 n

end A164605

/-! ## A164605.P366654912146159989

`A164298(n)*A164587(2*n+1)`
-/

namespace A164605.P366654912146159989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164298 n * A164587 (2 * n + 1)

end

end A164605.P366654912146159989

namespace A164605

/-- `A164298(n)*A164587(2*n+1)` -/
def P366654912146159989.Spec : Prop :=
  ∀ n, P366654912146159989.a n = A164605 n

end A164605

/-! ## A164605.P6322634823534266747

`A164298(n)/A008574(n)*A241204(n)`
-/

namespace A164605.P6322634823534266747
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A164298 n : ℚ) / (A008574 n : ℚ) * (A241204 n : ℚ)

end

end A164605.P6322634823534266747

namespace A164605

/-- `A164298(n)/A008574(n)*A241204(n)` -/
def P6322634823534266747.Spec : Prop :=
  ∀ n, P6322634823534266747.a n = (A164605 n : ℚ)

end A164605

/-!
# A164606: a(n) = 10*a(n-1) - 17*a(n-2) for n > 1; a(0) = 1, a(1) = 21.

The programs for A164606, the canonical program `A164606.P8266860793116564943` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164606 has offset 0).

The definition of A164606 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `10*a(n-1)-17*a(n-2)` (program `A164606.P8266860793116564943`, by `A164606.P8266860793116564943.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A164606.P8266860793116564943

`10*a(n-1)-17*a(n-2)` with `a(0)=1, a(1)=21`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A164606

/-- `10*a(n-1)-17*a(n-2)` -/
def P8266860793116564943.Spec : Prop :=
  ∀ n, P8266860793116564943.a n = A164606 n

theorem P8266860793116564943.correct : P8266860793116564943.Spec := by
  intro n
  simp only [A164606]

end A164606

/-! ## A164606.P16903922317433246202

`2*A164609(n)-A084131(n)`
-/

namespace A164606.P16903922317433246202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A164609 n - A084131 n

end

end A164606.P16903922317433246202

namespace A164606

/-- `2*A164609(n)-A084131(n)` -/
def P16903922317433246202.Spec : Prop :=
  ∀ n, P16903922317433246202.a n = A164606 n

end A164606

/-! ## A164606.P18150145395590007919

`2*A164543(n)-A164609(n)`
-/

namespace A164606.P18150145395590007919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A164543 n - A164609 n

end

end A164606.P18150145395590007919

namespace A164606

/-- `2*A164543(n)-A164609(n)` -/
def P18150145395590007919.Spec : Prop :=
  ∀ n, P18150145395590007919.a n = A164606 n

end A164606

/-! ## A164606.P6059474522915945868

`A084131(n+2)%Δ[A084131(n)]`
-/

namespace A164606.P6059474522915945868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084131 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A084131 (n + 2)) (f1 (n + 1) - f1 n)

end

end A164606.P6059474522915945868

namespace A164606

/-- `A084131(n+2)%Δ[A084131(n)]` -/
def P6059474522915945868.Spec : Prop :=
  ∀ n, P6059474522915945868.a n = A164606 n

end A164606

/-!
# A164607: a(n) = 4*a(n-1) + 4*a(n-2) for n > 1; a(0) = 1, a(1) = 10.

The programs for A164607, the canonical program `A164607.P7771923517016220518` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164607 has offset 0).

The definition of A164607 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*a(n-1)+4*a(n-2)` (program `A164607.P7771923517016220518`, by `A164607.P7771923517016220518.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A164607.P7771923517016220518

`4*a(n-1)+4*a(n-2)` with `a(0)=1, a(1)=10`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A164607

/-- `4*a(n-1)+4*a(n-2)` -/
def P7771923517016220518.Spec : Prop :=
  ∀ n, (P7771923517016220518.a n : ℤ) = A164607 n

theorem P7771923517016220518.correct : P7771923517016220518.Spec := by
  intro n
  simp only [A164607]

end A164607

/-! ## A164607.P1468304829436479213

`4*(a(n-1)+a(n-2))` with `a(0)=1, a(1)=10`
-/

namespace A164607.P1468304829436479213
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 10] fun n a =>
  4 * (a (n - 1) + a (n - 2))

end

end A164607.P1468304829436479213

namespace A164607

/-- `4*(a(n-1)+a(n-2))` -/
def P1468304829436479213.Spec : Prop :=
  ∀ n, (P1468304829436479213.a n : ℤ) = A164607 n

theorem P1468304829436479213.correct : P1468304829436479213.Spec := by
  intro n
  simp only [A164607, Nat.add_sub_cancel, A164607.P1468304829436479213.a, A164607.P7771923517016220518.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A164607

/-! ## A164607.P17556248398755513991

`Δ[4*(a(n-1)-ceil(-a(n-2)))]` with `a(0)=1, a(1)=2`

`ceil` is left out, it is the identity on integers.
-/

namespace A164607.P17556248398755513991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  4 * (f1 (n - 1) - (-f1 (n - 2)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A164607.P17556248398755513991

namespace A164607

/-- `Δ[4*(a(n-1)-ceil(-a(n-2)))]` -/
def P17556248398755513991.Spec : Prop :=
  ∀ n, P17556248398755513991.a n = A164607 n

end A164607

/-! ## A164607.P14079549947101007477

`Δ[4*(a(n-1)-round(-a(n-2)))]` with `a(0)=1, a(1)=2`

`round` is left out, it is the identity on integers.
-/

namespace A164607.P14079549947101007477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  4 * (f1 (n - 1) - (-f1 (n - 2)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A164607.P14079549947101007477

namespace A164607

/-- `Δ[4*(a(n-1)-round(-a(n-2)))]` -/
def P14079549947101007477.Spec : Prop :=
  ∀ n, P14079549947101007477.a n = A164607 n

end A164607

/-! ## A164607.P17371354705972687991

`Δ[(a(n-1)+a(n-2))/(1/2)²]` with `a(0)=1, a(1)=2`
-/

namespace A164607.P17371354705972687991
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  (f1 (n - 1) + f1 (n - 2)) / ((1 : ℚ) / 2) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A164607.P17371354705972687991

namespace A164607

/-- `Δ[(a(n-1)+a(n-2))/(1/2)²]` -/
def P17371354705972687991.Spec : Prop :=
  ∀ n, P17371354705972687991.a n = (A164607 n : ℚ)

end A164607

/-! ## A164607.P5305645622598640216

`4*(1-floor(1-a(n-1)-a(n-2)))` with `a(0)=1, a(1)=10`

`floor` is left out, it is the identity on integers.
-/

namespace A164607.P5305645622598640216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 10] fun n a =>
  4 * (1 - (1 - a (n - 1) - a (n - 2)))

end

end A164607.P5305645622598640216

namespace A164607

/-- `4*(1-floor(1-a(n-1)-a(n-2)))` -/
def P5305645622598640216.Spec : Prop :=
  ∀ n, P5305645622598640216.a n = A164607 n

end A164607

/-! ## A164607.P820700539241956695

`Δ[A084128(n)]`
-/

namespace A164607.P820700539241956695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084128 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A164607.P820700539241956695

namespace A164607

/-- `Δ[A084128(n)]` -/
def P820700539241956695.Spec : Prop :=
  ∀ n, P820700539241956695.a n = A164607 n

end A164607

/-! ## A164607.P3264938148597846787

`Δ[A170931(n)/2]`
-/

namespace A164607.P3264938148597846787
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A170931 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A164607.P3264938148597846787

namespace A164607

/-- `Δ[A170931(n)/2]` -/
def P3264938148597846787.Spec : Prop :=
  ∀ n, P3264938148597846787.a n = (A164607 n : ℚ)

end A164607

/-! ## A164607.P14777893710741443143

`2^n*A048655(n)`
-/

namespace A164607.P14777893710741443143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A048655 n

end

end A164607.P14777893710741443143

namespace A164607

/-- `2^n*A048655(n)` -/
def P14777893710741443143.Spec : Prop :=
  ∀ n, P14777893710741443143.a n = A164607 n

end A164607

/-! ## A164607.P15707132919685381445

`Δ[2^n*A001333(n)]`
-/

namespace A164607.P15707132919685381445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A001333 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A164607.P15707132919685381445

namespace A164607

/-- `Δ[2^n*A001333(n)]` -/
def P15707132919685381445.Spec : Prop :=
  ∀ n, P15707132919685381445.a n = A164607 n

end A164607

/-! ## A164607.P17630694776538053119

`lcm(A000079(n), A048655(n))`
-/

namespace A164607.P17630694776538053119
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000079 n) (A048655 n)

end

end A164607.P17630694776538053119

namespace A164607

/-- `lcm(A000079(n), A048655(n))` -/
def P17630694776538053119.Spec : Prop :=
  ∀ n, (P17630694776538053119.a n : ℤ) = A164607 n

end A164607

/-! ## A164607.P6026697507511350224

`A084128(n+1)-A084128(n)`
-/

namespace A164607.P6026697507511350224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084128 (n + 1) - A084128 n

end

end A164607.P6026697507511350224

namespace A164607

/-- `A084128(n+1)-A084128(n)` -/
def P6026697507511350224.Spec : Prop :=
  ∀ n, P6026697507511350224.a n = A164607 n

end A164607

/-! ## A164607.P9985886650771910678

`A084128(n)+2*A106568(n)`
-/

namespace A164607.P9985886650771910678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084128 n + 2 * A106568 n

end

end A164607.P9985886650771910678

namespace A164607

/-- `A084128(n)+2*A106568(n)` -/
def P9985886650771910678.Spec : Prop :=
  ∀ n, P9985886650771910678.a n = A164607 n

end A164607

/-! ## A164607.P3403361999757246631

`A048655(n)*A077957(2*n)`
-/

namespace A164607.P3403361999757246631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048655 n * A077957 (2 * n)

end

end A164607.P3403361999757246631

namespace A164607

/-- `A048655(n)*A077957(2*n)` -/
def P3403361999757246631.Spec : Prop :=
  ∀ n, P3403361999757246631.a n = A164607 n

end A164607

/-! ## A164607.P16636706853713609110

`A048655(n)*A143095(2*n)`
-/

namespace A164607.P16636706853713609110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048655 n * A143095 (2 * n)

end

end A164607.P16636706853713609110

namespace A164607

/-- `A048655(n)*A143095(2*n)` -/
def P16636706853713609110.Spec : Prop :=
  ∀ n, P16636706853713609110.a n = A164607 n

end A164607

/-! ## A164607.P9893531974271090939

`Δ[Δ[A000129(n)]*A000079(n)]`
-/

namespace A164607.P9893531974271090939
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) * A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A164607.P9893531974271090939

namespace A164607

/-- `Δ[Δ[A000129(n)]*A000079(n)]` -/
def P9893531974271090939.Spec : Prop :=
  ∀ n, P9893531974271090939.a n = A164607 n

end A164607

/-! ## A164607.P6393475274315803912

`Δ[A001333(n)*A011782(n+1)]`
-/

namespace A164607.P6393475274315803912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001333 n * A011782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A164607.P6393475274315803912

namespace A164607

/-- `Δ[A001333(n)*A011782(n+1)]` -/
def P6393475274315803912.Spec : Prop :=
  ∀ n, P6393475274315803912.a n = A164607 n

end A164607

/-! ## A164607.P5398770430828935170

`Δ[(A293004(n)+1)*A000079(n)]`
-/

namespace A164607.P5398770430828935170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A293004 n + 1) * A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A164607.P5398770430828935170

namespace A164607

/-- `Δ[(A293004(n)+1)*A000079(n)]` -/
def P5398770430828935170.Spec : Prop :=
  ∀ n, P5398770430828935170.a n = A164607 n

end A164607

/-! ## A164607.P2707809385431992947

`Δ[A001333(n)*A016116(2*n)]`
-/

namespace A164607.P2707809385431992947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001333 n * A016116 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A164607.P2707809385431992947

namespace A164607

/-- `Δ[A001333(n)*A016116(2*n)]` -/
def P2707809385431992947.Spec : Prop :=
  ∀ n, P2707809385431992947.a n = A164607 n

end A164607

/-!
# A164608: Expansion of (1+4*x)/(1-8*x+8*x^2).

The programs for A164608, the canonical program `A164608.P9261851789057019078` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164608 has offset 0).

The definition of A164608 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A164608.P9261851789057019078

`8*a(n-1)-8*a(n-2)` with `a(0)=1, a(1)=12`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A164608

/-- `8*a(n-1)-8*a(n-2)` -/
def P9261851789057019078.Spec : Prop :=
  ∀ n, P9261851789057019078.a n = A164608 n

theorem P9261851789057019078.correct : P9261851789057019078.Spec := by
  intro n
  simp only [A164608]

end A164608

/-! ## A164608.P332180824970324210

`8*(a(n-1)-a(n-2))` with `a(0)=1, a(1)=12`
-/

namespace A164608.P332180824970324210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 12] fun n a =>
  8 * (a (n - 1) - a (n - 2))

end

end A164608.P332180824970324210

namespace A164608

/-- `8*(a(n-1)-a(n-2))` -/
def P332180824970324210.Spec : Prop :=
  ∀ n, P332180824970324210.a n = A164608 n

theorem P332180824970324210.correct : P332180824970324210.Spec := by
  intro n
  simp only [A164608, Nat.add_sub_cancel, A164608.P332180824970324210.a, A164608.P9261851789057019078.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A164608

/-! ## A164608.P11311421283944717523

`2^n*A111566(n)`
-/

namespace A164608.P11311421283944717523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A111566 n

end

end A164608.P11311421283944717523

namespace A164608

/-- `2^n*A111566(n)` -/
def P11311421283944717523.Spec : Prop :=
  ∀ n, P11311421283944717523.a n = A164608 n

end A164608

/-! ## A164608.P16140068520746975951

`∑[A209101(n+1)]-1`
-/

namespace A164608.P16140068520746975951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209101 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A164608.P16140068520746975951

namespace A164608

/-- `∑[A209101(n+1)]-1` -/
def P16140068520746975951.Spec : Prop :=
  ∀ n, P16140068520746975951.a n = A164608 n

end A164608

/-! ## A164608.P8464399521809591085

`lcm(A094015(n), A111566(n))`
-/

namespace A164608.P8464399521809591085
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A094015 n) (A111566 n)

end

end A164608.P8464399521809591085

namespace A164608

/-- `lcm(A094015(n), A111566(n))` -/
def P8464399521809591085.Spec : Prop :=
  ∀ n, (P8464399521809591085.a n : ℤ) = A164608 n

end A164608

/-! ## A164608.P2185500982308126330

`2*A164546(n)-A057084(n)`
-/

namespace A164608.P2185500982308126330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A164546 n - A057084 n

end

end A164608.P2185500982308126330

namespace A164608

/-- `2*A164546(n)-A057084(n)` -/
def P2185500982308126330.Spec : Prop :=
  ∀ n, P2185500982308126330.a n = A164608 n

end A164608

/-! ## A164608.P12133686700815723651

`A111566(n)*A143095(2*n)`
-/

namespace A164608.P12133686700815723651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111566 n * A143095 (2 * n)

end

end A164608.P12133686700815723651

namespace A164608

/-- `A111566(n)*A143095(2*n)` -/
def P12133686700815723651.Spec : Prop :=
  ∀ n, P12133686700815723651.a n = A164608 n

end A164608

/-! ## A164608.P11813375246901102865

`Δ[A084130(n)]-2*A084130(n)`
-/

namespace A164608.P11813375246901102865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084130 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 2 * A084130 n

end

end A164608.P11813375246901102865

namespace A164608

/-- `Δ[A084130(n)]-2*A084130(n)` -/
def P11813375246901102865.Spec : Prop :=
  ∀ n, P11813375246901102865.a n = A164608 n

end A164608

/-! ## A164608.P9531711273971683282

`A111566(n)*A164073(2*n+1)`
-/

namespace A164608.P9531711273971683282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111566 n * A164073 (2 * n + 1)

end

end A164608.P9531711273971683282

namespace A164608

/-- `A111566(n)*A164073(2*n+1)` -/
def P9531711273971683282.Spec : Prop :=
  ∀ n, P9531711273971683282.a n = A164608 n

end A164608

/-! ## A164608.P6848679880316625807

`(A007070(n)-A106731(n))*A000079(n)`
-/

namespace A164608.P6848679880316625807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A007070 n - A106731 n) * A000079 n

end

end A164608.P6848679880316625807

namespace A164608

/-- `(A007070(n)-A106731(n))*A000079(n)` -/
def P6848679880316625807.Spec : Prop :=
  ∀ n, P6848679880316625807.a n = A164608 n

end A164608

/-! ## A164608.P5473053332422518382

`(A060995(n+1)+A007070(n))*A000079(n)`
-/

namespace A164608.P5473053332422518382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A060995 (n + 1) + A007070 n) * A000079 n

end

end A164608.P5473053332422518382

namespace A164608

/-- `(A060995(n+1)+A007070(n))*A000079(n)` -/
def P5473053332422518382.Spec : Prop :=
  ∀ n, P5473053332422518382.a n = A164608 n

end A164608

/-! ## A164608.P466029551308150472

`(A001882(2*(n+1))-A001882(2*n+1))*A011782(n+1)`
-/

namespace A164608.P466029551308150472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001882 (2 * (n + 1)) - A001882 (2 * n + 1)) * A011782 (n + 1)

end

end A164608.P466029551308150472

namespace A164608

/-- `(A001882(2*(n+1))-A001882(2*n+1))*A011782(n+1)` -/
def P466029551308150472.Spec : Prop :=
  ∀ n, P466029551308150472.a n = A164608 n

end A164608

/-! ## A164608.P625521528471550244

`(A001882(2*(n+1))-A001882(2*n+1))*A016116(2*n)`
-/

namespace A164608.P625521528471550244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001882 (2 * (n + 1)) - A001882 (2 * n + 1)) * A016116 (2 * n)

end

end A164608.P625521528471550244

namespace A164608

/-- `(A001882(2*(n+1))-A001882(2*n+1))*A016116(2*n)` -/
def P625521528471550244.Spec : Prop :=
  ∀ n, P625521528471550244.a n = A164608 n

end A164608

/-! ## A164608.P12705125453947659825

`(A001882(2*(n+1))-A001882(2*n+1))*A135530(2*n+1)`
-/

namespace A164608.P12705125453947659825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001882 (2 * (n + 1)) - A001882 (2 * n + 1)) * A135530 (2 * n + 1)

end

end A164608.P12705125453947659825

namespace A164608

/-- `(A001882(2*(n+1))-A001882(2*n+1))*A135530(2*n+1)` -/
def P12705125453947659825.Spec : Prop :=
  ∀ n, P12705125453947659825.a n = A164608 n

end A164608

/-! ## A164608.P473745522250552974

`Δ[A228568(n)/2]-A228568(n)`
-/

namespace A164608.P473745522250552974
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A228568 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (A228568 n : ℚ)

end

end A164608.P473745522250552974

namespace A164608

/-- `Δ[A228568(n)/2]-A228568(n)` -/
def P473745522250552974.Spec : Prop :=
  ∀ n, P473745522250552974.a n = (A164608 n : ℚ)

end A164608

/-! ## A164608.P14404688915336304806

`A111566(n)/A081179(n+1)*A154346(n)`
-/

namespace A164608.P14404688915336304806
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A111566 n : ℚ) / (A081179 (n + 1) : ℚ) * (A154346 n : ℚ)

end

end A164608.P14404688915336304806

namespace A164608

/-- `A111566(n)/A081179(n+1)*A154346(n)` -/
def P14404688915336304806.Spec : Prop :=
  ∀ n, P14404688915336304806.a n = (A164608 n : ℚ)

end A164608

/-!
# A164609: a(n) = 10*a(n-1) - 17*a(n-2) for n > 1; a(0) = 1, a(1) = 13.

The programs for A164609, the canonical program `A164609.P15965857908050669748` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164609 has offset 0).

The definition of A164609 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `10*a(n-1)-17*a(n-2)` (program `A164609.P15965857908050669748`, by `A164609.P15965857908050669748.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A164609.P15965857908050669748

`10*a(n-1)-17*a(n-2)` with `a(0)=1, a(1)=13`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A164609

/-- `10*a(n-1)-17*a(n-2)` -/
def P15965857908050669748.Spec : Prop :=
  ∀ n, P15965857908050669748.a n = A164609 n

theorem P15965857908050669748.correct : P15965857908050669748.Spec := by
  intro n
  simp only [A164609]

end A164609

/-! ## A164609.P2434890897951749849

`2*A164588(n)-A084131(n)`
-/

namespace A164609.P2434890897951749849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A164588 n - A084131 n

end

end A164609.P2434890897951749849

namespace A164609

/-- `2*A164588(n)-A084131(n)` -/
def P2434890897951749849.Spec : Prop :=
  ∀ n, P2434890897951749849.a n = A164609 n

end A164609

/-! ## A164609.P15565434357001728928

`(A164606(n)+A084131(n))/2`
-/

namespace A164609.P15565434357001728928
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A164606 n + A084131 n : ℚ) / 2

end

end A164609.P15565434357001728928

namespace A164609

/-- `(A164606(n)+A084131(n))/2` -/
def P15565434357001728928.Spec : Prop :=
  ∀ n, P15565434357001728928.a n = (A164609 n : ℚ)

end A164609

/-! ## A164609.P8338979888339655425

`2*A164547(n)-A164588(n)`
-/

namespace A164609.P8338979888339655425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A164547 n - A164588 n

end

end A164609.P8338979888339655425

namespace A164609

/-- `2*A164547(n)-A164588(n)` -/
def P8338979888339655425.Spec : Prop :=
  ∀ n, P8338979888339655425.a n = A164609 n

end A164609

/-! ## A164609.P3554958516899758004

`(A164588(n)+A164543(n))/2`
-/

namespace A164609.P3554958516899758004
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A164588 n + A164543 n : ℚ) / 2

end

end A164609.P3554958516899758004

namespace A164609

/-- `(A164588(n)+A164543(n))/2` -/
def P3554958516899758004.Spec : Prop :=
  ∀ n, P3554958516899758004.a n = (A164609 n : ℚ)

end A164609

/-! ## A164609.P1134902829919978333

`2*A164543(n)-A164606(n)`
-/

namespace A164609.P1134902829919978333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A164543 n - A164606 n

end

end A164609.P1134902829919978333

namespace A164609

/-- `2*A164543(n)-A164606(n)` -/
def P1134902829919978333.Spec : Prop :=
  ∀ n, P1134902829919978333.a n = A164609 n

end A164609

/-!
# A164611: Expansion of (1 + x + 2*x^2 - x^3)/(1 - 2*x + 3*x^2 - 2*x^3 + x^4).

The programs for A164611, the canonical program `A164611.P6495175972409482962` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164611 has offset 0).

The definition of A164611 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A164611.P6495175972409482962

`2*a(n-1)-3*a(n-2)+2*a(n-3)-a(n-4)` with `a(0)=1, a(1)=3, a(2)=5, a(3)=2`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A164611

/-- `2*a(n-1)-3*a(n-2)+2*a(n-3)-a(n-4)` -/
def P6495175972409482962.Spec : Prop :=
  ∀ n, P6495175972409482962.a n = A164611 n

theorem P6495175972409482962.correct : P6495175972409482962.Spec := by
  intro n
  simp only [A164611]

end A164611

/-! ## A164611.P11715443162481793809

`∑[n*A057079(n)]+1`
-/

namespace A164611.P11715443162481793809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A057079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A164611.P11715443162481793809

namespace A164611

/-- `∑[n*A057079(n)]+1` -/
def P11715443162481793809.Spec : Prop :=
  ∀ n, P11715443162481793809.a n = A164611 n

end A164611

/-! ## A164611.P16395583685364139774

`A187340(n)+A110665(n)`
-/

namespace A164611.P16395583685364139774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187340 n + A110665 n

end

end A164611.P16395583685364139774

namespace A164611

/-- `A187340(n)+A110665(n)` -/
def P16395583685364139774.Spec : Prop :=
  ∀ n, P16395583685364139774.a n = A164611 n

end A164611

/-! ## A164611.P12657526581100061426

`∑[A028310(n)*A057079(n)]`
-/

namespace A164611.P12657526581100061426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n * A057079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164611.P12657526581100061426

namespace A164611

/-- `∑[A028310(n)*A057079(n)]` -/
def P12657526581100061426.Spec : Prop :=
  ∀ n, P12657526581100061426.a n = A164611 n

end A164611

/-! ## A164611.P15142249451517224498

`∑[A100050(n)]+A110666(n)+1`
-/

namespace A164611.P15142249451517224498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100050 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (A110666 n + 1)

end

end A164611.P15142249451517224498

namespace A164611

/-- `∑[A100050(n)]+A110666(n)+1` -/
def P15142249451517224498.Spec : Prop :=
  ∀ n, P15142249451517224498.a n = A164611 n

end A164611

/-! ## A164611.P10630507423149629414

`∑[A110665(n)+A100050(n)]+1`
-/

namespace A164611.P10630507423149629414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110665 n + A100050 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A164611.P10630507423149629414

namespace A164611

/-- `∑[A110665(n)+A100050(n)]+1` -/
def P10630507423149629414.Spec : Prop :=
  ∀ n, P10630507423149629414.a n = A164611 n

end A164611

/-! ## A164611.P1916534477240132329

`A100050(n)+A165202(n)-A110665(n)`
-/

namespace A164611.P1916534477240132329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100050 n + (A165202 n - A110665 n)

end

end A164611.P1916534477240132329

namespace A164611

/-- `A100050(n)+A165202(n)-A110665(n)` -/
def P1916534477240132329.Spec : Prop :=
  ∀ n, P1916534477240132329.a n = A164611 n

end A164611

/-! ## A164611.P3558220215627674702

`A165202(n+1)-2*A110665(n+1)`
-/

namespace A164611.P3558220215627674702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165202 (n + 1) - 2 * A110665 (n + 1)

end

end A164611.P3558220215627674702

namespace A164611

/-- `A165202(n+1)-2*A110665(n+1)` -/
def P3558220215627674702.Spec : Prop :=
  ∀ n, P3558220215627674702.a n = A164611 n

end A164611

/-! ## A164611.P14631399925263460254

`A087204(n)-(n+1)*A087204(n+1)`
-/

namespace A164611.P14631399925263460254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087204 n - (n + 1 : ℤ) * A087204 (n + 1)

end

end A164611.P14631399925263460254

namespace A164611

/-- `A087204(n)-(n+1)*A087204(n+1)` -/
def P14631399925263460254.Spec : Prop :=
  ∀ n, P14631399925263460254.a n = A164611 n

end A164611

/-! ## A164611.P8466184897752631155

`A010892(n)+A187307(n)-Δ[A187307(n)]`
-/

namespace A164611.P8466184897752631155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187307 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 n + (A187307 n - (f1 (n + 1) - f1 n))

end

end A164611.P8466184897752631155

namespace A164611

/-- `A010892(n)+A187307(n)-Δ[A187307(n)]` -/
def P8466184897752631155.Spec : Prop :=
  ∀ n, P8466184897752631155.a n = A164611 n

end A164611

/-!
# A164613: Expansion of (phi(q) / phi(q^9))^2 in powers of q where phi() is a Ramanujan theta function.

The programs for A164613, there is no canonical definition to state claims against.
-/

/-! ## A164613.P17755934006798891846

`A123932(n)*A164615(n)`
-/

namespace A164613.P17755934006798891846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123932 n * A164615 n

end

end A164613.P17755934006798891846

/-! ## A164613.P14761326974440193298

`dr(A220083(n))*A164615(n)`
-/

namespace A164613.P14761326974440193298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.digitalRoot (A220083 n) : ℤ) * A164615 n

end

end A164613.P14761326974440193298

/-! ## A164613.P1965666202876315470

`A048785(A006530(n+1))*A164615(n)`
-/

namespace A164613.P1965666202876315470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048785 (A006530 (n + 1)).toNat * A164615 n

end

end A164613.P1965666202876315470

/-! ## A164613.P10715488620971120429

`A066048(A061142(n+1))*A164615(n)`
-/

namespace A164613.P10715488620971120429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066048 (A061142 (n + 1)).toNat * A164615 n

end

end A164613.P10715488620971120429

/-! ## A164613.P14840424391015265340

`A146564(A008578(n+1))*A164615(n)`
-/

namespace A164613.P14840424391015265340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146564 (A008578 (n + 1)).toNat * A164615 n

end

end A164613.P14840424391015265340

/-! ## A164613.P7381181480389938056

`dr(∑[A000244(n)])*A164615(n)`
-/

namespace A164613.P7381181480389938056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.digitalRoot (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ) * A164615 n

end

end A164613.P7381181480389938056

/-! ## A164613.P4898650276950461209

`A000122(n²)²*A164615(n)`
-/

namespace A164613.P4898650276950461209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (n ^ 2) ^ 2 * A164615 n

end

end A164613.P4898650276950461209

/-!
# A164614: Expansion of (chi(q) / chi^3(q^3))^2 in powers of q where chi() is a Ramanujan theta function.

The programs for A164614, there is no canonical definition to state claims against.
-/

/-! ## A164614.P15770273313550386398

`A033999(n)*A216046(n)`
-/

namespace A164614.P15770273313550386398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A216046 n

end

end A164614.P15770273313550386398

/-! ## A164614.P4930211997857619956

`A009531(2*n+1)*A216046(n)`
-/

namespace A164614.P4930211997857619956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009531 (2 * n + 1) * A216046 n

end

end A164614.P4930211997857619956

/-! ## A164614.P13780583680640948108

`(n-xor(1, n))*A092848(2*n+1)`
-/

namespace A164614.P13780583680640948108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - (Nat.xor 1 n : ℤ)) * A092848 (2 * n + 1)

end

end A164614.P13780583680640948108

/-! ## A164614.P15787968979574236649

`A033999(n)*A128111(2*n+1)`
-/

namespace A164614.P15787968979574236649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A128111 (2 * n + 1)

end

end A164614.P15787968979574236649

/-! ## A164614.P751956985539201178

`A033999(n+1)*A092848(2*n+1)`
-/

namespace A164614.P751956985539201178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (n + 1) * A092848 (2 * n + 1)

end

end A164614.P751956985539201178

/-! ## A164614.P244146702131913279

`A034947(2*n+1)*A128111(2*n+1)`
-/

namespace A164614.P244146702131913279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034947 (2 * n + 1) * A128111 (2 * n + 1)

end

end A164614.P244146702131913279

/-! ## A164614.P14740981092481409391

`A092848(2*n+1)/A132972(n+1)*A141094(n+1)`
-/

namespace A164614.P14740981092481409391
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A092848 (2 * n + 1) : ℚ) / (A132972 (n + 1) : ℚ) * (A141094 (n + 1) : ℚ)

end

end A164614.P14740981092481409391

/-! ## A164614.P16005247603075723849

`A164615(3*n+2)`
-/

namespace A164614.P16005247603075723849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164615 (3 * n + 2)

end

end A164614.P16005247603075723849

/-!
# A164615: Expansion of c(q^2)^2 / (c(-q) * c(-q^3)) in powers of q where c() is a cubic AGM theta function.

The programs for A164615, there is no canonical definition to state claims against.
-/

/-! ## A164615.P976403124759911949

`(-1)^n*A182034(n)`
-/

namespace A164615.P976403124759911949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A182034 n

end

end A164615.P976403124759911949

/-! ## A164615.P4162477844143299894

`ceil(A164613(n)/4)`
-/

namespace A164615.P4162477844143299894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A164613 n : ℚ) / 4⌉

end

end A164615.P4162477844143299894

/-! ## A164615.P12124697368543263088

`A182034(n)*A281727(n)`
-/

namespace A164615.P12124697368543263088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182034 n * A281727 n

end

end A164615.P12124697368543263088

/-! ## A164615.P13545493530795441074

`A182034(n)/A033999(n)`
-/

namespace A164615.P13545493530795441074
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A182034 n : ℚ) / (A033999 n : ℚ)

end

end A164615.P13545493530795441074

/-! ## A164615.P2261520735821692444

`A164613(n)/A123932(n)`
-/

namespace A164615.P2261520735821692444
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A164613 n : ℚ) / (A123932 n : ℚ)

end

end A164615.P2261520735821692444

/-! ## A164615.P17383911526815816150

`A164613(n)/A164613(a(A000122(n+1)))` with `a(0)=1`
-/

namespace A164615.P17383911526815816150
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (A164613 n : ℚ) / (A164613 (SequenceMachineLib.roundAway (a (A000122 (n + 1)).toNat)).toNat : ℚ)

end

end A164615.P17383911526815816150

/-! ## A164615.P15455738965278441868

`A164613(n)/A000122(n²)²`
-/

namespace A164615.P15455738965278441868
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A164613 n : ℚ) / (A000122 (n ^ 2) ^ 2 : ℚ)

end

end A164615.P15455738965278441868

/-!
# A164616: Expansion of c(-q) * c(-q^3) / c(q^2)^2 in powers of q where c() is a cubic AGM theta function.

The programs for A164616, there is no canonical definition to state claims against.
-/

/-! ## A164616.P6969070402445266648

`(-1)^n*A258100(n)`
-/

namespace A164616.P6969070402445266648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A258100 n

end

end A164616.P6969070402445266648

/-! ## A164616.P10401277222187829146

`A010892(n)*A145977(n)`
-/

namespace A164616.P10401277222187829146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 n * A145977 n

end

end A164616.P10401277222187829146

/-! ## A164616.P3435195784040486854

`A049347(n)*A213267(n)`
-/

namespace A164616.P3435195784040486854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049347 n * A213267 n

end

end A164616.P3435195784040486854

/-! ## A164616.P8149917578421725657

`A258100(n)/A033999(n)`
-/

namespace A164616.P8149917578421725657
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A258100 n : ℚ) / (A033999 n : ℚ)

end

end A164616.P8149917578421725657

/-! ## A164616.P10187264005138092979

`A145977(n)*A163806(n+1)`
-/

namespace A164616.P10187264005138092979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145977 n * A163806 (n + 1)

end

end A164616.P10187264005138092979

/-! ## A164616.P12520884283843512990

`A010892(2*n+1)*A213267(n)`
-/

namespace A164616.P12520884283843512990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 (2 * n + 1) * A213267 n

end

end A164616.P12520884283843512990

/-! ## A164616.P2067473125992300936

`A132977(n)*A258100(n)/A258099(n)`
-/

namespace A164616.P2067473125992300936
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132977 n * A258100 n : ℚ) / (A258099 n : ℚ)

end

end A164616.P2067473125992300936

/-!
# A164617: Expansion of (phi^3(q^3) / phi(q)) * (psi(-q^3) / psi^3(-q)) in powers of q where phi(), psi() are Ramanujan theta functions.

The programs for A164617, there is no canonical definition to state claims against.
-/

/-! ## A164617.P9947815792737536805

`A164616(3*n)`
-/

namespace A164617.P9947815792737536805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164616 (3 * n)

end

end A164617.P9947815792737536805

/-! ## A164617.P11764890371432507091

`abs(A128641(n))`
-/

namespace A164617.P11764890371432507091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A128641 n|

end

end A164617.P11764890371432507091

/-! ## A164617.P16106790414998820419

`A033999(n)*A128641(n)`
-/

namespace A164617.P16106790414998820419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A128641 n

end

end A164617.P16106790414998820419

/-! ## A164617.P11709671882301422696

`gcd(A000038(n), A128641(n))`
-/

namespace A164617.P11709671882301422696
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A128641 n)

end

end A164617.P11709671882301422696

/-! ## A164617.P9787389723900728327

`lcm(A020985(n), A128641(n))`
-/

namespace A164617.P9787389723900728327
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A128641 n)

end

end A164617.P9787389723900728327

/-! ## A164617.P17644860545261984178

`A213267(3*n)`
-/

namespace A164617.P17644860545261984178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213267 (3 * n)

end

end A164617.P17644860545261984178

/-! ## A164617.P8777822347823056929

`abs(A145977(3*n))`
-/

namespace A164617.P8777822347823056929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A145977 (3 * n)|

end

end A164617.P8777822347823056929

/-! ## A164617.P9098260408019364827

`abs(A258100(3*n))`
-/

namespace A164617.P9098260408019364827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A258100 (3 * n)|

end

end A164617.P9098260408019364827

/-! ## A164617.P11751103693520199004

`A132975(A008486(n))`
-/

namespace A164617.P11751103693520199004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132975 (A008486 n).toNat

end

end A164617.P11751103693520199004

/-! ## A164617.P14081257236526936538

`A132975(A028310(3*n))`
-/

namespace A164617.P14081257236526936538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132975 (A028310 (3 * n)).toNat

end

end A164617.P14081257236526936538

/-! ## A164617.P15194264847298389996

`A132975(A033627(n+2)-1)`
-/

namespace A164617.P15194264847298389996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132975 (A033627 (n + 2) - 1).toNat

end

end A164617.P15194264847298389996

/-! ## A164617.P14423698510070458640

`A132972(3*n)/A122553(n)`
-/

namespace A164617.P14423698510070458640
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132972 (3 * n) : ℚ) / (A122553 n : ℚ)

end

end A164617.P14423698510070458640

/-! ## A164617.P15773407457491302043

`A132975(A028310(n)+n+n)`
-/

namespace A164617.P15773407457491302043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132975 (A028310 n + (n : ℤ) + (n : ℤ)).toNat

end

end A164617.P15773407457491302043

/-! ## A164617.P994696700603444240

`A132975(A051755(n+2)-2+n)`
-/

namespace A164617.P994696700603444240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132975 (A051755 (n + 2) - 2 + (n : ℤ)).toNat

end

end A164617.P994696700603444240

/-! ## A164617.P13632696450710266731

`A020985(2*n+1)*A020985(n)*A145977(3*n)`
-/

namespace A164617.P13632696450710266731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020985 (2 * n + 1) * A020985 n * A145977 (3 * n)

end

end A164617.P13632696450710266731

/-! ## A164617.P9662411655083703129

`gcd(A145977(3*n)*A145977(4*n), A145977(3*n))`
-/

namespace A164617.P9662411655083703129
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A145977 (3 * n) * A145977 (4 * n)) (A145977 (3 * n))

end

end A164617.P9662411655083703129

/-! ## A164617.P10289706842064577257

`A132975(A233583(2*n+1)+n)`
-/

namespace A164617.P10289706842064577257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132975 (A233583 (2 * n + 1) + (n : ℤ)).toNat

end

end A164617.P10289706842064577257

/-!
# A164619: Integers of the form A164577(k)/3.

The programs for A164619, there is no canonical definition to state claims against.
-/

/-! ## A164619.P458582383562296937

`A255591(∩[A006002(n), A008458(n)])`
-/

namespace A164619.P458582383562296937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006002 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255591 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A164619.P458582383562296937

/-!
# A164620: Primes p such that 1 +p*floor(p/2) is also prime.

The programs for A164620, there is no canonical definition to state claims against.
-/

/-! ## A164620.P2674045494615196668

`p?[A067186(n+1)+1]`
-/

namespace A164620.P2674045494615196668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067186 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A164620.P2674045494615196668

/-! ## A164620.P14146258828442940920

`∩[A000040(n+1), A067186(n+1)+1]`
-/

namespace A164620.P14146258828442940920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067186 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A164620.P14146258828442940920

/-! ## A164620.P3366707131928682363

`record[A006530(A067186(n+1)+1)]`
-/

namespace A164620.P3366707131928682363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A067186 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A164620.P3366707131928682363

/-! ## A164620.P11771612282449468664

`record[A020639(A067186(n+1)+1)]`
-/

namespace A164620.P11771612282449468664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A067186 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A164620.P11771612282449468664

/-! ## A164620.P14708900091246923337

`record[A006530(A110872(n+1)+1)]`
-/

namespace A164620.P14708900091246923337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A110872 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A164620.P14708900091246923337

/-! ## A164620.P9012391366727138895

`p?[A014682(A110872(n+1)+1)]`
-/

namespace A164620.P9012391366727138895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A110872 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A164620.P9012391366727138895

/-! ## A164620.P8739811491886890741

`p?[A305897(A110872(n+1)-1)]`
-/

namespace A164620.P8739811491886890741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305897 (A110872 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A164620.P8739811491886890741

/-! ## A164620.P4357929346955411576

`record[A006530(sqrt(A110873(n+1))+1)]`
-/

namespace A164620.P4357929346955411576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.roundAway (Real.sqrt (A110873 (n + 1) : ℝ) + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A164620.P4357929346955411576

/-! ## A164620.P15992662464891024305

`p?[A339913(A110872(n+1)-1)]`
-/

namespace A164620.P15992662464891024305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339913 (A110872 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A164620.P15992662464891024305

/-! ## A164620.P810331006428851381

`p?[A339913(2*A110872(n+1))]`
-/

namespace A164620.P810331006428851381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339913 (2 * A110872 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A164620.P810331006428851381

/-! ## A164620.P17515217473328111093

`p?[A246425(A110872(n+1))]`
-/

namespace A164620.P17515217473328111093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246425 (A110872 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A164620.P17515217473328111093

/-! ## A164620.P5279962875988042224

`p?[A004442(A067186(n+2))]`
-/

namespace A164620.P5279962875988042224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A067186 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A164620.P5279962875988042224

/-! ## A164620.P6265061812032868341

`record[A304822(sqrt(A110873(n+1)))]`
-/

namespace A164620.P6265061812032868341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304822 (SequenceMachineLib.roundAway (Real.sqrt (A110873 (n + 1) : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A164620.P6265061812032868341

/-! ## A164620.P4357888924809336298

`record[A014963(A067186(n+1)+1)]`
-/

namespace A164620.P4357888924809336298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A067186 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A164620.P4357888924809336298

/-! ## A164620.P4568289776730287554

`eq[A129634(n-A175126(n)), A175126(n)]`
-/

namespace A164620.P4568289776730287554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129634 ((n : ℤ) - A175126 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175126 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A164620.P4568289776730287554

/-!
# A164621: Primes p such that p*floor(p/2)-2 and p*floor(p/2)+2 are also prime numbers.

The programs for A164621, there is no canonical definition to state claims against.
-/

/-! ## A164621.P3757082348142091177

`A068229(eq[n, A363126(n+4)])`
-/

namespace A164621.P3757082348142091177
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363126 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068229 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A164621.P3757082348142091177

/-!
# A164624: Primes p such that p + Floor[p/2] + Floor[p/3] is prime.

The programs for A164624, there is no canonical definition to state claims against.
-/

/-! ## A164624.P57473960483490117

`p?[(n+1)*A010051(A106252(n+1))]`
-/

namespace A164624.P57473960483490117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A010051 (A106252 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A164624.P57473960483490117

/-! ## A164624.P8429931754811184863

`p?[(n+1)*A050345(A049625(n))]`
-/

namespace A164624.P8429931754811184863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A050345 (A049625 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A164624.P8429931754811184863

/-! ## A164624.P17639332811434826715

`record[A020639((n+1)*A049625(n))]`
-/

namespace A164624.P17639332811434826715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 ((n + 1 : ℤ) * A049625 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A164624.P17639332811434826715

/-! ## A164624.P7003215979978514953

`record[A020639(lcm(n+1, A049625(n)))]`
-/

namespace A164624.P7003215979978514953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (Int.lcm (n + 1 : ℤ) (A049625 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A164624.P7003215979978514953

/-! ## A164624.P10147440612486786375

`p?[n*A118354(A008621(n))]`
-/

namespace A164624.P10147440612486786375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A118354 (A008621 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A164624.P10147440612486786375

/-!
# A164625: Primes p such that p+floor(p/2)+floor(p/3)+floor(p/5) is also prime.

The programs for A164625, the canonical program `A164625.P16427674670767790345` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164625 has offset 1).

The definition of A164625 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 148 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A164625.P16427674670767790345

`p?[lt[A001222(A160547(n+1)+n), 2]+1]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A164625

/-- `p?[lt[A001222(A160547(n+1)+n), 2]+1]` -/
def P16427674670767790345.Spec : Prop :=
  ∀ n, (P16427674670767790345.a n : ℤ) = A164625 (n + 1)

theorem P16427674670767790345.correct : P16427674670767790345.Spec := by
  intro n
  simp only [A164625, Nat.add_sub_cancel]

end A164625

/-! ## A164625.P11718358230223014736

`p?[A120691(n)+A079435(n+1)]`
-/

namespace A164625.P11718358230223014736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120691 n + A079435 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A164625.P11718358230223014736

namespace A164625

/-- `p?[A120691(n)+A079435(n+1)]` -/
def P11718358230223014736.Spec : Prop :=
  ∀ n, P11718358230223014736.a n = A164625 (n + 1)

end A164625

/-!
# A164632: a(1) = 1 followed by 2^k appearing 2^(2*k-1) times for k>0.

The programs for A164632, the canonical program `A164632.P7748496471665953998` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164632 has offset 1).

The definition of A164632 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A164632.P5517870680247791931

`2^∑[char[∑[(-2)^n]]]`
-/

namespace A164632.P5517870680247791931
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-2) ^ n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A164632.P5517870680247791931

namespace A164632

/-- `2^∑[char[∑[(-2)^n]]]` -/
def P5517870680247791931.Spec : Prop :=
  ∀ n, (P5517870680247791931.a n : ℤ) = A164632 (n + 1)

end A164632

/-! ## A164632.P7748496471665953998

`2*a(floor((n+1)/4))` with `a(0)=1`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A164632

/-- `2*a(floor((n+1)/4))` -/
def P7748496471665953998.Spec : Prop :=
  ∀ n, (P7748496471665953998.a n : ℤ) = A164632 (n + 1)

theorem P7748496471665953998.correct : P7748496471665953998.Spec := by
  intro n
  simp only [A164632, Nat.add_sub_cancel]

end A164632

/-! ## A164632.P12440246957988344310

`∏[char[∑[A081294(n)]]+1]`
-/

namespace A164632.P12440246957988344310
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081294 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = (n : ℤ) then 1 else 0) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A164632.P12440246957988344310

namespace A164632

/-- `∏[char[∑[A081294(n)]]+1]` -/
def P12440246957988344310.Spec : Prop :=
  ∀ n, (P12440246957988344310.a n : ℤ) = A164632 (n + 1)

end A164632

/-! ## A164632.P5847057440966053507

`∏[char[∑[A122803(n)]]+1]`
-/

namespace A164632.P5847057440966053507
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122803 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = (n : ℤ) then 1 else 0) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A164632.P5847057440966053507

namespace A164632

/-- `∏[char[∑[A122803(n)]]+1]` -/
def P5847057440966053507.Spec : Prop :=
  ∀ n, (P5847057440966053507.a n : ℤ) = A164632 (n + 1)

end A164632

/-! ## A164632.P10471778222078673816

`A000079(∑[char[∑[(-2)^n]]])`
-/

namespace A164632.P10471778222078673816
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-2) ^ n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A164632.P10471778222078673816

namespace A164632

/-- `A000079(∑[char[∑[(-2)^n]]])` -/
def P10471778222078673816.Spec : Prop :=
  ∀ n, P10471778222078673816.a n = A164632 (n + 1)

end A164632

/-! ## A164632.P7378344797482117753

`A016116(A130253(n))`
-/

namespace A164632.P7378344797482117753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 (A130253 n).toNat

end

end A164632.P7378344797482117753

namespace A164632

/-- `A016116(A130253(n))` -/
def P7378344797482117753.Spec : Prop :=
  ∀ n, P7378344797482117753.a n = A164632 (n + 1)

end A164632

/-! ## A164632.P2507398108502674457

`A060546(A130249(n))`
-/

namespace A164632.P2507398108502674457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060546 (A130249 n).toNat

end

end A164632.P2507398108502674457

namespace A164632

/-- `A060546(A130249(n))` -/
def P2507398108502674457.Spec : Prop :=
  ∀ n, P2507398108502674457.a n = A164632 (n + 1)

end A164632

/-! ## A164632.P5078218500737820668

`A016116(A130249(n)+1)`
-/

namespace A164632.P5078218500737820668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 (A130249 n + 1).toNat

end

end A164632.P5078218500737820668

namespace A164632

/-- `A016116(A130249(n)+1)` -/
def P5078218500737820668.Spec : Prop :=
  ∀ n, P5078218500737820668.a n = A164632 (n + 1)

end A164632

/-! ## A164632.P710130581134519298

`A016116(floor(log2(A016933(n))))`
-/

namespace A164632.P710130581134519298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 (Nat.log 2 (A016933 n).toNat)

end

end A164632.P710130581134519298

namespace A164632

/-- `A016116(floor(log2(A016933(n))))` -/
def P710130581134519298.Spec : Prop :=
  ∀ n, P710130581134519298.a n = A164632 (n + 1)

end A164632

/-! ## A164632.P2526399123436497539

`A016116(floor(log2(A016945(n))))`
-/

namespace A164632.P2526399123436497539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 (Nat.log 2 (A016945 n).toNat)

end

end A164632.P2526399123436497539

namespace A164632

/-- `A016116(floor(log2(A016945(n))))` -/
def P2526399123436497539.Spec : Prop :=
  ∀ n, P2526399123436497539.a n = A164632 (n + 1)

end A164632

/-! ## A164632.P8274139700454134026

`A016116(A130250(n+1))`
-/

namespace A164632.P8274139700454134026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 (A130250 (n + 1)).toNat

end

end A164632.P8274139700454134026

namespace A164632

/-- `A016116(A130250(n+1))` -/
def P8274139700454134026.Spec : Prop :=
  ∀ n, P8274139700454134026.a n = A164632 (n + 1)

end A164632

/-! ## A164632.P6410322931747745066

`A016116(A130252(n+1)-A130252(n))`
-/

namespace A164632.P6410322931747745066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 (A130252 (n + 1) - A130252 n).toNat

end

end A164632.P6410322931747745066

namespace A164632

/-- `A016116(A130252(n+1)-A130252(n))` -/
def P6410322931747745066.Spec : Prop :=
  ∀ n, P6410322931747745066.a n = A164632 (n + 1)

end A164632

/-! ## A164632.P2498056209096470393

`A062383(A000196(A006257(n)+n))`
-/

namespace A164632.P2498056209096470393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062383 (A000196 (A006257 n + (n : ℤ)).toNat).toNat

end

end A164632.P2498056209096470393

namespace A164632

/-- `A062383(A000196(A006257(n)+n))` -/
def P2498056209096470393.Spec : Prop :=
  ∀ n, P2498056209096470393.a n = A164632 (n + 1)

end A164632

/-! ## A164632.P9888287025177944475

`A062383(A340327(n))`
-/

namespace A164632.P9888287025177944475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062383 (A340327 n).toNat

end

end A164632.P9888287025177944475

namespace A164632

/-- `A062383(A340327(n))` -/
def P9888287025177944475.Spec : Prop :=
  ∀ n, P9888287025177944475.a n = A164632 (n + 1)

end A164632

/-! ## A164632.P5407638301243277249

`A016116(A130249(2*n))`
-/

namespace A164632.P5407638301243277249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 (A130249 (2 * n)).toNat

end

end A164632.P5407638301243277249

namespace A164632

/-- `A016116(A130249(2*n))` -/
def P5407638301243277249.Spec : Prop :=
  ∀ n, P5407638301243277249.a n = A164632 (n + 1)

end A164632

/-! ## A164632.P3629134779180184077

`A124758(A053738(2*n+1)-(2*n+1))`
-/

namespace A164632.P3629134779180184077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124758 (A053738 (2 * n + 1) - (2 * n + 1 : ℤ)).toNat

end

end A164632.P3629134779180184077

namespace A164632

/-- `A124758(A053738(2*n+1)-(2*n+1))` -/
def P3629134779180184077.Spec : Prop :=
  ∀ n, P3629134779180184077.a n = A164632 (n + 1)

end A164632

/-! ## A164632.P6155767674072383874

`A016116(A070939(3*n))`
-/

namespace A164632.P6155767674072383874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 (A070939 (3 * n)).toNat

end

end A164632.P6155767674072383874

namespace A164632

/-- `A016116(A070939(3*n))` -/
def P6155767674072383874.Spec : Prop :=
  ∀ n, P6155767674072383874.a n = A164632 (n + 1)

end A164632

/-! ## A164632.P14115206707048310369

`A016116(A029837(3*n+1))`
-/

namespace A164632.P14115206707048310369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 (A029837 (3 * n + 1)).toNat

end

end A164632.P14115206707048310369

namespace A164632

/-- `A016116(A029837(3*n+1))` -/
def P14115206707048310369.Spec : Prop :=
  ∀ n, P14115206707048310369.a n = A164632 (n + 1)

end A164632

/-! ## A164632.P2166074651662762893

`A096036(A053644(2*n+1+n))`
-/

namespace A164632.P2166074651662762893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096036 (A053644 (2 * n + 1 + n)).toNat

end

end A164632.P2166074651662762893

namespace A164632

/-- `A096036(A053644(2*n+1+n))` -/
def P2166074651662762893.Spec : Prop :=
  ∀ n, P2166074651662762893.a n = A164632 (n + 1)

end A164632

/-!
# A164634: Number of reduced words of length n in Coxeter group on 21 generators S_i with relations (S_i)^2 = (S_i S_j)^7 = I.

The programs for A164634, there is no canonical definition to state claims against.
-/

/-! ## A164634.P15523545946925345212

`record[20*a(sqrt(A008833(n+1)))]` with `a(0)=1, a(1)=21`
-/

namespace A164634.P15523545946925345212
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 21] fun n f1 =>
  20 * f1 (SequenceMachineLib.roundAway (Real.sqrt (A008833 (n + 1) : ℝ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A164634.P15523545946925345212

/-! ## A164634.P4032598736245404622

`record[20*a(A007337(n-1)-1)]` with `a(0)=1, a(1)=21`
-/

namespace A164634.P4032598736245404622
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 21] fun n f1 =>
  20 * f1 (A007337 (n - 1) - 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A164634.P4032598736245404622

/-! ## A164634.P13781761243194188824

`20*a(n-and(1, A039669(n+1)))` with `a(0)=1, a(1)=21`
-/

namespace A164634.P13781761243194188824
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 21] fun n a =>
  20 * a ((n : ℤ) - Int.land 1 (A039669 (n + 1))).toNat

end

end A164634.P13781761243194188824

/-!
# A164638: Number of reduced words of length n in Coxeter group on 25 generators S_i with relations (S_i)^2 = (S_i S_j)^7 = I.

The programs for A164638, there is no canonical definition to state claims against.
-/

/-! ## A164638.P10232241024231939080

`A166612(n)+A000007(A008429(n))`
-/

namespace A164638.P10232241024231939080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166612 n + A000007 (A008429 n).toNat

end

end A164638.P10232241024231939080

/-! ## A164638.P18045900102705418900

`A164963(n)/A336697(A086618(n))`
-/

namespace A164638.P18045900102705418900
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A164963 n : ℚ) / (A336697 (A086618 n).toNat : ℚ)

end

end A164638.P18045900102705418900

/-! ## A164638.P7945084421959203705

`A166419(n)^A013993(A073346(n))`
-/

namespace A164638.P7945084421959203705
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166419 n : ℚ) ^ (A013993 (A073346 n).toNat : ℤ)

end

end A164638.P7945084421959203705

/-!
# A164640: a(n) = 8*a(n-2) for n > 2; a(1) = 1, a(2) = 6.

The programs for A164640, the canonical program `A164640.P17599331194322331872` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164640 has offset 1).

The definition of A164640 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `8*a(n-2)` (program `A164640.P17599331194322331872`, by `A164640.P17599331194322331872.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A164640.P17599331194322331872

`8*a(n-2)` with `a(0)=1, a(1)=6`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A164640

/-- `8*a(n-2)` -/
def P17599331194322331872.Spec : Prop :=
  ∀ n, (P17599331194322331872.a n : ℤ) = A164640 (n + 1)

theorem P17599331194322331872.correct : P17599331194322331872.Spec := by
  intro n
  simp only [A164640, Nat.add_sub_cancel]

end A164640

/-! ## A164640.P16277103341624825796

`record[Δ[∏[gcd(4, n+1)]]]`
-/

namespace A164640.P16277103341624825796
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 4 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A164640.P16277103341624825796

namespace A164640

/-- `record[Δ[∏[gcd(4, n+1)]]]` -/
def P16277103341624825796.Spec : Prop :=
  ∀ n, P16277103341624825796.a n = A164640 (n + 1)

end A164640

/-! ## A164640.P6138943847984833257

`∏[8/a(n-1)]` with `a(0)=1, a(1)=6`
-/

namespace A164640.P6138943847984833257
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 6] fun n f1 =>
  8 / f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A164640.P6138943847984833257

namespace A164640

/-- `∏[8/a(n-1)]` -/
def P6138943847984833257.Spec : Prop :=
  ∀ n, P6138943847984833257.a n = (A164640 (n + 1) : ℚ)

end A164640

/-! ## A164640.P5182906863150282093

`Δ[2^floor(3*n/2)]`
-/

namespace A164640.P5182906863150282093
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (⌊3 * ((n : ℚ) / 2)⌋ : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A164640.P5182906863150282093

namespace A164640

/-- `Δ[2^floor(3*n/2)]` -/
def P5182906863150282093.Spec : Prop :=
  ∀ n, P5182906863150282093.a n = (A164640 (n + 1) : ℚ)

end A164640

/-! ## A164640.P2479032302842348204

`record[2^n*gcd(3, 1-n)]`
-/

namespace A164640.P2479032302842348204
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n * Int.gcd 3 (1 - (n : ℤ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A164640.P2479032302842348204

namespace A164640

/-- `record[2^n*gcd(3, 1-n)]` -/
def P2479032302842348204.Spec : Prop :=
  ∀ n, (P2479032302842348204.a n : ℤ) = A164640 (n + 1)

end A164640

/-! ## A164640.P3990067044904114927

`a(n-2)/(1/2)^3` with `a(0)=1, a(1)=6`
-/

namespace A164640.P3990067044904114927
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 6] fun n a =>
  a (n - 2) / ((1 : ℚ) / 2) ^ 3

end

end A164640.P3990067044904114927

namespace A164640

/-- `a(n-2)/(1/2)^3` -/
def P3990067044904114927.Spec : Prop :=
  ∀ n, P3990067044904114927.a n = (A164640 (n + 1) : ℚ)

end A164640

/-! ## A164640.P13558604107657550259

`abs(Δ[abs(A094014(n))])`
-/

namespace A164640.P13558604107657550259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A094014 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A164640.P13558604107657550259

namespace A164640

/-- `abs(Δ[abs(A094014(n))])` -/
def P13558604107657550259.Spec : Prop :=
  ∀ n, P13558604107657550259.a n = A164640 (n + 1)

end A164640

/-! ## A164640.P3855805100340939089

`A074323(3*n+1)`
-/

namespace A164640.P3855805100340939089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074323 (3 * n + 1)

end

end A164640.P3855805100340939089

namespace A164640

/-- `A074323(3*n+1)` -/
def P3855805100340939089.Spec : Prop :=
  ∀ n, P3855805100340939089.a n = A164640 (n + 1)

end A164640

/-! ## A164640.P15154976764942334801

`A164073(3*n+1)`
-/

namespace A164640.P15154976764942334801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164073 (3 * n + 1)

end

end A164640.P15154976764942334801

namespace A164640

/-- `A164073(3*n+1)` -/
def P15154976764942334801.Spec : Prop :=
  ∀ n, P15154976764942334801.a n = A164640 (n + 1)

end A164640

/-! ## A164640.P17441060473345188736

`A134693(3*n)/3`
-/

namespace A164640.P17441060473345188736
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A134693 (3 * n) : ℚ) / 3

end

end A164640.P17441060473345188736

namespace A164640

/-- `A134693(3*n)/3` -/
def P17441060473345188736.Spec : Prop :=
  ∀ n, P17441060473345188736.a n = (A164640 (n + 1) : ℚ)

end A164640

/-! ## A164640.P13964354613281174679

`2^(n-1)*A072946(n+1)`
-/

namespace A164640.P13964354613281174679
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (A072946 (n + 1) : ℚ)

end

end A164640.P13964354613281174679

namespace A164640

/-- `2^(n-1)*A072946(n+1)` -/
def P13964354613281174679.Spec : Prop :=
  ∀ n, P13964354613281174679.a n = (A164640 (n + 1) : ℚ)

end A164640

/-! ## A164640.P13281254371948787802

`2^(n-1)*A162255(n+2)`
-/

namespace A164640.P13281254371948787802
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (A162255 (n + 2) : ℚ)

end

end A164640.P13281254371948787802

namespace A164640

/-- `2^(n-1)*A162255(n+2)` -/
def P13281254371948787802.Spec : Prop :=
  ∀ n, P13281254371948787802.a n = (A164640 (n + 1) : ℚ)

end A164640

/-! ## A164640.P3037812207132806912

`A135536(n-1)-a(n-1)` with `a(0)=1`
-/

namespace A164640.P3037812207132806912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A135536 (n - 1) - a (n - 1)

end

end A164640.P3037812207132806912

namespace A164640

/-- `A135536(n-1)-a(n-1)` -/
def P3037812207132806912.Spec : Prop :=
  ∀ n, P3037812207132806912.a n = A164640 (n + 1)

end A164640

/-! ## A164640.P4101221163932716471

`abs(Δ[A000079(comp[2*n+n-1])])`
-/

namespace A164640.P4101221163932716471
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) + ((n : ℤ) - 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A164640.P4101221163932716471

namespace A164640

/-- `abs(Δ[A000079(comp[2*n+n-1])])` -/
def P4101221163932716471.Spec : Prop :=
  ∀ n, P4101221163932716471.a n = A164640 (n + 1)

end A164640

/-! ## A164640.P2468547610468952076

`A163864(A047239(n+1))`
-/

namespace A164640.P2468547610468952076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163864 (A047239 (n + 1)).toNat

end

end A164640.P2468547610468952076

namespace A164640

/-- `A163864(A047239(n+1))` -/
def P2468547610468952076.Spec : Prop :=
  ∀ n, P2468547610468952076.a n = A164640 (n + 1)

end A164640

/-! ## A164640.P10726660291134133923

`A000034(n)*A096886(n)`
-/

namespace A164640.P10726660291134133923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n * A096886 n

end

end A164640.P10726660291134133923

namespace A164640

/-- `A000034(n)*A096886(n)` -/
def P10726660291134133923.Spec : Prop :=
  ∀ n, P10726660291134133923.a n = A164640 (n + 1)

end A164640

/-! ## A164640.P15073655839918895237

`A016116(n)*A081631(n)`
-/

namespace A164640.P15073655839918895237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 n * A081631 n

end

end A164640.P15073655839918895237

namespace A164640

/-- `A016116(n)*A081631(n)` -/
def P15073655839918895237.Spec : Prop :=
  ∀ n, P15073655839918895237.a n = A164640 (n + 1)

end A164640

/-! ## A164640.P583717022189644921

`A060546(n)*A084221(n)`
-/

namespace A164640.P583717022189644921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060546 n * A084221 n

end

end A164640.P583717022189644921

namespace A164640

/-- `A060546(n)*A084221(n)` -/
def P583717022189644921.Spec : Prop :=
  ∀ n, P583717022189644921.a n = A164640 (n + 1)

end A164640

/-! ## A164640.P1908895398521922847

`A063759(n)*A158302(n)`
-/

namespace A164640.P1908895398521922847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063759 n * A158302 n

end

end A164640.P1908895398521922847

namespace A164640

/-- `A063759(n)*A158302(n)` -/
def P1908895398521922847.Spec : Prop :=
  ∀ n, P1908895398521922847.a n = A164640 (n + 1)

end A164640

/-!
# A164641: Numbers n such that n, n + 2 and n + 6 are prime powers.

The programs for A164641, there is no canonical definition to state claims against.
-/

/-! ## A164641.P3136313667748750528

`∩[A120431(n+1), A164574(n+1)]`
-/

namespace A164641.P3136313667748750528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120431 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164574 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A164641.P3136313667748750528

/-! ## A164641.P258118977735208113

`∩[A000961(n+1)-2, A164574(n+1)]`
-/

namespace A164641.P258118977735208113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164574 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A164641.P258118977735208113

/-! ## A164641.P5282579002587328697

`∩[A000961(n+1), A164572(n+1)-2]`
-/

namespace A164641.P5282579002587328697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164572 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A164641.P5282579002587328697

/-! ## A164641.P1264915760450564291

`∩[A120431(n+1), A164572(n+1)-2]`
-/

namespace A164641.P1264915760450564291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120431 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164572 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A164641.P1264915760450564291

/-! ## A164641.P2814082919520780957

`∩[A164572(n+1)-2, A164574(n+1)]`
-/

namespace A164641.P2814082919520780957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164572 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164574 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A164641.P2814082919520780957

/-! ## A164641.P285925545095907972

`∩[A000961(n+1)-6, A120431(n+1)]`
-/

namespace A164641.P285925545095907972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1) - 6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120431 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A164641.P285925545095907972

/-!
# A164642: Numbers k such that k, k + 4 and k + 6 are prime powers.

The programs for A164642, there is no canonical definition to state claims against.
-/

/-! ## A164642.P9367900927194779193

`∩[A120431(n+1)-4, A164572(n+1)]`
-/

namespace A164642.P9367900927194779193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120431 (n + 1) - 4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164572 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A164642.P9367900927194779193

/-! ## A164642.P11248672325156810494

`∩[A164572(n+1), A164574(n+1)]`
-/

namespace A164642.P11248672325156810494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164572 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164574 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A164642.P11248672325156810494

/-! ## A164642.P16298206058695293646

`∩[A120431(n+1)-4, A164574(n+1)]`
-/

namespace A164642.P16298206058695293646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120431 (n + 1) - 4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164574 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A164642.P16298206058695293646

/-! ## A164642.P1651024213740791366

`∩[A000961(n+1), A120431(n+1)-4]`
-/

namespace A164642.P1651024213740791366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120431 (n + 1) - 4

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A164642.P1651024213740791366

/-! ## A164642.P14033288516514146074

`∩[A000961(n+1)-4, A164574(n+1)]`
-/

namespace A164642.P14033288516514146074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1) - 4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164574 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A164642.P14033288516514146074

/-! ## A164642.P8583090305488352617

`∩[A000961(n+1)-6, A164572(n+1)]`
-/

namespace A164642.P8583090305488352617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1) - 6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164572 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A164642.P8583090305488352617

/-!
# A164643: Semiprimes pq with pq - 1 divisible by p + q.

The programs for A164643, there is no canonical definition to state claims against.
-/

/-! ## A164643.P1981641073100325444

`∩[A034897(n+1), A175729(n+1)]`
-/

namespace A164643.P1981641073100325444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034897 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175729 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A164643.P1981641073100325444

/-! ## A164643.P10964156707582083996

`record[∏{p}[A034897(n+1), #]]`
-/

namespace A164643.P10964156707582083996
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034897 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A164643.P10964156707582083996

/-! ## A164643.P16942790826162699972

`∩[A034897(n+1), A364202(n+1)]`
-/

namespace A164643.P16942790826162699972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034897 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364202 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A164643.P16942790826162699972

/-! ## A164643.P3611221405699242560

`A000027(∩[A034897(n+1), A225150(n+1)])`
-/

namespace A164643.P3611221405699242560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034897 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225150 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A164643.P3611221405699242560

/-! ## A164643.P15077225717387601599

`∩[A143322(n+1), A225150(n+1)]`
-/

namespace A164643.P15077225717387601599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143322 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225150 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A164643.P15077225717387601599

/-!
# A164651: Number of permutations of length n that avoid both 1243 and 2134.

The programs for A164651, there is no canonical definition to state claims against.
-/

/-! ## A164651.P12443161755439418697

`A026674(n-1)+a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A164651.P12443161755439418697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A026674 (n - 1) + a (n - 1)

end

end A164651.P12443161755439418697

/-! ## A164651.P8193891634615009876

`A165201(n-1)+a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A164651.P8193891634615009876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A165201 (n - 1) + a (n - 1)

end

end A164651.P8193891634615009876

/-! ## A164651.P1977148557255176025

`ceil(A026742(A004273(n))/2)`
-/

namespace A164651.P1977148557255176025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A026742 (A004273 n).toNat : ℚ) / 2⌉

end

end A164651.P1977148557255176025

/-! ## A164651.P10812182231544151255

`A033999(n)²*round(A026742(A004273(n))/2)`
-/

namespace A164651.P10812182231544151255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n ^ 2 * SequenceMachineLib.roundAway ((A026742 (A004273 n).toNat : ℚ) / 2)

end

end A164651.P10812182231544151255

/-! ## A164651.P18001576494547183541

`round(A000007(n+1)+A026742(A004273(n))/2)`
-/

namespace A164651.P18001576494547183541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A000007 (n + 1) : ℚ) + (A026742 (A004273 n).toNat : ℚ) / 2)

end

end A164651.P18001576494547183541

/-! ## A164651.P10356368929878588630

`round(A026742(A004273(n))/2)*A000034(2*n)`
-/

namespace A164651.P10356368929878588630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A026742 (A004273 n).toNat : ℚ) / 2) * A000034 (2 * n)

end

end A164651.P10356368929878588630

/-! ## A164651.P11430515912316110901

`A026733(2*n+1)+A026733(2*n)-A026734(2*n)`
-/

namespace A164651.P11430515912316110901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026733 (2 * n + 1) + (A026733 (2 * n) - A026734 (2 * n))

end

end A164651.P11430515912316110901

/-! ## A164651.P3901464098444158808

`round(A026742(A004273(n))/2)%A097804(n)`
-/

namespace A164651.P3901464098444158808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A026742 (A004273 n).toNat : ℚ) / 2)) (A097804 n)

end

end A164651.P3901464098444158808

/-! ## A164651.P12568177089738568121

`A169764(2*n+1)+round(A026742(A004273(n))/2)`
-/

namespace A164651.P12568177089738568121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169764 (2 * n + 1) + SequenceMachineLib.roundAway ((A026742 (A004273 n).toNat : ℚ) / 2)

end

end A164651.P12568177089738568121

/-! ## A164651.P7828443726263758819

`ceil(A026725(A001105(n))/2)`
-/

namespace A164651.P7828443726263758819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A026725 (A001105 n).toNat : ℚ) / 2⌉

end

end A164651.P7828443726263758819

/-!
# A164652: Triangle read by rows: Hultman numbers: a(n,k) is the number of permutations of n elements whose cycle graph (as defined by Bafna and Pevzner) contains k cycles for n >= 0 and 1 <= k <= n+1.

The programs for A164652, there is no canonical definition to state claims against.
-/

/-! ## A164652.P2502172541208823750

`A174231(A059419(n+1))`
-/

namespace A164652.P2502172541208823750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174231 (A059419 (n + 1)).toNat

end

end A164652.P2502172541208823750

/-! ## A164652.P67610467725812145

`A049581(A132277(n)^3)`
-/

namespace A164652.P67610467725812145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049581 (A132277 n ^ 3).toNat

end

end A164652.P67610467725812145

/-! ## A164652.P157516968524209137

`A049581(A132277(n)²*A132277(n))`
-/

namespace A164652.P157516968524209137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049581 (A132277 n ^ 2 * A132277 n).toNat

end

end A164652.P157516968524209137

/-! ## A164652.P10120144714797090020

`A282691(A156960(n))`
-/

namespace A164652.P10120144714797090020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282691 (A156960 n).toNat

end

end A164652.P10120144714797090020

/-! ## A164652.P17615564920113304237

`val(A010100(A097591(n)), 2)`
-/

namespace A164652.P17615564920113304237
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A010100 (A097591 n).toNat).toNat 2

end

end A164652.P17615564920113304237

/-!
# A164653: a(1) = 1, for n>=2: a(n) = sum of two consecutive noncomposite numbers A008578.

The programs for A164653, the canonical program `A164653.P11870517180537955334` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164653 has offset 1).

The definition of A164653 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A158611, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A164653.P11870517180537955334

`A158611(n+1)+A158611(n+2)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A164653

/-- `A158611(n+1)+A158611(n+2)` -/
def P11870517180537955334.Spec : Prop :=
  ∀ n, P11870517180537955334.a n = A164653 (n + 1)

theorem P11870517180537955334.correct : P11870517180537955334.Spec := by
  intro n
  simp only [A164653, Nat.add_sub_cancel]

end A164653

/-! ## A164653.P17122971016317605391

`A076273(n)+A057427(n)`
-/

namespace A164653.P17122971016317605391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076273 n + A057427 n

end

end A164653.P17122971016317605391

namespace A164653

/-- `A076273(n)+A057427(n)` -/
def P17122971016317605391.Spec : Prop :=
  ∀ n, P17122971016317605391.a n = A164653 (n + 1)

end A164653

/-! ## A164653.P7194029115261205992

`A076273(n)-A057428(n)`
-/

namespace A164653.P7194029115261205992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076273 n - A057428 n

end

end A164653.P7194029115261205992

namespace A164653

/-- `A076273(n)-A057428(n)` -/
def P7194029115261205992.Spec : Prop :=
  ∀ n, P7194029115261205992.a n = A164653 (n + 1)

end A164653

/-! ## A164653.P14412173985105202963

`A076273(n)+A134824(n)²`
-/

namespace A164653.P14412173985105202963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076273 n + A134824 n ^ 2

end

end A164653.P14412173985105202963

namespace A164653

/-- `A076273(n)+A134824(n)²` -/
def P14412173985105202963.Spec : Prop :=
  ∀ n, P14412173985105202963.a n = A164653 (n + 1)

end A164653

/-! ## A164653.P14721406071072245689

`A176099(n+1)-A075526(n)`
-/

namespace A164653.P14721406071072245689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176099 (n + 1) - A075526 n

end

end A164653.P14721406071072245689

namespace A164653

/-- `A176099(n+1)-A075526(n)` -/
def P14721406071072245689.Spec : Prop :=
  ∀ n, P14721406071072245689.a n = A164653 (n + 1)

end A164653

/-! ## A164653.P5576518746592063054

`lcm(A069102(n+1), A084642(n))`
-/

namespace A164653.P5576518746592063054
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A069102 (n + 1)) (A084642 n)

end

end A164653.P5576518746592063054

namespace A164653

/-- `lcm(A069102(n+1), A084642(n))` -/
def P5576518746592063054.Spec : Prop :=
  ∀ n, (P5576518746592063054.a n : ℤ) = A164653 (n + 1)

end A164653

/-! ## A164653.P11278304860635216694

`A008578(n+1)+record[A259153(n)]`
-/

namespace A164653.P11278304860635216694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259153 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A164653.P11278304860635216694

namespace A164653

/-- `A008578(n+1)+record[A259153(n)]` -/
def P11278304860635216694.Spec : Prop :=
  ∀ n, P11278304860635216694.a n = A164653 (n + 1)

end A164653

/-! ## A164653.P5724989989384636202

`A173137(n+1)+A162177(n+1)`
-/

namespace A164653.P5724989989384636202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173137 (n + 1) + A162177 (n + 1)

end

end A164653.P5724989989384636202

namespace A164653

/-- `A173137(n+1)+A162177(n+1)` -/
def P5724989989384636202.Spec : Prop :=
  ∀ n, P5724989989384636202.a n = A164653 (n + 1)

end A164653

/-! ## A164653.P11301242821604608396

`∏{p}[A008578(n+1), A008578(n)+#]`
-/

namespace A164653.P11301242821604608396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (A008578 n + (p : ℤ))

end

end A164653.P11301242821604608396

namespace A164653

/-- `∏{p}[A008578(n+1), A008578(n)+#]` -/
def P11301242821604608396.Spec : Prop :=
  ∀ n, P11301242821604608396.a n = A164653 (n + 1)

end A164653

/-! ## A164653.P2025306824401475663

`A008578(n+1)+∪[A008578(n+1), A182986(n+1)]`
-/

namespace A164653.P2025306824401475663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1) + (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℤ)

end

end A164653.P2025306824401475663

namespace A164653

/-- `A008578(n+1)+∪[A008578(n+1), A182986(n+1)]` -/
def P2025306824401475663.Spec : Prop :=
  ∀ n, P2025306824401475663.a n = A164653 (n + 1)

end A164653

/-! ## A164653.P16714080309289208530

`A011974(n+1)+A076273(n)-A076273(n+1)`
-/

namespace A164653.P16714080309289208530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011974 (n + 1) + (A076273 n - A076273 (n + 1))

end

end A164653.P16714080309289208530

namespace A164653

/-- `A011974(n+1)+A076273(n)-A076273(n+1)` -/
def P16714080309289208530.Spec : Prop :=
  ∀ n, P16714080309289208530.a n = A164653 (n + 1)

end A164653

/-! ## A164653.P18002561301573550773

`A008578(n+1)+A176099(n+1)-A008578(n+2)`
-/

namespace A164653.P18002561301573550773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1) + (A176099 (n + 1) - A008578 (n + 2))

end

end A164653.P18002561301573550773

namespace A164653

/-- `A008578(n+1)+A176099(n+1)-A008578(n+2)` -/
def P18002561301573550773.Spec : Prop :=
  ∀ n, P18002561301573550773.a n = A164653 (n + 1)

end A164653

/-! ## A164653.P8578981069496222288

`A008578(n+1)+A176098(n+1)/A008578(n+2)`
-/

namespace A164653.P8578981069496222288
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008578 (n + 1) : ℚ) + (A176098 (n + 1) : ℚ) / (A008578 (n + 2) : ℚ)

end

end A164653.P8578981069496222288

namespace A164653

/-- `A008578(n+1)+A176098(n+1)/A008578(n+2)` -/
def P8578981069496222288.Spec : Prop :=
  ∀ n, P8578981069496222288.a n = (A164653 (n + 1) : ℚ)

end A164653

/-! ## A164653.P416980850305585253

`A076273(n)-A134824(2*n)`
-/

namespace A164653.P416980850305585253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076273 n - A134824 (2 * n)

end

end A164653.P416980850305585253

namespace A164653

/-- `A076273(n)-A134824(2*n)` -/
def P416980850305585253.Spec : Prop :=
  ∀ n, P416980850305585253.a n = A164653 (n + 1)

end A164653

/-! ## A164653.P448809666588597794

`A065475(A076273(n))`
-/

namespace A164653.P448809666588597794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (A076273 n).toNat

end

end A164653.P448809666588597794

namespace A164653

/-- `A065475(A076273(n))` -/
def P448809666588597794.Spec : Prop :=
  ∀ n, P448809666588597794.a n = A164653 (n + 1)

end A164653

/-! ## A164653.P779944294469620334

`A158611(n+1)+A076272(A076273(n))`
-/

namespace A164653.P779944294469620334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (n + 1) + A076272 (A076273 n).toNat

end

end A164653.P779944294469620334

namespace A164653

/-- `A158611(n+1)+A076272(A076273(n))` -/
def P779944294469620334.Spec : Prop :=
  ∀ n, P779944294469620334.a n = A164653 (n + 1)

end A164653

/-!
# A164654: a(n) = 2*a(n-2) for n > 2; a(1) = 3, a(2) = 8.

The programs for A164654, the canonical program `A164654.P4184274757137879506` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164654 has offset 1).

The definition of A164654 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*a(n-2)` (program `A164654.P4184274757137879506`, by `A164654.P4184274757137879506.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A164654.P4184274757137879506

`2*a(n-2)` with `a(0)=3, a(1)=8`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A164654

/-- `2*a(n-2)` -/
def P4184274757137879506.Spec : Prop :=
  ∀ n, (P4184274757137879506.a n : ℤ) = A164654 (n + 1)

theorem P4184274757137879506.correct : P4184274757137879506.Spec := by
  intro n
  simp only [A164654, Nat.add_sub_cancel]

end A164654

/-! ## A164654.P6407575234266134485

`a(n-2)+a(n-2)` with `a(0)=3, a(1)=8`
-/

namespace A164654.P6407575234266134485
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3, 8] fun n a =>
  a (n - 2) + a (n - 2)

end

end A164654.P6407575234266134485

namespace A164654

/-- `a(n-2)+a(n-2)` -/
def P6407575234266134485.Spec : Prop :=
  ∀ n, (P6407575234266134485.a n : ℤ) = A164654 (n + 1)

theorem P6407575234266134485.correct : P6407575234266134485.Spec := by
  intro n
  simp only [A164654, Nat.add_sub_cancel, A164654.P6407575234266134485.a, A164654.P4184274757137879506.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A164654

/-! ## A164654.P3046177165523537077

`a(n-2)/(1-1/2)` with `a(0)=3, a(1)=8`
-/

namespace A164654.P3046177165523537077
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [3, 8] fun n a =>
  a (n - 2) / (1 - (1 : ℚ) / 2)

end

end A164654.P3046177165523537077

namespace A164654

/-- `a(n-2)/(1-1/2)` -/
def P3046177165523537077.Spec : Prop :=
  ∀ n, P3046177165523537077.a n = (A164654 (n + 1) : ℚ)

end A164654

/-! ## A164654.P6566071096854566787

`A164090(xor(1, n+3))`
-/

namespace A164654.P6566071096854566787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164090 (Nat.xor 1 (n + 3))

end

end A164654.P6566071096854566787

namespace A164654

/-- `A164090(xor(1, n+3))` -/
def P6566071096854566787.Spec : Prop :=
  ∀ n, P6566071096854566787.a n = A164654 (n + 1)

end A164654

/-! ## A164654.P13057887484057193570

`A163978(xor(1, n+1)+1)`
-/

namespace A164654.P13057887484057193570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163978 (Nat.xor 1 (n + 1) + 1)

end

end A164654.P13057887484057193570

namespace A164654

/-- `A163978(xor(1, n+1)+1)` -/
def P13057887484057193570.Spec : Prop :=
  ∀ n, P13057887484057193570.a n = A164654 (n + 1)

end A164654

/-! ## A164654.P3638472884367459622

`A029744(xor(1, n+1)+3)`
-/

namespace A164654.P3638472884367459622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029744 (Nat.xor 1 (n + 1) + 3)

end

end A164654.P3638472884367459622

namespace A164654

/-- `A029744(xor(1, n+1)+3)` -/
def P3638472884367459622.Spec : Prop :=
  ∀ n, P3638472884367459622.a n = A164654 (n + 1)

end A164654

/-! ## A164654.P295712151262401249

`(char[2*n+1]+3)*A016116(n+1)`
-/

namespace A164654.P295712151262401249
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((if ∃ j, f1 j = n then 1 else 0) + 3 : ℕ) : ℤ) * A016116 (n + 1)

end

end A164654.P295712151262401249

namespace A164654

/-- `(char[2*n+1]+3)*A016116(n+1)` -/
def P295712151262401249.Spec : Prop :=
  ∀ n, P295712151262401249.a n = A164654 (n + 1)

end A164654

/-! ## A164654.P16198686754295657243

`A063759(A103889(n+2))`
-/

namespace A164654.P16198686754295657243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063759 (A103889 (n + 2)).toNat

end

end A164654.P16198686754295657243

namespace A164654

/-- `A063759(A103889(n+2))` -/
def P16198686754295657243.Spec : Prop :=
  ∀ n, P16198686754295657243.a n = A164654 (n + 1)

end A164654

/-! ## A164654.P18221209064488414837

`A029747(A168200(n+2))`
-/

namespace A164654.P18221209064488414837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029747 (A168200 (n + 2)).toNat

end

end A164654.P18221209064488414837

namespace A164654

/-- `A029747(A168200(n+2))` -/
def P18221209064488414837.Spec : Prop :=
  ∀ n, P18221209064488414837.a n = A164654 (n + 1)

end A164654

/-! ## A164654.P1879257555171716628

`A063759(A010684(n)+n)`
-/

namespace A164654.P1879257555171716628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063759 (A010684 n + (n : ℤ)).toNat

end

end A164654.P1879257555171716628

namespace A164654

/-- `A063759(A010684(n)+n)` -/
def P1879257555171716628.Spec : Prop :=
  ∀ n, P1879257555171716628.a n = A164654 (n + 1)

end A164654

/-! ## A164654.P7539268836462751235

`A010702(n)*A060546(n)`
-/

namespace A164654.P7539268836462751235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010702 n * A060546 n

end

end A164654.P7539268836462751235

namespace A164654

/-- `A010702(n)*A060546(n)` -/
def P7539268836462751235.Spec : Prop :=
  ∀ n, P7539268836462751235.a n = A164654 (n + 1)

end A164654

/-! ## A164654.P6903236768632370530

`A143095(n)*A176059(n)`
-/

namespace A164654.P6903236768632370530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143095 n * A176059 n

end

end A164654.P6903236768632370530

namespace A164654

/-- `A143095(n)*A176059(n)` -/
def P6903236768632370530.Spec : Prop :=
  ∀ n, P6903236768632370530.a n = A164654 (n + 1)

end A164654

/-! ## A164654.P5170422207077113458

`A063759(A004442(n+1)+1)`
-/

namespace A164654.P5170422207077113458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063759 (A004442 (n + 1) + 1).toNat

end

end A164654.P5170422207077113458

namespace A164654

/-- `A063759(A004442(n+1)+1)` -/
def P5170422207077113458.Spec : Prop :=
  ∀ n, P5170422207077113458.a n = A164654 (n + 1)

end A164654

/-! ## A164654.P17658927735787748567

`A029744(A010684(n)+2+n)`
-/

namespace A164654.P17658927735787748567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029744 (A010684 n + 2 + (n : ℤ)).toNat

end

end A164654.P17658927735787748567

namespace A164654

/-- `A029744(A010684(n)+2+n)` -/
def P17658927735787748567.Spec : Prop :=
  ∀ n, P17658927735787748567.a n = A164654 (n + 1)

end A164654

/-! ## A164654.P2892451103941932822

`A143095(n+2)+A077957(n)`
-/

namespace A164654.P2892451103941932822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143095 (n + 2) + A077957 n

end

end A164654.P2892451103941932822

namespace A164654

/-- `A143095(n+2)+A077957(n)` -/
def P2892451103941932822.Spec : Prop :=
  ∀ n, P2892451103941932822.a n = A164654 (n + 1)

end A164654

/-! ## A164654.P9713505518197711927

`A090989(n+1)-A152166(n)`
-/

namespace A164654.P9713505518197711927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090989 (n + 1) - A152166 n

end

end A164654.P9713505518197711927

namespace A164654

/-- `A090989(n+1)-A152166(n)` -/
def P9713505518197711927.Spec : Prop :=
  ∀ n, P9713505518197711927.a n = A164654 (n + 1)

end A164654

/-! ## A164654.P8002000534480026506

`A000034(n)*A063759(n+1)`
-/

namespace A164654.P8002000534480026506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n * A063759 (n + 1)

end

end A164654.P8002000534480026506

namespace A164654

/-- `A000034(n)*A063759(n+1)` -/
def P8002000534480026506.Spec : Prop :=
  ∀ n, P8002000534480026506.a n = A164654 (n + 1)

end A164654

/-! ## A164654.P16854510025582820687

`A143095(n)+A016116(n+3)`
-/

namespace A164654.P16854510025582820687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143095 n + A016116 (n + 3)

end

end A164654.P16854510025582820687

namespace A164654

/-- `A143095(n)+A016116(n+3)` -/
def P16854510025582820687.Spec : Prop :=
  ∀ n, P16854510025582820687.a n = A164654 (n + 1)

end A164654

/-! ## A164654.P17336736565239089633

`A000034(n)*A163978(n+1)`
-/

namespace A164654.P17336736565239089633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n * A163978 (n + 1)

end

end A164654.P17336736565239089633

namespace A164654

/-- `A000034(n)*A163978(n+1)` -/
def P17336736565239089633.Spec : Prop :=
  ∀ n, P17336736565239089633.a n = A164654 (n + 1)

end A164654

/-!
# A164657: Denominators of partial sums of Theta(5) = Sum_{j>=1} 1/(2*j-1)^5.

The programs for A164657, there is no canonical definition to state claims against.
-/

/-! ## A164657.P7167397396154503758

`lcm((2*n+1)^5, a(n-1))` with `a(0)=1`
-/

namespace A164657.P7167397396154503758
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.lcm ((2 * n + 1) ^ 5) (a (n - 1))

end

end A164657.P7167397396154503758

/-! ## A164657.P15018411761665424809

`A025547(n+1)^5`
-/

namespace A164657.P15018411761665424809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025547 (n + 1) ^ 5

end

end A164657.P15018411761665424809

/-! ## A164657.P844558961946081026

`A035047(2*n+1)^5`
-/

namespace A164657.P844558961946081026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035047 (2 * n + 1) ^ 5

end

end A164657.P844558961946081026

/-! ## A164657.P1048782124722668123

`sqrt(A294971(n)^5)`
-/

namespace A164657.P1048782124722668123
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A294971 n ^ 5 : ℝ)

end

end A164657.P1048782124722668123

/-!
# A164658: Numerators of coefficients of integrated Chebyshev polynomials T(n,x) (in increasing order of powers of x).

The programs for A164658, there is no canonical definition to state claims against.
-/

/-! ## A164658.P13187227693452504041

`A053120(n)/A002260(n+1)*A164659(n)`
-/

namespace A164658.P13187227693452504041
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053120 n : ℚ) / (A002260 (n + 1) : ℚ) * (A164659 n : ℚ)

end

end A164658.P13187227693452504041

/-! ## A164658.P13716324985632779432

`A053120(n)/A128221(n+1)*A164659(n)`
-/

namespace A164658.P13716324985632779432
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053120 n : ℚ) / (A128221 (n + 1) : ℚ) * (A164659 n : ℚ)

end

end A164658.P13716324985632779432

/-! ## A164658.P1023205800701082147

`A053120(n)/A140756(n+1)*A164659(n)`
-/

namespace A164658.P1023205800701082147
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053120 n : ℚ) / (A140756 (n + 1) : ℚ) * (A164659 n : ℚ)

end

end A164658.P1023205800701082147

/-! ## A164658.P6316116496521908961

`A053120(n)/gcd(A128221(n+1), A136523(n))`
-/

namespace A164658.P6316116496521908961
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053120 n : ℚ) / (Int.gcd (A128221 (n + 1)) (A136523 n) : ℚ)

end

end A164658.P6316116496521908961

/-! ## A164658.P14339839376570155047

`A053120(n)/A118404(A166350(n+1))²`
-/

namespace A164658.P14339839376570155047
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053120 n : ℚ) / (A118404 (A166350 (n + 1)).toNat ^ 2 : ℚ)

end

end A164658.P14339839376570155047

/-!
# A164659: Denominators of coefficients of integrated Chebyshev polynomials T(n,x) (in increasing order of powers of x).

The programs for A164659, the canonical program `A164659.P7939324601151433332` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164659 has offset 0).

The definition of A164659 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 104 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A164659.P7939324601151433332

`A002260(n+1)/gcd(A002260(n+1), A053120(n))`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A164659

/-- `A002260(n+1)/gcd(A002260(n+1), A053120(n))` -/
def P7939324601151433332.Spec : Prop :=
  ∀ n, P7939324601151433332.a n = (A164659 n : ℚ)

end A164659

/-! ## A164659.P7150125460060542395

`A128221(n+1)/gcd(A128221(n+1), A136523(n))`
-/

namespace A164659.P7150125460060542395
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A128221 (n + 1) : ℚ) / (Int.gcd (A128221 (n + 1)) (A136523 n) : ℚ)

end

end A164659.P7150125460060542395

namespace A164659

/-- `A128221(n+1)/gcd(A128221(n+1), A136523(n))` -/
def P7150125460060542395.Spec : Prop :=
  ∀ n, P7150125460060542395.a n = (A164659 n : ℚ)

end A164659

/-! ## A164659.P17567151603097321345

`gcd(A002260(n+1), A007504(A088304(n+1)))`
-/

namespace A164659.P17567151603097321345
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002260 (n + 1)) (A007504 (A088304 (n + 1)).toNat)

end

end A164659.P17567151603097321345

namespace A164659

/-- `gcd(A002260(n+1), A007504(A088304(n+1)))` -/
def P17567151603097321345.Spec : Prop :=
  ∀ n, (P17567151603097321345.a n : ℤ) = A164659 n

end A164659

/-! ## A164659.P15110146475710673103

`gcd(A002260(n+1), A026443(A085446(n)))`
-/

namespace A164659.P15110146475710673103
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002260 (n + 1)) (A026443 (A085446 n).toNat)

end

end A164659.P15110146475710673103

namespace A164659

/-- `gcd(A002260(n+1), A026443(A085446(n)))` -/
def P15110146475710673103.Spec : Prop :=
  ∀ n, (P15110146475710673103.a n : ℤ) = A164659 n

end A164659

/-! ## A164659.P18027554085399012534

`A006530(A002377(A051129(n+1)²))`
-/

namespace A164659.P18027554085399012534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A002377 (A051129 (n + 1) ^ 2).toNat).toNat

end

end A164659.P18027554085399012534

namespace A164659

/-- `A006530(A002377(A051129(n+1)²))` -/
def P18027554085399012534.Spec : Prop :=
  ∀ n, P18027554085399012534.a n = A164659 n

end A164659

/-!
# A164660: Numerators of row sums of triangle of rationals A164658/A164659. Definite integral of Chebyshev polynomials of the first kind: Integral_{x=0..1} T(n,x).

The programs for A164660, the canonical program `A164660.P12594979771384182372` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164660 has offset 0).

The definition of A164660 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A164660.P12594979771384182372

`-a(n-2)^n` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A164660

/-- `-a(n-2)^n` -/
def P12594979771384182372.Spec : Prop :=
  ∀ n, P12594979771384182372.a n = A164660 n

theorem P12594979771384182372.correct : P12594979771384182372.Spec := by
  intro n
  simp only [A164660]

end A164660

/-!
# A164661: Denominators of row sums of triangle of rationals A164658/A164659. Definite integral of Chebyshev polynomials of the first kind: Integral_{x=0..1} T(n,x).

The programs for A164661, there is no canonical definition to state claims against.
-/

/-! ## A164661.P3601098702004072994

`lcm(or(2, n)-1, or(2, n-1))`
-/

namespace A164661.P3601098702004072994
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((Nat.lor 2 n : ℤ) - 1) (Int.lor 2 ((n : ℤ) - 1))

end

end A164661.P3601098702004072994

/-! ## A164661.P4165123275746905390

`A164660(n)+n^gcd(2, n)`
-/

namespace A164661.P4165123275746905390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164660 n + (n ^ Nat.gcd 2 n : ℤ)

end

end A164661.P4165123275746905390

/-! ## A164661.P5402842290964672156

`or(lcm(1-n, xor(1, n)), A000034(n))`
-/

namespace A164661.P5402842290964672156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (Int.lcm (1 - (n : ℤ)) (Nat.xor 1 n : ℤ) : ℤ) (A000034 n)

end

end A164661.P5402842290964672156

/-! ## A164661.P9410578500809384891

`A164660(n-char[1])+n^(2-n%2)`
-/

namespace A164661.P9410578500809384891
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A164660 (n - (if ∃ j, f1 j = n then 1 else 0)) : ℚ) + (n : ℚ) ^ (2 - ((n % 2 : ℕ) : ℤ) : ℤ)

end

end A164661.P9410578500809384891

/-! ## A164661.P2725524237894059249

`A164660(n)+A065679(n)`
-/

namespace A164661.P2725524237894059249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164660 n + A065679 n

end

end A164661.P2725524237894059249

/-! ## A164661.P5916185227388739551

`A164660(n)+n^A040001(n)`
-/

namespace A164661.P5916185227388739551
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A164660 n : ℚ) + (n : ℚ) ^ (A040001 n : ℤ)

end

end A164661.P5916185227388739551

/-! ## A164661.P5142212921257968039

`A141310(n)*A215495(abs(1-n))`
-/

namespace A164661.P5142212921257968039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141310 n * A215495 |1 - (n : ℤ)|.toNat

end

end A164661.P5142212921257968039

/-! ## A164661.P3380543724336811130

`or(lcm(1-n, A004442(n)), A000034(n))`
-/

namespace A164661.P3380543724336811130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (Int.lcm (1 - (n : ℤ)) (A004442 n) : ℤ) (A000034 n)

end

end A164661.P3380543724336811130

/-! ## A164661.P2133994364314998420

`A164660(n)+n^A000032(and(1, -n))`
-/

namespace A164661.P2133994364314998420
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A164660 n : ℚ) + (n : ℚ) ^ (A000032 (Int.land 1 (-(n : ℤ))).toNat : ℤ)

end

end A164661.P2133994364314998420

/-! ## A164661.P4264122152979463955

`A065679(n)-A087960(A257088(n))`
-/

namespace A164661.P4264122152979463955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065679 n - A087960 (A257088 n).toNat

end

end A164661.P4264122152979463955

/-!
# A164667: Number of reduced words of length n in Coxeter group on 31 generators S_i with relations (S_i)^2 = (S_i S_j)^7 = I.

The programs for A164667, there is no canonical definition to state claims against.
-/

/-! ## A164667.P11496710905081461352

`record[30*a(A005811(n+1))]` with `a(0)=1, a(1)=31`
-/

namespace A164667.P11496710905081461352
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 31] fun n f1 =>
  30 * f1 (A005811 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A164667.P11496710905081461352

/-! ## A164667.P9087969639072521752

`(31-A115971(∑[n^n]))*a(n-1)` with `a(0)=1`
-/

namespace A164667.P9087969639072521752
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (31 - A115971 (∑ j ∈ Finset.range (n + 1), f1 j)) * a (n - 1)

end

end A164667.P9087969639072521752

/-! ## A164667.P5997089573867906833

`A164992(A329580(n))`
-/

namespace A164667.P5997089573867906833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164992 (A329580 n).toNat

end

end A164667.P5997089573867906833

/-!
# A164671: Number of reduced words of length n in Coxeter group on 35 generators S_i with relations (S_i)^2 = (S_i S_j)^7 = I.

The programs for A164671, there is no canonical definition to state claims against.
-/

/-! ## A164671.P5091559095856632069

`record[34*a(n-A350388((12*n)²+1))]` with `a(0)=1, a(1)=35, a(2)=1, a(3)=35`
-/

namespace A164671.P5091559095856632069
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 35, 1, 35] fun n f1 =>
  34 * f1 ((n : ℤ) - A350388 ((12 * n) ^ 2 + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A164671.P5091559095856632069

/-! ## A164671.P16666915874539726975

`C(A166429(n), (val(n+1, 8)!*∏{p}[n+1, #]-n)²)`
-/

namespace A164671.P16666915874539726975
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A166429 n).toNat ((((Nat.factorial (SequenceMachineLib.valuation (n + 1) 8) * (∏ p ∈ Nat.primeFactors (f1 n), p) : ℕ) : ℤ) - (n : ℤ)) ^ 2).toNat

end

end A164671.P16666915874539726975

/-! ## A164671.P15931955023389500586

`A166145(n*A173779(n))`
-/

namespace A164671.P15931955023389500586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166145 ((n : ℤ) * A173779 n).toNat

end

end A164671.P15931955023389500586

/-!
# A164673: Number of reduced words of length n in Coxeter group on 37 generators S_i with relations (S_i)^2 = (S_i S_j)^7 = I.

The programs for A164673, there is no canonical definition to state claims against.
-/

/-! ## A164673.P3593458810110246963

`A033043(A003947(n))`
-/

namespace A164673.P3593458810110246963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033043 (A003947 n).toNat

end

end A164673.P3593458810110246963

/-! ## A164673.P6612722566887518728

`A033043(A164354(n))`
-/

namespace A164673.P6612722566887518728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033043 (A164354 n).toNat

end

end A164673.P6612722566887518728

/-! ## A164673.P14950673278748487510

`A033043(A164706(n))`
-/

namespace A164673.P14950673278748487510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033043 (A164706 n).toNat

end

end A164673.P14950673278748487510

/-!
# A164675: a(n) = 8*a(n-2) for n > 2; a(1) = 1, a(2) = 12.

The programs for A164675, the canonical program `A164675.P7165270604669281255` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164675 has offset 1).

The definition of A164675 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `8*a(n-2)` (program `A164675.P7165270604669281255`, by `A164675.P7165270604669281255.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A164675.P7165270604669281255

`8*a(n-2)` with `a(0)=1, a(1)=12`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A164675

/-- `8*a(n-2)` -/
def P7165270604669281255.Spec : Prop :=
  ∀ n, (P7165270604669281255.a n : ℤ) = A164675 (n + 1)

theorem P7165270604669281255.correct : P7165270604669281255.Spec := by
  intro n
  simp only [A164675, Nat.add_sub_cancel]

end A164675

/-! ## A164675.P8854645289905714834

`∏[8/a(n-1)]` with `a(0)=1, a(1)=12`
-/

namespace A164675.P8854645289905714834
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 12] fun n f1 =>
  8 / f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A164675.P8854645289905714834

namespace A164675

/-- `∏[8/a(n-1)]` -/
def P8854645289905714834.Spec : Prop :=
  ∀ n, P8854645289905714834.a n = (A164675 (n + 1) : ℚ)

end A164675

/-! ## A164675.P1538438739911472342

`A163864(3*n+1)`
-/

namespace A164675.P1538438739911472342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163864 (3 * n + 1)

end

end A164675.P1538438739911472342

namespace A164675

/-- `A163864(3*n+1)` -/
def P1538438739911472342.Spec : Prop :=
  ∀ n, P1538438739911472342.a n = A164675 (n + 1)

end A164675

/-! ## A164675.P7372103390356902959

`A074323(A047225(n+2))`
-/

namespace A164675.P7372103390356902959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074323 (A047225 (n + 2)).toNat

end

end A164675.P7372103390356902959

namespace A164675

/-- `A074323(A047225(n+2))` -/
def P7372103390356902959.Spec : Prop :=
  ∀ n, P7372103390356902959.a n = A164675 (n + 1)

end A164675

/-! ## A164675.P2423242656020611692

`A072946(A014681(3*n))`
-/

namespace A164675.P2423242656020611692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072946 (A014681 (3 * n)).toNat

end

end A164675.P2423242656020611692

namespace A164675

/-- `A072946(A014681(3*n))` -/
def P2423242656020611692.Spec : Prop :=
  ∀ n, P2423242656020611692.a n = A164675 (n + 1)

end A164675

/-! ## A164675.P5659844974317343209

`A010684(n)*A094015(n)`
-/

namespace A164675.P5659844974317343209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010684 n * A094015 n

end

end A164675.P5659844974317343209

namespace A164675

/-- `A010684(n)*A094015(n)` -/
def P5659844974317343209.Spec : Prop :=
  ∀ n, P5659844974317343209.a n = A164675 (n + 1)

end A164675

/-! ## A164675.P1900680392649729484

`A010685(n)*A096886(n)`
-/

namespace A164675.P1900680392649729484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010685 n * A096886 n

end

end A164675.P1900680392649729484

namespace A164675

/-- `A010685(n)*A096886(n)` -/
def P1900680392649729484.Spec : Prop :=
  ∀ n, P1900680392649729484.a n = A164675 (n + 1)

end A164675

/-! ## A164675.P13000024389266778988

`A060546(n)*A081631(n)`
-/

namespace A164675.P13000024389266778988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060546 n * A081631 n

end

end A164675.P13000024389266778988

namespace A164675

/-- `A060546(n)*A081631(n)` -/
def P13000024389266778988.Spec : Prop :=
  ∀ n, P13000024389266778988.a n = A164675 (n + 1)

end A164675

/-! ## A164675.P16498879191280173698

`A084221(n)*A143095(n)`
-/

namespace A164675.P16498879191280173698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084221 n * A143095 n

end

end A164675.P16498879191280173698

namespace A164675

/-- `A084221(n)*A143095(n)` -/
def P16498879191280173698.Spec : Prop :=
  ∀ n, P16498879191280173698.a n = A164675 (n + 1)

end A164675

/-! ## A164675.P17744517292038663671

`A000034(n)²*A096886(n)`
-/

namespace A164675.P17744517292038663671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n ^ 2 * A096886 n

end

end A164675.P17744517292038663671

namespace A164675

/-- `A000034(n)²*A096886(n)` -/
def P17744517292038663671.Spec : Prop :=
  ∀ n, P17744517292038663671.a n = A164675 (n + 1)

end A164675

/-! ## A164675.P17448214990685249209

`A164073(A047264(n+1)+1)`
-/

namespace A164675.P17448214990685249209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164073 (A047264 (n + 1) + 1).toNat

end

end A164675.P17448214990685249209

namespace A164675

/-- `A164073(A047264(n+1)+1)` -/
def P17448214990685249209.Spec : Prop :=
  ∀ n, P17448214990685249209.a n = A164675 (n + 1)

end A164675

/-! ## A164675.P18254576470343947092

`A074323(A047239(n+2)-1)`
-/

namespace A164675.P18254576470343947092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074323 (A047239 (n + 2) - 1).toNat

end

end A164675.P18254576470343947092

namespace A164675

/-- `A074323(A047239(n+2)-1)` -/
def P18254576470343947092.Spec : Prop :=
  ∀ n, P18254576470343947092.a n = A164675 (n + 1)

end A164675

/-! ## A164675.P4690797762822578605

`A016116(n+1)*A081631(n)`
-/

namespace A164675.P4690797762822578605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 (n + 1) * A081631 n

end

end A164675.P4690797762822578605

namespace A164675

/-- `A016116(n+1)*A081631(n)` -/
def P4690797762822578605.Spec : Prop :=
  ∀ n, P4690797762822578605.a n = A164675 (n + 1)

end A164675

/-! ## A164675.P4416311790237146926

`A000034(n)*A164640(n+1)`
-/

namespace A164675.P4416311790237146926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n * A164640 (n + 1)

end

end A164675.P4416311790237146926

namespace A164675

/-- `A000034(n)*A164640(n+1)` -/
def P4416311790237146926.Spec : Prop :=
  ∀ n, P4416311790237146926.a n = A164675 (n + 1)

end A164675

/-! ## A164675.P14853757858824415858

`A056450(n)*A164073(n+1)`
-/

namespace A164675.P14853757858824415858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056450 n * A164073 (n + 1)

end

end A164675.P14853757858824415858

namespace A164675

/-- `A056450(n)*A164073(n+1)` -/
def P14853757858824415858.Spec : Prop :=
  ∀ n, P14853757858824415858.a n = A164675 (n + 1)

end A164675

/-! ## A164675.P5777968673202438496

`lcm(A076936(n+1), A096886(n))`
-/

namespace A164675.P5777968673202438496
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A076936 (n + 1)) (A096886 n)

end

end A164675.P5777968673202438496

namespace A164675

/-- `lcm(A076936(n+1), A096886(n))` -/
def P5777968673202438496.Spec : Prop :=
  ∀ n, (P5777968673202438496.a n : ℤ) = A164675 (n + 1)

end A164675

/-! ## A164675.P10345272310534403749

`A072946(A014681(n)+n+n)`
-/

namespace A164675.P10345272310534403749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072946 (A014681 n + (n : ℤ) + (n : ℤ)).toNat

end

end A164675.P10345272310534403749

namespace A164675

/-- `A072946(A014681(n)+n+n)` -/
def P10345272310534403749.Spec : Prop :=
  ∀ n, P10345272310534403749.a n = A164675 (n + 1)

end A164675

/-! ## A164675.P18062183766390495822

`A060546(n)²*A074323(n+1)`
-/

namespace A164675.P18062183766390495822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060546 n ^ 2 * A074323 (n + 1)

end

end A164675.P18062183766390495822

namespace A164675

/-- `A060546(n)²*A074323(n+1)` -/
def P18062183766390495822.Spec : Prop :=
  ∀ n, P18062183766390495822.a n = A164675 (n + 1)

end A164675

/-! ## A164675.P3247365235480664230

`A060546(n)²*A164073(n+1)`
-/

namespace A164675.P3247365235480664230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060546 n ^ 2 * A164073 (n + 1)

end

end A164675.P3247365235480664230

namespace A164675

/-- `A060546(n)²*A164073(n+1)` -/
def P3247365235480664230.Spec : Prop :=
  ∀ n, P3247365235480664230.a n = A164675 (n + 1)

end A164675

/-!
# A164676: Primes obtained from other primes by taking the corresponding powers of each digit and adding the result.

The programs for A164676, there is no canonical definition to state claims against.
-/

/-! ## A164676.P4229395633207827831

`∑{digits}[A046440(n), #^#]`
-/

namespace A164676.P4229395633207827831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046440 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x ^ x).sum

end

end A164676.P4229395633207827831

/-! ## A164676.P1585449758223319166

`A045503(A046440(n))`
-/

namespace A164676.P1585449758223319166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045503 (A046440 n).toNat

end

end A164676.P1585449758223319166

/-! ## A164676.P8674489128981665276

`A045503(p?[A046431(n)])`
-/

namespace A164676.P8674489128981665276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046431 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045503 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A164676.P8674489128981665276

/-! ## A164676.P10242702456860437644

`A045503(∩[A000040(n+1), A046431(n)])`
-/

namespace A164676.P10242702456860437644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046431 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045503 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A164676.P10242702456860437644

/-! ## A164676.P9356261933849219227

`p?[A045503(p?[A007094(n)])]`
-/

namespace A164676.P9356261933849219227
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007094 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045503 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A164676.P9356261933849219227

/-!
# A164677: For a binary reflected Gray code, the (Hamming/Euclidean) distance between 2 subsequent points x and y is 1, say in coordinate k. If y has a 1 in coordinate k and x has a 0, than (x,y) is indicated by k, if it is the other way around, (x,y) is indicated by -k. The sequence has a fractal character such that G(d+1) = G(d) d+1 R(G(d)) where R(G(d)) alters d --> -d and leaves all other numbers invariant.

The programs for A164677, the canonical program `A164677.P6354248361395124461` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164677 has offset 1).

The definition of A164677 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034947, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A164677.P6354248361395124461

`A034947(n+1)*A001511(n+1)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A164677

/-- `A034947(n+1)*A001511(n+1)` -/
def P6354248361395124461.Spec : Prop :=
  ∀ n, P6354248361395124461.a n = A164677 (n + 1)

theorem P6354248361395124461.correct : P6354248361395124461.Spec := by
  intro n
  simp only [A164677, Nat.add_sub_cancel]

end A164677

/-! ## A164677.P6337655471710004979

`(val(n+1, 2)+1)*Δ[xor(n, 2*n)]%2`
-/

namespace A164677.P6337655471710004979
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (n + 1) 2 + 1 : ℤ) * Int.tmod ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) 2

end

end A164677.P6337655471710004979

namespace A164677

/-- `(val(n+1, 2)+1)*Δ[xor(n, 2*n)]%2` -/
def P6337655471710004979.Spec : Prop :=
  ∀ n, P6337655471710004979.a n = A164677 (n + 1)

end A164677

/-! ## A164677.P208248669487507956

`(val(n+1, 2)+1)*Δ[A005811(n)]`
-/

namespace A164677.P208248669487507956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (n + 1) 2 + 1 : ℤ) * (f1 (n + 1) - f1 n)

end

end A164677.P208248669487507956

namespace A164677

/-- `(val(n+1, 2)+1)*Δ[A005811(n)]` -/
def P208248669487507956.Spec : Prop :=
  ∀ n, P208248669487507956.a n = A164677 (n + 1)

end A164677

/-! ## A164677.P15871940331362658076

`(val(n+1, 2)+1)*A057077((n+1)/2^val(n+1, 2))`
-/

namespace A164677.P15871940331362658076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (n + 1) 2 + 1 : ℤ) * A057077 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat

end

end A164677.P15871940331362658076

namespace A164677

/-- `(val(n+1, 2)+1)*A057077((n+1)/2^val(n+1, 2))` -/
def P15871940331362658076.Spec : Prop :=
  ∀ n, P15871940331362658076.a n = A164677 (n + 1)

end A164677

/-! ## A164677.P15551765066587780086

`Δ[A005811(n)]*A001511(n+1)`
-/

namespace A164677.P15551765066587780086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A001511 (n + 1)

end

end A164677.P15551765066587780086

namespace A164677

/-- `Δ[A005811(n)]*A001511(n+1)` -/
def P15551765066587780086.Spec : Prop :=
  ∀ n, P15551765066587780086.a n = A164677 (n + 1)

end A164677

/-! ## A164677.P10944079514673213325

`A091512(n+1)/A119972(n+1)`
-/

namespace A164677.P10944079514673213325
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A091512 (n + 1) : ℚ) / (A119972 (n + 1) : ℚ)

end

end A164677.P10944079514673213325

namespace A164677

/-- `A091512(n+1)/A119972(n+1)` -/
def P10944079514673213325.Spec : Prop :=
  ∀ n, P10944079514673213325.a n = (A164677 (n + 1) : ℚ)

end A164677

/-! ## A164677.P13959736876491413140

`(A007814(n+1)+1)*Δ[A005811(n)]`
-/

namespace A164677.P13959736876491413140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A007814 (n + 1) + 1) * (f1 (n + 1) - f1 n)

end

end A164677.P13959736876491413140

namespace A164677

/-- `(A007814(n+1)+1)*Δ[A005811(n)]` -/
def P13959736876491413140.Spec : Prop :=
  ∀ n, P13959736876491413140.a n = A164677 (n + 1)

end A164677

/-! ## A164677.P15304276783413089795

`(A007814(n+1)+1)*A034947(n+1)`
-/

namespace A164677.P15304276783413089795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A007814 (n + 1) + 1) * A034947 (n + 1)

end

end A164677.P15304276783413089795

namespace A164677

/-- `(A007814(n+1)+1)*A034947(n+1)` -/
def P15304276783413089795.Spec : Prop :=
  ∀ n, P15304276783413089795.a n = A164677 (n + 1)

end A164677

/-! ## A164677.P14802559271633096705

`val(A005843(n+1), 2)*A034947(n+1)`
-/

namespace A164677.P14802559271633096705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (A005843 (n + 1)).toNat 2 : ℤ) * A034947 (n + 1)

end

end A164677.P14802559271633096705

namespace A164677

/-- `val(A005843(n+1), 2)*A034947(n+1)` -/
def P14802559271633096705.Spec : Prop :=
  ∀ n, P14802559271633096705.a n = A164677 (n + 1)

end A164677

/-! ## A164677.P1687767677680640033

`∑{d}[n+1, A035184(#)*A087003((n+1)/#)]`
-/

namespace A164677.P1687767677680640033
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A035184 d * A087003 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A164677.P1687767677680640033

namespace A164677

/-- `∑{d}[n+1, A035184(#)*A087003((n+1)/#)]` -/
def P1687767677680640033.Spec : Prop :=
  ∀ n, P1687767677680640033.a n = A164677 (n + 1)

end A164677

/-! ## A164677.P2561263114711173163

`∑{d}[n+1, A002654(#)*A209635((n+1)/#)]`
-/

namespace A164677.P2561263114711173163
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A002654 d * A209635 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A164677.P2561263114711173163

namespace A164677

/-- `∑{d}[n+1, A002654(#)*A209635((n+1)/#)]` -/
def P2561263114711173163.Spec : Prop :=
  ∀ n, P2561263114711173163.a n = A164677 (n + 1)

end A164677

/-! ## A164677.P14648091843919326717

`∑{d}[n+1, A112299(#)*A129502((n+1)/#)]`
-/

namespace A164677.P14648091843919326717
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A112299 d * A129502 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A164677.P14648091843919326717

namespace A164677

/-- `∑{d}[n+1, A112299(#)*A129502((n+1)/#)]` -/
def P14648091843919326717.Spec : Prop :=
  ∀ n, P14648091843919326717.a n = A164677 (n + 1)

end A164677

/-! ## A164677.P10898846451356647444

`∑{d}[n+1, A034947(#)*A209229((n+1)/#)]`
-/

namespace A164677.P10898846451356647444
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A034947 d * A209229 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A164677.P10898846451356647444

namespace A164677

/-- `∑{d}[n+1, A034947(#)*A209229((n+1)/#)]` -/
def P10898846451356647444.Spec : Prop :=
  ∀ n, P10898846451356647444.a n = A164677 (n + 1)

end A164677

/-! ## A164677.P16336048272978073513

`∑{d}[n+1, A008442(#)*A317673((n+1)/#)]`
-/

namespace A164677.P16336048272978073513
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008442 d * A317673 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A164677.P16336048272978073513

namespace A164677

/-- `∑{d}[n+1, A008442(#)*A317673((n+1)/#)]` -/
def P16336048272978073513.Spec : Prop :=
  ∀ n, P16336048272978073513.a n = A164677 (n + 1)

end A164677

/-! ## A164677.P12287524465133990503

`∑{d}[n+1, A115364(#)*A275966((n+1)/#)]`
-/

namespace A164677.P12287524465133990503
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A115364 d * A275966 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A164677.P12287524465133990503

namespace A164677

/-- `∑{d}[n+1, A115364(#)*A275966((n+1)/#)]` -/
def P12287524465133990503.Spec : Prop :=
  ∀ n, P12287524465133990503.a n = A164677 (n + 1)

end A164677

/-! ## A164677.P8996355102755260137

`∑{d}[n+1, A091400(#)*A359154((n+1)/#)]`
-/

namespace A164677.P8996355102755260137
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A091400 d * A359154 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A164677.P8996355102755260137

namespace A164677

/-- `∑{d}[n+1, A091400(#)*A359154((n+1)/#)]` -/
def P8996355102755260137.Spec : Prop :=
  ∀ n, P8996355102755260137.a n = A164677 (n + 1)

end A164677

/-! ## A164677.P6139435927170372806

`∑{d}[n+1, A034947(#)*A036987((n+1)/#-1)]`
-/

namespace A164677.P6139435927170372806
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A034947 d * A036987 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A164677.P6139435927170372806

namespace A164677

/-- `∑{d}[n+1, A034947(#)*A036987((n+1)/#-1)]` -/
def P6139435927170372806.Spec : Prop :=
  ∀ n, P6139435927170372806.a n = A164677 (n + 1)

end A164677

/-! ## A164677.P16296375610004047152

`∑{d}[n+1, A056594(#-1)*A104117((n+1)/#)]`
-/

namespace A164677.P16296375610004047152
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A056594 (d - 1) * A104117 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A164677.P16296375610004047152

namespace A164677

/-- `∑{d}[n+1, A056594(#-1)*A104117((n+1)/#)]` -/
def P16296375610004047152.Spec : Prop :=
  ∀ n, P16296375610004047152.a n = A164677 (n + 1)

end A164677

/-! ## A164677.P8384885036686606218

`A001511(n+1)*A209615(A000265(n+1))`
-/

namespace A164677.P8384885036686606218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (n + 1) * A209615 (A000265 (n + 1)).toNat

end

end A164677.P8384885036686606218

namespace A164677

/-- `A001511(n+1)*A209615(A000265(n+1))` -/
def P8384885036686606218.Spec : Prop :=
  ∀ n, P8384885036686606218.a n = A164677 (n + 1)

end A164677

/-! ## A164677.P2269732669778517423

`(A005811(n+1)-A005811(n))*A001511(n+1)`
-/

namespace A164677.P2269732669778517423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A005811 (n + 1) - A005811 n) * A001511 (n + 1)

end

end A164677.P2269732669778517423

namespace A164677

/-- `(A005811(n+1)-A005811(n))*A001511(n+1)` -/
def P2269732669778517423.Spec : Prop :=
  ∀ n, P2269732669778517423.a n = A164677 (n + 1)

end A164677

/-!
# A164678: Convolve A008619 with sequences which map to 2,3,5,7,11,13,17... A000040 then, by bending when needed, summarize the results in a triangular array.

The programs for A164678, there is no canonical definition to state claims against.
-/

/-! ## A164678.P3184240943864580428

`A173787(n)+A082071(abs(3*2^n-4))`
-/

namespace A164678.P3184240943864580428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173787 n + A082071 |(3 * 2 ^ n : ℤ) - 4|.toNat

end

end A164678.P3184240943864580428

/-! ## A164678.P15586239658820690436

`A173787(n)+A072491(A056040(n))`
-/

namespace A164678.P15586239658820690436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173787 n + A072491 (A056040 n).toNat

end

end A164678.P15586239658820690436

/-! ## A164678.P17257919156481934932

`A173787(n)+A131033(A003945(n))`
-/

namespace A164678.P17257919156481934932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173787 n + A131033 (A003945 n).toNat

end

end A164678.P17257919156481934932

/-! ## A164678.P6634804192109341653

`A173787(n)+A036453(A244884(n))`
-/

namespace A164678.P6634804192109341653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173787 n + A036453 (A244884 n).toNat

end

end A164678.P6634804192109341653

/-!
# A164679: Convolve A001399 with sequences which map to 2,3,5,7,11,13,17... A000040 then, by bending when needed, summarize the results in a triangular array.

The programs for A164679, there is no canonical definition to state claims against.
-/

/-! ## A164679.P16338294983768829399

`A173787(n)+A055642(A279474(n))`
-/

namespace A164679.P16338294983768829399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173787 n + A055642 (A279474 n).toNat

end

end A164679.P16338294983768829399

/-! ## A164679.P10096344005725981215

`A173787(n)+A055642(A111663(n+1))`
-/

namespace A164679.P10096344005725981215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173787 n + A055642 (A111663 (n + 1)).toNat

end

end A164679.P10096344005725981215

/-! ## A164679.P16169308736442122388

`A173787(n)+A055642(A038272(n))`
-/

namespace A164679.P16169308736442122388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173787 n + A055642 (A038272 n).toNat

end

end A164679.P16169308736442122388

/-! ## A164679.P14336959359655803495

`A173787(n)+A055642(A002253(2*n+1))`
-/

namespace A164679.P14336959359655803495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173787 n + A055642 (A002253 (2 * n + 1)).toNat

end

end A164679.P14336959359655803495

/-!
# A164680: Expansion of x/((1-x)^3*(1-x^2)^3*(1-x^3)).

The programs for A164680, the canonical program `A164680.P15258052786257426465` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164680 has offset 1).

The definition of A164680 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A164680.P9534769527743251592

`∑[∑[∑[A165188(n+1)]]]`
-/

namespace A164680.P9534769527743251592
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165188 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164680.P9534769527743251592

namespace A164680

/-- `∑[∑[∑[A165188(n+1)]]]` -/
def P9534769527743251592.Spec : Prop :=
  ∀ n, P9534769527743251592.a n = A164680 (n + 1)

end A164680

/-! ## A164680.P15258052786257426465

`A002625(n)+a(n-2)` with `a(0)=1, a(1)=3`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A164680

/-- `A002625(n)+a(n-2)` -/
def P15258052786257426465.Spec : Prop :=
  ∀ n, P15258052786257426465.a n = A164680 (n + 1)

theorem P15258052786257426465.correct : P15258052786257426465.Spec := by
  intro n
  simp only [A164680, Nat.add_sub_cancel]

end A164680

/-! ## A164680.P4558204038077309403

`A038163(n)+a(n-3)` with `a(0)=1, a(1)=3, a(2)=9`
-/

namespace A164680.P4558204038077309403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 9] fun n a =>
  A038163 n + a (n - 3)

end

end A164680.P4558204038077309403

namespace A164680

/-- `A038163(n)+a(n-3)` -/
def P4558204038077309403.Spec : Prop :=
  ∀ n, P4558204038077309403.a n = A164680 (n + 1)

end A164680

/-! ## A164680.P11905629711510201173

`A107351(n)-a(n-3)` with `a(0)=1, a(1)=3, a(2)=9`
-/

namespace A164680.P11905629711510201173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 9] fun n a =>
  A107351 n - a (n - 3)

end

end A164680.P11905629711510201173

namespace A164680

/-- `A107351(n)-a(n-3)` -/
def P11905629711510201173.Spec : Prop :=
  ∀ n, P11905629711510201173.a n = A164680 (n + 1)

end A164680

/-! ## A164680.P3552209822407817715

`∑[∑[A266769(n)+a(n-1)]]-a(n-1)` with `a(0)=1`
-/

namespace A164680.P3552209822407817715
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  A266769 n + f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j - a (n - 1)

end

end A164680.P3552209822407817715

namespace A164680

/-- `∑[∑[A266769(n)+a(n-1)]]-a(n-1)` -/
def P3552209822407817715.Spec : Prop :=
  ∀ n, P3552209822407817715.a n = A164680 (n + 1)

end A164680

/-! ## A164680.P4614710258910459796

`∑[∑[A057524(n)-a(n-1)]]-a(n-1)` with `a(0)=1`
-/

namespace A164680.P4614710258910459796
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  A057524 n - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j - a (n - 1)

end

end A164680.P4614710258910459796

namespace A164680

/-- `∑[∑[A057524(n)-a(n-1)]]-a(n-1)` -/
def P4614710258910459796.Spec : Prop :=
  ∀ n, P4614710258910459796.a n = A164680 (n + 1)

end A164680

/-! ## A164680.P8843338634364170884

`∑[2*A115376(n+2)]-A115376(n+2)`
-/

namespace A164680.P8843338634364170884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A115376 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A115376 (n + 2)

end

end A164680.P8843338634364170884

namespace A164680

/-- `∑[2*A115376(n+2)]-A115376(n+2)` -/
def P8843338634364170884.Spec : Prop :=
  ∀ n, P8843338634364170884.a n = A164680 (n + 1)

end A164680

/-!
# A164681: Number of reduced words of length n in Coxeter group on 39 generators S_i with relations (S_i)^2 = (S_i S_j)^7 = I.

The programs for A164681, there is no canonical definition to state claims against.
-/

/-! ## A164681.P4026438383161344307

`A165688(n)-A184974(A318287(3*n+1))`
-/

namespace A164681.P4026438383161344307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165688 n - A184974 (A318287 (3 * n + 1)).toNat

end

end A164681.P4026438383161344307

/-!
# A164682: a(n) = 2*a(n-2) for n > 2; a(1) = 5, a(2) = 8.

The programs for A164682, the canonical program `A164682.P417368197949800820` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164682 has offset 1).

The definition of A164682 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*a(n-2)` (program `A164682.P417368197949800820`, by `A164682.P417368197949800820.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A164682.P417368197949800820

`2*a(n-2)` with `a(0)=5, a(1)=8`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A164682

/-- `2*a(n-2)` -/
def P417368197949800820.Spec : Prop :=
  ∀ n, (P417368197949800820.a n : ℤ) = A164682 (n + 1)

theorem P417368197949800820.correct : P417368197949800820.Spec := by
  intro n
  simp only [A164682, Nat.add_sub_cancel]

end A164682

/-! ## A164682.P795392098347535308

`a(n-2)+a(n-2)` with `a(0)=5, a(1)=8`
-/

namespace A164682.P795392098347535308
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [5, 8] fun n a =>
  a (n - 2) + a (n - 2)

end

end A164682.P795392098347535308

namespace A164682

/-- `a(n-2)+a(n-2)` -/
def P795392098347535308.Spec : Prop :=
  ∀ n, (P795392098347535308.a n : ℤ) = A164682 (n + 1)

theorem P795392098347535308.correct : P795392098347535308.Spec := by
  intro n
  simp only [A164682, Nat.add_sub_cancel, A164682.P795392098347535308.a, A164682.P417368197949800820.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A164682

/-! ## A164682.P7162077880429921477

`a(n-2)/(1-1/2)` with `a(0)=5, a(1)=8`
-/

namespace A164682.P7162077880429921477
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [5, 8] fun n a =>
  a (n - 2) / (1 - (1 : ℚ) / 2)

end

end A164682.P7162077880429921477

namespace A164682

/-- `a(n-2)/(1-1/2)` -/
def P7162077880429921477.Spec : Prop :=
  ∀ n, P7162077880429921477.a n = (A164682 (n + 1) : ℚ)

end A164682

/-! ## A164682.P14575554831857867266

`A228305(n+3)`
-/

namespace A164682.P14575554831857867266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228305 (n + 3)

end

end A164682.P14575554831857867266

namespace A164682

/-- `A228305(n+3)` -/
def P14575554831857867266.Spec : Prop :=
  ∀ n, P14575554831857867266.a n = A164682 (n + 1)

end A164682

/-! ## A164682.P4036664324169001667

`A094958(n+4)`
-/

namespace A164682.P4036664324169001667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094958 (n + 4)

end

end A164682.P4036664324169001667

namespace A164682

/-- `A094958(n+4)` -/
def P4036664324169001667.Spec : Prop :=
  ∀ n, P4036664324169001667.a n = A164682 (n + 1)

end A164682

/-! ## A164682.P6979758757812156932

`A121451(n+5)`
-/

namespace A164682.P6979758757812156932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121451 (n + 5)

end

end A164682.P6979758757812156932

namespace A164682

/-- `A121451(n+5)` -/
def P6979758757812156932.Spec : Prop :=
  ∀ n, P6979758757812156932.a n = A164682 (n + 1)

end A164682

/-! ## A164682.P6913684556886260614

`abs(Δ[Δ[A143095(n)]])`
-/

namespace A164682.P6913684556886260614
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143095 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A164682.P6913684556886260614

namespace A164682

/-- `abs(Δ[Δ[A143095(n)]])` -/
def P6913684556886260614.Spec : Prop :=
  ∀ n, P6913684556886260614.a n = A164682 (n + 1)

end A164682

/-! ## A164682.P7458017897605721536

`∑[A074323(n+1)]+4`
-/

namespace A164682.P7458017897605721536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074323 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 4

end

end A164682.P7458017897605721536

namespace A164682

/-- `∑[A074323(n+1)]+4` -/
def P7458017897605721536.Spec : Prop :=
  ∀ n, P7458017897605721536.a n = A164682 (n + 1)

end A164682

/-! ## A164682.P9888929286083312763

`∑[A164073(n+1)]+4`
-/

namespace A164682.P9888929286083312763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164073 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 4

end

end A164682.P9888929286083312763

namespace A164682

/-- `∑[A164073(n+1)]+4` -/
def P9888929286083312763.Spec : Prop :=
  ∀ n, P9888929286083312763.a n = A164682 (n + 1)

end A164682

/-! ## A164682.P6344966433916937921

`abs(Δ[Δ[A135530(n+1)]])`
-/

namespace A164682.P6344966433916937921
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135530 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A164682.P6344966433916937921

namespace A164682

/-- `abs(Δ[Δ[A135530(n+1)]])` -/
def P6344966433916937921.Spec : Prop :=
  ∀ n, P6344966433916937921.a n = A164682 (n + 1)

end A164682

/-! ## A164682.P4615539383855045063

`abs(Δ[Δ[A316742(n+1)]])`
-/

namespace A164682.P4615539383855045063
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316742 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A164682.P4615539383855045063

namespace A164682

/-- `abs(Δ[Δ[A316742(n+1)]])` -/
def P4615539383855045063.Spec : Prop :=
  ∀ n, P4615539383855045063.a n = A164682 (n + 1)

end A164682

/-! ## A164682.P8755717906444584974

`A162255(n)+a(n-1)` with `a(0)=5`
-/

namespace A164682.P8755717906444584974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  A162255 n + a (n - 1)

end

end A164682.P8755717906444584974

namespace A164682

/-- `A162255(n)+a(n-1)` -/
def P8755717906444584974.Spec : Prop :=
  ∀ n, P8755717906444584974.a n = A164682 (n + 1)

end A164682

/-! ## A164682.P11837589453923445799

`A029749(A114119(n+1))`
-/

namespace A164682.P11837589453923445799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029749 (A114119 (n + 1)).toNat

end

end A164682.P11837589453923445799

namespace A164682

/-- `A029749(A114119(n+1))` -/
def P11837589453923445799.Spec : Prop :=
  ∀ n, P11837589453923445799.a n = A164682 (n + 1)

end A164682

/-! ## A164682.P18020959704164203318

`A071831(A047389(n+2))`
-/

namespace A164682.P18020959704164203318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071831 (A047389 (n + 2)).toNat

end

end A164682.P18020959704164203318

namespace A164682

/-- `A071831(A047389(n+2))` -/
def P18020959704164203318.Spec : Prop :=
  ∀ n, P18020959704164203318.a n = A164682 (n + 1)

end A164682

/-! ## A164682.P17868213046927817131

`A029750(A100832(n+2))`
-/

namespace A164682.P17868213046927817131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029750 (A100832 (n + 2)).toNat

end

end A164682.P17868213046927817131

namespace A164682

/-- `A029750(A100832(n+2))` -/
def P17868213046927817131.Spec : Prop :=
  ∀ n, P17868213046927817131.a n = A164682 (n + 1)

end A164682

/-! ## A164682.P11707888135111726134

`A010719(n)*A016116(n)`
-/

namespace A164682.P11707888135111726134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010719 n * A016116 n

end

end A164682.P11707888135111726134

namespace A164682

/-- `A010719(n)*A016116(n)` -/
def P11707888135111726134.Spec : Prop :=
  ∀ n, P11707888135111726134.a n = A164682 (n + 1)

end A164682

/-! ## A164682.P13055934077354125777

`A029747(A114119(n+1)+2)`
-/

namespace A164682.P13055934077354125777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029747 (A114119 (n + 1) + 2).toNat

end

end A164682.P13055934077354125777

namespace A164682

/-- `A029747(A114119(n+1)+2)` -/
def P13055934077354125777.Spec : Prop :=
  ∀ n, P13055934077354125777.a n = A164682 (n + 1)

end A164682

/-! ## A164682.P12015439421568279905

`A090989(n+1)+A060546(n)`
-/

namespace A164682.P12015439421568279905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090989 (n + 1) + A060546 n

end

end A164682.P12015439421568279905

namespace A164682

/-- `A090989(n+1)+A060546(n)` -/
def P12015439421568279905.Spec : Prop :=
  ∀ n, P12015439421568279905.a n = A164682 (n + 1)

end A164682

/-! ## A164682.P4821803008108896018

`A137206(n+1)+A134693(n)`
-/

namespace A164682.P4821803008108896018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137206 (n + 1) + A134693 n

end

end A164682.P4821803008108896018

namespace A164682

/-- `A137206(n+1)+A134693(n)` -/
def P4821803008108896018.Spec : Prop :=
  ∀ n, P4821803008108896018.a n = A164682 (n + 1)

end A164682

/-!
# A164683: a(n) = 8*a(n-2) for n > 2; a(1) = 1, a(2) = 8.

The programs for A164683, the canonical program `A164683.P17397429288599514494` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164683 has offset 1).

The definition of A164683 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `8*a(n-2)` (program `A164683.P17397429288599514494`, by `A164683.P17397429288599514494.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A164683.P17397429288599514494

`8*a(n-2)` with `a(0)=1, a(1)=8`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A164683

/-- `8*a(n-2)` -/
def P17397429288599514494.Spec : Prop :=
  ∀ n, (P17397429288599514494.a n : ℤ) = A164683 (n + 1)

theorem P17397429288599514494.correct : P17397429288599514494.Spec := by
  intro n
  simp only [A164683, Nat.add_sub_cancel]

end A164683

/-! ## A164683.P9784567216353585053

`8^ceil(n/2)`
-/

namespace A164683.P9784567216353585053
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (8 : ℚ) ^ (⌈(n : ℚ) / 2⌉ : ℤ)

end

end A164683.P9784567216353585053

namespace A164683

/-- `8^ceil(n/2)` -/
def P9784567216353585053.Spec : Prop :=
  ∀ n, P9784567216353585053.a n = (A164683 (n + 1) : ℚ)

end A164683

/-! ## A164683.P10076780439099583518

`∏[8^(n%2)]`
-/

namespace A164683.P10076780439099583518
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 ^ (n % 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A164683.P10076780439099583518

namespace A164683

/-- `∏[8^(n%2)]` -/
def P10076780439099583518.Spec : Prop :=
  ∀ n, (P10076780439099583518.a n : ℤ) = A164683 (n + 1)

end A164683

/-! ## A164683.P17250651501440358393

`∏[8^and(1, n)]`
-/

namespace A164683.P17250651501440358393
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 ^ Nat.land 1 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A164683.P17250651501440358393

namespace A164683

/-- `∏[8^and(1, n)]` -/
def P17250651501440358393.Spec : Prop :=
  ∀ n, (P17250651501440358393.a n : ℤ) = A164683 (n + 1)

end A164683

/-! ## A164683.P12402951260517075230

`∏[C(8, and(1, n))]`
-/

namespace A164683.P12402951260517075230
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 8 (Nat.land 1 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A164683.P12402951260517075230

namespace A164683

/-- `∏[C(8, and(1, n))]` -/
def P12402951260517075230.Spec : Prop :=
  ∀ n, (P12402951260517075230.a n : ℤ) = A164683 (n + 1)

end A164683

/-! ## A164683.P9576981250616619167

`∏[gcd(8, 1-n²)]`
-/

namespace A164683.P9576981250616619167
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 8 (1 - (n ^ 2 : ℤ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A164683.P9576981250616619167

namespace A164683

/-- `∏[gcd(8, 1-n²)]` -/
def P9576981250616619167.Spec : Prop :=
  ∀ n, (P9576981250616619167.a n : ℤ) = A164683 (n + 1)

end A164683

/-! ## A164683.P11326522401409887165

`∏[C(8, n²%2)]`
-/

namespace A164683.P11326522401409887165
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 8 (n ^ 2 % 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A164683.P11326522401409887165

namespace A164683

/-- `∏[C(8, n²%2)]` -/
def P11326522401409887165.Spec : Prop :=
  ∀ n, (P11326522401409887165.a n : ℤ) = A164683 (n + 1)

end A164683

/-! ## A164683.P16997925242096688589

`∏[ceil(exp(and(1, n))²)]`
-/

namespace A164683.P16997925242096688589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.exp (Nat.land 1 n : ℝ) ^ 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A164683.P16997925242096688589

namespace A164683

/-- `∏[ceil(exp(and(1, n))²)]` -/
def P16997925242096688589.Spec : Prop :=
  ∀ n, P16997925242096688589.a n = A164683 (n + 1)

end A164683

/-! ## A164683.P9003848121170034469

`∏[gcd(2, n+1)^3]`
-/

namespace A164683.P9003848121170034469
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 (n + 1) ^ 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A164683.P9003848121170034469

namespace A164683

/-- `∏[gcd(2, n+1)^3]` -/
def P9003848121170034469.Spec : Prop :=
  ∀ n, (P9003848121170034469.a n : ℤ) = A164683 (n + 1)

end A164683

/-! ## A164683.P8947774537463477360

`∏[9-a(n-1)]` with `a(0)=1`
-/

namespace A164683.P8947774537463477360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  9 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A164683.P8947774537463477360

namespace A164683

/-- `∏[9-a(n-1)]` -/
def P8947774537463477360.Spec : Prop :=
  ∀ n, P8947774537463477360.a n = A164683 (n + 1)

end A164683

/-! ## A164683.P9320146020877948283

`∏[ceil(exp((2*n)%4))]`
-/

namespace A164683.P9320146020877948283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.exp ((2 * n % 4 : ℕ) : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A164683.P9320146020877948283

namespace A164683

/-- `∏[ceil(exp((2*n)%4))]` -/
def P9320146020877948283.Spec : Prop :=
  ∀ n, P9320146020877948283.a n = A164683 (n + 1)

end A164683

/-! ## A164683.P9702054903323906408

`∏[ceil(exp(2*and(1, n)))]`
-/

namespace A164683.P9702054903323906408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.exp (2 * Nat.land 1 n : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A164683.P9702054903323906408

namespace A164683

/-- `∏[ceil(exp(2*and(1, n)))]` -/
def P9702054903323906408.Spec : Prop :=
  ∀ n, P9702054903323906408.a n = A164683 (n + 1)

end A164683

/-! ## A164683.P11945498911031301973

`∏[dr(dr(2^n)^3)]`
-/

namespace A164683.P11945498911031301973
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (SequenceMachineLib.digitalRoot (2 ^ n : ℤ) ^ 3 : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A164683.P11945498911031301973

namespace A164683

/-- `∏[dr(dr(2^n)^3)]` -/
def P11945498911031301973.Spec : Prop :=
  ∀ n, (P11945498911031301973.a n : ℤ) = A164683 (n + 1)

end A164683

/-! ## A164683.P13656940689233038438

`∏[(4/gcd(4, 2*n))^3]`
-/

namespace A164683.P13656940689233038438
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 / (Nat.gcd 4 (2 * n) : ℚ)) ^ 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A164683.P13656940689233038438

namespace A164683

/-- `∏[(4/gcd(4, 2*n))^3]` -/
def P13656940689233038438.Spec : Prop :=
  ∀ n, P13656940689233038438.a n = (A164683 (n + 1) : ℚ)

end A164683

/-! ## A164683.P2257308457078617825

`∏[(3-gcd(n, n-2))^3]`
-/

namespace A164683.P2257308457078617825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 - (Int.gcd (n : ℤ) ((n : ℤ) - 2) : ℤ)) ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A164683.P2257308457078617825

namespace A164683

/-- `∏[(3-gcd(n, n-2))^3]` -/
def P2257308457078617825.Spec : Prop :=
  ∀ n, P2257308457078617825.a n = A164683 (n + 1)

end A164683

/-! ## A164683.P483762529977110336

`∏[(or(1, 1-n)+n)^3]`
-/

namespace A164683.P483762529977110336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.lor 1 (1 - (n : ℤ)) + (n : ℤ)) ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A164683.P483762529977110336

namespace A164683

/-- `∏[(or(1, 1-n)+n)^3]` -/
def P483762529977110336.Spec : Prop :=
  ∀ n, P483762529977110336.a n = A164683 (n + 1)

end A164683

/-! ## A164683.P2425895121730473601

`∏[(n-or(1, n-2))^3]`
-/

namespace A164683.P2425895121730473601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - Int.lor 1 ((n : ℤ) - 2)) ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A164683.P2425895121730473601

namespace A164683

/-- `∏[(n-or(1, n-2))^3]` -/
def P2425895121730473601.Spec : Prop :=
  ∀ n, P2425895121730473601.a n = A164683 (n + 1)

end A164683

/-! ## A164683.P3816921892882098011

`∏[-or(n+1, -2)^3]`
-/

namespace A164683.P3816921892882098011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(Int.lor (n + 1 : ℤ) (-2) ^ 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A164683.P3816921892882098011

namespace A164683

/-- `∏[-or(n+1, -2)^3]` -/
def P3816921892882098011.Spec : Prop :=
  ∀ n, P3816921892882098011.a n = A164683 (n + 1)

end A164683

/-! ## A164683.P16986973095825284226

`floor(2^∑[3-a(n-1)])` with `a(0)=0`
-/

namespace A164683.P16986973095825284226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  3 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 : ℚ) ^ (∑ j ∈ Finset.range (n + 1), f1 j : ℤ)⌋

end

end A164683.P16986973095825284226

namespace A164683

/-- `floor(2^∑[3-a(n-1)])` -/
def P16986973095825284226.Spec : Prop :=
  ∀ n, P16986973095825284226.a n = A164683 (n + 1)

end A164683

/-!
# A164685: Number of reduced words of length n in Coxeter group on 41 generators S_i with relations (S_i)^2 = (S_i S_j)^7 = I.

The programs for A164685, there is no canonical definition to state claims against.
-/

/-! ## A164685.P3017872946900051800

`40*a(n-A000120(4^n))` with `a(0)=1, a(1)=41`
-/

namespace A164685.P3017872946900051800
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 41] fun n a =>
  40 * a ((n : ℤ) - A000120 (4 ^ n)).toNat

end

end A164685.P3017872946900051800

/-! ## A164685.P5497241790994293777

`lcm(∏{e}[5^n+9^n-1, 2^(n-1)/#], A166225(n))`
-/

namespace A164685.P5497241790994293777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 ^ n + 9 ^ n : ℤ) - 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (SequenceMachineLib.roundAway (∏ p ∈ Nat.primeFactors (f1 n).natAbs, (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) / (Nat.factorization (f1 n).natAbs p : ℚ))) (A166225 n)

end

end A164685.P5497241790994293777

/-! ## A164685.P12814367843089827665

`A165173(A004868(n+1))`
-/

namespace A164685.P12814367843089827665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165173 (A004868 (n + 1)).toNat

end

end A164685.P12814367843089827665

/-!
# A164687: Number of reduced words of length n in Coxeter group on 43 generators S_i with relations (S_i)^2 = (S_i S_j)^7 = I.

The programs for A164687, there is no canonical definition to state claims against.
-/

/-! ## A164687.P9317140473233971109

`A166233(A073788(n))`
-/

namespace A164687.P9317140473233971109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166233 (A073788 n).toNat

end

end A164687.P9317140473233971109

/-! ## A164687.P16034223606616672313

`A165175(A004868(n+1))`
-/

namespace A164687.P16034223606616672313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165175 (A004868 (n + 1)).toNat

end

end A164687.P16034223606616672313

/-! ## A164687.P7892619296973405704

`A165175(n*A173779(n))`
-/

namespace A164687.P7892619296973405704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165175 ((n : ℤ) * A173779 n).toNat

end

end A164687.P7892619296973405704

/-!
# A164689: If p and q are (odd) twin primes and q > p then p*q^2+(p+q)+1 is divisible by 3; a(n) = (p*q^2+(p+q)+1)/3.

The programs for A164689, the canonical program `A164689.P12481967724689153304` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164689 has offset 1).

The definition of A164689 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A151990, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A164689.P12481967724689153304

`2*A151990(n+1)`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A164689

/-- `2*A151990(n+1)` -/
def P12481967724689153304.Spec : Prop :=
  ∀ n, P12481967724689153304.a n = A164689 (n + 1)

theorem P12481967724689153304.correct : P12481967724689153304.Spec := by
  intro n
  simp only [A164689, Nat.add_sub_cancel]

end A164689

/-! ## A164689.P3131397060989322731

`4*A151990(Δ[n²]-n)/2`
-/

namespace A164689.P3131397060989322731
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  4 * ((A151990 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat : ℚ) / 2)

end

end A164689.P3131397060989322731

namespace A164689

/-- `4*A151990(Δ[n²]-n)/2` -/
def P3131397060989322731.Spec : Prop :=
  ∀ n, P3131397060989322731.a n = (A164689 (n + 1) : ℚ)

end A164689

/-! ## A164689.P9593054204465987715

`A027444(A014574(n+1))/3`
-/

namespace A164689.P9593054204465987715
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027444 (A014574 (n + 1)).toNat : ℚ) / 3

end

end A164689.P9593054204465987715

namespace A164689

/-- `A027444(A014574(n+1))/3` -/
def P9593054204465987715.Spec : Prop :=
  ∀ n, P9593054204465987715.a n = (A164689 (n + 1) : ℚ)

end A164689

/-! ## A164689.P16083184807969442775

`2/3*A110451(A040040(n+1))`
-/

namespace A164689.P16083184807969442775
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) / 3 * (A110451 (A040040 (n + 1)).toNat : ℚ)

end

end A164689.P16083184807969442775

namespace A164689

/-- `2/3*A110451(A040040(n+1))` -/
def P16083184807969442775.Spec : Prop :=
  ∀ n, P16083184807969442775.a n = (A164689 (n + 1) : ℚ)

end A164689

/-! ## A164689.P1225896213479958190

`A151990(n+1)+A151990(Δ[n²]-n)`
-/

namespace A164689.P1225896213479958190
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151990 (n + 1) + A151990 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat

end

end A164689.P1225896213479958190

namespace A164689

/-- `A151990(n+1)+A151990(Δ[n²]-n)` -/
def P1225896213479958190.Spec : Prop :=
  ∀ n, P1225896213479958190.a n = A164689 (n + 1)

end A164689

/-!
# A164694: Number of reduced words of length n in Coxeter group on 49 generators S_i with relations (S_i)^2 = (S_i S_j)^7 = I.

The programs for A164694, there is no canonical definition to state claims against.
-/

/-! ## A164694.P5158611177181358927

`A166324(n)%(9^2^n)`
-/

namespace A164694.P5158611177181358927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A166324 n) (9 ^ 2 ^ n : ℤ)

end

end A164694.P5158611177181358927

/-! ## A164694.P9584577735102769182

`A165709(n*a(comp[2*n+7]-n))` with `a(0)=1`
-/

namespace A164694.P9584577735102769182
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 7

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A165709 ((n : ℤ) * a (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n - n)).toNat

end

end A164694.P9584577735102769182

/-! ## A164694.P3631880953169455

`A165181(A058832(n)+n)`
-/

namespace A164694.P3631880953169455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165181 (A058832 n + (n : ℤ)).toNat

end

end A164694.P3631880953169455

/-!
# A164696: Number of reduced words of length n in Coxeter group on 3 generators S_i with relations (S_i)^2 = (S_i S_j)^8 = I.

The programs for A164696, there is no canonical definition to state claims against.
-/

/-! ## A164696.P1354054716265190351

`A007609(C(2^n, ∑{digits}[n, 10^#]%9))`
-/

namespace A164696.P1354054716265190351
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007609 (Nat.choose (2 ^ n) (((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => 10 ^ x).sum % 9))

end

end A164696.P1354054716265190351

/-! ## A164696.P9996529469940727672

`A007609(A103662(n))`
-/

namespace A164696.P9996529469940727672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007609 (A103662 n).toNat

end

end A164696.P9996529469940727672

/-! ## A164696.P6612215270733006071

`A007609(2^A002998(n))`
-/

namespace A164696.P6612215270733006071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007609 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A002998 n : ℤ))).toNat

end

end A164696.P6612215270733006071

/-! ## A164696.P16753056253953128562

`A007609(2^A023106(n))`
-/

namespace A164696.P16753056253953128562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007609 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A023106 n : ℤ))).toNat

end

end A164696.P16753056253953128562

/-! ## A164696.P4891211065675549123

`A007609(A000079(n*A324160(n)))`
-/

namespace A164696.P4891211065675549123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007609 (A000079 ((n : ℤ) * A324160 n).toNat).toNat

end

end A164696.P4891211065675549123

/-!
# A164697: Number of reduced words of length n in Coxeter group on 4 generators S_i with relations (S_i)^2 = (S_i S_j)^8 = I.

The programs for A164697, there is no canonical definition to state claims against.
-/

/-! ## A164697.P13561443216082690514

`floor(4*3^(n-1))-A036627(A036631(n))`
-/

namespace A164697.P13561443216082690514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊4 * (3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋ - A036627 (A036631 n).toNat

end

end A164697.P13561443216082690514

/-! ## A164697.P6997701286447272627

`floor(4*3^(n-1))-A036627(A036638(n))`
-/

namespace A164697.P6997701286447272627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊4 * (3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋ - A036627 (A036638 n).toNat

end

end A164697.P6997701286447272627

/-! ## A164697.P17131701723278592461

`floor(4*3^(n-1))-A036627(A036645(n))`
-/

namespace A164697.P17131701723278592461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊4 * (3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋ - A036627 (A036645 n).toNat

end

end A164697.P17131701723278592461

/-! ## A164697.P144938888745220689

`floor(4*3^(n-1))-A200214(A001519(n))`
-/

namespace A164697.P144938888745220689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊4 * (3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋ - A200214 (A001519 n).toNat

end

end A164697.P144938888745220689

/-! ## A164697.P5162617675522216922

`xor(floor(4*3^(n-1)), A185255(A160790(n)))`
-/

namespace A164697.P5162617675522216922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ⌊4 * (3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋ (A185255 (A160790 n).toNat)

end

end A164697.P5162617675522216922

/-!
# A164698: Semiprimes pq such that pq - 1 divides p^2 + q^2 + 2.

The programs for A164698, there is no canonical definition to state claims against.
-/

/-! ## A164698.P3520679852008699316

`A245095(A262078(2*(n+2)))+A001844(n+1)`
-/

namespace A164698.P3520679852008699316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245095 (A262078 (2 * (n + 2))).toNat + A001844 (n + 1)

end

end A164698.P3520679852008699316

