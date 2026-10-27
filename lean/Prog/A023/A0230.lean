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
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C036
import Seq.B000.C038
import Seq.B000.C040
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C009
import Seq.B001.C011
import Seq.B002.C000
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B003.C000
import Seq.B003.C001
import Seq.B004.C000
import Seq.B004.C001
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.Opaque.C000
import Seq.Opaque.C001
import Seq.Opaque.C002
import Seq.Opaque.C003
import Seq.Opaque.C004
import Seq.Opaque.C005
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
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C024

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A023000: a(n) = (7^n - 1)/6.

The programs for A023000, the canonical program `A023000.P211291010459174643` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023000 has offset 0).

The definition of A023000 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(7^n-1)/6` (program `A023000.P9587155750024764488`, by `A023000.P9587155750024764488.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A023000.P211291010459174643

`7*a(n-1)+1` with `a(0)=0`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A023000

/-- `7*a(n-1)+1` -/
def P211291010459174643.Spec : Prop :=
  ∀ n, (P211291010459174643.a n : ℤ) = A023000 n

theorem P211291010459174643.correct : P211291010459174643.Spec := by
  intro n
  simp only [A023000]

end A023000

/-! ## A023000.P4644906743902458373

`a(n-1)+7^(n-1)` with `a(0)=0`
-/

namespace A023000.P4644906743902458373
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (7 : ℚ) ^ ((n : ℤ) - 1 : ℤ)

end

end A023000.P4644906743902458373

namespace A023000

/-- `a(n-1)+7^(n-1)` -/
def P4644906743902458373.Spec : Prop :=
  ∀ n, P4644906743902458373.a n = (A023000 n : ℚ)

end A023000

/-! ## A023000.P9587155750024764488

`(7^n-1)/6`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A023000.P9587155750024764488
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((7 ^ n : ℤ) - 1 : ℚ) / 6

end

end A023000.P9587155750024764488

namespace A023000

/-- `(7^n-1)/6` -/
def P9587155750024764488.Spec : Prop :=
  ∀ n, P9587155750024764488.a n = (A023000 n : ℚ)

theorem P9587155750024764488.correct : P9587155750024764488.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A023000, Nat.add_sub_cancel, A023000.P9587155750024764488.a, A023000.P211291010459174643.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A023000, Nat.add_sub_cancel, A023000.P9587155750024764488.a, A023000.P211291010459174643.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A023000

/-! ## A023000.P4060111926776490539

`ogf(x/(1-8x+7x^2))`
-/

namespace A023000.P4060111926776490539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1] [1, -8, 7] n

end

end A023000.P4060111926776490539

namespace A023000

/-- `ogf(x/(1-8x+7x^2))` -/
def P4060111926776490539.Spec : Prop :=
  ∀ n, P4060111926776490539.a n = A023000 n

end A023000

/-! ## A023000.P15760384882423064102

`lcm(7, a(n-1))+1` with `a(0)=0`
-/

namespace A023000.P15760384882423064102
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Nat.lcm 7 (a (n - 1)) + 1

end

end A023000.P15760384882423064102

namespace A023000

/-- `lcm(7, a(n-1))+1` -/
def P15760384882423064102.Spec : Prop :=
  ∀ n, (P15760384882423064102.a n : ℤ) = A023000 n

end A023000

/-! ## A023000.P11216682542653429954

`∑[7*a(n-1)]` with `a(0)=0, a(1)=1`
-/

namespace A023000.P11216682542653429954
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  7 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023000.P11216682542653429954

namespace A023000

/-- `∑[7*a(n-1)]` -/
def P11216682542653429954.Spec : Prop :=
  ∀ n, (P11216682542653429954.a n : ℤ) = A023000 n

end A023000

/-! ## A023000.P1268210880686690507

`8-7*(1-a(n-1))` with `a(0)=0`
-/

namespace A023000.P1268210880686690507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  8 - 7 * (1 - a (n - 1))

end

end A023000.P1268210880686690507

namespace A023000

/-- `8-7*(1-a(n-1))` -/
def P1268210880686690507.Spec : Prop :=
  ∀ n, P1268210880686690507.a n = A023000 n

end A023000

/-! ## A023000.P5109272726177137475

`round(∑[7^((n-1)%(n+2))])`
-/

namespace A023000.P5109272726177137475
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (7 : ℚ) ^ (Int.tmod ((n : ℤ) - 1) (n + 2 : ℤ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A023000.P5109272726177137475

namespace A023000

/-- `round(∑[7^((n-1)%(n+2))])` -/
def P5109272726177137475.Spec : Prop :=
  ∀ n, P5109272726177137475.a n = A023000 n

end A023000

/-! ## A023000.P18331864607856422339

`A047852(n)-1`
-/

namespace A023000.P18331864607856422339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047852 n - 1

end

end A023000.P18331864607856422339

namespace A023000

/-- `A047852(n)-1` -/
def P18331864607856422339.Spec : Prop :=
  ∀ n, P18331864607856422339.a n = A023000 n

end A023000

/-! ## A023000.P447942160964814735

`A341590(n)+A003462(n)`
-/

namespace A023000.P447942160964814735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341590 n + A003462 n

end

end A023000.P447942160964814735

namespace A023000

/-- `A341590(n)+A003462(n)` -/
def P447942160964814735.Spec : Prop :=
  ∀ n, P447942160964814735.a n = A023000 n

end A023000

/-! ## A023000.P5127413289600179961

`∑[7^n]%(7^n)`
-/

namespace A023000.P5127413289600179961
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) % 7 ^ n

end

end A023000.P5127413289600179961

namespace A023000

/-- `∑[7^n]%(7^n)` -/
def P5127413289600179961.Spec : Prop :=
  ∀ n, (P5127413289600179961.a n : ℤ) = A023000 n

end A023000

/-! ## A023000.P6177743011833759135

`floor(A000420(n)/6)`
-/

namespace A023000.P6177743011833759135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000420 n : ℚ) / 6⌋

end

end A023000.P6177743011833759135

namespace A023000

/-- `floor(A000420(n)/6)` -/
def P6177743011833759135.Spec : Prop :=
  ∀ n, P6177743011833759135.a n = A023000 n

end A023000

/-! ## A023000.P9989896266728267008

`floor(A103458(n)/6)`
-/

namespace A023000.P9989896266728267008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A103458 n : ℚ) / 6⌋

end

end A023000.P9989896266728267008

namespace A023000

/-- `floor(A103458(n)/6)` -/
def P9989896266728267008.Spec : Prop :=
  ∀ n, P9989896266728267008.a n = A023000 n

end A023000

/-!
# A023001: a(n) = (8^n - 1)/7.

The programs for A023001, the canonical program `A023001.P9482498461707251472` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023001 has offset 0).

The definition of A023001 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(8^n-1)/7` (program `A023001.P7433515000217407841`, by `A023001.P7433515000217407841.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A023001.P9482498461707251472

`8*a(n-1)+1` with `a(0)=0`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A023001

/-- `8*a(n-1)+1` -/
def P9482498461707251472.Spec : Prop :=
  ∀ n, (P9482498461707251472.a n : ℤ) = A023001 n

theorem P9482498461707251472.correct : P9482498461707251472.Spec := by
  intro n
  simp only [A023001]

end A023001

/-! ## A023001.P7433515000217407841

`(8^n-1)/7`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A023001.P7433515000217407841
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((8 ^ n : ℤ) - 1 : ℚ) / 7

end

end A023001.P7433515000217407841

namespace A023001

/-- `(8^n-1)/7` -/
def P7433515000217407841.Spec : Prop :=
  ∀ n, P7433515000217407841.a n = (A023001 n : ℚ)

theorem P7433515000217407841.correct : P7433515000217407841.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A023001, Nat.add_sub_cancel, A023001.P7433515000217407841.a, A023001.P9482498461707251472.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A023001, Nat.add_sub_cancel, A023001.P7433515000217407841.a, A023001.P9482498461707251472.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A023001

/-! ## A023001.P17389896707748510745

`ogf(x/(1-9x+8x^2))`
-/

namespace A023001.P17389896707748510745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1] [1, -9, 8] n

end

end A023001.P17389896707748510745

namespace A023001

/-- `ogf(x/(1-9x+8x^2))` -/
def P17389896707748510745.Spec : Prop :=
  ∀ n, P17389896707748510745.a n = A023001 n

end A023001

/-! ## A023001.P3193085462058060960

`lcm(8, a(n-1))+1` with `a(0)=0`
-/

namespace A023001.P3193085462058060960
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Nat.lcm 8 (a (n - 1)) + 1

end

end A023001.P3193085462058060960

namespace A023001

/-- `lcm(8, a(n-1))+1` -/
def P3193085462058060960.Spec : Prop :=
  ∀ n, (P3193085462058060960.a n : ℤ) = A023001 n

end A023001

/-! ## A023001.P285003933947224629

`or(1, 8*a(n-1))` with `a(0)=0`
-/

namespace A023001.P285003933947224629
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Nat.lor 1 (8 * a (n - 1))

end

end A023001.P285003933947224629

namespace A023001

/-- `or(1, 8*a(n-1))` -/
def P285003933947224629.Spec : Prop :=
  ∀ n, (P285003933947224629.a n : ℤ) = A023001 n

end A023001

/-! ## A023001.P2331810711833900103

`xor(1, 8*a(n-1))` with `a(0)=0`
-/

namespace A023001.P2331810711833900103
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Nat.xor 1 (8 * a (n - 1))

end

end A023001.P2331810711833900103

namespace A023001

/-- `xor(1, 8*a(n-1))` -/
def P2331810711833900103.Spec : Prop :=
  ∀ n, (P2331810711833900103.a n : ℤ) = A023001 n

end A023001

/-! ## A023001.P17451058340731838574

`∑[8*a(n-1)]` with `a(0)=0, a(1)=1`
-/

namespace A023001.P17451058340731838574
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  8 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023001.P17451058340731838574

namespace A023001

/-- `∑[8*a(n-1)]` -/
def P17451058340731838574.Spec : Prop :=
  ∀ n, (P17451058340731838574.a n : ℤ) = A023001 n

end A023001

/-! ## A023001.P3972406039245374319

`9-8*(1-a(n-1))` with `a(0)=0`
-/

namespace A023001.P3972406039245374319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  9 - 8 * (1 - a (n - 1))

end

end A023001.P3972406039245374319

namespace A023001

/-- `9-8*(1-a(n-1))` -/
def P3972406039245374319.Spec : Prop :=
  ∀ n, P3972406039245374319.a n = A023001 n

end A023001

/-! ## A023001.P1783206731397286183

`a(n-1)+8^(n-1)` with `a(0)=0`
-/

namespace A023001.P1783206731397286183
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (8 : ℚ) ^ ((n : ℤ) - 1 : ℤ)

end

end A023001.P1783206731397286183

namespace A023001

/-- `a(n-1)+8^(n-1)` -/
def P1783206731397286183.Spec : Prop :=
  ∀ n, P1783206731397286183.a n = (A023001 n : ℚ)

end A023001

/-! ## A023001.P2235440924673850381

`or(8^(n-1), a(n-1))` with `a(0)=0`
-/

namespace A023001.P2235440924673850381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  Int.lor (SequenceMachineLib.roundAway ((8 : ℚ) ^ ((n : ℤ) - 1 : ℤ))) (a (n - 1))

end

end A023001.P2235440924673850381

namespace A023001

/-- `or(8^(n-1), a(n-1))` -/
def P2235440924673850381.Spec : Prop :=
  ∀ n, P2235440924673850381.a n = A023001 n

end A023001

/-! ## A023001.P16961953881168345403

`xor(8^(n-1), a(n-1))` with `a(0)=0`
-/

namespace A023001.P16961953881168345403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  Int.xor (SequenceMachineLib.roundAway ((8 : ℚ) ^ ((n : ℤ) - 1 : ℤ))) (a (n - 1))

end

end A023001.P16961953881168345403

namespace A023001

/-- `xor(8^(n-1), a(n-1))` -/
def P16961953881168345403.Spec : Prop :=
  ∀ n, P16961953881168345403.a n = A023001 n

end A023001

/-! ## A023001.P10507818290182861104

`round(∑[8^((n-1)%(n+2))])`
-/

namespace A023001.P10507818290182861104
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (8 : ℚ) ^ (Int.tmod ((n : ℤ) - 1) (n + 2 : ℤ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A023001.P10507818290182861104

namespace A023001

/-- `round(∑[8^((n-1)%(n+2))])` -/
def P10507818290182861104.Spec : Prop :=
  ∀ n, P10507818290182861104.a n = A023001 n

end A023001

/-! ## A023001.P13483625559167545515

`A047853(n)-1`
-/

namespace A023001.P13483625559167545515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047853 n - 1

end

end A023001.P13483625559167545515

namespace A023001

/-- `A047853(n)-1` -/
def P13483625559167545515.Spec : Prop :=
  ∀ n, P13483625559167545515.a n = A023001 n

end A023001

/-! ## A023001.P1450986852250936314

`A299913(2*n)`
-/

namespace A023001.P1450986852250936314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299913 (2 * n)

end

end A023001.P1450986852250936314

namespace A023001

/-- `A299913(2*n)` -/
def P1450986852250936314.Spec : Prop :=
  ∀ n, P1450986852250936314.a n = A023001 n

end A023001

/-! ## A023001.P15208847400821513663

`A155803(3*n)`
-/

namespace A023001.P15208847400821513663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155803 (3 * n)

end

end A023001.P15208847400821513663

namespace A023001

/-- `A155803(3*n)` -/
def P15208847400821513663.Spec : Prop :=
  ∀ n, P15208847400821513663.a n = A023001 n

end A023001

/-! ## A023001.P9949113922261601206

`floor(A046636(n)/4)`
-/

namespace A023001.P9949113922261601206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A046636 n : ℚ) / 4⌋

end

end A023001.P9949113922261601206

namespace A023001

/-- `floor(A046636(n)/4)` -/
def P9949113922261601206.Spec : Prop :=
  ∀ n, P9949113922261601206.a n = A023001 n

end A023001

/-! ## A023001.P14130651033837786985

`∑[A131577(n)^3]`
-/

namespace A023001.P14130651033837786985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 n ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023001.P14130651033837786985

namespace A023001

/-- `∑[A131577(n)^3]` -/
def P14130651033837786985.Spec : Prop :=
  ∀ n, P14130651033837786985.a n = A023001 n

end A023001

/-! ## A023001.P3896595868839305939

`A063823(3*n)-1`
-/

namespace A023001.P3896595868839305939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063823 (3 * n) - 1

end

end A023001.P3896595868839305939

namespace A023001

/-- `A063823(3*n)-1` -/
def P3896595868839305939.Spec : Prop :=
  ∀ n, P3896595868839305939.a n = A023001 n

end A023001

/-! ## A023001.P3759446708488312306

`A166578(3*n)-1`
-/

namespace A023001.P3759446708488312306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166578 (3 * n) - 1

end

end A023001.P3759446708488312306

namespace A023001

/-- `A166578(3*n)-1` -/
def P3759446708488312306.Spec : Prop :=
  ∀ n, P3759446708488312306.a n = A023001 n

end A023001

/-! ## A023001.P11110824096098611665

`∑[A034008(n+1)^3]`
-/

namespace A023001.P11110824096098611665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034008 (n + 1) ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023001.P11110824096098611665

namespace A023001

/-- `∑[A034008(n+1)^3]` -/
def P11110824096098611665.Spec : Prop :=
  ∀ n, P11110824096098611665.a n = A023001 n

end A023001

/-!
# A023002: Sum of 10th powers.

The programs for A023002, the canonical program `A023002.P383826923714284533` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023002 has offset 0).

The definition of A023002 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A023002.P383826923714284533

`∑[n^10]`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A023002

/-- `∑[n^10]` -/
def P383826923714284533.Spec : Prop :=
  ∀ n, (P383826923714284533.a n : ℤ) = A023002 n

theorem P383826923714284533.correct : P383826923714284533.Spec := by
  intro n
  simp only [A023002]

end A023002

/-! ## A023002.P16212013415693162687

`a(n-1)+n^10` with `a(0)=0`
-/

namespace A023002.P16212013415693162687
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + n ^ 10

end

end A023002.P16212013415693162687

namespace A023002

