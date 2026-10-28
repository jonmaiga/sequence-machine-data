import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
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
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C041
import Seq.B000.C043
import Seq.B000.C045
import Seq.B000.C049
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
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C007
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
# A036202: Log base 2 (n) mod 211.

The programs for A036202, there is no canonical definition to state claims against.
-/

/-! ## A036202.P4169611034707641347

`or(A114061(A013615(n)), A116942(n))`
-/

namespace A036202.P4169611034707641347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A114061 (A013615 n).toNat) (A116942 n)

end

end A036202.P4169611034707641347

/-!
# A036211: Successive digits of even numbers.

The programs for A036211, there is no canonical definition to state claims against.
-/

/-! ## A036211.P3612480526152962124

`A031312(n+1)-A277929(A195207(n))`
-/

namespace A036211.P3612480526152962124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031312 (n + 1) - A277929 (A195207 n).toNat

end

end A036211.P3612480526152962124

/-! ## A036211.P3891435720006632638

`A031312(n+1)-A036987(A195207(n)²)`
-/

namespace A036211.P3891435720006632638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031312 (n + 1) - A036987 (A195207 n ^ 2).toNat

end

end A036211.P3891435720006632638

/-! ## A036211.P607259112780585995

`A031312(n+1)-A294935(A164073(n+1))`
-/

namespace A036211.P607259112780585995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031312 (n + 1) - A294935 (A164073 (n + 1)).toNat

end

end A036211.P607259112780585995

/-!
# A036212: When the 'Summarize preceding term' sequence gets into a cycle.

The programs for A036212, there is no canonical definition to state claims against.
-/

/-! ## A036212.P17128738922921300019

`A103618(n+1)+1`
-/

namespace A036212.P17128738922921300019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103618 (n + 1) + 1

end

end A036212.P17128738922921300019

/-! ## A036212.P9626318606641750560

`A348553(A103618(n+1))`
-/

namespace A036212.P9626318606641750560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348553 (A103618 (n + 1)).toNat

end

end A036212.P9626318606641750560

/-! ## A036212.P5641907695989880107

`A308781(n)+1`
-/

namespace A036212.P5641907695989880107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308781 n + 1

end

end A036212.P5641907695989880107

/-! ## A036212.P16001139192714029693

`A005496(A308781(n))`
-/

namespace A036212.P16001139192714029693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005496 (A308781 n).toNat

end

end A036212.P16001139192714029693

/-! ## A036212.P7382800647559638060

`A008619(2*A308781(n))`
-/

namespace A036212.P7382800647559638060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * A308781 n).toNat

end

end A036212.P7382800647559638060

/-! ## A036212.P17787215459412432289

`A028242(2*A308781(n))`
-/

namespace A036212.P17787215459412432289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (2 * A308781 n).toNat

end

end A036212.P17787215459412432289

/-! ## A036212.P14676075573813466698

`A008611(3*A308781(n))`
-/

namespace A036212.P14676075573813466698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (3 * A308781 n).toNat

end

end A036212.P14676075573813466698

/-! ## A036212.P7439123497734160015

`A008612(6*A308781(n))`
-/

namespace A036212.P7439123497734160015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008612 (6 * A308781 n).toNat

end

end A036212.P7439123497734160015

/-! ## A036212.P15932624682376747531

`A000005(2^A308781(n))`
-/

namespace A036212.P15932624682376747531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A308781 n : ℤ))).toNat

end

end A036212.P15932624682376747531

/-! ## A036212.P6452980528829160291

`A000463(or(1, 2*A308781(n)))`
-/

namespace A036212.P6452980528829160291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (Int.lor 1 (2 * A308781 n)).toNat

end

end A036212.P6452980528829160291

/-! ## A036212.P2175828183367131393

`A000463(xor(1, 2*A308781(n)))`
-/

namespace A036212.P2175828183367131393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (Int.xor 1 (2 * A308781 n)).toNat

end

end A036212.P2175828183367131393

/-! ## A036212.P8139497858491490432

`∑{d}[2^A308781(n), A000041(C(2, 3*#))]`
-/

namespace A036212.P8139497858491490432
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A308781 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f1 n)).natAbs, A000041 (Nat.choose 2 (3 * d))

end

end A036212.P8139497858491490432

/-! ## A036212.P4865851019514059884

`2-(A007318(∑[(-1)^n])-A308781(n))`
-/

namespace A036212.P4865851019514059884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (A007318 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - A308781 n)

end

end A036212.P4865851019514059884

/-! ## A036212.P11359133153712591080

`A005555(2*A308781(n)-A308781(n))`
-/

namespace A036212.P11359133153712591080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005555 (2 * A308781 n - A308781 n).toNat

end

end A036212.P11359133153712591080

/-!
# A036213: Duplicating binary multipliers; i.e., n+1 1-bits placed 2n bits from each other.

The programs for A036213, there is no canonical definition to state claims against.
-/

/-! ## A036213.P11737910502926568779

`∑{#}[n, 4^(#*n)]`
-/

namespace A036213.P11737910502926568779
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), 4 ^ (k * n)

end

end A036213.P11737910502926568779

/-! ## A036213.P15590473931018453190

`∑{d}[2^n, (#^n)²]`
-/

namespace A036213.P15590473931018453190
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d ^ n) ^ 2

end

end A036213.P15590473931018453190

/-! ## A036213.P10478851172765488090

`A095121(A194274(2*n))/A095121(2*n)`
-/

namespace A036213.P10478851172765488090
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A095121 (A194274 (2 * n)).toNat : ℚ) / (A095121 (2 * n) : ℚ)

end

end A036213.P10478851172765488090

/-!
# A036215: Binary reversal of 3^n.

The programs for A036215, the canonical program `A036215.P9235640545465369973` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A036215 has offset 0).

The definition of A036215 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A030101, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A036215.P9235640545465369973

`A030101(A000244(n))`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A036215

/-- `A030101(A000244(n))` -/
def P9235640545465369973.Spec : Prop :=
  ∀ n, P9235640545465369973.a n = A036215 n

theorem P9235640545465369973.correct : P9235640545465369973.Spec := by
  intro n
  simp only [A036215]

end A036215

/-! ## A036215.P16303505443261635151

`A161955(3^n)`
-/

namespace A036215.P16303505443261635151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161955 (3 ^ n)

end

end A036215.P16303505443261635151

namespace A036215

/-- `A161955(3^n)` -/
def P16303505443261635151.Spec : Prop :=
  ∀ n, P16303505443261635151.a n = A036215 n

end A036215

/-! ## A036215.P15724003411782131724

`A145341(ceil(3^n/2))`
-/

namespace A036215.P15724003411782131724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145341 ⌈(3 ^ n : ℚ) / 2⌉.toNat

end

end A036215.P15724003411782131724

namespace A036215

/-- `A145341(ceil(3^n/2))` -/
def P15724003411782131724.Spec : Prop :=
  ∀ n, P15724003411782131724.a n = A036215 n

end A036215

/-! ## A036215.P5386372038344702876

`record[A161955(A000792(n))]`
-/

namespace A036215.P5386372038344702876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161955 (A000792 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A036215.P5386372038344702876

namespace A036215

/-- `record[A161955(A000792(n))]` -/
def P5386372038344702876.Spec : Prop :=
  ∀ n, P5386372038344702876.a n = A036215 n

end A036215

/-! ## A036215.P2588693006489422863

`record[A161955(A152714(n))]`
-/

namespace A036215.P2588693006489422863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161955 (A152714 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A036215.P2588693006489422863

namespace A036215

/-- `record[A161955(A152714(n))]` -/
def P2588693006489422863.Spec : Prop :=
  ∀ n, P2588693006489422863.a n = A036215 n

end A036215

/-!
# A036216: Expansion of 1/(1 - 3*x)^4; 4-fold convolution of A000244 (powers of 3).

The programs for A036216, the canonical program `A036216.P7951103676935185243` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A036216 has offset 0).

The definition of A036216 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A036216.P11995336039659735139

`3^n*C(n+3, 3)`
-/

namespace A036216.P11995336039659735139
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n * Nat.choose (n + 3) 3

end

end A036216.P11995336039659735139

namespace A036216

/-- `3^n*C(n+3, 3)` -/
def P11995336039659735139.Spec : Prop :=
  ∀ n, (P11995336039659735139.a n : ℤ) = A036216 n

end A036216

/-! ## A036216.P7951103676935185243

`12*a(n-1)-54*a(n-2)+108*a(n-3)-81*a(n-4)` with `a(0)=1, a(1)=12, a(2)=90, a(3)=540`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A036216

/-- `12*a(n-1)-54*a(n-2)+108*a(n-3)-81*a(n-4)` -/
def P7951103676935185243.Spec : Prop :=
  ∀ n, P7951103676935185243.a n = A036216 n

theorem P7951103676935185243.correct : P7951103676935185243.Spec := by
  intro n
  simp only [A036216]

end A036216

/-! ## A036216.P17213457194455901303

`3^n*∑[∑[n+1]]`
-/

namespace A036216.P17213457194455901303
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A036216.P17213457194455901303

namespace A036216

/-- `3^n*∑[∑[n+1]]` -/
def P17213457194455901303.Spec : Prop :=
  ∀ n, (P17213457194455901303.a n : ℤ) = A036216 n

end A036216

/-! ## A036216.P16053369545389670157

`C(n+3, 3)/3^-n`
-/

namespace A036216.P16053369545389670157
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 3) 3 : ℚ) / (3 : ℚ) ^ (-(n : ℤ) : ℤ)

end

end A036216.P16053369545389670157

namespace A036216

/-- `C(n+3, 3)/3^-n` -/
def P16053369545389670157.Spec : Prop :=
  ∀ n, P16053369545389670157.a n = (A036216 n : ℚ)

end A036216

/-! ## A036216.P5070488475903056094

`A058187(2*n)/3^-n`
-/

namespace A036216.P5070488475903056094
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A058187 (2 * n) : ℚ) / (3 : ℚ) ^ (-(n : ℤ) : ℤ)

end

end A036216.P5070488475903056094

namespace A036216

/-- `A058187(2*n)/3^-n` -/
def P5070488475903056094.Spec : Prop :=
  ∀ n, P5070488475903056094.a n = (A036216 n : ℚ)

end A036216

/-! ## A036216.P14370462406669128373

`A081914(n+3)-3^(n+3)`
-/

namespace A036216.P14370462406669128373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081914 (n + 3) - (3 ^ (n + 3) : ℤ)

end

end A036216.P14370462406669128373

namespace A036216

/-- `A081914(n+3)-3^(n+3)` -/
def P14370462406669128373.Spec : Prop :=
  ∀ n, P14370462406669128373.a n = A036216 n

end A036216

/-! ## A036216.P3715257457743999838

`ceil(3^(n-1)*A027480(n+1))`
-/

namespace A036216.P3715257457743999838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(3 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (A027480 (n + 1) : ℚ)⌉

end

end A036216.P3715257457743999838

namespace A036216

/-- `ceil(3^(n-1)*A027480(n+1))` -/
def P3715257457743999838.Spec : Prop :=
  ∀ n, P3715257457743999838.a n = A036216 n

end A036216

/-! ## A036216.P15776796145214173625

`∑[∑[n+1]]*Δ[A000244(n)]/2`
-/

namespace A036216.P15776796145214173625
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * (f3 (n + 1) - f3 n) : ℚ) / 2

end

end A036216.P15776796145214173625

namespace A036216

/-- `∑[∑[n+1]]*Δ[A000244(n)]/2` -/
def P15776796145214173625.Spec : Prop :=
  ∀ n, P15776796145214173625.a n = (A036216 n : ℚ)

end A036216

/-! ## A036216.P14929267588370010960

`A027472(n+3)+3*a(n-1)` with `a(0)=1`
-/

namespace A036216.P14929267588370010960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A027472 (n + 3) + 3 * a (n - 1)

end

end A036216.P14929267588370010960

namespace A036216

/-- `A027472(n+3)+3*a(n-1)` -/
def P14929267588370010960.Spec : Prop :=
  ∀ n, P14929267588370010960.a n = A036216 n

end A036216

/-! ## A036216.P12747855927622074009

`a(n-1)+A080421(n)+a(n-1)` with `a(0)=1`
-/

namespace A036216.P12747855927622074009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A080421 n + a (n - 1))

end

end A036216.P12747855927622074009

namespace A036216

/-- `a(n-1)+A080421(n)+a(n-1)` -/
def P12747855927622074009.Spec : Prop :=
  ∀ n, P12747855927622074009.a n = A036216 n

end A036216

/-! ## A036216.P16713816903043934707

`abs(3^n*A294085(2*n+1)-1)+1`
-/

namespace A036216.P16713816903043934707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(3 ^ n : ℤ) * A294085 (2 * n + 1) - 1| + 1

end

end A036216.P16713816903043934707

namespace A036216

/-- `abs(3^n*A294085(2*n+1)-1)+1` -/
def P16713816903043934707.Spec : Prop :=
  ∀ n, P16713816903043934707.a n = A036216 n

end A036216

/-! ## A036216.P17939001649768743361

`A000292(n+1)*A034472(n)-A000292(n+1)`
-/

namespace A036216.P17939001649768743361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (n + 1) * A034472 n - A000292 (n + 1)

end

end A036216.P17939001649768743361

namespace A036216

/-- `A000292(n+1)*A034472(n)-A000292(n+1)` -/
def P17939001649768743361.Spec : Prop :=
  ∀ n, P17939001649768743361.a n = A036216 n

end A036216

/-! ## A036216.P1532729077423541631

`A000124(n+1)*A006234(n+3)-A006234(n+3)`
-/

namespace A036216.P1532729077423541631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (n + 1) * A006234 (n + 3) - A006234 (n + 3)

end

end A036216.P1532729077423541631

namespace A036216

/-- `A000124(n+1)*A006234(n+3)-A006234(n+3)` -/
def P1532729077423541631.Spec : Prop :=
  ∀ n, P1532729077423541631.a n = A036216 n

end A036216

/-! ## A036216.P10176716030856819489

`A052791(n+3)/6`
-/

namespace A036216.P10176716030856819489
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052791 (n + 3) : ℚ) / 6

end

end A036216.P10176716030856819489

namespace A036216

/-- `A052791(n+3)/6` -/
def P10176716030856819489.Spec : Prop :=
  ∀ n, P10176716030856819489.a n = (A036216 n : ℚ)

end A036216

/-! ## A036216.P167306514092879211

`(n+3)*A027472(n+3)/3`
-/

namespace A036216.P167306514092879211
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 3 : ℤ) * A027472 (n + 3) : ℚ) / 3

end

end A036216.P167306514092879211

namespace A036216

/-- `(n+3)*A027472(n+3)/3` -/
def P167306514092879211.Spec : Prop :=
  ∀ n, P167306514092879211.a n = (A036216 n : ℚ)

end A036216

/-! ## A036216.P2248500516075161351

`3*(n+3)*a(n-1)/n` with `a(0)=1`
-/

namespace A036216.P2248500516075161351
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  3 * ((n + 3 : ℚ) * a (n - 1)) / (n : ℚ)

end

end A036216.P2248500516075161351

namespace A036216

/-- `3*(n+3)*a(n-1)/n` -/
def P2248500516075161351.Spec : Prop :=
  ∀ n, P2248500516075161351.a n = (A036216 n : ℚ)

end A036216

/-! ## A036216.P3527319392979781562

`A027465(A167614(n+2))`
-/

namespace A036216.P3527319392979781562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027465 (A167614 (n + 2)).toNat

end

end A036216.P3527319392979781562

namespace A036216

/-- `A027465(A167614(n+2))` -/
def P3527319392979781562.Spec : Prop :=
  ∀ n, P3527319392979781562.a n = A036216 n

end A036216

/-! ## A036216.P8123474548172013858

`A027465(eq[3, A002262(n)])`
-/

namespace A036216.P8123474548172013858
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027465 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A036216.P8123474548172013858

namespace A036216

/-- `A027465(eq[3, A002262(n)])` -/
def P8123474548172013858.Spec : Prop :=
  ∀ n, P8123474548172013858.a n = A036216 n

end A036216

/-! ## A036216.P5651854781512109621

`A027465(eq[2, A002260(n+1)-2])`
-/

namespace A036216.P5651854781512109621
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027465 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A036216.P5651854781512109621

namespace A036216

/-- `A027465(eq[2, A002260(n+1)-2])` -/
def P5651854781512109621.Spec : Prop :=
  ∀ n, P5651854781512109621.a n = A036216 n

end A036216

/-! ## A036216.P10167909142951462591

`A027465(eq[2, A002260(n+1)/2])`
-/

namespace A036216.P10167909142951462591
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002260 (n + 1) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027465 (SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n)

end

end A036216.P10167909142951462591

namespace A036216

/-- `A027465(eq[2, A002260(n+1)/2])` -/
def P10167909142951462591.Spec : Prop :=
  ∀ n, P10167909142951462591.a n = A036216 n

end A036216

/-!
# A036217: Expansion of 1/(1-3*x)^5; 5-fold convolution of A000244 (powers of 3).

The programs for A036217, the canonical program `A036217.P8966412653220585463` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A036217 has offset 0).

The definition of A036217 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A036217.P7249696245638610410

`3^n*C(n+4, 4)`
-/

namespace A036217.P7249696245638610410
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n * Nat.choose (n + 4) 4

end

end A036217.P7249696245638610410

namespace A036217

/-- `3^n*C(n+4, 4)` -/
def P7249696245638610410.Spec : Prop :=
  ∀ n, (P7249696245638610410.a n : ℤ) = A036217 n

