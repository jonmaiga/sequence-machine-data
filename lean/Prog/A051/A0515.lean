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
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C034
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
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
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
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
import Seq.Opaque.C013
import Seq.Opaque.C014
import Seq.Opaque.C015
import Seq.Opaque.C016
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C024

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A051500: a(n) = (3^n + 1)^2/4.

The programs for A051500, the canonical program `A051500.P1355679400199239576` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A051500 has offset 0).

The definition of A051500 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(3^n+1)²/4` (program `A051500.P1160244746591720844`, by `A051500.P1160244746591720844.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A051500.P1355679400199239576

`13*a(n-1)-39*a(n-2)+27*a(n-3)` with `a(0)=1, a(1)=4, a(2)=25`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A051500

/-- `13*a(n-1)-39*a(n-2)+27*a(n-3)` -/
def P1355679400199239576.Spec : Prop :=
  ∀ n, P1355679400199239576.a n = A051500 n

theorem P1355679400199239576.correct : P1355679400199239576.Spec := by
  intro n
  simp only [A051500]

end A051500

/-! ## A051500.P138972540316502473

`A007051(n)²`
-/

namespace A051500.P138972540316502473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007051 n ^ 2

end

end A051500.P138972540316502473

namespace A051500

/-- `A007051(n)²` -/
def P138972540316502473.Spec : Prop :=
  ∀ n, P138972540316502473.a n = A051500 n

end A051500

/-! ## A051500.P1160244746591720844

`(3^n+1)²/4`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A051500.P1160244746591720844
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((3 ^ n + 1) ^ 2 : ℚ) / 4

end

end A051500.P1160244746591720844

namespace A051500

/-- `(3^n+1)²/4` -/
def P1160244746591720844.Spec : Prop :=
  ∀ n, P1160244746591720844.a n = (A051500 n : ℚ)

theorem P1160244746591720844.correct : P1160244746591720844.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A051500, Nat.add_sub_cancel, A051500.P1160244746591720844.a, A051500.P1355679400199239576.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A051500, Nat.add_sub_cancel, A051500.P1160244746591720844.a, A051500.P1355679400199239576.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [← h1, ← h2, ← h3]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A051500

/-! ## A051500.P2048119918063840139

`∑[3*a(n-1)]²` with `a(0)=1, a(1)=1`
-/

namespace A051500.P2048119918063840139
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  3 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A051500.P2048119918063840139

namespace A051500

/-- `∑[3*a(n-1)]²` -/
def P2048119918063840139.Spec : Prop :=
  ∀ n, (P2048119918063840139.a n : ℤ) = A051500 n

end A051500

/-! ## A051500.P3913347657789729257

`and(∑[ceil(3^(n-1))]², -1)`
-/

namespace A051500.P3913347657789729257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2) (-1)

end

end A051500.P3913347657789729257

namespace A051500

/-- `and(∑[ceil(3^(n-1))]², -1)` -/
def P3913347657789729257.Spec : Prop :=
  ∀ n, P3913347657789729257.a n = A051500 n

end A051500

/-! ## A051500.P5467169658876000444

`∑[3*a(n-1)]^2` with `a(0)=1, a(1)=1`
-/

namespace A051500.P5467169658876000444
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  3 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A051500.P5467169658876000444

namespace A051500

/-- `∑[3*a(n-1)]^2` -/
def P5467169658876000444.Spec : Prop :=
  ∀ n, (P5467169658876000444.a n : ℤ) = A051500 n

end A051500

/-! ## A051500.P1575256963303615823

`floor(∑[3^(n-floor(atan(n+1)))]²)`
-/

namespace A051500.P1575256963303615823
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ ((n : ℤ) - ⌊Real.arctan (n + 1 : ℝ)⌋ : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(∑ j ∈ Finset.range (n + 1), f1 j) ^ 2⌋

end

end A051500.P1575256963303615823

namespace A051500

/-- `floor(∑[3^(n-floor(atan(n+1)))]²)` -/
def P1575256963303615823.Spec : Prop :=
  ∀ n, P1575256963303615823.a n = A051500 n

end A051500

/-! ## A051500.P16369708914286917933

`floor(∑[3^(n-1)^floor(atan(n))]²)`
-/

namespace A051500.P16369708914286917933
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)) ^ (⌊Real.arctan (n : ℝ)⌋ : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(∑ j ∈ Finset.range (n + 1), f1 j) ^ 2⌋

end

end A051500.P16369708914286917933

namespace A051500

/-- `floor(∑[3^(n-1)^floor(atan(n))]²)` -/
def P16369708914286917933.Spec : Prop :=
  ∀ n, P16369708914286917933.a n = A051500 n

end A051500

/-! ## A051500.P2639246499090637347

`(xor(2, ∑[floor(3^(n-1))])-1)^2`
-/

namespace A051500.P2639246499090637347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.xor 2 (∑ j ∈ Finset.range (n + 1), f1 j) - 1) ^ 2

end

end A051500.P2639246499090637347

namespace A051500

/-- `(xor(2, ∑[floor(3^(n-1))])-1)^2` -/
def P2639246499090637347.Spec : Prop :=
  ∀ n, P2639246499090637347.a n = A051500 n

end A051500

/-! ## A051500.P6094244979512236914

`∑[ceil(3^(n-1))]^(2%(n+2))`
-/

namespace A051500.P6094244979512236914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ (2 % (n + 2))

end

end A051500.P6094244979512236914

namespace A051500

/-- `∑[ceil(3^(n-1))]^(2%(n+2))` -/
def P6094244979512236914.Spec : Prop :=
  ∀ n, P6094244979512236914.a n = A051500 n

end A051500

/-! ## A051500.P9185624182676325070

`lcm(∑[ceil(3^(n-1))]², (-1)^n)`
-/

namespace A051500.P9185624182676325070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2) ((-1) ^ n)

end

end A051500.P9185624182676325070

namespace A051500

/-- `lcm(∑[ceil(3^(n-1))]², (-1)^n)` -/
def P9185624182676325070.Spec : Prop :=
  ∀ n, (P9185624182676325070.a n : ℤ) = A051500 n

end A051500

/-! ## A051500.P10439580394037810423

`∑[ceil(3^(n-1))]²^ceil(sin(n)²)`
-/

namespace A051500.P10439580394037810423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℤ) : ℚ) ^ (⌈Real.sin (n : ℝ) ^ 2⌉ : ℤ)

end

end A051500.P10439580394037810423

namespace A051500

/-- `∑[ceil(3^(n-1))]²^ceil(sin(n)²)` -/
def P10439580394037810423.Spec : Prop :=
  ∀ n, P10439580394037810423.a n = (A051500 n : ℚ)

end A051500

/-! ## A051500.P14766999855091720063

`xor(1, -3^n)/4*xor(1, -3^n)`
-/

namespace A051500.P14766999855091720063
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.xor 1 (-(3 ^ n : ℤ)) : ℚ) / 4 * (Int.xor 1 (-(3 ^ n : ℤ)) : ℚ)

end

end A051500.P14766999855091720063

namespace A051500

/-- `xor(1, -3^n)/4*xor(1, -3^n)` -/
def P14766999855091720063.Spec : Prop :=
  ∀ n, P14766999855091720063.a n = (A051500 n : ℚ)

end A051500

/-! ## A051500.P11074826417818644706

`∑[a(n-1)²/a(n-2)]²` with `a(0)=1, a(1)=1, a(2)=3`
-/

namespace A051500.P11074826417818644706
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 1, 3] fun n f1 =>
  f1 (n - 1) ^ 2 / f1 (n - 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A051500.P11074826417818644706

namespace A051500

/-- `∑[a(n-1)²/a(n-2)]²` -/
def P11074826417818644706.Spec : Prop :=
  ∀ n, P11074826417818644706.a n = (A051500 n : ℚ)

end A051500

/-! ## A051500.P29555777662351595

`∑[ceil(3^(n-1))]^dr(Δ[4^n]-1)`
-/

namespace A051500.P29555777662351595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ SequenceMachineLib.digitalRoot ((f2 (n + 1) : ℤ) - (f2 n : ℤ) - 1)

end

end A051500.P29555777662351595

namespace A051500

/-- `∑[ceil(3^(n-1))]^dr(Δ[4^n]-1)` -/
def P29555777662351595.Spec : Prop :=
  ∀ n, P29555777662351595.a n = A051500 n

end A051500

/-! ## A051500.P6833579293769978931

`A341463(n)²`
-/

namespace A051500.P6833579293769978931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341463 n ^ 2

end

end A051500.P6833579293769978931

namespace A051500

/-- `A341463(n)²` -/
def P6833579293769978931.Spec : Prop :=
  ∀ n, P6833579293769978931.a n = A051500 n

end A051500

/-! ## A051500.P7978837307516504613

`A001998(2*n)`
-/

namespace A051500.P7978837307516504613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001998 (2 * n)

end

end A051500.P7978837307516504613

namespace A051500

/-- `A001998(2*n)` -/
def P7978837307516504613.Spec : Prop :=
  ∀ n, P7978837307516504613.a n = A051500 n

end A051500

/-! ## A051500.P11860199845808640278

`A048471(∑[n])²`
-/

namespace A051500.P11860199845808640278
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048471 (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A051500.P11860199845808640278

namespace A051500

/-- `A048471(∑[n])²` -/
def P11860199845808640278.Spec : Prop :=
  ∀ n, P11860199845808640278.a n = A051500 n

end A051500

/-! ## A051500.P3653773829867176605

`A073216(∑[n])²`
-/

namespace A051500.P3653773829867176605
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073216 (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A051500.P3653773829867176605

namespace A051500

/-- `A073216(∑[n])²` -/
def P3653773829867176605.Spec : Prop :=
  ∀ n, P3653773829867176605.a n = A051500 n

end A051500

/-! ## A051500.P6194859112657138250

`A125170(∑[n])²`
-/

namespace A051500.P6194859112657138250
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125170 (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A051500.P6194859112657138250

namespace A051500

/-- `A125170(∑[n])²` -/
def P6194859112657138250.Spec : Prop :=
  ∀ n, P6194859112657138250.a n = A051500 n

end A051500

/-!
# A051502: Number of asymmetric types of Boolean functions of n variables under action of complementing group C(n,2).

The programs for A051502, there is no canonical definition to state claims against.
-/

/-! ## A051502.P6031867418862732007

`A305737(A028310(n))/A000079(n)`
-/

namespace A051502.P6031867418862732007
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A305737 (A028310 n).toNat : ℚ) / (A000079 n : ℚ)

end

end A051502.P6031867418862732007

/-!
# A051504: Number of asymmetric digraphs with n nodes.

The programs for A051504, there is no canonical definition to state claims against.
-/

/-! ## A051504.P711843230567690135

`A000273(n)-A067309(n)`
-/

namespace A051504.P711843230567690135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000273 n - A067309 n

end

end A051504.P711843230567690135

/-! ## A051504.P394930119403822244

`∑[A053598(n)]-A067309(n)`
-/

namespace A051504.P394930119403822244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053598 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A067309 n

end

end A051504.P394930119403822244

/-! ## A051504.P15902581558110971073

`∑[A217654(∑[n])]-A067309(n)`
-/

namespace A051504.P15902581558110971073
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217654 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A067309 n

end

end A051504.P15902581558110971073

/-! ## A051504.P10550252562540540558

`A329546(C(n, 2)+1)-A067309(n)`
-/

namespace A051504.P10550252562540540558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329546 (Nat.choose n 2 + 1) - A067309 n

end

end A051504.P10550252562540540558

/-!
# A051507: Primes p such that p*q+2 is prime, where q is next prime after p.

The programs for A051507, there is no canonical definition to state claims against.
-/

/-! ## A051507.P16112571420279080375

`A078587(round(sqrt(A048880(n+1))))`
-/

namespace A051507.P16112571420279080375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078587 (SequenceMachineLib.roundAway (Real.sqrt (A048880 (n + 1) : ℝ))).toNat

end

end A051507.P16112571420279080375

/-! ## A051507.P3045535954971172080

`A007917(floor(sqrt(A048880(n+1))))`
-/

namespace A051507.P3045535954971172080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007917 (Int.sqrt (A048880 (n + 1))).toNat

end

end A051507.P3045535954971172080

/-! ## A051507.P13707983010165307628

`A007917(round(sqrt(A048880(n+1))))`
-/

namespace A051507.P13707983010165307628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007917 (SequenceMachineLib.roundAway (Real.sqrt (A048880 (n + 1) : ℝ))).toNat

end

end A051507.P13707983010165307628

/-!
# A051508: a(n) = floor(Sum_{k=0..n} tan(k)).

The programs for A051508, the canonical program `A051508.P13051591866024448608` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A051508 has offset 0).

The definition of A051508 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1775 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A051508.P13051591866024448608

`floor(∑[tan(n)])`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A051508

/-- `floor(∑[tan(n)])` -/
def P13051591866024448608.Spec : Prop :=
  ∀ n, P13051591866024448608.a n = A051508 n

theorem P13051591866024448608.correct : P13051591866024448608.Spec := by
  intro n
  simp only [A051508]

end A051508

/-! ## A051508.P16511491541762563604

`-ceil(∑[tan(-n)])`
-/

namespace A051508.P16511491541762563604
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.tan (-(n : ℤ) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -⌈∑ j ∈ Finset.range (n + 1), f1 j⌉

end

end A051508.P16511491541762563604

namespace A051508

/-- `-ceil(∑[tan(-n)])` -/
def P16511491541762563604.Spec : Prop :=
  ∀ n, P16511491541762563604.a n = A051508 n

end A051508

/-! ## A051508.P12105780491334699182

`ceil(∑[tan(n)-char[1]])`
-/

namespace A051508.P12105780491334699182
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.tan (n : ℝ) - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉

end

end A051508.P12105780491334699182

namespace A051508

/-- `ceil(∑[tan(n)-char[1]])` -/
def P12105780491334699182.Spec : Prop :=
  ∀ n, P12105780491334699182.a n = A051508 n

end A051508

/-! ## A051508.P11681701903547459469

`floor(∑[sin(n)/cos(n)])`
-/

namespace A051508.P11681701903547459469
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sin (n : ℝ) / Real.cos (n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A051508.P11681701903547459469

namespace A051508

/-- `floor(∑[sin(n)/cos(n)])` -/
def P11681701903547459469.Spec : Prop :=
  ∀ n, P11681701903547459469.a n = A051508 n

end A051508

/-! ## A051508.P6763441043468396116

`n-ceil(n-∑[tan(n)])`
-/

namespace A051508.P6763441043468396116
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.tan (n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ⌈(n : ℝ) - ∑ j ∈ Finset.range (n + 1), f1 j⌉

end

end A051508.P6763441043468396116

namespace A051508

/-- `n-ceil(n-∑[tan(n)])` -/
def P6763441043468396116.Spec : Prop :=
  ∀ n, P6763441043468396116.a n = A051508 n

end A051508

/-! ## A051508.P17016712595736167637

`A057428(n)+A051510(n)`
-/

namespace A051508.P17016712595736167637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n + A051510 n

end

end A051508.P17016712595736167637

namespace A051508

/-- `A057428(n)+A051510(n)` -/
def P17016712595736167637.Spec : Prop :=
  ∀ n, P17016712595736167637.a n = A051508 n

end A051508

/-! ## A051508.P5189176546881915986

`A051510(n)-A057427(n)`
-/

namespace A051508.P5189176546881915986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051510 n - A057427 n

end

end A051508.P5189176546881915986

namespace A051508

/-- `A051510(n)-A057427(n)` -/
def P5189176546881915986.Spec : Prop :=
  ∀ n, P5189176546881915986.a n = A051508 n

end A051508

/-!
# A051509: a(n) = round(Sum_{k=0..n} tan(k)).

The programs for A051509, the canonical program `A051509.P1190744742377929497` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A051509 has offset 0).

The definition of A051509 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1823 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A051509.P1190744742377929497

`round(∑[tan(n)])`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A051509

/-- `round(∑[tan(n)])` -/
def P1190744742377929497.Spec : Prop :=
  ∀ n, P1190744742377929497.a n = A051509 n

theorem P1190744742377929497.correct : P1190744742377929497.Spec := by
  intro n
  simp only [A051509]

end A051509

/-! ## A051509.P11940129635821202174

`round(∑[cot(acos(0)-n)])`
-/

namespace A051509.P11940129635821202174
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cot (Real.arccos (0 : ℝ) - (n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A051509.P11940129635821202174

namespace A051509

/-- `round(∑[cot(acos(0)-n)])` -/
def P11940129635821202174.Spec : Prop :=
  ∀ n, P11940129635821202174.a n = A051509 n

end A051509

/-! ## A051509.P6450131560083254374

`round(∑[cot(asin(1)-n)])`
-/

namespace A051509.P6450131560083254374
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cot (Real.arcsin (1 : ℝ) - (n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A051509.P6450131560083254374

namespace A051509

/-- `round(∑[cot(asin(1)-n)])` -/
def P6450131560083254374.Spec : Prop :=
  ∀ n, P6450131560083254374.a n = A051509 n

end A051509

/-! ## A051509.P10831534152359822895

`round(∑[sin(n)/cos(n)])`
-/

namespace A051509.P10831534152359822895
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sin (n : ℝ) / Real.cos (n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A051509.P10831534152359822895

namespace A051509

/-- `round(∑[sin(n)/cos(n)])` -/
def P10831534152359822895.Spec : Prop :=
  ∀ n, P10831534152359822895.a n = A051509 n

end A051509

/-! ## A051509.P2208795505467008708

`floor(∑[tan(n)]+1/2)`
-/

namespace A051509.P2208795505467008708
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.tan (n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j + ((1 : ℚ) / 2 : ℝ)⌋

end

end A051509.P2208795505467008708

namespace A051509

/-- `floor(∑[tan(n)]+1/2)` -/
def P2208795505467008708.Spec : Prop :=
  ∀ n, P2208795505467008708.a n = A051509 n

end A051509

/-! ## A051509.P11272340333755677992

`ceil(∑[tan(n)]-1/2)`
-/

namespace A051509.P11272340333755677992
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.tan (n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f1 j - ((1 : ℚ) / 2 : ℝ)⌉

end

end A051509.P11272340333755677992

namespace A051509

/-- `ceil(∑[tan(n)]-1/2)` -/
def P11272340333755677992.Spec : Prop :=
  ∀ n, P11272340333755677992.a n = A051509 n

end A051509

/-!
# A051510: a(n) = ceiling(Sum_{k=0..n} tan(k)).

The programs for A051510, the canonical program `A051510.P6360487990203681267` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A051510 has offset 0).

The definition of A051510 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1809 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A051510.P6360487990203681267

`ceil(∑[tan(n)])`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A051510

/-- `ceil(∑[tan(n)])` -/
def P6360487990203681267.Spec : Prop :=
  ∀ n, P6360487990203681267.a n = A051510 n

theorem P6360487990203681267.correct : P6360487990203681267.Spec := by
  intro n
  simp only [A051510]

end A051510

/-! ## A051510.P9781966741505537415

`-floor(∑[tan(-n)])`
-/

namespace A051510.P9781966741505537415
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.tan (-(n : ℤ) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A051510.P9781966741505537415

namespace A051510

/-- `-floor(∑[tan(-n)])` -/
def P9781966741505537415.Spec : Prop :=
  ∀ n, P9781966741505537415.a n = A051510 n

end A051510

/-! ## A051510.P9868362138296590295

`floor(∑[tan(n)+char[1]])`
-/

namespace A051510.P9868362138296590295
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.tan (n : ℝ) + ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A051510.P9868362138296590295

namespace A051510

/-- `floor(∑[tan(n)+char[1]])` -/
def P9868362138296590295.Spec : Prop :=
  ∀ n, P9868362138296590295.a n = A051510 n

end A051510

/-! ## A051510.P7222968643253284474

`ceil(∑[sin(n)/cos(n)])`
-/

namespace A051510.P7222968643253284474
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sin (n : ℝ) / Real.cos (n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉

end

end A051510.P7222968643253284474

namespace A051510

/-- `ceil(∑[sin(n)/cos(n)])` -/
def P7222968643253284474.Spec : Prop :=
  ∀ n, P7222968643253284474.a n = A051510 n

end A051510

/-! ## A051510.P9116895696375801310

`n-floor(n-∑[tan(n)])`
-/

namespace A051510.P9116895696375801310
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.tan (n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ⌊(n : ℝ) - ∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A051510.P9116895696375801310

namespace A051510

/-- `n-floor(n-∑[tan(n)])` -/
def P9116895696375801310.Spec : Prop :=
  ∀ n, P9116895696375801310.a n = A051510 n

end A051510

/-! ## A051510.P5825649584647798385

`A057427(n)+A051508(n)`
-/

namespace A051510.P5825649584647798385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n + A051508 n

end

end A051510.P5825649584647798385

namespace A051510

/-- `A057427(n)+A051508(n)` -/
def P5825649584647798385.Spec : Prop :=
  ∀ n, P5825649584647798385.a n = A051510 n

end A051510

/-! ## A051510.P16791344113899420474

`A051508(n)-A057428(n)`
-/

namespace A051510.P16791344113899420474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051508 n - A057428 n

end

end A051510.P16791344113899420474

namespace A051510

/-- `A051508(n)-A057428(n)` -/
def P16791344113899420474.Spec : Prop :=
  ∀ n, P16791344113899420474.a n = A051510 n

end A051510

/-!
# A051511: a(n) = floor(tan(2^n)).

The programs for A051511, the canonical program `A051511.P16106320985316429345` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A051511 has offset 0).

The definition of A051511 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(tan(2^n))` (program `A051511.P16106320985316429345`, by `A051511.P16106320985316429345.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A051511.P16106320985316429345

`floor(tan(2^n))`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A051511

/-- `floor(tan(2^n))` -/
def P16106320985316429345.Spec : Prop :=
  ∀ n, P16106320985316429345.a n = A051511 n

theorem P16106320985316429345.correct : P16106320985316429345.Spec := by
  intro n
  simp only [A051511]

end A051511

/-! ## A051511.P8240640183155431599

`ceil(tan(2^n))-1`
-/

namespace A051511.P8240640183155431599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.tan (2 ^ n : ℝ)⌉ - 1

end

end A051511.P8240640183155431599

namespace A051511

/-- `ceil(tan(2^n))-1` -/
def P8240640183155431599.Spec : Prop :=
  ∀ n, P8240640183155431599.a n = A051511 n

end A051511

/-! ## A051511.P4233377380688660400

`floor(1/cot(2^n))`
-/

namespace A051511.P4233377380688660400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / Real.cot (2 ^ n : ℝ)⌋

end

end A051511.P4233377380688660400

namespace A051511

/-- `floor(1/cot(2^n))` -/
def P4233377380688660400.Spec : Prop :=
  ∀ n, P4233377380688660400.a n = A051511 n

theorem P4233377380688660400.correct : P4233377380688660400.Spec := by
  intro n
  simp only [A051511, Nat.add_sub_cancel, A051511.P4233377380688660400.a, A051511.P16106320985316429345.a, SequenceMachineLib.memo_apply]
  try simp

end A051511

/-! ## A051511.P2321302864431214806

`-ceil(tan(-2^n))`
-/

namespace A051511.P2321302864431214806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -⌈Real.tan (-(2 ^ n : ℤ) : ℝ)⌉

end

end A051511.P2321302864431214806

namespace A051511

/-- `-ceil(tan(-2^n))` -/
def P2321302864431214806.Spec : Prop :=
  ∀ n, P2321302864431214806.a n = A051511 n

end A051511

/-! ## A051511.P16554041575462604502

`floor(cot(2^n)^-1)`
-/

namespace A051511.P16554041575462604502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.cot (2 ^ n : ℝ) ^ (-1 : ℤ)⌋

end

end A051511.P16554041575462604502

namespace A051511

/-- `floor(cot(2^n)^-1)` -/
def P16554041575462604502.Spec : Prop :=
  ∀ n, P16554041575462604502.a n = A051511 n

theorem P16554041575462604502.correct : P16554041575462604502.Spec := by
  intro n
  simp only [A051511, Nat.add_sub_cancel, A051511.P16554041575462604502.a, A051511.P16106320985316429345.a, SequenceMachineLib.memo_apply]
  try simp

end A051511

/-! ## A051511.P1977569002098436635

`floor(tan(A000079(n)))%(4*(n+1))`
-/

namespace A051511.P1977569002098436635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊Real.tan (A000079 n : ℝ)⌋ (4 * (n + 1) : ℤ)

end

end A051511.P1977569002098436635

namespace A051511

/-- `floor(tan(A000079(n)))%(4*(n+1))` -/
def P1977569002098436635.Spec : Prop :=
  ∀ n, P1977569002098436635.a n = A051511 n

end A051511

/-!
# A051512: a(n) = floor(tan(prime(n))).

The programs for A051512, the canonical program `A051512.P16682247937383549340` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A051512 has offset 1).

The definition of A051512 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A051512.P16682247937383549340

`floor(tan(A000040(n+1)))`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A051512

/-- `floor(tan(A000040(n+1)))` -/
def P16682247937383549340.Spec : Prop :=
  ∀ n, P16682247937383549340.a n = A051512 (n + 1)

theorem P16682247937383549340.correct : P16682247937383549340.Spec := by
  intro n
  simp only [A051512, Nat.add_sub_cancel]

end A051512

/-! ## A051512.P938069021101156785

`floor(tan(record[A006530(n+2)]))`
-/

namespace A051512.P938069021101156785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.tan (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℝ)⌋

end

end A051512.P938069021101156785

namespace A051512

/-- `floor(tan(record[A006530(n+2)]))` -/
def P938069021101156785.Spec : Prop :=
  ∀ n, P938069021101156785.a n = A051512 (n + 1)

end A051512

/-! ## A051512.P12865783871748356044

`floor(tan(record[A020639(n+2)]))`
-/

namespace A051512.P12865783871748356044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.tan (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℝ)⌋

end

end A051512.P12865783871748356044

namespace A051512

/-- `floor(tan(record[A020639(n+2)]))` -/
def P12865783871748356044.Spec : Prop :=
  ∀ n, P12865783871748356044.a n = A051512 (n + 1)

end A051512

/-! ## A051512.P12823427230277858379

`floor(tan(eq[1, A054024(n+1)]+1))`
-/

namespace A051512.P12823427230277858379
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054024 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.tan (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1 : ℝ)⌋

end

end A051512.P12823427230277858379

namespace A051512

/-- `floor(tan(eq[1, A054024(n+1)]+1))` -/
def P12823427230277858379.Spec : Prop :=
  ∀ n, P12823427230277858379.a n = A051512 (n + 1)

end A051512

/-! ## A051512.P13644362072762192336

`floor(tan(p?[comp[n²]]))`
-/

namespace A051512.P13644362072762192336
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.tan (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℝ)⌋

end

end A051512.P13644362072762192336

namespace A051512

/-- `floor(tan(p?[comp[n²]]))` -/
def P13644362072762192336.Spec : Prop :=
  ∀ n, P13644362072762192336.a n = A051512 (n + 1)

end A051512

/-! ## A051512.P14121411075025872996

`floor(tan(record[∑{p}[n+2, #]]))`
-/

namespace A051512.P14121411075025872996
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.tan (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℝ)⌋

end

end A051512.P14121411075025872996

namespace A051512

/-- `floor(tan(record[∑{p}[n+2, #]]))` -/
def P14121411075025872996.Spec : Prop :=
  ∀ n, P14121411075025872996.a n = A051512 (n + 1)

end A051512

/-! ## A051512.P312881076592927564

`floor(tan(record[A039649(n+1)]))`
-/

namespace A051512.P312881076592927564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039649 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.tan (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℝ)⌋

end

end A051512.P312881076592927564

namespace A051512

/-- `floor(tan(record[A039649(n+1)]))` -/
def P312881076592927564.Spec : Prop :=
  ∀ n, P312881076592927564.a n = A051512 (n + 1)

end A051512

/-! ## A051512.P10618844967713820501

`floor(tan(record[A093074(n+1)]))`
-/

namespace A051512.P10618844967713820501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093074 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.tan (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℝ)⌋

end

end A051512.P10618844967713820501

namespace A051512

/-- `floor(tan(record[A093074(n+1)]))` -/
def P10618844967713820501.Spec : Prop :=
  ∀ n, P10618844967713820501.a n = A051512 (n + 1)

end A051512

/-! ## A051512.P15725634754109137602

`floor(tan(record[A014963(n+2)]))`
-/

namespace A051512.P15725634754109137602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.tan (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℝ)⌋

end

end A051512.P15725634754109137602

namespace A051512

/-- `floor(tan(record[A014963(n+2)]))` -/
def P15725634754109137602.Spec : Prop :=
  ∀ n, P15725634754109137602.a n = A051512 (n + 1)

end A051512

/-! ## A051512.P17585083230363598162

`floor(tan(record[A123528(n+2)]))`
-/

namespace A051512.P17585083230363598162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123528 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.tan (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℝ)⌋

end

end A051512.P17585083230363598162

namespace A051512

/-- `floor(tan(record[A123528(n+2)]))` -/
def P17585083230363598162.Spec : Prop :=
  ∀ n, P17585083230363598162.a n = A051512 (n + 1)

end A051512

/-! ## A051512.P3008644499805838347

`A000503(A000040(n+1))`
-/

namespace A051512.P3008644499805838347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000503 (A000040 (n + 1)).toNat

end

end A051512.P3008644499805838347

namespace A051512

/-- `A000503(A000040(n+1))` -/
def P3008644499805838347.Spec : Prop :=
  ∀ n, P3008644499805838347.a n = A051512 (n + 1)

end A051512

/-! ## A051512.P4865272962906330151

`A000503(A008578(n+2))`
-/

namespace A051512.P4865272962906330151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000503 (A008578 (n + 2)).toNat

end

end A051512.P4865272962906330151

namespace A051512

/-- `A000503(A008578(n+2))` -/
def P4865272962906330151.Spec : Prop :=
  ∀ n, P4865272962906330151.a n = A051512 (n + 1)

end A051512

/-! ## A051512.P5054116232190263140

`A000503(A182986(n+2))`
-/

namespace A051512.P5054116232190263140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000503 (A182986 (n + 2)).toNat

end

end A051512.P5054116232190263140

namespace A051512

/-- `A000503(A182986(n+2))` -/
def P5054116232190263140.Spec : Prop :=
  ∀ n, P5054116232190263140.a n = A051512 (n + 1)

end A051512

/-! ## A051512.P10783814425470800135

`A000503(record[A006530(n+2)])`
-/

namespace A051512.P10783814425470800135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000503 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A051512.P10783814425470800135

namespace A051512

/-- `A000503(record[A006530(n+2)])` -/
def P10783814425470800135.Spec : Prop :=
  ∀ n, P10783814425470800135.a n = A051512 (n + 1)

end A051512

/-! ## A051512.P14024679962721745726

`A000503(record[A014963(n+2)])`
-/

namespace A051512.P14024679962721745726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000503 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A051512.P14024679962721745726

namespace A051512

/-- `A000503(record[A014963(n+2)])` -/
def P14024679962721745726.Spec : Prop :=
  ∀ n, P14024679962721745726.a n = A051512 (n + 1)

end A051512

/-! ## A051512.P2520073655366722487

`A000503(record[A020639(n+2)])`
-/

namespace A051512.P2520073655366722487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000503 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A051512.P2520073655366722487

namespace A051512

/-- `A000503(record[A020639(n+2)])` -/
def P2520073655366722487.Spec : Prop :=
  ∀ n, P2520073655366722487.a n = A051512 (n + 1)

end A051512

/-! ## A051512.P10947832256196332792

`floor(tan(record[A051664(n+1)]))`
-/

namespace A051512.P10947832256196332792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051664 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.tan (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℝ)⌋

end

end A051512.P10947832256196332792

namespace A051512

/-- `floor(tan(record[A051664(n+1)]))` -/
def P10947832256196332792.Spec : Prop :=
  ∀ n, P10947832256196332792.a n = A051512 (n + 1)

end A051512

/-!
# A051514: (Terms in A014762)/4.

The programs for A051514, there is no canonical definition to state claims against.
-/

/-! ## A051514.P4636533440807701307

`A051497(n+1)²`
-/

namespace A051514.P4636533440807701307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051497 (n + 1) ^ 2

end

end A051514.P4636533440807701307

/-! ## A051514.P9743603577598795441

`(A014476(n+1)/2)²`
-/

namespace A051514.P9743603577598795441
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A014476 (n + 1) : ℚ) / 2) ^ 2

end

end A051514.P9743603577598795441

/-! ## A051514.P15692187107796219610

`A051497(n+1)^A020639(2*(n+1))`
-/

namespace A051514.P15692187107796219610
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051497 (n + 1) : ℚ) ^ (A020639 (2 * (n + 1)) : ℤ)

end

end A051514.P15692187107796219610

/-! ## A051514.P12495753392770863235

`(A014476(n+1)/2)^A020639(2*(n+1))`
-/

namespace A051514.P12495753392770863235
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A014476 (n + 1) : ℚ) / 2) ^ (A020639 (2 * (n + 1)) : ℤ)

end

end A051514.P12495753392770863235

/-! ## A051514.P9274093128694777716

`(A014476(n+1)/2)^A000005(A065091(n+2))`
-/

namespace A051514.P9274093128694777716
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A014476 (n + 1) : ℚ) / 2) ^ (A000005 (A065091 (n + 2)).toNat : ℤ)

end

end A051514.P9274093128694777716

/-! ## A051514.P1814973820345809696

`A014762(n+1)/4`
-/

namespace A051514.P1814973820345809696
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014762 (n + 1) : ℚ) / 4

end

end A051514.P1814973820345809696

/-! ## A051514.P2502214703043829378

`A051497(n+1)^A000005(A051507(n+1))`
-/

namespace A051514.P2502214703043829378
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051497 (n + 1) : ℚ) ^ (A000005 (A051507 (n + 1)).toNat : ℤ)

end

end A051514.P2502214703043829378

/-! ## A051514.P11071718914594688840

`(A014476(n+1)/2)^A071187(Δ[A023545(n+1)])`
-/

namespace A051514.P11071718914594688840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A014476 (n + 1) : ℚ) / 2) ^ (A071187 (f1 (n + 1) - f1 n).toNat : ℤ)