/-- `a(n-1)+n^10` -/
def P16212013415693162687.Spec : Prop :=
  ∀ n, (P16212013415693162687.a n : ℤ) = A023002 n

end A023002

/-! ## A023002.P4390540400493974212

`floor(a(n-1)+(n*n²²)²)` with `a(0)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A023002.P4390540400493974212
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (n * (n ^ 2) ^ 2) ^ 2

end

end A023002.P4390540400493974212

namespace A023002

/-- `floor(a(n-1)+(n*n²²)²)` -/
def P4390540400493974212.Spec : Prop :=
  ∀ n, (P4390540400493974212.a n : ℤ) = A023002 n

end A023002

/-! ## A023002.P8965586736589802744

`∑[n]+∑[A196291(n)]`
-/

namespace A023002.P8965586736589802744
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196291 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A023002.P8965586736589802744

namespace A023002

/-- `∑[n]+∑[A196291(n)]` -/
def P8965586736589802744.Spec : Prop :=
  ∀ n, P8965586736589802744.a n = A023002 n

end A023002

/-! ## A023002.P2347114676462150642

`∑[2*A008454(n)]/2`
-/

namespace A023002.P2347114676462150642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008454 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A023002.P2347114676462150642

namespace A023002

/-- `∑[2*A008454(n)]/2` -/
def P2347114676462150642.Spec : Prop :=
  ∀ n, P2347114676462150642.a n = (A023002 n : ℚ)

end A023002

/-! ## A023002.P5203509188874194480

`n+1-∑[A024008(n)]`
-/

namespace A023002.P5203509188874194480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024008 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023002.P5203509188874194480

namespace A023002

/-- `n+1-∑[A024008(n)]` -/
def P5203509188874194480.Spec : Prop :=
  ∀ n, P5203509188874194480.a n = A023002 n

end A023002

/-! ## A023002.P11630664023832627171

`abs(∑[n*(1-A024007(n))])`
-/

namespace A023002.P11630664023832627171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (1 - A024007 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A023002.P11630664023832627171

namespace A023002

/-- `abs(∑[n*(1-A024007(n))])` -/
def P11630664023832627171.Spec : Prop :=
  ∀ n, P11630664023832627171.a n = A023002 n

end A023002

/-! ## A023002.P14147665865235366249

`A351770(n)-A351805(n)`
-/

namespace A023002.P14147665865235366249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351770 n - A351805 n

end

end A023002.P14147665865235366249

namespace A023002

/-- `A351770(n)-A351805(n)` -/
def P14147665865235366249.Spec : Prop :=
  ∀ n, P14147665865235366249.a n = A023002 n

end A023002

/-! ## A023002.P2030075572960069627

`2*A351770(n)-A000539(n)²`
-/

namespace A023002.P2030075572960069627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A351770 n - A000539 n ^ 2

end

end A023002.P2030075572960069627

namespace A023002

/-- `2*A351770(n)-A000539(n)²` -/
def P2030075572960069627.Spec : Prop :=
  ∀ n, P2030075572960069627.a n = A023002 n

end A023002

/-! ## A023002.P17826597054556729196

`A000539(n)²-2*A351805(n)`
-/

namespace A023002.P17826597054556729196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000539 n ^ 2 - 2 * A351805 n

end

end A023002.P17826597054556729196

namespace A023002

/-- `A000539(n)²-2*A351805(n)` -/
def P17826597054556729196.Spec : Prop :=
  ∀ n, P17826597054556729196.a n = A023002 n

end A023002

/-! ## A023002.P10806731811668294645

`∑[A008454(n+1)]-A008454(n+1)`
-/

namespace A023002.P10806731811668294645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008454 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A008454 (n + 1)

end

end A023002.P10806731811668294645

namespace A023002

/-- `∑[A008454(n+1)]-A008454(n+1)` -/
def P10806731811668294645.Spec : Prop :=
  ∀ n, P10806731811668294645.a n = A023002 n

end A023002

/-! ## A023002.P5939550959287653131

`∑[A008454(n)]*A057077(2*n)*A057077(2*n)`
-/

namespace A023002.P5939550959287653131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008454 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A057077 (2 * n) * A057077 (2 * n)

end

end A023002.P5939550959287653131

namespace A023002

/-- `∑[A008454(n)]*A057077(2*n)*A057077(2*n)` -/
def P5939550959287653131.Spec : Prop :=
  ∀ n, P5939550959287653131.a n = A023002 n

end A023002

/-! ## A023002.P3661517201970518552

`n+1-∑[A024003(n²)]`
-/

namespace A023002.P3661517201970518552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024003 (n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023002.P3661517201970518552

namespace A023002

/-- `n+1-∑[A024003(n²)]` -/
def P3661517201970518552.Spec : Prop :=
  ∀ n, P3661517201970518552.a n = A023002 n

end A023002

/-! ## A023002.P7019490115420000348

`A000584(n²)+a(n-1)` with `a(0)=0`
-/

namespace A023002.P7019490115420000348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A000584 (n ^ 2) + a (n - 1)

end

end A023002.P7019490115420000348

namespace A023002

/-- `A000584(n²)+a(n-1)` -/
def P7019490115420000348.Spec : Prop :=
  ∀ n, P7019490115420000348.a n = A023002 n

end A023002

/-!
# A023003: Number of partitions of n into parts of 4 kinds.

The programs for A023003, there is no canonical definition to state claims against.
-/

/-! ## A023003.P11786364884911529794

`A144064(∑[n+5]+5)`
-/

namespace A023003.P11786364884911529794
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144064 (∑ j ∈ Finset.range (n + 1), f1 j + 5)

end

end A023003.P11786364884911529794

/-! ## A023003.P15334317543750735795

`record[A144064(A052905(n))]`
-/

namespace A023003.P15334317543750735795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144064 (A052905 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A023003.P15334317543750735795

/-! ## A023003.P13660050557510396300

`A060850(A055998(n+2))`
-/

namespace A023003.P13660050557510396300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060850 (A055998 (n + 2)).toNat

end

end A023003.P13660050557510396300

/-! ## A023003.P3956147427872100328

`record[A144064(abs(A046691(n))-1)]`
-/

namespace A023003.P3956147427872100328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144064 (|A046691 n| - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A023003.P3956147427872100328

/-! ## A023003.P1097171699253459994

`record[A144064(A046691(n+1)-1)]`
-/

namespace A023003.P1097171699253459994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144064 (A046691 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A023003.P1097171699253459994

/-! ## A023003.P12602062130585358249

`A060850(A000096(n+2)+n+2)`
-/

namespace A023003.P12602062130585358249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060850 (A000096 (n + 2) + (n + 2 : ℤ)).toNat

end

end A023003.P12602062130585358249

/-! ## A023003.P8149285228826498907

`record[A144064(A000096(n+1)-1+n)]`
-/

namespace A023003.P8149285228826498907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144064 (A000096 (n + 1) - 1 + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A023003.P8149285228826498907

/-! ## A023003.P1210881877503773451

`record[A144064(A000217(n+1)+2*n)]`
-/

namespace A023003.P1210881877503773451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144064 (A000217 (n + 1) + (2 * n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A023003.P1210881877503773451

/-! ## A023003.P11632739456209909672

`record[A144064(n+1+A000096(n)+n)]`
-/

namespace A023003.P11632739456209909672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144064 ((n + 1 : ℤ) + (A000096 n + (n : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A023003.P11632739456209909672

/-! ## A023003.P2059168428606644050

`A039806(∑[4*n])`
-/

namespace A023003.P2059168428606644050
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039806 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A023003.P2059168428606644050

/-!
# A023004: Number of partitions of n into parts of 5 kinds.

The programs for A023004, there is no canonical definition to state claims against.
-/

/-! ## A023004.P11684559589185414952

`record[A144064(∑[n+5]-(n+1))]`
-/

namespace A023004.P11684559589185414952
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144064 (∑ j ∈ Finset.range (n + 1), f2 j - (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A023004.P11684559589185414952

/-! ## A023004.P8118019241959767196

`A144064(A055999(n+3))`
-/

namespace A023004.P8118019241959767196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144064 (A055999 (n + 3)).toNat

end

end A023004.P8118019241959767196

/-! ## A023004.P14743677370940626311

`A144064(A046691(n+4)-2)`
-/

namespace A023004.P14743677370940626311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144064 (A046691 (n + 4) - 2).toNat

end

end A023004.P14743677370940626311

/-! ## A023004.P4715662818711108766

`A144064(A000096(n+5)-5)`
-/

namespace A023004.P4715662818711108766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144064 (A000096 (n + 5) - 5).toNat

end

end A023004.P4715662818711108766

/-! ## A023004.P3064408236930125612

`A144064(A000217(n+6)-6)`
-/

namespace A023004.P3064408236930125612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144064 (A000217 (n + 6) - 6).toNat

end

end A023004.P3064408236930125612

/-! ## A023004.P3220018515247573239

`A144064(Δ[A101853(n+1)]+3)`
-/

namespace A023004.P3220018515247573239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101853 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144064 (f1 (n + 1) - f1 n + 3).toNat

end

end A023004.P3220018515247573239

/-! ## A023004.P17744513256155969891

`A144064((n+5)²-9-A052905(n))`
-/

namespace A023004.P17744513256155969891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144064 (((n + 5) ^ 2 : ℤ) - 9 - A052905 n).toNat

end

end A023004.P17744513256155969891

/-! ## A023004.P4015827918116633602

`A039807(∑[4*n])`
-/

namespace A023004.P4015827918116633602
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039807 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A023004.P4015827918116633602

/-!
# A023005: Number of partitions of n into parts of 6 kinds.

The programs for A023005, there is no canonical definition to state claims against.
-/

/-! ## A023005.P11039057488557235358

`A060850(A000124(n+6)-6)`
-/

namespace A023005.P11039057488557235358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060850 (A000124 (n + 6) - 6).toNat

end

end A023005.P11039057488557235358

/-! ## A023005.P6939342685768613813

`A144064(A000217(n+7)-7)`
-/

namespace A023005.P6939342685768613813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144064 (A000217 (n + 7) - 7).toNat

end

end A023005.P6939342685768613813

/-! ## A023005.P12656924753751336128

`A144064(Δ[A101853(n+2)]+2)`
-/

namespace A023005.P12656924753751336128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101853 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144064 (f1 (n + 1) - f1 n + 2).toNat

end

end A023005.P12656924753751336128

/-! ## A023005.P13902755334689694207

`A144064(A000096(n+5)+n+1)`
-/

namespace A023005.P13902755334689694207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144064 (A000096 (n + 5) + (n + 1 : ℤ)).toNat

end

end A023005.P13902755334689694207

/-! ## A023005.P5982150556801581287

`A144064(A000124(n+6)+n-1)`
-/

namespace A023005.P5982150556801581287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144064 (A000124 (n + 6) + ((n : ℤ) - 1)).toNat

end

end A023005.P5982150556801581287

/-! ## A023005.P14454691029454469832

`A144064(2*n+A000217(n+5)+6)`
-/

namespace A023005.P14454691029454469832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144064 ((2 * n : ℤ) + (A000217 (n + 5) + 6)).toNat

end

end A023005.P14454691029454469832

/-! ## A023005.P10433356706657778886

`A144064(eq[6, A025581(n)])`
-/

namespace A023005.P10433356706657778886
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144064 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A023005.P10433356706657778886

/-! ## A023005.P3053839654427779214

`A144064(eq[7, A004736(n+1)])`
-/

namespace A023005.P3053839654427779214
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144064 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A023005.P3053839654427779214

/-! ## A023005.P853829817618975929

`A050300((n+1)²+n²)`
-/

namespace A023005.P853829817618975929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050300 ((n + 1) ^ 2 + n ^ 2)

end

end A023005.P853829817618975929

/-!
# A023006: Number of partitions of n into parts of 7 kinds.

The programs for A023006, there is no canonical definition to state claims against.
-/

/-! ## A023006.P2347277162775067161

`A144064(A155212(n+4))`
-/

namespace A023006.P2347277162775067161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144064 (A155212 (n + 4)).toNat

end

end A023006.P2347277162775067161

/-! ## A023006.P2972959886387502886

`A144064(A000217(n+8)-8)`
-/

namespace A023006.P2972959886387502886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144064 (A000217 (n + 8) - 8).toNat

end

end A023006.P2972959886387502886

/-! ## A023006.P14528821890001669145

`A144064(A161680(n+9)-8)`
-/

namespace A023006.P14528821890001669145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144064 (A161680 (n + 9) - 8).toNat

end

end A023006.P14528821890001669145

/-! ## A023006.P11649101225975863521

`A144064(Δ[A101853(n+3)]+1)`
-/

namespace A023006.P11649101225975863521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101853 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144064 (f1 (n + 1) - f1 n + 1).toNat

end

end A023006.P11649101225975863521

/-! ## A023006.P17315985116680757831

`A050301((n+1)²+n²)`
-/

namespace A023006.P17315985116680757831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050301 ((n + 1) ^ 2 + n ^ 2)

end

end A023006.P17315985116680757831

/-!
# A023007: Number of partitions of n into parts of 8 kinds.

The programs for A023007, there is no canonical definition to state claims against.
-/

/-! ## A023007.P4184994218743112881

`A144064(Δ[A101853(n+4)])`
-/

namespace A023007.P4184994218743112881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101853 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144064 (f1 (n + 1) - f1 n).toNat

end

end A023007.P4184994218743112881

/-! ## A023007.P17984067873100638882

`A144064(A055999(n+6)-3)`
-/

namespace A023007.P17984067873100638882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144064 (A055999 (n + 6) - 3).toNat

end

end A023007.P17984067873100638882

/-! ## A023007.P1533467568127896850

`A144064(A055998(n+7)-6)`
-/

namespace A023007.P1533467568127896850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144064 (A055998 (n + 7) - 6).toNat

end

end A023007.P1533467568127896850

/-! ## A023007.P17762055902235230880

`A144064(A000217(n+9)-9)`
-/

namespace A023007.P17762055902235230880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144064 (A000217 (n + 9) - 9).toNat

end

end A023007.P17762055902235230880

/-! ## A023007.P7079195509748246395

`A144064(A161680(n+10)-9)`
-/

namespace A023007.P7079195509748246395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144064 (A161680 (n + 10) - 9).toNat

end

end A023007.P7079195509748246395

/-! ## A023007.P15970893679758503776

`A144064(A052905(n+4)+A005408(n+6))`
-/

namespace A023007.P15970893679758503776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144064 (A052905 (n + 4) + A005408 (n + 6)).toNat

end

end A023007.P15970893679758503776

/-! ## A023007.P8751922223472278574

`A144064(A101853(n+5)-A101853(n+4))`
-/

namespace A023007.P8751922223472278574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144064 (A101853 (n + 5) - A101853 (n + 4)).toNat

end

end A023007.P8751922223472278574

/-! ## A023007.P10435345594288810355

`A144064(A034856(n+6)+A005843(n+5))`
-/

namespace A023007.P10435345594288810355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144064 (A034856 (n + 6) + A005843 (n + 5)).toNat

end

end A023007.P10435345594288810355

/-! ## A023007.P5143669806441178043

`A144064(A101853(n+5)%A101853(n+4))`
-/

namespace A023007.P5143669806441178043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144064 (Int.tmod (A101853 (n + 5)) (A101853 (n + 4))).toNat

end

end A023007.P5143669806441178043

/-! ## A023007.P1406277422573936097

`A050302((n+1)²+n²)`
-/

namespace A023007.P1406277422573936097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050302 ((n + 1) ^ 2 + n ^ 2)

end

end A023007.P1406277422573936097

/-!
# A023008: Number of partitions of n into parts of 9 kinds.

The programs for A023008, there is no canonical definition to state claims against.
-/

/-! ## A023008.P5048786810287367831

`A144064(A055999(n+7)-4)`
-/

namespace A023008.P5048786810287367831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144064 (A055999 (n + 7) - 4).toNat

end

end A023008.P5048786810287367831

/-! ## A023008.P4385951694944581285

`A144064(A055998(n+8)-7)`
-/

namespace A023008.P4385951694944581285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144064 (A055998 (n + 8) - 7).toNat

end

end A023008.P4385951694944581285

/-! ## A023008.P12797917452606237513

`A144064(A000217(n+10)-10)`
-/

namespace A023008.P12797917452606237513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144064 (A000217 (n + 10) - 10).toNat

end

end A023008.P12797917452606237513

/-! ## A023008.P13929492126510695993

`A144064(A167499(n+7)+A005843(n+2))`
-/

namespace A023008.P13929492126510695993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144064 (A167499 (n + 7) + A005843 (n + 2)).toNat

end

end A023008.P13929492126510695993

/-! ## A023008.P14405337067572079428

`A144064(A046691(n+4)+A008574(n+7))`
-/

namespace A023008.P14405337067572079428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144064 (A046691 (n + 4) + A008574 (n + 7)).toNat

end

end A023008.P14405337067572079428

/-! ## A023008.P15387815959656361458

`A050303((n+1)²+n²)`
-/

namespace A023008.P15387815959656361458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050303 ((n + 1) ^ 2 + n ^ 2)

end

end A023008.P15387815959656361458

/-!
# A023009: Number of partitions of n into parts of 10 kinds.

The programs for A023009, there is no canonical definition to state claims against.
-/

/-! ## A023009.P4440470260791878313

`A144064(A055998(n+9)-8)`
-/

namespace A023009.P4440470260791878313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144064 (A055998 (n + 9) - 8).toNat

end

end A023009.P4440470260791878313

/-! ## A023009.P13702786427043080198

`A144064(A034856(n+10)-9)`
-/

namespace A023009.P13702786427043080198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144064 (A034856 (n + 10) - 9).toNat

end

end A023009.P13702786427043080198

/-! ## A023009.P12291332864817934106

`A144064(A000217(n+11)-11)`
-/

namespace A023009.P12291332864817934106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144064 (A000217 (n + 11) - 11).toNat

end

end A023009.P12291332864817934106

/-! ## A023009.P8319492167684674999

`A144064(A052905(n+6)+A005408(n+7))`
-/

namespace A023009.P8319492167684674999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144064 (A052905 (n + 6) + A005408 (n + 7)).toNat

end

end A023009.P8319492167684674999

/-! ## A023009.P383279785764882557

`A144064(A055999(n+7)-A001489(n+6))`
-/

namespace A023009.P383279785764882557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144064 (A055999 (n + 7) - A001489 (n + 6)).toNat

end

end A023009.P383279785764882557

/-! ## A023009.P2416432911210779439

`A050304((n+1)²+n²)`
-/

namespace A023009.P2416432911210779439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050304 ((n + 1) ^ 2 + n ^ 2)

end

end A023009.P2416432911210779439

/-!
# A023010: Number of partitions of n into parts of 11 kinds.

The programs for A023010, there is no canonical definition to state claims against.
-/

/-! ## A023010.P18028790065661303732

`A144064(A000217(n+12)-12)`
-/

namespace A023010.P18028790065661303732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144064 (A000217 (n + 12) - 12).toNat

end

end A023010.P18028790065661303732

/-! ## A023010.P7508806670198754783

`A144064(A253145(n+3)+A022144(n+7))`
-/

namespace A023010.P7508806670198754783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144064 (A253145 (n + 3) + A022144 (n + 7)).toNat

end

end A023010.P7508806670198754783

/-! ## A023010.P13013070172582222148

`A144064(A167499(n+9)+A005843(n+3))`
-/

namespace A023010.P13013070172582222148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144064 (A167499 (n + 9) + A005843 (n + 3)).toNat

end

end A023010.P13013070172582222148

/-! ## A023010.P10140301360170082061

`A144064(A005408(n)+A167499(n+9)+5)`
-/

namespace A023010.P10140301360170082061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144064 (A005408 n + (A167499 (n + 9) + 5)).toNat

end

end A023010.P10140301360170082061

/-! ## A023010.P305228636355684034

`A144064(A055999(n+8)-A001489(n+6))`
-/

namespace A023010.P305228636355684034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144064 (A055999 (n + 8) - A001489 (n + 6)).toNat

end

end A023010.P305228636355684034

/-!
# A023011: Number of partitions of n into parts of 13 kinds.

The programs for A023011, there is no canonical definition to state claims against.
-/

/-! ## A023011.P15245388556093834295

`A144064(eq[13, A025581(n)])`
-/

namespace A023011.P15245388556093834295
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144064 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A023011.P15245388556093834295

/-! ## A023011.P1011346065898460807

`A144064(eq[14, A193739(n)])`
-/

namespace A023011.P1011346065898460807
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  14

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144064 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A023011.P1011346065898460807

/-! ## A023011.P9739258281503943490

`A144064(eq[27, A099375(n)])`
-/

namespace A023011.P9739258281503943490
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  27

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144064 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A023011.P9739258281503943490

/-! ## A023011.P7787396283959306431

`A144064(A000217(n+14)-14)`
-/

namespace A023011.P7787396283959306431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144064 (A000217 (n + 14) - 14).toNat

end

end A023011.P7787396283959306431

/-! ## A023011.P745252945289729258

`A144064(eq[14, A004736(n+1)])`
-/

namespace A023011.P745252945289729258
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  14

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144064 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A023011.P745252945289729258

/-! ## A023011.P9921775748914828537

`A144064(A167499(n+11)+A005843(n+4))`
-/

namespace A023011.P9921775748914828537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144064 (A167499 (n + 11) + A005843 (n + 4)).toNat

end

end A023011.P9921775748914828537

/-!
# A023012: Number of partitions of n into parts of 14 kinds.

The programs for A023012, there is no canonical definition to state claims against.
-/

/-! ## A023012.P14511933593070135645

`A144064(A056115(n+10))`
-/

namespace A023012.P14511933593070135645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144064 (A056115 (n + 10)).toNat

end

end A023012.P14511933593070135645

/-! ## A023012.P1878078490139925021

`A144064(eq[14, A025581(n)])`
-/

namespace A023012.P1878078490139925021
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  14

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144064 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A023012.P1878078490139925021

/-! ## A023012.P7021465855712044071

`A144064(eq[29, A099375(n)])`
-/

namespace A023012.P7021465855712044071
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  29

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144064 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A023012.P7021465855712044071

/-! ## A023012.P1013812727049014451

`A144064(A000217(n+15)-15)`
-/

namespace A023012.P1013812727049014451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144064 (A000217 (n + 15) - 15).toNat

end

end A023012.P1013812727049014451

/-! ## A023012.P16834020224784935219

`A144064(eq[15, A004736(n+1)])`
-/

namespace A023012.P16834020224784935219
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144064 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A023012.P16834020224784935219

/-! ## A023012.P13720491390435404712

`A144064(A161680(n+15)+n)`
-/

namespace A023012.P13720491390435404712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144064 (A161680 (n + 15) + (n : ℤ)).toNat

end

end A023012.P13720491390435404712

/-! ## A023012.P598435206531353339

`A144064(A034856(n+12)+A005843(n+8))`
-/

namespace A023012.P598435206531353339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144064 (A034856 (n + 12) + A005843 (n + 8)).toNat

end

end A023012.P598435206531353339

/-!
# A023013: Number of partitions of n into parts of 15 kinds.

The programs for A023013, there is no canonical definition to state claims against.
-/

/-! ## A023013.P13876558985061247024

`A144064(eq[15, A025581(n)])`
-/

namespace A023013.P13876558985061247024
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144064 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A023013.P13876558985061247024

/-! ## A023013.P14057000869631350975

`A144064(eq[16, A193739(n)])`
-/

namespace A023013.P14057000869631350975
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144064 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A023013.P14057000869631350975

/-! ## A023013.P15820335739428586486

`A144064(eq[16, A004736(n+1)])`
-/

namespace A023013.P15820335739428586486
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144064 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A023013.P15820335739428586486

/-! ## A023013.P14441802656615583312

`A144064(A000217(n+15)+n)`
-/

namespace A023013.P14441802656615583312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144064 (A000217 (n + 15) + (n : ℤ)).toNat

end

end A023013.P14441802656615583312

/-! ## A023013.P1932645486117167033

`A144064(A167499(n+13)+A005843(n+5))`
-/

namespace A023013.P1932645486117167033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144064 (A167499 (n + 13) + A005843 (n + 5)).toNat

end

end A023013.P1932645486117167033

/-!
# A023014: Number of partitions of n into parts of 16 kinds.

The programs for A023014, there is no canonical definition to state claims against.
-/

/-! ## A023014.P4654160859135940885

`A144064(eq[16, A025581(n)])`
-/

namespace A023014.P4654160859135940885
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144064 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A023014.P4654160859135940885

/-! ## A023014.P17554757362938895920

`A144064(eq[17, A193739(n)])`
-/

namespace A023014.P17554757362938895920
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144064 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A023014.P17554757362938895920

/-! ## A023014.P9153506227080344386

`A144064(eq[17, A004736(n+1)])`
-/

namespace A023014.P9153506227080344386
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144064 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A023014.P9153506227080344386

/-! ## A023014.P13008325432036471552

`A144064(A034856(n+14)+A005843(n+9))`
-/

namespace A023014.P13008325432036471552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144064 (A034856 (n + 14) + A005843 (n + 9)).toNat

end

end A023014.P13008325432036471552

/-! ## A023014.P7165795336440572176

`record[A144064(A132315(n+1))]`
-/

namespace A023014.P7165795336440572176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144064 (A132315 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A023014.P7165795336440572176

/-!
# A023015: Number of partitions of n into parts of 17 kinds.

The programs for A023015, there is no canonical definition to state claims against.
-/

/-! ## A023015.P5815466870333903889

`A144064(eq[17, A025581(n)])`
-/

namespace A023015.P5815466870333903889
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144064 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A023015.P5815466870333903889

/-! ## A023015.P12690027743184271239

`A144064(eq[18, A193739(n)])`
-/

namespace A023015.P12690027743184271239
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  18

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144064 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A023015.P12690027743184271239

/-! ## A023015.P8866492753632138635

`A144064(eq[18, A004736(n+1)])`
-/

namespace A023015.P8866492753632138635
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  18

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144064 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A023015.P8866492753632138635

/-! ## A023015.P10412733654600200541

`A144064(A167499(n+15)+A005843(n+6))`
-/

namespace A023015.P10412733654600200541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144064 (A167499 (n + 15) + A005843 (n + 6)).toNat

end

end A023015.P10412733654600200541

/-! ## A023015.P16572539519157032633

`A144064(A167614(n+11)+A008588(n+12))`
-/

namespace A023015.P16572539519157032633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144064 (A167614 (n + 11) + A008588 (n + 12)).toNat

end

end A023015.P16572539519157032633

/-!
# A023016: Number of partitions of n into parts of 18 kinds.

The programs for A023016, there is no canonical definition to state claims against.
-/

/-! ## A023016.P14384022311728812438

`A144064(eq[18, A025581(n)])`
-/

namespace A023016.P14384022311728812438
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  18

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144064 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A023016.P14384022311728812438

/-! ## A023016.P14092812048628676355

`A144064(eq[19, A193739(n)])`
-/

namespace A023016.P14092812048628676355
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144064 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A023016.P14092812048628676355

/-! ## A023016.P16086031651634872483

`A144064(eq[37, A099375(n)])`
-/

namespace A023016.P16086031651634872483
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  37

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144064 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A023016.P16086031651634872483

/-! ## A023016.P7950038982649873251

`A144064(A034856(n+18)-17)`
-/

namespace A023016.P7950038982649873251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144064 (A034856 (n + 18) - 17).toNat

end

end A023016.P7950038982649873251

/-! ## A023016.P13688504029485009846

`A144064(Δ[A264443(n+13)+A055999(n)])`
-/

namespace A023016.P13688504029485009846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 (n + 13) + A055999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144064 (f1 (n + 1) - f1 n).toNat

end

end A023016.P13688504029485009846

/-!
# A023017: Number of partitions of n into parts of 19 kinds.

The programs for A023017, there is no canonical definition to state claims against.
-/

/-! ## A023017.P11437080899218610074

`A144064(eq[19, A025581(n)])`
-/

namespace A023017.P11437080899218610074
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144064 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A023017.P11437080899218610074

/-! ## A023017.P8066975595673527868

`A144064(eq[20, A193739(n)])`
-/

namespace A023017.P8066975595673527868
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  20

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144064 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A023017.P8066975595673527868

/-! ## A023017.P7268500927630749576

`A144064(eq[20, A004736(n+1)])`
-/

namespace A023017.P7268500927630749576
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  20

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144064 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A023017.P7268500927630749576

/-! ## A023017.P18365717364139993880

`A144064(A000217(n+19)+n)`
-/

namespace A023017.P18365717364139993880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144064 (A000217 (n + 19) + (n : ℤ)).toNat

end

end A023017.P18365717364139993880

/-!
# A023018: Number of partitions of n into parts of 20 kinds.

The programs for A023018, there is no canonical definition to state claims against.
-/

/-! ## A023018.P18281166782816409192

`A144064(eq[20, A025581(n)])`
-/

namespace A023018.P18281166782816409192
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  20

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144064 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A023018.P18281166782816409192

/-! ## A023018.P2338064522366646639

`A144064(eq[41, A099375(n)])`
-/

namespace A023018.P2338064522366646639
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  41

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144064 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A023018.P2338064522366646639

/-! ## A023018.P3043084214666226401

`A144064(eq[21, A004736(n+1)])`
-/

namespace A023018.P3043084214666226401
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  21

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144064 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A023018.P3043084214666226401

/-! ## A023018.P17999203734556221616

`A144064(A004771(n+14)+A000217(n+13))`
-/

namespace A023018.P17999203734556221616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144064 (A004771 (n + 14) + A000217 (n + 13)).toNat

end

end A023018.P17999203734556221616

/-!
# A023019: Number of partitions of n into parts of 21 kinds.

The programs for A023019, there is no canonical definition to state claims against.
-/

/-! ## A023019.P14762193235327722628

`A144064(eq[21, A025581(n)])`
-/

namespace A023019.P14762193235327722628
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  21

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144064 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A023019.P14762193235327722628

/-! ## A023019.P4468119411320275198

`A144064(eq[22, A193739(n)])`
-/

namespace A023019.P4468119411320275198
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  22

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144064 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A023019.P4468119411320275198

/-! ## A023019.P17303502747421951395

`A282923(A004901(n+1))`
-/

namespace A023019.P17303502747421951395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282923 (A004901 (n + 1)).toNat

end

end A023019.P17303502747421951395

/-!
# A023020: Number of partitions of n into parts of 22 kinds.

The programs for A023020, there is no canonical definition to state claims against.
-/

/-! ## A023020.P6301380233492216548

`A144064(eq[22, A025581(n)])`
-/

namespace A023020.P6301380233492216548
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  22

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144064 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A023020.P6301380233492216548

/-!
# A023021: Number of partitions of n into parts of 23 kinds.

The programs for A023021, there is no canonical definition to state claims against.
-/

/-! ## A023021.P16980021665379182099

`A144064(eq[23, A025581(n)])`
-/

namespace A023021.P16980021665379182099
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  23

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144064 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A023021.P16980021665379182099

/-! ## A023021.P10096558869912774877

`A144064(eq[24, A004736(n+1)])`
-/

namespace A023021.P10096558869912774877
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  24

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144064 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A023021.P10096558869912774877

/-!
# A023022: Number of partitions of n into two relatively prime parts. After initial term, this is the "half-totient" function phi(n)/2 (A000010(n)/2).

The programs for A023022, the canonical program `A023022.P11386116983089774469` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023022 has offset 2).

The definition of A023022 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A023022.P8416312091174730997

`ceil(A000010(n+2)/2)`
-/

namespace A023022.P8416312091174730997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A000010 (n + 2) : ℚ) / 2⌉

end

end A023022.P8416312091174730997

namespace A023022

/-- `ceil(A000010(n+2)/2)` -/
def P8416312091174730997.Spec : Prop :=
  ∀ n, P8416312091174730997.a n = A023022 (n + 2)

end A023022

/-! ## A023022.P11386116983089774469

`round(Δ[A002088(n+1)]/2)`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A023022

/-- `round(Δ[A002088(n+1)]/2)` -/
def P11386116983089774469.Spec : Prop :=
  ∀ n, P11386116983089774469.a n = A023022 (n + 2)

theorem P11386116983089774469.correct : P11386116983089774469.Spec := by
  intro n
  simp only [A023022, Nat.add_sub_cancel]

end A023022

/-! ## A023022.P4054480780676278869

`A000010(abs(1-n)+3)/2`
-/

namespace A023022.P4054480780676278869
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (|1 - (n : ℤ)| + 3).toNat : ℚ) / 2

end

end A023022.P4054480780676278869

namespace A023022

/-- `A000010(abs(1-n)+3)/2` -/
def P4054480780676278869.Spec : Prop :=
  ∀ n, P4054480780676278869.a n = (A023022 (n + 2) : ℚ)

end A023022

/-! ## A023022.P2239302697557338037

`lcm(2, A000010(lcm(2, n+2)))/2`
-/

namespace A023022.P2239302697557338037
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A000010 (Nat.lcm 2 (n + 2))) : ℚ) / 2

end

end A023022.P2239302697557338037

namespace A023022

/-- `lcm(2, A000010(lcm(2, n+2)))/2` -/
def P2239302697557338037.Spec : Prop :=
  ∀ n, P2239302697557338037.a n = (A023022 (n + 2) : ℚ)

end A023022

/-! ## A023022.P1398771566615799062

`A057001(n+1)+a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A023022.P1398771566615799062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A057001 (n + 1) + a (n - 1)