theorem P7249696245638610410.correct : P7249696245638610410.Spec := by
  intro n
  simp only [A036217, Nat.add_sub_cancel, A036217.P7249696245638610410.a, A036217.P8966412653220585463.a, A000332, A000332.P5946310388023661265.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A036217

/-! ## A036217.P8966412653220585463

`3^n*A000332(n+4)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A036217

/-- `3^n*A000332(n+4)` -/
def P8966412653220585463.Spec : Prop :=
  ∀ n, P8966412653220585463.a n = A036217 n

theorem P8966412653220585463.correct : P8966412653220585463.Spec := by
  intro n
  simp only [A036217]

end A036217

/-! ## A036217.P16248739889493412627

`3^n*∑[∑[∑[n+1]]]`
-/

namespace A036217.P16248739889493412627
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A036217.P16248739889493412627

namespace A036217

/-- `3^n*∑[∑[∑[n+1]]]` -/
def P16248739889493412627.Spec : Prop :=
  ∀ n, (P16248739889493412627.a n : ℤ) = A036217 n

end A036217

/-! ## A036217.P8776290085392559737

`floor(3*(n+4)*a(n-1)/n)` with `a(0)=1`
-/

namespace A036217.P8776290085392559737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊3 * ((n + 4 : ℚ) * ((a (n - 1) : ℚ) / (n : ℚ)))⌋

end

end A036217.P8776290085392559737

namespace A036217

/-- `floor(3*(n+4)*a(n-1)/n)` -/
def P8776290085392559737.Spec : Prop :=
  ∀ n, P8776290085392559737.a n = A036217 n

end A036217

/-! ## A036217.P9077107041965130102

`a(n-1)+(12/n+2)*a(n-1)` with `a(0)=1`
-/

namespace A036217.P9077107041965130102
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (12 / (n : ℚ) + 2) * a (n - 1)

end

end A036217.P9077107041965130102

namespace A036217

/-- `a(n-1)+(12/n+2)*a(n-1)` -/
def P9077107041965130102.Spec : Prop :=
  ∀ n, P9077107041965130102.a n = (A036217 n : ℚ)

end A036217

/-! ## A036217.P13848053220105763172

`a(n-1)+A080422(n)+a(n-1)` with `a(0)=1`
-/

namespace A036217.P13848053220105763172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A080422 n + a (n - 1))

end

end A036217.P13848053220105763172

namespace A036217

/-- `a(n-1)+A080422(n)+a(n-1)` -/
def P13848053220105763172.Spec : Prop :=
  ∀ n, P13848053220105763172.a n = A036217 n

end A036217

/-! ## A036217.P6370969517410508096

`3*(n+4)*a(n-1)/n` with `a(0)=1`
-/

namespace A036217.P6370969517410508096
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  3 * ((n + 4 : ℚ) * a (n - 1)) / (n : ℚ)

end

end A036217.P6370969517410508096

namespace A036217

/-- `3*(n+4)*a(n-1)/n` -/
def P6370969517410508096.Spec : Prop :=
  ∀ n, P6370969517410508096.a n = (A036217 n : ℚ)

end A036217

/-! ## A036217.P5453612190946728582

`A001296(n+1)*A006234(n+4)/A016777(n+1)`
-/

namespace A036217.P5453612190946728582
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001296 (n + 1) * A006234 (n + 4) : ℚ) / (A016777 (n + 1) : ℚ)

end

end A036217.P5453612190946728582

namespace A036217

/-- `A001296(n+1)*A006234(n+4)/A016777(n+1)` -/
def P5453612190946728582.Spec : Prop :=
  ∀ n, P5453612190946728582.a n = (A036217 n : ℚ)

end A036217

/-! ## A036217.P6365539892842440513

`A027465(A155212(n)+12)`
-/

namespace A036217.P6365539892842440513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027465 (A155212 n + 12).toNat

end

end A036217.P6365539892842440513

namespace A036217

/-- `A027465(A155212(n)+12)` -/
def P6365539892842440513.Spec : Prop :=
  ∀ n, P6365539892842440513.a n = A036217 n

end A036217

/-! ## A036217.P16681147922868097990

`A027465(eq[4, A002262(n)])`
-/

namespace A036217.P16681147922868097990
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027465 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A036217.P16681147922868097990

namespace A036217

/-- `A027465(eq[4, A002262(n)])` -/
def P16681147922868097990.Spec : Prop :=
  ∀ n, P16681147922868097990.a n = A036217 n

end A036217

/-! ## A036217.P5279734793944002173

`A013610(A052905(n+2))`
-/

namespace A036217.P5279734793944002173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013610 (A052905 (n + 2)).toNat

end

end A036217.P5279734793944002173

namespace A036217

/-- `A013610(A052905(n+2))` -/
def P5279734793944002173.Spec : Prop :=
  ∀ n, P5279734793944002173.a n = A036217 n

end A036217

/-! ## A036217.P15826714149851184720

`A013610(eq[4, A025581(n)])`
-/

namespace A036217.P15826714149851184720
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013610 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A036217.P15826714149851184720

namespace A036217

/-- `A013610(eq[4, A025581(n)])` -/
def P15826714149851184720.Spec : Prop :=
  ∀ n, P15826714149851184720.a n = A036217 n

end A036217

/-! ## A036217.P2974579891480633354

`A013610(A056000(n+1)+5)`
-/

namespace A036217.P2974579891480633354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013610 (A056000 (n + 1) + 5).toNat

end

end A036217.P2974579891480633354

namespace A036217

/-- `A013610(A056000(n+1)+5)` -/
def P2974579891480633354.Spec : Prop :=
  ∀ n, P2974579891480633354.a n = A036217 n

end A036217

/-! ## A036217.P13582785107453801942

`A139626(n)/A000079(n)`
-/

namespace A036217.P13582785107453801942
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139626 n : ℚ) / (A000079 n : ℚ)

end

end A036217.P13582785107453801942

namespace A036217

/-- `A139626(n)/A000079(n)` -/
def P13582785107453801942.Spec : Prop :=
  ∀ n, P13582785107453801942.a n = (A036217 n : ℚ)

end A036217

/-! ## A036217.P7202311270682526818

`A139626(n)/(A000051(n)-1)`
-/

namespace A036217.P7202311270682526818
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139626 n : ℚ) / (A000051 n - 1 : ℚ)

end

end A036217.P7202311270682526818

namespace A036217

/-- `A139626(n)/(A000051(n)-1)` -/
def P7202311270682526818.Spec : Prop :=
  ∀ n, P7202311270682526818.a n = (A036217 n : ℚ)

end A036217

/-! ## A036217.P12818806248555263804

`A139626(n)/A258439(2*n+1)`
-/

namespace A036217.P12818806248555263804
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139626 n : ℚ) / (A258439 (2 * n + 1) : ℚ)

end

end A036217.P12818806248555263804

namespace A036217

/-- `A139626(n)/A258439(2*n+1)` -/
def P12818806248555263804.Spec : Prop :=
  ∀ n, P12818806248555263804.a n = (A036217 n : ℚ)

end A036217

/-! ## A036217.P13436692262541747440

`A027471(n+2)*A080951(n)/A057711(n+1)`
-/

namespace A036217.P13436692262541747440
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027471 (n + 2) * A080951 n : ℚ) / (A057711 (n + 1) : ℚ)

end

end A036217.P13436692262541747440

namespace A036217

/-- `A027471(n+2)*A080951(n)/A057711(n+1)` -/
def P13436692262541747440.Spec : Prop :=
  ∀ n, P13436692262541747440.a n = (A036217 n : ℚ)

end A036217

/-!
# A036218: Hours recorded by a 24-hour clock.

The programs for A036218, the canonical program `A036218.P11853179693375606283` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A036218 has offset 0).

The definition of A036218 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A036218.P11853179693375606283

`n%24`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A036218

/-- `n%24` -/
def P11853179693375606283.Spec : Prop :=
  ∀ n, (P11853179693375606283.a n : ℤ) = A036218 n

theorem P11853179693375606283.correct : P11853179693375606283.Spec := by
  intro n
  simp only [A036218]

end A036218

/-!
# A036219: Expansion of 1/(1-3*x)^6; 6-fold convolution of A000244 (powers of 3).

The programs for A036219, the canonical program `A036219.P17574311599125660587` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A036219 has offset 0).

The definition of A036219 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A036219.P17574311599125660587

`3^n*C(n+5, 5)`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A036219

/-- `3^n*C(n+5, 5)` -/
def P17574311599125660587.Spec : Prop :=
  ∀ n, (P17574311599125660587.a n : ℤ) = A036219 n

theorem P17574311599125660587.correct : P17574311599125660587.Spec := by
  intro n
  simp only [A036219]

end A036219

/-! ## A036219.P7902555193067750760

`(15/n+3)*a(n-1)` with `a(0)=1`
-/

namespace A036219.P7902555193067750760
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (15 / (n : ℚ) + 3) * a (n - 1)

end

end A036219.P7902555193067750760

namespace A036219

/-- `(15/n+3)*a(n-1)` -/
def P7902555193067750760.Spec : Prop :=
  ∀ n, P7902555193067750760.a n = (A036219 n : ℚ)

end A036219

/-! ## A036219.P3799248362718890372

`3^n*∑[∑[∑[∑[n+1]]]]`
-/

namespace A036219.P3799248362718890372
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A036219.P3799248362718890372

namespace A036219

/-- `3^n*∑[∑[∑[∑[n+1]]]]` -/
def P3799248362718890372.Spec : Prop :=
  ∀ n, (P3799248362718890372.a n : ℤ) = A036219 n

end A036219

/-! ## A036219.P15638572577568703223

`a(n-1)+A080423(n)+a(n-1)` with `a(0)=1`
-/

namespace A036219.P15638572577568703223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A080423 n + a (n - 1))

end

end A036219.P15638572577568703223

namespace A036219

/-- `a(n-1)+A080423(n)+a(n-1)` -/
def P15638572577568703223.Spec : Prop :=
  ∀ n, P15638572577568703223.a n = A036219 n

end A036219

/-! ## A036219.P13501059333934565911

`A027465(A167499(n+4))`
-/

namespace A036219.P13501059333934565911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027465 (A167499 (n + 4)).toNat

end

end A036219.P13501059333934565911

namespace A036219

/-- `A027465(A167499(n+4))` -/
def P13501059333934565911.Spec : Prop :=
  ∀ n, P13501059333934565911.a n = A036219 n

end A036219

/-! ## A036219.P12260744394003288059

`A013610(A055999(n+3))`
-/

namespace A036219.P12260744394003288059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013610 (A055999 (n + 3)).toNat

end

end A036219.P12260744394003288059

namespace A036219

/-- `A013610(A055999(n+3))` -/
def P12260744394003288059.Spec : Prop :=
  ∀ n, P12260744394003288059.a n = A036219 n

end A036219

/-! ## A036219.P9381945016616042594

`A036084(n)/A000079(n)`
-/

namespace A036219.P9381945016616042594
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A036084 n : ℚ) / (A000079 n : ℚ)

end

end A036219.P9381945016616042594

namespace A036219

/-- `A036084(n)/A000079(n)` -/
def P9381945016616042594.Spec : Prop :=
  ∀ n, P9381945016616042594.a n = (A036219 n : ℚ)

end A036219

/-! ## A036219.P8569142910170777448

`A036084(n)/(A000225(n)+1)`
-/

namespace A036219.P8569142910170777448
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A036084 n : ℚ) / (A000225 n + 1 : ℚ)

end

end A036219.P8569142910170777448

namespace A036219

/-- `A036084(n)/(A000225(n)+1)` -/
def P8569142910170777448.Spec : Prop :=
  ∀ n, P8569142910170777448.a n = (A036219 n : ℚ)

end A036219

/-! ## A036219.P14043542139121934334

`A036084(n)/(A000051(n)-1)`
-/

namespace A036219.P14043542139121934334
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A036084 n : ℚ) / (A000051 n - 1 : ℚ)

end

end A036219.P14043542139121934334

namespace A036219

/-- `A036084(n)/(A000051(n)-1)` -/
def P14043542139121934334.Spec : Prop :=
  ∀ n, P14043542139121934334.a n = (A036219 n : ℚ)

end A036219

/-! ## A036219.P10980584826064800902

`A173188(n)/3^n`
-/

namespace A036219.P10980584826064800902
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A173188 n : ℚ) / (3 ^ n : ℚ)

end

end A036219.P10980584826064800902

namespace A036219

/-- `A173188(n)/3^n` -/
def P10980584826064800902.Spec : Prop :=
  ∀ n, P10980584826064800902.a n = (A036219 n : ℚ)

end A036219

/-!
# A036220: Expansion of 1/(1-3*x)^7; 7-fold convolution of A000244 (powers of 3).

The programs for A036220, the canonical program `A036220.P3183934055485690499` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A036220 has offset 0).

The definition of A036220 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A036220.P3183934055485690499

`3^n*C(n+6, 6)`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A036220

/-- `3^n*C(n+6, 6)` -/
def P3183934055485690499.Spec : Prop :=
  ∀ n, (P3183934055485690499.a n : ℤ) = A036220 n

theorem P3183934055485690499.correct : P3183934055485690499.Spec := by
  intro n
  simp only [A036220]

end A036220

/-! ## A036220.P13025124252713505391

`(18/n+3)*a(n-1)` with `a(0)=1`
-/

namespace A036220.P13025124252713505391
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (18 / (n : ℚ) + 3) * a (n - 1)

end

end A036220.P13025124252713505391

namespace A036220

/-- `(18/n+3)*a(n-1)` -/
def P13025124252713505391.Spec : Prop :=
  ∀ n, P13025124252713505391.a n = (A036220 n : ℚ)

end A036220

/-! ## A036220.P5155263602364247559

`3^n*∑[∑[∑[∑[∑[n+1]]]]]`
-/

namespace A036220.P5155263602364247559
noncomputable section

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A036220.P5155263602364247559

namespace A036220

/-- `3^n*∑[∑[∑[∑[∑[n+1]]]]]` -/
def P5155263602364247559.Spec : Prop :=
  ∀ n, (P5155263602364247559.a n : ℤ) = A036220 n

end A036220

/-! ## A036220.P3000310100671036467

`A036219(n)+3*a(n-1)` with `a(0)=1`
-/

namespace A036220.P3000310100671036467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A036219 n + 3 * a (n - 1)

end

end A036220.P3000310100671036467

namespace A036220

/-- `A036219(n)+3*a(n-1)` -/
def P3000310100671036467.Spec : Prop :=
  ∀ n, P3000310100671036467.a n = A036220 n

end A036220

/-! ## A036220.P12312544681579508150

`C(n+6, 6)*A000244(n)/(A034891(n)%2)!`
-/

namespace A036220.P12312544681579508150
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.choose (n + 6) 6 : ℤ) * A000244 n : ℚ) / (Nat.factorial (Int.tmod (A034891 n) 2).toNat : ℚ)

end

end A036220.P12312544681579508150

namespace A036220

/-- `C(n+6, 6)*A000244(n)/(A034891(n)%2)!` -/
def P12312544681579508150.Spec : Prop :=
  ∀ n, P12312544681579508150.a n = (A036220 n : ℚ)

end A036220

/-! ## A036220.P1075811064539691344

`A027465(eq[6, A002262(n)])`
-/

namespace A036220.P1075811064539691344
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027465 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A036220.P1075811064539691344

namespace A036220

/-- `A027465(eq[6, A002262(n)])` -/
def P1075811064539691344.Spec : Prop :=
  ∀ n, P1075811064539691344.a n = A036220 n

end A036220

/-! ## A036220.P863173381232931930

`A027465(A000096(n+5)+7)`
-/

namespace A036220.P863173381232931930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027465 (A000096 (n + 5) + 7).toNat

end

end A036220.P863173381232931930

namespace A036220

/-- `A027465(A000096(n+5)+7)` -/
def P863173381232931930.Spec : Prop :=
  ∀ n, P863173381232931930.a n = A036220 n

end A036220

/-! ## A036220.P11914495247172288397

`A027465(A000217(n+6)+6)`
-/

namespace A036220.P11914495247172288397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027465 (A000217 (n + 6) + 6).toNat

end

end A036220.P11914495247172288397

namespace A036220

/-- `A027465(A000217(n+6)+6)` -/
def P11914495247172288397.Spec : Prop :=
  ∀ n, P11914495247172288397.a n = A036220 n

end A036220

/-! ## A036220.P3715226962574954703

`A013610(eq[6, A025581(n)])`
-/

namespace A036220.P3715226962574954703
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013610 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A036220.P3715226962574954703

namespace A036220

/-- `A013610(eq[6, A025581(n)])` -/
def P3715226962574954703.Spec : Prop :=
  ∀ n, P3715226962574954703.a n = A036220 n

end A036220

/-! ## A036220.P16135326412672710891

`A013610(A052905(n+4)-2)`
-/

namespace A036220.P16135326412672710891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013610 (A052905 (n + 4) - 2).toNat

end

end A036220.P16135326412672710891

namespace A036220

/-- `A013610(A052905(n+4)-2)` -/
def P16135326412672710891.Spec : Prop :=
  ∀ n, P16135326412672710891.a n = A036220 n

end A036220

/-! ## A036220.P4380520421684063401

`A013610(A000217(n+7)-7)`
-/

namespace A036220.P4380520421684063401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013610 (A000217 (n + 7) - 7).toNat

end

end A036220.P4380520421684063401

namespace A036220

/-- `A013610(A000217(n+7)-7)` -/
def P4380520421684063401.Spec : Prop :=
  ∀ n, P4380520421684063401.a n = A036220 n

end A036220

/-! ## A036220.P16555267373588669705

`A013610(2*n+A055999(n+4)-A005408(n))`
-/

namespace A036220.P16555267373588669705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013610 ((2 * n : ℤ) + (A055999 (n + 4) - A005408 n)).toNat

end

end A036220.P16555267373588669705

namespace A036220

/-- `A013610(2*n+A055999(n+4)-A005408(n))` -/
def P16555267373588669705.Spec : Prop :=
  ∀ n, P16555267373588669705.a n = A036220 n

end A036220

/-! ## A036220.P4883297674008335352

`A050988(n+6)/A000079(n)`
-/

namespace A036220.P4883297674008335352
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A050988 (n + 6) : ℚ) / (A000079 n : ℚ)

end

end A036220.P4883297674008335352

namespace A036220

/-- `A050988(n+6)/A000079(n)` -/
def P4883297674008335352.Spec : Prop :=
  ∀ n, P4883297674008335352.a n = (A036220 n : ℚ)

end A036220

/-!
# A036221: Expansion of 1/(1-3*x)^8; 8-fold convolution of A000244 (powers of 3).

The programs for A036221, the canonical program `A036221.P5459320312661242391` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A036221 has offset 0).

The definition of A036221 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A036221.P5459320312661242391

`3^n*C(n+7, 7)`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A036221

/-- `3^n*C(n+7, 7)` -/
def P5459320312661242391.Spec : Prop :=
  ∀ n, (P5459320312661242391.a n : ℤ) = A036221 n

theorem P5459320312661242391.correct : P5459320312661242391.Spec := by
  intro n
  simp only [A036221]

end A036221

/-! ## A036221.P1637534703055273819

`(21/n+3)*a(n-1)` with `a(0)=1`
-/

namespace A036221.P1637534703055273819
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (21 / (n : ℚ) + 3) * a (n - 1)

end

end A036221.P1637534703055273819

namespace A036221

/-- `(21/n+3)*a(n-1)` -/
def P1637534703055273819.Spec : Prop :=
  ∀ n, P1637534703055273819.a n = (A036221 n : ℚ)

end A036221

/-! ## A036221.P12327346967821580147

`3^n*∑[∑[∑[∑[∑[∑[n+1]]]]]]`
-/

namespace A036221.P12327346967821580147
noncomputable section

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A036221.P12327346967821580147

namespace A036221

/-- `3^n*∑[∑[∑[∑[∑[∑[n+1]]]]]]` -/
def P12327346967821580147.Spec : Prop :=
  ∀ n, (P12327346967821580147.a n : ℤ) = A036221 n

end A036221

/-! ## A036221.P3108424273522687298

`A027465(A000124(n+7)+6)`
-/

namespace A036221.P3108424273522687298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027465 (A000124 (n + 7) + 6).toNat

end

end A036221.P3108424273522687298

namespace A036221

/-- `A027465(A000124(n+7)+6)` -/
def P3108424273522687298.Spec : Prop :=
  ∀ n, P3108424273522687298.a n = A036221 n

end A036221

/-! ## A036221.P11890786302386919683

`A027465(A034856(n+6)+9)`
-/

namespace A036221.P11890786302386919683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027465 (A034856 (n + 6) + 9).toNat

end

end A036221.P11890786302386919683

namespace A036221

/-- `A027465(A034856(n+6)+9)` -/
def P11890786302386919683.Spec : Prop :=
  ∀ n, P11890786302386919683.a n = A036221 n

end A036221

/-! ## A036221.P7553267291976063708

`A027465(eq[8, A002260(n+1)])`
-/

namespace A036221.P7553267291976063708
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027465 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A036221.P7553267291976063708

namespace A036221

/-- `A027465(eq[8, A002260(n+1)])` -/
def P7553267291976063708.Spec : Prop :=
  ∀ n, P7553267291976063708.a n = A036221 n

end A036221

/-! ## A036221.P9595525187425126809

`A027465(A000217(n+8)-(n+1))`
-/

namespace A036221.P9595525187425126809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027465 (A000217 (n + 8) - (n + 1 : ℤ)).toNat

end

end A036221.P9595525187425126809

namespace A036221

/-- `A027465(A000217(n+8)-(n+1))` -/
def P9595525187425126809.Spec : Prop :=
  ∀ n, P9595525187425126809.a n = A036221 n

end A036221

/-! ## A036221.P11389992957563962393

`A013610(eq[7, A025581(n)])`
-/

namespace A036221.P11389992957563962393
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013610 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A036221.P11389992957563962393

namespace A036221

/-- `A013610(eq[7, A025581(n)])` -/
def P11389992957563962393.Spec : Prop :=
  ∀ n, P11389992957563962393.a n = A036221 n

end A036221

/-! ## A036221.P16432123531984611428

`A013610(A000096(n+7)-7)`
-/

namespace A036221.P16432123531984611428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013610 (A000096 (n + 7) - 7).toNat

end

end A036221.P16432123531984611428

namespace A036221

/-- `A013610(A000096(n+7)-7)` -/
def P16432123531984611428.Spec : Prop :=
  ∀ n, P16432123531984611428.a n = A036221 n

end A036221

/-! ## A036221.P1357770620493165968

`A013610(A000217(n+8)-8)`
-/

namespace A036221.P1357770620493165968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013610 (A000217 (n + 8) - 8).toNat

end

end A036221.P1357770620493165968

namespace A036221

/-- `A013610(A000217(n+8)-8)` -/
def P1357770620493165968.Spec : Prop :=
  ∀ n, P1357770620493165968.a n = A036221 n

end A036221

/-! ## A036221.P4134207044307457056

`A013610(2*n+A000217(n+6)+7)`
-/

namespace A036221.P4134207044307457056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013610 ((2 * n : ℤ) + (A000217 (n + 6) + 7)).toNat

end

end A036221.P4134207044307457056

namespace A036221

/-- `A013610(2*n+A000217(n+6)+7)` -/
def P4134207044307457056.Spec : Prop :=
  ∀ n, P4134207044307457056.a n = A036221 n

end A036221

/-! ## A036221.P6882563748994926116

`A013610(2*n+A161680(n+7)+7)`
-/

namespace A036221.P6882563748994926116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013610 ((2 * n : ℤ) + (A161680 (n + 7) + 7)).toNat

end

end A036221.P6882563748994926116

namespace A036221

/-- `A013610(2*n+A161680(n+7)+7)` -/
def P6882563748994926116.Spec : Prop :=
  ∀ n, P6882563748994926116.a n = A036221 n

end A036221

/-! ## A036221.P5272028871455089271

`A141407(n)/2^n`
-/

namespace A036221.P5272028871455089271
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A141407 n : ℚ) / (2 ^ n : ℚ)

end

end A036221.P5272028871455089271

namespace A036221

/-- `A141407(n)/2^n` -/
def P5272028871455089271.Spec : Prop :=
  ∀ n, P5272028871455089271.a n = (A036221 n : ℚ)

end A036221

/-! ## A036221.P6614900064227213690

`A000244(n)*A054851(n+7)/A000079(n)`
-/

namespace A036221.P6614900064227213690
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000244 n * A054851 (n + 7) : ℚ) / (A000079 n : ℚ)

end

end A036221.P6614900064227213690

namespace A036221

/-- `A000244(n)*A054851(n+7)/A000079(n)` -/
def P6614900064227213690.Spec : Prop :=
  ∀ n, P6614900064227213690.a n = (A036221 n : ℚ)

end A036221

/-! ## A036221.P6516715728823817004

`A027471(n+2)*A082141(n)/A057711(n+1)`
-/

namespace A036221.P6516715728823817004
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027471 (n + 2) * A082141 n : ℚ) / (A057711 (n + 1) : ℚ)

end

end A036221.P6516715728823817004

namespace A036221

/-- `A027471(n+2)*A082141(n)/A057711(n+1)` -/
def P6516715728823817004.Spec : Prop :=
  ∀ n, P6516715728823817004.a n = (A036221 n : ℚ)

end A036221

/-!
# A036222: Expansion of 1/(1-3*x)^9; 9-fold convolution of A000244 (powers of 3).

The programs for A036222, the canonical program `A036222.P6654025889481524799` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A036222 has offset 0).

The definition of A036222 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A036222.P6654025889481524799

`3^n*C(n+8, 8)`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A036222

/-- `3^n*C(n+8, 8)` -/
def P6654025889481524799.Spec : Prop :=
  ∀ n, (P6654025889481524799.a n : ℤ) = A036222 n

theorem P6654025889481524799.correct : P6654025889481524799.Spec := by
  intro n
  simp only [A036222]

end A036222

/-! ## A036222.P17129965099707692580

`(24/n+3)*a(n-1)` with `a(0)=1`
-/

namespace A036222.P17129965099707692580
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (24 / (n : ℚ) + 3) * a (n - 1)

end

end A036222.P17129965099707692580

namespace A036222

/-- `(24/n+3)*a(n-1)` -/
def P17129965099707692580.Spec : Prop :=
  ∀ n, P17129965099707692580.a n = (A036222 n : ℚ)

end A036222

/-! ## A036222.P12308313228026413957

`3^n*A000581(n+8)`
-/

namespace A036222.P12308313228026413957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) * A000581 (n + 8)

end

end A036222.P12308313228026413957

namespace A036222

/-- `3^n*A000581(n+8)` -/
def P12308313228026413957.Spec : Prop :=
  ∀ n, P12308313228026413957.a n = A036222 n

theorem P12308313228026413957.correct : P12308313228026413957.Spec := by
  intro n
  simp only [A036222, Nat.add_sub_cancel, A036222.P12308313228026413957.a, A036222.P6654025889481524799.a, A000581, A000581.P12083568850536544774.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A036222

/-! ## A036222.P17895468492365235036

`C(n+8, 8)*A000244(n)`
-/

namespace A036222.P17895468492365235036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 8) 8 : ℤ) * A000244 n

end

end A036222.P17895468492365235036

namespace A036222

/-- `C(n+8, 8)*A000244(n)` -/
def P17895468492365235036.Spec : Prop :=
  ∀ n, P17895468492365235036.a n = A036222 n

theorem P17895468492365235036.correct : P17895468492365235036.Spec := by
  intro n
  simp only [A036222, Nat.add_sub_cancel, A036222.P17895468492365235036.a, A036222.P6654025889481524799.a, A000244, A000244.P17162167222172810417.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A036222

/-! ## A036222.P12192614166738554214

`3^n*∑[A000580(n+7)]`
-/

namespace A036222.P12192614166738554214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000580 (n + 7)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A036222.P12192614166738554214

namespace A036222

/-- `3^n*∑[A000580(n+7)]` -/
def P12192614166738554214.Spec : Prop :=
  ∀ n, P12192614166738554214.a n = A036222 n

end A036222

/-! ## A036222.P16555453800668128908

`(n+1)*3^n*A000580(n+8)/8`
-/

namespace A036222.P16555453800668128908
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) * 3 ^ n : ℚ) * ((A000580 (n + 8) : ℚ) / 8)

end

end A036222.P16555453800668128908

namespace A036222

/-- `(n+1)*3^n*A000580(n+8)/8` -/
def P16555453800668128908.Spec : Prop :=
  ∀ n, P16555453800668128908.a n = (A036222 n : ℚ)

theorem P16555453800668128908.correct : P16555453800668128908.Spec := by
  intro n
  simp only [A036222, Nat.add_sub_cancel, A036222.P16555453800668128908.a, A036222.P6654025889481524799.a, A000580, A000580.P16667415707980948191.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A036222

/-! ## A036222.P12076416002539283632

`∑[A000580(n+7)]*A000244(n)`
-/

namespace A036222.P12076416002539283632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000580 (n + 7)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A000244 n

end

end A036222.P12076416002539283632

namespace A036222

/-- `∑[A000580(n+7)]*A000244(n)` -/
def P12076416002539283632.Spec : Prop :=
  ∀ n, P12076416002539283632.a n = A036222 n

end A036222

/-! ## A036222.P18162529701754603480

`A000244(n)/A000079(n)*A140325(n)`
-/

namespace A036222.P18162529701754603480
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000244 n : ℚ) / (A000079 n : ℚ) * (A140325 n : ℚ)

end

end A036222.P18162529701754603480

namespace A036222

/-- `A000244(n)/A000079(n)*A140325(n)` -/
def P18162529701754603480.Spec : Prop :=
  ∀ n, P18162529701754603480.a n = (A036222 n : ℚ)

end A036222

/-! ## A036222.P16576147934841882476

`A172501(n)/2^n`
-/

namespace A036222.P16576147934841882476
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A172501 n : ℚ) / (2 ^ n : ℚ)

end

end A036222.P16576147934841882476

namespace A036222

/-- `A172501(n)/2^n` -/
def P16576147934841882476.Spec : Prop :=
  ∀ n, P16576147934841882476.a n = (A036222 n : ℚ)

end A036222

/-! ## A036222.P7066253859531560182

`A053108(n)/3^n`
-/

namespace A036222.P7066253859531560182
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053108 n : ℚ) / (3 ^ n : ℚ)

end

end A036222.P7066253859531560182

namespace A036222

/-- `A053108(n)/3^n` -/
def P7066253859531560182.Spec : Prop :=
  ∀ n, P7066253859531560182.a n = (A036222 n : ℚ)

end A036222

/-!
# A036223: Expansion of 1/(1-3*x)^10; 10-fold convolution of A000244 (powers of 3).

The programs for A036223, the canonical program `A036223.P17372873583021482764` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A036223 has offset 0).

The definition of A036223 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A036223.P17372873583021482764

`3^n*C(n+9, 9)`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A036223

/-- `3^n*C(n+9, 9)` -/
def P17372873583021482764.Spec : Prop :=
  ∀ n, (P17372873583021482764.a n : ℤ) = A036223 n

theorem P17372873583021482764.correct : P17372873583021482764.Spec := by
  intro n
  simp only [A036223]

end A036223

/-! ## A036223.P18163621245975531717

`(27/n+3)*a(n-1)` with `a(0)=1`
-/

namespace A036223.P18163621245975531717
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (27 / (n : ℚ) + 3) * a (n - 1)

end

end A036223.P18163621245975531717

namespace A036223

/-- `(27/n+3)*a(n-1)` -/
def P18163621245975531717.Spec : Prop :=
  ∀ n, P18163621245975531717.a n = (A036223 n : ℚ)

end A036223

/-! ## A036223.P4927171200295120442

`(A035927(n)+1)*3^n`
-/

namespace A036223.P4927171200295120442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A035927 n + 1) * (3 ^ n : ℤ)

end

end A036223.P4927171200295120442

namespace A036223

/-- `(A035927(n)+1)*3^n` -/
def P4927171200295120442.Spec : Prop :=
  ∀ n, P4927171200295120442.a n = A036223 n

theorem P4927171200295120442.correct : P4927171200295120442.Spec := by
  intro n
  simp only [A036223, Nat.add_sub_cancel, A036223.P4927171200295120442.a, A036223.P17372873583021482764.a, A035927, A035927.P5963660235913258710.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A036223

/-! ## A036223.P16474757880644098636

`3^n*A000582(n+9)`
-/

namespace A036223.P16474757880644098636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) * A000582 (n + 9)

end

end A036223.P16474757880644098636

namespace A036223

/-- `3^n*A000582(n+9)` -/
def P16474757880644098636.Spec : Prop :=
  ∀ n, P16474757880644098636.a n = A036223 n

theorem P16474757880644098636.correct : P16474757880644098636.Spec := by
  intro n
  simp only [A036223, Nat.add_sub_cancel, A036223.P16474757880644098636.a, A036223.P17372873583021482764.a, A000582, A000582.P5339973766427948568.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A036223

/-! ## A036223.P7057390092335679779

`C(n+9, 9)*A000244(n)`
-/

namespace A036223.P7057390092335679779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 9) 9 : ℤ) * A000244 n

end

end A036223.P7057390092335679779

namespace A036223

/-- `C(n+9, 9)*A000244(n)` -/
def P7057390092335679779.Spec : Prop :=
  ∀ n, P7057390092335679779.a n = A036223 n

theorem P7057390092335679779.correct : P7057390092335679779.Spec := by
  intro n
  simp only [A036223, Nat.add_sub_cancel, A036223.P7057390092335679779.a, A036223.P17372873583021482764.a, A000244, A000244.P17162167222172810417.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A036223

/-! ## A036223.P5814811844705981163

`3^n*∑[A000581(n+8)]`
-/

namespace A036223.P5814811844705981163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000581 (n + 8)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A036223.P5814811844705981163

namespace A036223

/-- `3^n*∑[A000581(n+8)]` -/
def P5814811844705981163.Spec : Prop :=
  ∀ n, P5814811844705981163.a n = A036223 n

end A036223

/-! ## A036223.P17922970833680119186

`∑[A000581(n+8)]*A000244(n)`
-/

namespace A036223.P17922970833680119186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000581 (n + 8)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A000244 n

end

end A036223.P17922970833680119186

namespace A036223

/-- `∑[A000581(n+8)]*A000244(n)` -/
def P17922970833680119186.Spec : Prop :=
  ∀ n, P17922970833680119186.a n = A036223 n

end A036223

/-! ## A036223.P14462036509526392637

`∑[∑[A000580(n+7)]]*A000244(n)`
-/

namespace A036223.P14462036509526392637
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000580 (n + 7)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A000244 n

end

end A036223.P14462036509526392637

namespace A036223

/-- `∑[∑[A000580(n+7)]]*A000244(n)` -/
def P14462036509526392637.Spec : Prop :=
  ∀ n, P14462036509526392637.a n = A036223 n

end A036223

/-! ## A036223.P14640260713800690133

`A000244(n)/A000079(n)*A140354(n)`
-/

namespace A036223.P14640260713800690133
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000244 n : ℚ) / (A000079 n : ℚ) * (A140354 n : ℚ)

end

end A036223.P14640260713800690133

namespace A036223

/-- `A000244(n)/A000079(n)*A140354(n)` -/
def P14640260713800690133.Spec : Prop :=
  ∀ n, P14640260713800690133.a n = (A036223 n : ℚ)

end A036223

/-! ## A036223.P12648831489731424523

`A173123(n)/2^n`
-/

namespace A036223.P12648831489731424523
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A173123 n : ℚ) / (2 ^ n : ℚ)

end

end A036223.P12648831489731424523

namespace A036223

/-- `A173123(n)/2^n` -/
def P12648831489731424523.Spec : Prop :=
  ∀ n, P12648831489731424523.a n = (A036223 n : ℚ)

end A036223

/-!
# A036224: Expansion of (-1+1/(1-6*x)^6)/(36*x); related to A036084.

The programs for A036224, the canonical program `A036224.P7356945529173873238` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A036224 has offset 0).

The definition of A036224 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A036224.P7356945529173873238

`6^(n-1)*C(n+6, 5)`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A036224

/-- `6^(n-1)*C(n+6, 5)` -/
def P7356945529173873238.Spec : Prop :=
  ∀ n, P7356945529173873238.a n = (A036224 n : ℚ)

end A036224

/-! ## A036224.P6313525488171158425

`(30/(n+1)+6)*a(n-1)` with `a(0)=1`
-/

namespace A036224.P6313525488171158425
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (30 / (n + 1 : ℚ) + 6) * a (n - 1)

end

end A036224.P6313525488171158425

namespace A036224

/-- `(30/(n+1)+6)*a(n-1)` -/
def P6313525488171158425.Spec : Prop :=
  ∀ n, P6313525488171158425.a n = (A036224 n : ℚ)

end A036224

/-! ## A036224.P10763957781652743899

`3^(n-1)*A080952(n)`
-/

namespace A036224.P10763957781652743899
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (A080952 n : ℚ)

end

end A036224.P10763957781652743899

namespace A036224

/-- `3^(n-1)*A080952(n)` -/
def P10763957781652743899.Spec : Prop :=
  ∀ n, P10763957781652743899.a n = (A036224 n : ℚ)

end A036224

/-! ## A036224.P15572613754986841584

`A000244(n)/(n+1)*A002409(n)`
-/

namespace A036224.P15572613754986841584
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000244 n : ℚ) / (n + 1 : ℚ) * (A002409 n : ℚ)

end

end A036224.P15572613754986841584

namespace A036224

/-- `A000244(n)/(n+1)*A002409(n)` -/
def P15572613754986841584.Spec : Prop :=
  ∀ n, P15572613754986841584.a n = (A036224 n : ℚ)

end A036224

/-! ## A036224.P4391095725792075438

`A000079(n)/(n+1)*A036220(n)`
-/

namespace A036224.P4391095725792075438
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000079 n : ℚ) / (n + 1 : ℚ) * (A036220 n : ℚ)

end

end A036224.P4391095725792075438

namespace A036224

/-- `A000079(n)/(n+1)*A036220(n)` -/
def P4391095725792075438.Spec : Prop :=
  ∀ n, P4391095725792075438.a n = (A036224 n : ℚ)

end A036224

/-! ## A036224.P11603751368628110633

`A050988(n+6)/(n+1)`
-/

namespace A036224.P11603751368628110633
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A050988 (n + 6) : ℚ) / (n + 1 : ℚ)

end

end A036224.P11603751368628110633

namespace A036224

/-- `A050988(n+6)/(n+1)` -/
def P11603751368628110633.Spec : Prop :=
  ∀ n, P11603751368628110633.a n = (A036224 n : ℚ)

end A036224

/-! ## A036224.P17212006997009713090

`A013613(A000217(n+7)-7)/(n+1)`
-/

namespace A036224.P17212006997009713090
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013613 (A000217 (n + 7) - 7).toNat : ℚ) / (n + 1 : ℚ)

end

end A036224.P17212006997009713090

namespace A036224

/-- `A013613(A000217(n+7)-7)/(n+1)` -/
def P17212006997009713090.Spec : Prop :=
  ∀ n, P17212006997009713090.a n = (A036224 n : ℚ)

end A036224

/-!
# A036225: Length of cycle the 'summarize the previous term' sequence gets into.

The programs for A036225, there is no canonical definition to state claims against.
-/

/-! ## A036225.P11621827515878550375

`A089053(lcm(4, A104578(n)))`
-/

namespace A036225.P11621827515878550375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089053 (Int.lcm 4 (A104578 n))

end

end A036225.P11621827515878550375

/-! ## A036225.P2152777349242511483

`A153675(C(A036212(n), A153675(n+1)))`
-/

namespace A036225.P2152777349242511483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153675 (Nat.choose (A036212 n).toNat (A153675 (n + 1)).toNat)

end

end A036225.P2152777349242511483

/-! ## A036225.P5852179478435105503

`A153675(C(A308781(n)+1, A153675(n+1)))`
-/

namespace A036225.P5852179478435105503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153675 (Nat.choose (A308781 n + 1).toNat (A153675 (n + 1)).toNat)

end

end A036225.P5852179478435105503

/-! ## A036225.P122026046334415158

`A153675(C(A103618(n+1)+1, A153675(n+1)))`
-/

namespace A036225.P122026046334415158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153675 (Nat.choose (A103618 (n + 1) + 1).toNat (A153675 (n + 1)).toNat)

end

end A036225.P122026046334415158

/-! ## A036225.P5463725562686406460

`floor(root(A155452(n), 18))`
-/

namespace A036225.P5463725562686406460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A155452 n : ℝ) ^ (1 / (18 : ℝ))⌋

end

end A036225.P5463725562686406460

/-! ## A036225.P16160982439624829431

`A000010(ceil(root(A155452(n), 18)))`
-/

namespace A036225.P16160982439624829431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 ⌈(A155452 n : ℝ) ^ (1 / (18 : ℝ))⌉.toNat

end

end A036225.P16160982439624829431

/-! ## A036225.P9062070170783528670

`A000045(ceil(root(A155452(n), 18)))`
-/

namespace A036225.P9062070170783528670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 ⌈(A155452 n : ℝ) ^ (1 / (18 : ℝ))⌉.toNat

end

end A036225.P9062070170783528670

/-!
# A036226: Expansion of 1/(1-7*x)^7.

The programs for A036226, the canonical program `A036226.P3450782524642580202` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A036226 has offset 0).

The definition of A036226 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A036226.P3450782524642580202

`7^n*C(n+6, 6)`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A036226

/-- `7^n*C(n+6, 6)` -/
def P3450782524642580202.Spec : Prop :=
  ∀ n, (P3450782524642580202.a n : ℤ) = A036226 n

theorem P3450782524642580202.correct : P3450782524642580202.Spec := by
  intro n
  simp only [A036226]

end A036226

/-! ## A036226.P12087959678619061628

`7^n*A000579(n+6)`
-/

namespace A036226.P12087959678619061628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (7 ^ n : ℤ) * A000579 (n + 6)

end

end A036226.P12087959678619061628

namespace A036226

/-- `7^n*A000579(n+6)` -/
def P12087959678619061628.Spec : Prop :=
  ∀ n, P12087959678619061628.a n = A036226 n

theorem P12087959678619061628.correct : P12087959678619061628.Spec := by
  intro n
  simp only [A036226, Nat.add_sub_cancel, A036226.P12087959678619061628.a, A036226.P3450782524642580202.a, A000579, A000579.P13663713855180125612.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A036226

/-! ## A036226.P18245352780743790725

`C(n+6, 6)*A000420(n)`
-/

namespace A036226.P18245352780743790725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 6) 6 : ℤ) * A000420 n

end

end A036226.P18245352780743790725

namespace A036226

/-- `C(n+6, 6)*A000420(n)` -/
def P18245352780743790725.Spec : Prop :=
  ∀ n, P18245352780743790725.a n = A036226 n

theorem P18245352780743790725.correct : P18245352780743790725.Spec := by
  intro n
  simp only [A036226, Nat.add_sub_cancel, A036226.P18245352780743790725.a, A036226.P3450782524642580202.a, A000420, A000420.P3695589171832359676.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A036226

/-! ## A036226.P9350930398043690754

`C(n+6, 6)/A000420(n)^A008683(A002146(n))`
-/

namespace A036226.P9350930398043690754
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 6) 6 : ℚ) / (A000420 n : ℚ) ^ (A008683 (A002146 n).toNat : ℤ)

end

end A036226.P9350930398043690754

namespace A036226

/-- `C(n+6, 6)/A000420(n)^A008683(A002146(n))` -/
def P9350930398043690754.Spec : Prop :=
  ∀ n, P9350930398043690754.a n = (A036226 n : ℚ)

end A036226

/-! ## A036226.P10718552779815479775

`A027466(eq[6, A002262(n)])`
-/

namespace A036226.P10718552779815479775
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027466 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A036226.P10718552779815479775

namespace A036226

/-- `A027466(eq[6, A002262(n)])` -/
def P10718552779815479775.Spec : Prop :=
  ∀ n, P10718552779815479775.a n = A036226 n

end A036226

/-! ## A036226.P7379696295275661910

`A027466(A000217(n+6)+6)`
-/

namespace A036226.P7379696295275661910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027466 (A000217 (n + 6) + 6).toNat

end

end A036226.P7379696295275661910

namespace A036226

/-- `A027466(A000217(n+6)+6)` -/
def P7379696295275661910.Spec : Prop :=
  ∀ n, P7379696295275661910.a n = A036226 n

end A036226

/-! ## A036226.P13072724436244691323

`A027466(eq[7, A002260(n+1)])`
-/

namespace A036226.P13072724436244691323
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027466 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A036226.P13072724436244691323

namespace A036226

/-- `A027466(eq[7, A002260(n+1)])` -/
def P13072724436244691323.Spec : Prop :=
  ∀ n, P13072724436244691323.a n = A036226 n

end A036226

/-!
# A036227: a(1) = 20; a(n+1) = a(n) + sum of decimal digits of a(n).

The programs for A036227, the canonical program `A036227.P6221341663879694796` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A036227 has offset 1).

The definition of A036227 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 589 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A036227.P6221341663879694796

`A062028(a(n-1))` with `a(0)=20`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A036227

/-- `A062028(a(n-1))` -/
def P6221341663879694796.Spec : Prop :=
  ∀ n, P6221341663879694796.a n = A036227 (n + 1)

theorem P6221341663879694796.correct : P6221341663879694796.Spec := by
  intro n
  simp only [A036227, Nat.add_sub_cancel]

end A036227

/-! ## A036227.P9891426915440886768

`A007953(a(n-1))+a(n-1)` with `a(0)=20`
-/

namespace A036227.P9891426915440886768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [20] fun n a =>
  A007953 (a (n - 1)).toNat + a (n - 1)

end

end A036227.P9891426915440886768

namespace A036227

/-- `A007953(a(n-1))+a(n-1)` -/
def P9891426915440886768.Spec : Prop :=
  ∀ n, P9891426915440886768.a n = A036227 (n + 1)

end A036227

/-! ## A036227.P16919654288046912593

`a(n-1)+sqrt(A118881(a(n-1)))` with `a(0)=20`
-/

namespace A036227.P16919654288046912593
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [20] fun n a =>
  a (n - 1) + Real.sqrt (A118881 (SequenceMachineLib.roundAway (a (n - 1))).toNat : ℝ)

end

end A036227.P16919654288046912593

namespace A036227

/-- `a(n-1)+sqrt(A118881(a(n-1)))` -/
def P16919654288046912593.Spec : Prop :=
  ∀ n, P16919654288046912593.a n = (A036227 (n + 1) : ℝ)

end A036227

/-! ## A036227.P17903999695352389861

`record[A062028(a(A046666(n)))]` with `a(0)=20, a(1)=0`
-/

namespace A036227.P17903999695352389861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [20, 0] fun n f1 =>
  A062028 (f1 (A046666 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A036227.P17903999695352389861

namespace A036227

/-- `record[A062028(a(A046666(n)))]` -/
def P17903999695352389861.Spec : Prop :=
  ∀ n, P17903999695352389861.a n = A036227 (n + 1)

end A036227

/-! ## A036227.P4634761205238982442

`A160939(a(n-1)+1)-1` with `a(0)=20`
-/

namespace A036227.P4634761205238982442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [20] fun n a =>
  A160939 (a (n - 1) + 1).toNat - 1

end

end A036227.P4634761205238982442

namespace A036227

/-- `A160939(a(n-1)+1)-1` -/
def P4634761205238982442.Spec : Prop :=
  ∀ n, P4634761205238982442.a n = A036227 (n + 1)

end A036227

/-!
# A036228: a(1) = 31; a(n+1) = a(n) + sum of decimal digits of a(n).

The programs for A036228, the canonical program `A036228.P16173525642964457817` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A036228 has offset 1).

The definition of A036228 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 589 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A036228.P16173525642964457817

`A160931(a(n-1)-1)+1` with `a(0)=31`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A036228

/-- `A160931(a(n-1)-1)+1` -/
def P16173525642964457817.Spec : Prop :=
  ∀ n, P16173525642964457817.a n = A036228 (n + 1)

theorem P16173525642964457817.correct : P16173525642964457817.Spec := by
  intro n
  simp only [A036228, Nat.add_sub_cancel]

end A036228

/-! ## A036228.P10226715840337290126

`A062028(a(n-1))` with `a(0)=31`
-/

namespace A036228.P10226715840337290126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [31] fun n a =>
  A062028 (a (n - 1)).toNat

end

end A036228.P10226715840337290126

namespace A036228

/-- `A062028(a(n-1))` -/
def P10226715840337290126.Spec : Prop :=
  ∀ n, P10226715840337290126.a n = A036228 (n + 1)

end A036228

/-! ## A036228.P8340501164184090893

`record[A062028(a(A046666(n)))]` with `a(0)=31, a(1)=2`
-/

namespace A036228.P8340501164184090893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [31, 2] fun n f1 =>
  A062028 (f1 (A046666 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A036228.P8340501164184090893

namespace A036228

/-- `record[A062028(a(A046666(n)))]` -/
def P8340501164184090893.Spec : Prop :=
  ∀ n, P8340501164184090893.a n = A036228 (n + 1)

end A036228

/-! ## A036228.P16212223344122541107

`A007953(a(n-1))+a(A023443(n))` with `a(0)=31`
-/

namespace A036228.P16212223344122541107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [31] fun n a =>
  A007953 (a (n - 1)).toNat + a (A023443 n).toNat

end

end A036228.P16212223344122541107

namespace A036228

/-- `A007953(a(n-1))+a(A023443(n))` -/
def P16212223344122541107.Spec : Prop :=
  ∀ n, P16212223344122541107.a n = A036228 (n + 1)

end A036228

/-! ## A036228.P9894061905421586743

`A160939(a(n-1)+1)-1` with `a(0)=31`
-/

namespace A036228.P9894061905421586743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [31] fun n a =>
  A160939 (a (n - 1) + 1).toNat - 1

end

end A036228.P9894061905421586743

namespace A036228

/-- `A160939(a(n-1)+1)-1` -/
def P9894061905421586743.Spec : Prop :=
  ∀ n, P9894061905421586743.a n = A036228 (n + 1)

end A036228

/-!
# A036229: Smallest n-digit prime containing only digits 1 or 2 or -1 if no such prime exists.

The programs for A036229, there is no canonical definition to state claims against.
-/

/-! ## A036229.P2246583591353349404

`A068086(n+1)+∑[A011557(n)]`
-/

namespace A036229.P2246583591353349404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011557 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068086 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036229.P2246583591353349404

/-! ## A036229.P15166929229586224218

`A068086(n+1)+A000042(n+1)`
-/

namespace A036229.P15166929229586224218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068086 (n + 1) + A000042 (n + 1)

end

end A036229.P15166929229586224218

/-! ## A036229.P11727785328668277581

`A068086(n+1)+A002275(n+1)`
-/

namespace A036229.P11727785328668277581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068086 (n + 1) + A002275 (n + 1)

end

end A036229.P11727785328668277581

/-! ## A036229.P12910682146865021056

`A094026(2*n+1)+A068086(n+1)`
-/

namespace A036229.P12910682146865021056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094026 (2 * n + 1) + A068086 (n + 1)

end

end A036229.P12910682146865021056

/-! ## A036229.P11110072849459372352

`A068086(n+1)+record[A256077(A098552(n+1))]`
-/

namespace A036229.P11110072849459372352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256077 (A098552 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068086 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A036229.P11110072849459372352

/-!
# A036230: a(n+1) = a(n) + sum of digits of a(n) starting with 110.

The programs for A036230, the canonical program `A036230.P8024167728252113872` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A036230 has offset 1).

The definition of A036230 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 584 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A036230.P8024167728252113872

`A160931(a(n-1)-1)+1` with `a(0)=110`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A036230

/-- `A160931(a(n-1)-1)+1` -/
def P8024167728252113872.Spec : Prop :=
  ∀ n, P8024167728252113872.a n = A036230 (n + 1)

theorem P8024167728252113872.correct : P8024167728252113872.Spec := by
  intro n
  simp only [A036230, Nat.add_sub_cancel]

end A036230

/-! ## A036230.P17083337038048238788

`A062028(a(n-1))` with `a(0)=110`
-/

namespace A036230.P17083337038048238788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [110] fun n a =>
  A062028 (a (n - 1)).toNat

end

end A036230.P17083337038048238788

namespace A036230

/-- `A062028(a(n-1))` -/
def P17083337038048238788.Spec : Prop :=
  ∀ n, P17083337038048238788.a n = A036230 (n + 1)

end A036230

/-! ## A036230.P8121201384053382865

`A007953(a(n-1))+a(n-1)` with `a(0)=110`
-/

namespace A036230.P8121201384053382865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [110] fun n a =>
  A007953 (a (n - 1)).toNat + a (n - 1)

end

end A036230.P8121201384053382865

namespace A036230

/-- `A007953(a(n-1))+a(n-1)` -/
def P8121201384053382865.Spec : Prop :=
  ∀ n, P8121201384053382865.a n = A036230 (n + 1)

end A036230

/-! ## A036230.P10242655032341803290

`a(n-1)+sqrt(A118881(a(n-1)))` with `a(0)=110`
-/

namespace A036230.P10242655032341803290
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [110] fun n a =>
  a (n - 1) + Real.sqrt (A118881 (SequenceMachineLib.roundAway (a (n - 1))).toNat : ℝ)

end

end A036230.P10242655032341803290

namespace A036230

/-- `a(n-1)+sqrt(A118881(a(n-1)))` -/
def P10242655032341803290.Spec : Prop :=
  ∀ n, P10242655032341803290.a n = (A036230 (n + 1) : ℝ)

end A036230

/-! ## A036230.P8839800468242965642

`record[A062028(a(A046666(n)))]` with `a(0)=110, a(1)=0`
-/

namespace A036230.P8839800468242965642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [110, 0] fun n f1 =>
  A062028 (f1 (A046666 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A036230.P8839800468242965642

namespace A036230

/-- `record[A062028(a(A046666(n)))]` -/
def P8839800468242965642.Spec : Prop :=
  ∀ n, P8839800468242965642.a n = A036230 (n + 1)

end A036230

/-! ## A036230.P7272338702761680916

`A160939(a(n-1)+1)-1` with `a(0)=110`
-/

namespace A036230.P7272338702761680916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [110] fun n a =>
  A160939 (a (n - 1) + 1).toNat - 1

end

end A036230.P7272338702761680916

namespace A036230

/-- `A160939(a(n-1)+1)-1` -/
def P7272338702761680916.Spec : Prop :=
  ∀ n, P7272338702761680916.a n = A036230 (n + 1)

end A036230

/-!
# A036231: a(n+1) = a(n) + sum of digits of a(n) starting with 121.

The programs for A036231, there is no canonical definition to state claims against.
-/

/-! ## A036231.P14323570211810546874

`eq[11, sqrt(A036233(n+1))]+1`
-/

namespace A036231.P14323570211810546874
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A036233 (n + 1) : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) = f2 j) n + 1

end

end A036231.P14323570211810546874

/-! ## A036231.P1891680721013319918

`A216589(A036228(n+1)-A216589(n+1))+A216589(n+1)`
-/

namespace A036231.P1891680721013319918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216589 (A036228 (n + 1) - A216589 (n + 1)).toNat + A216589 (n + 1)

end

end A036231.P1891680721013319918

/-!
# A036232: a(n+1) = a(n) + sum of digits of a(n) starting with 211.

The programs for A036232, the canonical program `A036232.P458560803797423589` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A036232 has offset 1).

The definition of A036232 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 571 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A036232.P458560803797423589

`A160931(a(n-1)-1)+1` with `a(0)=211`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A036232

/-- `A160931(a(n-1)-1)+1` -/
def P458560803797423589.Spec : Prop :=
  ∀ n, P458560803797423589.a n = A036232 (n + 1)

theorem P458560803797423589.correct : P458560803797423589.Spec := by
  intro n
  simp only [A036232, Nat.add_sub_cancel]

end A036232

/-! ## A036232.P6282874214868495597

`A062028(a(n-1))` with `a(0)=211`
-/

namespace A036232.P6282874214868495597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [211] fun n a =>
  A062028 (a (n - 1)).toNat

end

end A036232.P6282874214868495597

namespace A036232

/-- `A062028(a(n-1))` -/
def P6282874214868495597.Spec : Prop :=
  ∀ n, P6282874214868495597.a n = A036232 (n + 1)

end A036232

/-! ## A036232.P14637803906671670729

`a(n-1)+sqrt(A118881(a(n-1)))` with `a(0)=211`
-/

namespace A036232.P14637803906671670729
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [211] fun n a =>
  a (n - 1) + Real.sqrt (A118881 (SequenceMachineLib.roundAway (a (n - 1))).toNat : ℝ)

end

end A036232.P14637803906671670729

namespace A036232

/-- `a(n-1)+sqrt(A118881(a(n-1)))` -/
def P14637803906671670729.Spec : Prop :=
  ∀ n, P14637803906671670729.a n = (A036232 (n + 1) : ℝ)

end A036232

/-! ## A036232.P717873119820384402

`a(n-1)+A057147(a(n-1))/a(n-1)` with `a(0)=211`
-/

namespace A036232.P717873119820384402
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [211] fun n a =>
  a (n - 1) + (A057147 (SequenceMachineLib.roundAway (a (n - 1))).toNat : ℚ) / a (n - 1)

end

end A036232.P717873119820384402

namespace A036232

/-- `a(n-1)+A057147(a(n-1))/a(n-1)` -/
def P717873119820384402.Spec : Prop :=
  ∀ n, P717873119820384402.a n = (A036232 (n + 1) : ℚ)

end A036232

/-! ## A036232.P14960301498509598754

`record[A062028(a(A046666(n)))]` with `a(0)=211, a(1)=0`
-/

namespace A036232.P14960301498509598754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [211, 0] fun n f1 =>
  A062028 (f1 (A046666 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A036232.P14960301498509598754

namespace A036232

/-- `record[A062028(a(A046666(n)))]` -/
def P14960301498509598754.Spec : Prop :=
  ∀ n, P14960301498509598754.a n = A036232 (n + 1)

end A036232

/-! ## A036232.P10947941296748402331

`A160939(a(n-1)+1)-1` with `a(0)=211`
-/

namespace A036232.P10947941296748402331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [211] fun n a =>
  A160939 (a (n - 1) + 1).toNat - 1

end

end A036232.P10947941296748402331

namespace A036232

/-- `A160939(a(n-1)+1)-1` -/
def P10947941296748402331.Spec : Prop :=
  ∀ n, P10947941296748402331.a n = A036232 (n + 1)

end A036232

/-! ## A036232.P8153866695377686214

`A002264(3*(A007953(a(n-1))+a(n-1)))` with `a(0)=211`
-/

namespace A036232.P8153866695377686214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [211] fun n a =>
  A002264 (3 * (A007953 (a (n - 1)).toNat + a (n - 1))).toNat

end

end A036232.P8153866695377686214

namespace A036232

/-- `A002264(3*(A007953(a(n-1))+a(n-1)))` -/
def P8153866695377686214.Spec : Prop :=
  ∀ n, P8153866695377686214.a n = A036232 (n + 1)

end A036232

/-! ## A036232.P14166269353179312940

`A038502(3*(A007953(a(n-1))+a(n-1)))` with `a(0)=211`
-/

namespace A036232.P14166269353179312940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [211] fun n a =>
  A038502 (3 * (A007953 (a (n - 1)).toNat + a (n - 1))).toNat

end

end A036232.P14166269353179312940

namespace A036232

/-- `A038502(3*(A007953(a(n-1))+a(n-1)))` -/
def P14166269353179312940.Spec : Prop :=
  ∀ n, P14166269353179312940.a n = A036232 (n + 1)

end A036232

/-!
# A036233: Inverse Colombian function.

The programs for A036233, there is no canonical definition to state claims against.
-/

/-! ## A036233.P2994908868745680547

`A244568(A151838(n)+A045876(n+1))`
-/

namespace A036233.P2994908868745680547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244568 (A151838 n + A045876 (n + 1)).toNat

end

end A036233.P2994908868745680547

/-! ## A036233.P12584543700400491045

`A244568(A045876(n+1)+A080953(n)²)`
-/

namespace A036233.P12584543700400491045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244568 (A045876 (n + 1) + A080953 n ^ 2).toNat

end

end A036233.P12584543700400491045

/-! ## A036233.P14906859828330714204

`A244568(∑[A080953(n)]*A045876(n+1))`
-/

namespace A036233.P14906859828330714204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080953 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244568 ((∑ j ∈ Finset.range (n + 1), f1 j) * A045876 (n + 1)).toNat

end

end A036233.P14906859828330714204

/-! ## A036233.P12370349631678150684

`A244568((A080953(n)+1)*A045876(n+1))`
-/

namespace A036233.P12370349631678150684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244568 ((A080953 n + 1) * A045876 (n + 1)).toNat

end

end A036233.P12370349631678150684

/-! ## A036233.P15651460879569974418

`((n+1)/2^val(n+1, 2))%Δ[A318719(3*n+5)]`
-/

namespace A036233.P15651460879569974418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318719 (3 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))) (f1 (n + 1) - f1 n)

end

end A036233.P15651460879569974418

/-!
# A036234: Number of primes <= n, if 1 is counted as a prime.

The programs for A036234, the canonical program `A036234.P2906282677021386800` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A036234 has offset 1).

The definition of A036234 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A036234.P2906282677021386800

`A000720(n+1)+1`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A036234

/-- `A000720(n+1)+1` -/
def P2906282677021386800.Spec : Prop :=
  ∀ n, P2906282677021386800.a n = A036234 (n + 1)

theorem P2906282677021386800.correct : P2906282677021386800.Spec := by
  intro n
  simp only [A036234, Nat.add_sub_cancel]

end A036234

/-! ## A036234.P12891560216390756249

`∑[C(2, ∑{e}[n+1, #+1])]`
-/

namespace A036234.P12891560216390756249
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (∑ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036234.P12891560216390756249

namespace A036234

/-- `∑[C(2, ∑{e}[n+1, #+1])]` -/
def P12891560216390756249.Spec : Prop :=
  ∀ n, (P12891560216390756249.a n : ℤ) = A036234 (n + 1)

end A036234

/-! ## A036234.P12573736224883273873

`∑[∏{p}[n+1, val(#, n+1)]]`
-/

namespace A036234.P12573736224883273873
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), SequenceMachineLib.valuation p (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036234.P12573736224883273873

namespace A036234

/-- `∑[∏{p}[n+1, val(#, n+1)]]` -/
def P12573736224883273873.Spec : Prop :=
  ∀ n, (P12573736224883273873.a n : ℤ) = A036234 (n + 1)

end A036234

/-! ## A036234.P15576610496210901002

`∑[C(n, ∑{d}[n+1, #-1])]`
-/

namespace A036234.P15576610496210901002
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (∑ d ∈ Nat.divisors (f2 n), ((d : ℤ) - 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036234.P15576610496210901002

namespace A036234

/-- `∑[C(n, ∑{d}[n+1, #-1])]` -/
def P15576610496210901002.Spec : Prop :=
  ∀ n, (P15576610496210901002.a n : ℤ) = A036234 (n + 1)

end A036234

/-! ## A036234.P12260662833722001826

`∑[C(∑{p}[n+1, #-1], n)]`
-/

namespace A036234.P12260662833722001826
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1)).toNat n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036234.P12260662833722001826

namespace A036234

/-- `∑[C(∑{p}[n+1, #-1], n)]` -/
def P12260662833722001826.Spec : Prop :=
  ∀ n, (P12260662833722001826.a n : ℤ) = A036234 (n + 1)

end A036234

/-! ## A036234.P4679092224411033423

`∑[∏{p}[n+1, C(#, n+1)]]`
-/

namespace A036234.P4679092224411033423
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), Nat.choose p (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036234.P4679092224411033423

namespace A036234

/-- `∑[∏{p}[n+1, C(#, n+1)]]` -/
def P4679092224411033423.Spec : Prop :=
  ∀ n, (P4679092224411033423.a n : ℤ) = A036234 (n + 1)

end A036234

/-! ## A036234.P3418282214039065719

`∑[∏{p}[n+1, floor(#/(n+1))]]`
-/

namespace A036234.P3418282214039065719
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), ⌊(p : ℚ) / (n + 1 : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036234.P3418282214039065719

namespace A036234

/-- `∑[∏{p}[n+1, floor(#/(n+1))]]` -/
def P3418282214039065719.Spec : Prop :=
  ∀ n, P3418282214039065719.a n = A036234 (n + 1)

end A036234

/-! ## A036234.P11475441153540599994

`∑[∑{p}[n+1, val(#, n+1)]]+1`
-/

namespace A036234.P11475441153540599994
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), SequenceMachineLib.valuation p (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A036234.P11475441153540599994

namespace A036234

/-- `∑[∑{p}[n+1, val(#, n+1)]]+1` -/
def P11475441153540599994.Spec : Prop :=
  ∀ n, (P11475441153540599994.a n : ℤ) = A036234 (n + 1)

end A036234

/-! ## A036234.P12965702487834203252

`∑[∑{p}[n+1, C(#, n+1)]]+1`
-/

namespace A036234.P12965702487834203252
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), Nat.choose p (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A036234.P12965702487834203252

namespace A036234

/-- `∑[∑{p}[n+1, C(#, n+1)]]+1` -/
def P12965702487834203252.Spec : Prop :=
  ∀ n, (P12965702487834203252.a n : ℤ) = A036234 (n + 1)

end A036234

/-! ## A036234.P17349448764932551660

`∑[C(n+1, ∏{e}[n+1, #+n])]`
-/

namespace A036234.P17349448764932551660
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) (∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036234.P17349448764932551660

namespace A036234

/-- `∑[C(n+1, ∏{e}[n+1, #+n])]` -/
def P17349448764932551660.Spec : Prop :=
  ∀ n, (P17349448764932551660.a n : ℤ) = A036234 (n + 1)

end A036234

/-! ## A036234.P18150875527444877425

`∑[round(∏{p}[n+1, (#/(n+1))²])]`
-/

namespace A036234.P18150875527444877425
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (∏ p ∈ Nat.primeFactors (f2 n), ((p : ℚ) / (n + 1 : ℚ)) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036234.P18150875527444877425

namespace A036234

/-- `∑[round(∏{p}[n+1, (#/(n+1))²])]` -/
def P18150875527444877425.Spec : Prop :=
  ∀ n, P18150875527444877425.a n = A036234 (n + 1)

end A036234

/-! ## A036234.P16660807550672862291

`Δ[A002815(n)]`
-/

namespace A036234.P16660807550672862291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002815 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A036234.P16660807550672862291

namespace A036234

/-- `Δ[A002815(n)]` -/
def P16660807550672862291.Spec : Prop :=
  ∀ n, P16660807550672862291.a n = A036234 (n + 1)

end A036234

/-! ## A036234.P9036120550125873786

`∑[A080339(n+1)]`
-/

namespace A036234.P9036120550125873786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080339 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036234.P9036120550125873786

namespace A036234

/-- `∑[A080339(n+1)]` -/
def P9036120550125873786.Spec : Prop :=
  ∀ n, P9036120550125873786.a n = A036234 (n + 1)

end A036234

/-! ## A036234.P2422373803700032588

`1+A000720(n+1)`
-/

namespace A036234.P2422373803700032588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A000720 (n + 1)

end

end A036234.P2422373803700032588

namespace A036234

/-- `1+A000720(n+1)` -/
def P2422373803700032588.Spec : Prop :=
  ∀ n, P2422373803700032588.a n = A036234 (n + 1)

theorem P2422373803700032588.correct : P2422373803700032588.Spec := by
  intro n
  simp only [A036234, Nat.add_sub_cancel, A036234.P2422373803700032588.a, A036234.P2906282677021386800.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A036234

/-! ## A036234.P2572318884653465725

`∑[abs(A267133(n+1))]`
-/

namespace A036234.P2572318884653465725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A267133 (n + 1)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036234.P2572318884653465725

namespace A036234

/-- `∑[abs(A267133(n+1))]` -/
def P2572318884653465725.Spec : Prop :=
  ∀ n, P2572318884653465725.a n = A036234 (n + 1)

end A036234

/-! ## A036234.P8258925917081719485

`∑[char[A028815(n)-2]]`
-/

namespace A036234.P8258925917081719485
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028815 n - 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036234.P8258925917081719485

namespace A036234

/-- `∑[char[A028815(n)-2]]` -/
def P8258925917081719485.Spec : Prop :=
  ∀ n, (P8258925917081719485.a n : ℤ) = A036234 (n + 1)

end A036234

/-! ## A036234.P11187756268599174518

`∑[A010051(n+1)]+1`
-/

namespace A036234.P11187756268599174518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A036234.P11187756268599174518

namespace A036234

/-- `∑[A010051(n+1)]+1` -/
def P11187756268599174518.Spec : Prop :=
  ∀ n, P11187756268599174518.a n = A036234 (n + 1)

end A036234

/-! ## A036234.P3933672272499979691

`∑[1-A066247(n+1)]`
-/

namespace A036234.P3933672272499979691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A066247 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036234.P3933672272499979691

namespace A036234

/-- `∑[1-A066247(n+1)]` -/
def P3933672272499979691.Spec : Prop :=
  ∀ n, P3933672272499979691.a n = A036234 (n + 1)

end A036234

/-! ## A036234.P2419697496132012215

`∑[A101040(2*(n+1))]`
-/

namespace A036234.P2419697496132012215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101040 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036234.P2419697496132012215

namespace A036234

/-- `∑[A101040(2*(n+1))]` -/
def P2419697496132012215.Spec : Prop :=
  ∀ n, P2419697496132012215.a n = A036234 (n + 1)

end A036234

/-! ## A036234.P14507594143922278271

`1-A065855(n+1)+n`
-/

namespace A036234.P14507594143922278271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A065855 (n + 1) + (n : ℤ)

end

end A036234.P14507594143922278271

namespace A036234

/-- `1-A065855(n+1)+n` -/
def P14507594143922278271.Spec : Prop :=
  ∀ n, P14507594143922278271.a n = A036234 (n + 1)

theorem P14507594143922278271.correct : P14507594143922278271.Spec := by
  intro n
  simp only [A036234, Nat.add_sub_cancel, A036234.P14507594143922278271.a, A036234.P2906282677021386800.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A065855, A065855.P16805213270251966039.a, A062298, A062298.P8226643735375377344.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A036234

/-!
# A036238: Triangle of numbers a(r,j) = j*(j+1) mod r+2, r>=1, j=1..r.

The programs for A036238, the canonical program `A036238.P9635143634491131780` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A036238 has offset 1).

The definition of A036238 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A036238.P9635143634491131780

`A002378(A092543(n+1))%A028263(A057944(n))`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A036238

/-- `A002378(A092543(n+1))%A028263(A057944(n))` -/
def P9635143634491131780.Spec : Prop :=
  ∀ n, P9635143634491131780.a n = A036238 (n + 1)

theorem P9635143634491131780.correct : P9635143634491131780.Spec := by
  intro n
  simp only [A036238, Nat.add_sub_cancel]

end A036238

/-! ## A036238.P2137083553629710717

`A027386(A173005(n))`
-/

namespace A036238.P2137083553629710717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027386 (A173005 n).toNat

end

end A036238.P2137083553629710717

namespace A036238

/-- `A027386(A173005(n))` -/
def P2137083553629710717.Spec : Prop :=
  ∀ n, P2137083553629710717.a n = A036238 (n + 1)

end A036238

/-! ## A036238.P9793154970824279781

`A004598(A187617(n)²)`
-/

namespace A036238.P9793154970824279781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004598 (A187617 n ^ 2).toNat

end

end A036238.P9793154970824279781

namespace A036238

/-- `A004598(A187617(n)²)` -/
def P9793154970824279781.Spec : Prop :=
  ∀ n, P9793154970824279781.a n = A036238 (n + 1)

end A036238

/-! ## A036238.P1210800958569433972

`xor(3, A122202(A157152(n)))`
-/

namespace A036238.P1210800958569433972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 3 (A122202 (A157152 n).toNat)

end

end A036238.P1210800958569433972

namespace A036238

/-- `xor(3, A122202(A157152(n)))` -/
def P1210800958569433972.Spec : Prop :=
  ∀ n, P1210800958569433972.a n = A036238 (n + 1)

end A036238

/-! ## A036238.P9023945525762343858

`xor(3, A285189(A174038(n)))`
-/

namespace A036238.P9023945525762343858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 3 (A285189 (A174038 n).toNat)

end

end A036238.P9023945525762343858

namespace A036238

/-- `xor(3, A285189(A174038(n)))` -/
def P9023945525762343858.Spec : Prop :=
  ∀ n, P9023945525762343858.a n = A036238 (n + 1)

end A036238

/-!
# A036239: Number of 2-element intersecting families of an n-element set; number of 2-way interactions when 2 subsets of power set on {1..n} are chosen at random.

The programs for A036239, the canonical program `A036239.P10220398326125679203` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A036239 has offset 1).

The definition of A036239 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A036239.P14907536016350800877

`(4^(n+1)-3^(n+1)-2^(n+1)+1)/2`
-/

namespace A036239.P14907536016350800877
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((4 ^ (n + 1) : ℤ) - (3 ^ (n + 1) : ℤ) - (2 ^ (n + 1) : ℤ) + 1 : ℚ) / 2

end

end A036239.P14907536016350800877

namespace A036239

/-- `(4^(n+1)-3^(n+1)-2^(n+1)+1)/2` -/
def P14907536016350800877.Spec : Prop :=
  ∀ n, P14907536016350800877.a n = (A036239 (n + 1) : ℚ)

theorem P14907536016350800877.correct : P14907536016350800877.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A036239, Nat.add_sub_cancel, A036239.P14907536016350800877.a, A036239.P10220398326125679203.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A036239, Nat.add_sub_cancel, A036239.P14907536016350800877.a, A036239.P10220398326125679203.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A036239

/-! ## A036239.P5953094011728164593

`A006516(n+1)-A003462(n+1)`
-/

namespace A036239.P5953094011728164593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006516 (n + 1) - A003462 (n + 1)

end

end A036239.P5953094011728164593

namespace A036239

/-- `A006516(n+1)-A003462(n+1)` -/
def P5953094011728164593.Spec : Prop :=
  ∀ n, P5953094011728164593.a n = A036239 (n + 1)

end A036239

/-! ## A036239.P10000572373575955157

`ogf((2x-5x^2)/(1-10x+35x^2-50x^3+24x^4))`
-/

namespace A036239.P10000572373575955157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 2, -5] [1, -10, 35, -50, 24] n

end

end A036239.P10000572373575955157

namespace A036239

/-- `ogf((2x-5x^2)/(1-10x+35x^2-50x^3+24x^4))` -/
def P10000572373575955157.Spec : Prop :=
  ∀ n, P10000572373575955157.a n = A036239 (n + 1)

end A036239

/-! ## A036239.P10220398326125679203

`10*a(n-1)-35*a(n-2)+50*a(n-3)-24*a(n-4)` with `a(0)=0, a(1)=2, a(2)=15, a(3)=80`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A036239

/-- `10*a(n-1)-35*a(n-2)+50*a(n-3)-24*a(n-4)` -/
def P10220398326125679203.Spec : Prop :=
  ∀ n, P10220398326125679203.a n = A036239 (n + 1)

theorem P10220398326125679203.correct : P10220398326125679203.Spec := by
  intro n
  simp only [A036239, Nat.add_sub_cancel]

end A036239

/-! ## A036239.P8693999915569424074

`∑[C(2^n, 2)+4^n-3^n]`
-/

namespace A036239.P8693999915569424074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (2 ^ n) 2 + 4 ^ n : ℤ) - (3 ^ n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036239.P8693999915569424074

namespace A036239

/-- `∑[C(2^n, 2)+4^n-3^n]` -/
def P8693999915569424074.Spec : Prop :=
  ∀ n, P8693999915569424074.a n = A036239 (n + 1)

end A036239

/-! ## A036239.P14152470628514984975

`∑[Δ[A137786(n)]/2]`
-/

namespace A036239.P14152470628514984975
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137786 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036239.P14152470628514984975

namespace A036239

/-- `∑[Δ[A137786(n)]/2]` -/
def P14152470628514984975.Spec : Prop :=
  ∀ n, P14152470628514984975.a n = (A036239 (n + 1) : ℚ)

end A036239

/-! ## A036239.P2897122333240615912

`ceil(A137786(n+1)/2)`
-/

namespace A036239.P2897122333240615912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A137786 (n + 1) : ℚ) / 2⌉

end

end A036239.P2897122333240615912

namespace A036239

/-- `ceil(A137786(n+1)/2)` -/
def P2897122333240615912.Spec : Prop :=
  ∀ n, P2897122333240615912.a n = A036239 (n + 1)

end A036239

/-! ## A036239.P2834602475489808796

`∑[A010036(n)-3^n]`
-/

namespace A036239.P2834602475489808796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010036 n - (3 ^ n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036239.P2834602475489808796

namespace A036239

/-- `∑[A010036(n)-3^n]` -/
def P2834602475489808796.Spec : Prop :=
  ∀ n, P2834602475489808796.a n = A036239 (n + 1)

end A036239

/-! ## A036239.P9012169653497031234

`∑[(A255463(n)-2^n)/2]`
-/

namespace A036239.P9012169653497031234
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A255463 n - (2 ^ n : ℤ) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036239.P9012169653497031234

namespace A036239

/-- `∑[(A255463(n)-2^n)/2]` -/
def P9012169653497031234.Spec : Prop :=
  ∀ n, P9012169653497031234.a n = (A036239 (n + 1) : ℚ)

end A036239

/-! ## A036239.P14960135942718158949

`A134064(n+1)-2^(n+1)`
-/

namespace A036239.P14960135942718158949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134064 (n + 1) - (2 ^ (n + 1) : ℤ)

end

end A036239.P14960135942718158949

namespace A036239

/-- `A134064(n+1)-2^(n+1)` -/
def P14960135942718158949.Spec : Prop :=
  ∀ n, P14960135942718158949.a n = A036239 (n + 1)

end A036239

/-! ## A036239.P9239143452321236982

`A137786(n)+A083314(n)`
-/

namespace A036239.P9239143452321236982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137786 n + A083314 n

end

end A036239.P9239143452321236982

namespace A036239

/-- `A137786(n)+A083314(n)` -/
def P9239143452321236982.Spec : Prop :=
  ∀ n, P9239143452321236982.a n = A036239 (n + 1)

end A036239

/-! ## A036239.P13521880302374724087

`A085350(n)-A094374(n)`
-/

namespace A036239.P13521880302374724087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085350 n - A094374 n

end

end A036239.P13521880302374724087

namespace A036239

/-- `A085350(n)-A094374(n)` -/
def P13521880302374724087.Spec : Prop :=
  ∀ n, P13521880302374724087.a n = A036239 (n + 1)

end A036239

/-! ## A036239.P16345808547007498709

`A390529(n)-A126646(n)`
-/

namespace A036239.P16345808547007498709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390529 n - A126646 n

end

end A036239.P16345808547007498709

namespace A036239

/-- `A390529(n)-A126646(n)` -/
def P16345808547007498709.Spec : Prop :=
  ∀ n, P16345808547007498709.a n = A036239 (n + 1)

end A036239

/-! ## A036239.P18249538568264492210

`∑[A006516(n)+A005061(n)]`
-/

namespace A036239.P18249538568264492210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006516 n + A005061 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036239.P18249538568264492210

namespace A036239

/-- `∑[A006516(n)+A005061(n)]` -/
def P18249538568264492210.Spec : Prop :=
  ∀ n, P18249538568264492210.a n = A036239 (n + 1)

end A036239

/-! ## A036239.P9485839320994784414

`A092440(n)-A053156(n+1)`
-/

namespace A036239.P9485839320994784414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092440 n - A053156 (n + 1)

end

end A036239.P9485839320994784414

namespace A036239

/-- `A092440(n)-A053156(n+1)` -/
def P9485839320994784414.Spec : Prop :=
  ∀ n, P9485839320994784414.a n = A036239 (n + 1)

end A036239

/-! ## A036239.P6357333973349365459

`A129868(n)-A029858(n+1)`
-/

namespace A036239.P6357333973349365459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129868 n - A029858 (n + 1)

end

end A036239.P6357333973349365459

namespace A036239

/-- `A129868(n)-A029858(n+1)` -/
def P6357333973349365459.Spec : Prop :=
  ∀ n, P6357333973349365459.a n = A036239 (n + 1)

end A036239

/-! ## A036239.P12106251456455086022

`A087289(n)-A267799(n+1)`
-/

namespace A036239.P12106251456455086022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087289 n - A267799 (n + 1)

end

end A036239.P12106251456455086022

namespace A036239

/-- `A087289(n)-A267799(n+1)` -/
def P12106251456455086022.Spec : Prop :=
  ∀ n, P12106251456455086022.a n = A036239 (n + 1)

end A036239

/-! ## A036239.P8115593169178914426

`A390529(n)-A000225(n+1)`
-/

namespace A036239.P8115593169178914426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390529 n - A000225 (n + 1)

end

end A036239.P8115593169178914426

namespace A036239

/-- `A390529(n)-A000225(n+1)` -/
def P8115593169178914426.Spec : Prop :=
  ∀ n, P8115593169178914426.a n = A036239 (n + 1)

end A036239

/-! ## A036239.P13930938148913771983

`A390501(n+1)-A084174(n)`
-/

namespace A036239.P13930938148913771983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390501 (n + 1) - A084174 n

end

end A036239.P13930938148913771983

namespace A036239

/-- `A390501(n+1)-A084174(n)` -/
def P13930938148913771983.Spec : Prop :=
  ∀ n, P13930938148913771983.a n = A036239 (n + 1)

end A036239

/-! ## A036239.P2478451626636614289

`∑[Δ[A006516(n)]-A000244(n)]`
-/

namespace A036239.P2478451626636614289
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006516 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - A000244 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036239.P2478451626636614289

namespace A036239

/-- `∑[Δ[A006516(n)]-A000244(n)]` -/
def P2478451626636614289.Spec : Prop :=
  ∀ n, P2478451626636614289.a n = A036239 (n + 1)

end A036239

/-!
# A036240: Number of 3-way interactions when 3 subsets of power set on {1..n} are chosen at random; number of Boolean functions of n variables and rank 3 from Post class F(8,inf).

The programs for A036240, the canonical program `A036240.P2737440285930239817` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A036240 has offset 1).

The definition of A036240 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A036240.P2737440285930239817

`(8^(n+1)-7^(n+1)-3*4^(n+1)+3*3^(n+1)+2*2^(n+1)-2)/6`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A036240

/-- `(8^(n+1)-7^(n+1)-3*4^(n+1)+3*3^(n+1)+2*2^(n+1)-2)/6` -/
def P2737440285930239817.Spec : Prop :=
  ∀ n, P2737440285930239817.a n = (A036240 (n + 1) : ℚ)

end A036240

/-! ## A036240.P2113206355634615952

`A051376(n+1)+A051375(n+1)`
-/

namespace A036240.P2113206355634615952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051376 (n + 1) + A051375 (n + 1)

end

end A036240.P2113206355634615952

namespace A036240

/-- `A051376(n+1)+A051375(n+1)` -/
def P2113206355634615952.Spec : Prop :=
  ∀ n, P2113206355634615952.a n = A036240 (n + 1)

end A036240

/-! ## A036240.P11048413932589872867

`A036239(n+1)+A051376(n+1)-A000918(n+1)`
-/

namespace A036240.P11048413932589872867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036239 (n + 1) + (A051376 (n + 1) - A000918 (n + 1))

end

end A036240.P11048413932589872867

namespace A036240

/-- `A036239(n+1)+A051376(n+1)-A000918(n+1)` -/
def P11048413932589872867.Spec : Prop :=
  ∀ n, P11048413932589872867.a n = A036240 (n + 1)

end A036240

/-! ## A036240.P11541350443996903657

`A051376(n+1)+A134057(n+1)-A029858(n+1)`
-/

namespace A036240.P11541350443996903657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051376 (n + 1) + (A134057 (n + 1) - A029858 (n + 1))

end

end A036240.P11541350443996903657

namespace A036240

/-- `A051376(n+1)+A134057(n+1)-A029858(n+1)` -/
def P11541350443996903657.Spec : Prop :=
  ∀ n, P11541350443996903657.a n = A036240 (n + 1)

end A036240

/-! ## A036240.P6469539639823879362

`A051376(n+1)+A036239(n+1)+1-A000225(n+1)`
-/

namespace A036240.P6469539639823879362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051376 (n + 1) + (A036239 (n + 1) + (1 - A000225 (n + 1)))

end

end A036240.P6469539639823879362

namespace A036240

/-- `A051376(n+1)+A036239(n+1)+1-A000225(n+1)` -/
def P6469539639823879362.Spec : Prop :=
  ∀ n, P6469539639823879362.a n = A036240 (n + 1)

end A036240

/-! ## A036240.P3268418605095697571

`A051376(n+1)+A134169(n+1)+1-A094374(n+1)`
-/

namespace A036240.P3268418605095697571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051376 (n + 1) + (A134169 (n + 1) + (1 - A094374 (n + 1)))

end

end A036240.P3268418605095697571

namespace A036240

/-- `A051376(n+1)+A134169(n+1)+1-A094374(n+1)` -/
def P3268418605095697571.Spec : Prop :=
  ∀ n, P3268418605095697571.a n = A036240 (n + 1)

end A036240

/-! ## A036240.P89820836299138777

`A051376(n+1)+A006516(n+1)+2-A094374(n+1)`
-/

namespace A036240.P89820836299138777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051376 (n + 1) + (A006516 (n + 1) + (2 - A094374 (n + 1)))

end

end A036240.P89820836299138777

namespace A036240

/-- `A051376(n+1)+A006516(n+1)+2-A094374(n+1)` -/
def P89820836299138777.Spec : Prop :=
  ∀ n, P89820836299138777.a n = A036240 (n + 1)

end A036240

/-! ## A036240.P16564780527355119830

`A051376(n+1)+A134064(n+1)-(A000225(n+2)-1)`
-/

namespace A036240.P16564780527355119830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051376 (n + 1) + (A134064 (n + 1) - (A000225 (n + 2) - 1))

end

end A036240.P16564780527355119830

namespace A036240

/-- `A051376(n+1)+A134064(n+1)-(A000225(n+2)-1)` -/
def P16564780527355119830.Spec : Prop :=
  ∀ n, P16564780527355119830.a n = A036240 (n + 1)

end A036240

/-!
# A036241: a(1)=1, a(2)=2, a(3)=3; for n >= 3, a(n) is smallest number such that all a(i) for 1 <= i <= n are distinct, all a(i)+a(j) for 1 <= i < j <= n are distinct and all a(i)+a(j)+a(k) for 1 <= i < j < k <= n are distinct.

The programs for A036241, there is no canonical definition to state claims against.
-/

/-! ## A036241.P2894059437420263245

`A003056(A075211(n+1)+A026392(n+1))`
-/

namespace A036241.P2894059437420263245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A075211 (n + 1) + A026392 (n + 1)).toNat

end

end A036241.P2894059437420263245

/-! ## A036241.P6862256498508854508

`A003056(A075212(n+1)+A026392(n+1))`
-/

namespace A036241.P6862256498508854508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A075212 (n + 1) + A026392 (n + 1)).toNat

end

end A036241.P6862256498508854508

/-! ## A036241.P10784479409834205487

`A217038(n+1)+A002024(A075212(n+1))`
-/

namespace A036241.P10784479409834205487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217038 (n + 1) + A002024 (A075212 (n + 1)).toNat

end

end A036241.P10784479409834205487

/-! ## A036241.P899028677310873501

`round(sqrt(A000720(4^n)))+1`
-/

namespace A036241.P899028677310873501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A000720 (4 ^ n) : ℝ)) + 1