end

end A051514.P11071718914594688840

/-! ## A051514.P29027506537025898

`A051497(n+1)^A051521(A051541(2*n+1))`
-/

namespace A051514.P29027506537025898
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051497 (n + 1) : ℚ) ^ (A051521 (A051541 (2 * n + 1)).toNat : ℤ)

end

end A051514.P29027506537025898

/-! ## A051514.P10251347204210351051

`A051497(n+1)^(2%A000032(A016945(n+1)))`
-/

namespace A051514.P10251347204210351051
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051497 (n + 1) : ℚ) ^ (Int.tmod 2 (A000032 (A016945 (n + 1)).toNat) : ℤ)

end

end A051514.P10251347204210351051

/-!
# A051515: (Terms in A014738)/4.

The programs for A051515, the canonical program `A051515.P8976191201029260124` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A051515 has offset 1).

The definition of A051515 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A051515.P8976191201029260124

`∑[(n+1)*gcd(3, n%2)]²`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A051515

/-- `∑[(n+1)*gcd(3, n%2)]²` -/
def P8976191201029260124.Spec : Prop :=
  ∀ n, (P8976191201029260124.a n : ℤ) = A051515 (n + 1)

theorem P8976191201029260124.correct : P8976191201029260124.Spec := by
  intro n
  simp only [A051515, Nat.add_sub_cancel]

end A051515

/-! ## A051515.P15864848351030744373

`∑[(n+1)*or(1, gcd(2, n))]²`
-/

namespace A051515.P15864848351030744373
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * Nat.lor 1 (Nat.gcd 2 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A051515.P15864848351030744373

namespace A051515

/-- `∑[(n+1)*or(1, gcd(2, n))]²` -/
def P15864848351030744373.Spec : Prop :=
  ∀ n, (P15864848351030744373.a n : ℤ) = A051515 (n + 1)

end A051515

/-! ## A051515.P2619211977668323554

`∑[(n+1)*((-1)^n+2)]²`
-/

namespace A051515.P2619211977668323554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * ((-1) ^ n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A051515.P2619211977668323554

namespace A051515

/-- `∑[(n+1)*((-1)^n+2)]²` -/
def P2619211977668323554.Spec : Prop :=
  ∀ n, P2619211977668323554.a n = A051515 (n + 1)

end A051515

/-! ## A051515.P5783021359606534993

`C(or(1, n)+n+3, 2)²/4`
-/

namespace A051515.P5783021359606534993
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (Nat.lor 1 n + (n + 3)) 2 ^ 2 : ℚ) / 4

end

end A051515.P5783021359606534993

namespace A051515

/-- `C(or(1, n)+n+3, 2)²/4` -/
def P5783021359606534993.Spec : Prop :=
  ∀ n, P5783021359606534993.a n = (A051515 (n + 1) : ℚ)

end A051515

/-! ## A051515.P4726987642128299328

`lcm((2*n+3)², ∑[char[2*n]]²)`
-/

namespace A051515.P4726987642128299328
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm ((2 * n + 3) ^ 2) ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2)

end

end A051515.P4726987642128299328

namespace A051515

/-- `lcm((2*n+3)², ∑[char[2*n]]²)` -/
def P4726987642128299328.Spec : Prop :=
  ∀ n, (P4726987642128299328.a n : ℤ) = A051515 (n + 1)

end A051515

/-! ## A051515.P11806546096761119691

`A014738(n)/4`
-/

namespace A051515.P11806546096761119691
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014738 n : ℚ) / 4

end

end A051515.P11806546096761119691

namespace A051515

/-- `A014738(n)/4` -/
def P11806546096761119691.Spec : Prop :=
  ∀ n, P11806546096761119691.a n = (A051515 (n + 1) : ℚ)

end A051515

/-! ## A051515.P2632312686881626257

`record[A074378(round(xor(1, n)/2))²]`
-/

namespace A051515.P2632312686881626257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074378 (SequenceMachineLib.roundAway ((Nat.xor 1 n : ℚ) / 2)).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A051515.P2632312686881626257

namespace A051515

/-- `record[A074378(round(xor(1, n)/2))²]` -/
def P2632312686881626257.Spec : Prop :=
  ∀ n, P2632312686881626257.a n = A051515 (n + 1)

end A051515

/-! ## A051515.P14366897108579124082

`(2*n+3)²*A008794(n+2)`
-/

namespace A051515.P14366897108579124082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n + 3) ^ 2 : ℤ) * A008794 (n + 2)

end

end A051515.P14366897108579124082

namespace A051515

/-- `(2*n+3)²*A008794(n+2)` -/
def P14366897108579124082.Spec : Prop :=
  ∀ n, P14366897108579124082.a n = A051515 (n + 1)

end A051515

/-! ## A051515.P732553697573009821

`A074378(n+1)*A074378(n+1)`
-/

namespace A051515.P732553697573009821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074378 (n + 1) * A074378 (n + 1)

end

end A051515.P732553697573009821

namespace A051515

/-- `A074378(n+1)*A074378(n+1)` -/
def P732553697573009821.Spec : Prop :=
  ∀ n, P732553697573009821.a n = A051515 (n + 1)

end A051515

/-! ## A051515.P2092707994159229198

`A308123(2*n+3)*A308123(2*n+3)`
-/

namespace A051515.P2092707994159229198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308123 (2 * n + 3) * A308123 (2 * n + 3)

end

end A051515.P2092707994159229198

namespace A051515

/-- `A308123(2*n+3)*A308123(2*n+3)` -/
def P2092707994159229198.Spec : Prop :=
  ∀ n, P2092707994159229198.a n = A051515 (n + 1)

end A051515

/-!
# A051516: Number of triangles with perimeter n having integer sides and area.

The programs for A051516, there is no canonical definition to state claims against.
-/

/-! ## A051516.P1943056102621780563

`∑{d}[n+1, A070138(#)]`
-/

namespace A051516.P1943056102621780563
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A070138 d

end

end A051516.P1943056102621780563

/-! ## A051516.P10518930325251815057

`A051517(A152271(n))`
-/

namespace A051516.P10518930325251815057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051517 (A152271 n).toNat

end

end A051516.P10518930325251815057

/-! ## A051516.P12367148410965348072

`A051517(A057979(n)+1)`
-/

namespace A051516.P12367148410965348072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051517 (A057979 n + 1).toNat

end

end A051516.P12367148410965348072

/-! ## A051516.P9575478654269763024

`A051517(A133265(n)/2)`
-/

namespace A051516.P9575478654269763024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051517 (SequenceMachineLib.roundAway ((A133265 n : ℚ) / 2)).toNat

end

end A051516.P9575478654269763024

/-! ## A051516.P14765562049433295822

`A051517(gcd(n+1, A051494(n)))`
-/

namespace A051516.P14765562049433295822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051517 (Int.gcd (n + 1 : ℤ) (A051494 n))

end

end A051516.P14765562049433295822

/-! ## A051516.P504367007616633431

`A070139(n+1)+A024153(n+1)`
-/

namespace A051516.P504367007616633431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070139 (n + 1) + A024153 (n + 1)

end

end A051516.P504367007616633431

/-! ## A051516.P13106558050725265695

`∑{d}[n+1, A051517(#)*A063524((n+1)/#-1)]`
-/

namespace A051516.P13106558050725265695
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A051517 d * A063524 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A051516.P13106558050725265695

/-! ## A051516.P5047463577772488588

`A024155(n+1)+A070141(n+1)+A070140(n+1)`
-/

namespace A051516.P5047463577772488588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024155 (n + 1) + (A070141 (n + 1) + A070140 (n + 1))

end

end A051516.P5047463577772488588

/-! ## A051516.P16473285690566245183

`A070208(n+1)+A070201(n+1)`
-/

namespace A051516.P16473285690566245183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070208 (n + 1) + A070201 (n + 1)

end

end A051516.P16473285690566245183

/-! ## A051516.P13234841964611748012

`A051517(A051159(∑[n]+3)+1)`
-/

namespace A051516.P13234841964611748012
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051517 (A051159 (∑ j ∈ Finset.range (n + 1), f1 j + 3) + 1).toNat

end

end A051516.P13234841964611748012

/-!
# A051517: Triangles of perimeter 2n having integer sides and area.

The programs for A051517, there is no canonical definition to state claims against.
-/

/-! ## A051517.P4280679696494357086

`A051516(2*(n+1))`
-/

namespace A051517.P4280679696494357086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051516 (2 * (n + 1))

end

end A051517.P4280679696494357086

/-! ## A051517.P3090840500846922930

`∑{d}[2*(n+1), A070138(#)]`
-/

namespace A051517.P3090840500846922930
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A070138 d

end

end A051517.P3090840500846922930

/-! ## A051517.P6249195616594016266

`A051516(n+2+n)%(n+1)`
-/

namespace A051517.P6249195616594016266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A051516 (n + 2 + n)) (n + 1 : ℤ)

end

end A051517.P6249195616594016266

/-! ## A051517.P4413982417556609959

`and(-1, A051516(record[2-xor(1, -n)]))`
-/

namespace A051517.P4413982417556609959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - Int.xor 1 (-(n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A051516 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat)

end

end A051517.P4413982417556609959

/-! ## A051517.P6014637152878064790

`A051516(n+2+n)+A000038(n+1)`
-/

namespace A051517.P6014637152878064790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051516 (n + 2 + n) + A000038 (n + 1)

end

end A051517.P6014637152878064790

/-! ## A051517.P6668821652728634826

`A070139(2*(n+1))+A024153(2*(n+1))`
-/

namespace A051517.P6668821652728634826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070139 (2 * (n + 1)) + A024153 (2 * (n + 1))

end

end A051517.P6668821652728634826

/-! ## A051517.P3206323936438639411

`A070208(2*(n+1))+A070201(2*(n+1))`
-/

namespace A051517.P3206323936438639411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070208 (2 * (n + 1)) + A070201 (2 * (n + 1))

end

end A051517.P3206323936438639411

/-! ## A051517.P7090717812625762232

`A000196(A051516(Δ[lcm(n, n+1)])²)`
-/

namespace A051517.P7090717812625762232
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm n (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A051516 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat ^ 2).toNat

end

end A051517.P7090717812625762232

/-!
# A051518: Perimeters of Heronian triangles.

The programs for A051518, there is no canonical definition to state claims against.
-/

/-! ## A051518.P4548622217040315883

`lt[0, A051516(n+1)]+1`
-/

namespace A051518.P4548622217040315883
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051516 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A051518.P4548622217040315883

/-! ## A051518.P6176967249785708710

`A020725(lt[0, A051516(n+1)])`
-/

namespace A051518.P6176967249785708710
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051516 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A051518.P6176967249785708710

/-! ## A051518.P18076982340359820103

`A001057(4*(comp[A305705(n+1)-1]+1)-1)`
-/

namespace A051518.P18076982340359820103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305705 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (4 * (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1) - 1)

end

end A051518.P18076982340359820103

/-! ## A051518.P17396295168176655776

`A057979(4*(comp[A305705(n+1)-1]+1)+1)`
-/

namespace A051518.P17396295168176655776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305705 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (4 * (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1) + 1)

end

end A051518.P17396295168176655776

/-! ## A051518.P10425511223990148392

`2*A305704(n+1)`
-/

namespace A051518.P10425511223990148392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A305704 (n + 1)

end

end A051518.P10425511223990148392

/-! ## A051518.P7065319793616871207

`A004277(A305704(n+1))`
-/

namespace A051518.P7065319793616871207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A305704 (n + 1)).toNat

end

end A051518.P7065319793616871207

/-! ## A051518.P14007051383190647092

`A004275(A305704(n+1)+1)`
-/

namespace A051518.P14007051383190647092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A305704 (n + 1) + 1).toNat

end

end A051518.P14007051383190647092

/-! ## A051518.P2947745278123924842

`A103517(A305704(n+1)-1)`
-/

namespace A051518.P2947745278123924842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 (A305704 (n + 1) - 1).toNat

end

end A051518.P2947745278123924842

/-! ## A051518.P12651194350984017723

`A005843(A305704(n+1)%A167487(n+3))`
-/

namespace A051518.P12651194350984017723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (Int.tmod (A305704 (n + 1)) (A167487 (n + 3))).toNat

end

end A051518.P12651194350984017723

/-! ## A051518.P10462595006085358387

`A005843(A305704(n+1))%(A052905(n+7)-4)`
-/

namespace A051518.P10462595006085358387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005843 (A305704 (n + 1)).toNat) (A052905 (n + 7) - 4)

end

end A051518.P10462595006085358387

/-! ## A051518.P4712378362022121024

`A334936(n+1)/2`
-/

namespace A051518.P4712378362022121024
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A334936 (n + 1) : ℚ) / 2

end

end A051518.P4712378362022121024

/-! ## A051518.P766052997748046710

`A001281(A334936(n+1))`
-/

namespace A051518.P766052997748046710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A334936 (n + 1)).toNat

end

end A051518.P766052997748046710

/-! ## A051518.P18382942196865692001

`A002265(2*A334936(n+1))`
-/

namespace A051518.P18382942196865692001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (2 * A334936 (n + 1)).toNat

end

end A051518.P18382942196865692001

/-! ## A051518.P12441496785473327857

`A334936(n+1)-A305704(n+1)-A305704(n+1)`
-/

namespace A051518.P12441496785473327857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334936 (n + 1) - A305704 (n + 1) - A305704 (n + 1)

end

end A051518.P12441496785473327857

/-!
# A051521: Number of ways to represent n as k/d(k), where d(k) = A000005(k) is the number of divisors of k.

The programs for A051521, there is no canonical definition to state claims against.
-/

/-! ## A051521.P8170182504915908065

`A190938(n+1)+A089026(A027423(n))`
-/

namespace A051521.P8170182504915908065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190938 (n + 1) + A089026 (A027423 n).toNat

end

end A051521.P8170182504915908065

/-! ## A051521.P1253385688040844374

`gcd(A128885(A128888(n)), A128902(n+1))`
-/

namespace A051521.P1253385688040844374
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A128885 (A128888 n).toNat) (A128902 (n + 1))

end

end A051521.P1253385688040844374

/-! ## A051521.P9032261726932465234

`A325789(A002183(n+1))+A190938(n+1)`
-/

namespace A051521.P9032261726932465234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325789 (A002183 (n + 1)).toNat + A190938 (n + 1)

end

end A051521.P9032261726932465234

/-! ## A051521.P2578561428796142239

`A309978(A323438(n+1)+A166464(n+3))`
-/

namespace A051521.P2578561428796142239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309978 (A323438 (n + 1) + A166464 (n + 3)).toNat

end

end A051521.P2578561428796142239

/-! ## A051521.P13249259396937093845

`A309978(A133033(n+4)+A001055(n+1))`
-/

namespace A051521.P13249259396937093845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309978 (A133033 (n + 4) + A001055 (n + 1)).toNat

end

end A051521.P13249259396937093845

/-!
# A051522: Least positive integer with exactly n representations as k/d(k), where d(k) = number of divisors of k.