end

end A023022.P1398771566615799062

namespace A023022

/-- `A057001(n+1)+a(n-1)` -/
def P1398771566615799062.Spec : Prop :=
  ∀ n, P1398771566615799062.a n = A023022 (n + 2)

end A023022

/-! ## A023022.P8530318410830503689

`floor((A000010(C(n+2, n+1))+1)/2)`
-/

namespace A023022.P8530318410830503689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000010 (Nat.choose (n + 2) (n + 1)) + 1 : ℚ) / 2⌋

end

end A023022.P8530318410830503689

namespace A023022

/-- `floor((A000010(C(n+2, n+1))+1)/2)` -/
def P8530318410830503689.Spec : Prop :=
  ∀ n, P8530318410830503689.a n = A023022 (n + 2)

end A023022

/-! ## A023022.P13648537671349442411

`round(A000010(round((2*n+1)/2)+1)/2)`
-/

namespace A023022.P13648537671349442411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A000010 (SequenceMachineLib.roundAway ((2 * n + 1 : ℚ) / 2) + 1).toNat : ℚ) / 2)

end

end A023022.P13648537671349442411

namespace A023022

/-- `round(A000010(round((2*n+1)/2)+1)/2)` -/
def P13648537671349442411.Spec : Prop :=
  ∀ n, P13648537671349442411.a n = A023022 (n + 2)

