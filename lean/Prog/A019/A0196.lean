import SequenceMachineLib.Basic
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C011
import Seq.B000.C017
import Seq.B000.C019
import Seq.B005.C000
import Seq.Opaque.C000
import Seq.Opaque.C001
import Seq.Opaque.C003
import Seq.Opaque.C004
import Seq.Opaque.C006
import Seq.Opaque.C007
import Seq.Opaque.C009
import Seq.Opaque.C014
import Seq.Opaque.C020

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A019613: Expansion of 1/((1-4*x)*(1-7*x)*(1-9*x)).

The programs for A019613, the canonical program `A019613.P13903313505101760533` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A019613 has offset 0).

The definition of A019613 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A019613.P13903313505101760533

`16*a(n-1)-63*a(n-2)+4^n` with `a(0)=1, a(1)=20`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A019613

/-- `16*a(n-1)-63*a(n-2)+4^n` -/
def P13903313505101760533.Spec : Prop :=
  ∀ n, P13903313505101760533.a n = A019613 n

theorem P13903313505101760533.correct : P13903313505101760533.Spec := by
  intro n
  simp only [A019613]

end A019613

/-! ## A019613.P11339912212945089582

`A016178(n)+4*a(n-1)` with `a(0)=1`
-/

namespace A019613.P11339912212945089582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A016178 n + 4 * a (n - 1)

end

end A019613.P11339912212945089582

namespace A019613

/-- `A016178(n)+4*a(n-1)` -/
def P11339912212945089582.Spec : Prop :=
  ∀ n, P11339912212945089582.a n = A019613 n

end A019613

/-! ## A019613.P1259116081533226264

`(A025972(n)+A016312(n))/2`
-/

namespace A019613.P1259116081533226264
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025972 n + A016312 n : ℚ) / 2

end

end A019613.P1259116081533226264

namespace A019613

/-- `(A025972(n)+A016312(n))/2` -/
def P1259116081533226264.Spec : Prop :=
  ∀ n, P1259116081533226264.a n = (A019613 n : ℚ)

end A019613

/-! ## A019613.P7520026999335757525

`A016291(n)+A016312(n)-A016285(n)`
-/

namespace A019613.P7520026999335757525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016291 n + (A016312 n - A016285 n)

end

end A019613.P7520026999335757525

namespace A019613

/-- `A016291(n)+A016312(n)-A016285(n)` -/
def P7520026999335757525.Spec : Prop :=
  ∀ n, P7520026999335757525.a n = A019613 n

end A019613

/-! ## A019613.P5991081057719349542

`2*A019623(n)-A019687(n)`
-/

namespace A019613.P5991081057719349542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A019623 n - A019687 n

end

end A019613.P5991081057719349542

namespace A019613

/-- `2*A019623(n)-A019687(n)` -/
def P5991081057719349542.Spec : Prop :=
  ∀ n, P5991081057719349542.a n = A019613 n

end A019613

/-!
# A019618: Expansion of 1/((1-4*x)*(1-7*x)*(1-10*x)).

The programs for A019618, the canonical program `A019618.P16205834622629129256` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A019618 has offset 0).

The definition of A019618 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A019618.P16205834622629129256

`17*a(n-1)-70*a(n-2)+4^n` with `a(0)=1, a(1)=21`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A019618

/-- `17*a(n-1)-70*a(n-2)+4^n` -/
def P16205834622629129256.Spec : Prop :=
  ∀ n, P16205834622629129256.a n = A019618 n

theorem P16205834622629129256.correct : P16205834622629129256.Spec := by
  intro n
  simp only [A019618]

end A019618

/-! ## A019618.P10163142430027564740

`(2*4^(n+1)-7^(n+2)+5*10^(n+1))/9`
-/

namespace A019618.P10163142430027564740
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 * 4 ^ (n + 1) : ℤ) - (7 ^ (n + 2) : ℤ) + (5 * 10 ^ (n + 1) : ℤ) : ℚ) / 9

end

end A019618.P10163142430027564740

namespace A019618

/-- `(2*4^(n+1)-7^(n+2)+5*10^(n+1))/9` -/
def P10163142430027564740.Spec : Prop :=
  ∀ n, P10163142430027564740.a n = (A019618 n : ℚ)