The programs for A051522, there is no canonical definition to state claims against.
-/

/-! ## A051522.P11048449748802350298

`A074759(2*a(n-1)-C(n-1, 5)-2+n)` with `a(0)=18, a(1)=4, a(2)=1`
-/

namespace A051522.P11048449748802350298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [18, 4, 1] fun n a =>
  A074759 (2 * a (n - 1) - (Nat.choose ((n : ℤ) - 1).toNat 5 : ℤ) - 2 + (n : ℤ)).toNat

end

end A051522.P11048449748802350298

/-!
# A051524: Second unsigned column of triangle A051338.

The programs for A051524, there is no canonical definition to state claims against.
-/

/-! ## A051524.P16460627104285348291

`lcm(∑{e}[n+1, #], A051338(A000124(n)))`
-/

namespace A051524.P16460627104285348291
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℤ) (A051338 (A000124 n).toNat)

end

end A051524.P16460627104285348291

/-! ## A051524.P13824059322858969579

`A051338(A000124(n))*A062157(n)`
-/

namespace A051524.P13824059322858969579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051338 (A000124 n).toNat * A062157 n

end

end A051524.P13824059322858969579

/-! ## A051524.P4764560834025141655

`lcm(A000196(n), A051338(A000124(n)))`
-/

namespace A051524.P4764560834025141655
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000196 n) (A051338 (A000124 n).toNat)

end

end A051524.P4764560834025141655

/-! ## A051524.P17423509612411248489

`A067176(A167499(n+4))`
-/

namespace A051524.P17423509612411248489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067176 (A167499 (n + 4)).toNat

end

end A051524.P17423509612411248489

/-! ## A051524.P8971980554224499949

`A067176(eq[5, A002262(n)])`
-/

namespace A051524.P8971980554224499949
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067176 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A051524.P8971980554224499949

/-!
# A051525: Third unsigned column of triangle A051338.

The programs for A051525, there is no canonical definition to state claims against.
-/

/-! ## A051525.P17134300143565433439

`floor(A215971(3*n+2)/85)`
-/

namespace A051525.P17134300143565433439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A215971 (3 * n + 2) : ℚ) / 85⌋

end

end A051525.P17134300143565433439

/-!
# A051526: Order of group G_{1,n}^{8}.

The programs for A051526, there is no canonical definition to state claims against.
-/

/-! ## A051526.P17139629823349033031

`A065430(8*A330929(n+1))`
-/

namespace A051526.P17139629823349033031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065430 (8 * A330929 (n + 1)).toNat

end

end A051526.P17139629823349033031

/-!
# A051527: Order of group H_{1,n}^{8}.

The programs for A051527, there is no canonical definition to state claims against.
-/

/-! ## A051527.P6810509081666642336

`2*A051483(n+1)`
-/

namespace A051527.P6810509081666642336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A051483 (n + 1)

end

end A051527.P6810509081666642336

/-! ## A051527.P10792785624069263249

`A008458(A051483(n+1)/3)`
-/

namespace A051527.P10792785624069263249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 (SequenceMachineLib.roundAway ((A051483 (n + 1) : ℚ) / 3)).toNat

end

end A051527.P10792785624069263249

/-! ## A051527.P9757671880575663631

`A008588(A051483(n+1)/3)`
-/

namespace A051527.P9757671880575663631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008588 (SequenceMachineLib.roundAway ((A051483 (n + 1) : ℚ) / 3)).toNat

end

end A051527.P9757671880575663631

/-!
# A051529: INVERT transform of A000081 = [1, 1, 1, 2, 4, 9, 20, 48, 115, 286,...].

The programs for A051529, there is no canonical definition to state claims against.
-/

/-! ## A051529.P545318286007473345

`∑[A247908(A099484(n))]`
-/

namespace A051529.P545318286007473345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247908 (A099484 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051529.P545318286007473345

/-! ## A051529.P9628146732646229784

`∑[A024417(A320346(n))]`
-/

namespace A051529.P9628146732646229784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024417 (A320346 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051529.P9628146732646229784

/-! ## A051529.P609177041568328484

`∑[∑[A293137(A337038(n))]]`
-/

namespace A051529.P609177041568328484
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293137 (A337038 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051529.P609177041568328484

/-! ## A051529.P11664917814010006566

`A226190(A181600(2*n)+n)`
-/

namespace A051529.P11664917814010006566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226190 (A181600 (2 * n) + (n : ℤ)).toNat

end

end A051529.P11664917814010006566

/-!
# A051531: Molien series for group H_{1,3}^{8} of order 2304.

The programs for A051531, there is no canonical definition to state claims against.
-/

/-! ## A051531.P12509637410931143466

`A051530(2*n)`
-/

namespace A051531.P12509637410931143466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051530 (2 * n)

end

end A051531.P12509637410931143466

/-! ## A051531.P11571381395131945500

`A051530(A004277(n))+A000007(n)`
-/

namespace A051531.P11571381395131945500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051530 (A004277 n).toNat + A000007 n

end

end A051531.P11571381395131945500

/-! ## A051531.P14777080277237536932

`or(A000007(n), A051530(A005843(n)))`
-/

namespace A051531.P14777080277237536932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A051530 (A005843 n).toNat)

end

end A051531.P14777080277237536932

/-! ## A051531.P1611400504146322290

`A051530(A005843(n))%A034897(n+1)`
-/

namespace A051531.P1611400504146322290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A051530 (A005843 n).toNat) (A034897 (n + 1))

end

end A051531.P1611400504146322290

/-! ## A051531.P2723332674779134707

`A051530(A004277(n))+and(1, A165835(n+1))`
-/

namespace A051531.P2723332674779134707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051530 (A004277 n).toNat + Int.land 1 (A165835 (n + 1))

end

end A051531.P2723332674779134707

/-! ## A051531.P7906907881948287731

`A051530(A004277(n))+A008683(A089241(n+1))`
-/

namespace A051531.P7906907881948287731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051530 (A004277 n).toNat + A008683 (A089241 (n + 1)).toNat

end

end A051531.P7906907881948287731

/-! ## A051531.P437539233193610371

`A322585(A003309(n+2))+A051530(A004277(n))`
-/

namespace A051531.P437539233193610371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322585 (A003309 (n + 2)).toNat + A051530 (A004277 n).toNat

end

end A051531.P437539233193610371

/-! ## A051531.P6737065094997862710

`A051530(A004277(n))^A003415(A006530(n+1))`
-/

namespace A051531.P6737065094997862710
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051530 (A004277 n).toNat : ℚ) ^ (A003415 (A006530 (n + 1)).toNat : ℤ)

end

end A051531.P6737065094997862710

/-! ## A051531.P10363161149244281484

`A051530(A004277(n))+A008683(A124512(n+1))`
-/

namespace A051531.P10363161149244281484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051530 (A004277 n).toNat + A008683 (A124512 (n + 1)).toNat

end

end A051531.P10363161149244281484

/-! ## A051531.P10937662548531836062

`A322585(A237057(n))+A051530(A004277(n))`
-/

namespace A051531.P10937662548531836062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322585 (A237057 n).toNat + A051530 (A004277 n).toNat

end

end A051531.P10937662548531836062

/-! ## A051531.P13308415285785948788

`A051530(A004277(n))+A008683((n+1)²)`
-/

namespace A051531.P13308415285785948788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051530 (A004277 n).toNat + A008683 ((n + 1) ^ 2)

end

end A051531.P13308415285785948788

/-!
# A051532: The abelian orders (or abelian numbers): numbers m such that every group of order m is abelian.

The programs for A051532, there is no canonical definition to state claims against.
-/

/-! ## A051532.P1042743515417037020

`∪[A003277(n+1), A350152(n+1)]`
-/

namespace A051532.P1042743515417037020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003277 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350152 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A051532.P1042743515417037020

/-! ## A051532.P6022103048507721838

`filter[A056867(n+1), A212793(#)]`
-/

namespace A051532.P6022103048507721838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056867 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A212793 (f1 j).toNat = 1) n)

end

end A051532.P6022103048507721838

/-! ## A051532.P1605137858034827804

`∩[A004709(n+1), A056867(n+1)]`
-/

namespace A051532.P1605137858034827804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004709 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056867 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051532.P1605137858034827804

/-! ## A051532.P8676378067764082103

`lt[A060689(n+1), 1]+1`
-/

namespace A051532.P8676378067764082103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060689 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A051532.P8676378067764082103

/-! ## A051532.P17504628850621747466

`eq[A000001(n), A000688(A028310(n))]`
-/

namespace A051532.P17504628850621747466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000001 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000688 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A051532.P17504628850621747466

/-! ## A051532.P13223485879597810835

`eq[2*A000001(n), A050377(A008574(n))]`
-/