end A023022

/-! ## A023022.P15447620916986325974

`Δ[a(n-1)+A000010(n+1)/2]` with `a(0)=0, a(1)=1`
-/

namespace A023022.P15447620916986325974
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  f1 (n - 1) + (A000010 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A023022.P15447620916986325974

namespace A023022

/-- `Δ[a(n-1)+A000010(n+1)/2]` -/
def P15447620916986325974.Spec : Prop :=
  ∀ n, P15447620916986325974.a n = (A023022 (n + 2) : ℚ)

end A023022

/-! ## A023022.P7250615321067867741

`floor(2*(A000010((n+1)%(n+2)+1)+1)/4)`
-/

namespace A023022.P7250615321067867741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 * (A000010 ((n + 1) % (n + 2) + 1) + 1) : ℚ) / 4⌋

end

end A023022.P7250615321067867741

namespace A023022

/-- `floor(2*(A000010((n+1)%(n+2)+1)+1)/4)` -/
def P7250615321067867741.Spec : Prop :=
  ∀ n, P7250615321067867741.a n = A023022 (n + 2)

end A023022

/-! ## A023022.P872353616577400697

`A004525(A000010(n+2))`
-/

namespace A023022.P872353616577400697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A000010 (n + 2)).toNat

end

end A023022.P872353616577400697

namespace A023022

/-- `A004525(A000010(n+2))` -/
def P872353616577400697.Spec : Prop :=
  ∀ n, P872353616577400697.a n = A023022 (n + 2)

end A023022

/-! ## A023022.P8999488588514841941

`A004525(Δ[A002088(n+1)])`
-/

namespace A023022.P8999488588514841941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (f1 (n + 1) - f1 n).toNat

end

end A023022.P8999488588514841941

namespace A023022

/-- `A004525(Δ[A002088(n+1)])` -/
def P8999488588514841941.Spec : Prop :=
  ∀ n, P8999488588514841941.a n = A023022 (n + 2)

end A023022

/-! ## A023022.P13214464808034048258

`A004525(Δ[A005728(n+1)])`
-/

namespace A023022.P13214464808034048258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (f1 (n + 1) - f1 n).toNat

end

end A023022.P13214464808034048258

namespace A023022

/-- `A004525(Δ[A005728(n+1)])` -/
def P13214464808034048258.Spec : Prop :=
  ∀ n, P13214464808034048258.a n = A023022 (n + 2)

end A023022

/-! ## A023022.P18233508319330094358

`A026741(Δ[A002088(n+1)])`
-/

namespace A023022.P18233508319330094358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (f1 (n + 1) - f1 n).toNat

end

end A023022.P18233508319330094358

namespace A023022

/-- `A026741(Δ[A002088(n+1)])` -/
def P18233508319330094358.Spec : Prop :=
  ∀ n, P18233508319330094358.a n = A023022 (n + 2)

end A023022

/-! ## A023022.P12246301766240752373

`A004526(A000010(n+2)+1)`
-/

namespace A023022.P12246301766240752373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A000010 (n + 2) + 1).toNat

end

end A023022.P12246301766240752373

namespace A023022

/-- `A004526(A000010(n+2)+1)` -/
def P12246301766240752373.Spec : Prop :=
  ∀ n, P12246301766240752373.a n = A023022 (n + 2)

end A023022

/-! ## A023022.P14970008255611219157

`A057979(A000010(n+2)+1)`
-/

namespace A023022.P14970008255611219157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (A000010 (n + 2) + 1).toNat

end

end A023022.P14970008255611219157

namespace A023022

/-- `A057979(A000010(n+2)+1)` -/
def P14970008255611219157.Spec : Prop :=
  ∀ n, P14970008255611219157.a n = A023022 (n + 2)

end A023022

/-! ## A023022.P9035314299850564634

`A101279(A000010(n+2)+1)`
-/

namespace A023022.P9035314299850564634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101279 (A000010 (n + 2) + 1).toNat

end

end A023022.P9035314299850564634

namespace A023022

/-- `A101279(A000010(n+2)+1)` -/
def P9035314299850564634.Spec : Prop :=
  ∀ n, P9035314299850564634.a n = A023022 (n + 2)

end A023022

/-! ## A023022.P17708362258984465840

`A116921(A000010(n+2)+1)`
-/

namespace A023022.P17708362258984465840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116921 (A000010 (n + 2) + 1).toNat

end

end A023022.P17708362258984465840

namespace A023022

/-- `A116921(A000010(n+2)+1)` -/
def P17708362258984465840.Spec : Prop :=
  ∀ n, P17708362258984465840.a n = A023022 (n + 2)

end A023022

/-! ## A023022.P9003619156409988236

`A008619(A000010(n+2)-1)`
-/

namespace A023022.P9003619156409988236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A000010 (n + 2) - 1).toNat

end

end A023022.P9003619156409988236

namespace A023022

/-- `A008619(A000010(n+2)-1)` -/
def P9003619156409988236.Spec : Prop :=
  ∀ n, P9003619156409988236.a n = A023022 (n + 2)

end A023022

/-! ## A023022.P16491336715269314983

`A083542(n+1)/A140434(n+1)`
-/

namespace A023022.P16491336715269314983
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083542 (n + 1) : ℚ) / (A140434 (n + 1) : ℚ)

end

end A023022.P16491336715269314983

namespace A023022

/-- `A083542(n+1)/A140434(n+1)` -/
def P16491336715269314983.Spec : Prop :=
  ∀ n, P16491336715269314983.a n = (A023022 (n + 2) : ℚ)

end A023022

/-! ## A023022.P9340808666687882733

`gcd(2, A000040(n+1))/2*A000010(n+2)`
-/

namespace A023022.P9340808666687882733
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.gcd 2 (A000040 (n + 1)) : ℚ) / 2 * (A000010 (n + 2) : ℚ)

end

end A023022.P9340808666687882733

namespace A023022

/-- `gcd(2, A000040(n+1))/2*A000010(n+2)` -/
def P9340808666687882733.Spec : Prop :=
  ∀ n, P9340808666687882733.a n = (A023022 (n + 2) : ℚ)

end A023022

/-!
# A023023: Number of partitions of n into 3 unordered relatively prime parts.

The programs for A023023, the canonical program `A023023.P8312334667224594781` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023023 has offset 3).

The definition of A023023 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A023023.P8312334667224594781

`ceil(A000114(n+3)/3)/2`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A023023

/-- `ceil(A000114(n+3)/3)/2` -/
def P8312334667224594781.Spec : Prop :=
  ∀ n, P8312334667224594781.a n = (A023023 (n + 3) : ℚ)

end A023023

/-! ## A023023.P17603913991149024938

`ceil(A007434(n+3)/12)`
-/

namespace A023023.P17603913991149024938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A007434 (n + 3) : ℚ) / 12⌉

end

end A023023.P17603913991149024938

namespace A023023

/-- `ceil(A007434(n+3)/12)` -/
def P17603913991149024938.Spec : Prop :=
  ∀ n, P17603913991149024938.a n = A023023 (n + 3)

end A023023

/-! ## A023023.P13583482054536180928

`A001399(n)-A082024(n+3)`
-/

namespace A023023.P13583482054536180928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001399 n - A082024 (n + 3)

end

end A023023.P13583482054536180928

namespace A023023

/-- `A001399(n)-A082024(n+3)` -/
def P13583482054536180928.Spec : Prop :=
  ∀ n, P13583482054536180928.a n = A023023 (n + 3)

end A023023

/-! ## A023023.P5528933603219874621

`A211540(n+5)-A082024(n+3)`
-/

namespace A023023.P5528933603219874621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211540 (n + 5) - A082024 (n + 3)

end

end A023023.P5528933603219874621

namespace A023023

/-- `A211540(n+5)-A082024(n+3)` -/
def P5528933603219874621.Spec : Prop :=
  ∀ n, P5528933603219874621.a n = A023023 (n + 3)

end A023023

/-! ## A023023.P17035236408536524095

`A002348(n+3)/A029744(n+1)*A016116(n)`
-/

namespace A023023.P17035236408536524095
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002348 (n + 3) : ℚ) / (A029744 (n + 1) : ℚ) * (A016116 n : ℚ)

end

end A023023.P17035236408536524095

namespace A023023

/-- `A002348(n+3)/A029744(n+1)*A016116(n)` -/
def P17035236408536524095.Spec : Prop :=
  ∀ n, P17035236408536524095.a n = (A023023 (n + 3) : ℚ)

end A023023

/-! ## A023023.P18010844571076150460

`A008615(A000114(n+3))`
-/

namespace A023023.P18010844571076150460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (A000114 (n + 3)).toNat

end

end A023023.P18010844571076150460

namespace A023023

/-- `A008615(A000114(n+3))` -/
def P18010844571076150460.Spec : Prop :=
  ∀ n, P18010844571076150460.a n = A023023 (n + 3)

end A023023

/-! ## A023023.P18299876095811998906

`A282750(∑[n+2]+4)`
-/

namespace A023023.P18299876095811998906
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282750 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A023023.P18299876095811998906

namespace A023023

/-- `A282750(∑[n+2]+4)` -/
def P18299876095811998906.Spec : Prop :=
  ∀ n, P18299876095811998906.a n = A023023 (n + 3)

end A023023

/-!
# A023024: Number of partitions of n into 4 unordered relatively prime parts.

The programs for A023024, there is no canonical definition to state claims against.
-/

/-! ## A023024.P10667146772517913344

`A282750(∑[n+3]+7)`
-/

namespace A023024.P10667146772517913344
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282750 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A023024.P10667146772517913344

/-! ## A023024.P15637130823508354091

`or(char[1], A282750(A167614(n+2)+1))`
-/

namespace A023024.P15637130823508354091
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A282750 (A167614 (n + 2) + 1).toNat)

end

end A023024.P15637130823508354091

/-! ## A023024.P5851295753508053779

`or(char[1], A282750(A000096(n+2)+5))`
-/

namespace A023024.P5851295753508053779
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A282750 (A000096 (n + 2) + 5).toNat)

end

end A023024.P5851295753508053779

/-! ## A023024.P17503798712221064871

`A282750(A052905(n)+9)/A007318(C(2, n))`
-/

namespace A023024.P17503798712221064871
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A282750 (A052905 n + 9).toNat : ℚ) / (A007318 (Nat.choose 2 n) : ℚ)

end

end A023024.P17503798712221064871

/-! ## A023024.P150993988803751835

`A007318(C(2, n))*A282750(A000096(n+2)+5)`
-/

namespace A023024.P150993988803751835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A282750 (A000096 (n + 2) + 5).toNat

end

end A023024.P150993988803751835

/-! ## A023024.P12870832092554339589

`A000041(C(2, n+2))*A282750(A052905(n)+9)`
-/

namespace A023024.P12870832092554339589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose 2 (n + 2)) * A282750 (A052905 n + 9).toNat

end

end A023024.P12870832092554339589

/-! ## A023024.P7984016120451699405

`A282750(A000096(n+2)+5)^A014963(4*n+2)`
-/

namespace A023024.P7984016120451699405
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A282750 (A000096 (n + 2) + 5).toNat : ℚ) ^ (A014963 (4 * n + 2) : ℤ)

end

end A023024.P7984016120451699405

/-! ## A023024.P13454056695505926354

`A000203(((-1)^n)²)*A282750(A000096(n+2)+5)`
-/

namespace A023024.P13454056695505926354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (((-1) ^ n) ^ 2).toNat * A282750 (A000096 (n + 2) + 5).toNat

end

end A023024.P13454056695505926354

/-!
# A023025: Number of partitions of n into 5 unordered relatively prime parts.

The programs for A023025, there is no canonical definition to state claims against.
-/

/-! ## A023025.P13002556520928184342

`A282750(∑[n+4]+11)`
-/

namespace A023025.P13002556520928184342
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282750 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A023025.P13002556520928184342

/-!
# A023026: Number of partitions of n into 6 unordered relatively prime parts.

The programs for A023026, there is no canonical definition to state claims against.
-/

/-! ## A023026.P10586751207539132841

`A282750(A056115(n)+21)`
-/

namespace A023026.P10586751207539132841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282750 (A056115 n + 21).toNat

end

end A023026.P10586751207539132841

/-! ## A023026.P6234137365313480094

`A282750(A167499(n+4)+1)`
-/

namespace A023026.P6234137365313480094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282750 (A167499 (n + 4) + 1).toNat

end

end A023026.P6234137365313480094

/-! ## A023026.P8755632258315598357

`A282750(A167614(n+4)+3)`
-/

namespace A023026.P8755632258315598357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282750 (A167614 (n + 4) + 3).toNat

end

end A023026.P8755632258315598357

/-! ## A023026.P2194511066101839780

`A282750(A000124(n+5)+5)`
-/

namespace A023026.P2194511066101839780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282750 (A000124 (n + 5) + 5).toNat

end

end A023026.P2194511066101839780

/-! ## A023026.P15190236437207683556

`A282750(A000096(n+4)+7)`
-/

namespace A023026.P15190236437207683556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282750 (A000096 (n + 4) + 7).toNat

end

end A023026.P15190236437207683556

/-! ## A023026.P17284799331581896598

`A282750(A000217(n+5)+6)`
-/

namespace A023026.P17284799331581896598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282750 (A000217 (n + 5) + 6).toNat

end

end A023026.P17284799331581896598

/-! ## A023026.P1739260454899946363

`A282750(A034856(n+4)+8)`
-/

namespace A023026.P1739260454899946363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282750 (A034856 (n + 4) + 8).toNat

end

end A023026.P1739260454899946363

/-! ## A023026.P17085270802090052520

`A282750(A161680(n+6)+6)`
-/

namespace A023026.P17085270802090052520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282750 (A161680 (n + 6) + 6).toNat

end

end A023026.P17085270802090052520

/-! ## A023026.P2098694419963336111

`A282750(A046691(n+3)+10)`
-/