end

end A036241.P899028677310873501

/-! ## A036241.P10951569169533533048

`A074198(A149826(n))`
-/

namespace A036241.P10951569169533533048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074198 (A149826 n).toNat

end

end A036241.P10951569169533533048

/-!
# A036242: Numerator of fraction equal to the continued fraction [0,2,4,...2n].

The programs for A036242, there is no canonical definition to state claims against.
-/

/-! ## A036242.P9355207658694018349

`a(n-2)+2*(n+1)*a(n-1)` with `a(0)=1, a(1)=4`
-/

namespace A036242.P9355207658694018349
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 4] fun n a =>
  a (n - 2) + 2 * ((n + 1) * a (n - 1))

end

end A036242.P9355207658694018349

/-! ## A036242.P15872599078287895799

`record[A246658(∑[n]+1)]`
-/

namespace A036242.P15872599078287895799
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246658 (∑ j ∈ Finset.range (n + 1), f2 j + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A036242.P15872599078287895799

/-!
# A036243: Denominator of fraction equal to the continued fraction [ 0, 2, 4, ...2n ].

The programs for A036243, the canonical program `A036243.P4709428137413080377` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A036243 has offset 0).

The definition of A036243 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A036243.P4709428137413080377

`2*n*a(n-1)+a(n-2)` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A036243

/-- `2*n*a(n-1)+a(n-2)` -/
def P4709428137413080377.Spec : Prop :=
  ∀ n, (P4709428137413080377.a n : ℤ) = A036243 n

theorem P4709428137413080377.correct : P4709428137413080377.Spec := by
  intro n
  simp only [A036243]

end A036243

/-! ## A036243.P2977706615865094112

`∏[1/a(n-1)+2*n]` with `a(0)=1, a(1)=2`
-/

namespace A036243.P2977706615865094112
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  1 / f1 (n - 1) + (2 * n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A036243.P2977706615865094112

namespace A036243

/-- `∏[1/a(n-1)+2*n]` -/
def P2977706615865094112.Spec : Prop :=
  ∀ n, P2977706615865094112.a n = (A036243 n : ℚ)

end A036243

/-! ## A036243.P863518009278169100

`a(n-2)-(n-3*n)*a(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A036243.P863518009278169100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 2) - ((n : ℤ) - (3 * n : ℤ)) * a (n - 1)

end

end A036243.P863518009278169100

namespace A036243

/-- `a(n-2)-(n-3*n)*a(n-1)` -/
def P863518009278169100.Spec : Prop :=
  ∀ n, P863518009278169100.a n = A036243 n

end A036243

/-! ## A036243.P9653199551846802812

`A305401(∑[n+3])`
-/

namespace A036243.P9653199551846802812
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305401 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A036243.P9653199551846802812

namespace A036243

/-- `A305401(∑[n+3])` -/
def P9653199551846802812.Spec : Prop :=
  ∀ n, P9653199551846802812.a n = A036243 n

end A036243

/-!
# A036244: Denominator of continued fraction given by C(n) = [1; 3, 5, 7, ..., (2*n-1)].

The programs for A036244, the canonical program `A036244.P2356709769309620605` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A036244 has offset 1).

The definition of A036244 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A036244.P2356709769309620605

`a(n-1)*(2*(n+1)-1)+a(n-2)` with `a(0)=1, a(1)=3`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A036244

/-- `a(n-1)*(2*(n+1)-1)+a(n-2)` -/
def P2356709769309620605.Spec : Prop :=
  ∀ n, P2356709769309620605.a n = A036244 (n + 1)

theorem P2356709769309620605.correct : P2356709769309620605.Spec := by
  intro n
  simp only [A036244, Nat.add_sub_cancel]

end A036244

/-! ## A036244.P14238782066427836007

`∑{#}[n+1, (1-(-1)^(n+1-#))/2*(n+1+#)!/((n+1-#)!*#!)*(1/2)^#]`
-/

namespace A036244.P14238782066427836007
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (1 - (-1 : ℚ) ^ ((n + 1 : ℤ) - (k : ℤ) : ℤ)) / 2 * (Nat.factorial (n + 1 + k) : ℚ) / (Nat.factorial ((n + 1 : ℤ) - (k : ℤ)).toNat * Nat.factorial k : ℚ) * ((1 : ℚ) / 2) ^ k

end

end A036244.P14238782066427836007

namespace A036244

/-- `∑{#}[n+1, (1-(-1)^(n+1-#))/2*(n+1+#)!/((n+1-#)!*#!)*(1/2)^#]` -/
def P14238782066427836007.Spec : Prop :=
  ∀ n, P14238782066427836007.a n = (A036244 (n + 1) : ℚ)

end A036244

/-! ## A036244.P14518252099488854390

`∏[1/a(n-1)+2*n+1]` with `a(0)=1, a(1)=3`
-/

namespace A036244.P14518252099488854390
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 3] fun n f1 =>
  1 / f1 (n - 1) + (2 * n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A036244.P14518252099488854390

namespace A036244

/-- `∏[1/a(n-1)+2*n+1]` -/
def P14518252099488854390.Spec : Prop :=
  ∀ n, P14518252099488854390.a n = (A036244 (n + 1) : ℚ)

end A036244

/-! ## A036244.P9031535942537907792

`a(n-2)+a(n-1)*Δ[n²]` with `a(0)=1, a(1)=3`
-/

namespace A036244.P9031535942537907792
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  a (n - 2) + a (n - 1) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A036244.P9031535942537907792

namespace A036244

/-- `a(n-2)+a(n-1)*Δ[n²]` -/
def P9031535942537907792.Spec : Prop :=
  ∀ n, P9031535942537907792.a n = A036244 (n + 1)

end A036244

/-! ## A036244.P1075389482539466654

`a(n-2)+(2*n+1)*a(n-1)` with `a(0)=1, a(1)=3`
-/

namespace A036244.P1075389482539466654
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n a =>
  a (n - 2) + (2 * n + 1) * a (n - 1)

end

end A036244.P1075389482539466654

namespace A036244

/-- `a(n-2)+(2*n+1)*a(n-1)` -/
def P1075389482539466654.Spec : Prop :=
  ∀ n, (P1075389482539466654.a n : ℤ) = A036244 (n + 1)

end A036244

/-! ## A036244.P10427259955576712586

`(A001515(n+1)-A278990(n+1))/2`
-/

namespace A036244.P10427259955576712586
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001515 (n + 1) - A278990 (n + 1) : ℚ) / 2

end

end A036244.P10427259955576712586

namespace A036244

/-- `(A001515(n+1)-A278990(n+1))/2` -/
def P10427259955576712586.Spec : Prop :=
  ∀ n, P10427259955576712586.a n = (A036244 (n + 1) : ℚ)

end A036244

/-!
# A036245: Numerator of fraction equal to the continued fraction [ 0, 1, 4, ..., n^2 ].

The programs for A036245, the canonical program `A036245.P4737283041899317073` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A036245 has offset 1).