namespace A051532.P13223485879597810835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000001 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050377 (A008574 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A051532.P13223485879597810835

/-! ## A051532.P9363550811462395742

`eq[A000007(n), A060689(A000007(n)+n)]`
-/

namespace A051532.P9363550811462395742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060689 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A051532.P9363550811462395742

/-! ## A051532.P4114608085492739047

`record[A059806(n+1)]`
-/

namespace A051532.P4114608085492739047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059806 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A051532.P4114608085492739047

/-! ## A051532.P1519935646973915731

`eq[1, A059807(n+1)]+1`
-/

namespace A051532.P1519935646973915731
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059807 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A051532.P1519935646973915731

/-! ## A051532.P5048879753985226013

`lt[A238877(2*(n+1)), 1]+1`
-/

namespace A051532.P5048879753985226013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238877 (2 * (n + 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A051532.P5048879753985226013

/-! ## A051532.P15871868762936919474

`eq[n, A059806(A028310(n))]`
-/

namespace A051532.P15871868762936919474
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059806 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A051532.P15871868762936919474

/-! ## A051532.P10112543367571500070

`A008619(lt[A238877(n+1), 1])`
-/

namespace A051532.P10112543367571500070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238877 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A051532.P10112543367571500070

/-! ## A051532.P9452170438353044281

`A008619(eq[1, A238877(n+1)+1])`
-/

namespace A051532.P9452170438353044281
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238877 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A051532.P9452170438353044281

/-! ## A051532.P10197374928841731939

`eq[1, A060938(n+1)]+1`
-/

namespace A051532.P10197374928841731939
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060938 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A051532.P10197374928841731939

/-! ## A051532.P14052524052723641237

`record[A060653(n+1)]`
-/

namespace A051532.P14052524052723641237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060653 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A051532.P14052524052723641237

/-! ## A051532.P8448259954213632384

`eq[1, A241276(n+1)]+1`
-/

namespace A051532.P8448259954213632384
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241276 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A051532.P8448259954213632384

/-! ## A051532.P15109655709855530675

`lt[A083280(n+1), 1]+1`
-/

namespace A051532.P15109655709855530675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083280 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A051532.P15109655709855530675

/-! ## A051532.P18122522347999175914

`record[1-A061064(n+1)+n]`
-/

namespace A051532.P18122522347999175914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A061064 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A051532.P18122522347999175914

/-! ## A051532.P17075993703596644361

`lt[A083573(n+1), 1]+1`
-/

namespace A051532.P17075993703596644361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083573 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A051532.P17075993703596644361

/-!
# A051533: Numbers that are the sum of two positive triangular numbers.

The programs for A051533, the canonical program `A051533.P6966278410585714434` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A051533 has offset 1).

The definition of A051533 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4788 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A051533.P11900014356907499802

`lt[0, A052344(n)]`
-/

namespace A051533.P11900014356907499802
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052344 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A051533.P11900014356907499802

namespace A051533

/-- `lt[0, A052344(n)]` -/
def P11900014356907499802.Spec : Prop :=
  ∀ n, (P11900014356907499802.a n : ℤ) = A051533 (n + 1)

end A051533

/-! ## A051533.P6966278410585714434

`lt[0, A053603(n)]`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A051533

/-- `lt[0, A053603(n)]` -/
def P6966278410585714434.Spec : Prop :=
  ∀ n, (P6966278410585714434.a n : ℤ) = A051533 (n + 1)

theorem P6966278410585714434.correct : P6966278410585714434.Spec := by
  intro n
  simp only [A051533, Nat.add_sub_cancel]

end A051533

/-! ## A051533.P13954855100324877568

`lt[A010054(n), A052343(n)]`
-/

namespace A051533.P13954855100324877568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052343 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A051533.P13954855100324877568

namespace A051533

/-- `lt[A010054(n), A052343(n)]` -/
def P13954855100324877568.Spec : Prop :=
  ∀ n, (P13954855100324877568.a n : ℤ) = A051533 (n + 1)

end A051533

/-! ## A051533.P15463834931652254155

`lt[2*A073423(n), A008441(n)]`
-/

namespace A051533.P15463834931652254155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A073423 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008441 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A051533.P15463834931652254155

namespace A051533

/-- `lt[2*A073423(n), A008441(n)]` -/
def P15463834931652254155.Spec : Prop :=
  ∀ n, (P15463834931652254155.a n : ℤ) = A051533 (n + 1)

end A051533

/-! ## A051533.P7729827884425973181

`eq[1, A000045(ceil(A053603(n)/(n+1)))]`
-/

namespace A051533.P7729827884425973181
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 ⌈(A053603 n : ℚ) / (n + 1 : ℚ)⌉.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A051533.P7729827884425973181

namespace A051533

/-- `eq[1, A000045(ceil(A053603(n)/(n+1)))]` -/
def P7729827884425973181.Spec : Prop :=
  ∀ n, (P7729827884425973181.a n : ℤ) = A051533 (n + 1)

end A051533

/-! ## A051533.P6309006670775203809

`eq[A000038(n)², A000038(A053603(n))]`
-/

namespace A051533.P6309006670775203809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (A053603 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A051533.P6309006670775203809

namespace A051533

/-- `eq[A000038(n)², A000038(A053603(n))]` -/
def P6309006670775203809.Spec : Prop :=
  ∀ n, (P6309006670775203809.a n : ℤ) = A051533 (n + 1)

end A051533

/-! ## A051533.P16905151072263764920

`eq[A053603(n)², A028310(A053603(n)²)]`
-/

namespace A051533.P16905151072263764920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053603 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A053603 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A051533.P16905151072263764920

namespace A051533

/-- `eq[A053603(n)², A028310(A053603(n)²)]` -/
def P16905151072263764920.Spec : Prop :=
  ∀ n, (P16905151072263764920.a n : ℤ) = A051533 (n + 1)

end A051533

/-! ## A051533.P12269760923154277974

`lt[char[A000217(n)], A052343(n)]`
-/

namespace A051533.P12269760923154277974
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052343 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f3 j) n

end

end A051533.P12269760923154277974

namespace A051533

/-- `lt[char[A000217(n)], A052343(n)]` -/
def P12269760923154277974.Spec : Prop :=
  ∀ n, (P12269760923154277974.a n : ℤ) = A051533 (n + 1)

end A051533

/-! ## A051533.P1795731738330994646

`eq[1, ceil(A053603(n)/A000040(n+1))]`
-/

namespace A051533.P1795731738330994646
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A053603 n : ℚ) / (A000040 (n + 1) : ℚ)⌉

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A051533.P1795731738330994646

namespace A051533

/-- `eq[1, ceil(A053603(n)/A000040(n+1))]` -/
def P1795731738330994646.Spec : Prop :=
  ∀ n, (P1795731738330994646.a n : ℤ) = A051533 (n + 1)

end A051533

/-! ## A051533.P7827972016469835009

`eq[A000007(n+1), A000007(A053603(n))]`
-/

namespace A051533.P7827972016469835009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A053603 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A051533.P7827972016469835009

namespace A051533

/-- `eq[A000007(n+1), A000007(A053603(n))]` -/
def P7827972016469835009.Spec : Prop :=
  ∀ n, (P7827972016469835009.a n : ℤ) = A051533 (n + 1)

end A051533

/-! ## A051533.P8012150949801805147

`eq[A000038(n+1), A000038(A053603(n))]`
-/

namespace A051533.P8012150949801805147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (A053603 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A051533.P8012150949801805147

namespace A051533

/-- `eq[A000038(n+1), A000038(A053603(n))]` -/
def P8012150949801805147.Spec : Prop :=
  ∀ n, (P8012150949801805147.a n : ℤ) = A051533 (n + 1)

end A051533

/-! ## A051533.P7333495636187928461

`eq[2*A000007(n), A000007(A053603(n))]`
-/

namespace A051533.P7333495636187928461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A053603 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A051533.P7333495636187928461

namespace A051533

/-- `eq[2*A000007(n), A000007(A053603(n))]` -/
def P7333495636187928461.Spec : Prop :=
  ∀ n, (P7333495636187928461.a n : ℤ) = A051533 (n + 1)

end A051533

/-! ## A051533.P3414860927384968155

`lt[A010054(n), A000045(A138741(2*n))]`
-/

namespace A051533.P3414860927384968155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A138741 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A051533.P3414860927384968155

namespace A051533

/-- `lt[A010054(n), A000045(A138741(2*n))]` -/
def P3414860927384968155.Spec : Prop :=
  ∀ n, (P3414860927384968155.a n : ℤ) = A051533 (n + 1)

end A051533

/-!
# A051534: Integers n for which ceiling(n/2)*10^n - ceiling(n/2) is an n-White number.

The programs for A051534, there is no canonical definition to state claims against.
-/

/-! ## A051534.P3317666450827167003

`lt[A350041(A282062(3*n+4)), A001694(n+1)]`
-/

namespace A051534.P3317666450827167003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350041 (A282062 (3 * n + 4)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001694 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A051534.P3317666450827167003

/-! ## A051534.P1186048794347096231

`lt[A350041(A282062(3*n+4)), A349997(n+1)]`
-/

namespace A051534.P1186048794347096231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350041 (A282062 (3 * n + 4)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349997 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A051534.P1186048794347096231

/-! ## A051534.P14166730844104343211

`lt[A351566(3*n), A351566(A007811(3*n+1))]`
-/

namespace A051534.P14166730844104343211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351566 (3 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351566 (A007811 (3 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A051534.P14166730844104343211

/-! ## A051534.P2815172359421849522

`∑[A101615(Δ[A035564(n)])]`
-/

namespace A051534.P2815172359421849522
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035564 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101615 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051534.P2815172359421849522

/-! ## A051534.P6152006033120435684

`lt[A035564(A015808(n+3)), A060499(n)]`
-/

namespace A051534.P6152006033120435684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035564 (A015808 (n + 3)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060499 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A051534.P6152006033120435684

/-!
# A051536: a(n) = least common multiple of {1, 4, 7, 10, 13 ..., 3n+1} (A016777).

The programs for A051536, the canonical program `A051536.P14980569204951131107` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A051536 has offset 0).

The definition of A051536 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 110 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A051536.P14980569204951131107

`lcm(3*n+1, a(n-1))` with `a(0)=1`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A051536

/-- `lcm(3*n+1, a(n-1))` -/
def P14980569204951131107.Spec : Prop :=
  ∀ n, (P14980569204951131107.a n : ℤ) = A051536 n

theorem P14980569204951131107.correct : P14980569204951131107.Spec := by
  intro n
  simp only [A051536]

end A051536

/-! ## A051536.P1504725440380715498

`lcm(n+1+n+n, floor(a(n-1)))` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A051536.P1504725440380715498
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.lcm (n + 1 + n + n) (a (n - 1))

end

end A051536.P1504725440380715498

namespace A051536

/-- `lcm(n+1+n+n, floor(a(n-1)))` -/
def P1504725440380715498.Spec : Prop :=
  ∀ n, (P1504725440380715498.a n : ℤ) = A051536 n

theorem P1504725440380715498.correct : P1504725440380715498.Spec := by
  intro n
  simp only [A051536, Nat.add_sub_cancel, A051536.P1504725440380715498.a, A051536.P14980569204951131107.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A051536

/-! ## A051536.P3374691661069713589

`a(n-1)*A051544(n)` with `a(0)=1`
-/

namespace A051536.P3374691661069713589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A051544 n

end

end A051536.P3374691661069713589

namespace A051536

/-- `a(n-1)*A051544(n)` -/
def P3374691661069713589.Spec : Prop :=
  ∀ n, P3374691661069713589.a n = A051536 n

end A051536

/-! ## A051536.P1570553851980845367

`lcm(a(n-1), A016777(n))` with `a(0)=1`
-/

namespace A051536.P1570553851980845367
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Int.lcm (a (n - 1) : ℤ) (A016777 n)

end

end A051536.P1570553851980845367

namespace A051536

/-- `lcm(a(n-1), A016777(n))` -/
def P1570553851980845367.Spec : Prop :=
  ∀ n, (P1570553851980845367.a n : ℤ) = A051536 n

end A051536

/-! ## A051536.P13315928979658691071

`lcm(-a(n-1), log2(A013730(n)))` with `a(0)=1`
-/

namespace A051536.P13315928979658691071
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Int.lcm (-(a (n - 1) : ℤ)) (SequenceMachineLib.roundAway (Real.logb 2 (A013730 n : ℝ)))

end

end A051536.P13315928979658691071

namespace A051536

/-- `lcm(-a(n-1), log2(A013730(n)))` -/
def P13315928979658691071.Spec : Prop :=
  ∀ n, (P13315928979658691071.a n : ℤ) = A051536 n

end A051536

/-! ## A051536.P17675892579807034707

`∏[A022998(A014963(A165355(n)))]`
-/

namespace A051536.P17675892579807034707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022998 (A014963 (A165355 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A051536.P17675892579807034707

namespace A051536

/-- `∏[A022998(A014963(A165355(n)))]` -/
def P17675892579807034707.Spec : Prop :=
  ∀ n, P17675892579807034707.a n = A051536 n

end A051536

/-! ## A051536.P8884330394035527662

`∏[A022998(A014963(A026741(3*n+1)))]`
-/

namespace A051536.P8884330394035527662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022998 (A014963 (A026741 (3 * n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A051536.P8884330394035527662

namespace A051536

/-- `∏[A022998(A014963(A026741(3*n+1)))]` -/
def P8884330394035527662.Spec : Prop :=
  ∀ n, P8884330394035527662.a n = A051536 n

end A051536

/-! ## A051536.P572270146737770658

`∏[A051544(n+1)]/A051544(n+1)`
-/

namespace A051536.P572270146737770658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051544 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A051544 (n + 1) : ℚ)

end

end A051536.P572270146737770658

namespace A051536

/-- `∏[A051544(n+1)]/A051544(n+1)` -/
def P572270146737770658.Spec : Prop :=
  ∀ n, P572270146737770658.a n = (A051536 n : ℚ)

end A051536

/-!
# A051537: Triangle read by rows: T(i,j) = lcm(i,j)/gcd(i,j) for 1 <= j <= i.

The programs for A051537, the canonical program `A051537.P1281035452326378825` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A051537 has offset 1).

The definition of A051537 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A051537.P14348015641297759771

`A054531(n+1)*A164306(n+1)`
-/

namespace A051537.P14348015641297759771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054531 (n + 1) * A164306 (n + 1)

end

end A051537.P14348015641297759771

namespace A051537

/-- `A054531(n+1)*A164306(n+1)` -/
def P14348015641297759771.Spec : Prop :=
  ∀ n, P14348015641297759771.a n = A051537 (n + 1)

end A051537

/-! ## A051537.P1281035452326378825

`A051173(n+1)/A050873(n+1)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A051537

/-- `A051173(n+1)/A050873(n+1)` -/
def P1281035452326378825.Spec : Prop :=
  ∀ n, P1281035452326378825.a n = (A051537 (n + 1) : ℚ)

end A051537

/-! ## A051537.P17203488628585168706

`A075362(n+1)/A050873(n+1)²`
-/

namespace A051537.P17203488628585168706
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075362 (n + 1) : ℚ) / (A050873 (n + 1) ^ 2 : ℚ)

end

end A051537.P17203488628585168706

namespace A051537

/-- `A075362(n+1)/A050873(n+1)²` -/
def P17203488628585168706.Spec : Prop :=
  ∀ n, P17203488628585168706.a n = (A051537 (n + 1) : ℚ)

end A051537

/-! ## A051537.P18202948855696839853

`A051173(n+1)²/A075362(n+1)`
-/

namespace A051537.P18202948855696839853
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051173 (n + 1) ^ 2 : ℚ) / (A075362 (n + 1) : ℚ)

end

end A051537.P18202948855696839853

namespace A051537

/-- `A051173(n+1)²/A075362(n+1)` -/
def P18202948855696839853.Spec : Prop :=
  ∀ n, P18202948855696839853.a n = (A051537 (n + 1) : ℚ)

end A051537

/-! ## A051537.P12778603411426854676

`A051173(n+1)/gcd(A051173(n+1), A151890(n))`
-/

namespace A051537.P12778603411426854676
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051173 (n + 1) : ℚ) / (Int.gcd (A051173 (n + 1)) (A151890 n) : ℚ)

end

end A051537.P12778603411426854676

namespace A051537

/-- `A051173(n+1)/gcd(A051173(n+1), A151890(n))` -/
def P12778603411426854676.Spec : Prop :=
  ∀ n, P12778603411426854676.a n = (A051537 (n + 1) : ℚ)

end A051537

/-! ## A051537.P6719020934321765340

`(A167192(n+1)+A164306(n+1))*A164306(n+1)`
-/

namespace A051537.P6719020934321765340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A167192 (n + 1) + A164306 (n + 1)) * A164306 (n + 1)

end

end A051537.P6719020934321765340

namespace A051537

/-- `(A167192(n+1)+A164306(n+1))*A164306(n+1)` -/
def P6719020934321765340.Spec : Prop :=
  ∀ n, P6719020934321765340.a n = A051537 (n + 1)

end A051537

/-! ## A051537.P15753534191322102954

`(A054531(n+1)-A167192(n+1))*A054531(n+1)`
-/

namespace A051537.P15753534191322102954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A054531 (n + 1) - A167192 (n + 1)) * A054531 (n + 1)

end

end A051537.P15753534191322102954

namespace A051537

/-- `(A054531(n+1)-A167192(n+1))*A054531(n+1)` -/
def P15753534191322102954.Spec : Prop :=
  ∀ n, P15753534191322102954.a n = A051537 (n + 1)

end A051537

/-! ## A051537.P12443357796538773421

`A002024(n+1)*A002260(n+1)/A050873(n+1)²`
-/

namespace A051537.P12443357796538773421
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002024 (n + 1) * A002260 (n + 1) : ℚ) / (A050873 (n + 1) ^ 2 : ℚ)

end

end A051537.P12443357796538773421

namespace A051537

/-- `A002024(n+1)*A002260(n+1)/A050873(n+1)²` -/
def P12443357796538773421.Spec : Prop :=
  ∀ n, P12443357796538773421.a n = (A051537 (n + 1) : ℚ)

end A051537

/-! ## A051537.P3997652613312083111

`A002260(n+1)/A002024(n+1)*A054531(n+1)²`
-/

namespace A051537.P3997652613312083111
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002260 (n + 1) : ℚ) / (A002024 (n + 1) : ℚ) * (A054531 (n + 1) ^ 2 : ℚ)

end

end A051537.P3997652613312083111

namespace A051537

/-- `A002260(n+1)/A002024(n+1)*A054531(n+1)²` -/
def P3997652613312083111.Spec : Prop :=
  ∀ n, P3997652613312083111.a n = (A051537 (n + 1) : ℚ)

end A051537

/-! ## A051537.P16990514516247180052

`A164306(n+1)*A277227(n+2)`
-/

namespace A051537.P16990514516247180052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164306 (n + 1) * A277227 (n + 2)

end

end A051537.P16990514516247180052

namespace A051537

/-- `A164306(n+1)*A277227(n+2)` -/
def P16990514516247180052.Spec : Prop :=
  ∀ n, P16990514516247180052.a n = A051537 (n + 1)

end A051537

/-! ## A051537.P101746751084176323

`A316431(A087112(n+1))`
-/

namespace A051537.P101746751084176323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316431 (A087112 (n + 1)).toNat

end

end A051537.P101746751084176323

namespace A051537

/-- `A316431(A087112(n+1))` -/
def P101746751084176323.Spec : Prop :=
  ∀ n, P101746751084176323.a n = A051537 (n + 1)

end A051537

/-!
# A051538: Least common multiple of {b(1),...,b(n)}, where b(k) = k(k+1)(2k+1)/6 = A000330(k).

The programs for A051538, the canonical program `A051538.P12058086144728042765` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A051538 has offset 1).

The definition of A051538 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A099996, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A051538.P12058086144728042765

`A099996(n+2)/12`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A051538

/-- `A099996(n+2)/12` -/
def P12058086144728042765.Spec : Prop :=
  ∀ n, P12058086144728042765.a n = (A051538 (n + 1) : ℚ)

end A051538

/-! ## A051538.P4254706276901665756

`lcm(a(n-1), ∑[(n+1)²])` with `a(0)=1`
-/

namespace A051538.P4254706276901665756
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.lcm (a (n - 1)) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A051538.P4254706276901665756

namespace A051538

/-- `lcm(a(n-1), ∑[(n+1)²])` -/
def P4254706276901665756.Spec : Prop :=
  ∀ n, (P4254706276901665756.a n : ℤ) = A051538 (n + 1)

end A051538

/-! ## A051538.P12076320577557192502

`lcm(abs(a(n-1)), ∑[(n+1)^2])` with `a(0)=1`
-/

namespace A051538.P12076320577557192502
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.lcm (a (n - 1)) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A051538.P12076320577557192502

namespace A051538

/-- `lcm(abs(a(n-1)), ∑[(n+1)^2])` -/
def P12076320577557192502.Spec : Prop :=
  ∀ n, (P12076320577557192502.a n : ℤ) = A051538 (n + 1)

end A051538

/-! ## A051538.P11140384698424809015

`lcm(-a(n-1), ∑[∑[2*n+1]])` with `a(0)=1`
-/

namespace A051538.P11140384698424809015
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Int.lcm (-(a (n - 1) : ℤ)) ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A051538.P11140384698424809015

namespace A051538

/-- `lcm(-a(n-1), ∑[∑[2*n+1]])` -/
def P11140384698424809015.Spec : Prop :=
  ∀ n, (P11140384698424809015.a n : ℤ) = A051538 (n + 1)

end A051538

/-! ## A051538.P15283663151119493664

`lcm(floor(a(n-1)), ∑[(n+1)*(n+1)])` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A051538.P15283663151119493664
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.lcm (a (n - 1)) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A051538.P15283663151119493664

namespace A051538

/-- `lcm(floor(a(n-1)), ∑[(n+1)*(n+1)])` -/
def P15283663151119493664.Spec : Prop :=
  ∀ n, (P15283663151119493664.a n : ℤ) = A051538 (n + 1)

end A051538

/-! ## A051538.P12943063596591439068

`A119634(n+1)/6`
-/

namespace A051538.P12943063596591439068
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A119634 (n + 1) : ℚ) / 6

end

end A051538.P12943063596591439068

namespace A051538

/-- `A119634(n+1)/6` -/
def P12943063596591439068.Spec : Prop :=
  ∀ n, P12943063596591439068.a n = (A051538 (n + 1) : ℚ)

end A051538

/-! ## A051538.P7866798424725877689

`A003418(2*(n+2))/12`
-/

namespace A051538.P7866798424725877689
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003418 (2 * (n + 2)) : ℚ) / 12

end

end A051538.P7866798424725877689

namespace A051538

/-- `A003418(2*(n+2))/12` -/
def P7866798424725877689.Spec : Prop :=
  ∀ n, P7866798424725877689.a n = (A051538 (n + 1) : ℚ)

end A051538

/-! ## A051538.P9608352247491838428

`a(n-1)*A051542(n)` with `a(0)=1`
-/

namespace A051538.P9608352247491838428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A051542 n

end

end A051538.P9608352247491838428

namespace A051538

/-- `a(n-1)*A051542(n)` -/
def P9608352247491838428.Spec : Prop :=
  ∀ n, P9608352247491838428.a n = A051538 (n + 1)

end A051538

/-! ## A051538.P9830662615721685820

`a(n-1)*A120114(n)` with `a(0)=1`
-/

namespace A051538.P9830662615721685820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A120114 n

end

end A051538.P9830662615721685820

namespace A051538

/-- `a(n-1)*A120114(n)` -/
def P9830662615721685820.Spec : Prop :=
  ∀ n, P9830662615721685820.a n = A051538 (n + 1)

end A051538

/-! ## A051538.P2230387437734304547

`∏[A014963(2*(n+2))*A014963(2*n+3)]/6`
-/

namespace A051538.P2230387437734304547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (2 * (n + 2)) * A014963 (2 * n + 3)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 6

end

end A051538.P2230387437734304547

namespace A051538

/-- `∏[A014963(2*(n+2))*A014963(2*n+3)]/6` -/
def P2230387437734304547.Spec : Prop :=
  ∀ n, P2230387437734304547.a n = (A051538 (n + 1) : ℚ)

end A051538

/-!
# A051539: a(n) is the least common multiple of {1, 5, 9, 13, 17, ..., 4n+1} (A016813).

The programs for A051539, there is no canonical definition to state claims against.
-/

/-! ## A051539.P13404721759528757837

`lcm(4*n+1, a(n-1))` with `a(0)=1`
-/

namespace A051539.P13404721759528757837
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.lcm (4 * n + 1) (a (n - 1))

end

end A051539.P13404721759528757837

/-! ## A051539.P8779475043559731646

`lcm(-a(n-1), or(1, 4*n))` with `a(0)=1`
-/

namespace A051539.P8779475043559731646
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Int.lcm (-(a (n - 1) : ℤ)) (Nat.lor 1 (4 * n) : ℤ)

end

end A051539.P8779475043559731646

/-! ## A051539.P5894890673463637433

`a(n-1)*A051541(n)` with `a(0)=1`
-/

namespace A051539.P5894890673463637433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A051541 n

end

end A051539.P5894890673463637433

/-! ## A051539.P10483383900210524445

`lcm(a(n-1), A004766(n))` with `a(0)=1`
-/

namespace A051539.P10483383900210524445
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Int.lcm (a (n - 1) : ℤ) (A004766 n)

end

end A051539.P10483383900210524445

/-! ## A051539.P8367290152688421679

`lcm(-a(n-1), Δ[A000384(n)])` with `a(0)=1`
-/

namespace A051539.P8367290152688421679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000384 n

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Int.lcm (-(a (n - 1) : ℤ)) (f1 (n + 1) - f1 n)

end

end A051539.P8367290152688421679

/-! ## A051539.P4705592830379101414

`∏[A051541(n+1)]/A051541(n+1)`
-/

namespace A051539.P4705592830379101414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051541 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A051541 (n + 1) : ℚ)

end

end A051539.P4705592830379101414

/-!
# A051540: Least common multiple of {2, 5, 8, 11, 14, ..., 3n+2} (A016789).

The programs for A051540, the canonical program `A051540.P9289519930404620870` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A051540 has offset 0).

The definition of A051540 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 104 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A051540.P9289519930404620870

`lcm(3*n+2, a(n-1))` with `a(0)=2`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A051540

/-- `lcm(3*n+2, a(n-1))` -/
def P9289519930404620870.Spec : Prop :=
  ∀ n, (P9289519930404620870.a n : ℤ) = A051540 n

theorem P9289519930404620870.correct : P9289519930404620870.Spec := by
  intro n
  simp only [A051540]

end A051540

/-! ## A051540.P14606589550037513707

`lcm(n+2+n+n, floor(a(n-1)))` with `a(0)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A051540.P14606589550037513707
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  Nat.lcm (n + 2 + n + n) (a (n - 1))

end

end A051540.P14606589550037513707

namespace A051540

/-- `lcm(n+2+n+n, floor(a(n-1)))` -/
def P14606589550037513707.Spec : Prop :=
  ∀ n, (P14606589550037513707.a n : ℤ) = A051540 n

theorem P14606589550037513707.correct : P14606589550037513707.Spec := by
  intro n
  simp only [A051540, Nat.add_sub_cancel, A051540.P14606589550037513707.a, A051540.P9289519930404620870.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A051540

/-! ## A051540.P11865974674654815234

`a(n-1)*A051552(n)` with `a(0)=2`
-/

namespace A051540.P11865974674654815234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) * A051552 n

end

end A051540.P11865974674654815234

namespace A051540

/-- `a(n-1)*A051552(n)` -/
def P11865974674654815234.Spec : Prop :=
  ∀ n, P11865974674654815234.a n = A051540 n

end A051540

/-! ## A051540.P8162351804883270520

`lcm(a(n-1), A016789(n))` with `a(0)=2`
-/

namespace A051540.P8162351804883270520
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  Int.lcm (a (n - 1) : ℤ) (A016789 n)

end

end A051540.P8162351804883270520

namespace A051540

/-- `lcm(a(n-1), A016789(n))` -/
def P8162351804883270520.Spec : Prop :=
  ∀ n, (P8162351804883270520.a n : ℤ) = A051540 n

end A051540

/-! ## A051540.P3088389321338757133

`lcm(a(A023443(n)), 3*n+2)` with `a(0)=2`
-/

namespace A051540.P3088389321338757133
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  Nat.lcm (a (A023443 n).toNat) (3 * n + 2)

end

end A051540.P3088389321338757133

namespace A051540

/-- `lcm(a(A023443(n)), 3*n+2)` -/
def P3088389321338757133.Spec : Prop :=
  ∀ n, (P3088389321338757133.a n : ℤ) = A051540 n

end A051540

/-! ## A051540.P17043596236728110060

`lcm(-a(n-1), Δ[A005449(n)])` with `a(0)=2`
-/

namespace A051540.P17043596236728110060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005449 n

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  Int.lcm (-(a (n - 1) : ℤ)) (f1 (n + 1) - f1 n)

end

end A051540.P17043596236728110060

namespace A051540

/-- `lcm(-a(n-1), Δ[A005449(n)])` -/
def P17043596236728110060.Spec : Prop :=
  ∀ n, (P17043596236728110060.a n : ℤ) = A051540 n

end A051540

/-! ## A051540.P1559142285766875785

`lcm(floor(a(n-1)), A166517(2*n))` with `a(0)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A051540.P1559142285766875785
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  Int.lcm (a (n - 1) : ℤ) (A166517 (2 * n))

end

end A051540.P1559142285766875785

namespace A051540

/-- `lcm(floor(a(n-1)), A166517(2*n))` -/
def P1559142285766875785.Spec : Prop :=
  ∀ n, (P1559142285766875785.a n : ℤ) = A051540 n

end A051540

/-! ## A051540.P12517664195080205162

`2/A051552(n+1)*∏[A051552(n+1)]`
-/

namespace A051540.P12517664195080205162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051552 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (A051552 (n + 1) : ℚ) * ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)

end

end A051540.P12517664195080205162

namespace A051540

/-- `2/A051552(n+1)*∏[A051552(n+1)]` -/
def P12517664195080205162.Spec : Prop :=
  ∀ n, P12517664195080205162.a n = (A051540 n : ℚ)

end A051540

/-!
# A051541: Quotients of consecutive values of LCM {1, 5, 9, 13, 17, ..., (4n+1)}.

The programs for A051541, the canonical program `A051541.P4009717404532660083` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A051541 has offset 1).

The definition of A051541 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 238 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A051541.P15973264052812188181

`A051539(n+1)/A051539(n)`
-/

namespace A051541.P15973264052812188181
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051539 (n + 1) : ℚ) / (A051539 n : ℚ)

end

end A051541.P15973264052812188181

namespace A051541

/-- `A051539(n+1)/A051539(n)` -/
def P15973264052812188181.Spec : Prop :=
  ∀ n, P15973264052812188181.a n = (A051541 (n + 1) : ℚ)

end A051541

/-! ## A051541.P4009717404532660083

`(4*n+5)/gcd(4*n+5, A002944(n+1))`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A051541

/-- `(4*n+5)/gcd(4*n+5, A002944(n+1))` -/
def P4009717404532660083.Spec : Prop :=
  ∀ n, P4009717404532660083.a n = (A051541 (n + 1) : ℚ)

end A051541

/-! ## A051541.P15105697447882358086

`(4*n+5)/gcd(4*n+5, A003418(n))`
-/

namespace A051541.P15105697447882358086
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 * n + 5 : ℚ) / (Int.gcd (4 * n + 5 : ℤ) (A003418 n) : ℚ)

end

end A051541.P15105697447882358086

namespace A051541

/-- `(4*n+5)/gcd(4*n+5, A003418(n))` -/
def P15105697447882358086.Spec : Prop :=
  ∀ n, P15105697447882358086.a n = (A051541 (n + 1) : ℚ)

end A051541

/-! ## A051541.P12300342228748630073

`ratio[lcm(4*n+1, a(n-1))]` with `a(0)=1`
-/

namespace A051541.P12300342228748630073
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  Nat.lcm (4 * n + 1) (f1 (n - 1))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A051541.P12300342228748630073

namespace A051541

/-- `ratio[lcm(4*n+1, a(n-1))]` -/
def P12300342228748630073.Spec : Prop :=
  ∀ n, P12300342228748630073.a n = (A051541 (n + 1) : ℚ)

end A051541

/-! ## A051541.P2133288633411559018

`ratio[A051539(n)]`
-/

namespace A051541.P2133288633411559018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051539 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A051541.P2133288633411559018

namespace A051541

/-- `ratio[A051539(n)]` -/
def P2133288633411559018.Spec : Prop :=
  ∀ n, P2133288633411559018.a n = (A051541 (n + 1) : ℚ)

end A051541

/-! ## A051541.P3800321733843714780

`ratio[lcm(a(n-1), A016813(n))]` with `a(0)=1`
-/

namespace A051541.P3800321733843714780
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  Int.lcm (f1 (n - 1) : ℤ) (A016813 n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A051541.P3800321733843714780

namespace A051541

/-- `ratio[lcm(a(n-1), A016813(n))]` -/
def P3800321733843714780.Spec : Prop :=
  ∀ n, P3800321733843714780.a n = (A051541 (n + 1) : ℚ)

end A051541

/-!
# A051542: Quotients of consecutive values of LCM {b(1),...,b(n)}, b() = A000330.

The programs for A051542, the canonical program `A051542.P15319725995359775341` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A051542 has offset 1).

The definition of A051542 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051538, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A051542.P15319725995359775341

`A051538(n+2)/A051538(n+1)`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A051542

/-- `A051538(n+2)/A051538(n+1)` -/
def P15319725995359775341.Spec : Prop :=
  ∀ n, P15319725995359775341.a n = (A051542 (n + 1) : ℚ)

end A051542

/-! ## A051542.P18268241815290444052

`A120114(n+1)`
-/

namespace A051542.P18268241815290444052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120114 (n + 1)

end

end A051542.P18268241815290444052

namespace A051542

/-- `A120114(n+1)` -/
def P18268241815290444052.Spec : Prop :=
  ∀ n, P18268241815290444052.a n = A051542 (n + 1)

end A051542

/-! ## A051542.P17792601339231553911

`∏{p}[A120114(Δ[n²]-n), #]`
-/

namespace A051542.P17792601339231553911
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120114 ((f2 (n + 1) : ℤ) - (f2 n : ℤ) - (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A051542.P17792601339231553911

namespace A051542

/-- `∏{p}[A120114(Δ[n²]-n), #]` -/
def P17792601339231553911.Spec : Prop :=
  ∀ n, (P17792601339231553911.a n : ℤ) = A051542 (n + 1)

end A051542

/-! ## A051542.P9764134270074484575

`filter[A120114(n), A097325(#)]`
-/

namespace A051542.P9764134270074484575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120114 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A097325 (f1 j).toNat = 1) n)

end

end A051542.P9764134270074484575

namespace A051542

/-- `filter[A120114(n), A097325(#)]` -/
def P9764134270074484575.Spec : Prop :=
  ∀ n, P9764134270074484575.a n = A051542 (n + 1)

end A051542

/-! ## A051542.P11771965861039387020

`filter[A120114(n), A294934(#)]`
-/

namespace A051542.P11771965861039387020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120114 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A294934 (f1 j).toNat = 1) n)

end

end A051542.P11771965861039387020

namespace A051542

/-- `filter[A120114(n), A294934(#)]` -/
def P11771965861039387020.Spec : Prop :=
  ∀ n, P11771965861039387020.a n = A051542 (n + 1)

end A051542

/-! ## A051542.P740510156528174858

`filter[A120114(n), A344880(#)]`
-/

namespace A051542.P740510156528174858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120114 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A344880 (f1 j).toNat = 1) n)

end

end A051542.P740510156528174858

namespace A051542

/-- `filter[A120114(n), A344880(#)]` -/
def P740510156528174858.Spec : Prop :=
  ∀ n, P740510156528174858.a n = A051542 (n + 1)

end A051542

/-! ## A051542.P13680838292853000461

`filter[A120114(n), A356173(#)]`
-/

namespace A051542.P13680838292853000461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120114 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A356173 (f1 j).toNat = 1) n)

end

end A051542.P13680838292853000461

namespace A051542

/-- `filter[A120114(n), A356173(#)]` -/
def P13680838292853000461.Spec : Prop :=
  ∀ n, P13680838292853000461.a n = A051542 (n + 1)

end A051542

/-! ## A051542.P15701503552111721196

`filter[A120114(n), A360128(#)]`
-/

namespace A051542.P15701503552111721196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120114 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A360128 (f1 j).toNat = 1) n)

end

end A051542.P15701503552111721196

namespace A051542

/-- `filter[A120114(n), A360128(#)]` -/
def P15701503552111721196.Spec : Prop :=
  ∀ n, P15701503552111721196.a n = A051542 (n + 1)

end A051542

/-! ## A051542.P11047219726182592268

`or(A000007(n), A120114(A028242(2*n)))`
-/

namespace A051542.P11047219726182592268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A120114 (A028242 (2 * n)).toNat)

end

end A051542.P11047219726182592268

namespace A051542

/-- `or(A000007(n), A120114(A028242(2*n)))` -/
def P11047219726182592268.Spec : Prop :=
  ∀ n, P11047219726182592268.a n = A051542 (n + 1)

end A051542

/-! ## A051542.P996108202227170186

`A051543(2*n+3)*A051543(2*(n+2))`
-/

namespace A051542.P996108202227170186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051543 (2 * n + 3) * A051543 (2 * (n + 2))

end

end A051542.P996108202227170186

namespace A051542

/-- `A051543(2*n+3)*A051543(2*(n+2))` -/
def P996108202227170186.Spec : Prop :=
  ∀ n, P996108202227170186.a n = A051542 (n + 1)

end A051542

/-! ## A051542.P17231018193576303107

`A328202(2*(n+3))`
-/

namespace A051542.P17231018193576303107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328202 (2 * (n + 3))

end

end A051542.P17231018193576303107

namespace A051542

/-- `A328202(2*(n+3))` -/
def P17231018193576303107.Spec : Prop :=
  ∀ n, P17231018193576303107.a n = A051542 (n + 1)

end A051542

/-! ## A051542.P548170324643493617

`or(and(1, n+1), A328202(A020739(n)))`
-/

namespace A051542.P548170324643493617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (Nat.land 1 (n + 1) : ℤ) (A328202 (A020739 n).toNat)

end

end A051542.P548170324643493617

namespace A051542

/-- `or(and(1, n+1), A328202(A020739(n)))` -/
def P548170324643493617.Spec : Prop :=
  ∀ n, P548170324643493617.a n = A051542 (n + 1)

end A051542

/-! ## A051542.P8243392731975147482

`A014963(2*(n+3))*A014963(2*n+5)`
-/

namespace A051542.P8243392731975147482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (2 * (n + 3)) * A014963 (2 * n + 5)

end

end A051542.P8243392731975147482

namespace A051542

/-- `A014963(2*(n+3))*A014963(2*n+5)` -/
def P8243392731975147482.Spec : Prop :=
  ∀ n, P8243392731975147482.a n = A051542 (n + 1)

end A051542

/-! ## A051542.P15908636332379887583

`A328202(A020739(n))%A000124(n+5)`
-/

namespace A051542.P15908636332379887583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A328202 (A020739 n).toNat) (A000124 (n + 5))

end

end A051542.P15908636332379887583

namespace A051542

/-- `A328202(A020739(n))%A000124(n+5)` -/
def P15908636332379887583.Spec : Prop :=
  ∀ n, P15908636332379887583.a n = A051542 (n + 1)

end A051542

/-! ## A051542.P11002699670559353690

`filter[A120114(n), A118102(#)]`
-/

namespace A051542.P11002699670559353690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120114 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A118102 (f1 j).toNat = 1) n)

end

end A051542.P11002699670559353690

namespace A051542

/-- `filter[A120114(n), A118102(#)]` -/
def P11002699670559353690.Spec : Prop :=
  ∀ n, P11002699670559353690.a n = A051542 (n + 1)

end A051542

/-! ## A051542.P13788318467187773174

`filter[A120114(n), A182067(#)]`
-/

namespace A051542.P13788318467187773174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120114 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A182067 (f1 j).toNat = 1) n)

end

end A051542.P13788318467187773174

namespace A051542