namespace A023026.P2098694419963336111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282750 (A046691 (n + 3) + 10).toNat

end

end A023026.P2098694419963336111

/-! ## A023026.P12575416360325089615

`A282750(A052905(n+2)+11)`
-/

namespace A023026.P12575416360325089615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282750 (A052905 (n + 2) + 11).toNat

end

end A023026.P12575416360325089615

/-!
# A023027: Number of partitions of n into 7 unordered relatively prime parts.

The programs for A023027, there is no canonical definition to state claims against.
-/

/-! ## A023027.P12609639583033887901

`A282750(A167487(n+5))`
-/

namespace A023027.P12609639583033887901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282750 (A167487 (n + 5)).toNat

end

end A023027.P12609639583033887901

/-! ## A023027.P458400630126375539

`A282750(A302537(n)+27)`
-/

namespace A023027.P458400630126375539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282750 (A302537 n + 27).toNat

end

end A023027.P458400630126375539

/-! ## A023027.P11438226172488713042

`A282750(A056119(n)+28)`
-/

namespace A023027.P11438226172488713042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282750 (A056119 n + 28).toNat

end

end A023027.P11438226172488713042

/-! ## A023027.P17038306647016379039

`A282750(A166136(n+5)+1)`
-/

namespace A023027.P17038306647016379039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282750 (A166136 (n + 5) + 1).toNat

end

end A023027.P17038306647016379039

/-! ## A023027.P16229265863745122745

`A282750(A133263(n+6)+5)`
-/

namespace A023027.P16229265863745122745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282750 (A133263 (n + 6) + 5).toNat

end

end A023027.P16229265863745122745

/-! ## A023027.P9430499098093174050

`A282750(A152950(n+7)+4)`
-/

namespace A023027.P9430499098093174050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282750 (A152950 (n + 7) + 4).toNat

end

end A023027.P9430499098093174050

/-! ## A023027.P13274945296430447792

`A282750(A000124(n+6)+6)`
-/

namespace A023027.P13274945296430447792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282750 (A000124 (n + 6) + 6).toNat

end

end A023027.P13274945296430447792

/-! ## A023027.P5414337675251284745

`A282750(A000217(n+6)+7)`
-/

namespace A023027.P5414337675251284745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282750 (A000217 (n + 6) + 7).toNat

end

end A023027.P5414337675251284745

/-! ## A023027.P9857293552987896256

`A282750(A161680(n+7)+7)`
-/

namespace A023027.P9857293552987896256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282750 (A161680 (n + 7) + 7).toNat

end

end A023027.P9857293552987896256

/-! ## A023027.P4033395537247485351

`A282750(A052905(n+3)+12)`
-/

namespace A023027.P4033395537247485351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282750 (A052905 (n + 3) + 12).toNat

end

end A023027.P4033395537247485351

/-!
# A023028: Number of partitions of n into 8 unordered relatively prime parts.

The programs for A023028, there is no canonical definition to state claims against.
-/

/-! ## A023028.P10652905016980231303

`A282750(A167487(n+6)+1)`
-/

namespace A023028.P10652905016980231303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282750 (A167487 (n + 6) + 1).toNat

end

end A023028.P10652905016980231303

/-! ## A023028.P13209248877116387267

`A282750(A167499(n+6)+3)`
-/

namespace A023028.P13209248877116387267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282750 (A167499 (n + 6) + 3).toNat

end

end A023028.P13209248877116387267

/-! ## A023028.P12861878276158390723

`A282750(A167614(n+6)+5)`
-/

namespace A023028.P12861878276158390723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282750 (A167614 (n + 6) + 5).toNat

end

end A023028.P12861878276158390723

/-! ## A023028.P17073060057473638719

`A282750(A000124(n+7)+7)`
-/

namespace A023028.P17073060057473638719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282750 (A000124 (n + 7) + 7).toNat

end

end A023028.P17073060057473638719

/-! ## A023028.P2057683508569727344

`A282750(A000217(n+7)+8)`
-/

namespace A023028.P2057683508569727344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282750 (A000217 (n + 7) + 8).toNat

end

end A023028.P2057683508569727344

/-! ## A023028.P15343660261577822765

`A282750(A161680(n+8)+8)`
-/

namespace A023028.P15343660261577822765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282750 (A161680 (n + 8) + 8).toNat

end

end A023028.P15343660261577822765

/-!
# A023029: Number of partitions of n into 9 unordered relatively prime parts.

The programs for A023029, there is no canonical definition to state claims against.
-/

/-! ## A023029.P18070425019803200191

`A282750(A000124(n+8)+8)`
-/

namespace A023029.P18070425019803200191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282750 (A000124 (n + 8) + 8).toNat

end

end A023029.P18070425019803200191

/-! ## A023029.P10139942426997091419

`A282750(A161680(n+9)+9)`
-/

namespace A023029.P10139942426997091419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282750 (A161680 (n + 9) + 9).toNat

end

end A023029.P10139942426997091419

/-! ## A023029.P9161885024828227101

`A282750(A000096(n+8)-(n-1))`
-/

namespace A023029.P9161885024828227101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282750 (A000096 (n + 8) - ((n : ℤ) - 1)).toNat

end

end A023029.P9161885024828227101

/-! ## A023029.P1101066938347357809

`A282750(A134869(n+9)-(n+1))`
-/

namespace A023029.P1101066938347357809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282750 (A134869 (n + 9) - (n + 1 : ℤ)).toNat

end

end A023029.P1101066938347357809

/-! ## A023029.P18008120874785542393

`A282750(A052905(n+7)-5-2*n)`
-/

namespace A023029.P18008120874785542393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282750 (A052905 (n + 7) - 5 - (2 * n : ℤ)).toNat

end

end A023029.P18008120874785542393

/-! ## A023029.P12910378193507557901

`A282750(A000217(n+10)-10-2*n)`
-/

namespace A023029.P12910378193507557901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282750 (A000217 (n + 10) - 10 - (2 * n : ℤ)).toNat

end

end A023029.P12910378193507557901

/-!
# A023030: Number of partitions of n into 10 unordered relatively prime parts.

The programs for A023030, there is no canonical definition to state claims against.
-/

/-! ## A023030.P3195464216888551807

`A282750(A167487(n+8)+3)`
-/

namespace A023030.P3195464216888551807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282750 (A167487 (n + 8) + 3).toNat

end

end A023030.P3195464216888551807

/-! ## A023030.P12532526698044134799

`A282750(A167499(n+8)+5)`
-/

namespace A023030.P12532526698044134799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282750 (A167499 (n + 8) + 5).toNat

end

end A023030.P12532526698044134799

/-! ## A023030.P4551767891445686957

`A282750(A000124(n+9)+9)`
-/

namespace A023030.P4551767891445686957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282750 (A000124 (n + 9) + 9).toNat

end

end A023030.P4551767891445686957

/-! ## A023030.P4011328730761026871

`A282750(A000217(n+9)+10)`
-/

namespace A023030.P4011328730761026871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282750 (A000217 (n + 9) + 10).toNat

end

end A023030.P4011328730761026871

/-! ## A023030.P6490314239651964353

`A282750(A161680(n+10)+10)`
-/

namespace A023030.P6490314239651964353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282750 (A161680 (n + 10) + 10).toNat

end

end A023030.P6490314239651964353

/-! ## A023030.P16214633863231987528

`A282750(A000096(n+9)+1-n)`
-/

namespace A023030.P16214633863231987528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282750 (A000096 (n + 9) + (1 - (n : ℤ))).toNat

end

end A023030.P16214633863231987528

/-! ## A023030.P17216317769844663119

`A282750(A134869(n+10)-(n+1))`
-/

namespace A023030.P17216317769844663119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282750 (A134869 (n + 10) - (n + 1 : ℤ)).toNat

end

end A023030.P17216317769844663119

/-! ## A023030.P12415896446111093613

`A282750(A076921(n+5)+A076921(n+14))`
-/

namespace A023030.P12415896446111093613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282750 (A076921 (n + 5) + A076921 (n + 14)).toNat

end

end A023030.P12415896446111093613

/-!
# A023031: Number of compositions of n into 6 ordered relatively prime parts.

The programs for A023031, the canonical program `A023031.P8515490498603588078` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023031 has offset 6).

The definition of A023031 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008683, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A023031.P8515490498603588078

`∑{d}[n+6, C(#-1, 5)*A008683((n+6)/#)]`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A023031

/-- `∑{d}[n+6, C(#-1, 5)*A008683((n+6)/#)]` -/
def P8515490498603588078.Spec : Prop :=
  ∀ n, P8515490498603588078.a n = A023031 (n + 6)

theorem P8515490498603588078.correct : P8515490498603588078.Spec := by
  intro n
  simp only [A023031, Nat.add_sub_cancel]

end A023031

/-! ## A023031.P6691005075070069256

`C(n+5, 5)-A335460(A014739(n))`
-/

namespace A023031.P6691005075070069256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 5) 5 : ℤ) - A335460 (A014739 n).toNat

end

end A023031.P6691005075070069256

namespace A023031

/-- `C(n+5, 5)-A335460(A014739(n))` -/
def P6691005075070069256.Spec : Prop :=
  ∀ n, P6691005075070069256.a n = A023031 (n + 6)

end A023031

/-! ## A023031.P15198379107028750334

`C(n+5, 5)-A014054(A326156(2*n+1))`
-/

namespace A023031.P15198379107028750334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 5) 5 : ℤ) - A014054 (A326156 (2 * n + 1)).toNat

end

end A023031.P15198379107028750334

namespace A023031

/-- `C(n+5, 5)-A014054(A326156(2*n+1))` -/
def P15198379107028750334.Spec : Prop :=
  ∀ n, P15198379107028750334.a n = A023031 (n + 6)

end A023031

/-! ## A023031.P2189107312381177976

`C(n+5, 5)-A359546(A000045(3*n+2))`
-/

namespace A023031.P2189107312381177976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 5) 5 : ℤ) - A359546 (A000045 (3 * n + 2)).toNat

end

end A023031.P2189107312381177976

namespace A023031

/-- `C(n+5, 5)-A359546(A000045(3*n+2))` -/
def P2189107312381177976.Spec : Prop :=
  ∀ n, P2189107312381177976.a n = A023031 (n + 6)

end A023031

/-!
# A023032: Number of compositions of n into 7 ordered relatively prime parts.

The programs for A023032, the canonical program `A023032.P11766389031338610264` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023032 has offset 7).

The definition of A023032 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008683, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A023032.P11766389031338610264

`∑{d}[n+7, C(#-1, 6)*A008683((n+7)/#)]`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A023032

/-- `∑{d}[n+7, C(#-1, 6)*A008683((n+7)/#)]` -/
def P11766389031338610264.Spec : Prop :=
  ∀ n, P11766389031338610264.a n = A023032 (n + 7)

theorem P11766389031338610264.correct : P11766389031338610264.Spec := by
  intro n
  simp only [A023032, Nat.add_sub_cancel]

end A023032

/-! ## A023032.P16140360338165468692

`A341204(n+7)-A370813(A135902(n))`
-/

namespace A023032.P16140360338165468692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341204 (n + 7) - A370813 (A135902 n).toNat

end

end A023032.P16140360338165468692

namespace A023032

/-- `A341204(n+7)-A370813(A135902(n))` -/
def P16140360338165468692.Spec : Prop :=
  ∀ n, P16140360338165468692.a n = A023032 (n + 7)

end A023032

/-! ## A023032.P3894336017346705221

`A341204(n+7)-A162782(A250111(n+1))`
-/

namespace A023032.P3894336017346705221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341204 (n + 7) - A162782 (A250111 (n + 1)).toNat

end

end A023032.P3894336017346705221

namespace A023032

/-- `A341204(n+7)-A162782(A250111(n+1))` -/
def P3894336017346705221.Spec : Prop :=
  ∀ n, P3894336017346705221.a n = A023032 (n + 7)

end A023032

/-! ## A023032.P3341469610855203094

`A111217(3^n)-char[A049532(n+1)]`
-/

namespace A023032.P3341469610855203094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049532 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111217 (3 ^ n) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A023032.P3341469610855203094

namespace A023032

/-- `A111217(3^n)-char[A049532(n+1)]` -/
def P3341469610855203094.Spec : Prop :=
  ∀ n, P3341469610855203094.a n = A023032 (n + 7)

end A023032

/-! ## A023032.P16831500822402243973

`A111217(3^n)-char[A000203(2*n+4)]`
-/

namespace A023032.P16831500822402243973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (2 * n + 4)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111217 (3 ^ n) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A023032.P16831500822402243973

namespace A023032

/-- `A111217(3^n)-char[A000203(2*n+4)]` -/
def P16831500822402243973.Spec : Prop :=
  ∀ n, P16831500822402243973.a n = A023032 (n + 7)

end A023032

/-!
# A023033: Number of compositions of n into 8 ordered relatively prime parts.

The programs for A023033, the canonical program `A023033.P8731895386715046614` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023033 has offset 8).

The definition of A023033 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008683, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A023033.P8731895386715046614

`∑{d}[n+8, C(#-1, 7)*A008683((n+8)/#)]`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A023033

/-- `∑{d}[n+8, C(#-1, 7)*A008683((n+8)/#)]` -/
def P8731895386715046614.Spec : Prop :=
  ∀ n, P8731895386715046614.a n = A023033 (n + 8)

theorem P8731895386715046614.correct : P8731895386715046614.Spec := by
  intro n
  simp only [A023033, Nat.add_sub_cancel]

end A023033

/-! ## A023033.P2514310041848481298

`C(n+7, 7)-A124763(A355303(n+1))`
-/

namespace A023033.P2514310041848481298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 7) 7 : ℤ) - A124763 (A355303 (n + 1)).toNat

end

end A023033.P2514310041848481298

namespace A023033

/-- `C(n+7, 7)-A124763(A355303(n+1))` -/
def P2514310041848481298.Spec : Prop :=
  ∀ n, P2514310041848481298.a n = A023033 (n + 8)

end A023033

/-! ## A023033.P16998656603295086596

`C(n+7, 7)-A051830(A173778(2*n+3))`
-/

namespace A023033.P16998656603295086596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 7) 7 : ℤ) - A051830 (A173778 (2 * n + 3)).toNat

end

end A023033.P16998656603295086596

namespace A023033

/-- `C(n+7, 7)-A051830(A173778(2*n+3))` -/
def P16998656603295086596.Spec : Prop :=
  ∀ n, P16998656603295086596.a n = A023033 (n + 8)

end A023033

/-! ## A023033.P12972593289259264481

`A030217(A075686(n))+A000580(n+7)`
-/

namespace A023033.P12972593289259264481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030217 (A075686 n).toNat + A000580 (n + 7)

end

end A023033.P12972593289259264481

namespace A023033

/-- `A030217(A075686(n))+A000580(n+7)` -/
def P12972593289259264481.Spec : Prop :=
  ∀ n, P12972593289259264481.a n = A023033 (n + 8)

end A023033

/-! ## A023033.P6156991297045448323

`A157658(A289608(n))+A000580(n+7)`
-/

namespace A023033.P6156991297045448323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157658 (A289608 n).toNat + A000580 (n + 7)

end

end A023033.P6156991297045448323

namespace A023033

/-- `A157658(A289608(n))+A000580(n+7)` -/
def P6156991297045448323.Spec : Prop :=
  ∀ n, P6156991297045448323.a n = A023033 (n + 8)

end A023033

/-!
# A023034: Number of compositions of n into 9 ordered relatively prime parts.

The programs for A023034, the canonical program `A023034.P16354485590653427709` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023034 has offset 9).

The definition of A023034 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008683, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A023034.P16354485590653427709

`∑{d}[n+9, C(#-1, 8)*A008683((n+9)/#)]`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A023034

/-- `∑{d}[n+9, C(#-1, 8)*A008683((n+9)/#)]` -/
def P16354485590653427709.Spec : Prop :=
  ∀ n, P16354485590653427709.a n = A023034 (n + 9)

theorem P16354485590653427709.correct : P16354485590653427709.Spec := by
  intro n
  simp only [A023034, Nat.add_sub_cancel]

end A023034

/-! ## A023034.P334271536630214817

`A101391(eq[8, A002262(n)]+1)`
-/

namespace A023034.P334271536630214817
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101391 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A023034.P334271536630214817