The definition of A036245 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A036245.P4737283041899317073

`(n+1)²*a(n-1)+a(n-2)` with `a(0)=1, a(1)=4`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A036245

/-- `(n+1)²*a(n-1)+a(n-2)` -/
def P4737283041899317073.Spec : Prop :=
  ∀ n, (P4737283041899317073.a n : ℤ) = A036245 (n + 1)

theorem P4737283041899317073.correct : P4737283041899317073.Spec := by
  intro n
  simp only [A036245, Nat.add_sub_cancel]

end A036245

/-! ## A036245.P15847027669092638239

`∏[(n+1)²+1/a(n-1)]` with `a(0)=1, a(1)=4`
-/

namespace A036245.P15847027669092638239
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 4] fun n f1 =>
  ((n + 1) ^ 2 : ℚ) + 1 / f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A036245.P15847027669092638239

namespace A036245

/-- `∏[(n+1)²+1/a(n-1)]` -/
def P15847027669092638239.Spec : Prop :=
  ∀ n, P15847027669092638239.a n = (A036245 (n + 1) : ℚ)

end A036245

/-! ## A036245.P18035934334113195677

`a(n-2)+a(n-1)/(n+1)^(-2)` with `a(0)=1, a(1)=4`
-/

namespace A036245.P18035934334113195677
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 4] fun n a =>
  a (n - 2) + a (n - 1) / (n + 1 : ℚ) ^ (-2 : ℤ)

end

end A036245.P18035934334113195677

namespace A036245

/-- `a(n-2)+a(n-1)/(n+1)^(-2)` -/
def P18035934334113195677.Spec : Prop :=
  ∀ n, P18035934334113195677.a n = (A036245 (n + 1) : ℚ)

end A036245

/-! ## A036245.P10883419136126140402

`a(n-2)+a(n-1)*∑[2*n+1]` with `a(0)=1, a(1)=4`
-/

namespace A036245.P10883419136126140402
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 4] fun n a =>
  a (n - 2) + a (n - 1) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A036245.P10883419136126140402

namespace A036245

/-- `a(n-2)+a(n-1)*∑[2*n+1]` -/
def P10883419136126140402.Spec : Prop :=
  ∀ n, (P10883419136126140402.a n : ℤ) = A036245 (n + 1)

end A036245

/-! ## A036245.P9569850926061277092

`a(n-2)+(n+1)*(n+1)*a(n-1)` with `a(0)=1, a(1)=4`
-/

namespace A036245.P9569850926061277092
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 4] fun n a =>
  a (n - 2) + (n + 1) * ((n + 1) * a (n - 1))

end

end A036245.P9569850926061277092

namespace A036245

/-- `a(n-2)+(n+1)*(n+1)*a(n-1)` -/
def P9569850926061277092.Spec : Prop :=
  ∀ n, (P9569850926061277092.a n : ℤ) = A036245 (n + 1)

end A036245

/-!
# A036246: CONTINUANT transform of squares 1, 4, 9, ...

The programs for A036246, the canonical program `A036246.P12453388246528799993` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A036246 has offset 1).

The definition of A036246 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A036246.P12453388246528799993

`(n+1)²*a(n-1)+a(n-2)` with `a(0)=1, a(1)=5`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A036246

/-- `(n+1)²*a(n-1)+a(n-2)` -/
def P12453388246528799993.Spec : Prop :=
  ∀ n, (P12453388246528799993.a n : ℤ) = A036246 (n + 1)

theorem P12453388246528799993.correct : P12453388246528799993.Spec := by
  intro n
  simp only [A036246, Nat.add_sub_cancel]

end A036246

/-! ## A036246.P18131547194389963585

`∏[(n+1)²+1/a(n-1)]` with `a(0)=1`
-/

namespace A036246.P18131547194389963585
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  ((n + 1) ^ 2 : ℚ) + 1 / f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A036246.P18131547194389963585

namespace A036246

/-- `∏[(n+1)²+1/a(n-1)]` -/
def P18131547194389963585.Spec : Prop :=
  ∀ n, P18131547194389963585.a n = (A036246 (n + 1) : ℚ)

end A036246

/-! ## A036246.P5527011154962067065

`a(n-2)+a(n-1)/(1/(n+1))²` with `a(0)=1, a(1)=5`
-/

namespace A036246.P5527011154962067065
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 5] fun n a =>
  a (n - 2) + a (n - 1) / (1 / (n + 1 : ℚ)) ^ 2

end

end A036246.P5527011154962067065

namespace A036246

/-- `a(n-2)+a(n-1)/(1/(n+1))²` -/
def P5527011154962067065.Spec : Prop :=
  ∀ n, P5527011154962067065.a n = (A036246 (n + 1) : ℚ)

end A036246

/-! ## A036246.P9840885647081926707

`a(n-2)+a(n-1)*∑[2*n+1]` with `a(0)=1, a(1)=5`
-/

namespace A036246.P9840885647081926707
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 5] fun n a =>
  a (n - 2) + a (n - 1) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A036246.P9840885647081926707

namespace A036246

/-- `a(n-2)+a(n-1)*∑[2*n+1]` -/
def P9840885647081926707.Spec : Prop :=
  ∀ n, (P9840885647081926707.a n : ℤ) = A036246 (n + 1)

end A036246

/-! ## A036246.P4007546005348593749

`a(n-2)+(n+1)*(n+1)*a(n-1)` with `a(0)=1, a(1)=5`
-/

namespace A036246.P4007546005348593749
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 5] fun n a =>
  a (n - 2) + (n + 1) * ((n + 1) * a (n - 1))

end

end A036246.P4007546005348593749

namespace A036246

/-- `a(n-2)+(n+1)*(n+1)*a(n-1)` -/
def P4007546005348593749.Spec : Prop :=
  ∀ n, (P4007546005348593749.a n : ℤ) = A036246 (n + 1)

end A036246

/-!
# A036247: Numerator of fraction equal to the continued fraction [ 2, 3, 5, ...prime(n) ].

The programs for A036247, the canonical program `A036247.P8407402036572135115` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A036247 has offset 1).

The definition of A036247 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A036247.P8407402036572135115

`A000040(n+1)*a(n-1)+a(n-2)` with `a(0)=2, a(1)=7`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A036247

/-- `A000040(n+1)*a(n-1)+a(n-2)` -/
def P8407402036572135115.Spec : Prop :=
  ∀ n, P8407402036572135115.a n = A036247 (n + 1)

theorem P8407402036572135115.correct : P8407402036572135115.Spec := by
  intro n
  simp only [A036247, Nat.add_sub_cancel]

end A036247

/-! ## A036247.P10879955878676997041

`A083659(n+2)`
-/

namespace A036247.P10879955878676997041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083659 (n + 2)

end

end A036247.P10879955878676997041

namespace A036247

/-- `A083659(n+2)` -/
def P10879955878676997041.Spec : Prop :=
  ∀ n, P10879955878676997041.a n = A036247 (n + 1)

end A036247

/-! ## A036247.P7590340165994043816

`∏[A000040(n+1)+1/a(n-1)]` with `a(0)=2`
-/

namespace A036247.P7590340165994043816
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [2] fun n f1 =>
  (A000040 (n + 1) : ℚ) + 1 / f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A036247.P7590340165994043816

namespace A036247

/-- `∏[A000040(n+1)+1/a(n-1)]` -/
def P7590340165994043816.Spec : Prop :=
  ∀ n, P7590340165994043816.a n = (A036247 (n + 1) : ℚ)

end A036247

/-! ## A036247.P772763278861464853

`a(n-2)+a(n-1)*A045344(n)` with `a(0)=2, a(1)=7`
-/

namespace A036247.P772763278861464853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 7] fun n a =>
  a (n - 2) + a (n - 1) * A045344 n

end

end A036247.P772763278861464853

namespace A036247

/-- `a(n-2)+a(n-1)*A045344(n)` -/
def P772763278861464853.Spec : Prop :=
  ∀ n, P772763278861464853.a n = A036247 (n + 1)

end A036247

/-! ## A036247.P4796532005629048723

`record[A083659(Δ[A061885(n)])]`
-/

namespace A036247.P4796532005629048723
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061885 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083659 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A036247.P4796532005629048723

namespace A036247

/-- `record[A083659(Δ[A061885(n)])]` -/
def P4796532005629048723.Spec : Prop :=
  ∀ n, P4796532005629048723.a n = A036247 (n + 1)

end A036247

/-!
# A036248: Denominator of fraction equal to the continued fraction [ 2, 3, 5, ..., prime(n) ].

The programs for A036248, the canonical program `A036248.P13737996813049907158` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A036248 has offset 1).

The definition of A036248 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A036248.P13737996813049907158

`A000040(n+1)*a(n-1)+a(n-2)` with `a(0)=1, a(1)=3`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A036248

/-- `A000040(n+1)*a(n-1)+a(n-2)` -/
def P13737996813049907158.Spec : Prop :=
  ∀ n, P13737996813049907158.a n = A036248 (n + 1)

theorem P13737996813049907158.correct : P13737996813049907158.Spec := by
  intro n
  simp only [A036248, Nat.add_sub_cancel]

end A036248

/-! ## A036248.P16454175011767589630

`a(n-2)+gcd(n+2, n+1)*p?[n-(-1)^n]*a(n-1)` with `a(0)=1, a(1)=3`
-/

namespace A036248.P16454175011767589630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (-1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  a (n - 2) + (Nat.gcd (n + 2) (n + 1) : ℤ) * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * a (n - 1)

end

end A036248.P16454175011767589630

namespace A036248

/-- `a(n-2)+gcd(n+2, n+1)*p?[n-(-1)^n]*a(n-1)` -/
def P16454175011767589630.Spec : Prop :=
  ∀ n, P16454175011767589630.a n = A036248 (n + 1)

end A036248

/-! ## A036248.P11208325273874897922

`a(n-2)+a(n-1)*A045344(n)` with `a(0)=1, a(1)=3`
-/

namespace A036248.P11208325273874897922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  a (n - 2) + a (n - 1) * A045344 n

end

end A036248.P11208325273874897922

namespace A036248

/-- `a(n-2)+a(n-1)*A045344(n)` -/
def P11208325273874897922.Spec : Prop :=
  ∀ n, P11208325273874897922.a n = A036248 (n + 1)

end A036248

/-! ## A036248.P13458233326058737829

`a(n-2)+a(n-1)*A008578(n+2)` with `a(0)=1, a(1)=3`
-/

namespace A036248.P13458233326058737829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  a (n - 2) + a (n - 1) * A008578 (n + 2)

end

end A036248.P13458233326058737829

namespace A036248

/-- `a(n-2)+a(n-1)*A008578(n+2)` -/
def P13458233326058737829.Spec : Prop :=
  ∀ n, P13458233326058737829.a n = A036248 (n + 1)

end A036248

/-! ## A036248.P11768929779424080156

`A083659(n+2)-∏[A000040(n+1)+1/a(n-1)]` with `a(0)=1`
-/

namespace A036248.P11768929779424080156
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  (A000040 (n + 1) : ℚ) + 1 / f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083659 (n + 2) : ℚ) - ∏ j ∈ Finset.range (n + 1), f1 j

end

end A036248.P11768929779424080156

namespace A036248

/-- `A083659(n+2)-∏[A000040(n+1)+1/a(n-1)]` -/
def P11768929779424080156.Spec : Prop :=
  ∀ n, P11768929779424080156.a n = (A036248 (n + 1) : ℚ)

end A036248

/-!
# A036249: Number of rooted trees of nonempty sets with n points. (Each node is a set of 1 or more points.)

The programs for A036249, there is no canonical definition to state claims against.
-/

/-! ## A036249.P10519948215567275253

`∑[A052855(n)]-A052855(n)`
-/

namespace A036249.P10519948215567275253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052855 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A052855 n

end

end A036249.P10519948215567275253

/-! ## A036249.P11977245185739963150

`A029856(n+1)-(A052855(n)+A000007(n))`
-/

namespace A036249.P11977245185739963150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029856 (n + 1) - (A052855 n + A000007 n)

end

end A036249.P11977245185739963150

/-! ## A036249.P4718130217012196163

`A029856(n+1)-(A052855(n)+A010051(2*(n+1)))`
-/

namespace A036249.P4718130217012196163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029856 (n + 1) - (A052855 n + A010051 (2 * (n + 1)))

end

end A036249.P4718130217012196163

/-! ## A036249.P17270815990569649859

`A029856(n+2)-(A052855(n+1)+A052855(n))`
-/

namespace A036249.P17270815990569649859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029856 (n + 2) - (A052855 (n + 1) + A052855 n)

end

end A036249.P17270815990569649859

/-! ## A036249.P5271455645076490989

`(A029856(n+1)-A052855(n))%A007719(n)`
-/

namespace A036249.P5271455645076490989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A029856 (n + 1) - A052855 n) (A007719 n)

end

end A036249.P5271455645076490989

/-!
# A036250: Number of trees of nonempty sets with n points. (Each node is a set of 1 or more points.)

The programs for A036250, there is no canonical definition to state claims against.
-/

/-! ## A036250.P17062122293152647588

`A036251(n)-(char[1]+char[2])`
-/

namespace A036250.P17062122293152647588
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036251 n - (((if ∃ j, f1 j = n then 1 else 0) + (if ∃ j, f2 j = n then 1 else 0) : ℕ) : ℤ)

end

end A036250.P17062122293152647588

/-! ## A036250.P8739404166197023526

`A036251(n-A171386(n+1))`
-/

namespace A036250.P8739404166197023526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036251 ((n : ℤ) - A171386 (n + 1)).toNat

end

end A036250.P8739404166197023526

/-! ## A036250.P15287220208242292813

`A036251(n-A010051(A027379(n)))`
-/

namespace A036250.P15287220208242292813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036251 ((n : ℤ) - A010051 (A027379 n).toNat).toNat

end

end A036250.P15287220208242292813

/-! ## A036250.P10608473813779299480

`A036251(n-A010051(A036561(n)))`
-/

namespace A036250.P10608473813779299480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036251 ((n : ℤ) - A010051 (A036561 n).toNat).toNat

end

end A036250.P10608473813779299480

/-! ## A036250.P4582912822032705775

`A036251(n-A010051(A038221(n)))`
-/

namespace A036250.P4582912822032705775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036251 ((n : ℤ) - A010051 (A038221 n).toNat).toNat

end

end A036250.P4582912822032705775

/-!
# A036251: Number of trees with 2-colored leaves.

The programs for A036251, there is no canonical definition to state claims against.
-/

/-! ## A036251.P6357123957699538172

`A036250(n)+char[1]+char[2]`
-/

namespace A036251.P6357123957699538172
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036250 n + (((if ∃ j, f1 j = n then 1 else 0) + (if ∃ j, f2 j = n then 1 else 0) : ℕ) : ℤ)

end

end A036251.P6357123957699538172

/-! ## A036251.P14381665492252196074

`A036250(A171386(n+1)+n)`
-/

namespace A036251.P14381665492252196074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036250 (A171386 (n + 1) + (n : ℤ)).toNat

end

end A036251.P14381665492252196074

/-! ## A036251.P3958343179529027328

`A036250(A010051(A027379(n))+n)`
-/

namespace A036251.P3958343179529027328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036250 (A010051 (A027379 n).toNat + (n : ℤ)).toNat

end

end A036251.P3958343179529027328

/-! ## A036251.P2285444684160921192

`A055672(A035114(n+1))+A036250(n)`
-/

namespace A036251.P2285444684160921192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055672 (A035114 (n + 1)).toNat + A036250 n

end

end A036251.P2285444684160921192

/-! ## A036251.P12599868708593014837

`A036250(A094497(n)+n)`
-/

namespace A036251.P12599868708593014837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036250 (A094497 n + (n : ℤ)).toNat

end

end A036251.P12599868708593014837

/-!
# A036252: Number of trees with 3-colored leaves.

The programs for A036252, there is no canonical definition to state claims against.
-/

/-! ## A036252.P17604941098793133780

`A231557(A045974(n+1))+A138415(n)`
-/

namespace A036252.P17604941098793133780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231557 (A045974 (n + 1)).toNat + A138415 n

end

end A036252.P17604941098793133780

/-!
# A036253: Numerator of fraction equal to the continued fraction [ 3, 1, 4, 1, 5... ] (first n digits of Pi).

The programs for A036253, there is no canonical definition to state claims against.
-/

/-! ## A036253.P36639781680492173

`a(n-2)+a(n-1)*A000796(n)` with `a(0)=3, a(1)=4`
-/

namespace A036253.P36639781680492173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 4] fun n a =>
  a (n - 2) + a (n - 1) * A000796 (n + 1)

end

end A036253.P36639781680492173

/-!
# A036254: Denominator of fraction equal to the continued fraction [ 3, 1, 4, 1, 5... ] (first n digits of Pi).

The programs for A036254, there is no canonical definition to state claims against.
-/

/-! ## A036254.P13364086254843095168

`a(n-2)+a(n-1)*A000796(n)` with `a(0)=1, a(1)=1`
-/

namespace A036254.P13364086254843095168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 2) + a (n - 1) * A000796 (n + 1)

end

end A036254.P13364086254843095168

/-!
# A036255: Number of inequivalent strings of 2n+1 digits, when 2 strings are equivalent if turning 1 upside down gives the other.

The programs for A036255, the canonical program `A036255.P4806996151842364725` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A036255 has offset 0).

The definition of A036255 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A036255.P4806996151842364725

`10^(2*n+1)-5^(2*n+1)/2+3*5^n/2`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A036255

/-- `10^(2*n+1)-5^(2*n+1)/2+3*5^n/2` -/
def P4806996151842364725.Spec : Prop :=
  ∀ n, P4806996151842364725.a n = (A036255 n : ℚ)

end A036255

/-! ## A036255.P13659858074188611518

`A036258(Δ[n²])`
-/

namespace A036255.P13659858074188611518
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036258 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A036255.P13659858074188611518

namespace A036255

/-- `A036258(Δ[n²])` -/
def P13659858074188611518.Spec : Prop :=
  ∀ n, P13659858074188611518.a n = A036255 n

end A036255

/-! ## A036255.P8204150504843709109

`lcm(3, A036258(2*n+1))`
-/

namespace A036255.P8204150504843709109
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 (A036258 (2 * n + 1))

end

end A036255.P8204150504843709109

namespace A036255

/-- `lcm(3, A036258(2*n+1))` -/
def P8204150504843709109.Spec : Prop :=
  ∀ n, (P8204150504843709109.a n : ℤ) = A036255 n

end A036255

/-! ## A036255.P8760094449255681275

`or(1, A036258(A005408(n)))`
-/

namespace A036255.P8760094449255681275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A036258 (A005408 n).toNat)

end

end A036255.P8760094449255681275

namespace A036255

/-- `or(1, A036258(A005408(n)))` -/
def P8760094449255681275.Spec : Prop :=
  ∀ n, P8760094449255681275.a n = A036255 n

end A036255

/-! ## A036255.P1278275994059815377

`record[A036258(A193356(n+1))]`
-/

namespace A036255.P1278275994059815377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036258 (A193356 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A036255.P1278275994059815377

namespace A036255

/-- `record[A036258(A193356(n+1))]` -/
def P1278275994059815377.Spec : Prop :=
  ∀ n, P1278275994059815377.a n = A036255 n

end A036255

/-! ## A036255.P10033312295626196070

`record[A036258(A033999(n)+n)]`
-/

namespace A036255.P10033312295626196070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036258 (A033999 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A036255.P10033312295626196070

namespace A036255

/-- `record[A036258(A033999(n)+n)]` -/
def P10033312295626196070.Spec : Prop :=
  ∀ n, P10033312295626196070.a n = A036255 n

end A036255

/-! ## A036255.P18020203512842376457

`record[A036258(log2(A262616(n))+1)]`
-/

namespace A036255.P18020203512842376457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036258 (SequenceMachineLib.roundAway (Real.logb 2 (A262616 n : ℝ) + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A036255.P18020203512842376457

namespace A036255

/-- `record[A036258(log2(A262616(n))+1)]` -/
def P18020203512842376457.Spec : Prop :=
  ∀ n, P18020203512842376457.a n = A036255 n

end A036255

/-! ## A036255.P3103914468399836579

`record[A036258(log2(2*A262616(n)))]`
-/

namespace A036255.P3103914468399836579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036258 (SequenceMachineLib.roundAway (Real.logb 2 (2 * A262616 n : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A036255.P3103914468399836579

namespace A036255

/-- `record[A036258(log2(2*A262616(n)))]` -/
def P3103914468399836579.Spec : Prop :=
  ∀ n, P3103914468399836579.a n = A036255 n

end A036255

/-! ## A036255.P16120050010675898667

`abs(A036258(A005408(n))*A330034(n))`
-/

namespace A036255.P16120050010675898667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A036258 (A005408 n).toNat * A330034 n|

end

end A036255.P16120050010675898667

namespace A036255

/-- `abs(A036258(A005408(n))*A330034(n))` -/
def P16120050010675898667.Spec : Prop :=
  ∀ n, P16120050010675898667.a n = A036255 n

end A036255

/-! ## A036255.P4267469046572561519

`A087960(n)²*A036258(A005408(n))`
-/

namespace A036255.P4267469046572561519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087960 n ^ 2 * A036258 (A005408 n).toNat

end

end A036255.P4267469046572561519

namespace A036255

/-- `A087960(n)²*A036258(A005408(n))` -/
def P4267469046572561519.Spec : Prop :=
  ∀ n, P4267469046572561519.a n = A036255 n

end A036255

/-!
# A036256: a(n) = Sum_{i=0..n} binomial(i,floor(i/2)).

The programs for A036256, the canonical program `A036256.P16582203040739335847` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A036256 has offset 0).

The definition of A036256 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 336 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A036256.P14715584631051038058

`∑[∏[2*or(1, n)/(n+1)]/2]`
-/

namespace A036256.P14715584631051038058
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * Nat.lor 1 n : ℚ) / (n + 1 : ℚ)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f2 j) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036256.P14715584631051038058

namespace A036256

/-- `∑[∏[2*or(1, n)/(n+1)]/2]` -/
def P14715584631051038058.Spec : Prop :=
  ∀ n, P14715584631051038058.a n = (A036256 n : ℚ)

end A036256

/-! ## A036256.P13867373362450950188

`∑[n*a(n-1)/∑[n%2]]` with `a(0)=1`
-/

namespace A036256.P13867373362450950188
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  (n : ℚ) * (f1 (n - 1) / ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℚ))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036256.P13867373362450950188

namespace A036256

/-- `∑[n*a(n-1)/∑[n%2]]` -/
def P13867373362450950188.Spec : Prop :=
  ∀ n, P13867373362450950188.a n = (A036256 n : ℚ)

end A036256

/-! ## A036256.P3682112837052225484

`∑[n/floor((n+1)/2)*a(n-1)]` with `a(0)=1`
-/

namespace A036256.P3682112837052225484
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  (n : ℚ) / (⌊(n + 1 : ℚ) / 2⌋ : ℚ) * f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036256.P3682112837052225484

namespace A036256

/-- `∑[n/floor((n+1)/2)*a(n-1)]` -/
def P3682112837052225484.Spec : Prop :=
  ∀ n, P3682112837052225484.a n = (A036256 n : ℚ)

end A036256

/-! ## A036256.P13433889162515582387

`∑[abs(a(n-1)/(floor(n/2)/n-1))]` with `a(0)=1`
-/

namespace A036256.P13433889162515582387
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  |f1 (n - 1) / ((⌊(n : ℚ) / 2⌋ : ℚ) / (n : ℚ) - 1)|

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036256.P13433889162515582387

namespace A036256

/-- `∑[abs(a(n-1)/(floor(n/2)/n-1))]` -/
def P13433889162515582387.Spec : Prop :=
  ∀ n, P13433889162515582387.a n = (A036256 n : ℚ)

end A036256

/-! ## A036256.P3832858630410001666

`∑[-(a(n-1)/(floor(n/2)/n-1))]` with `a(0)=1`
-/

namespace A036256.P3832858630410001666
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  -(f1 (n - 1) / ((⌊(n : ℚ) / 2⌋ : ℚ) / (n : ℚ) - 1))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036256.P3832858630410001666

namespace A036256

/-- `∑[-(a(n-1)/(floor(n/2)/n-1))]` -/
def P3832858630410001666.Spec : Prop :=
  ∀ n, P3832858630410001666.a n = (A036256 n : ℚ)

end A036256

/-! ## A036256.P16582203040739335847

`∑[A001405(n)]`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A036256

/-- `∑[A001405(n)]` -/
def P16582203040739335847.Spec : Prop :=
  ∀ n, P16582203040739335847.a n = A036256 n

theorem P16582203040739335847.correct : P16582203040739335847.Spec := by
  intro n
  simp only [A036256]

end A036256

/-! ## A036256.P5887195381456674734

`∑[abs(A126930(n))]`
-/

namespace A036256.P5887195381456674734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A126930 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036256.P5887195381456674734

namespace A036256

/-- `∑[abs(A126930(n))]` -/
def P5887195381456674734.Spec : Prop :=
  ∀ n, P5887195381456674734.a n = A036256 n

end A036256

/-! ## A036256.P6115709506490749223

`∑[A014495(n)+1]`
-/

namespace A036256.P6115709506490749223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014495 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036256.P6115709506490749223

namespace A036256

/-- `∑[A014495(n)+1]` -/
def P6115709506490749223.Spec : Prop :=
  ∀ n, P6115709506490749223.a n = A036256 n

theorem P6115709506490749223.correct : P6115709506490749223.Spec := by
  intro n
  simp only [A036256, Nat.add_sub_cancel, A036256.P6115709506490749223.f1, A036256.P6115709506490749223.a, A036256.P16582203040739335847.f1, A036256.P16582203040739335847.a, A001405, A001405.P5205018418992951678.a, A014495, A014495.P8648755420632744383.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A036256

/-! ## A036256.P508978424153653360

`∑[A210736(n+1)]`
-/

namespace A036256.P508978424153653360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036256.P508978424153653360

namespace A036256

/-- `∑[A210736(n+1)]` -/
def P508978424153653360.Spec : Prop :=
  ∀ n, P508978424153653360.a n = A036256 n

end A036256

/-! ## A036256.P4488077261528258752

`∑[A051920(n)-1]`
-/

namespace A036256.P4488077261528258752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051920 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036256.P4488077261528258752

namespace A036256

/-- `∑[A051920(n)-1]` -/
def P4488077261528258752.Spec : Prop :=
  ∀ n, P4488077261528258752.a n = A036256 n

theorem P4488077261528258752.correct : P4488077261528258752.Spec := by
  intro n
  simp only [A036256, Nat.add_sub_cancel, A036256.P4488077261528258752.f1, A036256.P4488077261528258752.a, A036256.P16582203040739335847.f1, A036256.P16582203040739335847.a, A001405, A001405.P5205018418992951678.a, A051920, A051920.P2707849764288868979.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A036256

/-! ## A036256.P17370376015413037919

`∑[A201686(n)+2]`
-/

namespace A036256.P17370376015413037919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201686 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036256.P17370376015413037919

namespace A036256

/-- `∑[A201686(n)+2]` -/
def P17370376015413037919.Spec : Prop :=
  ∀ n, P17370376015413037919.a n = A036256 n

theorem P17370376015413037919.correct : P17370376015413037919.Spec := by
  intro n
  simp only [A036256, Nat.add_sub_cancel, A036256.P17370376015413037919.f1, A036256.P17370376015413037919.a, A036256.P16582203040739335847.f1, A036256.P16582203040739335847.a, A001405, A001405.P5205018418992951678.a, A201686, A201686.P5560453005708353295.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A036256

/-! ## A036256.P2818951671916510578

`A072100(n+2)-1`
-/

namespace A036256.P2818951671916510578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072100 (n + 2) - 1

end

end A036256.P2818951671916510578

namespace A036256

/-- `A072100(n+2)-1` -/
def P2818951671916510578.Spec : Prop :=
  ∀ n, P2818951671916510578.a n = A036256 n

end A036256

/-! ## A036256.P2615961340796572189

`∑[A063886(n+1)/2]`
-/

namespace A036256.P2615961340796572189
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A063886 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036256.P2615961340796572189

namespace A036256

/-- `∑[A063886(n+1)/2]` -/
def P2615961340796572189.Spec : Prop :=
  ∀ n, P2615961340796572189.a n = (A036256 n : ℚ)

end A036256

/-! ## A036256.P3422814469020970537

`∑[A182027(n+2)/2]`
-/

namespace A036256.P3422814469020970537
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A182027 (n + 2) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036256.P3422814469020970537

namespace A036256

/-- `∑[A182027(n+2)/2]` -/
def P3422814469020970537.Spec : Prop :=
  ∀ n, P3422814469020970537.a n = (A036256 n : ℚ)

end A036256

/-! ## A036256.P837363762934321991

`∑[abs(Δ[A072100(n+1)])]`
-/

namespace A036256.P837363762934321991
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072100 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036256.P837363762934321991

namespace A036256

/-- `∑[abs(Δ[A072100(n+1)])]` -/
def P837363762934321991.Spec : Prop :=
  ∀ n, P837363762934321991.a n = A036256 n

end A036256

/-! ## A036256.P9663863529208618764

`A050168(n)+a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A036256.P9663863529208618764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A050168 n + a (n - 2)

end

end A036256.P9663863529208618764

namespace A036256

/-- `A050168(n)+a(n-2)` -/
def P9663863529208618764.Spec : Prop :=
  ∀ n, P9663863529208618764.a n = A036256 n

end A036256

/-! ## A036256.P11321019732436624354

`A218008(n)+A166588(n)`
-/

namespace A036256.P11321019732436624354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218008 n + A166588 n

end

end A036256.P11321019732436624354

namespace A036256

/-- `A218008(n)+A166588(n)` -/
def P11321019732436624354.Spec : Prop :=
  ∀ n, P11321019732436624354.a n = A036256 n

end A036256

/-! ## A036256.P5663346284233324058

`∑[A126120(n)+A037952(n)]`
-/

namespace A036256.P5663346284233324058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126120 n + A037952 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036256.P5663346284233324058

namespace A036256

/-- `∑[A126120(n)+A037952(n)]` -/
def P5663346284233324058.Spec : Prop :=
  ∀ n, P5663346284233324058.a n = A036256 n

end A036256

/-! ## A036256.P9749365299370644869

`∑[A138364(n)+A126869(n)]`
-/

namespace A036256.P9749365299370644869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138364 n + A126869 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036256.P9749365299370644869

namespace A036256

/-- `∑[A138364(n)+A126869(n)]` -/
def P9749365299370644869.Spec : Prop :=
  ∀ n, P9749365299370644869.a n = A036256 n

end A036256

/-! ## A036256.P13143740845701083093

`A174783(n+1)+A174783(n)`
-/

namespace A036256.P13143740845701083093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174783 (n + 1) + A174783 n

end

end A036256.P13143740845701083093

namespace A036256

/-- `A174783(n+1)+A174783(n)` -/
def P13143740845701083093.Spec : Prop :=
  ∀ n, P13143740845701083093.a n = A036256 n

end A036256

/-!
# A036257: Number of inequivalent strings of 2n digits, when 2 strings are equivalent if turning 1 upside down gives the other.

The programs for A036257, the canonical program `A036257.P5219115607869664131` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A036257 has offset 0).

The definition of A036257 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A036257.P5219115607869664131

`10^(2*n)-5^(2*n)/2+5^n/2`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A036257

/-- `10^(2*n)-5^(2*n)/2+5^n/2` -/
def P5219115607869664131.Spec : Prop :=
  ∀ n, P5219115607869664131.a n = (A036257 n : ℚ)

end A036257

/-! ## A036257.P12832235690108314493

`A036258(2*n)`
-/

namespace A036257.P12832235690108314493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036258 (2 * n)

end

end A036257.P12832235690108314493

namespace A036257

/-- `A036258(2*n)` -/
def P12832235690108314493.Spec : Prop :=
  ∀ n, P12832235690108314493.a n = A036257 n

end A036257

/-! ## A036257.P5290940912910231020

`record[A036258(log2(A262616(n)))]`
-/

namespace A036257.P5290940912910231020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036258 (SequenceMachineLib.roundAway (Real.logb 2 (A262616 n : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A036257.P5290940912910231020

namespace A036257

/-- `record[A036258(log2(A262616(n)))]` -/
def P5290940912910231020.Spec : Prop :=
  ∀ n, P5290940912910231020.a n = A036257 n

end A036257

/-! ## A036257.P17151031392534732915

`record[A036258(n)/A033999(n)]`
-/

namespace A036257.P17151031392534732915
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A036258 n : ℚ) / (A033999 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A036257.P17151031392534732915

namespace A036257

/-- `record[A036258(n)/A033999(n)]` -/
def P17151031392534732915.Spec : Prop :=
  ∀ n, P17151031392534732915.a n = (A036257 n : ℚ)

end A036257

/-! ## A036257.P1593841605420735118

`lcm(A033999(n), A036258(A005843(n)))`
-/

namespace A036257.P1593841605420735118
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A036258 (A005843 n).toNat)

end

end A036257.P1593841605420735118

namespace A036257

/-- `lcm(A033999(n), A036258(A005843(n)))` -/
def P1593841605420735118.Spec : Prop :=
  ∀ n, (P1593841605420735118.a n : ℤ) = A036257 n

end A036257

/-!
# A036258: Number of inequivalent strings of n digits, when 2 strings are equivalent if turning 1 upside down gives the other.

The programs for A036258, the canonical program `A036258.P3684989130183971127` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A036258 has offset 0).

The definition of A036258 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A036258.P3684989130183971127

`15*a(n-1)-45*a(n-2)-75*a(n-3)+250*a(n-4)` with `a(0)=1, a(1)=9, a(2)=90, a(3)=945`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A036258

/-- `15*a(n-1)-45*a(n-2)-75*a(n-3)+250*a(n-4)` -/
def P3684989130183971127.Spec : Prop :=
  ∀ n, P3684989130183971127.a n = A036258 n

theorem P3684989130183971127.correct : P3684989130183971127.Spec := by
  intro n
  simp only [A036258]

end A036258

/-! ## A036258.P13331203031400208875

`10^n-(A121102(n+2)+A003463(n))`
-/

namespace A036258.P13331203031400208875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (10 ^ n : ℤ) - (A121102 (n + 2) + A003463 n)

end

end A036258.P13331203031400208875

namespace A036258

/-- `10^n-(A121102(n+2)+A003463(n))` -/
def P13331203031400208875.Spec : Prop :=
  ∀ n, P13331203031400208875.a n = A036258 n

end A036258

/-! ## A036258.P2765746810462928602

`A294566(n+1)+A011557(n)-A034478(n)`
-/

namespace A036258.P2765746810462928602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294566 (n + 1) + (A011557 n - A034478 n)

end

end A036258.P2765746810462928602

namespace A036258

/-- `A294566(n+1)+A011557(n)-A034478(n)` -/
def P2765746810462928602.Spec : Prop :=
  ∀ n, P2765746810462928602.a n = A036258 n

end A036258

/-! ## A036258.P13995528440912420659

`∪[A036255(n), A036257(n)]`
-/

namespace A036258.P13995528440912420659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036255 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036257 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A036258.P13995528440912420659

namespace A036258

/-- `∪[A036255(n), A036257(n)]` -/
def P13995528440912420659.Spec : Prop :=
  ∀ n, (P13995528440912420659.a n : ℤ) = A036258 n

end A036258

/-! ## A036258.P11699884723372384063

`∪[A011557(n)²-A162729(n), A036255(n)]`
-/

namespace A036258.P11699884723372384063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011557 n ^ 2 - A162729 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036255 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A036258.P11699884723372384063

namespace A036258

/-- `∪[A011557(n)²-A162729(n), A036255(n)]` -/
def P11699884723372384063.Spec : Prop :=
  ∀ n, (P11699884723372384063.a n : ℤ) = A036258 n

end A036258

/-! ## A036258.P7358186876860624017

`∪[A011557(2*n)-A162729(n), A036255(n)]`
-/

namespace A036258.P7358186876860624017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011557 (2 * n) - A162729 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036255 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A036258.P7358186876860624017

namespace A036258

/-- `∪[A011557(2*n)-A162729(n), A036255(n)]` -/
def P7358186876860624017.Spec : Prop :=
  ∀ n, (P7358186876860624017.a n : ℤ) = A036258 n

end A036258

/-!
# A036259: Numbers k such that the multiplicative order of 2 modulo k is odd.

The programs for A036259, there is no canonical definition to state claims against.
-/

/-! ## A036259.P18178439546123680532

`2*A053006(n+1)-1`
-/

namespace A036259.P18178439546123680532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A053006 (n + 1) - 1

end

end A036259.P18178439546123680532

/-! ## A036259.P3836157461868979050

`A000265(A053006(n+1)+A053006(n+1)-1)`
-/

namespace A036259.P3836157461868979050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A053006 (n + 1) + (A053006 (n + 1) - 1)).toNat

end

end A036259.P3836157461868979050

/-! ## A036259.P4297205047829505270

`record[2*n*A002326(n)%2+1]`
-/

namespace A036259.P4297205047829505270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) * Int.tmod (A002326 n) 2 + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A036259.P4297205047829505270

/-! ## A036259.P5556747606428402946

`A004273(A053006(n+1))`
-/

namespace A036259.P5556747606428402946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A053006 (n + 1)).toNat

end

end A036259.P5556747606428402946

/-! ## A036259.P1803436162954893778

`A005408(eq[A002326(n), A302141(n)])`
-/

namespace A036259.P1803436162954893778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002326 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302141 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A036259.P1803436162954893778

/-! ## A036259.P9746424104871099937

`A005408(lt[A002326(n), A302141(n)+1])`
-/

namespace A036259.P9746424104871099937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002326 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302141 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A036259.P9746424104871099937

/-! ## A036259.P10108218211121191804

`A005408(lt[A002326(n)-1, A302141(n)])`
-/

namespace A036259.P10108218211121191804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002326 n - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302141 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A036259.P10108218211121191804

/-! ## A036259.P5354492463458106200

`A005408(lt[A002326(n), 2*A302141(n)])`
-/

namespace A036259.P5354492463458106200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002326 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A302141 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A036259.P5354492463458106200

/-! ## A036259.P8846980261872745535

`A005408(lt[A002326(n)/2, A302141(n)])`
-/

namespace A036259.P8846980261872745535
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002326 n : ℚ) / 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302141 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n)

end

end A036259.P8846980261872745535

/-! ## A036259.P3358708976217515097

`A005408(eq[2*A002326(n), A055388(n+1)])`
-/

namespace A036259.P3358708976217515097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A002326 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055388 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A036259.P3358708976217515097

/-! ## A036259.P16992740645899428608

`A005408(eq[2, A055388(n+1)/A002326(n)])`
-/

namespace A036259.P16992740645899428608
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055388 (n + 1) : ℚ) / (A002326 n : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n)

end

end A036259.P16992740645899428608

/-! ## A036259.P11715200966238494296

`A014681(2*A053006(n+1))`
-/

namespace A036259.P11715200966238494296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (2 * A053006 (n + 1)).toNat

end

end A036259.P11715200966238494296

/-! ## A036259.P13814314813254020606

`record[and(1, A007733(n+1))*A000265(n+1)]`
-/

namespace A036259.P13814314813254020606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A007733 (n + 1)) * A000265 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A036259.P13814314813254020606

/-! ## A036259.P2637874514737658582

`record[A000265(n^and(1, A007733(n+1))+1)]`
-/

namespace A036259.P2637874514737658582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (SequenceMachineLib.roundAway ((n : ℚ) ^ (Int.land 1 (A007733 (n + 1)) : ℤ) + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A036259.P2637874514737658582

/-! ## A036259.P325497783907766075

`record[A000035(A054703(2*n+1))*(2*n+1)]`
-/

namespace A036259.P325497783907766075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A054703 (2 * n + 1)).toNat * (2 * n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A036259.P325497783907766075

/-! ## A036259.P3392735699635933925

`A255347(A053006(n+1)+A053006(n+1)-1)`
-/

namespace A036259.P3392735699635933925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255347 (A053006 (n + 1) + (A053006 (n + 1) - 1)).toNat

end

end A036259.P3392735699635933925

/-! ## A036259.P3320544356463433248

`A053006(n+1)+A053006(n+1)-A155865(A000096(n))`
-/

namespace A036259.P3320544356463433248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053006 (n + 1) + (A053006 (n + 1) - A155865 (A000096 n).toNat)

end

end A036259.P3320544356463433248

/-!
# A036261: Triangle of numbers arising from Gilbreath's conjecture: successive absolute differences of primes (read by antidiagonals upwards, omitting the initial row of primes).

The programs for A036261, there is no canonical definition to state claims against.
-/

/-! ## A036261.P7819464226044674522

`A036262(∑[char[∑[n]]]+n)`
-/

namespace A036261.P7819464226044674522
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036262 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A036261.P7819464226044674522

/-! ## A036261.P17817658157962644429

`A036262(A007401(n+1))%24`
-/

namespace A036261.P17817658157962644429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A036262 (A007401 (n + 1)).toNat) 24

end

end A036261.P17817658157962644429

/-! ## A036261.P18223621902536372317

`filter[A036262(n+1), A266591(#)]`
-/

namespace A036261.P18223621902536372317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036262 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266591 (f1 j).toNat = 1) n)

end

end A036261.P18223621902536372317

/-! ## A036261.P5047430937884842151

`filter[A036262(n+1), A354034(#)]`
-/

namespace A036261.P5047430937884842151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036262 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354034 (f1 j).toNat = 1) n)

end

end A036261.P5047430937884842151

/-! ## A036261.P8326612497464132604

`gcd(A000038(n), A036262(A007401(n+1)))`
-/

namespace A036261.P8326612497464132604
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A036262 (A007401 (n + 1)).toNat)

end

end A036261.P8326612497464132604

/-! ## A036261.P1001362317973679220

`lcm(A033999(n), A036262(A007401(n+1)))`
-/

namespace A036261.P1001362317973679220
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A036262 (A007401 (n + 1)).toNat)

end

end A036261.P1001362317973679220

/-! ## A036261.P16620860216113204055

`gcd(2, A087681(n+1))*A036262(A007401(n+1))`
-/

namespace A036261.P16620860216113204055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 2 (A087681 (n + 1)) : ℤ) * A036262 (A007401 (n + 1)).toNat

end

end A036261.P16620860216113204055

/-! ## A036261.P2095255943613768389

`A001222(A101300(n))*A036262(A007401(n+1))`
-/

namespace A036261.P2095255943613768389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A101300 n).toNat * A036262 (A007401 (n + 1)).toNat