/-- `filter[A120114(n), A182067(#)]` -/
def P13788318467187773174.Spec : Prop :=
  ∀ n, P13788318467187773174.a n = A051542 (n + 1)

end A051542

/-! ## A051542.P5014158183645522922

`A119636(n+1)/A068553(n+2)`
-/

namespace A051542.P5014158183645522922
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A119636 (n + 1) : ℚ) / (A068553 (n + 2) : ℚ)

end

end A051542.P5014158183645522922

namespace A051542

/-- `A119636(n+1)/A068553(n+2)` -/
def P5014158183645522922.Spec : Prop :=
  ∀ n, P5014158183645522922.a n = (A051542 (n + 1) : ℚ)

end A051542

/-! ## A051542.P11335671080428544074

`A119636(n+1)/A048619(2*n+3)`
-/

namespace A051542.P11335671080428544074
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A119636 (n + 1) : ℚ) / (A048619 (2 * n + 3) : ℚ)

end

end A051542.P11335671080428544074

namespace A051542

/-- `A119636(n+1)/A048619(2*n+3)` -/
def P11335671080428544074.Spec : Prop :=
  ∀ n, P11335671080428544074.a n = (A051542 (n + 1) : ℚ)

end A051542

/-! ## A051542.P15249958932212839497

`A119636(n+1)/gcd(A099946(n+3), A119636(n+1))`
-/

namespace A051542.P15249958932212839497
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A119636 (n + 1) : ℚ) / (Int.gcd (A099946 (n + 3)) (A119636 (n + 1)) : ℚ)

end

end A051542.P15249958932212839497

namespace A051542

/-- `A119636(n+1)/gcd(A099946(n+3), A119636(n+1))` -/
def P15249958932212839497.Spec : Prop :=
  ∀ n, P15249958932212839497.a n = (A051542 (n + 1) : ℚ)

end A051542

/-! ## A051542.P14064031726518121751

`ratio[A051538(n+1)]`
-/

namespace A051542.P14064031726518121751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051538 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A051542.P14064031726518121751

namespace A051542

/-- `ratio[A051538(n+1)]` -/
def P14064031726518121751.Spec : Prop :=
  ∀ n, P14064031726518121751.a n = (A051542 (n + 1) : ℚ)

end A051542

/-!
# A051543: Quotients of consecutive values of lcm of first n triangular numbers (A000217).

The programs for A051543, the canonical program `A051543.P13545436261029071682` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A051543 has offset 1).

The definition of A051543 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A051543.P13545436261029071682

`A025555(n+2)/A025555(n+1)`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A051543

/-- `A025555(n+2)/A025555(n+1)` -/
def P13545436261029071682.Spec : Prop :=
  ∀ n, P13545436261029071682.a n = (A051543 (n + 1) : ℚ)

end A051543

/-! ## A051543.P4494604973718849228

`ceil((n+3)/∏{p}[n+3, (n+3)/#])`
-/

namespace A051543.P4494604973718849228
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 3 : ℚ) / (∏ p ∈ Nat.primeFactors (f1 n), (n + 3 : ℚ) / (p : ℚ))⌉

end

end A051543.P4494604973718849228

namespace A051543

/-- `ceil((n+3)/∏{p}[n+3, (n+3)/#])` -/
def P4494604973718849228.Spec : Prop :=
  ∀ n, P4494604973718849228.a n = A051543 (n + 1)

end A051543

/-! ## A051543.P15568729066798641049

`∏{d}[n+3, #^-A008683(#)]`
-/

namespace A051543.P15568729066798641049
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), (d : ℚ) ^ (-A008683 d : ℤ)

end

end A051543.P15568729066798641049

namespace A051543

/-- `∏{d}[n+3, #^-A008683(#)]` -/
def P15568729066798641049.Spec : Prop :=
  ∀ n, P15568729066798641049.a n = (A051543 (n + 1) : ℚ)

end A051543

/-! ## A051543.P15975653593760815303

`∏{d}[n+3, #^A008683((n+3)/#)]`
-/

namespace A051543.P15975653593760815303
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), (d : ℚ) ^ (A008683 (SequenceMachineLib.roundAway ((n + 3 : ℚ) / (d : ℚ))).toNat : ℤ)

end

end A051543.P15975653593760815303

namespace A051543

/-- `∏{d}[n+3, #^A008683((n+3)/#)]` -/
def P15975653593760815303.Spec : Prop :=
  ∀ n, P15975653593760815303.a n = (A051543 (n + 1) : ℚ)

end A051543

/-! ## A051543.P9916287089537439777

`A007947(n+3)/A340679(n+3)`
-/

namespace A051543.P9916287089537439777
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007947 (n + 3) : ℚ) / (A340679 (n + 3) : ℚ)

end

end A051543.P9916287089537439777

namespace A051543

/-- `A007947(n+3)/A340679(n+3)` -/
def P9916287089537439777.Spec : Prop :=
  ∀ n, P9916287089537439777.a n = (A051543 (n + 1) : ℚ)

end A051543

/-! ## A051543.P13737478553313271285

`gcd(A006530(n+3), A020639(n+3))`
-/

namespace A051543.P13737478553313271285
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A006530 (n + 3)) (A020639 (n + 3))

end

end A051543.P13737478553313271285

namespace A051543

/-- `gcd(A006530(n+3), A020639(n+3))` -/
def P13737478553313271285.Spec : Prop :=
  ∀ n, (P13737478553313271285.a n : ℤ) = A051543 (n + 1)

end A051543

/-! ## A051543.P4362584015622687412

`A265574(n+2)`
-/

namespace A051543.P4362584015622687412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265574 (n + 2)

end

end A051543.P4362584015622687412

namespace A051543

/-- `A265574(n+2)` -/
def P4362584015622687412.Spec : Prop :=
  ∀ n, P4362584015622687412.a n = A051543 (n + 1)

end A051543

/-! ## A051543.P16165629715954096466

`∏{p}[A099634(n+3), #]`
-/

namespace A051543.P16165629715954096466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099634 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A051543.P16165629715954096466

namespace A051543

/-- `∏{p}[A099634(n+3), #]` -/
def P16165629715954096466.Spec : Prop :=
  ∀ n, (P16165629715954096466.a n : ℤ) = A051543 (n + 1)

end A051543

/-! ## A051543.P4194166542539702286

`gcd(n+3, A098228(n+3))`
-/

namespace A051543.P4194166542539702286
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 3 : ℤ) (A098228 (n + 3))

end

end A051543.P4194166542539702286

namespace A051543

/-- `gcd(n+3, A098228(n+3))` -/
def P4194166542539702286.Spec : Prop :=
  ∀ n, (P4194166542539702286.a n : ℤ) = A051543 (n + 1)

end A051543

/-! ## A051543.P8974870469767607794

`A006530(A099634(n+3))`
-/

namespace A051543.P8974870469767607794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A099634 (n + 3)).toNat

end

end A051543.P8974870469767607794

namespace A051543

/-- `A006530(A099634(n+3))` -/
def P8974870469767607794.Spec : Prop :=
  ∀ n, P8974870469767607794.a n = A051543 (n + 1)

end A051543

/-! ## A051543.P8325047880651025655

`A014963(n+3)`
-/

namespace A051543.P8325047880651025655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 3)

end

end A051543.P8325047880651025655

namespace A051543

/-- `A014963(n+3)` -/
def P8325047880651025655.Spec : Prop :=
  ∀ n, P8325047880651025655.a n = A051543 (n + 1)

end A051543

/-! ## A051543.P10678767660233449908

`A020500(n+3)`
-/

namespace A051543.P10678767660233449908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020500 (n + 3)

end

end A051543.P10678767660233449908

namespace A051543

/-- `A020500(n+3)` -/
def P10678767660233449908.Spec : Prop :=
  ∀ n, P10678767660233449908.a n = A051543 (n + 1)

end A051543

/-! ## A051543.P12245245367269935411

`Δ[A072107(n+2)]`
-/

namespace A051543.P12245245367269935411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072107 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A051543.P12245245367269935411

namespace A051543

/-- `Δ[A072107(n+2)]` -/
def P12245245367269935411.Spec : Prop :=
  ∀ n, P12245245367269935411.a n = A051543 (n + 1)

end A051543

/-! ## A051543.P7760226491170437765

`1-A120112(n+2)`
-/

namespace A051543.P7760226491170437765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A120112 (n + 2)

end

end A051543.P7760226491170437765

namespace A051543

/-- `1-A120112(n+2)` -/
def P7760226491170437765.Spec : Prop :=
  ∀ n, P7760226491170437765.a n = A051543 (n + 1)

end A051543

/-! ## A051543.P7841401733563703695

`∑{d}[n+3, A140254(#)]`
-/

namespace A051543.P7841401733563703695
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A140254 d

end

end A051543.P7841401733563703695

namespace A051543

/-- `∑{d}[n+3, A140254(#)]` -/
def P7841401733563703695.Spec : Prop :=
  ∀ n, P7841401733563703695.a n = A051543 (n + 1)

end A051543

/-! ## A051543.P2628758952880230030

`∏{d}[A120007(n+3), #]`
-/

namespace A051543.P2628758952880230030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120007 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A051543.P2628758952880230030

namespace A051543

/-- `∏{d}[A120007(n+3), #]` -/
def P2628758952880230030.Spec : Prop :=
  ∀ n, (P2628758952880230030.a n : ℤ) = A051543 (n + 1)

end A051543

/-! ## A051543.P18152288667249611850

`A014973(∏{p}[n+3, #])`
-/

namespace A051543.P18152288667249611850
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014973 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A051543.P18152288667249611850

namespace A051543

/-- `A014973(∏{p}[n+3, #])` -/
def P18152288667249611850.Spec : Prop :=
  ∀ n, P18152288667249611850.a n = A051543 (n + 1)

end A051543

/-! ## A051543.P7269966328314079800

`A089026(∏{p}[n+3, #])`
-/

namespace A051543.P7269966328314079800
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089026 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A051543.P7269966328314079800

namespace A051543

/-- `A089026(∏{p}[n+3, #])` -/
def P7269966328314079800.Spec : Prop :=
  ∀ n, P7269966328314079800.a n = A051543 (n + 1)

end A051543

/-! ## A051543.P7495377804616097717

`A100994(∏{p}[n+3, #])`
-/

namespace A051543.P7495377804616097717
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100994 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A051543.P7495377804616097717

namespace A051543

/-- `A100994(∏{p}[n+3, #])` -/
def P7495377804616097717.Spec : Prop :=
  ∀ n, P7495377804616097717.a n = A051543 (n + 1)

end A051543

/-! ## A051543.P12380384066996344188

`A381404(∏{p}[n+3, #])`
-/

namespace A051543.P12380384066996344188
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381404 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A051543.P12380384066996344188

namespace A051543

/-- `A381404(∏{p}[n+3, #])` -/
def P12380384066996344188.Spec : Prop :=
  ∀ n, P12380384066996344188.a n = A051543 (n + 1)

end A051543

/-!
# A051544: Quotients of consecutive values of lcm {1, 4, 7, 10, 13 ...,(3n+1)} (A016777).

The programs for A051544, the canonical program `A051544.P13503009666278006305` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A051544 has offset 1).

The definition of A051544 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051536, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A051544.P13503009666278006305

`A051536(n+1)/A051536(n)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A051544

/-- `A051536(n+1)/A051536(n)` -/
def P13503009666278006305.Spec : Prop :=
  ∀ n, P13503009666278006305.a n = (A051544 (n + 1) : ℚ)

end A051544

/-! ## A051544.P7367698364482970171

`A099634(A165355(n+1))`
-/

namespace A051544.P7367698364482970171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099634 (A165355 (n + 1)).toNat

end

end A051544.P7367698364482970171

namespace A051544

/-- `A099634(A165355(n+1))` -/
def P7367698364482970171.Spec : Prop :=
  ∀ n, P7367698364482970171.a n = A051544 (n + 1)

end A051544

/-! ## A051544.P8138802469178238752

`A014963(A152271(3*(n+1)))*A014963(3*n+4)`
-/

namespace A051544.P8138802469178238752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A152271 (3 * (n + 1))).toNat * A014963 (3 * n + 4)

end

end A051544.P8138802469178238752

namespace A051544

/-- `A014963(A152271(3*(n+1)))*A014963(3*n+4)` -/
def P8138802469178238752.Spec : Prop :=
  ∀ n, P8138802469178238752.a n = A051544 (n + 1)

end A051544

/-! ## A051544.P17892794593026899097

`A014963(A016777(n+1))*A020513(A016777(n+1))`
-/

namespace A051544.P17892794593026899097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A016777 (n + 1)).toNat * A020513 (A016777 (n + 1)).toNat

end

end A051544.P17892794593026899097

namespace A051544

/-- `A014963(A016777(n+1))*A020513(A016777(n+1))` -/
def P17892794593026899097.Spec : Prop :=
  ∀ n, P17892794593026899097.a n = A051544 (n + 1)

end A051544

/-! ## A051544.P8224427853579220346

`A020513(6*n+8)*A020513(3*n+4)`
-/

namespace A051544.P8224427853579220346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020513 (6 * n + 8) * A020513 (3 * n + 4)

end

end A051544.P8224427853579220346

namespace A051544

/-- `A020513(6*n+8)*A020513(3*n+4)` -/
def P8224427853579220346.Spec : Prop :=
  ∀ n, P8224427853579220346.a n = A051544 (n + 1)

end A051544

/-! ## A051544.P4495290651392182770

`A014963(3*n+4)*A014963(A174221(3*n+4))`
-/

namespace A051544.P4495290651392182770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (3 * n + 4) * A014963 (A174221 (3 * n + 4)).toNat

end

end A051544.P4495290651392182770

namespace A051544

/-- `A014963(3*n+4)*A014963(A174221(3*n+4))` -/
def P4495290651392182770.Spec : Prop :=
  ∀ n, P4495290651392182770.a n = A051544 (n + 1)

end A051544

/-! ## A051544.P4876368931105056225

`lcm(A003418(n), A016777(n+1))/A003418(n)`
-/

namespace A051544.P4876368931105056225
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A003418 n) (A016777 (n + 1)) : ℚ) / (A003418 n : ℚ)

end

end A051544.P4876368931105056225

namespace A051544

/-- `lcm(A003418(n), A016777(n+1))/A003418(n)` -/
def P4876368931105056225.Spec : Prop :=
  ∀ n, P4876368931105056225.a n = (A051544 (n + 1) : ℚ)

end A051544

/-! ## A051544.P10922089242992396605

`ratio[lcm(3*n+1, a(n-1))]` with `a(0)=1`
-/

namespace A051544.P10922089242992396605
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  Nat.lcm (3 * n + 1) (f1 (n - 1))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A051544.P10922089242992396605

namespace A051544

/-- `ratio[lcm(3*n+1, a(n-1))]` -/
def P10922089242992396605.Spec : Prop :=
  ∀ n, P10922089242992396605.a n = (A051544 (n + 1) : ℚ)

end A051544

/-! ## A051544.P16171759036944071693

`ratio[A051536(n)]`
-/

namespace A051544.P16171759036944071693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051536 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A051544.P16171759036944071693

namespace A051544

/-- `ratio[A051536(n)]` -/
def P16171759036944071693.Spec : Prop :=
  ∀ n, P16171759036944071693.a n = (A051544 (n + 1) : ℚ)

end A051544

/-! ## A051544.P5783351416258045506

`A022998(A072505(∑[A016789(n)]))`
-/

namespace A051544.P5783351416258045506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016789 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022998 (A072505 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A051544.P5783351416258045506

namespace A051544

/-- `A022998(A072505(∑[A016789(n)]))` -/
def P5783351416258045506.Spec : Prop :=
  ∀ n, P5783351416258045506.a n = A051544 (n + 1)

end A051544

/-!
# A051545: Second unsigned column of triangle A051339.

The programs for A051545, there is no canonical definition to state claims against.
-/

/-! ## A051545.P5028098213358664603

`A051524(n)+n*a(n-1)` with `a(0)=0`
-/

namespace A051545.P5028098213358664603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A051524 n + (n : ℤ) * a (n - 1)

end

end A051545.P5028098213358664603

/-! ## A051545.P6757930333405573879

`A051339(A000124(n))*A062157(n)`
-/

namespace A051545.P6757930333405573879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051339 (A000124 n).toNat * A062157 n

end

end A051545.P6757930333405573879

/-! ## A051545.P15488587811195991619

`lcm(A000196(n), A051339(A000124(n)))`
-/

namespace A051545.P15488587811195991619
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000196 n) (A051339 (A000124 n).toNat)

end

end A051545.P15488587811195991619

/-! ## A051545.P3927739486676401028

`lcm(-A051339(A000124(n)), A331591(n+1))`
-/

namespace A051545.P3927739486676401028
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (-A051339 (A000124 n).toNat) (A331591 (n + 1))

end

end A051545.P3927739486676401028

/-! ## A051545.P14571974720704001414

`A067176(eq[6, A002262(n)])`
-/

namespace A051545.P14571974720704001414
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067176 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A051545.P14571974720704001414

/-!
# A051546: Third unsigned column of triangle A051339.

The programs for A051546, there is no canonical definition to state claims against.
-/

/-! ## A051546.P7776591127512644072

`A051525(n)+n*a(n-1)` with `a(0)=0`
-/

namespace A051546.P7776591127512644072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A051525 n + (n : ℤ) * a (n - 1)

end

end A051546.P7776591127512644072

/-!
# A051547: a(n) = lcm{ phi(1), ..., phi(n) }, where phi is Euler's totient function A000010.

The programs for A051547, the canonical program `A051547.P2764291257816859715` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A051547 has offset 1).

The definition of A051547 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 982 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A051547.P1476484934327731307

`∏[A265575(n+1)]`
-/

namespace A051547.P1476484934327731307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265575 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A051547.P1476484934327731307

namespace A051547

/-- `∏[A265575(n+1)]` -/
def P1476484934327731307.Spec : Prop :=
  ∀ n, P1476484934327731307.a n = A051547 (n + 1)

end A051547

/-! ## A051547.P2764291257816859715

`lcm(a(n-1), Δ[A002088(n)])` with `a(0)=1`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A051547

/-- `lcm(a(n-1), Δ[A002088(n)])` -/
def P2764291257816859715.Spec : Prop :=
  ∀ n, (P2764291257816859715.a n : ℤ) = A051547 (n + 1)

theorem P2764291257816859715.correct : P2764291257816859715.Spec := by
  intro n
  simp only [A051547, Nat.add_sub_cancel]

end A051547

/-! ## A051547.P5619414355339161757

`lcm(-a(n-1), Δ[A005728(n)])` with `a(0)=1`
-/

namespace A051547.P5619414355339161757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Int.lcm (-(a (n - 1) : ℤ)) (f1 (n + 1) - f1 n)

end

end A051547.P5619414355339161757

namespace A051547

/-- `lcm(-a(n-1), Δ[A005728(n)])` -/
def P5619414355339161757.Spec : Prop :=
  ∀ n, (P5619414355339161757.a n : ℤ) = A051547 (n + 1)

end A051547

/-! ## A051547.P1310493025723564884

`lcm(abs(a(n-1)), A000010(n+1))` with `a(0)=1`
-/

namespace A051547.P1310493025723564884
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Int.lcm (a (n - 1) : ℤ) (A000010 (n + 1))

end

end A051547.P1310493025723564884

namespace A051547

/-- `lcm(abs(a(n-1)), A000010(n+1))` -/
def P1310493025723564884.Spec : Prop :=
  ∀ n, (P1310493025723564884.a n : ℤ) = A051547 (n + 1)

end A051547

/-! ## A051547.P4309768902035572891

`lcm(ceil(a(n-1)), A000010(or(1, n)))` with `a(0)=1`

`ceil` is left out, it is the identity on integers.
-/

namespace A051547.P4309768902035572891
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Int.lcm (a (n - 1) : ℤ) (A000010 (Nat.lor 1 n))

end

end A051547.P4309768902035572891

namespace A051547

/-- `lcm(ceil(a(n-1)), A000010(or(1, n)))` -/
def P4309768902035572891.Spec : Prop :=
  ∀ n, (P4309768902035572891.a n : ℤ) = A051547 (n + 1)

end A051547

/-!
# A051548: a(n) = LCM { tau(1), ..., tau(n) }.

The programs for A051548, the canonical program `A051548.P6609844243763188526` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A051548 has offset 0).

The definition of A051548 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A051548.P6609844243763188526

`lcm(-a(n-1), ∏{e}[n, #+1])` with `a(0)=1`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A051548

/-- `lcm(-a(n-1), ∏{e}[n, #+1])` -/
def P6609844243763188526.Spec : Prop :=
  ∀ n, (P6609844243763188526.a n : ℤ) = A051548 n

theorem P6609844243763188526.correct : P6609844243763188526.Spec := by
  intro n
  simp only [A051548]

end A051548

/-! ## A051548.P12462012278411270383

`a(n-1)*A265578(n)` with `a(0)=1`
-/

namespace A051548.P12462012278411270383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A265578 n

end

end A051548.P12462012278411270383

namespace A051548

/-- `a(n-1)*A265578(n)` -/
def P12462012278411270383.Spec : Prop :=
  ∀ n, P12462012278411270383.a n = A051548 n

end A051548

/-! ## A051548.P8765187127018407679

`lcm(a(n-1), A000005(n))` with `a(0)=1`
-/

namespace A051548.P8765187127018407679
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Int.lcm (a (n - 1) : ℤ) (A000005 n)

end

end A051548.P8765187127018407679

namespace A051548

/-- `lcm(a(n-1), A000005(n))` -/
def P8765187127018407679.Spec : Prop :=
  ∀ n, (P8765187127018407679.a n : ℤ) = A051548 n

end A051548

/-! ## A051548.P2715340293055984004

`∏[A265578(A028310(n))]`
-/

namespace A051548.P2715340293055984004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265578 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A051548.P2715340293055984004

namespace A051548

/-- `∏[A265578(A028310(n))]` -/
def P2715340293055984004.Spec : Prop :=
  ∀ n, P2715340293055984004.a n = A051548 n

end A051548

/-! ## A051548.P668087637020342069

`∏[A265578(n+1)]/A265578(n+1)`
-/

namespace A051548.P668087637020342069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265578 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A265578 (n + 1) : ℚ)

end

end A051548.P668087637020342069

namespace A051548

/-- `∏[A265578(n+1)]/A265578(n+1)` -/
def P668087637020342069.Spec : Prop :=
  ∀ n, P668087637020342069.a n = (A051548 n : ℚ)

end A051548

/-! ## A051548.P5850549256707521613

`lcm(ceil(a(n-1)), A277692(2*n+1))` with `a(0)=1, a(1)=1`

`ceil` is left out, it is the identity on integers.
-/

namespace A051548.P5850549256707521613
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  Int.lcm (a (n - 1) : ℤ) (A277692 (2 * n + 1))

end

end A051548.P5850549256707521613

namespace A051548

/-- `lcm(ceil(a(n-1)), A277692(2*n+1))` -/
def P5850549256707521613.Spec : Prop :=
  ∀ n, (P5850549256707521613.a n : ℤ) = A051548 n

end A051548

/-! ## A051548.P13521067190075529583

`lcm(-a(n-1), A194621(A000217(n)))` with `a(0)=1`
-/

namespace A051548.P13521067190075529583
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Int.lcm (-(a (n - 1) : ℤ)) (A194621 (A000217 n).toNat)

end

end A051548.P13521067190075529583

namespace A051548

/-- `lcm(-a(n-1), A194621(A000217(n)))` -/
def P13521067190075529583.Spec : Prop :=
  ∀ n, (P13521067190075529583.a n : ℤ) = A051548 n

end A051548

/-!
# A051549: a(n) = LCM { sigma(1), ..., sigma(n) }.

The programs for A051549, the canonical program `A051549.P12479274296793480448` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A051549 has offset 0).

The definition of A051549 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 907 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A051549.P12479274296793480448

`lcm(a(n-1), ∑{d}[n, #])` with `a(0)=1`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A051549

/-- `lcm(a(n-1), ∑{d}[n, #])` -/
def P12479274296793480448.Spec : Prop :=
  ∀ n, (P12479274296793480448.a n : ℤ) = A051549 n

theorem P12479274296793480448.correct : P12479274296793480448.Spec := by
  intro n
  simp only [A051549]

end A051549

/-! ## A051549.P15164525980353467052

`lcm(a(n-1), A000203(n))` with `a(0)=1`
-/

namespace A051549.P15164525980353467052
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Int.lcm (a (n - 1) : ℤ) (A000203 n)

end

end A051549.P15164525980353467052

namespace A051549

