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
import Seq.B000.C022
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
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C007
import Seq.B001.C008
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C003
import Seq.B002.C004
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
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
# A014900: a(1)=1, a(n) = 17*a(n-1) + n.

The programs for A014900, the canonical program `A014900.P8917502682770489810` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014900 has offset 1).

The definition of A014900 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `17*a(n-1)+n+1` (program `A014900.P8917502682770489810`, by `A014900.P8917502682770489810.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A014900.P8917502682770489810

`17*a(n-1)+n+1` with `a(0)=1`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A014900

/-- `17*a(n-1)+n+1` -/
def P8917502682770489810.Spec : Prop :=
  ∀ n, (P8917502682770489810.a n : ℤ) = A014900 (n + 1)

theorem P8917502682770489810.correct : P8917502682770489810.Spec := by
  intro n
  simp only [A014900, Nat.add_sub_cancel]

end A014900

/-! ## A014900.P9601519565806545363

`(17^(n+2)-16*(n+1)-17)/256`
-/

namespace A014900.P9601519565806545363
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((17 ^ (n + 2) : ℤ) - (16 * (n + 1) : ℤ) - 17 : ℚ) / 256

end

end A014900.P9601519565806545363

namespace A014900

/-- `(17^(n+2)-16*(n+1)-17)/256` -/
def P9601519565806545363.Spec : Prop :=
  ∀ n, P9601519565806545363.a n = (A014900 (n + 1) : ℚ)

theorem P9601519565806545363.correct : P9601519565806545363.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A014900, Nat.add_sub_cancel, A014900.P9601519565806545363.a, A014900.P8917502682770489810.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A014900, Nat.add_sub_cancel, A014900.P9601519565806545363.a, A014900.P8917502682770489810.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A014900

/-! ## A014900.P10606547324424370261

`abs(∑[∑[17*a(n-1)]])` with `a(0)=1`
-/

namespace A014900.P10606547324424370261
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f2 =>
  17 * f2 (n - 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014900.P10606547324424370261

namespace A014900

/-- `abs(∑[∑[17*a(n-1)]])` -/
def P10606547324424370261.Spec : Prop :=
  ∀ n, (P10606547324424370261.a n : ℤ) = A014900 (n + 1)

end A014900

/-! ## A014900.P11124253388279806588

`floor(∑[∑[17*a(n-1)]])` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A014900.P11124253388279806588
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f2 =>
  17 * f2 (n - 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014900.P11124253388279806588

namespace A014900

/-- `floor(∑[∑[17*a(n-1)]])` -/
def P11124253388279806588.Spec : Prop :=
  ∀ n, (P11124253388279806588.a n : ℤ) = A014900 (n + 1)

end A014900

/-! ## A014900.P2558302704538713729

`A091045(n+1)+a(n-1)` with `a(0)=1`
-/

namespace A014900.P2558302704538713729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A091045 (n + 1) + a (n - 1)

end

end A014900.P2558302704538713729

namespace A014900

/-- `A091045(n+1)+a(n-1)` -/
def P2558302704538713729.Spec : Prop :=
  ∀ n, P2558302704538713729.a n = A014900 (n + 1)

end A014900

/-! ## A014900.P13042293763604618935

`gcd(∑[A091045(n+1)], A000038(n))`
-/

namespace A014900.P13042293763604618935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091045 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (∑ j ∈ Finset.range (n + 1), f1 j) (A000038 n)

end

end A014900.P13042293763604618935

namespace A014900

/-- `gcd(∑[A091045(n+1)], A000038(n))` -/
def P13042293763604618935.Spec : Prop :=
  ∀ n, (P13042293763604618935.a n : ℤ) = A014900 (n + 1)

end A014900

/-! ## A014900.P9663199850513716967

`or(∑[A091045(n+1)], A000007(n))`
-/

namespace A014900.P9663199850513716967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091045 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (∑ j ∈ Finset.range (n + 1), f1 j) (A000007 n)

end

end A014900.P9663199850513716967

namespace A014900

/-- `or(∑[A091045(n+1)], A000007(n))` -/
def P9663199850513716967.Spec : Prop :=
  ∀ n, P9663199850513716967.a n = A014900 (n + 1)

end A014900

/-! ## A014900.P5420160935002619812

`lcm(∑[A091045(n+1)], A034947(n+1))`
-/

namespace A014900.P5420160935002619812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091045 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (∑ j ∈ Finset.range (n + 1), f1 j) (A034947 (n + 1))

end

end A014900.P5420160935002619812

namespace A014900

/-- `lcm(∑[A091045(n+1)], A034947(n+1))` -/
def P5420160935002619812.Spec : Prop :=
  ∀ n, (P5420160935002619812.a n : ℤ) = A014900 (n + 1)

end A014900

/-!
# A014901: a(1)=1, a(n) = 18*a(n-1) + n.

The programs for A014901, the canonical program `A014901.P9583659100584473357` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014901 has offset 1).

The definition of A014901 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `18*a(n-1)+n+1` (program `A014901.P9583659100584473357`, by `A014901.P9583659100584473357.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A014901.P9583659100584473357

`18*a(n-1)+n+1` with `a(0)=1`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A014901

/-- `18*a(n-1)+n+1` -/
def P9583659100584473357.Spec : Prop :=
  ∀ n, (P9583659100584473357.a n : ℤ) = A014901 (n + 1)

theorem P9583659100584473357.correct : P9583659100584473357.Spec := by
  intro n
  simp only [A014901, Nat.add_sub_cancel]

end A014901

/-! ## A014901.P5511390214211633106

`(18^(n+2)-17*(n+1)-18)/289`
-/

namespace A014901.P5511390214211633106
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((18 ^ (n + 2) : ℤ) - (17 * (n + 1) : ℤ) - 18 : ℚ) / 289

end

end A014901.P5511390214211633106

namespace A014901

/-- `(18^(n+2)-17*(n+1)-18)/289` -/
def P5511390214211633106.Spec : Prop :=
  ∀ n, P5511390214211633106.a n = (A014901 (n + 1) : ℚ)

theorem P5511390214211633106.correct : P5511390214211633106.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A014901, Nat.add_sub_cancel, A014901.P5511390214211633106.a, A014901.P9583659100584473357.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A014901, Nat.add_sub_cancel, A014901.P5511390214211633106.a, A014901.P9583659100584473357.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A014901

/-! ## A014901.P7285254057572754115

`floor(∑[∑[18*a(n-1)]])` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A014901.P7285254057572754115
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f2 =>
  18 * f2 (n - 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014901.P7285254057572754115

namespace A014901

/-- `floor(∑[∑[18*a(n-1)]])` -/
def P7285254057572754115.Spec : Prop :=
  ∀ n, (P7285254057572754115.a n : ℤ) = A014901 (n + 1)

end A014901

/-! ## A014901.P12021384828206264759

`ceil(∑[∑[18*a(n-1)]])` with `a(0)=1`

`ceil` is left out, it is the identity on integers.
-/

namespace A014901.P12021384828206264759
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f2 =>
  18 * f2 (n - 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014901.P12021384828206264759

namespace A014901

/-- `ceil(∑[∑[18*a(n-1)]])` -/
def P12021384828206264759.Spec : Prop :=
  ∀ n, (P12021384828206264759.a n : ℤ) = A014901 (n + 1)

end A014901

/-! ## A014901.P5553628716561469811

`round(∑[∑[18*a(n-1)]])` with `a(0)=1`

`round` is left out, it is the identity on integers.
-/

namespace A014901.P5553628716561469811
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f2 =>
  18 * f2 (n - 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014901.P5553628716561469811

namespace A014901

/-- `round(∑[∑[18*a(n-1)]])` -/
def P5553628716561469811.Spec : Prop :=
  ∀ n, (P5553628716561469811.a n : ℤ) = A014901 (n + 1)

end A014901

/-! ## A014901.P14504387814787109442

`A218721(n+1)+a(n-1)` with `a(0)=1`
-/

namespace A014901.P14504387814787109442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A218721 (n + 1) + a (n - 1)

end

end A014901.P14504387814787109442

namespace A014901

/-- `A218721(n+1)+a(n-1)` -/
def P14504387814787109442.Spec : Prop :=
  ∀ n, P14504387814787109442.a n = A014901 (n + 1)

end A014901

/-!
# A014902: Inverse of 893rd cyclotomic polynomial.

The programs for A014902, there is no canonical definition to state claims against.
-/

/-! ## A014902.P6191821535605841487

`A015795(n)*A033999(n)`
-/

namespace A014902.P6191821535605841487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015795 n * A033999 n

end

end A014902.P6191821535605841487

/-!
# A014903: a(1)=1, a(n) = 19*a(n-1) + n.

The programs for A014903, the canonical program `A014903.P8279200092401391609` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014903 has offset 1).

The definition of A014903 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `19*a(n-1)+n+1` (program `A014903.P8279200092401391609`, by `A014903.P8279200092401391609.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A014903.P8279200092401391609

`19*a(n-1)+n+1` with `a(0)=1`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A014903

/-- `19*a(n-1)+n+1` -/
def P8279200092401391609.Spec : Prop :=
  ∀ n, (P8279200092401391609.a n : ℤ) = A014903 (n + 1)

theorem P8279200092401391609.correct : P8279200092401391609.Spec := by
  intro n
  simp only [A014903, Nat.add_sub_cancel]

end A014903

/-! ## A014903.P13160865724639745676

`(19^(n+2)-18*(n+1)-19)/324`
-/

namespace A014903.P13160865724639745676
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((19 ^ (n + 2) : ℤ) - (18 * (n + 1) : ℤ) - 19 : ℚ) / 324

end

end A014903.P13160865724639745676

namespace A014903

/-- `(19^(n+2)-18*(n+1)-19)/324` -/
def P13160865724639745676.Spec : Prop :=
  ∀ n, P13160865724639745676.a n = (A014903 (n + 1) : ℚ)

theorem P13160865724639745676.correct : P13160865724639745676.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A014903, Nat.add_sub_cancel, A014903.P13160865724639745676.a, A014903.P8279200092401391609.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A014903, Nat.add_sub_cancel, A014903.P13160865724639745676.a, A014903.P8279200092401391609.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A014903

/-! ## A014903.P7142322070028972070

`abs(∑[∑[19*a(n-1)]])` with `a(0)=1`
-/

namespace A014903.P7142322070028972070
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f2 =>
  19 * f2 (n - 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014903.P7142322070028972070

namespace A014903

/-- `abs(∑[∑[19*a(n-1)]])` -/
def P7142322070028972070.Spec : Prop :=
  ∀ n, (P7142322070028972070.a n : ℤ) = A014903 (n + 1)

end A014903

/-! ## A014903.P17088593823184995678

`floor(∑[∑[19*a(n-1)]])` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A014903.P17088593823184995678
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f2 =>
  19 * f2 (n - 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014903.P17088593823184995678

namespace A014903

/-- `floor(∑[∑[19*a(n-1)]])` -/
def P17088593823184995678.Spec : Prop :=
  ∀ n, (P17088593823184995678.a n : ℤ) = A014903 (n + 1)

end A014903

/-! ## A014903.P3560850494569152399

`ceil(∑[∑[19*a(n-1)]])` with `a(0)=1`

`ceil` is left out, it is the identity on integers.
-/

namespace A014903.P3560850494569152399
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f2 =>
  19 * f2 (n - 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014903.P3560850494569152399

namespace A014903

/-- `ceil(∑[∑[19*a(n-1)]])` -/
def P3560850494569152399.Spec : Prop :=
  ∀ n, (P3560850494569152399.a n : ℤ) = A014903 (n + 1)

end A014903

/-! ## A014903.P1220322665507482867

`round(∑[∑[19*a(n-1)]])` with `a(0)=1`

`round` is left out, it is the identity on integers.
-/

namespace A014903.P1220322665507482867
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f2 =>
  19 * f2 (n - 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014903.P1220322665507482867

namespace A014903

/-- `round(∑[∑[19*a(n-1)]])` -/
def P1220322665507482867.Spec : Prop :=
  ∀ n, (P1220322665507482867.a n : ℤ) = A014903 (n + 1)

end A014903

/-! ## A014903.P2483912076907486710

`A218722(n+1)+a(n-1)` with `a(0)=1`
-/

namespace A014903.P2483912076907486710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A218722 (n + 1) + a (n - 1)

end

end A014903.P2483912076907486710

namespace A014903

/-- `A218722(n+1)+a(n-1)` -/
def P2483912076907486710.Spec : Prop :=
  ∀ n, P2483912076907486710.a n = A014903 (n + 1)

end A014903

/-! ## A014903.P8673888992937179533

`∑[A001029(n)]+∑[A218722(n)]`
-/

namespace A014903.P8673888992937179533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001029 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218722 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A014903.P8673888992937179533

namespace A014903

/-- `∑[A001029(n)]+∑[A218722(n)]` -/
def P8673888992937179533.Spec : Prop :=
  ∀ n, P8673888992937179533.a n = A014903 (n + 1)

end A014903

/-!
# A014904: a(1)=1, a(n) = 20*a(n-1) + n.

The programs for A014904, the canonical program `A014904.P6018701975616273623` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014904 has offset 1).

The definition of A014904 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `20*a(n-1)+n+1` (program `A014904.P6018701975616273623`, by `A014904.P6018701975616273623.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A014904.P6018701975616273623

`20*a(n-1)+n+1` with `a(0)=1`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A014904

/-- `20*a(n-1)+n+1` -/
def P6018701975616273623.Spec : Prop :=
  ∀ n, (P6018701975616273623.a n : ℤ) = A014904 (n + 1)

theorem P6018701975616273623.correct : P6018701975616273623.Spec := by
  intro n
  simp only [A014904, Nat.add_sub_cancel]

end A014904

/-! ## A014904.P4014905788590566208

`(20^(n+2)-19*(n+1)-20)/361`
-/

namespace A014904.P4014905788590566208
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((20 ^ (n + 2) : ℤ) - (19 * (n + 1) : ℤ) - 20 : ℚ) / 361

end

end A014904.P4014905788590566208

namespace A014904

/-- `(20^(n+2)-19*(n+1)-20)/361` -/
def P4014905788590566208.Spec : Prop :=
  ∀ n, P4014905788590566208.a n = (A014904 (n + 1) : ℚ)

theorem P4014905788590566208.correct : P4014905788590566208.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A014904, Nat.add_sub_cancel, A014904.P4014905788590566208.a, A014904.P6018701975616273623.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A014904, Nat.add_sub_cancel, A014904.P4014905788590566208.a, A014904.P6018701975616273623.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A014904

/-! ## A014904.P17273675781060467470

`floor(∑[∑[20*a(n-1)]])` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A014904.P17273675781060467470
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f2 =>
  20 * f2 (n - 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014904.P17273675781060467470

namespace A014904

/-- `floor(∑[∑[20*a(n-1)]])` -/
def P17273675781060467470.Spec : Prop :=
  ∀ n, (P17273675781060467470.a n : ℤ) = A014904 (n + 1)

end A014904

/-! ## A014904.P7782257762815911807

`abs(∑[or(1, 4*5*a(n-1))])` with `a(0)=1`
-/

namespace A014904.P7782257762815911807
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  Nat.lor 1 (4 * (5 * f1 (n - 1)))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014904.P7782257762815911807

namespace A014904

/-- `abs(∑[or(1, 4*5*a(n-1))])` -/
def P7782257762815911807.Spec : Prop :=
  ∀ n, (P7782257762815911807.a n : ℤ) = A014904 (n + 1)

end A014904

/-! ## A014904.P15016855219493184319

`2*10*a(n-1)-xor(n, -1)` with `a(0)=1`
-/

namespace A014904.P15016855219493184319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * (10 * a (n - 1)) - Int.xor (n : ℤ) (-1)

end

end A014904.P15016855219493184319

namespace A014904

/-- `2*10*a(n-1)-xor(n, -1)` -/
def P15016855219493184319.Spec : Prop :=
  ∀ n, P15016855219493184319.a n = A014904 (n + 1)

end A014904

/-! ## A014904.P9104907350820664527

`A064108(n+1)+a(n-1)` with `a(0)=1`
-/

namespace A014904.P9104907350820664527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A064108 (n + 1) + a (n - 1)

end

end A014904.P9104907350820664527

namespace A014904

/-- `A064108(n+1)+a(n-1)` -/
def P9104907350820664527.Spec : Prop :=
  ∀ n, P9104907350820664527.a n = A014904 (n + 1)

end A014904

/-! ## A014904.P9203186475569144216

`A328348(n+1)-∑[A328348(n)]`
-/

namespace A014904.P9203186475569144216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328348 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328348 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014904.P9203186475569144216

namespace A014904

/-- `A328348(n+1)-∑[A328348(n)]` -/
def P9203186475569144216.Spec : Prop :=
  ∀ n, P9203186475569144216.a n = A014904 (n + 1)

end A014904

/-! ## A014904.P8972293850389733030

`∑[∑[A009964(n)]]%A223286(n+1)`
-/

namespace A014904.P8972293850389733030
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009964 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A223286 (n + 1))

end

end A014904.P8972293850389733030

namespace A014904

/-- `∑[∑[A009964(n)]]%A223286(n+1)` -/
def P8972293850389733030.Spec : Prop :=
  ∀ n, P8972293850389733030.a n = A014904 (n + 1)

end A014904

/-!
# A014905: a(1)=1, a(n) = 21*a(n-1) + n.

The programs for A014905, the canonical program `A014905.P10861843166455046838` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014905 has offset 1).

The definition of A014905 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `21*a(n-1)+n+1` (program `A014905.P10861843166455046838`, by `A014905.P10861843166455046838.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A014905.P10861843166455046838

`21*a(n-1)+n+1` with `a(0)=1`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A014905

/-- `21*a(n-1)+n+1` -/
def P10861843166455046838.Spec : Prop :=
  ∀ n, (P10861843166455046838.a n : ℤ) = A014905 (n + 1)

theorem P10861843166455046838.correct : P10861843166455046838.Spec := by
  intro n
  simp only [A014905, Nat.add_sub_cancel]

end A014905

/-! ## A014905.P14957251624007957420

`(21^(n+2)-20*(n+1)-21)/400`
-/

namespace A014905.P14957251624007957420
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((21 ^ (n + 2) : ℤ) - (20 * (n + 1) : ℤ) - 21 : ℚ) / 400

end

end A014905.P14957251624007957420

namespace A014905

/-- `(21^(n+2)-20*(n+1)-21)/400` -/
def P14957251624007957420.Spec : Prop :=
  ∀ n, P14957251624007957420.a n = (A014905 (n + 1) : ℚ)

theorem P14957251624007957420.correct : P14957251624007957420.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A014905, Nat.add_sub_cancel, A014905.P14957251624007957420.a, A014905.P10861843166455046838.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A014905, Nat.add_sub_cancel, A014905.P14957251624007957420.a, A014905.P10861843166455046838.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A014905

/-! ## A014905.P398296353150866465

`floor(∑[∑[21*a(n-1)]])` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A014905.P398296353150866465
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f2 =>
  21 * f2 (n - 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014905.P398296353150866465

namespace A014905

/-- `floor(∑[∑[21*a(n-1)]])` -/
def P398296353150866465.Spec : Prop :=
  ∀ n, (P398296353150866465.a n : ℤ) = A014905 (n + 1)

end A014905

/-! ## A014905.P546695358996095486

`∑[A009965(n)]+a(n-1)` with `a(0)=1`
-/

namespace A014905.P546695358996095486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009965 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + a (n - 1)

end

end A014905.P546695358996095486

namespace A014905

/-- `∑[A009965(n)]+a(n-1)` -/
def P546695358996095486.Spec : Prop :=
  ∀ n, P546695358996095486.a n = A014905 (n + 1)

end A014905

/-! ## A014905.P5677846774302830367

`A218724(n+1)+a(n-1)` with `a(0)=1`
-/

namespace A014905.P5677846774302830367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A218724 (n + 1) + a (n - 1)

end

end A014905.P5677846774302830367

namespace A014905

/-- `A218724(n+1)+a(n-1)` -/
def P5677846774302830367.Spec : Prop :=
  ∀ n, P5677846774302830367.a n = A014905 (n + 1)

end A014905

/-! ## A014905.P7094209791210640322

`A000007(n+1)+∑[∑[A017967(2*n)]]`
-/

namespace A014905.P7094209791210640322
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017967 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014905.P7094209791210640322

namespace A014905

/-- `A000007(n+1)+∑[∑[A017967(2*n)]]` -/
def P7094209791210640322.Spec : Prop :=
  ∀ n, P7094209791210640322.a n = A014905 (n + 1)

end A014905

/-!
# A014906: Inverse of 897th cyclotomic polynomial.

The programs for A014906, there is no canonical definition to state claims against.
-/

/-! ## A014906.P16283601839707297733

`A015803(n)*A033999(n)`
-/

namespace A014906.P16283601839707297733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015803 n * A033999 n

end

end A014906.P16283601839707297733

/-!
# A014907: a(1)=1, a(n) = 22*a(n-1) + n.

The programs for A014907, the canonical program `A014907.P8828757559003531479` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014907 has offset 1).

The definition of A014907 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `22*a(n-1)+n+1` (program `A014907.P8828757559003531479`, by `A014907.P8828757559003531479.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A014907.P8828757559003531479

`22*a(n-1)+n+1` with `a(0)=1`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A014907

/-- `22*a(n-1)+n+1` -/
def P8828757559003531479.Spec : Prop :=
  ∀ n, (P8828757559003531479.a n : ℤ) = A014907 (n + 1)

theorem P8828757559003531479.correct : P8828757559003531479.Spec := by
  intro n
  simp only [A014907, Nat.add_sub_cancel]

end A014907

/-! ## A014907.P15868836751586630212

`(22^(n+2)-21*(n+1)-22)/441`
-/

namespace A014907.P15868836751586630212
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((22 ^ (n + 2) : ℤ) - (21 * (n + 1) : ℤ) - 22 : ℚ) / 441

end

end A014907.P15868836751586630212

namespace A014907

/-- `(22^(n+2)-21*(n+1)-22)/441` -/
def P15868836751586630212.Spec : Prop :=
  ∀ n, P15868836751586630212.a n = (A014907 (n + 1) : ℚ)

theorem P15868836751586630212.correct : P15868836751586630212.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A014907, Nat.add_sub_cancel, A014907.P15868836751586630212.a, A014907.P8828757559003531479.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A014907, Nat.add_sub_cancel, A014907.P15868836751586630212.a, A014907.P8828757559003531479.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A014907

/-! ## A014907.P3337156634595252272

`round(∑[∑[22*a(n-1)]])` with `a(0)=1`

`round` is left out, it is the identity on integers.
-/

namespace A014907.P3337156634595252272
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f2 =>
  22 * f2 (n - 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014907.P3337156634595252272

namespace A014907

/-- `round(∑[∑[22*a(n-1)]])` -/
def P3337156634595252272.Spec : Prop :=
  ∀ n, (P3337156634595252272.a n : ℤ) = A014907 (n + 1)

end A014907

/-! ## A014907.P13050293228443781618

`A218725(n+1)+a(n-1)` with `a(0)=1`
-/

namespace A014907.P13050293228443781618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A218725 (n + 1) + a (n - 1)

end

end A014907.P13050293228443781618

namespace A014907

/-- `A218725(n+1)+a(n-1)` -/
def P13050293228443781618.Spec : Prop :=
  ∀ n, P13050293228443781618.a n = A014907 (n + 1)

end A014907

/-! ## A014907.P17499220125915094291

`∑[∑[A009966(n)]]+A008683(4*(n+1))`
-/

namespace A014907.P17499220125915094291
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009966 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + A008683 (4 * (n + 1))

end

end A014907.P17499220125915094291

namespace A014907

/-- `∑[∑[A009966(n)]]+A008683(4*(n+1))` -/
def P17499220125915094291.Spec : Prop :=
  ∀ n, P17499220125915094291.a n = A014907 (n + 1)

end A014907

/-! ## A014907.P18379409010119859984

`∑[∑[A017970(2*n)]]*A133707(n+1)`
-/

namespace A014907.P18379409010119859984
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017970 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A133707 (n + 1)

end

end A014907.P18379409010119859984

namespace A014907

/-- `∑[∑[A017970(2*n)]]*A133707(n+1)` -/
def P18379409010119859984.Spec : Prop :=
  ∀ n, P18379409010119859984.a n = A014907 (n + 1)

end A014907

/-! ## A014907.P4092374848662484311

`A037213(n*(n+1))+∑[∑[A009966(n)]]`
-/

namespace A014907.P4092374848662484311
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009966 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037213 (n * (n + 1)) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014907.P4092374848662484311

namespace A014907

/-- `A037213(n*(n+1))+∑[∑[A009966(n)]]` -/
def P4092374848662484311.Spec : Prop :=
  ∀ n, P4092374848662484311.a n = A014907 (n + 1)

end A014907

/-!
# A014908: Inverse of 899th cyclotomic polynomial.

The programs for A014908, there is no canonical definition to state claims against.
-/

/-! ## A014908.P14965313675418485032

`A015807(n)*A033999(n)`
-/

namespace A014908.P14965313675418485032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015807 n * A033999 n

end

end A014908.P14965313675418485032

/-!
# A014909: a(1)=1, a(n) = 23*a(n-1) + n.

The programs for A014909, the canonical program `A014909.P5160931632845090089` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014909 has offset 1).

The definition of A014909 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `23*a(n-1)+n+1` (program `A014909.P5160931632845090089`, by `A014909.P5160931632845090089.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A014909.P5160931632845090089

`23*a(n-1)+n+1` with `a(0)=1`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A014909

/-- `23*a(n-1)+n+1` -/
def P5160931632845090089.Spec : Prop :=
  ∀ n, (P5160931632845090089.a n : ℤ) = A014909 (n + 1)

theorem P5160931632845090089.correct : P5160931632845090089.Spec := by
  intro n
  simp only [A014909, Nat.add_sub_cancel]

end A014909

/-! ## A014909.P13952087882135959782

`(23^(n+2)-22*(n+1)-23)/484`
-/

namespace A014909.P13952087882135959782
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((23 ^ (n + 2) : ℤ) - (22 * (n + 1) : ℤ) - 23 : ℚ) / 484

end

end A014909.P13952087882135959782

namespace A014909

/-- `(23^(n+2)-22*(n+1)-23)/484` -/
def P13952087882135959782.Spec : Prop :=
  ∀ n, P13952087882135959782.a n = (A014909 (n + 1) : ℚ)

theorem P13952087882135959782.correct : P13952087882135959782.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A014909, Nat.add_sub_cancel, A014909.P13952087882135959782.a, A014909.P5160931632845090089.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A014909, Nat.add_sub_cancel, A014909.P13952087882135959782.a, A014909.P5160931632845090089.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A014909

/-! ## A014909.P13448653623319027885

`abs(∑[∑[23*a(n-1)]])` with `a(0)=1`
-/

namespace A014909.P13448653623319027885
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f2 =>
  23 * f2 (n - 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014909.P13448653623319027885

namespace A014909

/-- `abs(∑[∑[23*a(n-1)]])` -/
def P13448653623319027885.Spec : Prop :=
  ∀ n, (P13448653623319027885.a n : ℤ) = A014909 (n + 1)

end A014909

/-! ## A014909.P10463888426545224235

`floor(∑[∑[23*a(n-1)]])` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A014909.P10463888426545224235
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f2 =>
  23 * f2 (n - 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014909.P10463888426545224235

namespace A014909

/-- `floor(∑[∑[23*a(n-1)]])` -/
def P10463888426545224235.Spec : Prop :=
  ∀ n, (P10463888426545224235.a n : ℤ) = A014909 (n + 1)

end A014909

/-! ## A014909.P15256852474436160503

`round(∑[∑[23*a(n-1)]])` with `a(0)=1`

`round` is left out, it is the identity on integers.
-/

namespace A014909.P15256852474436160503
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f2 =>
  23 * f2 (n - 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014909.P15256852474436160503

namespace A014909

/-- `round(∑[∑[23*a(n-1)]])` -/
def P15256852474436160503.Spec : Prop :=
  ∀ n, (P15256852474436160503.a n : ℤ) = A014909 (n + 1)

end A014909

/-! ## A014909.P15880452370222923987

`A218726(n+1)+a(n-1)` with `a(0)=1`
-/

namespace A014909.P15880452370222923987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A218726 (n + 1) + a (n - 1)

end

end A014909.P15880452370222923987

namespace A014909

/-- `A218726(n+1)+a(n-1)` -/
def P15880452370222923987.Spec : Prop :=
  ∀ n, P15880452370222923987.a n = A014909 (n + 1)

end A014909

/-!
# A014910: Inverse of 901st cyclotomic polynomial.

The programs for A014910, there is no canonical definition to state claims against.
-/

/-! ## A014910.P397516467140860233

`A015811(and(1, -n))*A015811(n)`
-/

namespace A014910.P397516467140860233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015811 (Int.land 1 (-(n : ℤ))).toNat * A015811 n

end

end A014910.P397516467140860233

/-! ## A014910.P13075482345788481360

`A015918(A356841(n+1)+2)`
-/

namespace A014910.P13075482345788481360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015918 (A356841 (n + 1) + 2).toNat

end

end A014910.P13075482345788481360

/-!
# A014911: Inverse of 902nd cyclotomic polynomial.

The programs for A014911, there is no canonical definition to state claims against.
-/

/-! ## A014911.P11537170822923715555

`A014460(n)*A033999(n)`
-/

namespace A014911.P11537170822923715555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014460 n * A033999 n

end

end A014911.P11537170822923715555

/-!
# A014912: Inverse of 903rd cyclotomic polynomial.

The programs for A014912, there is no canonical definition to state claims against.
-/

/-! ## A014912.P324375333609214225

`A015815(n)*A033999(n)`
-/

namespace A014912.P324375333609214225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015815 n * A033999 n

end

end A014912.P324375333609214225

/-!
# A014913: a(1)=1, a(n) = 24*a(n-1) + n.

The programs for A014913, the canonical program `A014913.P11856912037929120828` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014913 has offset 1).

The definition of A014913 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `24*a(n-1)+n+1` (program `A014913.P11856912037929120828`, by `A014913.P11856912037929120828.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A014913.P11856912037929120828

`24*a(n-1)+n+1` with `a(0)=1`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A014913

/-- `24*a(n-1)+n+1` -/
def P11856912037929120828.Spec : Prop :=
  ∀ n, (P11856912037929120828.a n : ℤ) = A014913 (n + 1)

theorem P11856912037929120828.correct : P11856912037929120828.Spec := by
  intro n
  simp only [A014913, Nat.add_sub_cancel]

end A014913

/-! ## A014913.P17817865518927785173

`(24^(n+2)-23*(n+1)-24)/529`
-/

namespace A014913.P17817865518927785173
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((24 ^ (n + 2) : ℤ) - (23 * (n + 1) : ℤ) - 24 : ℚ) / 529

end

end A014913.P17817865518927785173

namespace A014913

/-- `(24^(n+2)-23*(n+1)-24)/529` -/
def P17817865518927785173.Spec : Prop :=
  ∀ n, P17817865518927785173.a n = (A014913 (n + 1) : ℚ)

theorem P17817865518927785173.correct : P17817865518927785173.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A014913, Nat.add_sub_cancel, A014913.P17817865518927785173.a, A014913.P11856912037929120828.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A014913, Nat.add_sub_cancel, A014913.P17817865518927785173.a, A014913.P11856912037929120828.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A014913

/-! ## A014913.P2199928321718366124

`ceil(∑[∑[24*a(n-1)]])` with `a(0)=1`

`ceil` is left out, it is the identity on integers.
-/

namespace A014913.P2199928321718366124
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f2 =>
  24 * f2 (n - 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014913.P2199928321718366124

namespace A014913

/-- `ceil(∑[∑[24*a(n-1)]])` -/
def P2199928321718366124.Spec : Prop :=
  ∀ n, (P2199928321718366124.a n : ℤ) = A014913 (n + 1)

end A014913

/-! ## A014913.P5320922189031392824

`round(∑[∑[24*a(n-1)]])` with `a(0)=1`

`round` is left out, it is the identity on integers.
-/

namespace A014913.P5320922189031392824
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f2 =>
  24 * f2 (n - 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014913.P5320922189031392824

namespace A014913

/-- `round(∑[∑[24*a(n-1)]])` -/
def P5320922189031392824.Spec : Prop :=
  ∀ n, (P5320922189031392824.a n : ℤ) = A014913 (n + 1)

end A014913

/-! ## A014913.P13182500986680150265

`floor(∑[∑[4*6*a(n-1)]])` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A014913.P13182500986680150265
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f2 =>
  4 * (6 * f2 (n - 1))

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014913.P13182500986680150265

namespace A014913

/-- `floor(∑[∑[4*6*a(n-1)]])` -/
def P13182500986680150265.Spec : Prop :=
  ∀ n, (P13182500986680150265.a n : ℤ) = A014913 (n + 1)

end A014913

/-! ## A014913.P4137002441988038030

`A218727(n+1)+a(n-1)` with `a(0)=1`
-/

namespace A014913.P4137002441988038030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A218727 (n + 1) + a (n - 1)

end

end A014913.P4137002441988038030

namespace A014913

/-- `A218727(n+1)+a(n-1)` -/
def P4137002441988038030.Spec : Prop :=
  ∀ n, P4137002441988038030.a n = A014913 (n + 1)

end A014913

/-! ## A014913.P8470225190065963825

`A218727(n+1)+∑[A218727(n)]`
-/

namespace A014913.P8470225190065963825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218727 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218727 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014913.P8470225190065963825

namespace A014913

/-- `A218727(n+1)+∑[A218727(n)]` -/
def P8470225190065963825.Spec : Prop :=
  ∀ n, P8470225190065963825.a n = A014913 (n + 1)

end A014913

/-! ## A014913.P4472586790412001017

`∑[∑[A017976(2*n)]]%A269553(n)`
-/

namespace A014913.P4472586790412001017
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017976 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A269553 n)

end

end A014913.P4472586790412001017

namespace A014913

/-- `∑[∑[A017976(2*n)]]%A269553(n)` -/
def P4472586790412001017.Spec : Prop :=
  ∀ n, P4472586790412001017.a n = A014913 (n + 1)

end A014913

/-!
# A014914: a(1)=1, a(n) = 25*a(n-1) + n.

The programs for A014914, the canonical program `A014914.P14360103785162854271` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014914 has offset 1).

The definition of A014914 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `25*a(n-1)+n+1` (program `A014914.P14360103785162854271`, by `A014914.P14360103785162854271.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A014914.P14360103785162854271

`25*a(n-1)+n+1` with `a(0)=1`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A014914

/-- `25*a(n-1)+n+1` -/
def P14360103785162854271.Spec : Prop :=
  ∀ n, (P14360103785162854271.a n : ℤ) = A014914 (n + 1)

theorem P14360103785162854271.correct : P14360103785162854271.Spec := by
  intro n
  simp only [A014914, Nat.add_sub_cancel]

end A014914

/-! ## A014914.P4008561801317424368

`(25^(n+2)-24*(n+1)-25)/576`
-/

namespace A014914.P4008561801317424368
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((25 ^ (n + 2) : ℤ) - (24 * (n + 1) : ℤ) - 25 : ℚ) / 576

end

end A014914.P4008561801317424368

namespace A014914

/-- `(25^(n+2)-24*(n+1)-25)/576` -/
def P4008561801317424368.Spec : Prop :=
  ∀ n, P4008561801317424368.a n = (A014914 (n + 1) : ℚ)

theorem P4008561801317424368.correct : P4008561801317424368.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A014914, Nat.add_sub_cancel, A014914.P4008561801317424368.a, A014914.P14360103785162854271.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A014914, Nat.add_sub_cancel, A014914.P4008561801317424368.a, A014914.P14360103785162854271.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A014914

/-! ## A014914.P1525171245050332591

`floor(∑[∑[5*5*a(n-1)]])` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A014914.P1525171245050332591
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f2 =>
  5 * (5 * f2 (n - 1))

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014914.P1525171245050332591

namespace A014914

/-- `floor(∑[∑[5*5*a(n-1)]])` -/
def P1525171245050332591.Spec : Prop :=
  ∀ n, (P1525171245050332591.a n : ℤ) = A014914 (n + 1)

end A014914

/-! ## A014914.P1184678612943083865

`a(n-1)/(1/5)²+n+1` with `a(0)=1`
-/

namespace A014914.P1184678612943083865
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) / ((1 : ℚ) / 5) ^ 2 + (n + 1 : ℚ)

end

end A014914.P1184678612943083865

namespace A014914

/-- `a(n-1)/(1/5)²+n+1` -/
def P1184678612943083865.Spec : Prop :=
  ∀ n, P1184678612943083865.a n = (A014914 (n + 1) : ℚ)

end A014914

/-! ## A014914.P6156754194841731267

`A218728(n+1)+a(n-1)` with `a(0)=1`
-/

namespace A014914.P6156754194841731267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A218728 (n + 1) + a (n - 1)

end

end A014914.P6156754194841731267

namespace A014914

/-- `A218728(n+1)+a(n-1)` -/
def P6156754194841731267.Spec : Prop :=
  ∀ n, P6156754194841731267.a n = A014914 (n + 1)

end A014914

/-! ## A014914.P8522818567166735551

`A218728(n+1)+∑[A218728(n)]`
-/

namespace A014914.P8522818567166735551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218728 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218728 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014914.P8522818567166735551

namespace A014914

/-- `A218728(n+1)+∑[A218728(n)]` -/
def P8522818567166735551.Spec : Prop :=
  ∀ n, P8522818567166735551.a n = A014914 (n + 1)

end A014914

/-!
# A014915: a(1)=1, a(n) = n*3^(n-1) + a(n-1).

The programs for A014915, the canonical program `A014915.P17050348260165996273` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014915 has offset 1).

The definition of A014915 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)*3^n+a(n-1)` (program `A014915.P17050348260165996273`, by `A014915.P17050348260165996273.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A014915.P17050348260165996273

`(n+1)*3^n+a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A014915

/-- `(n+1)*3^n+a(n-1)` -/
def P17050348260165996273.Spec : Prop :=
  ∀ n, (P17050348260165996273.a n : ℤ) = A014915 (n + 1)

theorem P17050348260165996273.correct : P17050348260165996273.Spec := by
  intro n
  simp only [A014915, Nat.add_sub_cancel]

end A014915

/-! ## A014915.P16161230609583613005

`a(n-1)+A027471(n+2)` with `a(0)=1`
-/

namespace A014915.P16161230609583613005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A027471 (n + 2)

end

end A014915.P16161230609583613005

namespace A014915

/-- `a(n-1)+A027471(n+2)` -/
def P16161230609583613005.Spec : Prop :=
  ∀ n, P16161230609583613005.a n = A014915 (n + 1)

end A014915

/-! ## A014915.P13144886021854814050

`((2*(n+1)-1)*3^(n+1)+1)/4`
-/

namespace A014915.P13144886021854814050
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((2 * (n + 1) : ℤ) - 1) * (3 ^ (n + 1) : ℤ) + 1 : ℚ) / 4

end

end A014915.P13144886021854814050

namespace A014915

/-- `((2*(n+1)-1)*3^(n+1)+1)/4` -/
def P13144886021854814050.Spec : Prop :=
  ∀ n, P13144886021854814050.a n = (A014915 (n + 1) : ℚ)

theorem P13144886021854814050.correct : P13144886021854814050.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A014915, Nat.add_sub_cancel, A014915.P13144886021854814050.a, A014915.P17050348260165996273.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A014915, Nat.add_sub_cancel, A014915.P13144886021854814050.a, A014915.P17050348260165996273.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A014915

/-! ## A014915.P3416444346913086107

`6*a(n-1)-9*a(n-2)+1` with `a(0)=1, a(1)=7`
-/

namespace A014915.P3416444346913086107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 7] fun n a =>
  6 * a (n - 1) - 9 * a (n - 2) + 1

end

end A014915.P3416444346913086107

namespace A014915

/-- `6*a(n-1)-9*a(n-2)+1` -/
def P3416444346913086107.Spec : Prop :=
  ∀ n, P3416444346913086107.a n = A014915 (n + 1)

end A014915

/-! ## A014915.P5433333787456114985

`∑[ogf(1/(1-6x+9x^2))]`
-/

namespace A014915.P5433333787456114985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -6, 9] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014915.P5433333787456114985

namespace A014915

/-- `∑[ogf(1/(1-6x+9x^2))]` -/
def P5433333787456114985.Spec : Prop :=
  ∀ n, P5433333787456114985.a n = A014915 (n + 1)

end A014915

/-! ## A014915.P14823196996531568361

`ogf(1/(1-7x+15x^2-9x^3))`
-/

namespace A014915.P14823196996531568361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -7, 15, -9] n

end

end A014915.P14823196996531568361

namespace A014915

/-- `ogf(1/(1-7x+15x^2-9x^3))` -/
def P14823196996531568361.Spec : Prop :=
  ∀ n, P14823196996531568361.a n = A014915 (n + 1)

end A014915

/-! ## A014915.P12023617323515753895

`∑[3*a(n-1)]+3*a(n-1)` with `a(0)=1`
-/

namespace A014915.P12023617323515753895
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  3 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 3 * a (n - 1)

end

end A014915.P12023617323515753895

namespace A014915

/-- `∑[3*a(n-1)]+3*a(n-1)` -/
def P12023617323515753895.Spec : Prop :=
  ∀ n, (P12023617323515753895.a n : ℤ) = A014915 (n + 1)

end A014915

/-! ## A014915.P5125031374568899572

`Δ[A121365(n+3)]`
-/

namespace A014915.P5125031374568899572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121365 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A014915.P5125031374568899572

namespace A014915

/-- `Δ[A121365(n+3)]` -/
def P5125031374568899572.Spec : Prop :=
  ∀ n, P5125031374568899572.a n = A014915 (n + 1)

end A014915

/-! ## A014915.P7205703205141717914

`A029858(n+1)+3*a(n-1)+1` with `a(0)=1`
-/

namespace A014915.P7205703205141717914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A029858 (n + 1) + (3 * a (n - 1) + 1)

end

end A014915.P7205703205141717914

namespace A014915

/-- `A029858(n+1)+3*a(n-1)+1` -/
def P7205703205141717914.Spec : Prop :=
  ∀ n, P7205703205141717914.a n = A014915 (n + 1)

end A014915

/-! ## A014915.P16419936829346830636

`A088581(n)+A029858(n+1)`
-/

namespace A014915.P16419936829346830636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088581 n + A029858 (n + 1)

end

end A014915.P16419936829346830636

namespace A014915

/-- `A088581(n)+A029858(n+1)` -/
def P16419936829346830636.Spec : Prop :=
  ∀ n, P16419936829346830636.a n = A014915 (n + 1)

end A014915

/-! ## A014915.P2452549413044592220

`A392266(n+2)-A003462(n+2)`
-/

namespace A014915.P2452549413044592220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392266 (n + 2) - A003462 (n + 2)

end

end A014915.P2452549413044592220

namespace A014915

/-- `A392266(n+2)-A003462(n+2)` -/
def P2452549413044592220.Spec : Prop :=
  ∀ n, P2452549413044592220.a n = A014915 (n + 1)

end A014915

/-! ## A014915.P16355309571409397598

`2*A261064(n+1)-A000340(n)`
-/

namespace A014915.P16355309571409397598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A261064 (n + 1) - A000340 n

end

end A014915.P16355309571409397598

namespace A014915

/-- `2*A261064(n+1)-A000340(n)` -/
def P16355309571409397598.Spec : Prop :=
  ∀ n, P16355309571409397598.a n = A014915 (n + 1)

end A014915

/-! ## A014915.P13452439580232202202

`A111277(n+1)+n*A007051(n+1)`
-/

namespace A014915.P13452439580232202202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111277 (n + 1) + (n : ℤ) * A007051 (n + 1)

end

end A014915.P13452439580232202202

namespace A014915

/-- `A111277(n+1)+n*A007051(n+1)` -/
def P13452439580232202202.Spec : Prop :=
  ∀ n, P13452439580232202202.a n = A014915 (n + 1)

end A014915

/-! ## A014915.P7590320768164185840

`floor(A088581(n+1)/3)`
-/

namespace A014915.P7590320768164185840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A088581 (n + 1) : ℚ) / 3⌋

end

end A014915.P7590320768164185840

namespace A014915

/-- `floor(A088581(n+1)/3)` -/
def P7590320768164185840.Spec : Prop :=
  ∀ n, P7590320768164185840.a n = A014915 (n + 1)

end A014915

/-!
# A014916: a(1)=1, a(n) = n*4^(n-1) + a(n-1).

The programs for A014916, the canonical program `A014916.P17170461074989688543` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014916 has offset 1).

The definition of A014916 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)*4^n+a(n-1)` (program `A014916.P17170461074989688543`, by `A014916.P17170461074989688543.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A014916.P17170461074989688543