theorem P10163142430027564740.correct : P10163142430027564740.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A019618, Nat.add_sub_cancel, A019618.P10163142430027564740.a, A019618.P16205834622629129256.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A019618, Nat.add_sub_cancel, A019618.P10163142430027564740.a, A019618.P16205834622629129256.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A019618

/-! ## A019618.P10448145628977143139

`A016181(n)+4*a(n-1)` with `a(0)=1`
-/

namespace A019618.P10448145628977143139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A016181 n + 4 * a (n - 1)

end

end A019618.P10448145628977143139

namespace A019618

/-- `A016181(n)+4*a(n-1)` -/
def P10448145628977143139.Spec : Prop :=
  ∀ n, P10448145628977143139.a n = A019618 n

end A019618

/-! ## A019618.P12539735868867352234

`7*a(n-1)+A016157(n)` with `a(0)=1`
-/

namespace A019618.P12539735868867352234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  7 * a (n - 1) + A016157 n

end

end A019618.P12539735868867352234

namespace A019618

/-- `7*a(n-1)+A016157(n)` -/
def P12539735868867352234.Spec : Prop :=
  ∀ n, P12539735868867352234.a n = A019618 n

end A019618

/-! ## A019618.P12022274561077809554

`2*A016252(n)-A016225(n)`
-/

namespace A019618.P12022274561077809554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A016252 n - A016225 n

end

end A019618.P12022274561077809554

namespace A019618

/-- `2*A016252(n)-A016225(n)` -/
def P12022274561077809554.Spec : Prop :=
  ∀ n, P12022274561077809554.a n = A019618 n

end A019618

/-!
# A019623: Expansion of 1/((1-4*x)*(1-7*x)*(1-11*x)).

The programs for A019623, the canonical program `A019623.P16051018784221998972` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A019623 has offset 0).

The definition of A019623 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A019623.P16051018784221998972

`18*a(n-1)-77*a(n-2)+4^n` with `a(0)=1, a(1)=22`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A019623

/-- `18*a(n-1)-77*a(n-2)+4^n` -/
def P16051018784221998972.Spec : Prop :=
  ∀ n, P16051018784221998972.a n = A019623 n

theorem P16051018784221998972.correct : P16051018784221998972.Spec := by
  intro n
  simp only [A019623]

end A019623

/-! ## A019623.P299108170966294561

`A016158(n)+7*a(n-1)` with `a(0)=1`
-/

namespace A019623.P299108170966294561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A016158 n + 7 * a (n - 1)

end

end A019623.P299108170966294561

namespace A019623

/-- `A016158(n)+7*a(n-1)` -/
def P299108170966294561.Spec : Prop :=
  ∀ n, P299108170966294561.a n = A019623 n

end A019623

/-! ## A019623.P1552826236598900196

`A016150(n)+11*a(n-1)` with `a(0)=1`
-/

namespace A019623.P1552826236598900196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A016150 n + 11 * a (n - 1)

end

end A019623.P1552826236598900196

namespace A019623

/-- `A016150(n)+11*a(n-1)` -/
def P1552826236598900196.Spec : Prop :=
  ∀ n, P1552826236598900196.a n = A019623 n

end A019623

/-! ## A019623.P133519176808581327

`2*A016254(n)-A016226(n)`
-/

namespace A019623.P133519176808581327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A016254 n - A016226 n

end

end A019623.P133519176808581327

namespace A019623

/-- `2*A016254(n)-A016226(n)` -/
def P133519176808581327.Spec : Prop :=
  ∀ n, P133519176808581327.a n = A019623 n

end A019623

/-! ## A019623.P14949057758635019806

`(A019687(n)+A019613(n))/2`
-/

namespace A019623.P14949057758635019806
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A019687 n + A019613 n : ℚ) / 2

end

end A019623.P14949057758635019806

namespace A019623

/-- `(A019687(n)+A019613(n))/2` -/
def P14949057758635019806.Spec : Prop :=
  ∀ n, P14949057758635019806.a n = (A019623 n : ℚ)

end A019623

/-!
# A019628: Expansion of 1/((1-4*x)*(1-7*x)*(1-12*x)).