/-- `lcm(a(n-1), A000203(n))` -/
def P15164525980353467052.Spec : Prop :=
  ∀ n, (P15164525980353467052.a n : ℤ) = A051549 n

end A051549

/-!
# A051550: Numerators in expansion of 1/(10+sqrt(36+x)).

The programs for A051550, there is no canonical definition to state claims against.
-/

/-! ## A051550.P10108407207603208645

`(-1)^n*A038502(A132863(n))`
-/

namespace A051550.P10108407207603208645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A038502 (A132863 n).toNat

end

end A051550.P10108407207603208645

/-!
# A051551: Denominators in expansion of 1/(10+sqrt(36+x)).

The programs for A051551, there is no canonical definition to state claims against.
-/

/-! ## A051551.P17913320224263944528

`A000265(A003946(2*n))*A000302(3*n+2)`
-/

namespace A051551.P17913320224263944528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A003946 (2 * n)).toNat * A000302 (3 * n + 2)

end

end A051551.P17913320224263944528

/-!
# A051552: Quotients of consecutive values of LCM {b(0), b(1) ...,b(n)}, b() = A016789.

The programs for A051552, the canonical program `A051552.P10610134321227403053` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A051552 has offset 1).

The definition of A051552 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051540, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A051552.P10610134321227403053

`A051540(n+1)/A051540(n)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A051552

/-- `A051540(n+1)/A051540(n)` -/
def P10610134321227403053.Spec : Prop :=
  ∀ n, P10610134321227403053.a n = (A051552 (n + 1) : ℚ)

end A051552

/-! ## A051552.P6713072613704973827

`A099634(A165367(n+1))`
-/

namespace A051552.P6713072613704973827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099634 (A165367 (n + 1)).toNat

end

end A051552.P6713072613704973827

namespace A051552

/-- `A099634(A165367(n+1))` -/
def P6713072613704973827.Spec : Prop :=
  ∀ n, P6713072613704973827.a n = A051552 (n + 1)

end A051552

/-! ## A051552.P6982065675384242623

`A014963(A016789(n+1))*A020513(A016789(n+1))`
-/

namespace A051552.P6982065675384242623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A016789 (n + 1)).toNat * A020513 (A016789 (n + 1)).toNat

end

end A051552.P6982065675384242623

namespace A051552

/-- `A014963(A016789(n+1))*A020513(A016789(n+1))` -/
def P6982065675384242623.Spec : Prop :=
  ∀ n, P6982065675384242623.a n = A051552 (n + 1)

end A051552

/-! ## A051552.P11555355876703225159

`lcm(A003418(n+1), A016789(n+1))/A003418(n+1)`
-/

namespace A051552.P11555355876703225159
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A003418 (n + 1)) (A016789 (n + 1)) : ℚ) / (A003418 (n + 1) : ℚ)

end

end A051552.P11555355876703225159

namespace A051552

/-- `lcm(A003418(n+1), A016789(n+1))/A003418(n+1)` -/
def P11555355876703225159.Spec : Prop :=
  ∀ n, P11555355876703225159.a n = (A051552 (n + 1) : ℚ)

end A051552

/-! ## A051552.P4848510822775512857

`ratio[lcm(3*n+2, a(n-1))]` with `a(0)=2`
-/

namespace A051552.P4848510822775512857
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2] fun n f1 =>
  Nat.lcm (3 * n + 2) (f1 (n - 1))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A051552.P4848510822775512857

namespace A051552

/-- `ratio[lcm(3*n+2, a(n-1))]` -/
def P4848510822775512857.Spec : Prop :=
  ∀ n, P4848510822775512857.a n = (A051552 (n + 1) : ℚ)

end A051552

/-! ## A051552.P17717260944347011176

`ratio[A051540(n)]`
-/

namespace A051552.P17717260944347011176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051540 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A051552.P17717260944347011176

namespace A051552

/-- `ratio[A051540(n)]` -/
def P17717260944347011176.Spec : Prop :=
  ∀ n, P17717260944347011176.a n = (A051552 (n + 1) : ℚ)

end A051552

/-! ## A051552.P17346257697022768303

`A072505(lcm(3*n+5, n+1))`
-/

namespace A051552.P17346257697022768303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072505 (Nat.lcm (3 * n + 5) (n + 1))

end

end A051552.P17346257697022768303

namespace A051552

/-- `A072505(lcm(3*n+5, n+1))` -/
def P17346257697022768303.Spec : Prop :=
  ∀ n, P17346257697022768303.a n = A051552 (n + 1)

end A051552

/-!
# A051560: Second unsigned column of triangle A051379.

The programs for A051560, there is no canonical definition to state claims against.
-/

/-! ## A051560.P256020162758145514

`A051545(n)+n*a(n-1)` with `a(0)=0`
-/

namespace A051560.P256020162758145514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A051545 n + (n : ℤ) * a (n - 1)

end

end A051560.P256020162758145514

/-! ## A051560.P14987169770856517141

`lcm(∑{e}[n+1, #], A051379(A000124(n)))`
-/

namespace A051560.P14987169770856517141
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℤ) (A051379 (A000124 n).toNat)

end

end A051560.P14987169770856517141

/-! ## A051560.P363003470735165078

`A051379(A000124(n))*A062157(n)`
-/

namespace A051560.P363003470735165078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051379 (A000124 n).toNat * A062157 n

end

end A051560.P363003470735165078

/-! ## A051560.P464751056646120657

`lcm(A000196(n), A051379(A000124(n)))`
-/

namespace A051560.P464751056646120657
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000196 n) (A051379 (A000124 n).toNat)

end

end A051560.P464751056646120657

/-! ## A051560.P11763979487878705030

`A067176(eq[7, A002262(n)])`
-/

namespace A051560.P11763979487878705030
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067176 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A051560.P11763979487878705030

/-!
# A051561: Third unsigned column of triangle A051379.

The programs for A051561, there is no canonical definition to state claims against.
-/

/-! ## A051561.P1036582007941970350

`A051546(n)+n*a(n-1)` with `a(0)=0`
-/

namespace A051561.P1036582007941970350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A051546 n + (n : ℤ) * a (n - 1)

end

end A051561.P1036582007941970350

/-!
# A051562: Second unsigned column of triangle A051380.

The programs for A051562, there is no canonical definition to state claims against.
-/

/-! ## A051562.P15764598219186871785

`A051560(n)+n*a(n-1)` with `a(0)=0`
-/

namespace A051562.P15764598219186871785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A051560 n + (n : ℤ) * a (n - 1)

end

end A051562.P15764598219186871785

/-! ## A051562.P16219402161468330601

`A051380(A000124(n))*A062157(n)`
-/

namespace A051562.P16219402161468330601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051380 (A000124 n).toNat * A062157 n

end

end A051562.P16219402161468330601

/-! ## A051562.P2409062160013446272

`lcm(A000196(n), A051380(A000124(n)))`
-/

namespace A051562.P2409062160013446272
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000196 n) (A051380 (A000124 n).toNat)

end

end A051562.P2409062160013446272

/-! ## A051562.P18381892860085790946

`A067176(eq[8, A002262(n)])`
-/

namespace A051562.P18381892860085790946
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067176 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A051562.P18381892860085790946

/-! ## A051562.P10682433831334106168

`A067176(eq[8, A144328(n+1)])`
-/

namespace A051562.P10682433831334106168
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067176 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A051562.P10682433831334106168

/-!
# A051563: Third unsigned column of triangle A051380.

The programs for A051563, there is no canonical definition to state claims against.
-/

/-! ## A051563.P11134430787382181562

`A051561(n)+n*a(n-1)` with `a(0)=0`
-/

namespace A051563.P11134430787382181562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A051561 n + (n : ℤ) * a (n - 1)

end

end A051563.P11134430787382181562

/-!
# A051564: Second unsigned column of triangle A051523.

The programs for A051564, there is no canonical definition to state claims against.
-/

/-! ## A051564.P9222510387350458557

`A051562(n)+n*a(n-1)` with `a(0)=0`
-/

namespace A051564.P9222510387350458557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A051562 n + (n : ℤ) * a (n - 1)

end

end A051564.P9222510387350458557

/-! ## A051564.P16201932296289752609

`A051523(A000124(n))*A062157(n)`
-/

namespace A051564.P16201932296289752609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051523 (A000124 n).toNat * A062157 n

end

end A051564.P16201932296289752609

/-! ## A051564.P726964310259941717

`lcm(A000196(n), A051523(A000124(n)))`
-/

namespace A051564.P726964310259941717
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000196 n) (A051523 (A000124 n).toNat)

end

end A051564.P726964310259941717

/-! ## A051564.P1614273820165649988

`A067176(eq[9, A002262(n)])`
-/

namespace A051564.P1614273820165649988
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067176 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A051564.P1614273820165649988

/-! ## A051564.P13777742621089998162

`A067176(eq[9, A144328(n+1)])`
-/

namespace A051564.P13777742621089998162
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067176 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A051564.P13777742621089998162

/-!
# A051565: Third unsigned column of triangle A051523.

The programs for A051565, there is no canonical definition to state claims against.
-/

/-! ## A051565.P17961624463816287892

`A051563(n)+n*a(n-1)` with `a(0)=0`
-/

namespace A051565.P17961624463816287892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A051563 n + (n : ℤ) * a (n - 1)

end

end A051565.P17961624463816287892

/-!
# A051567: Consider problem of placing N queens on an n X n board so that each queen attacks precisely k others. Here k=1 and sequence gives number of inequivalent solutions when N is equal to the upper bound 2*floor(2n/3).

The programs for A051567, there is no canonical definition to state claims against.
-/

/-! ## A051567.P3126638564518419222

`and(A014037(n)-1, A051757(n+3))`
-/

namespace A051567.P3126638564518419222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A014037 n - 1) (A051757 (n + 3))

end

end A051567.P3126638564518419222

/-! ## A051567.P2413070233545248047

`A051757(n+3)*A055396(A284431(n+1))`
-/

namespace A051567.P2413070233545248047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051757 (n + 3) * A055396 (A284431 (n + 1)).toNat

end

end A051567.P2413070233545248047

/-!
# A051569: Consider the problem of placing N = A051756(n) queens on an n X n board so that each queen attacks precisely 3 others; a(n) gives the number of inequivalent solutions.

The programs for A051569, there is no canonical definition to state claims against.
-/

/-! ## A051569.P12342338004190174892

`and(-A008459(n), A051759(n+2))`
-/

namespace A051569.P12342338004190174892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A008459 n) (A051759 (n + 2))

end

end A051569.P12342338004190174892

/-! ## A051569.P16871973345252525425

`and(-A022167(n), A051759(n+2))`
-/

namespace A051569.P16871973345252525425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A022167 n) (A051759 (n + 2))

end

end A051569.P16871973345252525425

/-! ## A051569.P2274283735778642461

`and(-A146767(n), A051759(n+2))`
-/

namespace A051569.P2274283735778642461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A146767 n) (A051759 (n + 2))

end

end A051569.P2274283735778642461

/-! ## A051569.P12289942606988485699

`and(-A336811(n+1), A051759(n+2))`
-/

namespace A051569.P12289942606988485699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A336811 (n + 1)) (A051759 (n + 2))

end

end A051569.P12289942606988485699

/-!
# A051570: Consider the problem of placing N queens on an n X n board so that each queen attacks precisely k others. Here k=3 and sequence gives number of different solutions when N takes its maximal value.

The programs for A051570, there is no canonical definition to state claims against.
-/

/-! ## A051570.P4278757851852267074

`A051569(n+3)+A024816(A120880(n+1))`
-/

namespace A051570.P4278757851852267074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051569 (n + 3) + A024816 (A120880 (n + 1)).toNat

end

end A051570.P4278757851852267074

/-! ## A051570.P10822254538985817042

`A099095(A253641(n+1))+A051569(n+3)`
-/

namespace A051570.P10822254538985817042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099095 (A253641 (n + 1)).toNat + A051569 (n + 3)

end

end A051570.P10822254538985817042

/-! ## A051570.P8194470849294213314

`or(A001222(A022171(n+1)), A051569(n+3))`
-/

namespace A051570.P8194470849294213314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001222 (A022171 (n + 1)).toNat) (A051569 (n + 3))

end

end A051570.P8194470849294213314

/-! ## A051570.P2591785862671617250

`A051569(n+3)+A005069(A046927(3*(n+1)))`
-/

namespace A051570.P2591785862671617250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051569 (n + 3) + A005069 (A046927 (3 * (n + 1))).toNat

end

end A051570.P2591785862671617250

/-!
# A051571: Consider problem of placing N queens on an n X n board so that each queen attacks precisely k others. Here k=4 and sequence gives number of inequivalent solutions when N = 3*n-3.

The programs for A051571, there is no canonical definition to state claims against.
-/

/-! ## A051571.P16173285458767625838

`A019654(n+3)%A012134(n)²`
-/

namespace A051571.P16173285458767625838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A019654 (n + 3)) (A012134 n ^ 2)

end

end A051571.P16173285458767625838

/-! ## A051571.P18080632301439082640

`xor(n, A241314(A001924(n)))`
-/

namespace A051571.P18080632301439082640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A241314 (A001924 n).toNat)

end

end A051571.P18080632301439082640

/-! ## A051571.P7935151410306899390

`A363527(2*A003242(n+1))`
-/

namespace A051571.P7935151410306899390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363527 (2 * A003242 (n + 1)).toNat

end

end A051571.P7935151410306899390

/-!
# A051572: a(1) = 5, a(n) = sigma(a(n-1)).

The programs for A051572, there is no canonical definition to state claims against.
-/

/-! ## A051572.P16521016373129158441

`A000203(a(n-1))` with `a(0)=5`
-/

namespace A051572.P16521016373129158441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  A000203 (a (n - 1)).toNat

end

end A051572.P16521016373129158441

/-! ## A051572.P10205170640117296139

`A000203(abs(a((2*n)%(n+1))))` with `a(0)=5`
-/

namespace A051572.P10205170640117296139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  A000203 |a (2 * n % (n + 1))|.toNat

end

end A051572.P10205170640117296139

/-! ## A051572.P3519622238523586594

`A000203(a(xor(-1, -n)))%(6^n)` with `a(0)=5, a(1)=6`
-/

namespace A051572.P3519622238523586594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5, 6] fun n a =>
  Int.tmod (A000203 (a (Int.xor (-1) (-(n : ℤ))).toNat).toNat) (6 ^ n : ℤ)

end

end A051572.P3519622238523586594

/-! ## A051572.P5169278457699720066

`A000203(floor(n*a(floor(n²/(n+1))))/n)` with `a(0)=5`

`floor` is left out, it is the identity on integers.
-/

namespace A051572.P5169278457699720066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  A000203 (SequenceMachineLib.roundAway (((n : ℤ) * a ⌊(n ^ 2 : ℚ) / (n + 1 : ℚ)⌋.toNat : ℚ) / (n : ℚ))).toNat

end

end A051572.P5169278457699720066

/-! ## A051572.P6414369272957352610

`A000203(abs(a(A023443(n))))` with `a(0)=5`
-/

namespace A051572.P6414369272957352610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  A000203 |a (A023443 n).toNat|.toNat

end

end A051572.P6414369272957352610

/-!
# A051573: INVERTi transform of A000081 = [1, 2, 4, 9, 20, 48, 115, 286, 719, 1842, 4766, 12486,...].

The programs for A051573, there is no canonical definition to state claims against.
-/

/-! ## A051573.P17148044848386664072

`A052250(∑[n]+1)`
-/

namespace A051573.P17148044848386664072
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052250 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A051573.P17148044848386664072

/-! ## A051573.P9577467351201111518

`A052250(A000124(n))%A001576(n)`
-/

namespace A051573.P9577467351201111518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A052250 (A000124 n).toNat) (A001576 n)

end

end A051573.P9577467351201111518

/-! ## A051573.P874005777158486298

`lcm(A033999(n), A052250(A000124(n)))`
-/

namespace A051573.P874005777158486298
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A052250 (A000124 n).toNat)

end

end A051573.P874005777158486298

/-! ## A051573.P14653704204247857297

`or(A000007(n), A052250(A000124(n)))`
-/

namespace A051573.P14653704204247857297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A052250 (A000124 n).toNat)

end

end A051573.P14653704204247857297

/-! ## A051573.P16252477574917254779

`A033999(2*n)*A052250(A000124(n))`
-/

namespace A051573.P16252477574917254779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (2 * n) * A052250 (A000124 n).toNat

end

end A051573.P16252477574917254779

/-! ## A051573.P1529685240099554630

`A052250(A000124(n))*A060990(A262511(n+1))`
-/

namespace A051573.P1529685240099554630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052250 (A000124 n).toNat * A060990 (A262511 (n + 1)).toNat

end

end A051573.P1529685240099554630

/-! ## A051573.P8208058471599262017

`A052250(A000124(n))+A010051(A163956(n+1))`
-/

namespace A051573.P8208058471599262017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052250 (A000124 n).toNat + A010051 (A163956 (n + 1)).toNat

end

end A051573.P8208058471599262017

/-!
# A051574: a(n) = number of k, 1<=k<=n, such that (n*k) divides binomial(n,k).

The programs for A051574, there is no canonical definition to state claims against.
-/

/-! ## A051574.P9207436634288824384

`A255274(2^A143862(n))`
-/

namespace A051574.P9207436634288824384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255274 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A143862 n : ℤ))).toNat

end

end A051574.P9207436634288824384

/-! ## A051574.P4831151565845997570

`A046951(∑[A089084(n+1)])`
-/

namespace A051574.P4831151565845997570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089084 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046951 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A051574.P4831151565845997570

/-! ## A051574.P2097708065796281289

`A115579(∏{e}[2*(n+1), #+1]+A167847(n+3)-1)`
-/

namespace A051574.P2097708065796281289
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115579 (((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ) + (A167847 (n + 3) - 1)).toNat

end

end A051574.P2097708065796281289

/-! ## A051574.P13579387242766914969

`A280747(A311767(n)+A054548(n))`
-/

namespace A051574.P13579387242766914969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280747 (A311767 n + A054548 n).toNat

end

end A051574.P13579387242766914969

/-! ## A051574.P15407527202131989945

`gcd(A029842(n), A324907(A108411(n)))`
-/

namespace A051574.P15407527202131989945
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A029842 n) (A324907 (A108411 n).toNat)

end

end A051574.P15407527202131989945

/-!
# A051575: a(n) = LCM { Catalan(0), ..., Catalan(n) }.

The programs for A051575, the canonical program `A051575.P17664740270955352432` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A051575 has offset 0).

The definition of A051575 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 117 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A051575.P17664740270955352432

`lcm(C(2*n, n+1)/n, a(n-1))` with `a(0)=1`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A051575

/-- `lcm(C(2*n, n+1)/n, a(n-1))` -/
def P17664740270955352432.Spec : Prop :=
  ∀ n, (P17664740270955352432.a n : ℤ) = A051575 n

theorem P17664740270955352432.correct : P17664740270955352432.Spec := by
  intro n
  simp only [A051575]

end A051575

/-! ## A051575.P17069592765857807366

`lcm(a(n-1), A000108(n))` with `a(0)=1`
-/

namespace A051575.P17069592765857807366
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Int.lcm (a (n - 1) : ℤ) (A000108 n)

end

end A051575.P17069592765857807366

namespace A051575

/-- `lcm(a(n-1), A000108(n))` -/
def P17069592765857807366.Spec : Prop :=
  ∀ n, (P17069592765857807366.a n : ℤ) = A051575 n

end A051575

/-! ## A051575.P3206107197273744176

`lcm(-a(n-1), A168491(n))` with `a(0)=1`
-/

namespace A051575.P3206107197273744176
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Int.lcm (-(a (n - 1) : ℤ)) (A168491 n)

end

end A051575.P3206107197273744176

namespace A051575

/-- `lcm(-a(n-1), A168491(n))` -/
def P3206107197273744176.Spec : Prop :=
  ∀ n, (P3206107197273744176.a n : ℤ) = A051575 n

end A051575

/-! ## A051575.P8486385422988897954

`lcm(abs(a(n-1)), A126120(2*n))` with `a(0)=1`
-/

namespace A051575.P8486385422988897954
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Int.lcm (a (n - 1) : ℤ) (A126120 (2 * n))

end

end A051575.P8486385422988897954

namespace A051575

/-- `lcm(abs(a(n-1)), A126120(2*n))` -/
def P8486385422988897954.Spec : Prop :=
  ∀ n, (P8486385422988897954.a n : ℤ) = A051575 n

end A051575

/-! ## A051575.P8636383967087665841

`lcm(floor(a(n-1)), A089408(2*n+1))` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A051575.P8636383967087665841
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Int.lcm (a (n - 1) : ℤ) (A089408 (2 * n + 1))

end

end A051575.P8636383967087665841

namespace A051575

/-- `lcm(floor(a(n-1)), A089408(2*n+1))` -/
def P8636383967087665841.Spec : Prop :=
  ∀ n, (P8636383967087665841.a n : ℤ) = A051575 n

end A051575

/-! ## A051575.P14961815045041704001

`lcm(ceil(a(n-1)), A097331(2*n+1))` with `a(0)=1`

`ceil` is left out, it is the identity on integers.
-/

namespace A051575.P14961815045041704001
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Int.lcm (a (n - 1) : ℤ) (A097331 (2 * n + 1))

end

end A051575.P14961815045041704001

namespace A051575

/-- `lcm(ceil(a(n-1)), A097331(2*n+1))` -/
def P14961815045041704001.Spec : Prop :=
  ∀ n, (P14961815045041704001.a n : ℤ) = A051575 n

end A051575

/-!
# A051576: Order of Burnside group B(3,n) of exponent 3 and rank n.

The programs for A051576, the canonical program `A051576.P10885700853466985054` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A051576 has offset 0).

The definition of A051576 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A051576.P10885700853466985054

`3^(n*(n²+5)/6)`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A051576

/-- `3^(n*(n²+5)/6)` -/
def P10885700853466985054.Spec : Prop :=
  ∀ n, P10885700853466985054.a n = (A051576 n : ℝ)

end A051576

/-! ## A051576.P10043680863523889190

`∏[∏[3*a(n-1)]]` with `a(0)=1, a(1)=3, a(2)=3`
-/

namespace A051576.P10043680863523889190
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 3] fun n f2 =>
  3 * f2 (n - 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A051576.P10043680863523889190

namespace A051576

/-- `∏[∏[3*a(n-1)]]` -/
def P10043680863523889190.Spec : Prop :=
  ∀ n, (P10043680863523889190.a n : ℤ) = A051576 n

end A051576

/-! ## A051576.P8556754649651801433

`3^∑[abs(1-n)]*a(n-1)` with `a(0)=1`
-/

namespace A051576.P8556754649651801433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (n : ℤ)|

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (3 : ℚ) ^ (∑ j ∈ Finset.range (n + 1), f1 j : ℤ) * a (n - 1)

end

end A051576.P8556754649651801433

namespace A051576

/-- `3^∑[abs(1-n)]*a(n-1)` -/
def P8556754649651801433.Spec : Prop :=
  ∀ n, P8556754649651801433.a n = (A051576 n : ℚ)

end A051576

/-! ## A051576.P8454719620877115905

`A000244(A004006(n))`
-/

namespace A051576.P8454719620877115905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 (A004006 n).toNat

end

end A051576.P8454719620877115905

namespace A051576

/-- `A000244(A004006(n))` -/
def P8454719620877115905.Spec : Prop :=
  ∀ n, P8454719620877115905.a n = A051576 n

end A051576

/-!
# A051577: a(n) = (2*n + 3)!!/3 = A001147(n+2)/3.

The programs for A051577, the canonical program `A051577.P17076629951215720156` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A051577 has offset 0).

The definition of A051577 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A051577.P17076629951215720156

`A001147(n+2)/3`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A051577

/-- `A001147(n+2)/3` -/
def P17076629951215720156.Spec : Prop :=
  ∀ n, P17076629951215720156.a n = (A051577 n : ℚ)

end A051577

/-! ## A051577.P12705244267131936105

`∏[2*n+3]/3`
-/

namespace A051577.P12705244267131936105
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 3

end

end A051577.P12705244267131936105

namespace A051577

/-- `∏[2*n+3]/3` -/
def P12705244267131936105.Spec : Prop :=
  ∀ n, P12705244267131936105.a n = (A051577 n : ℚ)

end A051577

/-! ## A051577.P10690838151387133872

`∏[a(n-1)+2]` with `a(0)=1, a(1)=5`
-/

namespace A051577.P10690838151387133872
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 5] fun n f1 =>
  f1 (n - 1) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A051577.P10690838151387133872

namespace A051577