end

end A036261.P2095255943613768389

/-! ## A036261.P2384651013305762376

`A036262(A007401(n+1))^A008683(A001747(n+1))`
-/

namespace A036261.P2384651013305762376
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A036262 (A007401 (n + 1)).toNat : ℚ) ^ (A008683 (A001747 (n + 1)).toNat : ℤ)

end

end A036261.P2384651013305762376

/-! ## A036261.P14129081650633862349

`A049084(A001358(n+1))+A036262(A007401(n+1))`
-/

namespace A036261.P14129081650633862349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (A001358 (n + 1)).toNat + A036262 (A007401 (n + 1)).toNat

end

end A036261.P14129081650633862349

/-! ## A036261.P8347506121024649358

`A008304(A127739(n+1))*A036262(A007401(n+1))`
-/

namespace A036261.P8347506121024649358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008304 (A127739 (n + 1)).toNat * A036262 (A007401 (n + 1)).toNat

end

end A036261.P8347506121024649358

/-! ## A036261.P12809892106026864760

`A001222(A077800(n+1))*A036262(A007401(n+1))`
-/

namespace A036261.P12809892106026864760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A077800 (n + 1)).toNat * A036262 (A007401 (n + 1)).toNat

end

end A036261.P12809892106026864760

/-! ## A036261.P2867740962029955434

`A001222(A166573(n+1))*A036262(A007401(n+1))`
-/

namespace A036261.P2867740962029955434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A166573 (n + 1)).toNat * A036262 (A007401 (n + 1)).toNat

end

end A036261.P2867740962029955434

/-! ## A036261.P4851880377502330862

`A001222(A166579(n+1))*A036262(A007401(n+1))`
-/

namespace A036261.P4851880377502330862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A166579 (n + 1)).toNat * A036262 (A007401 (n + 1)).toNat

end

end A036261.P4851880377502330862

/-! ## A036261.P14278889038356037901

`A001222(A166559(n+1))*A036262(A007401(n+1))`
-/

namespace A036261.P14278889038356037901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A166559 (n + 1)).toNat * A036262 (A007401 (n + 1)).toNat

end

end A036261.P14278889038356037901

/-!
# A036262: Array of numbers read by upward antidiagonals, arising from Gilbreath's conjecture: leading row lists the primes; the following rows give absolute values of differences of previous row.

The programs for A036262, there is no canonical definition to state claims against.
-/

/-! ## A036262.P10989132627379791315

`A362463(comp[∑[n]]+1)`
-/

namespace A036262.P10989132627379791315
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362463 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1)

end

end A036262.P10989132627379791315

/-! ## A036262.P4062090710584513648

`A319494(A273751(n+1))`
-/

namespace A036262.P4062090710584513648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319494 (A273751 (n + 1)).toNat

end

end A036262.P4062090710584513648

/-!
# A036263: Second differences of primes.

The programs for A036263, the canonical program `A036263.P14888342997651084870` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A036263 has offset 1).

The definition of A036263 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A036263.P14888342997651084870

`A001223(n+2)-A001223(n+1)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A036263

/-- `A001223(n+2)-A001223(n+1)` -/
def P14888342997651084870.Spec : Prop :=
  ∀ n, P14888342997651084870.a n = A036263 (n + 1)

theorem P14888342997651084870.correct : P14888342997651084870.Spec := by
  intro n
  simp only [A036263, Nat.add_sub_cancel]

end A036263

/-! ## A036263.P6013464544345784613

`A000040(n+1)+A000040(n+3)-2*A000040(n+2)`
-/

namespace A036263.P6013464544345784613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + A000040 (n + 3) - 2 * A000040 (n + 2)

end

end A036263.P6013464544345784613

namespace A036263

/-- `A000040(n+1)+A000040(n+3)-2*A000040(n+2)` -/
def P6013464544345784613.Spec : Prop :=
  ∀ n, P6013464544345784613.a n = A036263 (n + 1)

theorem P6013464544345784613.correct : P6013464544345784613.Spec := by
  intro n
  simp only [A036263, Nat.add_sub_cancel, A036263.P6013464544345784613.a, A036263.P14888342997651084870.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001223, A001223.P5034056745985311719.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A036263

/-! ## A036263.P5587691254995537578

`Δ[A001223(n+1)]`
-/

namespace A036263.P5587691254995537578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A036263.P5587691254995537578

namespace A036263

/-- `Δ[A001223(n+1)]` -/
def P5587691254995537578.Spec : Prop :=
  ∀ n, P5587691254995537578.a n = A036263 (n + 1)

theorem P5587691254995537578.correct : P5587691254995537578.Spec := by
  intro n
  simp only [A036263, Nat.add_sub_cancel, A036263.P5587691254995537578.f1, A036263.P5587691254995537578.a, A036263.P14888342997651084870.a, SequenceMachineLib.memo_apply]

end A036263

/-! ## A036263.P8611879157447159853

`A036264(n)+a(n-1)` with `a(0)=1`
-/

namespace A036263.P8611879157447159853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A036264 n + a (n - 1)

end

end A036263.P8611879157447159853

namespace A036263

/-- `A036264(n)+a(n-1)` -/
def P8611879157447159853.Spec : Prop :=
  ∀ n, P8611879157447159853.a n = A036263 (n + 1)

end A036263

/-! ## A036263.P16145026673840812893

`A261470(n)-a(n-1)` with `a(0)=1`
-/

namespace A036263.P16145026673840812893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A261470 n - a (n - 1)

end

end A036263.P16145026673840812893

namespace A036263

/-- `A261470(n)-a(n-1)` -/
def P16145026673840812893.Spec : Prop :=
  ∀ n, P16145026673840812893.a n = A036263 (n + 1)

end A036263

/-! ## A036263.P281606707606636099

`Δ[A031131(n)-a(n-1)]` with `a(0)=1`
-/

namespace A036263.P281606707606636099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A031131 n - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A036263.P281606707606636099

namespace A036263

/-- `Δ[A031131(n)-a(n-1)]` -/
def P281606707606636099.Spec : Prop :=
  ∀ n, P281606707606636099.a n = A036263 (n + 1)

end A036263

/-! ## A036263.P17564673725343363255

`A075526(n)-A375087(n+1)`
-/

namespace A036263.P17564673725343363255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075526 n - A375087 (n + 1)

end

end A036263.P17564673725343363255

namespace A036263

/-- `A075526(n)-A375087(n+1)` -/
def P17564673725343363255.Spec : Prop :=
  ∀ n, P17564673725343363255.a n = A036263 (n + 1)

theorem P17564673725343363255.correct : P17564673725343363255.Spec := by
  intro n
  simp only [A036263, Nat.add_sub_cancel, A036263.P17564673725343363255.a, A036263.P14888342997651084870.a, A001223, A001223.P5034056745985311719.a, A075526, A075526.P13453056913313804413.a, A375087, A375087.P8456723521891746720.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A008578, A008578.P3639467937083264764.a, A158611, A158611.P9275629407611603775.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A036263

/-! ## A036263.P14013775907424199525

`Δ[A007504(n)-A166448(n+1)]`
-/

namespace A036263.P14013775907424199525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n - A166448 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A036263.P14013775907424199525

namespace A036263

/-- `Δ[A007504(n)-A166448(n+1)]` -/
def P14013775907424199525.Spec : Prop :=
  ∀ n, P14013775907424199525.a n = A036263 (n + 1)

end A036263

/-! ## A036263.P13047359051812047485

`A062234(n+1)-A096379(n+1)`
-/

namespace A036263.P13047359051812047485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062234 (n + 1) - A096379 (n + 1)

end

end A036263.P13047359051812047485

namespace A036263

/-- `A062234(n+1)-A096379(n+1)` -/
def P13047359051812047485.Spec : Prop :=
  ∀ n, P13047359051812047485.a n = A036263 (n + 1)

theorem P13047359051812047485.correct : P13047359051812047485.Spec := by
  intro n
  simp only [A036263, Nat.add_sub_cancel, A036263.P13047359051812047485.a, A036263.P14888342997651084870.a, A001223, A001223.P5034056745985311719.a, A062234, A062234.P8592873382335253705.a, A096379, A096379.P509834506880397996.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A036263

/-! ## A036263.P17636816884089753649

`A093667(n+1)-A065091(n+1)`
-/

namespace A036263.P17636816884089753649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093667 (n + 1) - A065091 (n + 1)

end

end A036263.P17636816884089753649

namespace A036263

/-- `A093667(n+1)-A065091(n+1)` -/
def P17636816884089753649.Spec : Prop :=
  ∀ n, P17636816884089753649.a n = A036263 (n + 1)

theorem P17636816884089753649.correct : P17636816884089753649.Spec := by
  intro n
  simp only [A036263, Nat.add_sub_cancel, A036263.P17636816884089753649.a, A036263.P14888342997651084870.a, A001223, A001223.P5034056745985311719.a, A065091, A065091.P6971844946592549357.a, A093667, A093667.P4637239888588385054.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A036263

/-! ## A036263.P8193927638452423980

`A004139(n+1)-A211280(n+1)`
-/

namespace A036263.P8193927638452423980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1) - A211280 (n + 1)

end

end A036263.P8193927638452423980

namespace A036263

/-- `A004139(n+1)-A211280(n+1)` -/
def P8193927638452423980.Spec : Prop :=
  ∀ n, P8193927638452423980.a n = A036263 (n + 1)

end A036263

/-! ## A036263.P16448985844217408893

`A176246(n+1)-A046933(n+1)`
-/

namespace A036263.P16448985844217408893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176246 (n + 1) - A046933 (n + 1)

end

end A036263.P16448985844217408893

namespace A036263

/-- `A176246(n+1)-A046933(n+1)` -/
def P16448985844217408893.Spec : Prop :=
  ∀ n, P16448985844217408893.a n = A036263 (n + 1)

theorem P16448985844217408893.correct : P16448985844217408893.Spec := by
  intro n
  simp only [A036263, Nat.add_sub_cancel, A036263.P16448985844217408893.a, A036263.P14888342997651084870.a, A001223, A001223.P5034056745985311719.a, A046933, A046933.P9479947770746769512.a, A176246, A176246.P14955082673946823167.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A036263

/-! ## A036263.P4694428079538089138

`A215848(n+1)-A210497(n+1)`
-/

namespace A036263.P4694428079538089138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215848 (n + 1) - A210497 (n + 1)

end

end A036263.P4694428079538089138

namespace A036263

/-- `A215848(n+1)-A210497(n+1)` -/
def P4694428079538089138.Spec : Prop :=
  ∀ n, P4694428079538089138.a n = A036263 (n + 1)

theorem P4694428079538089138.correct : P4694428079538089138.Spec := by
  intro n
  simp only [A036263, Nat.add_sub_cancel, A036263.P4694428079538089138.a, A036263.P14888342997651084870.a, A001223, A001223.P5034056745985311719.a, A210497, A210497.P11511747503835237208.a, A215848, A215848.P17068717743202425727.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A036263

/-! ## A036263.P2595358278606882571

`A000040(n+1)-A062234(n+2)`
-/

namespace A036263.P2595358278606882571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - A062234 (n + 2)

end

end A036263.P2595358278606882571

namespace A036263

/-- `A000040(n+1)-A062234(n+2)` -/
def P2595358278606882571.Spec : Prop :=
  ∀ n, P2595358278606882571.a n = A036263 (n + 1)

theorem P2595358278606882571.correct : P2595358278606882571.Spec := by
  intro n
  simp only [A036263, Nat.add_sub_cancel, A036263.P2595358278606882571.a, A036263.P14888342997651084870.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001223, A001223.P5034056745985311719.a, A062234, A062234.P8592873382335253705.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A036263

/-! ## A036263.P18201159776381336753

`A191472(n+1)-(A305748(n+1)+A305748(n+1))`
-/

namespace A036263.P18201159776381336753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191472 (n + 1) - (A305748 (n + 1) + A305748 (n + 1))

end

end A036263.P18201159776381336753

namespace A036263

/-- `A191472(n+1)-(A305748(n+1)+A305748(n+1))` -/
def P18201159776381336753.Spec : Prop :=
  ∀ n, P18201159776381336753.a n = A036263 (n + 1)

end A036263

/-! ## A036263.P829427915997826401

`A098764(n+1)-(A062234(n+1)+A062234(n+2))`
-/

namespace A036263.P829427915997826401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098764 (n + 1) - (A062234 (n + 1) + A062234 (n + 2))

end

end A036263.P829427915997826401

namespace A036263

/-- `A098764(n+1)-(A062234(n+1)+A062234(n+2))` -/
def P829427915997826401.Spec : Prop :=
  ∀ n, P829427915997826401.a n = A036263 (n + 1)

theorem P829427915997826401.correct : P829427915997826401.Spec := by
  intro n
  simp only [A036263, Nat.add_sub_cancel, A036263.P829427915997826401.a, A036263.P14888342997651084870.a, A001223, A001223.P5034056745985311719.a, A062234, A062234.P8592873382335253705.a, A098764, A098764.P1450263935949736531.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A036263

/-! ## A036263.P14862326399539283835

`A000040(n+1)+A166448(n+1)-A166448(n+2)`
-/

namespace A036263.P14862326399539283835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + (A166448 (n + 1) - A166448 (n + 2))

end

end A036263.P14862326399539283835

namespace A036263

/-- `A000040(n+1)+A166448(n+1)-A166448(n+2)` -/
def P14862326399539283835.Spec : Prop :=
  ∀ n, P14862326399539283835.a n = A036263 (n + 1)

end A036263

/-! ## A036263.P13264357983831887255

`Δ[A046933(n+1)]`
-/

namespace A036263.P13264357983831887255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046933 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A036263.P13264357983831887255

namespace A036263

/-- `Δ[A046933(n+1)]` -/
def P13264357983831887255.Spec : Prop :=
  ∀ n, P13264357983831887255.a n = A036263 (n + 1)

theorem P13264357983831887255.correct : P13264357983831887255.Spec := by
  intro n
  simp only [A036263, Nat.add_sub_cancel, A036263.P13264357983831887255.f1, A036263.P13264357983831887255.a, A036263.P14888342997651084870.a, A001223, A001223.P5034056745985311719.a, A046933, A046933.P9479947770746769512.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A036263

/-! ## A036263.P16964939053472027306

`Δ[sqrt(A076821(n+1))]`
-/

namespace A036263.P16964939053472027306
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A076821 (n + 1) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A036263.P16964939053472027306

namespace A036263

/-- `Δ[sqrt(A076821(n+1))]` -/
def P16964939053472027306.Spec : Prop :=
  ∀ n, P16964939053472027306.a n = (A036263 (n + 1) : ℝ)

end A036263

/-! ## A036263.P11337537340198611058

`Δ[log2(A218075(n+1))]`
-/

namespace A036263.P11337537340198611058
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A218075 (n + 1) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A036263.P11337537340198611058

namespace A036263

/-- `Δ[log2(A218075(n+1))]` -/
def P11337537340198611058.Spec : Prop :=
  ∀ n, P11337537340198611058.a n = (A036263 (n + 1) : ℝ)

end A036263

/-! ## A036263.P15099554575730036044

`Δ[Δ[p?[comp[n²]]]]`
-/

namespace A036263.P15099554575730036044
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f4 j ≠ x) n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => (f3 j).Prime) n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A036263.P15099554575730036044

namespace A036263

/-- `Δ[Δ[p?[comp[n²]]]]` -/
def P15099554575730036044.Spec : Prop :=
  ∀ n, P15099554575730036044.a n = A036263 (n + 1)

end A036263

/-!
# A036264: Third differences of primes.

The programs for A036264, the canonical program `A036264.P7593126480384688485` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A036264 has offset 1).

The definition of A036264 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A036264.P7593126480384688485

`A036263(n+2)-A036263(n+1)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A036264

/-- `A036263(n+2)-A036263(n+1)` -/
def P7593126480384688485.Spec : Prop :=
  ∀ n, P7593126480384688485.a n = A036264 (n + 1)

theorem P7593126480384688485.correct : P7593126480384688485.Spec := by
  intro n
  simp only [A036264, Nat.add_sub_cancel]

end A036264

/-! ## A036264.P17623706323003183569

`Δ[A036263(n+1)]`
-/

namespace A036264.P17623706323003183569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036263 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A036264.P17623706323003183569

namespace A036264

/-- `Δ[A036263(n+1)]` -/
def P17623706323003183569.Spec : Prop :=
  ∀ n, P17623706323003183569.a n = A036264 (n + 1)

theorem P17623706323003183569.correct : P17623706323003183569.Spec := by
  intro n
  simp only [A036264, Nat.add_sub_cancel, A036264.P17623706323003183569.f1, A036264.P17623706323003183569.a, A036264.P7593126480384688485.a, SequenceMachineLib.memo_apply]

end A036264

/-! ## A036264.P12806355769049755470

`Δ[A001223(n+2)-A001223(n+1)]`
-/

namespace A036264.P12806355769049755470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 2) - A001223 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A036264.P12806355769049755470

namespace A036264

/-- `Δ[A001223(n+2)-A001223(n+1)]` -/
def P12806355769049755470.Spec : Prop :=
  ∀ n, P12806355769049755470.a n = A036264 (n + 1)