The programs for A019628, the canonical program `A019628.P2074264496398320172` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A019628 has offset 0).

The definition of A019628 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A019628.P2074264496398320172

`19*a(n-1)-84*a(n-2)+4^n` with `a(0)=1, a(1)=23`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A019628

/-- `19*a(n-1)-84*a(n-2)+4^n` -/
def P2074264496398320172.Spec : Prop :=
  ∀ n, P2074264496398320172.a n = A019628 n

theorem P2074264496398320172.correct : P2074264496398320172.Spec := by
  intro n
  simp only [A019628]

end A019628

/-! ## A019628.P9361222590896643029

`A016184(n)+4*a(n-1)` with `a(0)=1`
-/

namespace A019628.P9361222590896643029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A016184 n + 4 * a (n - 1)

end

end A019628.P9361222590896643029

namespace A019628

/-- `A016184(n)+4*a(n-1)` -/
def P9361222590896643029.Spec : Prop :=
  ∀ n, P9361222590896643029.a n = A019628 n

end A019628

/-! ## A019628.P1719295809020476147

`A016159(n)+7*a(n-1)` with `a(0)=1`
-/

namespace A019628.P1719295809020476147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A016159 n + 7 * a (n - 1)

end

end A019628.P1719295809020476147

namespace A019628

/-- `A016159(n)+7*a(n-1)` -/
def P1719295809020476147.Spec : Prop :=
  ∀ n, P1719295809020476147.a n = A019628 n

end A019628

/-! ## A019628.P2721544788235195029

`A016150(n)+13*a(n-1)-a(n-1)` with `a(0)=1`
-/

namespace A019628.P2721544788235195029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A016150 n + 13 * a (n - 1) - a (n - 1)

end

end A019628.P2721544788235195029

namespace A019628

/-- `A016150(n)+13*a(n-1)-a(n-1)` -/
def P2721544788235195029.Spec : Prop :=
  ∀ n, P2721544788235195029.a n = A019628 n

end A019628

/-! ## A019628.P8795953527288768771

`2*A016294(n)-A016285(n)`
-/

namespace A019628.P8795953527288768771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A016294 n - A016285 n

end

end A019628.P8795953527288768771

namespace A019628

/-- `2*A016294(n)-A016285(n)` -/
def P8795953527288768771.Spec : Prop :=
  ∀ n, P8795953527288768771.a n = A019628 n

end A019628

/-! ## A019628.P3551344827226994221

`A016255(n)+A016255(n)-A016227(n)`
-/

namespace A019628.P3551344827226994221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016255 n + (A016255 n - A016227 n)

end

end A019628.P3551344827226994221

namespace A019628

/-- `A016255(n)+A016255(n)-A016227(n)` -/
def P3551344827226994221.Spec : Prop :=
  ∀ n, P3551344827226994221.a n = A019628 n

end A019628

/-! ## A019628.P12800763377558312669

`2*A016255(n)-A016227(n)`
-/

namespace A019628.P12800763377558312669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A016255 n - A016227 n

end

end A019628.P12800763377558312669

namespace A019628

/-- `2*A016255(n)-A016227(n)` -/
def P12800763377558312669.Spec : Prop :=
  ∀ n, P12800763377558312669.a n = A019628 n

end A019628

/-!
# A019645: Decimal expansion of sqrt(Pi*e).

The programs for A019645, there is no canonical definition to state claims against.
-/

/-! ## A019645.P16350019195999203080

`A074916(n)-A074917(n)`
-/

namespace A019645.P16350019195999203080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074916 (n + 1) - A074917 (n + 1)

end

end A019645.P16350019195999203080

/-!
# A019664: Expansion of 1/((1-4x)(1-8x)(1-9x)).

The programs for A019664, the canonical program `A019664.P15122626023031465653` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A019664 has offset 0).

The definition of A019664 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A019664.P15122626023031465653

`17*a(n-1)-72*a(n-2)+4^n` with `a(0)=1, a(1)=21`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A019664

/-- `17*a(n-1)-72*a(n-2)+4^n` -/
def P15122626023031465653.Spec : Prop :=
  ∀ n, P15122626023031465653.a n = A019664 n

theorem P15122626023031465653.correct : P15122626023031465653.Spec := by
  intro n
  simp only [A019664]