/-- `∏[a(n-1)+2]` -/
def P10690838151387133872.Spec : Prop :=
  ∀ n, (P10690838151387133872.a n : ℤ) = A051577 n

end A051577

/-! ## A051577.P6336038830536685430

`or(1, ∏[n+3+n]/3)`
-/

namespace A051577.P6336038830536685430
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (SequenceMachineLib.roundAway (((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 3))

end

end A051577.P6336038830536685430

namespace A051577

/-- `or(1, ∏[n+3+n]/3)` -/
def P6336038830536685430.Spec : Prop :=
  ∀ n, P6336038830536685430.a n = A051577 n

end A051577

/-! ## A051577.P12297180078563126225

`∏[record[n-a(n-2)]]` with `a(0)=1, a(1)=5`
-/

namespace A051577.P12297180078563126225
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 5] fun n f2 =>
  (n : ℤ) - f2 (n - 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A051577.P12297180078563126225

namespace A051577

/-- `∏[record[n-a(n-2)]]` -/
def P12297180078563126225.Spec : Prop :=
  ∀ n, P12297180078563126225.a n = A051577 n

end A051577

/-! ## A051577.P806116695755494922

`∏[∪[2*n+5, 5^n]]`
-/

namespace A051577.P806116695755494922
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 5

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 ^ n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = x) ∨ ∃ j, f3 j = x) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A051577.P806116695755494922

namespace A051577

/-- `∏[∪[2*n+5, 5^n]]` -/
def P806116695755494922.Spec : Prop :=
  ∀ n, (P806116695755494922.a n : ℤ) = A051577 n

end A051577

/-! ## A051577.P11457622967796745716

`∏[(2*n+3)^ceil(tanh(n))]`
-/

namespace A051577.P11457622967796745716
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * n + 3 : ℚ) ^ (⌈Real.tanh (n : ℝ)⌉ : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A051577.P11457622967796745716

namespace A051577

/-- `∏[(2*n+3)^ceil(tanh(n))]` -/
def P11457622967796745716.Spec : Prop :=
  ∀ n, P11457622967796745716.a n = (A051577 n : ℚ)

end A051577

/-! ## A051577.P2433889616948217552

`∏[gcd(2*n+3, floor(acot(n)))]`
-/

namespace A051577.P2433889616948217552
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (2 * n + 3 : ℤ) ⌊SequenceMachineLib.acot (n : ℝ)⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A051577.P2433889616948217552

namespace A051577

/-- `∏[gcd(2*n+3, floor(acot(n)))]` -/
def P2433889616948217552.Spec : Prop :=
  ∀ n, (P2433889616948217552.a n : ℤ) = A051577 n

end A051577

/-! ## A051577.P17130214111050657911

`∏[comp[∪[2*n, ∏[n+3]]]]`
-/

namespace A051577.P17130214111050657911
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f5 j

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f3 j = x) ∨ ∃ j, f4 j = x) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A051577.P17130214111050657911

namespace A051577

/-- `∏[comp[∪[2*n, ∏[n+3]]]]` -/
def P17130214111050657911.Spec : Prop :=
  ∀ n, (P17130214111050657911.a n : ℤ) = A051577 n

end A051577

/-!
# A051578: a(n) = (2*n+4)!!/4!!, related to A000165 (even double factorials).

The programs for A051578, the canonical program `A051578.P8395656647873979606` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A051578 has offset 0).

The definition of A051578 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A051578.P10140139739526125108

`2^(n-1)*(n+2)!`
-/

namespace A051578.P10140139739526125108
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (Nat.factorial (n + 2) : ℚ)

end

end A051578.P10140139739526125108

namespace A051578

/-- `2^(n-1)*(n+2)!` -/
def P10140139739526125108.Spec : Prop :=
  ∀ n, P10140139739526125108.a n = (A051578 n : ℚ)

end A051578

/-! ## A051578.P8395656647873979606

`2*(n+2)*a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A051578

/-- `2*(n+2)*a(n-1)` -/
def P8395656647873979606.Spec : Prop :=
  ∀ n, (P8395656647873979606.a n : ℤ) = A051578 n

theorem P8395656647873979606.correct : P8395656647873979606.Spec := by
  intro n
  simp only [A051578]

end A051578

/-! ## A051578.P8674971638999353242

`2^n*A001710(n+2)`
-/

namespace A051578.P8674971638999353242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A001710 (n + 2)

end

end A051578.P8674971638999353242

namespace A051578

/-- `2^n*A001710(n+2)` -/
def P8674971638999353242.Spec : Prop :=
  ∀ n, P8674971638999353242.a n = A051578 n

end A051578

/-! ## A051578.P10272247035970928710

`∏[2*(n+2)]/4`
-/

namespace A051578.P10272247035970928710
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 4

end

end A051578.P10272247035970928710

namespace A051578

/-- `∏[2*(n+2)]/4` -/
def P10272247035970928710.Spec : Prop :=
  ∀ n, P10272247035970928710.a n = (A051578 n : ℚ)

end A051578

/-! ## A051578.P10682512688802038502

`∏[a(n-1)+2]` with `a(0)=1, a(1)=6`
-/

namespace A051578.P10682512688802038502
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 6] fun n f1 =>
  f1 (n - 1) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A051578.P10682512688802038502

namespace A051578

/-- `∏[a(n-1)+2]` -/
def P10682512688802038502.Spec : Prop :=
  ∀ n, (P10682512688802038502.a n : ℤ) = A051578 n

end A051578

/-! ## A051578.P4421394138257440033

`(n+2)!/2*2^n`
-/

namespace A051578.P4421394138257440033
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 2) : ℚ) / 2 * (2 ^ n : ℚ)

end

end A051578.P4421394138257440033

namespace A051578

/-- `(n+2)!/2*2^n` -/
def P4421394138257440033.Spec : Prop :=
  ∀ n, P4421394138257440033.a n = (A051578 n : ℚ)

end A051578

/-! ## A051578.P14619221310636166518

`∏[gcd(12, 4^n)+2*n]`
-/

namespace A051578.P14619221310636166518
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 12 (4 ^ n) + 2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A051578.P14619221310636166518

namespace A051578

/-- `∏[gcd(12, 4^n)+2*n]` -/
def P14619221310636166518.Spec : Prop :=
  ∀ n, (P14619221310636166518.a n : ℤ) = A051578 n

end A051578

/-! ## A051578.P2528152753009143820

`record[2*n*a(n-1)]` with `a(0)=1, a(1)=0, a(2)=1`
-/

namespace A051578.P2528152753009143820
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 1] fun n f1 =>
  2 * n * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A051578.P2528152753009143820

namespace A051578

/-- `record[2*n*a(n-1)]` -/
def P2528152753009143820.Spec : Prop :=
  ∀ n, (P2528152753009143820.a n : ℤ) = A051578 n

end A051578

/-! ## A051578.P8055202068418412378

`∏[gcd(2, (n+1)!)²+2*n]`
-/

namespace A051578.P8055202068418412378
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 (Nat.factorial (n + 1)) ^ 2 + 2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A051578.P8055202068418412378

namespace A051578

/-- `∏[gcd(2, (n+1)!)²+2*n]` -/
def P8055202068418412378.Spec : Prop :=
  ∀ n, (P8055202068418412378.a n : ℤ) = A051578 n

end A051578

/-! ## A051578.P17362902287655123979

`(3*n-(n-4))*a(n-1)` with `a(0)=1`
-/

namespace A051578.P17362902287655123979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ((3 * n : ℤ) - ((n : ℤ) - 4)) * a (n - 1)

end

end A051578.P17362902287655123979

namespace A051578

/-- `(3*n-(n-4))*a(n-1)` -/
def P17362902287655123979.Spec : Prop :=
  ∀ n, P17362902287655123979.a n = A051578 n

end A051578

/-!
# A051579: a(n) = (2*n+5)!!/5!!, related to A001147 (odd double factorials).

The programs for A051579, there is no canonical definition to state claims against.
-/

/-! ## A051579.P6263830346910573944

`∏[a(n-1)+2]` with `a(0)=1, a(1)=7`
-/

namespace A051579.P6263830346910573944
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 7] fun n f1 =>
  f1 (n - 1) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A051579.P6263830346910573944

/-! ## A051579.P7463158883304943405

`∏[record[n-a(n-2)]]` with `a(0)=1, a(1)=7`
-/

namespace A051579.P7463158883304943405
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 7] fun n f2 =>
  (n : ℤ) - f2 (n - 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A051579.P7463158883304943405

/-! ## A051579.P563065756246218008

`(2*n+5)*a(n-1)` with `a(0)=1`
-/

namespace A051579.P563065756246218008
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (2 * n + 5) * a (n - 1)

end

end A051579.P563065756246218008

/-! ## A051579.P10748196326611111638

`∏[record[gcd(6, (n+1)%2)+n]]`
-/

namespace A051579.P10748196326611111638
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 6 ((n + 1) % 2) + n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A051579.P10748196326611111638

/-! ## A051579.P10715580276889611216

`∏[(2*n+5)^ceil(sin(n)²)]`
-/

namespace A051579.P10715580276889611216
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * n + 5 : ℚ) ^ (⌈Real.sin (n : ℝ) ^ 2⌉ : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A051579.P10715580276889611216

/-! ## A051579.P11596948055794640530

`∏[2*n-or(-5, (n+3)!)]`
-/

namespace A051579.P11596948055794640530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - Int.lor (-5) (Nat.factorial (n + 3) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A051579.P11596948055794640530

/-! ## A051579.P14091334966768727956

`∏[lt[(1-n)², (-2)^(n-1)]]`
-/

namespace A051579.P14091334966768727956
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (n : ℤ)) ^ 2

def f3 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℚ) < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A051579.P14091334966768727956

/-! ## A051579.P2980890160052270456

`a(n-1)*Δ[(2*n-(n-2))²]` with `a(0)=1`
-/

namespace A051579.P2980890160052270456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n : ℤ) - ((n : ℤ) - 2)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * (f1 (n + 1) - f1 n)

end

end A051579.P2980890160052270456

/-! ## A051579.P12320238804078068677

`∏[record[A152204(n+3)]]`
-/

namespace A051579.P12320238804078068677
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152204 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A051579.P12320238804078068677

/-! ## A051579.P16608877399743626858

`∏[A061570(n+2)-n]`
-/

namespace A051579.P16608877399743626858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061570 (n + 2) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A051579.P16608877399743626858

/-!
# A051580: a(n) = (2*n+6)!!/6!!, related to A000165 (even double factorials).

The programs for A051580, there is no canonical definition to state claims against.
-/

/-! ## A051580.P9317967241028995993

`∏[2*(n+3)]/6`
-/

namespace A051580.P9317967241028995993
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 3)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 6

end

end A051580.P9317967241028995993

/-! ## A051580.P7443368696604941064

`∏[a(n-1)+2]` with `a(0)=1, a(1)=8`
-/

namespace A051580.P7443368696604941064
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 8] fun n f1 =>
  f1 (n - 1) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A051580.P7443368696604941064

/-! ## A051580.P18119594662027698502

`(n+3)!/6*2^n`
-/

namespace A051580.P18119594662027698502
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 3) : ℚ) / 6 * (2 ^ n : ℚ)

end

end A051580.P18119594662027698502

/-! ## A051580.P13824498795296670398

`2*(n+3)*a(n-1)` with `a(0)=1`
-/

namespace A051580.P13824498795296670398
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  2 * ((n + 3) * a (n - 1))

end

end A051580.P13824498795296670398

/-! ## A051580.P15771924367345244965

`∏[record[8-xor(1, a(n-1))]]` with `a(0)=1`
-/

namespace A051580.P15771924367345244965
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  8 - Int.xor 1 (f2 (n - 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A051580.P15771924367345244965

/-! ## A051580.P8012506579884528284

`2^n*n!*C(n+3, 3)`
-/

namespace A051580.P8012506579884528284
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n * Nat.factorial n * Nat.choose (n + 3) 3

end

end A051580.P8012506579884528284

/-! ## A051580.P9805238125055019730

`∏[gcd(3, (n+2)!)!+2*n]`
-/

namespace A051580.P9805238125055019730
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (Nat.gcd 3 (Nat.factorial (n + 2))) + 2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A051580.P9805238125055019730

/-! ## A051580.P4736790611211390456

`record[2*n*a(n-1)]` with `a(0)=1, a(1)=0, a(2)=0, a(3)=1`
-/

namespace A051580.P4736790611211390456
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 0, 1] fun n f1 =>
  2 * n * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A051580.P4736790611211390456

/-! ## A051580.P15488271184626325190

`∏[(n+2-abs(1-n))!+2*n]`
-/

namespace A051580.P15488271184626325190
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial ((n + 2 : ℤ) - |1 - (n : ℤ)|).toNat + 2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A051580.P15488271184626325190

/-! ## A051580.P2467979323181067091

`a(n-1)*A020739(n)` with `a(0)=1`
-/

namespace A051580.P2467979323181067091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A020739 n

end

end A051580.P2467979323181067091

/-!
# A051581: a(n) = (2*n+7)!!/7!!, related to A001147 (odd double factorials).

The programs for A051581, there is no canonical definition to state claims against.
-/

/-! ## A051581.P1695421739559762627

`∏[2*n+7]/7`
-/

namespace A051581.P1695421739559762627
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 7

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 7

end

end A051581.P1695421739559762627

/-! ## A051581.P1017381040125362767

`∏[a(n-1)+2]` with `a(0)=1, a(1)=9`
-/

namespace A051581.P1017381040125362767
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 9] fun n f1 =>
  f1 (n - 1) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A051581.P1017381040125362767

/-! ## A051581.P830456856804541763

`∏[gcd(2*n+7, floor(acot(n)))]`
-/

namespace A051581.P830456856804541763
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (2 * n + 7 : ℤ) ⌊SequenceMachineLib.acot (n : ℝ)⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A051581.P830456856804541763

/-! ## A051581.P12953751073857133783

`∏[lt[n², (-ϕ)^(n+1)]]`
-/

namespace A051581.P12953751073857133783
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f3 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (-Real.goldenRatio) ^ (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℝ) < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A051581.P12953751073857133783

/-! ## A051581.P6626458637263757943

`∏[record[n-a(n-2)]]` with `a(0)=1, a(1)=-6`
-/

namespace A051581.P6626458637263757943
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, -6] fun n f2 =>
  (n : ℤ) - f2 (n - 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A051581.P6626458637263757943

/-! ## A051581.P4179654975775528318

`(2*n+7)*a(n-1)` with `a(0)=1`
-/

namespace A051581.P4179654975775528318
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (2 * n + 7) * a (n - 1)

end

end A051581.P4179654975775528318

/-! ## A051581.P7215761207486938593

`a(n-1)*A020742(n)` with `a(0)=1`
-/

namespace A051581.P7215761207486938593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A020742 n

end

end A051581.P7215761207486938593

/-! ## A051581.P2943310948453328305

`∏[record[A282462(2*n)+1]]`
-/

namespace A051581.P2943310948453328305
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282462 (2 * n) + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A051581.P2943310948453328305

/-! ## A051581.P13878199173157030723

`∏[lt[n², A254006(n)]+1]`
-/

namespace A051581.P13878199173157030723
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254006 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A051581.P13878199173157030723

/-! ## A051581.P4144500755269801926

`∏[A007318(A048268(n+3))]`
-/

namespace A051581.P4144500755269801926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A048268 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A051581.P4144500755269801926

/-!
# A051582: a(n) = (2*n+8)!!/8!!, related to A000165 (even double factorials).

The programs for A051582, the canonical program `A051582.P6481622294557809657` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A051582 has offset 0).

The definition of A051582 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A051582.P6481622294557809657

`(n+4)!*2^(n-1)/12`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A051582

/-- `(n+4)!*2^(n-1)/12` -/
def P6481622294557809657.Spec : Prop :=
  ∀ n, P6481622294557809657.a n = (A051582 n : ℚ)

end A051582

/-! ## A051582.P9039493986353550601

`∏[a(n-1)+2]` with `a(0)=1, a(1)=10`
-/

namespace A051582.P9039493986353550601
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 10] fun n f1 =>
  f1 (n - 1) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A051582.P9039493986353550601

namespace A051582

/-- `∏[a(n-1)+2]` -/
def P9039493986353550601.Spec : Prop :=
  ∀ n, (P9039493986353550601.a n : ℤ) = A051582 n

end A051582

/-! ## A051582.P2143622793854891673

`2^(n-2)*∏[n+4]`
-/

namespace A051582.P2143622793854891673
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 2 : ℤ) * ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ)

end

end A051582.P2143622793854891673

namespace A051582

/-- `2^(n-2)*∏[n+4]` -/
def P2143622793854891673.Spec : Prop :=
  ∀ n, P2143622793854891673.a n = (A051582 n : ℚ)

end A051582

/-! ## A051582.P17548442127323369281

`∏[record[n-a(n-2)]]` with `a(0)=1, a(1)=10`
-/

namespace A051582.P17548442127323369281
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 10] fun n f2 =>
  (n : ℤ) - f2 (n - 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A051582.P17548442127323369281

namespace A051582

/-- `∏[record[n-a(n-2)]]` -/
def P17548442127323369281.Spec : Prop :=
  ∀ n, P17548442127323369281.a n = A051582 n

end A051582

/-! ## A051582.P13692063007673583399

`record[(n+8)*a(n-2)]` with `a(0)=1, a(1)=-5`
-/

namespace A051582.P13692063007673583399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, -5] fun n f1 =>
  (n + 8 : ℤ) * f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A051582.P13692063007673583399

namespace A051582

/-- `record[(n+8)*a(n-2)]` -/
def P13692063007673583399.Spec : Prop :=
  ∀ n, P13692063007673583399.a n = A051582 n

end A051582

/-! ## A051582.P11319144681243656461

`abs(2*(n+4)*a(n-1))` with `a(0)=1`
-/

namespace A051582.P11319144681243656461
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  2 * ((n + 4) * a (n - 1))

end

end A051582.P11319144681243656461

namespace A051582

/-- `abs(2*(n+4)*a(n-1))` -/
def P11319144681243656461.Spec : Prop :=
  ∀ n, (P11319144681243656461.a n : ℤ) = A051582 n

end A051582

/-! ## A051582.P12340296584487482079

`floor(2*(n+4)*a(n-1))` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A051582.P12340296584487482079
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  2 * ((n + 4) * a (n - 1))

end

end A051582.P12340296584487482079

namespace A051582

/-- `floor(2*(n+4)*a(n-1))` -/
def P12340296584487482079.Spec : Prop :=
  ∀ n, (P12340296584487482079.a n : ℤ) = A051582 n

end A051582

/-! ## A051582.P6370265279026635950

`ceil(2*(n+4)*a(n-1))` with `a(0)=1`

`ceil` is left out, it is the identity on integers.
-/

namespace A051582.P6370265279026635950
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  2 * ((n + 4) * a (n - 1))

end

end A051582.P6370265279026635950

namespace A051582

/-- `ceil(2*(n+4)*a(n-1))` -/
def P6370265279026635950.Spec : Prop :=
  ∀ n, (P6370265279026635950.a n : ℤ) = A051582 n

end A051582

/-! ## A051582.P7626698379934216119

`round(2*(n+4)*a(n-1))` with `a(0)=1`

`round` is left out, it is the identity on integers.
-/

namespace A051582.P7626698379934216119
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  2 * (n + 4) * a (n - 1)

end

end A051582.P7626698379934216119

namespace A051582

/-- `round(2*(n+4)*a(n-1))` -/
def P7626698379934216119.Spec : Prop :=
  ∀ n, (P7626698379934216119.a n : ℤ) = A051582 n

end A051582

/-! ## A051582.P9033754673850046223

`2*n*a(n-1)+8*a(n-1)` with `a(0)=1`
-/

namespace A051582.P9033754673850046223
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  2 * n * a (n - 1) + 8 * a (n - 1)

end

end A051582.P9033754673850046223

namespace A051582

/-- `2*n*a(n-1)+8*a(n-1)` -/
def P9033754673850046223.Spec : Prop :=
  ∀ n, (P9033754673850046223.a n : ℤ) = A051582 n

end A051582

/-!
# A051583: a(n) = (2*n+9)!!/9!!, related to A001147 (odd double factorials).

The programs for A051583, there is no canonical definition to state claims against.
-/

/-! ## A051583.P12908158680869115702

`∏[2*n+9]/9`
-/

namespace A051583.P12908158680869115702
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 9

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 9

end

end A051583.P12908158680869115702

/-! ## A051583.P17166249556863735119

`∏[a(n-1)+2]` with `a(0)=1, a(1)=11`
-/

namespace A051583.P17166249556863735119
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 11] fun n f1 =>
  f1 (n - 1) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A051583.P17166249556863735119

/-! ## A051583.P5823840084931474994

`∏[dr(9^n)+2*n]`
-/

namespace A051583.P5823840084931474994
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (9 ^ n : ℤ) + 2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A051583.P5823840084931474994

/-! ## A051583.P6953470801508984857

`∏[dr(9^dr(n))+n+n]`
-/

namespace A051583.P6953470801508984857
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (9 ^ SequenceMachineLib.digitalRoot (n : ℤ) : ℤ) + n + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A051583.P6953470801508984857

/-! ## A051583.P10912486156782030709

`(2*n+9)*a(n-1)` with `a(0)=1`
-/

namespace A051583.P10912486156782030709
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (2 * n + 9) * a (n - 1)

end

end A051583.P10912486156782030709

/-! ## A051583.P5208812350334635033

`∏[gcd(3, (n+2)!)²+2*n]`
-/

namespace A051583.P5208812350334635033
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 3 (Nat.factorial (n + 2)) ^ 2 + 2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A051583.P5208812350334635033

/-! ## A051583.P3544115518300559171

`∏[lt[(1-n)², (-2)^(n-3)]]`
-/

namespace A051583.P3544115518300559171
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (n : ℤ)) ^ 2

def f3 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-2 : ℚ) ^ ((n : ℤ) - 3 : ℤ)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℚ) < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A051583.P3544115518300559171

/-! ## A051583.P6180008944902560288

`∏[A171891(2*n+1)]`
-/

namespace A051583.P6180008944902560288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171891 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A051583.P6180008944902560288

/-! ## A051583.P5654920287792062602

`∏[A171891(n+1)+n]`
-/

namespace A051583.P5654920287792062602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171891 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A051583.P5654920287792062602

/-! ## A051583.P14021757028044694124

`∏[record[A328752(2*n+1)]]`
-/

namespace A051583.P14021757028044694124
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328752 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A051583.P14021757028044694124

/-!
# A051584: Number of integer-sided triangles of area n.

The programs for A051584, there is no canonical definition to state claims against.
-/

/-! ## A051584.P627478918904351031

`∑{d}[n+1, A051585(#)*A185015((n+1)/#-1)]`
-/

namespace A051584.P627478918904351031
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A051585 d * A185015 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A051584.P627478918904351031

/-! ## A051584.P11234482904480453721

`A055745(A293442(n+1))%A055874(n+1)`
-/

namespace A051584.P11234482904480453721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A055745 (A293442 (n + 1)).toNat) (A055874 (n + 1))

end

end A051584.P11234482904480453721

/-! ## A051584.P8121774345233413118

`A006517(A045546(n+1))%A055874(n+1)`
-/

namespace A051584.P8121774345233413118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006517 (A045546 (n + 1)).toNat) (A055874 (n + 1))

end

end A051584.P8121774345233413118

/-! ## A051584.P13614560266237535467

`A071222(A058197(n+1))%A055874(n+1)`
-/

namespace A051584.P13614560266237535467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A071222 (A058197 (n + 1)).toNat) (A055874 (n + 1))

end

end A051584.P13614560266237535467

/-! ## A051584.P15685078164012782480

`A001175(A219533(n+1))%A055874(n+1)`
-/

namespace A051584.P15685078164012782480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001175 (A219533 (n + 1)).toNat) (A055874 (n + 1))

end

end A051584.P15685078164012782480

/-! ## A051584.P6307214964716762759

`A059943(A101301(n+9))%A062356(n+1)`
-/

namespace A051584.P6307214964716762759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A059943 (A101301 (n + 9)).toNat) (A062356 (n + 1))

end

end A051584.P6307214964716762759

/-! ## A051584.P3807254321790899223

`val(A326698(n+1), A001221(A097603(n+2)))`
-/

namespace A051584.P3807254321790899223
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A326698 (n + 1)).toNat (A001221 (A097603 (n + 2)).toNat).toNat

end

end A051584.P3807254321790899223

/-!
# A051585: Number of integer-sided triangles of area 6n.

The programs for A051585, there is no canonical definition to state claims against.
-/

/-! ## A051585.P5228576787043743271