`(n+1)*4^n+a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A014916

/-- `(n+1)*4^n+a(n-1)` -/
def P17170461074989688543.Spec : Prop :=
  ∀ n, (P17170461074989688543.a n : ℤ) = A014916 (n + 1)

theorem P17170461074989688543.correct : P17170461074989688543.Spec := by
  intro n
  simp only [A014916, Nat.add_sub_cancel]

end A014916

/-! ## A014916.P609370921019736420

`8*a(n-1)-16*a(n-2)+1` with `a(0)=1, a(1)=9`
-/

namespace A014916.P609370921019736420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 9] fun n a =>
  8 * a (n - 1) - 16 * a (n - 2) + 1

end

end A014916.P609370921019736420

namespace A014916

/-- `8*a(n-1)-16*a(n-2)+1` -/
def P609370921019736420.Spec : Prop :=
  ∀ n, P609370921019736420.a n = A014916 (n + 1)

end A014916

/-! ## A014916.P7373369797353500787

`(4^(n+1)*(3*(n+1)-1)+1)/9`
-/

namespace A014916.P7373369797353500787
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((4 ^ (n + 1) : ℤ) * ((3 * (n + 1) : ℤ) - 1) + 1 : ℚ) / 9

end

end A014916.P7373369797353500787

namespace A014916

/-- `(4^(n+1)*(3*(n+1)-1)+1)/9` -/
def P7373369797353500787.Spec : Prop :=
  ∀ n, P7373369797353500787.a n = (A014916 (n + 1) : ℚ)

theorem P7373369797353500787.correct : P7373369797353500787.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A014916, Nat.add_sub_cancel, A014916.P7373369797353500787.a, A014916.P17170461074989688543.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A014916, Nat.add_sub_cancel, A014916.P7373369797353500787.a, A014916.P17170461074989688543.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A014916

/-! ## A014916.P18366145460286631266

`∑[ogf(1/(1-8x+16x^2))]`
-/

namespace A014916.P18366145460286631266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -8, 16] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014916.P18366145460286631266

namespace A014916

/-- `∑[ogf(1/(1-8x+16x^2))]` -/
def P18366145460286631266.Spec : Prop :=
  ∀ n, P18366145460286631266.a n = A014916 (n + 1)

end A014916

/-! ## A014916.P17121314907095988417

`ogf(1/(1-9x+24x^2-16x^3))`
-/

namespace A014916.P17121314907095988417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -9, 24, -16] n

end

end A014916.P17121314907095988417

namespace A014916

/-- `ogf(1/(1-9x+24x^2-16x^3))` -/
def P17121314907095988417.Spec : Prop :=
  ∀ n, P17121314907095988417.a n = A014916 (n + 1)

end A014916

/-! ## A014916.P18232979196590172684

`floor(∑[(4/n+4)*a(n-1)])` with `a(0)=1`
-/

namespace A014916.P18232979196590172684
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  (4 / (n : ℚ) + 4) * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A014916.P18232979196590172684

namespace A014916

/-- `floor(∑[(4/n+4)*a(n-1)])` -/
def P18232979196590172684.Spec : Prop :=
  ∀ n, P18232979196590172684.a n = A014916 (n + 1)

end A014916

/-! ## A014916.P10063279720643158100

`∑[4*a(n-1)]+4*a(n-1)` with `a(0)=1`
-/

namespace A014916.P10063279720643158100
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  4 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 4 * a (n - 1)

end

end A014916.P10063279720643158100

namespace A014916

/-- `∑[4*a(n-1)]+4*a(n-1)` -/
def P10063279720643158100.Spec : Prop :=
  ∀ n, (P10063279720643158100.a n : ℤ) = A014916 (n + 1)

end A014916

/-! ## A014916.P5699878001341526566

`A045883(Δ[n²])`
-/

namespace A014916.P5699878001341526566
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045883 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A014916.P5699878001341526566

namespace A014916

/-- `A045883(Δ[n²])` -/
def P5699878001341526566.Spec : Prop :=
  ∀ n, P5699878001341526566.a n = A014916 (n + 1)

end A014916

/-! ## A014916.P15690271050757260282

`A140787(Δ[n²])`
-/

namespace A014916.P15690271050757260282
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140787 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A014916.P15690271050757260282

namespace A014916

/-- `A140787(Δ[n²])` -/
def P15690271050757260282.Spec : Prop :=
  ∀ n, P15690271050757260282.a n = A014916 (n + 1)

end A014916

/-! ## A014916.P5301393040105682095

`Δ[A378727(n+1)]`
-/

namespace A014916.P5301393040105682095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378727 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A014916.P5301393040105682095

namespace A014916

/-- `Δ[A378727(n+1)]` -/
def P5301393040105682095.Spec : Prop :=
  ∀ n, P5301393040105682095.a n = A014916 (n + 1)

end A014916

/-! ## A014916.P6527832128461192049

`∑[A132750(2*n)]-n`
-/

namespace A014916.P6527832128461192049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132750 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A014916.P6527832128461192049

namespace A014916

/-- `∑[A132750(2*n)]-n` -/
def P6527832128461192049.Spec : Prop :=
  ∀ n, P6527832128461192049.a n = A014916 (n + 1)

end A014916

/-! ## A014916.P6261973220747178505

`2*A127985(2*n)+1`
-/

namespace A014916.P6261973220747178505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A127985 (2 * n) + 1

end

end A014916.P6261973220747178505

namespace A014916

/-- `2*A127985(2*n)+1` -/
def P6261973220747178505.Spec : Prop :=
  ∀ n, P6261973220747178505.a n = A014916 (n + 1)

end A014916

/-! ## A014916.P3769919077067013153

`∑[2*(n+1)*A081294(n)]-1`
-/

namespace A014916.P3769919077067013153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) * A081294 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A014916.P3769919077067013153

namespace A014916

/-- `∑[2*(n+1)*A081294(n)]-1` -/
def P3769919077067013153.Spec : Prop :=
  ∀ n, P3769919077067013153.a n = A014916 (n + 1)

end A014916

/-! ## A014916.P7486837363265999845

`2*∑[2*(n+1)*A131577(n)²]+1`
-/

namespace A014916.P7486837363265999845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) * A131577 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j) + 1

end

end A014916.P7486837363265999845

namespace A014916

/-- `2*∑[2*(n+1)*A131577(n)²]+1` -/
def P7486837363265999845.Spec : Prop :=
  ∀ n, P7486837363265999845.a n = A014916 (n + 1)

end A014916

/-! ## A014916.P2667733129657264562

`A088582(n)+A080674(n)`
-/

namespace A014916.P2667733129657264562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088582 n + A080674 n

end

end A014916.P2667733129657264562

namespace A014916

/-- `A088582(n)+A080674(n)` -/
def P2667733129657264562.Spec : Prop :=
  ∀ n, P2667733129657264562.a n = A014916 (n + 1)

end A014916

/-! ## A014916.P1844620569394208217

`∑[A001792(A004277(n))]-2`
-/

namespace A014916.P1844620569394208217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001792 (A004277 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A014916.P1844620569394208217

namespace A014916

/-- `∑[A001792(A004277(n))]-2` -/
def P1844620569394208217.Spec : Prop :=
  ∀ n, P1844620569394208217.a n = A014916 (n + 1)

end A014916

/-!
# A014917: a(1)=1, a(n) = n*5^(n-1) + a(n-1).

The programs for A014917, the canonical program `A014917.P14012178171995207792` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014917 has offset 1).

The definition of A014917 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)*5^n+a(n-1)` (program `A014917.P14012178171995207792`, by `A014917.P14012178171995207792.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A014917.P14012178171995207792

`(n+1)*5^n+a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A014917

/-- `(n+1)*5^n+a(n-1)` -/
def P14012178171995207792.Spec : Prop :=
  ∀ n, (P14012178171995207792.a n : ℤ) = A014917 (n + 1)

theorem P14012178171995207792.correct : P14012178171995207792.Spec := by
  intro n
  simp only [A014917, Nat.add_sub_cancel]

end A014917

/-! ## A014917.P14888581964982615300

`10*a(n-1)-25*a(n-2)+1` with `a(0)=1, a(1)=11`
-/

namespace A014917.P14888581964982615300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 11] fun n a =>
  10 * a (n - 1) - 25 * a (n - 2) + 1

end

end A014917.P14888581964982615300

namespace A014917

/-- `10*a(n-1)-25*a(n-2)+1` -/
def P14888581964982615300.Spec : Prop :=
  ∀ n, P14888581964982615300.a n = A014917 (n + 1)

end A014917

/-! ## A014917.P14902247169642261351

`∑[ogf(1/(1-10x+25x^2))]`
-/

namespace A014917.P14902247169642261351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -10, 25] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014917.P14902247169642261351

namespace A014917

/-- `∑[ogf(1/(1-10x+25x^2))]` -/
def P14902247169642261351.Spec : Prop :=
  ∀ n, P14902247169642261351.a n = A014917 (n + 1)

end A014917

/-! ## A014917.P3238553894782596300

`∑[(n+1)*5^n]`
-/

namespace A014917.P3238553894782596300
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * 5 ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014917.P3238553894782596300

namespace A014917

/-- `∑[(n+1)*5^n]` -/
def P3238553894782596300.Spec : Prop :=
  ∀ n, (P3238553894782596300.a n : ℤ) = A014917 (n + 1)

end A014917

/-! ## A014917.P10047425664075373366

`∑[5*a(n-1)]+5*a(n-1)` with `a(0)=1`
-/

namespace A014917.P10047425664075373366
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  5 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 5 * a (n - 1)

end

end A014917.P10047425664075373366

namespace A014917

/-- `∑[5*a(n-1)]+5*a(n-1)` -/
def P10047425664075373366.Spec : Prop :=
  ∀ n, (P10047425664075373366.a n : ℤ) = A014917 (n + 1)

end A014917

/-! ## A014917.P11195355486290574450

`Δ[A378728(n+1)]`
-/

namespace A014917.P11195355486290574450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378728 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A014917.P11195355486290574450

namespace A014917

/-- `Δ[A378728(n+1)]` -/
def P11195355486290574450.Spec : Prop :=
  ∀ n, P11195355486290574450.a n = A014917 (n + 1)

end A014917

/-! ## A014917.P16426670171670814892

`∑[∑[2*A081040(n)]]/2`
-/

namespace A014917.P16426670171670814892
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A081040 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A014917.P16426670171670814892

namespace A014917

/-- `∑[∑[2*A081040(n)]]/2` -/
def P16426670171670814892.Spec : Prop :=
  ∀ n, P16426670171670814892.a n = (A014917 (n + 1) : ℚ)

end A014917

/-! ## A014917.P3372922025127298532

`∑[A212699(n+1)/2]/2`
-/

namespace A014917.P3372922025127298532
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A212699 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) / 2

end

end A014917.P3372922025127298532

namespace A014917

/-- `∑[A212699(n+1)/2]/2` -/
def P3372922025127298532.Spec : Prop :=
  ∀ n, P3372922025127298532.a n = (A014917 (n + 1) : ℚ)

end A014917

/-! ## A014917.P15861517510082986284

`A104891(n)+5*a(n-1)+1` with `a(0)=1`
-/

namespace A014917.P15861517510082986284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A104891 n + (5 * a (n - 1) + 1)

end

end A014917.P15861517510082986284

namespace A014917

/-- `A104891(n)+5*a(n-1)+1` -/
def P15861517510082986284.Spec : Prop :=
  ∀ n, P15861517510082986284.a n = A014917 (n + 1)

end A014917

/-! ## A014917.P9538880290344554886

`∑[A000351(n)]+∑[A036291(n)]`
-/

namespace A014917.P9538880290344554886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000351 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036291 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A014917.P9538880290344554886

namespace A014917

/-- `∑[A000351(n)]+∑[A036291(n)]` -/
def P9538880290344554886.Spec : Prop :=
  ∀ n, P9538880290344554886.a n = A014917 (n + 1)

end A014917

/-! ## A014917.P10056981151918015357

`A378728(n+2)-A378728(n+1)`
-/

namespace A014917.P10056981151918015357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378728 (n + 2) - A378728 (n + 1)

end

end A014917.P10056981151918015357

namespace A014917

/-- `A378728(n+2)-A378728(n+1)` -/
def P10056981151918015357.Spec : Prop :=
  ∀ n, P10056981151918015357.a n = A014917 (n + 1)

end A014917

/-! ## A014917.P5520568914777296242

`∑[A212699(n+1)]/4`
-/

namespace A014917.P5520568914777296242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212699 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 4

end

end A014917.P5520568914777296242

namespace A014917

/-- `∑[A212699(n+1)]/4` -/
def P5520568914777296242.Spec : Prop :=
  ∀ n, P5520568914777296242.a n = (A014917 (n + 1) : ℚ)

end A014917

/-!
# A014918: a(1)=1, a(n) = n*6^(n-1) + a(n-1).

The programs for A014918, the canonical program `A014918.P15570188699609285388` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014918 has offset 1).

The definition of A014918 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)*6^n+a(n-1)` (program `A014918.P15570188699609285388`, by `A014918.P15570188699609285388.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A014918.P15570188699609285388

`(n+1)*6^n+a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A014918

/-- `(n+1)*6^n+a(n-1)` -/
def P15570188699609285388.Spec : Prop :=
  ∀ n, (P15570188699609285388.a n : ℤ) = A014918 (n + 1)

theorem P15570188699609285388.correct : P15570188699609285388.Spec := by
  intro n
  simp only [A014918, Nat.add_sub_cancel]

end A014918

/-! ## A014918.P250654575144391543

`12*a(n-1)-36*a(n-2)+1` with `a(0)=1, a(1)=13`
-/

namespace A014918.P250654575144391543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 13] fun n a =>
  12 * a (n - 1) - 36 * a (n - 2) + 1

end

end A014918.P250654575144391543

namespace A014918

/-- `12*a(n-1)-36*a(n-2)+1` -/
def P250654575144391543.Spec : Prop :=
  ∀ n, P250654575144391543.a n = A014918 (n + 1)

end A014918

/-! ## A014918.P7449545210656066544

`(6^(n+1)*(5*(n+1)-1)+1)/25`
-/

namespace A014918.P7449545210656066544
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((6 ^ (n + 1) : ℤ) * ((5 * (n + 1) : ℤ) - 1) + 1 : ℚ) / 25

end

end A014918.P7449545210656066544

namespace A014918

/-- `(6^(n+1)*(5*(n+1)-1)+1)/25` -/
def P7449545210656066544.Spec : Prop :=
  ∀ n, P7449545210656066544.a n = (A014918 (n + 1) : ℚ)

theorem P7449545210656066544.correct : P7449545210656066544.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A014918, Nat.add_sub_cancel, A014918.P7449545210656066544.a, A014918.P15570188699609285388.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A014918, Nat.add_sub_cancel, A014918.P7449545210656066544.a, A014918.P15570188699609285388.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A014918

/-! ## A014918.P13442483409293969572

`∑[6*a(n-1)]+6*a(n-1)` with `a(0)=1`
-/

namespace A014918.P13442483409293969572
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  6 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 6 * a (n - 1)

end

end A014918.P13442483409293969572

namespace A014918

/-- `∑[6*a(n-1)]+6*a(n-1)` -/
def P13442483409293969572.Spec : Prop :=
  ∀ n, (P13442483409293969572.a n : ℤ) = A014918 (n + 1)

end A014918

/-! ## A014918.P5782594592409212006

`or(1, ∑[A053469(n+1)])`
-/

namespace A014918.P5782594592409212006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053469 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A014918.P5782594592409212006

namespace A014918

/-- `or(1, ∑[A053469(n+1)])` -/
def P5782594592409212006.Spec : Prop :=
  ∀ n, P5782594592409212006.a n = A014918 (n + 1)

end A014918

/-! ## A014918.P3760500617540494374

`abs(∑[∑[A081041(n)]]-1)+1`
-/

namespace A014918.P3760500617540494374
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081041 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j - 1| + 1

end

end A014918.P3760500617540494374

namespace A014918

/-- `abs(∑[∑[A081041(n)]]-1)+1` -/
def P3760500617540494374.Spec : Prop :=
  ∀ n, P3760500617540494374.a n = A014918 (n + 1)

end A014918

/-! ## A014918.P5496244370375228345

`gcd(∑[A053469(n+1)], A000038(n))`
-/

namespace A014918.P5496244370375228345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053469 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (∑ j ∈ Finset.range (n + 1), f1 j) (A000038 n)

end

end A014918.P5496244370375228345

namespace A014918

/-- `gcd(∑[A053469(n+1)], A000038(n))` -/
def P5496244370375228345.Spec : Prop :=
  ∀ n, (P5496244370375228345.a n : ℤ) = A014918 (n + 1)

end A014918

/-! ## A014918.P5169060128649235327

`∑[A053469(n+1)]*char[A078898(n)]`
-/

namespace A014918.P5169060128649235327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053469 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A014918.P5169060128649235327

namespace A014918

/-- `∑[A053469(n+1)]*char[A078898(n)]` -/
def P5169060128649235327.Spec : Prop :=
  ∀ n, P5169060128649235327.a n = A014918 (n + 1)

end A014918

/-! ## A014918.P5475303437859043028

`A053470(A014963(n+2))+∑[A053469(n+1)]`
-/

namespace A014918.P5475303437859043028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053469 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053470 (A014963 (n + 2)).toNat + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014918.P5475303437859043028

namespace A014918

/-- `A053470(A014963(n+2))+∑[A053469(n+1)]` -/
def P5475303437859043028.Spec : Prop :=
  ∀ n, P5475303437859043028.a n = A014918 (n + 1)

end A014918

/-! ## A014918.P15010027486214236877

`∑[A053469(n+1)]%A187641(n+1)`
-/

namespace A014918.P15010027486214236877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053469 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A187641 (n + 1))

end

end A014918.P15010027486214236877

namespace A014918

/-- `∑[A053469(n+1)]%A187641(n+1)` -/
def P15010027486214236877.Spec : Prop :=
  ∀ n, P15010027486214236877.a n = A014918 (n + 1)

end A014918

/-!
# A014919: Inverse of 910th cyclotomic polynomial.

The programs for A014919, there is no canonical definition to state claims against.
-/

/-! ## A014919.P15260732599375647705

`A014464(n)*A033999(n)`
-/

namespace A014919.P15260732599375647705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014464 n * A033999 n

end

end A014919.P15260732599375647705

/-!
# A014920: a(1)=1, a(n) = n*7^(n-1) + a(n-1).

The programs for A014920, the canonical program `A014920.P4754355597818851858` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014920 has offset 1).

The definition of A014920 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)*7^n+a(n-1)` (program `A014920.P4754355597818851858`, by `A014920.P4754355597818851858.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A014920.P4754355597818851858

`(n+1)*7^n+a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A014920

/-- `(n+1)*7^n+a(n-1)` -/
def P4754355597818851858.Spec : Prop :=
  ∀ n, (P4754355597818851858.a n : ℤ) = A014920 (n + 1)

theorem P4754355597818851858.correct : P4754355597818851858.Spec := by
  intro n
  simp only [A014920, Nat.add_sub_cancel]

end A014920

/-! ## A014920.P12351028336533562360

`14*a(n-1)-49*a(n-2)+1` with `a(0)=1, a(1)=15`
-/

namespace A014920.P12351028336533562360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 15] fun n a =>
  14 * a (n - 1) - 49 * a (n - 2) + 1

end

end A014920.P12351028336533562360

namespace A014920

/-- `14*a(n-1)-49*a(n-2)+1` -/
def P12351028336533562360.Spec : Prop :=
  ∀ n, P12351028336533562360.a n = A014920 (n + 1)

end A014920

/-! ## A014920.P13142756343206087989

`∑[(n+1)*7^n]`
-/

namespace A014920.P13142756343206087989
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * 7 ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014920.P13142756343206087989

namespace A014920

/-- `∑[(n+1)*7^n]` -/
def P13142756343206087989.Spec : Prop :=
  ∀ n, (P13142756343206087989.a n : ℤ) = A014920 (n + 1)

end A014920

/-! ## A014920.P8423149801144357858

`∑[7*a(n-1)]+7*a(n-1)` with `a(0)=1`
-/

namespace A014920.P8423149801144357858
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  7 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 7 * a (n - 1)

end

end A014920.P8423149801144357858

namespace A014920

/-- `∑[7*a(n-1)]+7*a(n-1)` -/
def P8423149801144357858.Spec : Prop :=
  ∀ n, (P8423149801144357858.a n : ℤ) = A014920 (n + 1)

end A014920

/-! ## A014920.P13713498214728695206

`or(∑[A027473(n+1)], char[1])`
-/

namespace A014920.P13713498214728695206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027473 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (∑ j ∈ Finset.range (n + 1), f1 j) ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A014920.P13713498214728695206

namespace A014920

/-- `or(∑[A027473(n+1)], char[1])` -/
def P13713498214728695206.Spec : Prop :=
  ∀ n, P13713498214728695206.a n = A014920 (n + 1)

end A014920

/-! ## A014920.P4167517610040643333

`∑[(n+1)*A208704(n+1)]/4`
-/

namespace A014920.P4167517610040643333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A208704 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 4

end

end A014920.P4167517610040643333

namespace A014920

/-- `∑[(n+1)*A208704(n+1)]/4` -/
def P4167517610040643333.Spec : Prop :=
  ∀ n, P4167517610040643333.a n = (A014920 (n + 1) : ℚ)

end A014920

/-! ## A014920.P12398574090971490347

`floor(∑[(A224331(n+1)+n+1)/2])`
-/

namespace A014920.P12398574090971490347
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A224331 (n + 1) + (n + 1 : ℤ) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A014920.P12398574090971490347

namespace A014920

/-- `floor(∑[(A224331(n+1)+n+1)/2])` -/
def P12398574090971490347.Spec : Prop :=
  ∀ n, P12398574090971490347.a n = A014920 (n + 1)

end A014920

/-! ## A014920.P18038260837040469799

`∑[A212701(n+1)]/6`
-/

namespace A014920.P18038260837040469799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212701 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 6

end

end A014920.P18038260837040469799

namespace A014920

/-- `∑[A212701(n+1)]/6` -/
def P18038260837040469799.Spec : Prop :=
  ∀ n, P18038260837040469799.a n = (A014920 (n + 1) : ℚ)

end A014920

/-! ## A014920.P6878381639911495

`∑[A027473(n+1)]%A267665(n+1)`
-/

namespace A014920.P6878381639911495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027473 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A267665 (n + 1))

end

end A014920.P6878381639911495

namespace A014920

/-- `∑[A027473(n+1)]%A267665(n+1)` -/
def P6878381639911495.Spec : Prop :=
  ∀ n, P6878381639911495.a n = A014920 (n + 1)

end A014920

/-!
# A014921: a(1)=1, a(n) = n*8^(n-1) + a(n-1).

The programs for A014921, the canonical program `A014921.P1643784030665844445` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014921 has offset 1).

The definition of A014921 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)*8^n+a(n-1)` (program `A014921.P1643784030665844445`, by `A014921.P1643784030665844445.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A014921.P1643784030665844445

`(n+1)*8^n+a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A014921

/-- `(n+1)*8^n+a(n-1)` -/
def P1643784030665844445.Spec : Prop :=
  ∀ n, (P1643784030665844445.a n : ℤ) = A014921 (n + 1)

theorem P1643784030665844445.correct : P1643784030665844445.Spec := by
  intro n
  simp only [A014921, Nat.add_sub_cancel]

end A014921

/-! ## A014921.P5102969618265811047

`16*a(n-1)-64*a(n-2)+1` with `a(0)=1, a(1)=17`
-/

namespace A014921.P5102969618265811047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 17] fun n a =>
  16 * a (n - 1) - 64 * a (n - 2) + 1

end

end A014921.P5102969618265811047

namespace A014921

/-- `16*a(n-1)-64*a(n-2)+1` -/
def P5102969618265811047.Spec : Prop :=
  ∀ n, P5102969618265811047.a n = A014921 (n + 1)

end A014921

/-! ## A014921.P15397445295827052164

`(1+(7*(n+1)-1)*8^(n+1))/49`
-/

namespace A014921.P15397445295827052164
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 + ((7 * (n + 1) : ℤ) - 1) * (8 ^ (n + 1) : ℤ) : ℚ) / 49

end

end A014921.P15397445295827052164

namespace A014921

/-- `(1+(7*(n+1)-1)*8^(n+1))/49` -/
def P15397445295827052164.Spec : Prop :=
  ∀ n, P15397445295827052164.a n = (A014921 (n + 1) : ℚ)

theorem P15397445295827052164.correct : P15397445295827052164.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A014921, Nat.add_sub_cancel, A014921.P15397445295827052164.a, A014921.P1643784030665844445.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A014921, Nat.add_sub_cancel, A014921.P15397445295827052164.a, A014921.P1643784030665844445.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A014921

/-! ## A014921.P10265444794699898513

`∑[8*a(n-1)]+8*a(n-1)` with `a(0)=1`
-/

namespace A014921.P10265444794699898513
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  8 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 8 * a (n - 1)

end

end A014921.P10265444794699898513

namespace A014921

/-- `∑[8*a(n-1)]+8*a(n-1)` -/
def P10265444794699898513.Spec : Prop :=
  ∀ n, (P10265444794699898513.a n : ℤ) = A014921 (n + 1)

end A014921

/-! ## A014921.P13150037914280119921

`or(1, ∑[A053539(n+1)])`
-/

namespace A014921.P13150037914280119921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053539 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A014921.P13150037914280119921

namespace A014921

/-- `or(1, ∑[A053539(n+1)])` -/
def P13150037914280119921.Spec : Prop :=
  ∀ n, P13150037914280119921.a n = A014921 (n + 1)

end A014921

/-! ## A014921.P9008327152315297263

`abs(∑[(Δ[n²]-n)*A001018(n)])`
-/

namespace A014921.P9008327152315297263
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f2 (n + 1) : ℤ) - (f2 n : ℤ) - (n : ℤ)) * A001018 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A014921.P9008327152315297263

namespace A014921

/-- `abs(∑[(Δ[n²]-n)*A001018(n)])` -/
def P9008327152315297263.Spec : Prop :=
  ∀ n, P9008327152315297263.a n = A014921 (n + 1)

end A014921

/-! ## A014921.P5718615655735943962

`∑[(n+1)*A103459(n)-n]-n`
-/

namespace A014921.P5718615655735943962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A103459 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A014921.P5718615655735943962

namespace A014921

/-- `∑[(n+1)*A103459(n)-n]-n` -/
def P5718615655735943962.Spec : Prop :=
  ∀ n, P5718615655735943962.a n = A014921 (n + 1)

end A014921

/-! ## A014921.P5694652150863166347

`∑[2*(n+1)*A131577(3*n)]+1`
-/

namespace A014921.P5694652150863166347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) * A131577 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A014921.P5694652150863166347

namespace A014921

/-- `∑[2*(n+1)*A131577(3*n)]+1` -/
def P5694652150863166347.Spec : Prop :=
  ∀ n, P5694652150863166347.a n = A014921 (n + 1)

end A014921

/-! ## A014921.P164856518819054867

`A053539(n+1)+∑[A053539(n)]`
-/

namespace A014921.P164856518819054867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053539 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053539 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014921.P164856518819054867

namespace A014921

/-- `A053539(n+1)+∑[A053539(n)]` -/
def P164856518819054867.Spec : Prop :=
  ∀ n, P164856518819054867.a n = A014921 (n + 1)

end A014921

/-!
# A014922: Inverse of 913th cyclotomic polynomial.

The programs for A014922, there is no canonical definition to state claims against.
-/

/-! ## A014922.P64266781411810647

`A016236(lt[A087565(n+1)², A003056(n)])`
-/

namespace A014922.P64266781411810647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087565 (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016236 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A014922.P64266781411810647

/-! ## A014922.P14564198025793252438

`A014590(n)^A000120(A316945(n+1))`
-/

namespace A014922.P14564198025793252438
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014590 n : ℚ) ^ (A000120 (A316945 (n + 1)).toNat : ℤ)

end

end A014922.P14564198025793252438

/-!
# A014923: a(1) = 1, a(n) = n*9^(n-1) + a(n-1).

The programs for A014923, the canonical program `A014923.P16117329642094210941` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014923 has offset 1).

The definition of A014923 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)*9^n+a(n-1)` (program `A014923.P16117329642094210941`, by `A014923.P16117329642094210941.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A014923.P16117329642094210941

`(n+1)*9^n+a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A014923

/-- `(n+1)*9^n+a(n-1)` -/
def P16117329642094210941.Spec : Prop :=
  ∀ n, (P16117329642094210941.a n : ℤ) = A014923 (n + 1)

theorem P16117329642094210941.correct : P16117329642094210941.Spec := by
  intro n
  simp only [A014923, Nat.add_sub_cancel]

end A014923

/-! ## A014923.P1182058306797498144

`18*a(n-1)-81*a(n-2)+1` with `a(0)=1, a(1)=19`
-/

namespace A014923.P1182058306797498144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 19] fun n a =>
  18 * a (n - 1) - 81 * a (n - 2) + 1