theorem P12806355769049755470.correct : P12806355769049755470.Spec := by
  intro n
  simp only [A036264, Nat.add_sub_cancel, A036264.P12806355769049755470.f1, A036264.P12806355769049755470.a, A036264.P7593126480384688485.a, A001223, A001223.P5034056745985311719.a, A036263, A036263.P14888342997651084870.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A036264

/-! ## A036264.P10223727237877021691

`A136612(n+1)-(A001223(n+2)+A001223(n+2))`
-/

namespace A036264.P10223727237877021691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136612 (n + 1) - (A001223 (n + 2) + A001223 (n + 2))

end

end A036264.P10223727237877021691

namespace A036264

/-- `A136612(n+1)-(A001223(n+2)+A001223(n+2))` -/
def P10223727237877021691.Spec : Prop :=
  ∀ n, P10223727237877021691.a n = A036264 (n + 1)

theorem P10223727237877021691.correct : P10223727237877021691.Spec := by
  intro n
  simp only [A036264, Nat.add_sub_cancel, A036264.P10223727237877021691.a, A036264.P7593126480384688485.a, A001223, A001223.P5034056745985311719.a, A036263, A036263.P14888342997651084870.a, A136612, A136612.P12132055378552461140.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A036264

/-! ## A036264.P12793210374834039127

`Δ[Δ[A001223(n+1)]]`
-/

namespace A036264.P12793210374834039127
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A036264.P12793210374834039127

namespace A036264

/-- `Δ[Δ[A001223(n+1)]]` -/
def P12793210374834039127.Spec : Prop :=
  ∀ n, P12793210374834039127.a n = A036264 (n + 1)

theorem P12793210374834039127.correct : P12793210374834039127.Spec := by
  intro n
  simp only [A036264, Nat.add_sub_cancel, A036264.P12793210374834039127.f2, A036264.P12793210374834039127.f1, A036264.P12793210374834039127.a, A036264.P7593126480384688485.a, A001223, A001223.P5034056745985311719.a, A036263, A036263.P14888342997651084870.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A036264

/-! ## A036264.P8372372299226002536

`Δ[Δ[A007504(n)-A166448(n+1)]]`
-/

namespace A036264.P8372372299226002536
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n - A166448 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A036264.P8372372299226002536

namespace A036264

/-- `Δ[Δ[A007504(n)-A166448(n+1)]]` -/
def P8372372299226002536.Spec : Prop :=
  ∀ n, P8372372299226002536.a n = A036264 (n + 1)

end A036264

/-! ## A036264.P13487782625189384516

`Δ[A062234(n+1)-A096379(n+1)]`
-/

namespace A036264.P13487782625189384516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062234 (n + 1) - A096379 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A036264.P13487782625189384516

namespace A036264

/-- `Δ[A062234(n+1)-A096379(n+1)]` -/
def P13487782625189384516.Spec : Prop :=
  ∀ n, P13487782625189384516.a n = A036264 (n + 1)

theorem P13487782625189384516.correct : P13487782625189384516.Spec := by
  intro n
  simp only [A036264, Nat.add_sub_cancel, A036264.P13487782625189384516.f1, A036264.P13487782625189384516.a, A036264.P7593126480384688485.a, A036263, A036263.P14888342997651084870.a, A062234, A062234.P8592873382335253705.a, A096379, A096379.P509834506880397996.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001223, A001223.P5034056745985311719.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A036264

/-! ## A036264.P204006477651272282

`Δ[A093667(n+1)-A065091(n+1)]`
-/

namespace A036264.P204006477651272282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093667 (n + 1) - A065091 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A036264.P204006477651272282

namespace A036264

/-- `Δ[A093667(n+1)-A065091(n+1)]` -/
def P204006477651272282.Spec : Prop :=
  ∀ n, P204006477651272282.a n = A036264 (n + 1)

theorem P204006477651272282.correct : P204006477651272282.Spec := by
  intro n
  simp only [A036264, Nat.add_sub_cancel, A036264.P204006477651272282.f1, A036264.P204006477651272282.a, A036264.P7593126480384688485.a, A036263, A036263.P14888342997651084870.a, A065091, A065091.P6971844946592549357.a, A093667, A093667.P4637239888588385054.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001223, A001223.P5034056745985311719.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A036264

/-! ## A036264.P3427200246273084422

`Δ[A176246(n+1)-A046933(n+1)]`
-/

namespace A036264.P3427200246273084422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176246 (n + 1) - A046933 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A036264.P3427200246273084422

namespace A036264

/-- `Δ[A176246(n+1)-A046933(n+1)]` -/
def P3427200246273084422.Spec : Prop :=
  ∀ n, P3427200246273084422.a n = A036264 (n + 1)

theorem P3427200246273084422.correct : P3427200246273084422.Spec := by
  intro n
  simp only [A036264, Nat.add_sub_cancel, A036264.P3427200246273084422.f1, A036264.P3427200246273084422.a, A036264.P7593126480384688485.a, A036263, A036263.P14888342997651084870.a, A046933, A046933.P9479947770746769512.a, A176246, A176246.P14955082673946823167.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001223, A001223.P5034056745985311719.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A036264

/-! ## A036264.P3191854987859528674

`Δ[A215848(n+1)-A210497(n+1)]`
-/

namespace A036264.P3191854987859528674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215848 (n + 1) - A210497 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A036264.P3191854987859528674

namespace A036264

/-- `Δ[A215848(n+1)-A210497(n+1)]` -/
def P3191854987859528674.Spec : Prop :=
  ∀ n, P3191854987859528674.a n = A036264 (n + 1)

theorem P3191854987859528674.correct : P3191854987859528674.Spec := by
  intro n
  simp only [A036264, Nat.add_sub_cancel, A036264.P3191854987859528674.f1, A036264.P3191854987859528674.a, A036264.P7593126480384688485.a, A036263, A036263.P14888342997651084870.a, A210497, A210497.P11511747503835237208.a, A215848, A215848.P17068717743202425727.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001223, A001223.P5034056745985311719.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A036264

/-! ## A036264.P2321795116585226705

`A093667(n+2)-(A093667(n+1)+A001223(n+2))`
-/

namespace A036264.P2321795116585226705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093667 (n + 2) - (A093667 (n + 1) + A001223 (n + 2))

end

end A036264.P2321795116585226705

namespace A036264

/-- `A093667(n+2)-(A093667(n+1)+A001223(n+2))` -/
def P2321795116585226705.Spec : Prop :=
  ∀ n, P2321795116585226705.a n = A036264 (n + 1)

theorem P2321795116585226705.correct : P2321795116585226705.Spec := by
  intro n
  simp only [A036264, Nat.add_sub_cancel, A036264.P2321795116585226705.a, A036264.P7593126480384688485.a, A001223, A001223.P5034056745985311719.a, A036263, A036263.P14888342997651084870.a, A093667, A093667.P4637239888588385054.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A036264

/-! ## A036264.P13146278863141434428

`A136612(n+1)+A000040(n+2)-A210497(n+2)`
-/

namespace A036264.P13146278863141434428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136612 (n + 1) + (A000040 (n + 2) - A210497 (n + 2))

end

end A036264.P13146278863141434428

namespace A036264

/-- `A136612(n+1)+A000040(n+2)-A210497(n+2)` -/
def P13146278863141434428.Spec : Prop :=
  ∀ n, P13146278863141434428.a n = A036264 (n + 1)

theorem P13146278863141434428.correct : P13146278863141434428.Spec := by
  intro n
  simp only [A036264, Nat.add_sub_cancel, A036264.P13146278863141434428.a, A036264.P7593126480384688485.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A036263, A036263.P14888342997651084870.a, A136612, A136612.P12132055378552461140.a, A210497, A210497.P11511747503835237208.a, A001223, A001223.P5034056745985311719.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A036264

/-! ## A036264.P6970042728972046077

`A258326(n+2)-(A258326(n+1)+A001223(n+2))`
-/

namespace A036264.P6970042728972046077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258326 (n + 2) - (A258326 (n + 1) + A001223 (n + 2))

end

end A036264.P6970042728972046077

namespace A036264

/-- `A258326(n+2)-(A258326(n+1)+A001223(n+2))` -/
def P6970042728972046077.Spec : Prop :=
  ∀ n, P6970042728972046077.a n = A036264 (n + 1)

end A036264

/-! ## A036264.P3444393115471302460

`Δ[Δ[A046933(n+1)]]`
-/

namespace A036264.P3444393115471302460
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046933 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A036264.P3444393115471302460

namespace A036264

/-- `Δ[Δ[A046933(n+1)]]` -/
def P3444393115471302460.Spec : Prop :=
  ∀ n, P3444393115471302460.a n = A036264 (n + 1)

theorem P3444393115471302460.correct : P3444393115471302460.Spec := by
  intro n
  simp only [A036264, Nat.add_sub_cancel, A036264.P3444393115471302460.f2, A036264.P3444393115471302460.f1, A036264.P3444393115471302460.a, A036264.P7593126480384688485.a, A036263, A036263.P14888342997651084870.a, A046933, A046933.P9479947770746769512.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001223, A001223.P5034056745985311719.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A036264

/-! ## A036264.P3125996114872642859

`Δ[Δ[A123128(n+1)]]`
-/

namespace A036264.P3125996114872642859
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123128 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A036264.P3125996114872642859

namespace A036264

/-- `Δ[Δ[A123128(n+1)]]` -/
def P3125996114872642859.Spec : Prop :=
  ∀ n, P3125996114872642859.a n = A036264 (n + 1)

theorem P3125996114872642859.correct : P3125996114872642859.Spec := by
  intro n
  simp only [A036264, Nat.add_sub_cancel, A036264.P3125996114872642859.f2, A036264.P3125996114872642859.f1, A036264.P3125996114872642859.a, A036264.P7593126480384688485.a, A036263, A036263.P14888342997651084870.a, A123128, A123128.P14620295915267660605.a, A001223, A001223.P5034056745985311719.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A036264

/-! ## A036264.P5560611098966310943

`Δ[Δ[A147966(n+1)]]`
-/

namespace A036264.P5560611098966310943
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147966 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A036264.P5560611098966310943

namespace A036264

/-- `Δ[Δ[A147966(n+1)]]` -/
def P5560611098966310943.Spec : Prop :=
  ∀ n, P5560611098966310943.a n = A036264 (n + 1)

theorem P5560611098966310943.correct : P5560611098966310943.Spec := by
  intro n
  simp only [A036264, Nat.add_sub_cancel, A036264.P5560611098966310943.f2, A036264.P5560611098966310943.f1, A036264.P5560611098966310943.a, A036264.P7593126480384688485.a, A036263, A036263.P14888342997651084870.a, A147966, A147966.P17845740115898667296.a, A001223, A001223.P5034056745985311719.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A036264

/-! ## A036264.P16205809154774689022

`Δ[Δ[sqrt(A076821(n+1))]]`
-/

namespace A036264.P16205809154774689022
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A076821 (n + 1) : ℝ)

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A036264.P16205809154774689022

namespace A036264

/-- `Δ[Δ[sqrt(A076821(n+1))]]` -/
def P16205809154774689022.Spec : Prop :=
  ∀ n, P16205809154774689022.a n = (A036264 (n + 1) : ℝ)

end A036264

/-! ## A036264.P18170747333716563423

`Δ[Δ[log2(A218075(n+1))]]`
-/

namespace A036264.P18170747333716563423
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A218075 (n + 1) : ℝ)

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A036264.P18170747333716563423

namespace A036264

/-- `Δ[Δ[log2(A218075(n+1))]]` -/
def P18170747333716563423.Spec : Prop :=
  ∀ n, P18170747333716563423.a n = (A036264 (n + 1) : ℝ)

end A036264

/-! ## A036264.P17442216353124153270

`Δ[Δ[A100803(n+1)/2]]`
-/

namespace A036264.P17442216353124153270
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A100803 (n + 1) : ℚ) / 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A036264.P17442216353124153270

namespace A036264

/-- `Δ[Δ[A100803(n+1)/2]]` -/
def P17442216353124153270.Spec : Prop :=
  ∀ n, P17442216353124153270.a n = (A036264 (n + 1) : ℚ)

theorem P17442216353124153270.correct : P17442216353124153270.Spec := by
  intro n
  simp only [A036264, Nat.add_sub_cancel, A036264.P17442216353124153270.f2, A036264.P17442216353124153270.f1, A036264.P17442216353124153270.a, A036264.P7593126480384688485.a, A036263, A036263.P14888342997651084870.a, A100803, A100803.P18284078702291543981.a, A001223, A001223.P5034056745985311719.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A036264

/-! ## A036264.P1064822627190537500

`Δ[Δ[n-A147965(n+1)]]`
-/

namespace A036264.P1064822627190537500
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A147965 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A036264.P1064822627190537500

namespace A036264

/-- `Δ[Δ[n-A147965(n+1)]]` -/
def P1064822627190537500.Spec : Prop :=
  ∀ n, P1064822627190537500.a n = A036264 (n + 1)

theorem P1064822627190537500.correct : P1064822627190537500.Spec := by
  intro n
  simp only [A036264, Nat.add_sub_cancel, A036264.P1064822627190537500.f2, A036264.P1064822627190537500.f1, A036264.P1064822627190537500.a, A036264.P7593126480384688485.a, A036263, A036263.P14888342997651084870.a, A147965, A147965.P3324423489024112170.a, A001223, A001223.P5034056745985311719.a, A046933, A046933.P9479947770746769512.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A036264

/-!
# A036265: 4th differences of primes.

The programs for A036265, the canonical program `A036265.P15826367320604290420` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A036265 has offset 1).

The definition of A036265 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A036265.P15826367320604290420

`A036264(n+2)-A036264(n+1)`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A036265

/-- `A036264(n+2)-A036264(n+1)` -/
def P15826367320604290420.Spec : Prop :=
  ∀ n, P15826367320604290420.a n = A036265 (n + 1)

theorem P15826367320604290420.correct : P15826367320604290420.Spec := by
  intro n
  simp only [A036265, Nat.add_sub_cancel]

end A036265

/-! ## A036265.P1594774286724430844

`A000040(n+1)-4*A000040(n+2)+6*A000040(n+3)-4*A000040(n+4)+A000040(n+5)`
-/

namespace A036265.P1594774286724430844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - 4 * A000040 (n + 2) + 6 * A000040 (n + 3) - 4 * A000040 (n + 4) + A000040 (n + 5)

end

end A036265.P1594774286724430844

namespace A036265

/-- `A000040(n+1)-4*A000040(n+2)+6*A000040(n+3)-4*A000040(n+4)+A000040(n+5)` -/
def P1594774286724430844.Spec : Prop :=
  ∀ n, P1594774286724430844.a n = A036265 (n + 1)

theorem P1594774286724430844.correct : P1594774286724430844.Spec := by
  intro n
  simp only [A036265, Nat.add_sub_cancel, A036265.P1594774286724430844.a, A036265.P15826367320604290420.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A036264, A036264.P7593126480384688485.a, A036263, A036263.P14888342997651084870.a, A001223, A001223.P5034056745985311719.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A036265

/-! ## A036265.P14414066818304604715

`A036266(n)+a(n-1)` with `a(0)=3`
-/

namespace A036265.P14414066818304604715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A036266 n + a (n - 1)

end

end A036265.P14414066818304604715

namespace A036265

/-- `A036266(n)+a(n-1)` -/
def P14414066818304604715.Spec : Prop :=
  ∀ n, P14414066818304604715.a n = A036265 (n + 1)

end A036265

/-! ## A036265.P4494070690064518352

`Δ[A036263(n+2)-A036263(n+1)]`
-/

namespace A036265.P4494070690064518352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036263 (n + 2) - A036263 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A036265.P4494070690064518352

namespace A036265

/-- `Δ[A036263(n+2)-A036263(n+1)]` -/
def P4494070690064518352.Spec : Prop :=
  ∀ n, P4494070690064518352.a n = A036265 (n + 1)

theorem P4494070690064518352.correct : P4494070690064518352.Spec := by
  intro n
  simp only [A036265, Nat.add_sub_cancel, A036265.P4494070690064518352.f1, A036265.P4494070690064518352.a, A036265.P15826367320604290420.a, A036263, A036263.P14888342997651084870.a, A036264, A036264.P7593126480384688485.a, A001223, A001223.P5034056745985311719.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A036265

/-! ## A036265.P18237796928192735109

`Δ[A036264(n+1)]`
-/

namespace A036265.P18237796928192735109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036264 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A036265.P18237796928192735109

namespace A036265

/-- `Δ[A036264(n+1)]` -/
def P18237796928192735109.Spec : Prop :=
  ∀ n, P18237796928192735109.a n = A036265 (n + 1)

theorem P18237796928192735109.correct : P18237796928192735109.Spec := by
  intro n
  simp only [A036265, Nat.add_sub_cancel, A036265.P18237796928192735109.f1, A036265.P18237796928192735109.a, A036265.P15826367320604290420.a, SequenceMachineLib.memo_apply]

end A036265

/-! ## A036265.P3797629531961755606

`Δ[Δ[A036263(n+1)]]`
-/

namespace A036265.P3797629531961755606
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036263 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A036265.P3797629531961755606

namespace A036265

/-- `Δ[Δ[A036263(n+1)]]` -/
def P3797629531961755606.Spec : Prop :=
  ∀ n, P3797629531961755606.a n = A036265 (n + 1)

theorem P3797629531961755606.correct : P3797629531961755606.Spec := by
  intro n
  simp only [A036265, Nat.add_sub_cancel, A036265.P3797629531961755606.f2, A036265.P3797629531961755606.f1, A036265.P3797629531961755606.a, A036265.P15826367320604290420.a, A036263, A036263.P14888342997651084870.a, A036264, A036264.P7593126480384688485.a, A001223, A001223.P5034056745985311719.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A036265

/-! ## A036265.P2434084255645003289

`Δ[Δ[Δ[A001223(n+1)]]]`
-/

namespace A036265.P2434084255645003289
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A036265.P2434084255645003289

namespace A036265

/-- `Δ[Δ[Δ[A001223(n+1)]]]` -/
def P2434084255645003289.Spec : Prop :=
  ∀ n, P2434084255645003289.a n = A036265 (n + 1)

theorem P2434084255645003289.correct : P2434084255645003289.Spec := by
  intro n
  simp only [A036265, Nat.add_sub_cancel, A036265.P2434084255645003289.f3, A036265.P2434084255645003289.f2, A036265.P2434084255645003289.f1, A036265.P2434084255645003289.a, A036265.P15826367320604290420.a, A001223, A001223.P5034056745985311719.a, A036264, A036264.P7593126480384688485.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A036263, A036263.P14888342997651084870.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A036265

/-! ## A036265.P9369099248556448966

`Δ[Δ[A062234(n+1)-A096379(n+1)]]`
-/

namespace A036265.P9369099248556448966
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062234 (n + 1) - A096379 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A036265.P9369099248556448966

namespace A036265

/-- `Δ[Δ[A062234(n+1)-A096379(n+1)]]` -/
def P9369099248556448966.Spec : Prop :=
  ∀ n, P9369099248556448966.a n = A036265 (n + 1)

theorem P9369099248556448966.correct : P9369099248556448966.Spec := by
  intro n
  simp only [A036265, Nat.add_sub_cancel, A036265.P9369099248556448966.f2, A036265.P9369099248556448966.f1, A036265.P9369099248556448966.a, A036265.P15826367320604290420.a, A036264, A036264.P7593126480384688485.a, A062234, A062234.P8592873382335253705.a, A096379, A096379.P509834506880397996.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A036263, A036263.P14888342997651084870.a, A001223, A001223.P5034056745985311719.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A036265

/-! ## A036265.P15080840551883186128

`Δ[Δ[A093667(n+1)-A065091(n+1)]]`
-/

namespace A036265.P15080840551883186128
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093667 (n + 1) - A065091 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A036265.P15080840551883186128

namespace A036265

/-- `Δ[Δ[A093667(n+1)-A065091(n+1)]]` -/
def P15080840551883186128.Spec : Prop :=
  ∀ n, P15080840551883186128.a n = A036265 (n + 1)

theorem P15080840551883186128.correct : P15080840551883186128.Spec := by
  intro n
  simp only [A036265, Nat.add_sub_cancel, A036265.P15080840551883186128.f2, A036265.P15080840551883186128.f1, A036265.P15080840551883186128.a, A036265.P15826367320604290420.a, A036264, A036264.P7593126480384688485.a, A065091, A065091.P6971844946592549357.a, A093667, A093667.P4637239888588385054.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A036263, A036263.P14888342997651084870.a, A001223, A001223.P5034056745985311719.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A036265

/-! ## A036265.P15874696137682408367

`Δ[Δ[A176246(n+1)-A046933(n+1)]]`
-/

namespace A036265.P15874696137682408367
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176246 (n + 1) - A046933 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A036265.P15874696137682408367

namespace A036265

/-- `Δ[Δ[A176246(n+1)-A046933(n+1)]]` -/
def P15874696137682408367.Spec : Prop :=
  ∀ n, P15874696137682408367.a n = A036265 (n + 1)

theorem P15874696137682408367.correct : P15874696137682408367.Spec := by
  intro n
  simp only [A036265, Nat.add_sub_cancel, A036265.P15874696137682408367.f2, A036265.P15874696137682408367.f1, A036265.P15874696137682408367.a, A036265.P15826367320604290420.a, A036264, A036264.P7593126480384688485.a, A046933, A046933.P9479947770746769512.a, A176246, A176246.P14955082673946823167.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001223, A001223.P5034056745985311719.a, A036263, A036263.P14888342997651084870.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A036265

/-! ## A036265.P3788602097443154300

`Δ[Δ[A215848(n+1)-A210497(n+1)]]`
-/

namespace A036265.P3788602097443154300
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215848 (n + 1) - A210497 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A036265.P3788602097443154300

namespace A036265

/-- `Δ[Δ[A215848(n+1)-A210497(n+1)]]` -/
def P3788602097443154300.Spec : Prop :=
  ∀ n, P3788602097443154300.a n = A036265 (n + 1)

theorem P3788602097443154300.correct : P3788602097443154300.Spec := by
  intro n
  simp only [A036265, Nat.add_sub_cancel, A036265.P3788602097443154300.f2, A036265.P3788602097443154300.f1, A036265.P3788602097443154300.a, A036265.P15826367320604290420.a, A036264, A036264.P7593126480384688485.a, A210497, A210497.P11511747503835237208.a, A215848, A215848.P17068717743202425727.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A036263, A036263.P14888342997651084870.a, A001223, A001223.P5034056745985311719.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A036265

/-! ## A036265.P8664492993839322578

`Δ[Δ[Δ[A046933(n+1)]]]`
-/

namespace A036265.P8664492993839322578
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046933 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A036265.P8664492993839322578

namespace A036265

/-- `Δ[Δ[Δ[A046933(n+1)]]]` -/
def P8664492993839322578.Spec : Prop :=
  ∀ n, P8664492993839322578.a n = A036265 (n + 1)

theorem P8664492993839322578.correct : P8664492993839322578.Spec := by
  intro n
  simp only [A036265, Nat.add_sub_cancel, A036265.P8664492993839322578.f3, A036265.P8664492993839322578.f2, A036265.P8664492993839322578.f1, A036265.P8664492993839322578.a, A036265.P15826367320604290420.a, A036264, A036264.P7593126480384688485.a, A046933, A046933.P9479947770746769512.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A036263, A036263.P14888342997651084870.a, A001223, A001223.P5034056745985311719.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A036265

/-! ## A036265.P15087766077275397757

`Δ[Δ[Δ[A054541(n+2)]]]`
-/

namespace A036265.P15087766077275397757
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A036265.P15087766077275397757

namespace A036265

/-- `Δ[Δ[Δ[A054541(n+2)]]]` -/
def P15087766077275397757.Spec : Prop :=
  ∀ n, P15087766077275397757.a n = A036265 (n + 1)

end A036265

/-! ## A036265.P9877237665617433255

`Δ[Δ[Δ[A076368(n+2)]]]`
-/

namespace A036265.P9877237665617433255
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076368 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A036265.P9877237665617433255

namespace A036265

/-- `Δ[Δ[Δ[A076368(n+2)]]]` -/
def P9877237665617433255.Spec : Prop :=
  ∀ n, P9877237665617433255.a n = A036265 (n + 1)

end A036265

/-! ## A036265.P16011012237807451735

`Δ[Δ[Δ[Δ[A000040(n+1)]]]]`
-/

namespace A036265.P16011012237807451735
noncomputable section

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f4 (n + 1) - f4 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A036265.P16011012237807451735

namespace A036265

/-- `Δ[Δ[Δ[Δ[A000040(n+1)]]]]` -/
def P16011012237807451735.Spec : Prop :=
  ∀ n, P16011012237807451735.a n = A036265 (n + 1)

theorem P16011012237807451735.correct : P16011012237807451735.Spec := by
  intro n
  simp only [A036265, Nat.add_sub_cancel, A036265.P16011012237807451735.f4, A036265.P16011012237807451735.f3, A036265.P16011012237807451735.f2, A036265.P16011012237807451735.f1, A036265.P16011012237807451735.a, A036265.P15826367320604290420.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A036264, A036264.P7593126480384688485.a, A036263, A036263.P14888342997651084870.a, A001223, A001223.P5034056745985311719.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A036265

/-! ## A036265.P14767941538564550012

`Δ[Δ[A262138(2*(n+1))]]`
-/

namespace A036265.P14767941538564550012
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262138 (2 * (n + 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A036265.P14767941538564550012

namespace A036265

/-- `Δ[Δ[A262138(2*(n+1))]]` -/
def P14767941538564550012.Spec : Prop :=
  ∀ n, P14767941538564550012.a n = A036265 (n + 1)

end A036265

/-! ## A036265.P14652481651647898929

`Δ[Δ[Δ[A134735(2*(n+1))]]]`
-/

namespace A036265.P14652481651647898929
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134735 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A036265.P14652481651647898929

namespace A036265

/-- `Δ[Δ[Δ[A134735(2*(n+1))]]]` -/
def P14652481651647898929.Spec : Prop :=
  ∀ n, P14652481651647898929.a n = A036265 (n + 1)

end A036265

/-!
# A036266: 5th differences of primes.

The programs for A036266, the canonical program `A036266.P11903525488543457057` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A036266 has offset 1).

The definition of A036266 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A036266.P11903525488543457057

`Δ[A036265(n+1)]`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A036266

/-- `Δ[A036265(n+1)]` -/
def P11903525488543457057.Spec : Prop :=
  ∀ n, P11903525488543457057.a n = A036266 (n + 1)

theorem P11903525488543457057.correct : P11903525488543457057.Spec := by
  intro n
  simp only [A036266, Nat.add_sub_cancel]

end A036266

/-! ## A036266.P17472621681635000674

`A036265(n+2)-A036265(n+1)`
-/

namespace A036266.P17472621681635000674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036265 (n + 2) - A036265 (n + 1)

end

end A036266.P17472621681635000674

namespace A036266

/-- `A036265(n+2)-A036265(n+1)` -/
def P17472621681635000674.Spec : Prop :=
  ∀ n, P17472621681635000674.a n = A036266 (n + 1)

theorem P17472621681635000674.correct : P17472621681635000674.Spec := by
  intro n
  simp only [A036266, Nat.add_sub_cancel, A036266.P17472621681635000674.a, A036266.P11903525488543457057.f1, A036266.P11903525488543457057.a, SequenceMachineLib.memo_apply]

end A036266

/-! ## A036266.P5078623852438903932

`Δ[Δ[A036263(n+2)-A036263(n+1)]]`
-/

namespace A036266.P5078623852438903932
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036263 (n + 2) - A036263 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A036266.P5078623852438903932

namespace A036266

/-- `Δ[Δ[A036263(n+2)-A036263(n+1)]]` -/
def P5078623852438903932.Spec : Prop :=
  ∀ n, P5078623852438903932.a n = A036266 (n + 1)

theorem P5078623852438903932.correct : P5078623852438903932.Spec := by
  intro n
  simp only [A036266, Nat.add_sub_cancel, A036266.P5078623852438903932.f2, A036266.P5078623852438903932.f1, A036266.P5078623852438903932.a, A036266.P11903525488543457057.f1, A036266.P11903525488543457057.a, A036263, A036263.P14888342997651084870.a, A036265, A036265.P15826367320604290420.a, A001223, A001223.P5034056745985311719.a, A036264, A036264.P7593126480384688485.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A036266

/-! ## A036266.P322423526861830891

`Δ[Δ[A036264(n+1)]]`
-/

namespace A036266.P322423526861830891
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036264 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A036266.P322423526861830891

namespace A036266

/-- `Δ[Δ[A036264(n+1)]]` -/
def P322423526861830891.Spec : Prop :=
  ∀ n, P322423526861830891.a n = A036266 (n + 1)

theorem P322423526861830891.correct : P322423526861830891.Spec := by
  intro n
  simp only [A036266, Nat.add_sub_cancel, A036266.P322423526861830891.f2, A036266.P322423526861830891.f1, A036266.P322423526861830891.a, A036266.P11903525488543457057.f1, A036266.P11903525488543457057.a, A036264, A036264.P7593126480384688485.a, A036265, A036265.P15826367320604290420.a, A036263, A036263.P14888342997651084870.a, A001223, A001223.P5034056745985311719.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A036266

/-! ## A036266.P8670896571325909822

`Δ[Δ[Δ[A036263(n+1)]]]`
-/

namespace A036266.P8670896571325909822
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036263 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A036266.P8670896571325909822

namespace A036266

/-- `Δ[Δ[Δ[A036263(n+1)]]]` -/
def P8670896571325909822.Spec : Prop :=
  ∀ n, P8670896571325909822.a n = A036266 (n + 1)

theorem P8670896571325909822.correct : P8670896571325909822.Spec := by
  intro n
  simp only [A036266, Nat.add_sub_cancel, A036266.P8670896571325909822.f3, A036266.P8670896571325909822.f2, A036266.P8670896571325909822.f1, A036266.P8670896571325909822.a, A036266.P11903525488543457057.f1, A036266.P11903525488543457057.a, A036263, A036263.P14888342997651084870.a, A036265, A036265.P15826367320604290420.a, A001223, A001223.P5034056745985311719.a, A036264, A036264.P7593126480384688485.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A036266

/-! ## A036266.P6895556541803998571

`Δ[Δ[Δ[Δ[Δ[A000040(n+1)]]]]]`
-/

namespace A036266.P6895556541803998571
noncomputable section

def f5 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

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

end A036266.P6895556541803998571

namespace A036266

/-- `Δ[Δ[Δ[Δ[Δ[A000040(n+1)]]]]]` -/
def P6895556541803998571.Spec : Prop :=
  ∀ n, P6895556541803998571.a n = A036266 (n + 1)

theorem P6895556541803998571.correct : P6895556541803998571.Spec := by
  intro n
  simp only [A036266, Nat.add_sub_cancel, A036266.P6895556541803998571.f5, A036266.P6895556541803998571.f4, A036266.P6895556541803998571.f3, A036266.P6895556541803998571.f2, A036266.P6895556541803998571.f1, A036266.P6895556541803998571.a, A036266.P11903525488543457057.f1, A036266.P11903525488543457057.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A036265, A036265.P15826367320604290420.a, A036264, A036264.P7593126480384688485.a, A036263, A036263.P14888342997651084870.a, A001223, A001223.P5034056745985311719.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A036266

/-!
# A036267: 6th differences of primes.

The programs for A036267, the canonical program `A036267.P15431299486698039371` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A036267 has offset 1).

The definition of A036267 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A036267.P15431299486698039371

`Δ[A036266(n+1)]`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A036267

/-- `Δ[A036266(n+1)]` -/
def P15431299486698039371.Spec : Prop :=
  ∀ n, P15431299486698039371.a n = A036267 (n + 1)

theorem P15431299486698039371.correct : P15431299486698039371.Spec := by
  intro n
  simp only [A036267, Nat.add_sub_cancel]

end A036267

/-! ## A036267.P12494320870446282299

`A036266(n+2)-A036266(n+1)`
-/

namespace A036267.P12494320870446282299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036266 (n + 2) - A036266 (n + 1)

end

end A036267.P12494320870446282299

namespace A036267

/-- `A036266(n+2)-A036266(n+1)` -/
def P12494320870446282299.Spec : Prop :=
  ∀ n, P12494320870446282299.a n = A036267 (n + 1)

theorem P12494320870446282299.correct : P12494320870446282299.Spec := by
  intro n
  simp only [A036267, Nat.add_sub_cancel, A036267.P12494320870446282299.a, A036267.P15431299486698039371.f1, A036267.P15431299486698039371.a, SequenceMachineLib.memo_apply]

end A036267

/-! ## A036267.P2399552394295435583

`Δ[Δ[A036265(n+1)]]`
-/

namespace A036267.P2399552394295435583
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036265 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A036267.P2399552394295435583

namespace A036267

/-- `Δ[Δ[A036265(n+1)]]` -/
def P2399552394295435583.Spec : Prop :=
  ∀ n, P2399552394295435583.a n = A036267 (n + 1)

end A036267

/-! ## A036267.P16164428387551812190

`Δ[Δ[Δ[A036264(n+1)]]]`
-/

namespace A036267.P16164428387551812190
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036264 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A036267.P16164428387551812190

namespace A036267

/-- `Δ[Δ[Δ[A036264(n+1)]]]` -/
def P16164428387551812190.Spec : Prop :=
  ∀ n, P16164428387551812190.a n = A036267 (n + 1)

theorem P16164428387551812190.correct : P16164428387551812190.Spec := by
  intro n
  simp only [A036267, Nat.add_sub_cancel, A036267.P16164428387551812190.f3, A036267.P16164428387551812190.f2, A036267.P16164428387551812190.f1, A036267.P16164428387551812190.a, A036267.P15431299486698039371.f1, A036267.P15431299486698039371.a, A036264, A036264.P7593126480384688485.a, A036266, A036266.P11903525488543457057.f1, A036266.P11903525488543457057.a, A036263, A036263.P14888342997651084870.a, A036265, A036265.P15826367320604290420.a, A001223, A001223.P5034056745985311719.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A036267

/-! ## A036267.P6870843697752930822

`Δ[Δ[Δ[Δ[A036263(n+1)]]]]`
-/

namespace A036267.P6870843697752930822
noncomputable section

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036263 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f4 (n + 1) - f4 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A036267.P6870843697752930822

namespace A036267

/-- `Δ[Δ[Δ[Δ[A036263(n+1)]]]]` -/
def P6870843697752930822.Spec : Prop :=
  ∀ n, P6870843697752930822.a n = A036267 (n + 1)

theorem P6870843697752930822.correct : P6870843697752930822.Spec := by
  intro n
  simp only [A036267, Nat.add_sub_cancel, A036267.P6870843697752930822.f4, A036267.P6870843697752930822.f3, A036267.P6870843697752930822.f2, A036267.P6870843697752930822.f1, A036267.P6870843697752930822.a, A036267.P15431299486698039371.f1, A036267.P15431299486698039371.a, A036263, A036263.P14888342997651084870.a, A036266, A036266.P11903525488543457057.f1, A036266.P11903525488543457057.a, A001223, A001223.P5034056745985311719.a, A036265, A036265.P15826367320604290420.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A036264, A036264.P7593126480384688485.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A036267

/-! ## A036267.P7944022146192414003

`Δ[Δ[Δ[Δ[Δ[Δ[A000040(n+1)]]]]]]`
-/

namespace A036267.P7944022146192414003
noncomputable section

def f6 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f5 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f6 (n + 1) - f6 n

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

end A036267.P7944022146192414003

namespace A036267

/-- `Δ[Δ[Δ[Δ[Δ[Δ[A000040(n+1)]]]]]]` -/
def P7944022146192414003.Spec : Prop :=
  ∀ n, P7944022146192414003.a n = A036267 (n + 1)

end A036267

/-!
# A036268: 7th differences of primes.

The programs for A036268, the canonical program `A036268.P3017897690283646774` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A036268 has offset 1).

The definition of A036268 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A036268.P3017897690283646774

`Δ[A036267(n+1)]`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A036268

/-- `Δ[A036267(n+1)]` -/
def P3017897690283646774.Spec : Prop :=
  ∀ n, P3017897690283646774.a n = A036268 (n + 1)

theorem P3017897690283646774.correct : P3017897690283646774.Spec := by
  intro n
  simp only [A036268, Nat.add_sub_cancel]

end A036268

/-! ## A036268.P7411479578632381898

`A036267(n+2)-A036267(n+1)`
-/

namespace A036268.P7411479578632381898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036267 (n + 2) - A036267 (n + 1)

end

end A036268.P7411479578632381898

namespace A036268

/-- `A036267(n+2)-A036267(n+1)` -/
def P7411479578632381898.Spec : Prop :=
  ∀ n, P7411479578632381898.a n = A036268 (n + 1)

theorem P7411479578632381898.correct : P7411479578632381898.Spec := by
  intro n
  simp only [A036268, Nat.add_sub_cancel, A036268.P7411479578632381898.a, A036268.P3017897690283646774.f1, A036268.P3017897690283646774.a, SequenceMachineLib.memo_apply]

end A036268

/-! ## A036268.P15847326694225125876

`Δ[Δ[A036266(n+1)]]`
-/

namespace A036268.P15847326694225125876
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036266 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A036268.P15847326694225125876

namespace A036268

/-- `Δ[Δ[A036266(n+1)]]` -/
def P15847326694225125876.Spec : Prop :=
  ∀ n, P15847326694225125876.a n = A036268 (n + 1)

end A036268

/-! ## A036268.P7242376375188013208

`Δ[Δ[Δ[A036265(n+1)]]]`
-/

namespace A036268.P7242376375188013208
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036265 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A036268.P7242376375188013208

namespace A036268

/-- `Δ[Δ[Δ[A036265(n+1)]]]` -/
def P7242376375188013208.Spec : Prop :=
  ∀ n, P7242376375188013208.a n = A036268 (n + 1)

end A036268

/-! ## A036268.P6508677787136493207

`Δ[Δ[Δ[Δ[A036264(n+1)]]]]`
-/

namespace A036268.P6508677787136493207
noncomputable section

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036264 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f4 (n + 1) - f4 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A036268.P6508677787136493207

namespace A036268

/-- `Δ[Δ[Δ[Δ[A036264(n+1)]]]]` -/
def P6508677787136493207.Spec : Prop :=
  ∀ n, P6508677787136493207.a n = A036268 (n + 1)

end A036268

/-!
# A036269: 8th differences of primes.

The programs for A036269, the canonical program `A036269.P10624160224326188520` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A036269 has offset 1).

The definition of A036269 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A036269.P10624160224326188520

`Δ[A036268(n+1)]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A036269

/-- `Δ[A036268(n+1)]` -/
def P10624160224326188520.Spec : Prop :=
  ∀ n, P10624160224326188520.a n = A036269 (n + 1)

theorem P10624160224326188520.correct : P10624160224326188520.Spec := by
  intro n
  simp only [A036269, Nat.add_sub_cancel]

end A036269

/-! ## A036269.P13077090734696190256

`A036268(n+2)-A036268(n+1)`
-/

namespace A036269.P13077090734696190256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036268 (n + 2) - A036268 (n + 1)

end

end A036269.P13077090734696190256

namespace A036269

/-- `A036268(n+2)-A036268(n+1)` -/
def P13077090734696190256.Spec : Prop :=
  ∀ n, P13077090734696190256.a n = A036269 (n + 1)

theorem P13077090734696190256.correct : P13077090734696190256.Spec := by
  intro n
  simp only [A036269, Nat.add_sub_cancel, A036269.P13077090734696190256.a, A036269.P10624160224326188520.f1, A036269.P10624160224326188520.a, SequenceMachineLib.memo_apply]

end A036269

/-! ## A036269.P14463733648355682060

`Δ[Δ[A036267(n+1)]]`
-/

namespace A036269.P14463733648355682060
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036267 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A036269.P14463733648355682060

namespace A036269

/-- `Δ[Δ[A036267(n+1)]]` -/
def P14463733648355682060.Spec : Prop :=
  ∀ n, P14463733648355682060.a n = A036269 (n + 1)

end A036269

/-! ## A036269.P5499221843445337707

`Δ[Δ[Δ[A036266(n+1)]]]`
-/

namespace A036269.P5499221843445337707
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036266 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A036269.P5499221843445337707

namespace A036269

/-- `Δ[Δ[Δ[A036266(n+1)]]]` -/
def P5499221843445337707.Spec : Prop :=
  ∀ n, P5499221843445337707.a n = A036269 (n + 1)

end A036269

/-! ## A036269.P7933979700328230587

`Δ[Δ[Δ[Δ[A036265(n+1)]]]]`
-/

namespace A036269.P7933979700328230587
noncomputable section

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036265 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f4 (n + 1) - f4 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A036269.P7933979700328230587

namespace A036269

/-- `Δ[Δ[Δ[Δ[A036265(n+1)]]]]` -/
def P7933979700328230587.Spec : Prop :=
  ∀ n, P7933979700328230587.a n = A036269 (n + 1)

end A036269

/-!
# A036270: 9th differences of primes.

The programs for A036270, the canonical program `A036270.P4294138831560450438` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A036270 has offset 1).

The definition of A036270 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A036270.P4294138831560450438

`Δ[A036269(n+1)]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A036270

/-- `Δ[A036269(n+1)]` -/
def P4294138831560450438.Spec : Prop :=
  ∀ n, P4294138831560450438.a n = A036270 (n + 1)

theorem P4294138831560450438.correct : P4294138831560450438.Spec := by
  intro n
  simp only [A036270, Nat.add_sub_cancel]

end A036270

/-! ## A036270.P10518145400171480693

`A036269(n+2)-A036269(n+1)`
-/

namespace A036270.P10518145400171480693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036269 (n + 2) - A036269 (n + 1)

end

end A036270.P10518145400171480693

namespace A036270

/-- `A036269(n+2)-A036269(n+1)` -/
def P10518145400171480693.Spec : Prop :=
  ∀ n, P10518145400171480693.a n = A036270 (n + 1)

theorem P10518145400171480693.correct : P10518145400171480693.Spec := by
  intro n
  simp only [A036270, Nat.add_sub_cancel, A036270.P10518145400171480693.a, A036270.P4294138831560450438.f1, A036270.P4294138831560450438.a, SequenceMachineLib.memo_apply]

end A036270

/-! ## A036270.P6408222786871079893

`Δ[Δ[A036268(n+1)]]`
-/

namespace A036270.P6408222786871079893
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036268 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A036270.P6408222786871079893

namespace A036270

/-- `Δ[Δ[A036268(n+1)]]` -/
def P6408222786871079893.Spec : Prop :=
  ∀ n, P6408222786871079893.a n = A036270 (n + 1)

end A036270

/-! ## A036270.P17185933341068925245

`Δ[Δ[Δ[A036267(n+1)]]]`
-/

namespace A036270.P17185933341068925245
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036267 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A036270.P17185933341068925245

namespace A036270

/-- `Δ[Δ[Δ[A036267(n+1)]]]` -/
def P17185933341068925245.Spec : Prop :=
  ∀ n, P17185933341068925245.a n = A036270 (n + 1)

end A036270

/-! ## A036270.P236270167021587432

`Δ[Δ[Δ[Δ[A036266(n+1)]]]]`
-/

namespace A036270.P236270167021587432
noncomputable section

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036266 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f4 (n + 1) - f4 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A036270.P236270167021587432

namespace A036270

/-- `Δ[Δ[Δ[Δ[A036266(n+1)]]]]` -/
def P236270167021587432.Spec : Prop :=
  ∀ n, P236270167021587432.a n = A036270 (n + 1)

end A036270

/-!
# A036271: 10th differences of primes.

The programs for A036271, the canonical program `A036271.P2280199641635399742` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A036271 has offset 1).

The definition of A036271 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A036271.P2280199641635399742

`Δ[A036270(n+1)]`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A036271

/-- `Δ[A036270(n+1)]` -/
def P2280199641635399742.Spec : Prop :=
  ∀ n, P2280199641635399742.a n = A036271 (n + 1)

theorem P2280199641635399742.correct : P2280199641635399742.Spec := by
  intro n
  simp only [A036271, Nat.add_sub_cancel]

end A036271

/-! ## A036271.P3838057618977726137

`A036270(n+2)-A036270(n+1)`
-/

namespace A036271.P3838057618977726137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036270 (n + 2) - A036270 (n + 1)

end

end A036271.P3838057618977726137

namespace A036271

/-- `A036270(n+2)-A036270(n+1)` -/
def P3838057618977726137.Spec : Prop :=
  ∀ n, P3838057618977726137.a n = A036271 (n + 1)

theorem P3838057618977726137.correct : P3838057618977726137.Spec := by
  intro n
  simp only [A036271, Nat.add_sub_cancel, A036271.P3838057618977726137.a, A036271.P2280199641635399742.f1, A036271.P2280199641635399742.a, SequenceMachineLib.memo_apply]

end A036271

/-! ## A036271.P9272731153249773910

`Δ[Δ[A036269(n+1)]]`
-/

namespace A036271.P9272731153249773910
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036269 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A036271.P9272731153249773910

namespace A036271

/-- `Δ[Δ[A036269(n+1)]]` -/
def P9272731153249773910.Spec : Prop :=
  ∀ n, P9272731153249773910.a n = A036271 (n + 1)

end A036271

/-! ## A036271.P7850401793768806981

`Δ[Δ[Δ[A036268(n+1)]]]`
-/

namespace A036271.P7850401793768806981
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036268 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A036271.P7850401793768806981

namespace A036271

/-- `Δ[Δ[Δ[A036268(n+1)]]]` -/
def P7850401793768806981.Spec : Prop :=
  ∀ n, P7850401793768806981.a n = A036271 (n + 1)

end A036271

/-! ## A036271.P5807412261204031033

`Δ[Δ[Δ[Δ[A036267(n+1)]]]]`
-/

namespace A036271.P5807412261204031033
noncomputable section

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036267 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f4 (n + 1) - f4 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A036271.P5807412261204031033

namespace A036271

/-- `Δ[Δ[Δ[Δ[A036267(n+1)]]]]` -/
def P5807412261204031033.Spec : Prop :=
  ∀ n, P5807412261204031033.a n = A036271 (n + 1)

end A036271

/-!
# A036272: Absolute values of differences of absolute values of second differences of primes.

The programs for A036272, the canonical program `A036272.P13640507030568503975` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A036272 has offset 0).

The definition of A036272 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A036272.P13640507030568503975

`abs(Δ[abs(A036263(n+1))])`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A036272

/-- `abs(Δ[abs(A036263(n+1))])` -/
def P13640507030568503975.Spec : Prop :=
  ∀ n, P13640507030568503975.a n = A036272 n

theorem P13640507030568503975.correct : P13640507030568503975.Spec := by
  intro n
  simp only [A036272]

end A036272

/-! ## A036272.P16624851059583183478

`abs(Δ[abs(A001223(n+2)-A001223(n+1))])`
-/

namespace A036272.P16624851059583183478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001223 (n + 2) - A001223 (n + 1)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A036272.P16624851059583183478

namespace A036272

/-- `abs(Δ[abs(A001223(n+2)-A001223(n+1))])` -/
def P16624851059583183478.Spec : Prop :=
  ∀ n, P16624851059583183478.a n = A036272 n

end A036272

/-! ## A036272.P1294707951840787881

`abs(Δ[log2(A219194(n+1))])`
-/

namespace A036272.P1294707951840787881
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A219194 (n + 1) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A036272.P1294707951840787881

namespace A036272

/-- `abs(Δ[log2(A219194(n+1))])` -/
def P1294707951840787881.Spec : Prop :=
  ∀ n, P1294707951840787881.a n = (A036272 n : ℝ)

end A036272

/-! ## A036272.P17476549611887757351

`abs(Δ[abs(A062234(n+1)-A096379(n+1))])`
-/

namespace A036272.P17476549611887757351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A062234 (n + 1) - A096379 (n + 1)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A036272.P17476549611887757351

namespace A036272

/-- `abs(Δ[abs(A062234(n+1)-A096379(n+1))])` -/
def P17476549611887757351.Spec : Prop :=
  ∀ n, P17476549611887757351.a n = A036272 n

theorem P17476549611887757351.correct : P17476549611887757351.Spec := by
  intro n
  simp only [A036272, Nat.add_sub_cancel, A036272.P17476549611887757351.f1, A036272.P17476549611887757351.a, A036272.P13640507030568503975.f1, A036272.P13640507030568503975.a, A036263, A036263.P14888342997651084870.a, A062234, A062234.P8592873382335253705.a, A096379, A096379.P509834506880397996.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001223, A001223.P5034056745985311719.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A036272

/-! ## A036272.P5328451131649916163

`abs(Δ[abs(A093667(n+1)-A065091(n+1))])`
-/

namespace A036272.P5328451131649916163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A093667 (n + 1) - A065091 (n + 1)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A036272.P5328451131649916163

namespace A036272

/-- `abs(Δ[abs(A093667(n+1)-A065091(n+1))])` -/
def P5328451131649916163.Spec : Prop :=
  ∀ n, P5328451131649916163.a n = A036272 n

theorem P5328451131649916163.correct : P5328451131649916163.Spec := by
  intro n
  simp only [A036272, Nat.add_sub_cancel, A036272.P5328451131649916163.f1, A036272.P5328451131649916163.a, A036272.P13640507030568503975.f1, A036272.P13640507030568503975.a, A036263, A036263.P14888342997651084870.a, A065091, A065091.P6971844946592549357.a, A093667, A093667.P4637239888588385054.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001223, A001223.P5034056745985311719.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A036272

/-! ## A036272.P14899818133617497724

`abs(Δ[abs(A176246(n+1)-A046933(n+1))])`
-/

namespace A036272.P14899818133617497724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A176246 (n + 1) - A046933 (n + 1)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A036272.P14899818133617497724

namespace A036272

/-- `abs(Δ[abs(A176246(n+1)-A046933(n+1))])` -/
def P14899818133617497724.Spec : Prop :=
  ∀ n, P14899818133617497724.a n = A036272 n

theorem P14899818133617497724.correct : P14899818133617497724.Spec := by
  intro n
  simp only [A036272, Nat.add_sub_cancel, A036272.P14899818133617497724.f1, A036272.P14899818133617497724.a, A036272.P13640507030568503975.f1, A036272.P13640507030568503975.a, A036263, A036263.P14888342997651084870.a, A046933, A046933.P9479947770746769512.a, A176246, A176246.P14955082673946823167.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001223, A001223.P5034056745985311719.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A036272

/-! ## A036272.P9821965338681562371

`abs(Δ[abs(A215848(n+1)-A210497(n+1))])`
-/

namespace A036272.P9821965338681562371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A215848 (n + 1) - A210497 (n + 1)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A036272.P9821965338681562371

namespace A036272

/-- `abs(Δ[abs(A215848(n+1)-A210497(n+1))])` -/
def P9821965338681562371.Spec : Prop :=
  ∀ n, P9821965338681562371.a n = A036272 n

theorem P9821965338681562371.correct : P9821965338681562371.Spec := by
  intro n
  simp only [A036272, Nat.add_sub_cancel, A036272.P9821965338681562371.f1, A036272.P9821965338681562371.a, A036272.P13640507030568503975.f1, A036272.P13640507030568503975.a, A036263, A036263.P14888342997651084870.a, A210497, A210497.P11511747503835237208.a, A215848, A215848.P17068717743202425727.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001223, A001223.P5034056745985311719.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A036272

/-! ## A036272.P17027638543108972250

`abs(Δ[abs(A000040(n+1)-A062234(n+2))])`
-/

namespace A036272.P17027638543108972250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000040 (n + 1) - A062234 (n + 2)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A036272.P17027638543108972250

namespace A036272

/-- `abs(Δ[abs(A000040(n+1)-A062234(n+2))])` -/
def P17027638543108972250.Spec : Prop :=
  ∀ n, P17027638543108972250.a n = A036272 n

theorem P17027638543108972250.correct : P17027638543108972250.Spec := by
  intro n
  simp only [A036272, Nat.add_sub_cancel, A036272.P17027638543108972250.f1, A036272.P17027638543108972250.a, A036272.P13640507030568503975.f1, A036272.P13640507030568503975.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A036263, A036263.P14888342997651084870.a, A062234, A062234.P8592873382335253705.a, A001223, A001223.P5034056745985311719.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A036272

/-! ## A036272.P11604058152976661951

`abs(Δ[abs(A093667(n+1)-A000040(n+2))])`
-/

namespace A036272.P11604058152976661951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A093667 (n + 1) - A000040 (n + 2)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A036272.P11604058152976661951

namespace A036272

/-- `abs(Δ[abs(A093667(n+1)-A000040(n+2))])` -/
def P11604058152976661951.Spec : Prop :=
  ∀ n, P11604058152976661951.a n = A036272 n

theorem P11604058152976661951.correct : P11604058152976661951.Spec := by
  intro n
  simp only [A036272, Nat.add_sub_cancel, A036272.P11604058152976661951.f1, A036272.P11604058152976661951.a, A036272.P13640507030568503975.f1, A036272.P13640507030568503975.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A036263, A036263.P14888342997651084870.a, A093667, A093667.P4637239888588385054.a, A001223, A001223.P5034056745985311719.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A036272

/-! ## A036272.P14963672483802563994

`abs(Δ[abs(A262138(2*(n+1)))])`
-/

namespace A036272.P14963672483802563994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A262138 (2 * (n + 1))|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A036272.P14963672483802563994

namespace A036272

/-- `abs(Δ[abs(A262138(2*(n+1)))])` -/
def P14963672483802563994.Spec : Prop :=
  ∀ n, P14963672483802563994.a n = A036272 n

end A036272

/-! ## A036272.P5257253496461199052

`A036261(∑[n+3]+1)`
-/

namespace A036272.P5257253496461199052
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036261 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A036272.P5257253496461199052

namespace A036272

/-- `A036261(∑[n+3]+1)` -/
def P5257253496461199052.Spec : Prop :=
  ∀ n, P5257253496461199052.a n = A036272 n

end A036272

/-! ## A036272.P17813413302331658272

`A036261(A034856(n+2))%11`
-/

namespace A036272.P17813413302331658272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A036261 (A034856 (n + 2)).toNat) 11

end

end A036272.P17813413302331658272

namespace A036272

/-- `A036261(A034856(n+2))%11` -/
def P17813413302331658272.Spec : Prop :=
  ∀ n, P17813413302331658272.a n = A036272 n

end A036272

/-! ## A036272.P8862799769198043040

`abs(Δ[A036261(A000096(n+1))])`
-/

namespace A036272.P8862799769198043040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036261 (A000096 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A036272.P8862799769198043040

namespace A036272

/-- `abs(Δ[A036261(A000096(n+1))])` -/
def P8862799769198043040.Spec : Prop :=
  ∀ n, P8862799769198043040.a n = A036272 n

end A036272

/-! ## A036272.P15932577812275929157

`A036261(A034856(n+2))*A055642(A000120(n))`
-/

namespace A036272.P15932577812275929157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036261 (A034856 (n + 2)).toNat * A055642 (A000120 n).toNat

end

end A036272.P15932577812275929157

namespace A036272

/-- `A036261(A034856(n+2))*A055642(A000120(n))` -/
def P15932577812275929157.Spec : Prop :=
  ∀ n, P15932577812275929157.a n = A036272 n

end A036272

/-! ## A036272.P17306195412774547012

`A001222(A006378(n+1))*A036261(A034856(n+2))`
-/

namespace A036272.P17306195412774547012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A006378 (n + 1)).toNat * A036261 (A034856 (n + 2)).toNat

end

end A036272.P17306195412774547012

namespace A036272

/-- `A001222(A006378(n+1))*A036261(A034856(n+2))` -/
def P17306195412774547012.Spec : Prop :=
  ∀ n, P17306195412774547012.a n = A036272 n

end A036272

/-! ## A036272.P3115471300974731553

`A036262(∑[n+4]+2)`
-/

namespace A036272.P3115471300974731553
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036262 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A036272.P3115471300974731553

namespace A036272

/-- `A036262(∑[n+4]+2)` -/
def P3115471300974731553.Spec : Prop :=
  ∀ n, P3115471300974731553.a n = A036272 n

end A036272

/-! ## A036272.P15938945237544341605

`abs(Δ[A036262(A055998(n+1))])`
-/

namespace A036272.P15938945237544341605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036262 (A055998 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A036272.P15938945237544341605

namespace A036272

/-- `abs(Δ[A036262(A055998(n+1))])` -/
def P15938945237544341605.Spec : Prop :=
  ∀ n, P15938945237544341605.a n = A036272 n

end A036272

/-! ## A036272.P3822913158007732660

`A036262(A046691(n+2))%A006881(n+1)`
-/

namespace A036272.P3822913158007732660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A036262 (A046691 (n + 2)).toNat) (A006881 (n + 1))

end

end A036272.P3822913158007732660

namespace A036272

/-- `A036262(A046691(n+2))%A006881(n+1)` -/
def P3822913158007732660.Spec : Prop :=
  ∀ n, P3822913158007732660.a n = A036272 n

end A036272

/-!
# A036273: Absolute values of differences of A036272.

The programs for A036273, the canonical program `A036273.P9570373567943307012` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A036273 has offset 0).

The definition of A036273 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A036273.P9570373567943307012

`abs(Δ[A036272(n)])`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A036273

/-- `abs(Δ[A036272(n)])` -/
def P9570373567943307012.Spec : Prop :=
  ∀ n, P9570373567943307012.a n = A036273 n

theorem P9570373567943307012.correct : P9570373567943307012.Spec := by
  intro n
  simp only [A036273]

end A036273

/-! ## A036273.P13212960210464573636

`A000194(Δ[A036272(n)]²)`
-/

namespace A036273.P13212960210464573636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036272 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 ((f1 (n + 1) - f1 n) ^ 2).toNat

end

end A036273.P13212960210464573636

namespace A036273

/-- `A000194(Δ[A036272(n)]²)` -/
def P13212960210464573636.Spec : Prop :=
  ∀ n, P13212960210464573636.a n = A036273 n

end A036273

/-! ## A036273.P9391103393772604355

`gcd(Δ[A036272(n)], A000038(n))`
-/

namespace A036273.P9391103393772604355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036272 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (n + 1) - f1 n) (A000038 n)

end

end A036273.P9391103393772604355

namespace A036273

/-- `gcd(Δ[A036272(n)], A000038(n))` -/
def P9391103393772604355.Spec : Prop :=
  ∀ n, (P9391103393772604355.a n : ℤ) = A036273 n

end A036273

/-! ## A036273.P3679017023915218508

`abs(A036272(n+1)-A036272(n))`
-/

namespace A036273.P3679017023915218508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A036272 (n + 1) - A036272 n|

end

end A036273.P3679017023915218508

namespace A036273

/-- `abs(A036272(n+1)-A036272(n))` -/
def P3679017023915218508.Spec : Prop :=
  ∀ n, P3679017023915218508.a n = A036273 n

theorem P3679017023915218508.correct : P3679017023915218508.Spec := by
  intro n
  simp only [A036273, Nat.add_sub_cancel, A036273.P3679017023915218508.a, A036273.P9570373567943307012.f1, A036273.P9570373567943307012.a, SequenceMachineLib.memo_apply]

end A036273

/-! ## A036273.P11272066159025861140

`lcm(Δ[A036272(n)], A209615(n+1))`
-/

namespace A036273.P11272066159025861140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036272 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (f1 (n + 1) - f1 n) (A209615 (n + 1))

end

end A036273.P11272066159025861140

namespace A036273

/-- `lcm(Δ[A036272(n)], A209615(n+1))` -/
def P11272066159025861140.Spec : Prop :=
  ∀ n, (P11272066159025861140.a n : ℤ) = A036273 n

end A036273

/-! ## A036273.P3248849487911112615

`A036261(∑[n+4]+3)`
-/

namespace A036273.P3248849487911112615
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036261 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A036273.P3248849487911112615

namespace A036273

/-- `A036261(∑[n+4]+3)` -/
def P3248849487911112615.Spec : Prop :=
  ∀ n, P3248849487911112615.a n = A036273 n

end A036273

/-! ## A036273.P1203323183968764706

`abs(Δ[A036261(A034856(n+2))])`
-/

namespace A036273.P1203323183968764706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036261 (A034856 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A036273.P1203323183968764706

namespace A036273

/-- `abs(Δ[A036261(A034856(n+2))])` -/
def P1203323183968764706.Spec : Prop :=
  ∀ n, P1203323183968764706.a n = A036273 n

end A036273

/-! ## A036273.P9246157070739746625

`A036262(2*n+∑[n+3]+7)`
-/

namespace A036273.P9246157070739746625
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036262 (2 * n + (∑ j ∈ Finset.range (n + 1), f1 j + 7))

end

end A036273.P9246157070739746625

namespace A036273

/-- `A036262(2*n+∑[n+3]+7)` -/
def P9246157070739746625.Spec : Prop :=
  ∀ n, P9246157070739746625.a n = A036273 n

end A036273

/-!
# A036274: Absolute values of differences of A036273.

The programs for A036274, the canonical program `A036274.P11002584314295623650` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A036274 has offset 0).

The definition of A036274 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A036274.P11002584314295623650

`abs(Δ[A036273(n)])`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A036274

/-- `abs(Δ[A036273(n)])` -/
def P11002584314295623650.Spec : Prop :=
  ∀ n, P11002584314295623650.a n = A036274 n

theorem P11002584314295623650.correct : P11002584314295623650.Spec := by
  intro n
  simp only [A036274]

end A036274

/-! ## A036274.P3890061102900166628

`A000194(Δ[A036273(n)]²)`
-/

namespace A036274.P3890061102900166628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036273 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 ((f1 (n + 1) - f1 n) ^ 2).toNat

end

end A036274.P3890061102900166628

namespace A036274

/-- `A000194(Δ[A036273(n)]²)` -/
def P3890061102900166628.Spec : Prop :=
  ∀ n, P3890061102900166628.a n = A036274 n

end A036274

/-! ## A036274.P15772699954557229635

`lcm(Δ[A036273(n)], A074293(n))`
-/

namespace A036274.P15772699954557229635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036273 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (f1 (n + 1) - f1 n) (A074293 n)

end

end A036274.P15772699954557229635

namespace A036274

/-- `lcm(Δ[A036273(n)], A074293(n))` -/
def P15772699954557229635.Spec : Prop :=
  ∀ n, (P15772699954557229635.a n : ℤ) = A036274 n

end A036274

/-! ## A036274.P16033589482866358749

`∑{d}[Δ[A036273(n)], A000010(#)]`
-/

namespace A036274.P16033589482866358749
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036273 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A036274.P16033589482866358749

namespace A036274

/-- `∑{d}[Δ[A036273(n)], A000010(#)]` -/
def P16033589482866358749.Spec : Prop :=
  ∀ n, P16033589482866358749.a n = A036274 n

end A036274

/-! ## A036274.P10990671501209572692

`abs(A036273(n+1)-A036273(n))`
-/

namespace A036274.P10990671501209572692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A036273 (n + 1) - A036273 n|

end

end A036274.P10990671501209572692

namespace A036274

/-- `abs(A036273(n+1)-A036273(n))` -/
def P10990671501209572692.Spec : Prop :=
  ∀ n, P10990671501209572692.a n = A036274 n

theorem P10990671501209572692.correct : P10990671501209572692.Spec := by
  intro n
  simp only [A036274, Nat.add_sub_cancel, A036274.P10990671501209572692.a, A036274.P11002584314295623650.f1, A036274.P11002584314295623650.a, SequenceMachineLib.memo_apply]

end A036274

/-! ## A036274.P14716033746286315703

`lcm(A036273(n+1)-A036273(n), A329903(n+1)!)`
-/

namespace A036274.P14716033746286315703
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A036273 (n + 1) - A036273 n) (Nat.factorial (A329903 (n + 1)).toNat : ℤ)

end

end A036274.P14716033746286315703

namespace A036274

/-- `lcm(A036273(n+1)-A036273(n), A329903(n+1)!)` -/
def P14716033746286315703.Spec : Prop :=
  ∀ n, (P14716033746286315703.a n : ℤ) = A036274 n

end A036274

/-! ## A036274.P15253375599956490299

`abs(Δ[abs(Δ[A036272(n)])])`
-/

namespace A036274.P15253375599956490299
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036272 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A036274.P15253375599956490299

namespace A036274

/-- `abs(Δ[abs(Δ[A036272(n)])])` -/
def P15253375599956490299.Spec : Prop :=
  ∀ n, P15253375599956490299.a n = A036274 n

end A036274

/-! ## A036274.P2476025330610337127

`A036261(∑[n+5]+6)`
-/

namespace A036274.P2476025330610337127
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036261 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A036274.P2476025330610337127

namespace A036274

/-- `A036261(∑[n+5]+6)` -/
def P2476025330610337127.Spec : Prop :=
  ∀ n, P2476025330610337127.a n = A036274 n

end A036274

/-! ## A036274.P998039633011709851

`A036262(A055999(n+3))`
-/

namespace A036274.P998039633011709851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036262 (A055999 (n + 3)).toNat

end

end A036274.P998039633011709851

namespace A036274

/-- `A036262(A055999(n+3))` -/
def P998039633011709851.Spec : Prop :=
  ∀ n, P998039633011709851.a n = A036274 n

end A036274

/-! ## A036274.P14979334913563573947

`A036262(A056119(n)+15)`
-/

namespace A036274.P14979334913563573947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036262 (A056119 n + 15).toNat

end

end A036274.P14979334913563573947

namespace A036274

/-- `A036262(A056119(n)+15)` -/
def P14979334913563573947.Spec : Prop :=
  ∀ n, P14979334913563573947.a n = A036274 n

end A036274

/-! ## A036274.P11427677426112728630

`A036262(Δ[A023551(n+1)])`
-/

namespace A036274.P11427677426112728630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036262 (f1 (n + 1) - f1 n).toNat

end

end A036274.P11427677426112728630

namespace A036274

/-- `A036262(Δ[A023551(n+1)])` -/
def P11427677426112728630.Spec : Prop :=
  ∀ n, P11427677426112728630.a n = A036274 n

end A036274

/-! ## A036274.P17727630629647744037

`A036262(Δ[A026054(n+3)])`
-/

namespace A036274.P17727630629647744037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026054 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036262 (f1 (n + 1) - f1 n).toNat

end

end A036274.P17727630629647744037

namespace A036274

/-- `A036262(Δ[A026054(n+3)])` -/
def P17727630629647744037.Spec : Prop :=
  ∀ n, P17727630629647744037.a n = A036274 n

end A036274

/-! ## A036274.P12033386612841235203

`A036262(A052905(n+3)-1)`
-/

namespace A036274.P12033386612841235203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036262 (A052905 (n + 3) - 1).toNat

end

end A036274.P12033386612841235203

namespace A036274

/-- `A036262(A052905(n+3)-1)` -/
def P12033386612841235203.Spec : Prop :=
  ∀ n, P12033386612841235203.a n = A036274 n

end A036274

/-! ## A036274.P17095344134105912391

`A036262(A000217(n+6)-6)`
-/

namespace A036274.P17095344134105912391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036262 (A000217 (n + 6) - 6).toNat

end

end A036274.P17095344134105912391

namespace A036274

/-- `A036262(A000217(n+6)-6)` -/
def P17095344134105912391.Spec : Prop :=
  ∀ n, P17095344134105912391.a n = A036274 n

end A036274

/-! ## A036274.P14672366822950570502

`A036262(A167499(n+5)-11)`
-/

namespace A036274.P14672366822950570502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036262 (A167499 (n + 5) - 11).toNat

end

end A036274.P14672366822950570502

namespace A036274

/-- `A036262(A167499(n+5)-11)` -/
def P14672366822950570502.Spec : Prop :=
  ∀ n, P14672366822950570502.a n = A036274 n

end A036274

/-! ## A036274.P5047981483684601418

`A036262(A000124(n+5)+n-1)`
-/

namespace A036274.P5047981483684601418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036262 (A000124 (n + 5) + ((n : ℤ) - 1)).toNat

end

end A036274.P5047981483684601418

namespace A036274

/-- `A036262(A000124(n+5)+n-1)` -/
def P5047981483684601418.Spec : Prop :=
  ∀ n, P5047981483684601418.a n = A036274 n

end A036274

/-!
# A036275: The periodic part of the decimal expansion of 1/n. Any initial 0's are to be placed at end of cycle.

The programs for A036275, there is no canonical definition to state claims against.
-/

/-! ## A036275.P4650270653940163235

`A060284(n+1)*A174726(A219578(2*n+1))`
-/

namespace A036275.P4650270653940163235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060284 (n + 1) * A174726 (A219578 (2 * n + 1)).toNat

end

end A036275.P4650270653940163235

/-! ## A036275.P4790927970887173111

`lcm(A060284(n+1), A159825(A231303(n)))`
-/

namespace A036275.P4790927970887173111
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A060284 (n + 1)) (A159825 (A231303 n).toNat)

end

end A036275.P4790927970887173111

/-! ## A036275.P10258579172419147460

`A060284(n+1)*A303837(A120416(n+1))`
-/

namespace A036275.P10258579172419147460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060284 (n + 1) * A303837 (A120416 (n + 1)).toNat

end

end A036275.P10258579172419147460

/-!
# A036276: a(n) = A001864(n+1)/2.

The programs for A036276, the canonical program `A036276.P1898000108489576370` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A036276 has offset 0).

The definition of A036276 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A036276.P1898000108489576370

`A001864(n+1)/2`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A036276

/-- `A001864(n+1)/2` -/
def P1898000108489576370.Spec : Prop :=
  ∀ n, P1898000108489576370.a n = (A036276 n : ℚ)

end A036276

/-! ## A036276.P12731252527279713415

`C(n+1, 2)*A001863(n+1)`
-/

namespace A036276.P12731252527279713415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 1) 2 : ℤ) * A001863 (n + 1)

end

end A036276.P12731252527279713415

namespace A036276

/-- `C(n+1, 2)*A001863(n+1)` -/
def P12731252527279713415.Spec : Prop :=
  ∀ n, P12731252527279713415.a n = A036276 n

end A036276

/-! ## A036276.P15925092244988456954

`C(n+1, 2)*∑{#}[n-1, (n+1)^#*(n-1)!/#!]`
-/

namespace A036276.P15925092244988456954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 1) 2 : ℚ) * (∑ k ∈ Finset.range (f1 n + 1).toNat, ((n + 1) ^ k * Nat.factorial ((n : ℤ) - 1).toNat : ℚ) / (Nat.factorial k : ℚ))

end

end A036276.P15925092244988456954

namespace A036276

/-- `C(n+1, 2)*∑{#}[n-1, (n+1)^#*(n-1)!/#!]` -/
def P15925092244988456954.Spec : Prop :=
  ∀ n, P15925092244988456954.a n = (A036276 n : ℚ)

end A036276

/-! ## A036276.P13650795029638283559

`∑[n]*A001863(n+1)`
-/

namespace A036276.P13650795029638283559
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A001863 (n + 1)

end

end A036276.P13650795029638283559

namespace A036276

/-- `∑[n]*A001863(n+1)` -/
def P13650795029638283559.Spec : Prop :=
  ∀ n, P13650795029638283559.a n = A036276 n

end A036276

/-! ## A036276.P14515754313445996168

`(n+1)/2*A000435(n+1)`
-/

namespace A036276.P14515754313445996168
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 2 * (A000435 (n + 1) : ℚ)

end

end A036276.P14515754313445996168

namespace A036276

/-- `(n+1)/2*A000435(n+1)` -/
def P14515754313445996168.Spec : Prop :=
  ∀ n, P14515754313445996168.a n = (A036276 n : ℚ)

end A036276

/-! ## A036276.P15317094885449328578

`∑[n]*record[A001863(A028920(n))]`
-/

namespace A036276.P15317094885449328578
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001863 (A028920 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

end

end A036276.P15317094885449328578

namespace A036276

/-- `∑[n]*record[A001863(A028920(n))]` -/
def P15317094885449328578.Spec : Prop :=
  ∀ n, P15317094885449328578.a n = A036276 n

end A036276

/-! ## A036276.P6925382511999263134

`∑[n]*record[A001863(A126759(n))]`
-/

namespace A036276.P6925382511999263134
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001863 (A126759 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

end

end A036276.P6925382511999263134

namespace A036276

/-- `∑[n]*record[A001863(A126759(n))]` -/
def P6925382511999263134.Spec : Prop :=
  ∀ n, P6925382511999263134.a n = A036276 n

end A036276

/-! ## A036276.P4857105817207779883

`∑[n]*record[A001863(A137735(n))]`
-/

namespace A036276.P4857105817207779883
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001863 (A137735 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

end

end A036276.P4857105817207779883

namespace A036276

/-- `∑[n]*record[A001863(A137735(n))]` -/
def P4857105817207779883.Spec : Prop :=
  ∀ n, P4857105817207779883.a n = A036276 n

end A036276

/-! ## A036276.P3324196256208663947

`A001863(n+1)/2*A002378(n)`
-/

namespace A036276.P3324196256208663947
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001863 (n + 1) : ℚ) / 2 * (A002378 n : ℚ)

end

end A036276.P3324196256208663947

namespace A036276

/-- `A001863(n+1)/2*A002378(n)` -/
def P3324196256208663947.Spec : Prop :=
  ∀ n, P3324196256208663947.a n = (A036276 n : ℚ)

end A036276

/-! ## A036276.P16013014658843929374

`A063170(n+1)/2-A000312(n+1)`
-/

namespace A036276.P16013014658843929374
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A063170 (n + 1) : ℚ) / 2 - (A000312 (n + 1) : ℚ)

end

end A036276.P16013014658843929374

namespace A036276

/-- `A063170(n+1)/2-A000312(n+1)` -/
def P16013014658843929374.Spec : Prop :=
  ∀ n, P16013014658843929374.a n = (A036276 n : ℚ)

end A036276

/-!
# A036277: Position of first term > 2 in n-th row of Gilbreath array shown in A036262.

The programs for A036277, there is no canonical definition to state claims against.
-/

/-! ## A036277.P9863272339205932859

`A000232((n-1)%(a(n-1)+1)+1)+1` with `a(0)=2`
-/

namespace A036277.P9863272339205932859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A000232 (Int.tmod ((n : ℤ) - 1) (a (n - 1) + 1) + 1).toNat + 1

end

end A036277.P9863272339205932859

/-! ## A036277.P11514977764240401431

`A000232(A028310(n))-(1-2%(n+2))`
-/

namespace A036277.P11514977764240401431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000232 (A028310 n).toNat - (1 - ((2 % (n + 2) : ℕ) : ℤ))

end

end A036277.P11514977764240401431

/-! ## A036277.P9429952317385922676

`(A000232(n)+1)*(a(A000038(n))-1)` with `a(0)=2`
-/

namespace A036277.P9429952317385922676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  (A000232 n + 1) * (a (A000038 n).toNat - 1)

end

end A036277.P9429952317385922676

/-! ## A036277.P6852019150140265782

`A000232(A028310(n))+1-A000038(n)`
-/

namespace A036277.P6852019150140265782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000232 (A028310 n).toNat + (1 - A000038 n)

end

end A036277.P6852019150140265782

/-! ## A036277.P3275573471620680140

`A000232(A028310(n))+(-1)^A103517(n)`
-/

namespace A036277.P3275573471620680140
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000232 (A028310 n).toNat : ℚ) + (-1 : ℚ) ^ (A103517 n : ℤ)

end

end A036277.P3275573471620680140

/-! ## A036277.P13168007694210141048

`A000232(A137735(n²))-abs(1-n)+n`
-/

namespace A036277.P13168007694210141048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000232 (A137735 (n ^ 2)).toNat - |1 - (n : ℤ)| + (n : ℤ)

end

end A036277.P13168007694210141048

/-! ## A036277.P7085389195344640193

`A033999(A008458(n))+A000232(A137735(n²))`
-/

namespace A036277.P7085389195344640193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A008458 n).toNat + A000232 (A137735 (n ^ 2)).toNat

end

end A036277.P7085389195344640193

/-!
# A036278: Denominators in Taylor series for cot x.

The programs for A036278, there is no canonical definition to state claims against.
-/

/-! ## A036278.P3636667260607211727

`lcm(2, A002432(n))/2`
-/

namespace A036278.P3636667260607211727
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A002432 n) : ℚ) / 2

end

end A036278.P3636667260607211727

/-! ## A036278.P12536358256032337217

`A060055(n+1)/A101926(n)`
-/

namespace A036278.P12536358256032337217
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060055 (n + 1) : ℚ) / (A101926 n : ℚ)

end

end A036278.P12536358256032337217

/-! ## A036278.P9883050502389671343

`gcd(or(1, A295231(n)), A002432(n))`
-/

namespace A036278.P9883050502389671343
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Int.lor 1 (A295231 n)) (A002432 n)

end

end A036278.P9883050502389671343

/-! ## A036278.P8264664557706933530

`gcd(A002432(n), A295231(A028310(n)))`
-/

namespace A036278.P8264664557706933530
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002432 n) (A295231 (A028310 n).toNat)

end

end A036278.P8264664557706933530

/-! ## A036278.P16193243671271814477

`A060055(n+1)/A000079(A101925(n))`
-/

namespace A036278.P16193243671271814477
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060055 (n + 1) : ℚ) / (A000079 (A101925 n).toNat : ℚ)

end

end A036278.P16193243671271814477

/-!
# A036279: Denominators in the Taylor series for tan(x).

The programs for A036279, there is no canonical definition to state claims against.
-/

/-! ## A036279.P14124455612180623466

`A046983(Δ[n²])`
-/

namespace A036279.P14124455612180623466
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046983 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A036279.P14124455612180623466

/-! ## A036279.P15981937928547843282

`A226180(n+1)/Δ[n²]`
-/

namespace A036279.P15981937928547843282
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A226180 (n + 1) : ℚ) / ((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℚ)

end

end A036279.P15981937928547843282

/-! ## A036279.P11029321598227523467

`lcm(2*n+1, A046983(2*n+1))`
-/

namespace A036279.P11029321598227523467
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (2 * n + 1 : ℤ) (A046983 (2 * n + 1))

end

end A036279.P11029321598227523467

/-! ## A036279.P11079960680804694296

`record[A046983(A006257(n))]`
-/

namespace A036279.P11079960680804694296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046983 (A006257 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A036279.P11079960680804694296

/-! ## A036279.P10215505481605518729

`or(1, A046983(A005408(n)))`
-/

namespace A036279.P10215505481605518729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A046983 (A005408 n).toNat)

end

end A036279.P10215505481605518729

/-!
# A036280: Numerators in Taylor series for x * cosec(x).

The programs for A036280, there is no canonical definition to state claims against.
-/

/-! ## A036280.P14450655272898028991

`A242032(n)-char[A008454(n)]`
-/

namespace A036280.P14450655272898028991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008454 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242032 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A036280.P14450655272898028991

/-! ## A036280.P10322486692957538665

`A242032(n)-char[A105547(n)]`
-/

namespace A036280.P10322486692957538665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105547 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242032 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A036280.P10322486692957538665

/-! ## A036280.P6919549799451112556

`A171078(n)/A000010(A001316(n))`
-/

namespace A036280.P6919549799451112556
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A171078 n : ℚ) / (A000010 (A001316 n).toNat : ℚ)

end

end A036280.P6919549799451112556

/-! ## A036280.P1909513184200864190

`gcd(A001896(n), A171078(n))`
-/

namespace A036280.P1909513184200864190
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001896 n) (A171078 n)

end

end A036280.P1909513184200864190

/-!
# A036281: Denominators in Taylor series for x * cosec(x).

The programs for A036281, there is no canonical definition to state claims against.
-/

/-! ## A036281.P7443335110701390176

`A230265(n)/2`
-/

namespace A036281.P7443335110701390176
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A230265 n : ℚ) / 2

end

end A036281.P7443335110701390176

/-! ## A036281.P12548099915624539462

`A165641(2*n)%A230265(n)`
-/

namespace A036281.P12548099915624539462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A165641 (2 * n)) (A230265 n)

end

end A036281.P12548099915624539462

/-! ## A036281.P6432767002426727715

`gcd(A165641(2*n+1), A230265(n))`
-/

namespace A036281.P6432767002426727715
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A165641 (2 * n + 1)) (A230265 n)

end

end A036281.P6432767002426727715

/-!
# A036282: Write cosec x = 1/x + Sum_{n>=1} e_n * x^(2n-1)/(2n-1)!; sequence gives numerators of e_n.

The programs for A036282, there is no canonical definition to state claims against.
-/

/-! ## A036282.P17790958641220548377

`lcm(A001067(n+1), A083420(n))`
-/

namespace A036282.P17790958641220548377
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A001067 (n + 1)) (A083420 n)

end

end A036282.P17790958641220548377

/-! ## A036282.P6248683196053464219

`(2*A000079(n)²-1)*A276594(n+1)`
-/

namespace A036282.P6248683196053464219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * A000079 n ^ 2 - 1) * A276594 (n + 1)

end

end A036282.P6248683196053464219

/-! ## A036282.P1095375050970218389

`(A000079(2*n+1)-1)*A276594(n+1)`
-/

namespace A036282.P1095375050970218389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000079 (2 * n + 1) - 1) * A276594 (n + 1)

end

end A036282.P1095375050970218389

/-! ## A036282.P10549598906199275008

`A276594(n+1)*A350072(A131577(n+1))`
-/

namespace A036282.P10549598906199275008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276594 (n + 1) * A350072 (A131577 (n + 1)).toNat

end

end A036282.P10549598906199275008

/-! ## A036282.P527598947159912763

`abs(A344917(2*n+1))`
-/

namespace A036282.P527598947159912763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A344917 (2 * n + 1)|

end

end A036282.P527598947159912763

/-!
# A036283: Write cosec x = 1/x + Sum e_n x^(2n-1)/(2n-1)!; sequence gives denominators of e_n.

The programs for A036283, there is no canonical definition to state claims against.
-/

/-! ## A036283.P9305617344789041724

`A075180(Δ[A008794(2*n)])/2`
-/

namespace A036283.P9305617344789041724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008794 (2 * n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075180 (f1 (n + 1) - f1 n).toNat : ℚ) / 2

end

end A036283.P9305617344789041724

/-! ## A036283.P7321617465202017604

`A165734(2*n+1)*A202318(n+1)`
-/

namespace A036283.P7321617465202017604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165734 (2 * n + 1) * A202318 (n + 1)

end

end A036283.P7321617465202017604

/-! ## A036283.P10144667393225210645

`A079612(2*n+2)/A010694(2*n)²`
-/

namespace A036283.P10144667393225210645
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A079612 (2 * n + 2) : ℚ) / (A010694 (2 * n) ^ 2 : ℚ)

end

end A036283.P10144667393225210645

/-! ## A036283.P16269680743995249236

`A079612(2*(n+1))/A010694(2*n+1)`
-/

namespace A036283.P16269680743995249236
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A079612 (2 * (n + 1)) : ℚ) / (A010694 (2 * n + 1) : ℚ)

end

end A036283.P16269680743995249236

/-! ## A036283.P17405754335319758511

`A075180(2*n+1)/A027760(2*n+1)`
-/

namespace A036283.P17405754335319758511
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075180 (2 * n + 1) : ℚ) / (A027760 (2 * n + 1) : ℚ)