`A051584(6*(n+1))`
-/

namespace A051585.P5228576787043743271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051584 (6 * (n + 1))

end

end A051585.P5228576787043743271

/-! ## A051585.P3186884662483029005

`A051584(A008458(n+1))%47`
-/

namespace A051585.P3186884662483029005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A051584 (A008458 (n + 1)).toNat) 47

end

end A051585.P3186884662483029005

/-! ## A051585.P13673325563946141529

`lcm(A020985(n), A051584(A008458(n+1)))`
-/

namespace A051585.P13673325563946141529
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A051584 (A008458 (n + 1)).toNat)

end

end A051585.P13673325563946141529

/-! ## A051585.P9195490934122818641

`or(A000007(n), A051584(A008458(n+1)))`
-/

namespace A051585.P9195490934122818641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A051584 (A008458 (n + 1)).toNat)

end

end A051585.P9195490934122818641

/-! ## A051585.P8439740942402120056

`abs(A051584(A008458(n+1))-A000038(n))`
-/

namespace A051585.P8439740942402120056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A051584 (A008458 (n + 1)).toNat - A000038 n|

end

end A051585.P8439740942402120056

/-! ## A051585.P16663021110717211932

`A051584(A008458(n+1))+A000038(n+1)`
-/

namespace A051585.P16663021110717211932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051584 (A008458 (n + 1)).toNat + A000038 (n + 1)

end

end A051585.P16663021110717211932

/-! ## A051585.P10643755916519476919

`A051584(A008458(n+1))/A007318(C(2, n)+1)`
-/

namespace A051585.P10643755916519476919
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051584 (A008458 (n + 1)).toNat : ℚ) / (A007318 (Nat.choose 2 n + 1) : ℚ)

end

end A051585.P10643755916519476919

/-! ## A051585.P4415246864796858728

`A051584(A008458(n+1))/A109955(C(2, n)+1)`
-/

namespace A051585.P4415246864796858728
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051584 (A008458 (n + 1)).toNat : ℚ) / (A109955 (Nat.choose 2 n + 1) : ℚ)

end

end A051585.P4415246864796858728

/-! ## A051585.P17074753238226139603

`A055672(A055672(n))+A051584(A008458(n+1))`
-/

namespace A051585.P17074753238226139603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055672 (A055672 n).toNat + A051584 (A008458 (n + 1)).toNat

end

end A051585.P17074753238226139603

/-! ## A051585.P13564778675385322376

`A051584(A008458(n+1))/A001511(A016813(n))`
-/

namespace A051585.P13564778675385322376
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051584 (A008458 (n + 1)).toNat : ℚ) / (A001511 (A016813 n).toNat : ℚ)

end

end A051585.P13564778675385322376

/-! ## A051585.P2752052203263292729

`A051584(A008458(n+1))^A001221(A062383(n))`
-/

namespace A051585.P2752052203263292729
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051584 (A008458 (n + 1)).toNat : ℚ) ^ (A001221 (A062383 n).toNat : ℤ)

end

end A051585.P2752052203263292729

/-! ## A051585.P15884846333520513304

`A066035(A001222(n+1))+A051584(A008458(n+1))`
-/

namespace A051585.P15884846333520513304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066035 (A001222 (n + 1)).toNat + A051584 (A008458 (n + 1)).toNat

end

end A051585.P15884846333520513304

/-! ## A051585.P10123728937550083585

`A051584(A008458(n+1))-A069158(A069168(n+1))`
-/

namespace A051585.P10123728937550083585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051584 (A008458 (n + 1)).toNat - A069158 (A069168 (n + 1)).toNat

end

end A051585.P10123728937550083585

/-! ## A051585.P10332493579543684494

`A346607(A084400(n+2))+A051584(A008458(n+1))`
-/

namespace A051585.P10332493579543684494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346607 (A084400 (n + 2)).toNat + A051584 (A008458 (n + 1)).toNat

end

end A051585.P10332493579543684494

/-! ## A051585.P5167537864479167653

`A051584(A008458(n+1))/A001511(A066047(n+1))`
-/

namespace A051585.P5167537864479167653
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051584 (A008458 (n + 1)).toNat : ℚ) / (A001511 (A066047 (n + 1)).toNat : ℚ)

end

end A051585.P5167537864479167653

/-! ## A051585.P9915820876633732670

`and(A051584(A008458(n+1)), A052549(n+2))`
-/

namespace A051585.P9915820876633732670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A051584 (A008458 (n + 1)).toNat) (A052549 (n + 2))

end

end A051585.P9915820876633732670

/-! ## A051585.P14555844841554693249

`A051584(A008458(n+1))/A001222(A066028(n+1))`
-/

namespace A051585.P14555844841554693249
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051584 (A008458 (n + 1)).toNat : ℚ) / (A001222 (A066028 (n + 1)).toNat : ℚ)

end

end A051585.P14555844841554693249

/-!
# A051586: There are exactly n integer-sided triangles of area a(n).

The programs for A051586, there is no canonical definition to state claims against.
-/

/-! ## A051586.P6075728100139125724

`A228858(A084192(∑[n]))`
-/

namespace A051586.P6075728100139125724
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228858 (A084192 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A051586.P6075728100139125724

/-! ## A051586.P17107526008587462924

`A228858(∑[A229891(n)])`
-/

namespace A051586.P17107526008587462924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229891 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228858 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A051586.P17107526008587462924

/-! ## A051586.P5830657030892947540

`A228858(A333659(n)+1)`
-/

namespace A051586.P5830657030892947540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228858 (A333659 n + 1).toNat

end

end A051586.P5830657030892947540

/-! ## A051586.P13445877202455260253

`A228858(A229891(n)+n)`
-/

namespace A051586.P13445877202455260253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228858 (A229891 n + (n : ℤ)).toNat

end

end A051586.P13445877202455260253

/-! ## A051586.P3299283086216422487

`A228858(A221221(n+1)+1)`
-/

namespace A051586.P3299283086216422487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228858 (A221221 (n + 1) + 1).toNat

end

end A051586.P3299283086216422487

/-!
# A051588: Number of 3 X n binary matrices such that any 2 rows have a common 1.

The programs for A051588, the canonical program `A051588.P14918087387494790654` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A051588 has offset 0).

The definition of A051588 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A051588.P14918087387494790654

`8^n-3*6^n+3*5^n-4^n`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A051588

/-- `8^n-3*6^n+3*5^n-4^n` -/
def P14918087387494790654.Spec : Prop :=
  ∀ n, P14918087387494790654.a n = A051588 n

theorem P14918087387494790654.correct : P14918087387494790654.Spec := by
  intro n
  simp only [A051588]

end A051588

/-!
# A051593: Largest order of even permutation of n elements, or maximal order of element of alternating group A_n.

The programs for A051593, there is no canonical definition to state claims against.
-/

/-! ## A051593.P7795362147952455782

`A355572(A055647(A000038(n)+n))`
-/

namespace A051593.P7795362147952455782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355572 (A055647 (A000038 n + (n : ℤ)).toNat).toNat

end

end A051593.P7795362147952455782

/-! ## A051593.P13520969117724866281

`A355572(A055647(gcd(n, A000142(n))))`
-/

namespace A051593.P13520969117724866281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355572 (A055647 (Int.gcd (n : ℤ) (A000142 n))).toNat

end

end A051593.P13520969117724866281

/-! ## A051593.P4500972758496366363

`A355572(gcd(A055647(n), A074115(n+1)))`
-/

namespace A051593.P4500972758496366363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355572 (Int.gcd (A055647 n) (A074115 (n + 1)))

end

end A051593.P4500972758496366363

/-! ## A051593.P15858260724913067837

`A355572(floor(1/A028237(3*n+1)+n))`
-/

namespace A051593.P15858260724913067837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355572 ⌊1 / (A028237 (3 * n + 1) : ℚ) + (n : ℚ)⌋.toNat

end

end A051593.P15858260724913067837

/-! ## A051593.P12436071475436301885

`A355572(A043318(n+1)-A057427(n))`
-/

namespace A051593.P12436071475436301885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355572 (A043318 (n + 1) - A057427 n).toNat

end

end A051593.P12436071475436301885

/-!
# A051596: Numerical values or Gematriot of Hebrew letters {aleph, bet, ..., tav}.

The programs for A051596, there is no canonical definition to state claims against.
-/

/-! ## A051596.P3066797638542035466

`(a(n-1)+a(n-dr(n)))%401` with `a(0)=1`
-/

namespace A051596.P3066797638542035466
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (a (n - 1) + a (n - SequenceMachineLib.digitalRoot (n : ℤ))) % 401

end

end A051596.P3066797638542035466

/-! ## A051596.P4561817975591012218

`char[22]+a(n-1)+a(n-dr(n))` with `a(0)=1`
-/

namespace A051596.P4561817975591012218
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  22

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (if ∃ j, f1 j = n then 1 else 0) + (a (n - 1) + a (n - SequenceMachineLib.digitalRoot (n : ℤ)))

end

end A051596.P4561817975591012218

/-! ## A051596.P10544151469063211646

`(a(n-1)+10^floor((n-1)/9))%665` with `a(0)=1`
-/

namespace A051596.P10544151469063211646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.tmod (SequenceMachineLib.roundAway ((a (n - 1) : ℚ) + (10 : ℚ) ^ (⌊((n : ℤ) - 1 : ℚ) / 9⌋ : ℤ))) 665

end

end A051596.P10544151469063211646

/-! ## A051596.P14418517622416905346

`∑{digits}[n, val(#+6, 8)]!+(n%9+1)*10^floor(n/9)-1`
-/

namespace A051596.P14418517622416905346
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => SequenceMachineLib.valuation (x + 6) 8).sum : ℚ) + (((n % 9 + 1 : ℕ) : ℚ) * (10 : ℚ) ^ (⌊(n : ℚ) / 9⌋ : ℤ) - 1)

end

end A051596.P14418517622416905346

/-!
# A051597: Rows of triangle formed using Pascal's rule except begin and end n-th row with n+1.

The programs for A051597, the canonical program `A051597.P4383731425265306086` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A051597 has offset 0).

The definition of A051597 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A051597.P9597260821538297697

`A051601(n)+A007318(n)`
-/

namespace A051597.P9597260821538297697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051601 n + A007318 n

end

end A051597.P9597260821538297697

namespace A051597

/-- `A051601(n)+A007318(n)` -/
def P9597260821538297697.Spec : Prop :=
  ∀ n, P9597260821538297697.a n = A051597 n

end A051597

/-! ## A051597.P724780628260440494

`A051631(n)+A028326(n)`
-/

namespace A051597.P724780628260440494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051631 n + A028326 n

end

end A051597.P724780628260440494

namespace A051597

/-- `A051631(n)+A028326(n)` -/
def P724780628260440494.Spec : Prop :=
  ∀ n, P724780628260440494.a n = A051597 n

end A051597

/-! ## A051597.P4383731425265306086

`A014430(n)-A014473(n)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A051597

/-- `A014430(n)-A014473(n)` -/
def P4383731425265306086.Spec : Prop :=
  ∀ n, P4383731425265306086.a n = A051597 n

theorem P4383731425265306086.correct : P4383731425265306086.Spec := by
  intro n
  simp only [A051597]

end A051597

/-! ## A051597.P8918091814067353161

`A028263(n)-A028326(n)`
-/

namespace A051597.P8918091814067353161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028263 n - A028326 n

end

end A051597.P8918091814067353161

namespace A051597

/-- `A028263(n)-A028326(n)` -/
def P8918091814067353161.Spec : Prop :=
  ∀ n, P8918091814067353161.a n = A051597 n

end A051597

/-! ## A051597.P5053392425108065260

`A028327(n)-A028263(n)`
-/

namespace A051597.P5053392425108065260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028327 n - A028263 n

end

end A051597.P5053392425108065260

namespace A051597

/-- `A028327(n)-A028263(n)` -/
def P5053392425108065260.Spec : Prop :=
  ∀ n, P5053392425108065260.a n = A051597 n

end A051597

/-! ## A051597.P674090969268427644

`A134636(n)-A051601(n)`
-/

namespace A051597.P674090969268427644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134636 n - A051601 n

end

end A051597.P674090969268427644

namespace A051597

/-- `A134636(n)-A051601(n)` -/
def P674090969268427644.Spec : Prop :=
  ∀ n, P674090969268427644.a n = A051597 n

end A051597

/-! ## A051597.P12429243003208637948

`A051668(n)-A222404(n)`
-/

namespace A051597.P12429243003208637948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051668 n - A222404 n

end

end A051597.P12429243003208637948

namespace A051597

/-- `A051668(n)-A222404(n)` -/
def P12429243003208637948.Spec : Prop :=
  ∀ n, P12429243003208637948.a n = A051597 n

end A051597

/-! ## A051597.P10475394514085388977

`A222405(n)-A051666(n)`
-/

namespace A051597.P10475394514085388977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222405 n - A051666 n

end

end A051597.P10475394514085388977

namespace A051597

/-- `A222405(n)-A051666(n)` -/
def P10475394514085388977.Spec : Prop :=
  ∀ n, P10475394514085388977.a n = A051597 n

end A051597

/-! ## A051597.P18296133881751824626

`A110813(n)-A214292(n)`
-/

namespace A051597.P18296133881751824626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110813 n - A214292 n

end

end A051597.P18296133881751824626

namespace A051597

/-- `A110813(n)-A214292(n)` -/
def P18296133881751824626.Spec : Prop :=
  ∀ n, P18296133881751824626.a n = A051597 n

end A051597

/-! ## A051597.P4204283804660153840

`A014473(n)+A051601(n)+1`
-/

namespace A051597.P4204283804660153840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014473 n + (A051601 n + 1)

end

end A051597.P4204283804660153840

namespace A051597

/-- `A014473(n)+A051601(n)+1` -/
def P4204283804660153840.Spec : Prop :=
  ∀ n, P4204283804660153840.a n = A051597 n

end A051597

/-! ## A051597.P11439768505387769257

`A214292(n)+A029637(n+1)`
-/

namespace A051597.P11439768505387769257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214292 n + A029637 (n + 1)

end

end A051597.P11439768505387769257

namespace A051597

/-- `A214292(n)+A029637(n+1)` -/
def P11439768505387769257.Spec : Prop :=
  ∀ n, P11439768505387769257.a n = A051597 n

end A051597

/-! ## A051597.P2271764770135740162

`A014430(n)+1-A007318(n)`
-/

namespace A051597.P2271764770135740162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014430 n + (1 - A007318 n)

end

end A051597.P2271764770135740162

namespace A051597

/-- `A014430(n)+1-A007318(n)` -/
def P2271764770135740162.Spec : Prop :=
  ∀ n, P2271764770135740162.a n = A051597 n

end A051597

/-! ## A051597.P6933485517261563674

`A029656(n+1)-A156644(n)`
-/

namespace A051597.P6933485517261563674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029656 (n + 1) - A156644 n

end

end A051597.P6933485517261563674

namespace A051597

/-- `A029656(n+1)-A156644(n)` -/
def P6933485517261563674.Spec : Prop :=
  ∀ n, P6933485517261563674.a n = A051597 n

end A051597

/-! ## A051597.P12308291020740036092

`A014410(n+2)-A007318(n)`
-/

namespace A051597.P12308291020740036092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014410 (n + 2) - A007318 n

end

end A051597.P12308291020740036092

namespace A051597

/-- `A014410(n+2)-A007318(n)` -/
def P12308291020740036092.Spec : Prop :=
  ∀ n, P12308291020740036092.a n = A051597 n

end A051597

/-! ## A051597.P10346178028755293993

`A051631(n)+2*A007318(n)`
-/

namespace A051597.P10346178028755293993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051631 n + 2 * A007318 n

end

end A051597.P10346178028755293993

namespace A051597

/-- `A051631(n)+2*A007318(n)` -/
def P10346178028755293993.Spec : Prop :=
  ∀ n, P10346178028755293993.a n = A051597 n

end A051597

/-! ## A051597.P9049898221054261160

`A028263(n)-2*A007318(n)`
-/

namespace A051597.P9049898221054261160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028263 n - 2 * A007318 n

end

end A051597.P9049898221054261160

namespace A051597

/-- `A028263(n)-2*A007318(n)` -/
def P9049898221054261160.Spec : Prop :=
  ∀ n, P9049898221054261160.a n = A051597 n

end A051597

/-! ## A051597.P14065527683049725666

`2*A028263(n)-A028314(n)`
-/

namespace A051597.P14065527683049725666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028263 n - A028314 n

end

end A051597.P14065527683049725666

namespace A051597

/-- `2*A028263(n)-A028314(n)` -/
def P14065527683049725666.Spec : Prop :=
  ∀ n, P14065527683049725666.a n = A051597 n

end A051597

/-! ## A051597.P14338532919126111513

`A028314(n)-2*A028326(n)`
-/

namespace A051597.P14338532919126111513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028314 n - 2 * A028326 n

end

end A051597.P14338532919126111513

namespace A051597

/-- `A028314(n)-2*A028326(n)` -/
def P14338532919126111513.Spec : Prop :=
  ∀ n, P14338532919126111513.a n = A051597 n

end A051597

/-! ## A051597.P505941022180917014

`A051601(n)+A028326(n)/2`
-/

namespace A051597.P505941022180917014
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051601 n : ℚ) + (A028326 n : ℚ) / 2

end

end A051597.P505941022180917014

namespace A051597

/-- `A051601(n)+A028326(n)/2` -/
def P505941022180917014.Spec : Prop :=
  ∀ n, P505941022180917014.a n = (A051597 n : ℚ)

end A051597

/-! ## A051597.P3821310318203866944

`2*A051601(n)-A051631(n)`
-/

namespace A051597.P3821310318203866944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A051601 n - A051631 n

end

end A051597.P3821310318203866944

namespace A051597

/-- `2*A051601(n)-A051631(n)` -/
def P3821310318203866944.Spec : Prop :=
  ∀ n, P3821310318203866944.a n = A051597 n

end A051597

/-!
# A051598: Rows of triangle formed using Pascal's rule except begin n-th row with 2*n and end it with 2*n+1.

The programs for A051598, the canonical program `A051598.P11098162579697711574` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A051598 has offset 0).

The definition of A051598 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A051598.P447225105106583782

`A053207(n)+A007318(n)`
-/

namespace A051598.P447225105106583782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053207 n + A007318 n

end

end A051598.P447225105106583782

namespace A051598

/-- `A053207(n)+A007318(n)` -/
def P447225105106583782.Spec : Prop :=
  ∀ n, P447225105106583782.a n = A051598 n

end A051598

/-! ## A051598.P15706665799937302149

`A053207(n)+abs(A130595(n))`
-/

namespace A051598.P15706665799937302149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053207 n + |A130595 n|

end

end A051598.P15706665799937302149

namespace A051598

/-- `A053207(n)+abs(A130595(n))` -/
def P15706665799937302149.Spec : Prop :=
  ∀ n, P15706665799937302149.a n = A051598 n

end A051598

/-! ## A051598.P16423873711219338098

`A053207(n)+sqrt(A008459(n))`
-/

namespace A051598.P16423873711219338098
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A053207 n : ℝ) + Real.sqrt (A008459 n : ℝ)

end

end A051598.P16423873711219338098

namespace A051598

/-- `A053207(n)+sqrt(A008459(n))` -/
def P16423873711219338098.Spec : Prop :=
  ∀ n, P16423873711219338098.a n = (A051598 n : ℝ)

end A051598

/-! ## A051598.P14509523812690586071

`A134636(n)+∑[A008482(n)]`
-/

namespace A051598.P14509523812690586071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008482 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134636 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051598.P14509523812690586071

namespace A051598

/-- `A134636(n)+∑[A008482(n)]` -/
def P14509523812690586071.Spec : Prop :=
  ∀ n, P14509523812690586071.a n = A051598 n

end A051598

/-! ## A051598.P13785041544656600760

`A053207(n)+Δ[A102363(n)]`
-/

namespace A051598.P13785041544656600760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053207 n + (f1 (n + 1) - f1 n)

end

end A051598.P13785041544656600760

namespace A051598

/-- `A053207(n)+Δ[A102363(n)]` -/
def P13785041544656600760.Spec : Prop :=
  ∀ n, P13785041544656600760.a n = A051598 n

end A051598

/-! ## A051598.P16263677494444568955

`A134636(n)-∑[A037012(n)]`
-/

namespace A051598.P16263677494444568955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037012 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134636 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051598.P16263677494444568955

namespace A051598

/-- `A134636(n)-∑[A037012(n)]` -/
def P16263677494444568955.Spec : Prop :=
  ∀ n, P16263677494444568955.a n = A051598 n

end A051598

/-! ## A051598.P11098162579697711574

`A134636(n)-A097805(n+1)`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A051598

/-- `A134636(n)-A097805(n+1)` -/
def P11098162579697711574.Spec : Prop :=
  ∀ n, P11098162579697711574.a n = A051598 n

theorem P11098162579697711574.correct : P11098162579697711574.Spec := by
  intro n
  simp only [A051598]

end A051598

/-! ## A051598.P9149294527237427822

`A097805(n)+2*A051601(n)`
-/

namespace A051598.P9149294527237427822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097805 n + 2 * A051601 n

end

end A051598.P9149294527237427822

namespace A051598

/-- `A097805(n)+2*A051601(n)` -/
def P9149294527237427822.Spec : Prop :=
  ∀ n, P9149294527237427822.a n = A051598 n

end A051598

/-! ## A051598.P14164500398481023274

`2*A051597(n)-A029653(n)`
-/

namespace A051598.P14164500398481023274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A051597 n - A029653 n

end

end A051598.P14164500398481023274

namespace A051598

/-- `2*A051597(n)-A029653(n)` -/
def P14164500398481023274.Spec : Prop :=
  ∀ n, P14164500398481023274.a n = A051598 n

end A051598

/-! ## A051598.P15506833647397112108

`A053207(n)+A028326(n)/2`
-/

namespace A051598.P15506833647397112108
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053207 n : ℚ) + (A028326 n : ℚ) / 2

end

end A051598.P15506833647397112108

namespace A051598

/-- `A053207(n)+A028326(n)/2` -/
def P15506833647397112108.Spec : Prop :=
  ∀ n, P15506833647397112108.a n = (A051598 n : ℚ)

end A051598

/-! ## A051598.P6922624984625235051

`A097805(n)+A005843(A051601(n))`
-/

namespace A051598.P6922624984625235051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097805 n + A005843 (A051601 n).toNat

end

end A051598.P6922624984625235051

namespace A051598

/-- `A097805(n)+A005843(A051601(n))` -/
def P6922624984625235051.Spec : Prop :=
  ∀ n, P6922624984625235051.a n = A051598 n

end A051598

/-! ## A051598.P6074677369472785759

`A053207(n)-A001057(A028326(n))`
-/

namespace A051598.P6074677369472785759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053207 n - A001057 (A028326 n).toNat

end

end A051598.P6074677369472785759

namespace A051598

/-- `A053207(n)-A001057(A028326(n))` -/
def P6074677369472785759.Spec : Prop :=
  ∀ n, P6074677369472785759.a n = A051598 n

end A051598

/-!
# A051599: Rows of triangle formed using Pascal's rule except begin and end n-th row with (n+1)st prime.

The programs for A051599, there is no canonical definition to state claims against.
-/

/-! ## A051599.P7115986582628951184

`A144305(A014132(n+1)%A093058(n+1))`
-/

namespace A051599.P7115986582628951184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144305 (Int.tmod (A014132 (n + 1)) (A093058 (n + 1))).toNat

end

end A051599.P7115986582628951184

/-! ## A051599.P5015769636250340788

`A144305(∪[A014132(n+1), A093058(n+1)])`
-/

namespace A051599.P5015769636250340788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014132 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093058 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144305 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A051599.P5015769636250340788

/-! ## A051599.P3136678672890398776

`A144305(A014132(n+1))%A246790(2*(n+1))`
-/

namespace A051599.P3136678672890398776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A144305 (A014132 (n + 1)).toNat) (A246790 (2 * (n + 1)))

end

end A051599.P3136678672890398776

/-! ## A051599.P17176683589505100065

`A144305(A014132(n+1))%A246782(A246786(n+1))`
-/

namespace A051599.P17176683589505100065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A144305 (A014132 (n + 1)).toNat) (A246782 (A246786 (n + 1)).toNat)

end

end A051599.P17176683589505100065

/-! ## A051599.P5966734749909266114

`A144305(A014132(n+1))%A335271(n+1)`
-/

namespace A051599.P5966734749909266114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A144305 (A014132 (n + 1)).toNat) (A335271 (n + 1))

end

end A051599.P5966734749909266114