end

end A014923.P1182058306797498144

namespace A014923

/-- `18*a(n-1)-81*a(n-2)+1` -/
def P1182058306797498144.Spec : Prop :=
  ∀ n, P1182058306797498144.a n = A014923 (n + 1)

end A014923

/-! ## A014923.P8876544135534149228

`(9^(n+1)*(8*(n+1)-1)+1)/64`
-/

namespace A014923.P8876544135534149228
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((9 ^ (n + 1) : ℤ) * ((8 * (n + 1) : ℤ) - 1) + 1 : ℚ) / 64

end

end A014923.P8876544135534149228

namespace A014923

/-- `(9^(n+1)*(8*(n+1)-1)+1)/64` -/
def P8876544135534149228.Spec : Prop :=
  ∀ n, P8876544135534149228.a n = (A014923 (n + 1) : ℚ)

theorem P8876544135534149228.correct : P8876544135534149228.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A014923, Nat.add_sub_cancel, A014923.P8876544135534149228.a, A014923.P16117329642094210941.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A014923, Nat.add_sub_cancel, A014923.P8876544135534149228.a, A014923.P16117329642094210941.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A014923

/-! ## A014923.P12640175376567739598

`and(∑[A053540(n+1)], -1)`
-/

namespace A014923.P12640175376567739598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053540 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (∑ j ∈ Finset.range (n + 1), f1 j) (-1)

end

end A014923.P12640175376567739598

namespace A014923

/-- `and(∑[A053540(n+1)], -1)` -/
def P12640175376567739598.Spec : Prop :=
  ∀ n, P12640175376567739598.a n = A014923 (n + 1)

end A014923

/-! ## A014923.P3373230421262767832

`-∑[A000244(n)²*xor(n, -1)]`
-/

namespace A014923.P3373230421262767832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 n ^ 2 * Int.xor (n : ℤ) (-1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ j ∈ Finset.range (n + 1), f1 j)

end

end A014923.P3373230421262767832

namespace A014923

/-- `-∑[A000244(n)²*xor(n, -1)]` -/
def P3373230421262767832.Spec : Prop :=
  ∀ n, P3373230421262767832.a n = A014923 (n + 1)

end A014923

/-! ## A014923.P9321131368753856929

`∑[A001019(n)]+9*a(n-1)` with `a(0)=1`
-/

namespace A014923.P9321131368753856929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001019 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 9 * a (n - 1)

end

end A014923.P9321131368753856929

namespace A014923

/-- `∑[A001019(n)]+9*a(n-1)` -/
def P9321131368753856929.Spec : Prop :=
  ∀ n, P9321131368753856929.a n = A014923 (n + 1)

end A014923

/-! ## A014923.P4624536279516631721

`A052386(n)+9*a(n-1)+1` with `a(0)=1`
-/

namespace A014923.P4624536279516631721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A052386 n + (9 * a (n - 1) + 1)

end

end A014923.P4624536279516631721

namespace A014923

/-- `A052386(n)+9*a(n-1)+1` -/
def P4624536279516631721.Spec : Prop :=
  ∀ n, P4624536279516631721.a n = A014923 (n + 1)

end A014923

/-! ## A014923.P3848417481321672055

`gcd(∑[A053540(n+1)], A000038(n))`
-/

namespace A014923.P3848417481321672055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053540 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (∑ j ∈ Finset.range (n + 1), f1 j) (A000038 n)

end

end A014923.P3848417481321672055

namespace A014923

/-- `gcd(∑[A053540(n+1)], A000038(n))` -/
def P3848417481321672055.Spec : Prop :=
  ∀ n, (P3848417481321672055.a n : ℤ) = A014923 (n + 1)

end A014923

/-! ## A014923.P567762846989235181

`A000007(A017617(n))+∑[A053540(n+1)]`
-/

namespace A014923.P567762846989235181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053540 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A017617 n).toNat + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014923.P567762846989235181

namespace A014923

/-- `A000007(A017617(n))+∑[A053540(n+1)]` -/
def P567762846989235181.Spec : Prop :=
  ∀ n, P567762846989235181.a n = A014923 (n + 1)

end A014923

/-! ## A014923.P14822798307192783588

`A001222(A074399(n+1))*∑[A053540(n+1)]`
-/

namespace A014923.P14822798307192783588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053540 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A074399 (n + 1)).toNat * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A014923.P14822798307192783588

namespace A014923

/-- `A001222(A074399(n+1))*∑[A053540(n+1)]` -/
def P14822798307192783588.Spec : Prop :=
  ∀ n, P14822798307192783588.a n = A014923 (n + 1)

end A014923

/-! ## A014923.P12777183784385178538

`A001222(A013632(n)+n)*∑[A053540(n+1)]`
-/

namespace A014923.P12777183784385178538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053540 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A013632 n + (n : ℤ)).toNat * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A014923.P12777183784385178538

namespace A014923

/-- `A001222(A013632(n)+n)*∑[A053540(n+1)]` -/
def P12777183784385178538.Spec : Prop :=
  ∀ n, P12777183784385178538.a n = A014923 (n + 1)

end A014923

/-! ## A014923.P15204114873978584581

`∑[A053540(n+1)]%A053540(n+3)`
-/

namespace A014923.P15204114873978584581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053540 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A053540 (n + 3))

end

end A014923.P15204114873978584581

namespace A014923

/-- `∑[A053540(n+1)]%A053540(n+3)` -/
def P15204114873978584581.Spec : Prop :=
  ∀ n, P15204114873978584581.a n = A014923 (n + 1)

end A014923

/-!
# A014924: Inverse of 915th cyclotomic polynomial.

The programs for A014924, there is no canonical definition to state claims against.
-/

/-! ## A014924.P15457914981896265821

`A015014(lt[A374758(n), A015051(n+5)])`
-/

namespace A014924.P15457914981896265821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374758 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015051 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015014 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A014924.P15457914981896265821

/-!
# A014925: Number of zeros in numbers 1 to 111...1 (n+1 digits).

The programs for A014925, the canonical program `A014925.P8944675970479209917` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014925 has offset 1).

The definition of A014925 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A014925.P8944675970479209917

`(n+1)*10^n+a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A014925

/-- `(n+1)*10^n+a(n-1)` -/
def P8944675970479209917.Spec : Prop :=
  ∀ n, (P8944675970479209917.a n : ℤ) = A014925 (n + 1)

theorem P8944675970479209917.correct : P8944675970479209917.Spec := by
  intro n
  simp only [A014925, Nat.add_sub_cancel]

end A014925

/-! ## A014925.P17026813486419186753

`10^(n+1)*(n+2)/9-1/81*10^(n+2)+1/81`
-/

namespace A014925.P17026813486419186753
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (10 ^ (n + 1) : ℚ) * ((n + 2 : ℚ) / 9) - (1 : ℚ) / 81 * (10 ^ (n + 2) : ℚ) + (1 : ℚ) / 81

end

end A014925.P17026813486419186753

namespace A014925

/-- `10^(n+1)*(n+2)/9-1/81*10^(n+2)+1/81` -/
def P17026813486419186753.Spec : Prop :=
  ∀ n, P17026813486419186753.a n = (A014925 (n + 1) : ℚ)

theorem P17026813486419186753.correct : P17026813486419186753.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A014925, Nat.add_sub_cancel, A014925.P17026813486419186753.a, A014925.P8944675970479209917.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A014925, Nat.add_sub_cancel, A014925.P17026813486419186753.a, A014925.P8944675970479209917.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A014925

/-! ## A014925.P10915553120461400697

`A033713(n+2)/9`
-/

namespace A014925.P10915553120461400697
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033713 (n + 2) : ℚ) / 9

end

end A014925.P10915553120461400697

namespace A014925

/-- `A033713(n+2)/9` -/
def P10915553120461400697.Spec : Prop :=
  ∀ n, P10915553120461400697.a n = (A014925 (n + 1) : ℚ)

end A014925

/-! ## A014925.P9626336570866286835

`A081541(C(n+3, 2))`
-/

namespace A014925.P9626336570866286835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081541 (Nat.choose (n + 3) 2)

end

end A014925.P9626336570866286835

namespace A014925

/-- `A081541(C(n+3, 2))` -/
def P9626336570866286835.Spec : Prop :=
  ∀ n, P9626336570866286835.a n = A014925 (n + 1)

end A014925

/-! ## A014925.P6449974167030392490

`A081541(∑[n+2]+1)`
-/

namespace A014925.P6449974167030392490
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081541 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A014925.P6449974167030392490

namespace A014925

/-- `A081541(∑[n+2]+1)` -/
def P6449974167030392490.Spec : Prop :=
  ∀ n, P6449974167030392490.a n = A014925 (n + 1)

end A014925

/-! ## A014925.P6632360232978484411

`or(1, ∑[A053541(n+1)])`
-/

namespace A014925.P6632360232978484411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053541 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A014925.P6632360232978484411

namespace A014925

/-- `or(1, ∑[A053541(n+1)])` -/
def P6632360232978484411.Spec : Prop :=
  ∀ n, P6632360232978484411.a n = A014925 (n + 1)

end A014925

/-! ## A014925.P11834523189373842079

`∑[4*(n+1)*A011557(n)]/4`
-/

namespace A014925.P11834523189373842079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * (n + 1) : ℤ) * A011557 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 4

end

end A014925.P11834523189373842079

namespace A014925

/-- `∑[4*(n+1)*A011557(n)]/4` -/
def P11834523189373842079.Spec : Prop :=
  ∀ n, P11834523189373842079.a n = (A014925 (n + 1) : ℚ)

end A014925

/-!
# A014926: a(1)=1, a(n) = n*11^(n-1) + a(n-1).

The programs for A014926, the canonical program `A014926.P15030114954730718189` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014926 has offset 1).

The definition of A014926 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)*11^n+a(n-1)` (program `A014926.P15030114954730718189`, by `A014926.P15030114954730718189.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A014926.P15030114954730718189

`(n+1)*11^n+a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A014926

/-- `(n+1)*11^n+a(n-1)` -/
def P15030114954730718189.Spec : Prop :=
  ∀ n, (P15030114954730718189.a n : ℤ) = A014926 (n + 1)

theorem P15030114954730718189.correct : P15030114954730718189.Spec := by
  intro n
  simp only [A014926, Nat.add_sub_cancel]

end A014926

/-! ## A014926.P17553699040194502137

`22*a(n-1)-121*a(n-2)+1` with `a(0)=1, a(1)=23`
-/

namespace A014926.P17553699040194502137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 23] fun n a =>
  22 * a (n - 1) - 121 * a (n - 2) + 1

end

end A014926.P17553699040194502137

namespace A014926

/-- `22*a(n-1)-121*a(n-2)+1` -/
def P17553699040194502137.Spec : Prop :=
  ∀ n, P17553699040194502137.a n = A014926 (n + 1)

end A014926

/-! ## A014926.P7623164806000900917

`∑[(n+1)*11^n]`
-/

namespace A014926.P7623164806000900917
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * 11 ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014926.P7623164806000900917

namespace A014926

/-- `∑[(n+1)*11^n]` -/
def P7623164806000900917.Spec : Prop :=
  ∀ n, (P7623164806000900917.a n : ℤ) = A014926 (n + 1)

end A014926

/-! ## A014926.P4088906344512747221

`∑[11*a(n-1)]+11*a(n-1)` with `a(0)=1`
-/

namespace A014926.P4088906344512747221
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  11 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 11 * a (n - 1)

end

end A014926.P4088906344512747221

namespace A014926

/-- `∑[11*a(n-1)]+11*a(n-1)` -/
def P4088906344512747221.Spec : Prop :=
  ∀ n, (P4088906344512747221.a n : ℤ) = A014926 (n + 1)

end A014926

/-! ## A014926.P4050255490954872217

`∑[A081127(n+1)]^ceil(acot(n))`
-/

namespace A014926.P4050255490954872217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081127 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) ^ (⌈SequenceMachineLib.acot (n : ℝ)⌉ : ℤ)

end

end A014926.P4050255490954872217

namespace A014926

/-- `∑[A081127(n+1)]^ceil(acot(n))` -/
def P4050255490954872217.Spec : Prop :=
  ∀ n, P4050255490954872217.a n = (A014926 (n + 1) : ℚ)

end A014926

/-! ## A014926.P17949926000745940664

`A081127(n+1)+∑[A081127(n)]`
-/

namespace A014926.P17949926000745940664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081127 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081127 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014926.P17949926000745940664

namespace A014926

/-- `A081127(n+1)+∑[A081127(n)]` -/
def P17949926000745940664.Spec : Prop :=
  ∀ n, P17949926000745940664.a n = A014926 (n + 1)

end A014926

/-!
# A014927: a(1)=1, a(n) = n*12^(n-1) + a(n-1).

The programs for A014927, the canonical program `A014927.P11149999103174870358` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014927 has offset 1).

The definition of A014927 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)*12^n+a(n-1)` (program `A014927.P11149999103174870358`, by `A014927.P11149999103174870358.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A014927.P11149999103174870358

`(n+1)*12^n+a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A014927

/-- `(n+1)*12^n+a(n-1)` -/
def P11149999103174870358.Spec : Prop :=
  ∀ n, (P11149999103174870358.a n : ℤ) = A014927 (n + 1)

theorem P11149999103174870358.correct : P11149999103174870358.Spec := by
  intro n
  simp only [A014927, Nat.add_sub_cancel]

end A014927

/-! ## A014927.P9875504106432958608

`24*a(n-1)-144*a(n-2)+1` with `a(0)=1, a(1)=25`
-/

namespace A014927.P9875504106432958608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 25] fun n a =>
  24 * a (n - 1) - 144 * a (n - 2) + 1

end

end A014927.P9875504106432958608

namespace A014927

/-- `24*a(n-1)-144*a(n-2)+1` -/
def P9875504106432958608.Spec : Prop :=
  ∀ n, P9875504106432958608.a n = A014927 (n + 1)

end A014927

/-! ## A014927.P3312626200087407642

`(12^(n+1)*(11*(n+1)-1)+1)/121`
-/

namespace A014927.P3312626200087407642
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((12 ^ (n + 1) : ℤ) * ((11 * (n + 1) : ℤ) - 1) + 1 : ℚ) / 121

end

end A014927.P3312626200087407642

namespace A014927

/-- `(12^(n+1)*(11*(n+1)-1)+1)/121` -/
def P3312626200087407642.Spec : Prop :=
  ∀ n, P3312626200087407642.a n = (A014927 (n + 1) : ℚ)

theorem P3312626200087407642.correct : P3312626200087407642.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A014927, Nat.add_sub_cancel, A014927.P3312626200087407642.a, A014927.P11149999103174870358.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A014927, Nat.add_sub_cancel, A014927.P3312626200087407642.a, A014927.P11149999103174870358.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A014927

/-! ## A014927.P7649908196515831008

`∑[12*a(n-1)]+12*a(n-1)` with `a(0)=1`
-/

namespace A014927.P7649908196515831008
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  12 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 12 * a (n - 1)

end

end A014927.P7649908196515831008

namespace A014927

/-- `∑[12*a(n-1)]+12*a(n-1)` -/
def P7649908196515831008.Spec : Prop :=
  ∀ n, (P7649908196515831008.a n : ℤ) = A014927 (n + 1)

end A014927

/-!
# A014928: a(1)=1, a(n) = n*13^(n-1) + a(n-1).

The programs for A014928, the canonical program `A014928.P125425600227514863` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014928 has offset 1).

The definition of A014928 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)*13^n+a(n-1)` (program `A014928.P125425600227514863`, by `A014928.P125425600227514863.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A014928.P125425600227514863

`(n+1)*13^n+a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A014928

/-- `(n+1)*13^n+a(n-1)` -/
def P125425600227514863.Spec : Prop :=
  ∀ n, (P125425600227514863.a n : ℤ) = A014928 (n + 1)

theorem P125425600227514863.correct : P125425600227514863.Spec := by
  intro n
  simp only [A014928, Nat.add_sub_cancel]

end A014928

/-! ## A014928.P2073930312789955582

`26*a(n-1)-169*a(n-2)+1` with `a(0)=1, a(1)=27`
-/

namespace A014928.P2073930312789955582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 27] fun n a =>
  26 * a (n - 1) - 169 * a (n - 2) + 1

end

end A014928.P2073930312789955582

namespace A014928

/-- `26*a(n-1)-169*a(n-2)+1` -/
def P2073930312789955582.Spec : Prop :=
  ∀ n, P2073930312789955582.a n = A014928 (n + 1)

end A014928

/-! ## A014928.P1705798328915443432

`(13^(n+1)*(12*(n+1)-1)+1)/144`
-/

namespace A014928.P1705798328915443432
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((13 ^ (n + 1) : ℤ) * ((12 * (n + 1) : ℤ) - 1) + 1 : ℚ) / 144

end

end A014928.P1705798328915443432

namespace A014928

/-- `(13^(n+1)*(12*(n+1)-1)+1)/144` -/
def P1705798328915443432.Spec : Prop :=
  ∀ n, P1705798328915443432.a n = (A014928 (n + 1) : ℚ)

theorem P1705798328915443432.correct : P1705798328915443432.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A014928, Nat.add_sub_cancel, A014928.P1705798328915443432.a, A014928.P125425600227514863.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A014928, Nat.add_sub_cancel, A014928.P1705798328915443432.a, A014928.P125425600227514863.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A014928

/-! ## A014928.P16049242757439256494

`∑[13*a(n-1)]+13*a(n-1)` with `a(0)=1`
-/

namespace A014928.P16049242757439256494
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  13 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 13 * a (n - 1)

end

end A014928.P16049242757439256494

namespace A014928

/-- `∑[13*a(n-1)]+13*a(n-1)` -/
def P16049242757439256494.Spec : Prop :=
  ∀ n, (P16049242757439256494.a n : ℤ) = A014928 (n + 1)

end A014928

/-! ## A014928.P18263891932270144182

`A091030(n+1)+∑[n*A001022(n)]`
-/

namespace A014928.P18263891932270144182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A001022 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091030 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014928.P18263891932270144182

namespace A014928

/-- `A091030(n+1)+∑[n*A001022(n)]` -/
def P18263891932270144182.Spec : Prop :=
  ∀ n, P18263891932270144182.a n = A014928 (n + 1)

end A014928

/-!
# A014929: a(1)=1, a(n) = n*14^(n-1) + a(n-1).

The programs for A014929, the canonical program `A014929.P11761092065395172010` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014929 has offset 1).

The definition of A014929 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)*14^n+a(n-1)` (program `A014929.P11761092065395172010`, by `A014929.P11761092065395172010.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A014929.P11761092065395172010

`(n+1)*14^n+a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A014929

/-- `(n+1)*14^n+a(n-1)` -/
def P11761092065395172010.Spec : Prop :=
  ∀ n, (P11761092065395172010.a n : ℤ) = A014929 (n + 1)

theorem P11761092065395172010.correct : P11761092065395172010.Spec := by
  intro n
  simp only [A014929, Nat.add_sub_cancel]

end A014929

/-! ## A014929.P4088931656582601867

`28*a(n-1)-196*a(n-2)+1` with `a(0)=1, a(1)=29`
-/

namespace A014929.P4088931656582601867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 29] fun n a =>
  28 * a (n - 1) - 196 * a (n - 2) + 1

end

end A014929.P4088931656582601867

namespace A014929

/-- `28*a(n-1)-196*a(n-2)+1` -/
def P4088931656582601867.Spec : Prop :=
  ∀ n, P4088931656582601867.a n = A014929 (n + 1)

end A014929

/-! ## A014929.P16169807740896146053

`(1+(13*(n+1)-1)*14^(n+1))/169`
-/

namespace A014929.P16169807740896146053
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 + ((13 * (n + 1) : ℤ) - 1) * (14 ^ (n + 1) : ℤ) : ℚ) / 169

end

end A014929.P16169807740896146053

namespace A014929

/-- `(1+(13*(n+1)-1)*14^(n+1))/169` -/
def P16169807740896146053.Spec : Prop :=
  ∀ n, P16169807740896146053.a n = (A014929 (n + 1) : ℚ)

theorem P16169807740896146053.correct : P16169807740896146053.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A014929, Nat.add_sub_cancel, A014929.P16169807740896146053.a, A014929.P11761092065395172010.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A014929, Nat.add_sub_cancel, A014929.P16169807740896146053.a, A014929.P11761092065395172010.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A014929

/-! ## A014929.P12301253654141150672

`∑[14*a(n-1)]+14*a(n-1)` with `a(0)=1`
-/

namespace A014929.P12301253654141150672
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  14 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 14 * a (n - 1)

end

end A014929.P12301253654141150672

namespace A014929

/-- `∑[14*a(n-1)]+14*a(n-1)` -/
def P12301253654141150672.Spec : Prop :=
  ∀ n, (P12301253654141150672.a n : ℤ) = A014929 (n + 1)

end A014929

/-! ## A014929.P3047462318694532113

`or(1, ∑[(n+1)*A017946(2*n)])`
-/

namespace A014929.P3047462318694532113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A017946 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A014929.P3047462318694532113

namespace A014929

/-- `or(1, ∑[(n+1)*A017946(2*n)])` -/
def P3047462318694532113.Spec : Prop :=
  ∀ n, P3047462318694532113.a n = A014929 (n + 1)

end A014929

/-! ## A014929.P1954734988277330176

`or(1, ∑[(n+1)*A017948(2*n)])`
-/

namespace A014929.P1954734988277330176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A017948 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A014929.P1954734988277330176

namespace A014929

/-- `or(1, ∑[(n+1)*A017948(2*n)])` -/
def P1954734988277330176.Spec : Prop :=
  ∀ n, P1954734988277330176.a n = A014929 (n + 1)

end A014929

/-!
# A014930: a(1)=1, a(n) = n*15^(n-1) + a(n-1).

The programs for A014930, the canonical program `A014930.P4358303885204315921` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014930 has offset 1).

The definition of A014930 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)*15^n+a(n-1)` (program `A014930.P4358303885204315921`, by `A014930.P4358303885204315921.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A014930.P4358303885204315921

`(n+1)*15^n+a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A014930

/-- `(n+1)*15^n+a(n-1)` -/
def P4358303885204315921.Spec : Prop :=
  ∀ n, (P4358303885204315921.a n : ℤ) = A014930 (n + 1)

theorem P4358303885204315921.correct : P4358303885204315921.Spec := by
  intro n
  simp only [A014930, Nat.add_sub_cancel]

end A014930

/-! ## A014930.P10056190160274212668

`30*a(n-1)-225*a(n-2)+1` with `a(0)=1, a(1)=31`
-/

namespace A014930.P10056190160274212668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 31] fun n a =>
  30 * a (n - 1) - 225 * a (n - 2) + 1

end

end A014930.P10056190160274212668

namespace A014930

/-- `30*a(n-1)-225*a(n-2)+1` -/
def P10056190160274212668.Spec : Prop :=
  ∀ n, P10056190160274212668.a n = A014930 (n + 1)

end A014930

/-! ## A014930.P9864081838378492964

`(15^(n+1)*(14*(n+1)-1)+1)/196`
-/

namespace A014930.P9864081838378492964
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((15 ^ (n + 1) : ℤ) * ((14 * (n + 1) : ℤ) - 1) + 1 : ℚ) / 196

end

end A014930.P9864081838378492964

namespace A014930

/-- `(15^(n+1)*(14*(n+1)-1)+1)/196` -/
def P9864081838378492964.Spec : Prop :=
  ∀ n, P9864081838378492964.a n = (A014930 (n + 1) : ℚ)

theorem P9864081838378492964.correct : P9864081838378492964.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A014930, Nat.add_sub_cancel, A014930.P9864081838378492964.a, A014930.P4358303885204315921.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A014930, Nat.add_sub_cancel, A014930.P9864081838378492964.a, A014930.P4358303885204315921.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A014930

/-! ## A014930.P18324724314368768365

`∑[A027475(n+2)]^A178334(n)`
-/

namespace A014930.P18324724314368768365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027475 (n + 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) ^ (A178334 n : ℤ)

end

end A014930.P18324724314368768365

namespace A014930

/-- `∑[A027475(n+2)]^A178334(n)` -/
def P18324724314368768365.Spec : Prop :=
  ∀ n, P18324724314368768365.a n = (A014930 (n + 1) : ℚ)

end A014930

/-! ## A014930.P7904706731725381195

`gcd(∑[A027475(n+2)], A000038(n))`
-/

namespace A014930.P7904706731725381195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027475 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (∑ j ∈ Finset.range (n + 1), f1 j) (A000038 n)

end

end A014930.P7904706731725381195

namespace A014930

/-- `gcd(∑[A027475(n+2)], A000038(n))` -/
def P7904706731725381195.Spec : Prop :=
  ∀ n, (P7904706731725381195.a n : ℤ) = A014930 (n + 1)

end A014930

/-! ## A014930.P2960194026403092722

`or(∑[A027475(n+2)], A000007(n))`
-/

namespace A014930.P2960194026403092722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027475 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (∑ j ∈ Finset.range (n + 1), f1 j) (A000007 n)

end

end A014930.P2960194026403092722

namespace A014930

/-- `or(∑[A027475(n+2)], A000007(n))` -/
def P2960194026403092722.Spec : Prop :=
  ∀ n, P2960194026403092722.a n = A014930 (n + 1)

end A014930

/-! ## A014930.P17394396083330676326

`A007318(∑[n])*∑[A027475(n+2)]`
-/

namespace A014930.P17394396083330676326
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027475 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A014930.P17394396083330676326

namespace A014930

/-- `A007318(∑[n])*∑[A027475(n+2)]` -/
def P17394396083330676326.Spec : Prop :=
  ∀ n, P17394396083330676326.a n = A014930 (n + 1)

end A014930

/-! ## A014930.P16758910506739778039

`and(1, A000045(n))!*∑[A027475(n+2)]`
-/

namespace A014930.P16758910506739778039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027475 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (Int.land 1 (A000045 n)).toNat : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A014930.P16758910506739778039

namespace A014930

/-- `and(1, A000045(n))!*∑[A027475(n+2)]` -/
def P16758910506739778039.Spec : Prop :=
  ∀ n, P16758910506739778039.a n = A014930 (n + 1)

end A014930

/-! ## A014930.P13387773426377627731

`∑[A027475(n+2)]%A027464(n+3)`
-/

namespace A014930.P13387773426377627731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027475 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A027464 (n + 3))

end

end A014930.P13387773426377627731

namespace A014930

/-- `∑[A027475(n+2)]%A027464(n+3)` -/
def P13387773426377627731.Spec : Prop :=
  ∀ n, P13387773426377627731.a n = A014930 (n + 1)

end A014930

/-!
# A014931: a(1)=1, a(n) = n*16^(n-1) + a(n-1).

The programs for A014931, the canonical program `A014931.P13759528326370373619` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014931 has offset 1).

The definition of A014931 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)*16^n+a(n-1)` (program `A014931.P13759528326370373619`, by `A014931.P13759528326370373619.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A014931.P13759528326370373619

`(n+1)*16^n+a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A014931

/-- `(n+1)*16^n+a(n-1)` -/
def P13759528326370373619.Spec : Prop :=
  ∀ n, (P13759528326370373619.a n : ℤ) = A014931 (n + 1)

theorem P13759528326370373619.correct : P13759528326370373619.Spec := by
  intro n
  simp only [A014931, Nat.add_sub_cancel]

end A014931

/-! ## A014931.P7326483992883081725

`32*a(n-1)-256*a(n-2)+1` with `a(0)=1, a(1)=33`
-/

namespace A014931.P7326483992883081725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 33] fun n a =>
  32 * a (n - 1) - 256 * a (n - 2) + 1

end

end A014931.P7326483992883081725

namespace A014931

/-- `32*a(n-1)-256*a(n-2)+1` -/
def P7326483992883081725.Spec : Prop :=
  ∀ n, P7326483992883081725.a n = A014931 (n + 1)

end A014931

/-! ## A014931.P15562654110255415210

`(16^(n+1)*(15*(n+1)-1)+1)/225`
-/

namespace A014931.P15562654110255415210
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((16 ^ (n + 1) : ℤ) * ((15 * (n + 1) : ℤ) - 1) + 1 : ℚ) / 225

end

end A014931.P15562654110255415210

namespace A014931

/-- `(16^(n+1)*(15*(n+1)-1)+1)/225` -/
def P15562654110255415210.Spec : Prop :=
  ∀ n, P15562654110255415210.a n = (A014931 (n + 1) : ℚ)

theorem P15562654110255415210.correct : P15562654110255415210.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A014931, Nat.add_sub_cancel, A014931.P15562654110255415210.a, A014931.P13759528326370373619.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A014931, Nat.add_sub_cancel, A014931.P15562654110255415210.a, A014931.P13759528326370373619.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A014931

/-! ## A014931.P12017031410297020488

`or(1, ∑[(n+1)*A000079(4*n)])`
-/

namespace A014931.P12017031410297020488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000079 (4 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A014931.P12017031410297020488

namespace A014931

/-- `or(1, ∑[(n+1)*A000079(4*n)])` -/
def P12017031410297020488.Spec : Prop :=
  ∀ n, P12017031410297020488.a n = A014931 (n + 1)

end A014931

/-! ## A014931.P11846506043953745980

`2*∑[(n+1)*A011782(4*n)]-1`
-/

namespace A014931.P11846506043953745980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A011782 (4 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j) - 1

end

end A014931.P11846506043953745980

namespace A014931

/-- `2*∑[(n+1)*A011782(4*n)]-1` -/
def P11846506043953745980.Spec : Prop :=
  ∀ n, P11846506043953745980.a n = A014931 (n + 1)

end A014931

/-! ## A014931.P11553884269204792050

`∑[comp[A006257(n)]*A131577(4*n)]+1`
-/

namespace A014931.P11553884269204792050
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006257 n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n : ℤ) * A131577 (4 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A014931.P11553884269204792050

namespace A014931

/-- `∑[comp[A006257(n)]*A131577(4*n)]+1` -/
def P11553884269204792050.Spec : Prop :=
  ∀ n, P11553884269204792050.a n = A014931 (n + 1)

end A014931

/-!
# A014932: Inverse of 923rd cyclotomic polynomial.

The programs for A014932, there is no canonical definition to state claims against.
-/

/-! ## A014932.P1629124471673999023

`A015855(n)*A033999(n)`
-/

namespace A014932.P1629124471673999023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015855 n * A033999 n

end

end A014932.P1629124471673999023

/-! ## A014932.P16751529655310225169

`round(8/A111204(n+1))`
-/

namespace A014932.P16751529655310225169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 / (A111204 (n + 1) : ℚ))

end

end A014932.P16751529655310225169

/-! ## A014932.P17463667110094647686

`C(A038771(n), record[A038771(n)])`
-/

namespace A014932.P17463667110094647686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038771 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A038771 n).toNat (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A014932.P17463667110094647686

/-! ## A014932.P11779059455814136198

`and(char[A307296(n)], A256598(n))`
-/

namespace A014932.P11779059455814136198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307296 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A256598 n)

end

end A014932.P11779059455814136198

/-! ## A014932.P14528420928397633643

`A121373(A326463(n+3)+1)`
-/

namespace A014932.P14528420928397633643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121373 (A326463 (n + 3) + 1).toNat

end

end A014932.P14528420928397633643

/-! ## A014932.P1207910627908556447

`2-A211668(A156262(n+5))`
-/

namespace A014932.P1207910627908556447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A211668 (A156262 (n + 5)).toNat

end

end A014932.P1207910627908556447

/-! ## A014932.P2054574357841579357

`C(2, A326541(A284934(n+1)))`
-/

namespace A014932.P2054574357841579357
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A326541 (A284934 (n + 1)).toNat).toNat

end

end A014932.P2054574357841579357

/-! ## A014932.P17196282779117036003

`A010051(A140823(n+2)-n)`
-/

namespace A014932.P17196282779117036003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A140823 (n + 2) - (n : ℤ)).toNat

end

end A014932.P17196282779117036003

/-! ## A014932.P13855661101032201336

`A004525(floor(A091942(n+1)/(n+1)))`
-/

namespace A014932.P13855661101032201336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 ⌊(A091942 (n + 1) : ℚ) / (n + 1 : ℚ)⌋.toNat

end

end A014932.P13855661101032201336

/-! ## A014932.P14828092748689731515

`floor(A276625(n+1)/A078374(n+4))`
-/

namespace A014932.P14828092748689731515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A276625 (n + 1) : ℚ) / (A078374 (n + 4) : ℚ)⌋

end

end A014932.P14828092748689731515

/-!
# A014933: Inverse of 924th cyclotomic polynomial.

The programs for A014933, there is no canonical definition to state claims against.
-/

/-! ## A014933.P18285690837341275807

`A014471(gcd(2*n, A001281(n)))`
-/

namespace A014933.P18285690837341275807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014471 (Int.gcd (2 * n : ℤ) (A001281 n))

end

end A014933.P18285690837341275807

/-!
# A014934: a(1)=1, a(n) = n*17^(n-1) + a(n-1).

The programs for A014934, the canonical program `A014934.P17999112846337091870` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014934 has offset 1).

The definition of A014934 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)*17^n+a(n-1)` (program `A014934.P17999112846337091870`, by `A014934.P17999112846337091870.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A014934.P17999112846337091870

`(n+1)*17^n+a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A014934

/-- `(n+1)*17^n+a(n-1)` -/
def P17999112846337091870.Spec : Prop :=
  ∀ n, (P17999112846337091870.a n : ℤ) = A014934 (n + 1)

theorem P17999112846337091870.correct : P17999112846337091870.Spec := by
  intro n
  simp only [A014934, Nat.add_sub_cancel]

end A014934

/-! ## A014934.P13438087006556049639

`35*a(n-1)-323*a(n-2)+289*a(n-3)` with `a(0)=1, a(1)=35, a(2)=902`
-/

namespace A014934.P13438087006556049639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 35, 902] fun n a =>
  35 * a (n - 1) - 323 * a (n - 2) + 289 * a (n - 3)

end

end A014934.P13438087006556049639

namespace A014934

/-- `35*a(n-1)-323*a(n-2)+289*a(n-3)` -/
def P13438087006556049639.Spec : Prop :=
  ∀ n, P13438087006556049639.a n = A014934 (n + 1)

end A014934

/-! ## A014934.P16231921081048701317

`((16*(n+1)-1)*17^(n+1)+1)/256`
-/

namespace A014934.P16231921081048701317
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((16 * (n + 1) : ℤ) - 1) * (17 ^ (n + 1) : ℤ) + 1 : ℚ) / 256

end

end A014934.P16231921081048701317

namespace A014934

/-- `((16*(n+1)-1)*17^(n+1)+1)/256` -/
def P16231921081048701317.Spec : Prop :=
  ∀ n, P16231921081048701317.a n = (A014934 (n + 1) : ℚ)

theorem P16231921081048701317.correct : P16231921081048701317.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A014934, Nat.add_sub_cancel, A014934.P16231921081048701317.a, A014934.P17999112846337091870.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A014934, Nat.add_sub_cancel, A014934.P16231921081048701317.a, A014934.P17999112846337091870.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A014934

/-! ## A014934.P10044094826126270933

`∑[17*a(n-1)]+17*a(n-1)` with `a(0)=1`
-/

namespace A014934.P10044094826126270933
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  17 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 17 * a (n - 1)

end

end A014934.P10044094826126270933

namespace A014934

