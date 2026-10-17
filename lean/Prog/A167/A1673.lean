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
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
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
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
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
# A167300: Totally multiplicative sequence with a(p) = 8*(p-2) for prime p.

The programs for A167300, the canonical program `A167300.P9508345572658895137` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A167300 has offset 1).

The definition of A167300 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A165829, A166586, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A167300.P9508345572658895137

`A165829(n+1)*A166586(n+1)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A167300

/-- `A165829(n+1)*A166586(n+1)` -/
def P9508345572658895137.Spec : Prop :=
  ∀ n, P9508345572658895137.a n = A167300 (n + 1)

theorem P9508345572658895137.correct : P9508345572658895137.Spec := by
  intro n
  simp only [A167300, Nat.add_sub_cancel]

end A167300

/-! ## A167300.P4244962030764092236

`8^A001222(n+1)*A166586(n+1)`
-/

namespace A167300.P4244962030764092236
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (8 : ℚ) ^ (A001222 (n + 1) : ℤ) * (A166586 (n + 1) : ℚ)

end

end A167300.P4244962030764092236

namespace A167300

/-- `8^A001222(n+1)*A166586(n+1)` -/
def P4244962030764092236.Spec : Prop :=
  ∀ n, P4244962030764092236.a n = (A167300 (n + 1) : ℚ)

end A167300

/-! ## A167300.P12113031917127159312

`A061142(n+1)*A167296(n+1)`
-/

namespace A167300.P12113031917127159312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061142 (n + 1) * A167296 (n + 1)

end

end A167300.P12113031917127159312

namespace A167300

/-- `A061142(n+1)*A167296(n+1)` -/
def P12113031917127159312.Spec : Prop :=
  ∀ n, P12113031917127159312.a n = A167300 (n + 1)

end A167300

/-! ## A167300.P687004095366564420

`A165825(n+1)*A167294(n+1)`
-/

namespace A167300.P687004095366564420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165825 (n + 1) * A167294 (n + 1)

end

end A167300.P687004095366564420

namespace A167300

/-- `A165825(n+1)*A167294(n+1)` -/
def P687004095366564420.Spec : Prop :=
  ∀ n, P687004095366564420.a n = A167300 (n + 1)

end A167300

/-! ## A167300.P12254031621266546831

`A061142(n+1)²*A167294(n+1)`
-/

namespace A167300.P12254031621266546831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061142 (n + 1) ^ 2 * A167294 (n + 1)

end

end A167300.P12254031621266546831

namespace A167300

/-- `A061142(n+1)²*A167294(n+1)` -/
def P12254031621266546831.Spec : Prop :=
  ∀ n, P12254031621266546831.a n = A167300 (n + 1)

end A167300

/-! ## A167300.P2377731168363013493

`A167294(A079065(n+1))²*A167294(n+1)`
-/

namespace A167300.P2377731168363013493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167294 (A079065 (n + 1)).toNat ^ 2 * A167294 (n + 1)

end

end A167300.P2377731168363013493

namespace A167300

/-- `A167294(A079065(n+1))²*A167294(n+1)` -/
def P2377731168363013493.Spec : Prop :=
  ∀ n, P2377731168363013493.a n = A167300 (n + 1)

end A167300

/-! ## A167300.P8845720428740286297

`A061142(n+1)*A165825(n+1)*A166586(n+1)`
-/

namespace A167300.P8845720428740286297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061142 (n + 1) * A165825 (n + 1) * A166586 (n + 1)

end

end A167300.P8845720428740286297

namespace A167300

/-- `A061142(n+1)*A165825(n+1)*A166586(n+1)` -/
def P8845720428740286297.Spec : Prop :=
  ∀ n, P8845720428740286297.a n = A167300 (n + 1)

end A167300

/-! ## A167300.P17005955198290829478

`A166586(n+1)/A003959(n+1)*A166648(n+1)`
-/

namespace A167300.P17005955198290829478
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166586 (n + 1) : ℚ) / (A003959 (n + 1) : ℚ) * (A166648 (n + 1) : ℚ)

end

end A167300.P17005955198290829478

namespace A167300

/-- `A166586(n+1)/A003959(n+1)*A166648(n+1)` -/
def P17005955198290829478.Spec : Prop :=
  ∀ n, P17005955198290829478.a n = (A167300 (n + 1) : ℚ)

end A167300

/-! ## A167300.P13582135136673188706

`A167294(A165824(n+1))²*A167294(n+1)`
-/

namespace A167300.P13582135136673188706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167294 (A165824 (n + 1)).toNat ^ 2 * A167294 (n + 1)

end

end A167300.P13582135136673188706

namespace A167300

/-- `A167294(A165824(n+1))²*A167294(n+1)` -/
def P13582135136673188706.Spec : Prop :=
  ∀ n, P13582135136673188706.a n = A167300 (n + 1)

end A167300

/-! ## A167300.P3140024663382098711

`A167294(n+1)*A248692(A165824(n+1))`
-/

namespace A167300.P3140024663382098711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167294 (n + 1) * A248692 (A165824 (n + 1)).toNat

end

end A167300.P3140024663382098711

namespace A167300

/-- `A167294(n+1)*A248692(A165824(n+1))` -/
def P3140024663382098711.Spec : Prop :=
  ∀ n, P3140024663382098711.a n = A167300 (n + 1)

end A167300

/-!
# A167301: Totally multiplicative sequence with a(p) = 9*(p-2) for prime p.

The programs for A167301, the canonical program `A167301.P17273096670180522839` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A167301 has offset 1).

The definition of A167301 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A165830, A166586, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A167301.P17273096670180522839

`A165830(n+1)*A166586(n+1)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A167301

/-- `A165830(n+1)*A166586(n+1)` -/
def P17273096670180522839.Spec : Prop :=
  ∀ n, P17273096670180522839.a n = A167301 (n + 1)

theorem P17273096670180522839.correct : P17273096670180522839.Spec := by
  intro n
  simp only [A167301, Nat.add_sub_cancel]

end A167301

/-! ## A167301.P12375737032650140161

`9^A001222(n+1)*A166586(n+1)`
-/

namespace A167301.P12375737032650140161
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (9 : ℚ) ^ (A001222 (n + 1) : ℤ) * (A166586 (n + 1) : ℚ)

end

end A167301.P12375737032650140161

namespace A167301

/-- `9^A001222(n+1)*A166586(n+1)` -/
def P12375737032650140161.Spec : Prop :=
  ∀ n, P12375737032650140161.a n = (A167301 (n + 1) : ℚ)

end A167301

/-! ## A167301.P11363802363191176806

`A079065(n+1)*A167295(n+1)`
-/

namespace A167301.P11363802363191176806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079065 (n + 1) * A167295 (n + 1)

end

end A167301.P11363802363191176806

namespace A167301

/-- `A079065(n+1)*A167295(n+1)` -/
def P11363802363191176806.Spec : Prop :=
  ∀ n, P11363802363191176806.a n = A167301 (n + 1)

end A167301

/-! ## A167301.P2360026334412361710

`A165824(n+1)*A167295(n+1)`
-/

namespace A167301.P2360026334412361710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165824 (n + 1) * A167295 (n + 1)

end

end A167301.P2360026334412361710

namespace A167301

/-- `A165824(n+1)*A167295(n+1)` -/
def P2360026334412361710.Spec : Prop :=
  ∀ n, P2360026334412361710.a n = A167301 (n + 1)

end A167301

/-! ## A167301.P11465448952789172393

`A079065(n+1)²*A166586(n+1)`
-/

namespace A167301.P11465448952789172393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079065 (n + 1) ^ 2 * A166586 (n + 1)

end

end A167301.P11465448952789172393

namespace A167301

/-- `A079065(n+1)²*A166586(n+1)` -/
def P11465448952789172393.Spec : Prop :=
  ∀ n, P11465448952789172393.a n = A167301 (n + 1)

end A167301

/-! ## A167301.P9860284727709293341

`A165824(n+1)²*A166586(n+1)`
-/

namespace A167301.P9860284727709293341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165824 (n + 1) ^ 2 * A166586 (n + 1)

end

end A167301.P9860284727709293341

namespace A167301

/-- `A165824(n+1)²*A166586(n+1)` -/
def P9860284727709293341.Spec : Prop :=
  ∀ n, P9860284727709293341.a n = A167301 (n + 1)

end A167301

/-! ## A167301.P4233092069198914588

`A003959(A061142(n+1))*A167295(n+1)`
-/

namespace A167301.P4233092069198914588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003959 (A061142 (n + 1)).toNat * A167295 (n + 1)

end

end A167301.P4233092069198914588

namespace A167301

/-- `A003959(A061142(n+1))*A167295(n+1)` -/
def P4233092069198914588.Spec : Prop :=
  ∀ n, P4233092069198914588.a n = A167301 (n + 1)

end A167301

/-! ## A167301.P2736077653923270428

`A003959(A061142(n+1))²*A166586(n+1)`
-/

namespace A167301.P2736077653923270428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003959 (A061142 (n + 1)).toNat ^ 2 * A166586 (n + 1)

end

end A167301.P2736077653923270428

namespace A167301

/-- `A003959(A061142(n+1))²*A166586(n+1)` -/
def P2736077653923270428.Spec : Prop :=
  ∀ n, P2736077653923270428.a n = A167301 (n + 1)

end A167301

/-! ## A167301.P1736261711196083274

`A166643(n+1)/A003959(n+1)*A167295(n+1)`
-/

namespace A167301.P1736261711196083274
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166643 (n + 1) : ℚ) / (A003959 (n + 1) : ℚ) * (A167295 (n + 1) : ℚ)

end

end A167301.P1736261711196083274

namespace A167301

/-- `A166643(n+1)/A003959(n+1)*A167295(n+1)` -/
def P1736261711196083274.Spec : Prop :=
  ∀ n, P1736261711196083274.a n = (A167301 (n + 1) : ℚ)

end A167301

/-! ## A167301.P214215838132908726

`(A165824(n+1)/A061142(n+1))²*A167296(n+1)`
-/

namespace A167301.P214215838132908726
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A165824 (n + 1) : ℚ) / (A061142 (n + 1) : ℚ)) ^ 2 * (A167296 (n + 1) : ℚ)

end

end A167301.P214215838132908726

namespace A167301

/-- `(A165824(n+1)/A061142(n+1))²*A167296(n+1)` -/
def P214215838132908726.Spec : Prop :=
  ∀ n, P214215838132908726.a n = (A167301 (n + 1) : ℚ)

end A167301

/-! ## A167301.P16226331920831226019

`A165824(n+1)²/A165825(n+1)*A167296(n+1)`
-/

namespace A167301.P16226331920831226019
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A165824 (n + 1) ^ 2 : ℚ) / (A165825 (n + 1) : ℚ) * (A167296 (n + 1) : ℚ)

end

end A167301.P16226331920831226019

namespace A167301

/-- `A165824(n+1)²/A165825(n+1)*A167296(n+1)` -/
def P16226331920831226019.Spec : Prop :=
  ∀ n, P16226331920831226019.a n = (A167301 (n + 1) : ℚ)

end A167301

/-! ## A167301.P7327918834123329223

`A003959(A165825(n+1))*A166586(n+1)`
-/

namespace A167301.P7327918834123329223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003959 (A165825 (n + 1)).toNat * A166586 (n + 1)

end

end A167301.P7327918834123329223

namespace A167301

/-- `A003959(A165825(n+1))*A166586(n+1)` -/
def P7327918834123329223.Spec : Prop :=
  ∀ n, P7327918834123329223.a n = A167301 (n + 1)

end A167301

/-! ## A167301.P6764899369153887730

`A165824(A003961(n+1))*A165824(n+1)*A166586(n+1)`
-/

namespace A167301.P6764899369153887730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165824 (A003961 (n + 1)).toNat * A165824 (n + 1) * A166586 (n + 1)

end

end A167301.P6764899369153887730

namespace A167301

/-- `A165824(A003961(n+1))*A165824(n+1)*A166586(n+1)` -/
def P6764899369153887730.Spec : Prop :=
  ∀ n, P6764899369153887730.a n = A167301 (n + 1)

end A167301

/-!
# A167302: Totally multiplicative sequence with a(p) = 10*(p-2) for prime p.

The programs for A167302, the canonical program `A167302.P478153043190130814` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A167302 has offset 1).

The definition of A167302 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A165831, A166586, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A167302.P478153043190130814

`A165831(n+1)*A166586(n+1)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A167302

/-- `A165831(n+1)*A166586(n+1)` -/
def P478153043190130814.Spec : Prop :=
  ∀ n, P478153043190130814.a n = A167302 (n + 1)

theorem P478153043190130814.correct : P478153043190130814.Spec := by
  intro n
  simp only [A167302, Nat.add_sub_cancel]

end A167302

/-! ## A167302.P8163527713654400594

`10^A001222(n+1)*A166586(n+1)`
-/

namespace A167302.P8163527713654400594
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (10 : ℚ) ^ (A001222 (n + 1) : ℤ) * (A166586 (n + 1) : ℚ)

end

end A167302.P8163527713654400594

namespace A167302

/-- `10^A001222(n+1)*A166586(n+1)` -/
def P8163527713654400594.Spec : Prop :=
  ∀ n, P8163527713654400594.a n = (A167302 (n + 1) : ℚ)

end A167302

/-! ## A167302.P16943325928797000501

`A061142(n+1)*A167297(n+1)`
-/

namespace A167302.P16943325928797000501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061142 (n + 1) * A167297 (n + 1)

end

end A167302.P16943325928797000501

namespace A167302

/-- `A061142(n+1)*A167297(n+1)` -/
def P16943325928797000501.Spec : Prop :=
  ∀ n, P16943325928797000501.a n = A167302 (n + 1)

end A167302

/-! ## A167302.P18378452894070446921

`A165826(n+1)*A167294(n+1)`
-/

namespace A167302.P18378452894070446921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165826 (n + 1) * A167294 (n + 1)

end

end A167302.P18378452894070446921

namespace A167302

/-- `A165826(n+1)*A167294(n+1)` -/
def P18378452894070446921.Spec : Prop :=
  ∀ n, P18378452894070446921.a n = A167302 (n + 1)

end A167302

/-! ## A167302.P10808653878548436154

`2^A001222(n+1)*A167297(n+1)`
-/

namespace A167302.P10808653878548436154
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A001222 (n + 1) : ℤ) * (A167297 (n + 1) : ℚ)

end

end A167302.P10808653878548436154

namespace A167302

/-- `2^A001222(n+1)*A167297(n+1)` -/
def P10808653878548436154.Spec : Prop :=
  ∀ n, P10808653878548436154.a n = (A167302 (n + 1) : ℚ)

end A167302

/-! ## A167302.P17898559961881701786

`A166652(A061142(n+1))*A167294(n+1)`
-/

namespace A167302.P17898559961881701786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166652 (A061142 (n + 1)).toNat * A167294 (n + 1)

end

end A167302.P17898559961881701786

namespace A167302

/-- `A166652(A061142(n+1))*A167294(n+1)` -/
def P17898559961881701786.Spec : Prop :=
  ∀ n, P17898559961881701786.a n = A167302 (n + 1)

end A167302

/-! ## A167302.P7313883648404709529

`A166586(n+1)/A003959(n+1)*A166650(n+1)`
-/

namespace A167302.P7313883648404709529
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166586 (n + 1) : ℚ) / (A003959 (n + 1) : ℚ) * (A166650 (n + 1) : ℚ)

end

end A167302.P7313883648404709529

namespace A167302

/-- `A166586(n+1)/A003959(n+1)*A166650(n+1)` -/
def P7313883648404709529.Spec : Prop :=
  ∀ n, P7313883648404709529.a n = (A167302 (n + 1) : ℚ)

end A167302

/-! ## A167302.P2803148571346684324

`A166589(A165826(n+1))*A167297(n+1)`
-/

namespace A167302.P2803148571346684324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166589 (A165826 (n + 1)).toNat * A167297 (n + 1)

end

end A167302.P2803148571346684324

namespace A167302

/-- `A166589(A165826(n+1))*A167297(n+1)` -/
def P2803148571346684324.Spec : Prop :=
  ∀ n, P2803148571346684324.a n = A167302 (n + 1)

end A167302

/-! ## A167302.P12932980540156702729

`A166586(n+1)*A167315(A165826(n+1))`
-/

namespace A167302.P12932980540156702729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166586 (n + 1) * A167315 (A165826 (n + 1)).toNat

end

end A167302.P12932980540156702729

namespace A167302

/-- `A166586(n+1)*A167315(A165826(n+1))` -/
def P12932980540156702729.Spec : Prop :=
  ∀ n, P12932980540156702729.a n = A167302 (n + 1)

end A167302

/-! ## A167302.P15401710858924262482

`A167297(n+1)*A318474(A318474(n+1))`
-/

namespace A167302.P15401710858924262482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167297 (n + 1) * A318474 (A318474 (n + 1)).toNat

end

end A167302.P15401710858924262482

namespace A167302

/-- `A167297(n+1)*A318474(A318474(n+1))` -/
def P15401710858924262482.Spec : Prop :=
  ∀ n, P15401710858924262482.a n = A167302 (n + 1)

end A167302

/-!
# A167303: Totally multiplicative sequence with a(p) = 2*(p+2) for prime p.

The programs for A167303, the canonical program `A167303.P11363284462893750900` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A167303 has offset 1).

The definition of A167303 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A061142, A166590, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A167303.P11363284462893750900

`A061142(n+1)*A166590(n+1)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A167303

/-- `A061142(n+1)*A166590(n+1)` -/
def P11363284462893750900.Spec : Prop :=
  ∀ n, P11363284462893750900.a n = A167303 (n + 1)

theorem P11363284462893750900.correct : P11363284462893750900.Spec := by
  intro n
  simp only [A167303, Nat.add_sub_cancel]

end A167303

/-! ## A167303.P13707650689252203152

`2^A001222(n+1)*A166590(n+1)`
-/

namespace A167303.P13707650689252203152
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A001222 (n + 1) : ℤ) * (A166590 (n + 1) : ℚ)

end

end A167303.P13707650689252203152

namespace A167303

/-- `2^A001222(n+1)*A166590(n+1)` -/
def P13707650689252203152.Spec : Prop :=
  ∀ n, P13707650689252203152.a n = (A167303 (n + 1) : ℚ)

end A167303

/-! ## A167303.P14065941670159764639

`A167305(n+1)/A061142(n+1)`
-/

namespace A167303.P14065941670159764639
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167305 (n + 1) : ℚ) / (A061142 (n + 1) : ℚ)

end

end A167303.P14065941670159764639

namespace A167303

/-- `A167305(n+1)/A061142(n+1)` -/
def P14065941670159764639.Spec : Prop :=
  ∀ n, P14065941670159764639.a n = (A167303 (n + 1) : ℚ)

end A167303

/-! ## A167303.P3210108908588151000

`A167307(n+1)/A165824(n+1)`
-/

namespace A167303.P3210108908588151000
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167307 (n + 1) : ℚ) / (A165824 (n + 1) : ℚ)

end

end A167303.P3210108908588151000

namespace A167303

/-- `A167307(n+1)/A165824(n+1)` -/
def P3210108908588151000.Spec : Prop :=
  ∀ n, P3210108908588151000.a n = (A167303 (n + 1) : ℚ)

end A167303

/-! ## A167303.P460342714673871964

`A167309(n+1)/A165825(n+1)`
-/

namespace A167303.P460342714673871964
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167309 (n + 1) : ℚ) / (A165825 (n + 1) : ℚ)

end

end A167303.P460342714673871964

namespace A167303

/-- `A167309(n+1)/A165825(n+1)` -/
def P460342714673871964.Spec : Prop :=
  ∀ n, P460342714673871964.a n = (A167303 (n + 1) : ℚ)

end A167303

/-! ## A167303.P10239058373687101947

`A167311(n+1)/A165826(n+1)`
-/

namespace A167303.P10239058373687101947
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167311 (n + 1) : ℚ) / (A165826 (n + 1) : ℚ)

end

end A167303.P10239058373687101947

namespace A167303

/-- `A167311(n+1)/A165826(n+1)` -/
def P10239058373687101947.Spec : Prop :=
  ∀ n, P10239058373687101947.a n = (A167303 (n + 1) : ℚ)

end A167303

/-! ## A167303.P11839519598036490767

`gcd(A167305(n+1), A167307(n+1))`
-/

namespace A167303.P11839519598036490767
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A167305 (n + 1)) (A167307 (n + 1))

end

end A167303.P11839519598036490767

namespace A167303

/-- `gcd(A167305(n+1), A167307(n+1))` -/
def P11839519598036490767.Spec : Prop :=
  ∀ n, (P11839519598036490767.a n : ℤ) = A167303 (n + 1)

end A167303

/-! ## A167303.P7939308529442860787

`gcd(A167309(n+1), A167311(n+1))`
-/

namespace A167303.P7939308529442860787
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A167309 (n + 1)) (A167311 (n + 1))

end

end A167303.P7939308529442860787

namespace A167303

/-- `gcd(A167309(n+1), A167311(n+1))` -/
def P7939308529442860787.Spec : Prop :=
  ∀ n, (P7939308529442860787.a n : ℤ) = A167303 (n + 1)

end A167303

/-! ## A167303.P13019998083107857894

`A167309(n+1)/A061142(n+1)²`
-/

namespace A167303.P13019998083107857894
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167309 (n + 1) : ℚ) / (A061142 (n + 1) ^ 2 : ℚ)

end

end A167303.P13019998083107857894

namespace A167303

/-- `A167309(n+1)/A061142(n+1)²` -/
def P13019998083107857894.Spec : Prop :=
  ∀ n, P13019998083107857894.a n = (A167303 (n + 1) : ℚ)

end A167303

/-! ## A167303.P12761569212101503238

`A167305(n+1)²/A167309(n+1)`
-/

namespace A167303.P12761569212101503238
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167305 (n + 1) ^ 2 : ℚ) / (A167309 (n + 1) : ℚ)

end

end A167303.P12761569212101503238

namespace A167303

/-- `A167305(n+1)²/A167309(n+1)` -/
def P12761569212101503238.Spec : Prop :=
  ∀ n, P12761569212101503238.a n = (A167303 (n + 1) : ℚ)

end A167303

/-! ## A167303.P15819932866087672973

`A061142(n+1)/A003958(n+1)*A167346(n+1)`
-/

namespace A167303.P15819932866087672973
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061142 (n + 1) : ℚ) / (A003958 (n + 1) : ℚ) * (A167346 (n + 1) : ℚ)

end

end A167303.P15819932866087672973

namespace A167303

/-- `A061142(n+1)/A003958(n+1)*A167346(n+1)` -/
def P15819932866087672973.Spec : Prop :=
  ∀ n, P15819932866087672973.a n = (A167303 (n + 1) : ℚ)

end A167303

/-! ## A167303.P3068148809591028020

`A061142(n+1)/A003959(n+1)*A167351(n+1)`
-/

namespace A167303.P3068148809591028020
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061142 (n + 1) : ℚ) / (A003959 (n + 1) : ℚ) * (A167351 (n + 1) : ℚ)

end

end A167303.P3068148809591028020

namespace A167303

/-- `A061142(n+1)/A003959(n+1)*A167351(n+1)` -/
def P3068148809591028020.Spec : Prop :=
  ∀ n, P3068148809591028020.a n = (A167303 (n + 1) : ℚ)

end A167303

/-! ## A167303.P12302482689242184191

`A166590(n+1)/A003959(n+1)*A166642(n+1)`
-/

namespace A167303.P12302482689242184191
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166590 (n + 1) : ℚ) / (A003959 (n + 1) : ℚ) * (A166642 (n + 1) : ℚ)

end

end A167303.P12302482689242184191

namespace A167303

/-- `A166590(n+1)/A003959(n+1)*A166642(n+1)` -/
def P12302482689242184191.Spec : Prop :=
  ∀ n, P12302482689242184191.a n = (A167303 (n + 1) : ℚ)

end A167303

/-! ## A167303.P15288590757085047760

`A061142(n+1)/A165824(n+1)*A167304(n+1)`
-/

namespace A167303.P15288590757085047760
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061142 (n + 1) : ℚ) / (A165824 (n + 1) : ℚ) * (A167304 (n + 1) : ℚ)

end

end A167303.P15288590757085047760

namespace A167303

/-- `A061142(n+1)/A165824(n+1)*A167304(n+1)` -/
def P15288590757085047760.Spec : Prop :=
  ∀ n, P15288590757085047760.a n = (A167303 (n + 1) : ℚ)

end A167303

/-! ## A167303.P18235924182322353727

`A061142(n+1)/A165826(n+1)*A167306(n+1)`
-/

namespace A167303.P18235924182322353727
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061142 (n + 1) : ℚ) / (A165826 (n + 1) : ℚ) * (A167306 (n + 1) : ℚ)

end

end A167303.P18235924182322353727

namespace A167303

/-- `A061142(n+1)/A165826(n+1)*A167306(n+1)` -/
def P18235924182322353727.Spec : Prop :=
  ∀ n, P18235924182322353727.a n = (A167303 (n + 1) : ℚ)

end A167303

/-! ## A167303.P11657180379913217628

`A166590(n+1)/A167304(n+1)*A167307(n+1)`
-/

namespace A167303.P11657180379913217628
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166590 (n + 1) : ℚ) / (A167304 (n + 1) : ℚ) * (A167307 (n + 1) : ℚ)

end

end A167303.P11657180379913217628

namespace A167303

/-- `A166590(n+1)/A167304(n+1)*A167307(n+1)` -/
def P11657180379913217628.Spec : Prop :=
  ∀ n, P11657180379913217628.a n = (A167303 (n + 1) : ℚ)

end A167303

/-! ## A167303.P15447925756910089241

`A166590(n+1)/A167305(n+1)*A167309(n+1)`
-/

namespace A167303.P15447925756910089241
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166590 (n + 1) : ℚ) / (A167305 (n + 1) : ℚ) * (A167309 (n + 1) : ℚ)

end

end A167303.P15447925756910089241

namespace A167303

/-- `A166590(n+1)/A167305(n+1)*A167309(n+1)` -/
def P15447925756910089241.Spec : Prop :=
  ∀ n, P15447925756910089241.a n = (A167303 (n + 1) : ℚ)

end A167303

/-! ## A167303.P10629140530771724334

`A003958(A165824(n+1))*A166590(n+1)`
-/

namespace A167303.P10629140530771724334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003958 (A165824 (n + 1)).toNat * A166590 (n + 1)

end

end A167303.P10629140530771724334

namespace A167303

/-- `A003958(A165824(n+1))*A166590(n+1)` -/
def P10629140530771724334.Spec : Prop :=
  ∀ n, P10629140530771724334.a n = A167303 (n + 1)

end A167303

/-! ## A167303.P1666626916480390994

`A003958(A165827(n+1))/A165827(n+1)*A167307(n+1)`
-/

namespace A167303.P1666626916480390994
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003958 (A165827 (n + 1)).toNat : ℚ) / (A165827 (n + 1) : ℚ) * (A167307 (n + 1) : ℚ)

end

end A167303.P1666626916480390994

namespace A167303

/-- `A003958(A165827(n+1))/A165827(n+1)*A167307(n+1)` -/
def P1666626916480390994.Spec : Prop :=
  ∀ n, P1666626916480390994.a n = (A167303 (n + 1) : ℚ)

end A167303

/-!
# A167304: Totally multiplicative sequence with a(p) = 3*(p+2) for prime p.

The programs for A167304, the canonical program `A167304.P2031203534849749010` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A167304 has offset 1).

The definition of A167304 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A165824, A166590, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A167304.P2031203534849749010

`A165824(n+1)*A166590(n+1)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A167304

/-- `A165824(n+1)*A166590(n+1)` -/
def P2031203534849749010.Spec : Prop :=
  ∀ n, P2031203534849749010.a n = A167304 (n + 1)

theorem P2031203534849749010.correct : P2031203534849749010.Spec := by
  intro n
  simp only [A167304, Nat.add_sub_cancel]

end A167304

/-! ## A167304.P10338442527711108065

`3^A001222(n+1)*A166590(n+1)`
-/

namespace A167304.P10338442527711108065
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (A001222 (n + 1) : ℤ) * (A166590 (n + 1) : ℚ)

end

end A167304.P10338442527711108065

namespace A167304

/-- `3^A001222(n+1)*A166590(n+1)` -/
def P10338442527711108065.Spec : Prop :=
  ∀ n, P10338442527711108065.a n = (A167304 (n + 1) : ℚ)

end A167304

/-! ## A167304.P4600624696655409731

`A167307(n+1)/A061142(n+1)`
-/

namespace A167304.P4600624696655409731
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167307 (n + 1) : ℚ) / (A061142 (n + 1) : ℚ)

end

end A167304.P4600624696655409731

namespace A167304

/-- `A167307(n+1)/A061142(n+1)` -/
def P4600624696655409731.Spec : Prop :=
  ∀ n, P4600624696655409731.a n = (A167304 (n + 1) : ℚ)

end A167304

/-! ## A167304.P4235991140613281961

`A167310(n+1)/A165824(n+1)`
-/

namespace A167304.P4235991140613281961
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167310 (n + 1) : ℚ) / (A165824 (n + 1) : ℚ)

end

end A167304.P4235991140613281961

namespace A167304

/-- `A167310(n+1)/A165824(n+1)` -/
def P4235991140613281961.Spec : Prop :=
  ∀ n, P4235991140613281961.a n = (A167304 (n + 1) : ℚ)

end A167304

/-! ## A167304.P4888113027447895753

`gcd(A167307(n+1), A167310(n+1))`
-/

namespace A167304.P4888113027447895753
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A167307 (n + 1)) (A167310 (n + 1))

end

end A167304.P4888113027447895753

namespace A167304

/-- `gcd(A167307(n+1), A167310(n+1))` -/
def P4888113027447895753.Spec : Prop :=
  ∀ n, (P4888113027447895753.a n : ℤ) = A167304 (n + 1)

end A167304

/-! ## A167304.P10258759500756743805

`sqrt(A166590(n+1)*A167310(n+1))`
-/

namespace A167304.P10258759500756743805
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A166590 (n + 1) * A167310 (n + 1) : ℝ)

end

end A167304.P10258759500756743805

namespace A167304

/-- `sqrt(A166590(n+1)*A167310(n+1))` -/
def P10258759500756743805.Spec : Prop :=
  ∀ n, P10258759500756743805.a n = (A167304 (n + 1) : ℝ)

end A167304

/-! ## A167304.P11120052633458626177

`A167310(n+1)/sqrt(A165830(n+1))`
-/

namespace A167304.P11120052633458626177
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A167310 (n + 1) : ℝ) / Real.sqrt (A165830 (n + 1) : ℝ)

end

end A167304.P11120052633458626177

namespace A167304

/-- `A167310(n+1)/sqrt(A165830(n+1))` -/
def P11120052633458626177.Spec : Prop :=
  ∀ n, P11120052633458626177.a n = (A167304 (n + 1) : ℝ)

end A167304

/-! ## A167304.P11221010604368549890

`A003959(A061142(n+1))*A166590(n+1)`
-/

namespace A167304.P11221010604368549890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003959 (A061142 (n + 1)).toNat * A166590 (n + 1)

end

end A167304.P11221010604368549890

namespace A167304

/-- `A003959(A061142(n+1))*A166590(n+1)` -/
def P11221010604368549890.Spec : Prop :=
  ∀ n, P11221010604368549890.a n = A167304 (n + 1)

end A167304

/-! ## A167304.P6429558247235076788

`A167310(n+1)/A003959(A061142(n+1))`
-/

namespace A167304.P6429558247235076788
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167310 (n + 1) : ℚ) / (A003959 (A061142 (n + 1)).toNat : ℚ)

end

end A167304.P6429558247235076788

namespace A167304

/-- `A167310(n+1)/A003959(A061142(n+1))` -/
def P6429558247235076788.Spec : Prop :=
  ∀ n, P6429558247235076788.a n = (A167304 (n + 1) : ℚ)

end A167304

/-! ## A167304.P13750759236910651240

`A166590(n+1)/A003959(n+1)*A166643(n+1)`
-/

namespace A167304.P13750759236910651240
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166590 (n + 1) : ℚ) / (A003959 (n + 1) : ℚ) * (A166643 (n + 1) : ℚ)

end

end A167304.P13750759236910651240

namespace A167304

/-- `A166590(n+1)/A003959(n+1)*A166643(n+1)` -/
def P13750759236910651240.Spec : Prop :=
  ∀ n, P13750759236910651240.a n = (A167304 (n + 1) : ℚ)

end A167304

/-! ## A167304.P8685858305740798578

`A165824(n+1)/A165825(n+1)*A167305(n+1)`
-/

namespace A167304.P8685858305740798578
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A165824 (n + 1) : ℚ) / (A165825 (n + 1) : ℚ) * (A167305 (n + 1) : ℚ)

end

end A167304.P8685858305740798578

namespace A167304

/-- `A165824(n+1)/A165825(n+1)*A167305(n+1)` -/
def P8685858305740798578.Spec : Prop :=
  ∀ n, P8685858305740798578.a n = (A167304 (n + 1) : ℚ)

end A167304

/-! ## A167304.P4686277697028031309

`A165824(n+1)/A165826(n+1)*A167306(n+1)`
-/

namespace A167304.P4686277697028031309
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A165824 (n + 1) : ℚ) / (A165826 (n + 1) : ℚ) * (A167306 (n + 1) : ℚ)

end

end A167304.P4686277697028031309

namespace A167304

/-- `A165824(n+1)/A165826(n+1)*A167306(n+1)` -/
def P4686277697028031309.Spec : Prop :=
  ∀ n, P4686277697028031309.a n = (A167304 (n + 1) : ℚ)

end A167304

/-! ## A167304.P13225816994723492266

`A166633(n+1)/A166634(n+1)*A167305(n+1)`
-/

namespace A167304.P13225816994723492266
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166633 (n + 1) : ℚ) / (A166634 (n + 1) : ℚ) * (A167305 (n + 1) : ℚ)

end

end A167304.P13225816994723492266

namespace A167304

/-- `A166633(n+1)/A166634(n+1)*A167305(n+1)` -/
def P13225816994723492266.Spec : Prop :=
  ∀ n, P13225816994723492266.a n = (A167304 (n + 1) : ℚ)

end A167304

/-! ## A167304.P8128560625860451494

`A166633(n+1)/A166635(n+1)*A167306(n+1)`
-/

namespace A167304.P8128560625860451494
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166633 (n + 1) : ℚ) / (A166635 (n + 1) : ℚ) * (A167306 (n + 1) : ℚ)

end

end A167304.P8128560625860451494

namespace A167304

/-- `A166633(n+1)/A166635(n+1)*A167306(n+1)` -/
def P8128560625860451494.Spec : Prop :=
  ∀ n, P8128560625860451494.a n = (A167304 (n + 1) : ℚ)

end A167304

/-! ## A167304.P974043989090588099

`A166590(n+1)/A167303(n+1)*A167307(n+1)`
-/

namespace A167304.P974043989090588099
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166590 (n + 1) : ℚ) / (A167303 (n + 1) : ℚ) * (A167307 (n + 1) : ℚ)

end

end A167304.P974043989090588099

namespace A167304

/-- `A166590(n+1)/A167303(n+1)*A167307(n+1)` -/
def P974043989090588099.Spec : Prop :=
  ∀ n, P974043989090588099.a n = (A167304 (n + 1) : ℚ)

end A167304

/-! ## A167304.P1835498067972174942

`A165824(n+1)/A061142(n+1)²*A167305(n+1)`
-/

namespace A167304.P1835498067972174942
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A165824 (n + 1) : ℚ) / (A061142 (n + 1) ^ 2 : ℚ) * (A167305 (n + 1) : ℚ)

end

end A167304.P1835498067972174942

namespace A167304

/-- `A165824(n+1)/A061142(n+1)²*A167305(n+1)` -/
def P1835498067972174942.Spec : Prop :=
  ∀ n, P1835498067972174942.a n = (A167304 (n + 1) : ℚ)

end A167304

/-! ## A167304.P11931323379893882665

`A003959(A061142(n+1))/A003959(n+1)*A167351(n+1)`
-/

namespace A167304.P11931323379893882665
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003959 (A061142 (n + 1)).toNat : ℚ) / (A003959 (n + 1) : ℚ) * (A167351 (n + 1) : ℚ)

end

end A167304.P11931323379893882665

namespace A167304

/-- `A003959(A061142(n+1))/A003959(n+1)*A167351(n+1)` -/
def P11931323379893882665.Spec : Prop :=
  ∀ n, P11931323379893882665.a n = (A167304 (n + 1) : ℚ)

end A167304

/-! ## A167304.P12094935644987708793

`A003959(A167303(n+1)/A166590(n+1))*A166590(n+1)`
-/

namespace A167304.P12094935644987708793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003959 (SequenceMachineLib.roundAway ((A167303 (n + 1) : ℚ) / (A166590 (n + 1) : ℚ))).toNat * A166590 (n + 1)

end

end A167304.P12094935644987708793

namespace A167304

/-- `A003959(A167303(n+1)/A166590(n+1))*A166590(n+1)` -/
def P12094935644987708793.Spec : Prop :=
  ∀ n, P12094935644987708793.a n = A167304 (n + 1)

end A167304

/-! ## A167304.P3339478050287771838

`A167307(n+1)/A003958(A165827(n+1))`
-/

namespace A167304.P3339478050287771838
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167307 (n + 1) : ℚ) / (A003958 (A165827 (n + 1)).toNat : ℚ)

end

end A167304.P3339478050287771838

namespace A167304

/-- `A167307(n+1)/A003958(A165827(n+1))` -/
def P3339478050287771838.Spec : Prop :=
  ∀ n, P3339478050287771838.a n = (A167304 (n + 1) : ℚ)

end A167304

/-! ## A167304.P931202039372625745

`A167307(n+1)/A003958(A166636(n+1)/A003958(n+1))`
-/

namespace A167304.P931202039372625745
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167307 (n + 1) : ℚ) / (A003958 (SequenceMachineLib.roundAway ((A166636 (n + 1) : ℚ) / (A003958 (n + 1) : ℚ))).toNat : ℚ)

end

end A167304.P931202039372625745

namespace A167304

/-- `A167307(n+1)/A003958(A166636(n+1)/A003958(n+1))` -/
def P931202039372625745.Spec : Prop :=
  ∀ n, P931202039372625745.a n = (A167304 (n + 1) : ℚ)

end A167304

/-!
# A167305: Totally multiplicative sequence with a(p) = 4*(p+2) for prime p.

The programs for A167305, the canonical program `A167305.P2194561417994562381` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A167305 has offset 1).

The definition of A167305 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A165825, A166590, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A167305.P2194561417994562381

`A165825(n+1)*A166590(n+1)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A167305

/-- `A165825(n+1)*A166590(n+1)` -/
def P2194561417994562381.Spec : Prop :=
  ∀ n, P2194561417994562381.a n = A167305 (n + 1)

theorem P2194561417994562381.correct : P2194561417994562381.Spec := by
  intro n
  simp only [A167305, Nat.add_sub_cancel]

end A167305

/-! ## A167305.P16365676631201147439

`4^A001222(n+1)*A166590(n+1)`
-/

namespace A167305.P16365676631201147439
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 : ℚ) ^ (A001222 (n + 1) : ℤ) * (A166590 (n + 1) : ℚ)

end

end A167305.P16365676631201147439

namespace A167305

/-- `4^A001222(n+1)*A166590(n+1)` -/
def P16365676631201147439.Spec : Prop :=
  ∀ n, P16365676631201147439.a n = (A167305 (n + 1) : ℚ)

end A167305

/-! ## A167305.P16500894924389983708

`A061142(n+1)*A167303(n+1)`
-/

namespace A167305.P16500894924389983708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061142 (n + 1) * A167303 (n + 1)

end

end A167305.P16500894924389983708

namespace A167305

/-- `A061142(n+1)*A167303(n+1)` -/
def P16500894924389983708.Spec : Prop :=
  ∀ n, P16500894924389983708.a n = A167305 (n + 1)

end A167305

/-! ## A167305.P15934516504337789639

`A167309(n+1)/A061142(n+1)`
-/

namespace A167305.P15934516504337789639
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167309 (n + 1) : ℚ) / (A061142 (n + 1) : ℚ)

end

end A167305.P15934516504337789639

namespace A167305

/-- `A167309(n+1)/A061142(n+1)` -/
def P15934516504337789639.Spec : Prop :=
  ∀ n, P15934516504337789639.a n = (A167305 (n + 1) : ℚ)

end A167305

/-! ## A167305.P4405036730883672704

`A061142(n+1)²*A166590(n+1)`
-/

namespace A167305.P4405036730883672704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061142 (n + 1) ^ 2 * A166590 (n + 1)

end

end A167305.P4405036730883672704

namespace A167305

/-- `A061142(n+1)²*A166590(n+1)` -/
def P4405036730883672704.Spec : Prop :=
  ∀ n, P4405036730883672704.a n = A167305 (n + 1)

end A167305

/-! ## A167305.P10112209395444709022

`A167303(n+1)²/A166590(n+1)`
-/

namespace A167305.P10112209395444709022
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167303 (n + 1) ^ 2 : ℚ) / (A166590 (n + 1) : ℚ)

end

end A167305.P10112209395444709022

namespace A167305

/-- `A167303(n+1)²/A166590(n+1)` -/
def P10112209395444709022.Spec : Prop :=
  ∀ n, P10112209395444709022.a n = (A167305 (n + 1) : ℚ)

end A167305

/-! ## A167305.P10396243635183821649

`A167307(n+1)²/A167310(n+1)`
-/

namespace A167305.P10396243635183821649
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167307 (n + 1) ^ 2 : ℚ) / (A167310 (n + 1) : ℚ)

end

end A167305.P10396243635183821649

namespace A167305

/-- `A167307(n+1)²/A167310(n+1)` -/
def P10396243635183821649.Spec : Prop :=
  ∀ n, P10396243635183821649.a n = (A167305 (n + 1) : ℚ)

end A167305

/-! ## A167305.P10910336602514865944

`A166590(n+1)/A003959(n+1)*A166644(n+1)`
-/

namespace A167305.P10910336602514865944
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166590 (n + 1) : ℚ) / (A003959 (n + 1) : ℚ) * (A166644 (n + 1) : ℚ)

end

end A167305.P10910336602514865944

namespace A167305

/-- `A166590(n+1)/A003959(n+1)*A166644(n+1)` -/
def P10910336602514865944.Spec : Prop :=
  ∀ n, P10910336602514865944.a n = (A167305 (n + 1) : ℚ)

end A167305

/-! ## A167305.P675687111931473454

`A165825(n+1)/A165826(n+1)*A167306(n+1)`
-/

namespace A167305.P675687111931473454
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A165825 (n + 1) : ℚ) / (A165826 (n + 1) : ℚ) * (A167306 (n + 1) : ℚ)

end

end A167305.P675687111931473454

namespace A167305

/-- `A165825(n+1)/A165826(n+1)*A167306(n+1)` -/
def P675687111931473454.Spec : Prop :=
  ∀ n, P675687111931473454.a n = (A167305 (n + 1) : ℚ)

end A167305

/-! ## A167305.P11704938136267984048

`A166634(n+1)/A166635(n+1)*A167306(n+1)`
-/

namespace A167305.P11704938136267984048
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166634 (n + 1) : ℚ) / (A166635 (n + 1) : ℚ) * (A167306 (n + 1) : ℚ)

end

end A167305.P11704938136267984048

namespace A167305

/-- `A166634(n+1)/A166635(n+1)*A167306(n+1)` -/
def P11704938136267984048.Spec : Prop :=
  ∀ n, P11704938136267984048.a n = (A167305 (n + 1) : ℚ)

end A167305

/-! ## A167305.P15723829560998719428

`A166590(n+1)/A167303(n+1)*A167309(n+1)`
-/

namespace A167305.P15723829560998719428
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166590 (n + 1) : ℚ) / (A167303 (n + 1) : ℚ) * (A167309 (n + 1) : ℚ)

end

end A167305.P15723829560998719428

namespace A167305

/-- `A166590(n+1)/A167303(n+1)*A167309(n+1)` -/
def P15723829560998719428.Spec : Prop :=
  ∀ n, P15723829560998719428.a n = (A167305 (n + 1) : ℚ)

end A167305

/-! ## A167305.P14566687699609592534

`A167304(n+1)/A167307(n+1)*A167309(n+1)`
-/

namespace A167305.P14566687699609592534
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167304 (n + 1) : ℚ) / (A167307 (n + 1) : ℚ) * (A167309 (n + 1) : ℚ)

end

end A167305.P14566687699609592534

namespace A167305

/-- `A167304(n+1)/A167307(n+1)*A167309(n+1)` -/
def P14566687699609592534.Spec : Prop :=
  ∀ n, P14566687699609592534.a n = (A167305 (n + 1) : ℚ)

end A167305

/-! ## A167305.P15836831227962712996

`A061142(n+1)²/A003959(n+1)*A167351(n+1)`
-/

namespace A167305.P15836831227962712996
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061142 (n + 1) ^ 2 : ℚ) / (A003959 (n + 1) : ℚ) * (A167351 (n + 1) : ℚ)

end

end A167305.P15836831227962712996

namespace A167305

/-- `A061142(n+1)²/A003959(n+1)*A167351(n+1)` -/
def P15836831227962712996.Spec : Prop :=
  ∀ n, P15836831227962712996.a n = (A167305 (n + 1) : ℚ)

end A167305

/-! ## A167305.P12915328220439401481

`A061142(n+1)²/A165824(n+1)*A167304(n+1)`
-/

namespace A167305.P12915328220439401481
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061142 (n + 1) ^ 2 : ℚ) / (A165824 (n + 1) : ℚ) * (A167304 (n + 1) : ℚ)

end

end A167305.P12915328220439401481

namespace A167305

/-- `A061142(n+1)²/A165824(n+1)*A167304(n+1)` -/
def P12915328220439401481.Spec : Prop :=
  ∀ n, P12915328220439401481.a n = (A167305 (n + 1) : ℚ)

end A167305

/-! ## A167305.P1113617996209021068

`A167303(n+1)²/gcd(A167303(n+1), A167304(n+1))`
-/

namespace A167305.P1113617996209021068
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167303 (n + 1) ^ 2 : ℚ) / (Int.gcd (A167303 (n + 1)) (A167304 (n + 1)) : ℚ)

end

end A167305.P1113617996209021068

namespace A167305

/-- `A167303(n+1)²/gcd(A167303(n+1), A167304(n+1))` -/
def P1113617996209021068.Spec : Prop :=
  ∀ n, P1113617996209021068.a n = (A167305 (n + 1) : ℚ)

end A167305

/-! ## A167305.P4091450582929806766

`A166590(n+1)*A166590(A167303(n+1)/A166590(n+1))`
-/

namespace A167305.P4091450582929806766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166590 (n + 1) * A166590 (SequenceMachineLib.roundAway ((A167303 (n + 1) : ℚ) / (A166590 (n + 1) : ℚ))).toNat

end

end A167305.P4091450582929806766

namespace A167305

/-- `A166590(n+1)*A166590(A167303(n+1)/A166590(n+1))` -/
def P4091450582929806766.Spec : Prop :=
  ∀ n, P4091450582929806766.a n = A167305 (n + 1)

end A167305

/-! ## A167305.P9232874537269034880

`A003959(A165824(n+1))*A166590(n+1)`
-/

namespace A167305.P9232874537269034880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003959 (A165824 (n + 1)).toNat * A166590 (n + 1)

end

end A167305.P9232874537269034880

namespace A167305

/-- `A003959(A165824(n+1))*A166590(n+1)` -/
def P9232874537269034880.Spec : Prop :=
  ∀ n, P9232874537269034880.a n = A167305 (n + 1)

end A167305

/-! ## A167305.P5477848249532514683

`A003959(A167304(n+1)/A166590(n+1))*A166590(n+1)`
-/

namespace A167305.P5477848249532514683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003959 (SequenceMachineLib.roundAway ((A167304 (n + 1) : ℚ) / (A166590 (n + 1) : ℚ))).toNat * A166590 (n + 1)

end

end A167305.P5477848249532514683

namespace A167305

/-- `A003959(A167304(n+1)/A166590(n+1))*A166590(n+1)` -/
def P5477848249532514683.Spec : Prop :=
  ∀ n, P5477848249532514683.a n = A167305 (n + 1)

end A167305

/-! ## A167305.P16718797632360733148

`A003958(A165826(n+1))*A166590(n+1)`
-/

namespace A167305.P16718797632360733148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003958 (A165826 (n + 1)).toNat * A166590 (n + 1)

end

end A167305.P16718797632360733148

namespace A167305

/-- `A003958(A165826(n+1))*A166590(n+1)` -/
def P16718797632360733148.Spec : Prop :=
  ∀ n, P16718797632360733148.a n = A167305 (n + 1)

end A167305

/-! ## A167305.P13349538249640007146

`A166590(A123667(n+1))`
-/

namespace A167305.P13349538249640007146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166590 (A123667 (n + 1)).toNat

end

end A167305.P13349538249640007146

namespace A167305

/-- `A166590(A123667(n+1))` -/
def P13349538249640007146.Spec : Prop :=
  ∀ n, P13349538249640007146.a n = A167305 (n + 1)

end A167305

/-!
# A167306: Totally multiplicative sequence with a(p) = 5*(p+2) for prime p.

The programs for A167306, the canonical program `A167306.P910132846413458269` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A167306 has offset 1).

The definition of A167306 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A165826, A166590, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A167306.P910132846413458269

`A165826(n+1)*A166590(n+1)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A167306

/-- `A165826(n+1)*A166590(n+1)` -/
def P910132846413458269.Spec : Prop :=
  ∀ n, P910132846413458269.a n = A167306 (n + 1)

theorem P910132846413458269.correct : P910132846413458269.Spec := by
  intro n
  simp only [A167306, Nat.add_sub_cancel]

end A167306

/-! ## A167306.P5083858068205446592

`5^A001222(n+1)*A166590(n+1)`
-/

namespace A167306.P5083858068205446592
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 : ℚ) ^ (A001222 (n + 1) : ℤ) * (A166590 (n + 1) : ℚ)

end

end A167306.P5083858068205446592

namespace A167306

/-- `5^A001222(n+1)*A166590(n+1)` -/
def P5083858068205446592.Spec : Prop :=
  ∀ n, P5083858068205446592.a n = (A167306 (n + 1) : ℚ)

end A167306

/-! ## A167306.P4279280556459345091

`A167311(n+1)/A061142(n+1)`
-/

namespace A167306.P4279280556459345091
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167311 (n + 1) : ℚ) / (A061142 (n + 1) : ℚ)

end

end A167306.P4279280556459345091

namespace A167306

/-- `A167311(n+1)/A061142(n+1)` -/
def P4279280556459345091.Spec : Prop :=
  ∀ n, P4279280556459345091.a n = (A167306 (n + 1) : ℚ)

end A167306

/-! ## A167306.P17112875379387389604

`A165826(n+1)/A165825(n+1)*A167305(n+1)`
-/

namespace A167306.P17112875379387389604
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A165826 (n + 1) : ℚ) / (A165825 (n + 1) : ℚ) * (A167305 (n + 1) : ℚ)

end

end A167306.P17112875379387389604

namespace A167306

/-- `A165826(n+1)/A165825(n+1)*A167305(n+1)` -/
def P17112875379387389604.Spec : Prop :=
  ∀ n, P17112875379387389604.a n = (A167306 (n + 1) : ℚ)

end A167306

/-! ## A167306.P10929583820245932618

`A166590(n+1)/A166642(n+1)*A166650(n+1)`
-/

namespace A167306.P10929583820245932618
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166590 (n + 1) : ℚ) / (A166642 (n + 1) : ℚ) * (A166650 (n + 1) : ℚ)

end

end A167306.P10929583820245932618

namespace A167306

/-- `A166590(n+1)/A166642(n+1)*A166650(n+1)` -/
def P10929583820245932618.Spec : Prop :=
  ∀ n, P10929583820245932618.a n = (A167306 (n + 1) : ℚ)

end A167306

/-! ## A167306.P9503201135276137985

`A166635(n+1)/A166634(n+1)*A167305(n+1)`
-/

namespace A167306.P9503201135276137985
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166635 (n + 1) : ℚ) / (A166634 (n + 1) : ℚ) * (A167305 (n + 1) : ℚ)

end

end A167306.P9503201135276137985

namespace A167306

/-- `A166635(n+1)/A166634(n+1)*A167305(n+1)` -/
def P9503201135276137985.Spec : Prop :=
  ∀ n, P9503201135276137985.a n = (A167306 (n + 1) : ℚ)

end A167306

/-! ## A167306.P10858955028957234520

`A166590(n+1)/A167303(n+1)*A167311(n+1)`
-/

namespace A167306.P10858955028957234520
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166590 (n + 1) : ℚ) / (A167303 (n + 1) : ℚ) * (A167311 (n + 1) : ℚ)

end

end A167306.P10858955028957234520

namespace A167306

/-- `A166590(n+1)/A167303(n+1)*A167311(n+1)` -/
def P10858955028957234520.Spec : Prop :=
  ∀ n, P10858955028957234520.a n = (A167306 (n + 1) : ℚ)

end A167306

/-! ## A167306.P13430565642035439874

`A167321(A061142(n+1))/A061142(n+1)*A166590(n+1)`
-/

namespace A167306.P13430565642035439874
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167321 (A061142 (n + 1)).toNat : ℚ) / (A061142 (n + 1) : ℚ) * (A166590 (n + 1) : ℚ)

end

end A167306.P13430565642035439874

namespace A167306

/-- `A167321(A061142(n+1))/A061142(n+1)*A166590(n+1)` -/
def P13430565642035439874.Spec : Prop :=
  ∀ n, P13430565642035439874.a n = (A167306 (n + 1) : ℚ)

end A167306

/-! ## A167306.P4275601001686821089

`A166590(A165824(n+1))*A166590(n+1)`
-/

namespace A167306.P4275601001686821089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166590 (A165824 (n + 1)).toNat * A166590 (n + 1)

end

end A167306.P4275601001686821089

namespace A167306

/-- `A166590(A165824(n+1))*A166590(n+1)` -/
def P4275601001686821089.Spec : Prop :=
  ∀ n, P4275601001686821089.a n = A167306 (n + 1)

end A167306

/-! ## A167306.P14311559087907979807

`A166590(n+1)*A166590(A167304(n+1)/A166590(n+1))`
-/

namespace A167306.P14311559087907979807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166590 (n + 1) * A166590 (SequenceMachineLib.roundAway ((A167304 (n + 1) : ℚ) / (A166590 (n + 1) : ℚ))).toNat

end

end A167306.P14311559087907979807

namespace A167306

/-- `A166590(n+1)*A166590(A167304(n+1)/A166590(n+1))` -/
def P14311559087907979807.Spec : Prop :=
  ∀ n, P14311559087907979807.a n = A167306 (n + 1)

end A167306

/-!
# A167307: Totally multiplicative sequence with a(p) = 6*(p+2) for prime p.

The programs for A167307, the canonical program `A167307.P16545490870235879032` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A167307 has offset 1).

The definition of A167307 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A165827, A166590, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A167307.P16545490870235879032

`A165827(n+1)*A166590(n+1)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A167307

/-- `A165827(n+1)*A166590(n+1)` -/
def P16545490870235879032.Spec : Prop :=
  ∀ n, P16545490870235879032.a n = A167307 (n + 1)

theorem P16545490870235879032.correct : P16545490870235879032.Spec := by
  intro n
  simp only [A167307, Nat.add_sub_cancel]

end A167307

/-! ## A167307.P8480777508062430472

`6^A001222(n+1)*A166590(n+1)`
-/

namespace A167307.P8480777508062430472
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (6 : ℚ) ^ (A001222 (n + 1) : ℤ) * (A166590 (n + 1) : ℚ)

end

end A167307.P8480777508062430472

namespace A167307

/-- `6^A001222(n+1)*A166590(n+1)` -/
def P8480777508062430472.Spec : Prop :=
  ∀ n, P8480777508062430472.a n = (A167307 (n + 1) : ℚ)

end A167307

/-! ## A167307.P2707742890882278047

`A061142(n+1)*A167304(n+1)`
-/

namespace A167307.P2707742890882278047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061142 (n + 1) * A167304 (n + 1)

end

end A167307.P2707742890882278047

namespace A167307

/-- `A061142(n+1)*A167304(n+1)` -/
def P2707742890882278047.Spec : Prop :=
  ∀ n, P2707742890882278047.a n = A167307 (n + 1)

end A167307

/-! ## A167307.P5998670868112839274

`A165824(n+1)*A167303(n+1)`
-/

namespace A167307.P5998670868112839274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165824 (n + 1) * A167303 (n + 1)

end

end A167307.P5998670868112839274

namespace A167307

/-- `A165824(n+1)*A167303(n+1)` -/
def P5998670868112839274.Spec : Prop :=
  ∀ n, P5998670868112839274.a n = A167307 (n + 1)

end A167307

/-! ## A167307.P10590268073640072334

`lcm(A167303(n+1), A167304(n+1))`
-/

namespace A167307.P10590268073640072334
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A167303 (n + 1)) (A167304 (n + 1))

end

end A167307.P10590268073640072334

namespace A167307

/-- `lcm(A167303(n+1), A167304(n+1))` -/
def P10590268073640072334.Spec : Prop :=
  ∀ n, (P10590268073640072334.a n : ℤ) = A167307 (n + 1)

end A167307

/-! ## A167307.P5499067049589600259

`A003959(A061142(n+1))*A167303(n+1)`
-/

namespace A167307.P5499067049589600259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003959 (A061142 (n + 1)).toNat * A167303 (n + 1)

end

end A167307.P5499067049589600259

namespace A167307

/-- `A003959(A061142(n+1))*A167303(n+1)` -/
def P5499067049589600259.Spec : Prop :=
  ∀ n, P5499067049589600259.a n = A167307 (n + 1)

end A167307

/-! ## A167307.P8180345238541882961

`A061142(n+1)*A165824(n+1)*A166590(n+1)`
-/

namespace A167307.P8180345238541882961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061142 (n + 1) * A165824 (n + 1) * A166590 (n + 1)

end

end A167307.P8180345238541882961

namespace A167307

/-- `A061142(n+1)*A165824(n+1)*A166590(n+1)` -/
def P8180345238541882961.Spec : Prop :=
  ∀ n, P8180345238541882961.a n = A167307 (n + 1)

end A167307

/-! ## A167307.P4753301645457196144

`A165824(n+1)/A061142(n+1)*A167305(n+1)`
-/

namespace A167307.P4753301645457196144
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A165824 (n + 1) : ℚ) / (A061142 (n + 1) : ℚ) * (A167305 (n + 1) : ℚ)

end

end A167307.P4753301645457196144

namespace A167307

/-- `A165824(n+1)/A061142(n+1)*A167305(n+1)` -/
def P4753301645457196144.Spec : Prop :=
  ∀ n, P4753301645457196144.a n = (A167307 (n + 1) : ℚ)

end A167307

/-! ## A167307.P14352342529169369053

`A167303(n+1)/A166590(n+1)*A167304(n+1)`
-/

namespace A167307.P14352342529169369053
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167303 (n + 1) : ℚ) / (A166590 (n + 1) : ℚ) * (A167304 (n + 1) : ℚ)

end

end A167307.P14352342529169369053

namespace A167307

/-- `A167303(n+1)/A166590(n+1)*A167304(n+1)` -/
def P14352342529169369053.Spec : Prop :=
  ∀ n, P14352342529169369053.a n = (A167307 (n + 1) : ℚ)

end A167307

/-! ## A167307.P10739948819972892592

`A167304(n+1)/A167303(n+1)*A167305(n+1)`
-/

namespace A167307.P10739948819972892592
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167304 (n + 1) : ℚ) / (A167303 (n + 1) : ℚ) * (A167305 (n + 1) : ℚ)

end

end A167307.P10739948819972892592

namespace A167307

/-- `A167304(n+1)/A167303(n+1)*A167305(n+1)` -/
def P10739948819972892592.Spec : Prop :=
  ∀ n, P10739948819972892592.a n = (A167307 (n + 1) : ℚ)

end A167307

/-! ## A167307.P17797624866838581111

`A003959(A167303(n+1)/A166590(n+1))*A167303(n+1)`
-/

namespace A167307.P17797624866838581111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003959 (SequenceMachineLib.roundAway ((A167303 (n + 1) : ℚ) / (A166590 (n + 1) : ℚ))).toNat * A167303 (n + 1)

end

end A167307.P17797624866838581111

namespace A167307

/-- `A003959(A167303(n+1)/A166590(n+1))*A167303(n+1)` -/
def P17797624866838581111.Spec : Prop :=
  ∀ n, P17797624866838581111.a n = A167307 (n + 1)

end A167307

/-! ## A167307.P13167686053557105777

`A003959(A167305(n+1)/A167303(n+1))*A167303(n+1)`
-/

namespace A167307.P13167686053557105777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003959 (SequenceMachineLib.roundAway ((A167305 (n + 1) : ℚ) / (A167303 (n + 1) : ℚ))).toNat * A167303 (n + 1)

end

end A167307.P13167686053557105777

namespace A167307

/-- `A003959(A167305(n+1)/A167303(n+1))*A167303(n+1)` -/
def P13167686053557105777.Spec : Prop :=
  ∀ n, P13167686053557105777.a n = A167307 (n + 1)

end A167307

/-! ## A167307.P7443702532321997585

`A003959(A165826(n+1))*A166590(n+1)`
-/

namespace A167307.P7443702532321997585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003959 (A165826 (n + 1)).toNat * A166590 (n + 1)

end

end A167307.P7443702532321997585

namespace A167307

/-- `A003959(A165826(n+1))*A166590(n+1)` -/
def P7443702532321997585.Spec : Prop :=
  ∀ n, P7443702532321997585.a n = A167307 (n + 1)

end A167307

/-! ## A167307.P15812553238146211267

`A003959(A165826(n+1))/A165826(n+1)*A167306(n+1)`
-/

namespace A167307.P15812553238146211267
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003959 (A165826 (n + 1)).toNat : ℚ) / (A165826 (n + 1) : ℚ) * (A167306 (n + 1) : ℚ)

end

end A167307.P15812553238146211267

namespace A167307

/-- `A003959(A165826(n+1))/A165826(n+1)*A167306(n+1)` -/
def P15812553238146211267.Spec : Prop :=
  ∀ n, P15812553238146211267.a n = (A167307 (n + 1) : ℚ)

end A167307

/-!
# A167308: Totally multiplicative sequence with a(p) = 7*(p+2) for prime p.

The programs for A167308, the canonical program `A167308.P11709965440896012958` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A167308 has offset 1).

The definition of A167308 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A165828, A166590, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A167308.P11709965440896012958

`A165828(n+1)*A166590(n+1)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A167308

/-- `A165828(n+1)*A166590(n+1)` -/
def P11709965440896012958.Spec : Prop :=
  ∀ n, P11709965440896012958.a n = A167308 (n + 1)

theorem P11709965440896012958.correct : P11709965440896012958.Spec := by
  intro n
  simp only [A167308, Nat.add_sub_cancel]

end A167308

/-! ## A167308.P9234455142161598242

`7^A001222(n+1)*A166590(n+1)`
-/

namespace A167308.P9234455142161598242
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (7 : ℚ) ^ (A001222 (n + 1) : ℤ) * (A166590 (n + 1) : ℚ)

end

end A167308.P9234455142161598242

namespace A167308

/-- `7^A001222(n+1)*A166590(n+1)` -/
def P9234455142161598242.Spec : Prop :=
  ∀ n, P9234455142161598242.a n = (A167308 (n + 1) : ℚ)

end A167308

/-! ## A167308.P16459814950758873598

`sqrt(A165870(n+1))*A166590(n+1)`
-/

namespace A167308.P16459814950758873598
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A165870 (n + 1) : ℝ) * (A166590 (n + 1) : ℝ)

end

end A167308.P16459814950758873598

namespace A167308

/-- `sqrt(A165870(n+1))*A166590(n+1)` -/
def P16459814950758873598.Spec : Prop :=
  ∀ n, P16459814950758873598.a n = (A167308 (n + 1) : ℝ)

end A167308

/-! ## A167308.P5869681687968263539

`sqrt(A167358(n+1))*A165828(n+1)`
-/

namespace A167308.P5869681687968263539
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A167358 (n + 1) : ℝ) * (A165828 (n + 1) : ℝ)

end

end A167308.P5869681687968263539

namespace A167308

/-- `sqrt(A167358(n+1))*A165828(n+1)` -/
def P5869681687968263539.Spec : Prop :=
  ∀ n, P5869681687968263539.a n = (A167308 (n + 1) : ℝ)

end A167308

/-! ## A167308.P14287320066433828329

`A166590(n+1)*A297002(A165824(n+1))`
-/

namespace A167308.P14287320066433828329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166590 (n + 1) * A297002 (A165824 (n + 1)).toNat

end

end A167308.P14287320066433828329

namespace A167308

/-- `A166590(n+1)*A297002(A165824(n+1))` -/
def P14287320066433828329.Spec : Prop :=
  ∀ n, P14287320066433828329.a n = A167308 (n + 1)

end A167308

/-! ## A167308.P4421785631831072561

`A003961(A165826(n+1))*A166590(n+1)`
-/

namespace A167308.P4421785631831072561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (A165826 (n + 1)).toNat * A166590 (n + 1)

end

end A167308.P4421785631831072561

namespace A167308

/-- `A003961(A165826(n+1))*A166590(n+1)` -/
def P4421785631831072561.Spec : Prop :=
  ∀ n, P4421785631831072561.a n = A167308 (n + 1)

end A167308

/-! ## A167308.P6886574641487662584

`A166590(n+1)*A166590(A167306(n+1)/A166590(n+1))`
-/

namespace A167308.P6886574641487662584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166590 (n + 1) * A166590 (SequenceMachineLib.roundAway ((A167306 (n + 1) : ℚ) / (A166590 (n + 1) : ℚ))).toNat

end

end A167308.P6886574641487662584

namespace A167308

/-- `A166590(n+1)*A166590(A167306(n+1)/A166590(n+1))` -/
def P6886574641487662584.Spec : Prop :=
  ∀ n, P6886574641487662584.a n = A167308 (n + 1)

end A167308

/-!
# A167309: Totally multiplicative sequence with a(p) = 8*(p+2) for prime p.

The programs for A167309, the canonical program `A167309.P13045580764982160414` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A167309 has offset 1).

The definition of A167309 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A165829, A166590, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A167309.P13045580764982160414

`A165829(n+1)*A166590(n+1)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A167309

/-- `A165829(n+1)*A166590(n+1)` -/
def P13045580764982160414.Spec : Prop :=
  ∀ n, P13045580764982160414.a n = A167309 (n + 1)

theorem P13045580764982160414.correct : P13045580764982160414.Spec := by
  intro n
  simp only [A167309, Nat.add_sub_cancel]

end A167309

/-! ## A167309.P17941643048620563285

`8^A001222(n+1)*A166590(n+1)`
-/

namespace A167309.P17941643048620563285
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (8 : ℚ) ^ (A001222 (n + 1) : ℤ) * (A166590 (n + 1) : ℚ)

end

end A167309.P17941643048620563285

namespace A167309

/-- `8^A001222(n+1)*A166590(n+1)` -/
def P17941643048620563285.Spec : Prop :=
  ∀ n, P17941643048620563285.a n = (A167309 (n + 1) : ℚ)

end A167309

/-! ## A167309.P4433638832654672384

`A061142(n+1)*A167305(n+1)`
-/

namespace A167309.P4433638832654672384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061142 (n + 1) * A167305 (n + 1)

end

end A167309.P4433638832654672384

namespace A167309

/-- `A061142(n+1)*A167305(n+1)` -/
def P4433638832654672384.Spec : Prop :=
  ∀ n, P4433638832654672384.a n = A167309 (n + 1)

end A167309

/-! ## A167309.P9226283451611029581

`A165825(n+1)*A167303(n+1)`
-/

namespace A167309.P9226283451611029581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165825 (n + 1) * A167303 (n + 1)

end

end A167309.P9226283451611029581

namespace A167309

/-- `A165825(n+1)*A167303(n+1)` -/
def P9226283451611029581.Spec : Prop :=
  ∀ n, P9226283451611029581.a n = A167309 (n + 1)

end A167309

/-! ## A167309.P8227564828809457333

`A061142(n+1)²*A167303(n+1)`
-/

namespace A167309.P8227564828809457333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061142 (n + 1) ^ 2 * A167303 (n + 1)

end

end A167309.P8227564828809457333

namespace A167309

/-- `A061142(n+1)²*A167303(n+1)` -/
def P8227564828809457333.Spec : Prop :=
  ∀ n, P8227564828809457333.a n = A167309 (n + 1)

end A167309

/-! ## A167309.P7104505383435002802

`A167305(n+1)²/A167303(n+1)`
-/

namespace A167309.P7104505383435002802
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167305 (n + 1) ^ 2 : ℚ) / (A167303 (n + 1) : ℚ)

end

end A167309.P7104505383435002802

namespace A167309

/-- `A167305(n+1)²/A167303(n+1)` -/
def P7104505383435002802.Spec : Prop :=
  ∀ n, P7104505383435002802.a n = (A167309 (n + 1) : ℚ)

end A167309

/-! ## A167309.P290813227866095390

`A166590(n+1)*A167303(A061142(n+1))`
-/

namespace A167309.P290813227866095390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166590 (n + 1) * A167303 (A061142 (n + 1)).toNat

end

end A167309.P290813227866095390

namespace A167309

/-- `A166590(n+1)*A167303(A061142(n+1))` -/
def P290813227866095390.Spec : Prop :=
  ∀ n, P290813227866095390.a n = A167309 (n + 1)

end A167309

/-! ## A167309.P15032644487561859313

`A061142(n+1)*A165825(n+1)*A166590(n+1)`
-/

namespace A167309.P15032644487561859313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061142 (n + 1) * A165825 (n + 1) * A166590 (n + 1)

end

end A167309.P15032644487561859313

namespace A167309

/-- `A061142(n+1)*A165825(n+1)*A166590(n+1)` -/
def P15032644487561859313.Spec : Prop :=
  ∀ n, P15032644487561859313.a n = A167309 (n + 1)

end A167309

/-! ## A167309.P13340212012786889486

`A166590(n+1)/A003959(n+1)*A166648(n+1)`
-/

namespace A167309.P13340212012786889486
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166590 (n + 1) : ℚ) / (A003959 (n + 1) : ℚ) * (A166648 (n + 1) : ℚ)

end

end A167309.P13340212012786889486

namespace A167309

/-- `A166590(n+1)/A003959(n+1)*A166648(n+1)` -/
def P13340212012786889486.Spec : Prop :=
  ∀ n, P13340212012786889486.a n = (A167309 (n + 1) : ℚ)

end A167309

/-! ## A167309.P11108513151862555735

`A167303(n+1)/A166590(n+1)*A167305(n+1)`
-/

namespace A167309.P11108513151862555735
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167303 (n + 1) : ℚ) / (A166590 (n + 1) : ℚ) * (A167305 (n + 1) : ℚ)

end

end A167309.P11108513151862555735

namespace A167309

/-- `A167303(n+1)/A166590(n+1)*A167305(n+1)` -/
def P11108513151862555735.Spec : Prop :=
  ∀ n, P11108513151862555735.a n = (A167309 (n + 1) : ℚ)

end A167309

/-! ## A167309.P3355589159574496861

`A167305(n+1)²/gcd(A167305(n+1), A167307(n+1))`
-/

namespace A167309.P3355589159574496861
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167305 (n + 1) ^ 2 : ℚ) / (Int.gcd (A167305 (n + 1)) (A167307 (n + 1)) : ℚ)

end

end A167309.P3355589159574496861

namespace A167309

/-- `A167305(n+1)²/gcd(A167305(n+1), A167307(n+1))` -/
def P3355589159574496861.Spec : Prop :=
  ∀ n, P3355589159574496861.a n = (A167309 (n + 1) : ℚ)

end A167309

/-! ## A167309.P2407254058403593678

`A166590(n+1)*A167303(A167303(n+1)/A166590(n+1))`
-/

namespace A167309.P2407254058403593678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166590 (n + 1) * A167303 (SequenceMachineLib.roundAway ((A167303 (n + 1) : ℚ) / (A166590 (n + 1) : ℚ))).toNat

end

end A167309.P2407254058403593678

namespace A167309

/-- `A166590(n+1)*A167303(A167303(n+1)/A166590(n+1))` -/
def P2407254058403593678.Spec : Prop :=
  ∀ n, P2407254058403593678.a n = A167309 (n + 1)

end A167309

/-! ## A167309.P531713154270994764

`A167303(A123667(n+1))/A061142(n+1)`
-/

namespace A167309.P531713154270994764
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167303 (A123667 (n + 1)).toNat : ℚ) / (A061142 (n + 1) : ℚ)

end

end A167309.P531713154270994764

namespace A167309

/-- `A167303(A123667(n+1))/A061142(n+1)` -/
def P531713154270994764.Spec : Prop :=
  ∀ n, P531713154270994764.a n = (A167309 (n + 1) : ℚ)

end A167309

/-!
# A167310: Totally multiplicative sequence with a(p) = 9*(p+2) for prime p.

The programs for A167310, the canonical program `A167310.P14212856181125560351` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A167310 has offset 1).

The definition of A167310 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A165830, A166590, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A167310.P14212856181125560351

`A165830(n+1)*A166590(n+1)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A167310

/-- `A165830(n+1)*A166590(n+1)` -/
def P14212856181125560351.Spec : Prop :=
  ∀ n, P14212856181125560351.a n = A167310 (n + 1)

theorem P14212856181125560351.correct : P14212856181125560351.Spec := by
  intro n
  simp only [A167310, Nat.add_sub_cancel]

end A167310

/-! ## A167310.P1235928800289577181

`9^A001222(n+1)*A166590(n+1)`
-/

namespace A167310.P1235928800289577181
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (9 : ℚ) ^ (A001222 (n + 1) : ℤ) * (A166590 (n + 1) : ℚ)

end

end A167310.P1235928800289577181

namespace A167310

/-- `9^A001222(n+1)*A166590(n+1)` -/
def P1235928800289577181.Spec : Prop :=
  ∀ n, P1235928800289577181.a n = (A167310 (n + 1) : ℚ)

end A167310

/-! ## A167310.P8122309844981711356

`A165824(n+1)*A167304(n+1)`
-/

namespace A167310.P8122309844981711356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165824 (n + 1) * A167304 (n + 1)

end

end A167310.P8122309844981711356

namespace A167310

/-- `A165824(n+1)*A167304(n+1)` -/
def P8122309844981711356.Spec : Prop :=
  ∀ n, P8122309844981711356.a n = A167310 (n + 1)

end A167310

/-! ## A167310.P16696388898578515160

`A165824(n+1)²*A166590(n+1)`
-/

namespace A167310.P16696388898578515160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165824 (n + 1) ^ 2 * A166590 (n + 1)

end

end A167310.P16696388898578515160

namespace A167310

/-- `A165824(n+1)²*A166590(n+1)` -/
def P16696388898578515160.Spec : Prop :=
  ∀ n, P16696388898578515160.a n = A167310 (n + 1)

end A167310

/-! ## A167310.P3461602105294921417

`A167304(n+1)²/A166590(n+1)`
-/

namespace A167310.P3461602105294921417
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167304 (n + 1) ^ 2 : ℚ) / (A166590 (n + 1) : ℚ)

end

end A167310.P3461602105294921417

namespace A167310

/-- `A167304(n+1)²/A166590(n+1)` -/
def P3461602105294921417.Spec : Prop :=
  ∀ n, P3461602105294921417.a n = (A167310 (n + 1) : ℚ)

end A167310

/-! ## A167310.P8045317486281034673

`A167307(n+1)²/A167305(n+1)`
-/

namespace A167310.P8045317486281034673
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167307 (n + 1) ^ 2 : ℚ) / (A167305 (n + 1) : ℚ)

end

end A167310.P8045317486281034673

namespace A167310

/-- `A167307(n+1)²/A167305(n+1)` -/
def P8045317486281034673.Spec : Prop :=
  ∀ n, P8045317486281034673.a n = (A167310 (n + 1) : ℚ)

end A167310

/-! ## A167310.P5363922571383249522

`A166633(A061142(n+1))*A167304(n+1)`
-/

namespace A167310.P5363922571383249522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166633 (A061142 (n + 1)).toNat * A167304 (n + 1)

end

end A167310.P5363922571383249522

namespace A167310

/-- `A166633(A061142(n+1))*A167304(n+1)` -/
def P5363922571383249522.Spec : Prop :=
  ∀ n, P5363922571383249522.a n = A167310 (n + 1)

end A167310

/-! ## A167310.P13983446310800028397

`A003959(A061142(n+1))²*A166590(n+1)`
-/

namespace A167310.P13983446310800028397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003959 (A061142 (n + 1)).toNat ^ 2 * A166590 (n + 1)

end

end A167310.P13983446310800028397

namespace A167310

/-- `A003959(A061142(n+1))²*A166590(n+1)` -/
def P13983446310800028397.Spec : Prop :=
  ∀ n, P13983446310800028397.a n = A167310 (n + 1)

end A167310

/-! ## A167310.P14660140712435281880

`(A165824(n+1)/A061142(n+1))²*A167305(n+1)`
-/

namespace A167310.P14660140712435281880
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A165824 (n + 1) : ℚ) / (A061142 (n + 1) : ℚ)) ^ 2 * (A167305 (n + 1) : ℚ)

end

end A167310.P14660140712435281880

namespace A167310

/-- `(A165824(n+1)/A061142(n+1))²*A167305(n+1)` -/
def P14660140712435281880.Spec : Prop :=
  ∀ n, P14660140712435281880.a n = (A167310 (n + 1) : ℚ)

end A167310

/-! ## A167310.P2691200882435132933

`A165824(n+1)²/A165825(n+1)*A167305(n+1)`
-/

namespace A167310.P2691200882435132933
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A165824 (n + 1) ^ 2 : ℚ) / (A165825 (n + 1) : ℚ) * (A167305 (n + 1) : ℚ)

end

end A167310.P2691200882435132933

namespace A167310

/-- `A165824(n+1)²/A165825(n+1)*A167305(n+1)` -/
def P2691200882435132933.Spec : Prop :=
  ∀ n, P2691200882435132933.a n = (A167310 (n + 1) : ℚ)

end A167310

/-! ## A167310.P3041207846015896466

`(A167304(n+1)/A167303(n+1))²*A167305(n+1)`
-/

namespace A167310.P3041207846015896466
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A167304 (n + 1) : ℚ) / (A167303 (n + 1) : ℚ)) ^ 2 * (A167305 (n + 1) : ℚ)

end

end A167310.P3041207846015896466

namespace A167310

/-- `(A167304(n+1)/A167303(n+1))²*A167305(n+1)` -/
def P3041207846015896466.Spec : Prop :=
  ∀ n, P3041207846015896466.a n = (A167310 (n + 1) : ℚ)

end A167310

/-! ## A167310.P13175460365925395328

`A003959(A165825(n+1))*A166590(n+1)`
-/

namespace A167310.P13175460365925395328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003959 (A165825 (n + 1)).toNat * A166590 (n + 1)

end

end A167310.P13175460365925395328

namespace A167310

/-- `A003959(A165825(n+1))*A166590(n+1)` -/
def P13175460365925395328.Spec : Prop :=
  ∀ n, P13175460365925395328.a n = A167310 (n + 1)

end A167310

/-! ## A167310.P16151325289972223234

`A165824(n+1)*A166590(n+1)*A165824(A297002(n+1))`
-/

namespace A167310.P16151325289972223234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165824 (n + 1) * A166590 (n + 1) * A165824 (A297002 (n + 1)).toNat

end

end A167310.P16151325289972223234

namespace A167310

/-- `A165824(n+1)*A166590(n+1)*A165824(A297002(n+1))` -/
def P16151325289972223234.Spec : Prop :=
  ∀ n, P16151325289972223234.a n = A167310 (n + 1)

end A167310

/-!
# A167311: Totally multiplicative sequence with a(p) = 10*(p+2) for prime p.

The programs for A167311, the canonical program `A167311.P16369773176810613857` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A167311 has offset 1).

The definition of A167311 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A165831, A166590, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A167311.P16369773176810613857

`A165831(n+1)*A166590(n+1)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A167311

/-- `A165831(n+1)*A166590(n+1)` -/
def P16369773176810613857.Spec : Prop :=
  ∀ n, P16369773176810613857.a n = A167311 (n + 1)

theorem P16369773176810613857.correct : P16369773176810613857.Spec := by
  intro n
  simp only [A167311, Nat.add_sub_cancel]

end A167311

/-! ## A167311.P2071968448437985215

`10^A001222(n+1)*A166590(n+1)`
-/

namespace A167311.P2071968448437985215
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (10 : ℚ) ^ (A001222 (n + 1) : ℤ) * (A166590 (n + 1) : ℚ)

end

end A167311.P2071968448437985215

namespace A167311

/-- `10^A001222(n+1)*A166590(n+1)` -/
def P2071968448437985215.Spec : Prop :=
  ∀ n, P2071968448437985215.a n = (A167311 (n + 1) : ℚ)

end A167311

/-! ## A167311.P17036254582799017933

`A061142(n+1)*A167306(n+1)`
-/

namespace A167311.P17036254582799017933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061142 (n + 1) * A167306 (n + 1)

end

end A167311.P17036254582799017933

namespace A167311

/-- `A061142(n+1)*A167306(n+1)` -/
def P17036254582799017933.Spec : Prop :=
  ∀ n, P17036254582799017933.a n = A167311 (n + 1)

end A167311

/-! ## A167311.P17678493957157655408

`A165826(n+1)*A167303(n+1)`
-/

namespace A167311.P17678493957157655408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165826 (n + 1) * A167303 (n + 1)

end

end A167311.P17678493957157655408

namespace A167311

/-- `A165826(n+1)*A167303(n+1)` -/
def P17678493957157655408.Spec : Prop :=
  ∀ n, P17678493957157655408.a n = A167311 (n + 1)

end A167311

/-! ## A167311.P4289046447758701850

`lcm(A167303(n+1), A167306(n+1))`
-/

namespace A167311.P4289046447758701850
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A167303 (n + 1)) (A167306 (n + 1))

end

end A167311.P4289046447758701850

namespace A167311

/-- `lcm(A167303(n+1), A167306(n+1))` -/
def P4289046447758701850.Spec : Prop :=
  ∀ n, (P4289046447758701850.a n : ℤ) = A167311 (n + 1)

end A167311

/-! ## A167311.P13964179481801810190

`A166590(n+1)*A167321(A061142(n+1))`
-/

namespace A167311.P13964179481801810190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166590 (n + 1) * A167321 (A061142 (n + 1)).toNat

end

end A167311.P13964179481801810190

namespace A167311

/-- `A166590(n+1)*A167321(A061142(n+1))` -/
def P13964179481801810190.Spec : Prop :=
  ∀ n, P13964179481801810190.a n = A167311 (n + 1)

end A167311

/-! ## A167311.P13526518839478139475

`A166590(n+1)/A003959(n+1)*A166650(n+1)`
-/

namespace A167311.P13526518839478139475
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166590 (n + 1) : ℚ) / (A003959 (n + 1) : ℚ) * (A166650 (n + 1) : ℚ)

end

end A167311.P13526518839478139475

namespace A167311

/-- `A166590(n+1)/A003959(n+1)*A166650(n+1)` -/
def P13526518839478139475.Spec : Prop :=
  ∀ n, P13526518839478139475.a n = (A167311 (n + 1) : ℚ)

end A167311

/-! ## A167311.P11691128743526374918

`A167303(n+1)/A166590(n+1)*A167306(n+1)`
-/

namespace A167311.P11691128743526374918
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167303 (n + 1) : ℚ) / (A166590 (n + 1) : ℚ) * (A167306 (n + 1) : ℚ)

end

end A167311.P11691128743526374918

namespace A167311

/-- `A167303(n+1)/A166590(n+1)*A167306(n+1)` -/
def P11691128743526374918.Spec : Prop :=
  ∀ n, P11691128743526374918.a n = (A167311 (n + 1) : ℚ)

end A167311

/-! ## A167311.P15045551888446056428

`A167305(n+1)/A167303(n+1)*A167306(n+1)`
-/

namespace A167311.P15045551888446056428
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167305 (n + 1) : ℚ) / (A167303 (n + 1) : ℚ) * (A167306 (n + 1) : ℚ)

end

end A167311.P15045551888446056428

namespace A167311

/-- `A167305(n+1)/A167303(n+1)*A167306(n+1)` -/
def P15045551888446056428.Spec : Prop :=
  ∀ n, P15045551888446056428.a n = (A167311 (n + 1) : ℚ)

end A167311

/-! ## A167311.P2435107662833884547

`A167306(n+1)/A167305(n+1)*A167309(n+1)`
-/

namespace A167311.P2435107662833884547
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167306 (n + 1) : ℚ) / (A167305 (n + 1) : ℚ) * (A167309 (n + 1) : ℚ)

end

end A167311.P2435107662833884547

namespace A167311

/-- `A167306(n+1)/A167305(n+1)*A167309(n+1)` -/
def P2435107662833884547.Spec : Prop :=
  ∀ n, P2435107662833884547.a n = (A167311 (n + 1) : ℚ)

end A167311

/-! ## A167311.P2524820265201675299

`A166590(n+1)*A167346(A165824(n+1))`
-/

namespace A167311.P2524820265201675299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166590 (n + 1) * A167346 (A165824 (n + 1)).toNat

end

end A167311.P2524820265201675299

namespace A167311

/-- `A166590(n+1)*A167346(A165824(n+1))` -/
def P2524820265201675299.Spec : Prop :=
  ∀ n, P2524820265201675299.a n = A167311 (n + 1)

end A167311

/-! ## A167311.P11031333379891155386

`A061142(n+1)*A166590(A165824(n+1))*A166590(n+1)`
-/

namespace A167311.P11031333379891155386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061142 (n + 1) * A166590 (A165824 (n + 1)).toNat * A166590 (n + 1)

end

end A167311.P11031333379891155386

namespace A167311

/-- `A061142(n+1)*A166590(A165824(n+1))*A166590(n+1)` -/
def P11031333379891155386.Spec : Prop :=
  ∀ n, P11031333379891155386.a n = A167311 (n + 1)

end A167311

/-! ## A167311.P2147757927088893144

`A166590(n+1)*A167303(A167304(n+1)/A166590(n+1))`
-/

namespace A167311.P2147757927088893144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166590 (n + 1) * A167303 (SequenceMachineLib.roundAway ((A167304 (n + 1) : ℚ) / (A166590 (n + 1) : ℚ))).toNat

end

end A167311.P2147757927088893144

namespace A167311

/-- `A166590(n+1)*A167303(A167304(n+1)/A166590(n+1))` -/
def P2147757927088893144.Spec : Prop :=
  ∀ n, P2147757927088893144.a n = A167311 (n + 1)

end A167311

/-!
# A167312: Totally multiplicative sequence with a(p) = 2*(p-3) for prime p.

The programs for A167312, the canonical program `A167312.P10911823798209180809` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A167312 has offset 1).

The definition of A167312 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A061142, A166589, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A167312.P10911823798209180809

`A061142(n+1)*A166589(n+1)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A167312

/-- `A061142(n+1)*A166589(n+1)` -/
def P10911823798209180809.Spec : Prop :=
  ∀ n, P10911823798209180809.a n = A167312 (n + 1)

theorem P10911823798209180809.correct : P10911823798209180809.Spec := by
  intro n
  simp only [A167312, Nat.add_sub_cancel]

end A167312

/-! ## A167312.P13499202812731863347

`2^A001222(n+1)*A166589(n+1)`
-/

namespace A167312.P13499202812731863347
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A001222 (n + 1) : ℤ) * (A166589 (n + 1) : ℚ)

end

end A167312.P13499202812731863347

namespace A167312

/-- `2^A001222(n+1)*A166589(n+1)` -/
def P13499202812731863347.Spec : Prop :=
  ∀ n, P13499202812731863347.a n = (A167312 (n + 1) : ℚ)

end A167312

/-! ## A167312.P12029090294301940031

`A167314(n+1)/A061142(n+1)`
-/

namespace A167312.P12029090294301940031
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167314 (n + 1) : ℚ) / (A061142 (n + 1) : ℚ)

end

end A167312.P12029090294301940031

namespace A167312

/-- `A167314(n+1)/A061142(n+1)` -/
def P12029090294301940031.Spec : Prop :=
  ∀ n, P12029090294301940031.a n = (A167312 (n + 1) : ℚ)

end A167312

/-! ## A167312.P11523283174279782747

`A167316(n+1)/A165824(n+1)`
-/

namespace A167312.P11523283174279782747
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167316 (n + 1) : ℚ) / (A165824 (n + 1) : ℚ)

end

end A167312.P11523283174279782747

namespace A167312

/-- `A167316(n+1)/A165824(n+1)` -/
def P11523283174279782747.Spec : Prop :=
  ∀ n, P11523283174279782747.a n = (A167312 (n + 1) : ℚ)

end A167312

/-! ## A167312.P8542803320089545895

`A167318(n+1)/A165825(n+1)`
-/

namespace A167312.P8542803320089545895
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167318 (n + 1) : ℚ) / (A165825 (n + 1) : ℚ)

end

end A167312.P8542803320089545895

namespace A167312

/-- `A167318(n+1)/A165825(n+1)` -/
def P8542803320089545895.Spec : Prop :=
  ∀ n, P8542803320089545895.a n = (A167312 (n + 1) : ℚ)

end A167312

/-! ## A167312.P15985272041085262119

`A167320(n+1)/A165826(n+1)`
-/

namespace A167312.P15985272041085262119
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167320 (n + 1) : ℚ) / (A165826 (n + 1) : ℚ)

end

end A167312.P15985272041085262119

namespace A167312

/-- `A167320(n+1)/A165826(n+1)` -/
def P15985272041085262119.Spec : Prop :=
  ∀ n, P15985272041085262119.a n = (A167312 (n + 1) : ℚ)

end A167312

/-! ## A167312.P10763597527754994215

`A167318(n+1)/A061142(n+1)²`
-/

namespace A167312.P10763597527754994215
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167318 (n + 1) : ℚ) / (A061142 (n + 1) ^ 2 : ℚ)

end

end A167312.P10763597527754994215

namespace A167312

/-- `A167318(n+1)/A061142(n+1)²` -/
def P10763597527754994215.Spec : Prop :=
  ∀ n, P10763597527754994215.a n = (A167312 (n + 1) : ℚ)

end A167312

/-! ## A167312.P2274373284604367091

`A167314(n+1)/sqrt(A165825(n+1))`
-/

namespace A167312.P2274373284604367091
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A167314 (n + 1) : ℝ) / Real.sqrt (A165825 (n + 1) : ℝ)

end

end A167312.P2274373284604367091

namespace A167312

/-- `A167314(n+1)/sqrt(A165825(n+1))` -/
def P2274373284604367091.Spec : Prop :=
  ∀ n, P2274373284604367091.a n = (A167312 (n + 1) : ℝ)

end A167312

/-! ## A167312.P16709697745992519720

`A166589(n+1)/A003959(n+1)*A166642(n+1)`
-/

namespace A167312.P16709697745992519720
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166589 (n + 1) : ℚ) / (A003959 (n + 1) : ℚ) * (A166642 (n + 1) : ℚ)

end

end A167312.P16709697745992519720

namespace A167312

/-- `A166589(n+1)/A003959(n+1)*A166642(n+1)` -/
def P16709697745992519720.Spec : Prop :=
  ∀ n, P16709697745992519720.a n = (A167312 (n + 1) : ℚ)

end A167312

/-! ## A167312.P3555541245668286660

`A061142(n+1)/A165824(n+1)*A167313(n+1)`
-/

namespace A167312.P3555541245668286660
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061142 (n + 1) : ℚ) / (A165824 (n + 1) : ℚ) * (A167313 (n + 1) : ℚ)

end

end A167312.P3555541245668286660

namespace A167312

/-- `A061142(n+1)/A165824(n+1)*A167313(n+1)` -/
def P3555541245668286660.Spec : Prop :=
  ∀ n, P3555541245668286660.a n = (A167312 (n + 1) : ℚ)

end A167312

/-! ## A167312.P7473556295636789263

`A061142(n+1)/A166590(n+1)*A167359(n+1)`
-/

namespace A167312.P7473556295636789263
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061142 (n + 1) : ℚ) / (A166590 (n + 1) : ℚ) * (A167359 (n + 1) : ℚ)

end

end A167312.P7473556295636789263

namespace A167312

/-- `A061142(n+1)/A166590(n+1)*A167359(n+1)` -/
def P7473556295636789263.Spec : Prop :=
  ∀ n, P7473556295636789263.a n = (A167312 (n + 1) : ℚ)

end A167312

/-! ## A167312.P10829222720785623799

`A165829(n+1)/A167305(n+1)*A167359(n+1)`
-/

namespace A167312.P10829222720785623799
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A165829 (n + 1) : ℚ) / (A167305 (n + 1) : ℚ) * (A167359 (n + 1) : ℚ)

end

end A167312.P10829222720785623799

namespace A167312

/-- `A165829(n+1)/A167305(n+1)*A167359(n+1)` -/
def P10829222720785623799.Spec : Prop :=
  ∀ n, P10829222720785623799.a n = (A167312 (n + 1) : ℚ)

end A167312

/-! ## A167312.P10689695386115080745

`A061142(n+1)²/A165827(n+1)*A167313(n+1)`
-/

namespace A167312.P10689695386115080745
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061142 (n + 1) ^ 2 : ℚ) / (A165827 (n + 1) : ℚ) * (A167313 (n + 1) : ℚ)

end

end A167312.P10689695386115080745

namespace A167312

/-- `A061142(n+1)²/A165827(n+1)*A167313(n+1)` -/
def P10689695386115080745.Spec : Prop :=
  ∀ n, P10689695386115080745.a n = (A167312 (n + 1) : ℚ)

end A167312

/-! ## A167312.P16894586921047419666

`A003958(A165827(n+1))/A165827(n+1)*A167316(n+1)`
-/

namespace A167312.P16894586921047419666
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003958 (A165827 (n + 1)).toNat : ℚ) / (A165827 (n + 1) : ℚ) * (A167316 (n + 1) : ℚ)

end

end A167312.P16894586921047419666

namespace A167312

/-- `A003958(A165827(n+1))/A165827(n+1)*A167316(n+1)` -/
def P16894586921047419666.Spec : Prop :=
  ∀ n, P16894586921047419666.a n = (A167312 (n + 1) : ℚ)

end A167312

/-!
# A167313: Totally multiplicative sequence with a(p) = 3*(p-3) for prime p.

The programs for A167313, the canonical program `A167313.P15207471418219056829` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A167313 has offset 1).

The definition of A167313 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A165824, A166589, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A167313.P15207471418219056829

`A165824(n+1)*A166589(n+1)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A167313

/-- `A165824(n+1)*A166589(n+1)` -/
def P15207471418219056829.Spec : Prop :=
  ∀ n, P15207471418219056829.a n = A167313 (n + 1)

theorem P15207471418219056829.correct : P15207471418219056829.Spec := by
  intro n
  simp only [A167313, Nat.add_sub_cancel]

end A167313

/-! ## A167313.P17629487171749519839

`3^A001222(n+1)*A166589(n+1)`
-/

namespace A167313.P17629487171749519839
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (A001222 (n + 1) : ℤ) * (A166589 (n + 1) : ℚ)

end

end A167313.P17629487171749519839

namespace A167313

/-- `3^A001222(n+1)*A166589(n+1)` -/
def P17629487171749519839.Spec : Prop :=
  ∀ n, P17629487171749519839.a n = (A167313 (n + 1) : ℚ)

end A167313

/-! ## A167313.P4520732602300911144

`A167316(n+1)/A061142(n+1)`
-/

namespace A167313.P4520732602300911144
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167316 (n + 1) : ℚ) / (A061142 (n + 1) : ℚ)

end

end A167313.P4520732602300911144

namespace A167313

/-- `A167316(n+1)/A061142(n+1)` -/
def P4520732602300911144.Spec : Prop :=
  ∀ n, P4520732602300911144.a n = (A167313 (n + 1) : ℚ)

end A167313

/-! ## A167313.P10490117293968485943

`A167319(n+1)/A165824(n+1)`
-/

namespace A167313.P10490117293968485943
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167319 (n + 1) : ℚ) / (A165824 (n + 1) : ℚ)

end

end A167313.P10490117293968485943

namespace A167313

/-- `A167319(n+1)/A165824(n+1)` -/
def P10490117293968485943.Spec : Prop :=
  ∀ n, P10490117293968485943.a n = (A167313 (n + 1) : ℚ)

end A167313

/-! ## A167313.P5967787903837740052

`A167316(n+1)/2^A001222(n+1)`
-/

namespace A167313.P5967787903837740052
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167316 (n + 1) : ℚ) / (2 : ℚ) ^ (A001222 (n + 1) : ℤ)

end

end A167313.P5967787903837740052

namespace A167313

/-- `A167316(n+1)/2^A001222(n+1)` -/
def P5967787903837740052.Spec : Prop :=
  ∀ n, P5967787903837740052.a n = (A167313 (n + 1) : ℚ)

end A167313

/-! ## A167313.P17375819570437470650

`A167319(n+1)/3^A001222(n+1)`
-/

namespace A167313.P17375819570437470650
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167319 (n + 1) : ℚ) / (3 : ℚ) ^ (A001222 (n + 1) : ℤ)

end

end A167313.P17375819570437470650

namespace A167313

/-- `A167319(n+1)/3^A001222(n+1)` -/
def P17375819570437470650.Spec : Prop :=
  ∀ n, P17375819570437470650.a n = (A167313 (n + 1) : ℚ)

end A167313

/-! ## A167313.P8233116323786774273

`A165824(n+1)/A003959(n+1)*A167352(n+1)`
-/

namespace A167313.P8233116323786774273
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A165824 (n + 1) : ℚ) / (A003959 (n + 1) : ℚ) * (A167352 (n + 1) : ℚ)

end

end A167313.P8233116323786774273

namespace A167313

/-- `A165824(n+1)/A003959(n+1)*A167352(n+1)` -/
def P8233116323786774273.Spec : Prop :=
  ∀ n, P8233116323786774273.a n = (A167313 (n + 1) : ℚ)

end A167313

/-! ## A167313.P9817432998094758371

`A166589(n+1)/A003959(n+1)*A166643(n+1)`
-/

namespace A167313.P9817432998094758371
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166589 (n + 1) : ℚ) / (A003959 (n + 1) : ℚ) * (A166643 (n + 1) : ℚ)

end

end A167313.P9817432998094758371

namespace A167313

/-- `A166589(n+1)/A003959(n+1)*A166643(n+1)` -/
def P9817432998094758371.Spec : Prop :=
  ∀ n, P9817432998094758371.a n = (A167313 (n + 1) : ℚ)

end A167313

/-! ## A167313.P16467037971882644911

`A165824(n+1)/A165825(n+1)*A167314(n+1)`
-/

namespace A167313.P16467037971882644911
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A165824 (n + 1) : ℚ) / (A165825 (n + 1) : ℚ) * (A167314 (n + 1) : ℚ)

end

end A167313.P16467037971882644911

namespace A167313

/-- `A165824(n+1)/A165825(n+1)*A167314(n+1)` -/
def P16467037971882644911.Spec : Prop :=
  ∀ n, P16467037971882644911.a n = (A167313 (n + 1) : ℚ)

end A167313

/-! ## A167313.P15868003671393262332

`A165824(n+1)/A166590(n+1)*A167359(n+1)`
-/

namespace A167313.P15868003671393262332
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A165824 (n + 1) : ℚ) / (A166590 (n + 1) : ℚ) * (A167359 (n + 1) : ℚ)

end

end A167313.P15868003671393262332

namespace A167313

/-- `A165824(n+1)/A166590(n+1)*A167359(n+1)` -/
def P15868003671393262332.Spec : Prop :=
  ∀ n, P15868003671393262332.a n = (A167313 (n + 1) : ℚ)

end A167313

/-! ## A167313.P7795698214058745953

`A166633(n+1)/A166634(n+1)*A167314(n+1)`
-/

namespace A167313.P7795698214058745953
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166633 (n + 1) : ℚ) / (A166634 (n + 1) : ℚ) * (A167314 (n + 1) : ℚ)

end

end A167313.P7795698214058745953

namespace A167313

/-- `A166633(n+1)/A166634(n+1)*A167314(n+1)` -/
def P7795698214058745953.Spec : Prop :=
  ∀ n, P7795698214058745953.a n = (A167313 (n + 1) : ℚ)

end A167313

/-! ## A167313.P13781873784539915723

`A165824(n+1)/A061142(n+1)²*A167314(n+1)`
-/

namespace A167313.P13781873784539915723
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A165824 (n + 1) : ℚ) / (A061142 (n + 1) ^ 2 : ℚ) * (A167314 (n + 1) : ℚ)

end

end A167313.P13781873784539915723

namespace A167313

/-- `A165824(n+1)/A061142(n+1)²*A167314(n+1)` -/
def P13781873784539915723.Spec : Prop :=
  ∀ n, P13781873784539915723.a n = (A167313 (n + 1) : ℚ)

end A167313

/-! ## A167313.P2413588610911970423

`A165827(n+1)/A061142(n+1)²*A167312(n+1)`
-/

namespace A167313.P2413588610911970423
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A165827 (n + 1) : ℚ) / (A061142 (n + 1) ^ 2 : ℚ) * (A167312 (n + 1) : ℚ)

end

end A167313.P2413588610911970423

namespace A167313

/-- `A165827(n+1)/A061142(n+1)²*A167312(n+1)` -/
def P2413588610911970423.Spec : Prop :=
  ∀ n, P2413588610911970423.a n = (A167313 (n + 1) : ℚ)

end A167313

/-! ## A167313.P7806186520669952738

`A167316(n+1)/A003958(A165827(n+1))`
-/

namespace A167313.P7806186520669952738
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167316 (n + 1) : ℚ) / (A003958 (A165827 (n + 1)).toNat : ℚ)

end

end A167313.P7806186520669952738

namespace A167313

/-- `A167316(n+1)/A003958(A165827(n+1))` -/
def P7806186520669952738.Spec : Prop :=
  ∀ n, P7806186520669952738.a n = (A167313 (n + 1) : ℚ)

end A167313

/-!
# A167314: Totally multiplicative sequence with a(p) = 4*(p-3) for prime p.

The programs for A167314, the canonical program `A167314.P3635504864313680750` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A167314 has offset 1).

The definition of A167314 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A165825, A166589, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A167314.P3635504864313680750

`A165825(n+1)*A166589(n+1)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A167314

/-- `A165825(n+1)*A166589(n+1)` -/
def P3635504864313680750.Spec : Prop :=
  ∀ n, P3635504864313680750.a n = A167314 (n + 1)

theorem P3635504864313680750.correct : P3635504864313680750.Spec := by
  intro n
  simp only [A167314, Nat.add_sub_cancel]

end A167314

/-! ## A167314.P16375371667123722733

`4^A001222(n+1)*A166589(n+1)`
-/

namespace A167314.P16375371667123722733
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 : ℚ) ^ (A001222 (n + 1) : ℤ) * (A166589 (n + 1) : ℚ)

end

end A167314.P16375371667123722733

namespace A167314

/-- `4^A001222(n+1)*A166589(n+1)` -/
def P16375371667123722733.Spec : Prop :=
  ∀ n, P16375371667123722733.a n = (A167314 (n + 1) : ℚ)

end A167314

/-! ## A167314.P11835256300113952913

`A061142(n+1)*A167312(n+1)`
-/

namespace A167314.P11835256300113952913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061142 (n + 1) * A167312 (n + 1)

end

end A167314.P11835256300113952913

namespace A167314

/-- `A061142(n+1)*A167312(n+1)` -/
def P11835256300113952913.Spec : Prop :=
  ∀ n, P11835256300113952913.a n = A167314 (n + 1)

end A167314

/-! ## A167314.P15385054439227295000

`A167318(n+1)/A061142(n+1)`
-/

namespace A167314.P15385054439227295000
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167318 (n + 1) : ℚ) / (A061142 (n + 1) : ℚ)

end

end A167314.P15385054439227295000

namespace A167314

/-- `A167318(n+1)/A061142(n+1)` -/
def P15385054439227295000.Spec : Prop :=
  ∀ n, P15385054439227295000.a n = (A167314 (n + 1) : ℚ)

end A167314

/-! ## A167314.P16695099177149504553

`A061142(n+1)²*A166589(n+1)`
-/

namespace A167314.P16695099177149504553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061142 (n + 1) ^ 2 * A166589 (n + 1)

end

end A167314.P16695099177149504553

namespace A167314

/-- `A061142(n+1)²*A166589(n+1)` -/
def P16695099177149504553.Spec : Prop :=
  ∀ n, P16695099177149504553.a n = A167314 (n + 1)

end A167314

/-! ## A167314.P7784100348319610404

`sqrt(A165825(n+1))*A167312(n+1)`
-/

namespace A167314.P7784100348319610404
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A165825 (n + 1) : ℝ) * (A167312 (n + 1) : ℝ)

end

end A167314.P7784100348319610404

namespace A167314

/-- `sqrt(A165825(n+1))*A167312(n+1)` -/
def P7784100348319610404.Spec : Prop :=
  ∀ n, P7784100348319610404.a n = (A167314 (n + 1) : ℝ)

end A167314

/-! ## A167314.P12224838769428472031

`A000079(A001222(n+1))*A167312(n+1)`
-/

namespace A167314.P12224838769428472031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A001222 (n + 1)).toNat * A167312 (n + 1)

end

end A167314.P12224838769428472031

namespace A167314

/-- `A000079(A001222(n+1))*A167312(n+1)` -/
def P12224838769428472031.Spec : Prop :=
  ∀ n, P12224838769428472031.a n = A167314 (n + 1)

end A167314

/-! ## A167314.P17204487927939087210

`A165825(n+1)/A003959(n+1)*A167352(n+1)`
-/

namespace A167314.P17204487927939087210
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A165825 (n + 1) : ℚ) / (A003959 (n + 1) : ℚ) * (A167352 (n + 1) : ℚ)

end

end A167314.P17204487927939087210

namespace A167314

/-- `A165825(n+1)/A003959(n+1)*A167352(n+1)` -/
def P17204487927939087210.Spec : Prop :=
  ∀ n, P17204487927939087210.a n = (A167314 (n + 1) : ℚ)

end A167314

/-! ## A167314.P6765507673795943518

`A166589(n+1)/A003959(n+1)*A166644(n+1)`
-/

namespace A167314.P6765507673795943518
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166589 (n + 1) : ℚ) / (A003959 (n + 1) : ℚ) * (A166644 (n + 1) : ℚ)

end

end A167314.P6765507673795943518

namespace A167314

/-- `A166589(n+1)/A003959(n+1)*A166644(n+1)` -/
def P6765507673795943518.Spec : Prop :=
  ∀ n, P6765507673795943518.a n = (A167314 (n + 1) : ℚ)

end A167314

/-! ## A167314.P4034766738734156717

`A165825(n+1)/A166590(n+1)*A167359(n+1)`
-/

namespace A167314.P4034766738734156717
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A165825 (n + 1) : ℚ) / (A166590 (n + 1) : ℚ) * (A167359 (n + 1) : ℚ)

end

end A167314.P4034766738734156717

namespace A167314

/-- `A165825(n+1)/A166590(n+1)*A167359(n+1)` -/
def P4034766738734156717.Spec : Prop :=
  ∀ n, P4034766738734156717.a n = (A167314 (n + 1) : ℚ)

end A167314

/-! ## A167314.P11853294756343406044

`A061142(n+1)²/A165824(n+1)*A167313(n+1)`
-/

namespace A167314.P11853294756343406044
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061142 (n + 1) ^ 2 : ℚ) / (A165824 (n + 1) : ℚ) * (A167313 (n + 1) : ℚ)

end

end A167314.P11853294756343406044

namespace A167314

/-- `A061142(n+1)²/A165824(n+1)*A167313(n+1)` -/
def P11853294756343406044.Spec : Prop :=
  ∀ n, P11853294756343406044.a n = (A167314 (n + 1) : ℚ)

end A167314

/-! ## A167314.P10358507494466918414

`A003959(A165824(n+1))/A003959(n+1)*A167352(n+1)`
-/

namespace A167314.P10358507494466918414
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003959 (A165824 (n + 1)).toNat : ℚ) / (A003959 (n + 1) : ℚ) * (A167352 (n + 1) : ℚ)

end

end A167314.P10358507494466918414

namespace A167314

/-- `A003959(A165824(n+1))/A003959(n+1)*A167352(n+1)` -/
def P10358507494466918414.Spec : Prop :=
  ∀ n, P10358507494466918414.a n = (A167314 (n + 1) : ℚ)

end A167314

/-! ## A167314.P9641546474867140210

`A167294(A165824(n+1))*A167312(n+1)`
-/

namespace A167314.P9641546474867140210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167294 (A165824 (n + 1)).toNat * A167312 (n + 1)

end

end A167314.P9641546474867140210

namespace A167314

/-- `A167294(A165824(n+1))*A167312(n+1)` -/
def P9641546474867140210.Spec : Prop :=
  ∀ n, P9641546474867140210.a n = A167314 (n + 1)

end A167314

/-! ## A167314.P1645983259682431220

`A003958(A165826(n+1))/A165826(n+1)*A167315(n+1)`
-/

namespace A167314.P1645983259682431220
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003958 (A165826 (n + 1)).toNat : ℚ) / (A165826 (n + 1) : ℚ) * (A167315 (n + 1) : ℚ)

end

end A167314.P1645983259682431220

namespace A167314

/-- `A003958(A165826(n+1))/A165826(n+1)*A167315(n+1)` -/
def P1645983259682431220.Spec : Prop :=
  ∀ n, P1645983259682431220.a n = (A167314 (n + 1) : ℚ)

end A167314

/-!
# A167315: Totally multiplicative sequence with a(p) = 5*(p-3) for prime p.

The programs for A167315, the canonical program `A167315.P14894891535969345852` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A167315 has offset 1).

The definition of A167315 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A165826, A166589, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A167315.P14894891535969345852

`A165826(n+1)*A166589(n+1)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A167315

/-- `A165826(n+1)*A166589(n+1)` -/
def P14894891535969345852.Spec : Prop :=
  ∀ n, P14894891535969345852.a n = A167315 (n + 1)

theorem P14894891535969345852.correct : P14894891535969345852.Spec := by
  intro n
  simp only [A167315, Nat.add_sub_cancel]

end A167315

/-! ## A167315.P378376471276964875

`5^A001222(n+1)*A166589(n+1)`
-/

namespace A167315.P378376471276964875
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 : ℚ) ^ (A001222 (n + 1) : ℤ) * (A166589 (n + 1) : ℚ)

end

end A167315.P378376471276964875

namespace A167315

/-- `5^A001222(n+1)*A166589(n+1)` -/
def P378376471276964875.Spec : Prop :=
  ∀ n, P378376471276964875.a n = (A167315 (n + 1) : ℚ)

end A167315

/-! ## A167315.P17841943213013973374

`A167320(n+1)/A061142(n+1)`
-/

namespace A167315.P17841943213013973374
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167320 (n + 1) : ℚ) / (A061142 (n + 1) : ℚ)

end

end A167315.P17841943213013973374

namespace A167315

/-- `A167320(n+1)/A061142(n+1)` -/
def P17841943213013973374.Spec : Prop :=
  ∀ n, P17841943213013973374.a n = (A167315 (n + 1) : ℚ)

end A167315

/-! ## A167315.P9579955421038518176

`A167320(n+1)/A000079(A001222(n+1))`
-/

namespace A167315.P9579955421038518176
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167320 (n + 1) : ℚ) / (A000079 (A001222 (n + 1)).toNat : ℚ)

end

end A167315.P9579955421038518176

namespace A167315

/-- `A167320(n+1)/A000079(A001222(n+1))` -/
def P9579955421038518176.Spec : Prop :=
  ∀ n, P9579955421038518176.a n = (A167315 (n + 1) : ℚ)

end A167315

/-! ## A167315.P3705730211505125966

`A165826(n+1)/A003959(n+1)*A167352(n+1)`
-/

namespace A167315.P3705730211505125966
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A165826 (n + 1) : ℚ) / (A003959 (n + 1) : ℚ) * (A167352 (n + 1) : ℚ)

end

end A167315.P3705730211505125966

namespace A167315

/-- `A165826(n+1)/A003959(n+1)*A167352(n+1)` -/
def P3705730211505125966.Spec : Prop :=
  ∀ n, P3705730211505125966.a n = (A167315 (n + 1) : ℚ)

end A167315

/-! ## A167315.P5809188538693120572

`A165826(n+1)/A061142(n+1)*A167312(n+1)`
-/

namespace A167315.P5809188538693120572
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A165826 (n + 1) : ℚ) / (A061142 (n + 1) : ℚ) * (A167312 (n + 1) : ℚ)

end

end A167315.P5809188538693120572

namespace A167315

/-- `A165826(n+1)/A061142(n+1)*A167312(n+1)` -/
def P5809188538693120572.Spec : Prop :=
  ∀ n, P5809188538693120572.a n = (A167315 (n + 1) : ℚ)

end A167315

/-! ## A167315.P9612862766913911053

`A165826(n+1)/A165824(n+1)*A167313(n+1)`
-/

namespace A167315.P9612862766913911053
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A165826 (n + 1) : ℚ) / (A165824 (n + 1) : ℚ) * (A167313 (n + 1) : ℚ)

end

end A167315.P9612862766913911053

namespace A167315

/-- `A165826(n+1)/A165824(n+1)*A167313(n+1)` -/
def P9612862766913911053.Spec : Prop :=
  ∀ n, P9612862766913911053.a n = (A167315 (n + 1) : ℚ)

end A167315

/-! ## A167315.P2182262856485611048

`A165826(n+1)/A165825(n+1)*A167314(n+1)`
-/

namespace A167315.P2182262856485611048
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A165826 (n + 1) : ℚ) / (A165825 (n + 1) : ℚ) * (A167314 (n + 1) : ℚ)

end

end A167315.P2182262856485611048

namespace A167315

/-- `A165826(n+1)/A165825(n+1)*A167314(n+1)` -/
def P2182262856485611048.Spec : Prop :=
  ∀ n, P2182262856485611048.a n = (A167315 (n + 1) : ℚ)

end A167315

/-! ## A167315.P6240692589231209705

`A165831(n+1)/A165827(n+1)*A167313(n+1)`
-/

namespace A167315.P6240692589231209705
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A165831 (n + 1) : ℚ) / (A165827 (n + 1) : ℚ) * (A167313 (n + 1) : ℚ)

end

end A167315.P6240692589231209705

namespace A167315

/-- `A165831(n+1)/A165827(n+1)*A167313(n+1)` -/
def P6240692589231209705.Spec : Prop :=
  ∀ n, P6240692589231209705.a n = (A167315 (n + 1) : ℚ)

end A167315

/-! ## A167315.P12636579234380258003

`A165856(n+1)/A165835(n+1)*A167312(n+1)`
-/

namespace A167315.P12636579234380258003
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A165856 (n + 1) : ℚ) / (A165835 (n + 1) : ℚ) * (A167312 (n + 1) : ℚ)

end

end A167315.P12636579234380258003

namespace A167315

/-- `A165856(n+1)/A165835(n+1)*A167312(n+1)` -/
def P12636579234380258003.Spec : Prop :=
  ∀ n, P12636579234380258003.a n = (A167315 (n + 1) : ℚ)

end A167315

/-! ## A167315.P3782504730785625310

`A165856(n+1)/A165842(n+1)*A167313(n+1)`
-/

namespace A167315.P3782504730785625310
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A165856 (n + 1) : ℚ) / (A165842 (n + 1) : ℚ) * (A167313 (n + 1) : ℚ)

end

end A167315.P3782504730785625310

namespace A167315

/-- `A165856(n+1)/A165842(n+1)*A167313(n+1)` -/
def P3782504730785625310.Spec : Prop :=
  ∀ n, P3782504730785625310.a n = (A167315 (n + 1) : ℚ)

end A167315

/-! ## A167315.P8951836669530591511

`A165826(n+1)/A166590(n+1)*A167359(n+1)`
-/

namespace A167315.P8951836669530591511
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A165826 (n + 1) : ℚ) / (A166590 (n + 1) : ℚ) * (A167359 (n + 1) : ℚ)

end

end A167315.P8951836669530591511

namespace A167315

/-- `A165826(n+1)/A166590(n+1)*A167359(n+1)` -/
def P8951836669530591511.Spec : Prop :=
  ∀ n, P8951836669530591511.a n = (A167315 (n + 1) : ℚ)

end A167315

/-! ## A167315.P3877151428051885372

`A166589(n+1)/A166642(n+1)*A166650(n+1)`
-/

namespace A167315.P3877151428051885372
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166589 (n + 1) : ℚ) / (A166642 (n + 1) : ℚ) * (A166650 (n + 1) : ℚ)

end

end A167315.P3877151428051885372

namespace A167315

/-- `A166589(n+1)/A166642(n+1)*A166650(n+1)` -/
def P3877151428051885372.Spec : Prop :=
  ∀ n, P3877151428051885372.a n = (A167315 (n + 1) : ℚ)

end A167315

/-! ## A167315.P8171839083313474064

`A166635(n+1)/A166634(n+1)*A167314(n+1)`
-/

namespace A167315.P8171839083313474064
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166635 (n + 1) : ℚ) / (A166634 (n + 1) : ℚ) * (A167314 (n + 1) : ℚ)

end

end A167315.P8171839083313474064

namespace A167315

/-- `A166635(n+1)/A166634(n+1)*A167314(n+1)` -/
def P8171839083313474064.Spec : Prop :=
  ∀ n, P8171839083313474064.a n = (A167315 (n + 1) : ℚ)

end A167315

/-! ## A167315.P2751508160342171107

`A165826(n+1)/A061142(n+1)²*A167314(n+1)`
-/

namespace A167315.P2751508160342171107
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A165826 (n + 1) : ℚ) / (A061142 (n + 1) ^ 2 : ℚ) * (A167314 (n + 1) : ℚ)

end

end A167315.P2751508160342171107

namespace A167315

/-- `A165826(n+1)/A061142(n+1)²*A167314(n+1)` -/
def P2751508160342171107.Spec : Prop :=
  ∀ n, P2751508160342171107.a n = (A167315 (n + 1) : ℚ)

end A167315

/-! ## A167315.P18316673943852428648

`A165831(n+1)/A061142(n+1)²*A167312(n+1)`
-/

namespace A167315.P18316673943852428648
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A165831 (n + 1) : ℚ) / (A061142 (n + 1) ^ 2 : ℚ) * (A167312 (n + 1) : ℚ)

end

end A167315.P18316673943852428648

namespace A167315

/-- `A165831(n+1)/A061142(n+1)²*A167312(n+1)` -/
def P18316673943852428648.Spec : Prop :=
  ∀ n, P18316673943852428648.a n = (A167315 (n + 1) : ℚ)

end A167315

/-!
# A167316: Totally multiplicative sequence with a(p) = 6*(p-3) for prime p.

The programs for A167316, the canonical program `A167316.P4064799571655654239` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A167316 has offset 1).

The definition of A167316 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A165827, A166589, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A167316.P4064799571655654239

`A165827(n+1)*A166589(n+1)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A167316

/-- `A165827(n+1)*A166589(n+1)` -/
def P4064799571655654239.Spec : Prop :=
  ∀ n, P4064799571655654239.a n = A167316 (n + 1)

theorem P4064799571655654239.correct : P4064799571655654239.Spec := by
  intro n
  simp only [A167316, Nat.add_sub_cancel]

end A167316

/-! ## A167316.P14738853994924681066

`6^A001222(n+1)*A166589(n+1)`
-/

namespace A167316.P14738853994924681066
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (6 : ℚ) ^ (A001222 (n + 1) : ℤ) * (A166589 (n + 1) : ℚ)

end

end A167316.P14738853994924681066

namespace A167316

/-- `6^A001222(n+1)*A166589(n+1)` -/
def P14738853994924681066.Spec : Prop :=
  ∀ n, P14738853994924681066.a n = (A167316 (n + 1) : ℚ)

end A167316

/-! ## A167316.P1731622246561988565

`A061142(n+1)*A167313(n+1)`
-/

namespace A167316.P1731622246561988565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061142 (n + 1) * A167313 (n + 1)

end

end A167316.P1731622246561988565

namespace A167316

/-- `A061142(n+1)*A167313(n+1)` -/
def P1731622246561988565.Spec : Prop :=
  ∀ n, P1731622246561988565.a n = A167316 (n + 1)

end A167316

/-! ## A167316.P11560784032293374647

`A165824(n+1)*A167312(n+1)`
-/

namespace A167316.P11560784032293374647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165824 (n + 1) * A167312 (n + 1)

end

end A167316.P11560784032293374647

namespace A167316

/-- `A165824(n+1)*A167312(n+1)` -/
def P11560784032293374647.Spec : Prop :=
  ∀ n, P11560784032293374647.a n = A167316 (n + 1)

end A167316

/-! ## A167316.P16696051798465894503

`sqrt(A165825(n+1))*A167313(n+1)`
-/

namespace A167316.P16696051798465894503
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A165825 (n + 1) : ℝ) * (A167313 (n + 1) : ℝ)

end

end A167316.P16696051798465894503

namespace A167316

/-- `sqrt(A165825(n+1))*A167313(n+1)` -/
def P16696051798465894503.Spec : Prop :=
  ∀ n, P16696051798465894503.a n = (A167316 (n + 1) : ℝ)

end A167316

/-! ## A167316.P13580389362788745538

`A003959(A061142(n+1))*A167312(n+1)`
-/

namespace A167316.P13580389362788745538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003959 (A061142 (n + 1)).toNat * A167312 (n + 1)

end

end A167316.P13580389362788745538

namespace A167316

/-- `A003959(A061142(n+1))*A167312(n+1)` -/
def P13580389362788745538.Spec : Prop :=
  ∀ n, P13580389362788745538.a n = A167316 (n + 1)

end A167316

/-! ## A167316.P8438016905024044297

`A003959(sqrt(A165825(n+1)))*A167312(n+1)`
-/

namespace A167316.P8438016905024044297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003959 (SequenceMachineLib.roundAway (Real.sqrt (A165825 (n + 1) : ℝ))).toNat * A167312 (n + 1)

end

end A167316.P8438016905024044297

namespace A167316

/-- `A003959(sqrt(A165825(n+1)))*A167312(n+1)` -/
def P8438016905024044297.Spec : Prop :=
  ∀ n, P8438016905024044297.a n = A167316 (n + 1)

end A167316

/-! ## A167316.P15960861100017673218

`A165827(n+1)/A003959(n+1)*A167352(n+1)`
-/

namespace A167316.P15960861100017673218
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A165827 (n + 1) : ℚ) / (A003959 (n + 1) : ℚ) * (A167352 (n + 1) : ℚ)

end

end A167316.P15960861100017673218

namespace A167316

/-- `A165827(n+1)/A003959(n+1)*A167352(n+1)` -/
def P15960861100017673218.Spec : Prop :=
  ∀ n, P15960861100017673218.a n = (A167316 (n + 1) : ℚ)

end A167316

/-! ## A167316.P3290882155146423880

`A166643(n+1)/A003959(n+1)*A167312(n+1)`
-/

namespace A167316.P3290882155146423880
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166643 (n + 1) : ℚ) / (A003959 (n + 1) : ℚ) * (A167312 (n + 1) : ℚ)

end

end A167316.P3290882155146423880

namespace A167316

/-- `A166643(n+1)/A003959(n+1)*A167312(n+1)` -/
def P3290882155146423880.Spec : Prop :=
  ∀ n, P3290882155146423880.a n = (A167316 (n + 1) : ℚ)

end A167316

/-! ## A167316.P11690530064220539388

`A165824(n+1)/A061142(n+1)*A167314(n+1)`
-/

namespace A167316.P11690530064220539388
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A165824 (n + 1) : ℚ) / (A061142 (n + 1) : ℚ) * (A167314 (n + 1) : ℚ)

end

end A167316.P11690530064220539388

namespace A167316

/-- `A165824(n+1)/A061142(n+1)*A167314(n+1)` -/
def P11690530064220539388.Spec : Prop :=
  ∀ n, P11690530064220539388.a n = (A167316 (n + 1) : ℚ)

end A167316

/-! ## A167316.P10863075943947043220

`A165827(n+1)/A061142(n+1)*A167312(n+1)`
-/

namespace A167316.P10863075943947043220
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A165827 (n + 1) : ℚ) / (A061142 (n + 1) : ℚ) * (A167312 (n + 1) : ℚ)

end

end A167316.P10863075943947043220

namespace A167316

/-- `A165827(n+1)/A061142(n+1)*A167312(n+1)` -/
def P10863075943947043220.Spec : Prop :=
  ∀ n, P10863075943947043220.a n = (A167316 (n + 1) : ℚ)

end A167316

/-! ## A167316.P141407073089680610

`A165827(n+1)/A165825(n+1)*A167314(n+1)`
-/

namespace A167316.P141407073089680610
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A165827 (n + 1) : ℚ) / (A165825 (n + 1) : ℚ) * (A167314 (n + 1) : ℚ)

end

end A167316.P141407073089680610

namespace A167316

/-- `A165827(n+1)/A165825(n+1)*A167314(n+1)` -/
def P141407073089680610.Spec : Prop :=
  ∀ n, P141407073089680610.a n = (A167316 (n + 1) : ℚ)

end A167316

/-! ## A167316.P12179236751247222979

`A165827(n+1)/A166590(n+1)*A167359(n+1)`
-/

namespace A167316.P12179236751247222979
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A165827 (n + 1) : ℚ) / (A166590 (n + 1) : ℚ) * (A167359 (n + 1) : ℚ)

end

end A167316.P12179236751247222979

namespace A167316

/-- `A165827(n+1)/A166590(n+1)*A167359(n+1)` -/
def P12179236751247222979.Spec : Prop :=
  ∀ n, P12179236751247222979.a n = (A167316 (n + 1) : ℚ)

end A167316

/-! ## A167316.P7675402185565438491

`A003958(A165824(n+1))*A167313(n+1)`
-/

namespace A167316.P7675402185565438491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003958 (A165824 (n + 1)).toNat * A167313 (n + 1)

end

end A167316.P7675402185565438491

namespace A167316

/-- `A003958(A165824(n+1))*A167313(n+1)` -/
def P7675402185565438491.Spec : Prop :=
  ∀ n, P7675402185565438491.a n = A167316 (n + 1)

end A167316

/-! ## A167316.P14322559962217384235

`A003959(A165826(n+1))/A003959(n+1)*A167352(n+1)`
-/

namespace A167316.P14322559962217384235
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003959 (A165826 (n + 1)).toNat : ℚ) / (A003959 (n + 1) : ℚ) * (A167352 (n + 1) : ℚ)

end

end A167316.P14322559962217384235

namespace A167316

/-- `A003959(A165826(n+1))/A003959(n+1)*A167352(n+1)` -/
def P14322559962217384235.Spec : Prop :=
  ∀ n, P14322559962217384235.a n = (A167316 (n + 1) : ℚ)

end A167316

/-! ## A167316.P14905307973308956956

`A003959(A165826(n+1))/A165826(n+1)*A167315(n+1)`
-/

namespace A167316.P14905307973308956956
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003959 (A165826 (n + 1)).toNat : ℚ) / (A165826 (n + 1) : ℚ) * (A167315 (n + 1) : ℚ)

end

end A167316.P14905307973308956956

namespace A167316

/-- `A003959(A165826(n+1))/A165826(n+1)*A167315(n+1)` -/
def P14905307973308956956.Spec : Prop :=
  ∀ n, P14905307973308956956.a n = (A167316 (n + 1) : ℚ)

end A167316

/-!
# A167317: Totally multiplicative sequence with a(p) = 7*(p-3) for prime p.

The programs for A167317, the canonical program `A167317.P1896838416020808552` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A167317 has offset 1).

The definition of A167317 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A165828, A166589, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A167317.P1896838416020808552

`A165828(n+1)*A166589(n+1)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A167317

/-- `A165828(n+1)*A166589(n+1)` -/
def P1896838416020808552.Spec : Prop :=
  ∀ n, P1896838416020808552.a n = A167317 (n + 1)

theorem P1896838416020808552.correct : P1896838416020808552.Spec := by
  intro n
  simp only [A167317, Nat.add_sub_cancel]

end A167317

/-! ## A167317.P5632814519087511466

`7^A001222(n+1)*A166589(n+1)`
-/

namespace A167317.P5632814519087511466
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (7 : ℚ) ^ (A001222 (n + 1) : ℤ) * (A166589 (n + 1) : ℚ)

end

end A167317.P5632814519087511466

namespace A167317

/-- `7^A001222(n+1)*A166589(n+1)` -/
def P5632814519087511466.Spec : Prop :=
  ∀ n, P5632814519087511466.a n = (A167317 (n + 1) : ℚ)

end A167317

/-! ## A167317.P7210726169805847344

`sqrt(A165870(n+1))*A166589(n+1)`
-/

namespace A167317.P7210726169805847344
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A165870 (n + 1) : ℝ) * (A166589 (n + 1) : ℝ)

end

end A167317.P7210726169805847344

namespace A167317

/-- `sqrt(A165870(n+1))*A166589(n+1)` -/
def P7210726169805847344.Spec : Prop :=
  ∀ n, P7210726169805847344.a n = (A167317 (n + 1) : ℝ)

end A167317

/-! ## A167317.P7259794100252422318

`A166589(n+1)*A166637(A061142(n+1))`
-/

namespace A167317.P7259794100252422318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166589 (n + 1) * A166637 (A061142 (n + 1)).toNat

end

end A167317.P7259794100252422318

namespace A167317

/-- `A166589(n+1)*A166637(A061142(n+1))` -/
def P7259794100252422318.Spec : Prop :=
  ∀ n, P7259794100252422318.a n = A167317 (n + 1)

end A167317

/-! ## A167317.P10724570188614470621

`A165828(n+1)/A003959(n+1)*A167352(n+1)`
-/

namespace A167317.P10724570188614470621
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A165828 (n + 1) : ℚ) / (A003959 (n + 1) : ℚ) * (A167352 (n + 1) : ℚ)

end

end A167317.P10724570188614470621

namespace A167317

/-- `A165828(n+1)/A003959(n+1)*A167352(n+1)` -/
def P10724570188614470621.Spec : Prop :=
  ∀ n, P10724570188614470621.a n = (A167317 (n + 1) : ℚ)

end A167317

/-! ## A167317.P4791715786976517172

`A165828(n+1)/A061142(n+1)*A167312(n+1)`
-/

namespace A167317.P4791715786976517172
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A165828 (n + 1) : ℚ) / (A061142 (n + 1) : ℚ) * (A167312 (n + 1) : ℚ)

end

end A167317.P4791715786976517172

namespace A167317

/-- `A165828(n+1)/A061142(n+1)*A167312(n+1)` -/
def P4791715786976517172.Spec : Prop :=
  ∀ n, P4791715786976517172.a n = (A167317 (n + 1) : ℚ)

end A167317

/-! ## A167317.P5496386383145201458

`A165828(n+1)/A165824(n+1)*A167313(n+1)`
-/

namespace A167317.P5496386383145201458
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A165828 (n + 1) : ℚ) / (A165824 (n + 1) : ℚ) * (A167313 (n + 1) : ℚ)

end

end A167317.P5496386383145201458

namespace A167317

/-- `A165828(n+1)/A165824(n+1)*A167313(n+1)` -/
def P5496386383145201458.Spec : Prop :=
  ∀ n, P5496386383145201458.a n = (A167317 (n + 1) : ℚ)

end A167317

/-! ## A167317.P9826710279731460997

`A165828(n+1)/A165825(n+1)*A167314(n+1)`
-/

namespace A167317.P9826710279731460997
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A165828 (n + 1) : ℚ) / (A165825 (n + 1) : ℚ) * (A167314 (n + 1) : ℚ)

end

end A167317.P9826710279731460997

namespace A167317

/-- `A165828(n+1)/A165825(n+1)*A167314(n+1)` -/
def P9826710279731460997.Spec : Prop :=
  ∀ n, P9826710279731460997.a n = (A167317 (n + 1) : ℚ)

end A167317

/-! ## A167317.P386250688126757840

`A165828(n+1)/A165827(n+1)*A167316(n+1)`
-/

namespace A167317.P386250688126757840
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A165828 (n + 1) : ℚ) / (A165827 (n + 1) : ℚ) * (A167316 (n + 1) : ℚ)

end

end A167317.P386250688126757840

namespace A167317

/-- `A165828(n+1)/A165827(n+1)*A167316(n+1)` -/
def P386250688126757840.Spec : Prop :=
  ∀ n, P386250688126757840.a n = (A167317 (n + 1) : ℚ)

end A167317

/-! ## A167317.P3584937058033287964

`A165828(n+1)/A166590(n+1)*A167359(n+1)`
-/

namespace A167317.P3584937058033287964
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A165828 (n + 1) : ℚ) / (A166590 (n + 1) : ℚ) * (A167359 (n + 1) : ℚ)

end

end A167317.P3584937058033287964

namespace A167317

/-- `A165828(n+1)/A166590(n+1)*A167359(n+1)` -/
def P3584937058033287964.Spec : Prop :=
  ∀ n, P3584937058033287964.a n = (A167317 (n + 1) : ℚ)

end A167317

/-! ## A167317.P591289932849697969

`A166647(n+1)/A166643(n+1)*A167313(n+1)`
-/

namespace A167317.P591289932849697969
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166647 (n + 1) : ℚ) / (A166643 (n + 1) : ℚ) * (A167313 (n + 1) : ℚ)

end

end A167317.P591289932849697969

namespace A167317

/-- `A166647(n+1)/A166643(n+1)*A167313(n+1)` -/
def P591289932849697969.Spec : Prop :=
  ∀ n, P591289932849697969.a n = (A167317 (n + 1) : ℚ)

end A167317

/-!
# A167318: Totally multiplicative sequence with a(p) = 8*(p-3) for prime p.

The programs for A167318, the canonical program `A167318.P7293545725422339137` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A167318 has offset 1).

The definition of A167318 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A165829, A166589, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A167318.P7293545725422339137

`A165829(n+1)*A166589(n+1)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A167318

/-- `A165829(n+1)*A166589(n+1)` -/
def P7293545725422339137.Spec : Prop :=
  ∀ n, P7293545725422339137.a n = A167318 (n + 1)

theorem P7293545725422339137.correct : P7293545725422339137.Spec := by
  intro n
  simp only [A167318, Nat.add_sub_cancel]

end A167318

/-! ## A167318.P7310279136139987611

`8^A001222(n+1)*A166589(n+1)`
-/

namespace A167318.P7310279136139987611
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (8 : ℚ) ^ (A001222 (n + 1) : ℤ) * (A166589 (n + 1) : ℚ)

end

end A167318.P7310279136139987611

namespace A167318

/-- `8^A001222(n+1)*A166589(n+1)` -/
def P7310279136139987611.Spec : Prop :=
  ∀ n, P7310279136139987611.a n = (A167318 (n + 1) : ℚ)

end A167318

/-! ## A167318.P18121005175818127316

`A061142(n+1)*A167314(n+1)`
-/

namespace A167318.P18121005175818127316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061142 (n + 1) * A167314 (n + 1)

end

end A167318.P18121005175818127316

namespace A167318

/-- `A061142(n+1)*A167314(n+1)` -/
def P18121005175818127316.Spec : Prop :=
  ∀ n, P18121005175818127316.a n = A167318 (n + 1)

end A167318

/-! ## A167318.P14427871230047235024

`A165825(n+1)*A167312(n+1)`
-/

namespace A167318.P14427871230047235024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165825 (n + 1) * A167312 (n + 1)

end

end A167318.P14427871230047235024

namespace A167318

/-- `A165825(n+1)*A167312(n+1)` -/
def P14427871230047235024.Spec : Prop :=
  ∀ n, P14427871230047235024.a n = A167318 (n + 1)

end A167318

/-! ## A167318.P464912617821792598

`A061142(n+1)²*A167312(n+1)`
-/

namespace A167318.P464912617821792598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061142 (n + 1) ^ 2 * A167312 (n + 1)

end

end A167318.P464912617821792598

namespace A167318

/-- `A061142(n+1)²*A167312(n+1)` -/
def P464912617821792598.Spec : Prop :=
  ∀ n, P464912617821792598.a n = A167318 (n + 1)

end A167318

/-! ## A167318.P12141098207625499093

`sqrt(A165825(n+1))*A167314(n+1)`
-/

namespace A167318.P12141098207625499093
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A165825 (n + 1) : ℝ) * (A167314 (n + 1) : ℝ)

end

end A167318.P12141098207625499093

namespace A167318

/-- `sqrt(A165825(n+1))*A167314(n+1)` -/
def P12141098207625499093.Spec : Prop :=
  ∀ n, P12141098207625499093.a n = (A167318 (n + 1) : ℝ)

end A167318

/-! ## A167318.P8658167475660743597

`2^A001222(n+1)*A167314(n+1)`
-/

namespace A167318.P8658167475660743597
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A001222 (n + 1) : ℤ) * (A167314 (n + 1) : ℚ)

end

end A167318.P8658167475660743597

namespace A167318

/-- `2^A001222(n+1)*A167314(n+1)` -/
def P8658167475660743597.Spec : Prop :=
  ∀ n, P8658167475660743597.a n = (A167318 (n + 1) : ℚ)

end A167318

/-! ## A167318.P16173272826366246358

`A000079(A001222(n+1))²*A167312(n+1)`
-/

namespace A167318.P16173272826366246358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A001222 (n + 1)).toNat ^ 2 * A167312 (n + 1)

end

end A167318.P16173272826366246358

namespace A167318

/-- `A000079(A001222(n+1))²*A167312(n+1)` -/
def P16173272826366246358.Spec : Prop :=
  ∀ n, P16173272826366246358.a n = A167318 (n + 1)

end A167318

/-! ## A167318.P14965222433735652372

`A000079(2*A001222(n+1))*A167312(n+1)`
-/

namespace A167318.P14965222433735652372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (2 * A001222 (n + 1)).toNat * A167312 (n + 1)

end

end A167318.P14965222433735652372

namespace A167318

/-- `A000079(2*A001222(n+1))*A167312(n+1)` -/
def P14965222433735652372.Spec : Prop :=
  ∀ n, P14965222433735652372.a n = A167318 (n + 1)

end A167318

/-! ## A167318.P2771308399807958950

`A165829(n+1)/A166590(n+1)*A167359(n+1)`
-/

namespace A167318.P2771308399807958950
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A165829 (n + 1) : ℚ) / (A166590 (n + 1) : ℚ) * (A167359 (n + 1) : ℚ)

end

end A167318.P2771308399807958950

namespace A167318

/-- `A165829(n+1)/A166590(n+1)*A167359(n+1)` -/
def P2771308399807958950.Spec : Prop :=
  ∀ n, P2771308399807958950.a n = (A167318 (n + 1) : ℚ)

end A167318

/-! ## A167318.P2966323090427500325

`A061142(n+1)*A166589(n+1)*A061142(n+1)²`
-/

namespace A167318.P2966323090427500325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061142 (n + 1) * A166589 (n + 1) * A061142 (n + 1) ^ 2

end

end A167318.P2966323090427500325

namespace A167318

/-- `A061142(n+1)*A166589(n+1)*A061142(n+1)²` -/
def P2966323090427500325.Spec : Prop :=
  ∀ n, P2966323090427500325.a n = A167318 (n + 1)

end A167318

/-! ## A167318.P15470572099601765937

`A167312(n+1)/A167363(n+1)*A167321(n+1)²`
-/

namespace A167318.P15470572099601765937
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167312 (n + 1) : ℚ) / (A167363 (n + 1) : ℚ) * (A167321 (n + 1) ^ 2 : ℚ)

end

end A167318.P15470572099601765937

namespace A167318

/-- `A167312(n+1)/A167363(n+1)*A167321(n+1)²` -/
def P15470572099601765937.Spec : Prop :=
  ∀ n, P15470572099601765937.a n = (A167318 (n + 1) : ℚ)

end A167318

/-! ## A167318.P17019128715015947720

`A003959(A166643(n+1)/A003959(n+1))*A167312(n+1)`
-/

namespace A167318.P17019128715015947720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003959 (SequenceMachineLib.roundAway ((A166643 (n + 1) : ℚ) / (A003959 (n + 1) : ℚ))).toNat * A167312 (n + 1)

end

end A167318.P17019128715015947720

namespace A167318

/-- `A003959(A166643(n+1)/A003959(n+1))*A167312(n+1)` -/
def P17019128715015947720.Spec : Prop :=
  ∀ n, P17019128715015947720.a n = A167318 (n + 1)

end A167318

/-! ## A167318.P17028317980960318568

`A123667(A123667(n+1))/A123667(n+1)*A167312(n+1)`
-/

namespace A167318.P17028317980960318568
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A123667 (A123667 (n + 1)).toNat : ℚ) / (A123667 (n + 1) : ℚ) * (A167312 (n + 1) : ℚ)

end

end A167318.P17028317980960318568

namespace A167318

/-- `A123667(A123667(n+1))/A123667(n+1)*A167312(n+1)` -/
def P17028317980960318568.Spec : Prop :=
  ∀ n, P17028317980960318568.a n = (A167318 (n + 1) : ℚ)

end A167318

/-!
# A167319: Totally multiplicative sequence with a(p) = 9*(p-3) for prime p.

The programs for A167319, the canonical program `A167319.P6886657443246084551` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A167319 has offset 1).

The definition of A167319 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A165830, A166589, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A167319.P6886657443246084551

`A165830(n+1)*A166589(n+1)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A167319

/-- `A165830(n+1)*A166589(n+1)` -/
def P6886657443246084551.Spec : Prop :=
  ∀ n, P6886657443246084551.a n = A167319 (n + 1)

theorem P6886657443246084551.correct : P6886657443246084551.Spec := by
  intro n
  simp only [A167319, Nat.add_sub_cancel]

end A167319

/-! ## A167319.P6356411637834506610

`9^A001222(n+1)*A166589(n+1)`
-/

namespace A167319.P6356411637834506610
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (9 : ℚ) ^ (A001222 (n + 1) : ℤ) * (A166589 (n + 1) : ℚ)

end

end A167319.P6356411637834506610

namespace A167319

/-- `9^A001222(n+1)*A166589(n+1)` -/
def P6356411637834506610.Spec : Prop :=
  ∀ n, P6356411637834506610.a n = (A167319 (n + 1) : ℚ)

end A167319

/-! ## A167319.P7078788818656705448

`A165824(n+1)*A167313(n+1)`
-/

namespace A167319.P7078788818656705448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165824 (n + 1) * A167313 (n + 1)

end

end A167319.P7078788818656705448

namespace A167319

/-- `A165824(n+1)*A167313(n+1)` -/
def P7078788818656705448.Spec : Prop :=
  ∀ n, P7078788818656705448.a n = A167319 (n + 1)

end A167319

/-! ## A167319.P17932394455354183798

`A165824(n+1)²*A166589(n+1)`
-/

namespace A167319.P17932394455354183798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165824 (n + 1) ^ 2 * A166589 (n + 1)

end

end A167319.P17932394455354183798

namespace A167319

/-- `A165824(n+1)²*A166589(n+1)` -/
def P17932394455354183798.Spec : Prop :=
  ∀ n, P17932394455354183798.a n = A167319 (n + 1)

end A167319

/-! ## A167319.P5000711898560787783

`sqrt(A165830(n+1))*A167313(n+1)`
-/

namespace A167319.P5000711898560787783
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A165830 (n + 1) : ℝ) * (A167313 (n + 1) : ℝ)

end

end A167319.P5000711898560787783

namespace A167319

/-- `sqrt(A165830(n+1))*A167313(n+1)` -/
def P5000711898560787783.Spec : Prop :=
  ∀ n, P5000711898560787783.a n = (A167319 (n + 1) : ℝ)

end A167319

/-! ## A167319.P8430180471150633732

`A167313(n+1)*A178590(A061142(n+1))`
-/

namespace A167319.P8430180471150633732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167313 (n + 1) * A178590 (A061142 (n + 1)).toNat

end

end A167319.P8430180471150633732

namespace A167319

/-- `A167313(n+1)*A178590(A061142(n+1))` -/
def P8430180471150633732.Spec : Prop :=
  ∀ n, P8430180471150633732.a n = A167319 (n + 1)

end A167319

/-! ## A167319.P8149432224308927085

`A165830(n+1)/A003959(n+1)*A167352(n+1)`
-/

namespace A167319.P8149432224308927085
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A165830 (n + 1) : ℚ) / (A003959 (n + 1) : ℚ) * (A167352 (n + 1) : ℚ)

end

end A167319.P8149432224308927085

namespace A167319

/-- `A165830(n+1)/A003959(n+1)*A167352(n+1)` -/
def P8149432224308927085.Spec : Prop :=
  ∀ n, P8149432224308927085.a n = (A167319 (n + 1) : ℚ)

end A167319

/-! ## A167319.P11238821617830856120

`A166643(n+1)/A003959(n+1)*A167313(n+1)`
-/

namespace A167319.P11238821617830856120
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166643 (n + 1) : ℚ) / (A003959 (n + 1) : ℚ) * (A167313 (n + 1) : ℚ)

end

end A167319.P11238821617830856120

namespace A167319

/-- `A166643(n+1)/A003959(n+1)*A167313(n+1)` -/
def P11238821617830856120.Spec : Prop :=
  ∀ n, P11238821617830856120.a n = (A167319 (n + 1) : ℚ)

end A167319

/-! ## A167319.P15915017619286088626

`A165827(n+1)/A061142(n+1)*A167313(n+1)`
-/

namespace A167319.P15915017619286088626
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A165827 (n + 1) : ℚ) / (A061142 (n + 1) : ℚ) * (A167313 (n + 1) : ℚ)

end

end A167319.P15915017619286088626

namespace A167319

/-- `A165827(n+1)/A061142(n+1)*A167313(n+1)` -/
def P15915017619286088626.Spec : Prop :=
  ∀ n, P15915017619286088626.a n = (A167319 (n + 1) : ℚ)

end A167319

/-! ## A167319.P13137416446845801561

`A165830(n+1)/A166590(n+1)*A167359(n+1)`
-/

namespace A167319.P13137416446845801561
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A165830 (n + 1) : ℚ) / (A166590 (n + 1) : ℚ) * (A167359 (n + 1) : ℚ)

end

end A167319.P13137416446845801561

namespace A167319

/-- `A165830(n+1)/A166590(n+1)*A167359(n+1)` -/
def P13137416446845801561.Spec : Prop :=
  ∀ n, P13137416446845801561.a n = (A167319 (n + 1) : ℚ)

end A167319

/-! ## A167319.P5197944006851568055

`A165824(n+1)²/A003959(n+1)*A167352(n+1)`
-/

namespace A167319.P5197944006851568055
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A165824 (n + 1) ^ 2 : ℚ) / (A003959 (n + 1) : ℚ) * (A167352 (n + 1) : ℚ)

end

end A167319.P5197944006851568055

namespace A167319

/-- `A165824(n+1)²/A003959(n+1)*A167352(n+1)` -/
def P5197944006851568055.Spec : Prop :=
  ∀ n, P5197944006851568055.a n = (A167319 (n + 1) : ℚ)

end A167319

/-! ## A167319.P195970611568074621

`(A165824(n+1)/A061142(n+1))²*A167314(n+1)`
-/

namespace A167319.P195970611568074621
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A165824 (n + 1) : ℚ) / (A061142 (n + 1) : ℚ)) ^ 2 * (A167314 (n + 1) : ℚ)

end

end A167319.P195970611568074621

namespace A167319

/-- `(A165824(n+1)/A061142(n+1))²*A167314(n+1)` -/
def P195970611568074621.Spec : Prop :=
  ∀ n, P195970611568074621.a n = (A167319 (n + 1) : ℚ)

end A167319

/-! ## A167319.P13182740043839472325

`A165824(n+1)²/A165825(n+1)*A167314(n+1)`
-/

namespace A167319.P13182740043839472325
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A165824 (n + 1) ^ 2 : ℚ) / (A165825 (n + 1) : ℚ) * (A167314 (n + 1) : ℚ)

end

end A167319.P13182740043839472325

namespace A167319

/-- `A165824(n+1)²/A165825(n+1)*A167314(n+1)` -/
def P13182740043839472325.Spec : Prop :=
  ∀ n, P13182740043839472325.a n = (A167319 (n + 1) : ℚ)

end A167319

/-! ## A167319.P576506684485913974

`(A165827(n+1)/A165825(n+1))²*A167314(n+1)`
-/

namespace A167319.P576506684485913974
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A165827 (n + 1) : ℚ) / (A165825 (n + 1) : ℚ)) ^ 2 * (A167314 (n + 1) : ℚ)

end

end A167319.P576506684485913974

namespace A167319

/-- `(A165827(n+1)/A165825(n+1))²*A167314(n+1)` -/
def P576506684485913974.Spec : Prop :=
  ∀ n, P576506684485913974.a n = (A167319 (n + 1) : ℚ)

end A167319

/-! ## A167319.P2561429573371636450

`A003959(A165825(n+1))/A003959(n+1)*A167352(n+1)`
-/

namespace A167319.P2561429573371636450
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003959 (A165825 (n + 1)).toNat : ℚ) / (A003959 (n + 1) : ℚ) * (A167352 (n + 1) : ℚ)

end

end A167319.P2561429573371636450

namespace A167319

/-- `A003959(A165825(n+1))/A003959(n+1)*A167352(n+1)` -/
def P2561429573371636450.Spec : Prop :=
  ∀ n, P2561429573371636450.a n = (A167319 (n + 1) : ℚ)

end A167319

/-! ## A167319.P1716539736599904661

`A166589(n+1)*A167352(A165825(n+1))`
-/

namespace A167319.P1716539736599904661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166589 (n + 1) * A167352 (A165825 (n + 1)).toNat

end

end A167319.P1716539736599904661

namespace A167319

/-- `A166589(n+1)*A167352(A165825(n+1))` -/
def P1716539736599904661.Spec : Prop :=
  ∀ n, P1716539736599904661.a n = A167319 (n + 1)

end A167319

/-!
# A167320: Totally multiplicative sequence with a(p) = 10*(p-3) for prime p.

The programs for A167320, the canonical program `A167320.P15726980127679535390` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A167320 has offset 1).

The definition of A167320 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A165831, A166589, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A167320.P15726980127679535390

`A165831(n+1)*A166589(n+1)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A167320

/-- `A165831(n+1)*A166589(n+1)` -/
def P15726980127679535390.Spec : Prop :=
  ∀ n, P15726980127679535390.a n = A167320 (n + 1)

theorem P15726980127679535390.correct : P15726980127679535390.Spec := by
  intro n
  simp only [A167320, Nat.add_sub_cancel]

end A167320

/-! ## A167320.P5009069571442452012

`10^A001222(n+1)*A166589(n+1)`
-/

namespace A167320.P5009069571442452012
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (10 : ℚ) ^ (A001222 (n + 1) : ℤ) * (A166589 (n + 1) : ℚ)

end

end A167320.P5009069571442452012

namespace A167320

/-- `10^A001222(n+1)*A166589(n+1)` -/
def P5009069571442452012.Spec : Prop :=
  ∀ n, P5009069571442452012.a n = (A167320 (n + 1) : ℚ)

end A167320

/-! ## A167320.P1166015064815077337

`A061142(n+1)*A167315(n+1)`
-/

namespace A167320.P1166015064815077337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061142 (n + 1) * A167315 (n + 1)

end

end A167320.P1166015064815077337

namespace A167320

/-- `A061142(n+1)*A167315(n+1)` -/
def P1166015064815077337.Spec : Prop :=
  ∀ n, P1166015064815077337.a n = A167320 (n + 1)

end A167320

/-! ## A167320.P2994766232024242975

`A165826(n+1)*A167312(n+1)`
-/

namespace A167320.P2994766232024242975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165826 (n + 1) * A167312 (n + 1)

end

end A167320.P2994766232024242975

namespace A167320

/-- `A165826(n+1)*A167312(n+1)` -/
def P2994766232024242975.Spec : Prop :=
  ∀ n, P2994766232024242975.a n = A167320 (n + 1)

end A167320

/-! ## A167320.P14258014638996598003

`abs(A165872(n+1))*A167315(n+1)`
-/

namespace A167320.P14258014638996598003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A165872 (n + 1)| * A167315 (n + 1)

end

end A167320.P14258014638996598003

namespace A167320

/-- `abs(A165872(n+1))*A167315(n+1)` -/
def P14258014638996598003.Spec : Prop :=
  ∀ n, P14258014638996598003.a n = A167320 (n + 1)

end A167320

/-! ## A167320.P3787509903029080842

`sqrt(A165825(n+1))*A167315(n+1)`
-/

namespace A167320.P3787509903029080842
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A165825 (n + 1) : ℝ) * (A167315 (n + 1) : ℝ)

end

end A167320.P3787509903029080842

namespace A167320

/-- `sqrt(A165825(n+1))*A167315(n+1)` -/
def P3787509903029080842.Spec : Prop :=
  ∀ n, P3787509903029080842.a n = (A167320 (n + 1) : ℝ)

end A167320

/-! ## A167320.P1696477005321951266

`A000079(A001222(n+1))*A167315(n+1)`
-/

namespace A167320.P1696477005321951266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A001222 (n + 1)).toNat * A167315 (n + 1)

end

end A167320.P1696477005321951266

namespace A167320

/-- `A000079(A001222(n+1))*A167315(n+1)` -/
def P1696477005321951266.Spec : Prop :=
  ∀ n, P1696477005321951266.a n = A167320 (n + 1)

end A167320

/-! ## A167320.P535362345170887220

`A165831(n+1)/A003959(n+1)*A167352(n+1)`
-/

namespace A167320.P535362345170887220
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A165831 (n + 1) : ℚ) / (A003959 (n + 1) : ℚ) * (A167352 (n + 1) : ℚ)

end

end A167320.P535362345170887220

namespace A167320

/-- `A165831(n+1)/A003959(n+1)*A167352(n+1)` -/
def P535362345170887220.Spec : Prop :=
  ∀ n, P535362345170887220.a n = (A167320 (n + 1) : ℚ)

end A167320

/-! ## A167320.P3708882149608389181

`A166589(n+1)/A003959(n+1)*A166650(n+1)`
-/

namespace A167320.P3708882149608389181
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166589 (n + 1) : ℚ) / (A003959 (n + 1) : ℚ) * (A166650 (n + 1) : ℚ)

end

end A167320.P3708882149608389181

namespace A167320

/-- `A166589(n+1)/A003959(n+1)*A166650(n+1)` -/
def P3708882149608389181.Spec : Prop :=
  ∀ n, P3708882149608389181.a n = (A167320 (n + 1) : ℚ)

end A167320

/-! ## A167320.P2407118971489797586

`A165826(n+1)/A061142(n+1)*A167314(n+1)`
-/

namespace A167320.P2407118971489797586
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A165826 (n + 1) : ℚ) / (A061142 (n + 1) : ℚ) * (A167314 (n + 1) : ℚ)

end

end A167320.P2407118971489797586

namespace A167320

/-- `A165826(n+1)/A061142(n+1)*A167314(n+1)` -/
def P2407118971489797586.Spec : Prop :=
  ∀ n, P2407118971489797586.a n = (A167320 (n + 1) : ℚ)

end A167320

/-! ## A167320.P17936227420872847161

`A165831(n+1)/A061142(n+1)*A167312(n+1)`
-/

namespace A167320.P17936227420872847161
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A165831 (n + 1) : ℚ) / (A061142 (n + 1) : ℚ) * (A167312 (n + 1) : ℚ)

end

end A167320.P17936227420872847161

namespace A167320

/-- `A165831(n+1)/A061142(n+1)*A167312(n+1)` -/
def P17936227420872847161.Spec : Prop :=
  ∀ n, P17936227420872847161.a n = (A167320 (n + 1) : ℚ)

end A167320

/-! ## A167320.P10486958086131950134

`A165827(n+1)/A165824(n+1)*A167315(n+1)`
-/

namespace A167320.P10486958086131950134
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A165827 (n + 1) : ℚ) / (A165824 (n + 1) : ℚ) * (A167315 (n + 1) : ℚ)

end

end A167320.P10486958086131950134

namespace A167320

/-- `A165827(n+1)/A165824(n+1)*A167315(n+1)` -/
def P10486958086131950134.Spec : Prop :=
  ∀ n, P10486958086131950134.a n = (A167320 (n + 1) : ℚ)

end A167320

/-! ## A167320.P8063006813631823021

`A165831(n+1)/A166590(n+1)*A167359(n+1)`
-/

namespace A167320.P8063006813631823021
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A165831 (n + 1) : ℚ) / (A166590 (n + 1) : ℚ) * (A167359 (n + 1) : ℚ)

end

end A167320.P8063006813631823021

namespace A167320

/-- `A165831(n+1)/A166590(n+1)*A167359(n+1)` -/
def P8063006813631823021.Spec : Prop :=
  ∀ n, P8063006813631823021.a n = (A167320 (n + 1) : ℚ)

end A167320

/-! ## A167320.P14815389715301718448

`A003958(A165824(n+1))*A167315(n+1)`
-/

namespace A167320.P14815389715301718448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003958 (A165824 (n + 1)).toNat * A167315 (n + 1)

end

end A167320.P14815389715301718448

namespace A167320

/-- `A003958(A165824(n+1))*A167315(n+1)` -/
def P14815389715301718448.Spec : Prop :=
  ∀ n, P14815389715301718448.a n = A167320 (n + 1)

end A167320

/-! ## A167320.P10827115742123155532

`A000005(A086568(n+1))*A167315(n+1)`
-/

namespace A167320.P10827115742123155532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A086568 (n + 1)).toNat * A167315 (n + 1)

end

end A167320.P10827115742123155532

namespace A167320

/-- `A000005(A086568(n+1))*A167315(n+1)` -/
def P10827115742123155532.Spec : Prop :=
  ∀ n, P10827115742123155532.a n = A167320 (n + 1)

end A167320

/-!
# A167321: Totally multiplicative sequence with a(p) = 2*(p+3) for prime p.

The programs for A167321, there is no canonical definition to state claims against.
-/

/-! ## A167321.P2465349604007328895

`A061142(n+1)*A166591(n+1)`
-/

namespace A167321.P2465349604007328895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061142 (n + 1) * A166591 (n + 1)

end

end A167321.P2465349604007328895

/-! ## A167321.P17211311157280880367

`2^A001222(n+1)*A166591(n+1)`
-/

namespace A167321.P17211311157280880367
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A001222 (n + 1) : ℤ) * (A166591 (n + 1) : ℚ)

end

end A167321.P17211311157280880367

/-! ## A167321.P376487702495305067

`A167323(n+1)/A061142(n+1)`
-/

namespace A167321.P376487702495305067
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167323 (n + 1) : ℚ) / (A061142 (n + 1) : ℚ)

end

end A167321.P376487702495305067

/-! ## A167321.P1801174374127278669

`A167325(n+1)/A165824(n+1)`
-/

namespace A167321.P1801174374127278669
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167325 (n + 1) : ℚ) / (A165824 (n + 1) : ℚ)

end

end A167321.P1801174374127278669

/-! ## A167321.P662244137955737824

`A167327(n+1)/A165825(n+1)`
-/

namespace A167321.P662244137955737824
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167327 (n + 1) : ℚ) / (A165825 (n + 1) : ℚ)

end

end A167321.P662244137955737824

/-! ## A167321.P14049828640389088546

`A167329(n+1)/A165826(n+1)`
-/

namespace A167321.P14049828640389088546
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167329 (n + 1) : ℚ) / (A165826 (n + 1) : ℚ)

end

end A167321.P14049828640389088546

/-! ## A167321.P12280571921272670760

`gcd(A167323(n+1), A167325(n+1))`
-/

namespace A167321.P12280571921272670760
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A167323 (n + 1)) (A167325 (n + 1))

end

end A167321.P12280571921272670760

/-! ## A167321.P3318912486959832435

`gcd(A167327(n+1), A167329(n+1))`
-/

namespace A167321.P3318912486959832435
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A167327 (n + 1)) (A167329 (n + 1))

end

end A167321.P3318912486959832435

/-! ## A167321.P4659346792294734636

`A167327(n+1)/A061142(n+1)²`
-/

namespace A167321.P4659346792294734636
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167327 (n + 1) : ℚ) / (A061142 (n + 1) ^ 2 : ℚ)

end

end A167321.P4659346792294734636

/-! ## A167321.P17617551047945775007

`A167323(n+1)²/A167327(n+1)`
-/

namespace A167321.P17617551047945775007
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167323 (n + 1) ^ 2 : ℚ) / (A167327 (n + 1) : ℚ)

end

end A167321.P17617551047945775007

/-! ## A167321.P14526612709922595709

`A167323(n+1)/sqrt(A165825(n+1))`
-/

namespace A167321.P14526612709922595709
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A167323 (n + 1) : ℝ) / Real.sqrt (A165825 (n + 1) : ℝ)

end

end A167321.P14526612709922595709

/-! ## A167321.P2889461567597730903

`A167329(n+1)/A166591(A061142(n+1))`
-/

namespace A167321.P2889461567597730903
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167329 (n + 1) : ℚ) / (A166591 (A061142 (n + 1)).toNat : ℚ)

end

end A167321.P2889461567597730903

/-! ## A167321.P14668106632048065418

`A167323(n+1)/A118655(A001222(n+1)+1)`
-/

namespace A167321.P14668106632048065418
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167323 (n + 1) : ℚ) / (A118655 (A001222 (n + 1) + 1).toNat : ℚ)

end

end A167321.P14668106632048065418

/-! ## A167321.P10039891948897741706

`A061142(n+1)/A003958(n+1)*A109624(n+1)`
-/

namespace A167321.P10039891948897741706
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061142 (n + 1) : ℚ) / (A003958 (n + 1) : ℚ) * (A109624 (n + 1) : ℚ)

end

end A167321.P10039891948897741706

/-! ## A167321.P13274300233551130150

`A166591(n+1)/A003959(n+1)*A166642(n+1)`
-/

namespace A167321.P13274300233551130150
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166591 (n + 1) : ℚ) / (A003959 (n + 1) : ℚ) * (A166642 (n + 1) : ℚ)

end

end A167321.P13274300233551130150

/-! ## A167321.P507166655313627132

`A061142(n+1)/A165824(n+1)*A167322(n+1)`
-/

namespace A167321.P507166655313627132
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061142 (n + 1) : ℚ) / (A165824 (n + 1) : ℚ) * (A167322 (n + 1) : ℚ)

end

end A167321.P507166655313627132

/-! ## A167321.P4605831574445783036

`A061142(n+1)/A166590(n+1)*A167360(n+1)`
-/

namespace A167321.P4605831574445783036
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061142 (n + 1) : ℚ) / (A166590 (n + 1) : ℚ) * (A167360 (n + 1) : ℚ)

end

end A167321.P4605831574445783036

/-! ## A167321.P15793304485245352032

`A166591(n+1)/A166590(n+1)*A167303(n+1)`
-/

namespace A167321.P15793304485245352032
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166591 (n + 1) : ℚ) / (A166590 (n + 1) : ℚ) * (A167303 (n + 1) : ℚ)

end

end A167321.P15793304485245352032

/-! ## A167321.P3636761481468656858

`A166591(n+1)/A167322(n+1)*A167325(n+1)`
-/

namespace A167321.P3636761481468656858
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166591 (n + 1) : ℚ) / (A167322 (n + 1) : ℚ) * (A167325 (n + 1) : ℚ)

end

end A167321.P3636761481468656858

/-! ## A167321.P12425257690808963518

`A166591(n+1)/A167323(n+1)*A167327(n+1)`
-/

namespace A167321.P12425257690808963518
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166591 (n + 1) : ℚ) / (A167323 (n + 1) : ℚ) * (A167327 (n + 1) : ℚ)

end

end A167321.P12425257690808963518

/-!
# A167322: Totally multiplicative sequence with a(p) = 3*(p+3) for prime p.

The programs for A167322, there is no canonical definition to state claims against.
-/

/-! ## A167322.P9572067943050484157

`A165824(n+1)*A166591(n+1)`
-/

namespace A167322.P9572067943050484157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165824 (n + 1) * A166591 (n + 1)

end

end A167322.P9572067943050484157

/-! ## A167322.P9297258726524610254

`3^A001222(n+1)*A166591(n+1)`
-/

namespace A167322.P9297258726524610254
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (A001222 (n + 1) : ℤ) * (A166591 (n + 1) : ℚ)

end

end A167322.P9297258726524610254

/-! ## A167322.P3051899746962258739

`A167325(n+1)/A061142(n+1)`
-/

namespace A167322.P3051899746962258739
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167325 (n + 1) : ℚ) / (A061142 (n + 1) : ℚ)

end

end A167322.P3051899746962258739

/-! ## A167322.P12490260649501946213

`A167328(n+1)/A165824(n+1)`
-/

namespace A167322.P12490260649501946213
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167328 (n + 1) : ℚ) / (A165824 (n + 1) : ℚ)

end

end A167322.P12490260649501946213

/-! ## A167322.P2096631634644732574

`gcd(A167325(n+1), A167328(n+1))`
-/

namespace A167322.P2096631634644732574
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A167325 (n + 1)) (A167328 (n + 1))

end

end A167322.P2096631634644732574

/-! ## A167322.P9371186575066623973

`A167325(n+1)/sqrt(A165825(n+1))`
-/

namespace A167322.P9371186575066623973
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A167325 (n + 1) : ℝ) / Real.sqrt (A165825 (n + 1) : ℝ)

end

end A167322.P9371186575066623973

/-! ## A167322.P13286948948189396974

`A167328(n+1)/sqrt(A165830(n+1))`
-/

namespace A167322.P13286948948189396974
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A167328 (n + 1) : ℝ) / Real.sqrt (A165830 (n + 1) : ℝ)

end

end A167322.P13286948948189396974

/-! ## A167322.P12800550639745173888

`sqrt(sqrt(A167363(n+1))*A167328(n+1))`
-/

namespace A167322.P12800550639745173888
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Real.sqrt (A167363 (n + 1) : ℝ) * (A167328 (n + 1) : ℝ))

end

end A167322.P12800550639745173888

/-! ## A167322.P17909085049872836643

`A003959(A061142(n+1))*A166591(n+1)`
-/

namespace A167322.P17909085049872836643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003959 (A061142 (n + 1)).toNat * A166591 (n + 1)

end

end A167322.P17909085049872836643

/-! ## A167322.P10330556897674861047

`A167325(n+1)/A000079(A001222(n+1))`
-/

namespace A167322.P10330556897674861047
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167325 (n + 1) : ℚ) / (A000079 (A001222 (n + 1)).toNat : ℚ)

end

end A167322.P10330556897674861047

/-! ## A167322.P10281482279490527609

`A166591(n+1)/A003959(n+1)*A166643(n+1)`
-/

namespace A167322.P10281482279490527609
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166591 (n + 1) : ℚ) / (A003959 (n + 1) : ℚ) * (A166643 (n + 1) : ℚ)

end

end A167322.P10281482279490527609

/-! ## A167322.P1653291449415638134

`A165824(n+1)/A165825(n+1)*A167323(n+1)`
-/

namespace A167322.P1653291449415638134
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A165824 (n + 1) : ℚ) / (A165825 (n + 1) : ℚ) * (A167323 (n + 1) : ℚ)

end

end A167322.P1653291449415638134

/-! ## A167322.P1636347192972853322

`A165824(n+1)/A166590(n+1)*A167360(n+1)`
-/

namespace A167322.P1636347192972853322
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A165824 (n + 1) : ℚ) / (A166590 (n + 1) : ℚ) * (A167360 (n + 1) : ℚ)

end

end A167322.P1636347192972853322

/-! ## A167322.P5952951653089864195

`A166591(n+1)/A167321(n+1)*A167325(n+1)`
-/

namespace A167322.P5952951653089864195
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166591 (n + 1) : ℚ) / (A167321 (n + 1) : ℚ) * (A167325 (n + 1) : ℚ)

end

end A167322.P5952951653089864195

/-! ## A167322.P12388244866109921872

`A167321(n+1)/A167323(n+1)*A167325(n+1)`
-/

namespace A167322.P12388244866109921872
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167321 (n + 1) : ℚ) / (A167323 (n + 1) : ℚ) * (A167325 (n + 1) : ℚ)

end

end A167322.P12388244866109921872

/-! ## A167322.P7907240061549494512

`A167321(n+1)/A167325(n+1)*A167328(n+1)`
-/

namespace A167322.P7907240061549494512
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167321 (n + 1) : ℚ) / (A167325 (n + 1) : ℚ) * (A167328 (n + 1) : ℚ)

end

end A167322.P7907240061549494512

/-! ## A167322.P9754561603532524114

`A167323(n+1)*A167325(n+1)/A167327(n+1)`
-/

namespace A167322.P9754561603532524114
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167323 (n + 1) * A167325 (n + 1) : ℚ) / (A167327 (n + 1) : ℚ)

end

end A167322.P9754561603532524114

/-! ## A167322.P15826448865202108099

`A167324(n+1)*A167325(n+1)/A167329(n+1)`
-/

namespace A167322.P15826448865202108099
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167324 (n + 1) * A167325 (n + 1) : ℚ) / (A167329 (n + 1) : ℚ)

end

end A167322.P15826448865202108099

/-! ## A167322.P11754448591196299550

`A165824(n+1)/A061142(n+1)²*A167323(n+1)`
-/

namespace A167322.P11754448591196299550
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A165824 (n + 1) : ℚ) / (A061142 (n + 1) ^ 2 : ℚ) * (A167323 (n + 1) : ℚ)

end

end A167322.P11754448591196299550

/-! ## A167322.P15102371739033740986

`A167304(n+1)/A166590(n+1)²*A167360(n+1)`
-/

namespace A167322.P15102371739033740986
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167304 (n + 1) : ℚ) / (A166590 (n + 1) ^ 2 : ℚ) * (A167360 (n + 1) : ℚ)

end

end A167322.P15102371739033740986

/-!
# A167323: Totally multiplicative sequence with a(p) = 4*(p+3) for prime p.

The programs for A167323, there is no canonical definition to state claims against.
-/

/-! ## A167323.P1191067379656384596

`A165825(n+1)*A166591(n+1)`
-/

namespace A167323.P1191067379656384596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165825 (n + 1) * A166591 (n + 1)

end

end A167323.P1191067379656384596

/-! ## A167323.P7813075533036708001

`4^A001222(n+1)*A166591(n+1)`
-/

namespace A167323.P7813075533036708001
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 : ℚ) ^ (A001222 (n + 1) : ℤ) * (A166591 (n + 1) : ℚ)

end

end A167323.P7813075533036708001

/-! ## A167323.P7769818732279326983

`A061142(n+1)*A167321(n+1)`
-/

namespace A167323.P7769818732279326983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061142 (n + 1) * A167321 (n + 1)

end

end A167323.P7769818732279326983

/-! ## A167323.P10200910386540106892

`A167327(n+1)/A061142(n+1)`
-/

namespace A167323.P10200910386540106892
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167327 (n + 1) : ℚ) / (A061142 (n + 1) : ℚ)

end

end A167323.P10200910386540106892

/-! ## A167323.P4361073311265320772

`A061142(n+1)²*A166591(n+1)`
-/

namespace A167323.P4361073311265320772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061142 (n + 1) ^ 2 * A166591 (n + 1)

end

end A167323.P4361073311265320772

/-! ## A167323.P7655499825682511147

`sqrt(A165825(n+1))*A167321(n+1)`
-/

namespace A167323.P7655499825682511147
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A165825 (n + 1) : ℝ) * (A167321 (n + 1) : ℝ)

end

end A167323.P7655499825682511147

/-! ## A167323.P13759370107544826754

`A167321(n+1)²/A166591(n+1)`
-/

namespace A167323.P13759370107544826754
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167321 (n + 1) ^ 2 : ℚ) / (A166591 (n + 1) : ℚ)

end

end A167323.P13759370107544826754

/-! ## A167323.P1772005200194092097

`sqrt(A167321(n+1)*A167327(n+1))`
-/

namespace A167323.P1772005200194092097
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A167321 (n + 1) * A167327 (n + 1) : ℝ)

end

end A167323.P1772005200194092097

/-! ## A167323.P7490596979384577039

`A167325(n+1)²/A167328(n+1)`
-/

namespace A167323.P7490596979384577039
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167325 (n + 1) ^ 2 : ℚ) / (A167328 (n + 1) : ℚ)

end

end A167323.P7490596979384577039

/-! ## A167323.P4969286689396494068

`2^A001222(n+1)*A167321(n+1)`
-/

namespace A167323.P4969286689396494068
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A001222 (n + 1) : ℤ) * (A167321 (n + 1) : ℚ)

end

end A167323.P4969286689396494068

/-! ## A167323.P8715301759346710853

`A167327(n+1)/2^A001222(n+1)`
-/

namespace A167323.P8715301759346710853
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167327 (n + 1) : ℚ) / (2 : ℚ) ^ (A001222 (n + 1) : ℤ)

end

end A167323.P8715301759346710853

/-! ## A167323.P13957377469495651076

`A109624(n+1)/A003958(n+1)*A165825(n+1)`
-/

namespace A167323.P13957377469495651076
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109624 (n + 1) : ℚ) / (A003958 (n + 1) : ℚ) * (A165825 (n + 1) : ℚ)

end

end A167323.P13957377469495651076

/-! ## A167323.P10492327201254331303

`A166591(n+1)/A003959(n+1)*A166644(n+1)`
-/

namespace A167323.P10492327201254331303
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166591 (n + 1) : ℚ) / (A003959 (n + 1) : ℚ) * (A166644 (n + 1) : ℚ)

end

end A167323.P10492327201254331303

/-! ## A167323.P12744580491621837460

`A165825(n+1)/A166590(n+1)*A167360(n+1)`
-/

namespace A167323.P12744580491621837460
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A165825 (n + 1) : ℚ) / (A166590 (n + 1) : ℚ) * (A167360 (n + 1) : ℚ)

end

end A167323.P12744580491621837460

/-! ## A167323.P11625804869027347610

`A166591(n+1)/A166590(n+1)*A167305(n+1)`
-/

namespace A167323.P11625804869027347610
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166591 (n + 1) : ℚ) / (A166590 (n + 1) : ℚ) * (A167305 (n + 1) : ℚ)

end

end A167323.P11625804869027347610

/-! ## A167323.P9988455997861042192

`A166634(n+1)/A166633(n+1)*A167322(n+1)`
-/

namespace A167323.P9988455997861042192
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166634 (n + 1) : ℚ) / (A166633 (n + 1) : ℚ) * (A167322 (n + 1) : ℚ)

end

end A167323.P9988455997861042192

/-! ## A167323.P6600328352359704719

`A166591(n+1)/A167321(n+1)*A167327(n+1)`
-/

namespace A167323.P6600328352359704719
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166591 (n + 1) : ℚ) / (A167321 (n + 1) : ℚ) * (A167327 (n + 1) : ℚ)

end

end A167323.P6600328352359704719

/-! ## A167323.P4729083913390398872

`A167321(n+1)/A167322(n+1)*A167325(n+1)`
-/

namespace A167323.P4729083913390398872
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167321 (n + 1) : ℚ) / (A167322 (n + 1) : ℚ) * (A167325 (n + 1) : ℚ)

end

end A167323.P4729083913390398872

/-! ## A167323.P5184597530714563387

`A167322(n+1)/A167325(n+1)*A167327(n+1)`
-/

namespace A167323.P5184597530714563387
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167322 (n + 1) : ℚ) / (A167325 (n + 1) : ℚ) * (A167327 (n + 1) : ℚ)

end

end A167323.P5184597530714563387

/-! ## A167323.P12639149706329077456

`A167324(n+1)*A167327(n+1)/A167329(n+1)`
-/

namespace A167323.P12639149706329077456
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167324 (n + 1) * A167327 (n + 1) : ℚ) / (A167329 (n + 1) : ℚ)

end

end A167323.P12639149706329077456

/-!
# A167324: Totally multiplicative sequence with a(p) = 5*(p+3) for prime p.

The programs for A167324, there is no canonical definition to state claims against.
-/

/-! ## A167324.P6879352098713023137

`A165826(n+1)*A166591(n+1)`
-/

namespace A167324.P6879352098713023137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165826 (n + 1) * A166591 (n + 1)

end

end A167324.P6879352098713023137

/-! ## A167324.P13375700164283562562

`5^A001222(n+1)*A166591(n+1)`
-/

namespace A167324.P13375700164283562562
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 : ℚ) ^ (A001222 (n + 1) : ℤ) * (A166591 (n + 1) : ℚ)

end

end A167324.P13375700164283562562

/-! ## A167324.P2645382298496181716

`A167329(n+1)/A061142(n+1)`
-/

namespace A167324.P2645382298496181716
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167329 (n + 1) : ℚ) / (A061142 (n + 1) : ℚ)

end

end A167324.P2645382298496181716

/-! ## A167324.P17913381487012713739

`sqrt(A167363(n+1))*A165826(n+1)`
-/

namespace A167324.P17913381487012713739
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A167363 (n + 1) : ℝ) * (A165826 (n + 1) : ℝ)

end

end A167324.P17913381487012713739

/-! ## A167324.P9336702412974724067

`A167329(n+1)/sqrt(A165825(n+1))`
-/

namespace A167324.P9336702412974724067
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A167329 (n + 1) : ℝ) / Real.sqrt (A165825 (n + 1) : ℝ)

end

end A167324.P9336702412974724067

/-! ## A167324.P7614896700049907589

`A167329(n+1)/2^A001222(n+1)`
-/

namespace A167324.P7614896700049907589
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167329 (n + 1) : ℚ) / (2 : ℚ) ^ (A001222 (n + 1) : ℤ)

end

end A167324.P7614896700049907589

/-! ## A167324.P2362538128367247740

`A166591(A061142(n+1))*A166591(n+1)`
-/

namespace A167324.P2362538128367247740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166591 (A061142 (n + 1)).toNat * A166591 (n + 1)

end

end A167324.P2362538128367247740

/-! ## A167324.P3163578183714215643

`gcd(A167329(n+1)/A165872(n+1), A000038(n))`
-/

namespace A167324.P3163578183714215643
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway ((A167329 (n + 1) : ℚ) / (A165872 (n + 1) : ℚ))) (A000038 n)

end

end A167324.P3163578183714215643

/-! ## A167324.P9119855904138142651

`A165826(n+1)/A003959(n+1)*A167353(n+1)`
-/

namespace A167324.P9119855904138142651
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A165826 (n + 1) : ℚ) / (A003959 (n + 1) : ℚ) * (A167353 (n + 1) : ℚ)

end

end A167324.P9119855904138142651

/-! ## A167324.P6548240496248280555

`A165826(n+1)/A165830(n+1)*A167328(n+1)`
-/

namespace A167324.P6548240496248280555
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A165826 (n + 1) : ℚ) / (A165830 (n + 1) : ℚ) * (A167328 (n + 1) : ℚ)

end

end A167324.P6548240496248280555

/-! ## A167324.P11979009902813272147

`A165826(n+1)/A166590(n+1)*A167360(n+1)`
-/

namespace A167324.P11979009902813272147
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A165826 (n + 1) : ℚ) / (A166590 (n + 1) : ℚ) * (A167360 (n + 1) : ℚ)

end

end A167324.P11979009902813272147

/-! ## A167324.P150490014117800822

`A166591(n+1)/A166642(n+1)*A166650(n+1)`
-/

namespace A167324.P150490014117800822
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166591 (n + 1) : ℚ) / (A166642 (n + 1) : ℚ) * (A166650 (n + 1) : ℚ)

end

end A167324.P150490014117800822

/-! ## A167324.P15640344595027499557

`A166635(n+1)/A166633(n+1)*A167322(n+1)`
-/

namespace A167324.P15640344595027499557
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166635 (n + 1) : ℚ) / (A166633 (n + 1) : ℚ) * (A167322 (n + 1) : ℚ)

end

end A167324.P15640344595027499557

/-! ## A167324.P13246228134533442610

`A166591(n+1)/A167321(n+1)*A167329(n+1)`
-/

namespace A167324.P13246228134533442610
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166591 (n + 1) : ℚ) / (A167321 (n + 1) : ℚ) * (A167329 (n + 1) : ℚ)

end

end A167324.P13246228134533442610

/-! ## A167324.P2486815843493412110

`A167321(n+1)/A167323(n+1)*A167329(n+1)`
-/

namespace A167324.P2486815843493412110
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167321 (n + 1) : ℚ) / (A167323 (n + 1) : ℚ) * (A167329 (n + 1) : ℚ)

end

end A167324.P2486815843493412110

/-! ## A167324.P3148395130153815088

`A167322(n+1)/A167325(n+1)*A167329(n+1)`
-/

namespace A167324.P3148395130153815088
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167322 (n + 1) : ℚ) / (A167325 (n + 1) : ℚ) * (A167329 (n + 1) : ℚ)

end

end A167324.P3148395130153815088

/-! ## A167324.P3657339634929484814

`A167323(n+1)/A167327(n+1)*A167329(n+1)`
-/

namespace A167324.P3657339634929484814
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167323 (n + 1) : ℚ) / (A167327 (n + 1) : ℚ) * (A167329 (n + 1) : ℚ)

end

end A167324.P3657339634929484814

/-! ## A167324.P3548876094755473118

`A109624(A061142(n+1))/A003958(n+1)*A109624(n+1)`
-/

namespace A167324.P3548876094755473118
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109624 (A061142 (n + 1)).toNat : ℚ) / (A003958 (n + 1) : ℚ) * (A109624 (n + 1) : ℚ)

end

end A167324.P3548876094755473118

/-! ## A167324.P7385020015292945103

`A109624(A061142(n+1))/A061142(n+1)*A167321(n+1)`
-/

namespace A167324.P7385020015292945103
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109624 (A061142 (n + 1)).toNat : ℚ) / (A061142 (n + 1) : ℚ) * (A167321 (n + 1) : ℚ)

end

end A167324.P7385020015292945103

/-! ## A167324.P10379446043534755866

`A109624(A061142(n+1))/A165825(n+1)*A167323(n+1)`
-/

namespace A167324.P10379446043534755866
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109624 (A061142 (n + 1)).toNat : ℚ) / (A165825 (n + 1) : ℚ) * (A167323 (n + 1) : ℚ)

end

end A167324.P10379446043534755866

/-!
# A167325: Totally multiplicative sequence with a(p) = 6*(p+3) for prime p.

The programs for A167325, there is no canonical definition to state claims against.
-/

/-! ## A167325.P14212985059394680878

`A165827(n+1)*A166591(n+1)`
-/

namespace A167325.P14212985059394680878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165827 (n + 1) * A166591 (n + 1)

end

end A167325.P14212985059394680878

/-! ## A167325.P13740099580147745656

`6^A001222(n+1)*A166591(n+1)`
-/

namespace A167325.P13740099580147745656
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (6 : ℚ) ^ (A001222 (n + 1) : ℤ) * (A166591 (n + 1) : ℚ)

end

end A167325.P13740099580147745656

/-! ## A167325.P15303048805648962365

`A061142(n+1)*A167322(n+1)`
-/

namespace A167325.P15303048805648962365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061142 (n + 1) * A167322 (n + 1)

end

end A167325.P15303048805648962365

/-! ## A167325.P7664374831113251407

`A165824(n+1)*A167321(n+1)`
-/

namespace A167325.P7664374831113251407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165824 (n + 1) * A167321 (n + 1)

end

end A167325.P7664374831113251407

/-! ## A167325.P655593234006799162

`lcm(A167321(n+1), A167322(n+1))`
-/

namespace A167325.P655593234006799162
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A167321 (n + 1)) (A167322 (n + 1))

end

end A167325.P655593234006799162

/-! ## A167325.P7183700985838841461

`sqrt(A165825(n+1))*A167322(n+1)`
-/

namespace A167325.P7183700985838841461
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A165825 (n + 1) : ℝ) * (A167322 (n + 1) : ℝ)

end

end A167325.P7183700985838841461

/-! ## A167325.P17592034399933214751

`sqrt(A167323(n+1)*A167328(n+1))`
-/

namespace A167325.P17592034399933214751
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A167323 (n + 1) * A167328 (n + 1) : ℝ)

end

end A167325.P17592034399933214751

/-! ## A167325.P1140931615059409750

`3^A001222(n+1)*A167321(n+1)`
-/

namespace A167325.P1140931615059409750
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (A001222 (n + 1) : ℤ) * (A167321 (n + 1) : ℚ)

end

end A167325.P1140931615059409750

/-! ## A167325.P12745161633587878194

`A000079(A001222(n+1))*A167322(n+1)`
-/

namespace A167325.P12745161633587878194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A001222 (n + 1)).toNat * A167322 (n + 1)

end

end A167325.P12745161633587878194

/-! ## A167325.P16353809286618690278

`A003959(A061142(n+1))*A167321(n+1)`
-/

namespace A167325.P16353809286618690278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003959 (A061142 (n + 1)).toNat * A167321 (n + 1)

end

end A167325.P16353809286618690278

/-! ## A167325.P3986952792816913182

`A166591(n+1)*A359530(A061142(n+1))`
-/

namespace A167325.P3986952792816913182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166591 (n + 1) * A359530 (A061142 (n + 1)).toNat

end

end A167325.P3986952792816913182

/-! ## A167325.P14052385705629099850

`A165824(n+1)/A061142(n+1)*A167323(n+1)`
-/

namespace A167325.P14052385705629099850
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A165824 (n + 1) : ℚ) / (A061142 (n + 1) : ℚ) * (A167323 (n + 1) : ℚ)

end

end A167325.P14052385705629099850

/-! ## A167325.P2110883951919745660

`A165827(n+1)/A166590(n+1)*A167360(n+1)`
-/

namespace A167325.P2110883951919745660
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A165827 (n + 1) : ℚ) / (A166590 (n + 1) : ℚ) * (A167360 (n + 1) : ℚ)

end

end A167325.P2110883951919745660

/-! ## A167325.P3632788837113011998

`A166591(n+1)/A166590(n+1)*A167307(n+1)`
-/

namespace A167325.P3632788837113011998
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166591 (n + 1) : ℚ) / (A166590 (n + 1) : ℚ) * (A167307 (n + 1) : ℚ)

end

end A167325.P3632788837113011998

/-! ## A167325.P111214759712898589

`A167321(n+1)/A166591(n+1)*A167322(n+1)`
-/

namespace A167325.P111214759712898589
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167321 (n + 1) : ℚ) / (A166591 (n + 1) : ℚ) * (A167322 (n + 1) : ℚ)

end

end A167325.P111214759712898589

/-! ## A167325.P9585660602780877026

`A167321(n+1)/A167322(n+1)*A167328(n+1)`
-/

namespace A167325.P9585660602780877026
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167321 (n + 1) : ℚ) / (A167322 (n + 1) : ℚ) * (A167328 (n + 1) : ℚ)

end

end A167325.P9585660602780877026

/-! ## A167325.P17884142347830405526

`A167322(n+1)/A167321(n+1)*A167323(n+1)`
-/

namespace A167325.P17884142347830405526
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167322 (n + 1) : ℚ) / (A167321 (n + 1) : ℚ) * (A167323 (n + 1) : ℚ)

end

end A167325.P17884142347830405526

/-! ## A167325.P9226689733246183778

`A167322(n+1)/A167323(n+1)*A167327(n+1)`
-/

namespace A167325.P9226689733246183778
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167322 (n + 1) : ℚ) / (A167323 (n + 1) : ℚ) * (A167327 (n + 1) : ℚ)

end

end A167325.P9226689733246183778

/-! ## A167325.P17656298100001690294

`A167322(n+1)/A167324(n+1)*A167329(n+1)`
-/

namespace A167325.P17656298100001690294
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167322 (n + 1) : ℚ) / (A167324 (n + 1) : ℚ) * (A167329 (n + 1) : ℚ)

end

end A167325.P17656298100001690294

/-! ## A167325.P840039849626903405

`sqrt(A061142(n+1)*A167321(n+1)*A167328(n+1))`
-/

namespace A167325.P840039849626903405
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A061142 (n + 1) * A167321 (n + 1) * A167328 (n + 1) : ℝ)

end

end A167325.P840039849626903405

/-!
# A167326: Totally multiplicative sequence with a(p) = 7*(p+3) for prime p.

The programs for A167326, there is no canonical definition to state claims against.
-/

/-! ## A167326.P6430872315365711651

`A165828(n+1)*A166591(n+1)`
-/

namespace A167326.P6430872315365711651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165828 (n + 1) * A166591 (n + 1)

end

end A167326.P6430872315365711651

/-! ## A167326.P6144320806503936000

`7^A001222(n+1)*A166591(n+1)`
-/

namespace A167326.P6144320806503936000
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (7 : ℚ) ^ (A001222 (n + 1) : ℤ) * (A166591 (n + 1) : ℚ)

end

end A167326.P6144320806503936000

/-! ## A167326.P11314695173710366604

`sqrt(A167363(n+1))*A165828(n+1)`
-/

namespace A167326.P11314695173710366604
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A167363 (n + 1) : ℝ) * (A165828 (n + 1) : ℝ)

end

end A167326.P11314695173710366604

/-! ## A167326.P12033638131181786654

`A109624(n+1)/A003958(n+1)*A165828(n+1)`
-/

namespace A167326.P12033638131181786654
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109624 (n + 1) : ℚ) / (A003958 (n + 1) : ℚ) * (A165828 (n + 1) : ℚ)

end

end A167326.P12033638131181786654

/-! ## A167326.P18156933955933968142

`A165828(n+1)/A003959(n+1)*A167353(n+1)`
-/

namespace A167326.P18156933955933968142
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A165828 (n + 1) : ℚ) / (A003959 (n + 1) : ℚ) * (A167353 (n + 1) : ℚ)

end

end A167326.P18156933955933968142

/-! ## A167326.P2967390103786713435

`A165828(n+1)/A061142(n+1)*A167321(n+1)`
-/

namespace A167326.P2967390103786713435
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A165828 (n + 1) : ℚ) / (A061142 (n + 1) : ℚ) * (A167321 (n + 1) : ℚ)

end

end A167326.P2967390103786713435

/-! ## A167326.P7247886520145963359

`A165828(n+1)/A165824(n+1)*A167322(n+1)`
-/

namespace A167326.P7247886520145963359
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A165828 (n + 1) : ℚ) / (A165824 (n + 1) : ℚ) * (A167322 (n + 1) : ℚ)

end

end A167326.P7247886520145963359

/-! ## A167326.P4251837158276383947

`A165828(n+1)/A166590(n+1)*A167360(n+1)`
-/

namespace A167326.P4251837158276383947
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A165828 (n + 1) : ℚ) / (A166590 (n + 1) : ℚ) * (A167360 (n + 1) : ℚ)

end

end A167326.P4251837158276383947

/-! ## A167326.P4781946388824162227

`gcd(A167321(n+1), A167328(n+1))*A165828(n+1)`
-/

namespace A167326.P4781946388824162227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (A167321 (n + 1)) (A167328 (n + 1)) : ℤ) * A165828 (n + 1)

end

end A167326.P4781946388824162227

/-! ## A167326.P1042359419449225117

`A166591(n+1)*A359530(A165824(n+1))`
-/

namespace A167326.P1042359419449225117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166591 (n + 1) * A359530 (A165824 (n + 1)).toNat

end

end A167326.P1042359419449225117

/-!
# A167327: Totally multiplicative sequence with a(p) = 8*(p+3) for prime p.

The programs for A167327, there is no canonical definition to state claims against.
-/

/-! ## A167327.P466276703709390287

`A165829(n+1)*A166591(n+1)`
-/

namespace A167327.P466276703709390287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165829 (n + 1) * A166591 (n + 1)

end

end A167327.P466276703709390287

/-! ## A167327.P5755691287635308217

`8^A001222(n+1)*A166591(n+1)`
-/

namespace A167327.P5755691287635308217
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (8 : ℚ) ^ (A001222 (n + 1) : ℤ) * (A166591 (n + 1) : ℚ)

end

end A167327.P5755691287635308217

/-! ## A167327.P17496527938646323009

`A061142(n+1)*A167323(n+1)`
-/

namespace A167327.P17496527938646323009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061142 (n + 1) * A167323 (n + 1)

end

end A167327.P17496527938646323009

/-! ## A167327.P14166383886254790950

`A165825(n+1)*A167321(n+1)`
-/

namespace A167327.P14166383886254790950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165825 (n + 1) * A167321 (n + 1)

end

end A167327.P14166383886254790950

/-! ## A167327.P12041314282439785158

`A061142(n+1)²*A167321(n+1)`
-/

namespace A167327.P12041314282439785158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061142 (n + 1) ^ 2 * A167321 (n + 1)

end

end A167327.P12041314282439785158

/-! ## A167327.P17354182567569381921

`sqrt(A165825(n+1))*A167323(n+1)`
-/

namespace A167327.P17354182567569381921
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A165825 (n + 1) : ℝ) * (A167323 (n + 1) : ℝ)

end

end A167327.P17354182567569381921

/-! ## A167327.P5066980678188329415

`A167323(n+1)²/A167321(n+1)`
-/

namespace A167327.P5066980678188329415
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167323 (n + 1) ^ 2 : ℚ) / (A167321 (n + 1) : ℚ)

end

end A167327.P5066980678188329415

/-! ## A167327.P8637490395735518245

`A118655(A001222(n+1)+1)*A167323(n+1)`
-/

namespace A167327.P8637490395735518245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118655 (A001222 (n + 1) + 1).toNat * A167323 (n + 1)

end

end A167327.P8637490395735518245

/-! ## A167327.P4213209877044108105

`A165829(n+1)/A166590(n+1)*A167360(n+1)`
-/

namespace A167327.P4213209877044108105
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A165829 (n + 1) : ℚ) / (A166590 (n + 1) : ℚ) * (A167360 (n + 1) : ℚ)

end

end A167327.P4213209877044108105

/-! ## A167327.P26157390578187342

`A167321(n+1)/A166591(n+1)*A167323(n+1)`
-/

namespace A167327.P26157390578187342
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167321 (n + 1) : ℚ) / (A166591 (n + 1) : ℚ) * (A167323 (n + 1) : ℚ)

end

end A167327.P26157390578187342

/-! ## A167327.P10226576347992106359

`A167323(n+1)/A167322(n+1)*A167325(n+1)`
-/

namespace A167327.P10226576347992106359
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167323 (n + 1) : ℚ) / (A167322 (n + 1) : ℚ) * (A167325 (n + 1) : ℚ)

end

end A167327.P10226576347992106359

/-! ## A167327.P7185586319669088022

`A167323(n+1)/A167324(n+1)*A167329(n+1)`
-/

namespace A167327.P7185586319669088022
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167323 (n + 1) : ℚ) / (A167324 (n + 1) : ℚ) * (A167329 (n + 1) : ℚ)

end

end A167327.P7185586319669088022

/-! ## A167327.P13166788962070317439

`A061142(n+1)*A166591(n+1)*A061142(n+1)²`
-/

namespace A167327.P13166788962070317439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061142 (n + 1) * A166591 (n + 1) * A061142 (n + 1) ^ 2

end

end A167327.P13166788962070317439

/-! ## A167327.P2828633245709881103

`(A167325(n+1)/A167322(n+1))²*A167321(n+1)`
-/

namespace A167327.P2828633245709881103
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A167325 (n + 1) : ℚ) / (A167322 (n + 1) : ℚ)) ^ 2 * (A167321 (n + 1) : ℚ)

end

end A167327.P2828633245709881103

/-! ## A167327.P14840408558589186800

`A167321(n+1)/A167363(n+1)*A167321(n+1)²`
-/

namespace A167327.P14840408558589186800
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167321 (n + 1) : ℚ) / (A167363 (n + 1) : ℚ) * (A167321 (n + 1) ^ 2 : ℚ)

end

end A167327.P14840408558589186800

/-! ## A167327.P18102173271061476078

`A167321(A165824(n+1))/A165824(n+1)*A167321(n+1)`
-/

namespace A167327.P18102173271061476078
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167321 (A165824 (n + 1)).toNat : ℚ) / (A165824 (n + 1) : ℚ) * (A167321 (n + 1) : ℚ)

end

end A167327.P18102173271061476078

/-! ## A167327.P10596724852802768403

`A000005(A076734(n+1))*A167323(n+1)`
-/

namespace A167327.P10596724852802768403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A076734 (n + 1)).toNat * A167323 (n + 1)

end

end A167327.P10596724852802768403

/-!
# A167328: Totally multiplicative sequence with a(p) = 9*(p+3) for prime p.

The programs for A167328, there is no canonical definition to state claims against.
-/

/-! ## A167328.P6307730006316201457

`A165830(n+1)*A166591(n+1)`
-/

namespace A167328.P6307730006316201457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165830 (n + 1) * A166591 (n + 1)

end

end A167328.P6307730006316201457

/-! ## A167328.P10413736291486618689

`9^A001222(n+1)*A166591(n+1)`
-/

namespace A167328.P10413736291486618689
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (9 : ℚ) ^ (A001222 (n + 1) : ℤ) * (A166591 (n + 1) : ℚ)

end

end A167328.P10413736291486618689

/-! ## A167328.P10473009498479855022

`A165824(n+1)*A167322(n+1)`
-/

namespace A167328.P10473009498479855022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165824 (n + 1) * A167322 (n + 1)

end

end A167328.P10473009498479855022

/-! ## A167328.P5854494269796535791

`A165824(n+1)²*A166591(n+1)`
-/

namespace A167328.P5854494269796535791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165824 (n + 1) ^ 2 * A166591 (n + 1)

end

end A167328.P5854494269796535791

/-! ## A167328.P2444653892165312408

`sqrt(A165830(n+1))*A167322(n+1)`
-/

namespace A167328.P2444653892165312408
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A165830 (n + 1) : ℝ) * (A167322 (n + 1) : ℝ)

end

end A167328.P2444653892165312408

/-! ## A167328.P9760840865393381816

`A167322(n+1)²/A166591(n+1)`
-/

namespace A167328.P9760840865393381816
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167322 (n + 1) ^ 2 : ℚ) / (A166591 (n + 1) : ℚ)

end

end A167328.P9760840865393381816

/-! ## A167328.P17780933304138546270

`A167325(n+1)²/A167323(n+1)`
-/

namespace A167328.P17780933304138546270
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167325 (n + 1) ^ 2 : ℚ) / (A167323 (n + 1) : ℚ)

end

end A167328.P17780933304138546270

/-! ## A167328.P7719254273009217343

`3^A001222(n+1)*A167322(n+1)`
-/

namespace A167328.P7719254273009217343
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (A001222 (n + 1) : ℤ) * (A167322 (n + 1) : ℚ)

end

end A167328.P7719254273009217343

/-! ## A167328.P2166136360132950938

`A167322(n+1)²/sqrt(A167363(n+1))`
-/

namespace A167328.P2166136360132950938
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A167322 (n + 1) ^ 2 : ℝ) / Real.sqrt (A167363 (n + 1) : ℝ)

end

end A167328.P2166136360132950938

/-! ## A167328.P15215765022706286178

`A003959(A061142(n+1))*A167322(n+1)`
-/

namespace A167328.P15215765022706286178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003959 (A061142 (n + 1)).toNat * A167322 (n + 1)

end

end A167328.P15215765022706286178

/-! ## A167328.P3525516683843812792

`A003959(A061142(n+1))²*A166591(n+1)`
-/

namespace A167328.P3525516683843812792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003959 (A061142 (n + 1)).toNat ^ 2 * A166591 (n + 1)

end

end A167328.P3525516683843812792

/-! ## A167328.P6399850433995087327

`A166633(n+1)/A003958(n+1)*A167322(n+1)`
-/

namespace A167328.P6399850433995087327
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166633 (n + 1) : ℚ) / (A003958 (n + 1) : ℚ) * (A167322 (n + 1) : ℚ)

end

end A167328.P6399850433995087327

/-! ## A167328.P706594177520137516

`A165830(n+1)/A166590(n+1)*A167360(n+1)`
-/

namespace A167328.P706594177520137516
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A165830 (n + 1) : ℚ) / (A166590 (n + 1) : ℚ) * (A167360 (n + 1) : ℚ)

end

end A167328.P706594177520137516

/-! ## A167328.P15783934455884598848

`A167322(n+1)/A167321(n+1)*A167325(n+1)`
-/

namespace A167328.P15783934455884598848
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167322 (n + 1) : ℚ) / (A167321 (n + 1) : ℚ) * (A167325 (n + 1) : ℚ)

end

end A167328.P15783934455884598848

/-! ## A167328.P15977848470017327142

`(A165824(n+1)/A061142(n+1))²*A167323(n+1)`
-/

namespace A167328.P15977848470017327142
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A165824 (n + 1) : ℚ) / (A061142 (n + 1) : ℚ)) ^ 2 * (A167323 (n + 1) : ℚ)

end

end A167328.P15977848470017327142

/-! ## A167328.P8853248544242878827

`A061142(n+1)/A167321(n+1)*A167322(n+1)²`
-/

namespace A167328.P8853248544242878827
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061142 (n + 1) : ℚ) / (A167321 (n + 1) : ℚ) * (A167322 (n + 1) ^ 2 : ℚ)

end

end A167328.P8853248544242878827

/-! ## A167328.P14780890720556620036

`A165824(n+1)²/A165825(n+1)*A167323(n+1)`
-/

namespace A167328.P14780890720556620036
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A165824 (n + 1) ^ 2 : ℚ) / (A165825 (n + 1) : ℚ) * (A167323 (n + 1) : ℚ)

end

end A167328.P14780890720556620036

/-! ## A167328.P13473154339374869007

`(A165827(n+1)*A166591(n+1))²/A167323(n+1)`
-/

namespace A167328.P13473154339374869007
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A165827 (n + 1) * A166591 (n + 1)) ^ 2 : ℚ) / (A167323 (n + 1) : ℚ)

end

end A167328.P13473154339374869007

/-! ## A167328.P3495813128126507485

`(A167322(n+1)/A167321(n+1))²*A167323(n+1)`
-/

namespace A167328.P3495813128126507485
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A167322 (n + 1) : ℚ) / (A167321 (n + 1) : ℚ)) ^ 2 * (A167323 (n + 1) : ℚ)

end

end A167328.P3495813128126507485

/-! ## A167328.P18325790202709336053

`A167322(n+1)²/gcd(A167322(n+1), A167324(n+1))`
-/

namespace A167328.P18325790202709336053
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167322 (n + 1) ^ 2 : ℚ) / (Int.gcd (A167322 (n + 1)) (A167324 (n + 1)) : ℚ)

end

end A167328.P18325790202709336053

/-!
# A167329: Totally multiplicative sequence with a(p) = 10*(p+3) for prime p.

The programs for A167329, there is no canonical definition to state claims against.
-/

/-! ## A167329.P157135580132422392

`A165831(n+1)*A166591(n+1)`
-/

namespace A167329.P157135580132422392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165831 (n + 1) * A166591 (n + 1)

end

end A167329.P157135580132422392

/-! ## A167329.P9491595754394369812

`10^A001222(n+1)*A166591(n+1)`
-/

namespace A167329.P9491595754394369812
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (10 : ℚ) ^ (A001222 (n + 1) : ℤ) * (A166591 (n + 1) : ℚ)

end

end A167329.P9491595754394369812

/-! ## A167329.P4865710571767479857

`A061142(n+1)*A167324(n+1)`
-/

namespace A167329.P4865710571767479857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061142 (n + 1) * A167324 (n + 1)

end

end A167329.P4865710571767479857

/-! ## A167329.P12448560303641613400

`A165826(n+1)*A167321(n+1)`
-/

namespace A167329.P12448560303641613400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165826 (n + 1) * A167321 (n + 1)

end

end A167329.P12448560303641613400

/-! ## A167329.P2010126220206253214

`lcm(A167321(n+1), A167324(n+1))`
-/

namespace A167329.P2010126220206253214
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A167321 (n + 1)) (A167324 (n + 1))

end

end A167329.P2010126220206253214

/-! ## A167329.P18363558681850154492

`sqrt(A165825(n+1))*A167324(n+1)`
-/

namespace A167329.P18363558681850154492
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A165825 (n + 1) : ℝ) * (A167324 (n + 1) : ℝ)

end

end A167329.P18363558681850154492

/-! ## A167329.P15284382090035907781

`2^A001222(n+1)*A167324(n+1)`
-/

namespace A167329.P15284382090035907781
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A001222 (n + 1) : ℤ) * (A167324 (n + 1) : ℚ)

end

end A167329.P15284382090035907781

/-! ## A167329.P13481530573038744784

`A109624(A061142(n+1))*A167321(n+1)`
-/

namespace A167329.P13481530573038744784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109624 (A061142 (n + 1)).toNat * A167321 (n + 1)

end

end A167329.P13481530573038744784

/-! ## A167329.P17823891203690718968

`A166591(n+1)*A167321(A061142(n+1))`
-/

namespace A167329.P17823891203690718968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166591 (n + 1) * A167321 (A061142 (n + 1)).toNat

end

end A167329.P17823891203690718968

/-! ## A167329.P3772942778767118044

`A166591(n+1)/A003959(n+1)*A166650(n+1)`
-/

namespace A167329.P3772942778767118044
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166591 (n + 1) : ℚ) / (A003959 (n + 1) : ℚ) * (A166650 (n + 1) : ℚ)

end

end A167329.P3772942778767118044

/-! ## A167329.P16111096777031989817

`A165831(n+1)/A166590(n+1)*A167360(n+1)`
-/

namespace A167329.P16111096777031989817
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A165831 (n + 1) : ℚ) / (A166590 (n + 1) : ℚ) * (A167360 (n + 1) : ℚ)

end

end A167329.P16111096777031989817

/-! ## A167329.P14938627224432699322

`A167321(n+1)/A166591(n+1)*A167324(n+1)`
-/

namespace A167329.P14938627224432699322
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167321 (n + 1) : ℚ) / (A166591 (n + 1) : ℚ) * (A167324 (n + 1) : ℚ)

end

end A167329.P14938627224432699322

/-! ## A167329.P13512837517214416040

`A167323(n+1)/A167321(n+1)*A167324(n+1)`
-/

namespace A167329.P13512837517214416040
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167323 (n + 1) : ℚ) / (A167321 (n + 1) : ℚ) * (A167324 (n + 1) : ℚ)

end

end A167329.P13512837517214416040

/-! ## A167329.P6109054883256312885

`A167324(n+1)/A167322(n+1)*A167325(n+1)`
-/

namespace A167329.P6109054883256312885
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167324 (n + 1) : ℚ) / (A167322 (n + 1) : ℚ) * (A167325 (n + 1) : ℚ)

end

end A167329.P6109054883256312885

/-! ## A167329.P7559074368576704783

`A167324(n+1)/A167323(n+1)*A167327(n+1)`
-/

namespace A167329.P7559074368576704783
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167324 (n + 1) : ℚ) / (A167323 (n + 1) : ℚ) * (A167327 (n + 1) : ℚ)

end

end A167329.P7559074368576704783

/-! ## A167329.P10422580637065807814

`A109624(A061142(n+1))/A061142(n+1)*A167323(n+1)`
-/

namespace A167329.P10422580637065807814
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109624 (A061142 (n + 1)).toNat : ℚ) / (A061142 (n + 1) : ℚ) * (A167323 (n + 1) : ℚ)

end

end A167329.P10422580637065807814

/-! ## A167329.P15683735487162502339

`A167321(A061142(n+1))/A165825(n+1)*A167323(n+1)`
-/

namespace A167329.P15683735487162502339
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167321 (A061142 (n + 1)).toNat : ℚ) / (A165825 (n + 1) : ℚ) * (A167323 (n + 1) : ℚ)

end

end A167329.P15683735487162502339

/-! ## A167329.P17090789907437517003

`A166591(n+1)*A167321(A167321(n+1)/A166591(n+1))`
-/

namespace A167329.P17090789907437517003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166591 (n + 1) * A167321 (SequenceMachineLib.roundAway ((A167321 (n + 1) : ℚ) / (A166591 (n + 1) : ℚ))).toNat

end

end A167329.P17090789907437517003

/-! ## A167329.P12262541201334125518

`A167321(n+1)²/A167323(n+1)*A167321(A061142(n+1))`
-/

namespace A167329.P12262541201334125518
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167321 (n + 1) ^ 2 : ℚ) / (A167323 (n + 1) : ℚ) * (A167321 (A061142 (n + 1)).toNat : ℚ)

end

end A167329.P12262541201334125518

/-! ## A167329.P14101324508501214184

`A167322(n+1)²/A167328(n+1)*A167321(A061142(n+1))`
-/

namespace A167329.P14101324508501214184
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167322 (n + 1) ^ 2 : ℚ) / (A167328 (n + 1) : ℚ) * (A167321 (A061142 (n + 1)).toNat : ℚ)

end

end A167329.P14101324508501214184

/-!
# A167330: Totally multiplicative sequence with a(p) = 2*(2p-1) = 4p-2 for prime p.

The programs for A167330, the canonical program `A167330.P13311422161193416646` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A167330 has offset 1).

The definition of A167330 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A061142, A166651, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A167330.P13311422161193416646

`A061142(n+1)*A166651(n+1)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A167330

/-- `A061142(n+1)*A166651(n+1)` -/
def P13311422161193416646.Spec : Prop :=
  ∀ n, P13311422161193416646.a n = A167330 (n + 1)

theorem P13311422161193416646.correct : P13311422161193416646.Spec := by
  intro n
  simp only [A167330, Nat.add_sub_cancel]

end A167330

/-! ## A167330.P9606326768648530246

`2^A001222(n+1)*A166651(n+1)`
-/

namespace A167330.P9606326768648530246
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A001222 (n + 1) : ℤ) * (A166651 (n + 1) : ℚ)

end

end A167330.P9606326768648530246

namespace A167330

/-- `2^A001222(n+1)*A166651(n+1)` -/
def P9606326768648530246.Spec : Prop :=
  ∀ n, P9606326768648530246.a n = (A167330 (n + 1) : ℚ)

end A167330

/-! ## A167330.P6774669865855575452

`lcm(A165872(n+1), A166651(n+1))`
-/

namespace A167330.P6774669865855575452
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A165872 (n + 1)) (A166651 (n + 1))

end

end A167330.P6774669865855575452

namespace A167330

/-- `lcm(A165872(n+1), A166651(n+1))` -/
def P6774669865855575452.Spec : Prop :=
  ∀ n, (P6774669865855575452.a n : ℤ) = A167330 (n + 1)

end A167330

/-! ## A167330.P15767459762057713109

`2^Δ[A022559(n)]*A166651(n+1)`
-/

namespace A167330.P15767459762057713109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022559 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (f1 (n + 1) - f1 n : ℤ) * (A166651 (n + 1) : ℚ)

end

end A167330.P15767459762057713109

namespace A167330

/-- `2^Δ[A022559(n)]*A166651(n+1)` -/
def P15767459762057713109.Spec : Prop :=
  ∀ n, P15767459762057713109.a n = (A167330 (n + 1) : ℚ)

end A167330

/-! ## A167330.P10911147777708106486

`∏{d}[n+1, A004273(A004273(A120007(#)))+1]`
-/

namespace A167330.P10911147777708106486
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), (A004273 (A004273 (A120007 d).toNat).toNat + 1)

end

end A167330.P10911147777708106486

namespace A167330

/-- `∏{d}[n+1, A004273(A004273(A120007(#)))+1]` -/
def P10911147777708106486.Spec : Prop :=
  ∀ n, P10911147777708106486.a n = A167330 (n + 1)

end A167330

/-! ## A167330.P7325241512572650675

`A166651(n+1)*A250479(A165824(n+1))`
-/

namespace A167330.P7325241512572650675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166651 (n + 1) * A250479 (A165824 (n + 1)).toNat

end

end A167330.P7325241512572650675

namespace A167330

/-- `A166651(n+1)*A250479(A165824(n+1))` -/
def P7325241512572650675.Spec : Prop :=
  ∀ n, P7325241512572650675.a n = A167330 (n + 1)

end A167330

/-!
# A167331: Totally multiplicative sequence with a(p) = 2*(3p-1) = 6p-2 for prime p.

The programs for A167331, there is no canonical definition to state claims against.
-/

/-! ## A167331.P16976597006411686982

`A061142(n+1)*A166652(n+1)`
-/

namespace A167331.P16976597006411686982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061142 (n + 1) * A166652 (n + 1)

end

end A167331.P16976597006411686982

/-! ## A167331.P10395368304174217434

`2^A001222(n+1)*A166652(n+1)`
-/

namespace A167331.P10395368304174217434
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A001222 (n + 1) : ℤ) * (A166652 (n + 1) : ℚ)

end

end A167331.P10395368304174217434

/-! ## A167331.P7530771117995439716

`abs(A165872(n+1)*A166652(n+1))`
-/

namespace A167331.P7530771117995439716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A165872 (n + 1) * A166652 (n + 1)|

end

end A167331.P7530771117995439716

/-! ## A167331.P11169012836769018275

`sqrt(A165825(n+1))*A166652(n+1)`
-/

namespace A167331.P11169012836769018275
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A165825 (n + 1) : ℝ) * (A166652 (n + 1) : ℝ)

end

end A167331.P11169012836769018275

/-! ## A167331.P1733413083399893870

`A000079(Δ[A022559(n)])*A166652(n+1)`
-/

namespace A167331.P1733413083399893870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022559 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (f1 (n + 1) - f1 n).toNat * A166652 (n + 1)

end

end A167331.P1733413083399893870

/-! ## A167331.P14696821836214121864

`A000079(A001222(n+1))*A166652(n+1)`
-/

namespace A167331.P14696821836214121864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A001222 (n + 1)).toNat * A166652 (n + 1)

end

end A167331.P14696821836214121864

/-! ## A167331.P981629666541362108

`A011782(A073093(n+1))*A166652(n+1)`
-/

namespace A167331.P981629666541362108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A073093 (n + 1)).toNat * A166652 (n + 1)

end

end A167331.P981629666541362108

/-! ## A167331.P15604826241173432458

`A122111(A105560(n+1))*A166652(n+1)`
-/

namespace A167331.P15604826241173432458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122111 (A105560 (n + 1)).toNat * A166652 (n + 1)

end

end A167331.P15604826241173432458

/-! ## A167331.P13354301877703554288

`A016116(A255201(n+1))*A166652(n+1)`
-/

namespace A167331.P13354301877703554288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 (A255201 (n + 1)).toNat * A166652 (n + 1)

end

end A167331.P13354301877703554288

/-! ## A167331.P18411914357738213601

`∏{e}[A181821(n+1), A330410(#)-1]`
-/

namespace A167331.P18411914357738213601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181821 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (A330410 (Nat.factorization (f1 n).natAbs p) - 1)

end

end A167331.P18411914357738213601

/-!
# A167332: Totally multiplicative sequence with a(p) = 2*(4*p-1) = 8*p-2 for prime p.

The programs for A167332, the canonical program `A167332.P5296278499809472685` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A167332 has offset 1).

The definition of A167332 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A061142, A166653, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A167332.P5296278499809472685

`A061142(n+1)*A166653(n+1)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A167332

/-- `A061142(n+1)*A166653(n+1)` -/
def P5296278499809472685.Spec : Prop :=
  ∀ n, P5296278499809472685.a n = A167332 (n + 1)

theorem P5296278499809472685.correct : P5296278499809472685.Spec := by
  intro n
  simp only [A167332, Nat.add_sub_cancel]

end A167332

/-! ## A167332.P12128438685895417821

`2^A001222(n+1)*A166653(n+1)`
-/

namespace A167332.P12128438685895417821
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A001222 (n + 1) : ℤ) * (A166653 (n + 1) : ℚ)

end

end A167332.P12128438685895417821

namespace A167332

/-- `2^A001222(n+1)*A166653(n+1)` -/
def P12128438685895417821.Spec : Prop :=
  ∀ n, P12128438685895417821.a n = (A167332 (n + 1) : ℚ)

end A167332

/-! ## A167332.P15113953248723789654

`lcm(A165872(n+1), A166653(n+1))`
-/

namespace A167332.P15113953248723789654
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A165872 (n + 1)) (A166653 (n + 1))

end

end A167332.P15113953248723789654

namespace A167332

/-- `lcm(A165872(n+1), A166653(n+1))` -/
def P15113953248723789654.Spec : Prop :=
  ∀ n, (P15113953248723789654.a n : ℤ) = A167332 (n + 1)

end A167332

/-! ## A167332.P18397803822790472201

`sqrt(A165825(n+1))*A166653(n+1)`
-/

namespace A167332.P18397803822790472201
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A165825 (n + 1) : ℝ) * (A166653 (n + 1) : ℝ)

end

end A167332.P18397803822790472201

namespace A167332

/-- `sqrt(A165825(n+1))*A166653(n+1)` -/
def P18397803822790472201.Spec : Prop :=
  ∀ n, P18397803822790472201.a n = (A167332 (n + 1) : ℝ)

end A167332

/-! ## A167332.P11228419675586647077

`A000079(A001222(n+1))*A166653(n+1)`
-/

namespace A167332.P11228419675586647077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A001222 (n + 1)).toNat * A166653 (n + 1)

end

end A167332.P11228419675586647077

namespace A167332

/-- `A000079(A001222(n+1))*A166653(n+1)` -/
def P11228419675586647077.Spec : Prop :=
  ∀ n, P11228419675586647077.a n = A167332 (n + 1)

end A167332

/-! ## A167332.P11589189747169949344

`lcm(A061142(n+1), A166653(A000027(n+1)))`
-/

namespace A167332.P11589189747169949344
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A061142 (n + 1)) (A166653 (A000027 (n + 1)).toNat)

end

end A167332.P11589189747169949344

namespace A167332

/-- `lcm(A061142(n+1), A166653(A000027(n+1)))` -/
def P11589189747169949344.Spec : Prop :=
  ∀ n, (P11589189747169949344.a n : ℤ) = A167332 (n + 1)

end A167332

/-! ## A167332.P245908906600064609

`A165831(n+1)/A165826(n+1)*A166653(n+1)`
-/

namespace A167332.P245908906600064609
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A165831 (n + 1) : ℚ) / (A165826 (n + 1) : ℚ) * (A166653 (n + 1) : ℚ)

end

end A167332.P245908906600064609

namespace A167332

/-- `A165831(n+1)/A165826(n+1)*A166653(n+1)` -/
def P245908906600064609.Spec : Prop :=
  ∀ n, P245908906600064609.a n = (A167332 (n + 1) : ℚ)

end A167332

/-! ## A167332.P17010313658095828757

`A003958(A165824(n+1))*A166653(n+1)`
-/

namespace A167332.P17010313658095828757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003958 (A165824 (n + 1)).toNat * A166653 (n + 1)

end

end A167332.P17010313658095828757

namespace A167332

/-- `A003958(A165824(n+1))*A166653(n+1)` -/
def P17010313658095828757.Spec : Prop :=
  ∀ n, P17010313658095828757.a n = A167332 (n + 1)

end A167332

/-! ## A167332.P3834758973883493726

`A003958(A165827(n+1))*A166653(n+1)`
-/

namespace A167332.P3834758973883493726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003958 (A165827 (n + 1)).toNat * A166653 (n + 1)

end

end A167332.P3834758973883493726

namespace A167332

/-- `A003958(A165827(n+1))*A166653(n+1)` -/
def P3834758973883493726.Spec : Prop :=
  ∀ n, P3834758973883493726.a n = A167332 (n + 1)

end A167332

/-!
# A167333: Totally multiplicative sequence with a(p) = 2*(5p-1) = 10p-2 for prime p.

The programs for A167333, there is no canonical definition to state claims against.
-/

/-! ## A167333.P10174680384046066533

`A061142(n+1)*A166654(n+1)`
-/

namespace A167333.P10174680384046066533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061142 (n + 1) * A166654 (n + 1)

end

end A167333.P10174680384046066533

/-! ## A167333.P12577060010289204087

`2^A001222(n+1)*A166654(n+1)`
-/

namespace A167333.P12577060010289204087
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A001222 (n + 1) : ℤ) * (A166654 (n + 1) : ℚ)

end

end A167333.P12577060010289204087

/-! ## A167333.P6488978485189418154

`abs(A165872(n+1)*A166654(n+1))`
-/

namespace A167333.P6488978485189418154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A165872 (n + 1) * A166654 (n + 1)|

end

end A167333.P6488978485189418154

/-! ## A167333.P17135927949745755808

`sqrt(A165825(n+1))*A166654(n+1)`
-/

namespace A167333.P17135927949745755808
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A165825 (n + 1) : ℝ) * (A166654 (n + 1) : ℝ)

end

end A167333.P17135927949745755808

/-! ## A167333.P13989268336485926316

`A003958(A165824(n+1))*A166654(n+1)`
-/

namespace A167333.P13989268336485926316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003958 (A165824 (n + 1)).toNat * A166654 (n + 1)

end

end A167333.P13989268336485926316

/-! ## A167333.P7297371735244733806

`A003963(A165827(n+1))*A166654(n+1)`
-/

namespace A167333.P7297371735244733806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (A165827 (n + 1)).toNat * A166654 (n + 1)

end

end A167333.P7297371735244733806

/-!
# A167334: Totally multiplicative sequence with a(p) = 2*(2p+1) = 4p+2 for prime p.

The programs for A167334, the canonical program `A167334.P15740776329947131718` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A167334 has offset 1).

The definition of A167334 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A061142, A166660, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A167334.P15740776329947131718

`A061142(n+1)*A166660(n+1)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A167334

/-- `A061142(n+1)*A166660(n+1)` -/
def P15740776329947131718.Spec : Prop :=
  ∀ n, P15740776329947131718.a n = A167334 (n + 1)

theorem P15740776329947131718.correct : P15740776329947131718.Spec := by
  intro n
  simp only [A167334, Nat.add_sub_cancel]

end A167334

/-! ## A167334.P17372026173825970751

`2^A001222(n+1)*A166660(n+1)`
-/

namespace A167334.P17372026173825970751
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A001222 (n + 1) : ℤ) * (A166660 (n + 1) : ℚ)

end

end A167334.P17372026173825970751

namespace A167334

/-- `2^A001222(n+1)*A166660(n+1)` -/
def P17372026173825970751.Spec : Prop :=
  ∀ n, P17372026173825970751.a n = (A167334 (n + 1) : ℚ)

end A167334

/-! ## A167334.P247832838026957142

`lcm(A165872(n+1), A166660(n+1))`
-/

namespace A167334.P247832838026957142
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A165872 (n + 1)) (A166660 (n + 1))

end

end A167334.P247832838026957142

namespace A167334

/-- `lcm(A165872(n+1), A166660(n+1))` -/
def P247832838026957142.Spec : Prop :=
  ∀ n, (P247832838026957142.a n : ℤ) = A167334 (n + 1)

end A167334

/-! ## A167334.P3373896225147371074

`sqrt(A165825(n+1))*A166660(n+1)`
-/

namespace A167334.P3373896225147371074
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A165825 (n + 1) : ℝ) * (A166660 (n + 1) : ℝ)

end

end A167334.P3373896225147371074

namespace A167334

/-- `sqrt(A165825(n+1))*A166660(n+1)` -/
def P3373896225147371074.Spec : Prop :=
  ∀ n, P3373896225147371074.a n = (A167334 (n + 1) : ℝ)

end A167334

/-! ## A167334.P12953842498492637764

`A000079(A001222(n+1))*A166660(n+1)`
-/

namespace A167334.P12953842498492637764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A001222 (n + 1)).toNat * A166660 (n + 1)

end

end A167334.P12953842498492637764

namespace A167334

/-- `A000079(A001222(n+1))*A166660(n+1)` -/
def P12953842498492637764.Spec : Prop :=
  ∀ n, P12953842498492637764.a n = A167334 (n + 1)

end A167334

/-! ## A167334.P6286090636533958470

`A122111(A105560(n+1))*A166660(n+1)`
-/

namespace A167334.P6286090636533958470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122111 (A105560 (n + 1)).toNat * A166660 (n + 1)

end

end A167334.P6286090636533958470

namespace A167334

/-- `A122111(A105560(n+1))*A166660(n+1)` -/
def P6286090636533958470.Spec : Prop :=
  ∀ n, P6286090636533958470.a n = A167334 (n + 1)

end A167334

/-! ## A167334.P519274979315949773

`A165831(n+1)/A165826(n+1)*A166660(n+1)`
-/

namespace A167334.P519274979315949773
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A165831 (n + 1) : ℚ) / (A165826 (n + 1) : ℚ) * (A166660 (n + 1) : ℚ)

end

end A167334.P519274979315949773

namespace A167334

/-- `A165831(n+1)/A165826(n+1)*A166660(n+1)` -/
def P519274979315949773.Spec : Prop :=
  ∀ n, P519274979315949773.a n = (A167334 (n + 1) : ℚ)

end A167334

/-! ## A167334.P1561625940961789304

`A003958(A165824(n+1))*A166660(n+1)`
-/

namespace A167334.P1561625940961789304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003958 (A165824 (n + 1)).toNat * A166660 (n + 1)

end

end A167334.P1561625940961789304

namespace A167334

/-- `A003958(A165824(n+1))*A166660(n+1)` -/
def P1561625940961789304.Spec : Prop :=
  ∀ n, P1561625940961789304.a n = A167334 (n + 1)

end A167334

/-! ## A167334.P82474136703578585

`A000005(A076734(n+1))*A166660(n+1)`
-/

namespace A167334.P82474136703578585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A076734 (n + 1)).toNat * A166660 (n + 1)

end

end A167334.P82474136703578585

namespace A167334

/-- `A000005(A076734(n+1))*A166660(n+1)` -/
def P82474136703578585.Spec : Prop :=
  ∀ n, P82474136703578585.a n = A167334 (n + 1)

end A167334

/-! ## A167334.P9674123514171733323

`∏{e}[A181821(n+1), 2*A072055(#)]`
-/

namespace A167334.P9674123514171733323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181821 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, 2 * A072055 (Nat.factorization (f1 n).natAbs p)

end

end A167334.P9674123514171733323

namespace A167334

/-- `∏{e}[A181821(n+1), 2*A072055(#)]` -/
def P9674123514171733323.Spec : Prop :=
  ∀ n, P9674123514171733323.a n = A167334 (n + 1)

end A167334

/-!
# A167335: Totally multiplicative sequence with a(p) = 2*(3p+1) = 6p+2 for prime p.

The programs for A167335, the canonical program `A167335.P18242751094276829899` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A167335 has offset 1).

The definition of A167335 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A061142, A166661, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A167335.P18242751094276829899

`A061142(n+1)*A166661(n+1)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A167335

/-- `A061142(n+1)*A166661(n+1)` -/
def P18242751094276829899.Spec : Prop :=
  ∀ n, P18242751094276829899.a n = A167335 (n + 1)

theorem P18242751094276829899.correct : P18242751094276829899.Spec := by
  intro n
  simp only [A167335, Nat.add_sub_cancel]

end A167335

/-! ## A167335.P2608650868073891565

`2^A001222(n+1)*A166661(n+1)`
-/

namespace A167335.P2608650868073891565
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A001222 (n + 1) : ℤ) * (A166661 (n + 1) : ℚ)

end

end A167335.P2608650868073891565

namespace A167335

/-- `2^A001222(n+1)*A166661(n+1)` -/
def P2608650868073891565.Spec : Prop :=
  ∀ n, P2608650868073891565.a n = (A167335 (n + 1) : ℚ)

end A167335

/-! ## A167335.P2468393437415957191

`abs(A165872(n+1)*A166661(n+1))`
-/

namespace A167335.P2468393437415957191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A165872 (n + 1) * A166661 (n + 1)|

end

end A167335.P2468393437415957191

namespace A167335

/-- `abs(A165872(n+1)*A166661(n+1))` -/
def P2468393437415957191.Spec : Prop :=
  ∀ n, P2468393437415957191.a n = A167335 (n + 1)

end A167335

/-! ## A167335.P100946504618607527

`sqrt(A165825(n+1))*A166661(n+1)`
-/

namespace A167335.P100946504618607527
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A165825 (n + 1) : ℝ) * (A166661 (n + 1) : ℝ)

end

end A167335.P100946504618607527

namespace A167335

/-- `sqrt(A165825(n+1))*A166661(n+1)` -/
def P100946504618607527.Spec : Prop :=
  ∀ n, P100946504618607527.a n = (A167335 (n + 1) : ℝ)

end A167335

/-! ## A167335.P16312780701666475050

`A000079(A001222(n+1))*A166661(n+1)`
-/

namespace A167335.P16312780701666475050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A001222 (n + 1)).toNat * A166661 (n + 1)

end

end A167335.P16312780701666475050

namespace A167335

/-- `A000079(A001222(n+1))*A166661(n+1)` -/
def P16312780701666475050.Spec : Prop :=
  ∀ n, P16312780701666475050.a n = A167335 (n + 1)

end A167335

/-! ## A167335.P11585201846864149220

`A011782(A073093(n+1))*A166661(n+1)`
-/

namespace A167335.P11585201846864149220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A073093 (n + 1)).toNat * A166661 (n + 1)

end

end A167335.P11585201846864149220

namespace A167335

/-- `A011782(A073093(n+1))*A166661(n+1)` -/
def P11585201846864149220.Spec : Prop :=
  ∀ n, P11585201846864149220.a n = A167335 (n + 1)

end A167335

/-! ## A167335.P143096209501878307

`A122111(A105560(n+1))*A166661(n+1)`
-/

namespace A167335.P143096209501878307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122111 (A105560 (n + 1)).toNat * A166661 (n + 1)

end

end A167335.P143096209501878307

namespace A167335

/-- `A122111(A105560(n+1))*A166661(n+1)` -/
def P143096209501878307.Spec : Prop :=
  ∀ n, P143096209501878307.a n = A167335 (n + 1)

end A167335

/-! ## A167335.P14317554202701803341

`A001316(A156552(n+1))*A166661(n+1)`
-/

namespace A167335.P14317554202701803341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 (A156552 (n + 1)).toNat * A166661 (n + 1)

end

end A167335.P14317554202701803341

namespace A167335

/-- `A001316(A156552(n+1))*A166661(n+1)` -/
def P14317554202701803341.Spec : Prop :=
  ∀ n, P14317554202701803341.a n = A167335 (n + 1)

end A167335

/-!
# A167336: Totally multiplicative sequence with a(p) = 2*(4p+1) = 8p+2 for prime p.

The programs for A167336, the canonical program `A167336.P8261214320383042198` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A167336 has offset 1).

The definition of A167336 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A061142, A166662, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A167336.P8261214320383042198

`A061142(n+1)*A166662(n+1)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A167336

/-- `A061142(n+1)*A166662(n+1)` -/
def P8261214320383042198.Spec : Prop :=
  ∀ n, P8261214320383042198.a n = A167336 (n + 1)

theorem P8261214320383042198.correct : P8261214320383042198.Spec := by
  intro n
  simp only [A167336, Nat.add_sub_cancel]

end A167336

/-! ## A167336.P16208201787720025770

`2^A001222(n+1)*A166662(n+1)`
-/

namespace A167336.P16208201787720025770
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A001222 (n + 1) : ℤ) * (A166662 (n + 1) : ℚ)

end

end A167336.P16208201787720025770

namespace A167336

/-- `2^A001222(n+1)*A166662(n+1)` -/
def P16208201787720025770.Spec : Prop :=
  ∀ n, P16208201787720025770.a n = (A167336 (n + 1) : ℚ)

end A167336

/-! ## A167336.P14802104801154926271

`lcm(A165872(n+1), A166662(n+1))`
-/

namespace A167336.P14802104801154926271
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A165872 (n + 1)) (A166662 (n + 1))

end

end A167336.P14802104801154926271

namespace A167336

/-- `lcm(A165872(n+1), A166662(n+1))` -/
def P14802104801154926271.Spec : Prop :=
  ∀ n, (P14802104801154926271.a n : ℤ) = A167336 (n + 1)

end A167336

/-! ## A167336.P14742660784535968116

`sqrt(A165825(n+1))*A166662(n+1)`
-/

namespace A167336.P14742660784535968116
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A165825 (n + 1) : ℝ) * (A166662 (n + 1) : ℝ)

end

end A167336.P14742660784535968116

namespace A167336

/-- `sqrt(A165825(n+1))*A166662(n+1)` -/
def P14742660784535968116.Spec : Prop :=
  ∀ n, P14742660784535968116.a n = (A167336 (n + 1) : ℝ)

end A167336

/-! ## A167336.P3978735259824209918

`A000079(A001222(n+1))*A166662(n+1)`
-/

namespace A167336.P3978735259824209918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A001222 (n + 1)).toNat * A166662 (n + 1)

end

end A167336.P3978735259824209918

namespace A167336

/-- `A000079(A001222(n+1))*A166662(n+1)` -/
def P3978735259824209918.Spec : Prop :=
  ∀ n, P3978735259824209918.a n = A167336 (n + 1)

end A167336

/-! ## A167336.P11288682879985761804

`A011782(A073093(n+1))*A166662(n+1)`
-/

namespace A167336.P11288682879985761804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A073093 (n + 1)).toNat * A166662 (n + 1)

end

end A167336.P11288682879985761804

namespace A167336

/-- `A011782(A073093(n+1))*A166662(n+1)` -/
def P11288682879985761804.Spec : Prop :=
  ∀ n, P11288682879985761804.a n = A167336 (n + 1)

end A167336

/-! ## A167336.P15502098483055008172

`A122111(A105560(n+1))*A166662(n+1)`
-/

namespace A167336.P15502098483055008172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122111 (A105560 (n + 1)).toNat * A166662 (n + 1)

end

end A167336.P15502098483055008172

namespace A167336

/-- `A122111(A105560(n+1))*A166662(n+1)` -/
def P15502098483055008172.Spec : Prop :=
  ∀ n, P15502098483055008172.a n = A167336 (n + 1)

end A167336

/-! ## A167336.P298323773997310560

`A006519(A165827(n+1))*A166662(n+1)`
-/

namespace A167336.P298323773997310560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (A165827 (n + 1)).toNat * A166662 (n + 1)

end

end A167336.P298323773997310560

namespace A167336

/-- `A006519(A165827(n+1))*A166662(n+1)` -/
def P298323773997310560.Spec : Prop :=
  ∀ n, P298323773997310560.a n = A167336 (n + 1)

end A167336

/-! ## A167336.P5469584887583527108

`A137502(A165826(n+1))*A166662(n+1)`
-/

namespace A167336.P5469584887583527108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137502 (A165826 (n + 1)).toNat * A166662 (n + 1)

end

end A167336.P5469584887583527108

namespace A167336

/-- `A137502(A165826(n+1))*A166662(n+1)` -/
def P5469584887583527108.Spec : Prop :=
  ∀ n, P5469584887583527108.a n = A167336 (n + 1)

end A167336

/-!
# A167337: Totally multiplicative sequence with a(p) = 2*(5p+1) = 10p+2 for prime p.

The programs for A167337, there is no canonical definition to state claims against.
-/

/-! ## A167337.P7168263913100307753

`A061142(n+1)*A166663(n+1)`
-/

namespace A167337.P7168263913100307753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061142 (n + 1) * A166663 (n + 1)

end

end A167337.P7168263913100307753

/-! ## A167337.P3078024654305247818

`2^A001222(n+1)*A166663(n+1)`
-/

namespace A167337.P3078024654305247818
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A001222 (n + 1) : ℤ) * (A166663 (n + 1) : ℚ)

end

end A167337.P3078024654305247818

/-! ## A167337.P7226512561748288176

`sqrt(A165825(n+1))*A166663(n+1)`
-/

namespace A167337.P7226512561748288176
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A165825 (n + 1) : ℝ) * (A166663 (n + 1) : ℝ)

end

end A167337.P7226512561748288176

/-! ## A167337.P15839477876471370853

`A000079(A001222(n+1))*A166663(n+1)`
-/

namespace A167337.P15839477876471370853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A001222 (n + 1)).toNat * A166663 (n + 1)

end

end A167337.P15839477876471370853

/-! ## A167337.P4335331500791808080

`A165843(n+1)/A165832(n+1)*A166663(n+1)`
-/

namespace A167337.P4335331500791808080
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A165843 (n + 1) : ℚ) / (A165832 (n + 1) : ℚ) * (A166663 (n + 1) : ℚ)

end

end A167337.P4335331500791808080

/-! ## A167337.P10773619302696143653

`A165865(n+1)/A165843(n+1)*A166663(n+1)`
-/

namespace A167337.P10773619302696143653
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A165865 (n + 1) : ℚ) / (A165843 (n + 1) : ℚ) * (A166663 (n + 1) : ℚ)

end

end A167337.P10773619302696143653

/-! ## A167337.P13632508937300617966

`A003958(A165824(n+1))*A166663(n+1)`
-/

namespace A167337.P13632508937300617966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003958 (A165824 (n + 1)).toNat * A166663 (n + 1)

end

end A167337.P13632508937300617966

/-! ## A167337.P18088113541193973238

`A046523(A165826(n+1))*A166663(n+1)`
-/

namespace A167337.P18088113541193973238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A165826 (n + 1)).toNat * A166663 (n + 1)

end

end A167337.P18088113541193973238

/-!
# A167338: Totally multiplicative sequence with a(p) = p*(p+1) = p^2+p for prime p.

The programs for A167338, the canonical program `A167338.P17492942069736666981` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A167338 has offset 1).

The definition of A167338 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A167338.P16855439668138890439

`(n+1)*A003959(n+1)`
-/

namespace A167338.P16855439668138890439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A003959 (n + 1)

end

end A167338.P16855439668138890439

namespace A167338

/-- `(n+1)*A003959(n+1)` -/
def P16855439668138890439.Spec : Prop :=
  ∀ n, P16855439668138890439.a n = A167338 (n + 1)

end A167338

/-! ## A167338.P6298362807851104798

`(n+1)*sqrt(A167349(n+1))`
-/

namespace A167338.P6298362807851104798
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℝ) * Real.sqrt (A167349 (n + 1) : ℝ)

end

end A167338.P6298362807851104798

namespace A167338

/-- `(n+1)*sqrt(A167349(n+1))` -/
def P6298362807851104798.Spec : Prop :=
  ∀ n, P6298362807851104798.a n = (A167338 (n + 1) : ℝ)

end A167338

/-! ## A167338.P16207187684022648560

`(n+1)*(A348507(n+1)+n+1)`
-/

namespace A167338.P16207187684022648560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A348507 (n + 1) + (n + 1 : ℤ))

end

end A167338.P16207187684022648560

namespace A167338

/-- `(n+1)*(A348507(n+1)+n+1)` -/
def P16207187684022648560.Spec : Prop :=
  ∀ n, P16207187684022648560.a n = A167338 (n + 1)

end A167338

/-! ## A167338.P11808497678166461742

`A001615(n+1)*A003968(n+1)`
-/

namespace A167338.P11808497678166461742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001615 (n + 1) * A003968 (n + 1)

end

end A167338.P11808497678166461742

namespace A167338

/-- `A001615(n+1)*A003968(n+1)` -/
def P11808497678166461742.Spec : Prop :=
  ∀ n, P11808497678166461742.a n = A167338 (n + 1)

end A167338

/-! ## A167338.P4735003409387478348

`A061142(n+1)*A133205(n+1)`
-/

namespace A167338.P4735003409387478348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061142 (n + 1) * A133205 (n + 1)

end

end A167338.P4735003409387478348

namespace A167338

/-- `A061142(n+1)*A133205(n+1)` -/
def P4735003409387478348.Spec : Prop :=
  ∀ n, P4735003409387478348.a n = A167338 (n + 1)

end A167338

/-! ## A167338.P17492942069736666981

`(n+1)*∏{d}[n+1, A000203(A014963(#))]`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A167338

/-- `(n+1)*∏{d}[n+1, A000203(A014963(#))]` -/
def P17492942069736666981.Spec : Prop :=
  ∀ n, P17492942069736666981.a n = A167338 (n + 1)

theorem P17492942069736666981.correct : P17492942069736666981.Spec := by
  intro n
  simp only [A167338, Nat.add_sub_cancel]

end A167338

/-! ## A167338.P5403115691789607967

`A001615(n+1)*A007947(n+1)*A327564(n+1)`
-/

namespace A167338.P5403115691789607967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001615 (n + 1) * A007947 (n + 1) * A327564 (n + 1)

end

end A167338.P5403115691789607967

namespace A167338

/-- `A001615(n+1)*A007947(n+1)*A327564(n+1)` -/
def P5403115691789607967.Spec : Prop :=
  ∀ n, P5403115691789607967.a n = A167338 (n + 1)

end A167338

/-! ## A167338.P10701782079413993645

`A166626(n+1)/A165826(n+1)²*A166645(n+1)`
-/

namespace A167338.P10701782079413993645
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166626 (n + 1) : ℚ) / (A165826 (n + 1) ^ 2 : ℚ) * (A166645 (n + 1) : ℚ)

end

end A167338.P10701782079413993645

namespace A167338

/-- `A166626(n+1)/A165826(n+1)²*A166645(n+1)` -/
def P10701782079413993645.Spec : Prop :=
  ∀ n, P10701782079413993645.a n = (A167338 (n + 1) : ℚ)

end A167338

/-! ## A167338.P15141309359716865790

`(n+1)*A064478(A087156(n+1))`
-/

namespace A167338.P15141309359716865790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A064478 (A087156 (n + 1)).toNat

end

end A167338.P15141309359716865790

namespace A167338

/-- `(n+1)*A064478(A087156(n+1))` -/
def P15141309359716865790.Spec : Prop :=
  ∀ n, P15141309359716865790.a n = A167338 (n + 1)

end A167338

/-! ## A167338.P6134163945945727970

`A003959(A008619(2*n))*A008619(2*n)`
-/

namespace A167338.P6134163945945727970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003959 (A008619 (2 * n)).toNat * A008619 (2 * n)

end

end A167338.P6134163945945727970

namespace A167338

/-- `A003959(A008619(2*n))*A008619(2*n)` -/
def P6134163945945727970.Spec : Prop :=
  ∀ n, P6134163945945727970.a n = A167338 (n + 1)

end A167338

/-! ## A167338.P10195679149125157761

`A181440(2*(n+1))/2*A064478(n+1)`
-/

namespace A167338.P10195679149125157761
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A181440 (2 * (n + 1)) : ℚ) / 2 * (A064478 (n + 1) : ℚ)

end

end A167338.P10195679149125157761

namespace A167338

/-- `A181440(2*(n+1))/2*A064478(n+1)` -/
def P10195679149125157761.Spec : Prop :=
  ∀ n, P10195679149125157761.a n = (A167338 (n + 1) : ℚ)

end A167338

/-! ## A167338.P2297541571154949798

`A003959(A029579(2*n))*A029579(2*n)`
-/

namespace A167338.P2297541571154949798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003959 (A029579 (2 * n)).toNat * A029579 (2 * n)

end

end A167338.P2297541571154949798

namespace A167338

/-- `A003959(A029579(2*n))*A029579(2*n)` -/
def P2297541571154949798.Spec : Prop :=
  ∀ n, P2297541571154949798.a n = A167338 (n + 1)

end A167338

/-! ## A167338.P2943753115275226688

`(n+1)*A064553(A064988(n+1))`
-/

namespace A167338.P2943753115275226688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A064553 (A064988 (n + 1)).toNat

end

end A167338.P2943753115275226688

namespace A167338

/-- `(n+1)*A064553(A064988(n+1))` -/
def P2943753115275226688.Spec : Prop :=
  ∀ n, P2943753115275226688.a n = A167338 (n + 1)

end A167338

/-! ## A167338.P14312778685299695454

`(n+1)*A327564(A064549(n+1))`
-/

namespace A167338.P14312778685299695454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A327564 (A064549 (n + 1)).toNat

end

end A167338.P14312778685299695454

namespace A167338

/-- `(n+1)*A327564(A064549(n+1))` -/
def P14312778685299695454.Spec : Prop :=
  ∀ n, P14312778685299695454.a n = A167338 (n + 1)

end A167338

/-!
# A167339: Totally multiplicative sequence with a(p) = p*(p-2) = p^2-2p for prime p.

The programs for A167339, the canonical program `A167339.P17538192624040358396` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A167339 has offset 1).

The definition of A167339 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A167339.P17538192624040358396

`(n+1)*A166586(n+1)`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A167339

/-- `(n+1)*A166586(n+1)` -/
def P17538192624040358396.Spec : Prop :=
  ∀ n, P17538192624040358396.a n = A167339 (n + 1)

theorem P17538192624040358396.correct : P17538192624040358396.Spec := by
  intro n
  simp only [A167339, Nat.add_sub_cancel]

end A167339

/-! ## A167339.P1328519964746538108

`(n+1)*sqrt(A167354(n+1))`
-/

namespace A167339.P1328519964746538108
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℝ) * Real.sqrt (A167354 (n + 1) : ℝ)

end

end A167339.P1328519964746538108

namespace A167339

/-- `(n+1)*sqrt(A167354(n+1))` -/
def P1328519964746538108.Spec : Prop :=
  ∀ n, P1328519964746538108.a n = (A167339 (n + 1) : ℝ)

end A167339

/-! ## A167339.P11127977605564147415

`A166586(n+1)*A174239(n)`
-/

namespace A167339.P11127977605564147415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166586 (n + 1) * A174239 n

end

end A167339.P11127977605564147415

namespace A167339

/-- `A166586(n+1)*A174239(n)` -/
def P11127977605564147415.Spec : Prop :=
  ∀ n, P11127977605564147415.a n = A167339 (n + 1)

end A167339

/-! ## A167339.P13092166256608204476

`A166586(n+1)*A199343(n)`
-/

namespace A167339.P13092166256608204476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166586 (n + 1) * A199343 n

end

end A167339.P13092166256608204476

namespace A167339

/-- `A166586(n+1)*A199343(n)` -/
def P13092166256608204476.Spec : Prop :=
  ∀ n, P13092166256608204476.a n = A167339 (n + 1)

end A167339

/-! ## A167339.P9069794812438626420

`A166586(n+1)*A199344(n)`
-/

namespace A167339.P9069794812438626420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166586 (n + 1) * A199344 n

end

end A167339.P9069794812438626420

namespace A167339

/-- `A166586(n+1)*A199344(n)` -/
def P9069794812438626420.Spec : Prop :=
  ∀ n, P9069794812438626420.a n = A167339 (n + 1)

end A167339

/-! ## A167339.P15739241727975793542

`A166586(n+1)*A263449(n)`
-/

namespace A167339.P15739241727975793542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166586 (n + 1) * A263449 n

end

end A167339.P15739241727975793542

namespace A167339

/-- `A166586(n+1)*A263449(n)` -/
def P15739241727975793542.Spec : Prop :=
  ∀ n, P15739241727975793542.a n = A167339 (n + 1)

end A167339

/-! ## A167339.P4936534285194819260

`A166586(n+1)*A294178(n)`
-/

namespace A167339.P4936534285194819260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166586 (n + 1) * A294178 n

end

end A167339.P4936534285194819260

namespace A167339

/-- `A166586(n+1)*A294178(n)` -/
def P4936534285194819260.Spec : Prop :=
  ∀ n, P4936534285194819260.a n = A167339 (n + 1)

end A167339

/-! ## A167339.P802945746580456989

`A166586(n+1)*A392334(n)`
-/

namespace A167339.P802945746580456989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166586 (n + 1) * A392334 n

end

end A167339.P802945746580456989

namespace A167339

/-- `A166586(n+1)*A392334(n)` -/
def P802945746580456989.Spec : Prop :=
  ∀ n, P802945746580456989.a n = A167339 (n + 1)

end A167339

/-! ## A167339.P10682695756057513620

`(n+1)/A165825(n+1)*A167296(n+1)`
-/

namespace A167339.P10682695756057513620
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A165825 (n + 1) : ℚ) * (A167296 (n + 1) : ℚ)

end

end A167339.P10682695756057513620

namespace A167339

/-- `(n+1)/A165825(n+1)*A167296(n+1)` -/
def P10682695756057513620.Spec : Prop :=
  ∀ n, P10682695756057513620.a n = (A167339 (n + 1) : ℚ)

end A167339

/-! ## A167339.P10249163099125986959

`(n+1)/A165828(n+1)*A167299(n+1)`
-/

namespace A167339.P10249163099125986959
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A165828 (n + 1) : ℚ) * (A167299 (n + 1) : ℚ)

end

end A167339.P10249163099125986959

namespace A167339

/-- `(n+1)/A165828(n+1)*A167299(n+1)` -/
def P10249163099125986959.Spec : Prop :=
  ∀ n, P10249163099125986959.a n = (A167339 (n + 1) : ℚ)

end A167339

/-! ## A167339.P5539652123039039627

`(n+1)*gcd(A167294(n+1), A167297(n+1))`
-/

namespace A167339.P5539652123039039627
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * Int.gcd (A167294 (n + 1)) (A167297 (n + 1))

end

end A167339.P5539652123039039627

namespace A167339

/-- `(n+1)*gcd(A167294(n+1), A167297(n+1))` -/
def P5539652123039039627.Spec : Prop :=
  ∀ n, (P5539652123039039627.a n : ℤ) = A167339 (n + 1)

end A167339

/-! ## A167339.P14829405732546685973

`(n+1)*gcd(A167296(n+1), A167299(n+1))`
-/

namespace A167339.P14829405732546685973
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * Int.gcd (A167296 (n + 1)) (A167299 (n + 1))

end

end A167339.P14829405732546685973

namespace A167339

/-- `(n+1)*gcd(A167296(n+1), A167299(n+1))` -/
def P14829405732546685973.Spec : Prop :=
  ∀ n, (P14829405732546685973.a n : ℤ) = A167339 (n + 1)

end A167339

/-!
# A167340: Totally multiplicative sequence with a(p) = p*(p+2) = p^2+2p for prime p.

The programs for A167340, the canonical program `A167340.P3802847850510465819` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A167340 has offset 1).

The definition of A167340 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A167340.P3802847850510465819

`(n+1)*A166590(n+1)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A167340

/-- `(n+1)*A166590(n+1)` -/
def P3802847850510465819.Spec : Prop :=
  ∀ n, P3802847850510465819.a n = A167340 (n + 1)

theorem P3802847850510465819.correct : P3802847850510465819.Spec := by
  intro n
  simp only [A167340, Nat.add_sub_cancel]

end A167340

/-! ## A167340.P14707857789880789310

`(n+1)*sqrt(A167358(n+1))`
-/

namespace A167340.P14707857789880789310
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℝ) * Real.sqrt (A167358 (n + 1) : ℝ)

end

end A167340.P14707857789880789310

namespace A167340

/-- `(n+1)*sqrt(A167358(n+1))` -/
def P14707857789880789310.Spec : Prop :=
  ∀ n, P14707857789880789310.a n = (A167340 (n + 1) : ℝ)

end A167340

/-! ## A167340.P17117513358444037930

`(n+1)/A003958(n+1)*A167346(n+1)`
-/

namespace A167340.P17117513358444037930
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A003958 (n + 1) : ℚ) * (A167346 (n + 1) : ℚ)

end

end A167340.P17117513358444037930

namespace A167340

/-- `(n+1)/A003958(n+1)*A167346(n+1)` -/
def P17117513358444037930.Spec : Prop :=
  ∀ n, P17117513358444037930.a n = (A167340 (n + 1) : ℚ)

end A167340

/-! ## A167340.P12020508705737560144

`(n+1)*A167351(n+1)/A003959(n+1)`
-/

namespace A167340.P12020508705737560144
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * ((A167351 (n + 1) : ℚ) / (A003959 (n + 1) : ℚ))

end

end A167340.P12020508705737560144

namespace A167340

/-- `(n+1)*A167351(n+1)/A003959(n+1)` -/
def P12020508705737560144.Spec : Prop :=
  ∀ n, P12020508705737560144.a n = (A167340 (n + 1) : ℚ)

end A167340

/-! ## A167340.P15991510514496007663

`(n+1)/A165825(n+1)*A167305(n+1)`
-/

namespace A167340.P15991510514496007663
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A165825 (n + 1) : ℚ) * (A167305 (n + 1) : ℚ)

end

end A167340.P15991510514496007663

namespace A167340

/-- `(n+1)/A165825(n+1)*A167305(n+1)` -/
def P15991510514496007663.Spec : Prop :=
  ∀ n, P15991510514496007663.a n = (A167340 (n + 1) : ℚ)

end A167340

/-! ## A167340.P16541782132709323371

`(n+1)*A167308(n+1)/A165828(n+1)`
-/

namespace A167340.P16541782132709323371
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * ((A167308 (n + 1) : ℚ) / (A165828 (n + 1) : ℚ))

end

end A167340.P16541782132709323371

namespace A167340

/-- `(n+1)*A167308(n+1)/A165828(n+1)` -/
def P16541782132709323371.Spec : Prop :=
  ∀ n, P16541782132709323371.a n = (A167340 (n + 1) : ℚ)

end A167340

/-!
# A167341: Totally multiplicative sequence with a(p) = p*(p-3) = p^2-3p for prime p.

The programs for A167341, the canonical program `A167341.P9615713007832461623` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A167341 has offset 1).

The definition of A167341 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A167341.P9615713007832461623

`(n+1)*A166589(n+1)`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A167341

/-- `(n+1)*A166589(n+1)` -/
def P9615713007832461623.Spec : Prop :=
  ∀ n, P9615713007832461623.a n = A167341 (n + 1)

theorem P9615713007832461623.correct : P9615713007832461623.Spec := by
  intro n
  simp only [A167341, Nat.add_sub_cancel]

end A167341

/-! ## A167341.P1177313872617383258

`A166589(n+1)*A222257(n)`
-/

namespace A167341.P1177313872617383258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166589 (n + 1) * A222257 n

end

end A167341.P1177313872617383258

namespace A167341

/-- `A166589(n+1)*A222257(n)` -/
def P1177313872617383258.Spec : Prop :=
  ∀ n, P1177313872617383258.a n = A167341 (n + 1)

end A167341

/-! ## A167341.P7252754292762619601

`(n+1)*A167347(n+1)/A003958(n+1)`
-/

namespace A167341.P7252754292762619601
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * ((A167347 (n + 1) : ℚ) / (A003958 (n + 1) : ℚ))

end

end A167341.P7252754292762619601

namespace A167341

/-- `(n+1)*A167347(n+1)/A003958(n+1)` -/
def P7252754292762619601.Spec : Prop :=
  ∀ n, P7252754292762619601.a n = (A167341 (n + 1) : ℚ)

end A167341

/-! ## A167341.P6252768937161606441

`(n+1)/A165826(n+1)*A167315(n+1)`
-/

namespace A167341.P6252768937161606441
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A165826 (n + 1) : ℚ) * (A167315 (n + 1) : ℚ)

end

end A167341.P6252768937161606441

namespace A167341

/-- `(n+1)/A165826(n+1)*A167315(n+1)` -/
def P6252768937161606441.Spec : Prop :=
  ∀ n, P6252768937161606441.a n = (A167341 (n + 1) : ℚ)

end A167341

/-! ## A167341.P6149879943636271184

`(n+1)/A165827(n+1)*A167316(n+1)`
-/

namespace A167341.P6149879943636271184
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A165827 (n + 1) : ℚ) * (A167316 (n + 1) : ℚ)

end

end A167341.P6149879943636271184

namespace A167341

/-- `(n+1)/A165827(n+1)*A167316(n+1)` -/
def P6149879943636271184.Spec : Prop :=
  ∀ n, P6149879943636271184.a n = (A167341 (n + 1) : ℚ)

end A167341

/-! ## A167341.P5660310302374708839

`(n+1)/A165828(n+1)*A167317(n+1)`
-/

namespace A167341.P5660310302374708839
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A165828 (n + 1) : ℚ) * (A167317 (n + 1) : ℚ)

end

end A167341.P5660310302374708839

namespace A167341

/-- `(n+1)/A165828(n+1)*A167317(n+1)` -/
def P5660310302374708839.Spec : Prop :=
  ∀ n, P5660310302374708839.a n = (A167341 (n + 1) : ℚ)

end A167341

/-! ## A167341.P5234051357873485148

`(n+1)/A166590(n+1)*A167359(n+1)`
-/

namespace A167341.P5234051357873485148
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A166590 (n + 1) : ℚ) * (A167359 (n + 1) : ℚ)

end

end A167341.P5234051357873485148

namespace A167341

/-- `(n+1)/A166590(n+1)*A167359(n+1)` -/
def P5234051357873485148.Spec : Prop :=
  ∀ n, P5234051357873485148.a n = (A167341 (n + 1) : ℚ)

end A167341

/-!
# A167342: Totally multiplicative sequence with a(p) = p*(p+3) = p^2+3p for prime p.

The programs for A167342, there is no canonical definition to state claims against.
-/

/-! ## A167342.P2233661780515150250

`(n+1)*A166591(n+1)`
-/

namespace A167342.P2233661780515150250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A166591 (n + 1)

end

end A167342.P2233661780515150250

/-! ## A167342.P5556648286925751185

`(n+1)*sqrt(A167363(n+1))`
-/

namespace A167342.P5556648286925751185
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℝ) * Real.sqrt (A167363 (n + 1) : ℝ)

end

end A167342.P5556648286925751185

/-! ## A167342.P11360314910327732859

`(n+1)*A109624(n+1)/A003958(n+1)`
-/

namespace A167342.P11360314910327732859
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * ((A109624 (n + 1) : ℚ) / (A003958 (n + 1) : ℚ))

end

end A167342.P11360314910327732859

/-! ## A167342.P16747699666623927358

`(n+1)*A167353(n+1)/A003959(n+1)`
-/

namespace A167342.P16747699666623927358
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * ((A167353 (n + 1) : ℚ) / (A003959 (n + 1) : ℚ))

end

end A167342.P16747699666623927358

/-! ## A167342.P1647191907186813889

`(n+1)*A167321(n+1)/A061142(n+1)`
-/

namespace A167342.P1647191907186813889
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * ((A167321 (n + 1) : ℚ) / (A061142 (n + 1) : ℚ))

end

end A167342.P1647191907186813889

/-! ## A167342.P871630878977317041

`(n+1)*A167323(n+1)/A165825(n+1)`
-/

namespace A167342.P871630878977317041
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * ((A167323 (n + 1) : ℚ) / (A165825 (n + 1) : ℚ))

end

end A167342.P871630878977317041

/-! ## A167342.P1741513086390419165

`(n+1)*gcd(A167321(n+1), A167322(n+1))`
-/

namespace A167342.P1741513086390419165
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * Int.gcd (A167321 (n + 1)) (A167322 (n + 1))

end

end A167342.P1741513086390419165

/-! ## A167342.P17993401211572490696

`(n+1)*gcd(A167323(n+1), A167324(n+1))`
-/

namespace A167342.P17993401211572490696
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * Int.gcd (A167323 (n + 1)) (A167324 (n + 1))

end

end A167342.P17993401211572490696

/-! ## A167342.P17615858978804516273

`(n+1)*gcd(A167326(n+1), A167327(n+1))`
-/

namespace A167342.P17615858978804516273
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * Int.gcd (A167326 (n + 1)) (A167327 (n + 1))

end

end A167342.P17615858978804516273

/-!
# A167343: Totally multiplicative sequence with a(p) = (p-1)^2 = p^2-2p+1 for prime p.

The programs for A167343, the canonical program `A167343.P6110866401223025561` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A167343 has offset 1).

The definition of A167343 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003958, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A167343.P6110866401223025561

`A003958(n+1)²`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A167343

/-- `A003958(n+1)²` -/
def P6110866401223025561.Spec : Prop :=
  ∀ n, P6110866401223025561.a n = A167343 (n + 1)

theorem P6110866401223025561.correct : P6110866401223025561.Spec := by
  intro n
  simp only [A167343, Nat.add_sub_cancel]

end A167343

/-! ## A167343.P1940736183803453365

`A125131(n+1)²`
-/

namespace A167343.P1940736183803453365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125131 (n + 1) ^ 2

end

end A167343.P1940736183803453365

namespace A167343

/-- `A125131(n+1)²` -/
def P1940736183803453365.Spec : Prop :=
  ∀ n, P1940736183803453365.a n = A167343 (n + 1)

end A167343

/-! ## A167343.P10747739745273504467

`∑{d}[n+1, A003966(#)]²`
-/

namespace A167343.P10747739745273504467
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ d ∈ Nat.divisors (f1 n), A003966 d) ^ 2

end

end A167343.P10747739745273504467

namespace A167343

/-- `∑{d}[n+1, A003966(#)]²` -/
def P10747739745273504467.Spec : Prop :=
  ∀ n, P10747739745273504467.a n = A167343 (n + 1)

end A167343

/-! ## A167343.P4658038087178128119

`∑{d}[n+1, A325126(#)]²`
-/

namespace A167343.P4658038087178128119
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ d ∈ Nat.divisors (f1 n), A325126 d) ^ 2

end

end A167343.P4658038087178128119

namespace A167343

/-- `∑{d}[n+1, A325126(#)]²` -/
def P4658038087178128119.Spec : Prop :=
  ∀ n, P4658038087178128119.a n = A167343 (n + 1)

end A167343

/-! ## A167343.P14425395326379787775

`(1-A322582(n+1)+n)²`
-/

namespace A167343.P14425395326379787775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A322582 (n + 1) + (n : ℤ)) ^ 2

end

end A167343.P14425395326379787775

namespace A167343

/-- `(1-A322582(n+1)+n)²` -/
def P14425395326379787775.Spec : Prop :=
  ∀ n, P14425395326379787775.a n = A167343 (n + 1)

end A167343

/-! ## A167343.P3614679684064590511

`(A079579(n+1)/(n+1))²`
-/

namespace A167343.P3614679684064590511
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A079579 (n + 1) : ℚ) / (n + 1 : ℚ)) ^ 2

end

end A167343.P3614679684064590511

namespace A167343

/-- `(A079579(n+1)/(n+1))²` -/
def P3614679684064590511.Spec : Prop :=
  ∀ n, P3614679684064590511.a n = (A167343 (n + 1) : ℚ)

end A167343

/-! ## A167343.P11784674070690764798

`∏{d}[n+1, A000010(A014963(#))²]`
-/

namespace A167343.P11784674070690764798
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), A000010 (A014963 d).toNat ^ 2

end

end A167343.P11784674070690764798

namespace A167343

/-- `∏{d}[n+1, A000010(A014963(#))²]` -/
def P11784674070690764798.Spec : Prop :=
  ∀ n, P11784674070690764798.a n = A167343 (n + 1)

end A167343

/-! ## A167343.P4867811110958854181

`A000290(1-A322582(n+1)+n)`
-/

namespace A167343.P4867811110958854181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (1 - A322582 (n + 1) + (n : ℤ)).toNat

end

end A167343.P4867811110958854181

namespace A167343

/-- `A000290(1-A322582(n+1)+n)` -/
def P4867811110958854181.Spec : Prop :=
  ∀ n, P4867811110958854181.a n = A167343 (n + 1)

end A167343

/-! ## A167343.P8626539072153387205

`A326297(n+1)*A351434(n+1)`
-/

namespace A167343.P8626539072153387205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326297 (n + 1) * A351434 (n + 1)

end

end A167343.P8626539072153387205

namespace A167343

/-- `A326297(n+1)*A351434(n+1)` -/
def P8626539072153387205.Spec : Prop :=
  ∀ n, P8626539072153387205.a n = A167343 (n + 1)

end A167343

/-! ## A167343.P14729228344143794741

`(A324044(n+1)+A033879(n+1))²`
-/

namespace A167343.P14729228344143794741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A324044 (n + 1) + A033879 (n + 1)) ^ 2

end

end A167343.P14729228344143794741

namespace A167343

/-- `(A324044(n+1)+A033879(n+1))²` -/
def P14729228344143794741.Spec : Prop :=
  ∀ n, P14729228344143794741.a n = A167343 (n + 1)

end A167343

/-! ## A167343.P2533335969793484935

`(A168065(n+1)-A168066(n+1))²`
-/

namespace A167343.P2533335969793484935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A168065 (n + 1) - A168066 (n + 1)) ^ 2

end

end A167343.P2533335969793484935

namespace A167343

/-- `(A168065(n+1)-A168066(n+1))²` -/
def P2533335969793484935.Spec : Prop :=
  ∀ n, P2533335969793484935.a n = A167343 (n + 1)

end A167343

/-! ## A167343.P5803840189744375367

`(A033880(n+1)-A324044(n+1))²`
-/

namespace A167343.P5803840189744375367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A033880 (n + 1) - A324044 (n + 1)) ^ 2

end

end A167343.P5803840189744375367

namespace A167343

/-- `(A033880(n+1)-A324044(n+1))²` -/
def P5803840189744375367.Spec : Prop :=
  ∀ n, P5803840189744375367.a n = A167343 (n + 1)

end A167343

/-! ## A167343.P5858643573257956740

`(A097945(n+1)-A322581(n+1))²`
-/

namespace A167343.P5858643573257956740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A097945 (n + 1) - A322581 (n + 1)) ^ 2

end

end A167343.P5858643573257956740

namespace A167343

/-- `(A097945(n+1)-A322581(n+1))²` -/
def P5858643573257956740.Spec : Prop :=
  ∀ n, P5858643573257956740.a n = A167343 (n + 1)

end A167343

/-! ## A167343.P7248507282154672476

`(A351442(n+1)-A351445(n+1))²`
-/

namespace A167343.P7248507282154672476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A351442 (n + 1) - A351445 (n + 1)) ^ 2

end

end A167343.P7248507282154672476

namespace A167343

/-- `(A351442(n+1)-A351445(n+1))²` -/
def P7248507282154672476.Spec : Prop :=
  ∀ n, P7248507282154672476.a n = A167343 (n + 1)

end A167343

/-! ## A167343.P15533277757572347710

`(A023900(n+1)*A326297(n+1))²`
-/

namespace A167343.P15533277757572347710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A023900 (n + 1) * A326297 (n + 1)) ^ 2

end

end A167343.P15533277757572347710

namespace A167343

/-- `(A023900(n+1)*A326297(n+1))²` -/
def P15533277757572347710.Spec : Prop :=
  ∀ n, P15533277757572347710.a n = A167343 (n + 1)

end A167343

/-! ## A167343.P15736398090213058182

`(A173557(n+1)*A326297(n+1))²`
-/

namespace A167343.P15736398090213058182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A173557 (n + 1) * A326297 (n + 1)) ^ 2

end

end A167343.P15736398090213058182

namespace A167343

/-- `(A173557(n+1)*A326297(n+1))²` -/
def P15736398090213058182.Spec : Prop :=
  ∀ n, P15736398090213058182.a n = A167343 (n + 1)

end A167343

/-! ## A167343.P17063393533137458471

`(A167344(n+1)/A003959(n+1))²`
-/

namespace A167343.P17063393533137458471
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A167344 (n + 1) : ℚ) / (A003959 (n + 1) : ℚ)) ^ 2

end

end A167343.P17063393533137458471

namespace A167343

/-- `(A167344(n+1)/A003959(n+1))²` -/
def P17063393533137458471.Spec : Prop :=
  ∀ n, P17063393533137458471.a n = (A167343 (n + 1) : ℚ)

end A167343

/-! ## A167343.P7208624508120024960

`(A166632(n+1)/A061142(n+1))²`
-/

namespace A167343.P7208624508120024960
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A166632 (n + 1) : ℚ) / (A061142 (n + 1) : ℚ)) ^ 2

end

end A167343.P7208624508120024960

namespace A167343

/-- `(A166632(n+1)/A061142(n+1))²` -/
def P7208624508120024960.Spec : Prop :=
  ∀ n, P7208624508120024960.a n = (A167343 (n + 1) : ℚ)

end A167343

/-! ## A167343.P17517545531394903888

`A109624(n+1)²/A167363(n+1)`
-/

namespace A167343.P17517545531394903888
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109624 (n + 1) ^ 2 : ℚ) / (A167363 (n + 1) : ℚ)

end

end A167343.P17517545531394903888

namespace A167343

/-- `A109624(n+1)²/A167363(n+1)` -/
def P17517545531394903888.Spec : Prop :=
  ∀ n, P17517545531394903888.a n = (A167343 (n + 1) : ℚ)

end A167343

/-! ## A167343.P11694194787542057558

`A166632(n+1)²/A165825(n+1)`
-/

namespace A167343.P11694194787542057558
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166632 (n + 1) ^ 2 : ℚ) / (A165825 (n + 1) : ℚ)

end

end A167343.P11694194787542057558

namespace A167343

/-- `A166632(n+1)²/A165825(n+1)` -/
def P11694194787542057558.Spec : Prop :=
  ∀ n, P11694194787542057558.a n = (A167343 (n + 1) : ℚ)

end A167343

/-!
# A167344: Totally multiplicative sequence with a(p) = (p-1)*(p+1) = p^2-1 for prime p.

The programs for A167344, the canonical program `A167344.P17306748435152124065` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A167344 has offset 1).

The definition of A167344 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003958, A003959, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A167344.P17306748435152124065

`A003958(n+1)*A003959(n+1)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A167344

/-- `A003958(n+1)*A003959(n+1)` -/
def P17306748435152124065.Spec : Prop :=
  ∀ n, P17306748435152124065.a n = A167344 (n + 1)

theorem P17306748435152124065.correct : P17306748435152124065.Spec := by
  intro n
  simp only [A167344, Nat.add_sub_cancel]

end A167344

/-! ## A167344.P6025819131245228148

`A340323(n+1)*A340368(n+1)`
-/

namespace A167344.P6025819131245228148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340323 (n + 1) * A340368 (n + 1)

end

end A167344.P6025819131245228148

namespace A167344

/-- `A340323(n+1)*A340368(n+1)` -/
def P6025819131245228148.Spec : Prop :=
  ∀ n, P6025819131245228148.a n = A167344 (n + 1)

end A167344

/-! ## A167344.P18124098005978792967

`sqrt(A167349(n+1))*A003958(n+1)`
-/

namespace A167344.P18124098005978792967
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A167349 (n + 1) : ℝ) * (A003958 (n + 1) : ℝ)

end

end A167344.P18124098005978792967

namespace A167344

/-- `sqrt(A167349(n+1))*A003958(n+1)` -/
def P18124098005978792967.Spec : Prop :=
  ∀ n, P18124098005978792967.a n = (A167344 (n + 1) : ℝ)

end A167344

/-! ## A167344.P13073700836253410374

`sqrt(A167343(n+1)*A167349(n+1))`
-/

namespace A167344.P13073700836253410374
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A167343 (n + 1) * A167349 (n + 1) : ℝ)

end

end A167344.P13073700836253410374

namespace A167344

/-- `sqrt(A167343(n+1)*A167349(n+1))` -/
def P13073700836253410374.Spec : Prop :=
  ∀ n, P13073700836253410374.a n = (A167344 (n + 1) : ℝ)

end A167344

/-! ## A167344.P5188454623208696323

`A168065(n+1)²-A168066(n+1)²`
-/

namespace A167344.P5188454623208696323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168065 (n + 1) ^ 2 - A168066 (n + 1) ^ 2

end

end A167344.P5188454623208696323

namespace A167344

/-- `A168065(n+1)²-A168066(n+1)²` -/
def P5188454623208696323.Spec : Prop :=
  ∀ n, P5188454623208696323.a n = A167344 (n + 1)

end A167344

/-! ## A167344.P7721461821039177475

`(A168066(n+1)+A168065(n+1))*A003958(n+1)`
-/

namespace A167344.P7721461821039177475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A168066 (n + 1) + A168065 (n + 1)) * A003958 (n + 1)

end

end A167344.P7721461821039177475

namespace A167344

/-- `(A168066(n+1)+A168065(n+1))*A003958(n+1)` -/
def P7721461821039177475.Spec : Prop :=
  ∀ n, P7721461821039177475.a n = A167344 (n + 1)

end A167344

/-! ## A167344.P17246339250019717359

`(A168065(n+1)-A168066(n+1))*A003959(n+1)`
-/

namespace A167344.P17246339250019717359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A168065 (n + 1) - A168066 (n + 1)) * A003959 (n + 1)

end

end A167344.P17246339250019717359

namespace A167344

/-- `(A168065(n+1)-A168066(n+1))*A003959(n+1)` -/
def P17246339250019717359.Spec : Prop :=
  ∀ n, P17246339250019717359.a n = A167344 (n + 1)

end A167344

/-! ## A167344.P4348813435852526878

`(A348975(n+1)-A168036(n+1))*A003959(n+1)`
-/

namespace A167344.P4348813435852526878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A348975 (n + 1) - A168036 (n + 1)) * A003959 (n + 1)

end

end A167344.P4348813435852526878

namespace A167344

/-- `(A348975(n+1)-A168036(n+1))*A003959(n+1)` -/
def P4348813435852526878.Spec : Prop :=
  ∀ n, P4348813435852526878.a n = A167344 (n + 1)

end A167344

/-! ## A167344.P6649086134665141597

`(A351442(n+1)-A351445(n+1))*A003959(n+1)`
-/

namespace A167344.P6649086134665141597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A351442 (n + 1) - A351445 (n + 1)) * A003959 (n + 1)

end

end A167344.P6649086134665141597

namespace A167344

/-- `(A351442(n+1)-A351445(n+1))*A003959(n+1)` -/
def P6649086134665141597.Spec : Prop :=
  ∀ n, P6649086134665141597.a n = A167344 (n + 1)

end A167344

/-! ## A167344.P15641003647892025697

`A003959(n+1)*A008836(n+1)*A125131(n+1)`
-/

namespace A167344.P15641003647892025697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003959 (n + 1) * A008836 (n + 1) * A125131 (n + 1)

end

end A167344.P15641003647892025697

namespace A167344

/-- `A003959(n+1)*A008836(n+1)*A125131(n+1)` -/
def P15641003647892025697.Spec : Prop :=
  ∀ n, P15641003647892025697.a n = A167344 (n + 1)

end A167344

/-! ## A167344.P2185460429739577261

`A048250(n+1)*A326297(n+1)*A340368(n+1)`
-/

namespace A167344.P2185460429739577261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048250 (n + 1) * A326297 (n + 1) * A340368 (n + 1)

end

end A167344.P2185460429739577261

namespace A167344

/-- `A048250(n+1)*A326297(n+1)*A340368(n+1)` -/
def P2185460429739577261.Spec : Prop :=
  ∀ n, P2185460429739577261.a n = A167344 (n + 1)

end A167344

/-! ## A167344.P14293219353957011785

`A173557(n+1)*A327564(n+1)*A340323(n+1)`
-/

namespace A167344.P14293219353957011785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173557 (n + 1) * A327564 (n + 1) * A340323 (n + 1)

end

end A167344.P14293219353957011785

namespace A167344

/-- `A173557(n+1)*A327564(n+1)*A340323(n+1)` -/
def P14293219353957011785.Spec : Prop :=
  ∀ n, P14293219353957011785.a n = A167344 (n + 1)

end A167344

/-! ## A167344.P14558519478905398691

`A003958(n+1)/A061142(n+1)*A166642(n+1)`
-/

namespace A167344.P14558519478905398691
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003958 (n + 1) : ℚ) / (A061142 (n + 1) : ℚ) * (A166642 (n + 1) : ℚ)

end

end A167344.P14558519478905398691

namespace A167344

/-- `A003958(n+1)/A061142(n+1)*A166642(n+1)` -/
def P14558519478905398691.Spec : Prop :=
  ∀ n, P14558519478905398691.a n = (A167344 (n + 1) : ℚ)

end A167344

/-! ## A167344.P7496551459160704189

`A003959(n+1)/A061142(n+1)*A166632(n+1)`
-/

namespace A167344.P7496551459160704189
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003959 (n + 1) : ℚ) / (A061142 (n + 1) : ℚ) * (A166632 (n + 1) : ℚ)

end

end A167344.P7496551459160704189

namespace A167344

/-- `A003959(n+1)/A061142(n+1)*A166632(n+1)` -/
def P7496551459160704189.Spec : Prop :=
  ∀ n, P7496551459160704189.a n = (A167344 (n + 1) : ℚ)

end A167344

/-! ## A167344.P5169244788184809003

`A003958(n+1)/A165824(n+1)*A166643(n+1)`
-/

namespace A167344.P5169244788184809003
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003958 (n + 1) : ℚ) / (A165824 (n + 1) : ℚ) * (A166643 (n + 1) : ℚ)

end

end A167344.P5169244788184809003

namespace A167344

/-- `A003958(n+1)/A165824(n+1)*A166643(n+1)` -/
def P5169244788184809003.Spec : Prop :=
  ∀ n, P5169244788184809003.a n = (A167344 (n + 1) : ℚ)

end A167344

/-! ## A167344.P92885739541386815

`A003959(n+1)/A165824(n+1)*A166633(n+1)`
-/

namespace A167344.P92885739541386815
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003959 (n + 1) : ℚ) / (A165824 (n + 1) : ℚ) * (A166633 (n + 1) : ℚ)

end

end A167344.P92885739541386815

namespace A167344

/-- `A003959(n+1)/A165824(n+1)*A166633(n+1)` -/
def P92885739541386815.Spec : Prop :=
  ∀ n, P92885739541386815.a n = (A167344 (n + 1) : ℚ)

end A167344

/-! ## A167344.P15708717805766976389

`A003959(n+1)/A165825(n+1)*A166634(n+1)`
-/

namespace A167344.P15708717805766976389
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003959 (n + 1) : ℚ) / (A165825 (n + 1) : ℚ) * (A166634 (n + 1) : ℚ)

end

end A167344.P15708717805766976389

namespace A167344

/-- `A003959(n+1)/A165825(n+1)*A166634(n+1)` -/
def P15708717805766976389.Spec : Prop :=
  ∀ n, P15708717805766976389.a n = (A167344 (n + 1) : ℚ)

end A167344

/-! ## A167344.P6639145690959252476

`A003958(n+1)/A165825(n+1)*A166644(n+1)`
-/

namespace A167344.P6639145690959252476
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003958 (n + 1) : ℚ) / (A165825 (n + 1) : ℚ) * (A166644 (n + 1) : ℚ)

end

end A167344.P6639145690959252476

namespace A167344

/-- `A003958(n+1)/A165825(n+1)*A166644(n+1)` -/
def P6639145690959252476.Spec : Prop :=
  ∀ n, P6639145690959252476.a n = (A167344 (n + 1) : ℚ)

end A167344

/-! ## A167344.P16173177064555509455

`A003958(n+1)/A165826(n+1)*A166645(n+1)`
-/

namespace A167344.P16173177064555509455
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003958 (n + 1) : ℚ) / (A165826 (n + 1) : ℚ) * (A166645 (n + 1) : ℚ)

end

end A167344.P16173177064555509455

namespace A167344

/-- `A003958(n+1)/A165826(n+1)*A166645(n+1)` -/
def P16173177064555509455.Spec : Prop :=
  ∀ n, P16173177064555509455.a n = (A167344 (n + 1) : ℚ)

end A167344

/-! ## A167344.P2983002508850253718

`A003959(n+1)/A165827(n+1)*A166636(n+1)`
-/

namespace A167344.P2983002508850253718
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003959 (n + 1) : ℚ) / (A165827 (n + 1) : ℚ) * (A166636 (n + 1) : ℚ)

end

end A167344.P2983002508850253718

namespace A167344

/-- `A003959(n+1)/A165827(n+1)*A166636(n+1)` -/
def P2983002508850253718.Spec : Prop :=
  ∀ n, P2983002508850253718.a n = (A167344 (n + 1) : ℚ)

end A167344

/-!
# A167345: Totally multiplicative sequence with a(p) = (p-1)*(p-2) = p^2-3p+2 for prime p.

The programs for A167345, the canonical program `A167345.P13116550520045673211` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A167345 has offset 1).

The definition of A167345 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003958, A166586, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A167345.P13116550520045673211

`A003958(n+1)*A166586(n+1)`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A167345

/-- `A003958(n+1)*A166586(n+1)` -/
def P13116550520045673211.Spec : Prop :=
  ∀ n, P13116550520045673211.a n = A167345 (n + 1)

theorem P13116550520045673211.correct : P13116550520045673211.Spec := by
  intro n
  simp only [A167345, Nat.add_sub_cancel]

end A167345

/-! ## A167345.P5589471158338476803

`A166586(n+1)*A333787(n+1)`
-/

namespace A167345.P5589471158338476803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166586 (n + 1) * A333787 (n + 1)

end

end A167345.P5589471158338476803

namespace A167345

/-- `A166586(n+1)*A333787(n+1)` -/
def P5589471158338476803.Spec : Prop :=
  ∀ n, P5589471158338476803.a n = A167345 (n + 1)

end A167345

/-! ## A167345.P14593877625570983574

`abs(A125131(n+1)*A166586(n+1))`
-/

namespace A167345.P14593877625570983574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A125131 (n + 1) * A166586 (n + 1)|

end

end A167345.P14593877625570983574

namespace A167345

/-- `abs(A125131(n+1)*A166586(n+1))` -/
def P14593877625570983574.Spec : Prop :=
  ∀ n, P14593877625570983574.a n = A167345 (n + 1)

end A167345

/-! ## A167345.P8856307422925364999

`(A168065(n+1)-A168066(n+1))*A166586(n+1)`
-/

namespace A167345.P8856307422925364999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A168065 (n + 1) - A168066 (n + 1)) * A166586 (n + 1)

end

end A167345.P8856307422925364999

namespace A167345

/-- `(A168065(n+1)-A168066(n+1))*A166586(n+1)` -/
def P8856307422925364999.Spec : Prop :=
  ∀ n, P8856307422925364999.a n = A167345 (n + 1)

end A167345

/-! ## A167345.P2757430879113548547

`A003958(n+1)/A003959(n+1)*A167350(n+1)`
-/

namespace A167345.P2757430879113548547
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003958 (n + 1) : ℚ) / (A003959 (n + 1) : ℚ) * (A167350 (n + 1) : ℚ)

end

end A167345.P2757430879113548547

namespace A167345

/-- `A003958(n+1)/A003959(n+1)*A167350(n+1)` -/
def P2757430879113548547.Spec : Prop :=
  ∀ n, P2757430879113548547.a n = (A167345 (n + 1) : ℚ)

end A167345

/-! ## A167345.P18345780712801066981

`A003958(n+1)/A165826(n+1)*A167297(n+1)`
-/

namespace A167345.P18345780712801066981
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003958 (n + 1) : ℚ) / (A165826 (n + 1) : ℚ) * (A167297 (n + 1) : ℚ)

end

end A167345.P18345780712801066981

namespace A167345

/-- `A003958(n+1)/A165826(n+1)*A167297(n+1)` -/
def P18345780712801066981.Spec : Prop :=
  ∀ n, P18345780712801066981.a n = (A167345 (n + 1) : ℚ)

end A167345

/-! ## A167345.P12245264121283433539

`A003958(n+1)/A165827(n+1)*A167298(n+1)`
-/

namespace A167345.P12245264121283433539
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003958 (n + 1) : ℚ) / (A165827 (n + 1) : ℚ) * (A167298 (n + 1) : ℚ)

end

end A167345.P12245264121283433539

namespace A167345

/-- `A003958(n+1)/A165827(n+1)*A167298(n+1)` -/
def P12245264121283433539.Spec : Prop :=
  ∀ n, P12245264121283433539.a n = (A167345 (n + 1) : ℚ)

end A167345

/-! ## A167345.P6264426357607791639

`A003958(n+1)²/A166635(n+1)*A167297(n+1)`
-/

namespace A167345.P6264426357607791639
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003958 (n + 1) ^ 2 : ℚ) / (A166635 (n + 1) : ℚ) * (A167297 (n + 1) : ℚ)

end

end A167345.P6264426357607791639

namespace A167345

/-- `A003958(n+1)²/A166635(n+1)*A167297(n+1)` -/
def P6264426357607791639.Spec : Prop :=
  ∀ n, P6264426357607791639.a n = (A167345 (n + 1) : ℚ)

end A167345

/-! ## A167345.P2622418276058384549

`A003958(n+1)²/A166637(n+1)*A167299(n+1)`
-/

namespace A167345.P2622418276058384549
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003958 (n + 1) ^ 2 : ℚ) / (A166637 (n + 1) : ℚ) * (A167299 (n + 1) : ℚ)

end

end A167345.P2622418276058384549

namespace A167345

/-- `A003958(n+1)²/A166637(n+1)*A167299(n+1)` -/
def P2622418276058384549.Spec : Prop :=
  ∀ n, P2622418276058384549.a n = (A167345 (n + 1) : ℚ)

end A167345

/-!
# A167346: Totally multiplicative sequence with a(p) = (p-1)*(p+2) = p^2+p-2 for prime p.

The programs for A167346, the canonical program `A167346.P10741638315407292075` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A167346 has offset 1).

The definition of A167346 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A167346.P17549123060566637947

`A003958(n+1)*A166590(n+1)`
-/

namespace A167346.P17549123060566637947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003958 (n + 1) * A166590 (n + 1)

end

end A167346.P17549123060566637947

namespace A167346

/-- `A003958(n+1)*A166590(n+1)` -/
def P17549123060566637947.Spec : Prop :=
  ∀ n, P17549123060566637947.a n = A167346 (n + 1)

end A167346

/-! ## A167346.P10741638315407292075

`∏{d}[n+1, A341772(A014963(#))]`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A167346

/-- `∏{d}[n+1, A341772(A014963(#))]` -/
def P10741638315407292075.Spec : Prop :=
  ∀ n, P10741638315407292075.a n = A167346 (n + 1)

theorem P10741638315407292075.correct : P10741638315407292075.Spec := by
  intro n
  simp only [A167346, Nat.add_sub_cancel]

end A167346

/-! ## A167346.P8405879934936843734

`abs(A125131(n+1)*A166590(n+1))`
-/

namespace A167346.P8405879934936843734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A125131 (n + 1) * A166590 (n + 1)|

end

end A167346.P8405879934936843734

namespace A167346

/-- `abs(A125131(n+1)*A166590(n+1))` -/
def P8405879934936843734.Spec : Prop :=
  ∀ n, P8405879934936843734.a n = A167346 (n + 1)

end A167346

/-! ## A167346.P3208536310547526328

`(1-A322582(n+1)+n)*A166590(n+1)`
-/

namespace A167346.P3208536310547526328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A322582 (n + 1) + (n : ℤ)) * A166590 (n + 1)

end

end A167346.P3208536310547526328

namespace A167346

/-- `(1-A322582(n+1)+n)*A166590(n+1)` -/
def P3208536310547526328.Spec : Prop :=
  ∀ n, P3208536310547526328.a n = A167346 (n + 1)

end A167346

/-! ## A167346.P10079359938177426332

`gcd(A125131(n+1)*A166590(n+1), A000038(n))`
-/

namespace A167346.P10079359938177426332
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A125131 (n + 1) * A166590 (n + 1)) (A000038 n)

end

end A167346.P10079359938177426332

namespace A167346

/-- `gcd(A125131(n+1)*A166590(n+1), A000038(n))` -/
def P10079359938177426332.Spec : Prop :=
  ∀ n, (P10079359938177426332.a n : ℤ) = A167346 (n + 1)

end A167346

/-! ## A167346.P647885882446415953

`(A168065(n+1)-A168066(n+1))*A166590(n+1)`
-/

namespace A167346.P647885882446415953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A168065 (n + 1) - A168066 (n + 1)) * A166590 (n + 1)

end

end A167346.P647885882446415953

namespace A167346

/-- `(A168065(n+1)-A168066(n+1))*A166590(n+1)` -/
def P647885882446415953.Spec : Prop :=
  ∀ n, P647885882446415953.a n = A167346 (n + 1)

end A167346

/-! ## A167346.P13464567485478521959

`(A322581(n+1)-A097945(n+1))*A166590(n+1)`
-/

namespace A167346.P13464567485478521959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A322581 (n + 1) - A097945 (n + 1)) * A166590 (n + 1)

end

end A167346.P13464567485478521959

namespace A167346

/-- `(A322581(n+1)-A097945(n+1))*A166590(n+1)` -/
def P13464567485478521959.Spec : Prop :=
  ∀ n, P13464567485478521959.a n = A167346 (n + 1)

end A167346

/-! ## A167346.P898590758487956087

`(A348975(n+1)-A168036(n+1))*A166590(n+1)`
-/

namespace A167346.P898590758487956087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A348975 (n + 1) - A168036 (n + 1)) * A166590 (n + 1)

end

end A167346.P898590758487956087

namespace A167346

/-- `(A348975(n+1)-A168036(n+1))*A166590(n+1)` -/
def P898590758487956087.Spec : Prop :=
  ∀ n, P898590758487956087.a n = A167346 (n + 1)

end A167346

/-! ## A167346.P15082677336275099459

`A003958(n+1)/A003959(n+1)*A167351(n+1)`
-/

namespace A167346.P15082677336275099459
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003958 (n + 1) : ℚ) / (A003959 (n + 1) : ℚ) * (A167351 (n + 1) : ℚ)

end

end A167346.P15082677336275099459

namespace A167346

/-- `A003958(n+1)/A003959(n+1)*A167351(n+1)` -/
def P15082677336275099459.Spec : Prop :=
  ∀ n, P15082677336275099459.a n = (A167346 (n + 1) : ℚ)

end A167346

/-! ## A167346.P6391046503743146009

`A003958(n+1)/A165825(n+1)*A167305(n+1)`
-/

namespace A167346.P6391046503743146009
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003958 (n + 1) : ℚ) / (A165825 (n + 1) : ℚ) * (A167305 (n + 1) : ℚ)

end

end A167346.P6391046503743146009

namespace A167346

/-- `A003958(n+1)/A165825(n+1)*A167305(n+1)` -/
def P6391046503743146009.Spec : Prop :=
  ∀ n, P6391046503743146009.a n = (A167346 (n + 1) : ℚ)

end A167346

/-! ## A167346.P3240647817674222965

`A003958(n+1)/A165826(n+1)*A167306(n+1)`
-/

namespace A167346.P3240647817674222965
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003958 (n + 1) : ℚ) / (A165826 (n + 1) : ℚ) * (A167306 (n + 1) : ℚ)

end

end A167346.P3240647817674222965

namespace A167346

/-- `A003958(n+1)/A165826(n+1)*A167306(n+1)` -/
def P3240647817674222965.Spec : Prop :=
  ∀ n, P3240647817674222965.a n = (A167346 (n + 1) : ℚ)

end A167346

/-! ## A167346.P4779426978745431792

`A003958(n+1)/A165827(n+1)*A167307(n+1)`
-/

namespace A167346.P4779426978745431792
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003958 (n + 1) : ℚ) / (A165827 (n + 1) : ℚ) * (A167307 (n + 1) : ℚ)

end

end A167346.P4779426978745431792

namespace A167346

/-- `A003958(n+1)/A165827(n+1)*A167307(n+1)` -/
def P4779426978745431792.Spec : Prop :=
  ∀ n, P4779426978745431792.a n = (A167346 (n + 1) : ℚ)

end A167346

/-! ## A167346.P7082893230047880010

`A003958(n+1)/A165828(n+1)*A167308(n+1)`
-/

namespace A167346.P7082893230047880010
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003958 (n + 1) : ℚ) / (A165828 (n + 1) : ℚ) * (A167308 (n + 1) : ℚ)

end

end A167346.P7082893230047880010

namespace A167346

/-- `A003958(n+1)/A165828(n+1)*A167308(n+1)` -/
def P7082893230047880010.Spec : Prop :=
  ∀ n, P7082893230047880010.a n = (A167346 (n + 1) : ℚ)

end A167346

/-! ## A167346.P11974990748251750524

`A003958(n+1)/A165829(n+1)*A167309(n+1)`
-/

namespace A167346.P11974990748251750524
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003958 (n + 1) : ℚ) / (A165829 (n + 1) : ℚ) * (A167309 (n + 1) : ℚ)

end

end A167346.P11974990748251750524

namespace A167346

/-- `A003958(n+1)/A165829(n+1)*A167309(n+1)` -/
def P11974990748251750524.Spec : Prop :=
  ∀ n, P11974990748251750524.a n = (A167346 (n + 1) : ℚ)

end A167346

/-! ## A167346.P5125272928670020053

`A003958(n+1)/A165830(n+1)*A167310(n+1)`
-/

namespace A167346.P5125272928670020053
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003958 (n + 1) : ℚ) / (A165830 (n + 1) : ℚ) * (A167310 (n + 1) : ℚ)

end

end A167346.P5125272928670020053

namespace A167346

/-- `A003958(n+1)/A165830(n+1)*A167310(n+1)` -/
def P5125272928670020053.Spec : Prop :=
  ∀ n, P5125272928670020053.a n = (A167346 (n + 1) : ℚ)

end A167346

/-! ## A167346.P13052382496056299131

`A003958(n+1)/A165831(n+1)*A167311(n+1)`
-/

namespace A167346.P13052382496056299131
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003958 (n + 1) : ℚ) / (A165831 (n + 1) : ℚ) * (A167311 (n + 1) : ℚ)

end

end A167346.P13052382496056299131

namespace A167346

/-- `A003958(n+1)/A165831(n+1)*A167311(n+1)` -/
def P13052382496056299131.Spec : Prop :=
  ∀ n, P13052382496056299131.a n = (A167346 (n + 1) : ℚ)

end A167346

/-! ## A167346.P7548598967746796338

`A003958(n+1)²/A166636(n+1)*A167307(n+1)`
-/

namespace A167346.P7548598967746796338
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003958 (n + 1) ^ 2 : ℚ) / (A166636 (n + 1) : ℚ) * (A167307 (n + 1) : ℚ)

end

end A167346.P7548598967746796338

namespace A167346

/-- `A003958(n+1)²/A166636(n+1)*A167307(n+1)` -/
def P7548598967746796338.Spec : Prop :=
  ∀ n, P7548598967746796338.a n = (A167346 (n + 1) : ℚ)

end A167346

/-! ## A167346.P13938340055364018799

`A003958(n+1)²/A166637(n+1)*A167308(n+1)`
-/

namespace A167346.P13938340055364018799
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003958 (n + 1) ^ 2 : ℚ) / (A166637 (n + 1) : ℚ) * (A167308 (n + 1) : ℚ)

end

end A167346.P13938340055364018799

namespace A167346

/-- `A003958(n+1)²/A166637(n+1)*A167308(n+1)` -/
def P13938340055364018799.Spec : Prop :=
  ∀ n, P13938340055364018799.a n = (A167346 (n + 1) : ℚ)

end A167346

/-!
# A167347: Totally multiplicative sequence with a(p) = (p-1)*(p-3) = p^2-4p+3 for prime p.

The programs for A167347, the canonical program `A167347.P12506259903497300645` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A167347 has offset 1).

The definition of A167347 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003958, A166589, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A167347.P12506259903497300645

`A003958(n+1)*A166589(n+1)`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A167347

/-- `A003958(n+1)*A166589(n+1)` -/
def P12506259903497300645.Spec : Prop :=
  ∀ n, P12506259903497300645.a n = A167347 (n + 1)

theorem P12506259903497300645.correct : P12506259903497300645.Spec := by
  intro n
  simp only [A167347, Nat.add_sub_cancel]

end A167347

/-! ## A167347.P12181467761442262618

`A003958(n+1)/A003959(n+1)*A167352(n+1)`
-/

namespace A167347.P12181467761442262618
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003958 (n + 1) : ℚ) / (A003959 (n + 1) : ℚ) * (A167352 (n + 1) : ℚ)

end

end A167347.P12181467761442262618

namespace A167347

/-- `A003958(n+1)/A003959(n+1)*A167352(n+1)` -/
def P12181467761442262618.Spec : Prop :=
  ∀ n, P12181467761442262618.a n = (A167347 (n + 1) : ℚ)

end A167347

/-! ## A167347.P16929747021303382224

`A003958(n+1)/A061142(n+1)*A167312(n+1)`
-/

namespace A167347.P16929747021303382224
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003958 (n + 1) : ℚ) / (A061142 (n + 1) : ℚ) * (A167312 (n + 1) : ℚ)

end

end A167347.P16929747021303382224

namespace A167347

/-- `A003958(n+1)/A061142(n+1)*A167312(n+1)` -/
def P16929747021303382224.Spec : Prop :=
  ∀ n, P16929747021303382224.a n = (A167347 (n + 1) : ℚ)

end A167347

/-! ## A167347.P16333947121588035838

`A003958(n+1)/A165824(n+1)*A167313(n+1)`
-/

namespace A167347.P16333947121588035838
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003958 (n + 1) : ℚ) / (A165824 (n + 1) : ℚ) * (A167313 (n + 1) : ℚ)

end

end A167347.P16333947121588035838

namespace A167347

/-- `A003958(n+1)/A165824(n+1)*A167313(n+1)` -/
def P16333947121588035838.Spec : Prop :=
  ∀ n, P16333947121588035838.a n = (A167347 (n + 1) : ℚ)

end A167347

/-! ## A167347.P8862341515392457477

`A003958(n+1)/A165825(n+1)*A167314(n+1)`
-/

namespace A167347.P8862341515392457477
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003958 (n + 1) : ℚ) / (A165825 (n + 1) : ℚ) * (A167314 (n + 1) : ℚ)

end

end A167347.P8862341515392457477

namespace A167347

/-- `A003958(n+1)/A165825(n+1)*A167314(n+1)` -/
def P8862341515392457477.Spec : Prop :=
  ∀ n, P8862341515392457477.a n = (A167347 (n + 1) : ℚ)

end A167347

/-! ## A167347.P17588638431040590970

`A003958(n+1)/A165826(n+1)*A167315(n+1)`
-/

namespace A167347.P17588638431040590970
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003958 (n + 1) : ℚ) / (A165826 (n + 1) : ℚ) * (A167315 (n + 1) : ℚ)

end

end A167347.P17588638431040590970

namespace A167347

/-- `A003958(n+1)/A165826(n+1)*A167315(n+1)` -/
def P17588638431040590970.Spec : Prop :=
  ∀ n, P17588638431040590970.a n = (A167347 (n + 1) : ℚ)

end A167347

/-! ## A167347.P9641125403163157171

`A003958(n+1)/A165827(n+1)*A167316(n+1)`
-/

namespace A167347.P9641125403163157171
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003958 (n + 1) : ℚ) / (A165827 (n + 1) : ℚ) * (A167316 (n + 1) : ℚ)

end

end A167347.P9641125403163157171

namespace A167347

/-- `A003958(n+1)/A165827(n+1)*A167316(n+1)` -/
def P9641125403163157171.Spec : Prop :=
  ∀ n, P9641125403163157171.a n = (A167347 (n + 1) : ℚ)

end A167347

/-! ## A167347.P11533227218738201819

`A003958(n+1)/A165831(n+1)*A167320(n+1)`
-/

namespace A167347.P11533227218738201819
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003958 (n + 1) : ℚ) / (A165831 (n + 1) : ℚ) * (A167320 (n + 1) : ℚ)

end

end A167347.P11533227218738201819

namespace A167347

/-- `A003958(n+1)/A165831(n+1)*A167320(n+1)` -/
def P11533227218738201819.Spec : Prop :=
  ∀ n, P11533227218738201819.a n = (A167347 (n + 1) : ℚ)

end A167347

/-! ## A167347.P5694552932181022860

`A003958(n+1)/A166590(n+1)*A167359(n+1)`
-/

namespace A167347.P5694552932181022860
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003958 (n + 1) : ℚ) / (A166590 (n + 1) : ℚ) * (A167359 (n + 1) : ℚ)

end

end A167347.P5694552932181022860

namespace A167347

/-- `A003958(n+1)/A166590(n+1)*A167359(n+1)` -/
def P5694552932181022860.Spec : Prop :=
  ∀ n, P5694552932181022860.a n = (A167347 (n + 1) : ℚ)

end A167347

/-! ## A167347.P6910836473183003959

`A167316(n+1)/A167307(n+1)*A167346(n+1)`
-/

namespace A167347.P6910836473183003959
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167316 (n + 1) : ℚ) / (A167307 (n + 1) : ℚ) * (A167346 (n + 1) : ℚ)

end

end A167347.P6910836473183003959

namespace A167347

/-- `A167316(n+1)/A167307(n+1)*A167346(n+1)` -/
def P6910836473183003959.Spec : Prop :=
  ∀ n, P6910836473183003959.a n = (A167347 (n + 1) : ℚ)

end A167347

/-! ## A167347.P4970008007634808784

`A003958(n+1)²/A166634(n+1)*A167314(n+1)`
-/

namespace A167347.P4970008007634808784
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003958 (n + 1) ^ 2 : ℚ) / (A166634 (n + 1) : ℚ) * (A167314 (n + 1) : ℚ)

end

end A167347.P4970008007634808784

namespace A167347

/-- `A003958(n+1)²/A166634(n+1)*A167314(n+1)` -/
def P4970008007634808784.Spec : Prop :=
  ∀ n, P4970008007634808784.a n = (A167347 (n + 1) : ℚ)

end A167347

/-! ## A167347.P1126409279212796853

`A003958(n+1)²/A166641(n+1)*A167320(n+1)`
-/

namespace A167347.P1126409279212796853
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003958 (n + 1) ^ 2 : ℚ) / (A166641 (n + 1) : ℚ) * (A167320 (n + 1) : ℚ)

end

end A167347.P1126409279212796853

namespace A167347

/-- `A003958(n+1)²/A166641(n+1)*A167320(n+1)` -/
def P1126409279212796853.Spec : Prop :=
  ∀ n, P1126409279212796853.a n = (A167347 (n + 1) : ℚ)

end A167347

/-! ## A167347.P6581398080016777714

`A003958(n+1)*A167362(n+1)/sqrt(A167363(n+1))`
-/

namespace A167347.P6581398080016777714
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A003958 (n + 1) * A167362 (n + 1) : ℝ) / Real.sqrt (A167363 (n + 1) : ℝ)

end

end A167347.P6581398080016777714

namespace A167347

/-- `A003958(n+1)*A167362(n+1)/sqrt(A167363(n+1))` -/
def P6581398080016777714.Spec : Prop :=
  ∀ n, P6581398080016777714.a n = (A167347 (n + 1) : ℝ)

end A167347

/-! ## A167347.P14579258926355470989

`A166589(n+1)/A166637(A061142(n+1))*A166637(n+1)`
-/

namespace A167347.P14579258926355470989
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166589 (n + 1) : ℚ) / (A166637 (A061142 (n + 1)).toNat : ℚ) * (A166637 (n + 1) : ℚ)

end

end A167347.P14579258926355470989

namespace A167347

/-- `A166589(n+1)/A166637(A061142(n+1))*A166637(n+1)` -/
def P14579258926355470989.Spec : Prop :=
  ∀ n, P14579258926355470989.a n = (A167347 (n + 1) : ℚ)

end A167347

/-!
# A167348: Let a(n) be the n-th term of the sequence. Let m = primorial(a(n)); m is the minimum positive integer such that m/phi(m) >= n.

The programs for A167348, there is no canonical definition to state claims against.
-/

/-! ## A167348.P6957034549442894588

`A091440(ceil(acot(n)+n))`
-/

namespace A167348.P6957034549442894588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091440 ⌈SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌉.toNat

end

end A167348.P6957034549442894588

/-! ## A167348.P51277902166510411

`A091440(floor(acot(n))+1+n)`
-/

namespace A167348.P51277902166510411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091440 (⌊SequenceMachineLib.acot (n : ℝ)⌋ + 1 + (n : ℤ)).toNat

end

end A167348.P51277902166510411

/-! ## A167348.P11618230683379846603

`A091440(round(sqrt(n²+1))+1)`
-/

namespace A167348.P11618230683379846603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091440 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ)) + 1).toNat

end

end A167348.P11618230683379846603

/-! ## A167348.P7663947875973153896

`A091440(n+1)+A000007(n)`
-/

namespace A167348.P7663947875973153896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091440 (n + 1) + A000007 n

end

end A167348.P7663947875973153896

/-!
# A167349: Totally multiplicative sequence with a(p) = (p+1)^2 = p^2+2p+1 for prime p.

The programs for A167349, the canonical program `A167349.P4063625469855848635` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A167349 has offset 1).

The definition of A167349 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003959, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A167349.P4063625469855848635

`A003959(n+1)²`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A167349

/-- `A003959(n+1)²` -/
def P4063625469855848635.Spec : Prop :=
  ∀ n, P4063625469855848635.a n = A167349 (n + 1)

theorem P4063625469855848635.correct : P4063625469855848635.Spec := by
  intro n
  simp only [A167349, Nat.add_sub_cancel]

end A167349

/-! ## A167349.P10276480598574515832

`∑{d}[n+1, A003968(#)]²`
-/

namespace A167349.P10276480598574515832
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ d ∈ Nat.divisors (f1 n), A003968 d) ^ 2

end

end A167349.P10276480598574515832

namespace A167349

/-- `∑{d}[n+1, A003968(#)]²` -/
def P10276480598574515832.Spec : Prop :=
  ∀ n, P10276480598574515832.a n = A167349 (n + 1)

end A167349

/-! ## A167349.P1979743813291479702

`(A348507(n+1)+1+n)²`
-/

namespace A167349.P1979743813291479702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A348507 (n + 1) + 1 + (n : ℤ)) ^ 2

end

end A167349.P1979743813291479702

namespace A167349

/-- `(A348507(n+1)+1+n)²` -/
def P1979743813291479702.Spec : Prop :=
  ∀ n, P1979743813291479702.a n = A167349 (n + 1)

end A167349

/-! ## A167349.P17145282440877958755

`(A167338(n+1)/(n+1))²`
-/

namespace A167349.P17145282440877958755
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A167338 (n + 1) : ℚ) / (n + 1 : ℚ)) ^ 2

end

end A167349.P17145282440877958755

namespace A167349

/-- `(A167338(n+1)/(n+1))²` -/
def P17145282440877958755.Spec : Prop :=
  ∀ n, P17145282440877958755.a n = (A167349 (n + 1) : ℚ)

end A167349

/-! ## A167349.P15690479921154770481

`(A348508(n+1)+2*(n+1))^2`
-/

namespace A167349.P15690479921154770481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A348508 (n + 1) + (2 * (n + 1) : ℤ)) ^ 2

end

end A167349.P15690479921154770481

namespace A167349

/-- `(A348508(n+1)+2*(n+1))^2` -/
def P15690479921154770481.Spec : Prop :=
  ∀ n, P15690479921154770481.a n = A167349 (n + 1)

end A167349

/-! ## A167349.P1392496947642584141

`A003959(A000027(n+1))^2`
-/

namespace A167349.P1392496947642584141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003959 (A000027 (n + 1)).toNat ^ 2

end

end A167349.P1392496947642584141

namespace A167349

/-- `A003959(A000027(n+1))^2` -/
def P1392496947642584141.Spec : Prop :=
  ∀ n, P1392496947642584141.a n = A167349 (n + 1)

end A167349

/-! ## A167349.P6950499193134475057

`∏{d}[n+1, A000203(A014963(#))²]`
-/

namespace A167349.P6950499193134475057
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), A000203 (A014963 d).toNat ^ 2

end

end A167349.P6950499193134475057

namespace A167349

/-- `∏{d}[n+1, A000203(A014963(#))²]` -/
def P6950499193134475057.Spec : Prop :=
  ∀ n, P6950499193134475057.a n = A167349 (n + 1)

end A167349

/-! ## A167349.P2858602654106622490

`A327564(n+1)*A351435(n+1)`
-/

namespace A167349.P2858602654106622490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327564 (n + 1) * A351435 (n + 1)

end

end A167349.P2858602654106622490

namespace A167349

/-- `A327564(n+1)*A351435(n+1)` -/
def P2858602654106622490.Spec : Prop :=
  ∀ n, P2858602654106622490.a n = A167349 (n + 1)

end A167349

/-! ## A167349.P4698750158430913487

`(A168066(n+1)+A168065(n+1))²`
-/

namespace A167349.P4698750158430913487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A168066 (n + 1) + A168065 (n + 1)) ^ 2

end

end A167349.P4698750158430913487

namespace A167349

/-- `(A168066(n+1)+A168065(n+1))²` -/
def P4698750158430913487.Spec : Prop :=
  ∀ n, P4698750158430913487.a n = A167349 (n + 1)

end A167349

/-! ## A167349.P3704404069603368294

`(A348029(n+1)+A000203(n+1))²`
-/

namespace A167349.P3704404069603368294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A348029 (n + 1) + A000203 (n + 1)) ^ 2

end

end A167349.P3704404069603368294

namespace A167349

/-- `(A348029(n+1)+A000203(n+1))²` -/
def P3704404069603368294.Spec : Prop :=
  ∀ n, P3704404069603368294.a n = A167349 (n + 1)

end A167349

/-! ## A167349.P539555607718109063

`(A348732(n+1)+A034448(n+1))²`
-/

namespace A167349.P539555607718109063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A348732 (n + 1) + A034448 (n + 1)) ^ 2

end

end A167349.P539555607718109063

namespace A167349

/-- `(A348732(n+1)+A034448(n+1))²` -/
def P539555607718109063.Spec : Prop :=
  ∀ n, P539555607718109063.a n = A167349 (n + 1)

end A167349

/-! ## A167349.P8706157602809259331

`(A048250(n+1)*A327564(n+1))²`
-/

namespace A167349.P8706157602809259331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A048250 (n + 1) * A327564 (n + 1)) ^ 2

end

end A167349.P8706157602809259331

namespace A167349

/-- `(A048250(n+1)*A327564(n+1))²` -/
def P8706157602809259331.Spec : Prop :=
  ∀ n, P8706157602809259331.a n = A167349 (n + 1)

end A167349

/-! ## A167349.P15397829305658197108

`(A323363(n+1)*A327564(n+1))²`
-/

namespace A167349.P15397829305658197108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A323363 (n + 1) * A327564 (n + 1)) ^ 2

end

end A167349.P15397829305658197108

namespace A167349

/-- `(A323363(n+1)*A327564(n+1))²` -/
def P15397829305658197108.Spec : Prop :=
  ∀ n, P15397829305658197108.a n = A167349 (n + 1)

end A167349

/-! ## A167349.P7445955663853255481

`(A348047(n+1)*A348049(n+1))²`
-/

namespace A167349.P7445955663853255481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A348047 (n + 1) * A348049 (n + 1)) ^ 2

end

end A167349.P7445955663853255481

namespace A167349

/-- `(A348047(n+1)*A348049(n+1))²` -/
def P7445955663853255481.Spec : Prop :=
  ∀ n, P7445955663853255481.a n = A167349 (n + 1)

end A167349

/-! ## A167349.P13591943392617228196

`(A348733(n+1)*A348734(n+1))²`
-/

namespace A167349.P13591943392617228196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A348733 (n + 1) * A348734 (n + 1)) ^ 2

end

end A167349.P13591943392617228196

namespace A167349

/-- `(A348733(n+1)*A348734(n+1))²` -/
def P13591943392617228196.Spec : Prop :=
  ∀ n, P13591943392617228196.a n = A167349 (n + 1)

end A167349

/-! ## A167349.P5825126009591000596

`(A348972(n+1)*A348974(n+1))²`
-/

namespace A167349.P5825126009591000596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A348972 (n + 1) * A348974 (n + 1)) ^ 2

end

end A167349.P5825126009591000596

namespace A167349

/-- `(A348972(n+1)*A348974(n+1))²` -/
def P5825126009591000596.Spec : Prop :=
  ∀ n, P5825126009591000596.a n = A167349 (n + 1)

end A167349

/-! ## A167349.P10417132382459299298

`(A167344(n+1)/A003958(n+1))²`
-/

namespace A167349.P10417132382459299298
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A167344 (n + 1) : ℚ) / (A003958 (n + 1) : ℚ)) ^ 2

end

end A167349.P10417132382459299298

namespace A167349

/-- `(A167344(n+1)/A003958(n+1))²` -/
def P10417132382459299298.Spec : Prop :=
  ∀ n, P10417132382459299298.a n = (A167349 (n + 1) : ℚ)

end A167349

/-! ## A167349.P9679292258622540362

`(A166642(n+1)/A061142(n+1))²`
-/

namespace A167349.P9679292258622540362
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A166642 (n + 1) : ℚ) / (A061142 (n + 1) : ℚ)) ^ 2

end

end A167349.P9679292258622540362

namespace A167349

/-- `(A166642(n+1)/A061142(n+1))²` -/
def P9679292258622540362.Spec : Prop :=
  ∀ n, P9679292258622540362.a n = (A167349 (n + 1) : ℚ)

end A167349

/-! ## A167349.P2120171832032875376

`A166642(n+1)²/A165825(n+1)`
-/

namespace A167349.P2120171832032875376
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166642 (n + 1) ^ 2 : ℚ) / (A165825 (n + 1) : ℚ)

end

end A167349.P2120171832032875376

namespace A167349

/-- `A166642(n+1)²/A165825(n+1)` -/
def P2120171832032875376.Spec : Prop :=
  ∀ n, P2120171832032875376.a n = (A167349 (n + 1) : ℚ)

end A167349

/-! ## A167349.P6175724100877935300

`(A166643(n+1)/A165824(n+1))²`
-/

namespace A167349.P6175724100877935300
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A166643 (n + 1) : ℚ) / (A165824 (n + 1) : ℚ)) ^ 2

end

end A167349.P6175724100877935300

namespace A167349

/-- `(A166643(n+1)/A165824(n+1))²` -/
def P6175724100877935300.Spec : Prop :=
  ∀ n, P6175724100877935300.a n = (A167349 (n + 1) : ℚ)

end A167349

/-!
# A167350: Totally multiplicative sequence with a(p) = (p+1)*(p-2) = p^2-p-2 for prime p.

The programs for A167350, the canonical program `A167350.P7668436297064043008` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A167350 has offset 1).

The definition of A167350 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003959, A166586, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A167350.P7668436297064043008

`A003959(n+1)*A166586(n+1)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A167350

/-- `A003959(n+1)*A166586(n+1)` -/
def P7668436297064043008.Spec : Prop :=
  ∀ n, P7668436297064043008.a n = A167350 (n + 1)

theorem P7668436297064043008.correct : P7668436297064043008.Spec := by
  intro n
  simp only [A167350, Nat.add_sub_cancel]

end A167350

/-! ## A167350.P18167650664558699635

`A003960(n+1)*A167294(n+1)`
-/

namespace A167350.P18167650664558699635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003960 (n + 1) * A167294 (n + 1)

end

end A167350.P18167650664558699635

namespace A167350

/-- `A003960(n+1)*A167294(n+1)` -/
def P18167650664558699635.Spec : Prop :=
  ∀ n, P18167650664558699635.a n = A167350 (n + 1)

end A167350

/-! ## A167350.P11960739587328965840

`A167294(n+1)*A290323(n+1)`
-/

namespace A167350.P11960739587328965840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167294 (n + 1) * A290323 (n + 1)

end

end A167350.P11960739587328965840

namespace A167350

/-- `A167294(n+1)*A290323(n+1)` -/
def P11960739587328965840.Spec : Prop :=
  ∀ n, P11960739587328965840.a n = A167350 (n + 1)

end A167350

/-! ## A167350.P1292625220762198578

`(A168066(n+1)+A168065(n+1))*A166586(n+1)`
-/

namespace A167350.P1292625220762198578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A168066 (n + 1) + A168065 (n + 1)) * A166586 (n + 1)

end

end A167350.P1292625220762198578

namespace A167350

/-- `(A168066(n+1)+A168065(n+1))*A166586(n+1)` -/
def P1292625220762198578.Spec : Prop :=
  ∀ n, P1292625220762198578.a n = A167350 (n + 1)

end A167350

/-! ## A167350.P2407332095796678827

`A003959(n+1)/A003958(n+1)*A167345(n+1)`
-/

namespace A167350.P2407332095796678827
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003959 (n + 1) : ℚ) / (A003958 (n + 1) : ℚ) * (A167345 (n + 1) : ℚ)

end

end A167350.P2407332095796678827

namespace A167350

/-- `A003959(n+1)/A003958(n+1)*A167345(n+1)` -/
def P2407332095796678827.Spec : Prop :=
  ∀ n, P2407332095796678827.a n = (A167350 (n + 1) : ℚ)

end A167350

/-! ## A167350.P18346706754329164105

`A003959(n+1)/A061142(n+1)*A167294(n+1)`
-/

namespace A167350.P18346706754329164105
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003959 (n + 1) : ℚ) / (A061142 (n + 1) : ℚ) * (A167294 (n + 1) : ℚ)

end

end A167350.P18346706754329164105

namespace A167350

/-- `A003959(n+1)/A061142(n+1)*A167294(n+1)` -/
def P18346706754329164105.Spec : Prop :=
  ∀ n, P18346706754329164105.a n = (A167350 (n + 1) : ℚ)

end A167350

/-! ## A167350.P12514219029986697743

`A003959(n+1)/A165824(n+1)*A167295(n+1)`
-/

namespace A167350.P12514219029986697743
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003959 (n + 1) : ℚ) / (A165824 (n + 1) : ℚ) * (A167295 (n + 1) : ℚ)

end

end A167350.P12514219029986697743

namespace A167350

/-- `A003959(n+1)/A165824(n+1)*A167295(n+1)` -/
def P12514219029986697743.Spec : Prop :=
  ∀ n, P12514219029986697743.a n = (A167350 (n + 1) : ℚ)

end A167350

/-! ## A167350.P15856895856605386141

`A003959(n+1)/A165825(n+1)*A167296(n+1)`
-/

namespace A167350.P15856895856605386141
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003959 (n + 1) : ℚ) / (A165825 (n + 1) : ℚ) * (A167296 (n + 1) : ℚ)

end

end A167350.P15856895856605386141

namespace A167350

/-- `A003959(n+1)/A165825(n+1)*A167296(n+1)` -/
def P15856895856605386141.Spec : Prop :=
  ∀ n, P15856895856605386141.a n = (A167350 (n + 1) : ℚ)

end A167350

/-! ## A167350.P11634565411214848778

`A003959(n+1)/A165826(n+1)*A167297(n+1)`
-/

namespace A167350.P11634565411214848778
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003959 (n + 1) : ℚ) / (A165826 (n + 1) : ℚ) * (A167297 (n + 1) : ℚ)

end

end A167350.P11634565411214848778

namespace A167350

/-- `A003959(n+1)/A165826(n+1)*A167297(n+1)` -/
def P11634565411214848778.Spec : Prop :=
  ∀ n, P11634565411214848778.a n = (A167350 (n + 1) : ℚ)

end A167350

/-! ## A167350.P10386797981832179225

`A003959(n+1)/A165827(n+1)*A167298(n+1)`
-/

namespace A167350.P10386797981832179225
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003959 (n + 1) : ℚ) / (A165827 (n + 1) : ℚ) * (A167298 (n + 1) : ℚ)

end

end A167350.P10386797981832179225

namespace A167350

/-- `A003959(n+1)/A165827(n+1)*A167298(n+1)` -/
def P10386797981832179225.Spec : Prop :=
  ∀ n, P10386797981832179225.a n = (A167350 (n + 1) : ℚ)

end A167350

/-! ## A167350.P7742757827904527321

`A003959(n+1)/A165828(n+1)*A167299(n+1)`
-/

namespace A167350.P7742757827904527321
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003959 (n + 1) : ℚ) / (A165828 (n + 1) : ℚ) * (A167299 (n + 1) : ℚ)

end

end A167350.P7742757827904527321

namespace A167350

/-- `A003959(n+1)/A165828(n+1)*A167299(n+1)` -/
def P7742757827904527321.Spec : Prop :=
  ∀ n, P7742757827904527321.a n = (A167350 (n + 1) : ℚ)

end A167350

/-! ## A167350.P14939629951890240647

`A003959(n+1)/A165829(n+1)*A167300(n+1)`
-/

namespace A167350.P14939629951890240647
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003959 (n + 1) : ℚ) / (A165829 (n + 1) : ℚ) * (A167300 (n + 1) : ℚ)

end

end A167350.P14939629951890240647

namespace A167350

/-- `A003959(n+1)/A165829(n+1)*A167300(n+1)` -/
def P14939629951890240647.Spec : Prop :=
  ∀ n, P14939629951890240647.a n = (A167350 (n + 1) : ℚ)

end A167350

/-! ## A167350.P15690109543993725337

`A003959(n+1)/A165830(n+1)*A167301(n+1)`
-/

namespace A167350.P15690109543993725337
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003959 (n + 1) : ℚ) / (A165830 (n + 1) : ℚ) * (A167301 (n + 1) : ℚ)

end

end A167350.P15690109543993725337

namespace A167350

/-- `A003959(n+1)/A165830(n+1)*A167301(n+1)` -/
def P15690109543993725337.Spec : Prop :=
  ∀ n, P15690109543993725337.a n = (A167350 (n + 1) : ℚ)

end A167350

/-! ## A167350.P17818793262084674279

`A003959(n+1)/A165831(n+1)*A167302(n+1)`
-/

namespace A167350.P17818793262084674279
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003959 (n + 1) : ℚ) / (A165831 (n + 1) : ℚ) * (A167302 (n + 1) : ℚ)

end

end A167350.P17818793262084674279

namespace A167350

/-- `A003959(n+1)/A165831(n+1)*A167302(n+1)` -/
def P17818793262084674279.Spec : Prop :=
  ∀ n, P17818793262084674279.a n = (A167350 (n + 1) : ℚ)

end A167350

/-! ## A167350.P10197141925739572917

`A003959(n+1)/A166590(n+1)*A167355(n+1)`
-/

namespace A167350.P10197141925739572917
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003959 (n + 1) : ℚ) / (A166590 (n + 1) : ℚ) * (A167355 (n + 1) : ℚ)

end

end A167350.P10197141925739572917

namespace A167350

/-- `A003959(n+1)/A166590(n+1)*A167355(n+1)` -/
def P10197141925739572917.Spec : Prop :=
  ∀ n, P10197141925739572917.a n = (A167350 (n + 1) : ℚ)

end A167350

/-! ## A167350.P14595607443521810445

`A003959(n+1)/A166591(n+1)*A167357(n+1)`
-/

namespace A167350.P14595607443521810445
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003959 (n + 1) : ℚ) / (A166591 (n + 1) : ℚ) * (A167357 (n + 1) : ℚ)

end

end A167350.P14595607443521810445

namespace A167350

/-- `A003959(n+1)/A166591(n+1)*A167357(n+1)` -/
def P14595607443521810445.Spec : Prop :=
  ∀ n, P14595607443521810445.a n = (A167350 (n + 1) : ℚ)

end A167350

/-! ## A167350.P7351707714011689919

`A003959(n+1)²/A166643(n+1)*A167295(n+1)`
-/

namespace A167350.P7351707714011689919
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003959 (n + 1) ^ 2 : ℚ) / (A166643 (n + 1) : ℚ) * (A167295 (n + 1) : ℚ)

end

end A167350.P7351707714011689919

namespace A167350

/-- `A003959(n+1)²/A166643(n+1)*A167295(n+1)` -/
def P7351707714011689919.Spec : Prop :=
  ∀ n, P7351707714011689919.a n = (A167350 (n + 1) : ℚ)

end A167350

/-! ## A167350.P2470992843204435272

`A003959(n+1)²/A166645(n+1)*A167297(n+1)`
-/

namespace A167350.P2470992843204435272
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003959 (n + 1) ^ 2 : ℚ) / (A166645 (n + 1) : ℚ) * (A167297 (n + 1) : ℚ)

end

end A167350.P2470992843204435272

namespace A167350

/-- `A003959(n+1)²/A166645(n+1)*A167297(n+1)` -/
def P2470992843204435272.Spec : Prop :=
  ∀ n, P2470992843204435272.a n = (A167350 (n + 1) : ℚ)

end A167350

/-! ## A167350.P9888994105278716130

`A003959(n+1)²/A166647(n+1)*A167299(n+1)`
-/

namespace A167350.P9888994105278716130
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003959 (n + 1) ^ 2 : ℚ) / (A166647 (n + 1) : ℚ) * (A167299 (n + 1) : ℚ)

end

end A167350.P9888994105278716130

namespace A167350

/-- `A003959(n+1)²/A166647(n+1)*A167299(n+1)` -/
def P9888994105278716130.Spec : Prop :=
  ∀ n, P9888994105278716130.a n = (A167350 (n + 1) : ℚ)

end A167350

/-! ## A167350.P6406854637720806563

`A003959(n+1)/A003959(A061142(n+1))*A167295(n+1)`
-/

namespace A167350.P6406854637720806563
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003959 (n + 1) : ℚ) / (A003959 (A061142 (n + 1)).toNat : ℚ) * (A167295 (n + 1) : ℚ)

end

end A167350.P6406854637720806563

namespace A167350

/-- `A003959(n+1)/A003959(A061142(n+1))*A167295(n+1)` -/
def P6406854637720806563.Spec : Prop :=
  ∀ n, P6406854637720806563.a n = (A167350 (n + 1) : ℚ)

end A167350

/-!
# A167351: Totally multiplicative sequence with a(p) = (p+1)*(p+2) = p^2+3p+2 for prime p.

The programs for A167351, the canonical program `A167351.P2583603583113237971` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A167351 has offset 1).

The definition of A167351 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003959, A166590, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A167351.P2583603583113237971

`A003959(n+1)*A166590(n+1)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A167351

/-- `A003959(n+1)*A166590(n+1)` -/
def P2583603583113237971.Spec : Prop :=
  ∀ n, P2583603583113237971.a n = A167351 (n + 1)

theorem P2583603583113237971.correct : P2583603583113237971.Spec := by
  intro n
  simp only [A167351, Nat.add_sub_cancel]

end A167351

/-! ## A167351.P2729886266961443640

`sqrt(A167358(n+1))*A003959(n+1)`
-/

namespace A167351.P2729886266961443640
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A167358 (n + 1) : ℝ) * (A003959 (n + 1) : ℝ)

end

end A167351.P2729886266961443640

namespace A167351

/-- `sqrt(A167358(n+1))*A003959(n+1)` -/
def P2729886266961443640.Spec : Prop :=
  ∀ n, P2729886266961443640.a n = (A167351 (n + 1) : ℝ)

end A167351

/-! ## A167351.P6388641212556627079

`sqrt(A167349(n+1))*A166590(n+1)`
-/

namespace A167351.P6388641212556627079
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A167349 (n + 1) : ℝ) * (A166590 (n + 1) : ℝ)

end

end A167351.P6388641212556627079

namespace A167351

/-- `sqrt(A167349(n+1))*A166590(n+1)` -/
def P6388641212556627079.Spec : Prop :=
  ∀ n, P6388641212556627079.a n = (A167351 (n + 1) : ℝ)

end A167351

/-! ## A167351.P6232986271159366079

`(A168066(n+1)+A168065(n+1))*A166590(n+1)`
-/

namespace A167351.P6232986271159366079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A168066 (n + 1) + A168065 (n + 1)) * A166590 (n + 1)

end

end A167351.P6232986271159366079

namespace A167351

/-- `(A168066(n+1)+A168065(n+1))*A166590(n+1)` -/
def P6232986271159366079.Spec : Prop :=
  ∀ n, P6232986271159366079.a n = A167351 (n + 1)

end A167351

/-! ## A167351.P768433125835816397

`A003959(n+1)/A003958(n+1)*A167346(n+1)`
-/

namespace A167351.P768433125835816397
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003959 (n + 1) : ℚ) / (A003958 (n + 1) : ℚ) * (A167346 (n + 1) : ℚ)

end

end A167351.P768433125835816397

namespace A167351

/-- `A003959(n+1)/A003958(n+1)*A167346(n+1)` -/
def P768433125835816397.Spec : Prop :=
  ∀ n, P768433125835816397.a n = (A167351 (n + 1) : ℚ)

end A167351

/-! ## A167351.P15307059640625222441

`A003959(n+1)/A061142(n+1)*A167303(n+1)`
-/

namespace A167351.P15307059640625222441
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003959 (n + 1) : ℚ) / (A061142 (n + 1) : ℚ) * (A167303 (n + 1) : ℚ)

end

end A167351.P15307059640625222441

namespace A167351

/-- `A003959(n+1)/A061142(n+1)*A167303(n+1)` -/
def P15307059640625222441.Spec : Prop :=
  ∀ n, P15307059640625222441.a n = (A167351 (n + 1) : ℚ)

end A167351

/-! ## A167351.P12155747722621279559

`A003959(n+1)/A165824(n+1)*A167304(n+1)`
-/

namespace A167351.P12155747722621279559
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003959 (n + 1) : ℚ) / (A165824 (n + 1) : ℚ) * (A167304 (n + 1) : ℚ)

end

end A167351.P12155747722621279559

namespace A167351

/-- `A003959(n+1)/A165824(n+1)*A167304(n+1)` -/
def P12155747722621279559.Spec : Prop :=
  ∀ n, P12155747722621279559.a n = (A167351 (n + 1) : ℚ)

end A167351

/-! ## A167351.P4225688805834551429

`A003959(n+1)/A165825(n+1)*A167305(n+1)`
-/

namespace A167351.P4225688805834551429
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003959 (n + 1) : ℚ) / (A165825 (n + 1) : ℚ) * (A167305 (n + 1) : ℚ)

end

end A167351.P4225688805834551429

namespace A167351

/-- `A003959(n+1)/A165825(n+1)*A167305(n+1)` -/
def P4225688805834551429.Spec : Prop :=
  ∀ n, P4225688805834551429.a n = (A167351 (n + 1) : ℚ)

end A167351

/-! ## A167351.P7979898891367413319

`A003959(n+1)/A165826(n+1)*A167306(n+1)`
-/

namespace A167351.P7979898891367413319
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003959 (n + 1) : ℚ) / (A165826 (n + 1) : ℚ) * (A167306 (n + 1) : ℚ)

end

end A167351.P7979898891367413319

namespace A167351

/-- `A003959(n+1)/A165826(n+1)*A167306(n+1)` -/
def P7979898891367413319.Spec : Prop :=
  ∀ n, P7979898891367413319.a n = (A167351 (n + 1) : ℚ)

end A167351

/-! ## A167351.P540886421325001924

`A003959(n+1)/A165827(n+1)*A167307(n+1)`
-/

namespace A167351.P540886421325001924
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003959 (n + 1) : ℚ) / (A165827 (n + 1) : ℚ) * (A167307 (n + 1) : ℚ)

end

end A167351.P540886421325001924

namespace A167351

/-- `A003959(n+1)/A165827(n+1)*A167307(n+1)` -/
def P540886421325001924.Spec : Prop :=
  ∀ n, P540886421325001924.a n = (A167351 (n + 1) : ℚ)

end A167351

/-! ## A167351.P9496783393156782873

`A003959(n+1)/A165828(n+1)*A167308(n+1)`
-/

namespace A167351.P9496783393156782873
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003959 (n + 1) : ℚ) / (A165828 (n + 1) : ℚ) * (A167308 (n + 1) : ℚ)

end

end A167351.P9496783393156782873

namespace A167351

/-- `A003959(n+1)/A165828(n+1)*A167308(n+1)` -/
def P9496783393156782873.Spec : Prop :=
  ∀ n, P9496783393156782873.a n = (A167351 (n + 1) : ℚ)

end A167351

/-! ## A167351.P17550622479242623886

`A003959(n+1)/A165829(n+1)*A167309(n+1)`
-/

namespace A167351.P17550622479242623886
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003959 (n + 1) : ℚ) / (A165829 (n + 1) : ℚ) * (A167309 (n + 1) : ℚ)

end

end A167351.P17550622479242623886

namespace A167351

/-- `A003959(n+1)/A165829(n+1)*A167309(n+1)` -/
def P17550622479242623886.Spec : Prop :=
  ∀ n, P17550622479242623886.a n = (A167351 (n + 1) : ℚ)

end A167351

/-! ## A167351.P12082614081972196170

`A003959(n+1)/A165830(n+1)*A167310(n+1)`
-/

namespace A167351.P12082614081972196170
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003959 (n + 1) : ℚ) / (A165830 (n + 1) : ℚ) * (A167310 (n + 1) : ℚ)

end

end A167351.P12082614081972196170

namespace A167351

/-- `A003959(n+1)/A165830(n+1)*A167310(n+1)` -/
def P12082614081972196170.Spec : Prop :=
  ∀ n, P12082614081972196170.a n = (A167351 (n + 1) : ℚ)

end A167351

/-! ## A167351.P4795790687270001724

`A003959(n+1)/A165831(n+1)*A167311(n+1)`
-/

namespace A167351.P4795790687270001724
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003959 (n + 1) : ℚ) / (A165831 (n + 1) : ℚ) * (A167311 (n + 1) : ℚ)

end

end A167351.P4795790687270001724

namespace A167351

/-- `A003959(n+1)/A165831(n+1)*A167311(n+1)` -/
def P4795790687270001724.Spec : Prop :=
  ∀ n, P4795790687270001724.a n = (A167351 (n + 1) : ℚ)

end A167351

/-! ## A167351.P5187980226264578946

`A003959(n+1)/A166591(n+1)*A167360(n+1)`
-/

namespace A167351.P5187980226264578946
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003959 (n + 1) : ℚ) / (A166591 (n + 1) : ℚ) * (A167360 (n + 1) : ℚ)

end

end A167351.P5187980226264578946

namespace A167351

/-- `A003959(n+1)/A166591(n+1)*A167360(n+1)` -/
def P5187980226264578946.Spec : Prop :=
  ∀ n, P5187980226264578946.a n = (A167351 (n + 1) : ℚ)

end A167351

/-! ## A167351.P6061770814164625014

`A166645(n+1)/A165866(n+1)*A167310(n+1)`
-/

namespace A167351.P6061770814164625014
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166645 (n + 1) : ℚ) / (A165866 (n + 1) : ℚ) * (A167310 (n + 1) : ℚ)

end

end A167351.P6061770814164625014

namespace A167351

/-- `A166645(n+1)/A165866(n+1)*A167310(n+1)` -/
def P6061770814164625014.Spec : Prop :=
  ∀ n, P6061770814164625014.a n = (A167351 (n + 1) : ℚ)

end A167351

/-! ## A167351.P8286148592079046218

`A003959(n+1)²/A166645(n+1)*A167306(n+1)`
-/

namespace A167351.P8286148592079046218
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003959 (n + 1) ^ 2 : ℚ) / (A166645 (n + 1) : ℚ) * (A167306 (n + 1) : ℚ)

end

end A167351.P8286148592079046218

namespace A167351

/-- `A003959(n+1)²/A166645(n+1)*A167306(n+1)` -/
def P8286148592079046218.Spec : Prop :=
  ∀ n, P8286148592079046218.a n = (A167351 (n + 1) : ℚ)

end A167351

/-! ## A167351.P9747499981641439899

`A003959(n+1)/A167305(n+1)*A167303(n+1)²`
-/

namespace A167351.P9747499981641439899
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003959 (n + 1) : ℚ) / (A167305 (n + 1) : ℚ) * (A167303 (n + 1) ^ 2 : ℚ)

end

end A167351.P9747499981641439899

namespace A167351

/-- `A003959(n+1)/A167305(n+1)*A167303(n+1)²` -/
def P9747499981641439899.Spec : Prop :=
  ∀ n, P9747499981641439899.a n = (A167351 (n + 1) : ℚ)

end A167351

/-!
# A167352: Totally multiplicative sequence with a(p) = (p+1)*(p-3) = p^2-2p-3 for prime p.

The programs for A167352, the canonical program `A167352.P11746959549573865569` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A167352 has offset 1).

The definition of A167352 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003959, A166589, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A167352.P11746959549573865569

`A003959(n+1)*A166589(n+1)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A167352

/-- `A003959(n+1)*A166589(n+1)` -/
def P11746959549573865569.Spec : Prop :=
  ∀ n, P11746959549573865569.a n = A167352 (n + 1)

theorem P11746959549573865569.correct : P11746959549573865569.Spec := by
  intro n
  simp only [A167352, Nat.add_sub_cancel]

end A167352

/-! ## A167352.P468521147587111219

`A003959(n+1)/A003958(n+1)*A167347(n+1)`
-/

namespace A167352.P468521147587111219
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003959 (n + 1) : ℚ) / (A003958 (n + 1) : ℚ) * (A167347 (n + 1) : ℚ)

end

end A167352.P468521147587111219

namespace A167352

/-- `A003959(n+1)/A003958(n+1)*A167347(n+1)` -/
def P468521147587111219.Spec : Prop :=
  ∀ n, P468521147587111219.a n = (A167352 (n + 1) : ℚ)

end A167352

/-! ## A167352.P16839712612301480431

`A003959(n+1)/A061142(n+1)*A167312(n+1)`
-/

namespace A167352.P16839712612301480431
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003959 (n + 1) : ℚ) / (A061142 (n + 1) : ℚ) * (A167312 (n + 1) : ℚ)

end

end A167352.P16839712612301480431

namespace A167352

/-- `A003959(n+1)/A061142(n+1)*A167312(n+1)` -/
def P16839712612301480431.Spec : Prop :=
  ∀ n, P16839712612301480431.a n = (A167352 (n + 1) : ℚ)

end A167352

/-! ## A167352.P15824781841354452681

`A003959(n+1)/A165824(n+1)*A167313(n+1)`
-/

namespace A167352.P15824781841354452681
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003959 (n + 1) : ℚ) / (A165824 (n + 1) : ℚ) * (A167313 (n + 1) : ℚ)

end

end A167352.P15824781841354452681

namespace A167352

/-- `A003959(n+1)/A165824(n+1)*A167313(n+1)` -/
def P15824781841354452681.Spec : Prop :=
  ∀ n, P15824781841354452681.a n = (A167352 (n + 1) : ℚ)

end A167352

/-! ## A167352.P12214457424242384202

`A003959(n+1)/A165825(n+1)*A167314(n+1)`
-/

namespace A167352.P12214457424242384202
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003959 (n + 1) : ℚ) / (A165825 (n + 1) : ℚ) * (A167314 (n + 1) : ℚ)

end

end A167352.P12214457424242384202

namespace A167352

/-- `A003959(n+1)/A165825(n+1)*A167314(n+1)` -/
def P12214457424242384202.Spec : Prop :=
  ∀ n, P12214457424242384202.a n = (A167352 (n + 1) : ℚ)

end A167352

/-! ## A167352.P15012275831059857011

`A003959(n+1)/A165826(n+1)*A167315(n+1)`
-/

namespace A167352.P15012275831059857011
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003959 (n + 1) : ℚ) / (A165826 (n + 1) : ℚ) * (A167315 (n + 1) : ℚ)

end

end A167352.P15012275831059857011

namespace A167352

/-- `A003959(n+1)/A165826(n+1)*A167315(n+1)` -/
def P15012275831059857011.Spec : Prop :=
  ∀ n, P15012275831059857011.a n = (A167352 (n + 1) : ℚ)

end A167352

/-! ## A167352.P8714768092608052048

`A003959(n+1)/A165827(n+1)*A167316(n+1)`
-/

namespace A167352.P8714768092608052048
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003959 (n + 1) : ℚ) / (A165827 (n + 1) : ℚ) * (A167316 (n + 1) : ℚ)

end

end A167352.P8714768092608052048

namespace A167352

/-- `A003959(n+1)/A165827(n+1)*A167316(n+1)` -/
def P8714768092608052048.Spec : Prop :=
  ∀ n, P8714768092608052048.a n = (A167352 (n + 1) : ℚ)

end A167352

/-! ## A167352.P12226004790535472034

`A003959(n+1)/A165828(n+1)*A167317(n+1)`
-/

namespace A167352.P12226004790535472034
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003959 (n + 1) : ℚ) / (A165828 (n + 1) : ℚ) * (A167317 (n + 1) : ℚ)

end

end A167352.P12226004790535472034

namespace A167352

/-- `A003959(n+1)/A165828(n+1)*A167317(n+1)` -/
def P12226004790535472034.Spec : Prop :=
  ∀ n, P12226004790535472034.a n = (A167352 (n + 1) : ℚ)

end A167352

/-! ## A167352.P2556977695562523942

`A003959(n+1)/A165829(n+1)*A167318(n+1)`
-/

namespace A167352.P2556977695562523942
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003959 (n + 1) : ℚ) / (A165829 (n + 1) : ℚ) * (A167318 (n + 1) : ℚ)

end

end A167352.P2556977695562523942

namespace A167352

/-- `A003959(n+1)/A165829(n+1)*A167318(n+1)` -/
def P2556977695562523942.Spec : Prop :=
  ∀ n, P2556977695562523942.a n = (A167352 (n + 1) : ℚ)

end A167352

/-! ## A167352.P3156201187356965768

`A003959(n+1)/A165830(n+1)*A167319(n+1)`
-/

namespace A167352.P3156201187356965768
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003959 (n + 1) : ℚ) / (A165830 (n + 1) : ℚ) * (A167319 (n + 1) : ℚ)

end

end A167352.P3156201187356965768

namespace A167352

/-- `A003959(n+1)/A165830(n+1)*A167319(n+1)` -/
def P3156201187356965768.Spec : Prop :=
  ∀ n, P3156201187356965768.a n = (A167352 (n + 1) : ℚ)

end A167352

/-! ## A167352.P14012071397381192270

`A003959(n+1)/A165831(n+1)*A167320(n+1)`
-/

namespace A167352.P14012071397381192270
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003959 (n + 1) : ℚ) / (A165831 (n + 1) : ℚ) * (A167320 (n + 1) : ℚ)

end

end A167352.P14012071397381192270

namespace A167352

/-- `A003959(n+1)/A165831(n+1)*A167320(n+1)` -/
def P14012071397381192270.Spec : Prop :=
  ∀ n, P14012071397381192270.a n = (A167352 (n + 1) : ℚ)

end A167352

/-! ## A167352.P8473349440074082131

`A003959(n+1)/A166590(n+1)*A167359(n+1)`
-/

namespace A167352.P8473349440074082131
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003959 (n + 1) : ℚ) / (A166590 (n + 1) : ℚ) * (A167359 (n + 1) : ℚ)

end

end A167352.P8473349440074082131

namespace A167352

/-- `A003959(n+1)/A166590(n+1)*A167359(n+1)` -/
def P8473349440074082131.Spec : Prop :=
  ∀ n, P8473349440074082131.a n = (A167352 (n + 1) : ℚ)

end A167352

/-! ## A167352.P13734713112203968760

`A166643(n+1)/A165827(n+1)*A167312(n+1)`
-/

namespace A167352.P13734713112203968760
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166643 (n + 1) : ℚ) / (A165827 (n + 1) : ℚ) * (A167312 (n + 1) : ℚ)

end

end A167352.P13734713112203968760

namespace A167352

/-- `A166643(n+1)/A165827(n+1)*A167312(n+1)` -/
def P13734713112203968760.Spec : Prop :=
  ∀ n, P13734713112203968760.a n = (A167352 (n + 1) : ℚ)

end A167352

/-! ## A167352.P11295702206742367218

`A166643(n+1)/A165830(n+1)*A167313(n+1)`
-/

namespace A167352.P11295702206742367218
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166643 (n + 1) : ℚ) / (A165830 (n + 1) : ℚ) * (A167313 (n + 1) : ℚ)

end

end A167352.P11295702206742367218

namespace A167352

/-- `A166643(n+1)/A165830(n+1)*A167313(n+1)` -/
def P11295702206742367218.Spec : Prop :=
  ∀ n, P11295702206742367218.a n = (A167352 (n + 1) : ℚ)

end A167352

/-! ## A167352.P3742720357983325388

`A166647(n+1)/A165835(n+1)*A167312(n+1)`
-/

namespace A167352.P3742720357983325388
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166647 (n + 1) : ℚ) / (A165835 (n + 1) : ℚ) * (A167312 (n + 1) : ℚ)

end

end A167352.P3742720357983325388

namespace A167352

/-- `A166647(n+1)/A165835(n+1)*A167312(n+1)` -/
def P3742720357983325388.Spec : Prop :=
  ∀ n, P3742720357983325388.a n = (A167352 (n + 1) : ℚ)

end A167352

/-! ## A167352.P13498321857282534908

`A166647(n+1)/A165842(n+1)*A167313(n+1)`
-/

namespace A167352.P13498321857282534908
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166647 (n + 1) : ℚ) / (A165842 (n + 1) : ℚ) * (A167313 (n + 1) : ℚ)

end

end A167352.P13498321857282534908

namespace A167352

/-- `A166647(n+1)/A165842(n+1)*A167313(n+1)` -/
def P13498321857282534908.Spec : Prop :=
  ∀ n, P13498321857282534908.a n = (A167352 (n + 1) : ℚ)

end A167352

/-! ## A167352.P11044305475965744529

`A003959(n+1)²/A166643(n+1)*A167313(n+1)`
-/

namespace A167352.P11044305475965744529
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003959 (n + 1) ^ 2 : ℚ) / (A166643 (n + 1) : ℚ) * (A167313 (n + 1) : ℚ)

end

end A167352.P11044305475965744529

namespace A167352

/-- `A003959(n+1)²/A166643(n+1)*A167313(n+1)` -/
def P11044305475965744529.Spec : Prop :=
  ∀ n, P11044305475965744529.a n = (A167352 (n + 1) : ℚ)

end A167352

/-! ## A167352.P12143156651090888654

`A003959(n+1)²/A166647(n+1)*A167317(n+1)`
-/

namespace A167352.P12143156651090888654
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003959 (n + 1) ^ 2 : ℚ) / (A166647 (n + 1) : ℚ) * (A167317 (n + 1) : ℚ)

end

end A167352.P12143156651090888654

namespace A167352

/-- `A003959(n+1)²/A166647(n+1)*A167317(n+1)` -/
def P12143156651090888654.Spec : Prop :=
  ∀ n, P12143156651090888654.a n = (A167352 (n + 1) : ℚ)

end A167352

/-! ## A167352.P8730707890779362590

`A003959(n+1)²/A166650(n+1)*A167320(n+1)`
-/

namespace A167352.P8730707890779362590
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003959 (n + 1) ^ 2 : ℚ) / (A166650 (n + 1) : ℚ) * (A167320 (n + 1) : ℚ)

end

end A167352.P8730707890779362590

namespace A167352

/-- `A003959(n+1)²/A166650(n+1)*A167320(n+1)` -/
def P8730707890779362590.Spec : Prop :=
  ∀ n, P8730707890779362590.a n = (A167352 (n + 1) : ℚ)

end A167352

/-! ## A167352.P15451273299683216152

`A003959(n+1)/sqrt(A165825(n+1))*A167312(n+1)`
-/

namespace A167352.P15451273299683216152
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A003959 (n + 1) : ℝ) / Real.sqrt (A165825 (n + 1) : ℝ) * (A167312 (n + 1) : ℝ)

end

end A167352.P15451273299683216152

namespace A167352

/-- `A003959(n+1)/sqrt(A165825(n+1))*A167312(n+1)` -/
def P15451273299683216152.Spec : Prop :=
  ∀ n, P15451273299683216152.a n = (A167352 (n + 1) : ℝ)

end A167352

/-!
# A167353: Totally multiplicative sequence with a(p) = (p+1)*(p+3) = p^2+4p+3 for prime p.

The programs for A167353, there is no canonical definition to state claims against.
-/

/-! ## A167353.P4667646287537390970

`A003959(n+1)*A166591(n+1)`
-/

namespace A167353.P4667646287537390970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003959 (n + 1) * A166591 (n + 1)

end

end A167353.P4667646287537390970

/-! ## A167353.P3608015451114123741

`sqrt(A167363(n+1))*A003959(n+1)`
-/

namespace A167353.P3608015451114123741
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A167363 (n + 1) : ℝ) * (A003959 (n + 1) : ℝ)

end

end A167353.P3608015451114123741

/-! ## A167353.P7605363135910053884

`A003959(n+1)/A003958(n+1)*A109624(n+1)`
-/

namespace A167353.P7605363135910053884
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003959 (n + 1) : ℚ) / (A003958 (n + 1) : ℚ) * (A109624 (n + 1) : ℚ)

end

end A167353.P7605363135910053884

/-! ## A167353.P9900871833149899996

`A003959(n+1)/A061142(n+1)*A167321(n+1)`
-/

namespace A167353.P9900871833149899996
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003959 (n + 1) : ℚ) / (A061142 (n + 1) : ℚ) * (A167321 (n + 1) : ℚ)

end

end A167353.P9900871833149899996

/-! ## A167353.P15570100048740354893

`A003959(n+1)/A165824(n+1)*A167322(n+1)`
-/

namespace A167353.P15570100048740354893
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003959 (n + 1) : ℚ) / (A165824 (n + 1) : ℚ) * (A167322 (n + 1) : ℚ)

end

end A167353.P15570100048740354893

/-! ## A167353.P3942841499196982903

`A003959(n+1)/A165825(n+1)*A167323(n+1)`
-/

namespace A167353.P3942841499196982903
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003959 (n + 1) : ℚ) / (A165825 (n + 1) : ℚ) * (A167323 (n + 1) : ℚ)

end

end A167353.P3942841499196982903

/-! ## A167353.P10806745240585800951

`A003959(n+1)/A165828(n+1)*A167326(n+1)`
-/

namespace A167353.P10806745240585800951
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003959 (n + 1) : ℚ) / (A165828 (n + 1) : ℚ) * (A167326 (n + 1) : ℚ)

end

end A167353.P10806745240585800951

/-! ## A167353.P13005462726882807125

`A003959(n+1)/A165831(n+1)*A167329(n+1)`
-/

namespace A167353.P13005462726882807125
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003959 (n + 1) : ℚ) / (A165831 (n + 1) : ℚ) * (A167329 (n + 1) : ℚ)

end

end A167353.P13005462726882807125

/-! ## A167353.P962554873323854410

`A003959(n+1)/A166590(n+1)*A167360(n+1)`
-/

namespace A167353.P962554873323854410
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003959 (n + 1) : ℚ) / (A166590 (n + 1) : ℚ) * (A167360 (n + 1) : ℚ)

end

end A167353.P962554873323854410

/-! ## A167353.P14080027301960977871

`A166645(n+1)/A165866(n+1)*A167328(n+1)`
-/

namespace A167353.P14080027301960977871
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166645 (n + 1) : ℚ) / (A165866 (n + 1) : ℚ) * (A167328 (n + 1) : ℚ)

end

end A167353.P14080027301960977871

/-! ## A167353.P17183504656114330541

`gcd(A167321(n+1), A167326(n+1))*A003959(n+1)`
-/

namespace A167353.P17183504656114330541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (A167321 (n + 1)) (A167326 (n + 1)) : ℤ) * A003959 (n + 1)

end

end A167353.P17183504656114330541

/-! ## A167353.P16524873828489177077

`gcd(A167323(n+1), A167328(n+1))*A003959(n+1)`
-/

namespace A167353.P16524873828489177077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (A167323 (n + 1)) (A167328 (n + 1)) : ℤ) * A003959 (n + 1)

end

end A167353.P16524873828489177077

/-! ## A167353.P5838934456925858424

`A003959(n+1)²/A166645(n+1)*A167324(n+1)`
-/

namespace A167353.P5838934456925858424
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003959 (n + 1) ^ 2 : ℚ) / (A166645 (n + 1) : ℚ) * (A167324 (n + 1) : ℚ)

end

end A167353.P5838934456925858424

/-! ## A167353.P421325375753018866

`A003959(n+1)²/A166650(n+1)*A167329(n+1)`
-/

namespace A167353.P421325375753018866
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003959 (n + 1) ^ 2 : ℚ) / (A166650 (n + 1) : ℚ) * (A167329 (n + 1) : ℚ)

end

end A167353.P421325375753018866

/-! ## A167353.P18268285501289251588

`A003959(n+1)/A003959(A061142(n+1))*A167322(n+1)`
-/

namespace A167353.P18268285501289251588
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003959 (n + 1) : ℚ) / (A003959 (A061142 (n + 1)).toNat : ℚ) * (A167322 (n + 1) : ℚ)

end

end A167353.P18268285501289251588

/-!
# A167354: Totally multiplicative sequence with a(p) = (p-2)^2 = p^2-4p+4 for prime p.

The programs for A167354, the canonical program `A167354.P13081332751895378008` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A167354 has offset 1).

The definition of A167354 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A166586, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A167354.P13081332751895378008

`A166586(n+1)²`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A167354

/-- `A166586(n+1)²` -/
def P13081332751895378008.Spec : Prop :=
  ∀ n, P13081332751895378008.a n = A167354 (n + 1)

theorem P13081332751895378008.correct : P13081332751895378008.Spec := by
  intro n
  simp only [A167354, Nat.add_sub_cancel]

end A167354

/-! ## A167354.P10992625027326751823

`(A167339(n+1)/(n+1))²`
-/

namespace A167354.P10992625027326751823
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A167339 (n + 1) : ℚ) / (n + 1 : ℚ)) ^ 2

end

end A167354.P10992625027326751823

namespace A167354

/-- `(A167339(n+1)/(n+1))²` -/
def P10992625027326751823.Spec : Prop :=
  ∀ n, P10992625027326751823.a n = (A167354 (n + 1) : ℚ)

end A167354

/-! ## A167354.P5777926445712332704

`∏{d}[n+1, (2-A014963(#))²]`
-/

namespace A167354.P5777926445712332704
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), (2 - A014963 d) ^ 2

end

end A167354.P5777926445712332704

namespace A167354

/-- `∏{d}[n+1, (2-A014963(#))²]` -/
def P5777926445712332704.Spec : Prop :=
  ∀ n, P5777926445712332704.a n = A167354 (n + 1)

end A167354

/-! ## A167354.P886522939355096908

`(A167345(n+1)/A003958(n+1))²`
-/

namespace A167354.P886522939355096908
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A167345 (n + 1) : ℚ) / (A003958 (n + 1) : ℚ)) ^ 2

end

end A167354.P886522939355096908

namespace A167354

/-- `(A167345(n+1)/A003958(n+1))²` -/
def P886522939355096908.Spec : Prop :=
  ∀ n, P886522939355096908.a n = (A167354 (n + 1) : ℚ)

end A167354

/-! ## A167354.P13171843372605516119

`(A167350(n+1)/A003959(n+1))²`
-/

namespace A167354.P13171843372605516119
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A167350 (n + 1) : ℚ) / (A003959 (n + 1) : ℚ)) ^ 2

end

end A167354.P13171843372605516119

namespace A167354

/-- `(A167350(n+1)/A003959(n+1))²` -/
def P13171843372605516119.Spec : Prop :=
  ∀ n, P13171843372605516119.a n = (A167354 (n + 1) : ℚ)

end A167354

/-! ## A167354.P12718513058031351498

`(A167294(n+1)/A061142(n+1))²`
-/

namespace A167354.P12718513058031351498
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A167294 (n + 1) : ℚ) / (A061142 (n + 1) : ℚ)) ^ 2

end

end A167354.P12718513058031351498

namespace A167354

/-- `(A167294(n+1)/A061142(n+1))²` -/
def P12718513058031351498.Spec : Prop :=
  ∀ n, P12718513058031351498.a n = (A167354 (n + 1) : ℚ)

end A167354

/-! ## A167354.P2912654839737302639

`(A167295(n+1)/A079065(n+1))²`
-/

namespace A167354.P2912654839737302639
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A167295 (n + 1) : ℚ) / (A079065 (n + 1) : ℚ)) ^ 2

end

end A167354.P2912654839737302639

namespace A167354

/-- `(A167295(n+1)/A079065(n+1))²` -/
def P2912654839737302639.Spec : Prop :=
  ∀ n, P2912654839737302639.a n = (A167354 (n + 1) : ℚ)

end A167354

/-! ## A167354.P13353475592537976652

`A167294(n+1)²/A165825(n+1)`
-/

namespace A167354.P13353475592537976652
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167294 (n + 1) ^ 2 : ℚ) / (A165825 (n + 1) : ℚ)

end

end A167354.P13353475592537976652

namespace A167354

/-- `A167294(n+1)²/A165825(n+1)` -/
def P13353475592537976652.Spec : Prop :=
  ∀ n, P13353475592537976652.a n = (A167354 (n + 1) : ℚ)

end A167354

/-! ## A167354.P10488149249731848611

`(A167295(n+1)/A165824(n+1))²`
-/

namespace A167354.P10488149249731848611
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A167295 (n + 1) : ℚ) / (A165824 (n + 1) : ℚ)) ^ 2

end

end A167354.P10488149249731848611

namespace A167354

/-- `(A167295(n+1)/A165824(n+1))²` -/
def P10488149249731848611.Spec : Prop :=
  ∀ n, P10488149249731848611.a n = (A167354 (n + 1) : ℚ)

end A167354

/-! ## A167354.P6604481117371705624

`(A167296(n+1)/A165825(n+1))²`
-/

namespace A167354.P6604481117371705624
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A167296 (n + 1) : ℚ) / (A165825 (n + 1) : ℚ)) ^ 2

end

end A167354.P6604481117371705624

namespace A167354

/-- `(A167296(n+1)/A165825(n+1))²` -/
def P6604481117371705624.Spec : Prop :=
  ∀ n, P6604481117371705624.a n = (A167354 (n + 1) : ℚ)

end A167354

/-! ## A167354.P12949973060722811398

`(A167297(n+1)/A165826(n+1))²`
-/

namespace A167354.P12949973060722811398
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A167297 (n + 1) : ℚ) / (A165826 (n + 1) : ℚ)) ^ 2

end

end A167354.P12949973060722811398

namespace A167354

/-- `(A167297(n+1)/A165826(n+1))²` -/
def P12949973060722811398.Spec : Prop :=
  ∀ n, P12949973060722811398.a n = (A167354 (n + 1) : ℚ)

end A167354

/-! ## A167354.P8818432907190777142

`(A167298(n+1)/A165827(n+1))²`
-/

namespace A167354.P8818432907190777142
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A167298 (n + 1) : ℚ) / (A165827 (n + 1) : ℚ)) ^ 2

end

end A167354.P8818432907190777142

namespace A167354

/-- `(A167298(n+1)/A165827(n+1))²` -/
def P8818432907190777142.Spec : Prop :=
  ∀ n, P8818432907190777142.a n = (A167354 (n + 1) : ℚ)

end A167354

/-! ## A167354.P6141873689225239113

`(A167299(n+1)/A165828(n+1))²`
-/

namespace A167354.P6141873689225239113
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A167299 (n + 1) : ℚ) / (A165828 (n + 1) : ℚ)) ^ 2

end

end A167354.P6141873689225239113

namespace A167354

/-- `(A167299(n+1)/A165828(n+1))²` -/
def P6141873689225239113.Spec : Prop :=
  ∀ n, P6141873689225239113.a n = (A167354 (n + 1) : ℚ)

end A167354

/-! ## A167354.P6842176388492995292

`(A167300(n+1)/A165829(n+1))²`
-/

namespace A167354.P6842176388492995292
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A167300 (n + 1) : ℚ) / (A165829 (n + 1) : ℚ)) ^ 2

end

end A167354.P6842176388492995292

namespace A167354

/-- `(A167300(n+1)/A165829(n+1))²` -/
def P6842176388492995292.Spec : Prop :=
  ∀ n, P6842176388492995292.a n = (A167354 (n + 1) : ℚ)

end A167354

/-! ## A167354.P6746440276763857022

`(A167301(n+1)/A165830(n+1))²`
-/

namespace A167354.P6746440276763857022
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A167301 (n + 1) : ℚ) / (A165830 (n + 1) : ℚ)) ^ 2

end

end A167354.P6746440276763857022

namespace A167354

/-- `(A167301(n+1)/A165830(n+1))²` -/
def P6746440276763857022.Spec : Prop :=
  ∀ n, P6746440276763857022.a n = (A167354 (n + 1) : ℚ)

end A167354

/-! ## A167354.P6240380479323200193

`(A167302(n+1)/A165831(n+1))²`
-/

namespace A167354.P6240380479323200193
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A167302 (n + 1) : ℚ) / (A165831 (n + 1) : ℚ)) ^ 2

end

end A167354.P6240380479323200193

namespace A167354

/-- `(A167302(n+1)/A165831(n+1))²` -/
def P6240380479323200193.Spec : Prop :=
  ∀ n, P6240380479323200193.a n = (A167354 (n + 1) : ℚ)

end A167354

/-! ## A167354.P17467059246522574484

`(A167355(n+1)/A166590(n+1))²`
-/

namespace A167354.P17467059246522574484
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A167355 (n + 1) : ℚ) / (A166590 (n + 1) : ℚ)) ^ 2

end

end A167354.P17467059246522574484

namespace A167354

/-- `(A167355(n+1)/A166590(n+1))²` -/
def P17467059246522574484.Spec : Prop :=
  ∀ n, P17467059246522574484.a n = (A167354 (n + 1) : ℚ)

end A167354

/-! ## A167354.P609749921370011438

`(A167357(n+1)/A166591(n+1))²`
-/

namespace A167354.P609749921370011438
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A167357 (n + 1) : ℚ) / (A166591 (n + 1) : ℚ)) ^ 2

end

end A167354.P609749921370011438

namespace A167354

/-- `(A167357(n+1)/A166591(n+1))²` -/
def P609749921370011438.Spec : Prop :=
  ∀ n, P609749921370011438.a n = (A167354 (n + 1) : ℚ)

end A167354

/-! ## A167354.P2294244688438336358

`gcd(A167294(n+1), A167295(n+1))²`
-/

namespace A167354.P2294244688438336358
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A167294 (n + 1)) (A167295 (n + 1)) ^ 2

end

end A167354.P2294244688438336358

namespace A167354

/-- `gcd(A167294(n+1), A167295(n+1))²` -/
def P2294244688438336358.Spec : Prop :=
  ∀ n, (P2294244688438336358.a n : ℤ) = A167354 (n + 1)

end A167354

/-! ## A167354.P8171340585417429209

`gcd(A167296(n+1), A167297(n+1))²`
-/

namespace A167354.P8171340585417429209
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A167296 (n + 1)) (A167297 (n + 1)) ^ 2

end

end A167354.P8171340585417429209

namespace A167354

/-- `gcd(A167296(n+1), A167297(n+1))²` -/
def P8171340585417429209.Spec : Prop :=
  ∀ n, (P8171340585417429209.a n : ℤ) = A167354 (n + 1)

end A167354

/-!
# A167355: Totally multiplicative sequence with a(p) = (p-2)*(p+2) = p^2-4 for prime p.

The programs for A167355, the canonical program `A167355.P16103125878729455081` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A167355 has offset 1).

The definition of A167355 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A166586, A166590, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A167355.P16103125878729455081

`A166586(n+1)*A166590(n+1)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A167355

/-- `A166586(n+1)*A166590(n+1)` -/
def P16103125878729455081.Spec : Prop :=
  ∀ n, P16103125878729455081.a n = A167355 (n + 1)

theorem P16103125878729455081.correct : P16103125878729455081.Spec := by
  intro n
  simp only [A167355, Nat.add_sub_cancel]

end A167355

/-! ## A167355.P17537262342797255645

`sqrt(A167354(n+1))*A166590(n+1)`
-/

namespace A167355.P17537262342797255645
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A167354 (n + 1) : ℝ) * (A166590 (n + 1) : ℝ)

end

end A167355.P17537262342797255645

namespace A167355

/-- `sqrt(A167354(n+1))*A166590(n+1)` -/
def P17537262342797255645.Spec : Prop :=
  ∀ n, P17537262342797255645.a n = (A167355 (n + 1) : ℝ)

end A167355

/-! ## A167355.P10482097091164224005

`sqrt(A167354(n+1)*A167358(n+1))`
-/

namespace A167355.P10482097091164224005
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A167354 (n + 1) * A167358 (n + 1) : ℝ)

end

end A167355.P10482097091164224005

namespace A167355

/-- `sqrt(A167354(n+1)*A167358(n+1))` -/
def P10482097091164224005.Spec : Prop :=
  ∀ n, P10482097091164224005.a n = (A167355 (n + 1) : ℝ)

end A167355

/-! ## A167355.P3584176630856219039

`A166586(n+1)/A003958(n+1)*A167346(n+1)`
-/

namespace A167355.P3584176630856219039
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166586 (n + 1) : ℚ) / (A003958 (n + 1) : ℚ) * (A167346 (n + 1) : ℚ)

end

end A167355.P3584176630856219039

namespace A167355

/-- `A166586(n+1)/A003958(n+1)*A167346(n+1)` -/
def P3584176630856219039.Spec : Prop :=
  ∀ n, P3584176630856219039.a n = (A167355 (n + 1) : ℚ)

end A167355

/-! ## A167355.P13828349335327463203

`A166590(n+1)/A003959(n+1)*A167350(n+1)`
-/

namespace A167355.P13828349335327463203
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166590 (n + 1) : ℚ) / (A003959 (n + 1) : ℚ) * (A167350 (n + 1) : ℚ)

end

end A167355.P13828349335327463203

namespace A167355

/-- `A166590(n+1)/A003959(n+1)*A167350(n+1)` -/
def P13828349335327463203.Spec : Prop :=
  ∀ n, P13828349335327463203.a n = (A167355 (n + 1) : ℚ)

end A167355

/-! ## A167355.P16767529542508006043

`A167339(n+1)/A167340(n+1)*A167358(n+1)`
-/

namespace A167355.P16767529542508006043
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167339 (n + 1) : ℚ) / (A167340 (n + 1) : ℚ) * (A167358 (n + 1) : ℚ)

end

end A167355.P16767529542508006043

namespace A167355

/-- `A167339(n+1)/A167340(n+1)*A167358(n+1)` -/
def P16767529542508006043.Spec : Prop :=
  ∀ n, P16767529542508006043.a n = (A167355 (n + 1) : ℚ)

end A167355

/-! ## A167355.P12378040413827068168

`A167339(n+1)/A167342(n+1)*A167360(n+1)`
-/

namespace A167355.P12378040413827068168
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167339 (n + 1) : ℚ) / (A167342 (n + 1) : ℚ) * (A167360 (n + 1) : ℚ)

end

end A167355.P12378040413827068168

namespace A167355

/-- `A167339(n+1)/A167342(n+1)*A167360(n+1)` -/
def P12378040413827068168.Spec : Prop :=
  ∀ n, P12378040413827068168.a n = (A167355 (n + 1) : ℚ)

end A167355

/-! ## A167355.P2868557207790378108

`A167340(n+1)/A167342(n+1)*A167357(n+1)`
-/

namespace A167355.P2868557207790378108
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167340 (n + 1) : ℚ) / (A167342 (n + 1) : ℚ) * (A167357 (n + 1) : ℚ)

end

end A167355.P2868557207790378108

namespace A167355

/-- `A167340(n+1)/A167342(n+1)*A167357(n+1)` -/
def P2868557207790378108.Spec : Prop :=
  ∀ n, P2868557207790378108.a n = (A167355 (n + 1) : ℚ)

end A167355

/-!
# A167356: Totally multiplicative sequence with a(p) = (p-2)*(p-3) = p^2-5p+6 for prime p.

The programs for A167356, the canonical program `A167356.P16659837918283053024` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A167356 has offset 1).

The definition of A167356 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A166586, A166589, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A167356.P16659837918283053024

`A166586(n+1)*A166589(n+1)`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A167356

/-- `A166586(n+1)*A166589(n+1)` -/
def P16659837918283053024.Spec : Prop :=
  ∀ n, P16659837918283053024.a n = A167356 (n + 1)

theorem P16659837918283053024.correct : P16659837918283053024.Spec := by
  intro n
  simp only [A167356, Nat.add_sub_cancel]

end A167356

/-! ## A167356.P17070774025480201715

`sqrt(A167361(n+1))*A166586(n+1)`
-/

namespace A167356.P17070774025480201715
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A167361 (n + 1) : ℝ) * (A166586 (n + 1) : ℝ)

end

end A167356.P17070774025480201715

namespace A167356

/-- `sqrt(A167361(n+1))*A166586(n+1)` -/
def P17070774025480201715.Spec : Prop :=
  ∀ n, P17070774025480201715.a n = (A167356 (n + 1) : ℝ)

end A167356

/-! ## A167356.P545706905704336867

`sqrt(A167354(n+1)*A167361(n+1))`
-/

namespace A167356.P545706905704336867
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A167354 (n + 1) * A167361 (n + 1) : ℝ)

end

end A167356.P545706905704336867

namespace A167356

/-- `sqrt(A167354(n+1)*A167361(n+1))` -/
def P545706905704336867.Spec : Prop :=
  ∀ n, P545706905704336867.a n = (A167356 (n + 1) : ℝ)

end A167356

/-! ## A167356.P2622931745014292279

`A166586(n+1)/A003958(n+1)*A167347(n+1)`
-/

namespace A167356.P2622931745014292279
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166586 (n + 1) : ℚ) / (A003958 (n + 1) : ℚ) * (A167347 (n + 1) : ℚ)

end

end A167356.P2622931745014292279

namespace A167356

/-- `A166586(n+1)/A003958(n+1)*A167347(n+1)` -/
def P2622931745014292279.Spec : Prop :=
  ∀ n, P2622931745014292279.a n = (A167356 (n + 1) : ℚ)

end A167356

/-! ## A167356.P6612382739015786146

`A166589(n+1)/A061142(n+1)*A167294(n+1)`
-/

namespace A167356.P6612382739015786146
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166589 (n + 1) : ℚ) / (A061142 (n + 1) : ℚ) * (A167294 (n + 1) : ℚ)

end

end A167356.P6612382739015786146

namespace A167356

/-- `A166589(n+1)/A061142(n+1)*A167294(n+1)` -/
def P6612382739015786146.Spec : Prop :=
  ∀ n, P6612382739015786146.a n = (A167356 (n + 1) : ℚ)

end A167356

/-! ## A167356.P597031093205971866

`A166589(n+1)/A165824(n+1)*A167295(n+1)`
-/

namespace A167356.P597031093205971866
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166589 (n + 1) : ℚ) / (A165824 (n + 1) : ℚ) * (A167295 (n + 1) : ℚ)

end

end A167356.P597031093205971866

namespace A167356

/-- `A166589(n+1)/A165824(n+1)*A167295(n+1)` -/
def P597031093205971866.Spec : Prop :=
  ∀ n, P597031093205971866.a n = (A167356 (n + 1) : ℚ)

end A167356

/-! ## A167356.P13953875186514960655

`A166589(n+1)/A165825(n+1)*A167296(n+1)`
-/

namespace A167356.P13953875186514960655
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166589 (n + 1) : ℚ) / (A165825 (n + 1) : ℚ) * (A167296 (n + 1) : ℚ)

end

end A167356.P13953875186514960655

namespace A167356

/-- `A166589(n+1)/A165825(n+1)*A167296(n+1)` -/
def P13953875186514960655.Spec : Prop :=
  ∀ n, P13953875186514960655.a n = (A167356 (n + 1) : ℚ)

end A167356

/-! ## A167356.P9213191030197188964

`A166589(n+1)/A165826(n+1)*A167297(n+1)`
-/

namespace A167356.P9213191030197188964
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166589 (n + 1) : ℚ) / (A165826 (n + 1) : ℚ) * (A167297 (n + 1) : ℚ)

end

end A167356.P9213191030197188964

namespace A167356

/-- `A166589(n+1)/A165826(n+1)*A167297(n+1)` -/
def P9213191030197188964.Spec : Prop :=
  ∀ n, P9213191030197188964.a n = (A167356 (n + 1) : ℚ)

end A167356

/-! ## A167356.P6624991288147895683

`A166586(n+1)/A165824(n+1)*A167313(n+1)`
-/

namespace A167356.P6624991288147895683
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166586 (n + 1) : ℚ) / (A165824 (n + 1) : ℚ) * (A167313 (n + 1) : ℚ)

end

end A167356.P6624991288147895683

namespace A167356

/-- `A166586(n+1)/A165824(n+1)*A167313(n+1)` -/
def P6624991288147895683.Spec : Prop :=
  ∀ n, P6624991288147895683.a n = (A167356 (n + 1) : ℚ)

end A167356

/-! ## A167356.P17157911767977111087

`A166589(n+1)/A165827(n+1)*A167298(n+1)`
-/

namespace A167356.P17157911767977111087
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166589 (n + 1) : ℚ) / (A165827 (n + 1) : ℚ) * (A167298 (n + 1) : ℚ)

end

end A167356.P17157911767977111087

namespace A167356

/-- `A166589(n+1)/A165827(n+1)*A167298(n+1)` -/
def P17157911767977111087.Spec : Prop :=
  ∀ n, P17157911767977111087.a n = (A167356 (n + 1) : ℚ)

end A167356

/-! ## A167356.P7003766325313704667

`A166586(n+1)/A165825(n+1)*A167314(n+1)`
-/

namespace A167356.P7003766325313704667
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166586 (n + 1) : ℚ) / (A165825 (n + 1) : ℚ) * (A167314 (n + 1) : ℚ)

end

end A167356.P7003766325313704667

namespace A167356

/-- `A166586(n+1)/A165825(n+1)*A167314(n+1)` -/
def P7003766325313704667.Spec : Prop :=
  ∀ n, P7003766325313704667.a n = (A167356 (n + 1) : ℚ)

end A167356

/-! ## A167356.P16644740331551776209

`A166589(n+1)/A165828(n+1)*A167299(n+1)`
-/

namespace A167356.P16644740331551776209
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166589 (n + 1) : ℚ) / (A165828 (n + 1) : ℚ) * (A167299 (n + 1) : ℚ)

end

end A167356.P16644740331551776209

namespace A167356

/-- `A166589(n+1)/A165828(n+1)*A167299(n+1)` -/
def P16644740331551776209.Spec : Prop :=
  ∀ n, P16644740331551776209.a n = (A167356 (n + 1) : ℚ)

end A167356

/-! ## A167356.P7329181659951264813

`A166589(n+1)/A165829(n+1)*A167300(n+1)`
-/

namespace A167356.P7329181659951264813
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166589 (n + 1) : ℚ) / (A165829 (n + 1) : ℚ) * (A167300 (n + 1) : ℚ)

end

end A167356.P7329181659951264813

namespace A167356

/-- `A166589(n+1)/A165829(n+1)*A167300(n+1)` -/
def P7329181659951264813.Spec : Prop :=
  ∀ n, P7329181659951264813.a n = (A167356 (n + 1) : ℚ)

end A167356

/-! ## A167356.P1704247910841275969

`A166586(n+1)/A165826(n+1)*A167315(n+1)`
-/

namespace A167356.P1704247910841275969
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166586 (n + 1) : ℚ) / (A165826 (n + 1) : ℚ) * (A167315 (n + 1) : ℚ)

end

end A167356.P1704247910841275969

namespace A167356

/-- `A166586(n+1)/A165826(n+1)*A167315(n+1)` -/
def P1704247910841275969.Spec : Prop :=
  ∀ n, P1704247910841275969.a n = (A167356 (n + 1) : ℚ)

end A167356

/-! ## A167356.P12234336238075990535

`A166586(n+1)/A165827(n+1)*A167316(n+1)`
-/

namespace A167356.P12234336238075990535
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166586 (n + 1) : ℚ) / (A165827 (n + 1) : ℚ) * (A167316 (n + 1) : ℚ)

end

end A167356.P12234336238075990535

namespace A167356

/-- `A166586(n+1)/A165827(n+1)*A167316(n+1)` -/
def P12234336238075990535.Spec : Prop :=
  ∀ n, P12234336238075990535.a n = (A167356 (n + 1) : ℚ)

end A167356

/-! ## A167356.P1395227124908773657

`A166589(n+1)/A165830(n+1)*A167301(n+1)`
-/

namespace A167356.P1395227124908773657
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166589 (n + 1) : ℚ) / (A165830 (n + 1) : ℚ) * (A167301 (n + 1) : ℚ)

end

end A167356.P1395227124908773657

namespace A167356

/-- `A166589(n+1)/A165830(n+1)*A167301(n+1)` -/
def P1395227124908773657.Spec : Prop :=
  ∀ n, P1395227124908773657.a n = (A167356 (n + 1) : ℚ)

end A167356

/-! ## A167356.P6230644434008896115

`A166586(n+1)/A165828(n+1)*A167317(n+1)`
-/

namespace A167356.P6230644434008896115
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166586 (n + 1) : ℚ) / (A165828 (n + 1) : ℚ) * (A167317 (n + 1) : ℚ)

end

end A167356.P6230644434008896115

namespace A167356

/-- `A166586(n+1)/A165828(n+1)*A167317(n+1)` -/
def P6230644434008896115.Spec : Prop :=
  ∀ n, P6230644434008896115.a n = (A167356 (n + 1) : ℚ)

end A167356

/-! ## A167356.P909444579792172925

`A166589(n+1)/A165831(n+1)*A167302(n+1)`
-/

namespace A167356.P909444579792172925
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166589 (n + 1) : ℚ) / (A165831 (n + 1) : ℚ) * (A167302 (n + 1) : ℚ)

end

end A167356.P909444579792172925

namespace A167356

/-- `A166589(n+1)/A165831(n+1)*A167302(n+1)` -/
def P909444579792172925.Spec : Prop :=
  ∀ n, P909444579792172925.a n = (A167356 (n + 1) : ℚ)

end A167356

/-! ## A167356.P10928921394240686566

`A166589(n+1)/A166590(n+1)*A167355(n+1)`
-/

namespace A167356.P10928921394240686566
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166589 (n + 1) : ℚ) / (A166590 (n + 1) : ℚ) * (A167355 (n + 1) : ℚ)

end

end A167356.P10928921394240686566

namespace A167356

/-- `A166589(n+1)/A166590(n+1)*A167355(n+1)` -/
def P10928921394240686566.Spec : Prop :=
  ∀ n, P10928921394240686566.a n = (A167356 (n + 1) : ℚ)

end A167356

/-! ## A167356.P379718490180473290

`A166589(n+1)/A166591(n+1)*A167357(n+1)`
-/

namespace A167356.P379718490180473290
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166589 (n + 1) : ℚ) / (A166591 (n + 1) : ℚ) * (A167357 (n + 1) : ℚ)

end

end A167356.P379718490180473290

namespace A167356

/-- `A166589(n+1)/A166591(n+1)*A167357(n+1)` -/
def P379718490180473290.Spec : Prop :=
  ∀ n, P379718490180473290.a n = (A167356 (n + 1) : ℚ)

end A167356

/-!
# A167357: Totally multiplicative sequence with a(p) = (p-2)*(p+3) = p^2+p-6 for prime p.

The programs for A167357, there is no canonical definition to state claims against.
-/

/-! ## A167357.P14234690982125222039

`A166586(n+1)*A166591(n+1)`
-/

namespace A167357.P14234690982125222039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166586 (n + 1) * A166591 (n + 1)

end

end A167357.P14234690982125222039

/-! ## A167357.P11349341763162864909

`sqrt(A167363(n+1))*A166586(n+1)`
-/

namespace A167357.P11349341763162864909
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A167363 (n + 1) : ℝ) * (A166586 (n + 1) : ℝ)

end

end A167357.P11349341763162864909

/-! ## A167357.P8405727689971896949

`sqrt(A167354(n+1)*A167363(n+1))`
-/

namespace A167357.P8405727689971896949
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A167354 (n + 1) * A167363 (n + 1) : ℝ)

end

end A167357.P8405727689971896949

/-! ## A167357.P14067512238940723207

`A166586(n+1)/A003959(n+1)*A167353(n+1)`
-/

namespace A167357.P14067512238940723207
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166586 (n + 1) : ℚ) / (A003959 (n + 1) : ℚ) * (A167353 (n + 1) : ℚ)

end

end A167357.P14067512238940723207

/-! ## A167357.P3552016417920890955

`A166586(n+1)/A165828(n+1)*A167326(n+1)`
-/

namespace A167357.P3552016417920890955
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166586 (n + 1) : ℚ) / (A165828 (n + 1) : ℚ) * (A167326 (n + 1) : ℚ)

end

end A167357.P3552016417920890955

/-! ## A167357.P4937293104479339491

`A166591(n+1)/A166590(n+1)*A167355(n+1)`
-/

namespace A167357.P4937293104479339491
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166591 (n + 1) : ℚ) / (A166590 (n + 1) : ℚ) * (A167355 (n + 1) : ℚ)

end

end A167357.P4937293104479339491

/-! ## A167357.P18438149827606719876

`A167342(n+1)/A167340(n+1)*A167355(n+1)`
-/

namespace A167357.P18438149827606719876
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167342 (n + 1) : ℚ) / (A167340 (n + 1) : ℚ) * (A167355 (n + 1) : ℚ)

end

end A167357.P18438149827606719876

/-! ## A167357.P17589884380767850473

`A167350(n+1)/A167353(n+1)*A167363(n+1)`
-/

namespace A167357.P17589884380767850473
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167350 (n + 1) : ℚ) / (A167353 (n + 1) : ℚ) * (A167363 (n + 1) : ℚ)

end

end A167357.P17589884380767850473

/-!
# A167358: Totally multiplicative sequence with a(p) = (p+2)^2 = p^2+4p+4 for prime p.

The programs for A167358, the canonical program `A167358.P1480310879331971813` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A167358 has offset 1).

The definition of A167358 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A166590, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A167358.P1480310879331971813

`A166590(n+1)²`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A167358

/-- `A166590(n+1)²` -/
def P1480310879331971813.Spec : Prop :=
  ∀ n, P1480310879331971813.a n = A167358 (n + 1)

theorem P1480310879331971813.correct : P1480310879331971813.Spec := by
  intro n
  simp only [A167358, Nat.add_sub_cancel]

end A167358

/-! ## A167358.P11539848345253800985

`(A167340(n+1)/(n+1))²`
-/

namespace A167358.P11539848345253800985
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A167340 (n + 1) : ℚ) / (n + 1 : ℚ)) ^ 2

end

end A167358.P11539848345253800985

namespace A167358

/-- `(A167340(n+1)/(n+1))²` -/
def P11539848345253800985.Spec : Prop :=
  ∀ n, P11539848345253800985.a n = (A167358 (n + 1) : ℚ)

end A167358

/-! ## A167358.P13880724790746645834

`A166590(A000027(n+1))^2`
-/

namespace A167358.P13880724790746645834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166590 (A000027 (n + 1)).toNat ^ 2

end

end A167358.P13880724790746645834

namespace A167358

/-- `A166590(A000027(n+1))^2` -/
def P13880724790746645834.Spec : Prop :=
  ∀ n, P13880724790746645834.a n = A167358 (n + 1)

end A167358

/-! ## A167358.P8442039707998827729

`(A167346(n+1)/A003958(n+1))²`
-/

namespace A167358.P8442039707998827729
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A167346 (n + 1) : ℚ) / (A003958 (n + 1) : ℚ)) ^ 2

end

end A167358.P8442039707998827729

namespace A167358

/-- `(A167346(n+1)/A003958(n+1))²` -/
def P8442039707998827729.Spec : Prop :=
  ∀ n, P8442039707998827729.a n = (A167358 (n + 1) : ℚ)

end A167358

/-! ## A167358.P10246004879195873844

`(A167351(n+1)/A003959(n+1))²`
-/

namespace A167358.P10246004879195873844
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A167351 (n + 1) : ℚ) / (A003959 (n + 1) : ℚ)) ^ 2

end

end A167358.P10246004879195873844

namespace A167358

/-- `(A167351(n+1)/A003959(n+1))²` -/
def P10246004879195873844.Spec : Prop :=
  ∀ n, P10246004879195873844.a n = (A167358 (n + 1) : ℚ)

end A167358

/-! ## A167358.P3523642611422237222

`(A167303(n+1)/A061142(n+1))²`
-/

namespace A167358.P3523642611422237222
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A167303 (n + 1) : ℚ) / (A061142 (n + 1) : ℚ)) ^ 2

end

end A167358.P3523642611422237222

namespace A167358

/-- `(A167303(n+1)/A061142(n+1))²` -/
def P3523642611422237222.Spec : Prop :=
  ∀ n, P3523642611422237222.a n = (A167358 (n + 1) : ℚ)

end A167358

/-! ## A167358.P1225066071563855331

`A167303(n+1)²/A165825(n+1)`
-/

namespace A167358.P1225066071563855331
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167303 (n + 1) ^ 2 : ℚ) / (A165825 (n + 1) : ℚ)

end

end A167358.P1225066071563855331

namespace A167358

/-- `A167303(n+1)²/A165825(n+1)` -/
def P1225066071563855331.Spec : Prop :=
  ∀ n, P1225066071563855331.a n = (A167358 (n + 1) : ℚ)

end A167358

/-! ## A167358.P7732369531494191021

`(A167304(n+1)/A165824(n+1))²`
-/

namespace A167358.P7732369531494191021
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A167304 (n + 1) : ℚ) / (A165824 (n + 1) : ℚ)) ^ 2

end

end A167358.P7732369531494191021

namespace A167358

/-- `(A167304(n+1)/A165824(n+1))²` -/
def P7732369531494191021.Spec : Prop :=
  ∀ n, P7732369531494191021.a n = (A167358 (n + 1) : ℚ)

end A167358

/-! ## A167358.P16400816334312839248

`(A167305(n+1)/A165825(n+1))²`
-/

namespace A167358.P16400816334312839248
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A167305 (n + 1) : ℚ) / (A165825 (n + 1) : ℚ)) ^ 2

end

end A167358.P16400816334312839248

namespace A167358

/-- `(A167305(n+1)/A165825(n+1))²` -/
def P16400816334312839248.Spec : Prop :=
  ∀ n, P16400816334312839248.a n = (A167358 (n + 1) : ℚ)

end A167358

/-! ## A167358.P925709386676297947

`(A167306(n+1)/A165826(n+1))²`
-/

namespace A167358.P925709386676297947
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A167306 (n + 1) : ℚ) / (A165826 (n + 1) : ℚ)) ^ 2

end

end A167358.P925709386676297947

namespace A167358

/-- `(A167306(n+1)/A165826(n+1))²` -/
def P925709386676297947.Spec : Prop :=
  ∀ n, P925709386676297947.a n = (A167358 (n + 1) : ℚ)

end A167358

/-! ## A167358.P3024188665527231405

`(A167307(n+1)/A165827(n+1))²`
-/

namespace A167358.P3024188665527231405
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A167307 (n + 1) : ℚ) / (A165827 (n + 1) : ℚ)) ^ 2

end

end A167358.P3024188665527231405

namespace A167358

/-- `(A167307(n+1)/A165827(n+1))²` -/
def P3024188665527231405.Spec : Prop :=
  ∀ n, P3024188665527231405.a n = (A167358 (n + 1) : ℚ)

end A167358

/-! ## A167358.P6576943550754514006

`(A167308(n+1)/A165828(n+1))²`
-/

namespace A167358.P6576943550754514006
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A167308 (n + 1) : ℚ) / (A165828 (n + 1) : ℚ)) ^ 2

end

end A167358.P6576943550754514006

namespace A167358

/-- `(A167308(n+1)/A165828(n+1))²` -/
def P6576943550754514006.Spec : Prop :=
  ∀ n, P6576943550754514006.a n = (A167358 (n + 1) : ℚ)

end A167358

/-! ## A167358.P15888708990804551988

`(A167309(n+1)/A165829(n+1))²`
-/

namespace A167358.P15888708990804551988
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A167309 (n + 1) : ℚ) / (A165829 (n + 1) : ℚ)) ^ 2

end

end A167358.P15888708990804551988

namespace A167358

/-- `(A167309(n+1)/A165829(n+1))²` -/
def P15888708990804551988.Spec : Prop :=
  ∀ n, P15888708990804551988.a n = (A167358 (n + 1) : ℚ)

end A167358

/-! ## A167358.P11703687940203820966

`(A167310(n+1)/A165830(n+1))²`
-/

namespace A167358.P11703687940203820966
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A167310 (n + 1) : ℚ) / (A165830 (n + 1) : ℚ)) ^ 2

end

end A167358.P11703687940203820966

namespace A167358

/-- `(A167310(n+1)/A165830(n+1))²` -/
def P11703687940203820966.Spec : Prop :=
  ∀ n, P11703687940203820966.a n = (A167358 (n + 1) : ℚ)

end A167358

/-! ## A167358.P9068316180967807507

`(A167311(n+1)/A165831(n+1))²`
-/

namespace A167358.P9068316180967807507
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A167311 (n + 1) : ℚ) / (A165831 (n + 1) : ℚ)) ^ 2

end

end A167358.P9068316180967807507

namespace A167358

/-- `(A167311(n+1)/A165831(n+1))²` -/
def P9068316180967807507.Spec : Prop :=
  ∀ n, P9068316180967807507.a n = (A167358 (n + 1) : ℚ)

end A167358

/-! ## A167358.P14048839626535454955

`(A167360(n+1)/A166591(n+1))²`
-/

namespace A167358.P14048839626535454955
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A167360 (n + 1) : ℚ) / (A166591 (n + 1) : ℚ)) ^ 2

end

end A167358.P14048839626535454955

namespace A167358

/-- `(A167360(n+1)/A166591(n+1))²` -/
def P14048839626535454955.Spec : Prop :=
  ∀ n, P14048839626535454955.a n = (A167358 (n + 1) : ℚ)

end A167358

/-! ## A167358.P15965400091703606104

`A167346(n+1)²/A167343(n+1)`
-/

namespace A167358.P15965400091703606104
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167346 (n + 1) ^ 2 : ℚ) / (A167343 (n + 1) : ℚ)

end

end A167358.P15965400091703606104

namespace A167358

/-- `A167346(n+1)²/A167343(n+1)` -/
def P15965400091703606104.Spec : Prop :=
  ∀ n, P15965400091703606104.a n = (A167358 (n + 1) : ℚ)

end A167358

/-! ## A167358.P8537006615619703691

`A167351(n+1)²/A167349(n+1)`
-/

namespace A167358.P8537006615619703691
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167351 (n + 1) ^ 2 : ℚ) / (A167349 (n + 1) : ℚ)

end

end A167358.P8537006615619703691

namespace A167358

/-- `A167351(n+1)²/A167349(n+1)` -/
def P8537006615619703691.Spec : Prop :=
  ∀ n, P8537006615619703691.a n = (A167358 (n + 1) : ℚ)

end A167358

/-! ## A167358.P7413537569727315362

`A167360(n+1)²/A167363(n+1)`
-/

namespace A167358.P7413537569727315362
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167360 (n + 1) ^ 2 : ℚ) / (A167363 (n + 1) : ℚ)

end

end A167358.P7413537569727315362

namespace A167358

/-- `A167360(n+1)²/A167363(n+1)` -/
def P7413537569727315362.Spec : Prop :=
  ∀ n, P7413537569727315362.a n = (A167358 (n + 1) : ℚ)

end A167358

/-! ## A167358.P627664554915299921

`gcd(A167303(n+1), A167304(n+1))²`
-/

namespace A167358.P627664554915299921
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A167303 (n + 1)) (A167304 (n + 1)) ^ 2

end

end A167358.P627664554915299921

namespace A167358

/-- `gcd(A167303(n+1), A167304(n+1))²` -/
def P627664554915299921.Spec : Prop :=
  ∀ n, (P627664554915299921.a n : ℤ) = A167358 (n + 1)

end A167358

/-!
# A167359: Totally multiplicative sequence with a(p) = (p+2)*(p-3) = p^2-p-6 for prime p.

The programs for A167359, the canonical program `A167359.P16411272990790649797` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A167359 has offset 1).

The definition of A167359 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A166589, A166590, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A167359.P16411272990790649797

`A166590(n+1)*A166589(n+1)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A167359

/-- `A166590(n+1)*A166589(n+1)` -/
def P16411272990790649797.Spec : Prop :=
  ∀ n, P16411272990790649797.a n = A167359 (n + 1)

theorem P16411272990790649797.correct : P16411272990790649797.Spec := by
  intro n
  simp only [A167359, Nat.add_sub_cancel]

end A167359

/-! ## A167359.P14604111861200564231

`A166589(n+1)/A003958(n+1)*A167346(n+1)`
-/

namespace A167359.P14604111861200564231
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166589 (n + 1) : ℚ) / (A003958 (n + 1) : ℚ) * (A167346 (n + 1) : ℚ)

end

end A167359.P14604111861200564231

namespace A167359

/-- `A166589(n+1)/A003958(n+1)*A167346(n+1)` -/
def P14604111861200564231.Spec : Prop :=
  ∀ n, P14604111861200564231.a n = (A167359 (n + 1) : ℚ)

end A167359

/-! ## A167359.P6163549385066605758

`A166590(n+1)/A003958(n+1)*A167347(n+1)`
-/

namespace A167359.P6163549385066605758
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166590 (n + 1) : ℚ) / (A003958 (n + 1) : ℚ) * (A167347 (n + 1) : ℚ)

end

end A167359.P6163549385066605758

namespace A167359

/-- `A166590(n+1)/A003958(n+1)*A167347(n+1)` -/
def P6163549385066605758.Spec : Prop :=
  ∀ n, P6163549385066605758.a n = (A167359 (n + 1) : ℚ)

end A167359

/-! ## A167359.P8151525279975333571

`A166590(n+1)/A003959(n+1)*A167352(n+1)`
-/

namespace A167359.P8151525279975333571
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166590 (n + 1) : ℚ) / (A003959 (n + 1) : ℚ) * (A167352 (n + 1) : ℚ)

end

end A167359.P8151525279975333571

namespace A167359

/-- `A166590(n+1)/A003959(n+1)*A167352(n+1)` -/
def P8151525279975333571.Spec : Prop :=
  ∀ n, P8151525279975333571.a n = (A167359 (n + 1) : ℚ)

end A167359

/-! ## A167359.P12623622920348867637

`A166590(n+1)/A061142(n+1)*A167312(n+1)`
-/

namespace A167359.P12623622920348867637
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166590 (n + 1) : ℚ) / (A061142 (n + 1) : ℚ) * (A167312 (n + 1) : ℚ)

end

end A167359.P12623622920348867637

namespace A167359

/-- `A166590(n+1)/A061142(n+1)*A167312(n+1)` -/
def P12623622920348867637.Spec : Prop :=
  ∀ n, P12623622920348867637.a n = (A167359 (n + 1) : ℚ)

end A167359

/-! ## A167359.P7750636722882570771

`A166590(n+1)/A165824(n+1)*A167313(n+1)`
-/

namespace A167359.P7750636722882570771
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166590 (n + 1) : ℚ) / (A165824 (n + 1) : ℚ) * (A167313 (n + 1) : ℚ)

end

end A167359.P7750636722882570771

namespace A167359

/-- `A166590(n+1)/A165824(n+1)*A167313(n+1)` -/
def P7750636722882570771.Spec : Prop :=
  ∀ n, P7750636722882570771.a n = (A167359 (n + 1) : ℚ)

end A167359

/-! ## A167359.P11041571277241372081

`A166590(n+1)/A165825(n+1)*A167314(n+1)`
-/

namespace A167359.P11041571277241372081
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166590 (n + 1) : ℚ) / (A165825 (n + 1) : ℚ) * (A167314 (n + 1) : ℚ)

end

end A167359.P11041571277241372081

namespace A167359

/-- `A166590(n+1)/A165825(n+1)*A167314(n+1)` -/
def P11041571277241372081.Spec : Prop :=
  ∀ n, P11041571277241372081.a n = (A167359 (n + 1) : ℚ)

end A167359

/-! ## A167359.P9711195205484016727

`A166590(n+1)/A165826(n+1)*A167315(n+1)`
-/

namespace A167359.P9711195205484016727
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166590 (n + 1) : ℚ) / (A165826 (n + 1) : ℚ) * (A167315 (n + 1) : ℚ)

end

end A167359.P9711195205484016727

namespace A167359

/-- `A166590(n+1)/A165826(n+1)*A167315(n+1)` -/
def P9711195205484016727.Spec : Prop :=
  ∀ n, P9711195205484016727.a n = (A167359 (n + 1) : ℚ)

end A167359

/-! ## A167359.P9715318707410422754

`A166590(n+1)/A165828(n+1)*A167317(n+1)`
-/

namespace A167359.P9715318707410422754
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166590 (n + 1) : ℚ) / (A165828 (n + 1) : ℚ) * (A167317 (n + 1) : ℚ)

end

end A167359.P9715318707410422754

namespace A167359

/-- `A166590(n+1)/A165828(n+1)*A167317(n+1)` -/
def P9715318707410422754.Spec : Prop :=
  ∀ n, P9715318707410422754.a n = (A167359 (n + 1) : ℚ)

end A167359

/-! ## A167359.P8644382333510949749

`A166590(n+1)²/A167346(n+1)*A167347(n+1)`
-/

namespace A167359.P8644382333510949749
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166590 (n + 1) ^ 2 : ℚ) / (A167346 (n + 1) : ℚ) * (A167347 (n + 1) : ℚ)

end

end A167359.P8644382333510949749

namespace A167359

/-- `A166590(n+1)²/A167346(n+1)*A167347(n+1)` -/
def P8644382333510949749.Spec : Prop :=
  ∀ n, P8644382333510949749.a n = (A167359 (n + 1) : ℚ)

end A167359

/-!
# A167360: Totally multiplicative sequence with a(p) = (p+2)*(p+3) = p^2+5p+6 for prime p.

The programs for A167360, there is no canonical definition to state claims against.
-/

/-! ## A167360.P9564156566843823253

`A166590(n+1)*A166591(n+1)`
-/

namespace A167360.P9564156566843823253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166590 (n + 1) * A166591 (n + 1)

end

end A167360.P9564156566843823253

/-! ## A167360.P14568501901311547672

`sqrt(A167363(n+1))*A166590(n+1)`
-/

namespace A167360.P14568501901311547672
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A167363 (n + 1) : ℝ) * (A166590 (n + 1) : ℝ)

end

end A167360.P14568501901311547672

/-! ## A167360.P10639849628324187485

`sqrt(A167358(n+1)*A167363(n+1))`
-/

namespace A167360.P10639849628324187485
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A167358 (n + 1) * A167363 (n + 1) : ℝ)

end

end A167360.P10639849628324187485

/-! ## A167360.P688575728764662869

`A166590(n+1)/(n+1)*A167342(n+1)`
-/

namespace A167360.P688575728764662869
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166590 (n + 1) : ℚ) / (n + 1 : ℚ) * (A167342 (n + 1) : ℚ)

end

end A167360.P688575728764662869

/-! ## A167360.P6243589094883349065

`A109624(n+1)/A003958(n+1)*A166590(n+1)`
-/

namespace A167360.P6243589094883349065
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109624 (n + 1) : ℚ) / (A003958 (n + 1) : ℚ) * (A166590 (n + 1) : ℚ)

end

end A167360.P6243589094883349065

/-! ## A167360.P7705011918894527134

`A166590(n+1)/A003959(n+1)*A167353(n+1)`
-/

namespace A167360.P7705011918894527134
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166590 (n + 1) : ℚ) / (A003959 (n + 1) : ℚ) * (A167353 (n + 1) : ℚ)

end

end A167360.P7705011918894527134

/-! ## A167360.P177765596244830121

`A166590(n+1)/A061142(n+1)*A167321(n+1)`
-/

namespace A167360.P177765596244830121
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166590 (n + 1) : ℚ) / (A061142 (n + 1) : ℚ) * (A167321 (n + 1) : ℚ)

end

end A167360.P177765596244830121

/-! ## A167360.P3588973997765148341

`A109624(n+1)/A167346(n+1)*A167358(n+1)`
-/

namespace A167360.P3588973997765148341
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109624 (n + 1) : ℚ) / (A167346 (n + 1) : ℚ) * (A167358 (n + 1) : ℚ)

end

end A167360.P3588973997765148341

/-! ## A167360.P14699850219363418522

`A167346(n+1)/A109624(n+1)*A167363(n+1)`
-/

namespace A167360.P14699850219363418522
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167346 (n + 1) : ℚ) / (A109624 (n + 1) : ℚ) * (A167363 (n + 1) : ℚ)

end

end A167360.P14699850219363418522

/-! ## A167360.P6591481710030673132

`A166590(n+1)/A165826(n+1)*A167324(n+1)`
-/

namespace A167360.P6591481710030673132
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166590 (n + 1) : ℚ) / (A165826 (n + 1) : ℚ) * (A167324 (n + 1) : ℚ)

end

end A167360.P6591481710030673132

/-! ## A167360.P12595328462369219202

`A166590(n+1)/A165828(n+1)*A167326(n+1)`
-/

namespace A167360.P12595328462369219202
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166590 (n + 1) : ℚ) / (A165828 (n + 1) : ℚ) * (A167326 (n + 1) : ℚ)

end

end A167360.P12595328462369219202

/-! ## A167360.P17727424963156803632

`A166590(n+1)/A165830(n+1)*A167328(n+1)`
-/

namespace A167360.P17727424963156803632
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166590 (n + 1) : ℚ) / (A165830 (n + 1) : ℚ) * (A167328 (n + 1) : ℚ)

end

end A167360.P17727424963156803632

/-! ## A167360.P4824049335583662464

`A167305(n+1)/A167323(n+1)*A167363(n+1)`
-/

namespace A167360.P4824049335583662464
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167305 (n + 1) : ℚ) / (A167323 (n + 1) : ℚ) * (A167363 (n + 1) : ℚ)

end

end A167360.P4824049335583662464

/-! ## A167360.P6085274048553536975

`A167306(n+1)/A167324(n+1)*A167363(n+1)`
-/

namespace A167360.P6085274048553536975
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167306 (n + 1) : ℚ) / (A167324 (n + 1) : ℚ) * (A167363 (n + 1) : ℚ)

end

end A167360.P6085274048553536975

/-!
# A167361: Totally multiplicative sequence with a(p) = (p-3)^2 = p^2-6p+9 for prime p.

The programs for A167361, the canonical program `A167361.P8077212222090649816` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A167361 has offset 1).

The definition of A167361 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A166589, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A167361.P8077212222090649816

`A166589(n+1)²`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A167361

/-- `A166589(n+1)²` -/
def P8077212222090649816.Spec : Prop :=
  ∀ n, P8077212222090649816.a n = A167361 (n + 1)

theorem P8077212222090649816.correct : P8077212222090649816.Spec := by
  intro n
  simp only [A167361, Nat.add_sub_cancel]

end A167361

/-! ## A167361.P13142753817024938349

`(A167341(n+1)/(n+1))²`
-/

namespace A167361.P13142753817024938349
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A167341 (n + 1) : ℚ) / (n + 1 : ℚ)) ^ 2

end

end A167361.P13142753817024938349

namespace A167361

/-- `(A167341(n+1)/(n+1))²` -/
def P13142753817024938349.Spec : Prop :=
  ∀ n, P13142753817024938349.a n = (A167361 (n + 1) : ℚ)

end A167361

/-! ## A167361.P10632915916047339099

`A000290(abs(A166589(n+1)))`
-/

namespace A167361.P10632915916047339099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 |A166589 (n + 1)|.toNat

end

end A167361.P10632915916047339099

namespace A167361

/-- `A000290(abs(A166589(n+1)))` -/
def P10632915916047339099.Spec : Prop :=
  ∀ n, P10632915916047339099.a n = A167361 (n + 1)

end A167361

/-! ## A167361.P7693866748314162068

`A166589(A000027(n+1))^2`
-/

namespace A167361.P7693866748314162068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166589 (A000027 (n + 1)).toNat ^ 2

end

end A167361.P7693866748314162068

namespace A167361

/-- `A166589(A000027(n+1))^2` -/
def P7693866748314162068.Spec : Prop :=
  ∀ n, P7693866748314162068.a n = A167361 (n + 1)

end A167361

/-! ## A167361.P17981036085731899572

`(A167347(n+1)/A003958(n+1))²`
-/

namespace A167361.P17981036085731899572
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A167347 (n + 1) : ℚ) / (A003958 (n + 1) : ℚ)) ^ 2

end

end A167361.P17981036085731899572

namespace A167361

/-- `(A167347(n+1)/A003958(n+1))²` -/
def P17981036085731899572.Spec : Prop :=
  ∀ n, P17981036085731899572.a n = (A167361 (n + 1) : ℚ)

end A167361

/-! ## A167361.P4879957302678743810

`(A167352(n+1)/A003959(n+1))²`
-/

namespace A167361.P4879957302678743810
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A167352 (n + 1) : ℚ) / (A003959 (n + 1) : ℚ)) ^ 2

end

end A167361.P4879957302678743810

namespace A167361

/-- `(A167352(n+1)/A003959(n+1))²` -/
def P4879957302678743810.Spec : Prop :=
  ∀ n, P4879957302678743810.a n = (A167361 (n + 1) : ℚ)

end A167361

/-! ## A167361.P3577426316322178344

`(A167312(n+1)/A061142(n+1))²`
-/

namespace A167361.P3577426316322178344
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A167312 (n + 1) : ℚ) / (A061142 (n + 1) : ℚ)) ^ 2

end

end A167361.P3577426316322178344

namespace A167361

/-- `(A167312(n+1)/A061142(n+1))²` -/
def P3577426316322178344.Spec : Prop :=
  ∀ n, P3577426316322178344.a n = (A167361 (n + 1) : ℚ)

end A167361

/-! ## A167361.P1754330199431265083

`A167312(n+1)²/A165825(n+1)`
-/

namespace A167361.P1754330199431265083
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167312 (n + 1) ^ 2 : ℚ) / (A165825 (n + 1) : ℚ)

end

end A167361.P1754330199431265083

namespace A167361

/-- `A167312(n+1)²/A165825(n+1)` -/
def P1754330199431265083.Spec : Prop :=
  ∀ n, P1754330199431265083.a n = (A167361 (n + 1) : ℚ)

end A167361

/-! ## A167361.P3125753232276772927

`(A167313(n+1)/A165824(n+1))²`
-/

namespace A167361.P3125753232276772927
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A167313 (n + 1) : ℚ) / (A165824 (n + 1) : ℚ)) ^ 2

end

end A167361.P3125753232276772927

namespace A167361

/-- `(A167313(n+1)/A165824(n+1))²` -/
def P3125753232276772927.Spec : Prop :=
  ∀ n, P3125753232276772927.a n = (A167361 (n + 1) : ℚ)

end A167361

/-! ## A167361.P18200172201045581129

`A167313(n+1)²/A165830(n+1)`
-/

namespace A167361.P18200172201045581129
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167313 (n + 1) ^ 2 : ℚ) / (A165830 (n + 1) : ℚ)

end

end A167361.P18200172201045581129

namespace A167361

/-- `A167313(n+1)²/A165830(n+1)` -/
def P18200172201045581129.Spec : Prop :=
  ∀ n, P18200172201045581129.a n = (A167361 (n + 1) : ℚ)

end A167361

/-! ## A167361.P5452880787001760257

`(A167314(n+1)/A165825(n+1))²`
-/

namespace A167361.P5452880787001760257
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A167314 (n + 1) : ℚ) / (A165825 (n + 1) : ℚ)) ^ 2

end

end A167361.P5452880787001760257

namespace A167361

/-- `(A167314(n+1)/A165825(n+1))²` -/
def P5452880787001760257.Spec : Prop :=
  ∀ n, P5452880787001760257.a n = (A167361 (n + 1) : ℚ)

end A167361

/-! ## A167361.P17989473927081637964

`(A167315(n+1)/A165826(n+1))²`
-/

namespace A167361.P17989473927081637964
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A167315 (n + 1) : ℚ) / (A165826 (n + 1) : ℚ)) ^ 2

end

end A167361.P17989473927081637964

namespace A167361

/-- `(A167315(n+1)/A165826(n+1))²` -/
def P17989473927081637964.Spec : Prop :=
  ∀ n, P17989473927081637964.a n = (A167361 (n + 1) : ℚ)

end A167361

/-! ## A167361.P1340000362800122268

`(A167316(n+1)/A165827(n+1))²`
-/

namespace A167361.P1340000362800122268
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A167316 (n + 1) : ℚ) / (A165827 (n + 1) : ℚ)) ^ 2

end

end A167361.P1340000362800122268

namespace A167361

/-- `(A167316(n+1)/A165827(n+1))²` -/
def P1340000362800122268.Spec : Prop :=
  ∀ n, P1340000362800122268.a n = (A167361 (n + 1) : ℚ)

end A167361

/-! ## A167361.P13834582635866867147

`(A167317(n+1)/A165828(n+1))²`
-/

namespace A167361.P13834582635866867147
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A167317 (n + 1) : ℚ) / (A165828 (n + 1) : ℚ)) ^ 2

end

end A167361.P13834582635866867147

namespace A167361

/-- `(A167317(n+1)/A165828(n+1))²` -/
def P13834582635866867147.Spec : Prop :=
  ∀ n, P13834582635866867147.a n = (A167361 (n + 1) : ℚ)

end A167361

/-! ## A167361.P10386582091886106529

`(A167318(n+1)/A165829(n+1))²`
-/

namespace A167361.P10386582091886106529
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A167318 (n + 1) : ℚ) / (A165829 (n + 1) : ℚ)) ^ 2

end

end A167361.P10386582091886106529

namespace A167361

/-- `(A167318(n+1)/A165829(n+1))²` -/
def P10386582091886106529.Spec : Prop :=
  ∀ n, P10386582091886106529.a n = (A167361 (n + 1) : ℚ)

end A167361

/-! ## A167361.P3276097605718128579

`(A167319(n+1)/A165830(n+1))²`
-/

namespace A167361.P3276097605718128579
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A167319 (n + 1) : ℚ) / (A165830 (n + 1) : ℚ)) ^ 2

end

end A167361.P3276097605718128579

namespace A167361

/-- `(A167319(n+1)/A165830(n+1))²` -/
def P3276097605718128579.Spec : Prop :=
  ∀ n, P3276097605718128579.a n = (A167361 (n + 1) : ℚ)

end A167361

/-! ## A167361.P14080227775571425839

`(A167320(n+1)/A165831(n+1))²`
-/

namespace A167361.P14080227775571425839
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A167320 (n + 1) : ℚ) / (A165831 (n + 1) : ℚ)) ^ 2

end

end A167361.P14080227775571425839

namespace A167361

/-- `(A167320(n+1)/A165831(n+1))²` -/
def P14080227775571425839.Spec : Prop :=
  ∀ n, P14080227775571425839.a n = (A167361 (n + 1) : ℚ)

end A167361

/-! ## A167361.P8504326646396297557

`(A167359(n+1)/A166590(n+1))²`
-/

namespace A167361.P8504326646396297557
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A167359 (n + 1) : ℚ) / (A166590 (n + 1) : ℚ)) ^ 2

end

end A167361.P8504326646396297557

namespace A167361

/-- `(A167359(n+1)/A166590(n+1))²` -/
def P8504326646396297557.Spec : Prop :=
  ∀ n, P8504326646396297557.a n = (A167361 (n + 1) : ℚ)

end A167361

/-! ## A167361.P4640710775102997734

`(A167362(n+1)/A166591(n+1))²`
-/

namespace A167361.P4640710775102997734
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A167362 (n + 1) : ℚ) / (A166591 (n + 1) : ℚ)) ^ 2

end

end A167361.P4640710775102997734

namespace A167361

/-- `(A167362(n+1)/A166591(n+1))²` -/
def P4640710775102997734.Spec : Prop :=
  ∀ n, P4640710775102997734.a n = (A167361 (n + 1) : ℚ)

end A167361

/-! ## A167361.P18263712667859558145

`A167359(n+1)²/A167358(n+1)`
-/

namespace A167361.P18263712667859558145
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167359 (n + 1) ^ 2 : ℚ) / (A167358 (n + 1) : ℚ)

end

end A167361.P18263712667859558145

namespace A167361

/-- `A167359(n+1)²/A167358(n+1)` -/
def P18263712667859558145.Spec : Prop :=
  ∀ n, P18263712667859558145.a n = (A167361 (n + 1) : ℚ)

end A167361

/-!
# A167362: Totally multiplicative sequence with a(p) = (p-3)*(p+3) = p^2-9 for prime p.

The programs for A167362, there is no canonical definition to state claims against.
-/

/-! ## A167362.P7614152368525153640

`A166589(n+1)*A166591(n+1)`
-/

namespace A167362.P7614152368525153640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166589 (n + 1) * A166591 (n + 1)

end

end A167362.P7614152368525153640

/-! ## A167362.P14731364914755811408

`sqrt(A167363(n+1))*A166589(n+1)`
-/

namespace A167362.P14731364914755811408
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A167363 (n + 1) : ℝ) * (A166589 (n + 1) : ℝ)

end

end A167362.P14731364914755811408

/-! ## A167362.P9154398621742258871

`A166589(n+1)/A003959(n+1)*A167353(n+1)`
-/

namespace A167362.P9154398621742258871
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166589 (n + 1) : ℚ) / (A003959 (n + 1) : ℚ) * (A167353 (n + 1) : ℚ)

end

end A167362.P9154398621742258871

/-! ## A167362.P18093738822581553774

`A166591(n+1)/A003958(n+1)*A167347(n+1)`
-/

namespace A167362.P18093738822581553774
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166591 (n + 1) : ℚ) / (A003958 (n + 1) : ℚ) * (A167347 (n + 1) : ℚ)

end

end A167362.P18093738822581553774

/-! ## A167362.P1944679255580953520

`A167342(n+1)/A079579(n+1)*A167347(n+1)`
-/

namespace A167362.P1944679255580953520
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167342 (n + 1) : ℚ) / (A079579 (n + 1) : ℚ) * (A167347 (n + 1) : ℚ)

end

end A167362.P1944679255580953520

/-! ## A167362.P15271529219683867299

`A167312(n+1)/A165825(n+1)*A167321(n+1)`
-/

namespace A167362.P15271529219683867299
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167312 (n + 1) : ℚ) / (A165825 (n + 1) : ℚ) * (A167321 (n + 1) : ℚ)

end

end A167362.P15271529219683867299

/-! ## A167362.P15846648329578945480

`A167312(n+1)/A165827(n+1)*A167322(n+1)`
-/

namespace A167362.P15846648329578945480
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167312 (n + 1) : ℚ) / (A165827 (n + 1) : ℚ) * (A167322 (n + 1) : ℚ)

end

end A167362.P15846648329578945480

/-! ## A167362.P2356776310768247301

`A167313(n+1)/A165827(n+1)*A167321(n+1)`
-/

namespace A167362.P2356776310768247301
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167313 (n + 1) : ℚ) / (A165827 (n + 1) : ℚ) * (A167321 (n + 1) : ℚ)

end

end A167362.P2356776310768247301

/-! ## A167362.P9464307902168380634

`A166591(n+1)/A166590(n+1)*A167359(n+1)`
-/

namespace A167362.P9464307902168380634
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166591 (n + 1) : ℚ) / (A166590 (n + 1) : ℚ) * (A167359 (n + 1) : ℚ)

end

end A167362.P9464307902168380634

/-! ## A167362.P7542997528905061509

`A167312(n+1)/A167321(n+1)*A167363(n+1)`
-/

namespace A167362.P7542997528905061509
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167312 (n + 1) : ℚ) / (A167321 (n + 1) : ℚ) * (A167363 (n + 1) : ℚ)

end

end A167362.P7542997528905061509

/-! ## A167362.P7764803436771340940

`A167317(n+1)/A167326(n+1)*A167363(n+1)`
-/

namespace A167362.P7764803436771340940
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167317 (n + 1) : ℚ) / (A167326 (n + 1) : ℚ) * (A167363 (n + 1) : ℚ)

end

end A167362.P7764803436771340940

/-! ## A167362.P18279501860650288245

`A166591(n+1)²/A109624(n+1)*A167347(n+1)`
-/

namespace A167362.P18279501860650288245
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166591 (n + 1) ^ 2 : ℚ) / (A109624 (n + 1) : ℚ) * (A167347 (n + 1) : ℚ)

end

end A167362.P18279501860650288245

/-!
# A167363: Totally multiplicative sequence with a(p) = (p+3)^2 = p^2+6p+9 for prime p.

The programs for A167363, there is no canonical definition to state claims against.
-/

/-! ## A167363.P8795302726234878835

`A166591(n+1)²`
-/

namespace A167363.P8795302726234878835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166591 (n + 1) ^ 2

end

end A167363.P8795302726234878835

/-! ## A167363.P12248132336343741336

`(A167342(n+1)/(n+1))²`
-/

namespace A167363.P12248132336343741336
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A167342 (n + 1) : ℚ) / (n + 1 : ℚ)) ^ 2

end

end A167363.P12248132336343741336

/-! ## A167363.P1667889764586909852

`(A109624(n+1)/A003958(n+1))²`
-/

namespace A167363.P1667889764586909852
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A109624 (n + 1) : ℚ) / (A003958 (n + 1) : ℚ)) ^ 2

end

end A167363.P1667889764586909852

/-! ## A167363.P7236222959609226258

`(A167353(n+1)/A003959(n+1))²`
-/

namespace A167363.P7236222959609226258
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A167353 (n + 1) : ℚ) / (A003959 (n + 1) : ℚ)) ^ 2

end

end A167363.P7236222959609226258

/-! ## A167363.P18219236653705985717

`(A167321(n+1)/A061142(n+1))²`
-/

namespace A167363.P18219236653705985717
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A167321 (n + 1) : ℚ) / (A061142 (n + 1) : ℚ)) ^ 2

end

end A167363.P18219236653705985717

/-! ## A167363.P4243793674928689151

`A167321(n+1)²/A165825(n+1)`
-/

namespace A167363.P4243793674928689151
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167321 (n + 1) ^ 2 : ℚ) / (A165825 (n + 1) : ℚ)

end

end A167363.P4243793674928689151

/-! ## A167363.P4686462957068266853

`(A167322(n+1)/A165824(n+1))²`
-/

namespace A167363.P4686462957068266853
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A167322 (n + 1) : ℚ) / (A165824 (n + 1) : ℚ)) ^ 2

end

end A167363.P4686462957068266853

/-! ## A167363.P704724651083179918

`A167322(n+1)²/A165830(n+1)`
-/

namespace A167363.P704724651083179918
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167322 (n + 1) ^ 2 : ℚ) / (A165830 (n + 1) : ℚ)

end

end A167363.P704724651083179918

/-! ## A167363.P16118589913811987517

`(A167323(n+1)/A165825(n+1))²`
-/

namespace A167363.P16118589913811987517
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A167323 (n + 1) : ℚ) / (A165825 (n + 1) : ℚ)) ^ 2

end

end A167363.P16118589913811987517

/-! ## A167363.P4584046539644718947

`(A167324(n+1)/A165826(n+1))²`
-/

namespace A167363.P4584046539644718947
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A167324 (n + 1) : ℚ) / (A165826 (n + 1) : ℚ)) ^ 2

end

end A167363.P4584046539644718947

/-! ## A167363.P5999108843173618544

`(A167325(n+1)/A165827(n+1))²`
-/

namespace A167363.P5999108843173618544
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A167325 (n + 1) : ℚ) / (A165827 (n + 1) : ℚ)) ^ 2

end

end A167363.P5999108843173618544

/-! ## A167363.P5155055605771858043

`(A167326(n+1)/A165828(n+1))²`
-/

namespace A167363.P5155055605771858043
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A167326 (n + 1) : ℚ) / (A165828 (n + 1) : ℚ)) ^ 2

end

end A167363.P5155055605771858043

/-! ## A167363.P13155397192505200629

`(A167327(n+1)/A165829(n+1))²`
-/

namespace A167363.P13155397192505200629
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A167327 (n + 1) : ℚ) / (A165829 (n + 1) : ℚ)) ^ 2

end

end A167363.P13155397192505200629

/-! ## A167363.P6440755872291779628

`(A167328(n+1)/A165830(n+1))²`
-/

namespace A167363.P6440755872291779628
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A167328 (n + 1) : ℚ) / (A165830 (n + 1) : ℚ)) ^ 2

end

end A167363.P6440755872291779628

/-! ## A167363.P12870905990385743410

`(A167329(n+1)/A165831(n+1))²`
-/

namespace A167363.P12870905990385743410
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A167329 (n + 1) : ℚ) / (A165831 (n + 1) : ℚ)) ^ 2

end

end A167363.P12870905990385743410

/-! ## A167363.P7433213199052066470

`(A167360(n+1)/A166590(n+1))²`
-/

namespace A167363.P7433213199052066470
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A167360 (n + 1) : ℚ) / (A166590 (n + 1) : ℚ)) ^ 2

end

end A167363.P7433213199052066470

/-! ## A167363.P15353901618401931673

`gcd(A167321(n+1), A167322(n+1))²`
-/

namespace A167363.P15353901618401931673
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A167321 (n + 1)) (A167322 (n + 1)) ^ 2

end

end A167363.P15353901618401931673

/-! ## A167363.P16508901695183696879

`gcd(A167323(n+1), A167324(n+1))²`
-/

namespace A167363.P16508901695183696879
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A167323 (n + 1)) (A167324 (n + 1)) ^ 2

end

end A167363.P16508901695183696879

/-! ## A167363.P4415821941889537414

`gcd(A167325(n+1), A167326(n+1))²`
-/

namespace A167363.P4415821941889537414
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A167325 (n + 1)) (A167326 (n + 1)) ^ 2

end

end A167363.P4415821941889537414

/-! ## A167363.P15396382395581862232

`gcd(A167327(n+1), A167328(n+1))²`
-/

namespace A167363.P15396382395581862232
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A167327 (n + 1)) (A167328 (n + 1)) ^ 2

end

end A167363.P15396382395581862232

/-!
# A167364: Triangle read by rows, A047999 * A010060 (diagonalized); as infinite lower triangular matrices.

The programs for A167364, there is no canonical definition to state claims against.
-/

/-! ## A167364.P16856278631716748876

`A164981(n+1)%A001285(A002260(n+1))`
-/

namespace A167364.P16856278631716748876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A164981 (n + 1)) (A001285 (A002260 (n + 1)).toNat)

end

end A167364.P16856278631716748876

/-! ## A167364.P1527217854044562175

`and(A010060(A002260(n+1)), A210225(n+1))`
-/

namespace A167364.P1527217854044562175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A010060 (A002260 (n + 1)).toNat) (A210225 (n + 1))

end

end A167364.P1527217854044562175

/-! ## A167364.P225029051395998245

`and(A010060(A002260(n+1)), A248727(n))`
-/

namespace A167364.P225029051395998245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A010060 (A002260 (n + 1)).toNat) (A248727 n)

end

end A167364.P225029051395998245

/-! ## A167364.P16052065385101661646

`dr(and(64, A158810(n+1)))`
-/

namespace A167364.P16052065385101661646
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (Int.land 64 (A158810 (n + 1)))

end

end A167364.P16052065385101661646

/-! ## A167364.P5787060306066647424

`A000120(and(16, A158810(n+1)))`
-/

namespace A167364.P5787060306066647424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (Int.land 16 (A158810 (n + 1))).toNat

end

end A167364.P5787060306066647424

/-! ## A167364.P9934504637464173846

`A275811(and(64, A158810(n+1)))`
-/

namespace A167364.P9934504637464173846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275811 (Int.land 64 (A158810 (n + 1))).toNat

end

end A167364.P9934504637464173846

/-! ## A167364.P14954188628741924285

`A001221(and(16, A158810(n+1))+1)`
-/

namespace A167364.P14954188628741924285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Int.land 16 (A158810 (n + 1)) + 1).toNat

end

end A167364.P14954188628741924285

/-! ## A167364.P12965734142838207897

`A001222(and(16, A158810(n+1))+1)`
-/

namespace A167364.P12965734142838207897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.land 16 (A158810 (n + 1)) + 1).toNat

end

end A167364.P12965734142838207897

/-! ## A167364.P13581196475908573314

`A084884(and(16, A158810(n+1))+1)`
-/

namespace A167364.P13581196475908573314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084884 (Int.land 16 (A158810 (n + 1)) + 1).toNat

end

end A167364.P13581196475908573314

/-! ## A167364.P3751656680503534979

`A286028(and(16, A158810(n+1))+2)`
-/

namespace A167364.P3751656680503534979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286028 (Int.land 16 (A158810 (n + 1)) + 2).toNat

end

end A167364.P3751656680503534979

/-!
# A167366: Triangle read by rows, 2*A047999 - A097806 (signed) = twice Sierpinski's gasket - the signed pair sum operator.

The programs for A167366, the canonical program `A167366.P4537059373881404542` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A167366 has offset 0).

The definition of A167366 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A167366.P4537059373881404542

`A131127(n)%4`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A167366

/-- `A131127(n)%4` -/
def P4537059373881404542.Spec : Prop :=
  ∀ n, P4537059373881404542.a n = A167366 n

theorem P4537059373881404542.correct : P4537059373881404542.Spec := by
  intro n
  simp only [A167366]

end A167366

/-! ## A167366.P9828369196417790653

`and(A122553(n), A131127(n))`
-/

namespace A167366.P9828369196417790653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A122553 n) (A131127 n)

end

end A167366.P9828369196417790653

namespace A167366

/-- `and(A122553(n), A131127(n))` -/
def P9828369196417790653.Spec : Prop :=
  ∀ n, P9828369196417790653.a n = A167366 n

end A167366

/-! ## A167366.P1574594751408177471

`(A028326(n)-A167374(n))%4`
-/

namespace A167366.P1574594751408177471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028326 n - A167374 n) 4

end

end A167366.P1574594751408177471

namespace A167366

/-- `(A028326(n)-A167374(n))%4` -/
def P1574594751408177471.Spec : Prop :=
  ∀ n, P1574594751408177471.a n = A167366 n

end A167366

/-! ## A167366.P15701785693415285019

`and(A131127(n), A147595(n+1))`
-/

namespace A167366.P15701785693415285019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A131127 n) (A147595 (n + 1))

end

end A167366.P15701785693415285019

namespace A167366

/-- `and(A131127(n), A147595(n+1))` -/
def P15701785693415285019.Spec : Prop :=
  ∀ n, P15701785693415285019.a n = A167366 n

end A167366

/-! ## A167366.P15034579000269258383

`and(A088578(n), A131127(n))`
-/

namespace A167366.P15034579000269258383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A088578 n) (A131127 n)

end

end A167366.P15034579000269258383

namespace A167366

/-- `and(A088578(n), A131127(n))` -/
def P15034579000269258383.Spec : Prop :=
  ∀ n, P15034579000269258383.a n = A167366 n

end A167366

/-! ## A167366.P486754258285462558

`and(A131127(n), A339771(n))`
-/

namespace A167366.P486754258285462558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A131127 n) (A339771 n)

end

end A167366.P486754258285462558

namespace A167366

/-- `and(A131127(n), A339771(n))` -/
def P486754258285462558.Spec : Prop :=
  ∀ n, P486754258285462558.a n = A167366 n

end A167366

/-! ## A167366.P3650177672762036010

`A010873(A131127(n))`
-/

namespace A167366.P3650177672762036010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010873 (A131127 n).toNat

end

end A167366.P3650177672762036010

namespace A167366

/-- `A010873(A131127(n))` -/
def P3650177672762036010.Spec : Prop :=
  ∀ n, P3650177672762036010.a n = A167366 n

end A167366

/-! ## A167366.P8492761290598454778

`and(A131127(n), A188161(n))`
-/

namespace A167366.P8492761290598454778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A131127 n) (A188161 n)

end

end A167366.P8492761290598454778

namespace A167366

/-- `and(A131127(n), A188161(n))` -/
def P8492761290598454778.Spec : Prop :=
  ∀ n, P8492761290598454778.a n = A167366 n

end A167366

/-! ## A167366.P9396708856573193355

`and(A131127(n), A191341(n+1))`
-/

namespace A167366.P9396708856573193355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A131127 n) (A191341 (n + 1))

end

end A167366.P9396708856573193355

namespace A167366

/-- `and(A131127(n), A191341(n+1))` -/
def P9396708856573193355.Spec : Prop :=
  ∀ n, P9396708856573193355.a n = A167366 n

end A167366

/-! ## A167366.P4533191892353001129

`and(A092841(n), A131127(n))`
-/

namespace A167366.P4533191892353001129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A092841 n) (A131127 n)

end

end A167366.P4533191892353001129

namespace A167366

/-- `and(A092841(n), A131127(n))` -/
def P4533191892353001129.Spec : Prop :=
  ∀ n, P4533191892353001129.a n = A167366 n

end A167366

/-! ## A167366.P10821933400971640135

`and(A127509(n+1), A131127(n))`
-/

namespace A167366.P10821933400971640135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A127509 (n + 1)) (A131127 n)

end

end A167366.P10821933400971640135

namespace A167366

/-- `and(A127509(n+1), A131127(n))` -/
def P10821933400971640135.Spec : Prop :=
  ∀ n, P10821933400971640135.a n = A167366 n

end A167366

/-! ## A167366.P8193040108220484762

`and(A131127(n), A157831(n+1))`
-/

namespace A167366.P8193040108220484762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A131127 n) (A157831 (n + 1))

end

end A167366.P8193040108220484762

namespace A167366

/-- `and(A131127(n), A157831(n+1))` -/
def P8193040108220484762.Spec : Prop :=
  ∀ n, P8193040108220484762.a n = A167366 n

end A167366

/-!
# A167367: a(n) = sigma(n!!) where n!! is A006882(n).

The programs for A167367, the canonical program `A167367.P12696573703430145409` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A167367 has offset 0).

The definition of A167367 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A167367.P12696573703430145409

`A000203(A006882(n))`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A167367

/-- `A000203(A006882(n))` -/
def P12696573703430145409.Spec : Prop :=
  ∀ n, P12696573703430145409.a n = A167367 n

theorem P12696573703430145409.correct : P12696573703430145409.Spec := by
  intro n
  simp only [A167367]

end A167367

/-! ## A167367.P13320808394790691203

`a(n!!)` with `a(0)=1, a(1)=1, a(2)=3, a(3)=4, a(4)=15, a(5)=24, a(6)=124`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A167367.P13320808394790691203
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 3, 4, 15, 24, 124] fun n a =>
  a (Nat.factorial (Nat.factorial n))

end

end A167367.P13320808394790691203

namespace A167367

/-- `a(n!!)` -/
def P13320808394790691203.Spec : Prop :=
  ∀ n, (P13320808394790691203.a n : ℤ) = A167367 n

end A167367

/-! ## A167367.P9081461525693818871

`∑{d}[n*a(n-2), #]` with `a(0)=1, a(1)=1`
-/

namespace A167367.P9081461525693818871
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  n * f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), d

end

end A167367.P9081461525693818871

namespace A167367

/-- `∑{d}[n*a(n-2), #]` -/
def P9081461525693818871.Spec : Prop :=
  ∀ n, (P9081461525693818871.a n : ℤ) = A167367 n

end A167367

/-! ## A167367.P7657066140631326968

`∑{d}[n!/a(n-1), #]` with `a(0)=1`
-/

namespace A167367.P7657066140631326968
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  (Nat.factorial n : ℚ) / f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f1 n)).natAbs, d

end

end A167367.P7657066140631326968

namespace A167367

/-- `∑{d}[n!/a(n-1), #]` -/
def P7657066140631326968.Spec : Prop :=
  ∀ n, (P7657066140631326968.a n : ℤ) = A167367 n

end A167367

/-! ## A167367.P16234208848160569129

`∑{d}[∏[n/a(n-1)], #]` with `a(0)=1`
-/

namespace A167367.P16234208848160569129
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f2 =>
  (n : ℚ) / f2 (n - 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f1 n)).natAbs, d

end

end A167367.P16234208848160569129

namespace A167367

/-- `∑{d}[∏[n/a(n-1)], #]` -/
def P16234208848160569129.Spec : Prop :=
  ∀ n, (P16234208848160569129.a n : ℤ) = A167367 n

end A167367

/-!
# A167368: a(n) = sigma((n!!)!).

The programs for A167368, there is no canonical definition to state claims against.
-/

/-! ## A167368.P15126293500067571145

`A000203(A161563(n))`
-/

namespace A167368.P15126293500067571145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A161563 n).toNat

end

end A167368.P15126293500067571145

/-! ## A167368.P2386805217189898274

`A062569(A006882(n))`
-/

namespace A167368.P2386805217189898274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062569 (A006882 n).toNat

end

end A167368.P2386805217189898274

/-!
# A167371: Triangle, read by rows, given by [0,1,-1,0,0,0,0,0,0,0,0,...] DELTA [1,0,-1,1,0,0,0,0,0,0,0,...] where DELTA is the operator defined in A084938.

The programs for A167371, the canonical program `A167371.P11386683783594765593` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A167371 has offset 0).

The definition of A167371 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A167371.P11569462140365712410

`char[C(ceil(n/2), 2)+n]-char[1]`
-/

namespace A167371.P11569462140365712410
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ⌈(n : ℚ) / 2⌉.toNat 2 + n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A167371.P11569462140365712410

namespace A167371

/-- `char[C(ceil(n/2), 2)+n]-char[1]` -/
def P11569462140365712410.Spec : Prop :=
  ∀ n, P11569462140365712410.a n = A167371 n

end A167371

/-! ## A167371.P9100185521988779653

`char[∑[∑[n]%(n+1)-1]]-char[1]`
-/

namespace A167371.P9100185521988779653
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f3 j) % (n + 1) : ℕ) : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) - ((if ∃ j, f4 j = n then 1 else 0 : ℕ) : ℤ)

end

end A167371.P9100185521988779653

namespace A167371

/-- `char[∑[∑[n]%(n+1)-1]]-char[1]` -/
def P9100185521988779653.Spec : Prop :=
  ∀ n, P9100185521988779653.a n = A167371 n

end A167371

/-! ## A167371.P5641293102913037873

`a(char[C(ceil(n/2), 2)+n]+1)` with `a(0)=1, a(1)=0, a(2)=1`
-/

namespace A167371.P5641293102913037873
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ⌈(n : ℚ) / 2⌉.toNat 2 + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 1] fun n a =>
  a ((if ∃ j, f1 j = n then 1 else 0) + 1)

end

end A167371.P5641293102913037873

namespace A167371

/-- `a(char[C(ceil(n/2), 2)+n]+1)` -/
def P5641293102913037873.Spec : Prop :=
  ∀ n, (P5641293102913037873.a n : ℤ) = A167371 n

end A167371

/-! ## A167371.P8517463600843263597

`A131034(n)%2`
-/

namespace A167371.P8517463600843263597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A131034 n) 2

end

end A167371.P8517463600843263597

namespace A167371

/-- `A131034(n)%2` -/
def P8517463600843263597.Spec : Prop :=
  ∀ n, P8517463600843263597.a n = A167371 n

end A167371

/-! ## A167371.P14146523864108420101

`A167684(n)%2`
-/

namespace A167371.P14146523864108420101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A167684 n) 2

end

end A167371.P14146523864108420101

namespace A167371

/-- `A167684(n)%2` -/
def P14146523864108420101.Spec : Prop :=
  ∀ n, P14146523864108420101.a n = A167371 n

end A167371

/-! ## A167371.P6214288231472522375

`A097806(n)-char[1]`
-/

namespace A167371.P6214288231472522375
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097806 n - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A167371.P6214288231472522375

namespace A167371

/-- `A097806(n)-char[1]` -/
def P6214288231472522375.Spec : Prop :=
  ∀ n, P6214288231472522375.a n = A167371 n

end A167371

/-! ## A167371.P14443157786063116989

`C(2, A072736(n)+2)`
-/

namespace A167371.P14443157786063116989
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A072736 n + 2).toNat

end

end A167371.P14443157786063116989

namespace A167371

/-- `C(2, A072736(n)+2)` -/
def P14443157786063116989.Spec : Prop :=
  ∀ n, (P14443157786063116989.a n : ℤ) = A167371 n

end A167371

/-! ## A167371.P5503916272681735138

`and(2, A152571(n))/2`
-/

namespace A167371.P5503916272681735138
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land 2 (A152571 n) : ℚ) / 2

end

end A167371.P5503916272681735138

namespace A167371

/-- `and(2, A152571(n))/2` -/
def P5503916272681735138.Spec : Prop :=
  ∀ n, P5503916272681735138.a n = (A167371 n : ℚ)

end A167371

/-! ## A167371.P17769378841076410407

`(A167374(n)+char[1])²`
-/

namespace A167371.P17769378841076410407
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A167374 n + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)) ^ 2

end

end A167371.P17769378841076410407

namespace A167371

/-- `(A167374(n)+char[1])²` -/
def P17769378841076410407.Spec : Prop :=
  ∀ n, P17769378841076410407.a n = A167371 n

end A167371

/-! ## A167371.P2270395300958683400

`floor(1/A066633(n+1))`
-/

namespace A167371.P2270395300958683400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / (A066633 (n + 1) : ℚ)⌋

end

end A167371.P2270395300958683400

namespace A167371

/-- `floor(1/A066633(n+1))` -/
def P2270395300958683400.Spec : Prop :=
  ∀ n, P2270395300958683400.a n = A167371 n

end A167371

/-! ## A167371.P11386683783594765593

`round(1/A130303(n+1))`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A167371

/-- `round(1/A130303(n+1))` -/
def P11386683783594765593.Spec : Prop :=
  ∀ n, P11386683783594765593.a n = A167371 n

theorem P11386683783594765593.correct : P11386683783594765593.Spec := by
  intro n
  simp only [A167371]

end A167371

/-! ## A167371.P7627523069089388872

`A103451(n+1)-char[1]`
-/

namespace A167371.P7627523069089388872
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103451 (n + 1) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A167371.P7627523069089388872

namespace A167371

/-- `A103451(n+1)-char[1]` -/
def P7627523069089388872.Spec : Prop :=
  ∀ n, P7627523069089388872.a n = A167371 n

end A167371

/-! ## A167371.P1948450605598202965

`C(1-char[1], A025581(n))`
-/

namespace A167371.P1948450605598202965
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (1 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)).toNat (A025581 n).toNat

end

end A167371.P1948450605598202965

namespace A167371

/-- `C(1-char[1], A025581(n))` -/
def P1948450605598202965.Spec : Prop :=
  ∀ n, (P1948450605598202965.a n : ℤ) = A167371 n

end A167371

/-! ## A167371.P1708647284476740514

`C(2, A131414(n+1)-1)`
-/

namespace A167371.P1708647284476740514
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A131414 (n + 1) - 1).toNat

end

end A167371.P1708647284476740514

namespace A167371

/-- `C(2, A131414(n+1)-1)` -/
def P1708647284476740514.Spec : Prop :=
  ∀ n, (P1708647284476740514.a n : ℤ) = A167371 n

end A167371

/-! ## A167371.P71832737895876569

`C(2, 2*A144257(n+1))`
-/

namespace A167371.P71832737895876569
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (2 * A144257 (n + 1)).toNat

end

end A167371.P71832737895876569

namespace A167371

/-- `C(2, 2*A144257(n+1))` -/
def P71832737895876569.Spec : Prop :=
  ∀ n, (P71832737895876569.a n : ℤ) = A167371 n

end A167371

/-! ## A167371.P15175760463430323311

`C(2, 2*A238345(n+1))`
-/

namespace A167371.P15175760463430323311
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (2 * A238345 (n + 1)).toNat

end

end A167371.P15175760463430323311

namespace A167371

/-- `C(2, 2*A238345(n+1))` -/
def P15175760463430323311.Spec : Prop :=
  ∀ n, (P15175760463430323311.a n : ℤ) = A167371 n

end A167371

/-! ## A167371.P16805465131733354217

`C(C(2, A106234(n+1)), 2)`
-/

namespace A167371.P16805465131733354217
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.choose 2 (A106234 (n + 1)).toNat) 2

end

end A167371.P16805465131733354217

namespace A167371

/-- `C(C(2, A106234(n+1)), 2)` -/
def P16805465131733354217.Spec : Prop :=
  ∀ n, (P16805465131733354217.a n : ℤ) = A167371 n

end A167371

/-! ## A167371.P11792913439180405032

`C(C(2, A318754(n+1)), 2)`
-/

namespace A167371.P11792913439180405032
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.choose 2 (A318754 (n + 1)).toNat) 2

end

end A167371.P11792913439180405032

namespace A167371

/-- `C(C(2, A318754(n+1)), 2)` -/
def P11792913439180405032.Spec : Prop :=
  ∀ n, (P11792913439180405032.a n : ℤ) = A167371 n

end A167371

/-! ## A167371.P3372482034393001060

`char[n*char[A101881(n+1)]]`
-/

namespace A167371.P3372482034393001060
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101881 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (if ∃ j, f2 j = (n : ℤ) then 1 else 0)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A167371.P3372482034393001060

namespace A167371

/-- `char[n*char[A101881(n+1)]]` -/
def P3372482034393001060.Spec : Prop :=
  ∀ n, (P3372482034393001060.a n : ℤ) = A167371 n

end A167371

/-! ## A167371.P13621959398793895846

`a(floor(atan(A007318(n+1))))` with `a(0)=1, a(1)=0`
-/

namespace A167371.P13621959398793895846
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0] fun n a =>
  a ⌊Real.arctan (A007318 (n + 1) : ℝ)⌋.toNat

end

end A167371.P13621959398793895846

namespace A167371

/-- `a(floor(atan(A007318(n+1))))` -/
def P13621959398793895846.Spec : Prop :=
  ∀ n, (P13621959398793895846.a n : ℤ) = A167371 n

end A167371

/-!
# A167372: a(n) = A120301(A123944(n))/A058313(A123944(n)).

The programs for A167372, there is no canonical definition to state claims against.
-/

/-! ## A167372.P2405518856645642327

`A176172(A001358(n+1)+A000244(n))`
-/

namespace A167372.P2405518856645642327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176172 (A001358 (n + 1) + A000244 n).toNat

end

end A167372.P2405518856645642327

/-! ## A167372.P15774230250694708827

`A007529(A286001(n+1)%A343433(n+5))`
-/

namespace A167372.P15774230250694708827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007529 (Int.tmod (A286001 (n + 1)) (A343433 (n + 5))).toNat

end

end A167372.P15774230250694708827

/-!
# A167373: Expansion of (1+x)*(3*x+1)/(1+x+x^2).

The programs for A167373, the canonical program `A167373.P3723830836260039903` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A167373 has offset 0).

The definition of A167373 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A167373.P3723830836260039903

`a(n-3)` with `a(0)=1, a(1)=3, a(2)=-1, a(3)=-2`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A167373

/-- `a(n-3)` -/
def P3723830836260039903.Spec : Prop :=
  ∀ n, P3723830836260039903.a n = A167373 n

theorem P3723830836260039903.correct : P3723830836260039903.Spec := by
  intro n
  simp only [A167373]

end A167373

/-!
# A167374: Triangle, read by rows, given by [ -1,1,0,0,0,0,0,0,0,...] DELTA [1,0,0,0,0,0,0,0,0,...] where DELTA is the operator defined in A084938.

The programs for A167374, the canonical program `A167374.P10274264666879591430` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A167374 has offset 0).

The definition of A167374 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A167374.P10274264666879591430

`floor((A002260(n+1)+2)/(A003056(n)+2))*(-1)^(A002260(n+1)+A003056(n)+1)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A167374

/-- `floor((A002260(n+1)+2)/(A003056(n)+2))*(-1)^(A002260(n+1)+A003056(n)+1)` -/
def P10274264666879591430.Spec : Prop :=
  ∀ n, P10274264666879591430.a n = (A167374 n : ℚ)

end A167374

/-! ## A167374.P11739948953181208005

`char[∑[n-1]]-char[∑[n]-2]`
-/

namespace A167374.P11739948953181208005
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f4 j : ℕ) : ℤ) - 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) - ((if ∃ j, f3 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A167374.P11739948953181208005

namespace A167374

/-- `char[∑[n-1]]-char[∑[n]-2]` -/
def P11739948953181208005.Spec : Prop :=
  ∀ n, P11739948953181208005.a n = A167374 n

end A167374

/-! ## A167374.P8406008185251511586

`A101038(n)%2`
-/

namespace A167374.P8406008185251511586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A101038 n) 2

end

end A167374.P8406008185251511586

namespace A167374

/-- `A101038(n)%2` -/
def P8406008185251511586.Spec : Prop :=
  ∀ n, P8406008185251511586.a n = A167374 n

end A167374

/-! ## A167374.P4905987954133904996

`A186827(n)%2`
-/

namespace A167374.P4905987954133904996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A186827 n) 2

end

end A167374.P4905987954133904996

namespace A167374

/-- `A186827(n)%2` -/
def P4905987954133904996.Spec : Prop :=
  ∀ n, P4905987954133904996.a n = A167374 n

end A167374

/-! ## A167374.P8019460334737870516

`Δ[-A023531(n)]`
-/

namespace A167374.P8019460334737870516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A023531 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A167374.P8019460334737870516

namespace A167374

/-- `Δ[-A023531(n)]` -/
def P8019460334737870516.Spec : Prop :=
  ∀ n, P8019460334737870516.a n = A167374 n

end A167374

/-! ## A167374.P8318729733409434604

`-A103452(n+1)`
-/

namespace A167374.P8318729733409434604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A103452 (n + 1)

end

end A167374.P8318729733409434604

namespace A167374

/-- `-A103452(n+1)` -/
def P8318729733409434604.Spec : Prop :=
  ∀ n, P8318729733409434604.a n = A167374 n

end A167374

/-! ## A167374.P13084681220027723

`Δ[A123110(n+1)]`
-/

namespace A167374.P13084681220027723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123110 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A167374.P13084681220027723

namespace A167374

/-- `Δ[A123110(n+1)]` -/
def P13084681220027723.Spec : Prop :=
  ∀ n, P13084681220027723.a n = A167374 n

end A167374

/-! ## A167374.P16511263248285120807

`Δ[A238303(n+1)]`
-/

namespace A167374.P16511263248285120807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238303 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A167374.P16511263248285120807

namespace A167374

/-- `Δ[A238303(n+1)]` -/
def P16511263248285120807.Spec : Prop :=
  ∀ n, P16511263248285120807.a n = A167374 n

end A167374

/-! ## A167374.P15627975942578482845

`Δ[-A073424(n+1)]`
-/

namespace A167374.P15627975942578482845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A073424 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A167374.P15627975942578482845

namespace A167374

/-- `Δ[-A073424(n+1)]` -/
def P15627975942578482845.Spec : Prop :=
  ∀ n, P15627975942578482845.a n = A167374 n

end A167374

/-! ## A167374.P6686622704697737808

`ceil(1/(2-A099375(n)))`
-/

namespace A167374.P6686622704697737808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈1 / (2 - A099375 n : ℚ)⌉

end

end A167374.P6686622704697737808

namespace A167374

/-- `ceil(1/(2-A099375(n)))` -/
def P6686622704697737808.Spec : Prop :=
  ∀ n, P6686622704697737808.a n = A167374 n

end A167374

/-! ## A167374.P16600271395361201537

`ceil(1/(2-A130330(n)))`
-/

namespace A167374.P16600271395361201537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈1 / (2 - A130330 n : ℚ)⌉

end

end A167374.P16600271395361201537

namespace A167374

/-- `ceil(1/(2-A130330(n)))` -/
def P16600271395361201537.Spec : Prop :=
  ∀ n, P16600271395361201537.a n = A167374 n

end A167374

/-! ## A167374.P6517705748314323232

`Δ[gcd(2, A124927(n+1))]`
-/

namespace A167374.P6517705748314323232
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A124927 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A167374.P6517705748314323232

namespace A167374

/-- `Δ[gcd(2, A124927(n+1))]` -/
def P6517705748314323232.Spec : Prop :=
  ∀ n, P6517705748314323232.a n = A167374 n

end A167374

/-! ## A167374.P14732917759668990848

`Δ[and(1, A036561(n)+1)]`
-/

namespace A167374.P14732917759668990848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A036561 n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A167374.P14732917759668990848

namespace A167374

/-- `Δ[and(1, A036561(n)+1)]` -/
def P14732917759668990848.Spec : Prop :=
  ∀ n, P14732917759668990848.a n = A167374 n

end A167374

/-! ## A167374.P7072004972696571714

`-Δ[A003982(4*(n+1))]`
-/

namespace A167374.P7072004972696571714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 (4 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(f1 (n + 1) - f1 n)

end

end A167374.P7072004972696571714

namespace A167374

/-- `-Δ[A003982(4*(n+1))]` -/
def P7072004972696571714.Spec : Prop :=
  ∀ n, P7072004972696571714.a n = A167374 n

end A167374

/-! ## A167374.P13853195480933649356

`A185906(A027421(n))`
-/

namespace A167374.P13853195480933649356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185906 (A027421 n).toNat

end

end A167374.P13853195480933649356

namespace A167374

/-- `A185906(A027421(n))` -/
def P13853195480933649356.Spec : Prop :=
  ∀ n, P13853195480933649356.a n = A167374 n

end A167374

/-! ## A167374.P17892202464055879719

`A097806(n)*A097807(n)`
-/

namespace A167374.P17892202464055879719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097806 n * A097807 n

end

end A167374.P17892202464055879719

namespace A167374

/-- `A097806(n)*A097807(n)` -/
def P17892202464055879719.Spec : Prop :=
  ∀ n, P17892202464055879719.a n = A167374 n

end A167374

/-! ## A167374.P1478749558453113779

`A097806(n)*A106180(n)`
-/

namespace A167374.P1478749558453113779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097806 n * A106180 n

end

end A167374.P1478749558453113779

namespace A167374

/-- `A097806(n)*A106180(n)` -/
def P1478749558453113779.Spec : Prop :=
  ∀ n, P1478749558453113779.a n = A167374 n

end A167374

/-! ## A167374.P8907264126117910193

`A097806(n)*A106270(n)`
-/

namespace A167374.P8907264126117910193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097806 n * A106270 n

end

end A167374.P8907264126117910193

namespace A167374

/-- `A097806(n)*A106270(n)` -/
def P8907264126117910193.Spec : Prop :=
  ∀ n, P8907264126117910193.a n = A167374 n

end A167374

/-! ## A167374.P9950558994566750033

`A097806(n)*A110515(n)`
-/

namespace A167374.P9950558994566750033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097806 n * A110515 n

end

end A167374.P9950558994566750033

namespace A167374

/-- `A097806(n)*A110515(n)` -/
def P9950558994566750033.Spec : Prop :=
  ∀ n, P9950558994566750033.a n = A167374 n

end A167374

/-! ## A167374.P9729427285420807652

`A097806(n)*A117185(n)`
-/

namespace A167374.P9729427285420807652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097806 n * A117185 n

end

end A167374.P9729427285420807652

namespace A167374

/-- `A097806(n)*A117185(n)` -/
def P9729427285420807652.Spec : Prop :=
  ∀ n, P9729427285420807652.a n = A167374 n

end A167374

/-!
# A167375: a(n)=3*a(n-1)-a(n-2) with a(0)=1, a(1)=3, a(2)=11.

The programs for A167375, the canonical program `A167375.P17977076192969846111` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A167375 has offset 0).

The definition of A167375 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*a(n-1)-a(n-2)` (program `A167375.P17977076192969846111`, by `A167375.P17977076192969846111.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A167375.P17977076192969846111

`3*a(n-1)-a(n-2)` with `a(0)=1, a(1)=3, a(2)=11`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A167375

/-- `3*a(n-1)-a(n-2)` -/
def P17977076192969846111.Spec : Prop :=
  ∀ n, P17977076192969846111.a n = A167375 n

theorem P17977076192969846111.correct : P17977076192969846111.Spec := by
  intro n
  simp only [A167375]

end A167375

/-! ## A167375.P8211432719341068894

`a(n-1)+a(n-1)+a(n-1)-a(n-2)` with `a(0)=1, a(1)=3, a(2)=11`
-/

namespace A167375.P8211432719341068894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 11] fun n a =>
  a (n - 1) + (a (n - 1) + (a (n - 1) - a (n - 2)))

end

end A167375.P8211432719341068894

namespace A167375

/-- `a(n-1)+a(n-1)+a(n-1)-a(n-2)` -/
def P8211432719341068894.Spec : Prop :=
  ∀ n, P8211432719341068894.a n = A167375 n

theorem P8211432719341068894.correct : P8211432719341068894.Spec := by
  intro n
  simp only [A167375, Nat.add_sub_cancel, A167375.P8211432719341068894.a, A167375.P17977076192969846111.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A167375

/-! ## A167375.P13774689960724001758

`a(n-1)-(a(n-2)-a(n-1)-a(n-1))` with `a(0)=1, a(1)=3, a(2)=11`
-/

namespace A167375.P13774689960724001758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 11] fun n a =>
  a (n - 1) - (a (n - 2) - a (n - 1) - a (n - 1))

end

end A167375.P13774689960724001758

namespace A167375

/-- `a(n-1)-(a(n-2)-a(n-1)-a(n-1))` -/
def P13774689960724001758.Spec : Prop :=
  ∀ n, P13774689960724001758.a n = A167375 n

theorem P13774689960724001758.correct : P13774689960724001758.Spec := by
  intro n
  simp only [A167375, Nat.add_sub_cancel, A167375.P13774689960724001758.a, A167375.P17977076192969846111.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A167375

/-! ## A167375.P18076545268375085171

`A054888(n)-A052995(n)`
-/

namespace A167375.P18076545268375085171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054888 n - A052995 n

end

end A167375.P18076545268375085171

namespace A167375

/-- `A054888(n)-A052995(n)` -/
def P18076545268375085171.Spec : Prop :=
  ∀ n, P18076545268375085171.a n = A167375 n

end A167375

/-! ## A167375.P716092723108613990

`A097134(n)+A192908(n)-1`
-/

namespace A167375.P716092723108613990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097134 n + (A192908 n - 1)

end

end A167375.P716092723108613990

namespace A167375

/-- `A097134(n)+A192908(n)-1` -/
def P716092723108613990.Spec : Prop :=
  ∀ n, P716092723108613990.a n = A167375 n

end A167375

/-! ## A167375.P3189092127723611224

`A001354(n)-A006355(A103517(n))`
-/

namespace A167375.P3189092127723611224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001354 n - A006355 (A103517 n).toNat

end

end A167375.P3189092127723611224

namespace A167375

/-- `A001354(n)-A006355(A103517(n))` -/
def P3189092127723611224.Spec : Prop :=
  ∀ n, P3189092127723611224.a n = A167375 n

end A167375

/-! ## A167375.P1510260586727255031

`A229339(A008574(n))-A052995(n)`
-/

namespace A167375.P1510260586727255031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229339 (A008574 n).toNat - A052995 n

end

end A167375.P1510260586727255031

namespace A167375

/-- `A229339(A008574(n))-A052995(n)` -/
def P1510260586727255031.Spec : Prop :=
  ∀ n, P1510260586727255031.a n = A167375 n

end A167375

/-! ## A167375.P6940519774930884215

`A099857(n)-A303427(A008574(n))`
-/

namespace A167375.P6940519774930884215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099857 n - A303427 (A008574 n).toNat

end

end A167375.P6940519774930884215

namespace A167375

/-- `A099857(n)-A303427(A008574(n))` -/
def P6940519774930884215.Spec : Prop :=
  ∀ n, P6940519774930884215.a n = A167375 n

end A167375

/-! ## A167375.P15079900579063161476

`record[A022095(A014681(n))-A022086(n)]`
-/

namespace A167375.P15079900579063161476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022095 (A014681 n).toNat - A022086 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A167375.P15079900579063161476

namespace A167375

/-- `record[A022095(A014681(n))-A022086(n)]` -/
def P15079900579063161476.Spec : Prop :=
  ∀ n, P15079900579063161476.a n = A167375 n

end A167375

/-! ## A167375.P17274083107077949565

`A022095(2*n)-A022086(A014681(2*n))`
-/

namespace A167375.P17274083107077949565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022095 (2 * n) - A022086 (A014681 (2 * n)).toNat

end

end A167375.P17274083107077949565

namespace A167375

/-- `A022095(2*n)-A022086(A014681(2*n))` -/
def P17274083107077949565.Spec : Prop :=
  ∀ n, P17274083107077949565.a n = A167375 n

end A167375

/-! ## A167375.P10860129858189861640

`A055850(n)%Δ[A002878(n)]`
-/

namespace A167375.P10860129858189861640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002878 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A055850 n) (f1 (n + 1) - f1 n)

end

end A167375.P10860129858189861640

namespace A167375

/-- `A055850(n)%Δ[A002878(n)]` -/
def P10860129858189861640.Spec : Prop :=
  ∀ n, P10860129858189861640.a n = A167375 n

end A167375

/-! ## A167375.P9629340950225013709

`A022130(2*n)%A013655(2*n)`
-/

namespace A167375.P9629340950225013709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A022130 (2 * n)) (A013655 (2 * n))

end

end A167375.P9629340950225013709

namespace A167375

/-- `A022130(2*n)%A013655(2*n)` -/
def P9629340950225013709.Spec : Prop :=
  ∀ n, P9629340950225013709.a n = A167375 n

end A167375

/-! ## A167375.P18128378598615800387

`A022098(2*n)%A022086(2*n+1)`
-/

namespace A167375.P18128378598615800387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A022098 (2 * n)) (A022086 (2 * n + 1))

end

end A167375.P18128378598615800387

namespace A167375

/-- `A022098(2*n)%A022086(2*n+1)` -/
def P18128378598615800387.Spec : Prop :=
  ∀ n, P18128378598615800387.a n = A167375 n

end A167375

/-! ## A167375.P3877110351096628481

`A022323(2*n)%A022308(2*n+1)`
-/

namespace A167375.P3877110351096628481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A022323 (2 * n)) (A022308 (2 * n + 1))

end

end A167375.P3877110351096628481

namespace A167375

/-- `A022323(2*n)%A022308(2*n+1)` -/
def P3877110351096628481.Spec : Prop :=
  ∀ n, P3877110351096628481.a n = A167375 n

end A167375

/-! ## A167375.P1295540793084611937

`A022100(A005843(n))%A052952(2*(n+1))`
-/

namespace A167375.P1295540793084611937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A022100 (A005843 n).toNat) (A052952 (2 * (n + 1)))

end

end A167375.P1295540793084611937

namespace A167375

/-- `A022100(A005843(n))%A052952(2*(n+1))` -/
def P1295540793084611937.Spec : Prop :=
  ∀ n, P1295540793084611937.a n = A167375 n

end A167375

/-! ## A167375.P8306045529208842609

`A022106(2*n+1)%A013655(2*n)`
-/

namespace A167375.P8306045529208842609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A022106 (2 * n + 1)) (A013655 (2 * n))

end

end A167375.P8306045529208842609

namespace A167375

/-- `A022106(2*n+1)%A013655(2*n)` -/
def P8306045529208842609.Spec : Prop :=
  ∀ n, P8306045529208842609.a n = A167375 n

end A167375

/-! ## A167375.P8421410722313774506

`A185691(2*n)%A000204(2*(n+1))`
-/

namespace A167375.P8421410722313774506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A185691 (2 * n)) (A000204 (2 * (n + 1)))

end

end A167375.P8421410722313774506

namespace A167375

/-- `A185691(2*n)%A000204(2*(n+1))` -/
def P8421410722313774506.Spec : Prop :=
  ∀ n, P8421410722313774506.a n = A167375 n

end A167375

/-!
# A167376: Complement of the partition numbers.

The programs for A167376, there is no canonical definition to state claims against.
-/

/-! ## A167376.P2603991274837965886

`comp[A000041(n)]`
-/

namespace A167376.P2603991274837965886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A167376.P2603991274837965886

/-! ## A167376.P13834243847759757277

`comp[A059982(n)]`
-/

namespace A167376.P13834243847759757277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059982 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A167376.P13834243847759757277

/-! ## A167376.P2743525121705920292

`comp[A119620(n)]`
-/

namespace A167376.P2743525121705920292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119620 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A167376.P2743525121705920292

/-! ## A167376.P5731909417437828222

`comp[A140207(n)]`
-/

namespace A167376.P5731909417437828222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140207 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A167376.P5731909417437828222

/-! ## A167376.P5602909578054917091

`comp[A173238(n)]`
-/

namespace A167376.P5602909578054917091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173238 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A167376.P5602909578054917091

/-! ## A167376.P219438227786292213

`comp[A213598(n)]`
-/

namespace A167376.P219438227786292213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213598 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A167376.P219438227786292213

/-! ## A167376.P15446316124231911965

`comp[∑[A002865(n)]]`
-/

namespace A167376.P15446316124231911965
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A167376.P15446316124231911965

/-! ## A167376.P13634386692291992648

`comp[A238343(∑[n])]`
-/

namespace A167376.P13634386692291992648
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238343 (∑ j ∈ Finset.range (n + 1), f2 j)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A167376.P13634386692291992648

/-! ## A167376.P10336348782672690034

`comp[record[A035363(n)]]`
-/

namespace A167376.P10336348782672690034
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A167376.P10336348782672690034

/-! ## A167376.P2975213590215341635

`comp[record[A035377(n)]]`
-/

namespace A167376.P2975213590215341635
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035377 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A167376.P2975213590215341635

/-! ## A167376.P13798955685587888674

`comp[A000065(n)+1]`
-/

namespace A167376.P13798955685587888674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000065 n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A167376.P13798955685587888674

/-! ## A167376.P10311046920486335737

`comp[A027293(n+1)]`
-/

namespace A167376.P10311046920486335737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027293 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A167376.P10311046920486335737

/-! ## A167376.P12627887589612086407

`comp[A072871(n+1)]`
-/

namespace A167376.P12627887589612086407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072871 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A167376.P12627887589612086407

/-! ## A167376.P6082954260689615878

`comp[A092080(n+1)]`
-/

namespace A167376.P6082954260689615878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092080 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A167376.P6082954260689615878

/-! ## A167376.P10828279455682371604

`comp[A168017(n+1)]`
-/

namespace A167376.P10828279455682371604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168017 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A167376.P10828279455682371604

/-! ## A167376.P14708613250271179975

`comp[A035363(2*n)]`
-/

namespace A167376.P14708613250271179975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 (2 * n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A167376.P14708613250271179975

/-! ## A167376.P5012051179206792167

`comp[A035444(4*n)]`
-/

namespace A167376.P5012051179206792167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035444 (4 * n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A167376.P5012051179206792167

/-! ## A167376.P7489542034468006232

`comp[A072233(2*n²)]`
-/

namespace A167376.P7489542034468006232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072233 (2 * n ^ 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A167376.P7489542034468006232

/-! ## A167376.P1297788234505537012

`comp[A058399(∑[n]+1)]`
-/

namespace A167376.P1297788234505537012
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058399 (∑ j ∈ Finset.range (n + 1), f2 j + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A167376.P1297788234505537012

/-!
# A167377: Complement of the range of A000009.

The programs for A167377, there is no canonical definition to state claims against.
-/

/-! ## A167377.P3054038640182909641

`comp[A000009(n)]`
-/

namespace A167377.P3054038640182909641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A167377.P3054038640182909641

/-! ## A167377.P13327378006295220324

`comp[A172033(n)]`
-/

namespace A167377.P13327378006295220324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172033 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A167377.P13327378006295220324

/-! ## A167377.P17485370365133076088

`comp[A173305(n)]`
-/

namespace A167377.P17485370365133076088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173305 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A167377.P17485370365133076088

/-! ## A167377.P7570159066720729710

`comp[A219347(n)]`
-/

namespace A167377.P7570159066720729710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A167377.P7570159066720729710

/-! ## A167377.P14386851947111500024

`comp[abs(A081360(n))]`
-/

namespace A167377.P14386851947111500024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A081360 n|

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A167377.P14386851947111500024

/-! ## A167377.P15095140414986750288

`comp[A054242(∑[n])]`
-/

namespace A167377.P15095140414986750288
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054242 (∑ j ∈ Finset.range (n + 1), f2 j)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A167377.P15095140414986750288

/-! ## A167377.P13064597042486423051

`comp[∑[A087897(n)]]`
-/

namespace A167377.P13064597042486423051
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087897 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A167377.P13064597042486423051

/-! ## A167377.P2631596303804063727

`comp[A284593(∑[n])]`
-/

namespace A167377.P2631596303804063727
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284593 (∑ j ∈ Finset.range (n + 1), f2 j)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A167377.P2631596303804063727

/-! ## A167377.P12470751660116531032

`comp[A364916(∑[n])]`
-/

namespace A167377.P12470751660116531032
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364916 (∑ j ∈ Finset.range (n + 1), f2 j)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A167377.P12470751660116531032

/-! ## A167377.P15093730037610674277

`comp[Δ[A035457(n)]]`
-/

namespace A167377.P15093730037610674277
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035457 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A167377.P15093730037610674277

/-! ## A167377.P141884133594738747

`comp[A111133(n)+1]`
-/

namespace A167377.P141884133594738747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111133 n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A167377.P141884133594738747

/-! ## A167377.P9513458163143614025

`comp[A117409(n+3)]`
-/

namespace A167377.P9513458163143614025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117409 (n + 3)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A167377.P9513458163143614025

/-! ## A167377.P3631668112610443110

`comp[A035457(2*n)]`
-/

namespace A167377.P3631668112610443110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035457 (2 * n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A167377.P3631668112610443110

/-! ## A167377.P320860983615747488

`comp[A059607(2*n²)]`
-/

namespace A167377.P320860983615747488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059607 (2 * n ^ 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A167377.P320860983615747488

/-! ## A167377.P6654953178493060442

`comp[A079126(∑[n+2])]`
-/

namespace A167377.P6654953178493060442
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079126 (∑ j ∈ Finset.range (n + 1), f2 j)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A167377.P6654953178493060442

/-! ## A167377.P14844234405321098183

`comp[record[A261554(n+1)]]`
-/

namespace A167377.P14844234405321098183
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261554 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A167377.P14844234405321098183

/-! ## A167377.P17762168295794656780

`comp[A052839(n+1)-1]`
-/

namespace A167377.P17762168295794656780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052839 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A167377.P17762168295794656780

/-! ## A167377.P14000777462400683224

`comp[A318286(A000040(n+1))]`
-/

namespace A167377.P14000777462400683224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318286 (A000040 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A167377.P14000777462400683224

/-! ## A167377.P12497581554038645442

`comp[A000041(n)-A047967(n)]`
-/

namespace A167377.P12497581554038645442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A047967 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A167377.P12497581554038645442

/-! ## A167377.P11543823799391731570

`comp[∑[A002865(n)]-A047967(n)]`
-/

namespace A167377.P11543823799391731570
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A047967 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A167377.P11543823799391731570

/-!
# A167379: Let p and q be twin primes, excluding the pair (3,5). Then p+q is always divisible by 6 and we set a(n) = (p+q)/6.

The programs for A167379, the canonical program `A167379.P16470544176518882026` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A167379 has offset 1).

The definition of A167379 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002822, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A167379.P16470544176518882026

`2*A002822(n+1)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A167379

/-- `2*A002822(n+1)` -/
def P16470544176518882026.Spec : Prop :=
  ∀ n, P16470544176518882026.a n = A167379 (n + 1)

theorem P16470544176518882026.correct : P16470544176518882026.Spec := by
  intro n
  simp only [A167379, Nat.add_sub_cancel]

end A167379

/-! ## A167379.P16910252261506398918

`(1+A001359(n+2))/3`
-/

namespace A167379.P16910252261506398918
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 + A001359 (n + 2) : ℚ) / 3

end

end A167379.P16910252261506398918

namespace A167379

/-- `(1+A001359(n+2))/3` -/
def P16910252261506398918.Spec : Prop :=
  ∀ n, P16910252261506398918.a n = (A167379 (n + 1) : ℚ)

end A167379

/-! ## A167379.P16701135822770747594

`A177139(n+1)-1`
-/

namespace A167379.P16701135822770747594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177139 (n + 1) - 1

end

end A167379.P16701135822770747594

namespace A167379

/-- `A177139(n+1)-1` -/
def P16701135822770747594.Spec : Prop :=
  ∀ n, P16701135822770747594.a n = A167379 (n + 1)

end A167379

/-! ## A167379.P4324183874552683624

`sqrt(A165280(n+1)/3)`
-/

namespace A167379.P4324183874552683624
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((A165280 (n + 1) : ℚ) / 3 : ℝ)

end

end A167379.P4324183874552683624

namespace A167379

/-- `sqrt(A165280(n+1)/3)` -/
def P4324183874552683624.Spec : Prop :=
  ∀ n, P4324183874552683624.a n = (A167379 (n + 1) : ℝ)

end A167379

/-! ## A167379.P6710281298757576872

`ceil(A001359(n+2)/3)`
-/

namespace A167379.P6710281298757576872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A001359 (n + 2) : ℚ) / 3⌉

end

end A167379.P6710281298757576872

namespace A167379

/-- `ceil(A001359(n+2)/3)` -/
def P6710281298757576872.Spec : Prop :=
  ∀ n, P6710281298757576872.a n = A167379 (n + 1)

end A167379

/-! ## A167379.P2026991124359050724

`(A172057(n+1)-1)/3`
-/

namespace A167379.P2026991124359050724
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A172057 (n + 1) - 1 : ℚ) / 3

end

end A167379.P2026991124359050724

namespace A167379

/-- `(A172057(n+1)-1)/3` -/
def P2026991124359050724.Spec : Prop :=
  ∀ n, P2026991124359050724.a n = (A167379 (n + 1) : ℚ)

end A167379

/-! ## A167379.P18100646095262146066

`a(n-1)+2*A160273(n)` with `a(0)=2`
-/

namespace A167379.P18100646095262146066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) + 2 * A160273 n

end

end A167379.P18100646095262146066

namespace A167379

/-- `a(n-1)+2*A160273(n)` -/
def P18100646095262146066.Spec : Prop :=
  ∀ n, P18100646095262146066.a n = A167379 (n + 1)

end A167379

/-! ## A167379.P15338629182086410732

`∑[2*A008612(A167132(n+1))]`
-/

namespace A167379.P15338629182086410732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008612 (A167132 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A167379.P15338629182086410732

namespace A167379

/-- `∑[2*A008612(A167132(n+1))]` -/
def P15338629182086410732.Spec : Prop :=
  ∀ n, P15338629182086410732.a n = A167379 (n + 1)

end A167379

/-! ## A167379.P17950421331116842828

`A040040(n+2)-A002822(n+1)`
-/

namespace A167379.P17950421331116842828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040040 (n + 2) - A002822 (n + 1)

end

end A167379.P17950421331116842828

namespace A167379

/-- `A040040(n+2)-A002822(n+1)` -/
def P17950421331116842828.Spec : Prop :=
  ∀ n, P17950421331116842828.a n = A167379 (n + 1)

end A167379

/-! ## A167379.P16714971586826822190

`A014574(n+2)/3`
-/

namespace A167379.P16714971586826822190
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014574 (n + 2) : ℚ) / 3

end

end A167379.P16714971586826822190

namespace A167379

/-- `A014574(n+2)/3` -/
def P16714971586826822190.Spec : Prop :=
  ∀ n, P16714971586826822190.a n = (A167379 (n + 1) : ℚ)

end A167379

/-! ## A167379.P10394481073050328861

`A054735(n+2)/6`
-/

namespace A167379.P10394481073050328861
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054735 (n + 2) : ℚ) / 6

end

end A167379.P10394481073050328861

namespace A167379

/-- `A054735(n+2)/6` -/
def P10394481073050328861.Spec : Prop :=
  ∀ n, P10394481073050328861.a n = (A167379 (n + 1) : ℚ)

end A167379

/-! ## A167379.P5649565294273938299

`sqrt(A075369(n+2))/3`
-/

namespace A167379.P5649565294273938299
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A075369 (n + 2) : ℝ) / 3

end

end A167379.P5649565294273938299

namespace A167379

/-- `sqrt(A075369(n+2))/3` -/
def P5649565294273938299.Spec : Prop :=
  ∀ n, P5649565294273938299.a n = (A167379 (n + 1) : ℝ)

end A167379

/-! ## A167379.P12592121623658329144

`floor(A006512(n+2)/3)`
-/

namespace A167379.P12592121623658329144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A006512 (n + 2) : ℚ) / 3⌋

end

end A167379.P12592121623658329144

namespace A167379

/-- `floor(A006512(n+2)/3)` -/
def P12592121623658329144.Spec : Prop :=
  ∀ n, P12592121623658329144.a n = A167379 (n + 1)

end A167379

/-! ## A167379.P25312241732863387

`(A144834(n+2)+2)/3`
-/

namespace A167379.P25312241732863387
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A144834 (n + 2) + 2 : ℚ) / 3

end

end A167379.P25312241732863387

namespace A167379

/-- `(A144834(n+2)+2)/3` -/
def P25312241732863387.Spec : Prop :=
  ∀ n, P25312241732863387.a n = (A167379 (n + 1) : ℚ)

end A167379

/-! ## A167379.P12193046059862753473

`2/A037074(n+2)*A126249(n+2)`
-/

namespace A167379.P12193046059862753473
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (A037074 (n + 2) : ℚ) * (A126249 (n + 2) : ℚ)

end

end A167379.P12193046059862753473

namespace A167379

/-- `2/A037074(n+2)*A126249(n+2)` -/
def P12193046059862753473.Spec : Prop :=
  ∀ n, P12193046059862753473.a n = (A167379 (n + 1) : ℚ)

end A167379

/-! ## A167379.P17138136101979176159

`A002822(n+1)+A002822(n+2)-A160273(n+1)`
-/

namespace A167379.P17138136101979176159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002822 (n + 1) + (A002822 (n + 2) - A160273 (n + 1))

end

end A167379.P17138136101979176159

namespace A167379

/-- `A002822(n+1)+A002822(n+2)-A160273(n+1)` -/
def P17138136101979176159.Spec : Prop :=
  ∀ n, P17138136101979176159.a n = A167379 (n + 1)

end A167379

/-! ## A167379.P17808121637071804588

`A163656(2*(n+1))/3`
-/

namespace A167379.P17808121637071804588
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A163656 (2 * (n + 1)) : ℚ) / 3

end

end A167379.P17808121637071804588

namespace A167379

/-- `A163656(2*(n+1))/3` -/
def P17808121637071804588.Spec : Prop :=
  ∀ n, P17808121637071804588.a n = (A167379 (n + 1) : ℚ)

end A167379

/-! ## A167379.P4096409901822184076

`record[2*A002822(A126759(n))]`
-/

namespace A167379.P4096409901822184076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A002822 (A126759 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A167379.P4096409901822184076

namespace A167379

/-- `record[2*A002822(A126759(n))]` -/
def P4096409901822184076.Spec : Prop :=
  ∀ n, P4096409901822184076.a n = A167379 (n + 1)

end A167379

/-! ## A167379.P5771988441834560430

`∩[A024892(n+1), A087370(n+1)]`
-/

namespace A167379.P5771988441834560430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024892 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087370 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167379.P5771988441834560430

namespace A167379

/-- `∩[A024892(n+1), A087370(n+1)]` -/
def P5771988441834560430.Spec : Prop :=
  ∀ n, (P5771988441834560430.a n : ℤ) = A167379 (n + 1)

end A167379

/-! ## A167379.P3756063720913041436

`∩[A024892(n+1), A391352(n+1)]`
-/

namespace A167379.P3756063720913041436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024892 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391352 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167379.P3756063720913041436

namespace A167379

/-- `∩[A024892(n+1), A391352(n+1)]` -/
def P3756063720913041436.Spec : Prop :=
  ∀ n, (P3756063720913041436.a n : ℤ) = A167379 (n + 1)

end A167379

/-!
# A167380: a(1)=1, a(2)=2, and continued periodically with 4, 5, 1, -4, -5, -1 .

The programs for A167380, the canonical program `A167380.P9204121336665136473` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A167380 has offset 1).

The definition of A167380 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A167380.P9204121336665136473

`a(n-1)-a(n-2)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=5`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A167380

/-- `a(n-1)-a(n-2)` -/
def P9204121336665136473.Spec : Prop :=
  ∀ n, P9204121336665136473.a n = A167380 (n + 1)

theorem P9204121336665136473.correct : P9204121336665136473.Spec := by
  intro n
  simp only [A167380, Nat.add_sub_cancel]

end A167380

/-!
# A167381: The numbers read down the left-center column of an arrangement of the natural numbers in square blocks.

The programs for A167381, the canonical program `A167381.P11510866070179525017` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A167381 has offset 1).

The definition of A167381 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A167381.P7560665474400221345

`∑[round(round(sqrt(n+1))+sqrt(n))]`
-/

namespace A167381.P7560665474400221345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((SequenceMachineLib.roundAway (Real.sqrt (n + 1 : ℝ)) : ℝ) + Real.sqrt (n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A167381.P7560665474400221345

namespace A167381

/-- `∑[round(round(sqrt(n+1))+sqrt(n))]` -/
def P7560665474400221345.Spec : Prop :=
  ∀ n, P7560665474400221345.a n = A167381 (n + 1)

end A167381

/-! ## A167381.P11510866070179525017

`ceil(∑[a(n-a(n-2))+2])` with `a(0)=1, a(1)=2, a(2)=3`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A167381

/-- `ceil(∑[a(n-a(n-2))+2])` -/
def P11510866070179525017.Spec : Prop :=
  ∀ n, (P11510866070179525017.a n : ℤ) = A167381 (n + 1)

theorem P11510866070179525017.correct : P11510866070179525017.Spec := by
  intro n
  simp only [A167381, Nat.add_sub_cancel]

end A167381

/-! ## A167381.P1534536786319271607

`round(∑[a(n-a(n-2))+2])` with `a(0)=1, a(1)=2, a(2)=3`

`round` is left out, it is the identity on integers.
-/

namespace A167381.P1534536786319271607
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 3] fun n f1 =>
  f1 (n - f1 (n - 2)) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A167381.P1534536786319271607

namespace A167381

/-- `round(∑[a(n-a(n-2))+2])` -/
def P1534536786319271607.Spec : Prop :=
  ∀ n, (P1534536786319271607.a n : ℤ) = A167381 (n + 1)

theorem P1534536786319271607.correct : P1534536786319271607.Spec := by
  intro n
  simp only [A167381, Nat.add_sub_cancel, A167381.P1534536786319271607.f1, A167381.P1534536786319271607.a, A167381.P11510866070179525017.f1, A167381.P11510866070179525017.a, SequenceMachineLib.memo_apply]

end A167381

/-! ## A167381.P10507613534709136069

`A167991(n)+a(n-1)` with `a(0)=1`
-/

namespace A167381.P10507613534709136069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A167991 n + a (n - 1)

end

end A167381.P10507613534709136069

namespace A167381

/-- `A167991(n)+a(n-1)` -/
def P10507613534709136069.Spec : Prop :=
  ∀ n, P10507613534709136069.a n = A167381 (n + 1)

end A167381

/-! ## A167381.P4692272513367292932

`A284359(n)+a(n-1)` with `a(0)=1`
-/

namespace A167381.P4692272513367292932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A284359 n + a (n - 1)

end

end A167381.P4692272513367292932

namespace A167381

/-- `A284359(n)+a(n-1)` -/
def P4692272513367292932.Spec : Prop :=
  ∀ n, P4692272513367292932.a n = A167381 (n + 1)

end A167381

/-! ## A167381.P866030270008247887

`A342711(n)+A080344(n)`
-/

namespace A167381.P866030270008247887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342711 n + A080344 n

end

end A167381.P866030270008247887

namespace A167381

/-- `A342711(n)+A080344(n)` -/
def P866030270008247887.Spec : Prop :=
  ∀ n, P866030270008247887.a n = A167381 (n + 1)

end A167381

/-! ## A167381.P11316254300187720440

`(A004442(n)-n)²*∑[A284359(n)]`
-/

namespace A167381.P11316254300187720440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284359 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004442 n - (n : ℤ)) ^ 2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A167381.P11316254300187720440

namespace A167381

/-- `(A004442(n)-n)²*∑[A284359(n)]` -/
def P11316254300187720440.Spec : Prop :=
  ∀ n, P11316254300187720440.a n = A167381 (n + 1)

end A167381

/-! ## A167381.P5597388460108844363

`∑[∑[A073424(A004526(n))]]+2*n+1`
-/

namespace A167381.P5597388460108844363
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073424 (A004526 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (2 * n + 1 : ℤ)

end

end A167381.P5597388460108844363

namespace A167381

/-- `∑[∑[A073424(A004526(n))]]+2*n+1` -/
def P5597388460108844363.Spec : Prop :=
  ∀ n, P5597388460108844363.a n = A167381 (n + 1)

end A167381

/-! ## A167381.P15385123545880721894

`A165453(n+1)+A165453(n)`
-/

namespace A167381.P15385123545880721894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165453 (n + 1) + A165453 n

end

end A167381.P15385123545880721894

namespace A167381

/-- `A165453(n+1)+A165453(n)` -/
def P15385123545880721894.Spec : Prop :=
  ∀ n, P15385123545880721894.a n = A167381 (n + 1)

end A167381

/-! ## A167381.P9779432251595120782

`∑[A001650(A000037(n+1))]-A000037(n+1)`
-/

namespace A167381.P9779432251595120782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001650 (A000037 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A000037 (n + 1)

end

end A167381.P9779432251595120782

namespace A167381

/-- `∑[A001650(A000037(n+1))]-A000037(n+1)` -/
def P9779432251595120782.Spec : Prop :=
  ∀ n, P9779432251595120782.a n = A167381 (n + 1)

end A167381

/-! ## A167381.P17864620303792901716

`∑[eq[1, A267704(n+1)]]-∑[n]`
-/

namespace A167381.P17864620303792901716
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267704 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ((∑ j ∈ Finset.range (n + 1), f4 j : ℕ) : ℤ)

end

end A167381.P17864620303792901716

namespace A167381

/-- `∑[eq[1, A267704(n+1)]]-∑[n]` -/
def P17864620303792901716.Spec : Prop :=
  ∀ n, P17864620303792901716.a n = A167381 (n + 1)

end A167381

/-! ## A167381.P13868171982980358153

`A000027(∑[A284359(n)])`
-/

namespace A167381.P13868171982980358153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284359 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A167381.P13868171982980358153

namespace A167381

/-- `A000027(∑[A284359(n)])` -/
def P13868171982980358153.Spec : Prop :=
  ∀ n, P13868171982980358153.a n = A167381 (n + 1)

end A167381

/-! ## A167381.P7652350957236645619

`∑[A100795(2*(n+1))]-A000194(n+1)`
-/

namespace A167381.P7652350957236645619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100795 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A000194 (n + 1)

end

end A167381.P7652350957236645619

namespace A167381

/-- `∑[A100795(2*(n+1))]-A000194(n+1)` -/
def P7652350957236645619.Spec : Prop :=
  ∀ n, P7652350957236645619.a n = A167381 (n + 1)

end A167381

/-!
# A167383: Entropy like stair step sequence based on A008185: a(n)=a(n-1)+Ceiling[ -(A008185[n + 2]/A008185[n + 1])*Log[(A008185[n + 2]/A008185[n + 1])]/Log[2]].

The programs for A167383, there is no canonical definition to state claims against.
-/

/-! ## A167383.P10723530417934809451

`∑[(floor(ratio[A005185(n+1)])+1)%2]`
-/

namespace A167383.P10723530417934809451
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005185 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (⌊(f2 (n + 1) : ℚ) / (f2 n : ℚ)⌋ + 1) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A167383.P10723530417934809451

/-! ## A167383.P16081516487103680270

`∑[floor(A081827(n+1)/A000041(n))²]`
-/

namespace A167383.P16081516487103680270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A081827 (n + 1) : ℚ) / (A000041 n : ℚ)⌋ ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A167383.P16081516487103680270

/-! ## A167383.P7090395825730560554

`∑[floor(A081827(n+1)/A005185(n+1))²]`
-/

namespace A167383.P7090395825730560554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A081827 (n + 1) : ℚ) / (A005185 (n + 1) : ℚ)⌋ ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A167383.P7090395825730560554

/-! ## A167383.P6495351123705341597

`ceil(A339617(n)/A276024(n+1))`
-/

namespace A167383.P6495351123705341597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A339617 n : ℚ) / (A276024 (n + 1) : ℚ)⌉

end

end A167383.P6495351123705341597

/-! ## A167383.P16322379036719543287

`A178489(A056635(n+2))`
-/

namespace A167383.P16322379036719543287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178489 (A056635 (n + 2)).toNat

end

end A167383.P16322379036719543287

/-!
# A167384: Irregular table with the left half of the array described in A167381.

The programs for A167384, there is no canonical definition to state claims against.
-/

/-! ## A167384.P17420809014604872843

`∑[A167413(abs(1-n))]-1`
-/

namespace A167384.P17420809014604872843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167413 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A167384.P17420809014604872843

/-! ## A167384.P8719870611024410476

`A167413(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A167384.P8719870611024410476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A167413 (n - 1) + a (n - 1)

end

end A167384.P8719870611024410476

/-! ## A167384.P17715593949053353493

`A167413(n-1)-A001489(a(n-1))` with `a(0)=1`
-/

namespace A167384.P17715593949053353493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A167413 (n - 1) - A001489 (a (n - 1)).toNat

end

end A167384.P17715593949053353493

/-! ## A167384.P12015615544410448445

`∑[A167413(n-1)-A083894(a(n-1))]` with `a(0)=1`
-/

namespace A167384.P12015615544410448445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A167413 (n - 1) - A083894 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A167384.P12015615544410448445

/-! ## A167384.P932841581886867589

`A114637(∑[A167413(n)])-A167413(n)`
-/

namespace A167384.P932841581886867589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167413 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114637 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - A167413 n

end

end A167384.P932841581886867589

/-! ## A167384.P17266645911810674339

`∑[A167413(A028310(n)-1)-A000007(n)]`
-/

namespace A167384.P17266645911810674339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167413 (A028310 n - 1).toNat - A000007 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A167384.P17266645911810674339

/-!
# A167385: a(n)= sum_{i=7..n+6} A000931(i).

The programs for A167385, the canonical program `A167385.P16697247258437742402` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A167385 has offset 0).

The definition of A167385 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A167385.P16697247258437742402

`A000931(n+12)-4`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A167385

/-- `A000931(n+12)-4` -/
def P16697247258437742402.Spec : Prop :=
  ∀ n, P16697247258437742402.a n = A167385 n

theorem P16697247258437742402.correct : P16697247258437742402.Spec := by
  intro n
  simp only [A167385]

end A167385

/-! ## A167385.P13079004290966053623

`a(n-1)+a(n-2)-a(n-4)` with `a(0)=1, a(1)=3, a(2)=5, a(3)=8`
-/

namespace A167385.P13079004290966053623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 5, 8] fun n a =>
  a (n - 1) + a (n - 2) - a (n - 4)

end

end A167385.P13079004290966053623

namespace A167385

/-- `a(n-1)+a(n-2)-a(n-4)` -/
def P13079004290966053623.Spec : Prop :=
  ∀ n, P13079004290966053623.a n = A167385 n

end A167385

/-! ## A167385.P12032104454326445953

`∑[a(n-2)+a(n-3)]` with `a(0)=1, a(1)=2, a(2)=2`
-/

namespace A167385.P12032104454326445953
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 2] fun n f1 =>
  f1 (n - 2) + f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A167385.P12032104454326445953

namespace A167385

/-- `∑[a(n-2)+a(n-3)]` -/
def P12032104454326445953.Spec : Prop :=
  ∀ n, (P12032104454326445953.a n : ℤ) = A167385 n

end A167385

/-! ## A167385.P2646275443162729169

`a(n-2)+a(n-3)+4` with `a(0)=1, a(1)=3, a(2)=5`
-/

namespace A167385.P2646275443162729169
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 5] fun n a =>
  a (n - 2) + (a (n - 3) + 4)

end

end A167385.P2646275443162729169

namespace A167385

/-- `a(n-2)+a(n-3)+4` -/
def P2646275443162729169.Spec : Prop :=
  ∀ n, (P2646275443162729169.a n : ℤ) = A167385 n

end A167385

/-! ## A167385.P14710817133860570710

`∑[a(n-1)-(a(n-4)-a(n-2))]` with `a(0)=1, a(1)=2, a(2)=2, a(3)=3`
-/

namespace A167385.P14710817133860570710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 2, 3] fun n f1 =>
  f1 (n - 1) - (f1 (n - 4) - f1 (n - 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A167385.P14710817133860570710

namespace A167385

/-- `∑[a(n-1)-(a(n-4)-a(n-2))]` -/
def P14710817133860570710.Spec : Prop :=
  ∀ n, P14710817133860570710.a n = A167385 n

end A167385

/-! ## A167385.P5541989490805571463

`∑[A023434(n)+1]`
-/

namespace A167385.P5541989490805571463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023434 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A167385.P5541989490805571463

namespace A167385

/-- `∑[A023434(n)+1]` -/
def P5541989490805571463.Spec : Prop :=
  ∀ n, P5541989490805571463.a n = A167385 n

end A167385

/-! ## A167385.P16228778064326658305

`∑[A228361(n+2)]`
-/

namespace A167385.P16228778064326658305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228361 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A167385.P16228778064326658305

namespace A167385

/-- `∑[A228361(n+2)]` -/
def P16228778064326658305.Spec : Prop :=
  ∀ n, P16228778064326658305.a n = A167385 n

end A167385

/-! ## A167385.P518862804667864615

`∑[A134816(n+3)]`
-/

namespace A167385.P518862804667864615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134816 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A167385.P518862804667864615

namespace A167385

/-- `∑[A134816(n+3)]` -/
def P518862804667864615.Spec : Prop :=
  ∀ n, P518862804667864615.a n = A167385 n

end A167385

/-! ## A167385.P768158774524222031

`∑[A182097(n+4)]`
-/

namespace A167385.P768158774524222031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182097 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A167385.P768158774524222031

namespace A167385

/-- `∑[A182097(n+4)]` -/
def P768158774524222031.Spec : Prop :=
  ∀ n, P768158774524222031.a n = A167385 n

end A167385

/-! ## A167385.P15780025976267795374

`∑[A000931(n+7)]`
-/

namespace A167385.P15780025976267795374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000931 (n + 7)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A167385.P15780025976267795374

namespace A167385

/-- `∑[A000931(n+7)]` -/
def P15780025976267795374.Spec : Prop :=
  ∀ n, P15780025976267795374.a n = A167385 n

end A167385

/-! ## A167385.P15723321818961718560

`∑[abs(Δ[A164315(n)])]`
-/

namespace A167385.P15723321818961718560
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164315 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A167385.P15723321818961718560

namespace A167385

/-- `∑[abs(Δ[A164315(n)])]` -/
def P15723321818961718560.Spec : Prop :=
  ∀ n, P15723321818961718560.a n = A167385 n

end A167385

/-! ## A167385.P16962657684861278171

`A164315(n+1)-1`
-/

namespace A167385.P16962657684861278171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164315 (n + 1) - 1

end

end A167385.P16962657684861278171

namespace A167385

/-- `A164315(n+1)-1` -/
def P16962657684861278171.Spec : Prop :=
  ∀ n, P16962657684861278171.a n = A167385 n

end A167385

/-! ## A167385.P2120537229678448515

`A054405(n+2)-2`
-/

namespace A167385.P2120537229678448515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054405 (n + 2) - 2

end

end A167385.P2120537229678448515

namespace A167385

/-- `A054405(n+2)-2` -/
def P2120537229678448515.Spec : Prop :=
  ∀ n, P2120537229678448515.a n = A167385 n

end A167385

/-! ## A167385.P5123967324334906178

`A096231(n+2)-4`
-/

namespace A167385.P5123967324334906178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096231 (n + 2) - 4

end

end A167385.P5123967324334906178

namespace A167385

/-- `A096231(n+2)-4` -/
def P5123967324334906178.Spec : Prop :=
  ∀ n, P5123967324334906178.a n = A167385 n

end A167385

/-! ## A167385.P6046676734664812938

`A164001(n+5)-4`
-/

namespace A167385.P6046676734664812938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164001 (n + 5) - 4

end

end A167385.P6046676734664812938

namespace A167385

/-- `A164001(n+5)-4` -/
def P6046676734664812938.Spec : Prop :=
  ∀ n, P6046676734664812938.a n = A167385 n

end A167385

/-! ## A167385.P7833655049538825427

`∑[A127682(2*(n+2))]`
-/

namespace A167385.P7833655049538825427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127682 (2 * (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A167385.P7833655049538825427

namespace A167385

/-- `∑[A127682(2*(n+2))]` -/
def P7833655049538825427.Spec : Prop :=
  ∀ n, P7833655049538825427.a n = A167385 n

end A167385

/-! ## A167385.P18263407704579047443

`record[A182097(n)-A130130(n)²]`
-/

namespace A167385.P18263407704579047443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182097 n - A130130 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A167385.P18263407704579047443

namespace A167385

/-- `record[A182097(n)-A130130(n)²]` -/
def P18263407704579047443.Spec : Prop :=
  ∀ n, P18263407704579047443.a n = A167385 n

end A167385

/-! ## A167385.P17952681325580601744

`A099559(n)+∑[A003520(n+2)]`
-/

namespace A167385.P17952681325580601744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003520 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099559 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A167385.P17952681325580601744

namespace A167385

/-- `A099559(n)+∑[A003520(n+2)]` -/
def P17952681325580601744.Spec : Prop :=
  ∀ n, P17952681325580601744.a n = A167385 n

end A167385

/-! ## A167385.P7582861160852915744

`∑[A164001(A171386(n+2)+n)]`
-/

namespace A167385.P7582861160852915744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164001 (A171386 (n + 2) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A167385.P7582861160852915744

namespace A167385

/-- `∑[A164001(A171386(n+2)+n)]` -/
def P7582861160852915744.Spec : Prop :=
  ∀ n, P7582861160852915744.a n = A167385 n

end A167385

/-!
# A167386: a(n) = (-1)^n*n*(n+1)*(2*n-5)/6.

The programs for A167386, the canonical program `A167386.P17002213697548501697` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A167386 has offset 1).

The definition of A167386 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A167386.P17002213697548501697

`(-1)^n*∑[1-n²]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A167386

/-- `(-1)^n*∑[1-n²]` -/
def P17002213697548501697.Spec : Prop :=
  ∀ n, P17002213697548501697.a n = A167386 (n + 1)

theorem P17002213697548501697.correct : P17002213697548501697.Spec := by
  intro n
  simp only [A167386, Nat.add_sub_cancel]

end A167386

/-! ## A167386.P4391734014350974607

`∑[∑[a(n-1)-2]]/(-1)^n` with `a(0)=1`
-/

namespace A167386.P4391734014350974607
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  f2 (n - 1) - 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / ((-1) ^ n : ℚ)

end

end A167386.P4391734014350974607

namespace A167386

/-- `∑[∑[a(n-1)-2]]/(-1)^n` -/
def P4391734014350974607.Spec : Prop :=
  ∀ n, P4391734014350974607.a n = (A167386 (n + 1) : ℚ)

end A167386

/-! ## A167386.P13664649906564358559

`∑[1-n²]/A033999(n)`
-/

namespace A167386.P13664649906564358559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (n ^ 2 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A033999 n : ℚ)

end

end A167386.P13664649906564358559

namespace A167386

/-- `∑[1-n²]/A033999(n)` -/
def P13664649906564358559.Spec : Prop :=
  ∀ n, P13664649906564358559.a n = (A167386 (n + 1) : ℚ)

end A167386

/-! ## A167386.P15430170024732911771

`A131386(n+1)-a(n-1)` with `a(0)=1`
-/

namespace A167386.P15430170024732911771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A131386 (n + 1) - a (n - 1)

end

end A167386.P15430170024732911771

namespace A167386

/-- `A131386(n+1)-a(n-1)` -/
def P15430170024732911771.Spec : Prop :=
  ∀ n, P15430170024732911771.a n = A167386 (n + 1)

end A167386

/-! ## A167386.P11447326463967628984

`∑[1-n²]/A009001(2*n)`
-/

namespace A167386.P11447326463967628984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (n ^ 2 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A009001 (2 * n) : ℚ)

end

end A167386.P11447326463967628984

namespace A167386

/-- `∑[1-n²]/A009001(2*n)` -/
def P11447326463967628984.Spec : Prop :=
  ∀ n, P11447326463967628984.a n = (A167386 (n + 1) : ℚ)

end A167386

/-! ## A167386.P11571691224338279538

`A252840(∑[n+3])`
-/

namespace A167386.P11571691224338279538
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252840 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A167386.P11571691224338279538

namespace A167386

/-- `A252840(∑[n+3])` -/
def P11571691224338279538.Spec : Prop :=
  ∀ n, P11571691224338279538.a n = A167386 (n + 1)

end A167386

/-!
# A167387: a(n) = (-1)^(n+1) * n*(n-1)*(n-4)*(n+1)/12.

The programs for A167387, the canonical program `A167387.P1360186347441687199` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A167387 has offset 2).

The definition of A167387 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A167387.P1360186347441687199

`(-1)^n*∑[∑[1-n²]]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A167387

/-- `(-1)^n*∑[∑[1-n²]]` -/
def P1360186347441687199.Spec : Prop :=
  ∀ n, P1360186347441687199.a n = A167387 (n + 2)

theorem P1360186347441687199.correct : P1360186347441687199.Spec := by
  intro n
  simp only [A167387, Nat.add_sub_cancel]

end A167387

/-! ## A167387.P10672276239357062265

`∑[∑[1-n²]]/A033999(n)`
-/

namespace A167387.P10672276239357062265
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (n ^ 2 : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A033999 n : ℚ)

end

end A167387.P10672276239357062265

namespace A167387

/-- `∑[∑[1-n²]]/A033999(n)` -/
def P10672276239357062265.Spec : Prop :=
  ∀ n, P10672276239357062265.a n = (A167387 (n + 2) : ℚ)

end A167387

/-! ## A167387.P480254073454005245

`A167386(n+1)-a(n-1)` with `a(0)=1`
-/

namespace A167387.P480254073454005245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A167386 (n + 1) - a (n - 1)

end

end A167387.P480254073454005245

namespace A167387

/-- `A167386(n+1)-a(n-1)` -/
def P480254073454005245.Spec : Prop :=
  ∀ n, P480254073454005245.a n = A167387 (n + 2)

end A167387

/-! ## A167387.P12605398448143076104

`∑[1-A000330(n)+n]/(-1)^n`
-/

namespace A167387.P12605398448143076104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A000330 n + (n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / ((-1) ^ n : ℚ)

end

end A167387.P12605398448143076104

namespace A167387

/-- `∑[1-A000330(n)+n]/(-1)^n` -/
def P12605398448143076104.Spec : Prop :=
  ∀ n, P12605398448143076104.a n = (A167387 (n + 2) : ℚ)

end A167387

/-! ## A167387.P4430181217318924308

`A252840(A027379(n+1))-a(n-1)` with `a(0)=1`
-/

namespace A167387.P4430181217318924308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A252840 (A027379 (n + 1)).toNat - a (n - 1)

end

end A167387.P4430181217318924308

namespace A167387

/-- `A252840(A027379(n+1))-a(n-1)` -/
def P4430181217318924308.Spec : Prop :=
  ∀ n, P4430181217318924308.a n = A167387 (n + 2)

end A167387

/-! ## A167387.P4667083262060560843

`A252840(∑[n+3]+n+3)`
-/

namespace A167387.P4667083262060560843
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252840 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A167387.P4667083262060560843

namespace A167387

/-- `A252840(∑[n+3]+n+3)` -/
def P4667083262060560843.Spec : Prop :=
  ∀ n, P4667083262060560843.a n = A167387 (n + 2)

end A167387

/-!
# A167388: Prime numbers ending in the prime number 31.

The programs for A167388, the canonical program `A167388.P3997312490521143460` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A167388 has offset 1).

The definition of A167388 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A167388.P3997312490521143460

`∩[A141884(n+1), A141931(n+1)]`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A167388

/-- `∩[A141884(n+1), A141931(n+1)]` -/
def P3997312490521143460.Spec : Prop :=
  ∀ n, (P3997312490521143460.a n : ℤ) = A167388 (n + 1)

theorem P3997312490521143460.correct : P3997312490521143460.Spec := by
  intro n
  simp only [A167388, Nat.add_sub_cancel]

end A167388

/-! ## A167388.P16004942024589588998

`p?[10*10*n+31]`
-/

namespace A167388.P16004942024589588998
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 * (10 * n) + 31

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A167388.P16004942024589588998

namespace A167388

/-- `p?[10*10*n+31]` -/
def P16004942024589588998.Spec : Prop :=
  ∀ n, (P16004942024589588998.a n : ℤ) = A167388 (n + 1)

end A167388

/-! ## A167388.P8352608826271027606

`∩[A122869(n+1), A141931(n+1)]`
-/

namespace A167388.P8352608826271027606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122869 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141931 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167388.P8352608826271027606

namespace A167388

/-- `∩[A122869(n+1), A141931(n+1)]` -/
def P8352608826271027606.Spec : Prop :=
  ∀ n, (P8352608826271027606.a n : ℤ) = A167388 (n + 1)

end A167388

/-! ## A167388.P17688281277186303961

`∩[A030430(n+1), A045803(n+1)]`
-/

namespace A167388.P17688281277186303961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030430 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045803 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167388.P17688281277186303961

namespace A167388

/-- `∩[A030430(n+1), A045803(n+1)]` -/
def P17688281277186303961.Spec : Prop :=
  ∀ n, (P17688281277186303961.a n : ℤ) = A167388 (n + 1)

end A167388

/-! ## A167388.P15833991047696249909

`∩[A045453(n+1), A045803(n+1)]`
-/

namespace A167388.P15833991047696249909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045453 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045803 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167388.P15833991047696249909

namespace A167388

/-- `∩[A045453(n+1), A045803(n+1)]` -/
def P15833991047696249909.Spec : Prop :=
  ∀ n, (P15833991047696249909.a n : ℤ) = A167388 (n + 1)

end A167388

/-! ## A167388.P12345575499592474697

`∩[A045803(n+1), A141884(n+1)]`
-/

namespace A167388.P12345575499592474697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045803 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141884 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167388.P12345575499592474697

namespace A167388

/-- `∩[A045803(n+1), A141884(n+1)]` -/
def P12345575499592474697.Spec : Prop :=
  ∀ n, (P12345575499592474697.a n : ℤ) = A167388 (n + 1)

end A167388

/-! ## A167388.P3733295871679591926

`∩[A045803(n+1), A141931(n+1)]`
-/

namespace A167388.P3733295871679591926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045803 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141931 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167388.P3733295871679591926

namespace A167388

/-- `∩[A045803(n+1), A141931(n+1)]` -/
def P3733295871679591926.Spec : Prop :=
  ∀ n, (P3733295871679591926.a n : ℤ) = A167388 (n + 1)

end A167388

/-! ## A167388.P2450724333006535720

`∩[A030430(n+1), A045802(n+1)+2]`
-/

namespace A167388.P2450724333006535720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030430 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045802 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167388.P2450724333006535720

namespace A167388

/-- `∩[A030430(n+1), A045802(n+1)+2]` -/
def P2450724333006535720.Spec : Prop :=
  ∀ n, (P2450724333006535720.a n : ℤ) = A167388 (n + 1)

end A167388

/-! ## A167388.P13956333549524775542

`∩[A002145(n+1), A141931(n+1)]`
-/

namespace A167388.P13956333549524775542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141931 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167388.P13956333549524775542

namespace A167388

/-- `∩[A002145(n+1), A141931(n+1)]` -/
def P13956333549524775542.Spec : Prop :=
  ∀ n, (P13956333549524775542.a n : ℤ) = A167388 (n + 1)

end A167388

/-! ## A167388.P14735245451172808819

`∩[A003626(n+1), A141931(n+1)]`
-/

namespace A167388.P14735245451172808819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003626 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141931 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167388.P14735245451172808819

namespace A167388

/-- `∩[A003626(n+1), A141931(n+1)]` -/
def P14735245451172808819.Spec : Prop :=
  ∀ n, (P14735245451172808819.a n : ℤ) = A167388 (n + 1)

end A167388

/-! ## A167388.P8125211313462686320

`∩[A045326(n+1), A141931(n+1)]`
-/

namespace A167388.P8125211313462686320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045326 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141931 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167388.P8125211313462686320

namespace A167388

/-- `∩[A045326(n+1), A141931(n+1)]` -/
def P8125211313462686320.Spec : Prop :=
  ∀ n, (P8125211313462686320.a n : ℤ) = A167388 (n + 1)

end A167388

/-! ## A167388.P2229263109807572420

`∩[A085760(n+1), A141931(n+1)]`
-/

namespace A167388.P2229263109807572420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085760 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141931 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167388.P2229263109807572420

namespace A167388

/-- `∩[A085760(n+1), A141931(n+1)]` -/
def P2229263109807572420.Spec : Prop :=
  ∀ n, (P2229263109807572420.a n : ℤ) = A167388 (n + 1)

end A167388

/-! ## A167388.P15326750525405241249

`∩[A141931(n+1), A197504(n+1)]`
-/

namespace A167388.P15326750525405241249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141931 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197504 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167388.P15326750525405241249

namespace A167388

/-- `∩[A141931(n+1), A197504(n+1)]` -/
def P15326750525405241249.Spec : Prop :=
  ∀ n, (P15326750525405241249.a n : ℤ) = A167388 (n + 1)

end A167388

/-! ## A167388.P16023423707197410551

`∩[A141931(n+1), A332555(n+1)]`
-/

namespace A167388.P16023423707197410551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141931 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332555 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167388.P16023423707197410551

namespace A167388

/-- `∩[A141931(n+1), A332555(n+1)]` -/
def P16023423707197410551.Spec : Prop :=
  ∀ n, (P16023423707197410551.a n : ℤ) = A167388 (n + 1)

end A167388

/-! ## A167388.P1970996981967552813

`∩[A141931(n+1), A292762(n+1)]`
-/

namespace A167388.P1970996981967552813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141931 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292762 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167388.P1970996981967552813

namespace A167388

/-- `∩[A141931(n+1), A292762(n+1)]` -/
def P1970996981967552813.Spec : Prop :=
  ∀ n, (P1970996981967552813.a n : ℤ) = A167388 (n + 1)

end A167388

/-! ## A167388.P16296333604833084856

`∩[A066499(n+1), A141931(n+1)]`
-/

namespace A167388.P16296333604833084856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066499 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141931 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167388.P16296333604833084856

namespace A167388

/-- `∩[A066499(n+1), A141931(n+1)]` -/
def P16296333604833084856.Spec : Prop :=
  ∀ n, (P16296333604833084856.a n : ℤ) = A167388 (n + 1)

end A167388

/-! ## A167388.P2795348803297367454

`∩[A097987(n+1), A141931(n+1)]`
-/

namespace A167388.P2795348803297367454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097987 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141931 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167388.P2795348803297367454

namespace A167388

/-- `∩[A097987(n+1), A141931(n+1)]` -/
def P2795348803297367454.Spec : Prop :=
  ∀ n, (P2795348803297367454.a n : ℤ) = A167388 (n + 1)

end A167388

/-! ## A167388.P5992918960483879552

`∩[A141931(n+1), A094179(n+1)]`
-/

namespace A167388.P5992918960483879552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141931 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094179 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167388.P5992918960483879552

namespace A167388

/-- `∩[A141931(n+1), A094179(n+1)]` -/
def P5992918960483879552.Spec : Prop :=
  ∀ n, (P5992918960483879552.a n : ℤ) = A167388 (n + 1)

end A167388

/-! ## A167388.P7778699950271233694

`∩[A186113(2*n)-n, A002145(n+2)]`
-/

namespace A167388.P7778699950271233694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186113 (2 * n) - (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002145 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167388.P7778699950271233694

namespace A167388

/-- `∩[A186113(2*n)-n, A002145(n+2)]` -/
def P7778699950271233694.Spec : Prop :=
  ∀ n, (P7778699950271233694.a n : ℤ) = A167388 (n + 1)

end A167388

/-! ## A167388.P203563600304252457

`∩[A186113(2*n)-n, A045326(n+2)]`
-/

namespace A167388.P203563600304252457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186113 (2 * n) - (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045326 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167388.P203563600304252457

namespace A167388

/-- `∩[A186113(2*n)-n, A045326(n+2)]` -/
def P203563600304252457.Spec : Prop :=
  ∀ n, (P203563600304252457.a n : ℤ) = A167388 (n + 1)

end A167388

/-!
# A167389: (arg(exp(-w)) + Im(w)) / (2*Pi), with w = W(n,-log(2)/2)/log(2), where W is the Lambert W function.

The programs for A167389, the canonical program `A167389.P9605169446371438607` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A167389 has offset 1).

The definition of A167389 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A167389.P9605169446371438607

`round(A016813(n+1)/log(16))`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A167389

/-- `round(A016813(n+1)/log(16))` -/
def P9605169446371438607.Spec : Prop :=
  ∀ n, P9605169446371438607.a n = A167389 (n + 1)

theorem P9605169446371438607.correct : P9605169446371438607.Spec := by
  intro n
  simp only [A167389, Nat.add_sub_cancel]

end A167389

/-! ## A167389.P7160840121798462837

`A248188(n+1)-A000034(A002061(n))`
-/

namespace A167389.P7160840121798462837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248188 (n + 1) - A000034 (A002061 n).toNat

end

end A167389.P7160840121798462837

namespace A167389

/-- `A248188(n+1)-A000034(A002061(n))` -/
def P7160840121798462837.Spec : Prop :=
  ∀ n, P7160840121798462837.a n = A167389 (n + 1)

end A167389

/-! ## A167389.P10401658369300993706

`A248188(n+1)-A000034(A130770(n))`
-/

namespace A167389.P10401658369300993706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248188 (n + 1) - A000034 (A130770 n).toNat

end

end A167389.P10401658369300993706

namespace A167389

/-- `A248188(n+1)-A000034(A130770(n))` -/
def P10401658369300993706.Spec : Prop :=
  ∀ n, P10401658369300993706.a n = A167389 (n + 1)

end A167389

/-! ## A167389.P15661959419651582175

`A248188(n+1)-A000034(A075583(n+1))`
-/

namespace A167389.P15661959419651582175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248188 (n + 1) - A000034 (A075583 (n + 1)).toNat

end

end A167389.P15661959419651582175

namespace A167389

/-- `A248188(n+1)-A000034(A075583(n+1))` -/
def P15661959419651582175.Spec : Prop :=
  ∀ n, P15661959419651582175.a n = A167389 (n + 1)

end A167389

/-! ## A167389.P11298531554944636538

`A248188(n+1)-A020639(A007694(n+2))`
-/

namespace A167389.P11298531554944636538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248188 (n + 1) - A020639 (A007694 (n + 2)).toNat

end

end A167389.P11298531554944636538

namespace A167389

/-- `A248188(n+1)-A020639(A007694(n+2))` -/
def P11298531554944636538.Spec : Prop :=
  ∀ n, P11298531554944636538.a n = A167389 (n + 1)

end A167389

/-! ## A167389.P3441979477291607991

`A059539(n+3)-A020639(A007694(n+2))`
-/

namespace A167389.P3441979477291607991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059539 (n + 3) - A020639 (A007694 (n + 2)).toNat

end

end A167389.P3441979477291607991

namespace A167389

/-- `A059539(n+3)-A020639(A007694(n+2))` -/
def P3441979477291607991.Spec : Prop :=
  ∀ n, P3441979477291607991.a n = A167389 (n + 1)

end A167389

/-! ## A167389.P2562112131651559341

`A033810(A185594(n+2))-2`
-/

namespace A167389.P2562112131651559341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033810 (A185594 (n + 2)).toNat - 2

end

end A167389.P2562112131651559341

namespace A167389

/-- `A033810(A185594(n+2))-2` -/
def P2562112131651559341.Spec : Prop :=
  ∀ n, P2562112131651559341.a n = A167389 (n + 1)

end A167389

/-! ## A167389.P6618826046576155326

`A248188(n+1)-A000005(A160370(n+1))`
-/

namespace A167389.P6618826046576155326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248188 (n + 1) - A000005 (A160370 (n + 1)).toNat

end

end A167389.P6618826046576155326

namespace A167389

/-- `A248188(n+1)-A000005(A160370(n+1))` -/
def P6618826046576155326.Spec : Prop :=
  ∀ n, P6618826046576155326.a n = A167389 (n + 1)

end A167389

/-! ## A167389.P3928740447387532143

`A059539(n+3)-A000005(A160370(n+1))`
-/

namespace A167389.P3928740447387532143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059539 (n + 3) - A000005 (A160370 (n + 1)).toNat

end

end A167389.P3928740447387532143

namespace A167389

/-- `A059539(n+3)-A000005(A160370(n+1))` -/
def P3928740447387532143.Spec : Prop :=
  ∀ n, P3928740447387532143.a n = A167389 (n + 1)

end A167389

/-!
# A167390: Partial sums of A137442.

The programs for A167390, there is no canonical definition to state claims against.
-/

/-! ## A167390.P13756096093704351026

`∑[A137442(n+1)]`
-/

namespace A167390.P13756096093704351026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137442 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A167390.P13756096093704351026

/-! ## A167390.P18291626142527354834

`A137442(round(acot(n+1)+n)+1)+a(n-1)` with `a(0)=1`
-/

namespace A167390.P18291626142527354834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A137442 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n + 1 : ℝ) + (n : ℝ)) + 1).toNat + a (n - 1)

end

end A167390.P18291626142527354834

/-! ## A167390.P18295831638233680031

`A137442(n+1)+a(A023443(n))` with `a(0)=1`
-/

namespace A167390.P18295831638233680031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A137442 (n + 1) + a (A023443 n).toNat

end

end A167390.P18295831638233680031

/-! ## A167390.P11255002196992234647

`A137442(n+1)+a(n-1)/A054977(n)` with `a(0)=1`
-/

namespace A167390.P11255002196992234647
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (A137442 (n + 1) : ℚ) + a (n - 1) / (A054977 n : ℚ)

end

end A167390.P11255002196992234647

/-! ## A167390.P6280794928687862105

`A137442(n+1)+a(n-1)%A307795(n+1)` with `a(0)=1`
-/

namespace A167390.P6280794928687862105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A137442 (n + 1) + Int.tmod (a (n - 1)) (A307795 (n + 1))

end

end A167390.P6280794928687862105

/-! ## A167390.P10158187107284309788

`A175126(2*a(n-1))+A137442(n+1)` with `a(0)=1`
-/

namespace A167390.P10158187107284309788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A175126 (2 * a (n - 1)).toNat + A137442 (n + 1)

end

end A167390.P10158187107284309788

/-!
# A167392: Characteristic function of partition numbers.

The programs for A167392, there is no canonical definition to state claims against.
-/

/-! ## A167392.P4861466056560606597

`char[A000041(n)]`
-/

namespace A167392.P4861466056560606597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A167392.P4861466056560606597

/-! ## A167392.P15309562089669990089

`char[A059982(n)]`
-/

namespace A167392.P15309562089669990089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059982 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A167392.P15309562089669990089

/-! ## A167392.P3962676089219913988

`char[A119620(n)]`
-/

namespace A167392.P3962676089219913988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119620 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A167392.P3962676089219913988

/-! ## A167392.P6344065532911616296

`char[A140207(n)]`
-/

namespace A167392.P6344065532911616296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140207 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A167392.P6344065532911616296

/-! ## A167392.P10009074814615127393

`char[A173238(n)]`
-/

namespace A167392.P10009074814615127393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173238 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A167392.P10009074814615127393

/-! ## A167392.P18259589127587896441

`char[A213598(n)]`
-/

namespace A167392.P18259589127587896441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213598 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A167392.P18259589127587896441

/-! ## A167392.P2694068818451423299

`char[A330643(n)]`
-/

namespace A167392.P2694068818451423299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330643 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A167392.P2694068818451423299

/-! ## A167392.P3254217917978632397

`char[∑[A002865(n)]]`
-/

namespace A167392.P3254217917978632397
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A167392.P3254217917978632397

/-! ## A167392.P16758471462870698270

`char[A054225(∑[n])]`
-/

namespace A167392.P16758471462870698270
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054225 (∑ j ∈ Finset.range (n + 1), f2 j)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A167392.P16758471462870698270

/-! ## A167392.P11312004231678403376

`char[A256193(∑[n])]`
-/

namespace A167392.P11312004231678403376
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256193 (∑ j ∈ Finset.range (n + 1), f2 j)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A167392.P11312004231678403376

/-! ## A167392.P8715328170810991544

`char[A284592(∑[n])]`
-/

namespace A167392.P8715328170810991544
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284592 (∑ j ∈ Finset.range (n + 1), f2 j)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A167392.P8715328170810991544

/-! ## A167392.P17952415982358138039

`char[Δ[A000070(n)]]`
-/

namespace A167392.P17952415982358138039
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A167392.P17952415982358138039

/-! ## A167392.P13862549045945029363

`char[Δ[A035363(n)]]`
-/

namespace A167392.P13862549045945029363
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A167392.P13862549045945029363

/-! ## A167392.P3761926677882565094

`char[record[A035377(n)]]`
-/

namespace A167392.P3761926677882565094
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035377 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A167392.P3761926677882565094

/-! ## A167392.P5442999548398774277

`char[record[A035444(n)]]`
-/

namespace A167392.P5442999548398774277
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035444 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A167392.P5442999548398774277

/-! ## A167392.P8297401885757901507

`char[A000065(n)+1]`
-/

namespace A167392.P8297401885757901507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000065 n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A167392.P8297401885757901507

/-! ## A167392.P3357620035593599369

`char[A027293(n+1)]`
-/

namespace A167392.P3357620035593599369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027293 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A167392.P3357620035593599369

/-! ## A167392.P14524239529883151026

`char[A072871(n+1)]`
-/

namespace A167392.P14524239529883151026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072871 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A167392.P14524239529883151026

/-! ## A167392.P9784896822867269898

`char[A035363(2*n)]`
-/

namespace A167392.P9784896822867269898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 (2 * n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A167392.P9784896822867269898

/-!
# A167393: Characteristic function of the range of A000009.

The programs for A167393, there is no canonical definition to state claims against.
-/

/-! ## A167393.P16392355080947280747

`char[A000009(n)]`
-/

namespace A167393.P16392355080947280747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A167393.P16392355080947280747

/-! ## A167393.P16903074246521015297

`char[A172033(n)]`
-/

namespace A167393.P16903074246521015297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172033 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A167393.P16903074246521015297

/-! ## A167393.P14130329165942980933

`char[A173305(n)]`
-/

namespace A167393.P14130329165942980933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173305 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A167393.P14130329165942980933

/-! ## A167393.P12808548205731014916

`char[A219347(n)]`
-/

namespace A167393.P12808548205731014916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A167393.P12808548205731014916

/-! ## A167393.P10431934174731130867

`char[abs(A081360(n))]`
-/

namespace A167393.P10431934174731130867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A081360 n|

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A167393.P10431934174731130867

/-! ## A167393.P10866698077110895805

`char[A054242(∑[n])]`
-/

namespace A167393.P10866698077110895805
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054242 (∑ j ∈ Finset.range (n + 1), f2 j)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A167393.P10866698077110895805

/-! ## A167393.P271815348377958926

`char[∑[A087897(n)]]`
-/

namespace A167393.P271815348377958926
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087897 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A167393.P271815348377958926

/-! ## A167393.P8074654666105650641

`char[A201377(∑[n])]`
-/

namespace A167393.P8074654666105650641
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201377 (∑ j ∈ Finset.range (n + 1), f2 j)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A167393.P8074654666105650641

/-! ## A167393.P14301172490080457696

`char[A264405(∑[n])]`
-/

namespace A167393.P14301172490080457696
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264405 (∑ j ∈ Finset.range (n + 1), f2 j)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A167393.P14301172490080457696

/-! ## A167393.P2223293122997267671

`char[A284593(∑[n])]`
-/

namespace A167393.P2223293122997267671
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284593 (∑ j ∈ Finset.range (n + 1), f2 j)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A167393.P2223293122997267671

/-! ## A167393.P13242201727733253236

`char[A360634(∑[n])]`
-/

namespace A167393.P13242201727733253236
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360634 (∑ j ∈ Finset.range (n + 1), f2 j)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A167393.P13242201727733253236

/-! ## A167393.P7084690812140321688

`char[A364916(∑[n])]`
-/

namespace A167393.P7084690812140321688
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364916 (∑ j ∈ Finset.range (n + 1), f2 j)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A167393.P7084690812140321688

/-! ## A167393.P17962719856248871962

`char[Δ[A035457(n)]]`
-/

namespace A167393.P17962719856248871962
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035457 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A167393.P17962719856248871962

/-! ## A167393.P6142662483543576188

`char[Δ[A036469(n)]]`
-/

namespace A167393.P6142662483543576188
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036469 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A167393.P6142662483543576188

/-! ## A167393.P7730701886963116293

`char[A111133(n)+1]`
-/

namespace A167393.P7730701886963116293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111133 n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A167393.P7730701886963116293

/-! ## A167393.P5303585582321989244

`char[A117409(n+3)]`
-/

namespace A167393.P5303585582321989244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117409 (n + 3)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A167393.P5303585582321989244

/-! ## A167393.P5492540699214157608

`char[A035457(2*n)]`
-/

namespace A167393.P5492540699214157608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035457 (2 * n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A167393.P5492540699214157608

/-! ## A167393.P3515391226611853829

`char[A059619(2*n²)]`
-/

namespace A167393.P3515391226611853829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059619 (2 * n ^ 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A167393.P3515391226611853829

/-! ## A167393.P6551937182588941582

`char[A026840(∑[n+1])]`
-/

namespace A167393.P6551937182588941582
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026840 (∑ j ∈ Finset.range (n + 1), f2 j)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A167393.P6551937182588941582

/-!
# A167394: Largest single or isolated prime < n-th single or isolated composite.

The programs for A167394, there is no canonical definition to state claims against.
-/

/-! ## A167394.P1634426619958565541

`A007510(A162309(n+1))`
-/

namespace A167394.P1634426619958565541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007510 (A162309 (n + 1)).toNat

end

end A167394.P1634426619958565541

/-! ## A167394.P14609168396658704764

`p?[A007510(A162309(Δ[n²]-n))]`
-/

namespace A167394.P14609168396658704764
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007510 (A162309 ((f2 (n + 1) : ℤ) - (f2 n : ℤ) - (n : ℤ)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A167394.P14609168396658704764

/-! ## A167394.P14159811225348550017

`A167277(A162309(C(n+1, n)))+1`
-/

namespace A167394.P14159811225348550017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167277 (A162309 (Nat.choose (n + 1) n)).toNat + 1

end

end A167394.P14159811225348550017

/-! ## A167394.P5473614852268591595

`A167277(A162309(char[1]+1+n))+1`
-/

namespace A167394.P5473614852268591595
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167277 (A162309 ((if ∃ j, f1 j = n then 1 else 0) + 1 + n)).toNat + 1

end

end A167394.P5473614852268591595

/-! ## A167394.P12958091009703173192

`A007510(A334142(2*n+1)-Δ[n²])`
-/

namespace A167394.P12958091009703173192
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007510 (A334142 (2 * n + 1) - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))).toNat

end

end A167394.P12958091009703173192

/-! ## A167394.P10173284258952256047

`A007510(A029707(n+1)-floor(2/acot(n)))`
-/

namespace A167394.P10173284258952256047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007510 (A029707 (n + 1) - ⌊2 / SequenceMachineLib.acot (n : ℝ)⌋).toNat

end

end A167394.P10173284258952256047

/-! ## A167394.P1773445116525946588

`A007510(A029707(n+1)-A004277(n))`
-/

namespace A167394.P1773445116525946588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007510 (A029707 (n + 1) - A004277 n).toNat

end

end A167394.P1773445116525946588

/-! ## A167394.P3376543322739717877

`A007510(A155752(n+1)-A004273(n))`
-/

namespace A167394.P3376543322739717877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007510 (A155752 (n + 1) - A004273 n).toNat

end

end A167394.P3376543322739717877

/-! ## A167394.P4911500091943522443

`A007510(A029707(n+1)-(A008574(n)-2*n))`
-/

namespace A167394.P4911500091943522443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007510 (A029707 (n + 1) - (A008574 n - (2 * n : ℤ))).toNat

end

end A167394.P4911500091943522443

/-!
# A167395: Smallest single or isolated composite>n-th single or isolated prime.

The programs for A167395, there is no canonical definition to state claims against.
-/

/-! ## A167395.P11394646040869683808

`A014574(A162310(n+1)+1)`
-/

namespace A167395.P11394646040869683808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014574 (A162310 (n + 1) + 1).toNat

end

end A167395.P11394646040869683808

/-! ## A167395.P8342213897072289664

`A163656(A162308(n+1)+1)`
-/

namespace A167395.P8342213897072289664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163656 (A162308 (n + 1) + 1).toNat

end

end A167395.P8342213897072289664

/-! ## A167395.P13657148174481433854

`A167777(A162310(n+1)+2)`
-/

namespace A167395.P13657148174481433854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167777 (A162310 (n + 1) + 2).toNat

end

end A167395.P13657148174481433854

/-! ## A167395.P9267977898048628025

`A014574(A171562(n+1)-n)`
-/

namespace A167395.P9267977898048628025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014574 (A171562 (n + 1) - (n : ℤ)).toNat

end

end A167395.P9267977898048628025

/-! ## A167395.P6130583329899490056

`A001097(A162308(n+1)+1)+1`
-/

namespace A167395.P6130583329899490056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001097 (A162308 (n + 1) + 1).toNat + 1

end

end A167395.P6130583329899490056

/-! ## A167395.P985498798861045570

`A006512(A162310(n+1)+1)-1`
-/

namespace A167395.P985498798861045570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006512 (A162310 (n + 1) + 1).toNat - 1

end

end A167395.P985498798861045570

/-! ## A167395.P2554202120583583506

`A294075(n+1)+A007510(n+1)`
-/

namespace A167395.P2554202120583583506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294075 (n + 1) + A007510 (n + 1)

end

end A167395.P2554202120583583506

/-! ## A167395.P16793084642606056236

`A000203(A001097(A162308(n+1)+1))`
-/

namespace A167395.P16793084642606056236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A001097 (A162308 (n + 1) + 1).toNat).toNat

end

end A167395.P16793084642606056236

/-! ## A167395.P11985766947213629313

`A000203(A001359(A162310(n+1)+1))`
-/

namespace A167395.P11985766947213629313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A001359 (A162310 (n + 1) + 1).toNat).toNat

end

end A167395.P11985766947213629313

/-! ## A167395.P16212480841695114447

`A000010(A001097(A162308(n+1)+2))`
-/

namespace A167395.P16212480841695114447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A001097 (A162308 (n + 1) + 2).toNat).toNat

end

end A167395.P16212480841695114447

/-!
# A167397: n-th single (or isolated or non-twin) prime minus n.

The programs for A167397, the canonical program `A167397.P8802718030217798719` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A167397 has offset 1).

The definition of A167397 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007510, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A167397.P8802718030217798719

`A007510(n+1)-A000027(n+1)`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A167397

/-- `A007510(n+1)-A000027(n+1)` -/
def P8802718030217798719.Spec : Prop :=
  ∀ n, P8802718030217798719.a n = A167397 (n + 1)

theorem P8802718030217798719.correct : P8802718030217798719.Spec := by
  intro n
  simp only [A167397, Nat.add_sub_cancel]

end A167397

/-! ## A167397.P155488770085976946

`A167277(n+1)-n`
-/

namespace A167397.P155488770085976946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167277 (n + 1) - (n : ℤ)

end

end A167397.P155488770085976946

namespace A167397

/-- `A167277(n+1)-n` -/
def P155488770085976946.Spec : Prop :=
  ∀ n, P155488770085976946.a n = A167397 (n + 1)

end A167397

/-! ## A167397.P6695962093421447498

`A007510(n+1)-(n+1)`
-/

namespace A167397.P6695962093421447498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007510 (n + 1) - (n + 1 : ℤ)

end

end A167397.P6695962093421447498

namespace A167397

/-- `A007510(n+1)-(n+1)` -/
def P6695962093421447498.Spec : Prop :=
  ∀ n, P6695962093421447498.a n = A167397 (n + 1)

end A167397

/-! ## A167397.P15859474002700733371

`A164274(n+1)-(A006512(n+1)+n)`
-/

namespace A167397.P15859474002700733371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164274 (n + 1) - (A006512 (n + 1) + (n : ℤ))

end

end A167397.P15859474002700733371

namespace A167397

/-- `A164274(n+1)-(A006512(n+1)+n)` -/
def P15859474002700733371.Spec : Prop :=
  ∀ n, P15859474002700733371.a n = A167397 (n + 1)

end A167397

/-! ## A167397.P3321245440925817084

`A163654(n)-a(n-1)-A005408(n)` with `a(0)=1`
-/

namespace A167397.P3321245440925817084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A163654 n - a (n - 1) - A005408 n

end

end A167397.P3321245440925817084

namespace A167397

/-- `A163654(n)-a(n-1)-A005408(n)` -/
def P3321245440925817084.Spec : Prop :=
  ∀ n, P3321245440925817084.a n = A167397 (n + 1)

end A167397

/-! ## A167397.P18124234781551203386

`A163654(n+1)-A134797(n+1)-(n+1)`
-/

namespace A167397.P18124234781551203386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163654 (n + 1) - A134797 (n + 1) - (n + 1 : ℤ)

end

end A167397.P18124234781551203386

namespace A167397

/-- `A163654(n+1)-A134797(n+1)-(n+1)` -/
def P18124234781551203386.Spec : Prop :=
  ∀ n, P18124234781551203386.a n = A167397 (n + 1)

end A167397

/-! ## A167397.P15527706869703719491

`A164274(n+1)-sqrt(A075369(n+1))-(n+1)`
-/

namespace A167397.P15527706869703719491
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A164274 (n + 1) : ℝ) - Real.sqrt (A075369 (n + 1) : ℝ) - (n + 1 : ℝ)

end

end A167397.P15527706869703719491

namespace A167397

/-- `A164274(n+1)-sqrt(A075369(n+1))-(n+1)` -/
def P15527706869703719491.Spec : Prop :=
  ∀ n, P15527706869703719491.a n = (A167397 (n + 1) : ℝ)

end A167397

/-! ## A167397.P7781488504054109636

`A164274(n+1)-A054735(n+1)/2-(n+1)`
-/

namespace A167397.P7781488504054109636
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A164274 (n + 1) : ℚ) - (A054735 (n + 1) : ℚ) / 2 - (n + 1 : ℚ)

end

end A167397.P7781488504054109636

namespace A167397

/-- `A164274(n+1)-A054735(n+1)/2-(n+1)` -/
def P7781488504054109636.Spec : Prop :=
  ∀ n, P7781488504054109636.a n = (A167397 (n + 1) : ℚ)

end A167397

/-! ## A167397.P563725171213481806

`A164274(n+1)-A111046(n+1)/4-(n+1)`
-/

namespace A167397.P563725171213481806
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A164274 (n + 1) : ℚ) - (A111046 (n + 1) : ℚ) / 4 - (n + 1 : ℚ)

end

end A167397.P563725171213481806

namespace A167397

/-- `A164274(n+1)-A111046(n+1)/4-(n+1)` -/
def P563725171213481806.Spec : Prop :=
  ∀ n, P563725171213481806.a n = (A167397 (n + 1) : ℚ)

end A167397

/-! ## A167397.P2533964457311442225

`A164274(n+1)-(A176915(n+1)+A078571(n+1))-(n+1)`
-/

namespace A167397.P2533964457311442225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164274 (n + 1) - (A176915 (n + 1) + A078571 (n + 1)) - (n + 1 : ℤ)

end

end A167397.P2533964457311442225

namespace A167397

/-- `A164274(n+1)-(A176915(n+1)+A078571(n+1))-(n+1)` -/
def P2533964457311442225.Spec : Prop :=
  ∀ n, P2533964457311442225.a n = A167397 (n + 1)

end A167397

/-! ## A167397.P5234561710498809857

`p?[A167706(n+1)]-(n+1)`
-/

namespace A167397.P5234561710498809857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167706 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - (n + 1 : ℤ)

end

end A167397.P5234561710498809857

namespace A167397

/-- `p?[A167706(n+1)]-(n+1)` -/
def P5234561710498809857.Spec : Prop :=
  ∀ n, P5234561710498809857.a n = A167397 (n + 1)

end A167397

/-! ## A167397.P13208163812511364948

`A000040(A176656(n+1))-(n+1)`
-/

namespace A167397.P13208163812511364948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A176656 (n + 1)).toNat - (n + 1 : ℤ)

end

end A167397.P13208163812511364948

namespace A167397

/-- `A000040(A176656(n+1))-(n+1)` -/
def P13208163812511364948.Spec : Prop :=
  ∀ n, P13208163812511364948.a n = A167397 (n + 1)

end A167397

/-! ## A167397.P12775130575064231002

`A000010(A007510(n+1))-n`
-/

namespace A167397.P12775130575064231002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A007510 (n + 1)).toNat - (n : ℤ)

end

end A167397.P12775130575064231002

namespace A167397

/-- `A000010(A007510(n+1))-n` -/
def P12775130575064231002.Spec : Prop :=
  ∀ n, P12775130575064231002.a n = A167397 (n + 1)

end A167397

/-! ## A167397.P2573616250222808836

`record[A007510(A133310(n))-A133310(n)]`
-/

namespace A167397.P2573616250222808836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007510 (A133310 n).toNat - A133310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A167397.P2573616250222808836

namespace A167397

/-- `record[A007510(A133310(n))-A133310(n)]` -/
def P2573616250222808836.Spec : Prop :=
  ∀ n, P2573616250222808836.a n = A167397 (n + 1)

end A167397

/-! ## A167397.P16680569622294999520

`p?[A007510(A008619(2*n))]-A008619(2*n)`
-/

namespace A167397.P16680569622294999520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007510 (A008619 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - A008619 (2 * n)

end

end A167397.P16680569622294999520

namespace A167397

/-- `p?[A007510(A008619(2*n))]-A008619(2*n)` -/
def P16680569622294999520.Spec : Prop :=
  ∀ n, P16680569622294999520.a n = A167397 (n + 1)

end A167397

/-! ## A167397.P208913567603077265

`∩[A100317(n+1), A141515(n+1)]-n`
-/

namespace A167397.P208913567603077265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100317 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141515 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A167397.P208913567603077265

namespace A167397

/-- `∩[A100317(n+1), A141515(n+1)]-n` -/
def P208913567603077265.Spec : Prop :=
  ∀ n, P208913567603077265.a n = A167397 (n + 1)

end A167397

/-! ## A167397.P17523207683495594040

`p?[A062729(n+1)]-(n+1)`
-/

namespace A167397.P17523207683495594040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062729 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - (n + 1 : ℤ)

end

end A167397.P17523207683495594040

namespace A167397

/-- `p?[A062729(n+1)]-(n+1)` -/
def P17523207683495594040.Spec : Prop :=
  ∀ n, P17523207683495594040.a n = A167397 (n + 1)

end A167397

/-! ## A167397.P9990243257081755856

`lt[A129950(n+1), A129950(n+1)²]-n`
-/

namespace A167397.P9990243257081755856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129950 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129950 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < f2 j) n : ℤ) - (n : ℤ)

end

end A167397.P9990243257081755856

namespace A167397

/-- `lt[A129950(n+1), A129950(n+1)²]-n` -/
def P9990243257081755856.Spec : Prop :=
  ∀ n, P9990243257081755856.a n = A167397 (n + 1)

end A167397

/-! ## A167397.P8263720170710302915

`∩[A141515(n+1), A239321(n+1)]-n`
-/

namespace A167397.P8263720170710302915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141515 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239321 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A167397.P8263720170710302915

namespace A167397

/-- `∩[A141515(n+1), A239321(n+1)]-n` -/
def P8263720170710302915.Spec : Prop :=
  ∀ n, P8263720170710302915.a n = A167397 (n + 1)

end A167397

/-! ## A167397.P9055942332033697588

`eq[1, A175682(n+1)]-n`
-/

namespace A167397.P9055942332033697588
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175682 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - (n : ℤ)

end

end A167397.P9055942332033697588

namespace A167397

/-- `eq[1, A175682(n+1)]-n` -/
def P9055942332033697588.Spec : Prop :=
  ∀ n, P9055942332033697588.a n = A167397 (n + 1)

end A167397

/-!
# A167398: a(n) = Fibonacci(11*n).

The programs for A167398, the canonical program `A167398.P16119962068734190939` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A167398 has offset 0).

The definition of A167398 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A167398.P16119962068734190939

`199*a(n-1)+a(n-2)` with `a(0)=0, a(1)=89`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A167398

/-- `199*a(n-1)+a(n-2)` -/
def P16119962068734190939.Spec : Prop :=
  ∀ n, (P16119962068734190939.a n : ℤ) = A167398 n

theorem P16119962068734190939.correct : P16119962068734190939.Spec := by
  intro n
  simp only [A167398]

end A167398

/-! ## A167398.P7724121843399318762

`89*A305413(n)`
-/

namespace A167398.P7724121843399318762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  89 * A305413 n

end

end A167398.P7724121843399318762

namespace A167398

/-- `89*A305413(n)` -/
def P7724121843399318762.Spec : Prop :=
  ∀ n, P7724121843399318762.a n = A167398 n

end A167398

/-! ## A167398.P2092256050427174608

`A000045(A008593(n))`
-/

namespace A167398.P2092256050427174608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A008593 n).toNat

end

end A167398.P2092256050427174608

namespace A167398

/-- `A000045(A008593(n))` -/
def P2092256050427174608.Spec : Prop :=
  ∀ n, P2092256050427174608.a n = A167398 n

end A167398

/-! ## A167398.P14563337422723597165

`A000045(11*n)`
-/

namespace A167398.P14563337422723597165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (11 * n)

end

end A167398.P14563337422723597165

namespace A167398

/-- `A000045(11*n)` -/
def P14563337422723597165.Spec : Prop :=
  ∀ n, P14563337422723597165.a n = A167398 n

end A167398

/-! ## A167398.P17339142895804522252

`A053602(22*n)`
-/

namespace A167398.P17339142895804522252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053602 (22 * n)

end

end A167398.P17339142895804522252

namespace A167398

/-- `A053602(22*n)` -/
def P17339142895804522252.Spec : Prop :=
  ∀ n, P17339142895804522252.a n = A167398 n

end A167398

/-!
# A167399: a(n) = frequency with which each prime is the sum of the members of each subset of size N of the set {1..N^2} over N.

The programs for A167399, there is no canonical definition to state claims against.
-/

/-! ## A167399.P6727262082923101915

`A000196(A075857(n+1)*A075864(n))`
-/

namespace A167399.P6727262082923101915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A075857 (n + 1) * A075864 n).toNat

end

end A167399.P6727262082923101915

/-! ## A167399.P18083076525004398333

`A241507(2*n+3)-A241494(A241463(n+1))`
-/

namespace A167399.P18083076525004398333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241507 (2 * n + 3) - A241494 (A241463 (n + 1)).toNat

end

end A167399.P18083076525004398333