namespace A023034

/-- `A101391(eq[8, A002262(n)]+1)` -/
def P334271536630214817.Spec : Prop :=
  ∀ n, P334271536630214817.a n = A023034 (n + 9)

end A023034

/-! ## A023034.P6183989359044196682

`A016389(A030037(n))+A000581(n+8)`
-/

namespace A023034.P6183989359044196682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016389 (A030037 n).toNat + A000581 (n + 8)

end

end A023034.P6183989359044196682

namespace A023034

/-- `A016389(A030037(n))+A000581(n+8)` -/
def P6183989359044196682.Spec : Prop :=
  ∀ n, P6183989359044196682.a n = A023034 (n + 9)

end A023034

/-! ## A023034.P12945814405536978134

`A000581(n+8)-A086016(A000150(n))`
-/

namespace A023034.P12945814405536978134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000581 (n + 8) - A086016 (A000150 n).toNat

end

end A023034.P12945814405536978134

namespace A023034

/-- `A000581(n+8)-A086016(A000150(n))` -/
def P12945814405536978134.Spec : Prop :=
  ∀ n, P12945814405536978134.a n = A023034 (n + 9)

end A023034

/-! ## A023034.P6268152692194727846

`A000581(n+8)-A113704(A208744(2*n+5))`
-/

namespace A023034.P6268152692194727846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000581 (n + 8) - A113704 (A208744 (2 * n + 5)).toNat

end

end A023034.P6268152692194727846

namespace A023034

/-- `A000581(n+8)-A113704(A208744(2*n+5))` -/
def P6268152692194727846.Spec : Prop :=
  ∀ n, P6268152692194727846.a n = A023034 (n + 9)

end A023034

/-!
# A023035: Number of compositions of n into 10 ordered relatively prime parts.

The programs for A023035, the canonical program `A023035.P16679167125478681102` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023035 has offset 10).

The definition of A023035 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008683, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A023035.P16679167125478681102

`∑{d}[n+10, C(#-1, 9)*A008683((n+10)/#)]`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A023035

/-- `∑{d}[n+10, C(#-1, 9)*A008683((n+10)/#)]` -/
def P16679167125478681102.Spec : Prop :=
  ∀ n, P16679167125478681102.a n = A023035 (n + 10)

theorem P16679167125478681102.correct : P16679167125478681102.Spec := by
  intro n
  simp only [A023035, Nat.add_sub_cancel]

end A023035

/-! ## A023035.P11594661770347018037

`C(n+9, 9)-A079979(A218090(n))`
-/

namespace A023035.P11594661770347018037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 9) 9 : ℤ) - A079979 (A218090 n).toNat

end

end A023035.P11594661770347018037

namespace A023035

/-- `C(n+9, 9)-A079979(A218090(n))` -/
def P11594661770347018037.Spec : Prop :=
  ∀ n, P11594661770347018037.a n = A023035 (n + 10)

end A023035

/-! ## A023035.P4824667372457871071

`A000582(n+9)-A353856(A146803(n+1))`
-/

namespace A023035.P4824667372457871071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000582 (n + 9) - A353856 (A146803 (n + 1)).toNat

end

end A023035.P4824667372457871071

namespace A023035

/-- `A000582(n+9)-A353856(A146803(n+1))` -/
def P4824667372457871071.Spec : Prop :=
  ∀ n, P4824667372457871071.a n = A023035 (n + 10)

end A023035

/-! ## A023035.P3622179276067853887

`A000582(n+9)-A014154(A133961(2*n+3))`
-/

namespace A023035.P3622179276067853887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000582 (n + 9) - A014154 (A133961 (2 * n + 3)).toNat

end

end A023035.P3622179276067853887

namespace A023035

/-- `A000582(n+9)-A014154(A133961(2*n+3))` -/
def P3622179276067853887.Spec : Prop :=
  ∀ n, P3622179276067853887.a n = A023035 (n + 10)

end A023035

/-! ## A023035.P1299542921629173239

`A052410(A008492(n))`
-/

namespace A023035.P1299542921629173239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052410 (A008492 n).toNat

end

end A023035.P1299542921629173239

namespace A023035

/-- `A052410(A008492(n))` -/
def P1299542921629173239.Spec : Prop :=
  ∀ n, P1299542921629173239.a n = A023035 (n + 10)

end A023035

/-!
# A023036: Smallest positive even integer that is an unordered sum of two primes in exactly n ways.

The programs for A023036, there is no canonical definition to state claims against.
-/

/-! ## A023036.P11339882618358569710

`2*A136244(n)`
-/

namespace A023036.P11339882618358569710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A136244 n

end

end A023036.P11339882618358569710

/-! ## A023036.P14498196512711061976

`xor((n+1)*C(2, n+1), A001172(n))`
-/

namespace A023036.P14498196512711061976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((n + 1) * Nat.choose 2 (n + 1) : ℤ) (A001172 n)

end

end A023036.P14498196512711061976

/-! ## A023036.P768936859218395339

`A136244(A005843(n)/2)+A136244(n)`
-/

namespace A023036.P768936859218395339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136244 (SequenceMachineLib.roundAway ((A005843 n : ℚ) / 2)).toNat + A136244 n

end

end A023036.P768936859218395339

/-! ## A023036.P12676017266854944594

`lcm(2, A352296(n))`
-/

namespace A023036.P12676017266854944594
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A352296 n)

end

end A023036.P12676017266854944594

/-! ## A023036.P16945192200784014605

`A352296(n)+A000007(n)`
-/

namespace A023036.P16945192200784014605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352296 n + A000007 n

end

end A023036.P16945192200784014605

/-! ## A023036.P18073081418070082745

`A054977(n)*A352296(n)`
-/

namespace A023036.P18073081418070082745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n * A352296 n

end

end A023036.P18073081418070082745

/-! ## A023036.P2369108641481143336

`2*(A258713(n)+A154955(n+1))`
-/

namespace A023036.P2369108641481143336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A258713 n + A154955 (n + 1))

end

end A023036.P2369108641481143336

/-! ## A023036.P15910553363912185407

`2*xor(A019590(n+1), A258713(n))`
-/

namespace A023036.P15910553363912185407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * Int.xor (A019590 (n + 1)) (A258713 n)

end

end A023036.P15910553363912185407

/-! ## A023036.P5194365472776953655

`A352296(n)+A130706(2*n)`
-/

namespace A023036.P5194365472776953655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352296 n + A130706 (2 * n)

end

end A023036.P5194365472776953655

/-! ## A023036.P4615586386720086536

`A136244(A004526(n+n))+A136244(n)`
-/

namespace A023036.P4615586386720086536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136244 (A004526 (n + n)).toNat + A136244 n

end

end A023036.P4615586386720086536

/-! ## A023036.P8096498302875221270

`A136244(A064680(n+n))+A136244(n)`
-/

namespace A023036.P8096498302875221270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136244 (A064680 (n + n)).toNat + A136244 n

end

end A023036.P8096498302875221270

/-! ## A023036.P17746991332153333554

`∑{d}[A136244(n), A000010(#)+A000010(#)]`
-/

namespace A023036.P17746991332153333554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136244 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, (A000010 d + A000010 d)

end

end A023036.P17746991332153333554

/-! ## A023036.P7812067137168802194

`A004277(A136244(n))`
-/

namespace A023036.P7812067137168802194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A136244 n).toNat

end

end A023036.P7812067137168802194

/-! ## A023036.P2412944649275855002

`A020742(A136244(n)+n)-A020742(n)`
-/

namespace A023036.P2412944649275855002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020742 (A136244 n + (n : ℤ)).toNat - A020742 n

end

end A023036.P2412944649275855002

/-! ## A023036.P3128372134240712262

`A109043(A352296(n))`
-/

namespace A023036.P3128372134240712262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109043 (A352296 n).toNat

end

end A023036.P3128372134240712262

/-!
# A023037: a(n) = n^0 + n^1 + ... + n^(n-1), or a(n) = (n^n-1)/(n-1) with a(0)=0; a(1)=1.

The programs for A023037, there is no canonical definition to state claims against.
-/

/-! ## A023037.P16363437420297881863

`(n-1)*A058128(A028310(n))+1`
-/

namespace A023037.P16363437420297881863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * A058128 (A028310 n).toNat + 1

end

end A023037.P16363437420297881863

/-! ## A023037.P14263059831686213388

`A062805(n)-A023811(round(sqrt(n²+1)))`
-/

namespace A023037.P14263059831686213388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062805 n - A023811 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

end

end A023037.P14263059831686213388

/-! ## A023037.P5898592440424092739

`(n-1)*A058128(A065033(2*n))+1`
-/

namespace A023037.P5898592440424092739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * A058128 (A065033 (2 * n)).toNat + 1

end

end A023037.P5898592440424092739

/-! ## A023037.P8419861055726099786

`A031973(n)-n^n`
-/

namespace A023037.P8419861055726099786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031973 n - (n ^ n : ℤ)

end

end A023037.P8419861055726099786

/-! ## A023037.P10679558440710506976

`A031972(n)/A028310(n)`
-/

namespace A023037.P10679558440710506976
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A031972 n : ℚ) / (A028310 n : ℚ)

end

end A023037.P10679558440710506976

/-! ## A023037.P15130367995649191573

`A031972(n)+1-A000312(n)`
-/

namespace A023037.P15130367995649191573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031972 n + (1 - A000312 n)

end

end A023037.P15130367995649191573

/-! ## A023037.P1741443437760081544

`(A031973(n)-1)/A028310(n)`
-/

namespace A023037.P1741443437760081544
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A031973 n - 1 : ℚ) / (A028310 n : ℚ)

end

end A023037.P1741443437760081544

/-! ## A023037.P6708385894854549835

`A068475(n)-A062813(A028310(n))`
-/

namespace A023037.P6708385894854549835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068475 n - A062813 (A028310 n).toNat

end

end A023037.P6708385894854549835

/-! ## A023037.P7542290818011708919

`A031972(n)/A007318(A000124(n))`
-/

namespace A023037.P7542290818011708919
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A031972 n : ℚ) / (A007318 (A000124 n).toNat : ℚ)

end

end A023037.P7542290818011708919

/-! ## A023037.P8084002245609192440

`(A062813(A028310(n))+A062805(n))/A028310(n)`
-/

namespace A023037.P8084002245609192440
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062813 (A028310 n).toNat + A062805 n : ℚ) / (A028310 n : ℚ)

end

end A023037.P8084002245609192440

/-!
# A023038: a(n) = 12*a(n-1) - a(n-2).

The programs for A023038, the canonical program `A023038.P17061182639878964216` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023038 has offset 0).

The definition of A023038 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `12*a(n-1)-a(n-2)` (program `A023038.P17061182639878964216`, by `A023038.P17061182639878964216.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A023038.P17061182639878964216

`12*a(n-1)-a(n-2)` with `a(0)=1, a(1)=6`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A023038

/-- `12*a(n-1)-a(n-2)` -/
def P17061182639878964216.Spec : Prop :=
  ∀ n, P17061182639878964216.a n = A023038 n

theorem P17061182639878964216.correct : P17061182639878964216.Spec := by
  intro n
  simp only [A023038]

end A023038

/-! ## A023038.P11098156529825487413

`((6+sqrt(35))^n+(6-sqrt(35))^n)/2`
-/

namespace A023038.P11098156529825487413
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((6 + Real.sqrt (35 : ℝ)) ^ n + (6 - Real.sqrt (35 : ℝ)) ^ n) / 2

end

end A023038.P11098156529825487413

namespace A023038

/-- `((6+sqrt(35))^n+(6-sqrt(35))^n)/2` -/
def P11098156529825487413.Spec : Prop :=
  ∀ n, P11098156529825487413.a n = (A023038 n : ℝ)

theorem P11098156529825487413.correct : P11098156529825487413.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A023038, Nat.add_sub_cancel, A023038.P11098156529825487413.a, A023038.P17061182639878964216.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A023038, Nat.add_sub_cancel, A023038.P11098156529825487413.a, A023038.P17061182639878964216.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A023038

/-! ## A023038.P15482020860612400927

`ogf((1-6x)/(1-12x+x^2))`
-/

namespace A023038.P15482020860612400927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -6] [1, -12, 1] n

end

end A023038.P15482020860612400927

namespace A023038

/-- `ogf((1-6x)/(1-12x+x^2))` -/
def P15482020860612400927.Spec : Prop :=
  ∀ n, P15482020860612400927.a n = A023038 n

end A023038

/-! ## A023038.P15029094862610958150

`A080875(2*n)`
-/

namespace A023038.P15029094862610958150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080875 (2 * n)

end

end A023038.P15029094862610958150

namespace A023038

/-- `A080875(2*n)` -/
def P15029094862610958150.Spec : Prop :=
  ∀ n, P15029094862610958150.a n = A023038 n

end A023038

/-! ## A023038.P18117880380547072943

`5*A098299(n)+1`
-/

namespace A023038.P18117880380547072943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A098299 n + 1

end

end A023038.P18117880380547072943

namespace A023038

/-- `5*A098299(n)+1` -/
def P18117880380547072943.Spec : Prop :=
  ∀ n, P18117880380547072943.a n = A023038 n

end A023038

/-! ## A023038.P2576508544221774900

`record[A080875(n)^log2(gcd(2, n))]`
-/

namespace A023038.P2576508544221774900
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A080875 n : ℝ) ^ (Real.logb 2 (Nat.gcd 2 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A023038.P2576508544221774900

namespace A023038

/-- `record[A080875(n)^log2(gcd(2, n))]` -/
def P2576508544221774900.Spec : Prop :=
  ∀ n, P2576508544221774900.a n = (A023038 n : ℝ)

end A023038

/-! ## A023038.P778947718239406592

`record[A080875(A237420(n))]`
-/

namespace A023038.P778947718239406592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080875 (A237420 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A023038.P778947718239406592

namespace A023038

/-- `record[A080875(A237420(n))]` -/
def P778947718239406592.Spec : Prop :=
  ∀ n, P778947718239406592.a n = A023038 n

end A023038

/-! ## A023038.P3506344146321621382

`record[A080875(A141310(n)-1)]`
-/

namespace A023038.P3506344146321621382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080875 (A141310 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A023038.P3506344146321621382

namespace A023038

/-- `record[A080875(A141310(n)-1)]` -/
def P3506344146321621382.Spec : Prop :=
  ∀ n, P3506344146321621382.a n = A023038 n

end A023038

/-! ## A023038.P9513780730954241308

`record[A080875(n)/A000034(n)]`
-/

namespace A023038.P9513780730954241308
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080875 n : ℚ) / (A000034 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A023038.P9513780730954241308

namespace A023038

/-- `record[A080875(n)/A000034(n)]` -/
def P9513780730954241308.Spec : Prop :=
  ∀ n, P9513780730954241308.a n = (A023038 n : ℚ)

end A023038

/-! ## A023038.P14528542571728022149

`record[A080875(A114112(A008619(n)))]`
-/

namespace A023038.P14528542571728022149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080875 (A114112 (A008619 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A023038.P14528542571728022149

namespace A023038

/-- `record[A080875(A114112(A008619(n)))]` -/
def P14528542571728022149.Spec : Prop :=
  ∀ n, P14528542571728022149.a n = A023038 n

end A023038

/-!
# A023039: a(n) = 18*a(n-1) - a(n-2), with a(0) = 1 and a(1) = 9.

The programs for A023039, the canonical program `A023039.P14731286994540858419` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023039 has offset 0).

The definition of A023039 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `18*a(n-1)-a(n-2)` (program `A023039.P14731286994540858419`, by `A023039.P14731286994540858419.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A023039.P14731286994540858419

`18*a(n-1)-a(n-2)` with `a(0)=1, a(1)=9`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A023039

/-- `18*a(n-1)-a(n-2)` -/
def P14731286994540858419.Spec : Prop :=
  ∀ n, P14731286994540858419.a n = A023039 n

theorem P14731286994540858419.correct : P14731286994540858419.Spec := by
  intro n
  simp only [A023039]

end A023039

/-! ## A023039.P7695577469787984543

`((9+4*sqrt(5))^n+(9-4*sqrt(5))^n)/2`
-/

namespace A023039.P7695577469787984543
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((9 + 4 * Real.sqrt (5 : ℝ)) ^ n + (9 - 4 * Real.sqrt (5 : ℝ)) ^ n) / 2

end

end A023039.P7695577469787984543

namespace A023039

/-- `((9+4*sqrt(5))^n+(9-4*sqrt(5))^n)/2` -/
def P7695577469787984543.Spec : Prop :=
  ∀ n, P7695577469787984543.a n = (A023039 n : ℝ)

theorem P7695577469787984543.correct : P7695577469787984543.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A023039, Nat.add_sub_cancel, A023039.P7695577469787984543.a, A023039.P14731286994540858419.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A023039, Nat.add_sub_cancel, A023039.P7695577469787984543.a, A023039.P14731286994540858419.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A023039

/-! ## A023039.P10482513319873983961

`A001077(2*n)`
-/

namespace A023039.P10482513319873983961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001077 (2 * n)

end

end A023039.P10482513319873983961

namespace A023039

/-- `A001077(2*n)` -/
def P10482513319873983961.Spec : Prop :=
  ∀ n, P10482513319873983961.a n = A023039 n

end A023039

/-! ## A023039.P9077110588278988405

`A128052(3*n)`
-/

namespace A023039.P9077110588278988405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128052 (3 * n)

end

end A023039.P9077110588278988405

namespace A023039

/-- `A128052(3*n)` -/
def P9077110588278988405.Spec : Prop :=
  ∀ n, P9077110588278988405.a n = A023039 n

end A023039

/-! ## A023039.P6985024777631277621

`2*A132584(n)+1`
-/

namespace A023039.P6985024777631277621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A132584 n + 1

end

end A023039.P6985024777631277621

namespace A023039

/-- `2*A132584(n)+1` -/
def P6985024777631277621.Spec : Prop :=
  ∀ n, P6985024777631277621.a n = A023039 n

end A023039

/-! ## A023039.P13692020101683369997

`1/2*A087215(n)`
-/

namespace A023039.P13692020101683369997
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * (A087215 n : ℚ)

end

end A023039.P13692020101683369997

namespace A023039

/-- `1/2*A087215(n)` -/
def P13692020101683369997.Spec : Prop :=
  ∀ n, P13692020101683369997.a n = (A023039 n : ℚ)

end A023039

/-! ## A023039.P2024305109934024373

`A049660(n+1)-9*A049660(n)`
-/

namespace A023039.P2024305109934024373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049660 (n + 1) - 9 * A049660 n

end

end A023039.P2024305109934024373

namespace A023039

/-- `A049660(n+1)-9*A049660(n)` -/
def P2024305109934024373.Spec : Prop :=
  ∀ n, P2024305109934024373.a n = A023039 n

end A023039

/-! ## A023039.P118512503637412757

`A167808(6*n+1)-A167808(6*n)`
-/

namespace A023039.P118512503637412757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167808 (6 * n + 1) - A167808 (6 * n)

end

end A023039.P118512503637412757

namespace A023039

/-- `A167808(6*n+1)-A167808(6*n)` -/
def P118512503637412757.Spec : Prop :=
  ∀ n, P118512503637412757.a n = A023039 n

end A023039

/-! ## A023039.P7851965874854410657

`ogf((1-9x)/(1-18x+x^2))`
-/

namespace A023039.P7851965874854410657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -9] [1, -18, 1] n