/-- `∑[17*a(n-1)]+17*a(n-1)` -/
def P10044094826126270933.Spec : Prop :=
  ∀ n, (P10044094826126270933.a n : ℤ) = A014934 (n + 1)

end A014934

/-!
# A014935: a(1)=1, a(n) = n*18^(n-1) + a(n-1).

The programs for A014935, the canonical program `A014935.P9977671980509739876` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014935 has offset 1).

The definition of A014935 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)*18^n+a(n-1)` (program `A014935.P9977671980509739876`, by `A014935.P9977671980509739876.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A014935.P9977671980509739876

`(n+1)*18^n+a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A014935

/-- `(n+1)*18^n+a(n-1)` -/
def P9977671980509739876.Spec : Prop :=
  ∀ n, (P9977671980509739876.a n : ℤ) = A014935 (n + 1)

theorem P9977671980509739876.correct : P9977671980509739876.Spec := by
  intro n
  simp only [A014935, Nat.add_sub_cancel]

end A014935

/-! ## A014935.P18237520575076222105

`36*a(n-1)-324*a(n-2)+1` with `a(0)=1, a(1)=37`
-/

namespace A014935.P18237520575076222105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 37] fun n a =>
  36 * a (n - 1) - 324 * a (n - 2) + 1

end

end A014935.P18237520575076222105

namespace A014935

/-- `36*a(n-1)-324*a(n-2)+1` -/
def P18237520575076222105.Spec : Prop :=
  ∀ n, P18237520575076222105.a n = A014935 (n + 1)

end A014935

/-! ## A014935.P1292371016868907856

`(18^(n+1)*(17*(n+1)-1)+1)/289`
-/

namespace A014935.P1292371016868907856
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((18 ^ (n + 1) : ℤ) * ((17 * (n + 1) : ℤ) - 1) + 1 : ℚ) / 289

end

end A014935.P1292371016868907856

namespace A014935

/-- `(18^(n+1)*(17*(n+1)-1)+1)/289` -/
def P1292371016868907856.Spec : Prop :=
  ∀ n, P1292371016868907856.a n = (A014935 (n + 1) : ℚ)

theorem P1292371016868907856.correct : P1292371016868907856.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A014935, Nat.add_sub_cancel, A014935.P1292371016868907856.a, A014935.P9977671980509739876.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A014935, Nat.add_sub_cancel, A014935.P1292371016868907856.a, A014935.P9977671980509739876.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A014935

/-! ## A014935.P5218718170731356609

`∑[18*a(n-1)]+18*a(n-1)` with `a(0)=1`
-/

namespace A014935.P5218718170731356609
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  18 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 18 * a (n - 1)

end

end A014935.P5218718170731356609

namespace A014935

/-- `∑[18*a(n-1)]+18*a(n-1)` -/
def P5218718170731356609.Spec : Prop :=
  ∀ n, (P5218718170731356609.a n : ℤ) = A014935 (n + 1)

end A014935

/-! ## A014935.P16269066226951716828

`∑[A001027(n)]+18*a(n-1)` with `a(0)=1`
-/

namespace A014935.P16269066226951716828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001027 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 18 * a (n - 1)

end

end A014935.P16269066226951716828

namespace A014935

/-- `∑[A001027(n)]+18*a(n-1)` -/
def P16269066226951716828.Spec : Prop :=
  ∀ n, P16269066226951716828.a n = A014935 (n + 1)

end A014935

/-!
# A014936: a(1)=1, a(n) = n*19^(n-1) + a(n-1).

The programs for A014936, the canonical program `A014936.P16843115561130618825` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014936 has offset 1).

The definition of A014936 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)*19^n+a(n-1)` (program `A014936.P16843115561130618825`, by `A014936.P16843115561130618825.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A014936.P16843115561130618825

`(n+1)*19^n+a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A014936

/-- `(n+1)*19^n+a(n-1)` -/
def P16843115561130618825.Spec : Prop :=
  ∀ n, (P16843115561130618825.a n : ℤ) = A014936 (n + 1)

theorem P16843115561130618825.correct : P16843115561130618825.Spec := by
  intro n
  simp only [A014936, Nat.add_sub_cancel]

end A014936

/-! ## A014936.P7209371040990895745

`38*a(n-1)-361*a(n-2)+1` with `a(0)=1, a(1)=39`
-/

namespace A014936.P7209371040990895745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 39] fun n a =>
  38 * a (n - 1) - 361 * a (n - 2) + 1

end

end A014936.P7209371040990895745

namespace A014936

/-- `38*a(n-1)-361*a(n-2)+1` -/
def P7209371040990895745.Spec : Prop :=
  ∀ n, P7209371040990895745.a n = A014936 (n + 1)

end A014936

/-! ## A014936.P14957365963670716510

`(19^(n+1)*(18*(n+1)-1)+1)/324`
-/

namespace A014936.P14957365963670716510
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((19 ^ (n + 1) : ℤ) * ((18 * (n + 1) : ℤ) - 1) + 1 : ℚ) / 324

end

end A014936.P14957365963670716510

namespace A014936

/-- `(19^(n+1)*(18*(n+1)-1)+1)/324` -/
def P14957365963670716510.Spec : Prop :=
  ∀ n, P14957365963670716510.a n = (A014936 (n + 1) : ℚ)

theorem P14957365963670716510.correct : P14957365963670716510.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A014936, Nat.add_sub_cancel, A014936.P14957365963670716510.a, A014936.P16843115561130618825.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A014936, Nat.add_sub_cancel, A014936.P14957365963670716510.a, A014936.P16843115561130618825.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A014936

/-! ## A014936.P14103094424825885845

`∑[19*a(n-1)]+19*a(n-1)` with `a(0)=1`
-/

namespace A014936.P14103094424825885845
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  19 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 19 * a (n - 1)

end

end A014936.P14103094424825885845

namespace A014936

/-- `∑[19*a(n-1)]+19*a(n-1)` -/
def P14103094424825885845.Spec : Prop :=
  ∀ n, (P14103094424825885845.a n : ℤ) = A014936 (n + 1)

end A014936

/-!
# A014937: a(1)=1, a(n) = n*20^(n-1) + a(n-1).

The programs for A014937, the canonical program `A014937.P5675298129468374492` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014937 has offset 1).

The definition of A014937 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)*20^n+a(n-1)` (program `A014937.P5675298129468374492`, by `A014937.P5675298129468374492.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A014937.P5675298129468374492

`(n+1)*20^n+a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A014937

/-- `(n+1)*20^n+a(n-1)` -/
def P5675298129468374492.Spec : Prop :=
  ∀ n, (P5675298129468374492.a n : ℤ) = A014937 (n + 1)

theorem P5675298129468374492.correct : P5675298129468374492.Spec := by
  intro n
  simp only [A014937, Nat.add_sub_cancel]

end A014937

/-! ## A014937.P12387129065583513494

`40*a(n-1)-400*a(n-2)+1` with `a(0)=1, a(1)=41`
-/

namespace A014937.P12387129065583513494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 41] fun n a =>
  40 * a (n - 1) - 400 * a (n - 2) + 1

end

end A014937.P12387129065583513494

namespace A014937

/-- `40*a(n-1)-400*a(n-2)+1` -/
def P12387129065583513494.Spec : Prop :=
  ∀ n, P12387129065583513494.a n = A014937 (n + 1)

end A014937

/-! ## A014937.P2880146277002863241

`(20^(n+1)*(19*(n+1)-1)+1)/361`
-/

namespace A014937.P2880146277002863241
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((20 ^ (n + 1) : ℤ) * ((19 * (n + 1) : ℤ) - 1) + 1 : ℚ) / 361

end

end A014937.P2880146277002863241

namespace A014937

/-- `(20^(n+1)*(19*(n+1)-1)+1)/361` -/
def P2880146277002863241.Spec : Prop :=
  ∀ n, P2880146277002863241.a n = (A014937 (n + 1) : ℚ)

theorem P2880146277002863241.correct : P2880146277002863241.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A014937, Nat.add_sub_cancel, A014937.P2880146277002863241.a, A014937.P5675298129468374492.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A014937, Nat.add_sub_cancel, A014937.P2880146277002863241.a, A014937.P5675298129468374492.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A014937

/-! ## A014937.P811661337465828729

`or(1, ∑[A061650(n+1)])`
-/

namespace A014937.P811661337465828729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061650 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A014937.P811661337465828729

namespace A014937

/-- `or(1, ∑[A061650(n+1)])` -/
def P811661337465828729.Spec : Prop :=
  ∀ n, P811661337465828729.a n = A014937 (n + 1)

end A014937

/-! ## A014937.P270497278923077113

`lcm(∑[A061650(n+1)], A033999(n))`
-/

namespace A014937.P270497278923077113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061650 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (∑ j ∈ Finset.range (n + 1), f1 j) (A033999 n)

end

end A014937.P270497278923077113

namespace A014937

/-- `lcm(∑[A061650(n+1)], A033999(n))` -/
def P270497278923077113.Spec : Prop :=
  ∀ n, (P270497278923077113.a n : ℤ) = A014937 (n + 1)

end A014937

/-! ## A014937.P3879752761419423251

`∑[A061650(n+1)]*A001055(A006530(n+1))`
-/

namespace A014937.P3879752761419423251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061650 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A001055 (A006530 (n + 1)).toNat

end

end A014937.P3879752761419423251

namespace A014937

/-- `∑[A061650(n+1)]*A001055(A006530(n+1))` -/
def P3879752761419423251.Spec : Prop :=
  ∀ n, P3879752761419423251.a n = A014937 (n + 1)

end A014937

/-! ## A014937.P3167371525492944511

`(A000005(A014963(n+1))-1)!*∑[A061650(n+1)]`
-/

namespace A014937.P3167371525492944511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061650 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A000005 (A014963 (n + 1)).toNat - 1).toNat : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A014937.P3167371525492944511

namespace A014937

/-- `(A000005(A014963(n+1))-1)!*∑[A061650(n+1)]` -/
def P3167371525492944511.Spec : Prop :=
  ∀ n, P3167371525492944511.a n = A014937 (n + 1)

end A014937

/-!
# A014938: a(1)=1, a(n) = n*21^(n-1) + a(n-1).

The programs for A014938, the canonical program `A014938.P13238858108974149183` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014938 has offset 1).

The definition of A014938 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)*21^n+a(n-1)` (program `A014938.P13238858108974149183`, by `A014938.P13238858108974149183.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A014938.P13238858108974149183

`(n+1)*21^n+a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A014938

/-- `(n+1)*21^n+a(n-1)` -/
def P13238858108974149183.Spec : Prop :=
  ∀ n, (P13238858108974149183.a n : ℤ) = A014938 (n + 1)

theorem P13238858108974149183.correct : P13238858108974149183.Spec := by
  intro n
  simp only [A014938, Nat.add_sub_cancel]

end A014938

/-! ## A014938.P13855703675100069012

`42*a(n-1)-441*a(n-2)+1` with `a(0)=1, a(1)=43`
-/

namespace A014938.P13855703675100069012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 43] fun n a =>
  42 * a (n - 1) - 441 * a (n - 2) + 1

end

end A014938.P13855703675100069012

namespace A014938

/-- `42*a(n-1)-441*a(n-2)+1` -/
def P13855703675100069012.Spec : Prop :=
  ∀ n, P13855703675100069012.a n = A014938 (n + 1)

end A014938

/-! ## A014938.P12431489551057990989

`(21^(n+1)*(20*(n+1)-1)+1)/400`
-/

namespace A014938.P12431489551057990989
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((21 ^ (n + 1) : ℤ) * ((20 * (n + 1) : ℤ) - 1) + 1 : ℚ) / 400

end

end A014938.P12431489551057990989

namespace A014938

/-- `(21^(n+1)*(20*(n+1)-1)+1)/400` -/
def P12431489551057990989.Spec : Prop :=
  ∀ n, P12431489551057990989.a n = (A014938 (n + 1) : ℚ)

theorem P12431489551057990989.correct : P12431489551057990989.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A014938, Nat.add_sub_cancel, A014938.P12431489551057990989.a, A014938.P13238858108974149183.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A014938, Nat.add_sub_cancel, A014938.P12431489551057990989.a, A014938.P13238858108974149183.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A014938

/-! ## A014938.P5440860547152539402

`∑[21*a(n-1)]+21*a(n-1)` with `a(0)=1`
-/

namespace A014938.P5440860547152539402
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  21 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 21 * a (n - 1)

end

end A014938.P5440860547152539402

namespace A014938

/-- `∑[21*a(n-1)]+21*a(n-1)` -/
def P5440860547152539402.Spec : Prop :=
  ∀ n, (P5440860547152539402.a n : ℤ) = A014938 (n + 1)

end A014938

/-!
# A014939: Inverse of 930th cyclotomic polynomial.

The programs for A014939, there is no canonical definition to state claims against.
-/

/-! ## A014939.P12334927245907744186

`A014474(n)*A033999(n)`
-/

namespace A014939.P12334927245907744186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014474 n * A033999 n

end

end A014939.P12334927245907744186

/-!
# A014940: a(1)=1, a(n) = n*22^(n-1) + a(n-1).

The programs for A014940, the canonical program `A014940.P5377746581735965324` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014940 has offset 1).

The definition of A014940 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)*22^n+a(n-1)` (program `A014940.P5377746581735965324`, by `A014940.P5377746581735965324.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A014940.P5377746581735965324

`(n+1)*22^n+a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A014940

/-- `(n+1)*22^n+a(n-1)` -/
def P5377746581735965324.Spec : Prop :=
  ∀ n, (P5377746581735965324.a n : ℤ) = A014940 (n + 1)

theorem P5377746581735965324.correct : P5377746581735965324.Spec := by
  intro n
  simp only [A014940, Nat.add_sub_cancel]

end A014940

/-! ## A014940.P6410173870764086919

`44*a(n-1)-484*a(n-2)+1` with `a(0)=1, a(1)=45`
-/

namespace A014940.P6410173870764086919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 45] fun n a =>
  44 * a (n - 1) - 484 * a (n - 2) + 1

end

end A014940.P6410173870764086919

namespace A014940

/-- `44*a(n-1)-484*a(n-2)+1` -/
def P6410173870764086919.Spec : Prop :=
  ∀ n, P6410173870764086919.a n = A014940 (n + 1)

end A014940

/-! ## A014940.P10977913976776063632

`(22^(n+1)*(21*(n+1)-1)+1)/441`
-/

namespace A014940.P10977913976776063632
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((22 ^ (n + 1) : ℤ) * ((21 * (n + 1) : ℤ) - 1) + 1 : ℚ) / 441

end

end A014940.P10977913976776063632

namespace A014940

/-- `(22^(n+1)*(21*(n+1)-1)+1)/441` -/
def P10977913976776063632.Spec : Prop :=
  ∀ n, P10977913976776063632.a n = (A014940 (n + 1) : ℚ)

theorem P10977913976776063632.correct : P10977913976776063632.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A014940, Nat.add_sub_cancel, A014940.P10977913976776063632.a, A014940.P5377746581735965324.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A014940, Nat.add_sub_cancel, A014940.P10977913976776063632.a, A014940.P5377746581735965324.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A014940

/-! ## A014940.P3262101287003764602

`∑[22*a(n-1)]+22*a(n-1)` with `a(0)=1`
-/

namespace A014940.P3262101287003764602
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  22 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 22 * a (n - 1)

end

end A014940.P3262101287003764602

namespace A014940

/-- `∑[22*a(n-1)]+22*a(n-1)` -/
def P3262101287003764602.Spec : Prop :=
  ∀ n, (P3262101287003764602.a n : ℤ) = A014940 (n + 1)

end A014940

/-!
# A014941: a(1)=1, a(n) = n*23^(n-1) + a(n-1).

The programs for A014941, the canonical program `A014941.P350359841862336919` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014941 has offset 1).

The definition of A014941 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)*23^n+a(n-1)` (program `A014941.P350359841862336919`, by `A014941.P350359841862336919.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A014941.P350359841862336919

`(n+1)*23^n+a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A014941

/-- `(n+1)*23^n+a(n-1)` -/
def P350359841862336919.Spec : Prop :=
  ∀ n, (P350359841862336919.a n : ℤ) = A014941 (n + 1)

theorem P350359841862336919.correct : P350359841862336919.Spec := by
  intro n
  simp only [A014941, Nat.add_sub_cancel]

end A014941

/-! ## A014941.P2121512982473722082

`46*a(n-1)-529*a(n-2)+1` with `a(0)=1, a(1)=47`
-/

namespace A014941.P2121512982473722082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 47] fun n a =>
  46 * a (n - 1) - 529 * a (n - 2) + 1

end

end A014941.P2121512982473722082

namespace A014941

/-- `46*a(n-1)-529*a(n-2)+1` -/
def P2121512982473722082.Spec : Prop :=
  ∀ n, P2121512982473722082.a n = A014941 (n + 1)

end A014941

/-! ## A014941.P14343257990089618361

`(23^(n+1)*(22*(n+1)-1)+1)/484`
-/

namespace A014941.P14343257990089618361
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((23 ^ (n + 1) : ℤ) * ((22 * (n + 1) : ℤ) - 1) + 1 : ℚ) / 484

end

end A014941.P14343257990089618361

namespace A014941

/-- `(23^(n+1)*(22*(n+1)-1)+1)/484` -/
def P14343257990089618361.Spec : Prop :=
  ∀ n, P14343257990089618361.a n = (A014941 (n + 1) : ℚ)

theorem P14343257990089618361.correct : P14343257990089618361.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A014941, Nat.add_sub_cancel, A014941.P14343257990089618361.a, A014941.P350359841862336919.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A014941, Nat.add_sub_cancel, A014941.P14343257990089618361.a, A014941.P350359841862336919.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A014941

/-! ## A014941.P526532523785847304

`∑[23*a(n-1)]+23*a(n-1)` with `a(0)=1`
-/

namespace A014941.P526532523785847304
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  23 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 23 * a (n - 1)

end

end A014941.P526532523785847304

namespace A014941

/-- `∑[23*a(n-1)]+23*a(n-1)` -/
def P526532523785847304.Spec : Prop :=
  ∀ n, (P526532523785847304.a n : ℤ) = A014941 (n + 1)

end A014941

/-!
# A014942: a(n) = (1 + 24^n*(23*n - 1))/529.

The programs for A014942, the canonical program `A014942.P419489120059905238` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014942 has offset 1).

The definition of A014942 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A014942.P3006405348292066357

`a(n-1)+(n+1)*24^n` with `a(0)=1`
-/

namespace A014942.P3006405348292066357
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (n + 1) * 24 ^ n

end

end A014942.P3006405348292066357

namespace A014942

/-- `a(n-1)+(n+1)*24^n` -/
def P3006405348292066357.Spec : Prop :=
  ∀ n, (P3006405348292066357.a n : ℤ) = A014942 (n + 1)

end A014942

/-! ## A014942.P419489120059905238

`48*a(n-1)-576*a(n-2)+1` with `a(0)=1, a(1)=49`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A014942

/-- `48*a(n-1)-576*a(n-2)+1` -/
def P419489120059905238.Spec : Prop :=
  ∀ n, P419489120059905238.a n = A014942 (n + 1)

theorem P419489120059905238.correct : P419489120059905238.Spec := by
  intro n
  simp only [A014942, Nat.add_sub_cancel]

end A014942

/-! ## A014942.P117778475269445012

`∑[(n+1)*24^n]`
-/

namespace A014942.P117778475269445012
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * 24 ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014942.P117778475269445012

namespace A014942

/-- `∑[(n+1)*24^n]` -/
def P117778475269445012.Spec : Prop :=
  ∀ n, (P117778475269445012.a n : ℤ) = A014942 (n + 1)

end A014942

/-! ## A014942.P4609670925070359347

`∑[24*a(n-1)]+24*a(n-1)` with `a(0)=1`
-/

namespace A014942.P4609670925070359347
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  24 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 24 * a (n - 1)

end

end A014942.P4609670925070359347

namespace A014942

/-- `∑[24*a(n-1)]+24*a(n-1)` -/
def P4609670925070359347.Spec : Prop :=
  ∀ n, (P4609670925070359347.a n : ℤ) = A014942 (n + 1)

end A014942

/-! ## A014942.P4385886812574596654

`A218727(3*(n+1))²%A009968(n+1)`
-/

namespace A014942.P4385886812574596654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A218727 (3 * (n + 1)) ^ 2) (A009968 (n + 1))

end

end A014942.P4385886812574596654

namespace A014942

/-- `A218727(3*(n+1))²%A009968(n+1)` -/
def P4385886812574596654.Spec : Prop :=
  ∀ n, P4385886812574596654.a n = A014942 (n + 1)

end A014942

/-!
# A014943: a(1)=1, a(n) = n*25^(n-1) + a(n-1).

The programs for A014943, the canonical program `A014943.P1442789012947507868` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014943 has offset 1).

The definition of A014943 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)*25^n+a(n-1)` (program `A014943.P1442789012947507868`, by `A014943.P1442789012947507868.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A014943.P1442789012947507868

`(n+1)*25^n+a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A014943

/-- `(n+1)*25^n+a(n-1)` -/
def P1442789012947507868.Spec : Prop :=
  ∀ n, (P1442789012947507868.a n : ℤ) = A014943 (n + 1)

theorem P1442789012947507868.correct : P1442789012947507868.Spec := by
  intro n
  simp only [A014943, Nat.add_sub_cancel]

end A014943

/-! ## A014943.P5307681781976705817

`50*a(n-1)-625*a(n-2)+1` with `a(0)=1, a(1)=51`
-/

namespace A014943.P5307681781976705817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 51] fun n a =>
  50 * a (n - 1) - 625 * a (n - 2) + 1

end

end A014943.P5307681781976705817

namespace A014943

/-- `50*a(n-1)-625*a(n-2)+1` -/
def P5307681781976705817.Spec : Prop :=
  ∀ n, P5307681781976705817.a n = A014943 (n + 1)

end A014943

/-! ## A014943.P18271734988032891850

`∑[(n+1)*25^n]`
-/

namespace A014943.P18271734988032891850
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * 25 ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014943.P18271734988032891850

namespace A014943

/-- `∑[(n+1)*25^n]` -/
def P18271734988032891850.Spec : Prop :=
  ∀ n, (P18271734988032891850.a n : ℤ) = A014943 (n + 1)

end A014943

/-! ## A014943.P9620003140597844442

`∑[25*a(n-1)]+25*a(n-1)` with `a(0)=1`
-/

namespace A014943.P9620003140597844442
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  25 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 25 * a (n - 1)

end

end A014943.P9620003140597844442

namespace A014943

/-- `∑[25*a(n-1)]+25*a(n-1)` -/
def P9620003140597844442.Spec : Prop :=
  ∀ n, (P9620003140597844442.a n : ℤ) = A014943 (n + 1)

end A014943

/-! ## A014943.P17769173584404215167

`∑[A159727(2*(n+1))]/8`
-/

namespace A014943.P17769173584404215167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159727 (2 * (n + 1))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 8

end

end A014943.P17769173584404215167

namespace A014943

/-- `∑[A159727(2*(n+1))]/8` -/
def P17769173584404215167.Spec : Prop :=
  ∀ n, P17769173584404215167.a n = (A014943 (n + 1) : ℚ)

end A014943

/-! ## A014943.P8589865798414237175

`∑[A053464(2*(n+1))]/10`
-/

namespace A014943.P8589865798414237175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053464 (2 * (n + 1))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 10

end

end A014943.P8589865798414237175

namespace A014943

/-- `∑[A053464(2*(n+1))]/10` -/
def P8589865798414237175.Spec : Prop :=
  ∀ n, P8589865798414237175.a n = (A014943 (n + 1) : ℚ)

end A014943

/-!
# A014944: Inverse of 935th cyclotomic polynomial.

The programs for A014944, there is no canonical definition to state claims against.
-/

/-! ## A014944.P2025269411753056044

`A015879(n)*A033999(n)`
-/

namespace A014944.P2025269411753056044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015879 n * A033999 n

end

end A014944.P2025269411753056044

/-! ## A014944.P7306620939301602554

`Δ[A040925(∑[A340637(n+1)])]`
-/

namespace A014944.P7306620939301602554
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340637 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040925 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A014944.P7306620939301602554

/-! ## A014944.P13594192703446283877

`A010815(A002858(3*n+2)*A070682(3*n+2))`
-/

namespace A014944.P13594192703446283877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010815 (A002858 (3 * n + 2) * A070682 (3 * n + 2)).toNat

end

end A014944.P13594192703446283877

/-! ## A014944.P13573120474892289090

`Δ[A000002(A395489(n))]`
-/

namespace A014944.P13573120474892289090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000002 (A395489 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A014944.P13573120474892289090

/-! ## A014944.P17597399363439644593

`Δ[A178602(ceil(A277710(n+1)/2))]`
-/

namespace A014944.P17597399363439644593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178602 ⌈(A277710 (n + 1) : ℚ) / 2⌉.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A014944.P17597399363439644593

/-!
# A014945: Numbers k such that k divides 4^k - 1.

The programs for A014945, there is no canonical definition to state claims against.
-/

/-! ## A014945.P45891457582854615

`A014741(n+2)/2`
-/

namespace A014945.P45891457582854615
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014741 (n + 2) : ℚ) / 2

end

end A014945.P45891457582854615

/-! ## A014945.P12847094075269126006

`a(n-1)*ratio[A014741(n+1)]` with `a(0)=1`
-/

namespace A014945.P12847094075269126006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014741 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * ((f1 (n + 1) : ℚ) / (f1 n : ℚ))

end

end A014945.P12847094075269126006

/-! ## A014945.P16552323595989848170

`∑[A273943(Δ[A014741(n+1)])]`
-/

namespace A014945.P16552323595989848170
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014741 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014945.P16552323595989848170

/-! ## A014945.P8445794666134702722

`∑[A302042(Δ[A014741(n+1)])]`
-/

namespace A014945.P8445794666134702722
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014741 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302042 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014945.P8445794666134702722

/-! ## A014945.P5243068399107255941

`∩[A014851(n+1), A125227(n+3)]`
-/

namespace A014945.P5243068399107255941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014851 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125227 (n + 3)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A014945.P5243068399107255941

/-! ## A014945.P944827359027405258

`∩[A014957(n+1), A125227(n+3)]`
-/

namespace A014945.P944827359027405258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014957 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125227 (n + 3)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A014945.P944827359027405258

/-! ## A014945.P17444503928380118350

`∑[A302032(Δ[A014741(n+1)])]`
-/

namespace A014945.P17444503928380118350
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014741 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302032 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014945.P17444503928380118350

/-! ## A014945.P10584574564693821091

`∩[A014866(n+1), A125227(n+3)]`
-/

namespace A014945.P10584574564693821091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014866 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125227 (n + 3)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A014945.P10584574564693821091

/-! ## A014945.P16331065115894831524

`∩[A014851(n+1), A014957(n+1)]`
-/

namespace A014945.P16331065115894831524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014851 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014957 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A014945.P16331065115894831524

/-! ## A014945.P5380991741581874645

`∑[A038572(Δ[A014741(n+1)])]`
-/

namespace A014945.P5380991741581874645
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014741 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038572 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014945.P5380991741581874645

/-! ## A014945.P10257858528940942421

`∑[A185048(Δ[A014741(n+1)])]`
-/

namespace A014945.P10257858528940942421
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014741 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185048 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014945.P10257858528940942421

/-!
# A014946: Numbers k that divide 6^k-1.

The programs for A014946, there is no canonical definition to state claims against.
-/

/-! ## A014946.P16677278162557620946

`A333432(A052905(n+3))`
-/

namespace A014946.P16677278162557620946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333432 (A052905 (n + 3)).toNat

end

end A014946.P16677278162557620946

/-! ## A014946.P6075833245428033409

`A333432(A302537(n)+15)`
-/

namespace A014946.P6075833245428033409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333432 (A302537 n + 15).toNat

end

end A014946.P6075833245428033409

/-! ## A014946.P1875746923978479524

`A333432(A056119(n)+16)`
-/

namespace A014946.P1875746923978479524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333432 (A056119 n + 16).toNat

end

end A014946.P1875746923978479524

/-! ## A014946.P6455347122327659063

`A333432(eq[5, A193592(n)])`
-/

namespace A014946.P6455347122327659063
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333432 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A014946.P6455347122327659063

/-! ## A014946.P10241694783426883888

`record[or(1, A333432(A052905(n)))]`
-/

namespace A014946.P10241694783426883888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A333432 (A052905 n).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A014946.P10241694783426883888

/-!
# A014947: Inverse of 938th cyclotomic polynomial.

The programs for A014947, there is no canonical definition to state claims against.
-/

/-! ## A014947.P2441680912611064089

`A015885(2*n)`
-/

namespace A014947.P2441680912611064089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015885 (2 * n)

end

end A014947.P2441680912611064089

/-! ## A014947.P7131307378679277810

`(-1)^n*A014478(n)`
-/

namespace A014947.P7131307378679277810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A014478 n

end

end A014947.P7131307378679277810

/-!
# A014948: Numbers k such that k divides s(k), where s(1)=1, s(j)= s(j-1) + j*7^(j-1).

The programs for A014948, there is no canonical definition to state claims against.
-/

/-! ## A014948.P17535020397045286433

`record[A000265(A067947(n+1))]`
-/

namespace A014948.P17535020397045286433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A067947 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A014948.P17535020397045286433

/-! ## A014948.P16530551801473722754

`filter[A067947(n+1), A374134(#)]`
-/

namespace A014948.P16530551801473722754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067947 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374134 (f1 j).toNat = 1) n)

end

end A014948.P16530551801473722754

/-! ## A014948.P7682036275275669385

`filter[A067947(n+1), A356172(#)]`
-/

namespace A014948.P7682036275275669385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067947 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A356172 (f1 j).toNat = 1) n)

end

end A014948.P7682036275275669385

/-! ## A014948.P4435300367859448735

`∩[A026139(n+1), A067947(n+1)]`
-/

namespace A014948.P4435300367859448735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067947 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A014948.P4435300367859448735

/-! ## A014948.P11951070130147171383

`record[A302044(2*A067947(n+1))]`
-/

namespace A014948.P11951070130147171383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302044 (2 * A067947 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A014948.P11951070130147171383

/-!
# A014949: Numbers k that divide 8^k - 1.

The programs for A014949, there is no canonical definition to state claims against.
-/

/-! ## A014949.P15733322467717065175

`A333432(eq[7, A193592(n)])`
-/

namespace A014949.P15733322467717065175
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333432 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A014949.P15733322467717065175

/-! ## A014949.P12409306397639958686

`A333432(A000217(n+8)-7)`
-/

namespace A014949.P12409306397639958686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333432 (A000217 (n + 8) - 7).toNat

end

end A014949.P12409306397639958686

/-! ## A014949.P5818131199773241000

`A333432(A000124(n+8)-8)`
-/

namespace A014949.P5818131199773241000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333432 (A000124 (n + 8) - 8).toNat

end

end A014949.P5818131199773241000

/-! ## A014949.P3627387767528312088

`A333432(eq[12, A185782(n+1)])`
-/

namespace A014949.P3627387767528312088
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333432 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A014949.P3627387767528312088

/-! ## A014949.P1122518803222614840

`A333432(A056115(n+4)-(n+1))`
-/

namespace A014949.P1122518803222614840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333432 (A056115 (n + 4) - (n + 1 : ℤ)).toNat

end

end A014949.P1122518803222614840

/-!
# A014950: Numbers m such that m divides 10^m - 1.

The programs for A014950, there is no canonical definition to state claims against.
-/

/-! ## A014950.P4094678399658932646

`filter[A014822(n+1), A353816(#)]`
-/

namespace A014950.P4094678399658932646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014822 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353816 (f1 j).toNat = 1) n)

end

end A014950.P4094678399658932646

/-! ## A014950.P8879920097719310464

`A333432(eq[9, A193592(n)])`
-/

namespace A014950.P8879920097719310464
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333432 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A014950.P8879920097719310464

/-! ## A014950.P16140653664898786780

`A333432(A052905(n+7)-4)`
-/

namespace A014950.P16140653664898786780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333432 (A052905 (n + 7) - 4).toNat

end

end A014950.P16140653664898786780

/-! ## A014950.P474463192090825612

`A333432(A000096(n+9)-8)`
-/

namespace A014950.P474463192090825612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333432 (A000096 (n + 9) - 8).toNat

end

end A014950.P474463192090825612

/-! ## A014950.P4928215961014521369

`A333432(A000124(n+10)-10)`
-/

namespace A014950.P4928215961014521369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333432 (A000124 (n + 10) - 10).toNat

end

end A014950.P4928215961014521369

/-!
# A014951: Positive integers k such that k divides 12^k - 1.

The programs for A014951, there is no canonical definition to state claims against.
-/

/-! ## A014951.P2502870905135427097

`A333432(eq[11, A193592(n)])`
-/

namespace A014951.P2502870905135427097
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333432 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A014951.P2502870905135427097

/-! ## A014951.P15521337962941458184

`A333432(eq[12, A219347(n)])`
-/

namespace A014951.P15521337962941458184
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333432 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A014951.P15521337962941458184

/-! ## A014951.P18353552113533838158

`A228440(record[A182576(n)+1])`
-/

namespace A014951.P18353552113533838158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182576 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228440 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A014951.P18353552113533838158

/-! ## A014951.P6731540556443799558

`A228440(comp[11-A001020(n)])`
-/

namespace A014951.P6731540556443799558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  11 - A001020 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228440 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A014951.P6731540556443799558

/-! ## A014951.P17151336456985364656

`A228440(comp[11-A165832(n+1)])`
-/

namespace A014951.P17151336456985364656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  11 - A165832 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228440 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A014951.P17151336456985364656

/-!
# A014952: Inverse of 943rd cyclotomic polynomial.

The programs for A014952, there is no canonical definition to state claims against.
-/

/-! ## A014952.P7184997439232123984

`A015895(n)*A033999(n)`
-/

namespace A014952.P7184997439232123984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015895 n * A033999 n

end

end A014952.P7184997439232123984

/-! ## A014952.P3378046752004695426

`A016192(round(sqrt(A334227(n)))+n+3)`
-/

namespace A014952.P3378046752004695426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016192 (SequenceMachineLib.roundAway (Real.sqrt (A334227 n : ℝ)) + (n + 3 : ℤ)).toNat

end

end A014952.P3378046752004695426

/-! ## A014952.P11892622338669708045

`A090192(A135661(n+1)%A365312(n+3))`
-/

namespace A014952.P11892622338669708045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090192 (Int.tmod (A135661 (n + 1)) (A365312 (n + 3))).toNat

end

end A014952.P11892622338669708045

/-! ## A014952.P18422473588886123651

`A090192(A135661(n+1))%A291636(n+2)`
-/

namespace A014952.P18422473588886123651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A090192 (A135661 (n + 1)).toNat) (A291636 (n + 2))

end

end A014952.P18422473588886123651

/-! ## A014952.P9005516519792813560

`A015198(A086674(n+2))`
-/

namespace A014952.P9005516519792813560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015198 (A086674 (n + 2)).toNat

end

end A014952.P9005516519792813560

/-!
# A014953: Numbers k such that k divides s(k), where s(1)=1, s(j) = s(j-1) + j*13^(j-1).

The programs for A014953, there is no canonical definition to state claims against.
-/

/-! ## A014953.P7363407919172968586

`∩[A116621(n+1), A251535(n)]`
-/

namespace A014953.P7363407919172968586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116621 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251535 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A014953.P7363407919172968586

/-! ## A014953.P11386534409740236003

`∩[A116621(n+1), A364614(n+1)]`
-/

namespace A014953.P11386534409740236003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116621 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364614 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A014953.P11386534409740236003

/-! ## A014953.P1068014485253605857

`∩[A066207(n+1), A116621(n+1)]`
-/

namespace A014953.P1068014485253605857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066207 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116621 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A014953.P1068014485253605857

/-! ## A014953.P16183323065564576221

`∩[A116621(n+1), A225495(n+1)]`
-/

namespace A014953.P16183323065564576221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116621 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225495 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A014953.P16183323065564576221

/-! ## A014953.P5088257465759017976

`∩[A116621(n+1), A266836(n+1)]`
-/

namespace A014953.P5088257465759017976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116621 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266836 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A014953.P5088257465759017976

/-!
# A014954: Inverse of 945th cyclotomic polynomial.

The programs for A014954, there is no canonical definition to state claims against.
-/