end A019664

/-! ## A019664.P7669838448601351457

`8*a(n-1)+A016152(n+1)+a(n-1)` with `a(0)=1`
-/

namespace A019664.P7669838448601351457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  8 * a (n - 1) + (A016152 (n + 1) + a (n - 1))

end

end A019664.P7669838448601351457

namespace A019664

/-- `8*a(n-1)+A016152(n+1)+a(n-1)` -/
def P7669838448601351457.Spec : Prop :=
  ∀ n, P7669838448601351457.a n = A019664 n

end A019664

/-! ## A019664.P10451529008001613984

`A016153(n+2)-A016152(n+2)`
-/

namespace A019664.P10451529008001613984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016153 (n + 2) - A016152 (n + 2)

end

end A019664.P10451529008001613984

namespace A019664

/-- `A016153(n+2)-A016152(n+2)` -/
def P10451529008001613984.Spec : Prop :=
  ∀ n, P10451529008001613984.a n = A019664 n

end A019664

/-! ## A019664.P4787534352007274350

`2*A016185(n+1)-A016153(n+1)`
-/

namespace A019664.P4787534352007274350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A016185 (n + 1) - A016153 (n + 1)

end

end A019664.P4787534352007274350

namespace A019664

/-- `2*A016185(n+1)-A016153(n+1)` -/
def P4787534352007274350.Spec : Prop :=
  ∀ n, P4787534352007274350.a n = A019664 n

end A019664

/-! ## A019664.P226704546582173938

`2*A019671(n)-A019682(n)`
-/

namespace A019664.P226704546582173938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A019671 n - A019682 n

end

end A019664.P226704546582173938

namespace A019664

/-- `2*A019671(n)-A019682(n)` -/
def P226704546582173938.Spec : Prop :=
  ∀ n, P226704546582173938.a n = A019664 n

end A019664

/-! ## A019664.P15300671883916710311

`2*A019722(n)-A020978(n)`
-/

namespace A019664.P15300671883916710311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A019722 n - A020978 n

end

end A019664.P15300671883916710311

namespace A019664

/-- `2*A019722(n)-A020978(n)` -/
def P15300671883916710311.Spec : Prop :=
  ∀ n, P15300671883916710311.a n = A019664 n

end A019664

/-!
# A019671: Expansion of 1/((1-4x)(1-8x)(1-10x)).

The programs for A019671, the canonical program `A019671.P12193430180649729118` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A019671 has offset 0).

The definition of A019671 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A019671.P12193430180649729118

`18*a(n-1)-80*a(n-2)+4^n` with `a(0)=1, a(1)=22`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A019671

/-- `18*a(n-1)-80*a(n-2)+4^n` -/
def P12193430180649729118.Spec : Prop :=
  ∀ n, P12193430180649729118.a n = A019671 n

theorem P12193430180649729118.correct : P12193430180649729118.Spec := by
  intro n
  simp only [A019671]

end A019671

/-! ## A019671.P760167888032213597

`2^n*A016282(n)`
-/

namespace A019671.P760167888032213597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A016282 n

end

end A019671.P760167888032213597

namespace A019671

/-- `2^n*A016282(n)` -/
def P760167888032213597.Spec : Prop :=
  ∀ n, P760167888032213597.a n = A019671 n

end A019671

/-! ## A019671.P11874985480314964229

`A016157(n)+8*a(n-1)` with `a(0)=1`
-/

namespace A019671.P11874985480314964229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A016157 n + 8 * a (n - 1)

end

end A019671.P11874985480314964229

namespace A019671

/-- `A016157(n)+8*a(n-1)` -/
def P11874985480314964229.Spec : Prop :=
  ∀ n, P11874985480314964229.a n = A019671 n

end A019671

/-! ## A019671.P15556084313018423334

`A016152(n+1)+10*a(n-1)` with `a(0)=1`
-/

namespace A019671.P15556084313018423334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A016152 (n + 1) + 10 * a (n - 1)

end

end A019671.P15556084313018423334

namespace A019671

/-- `A016152(n+1)+10*a(n-1)` -/
def P15556084313018423334.Spec : Prop :=
  ∀ n, P15556084313018423334.a n = A019671 n

end A019671

