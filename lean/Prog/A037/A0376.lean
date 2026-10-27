import SequenceMachineLib.Basic
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
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C037
import Seq.B000.C039
import Seq.B000.C040
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C005
import Seq.B001.C007
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B003.C000
import Seq.B003.C001
import Seq.Opaque.C000
import Seq.Opaque.C001
import Seq.Opaque.C002
import Seq.Opaque.C005
import Seq.Opaque.C007
import Seq.Opaque.C009
import Seq.Opaque.C013
import Seq.Opaque.C018

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A037600: Base 7 digits are, in order, the first n terms of the periodic sequence with initial period 1,3,0.

The programs for A037600, the canonical program `A037600.P10646715206021842611` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037600 has offset 1).

The definition of A037600 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 119 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A037600.P5867553060193500864

`ogf((1+3x)/(1-7x-x^3+7x^4))`
-/

namespace A037600.P5867553060193500864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 3] [1, -7, 0, -1, 7] n

end

end A037600.P5867553060193500864

namespace A037600

/-- `ogf((1+3x)/(1-7x-x^3+7x^4))` -/
def P5867553060193500864.Spec : Prop :=
  ∀ n, P5867553060193500864.a n = A037600 (n + 1)

end A037600

/-! ## A037600.P10646715206021842611

`A037508(n+1)+A037532(n+1)-A037500(n+1)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A037600

/-- `A037508(n+1)+A037532(n+1)-A037500(n+1)` -/
def P10646715206021842611.Spec : Prop :=
  ∀ n, P10646715206021842611.a n = A037600 (n + 1)

theorem P10646715206021842611.correct : P10646715206021842611.Spec := by
  intro n
  simp only [A037600, Nat.add_sub_cancel]

end A037600

/-! ## A037600.P16272862414469340948

`A037540(n+1)+A037540(n+1)-A037532(n+1)`
-/

namespace A037600.P16272862414469340948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037540 (n + 1) + (A037540 (n + 1) - A037532 (n + 1))

end

end A037600.P16272862414469340948

namespace A037600

/-- `A037540(n+1)+A037540(n+1)-A037532(n+1)` -/
def P16272862414469340948.Spec : Prop :=
  ∀ n, P16272862414469340948.a n = A037600 (n + 1)

end A037600

/-! ## A037600.P7394824239476674563

`∑[ceil(A037642(n+1)/2)]`
-/

namespace A037600.P7394824239476674563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A037642 (n + 1) : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037600.P7394824239476674563

namespace A037600

/-- `∑[ceil(A037642(n+1)/2)]` -/
def P7394824239476674563.Spec : Prop :=
  ∀ n, P7394824239476674563.a n = A037600 (n + 1)

end A037600

/-! ## A037600.P10541606550054139173

`∑[7*a(n-1)]-A037621(n+1)` with `a(0)=3`
-/

namespace A037600.P10541606550054139173
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3] fun n f1 =>
  7 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A037621 (n + 1)

end

end A037600.P10541606550054139173

namespace A037600

/-- `∑[7*a(n-1)]-A037621(n+1)` -/
def P10541606550054139173.Spec : Prop :=
  ∀ n, P10541606550054139173.a n = A037600 (n + 1)

end A037600

/-! ## A037600.P17212663205602885751

`A037642(n+1)-A033125(n+1)`
-/

namespace A037600.P17212663205602885751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037642 (n + 1) - A033125 (n + 1)

end

end A037600.P17212663205602885751

namespace A037600

/-- `A037642(n+1)-A033125(n+1)` -/
def P17212663205602885751.Spec : Prop :=
  ∀ n, P17212663205602885751.a n = A037600 (n + 1)

end A037600

/-! ## A037600.P2288907725542734723

`A120741(n+1)-A037621(n+1)`
-/

namespace A037600.P2288907725542734723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120741 (n + 1) - A037621 (n + 1)

end

end A037600.P2288907725542734723

namespace A037600

/-- `A120741(n+1)-A037621(n+1)` -/
def P2288907725542734723.Spec : Prop :=
  ∀ n, P2288907725542734723.a n = A037600 (n + 1)

end A037600

/-! ## A037600.P17818127813666491063

`2*A037540(n+1)-A037532(n+1)`
-/

namespace A037600.P17818127813666491063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A037540 (n + 1) - A037532 (n + 1)

end

end A037600.P17818127813666491063

namespace A037600

/-- `2*A037540(n+1)-A037532(n+1)` -/
def P17818127813666491063.Spec : Prop :=
  ∀ n, P17818127813666491063.a n = A037600 (n + 1)

end A037600

/-! ## A037600.P9682850590362946270

`(7*A033134(n+1))%A037670(n+1)`
-/

namespace A037600.P9682850590362946270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (7 * A033134 (n + 1)) (A037670 (n + 1))

end

end A037600.P9682850590362946270

namespace A037600

/-- `(7*A033134(n+1))%A037670(n+1)` -/
def P9682850590362946270.Spec : Prop :=
  ∀ n, P9682850590362946270.a n = A037600 (n + 1)

end A037600

/-! ## A037600.P12355690054501940808

`Δ[∑[A037532(n+1)]-A033134(n+1)]`
-/

namespace A037600.P12355690054501940808
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037532 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A033134 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A037600.P12355690054501940808

namespace A037600

/-- `Δ[∑[A037532(n+1)]-A033134(n+1)]` -/
def P12355690054501940808.Spec : Prop :=
  ∀ n, P12355690054501940808.a n = A037600 (n + 1)

end A037600

/-! ## A037600.P2515731129620672267

`A037532(n+1)+A037642(n+1)-A037635(n+1)`
-/

namespace A037600.P2515731129620672267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037532 (n + 1) + (A037642 (n + 1) - A037635 (n + 1))

end

end A037600.P2515731129620672267

namespace A037600

/-- `A037532(n+1)+A037642(n+1)-A037635(n+1)` -/
def P2515731129620672267.Spec : Prop :=
  ∀ n, P2515731129620672267.a n = A037600 (n + 1)

end A037600

/-! ## A037600.P2588818157226231342

`A037593(n+1)+A037628(n+1)-A037621(n+1)`
-/

namespace A037600.P2588818157226231342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037593 (n + 1) + (A037628 (n + 1) - A037621 (n + 1))

end

end A037600.P2588818157226231342

namespace A037600

/-- `A037593(n+1)+A037628(n+1)-A037621(n+1)` -/
def P2588818157226231342.Spec : Prop :=
  ∀ n, P2588818157226231342.a n = A037600 (n + 1)

end A037600

/-! ## A037600.P16293437736424033427

`A033134(n+1)+A037670(n+1)%A033143(n+1)`
-/

namespace A037600.P16293437736424033427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033134 (n + 1) + Int.tmod (A037670 (n + 1)) (A033143 (n + 1))

end

end A037600.P16293437736424033427

namespace A037600

/-- `A033134(n+1)+A037670(n+1)%A033143(n+1)` -/
def P16293437736424033427.Spec : Prop :=
  ∀ n, P16293437736424033427.a n = A037600 (n + 1)

end A037600

/-! ## A037600.P15946463507023492665

`A037540(n+1)+Δ[A037548(n+1)-A037540(n+1)]`
-/

namespace A037600.P15946463507023492665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037548 (n + 1) - A037540 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037540 (n + 1) + (f1 (n + 1) - f1 n)

end

end A037600.P15946463507023492665

namespace A037600

/-- `A037540(n+1)+Δ[A037548(n+1)-A037540(n+1)]` -/
def P15946463507023492665.Spec : Prop :=
  ∀ n, P15946463507023492665.a n = A037600 (n + 1)

end A037600

/-! ## A037600.P12933404621304919628

`2*A037532(n+2)-A037556(n+2)`
-/

namespace A037600.P12933404621304919628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A037532 (n + 2) - A037556 (n + 2)

end

end A037600.P12933404621304919628

namespace A037600

/-- `2*A037532(n+2)-A037556(n+2)` -/
def P12933404621304919628.Spec : Prop :=
  ∀ n, P12933404621304919628.a n = A037600 (n + 1)

end A037600

/-! ## A037600.P6560967070916675355

`Δ[∑[A037649(n+1)]-A037670(n+1)]`
-/

namespace A037600.P6560967070916675355
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037649 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A037670 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A037600.P6560967070916675355

namespace A037600

/-- `Δ[∑[A037649(n+1)]-A037670(n+1)]` -/
def P6560967070916675355.Spec : Prop :=
  ∀ n, P6560967070916675355.a n = A037600 (n + 1)

end A037600

/-! ## A037600.P9222940050601937301

`A037532(n+2)+A037548(n+2)-A037564(n+2)`
-/

namespace A037600.P9222940050601937301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037532 (n + 2) + (A037548 (n + 2) - A037564 (n + 2))

end

end A037600.P9222940050601937301

namespace A037600

/-- `A037532(n+2)+A037548(n+2)-A037564(n+2)` -/
def P9222940050601937301.Spec : Prop :=
  ∀ n, P9222940050601937301.a n = A037600 (n + 1)

end A037600

/-!
# A037601: Base 8 digits are, in order, the first n terms of the periodic sequence with initial period 1,3,0.

The programs for A037601, the canonical program `A037601.P478568719940207731` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037601 has offset 1).

The definition of A037601 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A037601.P7302128715342705990

`ogf((1+3x)/(1-8x-x^3+8x^4))`
-/

namespace A037601.P7302128715342705990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 3] [1, -8, 0, -1, 8] n

end

end A037601.P7302128715342705990

namespace A037601

/-- `ogf((1+3x)/(1-8x-x^3+8x^4))` -/
def P7302128715342705990.Spec : Prop :=
  ∀ n, P7302128715342705990.a n = A037601 (n + 1)

end A037601

/-! ## A037601.P478568719940207731

`xor(2, 8*a(n-1)-(1-n)%3+1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A037601

/-- `xor(2, 8*a(n-1)-(1-n)%3+1)` -/
def P478568719940207731.Spec : Prop :=
  ∀ n, P478568719940207731.a n = A037601 (n + 1)

theorem P478568719940207731.correct : P478568719940207731.Spec := by
  intro n
  simp only [A037601, Nat.add_sub_cancel]

end A037601

/-! ## A037601.P17618282859788812266

`xor(a(n-1), A037608(n+1))` with `a(0)=1`
-/

namespace A037601.P17618282859788812266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.xor (a (n - 1)) (A037608 (n + 1))

end

end A037601.P17618282859788812266

namespace A037601

/-- `xor(a(n-1), A037608(n+1))` -/
def P17618282859788812266.Spec : Prop :=
  ∀ n, P17618282859788812266.a n = A037601 (n + 1)

end A037601

/-! ## A037601.P11902132020642357118

`A037643(n+1)-A033126(n+1)`
-/

namespace A037601.P11902132020642357118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037643 (n + 1) - A033126 (n + 1)

end

end A037601.P11902132020642357118

namespace A037601

/-- `A037643(n+1)-A033126(n+1)` -/
def P11902132020642357118.Spec : Prop :=
  ∀ n, P11902132020642357118.a n = A037601 (n + 1)

end A037601

/-! ## A037601.P2757643164846074054

`or(A033135(n+1), A037509(n+1))`
-/

namespace A037601.P2757643164846074054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A033135 (n + 1)) (A037509 (n + 1))

end

end A037601.P2757643164846074054

namespace A037601

/-- `or(A033135(n+1), A037509(n+1))` -/
def P2757643164846074054.Spec : Prop :=
  ∀ n, P2757643164846074054.a n = A037601 (n + 1)

end A037601

/-! ## A037601.P14296706138655247553

`xor(A037643(n+1), A037650(n+1))`
-/

namespace A037601.P14296706138655247553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A037643 (n + 1)) (A037650 (n + 1))

end

end A037601.P14296706138655247553

namespace A037601

/-- `xor(A037643(n+1), A037650(n+1))` -/
def P14296706138655247553.Spec : Prop :=
  ∀ n, P14296706138655247553.a n = A037601 (n + 1)

end A037601

/-! ## A037601.P16701276856730770599

`2*A037541(n+1)-A037533(n+1)`
-/

namespace A037601.P16701276856730770599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A037541 (n + 1) - A037533 (n + 1)

end

end A037601.P16701276856730770599

namespace A037601

/-- `2*A037541(n+1)-A037533(n+1)` -/
def P16701276856730770599.Spec : Prop :=
  ∀ n, P16701276856730770599.a n = A037601 (n + 1)

end A037601

/-! ## A037601.P12976664649859899022

`and(A037622(n+1)+A037615(n+1), A037615(n+1))`
-/

namespace A037601.P12976664649859899022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A037622 (n + 1) + A037615 (n + 1)) (A037615 (n + 1))

end

end A037601.P12976664649859899022

namespace A037601

/-- `and(A037622(n+1)+A037615(n+1), A037615(n+1))` -/
def P12976664649859899022.Spec : Prop :=
  ∀ n, P12976664649859899022.a n = A037601 (n + 1)

end A037601

/-! ## A037601.P18265447093700253490

`xor(A037525(n+1)+A033135(n+1), A037525(n+1))`
-/

namespace A037601.P18265447093700253490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A037525 (n + 1) + A033135 (n + 1)) (A037525 (n + 1))

end

end A037601.P18265447093700253490

namespace A037601

/-- `xor(A037525(n+1)+A033135(n+1), A037525(n+1))` -/
def P18265447093700253490.Spec : Prop :=
  ∀ n, P18265447093700253490.a n = A037601 (n + 1)

end A037601

/-! ## A037601.P14649621095545972602

`xor(A037557(n+1)+A033135(n+1), A037557(n+1))`
-/

namespace A037601.P14649621095545972602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A037557 (n + 1) + A033135 (n + 1)) (A037557 (n + 1))

end

end A037601.P14649621095545972602

namespace A037601

/-- `xor(A037557(n+1)+A033135(n+1), A037557(n+1))` -/
def P14649621095545972602.Spec : Prop :=
  ∀ n, P14649621095545972602.a n = A037601 (n + 1)

end A037601

/-! ## A037601.P4204489556039813742

`xor(A037573(n+1)+A033135(n+1), A037573(n+1))`
-/

namespace A037601.P4204489556039813742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A037573 (n + 1) + A033135 (n + 1)) (A037573 (n + 1))

end

end A037601.P4204489556039813742

namespace A037601

/-- `xor(A037573(n+1)+A033135(n+1), A037573(n+1))` -/
def P4204489556039813742.Spec : Prop :=
  ∀ n, P4204489556039813742.a n = A037601 (n + 1)

end A037601

/-! ## A037601.P4756015314615752120

`xor(A037636(n+1)+A033135(n+1), A037636(n+1))`
-/

namespace A037601.P4756015314615752120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A037636 (n + 1) + A033135 (n + 1)) (A037636 (n + 1))

end

end A037601.P4756015314615752120

namespace A037601

/-- `xor(A037636(n+1)+A033135(n+1), A037636(n+1))` -/
def P4756015314615752120.Spec : Prop :=
  ∀ n, P4756015314615752120.a n = A037601 (n + 1)

end A037601

/-! ## A037601.P18250112823949251232

`xor(A037541(n+1)-A033135(n+1), A037541(n+1))`
-/

namespace A037601.P18250112823949251232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A037541 (n + 1) - A033135 (n + 1)) (A037541 (n + 1))

end

end A037601.P18250112823949251232

namespace A037601

/-- `xor(A037541(n+1)-A033135(n+1), A037541(n+1))` -/
def P18250112823949251232.Spec : Prop :=
  ∀ n, P18250112823949251232.a n = A037601 (n + 1)

end A037601

/-! ## A037601.P17300923583079581139

`A037541(n+2)-Δ[A037509(n+1)]`
-/

namespace A037601.P17300923583079581139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037509 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037541 (n + 2) - (f1 (n + 1) - f1 n)

end

end A037601.P17300923583079581139

namespace A037601

/-- `A037541(n+2)-Δ[A037509(n+1)]` -/
def P17300923583079581139.Spec : Prop :=
  ∀ n, P17300923583079581139.a n = A037601 (n + 1)

end A037601

/-! ## A037601.P10304122164867762442

`xor(A037525(n+2)+A037501(n+2), A037650(n+2))`
-/

namespace A037601.P10304122164867762442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A037525 (n + 2) + A037501 (n + 2)) (A037650 (n + 2))

end

end A037601.P10304122164867762442

namespace A037601

/-- `xor(A037525(n+2)+A037501(n+2), A037650(n+2))` -/
def P10304122164867762442.Spec : Prop :=
  ∀ n, P10304122164867762442.a n = A037601 (n + 1)

end A037601

/-! ## A037601.P17426886350340205953

`xor(A037636(n+2)-A037533(n+2), A037533(n+2))`
-/

namespace A037601.P17426886350340205953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A037636 (n + 2) - A037533 (n + 2)) (A037533 (n + 2))

end

end A037601.P17426886350340205953

namespace A037601

/-- `xor(A037636(n+2)-A037533(n+2), A037533(n+2))` -/
def P17426886350340205953.Spec : Prop :=
  ∀ n, P17426886350340205953.a n = A037601 (n + 1)

end A037601

/-! ## A037601.P10915146650210951755

`xor(A037636(n+2)-A037594(n+2), A037594(n+2))`
-/

namespace A037601.P10915146650210951755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A037636 (n + 2) - A037594 (n + 2)) (A037594 (n + 2))

end

end A037601.P10915146650210951755

namespace A037601

/-- `xor(A037636(n+2)-A037594(n+2), A037594(n+2))` -/
def P10915146650210951755.Spec : Prop :=
  ∀ n, P10915146650210951755.a n = A037601 (n + 1)

end A037601

/-!
# A037602: Base 9 digits are, in order, the first n terms of the periodic sequence with initial period 1,3,0.

The programs for A037602, the canonical program `A037602.P1337694076069998969` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037602 has offset 1).

The definition of A037602 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A037602.P2524891798090983319

`ogf((1+3x)/(1-9x-x^3+9x^4))`
-/

namespace A037602.P2524891798090983319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 3] [1, -9, 0, -1, 9] n

end

end A037602.P2524891798090983319

namespace A037602

/-- `ogf((1+3x)/(1-9x-x^3+9x^4))` -/
def P2524891798090983319.Spec : Prop :=
  ∀ n, P2524891798090983319.a n = A037602 (n + 1)

end A037602

/-! ## A037602.P8685535119800571915

`A037630(n+1)-A033145(n+1)`
-/

namespace A037602.P8685535119800571915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037630 (n + 1) - A033145 (n + 1)

end

end A037602.P8685535119800571915

namespace A037602

/-- `A037630(n+1)-A033145(n+1)` -/
def P8685535119800571915.Spec : Prop :=
  ∀ n, P8685535119800571915.a n = A037602 (n + 1)

end A037602

/-! ## A037602.P1337694076069998969

`2*A037510(n+1)-A033136(n+1)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A037602

/-- `2*A037510(n+1)-A033136(n+1)` -/
def P1337694076069998969.Spec : Prop :=
  ∀ n, P1337694076069998969.a n = A037602 (n + 1)

theorem P1337694076069998969.correct : P1337694076069998969.Spec := by
  intro n
  simp only [A037602, Nat.add_sub_cancel]

end A037602

/-! ## A037602.P15902083276156523672

`2*A037542(n+1)-A037534(n+1)`
-/

namespace A037602.P15902083276156523672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A037542 (n + 1) - A037534 (n + 1)

end

end A037602.P15902083276156523672

namespace A037602

/-- `2*A037542(n+1)-A037534(n+1)` -/
def P15902083276156523672.Spec : Prop :=
  ∀ n, P15902083276156523672.a n = A037602 (n + 1)

end A037602

/-! ## A037602.P3278292734275440602

`floor(A033139(2*n+3)/7)`
-/

namespace A037602.P3278292734275440602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A033139 (2 * n + 3) : ℚ) / 7⌋

end

end A037602.P3278292734275440602

namespace A037602

/-- `floor(A033139(2*n+3)/7)` -/
def P3278292734275440602.Spec : Prop :=
  ∀ n, P3278292734275440602.a n = A037602 (n + 1)

end A037602

/-! ## A037602.P554994820159741180

`floor(A037504(2*(n+2))/35)`
-/

namespace A037602.P554994820159741180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A037504 (2 * (n + 2)) : ℚ) / 35⌋

end

end A037602.P554994820159741180

namespace A037602

/-- `floor(A037504(2*(n+2))/35)` -/
def P554994820159741180.Spec : Prop :=
  ∀ n, P554994820159741180.a n = A037602 (n + 1)

end A037602

/-! ## A037602.P13890092336495478911

`floor(A003462(2*n+5)/91)`
-/

namespace A037602.P13890092336495478911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A003462 (2 * n + 5) : ℚ) / 91⌋

end

end A037602.P13890092336495478911

namespace A037602

/-- `floor(A003462(2*n+5)/91)` -/
def P13890092336495478911.Spec : Prop :=
  ∀ n, P13890092336495478911.a n = A037602 (n + 1)

end A037602

/-!
# A037603: Decimal expansion of a(n) is given by the first n terms of the periodic sequence with initial period 1,3,0.

The programs for A037603, the canonical program `A037603.P12367465112895483340` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037603 has offset 1).

The definition of A037603 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A037603.P9015130743921095812

`ogf((1+3x)/(1-10x-x^3+10x^4))`
-/

namespace A037603.P9015130743921095812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 3] [1, -10, 0, -1, 10] n

end

end A037603.P9015130743921095812

namespace A037603

/-- `ogf((1+3x)/(1-10x-x^3+10x^4))` -/
def P9015130743921095812.Spec : Prop :=
  ∀ n, P9015130743921095812.a n = A037603 (n + 1)

end A037603

/-! ## A037603.P12367465112895483340

`2*A037511(n)-A033137(n)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A037603

/-- `2*A037511(n)-A033137(n)` -/
def P12367465112895483340.Spec : Prop :=
  ∀ n, P12367465112895483340.a n = A037603 (n + 1)

theorem P12367465112895483340.correct : P12367465112895483340.Spec := by
  intro n
  simp only [A037603, Nat.add_sub_cancel]

end A037603

/-! ## A037603.P13777542925963033593

`A007284(A037505(n+1))`
-/

namespace A037603.P13777542925963033593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007284 (A037505 (n + 1)).toNat

end

end A037603.P13777542925963033593

namespace A037603

/-- `A007284(A037505(n+1))` -/
def P13777542925963033593.Spec : Prop :=
  ∀ n, P13777542925963033593.a n = A037603 (n + 1)

end A037603

/-!
# A037604: Base-4 digits are, in order, the first n terms of the periodic sequence with initial period 1,2,3.

The programs for A037604, the canonical program `A037604.P9552812687882311232` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037604 has offset 1).

The definition of A037604 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A037604.anchor (n : ℕ) (hn : 1 ≤ n) : A037604 n = ((Nat.ofDigits 4 ((List.range n).reverse.map fun i => [1, 2, 3].getD (i % 3) 0) : ℕ) : ℤ)` in `Proof.A037.A037604`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A037604.P9552812687882311232

`4*a(n-1)+a(n-3)-4*a(n-4)` with `a(0)=1, a(1)=6, a(2)=27, a(3)=109`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A037604

/-- `4*a(n-1)+a(n-3)-4*a(n-4)` -/
def P9552812687882311232.Spec : Prop :=
  ∀ n, P9552812687882311232.a n = A037604 (n + 1)

theorem P9552812687882311232.correct : P9552812687882311232.Spec := by
  intro n
  simp only [A037604, Nat.add_sub_cancel]

end A037604

/-! ## A037604.P581481029338645308

`floor(3*4^(n+1)/7)`
-/

namespace A037604.P581481029338645308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(3 * 4 ^ (n + 1) : ℚ) / 7⌋

end

end A037604.P581481029338645308

namespace A037604

/-- `floor(3*4^(n+1)/7)` -/
def P581481029338645308.Spec : Prop :=
  ∀ n, P581481029338645308.a n = A037604 (n + 1)

end A037604

/-! ## A037604.P18041685187581262141

`ogf((1+2x+3x^2)/(1-4x-x^3+4x^4))`
-/

namespace A037604.P18041685187581262141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, 3] [1, -4, 0, -1, 4] n

end

end A037604.P18041685187581262141

namespace A037604

/-- `ogf((1+2x+3x^2)/(1-4x-x^3+4x^4))` -/
def P18041685187581262141.Spec : Prop :=
  ∀ n, P18041685187581262141.a n = A037604 (n + 1)

end A037604

/-! ## A037604.P2295480575670447270

`4*a(n-1)+n%3+1` with `a(0)=1`
-/

namespace A037604.P2295480575670447270
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  4 * a (n - 1) + (n % 3 + 1)

end

end A037604.P2295480575670447270

namespace A037604

/-- `4*a(n-1)+n%3+1` -/
def P2295480575670447270.Spec : Prop :=
  ∀ n, (P2295480575670447270.a n : ℤ) = A037604 (n + 1)

end A037604

/-! ## A037604.P8366395092648511267

`A033129(Δ[n²])`
-/

namespace A037604.P8366395092648511267
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033129 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A037604.P8366395092648511267

namespace A037604

/-- `A033129(Δ[n²])` -/
def P8366395092648511267.Spec : Prop :=
  ∀ n, P8366395092648511267.a n = A037604 (n + 1)

end A037604

/-! ## A037604.P4080076922472475611

`Δ[A178455(Δ[n²])]`
-/

namespace A037604.P4080076922472475611
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178455 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A037604.P4080076922472475611

namespace A037604

/-- `Δ[A178455(Δ[n²])]` -/
def P4080076922472475611.Spec : Prop :=
  ∀ n, P4080076922472475611.a n = A037604 (n + 1)

end A037604

/-! ## A037604.P11057370844511313939

`A003143(4*n+1)`
-/

namespace A037604.P11057370844511313939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003143 (4 * n + 1)

end

end A037604.P11057370844511313939

namespace A037604

/-- `A003143(4*n+1)` -/
def P11057370844511313939.Spec : Prop :=
  ∀ n, P11057370844511313939.a n = A037604 (n + 1)

end A037604

/-! ## A037604.P7312128288844794372

`A057744(Δ[n²])-1`
-/

namespace A037604.P7312128288844794372
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057744 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - 1

end

end A037604.P7312128288844794372

namespace A037604

/-- `A057744(Δ[n²])-1` -/
def P7312128288844794372.Spec : Prop :=
  ∀ n, P7312128288844794372.a n = A037604 (n + 1)

end A037604

/-! ## A037604.P18276222978371755859

`abs(Δ[A178455(2*n+1)])`
-/

namespace A037604.P18276222978371755859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178455 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A037604.P18276222978371755859

namespace A037604

/-- `abs(Δ[A178455(2*n+1)])` -/
def P18276222978371755859.Spec : Prop :=
  ∀ n, P18276222978371755859.a n = A037604 (n + 1)

end A037604

/-! ## A037604.P8376582912512590422

`record[A078043(n)+A033129(n)]`
-/

namespace A037604.P8376582912512590422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078043 n + A033129 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A037604.P8376582912512590422

namespace A037604

/-- `record[A078043(n)+A033129(n)]` -/
def P8376582912512590422.Spec : Prop :=
  ∀ n, P8376582912512590422.a n = A037604 (n + 1)

end A037604

/-! ## A037604.P14022637727732497184

`A037611(n+1)-A178872(n)`
-/

namespace A037604.P14022637727732497184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037611 (n + 1) - A178872 n

end

end A037604.P14022637727732497184

namespace A037604

/-- `A037611(n+1)-A178872(n)` -/
def P14022637727732497184.Spec : Prop :=
  ∀ n, P14022637727732497184.a n = A037604 (n + 1)

end A037604

/-! ## A037604.P14950930617501038923

`xor(A002450(n), A378502(n+1))`
-/

namespace A037604.P14950930617501038923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A002450 n) (A378502 (n + 1))

end

end A037604.P14950930617501038923

namespace A037604

/-- `xor(A002450(n), A378502(n+1))` -/
def P14950930617501038923.Spec : Prop :=
  ∀ n, P14950930617501038923.a n = A037604 (n + 1)

end A037604

/-! ## A037604.P16595444932849713530

`A033131(n+1)+∑[A191597(n)]`
-/

namespace A037604.P16595444932849713530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191597 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033131 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037604.P16595444932849713530

namespace A037604

/-- `A033131(n+1)+∑[A191597(n)]` -/
def P16595444932849713530.Spec : Prop :=
  ∀ n, P16595444932849713530.a n = A037604 (n + 1)

end A037604

/-! ## A037604.P16935189476825106225

`A078043(2*n)+A033129(2*n)`
-/

namespace A037604.P16935189476825106225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078043 (2 * n) + A033129 (2 * n)

end

end A037604.P16935189476825106225

namespace A037604

/-- `A078043(2*n)+A033129(2*n)` -/
def P16935189476825106225.Spec : Prop :=
  ∀ n, P16935189476825106225.a n = A037604 (n + 1)

end A037604

/-! ## A037604.P10419054421514901069

`xor(A037561(n+1), A037653(n+1))`
-/

namespace A037604.P10419054421514901069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A037561 (n + 1)) (A037653 (n + 1))

end

end A037604.P10419054421514901069

namespace A037604

/-- `xor(A037561(n+1), A037653(n+1))` -/
def P10419054421514901069.Spec : Prop :=
  ∀ n, P10419054421514901069.a n = A037604 (n + 1)

end A037604

/-! ## A037604.P12714576769342144928

`xor(A037618(n+1), A037667(n+1))`
-/

namespace A037604.P12714576769342144928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A037618 (n + 1)) (A037667 (n + 1))

end

end A037604.P12714576769342144928

namespace A037604

/-- `xor(A037618(n+1), A037667(n+1))` -/
def P12714576769342144928.Spec : Prop :=
  ∀ n, P12714576769342144928.a n = A037604 (n + 1)

end A037604

/-! ## A037604.P14019917773420865491

`A037590(n+1)+∑[2*A178872(n)]`
-/

namespace A037604.P14019917773420865491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A178872 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037590 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037604.P14019917773420865491

namespace A037604

/-- `A037590(n+1)+∑[2*A178872(n)]` -/
def P14019917773420865491.Spec : Prop :=
  ∀ n, P14019917773420865491.a n = A037604 (n + 1)

end A037604

/-! ## A037604.P6606880365266335502

`2*A037529(n+1)-A033122(n+1)`
-/

namespace A037604.P6606880365266335502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A037529 (n + 1) - A033122 (n + 1)

end

end A037604.P6606880365266335502

namespace A037604

/-- `2*A037529(n+1)-A033122(n+1)` -/
def P6606880365266335502.Spec : Prop :=
  ∀ n, P6606880365266335502.a n = A037604 (n + 1)

end A037604

/-! ## A037604.P954496240923974321

`2*A037545(n+1)-A037537(n+1)`
-/

namespace A037604.P954496240923974321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A037545 (n + 1) - A037537 (n + 1)

end

end A037604.P954496240923974321

namespace A037604

/-- `2*A037545(n+1)-A037537(n+1)` -/
def P954496240923974321.Spec : Prop :=
  ∀ n, P954496240923974321.a n = A037604 (n + 1)

end A037604

/-! ## A037604.P11237931713380266553

`A294627(2*n+1)+A033129(2*n)`
-/

namespace A037604.P11237931713380266553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294627 (2 * n + 1) + A033129 (2 * n)

end

end A037604.P11237931713380266553

namespace A037604

/-- `A294627(2*n+1)+A033129(2*n)` -/
def P11237931713380266553.Spec : Prop :=
  ∀ n, P11237931713380266553.a n = A037604 (n + 1)

end A037604

/-!
# A037605: Base 5 digits are, in order, the first n terms of the periodic sequence with initial period 1,2,3.

The programs for A037605, the canonical program `A037605.P8447811669916736584` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037605 has offset 1).

The definition of A037605 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A037605.anchor (n : ℕ) (hn : 1 ≤ n) : A037605 n = ((Nat.ofDigits 5 ((List.range n).reverse.map fun i => [1, 2, 3].getD (i % 3) 0) : ℕ) : ℤ)` in `Proof.A037.A037605`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A037605.P12776752454273628028

`ogf((1+2x+3x^2)/(1-5x-x^3+5x^4))`
-/

namespace A037605.P12776752454273628028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, 3] [1, -5, 0, -1, 5] n

end

end A037605.P12776752454273628028

namespace A037605

/-- `ogf((1+2x+3x^2)/(1-5x-x^3+5x^4))` -/
def P12776752454273628028.Spec : Prop :=
  ∀ n, P12776752454273628028.a n = A037605 (n + 1)

end A037605

/-! ## A037605.P8447811669916736584

`5*a(n-1)+n%3+1` with `a(0)=1`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A037605

/-- `5*a(n-1)+n%3+1` -/
def P8447811669916736584.Spec : Prop :=
  ∀ n, (P8447811669916736584.a n : ℤ) = A037605 (n + 1)

theorem P8447811669916736584.correct : P8447811669916736584.Spec := by
  intro n
  simp only [A037605, Nat.add_sub_cancel]

end A037605

/-! ## A037605.P8285773085851866713

`floor(A037647(n+1)/2)`
-/

namespace A037605.P8285773085851866713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A037647 (n + 1) : ℚ) / 2⌋

end

end A037605.P8285773085851866713

namespace A037605

/-- `floor(A037647(n+1)/2)` -/
def P8285773085851866713.Spec : Prop :=
  ∀ n, P8285773085851866713.a n = A037605 (n + 1)

end A037605

/-! ## A037605.P10351833902699805939

`A010882(n)+5*a(n-1)` with `a(0)=1`
-/

namespace A037605.P10351833902699805939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A010882 n + 5 * a (n - 1)

end

end A037605.P10351833902699805939

namespace A037605

/-- `A010882(n)+5*a(n-1)` -/
def P10351833902699805939.Spec : Prop :=
  ∀ n, P10351833902699805939.a n = A037605 (n + 1)

end A037605

/-! ## A037605.P7987343211049124601

`5*a(n-1)+A010872(n)+1` with `a(0)=1`
-/

namespace A037605.P7987343211049124601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  5 * a (n - 1) + (A010872 n + 1)

end

end A037605.P7987343211049124601

namespace A037605

/-- `5*a(n-1)+A010872(n)+1` -/
def P7987343211049124601.Spec : Prop :=
  ∀ n, P7987343211049124601.a n = A037605 (n + 1)

end A037605

/-! ## A037605.P14906564436460208439

`5*a(n-1)+2-A057078(n)` with `a(0)=1`
-/

namespace A037605.P14906564436460208439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  5 * a (n - 1) + (2 - A057078 n)

end

end A037605.P14906564436460208439

namespace A037605

/-- `5*a(n-1)+2-A057078(n)` -/
def P14906564436460208439.Spec : Prop :=
  ∀ n, P14906564436460208439.a n = A037605 (n + 1)

end A037605

/-! ## A037605.P1246872221296127133

`5*a(n-1)+A080425(2*n)+1` with `a(0)=1`
-/

namespace A037605.P1246872221296127133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  5 * a (n - 1) + (A080425 (2 * n) + 1)

end

end A037605.P1246872221296127133

namespace A037605

/-- `5*a(n-1)+A080425(2*n)+1` -/
def P1246872221296127133.Spec : Prop :=
  ∀ n, P1246872221296127133.a n = A037605 (n + 1)

end A037605

/-! ## A037605.P9586735023474702154

`2*A037530(n+1)-A033123(n+1)`
-/

namespace A037605.P9586735023474702154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A037530 (n + 1) - A033123 (n + 1)

end

end A037605.P9586735023474702154

namespace A037605

/-- `2*A037530(n+1)-A033123(n+1)` -/
def P9586735023474702154.Spec : Prop :=
  ∀ n, P9586735023474702154.a n = A037605 (n + 1)

end A037605

/-! ## A037605.P13396705583084030522

`∑[5*a(n-1)-A089807(n²)]` with `a(0)=1`
-/

namespace A037605.P13396705583084030522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  5 * f1 (n - 1) - A089807 (n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037605.P13396705583084030522

namespace A037605

/-- `∑[5*a(n-1)-A089807(n²)]` -/
def P13396705583084030522.Spec : Prop :=
  ∀ n, P13396705583084030522.a n = A037605 (n + 1)

end A037605

/-!
# A037606: Base 6 digits are, in order, the first n terms of the periodic sequence with initial period 1,2,3.

The programs for A037606, the canonical program `A037606.P6950765051620298847` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037606 has offset 1).

The definition of A037606 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 129 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A037606.P147895892134748151

`ogf((1+2x+3x^2)/(1-6x-x^3+6x^4))`
-/

namespace A037606.P147895892134748151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, 3] [1, -6, 0, -1, 6] n

end

end A037606.P147895892134748151

namespace A037606

/-- `ogf((1+2x+3x^2)/(1-6x-x^3+6x^4))` -/
def P147895892134748151.Spec : Prop :=
  ∀ n, P147895892134748151.a n = A037606 (n + 1)

end A037606

/-! ## A037606.P6950765051620298847

`6*a(n-1)+1--n%3` with `a(0)=1`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A037606

/-- `6*a(n-1)+1--n%3` -/
def P6950765051620298847.Spec : Prop :=
  ∀ n, P6950765051620298847.a n = A037606 (n + 1)

theorem P6950765051620298847.correct : P6950765051620298847.Spec := by
  intro n
  simp only [A037606, Nat.add_sub_cancel]

end A037606

/-! ## A037606.P12393621464177850328

`A010882(n)+6*a(n-1)` with `a(0)=1`
-/

namespace A037606.P12393621464177850328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A010882 n + 6 * a (n - 1)

end

end A037606.P12393621464177850328

namespace A037606

/-- `A010882(n)+6*a(n-1)` -/
def P12393621464177850328.Spec : Prop :=
  ∀ n, P12393621464177850328.a n = A037606 (n + 1)

end A037606

/-! ## A037606.P2405194599861575725

`∑[6*a(n-1)-A087204(2*n)]` with `a(0)=1`
-/

namespace A037606.P2405194599861575725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  6 * f1 (n - 1) - A087204 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037606.P2405194599861575725

namespace A037606

/-- `∑[6*a(n-1)-A087204(2*n)]` -/
def P2405194599861575725.Spec : Prop :=
  ∀ n, P2405194599861575725.a n = A037606 (n + 1)

end A037606

/-! ## A037606.P12352674517555835235

`∑[xor(6*a(n-1), A131534(n+1))]` with `a(0)=1`
-/

namespace A037606.P12352674517555835235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  Int.xor (6 * f1 (n - 1)) (A131534 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037606.P12352674517555835235

namespace A037606

/-- `∑[xor(6*a(n-1), A131534(n+1))]` -/
def P12352674517555835235.Spec : Prop :=
  ∀ n, P12352674517555835235.a n = A037606 (n + 1)

end A037606

/-! ## A037606.P6410602722721226880

`2*A037531(n+1)-A033124(n+1)`
-/

namespace A037606.P6410602722721226880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A037531 (n + 1) - A033124 (n + 1)

end

end A037606.P6410602722721226880

namespace A037606

/-- `2*A037531(n+1)-A033124(n+1)` -/
def P6410602722721226880.Spec : Prop :=
  ∀ n, P6410602722721226880.a n = A037606 (n + 1)

end A037606

/-! ## A037606.P16701010785729822691

`A037547(n+1)+A037547(n+1)-A037539(n+1)`
-/

namespace A037606.P16701010785729822691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037547 (n + 1) + (A037547 (n + 1) - A037539 (n + 1))

end

end A037606.P16701010785729822691

namespace A037606

/-- `A037547(n+1)+A037547(n+1)-A037539(n+1)` -/
def P16701010785729822691.Spec : Prop :=
  ∀ n, P16701010785729822691.a n = A037606 (n + 1)

end A037606

/-! ## A037606.P8557692435535003227

`2*A037547(n+1)-A037539(n+1)`
-/

namespace A037606.P8557692435535003227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A037547 (n + 1) - A037539 (n + 1)

end

end A037606.P8557692435535003227

namespace A037606

/-- `2*A037547(n+1)-A037539(n+1)` -/
def P8557692435535003227.Spec : Prop :=
  ∀ n, P8557692435535003227.a n = A037606 (n + 1)

end A037606

/-!
# A037607: Base 7 digits are, in order, the first n terms of the periodic sequence with initial period 1,2,3.

The programs for A037607, the canonical program `A037607.P4163535216865064562` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037607 has offset 1).

The definition of A037607 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 119 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A037607.P7472180530152261199

`ogf((1+2x+3x^2)/(1-7x-x^3+7x^4))`
-/

namespace A037607.P7472180530152261199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, 3] [1, -7, 0, -1, 7] n

end

end A037607.P7472180530152261199

namespace A037607

/-- `ogf((1+2x+3x^2)/(1-7x-x^3+7x^4))` -/
def P7472180530152261199.Spec : Prop :=
  ∀ n, P7472180530152261199.a n = A037607 (n + 1)

end A037607

/-! ## A037607.P12156729562245884225

`∑[7*a(n-1)-A099837(n)]` with `a(0)=1`
-/

namespace A037607.P12156729562245884225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  7 * f1 (n - 1) - A099837 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037607.P12156729562245884225

namespace A037607

/-- `∑[7*a(n-1)-A099837(n)]` -/
def P12156729562245884225.Spec : Prop :=
  ∀ n, P12156729562245884225.a n = A037607 (n + 1)

end A037607

/-! ## A037607.P4163535216865064562

`7*a(n-1)+A010872(n)+1` with `a(0)=1`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A037607

/-- `7*a(n-1)+A010872(n)+1` -/
def P4163535216865064562.Spec : Prop :=
  ∀ n, P4163535216865064562.a n = A037607 (n + 1)

theorem P4163535216865064562.correct : P4163535216865064562.Spec := by
  intro n
  simp only [A037607, Nat.add_sub_cancel]

end A037607

/-! ## A037607.P8900472318025088214

`7*a(n-1)+2-A057078(n)` with `a(0)=1`
-/

namespace A037607.P8900472318025088214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  7 * a (n - 1) + (2 - A057078 n)

end

end A037607.P8900472318025088214

namespace A037607

/-- `7*a(n-1)+2-A057078(n)` -/
def P8900472318025088214.Spec : Prop :=
  ∀ n, P8900472318025088214.a n = A037607 (n + 1)

theorem P8900472318025088214.correct : P8900472318025088214.Spec := by
  intro n
  simp only [A037607, Nat.add_sub_cancel, A037607.P8900472318025088214.a, A037607.P4163535216865064562.a, A010872, A010872.P9752549328412734763.a, A057078, A057078.P4951435475119423572.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A037607

/-! ## A037607.P1307644822831811297

`A037532(n+1)+A037532(n+1)-A033125(n+1)`
-/

namespace A037607.P1307644822831811297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037532 (n + 1) + (A037532 (n + 1) - A033125 (n + 1))

end

end A037607.P1307644822831811297

namespace A037607

/-- `A037532(n+1)+A037532(n+1)-A033125(n+1)` -/
def P1307644822831811297.Spec : Prop :=
  ∀ n, P1307644822831811297.a n = A037607 (n + 1)

end A037607

/-! ## A037607.P12294102553302920727

`A037548(n+1)+A037548(n+1)-A037540(n+1)`
-/

namespace A037607.P12294102553302920727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037548 (n + 1) + (A037548 (n + 1) - A037540 (n + 1))

end

end A037607.P12294102553302920727

namespace A037607

/-- `A037548(n+1)+A037548(n+1)-A037540(n+1)` -/
def P12294102553302920727.Spec : Prop :=
  ∀ n, P12294102553302920727.a n = A037607 (n + 1)

end A037607

/-! ## A037607.P8643420886502437912

`2*A037532(n+1)-A033125(n+1)`
-/

namespace A037607.P8643420886502437912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A037532 (n + 1) - A033125 (n + 1)

end

end A037607.P8643420886502437912

namespace A037607

/-- `2*A037532(n+1)-A033125(n+1)` -/
def P8643420886502437912.Spec : Prop :=
  ∀ n, P8643420886502437912.a n = A037607 (n + 1)

end A037607

/-! ## A037607.P14185696797063352766

`2*A037548(n+1)-A037540(n+1)`
-/

namespace A037607.P14185696797063352766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A037548 (n + 1) - A037540 (n + 1)

end

end A037607.P14185696797063352766

namespace A037607

/-- `2*A037548(n+1)-A037540(n+1)` -/
def P14185696797063352766.Spec : Prop :=
  ∀ n, P14185696797063352766.a n = A037607 (n + 1)

end A037607

/-! ## A037607.P2399109282663403084

`A037548(n+1)+A037572(n+1)-A037556(n+1)`
-/

namespace A037607.P2399109282663403084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037548 (n + 1) + (A037572 (n + 1) - A037556 (n + 1))

end

end A037607.P2399109282663403084

namespace A037607

/-- `A037548(n+1)+A037572(n+1)-A037556(n+1)` -/
def P2399109282663403084.Spec : Prop :=
  ∀ n, P2399109282663403084.a n = A037607 (n + 1)

end A037607

/-! ## A037607.P403243929363394478

`round(∑[7*a(n-1)]/19)` with `a(0)=22`
-/

namespace A037607.P403243929363394478
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [22] fun n f1 =>
  7 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 19)

end

end A037607.P403243929363394478

namespace A037607

/-- `round(∑[7*a(n-1)]/19)` -/
def P403243929363394478.Spec : Prop :=
  ∀ n, P403243929363394478.a n = A037607 (n + 1)

end A037607

/-!
# A037608: Base 8 digits are, in order, the first n terms of the periodic sequence with initial period 1,2,3.

The programs for A037608, the canonical program `A037608.P3172134688616158549` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037608 has offset 1).

The definition of A037608 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A037608.anchor (n : ℕ) (hn : 1 ≤ n) : A037608 n = ((Nat.ofDigits 8 ((List.range n).reverse.map fun i => [1, 2, 3].getD (i % 3) 0) : ℕ) : ℤ)` in `Proof.A037.A037608`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A037608.P3172134688616158549

`8*a(n-1)+a(n-3)-8*a(n-4)` with `a(0)=1, a(1)=10, a(2)=83, a(3)=665`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A037608

/-- `8*a(n-1)+a(n-3)-8*a(n-4)` -/
def P3172134688616158549.Spec : Prop :=
  ∀ n, P3172134688616158549.a n = A037608 (n + 1)

theorem P3172134688616158549.correct : P3172134688616158549.Spec := by
  intro n
  simp only [A037608, Nat.add_sub_cancel]

end A037608

/-! ## A037608.P11166616460352096284

`floor(83*8^(n+1)/511)`
-/

namespace A037608.P11166616460352096284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(83 * 8 ^ (n + 1) : ℚ) / 511⌋

end

end A037608.P11166616460352096284

namespace A037608

/-- `floor(83*8^(n+1)/511)` -/
def P11166616460352096284.Spec : Prop :=
  ∀ n, P11166616460352096284.a n = A037608 (n + 1)

end A037608

/-! ## A037608.P492022908625268714

`ogf((1+2x+3x^2)/(1-8x-x^3+8x^4))`
-/

namespace A037608.P492022908625268714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, 3] [1, -8, 0, -1, 8] n

end

end A037608.P492022908625268714

namespace A037608

/-- `ogf((1+2x+3x^2)/(1-8x-x^3+8x^4))` -/
def P492022908625268714.Spec : Prop :=
  ∀ n, P492022908625268714.a n = A037608 (n + 1)

end A037608

/-! ## A037608.P16683209789765057217

`record[(n+1)%3+8*a(n-1)+1]` with `a(0)=1, a(1)=0`
-/

namespace A037608.P16683209789765057217
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0] fun n f1 =>
  (n + 1) % 3 + 8 * f1 (n - 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A037608.P16683209789765057217

namespace A037608

/-- `record[(n+1)%3+8*a(n-1)+1]` -/
def P16683209789765057217.Spec : Prop :=
  ∀ n, (P16683209789765057217.a n : ℤ) = A037608 (n + 1)

end A037608

/-! ## A037608.P2422774321410286302

`or(A033126(n+1), A037549(n+1))`
-/

namespace A037608.P2422774321410286302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A033126 (n + 1)) (A037549 (n + 1))

end

end A037608.P2422774321410286302

namespace A037608

/-- `or(A033126(n+1), A037549(n+1))` -/
def P2422774321410286302.Spec : Prop :=
  ∀ n, P2422774321410286302.a n = A037608 (n + 1)

end A037608

/-! ## A037608.P7984351799793523073

`or(A037501(n+1), A037541(n+1))`
-/

namespace A037608.P7984351799793523073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A037501 (n + 1)) (A037541 (n + 1))

end

end A037608.P7984351799793523073

namespace A037608

/-- `or(A037501(n+1), A037541(n+1))` -/
def P7984351799793523073.Spec : Prop :=
  ∀ n, P7984351799793523073.a n = A037608 (n + 1)

end A037608

/-! ## A037608.P6944965846598391088

`or(A037541(n+1), A037549(n+1))`
-/

namespace A037608.P6944965846598391088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A037541 (n + 1)) (A037549 (n + 1))

end

end A037608.P6944965846598391088

namespace A037608

/-- `or(A037541(n+1), A037549(n+1))` -/
def P6944965846598391088.Spec : Prop :=
  ∀ n, P6944965846598391088.a n = A037608 (n + 1)

end A037608

/-! ## A037608.P13092350252107537049

`or(A037541(n+1), A037594(n+1))`
-/

namespace A037608.P13092350252107537049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A037541 (n + 1)) (A037594 (n + 1))

end

end A037608.P13092350252107537049

namespace A037608

/-- `or(A037541(n+1), A037594(n+1))` -/
def P13092350252107537049.Spec : Prop :=
  ∀ n, P13092350252107537049.a n = A037608 (n + 1)

end A037608

/-! ## A037608.P3984826099342164245

`or(A037549(n+1), A037594(n+1))`
-/

namespace A037608.P3984826099342164245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A037549 (n + 1)) (A037594 (n + 1))

end

end A037608.P3984826099342164245

namespace A037608

/-- `or(A037549(n+1), A037594(n+1))` -/
def P3984826099342164245.Spec : Prop :=
  ∀ n, P3984826099342164245.a n = A037608 (n + 1)

end A037608

/-! ## A037608.P3074060332566158673

`xor(∑[2*A001018(n)], A037650(n+1))`
-/

namespace A037608.P3074060332566158673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001018 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (∑ j ∈ Finset.range (n + 1), f1 j) (A037650 (n + 1))

end

end A037608.P3074060332566158673

namespace A037608

/-- `xor(∑[2*A001018(n)], A037650(n+1))` -/
def P3074060332566158673.Spec : Prop :=
  ∀ n, P3074060332566158673.a n = A037608 (n + 1)

end A037608

/-! ## A037608.P8587537645379953470

`2*A037533(n+1)-A033126(n+1)`
-/

namespace A037608.P8587537645379953470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A037533 (n + 1) - A033126 (n + 1)

end

end A037608.P8587537645379953470

namespace A037608

/-- `2*A037533(n+1)-A033126(n+1)` -/
def P8587537645379953470.Spec : Prop :=
  ∀ n, P8587537645379953470.a n = A037608 (n + 1)

end A037608

/-! ## A037608.P8529013169671218946

`A037533(n+1)+A037541(n+1)-A033135(n+1)`
-/

namespace A037608.P8529013169671218946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037533 (n + 1) + (A037541 (n + 1) - A033135 (n + 1))

end

end A037608.P8529013169671218946

namespace A037608

/-- `A037533(n+1)+A037541(n+1)-A033135(n+1)` -/
def P8529013169671218946.Spec : Prop :=
  ∀ n, P8529013169671218946.a n = A037608 (n + 1)

end A037608

/-! ## A037608.P17444018771949458063

`A037541(n+1)+A037573(n+1)-A037525(n+1)`
-/

namespace A037608.P17444018771949458063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037541 (n + 1) + (A037573 (n + 1) - A037525 (n + 1))

end

end A037608.P17444018771949458063

namespace A037608

/-- `A037541(n+1)+A037573(n+1)-A037525(n+1)` -/
def P17444018771949458063.Spec : Prop :=
  ∀ n, P17444018771949458063.a n = A037608 (n + 1)

end A037608

/-! ## A037608.P3708057461140105835

`or(A037636(n+1), A037643(n+1))-A033135(n+1)`
-/

namespace A037608.P3708057461140105835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A037636 (n + 1)) (A037643 (n + 1)) - A033135 (n + 1)

end

end A037608.P3708057461140105835

namespace A037608

/-- `or(A037636(n+1), A037643(n+1))-A033135(n+1)` -/
def P3708057461140105835.Spec : Prop :=
  ∀ n, P3708057461140105835.a n = A037608 (n + 1)

end A037608

/-! ## A037608.P8915405227026842569

`xor(A037541(n+1)+A037517(n+1), A037517(n+1))`
-/

namespace A037608.P8915405227026842569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A037541 (n + 1) + A037517 (n + 1)) (A037517 (n + 1))

end

end A037608.P8915405227026842569

namespace A037608

/-- `xor(A037541(n+1)+A037517(n+1), A037517(n+1))` -/
def P8915405227026842569.Spec : Prop :=
  ∀ n, P8915405227026842569.a n = A037608 (n + 1)

end A037608

/-! ## A037608.P10607694922812961639

`xor(A037557(n+1)+A037541(n+1), A037557(n+1))`
-/

namespace A037608.P10607694922812961639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A037557 (n + 1) + A037541 (n + 1)) (A037557 (n + 1))

end

end A037608.P10607694922812961639

namespace A037608

/-- `xor(A037557(n+1)+A037541(n+1), A037557(n+1))` -/
def P10607694922812961639.Spec : Prop :=
  ∀ n, P10607694922812961639.a n = A037608 (n + 1)

end A037608

/-!
# A037609: Base 9 digits are, in order, the first n terms of the periodic sequence with initial period 1,2,3.

The programs for A037609, the canonical program `A037609.P12361209036563579603` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037609 has offset 1).

The definition of A037609 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A037609.P12367530542044327239

`ogf((1+2x+3x^2)/(1-9x-x^3+9x^4))`
-/

namespace A037609.P12367530542044327239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, 3] [1, -9, 0, -1, 9] n

end

end A037609.P12367530542044327239

namespace A037609

/-- `ogf((1+2x+3x^2)/(1-9x-x^3+9x^4))` -/
def P12367530542044327239.Spec : Prop :=
  ∀ n, P12367530542044327239.a n = A037609 (n + 1)

end A037609

/-! ## A037609.P12361209036563579603

`A010882(n)+9*a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A037609

/-- `A010882(n)+9*a(n-1)` -/
def P12361209036563579603.Spec : Prop :=
  ∀ n, P12361209036563579603.a n = A037609 (n + 1)

theorem P12361209036563579603.correct : P12361209036563579603.Spec := by
  intro n
  simp only [A037609, Nat.add_sub_cancel]

end A037609

/-! ## A037609.P6591322744547236740

`∑[lcm(9, a(n-1))-A099837(n)]` with `a(0)=1`
-/

namespace A037609.P6591322744547236740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  (Int.lcm 9 (f1 (n - 1)) : ℤ) - A099837 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037609.P6591322744547236740

namespace A037609

/-- `∑[lcm(9, a(n-1))-A099837(n)]` -/
def P6591322744547236740.Spec : Prop :=
  ∀ n, P6591322744547236740.a n = A037609 (n + 1)

end A037609

/-! ## A037609.P17843271753487752757

`Δ[A047259(n+2)]+3*3*a(n-1)` with `a(0)=1`
-/

namespace A037609.P17843271753487752757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047259 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  f1 (n + 1) - f1 n + 3 * (3 * a (n - 1))

end

end A037609.P17843271753487752757

namespace A037609

/-- `Δ[A047259(n+2)]+3*3*a(n-1)` -/
def P17843271753487752757.Spec : Prop :=
  ∀ n, P17843271753487752757.a n = A037609 (n + 1)

end A037609

/-! ## A037609.P3067134006456435855

`∑[9*a(n-1)-A057079(2*n+1)]` with `a(0)=1`
-/

namespace A037609.P3067134006456435855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  9 * f1 (n - 1) - A057079 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037609.P3067134006456435855

namespace A037609

/-- `∑[9*a(n-1)-A057079(2*n+1)]` -/
def P3067134006456435855.Spec : Prop :=
  ∀ n, P3067134006456435855.a n = A037609 (n + 1)

end A037609

/-! ## A037609.P10736613501945424734

`2*A037534(n+1)-A033127(n+1)`
-/

namespace A037609.P10736613501945424734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A037534 (n + 1) - A033127 (n + 1)

end

end A037609.P10736613501945424734

namespace A037609

/-- `2*A037534(n+1)-A033127(n+1)` -/
def P10736613501945424734.Spec : Prop :=
  ∀ n, P10736613501945424734.a n = A037609 (n + 1)

end A037609

/-! ## A037609.P8709679798702082150

`2*A037550(n+1)-A037542(n+1)`
-/

namespace A037609.P8709679798702082150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A037550 (n + 1) - A037542 (n + 1)

end

end A037609.P8709679798702082150

namespace A037609

/-- `2*A037550(n+1)-A037542(n+1)` -/
def P8709679798702082150.Spec : Prop :=
  ∀ n, P8709679798702082150.a n = A037609 (n + 1)

end A037609

/-! ## A037609.P7128129120833408713

`9*a(n-1)-(A000038(n)-A010882(n))` with `a(0)=1`
-/

namespace A037609.P7128129120833408713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  9 * a (n - 1) - (A000038 n - A010882 n)

end

end A037609.P7128129120833408713

namespace A037609

/-- `9*a(n-1)-(A000038(n)-A010882(n))` -/
def P7128129120833408713.Spec : Prop :=
  ∀ n, P7128129120833408713.a n = A037609 (n + 1)

end A037609

/-! ## A037609.P13704187830120859754

`A037550(n+1)+A037574(n+1)-A037558(n+1)`
-/

namespace A037609.P13704187830120859754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037550 (n + 1) + (A037574 (n + 1) - A037558 (n + 1))

end

end A037609.P13704187830120859754

namespace A037609

/-- `A037550(n+1)+A037574(n+1)-A037558(n+1)` -/
def P13704187830120859754.Spec : Prop :=
  ∀ n, P13704187830120859754.a n = A037609 (n + 1)

end A037609

/-! ## A037609.P14980660142801034223

`A037542(n+1)+A037658(n+1)%A033145(n+1)`
-/

namespace A037609.P14980660142801034223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037542 (n + 1) + Int.tmod (A037658 (n + 1)) (A033145 (n + 1))

end

end A037609.P14980660142801034223

namespace A037609

/-- `A037542(n+1)+A037658(n+1)%A033145(n+1)` -/
def P14980660142801034223.Spec : Prop :=
  ∀ n, P14980660142801034223.a n = A037609 (n + 1)

end A037609

/-!
# A037610: Decimal expansion of a(n) is given by the first n terms of the periodic sequence with initial period 1,2,3.

The programs for A037610, the canonical program `A037610.P18057771962140916572` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037610 has offset 1).

The definition of A037610 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A037610.P18057771962140916572

`floor(41/333*10^(n+1))`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A037610

/-- `floor(41/333*10^(n+1))` -/
def P18057771962140916572.Spec : Prop :=
  ∀ n, P18057771962140916572.a n = A037610 (n + 1)

theorem P18057771962140916572.correct : P18057771962140916572.Spec := by
  intro n
  simp only [A037610, Nat.add_sub_cancel]

end A037610

/-! ## A037610.P10149603195013098063

`ogf((1+2x+3x^2)/(1-10x-x^3+10x^4))`
-/

namespace A037610.P10149603195013098063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, 3] [1, -10, 0, -1, 10] n

end

end A037610.P10149603195013098063

namespace A037610

/-- `ogf((1+2x+3x^2)/(1-10x-x^3+10x^4))` -/
def P10149603195013098063.Spec : Prop :=
  ∀ n, P10149603195013098063.a n = A037610 (n + 1)

end A037610

/-! ## A037610.P1976334318519179870

`10*a(n-1)+n%3+1` with `a(0)=1`
-/

namespace A037610.P1976334318519179870
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  10 * a (n - 1) + (n % 3 + 1)

end

end A037610.P1976334318519179870

namespace A037610

/-- `10*a(n-1)+n%3+1` -/
def P1976334318519179870.Spec : Prop :=
  ∀ n, (P1976334318519179870.a n : ℤ) = A037610 (n + 1)

end A037610

/-! ## A037610.P12004126703501031481

`A010882(n)+10*a(n-1)` with `a(0)=1`
-/

namespace A037610.P12004126703501031481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A010882 n + 10 * a (n - 1)

end

end A037610.P12004126703501031481

namespace A037610

/-- `A010882(n)+10*a(n-1)` -/
def P12004126703501031481.Spec : Prop :=
  ∀ n, P12004126703501031481.a n = A037610 (n + 1)

end A037610

/-! ## A037610.P16090854037154441230

`∑[10*a(n-1)-A099837(n)]` with `a(0)=1`
-/

namespace A037610.P16090854037154441230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  10 * f1 (n - 1) - A099837 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037610.P16090854037154441230

namespace A037610

/-- `∑[10*a(n-1)-A099837(n)]` -/
def P16090854037154441230.Spec : Prop :=
  ∀ n, P16090854037154441230.a n = A037610 (n + 1)

end A037610

/-! ## A037610.P7144324355466888199

`∑[xor(10*a(n-1), A100063(n))]` with `a(0)=1`
-/

namespace A037610.P7144324355466888199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  Int.xor (10 * f1 (n - 1)) (A100063 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037610.P7144324355466888199

namespace A037610

/-- `∑[xor(10*a(n-1), A100063(n))]` -/
def P7144324355466888199.Spec : Prop :=
  ∀ n, P7144324355466888199.a n = A037610 (n + 1)

end A037610

/-! ## A037610.P9271535608639591403

`Δ[A047236(n+1)]+10*a(n-1)` with `a(0)=1`
-/

namespace A037610.P9271535608639591403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047236 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  f1 (n + 1) - f1 n + 10 * a (n - 1)

end

end A037610.P9271535608639591403

namespace A037610

/-- `Δ[A047236(n+1)]+10*a(n-1)` -/
def P9271535608639591403.Spec : Prop :=
  ∀ n, P9271535608639591403.a n = A037610 (n + 1)

end A037610

/-! ## A037610.P11973119427807036528

`∑[10*a(n-1)-A057079(2*n+1)]` with `a(0)=1`
-/

namespace A037610.P11973119427807036528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  10 * f1 (n - 1) - A057079 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037610.P11973119427807036528

namespace A037610

/-- `∑[10*a(n-1)-A057079(2*n+1)]` -/
def P11973119427807036528.Spec : Prop :=
  ∀ n, P11973119427807036528.a n = A037610 (n + 1)

end A037610

/-! ## A037610.P11172161709090071116

`2*A037535(n)-A033128(n)`
-/

namespace A037610.P11172161709090071116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A037535 (n + 1) - A033128 (n + 1)

end

end A037610.P11172161709090071116

namespace A037610

/-- `2*A037535(n)-A033128(n)` -/
def P11172161709090071116.Spec : Prop :=
  ∀ n, P11172161709090071116.a n = A037610 (n + 1)

end A037610

/-!
# A037611: Base-4 digits are, in order, the first n terms of the periodic sequence with initial period 1,3,2.

The programs for A037611, the canonical program `A037611.P10226676681078345726` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037611 has offset 1).

The definition of A037611 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A037611.P10616682145227775671

`ogf((1+3x+2x^2)/(1-4x-x^3+4x^4))`
-/

namespace A037611.P10616682145227775671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 3, 2] [1, -4, 0, -1, 4] n

end

end A037611.P10616682145227775671

namespace A037611

/-- `ogf((1+3x+2x^2)/(1-4x-x^3+4x^4))` -/
def P10616682145227775671.Spec : Prop :=
  ∀ n, P10616682145227775671.a n = A037611 (n + 1)

end A037611

/-! ## A037611.P10226676681078345726

`or(4*a(n-1), dr(3*n))` with `a(0)=1`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A037611

/-- `or(4*a(n-1), dr(3*n))` -/
def P10226676681078345726.Spec : Prop :=
  ∀ n, (P10226676681078345726.a n : ℤ) = A037611 (n + 1)

theorem P10226676681078345726.correct : P10226676681078345726.Spec := by
  intro n
  simp only [A037611, Nat.add_sub_cancel]

end A037611

/-! ## A037611.P3156139131488603825

`or(4*a(n-1), xor(a(n-1), a(n-2)))` with `a(0)=1, a(1)=7`
-/

namespace A037611.P3156139131488603825
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 7] fun n a =>
  Nat.lor (4 * a (n - 1)) (Nat.xor (a (n - 1)) (a (n - 2)))

end

end A037611.P3156139131488603825

namespace A037611

/-- `or(4*a(n-1), xor(a(n-1), a(n-2)))` -/
def P3156139131488603825.Spec : Prop :=
  ∀ n, (P3156139131488603825.a n : ℤ) = A037611 (n + 1)

end A037611

/-! ## A037611.P9367752895402739735

`∑[ceil(A037639(n+1)/2)]`
-/

namespace A037611.P9367752895402739735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A037639 (n + 1) : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037611.P9367752895402739735

namespace A037611

/-- `∑[ceil(A037639(n+1)/2)]` -/
def P9367752895402739735.Spec : Prop :=
  ∀ n, P9367752895402739735.a n = A037611 (n + 1)

end A037611

/-! ## A037611.P1703931234974577680

`A080674(n)+A046632(n)`
-/

namespace A037611.P1703931234974577680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080674 n + A046632 n

end

end A037611.P1703931234974577680

namespace A037611

/-- `A080674(n)+A046632(n)` -/
def P1703931234974577680.Spec : Prop :=
  ∀ n, P1703931234974577680.a n = A037611 (n + 1)

end A037611

/-! ## A037611.P7161271137900661517

`A178872(n)+A037604(n+1)`
-/

namespace A037611.P7161271137900661517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178872 n + A037604 (n + 1)

end

end A037611.P7161271137900661517

namespace A037611

/-- `A178872(n)+A037604(n+1)` -/
def P7161271137900661517.Spec : Prop :=
  ∀ n, P7161271137900661517.a n = A037611 (n + 1)

end A037611

/-! ## A037611.P5328347552255841540

`∑[A004171(n)]-A178872(n+1)`
-/

namespace A037611.P5328347552255841540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004171 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A178872 (n + 1)

end

end A037611.P5328347552255841540

namespace A037611

/-- `∑[A004171(n)]-A178872(n+1)` -/
def P5328347552255841540.Spec : Prop :=
  ∀ n, P5328347552255841540.a n = A037611 (n + 1)

end A037611

/-! ## A037611.P10571083908395695827

`or(A037497(n+1), A178872(n+1))`
-/

namespace A037611.P10571083908395695827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A037497 (n + 1)) (A178872 (n + 1))

end

end A037611.P10571083908395695827

namespace A037611

/-- `or(A037497(n+1), A178872(n+1))` -/
def P10571083908395695827.Spec : Prop :=
  ∀ n, P10571083908395695827.a n = A037611 (n + 1)

end A037611

/-! ## A037611.P18314278325513929931

`xor(A037569(n+1), A037667(n+1))`
-/

namespace A037611.P18314278325513929931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A037569 (n + 1)) (A037667 (n + 1))

end

end A037611.P18314278325513929931

namespace A037611

/-- `xor(A037569(n+1), A037667(n+1))` -/
def P18314278325513929931.Spec : Prop :=
  ∀ n, P18314278325513929931.a n = A037611 (n + 1)

end A037611

/-! ## A037611.P15060726769161226589

`xor(A037625(n+1), A037653(n+1))`
-/

namespace A037611.P15060726769161226589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A037625 (n + 1)) (A037653 (n + 1))

end

end A037611.P15060726769161226589

namespace A037611

/-- `xor(A037625(n+1), A037653(n+1))` -/
def P15060726769161226589.Spec : Prop :=
  ∀ n, P15060726769161226589.a n = A037611 (n + 1)

end A037611

/-! ## A037611.P4164470569471638894

`2*A037537(n+1)-A033131(n+1)`
-/

namespace A037611.P4164470569471638894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A037537 (n + 1) - A033131 (n + 1)

end

end A037611.P4164470569471638894

namespace A037611

/-- `2*A037537(n+1)-A033131(n+1)` -/
def P4164470569471638894.Spec : Prop :=
  ∀ n, P4164470569471638894.a n = A037611 (n + 1)

end A037611

/-! ## A037611.P4328733673529725663

`2*A037545(n+1)-A037529(n+1)`
-/

namespace A037611.P4328733673529725663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A037545 (n + 1) - A037529 (n + 1)

end

end A037611.P4328733673529725663

namespace A037611

/-- `2*A037545(n+1)-A037529(n+1)` -/
def P4328733673529725663.Spec : Prop :=
  ∀ n, P4328733673529725663.a n = A037611 (n + 1)

end A037611

/-! ## A037611.P8887336795372231652

`∑[2*A000079(n)²]-A178872(n+1)`
-/

namespace A037611.P8887336795372231652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000079 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A178872 (n + 1)

end

end A037611.P8887336795372231652

namespace A037611

/-- `∑[2*A000079(n)²]-A178872(n+1)` -/
def P8887336795372231652.Spec : Prop :=
  ∀ n, P8887336795372231652.a n = A037611 (n + 1)

end A037611

/-! ## A037611.P12016029090238635546

`∑[2*A000079(n)²-A077972(2*n)]`
-/

namespace A037611.P12016029090238635546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000079 n ^ 2 - A077972 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037611.P12016029090238635546

namespace A037611

/-- `∑[2*A000079(n)²-A077972(2*n)]` -/
def P12016029090238635546.Spec : Prop :=
  ∀ n, P12016029090238635546.a n = A037611 (n + 1)

end A037611

/-! ## A037611.P14124061529658691054

`A037625(n+1)-round(A037597(n+1)/2)`
-/

namespace A037611.P14124061529658691054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037625 (n + 1) - SequenceMachineLib.roundAway ((A037597 (n + 1) : ℚ) / 2)

end

end A037611.P14124061529658691054

namespace A037611

/-- `A037625(n+1)-round(A037597(n+1)/2)` -/
def P14124061529658691054.Spec : Prop :=
  ∀ n, P14124061529658691054.a n = A037611 (n + 1)

end A037611

/-! ## A037611.P14989366247643909980

`∑[A000079(2*n+1)]-A178872(n+1)`
-/

namespace A037611.P14989366247643909980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A178872 (n + 1)

end

end A037611.P14989366247643909980

namespace A037611

/-- `∑[A000079(2*n+1)]-A178872(n+1)` -/
def P14989366247643909980.Spec : Prop :=
  ∀ n, P14989366247643909980.a n = A037611 (n + 1)

end A037611

/-! ## A037611.P13344997530338085164

`∑[A000079(2*n+1)-A077972(2*n)]`
-/

namespace A037611.P13344997530338085164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (2 * n + 1) - A077972 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037611.P13344997530338085164

namespace A037611

/-- `∑[A000079(2*n+1)-A077972(2*n)]` -/
def P13344997530338085164.Spec : Prop :=
  ∀ n, P13344997530338085164.a n = A037611 (n + 1)

end A037611

/-! ## A037611.P10077271430980490422

`∑[A024495(2*n+1)+∑[A077972(2*n)]]`
-/

namespace A037611.P10077271430980490422
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077972 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024495 (2 * n + 1) + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037611.P10077271430980490422

namespace A037611

/-- `∑[A024495(2*n+1)+∑[A077972(2*n)]]` -/
def P10077271430980490422.Spec : Prop :=
  ∀ n, P10077271430980490422.a n = A037611 (n + 1)

end A037611

/-! ## A037611.P6411516858177520503

`∑[A033120(2*(n+1))-A033120(2*n+1)]`
-/

namespace A037611.P6411516858177520503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033120 (2 * (n + 1)) - A033120 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037611.P6411516858177520503

namespace A037611

/-- `∑[A033120(2*(n+1))-A033120(2*n+1)]` -/
def P6411516858177520503.Spec : Prop :=
  ∀ n, P6411516858177520503.a n = A037611 (n + 1)

end A037611

/-! ## A037611.P1038237797069143055

`xor(A037529(n+1)+A037521(n+1), A037521(n+1))`
-/

namespace A037611.P1038237797069143055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A037529 (n + 1) + A037521 (n + 1)) (A037521 (n + 1))

end

end A037611.P1038237797069143055

namespace A037611

/-- `xor(A037529(n+1)+A037521(n+1), A037521(n+1))` -/
def P1038237797069143055.Spec : Prop :=
  ∀ n, P1038237797069143055.a n = A037611 (n + 1)

end A037611

/-!
# A037612: Base 5 digits are, in order, the first n terms of the periodic sequence with initial period 1,3,2.

The programs for A037612, the canonical program `A037612.P15379460889894354523` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037612 has offset 1).

The definition of A037612 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 143 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A037612.P8369227165067878227

`ogf((1+3x+2x^2)/(1-5x-x^3+5x^4))`
-/

namespace A037612.P8369227165067878227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 3, 2] [1, -5, 0, -1, 5] n

end

end A037612.P8369227165067878227

namespace A037612

/-- `ogf((1+3x+2x^2)/(1-5x-x^3+5x^4))` -/
def P8369227165067878227.Spec : Prop :=
  ∀ n, P8369227165067878227.a n = A037612 (n + 1)

end A037612

/-! ## A037612.P15379460889894354523

`5*a(n-1)+3-(n-1)%3` with `a(0)=1`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A037612

/-- `5*a(n-1)+3-(n-1)%3` -/
def P15379460889894354523.Spec : Prop :=
  ∀ n, P15379460889894354523.a n = A037612 (n + 1)

theorem P15379460889894354523.correct : P15379460889894354523.Spec := by
  intro n
  simp only [A037612, Nat.add_sub_cancel]

end A037612

/-! ## A037612.P17953383853585145024

`A130784(n)+5*a(n-1)` with `a(0)=1`
-/

namespace A037612.P17953383853585145024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A130784 n + 5 * a (n - 1)

end

end A037612.P17953383853585145024

namespace A037612

/-- `A130784(n)+5*a(n-1)` -/
def P17953383853585145024.Spec : Prop :=
  ∀ n, P17953383853585145024.a n = A037612 (n + 1)

end A037612

/-! ## A037612.P6118917841179571157

`∑[5*a(n-1)-A131713(n)]` with `a(0)=1`
-/

namespace A037612.P6118917841179571157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  5 * f1 (n - 1) - A131713 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037612.P6118917841179571157

namespace A037612

/-- `∑[5*a(n-1)-A131713(n)]` -/
def P6118917841179571157.Spec : Prop :=
  ∀ n, P6118917841179571157.a n = A037612 (n + 1)

end A037612

/-! ## A037612.P6732849507075695305

`5*a(n-1)+A080425(n)+1` with `a(0)=1`
-/

namespace A037612.P6732849507075695305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  5 * a (n - 1) + (A080425 n + 1)

end

end A037612.P6732849507075695305

namespace A037612

/-- `5*a(n-1)+A080425(n)+1` -/
def P6732849507075695305.Spec : Prop :=
  ∀ n, P6732849507075695305.a n = A037612 (n + 1)

end A037612

/-! ## A037612.P8831356292003809855

`5*a(n-1)+2-A091338(4*n+1)` with `a(0)=1`
-/

namespace A037612.P8831356292003809855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  5 * a (n - 1) + (2 - A091338 (4 * n + 1))

end

end A037612.P8831356292003809855

namespace A037612

/-- `5*a(n-1)+2-A091338(4*n+1)` -/
def P8831356292003809855.Spec : Prop :=
  ∀ n, P8831356292003809855.a n = A037612 (n + 1)

end A037612

/-! ## A037612.P9084998886065085941

`2*A037538(n+1)-A033132(n+1)`
-/

namespace A037612.P9084998886065085941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A037538 (n + 1) - A033132 (n + 1)

end

end A037612.P9084998886065085941

namespace A037612

/-- `2*A037538(n+1)-A033132(n+1)` -/
def P9084998886065085941.Spec : Prop :=
  ∀ n, P9084998886065085941.a n = A037612 (n + 1)

end A037612

/-! ## A037612.P840707694368720888

`2*A037546(n+1)-A037530(n+1)`
-/

namespace A037612.P840707694368720888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A037546 (n + 1) - A037530 (n + 1)

end

end A037612.P840707694368720888

namespace A037612

/-- `2*A037546(n+1)-A037530(n+1)` -/
def P840707694368720888.Spec : Prop :=
  ∀ n, P840707694368720888.a n = A037612 (n + 1)

end A037612

/-!
# A037613: Base 6 digits are, in order, the first n terms of the periodic sequence with initial period 1,3,2.

The programs for A037613, the canonical program `A037613.P16022580300413377308` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037613 has offset 1).

The definition of A037613 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 129 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A037613.P4460838495084076745

`ogf((1+3x+2x^2)/(1-6x-x^3+6x^4))`
-/

namespace A037613.P4460838495084076745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 3, 2] [1, -6, 0, -1, 6] n

end

end A037613.P4460838495084076745

namespace A037613

/-- `ogf((1+3x+2x^2)/(1-6x-x^3+6x^4))` -/
def P4460838495084076745.Spec : Prop :=
  ∀ n, P4460838495084076745.a n = A037613 (n + 1)

end A037613

/-! ## A037613.P16022580300413377308

`floor(4*A033133(n+1)/3)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A037613

/-- `floor(4*A033133(n+1)/3)` -/
def P16022580300413377308.Spec : Prop :=
  ∀ n, P16022580300413377308.a n = A037613 (n + 1)

theorem P16022580300413377308.correct : P16022580300413377308.Spec := by
  intro n
  simp only [A037613, Nat.add_sub_cancel]

end A037613

/-! ## A037613.P17721866056811657077

`∑[6*a(n-1)-A131713(n)]` with `a(0)=1`
-/

namespace A037613.P17721866056811657077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  6 * f1 (n - 1) - A131713 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037613.P17721866056811657077

namespace A037613

/-- `∑[6*a(n-1)-A131713(n)]` -/
def P17721866056811657077.Spec : Prop :=
  ∀ n, P17721866056811657077.a n = A037613 (n + 1)

end A037613

/-! ## A037613.P5012112136264465464

`∑[6*a(n-1)-A061347(A052938(n))]` with `a(0)=1`
-/

namespace A037613.P5012112136264465464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  6 * f1 (n - 1) - A061347 (A052938 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037613.P5012112136264465464

namespace A037613

/-- `∑[6*a(n-1)-A061347(A052938(n))]` -/
def P5012112136264465464.Spec : Prop :=
  ∀ n, P5012112136264465464.a n = A037613 (n + 1)

end A037613

/-! ## A037613.P17931945705816396109

`A037539(n+1)+A037539(n+1)-A033133(n+1)`
-/

namespace A037613.P17931945705816396109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037539 (n + 1) + (A037539 (n + 1) - A033133 (n + 1))

end

end A037613.P17931945705816396109

namespace A037613

/-- `A037539(n+1)+A037539(n+1)-A033133(n+1)` -/
def P17931945705816396109.Spec : Prop :=
  ∀ n, P17931945705816396109.a n = A037613 (n + 1)

end A037613

/-! ## A037613.P7679457782034100484

`A037547(n+1)+A037547(n+1)-A037531(n+1)`
-/

namespace A037613.P7679457782034100484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037547 (n + 1) + (A037547 (n + 1) - A037531 (n + 1))

end

end A037613.P7679457782034100484

namespace A037613

/-- `A037547(n+1)+A037547(n+1)-A037531(n+1)` -/
def P7679457782034100484.Spec : Prop :=
  ∀ n, P7679457782034100484.a n = A037613 (n + 1)

end A037613

/-! ## A037613.P10582765890101416083

`2*A037539(n+1)-A033133(n+1)`
-/

namespace A037613.P10582765890101416083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A037539 (n + 1) - A033133 (n + 1)

end

end A037613.P10582765890101416083

namespace A037613

/-- `2*A037539(n+1)-A033133(n+1)` -/
def P10582765890101416083.Spec : Prop :=
  ∀ n, P10582765890101416083.a n = A037613 (n + 1)

end A037613

/-! ## A037613.P3896173630685228387

`2*A037547(n+1)-A037531(n+1)`
-/

namespace A037613.P3896173630685228387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A037547 (n + 1) - A037531 (n + 1)

end

end A037613.P3896173630685228387

namespace A037613

/-- `2*A037547(n+1)-A037531(n+1)` -/
def P3896173630685228387.Spec : Prop :=
  ∀ n, P3896173630685228387.a n = A037613 (n + 1)

end A037613

/-! ## A037613.P15424225063308436076

`A037620(n+1)+A037627(n+1)-A037648(n+1)`
-/

namespace A037613.P15424225063308436076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037620 (n + 1) + (A037627 (n + 1) - A037648 (n + 1))

end

end A037613.P15424225063308436076

namespace A037613

/-- `A037620(n+1)+A037627(n+1)-A037648(n+1)` -/
def P15424225063308436076.Spec : Prop :=
  ∀ n, P15424225063308436076.a n = A037613 (n + 1)

end A037613

/-!
# A037614: Base 7 digits are, in order, the first n terms of the periodic sequence with initial period 1,3,2.

The programs for A037614, the canonical program `A037614.P5431780620363500577` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037614 has offset 1).

The definition of A037614 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 119 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A037614.P5771506513408645402

`ogf((1+3x+2x^2)/(1-7x-x^3+7x^4))`
-/

namespace A037614.P5771506513408645402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 3, 2] [1, -7, 0, -1, 7] n

end

end A037614.P5771506513408645402

namespace A037614

/-- `ogf((1+3x+2x^2)/(1-7x-x^3+7x^4))` -/
def P5771506513408645402.Spec : Prop :=
  ∀ n, P5771506513408645402.a n = A037614 (n + 1)

end A037614

/-! ## A037614.P5431780620363500577

`∑[7*a(n-1)-A131713(n)]` with `a(0)=1`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A037614

/-- `∑[7*a(n-1)-A131713(n)]` -/
def P5431780620363500577.Spec : Prop :=
  ∀ n, P5431780620363500577.a n = A037614 (n + 1)

theorem P5431780620363500577.correct : P5431780620363500577.Spec := by
  intro n
  simp only [A037614, Nat.add_sub_cancel]

end A037614

/-! ## A037614.P18081832086497501751

`7*a(n-1)+A080425(n)+1` with `a(0)=1`
-/

namespace A037614.P18081832086497501751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  7 * a (n - 1) + (A080425 n + 1)

end

end A037614.P18081832086497501751

namespace A037614

/-- `7*a(n-1)+A080425(n)+1` -/
def P18081832086497501751.Spec : Prop :=
  ∀ n, P18081832086497501751.a n = A037614 (n + 1)

end A037614

/-! ## A037614.P17513190162418213257

`∑[7*a(n-1)-A101675(A005843(n))]` with `a(0)=1`
-/

namespace A037614.P17513190162418213257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  7 * f1 (n - 1) - A101675 (A005843 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037614.P17513190162418213257

namespace A037614

/-- `∑[7*a(n-1)-A101675(A005843(n))]` -/
def P17513190162418213257.Spec : Prop :=
  ∀ n, P17513190162418213257.a n = A037614 (n + 1)

end A037614

/-! ## A037614.P14940223598247891733

`A037540(n+1)+A037540(n+1)-A033134(n+1)`
-/

namespace A037614.P14940223598247891733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037540 (n + 1) + (A037540 (n + 1) - A033134 (n + 1))

end

end A037614.P14940223598247891733

namespace A037614

/-- `A037540(n+1)+A037540(n+1)-A033134(n+1)` -/
def P14940223598247891733.Spec : Prop :=
  ∀ n, P14940223598247891733.a n = A037614 (n + 1)

end A037614

/-! ## A037614.P16875605919755240493

`A037548(n+1)+A037548(n+1)-A037532(n+1)`
-/

namespace A037614.P16875605919755240493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037548 (n + 1) + (A037548 (n + 1) - A037532 (n + 1))

end

end A037614.P16875605919755240493

namespace A037614

/-- `A037548(n+1)+A037548(n+1)-A037532(n+1)` -/
def P16875605919755240493.Spec : Prop :=
  ∀ n, P16875605919755240493.a n = A037614 (n + 1)

end A037614

/-! ## A037614.P8893683866637631149

`2*A037540(n+1)-A033134(n+1)`
-/

namespace A037614.P8893683866637631149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A037540 (n + 1) - A033134 (n + 1)

end

end A037614.P8893683866637631149

namespace A037614

/-- `2*A037540(n+1)-A033134(n+1)` -/
def P8893683866637631149.Spec : Prop :=
  ∀ n, P8893683866637631149.a n = A037614 (n + 1)

end A037614

/-! ## A037614.P12969113701714801430

`2*A037548(n+1)-A037532(n+1)`
-/

namespace A037614.P12969113701714801430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A037548 (n + 1) - A037532 (n + 1)

end

end A037614.P12969113701714801430

namespace A037614

/-- `2*A037548(n+1)-A037532(n+1)` -/
def P12969113701714801430.Spec : Prop :=
  ∀ n, P12969113701714801430.a n = A037614 (n + 1)

end A037614

/-! ## A037614.P9676524897685758484

`A037548(n+1)+A037564(n+1)-A037556(n+1)`
-/

namespace A037614.P9676524897685758484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037548 (n + 1) + (A037564 (n + 1) - A037556 (n + 1))

end

end A037614.P9676524897685758484

namespace A037614

/-- `A037548(n+1)+A037564(n+1)-A037556(n+1)` -/
def P9676524897685758484.Spec : Prop :=
  ∀ n, P9676524897685758484.a n = A037614 (n + 1)

end A037614

/-! ## A037614.P8216774913617189691

`floor(A208704(n+2)/19)`
-/

namespace A037614.P8216774913617189691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A208704 (n + 2) : ℚ) / 19⌋

end

end A037614.P8216774913617189691

namespace A037614

/-- `floor(A208704(n+2)/19)` -/
def P8216774913617189691.Spec : Prop :=
  ∀ n, P8216774913617189691.a n = A037614 (n + 1)

end A037614

/-! ## A037614.P1347236753252900900

`A037635(n+2)-2*A000420(n+1)`
-/

namespace A037614.P1347236753252900900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037635 (n + 2) - 2 * A000420 (n + 1)

end

end A037614.P1347236753252900900

namespace A037614

/-- `A037635(n+2)-2*A000420(n+1)` -/
def P1347236753252900900.Spec : Prop :=
  ∀ n, P1347236753252900900.a n = A037614 (n + 1)

end A037614

/-!
# A037615: Base 8 digits are, in order, the first n terms of the periodic sequence with initial period 1,3,2.

The programs for A037615, the canonical program `A037615.P7177393196109911626` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037615 has offset 1).

The definition of A037615 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A037615.P2336043938922852924

`ogf((1+3x+2x^2)/(1-8x-x^3+8x^4))`
-/

namespace A037615.P2336043938922852924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 3, 2] [1, -8, 0, -1, 8] n

end

end A037615.P2336043938922852924

namespace A037615

/-- `ogf((1+3x+2x^2)/(1-8x-x^3+8x^4))` -/
def P2336043938922852924.Spec : Prop :=
  ∀ n, P2336043938922852924.a n = A037615 (n + 1)

end A037615

/-! ## A037615.P7177393196109911626

`xor(3, 8*a(n-1)-(1-n)%3)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A037615

/-- `xor(3, 8*a(n-1)-(1-n)%3)` -/
def P7177393196109911626.Spec : Prop :=
  ∀ n, P7177393196109911626.a n = A037615 (n + 1)

theorem P7177393196109911626.correct : P7177393196109911626.Spec := by
  intro n
  simp only [A037615, Nat.add_sub_cancel]

end A037615

/-! ## A037615.P9873620177767960616

`or(A033135(n+1), A037549(n+1))`
-/

namespace A037615.P9873620177767960616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A033135 (n + 1)) (A037549 (n + 1))

end

end A037615.P9873620177767960616

namespace A037615

/-- `or(A033135(n+1), A037549(n+1))` -/
def P9873620177767960616.Spec : Prop :=
  ∀ n, P9873620177767960616.a n = A037615 (n + 1)

end A037615

/-! ## A037615.P7181563372719888945

`or(A037509(n+1), A037533(n+1))`
-/

namespace A037615.P7181563372719888945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A037509 (n + 1)) (A037533 (n + 1))

end

end A037615.P7181563372719888945

namespace A037615

/-- `or(A037509(n+1), A037533(n+1))` -/
def P7181563372719888945.Spec : Prop :=
  ∀ n, P7181563372719888945.a n = A037615 (n + 1)

end A037615

/-! ## A037615.P16491081737432377096

`or(A037533(n+1), A037549(n+1))`
-/

namespace A037615.P16491081737432377096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A037533 (n + 1)) (A037549 (n + 1))

end

end A037615.P16491081737432377096

namespace A037615

/-- `or(A037533(n+1), A037549(n+1))` -/
def P16491081737432377096.Spec : Prop :=
  ∀ n, P16491081737432377096.a n = A037615 (n + 1)

end A037615

/-! ## A037615.P1555832378682781526

`xor(A037629(n+1), A037657(n+1))`
-/

namespace A037615.P1555832378682781526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A037629 (n + 1)) (A037657 (n + 1))

end

end A037615.P1555832378682781526

namespace A037615

/-- `xor(A037629(n+1), A037657(n+1))` -/
def P1555832378682781526.Spec : Prop :=
  ∀ n, P1555832378682781526.a n = A037615 (n + 1)

end A037615

/-! ## A037615.P13021452939062856966

`xor(∑[2*A001018(n)], A037664(n+1))`
-/

namespace A037615.P13021452939062856966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001018 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (∑ j ∈ Finset.range (n + 1), f1 j) (A037664 (n + 1))

end

end A037615.P13021452939062856966

namespace A037615

/-- `xor(∑[2*A001018(n)], A037664(n+1))` -/
def P13021452939062856966.Spec : Prop :=
  ∀ n, P13021452939062856966.a n = A037615 (n + 1)

end A037615

/-! ## A037615.P11535537604442293632

`2*A037541(n+1)-A033135(n+1)`
-/

namespace A037615.P11535537604442293632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A037541 (n + 1) - A033135 (n + 1)

end

end A037615.P11535537604442293632

namespace A037615

/-- `2*A037541(n+1)-A033135(n+1)` -/
def P11535537604442293632.Spec : Prop :=
  ∀ n, P11535537604442293632.a n = A037615 (n + 1)

end A037615

/-! ## A037615.P3615221265980515185

`or(A037541(A028310(n)), A037549(n+1))`
-/

namespace A037615.P3615221265980515185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A037541 (A028310 n).toNat) (A037549 (n + 1))

end

end A037615.P3615221265980515185

namespace A037615

/-- `or(A037541(A028310(n)), A037549(n+1))` -/
def P3615221265980515185.Spec : Prop :=
  ∀ n, P3615221265980515185.a n = A037615 (n + 1)

end A037615

/-! ## A037615.P15795754143153146318

`xor(A037533(n+1)+A037525(n+1), A037525(n+1))`
-/

namespace A037615.P15795754143153146318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A037533 (n + 1) + A037525 (n + 1)) (A037525 (n + 1))

end

end A037615.P15795754143153146318

namespace A037615

/-- `xor(A037533(n+1)+A037525(n+1), A037525(n+1))` -/
def P15795754143153146318.Spec : Prop :=
  ∀ n, P15795754143153146318.a n = A037615 (n + 1)

end A037615

/-! ## A037615.P14441227180107904639

`A037636(n+2)-2*A001018(n+1)`
-/

namespace A037615.P14441227180107904639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037636 (n + 2) - 2 * A001018 (n + 1)

end

end A037615.P14441227180107904639

namespace A037615

/-- `A037636(n+2)-2*A001018(n+1)` -/
def P14441227180107904639.Spec : Prop :=
  ∀ n, P14441227180107904639.a n = A037615 (n + 1)

end A037615

/-!
# A037616: Base 9 digits are, in order, the first n terms of the periodic sequence with initial period 1,3,2.

The programs for A037616, the canonical program `A037616.P2789638312819498099` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037616 has offset 1).

The definition of A037616 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A037616.anchor (n : ℕ) (hn : 1 ≤ n) : A037616 n = ((Nat.ofDigits 9 ((List.range n).reverse.map fun i => [1, 3, 2].getD (i % 3) 0) : ℕ) : ℤ)` in `Proof.A037.A037616`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A037616.P2789638312819498099

`9*a(n-1)+a(n-3)-9*a(n-4)` with `a(0)=1, a(1)=12, a(2)=110, a(3)=991`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A037616

/-- `9*a(n-1)+a(n-3)-9*a(n-4)` -/
def P2789638312819498099.Spec : Prop :=
  ∀ n, P2789638312819498099.a n = A037616 (n + 1)

theorem P2789638312819498099.correct : P2789638312819498099.Spec := by
  intro n
  simp only [A037616, Nat.add_sub_cancel]

end A037616

/-! ## A037616.P10804960057372639533

`ogf((1+3x+2x^2)/(1-9x-x^3+9x^4))`
-/

namespace A037616.P10804960057372639533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 3, 2] [1, -9, 0, -1, 9] n

end

end A037616.P10804960057372639533

namespace A037616

/-- `ogf((1+3x+2x^2)/(1-9x-x^3+9x^4))` -/
def P10804960057372639533.Spec : Prop :=
  ∀ n, P10804960057372639533.a n = A037616 (n + 1)

end A037616

/-! ## A037616.P16573278504091678580

`∑[9*a(n-1)-A131713(n)]` with `a(0)=1`
-/

namespace A037616.P16573278504091678580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  9 * f1 (n - 1) - A131713 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037616.P16573278504091678580

namespace A037616

/-- `∑[9*a(n-1)-A131713(n)]` -/
def P16573278504091678580.Spec : Prop :=
  ∀ n, P16573278504091678580.a n = A037616 (n + 1)

end A037616

/-! ## A037616.P11638366049979114593

`∑[9*a(n-1)-A057079(4*n)]` with `a(0)=1`
-/

namespace A037616.P11638366049979114593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  9 * f1 (n - 1) - A057079 (4 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037616.P11638366049979114593

namespace A037616

/-- `∑[9*a(n-1)-A057079(4*n)]` -/
def P11638366049979114593.Spec : Prop :=
  ∀ n, P11638366049979114593.a n = A037616 (n + 1)

end A037616

/-! ## A037616.P7842892457500141950

`2*A037542(n+1)-A033136(n+1)`
-/

namespace A037616.P7842892457500141950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A037542 (n + 1) - A033136 (n + 1)

end

end A037616.P7842892457500141950

namespace A037616

/-- `2*A037542(n+1)-A033136(n+1)` -/
def P7842892457500141950.Spec : Prop :=
  ∀ n, P7842892457500141950.a n = A037616 (n + 1)

end A037616

/-! ## A037616.P14265973356943869729

`2*A037550(n+1)-A037534(n+1)`
-/

namespace A037616.P14265973356943869729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A037550 (n + 1) - A037534 (n + 1)

end

end A037616.P14265973356943869729

namespace A037616

/-- `2*A037550(n+1)-A037534(n+1)` -/
def P14265973356943869729.Spec : Prop :=
  ∀ n, P14265973356943869729.a n = A037616 (n + 1)

end A037616

/-! ## A037616.P13182854380911587758

`A037534(n+1)+A037542(n+1)-A033127(n+1)`
-/

namespace A037616.P13182854380911587758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037534 (n + 1) + (A037542 (n + 1) - A033127 (n + 1))

end

end A037616.P13182854380911587758

namespace A037616

/-- `A037534(n+1)+A037542(n+1)-A033127(n+1)` -/
def P13182854380911587758.Spec : Prop :=
  ∀ n, P13182854380911587758.a n = A037616 (n + 1)

end A037616

/-! ## A037616.P18049700970818318503

`A037486(n+1)+A037494(n+1)-A037518(n+1)`
-/

namespace A037616.P18049700970818318503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037486 (n + 1) + (A037494 (n + 1) - A037518 (n + 1))

end

end A037616.P18049700970818318503

namespace A037616

/-- `A037486(n+1)+A037494(n+1)-A037518(n+1)` -/
def P18049700970818318503.Spec : Prop :=
  ∀ n, P18049700970818318503.a n = A037616 (n + 1)

end A037616

/-!
# A037617: Decimal expansion of a(n) is given by the first n terms of the periodic sequence with initial period 1,3,2.

The programs for A037617, the canonical program `A037617.P5419154090934213041` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037617 has offset 1).

The definition of A037617 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A037617.P15685286842674811657

`ogf((1+3x+2x^2)/(1-10x-x^3+10x^4))`
-/

namespace A037617.P15685286842674811657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 3, 2] [1, -10, 0, -1, 10] n

end

end A037617.P15685286842674811657

namespace A037617

/-- `ogf((1+3x+2x^2)/(1-10x-x^3+10x^4))` -/
def P15685286842674811657.Spec : Prop :=
  ∀ n, P15685286842674811657.a n = A037617 (n + 1)

end A037617

/-! ## A037617.P5419154090934213041

`∑[10*a(n-1)-A131713(n)]` with `a(0)=1`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A037617

/-- `∑[10*a(n-1)-A131713(n)]` -/
def P5419154090934213041.Spec : Prop :=
  ∀ n, P5419154090934213041.a n = A037617 (n + 1)

theorem P5419154090934213041.correct : P5419154090934213041.Spec := by
  intro n
  simp only [A037617, Nat.add_sub_cancel]

end A037617

/-! ## A037617.P11488437481715534718

`10*a(n-1)+2-A049347(n)` with `a(0)=1`
-/

namespace A037617.P11488437481715534718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  10 * a (n - 1) + (2 - A049347 n)

end

end A037617.P11488437481715534718

namespace A037617

/-- `10*a(n-1)+2-A049347(n)` -/
def P11488437481715534718.Spec : Prop :=
  ∀ n, P11488437481715534718.a n = A037617 (n + 1)

end A037617

/-! ## A037617.P12410761557740534639

`∑[10*a(n-1)-A061347(n+2)]` with `a(0)=1`
-/

namespace A037617.P12410761557740534639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  10 * f1 (n - 1) - A061347 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037617.P12410761557740534639

namespace A037617

/-- `∑[10*a(n-1)-A061347(n+2)]` -/
def P12410761557740534639.Spec : Prop :=
  ∀ n, P12410761557740534639.a n = A037617 (n + 1)

end A037617

/-! ## A037617.P12079324362273349644

`∑[10*a(n-1)-A057079(4*n)]` with `a(0)=1`
-/

namespace A037617.P12079324362273349644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  10 * f1 (n - 1) - A057079 (4 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037617.P12079324362273349644

namespace A037617

/-- `∑[10*a(n-1)-A057079(4*n)]` -/
def P12079324362273349644.Spec : Prop :=
  ∀ n, P12079324362273349644.a n = A037617 (n + 1)

end A037617

/-! ## A037617.P4252534753018231081

`∑[10*a(n-1)-A100051(A004771(n))]` with `a(0)=1`
-/

namespace A037617.P4252534753018231081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  10 * f1 (n - 1) - A100051 (A004771 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037617.P4252534753018231081

namespace A037617

/-- `∑[10*a(n-1)-A100051(A004771(n))]` -/
def P4252534753018231081.Spec : Prop :=
  ∀ n, P4252534753018231081.a n = A037617 (n + 1)

end A037617

/-! ## A037617.P10159651532199651237

`∑[10*a(n-1)-A117188(A005843(n))]` with `a(0)=1`
-/

namespace A037617.P10159651532199651237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  10 * f1 (n - 1) - A117188 (A005843 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037617.P10159651532199651237

namespace A037617

/-- `∑[10*a(n-1)-A117188(A005843(n))]` -/
def P10159651532199651237.Spec : Prop :=
  ∀ n, P10159651532199651237.a n = A037617 (n + 1)

end A037617

/-!
# A037618: Base 4 digits are, in order, the first n terms of the periodic sequence with initial period 2,0,3.

The programs for A037618, the canonical program `A037618.P7225440960202106372` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037618 has offset 1).

The definition of A037618 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A037618.P7225440960202106372

`round(5/3*∑[4^n])`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A037618

/-- `round(5/3*∑[4^n])` -/
def P7225440960202106372.Spec : Prop :=
  ∀ n, P7225440960202106372.a n = A037618 (n + 1)

theorem P7225440960202106372.correct : P7225440960202106372.Spec := by
  intro n
  simp only [A037618, Nat.add_sub_cancel]

end A037618

/-! ## A037618.P9155895834063459670

`ogf((2+3x^2)/(1-4x-x^3+4x^4))`
-/

namespace A037618.P9155895834063459670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 0, 3] [1, -4, 0, -1, 4] n

end

end A037618.P9155895834063459670

namespace A037618

/-- `ogf((2+3x^2)/(1-4x-x^3+4x^4))` -/
def P9155895834063459670.Spec : Prop :=
  ∀ n, P9155895834063459670.a n = A037618 (n + 1)

end A037618

/-! ## A037618.P3522633884610935871

`or(4*a(n-1), A153234(Δ[n²]))` with `a(0)=2`
-/

namespace A037618.P3522633884610935871
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  Int.lor (4 * a (n - 1)) (A153234 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat)

end

end A037618.P3522633884610935871

namespace A037618

/-- `or(4*a(n-1), A153234(Δ[n²]))` -/
def P3522633884610935871.Spec : Prop :=
  ∀ n, P3522633884610935871.a n = A037618 (n + 1)

end A037618

/-! ## A037618.P430819078225719942

`gcd(2, n%3)+4*a(n-1)-A102283(n)` with `a(0)=2`
-/

namespace A037618.P430819078225719942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  (Nat.gcd 2 (n % 3) : ℤ) + 4 * a (n - 1) - A102283 n

end

end A037618.P430819078225719942

namespace A037618

/-- `gcd(2, n%3)+4*a(n-1)-A102283(n)` -/
def P430819078225719942.Spec : Prop :=
  ∀ n, P430819078225719942.a n = A037618 (n + 1)

end A037618

/-! ## A037618.P4898827971887954051

`∑[A204418(n)+A020989(n)]`
-/

namespace A037618.P4898827971887954051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204418 n + A020989 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037618.P4898827971887954051

namespace A037618

/-- `∑[A204418(n)+A020989(n)]` -/
def P4898827971887954051.Spec : Prop :=
  ∀ n, P4898827971887954051.a n = A037618 (n + 1)

end A037618

/-! ## A037618.P14089200451515274180

`A378499(n+1)+A000302(n)`
-/

namespace A037618.P14089200451515274180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378499 (n + 1) + A000302 n

end

end A037618.P14089200451515274180

namespace A037618

/-- `A378499(n+1)+A000302(n)` -/
def P14089200451515274180.Spec : Prop :=
  ∀ n, P14089200451515274180.a n = A037618 (n + 1)

end A037618

/-! ## A037618.P12107607079011566199

`A387843(n)+A378502(n+1)`
-/

namespace A037618.P12107607079011566199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387843 n + A378502 (n + 1)

end

end A037618.P12107607079011566199

namespace A037618

/-- `A387843(n)+A378502(n+1)` -/
def P12107607079011566199.Spec : Prop :=
  ∀ n, P12107607079011566199.a n = A037618 (n + 1)

end A037618

/-! ## A037618.P2089793365338289800

`A387868(n)+A378497(n+1)`
-/

namespace A037618.P2089793365338289800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387868 n + A378497 (n + 1)

end

end A037618.P2089793365338289800

namespace A037618

/-- `A387868(n)+A378497(n+1)` -/
def P2089793365338289800.Spec : Prop :=
  ∀ n, P2089793365338289800.a n = A037618 (n + 1)

end A037618

/-! ## A037618.P13534862753898455431

`A037569(n+1)-A178872(n)`
-/

namespace A037618.P13534862753898455431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037569 (n + 1) - A178872 n

end

end A037618.P13534862753898455431

namespace A037618

/-- `A037569(n+1)-A178872(n)` -/
def P13534862753898455431.Spec : Prop :=
  ∀ n, P13534862753898455431.a n = A037618 (n + 1)

end A037618

/-! ## A037618.P828868339315283050

`xor(A164346(n), A378499(n+1))`
-/

namespace A037618.P828868339315283050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A164346 n) (A378499 (n + 1))

end

end A037618.P828868339315283050

namespace A037618

/-- `xor(A164346(n), A378499(n+1))` -/
def P828868339315283050.Spec : Prop :=
  ∀ n, P828868339315283050.a n = A037618 (n + 1)

end A037618

/-! ## A037618.P6133358052838598025

`A037497(n+1)+A033122(n+1)`
-/

namespace A037618.P6133358052838598025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037497 (n + 1) + A033122 (n + 1)

end

end A037618.P6133358052838598025

namespace A037618

/-- `A037497(n+1)+A033122(n+1)` -/
def P6133358052838598025.Spec : Prop :=
  ∀ n, P6133358052838598025.a n = A037618 (n + 1)

end A037618

/-! ## A037618.P18066195603957249615

`A037590(n+1)+A033140(n+1)`
-/

namespace A037618.P18066195603957249615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037590 (n + 1) + A033140 (n + 1)

end

end A037618.P18066195603957249615

namespace A037618

/-- `A037590(n+1)+A033140(n+1)` -/
def P18066195603957249615.Spec : Prop :=
  ∀ n, P18066195603957249615.a n = A037618 (n + 1)

end A037618

/-! ## A037618.P5749025200033111282

`A037561(n+1)-2*A178872(n)`
-/

namespace A037618.P5749025200033111282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037561 (n + 1) - 2 * A178872 n

end

end A037618.P5749025200033111282

namespace A037618

/-- `A037561(n+1)-2*A178872(n)` -/
def P5749025200033111282.Spec : Prop :=
  ∀ n, P5749025200033111282.a n = A037618 (n + 1)

end A037618

/-! ## A037618.P11386378621967861897

`xor(A033122(n+1), A037653(n+1))`
-/

namespace A037618.P11386378621967861897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A033122 (n + 1)) (A037653 (n + 1))

end

end A037618.P11386378621967861897

namespace A037618

/-- `xor(A033122(n+1), A037653(n+1))` -/
def P11386378621967861897.Spec : Prop :=
  ∀ n, P11386378621967861897.a n = A037618 (n + 1)

end A037618

/-! ## A037618.P17041921357718519379

`xor(A037497(n+1), A037646(n+1))`
-/

namespace A037618.P17041921357718519379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A037497 (n + 1)) (A037646 (n + 1))

end

end A037618.P17041921357718519379

namespace A037618

/-- `xor(A037497(n+1), A037646(n+1))` -/
def P17041921357718519379.Spec : Prop :=
  ∀ n, P17041921357718519379.a n = A037618 (n + 1)

end A037618

/-! ## A037618.P14234297261564139035

`xor(A037604(n+1), A037667(n+1))`
-/

namespace A037618.P14234297261564139035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A037604 (n + 1)) (A037667 (n + 1))

end

end A037618.P14234297261564139035

namespace A037618

/-- `xor(A037604(n+1), A037667(n+1))` -/
def P14234297261564139035.Spec : Prop :=
  ∀ n, P14234297261564139035.a n = A037618 (n + 1)

end A037618

/-! ## A037618.P14842869295621622528

`A033138(2*n+1)+A033122(n+1)`
-/

namespace A037618.P14842869295621622528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033138 (2 * n + 1) + A033122 (n + 1)

end

end A037618.P14842869295621622528

namespace A037618

/-- `A033138(2*n+1)+A033122(n+1)` -/
def P14842869295621622528.Spec : Prop :=
  ∀ n, P14842869295621622528.a n = A037618 (n + 1)

end A037618

/-! ## A037618.P15922725246822575651

`A277936(2*n+1)-A037597(n+1)`
-/

namespace A037618.P15922725246822575651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277936 (2 * n + 1) - A037597 (n + 1)

end

end A037618.P15922725246822575651

namespace A037618

/-- `A277936(2*n+1)-A037597(n+1)` -/
def P15922725246822575651.Spec : Prop :=
  ∀ n, P15922725246822575651.a n = A037618 (n + 1)

end A037618

/-! ## A037618.P9217329144457334744

`A131666(2*n+3)+A002450(n+1)`
-/

namespace A037618.P9217329144457334744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131666 (2 * n + 3) + A002450 (n + 1)

end

end A037618.P9217329144457334744

namespace A037618

/-- `A131666(2*n+3)+A002450(n+1)` -/
def P9217329144457334744.Spec : Prop :=
  ∀ n, P9217329144457334744.a n = A037618 (n + 1)

end A037618

/-! ## A037618.P13781431771665415545

`A131666(2*n+3)+A097074(2*n)`
-/

namespace A037618.P13781431771665415545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131666 (2 * n + 3) + A097074 (2 * n)

end

end A037618.P13781431771665415545

namespace A037618

/-- `A131666(2*n+3)+A097074(2*n)` -/
def P13781431771665415545.Spec : Prop :=
  ∀ n, P13781431771665415545.a n = A037618 (n + 1)

end A037618

/-!
# A037619: Base 5 digits are, in order, the first n terms of the periodic sequence with initial period 2,0,3.

The programs for A037619, the canonical program `A037619.P18037895035531182528` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037619 has offset 1).

The definition of A037619 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 143 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A037619.P11197709145952645458

`ogf((2+3x^2)/(1-5x-x^3+5x^4))`
-/

namespace A037619.P11197709145952645458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 0, 3] [1, -5, 0, -1, 5] n

end

end A037619.P11197709145952645458

namespace A037619

/-- `ogf((2+3x^2)/(1-5x-x^3+5x^4))` -/
def P11197709145952645458.Spec : Prop :=
  ∀ n, P11197709145952645458.a n = A037619 (n + 1)

end A037619

/-! ## A037619.P18037895035531182528

`A037591(n+1)+A033141(n+1)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A037619

/-- `A037591(n+1)+A033141(n+1)` -/
def P18037895035531182528.Spec : Prop :=
  ∀ n, P18037895035531182528.a n = A037619 (n + 1)

theorem P18037895035531182528.correct : P18037895035531182528.Spec := by
  intro n
  simp only [A037619, Nat.add_sub_cancel]

end A037619

/-! ## A037619.P7579714761732151334

`2*A037570(n+1)-A037562(n+1)`
-/

namespace A037619.P7579714761732151334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A037570 (n + 1) - A037562 (n + 1)

end

end A037619.P7579714761732151334

namespace A037619

/-- `2*A037570(n+1)-A037562(n+1)` -/
def P7579714761732151334.Spec : Prop :=
  ∀ n, P7579714761732151334.a n = A037619 (n + 1)

end A037619

/-! ## A037619.P17944012618714109113

`3*A033123(n+1)-A033141(n+1)`
-/

namespace A037619.P17944012618714109113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A033123 (n + 1) - A033141 (n + 1)

end

end A037619.P17944012618714109113

namespace A037619

/-- `3*A033123(n+1)-A033141(n+1)` -/
def P17944012618714109113.Spec : Prop :=
  ∀ n, P17944012618714109113.a n = A037619 (n + 1)

end A037619

/-! ## A037619.P14832140055190366728

`A037514(n+1)+A037530(n+1)-A033132(n+1)`
-/

namespace A037619.P14832140055190366728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037514 (n + 1) + (A037530 (n + 1) - A033132 (n + 1))

end

end A037619.P14832140055190366728

namespace A037619

/-- `A037514(n+1)+A037530(n+1)-A033132(n+1)` -/
def P14832140055190366728.Spec : Prop :=
  ∀ n, P14832140055190366728.a n = A037619 (n + 1)

end A037619

/-! ## A037619.P12057471844553194494

`A037514(n+1)+A037591(n+1)-A033123(n+1)`
-/

namespace A037619.P12057471844553194494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037514 (n + 1) + (A037591 (n + 1) - A033123 (n + 1))

end

end A037619.P12057471844553194494

namespace A037619

/-- `A037514(n+1)+A037591(n+1)-A033123(n+1)` -/
def P12057471844553194494.Spec : Prop :=
  ∀ n, P12057471844553194494.a n = A037619 (n + 1)

end A037619

/-! ## A037619.P14843579653960643630

`A037591(n+1)+A037626(n+1)-A037598(n+1)`
-/

namespace A037619.P14843579653960643630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037591 (n + 1) + (A037626 (n + 1) - A037598 (n + 1))

end

end A037619.P14843579653960643630

namespace A037619

/-- `A037591(n+1)+A037626(n+1)-A037598(n+1)` -/
def P14843579653960643630.Spec : Prop :=
  ∀ n, P14843579653960643630.a n = A037619 (n + 1)

theorem P14843579653960643630.correct : P14843579653960643630.Spec := by
  intro n
  simp only [A037619, Nat.add_sub_cancel, A037619.P14843579653960643630.a, A037619.P18037895035531182528.a, A033141, A033141.P11305019978706514664.a, A037591, A037591.P17676027445311115704.a, A037598, A037598.P14435589116521687136.f1, A037598.P14435589116521687136.a, A037626, A037626.P12681275956258568283.a, A037554, A037554.P11989371830114067518.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A037619

/-!
# A037620: Base 6 digits are, in order, the first n terms of the periodic sequence with initial period 2,0,3.

The programs for A037620, the canonical program `A037620.P1509469956737047497` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037620 has offset 1).

The definition of A037620 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 129 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A037620.P11096891453956906968

`ogf((2+3x^2)/(1-6x-x^3+6x^4))`
-/

namespace A037620.P11096891453956906968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 0, 3] [1, -6, 0, -1, 6] n

end

end A037620.P11096891453956906968

namespace A037620

/-- `ogf((2+3x^2)/(1-6x-x^3+6x^4))` -/
def P11096891453956906968.Spec : Prop :=
  ∀ n, P11096891453956906968.a n = A037620 (n + 1)

end A037620

/-! ## A037620.P1509469956737047497

`ceil(3/2*A037547(n+1))`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A037620

/-- `ceil(3/2*A037547(n+1))` -/
def P1509469956737047497.Spec : Prop :=
  ∀ n, P1509469956737047497.a n = A037620 (n + 1)

theorem P1509469956737047497.correct : P1509469956737047497.Spec := by
  intro n
  simp only [A037620, Nat.add_sub_cancel]

end A037620

/-! ## A037620.P7799282941572443925

`A037499(n+1)+A033124(n+1)`
-/

namespace A037620.P7799282941572443925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037499 (n + 1) + A033124 (n + 1)

end

end A037620.P7799282941572443925

namespace A037620

/-- `A037499(n+1)+A033124(n+1)` -/
def P7799282941572443925.Spec : Prop :=
  ∀ n, P7799282941572443925.a n = A037620 (n + 1)

end A037620

/-! ## A037620.P13467058006474160343

`A037592(n+1)+A033142(n+1)`
-/

namespace A037620.P13467058006474160343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037592 (n + 1) + A033142 (n + 1)

end

end A037620.P13467058006474160343

namespace A037620

/-- `A037592(n+1)+A033142(n+1)` -/
def P13467058006474160343.Spec : Prop :=
  ∀ n, P13467058006474160343.a n = A037620 (n + 1)

end A037620

/-! ## A037620.P17407913509704540167

`A033124(n+1)+∑[6*a(n-1)-A061347(n+1)]` with `a(0)=1`
-/

namespace A037620.P17407913509704540167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  6 * f1 (n - 1) - A061347 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033124 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037620.P17407913509704540167

namespace A037620

/-- `A033124(n+1)+∑[6*a(n-1)-A061347(n+1)]` -/
def P17407913509704540167.Spec : Prop :=
  ∀ n, P17407913509704540167.a n = A037620 (n + 1)

end A037620

/-! ## A037620.P6788014593824441877

`A037515(n+1)+A037531(n+1)-A033133(n+1)`
-/

namespace A037620.P6788014593824441877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037515 (n + 1) + (A037531 (n + 1) - A033133 (n + 1))

end

end A037620.P6788014593824441877

namespace A037620

/-- `A037515(n+1)+A037531(n+1)-A033133(n+1)` -/
def P6788014593824441877.Spec : Prop :=
  ∀ n, P6788014593824441877.a n = A037620 (n + 1)

end A037620

/-! ## A037620.P301183862857420063

`A037571(n+1)+A037571(n+1)-A037563(n+1)`
-/

namespace A037620.P301183862857420063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037571 (n + 1) + (A037571 (n + 1) - A037563 (n + 1))

end

end A037620.P301183862857420063

namespace A037620

/-- `A037571(n+1)+A037571(n+1)-A037563(n+1)` -/
def P301183862857420063.Spec : Prop :=
  ∀ n, P301183862857420063.a n = A037620 (n + 1)

end A037620

/-! ## A037620.P2693409394565404980

`2*A037571(n+1)-A037563(n+1)`
-/

namespace A037620.P2693409394565404980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A037571 (n + 1) - A037563 (n + 1)

end

end A037620.P2693409394565404980

namespace A037620

/-- `2*A037571(n+1)-A037563(n+1)` -/
def P2693409394565404980.Spec : Prop :=
  ∀ n, P2693409394565404980.a n = A037620 (n + 1)

end A037620

/-! ## A037620.P9347490740561731250

`A037547(n+1)+A037655(n+1)-A037563(n+1)`
-/

namespace A037620.P9347490740561731250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037547 (n + 1) + (A037655 (n + 1) - A037563 (n + 1))

end

end A037620.P9347490740561731250

namespace A037620

/-- `A037547(n+1)+A037655(n+1)-A037563(n+1)` -/
def P9347490740561731250.Spec : Prop :=
  ∀ n, P9347490740561731250.a n = A037620 (n + 1)

end A037620

/-! ## A037620.P6046079225960624488

`A037571(n+1)+Δ[A037555(n+1)-A037571(n+1)]`
-/

namespace A037620.P6046079225960624488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037555 (n + 1) - A037571 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037571 (n + 1) + (f1 (n + 1) - f1 n)

end

end A037620.P6046079225960624488

namespace A037620

/-- `A037571(n+1)+Δ[A037555(n+1)-A037571(n+1)]` -/
def P6046079225960624488.Spec : Prop :=
  ∀ n, P6046079225960624488.a n = A037620 (n + 1)

end A037620

/-!
# A037621: Base 7 digits are, in order, the first n terms of the periodic sequence with initial period 2,0,3.

The programs for A037621, the canonical program `A037621.P12244379371173673703` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037621 has offset 1).

The definition of A037621 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 118 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A037621.P12244379371173673703

`A037500(n+1)+A033125(n+1)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A037621

/-- `A037500(n+1)+A033125(n+1)` -/
def P12244379371173673703.Spec : Prop :=
  ∀ n, P12244379371173673703.a n = A037621 (n + 1)

theorem P12244379371173673703.correct : P12244379371173673703.Spec := by
  intro n
  simp only [A037621, Nat.add_sub_cancel]

end A037621

/-! ## A037621.P6982976417903443275

`A120741(n+1)-A037600(n+1)`
-/

namespace A037621.P6982976417903443275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120741 (n + 1) - A037600 (n + 1)

end

end A037621.P6982976417903443275

namespace A037621

/-- `A120741(n+1)-A037600(n+1)` -/
def P6982976417903443275.Spec : Prop :=
  ∀ n, P6982976417903443275.a n = A037621 (n + 1)

end A037621

/-! ## A037621.P12930745200950082187

`2*A037572(n+1)-A037564(n+1)`
-/

namespace A037621.P12930745200950082187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A037572 (n + 1) - A037564 (n + 1)

end

end A037621.P12930745200950082187

namespace A037621

/-- `2*A037572(n+1)-A037564(n+1)` -/
def P12930745200950082187.Spec : Prop :=
  ∀ n, P12930745200950082187.a n = A037621 (n + 1)

end A037621

/-! ## A037621.P14368051833615407183

`5*A033125(n+1)-A037656(n+1)`
-/

namespace A037621.P14368051833615407183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A033125 (n + 1) - A037656 (n + 1)

end

end A037621.P14368051833615407183

namespace A037621

/-- `5*A033125(n+1)-A037656(n+1)` -/
def P14368051833615407183.Spec : Prop :=
  ∀ n, P14368051833615407183.a n = A037621 (n + 1)

end A037621

/-! ## A037621.P4201160058358242263

`A037593(n+1)+A037628(n+1)-A037600(n+1)`
-/

namespace A037621.P4201160058358242263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037593 (n + 1) + (A037628 (n + 1) - A037600 (n + 1))

end

end A037621.P4201160058358242263

namespace A037621

/-- `A037593(n+1)+A037628(n+1)-A037600(n+1)` -/
def P4201160058358242263.Spec : Prop :=
  ∀ n, P4201160058358242263.a n = A037621 (n + 1)

end A037621

/-! ## A037621.P13137725019369441005

`A037614(n+1)+A037656(n+1)-A037642(n+1)`
-/

namespace A037621.P13137725019369441005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037614 (n + 1) + (A037656 (n + 1) - A037642 (n + 1))

end

end A037621.P13137725019369441005

namespace A037621

/-- `A037614(n+1)+A037656(n+1)-A037642(n+1)` -/
def P13137725019369441005.Spec : Prop :=
  ∀ n, P13137725019369441005.a n = A037621 (n + 1)

end A037621

/-!
# A037622: Base 8 digits are, in order, the first n terms of the periodic sequence with initial period 2,0,3.

The programs for A037622, the canonical program `A037622.P16795863825706726991` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037622 has offset 1).

The definition of A037622 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A037622.P16795863825706726991

`A037501(n+1)+A033126(n+1)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A037622

/-- `A037501(n+1)+A033126(n+1)` -/
def P16795863825706726991.Spec : Prop :=
  ∀ n, P16795863825706726991.a n = A037622 (n + 1)

theorem P16795863825706726991.correct : P16795863825706726991.Spec := by
  intro n
  simp only [A037622, Nat.add_sub_cancel]

end A037622

/-! ## A037622.P11178503563721089566

`A037594(n+1)+A033144(n+1)`
-/

namespace A037622.P11178503563721089566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037594 (n + 1) + A033144 (n + 1)

end

end A037622.P11178503563721089566

namespace A037622

/-- `A037594(n+1)+A033144(n+1)` -/
def P11178503563721089566.Spec : Prop :=
  ∀ n, P11178503563721089566.a n = A037622 (n + 1)

end A037622

/-! ## A037622.P5266949995839136466

`xor(A037501(n+1), A037650(n+1))`
-/

namespace A037622.P5266949995839136466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A037501 (n + 1)) (A037650 (n + 1))

end

end A037622.P5266949995839136466

namespace A037622

/-- `xor(A037501(n+1), A037650(n+1))` -/
def P5266949995839136466.Spec : Prop :=
  ∀ n, P5266949995839136466.a n = A037622 (n + 1)

end A037622

/-! ## A037622.P18143415224855896274

`2*A037573(n+1)-A037565(n+1)`
-/

namespace A037622.P18143415224855896274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A037573 (n + 1) - A037565 (n + 1)

end

end A037622.P18143415224855896274

namespace A037622

/-- `2*A037573(n+1)-A037565(n+1)` -/
def P18143415224855896274.Spec : Prop :=
  ∀ n, P18143415224855896274.a n = A037622 (n + 1)

end A037622

/-! ## A037622.P16889916812739121142

`or(2*A033126(n+1), A037517(n+1))`
-/

namespace A037622.P16889916812739121142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (2 * A033126 (n + 1)) (A037517 (n + 1))

end

end A037622.P16889916812739121142

namespace A037622

/-- `or(2*A033126(n+1), A037517(n+1))` -/
def P16889916812739121142.Spec : Prop :=
  ∀ n, P16889916812739121142.a n = A037622 (n + 1)

end A037622

/-! ## A037622.P12722311626386750391

`A037501(n+1)+A037557(n+1)-A033135(n+1)`
-/

namespace A037622.P12722311626386750391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037501 (n + 1) + (A037557 (n + 1) - A033135 (n + 1))

end

end A037622.P12722311626386750391

namespace A037622

/-- `A037501(n+1)+A037557(n+1)-A033135(n+1)` -/
def P12722311626386750391.Spec : Prop :=
  ∀ n, P12722311626386750391.a n = A037622 (n + 1)

end A037622

/-! ## A037622.P11738146706490649590

`A037533(n+1)+A037650(n+1)-A037525(n+1)`
-/

namespace A037622.P11738146706490649590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037533 (n + 1) + (A037650 (n + 1) - A037525 (n + 1))

end

end A037622.P11738146706490649590

namespace A037622

/-- `A037533(n+1)+A037650(n+1)-A037525(n+1)` -/
def P11738146706490649590.Spec : Prop :=
  ∀ n, P11738146706490649590.a n = A037622 (n + 1)

end A037622

/-! ## A037622.P7874935766426383249

`A037594(n+1)+and(A037594(n+1), A037601(n+1))`
-/

namespace A037622.P7874935766426383249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037594 (n + 1) + Int.land (A037594 (n + 1)) (A037601 (n + 1))

end

end A037622.P7874935766426383249

namespace A037622

/-- `A037594(n+1)+and(A037594(n+1), A037601(n+1))` -/
def P7874935766426383249.Spec : Prop :=
  ∀ n, P7874935766426383249.a n = A037622 (n + 1)

end A037622

/-! ## A037622.P17779973407245942782

`or(A033135(n+1), A037636(n+1))-A033135(n+1)`
-/

namespace A037622.P17779973407245942782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A033135 (n + 1)) (A037636 (n + 1)) - A033135 (n + 1)

end

end A037622.P17779973407245942782

namespace A037622

/-- `or(A033135(n+1), A037636(n+1))-A033135(n+1)` -/
def P17779973407245942782.Spec : Prop :=
  ∀ n, P17779973407245942782.a n = A037622 (n + 1)

end A037622

/-! ## A037622.P9693175308714900278

`xor(A037573(n+1)+A033135(n+1), A037541(n+1))`
-/

namespace A037622.P9693175308714900278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A037573 (n + 1) + A033135 (n + 1)) (A037541 (n + 1))

end

end A037622.P9693175308714900278

namespace A037622

/-- `xor(A037573(n+1)+A033135(n+1), A037541(n+1))` -/
def P9693175308714900278.Spec : Prop :=
  ∀ n, P9693175308714900278.a n = A037622 (n + 1)

end A037622

/-! ## A037622.P17259064941819734374

`xor(A037533(n+1)+A037525(n+1), A037541(n+1))`
-/

namespace A037622.P17259064941819734374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A037533 (n + 1) + A037525 (n + 1)) (A037541 (n + 1))

end

end A037622.P17259064941819734374

namespace A037622

/-- `xor(A037533(n+1)+A037525(n+1), A037541(n+1))` -/
def P17259064941819734374.Spec : Prop :=
  ∀ n, P17259064941819734374.a n = A037622 (n + 1)

end A037622

/-! ## A037622.P6755516476648084219

`xor(A037541(n+1)+A037517(n+1), A037541(n+1))`
-/

namespace A037622.P6755516476648084219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A037541 (n + 1) + A037517 (n + 1)) (A037541 (n + 1))

end

end A037622.P6755516476648084219

namespace A037622

/-- `xor(A037541(n+1)+A037517(n+1), A037541(n+1))` -/
def P6755516476648084219.Spec : Prop :=
  ∀ n, P6755516476648084219.a n = A037622 (n + 1)

end A037622

/-!
# A037623: Base 9 digits are, in order, the first n terms of the periodic sequence with initial period 2,0,3.

The programs for A037623, the canonical program `A037623.P7093965290696109116` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037623 has offset 1).

The definition of A037623 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A037623.P7093965290696109116

`∑[xor(9*a(n-1), A010882(n))]` with `a(0)=2`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A037623

/-- `∑[xor(9*a(n-1), A010882(n))]` -/
def P7093965290696109116.Spec : Prop :=
  ∀ n, P7093965290696109116.a n = A037623 (n + 1)

theorem P7093965290696109116.correct : P7093965290696109116.Spec := by
  intro n
  simp only [A037623, Nat.add_sub_cancel]

end A037623

/-! ## A037623.P16979962352243883417

`A037502(n+1)+A033127(n+1)`
-/

namespace A037623.P16979962352243883417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037502 (n + 1) + A033127 (n + 1)

end

end A037623.P16979962352243883417

namespace A037623

/-- `A037502(n+1)+A033127(n+1)` -/
def P16979962352243883417.Spec : Prop :=
  ∀ n, P16979962352243883417.a n = A037623 (n + 1)

end A037623

/-! ## A037623.P17814016014030244843

`A033145(n+1)+A033139(2*n+1)`
-/

namespace A037623.P17814016014030244843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033145 (n + 1) + A033139 (2 * n + 1)

end

end A037623.P17814016014030244843

namespace A037623

/-- `A033145(n+1)+A033139(2*n+1)` -/
def P17814016014030244843.Spec : Prop :=
  ∀ n, P17814016014030244843.a n = A037623 (n + 1)

end A037623

/-! ## A037623.P8286640502923508825

`2*A037574(n+1)-A037566(n+1)`
-/

namespace A037623.P8286640502923508825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A037574 (n + 1) - A037566 (n + 1)

end

end A037623.P8286640502923508825

namespace A037623

/-- `2*A037574(n+1)-A037566(n+1)` -/
def P8286640502923508825.Spec : Prop :=
  ∀ n, P8286640502923508825.a n = A037623 (n + 1)

end A037623

/-! ## A037623.P18241550788953070225

`3*A033127(n+1)-A033145(n+1)`
-/

namespace A037623.P18241550788953070225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A033127 (n + 1) - A033145 (n + 1)

end

end A037623.P18241550788953070225

namespace A037623

/-- `3*A033127(n+1)-A033145(n+1)` -/
def P18241550788953070225.Spec : Prop :=
  ∀ n, P18241550788953070225.a n = A037623 (n + 1)

end A037623

/-! ## A037623.P11830681718544143258

`round(A037616(n+1)+A037616(n+1)/2)`
-/

namespace A037623.P11830681718544143258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A037616 (n + 1) : ℚ) + (A037616 (n + 1) : ℚ) / 2)

end

end A037623.P11830681718544143258

namespace A037623

/-- `round(A037616(n+1)+A037616(n+1)/2)` -/
def P11830681718544143258.Spec : Prop :=
  ∀ n, P11830681718544143258.a n = A037623 (n + 1)

end A037623

/-! ## A037623.P13058521792215667108

`A033127(n+1)+A037574(n+1)-A033136(n+1)`
-/

namespace A037623.P13058521792215667108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033127 (n + 1) + (A037574 (n + 1) - A033136 (n + 1))

end

end A037623.P13058521792215667108

namespace A037623

/-- `A033127(n+1)+A037574(n+1)-A033136(n+1)` -/
def P13058521792215667108.Spec : Prop :=
  ∀ n, P13058521792215667108.a n = A037623 (n + 1)

end A037623

/-! ## A037623.P14090223599494031576

`A037574(n+1)+Δ[A037558(n+1)-A037574(n+1)]`
-/

namespace A037623.P14090223599494031576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037558 (n + 1) - A037574 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037574 (n + 1) + (f1 (n + 1) - f1 n)

end

end A037623.P14090223599494031576

namespace A037623

/-- `A037574(n+1)+Δ[A037558(n+1)-A037574(n+1)]` -/
def P14090223599494031576.Spec : Prop :=
  ∀ n, P14090223599494031576.a n = A037623 (n + 1)

end A037623

/-!
# A037624: Decimal expansion of a(n) is given by the first n terms of the periodic sequence with initial period 2,0,3.

The programs for A037624, the canonical program `A037624.P9815999978925808788` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037624 has offset 1).

The definition of A037624 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A037624.P9815999978925808788

`10*a(n-1)+2-∑[n]%3-A102283(n)` with `a(0)=2`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A037624

/-- `10*a(n-1)+2-∑[n]%3-A102283(n)` -/
def P9815999978925808788.Spec : Prop :=
  ∀ n, P9815999978925808788.a n = A037624 (n + 1)

theorem P9815999978925808788.correct : P9815999978925808788.Spec := by
  intro n
  simp only [A037624, Nat.add_sub_cancel]

end A037624

/-! ## A037624.P8104051851060980772

`A011655(n+2)+a(n-1)+9*a(n-1)+2-(n+1)%3` with `a(0)=2`
-/

namespace A037624.P8104051851060980772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A011655 (n + 2) + (a (n - 1) + (9 * a (n - 1) + (2 - (((n + 1) % 3 : ℕ) : ℤ))))

end

end A037624.P8104051851060980772

namespace A037624

/-- `A011655(n+2)+a(n-1)+9*a(n-1)+2-(n+1)%3` -/
def P8104051851060980772.Spec : Prop :=
  ∀ n, P8104051851060980772.a n = A037624 (n + 1)

end A037624

/-! ## A037624.P16455697670785827178

`A037503(n)+A033128(n)`
-/

namespace A037624.P16455697670785827178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037503 (n + 1) + A033128 (n + 1)

end

end A037624.P16455697670785827178

namespace A037624

/-- `A037503(n)+A033128(n)` -/
def P16455697670785827178.Spec : Prop :=
  ∀ n, P16455697670785827178.a n = A037624 (n + 1)

end A037624

/-! ## A037624.P13687137526849947020

`10*a(n-1)+Δ[A004396(n)]+1-A102283(n)` with `a(0)=2`
-/

namespace A037624.P13687137526849947020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 n

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  10 * a (n - 1) + (f1 (n + 1) - f1 n + 1) - A102283 n

end

end A037624.P13687137526849947020

namespace A037624

/-- `10*a(n-1)+Δ[A004396(n)]+1-A102283(n)` -/
def P13687137526849947020.Spec : Prop :=
  ∀ n, P13687137526849947020.a n = A037624 (n + 1)

end A037624

/-! ## A037624.P1723109804148430790

`10*a(n-1)+A141571(n+1)+1-A102283(n)` with `a(0)=2`
-/

namespace A037624.P1723109804148430790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  10 * a (n - 1) + (A141571 (n + 1) + 1) - A102283 n

end

end A037624.P1723109804148430790

namespace A037624

/-- `10*a(n-1)+A141571(n+1)+1-A102283(n)` -/
def P1723109804148430790.Spec : Prop :=
  ∀ n, P1723109804148430790.a n = A037624 (n + 1)

end A037624

/-!
# A037625: Base 4 digits are, in order, the first n terms of the periodic sequence with initial period 2,3,0.

The programs for A037625, the canonical program `A037625.P3489549200557216245` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037625 has offset 1).

The definition of A037625 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A037625.P3406410935547083636

`ogf((2+3x)/(1-4x-x^3+4x^4))`
-/

namespace A037625.P3406410935547083636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 3] [1, -4, 0, -1, 4] n

end

end A037625.P3406410935547083636

namespace A037625

/-- `ogf((2+3x)/(1-4x-x^3+4x^4))` -/
def P3406410935547083636.Spec : Prop :=
  ∀ n, P3406410935547083636.a n = A037625 (n + 1)

end A037625

/-! ## A037625.P3489549200557216245

`xor(2*(2*a(n-1)+1), n%3)` with `a(0)=2`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A037625

/-- `xor(2*(2*a(n-1)+1), n%3)` -/
def P3489549200557216245.Spec : Prop :=
  ∀ n, (P3489549200557216245.a n : ℤ) = A037625 (n + 1)

theorem P3489549200557216245.correct : P3489549200557216245.Spec := by
  intro n
  simp only [A037625, Nat.add_sub_cancel]

end A037625

/-! ## A037625.P3444170806060239585

`xor(a(n-1), A037632(n+1))` with `a(0)=2`
-/

namespace A037625.P3444170806060239585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  Int.xor (a (n - 1)) (A037632 (n + 1))

end

end A037625.P3444170806060239585

namespace A037625

/-- `xor(a(n-1), A037632(n+1))` -/
def P3444170806060239585.Spec : Prop :=
  ∀ n, P3444170806060239585.a n = A037625 (n + 1)

end A037625

/-! ## A037625.P9366844408246072197

`∑[A037513(n+1)+C(n+1, 2)%3]`
-/

namespace A037625.P9366844408246072197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037513 (n + 1) + ((Nat.choose (n + 1) 2 % 3 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037625.P9366844408246072197

namespace A037625

/-- `∑[A037513(n+1)+C(n+1, 2)%3]` -/
def P9366844408246072197.Spec : Prop :=
  ∀ n, P9366844408246072197.a n = A037625 (n + 1)

end A037625

/-! ## A037625.P17289777246429449429

`A178872(n)+A037561(n+1)`
-/

namespace A037625.P17289777246429449429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178872 n + A037561 (n + 1)

end

end A037625.P17289777246429449429

namespace A037625

/-- `A178872(n)+A037561(n+1)` -/
def P17289777246429449429.Spec : Prop :=
  ∀ n, P17289777246429449429.a n = A037625 (n + 1)

end A037625

/-! ## A037625.P250575679369575638

`∑[or(A011655(n), A037513(n+1))]`
-/

namespace A037625.P250575679369575638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A011655 n) (A037513 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037625.P250575679369575638

namespace A037625

/-- `∑[or(A011655(n), A037513(n+1))]` -/
def P250575679369575638.Spec : Prop :=
  ∀ n, P250575679369575638.a n = A037625 (n + 1)

end A037625

/-! ## A037625.P8799288134790699235

`A037505(n+1)+A033131(n+1)`
-/

namespace A037625.P8799288134790699235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037505 (n + 1) + A033131 (n + 1)

end

end A037625.P8799288134790699235

namespace A037625

/-- `A037505(n+1)+A033131(n+1)` -/
def P8799288134790699235.Spec : Prop :=
  ∀ n, P8799288134790699235.a n = A037625 (n + 1)

end A037625

/-! ## A037625.P10038474227441649358

`A037597(n+1)+A033140(n+1)`
-/

namespace A037625.P10038474227441649358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037597 (n + 1) + A033140 (n + 1)

end

end A037625.P10038474227441649358

namespace A037625

/-- `A037597(n+1)+A033140(n+1)` -/
def P10038474227441649358.Spec : Prop :=
  ∀ n, P10038474227441649358.a n = A037625 (n + 1)

end A037625

/-! ## A037625.P15497898336294517876

`A037569(n+1)+2*A178872(n)`
-/

namespace A037625.P15497898336294517876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037569 (n + 1) + 2 * A178872 n

end

end A037625.P15497898336294517876

namespace A037625

/-- `A037569(n+1)+2*A178872(n)` -/
def P15497898336294517876.Spec : Prop :=
  ∀ n, P15497898336294517876.a n = A037625 (n + 1)

end A037625

/-! ## A037625.P322425885460646499

`xor(A033131(n+1), A037667(n+1))`
-/

namespace A037625.P322425885460646499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A033131 (n + 1)) (A037667 (n + 1))

end

end A037625.P322425885460646499

namespace A037625

/-- `xor(A033131(n+1), A037667(n+1))` -/
def P322425885460646499.Spec : Prop :=
  ∀ n, P322425885460646499.a n = A037625 (n + 1)

end A037625

/-! ## A037625.P2012030278280462964

`xor(A037505(n+1), A037660(n+1))`
-/

namespace A037625.P2012030278280462964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A037505 (n + 1)) (A037660 (n + 1))

end

end A037625.P2012030278280462964

namespace A037625

/-- `xor(A037505(n+1), A037660(n+1))` -/
def P2012030278280462964.Spec : Prop :=
  ∀ n, P2012030278280462964.a n = A037625 (n + 1)

end A037625

/-! ## A037625.P5701472477626340574

`xor(A037611(n+1), A037653(n+1))`
-/

namespace A037625.P5701472477626340574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A037611 (n + 1)) (A037653 (n + 1))

end

end A037625.P5701472477626340574

namespace A037625

/-- `xor(A037611(n+1), A037653(n+1))` -/
def P5701472477626340574.Spec : Prop :=
  ∀ n, P5701472477626340574.a n = A037625 (n + 1)

end A037625

/-! ## A037625.P18388906816978276805

`A037639(n+1)+A178872(n)-∑[A178872(n)]`
-/

namespace A037625.P18388906816978276805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178872 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037639 (n + 1) + (A178872 n - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A037625.P18388906816978276805

namespace A037625

/-- `A037639(n+1)+A178872(n)-∑[A178872(n)]` -/
def P18388906816978276805.Spec : Prop :=
  ∀ n, P18388906816978276805.a n = A037625 (n + 1)

end A037625

/-! ## A037625.P8901588624089149694

`A037561(n+1)+A037561(n+1)-A037569(n+1)`
-/

namespace A037625.P8901588624089149694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037561 (n + 1) + (A037561 (n + 1) - A037569 (n + 1))

end

end A037625.P8901588624089149694

namespace A037625

/-- `A037561(n+1)+A037561(n+1)-A037569(n+1)` -/
def P8901588624089149694.Spec : Prop :=
  ∀ n, P8901588624089149694.a n = A037625 (n + 1)

end A037625

/-! ## A037625.P1512737034491110695

`A037597(n+1)+and(A037590(n+1), A037597(n+1))`
-/

namespace A037625.P1512737034491110695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037597 (n + 1) + Int.land (A037590 (n + 1)) (A037597 (n + 1))

end

end A037625.P1512737034491110695

namespace A037625

/-- `A037597(n+1)+and(A037590(n+1), A037597(n+1))` -/
def P1512737034491110695.Spec : Prop :=
  ∀ n, P1512737034491110695.a n = A037625 (n + 1)

end A037625

/-! ## A037625.P15295109997855632250

`xor(A037529(n+1)+A037521(n+1), A037529(n+1))`
-/

namespace A037625.P15295109997855632250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A037529 (n + 1) + A037521 (n + 1)) (A037529 (n + 1))

end

end A037625.P15295109997855632250

namespace A037625

/-- `xor(A037529(n+1)+A037521(n+1), A037529(n+1))` -/
def P15295109997855632250.Spec : Prop :=
  ∀ n, P15295109997855632250.a n = A037625 (n + 1)

end A037625

/-! ## A037625.P12745427851992588082

`xor(A037667(n+1)-A037521(n+1), A037667(n+1))`
-/

namespace A037625.P12745427851992588082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A037667 (n + 1) - A037521 (n + 1)) (A037667 (n + 1))

end

end A037625.P12745427851992588082

namespace A037625

/-- `xor(A037667(n+1)-A037521(n+1), A037667(n+1))` -/
def P12745427851992588082.Spec : Prop :=
  ∀ n, P12745427851992588082.a n = A037625 (n + 1)

end A037625

/-! ## A037625.P2839024937522457454

`A037604(n+2)-A033140(n+2)`
-/

namespace A037625.P2839024937522457454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037604 (n + 2) - A033140 (n + 2)

end

end A037625.P2839024937522457454

namespace A037625

/-- `A037604(n+2)-A033140(n+2)` -/
def P2839024937522457454.Spec : Prop :=
  ∀ n, P2839024937522457454.a n = A037625 (n + 1)

end A037625

/-! ## A037625.P14697844408053164189

`2*A037561(n+1)-A037569(n+1)`
-/

namespace A037625.P14697844408053164189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A037561 (n + 1) - A037569 (n + 1)

end

end A037625.P14697844408053164189

namespace A037625

/-- `2*A037561(n+1)-A037569(n+1)` -/
def P14697844408053164189.Spec : Prop :=
  ∀ n, P14697844408053164189.a n = A037625 (n + 1)

end A037625

/-! ## A037625.P5301870630091884753

`xor(2*A033122(n+2), A037561(n+2))`
-/

namespace A037625.P5301870630091884753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (2 * A033122 (n + 2)) (A037561 (n + 2))

end

end A037625.P5301870630091884753

namespace A037625

/-- `xor(2*A033122(n+2), A037561(n+2))` -/
def P5301870630091884753.Spec : Prop :=
  ∀ n, P5301870630091884753.a n = A037625 (n + 1)

end A037625

/-!
# A037626: Base 5 digits are, in order, the first n terms of the periodic sequence with initial period 2,3,0.

The programs for A037626, the canonical program `A037626.P12681275956258568283` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037626 has offset 1).

The definition of A037626 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 143 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A037626.P12074188944077392001

`ogf((2+3x)/(1-5x-x^3+5x^4))`
-/

namespace A037626.P12074188944077392001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 3] [1, -5, 0, -1, 5] n

end

end A037626.P12074188944077392001

namespace A037626

/-- `ogf((2+3x)/(1-5x-x^3+5x^4))` -/
def P12074188944077392001.Spec : Prop :=
  ∀ n, P12074188944077392001.a n = A037626 (n + 1)

end A037626

/-! ## A037626.P12681275956258568283

`A037598(n+1)+A033141(n+1)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A037626

/-- `A037598(n+1)+A033141(n+1)` -/
def P12681275956258568283.Spec : Prop :=
  ∀ n, P12681275956258568283.a n = A037626 (n + 1)

theorem P12681275956258568283.correct : P12681275956258568283.Spec := by
  intro n
  simp only [A037626, Nat.add_sub_cancel]

end A037626

/-! ## A037626.P8282047835490635226

`2*A037562(n+1)-A037570(n+1)`
-/

namespace A037626.P8282047835490635226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A037562 (n + 1) - A037570 (n + 1)

end

end A037626.P8282047835490635226

namespace A037626

/-- `2*A037562(n+1)-A037570(n+1)` -/
def P8282047835490635226.Spec : Prop :=
  ∀ n, P8282047835490635226.a n = A037626 (n + 1)

end A037626

/-! ## A037626.P9243337728648376352

`3*A033132(n+1)-A033141(n+1)`
-/

namespace A037626.P9243337728648376352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A033132 (n + 1) - A033141 (n + 1)

end

end A037626.P9243337728648376352

namespace A037626

/-- `3*A033132(n+1)-A033141(n+1)` -/
def P9243337728648376352.Spec : Prop :=
  ∀ n, P9243337728648376352.a n = A037626 (n + 1)

end A037626

/-! ## A037626.P13688626892835939593

`4*A033132(n+1)-A037522(n+1)`
-/

namespace A037626.P13688626892835939593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A033132 (n + 1) - A037522 (n + 1)

end

end A037626.P13688626892835939593

namespace A037626

/-- `4*A033132(n+1)-A037522(n+1)` -/
def P13688626892835939593.Spec : Prop :=
  ∀ n, P13688626892835939593.a n = A037626 (n + 1)

end A037626

/-! ## A037626.P4118757059178455214

`2*A037530(n+2)-A037514(n+2)`
-/

namespace A037626.P4118757059178455214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A037530 (n + 2) - A037514 (n + 2)

end

end A037626.P4118757059178455214

namespace A037626

/-- `2*A037530(n+2)-A037514(n+2)` -/
def P4118757059178455214.Spec : Prop :=
  ∀ n, P4118757059178455214.a n = A037626 (n + 1)

end A037626

/-! ## A037626.P1230645294469889126

`2*A037546(n+2)-A037562(n+2)`
-/

namespace A037626.P1230645294469889126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A037546 (n + 2) - A037562 (n + 2)

end

end A037626.P1230645294469889126

namespace A037626

/-- `2*A037546(n+2)-A037562(n+2)` -/
def P1230645294469889126.Spec : Prop :=
  ∀ n, P1230645294469889126.a n = A037626 (n + 1)

end A037626

/-! ## A037626.P7623370853712829219

`5*A033132(n+1)-A037668(n+1)`
-/

namespace A037626.P7623370853712829219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A033132 (n + 1) - A037668 (n + 1)

end

end A037626.P7623370853712829219

namespace A037626

/-- `5*A033132(n+1)-A037668(n+1)` -/
def P7623370853712829219.Spec : Prop :=
  ∀ n, P7623370853712829219.a n = A037626 (n + 1)

end A037626

/-! ## A037626.P7785683883476976573

`A037530(n+2)+A037546(n+2)-A037554(n+2)`
-/

namespace A037626.P7785683883476976573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037530 (n + 2) + (A037546 (n + 2) - A037554 (n + 2))

end

end A037626.P7785683883476976573

namespace A037626

/-- `A037530(n+2)+A037546(n+2)-A037554(n+2)` -/
def P7785683883476976573.Spec : Prop :=
  ∀ n, P7785683883476976573.a n = A037626 (n + 1)

end A037626

/-!
# A037627: Base 6 digits are, in order, the first n terms of the periodic sequence with initial period 2,3,0.

The programs for A037627, the canonical program `A037627.P16560465001142239504` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037627 has offset 1).

The definition of A037627 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 128 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A037627.P10938334087472247925

`ogf((2+3x)/(1-6x-x^3+6x^4))`
-/

namespace A037627.P10938334087472247925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 3] [1, -6, 0, -1, 6] n

end

end A037627.P10938334087472247925

namespace A037627

/-- `ogf((2+3x)/(1-6x-x^3+6x^4))` -/
def P10938334087472247925.Spec : Prop :=
  ∀ n, P10938334087472247925.a n = A037627 (n + 1)

end A037627

/-! ## A037627.P17111156513139024391

`A224317(n+1)+6*a(n-1)` with `a(0)=2`
-/

namespace A037627.P17111156513139024391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A224317 (n + 1) + 6 * a (n - 1)

end

end A037627.P17111156513139024391

namespace A037627

/-- `A224317(n+1)+6*a(n-1)` -/
def P17111156513139024391.Spec : Prop :=
  ∀ n, P17111156513139024391.a n = A037627 (n + 1)

end A037627

/-! ## A037627.P16560465001142239504

`A037507(n+1)+A033133(n+1)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A037627

/-- `A037507(n+1)+A033133(n+1)` -/
def P16560465001142239504.Spec : Prop :=
  ∀ n, P16560465001142239504.a n = A037627 (n + 1)

theorem P16560465001142239504.correct : P16560465001142239504.Spec := by
  intro n
  simp only [A037627, Nat.add_sub_cancel]

end A037627

/-! ## A037627.P10979281850247194514

`A037599(n+1)+A033142(n+1)`
-/

namespace A037627.P10979281850247194514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037599 (n + 1) + A033142 (n + 1)

end

end A037627.P10979281850247194514

namespace A037627

/-- `A037599(n+1)+A033142(n+1)` -/
def P10979281850247194514.Spec : Prop :=
  ∀ n, P10979281850247194514.a n = A037627 (n + 1)

end A037627

/-! ## A037627.P4103762757796032761

`A037547(n+2)-Δ[A033133(n+1)]`
-/

namespace A037627.P4103762757796032761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033133 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037547 (n + 2) - (f1 (n + 1) - f1 n)

end

end A037627.P4103762757796032761

namespace A037627

/-- `A037547(n+2)-Δ[A033133(n+1)]` -/
def P4103762757796032761.Spec : Prop :=
  ∀ n, P4103762757796032761.a n = A037627 (n + 1)

end A037627

/-! ## A037627.P16758122792335248130

`2*A037563(n+1)-A037571(n+1)`
-/

namespace A037627.P16758122792335248130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A037563 (n + 1) - A037571 (n + 1)

end

end A037627.P16758122792335248130

namespace A037627

/-- `2*A037563(n+1)-A037571(n+1)` -/
def P16758122792335248130.Spec : Prop :=
  ∀ n, P16758122792335248130.a n = A037627 (n + 1)

end A037627

/-! ## A037627.P1958326619649783703

`3*A033133(n+1)-A033142(n+1)`
-/

namespace A037627.P1958326619649783703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A033133 (n + 1) - A033142 (n + 1)

end

end A037627.P1958326619649783703

namespace A037627

/-- `3*A033133(n+1)-A033142(n+1)` -/
def P1958326619649783703.Spec : Prop :=
  ∀ n, P1958326619649783703.a n = A037627 (n + 1)

end A037627

/-! ## A037627.P9060582259505644679

`2*A037531(n+2)-A037515(n+2)`
-/

namespace A037627.P9060582259505644679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A037531 (n + 2) - A037515 (n + 2)

end

end A037627.P9060582259505644679

namespace A037627

/-- `2*A037531(n+2)-A037515(n+2)` -/
def P9060582259505644679.Spec : Prop :=
  ∀ n, P9060582259505644679.a n = A037627 (n + 1)

end A037627

/-! ## A037627.P12969448239814371463

`A037531(n+2)+A037539(n+2)-A037523(n+2)`
-/

namespace A037627.P12969448239814371463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037531 (n + 2) + (A037539 (n + 2) - A037523 (n + 2))

end

end A037627.P12969448239814371463

namespace A037627

/-- `A037531(n+2)+A037539(n+2)-A037523(n+2)` -/
def P12969448239814371463.Spec : Prop :=
  ∀ n, P12969448239814371463.a n = A037627 (n + 1)

end A037627

/-! ## A037627.P13744799290189859914

`A037547(n+2)+A037547(n+2)-A037563(n+2)`
-/

namespace A037627.P13744799290189859914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037547 (n + 2) + (A037547 (n + 2) - A037563 (n + 2))

end

end A037627.P13744799290189859914

namespace A037627

/-- `A037547(n+2)+A037547(n+2)-A037563(n+2)` -/
def P13744799290189859914.Spec : Prop :=
  ∀ n, P13744799290189859914.a n = A037627 (n + 1)

end A037627

/-! ## A037627.P9262032725369472166

`A037655(n+2)%Δ[A037662(n+1)]`
-/

namespace A037627.P9262032725369472166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037662 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A037655 (n + 2)) (f1 (n + 1) - f1 n)

end

end A037627.P9262032725369472166

namespace A037627

/-- `A037655(n+2)%Δ[A037662(n+1)]` -/
def P9262032725369472166.Spec : Prop :=
  ∀ n, P9262032725369472166.a n = A037627 (n + 1)

end A037627

/-! ## A037627.P230637850677583355

`2*A037547(n+2)-A037563(n+2)`
-/

namespace A037627.P230637850677583355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A037547 (n + 2) - A037563 (n + 2)

end

end A037627.P230637850677583355

namespace A037627

/-- `2*A037547(n+2)-A037563(n+2)` -/
def P230637850677583355.Spec : Prop :=
  ∀ n, P230637850677583355.a n = A037627 (n + 1)

end A037627

/-! ## A037627.P122552968984423695

`A037547(n+2)+A037620(n+2)-A037655(n+2)`
-/

namespace A037627.P122552968984423695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037547 (n + 2) + (A037620 (n + 2) - A037655 (n + 2))

end

end A037627.P122552968984423695

namespace A037627

/-- `A037547(n+2)+A037620(n+2)-A037655(n+2)` -/
def P122552968984423695.Spec : Prop :=
  ∀ n, P122552968984423695.a n = A037627 (n + 1)

end A037627

/-! ## A037627.P2076326129803812593

`A037655(n+1)+Δ[A037655(n+1)-A037662(n+1)]`
-/

namespace A037627.P2076326129803812593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037655 (n + 1) - A037662 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037655 (n + 1) + (f1 (n + 1) - f1 n)

end

end A037627.P2076326129803812593

namespace A037627

/-- `A037655(n+1)+Δ[A037655(n+1)-A037662(n+1)]` -/
def P2076326129803812593.Spec : Prop :=
  ∀ n, P2076326129803812593.a n = A037627 (n + 1)

end A037627

/-!
# A037628: Base 7 digits are, in order, the first n terms of the periodic sequence with initial period 2,3,0.

The programs for A037628, the canonical program `A037628.P14679779907453231846` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037628 has offset 1).

The definition of A037628 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 118 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A037628.P6464013067440085811

`ogf((2+3x)/(1-7x-x^3+7x^4))`
-/

namespace A037628.P6464013067440085811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 3] [1, -7, 0, -1, 7] n

end

end A037628.P6464013067440085811

namespace A037628

/-- `ogf((2+3x)/(1-7x-x^3+7x^4))` -/
def P6464013067440085811.Spec : Prop :=
  ∀ n, P6464013067440085811.a n = A037628 (n + 1)

end A037628

/-! ## A037628.P14679779907453231846

`A037600(n+1)+A033143(n+1)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A037628

/-- `A037600(n+1)+A033143(n+1)` -/
def P14679779907453231846.Spec : Prop :=
  ∀ n, P14679779907453231846.a n = A037628 (n + 1)

theorem P14679779907453231846.correct : P14679779907453231846.Spec := by
  intro n
  simp only [A037628, Nat.add_sub_cancel]

end A037628

/-! ## A037628.P5612156105861415648

`∑[A037663(n+1)-A037593(n+1)]`
-/

namespace A037628.P5612156105861415648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037663 (n + 1) - A037593 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037628.P5612156105861415648

namespace A037628

/-- `∑[A037663(n+1)-A037593(n+1)]` -/
def P5612156105861415648.Spec : Prop :=
  ∀ n, P5612156105861415648.a n = A037628 (n + 1)

end A037628

/-! ## A037628.P17243690567882895001

`2*A037564(n+1)-A037572(n+1)`
-/

namespace A037628.P17243690567882895001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A037564 (n + 1) - A037572 (n + 1)

end

end A037628.P17243690567882895001

namespace A037628

/-- `2*A037564(n+1)-A037572(n+1)` -/
def P17243690567882895001.Spec : Prop :=
  ∀ n, P17243690567882895001.a n = A037628 (n + 1)

end A037628

/-! ## A037628.P6649572791040697940

`3*A033134(n+1)-A033143(n+1)`
-/

namespace A037628.P6649572791040697940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A033134 (n + 1) - A033143 (n + 1)

end

end A037628.P6649572791040697940

namespace A037628

/-- `3*A033134(n+1)-A033143(n+1)` -/
def P6649572791040697940.Spec : Prop :=
  ∀ n, P6649572791040697940.a n = A037628 (n + 1)

end A037628

/-! ## A037628.P7481730267294722992

`5*A033134(n+1)-A037670(n+1)`
-/

namespace A037628.P7481730267294722992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A033134 (n + 1) - A037670 (n + 1)

end

end A037628.P7481730267294722992

namespace A037628

/-- `5*A033134(n+1)-A037670(n+1)` -/
def P7481730267294722992.Spec : Prop :=
  ∀ n, P7481730267294722992.a n = A037628 (n + 1)

end A037628

/-! ## A037628.P10477740602552432067

`A033125(n+1)+A037642(n+1)-A037500(n+1)`
-/

namespace A037628.P10477740602552432067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033125 (n + 1) + (A037642 (n + 1) - A037500 (n + 1))

end

end A037628.P10477740602552432067

namespace A037628

/-- `A033125(n+1)+A037642(n+1)-A037500(n+1)` -/
def P10477740602552432067.Spec : Prop :=
  ∀ n, P10477740602552432067.a n = A037628 (n + 1)

end A037628

/-! ## A037628.P5182250177243980904

`A037540(n+1)+A037564(n+1)-A037532(n+1)`
-/

namespace A037628.P5182250177243980904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037540 (n + 1) + (A037564 (n + 1) - A037532 (n + 1))

end

end A037628.P5182250177243980904

namespace A037628

/-- `A037540(n+1)+A037564(n+1)-A037532(n+1)` -/
def P5182250177243980904.Spec : Prop :=
  ∀ n, P5182250177243980904.a n = A037628 (n + 1)

end A037628

/-! ## A037628.P1945775261442739675

`A037600(n+1)+A037621(n+1)-A037593(n+1)`
-/

namespace A037628.P1945775261442739675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037600 (n + 1) + (A037621 (n + 1) - A037593 (n + 1))

end

end A037628.P1945775261442739675

namespace A037628

/-- `A037600(n+1)+A037621(n+1)-A037593(n+1)` -/
def P1945775261442739675.Spec : Prop :=
  ∀ n, P1945775261442739675.a n = A037628 (n + 1)

end A037628

/-! ## A037628.P9622805401074128485

`A037642(n+1)+A037649(n+1)-A037656(n+1)`
-/

namespace A037628.P9622805401074128485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037642 (n + 1) + (A037649 (n + 1) - A037656 (n + 1))

end

end A037628.P9622805401074128485

namespace A037628

/-- `A037642(n+1)+A037649(n+1)-A037656(n+1)` -/
def P9622805401074128485.Spec : Prop :=
  ∀ n, P9622805401074128485.a n = A037628 (n + 1)

end A037628

/-! ## A037628.P4563936044018163395

`A037635(n+1)+A037670(n+1)%A033125(n+1)`
-/

namespace A037628.P4563936044018163395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037635 (n + 1) + Int.tmod (A037670 (n + 1)) (A033125 (n + 1))

end

end A037628.P4563936044018163395

namespace A037628

/-- `A037635(n+1)+A037670(n+1)%A033125(n+1)` -/
def P4563936044018163395.Spec : Prop :=
  ∀ n, P4563936044018163395.a n = A037628 (n + 1)

end A037628

/-! ## A037628.P7688804491992671977

`2*A037532(n+2)-A037516(n+2)`
-/

namespace A037628.P7688804491992671977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A037532 (n + 2) - A037516 (n + 2)

end

end A037628.P7688804491992671977

namespace A037628

/-- `2*A037532(n+2)-A037516(n+2)` -/
def P7688804491992671977.Spec : Prop :=
  ∀ n, P7688804491992671977.a n = A037628 (n + 1)

end A037628

/-! ## A037628.P17649854972270012879

`2*A037548(n+2)-A037564(n+2)`
-/

namespace A037628.P17649854972270012879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A037548 (n + 2) - A037564 (n + 2)

end

end A037628.P17649854972270012879

namespace A037628

/-- `2*A037548(n+2)-A037564(n+2)` -/
def P17649854972270012879.Spec : Prop :=
  ∀ n, P17649854972270012879.a n = A037628 (n + 1)

end A037628

/-!
# A037629: Base 8 digits are, in order, the first n terms of the periodic sequence with initial period 2,3,0.

The programs for A037629, the canonical program `A037629.P13910407384209085798` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037629 has offset 1).

The definition of A037629 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A037629.P17901071172343861859

`ogf((2+3x)/(1-8x-x^3+8x^4))`
-/

namespace A037629.P17901071172343861859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 3] [1, -8, 0, -1, 8] n

end

end A037629.P17901071172343861859

namespace A037629

/-- `ogf((2+3x)/(1-8x-x^3+8x^4))` -/
def P17901071172343861859.Spec : Prop :=
  ∀ n, P17901071172343861859.a n = A037629 (n + 1)

end A037629

/-! ## A037629.P13910407384209085798

`xor(8*a(n-1)+2-n²%3, (2*n)%3)` with `a(0)=2`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A037629

/-- `xor(8*a(n-1)+2-n²%3, (2*n)%3)` -/
def P13910407384209085798.Spec : Prop :=
  ∀ n, P13910407384209085798.a n = A037629 (n + 1)

theorem P13910407384209085798.correct : P13910407384209085798.Spec := by
  intro n
  simp only [A037629, Nat.add_sub_cancel]

end A037629

/-! ## A037629.P16597070868625346705

`xor(a(n-1), A037636(n+1))` with `a(0)=2`
-/

namespace A037629.P16597070868625346705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  Int.xor (a (n - 1)) (A037636 (n + 1))

end

end A037629.P16597070868625346705

namespace A037629

/-- `xor(a(n-1), A037636(n+1))` -/
def P16597070868625346705.Spec : Prop :=
  ∀ n, P16597070868625346705.a n = A037629 (n + 1)

end A037629

/-! ## A037629.P6880152426859304345

`A037509(n+1)+A033135(n+1)`
-/

namespace A037629.P6880152426859304345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037509 (n + 1) + A033135 (n + 1)

end

end A037629.P6880152426859304345

namespace A037629

/-- `A037509(n+1)+A033135(n+1)` -/
def P6880152426859304345.Spec : Prop :=
  ∀ n, P6880152426859304345.a n = A037629 (n + 1)

end A037629

/-! ## A037629.P12395185788070812541

`A037601(n+1)+A033144(n+1)`
-/

namespace A037629.P12395185788070812541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037601 (n + 1) + A033144 (n + 1)

end

end A037629.P12395185788070812541

namespace A037629

/-- `A037601(n+1)+A033144(n+1)` -/
def P12395185788070812541.Spec : Prop :=
  ∀ n, P12395185788070812541.a n = A037629 (n + 1)

end A037629

/-! ## A037629.P11089802250510414086

`xor(A037509(n+1), A037664(n+1))`
-/

namespace A037629.P11089802250510414086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A037509 (n + 1)) (A037664 (n + 1))

end

end A037629.P11089802250510414086

namespace A037629

/-- `xor(A037509(n+1), A037664(n+1))` -/
def P11089802250510414086.Spec : Prop :=
  ∀ n, P11089802250510414086.a n = A037629 (n + 1)

end A037629

/-! ## A037629.P12342851172297631119

`xor(A037615(n+1), A037657(n+1))`
-/

namespace A037629.P12342851172297631119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A037615 (n + 1)) (A037657 (n + 1))

end

end A037629.P12342851172297631119

namespace A037629

/-- `xor(A037615(n+1), A037657(n+1))` -/
def P12342851172297631119.Spec : Prop :=
  ∀ n, P12342851172297631119.a n = A037629 (n + 1)

end A037629

/-! ## A037629.P1099468925153889507

`2*A037565(n+1)-A037573(n+1)`
-/

namespace A037629.P1099468925153889507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A037565 (n + 1) - A037573 (n + 1)

end

end A037629.P1099468925153889507

namespace A037629

/-- `2*A037565(n+1)-A037573(n+1)` -/
def P1099468925153889507.Spec : Prop :=
  ∀ n, P1099468925153889507.a n = A037629 (n + 1)

end A037629

/-! ## A037629.P10683191137121560891

`4*A033135(n+1)-A037525(n+1)`
-/

namespace A037629.P10683191137121560891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A033135 (n + 1) - A037525 (n + 1)

end

end A037629.P10683191137121560891

namespace A037629

/-- `4*A033135(n+1)-A037525(n+1)` -/
def P10683191137121560891.Spec : Prop :=
  ∀ n, P10683191137121560891.a n = A037629 (n + 1)

end A037629

/-! ## A037629.P7240120887187885518

`and(3*A037533(n+1), A037643(n+1))`
-/

namespace A037629.P7240120887187885518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (3 * A037533 (n + 1)) (A037643 (n + 1))

end

end A037629.P7240120887187885518

namespace A037629

/-- `and(3*A037533(n+1), A037643(n+1))` -/
def P7240120887187885518.Spec : Prop :=
  ∀ n, P7240120887187885518.a n = A037629 (n + 1)

end A037629

/-! ## A037629.P10077142308922921352

`A037601(n+1)+A037608(n+1)-a(n-1)` with `a(0)=2`
-/

namespace A037629.P10077142308922921352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A037601 (n + 1) + (A037608 (n + 1) - a (n - 1))

end

end A037629.P10077142308922921352

namespace A037629

/-- `A037601(n+1)+A037608(n+1)-a(n-1)` -/
def P10077142308922921352.Spec : Prop :=
  ∀ n, P10077142308922921352.a n = A037629 (n + 1)

end A037629

/-! ## A037629.P5440723024943147870

`A037601(n+1)+and(A037594(n+1), A037601(n+1))`
-/

namespace A037629.P5440723024943147870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037601 (n + 1) + Int.land (A037594 (n + 1)) (A037601 (n + 1))

end

end A037629.P5440723024943147870

namespace A037629

/-- `A037601(n+1)+and(A037594(n+1), A037601(n+1))` -/
def P5440723024943147870.Spec : Prop :=
  ∀ n, P5440723024943147870.a n = A037629 (n + 1)

end A037629

/-! ## A037629.P17070729169621227063

`A037601(n+1)+and(A037601(n+1), A037650(n+1))`
-/

namespace A037629.P17070729169621227063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037601 (n + 1) + Int.land (A037601 (n + 1)) (A037650 (n + 1))

end

end A037629.P17070729169621227063

namespace A037629

/-- `A037601(n+1)+and(A037601(n+1), A037650(n+1))` -/
def P17070729169621227063.Spec : Prop :=
  ∀ n, P17070729169621227063.a n = A037629 (n + 1)

end A037629

/-! ## A037629.P6729172738492894282

`xor(A037573(n+1)+A033135(n+1), A037533(n+1))`
-/

namespace A037629.P6729172738492894282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A037573 (n + 1) + A033135 (n + 1)) (A037533 (n + 1))

end

end A037629.P6729172738492894282

namespace A037629

/-- `xor(A037573(n+1)+A033135(n+1), A037533(n+1))` -/
def P6729172738492894282.Spec : Prop :=
  ∀ n, P6729172738492894282.a n = A037629 (n + 1)

end A037629

/-! ## A037629.P9048564530569404572

`xor(A037533(n+1)+A037525(n+1), A037533(n+1))`
-/

namespace A037629.P9048564530569404572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A037533 (n + 1) + A037525 (n + 1)) (A037533 (n + 1))

end

end A037629.P9048564530569404572

namespace A037629

/-- `xor(A037533(n+1)+A037525(n+1), A037533(n+1))` -/
def P9048564530569404572.Spec : Prop :=
  ∀ n, P9048564530569404572.a n = A037629 (n + 1)

end A037629

/-! ## A037629.P16760933767500643283

`xor(A037501(n+2), A037541(n+2))`
-/

namespace A037629.P16760933767500643283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A037501 (n + 2)) (A037541 (n + 2))

end

end A037629.P16760933767500643283

namespace A037629

/-- `xor(A037501(n+2), A037541(n+2))` -/
def P16760933767500643283.Spec : Prop :=
  ∀ n, P16760933767500643283.a n = A037629 (n + 1)

end A037629

/-! ## A037629.P6242627425700702365

`A037533(n+2)+A037541(n+2)-A037525(n+2)`
-/

namespace A037629.P6242627425700702365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037533 (n + 2) + (A037541 (n + 2) - A037525 (n + 2))

end

end A037629.P6242627425700702365

namespace A037629

/-- `A037533(n+2)+A037541(n+2)-A037525(n+2)` -/
def P6242627425700702365.Spec : Prop :=
  ∀ n, P6242627425700702365.a n = A037629 (n + 1)

end A037629

/-! ## A037629.P2534881927100170937

`xor(A037541(n+2)+A033135(n+2), A037573(n+2))`
-/

namespace A037629.P2534881927100170937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A037541 (n + 2) + A033135 (n + 2)) (A037573 (n + 2))

end

end A037629.P2534881927100170937

namespace A037629

/-- `xor(A037541(n+2)+A033135(n+2), A037573(n+2))` -/
def P2534881927100170937.Spec : Prop :=
  ∀ n, P2534881927100170937.a n = A037629 (n + 1)

end A037629

/-! ## A037629.P8922422297970240346

`and(A037643(n+1), A037657(n+3))`
-/

namespace A037629.P8922422297970240346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A037643 (n + 1)) (A037657 (n + 3))

end

end A037629.P8922422297970240346

namespace A037629

/-- `and(A037643(n+1), A037657(n+3))` -/
def P8922422297970240346.Spec : Prop :=
  ∀ n, P8922422297970240346.a n = A037629 (n + 1)

end A037629

/-!
# A037630: Base-9 digits are, in order, the first n terms of the periodic sequence with initial period 2,3,0.

The programs for A037630, the canonical program `A037630.P6720329626996614138` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037630 has offset 1).

The definition of A037630 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A037630.P9410177207354646485

`ogf((2+3x)/(1-9x-x^3+9x^4))`
-/

namespace A037630.P9410177207354646485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 3] [1, -9, 0, -1, 9] n

end

end A037630.P9410177207354646485

namespace A037630

/-- `ogf((2+3x)/(1-9x-x^3+9x^4))` -/
def P9410177207354646485.Spec : Prop :=
  ∀ n, P9410177207354646485.a n = A037630 (n + 1)

end A037630

/-! ## A037630.P6720329626996614138

`∑[A077834(2*n+1)]`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A037630

/-- `∑[A077834(2*n+1)]` -/
def P6720329626996614138.Spec : Prop :=
  ∀ n, P6720329626996614138.a n = A037630 (n + 1)

theorem P6720329626996614138.correct : P6720329626996614138.Spec := by
  intro n
  simp only [A037630, Nat.add_sub_cancel]

end A037630

/-! ## A037630.P4746496308527017038

`A037510(n+1)+A033136(n+1)`
-/

namespace A037630.P4746496308527017038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037510 (n + 1) + A033136 (n + 1)

end

end A037630.P4746496308527017038

namespace A037630

/-- `A037510(n+1)+A033136(n+1)` -/
def P4746496308527017038.Spec : Prop :=
  ∀ n, P4746496308527017038.a n = A037630 (n + 1)

end A037630

/-! ## A037630.P3974297894876616233

`2*A037566(n+1)-A037574(n+1)`
-/

namespace A037630.P3974297894876616233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A037566 (n + 1) - A037574 (n + 1)

end

end A037630.P3974297894876616233

namespace A037630

/-- `2*A037566(n+1)-A037574(n+1)` -/
def P3974297894876616233.Spec : Prop :=
  ∀ n, P3974297894876616233.a n = A037630 (n + 1)

end A037630

/-! ## A037630.P10167654267830064838

`A033121(2*(n+1))-∑[A000244(n)²]`
-/

namespace A037630.P10167654267830064838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033121 (2 * (n + 1)) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037630.P10167654267830064838

namespace A037630

/-- `A033121(2*(n+1))-∑[A000244(n)²]` -/
def P10167654267830064838.Spec : Prop :=
  ∀ n, P10167654267830064838.a n = A037630 (n + 1)

end A037630

/-! ## A037630.P6454350920207388469

`A033121(2*n+2)-∑[A000244(2*n)]`
-/

namespace A037630.P6454350920207388469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033121 (2 * n + 2) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037630.P6454350920207388469

namespace A037630

/-- `A033121(2*n+2)-∑[A000244(2*n)]` -/
def P6454350920207388469.Spec : Prop :=
  ∀ n, P6454350920207388469.a n = A037630 (n + 1)

end A037630

/-! ## A037630.P7624985419381836318

`∑[∑[A077842(2*n+1)+A077842(2*n)]]`
-/

namespace A037630.P7624985419381836318
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077842 (2 * n + 1) + A077842 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037630.P7624985419381836318

namespace A037630

/-- `∑[∑[A077842(2*n+1)+A077842(2*n)]]` -/
def P7624985419381836318.Spec : Prop :=
  ∀ n, P7624985419381836318.a n = A037630 (n + 1)

end A037630

/-! ## A037630.P5142822797938947887

`∑[A033139(2*(n+1))-A033139(2*n+1)]`
-/

namespace A037630.P5142822797938947887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033139 (2 * (n + 1)) - A033139 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037630.P5142822797938947887

namespace A037630

/-- `∑[A033139(2*(n+1))-A033139(2*n+1)]` -/
def P5142822797938947887.Spec : Prop :=
  ∀ n, P5142822797938947887.a n = A037630 (n + 1)

end A037630

/-! ## A037630.P10159514767581462029

`A033136(n+1)+2*A037542(n+1)-A037550(n+1)`
-/

namespace A037630.P10159514767581462029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033136 (n + 1) + (2 * A037542 (n + 1) - A037550 (n + 1))

end

end A037630.P10159514767581462029

namespace A037630

/-- `A033136(n+1)+2*A037542(n+1)-A037550(n+1)` -/
def P10159514767581462029.Spec : Prop :=
  ∀ n, P10159514767581462029.a n = A037630 (n + 1)

end A037630

/-! ## A037630.P9611800599682026243

`round(A033139(2*n+3)/4)`
-/

namespace A037630.P9611800599682026243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A033139 (2 * n + 3) : ℚ) / 4)

end

end A037630.P9611800599682026243

namespace A037630

/-- `round(A033139(2*n+3)/4)` -/
def P9611800599682026243.Spec : Prop :=
  ∀ n, P9611800599682026243.a n = A037630 (n + 1)

end A037630

/-! ## A037630.P16653073066010125429

`2*A037550(n+2)-A037566(n+2)`
-/

namespace A037630.P16653073066010125429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A037550 (n + 2) - A037566 (n + 2)

end

end A037630.P16653073066010125429

namespace A037630

/-- `2*A037550(n+2)-A037566(n+2)` -/
def P16653073066010125429.Spec : Prop :=
  ∀ n, P16653073066010125429.a n = A037630 (n + 1)

end A037630

/-! ## A037630.P16357023915080786856

`∑[A037520(2*(n+1))-A037504(2*(n+1))]`
-/

namespace A037630.P16357023915080786856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037520 (2 * (n + 1)) - A037504 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037630.P16357023915080786856

namespace A037630

/-- `∑[A037520(2*(n+1))-A037504(2*(n+1))]` -/
def P16357023915080786856.Spec : Prop :=
  ∀ n, P16357023915080786856.a n = A037630 (n + 1)

end A037630

/-! ## A037630.P7330556469580213681

`A037534(n+2)+A037542(n+2)-A037526(n+2)`
-/

namespace A037630.P7330556469580213681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037534 (n + 2) + (A037542 (n + 2) - A037526 (n + 2))

end

end A037630.P7330556469580213681

namespace A037630

/-- `A037534(n+2)+A037542(n+2)-A037526(n+2)` -/
def P7330556469580213681.Spec : Prop :=
  ∀ n, P7330556469580213681.a n = A037630 (n + 1)

end A037630

/-! ## A037630.P10351358113152756339

`floor(A014983(2*n+5)/26)`
-/

namespace A037630.P10351358113152756339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A014983 (2 * n + 5) : ℚ) / 26⌋

end

end A037630.P10351358113152756339

namespace A037630

/-- `floor(A014983(2*n+5)/26)` -/
def P10351358113152756339.Spec : Prop :=
  ∀ n, P10351358113152756339.a n = A037630 (n + 1)

end A037630

/-! ## A037630.P5919130284991292023

`floor(A015518(2*n+5)/26)`
-/

namespace A037630.P5919130284991292023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A015518 (2 * n + 5) : ℚ) / 26⌋

end

end A037630.P5919130284991292023

namespace A037630

/-- `floor(A015518(2*n+5)/26)` -/
def P5919130284991292023.Spec : Prop :=
  ∀ n, P5919130284991292023.a n = A037630 (n + 1)

end A037630

/-! ## A037630.P678977367876257979

`floor(A003462(2*n+5)/52)`
-/

namespace A037630.P678977367876257979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A003462 (2 * n + 5) : ℚ) / 52⌋

end

end A037630.P678977367876257979

namespace A037630

/-- `floor(A003462(2*n+5)/52)` -/
def P678977367876257979.Spec : Prop :=
  ∀ n, P678977367876257979.a n = A037630 (n + 1)

end A037630

/-! ## A037630.P9625894526883421141

`floor(A007051(2*n+5)/52)`
-/

namespace A037630.P9625894526883421141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A007051 (2 * n + 5) : ℚ) / 52⌋

end

end A037630.P9625894526883421141

namespace A037630

/-- `floor(A007051(2*n+5)/52)` -/
def P9625894526883421141.Spec : Prop :=
  ∀ n, P9625894526883421141.a n = A037630 (n + 1)

end A037630

/-!
# A037631: Decimal expansion of a(n) is given by the first n terms of the periodic sequence with initial period 2,3,0.

The programs for A037631, the canonical program `A037631.P8282552389647622044` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037631 has offset 1).

The definition of A037631 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A037631.P8796314234557369695

`ogf((2+3x)/(1-10x-x^3+10x^4))`
-/

namespace A037631.P8796314234557369695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 3] [1, -10, 0, -1, 10] n

end

end A037631.P8796314234557369695

namespace A037631

/-- `ogf((2+3x)/(1-10x-x^3+10x^4))` -/
def P8796314234557369695.Spec : Prop :=
  ∀ n, P8796314234557369695.a n = A037631 (n + 1)

end A037631

/-! ## A037631.P8282552389647622044

`xor(2, n%3)+10*a(n-1)` with `a(0)=2`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A037631

/-- `xor(2, n%3)+10*a(n-1)` -/
def P8282552389647622044.Spec : Prop :=
  ∀ n, (P8282552389647622044.a n : ℤ) = A037631 (n + 1)

theorem P8282552389647622044.correct : P8282552389647622044.Spec := by
  intro n
  simp only [A037631, Nat.add_sub_cancel]

end A037631

/-! ## A037631.P10378164966704191186

`A224317(n+1)+10*a(n-1)` with `a(0)=2`
-/

namespace A037631.P10378164966704191186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A224317 (n + 1) + 10 * a (n - 1)

end

end A037631.P10378164966704191186

namespace A037631

/-- `A224317(n+1)+10*a(n-1)` -/
def P10378164966704191186.Spec : Prop :=
  ∀ n, P10378164966704191186.a n = A037631 (n + 1)

end A037631

/-! ## A037631.P6719592537774297469

`∑[A057078(n)]+(n+1)%3+10*a(n-1)` with `a(0)=2`
-/

namespace A037631.P6719592537774297469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057078 n

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ((((n + 1) % 3 : ℕ) : ℤ) + 10 * a (n - 1))

end

end A037631.P6719592537774297469

namespace A037631

/-- `∑[A057078(n)]+(n+1)%3+10*a(n-1)` -/
def P6719592537774297469.Spec : Prop :=
  ∀ n, P6719592537774297469.a n = A037631 (n + 1)

end A037631

/-! ## A037631.P4420467865090107526

`A037511(n)+A033137(n)`
-/

namespace A037631.P4420467865090107526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037511 (n + 1) + A033137 (n + 1)

end

end A037631.P4420467865090107526

namespace A037631

/-- `A037511(n)+A033137(n)` -/
def P4420467865090107526.Spec : Prop :=
  ∀ n, P4420467865090107526.a n = A037631 (n + 1)

end A037631

/-! ## A037631.P7797778434723902578

`A033137(n)+2*A033137(n)-A033146(n)`
-/

namespace A037631.P7797778434723902578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033137 (n + 1) + (2 * A033137 (n + 1) - A033146 (n + 1))

end

end A037631.P7797778434723902578

namespace A037631

/-- `A033137(n)+2*A033137(n)-A033146(n)` -/
def P7797778434723902578.Spec : Prop :=
  ∀ n, P7797778434723902578.a n = A037631 (n + 1)

end A037631

/-!
# A037632: Base 4 digits are, in order, the first n terms of the periodic sequence with initial period 2,1,3.

The programs for A037632, the canonical program `A037632.P15028626328816743045` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037632 has offset 1).

The definition of A037632 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A037632.anchor (n : ℕ) (hn : 1 ≤ n) : A037632 n = ((Nat.ofDigits 4 ((List.range n).reverse.map fun i => [2, 1, 3].getD (i % 3) 0) : ℕ) : ℤ)` in `Proof.A037.A037632`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A037632.P15028626328816743045

`4*a(n-1)+a(n-3)-4*a(n-4)` with `a(0)=2, a(1)=9, a(2)=39, a(3)=158`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A037632

/-- `4*a(n-1)+a(n-3)-4*a(n-4)` -/
def P15028626328816743045.Spec : Prop :=
  ∀ n, P15028626328816743045.a n = A037632 (n + 1)

theorem P15028626328816743045.correct : P15028626328816743045.Spec := by
  intro n
  simp only [A037632, Nat.add_sub_cancel]

end A037632

/-! ## A037632.P2730130303629666384

`floor(13*4^(n+1)/21)`
-/

namespace A037632.P2730130303629666384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(13 * 4 ^ (n + 1) : ℚ) / 21⌋

end

end A037632.P2730130303629666384

namespace A037632

/-- `floor(13*4^(n+1)/21)` -/
def P2730130303629666384.Spec : Prop :=
  ∀ n, P2730130303629666384.a n = A037632 (n + 1)

end A037632

/-! ## A037632.P10354476693519812744

`ogf((2+x+3x^2)/(1-4x-x^3+4x^4))`
-/

namespace A037632.P10354476693519812744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 1, 3] [1, -4, 0, -1, 4] n

end

end A037632.P10354476693519812744

namespace A037632

/-- `ogf((2+x+3x^2)/(1-4x-x^3+4x^4))` -/
def P10354476693519812744.Spec : Prop :=
  ∀ n, P10354476693519812744.a n = A037632 (n + 1)

end A037632

/-! ## A037632.P16487012703939500037

`4*a(n-1)+3-(n+1)%3` with `a(0)=2`
-/

namespace A037632.P16487012703939500037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  4 * a (n - 1) + (3 - (((n + 1) % 3 : ℕ) : ℤ))

end

end A037632.P16487012703939500037

namespace A037632

/-- `4*a(n-1)+3-(n+1)%3` -/
def P16487012703939500037.Spec : Prop :=
  ∀ n, P16487012703939500037.a n = A037632 (n + 1)

end A037632

/-! ## A037632.P2323878141162119762

`4*a(n-1)-A102283(n)+2` with `a(0)=2`
-/

namespace A037632.P2323878141162119762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  4 * a (n - 1) - A102283 n + 2

end

end A037632.P2323878141162119762

namespace A037632

/-- `4*a(n-1)-A102283(n)+2` -/
def P2323878141162119762.Spec : Prop :=
  ∀ n, P2323878141162119762.a n = A037632 (n + 1)

end A037632

/-! ## A037632.P11005246857509592975

`4*a(n-1)-A106510(n)+2` with `a(0)=2`
-/

namespace A037632.P11005246857509592975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  4 * a (n - 1) - A106510 n + 2

end

end A037632.P11005246857509592975

namespace A037632

/-- `4*a(n-1)-A106510(n)+2` -/
def P11005246857509592975.Spec : Prop :=
  ∀ n, P11005246857509592975.a n = A037632 (n + 1)

end A037632

/-! ## A037632.P17364257187378533666

`Δ[A047271(n+2)]+4*a(n-1)` with `a(0)=2`
-/

namespace A037632.P17364257187378533666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047271 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  f1 (n + 1) - f1 n + 4 * a (n - 1)

end

end A037632.P17364257187378533666

namespace A037632

/-- `Δ[A047271(n+2)]+4*a(n-1)` -/
def P17364257187378533666.Spec : Prop :=
  ∀ n, P17364257187378533666.a n = A037632 (n + 1)

end A037632

/-! ## A037632.P997045270482056137

`∑[A004171(n)]-A178872(n)`
-/

namespace A037632.P997045270482056137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004171 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A178872 n

end

end A037632.P997045270482056137

namespace A037632

/-- `∑[A004171(n)]-A178872(n)` -/
def P997045270482056137.Spec : Prop :=
  ∀ n, P997045270482056137.a n = A037632 (n + 1)

end A037632

/-! ## A037632.P10595655107750224786

`or(A037553(n+1), A178872(n))`
-/

namespace A037632.P10595655107750224786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A037553 (n + 1)) (A178872 n)

end

end A037632.P10595655107750224786

namespace A037632

/-- `or(A037553(n+1), A178872(n))` -/
def P10595655107750224786.Spec : Prop :=
  ∀ n, P10595655107750224786.a n = A037632 (n + 1)

end A037632

/-! ## A037632.P14941071882254690730

`∑[2*A000302(n)]-A178872(n)`
-/

namespace A037632.P14941071882254690730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000302 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A178872 n

end

end A037632.P14941071882254690730

namespace A037632

/-- `∑[2*A000302(n)]-A178872(n)` -/
def P14941071882254690730.Spec : Prop :=
  ∀ n, P14941071882254690730.a n = A037632 (n + 1)

end A037632

/-! ## A037632.P10692541226212761650

`A037529(n+1)+A033122(n+1)`
-/

namespace A037632.P10692541226212761650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037529 (n + 1) + A033122 (n + 1)

end

end A037632.P10692541226212761650

namespace A037632

/-- `A037529(n+1)+A033122(n+1)` -/
def P10692541226212761650.Spec : Prop :=
  ∀ n, P10692541226212761650.a n = A037632 (n + 1)

end A037632

/-! ## A037632.P12456140172524142722

`A037590(n+1)+A033131(n+1)`
-/

namespace A037632.P12456140172524142722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037590 (n + 1) + A033131 (n + 1)

end

end A037632.P12456140172524142722

namespace A037632

/-- `A037590(n+1)+A033131(n+1)` -/
def P12456140172524142722.Spec : Prop :=
  ∀ n, P12456140172524142722.a n = A037632 (n + 1)

end A037632

/-! ## A037632.P291318393266079068

`A178872(n+1)+A037604(n+1)`
-/

namespace A037632.P291318393266079068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178872 (n + 1) + A037604 (n + 1)

end

end A037632.P291318393266079068

namespace A037632

/-- `A178872(n+1)+A037604(n+1)` -/
def P291318393266079068.Spec : Prop :=
  ∀ n, P291318393266079068.a n = A037632 (n + 1)

end A037632

/-! ## A037632.P17378970752798176371

`A178872(n)+2*A037497(n+1)`
-/

namespace A037632.P17378970752798176371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178872 n + 2 * A037497 (n + 1)

end

end A037632.P17378970752798176371

namespace A037632

/-- `A178872(n)+2*A037497(n+1)` -/
def P17378970752798176371.Spec : Prop :=
  ∀ n, P17378970752798176371.a n = A037632 (n + 1)

end A037632

/-! ## A037632.P5528974301867039546

`A037639(n+1)-2*A178872(n)`
-/

namespace A037632.P5528974301867039546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037639 (n + 1) - 2 * A178872 n

end

end A037632.P5528974301867039546

namespace A037632

/-- `A037639(n+1)-2*A178872(n)` -/
def P5528974301867039546.Spec : Prop :=
  ∀ n, P5528974301867039546.a n = A037632 (n + 1)

end A037632

/-! ## A037632.P6247384998168826978

`xor(A037529(n+1), A037646(n+1))`
-/

namespace A037632.P6247384998168826978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A037529 (n + 1)) (A037646 (n + 1))

end

end A037632.P6247384998168826978

namespace A037632

/-- `xor(A037529(n+1), A037646(n+1))` -/
def P6247384998168826978.Spec : Prop :=
  ∀ n, P6247384998168826978.a n = A037632 (n + 1)

end A037632

/-! ## A037632.P4813942056426526706

`xor(A037590(n+1), A037660(n+1))`
-/

namespace A037632.P4813942056426526706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A037590 (n + 1)) (A037660 (n + 1))

end

end A037632.P4813942056426526706

namespace A037632

/-- `xor(A037590(n+1), A037660(n+1))` -/
def P4813942056426526706.Spec : Prop :=
  ∀ n, P4813942056426526706.a n = A037632 (n + 1)

end A037632

/-! ## A037632.P7290336662592313134

`A037497(n+1)+∑[A000079(n)²]`
-/

namespace A037632.P7290336662592313134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037497 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037632.P7290336662592313134

namespace A037632

/-- `A037497(n+1)+∑[A000079(n)²]` -/
def P7290336662592313134.Spec : Prop :=
  ∀ n, P7290336662592313134.a n = A037632 (n + 1)

end A037632

/-! ## A037632.P17432684304495591076

`∑[2*A000079(n)²]-A178872(n)`
-/

namespace A037632.P17432684304495591076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000079 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A178872 n

end

end A037632.P17432684304495591076

namespace A037632

/-- `∑[2*A000079(n)²]-A178872(n)` -/
def P17432684304495591076.Spec : Prop :=
  ∀ n, P17432684304495591076.a n = A037632 (n + 1)

end A037632

/-! ## A037632.P10335023734983774216

`∑[A000079(2*n+1)]-A178872(n)`
-/

namespace A037632.P10335023734983774216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A178872 n

end

end A037632.P10335023734983774216

namespace A037632

/-- `∑[A000079(2*n+1)]-A178872(n)` -/
def P10335023734983774216.Spec : Prop :=
  ∀ n, P10335023734983774216.a n = A037632 (n + 1)

end A037632

/-!
# A037633: Base 5 digits are, in order, the first n terms of the periodic sequence with initial period 2,1,3.

The programs for A037633, the canonical program `A037633.P2248933226734604356` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037633 has offset 1).

The definition of A037633 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 143 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A037633.P7947075108655045326

`ogf((2+x+3x^2)/(1-5x-x^3+5x^4))`
-/

namespace A037633.P7947075108655045326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 1, 3] [1, -5, 0, -1, 5] n

end

end A037633.P7947075108655045326

namespace A037633

/-- `ogf((2+x+3x^2)/(1-5x-x^3+5x^4))` -/
def P7947075108655045326.Spec : Prop :=
  ∀ n, P7947075108655045326.a n = A037633 (n + 1)

end A037633

/-! ## A037633.P2248933226734604356

`5*a(n-1)+3-(n+1)%3` with `a(0)=2`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A037633

/-- `5*a(n-1)+3-(n+1)%3` -/
def P2248933226734604356.Spec : Prop :=
  ∀ n, P2248933226734604356.a n = A037633 (n + 1)

theorem P2248933226734604356.correct : P2248933226734604356.Spec := by
  intro n
  simp only [A037633, Nat.add_sub_cancel]

end A037633

/-! ## A037633.P13418135175623371323

`A037530(n+1)+A033123(n+1)`
-/

namespace A037633.P13418135175623371323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037530 (n + 1) + A033123 (n + 1)

end

end A037633.P13418135175623371323

namespace A037633

/-- `A037530(n+1)+A033123(n+1)` -/
def P13418135175623371323.Spec : Prop :=
  ∀ n, P13418135175623371323.a n = A037633 (n + 1)

end A037633

/-! ## A037633.P17463589407918520819

`2*A037570(n+1)-A037554(n+1)`
-/

namespace A037633.P17463589407918520819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A037570 (n + 1) - A037554 (n + 1)

end

end A037633.P17463589407918520819

namespace A037633

/-- `2*A037570(n+1)-A037554(n+1)` -/
def P17463589407918520819.Spec : Prop :=
  ∀ n, P17463589407918520819.a n = A037633 (n + 1)

end A037633

/-! ## A037633.P11648329991689034519

`∑[5*a(n-1)-A101675(A008586(n))]` with `a(0)=2`
-/

namespace A037633.P11648329991689034519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  5 * f1 (n - 1) - A101675 (A008586 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037633.P11648329991689034519

namespace A037633

/-- `∑[5*a(n-1)-A101675(A008586(n))]` -/
def P11648329991689034519.Spec : Prop :=
  ∀ n, P11648329991689034519.a n = A037633 (n + 1)

end A037633

/-! ## A037633.P10557755466258059489

`∑[5*a(n-1)-A100051(A017353(n))]` with `a(0)=2`
-/

namespace A037633.P10557755466258059489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  5 * f1 (n - 1) - A100051 (A017353 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037633.P10557755466258059489

namespace A037633

/-- `∑[5*a(n-1)-A100051(A017353(n))]` -/
def P10557755466258059489.Spec : Prop :=
  ∀ n, P10557755466258059489.a n = A037633 (n + 1)

end A037633

/-!
# A037634: Base 6 digits are, in order, the first n terms of the periodic sequence with initial period 2,1,3.

The programs for A037634, the canonical program `A037634.P12267783342696357485` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037634 has offset 1).

The definition of A037634 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 129 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A037634.P3044566682735358481

`ogf((2+x+3x^2)/(1-6x-x^3+6x^4))`
-/

namespace A037634.P3044566682735358481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 1, 3] [1, -6, 0, -1, 6] n

end

end A037634.P3044566682735358481

namespace A037634

/-- `ogf((2+x+3x^2)/(1-6x-x^3+6x^4))` -/
def P3044566682735358481.Spec : Prop :=
  ∀ n, P3044566682735358481.a n = A037634 (n + 1)

end A037634

/-! ## A037634.P12267783342696357485

`∑[6*a(n-1)-A061347(n+1)]` with `a(0)=2`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A037634

/-- `∑[6*a(n-1)-A061347(n+1)]` -/
def P12267783342696357485.Spec : Prop :=
  ∀ n, P12267783342696357485.a n = A037634 (n + 1)

theorem P12267783342696357485.correct : P12267783342696357485.Spec := by
  intro n
  simp only [A037634, Nat.add_sub_cancel]

end A037634

/-! ## A037634.P10318966384899274772

`A037531(n+1)+A033124(n+1)`
-/

namespace A037634.P10318966384899274772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037531 (n + 1) + A033124 (n + 1)

end

end A037634.P10318966384899274772

namespace A037634

/-- `A037531(n+1)+A033124(n+1)` -/
def P10318966384899274772.Spec : Prop :=
  ∀ n, P10318966384899274772.a n = A037634 (n + 1)

end A037634

/-! ## A037634.P11613384422359444186

`A037515(n+1)+A037531(n+1)-A033142(n+1)`
-/

namespace A037634.P11613384422359444186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037515 (n + 1) + (A037531 (n + 1) - A033142 (n + 1))

end

end A037634.P11613384422359444186

namespace A037634

/-- `A037515(n+1)+A037531(n+1)-A033142(n+1)` -/
def P11613384422359444186.Spec : Prop :=
  ∀ n, P11613384422359444186.a n = A037634 (n + 1)

end A037634

/-! ## A037634.P6894569576525484769

`A037571(n+1)+A037571(n+1)-A037555(n+1)`
-/

namespace A037634.P6894569576525484769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037571 (n + 1) + (A037571 (n + 1) - A037555 (n + 1))

end

end A037634.P6894569576525484769

namespace A037634

/-- `A037571(n+1)+A037571(n+1)-A037555(n+1)` -/
def P6894569576525484769.Spec : Prop :=
  ∀ n, P6894569576525484769.a n = A037634 (n + 1)

end A037634

/-! ## A037634.P2330322304163737989

`∑[6*a(n-1)]-A037641(n+1)` with `a(0)=4`
-/

namespace A037634.P2330322304163737989
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [4] fun n f1 =>
  6 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A037641 (n + 1)

end

end A037634.P2330322304163737989

namespace A037634

/-- `∑[6*a(n-1)]-A037641(n+1)` -/
def P2330322304163737989.Spec : Prop :=
  ∀ n, P2330322304163737989.a n = A037634 (n + 1)

end A037634

/-! ## A037634.P2198755095958241188

`2*A037571(n+1)-A037555(n+1)`
-/

namespace A037634.P2198755095958241188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A037571 (n + 1) - A037555 (n + 1)

end

end A037634.P2198755095958241188

namespace A037634

/-- `2*A037571(n+1)-A037555(n+1)` -/
def P2198755095958241188.Spec : Prop :=
  ∀ n, P2198755095958241188.a n = A037634 (n + 1)

end A037634

/-! ## A037634.P210680270971652986

`A037539(n+1)+A037655(n+1)-A037523(n+1)`
-/

namespace A037634.P210680270971652986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037539 (n + 1) + (A037655 (n + 1) - A037523 (n + 1))

end

end A037634.P210680270971652986

namespace A037634

/-- `A037539(n+1)+A037655(n+1)-A037523(n+1)` -/
def P210680270971652986.Spec : Prop :=
  ∀ n, P210680270971652986.a n = A037634 (n + 1)

end A037634

/-! ## A037634.P10174772932713004686

`A037641(n+1)+A037655(n+1)-A037669(n+1)`
-/

namespace A037634.P10174772932713004686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037641 (n + 1) + (A037655 (n + 1) - A037669 (n + 1))

end

end A037634.P10174772932713004686

namespace A037634

/-- `A037641(n+1)+A037655(n+1)-A037669(n+1)` -/
def P10174772932713004686.Spec : Prop :=
  ∀ n, P10174772932713004686.a n = A037634 (n + 1)

end A037634

/-!
# A037635: Base 7 digits are, in order, the first n terms of the periodic sequence with initial period 2,1,3.

The programs for A037635, the canonical program `A037635.P9359658036191781758` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037635 has offset 1).

The definition of A037635 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 118 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A037635.P14700122361489425804

`ogf((2+x+3x^2)/(1-7x-x^3+7x^4))`
-/

namespace A037635.P14700122361489425804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 1, 3] [1, -7, 0, -1, 7] n

end

end A037635.P14700122361489425804

namespace A037635

/-- `ogf((2+x+3x^2)/(1-7x-x^3+7x^4))` -/
def P14700122361489425804.Spec : Prop :=
  ∀ n, P14700122361489425804.a n = A037635 (n + 1)

end A037635

/-! ## A037635.P9359658036191781758

`xor(3, (n+1)%3+8*a(n-1))-a(n-1)` with `a(0)=2`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A037635

/-- `xor(3, (n+1)%3+8*a(n-1))-a(n-1)` -/
def P9359658036191781758.Spec : Prop :=
  ∀ n, P9359658036191781758.a n = A037635 (n + 1)

theorem P9359658036191781758.correct : P9359658036191781758.Spec := by
  intro n
  simp only [A037635, Nat.add_sub_cancel]

end A037635

/-! ## A037635.P7118418024715617814

`7*a(n-1)-A102283(n)+2` with `a(0)=2`
-/

namespace A037635.P7118418024715617814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  7 * a (n - 1) - A102283 n + 2

end

end A037635.P7118418024715617814

namespace A037635

/-- `7*a(n-1)-A102283(n)+2` -/
def P7118418024715617814.Spec : Prop :=
  ∀ n, P7118418024715617814.a n = A037635 (n + 1)

end A037635

/-! ## A037635.P16381082117382461975

`A037500(n+1)+∑[A000420(n)]`
-/

namespace A037635.P16381082117382461975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000420 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037500 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037635.P16381082117382461975

namespace A037635

/-- `A037500(n+1)+∑[A000420(n)]` -/
def P16381082117382461975.Spec : Prop :=
  ∀ n, P16381082117382461975.a n = A037635 (n + 1)

end A037635

/-! ## A037635.P3695360610011615822

`A037500(n+1)+A023000(n+1)`
-/

namespace A037635.P3695360610011615822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037500 (n + 1) + A023000 (n + 1)

end

end A037635.P3695360610011615822

namespace A037635

/-- `A037500(n+1)+A023000(n+1)` -/
def P3695360610011615822.Spec : Prop :=
  ∀ n, P3695360610011615822.a n = A037635 (n + 1)

end A037635

/-! ## A037635.P16344704114359840713

`A037532(n+1)+A033125(n+1)`
-/

namespace A037635.P16344704114359840713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037532 (n + 1) + A033125 (n + 1)

end

end A037635.P16344704114359840713

namespace A037635

/-- `A037532(n+1)+A033125(n+1)` -/
def P16344704114359840713.Spec : Prop :=
  ∀ n, P16344704114359840713.a n = A037635 (n + 1)

end A037635

/-! ## A037635.P292864869792982176

`2*A037572(n+1)-A037556(n+1)`
-/

namespace A037635.P292864869792982176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A037572 (n + 1) - A037556 (n + 1)

end

end A037635.P292864869792982176

namespace A037635

/-- `2*A037572(n+1)-A037556(n+1)` -/
def P292864869792982176.Spec : Prop :=
  ∀ n, P292864869792982176.a n = A037635 (n + 1)

end A037635

/-! ## A037635.P183316853621913851

`ceil(A037614(n+1)+A037614(n+1)/2)`
-/

namespace A037635.P183316853621913851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A037614 (n + 1) : ℚ) + (A037614 (n + 1) : ℚ) / 2⌉

end

end A037635.P183316853621913851

namespace A037635

/-- `ceil(A037614(n+1)+A037614(n+1)/2)` -/
def P183316853621913851.Spec : Prop :=
  ∀ n, P183316853621913851.a n = A037635 (n + 1)

end A037635

/-! ## A037635.P9657813382834846789

`floor(Δ[A123752(2*(n+1))/19])`
-/

namespace A037635.P9657813382834846789
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A123752 (2 * (n + 1)) : ℚ) / 19

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊f1 (n + 1) - f1 n⌋

end

end A037635.P9657813382834846789

namespace A037635

/-- `floor(Δ[A123752(2*(n+1))/19])` -/
def P9657813382834846789.Spec : Prop :=
  ∀ n, P9657813382834846789.a n = A037635 (n + 1)

end A037635

/-!
# A037636: Base 8 digits are, in order, the first n terms of the periodic sequence with initial period 2,1,3.

The programs for A037636, the canonical program `A037636.P1889350488178368916` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037636 has offset 1).

The definition of A037636 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A037636.P9039022540173051091

`ogf((2+x+3x^2)/(1-8x-x^3+8x^4))`
-/

namespace A037636.P9039022540173051091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 1, 3] [1, -8, 0, -1, 8] n

end

end A037636.P9039022540173051091

namespace A037636

/-- `ogf((2+x+3x^2)/(1-8x-x^3+8x^4))` -/
def P9039022540173051091.Spec : Prop :=
  ∀ n, P9039022540173051091.a n = A037636 (n + 1)

end A037636

/-! ## A037636.P1889350488178368916

`xor(3, (n+1)%3+8*a(n-1))` with `a(0)=2`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A037636

/-- `xor(3, (n+1)%3+8*a(n-1))` -/
def P1889350488178368916.Spec : Prop :=
  ∀ n, (P1889350488178368916.a n : ℤ) = A037636 (n + 1)

theorem P1889350488178368916.correct : P1889350488178368916.Spec := by
  intro n
  simp only [A037636, Nat.add_sub_cancel]

end A037636

/-! ## A037636.P8717085254356122162

`A037501(n+1)+∑[A001018(n)]`
-/

namespace A037636.P8717085254356122162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001018 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037501 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037636.P8717085254356122162

namespace A037636

/-- `A037501(n+1)+∑[A001018(n)]` -/
def P8717085254356122162.Spec : Prop :=
  ∀ n, P8717085254356122162.a n = A037636 (n + 1)

end A037636

/-! ## A037636.P1964730527306376533

`A037533(n+1)+A033126(n+1)`
-/

namespace A037636.P1964730527306376533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037533 (n + 1) + A033126 (n + 1)

end

end A037636.P1964730527306376533

namespace A037636

/-- `A037533(n+1)+A033126(n+1)` -/
def P1964730527306376533.Spec : Prop :=
  ∀ n, P1964730527306376533.a n = A037636 (n + 1)

end A037636

/-! ## A037636.P17530449505736606082

`A037594(n+1)+A033135(n+1)`
-/

namespace A037636.P17530449505736606082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037594 (n + 1) + A033135 (n + 1)

end

end A037636.P17530449505736606082

namespace A037636

/-- `A037594(n+1)+A033135(n+1)` -/
def P17530449505736606082.Spec : Prop :=
  ∀ n, P17530449505736606082.a n = A037636 (n + 1)

end A037636

/-! ## A037636.P10961555261133603119

`or(A037557(n+1), A037573(n+1))`
-/

namespace A037636.P10961555261133603119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A037557 (n + 1)) (A037573 (n + 1))

end

end A037636.P10961555261133603119

namespace A037636

/-- `or(A037557(n+1), A037573(n+1))` -/
def P10961555261133603119.Spec : Prop :=
  ∀ n, P10961555261133603119.a n = A037636 (n + 1)

end A037636

/-! ## A037636.P10291674442930498513

`xor(A037533(n+1), A037650(n+1))`
-/

namespace A037636.P10291674442930498513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A037533 (n + 1)) (A037650 (n + 1))

end

end A037636.P10291674442930498513

namespace A037636

/-- `xor(A037533(n+1), A037650(n+1))` -/
def P10291674442930498513.Spec : Prop :=
  ∀ n, P10291674442930498513.a n = A037636 (n + 1)

end A037636

/-! ## A037636.P14353158874899735838

`xor(8*a(n-1), A010882(A005408(n)))` with `a(0)=2`
-/

namespace A037636.P14353158874899735838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  Int.xor (8 * a (n - 1)) (A010882 (A005408 n).toNat)

end

end A037636.P14353158874899735838

namespace A037636

/-- `xor(8*a(n-1), A010882(A005408(n)))` -/
def P14353158874899735838.Spec : Prop :=
  ∀ n, P14353158874899735838.a n = A037636 (n + 1)

end A037636

/-! ## A037636.P15972797741043620900

`xor(A037557(n+1)+A033126(n+1), A033126(n+1))`
-/

namespace A037636.P15972797741043620900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A037557 (n + 1) + A033126 (n + 1)) (A033126 (n + 1))

end

end A037636.P15972797741043620900

namespace A037636

/-- `xor(A037557(n+1)+A033126(n+1), A033126(n+1))` -/
def P15972797741043620900.Spec : Prop :=
  ∀ n, P15972797741043620900.a n = A037636 (n + 1)

end A037636

/-! ## A037636.P8713398650461627439

`A037525(n+1)+xor(A037541(n+1), A037549(n+1))`
-/

namespace A037636.P8713398650461627439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037525 (n + 1) + Int.xor (A037541 (n + 1)) (A037549 (n + 1))

end

end A037636.P8713398650461627439

namespace A037636

/-- `A037525(n+1)+xor(A037541(n+1), A037549(n+1))` -/
def P8713398650461627439.Spec : Prop :=
  ∀ n, P8713398650461627439.a n = A037636 (n + 1)

end A037636

/-! ## A037636.P13820268930345916367

`xor(A037557(n+1)+A037541(n+1), A037541(n+1))`
-/

namespace A037636.P13820268930345916367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A037557 (n + 1) + A037541 (n + 1)) (A037541 (n + 1))

end

end A037636.P13820268930345916367

namespace A037636

/-- `xor(A037557(n+1)+A037541(n+1), A037541(n+1))` -/
def P13820268930345916367.Spec : Prop :=
  ∀ n, P13820268930345916367.a n = A037636 (n + 1)

end A037636

/-! ## A037636.P9706672383820520645

`A037501(n+1)+xor(A037525(n+1), A037650(n+1))`
-/

namespace A037636.P9706672383820520645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037501 (n + 1) + Int.xor (A037525 (n + 1)) (A037650 (n + 1))

end

end A037636.P9706672383820520645

namespace A037636

/-- `A037501(n+1)+xor(A037525(n+1), A037650(n+1))` -/
def P9706672383820520645.Spec : Prop :=
  ∀ n, P9706672383820520645.a n = A037636 (n + 1)

end A037636

/-!
# A037637: Base 9 digits are, in order, the first n terms of the periodic sequence with initial period 2,1,3.

The programs for A037637, the canonical program `A037637.P7276121262270544448` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037637 has offset 1).

The definition of A037637 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A037637.P11199302582682769418

`ogf((2+x+3x^2)/(1-9x-x^3+9x^4))`
-/

namespace A037637.P11199302582682769418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 1, 3] [1, -9, 0, -1, 9] n

end

end A037637.P11199302582682769418

namespace A037637

/-- `ogf((2+x+3x^2)/(1-9x-x^3+9x^4))` -/
def P11199302582682769418.Spec : Prop :=
  ∀ n, P11199302582682769418.a n = A037637 (n + 1)

end A037637

/-! ## A037637.P7276121262270544448

`a(n-1)+xor(3, (n+1)%3+8*a(n-1))` with `a(0)=2`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A037637

/-- `a(n-1)+xor(3, (n+1)%3+8*a(n-1))` -/
def P7276121262270544448.Spec : Prop :=
  ∀ n, (P7276121262270544448.a n : ℤ) = A037637 (n + 1)

theorem P7276121262270544448.correct : P7276121262270544448.Spec := by
  intro n
  simp only [A037637, Nat.add_sub_cancel]

end A037637

/-! ## A037637.P1341363835628203705

`floor(2/3*A037672(n+1))`
-/

namespace A037637.P1341363835628203705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 : ℚ) / 3 * (A037672 (n + 1) : ℚ)⌋

end

end A037637.P1341363835628203705

namespace A037637

/-- `floor(2/3*A037672(n+1))` -/
def P1341363835628203705.Spec : Prop :=
  ∀ n, P1341363835628203705.a n = A037637 (n + 1)

end A037637

/-! ## A037637.P4537362457565733384

`A037502(n+1)+∑[9^n]`
-/

namespace A037637.P4537362457565733384
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037502 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A037637.P4537362457565733384

namespace A037637

/-- `A037502(n+1)+∑[9^n]` -/
def P4537362457565733384.Spec : Prop :=
  ∀ n, P4537362457565733384.a n = A037637 (n + 1)

end A037637

/-! ## A037637.P2179734513503973557

`A037534(n+1)+A033127(n+1)`
-/

namespace A037637.P2179734513503973557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037534 (n + 1) + A033127 (n + 1)

end

end A037637.P2179734513503973557

namespace A037637

/-- `A037534(n+1)+A033127(n+1)` -/
def P2179734513503973557.Spec : Prop :=
  ∀ n, P2179734513503973557.a n = A037637 (n + 1)

end A037637

/-! ## A037637.P8787730593058738479

`2*A037574(n+1)-A037558(n+1)`
-/

namespace A037637.P8787730593058738479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A037574 (n + 1) - A037558 (n + 1)

end

end A037637.P8787730593058738479

namespace A037637

/-- `2*A037574(n+1)-A037558(n+1)` -/
def P8787730593058738479.Spec : Prop :=
  ∀ n, P8787730593058738479.a n = A037637 (n + 1)

end A037637

/-!
# A037638: Decimal expansion of a(n) is given by the first n terms of the periodic sequence with initial period 2,1,3.

The programs for A037638, the canonical program `A037638.P14753984806614107874` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037638 has offset 1).

The definition of A037638 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A037638.P8080645986227243250

`ogf((2+x+3x^2)/(1-10x-x^3+10x^4))`
-/

namespace A037638.P8080645986227243250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 1, 3] [1, -10, 0, -1, 10] n

end

end A037638.P8080645986227243250

namespace A037638

/-- `ogf((2+x+3x^2)/(1-10x-x^3+10x^4))` -/
def P8080645986227243250.Spec : Prop :=
  ∀ n, P8080645986227243250.a n = A037638 (n + 1)

end A037638

/-! ## A037638.P14753984806614107874

`∑[10*a(n-1)-A061347(n+1)]` with `a(0)=2`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A037638

/-- `∑[10*a(n-1)-A061347(n+1)]` -/
def P14753984806614107874.Spec : Prop :=
  ∀ n, P14753984806614107874.a n = A037638 (n + 1)

theorem P14753984806614107874.correct : P14753984806614107874.Spec := by
  intro n
  simp only [A037638, Nat.add_sub_cancel]

end A037638

/-! ## A037638.P11858666466661486247

`10*a(n-1)+2-A128834(2*n)` with `a(0)=2`
-/

namespace A037638.P11858666466661486247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  10 * a (n - 1) + (2 - A128834 (2 * n))

end

end A037638.P11858666466661486247

namespace A037638

/-- `10*a(n-1)+2-A128834(2*n)` -/
def P11858666466661486247.Spec : Prop :=
  ∀ n, P11858666466661486247.a n = A037638 (n + 1)

end A037638

/-! ## A037638.P14217752557684663682

`record[10*a(n-1)+2-A049347(n)]` with `a(0)=2, a(1)=0`
-/

namespace A037638.P14217752557684663682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 0] fun n f1 =>
  10 * f1 (n - 1) + (2 - A049347 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A037638.P14217752557684663682

namespace A037638

/-- `record[10*a(n-1)+2-A049347(n)]` -/
def P14217752557684663682.Spec : Prop :=
  ∀ n, P14217752557684663682.a n = A037638 (n + 1)

end A037638

/-! ## A037638.P1854446638891764334

`A037535(n)+A033128(n)`
-/

namespace A037638.P1854446638891764334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037535 (n + 1) + A033128 (n + 1)

end

end A037638.P1854446638891764334

namespace A037638

/-- `A037535(n)+A033128(n)` -/
def P1854446638891764334.Spec : Prop :=
  ∀ n, P1854446638891764334.a n = A037638 (n + 1)

end A037638

/-! ## A037638.P5034565032903199956

`A037503(n)+∑[A011557(n)]`
-/

namespace A037638.P5034565032903199956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011557 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037503 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037638.P5034565032903199956

namespace A037638

/-- `A037503(n)+∑[A011557(n)]` -/
def P5034565032903199956.Spec : Prop :=
  ∀ n, P5034565032903199956.a n = A037638 (n + 1)

end A037638

/-! ## A037638.P1549004160736487959

`A037503(n)+A000042(n+1)`
-/

namespace A037638.P1549004160736487959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037503 (n + 1) + A000042 (n + 1)

end

end A037638.P1549004160736487959

namespace A037638

/-- `A037503(n)+A000042(n+1)` -/
def P1549004160736487959.Spec : Prop :=
  ∀ n, P1549004160736487959.a n = A037638 (n + 1)

end A037638

/-!
# A037639: Base 4 digits are, in order, the first n terms of the periodic sequence with initial period 2,3,1.

The programs for A037639, the canonical program `A037639.P8185927116418185793` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037639 has offset 1).

The definition of A037639 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A037639.anchor (n : ℕ) (hn : 1 ≤ n) : A037639 n = ((Nat.ofDigits 4 ((List.range n).reverse.map fun i => [2, 3, 1].getD (i % 3) 0) : ℕ) : ℤ)` in `Proof.A037.A037639`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A037639.P8185927116418185793

`4*a(n-1)+a(n-3)-4*a(n-4)` with `a(0)=2, a(1)=11, a(2)=45, a(3)=182`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A037639

/-- `4*a(n-1)+a(n-3)-4*a(n-4)` -/
def P8185927116418185793.Spec : Prop :=
  ∀ n, P8185927116418185793.a n = A037639 (n + 1)

theorem P8185927116418185793.correct : P8185927116418185793.Spec := by
  intro n
  simp only [A037639, Nat.add_sub_cancel]

end A037639

/-! ## A037639.P16099114299591561927

`floor(5*4^(n+1)/7)`
-/

namespace A037639.P16099114299591561927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(5 * 4 ^ (n + 1) : ℚ) / 7⌋

end

end A037639.P16099114299591561927

namespace A037639

/-- `floor(5*4^(n+1)/7)` -/
def P16099114299591561927.Spec : Prop :=
  ∀ n, P16099114299591561927.a n = A037639 (n + 1)

end A037639

/-! ## A037639.P486419098934257434

`ogf((2+3x+x^2)/(1-4x-x^3+4x^4))`
-/

namespace A037639.P486419098934257434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 3, 1] [1, -4, 0, -1, 4] n

end

end A037639.P486419098934257434

namespace A037639

/-- `ogf((2+3x+x^2)/(1-4x-x^3+4x^4))` -/
def P486419098934257434.Spec : Prop :=
  ∀ n, P486419098934257434.a n = A037639 (n + 1)

end A037639

/-! ## A037639.P18348611016805315634

`4*a(n-1)+(n+1)%3+1` with `a(0)=2`
-/

namespace A037639.P18348611016805315634
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  4 * a (n - 1) + ((n + 1) % 3 + 1)

end

end A037639.P18348611016805315634

namespace A037639

/-- `4*a(n-1)+(n+1)%3+1` -/
def P18348611016805315634.Spec : Prop :=
  ∀ n, (P18348611016805315634.a n : ℤ) = A037639 (n + 1)

end A037639

/-! ## A037639.P6638860092947469348

`A033120(2*(n+1))`
-/

namespace A037639.P6638860092947469348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033120 (2 * (n + 1))

end

end A037639.P6638860092947469348

namespace A037639

/-- `A033120(2*(n+1))` -/
def P6638860092947469348.Spec : Prop :=
  ∀ n, P6638860092947469348.a n = A037639 (n + 1)

end A037639

/-! ## A037639.P10989210317772596711

`A178872(n)+∑[A004171(n)]`
-/

namespace A037639.P10989210317772596711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004171 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178872 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037639.P10989210317772596711

namespace A037639

/-- `A178872(n)+∑[A004171(n)]` -/
def P10989210317772596711.Spec : Prop :=
  ∀ n, P10989210317772596711.a n = A037639 (n + 1)

end A037639

/-! ## A037639.P11746551117536397952

`xor(A072197(n), A378497(n+1))`
-/

namespace A037639.P11746551117536397952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A072197 n) (A378497 (n + 1))

end

end A037639.P11746551117536397952

namespace A037639

/-- `xor(A072197(n), A378497(n+1))` -/
def P11746551117536397952.Spec : Prop :=
  ∀ n, P11746551117536397952.a n = A037639 (n + 1)

end A037639

/-! ## A037639.P15424849077574006877

`A267210(2*n)+A000079(n)²`
-/

namespace A037639.P15424849077574006877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267210 (2 * n) + A000079 n ^ 2

end

end A037639.P15424849077574006877

namespace A037639

/-- `A267210(2*n)+A000079(n)²` -/
def P15424849077574006877.Spec : Prop :=
  ∀ n, P15424849077574006877.a n = A037639 (n + 1)

end A037639

/-! ## A037639.P14737971817080490906

`A178872(n)+∑[2*A000302(n)]`
-/

namespace A037639.P14737971817080490906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000302 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178872 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037639.P14737971817080490906

namespace A037639

/-- `A178872(n)+∑[2*A000302(n)]` -/
def P14737971817080490906.Spec : Prop :=
  ∀ n, P14737971817080490906.a n = A037639 (n + 1)

end A037639

/-! ## A037639.P12929758526009047461

`A037537(n+1)+A033131(n+1)`
-/

namespace A037639.P12929758526009047461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037537 (n + 1) + A033131 (n + 1)

end

end A037639.P12929758526009047461

namespace A037639

/-- `A037537(n+1)+A033131(n+1)` -/
def P12929758526009047461.Spec : Prop :=
  ∀ n, P12929758526009047461.a n = A037639 (n + 1)

end A037639

/-! ## A037639.P10407051838056528192

`A037597(n+1)+A033122(n+1)`
-/

namespace A037639.P10407051838056528192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037597 (n + 1) + A033122 (n + 1)

end

end A037639.P10407051838056528192

namespace A037639

/-- `A037597(n+1)+A033122(n+1)` -/
def P10407051838056528192.Spec : Prop :=
  ∀ n, P10407051838056528192.a n = A037639 (n + 1)

end A037639

/-! ## A037639.P7702680393560453985

`A267210(2*n)+A000079(2*n)`
-/

namespace A037639.P7702680393560453985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267210 (2 * n) + A000079 (2 * n)

end

end A037639.P7702680393560453985

namespace A037639

/-- `A267210(2*n)+A000079(2*n)` -/
def P7702680393560453985.Spec : Prop :=
  ∀ n, P7702680393560453985.a n = A037639 (n + 1)

end A037639

/-! ## A037639.P17092023174844568085

`xor(A037537(n+1), A037660(n+1))`
-/

namespace A037639.P17092023174844568085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A037537 (n + 1)) (A037660 (n + 1))

end

end A037639.P17092023174844568085

namespace A037639

/-- `xor(A037537(n+1), A037660(n+1))` -/
def P17092023174844568085.Spec : Prop :=
  ∀ n, P17092023174844568085.a n = A037639 (n + 1)

end A037639

/-! ## A037639.P12100553272688930726

`xor(A037597(n+1), A037646(n+1))`
-/

namespace A037639.P12100553272688930726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A037597 (n + 1)) (A037646 (n + 1))

end

end A037639.P12100553272688930726

namespace A037639

/-- `xor(A037597(n+1), A037646(n+1))` -/
def P12100553272688930726.Spec : Prop :=
  ∀ n, P12100553272688930726.a n = A037639 (n + 1)

end A037639

/-! ## A037639.P14754173545994319753

`A178872(n)+∑[2*A000079(n)²]`
-/

namespace A037639.P14754173545994319753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000079 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178872 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037639.P14754173545994319753

namespace A037639

/-- `A178872(n)+∑[2*A000079(n)²]` -/
def P14754173545994319753.Spec : Prop :=
  ∀ n, P14754173545994319753.a n = A037639 (n + 1)

end A037639

/-! ## A037639.P18281082126166265432

`A033129(2*n)+2*A000079(n)²`
-/

namespace A037639.P18281082126166265432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033129 (2 * n) + 2 * A000079 n ^ 2

end

end A037639.P18281082126166265432

namespace A037639

/-- `A033129(2*n)+2*A000079(n)²` -/
def P18281082126166265432.Spec : Prop :=
  ∀ n, P18281082126166265432.a n = A037639 (n + 1)

end A037639

/-! ## A037639.P16089364937113838129

`A178872(n)+∑[A000079(2*n+1)]`
-/

namespace A037639.P16089364937113838129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178872 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037639.P16089364937113838129

namespace A037639

/-- `A178872(n)+∑[A000079(2*n+1)]` -/
def P16089364937113838129.Spec : Prop :=
  ∀ n, P16089364937113838129.a n = A037639 (n + 1)

end A037639

/-! ## A037639.P399968040131763094

`A057744(2*n)+∑[A003945(2*n)]`
-/

namespace A037639.P399968040131763094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003945 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057744 (2 * n) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037639.P399968040131763094

namespace A037639

/-- `A057744(2*n)+∑[A003945(2*n)]` -/
def P399968040131763094.Spec : Prop :=
  ∀ n, P399968040131763094.a n = A037639 (n + 1)

end A037639

/-! ## A037639.P18049085094393798400

`A033129(2*n)+A000079(2*n+1)`
-/

namespace A037639.P18049085094393798400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033129 (2 * n) + A000079 (2 * n + 1)

end

end A037639.P18049085094393798400

namespace A037639

/-- `A033129(2*n)+A000079(2*n+1)` -/
def P18049085094393798400.Spec : Prop :=
  ∀ n, P18049085094393798400.a n = A037639 (n + 1)

end A037639

/-! ## A037639.P13842709389148210597

`A057744(2*n)+A000225(2*n+1)`
-/

namespace A037639.P13842709389148210597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057744 (2 * n) + A000225 (2 * n + 1)

end

end A037639.P13842709389148210597

namespace A037639

/-- `A057744(2*n)+A000225(2*n+1)` -/
def P13842709389148210597.Spec : Prop :=
  ∀ n, P13842709389148210597.a n = A037639 (n + 1)

end A037639

/-!
# A037640: Base 5 digits are, in order, the first n terms of the periodic sequence with initial period 2,3,1.

The programs for A037640, the canonical program `A037640.P8676259652554583598` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037640 has offset 1).

The definition of A037640 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A037640.anchor (n : ℕ) (hn : 1 ≤ n) : A037640 n = ((Nat.ofDigits 5 ((List.range n).reverse.map fun i => [2, 3, 1].getD (i % 3) 0) : ℕ) : ℤ)` in `Proof.A037.A037640`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A037640.P11682906354463637390

`ogf((2+3x+x^2)/(1-5x-x^3+5x^4))`
-/

namespace A037640.P11682906354463637390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 3, 1] [1, -5, 0, -1, 5] n

end

end A037640.P11682906354463637390

namespace A037640

/-- `ogf((2+3x+x^2)/(1-5x-x^3+5x^4))` -/
def P11682906354463637390.Spec : Prop :=
  ∀ n, P11682906354463637390.a n = A037640 (n + 1)

end A037640

/-! ## A037640.P8676259652554583598

`5*a(n-1)+(n+1)%3+1` with `a(0)=2`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A037640

/-- `5*a(n-1)+(n+1)%3+1` -/
def P8676259652554583598.Spec : Prop :=
  ∀ n, (P8676259652554583598.a n : ℤ) = A037640 (n + 1)

theorem P8676259652554583598.correct : P8676259652554583598.Spec := by
  intro n
  simp only [A037640, Nat.add_sub_cancel]

end A037640

/-! ## A037640.P14251271137694255193

`lcm(5, a(n-1))+abs(A167373(n))` with `a(0)=2`
-/

namespace A037640.P14251271137694255193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  (Int.lcm 5 (a (n - 1)) : ℤ) + |A167373 n|

end

end A037640.P14251271137694255193

namespace A037640

/-- `lcm(5, a(n-1))+abs(A167373(n))` -/
def P14251271137694255193.Spec : Prop :=
  ∀ n, P14251271137694255193.a n = A037640 (n + 1)

end A037640

/-! ## A037640.P6066704680519514281

`A010882(n+1)+5*a(n-1)` with `a(0)=2`
-/

namespace A037640.P6066704680519514281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A010882 (n + 1) + 5 * a (n - 1)

end

end A037640.P6066704680519514281

namespace A037640

/-- `A010882(n+1)+5*a(n-1)` -/
def P6066704680519514281.Spec : Prop :=
  ∀ n, P6066704680519514281.a n = A037640 (n + 1)

end A037640

/-! ## A037640.P7655303194761994301

`5*a(n-1)+A143097(n+2)-n` with `a(0)=2`
-/

namespace A037640.P7655303194761994301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  5 * a (n - 1) + (A143097 (n + 2) - (n : ℤ))

end

end A037640.P7655303194761994301

namespace A037640

/-- `5*a(n-1)+A143097(n+2)-n` -/
def P7655303194761994301.Spec : Prop :=
  ∀ n, P7655303194761994301.a n = A037640 (n + 1)

end A037640

/-! ## A037640.P17994920000112402711

`A037538(n+1)+A033132(n+1)`
-/

namespace A037640.P17994920000112402711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037538 (n + 1) + A033132 (n + 1)

end

end A037640.P17994920000112402711

namespace A037640

/-- `A037538(n+1)+A033132(n+1)` -/
def P17994920000112402711.Spec : Prop :=
  ∀ n, P17994920000112402711.a n = A037640 (n + 1)

end A037640

/-! ## A037640.P16923229041576508051

`A037598(n+1)+A033123(n+1)`
-/

namespace A037640.P16923229041576508051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037598 (n + 1) + A033123 (n + 1)

end

end A037640.P16923229041576508051

namespace A037640

/-- `A037598(n+1)+A033123(n+1)` -/
def P16923229041576508051.Spec : Prop :=
  ∀ n, P16923229041576508051.a n = A037640 (n + 1)

end A037640

/-! ## A037640.P350706130234013922

`2*A037562(n+1)-A037554(n+1)`
-/

namespace A037640.P350706130234013922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A037562 (n + 1) - A037554 (n + 1)

end

end A037640.P350706130234013922

namespace A037640

/-- `2*A037562(n+1)-A037554(n+1)` -/
def P350706130234013922.Spec : Prop :=
  ∀ n, P350706130234013922.a n = A037640 (n + 1)

end A037640

/-! ## A037640.P12093897216861531455

`A033123(n+1)+A037626(n+1)-A033141(n+1)`
-/

namespace A037640.P12093897216861531455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033123 (n + 1) + (A037626 (n + 1) - A033141 (n + 1))

end

end A037640.P12093897216861531455

namespace A037640

/-- `A033123(n+1)+A037626(n+1)-A033141(n+1)` -/
def P12093897216861531455.Spec : Prop :=
  ∀ n, P12093897216861531455.a n = A037640 (n + 1)

end A037640

/-!
# A037641: Base 6 digits are, in order, the first n terms of the periodic sequence with initial period 2,3,1.

The programs for A037641, the canonical program `A037641.P7989062943925407363` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037641 has offset 1).

The definition of A037641 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 128 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A037641.P1914125079970130419

`ogf((2+3x+x^2)/(1-6x-x^3+6x^4))`
-/

namespace A037641.P1914125079970130419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 3, 1] [1, -6, 0, -1, 6] n

end

end A037641.P1914125079970130419

namespace A037641

/-- `ogf((2+3x+x^2)/(1-6x-x^3+6x^4))` -/
def P1914125079970130419.Spec : Prop :=
  ∀ n, P1914125079970130419.a n = A037641 (n + 1)

end A037641

/-! ## A037641.P7989062943925407363

`A010882(n+1)+6*a(n-1)` with `a(0)=2`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A037641

/-- `A010882(n+1)+6*a(n-1)` -/
def P7989062943925407363.Spec : Prop :=
  ∀ n, P7989062943925407363.a n = A037641 (n + 1)

theorem P7989062943925407363.correct : P7989062943925407363.Spec := by
  intro n
  simp only [A037641, Nat.add_sub_cancel]

end A037641

/-! ## A037641.P4552829842563983892

`A037539(n+1)+A033133(n+1)`
-/

namespace A037641.P4552829842563983892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037539 (n + 1) + A033133 (n + 1)

end

end A037641.P4552829842563983892

namespace A037641

/-- `A037539(n+1)+A033133(n+1)` -/
def P4552829842563983892.Spec : Prop :=
  ∀ n, P4552829842563983892.a n = A037641 (n + 1)

end A037641

/-! ## A037641.P16204005179458385871

`A037523(n+1)+A037539(n+1)-A033142(n+1)`
-/

namespace A037641.P16204005179458385871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037523 (n + 1) + (A037539 (n + 1) - A033142 (n + 1))

end

end A037641.P16204005179458385871

namespace A037641

/-- `A037523(n+1)+A037539(n+1)-A033142(n+1)` -/
def P16204005179458385871.Spec : Prop :=
  ∀ n, P16204005179458385871.a n = A037641 (n + 1)

end A037641

/-! ## A037641.P8543302511043938257

`A037515(n+1)+A037599(n+1)-A033142(n+1)`
-/

namespace A037641.P8543302511043938257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037515 (n + 1) + (A037599 (n + 1) - A033142 (n + 1))

end

end A037641.P8543302511043938257

namespace A037641

/-- `A037515(n+1)+A037599(n+1)-A033142(n+1)` -/
def P8543302511043938257.Spec : Prop :=
  ∀ n, P8543302511043938257.a n = A037641 (n + 1)

end A037641

/-! ## A037641.P4534493524718904916

`A037547(n+1)+A037563(n+1)-A037531(n+1)`
-/

namespace A037641.P4534493524718904916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037547 (n + 1) + (A037563 (n + 1) - A037531 (n + 1))

end

end A037641.P4534493524718904916

namespace A037641

/-- `A037547(n+1)+A037563(n+1)-A037531(n+1)` -/
def P4534493524718904916.Spec : Prop :=
  ∀ n, P4534493524718904916.a n = A037641 (n + 1)

end A037641

/-! ## A037641.P8459262844989347275

`A037627(n+1)+A037655(n+1)-A037648(n+1)`
-/

namespace A037641.P8459262844989347275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037627 (n + 1) + (A037655 (n + 1) - A037648 (n + 1))

end

end A037641.P8459262844989347275

namespace A037641

/-- `A037627(n+1)+A037655(n+1)-A037648(n+1)` -/
def P8459262844989347275.Spec : Prop :=
  ∀ n, P8459262844989347275.a n = A037641 (n + 1)

end A037641

/-!
# A037642: Base 7 digits are, in order, the first n terms of the periodic sequence with initial period 2,3,1.

The programs for A037642, the canonical program `A037642.P6377176343451741549` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037642 has offset 1).

The definition of A037642 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A037642.anchor (n : ℕ) (hn : 1 ≤ n) : A037642 n = ((Nat.ofDigits 7 ((List.range n).reverse.map fun i => [2, 3, 1].getD (i % 3) 0) : ℕ) : ℤ)` in `Proof.A037.A037642`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A037642.P3885304096552825841

`ogf((2+3x+x^2)/(1-7x-x^3+7x^4))`
-/

namespace A037642.P3885304096552825841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 3, 1] [1, -7, 0, -1, 7] n

end

end A037642.P3885304096552825841

namespace A037642

/-- `ogf((2+3x+x^2)/(1-7x-x^3+7x^4))` -/
def P3885304096552825841.Spec : Prop :=
  ∀ n, P3885304096552825841.a n = A037642 (n + 1)

end A037642

/-! ## A037642.P6377176343451741549

`(n+1)%3+7*a(n-1)+1` with `a(0)=2`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A037642

/-- `(n+1)%3+7*a(n-1)+1` -/
def P6377176343451741549.Spec : Prop :=
  ∀ n, (P6377176343451741549.a n : ℤ) = A037642 (n + 1)

theorem P6377176343451741549.correct : P6377176343451741549.Spec := by
  intro n
  simp only [A037642, Nat.add_sub_cancel]

end A037642

/-! ## A037642.P15743049901346926285

`A037540(n+1)+A033134(n+1)`
-/

namespace A037642.P15743049901346926285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037540 (n + 1) + A033134 (n + 1)

end

end A037642.P15743049901346926285

namespace A037642

/-- `A037540(n+1)+A033134(n+1)` -/
def P15743049901346926285.Spec : Prop :=
  ∀ n, P15743049901346926285.a n = A037642 (n + 1)

end A037642

/-! ## A037642.P2652521867355877404

`A037600(n+1)+A033125(n+1)`
-/

namespace A037642.P2652521867355877404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037600 (n + 1) + A033125 (n + 1)

end

end A037642.P2652521867355877404

namespace A037642

/-- `A037600(n+1)+A033125(n+1)` -/
def P2652521867355877404.Spec : Prop :=
  ∀ n, P2652521867355877404.a n = A037642 (n + 1)

end A037642

/-! ## A037642.P781471325234337547

`A120741(n+1)-A037500(n+1)`
-/

namespace A037642.P781471325234337547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120741 (n + 1) - A037500 (n + 1)

end

end A037642.P781471325234337547

namespace A037642

/-- `A120741(n+1)-A037500(n+1)` -/
def P781471325234337547.Spec : Prop :=
  ∀ n, P781471325234337547.a n = A037642 (n + 1)

end A037642

/-! ## A037642.P17498317514013276147

`2*A037564(n+1)-A037556(n+1)`
-/

namespace A037642.P17498317514013276147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A037564 (n + 1) - A037556 (n + 1)

end

end A037642.P17498317514013276147

namespace A037642

/-- `2*A037564(n+1)-A037556(n+1)` -/
def P17498317514013276147.Spec : Prop :=
  ∀ n, P17498317514013276147.a n = A037642 (n + 1)

end A037642

/-! ## A037642.P11986387900127536070

`3*A037540(n+1)-A037614(n+1)`
-/

namespace A037642.P11986387900127536070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A037540 (n + 1) - A037614 (n + 1)

end

end A037642.P11986387900127536070

namespace A037642

/-- `3*A037540(n+1)-A037614(n+1)` -/
def P11986387900127536070.Spec : Prop :=
  ∀ n, P11986387900127536070.a n = A037642 (n + 1)

end A037642

/-! ## A037642.P3806084957309344613

`A037540(n+1)+∑[7*a(n-1)+1-A010872(n)]` with `a(0)=1`
-/

namespace A037642.P3806084957309344613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  7 * f1 (n - 1) + (1 - A010872 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037540 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037642.P3806084957309344613

namespace A037642

/-- `A037540(n+1)+∑[7*a(n-1)+1-A010872(n)]` -/
def P3806084957309344613.Spec : Prop :=
  ∀ n, P3806084957309344613.a n = A037642 (n + 1)

end A037642

/-! ## A037642.P16316258373064403300

`A033134(n+1)+A037564(n+1)-A033143(n+1)`
-/

namespace A037642.P16316258373064403300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033134 (n + 1) + (A037564 (n + 1) - A033143 (n + 1))

end

end A037642.P16316258373064403300

namespace A037642

/-- `A033134(n+1)+A037564(n+1)-A033143(n+1)` -/
def P16316258373064403300.Spec : Prop :=
  ∀ n, P16316258373064403300.a n = A037642 (n + 1)

end A037642

/-! ## A037642.P4011129935474523791

`A037484(n+1)+A037492(n+1)-A037500(n+1)`
-/

namespace A037642.P4011129935474523791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037484 (n + 1) + (A037492 (n + 1) - A037500 (n + 1))

end

end A037642.P4011129935474523791

namespace A037642

/-- `A037484(n+1)+A037492(n+1)-A037500(n+1)` -/
def P4011129935474523791.Spec : Prop :=
  ∀ n, P4011129935474523791.a n = A037642 (n + 1)

end A037642

/-! ## A037642.P10885043015743454397

`A037548(n+1)+A037564(n+1)-A037532(n+1)`
-/

namespace A037642.P10885043015743454397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037548 (n + 1) + (A037564 (n + 1) - A037532 (n + 1))

end

end A037642.P10885043015743454397

namespace A037642

/-- `A037548(n+1)+A037564(n+1)-A037532(n+1)` -/
def P10885043015743454397.Spec : Prop :=
  ∀ n, P10885043015743454397.a n = A037642 (n + 1)

end A037642

/-! ## A037642.P5606157249838131826

`A037635(n+1)+A037670(n+1)-A037656(n+1)`
-/

namespace A037642.P5606157249838131826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037635 (n + 1) + (A037670 (n + 1) - A037656 (n + 1))

end

end A037642.P5606157249838131826

namespace A037642

/-- `A037635(n+1)+A037670(n+1)-A037656(n+1)` -/
def P5606157249838131826.Spec : Prop :=
  ∀ n, P5606157249838131826.a n = A037642 (n + 1)

end A037642

/-! ## A037642.P9723249590845189284

`Δ[∑[A037635(n+1)]-A037556(n+1)]`
-/

namespace A037642.P9723249590845189284
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037635 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A037556 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A037642.P9723249590845189284

namespace A037642

/-- `Δ[∑[A037635(n+1)]-A037556(n+1)]` -/
def P9723249590845189284.Spec : Prop :=
  ∀ n, P9723249590845189284.a n = A037642 (n + 1)

end A037642

/-!
# A037643: Base 8 digits are, in order, the first n terms of the periodic sequence with initial period 2,3,1.

The programs for A037643, the canonical program `A037643.P9311204941093430127` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037643 has offset 1).

The definition of A037643 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A037643.anchor (n : ℕ) (hn : 1 ≤ n) : A037643 n = ((Nat.ofDigits 8 ((List.range n).reverse.map fun i => [2, 3, 1].getD (i % 3) 0) : ℕ) : ℤ)` in `Proof.A037.A037643`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A037643.P8338524479273681037

`ogf((2+3x+x^2)/(1-8x-x^3+8x^4))`
-/

namespace A037643.P8338524479273681037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 3, 1] [1, -8, 0, -1, 8] n

end

end A037643.P8338524479273681037

namespace A037643

/-- `ogf((2+3x+x^2)/(1-8x-x^3+8x^4))` -/
def P8338524479273681037.Spec : Prop :=
  ∀ n, P8338524479273681037.a n = A037643 (n + 1)

end A037643

/-! ## A037643.P9311204941093430127

`(n+1)%3+8*a(n-1)+1` with `a(0)=2`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A037643

/-- `(n+1)%3+8*a(n-1)+1` -/
def P9311204941093430127.Spec : Prop :=
  ∀ n, (P9311204941093430127.a n : ℤ) = A037643 (n + 1)

theorem P9311204941093430127.correct : P9311204941093430127.Spec := by
  intro n
  simp only [A037643, Nat.add_sub_cancel]

end A037643

/-! ## A037643.P7403362376511876344

`A037509(n+1)+∑[A001018(n)]`
-/

namespace A037643.P7403362376511876344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001018 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037509 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037643.P7403362376511876344

namespace A037643

/-- `A037509(n+1)+∑[A001018(n)]` -/
def P7403362376511876344.Spec : Prop :=
  ∀ n, P7403362376511876344.a n = A037643 (n + 1)

end A037643

/-! ## A037643.P12764230815341849367

`A037541(n+1)+A033135(n+1)`
-/

namespace A037643.P12764230815341849367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037541 (n + 1) + A033135 (n + 1)

end

end A037643.P12764230815341849367

namespace A037643

/-- `A037541(n+1)+A033135(n+1)` -/
def P12764230815341849367.Spec : Prop :=
  ∀ n, P12764230815341849367.a n = A037643 (n + 1)

end A037643

/-! ## A037643.P3800222363262448275

`A037601(n+1)+A033126(n+1)`
-/

namespace A037643.P3800222363262448275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037601 (n + 1) + A033126 (n + 1)

end

end A037643.P3800222363262448275

namespace A037643

/-- `A037601(n+1)+A033126(n+1)` -/
def P3800222363262448275.Spec : Prop :=
  ∀ n, P3800222363262448275.a n = A037643 (n + 1)

end A037643

/-! ## A037643.P4301008388260191610

`or(A037525(n+1), A037565(n+1))`
-/

namespace A037643.P4301008388260191610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A037525 (n + 1)) (A037565 (n + 1))

end

end A037643.P4301008388260191610

namespace A037643

/-- `or(A037525(n+1), A037565(n+1))` -/
def P4301008388260191610.Spec : Prop :=
  ∀ n, P4301008388260191610.a n = A037643 (n + 1)

end A037643

/-! ## A037643.P16644425841623476879

`or(A037557(n+1), A037565(n+1))`
-/

namespace A037643.P16644425841623476879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A037557 (n + 1)) (A037565 (n + 1))

end

end A037643.P16644425841623476879

namespace A037643

/-- `or(A037557(n+1), A037565(n+1))` -/
def P16644425841623476879.Spec : Prop :=
  ∀ n, P16644425841623476879.a n = A037643 (n + 1)

end A037643

/-! ## A037643.P15523298939150333675

`xor(A037541(n+1), A037664(n+1))`
-/

namespace A037643.P15523298939150333675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A037541 (n + 1)) (A037664 (n + 1))

end

end A037643.P15523298939150333675

namespace A037643

/-- `xor(A037541(n+1), A037664(n+1))` -/
def P15523298939150333675.Spec : Prop :=
  ∀ n, P15523298939150333675.a n = A037643 (n + 1)

end A037643

/-! ## A037643.P8762251810379956954

`xor(A037601(n+1), A037650(n+1))`
-/

namespace A037643.P8762251810379956954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A037601 (n + 1)) (A037650 (n + 1))

end

end A037643.P8762251810379956954

namespace A037643

/-- `xor(A037601(n+1), A037650(n+1))` -/
def P8762251810379956954.Spec : Prop :=
  ∀ n, P8762251810379956954.a n = A037643 (n + 1)

end A037643

/-! ## A037643.P17300780178742006406

`or(A037525(n+1), A037525(A028310(n)))`
-/

namespace A037643.P17300780178742006406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A037525 (n + 1)) (A037525 (A028310 n).toNat)

end

end A037643.P17300780178742006406

namespace A037643

/-- `or(A037525(n+1), A037525(A028310(n)))` -/
def P17300780178742006406.Spec : Prop :=
  ∀ n, P17300780178742006406.a n = A037643 (n + 1)

end A037643

/-! ## A037643.P13019498238875317302

`xor(A037557(n+1)+A033135(n+1), A033135(n+1))`
-/

namespace A037643.P13019498238875317302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A037557 (n + 1) + A033135 (n + 1)) (A033135 (n + 1))

end

end A037643.P13019498238875317302

namespace A037643

/-- `xor(A037557(n+1)+A033135(n+1), A033135(n+1))` -/
def P13019498238875317302.Spec : Prop :=
  ∀ n, P13019498238875317302.a n = A037643 (n + 1)

end A037643

/-!
# A037644: Base 9 digits are, in order, the first n terms of the periodic sequence with initial period 2,3,1.

The programs for A037644, the canonical program `A037644.P18169131705346232968` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037644 has offset 1).

The definition of A037644 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A037644.anchor (n : ℕ) (hn : 1 ≤ n) : A037644 n = ((Nat.ofDigits 9 ((List.range n).reverse.map fun i => [2, 3, 1].getD (i % 3) 0) : ℕ) : ℤ)` in `Proof.A037.A037644`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A037644.P17220663649125331456

`ogf((2+3x+x^2)/(1-9x-x^3+9x^4))`
-/

namespace A037644.P17220663649125331456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 3, 1] [1, -9, 0, -1, 9] n

end

end A037644.P17220663649125331456

namespace A037644

/-- `ogf((2+3x+x^2)/(1-9x-x^3+9x^4))` -/
def P17220663649125331456.Spec : Prop :=
  ∀ n, P17220663649125331456.a n = A037644 (n + 1)

end A037644

/-! ## A037644.P18169131705346232968

`(n+1)%3+9*a(n-1)+1` with `a(0)=2`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A037644

/-- `(n+1)%3+9*a(n-1)+1` -/
def P18169131705346232968.Spec : Prop :=
  ∀ n, (P18169131705346232968.a n : ℤ) = A037644 (n + 1)

theorem P18169131705346232968.correct : P18169131705346232968.Spec := by
  intro n
  simp only [A037644, Nat.add_sub_cancel]

end A037644

/-! ## A037644.P16309162781444737698

`A010882(n+1)+9*a(n-1)` with `a(0)=2`
-/

namespace A037644.P16309162781444737698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A010882 (n + 1) + 9 * a (n - 1)

end

end A037644.P16309162781444737698

namespace A037644

/-- `A010882(n+1)+9*a(n-1)` -/
def P16309162781444737698.Spec : Prop :=
  ∀ n, P16309162781444737698.a n = A037644 (n + 1)

end A037644

/-! ## A037644.P10056145870946382508

`∑[A013708(n)]-A037502(n+1)`
-/

namespace A037644.P10056145870946382508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013708 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A037502 (n + 1)

end

end A037644.P10056145870946382508

namespace A037644

/-- `∑[A013708(n)]-A037502(n+1)` -/
def P10056145870946382508.Spec : Prop :=
  ∀ n, P10056145870946382508.a n = A037644 (n + 1)

end A037644

/-! ## A037644.P3685244066269702932

`A037542(n+1)+A033136(n+1)`
-/

namespace A037644.P3685244066269702932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037542 (n + 1) + A033136 (n + 1)

end

end A037644.P3685244066269702932

namespace A037644

/-- `A037542(n+1)+A033136(n+1)` -/
def P3685244066269702932.Spec : Prop :=
  ∀ n, P3685244066269702932.a n = A037644 (n + 1)

end A037644

/-! ## A037644.P5251758811823473543

`A037602(n+1)+A033127(n+1)`
-/

namespace A037644.P5251758811823473543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037602 (n + 1) + A033127 (n + 1)

end

end A037644.P5251758811823473543

namespace A037644

/-- `A037602(n+1)+A033127(n+1)` -/
def P5251758811823473543.Spec : Prop :=
  ∀ n, P5251758811823473543.a n = A037644 (n + 1)

end A037644

/-! ## A037644.P9618667371277331565

`A033121(2*(n+1))-A033136(n+1)`
-/

namespace A037644.P9618667371277331565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033121 (2 * (n + 1)) - A033136 (n + 1)

end

end A037644.P9618667371277331565

namespace A037644

/-- `A033121(2*(n+1))-A033136(n+1)` -/
def P9618667371277331565.Spec : Prop :=
  ∀ n, P9618667371277331565.a n = A037644 (n + 1)

end A037644

/-! ## A037644.P18037079545929478004

`A003462(A005843(n+1))-A037637(n+1)`
-/

namespace A037644.P18037079545929478004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003462 (A005843 (n + 1)).toNat - A037637 (n + 1)

end

end A037644.P18037079545929478004

namespace A037644

/-- `A003462(A005843(n+1))-A037637(n+1)` -/
def P18037079545929478004.Spec : Prop :=
  ∀ n, P18037079545929478004.a n = A037644 (n + 1)

end A037644

/-!
# A037645: Decimal expansion of a(n) is given by the first n terms of the periodic sequence with initial period 2,3,1.

The programs for A037645, the canonical program `A037645.P7062246738727833335` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037645 has offset 1).

The definition of A037645 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A037645.P10136403718585320256

`ogf((2+3x+x^2)/(1-10x-x^3+10x^4))`
-/

namespace A037645.P10136403718585320256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 3, 1] [1, -10, 0, -1, 10] n

end

end A037645.P10136403718585320256

namespace A037645

/-- `ogf((2+3x+x^2)/(1-10x-x^3+10x^4))` -/
def P10136403718585320256.Spec : Prop :=
  ∀ n, P10136403718585320256.a n = A037645 (n + 1)

end A037645

/-! ## A037645.P7062246738727833335

`(n+1)%3+10*a(n-1)+1` with `a(0)=2`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A037645

/-- `(n+1)%3+10*a(n-1)+1` -/
def P7062246738727833335.Spec : Prop :=
  ∀ n, (P7062246738727833335.a n : ℤ) = A037645 (n + 1)

theorem P7062246738727833335.correct : P7062246738727833335.Spec := by
  intro n
  simp only [A037645, Nat.add_sub_cancel]

end A037645

/-! ## A037645.P16132252575934425822

`A010882(n+1)+10*a(n-1)` with `a(0)=2`
-/

namespace A037645.P16132252575934425822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A010882 (n + 1) + 10 * a (n - 1)

end

end A037645.P16132252575934425822

namespace A037645

/-- `A010882(n+1)+10*a(n-1)` -/
def P16132252575934425822.Spec : Prop :=
  ∀ n, P16132252575934425822.a n = A037645 (n + 1)

end A037645

/-! ## A037645.P13850801863325362718

`10*a(n-1)+A128834(2*n)+2` with `a(0)=2`
-/

namespace A037645.P13850801863325362718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  10 * a (n - 1) + (A128834 (2 * n) + 2)

end

end A037645.P13850801863325362718

namespace A037645

/-- `10*a(n-1)+A128834(2*n)+2` -/
def P13850801863325362718.Spec : Prop :=
  ∀ n, P13850801863325362718.a n = A037645 (n + 1)

end A037645

/-! ## A037645.P12085924469629582271

`A037610(n+1)-A011557(n+1)`
-/

namespace A037645.P12085924469629582271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037610 (n + 1 + 1) - A011557 (n + 1)

end

end A037645.P12085924469629582271

namespace A037645

/-- `A037610(n+1)-A011557(n+1)` -/
def P12085924469629582271.Spec : Prop :=
  ∀ n, P12085924469629582271.a n = A037645 (n + 1)

end A037645

/-!
# A037646: Base 4 digits are, in order, the first n terms of the periodic sequence with initial period 3,0,1.

The programs for A037646, the canonical program `A037646.P5535459887030610652` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037646 has offset 1).

The definition of A037646 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A037646.P5535459887030610652

`ceil(7/3*∑[4^n])`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A037646

/-- `ceil(7/3*∑[4^n])` -/
def P5535459887030610652.Spec : Prop :=
  ∀ n, P5535459887030610652.a n = A037646 (n + 1)

theorem P5535459887030610652.correct : P5535459887030610652.Spec := by
  intro n
  simp only [A037646, Nat.add_sub_cancel]

end A037646

/-! ## A037646.P3529111720072379819

`ogf((3+x^2)/(1-4x-x^3+4x^4))`
-/

namespace A037646.P3529111720072379819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, 0, 1] [1, -4, 0, -1, 4] n

end

end A037646.P3529111720072379819

namespace A037646

/-- `ogf((3+x^2)/(1-4x-x^3+4x^4))` -/
def P3529111720072379819.Spec : Prop :=
  ∀ n, P3529111720072379819.a n = A037646 (n + 1)

end A037646

/-! ## A037646.P9908296754895489759

`xor(3, xor(2, 4*a(n-1)+2-n%3))` with `a(0)=3`
-/

namespace A037646.P9908296754895489759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  Int.xor 3 (Int.xor 2 (4 * a (n - 1) + (2 - ((n % 3 : ℕ) : ℤ))))

end

end A037646.P9908296754895489759

namespace A037646

/-- `xor(3, xor(2, 4*a(n-1)+2-n%3))` -/
def P9908296754895489759.Spec : Prop :=
  ∀ n, P9908296754895489759.a n = A037646 (n + 1)

end A037646

/-! ## A037646.P5386101577669497774

`∑[char[3*n]]+∑[A206374(n)]`
-/

namespace A037646.P5386101577669497774
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206374 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + ∑ j ∈ Finset.range (n + 1), f3 j

end

end A037646.P5386101577669497774

namespace A037646

/-- `∑[char[3*n]]+∑[A206374(n)]` -/
def P5386101577669497774.Spec : Prop :=
  ∀ n, P5386101577669497774.a n = A037646 (n + 1)

end A037646

/-! ## A037646.P11403802845131465904

`A037660(n+1)-A178872(n)`
-/

namespace A037646.P11403802845131465904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037660 (n + 1) - A178872 n

end

end A037646.P11403802845131465904

namespace A037646

/-- `A037660(n+1)-A178872(n)` -/
def P11403802845131465904.Spec : Prop :=
  ∀ n, P11403802845131465904.a n = A037646 (n + 1)

end A037646

/-! ## A037646.P20429689313951282

`xor(A198693(n), A378502(n+1))`
-/

namespace A037646.P20429689313951282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A198693 n) (A378502 (n + 1))

end

end A037646.P20429689313951282

namespace A037646

/-- `xor(A198693(n), A378502(n+1))` -/
def P20429689313951282.Spec : Prop :=
  ∀ n, P20429689313951282.a n = A037646 (n + 1)

end A037646

/-! ## A037646.P13676792240755673244

`xor(∑[A004171(n)], A037604(n+1))`
-/

namespace A037646.P13676792240755673244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004171 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (∑ j ∈ Finset.range (n + 1), f1 j) (A037604 (n + 1))

end

end A037646.P13676792240755673244

namespace A037646

/-- `xor(∑[A004171(n)], A037604(n+1))` -/
def P13676792240755673244.Spec : Prop :=
  ∀ n, P13676792240755673244.a n = A037646 (n + 1)

end A037646

/-! ## A037646.P16428938836961983301

`A037513(n+1)+A033140(n+1)`
-/

namespace A037646.P16428938836961983301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037513 (n + 1) + A033140 (n + 1)

end

end A037646.P16428938836961983301

namespace A037646

/-- `A037513(n+1)+A033140(n+1)` -/
def P16428938836961983301.Spec : Prop :=
  ∀ n, P16428938836961983301.a n = A037646 (n + 1)

end A037646

/-! ## A037646.P2489254729198708212

`A178872(n+1)+A037553(n+1)`
-/

namespace A037646.P2489254729198708212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178872 (n + 1) + A037553 (n + 1)

end

end A037646.P2489254729198708212

namespace A037646

/-- `A178872(n+1)+A037553(n+1)` -/
def P2489254729198708212.Spec : Prop :=
  ∀ n, P2489254729198708212.a n = A037646 (n + 1)

end A037646

/-! ## A037646.P3795054344422987707

`A153234(2*n)+A007283(2*n)`
-/

namespace A037646.P3795054344422987707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153234 (2 * n) + A007283 (2 * n)

end

end A037646.P3795054344422987707

namespace A037646

/-- `A153234(2*n)+A007283(2*n)` -/
def P3795054344422987707.Spec : Prop :=
  ∀ n, P3795054344422987707.a n = A037646 (n + 1)

end A037646

/-! ## A037646.P16394101693049277155

`A328881(2*n)+A201630(2*n)`
-/

namespace A037646.P16394101693049277155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328881 (2 * n) + A201630 (2 * n)

end

end A037646.P16394101693049277155

namespace A037646

/-- `A328881(2*n)+A201630(2*n)` -/
def P16394101693049277155.Spec : Prop :=
  ∀ n, P16394101693049277155.a n = A037646 (n + 1)

end A037646

/-! ## A037646.P2439375675219823476

`xor(A033131(n+1), A037553(n+1))`
-/

namespace A037646.P2439375675219823476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A033131 (n + 1)) (A037553 (n + 1))

end

end A037646.P2439375675219823476

namespace A037646

/-- `xor(A033131(n+1), A037553(n+1))` -/
def P2439375675219823476.Spec : Prop :=
  ∀ n, P2439375675219823476.a n = A037646 (n + 1)

end A037646

/-! ## A037646.P18349843780871588138

`xor(A037505(n+1), A037561(n+1))`
-/

namespace A037646.P18349843780871588138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A037505 (n + 1)) (A037561 (n + 1))

end

end A037646.P18349843780871588138

namespace A037646

/-- `xor(A037505(n+1), A037561(n+1))` -/
def P18349843780871588138.Spec : Prop :=
  ∀ n, P18349843780871588138.a n = A037646 (n + 1)

end A037646

/-! ## A037646.P815820403884811287

`xor(A037497(n+1), A037618(n+1))`
-/

namespace A037646.P815820403884811287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A037497 (n + 1)) (A037618 (n + 1))

end

end A037646.P815820403884811287

namespace A037646

/-- `xor(A037497(n+1), A037618(n+1))` -/
def P815820403884811287.Spec : Prop :=
  ∀ n, P815820403884811287.a n = A037646 (n + 1)

end A037646

/-! ## A037646.P16563352572202300046

`xor(A037529(n+1), A037632(n+1))`
-/

namespace A037646.P16563352572202300046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A037529 (n + 1)) (A037632 (n + 1))

end

end A037646.P16563352572202300046

namespace A037646

/-- `xor(A037529(n+1), A037632(n+1))` -/
def P16563352572202300046.Spec : Prop :=
  ∀ n, P16563352572202300046.a n = A037646 (n + 1)

end A037646

/-! ## A037646.P922819349238808131

`xor(A037597(n+1), A037639(n+1))`
-/

namespace A037646.P922819349238808131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A037597 (n + 1)) (A037639 (n + 1))

end

end A037646.P922819349238808131

namespace A037646

/-- `xor(A037597(n+1), A037639(n+1))` -/
def P922819349238808131.Spec : Prop :=
  ∀ n, P922819349238808131.a n = A037646 (n + 1)

end A037646

/-! ## A037646.P16577161731035815462

`A033122(n+1)+2*A033140(n+1)`
-/

namespace A037646.P16577161731035815462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033122 (n + 1) + 2 * A033140 (n + 1)

end

end A037646.P16577161731035815462

namespace A037646

/-- `A033122(n+1)+2*A033140(n+1)` -/
def P16577161731035815462.Spec : Prop :=
  ∀ n, P16577161731035815462.a n = A037646 (n + 1)

end A037646

/-! ## A037646.P16968077559977418709

`2*A037513(n+1)-A033122(n+1)`
-/

namespace A037646.P16968077559977418709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A037513 (n + 1) - A033122 (n + 1)

end

end A037646.P16968077559977418709

namespace A037646

/-- `2*A037513(n+1)-A033122(n+1)` -/
def P16968077559977418709.Spec : Prop :=
  ∀ n, P16968077559977418709.a n = A037646 (n + 1)

end A037646

/-! ## A037646.P3424343676028789741

`A131666(2*(n+1))+A084184(2*(n+1))`
-/

namespace A037646.P3424343676028789741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131666 (2 * (n + 1)) + A084184 (2 * (n + 1))

end

end A037646.P3424343676028789741

namespace A037646

/-- `A131666(2*(n+1))+A084184(2*(n+1))` -/
def P3424343676028789741.Spec : Prop :=
  ∀ n, P3424343676028789741.a n = A037646 (n + 1)

end A037646

/-! ## A037646.P11007406488195114820

`A167617(2*(n+1))+A113405(2*(n+1))`
-/

namespace A037646.P11007406488195114820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167617 (2 * (n + 1)) + A113405 (2 * (n + 1))

end

end A037646.P11007406488195114820

namespace A037646

/-- `A167617(2*(n+1))+A113405(2*(n+1))` -/
def P11007406488195114820.Spec : Prop :=
  ∀ n, P11007406488195114820.a n = A037646 (n + 1)

end A037646

/-!
# A037647: Base 5 digits are, in order, the first n terms of the periodic sequence with initial period 3,0,1.

The programs for A037647, the canonical program `A037647.P4263462015147500010` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037647 has offset 1).

The definition of A037647 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 143 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A037647.P2963260196379225399

`ogf((3+x^2)/(1-5x-x^3+5x^4))`
-/

namespace A037647.P2963260196379225399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, 0, 1] [1, -5, 0, -1, 5] n

end

end A037647.P2963260196379225399

namespace A037647

/-- `ogf((3+x^2)/(1-5x-x^3+5x^4))` -/
def P2963260196379225399.Spec : Prop :=
  ∀ n, P2963260196379225399.a n = A037647 (n + 1)

end A037647

/-! ## A037647.P4263462015147500010

`gcd(4, n%3)-(1-5*a(n-1))` with `a(0)=3`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A037647

/-- `gcd(4, n%3)-(1-5*a(n-1))` -/
def P4263462015147500010.Spec : Prop :=
  ∀ n, P4263462015147500010.a n = A037647 (n + 1)

theorem P4263462015147500010.correct : P4263462015147500010.Spec := by
  intro n
  simp only [A037647, Nat.add_sub_cancel]

end A037647

/-! ## A037647.P4076678409171174950

`A037514(n+1)+A033141(n+1)`
-/

namespace A037647.P4076678409171174950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037514 (n + 1) + A033141 (n + 1)

end

end A037647.P4076678409171174950

namespace A037647

/-- `A037514(n+1)+A033141(n+1)` -/
def P4076678409171174950.Spec : Prop :=
  ∀ n, P4076678409171174950.a n = A037647 (n + 1)

end A037647

/-! ## A037647.P8297394559793338164

`A033123(n+1)+2*A033141(n+1)`
-/

namespace A037647.P8297394559793338164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033123 (n + 1) + 2 * A033141 (n + 1)

end

end A037647.P8297394559793338164

namespace A037647

/-- `A033123(n+1)+2*A033141(n+1)` -/
def P8297394559793338164.Spec : Prop :=
  ∀ n, P8297394559793338164.a n = A037647 (n + 1)

end A037647

/-! ## A037647.P685330757007521231

`2*A037514(n+1)-A033123(n+1)`
-/

namespace A037647.P685330757007521231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A037514 (n + 1) - A033123 (n + 1)

end

end A037647.P685330757007521231

namespace A037647

/-- `2*A037514(n+1)-A033123(n+1)` -/
def P685330757007521231.Spec : Prop :=
  ∀ n, P685330757007521231.a n = A037647 (n + 1)

end A037647

/-! ## A037647.P18264042214605652528

`2*A037554(n+1)-A037538(n+1)`
-/

namespace A037647.P18264042214605652528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A037554 (n + 1) - A037538 (n + 1)

end

end A037647.P18264042214605652528

namespace A037647

/-- `2*A037554(n+1)-A037538(n+1)` -/
def P18264042214605652528.Spec : Prop :=
  ∀ n, P18264042214605652528.a n = A037647 (n + 1)

end A037647

/-! ## A037647.P1611018807216633941

`2*A037570(n+1)-A037605(n+1)`
-/

namespace A037647.P1611018807216633941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A037570 (n + 1) - A037605 (n + 1)

end

end A037647.P1611018807216633941

namespace A037647

/-- `2*A037570(n+1)-A037605(n+1)` -/
def P1611018807216633941.Spec : Prop :=
  ∀ n, P1611018807216633941.a n = A037647 (n + 1)

end A037647

/-! ## A037647.P6780884598253870232

`A037619(n+1)+A037626(n+1)-A037612(n+1)`
-/

namespace A037647.P6780884598253870232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037619 (n + 1) + (A037626 (n + 1) - A037612 (n + 1))

end

end A037647.P6780884598253870232

namespace A037647

/-- `A037619(n+1)+A037626(n+1)-A037612(n+1)` -/
def P6780884598253870232.Spec : Prop :=
  ∀ n, P6780884598253870232.a n = A037647 (n + 1)

end A037647

/-!
# A037648: Base 6 digits are, in order, the first n terms of the periodic sequence with initial period 3,0,1.

The programs for A037648, the canonical program `A037648.P16441658089097450245` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037648 has offset 1).

The definition of A037648 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 128 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A037648.P10143207598083948663

`ogf((3+x^2)/(1-6x-x^3+6x^4))`
-/

namespace A037648.P10143207598083948663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, 0, 1] [1, -6, 0, -1, 6] n

end

end A037648.P10143207598083948663

namespace A037648

/-- `ogf((3+x^2)/(1-6x-x^3+6x^4))` -/
def P10143207598083948663.Spec : Prop :=
  ∀ n, P10143207598083948663.a n = A037648 (n + 1)

end A037648

/-! ## A037648.P16441658089097450245

`A037515(n+1)+A033142(n+1)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A037648

/-- `A037515(n+1)+A033142(n+1)` -/
def P16441658089097450245.Spec : Prop :=
  ∀ n, P16441658089097450245.a n = A037648 (n + 1)

theorem P16441658089097450245.correct : P16441658089097450245.Spec := by
  intro n
  simp only [A037648, Nat.add_sub_cancel]

end A037648

/-! ## A037648.P12593592459395614148

`A033124(n+1)+2*A033142(n+1)`
-/

namespace A037648.P12593592459395614148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033124 (n + 1) + 2 * A033142 (n + 1)

end

end A037648.P12593592459395614148

namespace A037648

/-- `A033124(n+1)+2*A033142(n+1)` -/
def P12593592459395614148.Spec : Prop :=
  ∀ n, P12593592459395614148.a n = A037648 (n + 1)

end A037648

/-! ## A037648.P7219411620677426143

`2*A037515(n+1)-A033124(n+1)`
-/

namespace A037648.P7219411620677426143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A037515 (n + 1) - A033124 (n + 1)

end

end A037648.P7219411620677426143

namespace A037648

/-- `2*A037515(n+1)-A033124(n+1)` -/
def P7219411620677426143.Spec : Prop :=
  ∀ n, P7219411620677426143.a n = A037648 (n + 1)

end A037648

/-! ## A037648.P14608970784069007351

`2*A037555(n+1)-A037539(n+1)`
-/

namespace A037648.P14608970784069007351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A037555 (n + 1) - A037539 (n + 1)

end

end A037648.P14608970784069007351

namespace A037648

/-- `2*A037555(n+1)-A037539(n+1)` -/
def P14608970784069007351.Spec : Prop :=
  ∀ n, P14608970784069007351.a n = A037648 (n + 1)

end A037648

/-! ## A037648.P14226265407196149435

`3*A037515(n+1)-A037655(n+1)`
-/

namespace A037648.P14226265407196149435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A037515 (n + 1) - A037655 (n + 1)

end

end A037648.P14226265407196149435

namespace A037648

/-- `3*A037515(n+1)-A037655(n+1)` -/
def P14226265407196149435.Spec : Prop :=
  ∀ n, P14226265407196149435.a n = A037648 (n + 1)

end A037648

/-! ## A037648.P11403267748062915687

`A037515(n+1)+A037523(n+1)-A033133(n+1)`
-/

namespace A037648.P11403267748062915687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037515 (n + 1) + (A037523 (n + 1) - A033133 (n + 1))

end

end A037648.P11403267748062915687

namespace A037648

/-- `A037515(n+1)+A037523(n+1)-A033133(n+1)` -/
def P11403267748062915687.Spec : Prop :=
  ∀ n, P11403267748062915687.a n = A037648 (n + 1)

end A037648

/-! ## A037648.P16975578391200444411

`A037620(n+1)+A037627(n+1)-A037613(n+1)`
-/

namespace A037648.P16975578391200444411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037620 (n + 1) + (A037627 (n + 1) - A037613 (n + 1))

end

end A037648.P16975578391200444411

namespace A037648

/-- `A037620(n+1)+A037627(n+1)-A037613(n+1)` -/
def P16975578391200444411.Spec : Prop :=
  ∀ n, P16975578391200444411.a n = A037648 (n + 1)

end A037648

/-!
# A037649: Base 7 digits are, in order, the first n terms of the periodic sequence with initial period 3,0,1.

The programs for A037649, the canonical program `A037649.P13263363897181959732` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037649 has offset 1).

The definition of A037649 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A037649.P13263363897181959732

`floor(74*7^(n+1)/171)`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A037649

/-- `floor(74*7^(n+1)/171)` -/
def P13263363897181959732.Spec : Prop :=
  ∀ n, P13263363897181959732.a n = A037649 (n + 1)

theorem P13263363897181959732.correct : P13263363897181959732.Spec := by
  intro n
  simp only [A037649, Nat.add_sub_cancel]

end A037649

/-! ## A037649.P17006537645317818599

`A037516(n+1)+A033143(n+1)`
-/

namespace A037649.P17006537645317818599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037516 (n + 1) + A033143 (n + 1)

end

end A037649.P17006537645317818599

namespace A037649

/-- `A037516(n+1)+A033143(n+1)` -/
def P17006537645317818599.Spec : Prop :=
  ∀ n, P17006537645317818599.a n = A037649 (n + 1)

end A037649

/-! ## A037649.P12146895183292228851

`A033125(n+1)+2*A033143(n+1)`
-/

namespace A037649.P12146895183292228851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033125 (n + 1) + 2 * A033143 (n + 1)

end

end A037649.P12146895183292228851

namespace A037649

/-- `A033125(n+1)+2*A033143(n+1)` -/
def P12146895183292228851.Spec : Prop :=
  ∀ n, P12146895183292228851.a n = A037649 (n + 1)

end A037649

/-! ## A037649.P12609666249095134962

`2*A037516(n+1)-A033125(n+1)`
-/

namespace A037649.P12609666249095134962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A037516 (n + 1) - A033125 (n + 1)

end

end A037649.P12609666249095134962

namespace A037649

/-- `2*A037516(n+1)-A033125(n+1)` -/
def P12609666249095134962.Spec : Prop :=
  ∀ n, P12609666249095134962.a n = A037649 (n + 1)

end A037649

/-! ## A037649.P12423999795664790519

`2*A037556(n+1)-A037540(n+1)`
-/

namespace A037649.P12423999795664790519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A037556 (n + 1) - A037540 (n + 1)

end

end A037649.P12423999795664790519

namespace A037649

/-- `2*A037556(n+1)-A037540(n+1)` -/
def P12423999795664790519.Spec : Prop :=
  ∀ n, P12423999795664790519.a n = A037649 (n + 1)

end A037649

/-! ## A037649.P9327863905084811097

`A033125(n+1)+A037656(n+1)-A037500(n+1)`
-/

namespace A037649.P9327863905084811097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033125 (n + 1) + (A037656 (n + 1) - A037500 (n + 1))

end

end A037649.P9327863905084811097

namespace A037649

/-- `A033125(n+1)+A037656(n+1)-A037500(n+1)` -/
def P9327863905084811097.Spec : Prop :=
  ∀ n, P9327863905084811097.a n = A037649 (n + 1)

end A037649

/-! ## A037649.P11706743097862930262

`A037556(n+1)+A037572(n+1)-A037548(n+1)`
-/

namespace A037649.P11706743097862930262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037556 (n + 1) + (A037572 (n + 1) - A037548 (n + 1))

end

end A037649.P11706743097862930262

namespace A037649

/-- `A037556(n+1)+A037572(n+1)-A037548(n+1)` -/
def P11706743097862930262.Spec : Prop :=
  ∀ n, P11706743097862930262.a n = A037649 (n + 1)

end A037649

/-! ## A037649.P10738187519706393578

`A037621(n+1)+A037628(n+1)-A037614(n+1)`
-/

namespace A037649.P10738187519706393578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037621 (n + 1) + (A037628 (n + 1) - A037614 (n + 1))

end

end A037649.P10738187519706393578

namespace A037649

/-- `A037621(n+1)+A037628(n+1)-A037614(n+1)` -/
def P10738187519706393578.Spec : Prop :=
  ∀ n, P10738187519706393578.a n = A037649 (n + 1)

end A037649

/-! ## A037649.P4483199309287778168

`A037628(n+1)+A037656(n+1)-A037642(n+1)`
-/

namespace A037649.P4483199309287778168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037628 (n + 1) + (A037656 (n + 1) - A037642 (n + 1))

end

end A037649.P4483199309287778168

namespace A037649

/-- `A037628(n+1)+A037656(n+1)-A037642(n+1)` -/
def P4483199309287778168.Spec : Prop :=
  ∀ n, P4483199309287778168.a n = A037649 (n + 1)

end A037649

/-! ## A037649.P1754800278391555922

`A037556(n+1)+Δ[A037564(n+1)-A037556(n+1)]`
-/

namespace A037649.P1754800278391555922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037564 (n + 1) - A037556 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037556 (n + 1) + (f1 (n + 1) - f1 n)

end

end A037649.P1754800278391555922

namespace A037649

/-- `A037556(n+1)+Δ[A037564(n+1)-A037556(n+1)]` -/
def P1754800278391555922.Spec : Prop :=
  ∀ n, P1754800278391555922.a n = A037649 (n + 1)

end A037649

/-!
# A037650: Base 8 digits are, in order, the first n terms of the periodic sequence with initial period 3,0,1.

The programs for A037650, the canonical program `A037650.P4793582426605505152` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037650 has offset 1).

The definition of A037650 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A037650.P4793582426605505152

`xor(∑[A001018(n)], A037525(n+1))`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A037650

/-- `xor(∑[A001018(n)], A037525(n+1))` -/
def P4793582426605505152.Spec : Prop :=
  ∀ n, P4793582426605505152.a n = A037650 (n + 1)

theorem P4793582426605505152.correct : P4793582426605505152.Spec := by
  intro n
  simp only [A037650, Nat.add_sub_cancel]

end A037650

/-! ## A037650.P13781452977217691470

`A037517(n+1)+A033144(n+1)`
-/

namespace A037650.P13781452977217691470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037517 (n + 1) + A033144 (n + 1)

end

end A037650.P13781452977217691470

namespace A037650

/-- `A037517(n+1)+A033144(n+1)` -/
def P13781452977217691470.Spec : Prop :=
  ∀ n, P13781452977217691470.a n = A037650 (n + 1)

end A037650

/-! ## A037650.P3253023866075654793

`or(A033126(n+1), A037517(n+1))`
-/

namespace A037650.P3253023866075654793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A033126 (n + 1)) (A037517 (n + 1))

end

end A037650.P3253023866075654793

namespace A037650

/-- `or(A033126(n+1), A037517(n+1))` -/
def P3253023866075654793.Spec : Prop :=
  ∀ n, P3253023866075654793.a n = A037650 (n + 1)

end A037650

/-! ## A037650.P17349049226494371456

`xor(A033135(n+1), A037557(n+1))`
-/

namespace A037650.P17349049226494371456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A033135 (n + 1)) (A037557 (n + 1))

end

end A037650.P17349049226494371456

namespace A037650

/-- `xor(A033135(n+1), A037557(n+1))` -/
def P17349049226494371456.Spec : Prop :=
  ∀ n, P17349049226494371456.a n = A037650 (n + 1)

end A037650

/-! ## A037650.P17823839332248651086

`xor(A037509(n+1), A037565(n+1))`
-/

namespace A037650.P17823839332248651086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A037509 (n + 1)) (A037565 (n + 1))

end

end A037650.P17823839332248651086

namespace A037650

/-- `xor(A037509(n+1), A037565(n+1))` -/
def P17823839332248651086.Spec : Prop :=
  ∀ n, P17823839332248651086.a n = A037650 (n + 1)

end A037650

/-! ## A037650.P7300415808090536134

`xor(A037501(n+1), A037622(n+1))`
-/

namespace A037650.P7300415808090536134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A037501 (n + 1)) (A037622 (n + 1))

end

end A037650.P7300415808090536134

namespace A037650

/-- `xor(A037501(n+1), A037622(n+1))` -/
def P7300415808090536134.Spec : Prop :=
  ∀ n, P7300415808090536134.a n = A037650 (n + 1)

end A037650

/-! ## A037650.P1436749283359608027

`xor(A037533(n+1), A037636(n+1))`
-/

namespace A037650.P1436749283359608027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A037533 (n + 1)) (A037636 (n + 1))

end

end A037650.P1436749283359608027

namespace A037650

/-- `xor(A037533(n+1), A037636(n+1))` -/
def P1436749283359608027.Spec : Prop :=
  ∀ n, P1436749283359608027.a n = A037650 (n + 1)

end A037650

/-! ## A037650.P15684864359036521035

`xor(A037601(n+1), A037643(n+1))`
-/

namespace A037650.P15684864359036521035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A037601 (n + 1)) (A037643 (n + 1))

end

end A037650.P15684864359036521035

namespace A037650

/-- `xor(A037601(n+1), A037643(n+1))` -/
def P15684864359036521035.Spec : Prop :=
  ∀ n, P15684864359036521035.a n = A037650 (n + 1)

end A037650

/-! ## A037650.P4950398307054396378

`A033126(n+1)+2*A033144(n+1)`
-/

namespace A037650.P4950398307054396378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033126 (n + 1) + 2 * A033144 (n + 1)

end

end A037650.P4950398307054396378

namespace A037650

/-- `A033126(n+1)+2*A033144(n+1)` -/
def P4950398307054396378.Spec : Prop :=
  ∀ n, P4950398307054396378.a n = A037650 (n + 1)

end A037650

/-! ## A037650.P11865561071180781915

`2*A037557(n+1)-A037541(n+1)`
-/

namespace A037650.P11865561071180781915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A037557 (n + 1) - A037541 (n + 1)

end

end A037650.P11865561071180781915

namespace A037650

/-- `2*A037557(n+1)-A037541(n+1)` -/
def P11865561071180781915.Spec : Prop :=
  ∀ n, P11865561071180781915.a n = A037650 (n + 1)

end A037650

/-! ## A037650.P14053365641826591754

`xor(2*A033135(n+1), A037541(n+1))`
-/

namespace A037650.P14053365641826591754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (2 * A033135 (n + 1)) (A037541 (n + 1))

end

end A037650.P14053365641826591754

namespace A037650

/-- `xor(2*A033135(n+1), A037541(n+1))` -/
def P14053365641826591754.Spec : Prop :=
  ∀ n, P14053365641826591754.a n = A037650 (n + 1)

end A037650

/-! ## A037650.P6967817227378055927

`A037525(n+1)+A037573(n+1)-A037541(n+1)`
-/

namespace A037650.P6967817227378055927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037525 (n + 1) + (A037573 (n + 1) - A037541 (n + 1))

end

end A037650.P6967817227378055927

namespace A037650

/-- `A037525(n+1)+A037573(n+1)-A037541(n+1)` -/
def P6967817227378055927.Spec : Prop :=
  ∀ n, P6967817227378055927.a n = A037650 (n + 1)

end A037650

/-! ## A037650.P10286448080658531405

`xor(A037541(n+1)+A037501(n+1), A037549(n+1))`
-/

namespace A037650.P10286448080658531405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A037541 (n + 1) + A037501 (n + 1)) (A037549 (n + 1))

end

end A037650.P10286448080658531405

namespace A037650

/-- `xor(A037541(n+1)+A037501(n+1), A037549(n+1))` -/
def P10286448080658531405.Spec : Prop :=
  ∀ n, P10286448080658531405.a n = A037650 (n + 1)

end A037650

/-! ## A037650.P5399010947798638231

`xor(A037557(n+1)-A033126(n+1), A037557(n+1))`
-/

namespace A037650.P5399010947798638231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A037557 (n + 1) - A033126 (n + 1)) (A037557 (n + 1))

end

end A037650.P5399010947798638231

namespace A037650

/-- `xor(A037557(n+1)-A033126(n+1), A037557(n+1))` -/
def P5399010947798638231.Spec : Prop :=
  ∀ n, P5399010947798638231.a n = A037650 (n + 1)

end A037650

/-! ## A037650.P9843412540129194971

`xor(A037565(n+1)-A033126(n+1), A037565(n+1))`
-/

namespace A037650.P9843412540129194971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A037565 (n + 1) - A033126 (n + 1)) (A037565 (n + 1))

end

end A037650.P9843412540129194971

namespace A037650

/-- `xor(A037565(n+1)-A033126(n+1), A037565(n+1))` -/
def P9843412540129194971.Spec : Prop :=
  ∀ n, P9843412540129194971.a n = A037650 (n + 1)

end A037650

/-! ## A037650.P7395865372229406119

`xor(A037622(n+1)-A033126(n+1), A037622(n+1))`
-/

namespace A037650.P7395865372229406119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A037622 (n + 1) - A033126 (n + 1)) (A037622 (n + 1))

end

end A037650.P7395865372229406119

namespace A037650

/-- `xor(A037622(n+1)-A033126(n+1), A037622(n+1))` -/
def P7395865372229406119.Spec : Prop :=
  ∀ n, P7395865372229406119.a n = A037650 (n + 1)

end A037650

/-!
# A037651: Base 9 digits are, in order, the first n terms of the periodic sequence with initial period 3,0,1.

The programs for A037651, the canonical program `A037651.P5689358388814351133` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037651 has offset 1).

The definition of A037651 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A037651.P5689358388814351133

`A037518(n+1)+A033145(n+1)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A037651

/-- `A037518(n+1)+A033145(n+1)` -/
def P5689358388814351133.Spec : Prop :=
  ∀ n, P5689358388814351133.a n = A037651 (n + 1)

theorem P5689358388814351133.correct : P5689358388814351133.Spec := by
  intro n
  simp only [A037651, Nat.add_sub_cancel]

end A037651

/-! ## A037651.P17450277533511467659

`A033127(n+1)+2*A033145(n+1)`
-/

namespace A037651.P17450277533511467659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033127 (n + 1) + 2 * A033145 (n + 1)

end

end A037651.P17450277533511467659

namespace A037651

/-- `A033127(n+1)+2*A033145(n+1)` -/
def P17450277533511467659.Spec : Prop :=
  ∀ n, P17450277533511467659.a n = A037651 (n + 1)

end A037651

/-! ## A037651.P16188310505459206347

`2*A037518(n+1)-A033127(n+1)`
-/

namespace A037651.P16188310505459206347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A037518 (n + 1) - A033127 (n + 1)

end

end A037651.P16188310505459206347

namespace A037651

/-- `2*A037518(n+1)-A033127(n+1)` -/
def P16188310505459206347.Spec : Prop :=
  ∀ n, P16188310505459206347.a n = A037651 (n + 1)

end A037651

/-! ## A037651.P10732925347340342521

`A033145(n+1)+A037658(n+1)-A033127(n+1)`
-/

namespace A037651.P10732925347340342521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033145 (n + 1) + (A037658 (n + 1) - A033127 (n + 1))

end

end A037651.P10732925347340342521

namespace A037651

/-- `A033145(n+1)+A037658(n+1)-A033127(n+1)` -/
def P10732925347340342521.Spec : Prop :=
  ∀ n, P10732925347340342521.a n = A037651 (n + 1)

theorem P10732925347340342521.correct : P10732925347340342521.Spec := by
  intro n
  simp only [A037651, Nat.add_sub_cancel, A037651.P10732925347340342521.a, A037651.P5689358388814351133.a, A033127, A033127.P18205550115353323205.a, A033145, A033145.P18225206486127704413.a, A037518, A037518.P965897409930183489.a, A037658, A037658.P4555952278933181869.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A037651

/-! ## A037651.P992019646755220794

`A037518(n+1)+A037566(n+1)-A037542(n+1)`
-/

namespace A037651.P992019646755220794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037518 (n + 1) + (A037566 (n + 1) - A037542 (n + 1))

end

end A037651.P992019646755220794

namespace A037651

/-- `A037518(n+1)+A037566(n+1)-A037542(n+1)` -/
def P992019646755220794.Spec : Prop :=
  ∀ n, P992019646755220794.a n = A037651 (n + 1)

end A037651

/-! ## A037651.P18405797528664815186

`A037558(n+1)+A037574(n+1)-A037550(n+1)`
-/

namespace A037651.P18405797528664815186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037558 (n + 1) + (A037574 (n + 1) - A037550 (n + 1))

end

end A037651.P18405797528664815186

namespace A037651

/-- `A037558(n+1)+A037574(n+1)-A037550(n+1)` -/
def P18405797528664815186.Spec : Prop :=
  ∀ n, P18405797528664815186.a n = A037651 (n + 1)

end A037651

/-! ## A037651.P10440654774687638683

`3*A037518(n+1)-A037658(n+1)`
-/

namespace A037651.P10440654774687638683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A037518 (n + 1) - A037658 (n + 1)

end

end A037651.P10440654774687638683

namespace A037651

/-- `3*A037518(n+1)-A037658(n+1)` -/
def P10440654774687638683.Spec : Prop :=
  ∀ n, P10440654774687638683.a n = A037651 (n + 1)

end A037651

/-! ## A037651.P14091005129320084042

`Δ[∑[A037542(n+1)]-A033127(n+1)]`
-/

namespace A037651.P14091005129320084042
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037542 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A033127 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A037651.P14091005129320084042

namespace A037651

/-- `Δ[∑[A037542(n+1)]-A033127(n+1)]` -/
def P14091005129320084042.Spec : Prop :=
  ∀ n, P14091005129320084042.a n = A037651 (n + 1)

end A037651

/-!
# A037652: Decimal expansion of a(n) is given by the first n terms of the periodic sequence with initial period 3,0,1.

The programs for A037652, the canonical program `A037652.P15871230901910890562` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037652 has offset 1).

The definition of A037652 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A037652.P15871230901910890562

`char[3*n]+5*a(n-1)+(n-1)%3+5*a(n-1)` with `a(0)=3`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A037652

/-- `char[3*n]+5*a(n-1)+(n-1)%3+5*a(n-1)` -/
def P15871230901910890562.Spec : Prop :=
  ∀ n, P15871230901910890562.a n = A037652 (n + 1)

theorem P15871230901910890562.correct : P15871230901910890562.Spec := by
  intro n
  simp only [A037652, Nat.add_sub_cancel]

end A037652

/-! ## A037652.P10831109303067761267

`2*(5*a(n-1)+2-n²%3)-A100063(n+2)` with `a(0)=3`
-/

namespace A037652.P10831109303067761267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  2 * (5 * a (n - 1) + 2 - ((n ^ 2 % 3 : ℕ) : ℤ)) - A100063 (n + 2)

end

end A037652.P10831109303067761267

namespace A037652

/-- `2*(5*a(n-1)+2-n²%3)-A100063(n+2)` -/
def P10831109303067761267.Spec : Prop :=
  ∀ n, P10831109303067761267.a n = A037652 (n + 1)

end A037652

/-! ## A037652.P5565915169535014081

`2*(A100063(n)+5*a(n-1))-A100063(n+2)` with `a(0)=3`
-/

namespace A037652.P5565915169535014081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  2 * (A100063 n + 5 * a (n - 1)) - A100063 (n + 2)

end

end A037652.P5565915169535014081

namespace A037652

/-- `2*(A100063(n)+5*a(n-1))-A100063(n+2)` -/
def P5565915169535014081.Spec : Prop :=
  ∀ n, P5565915169535014081.a n = A037652 (n + 1)

end A037652

/-! ## A037652.P7255948917724512544

`A007284(A037513(n+1))`
-/

namespace A037652.P7255948917724512544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007284 (A037513 (n + 1)).toNat

end

end A037652.P7255948917724512544

namespace A037652

/-- `A007284(A037513(n+1))` -/
def P7255948917724512544.Spec : Prop :=
  ∀ n, P7255948917724512544.a n = A037652 (n + 1)

end A037652

/-!
# A037653: Base 4 digits are, in order, the first n terms of the periodic sequence with initial period 3,0,2.

The programs for A037653, the canonical program `A037653.P6854088846193016481` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037653 has offset 1).

The definition of A037653 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A037653.P3526768078682620911

`ogf((3+2x^2)/(1-4x-x^3+4x^4))`
-/

namespace A037653.P3526768078682620911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, 0, 2] [1, -4, 0, -1, 4] n

end

end A037653.P3526768078682620911

namespace A037653

/-- `ogf((3+2x^2)/(1-4x-x^3+4x^4))` -/
def P3526768078682620911.Spec : Prop :=
  ∀ n, P3526768078682620911.a n = A037653 (n + 1)

end A037653

/-! ## A037653.P6854088846193016481

`xor(∑[4^n], A037632(n+1))`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A037653

/-- `xor(∑[4^n], A037632(n+1))` -/
def P6854088846193016481.Spec : Prop :=
  ∀ n, P6854088846193016481.a n = A037653 (n + 1)

theorem P6854088846193016481.correct : P6854088846193016481.Spec := by
  intro n
  simp only [A037653, Nat.add_sub_cancel]

end A037653

/-! ## A037653.P17607605565287733226

`A037561(n+1)+Δ[A178872(n)]`
-/

namespace A037653.P17607605565287733226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178872 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037561 (n + 1) + (f1 (n + 1) - f1 n)

end

end A037653.P17607605565287733226

namespace A037653

/-- `A037561(n+1)+Δ[A178872(n)]` -/
def P17607605565287733226.Spec : Prop :=
  ∀ n, P17607605565287733226.a n = A037653 (n + 1)

end A037653

/-! ## A037653.P8356759975792413150

`xor(floor(A072197(n)/7), A072197(n))`
-/

namespace A037653.P8356759975792413150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ⌊(A072197 n : ℚ) / 7⌋ (A072197 n)

end

end A037653.P8356759975792413150

namespace A037653

/-- `xor(floor(A072197(n)/7), A072197(n))` -/
def P8356759975792413150.Spec : Prop :=
  ∀ n, P8356759975792413150.a n = A037653 (n + 1)

end A037653

/-! ## A037653.P8518119074471186474

`A037513(n+1)+A033122(n+1)`
-/

namespace A037653.P8518119074471186474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037513 (n + 1) + A033122 (n + 1)

end

end A037653.P8518119074471186474

namespace A037653

/-- `A037513(n+1)+A033122(n+1)` -/
def P8518119074471186474.Spec : Prop :=
  ∀ n, P8518119074471186474.a n = A037653 (n + 1)

end A037653

/-! ## A037653.P4159487820516342339

`A178872(n+1)+A037569(n+1)`
-/

namespace A037653.P4159487820516342339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178872 (n + 1) + A037569 (n + 1)

end

end A037653.P4159487820516342339

namespace A037653

/-- `A178872(n+1)+A037569(n+1)` -/
def P4159487820516342339.Spec : Prop :=
  ∀ n, P4159487820516342339.a n = A037653 (n + 1)

end A037653

/-! ## A037653.P13884973843781883396

`xor(A033131(n+1), A037569(n+1))`
-/

namespace A037653.P13884973843781883396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A033131 (n + 1)) (A037569 (n + 1))

end

end A037653.P13884973843781883396

namespace A037653

/-- `xor(A033131(n+1), A037569(n+1))` -/
def P13884973843781883396.Spec : Prop :=
  ∀ n, P13884973843781883396.a n = A037653 (n + 1)

end A037653

/-! ## A037653.P4995385171150759341

`xor(A033122(n+1), A037618(n+1))`
-/

namespace A037653.P4995385171150759341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A033122 (n + 1)) (A037618 (n + 1))

end

end A037653.P4995385171150759341

namespace A037653

/-- `xor(A033122(n+1), A037618(n+1))` -/
def P4995385171150759341.Spec : Prop :=
  ∀ n, P4995385171150759341.a n = A037653 (n + 1)

end A037653

/-! ## A037653.P16079869590673885127

`xor(A037521(n+1), A037529(n+1))`
-/

namespace A037653.P16079869590673885127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A037521 (n + 1)) (A037529 (n + 1))

end

end A037653.P16079869590673885127

namespace A037653

/-- `xor(A037521(n+1), A037529(n+1))` -/
def P16079869590673885127.Spec : Prop :=
  ∀ n, P16079869590673885127.a n = A037653 (n + 1)

end A037653

/-! ## A037653.P9655141269896168680

`xor(A037513(n+1), A037590(n+1))`
-/

namespace A037653.P9655141269896168680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A037513 (n + 1)) (A037590 (n + 1))

end

end A037653.P9655141269896168680

namespace A037653

/-- `xor(A037513(n+1), A037590(n+1))` -/
def P9655141269896168680.Spec : Prop :=
  ∀ n, P9655141269896168680.a n = A037653 (n + 1)

end A037653

/-! ## A037653.P10722220762932479851

`xor(A037561(n+1), A037604(n+1))`
-/

namespace A037653.P10722220762932479851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A037561 (n + 1)) (A037604 (n + 1))

end

end A037653.P10722220762932479851

namespace A037653

/-- `xor(A037561(n+1), A037604(n+1))` -/
def P10722220762932479851.Spec : Prop :=
  ∀ n, P10722220762932479851.a n = A037653 (n + 1)

end A037653

/-! ## A037653.P2456415655995988867

`xor(A037611(n+1), A037625(n+1))`
-/

namespace A037653.P2456415655995988867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A037611 (n + 1)) (A037625 (n + 1))

end

end A037653.P2456415655995988867

namespace A037653

/-- `xor(A037611(n+1), A037625(n+1))` -/
def P2456415655995988867.Spec : Prop :=
  ∀ n, P2456415655995988867.a n = A037653 (n + 1)

end A037653

/-! ## A037653.P11374130291748611017

`A033140(n+1)+2*A033122(n+1)`
-/

namespace A037653.P11374130291748611017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033140 (n + 1) + 2 * A033122 (n + 1)

end

end A037653.P11374130291748611017

namespace A037653

/-- `A033140(n+1)+2*A033122(n+1)` -/
def P11374130291748611017.Spec : Prop :=
  ∀ n, P11374130291748611017.a n = A037653 (n + 1)

end A037653

/-! ## A037653.P10044252404048899316

`2*A037513(n+1)-A033140(n+1)`
-/

namespace A037653.P10044252404048899316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A037513 (n + 1) - A033140 (n + 1)

end

end A037653.P10044252404048899316

namespace A037653

/-- `2*A037513(n+1)-A033140(n+1)` -/
def P10044252404048899316.Spec : Prop :=
  ∀ n, P10044252404048899316.a n = A037653 (n + 1)

end A037653

/-! ## A037653.P14307838803695770786

`or(2*A033122(n+1), A037497(n+1))`
-/

namespace A037653.P14307838803695770786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (2 * A033122 (n + 1)) (A037497 (n + 1))

end

end A037653.P14307838803695770786

namespace A037653

/-- `or(2*A033122(n+1), A037497(n+1))` -/
def P14307838803695770786.Spec : Prop :=
  ∀ n, P14307838803695770786.a n = A037653 (n + 1)

end A037653

/-! ## A037653.P16455709682899041592

`A195904(2*(n+1))+A033138(2*n+1)`
-/

namespace A037653.P16455709682899041592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195904 (2 * (n + 1)) + A033138 (2 * n + 1)

end

end A037653.P16455709682899041592

namespace A037653

/-- `A195904(2*(n+1))+A033138(2*n+1)` -/
def P16455709682899041592.Spec : Prop :=
  ∀ n, P16455709682899041592.a n = A037653 (n + 1)

end A037653

/-! ## A037653.P5764574204174719851

`A033122(n+2)-or(1, A033138(2*n+1))`
-/

namespace A037653.P5764574204174719851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033122 (n + 2) - Int.lor 1 (A033138 (2 * n + 1))

end

end A037653.P5764574204174719851

namespace A037653

/-- `A033122(n+2)-or(1, A033138(2*n+1))` -/
def P5764574204174719851.Spec : Prop :=
  ∀ n, P5764574204174719851.a n = A037653 (n + 1)

end A037653

/-! ## A037653.P7227164793885336626

`xor(A037569(n+1)-A037497(n+1), A037569(n+1))`
-/

namespace A037653.P7227164793885336626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A037569 (n + 1) - A037497 (n + 1)) (A037569 (n + 1))

end

end A037653.P7227164793885336626

namespace A037653

/-- `xor(A037569(n+1)-A037497(n+1), A037569(n+1))` -/
def P7227164793885336626.Spec : Prop :=
  ∀ n, P7227164793885336626.a n = A037653 (n + 1)

end A037653

/-! ## A037653.P2715079415910997482

`xor(A037618(n+1)-A037497(n+1), A037618(n+1))`
-/

namespace A037653.P2715079415910997482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A037618 (n + 1) - A037497 (n + 1)) (A037618 (n + 1))

end

end A037653.P2715079415910997482

namespace A037653

/-- `xor(A037618(n+1)-A037497(n+1), A037618(n+1))` -/
def P2715079415910997482.Spec : Prop :=
  ∀ n, P2715079415910997482.a n = A037653 (n + 1)

end A037653

/-! ## A037653.P7651028112457456441

`A033138(2*n+1)+and(A033138(2*(n+1)), A052997(2*n+1))`
-/

namespace A037653.P7651028112457456441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033138 (2 * n + 1) + Int.land (A033138 (2 * (n + 1))) (A052997 (2 * n + 1))

end

end A037653.P7651028112457456441

namespace A037653

/-- `A033138(2*n+1)+and(A033138(2*(n+1)), A052997(2*n+1))` -/
def P7651028112457456441.Spec : Prop :=
  ∀ n, P7651028112457456441.a n = A037653 (n + 1)

end A037653

/-!
# A037654: Base 5 digits are, in order, the first n terms of the periodic sequence with initial period 3,0,2.

The programs for A037654, the canonical program `A037654.P9330447428978880176` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037654 has offset 1).

The definition of A037654 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 143 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A037654.P991288122985498981

`ogf((3+2x^2)/(1-5x-x^3+5x^4))`
-/

namespace A037654.P991288122985498981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, 0, 2] [1, -5, 0, -1, 5] n

end

end A037654.P991288122985498981

namespace A037654

/-- `ogf((3+2x^2)/(1-5x-x^3+5x^4))` -/
def P991288122985498981.Spec : Prop :=
  ∀ n, P991288122985498981.a n = A037654 (n + 1)

end A037654

/-! ## A037654.P9330447428978880176

`A037514(n+1)+A033123(n+1)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A037654

/-- `A037514(n+1)+A033123(n+1)` -/
def P9330447428978880176.Spec : Prop :=
  ∀ n, P9330447428978880176.a n = A037654 (n + 1)

theorem P9330447428978880176.correct : P9330447428978880176.Spec := by
  intro n
  simp only [A037654, Nat.add_sub_cancel]

end A037654

/-! ## A037654.P5137255863527542163

`A033141(n+1)+2*A033123(n+1)`
-/

namespace A037654.P5137255863527542163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033141 (n + 1) + 2 * A033123 (n + 1)

end

end A037654.P5137255863527542163

namespace A037654

/-- `A033141(n+1)+2*A033123(n+1)` -/
def P5137255863527542163.Spec : Prop :=
  ∀ n, P5137255863527542163.a n = A037654 (n + 1)

end A037654

/-! ## A037654.P3062643844163383316

`2*A037514(n+1)-A033141(n+1)`
-/

namespace A037654.P3062643844163383316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A037514 (n + 1) - A033141 (n + 1)

end

end A037654.P3062643844163383316

namespace A037654

/-- `2*A037514(n+1)-A033141(n+1)` -/
def P3062643844163383316.Spec : Prop :=
  ∀ n, P3062643844163383316.a n = A037654 (n + 1)

end A037654

/-! ## A037654.P3255355648002120311

`2*A037570(n+1)-A037546(n+1)`
-/

namespace A037654.P3255355648002120311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A037570 (n + 1) - A037546 (n + 1)

end

end A037654.P3255355648002120311

namespace A037654

/-- `2*A037570(n+1)-A037546(n+1)` -/
def P3255355648002120311.Spec : Prop :=
  ∀ n, P3255355648002120311.a n = A037654 (n + 1)

end A037654

/-! ## A037654.P15529405122786558682

`5*A033123(n+1)-A037619(n+1)`
-/

namespace A037654.P15529405122786558682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A033123 (n + 1) - A037619 (n + 1)

end

end A037654.P15529405122786558682

namespace A037654

/-- `5*A033123(n+1)-A037619(n+1)` -/
def P15529405122786558682.Spec : Prop :=
  ∀ n, P15529405122786558682.a n = A037654 (n + 1)

end A037654

/-! ## A037654.P5539128967546502006

`A037514(n+1)+A037554(n+1)-A033132(n+1)`
-/

namespace A037654.P5539128967546502006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037514 (n + 1) + (A037554 (n + 1) - A033132 (n + 1))

end

end A037654.P5539128967546502006

namespace A037654

/-- `A037514(n+1)+A037554(n+1)-A033132(n+1)` -/
def P5539128967546502006.Spec : Prop :=
  ∀ n, P5539128967546502006.a n = A037654 (n + 1)

end A037654

/-! ## A037654.P4262473789968583632

`A037554(n+1)+A037619(n+1)-A037530(n+1)`
-/

namespace A037654.P4262473789968583632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037554 (n + 1) + (A037619 (n + 1) - A037530 (n + 1))

end

end A037654.P4262473789968583632

namespace A037654

/-- `A037554(n+1)+A037619(n+1)-A037530(n+1)` -/
def P4262473789968583632.Spec : Prop :=
  ∀ n, P4262473789968583632.a n = A037654 (n + 1)

end A037654

/-!
# A037655: Base 6 digits are, in order, the first n terms of the periodic sequence with initial period 3,0,2.

The programs for A037655, the canonical program `A037655.P14136768179500319102` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037655 has offset 1).

The definition of A037655 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 128 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A037655.P582048104783027640

`ogf((3+2x^2)/(1-6x-x^3+6x^4))`
-/

namespace A037655.P582048104783027640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, 0, 2] [1, -6, 0, -1, 6] n

end

end A037655.P582048104783027640

namespace A037655

/-- `ogf((3+2x^2)/(1-6x-x^3+6x^4))` -/
def P582048104783027640.Spec : Prop :=
  ∀ n, P582048104783027640.a n = A037655 (n + 1)

end A037655

/-! ## A037655.P14136768179500319102

`floor(Δ[A037531(n+1)/2])`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A037655

/-- `floor(Δ[A037531(n+1)/2])` -/
def P14136768179500319102.Spec : Prop :=
  ∀ n, P14136768179500319102.a n = A037655 (n + 1)

theorem P14136768179500319102.correct : P14136768179500319102.Spec := by
  intro n
  simp only [A037655, Nat.add_sub_cancel]

end A037655

/-! ## A037655.P4556111953502372328

`or(6*a(n-1), Δ[A047611(n+1)+n])` with `a(0)=3`
-/

namespace A037655.P4556111953502372328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047611 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  Int.lor (6 * a (n - 1)) (f1 (n + 1) - f1 n)

end

end A037655.P4556111953502372328

namespace A037655

/-- `or(6*a(n-1), Δ[A047611(n+1)+n])` -/
def P4556111953502372328.Spec : Prop :=
  ∀ n, P4556111953502372328.a n = A037655 (n + 1)

end A037655

/-! ## A037655.P1028242306406527851

`A037515(n+1)+A033124(n+1)`
-/

namespace A037655.P1028242306406527851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037515 (n + 1) + A033124 (n + 1)

end

end A037655.P1028242306406527851

namespace A037655

/-- `A037515(n+1)+A033124(n+1)` -/
def P1028242306406527851.Spec : Prop :=
  ∀ n, P1028242306406527851.a n = A037655 (n + 1)

end A037655

/-! ## A037655.P8981217064943838155

`A033142(n+1)+2*A033124(n+1)`
-/

namespace A037655.P8981217064943838155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033142 (n + 1) + 2 * A033124 (n + 1)

end

end A037655.P8981217064943838155

namespace A037655

/-- `A033142(n+1)+2*A033124(n+1)` -/
def P8981217064943838155.Spec : Prop :=
  ∀ n, P8981217064943838155.a n = A037655 (n + 1)

end A037655

/-! ## A037655.P8517872435553221200

`A037499(n+1)+2*A033142(n+1)`
-/

namespace A037655.P8517872435553221200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037499 (n + 1) + 2 * A033142 (n + 1)

end

end A037655.P8517872435553221200

namespace A037655

/-- `A037499(n+1)+2*A033142(n+1)` -/
def P8517872435553221200.Spec : Prop :=
  ∀ n, P8517872435553221200.a n = A037655 (n + 1)

end A037655

/-! ## A037655.P18127436947978795436

`2*A037515(n+1)-A033142(n+1)`
-/

namespace A037655.P18127436947978795436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A037515 (n + 1) - A033142 (n + 1)

end

end A037655.P18127436947978795436

namespace A037655

/-- `2*A037515(n+1)-A033142(n+1)` -/
def P18127436947978795436.Spec : Prop :=
  ∀ n, P18127436947978795436.a n = A037655 (n + 1)

end A037655

/-! ## A037655.P4070131758502004959

`2*A037571(n+1)-A037547(n+1)`
-/

namespace A037655.P4070131758502004959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A037571 (n + 1) - A037547 (n + 1)

end

end A037655.P4070131758502004959

namespace A037655

/-- `2*A037571(n+1)-A037547(n+1)` -/
def P4070131758502004959.Spec : Prop :=
  ∀ n, P4070131758502004959.a n = A037655 (n + 1)

end A037655

/-! ## A037655.P464516534966359417

`Δ[∑[A037547(n+1)]-A037499(n+1)]`
-/

namespace A037655.P464516534966359417
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037547 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A037499 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A037655.P464516534966359417

namespace A037655

/-- `Δ[∑[A037547(n+1)]-A037499(n+1)]` -/
def P464516534966359417.Spec : Prop :=
  ∀ n, P464516534966359417.a n = A037655 (n + 1)

end A037655

/-! ## A037655.P15378533407478800114

`A037563(n+1)+A037620(n+1)-A037547(n+1)`
-/

namespace A037655.P15378533407478800114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037563 (n + 1) + (A037620 (n + 1) - A037547 (n + 1))

end

end A037655.P15378533407478800114

namespace A037655

/-- `A037563(n+1)+A037620(n+1)-A037547(n+1)` -/
def P15378533407478800114.Spec : Prop :=
  ∀ n, P15378533407478800114.a n = A037655 (n + 1)

end A037655

/-!
# A037656: Base 7 digits are, in order, the first n terms of the periodic sequence with initial period 3,0,2.

The programs for A037656, the canonical program `A037656.P245577206656262556` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037656 has offset 1).

The definition of A037656 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 118 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A037656.P245577206656262556

`A037516(n+1)+A033125(n+1)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A037656

/-- `A037516(n+1)+A033125(n+1)` -/
def P245577206656262556.Spec : Prop :=
  ∀ n, P245577206656262556.a n = A037656 (n + 1)

theorem P245577206656262556.correct : P245577206656262556.Spec := by
  intro n
  simp only [A037656, Nat.add_sub_cancel]

end A037656

/-! ## A037656.P17339438816949196005

`A033143(n+1)+2*A033125(n+1)`
-/

namespace A037656.P17339438816949196005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033143 (n + 1) + 2 * A033125 (n + 1)

end

end A037656.P17339438816949196005

namespace A037656

/-- `A033143(n+1)+2*A033125(n+1)` -/
def P17339438816949196005.Spec : Prop :=
  ∀ n, P17339438816949196005.a n = A037656 (n + 1)

end A037656

/-! ## A037656.P8309013333588273093

`2*A037516(n+1)-A033143(n+1)`
-/

namespace A037656.P8309013333588273093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A037516 (n + 1) - A033143 (n + 1)

end

end A037656.P8309013333588273093

namespace A037656

/-- `2*A037516(n+1)-A033143(n+1)` -/
def P8309013333588273093.Spec : Prop :=
  ∀ n, P8309013333588273093.a n = A037656 (n + 1)

end A037656

/-! ## A037656.P6122861732741127292

`2*A037572(n+1)-A037548(n+1)`
-/

namespace A037656.P6122861732741127292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A037572 (n + 1) - A037548 (n + 1)

end

end A037656.P6122861732741127292

namespace A037656

/-- `2*A037572(n+1)-A037548(n+1)` -/
def P6122861732741127292.Spec : Prop :=
  ∀ n, P6122861732741127292.a n = A037656 (n + 1)

end A037656

/-! ## A037656.P7767748992296958716

`4*A033125(n+1)-A037500(n+1)`
-/

namespace A037656.P7767748992296958716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A033125 (n + 1) - A037500 (n + 1)

end

end A037656.P7767748992296958716

namespace A037656

/-- `4*A033125(n+1)-A037500(n+1)` -/
def P7767748992296958716.Spec : Prop :=
  ∀ n, P7767748992296958716.a n = A037656 (n + 1)

end A037656

/-! ## A037656.P15771517435763366339

`5*A033125(n+1)-A037621(n+1)`
-/

namespace A037656.P15771517435763366339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A033125 (n + 1) - A037621 (n + 1)

end

end A037656.P15771517435763366339

namespace A037656

/-- `5*A033125(n+1)-A037621(n+1)` -/
def P15771517435763366339.Spec : Prop :=
  ∀ n, P15771517435763366339.a n = A037656 (n + 1)

end A037656

/-! ## A037656.P14009798151710427698

`A037635(n+1)+A037670(n+1)-A037642(n+1)`
-/

namespace A037656.P14009798151710427698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037635 (n + 1) + (A037670 (n + 1) - A037642 (n + 1))

end

end A037656.P14009798151710427698

namespace A037656

/-- `A037635(n+1)+A037670(n+1)-A037642(n+1)` -/
def P14009798151710427698.Spec : Prop :=
  ∀ n, P14009798151710427698.a n = A037656 (n + 1)

end A037656

/-! ## A037656.P16040570891425195681

`Δ[∑[A037572(n+1)]%A033125(n+1)]`
-/

namespace A037656.P16040570891425195681
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037572 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f2 j) (A033125 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A037656.P16040570891425195681

namespace A037656

/-- `Δ[∑[A037572(n+1)]%A033125(n+1)]` -/
def P16040570891425195681.Spec : Prop :=
  ∀ n, P16040570891425195681.a n = A037656 (n + 1)

end A037656

/-!
# A037657: Base 8 digits are, in order, the first n terms of the periodic sequence with initial period 3,0,2.

The programs for A037657, the canonical program `A037657.P11691003737513348901` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037657 has offset 1).

The definition of A037657 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A037657.P11691003737513348901

`xor(2, (n+1)%3+8*a(n-1))` with `a(0)=3`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A037657

/-- `xor(2, (n+1)%3+8*a(n-1))` -/
def P11691003737513348901.Spec : Prop :=
  ∀ n, (P11691003737513348901.a n : ℤ) = A037657 (n + 1)

theorem P11691003737513348901.correct : P11691003737513348901.Spec := by
  intro n
  simp only [A037657, Nat.add_sub_cancel]

end A037657

/-! ## A037657.P7948252658617519143

`xor(∑[A001018(n)], A037636(n+1))`
-/

namespace A037657.P7948252658617519143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001018 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (∑ j ∈ Finset.range (n + 1), f1 j) (A037636 (n + 1))

end

end A037657.P7948252658617519143

namespace A037657

/-- `xor(∑[A001018(n)], A037636(n+1))` -/
def P7948252658617519143.Spec : Prop :=
  ∀ n, P7948252658617519143.a n = A037657 (n + 1)

end A037657

/-! ## A037657.P5945778007774244984

`A037517(n+1)+A033126(n+1)`
-/

namespace A037657.P5945778007774244984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037517 (n + 1) + A033126 (n + 1)

end

end A037657.P5945778007774244984

namespace A037657

/-- `A037517(n+1)+A033126(n+1)` -/
def P5945778007774244984.Spec : Prop :=
  ∀ n, P5945778007774244984.a n = A037657 (n + 1)

end A037657

/-! ## A037657.P12627838703607445944

`xor(A033135(n+1), A037573(n+1))`
-/

namespace A037657.P12627838703607445944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A033135 (n + 1)) (A037573 (n + 1))

end

end A037657.P12627838703607445944

namespace A037657

/-- `xor(A033135(n+1), A037573(n+1))` -/
def P12627838703607445944.Spec : Prop :=
  ∀ n, P12627838703607445944.a n = A037657 (n + 1)

end A037657

/-! ## A037657.P8359027769984501858

`xor(A033126(n+1), A037622(n+1))`
-/

namespace A037657.P8359027769984501858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A033126 (n + 1)) (A037622 (n + 1))

end

end A037657.P8359027769984501858

namespace A037657

/-- `xor(A033126(n+1), A037622(n+1))` -/
def P8359027769984501858.Spec : Prop :=
  ∀ n, P8359027769984501858.a n = A037657 (n + 1)

end A037657

/-! ## A037657.P13284467991533742440

`xor(A037525(n+1), A037533(n+1))`
-/

namespace A037657.P13284467991533742440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A037525 (n + 1)) (A037533 (n + 1))

end

end A037657.P13284467991533742440

namespace A037657

/-- `xor(A037525(n+1), A037533(n+1))` -/
def P13284467991533742440.Spec : Prop :=
  ∀ n, P13284467991533742440.a n = A037657 (n + 1)

end A037657

/-! ## A037657.P15969112252736338279

`xor(A037615(n+1), A037629(n+1))`
-/

namespace A037657.P15969112252736338279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A037615 (n + 1)) (A037629 (n + 1))

end

end A037657.P15969112252736338279

namespace A037657

/-- `xor(A037615(n+1), A037629(n+1))` -/
def P15969112252736338279.Spec : Prop :=
  ∀ n, P15969112252736338279.a n = A037657 (n + 1)

end A037657

/-! ## A037657.P11539086208413752936

`A033144(n+1)+2*A033126(n+1)`
-/

namespace A037657.P11539086208413752936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033144 (n + 1) + 2 * A033126 (n + 1)

end

end A037657.P11539086208413752936

namespace A037657

/-- `A033144(n+1)+2*A033126(n+1)` -/
def P11539086208413752936.Spec : Prop :=
  ∀ n, P11539086208413752936.a n = A037657 (n + 1)

end A037657

/-! ## A037657.P1168795903827645529

`2*A037517(n+1)-A033144(n+1)`
-/

namespace A037657.P1168795903827645529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A037517 (n + 1) - A033144 (n + 1)

end

end A037657.P1168795903827645529

namespace A037657

/-- `2*A037517(n+1)-A033144(n+1)` -/
def P1168795903827645529.Spec : Prop :=
  ∀ n, P1168795903827645529.a n = A037657 (n + 1)

end A037657

/-! ## A037657.P1991167823730904302

`A037557(n+1)+A037573(n+1)-A037541(n+1)`
-/

namespace A037657.P1991167823730904302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037557 (n + 1) + (A037573 (n + 1) - A037541 (n + 1))

end

end A037657.P1991167823730904302

namespace A037657

/-- `A037557(n+1)+A037573(n+1)-A037541(n+1)` -/
def P1991167823730904302.Spec : Prop :=
  ∀ n, P1991167823730904302.a n = A037657 (n + 1)

end A037657

/-! ## A037657.P16767504820880141294

`A037525(n+1)+A037636(n+1)-A037541(n+1)`
-/

namespace A037657.P16767504820880141294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037525 (n + 1) + (A037636 (n + 1) - A037541 (n + 1))

end

end A037657.P16767504820880141294

namespace A037657

/-- `A037525(n+1)+A037636(n+1)-A037541(n+1)` -/
def P16767504820880141294.Spec : Prop :=
  ∀ n, P16767504820880141294.a n = A037657 (n + 1)

end A037657

/-! ## A037657.P3723842227788892600

`xor(A037501(n+1)+A033135(n+1), A033135(n+1))`
-/

namespace A037657.P3723842227788892600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A037501 (n + 1) + A033135 (n + 1)) (A033135 (n + 1))

end

end A037657.P3723842227788892600

namespace A037657

/-- `xor(A037501(n+1)+A033135(n+1), A033135(n+1))` -/
def P3723842227788892600.Spec : Prop :=
  ∀ n, P3723842227788892600.a n = A037657 (n + 1)

end A037657

/-! ## A037657.P16977282689021926893

`xor(A037541(n+1)+A037501(n+1), A037541(n+1))`
-/

namespace A037657.P16977282689021926893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A037541 (n + 1) + A037501 (n + 1)) (A037541 (n + 1))

end

end A037657.P16977282689021926893

namespace A037657

/-- `xor(A037541(n+1)+A037501(n+1), A037541(n+1))` -/
def P16977282689021926893.Spec : Prop :=
  ∀ n, P16977282689021926893.a n = A037657 (n + 1)

end A037657

/-! ## A037657.P4838724948097425375

`xor(A037573(n+1)-A037501(n+1), A037573(n+1))`
-/

namespace A037657.P4838724948097425375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A037573 (n + 1) - A037501 (n + 1)) (A037573 (n + 1))

end

end A037657.P4838724948097425375

namespace A037657

/-- `xor(A037573(n+1)-A037501(n+1), A037573(n+1))` -/
def P4838724948097425375.Spec : Prop :=
  ∀ n, P4838724948097425375.a n = A037657 (n + 1)

end A037657

/-! ## A037657.P11192400483368916536

`xor(A037622(n+1)-A037501(n+1), A037622(n+1))`
-/

namespace A037657.P11192400483368916536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A037622 (n + 1) - A037501 (n + 1)) (A037622 (n + 1))

end

end A037657.P11192400483368916536

namespace A037657

/-- `xor(A037622(n+1)-A037501(n+1), A037622(n+1))` -/
def P11192400483368916536.Spec : Prop :=
  ∀ n, P11192400483368916536.a n = A037657 (n + 1)

end A037657

/-!
# A037658: Base 9 digits are, in order, the first n terms of the periodic sequence with initial period 3,0,2.

The programs for A037658, the canonical program `A037658.P4555952278933181869` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037658 has offset 1).

The definition of A037658 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A037658.P4555952278933181869

`A037518(n+1)+A033127(n+1)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A037658

/-- `A037518(n+1)+A033127(n+1)` -/
def P4555952278933181869.Spec : Prop :=
  ∀ n, P4555952278933181869.a n = A037658 (n + 1)

theorem P4555952278933181869.correct : P4555952278933181869.Spec := by
  intro n
  simp only [A037658, Nat.add_sub_cancel]

end A037658

/-! ## A037658.P11469022722476963961

`A033145(n+1)+2*A033127(n+1)`
-/

namespace A037658.P11469022722476963961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033145 (n + 1) + 2 * A033127 (n + 1)

end

end A037658.P11469022722476963961

namespace A037658

/-- `A033145(n+1)+2*A033127(n+1)` -/
def P11469022722476963961.Spec : Prop :=
  ∀ n, P11469022722476963961.a n = A037658 (n + 1)

end A037658

/-! ## A037658.P14853553195864284247

`A037502(n+1)+2*A033145(n+1)`
-/

namespace A037658.P14853553195864284247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037502 (n + 1) + 2 * A033145 (n + 1)

end

end A037658.P14853553195864284247

namespace A037658

/-- `A037502(n+1)+2*A033145(n+1)` -/
def P14853553195864284247.Spec : Prop :=
  ∀ n, P14853553195864284247.a n = A037658 (n + 1)

end A037658

/-! ## A037658.P7829018000557038260

`2*A037518(n+1)-A033145(n+1)`
-/

namespace A037658.P7829018000557038260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A037518 (n + 1) - A033145 (n + 1)

end

end A037658.P7829018000557038260

namespace A037658

/-- `2*A037518(n+1)-A033145(n+1)` -/
def P7829018000557038260.Spec : Prop :=
  ∀ n, P7829018000557038260.a n = A037658 (n + 1)

end A037658

/-! ## A037658.P10940550213421571164

`2*A037574(n+1)-A037550(n+1)`
-/

namespace A037658.P10940550213421571164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A037574 (n + 1) - A037550 (n + 1)

end

end A037658.P10940550213421571164

namespace A037658

/-- `2*A037574(n+1)-A037550(n+1)` -/
def P10940550213421571164.Spec : Prop :=
  ∀ n, P10940550213421571164.a n = A037658 (n + 1)

end A037658

/-! ## A037658.P10401980682515024157

`5*A033127(n+1)-A037623(n+1)`
-/

namespace A037658.P10401980682515024157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A033127 (n + 1) - A037623 (n + 1)

end

end A037658.P10401980682515024157

namespace A037658

/-- `5*A033127(n+1)-A037623(n+1)` -/
def P10401980682515024157.Spec : Prop :=
  ∀ n, P10401980682515024157.a n = A037658 (n + 1)

end A037658

/-! ## A037658.P18280655822876445361

`A077834(2*n)+∑[A077834(2*n+1)]`
-/

namespace A037658.P18280655822876445361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077834 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077834 (2 * n) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037658.P18280655822876445361

namespace A037658

/-- `A077834(2*n)+∑[A077834(2*n+1)]` -/
def P18280655822876445361.Spec : Prop :=
  ∀ n, P18280655822876445361.a n = A037658 (n + 1)

end A037658

/-! ## A037658.P14767207724224396567

`Δ[∑[A037574(n+1)]%A033127(n+1)]`
-/

namespace A037658.P14767207724224396567
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037574 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f2 j) (A033127 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A037658.P14767207724224396567

namespace A037658

/-- `Δ[∑[A037574(n+1)]%A033127(n+1)]` -/
def P14767207724224396567.Spec : Prop :=
  ∀ n, P14767207724224396567.a n = A037658 (n + 1)

end A037658

/-!
# A037659: Decimal expansion of a(n) is given by the first n terms of the periodic sequence with initial period 3,0,2.

The programs for A037659, the canonical program `A037659.P14837718224344973064` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037659 has offset 1).

The definition of A037659 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A037659.P11793795630287715549

`or(2, char[3*n]+10*a(n-1))` with `a(0)=3`
-/

namespace A037659.P11793795630287715549
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [3] fun n a =>
  Nat.lor 2 ((if ∃ j, f1 j = n then 1 else 0) + 10 * a (n - 1))

end

end A037659.P11793795630287715549

namespace A037659

/-- `or(2, char[3*n]+10*a(n-1))` -/
def P11793795630287715549.Spec : Prop :=
  ∀ n, (P11793795630287715549.a n : ℤ) = A037659 (n + 1)

end A037659

/-! ## A037659.P14837718224344973064

`or(2, a(n-1)+9*a(n-1)+2-(n+1)%3)` with `a(0)=3`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A037659

/-- `or(2, a(n-1)+9*a(n-1)+2-(n+1)%3)` -/
def P14837718224344973064.Spec : Prop :=
  ∀ n, P14837718224344973064.a n = A037659 (n + 1)

theorem P14837718224344973064.correct : P14837718224344973064.Spec := by
  intro n
  simp only [A037659, Nat.add_sub_cancel]

end A037659

/-! ## A037659.P10250525816730560230

`A049347(n)+10*a(n-1)+2-∑[n]%3` with `a(0)=3`
-/

namespace A037659.P10250525816730560230
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A049347 n + (10 * a (n - 1) + (2 - (((∑ j ∈ Finset.range (n + 1), f1 j) % 3 : ℕ) : ℤ)))

end

end A037659.P10250525816730560230

namespace A037659

/-- `A049347(n)+10*a(n-1)+2-∑[n]%3` -/
def P10250525816730560230.Spec : Prop :=
  ∀ n, P10250525816730560230.a n = A037659 (n + 1)

end A037659

/-! ## A037659.P15904180869530102430

`A049347(n)+10*a(n-1)+Δ[A004396(n)]+1` with `a(0)=3`
-/

namespace A037659.P15904180869530102430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 n

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A049347 n + (10 * a (n - 1) + (f1 (n + 1) - f1 n + 1))

end

end A037659.P15904180869530102430

namespace A037659

/-- `A049347(n)+10*a(n-1)+Δ[A004396(n)]+1` -/
def P15904180869530102430.Spec : Prop :=
  ∀ n, P15904180869530102430.a n = A037659 (n + 1)

end A037659

/-! ## A037659.P12191879172828946374

`A102283(2*n+1)+10*a(n-1)+A141571(n+1)+1-A102283(n)` with `a(0)=3`
-/

namespace A037659.P12191879172828946374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A102283 (2 * n + 1) + (10 * a (n - 1) + (A141571 (n + 1) + 1) - A102283 n)

end

end A037659.P12191879172828946374

namespace A037659

/-- `A102283(2*n+1)+10*a(n-1)+A141571(n+1)+1-A102283(n)` -/
def P12191879172828946374.Spec : Prop :=
  ∀ n, P12191879172828946374.a n = A037659 (n + 1)

end A037659

/-!
# A037660: Base 4 digits are, in order, the first n terms of the periodic sequence with initial period 3,1,0.

The programs for A037660, the canonical program `A037660.P13941213720165980682` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037660 has offset 1).

The definition of A037660 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A037660.anchor (n : ℕ) (hn : 1 ≤ n) : A037660 n = ((Nat.ofDigits 4 ((List.range n).reverse.map fun i => [3, 1, 0].getD (i % 3) 0) : ℕ) : ℤ)` in `Proof.A037.A037660`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A037660.P13941213720165980682

`4*a(n-1)+a(n-3)-4*a(n-4)` with `a(0)=3, a(1)=13, a(2)=52, a(3)=211`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A037660

/-- `4*a(n-1)+a(n-3)-4*a(n-4)` -/
def P13941213720165980682.Spec : Prop :=
  ∀ n, P13941213720165980682.a n = A037660 (n + 1)

theorem P13941213720165980682.correct : P13941213720165980682.Spec := by
  intro n
  simp only [A037660, Nat.add_sub_cancel]

end A037660

/-! ## A037660.P6946706977454617351

`floor(52*4^(n+1)/63)`
-/

namespace A037660.P6946706977454617351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(52 * 4 ^ (n + 1) : ℚ) / 63⌋

end

end A037660.P6946706977454617351

namespace A037660

/-- `floor(52*4^(n+1)/63)` -/
def P6946706977454617351.Spec : Prop :=
  ∀ n, P6946706977454617351.a n = A037660 (n + 1)

end A037660

/-! ## A037660.P14237834426331139267

`ogf((3+x)/(1-4x-x^3+4x^4))`
-/

namespace A037660.P14237834426331139267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, 1] [1, -4, 0, -1, 4] n

end

end A037660.P14237834426331139267

namespace A037660

/-- `ogf((3+x)/(1-4x-x^3+4x^4))` -/
def P14237834426331139267.Spec : Prop :=
  ∀ n, P14237834426331139267.a n = A037660 (n + 1)

end A037660

/-! ## A037660.P13000455447313642499

`record[xor(1, n%3+2*2*a(n-1))]` with `a(0)=3, a(1)=0`
-/

namespace A037660.P13000455447313642499
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3, 0] fun n f1 =>
  Nat.xor 1 (n % 3 + 2 * (2 * f1 (n - 1)))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A037660.P13000455447313642499

namespace A037660

/-- `record[xor(1, n%3+2*2*a(n-1))]` -/
def P13000455447313642499.Spec : Prop :=
  ∀ n, (P13000455447313642499.a n : ℤ) = A037660 (n + 1)

end A037660

/-! ## A037660.P14938548845639535883

`A217100(A113127(n+1))`
-/

namespace A037660.P14938548845639535883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217100 (A113127 (n + 1)).toNat

end

end A037660.P14938548845639535883

namespace A037660

/-- `A217100(A113127(n+1))` -/
def P14938548845639535883.Spec : Prop :=
  ∀ n, P14938548845639535883.a n = A037660 (n + 1)

end A037660

/-! ## A037660.P2961864046366070528

`A217100(A008574(n)+2)`
-/

namespace A037660.P2961864046366070528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217100 (A008574 n + 2).toNat

end

end A037660.P2961864046366070528

namespace A037660

/-- `A217100(A008574(n)+2)` -/
def P2961864046366070528.Spec : Prop :=
  ∀ n, P2961864046366070528.a n = A037660 (n + 1)

end A037660

/-! ## A037660.P7696767896526241741

`A217100(or(2, A008574(n)))`
-/

namespace A037660.P7696767896526241741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217100 (Int.lor 2 (A008574 n)).toNat

end

end A037660.P7696767896526241741

namespace A037660

/-- `A217100(or(2, A008574(n)))` -/
def P7696767896526241741.Spec : Prop :=
  ∀ n, P7696767896526241741.a n = A037660 (n + 1)

end A037660

/-! ## A037660.P3190122372885966461

`A217100(xor(2, A008574(n)))`
-/

namespace A037660.P3190122372885966461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217100 (Int.xor 2 (A008574 n)).toNat

end

end A037660.P3190122372885966461

namespace A037660

/-- `A217100(xor(2, A008574(n)))` -/
def P3190122372885966461.Spec : Prop :=
  ∀ n, P3190122372885966461.a n = A037660 (n + 1)

end A037660

/-! ## A037660.P773490500320326735

`A178872(n)+A037646(n+1)`
-/

namespace A037660.P773490500320326735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178872 n + A037646 (n + 1)

end

end A037660.P773490500320326735

namespace A037660

/-- `A178872(n)+A037646(n+1)` -/
def P773490500320326735.Spec : Prop :=
  ∀ n, P773490500320326735.a n = A037660 (n + 1)

end A037660

/-! ## A037660.P829368442492084158

`A037521(n+1)+A033140(n+1)`
-/

namespace A037660.P829368442492084158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037521 (n + 1) + A033140 (n + 1)

end

end A037660.P829368442492084158

namespace A037660

/-- `A037521(n+1)+A033140(n+1)` -/
def P829368442492084158.Spec : Prop :=
  ∀ n, P829368442492084158.a n = A037660 (n + 1)

end A037660

/-! ## A037660.P665240412753556158

`xor(A002450(n+1), A037513(n+1))`
-/

namespace A037660.P665240412753556158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A002450 (n + 1)) (A037513 (n + 1))

end

end A037660.P665240412753556158

namespace A037660

/-- `xor(A002450(n+1), A037513(n+1))` -/
def P665240412753556158.Spec : Prop :=
  ∀ n, P665240412753556158.a n = A037660 (n + 1)

end A037660

/-! ## A037660.P17977673936641295838

`xor(A033122(n+1), A037553(n+1))`
-/

namespace A037660.P17977673936641295838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A033122 (n + 1)) (A037553 (n + 1))

end

end A037660.P17977673936641295838

namespace A037660

/-- `xor(A033122(n+1), A037553(n+1))` -/
def P17977673936641295838.Spec : Prop :=
  ∀ n, P17977673936641295838.a n = A037660 (n + 1)

end A037660

/-! ## A037660.P15148646391903735185

`xor(A037497(n+1), A037569(n+1))`
-/

namespace A037660.P15148646391903735185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A037497 (n + 1)) (A037569 (n + 1))

end

end A037660.P15148646391903735185

namespace A037660

/-- `xor(A037497(n+1), A037569(n+1))` -/
def P15148646391903735185.Spec : Prop :=
  ∀ n, P15148646391903735185.a n = A037660 (n + 1)

end A037660

/-! ## A037660.P5207744776855521234

`xor(A037505(n+1), A037625(n+1))`
-/

namespace A037660.P5207744776855521234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A037505 (n + 1)) (A037625 (n + 1))

end

end A037660.P5207744776855521234

namespace A037660

/-- `xor(A037505(n+1), A037625(n+1))` -/
def P5207744776855521234.Spec : Prop :=
  ∀ n, P5207744776855521234.a n = A037660 (n + 1)

end A037660

/-! ## A037660.P5247680511593033821

`xor(A037537(n+1), A037639(n+1))`
-/

namespace A037660.P5247680511593033821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A037537 (n + 1)) (A037639 (n + 1))

end

end A037660.P5247680511593033821

namespace A037660

/-- `xor(A037537(n+1), A037639(n+1))` -/
def P5247680511593033821.Spec : Prop :=
  ∀ n, P5247680511593033821.a n = A037660 (n + 1)

end A037660

/-! ## A037660.P12029953806892584720

`xor(A037590(n+1), A037632(n+1))`
-/

namespace A037660.P12029953806892584720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A037590 (n + 1)) (A037632 (n + 1))

end

end A037660.P12029953806892584720

namespace A037660

/-- `xor(A037590(n+1), A037632(n+1))` -/
def P12029953806892584720.Spec : Prop :=
  ∀ n, P12029953806892584720.a n = A037660 (n + 1)

end A037660

/-! ## A037660.P9281013579645852509

`A033131(n+1)+2*A033140(n+1)`
-/

namespace A037660.P9281013579645852509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033131 (n + 1) + 2 * A033140 (n + 1)

end

end A037660.P9281013579645852509

namespace A037660

/-- `A033131(n+1)+2*A033140(n+1)` -/
def P9281013579645852509.Spec : Prop :=
  ∀ n, P9281013579645852509.a n = A037660 (n + 1)

end A037660

/-! ## A037660.P7611145081664526238

`A033140(n+1)+A033138(2*(n+1))`
-/

namespace A037660.P7611145081664526238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033140 (n + 1) + A033138 (2 * (n + 1))

end

end A037660.P7611145081664526238

namespace A037660

/-- `A033140(n+1)+A033138(2*(n+1))` -/
def P7611145081664526238.Spec : Prop :=
  ∀ n, P7611145081664526238.a n = A037660 (n + 1)

end A037660

/-! ## A037660.P17523546085743911311

`2*A037521(n+1)-A033131(n+1)`
-/

namespace A037660.P17523546085743911311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A037521 (n + 1) - A033131 (n + 1)

end

end A037660.P17523546085743911311

namespace A037660

/-- `2*A037521(n+1)-A033131(n+1)` -/
def P17523546085743911311.Spec : Prop :=
  ∀ n, P17523546085743911311.a n = A037660 (n + 1)

end A037660

/-! ## A037660.P9809548929142909407

`or(A033131(n+1), A033138(2*(n+1)))`
-/

namespace A037660.P9809548929142909407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A033131 (n + 1)) (A033138 (2 * (n + 1)))

end

end A037660.P9809548929142909407

namespace A037660

/-- `or(A033131(n+1), A033138(2*(n+1)))` -/
def P9809548929142909407.Spec : Prop :=
  ∀ n, P9809548929142909407.a n = A037660 (n + 1)

end A037660

/-!
# A037661: Base 5 digits are, in order, the first n terms of the periodic sequence with initial period 3,1,0.

The programs for A037661, the canonical program `A037661.P2623140632495811862` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037661 has offset 1).

The definition of A037661 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A037661.anchor (n : ℕ) (hn : 1 ≤ n) : A037661 n = ((Nat.ofDigits 5 ((List.range n).reverse.map fun i => [3, 1, 0].getD (i % 3) 0) : ℕ) : ℤ)` in `Proof.A037.A037661`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A037661.P2623140632495811862

`5*a(n-1)+a(n-3)-5*a(n-4)` with `a(0)=3, a(1)=16, a(2)=80, a(3)=403`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A037661

/-- `5*a(n-1)+a(n-3)-5*a(n-4)` -/
def P2623140632495811862.Spec : Prop :=
  ∀ n, P2623140632495811862.a n = A037661 (n + 1)

theorem P2623140632495811862.correct : P2623140632495811862.Spec := by
  intro n
  simp only [A037661, Nat.add_sub_cancel]

end A037661

/-! ## A037661.P6415136896676230594

`floor(20*5^(n+1)/31)`
-/

namespace A037661.P6415136896676230594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(20 * 5 ^ (n + 1) : ℚ) / 31⌋

end

end A037661.P6415136896676230594

namespace A037661

/-- `floor(20*5^(n+1)/31)` -/
def P6415136896676230594.Spec : Prop :=
  ∀ n, P6415136896676230594.a n = A037661 (n + 1)

end A037661

/-! ## A037661.P11115617619433420202

`ogf((3+x)/(1-5x-x^3+5x^4))`
-/

namespace A037661.P11115617619433420202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, 1] [1, -5, 0, -1, 5] n

end

end A037661.P11115617619433420202

namespace A037661

/-- `ogf((3+x)/(1-5x-x^3+5x^4))` -/
def P11115617619433420202.Spec : Prop :=
  ∀ n, P11115617619433420202.a n = A037661 (n + 1)

end A037661

/-! ## A037661.P387533885661331277

`xor(1, (n+1)²%3+5*a(n-1)+1)` with `a(0)=3`
-/

namespace A037661.P387533885661331277
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3] fun n a =>
  Nat.xor 1 ((n + 1) ^ 2 % 3 + 5 * a (n - 1) + 1)

end

end A037661.P387533885661331277

namespace A037661

/-- `xor(1, (n+1)²%3+5*a(n-1)+1)` -/
def P387533885661331277.Spec : Prop :=
  ∀ n, (P387533885661331277.a n : ℤ) = A037661 (n + 1)

end A037661

/-! ## A037661.P5063075468031851170

`Δ[A046633(n)]-∑[A049347(n)]`
-/

namespace A037661.P5063075468031851170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046633 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - ∑ j ∈ Finset.range (n + 1), f2 j

end

end A037661.P5063075468031851170

namespace A037661

/-- `Δ[A046633(n)]-∑[A049347(n)]` -/
def P5063075468031851170.Spec : Prop :=
  ∀ n, P5063075468031851170.a n = A037661 (n + 1)

end A037661

/-! ## A037661.P8653751563040751152

`A037522(n+1)+A033141(n+1)`
-/

namespace A037661.P8653751563040751152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037522 (n + 1) + A033141 (n + 1)

end

end A037661.P8653751563040751152

namespace A037661

/-- `A037522(n+1)+A033141(n+1)` -/
def P8653751563040751152.Spec : Prop :=
  ∀ n, P8653751563040751152.a n = A037661 (n + 1)

end A037661

/-! ## A037661.P5037155625911872729

`A033132(n+1)+2*A033141(n+1)`
-/

namespace A037661.P5037155625911872729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033132 (n + 1) + 2 * A033141 (n + 1)

end

end A037661.P5037155625911872729

namespace A037661

/-- `A033132(n+1)+2*A033141(n+1)` -/
def P5037155625911872729.Spec : Prop :=
  ∀ n, P5037155625911872729.a n = A037661 (n + 1)

end A037661

/-! ## A037661.P532250596172588769

`2*A037522(n+1)-A033132(n+1)`
-/

namespace A037661.P532250596172588769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A037522 (n + 1) - A033132 (n + 1)

end

end A037661.P532250596172588769

namespace A037661

/-- `2*A037522(n+1)-A033132(n+1)` -/
def P532250596172588769.Spec : Prop :=
  ∀ n, P532250596172588769.a n = A037661 (n + 1)

end A037661

/-! ## A037661.P18227852064650369158

`2*A037554(n+1)-A037530(n+1)`
-/

namespace A037661.P18227852064650369158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A037554 (n + 1) - A037530 (n + 1)

end

end A037661.P18227852064650369158

namespace A037661

/-- `2*A037554(n+1)-A037530(n+1)` -/
def P18227852064650369158.Spec : Prop :=
  ∀ n, P18227852064650369158.a n = A037661 (n + 1)

end A037661

/-! ## A037661.P4091542673516504198

`A037522(n+1)+∑[A037522(n+1)-A037506(n+1)]`
-/

namespace A037661.P4091542673516504198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037522 (n + 1) - A037506 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037522 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037661.P4091542673516504198

namespace A037661

/-- `A037522(n+1)+∑[A037522(n+1)-A037506(n+1)]` -/
def P4091542673516504198.Spec : Prop :=
  ∀ n, P4091542673516504198.a n = A037661 (n + 1)

end A037661

/-! ## A037661.P1115889651122899058

`2*A037538(n+2)-A037554(n+2)`
-/

namespace A037661.P1115889651122899058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A037538 (n + 2) - A037554 (n + 2)

end

end A037661.P1115889651122899058

namespace A037661

/-- `2*A037538(n+2)-A037554(n+2)` -/
def P1115889651122899058.Spec : Prop :=
  ∀ n, P1115889651122899058.a n = A037661 (n + 1)

end A037661

/-!
# A037662: Base 6 digits are, in order, the first n terms of the periodic sequence with initial period 3,1,0.

The programs for A037662, the canonical program `A037662.P15335452384895811845` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037662 has offset 1).

The definition of A037662 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 128 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A037662.P10242592981948890382

`ogf((3+x)/(1-6x-x^3+6x^4))`
-/

namespace A037662.P10242592981948890382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, 1] [1, -6, 0, -1, 6] n

end

end A037662.P10242592981948890382

namespace A037662

/-- `ogf((3+x)/(1-6x-x^3+6x^4))` -/
def P10242592981948890382.Spec : Prop :=
  ∀ n, P10242592981948890382.a n = A037662 (n + 1)

end A037662

/-! ## A037662.P15335452384895811845

`floor(A037499(n+2)/2)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A037662

/-- `floor(A037499(n+2)/2)` -/
def P15335452384895811845.Spec : Prop :=
  ∀ n, P15335452384895811845.a n = A037662 (n + 1)

theorem P15335452384895811845.correct : P15335452384895811845.Spec := by
  intro n
  simp only [A037662, Nat.add_sub_cancel]

end A037662

/-! ## A037662.P7907295041211950937

`A037523(n+1)+A033142(n+1)`
-/

namespace A037662.P7907295041211950937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037523 (n + 1) + A033142 (n + 1)

end

end A037662.P7907295041211950937

namespace A037662

/-- `A037523(n+1)+A033142(n+1)` -/
def P7907295041211950937.Spec : Prop :=
  ∀ n, P7907295041211950937.a n = A037662 (n + 1)

end A037662

/-! ## A037662.P16652622014530575410

`A033133(n+1)+2*A033142(n+1)`
-/

namespace A037662.P16652622014530575410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033133 (n + 1) + 2 * A033142 (n + 1)

end

end A037662.P16652622014530575410

namespace A037662

/-- `A033133(n+1)+2*A033142(n+1)` -/
def P16652622014530575410.Spec : Prop :=
  ∀ n, P16652622014530575410.a n = A037662 (n + 1)

end A037662

/-! ## A037662.P2452437544101854761

`2*A037523(n+1)-A033133(n+1)`
-/

namespace A037662.P2452437544101854761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A037523 (n + 1) - A033133 (n + 1)

end

end A037662.P2452437544101854761

namespace A037662

/-- `2*A037523(n+1)-A033133(n+1)` -/
def P2452437544101854761.Spec : Prop :=
  ∀ n, P2452437544101854761.a n = A037662 (n + 1)

end A037662

/-! ## A037662.P2784928038837922076

`2*A037555(n+1)-A037531(n+1)`
-/

namespace A037662.P2784928038837922076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A037555 (n + 1) - A037531 (n + 1)

end

end A037662.P2784928038837922076

namespace A037662

/-- `2*A037555(n+1)-A037531(n+1)` -/
def P2784928038837922076.Spec : Prop :=
  ∀ n, P2784928038837922076.a n = A037662 (n + 1)

end A037662

/-! ## A037662.P7128972675697720062

`A037620(n+1)+A037627(n+1)-A037606(n+1)`
-/

namespace A037662.P7128972675697720062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037620 (n + 1) + (A037627 (n + 1) - A037606 (n + 1))

end

end A037662.P7128972675697720062

namespace A037662

/-- `A037620(n+1)+A037627(n+1)-A037606(n+1)` -/
def P7128972675697720062.Spec : Prop :=
  ∀ n, P7128972675697720062.a n = A037662 (n + 1)

end A037662

/-! ## A037662.P3486053775580848870

`A037539(n+2)+A037539(n+2)-A037555(n+2)`
-/

namespace A037662.P3486053775580848870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037539 (n + 2) + (A037539 (n + 2) - A037555 (n + 2))

end

end A037662.P3486053775580848870

namespace A037662

/-- `A037539(n+2)+A037539(n+2)-A037555(n+2)` -/
def P3486053775580848870.Spec : Prop :=
  ∀ n, P3486053775580848870.a n = A037662 (n + 1)

end A037662

/-! ## A037662.P11135830178401743012

`A037523(n+1)+∑[A037523(n+1)-A037507(n+1)]`
-/

namespace A037662.P11135830178401743012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037523 (n + 1) - A037507 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037523 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037662.P11135830178401743012

namespace A037662

/-- `A037523(n+1)+∑[A037523(n+1)-A037507(n+1)]` -/
def P11135830178401743012.Spec : Prop :=
  ∀ n, P11135830178401743012.a n = A037662 (n + 1)

end A037662

/-! ## A037662.P531140663504636243

`2*A037539(n+2)-A037555(n+2)`
-/

namespace A037662.P531140663504636243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A037539 (n + 2) - A037555 (n + 2)

end

end A037662.P531140663504636243

namespace A037662

/-- `2*A037539(n+2)-A037555(n+2)` -/
def P531140663504636243.Spec : Prop :=
  ∀ n, P531140663504636243.a n = A037662 (n + 1)

end A037662

/-!
# A037663: Base 7 digits are, in order, the first n terms of the periodic sequence with initial period 3,1,0.

The programs for A037663, the canonical program `A037663.P5445139550158620446` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037663 has offset 1).

The definition of A037663 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 118 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A037663.P4531824373181629806

`ogf((3+x)/(1-7x-x^3+7x^4))`
-/

namespace A037663.P4531824373181629806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, 1] [1, -7, 0, -1, 7] n

end

end A037663.P4531824373181629806

namespace A037663

/-- `ogf((3+x)/(1-7x-x^3+7x^4))` -/
def P4531824373181629806.Spec : Prop :=
  ∀ n, P4531824373181629806.a n = A037663 (n + 1)

end A037663

/-! ## A037663.P5445139550158620446

`floor(A037607(n+2)/3)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A037663

/-- `floor(A037607(n+2)/3)` -/
def P5445139550158620446.Spec : Prop :=
  ∀ n, P5445139550158620446.a n = A037663 (n + 1)

theorem P5445139550158620446.correct : P5445139550158620446.Spec := by
  intro n
  simp only [A037663, Nat.add_sub_cancel]

end A037663

/-! ## A037663.P4800859339868455806

`A037524(n+1)+A033143(n+1)`
-/

namespace A037663.P4800859339868455806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037524 (n + 1) + A033143 (n + 1)

end

end A037663.P4800859339868455806

namespace A037663

/-- `A037524(n+1)+A033143(n+1)` -/
def P4800859339868455806.Spec : Prop :=
  ∀ n, P4800859339868455806.a n = A037663 (n + 1)

end A037663

/-! ## A037663.P6145666991449761916

`A033134(n+1)+2*A033143(n+1)`
-/

namespace A037663.P6145666991449761916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033134 (n + 1) + 2 * A033143 (n + 1)

end

end A037663.P6145666991449761916

namespace A037663

/-- `A033134(n+1)+2*A033143(n+1)` -/
def P6145666991449761916.Spec : Prop :=
  ∀ n, P6145666991449761916.a n = A037663 (n + 1)

end A037663

/-! ## A037663.P5193920253304318913

`2*A037556(n+1)-A037532(n+1)`
-/

namespace A037663.P5193920253304318913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A037556 (n + 1) - A037532 (n + 1)

end

end A037663.P5193920253304318913

namespace A037663

/-- `2*A037556(n+1)-A037532(n+1)` -/
def P5193920253304318913.Spec : Prop :=
  ∀ n, P5193920253304318913.a n = A037663 (n + 1)

end A037663

/-! ## A037663.P5902594626015758447

`A033143(n+1)+A037670(n+1)-A033134(n+1)`
-/

namespace A037663.P5902594626015758447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033143 (n + 1) + (A037670 (n + 1) - A033134 (n + 1))

end

end A037663.P5902594626015758447

namespace A037663

/-- `A033143(n+1)+A037670(n+1)-A033134(n+1)` -/
def P5902594626015758447.Spec : Prop :=
  ∀ n, P5902594626015758447.a n = A037663 (n + 1)

end A037663

/-! ## A037663.P13441657874866414191

`A037556(n+1)+A037564(n+1)-A037548(n+1)`
-/

namespace A037663.P13441657874866414191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037556 (n + 1) + (A037564 (n + 1) - A037548 (n + 1))

end

end A037663.P13441657874866414191

namespace A037663

/-- `A037556(n+1)+A037564(n+1)-A037548(n+1)` -/
def P13441657874866414191.Spec : Prop :=
  ∀ n, P13441657874866414191.a n = A037663 (n + 1)

end A037663

/-! ## A037663.P7236320734515593315

`A037621(n+1)+A037628(n+1)-A037607(n+1)`
-/

namespace A037663.P7236320734515593315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037621 (n + 1) + (A037628 (n + 1) - A037607 (n + 1))

end

end A037663.P7236320734515593315

namespace A037663

/-- `A037621(n+1)+A037628(n+1)-A037607(n+1)` -/
def P7236320734515593315.Spec : Prop :=
  ∀ n, P7236320734515593315.a n = A037663 (n + 1)

end A037663

/-! ## A037663.P15569322353547631271

`A037524(n+1)+∑[A037524(n+1)-A037508(n+1)]`
-/

namespace A037663.P15569322353547631271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037524 (n + 1) - A037508 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037524 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037663.P15569322353547631271

namespace A037663

/-- `A037524(n+1)+∑[A037524(n+1)-A037508(n+1)]` -/
def P15569322353547631271.Spec : Prop :=
  ∀ n, P15569322353547631271.a n = A037663 (n + 1)

end A037663

/-! ## A037663.P12371048011414757828

`2*A037540(n+2)-A037556(n+2)`
-/

namespace A037663.P12371048011414757828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A037540 (n + 2) - A037556 (n + 2)

end

end A037663.P12371048011414757828

namespace A037663

/-- `2*A037540(n+2)-A037556(n+2)` -/
def P12371048011414757828.Spec : Prop :=
  ∀ n, P12371048011414757828.a n = A037663 (n + 1)

end A037663

/-!
# A037664: Base 8 digits are, in order, the first n terms of the periodic sequence with initial period 3,1,0.

The programs for A037664, the canonical program `A037664.P12011888614752622125` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037664 has offset 1).

The definition of A037664 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A037664.P7795233863519648225

`ogf((3+x)/(1-8x-x^3+8x^4))`
-/

namespace A037664.P7795233863519648225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, 1] [1, -8, 0, -1, 8] n

end

end A037664.P7795233863519648225

namespace A037664

/-- `ogf((3+x)/(1-8x-x^3+8x^4))` -/
def P7795233863519648225.Spec : Prop :=
  ∀ n, P7795233863519648225.a n = A037664 (n + 1)

end A037664

/-! ## A037664.P12011888614752622125

`xor(1, 8*a(n-1)-(1-n)%3)` with `a(0)=3`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A037664

/-- `xor(1, 8*a(n-1)-(1-n)%3)` -/
def P12011888614752622125.Spec : Prop :=
  ∀ n, P12011888614752622125.a n = A037664 (n + 1)

theorem P12011888614752622125.correct : P12011888614752622125.Spec := by
  intro n
  simp only [A037664, Nat.add_sub_cancel]

end A037664

/-! ## A037664.P11322337759827977719

`xor(∑[A001018(n)], A037517(n+1))`
-/

namespace A037664.P11322337759827977719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001018 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (∑ j ∈ Finset.range (n + 1), f1 j) (A037517 (n + 1))

end

end A037664.P11322337759827977719

namespace A037664

/-- `xor(∑[A001018(n)], A037517(n+1))` -/
def P11322337759827977719.Spec : Prop :=
  ∀ n, P11322337759827977719.a n = A037664 (n + 1)

end A037664

/-! ## A037664.P8069706564770203712

`A037525(n+1)+A033144(n+1)`
-/

namespace A037664.P8069706564770203712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037525 (n + 1) + A033144 (n + 1)

end

end A037664.P8069706564770203712

namespace A037664

/-- `A037525(n+1)+A033144(n+1)` -/
def P8069706564770203712.Spec : Prop :=
  ∀ n, P8069706564770203712.a n = A037664 (n + 1)

end A037664

/-! ## A037664.P14482739742201363665

`or(A033135(n+1), A037525(n+1))`
-/

namespace A037664.P14482739742201363665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A033135 (n + 1)) (A037525 (n + 1))

end

end A037664.P14482739742201363665

namespace A037664

/-- `or(A033135(n+1), A037525(n+1))` -/
def P14482739742201363665.Spec : Prop :=
  ∀ n, P14482739742201363665.a n = A037664 (n + 1)

end A037664

/-! ## A037664.P5608807661425442457

`xor(A033126(n+1), A037557(n+1))`
-/

namespace A037664.P5608807661425442457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A033126 (n + 1)) (A037557 (n + 1))

end

end A037664.P5608807661425442457

namespace A037664

/-- `xor(A033126(n+1), A037557(n+1))` -/
def P5608807661425442457.Spec : Prop :=
  ∀ n, P5608807661425442457.a n = A037664 (n + 1)

end A037664

/-! ## A037664.P14285093075801111579

`xor(A037501(n+1), A037573(n+1))`
-/

namespace A037664.P14285093075801111579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A037501 (n + 1)) (A037573 (n + 1))

end

end A037664.P14285093075801111579

namespace A037664

/-- `xor(A037501(n+1), A037573(n+1))` -/
def P14285093075801111579.Spec : Prop :=
  ∀ n, P14285093075801111579.a n = A037664 (n + 1)

end A037664

/-! ## A037664.P3448446151196263282

`xor(A037541(n+1), A037643(n+1))`
-/

namespace A037664.P3448446151196263282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A037541 (n + 1)) (A037643 (n + 1))

end

end A037664.P3448446151196263282

namespace A037664

/-- `xor(A037541(n+1), A037643(n+1))` -/
def P3448446151196263282.Spec : Prop :=
  ∀ n, P3448446151196263282.a n = A037664 (n + 1)

end A037664

/-! ## A037664.P17216975061784588566

`xor(A037594(n+1), A037636(n+1))`
-/

namespace A037664.P17216975061784588566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A037594 (n + 1)) (A037636 (n + 1))

end

end A037664.P17216975061784588566

namespace A037664

/-- `xor(A037594(n+1), A037636(n+1))` -/
def P17216975061784588566.Spec : Prop :=
  ∀ n, P17216975061784588566.a n = A037664 (n + 1)

end A037664

/-! ## A037664.P7554231117805487359

`A033135(n+1)+2*A033144(n+1)`
-/

namespace A037664.P7554231117805487359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033135 (n + 1) + 2 * A033144 (n + 1)

end

end A037664.P7554231117805487359

namespace A037664

/-- `A033135(n+1)+2*A033144(n+1)` -/
def P7554231117805487359.Spec : Prop :=
  ∀ n, P7554231117805487359.a n = A037664 (n + 1)

end A037664

/-! ## A037664.P592167235652851308

`xor(A037501(n+1)+A033135(n+1), A037501(n+1))`
-/

namespace A037664.P592167235652851308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A037501 (n + 1) + A033135 (n + 1)) (A037501 (n + 1))

end

end A037664.P592167235652851308

namespace A037664

/-- `xor(A037501(n+1)+A033135(n+1), A037501(n+1))` -/
def P592167235652851308.Spec : Prop :=
  ∀ n, P592167235652851308.a n = A037664 (n + 1)

end A037664

/-! ## A037664.P6873320288863881249

`xor(A037541(n+1)+A033135(n+1), A037541(n+1))`
-/

namespace A037664.P6873320288863881249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A037541 (n + 1) + A033135 (n + 1)) (A037541 (n + 1))

end

end A037664.P6873320288863881249

namespace A037664

/-- `xor(A037541(n+1)+A033135(n+1), A037541(n+1))` -/
def P6873320288863881249.Spec : Prop :=
  ∀ n, P6873320288863881249.a n = A037664 (n + 1)

end A037664

/-! ## A037664.P1345547155593573146

`xor(A037557(n+1)-A033135(n+1), A037557(n+1))`
-/

namespace A037664.P1345547155593573146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A037557 (n + 1) - A033135 (n + 1)) (A037557 (n + 1))

end

end A037664.P1345547155593573146

namespace A037664

/-- `xor(A037557(n+1)-A033135(n+1), A037557(n+1))` -/
def P1345547155593573146.Spec : Prop :=
  ∀ n, P1345547155593573146.a n = A037664 (n + 1)

end A037664

/-! ## A037664.P8986161801412382675

`xor(A037573(n+1)-A033135(n+1), A037573(n+1))`
-/

namespace A037664.P8986161801412382675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A037573 (n + 1) - A033135 (n + 1)) (A037573 (n + 1))

end

end A037664.P8986161801412382675

namespace A037664

/-- `xor(A037573(n+1)-A033135(n+1), A037573(n+1))` -/
def P8986161801412382675.Spec : Prop :=
  ∀ n, P8986161801412382675.a n = A037664 (n + 1)

end A037664

/-! ## A037664.P3545519688844527161

`xor(A037636(n+1)-A033135(n+1), A037636(n+1))`
-/

namespace A037664.P3545519688844527161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A037636 (n + 1) - A033135 (n + 1)) (A037636 (n + 1))

end

end A037664.P3545519688844527161

namespace A037664

/-- `xor(A037636(n+1)-A033135(n+1), A037636(n+1))` -/
def P3545519688844527161.Spec : Prop :=
  ∀ n, P3545519688844527161.a n = A037664 (n + 1)

end A037664

/-! ## A037664.P17949429152874286403

`xor(A033135(n+2), A037541(n+2))`
-/

namespace A037664.P17949429152874286403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A033135 (n + 2)) (A037541 (n + 2))

end

end A037664.P17949429152874286403

namespace A037664

/-- `xor(A033135(n+2), A037541(n+2))` -/
def P17949429152874286403.Spec : Prop :=
  ∀ n, P17949429152874286403.a n = A037664 (n + 1)

end A037664

/-! ## A037664.P18383695818839291651

`2*A037541(n+2)-A037557(n+2)`
-/

namespace A037664.P18383695818839291651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A037541 (n + 2) - A037557 (n + 2)

end

end A037664.P18383695818839291651

namespace A037664

/-- `2*A037541(n+2)-A037557(n+2)` -/
def P18383695818839291651.Spec : Prop :=
  ∀ n, P18383695818839291651.a n = A037664 (n + 1)

end A037664

/-! ## A037664.P1425726954457614558

`2*A037549(n+2)-A037636(n+2)`
-/

namespace A037664.P1425726954457614558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A037549 (n + 2) - A037636 (n + 2)

end

end A037664.P1425726954457614558

namespace A037664

/-- `2*A037549(n+2)-A037636(n+2)` -/
def P1425726954457614558.Spec : Prop :=
  ∀ n, P1425726954457614558.a n = A037664 (n + 1)

end A037664

/-! ## A037664.P5696054704158704158

`xor(2*A033135(n+2), A037557(n+2))`
-/

namespace A037664.P5696054704158704158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (2 * A033135 (n + 2)) (A037557 (n + 2))

end

end A037664.P5696054704158704158

namespace A037664

/-- `xor(2*A033135(n+2), A037557(n+2))` -/
def P5696054704158704158.Spec : Prop :=
  ∀ n, P5696054704158704158.a n = A037664 (n + 1)

end A037664

/-! ## A037664.P2604259149350554001

`A037643(n+2)-and(A037643(n+2), A037657(n+2))`
-/

namespace A037664.P2604259149350554001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037643 (n + 2) - Int.land (A037643 (n + 2)) (A037657 (n + 2))

end

end A037664.P2604259149350554001

namespace A037664

/-- `A037643(n+2)-and(A037643(n+2), A037657(n+2))` -/
def P2604259149350554001.Spec : Prop :=
  ∀ n, P2604259149350554001.a n = A037664 (n + 1)

end A037664

/-!
# A037665: Base 9 digits are, in order, the first n terms of the periodic sequence with initial period 3,1,0.

The programs for A037665, the canonical program `A037665.P15837522577772445702` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037665 has offset 1).

The definition of A037665 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A037665.P15892582742542899297

`ogf((3+x)/(1-9x-x^3+9x^4))`
-/

namespace A037665.P15892582742542899297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, 1] [1, -9, 0, -1, 9] n

end

end A037665.P15892582742542899297

namespace A037665

/-- `ogf((3+x)/(1-9x-x^3+9x^4))` -/
def P15892582742542899297.Spec : Prop :=
  ∀ n, P15892582742542899297.a n = A037665 (n + 1)

end A037665

/-! ## A037665.P15837522577772445702

`A033139(2*(n+1))`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A037665

/-- `A033139(2*(n+1))` -/
def P15837522577772445702.Spec : Prop :=
  ∀ n, P15837522577772445702.a n = A037665 (n + 1)

theorem P15837522577772445702.correct : P15837522577772445702.Spec := by
  intro n
  simp only [A037665, Nat.add_sub_cancel]

end A037665

/-! ## A037665.P4598653358206526690

`record[A033139(A014681(n+1))]`
-/

namespace A037665.P4598653358206526690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033139 (A014681 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A037665.P4598653358206526690

namespace A037665

/-- `record[A033139(A014681(n+1))]` -/
def P4598653358206526690.Spec : Prop :=
  ∀ n, P4598653358206526690.a n = A037665 (n + 1)

end A037665

/-! ## A037665.P18119775436577638033

`record[A033139(A029578(n+3))]`
-/

namespace A037665.P18119775436577638033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033139 (A029578 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A037665.P18119775436577638033

namespace A037665

/-- `record[A033139(A029578(n+3))]` -/
def P18119775436577638033.Spec : Prop :=
  ∀ n, P18119775436577638033.a n = A037665 (n + 1)

end A037665

/-! ## A037665.P13917579318409734927

`record[A033139(2*A126759(n))]`
-/

namespace A037665.P13917579318409734927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033139 (2 * A126759 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A037665.P13917579318409734927

namespace A037665

/-- `record[A033139(2*A126759(n))]` -/
def P13917579318409734927.Spec : Prop :=
  ∀ n, P13917579318409734927.a n = A037665 (n + 1)

end A037665

/-! ## A037665.P16589065326847926433

`record[A033139(A028242(or(2, n)))]`
-/

namespace A037665.P16589065326847926433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033139 (A028242 (Nat.lor 2 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A037665.P16589065326847926433

namespace A037665

/-- `record[A033139(A028242(or(2, n)))]` -/
def P16589065326847926433.Spec : Prop :=
  ∀ n, P16589065326847926433.a n = A037665 (n + 1)

end A037665

/-! ## A037665.P997549444337053272

`record[A033139(n+2)/A033999(n)]`
-/

namespace A037665.P997549444337053272
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033139 (n + 2) : ℚ) / (A033999 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A037665.P997549444337053272

namespace A037665

/-- `record[A033139(n+2)/A033999(n)]` -/
def P997549444337053272.Spec : Prop :=
  ∀ n, P997549444337053272.a n = (A037665 (n + 1) : ℚ)

end A037665

/-! ## A037665.P1113470391119391504

`A033136(n+1)+2*A033145(n+1)`
-/

namespace A037665.P1113470391119391504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033136 (n + 1) + 2 * A033145 (n + 1)

end

end A037665.P1113470391119391504

namespace A037665

/-- `A033136(n+1)+2*A033145(n+1)` -/
def P1113470391119391504.Spec : Prop :=
  ∀ n, P1113470391119391504.a n = A037665 (n + 1)

end A037665

/-! ## A037665.P17455227359760464772

`2*A037526(n+1)-A033136(n+1)`
-/

namespace A037665.P17455227359760464772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A037526 (n + 1) - A033136 (n + 1)

end

end A037665.P17455227359760464772

namespace A037665

/-- `2*A037526(n+1)-A033136(n+1)` -/
def P17455227359760464772.Spec : Prop :=
  ∀ n, P17455227359760464772.a n = A037665 (n + 1)

end A037665

/-! ## A037665.P15281704461620288897

`∑[A077834(2*n+1)+A077834(2*n)]`
-/

namespace A037665.P15281704461620288897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077834 (2 * n + 1) + A077834 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037665.P15281704461620288897

namespace A037665

/-- `∑[A077834(2*n+1)+A077834(2*n)]` -/
def P15281704461620288897.Spec : Prop :=
  ∀ n, P15281704461620288897.a n = A037665 (n + 1)

end A037665

/-! ## A037665.P13703382740467354667

`∑[A033130(2*(n+1))-A033130(2*n+1)]`
-/

namespace A037665.P13703382740467354667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033130 (2 * (n + 1)) - A033130 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037665.P13703382740467354667

namespace A037665

/-- `∑[A033130(2*(n+1))-A033130(2*n+1)]` -/
def P13703382740467354667.Spec : Prop :=
  ∀ n, P13703382740467354667.a n = A037665 (n + 1)

end A037665

/-! ## A037665.P17481543038420045351

`∑[A037504(2*(n+1))-A037520(2*n+1)]`
-/

namespace A037665.P17481543038420045351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037504 (2 * (n + 1)) - A037520 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037665.P17481543038420045351

namespace A037665

/-- `∑[A037504(2*(n+1))-A037520(2*n+1)]` -/
def P17481543038420045351.Spec : Prop :=
  ∀ n, P17481543038420045351.a n = A037665 (n + 1)

end A037665

/-! ## A037665.P8078348169580851578

`A037502(n+1)+A037672(n+1)-A037534(n+1)`
-/

namespace A037665.P8078348169580851578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037502 (n + 1) + (A037672 (n + 1) - A037534 (n + 1))

end

end A037665.P8078348169580851578

namespace A037665

/-- `A037502(n+1)+A037672(n+1)-A037534(n+1)` -/
def P8078348169580851578.Spec : Prop :=
  ∀ n, P8078348169580851578.a n = A037665 (n + 1)

end A037665

/-! ## A037665.P14143884750497022356

`A033130(2*n+1)+A033130(2*(n+1))-A037520(2*n+1)`
-/

namespace A037665.P14143884750497022356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033130 (2 * n + 1) + (A033130 (2 * (n + 1)) - A037520 (2 * n + 1))

end

end A037665.P14143884750497022356

namespace A037665

/-- `A033130(2*n+1)+A033130(2*(n+1))-A037520(2*n+1)` -/
def P14143884750497022356.Spec : Prop :=
  ∀ n, P14143884750497022356.a n = A037665 (n + 1)

end A037665

/-! ## A037665.P7145182331462507156

`floor((a(n-1)+9^(n+1))/3)` with `a(0)=3`
-/

namespace A037665.P7145182331462507156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  ⌊(a (n - 1) + (9 ^ (n + 1) : ℤ) : ℚ) / 3⌋

end

end A037665.P7145182331462507156

namespace A037665

/-- `floor((a(n-1)+9^(n+1))/3)` -/
def P7145182331462507156.Spec : Prop :=
  ∀ n, P7145182331462507156.a n = A037665 (n + 1)

end A037665

/-! ## A037665.P11355930680875617875

`floor(A263334(2*(n+1))/2)`
-/

namespace A037665.P11355930680875617875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A263334 (2 * (n + 1)) : ℚ) / 2⌋

end

end A037665.P11355930680875617875

namespace A037665

/-- `floor(A263334(2*(n+1))/2)` -/
def P11355930680875617875.Spec : Prop :=
  ∀ n, P11355930680875617875.a n = A037665 (n + 1)

end A037665

/-! ## A037665.P2599464233552193500

`round(A007051(2*(n+2))/13)`
-/

namespace A037665.P2599464233552193500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A007051 (2 * (n + 2)) : ℚ) / 13)

end

end A037665.P2599464233552193500

namespace A037665

/-- `round(A007051(2*(n+2))/13)` -/
def P2599464233552193500.Spec : Prop :=
  ∀ n, P2599464233552193500.a n = A037665 (n + 1)

end A037665

/-! ## A037665.P14016249448902168622

`A037512(2*(n+1))-A033121(2*(n+1))`
-/

namespace A037665.P14016249448902168622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037512 (2 * (n + 1)) - A033121 (2 * (n + 1))

end

end A037665.P14016249448902168622

namespace A037665

/-- `A037512(2*(n+1))-A033121(2*(n+1))` -/
def P14016249448902168622.Spec : Prop :=
  ∀ n, P14016249448902168622.a n = A037665 (n + 1)

end A037665

/-!
# A037666: Decimal expansion of a(n) is given by the first n terms of the periodic sequence with initial period 3,1,0.

The programs for A037666, the canonical program `A037666.P3152033718375423894` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037666 has offset 1).

The definition of A037666 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A037666.P1499348435523602461

`ogf((3+x)/(1-10x-x^3+10x^4))`
-/

namespace A037666.P1499348435523602461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, 1] [1, -10, 0, -1, 10] n

end

end A037666.P1499348435523602461

namespace A037666

/-- `ogf((3+x)/(1-10x-x^3+10x^4))` -/
def P1499348435523602461.Spec : Prop :=
  ∀ n, P1499348435523602461.a n = A037666 (n + 1)

end A037666

/-! ## A037666.P3152033718375423894

`or(2, or(10*a(n-1), dr(3*n)))` with `a(0)=3`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A037666

/-- `or(2, or(10*a(n-1), dr(3*n)))` -/
def P3152033718375423894.Spec : Prop :=
  ∀ n, (P3152033718375423894.a n : ℤ) = A037666 (n + 1)

theorem P3152033718375423894.correct : P3152033718375423894.Spec := by
  intro n
  simp only [A037666, Nat.add_sub_cancel]

end A037666

/-! ## A037666.P11849002635792897771

`or(10*a(n-1), Δ[A047458(n+1)])` with `a(0)=3`
-/

namespace A037666.P11849002635792897771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047458 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  Int.lor (10 * a (n - 1)) (f1 (n + 1) - f1 n)

end

end A037666.P11849002635792897771

namespace A037666

/-- `or(10*a(n-1), Δ[A047458(n+1)])` -/
def P11849002635792897771.Spec : Prop :=
  ∀ n, P11849002635792897771.a n = A037666 (n + 1)

end A037666

/-! ## A037666.P1044264769246922257

`or(10*a(n-1), Δ[A047556(n+1)])` with `a(0)=3`
-/

namespace A037666.P1044264769246922257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047556 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  Int.lor (10 * a (n - 1)) (f1 (n + 1) - f1 n)

end

end A037666.P1044264769246922257

namespace A037666

/-- `or(10*a(n-1), Δ[A047556(n+1)])` -/
def P1044264769246922257.Spec : Prop :=
  ∀ n, P1044264769246922257.a n = A037666 (n + 1)

end A037666

/-! ## A037666.P8559467765734185665

`or(6, A011655(n+1)+10*a(n-1))` with `a(0)=3`
-/

namespace A037666.P8559467765734185665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  Int.lor 6 (A011655 (n + 1) + 10 * a (n - 1))

end

end A037666.P8559467765734185665

namespace A037666

/-- `or(6, A011655(n+1)+10*a(n-1))` -/
def P8559467765734185665.Spec : Prop :=
  ∀ n, P8559467765734185665.a n = A037666 (n + 1)

end A037666

/-! ## A037666.P14091480929870781994

`A033137(n)+2*A033146(n)`
-/

namespace A037666.P14091480929870781994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033137 (n + 1) + 2 * A033146 (n + 1)

end

end A037666.P14091480929870781994

namespace A037666

/-- `A033137(n)+2*A033146(n)` -/
def P14091480929870781994.Spec : Prop :=
  ∀ n, P14091480929870781994.a n = A037666 (n + 1)

end A037666

/-!
# A037667: Base 4 digits are, in order, the first n terms of the periodic sequence with initial period 3,2,0.

The programs for A037667, the canonical program `A037667.P15861966374494071556` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037667 has offset 1).

The definition of A037667 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A037667.P15861966374494071556

`floor(32*4^n/9)`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A037667

/-- `floor(32*4^n/9)` -/
def P15861966374494071556.Spec : Prop :=
  ∀ n, P15861966374494071556.a n = A037667 (n + 1)

theorem P15861966374494071556.correct : P15861966374494071556.Spec := by
  intro n
  simp only [A037667, Nat.add_sub_cancel]

end A037667

/-! ## A037667.P1933620730776505659

`ogf((3+2x)/(1-4x-x^3+4x^4))`
-/

namespace A037667.P1933620730776505659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, 2] [1, -4, 0, -1, 4] n

end

end A037667.P1933620730776505659

namespace A037667

/-- `ogf((3+2x)/(1-4x-x^3+4x^4))` -/
def P1933620730776505659.Spec : Prop :=
  ∀ n, P1933620730776505659.a n = A037667 (n + 1)

end A037667

/-! ## A037667.P17304942331008993220

`∑[4*a(n-1)]-floor(a(n-1)/2)` with `a(0)=3`
-/

namespace A037667.P17304942331008993220
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3] fun n f1 =>
  4 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ⌊(a (n - 1) : ℚ) / 2⌋

end

end A037667.P17304942331008993220

namespace A037667

/-- `∑[4*a(n-1)]-floor(a(n-1)/2)` -/
def P17304942331008993220.Spec : Prop :=
  ∀ n, P17304942331008993220.a n = A037667 (n + 1)

end A037667

/-! ## A037667.P4114059221990349337

`A153234(2*n+5)`
-/

namespace A037667.P4114059221990349337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153234 (2 * n + 5)

end

end A037667.P4114059221990349337

namespace A037667

/-- `A153234(2*n+5)` -/
def P4114059221990349337.Spec : Prop :=
  ∀ n, P4114059221990349337.a n = A037667 (n + 1)

end A037667

/-! ## A037667.P17902286137444202681

`A328881(2*n+5)`
-/

namespace A037667.P17902286137444202681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328881 (2 * n + 5)

end

end A037667.P17902286137444202681

namespace A037667

/-- `A328881(2*n+5)` -/
def P17902286137444202681.Spec : Prop :=
  ∀ n, P17902286137444202681.a n = A037667 (n + 1)

end A037667

/-! ## A037667.P16602499488478070407

`∑[record[A135574(n+2)]]`
-/

namespace A037667.P16602499488478070407
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135574 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037667.P16602499488478070407

namespace A037667

/-- `∑[record[A135574(n+2)]]` -/
def P16602499488478070407.Spec : Prop :=
  ∀ n, P16602499488478070407.a n = A037667 (n + 1)

end A037667

/-! ## A037667.P8179729521677258848

`∑[A135574(2*(n+1))]`
-/

namespace A037667.P8179729521677258848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135574 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037667.P8179729521677258848

namespace A037667

/-- `∑[A135574(2*(n+1))]` -/
def P8179729521677258848.Spec : Prop :=
  ∀ n, P8179729521677258848.a n = A037667 (n + 1)

end A037667

/-! ## A037667.P15038560188357831224

`∑[A024495(2*n+3)]`
-/

namespace A037667.P15038560188357831224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024495 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037667.P15038560188357831224

namespace A037667

/-- `∑[A024495(2*n+3)]` -/
def P15038560188357831224.Spec : Prop :=
  ∀ n, P15038560188357831224.a n = A037667 (n + 1)

end A037667

/-! ## A037667.P6713242008111376595

`A262333(2*(n+1))-1`
-/

namespace A037667.P6713242008111376595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262333 (2 * (n + 1)) - 1

end

end A037667.P6713242008111376595

namespace A037667

/-- `A262333(2*(n+1))-1` -/
def P6713242008111376595.Spec : Prop :=
  ∀ n, P6713242008111376595.a n = A037667 (n + 1)

end A037667

/-! ## A037667.P6939090189984303891

`A131090(2*n+5)-1`
-/

namespace A037667.P6939090189984303891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131090 (2 * n + 5) - 1

end

end A037667.P6939090189984303891

namespace A037667

/-- `A131090(2*n+5)-1` -/
def P6939090189984303891.Spec : Prop :=
  ∀ n, P6939090189984303891.a n = A037667 (n + 1)

end A037667

/-! ## A037667.P1250633277206423143

`∑[∑[A141775(2*n+1)]]`
-/

namespace A037667.P1250633277206423143
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141775 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037667.P1250633277206423143

namespace A037667

/-- `∑[∑[A141775(2*n+1)]]` -/
def P1250633277206423143.Spec : Prop :=
  ∀ n, P1250633277206423143.a n = A037667 (n + 1)

end A037667

/-! ## A037667.P6123178529398704448

`∑[∑[2*A000079(n)²]+gcd(3, n+1)%3]`
-/

namespace A037667.P6123178529398704448
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000079 n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + ((Nat.gcd 3 (n + 1) % 3 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037667.P6123178529398704448

namespace A037667

/-- `∑[∑[2*A000079(n)²]+gcd(3, n+1)%3]` -/
def P6123178529398704448.Spec : Prop :=
  ∀ n, P6123178529398704448.a n = A037667 (n + 1)

end A037667

/-! ## A037667.P11320723655130262592

`A378497(n+1)+A004171(n)`
-/

namespace A037667.P11320723655130262592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378497 (n + 1) + A004171 n

end

end A037667.P11320723655130262592

namespace A037667

/-- `A378497(n+1)+A004171(n)` -/
def P11320723655130262592.Spec : Prop :=
  ∀ n, P11320723655130262592.a n = A037667 (n + 1)

end A037667

/-! ## A037667.P5934093739297192962

`A037521(n+1)+A033131(n+1)`
-/

namespace A037667.P5934093739297192962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037521 (n + 1) + A033131 (n + 1)

end

end A037667.P5934093739297192962

namespace A037667

/-- `A037521(n+1)+A033131(n+1)` -/
def P5934093739297192962.Spec : Prop :=
  ∀ n, P5934093739297192962.a n = A037667 (n + 1)

end A037667

/-! ## A037667.P1555431574928411032

`A178872(n+1)+A037625(n+1)`
-/

namespace A037667.P1555431574928411032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178872 (n + 1) + A037625 (n + 1)

end

end A037667.P1555431574928411032

namespace A037667

/-- `A178872(n+1)+A037625(n+1)` -/
def P1555431574928411032.Spec : Prop :=
  ∀ n, P1555431574928411032.a n = A037667 (n + 1)

end A037667

/-! ## A037667.P15674575401472110067

`xor(A033122(n+1), A037561(n+1))`
-/

namespace A037667.P15674575401472110067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A033122 (n + 1)) (A037561 (n + 1))

end

end A037667.P15674575401472110067

namespace A037667

/-- `xor(A033122(n+1), A037561(n+1))` -/
def P15674575401472110067.Spec : Prop :=
  ∀ n, P15674575401472110067.a n = A037667 (n + 1)

end A037667

/-! ## A037667.P12716327090617145263

`xor(A033131(n+1), A037625(n+1))`
-/

namespace A037667.P12716327090617145263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A033131 (n + 1)) (A037625 (n + 1))

end

end A037667.P12716327090617145263

namespace A037667

/-- `xor(A033131(n+1), A037625(n+1))` -/
def P12716327090617145263.Spec : Prop :=
  ∀ n, P12716327090617145263.a n = A037667 (n + 1)

end A037667

/-! ## A037667.P11086997231981063049

`xor(A037513(n+1), A037537(n+1))`
-/

namespace A037667.P11086997231981063049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A037513 (n + 1)) (A037537 (n + 1))

end

end A037667.P11086997231981063049

namespace A037667

/-- `xor(A037513(n+1), A037537(n+1))` -/
def P11086997231981063049.Spec : Prop :=
  ∀ n, P11086997231981063049.a n = A037667 (n + 1)

end A037667

/-! ## A037667.P12788339925765675697

`xor(A037521(n+1), A037597(n+1))`
-/

namespace A037667.P12788339925765675697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A037521 (n + 1)) (A037597 (n + 1))

end

end A037667.P12788339925765675697

namespace A037667

/-- `xor(A037521(n+1), A037597(n+1))` -/
def P12788339925765675697.Spec : Prop :=
  ∀ n, P12788339925765675697.a n = A037667 (n + 1)

end A037667

/-! ## A037667.P8841194217177040478

`xor(A037569(n+1), A037611(n+1))`
-/

namespace A037667.P8841194217177040478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A037569 (n + 1)) (A037611 (n + 1))

end

end A037667.P8841194217177040478

namespace A037667

/-- `xor(A037569(n+1), A037611(n+1))` -/
def P8841194217177040478.Spec : Prop :=
  ∀ n, P8841194217177040478.a n = A037667 (n + 1)

end A037667

/-!
# A037668: Base 5 digits are, in order, the first n terms of the periodic sequence with initial period 3,2,0.

The programs for A037668, the canonical program `A037668.P16021208166734148145` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037668 has offset 1).

The definition of A037668 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 143 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A037668.P9897733694576042847

`ogf((3+2x)/(1-5x-x^3+5x^4))`
-/

namespace A037668.P9897733694576042847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, 2] [1, -5, 0, -1, 5] n

end

end A037668.P9897733694576042847

namespace A037668

/-- `ogf((3+2x)/(1-5x-x^3+5x^4))` -/
def P9897733694576042847.Spec : Prop :=
  ∀ n, P9897733694576042847.a n = A037668 (n + 1)

end A037668

/-! ## A037668.P16021208166734148145

`A037522(n+1)+A033132(n+1)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A037668

/-- `A037522(n+1)+A033132(n+1)` -/
def P16021208166734148145.Spec : Prop :=
  ∀ n, P16021208166734148145.a n = A037668 (n + 1)

theorem P16021208166734148145.correct : P16021208166734148145.Spec := by
  intro n
  simp only [A037668, Nat.add_sub_cancel]

end A037668

/-! ## A037668.P15666867895587264998

`A033141(n+1)+2*A033132(n+1)`
-/

namespace A037668.P15666867895587264998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033141 (n + 1) + 2 * A033132 (n + 1)

end

end A037668.P15666867895587264998

namespace A037668

/-- `A033141(n+1)+2*A033132(n+1)` -/
def P15666867895587264998.Spec : Prop :=
  ∀ n, P15666867895587264998.a n = A037668 (n + 1)

end A037668

/-! ## A037668.P15977959185439525238

`2*A037522(n+1)-A033141(n+1)`
-/

namespace A037668.P15977959185439525238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A037522 (n + 1) - A033141 (n + 1)

end

end A037668.P15977959185439525238

namespace A037668

/-- `2*A037522(n+1)-A033141(n+1)` -/
def P15977959185439525238.Spec : Prop :=
  ∀ n, P15977959185439525238.a n = A037668 (n + 1)

end A037668

/-! ## A037668.P13849474163748932684

`2*A037562(n+1)-A037546(n+1)`
-/

namespace A037668.P13849474163748932684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A037562 (n + 1) - A037546 (n + 1)

end

end A037668.P13849474163748932684

namespace A037668

/-- `2*A037562(n+1)-A037546(n+1)` -/
def P13849474163748932684.Spec : Prop :=
  ∀ n, P13849474163748932684.a n = A037668 (n + 1)

end A037668

/-! ## A037668.P1540491037659603353

`A037554(n+1)+A037626(n+1)-A037538(n+1)`
-/

namespace A037668.P1540491037659603353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037554 (n + 1) + (A037626 (n + 1) - A037538 (n + 1))

end

end A037668.P1540491037659603353

namespace A037668

/-- `A037554(n+1)+A037626(n+1)-A037538(n+1)` -/
def P1540491037659603353.Spec : Prop :=
  ∀ n, P1540491037659603353.a n = A037668 (n + 1)

end A037668

/-! ## A037668.P4002051308657958933

`A037626(n+1)+A037633(n+1)-A037605(n+1)`
-/

namespace A037668.P4002051308657958933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037626 (n + 1) + (A037633 (n + 1) - A037605 (n + 1))

end

end A037668.P4002051308657958933

namespace A037668

/-- `A037626(n+1)+A037633(n+1)-A037605(n+1)` -/
def P4002051308657958933.Spec : Prop :=
  ∀ n, P4002051308657958933.a n = A037668 (n + 1)

end A037668

/-! ## A037668.P11302977610084504575

`2*A037546(n+2)-A037570(n+2)`
-/

namespace A037668.P11302977610084504575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A037546 (n + 2) - A037570 (n + 2)

end

end A037668.P11302977610084504575

namespace A037668

/-- `2*A037546(n+2)-A037570(n+2)` -/
def P11302977610084504575.Spec : Prop :=
  ∀ n, P11302977610084504575.a n = A037668 (n + 1)

end A037668

/-! ## A037668.P12403912183074489925

`5*A033132(n+1)-A037626(n+1)`
-/

namespace A037668.P12403912183074489925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A033132 (n + 1) - A037626 (n + 1)

end

end A037668.P12403912183074489925

namespace A037668

/-- `5*A033132(n+1)-A037626(n+1)` -/
def P12403912183074489925.Spec : Prop :=
  ∀ n, P12403912183074489925.a n = A037668 (n + 1)

end A037668

/-!
# A037669: Base 6 digits are, in order, the first n terms of the periodic sequence with initial period 3,2,0.

The programs for A037669, the canonical program `A037669.P1931527402369741809` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037669 has offset 1).

The definition of A037669 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 128 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A037669.P13590182533928869483

`ogf((3+2x)/(1-6x-x^3+6x^4))`
-/

namespace A037669.P13590182533928869483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, 2] [1, -6, 0, -1, 6] n

end

end A037669.P13590182533928869483

namespace A037669

/-- `ogf((3+2x)/(1-6x-x^3+6x^4))` -/
def P13590182533928869483.Spec : Prop :=
  ∀ n, P13590182533928869483.a n = A037669 (n + 1)

end A037669

/-! ## A037669.P1931527402369741809

`floor(Δ[A037507(n+1)/2])`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A037669

/-- `floor(Δ[A037507(n+1)/2])` -/
def P1931527402369741809.Spec : Prop :=
  ∀ n, P1931527402369741809.a n = A037669 (n + 1)

theorem P1931527402369741809.correct : P1931527402369741809.Spec := by
  intro n
  simp only [A037669, Nat.add_sub_cancel]

end A037669

/-! ## A037669.P422757767746513237

`A037523(n+1)+A033133(n+1)`
-/

namespace A037669.P422757767746513237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037523 (n + 1) + A033133 (n + 1)

end

end A037669.P422757767746513237

namespace A037669

/-- `A037523(n+1)+A033133(n+1)` -/
def P422757767746513237.Spec : Prop :=
  ∀ n, P422757767746513237.a n = A037669 (n + 1)

end A037669

/-! ## A037669.P4587101769308684328

`A033142(n+1)+2*A033133(n+1)`
-/

namespace A037669.P4587101769308684328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033142 (n + 1) + 2 * A033133 (n + 1)

end

end A037669.P4587101769308684328

namespace A037669

/-- `A033142(n+1)+2*A033133(n+1)` -/
def P4587101769308684328.Spec : Prop :=
  ∀ n, P4587101769308684328.a n = A037669 (n + 1)

end A037669

/-! ## A037669.P8704349880591674280

`A037507(n+1)+2*A033142(n+1)`
-/

namespace A037669.P8704349880591674280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037507 (n + 1) + 2 * A033142 (n + 1)

end

end A037669.P8704349880591674280

namespace A037669

/-- `A037507(n+1)+2*A033142(n+1)` -/
def P8704349880591674280.Spec : Prop :=
  ∀ n, P8704349880591674280.a n = A037669 (n + 1)

end A037669

/-! ## A037669.P480978362870886459

`2*A037523(n+1)-A033142(n+1)`
-/

namespace A037669.P480978362870886459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A037523 (n + 1) - A033142 (n + 1)

end

end A037669.P480978362870886459

namespace A037669

/-- `2*A037523(n+1)-A033142(n+1)` -/
def P480978362870886459.Spec : Prop :=
  ∀ n, P480978362870886459.a n = A037669 (n + 1)

end A037669

/-! ## A037669.P1445620105611895831

`2*A037563(n+1)-A037547(n+1)`
-/

namespace A037669.P1445620105611895831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A037563 (n + 1) - A037547 (n + 1)

end

end A037669.P1445620105611895831

namespace A037669

/-- `2*A037563(n+1)-A037547(n+1)` -/
def P1445620105611895831.Spec : Prop :=
  ∀ n, P1445620105611895831.a n = A037669 (n + 1)

end A037669

/-! ## A037669.P15518000568179429921

`ceil((Δ[A037507(n+1)]-A060576(n))/2)`
-/

namespace A037669.P15518000568179429921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037507 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f1 (n + 1) - f1 n - A060576 n : ℚ) / 2⌉

end

end A037669.P15518000568179429921

namespace A037669

/-- `ceil((Δ[A037507(n+1)]-A060576(n))/2)` -/
def P15518000568179429921.Spec : Prop :=
  ∀ n, P15518000568179429921.a n = A037669 (n + 1)

end A037669

/-! ## A037669.P14469220711904043482

`round(A037571(n+1)+A037571(n+1)/2)`
-/

namespace A037669.P14469220711904043482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A037571 (n + 1) : ℚ) + (A037571 (n + 1) : ℚ) / 2)

end

end A037669.P14469220711904043482

namespace A037669

/-- `round(A037571(n+1)+A037571(n+1)/2)` -/
def P14469220711904043482.Spec : Prop :=
  ∀ n, P14469220711904043482.a n = A037669 (n + 1)

end A037669

/-! ## A037669.P15920560337962779698

`A037539(n+2)+A037539(n+2)-A037523(n+2)`
-/

namespace A037669.P15920560337962779698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037539 (n + 2) + (A037539 (n + 2) - A037523 (n + 2))

end

end A037669.P15920560337962779698

namespace A037669

/-- `A037539(n+2)+A037539(n+2)-A037523(n+2)` -/
def P15920560337962779698.Spec : Prop :=
  ∀ n, P15920560337962779698.a n = A037669 (n + 1)

end A037669

/-! ## A037669.P4419038228469487266

`A037547(n+2)+A037547(n+2)-A037571(n+2)`
-/

namespace A037669.P4419038228469487266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037547 (n + 2) + (A037547 (n + 2) - A037571 (n + 2))

end

end A037669.P4419038228469487266

namespace A037669

/-- `A037547(n+2)+A037547(n+2)-A037571(n+2)` -/
def P4419038228469487266.Spec : Prop :=
  ∀ n, P4419038228469487266.a n = A037669 (n + 1)

end A037669

/-! ## A037669.P10549297959634455224

`2*A037539(n+2)-A037523(n+2)`
-/

namespace A037669.P10549297959634455224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A037539 (n + 2) - A037523 (n + 2)

end

end A037669.P10549297959634455224

namespace A037669

/-- `2*A037539(n+2)-A037523(n+2)` -/
def P10549297959634455224.Spec : Prop :=
  ∀ n, P10549297959634455224.a n = A037669 (n + 1)

end A037669

/-! ## A037669.P16154582737143158012

`2*A037547(n+2)-A037571(n+2)`
-/

namespace A037669.P16154582737143158012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A037547 (n + 2) - A037571 (n + 2)

end

end A037669.P16154582737143158012

namespace A037669

/-- `2*A037547(n+2)-A037571(n+2)` -/
def P16154582737143158012.Spec : Prop :=
  ∀ n, P16154582737143158012.a n = A037669 (n + 1)

end A037669

/-!
# A037670: Base 7 digits are, in order, the first n terms of the periodic sequence with initial period 3,2,0.

The programs for A037670, the canonical program `A037670.P10481012056122873768` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037670 has offset 1).

The definition of A037670 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A037670.P10481012056122873768

`floor(161*7^(n+1)/342)`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A037670

/-- `floor(161*7^(n+1)/342)` -/
def P10481012056122873768.Spec : Prop :=
  ∀ n, P10481012056122873768.a n = A037670 (n + 1)

theorem P10481012056122873768.correct : P10481012056122873768.Spec := by
  intro n
  simp only [A037670, Nat.add_sub_cancel]

end A037670

/-! ## A037670.P2590139833205525767

`ogf((3+2x)/(1-7x-x^3+7x^4))`
-/

namespace A037670.P2590139833205525767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, 2] [1, -7, 0, -1, 7] n

end

end A037670.P2590139833205525767

namespace A037670

/-- `ogf((3+2x)/(1-7x-x^3+7x^4))` -/
def P2590139833205525767.Spec : Prop :=
  ∀ n, P2590139833205525767.a n = A037670 (n + 1)

end A037670

/-! ## A037670.P16743868800403033537

`A033143(n+1)+2*A033134(n+1)`
-/

namespace A037670.P16743868800403033537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033143 (n + 1) + 2 * A033134 (n + 1)

end

end A037670.P16743868800403033537

namespace A037670

/-- `A033143(n+1)+2*A033134(n+1)` -/
def P16743868800403033537.Spec : Prop :=
  ∀ n, P16743868800403033537.a n = A037670 (n + 1)

end A037670

/-! ## A037670.P10957399028267792034

`2*A037524(n+1)-A033143(n+1)`
-/

namespace A037670.P10957399028267792034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A037524 (n + 1) - A033143 (n + 1)

end

end A037670.P10957399028267792034

namespace A037670

/-- `2*A037524(n+1)-A033143(n+1)` -/
def P10957399028267792034.Spec : Prop :=
  ∀ n, P10957399028267792034.a n = A037670 (n + 1)

end A037670

/-! ## A037670.P9464486140149072807

`2*A037556(n+1)-A037500(n+1)`
-/

namespace A037670.P9464486140149072807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A037556 (n + 1) - A037500 (n + 1)

end

end A037670.P9464486140149072807

namespace A037670

/-- `2*A037556(n+1)-A037500(n+1)` -/
def P9464486140149072807.Spec : Prop :=
  ∀ n, P9464486140149072807.a n = A037670 (n + 1)

end A037670

/-! ## A037670.P6407389638458006675

`2*A037564(n+1)-A037548(n+1)`
-/

namespace A037670.P6407389638458006675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A037564 (n + 1) - A037548 (n + 1)

end

end A037670.P6407389638458006675

namespace A037670

/-- `2*A037564(n+1)-A037548(n+1)` -/
def P6407389638458006675.Spec : Prop :=
  ∀ n, P6407389638458006675.a n = A037670 (n + 1)

end A037670

/-! ## A037670.P9500610398858772924

`Δ[∑[A037548(n+1)]-A033143(n+1)]`
-/

namespace A037670.P9500610398858772924
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037548 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A033143 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A037670.P9500610398858772924

namespace A037670

/-- `Δ[∑[A037548(n+1)]-A033143(n+1)]` -/
def P9500610398858772924.Spec : Prop :=
  ∀ n, P9500610398858772924.a n = A037670 (n + 1)

end A037670

/-! ## A037670.P252507757475812716

`A037556(n+1)+A037564(n+1)-A037532(n+1)`
-/

namespace A037670.P252507757475812716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037556 (n + 1) + (A037564 (n + 1) - A037532 (n + 1))

end

end A037670.P252507757475812716

namespace A037670

/-- `A037556(n+1)+A037564(n+1)-A037532(n+1)` -/
def P252507757475812716.Spec : Prop :=
  ∀ n, P252507757475812716.a n = A037670 (n + 1)

end A037670

/-! ## A037670.P16795163342685331818

`A037628(n+1)+A037635(n+1)-A037607(n+1)`
-/

namespace A037670.P16795163342685331818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037628 (n + 1) + (A037635 (n + 1) - A037607 (n + 1))

end

end A037670.P16795163342685331818

namespace A037670

/-- `A037628(n+1)+A037635(n+1)-A037607(n+1)` -/
def P16795163342685331818.Spec : Prop :=
  ∀ n, P16795163342685331818.a n = A037670 (n + 1)

end A037670

/-! ## A037670.P14145551291225364803

`A037642(n+1)+A037656(n+1)-A037635(n+1)`
-/

namespace A037670.P14145551291225364803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037642 (n + 1) + (A037656 (n + 1) - A037635 (n + 1))

end

end A037670.P14145551291225364803

namespace A037670

/-- `A037642(n+1)+A037656(n+1)-A037635(n+1)` -/
def P14145551291225364803.Spec : Prop :=
  ∀ n, P14145551291225364803.a n = A037670 (n + 1)

end A037670

/-! ## A037670.P4696638960621578269

`2*A037548(n+2)-A037572(n+2)`
-/

namespace A037670.P4696638960621578269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A037548 (n + 2) - A037572 (n + 2)

end

end A037670.P4696638960621578269

namespace A037670

/-- `2*A037548(n+2)-A037572(n+2)` -/
def P4696638960621578269.Spec : Prop :=
  ∀ n, P4696638960621578269.a n = A037670 (n + 1)

end A037670

/-! ## A037670.P2446387035174551694

`A037540(n+2)+A037548(n+2)-A037556(n+2)`
-/

namespace A037670.P2446387035174551694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037540 (n + 2) + (A037548 (n + 2) - A037556 (n + 2))

end

end A037670.P2446387035174551694

namespace A037670

/-- `A037540(n+2)+A037548(n+2)-A037556(n+2)` -/
def P2446387035174551694.Spec : Prop :=
  ∀ n, P2446387035174551694.a n = A037670 (n + 1)

end A037670

/-!
# A037671: Base 8 digits are, in order, the first n terms of the periodic sequence with initial period 3,2,0.

The programs for A037671, the canonical program `A037671.P205215305874122641` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037671 has offset 1).

The definition of A037671 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A037671.P205215305874122641

`floor(208*8^(n+1)/511)`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A037671

/-- `floor(208*8^(n+1)/511)` -/
def P205215305874122641.Spec : Prop :=
  ∀ n, P205215305874122641.a n = A037671 (n + 1)

theorem P205215305874122641.correct : P205215305874122641.Spec := by
  intro n
  simp only [A037671, Nat.add_sub_cancel]

end A037671

/-! ## A037671.P5380695172572773430

`ogf((3+2x)/(1-8x-x^3+8x^4))`
-/

namespace A037671.P5380695172572773430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, 2] [1, -8, 0, -1, 8] n

end

end A037671.P5380695172572773430

namespace A037671

/-- `ogf((3+2x)/(1-8x-x^3+8x^4))` -/
def P5380695172572773430.Spec : Prop :=
  ∀ n, P5380695172572773430.a n = A037671 (n + 1)

end A037671

/-! ## A037671.P1870308382710318107

`xor(1, (n+1)%3+8*a(n-1)+1)` with `a(0)=3`
-/

namespace A037671.P1870308382710318107
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3] fun n a =>
  Nat.xor 1 ((n + 1) % 3 + 8 * a (n - 1) + 1)

end

end A037671.P1870308382710318107

namespace A037671

/-- `xor(1, (n+1)%3+8*a(n-1)+1)` -/
def P1870308382710318107.Spec : Prop :=
  ∀ n, (P1870308382710318107.a n : ℤ) = A037671 (n + 1)

end A037671

/-! ## A037671.P15584149253160626076

`xor(∑[A001018(n)], A037643(n+1))`
-/

namespace A037671.P15584149253160626076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001018 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (∑ j ∈ Finset.range (n + 1), f1 j) (A037643 (n + 1))

end

end A037671.P15584149253160626076

namespace A037671

/-- `xor(∑[A001018(n)], A037643(n+1))` -/
def P15584149253160626076.Spec : Prop :=
  ∀ n, P15584149253160626076.a n = A037671 (n + 1)

end A037671

/-! ## A037671.P16806309235920504668

`A037525(n+1)+A033135(n+1)`
-/

namespace A037671.P16806309235920504668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037525 (n + 1) + A033135 (n + 1)

end

end A037671.P16806309235920504668

namespace A037671

/-- `A037525(n+1)+A033135(n+1)` -/
def P16806309235920504668.Spec : Prop :=
  ∀ n, P16806309235920504668.a n = A037671 (n + 1)

end A037671

/-! ## A037671.P6882221288775135338

`xor(A033126(n+1), A037565(n+1))`
-/

namespace A037671.P6882221288775135338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A033126 (n + 1)) (A037565 (n + 1))

end

end A037671.P6882221288775135338

namespace A037671

/-- `xor(A033126(n+1), A037565(n+1))` -/
def P6882221288775135338.Spec : Prop :=
  ∀ n, P6882221288775135338.a n = A037671 (n + 1)

end A037671

/-! ## A037671.P16818485806753083518

`xor(A037517(n+1), A037541(n+1))`
-/

namespace A037671.P16818485806753083518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A037517 (n + 1)) (A037541 (n + 1))

end

end A037671.P16818485806753083518

namespace A037671

/-- `xor(A037517(n+1), A037541(n+1))` -/
def P16818485806753083518.Spec : Prop :=
  ∀ n, P16818485806753083518.a n = A037671 (n + 1)

end A037671

/-! ## A037671.P5841868482701365598

`xor(A037608(n+1), A037622(n+1))`
-/

namespace A037671.P5841868482701365598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A037608 (n + 1)) (A037622 (n + 1))

end

end A037671.P5841868482701365598

namespace A037671

/-- `xor(A037608(n+1), A037622(n+1))` -/
def P5841868482701365598.Spec : Prop :=
  ∀ n, P5841868482701365598.a n = A037671 (n + 1)

end A037671

/-! ## A037671.P17342117442471417993

`A033144(n+1)+2*A033135(n+1)`
-/

namespace A037671.P17342117442471417993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033144 (n + 1) + 2 * A033135 (n + 1)

end

end A037671.P17342117442471417993

namespace A037671

/-- `A033144(n+1)+2*A033135(n+1)` -/
def P17342117442471417993.Spec : Prop :=
  ∀ n, P17342117442471417993.a n = A037671 (n + 1)

end A037671

/-! ## A037671.P10353112181464875042

`2*A037525(n+1)-A033144(n+1)`
-/

namespace A037671.P10353112181464875042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A037525 (n + 1) - A033144 (n + 1)

end

end A037671.P10353112181464875042

namespace A037671

/-- `2*A037525(n+1)-A033144(n+1)` -/
def P10353112181464875042.Spec : Prop :=
  ∀ n, P10353112181464875042.a n = A037671 (n + 1)

end A037671

/-! ## A037671.P8519590011190462063

`2*A037557(n+1)-A037501(n+1)`
-/

namespace A037671.P8519590011190462063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A037557 (n + 1) - A037501 (n + 1)

end

end A037671.P8519590011190462063

namespace A037671

/-- `2*A037557(n+1)-A037501(n+1)` -/
def P8519590011190462063.Spec : Prop :=
  ∀ n, P8519590011190462063.a n = A037671 (n + 1)

end A037671

/-! ## A037671.P13175340483773277568

`or(2*A033135(n+1), A037509(n+1))`
-/

namespace A037671.P13175340483773277568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (2 * A033135 (n + 1)) (A037509 (n + 1))

end

end A037671.P13175340483773277568

namespace A037671

/-- `or(2*A033135(n+1), A037509(n+1))` -/
def P13175340483773277568.Spec : Prop :=
  ∀ n, P13175340483773277568.a n = A037671 (n + 1)

end A037671

/-! ## A037671.P6909403944667136740

`A037525(n+1)+A037573(n+1)-A037501(n+1)`
-/

namespace A037671.P6909403944667136740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037525 (n + 1) + (A037573 (n + 1) - A037501 (n + 1))

end

end A037671.P6909403944667136740

namespace A037671

/-- `A037525(n+1)+A037573(n+1)-A037501(n+1)` -/
def P6909403944667136740.Spec : Prop :=
  ∀ n, P6909403944667136740.a n = A037671 (n + 1)

end A037671

/-! ## A037671.P9127291866903028214

`xor(A037533(n+1)+A033135(n+1), A037501(n+1))`
-/

namespace A037671.P9127291866903028214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A037533 (n + 1) + A033135 (n + 1)) (A037501 (n + 1))

end

end A037671.P9127291866903028214

namespace A037671

/-- `xor(A037533(n+1)+A033135(n+1), A037501(n+1))` -/
def P9127291866903028214.Spec : Prop :=
  ∀ n, P9127291866903028214.a n = A037671 (n + 1)

end A037671

/-! ## A037671.P13647861532767055179

`xor(A037565(n+1)-A037509(n+1), A037565(n+1))`
-/

namespace A037671.P13647861532767055179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A037565 (n + 1) - A037509 (n + 1)) (A037565 (n + 1))

end

end A037671.P13647861532767055179

namespace A037671

/-- `xor(A037565(n+1)-A037509(n+1), A037565(n+1))` -/
def P13647861532767055179.Spec : Prop :=
  ∀ n, P13647861532767055179.a n = A037671 (n + 1)

end A037671

/-! ## A037671.P7148646315511218851

`2*A037541(n+2)-A037525(n+2)`
-/

namespace A037671.P7148646315511218851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A037541 (n + 2) - A037525 (n + 2)

end

end A037671.P7148646315511218851

namespace A037671

/-- `2*A037541(n+2)-A037525(n+2)` -/
def P7148646315511218851.Spec : Prop :=
  ∀ n, P7148646315511218851.a n = A037671 (n + 1)

end A037671

/-! ## A037671.P16135919082178273947

`xor(2*A033135(n+2), A037573(n+2))`
-/

namespace A037671.P16135919082178273947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (2 * A033135 (n + 2)) (A037573 (n + 2))

end

end A037671.P16135919082178273947

namespace A037671

/-- `xor(2*A033135(n+2), A037573(n+2))` -/
def P16135919082178273947.Spec : Prop :=
  ∀ n, P16135919082178273947.a n = A037671 (n + 1)

end A037671

/-! ## A037671.P9223537434003527149

`A037549(n+2)+A037608(n+2)-A037636(n+2)`
-/

namespace A037671.P9223537434003527149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037549 (n + 2) + (A037608 (n + 2) - A037636 (n + 2))

end

end A037671.P9223537434003527149

namespace A037671

/-- `A037549(n+2)+A037608(n+2)-A037636(n+2)` -/
def P9223537434003527149.Spec : Prop :=
  ∀ n, P9223537434003527149.a n = A037671 (n + 1)

end A037671

/-! ## A037671.P16872445754333509670

`and(A037650(n+2)+A037615(n+2), A037615(n+2))`
-/

namespace A037671.P16872445754333509670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A037650 (n + 2) + A037615 (n + 2)) (A037615 (n + 2))

end

end A037671.P16872445754333509670

namespace A037671

/-- `and(A037650(n+2)+A037615(n+2), A037615(n+2))` -/
def P16872445754333509670.Spec : Prop :=
  ∀ n, P16872445754333509670.a n = A037671 (n + 1)

end A037671

/-!
# A037672: Base 9 digits are, in order, the first n terms of the periodic sequence with initial period 3,2,0.

The programs for A037672, the canonical program `A037672.P1990528019172802236` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037672 has offset 1).

The definition of A037672 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A037672.P10932684263691679691

`ogf((3+2x)/(1-9x-x^3+9x^4))`
-/

namespace A037672.P10932684263691679691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, 2] [1, -9, 0, -1, 9] n

end

end A037672.P10932684263691679691

namespace A037672

/-- `ogf((3+2x)/(1-9x-x^3+9x^4))` -/
def P10932684263691679691.Spec : Prop :=
  ∀ n, P10932684263691679691.a n = A037672 (n + 1)

end A037672

/-! ## A037672.P1990528019172802236

`A037526(n+1)+∑[9*a(n-1)-(n%3-1)]` with `a(0)=1`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A037672

/-- `A037526(n+1)+∑[9*a(n-1)-(n%3-1)]` -/
def P1990528019172802236.Spec : Prop :=
  ∀ n, P1990528019172802236.a n = A037672 (n + 1)

theorem P1990528019172802236.correct : P1990528019172802236.Spec := by
  intro n
  simp only [A037672, Nat.add_sub_cancel]

end A037672

/-! ## A037672.P10115510589877036011

`A037526(n+1)+A033136(n+1)`
-/

namespace A037672.P10115510589877036011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037526 (n + 1) + A033136 (n + 1)

end

end A037672.P10115510589877036011

namespace A037672

/-- `A037526(n+1)+A033136(n+1)` -/
def P10115510589877036011.Spec : Prop :=
  ∀ n, P10115510589877036011.a n = A037672 (n + 1)

end A037672

/-! ## A037672.P12669563890011520547

`A033145(n+1)+2*A033136(n+1)`
-/

namespace A037672.P12669563890011520547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033145 (n + 1) + 2 * A033136 (n + 1)

end

end A037672.P12669563890011520547

namespace A037672

/-- `A033145(n+1)+2*A033136(n+1)` -/
def P12669563890011520547.Spec : Prop :=
  ∀ n, P12669563890011520547.a n = A037672 (n + 1)

end A037672

/-! ## A037672.P1092074521833209964

`A037510(n+1)+2*A033145(n+1)`
-/

namespace A037672.P1092074521833209964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037510 (n + 1) + 2 * A033145 (n + 1)

end

end A037672.P1092074521833209964

namespace A037672

/-- `A037510(n+1)+2*A033145(n+1)` -/
def P1092074521833209964.Spec : Prop :=
  ∀ n, P1092074521833209964.a n = A037672 (n + 1)

end A037672

/-! ## A037672.P8025706858113878608

`2*A037566(n+1)-A037550(n+1)`
-/

namespace A037672.P8025706858113878608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A037566 (n + 1) - A037550 (n + 1)

end

end A037672.P8025706858113878608

namespace A037672

/-- `2*A037566(n+1)-A037550(n+1)` -/
def P8025706858113878608.Spec : Prop :=
  ∀ n, P8025706858113878608.a n = A037672 (n + 1)

end A037672

/-! ## A037672.P3841575617401658776

`4*A033136(n+1)-A037510(n+1)`
-/

namespace A037672.P3841575617401658776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A033136 (n + 1) - A037510 (n + 1)

end

end A037672.P3841575617401658776

namespace A037672

/-- `4*A033136(n+1)-A037510(n+1)` -/
def P3841575617401658776.Spec : Prop :=
  ∀ n, P3841575617401658776.a n = A037672 (n + 1)

end A037672

/-! ## A037672.P11477095895994829323

`2*A037542(n+2)-A037526(n+2)`
-/

namespace A037672.P11477095895994829323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A037542 (n + 2) - A037526 (n + 2)

end

end A037672.P11477095895994829323

namespace A037672

/-- `2*A037542(n+2)-A037526(n+2)` -/
def P11477095895994829323.Spec : Prop :=
  ∀ n, P11477095895994829323.a n = A037672 (n + 1)

end A037672

/-! ## A037672.P14810580905137545836

`2*A037550(n+2)-A037574(n+2)`
-/

namespace A037672.P14810580905137545836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A037550 (n + 2) - A037574 (n + 2)

end

end A037672.P14810580905137545836

namespace A037672

/-- `2*A037550(n+2)-A037574(n+2)` -/
def P14810580905137545836.Spec : Prop :=
  ∀ n, P14810580905137545836.a n = A037672 (n + 1)

end A037672

/-!
# A037673: Decimal expansion of a(n) is given by the first n terms of the periodic sequence with initial period 3,2,0.

The programs for A037673, the canonical program `A037673.P11238214295815122813` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037673 has offset 1).

The definition of A037673 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A037673.P2248083149966616770

`ogf((3+2x)/(1-10x-x^3+10x^4))`
-/

namespace A037673.P2248083149966616770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, 2] [1, -10, 0, -1, 10] n

end

end A037673.P2248083149966616770

namespace A037673

/-- `ogf((3+2x)/(1-10x-x^3+10x^4))` -/
def P2248083149966616770.Spec : Prop :=
  ∀ n, P2248083149966616770.a n = A037673 (n + 1)

end A037673

/-! ## A037673.P11238214295815122813

`A061347(n+1)+10*a(n-1)+2-∑[n]%3` with `a(0)=3`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A037673

/-- `A061347(n+1)+10*a(n-1)+2-∑[n]%3` -/
def P11238214295815122813.Spec : Prop :=
  ∀ n, P11238214295815122813.a n = A037673 (n + 1)

theorem P11238214295815122813.correct : P11238214295815122813.Spec := by
  intro n
  simp only [A037673, Nat.add_sub_cancel]

end A037673

/-! ## A037673.P9481240649908363150

`A033146(n)+2*A033137(n)`
-/

namespace A037673.P9481240649908363150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033146 (n + 1) + 2 * A033137 (n + 1)

end

end A037673.P9481240649908363150

namespace A037673

/-- `A033146(n)+2*A033137(n)` -/
def P9481240649908363150.Spec : Prop :=
  ∀ n, P9481240649908363150.a n = A037673 (n + 1)

end A037673

/-! ## A037673.P13334058653638729722

`A061347(n+1)+10*a(n-1)+Δ[A004396(n)]+1` with `a(0)=3`
-/

namespace A037673.P13334058653638729722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 n

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A061347 (n + 1) + (10 * a (n - 1) + (f1 (n + 1) - f1 n + 1))

end

end A037673.P13334058653638729722

namespace A037673

/-- `A061347(n+1)+10*a(n-1)+Δ[A004396(n)]+1` -/
def P13334058653638729722.Spec : Prop :=
  ∀ n, P13334058653638729722.a n = A037673 (n + 1)

end A037673

/-! ## A037673.P9225804744182260033

`A061347(n+1)+10*a(n-1)+A141571(n+1)+1` with `a(0)=3`
-/

namespace A037673.P9225804744182260033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A061347 (n + 1) + (10 * a (n - 1) + (A141571 (n + 1) + 1))

end

end A037673.P9225804744182260033

namespace A037673

/-- `A061347(n+1)+10*a(n-1)+A141571(n+1)+1` -/
def P9225804744182260033.Spec : Prop :=
  ∀ n, P9225804744182260033.a n = A037673 (n + 1)

end A037673

/-! ## A037673.P5436160958974584545

`A037617(n+1)-A033146(n+1)`
-/

namespace A037673.P5436160958974584545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037617 (n + 1 + 1) - A033146 (n + 1 + 1)

end

end A037673.P5436160958974584545

namespace A037673

/-- `A037617(n+1)-A033146(n+1)` -/
def P5436160958974584545.Spec : Prop :=
  ∀ n, P5436160958974584545.a n = A037673 (n + 1)

end A037673

/-!
# A037674: Base-4 digits are, in order, the first n terms of the periodic sequence with initial period 1,0,2,3.

The programs for A037674, the canonical program `A037674.P130980568173129161` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037674 has offset 1).

The definition of A037674 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A037674.P130980568173129161

`floor(5*4^(n+1)/17)`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A037674

/-- `floor(5*4^(n+1)/17)` -/
def P130980568173129161.Spec : Prop :=
  ∀ n, P130980568173129161.a n = A037674 (n + 1)

theorem P130980568173129161.correct : P130980568173129161.Spec := by
  intro n
  simp only [A037674, Nat.add_sub_cancel]

end A037674

/-! ## A037674.P9788077865565086777

`ogf((1-x+3x^2)/(1-5x+5x^2-5x^3+4x^4))`
-/

namespace A037674.P9788077865565086777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, 3] [1, -5, 5, -5, 4] n

end

end A037674.P9788077865565086777

namespace A037674

/-- `ogf((1-x+3x^2)/(1-5x+5x^2-5x^3+4x^4))` -/
def P9788077865565086777.Spec : Prop :=
  ∀ n, P9788077865565086777.a n = A037674 (n + 1)

end A037674

/-! ## A037674.P4012351041026503872

`4*a(n-1)+3-a(n-2)%4` with `a(0)=1, a(1)=4`
-/

namespace A037674.P4012351041026503872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  4 * a (n - 1) + (3 - Int.tmod (a (n - 2)) 4)

end

end A037674.P4012351041026503872

namespace A037674

/-- `4*a(n-1)+3-a(n-2)%4` -/
def P4012351041026503872.Spec : Prop :=
  ∀ n, P4012351041026503872.a n = A037674 (n + 1)

end A037674

/-! ## A037674.P2749630038846212241

`and(3, 3-a(n-2))+4*a(n-1)` with `a(0)=1, a(1)=4`
-/

namespace A037674.P2749630038846212241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  Int.land 3 (3 - a (n - 2)) + 4 * a (n - 1)

end

end A037674.P2749630038846212241

namespace A037674

/-- `and(3, 3-a(n-2))+4*a(n-1)` -/
def P2749630038846212241.Spec : Prop :=
  ∀ n, P2749630038846212241.a n = A037674 (n + 1)

end A037674

/-! ## A037674.P15850478466233182368

`3-(and(3, a(n-2))-4*a(n-1))` with `a(0)=1, a(1)=4`
-/

namespace A037674.P15850478466233182368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  3 - (Int.land 3 (a (n - 2)) - 4 * a (n - 1))

end

end A037674.P15850478466233182368

namespace A037674

/-- `3-(and(3, a(n-2))-4*a(n-1))` -/
def P15850478466233182368.Spec : Prop :=
  ∀ n, P15850478466233182368.a n = A037674 (n + 1)

end A037674

/-! ## A037674.P12828712308260868815

`or(4*a(n-1), (A000032(n)-1)%5)` with `a(0)=1`
-/

namespace A037674.P12828712308260868815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.lor (4 * a (n - 1)) (Int.tmod (A000032 n - 1) 5)

end

end A037674.P12828712308260868815

namespace A037674

/-- `or(4*a(n-1), (A000032(n)-1)%5)` -/
def P12828712308260868815.Spec : Prop :=
  ∀ n, P12828712308260868815.a n = A037674 (n + 1)

end A037674

/-! ## A037674.P8435199877678688729

`xor(A037489(n+1), A037772(n+1))`
-/

namespace A037674.P8435199877678688729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A037489 (n + 1)) (A037772 (n + 1))

end

end A037674.P8435199877678688729

namespace A037674

/-- `xor(A037489(n+1), A037772(n+1))` -/
def P8435199877678688729.Spec : Prop :=
  ∀ n, P8435199877678688729.a n = A037674 (n + 1)

end A037674

/-! ## A037674.P4720510858062252702

`xor(A037723(n+1), A037758(n+1))`
-/

namespace A037674.P4720510858062252702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A037723 (n + 1)) (A037758 (n + 1))

end

end A037674.P4720510858062252702

namespace A037674

/-- `xor(A037723(n+1), A037758(n+1))` -/
def P4720510858062252702.Spec : Prop :=
  ∀ n, P4720510858062252702.a n = A037674 (n + 1)

end A037674

/-! ## A037674.P17092743346269298027

`xor(A037730(n+1), A037779(n+1))`
-/

namespace A037674.P17092743346269298027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A037730 (n + 1)) (A037779 (n + 1))

end

end A037674.P17092743346269298027

namespace A037674

/-- `xor(A037730(n+1), A037779(n+1))` -/
def P17092743346269298027.Spec : Prop :=
  ∀ n, P17092743346269298027.a n = A037674 (n + 1)

end A037674

/-! ## A037674.P16495240138617089553

`xor(A037716(n+1), A043291(n+1))`
-/

namespace A037674.P16495240138617089553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A037716 (n + 1)) (A043291 (n + 1))

end

end A037674.P16495240138617089553

namespace A037674

/-- `xor(A037716(n+1), A043291(n+1))` -/
def P16495240138617089553.Spec : Prop :=
  ∀ n, P16495240138617089553.a n = A037674 (n + 1)

end A037674

/-! ## A037674.P1117205890163311060

`A037772(n+2)-A110594(n+2)`
-/

namespace A037674.P1117205890163311060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037772 (n + 2) - A110594 (n + 2)

end

end A037674.P1117205890163311060

namespace A037674

/-- `A037772(n+2)-A110594(n+2)` -/
def P1117205890163311060.Spec : Prop :=
  ∀ n, P1117205890163311060.a n = A037674 (n + 1)

end A037674

/-!
# A037675: Base-5 digits are, in order, the first n terms of the periodic sequence with initial period 1,0,2,3.

The programs for A037675, the canonical program `A037675.P13074106034015113982` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037675 has offset 1).

The definition of A037675 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 144 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A037675.P13443897776439246771

`ogf((1-x+3x^2)/(1-6x+6x^2-6x^3+5x^4))`
-/

namespace A037675.P13443897776439246771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, 3] [1, -6, 6, -6, 5] n

end

end A037675.P13443897776439246771

namespace A037675

/-- `ogf((1-x+3x^2)/(1-6x+6x^2-6x^3+5x^4))` -/
def P13443897776439246771.Spec : Prop :=
  ∀ n, P13443897776439246771.a n = A037675 (n + 1)

end A037675

/-! ## A037675.P13074106034015113982

`∑[xor(5*a(n-1), gcd(2, n))]` with `a(0)=1`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A037675

/-- `∑[xor(5*a(n-1), gcd(2, n))]` -/
def P13074106034015113982.Spec : Prop :=
  ∀ n, (P13074106034015113982.a n : ℤ) = A037675 (n + 1)

theorem P13074106034015113982.correct : P13074106034015113982.Spec := by
  intro n
  simp only [A037675, Nat.add_sub_cancel]

end A037675

/-! ## A037675.P10910842446840363777

`∑[xor(5*a(n-1), 2^and(1, n+1))]` with `a(0)=1`
-/

namespace A037675.P10910842446840363777
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  Nat.xor (5 * f1 (n - 1)) (2 ^ Nat.land 1 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037675.P10910842446840363777

namespace A037675

/-- `∑[xor(5*a(n-1), 2^and(1, n+1))]` -/
def P10910842446840363777.Spec : Prop :=
  ∀ n, (P10910842446840363777.a n : ℤ) = A037675 (n + 1)

end A037675

/-! ## A037675.P9125582988789439842

`∑[xor(5*a(n-1), A040001(n))]` with `a(0)=1`
-/

namespace A037675.P9125582988789439842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  Int.xor (5 * f1 (n - 1)) (A040001 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037675.P9125582988789439842

namespace A037675

/-- `∑[xor(5*a(n-1), A040001(n))]` -/
def P9125582988789439842.Spec : Prop :=
  ∀ n, P9125582988789439842.a n = A037675 (n + 1)

end A037675

/-! ## A037675.P16079590255857356775

`∑[xor(5*a(n-1), A134451(n))]` with `a(0)=1`
-/

namespace A037675.P16079590255857356775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  Int.xor (5 * f1 (n - 1)) (A134451 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037675.P16079590255857356775

namespace A037675

/-- `∑[xor(5*a(n-1), A134451(n))]` -/
def P16079590255857356775.Spec : Prop :=
  ∀ n, P16079590255857356775.a n = A037675 (n + 1)

end A037675

/-! ## A037675.P13047142980366117303

`∑[xor(5*a(n-1), A000034(n+1))]` with `a(0)=1`
-/

namespace A037675.P13047142980366117303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  Int.xor (5 * f1 (n - 1)) (A000034 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037675.P13047142980366117303

namespace A037675

/-- `∑[xor(5*a(n-1), A000034(n+1))]` -/
def P13047142980366117303.Spec : Prop :=
  ∀ n, P13047142980366117303.a n = A037675 (n + 1)

end A037675

/-!
# A037676: Base-6 digits are, in order, the first n terms of the periodic sequence with initial period 1,0,2,3.

The programs for A037676, the canonical program `A037676.P863181966691922142` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037676 has offset 1).

The definition of A037676 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 129 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A037676.P3992253175634251716

`∑[ogf((1-x+3x^2)/(1-6x+x^2-6x^3))]`
-/

namespace A037676.P3992253175634251716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, 3] [1, -6, 1, -6] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037676.P3992253175634251716

namespace A037676

/-- `∑[ogf((1-x+3x^2)/(1-6x+x^2-6x^3))]` -/
def P3992253175634251716.Spec : Prop :=
  ∀ n, P3992253175634251716.a n = A037676 (n + 1)

end A037676

/-! ## A037676.P863181966691922142

`(A000032(n)-1)%5+6*a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A037676

/-- `(A000032(n)-1)%5+6*a(n-1)` -/
def P863181966691922142.Spec : Prop :=
  ∀ n, P863181966691922142.a n = A037676 (n + 1)

theorem P863181966691922142.correct : P863181966691922142.Spec := by
  intro n
  simp only [A037676, Nat.add_sub_cancel]

end A037676

/-! ## A037676.P16962847266447468205

`or(6*a(n-1), A010693(A000124(n)))` with `a(0)=1`
-/

namespace A037676.P16962847266447468205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.lor (6 * a (n - 1)) (A010693 (A000124 n).toNat)

end

end A037676.P16962847266447468205

namespace A037676

/-- `or(6*a(n-1), A010693(A000124(n)))` -/
def P16962847266447468205.Spec : Prop :=
  ∀ n, P16962847266447468205.a n = A037676 (n + 1)

end A037676

/-! ## A037676.P6928707487737109970

`or(6*a(n-1), A010693(A001651(n+1)))` with `a(0)=1`
-/

namespace A037676.P6928707487737109970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.lor (6 * a (n - 1)) (A010693 (A001651 (n + 1)).toNat)

end

end A037676.P6928707487737109970

namespace A037676

/-- `or(6*a(n-1), A010693(A001651(n+1)))` -/
def P6928707487737109970.Spec : Prop :=
  ∀ n, P6928707487737109970.a n = A037676 (n + 1)

end A037676

/-! ## A037676.P16615022256612247418

`or(6*a(n-1), A010693(A056115(n+5)+5))` with `a(0)=1`
-/

namespace A037676.P16615022256612247418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.lor (6 * a (n - 1)) (A010693 (A056115 (n + 5) + 5).toNat)

end

end A037676.P16615022256612247418

namespace A037676

/-- `or(6*a(n-1), A010693(A056115(n+5)+5))` -/
def P16615022256612247418.Spec : Prop :=
  ∀ n, P16615022256612247418.a n = A037676 (n + 1)

end A037676

/-! ## A037676.P4431196452294976676

`A037774(n+2)%∏[A040080(n)]`
-/

namespace A037676.P4431196452294976676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040080 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A037774 (n + 2)) (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A037676.P4431196452294976676

namespace A037676

/-- `A037774(n+2)%∏[A040080(n)]` -/
def P4431196452294976676.Spec : Prop :=
  ∀ n, P4431196452294976676.a n = A037676 (n + 1)

end A037676

/-!
# A037677: Base 7 digits are, in order, the first n terms of the periodic sequence with initial period 1,0,2,3.

The programs for A037677, the canonical program `A037677.P748078075638042481` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037677 has offset 1).

The definition of A037677 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A037677.anchor (n : ℕ) (hn : 1 ≤ n) : A037677 n = ((Nat.ofDigits 7 ((List.range n).reverse.map fun i => [1, 0, 2, 3].getD (i % 4) 0) : ℕ) : ℤ)` in `Proof.A037.A037677`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A037677.P748078075638042481

`8*a(n-1)-8*a(n-2)+8*a(n-3)-7*a(n-4)` with `a(0)=1, a(1)=7, a(2)=51, a(3)=360`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A037677

/-- `8*a(n-1)-8*a(n-2)+8*a(n-3)-7*a(n-4)` -/
def P748078075638042481.Spec : Prop :=
  ∀ n, P748078075638042481.a n = A037677 (n + 1)

theorem P748078075638042481.correct : P748078075638042481.Spec := by
  intro n
  simp only [A037677, Nat.add_sub_cancel]

end A037677

/-! ## A037677.P8079276133449754111

`floor(3*7^(n+1)/20)`
-/

namespace A037677.P8079276133449754111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(3 * 7 ^ (n + 1) : ℚ) / 20⌋

end

end A037677.P8079276133449754111

namespace A037677

/-- `floor(3*7^(n+1)/20)` -/
def P8079276133449754111.Spec : Prop :=
  ∀ n, P8079276133449754111.a n = A037677 (n + 1)

end A037677

/-! ## A037677.P10308809553943310707

`A104896(n)-(∑[round(7^n/10)]-1)`
-/

namespace A037677.P10308809553943310707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((7 ^ n : ℚ) / 10)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104896 n - (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A037677.P10308809553943310707

namespace A037677

/-- `A104896(n)-(∑[round(7^n/10)]-1)` -/
def P10308809553943310707.Spec : Prop :=
  ∀ n, P10308809553943310707.a n = A037677 (n + 1)

end A037677

/-! ## A037677.P3750985913298169724

`∑[round(A199486(n)/5)]`
-/

namespace A037677.P3750985913298169724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A199486 n : ℚ) / 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037677.P3750985913298169724

namespace A037677

/-- `∑[round(A199486(n)/5)]` -/
def P3750985913298169724.Spec : Prop :=
  ∀ n, P3750985913298169724.a n = A037677 (n + 1)

end A037677

/-! ## A037677.P9027051676147123204

`round(A037775(n+1)/3)`
-/

namespace A037677.P9027051676147123204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A037775 (n + 1) : ℚ) / 3)

end

end A037677.P9027051676147123204

namespace A037677

/-- `round(A037775(n+1)/3)` -/
def P9027051676147123204.Spec : Prop :=
  ∀ n, P9027051676147123204.a n = A037677 (n + 1)

end A037677

/-! ## A037677.P17377523287506983153

`A120741(n+1)-A037754(n+1)`
-/

namespace A037677.P17377523287506983153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120741 (n + 1) - A037754 (n + 1)

end

end A037677.P17377523287506983153

namespace A037677

/-- `A120741(n+1)-A037754(n+1)` -/
def P17377523287506983153.Spec : Prop :=
  ∀ n, P17377523287506983153.a n = A037677 (n + 1)

end A037677

/-! ## A037677.P10875436869871204479

`round(A198647(n+1)/20)`
-/

namespace A037677.P10875436869871204479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A198647 (n + 1) : ℚ) / 20)

end

end A037677.P10875436869871204479

namespace A037677

/-- `round(A198647(n+1)/20)` -/
def P10875436869871204479.Spec : Prop :=
  ∀ n, P10875436869871204479.a n = A037677 (n + 1)

end A037677

/-!
# A037678: Base 8 digits are, in order, the first n terms of the periodic sequence with initial period 1,0,2,3.

The programs for A037678, the canonical program `A037678.P8790120410625240737` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037678 has offset 1).

The definition of A037678 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A037678.P9175386968908107528

`xor(A037727(n+1), A037762(n+1))`
-/

namespace A037678.P9175386968908107528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A037727 (n + 1)) (A037762 (n + 1))

end

end A037678.P9175386968908107528

namespace A037678

/-- `xor(A037727(n+1), A037762(n+1))` -/
def P9175386968908107528.Spec : Prop :=
  ∀ n, P9175386968908107528.a n = A037678 (n + 1)

end A037678

/-! ## A037678.P8790120410625240737

`xor(A037734(n+1), A037783(n+1))`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A037678

/-- `xor(A037734(n+1), A037783(n+1))` -/
def P8790120410625240737.Spec : Prop :=
  ∀ n, P8790120410625240737.a n = A037678 (n + 1)

theorem P8790120410625240737.correct : P8790120410625240737.Spec := by
  intro n
  simp only [A037678, Nat.add_sub_cancel]

end A037678

/-! ## A037678.P2297015354824321460

`A037706(n+1)+A037727(n+1)-A037755(n+1)`
-/

namespace A037678.P2297015354824321460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037706 (n + 1) + (A037727 (n + 1) - A037755 (n + 1))

end

end A037678.P2297015354824321460

namespace A037678

/-- `A037706(n+1)+A037727(n+1)-A037755(n+1)` -/
def P2297015354824321460.Spec : Prop :=
  ∀ n, P2297015354824321460.a n = A037678 (n + 1)

end A037678

/-! ## A037678.P7009785211289606204

`A037720(n+1)+A037727(n+1)-A037769(n+1)`
-/

namespace A037678.P7009785211289606204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037720 (n + 1) + (A037727 (n + 1) - A037769 (n + 1))

end

end A037678.P7009785211289606204

namespace A037678

/-- `A037720(n+1)+A037727(n+1)-A037769(n+1)` -/
def P7009785211289606204.Spec : Prop :=
  ∀ n, P7009785211289606204.a n = A037678 (n + 1)

end A037678

/-! ## A037678.P4907098609434866909

`A037720(n+1)+A037741(n+1)-A037783(n+1)`
-/

namespace A037678.P4907098609434866909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037720 (n + 1) + (A037741 (n + 1) - A037783 (n + 1))

end

end A037678.P4907098609434866909

namespace A037678

/-- `A037720(n+1)+A037741(n+1)-A037783(n+1)` -/
def P4907098609434866909.Spec : Prop :=
  ∀ n, P4907098609434866909.a n = A037678 (n + 1)

end A037678

/-!
# A037679: Base 9 digits are, in order, the first n terms of the periodic sequence with initial period 1,0,2,3.

The programs for A037679, the canonical program `A037679.P16565271596860764363` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037679 has offset 1).

The definition of A037679 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A037679.P16565271596860764363

`∑[xor(9*a(n-1), gcd(2, n))]` with `a(0)=1`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A037679

/-- `∑[xor(9*a(n-1), gcd(2, n))]` -/
def P16565271596860764363.Spec : Prop :=
  ∀ n, (P16565271596860764363.a n : ℤ) = A037679 (n + 1)

theorem P16565271596860764363.correct : P16565271596860764363.Spec := by
  intro n
  simp only [A037679, Nat.add_sub_cancel]

end A037679

/-! ## A037679.P9704195141549450916

`∑[xor(9*a(n-1), A040001(n))]` with `a(0)=1`
-/

namespace A037679.P9704195141549450916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  Int.xor (9 * f1 (n - 1)) (A040001 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037679.P9704195141549450916

namespace A037679

/-- `∑[xor(9*a(n-1), A040001(n))]` -/
def P9704195141549450916.Spec : Prop :=
  ∀ n, P9704195141549450916.a n = A037679 (n + 1)

end A037679

/-! ## A037679.P8921467473920915463

`∑[xor(9*a(n-1), A134451(n))]` with `a(0)=1`
-/

namespace A037679.P8921467473920915463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  Int.xor (9 * f1 (n - 1)) (A134451 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037679.P8921467473920915463

namespace A037679

/-- `∑[xor(9*a(n-1), A134451(n))]` -/
def P8921467473920915463.Spec : Prop :=
  ∀ n, P8921467473920915463.a n = A037679 (n + 1)

end A037679

/-! ## A037679.P11470066458907979145

`∑[xor(9*a(n-1), A000034(n+1))]` with `a(0)=1`
-/

namespace A037679.P11470066458907979145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  Int.xor (9 * f1 (n - 1)) (A000034 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037679.P11470066458907979145

namespace A037679

/-- `∑[xor(9*a(n-1), A000034(n+1))]` -/
def P11470066458907979145.Spec : Prop :=
  ∀ n, P11470066458907979145.a n = A037679 (n + 1)

end A037679

/-! ## A037679.P13119988296185395346

`∑[xor(9*a(n-1), A014695(2*n+1))]` with `a(0)=1`
-/

namespace A037679.P13119988296185395346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  Int.xor (9 * f1 (n - 1)) (A014695 (2 * n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037679.P13119988296185395346

namespace A037679

/-- `∑[xor(9*a(n-1), A014695(2*n+1))]` -/
def P13119988296185395346.Spec : Prop :=
  ∀ n, P13119988296185395346.a n = A037679 (n + 1)

end A037679

/-!
# A037680: Decimal expansion of a(n) is given by the first n terms of the periodic sequence with initial period 1,0,2,3.

The programs for A037680, the canonical program `A037680.P18023137758176828315` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037680 has offset 1).

The definition of A037680 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A037680.P18023137758176828315

`or(10*a(n-1), Δ[A047411(n+1)])` with `a(0)=1`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A037680

/-- `or(10*a(n-1), Δ[A047411(n+1)])` -/
def P18023137758176828315.Spec : Prop :=
  ∀ n, P18023137758176828315.a n = A037680 (n + 1)

theorem P18023137758176828315.correct : P18023137758176828315.Spec := by
  intro n
  simp only [A037680, Nat.add_sub_cancel]

end A037680

/-! ## A037680.P5005379372847376334

`(A000032(n)-1)%5+10*a(n-1)` with `a(0)=1`
-/

namespace A037680.P5005379372847376334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.tmod (A000032 n - 1) 5 + 10 * a (n - 1)

end

end A037680.P5005379372847376334

namespace A037680

/-- `(A000032(n)-1)%5+10*a(n-1)` -/
def P5005379372847376334.Spec : Prop :=
  ∀ n, P5005379372847376334.a n = A037680 (n + 1)

end A037680

/-! ## A037680.P6087353788277973300

`or(10*a(n-1), A020639(A051063(n+1)))` with `a(0)=1`
-/

namespace A037680.P6087353788277973300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.lor (10 * a (n - 1)) (A020639 (A051063 (n + 1)).toNat)

end

end A037680.P6087353788277973300

namespace A037680

/-- `or(10*a(n-1), A020639(A051063(n+1)))` -/
def P6087353788277973300.Spec : Prop :=
  ∀ n, P6087353788277973300.a n = A037680 (n + 1)

end A037680

/-! ## A037680.P8257732991174132825

`or(10*a(n-1), A163169(A027468(n)))` with `a(0)=1`
-/

namespace A037680.P8257732991174132825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.lor (10 * a (n - 1)) (A163169 (A027468 n).toNat)

end

end A037680.P8257732991174132825

namespace A037680

/-- `or(10*a(n-1), A163169(A027468(n)))` -/
def P8257732991174132825.Spec : Prop :=
  ∀ n, P8257732991174132825.a n = A037680 (n + 1)

end A037680

/-!
# A037681: Base-4 digits are, in order, the first n terms of the periodic sequence with initial period 1,0,3,2.

The programs for A037681, the canonical program `A037681.P14844236043975556058` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037681 has offset 1).

The definition of A037681 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A037681.P11597297634071554081

`ogf((1+3x^2+2x^3)/(1-4x-x^4+4x^5))`
-/

namespace A037681.P11597297634071554081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, 3, 2] [1, -4, 0, 0, -1, 4] n

end

end A037681.P11597297634071554081

namespace A037681

/-- `ogf((1+3x^2+2x^3)/(1-4x-x^4+4x^5))` -/
def P11597297634071554081.Spec : Prop :=
  ∀ n, P11597297634071554081.a n = A037681 (n + 1)

end A037681

/-! ## A037681.P14844236043975556058

`and(3, 1-n)+4*a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A037681

/-- `and(3, 1-n)+4*a(n-1)` -/
def P14844236043975556058.Spec : Prop :=
  ∀ n, P14844236043975556058.a n = A037681 (n + 1)

theorem P14844236043975556058.correct : P14844236043975556058.Spec := by
  intro n
  simp only [A037681, Nat.add_sub_cancel]

end A037681

/-! ## A037681.P16548764408235276247

`or(4*a(n-1), and(3, 1-n))` with `a(0)=1`
-/

namespace A037681.P16548764408235276247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.lor (4 * a (n - 1)) (Int.land 3 (1 - (n : ℤ)))

end

end A037681.P16548764408235276247

namespace A037681

/-- `or(4*a(n-1), and(3, 1-n))` -/
def P16548764408235276247.Spec : Prop :=
  ∀ n, P16548764408235276247.a n = A037681 (n + 1)

end A037681

/-! ## A037681.P7420171409189967772

`xor(4*a(n-1), and(3, 1-n))` with `a(0)=1`
-/

namespace A037681.P7420171409189967772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.xor (4 * a (n - 1)) (Int.land 3 (1 - (n : ℤ)))

end

end A037681.P7420171409189967772

namespace A037681

/-- `xor(4*a(n-1), and(3, 1-n))` -/
def P7420171409189967772.Spec : Prop :=
  ∀ n, P7420171409189967772.a n = A037681 (n + 1)

end A037681

/-! ## A037681.P475777441911787858

`a(n-1)+or(3, 3*a(n-1))` with `a(0)=1`
-/

namespace A037681.P475777441911787858
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Nat.lor 3 (3 * a (n - 1))

end

end A037681.P475777441911787858

namespace A037681

/-- `a(n-1)+or(3, 3*a(n-1))` -/
def P475777441911787858.Spec : Prop :=
  ∀ n, (P475777441911787858.a n : ℤ) = A037681 (n + 1)

end A037681

/-! ## A037681.P5659252359621496434

`(a(n-1)-1)%4+4*a(n-1)` with `a(0)=1`
-/

namespace A037681.P5659252359621496434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.tmod (a (n - 1) - 1) 4 + 4 * a (n - 1)

end

end A037681.P5659252359621496434

namespace A037681

/-- `(a(n-1)-1)%4+4*a(n-1)` -/
def P5659252359621496434.Spec : Prop :=
  ∀ n, P5659252359621496434.a n = A037681 (n + 1)

end A037681

/-! ## A037681.P10546855928087824987

`4*a(n-1)-(1-a(n-1))%4` with `a(0)=1`
-/

namespace A037681.P10546855928087824987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  4 * a (n - 1) - Int.tmod (1 - a (n - 1)) 4

end

end A037681.P10546855928087824987

namespace A037681

/-- `4*a(n-1)-(1-a(n-1))%4` -/
def P10546855928087824987.Spec : Prop :=
  ∀ n, P10546855928087824987.a n = A037681 (n + 1)

end A037681

/-! ## A037681.P12439692271063360924

`floor(A037737(n+1)/2)`
-/

namespace A037681.P12439692271063360924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A037737 (n + 1) : ℚ) / 2⌋

end

end A037681.P12439692271063360924

namespace A037681

/-- `floor(A037737(n+1)/2)` -/
def P12439692271063360924.Spec : Prop :=
  ∀ n, P12439692271063360924.a n = A037681 (n + 1)

end A037681

/-! ## A037681.P4555387991715965596

`xor(A037695(n+1), A117616(n))`
-/

namespace A037681.P4555387991715965596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A037695 (n + 1)) (A117616 n)

end

end A037681.P4555387991715965596

namespace A037681

/-- `xor(A037695(n+1), A117616(n))` -/
def P4555387991715965596.Spec : Prop :=
  ∀ n, P4555387991715965596.a n = A037681 (n + 1)

end A037681

/-! ## A037681.P179992694176888146

`xor(A037583(n+1), A037730(n+1))`
-/

namespace A037681.P179992694176888146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A037583 (n + 1)) (A037730 (n + 1))

end

end A037681.P179992694176888146

namespace A037681

/-- `xor(A037583(n+1), A037730(n+1))` -/
def P179992694176888146.Spec : Prop :=
  ∀ n, P179992694176888146.a n = A037681 (n + 1)

end A037681

/-! ## A037681.P17169020722817512764

`xor(A037716(n+1), A037765(n+1))`
-/

namespace A037681.P17169020722817512764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A037716 (n + 1)) (A037765 (n + 1))

end

end A037681.P17169020722817512764

namespace A037681

/-- `xor(A037716(n+1), A037765(n+1))` -/
def P17169020722817512764.Spec : Prop :=
  ∀ n, P17169020722817512764.a n = A037681 (n + 1)

end A037681

/-! ## A037681.P8016994340351872296

`xor(A037737(n+1), A037772(n+1))`
-/

namespace A037681.P8016994340351872296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A037737 (n + 1)) (A037772 (n + 1))

end

end A037681.P8016994340351872296

namespace A037681

/-- `xor(A037737(n+1), A037772(n+1))` -/
def P8016994340351872296.Spec : Prop :=
  ∀ n, P8016994340351872296.a n = A037681 (n + 1)

end A037681

/-! ## A037681.P9997273039084870039

`xor(A037758(n+1), A117616(n+1))`
-/

namespace A037681.P9997273039084870039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A037758 (n + 1)) (A117616 (n + 1))

end

end A037681.P9997273039084870039

namespace A037681

/-- `xor(A037758(n+1), A117616(n+1))` -/
def P9997273039084870039.Spec : Prop :=
  ∀ n, P9997273039084870039.a n = A037681 (n + 1)

end A037681

/-!
# A037682: Base-5 digits are, in order, the first n terms of the periodic sequence with initial period 1,0,3,2.

The programs for A037682, the canonical program `A037682.P7397137621328689751` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037682 has offset 1).

The definition of A037682 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 143 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A037682.P7397137621328689751

`∑[5*a(n-1)-(1-and(4, n²))]` with `a(0)=1`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A037682

/-- `∑[5*a(n-1)-(1-and(4, n²))]` -/
def P7397137621328689751.Spec : Prop :=
  ∀ n, P7397137621328689751.a n = A037682 (n + 1)

theorem P7397137621328689751.correct : P7397137621328689751.Spec := by
  intro n
  simp only [A037682, Nat.add_sub_cancel]

end A037682

/-! ## A037682.P4220453936091924537

`a(n-1)+and(3, 1-n)+4*a(n-1)` with `a(0)=1`
-/

namespace A037682.P4220453936091924537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (Int.land 3 (1 - (n : ℤ)) + 4 * a (n - 1))

end

end A037682.P4220453936091924537

namespace A037682

/-- `a(n-1)+and(3, 1-n)+4*a(n-1)` -/
def P4220453936091924537.Spec : Prop :=
  ∀ n, P4220453936091924537.a n = A037682 (n + 1)

end A037682

/-! ## A037682.P5417819774902261658

`floor(A037787(n+1)/3)`
-/

namespace A037682.P5417819774902261658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A037787 (n + 1) : ℚ) / 3⌋

end

end A037682.P5417819774902261658

namespace A037682

/-- `floor(A037787(n+1)/3)` -/
def P5417819774902261658.Spec : Prop :=
  ∀ n, P5417819774902261658.a n = A037682 (n + 1)

end A037682

/-! ## A037682.P4946252926196804444

`∑[xor(5*a(n-1), A176040(n))]` with `a(0)=1`
-/

namespace A037682.P4946252926196804444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  Int.xor (5 * f1 (n - 1)) (A176040 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037682.P4946252926196804444

namespace A037682

/-- `∑[xor(5*a(n-1), A176040(n))]` -/
def P4946252926196804444.Spec : Prop :=
  ∀ n, P4946252926196804444.a n = A037682 (n + 1)

end A037682

/-! ## A037682.P2525207408303977128

`∑[xor(5*a(n-1), A153284(n+1))]` with `a(0)=1`
-/

namespace A037682.P2525207408303977128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  Int.xor (5 * f1 (n - 1)) (A153284 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037682.P2525207408303977128

namespace A037682

/-- `∑[xor(5*a(n-1), A153284(n+1))]` -/
def P2525207408303977128.Spec : Prop :=
  ∀ n, P2525207408303977128.a n = A037682 (n + 1)

end A037682

/-! ## A037682.P13974242017126048344

`5*a(n-1)+A001281(n)-A006370(n)+n%4+1` with `a(0)=1`
-/

namespace A037682.P13974242017126048344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  5 * a (n - 1) + (A001281 n - A006370 n + ((n % 4 + 1 : ℕ) : ℤ))

end

end A037682.P13974242017126048344

namespace A037682

/-- `5*a(n-1)+A001281(n)-A006370(n)+n%4+1` -/
def P13974242017126048344.Spec : Prop :=
  ∀ n, P13974242017126048344.a n = A037682 (n + 1)

end A037682

/-!
# A037683: Base-6 digits are, in order, the first n terms of the periodic sequence with initial period 1,0,3,2.

The programs for A037683, the canonical program `A037683.P2203083503947360209` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037683 has offset 1).

The definition of A037683 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 129 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A037683.P2203083503947360209

`and(3, 1-n)+6*a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A037683

/-- `and(3, 1-n)+6*a(n-1)` -/
def P2203083503947360209.Spec : Prop :=
  ∀ n, P2203083503947360209.a n = A037683 (n + 1)

theorem P2203083503947360209.correct : P2203083503947360209.Spec := by
  intro n
  simp only [A037683, Nat.add_sub_cancel]

end A037683

/-! ## A037683.P8451104846085866484

`record[6*a(n-1)+3-n%4]` with `a(0)=1, a(1)=0`
-/

namespace A037683.P8451104846085866484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n f1 =>
  6 * f1 (n - 1) + 3 - ((n % 4 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A037683.P8451104846085866484

namespace A037683

/-- `record[6*a(n-1)+3-n%4]` -/
def P8451104846085866484.Spec : Prop :=
  ∀ n, P8451104846085866484.a n = A037683 (n + 1)

end A037683

/-! ## A037683.P11637769270063653342

`record[6*a(n-1)-(n-or(3, n))]` with `a(0)=1, a(1)=0`
-/

namespace A037683.P11637769270063653342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n f1 =>
  6 * f1 (n - 1) - ((n : ℤ) - (Nat.lor 3 n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A037683.P11637769270063653342

namespace A037683

/-- `record[6*a(n-1)-(n-or(3, n))]` -/
def P11637769270063653342.Spec : Prop :=
  ∀ n, P11637769270063653342.a n = A037683 (n + 1)

end A037683

/-! ## A037683.P18262642495244442710

`A037711(n+1)+A037718(n+1)-A037746(n+1)`
-/

namespace A037683.P18262642495244442710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037711 (n + 1) + (A037718 (n + 1) - A037746 (n + 1))

end

end A037683.P18262642495244442710

namespace A037683

/-- `A037711(n+1)+A037718(n+1)-A037746(n+1)` -/
def P18262642495244442710.Spec : Prop :=
  ∀ n, P18262642495244442710.a n = A037683 (n + 1)

end A037683

/-! ## A037683.P10284887821394805497

`A016244(n)%4+6*a(n-1)` with `a(0)=1`
-/

namespace A037683.P10284887821394805497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.tmod (A016244 n) 4 + 6 * a (n - 1)

end

end A037683.P10284887821394805497

namespace A037683

/-- `A016244(n)%4+6*a(n-1)` -/
def P10284887821394805497.Spec : Prop :=
  ∀ n, P10284887821394805497.a n = A037683 (n + 1)

end A037683

/-!
# A037684: Base 7 digits are, in order, the first n terms of the periodic sequence with initial period 1,0,3,2.

The programs for A037684, the canonical program `A037684.P14194998553466054021` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037684 has offset 1).

The definition of A037684 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 118 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A037684.P14194998553466054021

`A120741(n+1)-A037747(n+1)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A037684

/-- `A120741(n+1)-A037747(n+1)` -/
def P14194998553466054021.Spec : Prop :=
  ∀ n, P14194998553466054021.a n = A037684 (n + 1)

theorem P14194998553466054021.correct : P14194998553466054021.Spec := by
  intro n
  simp only [A037684, Nat.add_sub_cancel]

end A037684

/-! ## A037684.P14231372429266567043

`A037677(n+1)+A037754(n+1)-A037747(n+1)`
-/

namespace A037684.P14231372429266567043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037677 (n + 1) + (A037754 (n + 1) - A037747 (n + 1))

end

end A037684.P14231372429266567043

namespace A037684

/-- `A037677(n+1)+A037754(n+1)-A037747(n+1)` -/
def P14231372429266567043.Spec : Prop :=
  ∀ n, P14231372429266567043.a n = A037684 (n + 1)

end A037684

/-! ## A037684.P10964304595884246179

`A037698(n+1)+A037733(n+1)-A037747(n+1)`
-/

namespace A037684.P10964304595884246179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037698 (n + 1) + (A037733 (n + 1) - A037747 (n + 1))

end

end A037684.P10964304595884246179

namespace A037684

/-- `A037698(n+1)+A037733(n+1)-A037747(n+1)` -/
def P10964304595884246179.Spec : Prop :=
  ∀ n, P10964304595884246179.a n = A037684 (n + 1)

end A037684

/-! ## A037684.P12234816001343649200

`A037705(n+1)+A037726(n+1)-A037747(n+1)`
-/

namespace A037684.P12234816001343649200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037705 (n + 1) + (A037726 (n + 1) - A037747 (n + 1))

end

end A037684.P12234816001343649200

namespace A037684

/-- `A037705(n+1)+A037726(n+1)-A037747(n+1)` -/
def P12234816001343649200.Spec : Prop :=
  ∀ n, P12234816001343649200.a n = A037684 (n + 1)

theorem P12234816001343649200.correct : P12234816001343649200.Spec := by
  intro n
  simp only [A037684, Nat.add_sub_cancel, A037684.P12234816001343649200.a, A037684.P14194998553466054021.a, A037705, A037705.P13871482217024803718.a, A037726, A037726.P10810606024213061310.a, A037747, A037747.P6387786444260834050.a, A120741, A120741.P5110243079029674494.a, A037719, A037719.P11049252179318265615.a, A037761, A037761.P7195593094420718256.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A037684

/-! ## A037684.P4530995898539005270

`A037712(n+1)+A037719(n+1)-A037747(n+1)`
-/

namespace A037684.P4530995898539005270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037712 (n + 1) + (A037719 (n + 1) - A037747 (n + 1))

end

end A037684.P4530995898539005270

namespace A037684

/-- `A037712(n+1)+A037719(n+1)-A037747(n+1)` -/
def P4530995898539005270.Spec : Prop :=
  ∀ n, P4530995898539005270.a n = A037684 (n + 1)

end A037684

/-! ## A037684.P3893481025607649099

`A037698(n+1)+A037761(n+1)-A037796(n+1)`
-/

namespace A037684.P3893481025607649099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037698 (n + 1) + (A037761 (n + 1) - A037796 (n + 1))

end

end A037684.P3893481025607649099

namespace A037684

/-- `A037698(n+1)+A037761(n+1)-A037796(n+1)` -/
def P3893481025607649099.Spec : Prop :=
  ∀ n, P3893481025607649099.a n = A037684 (n + 1)

end A037684

/-!
# A037685: Base 8 digits are, in order, the first n terms of the periodic sequence with initial period 1,0,3,2.

The programs for A037685, the canonical program `A037685.P15733559239927117828` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037685 has offset 1).

The definition of A037685 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A037685.P15733559239927117828

`a(n-1)+or(3, 7*a(n-1))` with `a(0)=1`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A037685

/-- `a(n-1)+or(3, 7*a(n-1))` -/
def P15733559239927117828.Spec : Prop :=
  ∀ n, (P15733559239927117828.a n : ℤ) = A037685 (n + 1)

theorem P15733559239927117828.correct : P15733559239927117828.Spec := by
  intro n
  simp only [A037685, Nat.add_sub_cancel]

end A037685

/-! ## A037685.P5774424049052847057

`xor(3, and(3, n+2)+8*a(n-1))` with `a(0)=1`
-/

namespace A037685.P5774424049052847057
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.xor 3 (Nat.land 3 (n + 2) + 8 * a (n - 1))

end

end A037685.P5774424049052847057

namespace A037685

/-- `xor(3, and(3, n+2)+8*a(n-1))` -/
def P5774424049052847057.Spec : Prop :=
  ∀ n, (P5774424049052847057.a n : ℤ) = A037685 (n + 1)

end A037685

/-! ## A037685.P2746966070907884844

`∑[8*a(n-1)+and(4, n²)-1]` with `a(0)=1`
-/

namespace A037685.P2746966070907884844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  8 * f1 (n - 1) + ((Nat.land 4 (n ^ 2) : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037685.P2746966070907884844

namespace A037685

/-- `∑[8*a(n-1)+and(4, n²)-1]` -/
def P2746966070907884844.Spec : Prop :=
  ∀ n, P2746966070907884844.a n = A037685 (n + 1)

end A037685

/-! ## A037685.P17452145862564450539

`or(8*a(n-1), and(3, a(n-1)-1))` with `a(0)=1`
-/

namespace A037685.P17452145862564450539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.lor (8 * a (n - 1)) (Int.land 3 (a (n - 1) - 1))

end

end A037685.P17452145862564450539

namespace A037685

/-- `or(8*a(n-1), and(3, a(n-1)-1))` -/
def P17452145862564450539.Spec : Prop :=
  ∀ n, P17452145862564450539.a n = A037685 (n + 1)

end A037685

/-! ## A037685.P6345100282140722483

`xor(8*a(n-1), A010873(43*(n+1)-2))` with `a(0)=1`
-/

namespace A037685.P6345100282140722483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.xor (8 * a (n - 1)) (A010873 (43 * (n + 1) - 2))

end

end A037685.P6345100282140722483

namespace A037685

/-- `xor(8*a(n-1), A010873(43*(n+1)-2))` -/
def P6345100282140722483.Spec : Prop :=
  ∀ n, P6345100282140722483.a n = A037685 (n + 1)

end A037685

/-! ## A037685.P11095189591952332839

`xor(A037720(n+1), A037769(n+1))`
-/

namespace A037685.P11095189591952332839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A037720 (n + 1)) (A037769 (n + 1))

end

end A037685.P11095189591952332839

namespace A037685

/-- `xor(A037720(n+1), A037769(n+1))` -/
def P11095189591952332839.Spec : Prop :=
  ∀ n, P11095189591952332839.a n = A037685 (n + 1)

end A037685

/-! ## A037685.P10008801567598432433

`xor(A037741(n+1), A037776(n+1))`
-/

namespace A037685.P10008801567598432433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A037741 (n + 1)) (A037776 (n + 1))

end

end A037685.P10008801567598432433

namespace A037685

/-- `xor(A037741(n+1), A037776(n+1))` -/
def P10008801567598432433.Spec : Prop :=
  ∀ n, P10008801567598432433.a n = A037685 (n + 1)

end A037685

/-! ## A037685.P5815966402092069084

`xor(∑[2*A001018(n)], A037797(n+1))`
-/

namespace A037685.P5815966402092069084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001018 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (∑ j ∈ Finset.range (n + 1), f1 j) (A037797 (n + 1))

end

end A037685.P5815966402092069084

namespace A037685

/-- `xor(∑[2*A001018(n)], A037797(n+1))` -/
def P5815966402092069084.Spec : Prop :=
  ∀ n, P5815966402092069084.a n = A037685 (n + 1)

end A037685

/-!
# A037686: Base 9 digits are, in order, the first n terms of the periodic sequence with initial period 1,0,3,2.

The programs for A037686, the canonical program `A037686.P2747248462982251601` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037686 has offset 1).

The definition of A037686 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A037686.P2747248462982251601

`and(3, 1-n)+9*a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A037686

/-- `and(3, 1-n)+9*a(n-1)` -/
def P2747248462982251601.Spec : Prop :=
  ∀ n, P2747248462982251601.a n = A037686 (n + 1)

theorem P2747248462982251601.correct : P2747248462982251601.Spec := by
  intro n
  simp only [A037686, Nat.add_sub_cancel]

end A037686

/-! ## A037686.P18338584780620425204

`A037700(n+1)+A037735(n+1)-A037749(n+1)`
-/

namespace A037686.P18338584780620425204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037700 (n + 1) + (A037735 (n + 1) - A037749 (n + 1))

end

end A037686.P18338584780620425204

namespace A037686

/-- `A037700(n+1)+A037735(n+1)-A037749(n+1)` -/
def P18338584780620425204.Spec : Prop :=
  ∀ n, P18338584780620425204.a n = A037686 (n + 1)

end A037686

/-! ## A037686.P13831015991749384752

`A037707(n+1)+A037728(n+1)-A037749(n+1)`
-/

namespace A037686.P13831015991749384752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037707 (n + 1) + (A037728 (n + 1) - A037749 (n + 1))

end

end A037686.P13831015991749384752

namespace A037686

/-- `A037707(n+1)+A037728(n+1)-A037749(n+1)` -/
def P13831015991749384752.Spec : Prop :=
  ∀ n, P13831015991749384752.a n = A037686 (n + 1)

end A037686

/-! ## A037686.P6707284965544943682

`A037714(n+1)+A037721(n+1)-A037749(n+1)`
-/

namespace A037686.P6707284965544943682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037714 (n + 1) + (A037721 (n + 1) - A037749 (n + 1))

end

end A037686.P6707284965544943682

namespace A037686

/-- `A037714(n+1)+A037721(n+1)-A037749(n+1)` -/
def P6707284965544943682.Spec : Prop :=
  ∀ n, P6707284965544943682.a n = A037686 (n + 1)

end A037686

/-! ## A037686.P7459766949419170889

`A037721(n+1)+A037728(n+1)-A037763(n+1)`
-/

namespace A037686.P7459766949419170889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037721 (n + 1) + (A037728 (n + 1) - A037763 (n + 1))

end

end A037686.P7459766949419170889

namespace A037686

/-- `A037721(n+1)+A037728(n+1)-A037763(n+1)` -/
def P7459766949419170889.Spec : Prop :=
  ∀ n, P7459766949419170889.a n = A037686 (n + 1)

end A037686

/-! ## A037686.P555684153424754340

`A037700(n+1)+A037763(n+1)-A037798(n+1)`
-/

namespace A037686.P555684153424754340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037700 (n + 1) + (A037763 (n + 1) - A037798 (n + 1))

end

end A037686.P555684153424754340

namespace A037686

/-- `A037700(n+1)+A037763(n+1)-A037798(n+1)` -/
def P555684153424754340.Spec : Prop :=
  ∀ n, P555684153424754340.a n = A037686 (n + 1)

end A037686

/-!
# A037687: Decimal expansion of a(n) is given by the first n terms of the periodic sequence with initial period 1,0,3,2.

The programs for A037687, the canonical program `A037687.P5949606701607296405` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037687 has offset 1).

The definition of A037687 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A037687.P5949606701607296405

`and(3, 1-n)+10*a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A037687

/-- `and(3, 1-n)+10*a(n-1)` -/
def P5949606701607296405.Spec : Prop :=
  ∀ n, P5949606701607296405.a n = A037687 (n + 1)

theorem P5949606701607296405.correct : P5949606701607296405.Spec := by
  intro n
  simp only [A037687, Nat.add_sub_cancel]

end A037687

/-! ## A037687.P15740374087343565760

`A007090(A037681(n+1))`
-/

namespace A037687.P15740374087343565760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007090 (A037681 (n + 1)).toNat

end

end A037687.P15740374087343565760

namespace A037687

/-- `A007090(A037681(n+1))` -/
def P15740374087343565760.Spec : Prop :=
  ∀ n, P15740374087343565760.a n = A037687 (n + 1)

end A037687

/-! ## A037687.P10542559963492690636

`A007090(xor(A037737(n+1), A037772(n+1)))`
-/

namespace A037687.P10542559963492690636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007090 (Int.xor (A037737 (n + 1)) (A037772 (n + 1))).toNat

end

end A037687.P10542559963492690636

namespace A037687

/-- `A007090(xor(A037737(n+1), A037772(n+1)))` -/
def P10542559963492690636.Spec : Prop :=
  ∀ n, P10542559963492690636.a n = A037687 (n + 1)

end A037687

/-!
# A037688: Base-4 digits are, in order, the first n terms of the periodic sequence with initial period 1,2,0,3.

The programs for A037688, the canonical program `A037688.P16747070288390415638` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037688 has offset 1).

The definition of A037688 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A037688.P3101590232288475717

`ogf((1+2x+3x^3)/(1-4x-x^4+4x^5))`
-/

namespace A037688.P3101590232288475717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, 0, 3] [1, -4, 0, 0, -1, 4] n

end

end A037688.P3101590232288475717

namespace A037688

/-- `ogf((1+2x+3x^3)/(1-4x-x^4+4x^5))` -/
def P3101590232288475717.Spec : Prop :=
  ∀ n, P3101590232288475717.a n = A037688 (n + 1)

end A037688

/-! ## A037688.P7811046671239283556

`floor(A037758(n+1)/2)`
-/

namespace A037688.P7811046671239283556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A037758 (n + 1) : ℚ) / 2⌋

end

end A037688.P7811046671239283556

namespace A037688

/-- `floor(A037758(n+1)/2)` -/
def P7811046671239283556.Spec : Prop :=
  ∀ n, P7811046671239283556.a n = A037688 (n + 1)

end A037688

/-! ## A037688.P16747070288390415638

`xor(floor(9*4^(n+1)/17), A037793(n+1))`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A037688

/-- `xor(floor(9*4^(n+1)/17), A037793(n+1))` -/
def P16747070288390415638.Spec : Prop :=
  ∀ n, P16747070288390415638.a n = A037688 (n + 1)

theorem P16747070288390415638.correct : P16747070288390415638.Spec := by
  intro n
  simp only [A037688, Nat.add_sub_cancel]

end A037688

/-! ## A037688.P2990496468934275894

`∑[A164346(n)]-A037737(n+1)`
-/

namespace A037688.P2990496468934275894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164346 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A037737 (n + 1)

end

end A037688.P2990496468934275894

namespace A037688

/-- `∑[A164346(n)]-A037737(n+1)` -/
def P2990496468934275894.Spec : Prop :=
  ∀ n, P2990496468934275894.a n = A037688 (n + 1)

end A037688

/-! ## A037688.P9138514340220103638

`xor(∑[A004171(n)], A037765(n+1))`
-/

namespace A037688.P9138514340220103638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004171 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (∑ j ∈ Finset.range (n + 1), f1 j) (A037765 (n + 1))

end

end A037688.P9138514340220103638

namespace A037688

/-- `xor(∑[A004171(n)], A037765(n+1))` -/
def P9138514340220103638.Spec : Prop :=
  ∀ n, P9138514340220103638.a n = A037688 (n + 1)

end A037688

/-! ## A037688.P4475864485539206092

`xor(A037744(n+1), A037772(n+1))`
-/

namespace A037688.P4475864485539206092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A037744 (n + 1)) (A037772 (n + 1))

end

end A037688.P4475864485539206092

namespace A037688

/-- `xor(A037744(n+1), A037772(n+1))` -/
def P4475864485539206092.Spec : Prop :=
  ∀ n, P4475864485539206092.a n = A037688 (n + 1)

end A037688

/-! ## A037688.P1669902741371626330

`A126646(Δ[n²])-A037737(n+1)`
-/

namespace A037688.P1669902741371626330
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126646 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - A037737 (n + 1)

end

end A037688.P1669902741371626330

namespace A037688

/-- `A126646(Δ[n²])-A037737(n+1)` -/
def P1669902741371626330.Spec : Prop :=
  ∀ n, P1669902741371626330.a n = A037688 (n + 1)

end A037688

/-! ## A037688.P9450416786823177069

`xor(∑[2*A000302(n)], A037765(n+1))`
-/

namespace A037688.P9450416786823177069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000302 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (∑ j ∈ Finset.range (n + 1), f1 j) (A037765 (n + 1))

end

end A037688.P9450416786823177069

namespace A037688

/-- `xor(∑[2*A000302(n)], A037765(n+1))` -/
def P9450416786823177069.Spec : Prop :=
  ∀ n, P9450416786823177069.a n = A037688 (n + 1)

end A037688

/-! ## A037688.P3156329581283774174

`A286674(2*n+1)-A037737(n+1)`
-/

namespace A037688.P3156329581283774174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286674 (2 * n + 1) - A037737 (n + 1)

end

end A037688.P3156329581283774174

namespace A037688

/-- `A286674(2*n+1)-A037737(n+1)` -/
def P3156329581283774174.Spec : Prop :=
  ∀ n, P3156329581283774174.a n = A037688 (n + 1)

end A037688

/-! ## A037688.P15065362997403562665

`A000225(A005843(n+1))-A037737(n+1)`
-/

namespace A037688.P15065362997403562665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (A005843 (n + 1)).toNat - A037737 (n + 1)

end

end A037688.P15065362997403562665

namespace A037688

/-- `A000225(A005843(n+1))-A037737(n+1)` -/
def P15065362997403562665.Spec : Prop :=
  ∀ n, P15065362997403562665.a n = A037688 (n + 1)

end A037688

/-! ## A037688.P7674076727605283519

`A037576(n+1)-and(A037576(n+1), A037737(n+1))`
-/

namespace A037688.P7674076727605283519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037576 (n + 1) - Int.land (A037576 (n + 1)) (A037737 (n + 1))

end

end A037688.P7674076727605283519

namespace A037688

/-- `A037576(n+1)-and(A037576(n+1), A037737(n+1))` -/
def P7674076727605283519.Spec : Prop :=
  ∀ n, P7674076727605283519.a n = A037688 (n + 1)

end A037688

/-! ## A037688.P10480740110905991919

`A037716(n+2)%Δ[A037730(n+1)]`
-/

namespace A037688.P10480740110905991919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037730 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A037716 (n + 2)) (f1 (n + 1) - f1 n)

end

end A037688.P10480740110905991919

namespace A037688

/-- `A037716(n+2)%Δ[A037730(n+1)]` -/
def P10480740110905991919.Spec : Prop :=
  ∀ n, P10480740110905991919.a n = A037688 (n + 1)

end A037688

/-! ## A037688.P10423603316409399000

`A037716(n+1)+Δ[A037716(n+1)-A037730(n+1)]`
-/

namespace A037688.P10423603316409399000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037716 (n + 1) - A037730 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037716 (n + 1) + (f1 (n + 1) - f1 n)

end

end A037688.P10423603316409399000

namespace A037688

/-- `A037716(n+1)+Δ[A037716(n+1)-A037730(n+1)]` -/
def P10423603316409399000.Spec : Prop :=
  ∀ n, P10423603316409399000.a n = A037688 (n + 1)

end A037688

/-!
# A037689: Base 5 digits are, in order, the first n terms of the periodic sequence with initial period 1,2,0,3.

The programs for A037689, the canonical program `A037689.P1371005350633274595` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037689 has offset 1).

The definition of A037689 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 143 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A037689.P1371005350633274595

`∑[xor(5*a(n-1), A010693(n))]` with `a(0)=1`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A037689

/-- `∑[xor(5*a(n-1), A010693(n))]` -/
def P1371005350633274595.Spec : Prop :=
  ∀ n, P1371005350633274595.a n = A037689 (n + 1)

theorem P1371005350633274595.correct : P1371005350633274595.Spec := by
  intro n
  simp only [A037689, Nat.add_sub_cancel]

end A037689

/-! ## A037689.P15529665276040190247

`∑[xor(5*a(n-1), A020639(3*n))]` with `a(0)=1`
-/

namespace A037689.P15529665276040190247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  Int.xor (5 * f1 (n - 1)) (A020639 (3 * n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037689.P15529665276040190247

namespace A037689

/-- `∑[xor(5*a(n-1), A020639(3*n))]` -/
def P15529665276040190247.Spec : Prop :=
  ∀ n, P15529665276040190247.a n = A037689 (n + 1)

end A037689

/-! ## A037689.P15880681797223162621

`∑[xor(5*a(n-1), A070402(2*n+1))]` with `a(0)=1`
-/

namespace A037689.P15880681797223162621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  Int.xor (5 * f1 (n - 1)) (A070402 (2 * n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037689.P15880681797223162621

namespace A037689

/-- `∑[xor(5*a(n-1), A070402(2*n+1))]` -/
def P15880681797223162621.Spec : Prop :=
  ∀ n, P15880681797223162621.a n = A037689 (n + 1)

end A037689

/-! ## A037689.P5176064826318146670

`A037710(n+1)+A037717(n+1)-A037738(n+1)`
-/

namespace A037689.P5176064826318146670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037710 (n + 1) + (A037717 (n + 1) - A037738 (n + 1))

end

end A037689.P5176064826318146670

namespace A037689

/-- `A037710(n+1)+A037717(n+1)-A037738(n+1)` -/
def P5176064826318146670.Spec : Prop :=
  ∀ n, P5176064826318146670.a n = A037689 (n + 1)

theorem P5176064826318146670.correct : P5176064826318146670.Spec := by
  intro n
  simp only [A037689, Nat.add_sub_cancel, A037689.P5176064826318146670.a, A037689.P1371005350633274595.f1, A037689.P1371005350633274595.a, A010693, A010693.P9719559114122647880.a, A037710, A037710.P6721493881183264277.a, A037717, A037717.P184041688980154751.f1, A037717.P184041688980154751.a, A037738, A037738.P15937105399732906321.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A037689

/-! ## A037689.P4745814565328285324

`∑[xor(5*a(n-1), A070402(n²)+1)]` with `a(0)=1`
-/

namespace A037689.P4745814565328285324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  Int.xor (5 * f1 (n - 1)) (A070402 (n ^ 2) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037689.P4745814565328285324

namespace A037689

/-- `∑[xor(5*a(n-1), A070402(n²)+1)]` -/
def P4745814565328285324.Spec : Prop :=
  ∀ n, P4745814565328285324.a n = A037689 (n + 1)

end A037689

/-!
# A037690: Base 6 digits are, in order, the first n terms of the periodic sequence with initial period 1,2,0,3.

The programs for A037690, the canonical program `A037690.P10971792111560011432` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037690 has offset 1).

The definition of A037690 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 128 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A037690.P2053373167796115302

`A037711(n+1)+A037718(n+1)-A037739(n+1)`
-/

namespace A037690.P2053373167796115302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037711 (n + 1) + (A037718 (n + 1) - A037739 (n + 1))

end

end A037690.P2053373167796115302

namespace A037690

/-- `A037711(n+1)+A037718(n+1)-A037739(n+1)` -/
def P2053373167796115302.Spec : Prop :=
  ∀ n, P2053373167796115302.a n = A037690 (n + 1)

theorem P2053373167796115302.correct : P2053373167796115302.Spec := by
  intro n
  simp only [A037690, Nat.add_sub_cancel, A037690.P2053373167796115302.a, A037690.P10971792111560011432.a, A015540, A015540.P6424508890208897512.a, A037711, A037711.P5672376970988767785.f1, A037711.P5672376970988767785.a, A037718, A037718.P5498483775677250731.a, A037739, A037739.P18257991991248789603.a, A037767, A037767.P12662760880017921865.a, A037753, A037753.P10507737516097663728.a, A037746, A037746.P1636314081189769102.a, A037760, A037760.P8631641189815898.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A037690

/-! ## A037690.P13937382182765090722

`A037718(n+2)-Δ[A037732(n+1)]`
-/

namespace A037690.P13937382182765090722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037732 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037718 (n + 2) - (f1 (n + 1) - f1 n)

end

end A037690.P13937382182765090722

namespace A037690

/-- `A037718(n+2)-Δ[A037732(n+1)]` -/
def P13937382182765090722.Spec : Prop :=
  ∀ n, P13937382182765090722.a n = A037690 (n + 1)

end A037690

/-! ## A037690.P10971792111560011432

`A037767(n+1)-2*A015540(n+1)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A037690

/-- `A037767(n+1)-2*A015540(n+1)` -/
def P10971792111560011432.Spec : Prop :=
  ∀ n, P10971792111560011432.a n = A037690 (n + 1)

theorem P10971792111560011432.correct : P10971792111560011432.Spec := by
  intro n
  simp only [A037690, Nat.add_sub_cancel]

end A037690

/-! ## A037690.P3272213375000039112

`A037767(n+1)-A109501(n+2)/3`
-/

namespace A037690.P3272213375000039112
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A037767 (n + 1) : ℚ) - (A109501 (n + 2) : ℚ) / 3

end

end A037690.P3272213375000039112

namespace A037690

/-- `A037767(n+1)-A109501(n+2)/3` -/
def P3272213375000039112.Spec : Prop :=
  ∀ n, P3272213375000039112.a n = (A037690 (n + 1) : ℚ)

end A037690

/-! ## A037690.P10556139914661626217

`Δ[∑[A037718(n+1)]%A037732(n+1)]`
-/

namespace A037690.P10556139914661626217
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037718 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f2 j) (A037732 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A037690.P10556139914661626217

namespace A037690

/-- `Δ[∑[A037718(n+1)]%A037732(n+1)]` -/
def P10556139914661626217.Spec : Prop :=
  ∀ n, P10556139914661626217.a n = A037690 (n + 1)

end A037690

/-! ## A037690.P18272693168614412827

`A037767(n+1)-round(12/7*A000400(n))`
-/

namespace A037690.P18272693168614412827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037767 (n + 1) - SequenceMachineLib.roundAway ((12 : ℚ) / 7 * (A000400 n : ℚ))

end

end A037690.P18272693168614412827

namespace A037690

/-- `A037767(n+1)-round(12/7*A000400(n))` -/
def P18272693168614412827.Spec : Prop :=
  ∀ n, P18272693168614412827.a n = A037690 (n + 1)

end A037690

/-! ## A037690.P14937197099284229477

`A037767(n+1)-2/5*A092166(n+1)`
-/

namespace A037690.P14937197099284229477
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A037767 (n + 1) : ℚ) - (2 : ℚ) / 5 * (A092166 (n + 1) : ℚ)

end

end A037690.P14937197099284229477

namespace A037690

/-- `A037767(n+1)-2/5*A092166(n+1)` -/
def P14937197099284229477.Spec : Prop :=
  ∀ n, P14937197099284229477.a n = (A037690 (n + 1) : ℚ)

end A037690

/-! ## A037690.P9921572108882862925

`A037704(n+1)+A037767(n+1)-A037781(n+1)`
-/

namespace A037690.P9921572108882862925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037704 (n + 1) + (A037767 (n + 1) - A037781 (n + 1))

end

end A037690.P9921572108882862925

namespace A037690

/-- `A037704(n+1)+A037767(n+1)-A037781(n+1)` -/
def P9921572108882862925.Spec : Prop :=
  ∀ n, P9921572108882862925.a n = A037690 (n + 1)

end A037690

/-! ## A037690.P3693520883835577325

`A037767(n+1)-round(A000400(n+2)/21)`
-/

namespace A037690.P3693520883835577325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037767 (n + 1) - SequenceMachineLib.roundAway ((A000400 (n + 2) : ℚ) / 21)

end

end A037690.P3693520883835577325

namespace A037690

/-- `A037767(n+1)-round(A000400(n+2)/21)` -/
def P3693520883835577325.Spec : Prop :=
  ∀ n, P3693520883835577325.a n = A037690 (n + 1)

end A037690

/-!
# A037691: Base-7 digits are, in order, the first n terms of the periodic sequence with initial period 1,2,0,3.

The programs for A037691, the canonical program `A037691.P5639222139270324728` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037691 has offset 1).

The definition of A037691 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 118 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A037691.P5639222139270324728

`A120741(n+1)-A037740(n+1)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A037691

/-- `A120741(n+1)-A037740(n+1)` -/
def P5639222139270324728.Spec : Prop :=
  ∀ n, P5639222139270324728.a n = A037691 (n + 1)

theorem P5639222139270324728.correct : P5639222139270324728.Spec := by
  intro n
  simp only [A037691, Nat.add_sub_cancel]

end A037691

/-! ## A037691.P8815688256142388597

`A037677(n+1)+A037754(n+1)-A037740(n+1)`
-/

namespace A037691.P8815688256142388597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037677 (n + 1) + (A037754 (n + 1) - A037740 (n + 1))

end

end A037691.P8815688256142388597

namespace A037691

/-- `A037677(n+1)+A037754(n+1)-A037740(n+1)` -/
def P8815688256142388597.Spec : Prop :=
  ∀ n, P8815688256142388597.a n = A037691 (n + 1)

end A037691

/-! ## A037691.P17947732766069589274

`A037684(n+1)+A037747(n+1)-A037740(n+1)`
-/

namespace A037691.P17947732766069589274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037684 (n + 1) + (A037747 (n + 1) - A037740 (n + 1))

end

end A037691.P17947732766069589274

namespace A037691

/-- `A037684(n+1)+A037747(n+1)-A037740(n+1)` -/
def P17947732766069589274.Spec : Prop :=
  ∀ n, P17947732766069589274.a n = A037691 (n + 1)

theorem P17947732766069589274.correct : P17947732766069589274.Spec := by
  intro n
  simp only [A037691, Nat.add_sub_cancel, A037691.P17947732766069589274.a, A037691.P5639222139270324728.a, A037684, A037684.P14194998553466054021.a, A037740, A037740.P194235609448009702.f2, A037740.P194235609448009702.f1, A037740.P194235609448009702.a, A037747, A037747.P6387786444260834050.a, A120741, A120741.P5110243079029674494.a, A037698, A037698.P13802440831282890987.a, A037712, A037712.P2492734325855298356.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A037691

/-! ## A037691.P12303908824759586764

`A037705(n+1)+A037726(n+1)-A037740(n+1)`
-/

namespace A037691.P12303908824759586764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037705 (n + 1) + (A037726 (n + 1) - A037740 (n + 1))

end

end A037691.P12303908824759586764

namespace A037691

/-- `A037705(n+1)+A037726(n+1)-A037740(n+1)` -/
def P12303908824759586764.Spec : Prop :=
  ∀ n, P12303908824759586764.a n = A037691 (n + 1)

theorem P12303908824759586764.correct : P12303908824759586764.Spec := by
  intro n
  simp only [A037691, Nat.add_sub_cancel, A037691.P12303908824759586764.a, A037691.P5639222139270324728.a, A037705, A037705.P13871482217024803718.a, A037726, A037726.P10810606024213061310.a, A037740, A037740.P194235609448009702.f2, A037740.P194235609448009702.f1, A037740.P194235609448009702.a, A120741, A120741.P5110243079029674494.a, A037698, A037698.P13802440831282890987.a, A037712, A037712.P2492734325855298356.a, A037719, A037719.P11049252179318265615.a, A037747, A037747.P6387786444260834050.a, A037761, A037761.P7195593094420718256.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A037691

/-! ## A037691.P3770448919031914050

`A037712(n+1)+A037719(n+1)-A037740(n+1)`
-/

namespace A037691.P3770448919031914050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037712 (n + 1) + (A037719 (n + 1) - A037740 (n + 1))

end

end A037691.P3770448919031914050

namespace A037691

/-- `A037712(n+1)+A037719(n+1)-A037740(n+1)` -/
def P3770448919031914050.Spec : Prop :=
  ∀ n, P3770448919031914050.a n = A037691 (n + 1)

end A037691

/-! ## A037691.P2998628902740878254

`A037705(n+1)+A037768(n+1)-A037782(n+1)`
-/

namespace A037691.P2998628902740878254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037705 (n + 1) + (A037768 (n + 1) - A037782 (n + 1))

end

end A037691.P2998628902740878254

namespace A037691

/-- `A037705(n+1)+A037768(n+1)-A037782(n+1)` -/
def P2998628902740878254.Spec : Prop :=
  ∀ n, P2998628902740878254.a n = A037691 (n + 1)

end A037691

/-!
# A037692: Base 8 digits are, in order, the first n terms of the periodic sequence with initial period 1,2,0,3.

The programs for A037692, the canonical program `A037692.P14883960575083069963` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037692 has offset 1).

The definition of A037692 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A037692.P11940423160712073557

`xor(A037720(n+1), A037797(n+1))`
-/

namespace A037692.P11940423160712073557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A037720 (n + 1)) (A037797 (n + 1))

end

end A037692.P11940423160712073557

namespace A037692

/-- `xor(A037720(n+1), A037797(n+1))` -/
def P11940423160712073557.Spec : Prop :=
  ∀ n, P11940423160712073557.a n = A037692 (n + 1)

end A037692

/-! ## A037692.P14883960575083069963

`xor(A037748(n+1), A037776(n+1))`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A037692

/-- `xor(A037748(n+1), A037776(n+1))` -/
def P14883960575083069963.Spec : Prop :=
  ∀ n, P14883960575083069963.a n = A037692 (n + 1)

theorem P14883960575083069963.correct : P14883960575083069963.Spec := by
  intro n
  simp only [A037692, Nat.add_sub_cancel]

end A037692

/-! ## A037692.P13357354852112176023

`xor(∑[2*A001018(n)], A037769(n+1))`
-/

namespace A037692.P13357354852112176023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001018 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (∑ j ∈ Finset.range (n + 1), f1 j) (A037769 (n + 1))

end

end A037692.P13357354852112176023

namespace A037692

/-- `xor(∑[2*A001018(n)], A037769(n+1))` -/
def P13357354852112176023.Spec : Prop :=
  ∀ n, P13357354852112176023.a n = A037692 (n + 1)

end A037692

/-! ## A037692.P15235179834754281176

`A037706(n+1)+A037727(n+1)-A037741(n+1)`
-/

namespace A037692.P15235179834754281176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037706 (n + 1) + (A037727 (n + 1) - A037741 (n + 1))

end

end A037692.P15235179834754281176

namespace A037692

/-- `A037706(n+1)+A037727(n+1)-A037741(n+1)` -/
def P15235179834754281176.Spec : Prop :=
  ∀ n, P15235179834754281176.a n = A037692 (n + 1)

end A037692

/-! ## A037692.P8976416220654951844

`A037713(n+1)+A037720(n+1)-A037741(n+1)`
-/

namespace A037692.P8976416220654951844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037713 (n + 1) + (A037720 (n + 1) - A037741 (n + 1))

end

end A037692.P8976416220654951844

namespace A037692

/-- `A037713(n+1)+A037720(n+1)-A037741(n+1)` -/
def P8976416220654951844.Spec : Prop :=
  ∀ n, P8976416220654951844.a n = A037692 (n + 1)

end A037692

/-! ## A037692.P13417300228659888513

`and(A037580(n+1), A037783(n+2))`
-/

namespace A037692.P13417300228659888513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A037580 (n + 1)) (A037783 (n + 2))

end

end A037692.P13417300228659888513

namespace A037692

/-- `and(A037580(n+1), A037783(n+2))` -/
def P13417300228659888513.Spec : Prop :=
  ∀ n, P13417300228659888513.a n = A037692 (n + 1)

end A037692

/-!
# A037693: Base 9 digits are, in order, the first n terms of the periodic sequence with initial period 1,2,0,3.

The programs for A037693, the canonical program `A037693.P16096541330953735176` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037693 has offset 1).

The definition of A037693 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A037693.P9194468489294228058

`∑[xor(9*a(n-1), A020639(3*n))]` with `a(0)=1`
-/

namespace A037693.P9194468489294228058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  Int.xor (9 * f1 (n - 1)) (A020639 (3 * n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037693.P9194468489294228058

namespace A037693

/-- `∑[xor(9*a(n-1), A020639(3*n))]` -/
def P9194468489294228058.Spec : Prop :=
  ∀ n, P9194468489294228058.a n = A037693 (n + 1)

end A037693

/-! ## A037693.P16219781754159505943

`A037714(n+1)+A037721(n+1)-A037742(n+1)`
-/

namespace A037693.P16219781754159505943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037714 (n + 1) + (A037721 (n + 1) - A037742 (n + 1))

end

end A037693.P16219781754159505943

namespace A037693

/-- `A037714(n+1)+A037721(n+1)-A037742(n+1)` -/
def P16219781754159505943.Spec : Prop :=
  ∀ n, P16219781754159505943.a n = A037693 (n + 1)

theorem P16219781754159505943.correct : P16219781754159505943.Spec := by
  intro n
  simp only [A037693, Nat.add_sub_cancel, A037693.P16219781754159505943.a, A037693.P16096541330953735176.a, A037714, A037714.P2051866495972747522.a, A037721, A037721.P3815079518860697951.f1, A037721.P3815079518860697951.a, A037735, A037735.P4958946619826733078.f1, A037735.P4958946619826733078.a, A037742, A037742.P4324914929506903484.a, A037756, A037756.P3057694834929139515.f1, A037756.P3057694834929139515.a, A037798, A037798.P5782112598674630615.a, A010684, A010684.P11440423886746696901.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A037693

/-! ## A037693.P5906995302089535238

`A037707(n+1)+A037770(n+1)-A037784(n+1)`
-/

namespace A037693.P5906995302089535238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037707 (n + 1) + (A037770 (n + 1) - A037784 (n + 1))

end

end A037693.P5906995302089535238

namespace A037693

/-- `A037707(n+1)+A037770(n+1)-A037784(n+1)` -/
def P5906995302089535238.Spec : Prop :=
  ∀ n, P5906995302089535238.a n = A037693 (n + 1)

end A037693

/-! ## A037693.P13093218323301572819

`A037721(n+1)+A037756(n+1)-A037784(n+1)`
-/

namespace A037693.P13093218323301572819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037721 (n + 1) + (A037756 (n + 1) - A037784 (n + 1))

end

end A037693.P13093218323301572819

namespace A037693

/-- `A037721(n+1)+A037756(n+1)-A037784(n+1)` -/
def P13093218323301572819.Spec : Prop :=
  ∀ n, P13093218323301572819.a n = A037693 (n + 1)

end A037693

/-! ## A037693.P16096541330953735176

`A037735(n+1)+A037756(n+1)-A037798(n+1)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A037693

/-- `A037735(n+1)+A037756(n+1)-A037798(n+1)` -/
def P16096541330953735176.Spec : Prop :=
  ∀ n, P16096541330953735176.a n = A037693 (n + 1)

theorem P16096541330953735176.correct : P16096541330953735176.Spec := by
  intro n
  simp only [A037693, Nat.add_sub_cancel]

end A037693

/-! ## A037693.P1505182042064874400

`Δ[∑[A037721(n+1)]-A037735(n+1)]`
-/

namespace A037693.P1505182042064874400
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037721 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A037735 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A037693.P1505182042064874400

namespace A037693

/-- `Δ[∑[A037721(n+1)]-A037735(n+1)]` -/
def P1505182042064874400.Spec : Prop :=
  ∀ n, P1505182042064874400.a n = A037693 (n + 1)

end A037693

/-!
# A037694: Decimal expansion of a(n) is given by the first n terms of the periodic sequence with initial period 1,2,0,3.

The programs for A037694, there is no canonical definition to state claims against.
-/

/-! ## A037694.P17283415646893707240

`A007090(A037688(n+1))`
-/

namespace A037694.P17283415646893707240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007090 (A037688 (n + 1)).toNat

end

end A037694.P17283415646893707240

/-! ## A037694.P935761364351364505

`A007090(xor(A037744(n+1), A037772(n+1)))`
-/

namespace A037694.P935761364351364505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007090 (Int.xor (A037744 (n + 1)) (A037772 (n + 1))).toNat

end

end A037694.P935761364351364505

/-!
# A037695: Base-4 digits are, in order, the first n terms of the periodic sequence with initial period 1,2,3,0.

The programs for A037695, the canonical program `A037695.P1505977341628650606` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037695 has offset 1).

The definition of A037695 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A037695.anchor (n : ℕ) (hn : 1 ≤ n) : A037695 n = ((Nat.ofDigits 4 ((List.range n).reverse.map fun i => [1, 2, 3, 0].getD (i % 4) 0) : ℕ) : ℤ)` in `Proof.A037.A037695`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A037695.P13891536297717397225

`ogf((1+2x+3x^2)/(1-4x-x^4+4x^5))`
-/

namespace A037695.P13891536297717397225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, 3] [1, -4, 0, 0, -1, 4] n

end

end A037695.P13891536297717397225

namespace A037695

/-- `ogf((1+2x+3x^2)/(1-4x-x^4+4x^5))` -/
def P13891536297717397225.Spec : Prop :=
  ∀ n, P13891536297717397225.a n = A037695 (n + 1)

end A037695

/-! ## A037695.P1505977341628650606

`(n+1)%4+4*a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A037695

/-- `(n+1)%4+4*a(n-1)` -/
def P1505977341628650606.Spec : Prop :=
  ∀ n, (P1505977341628650606.a n : ℤ) = A037695 (n + 1)

theorem P1505977341628650606.correct : P1505977341628650606.Spec := by
  intro n
  simp only [A037695, Nat.add_sub_cancel]

end A037695

/-! ## A037695.P14359545567240215771

`and(3, n+1)+4*a(n-1)` with `a(0)=1`
-/

namespace A037695.P14359545567240215771
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.land 3 (n + 1) + 4 * a (n - 1)

end

end A037695.P14359545567240215771

namespace A037695

/-- `and(3, n+1)+4*a(n-1)` -/
def P14359545567240215771.Spec : Prop :=
  ∀ n, (P14359545567240215771.a n : ℤ) = A037695 (n + 1)

end A037695

/-! ## A037695.P10633245356264585460

`or(4*a(n-1), and(3, n-3))` with `a(0)=1`
-/

namespace A037695.P10633245356264585460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.lor (4 * a (n - 1)) (Int.land 3 ((n : ℤ) - 3))

end

end A037695.P10633245356264585460

namespace A037695

/-- `or(4*a(n-1), and(3, n-3))` -/
def P10633245356264585460.Spec : Prop :=
  ∀ n, P10633245356264585460.a n = A037695 (n + 1)

end A037695

/-! ## A037695.P9557746785398287853

`xor(4*a(n-1), and(3, n-3))` with `a(0)=1`
-/

namespace A037695.P9557746785398287853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.xor (4 * a (n - 1)) (Int.land 3 ((n : ℤ) - 3))

end

end A037695.P9557746785398287853

namespace A037695

/-- `xor(4*a(n-1), and(3, n-3))` -/
def P9557746785398287853.Spec : Prop :=
  ∀ n, P9557746785398287853.a n = A037695 (n + 1)

end A037695

/-! ## A037695.P8214829434744032306

`5*a(n-1)-or(3, a(n-1)-3)` with `a(0)=1`
-/

namespace A037695.P8214829434744032306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  5 * a (n - 1) - Int.lor 3 (a (n - 1) - 3)

end

end A037695.P8214829434744032306

namespace A037695

/-- `5*a(n-1)-or(3, a(n-1)-3)` -/
def P8214829434744032306.Spec : Prop :=
  ∀ n, P8214829434744032306.a n = A037695 (n + 1)

end A037695

/-! ## A037695.P4514377094240447963

`floor(A037779(n+1)/2)`
-/

namespace A037695.P4514377094240447963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A037779 (n + 1) : ℚ) / 2⌋

end

end A037695.P4514377094240447963

namespace A037695

/-- `floor(A037779(n+1)/2)` -/
def P4514377094240447963.Spec : Prop :=
  ∀ n, P4514377094240447963.a n = A037695 (n + 1)

end A037695

/-! ## A037695.P14107695450236069940

`xor(a(n-1), ∑[A255465(n)])` with `a(0)=1`
-/

namespace A037695.P14107695450236069940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255465 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.xor (a (n - 1)) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A037695.P14107695450236069940

namespace A037695

/-- `xor(a(n-1), ∑[A255465(n)])` -/
def P14107695450236069940.Spec : Prop :=
  ∀ n, P14107695450236069940.a n = A037695 (n + 1)

end A037695

/-! ## A037695.P8086965693843400747

`xor(a(n-1), A037576(n+1))` with `a(0)=1`
-/

namespace A037695.P8086965693843400747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.xor (a (n - 1)) (A037576 (n + 1))

end

end A037695.P8086965693843400747

namespace A037695

/-- `xor(a(n-1), A037576(n+1))` -/
def P8086965693843400747.Spec : Prop :=
  ∀ n, P8086965693843400747.a n = A037695 (n + 1)

end A037695

/-! ## A037695.P15027016220082263053

`xor(A037681(n+1), A117616(n))`
-/

namespace A037695.P15027016220082263053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A037681 (n + 1)) (A117616 n)

end

end A037695.P15027016220082263053

namespace A037695

/-- `xor(A037681(n+1), A117616(n))` -/
def P15027016220082263053.Spec : Prop :=
  ∀ n, P15027016220082263053.a n = A037695 (n + 1)

end A037695

/-! ## A037695.P6801397646058363845

`xor(A037583(n+1), A037744(n+1))`
-/

namespace A037695.P6801397646058363845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A037583 (n + 1)) (A037744 (n + 1))

end

end A037695.P6801397646058363845

namespace A037695

/-- `xor(A037583(n+1), A037744(n+1))` -/
def P6801397646058363845.Spec : Prop :=
  ∀ n, P6801397646058363845.a n = A037695 (n + 1)

end A037695

/-! ## A037695.P6203816947024376485

`xor(A037723(n+1), A037786(n+1))`
-/

namespace A037695.P6203816947024376485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A037723 (n + 1)) (A037786 (n + 1))

end

end A037695.P6203816947024376485

namespace A037695

/-- `xor(A037723(n+1), A037786(n+1))` -/
def P6203816947024376485.Spec : Prop :=
  ∀ n, P6203816947024376485.a n = A037695 (n + 1)

end A037695

/-! ## A037695.P17897821518872955064

`xor(A037751(n+1), A037779(n+1))`
-/

namespace A037695.P17897821518872955064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A037751 (n + 1)) (A037779 (n + 1))

end

end A037695.P17897821518872955064

namespace A037695

/-- `xor(A037751(n+1), A037779(n+1))` -/
def P17897821518872955064.Spec : Prop :=
  ∀ n, P17897821518872955064.a n = A037695 (n + 1)

end A037695

/-! ## A037695.P3931711644800746309

`xor(A037793(n+1), A117616(n+1))`
-/

namespace A037695.P3931711644800746309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A037793 (n + 1)) (A117616 (n + 1))

end

end A037695.P3931711644800746309

namespace A037695

/-- `xor(A037793(n+1), A117616(n+1))` -/
def P3931711644800746309.Spec : Prop :=
  ∀ n, P3931711644800746309.a n = A037695 (n + 1)

end A037695

/-!
# A037696: Base 5 digits are, in order, the first n terms of the periodic sequence with initial period 1,2,3,0.

The programs for A037696, the canonical program `A037696.P7838453811284979200` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037696 has offset 1).

The definition of A037696 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A037696.anchor (n : ℕ) (hn : 1 ≤ n) : A037696 n = ((Nat.ofDigits 5 ((List.range n).reverse.map fun i => [1, 2, 3, 0].getD (i % 4) 0) : ℕ) : ℤ)` in `Proof.A037.A037696`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A037696.P7838453811284979200

`(n+1)%4+5*a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A037696

/-- `(n+1)%4+5*a(n-1)` -/
def P7838453811284979200.Spec : Prop :=
  ∀ n, (P7838453811284979200.a n : ℤ) = A037696 (n + 1)

theorem P7838453811284979200.correct : P7838453811284979200.Spec := by
  intro n
  simp only [A037696, Nat.add_sub_cancel]

end A037696

/-! ## A037696.P18024781129706687242

`and(3, n+1)+5*a(n-1)` with `a(0)=1`
-/

namespace A037696.P18024781129706687242
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.land 3 (n + 1) + 5 * a (n - 1)

end

end A037696.P18024781129706687242

namespace A037696

/-- `and(3, n+1)+5*a(n-1)` -/
def P18024781129706687242.Spec : Prop :=
  ∀ n, (P18024781129706687242.a n : ℤ) = A037696 (n + 1)

end A037696

/-! ## A037696.P11599508550548816855

`5*a(n-1)-xor(n, -1)%4` with `a(0)=1`
-/

namespace A037696.P11599508550548816855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  5 * a (n - 1) - Int.tmod (Int.xor (n : ℤ) (-1)) 4

end

end A037696.P11599508550548816855

namespace A037696

/-- `5*a(n-1)-xor(n, -1)%4` -/
def P11599508550548816855.Spec : Prop :=
  ∀ n, P11599508550548816855.a n = A037696 (n + 1)

end A037696

/-! ## A037696.P9792810424792092579

`∑[xor(5*a(n-1), A010684(n))]` with `a(0)=1`
-/

namespace A037696.P9792810424792092579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  Int.xor (5 * f1 (n - 1)) (A010684 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037696.P9792810424792092579

namespace A037696

/-- `∑[xor(5*a(n-1), A010684(n))]` -/
def P9792810424792092579.Spec : Prop :=
  ∀ n, P9792810424792092579.a n = A037696 (n + 1)

end A037696

/-! ## A037696.P7327101920871248955

`∑[xor(5*a(n-1), A073575(3*n+1))]` with `a(0)=1`
-/

namespace A037696.P7327101920871248955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  Int.xor (5 * f1 (n - 1)) (A073575 (3 * n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037696.P7327101920871248955

namespace A037696

/-- `∑[xor(5*a(n-1), A073575(3*n+1))]` -/
def P7327101920871248955.Spec : Prop :=
  ∀ n, P7327101920871248955.a n = A037696 (n + 1)

end A037696

/-! ## A037696.P11632013422937355939

`A037710(n+1)+A037717(n+1)-A037731(n+1)`
-/

namespace A037696.P11632013422937355939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037710 (n + 1) + (A037717 (n + 1) - A037731 (n + 1))

end

end A037696.P11632013422937355939

namespace A037696

/-- `A037710(n+1)+A037717(n+1)-A037731(n+1)` -/
def P11632013422937355939.Spec : Prop :=
  ∀ n, P11632013422937355939.a n = A037696 (n + 1)

end A037696

/-!
# A037697: Base 6 digits are, in order, the first n terms of the periodic sequence with initial period 1,2,3,0.

The programs for A037697, the canonical program `A037697.P8112122253678047784` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037697 has offset 1).

The definition of A037697 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A037697.anchor (n : ℕ) (hn : 1 ≤ n) : A037697 n = ((Nat.ofDigits 6 ((List.range n).reverse.map fun i => [1, 2, 3, 0].getD (i % 4) 0) : ℕ) : ℤ)` in `Proof.A037.A037697`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A037697.P8112122253678047784

`(n+1)%4+6*a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A037697

/-- `(n+1)%4+6*a(n-1)` -/
def P8112122253678047784.Spec : Prop :=
  ∀ n, (P8112122253678047784.a n : ℤ) = A037697 (n + 1)

theorem P8112122253678047784.correct : P8112122253678047784.Spec := by
  intro n
  simp only [A037697, Nat.add_sub_cancel]

end A037697

/-! ## A037697.P4141544851023177961

`and(3, n+1)+6*a(n-1)` with `a(0)=1`
-/

namespace A037697.P4141544851023177961
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.land 3 (n + 1) + 6 * a (n - 1)

end

end A037697.P4141544851023177961

namespace A037697

/-- `and(3, n+1)+6*a(n-1)` -/
def P4141544851023177961.Spec : Prop :=
  ∀ n, (P4141544851023177961.a n : ℤ) = A037697 (n + 1)

end A037697

/-! ## A037697.P6685529388418558336

`or(3, a(n-1))+5*a(n-1)` with `a(0)=1`
-/

namespace A037697.P6685529388418558336
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.lor 3 (a (n - 1)) + 5 * a (n - 1)

end

end A037697.P6685529388418558336

namespace A037697

/-- `or(3, a(n-1))+5*a(n-1)` -/
def P6685529388418558336.Spec : Prop :=
  ∀ n, (P6685529388418558336.a n : ℤ) = A037697 (n + 1)

end A037697

/-! ## A037697.P16178127136330251877

`or(3, a(n-1))-5*round(-a(n-1))` with `a(0)=1`

`round` is left out, it is the identity on integers.
-/

namespace A037697.P16178127136330251877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.lor 3 (a (n - 1)) - 5 * (-a (n - 1))

end

end A037697.P16178127136330251877

namespace A037697

/-- `or(3, a(n-1))-5*round(-a(n-1))` -/
def P16178127136330251877.Spec : Prop :=
  ∀ n, P16178127136330251877.a n = A037697 (n + 1)

end A037697

/-! ## A037697.P3490042884336721651

`A037711(n+1)+A037718(n+1)-A037732(n+1)`
-/

namespace A037697.P3490042884336721651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037711 (n + 1) + (A037718 (n + 1) - A037732 (n + 1))

end

end A037697.P3490042884336721651

namespace A037697

/-- `A037711(n+1)+A037718(n+1)-A037732(n+1)` -/
def P3490042884336721651.Spec : Prop :=
  ∀ n, P3490042884336721651.a n = A037697 (n + 1)

end A037697

/-!
# A037698: Base 7 digits are, in order, the first n terms of the periodic sequence with initial period 1,2,3,0.

The programs for A037698, the canonical program `A037698.P13802440831282890987` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037698 has offset 1).

The definition of A037698 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A037698.anchor (n : ℕ) (hn : 1 ≤ n) : A037698 n = ((Nat.ofDigits 7 ((List.range n).reverse.map fun i => [1, 2, 3, 0].getD (i % 4) 0) : ℕ) : ℤ)` in `Proof.A037.A037698`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A037698.P13802440831282890987

`(n+1)%4+7*a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A037698

/-- `(n+1)%4+7*a(n-1)` -/
def P13802440831282890987.Spec : Prop :=
  ∀ n, (P13802440831282890987.a n : ℤ) = A037698 (n + 1)

theorem P13802440831282890987.correct : P13802440831282890987.Spec := by
  intro n
  simp only [A037698, Nat.add_sub_cancel]

end A037698

/-! ## A037698.P7590116670756868553

`and(3, n+1)+7*a(n-1)` with `a(0)=1`
-/

namespace A037698.P7590116670756868553
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.land 3 (n + 1) + 7 * a (n - 1)

end

end A037698.P7590116670756868553

namespace A037698

/-- `and(3, n+1)+7*a(n-1)` -/
def P7590116670756868553.Spec : Prop :=
  ∀ n, (P7590116670756868553.a n : ℤ) = A037698 (n + 1)

end A037698

/-! ## A037698.P1614663433470421787

`7*a(n-1)-(n-Δ[n²])%4` with `a(0)=1`
-/

namespace A037698.P1614663433470421787
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  7 * a (n - 1) - Int.tmod ((n : ℤ) - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))) 4

end

end A037698.P1614663433470421787

namespace A037698

/-- `7*a(n-1)-(n-Δ[n²])%4` -/
def P1614663433470421787.Spec : Prop :=
  ∀ n, P1614663433470421787.a n = A037698 (n + 1)

end A037698

/-! ## A037698.P15155804654532975921

`A120741(n+1)-A037733(n+1)`
-/

namespace A037698.P15155804654532975921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120741 (n + 1) - A037733 (n + 1)

end

end A037698.P15155804654532975921

namespace A037698

/-- `A120741(n+1)-A037733(n+1)` -/
def P15155804654532975921.Spec : Prop :=
  ∀ n, P15155804654532975921.a n = A037698 (n + 1)

end A037698

/-! ## A037698.P1469875190265536402

`∑[A037740(n+1)-A037677(n+1)]`
-/

namespace A037698.P1469875190265536402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037740 (n + 1) - A037677 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037698.P1469875190265536402

namespace A037698

/-- `∑[A037740(n+1)-A037677(n+1)]` -/
def P1469875190265536402.Spec : Prop :=
  ∀ n, P1469875190265536402.a n = A037698 (n + 1)

end A037698

/-! ## A037698.P5386349464829390156

`∑[A037754(n+1)-A037691(n+1)]`
-/

namespace A037698.P5386349464829390156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037754 (n + 1) - A037691 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037698.P5386349464829390156

namespace A037698

/-- `∑[A037754(n+1)-A037691(n+1)]` -/
def P5386349464829390156.Spec : Prop :=
  ∀ n, P5386349464829390156.a n = A037698 (n + 1)

end A037698

/-!
# A037699: Base 8 digits are, in order, the first n terms of the periodic sequence with initial period 1,2,3,0.

The programs for A037699, the canonical program `A037699.P4637923517044693852` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037699 has offset 1).

The definition of A037699 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A037699.anchor (n : ℕ) (hn : 1 ≤ n) : A037699 n = ((Nat.ofDigits 8 ((List.range n).reverse.map fun i => [1, 2, 3, 0].getD (i % 4) 0) : ℕ) : ℤ)` in `Proof.A037.A037699`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A037699.P4637923517044693852

`(n+1)%4+8*a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A037699

/-- `(n+1)%4+8*a(n-1)` -/
def P4637923517044693852.Spec : Prop :=
  ∀ n, (P4637923517044693852.a n : ℤ) = A037699 (n + 1)

theorem P4637923517044693852.correct : P4637923517044693852.Spec := by
  intro n
  simp only [A037699, Nat.add_sub_cancel]

end A037699

/-! ## A037699.P957648444145902752

`and(3, n+1)+8*a(n-1)` with `a(0)=1`
-/

namespace A037699.P957648444145902752
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.land 3 (n + 1) + 8 * a (n - 1)

end

end A037699.P957648444145902752

namespace A037699

/-- `and(3, n+1)+8*a(n-1)` -/
def P957648444145902752.Spec : Prop :=
  ∀ n, (P957648444145902752.a n : ℤ) = A037699 (n + 1)

end A037699

/-! ## A037699.P4660284098972020305

`xor(a(n-1), A037580(n+1))` with `a(0)=1`
-/

namespace A037699.P4660284098972020305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.xor (a (n - 1)) (A037580 (n + 1))

end

end A037699.P4660284098972020305

namespace A037699

/-- `xor(a(n-1), A037580(n+1))` -/
def P4660284098972020305.Spec : Prop :=
  ∀ n, P4660284098972020305.a n = A037699 (n + 1)

end A037699

/-! ## A037699.P5728074834480692434

`or(8*a(n-1), A010873(n+1))` with `a(0)=1`
-/

namespace A037699.P5728074834480692434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.lor (8 * a (n - 1)) (A010873 (n + 1))

end

end A037699.P5728074834480692434

namespace A037699

/-- `or(8*a(n-1), A010873(n+1))` -/
def P5728074834480692434.Spec : Prop :=
  ∀ n, P5728074834480692434.a n = A037699 (n + 1)

end A037699

/-! ## A037699.P6696003696536363065

`xor(A037727(n+1), A037790(n+1))`
-/

namespace A037699.P6696003696536363065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A037727 (n + 1)) (A037790 (n + 1))

end

end A037699.P6696003696536363065

namespace A037699

/-- `xor(A037727(n+1), A037790(n+1))` -/
def P6696003696536363065.Spec : Prop :=
  ∀ n, P6696003696536363065.a n = A037699 (n + 1)

end A037699

/-! ## A037699.P10142053344012814047

`xor(A037755(n+1), A037783(n+1))`
-/

namespace A037699.P10142053344012814047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A037755 (n + 1)) (A037783 (n + 1))

end

end A037699.P10142053344012814047

namespace A037699

/-- `xor(A037755(n+1), A037783(n+1))` -/
def P10142053344012814047.Spec : Prop :=
  ∀ n, P10142053344012814047.a n = A037699 (n + 1)

end A037699

/-! ## A037699.P5404704800692338579

`xor(A037769(n+2), A037776(n+2))`
-/

namespace A037699.P5404704800692338579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A037769 (n + 2)) (A037776 (n + 2))

end

end A037699.P5404704800692338579

namespace A037699

/-- `xor(A037769(n+2), A037776(n+2))` -/
def P5404704800692338579.Spec : Prop :=
  ∀ n, P5404704800692338579.a n = A037699 (n + 1)

end A037699