/-! ## A014954.P3103598422377774817

`A014324(gcd(n, record[n%or(3, n)]))`
-/

namespace A014954.P3103598422377774817
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % Nat.lor 3 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014324 (Nat.gcd n (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)))

end

end A014954.P3103598422377774817

/-!
# A014955: Inverse of 946th cyclotomic polynomial.

The programs for A014955, there is no canonical definition to state claims against.
-/

/-! ## A014955.P14009357999948678684

`A015901(2*n)`
-/

namespace A014955.P14009357999948678684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015901 (2 * n)

end

end A014955.P14009357999948678684

/-! ## A014955.P2041840242523278602

`A014482(n)*A033999(n)`
-/

namespace A014955.P2041840242523278602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014482 n * A033999 n

end

end A014955.P2041840242523278602

/-! ## A014955.P2200668839055239414

`A015043(A175427(n+1))`
-/

namespace A014955.P2200668839055239414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015043 (A175427 (n + 1)).toNat

end

end A014955.P2200668839055239414

/-!
# A014956: Positive integers k such that k divides 14^k - 1.

The programs for A014956, there is no canonical definition to state claims against.
-/

/-! ## A014956.P2217708499881084972

`A333432(eq[13, A193592(n)])`
-/

namespace A014956.P2217708499881084972
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333432 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A014956.P2217708499881084972

/-!
# A014957: Positive integers k that divide 16^k - 1.

The programs for A014957, the canonical program `A014957.P10597532944830016708` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014957 has offset 1).

The definition of A014957 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 810 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A014957.P10597532944830016708

`record[A000265(A014866(n+1))]`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A014957

/-- `record[A000265(A014866(n+1))]` -/
def P10597532944830016708.Spec : Prop :=
  ∀ n, P10597532944830016708.a n = A014957 (n + 1)

theorem P10597532944830016708.correct : P10597532944830016708.Spec := by
  intro n
  simp only [A014957, Nat.add_sub_cancel]

end A014957

/-! ## A014957.P2882647820856678437

`record[A302044(A014851(n+1))]`
-/

namespace A014957.P2882647820856678437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302044 (A014851 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A014957.P2882647820856678437

namespace A014957

/-- `record[A302044(A014851(n+1))]` -/
def P2882647820856678437.Spec : Prop :=
  ∀ n, P2882647820856678437.a n = A014957 (n + 1)

end A014957

/-! ## A014957.P13963916881224419025

`record[A302044(2*A014866(n+1))]`
-/

namespace A014957.P13963916881224419025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302044 (2 * A014866 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A014957.P13963916881224419025

namespace A014957

/-- `record[A302044(2*A014866(n+1))]` -/
def P13963916881224419025.Spec : Prop :=
  ∀ n, P13963916881224419025.a n = A014957 (n + 1)

end A014957

/-! ## A014957.P3784182379281988378

`record[A302044(A014866(n+1)+A014866(n+1))]`
-/

namespace A014957.P3784182379281988378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302044 (A014866 (n + 1) + A014866 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A014957.P3784182379281988378

namespace A014957

/-- `record[A302044(A014866(n+1)+A014866(n+1))]` -/
def P3784182379281988378.Spec : Prop :=
  ∀ n, P3784182379281988378.a n = A014957 (n + 1)

end A014957

/-! ## A014957.P1535625294040975255

`∩[A014866(n+1), A204458(n+1)]`
-/

namespace A014957.P1535625294040975255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014866 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204458 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A014957.P1535625294040975255

namespace A014957

/-- `∩[A014866(n+1), A204458(n+1)]` -/
def P1535625294040975255.Spec : Prop :=
  ∀ n, (P1535625294040975255.a n : ℤ) = A014957 (n + 1)

end A014957

/-! ## A014957.P6540401505270708090

`∩[A014866(n+1), A004273(n)]`
-/

namespace A014957.P6540401505270708090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014866 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A014957.P6540401505270708090

namespace A014957

/-- `∩[A014866(n+1), A004273(n)]` -/
def P6540401505270708090.Spec : Prop :=
  ∀ n, (P6540401505270708090.a n : ℤ) = A014957 (n + 1)

end A014957

/-! ## A014957.P18288913620705270611

`∩[A014866(n+1), A060747(n)]`
-/

namespace A014957.P18288913620705270611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014866 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060747 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A014957.P18288913620705270611

namespace A014957

/-- `∩[A014866(n+1), A060747(n)]` -/
def P18288913620705270611.Spec : Prop :=
  ∀ n, (P18288913620705270611.a n : ℤ) = A014957 (n + 1)

end A014957

/-! ## A014957.P12975428570009183907

`filter[A014866(n+1), A000035(#)]`
-/

namespace A014957.P12975428570009183907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014866 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A014957.P12975428570009183907

namespace A014957

/-- `filter[A014866(n+1), A000035(#)]` -/
def P12975428570009183907.Spec : Prop :=
  ∀ n, P12975428570009183907.a n = A014957 (n + 1)

end A014957

/-! ## A014957.P12198068741022245892

`record[A029579(A014866(n+1)%A067946(n+1))]`
-/

namespace A014957.P12198068741022245892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029579 (Int.tmod (A014866 (n + 1)) (A067946 (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A014957.P12198068741022245892

namespace A014957

/-- `record[A029579(A014866(n+1)%A067946(n+1))]` -/
def P12198068741022245892.Spec : Prop :=
  ∀ n, P12198068741022245892.a n = A014957 (n + 1)

end A014957

/-!
# A014958: Inverse of 949th cyclotomic polynomial.

The programs for A014958, there is no canonical definition to state claims against.
-/

/-! ## A014958.P15316692279593427347

`A014971(A005811(n))*A015907(n)`
-/

namespace A014958.P15316692279593427347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014971 (A005811 n).toNat * A015907 n

end

end A014958.P15316692279593427347

/-! ## A014958.P1307406510927379849

`A359820(floor(sqrt(n)+1/2)!)`
-/

namespace A014958.P1307406510927379849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359820 (Nat.factorial ⌊Real.sqrt (n : ℝ) + ((1 : ℚ) / 2 : ℝ)⌋.toNat)

end

end A014958.P1307406510927379849

/-! ## A014958.P6161552408821434964

`A102460(A345166(n)+3)`
-/

namespace A014958.P6161552408821434964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102460 (A345166 n + 3).toNat

end

end A014958.P6161552408821434964

/-! ## A014958.P1817304746698997807

`A178225(3^A000194(n))`
-/

namespace A014958.P1817304746698997807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178225 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (A000194 n : ℤ))).toNat

end

end A014958.P1817304746698997807

/-! ## A014958.P13778737351785879128

`A384005(A374632(round(sqrt(n))))`
-/

namespace A014958.P13778737351785879128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384005 (A374632 (SequenceMachineLib.roundAway (Real.sqrt (n : ℝ))).toNat).toNat

end

end A014958.P13778737351785879128

/-! ## A014958.P4122749959369043935

`A010055(A000228(round(sqrt(n))+1))`
-/

namespace A014958.P4122749959369043935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010055 (A000228 (SequenceMachineLib.roundAway (Real.sqrt (n : ℝ)) + 1).toNat).toNat

end

end A014958.P4122749959369043935

/-! ## A014958.P1180794189615309370

`A019590(∏[Δ[A004709(n+1)]])`
-/

namespace A014958.P1180794189615309370
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004709 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019590 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A014958.P1180794189615309370

/-! ## A014958.P11889313723890164536

`A132138(A000032(round((n+5)/4)))`
-/

namespace A014958.P11889313723890164536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132138 (A000032 (SequenceMachineLib.roundAway ((n + 5 : ℚ) / 4)).toNat).toNat

end

end A014958.P11889313723890164536

/-! ## A014958.P6570083168332272899

`A209229(∏[A005361(2*n+1)])`
-/

namespace A014958.P6570083168332272899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209229 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A014958.P6570083168332272899

/-! ## A014958.P14282330452511964558

`A010054(A006190(floor(sqrt(n)+1/2)))`
-/

namespace A014958.P14282330452511964558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (A006190 ⌊Real.sqrt (n : ℝ) + ((1 : ℚ) / 2 : ℝ)⌋.toNat).toNat

end

end A014958.P14282330452511964558

/-!
# A014959: Integers k such that k divides 22^k - 1.

The programs for A014959, there is no canonical definition to state claims against.
-/

/-! ## A014959.P18134707970987358366

`∩[A014873(n+1), A266836(n+1)]`
-/

namespace A014959.P18134707970987358366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014873 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266836 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A014959.P18134707970987358366

/-! ## A014959.P13762000430254582578

`∩[A014873(n+1), A364614(n+1)]`
-/

namespace A014959.P13762000430254582578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014873 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364614 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A014959.P13762000430254582578

/-! ## A014959.P8485761696457237498

`∩[A003136(n+1), A014873(n+1)]`
-/

namespace A014959.P8485761696457237498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003136 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014873 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A014959.P8485761696457237498

/-! ## A014959.P3852076432260645236

`∩[A014873(n+1), A236208(n+1)]`
-/

namespace A014959.P3852076432260645236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014873 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236208 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A014959.P3852076432260645236

/-! ## A014959.P387262663834271334

`∩[A014873(n+1), A204454(n+1)]`
-/

namespace A014959.P387262663834271334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014873 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204454 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A014959.P387262663834271334

/-!
# A014960: Integers n such that n divides 24^n - 1.

The programs for A014960, there is no canonical definition to state claims against.
-/

/-! ## A014960.P7803686412524239761

`A057193(record[A112301(n+1)])`
-/

namespace A014960.P7803686412524239761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112301 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057193 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A014960.P7803686412524239761

/-! ## A014960.P852641219804086703

`A057193(A003586(n+1)*A091946(n))`
-/

namespace A014960.P852641219804086703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057193 (A003586 (n + 1) * A091946 n).toNat

end

end A014960.P852641219804086703

/-! ## A014960.P10594784556538814371

`A057193(A067947(n+1)*A091946(n))`
-/

namespace A014960.P10594784556538814371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057193 (A067947 (n + 1) * A091946 n).toNat

end

end A014960.P10594784556538814371

/-! ## A014960.P15877945033480440947

`A057193(A003586(n+1)^A091946(n))`
-/

namespace A014960.P15877945033480440947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057193 (SequenceMachineLib.roundAway ((A003586 (n + 1) : ℚ) ^ (A091946 n : ℤ))).toNat

end

end A014960.P15877945033480440947

/-!
# A014961: Inverse of 952nd cyclotomic polynomial.

The programs for A014961, there is no canonical definition to state claims against.
-/

/-! ## A014961.P5684718828642434109

`A014485(n/gcd(2, n))`
-/

namespace A014961.P5684718828642434109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014485 (SequenceMachineLib.roundAway ((n : ℚ) / (Nat.gcd 2 n : ℚ))).toNat

end

end A014961.P5684718828642434109

/-!
# A014962: Odd numbers k that divide 25^k - 1.

The programs for A014962, the canonical program `A014962.P11562702008569150727` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014962 has offset 1).

The definition of A014962 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 116 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A014962.P10034346964203054733

`filter[A014876(n+1), A011558(#)]`
-/

namespace A014962.P10034346964203054733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014876 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A011558 (f1 j).toNat = 1) n)

end

end A014962.P10034346964203054733

namespace A014962

/-- `filter[A014876(n+1), A011558(#)]` -/
def P10034346964203054733.Spec : Prop :=
  ∀ n, P10034346964203054733.a n = A014962 (n + 1)

end A014962

/-! ## A014962.P11562702008569150727

`record[A000265(A067946(n+1))]`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A014962

/-- `record[A000265(A067946(n+1))]` -/
def P11562702008569150727.Spec : Prop :=
  ∀ n, P11562702008569150727.a n = A014962 (n + 1)

theorem P11562702008569150727.correct : P11562702008569150727.Spec := by
  intro n
  simp only [A014962, Nat.add_sub_cancel]

end A014962

/-! ## A014962.P6977697326498135494

`record[A171435(A067946(n+2))]`
-/

namespace A014962.P6977697326498135494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171435 (A067946 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A014962.P6977697326498135494

namespace A014962

/-- `record[A171435(A067946(n+2))]` -/
def P6977697326498135494.Spec : Prop :=
  ∀ n, P6977697326498135494.a n = A014962 (n + 1)

end A014962

/-! ## A014962.P17835472330124624727

`record[A106621(A014876(n+1))]`
-/

namespace A014962.P17835472330124624727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106621 (A014876 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A014962.P17835472330124624727

namespace A014962

/-- `record[A106621(A014876(n+1))]` -/
def P17835472330124624727.Spec : Prop :=
  ∀ n, P17835472330124624727.a n = A014962 (n + 1)

end A014962

/-! ## A014962.P10062360541973913642

`∩[A014876(n+1), A251535(n)]`
-/

namespace A014962.P10062360541973913642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014876 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251535 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A014962.P10062360541973913642

namespace A014962

/-- `∩[A014876(n+1), A251535(n)]` -/
def P10062360541973913642.Spec : Prop :=
  ∀ n, (P10062360541973913642.a n : ℤ) = A014962 (n + 1)

end A014962

/-!
# A014963: Exponential of Mangoldt function M(n): a(n) = 1 unless n is a prime or prime power, in which case a(n) = that prime.

The programs for A014963, the canonical program `A014963.P5975177236000282614` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014963 has offset 1).

The definition of A014963 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A166140, A166142, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A014963.P17615328258165918102

`(n+1)/A048671(n+1)`
-/

namespace A014963.P17615328258165918102
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A048671 (n + 1) : ℚ)

end

end A014963.P17615328258165918102

namespace A014963

/-- `(n+1)/A048671(n+1)` -/
def P17615328258165918102.Spec : Prop :=
  ∀ n, P17615328258165918102.a n = (A014963 (n + 1) : ℚ)

end A014963

/-! ## A014963.P10625348857169402680

`A008578(1+A297109(n+1))`
-/

namespace A014963.P10625348857169402680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (1 + A297109 (n + 1)).toNat

end

end A014963.P10625348857169402680

namespace A014963

/-- `A008578(1+A297109(n+1))` -/
def P10625348857169402680.Spec : Prop :=
  ∀ n, P10625348857169402680.a n = A014963 (n + 1)

end A014963

/-! ## A014963.P5975177236000282614

`A166140(n+1)/A166142(n+1)`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A014963

/-- `A166140(n+1)/A166142(n+1)` -/
def P5975177236000282614.Spec : Prop :=
  ∀ n, P5975177236000282614.a n = (A014963 (n + 1) : ℚ)

end A014963

/-! ## A014963.P13908637084105398137

`A010055(n+1)*(A007947(n+1)-1)+1`
-/

namespace A014963.P13908637084105398137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010055 (n + 1) * (A007947 (n + 1) - 1) + 1

end

end A014963.P13908637084105398137

namespace A014963

/-- `A010055(n+1)*(A007947(n+1)-1)+1` -/
def P13908637084105398137.Spec : Prop :=
  ∀ n, P13908637084105398137.a n = A014963 (n + 1)

end A014963

/-! ## A014963.P3508735546720738750

`A003418(n+1)/A003418(n)`
-/

namespace A014963.P3508735546720738750
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003418 (n + 1) : ℚ) / (A003418 n : ℚ)

end

end A014963.P3508735546720738750

namespace A014963

/-- `A003418(n+1)/A003418(n)` -/
def P3508735546720738750.Spec : Prop :=
  ∀ n, P3508735546720738750.a n = (A014963 (n + 1) : ℚ)

end A014963

/-! ## A014963.P16228036839977053326

`ceil((n+1)/∏{p}[n+1, (n+1)/#])`
-/

namespace A014963.P16228036839977053326
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℚ) / (∏ p ∈ Nat.primeFactors (f1 n), (n + 1 : ℚ) / (p : ℚ))⌉

end

end A014963.P16228036839977053326

namespace A014963

/-- `ceil((n+1)/∏{p}[n+1, (n+1)/#])` -/
def P16228036839977053326.Spec : Prop :=
  ∀ n, P16228036839977053326.a n = A014963 (n + 1)

end A014963

/-! ## A014963.P11055410764715951226

`∑{d}[n+1, A140254(#)]`
-/

namespace A014963.P11055410764715951226
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A140254 d

end

end A014963.P11055410764715951226

namespace A014963

/-- `∑{d}[n+1, A140254(#)]` -/
def P11055410764715951226.Spec : Prop :=
  ∀ n, P11055410764715951226.a n = A014963 (n + 1)

end A014963

/-! ## A014963.P18111701077274708595

`∏{d}[A020500(n+1), #]`
-/

namespace A014963.P18111701077274708595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020500 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A014963.P18111701077274708595

namespace A014963

/-- `∏{d}[A020500(n+1), #]` -/
def P18111701077274708595.Spec : Prop :=
  ∀ n, (P18111701077274708595.a n : ℤ) = A014963 (n + 1)

end A014963

/-! ## A014963.P14787215536082867450

`∏{d}[A120007(n+1), #]`
-/

namespace A014963.P14787215536082867450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120007 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A014963.P14787215536082867450

namespace A014963

/-- `∏{d}[A120007(n+1), #]` -/
def P14787215536082867450.Spec : Prop :=
  ∀ n, (P14787215536082867450.a n : ℤ) = A014963 (n + 1)

end A014963

/-! ## A014963.P4373885757525479924

`A014973(∏{p}[n+1, #])`
-/

namespace A014963.P4373885757525479924
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014973 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A014963.P4373885757525479924

namespace A014963

/-- `A014973(∏{p}[n+1, #])` -/
def P4373885757525479924.Spec : Prop :=
  ∀ n, P4373885757525479924.a n = A014963 (n + 1)

end A014963

/-! ## A014963.P15124006436497402859

`A089026(∏{p}[n+1, #])`
-/

namespace A014963.P15124006436497402859
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089026 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A014963.P15124006436497402859

namespace A014963

/-- `A089026(∏{p}[n+1, #])` -/
def P15124006436497402859.Spec : Prop :=
  ∀ n, P15124006436497402859.a n = A014963 (n + 1)

end A014963

/-! ## A014963.P15403139535444434560

`A100994(∏{p}[n+1, #])`
-/

namespace A014963.P15403139535444434560
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100994 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A014963.P15403139535444434560

namespace A014963

/-- `A100994(∏{p}[n+1, #])` -/
def P15403139535444434560.Spec : Prop :=
  ∀ n, P15403139535444434560.a n = A014963 (n + 1)

end A014963

/-! ## A014963.P17084136964784398678

`A140580(n+1)/(n+1)`
-/

namespace A014963.P17084136964784398678
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A140580 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A014963.P17084136964784398678

namespace A014963

/-- `A140580(n+1)/(n+1)` -/
def P17084136964784398678.Spec : Prop :=
  ∀ n, P17084136964784398678.a n = (A014963 (n + 1) : ℚ)

end A014963

/-! ## A014963.P4547709359339575830

`gcd(n+1, A182936(n+1))`
-/

namespace A014963.P4547709359339575830
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A182936 (n + 1))

end

end A014963.P4547709359339575830

namespace A014963

/-- `gcd(n+1, A182936(n+1))` -/
def P4547709359339575830.Spec : Prop :=
  ∀ n, (P4547709359339575830.a n : ℤ) = A014963 (n + 1)

end A014963

/-! ## A014963.P2427726255532365896

`∏{p}[C(A053585(n+1), n), #]`
-/

namespace A014963.P2427726255532365896
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A053585 (n + 1)).toNat n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), p

end

end A014963.P2427726255532365896

namespace A014963

/-- `∏{p}[C(A053585(n+1), n), #]` -/
def P2427726255532365896.Spec : Prop :=
  ∀ n, (P2427726255532365896.a n : ℤ) = A014963 (n + 1)

end A014963

/-! ## A014963.P10445510812999679669

`(n+1)²/A140651(n+1)`
-/

namespace A014963.P10445510812999679669
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℚ) / (A140651 (n + 1) : ℚ)

end

end A014963.P10445510812999679669

namespace A014963

/-- `(n+1)²/A140651(n+1)` -/
def P10445510812999679669.Spec : Prop :=
  ∀ n, P10445510812999679669.a n = (A014963 (n + 1) : ℚ)

end A014963

/-! ## A014963.P11605418507947492055

`∏{d}[n+1, #^-A008683(#)]`
-/

namespace A014963.P11605418507947492055
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), (d : ℚ) ^ (-A008683 d : ℤ)

end

end A014963.P11605418507947492055

namespace A014963

/-- `∏{d}[n+1, #^-A008683(#)]` -/
def P11605418507947492055.Spec : Prop :=
  ∀ n, P11605418507947492055.a n = (A014963 (n + 1) : ℚ)

end A014963

/-! ## A014963.P5447643576693666750

`∏{d}[n+1, #^A008683((n+1)/#)]`
-/

namespace A014963.P5447643576693666750
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), (d : ℚ) ^ (A008683 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat : ℤ)

end

end A014963.P5447643576693666750

namespace A014963

/-- `∏{d}[n+1, #^A008683((n+1)/#)]` -/
def P5447643576693666750.Spec : Prop :=
  ∀ n, P5447643576693666750.a n = (A014963 (n + 1) : ℚ)

end A014963

/-! ## A014963.P5843456369630043258

`A014973(A007947(n+1))`
-/

namespace A014963.P5843456369630043258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014973 (A007947 (n + 1)).toNat

end

end A014963.P5843456369630043258

namespace A014963

/-- `A014973(A007947(n+1))` -/
def P5843456369630043258.Spec : Prop :=
  ∀ n, P5843456369630043258.a n = A014963 (n + 1)

end A014963

/-! ## A014963.P16537883421512829311

`A028310(A020500(n+1))`
-/

namespace A014963.P16537883421512829311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A020500 (n + 1)).toNat

end

end A014963.P16537883421512829311

namespace A014963

/-- `A028310(A020500(n+1))` -/
def P16537883421512829311.Spec : Prop :=
  ∀ n, P16537883421512829311.a n = A014963 (n + 1)

end A014963

/-!
# A014964: a(n) = lcm(n, 2^(n-1)).

The programs for A014964, the canonical program `A014964.P7763063300614449993` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014964 has offset 1).

The definition of A014964 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `lcm(n+1, 2^n)` (program `A014964.P7763063300614449993`, by `A014964.P7763063300614449993.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A014964.P7763063300614449993

`lcm(n+1, 2^n)`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A014964

/-- `lcm(n+1, 2^n)` -/
def P7763063300614449993.Spec : Prop :=
  ∀ n, (P7763063300614449993.a n : ℤ) = A014964 (n + 1)

theorem P7763063300614449993.correct : P7763063300614449993.Spec := by
  intro n
  simp only [A014964, Nat.add_sub_cancel]

end A014964

/-! ## A014964.P13915903184042459717

`(n+1)*A084623(n+1)`
-/

namespace A014964.P13915903184042459717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A084623 (n + 1)

end

end A014964.P13915903184042459717

namespace A014964

/-- `(n+1)*A084623(n+1)` -/
def P13915903184042459717.Spec : Prop :=
  ∀ n, P13915903184042459717.a n = A014964 (n + 1)

end A014964

/-! ## A014964.P6977419974869888708

`(n+1)*2^(n-val(n+1, 2))`
-/

namespace A014964.P6977419974869888708
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * (2 : ℚ) ^ ((n : ℤ) - (SequenceMachineLib.valuation (n + 1) 2 : ℤ) : ℤ)

end

end A014964.P6977419974869888708

namespace A014964

/-- `(n+1)*2^(n-val(n+1, 2))` -/
def P6977419974869888708.Spec : Prop :=
  ∀ n, P6977419974869888708.a n = (A014964 (n + 1) : ℚ)

end A014964

/-! ## A014964.P89298423032844655

`2^n*A000265(n+1)`
-/

namespace A014964.P89298423032844655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A000265 (n + 1)

end

end A014964.P89298423032844655

namespace A014964

/-- `2^n*A000265(n+1)` -/
def P89298423032844655.Spec : Prop :=
  ∀ n, P89298423032844655.a n = A014964 (n + 1)

end A014964

/-! ## A014964.P8064580814269711559

`(n+1)/2*A075101(n+1)`
-/

namespace A014964.P8064580814269711559
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 2 * (A075101 (n + 1) : ℚ)

end

end A014964.P8064580814269711559

namespace A014964

/-- `(n+1)/2*A075101(n+1)` -/
def P8064580814269711559.Spec : Prop :=
  ∀ n, P8064580814269711559.a n = (A014964 (n + 1) : ℚ)

end A014964

/-! ## A014964.P3611150833923965673

`(n+1)*2^A093049(n+1)`
-/

namespace A014964.P3611150833923965673
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * (2 : ℚ) ^ (A093049 (n + 1) : ℤ)

end

end A014964.P3611150833923965673

namespace A014964

/-- `(n+1)*2^A093049(n+1)` -/
def P3611150833923965673.Spec : Prop :=
  ∀ n, P3611150833923965673.a n = (A014964 (n + 1) : ℚ)

end A014964

/-! ## A014964.P15421032739000064389

`(A153733(n)+1)*A000079(n)`
-/

namespace A014964.P15421032739000064389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A153733 n + 1) * A000079 n

end

end A014964.P15421032739000064389

namespace A014964

/-- `(A153733(n)+1)*A000079(n)` -/
def P15421032739000064389.Spec : Prop :=
  ∀ n, P15421032739000064389.a n = A014964 (n + 1)

end A014964

/-! ## A014964.P114016984771612409

`A213173(n)*A259445(n+1)`
-/

namespace A014964.P114016984771612409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213173 n * A259445 (n + 1)

end

end A014964.P114016984771612409

namespace A014964

/-- `A213173(n)*A259445(n+1)` -/
def P114016984771612409.Spec : Prop :=
  ∀ n, P114016984771612409.a n = A014964 (n + 1)

end A014964

/-! ## A014964.P13800870476801151207

`A016116(n)²*A259445(n+1)`
-/

namespace A014964.P13800870476801151207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 n ^ 2 * A259445 (n + 1)

end

end A014964.P13800870476801151207

namespace A014964

/-- `A016116(n)²*A259445(n+1)` -/
def P13800870476801151207.Spec : Prop :=
  ∀ n, P13800870476801151207.a n = A014964 (n + 1)

end A014964

/-! ## A014964.P11932535440098487359

`A000265(n+1)*A011782(n+1)`
-/

namespace A014964.P11932535440098487359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (n + 1) * A011782 (n + 1)

end

end A014964.P11932535440098487359

namespace A014964

/-- `A000265(n+1)*A011782(n+1)` -/
def P11932535440098487359.Spec : Prop :=
  ∀ n, P11932535440098487359.a n = A014964 (n + 1)

end A014964

/-! ## A014964.P11211548871804803746

`A000265(n+1)*A131577(n+1)`
-/

namespace A014964.P11211548871804803746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (n + 1) * A131577 (n + 1)

end

end A014964.P11211548871804803746

namespace A014964

/-- `A000265(n+1)*A131577(n+1)` -/
def P11211548871804803746.Spec : Prop :=
  ∀ n, P11211548871804803746.a n = A014964 (n + 1)

end A014964

/-! ## A014964.P16191356911438138843

`A001787(n+1)/A006519(n+1)`
-/

namespace A014964.P16191356911438138843
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001787 (n + 1) : ℚ) / (A006519 (n + 1) : ℚ)

end

end A014964.P16191356911438138843

namespace A014964

/-- `A001787(n+1)/A006519(n+1)` -/
def P16191356911438138843.Spec : Prop :=
  ∀ n, P16191356911438138843.a n = (A014964 (n + 1) : ℚ)

end A014964

/-! ## A014964.P4829569787580430804

`A000265(n+1)*A166444(n+2)`
-/

namespace A014964.P4829569787580430804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (n + 1) * A166444 (n + 2)

end

end A014964.P4829569787580430804

namespace A014964

/-- `A000265(n+1)*A166444(n+2)` -/
def P4829569787580430804.Spec : Prop :=
  ∀ n, P4829569787580430804.a n = A014964 (n + 1)

end A014964

/-! ## A014964.P17300218513247515562

`A000265(n+1)*A016116(2*n)`
-/

namespace A014964.P17300218513247515562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (n + 1) * A016116 (2 * n)

end

end A014964.P17300218513247515562

namespace A014964

/-- `A000265(n+1)*A016116(2*n)` -/
def P17300218513247515562.Spec : Prop :=
  ∀ n, P17300218513247515562.a n = A014964 (n + 1)

end A014964

/-! ## A014964.P16215570097296109505

`A000265(n+1)*A017910(2*n)`
-/

namespace A014964.P16215570097296109505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (n + 1) * A017910 (2 * n)

end

end A014964.P16215570097296109505

namespace A014964

/-- `A000265(n+1)*A017910(2*n)` -/
def P16215570097296109505.Spec : Prop :=
  ∀ n, P16215570097296109505.a n = A014964 (n + 1)

end A014964

/-! ## A014964.P13881884739303202662

`A000265(n+1)*A017911(2*n)`
-/

namespace A014964.P13881884739303202662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (n + 1) * A017911 (2 * n)

end

end A014964.P13881884739303202662

namespace A014964

/-- `A000265(n+1)*A017911(2*n)` -/
def P13881884739303202662.Spec : Prop :=
  ∀ n, P13881884739303202662.a n = A014964 (n + 1)

end A014964

/-! ## A014964.P17989917750568476105

`A000265(n+1)*A017912(2*n)`
-/

namespace A014964.P17989917750568476105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (n + 1) * A017912 (2 * n)

end

end A014964.P17989917750568476105

namespace A014964

/-- `A000265(n+1)*A017912(2*n)` -/
def P17989917750568476105.Spec : Prop :=
  ∀ n, P17989917750568476105.a n = A014964 (n + 1)

end A014964

/-! ## A014964.P1188711858901181224

`A000079(n)*A028234(2*(n+1))`
-/

namespace A014964.P1188711858901181224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n * A028234 (2 * (n + 1))

end

end A014964.P1188711858901181224

namespace A014964

/-- `A000079(n)*A028234(2*(n+1))` -/
def P1188711858901181224.Spec : Prop :=
  ∀ n, P1188711858901181224.a n = A014964 (n + 1)

end A014964

/-! ## A014964.P13566257871990559976

`A000265(n+1)*A060546(2*n)`
-/

namespace A014964.P13566257871990559976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (n + 1) * A060546 (2 * n)

end

end A014964.P13566257871990559976

namespace A014964

/-- `A000265(n+1)*A060546(2*n)` -/
def P13566257871990559976.Spec : Prop :=
  ∀ n, P13566257871990559976.a n = A014964 (n + 1)

end A014964

/-!
# A014965: a(n) = lcm(n, Fibonacci(n)).

The programs for A014965, the canonical program `A014965.P12001658447029218261` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014965 has offset 1).

The definition of A014965 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 468 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A014965.P7822322848881600925

`lcm(n+1, ∑[A212804(n)])`
-/

namespace A014965.P7822322848881600925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 1 : ℤ) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A014965.P7822322848881600925

namespace A014965

/-- `lcm(n+1, ∑[A212804(n)])` -/
def P7822322848881600925.Spec : Prop :=
  ∀ n, (P7822322848881600925.a n : ℤ) = A014965 (n + 1)

end A014965

/-! ## A014965.P15592437998847609650

`(n+1)*A270312(n+1)`
-/

namespace A014965.P15592437998847609650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A270312 (n + 1)

end

end A014965.P15592437998847609650

namespace A014965

/-- `(n+1)*A270312(n+1)` -/
def P15592437998847609650.Spec : Prop :=
  ∀ n, P15592437998847609650.a n = A014965 (n + 1)

end A014965

/-! ## A014965.P12001658447029218261

`∑[-Δ[-lcm(n, A000045(n))]]`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A014965

/-- `∑[-Δ[-lcm(n, A000045(n))]]` -/
def P12001658447029218261.Spec : Prop :=
  ∀ n, P12001658447029218261.a n = A014965 (n + 1)

theorem P12001658447029218261.correct : P12001658447029218261.Spec := by
  intro n
  simp only [A014965, Nat.add_sub_cancel]

end A014965

/-! ## A014965.P6535292416784095541

`lcm(n-1-2*n, Δ[A000045(2*n-(n-2))])`
-/

namespace A014965.P6535292416784095541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 ((2 * n : ℤ) - ((n : ℤ) - 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((n : ℤ) - 1 - (2 * n : ℤ)) (f1 (n + 1) - f1 n)

end

end A014965.P6535292416784095541

namespace A014965

/-- `lcm(n-1-2*n, Δ[A000045(2*n-(n-2))])` -/
def P6535292416784095541.Spec : Prop :=
  ∀ n, (P6535292416784095541.a n : ℤ) = A014965 (n + 1)

end A014965

/-! ## A014965.P10945101632084377939

`A000045(n+1)*A270313(n+1)`
-/

namespace A014965.P10945101632084377939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) * A270313 (n + 1)

end

end A014965.P10945101632084377939

namespace A014965

/-- `A000045(n+1)*A270313(n+1)` -/
def P10945101632084377939.Spec : Prop :=
  ∀ n, P10945101632084377939.a n = A014965 (n + 1)

end A014965

/-! ## A014965.P16374206767276389873

`A212804(n+2)*A270313(n+1)`
-/

namespace A014965.P16374206767276389873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (n + 2) * A270313 (n + 1)

end

end A014965.P16374206767276389873

namespace A014965

/-- `A212804(n+2)*A270313(n+1)` -/
def P16374206767276389873.Spec : Prop :=
  ∀ n, P16374206767276389873.a n = A014965 (n + 1)

end A014965

/-! ## A014965.P2301650041721275727

`A270313(n+1)*A324969(n+2)`
-/

namespace A014965.P2301650041721275727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270313 (n + 1) * A324969 (n + 2)

end

end A014965.P2301650041721275727

namespace A014965

/-- `A270313(n+1)*A324969(n+2)` -/
def P2301650041721275727.Spec : Prop :=
  ∀ n, P2301650041721275727.a n = A014965 (n + 1)

end A014965

/-! ## A014965.P4103111221709071856

`lcm(A000045(n+1), A028242(2*n))`
-/

namespace A014965.P4103111221709071856
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000045 (n + 1)) (A028242 (2 * n))

end

end A014965.P4103111221709071856

namespace A014965

/-- `lcm(A000045(n+1), A028242(2*n))` -/
def P4103111221709071856.Spec : Prop :=
  ∀ n, (P4103111221709071856.a n : ℤ) = A014965 (n + 1)

end A014965

/-! ## A014965.P7858253009804766360

`lcm(Δ[A001611(n+2)], A000027(n+1))`
-/

namespace A014965.P7858253009804766360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001611 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (f1 (n + 1) - f1 n) (A000027 (n + 1))

end

end A014965.P7858253009804766360

namespace A014965

/-- `lcm(Δ[A001611(n+2)], A000027(n+1))` -/
def P7858253009804766360.Spec : Prop :=
  ∀ n, (P7858253009804766360.a n : ℤ) = A014965 (n + 1)

end A014965

/-! ## A014965.P6069073621587949799

`lcm(A033999(2*n)+n, A236191(n+1))`
-/

namespace A014965.P6069073621587949799
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 (2 * n) + (n : ℤ)) (A236191 (n + 1))

end

end A014965.P6069073621587949799

namespace A014965

/-- `lcm(A033999(2*n)+n, A236191(n+1))` -/
def P6069073621587949799.Spec : Prop :=
  ∀ n, (P6069073621587949799.a n : ℤ) = A014965 (n + 1)

end A014965

/-! ## A014965.P1432177231991687741

`lcm(A000045(A266285(2*n)), A266285(2*n))`
-/

namespace A014965.P1432177231991687741
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000045 (A266285 (2 * n)).toNat) (A266285 (2 * n))

end

end A014965.P1432177231991687741

namespace A014965

/-- `lcm(A000045(A266285(2*n)), A266285(2*n))` -/
def P1432177231991687741.Spec : Prop :=
  ∀ n, (P1432177231991687741.a n : ℤ) = A014965 (n + 1)

end A014965

/-! ## A014965.P12714443660557204033

`A045925(n+1)/A104714(n+1)`
-/

namespace A014965.P12714443660557204033
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045925 (n + 1) : ℚ) / (A104714 (n + 1) : ℚ)

end

end A014965.P12714443660557204033

namespace A014965

/-- `A045925(n+1)/A104714(n+1)` -/
def P12714443660557204033.Spec : Prop :=
  ∀ n, P12714443660557204033.a n = (A014965 (n + 1) : ℚ)

end A014965

/-! ## A014965.P3669624068385100551

`(A014286(n+1)-A014286(n))/A104714(n+1)`
-/

namespace A014965.P3669624068385100551
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014286 (n + 1) - A014286 n : ℚ) / (A104714 (n + 1) : ℚ)

end

end A014965.P3669624068385100551

namespace A014965

/-- `(A014286(n+1)-A014286(n))/A104714(n+1)` -/
def P3669624068385100551.Spec : Prop :=
  ∀ n, P3669624068385100551.a n = (A014965 (n + 1) : ℚ)

end A014965

/-! ## A014965.P6113703893198539445

`A259547(n+1)/(A000578(n+1)*A104714(n+1))`
-/

namespace A014965.P6113703893198539445
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A259547 (n + 1) : ℚ) / (A000578 (n + 1) * A104714 (n + 1) : ℚ)

end

end A014965.P6113703893198539445

namespace A014965

/-- `A259547(n+1)/(A000578(n+1)*A104714(n+1))` -/
def P6113703893198539445.Spec : Prop :=
  ∀ n, P6113703893198539445.a n = (A014965 (n + 1) : ℚ)

end A014965

/-!
# A014966: Inverse of 957th cyclotomic polynomial.

The programs for A014966, there is no canonical definition to state claims against.
-/

/-! ## A014966.P3439861235282067155

`A015923(n)*A033999(n)`
-/

namespace A014966.P3439861235282067155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015923 n * A033999 n

end

end A014966.P3439861235282067155

/-!
# A014968: Expansion of (1/theta_4 - 1)/2.

The programs for A014968, there is no canonical definition to state claims against.
-/

/-! ## A014968.P7227896420344065809

`floor(∑[A211971(n)/2])`
-/

namespace A014968.P7227896420344065809
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A211971 n : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A014968.P7227896420344065809

/-! ## A014968.P9909320223870515235

`floor(A015128(n)/2)`
-/

namespace A014968.P9909320223870515235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A015128 n : ℚ) / 2⌋

end

end A014968.P9909320223870515235

/-! ## A014968.P8285437630335383358

`∑{d}[n, A300274(#)/2]`
-/

namespace A014968.P8285437630335383358
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (A300274 d : ℚ) / 2

end

end A014968.P8285437630335383358

/-! ## A014968.P8598290475858675152

`round((abs(A004402(n))-1)/2)`
-/

namespace A014968.P8598290475858675152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((|A004402 n| - 1 : ℚ) / 2)

end

end A014968.P8598290475858675152

/-! ## A014968.P13442198031399279585

`(A015128(n)-A000007(n))/2`
-/

namespace A014968.P13442198031399279585
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A015128 n - A000007 n : ℚ) / 2

end

end A014968.P13442198031399279585

/-! ## A014968.P3057184867581211867

`n/A004277(n)*A015128(n)`
-/

namespace A014968.P3057184867581211867
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A004277 n : ℚ) * (A015128 n : ℚ)

end

end A014968.P3057184867581211867

/-! ## A014968.P2858535237996347599

`A015128(n)%A264685(n)/2`
-/

namespace A014968.P2858535237996347599
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.tmod (A015128 n) (A264685 n) : ℚ) / 2