end

end A036283.P17405754335319758511

/-! ## A036283.P14595963469272036260

`A185633(2*(n+1))/A027760(2*n+1)`
-/

namespace A036283.P14595963469272036260
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A185633 (2 * (n + 1)) : ℚ) / (A027760 (2 * n + 1) : ℚ)

end

end A036283.P14595963469272036260

/-! ## A036283.P3291954418635964119

`(A075180(2*n+1)+A000035(2*n))/2`
-/

namespace A036283.P3291954418635964119
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075180 (2 * n + 1) + A000035 (2 * n) : ℚ) / 2

end

end A036283.P3291954418635964119

/-! ## A036283.P13867146789857929106

`A079612(2*(n+1))/A000034(2*n+1)²`
-/

namespace A036283.P13867146789857929106
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A079612 (2 * (n + 1)) : ℚ) / (A000034 (2 * n + 1) ^ 2 : ℚ)

end

end A036283.P13867146789857929106

/-! ## A036283.P9276627074042275188

`A079612(2*(n+1))/A027760(2*n+1)²`
-/

namespace A036283.P9276627074042275188
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A079612 (2 * (n + 1)) : ℚ) / (A027760 (2 * n + 1) ^ 2 : ℚ)

end

end A036283.P9276627074042275188

/-! ## A036283.P4018132800043794299

`A079612(2*(n+1))/(A079612(4*n+1)+2)`
-/

namespace A036283.P4018132800043794299
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A079612 (2 * (n + 1)) : ℚ) / (A079612 (4 * n + 1) + 2 : ℚ)

end

end A036283.P4018132800043794299

/-! ## A036283.P7010715537033450447

`A075180(2*n+1)²/A006863(n+1)`
-/

namespace A036283.P7010715537033450447
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075180 (2 * n + 1) ^ 2 : ℚ) / (A006863 (n + 1) : ℚ)

end

end A036283.P7010715537033450447

/-! ## A036283.P13800345576696439436

`A075180(2*n+1)²/A079612(2*(n+1))`
-/

namespace A036283.P13800345576696439436
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075180 (2 * n + 1) ^ 2 : ℚ) / (A079612 (2 * (n + 1)) : ℚ)

end

end A036283.P13800345576696439436

/-! ## A036283.P4219762435663275453

`A185633(2*(n+1))/A185633(8*n+9)`
-/

namespace A036283.P4219762435663275453
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A185633 (2 * (n + 1)) : ℚ) / (A185633 (8 * n + 9) : ℚ)

end

end A036283.P4219762435663275453

/-! ## A036283.P7183191954407049238

`A002445(n+1)*A195989(n+1)`
-/

namespace A036283.P7183191954407049238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002445 (n + 1) * A195989 (n + 1)

end

end A036283.P7183191954407049238

/-! ## A036283.P10417921331886520492

`A027762(n+1)*A195989(n+1)`
-/

namespace A036283.P10417921331886520492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027762 (n + 1) * A195989 (n + 1)

end

end A036283.P10417921331886520492

/-! ## A036283.P11863086478084035159

`A027760(2*(n+1))*A195989(n+1)`
-/

namespace A036283.P11863086478084035159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027760 (2 * (n + 1)) * A195989 (n + 1)

end

end A036283.P11863086478084035159

/-! ## A036283.P6340752620246566139

`A079612(2*n+2)/A079612(A000040(n+2))²`
-/

namespace A036283.P6340752620246566139
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A079612 (2 * n + 2) : ℚ) / (A079612 (A000040 (n + 2)).toNat ^ 2 : ℚ)

end

end A036283.P6340752620246566139

/-! ## A036283.P6110489039398164171

`A006953(n+1)/2`
-/

namespace A036283.P6110489039398164171
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006953 (n + 1) : ℚ) / 2

end

end A036283.P6110489039398164171

/-! ## A036283.P15631624443212043812

`A075180(A300330(2*n+1))/2`
-/

namespace A036283.P15631624443212043812
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075180 (A300330 (2 * n + 1)).toNat : ℚ) / 2

end

end A036283.P15631624443212043812

/-! ## A036283.P11424786348502566352

`A228838(n+1)/A300711(n+1)`
-/

namespace A036283.P11424786348502566352
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A228838 (n + 1) : ℚ) / (A300711 (n + 1) : ℚ)

end

end A036283.P11424786348502566352

/-!
# A036287: a(n) = ((2^(3*(2^n))) - 1).

The programs for A036287, the canonical program `A036287.P14305098655686935919` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A036287 has offset 0).

The definition of A036287 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^(3*2^n)-1` (program `A036287.P14305098655686935919`, by `A036287.P14305098655686935919.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A036287.P14305098655686935919

`2^(3*2^n)-1`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A036287

/-- `2^(3*2^n)-1` -/
def P14305098655686935919.Spec : Prop :=
  ∀ n, P14305098655686935919.a n = A036287 n

theorem P14305098655686935919.correct : P14305098655686935919.Spec := by
  intro n
  simp only [A036287]

end A036287