/-! ## A019671.P12884498479367264217

`lcm(record[A077957(n)], A016282(n))`
-/

namespace A019671.P12884498479367264217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077957 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A016282 n)

end

end A019671.P12884498479367264217

namespace A019671

/-- `lcm(record[A077957(n)], A016282(n))` -/
def P12884498479367264217.Spec : Prop :=
  ∀ n, (P12884498479367264217.a n : ℤ) = A019671 n

end A019671

/-! ## A019671.P11024452249031171321

`A016282(n)*A077957(2*n)`
-/

namespace A019671.P11024452249031171321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016282 n * A077957 (2 * n)

end

end A019671.P11024452249031171321

namespace A019671

/-- `A016282(n)*A077957(2*n)` -/
def P11024452249031171321.Spec : Prop :=
  ∀ n, P11024452249031171321.a n = A019671 n

end A019671

/-!
# A019672: Expansion of 1/((1-4x)(1-8x)(1-11x)).

The programs for A019672, the canonical program `A019672.P9743396269094188032` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A019672 has offset 0).

The definition of A019672 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A019672.P9743396269094188032

`19*a(n-1)-88*a(n-2)+4^n` with `a(0)=1, a(1)=23`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A019672

/-- `19*a(n-1)-88*a(n-2)+4^n` -/
def P9743396269094188032.Spec : Prop :=
  ∀ n, P9743396269094188032.a n = A019672 n

theorem P9743396269094188032.correct : P9743396269094188032.Spec := by
  intro n
  simp only [A019672]

end A019672

/-! ## A019672.P4464242566016842487

`a(n-1)+A016187(n)+3*a(n-1)` with `a(0)=1`
-/

namespace A019672.P4464242566016842487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A016187 n + 3 * a (n - 1))

end

end A019672.P4464242566016842487

namespace A019672

/-- `a(n-1)+A016187(n)+3*a(n-1)` -/
def P4464242566016842487.Spec : Prop :=
  ∀ n, P4464242566016842487.a n = A019672 n

end A019672

/-! ## A019672.P16111175148701632593

`a(n-1)+3*a(n-1)+A139746(n+1)/3` with `a(0)=1`
-/

namespace A019672.P16111175148701632593
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (3 * a (n - 1) + (A139746 (n + 1) : ℚ) / 3)

end

end A019672.P16111175148701632593

namespace A019672

/-- `a(n-1)+3*a(n-1)+A139746(n+1)/3` -/
def P16111175148701632593.Spec : Prop :=
  ∀ n, P16111175148701632593.a n = (A019672 n : ℚ)

end A019672

/-! ## A019672.P10855852647410553328

`2*A019752(n)-A020981(n)`
-/

namespace A019672.P10855852647410553328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A019752 n - A020981 n

end

end A019672.P10855852647410553328

namespace A019672

/-- `2*A019752(n)-A020981(n)` -/
def P10855852647410553328.Spec : Prop :=
  ∀ n, P10855852647410553328.a n = A019672 n

end A019672

/-! ## A019672.P13796868490995152750

`A019752(n)+A020981(n)-A028160(n)`
-/

namespace A019672.P13796868490995152750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019752 n + (A020981 n - A028160 n)

end

end A019672.P13796868490995152750

namespace A019672

/-- `A019752(n)+A020981(n)-A028160(n)` -/
def P13796868490995152750.Spec : Prop :=
  ∀ n, P13796868490995152750.a n = A019672 n

end A019672

/-!
# A019673: Decimal expansion of Pi/6.

The programs for A019673, there is no canonical definition to state claims against.
-/

/-! ## A019673.P16712522067777808155

`9-A228715(n)`
-/

namespace A019673.P16712522067777808155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A228715 n

end

end A019673.P16712522067777808155

/-!
# A019677: Expansion of 1/((1-4x)(1-8x)(1-12x)).

The programs for A019677, the canonical program `A019677.P16679642819922517696` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A019677 has offset 0).

The definition of A019677 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A019677.P9548686817391362904

`(4^n-8*8^n+9*12^n)/2`
-/

namespace A019677.P9548686817391362904
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((4 ^ n : ℤ) - (8 * 8 ^ n : ℤ) + (9 * 12 ^ n : ℤ) : ℚ) / 2