end

end A023039.P7851965874854410657

namespace A023039

/-- `ogf((1-9x)/(1-18x+x^2))` -/
def P7851965874854410657.Spec : Prop :=
  ∀ n, P7851965874854410657.a n = A023039 n

end A023039

/-! ## A023039.P9880556806608352831

`A173495(6*n)`
-/

namespace A023039.P9880556806608352831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173495 (6 * n)

end

end A023039.P9880556806608352831

namespace A023039

/-- `A173495(6*n)` -/
def P9880556806608352831.Spec : Prop :=
  ∀ n, P9880556806608352831.a n = A023039 n

end A023039

/-!
# A023040: w such that w^3+x^3+y^3+z^3=0, w>|x|>|y|>|z|, is soluble (all solutions).

The programs for A023040, there is no canonical definition to state claims against.
-/

/-! ## A023040.P8392663956867367590

`lt[A341996(A228169(n+4)), A106799(n+1)]`
-/

namespace A023040.P8392663956867367590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341996 (A228169 (n + 4)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106799 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A023040.P8392663956867367590

/-! ## A023040.P4977753988819839163

`A345443(∪[A245383(n+1), A162825(n+2)])`
-/

namespace A023040.P4977753988819839163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245383 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162825 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345443 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A023040.P4977753988819839163

/-!
# A023042: Numbers whose cube is the sum of three distinct nonnegative cubes.

The programs for A023042, there is no canonical definition to state claims against.
-/

/-! ## A023042.P14192787558579693797

`eq[3, A161883(n+2)]+2`
-/

namespace A023042.P14192787558579693797
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161883 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A023042.P14192787558579693797

/-! ## A023042.P14293240084440645479

`lt[1/3, A316359(n+1)]+1`
-/

namespace A023042.P14293240084440645479
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316359 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n + 1

end

end A023042.P14293240084440645479

/-! ## A023042.P14910660722348159946

`lt[0, A316359(A028310(n))]`
-/

namespace A023042.P14910660722348159946
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316359 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A023042.P14910660722348159946

/-! ## A023042.P8254235093317887575

`lt[A000038(A316359(n+1)), 1]+1`
-/

namespace A023042.P8254235093317887575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (A316359 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A023042.P8254235093317887575

/-! ## A023042.P4143582269554099786

`lt[A000038(n), A316359(A000038(n)+n)]`
-/

namespace A023042.P4143582269554099786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316359 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A023042.P4143582269554099786

/-! ## A023042.P17697791897226916530

`root(A066890(n+1), 3)`
-/

namespace A023042.P17697791897226916530
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A066890 (n + 1) : ℝ) ^ (1 / (3 : ℝ))

end

end A023042.P17697791897226916530

/-! ## A023042.P12543522804336806972

`eq[3, A161883(A233583(n+1))]`
-/

namespace A023042.P12543522804336806972
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161883 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023042.P12543522804336806972

/-! ## A023042.P7895080088361747717

`lt[2-A070151(n+1)*A316359(A233583(n+1)), 2]`
-/

namespace A023042.P7895080088361747717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A070151 (n + 1) * A316359 (A233583 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A023042.P7895080088361747717

/-! ## A023042.P12289739869717112758

`A100196(ceil(sqrt(A066890(n+1))))`
-/

namespace A023042.P12289739869717112758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100196 ⌈Real.sqrt (A066890 (n + 1) : ℝ)⌉.toNat

end

end A023042.P12289739869717112758

/-! ## A023042.P3665461055630803347

`lt[1, A316359(A233583(n+1))*A333647(n)]`
-/

namespace A023042.P3665461055630803347
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316359 (A233583 (n + 1)).toNat * A333647 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A023042.P3665461055630803347

/-!
# A023043: 6th differences of factorial numbers.

The programs for A023043, there is no canonical definition to state claims against.
-/

/-! ## A023043.P7532970542547835457

`Δ[Δ[Δ[Δ[Δ[Δ[n!]]]]]]`
-/

namespace A023043.P7532970542547835457
noncomputable section

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def f5 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f6 (n + 1) : ℤ) - (f6 n : ℤ)

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f5 (n + 1) - f5 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f4 (n + 1) - f4 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A023043.P7532970542547835457

/-! ## A023043.P6368939344977636880

`Δ[A001689(n)]`
-/

namespace A023043.P6368939344977636880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001689 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A023043.P6368939344977636880

/-! ## A023043.P2822430549402483721

`Δ[Δ[A001688(n)]]`
-/

namespace A023043.P2822430549402483721
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001688 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A023043.P2822430549402483721

/-! ## A023043.P2725090492132334627

`n!*A094795(n)`
-/

namespace A023043.P2725090492132334627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A094795 n

end

end A023043.P2725090492132334627

/-! ## A023043.P12154115823678185193

`Δ[Δ[Δ[A001565(n)]]]`
-/

namespace A023043.P12154115823678185193
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001565 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A023043.P12154115823678185193

/-! ## A023043.P804296274022357433

`A000142(n)*A094795(n)`
-/

namespace A023043.P804296274022357433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A094795 n

end

end A023043.P804296274022357433

/-! ## A023043.P894770193080363712

`A001689(n+1)-A001689(n)`
-/

namespace A023043.P894770193080363712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001689 (n + 1) - A001689 n

end

end A023043.P894770193080363712

/-! ## A023043.P14350931322632480891

`A001565(n)/A094792(n)*A094795(n)`
-/

namespace A023043.P14350931322632480891
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001565 n : ℚ) / (A094792 n : ℚ) * (A094795 n : ℚ)

end

end A023043.P14350931322632480891

/-! ## A023043.P9305859431485443091

`A001688(n)/A094793(n)*A094795(n)`
-/

namespace A023043.P9305859431485443091
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001688 n : ℚ) / (A094793 n : ℚ) * (A094795 n : ℚ)

end

end A023043.P9305859431485443091

/-! ## A023043.P4019772389547753912

`A001689(n)/A094794(n)*A094795(n)`
-/

namespace A023043.P4019772389547753912
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001689 n : ℚ) / (A094794 n : ℚ) * (A094795 n : ℚ)

end

end A023043.P4019772389547753912

/-!
# A023044: 7th differences of factorial numbers.

The programs for A023044, there is no canonical definition to state claims against.
-/

/-! ## A023044.P9690141533427002412

`Δ[A023043(n)]`
-/

namespace A023044.P9690141533427002412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023043 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A023044.P9690141533427002412

/-! ## A023044.P334530478223393000

`Δ[Δ[A001689(n)]]`
-/

namespace A023044.P334530478223393000
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001689 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A023044.P334530478223393000

/-! ## A023044.P13477683066331450039

`Δ[Δ[Δ[A001688(n)]]]`
-/

namespace A023044.P13477683066331450039
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001688 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A023044.P13477683066331450039

/-! ## A023044.P331638034234988533

`A047920(eq[7, A002262(n)])`
-/

namespace A023044.P331638034234988533
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047920 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A023044.P331638034234988533

/-! ## A023044.P7504770243988495831

`A023043(n+1)-A023043(n)`
-/

namespace A023044.P7504770243988495831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023043 (n + 1) - A023043 n

end

end A023044.P7504770243988495831

/-!
# A023045: 8th differences of factorial numbers.

The programs for A023045, there is no canonical definition to state claims against.
-/

/-! ## A023045.P3612894671036751597

`Δ[A023044(n)]`
-/

namespace A023045.P3612894671036751597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023044 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A023045.P3612894671036751597

/-! ## A023045.P5309812194374283735

`Δ[Δ[A023043(n)]]`
-/

namespace A023045.P5309812194374283735
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023043 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A023045.P5309812194374283735

/-! ## A023045.P11553544808352554172

`Δ[Δ[Δ[A001689(n)]]]`
-/

namespace A023045.P11553544808352554172
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001689 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A023045.P11553544808352554172

/-! ## A023045.P13599810206584689549

`A047920(A167614(n+7)+5)`
-/

namespace A023045.P13599810206584689549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047920 (A167614 (n + 7) + 5).toNat

end

end A023045.P13599810206584689549

/-! ## A023045.P17004124605537695529

`A061312(A000124(n+7)+6)`
-/

namespace A023045.P17004124605537695529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061312 (A000124 (n + 7) + 6).toNat

end

end A023045.P17004124605537695529

/-! ## A023045.P11370227191596615184

`A023044(n+1)-A023044(n)`
-/

namespace A023045.P11370227191596615184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023044 (n + 1) - A023044 n

end

end A023045.P11370227191596615184

/-! ## A023045.P13680916137158050113

`A047920(A055998(n+7)-(n-2))`
-/

namespace A023045.P13680916137158050113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047920 (A055998 (n + 7) - ((n : ℤ) - 2)).toNat

end

end A023045.P13680916137158050113

/-! ## A023045.P1644851773165122518

`A047920(Δ[A111144(n+1)]-A005408(n))`
-/

namespace A023045.P1644851773165122518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111144 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047920 (f1 (n + 1) - f1 n - A005408 n).toNat

end

end A023045.P1644851773165122518

/-!
# A023046: 9th differences of factorial numbers.

The programs for A023046, there is no canonical definition to state claims against.
-/

/-! ## A023046.P3033898590681461035

`Δ[A023045(n)]`
-/

namespace A023046.P3033898590681461035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A023046.P3033898590681461035

/-! ## A023046.P12015597636615049528

`Δ[Δ[A023044(n)]]`
-/

namespace A023046.P12015597636615049528
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023044 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A023046.P12015597636615049528

/-! ## A023046.P15672726527558126626

`Δ[Δ[Δ[A023043(n)]]]`
-/

namespace A023046.P15672726527558126626
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023043 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A023046.P15672726527558126626

/-! ## A023046.P13522372370344464652

`A068106(A056000(n+6))`
-/

namespace A023046.P13522372370344464652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068106 (A056000 (n + 6)).toNat

end

end A023046.P13522372370344464652

/-! ## A023046.P2644629804323847534

`A023045(n+1)-A023045(n)`
-/

namespace A023046.P2644629804323847534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023045 (n + 1) - A023045 n

end

end A023046.P2644629804323847534

/-! ## A023046.P6712254265034840910

`A068106(A005408(n)+A167614(n+7)+5)`
-/

namespace A023046.P6712254265034840910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068106 (A005408 n + (A167614 (n + 7) + 5)).toNat

end

end A023046.P6712254265034840910

/-!
# A023047: 10th differences of factorial numbers.

The programs for A023047, there is no canonical definition to state claims against.
-/

/-! ## A023047.P1287064901234808309

`Δ[A023046(n)]`
-/

namespace A023047.P1287064901234808309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023046 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A023047.P1287064901234808309

/-! ## A023047.P16813409062441060036

`Δ[Δ[A023045(n)]]`
-/

namespace A023047.P16813409062441060036
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023045 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A023047.P16813409062441060036

/-! ## A023047.P9886765900239550817

`Δ[Δ[Δ[A023044(n)]]]`
-/

namespace A023047.P9886765900239550817
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023044 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A023047.P9886765900239550817

/-! ## A023047.P10267110377023992484

`Δ[Δ[Δ[Δ[A023043(n)]]]]`
-/

namespace A023047.P10267110377023992484
noncomputable section

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023043 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f4 (n + 1) - f4 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A023047.P10267110377023992484

/-! ## A023047.P10896037278408729037

`A047920(eq[10, A002262(n)])`
-/

namespace A023047.P10896037278408729037
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047920 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A023047.P10896037278408729037

/-! ## A023047.P9372300176618714474

`A061312(eq[10, A002260(n+1)])`
-/

namespace A023047.P9372300176618714474
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061312 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A023047.P9372300176618714474

/-! ## A023047.P17015949160250014798

`A023046(n+1)-A023046(n)`
-/

namespace A023047.P17015949160250014798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023046 (n + 1) - A023046 n

end

end A023047.P17015949160250014798

/-!
# A023048: Smallest prime having least positive primitive root n, or 0 if no such prime exists.

The programs for A023048, there is no canonical definition to state claims against.
-/

/-! ## A023048.P9425614876549845937

`A182986(A066529(n+1)+1)`
-/

namespace A023048.P9425614876549845937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (A066529 (n + 1) + 1).toNat

end

end A023048.P9425614876549845937

/-! ## A023048.P16718249690945663923

`∑{d}[A066529(n+1), A007444(#)]`
-/

namespace A023048.P16718249690945663923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066529 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A007444 d

end

end A023048.P16718249690945663923

/-!
# A023052: Perfect Digital Invariants: numbers that are the sum of some fixed power of their digits.

The programs for A023052, there is no canonical definition to state claims against.
-/

/-! ## A023052.P11199954862590386144

`record[A028310(A252648(n))%A064704(n+1)]`
-/