/-! ## A036287.P10155370141403119219

`record[Δ[a(n-2)²]]` with `a(0)=1, a(1)=8`
-/

namespace A036287.P10155370141403119219
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 8] fun n f2 =>
  f2 (n - 2) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A036287.P10155370141403119219

namespace A036287

/-- `record[Δ[a(n-2)²]]` -/
def P10155370141403119219.Spec : Prop :=
  ∀ n, P10155370141403119219.a n = A036287 n

end A036287

/-! ## A036287.P9070093362080042700

`∑[abs(Δ[a(n-1)²])]` with `a(0)=1, a(1)=8`
-/

namespace A036287.P9070093362080042700
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 8] fun n f2 =>
  f2 (n - 1) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(f2 (n + 1) : ℤ) - (f2 n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036287.P9070093362080042700

namespace A036287

/-- `∑[abs(Δ[a(n-1)²])]` -/
def P9070093362080042700.Spec : Prop :=
  ∀ n, P9070093362080042700.a n = A036287 n

end A036287

/-!
# A036288: a(n) = 1 + integer log of n: if the prime factorization of n is n = Product (p_j^k_j) then a(n) = 1 + Sum (p_j * k_j) (cf. A001414).

The programs for A036288, the canonical program `A036288.P5869837535348566754` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A036288 has offset 1).

The definition of A036288 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A036288.P5869837535348566754

`∑{p}[n+1, #*val(n+1, #)]+1`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A036288

/-- `∑{p}[n+1, #*val(n+1, #)]+1` -/
def P5869837535348566754.Spec : Prop :=
  ∀ n, (P5869837535348566754.a n : ℤ) = A036288 (n + 1)

theorem P5869837535348566754.correct : P5869837535348566754.Spec := by
  intro n
  simp only [A036288, Nat.add_sub_cancel]

end A036288

/-! ## A036288.P7061157945654243466

`Δ[A025281(n)]+1`
-/

namespace A036288.P7061157945654243466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025281 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A036288.P7061157945654243466

namespace A036288

/-- `Δ[A025281(n)]+1` -/
def P7061157945654243466.Spec : Prop :=
  ∀ n, P7061157945654243466.a n = A036288 (n + 1)

end A036288

/-! ## A036288.P8490233277809157641

`1+A001414(n+1)`
-/

namespace A036288.P8490233277809157641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A001414 (n + 1)

end

end A036288.P8490233277809157641

namespace A036288

/-- `1+A001414(n+1)` -/
def P8490233277809157641.Spec : Prop :=
  ∀ n, P8490233277809157641.a n = A036288 (n + 1)

theorem P8490233277809157641.correct : P8490233277809157641.Spec := by
  intro n
  simp only [A036288, Nat.add_sub_cancel, A036288.P8490233277809157641.a, A036288.P5869837535348566754.f1, A036288.P5869837535348566754.a, A001414, A001414.P8293929508439252105.f1, A001414.P8293929508439252105.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A036288

/-! ## A036288.P15041437813146964429

`A100006(n+1)-1`
-/

namespace A036288.P15041437813146964429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100006 (n + 1) - 1

end

end A036288.P15041437813146964429

namespace A036288

/-- `A100006(n+1)-1` -/
def P15041437813146964429.Spec : Prop :=
  ∀ n, P15041437813146964429.a n = A036288 (n + 1)

theorem P15041437813146964429.correct : P15041437813146964429.Spec := by
  intro n
  simp only [A036288, Nat.add_sub_cancel, A036288.P15041437813146964429.a, A036288.P5869837535348566754.f1, A036288.P5869837535348566754.a, A100006, A100006.P10301543697715186993.f1, A100006.P10301543697715186993.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A036288

/-! ## A036288.P2352616067524682225

`A075254(n+1)-n`
-/

namespace A036288.P2352616067524682225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075254 (n + 1) - (n : ℤ)

end

end A036288.P2352616067524682225

namespace A036288

/-- `A075254(n+1)-n` -/
def P2352616067524682225.Spec : Prop :=
  ∀ n, P2352616067524682225.a n = A036288 (n + 1)

theorem P2352616067524682225.correct : P2352616067524682225.Spec := by
  intro n
  simp only [A036288, Nat.add_sub_cancel, A036288.P2352616067524682225.a, A036288.P5869837535348566754.f1, A036288.P5869837535348566754.a, A075254, A075254.P6422447875050144596.a, A001414, A001414.P8293929508439252105.f1, A001414.P8293929508439252105.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A036288

/-! ## A036288.P10129925948610275545

`sqrt(A074373(n+1))+1`
-/

namespace A036288.P10129925948610275545
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A074373 (n + 1) : ℝ) + 1

end

end A036288.P10129925948610275545

namespace A036288

/-- `sqrt(A074373(n+1))+1` -/
def P10129925948610275545.Spec : Prop :=
  ∀ n, P10129925948610275545.a n = (A036288 (n + 1) : ℝ)

end A036288

/-! ## A036288.P6148750765961296956

`2-A075255(n+1)+n`
-/

namespace A036288.P6148750765961296956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A075255 (n + 1) + (n : ℤ)

end

end A036288.P6148750765961296956

namespace A036288

/-- `2-A075255(n+1)+n` -/
def P6148750765961296956.Spec : Prop :=
  ∀ n, P6148750765961296956.a n = A036288 (n + 1)

theorem P6148750765961296956.correct : P6148750765961296956.Spec := by
  intro n
  simp only [A036288, Nat.add_sub_cancel, A036288.P6148750765961296956.a, A036288.P5869837535348566754.f1, A036288.P5869837535348566754.a, A075255, A075255.P12137973761347593222.a, A001414, A001414.P8293929508439252105.f1, A001414.P8293929508439252105.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A036288

/-! ## A036288.P7295321709579906089

`a(n-1)-A090340(n)` with `a(0)=1`
-/

namespace A036288.P7295321709579906089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) - A090340 n

end

end A036288.P7295321709579906089

namespace A036288

/-- `a(n-1)-A090340(n)` -/
def P7295321709579906089.Spec : Prop :=
  ∀ n, P7295321709579906089.a n = A036288 (n + 1)

theorem P7295321709579906089.correct : P7295321709579906089.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A036288, Nat.add_sub_cancel, A036288.P7295321709579906089.a, A036288.P5869837535348566754.f1, A036288.P5869837535348566754.a, A090340, A090340.P10386058790835216760.a, A001414, A001414.P8293929508439252105.f1, A001414.P8293929508439252105.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A036288, Nat.add_sub_cancel, A036288.P7295321709579906089.a, A036288.P5869837535348566754.f1, A036288.P5869837535348566754.a, A090340, A090340.P10386058790835216760.a, A001414, A001414.P8293929508439252105.f1, A001414.P8293929508439252105.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A036288

/-! ## A036288.P12973025714843690598

`A023443(A100006(n+1))`
-/

namespace A036288.P12973025714843690598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A100006 (n + 1)).toNat

end

end A036288.P12973025714843690598

namespace A036288

/-- `A023443(A100006(n+1))` -/
def P12973025714843690598.Spec : Prop :=
  ∀ n, P12973025714843690598.a n = A036288 (n + 1)

end A036288

/-! ## A036288.P2857423773235804949

`A001414(Δ[A048058(n)])-1`
-/

namespace A036288.P2857423773235804949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048058 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (f1 (n + 1) - f1 n).toNat - 1

end

end A036288.P2857423773235804949

namespace A036288

/-- `A001414(Δ[A048058(n)])-1` -/
def P2857423773235804949.Spec : Prop :=
  ∀ n, P2857423773235804949.a n = A036288 (n + 1)

end A036288

/-! ## A036288.P568185983819415448

`A023444(A100006(n+1)+1)`
-/

namespace A036288.P568185983819415448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A100006 (n + 1) + 1).toNat

end

end A036288.P568185983819415448

namespace A036288

/-- `A023444(A100006(n+1)+1)` -/
def P568185983819415448.Spec : Prop :=
  ∀ n, P568185983819415448.a n = A036288 (n + 1)

end A036288

/-! ## A036288.P14552536445423858943

`A181894(A354547(n+1))+1`
-/

namespace A036288.P14552536445423858943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181894 (A354547 (n + 1)).toNat + 1

end

end A036288.P14552536445423858943

namespace A036288

/-- `A181894(A354547(n+1))+1` -/
def P14552536445423858943.Spec : Prop :=
  ∀ n, P14552536445423858943.a n = A036288 (n + 1)

end A036288

/-! ## A036288.P12441398636203444114

`A001414(A016789(n)-n)-1`
-/

namespace A036288.P12441398636203444114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A016789 n - (n : ℤ)).toNat - 1

end

end A036288.P12441398636203444114

namespace A036288

/-- `A001414(A016789(n)-n)-1` -/
def P12441398636203444114.Spec : Prop :=
  ∀ n, P12441398636203444114.a n = A036288 (n + 1)

end A036288

/-! ## A036288.P13721465587639404075

`A073093(n+1)+A059975(n+1)`
-/

namespace A036288.P13721465587639404075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073093 (n + 1) + A059975 (n + 1)

end

end A036288.P13721465587639404075

namespace A036288

/-- `A073093(n+1)+A059975(n+1)` -/
def P13721465587639404075.Spec : Prop :=
  ∀ n, P13721465587639404075.a n = A036288 (n + 1)

theorem P13721465587639404075.correct : P13721465587639404075.Spec := by
  intro n
  simp only [A036288, Nat.add_sub_cancel, A036288.P13721465587639404075.a, A036288.P5869837535348566754.f1, A036288.P5869837535348566754.a, A059975, A059975.P3594971538098503590.a, A073093, A073093.P258081957281391684.a, A001222, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, A001414, A001414.P8293929508439252105.f1, A001414.P8293929508439252105.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A036288

/-! ## A036288.P501216768002475928

`A275314(n+1)+A001222(n+1)`
-/

namespace A036288.P501216768002475928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275314 (n + 1) + A001222 (n + 1)

end

end A036288.P501216768002475928

namespace A036288

/-- `A275314(n+1)+A001222(n+1)` -/
def P501216768002475928.Spec : Prop :=
  ∀ n, P501216768002475928.a n = A036288 (n + 1)

theorem P501216768002475928.correct : P501216768002475928.Spec := by
  intro n
  simp only [A036288, Nat.add_sub_cancel, A036288.P501216768002475928.a, A036288.P5869837535348566754.f1, A036288.P5869837535348566754.a, A001222, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, A275314, A275314.P16603517016269577307.a, A001414, A001414.P8293929508439252105.f1, A001414.P8293929508439252105.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A036288

/-! ## A036288.P4135586665380188568

`1+A025281(n+1)-A025281(n)`
-/

namespace A036288.P4135586665380188568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + (A025281 (n + 1) - A025281 n)

end

end A036288.P4135586665380188568

namespace A036288

/-- `1+A025281(n+1)-A025281(n)` -/
def P4135586665380188568.Spec : Prop :=
  ∀ n, P4135586665380188568.a n = A036288 (n + 1)

end A036288

/-! ## A036288.P7823654876595186066

`A159077(n+1)-A078771(n+1)`
-/

namespace A036288.P7823654876595186066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159077 (n + 1) - A078771 (n + 1)

end

end A036288.P7823654876595186066

namespace A036288

/-- `A159077(n+1)-A078771(n+1)` -/
def P7823654876595186066.Spec : Prop :=
  ∀ n, P7823654876595186066.a n = A036288 (n + 1)

theorem P7823654876595186066.correct : P7823654876595186066.Spec := by
  intro n
  simp only [A036288, Nat.add_sub_cancel, A036288.P7823654876595186066.a, A036288.P5869837535348566754.f1, A036288.P5869837535348566754.a, A078771, A078771.P8502218742761172896.a, A159077, A159077.P14146349899783805996.a, A001414, A001414.P8293929508439252105.f1, A001414.P8293929508439252105.a, A008475, A008475.P2912436043946083167.f1, A008475.P2912436043946083167.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A036288

/-! ## A036288.P3572653566700147595

`A001478(n+1)+A075254(n+1)+1`
-/

namespace A036288.P3572653566700147595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001478 (n + 1) + (A075254 (n + 1) + 1)

end

end A036288.P3572653566700147595

namespace A036288

/-- `A001478(n+1)+A075254(n+1)+1` -/
def P3572653566700147595.Spec : Prop :=
  ∀ n, P3572653566700147595.a n = A036288 (n + 1)

theorem P3572653566700147595.correct : P3572653566700147595.Spec := by
  intro n
  simp only [A036288, Nat.add_sub_cancel, A036288.P3572653566700147595.a, A036288.P5869837535348566754.f1, A036288.P5869837535348566754.a, A001478, A001478.P11279598861711037921.a, A075254, A075254.P6422447875050144596.a, A001414, A001414.P8293929508439252105.f1, A001414.P8293929508439252105.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A036288

/-! ## A036288.P9082109815760620778

`A008472(n+1)+A280292(n+1)+1`
-/

namespace A036288.P9082109815760620778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (n + 1) + (A280292 (n + 1) + 1)

end

end A036288.P9082109815760620778

namespace A036288

/-- `A008472(n+1)+A280292(n+1)+1` -/
def P9082109815760620778.Spec : Prop :=
  ∀ n, P9082109815760620778.a n = A036288 (n + 1)

theorem P9082109815760620778.correct : P9082109815760620778.Spec := by
  intro n
  simp only [A036288, Nat.add_sub_cancel, A036288.P9082109815760620778.a, A036288.P5869837535348566754.f1, A036288.P5869837535348566754.a, A008472, A008472.P6567490011312877583.f1, A008472.P6567490011312877583.a, A280292, A280292.P17147228295463227534.a, A001414, A001414.P8293929508439252105.f1, A001414.P8293929508439252105.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A036288

/-! ## A036288.P8889234993378242135

`A008475(n+1)+1-A078771(n+1)`
-/

namespace A036288.P8889234993378242135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008475 (n + 1) + (1 - A078771 (n + 1))

end

end A036288.P8889234993378242135

namespace A036288

/-- `A008475(n+1)+1-A078771(n+1)` -/
def P8889234993378242135.Spec : Prop :=
  ∀ n, P8889234993378242135.a n = A036288 (n + 1)

theorem P8889234993378242135.correct : P8889234993378242135.Spec := by
  intro n
  simp only [A036288, Nat.add_sub_cancel, A036288.P8889234993378242135.a, A036288.P5869837535348566754.f1, A036288.P5869837535348566754.a, A008475, A008475.P2912436043946083167.f1, A008475.P2912436043946083167.a, A078771, A078771.P8502218742761172896.a, A001414, A001414.P8293929508439252105.f1, A001414.P8293929508439252105.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A036288

/-!
# A036289: a(n) = n*2^n.

The programs for A036289, the canonical program `A036289.P13525419631139213940` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A036289 has offset 0).

The definition of A036289 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*2^n` (program `A036289.P13525419631139213940`, by `A036289.P13525419631139213940.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A036289.P13525419631139213940

`n*2^n`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A036289

/-- `n*2^n` -/
def P13525419631139213940.Spec : Prop :=
  ∀ n, (P13525419631139213940.a n : ℤ) = A036289 n

theorem P13525419631139213940.correct : P13525419631139213940.Spec := by
  intro n
  simp only [A036289]

end A036289

/-!
# A036290: a(n) = n*3^n.

The programs for A036290, the canonical program `A036290.P13464595081009669665` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A036290 has offset 0).

The definition of A036290 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*3^n` (program `A036290.P13464595081009669665`, by `A036290.P13464595081009669665.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A036290.P14426312610098043207

`3^n*n`
-/

namespace A036290.P14426312610098043207
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n * n

end

end A036290.P14426312610098043207

namespace A036290

/-- `3^n*n` -/
def P14426312610098043207.Spec : Prop :=
  ∀ n, (P14426312610098043207.a n : ℤ) = A036290 n

theorem P14426312610098043207.correct : P14426312610098043207.Spec := by
  intro n
  simp only [A036290, Nat.add_sub_cancel, A036290.P14426312610098043207.a, A036290.P13464595081009669665.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A036290

/-! ## A036290.P13464595081009669665

`n*3^n`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A036290

/-- `n*3^n` -/
def P13464595081009669665.Spec : Prop :=
  ∀ n, (P13464595081009669665.a n : ℤ) = A036290 n

theorem P13464595081009669665.correct : P13464595081009669665.Spec := by
  intro n
  simp only [A036290]

end A036290

/-!
# A036291: a(n) = n*5^n.

The programs for A036291, the canonical program `A036291.P15305288486312192511` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A036291 has offset 0).

The definition of A036291 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*5^n` (program `A036291.P15305288486312192511`, by `A036291.P15305288486312192511.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A036291.P15305288486312192511

`n*5^n`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A036291

/-- `n*5^n` -/
def P15305288486312192511.Spec : Prop :=
  ∀ n, (P15305288486312192511.a n : ℤ) = A036291 n

theorem P15305288486312192511.correct : P15305288486312192511.Spec := by
  intro n
  simp only [A036291]

end A036291

/-!
# A036292: a(n) = n*6^n.

The programs for A036292, the canonical program `A036292.P17934490040438387144` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A036292 has offset 0).

The definition of A036292 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*6^n` (program `A036292.P17934490040438387144`, by `A036292.P17934490040438387144.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A036292.P17934490040438387144

`n*6^n`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A036292

/-- `n*6^n` -/
def P17934490040438387144.Spec : Prop :=
  ∀ n, (P17934490040438387144.a n : ℤ) = A036292 n

theorem P17934490040438387144.correct : P17934490040438387144.Spec := by
  intro n
  simp only [A036292]

end A036292

/-!
# A036293: a(n) = n*7^n.

The programs for A036293, the canonical program `A036293.P8879774288884538033` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A036293 has offset 0).

The definition of A036293 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*7^n` (program `A036293.P8879774288884538033`, by `A036293.P8879774288884538033.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A036293.P8879774288884538033

`n*7^n`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A036293

/-- `n*7^n` -/
def P8879774288884538033.Spec : Prop :=
  ∀ n, (P8879774288884538033.a n : ℤ) = A036293 n

theorem P8879774288884538033.correct : P8879774288884538033.Spec := by
  intro n
  simp only [A036293]

end A036293

/-!
# A036294: a(n) = n*8^n.

The programs for A036294, the canonical program `A036294.P5330429695356076462` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A036294 has offset 0).

The definition of A036294 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*8^n` (program `A036294.P5330429695356076462`, by `A036294.P5330429695356076462.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A036294.P5330429695356076462

`n*8^n`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A036294

/-- `n*8^n` -/
def P5330429695356076462.Spec : Prop :=
  ∀ n, (P5330429695356076462.a n : ℤ) = A036294 n

theorem P5330429695356076462.correct : P5330429695356076462.Spec := by
  intro n
  simp only [A036294]

end A036294

/-!
# A036295: Numerator of Sum_{i=1..n} i/2^i.

The programs for A036295, the canonical program `A036295.P14687617779542184873` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A036295 has offset 0).

The definition of A036295 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A036295.P14687617779542184873

`A000295(n+1)/A006519(n+2)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A036295

/-- `A000295(n+1)/A006519(n+2)` -/
def P14687617779542184873.Spec : Prop :=
  ∀ n, P14687617779542184873.a n = (A036295 n : ℚ)

end A036295

/-! ## A036295.P8602878261707113727

`A084623(n+2)-A000265(n+2)`
-/

namespace A036295.P8602878261707113727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084623 (n + 2) - A000265 (n + 2)

end

end A036295.P8602878261707113727

namespace A036295

/-- `A084623(n+2)-A000265(n+2)` -/
def P8602878261707113727.Spec : Prop :=
  ∀ n, P8602878261707113727.a n = A036295 n

end A036295

/-! ## A036295.P13631774760007176383

`A084623(n+2)-A093803(2*(n+2))`
-/

namespace A036295.P13631774760007176383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084623 (n + 2) - A093803 (2 * (n + 2))

end

end A036295.P13631774760007176383

namespace A036295

/-- `A084623(n+2)-A093803(2*(n+2))` -/
def P13631774760007176383.Spec : Prop :=
  ∀ n, P13631774760007176383.a n = A036295 n

end A036295

/-! ## A036295.P11289012928858189815

`A000079(n+1-A007814(n+2))-A000265(n+2)`
-/

namespace A036295.P11289012928858189815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 ((n + 1 : ℤ) - A007814 (n + 2)).toNat - A000265 (n + 2)

end

end A036295.P11289012928858189815

namespace A036295

/-- `A000079(n+1-A007814(n+2))-A000265(n+2)` -/
def P11289012928858189815.Spec : Prop :=
  ∀ n, P11289012928858189815.a n = A036295 n

end A036295

/-! ## A036295.P2878385770119050261

`∑[A000225(n)]/A006519(n+2)`
-/

namespace A036295.P2878385770119050261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A006519 (n + 2) : ℚ)

end

end A036295.P2878385770119050261

namespace A036295

/-- `∑[A000225(n)]/A006519(n+2)` -/
def P2878385770119050261.Spec : Prop :=
  ∀ n, P2878385770119050261.a n = (A036295 n : ℚ)

end A036295

/-! ## A036295.P13835589362832895855

`(A000325(n+1)-1)/A006519(n+2)`
-/

namespace A036295.P13835589362832895855
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000325 (n + 1) - 1 : ℚ) / (A006519 (n + 2) : ℚ)

end

end A036295.P13835589362832895855

namespace A036295

/-- `(A000325(n+1)-1)/A006519(n+2)` -/
def P13835589362832895855.Spec : Prop :=
  ∀ n, P13835589362832895855.a n = (A036295 n : ℚ)

end A036295

/-! ## A036295.P17133855803349029025

`(A000918(n+1)-n)/A006519(n+2)`
-/

namespace A036295.P17133855803349029025
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000918 (n + 1) - (n : ℤ) : ℚ) / (A006519 (n + 2) : ℚ)

end

end A036295.P17133855803349029025

namespace A036295

/-- `(A000918(n+1)-n)/A006519(n+2)` -/
def P17133855803349029025.Spec : Prop :=
  ∀ n, P17133855803349029025.a n = (A036295 n : ℚ)

end A036295

/-! ## A036295.P421011504185773977

`A000079(n+1)/A006519(n+2)-A000265(n+2)`
-/

namespace A036295.P421011504185773977
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000079 (n + 1) : ℚ) / (A006519 (n + 2) : ℚ) - (A000265 (n + 2) : ℚ)

end

end A036295.P421011504185773977

namespace A036295

/-- `A000079(n+1)/A006519(n+2)-A000265(n+2)` -/
def P421011504185773977.Spec : Prop :=
  ∀ n, P421011504185773977.a n = (A036295 n : ℚ)

end A036295

/-! ## A036295.P8275403260677978455

`A075101(n+2)/2-A000265(n+2)`
-/

namespace A036295.P8275403260677978455
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075101 (n + 2) : ℚ) / 2 - (A000265 (n + 2) : ℚ)

end

end A036295.P8275403260677978455

namespace A036295

/-- `A075101(n+2)/2-A000265(n+2)` -/
def P8275403260677978455.Spec : Prop :=
  ∀ n, P8275403260677978455.a n = (A036295 n : ℚ)

end A036295

/-! ## A036295.P10329769040545757691

`A075101(n+2)-A005126(n+1)/A006519(n+2)`
-/

namespace A036295.P10329769040545757691
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075101 (n + 2) : ℚ) - (A005126 (n + 1) : ℚ) / (A006519 (n + 2) : ℚ)

end

end A036295.P10329769040545757691

namespace A036295

/-- `A075101(n+2)-A005126(n+1)/A006519(n+2)` -/
def P10329769040545757691.Spec : Prop :=
  ∀ n, P10329769040545757691.a n = (A036295 n : ℚ)

end A036295

/-! ## A036295.P10401263811494628112

`A084623(n+2)-A001790(n+1)/A098597(n+1)`
-/

namespace A036295.P10401263811494628112
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A084623 (n + 2) : ℚ) - (A001790 (n + 1) : ℚ) / (A098597 (n + 1) : ℚ)

end

end A036295.P10401263811494628112

namespace A036295

/-- `A084623(n+2)-A001790(n+1)/A098597(n+1)` -/
def P10401263811494628112.Spec : Prop :=
  ∀ n, P10401263811494628112.a n = (A036295 n : ℚ)

end A036295

/-! ## A036295.P17062085810416843116

`A279635(n+2)-A271573(n+2)`
-/

namespace A036295.P17062085810416843116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279635 (n + 2) - A271573 (n + 2)

end

end A036295.P17062085810416843116

namespace A036295

/-- `A279635(n+2)-A271573(n+2)` -/
def P17062085810416843116.Spec : Prop :=
  ∀ n, P17062085810416843116.a n = A036295 n

end A036295

/-!
# A036296: Denominator of Sum_{i=1..n} i/2^i.

The programs for A036296, the canonical program `A036296.P2772493522486156713` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A036296 has offset 0).

The definition of A036296 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A036296.P17591562317459604577

`ceil(2^(n-val(n+2, 2)))`
-/

namespace A036296.P17591562317459604577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 : ℚ) ^ ((n : ℤ) - (SequenceMachineLib.valuation (n + 2) 2 : ℤ) : ℤ)⌉

end

end A036296.P17591562317459604577

namespace A036296

/-- `ceil(2^(n-val(n+2, 2)))` -/
def P17591562317459604577.Spec : Prop :=
  ∀ n, P17591562317459604577.a n = A036296 n

end A036296

/-! ## A036296.P8507788038008765098

`round(2^(n-val(n+2, 2)))`
-/

namespace A036296.P8507788038008765098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 : ℚ) ^ ((n : ℤ) - (SequenceMachineLib.valuation (n + 2) 2 : ℤ) : ℤ))

end

end A036296.P8507788038008765098

namespace A036296

/-- `round(2^(n-val(n+2, 2)))` -/
def P8507788038008765098.Spec : Prop :=
  ∀ n, P8507788038008765098.a n = A036296 n

end A036296

/-! ## A036296.P2772493522486156713

`ceil(A084623(n+2)/2)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A036296

/-- `ceil(A084623(n+2)/2)` -/
def P2772493522486156713.Spec : Prop :=
  ∀ n, P2772493522486156713.a n = A036296 n

theorem P2772493522486156713.correct : P2772493522486156713.Spec := by
  intro n
  simp only [A036296]

end A036296

/-! ## A036296.P889527279210768819

`ceil(2^n/A006519(n+2))`
-/

namespace A036296.P889527279210768819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 ^ n : ℚ) / (A006519 (n + 2) : ℚ)⌉

end

end A036296.P889527279210768819

namespace A036296

/-- `ceil(2^n/A006519(n+2))` -/
def P889527279210768819.Spec : Prop :=
  ∀ n, P889527279210768819.a n = A036296 n

end A036296

/-! ## A036296.P13634264489270924288

`A011782(log2(A084623(n+2)))`
-/

namespace A036296.P13634264489270924288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (SequenceMachineLib.roundAway (Real.logb 2 (A084623 (n + 2) : ℝ))).toNat

end

end A036296.P13634264489270924288

namespace A036296

/-- `A011782(log2(A084623(n+2)))` -/
def P13634264489270924288.Spec : Prop :=
  ∀ n, P13634264489270924288.a n = A036296 n

end A036296

/-! ## A036296.P8303347398889906780

`A011782(val(A084623(n+2), 2))`
-/

namespace A036296.P8303347398889906780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (SequenceMachineLib.valuation (A084623 (n + 2)).toNat 2)

end

end A036296.P8303347398889906780

namespace A036296

/-- `A011782(val(A084623(n+2), 2))` -/
def P8303347398889906780.Spec : Prop :=
  ∀ n, P8303347398889906780.a n = A036296 n

end A036296

/-! ## A036296.P14278900169374733556

`A011782(n+1-A007814(n+2))`
-/

namespace A036296.P14278900169374733556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 ((n + 1 : ℤ) - A007814 (n + 2)).toNat

end

end A036296.P14278900169374733556

namespace A036296

/-- `A011782(n+1-A007814(n+2))` -/
def P14278900169374733556.Spec : Prop :=
  ∀ n, P14278900169374733556.a n = A036296 n

end A036296

/-! ## A036296.P17951930959499414061

`A011782(n+2-A001511(n+2))`
-/

namespace A036296.P17951930959499414061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 ((n + 2 : ℤ) - A001511 (n + 2)).toNat

end

end A036296.P17951930959499414061

namespace A036296

/-- `A011782(n+2-A001511(n+2))` -/
def P17951930959499414061.Spec : Prop :=
  ∀ n, P17951930959499414061.a n = A036296 n

end A036296

/-! ## A036296.P4159468976851881713

`2*A011782(n)/A006519(n+2)`
-/

namespace A036296.P4159468976851881713
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * A011782 n : ℚ) / (A006519 (n + 2) : ℚ)

end

end A036296.P4159468976851881713

namespace A036296

/-- `2*A011782(n)/A006519(n+2)` -/
def P4159468976851881713.Spec : Prop :=
  ∀ n, P4159468976851881713.a n = (A036296 n : ℚ)

end A036296

/-! ## A036296.P498645524056033589

`A084623(n+2)/A323157(2*n+1)`
-/

namespace A036296.P498645524056033589
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A084623 (n + 2) : ℚ) / (A323157 (2 * n + 1) : ℚ)

end

end A036296.P498645524056033589

namespace A036296

/-- `A084623(n+2)/A323157(2*n+1)` -/
def P498645524056033589.Spec : Prop :=
  ∀ n, P498645524056033589.a n = (A036296 n : ℚ)

end A036296

/-! ## A036296.P16178865799397706661

`A090129(n+2)/A090129(A090740(n+2))`
-/

namespace A036296.P16178865799397706661
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A090129 (n + 2) : ℚ) / (A090129 (A090740 (n + 2)).toNat : ℚ)

end

end A036296.P16178865799397706661

namespace A036296

/-- `A090129(n+2)/A090129(A090740(n+2))` -/
def P16178865799397706661.Spec : Prop :=
  ∀ n, P16178865799397706661.a n = (A036296 n : ℚ)

end A036296

/-! ## A036296.P18322127309633523189

`A000079(A000007(n)+n)/A006519(n+2)`
-/

namespace A036296.P18322127309633523189
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000079 (A000007 n + (n : ℤ)).toNat : ℚ) / (A006519 (n + 2) : ℚ)

end

end A036296.P18322127309633523189

namespace A036296

/-- `A000079(A000007(n)+n)/A006519(n+2)` -/
def P18322127309633523189.Spec : Prop :=
  ∀ n, P18322127309633523189.a n = (A036296 n : ℚ)

end A036296

/-! ## A036296.P16646378973082273334

`A048896(n+1)/A048896(n)*A011782(n)`
-/

namespace A036296.P16646378973082273334
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048896 (n + 1) : ℚ) / (A048896 n : ℚ) * (A011782 n : ℚ)

end

end A036296.P16646378973082273334

namespace A036296

/-- `A048896(n+1)/A048896(n)*A011782(n)` -/
def P16646378973082273334.Spec : Prop :=
  ∀ n, P16646378973082273334.a n = (A036296 n : ℚ)

end A036296

/-! ## A036296.P4780649725107517793

`A000079(A101279(2*n+1)-A007814(n+2))`
-/

namespace A036296.P4780649725107517793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A101279 (2 * n + 1) - A007814 (n + 2)).toNat

end

end A036296.P4780649725107517793

namespace A036296

/-- `A000079(A101279(2*n+1)-A007814(n+2))` -/
def P4780649725107517793.Spec : Prop :=
  ∀ n, P4780649725107517793.a n = A036296 n

end A036296

/-! ## A036296.P15513560385073561240

`A011782(n+1)/gcd(A005940(n+2), A011782(n+1))`
-/

namespace A036296.P15513560385073561240
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A011782 (n + 1) : ℚ) / (Int.gcd (A005940 (n + 2)) (A011782 (n + 1)) : ℚ)

end

end A036296.P15513560385073561240

namespace A036296

/-- `A011782(n+1)/gcd(A005940(n+2), A011782(n+1))` -/
def P15513560385073561240.Spec : Prop :=
  ∀ n, P15513560385073561240.a n = (A036296 n : ℚ)

end A036296

/-! ## A036296.P15702736299521123651

`A106624(2*n)/gcd(A106624(2*n), A327405(n+2))`
-/

namespace A036296.P15702736299521123651
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A106624 (2 * n) : ℚ) / (Int.gcd (A106624 (2 * n)) (A327405 (n + 2)) : ℚ)

end

end A036296.P15702736299521123651

namespace A036296

/-- `A106624(2*n)/gcd(A106624(2*n), A327405(n+2))` -/
def P15702736299521123651.Spec : Prop :=
  ∀ n, P15702736299521123651.a n = (A036296 n : ℚ)

end A036296

/-! ## A036296.P8934917759642512357

`A060723(A357130(n+1))`
-/

namespace A036296.P8934917759642512357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060723 (A357130 (n + 1)).toNat

end

end A036296.P8934917759642512357

namespace A036296

/-- `A060723(A357130(n+1))` -/
def P8934917759642512357.Spec : Prop :=
  ∀ n, P8934917759642512357.a n = A036296 n

end A036296

/-! ## A036296.P5229489465653397617

`round(A000079(n+1)/A000079(A001511(n+2)))`
-/

namespace A036296.P5229489465653397617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A000079 (n + 1) : ℚ) / (A000079 (A001511 (n + 2)).toNat : ℚ))

end

end A036296.P5229489465653397617

namespace A036296

/-- `round(A000079(n+1)/A000079(A001511(n+2)))` -/
def P5229489465653397617.Spec : Prop :=
  ∀ n, P5229489465653397617.a n = A036296 n

end A036296

/-! ## A036296.P16721792353005373724

`A075101(n+2)/(A158478(2*n)+2)`
-/

namespace A036296.P16721792353005373724
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075101 (n + 2) : ℚ) / (A158478 (2 * n) + 2 : ℚ)

end

end A036296.P16721792353005373724

namespace A036296

/-- `A075101(n+2)/(A158478(2*n)+2)` -/
def P16721792353005373724.Spec : Prop :=
  ∀ n, P16721792353005373724.a n = (A036296 n : ℚ)

end A036296

/-! ## A036296.P10756900547044764222

`A000079(abs((3*A198275(n))%2-n)-A007814(n+2)+1)`
-/

namespace A036296.P10756900547044764222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (|Int.tmod (3 * A198275 n) 2 - (n : ℤ)| - A007814 (n + 2) + 1).toNat

end

end A036296.P10756900547044764222

namespace A036296

/-- `A000079(abs((3*A198275(n))%2-n)-A007814(n+2)+1)` -/
def P10756900547044764222.Spec : Prop :=
  ∀ n, P10756900547044764222.a n = A036296 n

end A036296

/-!
# A036297: Number of Hadamard matrices of order n.

The programs for A036297, there is no canonical definition to state claims against.
-/

/-! ## A036297.P11857829957777901385

`A053735(C(A086449(n), n))`
-/

namespace A036297.P11857829957777901385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053735 (Nat.choose (A086449 n).toNat n)

end

end A036297.P11857829957777901385

/-! ## A036297.P8141515758115429718

`round(A383708(n)/A260443(n))`
-/

namespace A036297.P8141515758115429718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A383708 n : ℚ) / (A260443 n : ℚ))

end

end A036297.P8141515758115429718

/-! ## A036297.P8280673860190692112

`A059484(n*A147753(n+1))`
-/

namespace A036297.P8280673860190692112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059484 ((n : ℤ) * A147753 (n + 1)).toNat

end

end A036297.P8280673860190692112

/-! ## A036297.P7693302520194742295

`A104205(C(A253144(n), lcm(16, n)/16))`
-/

namespace A036297.P7693302520194742295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104205 (Nat.choose (A253144 n).toNat (SequenceMachineLib.roundAway ((Nat.lcm 16 n : ℚ) / 16)).toNat)

end

end A036297.P7693302520194742295

/-! ## A036297.P14258167592180563896

`A089643(A035444(n)^A087897(n))`
-/

namespace A036297.P14258167592180563896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089643 (SequenceMachineLib.roundAway ((A035444 n : ℚ) ^ (A087897 n : ℤ))).toNat

end

end A036297.P14258167592180563896

/-!
# A036298: 

The programs for A036298, there is no canonical definition to state claims against.
-/

/-! ## A036298.P8704998285849938359

`lcm(n, n!!)`
-/

namespace A036298.P8704998285849938359
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm n (Nat.factorial (Nat.factorial n))

end

end A036298.P8704998285849938359

/-!
# A036299: Binary Fibonacci (or rabbit) sequence.

The programs for A036299, there is no canonical definition to state claims against.
-/

/-! ## A036299.P12666483749430910262

`A061107(n+1)`
-/

namespace A036299.P12666483749430910262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061107 (n + 1)

end

end A036299.P12666483749430910262

/-! ## A036299.P12970658318225632149

`∑[abs(Δ[A061107(n)])]`
-/

namespace A036299.P12970658318225632149
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061107 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036299.P12970658318225632149

/-! ## A036299.P10343638100697127521

`A108047(n+2)-A288582(n+1)`
-/

namespace A036299.P10343638100697127521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108047 (n + 2) - A288582 (n + 1)

end

end A036299.P10343638100697127521