end

end A019677.P9548686817391362904

namespace A019677

/-- `(4^n-8*8^n+9*12^n)/2` -/
def P9548686817391362904.Spec : Prop :=
  ∀ n, P9548686817391362904.a n = (A019677 n : ℚ)

theorem P9548686817391362904.correct : P9548686817391362904.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A019677, Nat.add_sub_cancel, A019677.P9548686817391362904.a, A019677.P16679642819922517696.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A019677, Nat.add_sub_cancel, A019677.P9548686817391362904.a, A019677.P16679642819922517696.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [← h1, ← h2, ← h3]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A019677

/-! ## A019677.P16679642819922517696

`24*a(n-1)-176*a(n-2)+384*a(n-3)` with `a(0)=1, a(1)=24, a(2)=400`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A019677

/-- `24*a(n-1)-176*a(n-2)+384*a(n-3)` -/
def P16679642819922517696.Spec : Prop :=
  ∀ n, P16679642819922517696.a n = A019677 n

theorem P16679642819922517696.correct : P16679642819922517696.Spec := by
  intro n
  simp only [A019677]

end A019677

/-! ## A019677.P3372979673156868494

`4^n*A000392(n+3)`
-/

namespace A019677.P3372979673156868494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 ^ n : ℤ) * A000392 (n + 3)

end

end A019677.P3372979673156868494

namespace A019677

/-- `4^n*A000392(n+3)` -/
def P3372979673156868494.Spec : Prop :=
  ∀ n, P3372979673156868494.a n = A019677 n

end A019677

/-! ## A019677.P12067654745597844540

`∑[∑[A027649(n)]]*4^n`
-/

namespace A019677.P12067654745597844540
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027649 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (4 ^ n : ℤ)

end

end A019677.P12067654745597844540

namespace A019677

/-- `∑[∑[A027649(n)]]*4^n` -/
def P12067654745597844540.Spec : Prop :=
  ∀ n, P12067654745597844540.a n = A019677 n

end A019677

/-! ## A019677.P12732714225576513576

`4^n*∑[A001047(n+1)]`
-/

namespace A019677.P12732714225576513576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001047 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 ^ n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A019677.P12732714225576513576

namespace A019677

/-- `4^n*∑[A001047(n+1)]` -/
def P12732714225576513576.Spec : Prop :=
  ∀ n, P12732714225576513576.a n = A019677 n

end A019677

/-! ## A019677.P8618201944610118502

`A000079(n)*A016283(n+2)`
-/

namespace A019677.P8618201944610118502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n * A016283 (n + 2)

end

end A019677.P8618201944610118502

namespace A019677

/-- `A000079(n)*A016283(n+2)` -/
def P8618201944610118502.Spec : Prop :=
  ∀ n, P8618201944610118502.a n = A019677 n

end A019677

/-! ## A019677.P15856152271190674402

`A000079(n)²*∑[∑[A027649(n)]]`
-/

namespace A019677.P15856152271190674402
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027649 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n ^ 2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A019677.P15856152271190674402

namespace A019677

/-- `A000079(n)²*∑[∑[A027649(n)]]` -/
def P15856152271190674402.Spec : Prop :=
  ∀ n, P15856152271190674402.a n = A019677 n

end A019677

/-! ## A019677.P5791372667314519691

`A122803(n)²*∑[∑[A027649(n)]]`
-/

namespace A019677.P5791372667314519691
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027649 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122803 n ^ 2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A019677.P5791372667314519691

namespace A019677

/-- `A122803(n)²*∑[∑[A027649(n)]]` -/
def P5791372667314519691.Spec : Prop :=
  ∀ n, P5791372667314519691.a n = A019677 n

end A019677

/-! ## A019677.P2927825215012036152

`∑[A001047(n+1)]*A000079(n)²`
-/

namespace A019677.P2927825215012036152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001047 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A000079 n ^ 2

end

end A019677.P2927825215012036152

namespace A019677

/-- `∑[A001047(n+1)]*A000079(n)²` -/
def P2927825215012036152.Spec : Prop :=
  ∀ n, P2927825215012036152.a n = A019677 n

end A019677

/-! ## A019677.P4753774290242928360