end

end A014968.P2858535237996347599

/-! ## A014968.P7383378279372111719

`floor(A321884(A000096(n+1)+n+1)/2)`
-/

namespace A014968.P7383378279372111719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A321884 (A000096 (n + 1) + (n + 1 : ℤ)).toNat : ℚ) / 2⌋

end

end A014968.P7383378279372111719

/-! ## A014968.P16876706984531947365

`A015128(n)-A015128(n)/A000122(n²)`
-/

namespace A014968.P16876706984531947365
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A015128 n : ℚ) - (A015128 n : ℚ) / (A000122 (n ^ 2) : ℚ)

end

end A014968.P16876706984531947365

/-!
# A014969: Expansion of (theta_3(q) / theta_4(q))^2 in powers of q.

The programs for A014969, there is no canonical definition to state claims against.
-/

/-! ## A014969.P11894072143924081204

`A007096(2*n)`
-/

namespace A014969.P11894072143924081204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007096 (2 * n)

end

end A014969.P11894072143924081204

/-! ## A014969.P4154001212928994992

`A212318(2*n)`
-/

namespace A014969.P4154001212928994992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212318 (2 * n)

end

end A014969.P4154001212928994992

/-! ## A014969.P3517347672343849140

`A036453(n+1)*A131126(n)`
-/

namespace A014969.P3517347672343849140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036453 (n + 1) * A131126 n

end

end A014969.P3517347672343849140

/-! ## A014969.P8835165095367978535

`A131126(n)*A280560(2*n)`
-/

namespace A014969.P8835165095367978535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131126 n * A280560 (2 * n)

end

end A014969.P8835165095367978535

/-! ## A014969.P15054777075715868999

`(2-A208274(2*n))*A208933(2*n)`
-/

namespace A014969.P15054777075715868999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A208274 (2 * n)) * A208933 (2 * n)

end

end A014969.P15054777075715868999

/-! ## A014969.P17010023466243442391

`A020639(∏{p}[4*7*n, #])*A131126(n)`
-/

namespace A014969.P17010023466243442391
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (7 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (∏ p ∈ Nat.primeFactors (f1 n), p) * A131126 n

end

end A014969.P17010023466243442391

/-! ## A014969.P13091996679517828386

`A020639(A000010(n+2))*A131126(n)`
-/

namespace A014969.P13091996679517828386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A000010 (n + 2)).toNat * A131126 n

end

end A014969.P13091996679517828386

/-! ## A014969.P1639694264594151669

`A210066(n)*A280560(n)`
-/

namespace A014969.P1639694264594151669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210066 n * A280560 n

end

end A014969.P1639694264594151669

/-! ## A014969.P1076765256133615171

`record[2*A112128(n)-A208604(n)]`
-/

namespace A014969.P1076765256133615171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A112128 n - A208604 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A014969.P1076765256133615171

/-! ## A014969.P15388393870807015028

`2*A112128(2*n)-A208604(2*n)`
-/

namespace A014969.P15388393870807015028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A112128 (2 * n) - A208604 (2 * n)

end

end A014969.P15388393870807015028

/-! ## A014969.P10125986928682104595

`abs(A139820(n))`
-/

namespace A014969.P10125986928682104595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A139820 n|

end

end A014969.P10125986928682104595

/-! ## A014969.P3986149393385953139

`A033999(n)*A139820(n)`
-/

namespace A014969.P3986149393385953139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A139820 n

end

end A014969.P3986149393385953139

/-! ## A014969.P2808600297161587028

`gcd(A000038(n), A139820(n))`
-/

namespace A014969.P2808600297161587028
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A139820 n)

end

end A014969.P2808600297161587028

/-! ## A014969.P13653324856549659541

`lcm(A000034(n), A139820(n))`
-/

namespace A014969.P13653324856549659541
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000034 n) (A139820 n)

end

end A014969.P13653324856549659541

/-! ## A014969.P15091445116421882604

`record[A189925(n)]`
-/

namespace A014969.P15091445116421882604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189925 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A014969.P15091445116421882604

/-! ## A014969.P7864800870844989937

`record[A232358(n)]`
-/

namespace A014969.P7864800870844989937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232358 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A014969.P7864800870844989937

/-!
# A014970: Expansion of (theta_3 / theta_4)^3.

The programs for A014970, there is no canonical definition to state claims against.
-/

/-! ## A014970.P2544162325494585623

`A103258(4*n)`
-/

namespace A014970.P2544162325494585623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103258 (4 * n)

end

end A014970.P2544162325494585623

/-! ## A014970.P17138280806822369688

`record[A103258(A266072(n)-1)]`
-/

namespace A014970.P17138280806822369688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103258 (A266072 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A014970.P17138280806822369688

/-! ## A014970.P16038038862757963907

`record[A103258(A005843(A014681(n)))]`
-/

namespace A014970.P16038038862757963907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103258 (A005843 (A014681 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A014970.P16038038862757963907

/-! ## A014970.P13173492866783753293

`record[A103258(A153733(A019425(n)))]`
-/

namespace A014970.P13173492866783753293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103258 (A153733 (A019425 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A014970.P13173492866783753293

/-! ## A014970.P10902599205069596488

`record[A103258(A029578(A266072(n)))]`
-/

namespace A014970.P10902599205069596488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103258 (A029578 (A266072 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A014970.P10902599205069596488

/-! ## A014970.P7194184124734573182

`A103258(A008574(n))-A000007(n)`
-/

namespace A014970.P7194184124734573182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103258 (A008574 n).toNat - A000007 n

end

end A014970.P7194184124734573182

/-!
# A014971: Inverse of 962nd cyclotomic polynomial.

The programs for A014971, there is no canonical definition to state claims against.
-/

/-! ## A014971.P10458966427139793238

`A015933(2*n)`
-/

namespace A014971.P10458966427139793238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015933 (2 * n)

end

end A014971.P10458966427139793238

/-! ## A014971.P10193076403164696997

`A014490(n)*A033999(n)`
-/

namespace A014971.P10193076403164696997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014490 n * A033999 n

end

end A014971.P10193076403164696997

/-! ## A014971.P12887129292104440600

`A015075(A175427(n+1))`
-/

namespace A014971.P12887129292104440600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015075 (A175427 (n + 1)).toNat

end

end A014971.P12887129292104440600

/-! ## A014971.P1541166905296188711

`A015751(A048339(n))`
-/

namespace A014971.P1541166905296188711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015751 (A048339 n).toNat

end

end A014971.P1541166905296188711

/-! ## A014971.P524305291624476062

`A015751(lt[A275870(n+1), A285951(n+1)])`
-/

namespace A014971.P524305291624476062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275870 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285951 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015751 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A014971.P524305291624476062

/-!
# A014972: Expansion of (theta_3(q) / theta_4(q) )^4 in powers of q; also of 1 / (1 - lambda(z)).

The programs for A014972, there is no canonical definition to state claims against.
-/

/-! ## A014972.P10060890929359938384

`A131126(2*n)`
-/

namespace A014972.P10060890929359938384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131126 (2 * n)

end

end A014972.P10060890929359938384

/-! ## A014972.P3087815697680496756

`A208933(4*n)`
-/

namespace A014972.P3087815697680496756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208933 (4 * n)

end

end A014972.P3087815697680496756

/-! ## A014972.P17553999164528225494

`A215348(A008574(n))`
-/

namespace A014972.P17553999164528225494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215348 (A008574 n).toNat

end

end A014972.P17553999164528225494

/-! ## A014972.P2572498480822334763

`A215348(A004277(2*n))`
-/

namespace A014972.P2572498480822334763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215348 (A004277 (2 * n)).toNat

end

end A014972.P2572498480822334763

/-! ## A014972.P11515896807036128577

`A215348(A004275(2*n+1))`
-/

namespace A014972.P11515896807036128577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215348 (A004275 (2 * n + 1)).toNat

end

end A014972.P11515896807036128577

/-! ## A014972.P17980066837582565171

`A215348(A004277(n)+n+n)`
-/

namespace A014972.P17980066837582565171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215348 (A004277 n + (n : ℤ) + (n : ℤ)).toNat

end

end A014972.P17980066837582565171

/-! ## A014972.P3568957808095279155

`ceil(A014969(2*n)/2)`
-/

namespace A014972.P3568957808095279155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A014969 (2 * n) : ℚ) / 2⌉

end

end A014972.P3568957808095279155

/-! ## A014972.P6620758515158953299

`A097243(n)/A036453(n+1)`
-/

namespace A014972.P6620758515158953299
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A097243 n : ℚ) / (A036453 (n + 1) : ℚ)

end

end A014972.P6620758515158953299

/-! ## A014972.P12652967429618714390

`A097243(n)/A280560(2*n)`
-/

namespace A014972.P12652967429618714390
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A097243 n : ℚ) / (A280560 (2 * n) : ℚ)

end

end A014972.P12652967429618714390

/-! ## A014972.P9773947039185446891

`A014969(2*n)/A036453(n+1)`
-/

namespace A014972.P9773947039185446891
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014969 (2 * n) : ℚ) / (A036453 (n + 1) : ℚ)

end

end A014972.P9773947039185446891

/-! ## A014972.P17700848260139133081

`A014969(2*n)/A280560(2*n)`
-/

namespace A014972.P17700848260139133081
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014969 (2 * n) : ℚ) / (A280560 (2 * n) : ℚ)

end

end A014972.P17700848260139133081

/-! ## A014972.P2072070249033628202

`abs(A128692(n))`
-/

namespace A014972.P2072070249033628202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A128692 n|

end

end A014972.P2072070249033628202

/-! ## A014972.P5825247581465045409

`A033999(n)*A128692(n)`
-/

namespace A014972.P5825247581465045409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A128692 n

end

end A014972.P5825247581465045409

/-! ## A014972.P9198327992661081288

`gcd(A000038(n), A128692(n))`
-/

namespace A014972.P9198327992661081288
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A128692 n)

end

end A014972.P9198327992661081288

/-! ## A014972.P16515549605012209491

`lcm(A000034(n), A128692(n))`
-/

namespace A014972.P16515549605012209491
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000034 n) (A128692 n)

end

end A014972.P16515549605012209491

/-! ## A014972.P15516946139348019517

`A056594(2*n)*A128692(n)`
-/

namespace A014972.P15516946139348019517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (2 * n) * A128692 n

end

end A014972.P15516946139348019517

/-! ## A014972.P5933349124824781872

`record[A210066(n)]`
-/

namespace A014972.P5933349124824781872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210066 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A014972.P5933349124824781872

/-!
# A014973: a(n) = n / gcd(n, (n-1)!).

The programs for A014973, the canonical program `A014973.P8485219593151367646` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014973 has offset 1).

The definition of A014973 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A014973.P8485219593151367646

`(n+1)/gcd(n+1, n!)`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A014973

/-- `(n+1)/gcd(n+1, n!)` -/
def P8485219593151367646.Spec : Prop :=
  ∀ n, P8485219593151367646.a n = (A014973 (n + 1) : ℚ)

end A014973

/-! ## A014973.P13721270875762825570

`ceil(∏{d}[n+1, #^(#-n)])`
-/

namespace A014973.P13721270875762825570
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∏ d ∈ Nat.divisors (f1 n), (d : ℚ) ^ ((d : ℤ) - (n : ℤ) : ℤ)⌉

end

end A014973.P13721270875762825570

namespace A014973

/-- `ceil(∏{d}[n+1, #^(#-n)])` -/
def P13721270875762825570.Spec : Prop :=
  ∀ n, P13721270875762825570.a n = A014973 (n + 1)

end A014973

/-! ## A014973.P15267387140765400979

`∏{p}[∏{p}[n+1, C(#, n)], #]+char[3]`
-/

namespace A014973.P15267387140765400979
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), Nat.choose p n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), p + (if ∃ j, f3 j = n then 1 else 0)

end

end A014973.P15267387140765400979

namespace A014973

/-- `∏{p}[∏{p}[n+1, C(#, n)], #]+char[3]` -/
def P15267387140765400979.Spec : Prop :=
  ∀ n, (P15267387140765400979.a n : ℤ) = A014973 (n + 1)

end A014973

/-! ## A014973.P12014641333400032019

`A089026(n+1)+char[3]`
-/

namespace A014973.P12014641333400032019
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089026 (n + 1) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A014973.P12014641333400032019

namespace A014973

/-- `A089026(n+1)+char[3]` -/
def P12014641333400032019.Spec : Prop :=
  ∀ n, P12014641333400032019.a n = A014973 (n + 1)

end A014973

/-! ## A014973.P4869776458866985508

`gcd(xor(1, n), A007918(xor(1, n)))`
-/

namespace A014973.P4869776458866985508
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Nat.xor 1 n : ℤ) (A007918 (Nat.xor 1 n))

end

end A014973.P4869776458866985508

namespace A014973

/-- `gcd(xor(1, n), A007918(xor(1, n)))` -/
def P4869776458866985508.Spec : Prop :=
  ∀ n, (P4869776458866985508.a n : ℤ) = A014973 (n + 1)

end A014973

/-! ## A014973.P1738389640000268314

`∏{p}[C(A025492(n+1), n), #]`
-/

namespace A014973.P1738389640000268314
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A025492 (n + 1)).toNat n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), p

end

end A014973.P1738389640000268314

namespace A014973

/-- `∏{p}[C(A025492(n+1), n), #]` -/
def P1738389640000268314.Spec : Prop :=
  ∀ n, (P1738389640000268314.a n : ℤ) = A014973 (n + 1)

end A014973

/-! ## A014973.P6665490090984829295

`ceil((n+1)/A335405(n+1))`
-/

namespace A014973.P6665490090984829295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℚ) / (A335405 (n + 1) : ℚ)⌉

end

end A014973.P6665490090984829295

namespace A014973

/-- `ceil((n+1)/A335405(n+1))` -/
def P6665490090984829295.Spec : Prop :=
  ∀ n, P6665490090984829295.a n = A014973 (n + 1)

end A014973

/-! ## A014973.P4802562850129589808

`A089026((n+1)/gcd(1-n, ∑[n]))`
-/

namespace A014973.P4802562850129589808
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089026 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (Int.gcd (1 - (n : ℤ)) ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) : ℚ))).toNat

end

end A014973.P4802562850129589808

namespace A014973

/-- `A089026((n+1)/gcd(1-n, ∑[n]))` -/
def P4802562850129589808.Spec : Prop :=
  ∀ n, P4802562850129589808.a n = A014973 (n + 1)

end A014973

/-! ## A014973.P15204984296050007854

`∏{d}[C(A006530(n+1), n), #]+char[3]`
-/

namespace A014973.P15204984296050007854
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A006530 (n + 1)).toNat n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), d + (if ∃ j, f2 j = n then 1 else 0)

end

end A014973.P15204984296050007854

namespace A014973

/-- `∏{d}[C(A006530(n+1), n), #]+char[3]` -/
def P15204984296050007854.Spec : Prop :=
  ∀ n, (P15204984296050007854.a n : ℤ) = A014973 (n + 1)

end A014973

/-! ## A014973.P10565107161232935571

`(n+1)/(n+1-A061006(n+1))`
-/

namespace A014973.P10565107161232935571
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((n + 1 : ℤ) - A061006 (n + 1) : ℚ)

end

end A014973.P10565107161232935571

namespace A014973

/-- `(n+1)/(n+1-A061006(n+1))` -/
def P10565107161232935571.Spec : Prop :=
  ∀ n, P10565107161232935571.a n = (A014973 (n + 1) : ℚ)

end A014973

/-! ## A014973.P3885797084276982093

`char[3]+n*C(2, A000005(n+1))+1`
-/

namespace A014973.P3885797084276982093
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f1 j = n then 1 else 0) + (n * Nat.choose 2 (A000005 (n + 1)).toNat + 1)

end

end A014973.P3885797084276982093

namespace A014973

/-- `char[3]+n*C(2, A000005(n+1))+1` -/
def P3885797084276982093.Spec : Prop :=
  ∀ n, (P3885797084276982093.a n : ℤ) = A014973 (n + 1)

end A014973

/-! ## A014973.P15466036955807060866

`A089026(A076685(n+1))`
-/

namespace A014973.P15466036955807060866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089026 (A076685 (n + 1)).toNat

end

end A014973.P15466036955807060866

namespace A014973

/-- `A089026(A076685(n+1))` -/
def P15466036955807060866.Spec : Prop :=
  ∀ n, P15466036955807060866.a n = A014973 (n + 1)

end A014973

/-! ## A014973.P2123983952911808793

`A089026(A186421(n)+1)`
-/

namespace A014973.P2123983952911808793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089026 (A186421 n + 1).toNat

end

end A014973.P2123983952911808793

namespace A014973

/-- `A089026(A186421(n)+1)` -/
def P2123983952911808793.Spec : Prop :=
  ∀ n, P2123983952911808793.a n = A014973 (n + 1)

end A014973

/-! ## A014973.P612724196751556133

`A089026(A186646(n+1))`
-/

namespace A014973.P612724196751556133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089026 (A186646 (n + 1)).toNat

end

end A014973.P612724196751556133

namespace A014973

/-- `A089026(A186646(n+1))` -/
def P612724196751556133.Spec : Prop :=
  ∀ n, P612724196751556133.a n = A014973 (n + 1)

end A014973

/-! ## A014973.P17197371494653354609

`A089026(A212831(n+1))`
-/

namespace A014973.P17197371494653354609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089026 (A212831 (n + 1)).toNat

end

end A014973.P17197371494653354609

namespace A014973

/-- `A089026(A212831(n+1))` -/
def P17197371494653354609.Spec : Prop :=
  ∀ n, P17197371494653354609.a n = A014973 (n + 1)

end A014973

/-! ## A014973.P12438202884331574128

`A014963(A293303(n+1))`
-/

namespace A014973.P12438202884331574128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A293303 (n + 1)).toNat

end

end A014973.P12438202884331574128

namespace A014973

/-- `A014963(A293303(n+1))` -/
def P12438202884331574128.Spec : Prop :=
  ∀ n, P12438202884331574128.a n = A014973 (n + 1)

end A014973

/-! ## A014973.P12857285164622260670

`A089026(A254503(n+1))`
-/

namespace A014973.P12857285164622260670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089026 (A254503 (n + 1)).toNat

end

end A014973.P12857285164622260670

namespace A014973

/-- `A089026(A254503(n+1))` -/
def P12857285164622260670.Spec : Prop :=
  ∀ n, P12857285164622260670.a n = A014973 (n + 1)

end A014973

/-! ## A014973.P17100235878795674238

`A185013(n)+A089026(n+1)`
-/

namespace A014973.P17100235878795674238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185013 n + A089026 (n + 1)

end

end A014973.P17100235878795674238

namespace A014973

/-- `A185013(n)+A089026(n+1)` -/
def P17100235878795674238.Spec : Prop :=
  ∀ n, P17100235878795674238.a n = A014973 (n + 1)

end A014973

/-! ## A014973.P11043045491246546464

`A267871(n)+A061006(n+1)`
-/

namespace A014973.P11043045491246546464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267871 n + A061006 (n + 1)

end

end A014973.P11043045491246546464

namespace A014973

/-- `A267871(n)+A061006(n+1)` -/
def P11043045491246546464.Spec : Prop :=
  ∀ n, P11043045491246546464.a n = A014973 (n + 1)

end A014973

/-! ## A014973.P8316525808879270275

`gcd(A068319(n+1), A118136(n))`
-/

namespace A014973.P8316525808879270275
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A068319 (n + 1)) (A118136 n)

end

end A014973.P8316525808879270275

namespace A014973

/-- `gcd(A068319(n+1), A118136(n))` -/
def P8316525808879270275.Spec : Prop :=
  ∀ n, (P8316525808879270275.a n : ℤ) = A014973 (n + 1)

end A014973

/-!
# A014974: Differences between successive locations of zeros in decimal expansion of Pi.

The programs for A014974, there is no canonical definition to state claims against.
-/

/-! ## A014974.P5886663985467477846

`A014976(n+2)-A014976(n+1)`
-/

namespace A014974.P5886663985467477846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014976 (n + 2) - A014976 (n + 1)

end

end A014974.P5886663985467477846

/-! ## A014974.P5947521393806635593

`Δ[A014976(n+1)]`
-/

namespace A014974.P5947521393806635593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014976 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A014974.P5947521393806635593

/-! ## A014974.P5260708447163161684

`Δ[A037008(n+1)]`
-/

namespace A014974.P5260708447163161684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037008 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A014974.P5260708447163161684

/-! ## A014974.P13699119090101383879

`Δ[abs(A014976(Δ[n²]-n)-1)]`
-/

namespace A014974.P13699119090101383879
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A014976 ((f2 (n + 1) : ℤ) - (f2 n : ℤ) - (n : ℤ)).toNat - 1|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A014974.P13699119090101383879

/-! ## A014974.P6652673498285110178

`A037008(n+2)-A037008(n+1)`
-/

namespace A014974.P6652673498285110178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037008 (n + 2) - A037008 (n + 1)

end

end A014974.P6652673498285110178

/-! ## A014974.P15670570217161487384

`Δ[eq[0, A000796(n)]]`
-/

namespace A014974.P15670570217161487384
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A014974.P15670570217161487384

/-! ## A014974.P11503699660216969000

`A139728(n+1)+1`
-/

namespace A014974.P11503699660216969000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139728 (n + 1) + 1

end

end A014974.P11503699660216969000

/-! ## A014974.P7174663636338313757

`Δ[lt[A086995(n+1), 1]]`
-/

namespace A014974.P7174663636338313757
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086995 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A014974.P7174663636338313757

/-! ## A014974.P2064247574693496757

`Δ[eq[A119505(n+1), A155912(n)]]`
-/

namespace A014974.P2064247574693496757
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119505 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155912 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A014974.P2064247574693496757

/-!
# A014975: Inverse of 966th cyclotomic polynomial.

The programs for A014975, there is no canonical definition to state claims against.
-/

/-! ## A014975.P2391572888196038183

`A015941(2*n)`
-/

namespace A014975.P2391572888196038183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015941 (2 * n)

end

end A014975.P2391572888196038183

/-! ## A014975.P9359316558661489290

`A014492(n)*A033999(n)`
-/

namespace A014975.P9359316558661489290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014492 n * A033999 n

end

end A014975.P9359316558661489290

/-! ## A014975.P3270800207839513053

`A015563(n)^A000040(A085153(n+1))`
-/

namespace A014975.P3270800207839513053
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A015563 n : ℚ) ^ (A000040 (A085153 (n + 1)).toNat : ℤ)

end

end A014975.P3270800207839513053

/-! ## A014975.P10351600138047769925

`A015563(n)^A000040(A297374(n+1))`
-/

namespace A014975.P10351600138047769925
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A015563 n : ℚ) ^ (A000040 (A297374 (n + 1)).toNat : ℤ)

end

end A014975.P10351600138047769925

/-! ## A014975.P9743180825679567394

`A015227(A061729(n))`
-/

namespace A014975.P9743180825679567394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015227 (A061729 n).toNat

end

end A014975.P9743180825679567394

/-!
# A014976: Successive locations of zeros in decimal expansion of Pi (where locations 1, 2, 3, ... correspond to digits 3, 1, 4, ...).

The programs for A014976, there is no canonical definition to state claims against.
-/

/-! ## A014976.P12231950264586686468

`A037008(n+1)+1`
-/

namespace A014976.P12231950264586686468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037008 (n + 1) + 1

end

end A014976.P12231950264586686468

/-! ## A014976.P11464143170227591611

`A005408(n)-(2*n-A037008(n-log2(1/2)))`
-/

namespace A014976.P11464143170227591611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n - ((2 * n : ℤ) - A037008 (SequenceMachineLib.roundAway ((n : ℝ) - Real.logb 2 ((1 : ℚ) / 2 : ℝ))).toNat)

end

end A014976.P11464143170227591611

/-! ## A014976.P17681893114535909371

`eq[0, A000796(n)]+1`
-/

namespace A014976.P17681893114535909371
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A014976.P17681893114535909371

/-! ## A014976.P6088626262522177373

`eq[0, A000796(abs(1-n))]`
-/

namespace A014976.P6088626262522177373
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 (|1 - (n : ℤ)|.toNat + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A014976.P6088626262522177373

/-! ## A014976.P3307813313530206659

`eq[1, A123152(n+1)]+1`
-/

namespace A014976.P3307813313530206659
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123152 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A014976.P3307813313530206659

/-! ## A014976.P9357618846877374696

`lt[A000796(n+1), 1]+2`
-/

namespace A014976.P9357618846877374696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 (n + 1 + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 2

end

end A014976.P9357618846877374696

/-! ## A014976.P15290428896391816033

`eq[0, A086994(n)]+1`
-/

namespace A014976.P15290428896391816033
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086994 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A014976.P15290428896391816033

/-! ## A014976.P12479508328386443753

`eq[9, A030644(n)]+1`
-/

namespace A014976.P12479508328386443753
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030644 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A014976.P12479508328386443753

/-! ## A014976.P646410069217350005

`eq[1, A059833(n+1)]+1`
-/

namespace A014976.P646410069217350005
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059833 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A014976.P646410069217350005

/-! ## A014976.P7198541480051933214

`lt[A086995(n+1), 1]+1`
-/

namespace A014976.P7198541480051933214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086995 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A014976.P7198541480051933214

/-! ## A014976.P8804685683953192389

`A011760(A037008(n+1))`
-/

namespace A014976.P8804685683953192389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011760 (A037008 (n + 1)).toNat

end

end A014976.P8804685683953192389

/-! ## A014976.P892531967777168374

`A011760(eq[0, A000796(n)])`
-/

namespace A014976.P892531967777168374
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011760 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A014976.P892531967777168374

/-! ## A014976.P5627425385239786076

`A020725(eq[0, A000796(n)])`
-/

namespace A014976.P5627425385239786076
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A014976.P5627425385239786076

/-! ## A014976.P7110876321688303673

`A065475(eq[0, A000796(n)])`
-/

namespace A014976.P7110876321688303673
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A014976.P7110876321688303673

/-! ## A014976.P10973685173840890823

`eq[1, A123152(A028310(n))]`
-/

namespace A014976.P10973685173840890823
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123152 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A014976.P10973685173840890823

/-! ## A014976.P4992514165890526068

`A020725(eq[9, A030644(n)])`
-/

namespace A014976.P4992514165890526068
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030644 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A014976.P4992514165890526068

/-! ## A014976.P3277037989039339651

`eq[A054249(n+1), A062157(n)]+1`
-/

namespace A014976.P3277037989039339651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054249 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A014976.P3277037989039339651

/-! ## A014976.P14135899905520365416

`eq[6, A179104(n+1)]+1`
-/

namespace A014976.P14135899905520365416
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179104 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A014976.P14135899905520365416

/-! ## A014976.P15548489195266446157

`eq[0, A110766(2*n+1)]+1`
-/

namespace A014976.P15548489195266446157
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110766 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A014976.P15548489195266446157

/-! ## A014976.P4824850482164027920

`eq[1, A001355(A004280(n+1))+1]`
-/

namespace A014976.P4824850482164027920
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001355 (A004280 (n + 1)).toNat + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A014976.P4824850482164027920

/-!
# A014977: Expansion of Molien series for automorphism group (2.Weyl(E6)) of E6 lattice.

The programs for A014977, there is no canonical definition to state claims against.
-/

/-! ## A014977.P10235438832493918678

`A008584(2*n)`
-/

namespace A014977.P10235438832493918678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008584 (2 * n)

end

end A014977.P10235438832493918678

/-! ## A014977.P6013532882515415232

`A008584(comp[or(1, n)])%A017055(n)`
-/

namespace A014977.P6013532882515415232
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008584 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)) (A017055 n)

end

end A014977.P6013532882515415232

/-! ## A014977.P3546977949184582271

`A008584(comp[or(1, n)])+A000038(n+1)`
-/

namespace A014977.P3546977949184582271
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008584 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) + A000038 (n + 1)

end

end A014977.P3546977949184582271

/-! ## A014977.P16644762578698035384

`A008584(comp[or(1, n)])+A000007(n+5)`
-/

namespace A014977.P16644762578698035384
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008584 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) + A000007 (n + 5)

end

end A014977.P16644762578698035384

/-! ## A014977.P17779696168994773898

`A008584(A004277(n))+A000007(n)`
-/

namespace A014977.P17779696168994773898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008584 (A004277 n).toNat + A000007 n

end

end A014977.P17779696168994773898

/-! ## A014977.P18384678810783113043

`or(A000007(n), A008584(A005843(n)))`
-/

namespace A014977.P18384678810783113043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A008584 (A005843 n).toNat)

end

end A014977.P18384678810783113043

/-! ## A014977.P17403703877292520280

`A000027(A008584(comp[or(1, n)]))`
-/

namespace A014977.P17403703877292520280
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A008584 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)).toNat

end

end A014977.P17403703877292520280

/-!
# A014978: Inverse of 969th cyclotomic polynomial.

The programs for A014978, there is no canonical definition to state claims against.
-/

/-! ## A014978.P3454316674442854369

`A015947(n)*A033999(n)`
-/

namespace A014978.P3454316674442854369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015947 n * A033999 n

end

end A014978.P3454316674442854369

/-!
# A014979: Numbers that are both triangular and pentagonal.

The programs for A014979, the canonical program `A014979.P17127470399017052136` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014979 has offset 1).

The definition of A014979 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A014979.P17127470399017052136

`194*a(n-1)-a(n-2)+16` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A014979

/-- `194*a(n-1)-a(n-2)+16` -/
def P17127470399017052136.Spec : Prop :=
  ∀ n, P17127470399017052136.a n = A014979 (n + 1)

theorem P17127470399017052136.correct : P17127470399017052136.Spec := by
  intro n
  simp only [A014979, Nat.add_sub_cancel]

end A014979

/-! ## A014979.P14162842392580270643

`C(A046175(n)+1, 2)`
-/

namespace A014979.P14162842392580270643
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A046175 n + 1).toNat 2

end

end A014979.P14162842392580270643

namespace A014979

/-- `C(A046175(n)+1, 2)` -/
def P14162842392580270643.Spec : Prop :=
  ∀ n, (P14162842392580270643.a n : ℤ) = A014979 (n + 1)

end A014979

/-! ## A014979.P11791010712333298570

`C(A101879(2*n), 2)`
-/

namespace A014979.P11791010712333298570
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A101879 (2 * n)).toNat 2

end

end A014979.P11791010712333298570

namespace A014979

/-- `C(A101879(2*n), 2)` -/
def P11791010712333298570.Spec : Prop :=
  ∀ n, (P11791010712333298570.a n : ℤ) = A014979 (n + 1)

end A014979

/-! ## A014979.P10611404227401155286

`A076139(comp[2*(n+1)])`
-/

namespace A014979.P10611404227401155286
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076139 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A014979.P10611404227401155286

namespace A014979

/-- `A076139(comp[2*(n+1)])` -/
def P10611404227401155286.Spec : Prop :=
  ∀ n, P10611404227401155286.a n = A014979 (n + 1)

end A014979

/-! ## A014979.P1719509197267799196

`record[n%2*A076139(n)]`
-/

namespace A014979.P1719509197267799196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n % 2 : ℕ) : ℤ) * A076139 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A014979.P1719509197267799196

namespace A014979

/-- `record[n%2*A076139(n)]` -/
def P1719509197267799196.Spec : Prop :=
  ∀ n, P1719509197267799196.a n = A014979 (n + 1)

end A014979

/-!
# A014980: a(n+1) = floor(a(n)/2) * ceiling(a(n)/2), a(0) = 5.

The programs for A014980, there is no canonical definition to state claims against.
-/

/-! ## A014980.P13821689455698084048

`floor((a(n-1)/2)²)` with `a(0)=5`
-/

namespace A014980.P13821689455698084048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  ⌊((a (n - 1) : ℚ) / 2) ^ 2⌋

end

end A014980.P13821689455698084048

/-! ## A014980.P10452450638398455020

`round((a(n-1)/2)²)` with `a(0)=5`
-/

namespace A014980.P10452450638398455020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  SequenceMachineLib.roundAway (((a (n - 1) : ℚ) / 2) ^ 2)

end

end A014980.P10452450638398455020

/-! ## A014980.P1113896633918149592

`floor(cosh(log(a(n-1)))²)` with `a(0)=5`
-/

namespace A014980.P1113896633918149592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  ⌊Real.cosh (Real.log (a (n - 1) : ℝ)) ^ 2⌋

end

end A014980.P1113896633918149592

/-! ## A014980.P9867639639494124039

`ceil(sinh(log(a(n-1)))²)` with `a(0)=5`
-/

namespace A014980.P9867639639494124039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  ⌈Real.sinh (Real.log (a (n - 1) : ℝ)) ^ 2⌉

end

end A014980.P9867639639494124039

/-! ## A014980.P13540200842409926608

`ceil(4*5^2^(n-3))`
-/

namespace A014980.P13540200842409926608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈4 * (5 : ℝ) ^ ((2 : ℚ) ^ ((n : ℤ) - 3 : ℤ) : ℝ)⌉

end

end A014980.P13540200842409926608

/-!
# A014981: a(n) = c(prime(n))/prime(n), where c = Perrin sequence A001608 (starting 0,2,3,...) and prime(n) is the n-th prime.

The programs for A014981, there is no canonical definition to state claims against.
-/

/-! ## A014981.P11963563921865860456