namespace A023052.P11199954862590386144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028310 (A252648 n).toNat) (A064704 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A023052.P11199954862590386144

/-! ## A023052.P12174942216392834155

`record[A252648(n)%A006218(A151543(n+1))]`
-/

namespace A023052.P12174942216392834155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A252648 n) (A006218 (A151543 (n + 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A023052.P12174942216392834155

/-! ## A023052.P2282187954165171285

`record[A137564(A252648(n+1))]`
-/

namespace A023052.P2282187954165171285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137564 (A252648 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A023052.P2282187954165171285

/-! ## A023052.P158698004628640454

`record[A137564(A252648(n)%A018086(n))]`
-/

namespace A023052.P158698004628640454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137564 (Int.tmod (A252648 n) (A018086 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A023052.P158698004628640454

/-! ## A023052.P11774821511343575296

`record[A137564(A252648(n))%A103454(n)]`
-/

namespace A023052.P11774821511343575296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A137564 (A252648 n).toNat) (A103454 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A023052.P11774821511343575296

/-!
# A023053: Number of noncrossing rooted trees with n nodes on a circle that do not have leaves at level 1.

The programs for A023053, there is no canonical definition to state claims against.
-/

/-! ## A023053.P16470194202426984235

`A101371(∑[n])`
-/

namespace A023053.P16470194202426984235
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101371 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A023053.P16470194202426984235

/-! ## A023053.P3124159813944392536

`A060576(n)*A101371(A000217(n))`
-/

namespace A023053.P3124159813944392536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060576 n * A101371 (A000217 n).toNat

end

end A023053.P3124159813944392536

/-! ## A023053.P15392810584908834742

`lcm(A081729(n), A101371(A000217(n)))`
-/

namespace A023053.P15392810584908834742
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A081729 n) (A101371 (A000217 n).toNat)

end

end A023053.P15392810584908834742

/-! ## A023053.P17511324086420560299

`A101371(A000217(n))/A001221(A109181(n+1))`
-/

namespace A023053.P17511324086420560299
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A101371 (A000217 n).toNat : ℚ) / (A001221 (A109181 (n + 1)).toNat : ℚ)

end

end A023053.P17511324086420560299

/-! ## A023053.P11137834621960642574

`A101371(A000217(n))^A178334(n)`
-/

namespace A023053.P11137834621960642574
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A101371 (A000217 n).toNat : ℚ) ^ (A178334 n : ℤ)

end

end A023053.P11137834621960642574

/-!
# A023054: Simon Plouffe's conjectured extension of sequence A008368.

The programs for A023054, the canonical program `A023054.P13703691498310469659` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023054 has offset 0).

The definition of A023054 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A023054.P13703691498310469659

`ceil(∑[(n+1)*gcd(2, n)²]/6)`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A023054

/-- `ceil(∑[(n+1)*gcd(2, n)²]/6)` -/
def P13703691498310469659.Spec : Prop :=
  ∀ n, P13703691498310469659.a n = A023054 n

theorem P13703691498310469659.correct : P13703691498310469659.Spec := by
  intro n
  simp only [A023054]

end A023054

/-! ## A023054.P14238337516992353099

`∑[gcd(n+1, ∑[n])-ceil(n/3)]`
-/

namespace A023054.P14238337516992353099
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd (n + 1) (∑ j ∈ Finset.range (n + 1), f2 j) : ℤ) - ⌈(n : ℚ) / 3⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023054.P14238337516992353099

namespace A023054

/-- `∑[gcd(n+1, ∑[n])-ceil(n/3)]` -/
def P14238337516992353099.Spec : Prop :=
  ∀ n, P14238337516992353099.a n = A023054 n

end A023054

/-! ## A023054.P13457694185020049471

`a(n-3)+∑[n]%n+n` with `a(0)=1, a(1)=1, a(2)=3`
-/

namespace A023054.P13457694185020049471
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 3] fun n a =>
  a (n - 3) + (∑ j ∈ Finset.range (n + 1), f1 j) % n + n

end

end A023054.P13457694185020049471

namespace A023054

/-- `a(n-3)+∑[n]%n+n` -/
def P13457694185020049471.Spec : Prop :=
  ∀ n, (P13457694185020049471.a n : ℤ) = A023054 n

end A023054

/-! ## A023054.P10320707207508950920

`round(∑[(n+1)*2^(-1)^n]/3)`
-/

namespace A023054.P10320707207508950920
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * (2 : ℚ) ^ ((-1) ^ n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((∑ j ∈ Finset.range (n + 1), f1 j) / 3)

end

end A023054.P10320707207508950920

namespace A023054

/-- `round(∑[(n+1)*2^(-1)^n]/3)` -/
def P10320707207508950920.Spec : Prop :=
  ∀ n, P10320707207508950920.a n = A023054 n

end A023054

/-! ## A023054.P1833084777396245298

`round(n²/12)+C(floor(n/2)+2, 2)`
-/

namespace A023054.P1833084777396245298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n ^ 2 : ℚ) / 12) + (Nat.choose (⌊(n : ℚ) / 2⌋ + 2).toNat 2 : ℤ)

end

end A023054.P1833084777396245298

namespace A023054

/-- `round(n²/12)+C(floor(n/2)+2, 2)` -/
def P1833084777396245298.Spec : Prop :=
  ∀ n, P1833084777396245298.a n = A023054 n

end A023054

/-! ## A023054.P11213511022498217037

`A008742(n)+A001840(n)`
-/

namespace A023054.P11213511022498217037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008742 n + A001840 n

end

end A023054.P11213511022498217037

namespace A023054

/-- `A008742(n)+A001840(n)` -/
def P11213511022498217037.Spec : Prop :=
  ∀ n, P11213511022498217037.a n = A023054 n

end A023054

/-! ## A023054.P2151426424329563818

`A069905(n)+A008805(n)`
-/

namespace A023054.P2151426424329563818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069905 n + A008805 n

end

end A023054.P2151426424329563818

namespace A023054

/-- `A069905(n)+A008805(n)` -/
def P2151426424329563818.Spec : Prop :=
  ∀ n, P2151426424329563818.a n = A023054 n

end A023054

/-! ## A023054.P11839829665754538608

`A212987(n)-A069905(n)`
-/

namespace A023054.P11839829665754538608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212987 n - A069905 n

end

end A023054.P11839829665754538608

namespace A023054

/-- `A212987(n)-A069905(n)` -/
def P11839829665754538608.Spec : Prop :=
  ∀ n, P11839829665754538608.a n = A023054 n

end A023054

/-! ## A023054.P13869748927979107202

`A008796(n)+∑[∑[A001057(n)]]`
-/

namespace A023054.P13869748927979107202
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008796 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023054.P13869748927979107202

namespace A023054

/-- `A008796(n)+∑[∑[A001057(n)]]` -/
def P13869748927979107202.Spec : Prop :=
  ∀ n, P13869748927979107202.a n = A023054 n

end A023054

/-! ## A023054.P1620741845921653241

`A001399(n)+A000217(A004526(n))`
-/

namespace A023054.P1620741845921653241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001399 n + A000217 (A004526 n).toNat

end

end A023054.P1620741845921653241

namespace A023054

/-- `A001399(n)+A000217(A004526(n))` -/
def P1620741845921653241.Spec : Prop :=
  ∀ n, P1620741845921653241.a n = A023054 n

end A023054

/-! ## A023054.P3496222753592255422

`A001399(n)+A008805(n)-A008619(n)`
-/

namespace A023054.P3496222753592255422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001399 n + (A008805 n - A008619 n)

end

end A023054.P3496222753592255422

namespace A023054

/-- `A001399(n)+A008805(n)-A008619(n)` -/
def P3496222753592255422.Spec : Prop :=
  ∀ n, P3496222753592255422.a n = A023054 n

end A023054

/-! ## A023054.P14227837742580939421

`A008805(n)+A393093(n)-A211534(n)`
-/

namespace A023054.P14227837742580939421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008805 n + (A393093 n - A211534 n)

end

end A023054.P14227837742580939421

namespace A023054

/-- `A008805(n)+A393093(n)-A211534(n)` -/
def P14227837742580939421.Spec : Prop :=
  ∀ n, P14227837742580939421.a n = A023054 n

end A023054

/-! ## A023054.P10560471799501555371

`A008133(n+1)+A321202(n+2)+A307018(n)`
-/

namespace A023054.P10560471799501555371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008133 (n + 1) + (A321202 (n + 2) + A307018 n)

end

end A023054.P10560471799501555371

namespace A023054

/-- `A008133(n+1)+A321202(n+2)+A307018(n)` -/
def P10560471799501555371.Spec : Prop :=
  ∀ n, P10560471799501555371.a n = A023054 n

end A023054

/-! ## A023054.P11695786234076640238

`A001318(n+1)-A001840(n)`
-/

namespace A023054.P11695786234076640238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001318 (n + 1) - A001840 n

end

end A023054.P11695786234076640238

namespace A023054

/-- `A001318(n+1)-A001840(n)` -/
def P11695786234076640238.Spec : Prop :=
  ∀ n, P11695786234076640238.a n = A023054 n

end A023054

/-! ## A023054.P12224632467528721315

`∑[A004396(n+1)-A142150(n+1)]`
-/

namespace A023054.P12224632467528721315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (n + 1) - A142150 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023054.P12224632467528721315

namespace A023054

/-- `∑[A004396(n+1)-A142150(n+1)]` -/
def P12224632467528721315.Spec : Prop :=
  ∀ n, P12224632467528721315.a n = A023054 n

end A023054

/-! ## A023054.P7148459846567326620

`A212983(n+1)-(A213395(n+1)+A212982(n))`
-/

namespace A023054.P7148459846567326620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212983 (n + 1) - (A213395 (n + 1) + A212982 n)

end

end A023054.P7148459846567326620

namespace A023054

/-- `A212983(n+1)-(A213395(n+1)+A212982(n))` -/
def P7148459846567326620.Spec : Prop :=
  ∀ n, P7148459846567326620.a n = A023054 n

end A023054

/-! ## A023054.P12770810434712865153

`A008748(A007494(n+1))-A008748(n+1)`
-/

namespace A023054.P12770810434712865153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008748 (A007494 (n + 1)).toNat - A008748 (n + 1)

end

end A023054.P12770810434712865153

namespace A023054

/-- `A008748(A007494(n+1))-A008748(n+1)` -/
def P12770810434712865153.Spec : Prop :=
  ∀ n, P12770810434712865153.a n = A023054 n

end A023054

/-! ## A023054.P6849795947056591971

`A008805(n)+A005044(2*n)`
-/

namespace A023054.P6849795947056591971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008805 n + A005044 (2 * n)

end

end A023054.P6849795947056591971

namespace A023054

/-- `A008805(n)+A005044(2*n)` -/
def P6849795947056591971.Spec : Prop :=
  ∀ n, P6849795947056591971.a n = A023054 n

end A023054

/-! ## A023054.P12587796133511534730

`A308158(2*n+3)`
-/

namespace A023054.P12587796133511534730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308158 (2 * n + 3)

end

end A023054.P12587796133511534730

namespace A023054

/-- `A308158(2*n+3)` -/
def P12587796133511534730.Spec : Prop :=
  ∀ n, P12587796133511534730.a n = A023054 n

end A023054

/-!
# A023055: (Apparently) differences between adjacent perfect powers (integers of form a^b, a >= 1, b >= 2).

The programs for A023055, there is no canonical definition to state claims against.
-/

/-! ## A023055.P5471807539085312754

`lt[A179011(n+1), A023056(n+1)]+1`
-/

namespace A023055.P5471807539085312754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179011 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023056 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A023055.P5471807539085312754

/-! ## A023055.P8073359237099392436

`lt[A118685(n), A023056(n+1)]+1`
-/

namespace A023055.P8073359237099392436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118685 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023056 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A023055.P8073359237099392436

/-! ## A023055.P704745163514193315

`lt[0, A189117(n+1)]+1`
-/

namespace A023055.P704745163514193315
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189117 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A023055.P704745163514193315

/-! ## A023055.P9826909537556373272

`eq[1, abs(a(A189117(n)))]` with `a(0)=0, a(1)=1`
-/

namespace A023055.P9826909537556373272
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f2 =>
  f2 (A189117 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A023055.P9826909537556373272

/-! ## A023055.P5784057589758482463

`eq[1, A000032(a(A189117(n)))]` with `a(0)=0, a(1)=1`
-/

namespace A023055.P5784057589758482463
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f2 =>
  A000032 (f2 (A189117 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023055.P5784057589758482463

/-! ## A023055.P2137758180272939761

`eq[1, A000045(a(A189117(n)))]` with `a(0)=0, a(1)=1`
-/

namespace A023055.P2137758180272939761
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f2 =>
  A000045 (f2 (A189117 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023055.P2137758180272939761

/-! ## A023055.P12714456005908939828

`eq[1, A000005(a(A189117(n)))]` with `a(0)=2, a(1)=1`
-/

namespace A023055.P12714456005908939828
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2, 1] fun n f2 =>
  A000005 (f2 (A189117 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023055.P12714456005908939828

/-! ## A023055.P10776078378146415125

`eq[1, A000041(a(A189117(n)))]` with `a(0)=2, a(1)=1`
-/

namespace A023055.P10776078378146415125
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2, 1] fun n f2 =>
  A000041 (f2 (A189117 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023055.P10776078378146415125

/-! ## A023055.P7432734300911550496

`eq[1, A000108(a(A189117(n)))]` with `a(0)=2, a(1)=1`
-/

namespace A023055.P7432734300911550496
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2, 1] fun n f2 =>
  A000108 (f2 (A189117 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023055.P7432734300911550496

/-! ## A023055.P12031970847231505851

`eq[1, A000203(a(A189117(n)))]` with `a(0)=2, a(1)=1`
-/

namespace A023055.P12031970847231505851
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2, 1] fun n f2 =>
  A000203 (f2 (A189117 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023055.P12031970847231505851

/-!
# A023057: (Apparently) not the difference between adjacent perfect powers (A001597, integers of form a^b, a >= 1, b >= 2).

The programs for A023057, there is no canonical definition to state claims against.
-/

/-! ## A023057.P528508332458989538

`eq[0, A023056(n+1)]+1`
-/

namespace A023057.P528508332458989538
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023056 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A023057.P528508332458989538

/-! ## A023057.P17303203987022851031

`A020725(eq[0, A023056(n+1)])`
-/

namespace A023057.P17303203987022851031
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023056 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A023057.P17303203987022851031

/-! ## A023057.P8351696089498961299

`eq[0, A023056(gcd(n, A298028(n)))]`
-/

namespace A023057.P8351696089498961299
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023056 (Int.gcd (n : ℤ) (A298028 n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023057.P8351696089498961299

/-! ## A023057.P11106096729508922480

`eq[0, A023056(A000007(n)+n)]`
-/

namespace A023057.P11106096729508922480
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023056 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023057.P11106096729508922480

/-! ## A023057.P16494355182289470986

`eq[0, A023056(A233583(n+1))]`
-/

namespace A023057.P16494355182289470986
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023056 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023057.P16494355182289470986

/-!
# A023061: Positive numbers k such that k and 2*k are anagrams in base 5 (written in base 5).

The programs for A023061, there is no canonical definition to state claims against.
-/

/-! ## A023061.P11590490715073683549

`A008595(Δ[A067894(n)])`
-/

namespace A023061.P11590490715073683549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067894 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008595 (f1 (n + 1) - f1 n).toNat

end

end A023061.P11590490715073683549

/-! ## A023061.P18386076689798904309

`A008595(A007088(n+1))`
-/

namespace A023061.P18386076689798904309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008595 (A007088 (n + 1)).toNat

end

end A023061.P18386076689798904309

/-! ## A023061.P1949168458424917849

`A008595(A115848(n+1))`
-/

namespace A023061.P1949168458424917849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008595 (A115848 (n + 1)).toNat

end

end A023061.P1949168458424917849

/-! ## A023061.P12660590228441754027

`A090169(A204093(n+1))`
-/

namespace A023061.P12660590228441754027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090169 (A204093 (n + 1)).toNat

end

end A023061.P12660590228441754027

/-! ## A023061.P15739517999711942874

`A112653(A169965(n+2))`
-/

namespace A023061.P15739517999711942874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112653 (A169965 (n + 2)).toNat

end

end A023061.P15739517999711942874

/-!
# A023073: Positive numbers k such that k and 2*k are anagrams in base 8 (written in base 8).

The programs for A023073, there is no canonical definition to state claims against.
-/

/-! ## A023073.P14689475026868999538

`A007094(A387831(n+2))`
-/

namespace A023073.P14689475026868999538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007094 (A387831 (n + 2)).toNat

end

end A023073.P14689475026868999538