`∑[A001047(n+1)]*A000079(2*n)`
-/

namespace A019677.P4753774290242928360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001047 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A000079 (2 * n)

end

end A019677.P4753774290242928360

namespace A019677

/-- `∑[A001047(n+1)]*A000079(2*n)` -/
def P4753774290242928360.Spec : Prop :=
  ∀ n, P4753774290242928360.a n = A019677 n

end A019677

/-!
# A019682: Expansion of 1/((1-4*x)*(1-9*x)*(1-10*x)).

The programs for A019682, the canonical program `A019682.P3324349732116862997` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A019682 has offset 0).

The definition of A019682 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A019682.P3324349732116862997

`19*a(n-1)-90*a(n-2)+4^n` with `a(0)=1, a(1)=23`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A019682

/-- `19*a(n-1)-90*a(n-2)+4^n` -/
def P3324349732116862997.Spec : Prop :=
  ∀ n, P3324349732116862997.a n = A019682 n

theorem P3324349732116862997.correct : P3324349732116862997.Spec := by
  intro n
  simp only [A019682]

end A019682

/-! ## A019682.P2900266695007904281

`2*A019671(n)-A019664(n)`
-/

namespace A019682.P2900266695007904281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A019671 n - A019664 n

end

end A019682.P2900266695007904281

namespace A019682

/-- `2*A019671(n)-A019664(n)` -/
def P2900266695007904281.Spec : Prop :=
  ∀ n, P2900266695007904281.a n = A019682 n

end A019682

/-! ## A019682.P614084252173474259

`(A020970(n)+A019613(n))/2`
-/

namespace A019682.P614084252173474259
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020970 n + A019613 n : ℚ) / 2

end

end A019682.P614084252173474259

namespace A019682

/-- `(A020970(n)+A019613(n))/2` -/
def P614084252173474259.Spec : Prop :=
  ∀ n, P614084252173474259.a n = (A019682 n : ℚ)

end A019682

/-! ## A019682.P17026787417235110983

`A016157(n+1)-A016153(n+2)`
-/

namespace A019682.P17026787417235110983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016157 (n + 1) - A016153 (n + 2)

end

end A019682.P17026787417235110983

namespace A019682

/-- `A016157(n+1)-A016153(n+2)` -/
def P17026787417235110983.Spec : Prop :=
  ∀ n, P17026787417235110983.a n = A019682 n

end A019682

/-! ## A019682.P8236724635356927386

`(A019613(n)+Δ[A016252(n)-A016250(n)])/2`
-/

namespace A019682.P8236724635356927386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016252 n - A016250 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A019613 n + (f1 (n + 1) - f1 n) : ℚ) / 2

end

end A019682.P8236724635356927386

namespace A019682

/-- `(A019613(n)+Δ[A016252(n)-A016250(n)])/2` -/
def P8236724635356927386.Spec : Prop :=
  ∀ n, P8236724635356927386.a n = (A019682 n : ℚ)

end A019682

/-! ## A019682.P2269600181884427477

`2*A019687(n)-A019742(n)`
-/

namespace A019682.P2269600181884427477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A019687 n - A019742 n

end

end A019682.P2269600181884427477

namespace A019682

/-- `2*A019687(n)-A019742(n)` -/
def P2269600181884427477.Spec : Prop :=
  ∀ n, P2269600181884427477.a n = A019682 n

end A019682

/-!
# A019687: Expansion of 1/((1-4x)(1-9x)(1-11x)).

The programs for A019687, the canonical program `A019687.P17922009008950822254` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A019687 has offset 0).

The definition of A019687 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A019687.P17922009008950822254

`20*a(n-1)-99*a(n-2)+4^n` with `a(0)=1, a(1)=24`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A019687

/-- `20*a(n-1)-99*a(n-2)+4^n` -/
def P17922009008950822254.Spec : Prop :=
  ∀ n, P17922009008950822254.a n = A019687 n

theorem P17922009008950822254.correct : P17922009008950822254.Spec := by
  intro n
  simp only [A019687]

end A019687

/-! ## A019687.P143324494687401751

`A016190(n)+4*a(n-1)` with `a(0)=1`
-/

namespace A019687.P143324494687401751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A016190 n + 4 * a (n - 1)

end