`A113788(p?[xor(1, n)])`
-/

namespace A014981.P11963563921865860456
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113788 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A014981.P11963563921865860456

/-! ## A014981.P7831690754064141027

`A127687(p?[comp[n²]])`
-/

namespace A014981.P7831690754064141027
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127687 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A014981.P7831690754064141027

/-! ## A014981.P4782472141640947401

`A113788(Δ[A007504(n)])`
-/

namespace A014981.P4782472141640947401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113788 (f1 (n + 1) - f1 n).toNat

end

end A014981.P4782472141640947401

/-! ## A014981.P15007024863586980575

`A127687(Δ[A007504(n)])`
-/

namespace A014981.P15007024863586980575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127687 (f1 (n + 1) - f1 n).toNat

end

end A014981.P15007024863586980575

/-! ## A014981.P6904549564841021054

`A127687(record[A051698(n)])`
-/

namespace A014981.P6904549564841021054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051698 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127687 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A014981.P6904549564841021054

/-! ## A014981.P17509355735076851447

`A113788(A000040(n+1))`
-/

namespace A014981.P17509355735076851447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113788 (A000040 (n + 1)).toNat

end

end A014981.P17509355735076851447

/-! ## A014981.P2823231177604190221

`A113788(A008578(n+2))`
-/

namespace A014981.P2823231177604190221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113788 (A008578 (n + 2)).toNat

end

end A014981.P2823231177604190221

/-! ## A014981.P12215768601662045387

`A018243(A162786(n+2))`
-/

namespace A014981.P12215768601662045387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018243 (A162786 (n + 2)).toNat

end

end A014981.P12215768601662045387

/-! ## A014981.P7841822033767738627

`A127687(A175787(n+2))`
-/

namespace A014981.P7841822033767738627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127687 (A175787 (n + 2)).toNat

end

end A014981.P7841822033767738627

/-! ## A014981.P4243319629120596876

`A113788(eq[1, A032741(n)])`
-/

namespace A014981.P4243319629120596876
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113788 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A014981.P4243319629120596876

/-! ## A014981.P4865024397218774894

`A127687(eq[1, A105700(n)])`
-/

namespace A014981.P4865024397218774894
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127687 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A014981.P4865024397218774894

/-! ## A014981.P920247833125346796

`A113788(record[A006530(n+2)])`
-/

namespace A014981.P920247833125346796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113788 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A014981.P920247833125346796

/-! ## A014981.P17370220159868830808

`A113788(record[A014963(n+2)])`
-/

namespace A014981.P17370220159868830808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113788 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A014981.P17370220159868830808

/-! ## A014981.P2549958654935779910

`A127687(record[A006530(n+2)])`
-/

namespace A014981.P2549958654935779910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127687 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A014981.P2549958654935779910

/-! ## A014981.P16838404609888388858

`A113788(record[A020639(n+2)])`
-/

namespace A014981.P16838404609888388858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113788 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A014981.P16838404609888388858

/-! ## A014981.P17178559605622223107

`A127687(record[A014963(n+2)])`
-/

namespace A014981.P17178559605622223107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127687 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A014981.P17178559605622223107

/-! ## A014981.P940733567850942885

`A127687(record[A020639(n+2)])`
-/

namespace A014981.P940733567850942885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127687 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A014981.P940733567850942885

/-! ## A014981.P2003684255128407045

`A127687(record[A127705(n+2)])`
-/

namespace A014981.P2003684255128407045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127705 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127687 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A014981.P2003684255128407045

/-! ## A014981.P8642423866903893678

`A113788(record[p?[A304105(n+1)]])`
-/

namespace A014981.P8642423866903893678
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304105 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113788 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A014981.P8642423866903893678

/-! ## A014981.P16433698697150964515

`A113788(A007504(n+1)-A007504(n))`
-/

namespace A014981.P16433698697150964515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113788 (A007504 (n + 1) - A007504 n).toNat

end

end A014981.P16433698697150964515

/-!
# A014982: Number of "coherent" reduced decompositions for the longest permutation n n-1 n-2 ... 3 2 1 in the symmetric group on n letters.

The programs for A014982, there is no canonical definition to state claims against.
-/

/-! ## A014982.P3927787230438325095

`A175495(∏[A342517(2^n-1)])`
-/

namespace A014982.P3927787230438325095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342517 (2 ^ n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175495 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A014982.P3927787230438325095

/-!
# A014983: a(n) = (1 - (-3)^n)/4.

The programs for A014983, the canonical program `A014983.P11933017260358448092` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014983 has offset 0).

The definition of A014983 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A014983.P10419227499805426756

`a(n-1)+(-3)^(n-1)` with `a(0)=0`
-/

namespace A014983.P10419227499805426756
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (-3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)

end

end A014983.P10419227499805426756

namespace A014983

/-- `a(n-1)+(-3)^(n-1)` -/
def P10419227499805426756.Spec : Prop :=
  ∀ n, P10419227499805426756.a n = (A014983 n : ℚ)

end A014983

/-! ## A014983.P11933017260358448092

`A084222(n)-1`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A014983

/-- `A084222(n)-1` -/
def P11933017260358448092.Spec : Prop :=
  ∀ n, P11933017260358448092.a n = A014983 n

theorem P11933017260358448092.correct : P11933017260358448092.Spec := by
  intro n
  simp only [A014983]

end A014983

/-! ## A014983.P2520798701644474411

`(1-(-3)^n)/4`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A014983.P2520798701644474411
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 - (-3) ^ n : ℚ) / 4

end

end A014983.P2520798701644474411

namespace A014983

/-- `(1-(-3)^n)/4` -/
def P2520798701644474411.Spec : Prop :=
  ∀ n, P2520798701644474411.a n = (A014983 n : ℚ)

end A014983

/-! ## A014983.P4953429462498731933

`∑[ogf(x/(1+3x))]`
-/

namespace A014983.P4953429462498731933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1] [1, 3] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014983.P4953429462498731933

namespace A014983

/-- `∑[ogf(x/(1+3x))]` -/
def P4953429462498731933.Spec : Prop :=
  ∀ n, P4953429462498731933.a n = A014983 n

end A014983

/-! ## A014983.P4243611312958373198

`ogf(x/(1+2x-3x^2))`
-/

namespace A014983.P4243611312958373198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1] [1, 2, -3] n

end

end A014983.P4243611312958373198

namespace A014983

/-- `ogf(x/(1+2x-3x^2))` -/
def P4243611312958373198.Spec : Prop :=
  ∀ n, P4243611312958373198.a n = A014983 n

end A014983

/-! ## A014983.P10911462262927568883

`1-3*a(n-1)` with `a(0)=0`
-/

namespace A014983.P10911462262927568883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  1 - 3 * a (n - 1)

end

end A014983.P10911462262927568883

namespace A014983

/-- `1-3*a(n-1)` -/
def P10911462262927568883.Spec : Prop :=
  ∀ n, P10911462262927568883.a n = A014983 n

end A014983

/-! ## A014983.P346720553331441105

`1-a(n-1)/cot(atan(3))` with `a(0)=0`
-/

namespace A014983.P346720553331441105
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [0] fun n a =>
  1 - a (n - 1) / Real.cot (Real.arctan (3 : ℝ))

end

end A014983.P346720553331441105

namespace A014983

/-- `1-a(n-1)/cot(atan(3))` -/
def P346720553331441105.Spec : Prop :=
  ∀ n, P346720553331441105.a n = (A014983 n : ℝ)

end A014983

/-! ## A014983.P2554300708571658189

`1-a(n-1)/sqrt(1/9)` with `a(0)=0`
-/

namespace A014983.P2554300708571658189
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [0] fun n a =>
  1 - a (n - 1) / Real.sqrt ((1 : ℚ) / 9 : ℝ)

end

end A014983.P2554300708571658189

namespace A014983

/-- `1-a(n-1)/sqrt(1/9)` -/
def P2554300708571658189.Spec : Prop :=
  ∀ n, P2554300708571658189.a n = (A014983 n : ℝ)

end A014983

/-! ## A014983.P16457561881968450041

`a(n-1)/(2/3-1)+1` with `a(0)=0`
-/

namespace A014983.P16457561881968450041
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) / ((2 : ℚ) / 3 - 1) + 1

end

end A014983.P16457561881968450041

namespace A014983

/-- `a(n-1)/(2/3-1)+1` -/
def P16457561881968450041.Spec : Prop :=
  ∀ n, P16457561881968450041.a n = (A014983 n : ℚ)

end A014983

/-! ## A014983.P744688647078446182

`1-a(n-1)-a(n-1)-a(n-1)` with `a(0)=0`
-/

namespace A014983.P744688647078446182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  1 - a (n - 1) - a (n - 1) - a (n - 1)

end

end A014983.P744688647078446182

namespace A014983

/-- `1-a(n-1)-a(n-1)-a(n-1)` -/
def P744688647078446182.Spec : Prop :=
  ∀ n, P744688647078446182.a n = A014983 n

end A014983

/-! ## A014983.P11999562831144845043

`1-A084567(n)`
-/

namespace A014983.P11999562831144845043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A084567 n

end

end A014983.P11999562831144845043

namespace A014983

/-- `1-A084567(n)` -/
def P11999562831144845043.Spec : Prop :=
  ∀ n, P11999562831144845043.a n = A014983 n

end A014983

/-! ## A014983.P477651417188391919

`floor(A165553(n)/2)`
-/

namespace A014983.P477651417188391919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A165553 n : ℚ) / 2⌋

end

end A014983.P477651417188391919

namespace A014983

/-- `floor(A165553(n)/2)` -/
def P477651417188391919.Spec : Prop :=
  ∀ n, P477651417188391919.a n = A014983 n

end A014983

/-! ## A014983.P9185214696914866306

`ceil(A341463(n)/2)`
-/

namespace A014983.P9185214696914866306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A341463 n : ℚ) / 2⌉

end

end A014983.P9185214696914866306

namespace A014983

/-- `ceil(A341463(n)/2)` -/
def P9185214696914866306.Spec : Prop :=
  ∀ n, P9185214696914866306.a n = A014983 n

end A014983

/-! ## A014983.P1548548488940218686

`floor((1-A076040(n))/2)`
-/

namespace A014983.P1548548488940218686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(1 - A076040 n : ℚ) / 2⌋

end

end A014983.P1548548488940218686

namespace A014983

/-- `floor((1-A076040(n))/2)` -/
def P1548548488940218686.Spec : Prop :=
  ∀ n, P1548548488940218686.a n = A014983 n

end A014983

/-! ## A014983.P3147840742559359281

`∑[A141413(n+1)]+1`
-/

namespace A014983.P3147840742559359281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141413 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A014983.P3147840742559359281

namespace A014983

/-- `∑[A141413(n+1)]+1` -/
def P3147840742559359281.Spec : Prop :=
  ∀ n, P3147840742559359281.a n = A014983 n

end A014983

/-! ## A014983.P3217252671244849923

`A015518(n)*A062157(n)`
-/

namespace A014983.P3217252671244849923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015518 n * A062157 n

end

end A014983.P3217252671244849923

namespace A014983

/-- `A015518(n)*A062157(n)` -/
def P3217252671244849923.Spec : Prop :=
  ∀ n, P3217252671244849923.a n = A014983 n

end A014983

/-! ## A014983.P12183643488083314223

`A015518(n)*A033999(n+1)`
-/

namespace A014983.P12183643488083314223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015518 n * A033999 (n + 1)

end

end A014983.P12183643488083314223

namespace A014983

/-- `A015518(n)*A033999(n+1)` -/
def P12183643488083314223.Spec : Prop :=
  ∀ n, P12183643488083314223.a n = A014983 n

end A014983

/-! ## A014983.P12150295713943501513

`1-A033999(n)*A054878(n)`
-/

namespace A014983.P12150295713943501513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A033999 n * A054878 n

end

end A014983.P12150295713943501513

namespace A014983

/-- `1-A033999(n)*A054878(n)` -/
def P12150295713943501513.Spec : Prop :=
  ∀ n, P12150295713943501513.a n = A014983 n

end A014983

/-! ## A014983.P4522123153456338880

`(A015518(n)-A054878(n))*A015518(n)`
-/

namespace A014983.P4522123153456338880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A015518 n - A054878 n) * A015518 n

end

end A014983.P4522123153456338880

namespace A014983

/-- `(A015518(n)-A054878(n))*A015518(n)` -/
def P4522123153456338880.Spec : Prop :=
  ∀ n, P4522123153456338880.a n = A014983 n

end A014983

/-! ## A014983.P11576994182905344512

`(A001045(n+1)-A097073(n))*A015518(n)`
-/

namespace A014983.P11576994182905344512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001045 (n + 1) - A097073 n) * A015518 n

end

end A014983.P11576994182905344512

namespace A014983

/-- `(A001045(n+1)-A097073(n))*A015518(n)` -/
def P11576994182905344512.Spec : Prop :=
  ∀ n, P11576994182905344512.a n = A014983 n

end A014983

/-!
# A014984: Inverse of 975th cyclotomic polynomial.

The programs for A014984, there is no canonical definition to state claims against.
-/

/-! ## A014984.P9811110763581753888

`A014019(n)*A015959(n)`
-/

namespace A014984.P9811110763581753888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014019 n * A015959 n

end

end A014984.P9811110763581753888

/-!
# A014985: a(n) = (1 - (-4)^n)/5.

The programs for A014985, the canonical program `A014985.P10132656760204407163` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014985 has offset 1).

The definition of A014985 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A014985.P10132656760204407163

`(1-(-4)^(n+1))/5`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A014985

/-- `(1-(-4)^(n+1))/5` -/
def P10132656760204407163.Spec : Prop :=
  ∀ n, P10132656760204407163.a n = (A014985 (n + 1) : ℚ)

end A014985

/-! ## A014985.P11601673400176267865

`ogf(1/(1+3x-4x^2))`
-/

namespace A014985.P11601673400176267865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, 3, -4] n

end

end A014985.P11601673400176267865

namespace A014985

/-- `ogf(1/(1+3x-4x^2))` -/
def P11601673400176267865.Spec : Prop :=
  ∀ n, P11601673400176267865.a n = A014985 (n + 1)

end A014985

/-! ## A014985.P11668406319855211699

`1-4*a(n-1)` with `a(0)=1`
-/

namespace A014985.P11668406319855211699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  1 - 4 * a (n - 1)

end

end A014985.P11668406319855211699

namespace A014985

/-- `1-4*a(n-1)` -/
def P11668406319855211699.Spec : Prop :=
  ∀ n, P11668406319855211699.a n = A014985 (n + 1)

end A014985

/-! ## A014985.P17840427223312129915

`a(n-1)+(-4)^n` with `a(0)=1`
-/

namespace A014985.P17840427223312129915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (-4) ^ n

end

end A014985.P17840427223312129915

namespace A014985

/-- `a(n-1)+(-4)^n` -/
def P17840427223312129915.Spec : Prop :=
  ∀ n, P17840427223312129915.a n = A014985 (n + 1)

end A014985

/-! ## A014985.P15224235318394963838

`xor(-4^n, a(n-1))` with `a(0)=1`
-/

namespace A014985.P15224235318394963838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.xor (-(4 ^ n : ℤ)) (a (n - 1))

end

end A014985.P15224235318394963838

namespace A014985

/-- `xor(-4^n, a(n-1))` -/
def P15224235318394963838.Spec : Prop :=
  ∀ n, P15224235318394963838.a n = A014985 (n + 1)

end A014985

/-! ## A014985.P18073679372478100223

`1-a(n-1)/(1/2)²` with `a(0)=1`
-/

namespace A014985.P18073679372478100223
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  1 - a (n - 1) / ((1 : ℚ) / 2) ^ 2

end

end A014985.P18073679372478100223

namespace A014985

/-- `1-a(n-1)/(1/2)²` -/
def P18073679372478100223.Spec : Prop :=
  ∀ n, P18073679372478100223.a n = (A014985 (n + 1) : ℚ)

end A014985

/-! ## A014985.P13536343212420737763

`a(n-1)/(3/4-1)+1` with `a(0)=1`
-/

namespace A014985.P13536343212420737763
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) / ((3 : ℚ) / 4 - 1) + 1

end

end A014985.P13536343212420737763

namespace A014985

/-- `a(n-1)/(3/4-1)+1` -/
def P13536343212420737763.Spec : Prop :=
  ∀ n, P13536343212420737763.a n = (A014985 (n + 1) : ℚ)

end A014985

/-! ## A014985.P5463017390921323002

`floor(∑[a(n-1)/(3/4-1)])` with `a(0)=1`
-/

namespace A014985.P5463017390921323002
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) / ((3 : ℚ) / 4 - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A014985.P5463017390921323002

namespace A014985

/-- `floor(∑[a(n-1)/(3/4-1)])` -/
def P5463017390921323002.Spec : Prop :=
  ∀ n, P5463017390921323002.a n = A014985 (n + 1)

end A014985

/-! ## A014985.P8987841985076891083

`1-floor(a(n-1)/(1-3/4))` with `a(0)=1`
-/

namespace A014985.P8987841985076891083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  1 - ⌊(a (n - 1) : ℚ) / (1 - (3 : ℚ) / 4)⌋

end

end A014985.P8987841985076891083

namespace A014985

/-- `1-floor(a(n-1)/(1-3/4))` -/
def P8987841985076891083.Spec : Prop :=
  ∀ n, P8987841985076891083.a n = A014985 (n + 1)

end A014985

/-! ## A014985.P15808576860201782298

`1-a(n-1)-a(n-1)-a(n-1)-a(n-1)` with `a(0)=1`
-/

namespace A014985.P15808576860201782298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  1 - a (n - 1) - a (n - 1) - a (n - 1) - a (n - 1)

end

end A014985.P15808576860201782298

namespace A014985

/-- `1-a(n-1)-a(n-1)-a(n-1)-a(n-1)` -/
def P15808576860201782298.Spec : Prop :=
  ∀ n, P15808576860201782298.a n = A014985 (n + 1)

end A014985

/-! ## A014985.P964277176099894153

`A077950(4*n)`
-/

namespace A014985.P964277176099894153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077950 (4 * n)

end

end A014985.P964277176099894153

namespace A014985

/-- `A077950(4*n)` -/
def P964277176099894153.Spec : Prop :=
  ∀ n, P964277176099894153.a n = A014985 (n + 1)

end A014985

/-! ## A014985.P2639057396918259718

`A077973(4*n)`
-/

namespace A014985.P2639057396918259718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077973 (4 * n)

end

end A014985.P2639057396918259718

namespace A014985

/-- `A077973(4*n)` -/
def P2639057396918259718.Spec : Prop :=
  ∀ n, P2639057396918259718.a n = A014985 (n + 1)

end A014985

/-! ## A014985.P16671407335347415124

`A166114(n+1)-1`
-/

namespace A014985.P16671407335347415124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166114 (n + 1) - 1

end

end A014985.P16671407335347415124

namespace A014985

/-- `A166114(n+1)-1` -/
def P16671407335347415124.Spec : Prop :=
  ∀ n, P16671407335347415124.a n = A014985 (n + 1)

end A014985

/-! ## A014985.P9754841312025001560

`5-4*A166114(n)`
-/

namespace A014985.P9754841312025001560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 - 4 * A166114 n

end

end A014985.P9754841312025001560

namespace A014985

/-- `5-4*A166114(n)` -/
def P9754841312025001560.Spec : Prop :=
  ∀ n, P9754841312025001560.a n = A014985 (n + 1)

end A014985

/-! ## A014985.P17763994143241559363

`∑[2*A009117(n)]-1`
-/

namespace A014985.P17763994143241559363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A009117 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A014985.P17763994143241559363

namespace A014985

/-- `∑[2*A009117(n)]-1` -/
def P17763994143241559363.Spec : Prop :=
  ∀ n, P17763994143241559363.a n = A014985 (n + 1)

end A014985

/-! ## A014985.P17040414449641405629

`A262710(n)+a(n-1)` with `a(0)=1`
-/

namespace A014985.P17040414449641405629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A262710 n + a (n - 1)

end

end A014985.P17040414449641405629

namespace A014985

/-- `A262710(n)+a(n-1)` -/
def P17040414449641405629.Spec : Prop :=
  ∀ n, P17040414449641405629.a n = A014985 (n + 1)

end A014985

/-! ## A014985.P3019816961879820319

`A164111(n+n)+a(n-1)` with `a(0)=1`
-/

namespace A014985.P3019816961879820319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A164111 (n + n) + a (n - 1)

end

end A014985.P3019816961879820319

namespace A014985

/-- `A164111(n+n)+a(n-1)` -/
def P3019816961879820319.Spec : Prop :=
  ∀ n, P3019816961879820319.a n = A014985 (n + 1)

end A014985

/-! ## A014985.P4268491243304667752

`xor(A033999(n), A115243(n))`
-/

namespace A014985.P4268491243304667752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A033999 n) (A115243 n)

end

end A014985.P4268491243304667752

namespace A014985

/-- `xor(A033999(n), A115243(n))` -/
def P4268491243304667752.Spec : Prop :=
  ∀ n, P4268491243304667752.a n = A014985 (n + 1)

end A014985

/-! ## A014985.P15326257406016910463

`A015521(n+1)*A033999(n)`
-/

namespace A014985.P15326257406016910463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015521 (n + 1) * A033999 n

end

end A014985.P15326257406016910463

namespace A014985

/-- `A015521(n+1)*A033999(n)` -/
def P15326257406016910463.Spec : Prop :=
  ∀ n, P15326257406016910463.a n = A014985 (n + 1)

end A014985

/-! ## A014985.P14672421206479568748

`A007909(Δ[n²])*A033999(n)`
-/

namespace A014985.P14672421206479568748
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007909 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat * A033999 n

end

end A014985.P14672421206479568748

namespace A014985

/-- `A007909(Δ[n²])*A033999(n)` -/
def P14672421206479568748.Spec : Prop :=
  ∀ n, P14672421206479568748.a n = A014985 (n + 1)

end A014985

/-!
# A014986: a(n) = (1 - (-5)^n)/6.

The programs for A014986, the canonical program `A014986.P14612529213181998698` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014986 has offset 1).

The definition of A014986 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A014986.P14612529213181998698

`(1-(-5)^(n+1))/6`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A014986

/-- `(1-(-5)^(n+1))/6` -/
def P14612529213181998698.Spec : Prop :=
  ∀ n, P14612529213181998698.a n = (A014986 (n + 1) : ℚ)

end A014986

/-! ## A014986.P17045346579846188722

`ogf(1/(1+4x-5x^2))`
-/

namespace A014986.P17045346579846188722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, 4, -5] n

end

end A014986.P17045346579846188722

namespace A014986

/-- `ogf(1/(1+4x-5x^2))` -/
def P17045346579846188722.Spec : Prop :=
  ∀ n, P17045346579846188722.a n = A014986 (n + 1)

end A014986

/-! ## A014986.P13035614165826985469

`1-5*a(n-1)` with `a(0)=1`
-/

namespace A014986.P13035614165826985469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  1 - 5 * a (n - 1)

end

end A014986.P13035614165826985469

namespace A014986

/-- `1-5*a(n-1)` -/
def P13035614165826985469.Spec : Prop :=
  ∀ n, P13035614165826985469.a n = A014986 (n + 1)

end A014986

/-! ## A014986.P534424466187580261

`a(n-1)+(-5)^n` with `a(0)=1`
-/

namespace A014986.P534424466187580261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (-5) ^ n

end

end A014986.P534424466187580261

namespace A014986

/-- `a(n-1)+(-5)^n` -/
def P534424466187580261.Spec : Prop :=
  ∀ n, P534424466187580261.a n = A014986 (n + 1)

end A014986

/-! ## A014986.P15759858199368844719

`a(n-1)/(4/5-1)+1` with `a(0)=1`
-/

namespace A014986.P15759858199368844719
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) / ((4 : ℚ) / 5 - 1) + 1

end

end A014986.P15759858199368844719

namespace A014986

/-- `a(n-1)/(4/5-1)+1` -/
def P15759858199368844719.Spec : Prop :=
  ∀ n, P15759858199368844719.a n = (A014986 (n + 1) : ℚ)

end A014986

/-! ## A014986.P4927649989808842321

`1-a(n-1)/(1-4/5)` with `a(0)=1`
-/

namespace A014986.P4927649989808842321
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  1 - a (n - 1) / (1 - (4 : ℚ) / 5)

end

end A014986.P4927649989808842321

namespace A014986

/-- `1-a(n-1)/(1-4/5)` -/
def P4927649989808842321.Spec : Prop :=
  ∀ n, P4927649989808842321.a n = (A014986 (n + 1) : ℚ)

end A014986

/-! ## A014986.P8761360976839497810

`1-a(n-1)-a(n-1)-a(n-1)-a(n-1)-a(n-1)` with `a(0)=1`
-/

namespace A014986.P8761360976839497810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  1 - a (n - 1) - a (n - 1) - a (n - 1) - a (n - 1) - a (n - 1)

end

end A014986.P8761360976839497810

namespace A014986

/-- `1-a(n-1)-a(n-1)-a(n-1)-a(n-1)-a(n-1)` -/
def P8761360976839497810.Spec : Prop :=
  ∀ n, P8761360976839497810.a n = A014986 (n + 1)

end A014986

/-! ## A014986.P595366636017465924

`A166122(n+1)-1`
-/

namespace A014986.P595366636017465924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166122 (n + 1) - 1

end

end A014986.P595366636017465924

namespace A014986

/-- `A166122(n+1)-1` -/
def P595366636017465924.Spec : Prop :=
  ∀ n, P595366636017465924.a n = A014986 (n + 1)

end A014986

/-! ## A014986.P18249356785079193012

`A015531(n+1)*A033999(n)`
-/

namespace A014986.P18249356785079193012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015531 (n + 1) * A033999 n

end

end A014986.P18249356785079193012

namespace A014986

/-- `A015531(n+1)*A033999(n)` -/
def P18249356785079193012.Spec : Prop :=
  ∀ n, P18249356785079193012.a n = A014986 (n + 1)

end A014986

/-! ## A014986.P5814393182239743719

`A015531(n+1)*A062157(n+1)`
-/

namespace A014986.P5814393182239743719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015531 (n + 1) * A062157 (n + 1)

end

end A014986.P5814393182239743719

namespace A014986

/-- `A015531(n+1)*A062157(n+1)` -/
def P5814393182239743719.Spec : Prop :=
  ∀ n, P5814393182239743719.a n = A014986 (n + 1)

end A014986

/-! ## A014986.P10794410286093821687

`(1-A010673(n))*A015531(n+1)`
-/

namespace A014986.P10794410286093821687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A010673 n) * A015531 (n + 1)

end

end A014986.P10794410286093821687

namespace A014986

/-- `(1-A010673(n))*A015531(n+1)` -/
def P10794410286093821687.Spec : Prop :=
  ∀ n, P10794410286093821687.a n = A014986 (n + 1)

end A014986

/-! ## A014986.P9387301845335325023

`A015531(n+1)*A133730(2*n)`
-/

namespace A014986.P9387301845335325023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015531 (n + 1) * A133730 (2 * n)

end

end A014986.P9387301845335325023

namespace A014986

/-- `A015531(n+1)*A133730(2*n)` -/
def P9387301845335325023.Spec : Prop :=
  ∀ n, P9387301845335325023.a n = A014986 (n + 1)

end A014986

/-! ## A014986.P4243543527622782271

`(1-2*A000035(n))*A015531(n+1)`
-/

namespace A014986.P4243543527622782271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - 2 * A000035 n) * A015531 (n + 1)

end

end A014986.P4243543527622782271

namespace A014986

/-- `(1-2*A000035(n))*A015531(n+1)` -/
def P4243543527622782271.Spec : Prop :=
  ∀ n, P4243543527622782271.a n = A014986 (n + 1)

end A014986

/-! ## A014986.P4532487294004153845

`(A054878(n)-A015518(n))*A083425(n)`
-/

namespace A014986.P4532487294004153845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A054878 n - A015518 n) * A083425 n

end

end A014986.P4532487294004153845

namespace A014986

/-- `(A054878(n)-A015518(n))*A083425(n)` -/
def P4532487294004153845.Spec : Prop :=
  ∀ n, P4532487294004153845.a n = A014986 (n + 1)

end A014986

/-! ## A014986.P15120068744972631177

`(A054878(n)-A015518(n))*A015531(n+1)`
-/

namespace A014986.P15120068744972631177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A054878 n - A015518 n) * A015531 (n + 1)

end

end A014986.P15120068744972631177

namespace A014986

/-- `(A054878(n)-A015518(n))*A015531(n+1)` -/
def P15120068744972631177.Spec : Prop :=
  ∀ n, P15120068744972631177.a n = A014986 (n + 1)

end A014986

/-! ## A014986.P6345452809546160595

`(A078008(n)-A001045(n))*A015531(n+1)`
-/

namespace A014986.P6345452809546160595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A078008 n - A001045 n) * A015531 (n + 1)

end

end A014986.P6345452809546160595

namespace A014986

/-- `(A078008(n)-A001045(n))*A015531(n+1)` -/
def P6345452809546160595.Spec : Prop :=
  ∀ n, P6345452809546160595.a n = A014986 (n + 1)

end A014986

/-! ## A014986.P1242121251868498511

`(A109499(n)-A015521(n))*A015531(n+1)`
-/

namespace A014986.P1242121251868498511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A109499 n - A015521 n) * A015531 (n + 1)

end

end A014986.P1242121251868498511

namespace A014986

/-- `(A109499(n)-A015521(n))*A015531(n+1)` -/
def P1242121251868498511.Spec : Prop :=
  ∀ n, P1242121251868498511.a n = A014986 (n + 1)

end A014986

/-! ## A014986.P8705170428025907756

`(A109500(n)-A015531(n))*A015531(n+1)`
-/

namespace A014986.P8705170428025907756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A109500 n - A015531 n) * A015531 (n + 1)

end

end A014986.P8705170428025907756

namespace A014986

/-- `(A109500(n)-A015531(n))*A015531(n+1)` -/
def P8705170428025907756.Spec : Prop :=
  ∀ n, P8705170428025907756.a n = A014986 (n + 1)

end A014986

/-!
# A014987: a(n) = (1 - (-6)^n)/7.

The programs for A014987, the canonical program `A014987.P4138448751311621155` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014987 has offset 1).

The definition of A014987 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A014987.P4138448751311621155

`(1-(-6)^(n+1))/7`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A014987

/-- `(1-(-6)^(n+1))/7` -/
def P4138448751311621155.Spec : Prop :=
  ∀ n, P4138448751311621155.a n = (A014987 (n + 1) : ℚ)

end A014987

/-! ## A014987.P17886395600977748273

`ogf(1/(1+5x-6x^2))`
-/

namespace A014987.P17886395600977748273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, 5, -6] n

end

end A014987.P17886395600977748273

namespace A014987

/-- `ogf(1/(1+5x-6x^2))` -/
def P17886395600977748273.Spec : Prop :=
  ∀ n, P17886395600977748273.a n = A014987 (n + 1)

end A014987

/-! ## A014987.P3901345700167919301

`1-6*a(n-1)` with `a(0)=1`
-/

namespace A014987.P3901345700167919301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  1 - 6 * a (n - 1)

end

end A014987.P3901345700167919301

namespace A014987

/-- `1-6*a(n-1)` -/
def P3901345700167919301.Spec : Prop :=
  ∀ n, P3901345700167919301.a n = A014987 (n + 1)

end A014987

/-! ## A014987.P6598888525100188977

`a(n-1)+(-6)^n` with `a(0)=1`
-/

namespace A014987.P6598888525100188977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (-6) ^ n

end

end A014987.P6598888525100188977

namespace A014987

/-- `a(n-1)+(-6)^n` -/
def P6598888525100188977.Spec : Prop :=
  ∀ n, P6598888525100188977.a n = A014987 (n + 1)

end A014987

/-! ## A014987.P15496530326836931618

`1-a(n-1)/cot(atan(6))` with `a(0)=1`
-/

namespace A014987.P15496530326836931618
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [1] fun n a =>
  1 - a (n - 1) / Real.cot (Real.arctan (6 : ℝ))

end

end A014987.P15496530326836931618

namespace A014987

/-- `1-a(n-1)/cot(atan(6))` -/
def P15496530326836931618.Spec : Prop :=
  ∀ n, P15496530326836931618.a n = (A014987 (n + 1) : ℝ)

end A014987

/-! ## A014987.P16395378598112929853

`A015540(n+1)*A033999(n)`
-/

namespace A014987.P16395378598112929853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015540 (n + 1) * A033999 n

end

end A014987.P16395378598112929853

namespace A014987

/-- `A015540(n+1)*A033999(n)` -/
def P16395378598112929853.Spec : Prop :=
  ∀ n, P16395378598112929853.a n = A014987 (n + 1)

end A014987

/-! ## A014987.P17866248792369813655

`floor(∑[A000400(n)/A033999(n)])`
-/

namespace A014987.P17866248792369813655
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000400 n : ℚ) / (A033999 n : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A014987.P17866248792369813655

namespace A014987

/-- `floor(∑[A000400(n)/A033999(n)])` -/
def P17866248792369813655.Spec : Prop :=
  ∀ n, P17866248792369813655.a n = A014987 (n + 1)

end A014987

/-! ## A014987.P16812165426534722610

`2-∑[A099856(n)*A123344(n)]`
-/

namespace A014987.P16812165426534722610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099856 n * A123344 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014987.P16812165426534722610

namespace A014987

/-- `2-∑[A099856(n)*A123344(n)]` -/
def P16812165426534722610.Spec : Prop :=
  ∀ n, P16812165426534722610.a n = A014987 (n + 1)

end A014987

/-! ## A014987.P7302228898858358159

`A015540(n+1)*A062157(n+1)`
-/

namespace A014987.P7302228898858358159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015540 (n + 1) * A062157 (n + 1)

end

end A014987.P7302228898858358159

namespace A014987

/-- `A015540(n+1)*A062157(n+1)` -/
def P7302228898858358159.Spec : Prop :=
  ∀ n, P7302228898858358159.a n = A014987 (n + 1)

end A014987

/-! ## A014987.P1749688689624563955

`(1-A010673(n))*A015540(n+1)`
-/

namespace A014987.P1749688689624563955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A010673 n) * A015540 (n + 1)

end

end A014987.P1749688689624563955

namespace A014987

/-- `(1-A010673(n))*A015540(n+1)` -/
def P1749688689624563955.Spec : Prop :=
  ∀ n, P1749688689624563955.a n = A014987 (n + 1)

end A014987

/-! ## A014987.P3662512058601168456

`1-A033999(n+1)*A109501(n+1)`
-/

namespace A014987.P3662512058601168456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A033999 (n + 1) * A109501 (n + 1)

end

end A014987.P3662512058601168456

namespace A014987

/-- `1-A033999(n+1)*A109501(n+1)` -/
def P3662512058601168456.Spec : Prop :=
  ∀ n, P3662512058601168456.a n = A014987 (n + 1)

end A014987

/-! ## A014987.P9759128919689172586

`A056594(2*n)*A109501(n+1)+1`
-/

namespace A014987.P9759128919689172586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (2 * n) * A109501 (n + 1) + 1

end

end A014987.P9759128919689172586

namespace A014987

/-- `A056594(2*n)*A109501(n+1)+1` -/
def P9759128919689172586.Spec : Prop :=
  ∀ n, P9759128919689172586.a n = A014987 (n + 1)

end A014987

/-! ## A014987.P11300766647521115082

`(A054878(n)-A015518(n))*A015540(n+1)`
-/

namespace A014987.P11300766647521115082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A054878 n - A015518 n) * A015540 (n + 1)

end

end A014987.P11300766647521115082

namespace A014987

/-- `(A054878(n)-A015518(n))*A015540(n+1)` -/
def P11300766647521115082.Spec : Prop :=
  ∀ n, P11300766647521115082.a n = A014987 (n + 1)

end A014987

/-! ## A014987.P14671088866221698294

`(A109499(n)-A015521(n))*A015540(n+1)`
-/

namespace A014987.P14671088866221698294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A109499 n - A015521 n) * A015540 (n + 1)

end

end A014987.P14671088866221698294

namespace A014987

/-- `(A109499(n)-A015521(n))*A015540(n+1)` -/
def P14671088866221698294.Spec : Prop :=
  ∀ n, P14671088866221698294.a n = A014987 (n + 1)

end A014987

/-! ## A014987.P3351098114143011070