end A019687.P143324494687401751

namespace A019687

/-- `A016190(n)+4*a(n-1)` -/
def P143324494687401751.Spec : Prop :=
  ∀ n, P143324494687401751.a n = A019687 n

end A019687

/-! ## A019687.P12316593567993217567

`2*A019623(n)-A019613(n)`
-/

namespace A019687.P12316593567993217567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A019623 n - A019613 n

end

end A019687.P12316593567993217567

namespace A019687

/-- `2*A019623(n)-A019613(n)` -/
def P12316593567993217567.Spec : Prop :=
  ∀ n, P12316593567993217567.a n = A019687 n

end A019687

/-! ## A019687.P10569153267317019588

`(A019742(n)+A019682(n))/2`
-/

namespace A019687.P10569153267317019588
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A019742 n + A019682 n : ℚ) / 2

end

end A019687.P10569153267317019588

namespace A019687

/-- `(A019742(n)+A019682(n))/2` -/
def P10569153267317019588.Spec : Prop :=
  ∀ n, P10569153267317019588.a n = (A019687 n : ℚ)

end A019687

/-! ## A019687.P16447319711122336820

`(A019742(n)+A019682(n))*2^A321804(A007318(n))`
-/

namespace A019687.P16447319711122336820
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A019742 n + A019682 n : ℚ) * (2 : ℚ) ^ (A321804 (A007318 n).toNat : ℤ)

end

end A019687.P16447319711122336820

namespace A019687

/-- `(A019742(n)+A019682(n))*2^A321804(A007318(n))` -/
def P16447319711122336820.Spec : Prop :=
  ∀ n, P16447319711122336820.a n = (A019687 n : ℚ)

end A019687

/-!
# A019692: Decimal expansion of 2*Pi.

The programs for A019692, there is no canonical definition to state claims against.
-/

/-! ## A019692.P16259298549452164002

`A002266(Δ[A059582(n+1)+10*A059582(n)])%10`
-/

namespace A019692.P16259298549452164002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059582 (n + 1) + 10 * A059582 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002266 (f1 (n + 1) - f1 n).toNat) 10

end

end A019692.P16259298549452164002

/-! ## A019692.P13781919165650331047

`A155481(n)+A000796(n)`
-/

namespace A019692.P13781919165650331047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155481 n + A000796 (n + 1)

end

end A019692.P13781919165650331047

/-! ## A019692.P15771150250585497948

`A155481(n)+Δ[A059582(n)]`
-/

namespace A019692.P15771150250585497948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059582 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155481 n + (f1 (n + 1) - f1 n)

end

end A019692.P15771150250585497948

/-! ## A019692.P15914063112710933410

`A155481(n)+9-A030644(n)`
-/

namespace A019692.P15914063112710933410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155481 n + (9 - A030644 (n + 1))

end

end A019692.P15914063112710933410

/-! ## A019692.P11950757953662966494

`A155481(n)+A001355(Δ[n²])`
-/

namespace A019692.P11950757953662966494
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155481 n + A001355 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A019692.P11950757953662966494

/-! ## A019692.P14599443623397916340

`A155481(n)+A110766(Δ[n²])`
-/

namespace A019692.P14599443623397916340
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155481 n + A110766 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A019692.P14599443623397916340

/-! ## A019692.P10420292275151792648

`A123152(n+1)+A155481(n)-1`
-/

namespace A019692.P10420292275151792648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123152 (n + 1) + (A155481 n - 1)

end

end A019692.P10420292275151792648

/-! ## A019692.P2195079114043195690

`A155481(n)+A065253(n+1)%10`
-/

namespace A019692.P2195079114043195690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155481 n + Int.tmod (A065253 (n + 1)) 10

end

end A019692.P2195079114043195690

/-! ## A019692.P10231695462290492697

`A010879(A155481(n)+A065253(n+1))`
-/

namespace A019692.P10231695462290492697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 (A155481 n + A065253 (n + 1)).toNat

end

end A019692.P10231695462290492697

/-! ## A019692.P13209304724584313099

`A002266(A107114(n+1))%10`
-/

namespace A019692.P13209304724584313099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002266 (A107114 (n + 1)).toNat) 10

end

end A019692.P13209304724584313099