`(A109500(n)-A015531(n))*A015540(n+1)`
-/

namespace A014987.P3351098114143011070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A109500 n - A015531 n) * A015540 (n + 1)

end

end A014987.P3351098114143011070

namespace A014987

/-- `(A109500(n)-A015531(n))*A015540(n+1)` -/
def P3351098114143011070.Spec : Prop :=
  ∀ n, P3351098114143011070.a n = A014987 (n + 1)

end A014987

/-! ## A014987.P12094328520539951095

`(A109501(n)-A015540(n))*A015540(n+1)`
-/

namespace A014987.P12094328520539951095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A109501 n - A015540 n) * A015540 (n + 1)

end

end A014987.P12094328520539951095

namespace A014987

/-- `(A109501(n)-A015540(n))*A015540(n+1)` -/
def P12094328520539951095.Spec : Prop :=
  ∀ n, P12094328520539951095.a n = A014987 (n + 1)

end A014987

/-!
# A014988: Inverse of 979th cyclotomic polynomial.

The programs for A014988, there is no canonical definition to state claims against.
-/

/-! ## A014988.P10422952660529524922

`A015322(comp[A097517(n+1)])`
-/

namespace A014988.P10422952660529524922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097517 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015322 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A014988.P10422952660529524922

/-!
# A014989: a(n) = (1 - (-7)^n)/8.

The programs for A014989, the canonical program `A014989.P1783099611716390492` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014989 has offset 1).

The definition of A014989 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A014989.P1783099611716390492

`(1-(-7)^(n+1))/8`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A014989

/-- `(1-(-7)^(n+1))/8` -/
def P1783099611716390492.Spec : Prop :=
  ∀ n, P1783099611716390492.a n = (A014989 (n + 1) : ℚ)

end A014989

/-! ## A014989.P10377299001883843345

`ogf(1/(1+6x-7x^2))`
-/

namespace A014989.P10377299001883843345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, 6, -7] n

end

end A014989.P10377299001883843345

namespace A014989

/-- `ogf(1/(1+6x-7x^2))` -/
def P10377299001883843345.Spec : Prop :=
  ∀ n, P10377299001883843345.a n = A014989 (n + 1)

end A014989

/-! ## A014989.P5395794826620924031

`1-7*a(n-1)` with `a(0)=1`
-/

namespace A014989.P5395794826620924031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  1 - 7 * a (n - 1)

end

end A014989.P5395794826620924031

namespace A014989

/-- `1-7*a(n-1)` -/
def P5395794826620924031.Spec : Prop :=
  ∀ n, P5395794826620924031.a n = A014989 (n + 1)

end A014989

/-! ## A014989.P1205966502078291307

`a(n-1)+(-7)^n` with `a(0)=1`
-/

namespace A014989.P1205966502078291307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (-7) ^ n

end

end A014989.P1205966502078291307

namespace A014989

/-- `a(n-1)+(-7)^n` -/
def P1205966502078291307.Spec : Prop :=
  ∀ n, P1205966502078291307.a n = A014989 (n + 1)

end A014989

/-! ## A014989.P18404551811581494641

`1-a(n-1)/(1-6/7)` with `a(0)=1`
-/

namespace A014989.P18404551811581494641
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  1 - a (n - 1) / (1 - (6 : ℚ) / 7)

end

end A014989.P18404551811581494641

namespace A014989

/-- `1-a(n-1)/(1-6/7)` -/
def P18404551811581494641.Spec : Prop :=
  ∀ n, P18404551811581494641.a n = (A014989 (n + 1) : ℚ)

end A014989

/-! ## A014989.P846841778022085758

`A015552(n+1)*A056594(2*n)`
-/

namespace A014989.P846841778022085758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015552 (n + 1) * A056594 (2 * n)

end

end A014989.P846841778022085758

namespace A014989

/-- `A015552(n+1)*A056594(2*n)` -/
def P846841778022085758.Spec : Prop :=
  ∀ n, P846841778022085758.a n = A014989 (n + 1)

end A014989

/-! ## A014989.P10794161640804382705

`(A054878(n)-A015518(n))*A015552(n+1)`
-/

namespace A014989.P10794161640804382705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A054878 n - A015518 n) * A015552 (n + 1)

end

end A014989.P10794161640804382705

namespace A014989

/-- `(A054878(n)-A015518(n))*A015552(n+1)` -/
def P10794161640804382705.Spec : Prop :=
  ∀ n, P10794161640804382705.a n = A014989 (n + 1)

end A014989

/-! ## A014989.P3210535026526245874

`(A078008(n)-A001045(n))*A015552(n+1)`
-/

namespace A014989.P3210535026526245874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A078008 n - A001045 n) * A015552 (n + 1)

end

end A014989.P3210535026526245874

namespace A014989

/-- `(A078008(n)-A001045(n))*A015552(n+1)` -/
def P3210535026526245874.Spec : Prop :=
  ∀ n, P3210535026526245874.a n = A014989 (n + 1)

end A014989

/-! ## A014989.P8363893392039213606

`(A109499(n)-A015521(n))*A015552(n+1)`
-/

namespace A014989.P8363893392039213606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A109499 n - A015521 n) * A015552 (n + 1)

end

end A014989.P8363893392039213606

namespace A014989

/-- `(A109499(n)-A015521(n))*A015552(n+1)` -/
def P8363893392039213606.Spec : Prop :=
  ∀ n, P8363893392039213606.a n = A014989 (n + 1)

end A014989

/-! ## A014989.P11249169843586079566

`(A015552(n+1)-A271427(n))*A015552(n+1)`
-/

namespace A014989.P11249169843586079566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A015552 (n + 1) - A271427 n) * A015552 (n + 1)

end

end A014989.P11249169843586079566

namespace A014989

/-- `(A015552(n+1)-A271427(n))*A015552(n+1)` -/
def P11249169843586079566.Spec : Prop :=
  ∀ n, P11249169843586079566.a n = A014989 (n + 1)

end A014989

/-! ## A014989.P5526228069279248473

`(A093134(n)-A015565(n))*A015552(n+1)`
-/

namespace A014989.P5526228069279248473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A093134 n - A015565 n) * A015552 (n + 1)

end

end A014989.P5526228069279248473

namespace A014989

/-- `(A093134(n)-A015565(n))*A015552(n+1)` -/
def P5526228069279248473.Spec : Prop :=
  ∀ n, P5526228069279248473.a n = A014989 (n + 1)

end A014989

/-! ## A014989.P3542691275354154969

`A015552(n+1)/A014992(n+1)*A015585(n+1)`
-/

namespace A014989.P3542691275354154969
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A015552 (n + 1) : ℚ) / (A014992 (n + 1) : ℚ) * (A015585 (n + 1) : ℚ)

end

end A014989.P3542691275354154969

namespace A014989

/-- `A015552(n+1)/A014992(n+1)*A015585(n+1)` -/
def P3542691275354154969.Spec : Prop :=
  ∀ n, P3542691275354154969.a n = (A014989 (n + 1) : ℚ)

end A014989

/-!
# A014990: a(n) = (1 - (-8)^n)/9.

The programs for A014990, the canonical program `A014990.P11688930632471218094` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014990 has offset 1).

The definition of A014990 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A014990.P11688930632471218094

`(-1)^(n+2)*A015565(n+1)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A014990

/-- `(-1)^(n+2)*A015565(n+1)` -/
def P11688930632471218094.Spec : Prop :=
  ∀ n, P11688930632471218094.a n = A014990 (n + 1)

theorem P11688930632471218094.correct : P11688930632471218094.Spec := by
  intro n
  simp only [A014990, Nat.add_sub_cancel]

end A014990

/-! ## A014990.P13013437655060514213

`(1-(-8)^(n+1))/9`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A014990.P13013437655060514213
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 - (-8) ^ (n + 1) : ℚ) / 9

end

end A014990.P13013437655060514213

namespace A014990

/-- `(1-(-8)^(n+1))/9` -/
def P13013437655060514213.Spec : Prop :=
  ∀ n, P13013437655060514213.a n = (A014990 (n + 1) : ℚ)

end A014990

/-! ## A014990.P9099001452152652699

`ogf(1/(1+7x-8x^2))`
-/

namespace A014990.P9099001452152652699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, 7, -8] n

end

end A014990.P9099001452152652699

namespace A014990

/-- `ogf(1/(1+7x-8x^2))` -/
def P9099001452152652699.Spec : Prop :=
  ∀ n, P9099001452152652699.a n = A014990 (n + 1)

end A014990

/-! ## A014990.P3404221051821244587

`1-8*a(n-1)` with `a(0)=1`
-/

namespace A014990.P3404221051821244587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  1 - 8 * a (n - 1)

end

end A014990.P3404221051821244587

namespace A014990

/-- `1-8*a(n-1)` -/
def P3404221051821244587.Spec : Prop :=
  ∀ n, P3404221051821244587.a n = A014990 (n + 1)

end A014990

/-! ## A014990.P6223499858008722918

`a(n-1)+(-8)^n` with `a(0)=1`
-/

namespace A014990.P6223499858008722918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (-8) ^ n

end

end A014990.P6223499858008722918

namespace A014990

/-- `a(n-1)+(-8)^n` -/
def P6223499858008722918.Spec : Prop :=
  ∀ n, P6223499858008722918.a n = A014990 (n + 1)

end A014990

/-! ## A014990.P17913726290247463530

`xor(-8^n, a(n-1))` with `a(0)=1`
-/

namespace A014990.P17913726290247463530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.xor (-(8 ^ n : ℤ)) (a (n - 1))

end

end A014990.P17913726290247463530

namespace A014990

/-- `xor(-8^n, a(n-1))` -/
def P17913726290247463530.Spec : Prop :=
  ∀ n, P17913726290247463530.a n = A014990 (n + 1)

end A014990

/-! ## A014990.P17762143553111347982

`1-a(n-1)/(1/2)^3` with `a(0)=1`
-/

namespace A014990.P17762143553111347982
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  1 - a (n - 1) / ((1 : ℚ) / 2) ^ 3

end

end A014990.P17762143553111347982

namespace A014990

/-- `1-a(n-1)/(1/2)^3` -/
def P17762143553111347982.Spec : Prop :=
  ∀ n, P17762143553111347982.a n = (A014990 (n + 1) : ℚ)

end A014990

/-! ## A014990.P18336313412021431400

`A328824(3*(n+1))`
-/

namespace A014990.P18336313412021431400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328824 (3 * (n + 1))

end

end A014990.P18336313412021431400

namespace A014990

/-- `A328824(3*(n+1))` -/
def P18336313412021431400.Spec : Prop :=
  ∀ n, P18336313412021431400.a n = A014990 (n + 1)

end A014990

/-! ## A014990.P2819718724664525850

`or(1, ∑[A122803(3*n)])`
-/

namespace A014990.P2819718724664525850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122803 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A014990.P2819718724664525850

namespace A014990

/-- `or(1, ∑[A122803(3*n)])` -/
def P2819718724664525850.Spec : Prop :=
  ∀ n, P2819718724664525850.a n = A014990 (n + 1)

end A014990

/-! ## A014990.P15478053166133104449

`A015565(n+1)*A033999(n)`
-/

namespace A014990.P15478053166133104449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015565 (n + 1) * A033999 n

end

end A014990.P15478053166133104449

namespace A014990

/-- `A015565(n+1)*A033999(n)` -/
def P15478053166133104449.Spec : Prop :=
  ∀ n, P15478053166133104449.a n = A014990 (n + 1)

end A014990

/-! ## A014990.P17133351455861725317

`A015565(n+1)*A062157(n+1)`
-/

namespace A014990.P17133351455861725317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015565 (n + 1) * A062157 (n + 1)

end

end A014990.P17133351455861725317

namespace A014990

/-- `A015565(n+1)*A062157(n+1)` -/
def P17133351455861725317.Spec : Prop :=
  ∀ n, P17133351455861725317.a n = A014990 (n + 1)

end A014990

/-! ## A014990.P14535006721034756007

`1-A033999(n+1)*A093134(n+1)`
-/

namespace A014990.P14535006721034756007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A033999 (n + 1) * A093134 (n + 1)

end

end A014990.P14535006721034756007

namespace A014990

/-- `1-A033999(n+1)*A093134(n+1)` -/
def P14535006721034756007.Spec : Prop :=
  ∀ n, P14535006721034756007.a n = A014990 (n + 1)

end A014990

/-! ## A014990.P12658349257060727686

`(A001045(n+1)-A083086(n+1))*A001045(n+1)`
-/

namespace A014990.P12658349257060727686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001045 (n + 1) - A083086 (n + 1)) * A001045 (n + 1)

end

end A014990.P12658349257060727686

namespace A014990

/-- `(A001045(n+1)-A083086(n+1))*A001045(n+1)` -/
def P12658349257060727686.Spec : Prop :=
  ∀ n, P12658349257060727686.a n = A014990 (n + 1)

end A014990

/-!
# A014991: a(n) = (1 - (-9)^n)/10.

The programs for A014991, the canonical program `A014991.P13669135332137643226` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014991 has offset 1).

The definition of A014991 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A014991.P13669135332137643226

`(1-(-9)^(n+1))/10`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A014991

/-- `(1-(-9)^(n+1))/10` -/
def P13669135332137643226.Spec : Prop :=
  ∀ n, P13669135332137643226.a n = (A014991 (n + 1) : ℚ)

end A014991

/-! ## A014991.P12585914117794670293

`ogf(1/(1+8x-9x^2))`
-/

namespace A014991.P12585914117794670293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, 8, -9] n

end

end A014991.P12585914117794670293

namespace A014991

/-- `ogf(1/(1+8x-9x^2))` -/
def P12585914117794670293.Spec : Prop :=
  ∀ n, P12585914117794670293.a n = A014991 (n + 1)

end A014991

/-! ## A014991.P3632466738041269369

`1-9*a(n-1)` with `a(0)=1`
-/

namespace A014991.P3632466738041269369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  1 - 9 * a (n - 1)

end

end A014991.P3632466738041269369

namespace A014991

/-- `1-9*a(n-1)` -/
def P3632466738041269369.Spec : Prop :=
  ∀ n, P3632466738041269369.a n = A014991 (n + 1)

end A014991

/-! ## A014991.P6440253077539295601

`a(n-1)+(-9)^n` with `a(0)=1`
-/

namespace A014991.P6440253077539295601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (-9) ^ n

end

end A014991.P6440253077539295601

namespace A014991

/-- `a(n-1)+(-9)^n` -/
def P6440253077539295601.Spec : Prop :=
  ∀ n, P6440253077539295601.a n = A014991 (n + 1)

end A014991

/-! ## A014991.P4330744938086655173

`1-a(n-1)/(1/3)²` with `a(0)=1`
-/

namespace A014991.P4330744938086655173
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  1 - a (n - 1) / ((1 : ℚ) / 3) ^ 2

end

end A014991.P4330744938086655173

namespace A014991

/-- `1-a(n-1)/(1/3)²` -/
def P4330744938086655173.Spec : Prop :=
  ∀ n, P4330744938086655173.a n = (A014991 (n + 1) : ℚ)

end A014991

/-! ## A014991.P13472905335899148284

`A015577(n+1)*A062157(n+1)`
-/

namespace A014991.P13472905335899148284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015577 (n + 1) * A062157 (n + 1)

end

end A014991.P13472905335899148284

namespace A014991

/-- `A015577(n+1)*A062157(n+1)` -/
def P13472905335899148284.Spec : Prop :=
  ∀ n, P13472905335899148284.a n = A014991 (n + 1)

end A014991

/-! ## A014991.P3935835341962997430

`A112030(2*n)*A178543(2*n)+1`
-/

namespace A014991.P3935835341962997430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112030 (2 * n) * A178543 (2 * n) + 1

end

end A014991.P3935835341962997430

namespace A014991

/-- `A112030(2*n)*A178543(2*n)+1` -/
def P3935835341962997430.Spec : Prop :=
  ∀ n, P3935835341962997430.a n = A014991 (n + 1)

end A014991

/-! ## A014991.P12705829355566267105

`(A109501(n)-A015540(n))*A015577(n+1)`
-/

namespace A014991.P12705829355566267105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A109501 n - A015540 n) * A015577 (n + 1)

end

end A014991.P12705829355566267105

namespace A014991

/-- `(A109501(n)-A015540(n))*A015577(n+1)` -/
def P12705829355566267105.Spec : Prop :=
  ∀ n, P12705829355566267105.a n = A014991 (n + 1)

end A014991

/-!
# A014992: a(n) = (1 - (-10)^n)/11.

The programs for A014992, the canonical program `A014992.P7690352131051261852` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014992 has offset 1).

The definition of A014992 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A014992.P7690352131051261852

`(-1)^(n+2)*A015585(n+1)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A014992

/-- `(-1)^(n+2)*A015585(n+1)` -/
def P7690352131051261852.Spec : Prop :=
  ∀ n, P7690352131051261852.a n = A014992 (n + 1)

theorem P7690352131051261852.correct : P7690352131051261852.Spec := by
  intro n
  simp only [A014992, Nat.add_sub_cancel]

end A014992

/-! ## A014992.P2267750818581843375

`(1-(-10)^(n+1))/11`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A014992.P2267750818581843375
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 - (-10) ^ (n + 1) : ℚ) / 11

end

end A014992.P2267750818581843375

namespace A014992

/-- `(1-(-10)^(n+1))/11` -/
def P2267750818581843375.Spec : Prop :=
  ∀ n, P2267750818581843375.a n = (A014992 (n + 1) : ℚ)

end A014992

/-! ## A014992.P10391808345087649656

`ogf(1/(1+9x-10x^2))`
-/

namespace A014992.P10391808345087649656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, 9, -10] n

end

end A014992.P10391808345087649656

namespace A014992

/-- `ogf(1/(1+9x-10x^2))` -/
def P10391808345087649656.Spec : Prop :=
  ∀ n, P10391808345087649656.a n = A014992 (n + 1)

end A014992

/-! ## A014992.P6939396719912559918

`1-10*a(n-1)` with `a(0)=1`
-/

namespace A014992.P6939396719912559918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  1 - 10 * a (n - 1)

end

end A014992.P6939396719912559918

namespace A014992

/-- `1-10*a(n-1)` -/
def P6939396719912559918.Spec : Prop :=
  ∀ n, P6939396719912559918.a n = A014992 (n + 1)

end A014992

/-! ## A014992.P4951408504510893309

`a(n-1)+(-10)^n` with `a(0)=1`
-/

namespace A014992.P4951408504510893309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (-10) ^ n

end

end A014992.P4951408504510893309

namespace A014992

/-- `a(n-1)+(-10)^n` -/
def P4951408504510893309.Spec : Prop :=
  ∀ n, P4951408504510893309.a n = A014992 (n + 1)

end A014992

/-! ## A014992.P5442114985150593889

`∑[A103461(n)]-n`
-/

namespace A014992.P5442114985150593889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103461 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A014992.P5442114985150593889

namespace A014992

/-- `∑[A103461(n)]-n` -/
def P5442114985150593889.Spec : Prop :=
  ∀ n, P5442114985150593889.a n = A014992 (n + 1)

end A014992

/-! ## A014992.P130674403655687520

`A001489(n)+∑[A103461(n)]`
-/

namespace A014992.P130674403655687520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103461 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001489 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014992.P130674403655687520

namespace A014992

/-- `A001489(n)+∑[A103461(n)]` -/
def P130674403655687520.Spec : Prop :=
  ∀ n, P130674403655687520.a n = A014992 (n + 1)

end A014992

/-! ## A014992.P1778912602400525664

`A015585(n+1)*A101455(2*n+1)`
-/

namespace A014992.P1778912602400525664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015585 (n + 1) * A101455 (2 * n + 1)

end

end A014992.P1778912602400525664

namespace A014992

/-- `A015585(n+1)*A101455(2*n+1)` -/
def P1778912602400525664.Spec : Prop :=
  ∀ n, P1778912602400525664.a n = A014992 (n + 1)

end A014992

/-! ## A014992.P8129495339103945394

`Δ[A056830(n)]*A033999(n)`
-/

namespace A014992.P8129495339103945394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056830 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A033999 n

end

end A014992.P8129495339103945394

namespace A014992

/-- `Δ[A056830(n)]*A033999(n)` -/
def P8129495339103945394.Spec : Prop :=
  ∀ n, P8129495339103945394.a n = A014992 (n + 1)

end A014992

/-! ## A014992.P12710251368545846814

`A279053(n)-A056830(A052928(n+1))`
-/

namespace A014992.P12710251368545846814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279053 n - A056830 (A052928 (n + 1)).toNat

end

end A014992.P12710251368545846814

namespace A014992

/-- `A279053(n)-A056830(A052928(n+1))` -/
def P12710251368545846814.Spec : Prop :=
  ∀ n, P12710251368545846814.a n = A014992 (n + 1)

end A014992

/-!
# A014993: a(n) = (1 - (-11)^n)/12.

The programs for A014993, the canonical program `A014993.P11999899681209808891` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014993 has offset 1).

The definition of A014993 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A014993.P11999899681209808891

`(1-(-11)^(n+1))/12`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A014993

/-- `(1-(-11)^(n+1))/12` -/
def P11999899681209808891.Spec : Prop :=
  ∀ n, P11999899681209808891.a n = (A014993 (n + 1) : ℚ)

end A014993

/-! ## A014993.P10187291626949347784

`ogf(1/(1+10x-11x^2))`
-/

namespace A014993.P10187291626949347784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, 10, -11] n

end

end A014993.P10187291626949347784

namespace A014993

/-- `ogf(1/(1+10x-11x^2))` -/
def P10187291626949347784.Spec : Prop :=
  ∀ n, P10187291626949347784.a n = A014993 (n + 1)

end A014993

/-! ## A014993.P8831421068778828836

`1-11*a(n-1)` with `a(0)=1`
-/

namespace A014993.P8831421068778828836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  1 - 11 * a (n - 1)

end

end A014993.P8831421068778828836

namespace A014993

/-- `1-11*a(n-1)` -/
def P8831421068778828836.Spec : Prop :=
  ∀ n, P8831421068778828836.a n = A014993 (n + 1)

end A014993

/-! ## A014993.P10385949095469454715

`a(n-1)+(-11)^n` with `a(0)=1`
-/

namespace A014993.P10385949095469454715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (-11) ^ n

end

end A014993.P10385949095469454715

namespace A014993

/-- `a(n-1)+(-11)^n` -/
def P10385949095469454715.Spec : Prop :=
  ∀ n, P10385949095469454715.a n = A014993 (n + 1)

end A014993

/-! ## A014993.P9046065935241203127

`A015592(n+1)*A033999(n)`
-/

namespace A014993.P9046065935241203127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015592 (n + 1) * A033999 n

end

end A014993.P9046065935241203127

namespace A014993

/-- `A015592(n+1)*A033999(n)` -/
def P9046065935241203127.Spec : Prop :=
  ∀ n, P9046065935241203127.a n = A014993 (n + 1)

end A014993

/-! ## A014993.P6632390664831651246

`floor(∑[A001020(n)/A033999(n)])`
-/

namespace A014993.P6632390664831651246
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001020 n : ℚ) / (A033999 n : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A014993.P6632390664831651246

namespace A014993

/-- `floor(∑[A001020(n)/A033999(n)])` -/
def P6632390664831651246.Spec : Prop :=
  ∀ n, P6632390664831651246.a n = A014993 (n + 1)

end A014993

/-! ## A014993.P4192728253014007194

`A014983(n+1)/A015518(n+1)*A015592(n+1)`
-/

namespace A014993.P4192728253014007194
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014983 (n + 1) : ℚ) / (A015518 (n + 1) : ℚ) * (A015592 (n + 1) : ℚ)

end

end A014993.P4192728253014007194

namespace A014993

/-- `A014983(n+1)/A015518(n+1)*A015592(n+1)` -/
def P4192728253014007194.Spec : Prop :=
  ∀ n, P4192728253014007194.a n = (A014993 (n + 1) : ℚ)

end A014993

/-! ## A014993.P6080153810782950057

`A014990(n+1)/A015565(n+1)*A015592(n+1)`
-/

namespace A014993.P6080153810782950057
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014990 (n + 1) : ℚ) / (A015565 (n + 1) : ℚ) * (A015592 (n + 1) : ℚ)

end

end A014993.P6080153810782950057

namespace A014993

/-- `A014990(n+1)/A015565(n+1)*A015592(n+1)` -/
def P6080153810782950057.Spec : Prop :=
  ∀ n, P6080153810782950057.a n = (A014993 (n + 1) : ℚ)

end A014993

/-! ## A014993.P17196450545246739158

`A014992(n+1)/A015585(n+1)*A015592(n+1)`
-/

namespace A014993.P17196450545246739158
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014992 (n + 1) : ℚ) / (A015585 (n + 1) : ℚ) * (A015592 (n + 1) : ℚ)

end

end A014993.P17196450545246739158

namespace A014993

/-- `A014992(n+1)/A015585(n+1)*A015592(n+1)` -/
def P17196450545246739158.Spec : Prop :=
  ∀ n, P17196450545246739158.a n = (A014993 (n + 1) : ℚ)

end A014993

/-!
# A014994: a(n) = (1 - (-12)^n)/13.

The programs for A014994, the canonical program `A014994.P7669169134547246301` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014994 has offset 1).

The definition of A014994 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A014994.P7669169134547246301

`(1-(-12)^(n+1))/13`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A014994

/-- `(1-(-12)^(n+1))/13` -/
def P7669169134547246301.Spec : Prop :=
  ∀ n, P7669169134547246301.a n = (A014994 (n + 1) : ℚ)

end A014994

/-! ## A014994.P6687209793788545727

`ogf(1/(1+11x-12x^2))`
-/

namespace A014994.P6687209793788545727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, 11, -12] n

end

end A014994.P6687209793788545727

namespace A014994

/-- `ogf(1/(1+11x-12x^2))` -/
def P6687209793788545727.Spec : Prop :=
  ∀ n, P6687209793788545727.a n = A014994 (n + 1)

end A014994

/-! ## A014994.P9946561115934168896

`1-12*a(n-1)` with `a(0)=1`
-/

namespace A014994.P9946561115934168896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  1 - 12 * a (n - 1)

end

end A014994.P9946561115934168896

namespace A014994

/-- `1-12*a(n-1)` -/
def P9946561115934168896.Spec : Prop :=
  ∀ n, P9946561115934168896.a n = A014994 (n + 1)

end A014994

/-! ## A014994.P3548023268190003007

`a(n-1)+(-12)^n` with `a(0)=1`
-/

namespace A014994.P3548023268190003007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (-12) ^ n

end

end A014994.P3548023268190003007

namespace A014994

/-- `a(n-1)+(-12)^n` -/
def P3548023268190003007.Spec : Prop :=
  ∀ n, P3548023268190003007.a n = A014994 (n + 1)

end A014994

/-! ## A014994.P5337812170102227300

`A015609(n+1)*A033999(n)`
-/

namespace A014994.P5337812170102227300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015609 (n + 1) * A033999 n

end

end A014994.P5337812170102227300

namespace A014994

/-- `A015609(n+1)*A033999(n)` -/
def P5337812170102227300.Spec : Prop :=
  ∀ n, P5337812170102227300.a n = A014994 (n + 1)

end A014994

/-! ## A014994.P9066086446203213822

`-∑[A001021(n)*A033999(n+1)]`
-/

namespace A014994.P9066086446203213822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001021 n * A033999 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ j ∈ Finset.range (n + 1), f1 j)

end

end A014994.P9066086446203213822

namespace A014994

/-- `-∑[A001021(n)*A033999(n+1)]` -/
def P9066086446203213822.Spec : Prop :=
  ∀ n, P9066086446203213822.a n = A014994 (n + 1)

end A014994

/-! ## A014994.P16904007454683150149

`(A078008(n)-A001045(n))*A015609(n+1)`
-/

namespace A014994.P16904007454683150149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A078008 n - A001045 n) * A015609 (n + 1)

end

end A014994.P16904007454683150149

namespace A014994

/-- `(A078008(n)-A001045(n))*A015609(n+1)` -/
def P16904007454683150149.Spec : Prop :=
  ∀ n, P16904007454683150149.a n = A014994 (n + 1)

end A014994

/-! ## A014994.P3604459993839125987

`A014983(n+1)/A015518(n+1)*A015609(n+1)`
-/

namespace A014994.P3604459993839125987
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014983 (n + 1) : ℚ) / (A015518 (n + 1) : ℚ) * (A015609 (n + 1) : ℚ)

end

end A014994.P3604459993839125987

namespace A014994

/-- `A014983(n+1)/A015518(n+1)*A015609(n+1)` -/
def P3604459993839125987.Spec : Prop :=
  ∀ n, P3604459993839125987.a n = (A014994 (n + 1) : ℚ)

end A014994

/-! ## A014994.P5466377278292345555

`A014990(n+1)/A015565(n+1)*A015609(n+1)`
-/

namespace A014994.P5466377278292345555
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014990 (n + 1) : ℚ) / (A015565 (n + 1) : ℚ) * (A015609 (n + 1) : ℚ)

end

end A014994.P5466377278292345555

namespace A014994

/-- `A014990(n+1)/A015565(n+1)*A015609(n+1)` -/
def P5466377278292345555.Spec : Prop :=
  ∀ n, P5466377278292345555.a n = (A014994 (n + 1) : ℚ)

end A014994

/-!
# A014995: Inverse of 986th cyclotomic polynomial.

The programs for A014995, there is no canonical definition to state claims against.
-/

/-! ## A014995.P6394824453338115397

`A014502(n)*A033999(n)`
-/

namespace A014995.P6394824453338115397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014502 n * A033999 n

end

end A014995.P6394824453338115397

/-!
# A014996: Inverse of 987th cyclotomic polynomial.

The programs for A014996, there is no canonical definition to state claims against.
-/

/-! ## A014996.P11742941377895630206

`A015983(n)*A033999(n)`
-/

namespace A014996.P11742941377895630206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015983 n * A033999 n

end

end A014996.P11742941377895630206

/-!
# A014997: Inverse of 988th cyclotomic polynomial.

The programs for A014997, there is no canonical definition to state claims against.
-/

/-! ## A014997.P15359104349419413084

`A015985(2*n)`
-/

namespace A014997.P15359104349419413084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015985 (2 * n)

end

end A014997.P15359104349419413084

/-! ## A014997.P1617895111301425218

`A015205(n)%A260651(n+2)`
-/

namespace A014997.P1617895111301425218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A015205 n) (A260651 (n + 2))

end

end A014997.P1617895111301425218

/-! ## A014997.P13593619256964420712

`A015517(n)%A260651(n+2)`
-/

namespace A014997.P13593619256964420712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A015517 n) (A260651 (n + 2))

end

end A014997.P13593619256964420712

/-! ## A014997.P14093672826028163746

`A015621(n)%A260651(n+2)`
-/

namespace A014997.P14093672826028163746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A015621 n) (A260651 (n + 2))

end

end A014997.P14093672826028163746

/-! ## A014997.P2740973889605368767

`A015933(n)%A260651(n+2)`
-/

namespace A014997.P2740973889605368767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A015933 n) (A260651 (n + 2))

end

end A014997.P2740973889605368767

/-!
# A014998: Inverse of 989th cyclotomic polynomial.

The programs for A014998, there is no canonical definition to state claims against.
-/

/-! ## A014998.P8496842337187456517

`A015987(n)*A033999(n)`
-/

namespace A014998.P8496842337187456517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015987 n * A033999 n

end

end A014998.P8496842337187456517

/-! ## A014998.P5346068046949073452

`A014256(A109167(2*n)%A095181(n+1))`
-/

namespace A014998.P5346068046949073452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014256 (Int.tmod (A109167 (2 * n)) (A095181 (n + 1))).toNat

end

end A014998.P5346068046949073452

/-! ## A014998.P7102095789852667611

`A016266(A028781(n+2))`
-/

namespace A014998.P7102095789852667611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016266 (A028781 (n + 2)).toNat

end

end A014998.P7102095789852667611

/-! ## A014998.P1993946989735052983

`A015652(A178096(n+1))`
-/

namespace A014998.P1993946989735052983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015652 (A178096 (n + 1)).toNat

end

end A014998.P1993946989735052983

/-! ## A014998.P7208679276585603145

`A015090(A175427(n+1))`
-/

namespace A014998.P7208679276585603145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015090 (A175427 (n + 1)).toNat

end

end A014998.P7208679276585603145

/-!
# A014999: Inverse of 990th cyclotomic polynomial.

The programs for A014999, there is no canonical definition to state claims against.
-/

/-! ## A014999.P10635378979408558842

`A015989(2*n)`
-/

namespace A014999.P10635378979408558842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015989 (2 * n)

end

end A014999.P10635378979408558842

/-! ## A014999.P15109389405712964849

`A014669(A004396(n))`
-/

namespace A014999.P15109389405712964849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014669 (A004396 n).toNat

end

end A014999.P15109389405712964849

/-! ## A014999.P1816333721872328126

`A015329(A004773(n))`
-/

namespace A014999.P1816333721872328126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015329 (A004773 n).toNat

end

end A014999.P1816333721872328126

/-! ## A014999.P13925566064320071627

`A014669(A006369(n))`
-/

namespace A014999.P13925566064320071627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014669 (A006369 n).toNat

end

end A014999.P13925566064320071627

/-! ## A014999.P8324467911266447496

`A014669(A074305(n))`
-/

namespace A014999.P8324467911266447496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014669 (A074305 n).toNat

end

end A014999.P8324467911266447496

/-! ## A014999.P13958746298661914574

`A014669(A092942(n))`
-/

namespace A014999.P13958746298661914574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014669 (A092942 n).toNat

end

end A014999.P13958746298661914574

/-! ## A014999.P18393329071119637617

`A015659(A093545(n))`
-/

namespace A014999.P18393329071119637617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015659 (A093545 n).toNat

end

end A014999.P18393329071119637617

/-! ## A014999.P25882711471706318

`A015329(A131452(n))`
-/

namespace A014999.P25882711471706318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015329 (A131452 n).toNat

end

end A014999.P25882711471706318

/-! ## A014999.P18053288164361870895

`A014669(A160080(n))`
-/

namespace A014999.P18053288164361870895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014669 (A160080 n).toNat

end

end A014999.P18053288164361870895

/-! ## A014999.P16487264428679898613

`A015329(A265667(n))`
-/

namespace A014999.P16487264428679898613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015329 (A265667 n).toNat

end

end A014999.P16487264428679898613

/-! ## A014999.P5502127721543981299

`A014669(A272071(n))`
-/

namespace A014999.P5502127721543981299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014669 (A272071 n).toNat

end

end A014999.P5502127721543981299

/-! ## A014999.P17426351035755691230

`A015329(A367286(n))`
-/

namespace A014999.P17426351035755691230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015329 (A367286 n).toNat

end

end A014999.P17426351035755691230

/-! ## A014999.P17982722850749225443

`A015329(A367651(n))`
-/

namespace A014999.P17982722850749225443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015329 (A367651 n).toNat

end

end A014999.P17982722850749225443

/-! ## A014999.P5898640712938775871

`A014669(A005131(n+1))`
-/

namespace A014999.P5898640712938775871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014669 (A005131 (n + 1)).toNat

end

end A014999.P5898640712938775871

/-! ## A014999.P1236571400970247878

`A015329(A004772(n+1))`
-/

namespace A014999.P1236571400970247878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015329 (A004772 (n + 1)).toNat

end

end A014999.P1236571400970247878

/-! ## A014999.P4839328948930465300

`A015659(A008854(n+1))`
-/

namespace A014999.P4839328948930465300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015659 (A008854 (n + 1)).toNat

end

end A014999.P4839328948930465300

/-! ## A014999.P10622063985223959981

`A015329(A042965(n+1))`
-/

namespace A014999.P10622063985223959981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015329 (A042965 (n + 1)).toNat

end

end A014999.P10622063985223959981

/-! ## A014999.P9084005446126320508

`A010892(n)*A014504(n)`
-/

namespace A014999.P9084005446126320508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 n * A014504 n

end

end A014999.P9084005446126320508

/-! ## A014999.P15231080797521290361

`A014504(n)*A033999(n)`
-/

namespace A014999.P15231080797521290361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014504 n * A033999 n

end

end A014999.P15231080797521290361

/-! ## A014999.P11398560323283300985

`A014504(n)*A057079(n)`
-/

namespace A014999.P11398560323283300985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014504 n * A057079 n

end

end A014999.P11398560323283300985

