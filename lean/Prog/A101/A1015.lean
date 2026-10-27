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
import Seq.B000.C009
import Seq.B000.C010
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
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C037
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
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
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
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
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A101500: A Chebyshev transform of the central binomial numbers.

The programs for A101500, there is no canonical definition to state claims against.
-/

/-! ## A101500.P13519718865303519454

`A102879(n)+a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A101500.P13519718865303519454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A102879 n + a (n - 2)

end

end A101500.P13519718865303519454

/-! ## A101500.P6657349730925401383

`A360293(n)-a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A101500.P6657349730925401383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A360293 n - a (n - 2)

end

end A101500.P6657349730925401383

/-! ## A101500.P3836568011557943265

`(A124431(n)+A101499(n))/2`
-/

namespace A101500.P3836568011557943265
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A124431 n + A101499 n : ℚ) / 2

end

end A101500.P3836568011557943265

/-! ## A101500.P12305061636733215355

`(A360293(n)+A102879(n))/2`
-/

namespace A101500.P12305061636733215355
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A360293 n + A102879 n : ℚ) / 2

end

end A101500.P12305061636733215355

/-!
# A101501: Number of walks between adjacent nodes on C_5 tensor J_2.

The programs for A101501, the canonical program `A101501.P4796860947762391432` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A101501 has offset 0).

The definition of A101501 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A101501.P4796860947762391432

`2*a(n-1)+12*a(n-2)-16*a(n-3)` with `a(0)=0, a(1)=1, a(2)=0`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A101501

/-- `2*a(n-1)+12*a(n-2)-16*a(n-3)` -/
def P4796860947762391432.Spec : Prop :=
  ∀ n, P4796860947762391432.a n = A101501 n

theorem P4796860947762391432.correct : P4796860947762391432.Spec := by
  intro n
  simp only [A101501]

end A101501

/-! ## A101501.P5081137785456708193

`(sqrt(5)-1)^(n+1)/20-(sqrt(5)+1)^(n+1)*(-1)^n/20+4^n/10`
-/

namespace A101501.P5081137785456708193
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Real.sqrt (5 : ℝ) - 1) ^ (n + 1) / 20 - (Real.sqrt (5 : ℝ) + 1) ^ (n + 1) * ((-1) ^ n : ℝ) / 20 + ((4 ^ n : ℚ) / 10 : ℝ)

end

end A101501.P5081137785456708193

namespace A101501

/-- `(sqrt(5)-1)^(n+1)/20-(sqrt(5)+1)^(n+1)*(-1)^n/20+4^n/10` -/
def P5081137785456708193.Spec : Prop :=
  ∀ n, P5081137785456708193.a n = (A101501 n : ℝ)

theorem P5081137785456708193.correct : P5081137785456708193.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A101501, Nat.add_sub_cancel, A101501.P5081137785456708193.a, A101501.P4796860947762391432.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A101501, Nat.add_sub_cancel, A101501.P5081137785456708193.a, A101501.P4796860947762391432.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [← h1, ← h2, ← h3]
      first | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A101501

/-! ## A101501.P14301125407190903111

`1/10*(4^n-(-2)^n*A000032(n+1))`
-/

namespace A101501.P14301125407190903111
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 10 * ((4 ^ n : ℤ) - (-2) ^ n * A000032 (n + 1) : ℚ)

end

end A101501.P14301125407190903111

namespace A101501

/-- `1/10*(4^n-(-2)^n*A000032(n+1))` -/
def P14301125407190903111.Spec : Prop :=
  ∀ n, P14301125407190903111.a n = (A101501 n : ℚ)

end A101501

/-! ## A101501.P12565478695180590307

`2^(n-2)*A054877(n+1)`
-/

namespace A101501.P12565478695180590307
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 2 : ℤ) * (A054877 (n + 1) : ℚ)

end

end A101501.P12565478695180590307

namespace A101501

/-- `2^(n-2)*A054877(n+1)` -/
def P12565478695180590307.Spec : Prop :=
  ∀ n, P12565478695180590307.a n = (A101501 n : ℚ)

end A101501

/-! ## A101501.P3226722379928036093

`A084178(n)*A123344(n)`
-/

namespace A101501.P3226722379928036093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084178 n * A123344 n

end

end A101501.P3226722379928036093

namespace A101501

/-- `A084178(n)*A123344(n)` -/
def P3226722379928036093.Spec : Prop :=
  ∀ n, P3226722379928036093.a n = A101501 n

end A101501

/-! ## A101501.P12891375401156478032

`abs(A011782(n)*A084178(n))`
-/

namespace A101501.P12891375401156478032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A011782 n * A084178 n|

end

end A101501.P12891375401156478032

namespace A101501

/-- `abs(A011782(n)*A084178(n))` -/
def P12891375401156478032.Spec : Prop :=
  ∀ n, P12891375401156478032.a n = A101501 n

end A101501

/-! ## A101501.P5171468119308346686

`abs(A084178(n)*A131577(n))`
-/

namespace A101501.P5171468119308346686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A084178 n * A131577 n|

end

end A101501.P5171468119308346686

namespace A101501

/-- `abs(A084178(n)*A131577(n))` -/
def P5171468119308346686.Spec : Prop :=
  ∀ n, P5171468119308346686.a n = A101501 n

end A101501

/-! ## A101501.P16775782516887102550

`abs(∑[A034008(n)]*A084178(n))`
-/

namespace A101501.P16775782516887102550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034008 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(∑ j ∈ Finset.range (n + 1), f1 j) * A084178 n|

end

end A101501.P16775782516887102550

namespace A101501

/-- `abs(∑[A034008(n)]*A084178(n))` -/
def P16775782516887102550.Spec : Prop :=
  ∀ n, P16775782516887102550.a n = A101501 n

end A101501

/-! ## A101501.P15188116647192880356

`abs(Δ[A056469(n)]*A084178(n))`
-/

namespace A101501.P15188116647192880356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056469 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(f1 (n + 1) - f1 n) * A084178 n|

end

end A101501.P15188116647192880356

namespace A101501

/-- `abs(Δ[A056469(n)]*A084178(n))` -/
def P15188116647192880356.Spec : Prop :=
  ∀ n, P15188116647192880356.a n = A101501 n

end A101501

/-! ## A101501.P3984078635768588590

`abs(A034008(n+1)*A084178(n))`
-/

namespace A101501.P3984078635768588590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A034008 (n + 1) * A084178 n|

end

end A101501.P3984078635768588590

namespace A101501

/-- `abs(A034008(n+1)*A084178(n))` -/
def P3984078635768588590.Spec : Prop :=
  ∀ n, P3984078635768588590.a n = A101501 n

end A101501

/-! ## A101501.P1518866919820209019

`abs(record[A087207(n+1)]*A084178(n))`
-/

namespace A101501.P1518866919820209019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087207 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A084178 n|

end

end A101501.P1518866919820209019

namespace A101501

/-- `abs(record[A087207(n+1)]*A084178(n))` -/
def P1518866919820209019.Spec : Prop :=
  ∀ n, P1518866919820209019.a n = A101501 n

end A101501

/-! ## A101501.P1115716667473133907

`A034008(n+1)*A054877(n+1)/2`
-/

namespace A101501.P1115716667473133907
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034008 (n + 1) * A054877 (n + 1) : ℚ) / 2

end

end A101501.P1115716667473133907

namespace A101501

/-- `A034008(n+1)*A054877(n+1)/2` -/
def P1115716667473133907.Spec : Prop :=
  ∀ n, P1115716667473133907.a n = (A101501 n : ℚ)

end A101501

/-! ## A101501.P1228946989248276333

`A101502(n+1)/4`
-/

namespace A101501.P1228946989248276333
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A101502 (n + 1) : ℚ) / 4

end

end A101501.P1228946989248276333

namespace A101501

/-- `A101502(n+1)/4` -/
def P1228946989248276333.Spec : Prop :=
  ∀ n, P1228946989248276333.a n = (A101501 n : ℚ)

end A101501

/-!
# A101502: Number of closed walks on C_5 tensor J_2.

The programs for A101502, the canonical program `A101502.P8897392815076853214` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A101502 has offset 0).

The definition of A101502 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A101502.P8897392815076853214

`2*a(n-1)+12*a(n-2)-16*a(n-3)` with `a(0)=1, a(1)=0, a(2)=4, a(3)=0`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A101502

/-- `2*a(n-1)+12*a(n-2)-16*a(n-3)` -/
def P8897392815076853214.Spec : Prop :=
  ∀ n, P8897392815076853214.a n = A101502 n

theorem P8897392815076853214.correct : P8897392815076853214.Spec := by
  intro n
  simp only [A101502]

end A101502

/-! ## A101502.P6894447223931848945

`A011782(n)*A054877(n)`
-/

namespace A101502.P6894447223931848945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n * A054877 n

end

end A101502.P6894447223931848945

namespace A101502

/-- `A011782(n)*A054877(n)` -/
def P6894447223931848945.Spec : Prop :=
  ∀ n, P6894447223931848945.a n = A101502 n

end A101502

/-! ## A101502.P1256429054551837014

`abs(A054877(n)*A123344(n))`
-/

namespace A101502.P1256429054551837014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A054877 n * A123344 n|

end

end A101502.P1256429054551837014

namespace A101502

/-- `abs(A054877(n)*A123344(n))` -/
def P1256429054551837014.Spec : Prop :=
  ∀ n, P1256429054551837014.a n = A101502 n

end A101502

/-! ## A101502.P9201014846032203912

`∑[A034008(n)]*A054877(n)`
-/

namespace A101502.P9201014846032203912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034008 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A054877 n

end

end A101502.P9201014846032203912

namespace A101502

/-- `∑[A034008(n)]*A054877(n)` -/
def P9201014846032203912.Spec : Prop :=
  ∀ n, P9201014846032203912.a n = A101502 n

end A101502

/-! ## A101502.P11607119597425105810

`Δ[A056469(n)]*A054877(n)`
-/

namespace A101502.P11607119597425105810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056469 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A054877 n

end

end A101502.P11607119597425105810

namespace A101502

/-- `Δ[A056469(n)]*A054877(n)` -/
def P11607119597425105810.Spec : Prop :=
  ∀ n, P11607119597425105810.a n = A101502 n

end A101502

/-! ## A101502.P648243899077048286

`Δ[A094373(n)]*A054877(n)`
-/

namespace A101502.P648243899077048286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094373 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A054877 n

end

end A101502.P648243899077048286

namespace A101502

/-- `Δ[A094373(n)]*A054877(n)` -/
def P648243899077048286.Spec : Prop :=
  ∀ n, P648243899077048286.a n = A101502 n

end A101502

/-! ## A101502.P28894133824511025

`A054877(n)*A090129(n+1)`
-/

namespace A101502.P28894133824511025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054877 n * A090129 (n + 1)

end

end A101502.P28894133824511025

namespace A101502

/-- `A054877(n)*A090129(n+1)` -/
def P28894133824511025.Spec : Prop :=
  ∀ n, P28894133824511025.a n = A101502 n

end A101502

/-!
# A101503: Numbers k such that 11*k + 101 is prime.

The programs for A101503, the canonical program `A101503.P15868752021087344529` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A101503 has offset 1).

The definition of A101503 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A101503.P15868752021087344529

`A102721(n+3)-8`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A101503

/-- `A102721(n+3)-8` -/
def P15868752021087344529.Spec : Prop :=
  ∀ n, P15868752021087344529.a n = A101503 (n + 1)

theorem P15868752021087344529.correct : P15868752021087344529.Spec := by
  intro n
  simp only [A101503, Nat.add_sub_cancel]

end A101503

/-! ## A101503.P8682601452024486303

`A111312(n+4)-9`
-/

namespace A101503.P8682601452024486303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111312 (n + 4) - 9

end

end A101503.P8682601452024486303

namespace A101503

/-- `A111312(n+4)-9` -/
def P8682601452024486303.Spec : Prop :=
  ∀ n, P8682601452024486303.a n = A101503 (n + 1)

theorem P8682601452024486303.correct : P8682601452024486303.Spec := by
  intro n
  simp only [A101503, Nat.add_sub_cancel, A101503.P8682601452024486303.a, A101503.P15868752021087344529.a, A102721, A102721.P3616189499359060768.a, A111312, A111312.P7205974306783462108.a, A106690, A106690.P4249036395545775294.f1, A106690.P4249036395545775294.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A101503

/-! ## A101503.P606916343182930652

`A106690(n+4)-18`
-/

namespace A101503.P606916343182930652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106690 (n + 4) - 18

end

end A101503.P606916343182930652

namespace A101503

/-- `A106690(n+4)-18` -/
def P606916343182930652.Spec : Prop :=
  ∀ n, P606916343182930652.a n = A101503 (n + 1)

theorem P606916343182930652.correct : P606916343182930652.Spec := by
  intro n
  simp only [A101503, Nat.add_sub_cancel, A101503.P606916343182930652.a, A101503.P15868752021087344529.a, A102721, A102721.P3616189499359060768.a, A106690, A106690.P4249036395545775294.f1, A106690.P4249036395545775294.a, A111312, A111312.P7205974306783462108.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A101503

/-! ## A101503.P7633605471825150574

`eq[1, A010051(A017413(n+9))]`
-/

namespace A101503.P7633605471825150574
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A017413 (n + 9)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A101503.P7633605471825150574

namespace A101503

/-- `eq[1, A010051(A017413(n+9))]` -/
def P7633605471825150574.Spec : Prop :=
  ∀ n, (P7633605471825150574.a n : ℤ) = A101503 (n + 1)

end A101503

/-! ## A101503.P303096364358712040

`eq[1, A001222(sqrt(A017414(n+9)))]`
-/

namespace A101503.P303096364358712040
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway (Real.sqrt (A017414 (n + 9) : ℝ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A101503.P303096364358712040

namespace A101503

/-- `eq[1, A001222(sqrt(A017414(n+9)))]` -/
def P303096364358712040.Spec : Prop :=
  ∀ n, (P303096364358712040.a n : ℤ) = A101503 (n + 1)

end A101503

/-! ## A101503.P3926189479574298564

`eq[A000010(A017413(n+9)), A017401(n+9)]`
-/

namespace A101503.P3926189479574298564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A017413 (n + 9)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017401 (n + 9)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A101503.P3926189479574298564

namespace A101503

/-- `eq[A000010(A017413(n+9)), A017401(n+9)]` -/
def P3926189479574298564.Spec : Prop :=
  ∀ n, (P3926189479574298564.a n : ℤ) = A101503 (n + 1)

end A101503

/-! ## A101503.P15608138711656154196

`eq[A032742(A017413(n+9)), A038712(n+1)]`
-/

namespace A101503.P15608138711656154196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A017413 (n + 9)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038712 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A101503.P15608138711656154196

namespace A101503

/-- `eq[A032742(A017413(n+9)), A038712(n+1)]` -/
def P15608138711656154196.Spec : Prop :=
  ∀ n, (P15608138711656154196.a n : ℤ) = A101503 (n + 1)

end A101503

/-!
# A101504: a(n+1)=a(n)/x+x, with x = Max(a(k): 0<=k<n and a(k)|a(n)), a(0)=a(1)=1.

The programs for A101504, there is no canonical definition to state claims against.
-/

/-! ## A101504.P6726683069423112319

`A125568(n)-A173667(A328572(n))`
-/

namespace A101504.P6726683069423112319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125568 n - A173667 (A328572 n).toNat

end

end A101504.P6726683069423112319

/-! ## A101504.P16429880716846763764

`A125568(n)+A014025(A139550(n))`
-/

namespace A101504.P16429880716846763764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125568 n + A014025 (A139550 n).toNat

end

end A101504.P16429880716846763764

/-! ## A101504.P11404554606679747606

`A244041(n)+A010052(A244050(n+1))`
-/

namespace A101504.P11404554606679747606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244041 n + A010052 (A244050 (n + 1)).toNat

end

end A101504.P11404554606679747606

/-! ## A101504.P7300867392937413329

`A244041(n)+A128937(A294489(n+1))`
-/

namespace A101504.P7300867392937413329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244041 n + A128937 (A294489 (n + 1)).toNat

end

end A101504.P7300867392937413329

/-! ## A101504.P3530741466415168900

`A125568(A008554(n+1))-A105519(n)`
-/

namespace A101504.P3530741466415168900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125568 (A008554 (n + 1)).toNat - A105519 n

end

end A101504.P3530741466415168900

/-!
# A101505: Smallest m such that A101504(m) = n.

The programs for A101505, there is no canonical definition to state claims against.
-/

/-! ## A101505.P2413873605909177149

`∑[A341866(A028310(n))]%(n+1)²`
-/

namespace A101505.P2413873605909177149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341866 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) ((n + 1) ^ 2 : ℤ)

end

end A101505.P2413873605909177149

/-! ## A101505.P1542579214973395168

`∑[A341866(A028310(n))]-A000007(n)`
-/

namespace A101505.P1542579214973395168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341866 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A000007 n

end

end A101505.P1542579214973395168

/-! ## A101505.P8023892220140061122

`∑[A341866(A028310(n))]-A151878(n)`
-/

namespace A101505.P8023892220140061122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341866 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A151878 n

end

end A101505.P8023892220140061122

/-! ## A101505.P3071106483996592800

`∑[A341866(A028310(n))]-A151909(n)`
-/

namespace A101505.P3071106483996592800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341866 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A151909 n

end

end A101505.P3071106483996592800

/-! ## A101505.P16798257796360956458

`∑[A341866(A028310(n))]-A151933(n)`
-/

namespace A101505.P16798257796360956458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341866 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A151933 n

end

end A101505.P16798257796360956458

/-! ## A101505.P409899428363856251

`∑[A341866(A028310(n))]*A057427(n)`
-/

namespace A101505.P409899428363856251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341866 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A057427 n

end

end A101505.P409899428363856251

/-! ## A101505.P9596371874679018320

`∑[A341866(A028310(n))]*A178334(n)`
-/

namespace A101505.P9596371874679018320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341866 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A178334 n

end

end A101505.P9596371874679018320

/-! ## A101505.P10047308051826276020

`∑[A341866(A028310(n))]*A019426(2*n)`
-/

namespace A101505.P10047308051826276020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341866 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A019426 (2 * n)

end

end A101505.P10047308051826276020

/-! ## A101505.P7842888241756052476

`A000040(n+1)%2*∑[A341866(A028310(n))]`
-/

namespace A101505.P7842888241756052476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341866 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1)) 2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A101505.P7842888241756052476

/-!
# A101506: Numbers n such that log(n!) is closer to an integer than is log(m!) for any m with 2<m<n.

The programs for A101506, there is no canonical definition to state claims against.
-/

/-! ## A101506.P11717734973886549209

`A275579(A101507(n+1))`
-/

namespace A101506.P11717734973886549209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275579 (A101507 (n + 1)).toNat

end

end A101506.P11717734973886549209

/-!
# A101507: Numbers n such that exp(n) has a smaller relative error abs(exp(n)/m!-1) in approximating the closest factorial m!>1 than exp(k) for any k with 1<k<n.

The programs for A101507, there is no canonical definition to state claims against.
-/

/-! ## A101507.P17579154338741797735

`A046654(A101506(n+1))`
-/

namespace A101507.P17579154338741797735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046654 (A101506 (n + 1)).toNat

end

end A101507.P17579154338741797735

/-! ## A101507.P13635603448159396025

`A275341(A101506(n+1)-1)`
-/

namespace A101507.P13635603448159396025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275341 (A101506 (n + 1) - 1).toNat

end

end A101507.P13635603448159396025

/-! ## A101507.P8844738915493541705

`A275341(A286707(n+1)+A101506(n+1))`
-/

namespace A101507.P8844738915493541705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275341 (A286707 (n + 1) + A101506 (n + 1)).toNat

end

end A101507.P8844738915493541705

/-!
# A101508: Product of binomial matrix and the Mobius matrix A051731.

The programs for A101508, there is no canonical definition to state claims against.
-/

/-! ## A101508.P3653968757083495981

`A130584(n)/A054526(n+1)`
-/

namespace A101508.P3653968757083495981
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A130584 n : ℚ) / (A054526 (n + 1) : ℚ)

end

end A101508.P3653968757083495981

/-! ## A101508.P10163410104481436140

`A306915(A061579(n))`
-/

namespace A101508.P10163410104481436140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306915 (A061579 n).toNat

end

end A101508.P10163410104481436140

/-! ## A101508.P15275560808399897728

`A306915(A114327(n)+n)`
-/

namespace A101508.P15275560808399897728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306915 (A114327 n + (n : ℤ)).toNat

end

end A101508.P15275560808399897728

/-! ## A101508.P2574597298774859693

`A306915(A038722(n+1)-1)`
-/

namespace A101508.P2574597298774859693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306915 (A038722 (n + 1) - 1).toNat

end

end A101508.P2574597298774859693

/-! ## A101508.P14628960461510773329

`A306915(A057944(n)+A025581(n))`
-/

namespace A101508.P14628960461510773329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306915 (A057944 n + A025581 n).toNat

end

end A101508.P14628960461510773329

/-! ## A101508.P12190856551009917335

`A306915(A038722(n+2))`
-/

namespace A101508.P12190856551009917335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306915 (A038722 (n + 2)).toNat

end

end A101508.P12190856551009917335

/-!
# A101509: Binomial transform of tau(n) (see A000005).

The programs for A101509, there is no canonical definition to state claims against.
-/

/-! ## A101509.P2239118561256983510

`A382923(∑[n+2])`
-/

namespace A101509.P2239118561256983510
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382923 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A101509.P2239118561256983510

/-! ## A101509.P13451575910712038895

`record[A382923(n)/A046521(n)]`
-/

namespace A101509.P13451575910712038895
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A382923 n : ℚ) / (A046521 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A101509.P13451575910712038895

/-! ## A101509.P11841419256564673703

`record[A382923(n)/A154921(n)]`
-/

namespace A101509.P11841419256564673703
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A382923 n : ℚ) / (A154921 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A101509.P11841419256564673703

/-! ## A101509.P18311738809493525659

`record[C(A382923(n), A142175(n))]`
-/

namespace A101509.P18311738809493525659
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A382923 n).toNat (A142175 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A101509.P18311738809493525659

/-! ## A101509.P1725552330093547594

`record[A382923(n)/A048786(n+1)]`
-/

namespace A101509.P1725552330093547594
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A382923 n : ℚ) / (A048786 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A101509.P1725552330093547594

/-!
# A101510: Diagonal sums of binomial-Möbius product.

The programs for A101510, there is no canonical definition to state claims against.
-/

/-! ## A101510.P17689097262116519122

`∑[A168655(n+1)]`
-/

namespace A101510.P17689097262116519122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168655 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101510.P17689097262116519122

/-! ## A101510.P4406215746131388970

`A168655(n+1)+a(A023443(n))` with `a(0)=1`
-/

namespace A101510.P4406215746131388970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A168655 (n + 1) + a (A023443 n).toNat

end

end A101510.P4406215746131388970

/-! ## A101510.P16042073283235427614

`floor(sqrt(A340163(2*(n+2))))`
-/

namespace A101510.P16042073283235427614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A340163 (2 * (n + 2)))

end

end A101510.P16042073283235427614

/-! ## A101510.P18011481092849919746

`A002266(A086224(n)-A152398(n))`
-/

namespace A101510.P18011481092849919746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002266 (A086224 n - A152398 n).toNat

end

end A101510.P18011481092849919746

/-! ## A101510.P4465739341568258315

`A002266(A086224(n)-A334683(n))`
-/

namespace A101510.P4465739341568258315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002266 (A086224 n - A334683 n).toNat

end

end A101510.P4465739341568258315

/-!
# A101511: The first 2 digits of the sequence form a prime number (23), the next 3 digits form a prime number (457), the next 4 also (8923), the next 5 also (24373), the next 7 also (8394151), the next 8 also (52535471), etc., with a(n) < a(n+1).

The programs for A101511, there is no canonical definition to state claims against.
-/

/-! ## A101511.P7520129847251196562

`∑[A055229(∑[A234955(n+1)])]`
-/

namespace A101511.P7520129847251196562
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234955 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055229 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101511.P7520129847251196562

/-! ## A101511.P7951276616000628107

`∑[A132066(xor(9*n+7, A000120(n))+1)]`
-/

namespace A101511.P7951276616000628107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132066 (Int.xor (9 * n + 7 : ℤ) (A000120 n) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101511.P7951276616000628107

/-! ## A101511.P458867322675130404

`A270559(A128587(2*n+3))+A008620(n)`
-/

namespace A101511.P458867322675130404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270559 (A128587 (2 * n + 3)).toNat + A008620 n

end

end A101511.P458867322675130404

/-!
# A101514: Shifts one place left under the square binomial transform (A008459): a(0) = 1, a(n) = Sum_{k=0..n-1} C(n-1,k)^2*a(k).

The programs for A101514, there is no canonical definition to state claims against.
-/

/-! ## A101514.P324366209055368168

`A101515(4*C(n, 2))`
-/

namespace A101514.P324366209055368168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101515 (4 * Nat.choose n 2)

end

end A101514.P324366209055368168

/-! ## A101514.P2661884399872028231

`A101515(2*(n²-n))`
-/

namespace A101514.P2661884399872028231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101515 (2 * ((n ^ 2 : ℤ) - (n : ℤ))).toNat

end

end A101514.P2661884399872028231

/-! ## A101514.P17127263976460626906

`∑[A037474(A123306(n))]-n`
-/

namespace A101514.P17127263976460626906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037474 (A123306 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A101514.P17127263976460626906

/-!
# A101515: Symmetric square array, read by antidiagonals, such that the inverse binomial transform of row n forms the sequence: {C(n,k)*A101514(k), 0<=k<=n}, where A101514 equals the main diagonal shift right.

The programs for A101515, there is no canonical definition to state claims against.
-/

/-! ## A101515.P49180341241998335

`or(A088699(n), A137579(A028326(n)))`
-/

namespace A101515.P49180341241998335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A088699 n) (A137579 (A028326 n).toNat)

end

end A101515.P49180341241998335

/-! ## A101515.P5877606412662332240

`or(A094526(n), A137579(A028326(n)))`
-/

namespace A101515.P5877606412662332240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A094526 n) (A137579 (A028326 n).toNat)

end

end A101515.P5877606412662332240

/-! ## A101515.P15415081020415223322

`A118759(or(A086617(n), A088699(n)))`
-/

namespace A101515.P15415081020415223322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (Int.lor (A086617 n) (A088699 n)).toNat

end

end A101515.P15415081020415223322

/-! ## A101515.P3916779905021801955

`or(A094526(n), A137579(A134058(n)))`
-/

namespace A101515.P3916779905021801955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A094526 n) (A137579 (A134058 n).toNat)

end

end A101515.P3916779905021801955

/-! ## A101515.P8389980774337508193

`A118759(2*A088699(n)-A086617(n))`
-/

namespace A101515.P8389980774337508193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (2 * A088699 n - A086617 n).toNat

end

end A101515.P8389980774337508193

/-!
# A101516: Antidiagonal sums of symmetric square array A101515 and also equals the binomial transform of a sequence formed from terms of A101514 repeated twice.

The programs for A101516, there is no canonical definition to state claims against.
-/

/-! ## A101516.P9922317411989776667

`∑[A276581(n!)]`
-/

namespace A101516.P9922317411989776667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276581 (Nat.factorial n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101516.P9922317411989776667

/-! ## A101516.P3403325053208234782

`∑[A336348(n!)]`
-/

namespace A101516.P3403325053208234782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336348 (Nat.factorial n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101516.P3403325053208234782

/-! ## A101516.P2445697008849351177

`∑[A000267(n!-1)]`
-/

namespace A101516.P2445697008849351177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000267 (Nat.factorial n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101516.P2445697008849351177

/-! ## A101516.P7881047131517536259

`∑[A027434(n!)-1]`
-/

namespace A101516.P7881047131517536259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027434 (Nat.factorial n) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101516.P7881047131517536259

/-!
# A101517: Indices of primes in sequence defined by A(0) = 61, A(n) = 10*A(n-1) - 9 for n > 0.

The programs for A101517, there is no canonical definition to state claims against.
-/

/-! ## A101517.P6865804793679055853

`A056805(n+2)-1`
-/

namespace A101517.P6865804793679055853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056805 (n + 2) - 1

end

end A101517.P6865804793679055853

/-! ## A101517.P6280612825831322153

`A057428(n+1)+A056805(n+2)`
-/

namespace A101517.P6280612825831322153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (n + 1) + A056805 (n + 2)

end

end A101517.P6280612825831322153

/-! ## A101517.P17188829053142891767

`A165326(2*(n+2))+A056805(n+2)`
-/

namespace A101517.P17188829053142891767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165326 (2 * (n + 2)) + A056805 (n + 2)

end

end A101517.P17188829053142891767

/-! ## A101517.P2997334815437162919

`record[A057428(n)+A056805(A028310(n))]`
-/

namespace A101517.P2997334815437162919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n + A056805 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A101517.P2997334815437162919

/-! ## A101517.P786884745404572608

`A165202(A016945(n))+A056805(n+2)`
-/

namespace A101517.P786884745404572608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165202 (A016945 n).toNat + A056805 (n + 2)

end

end A101517.P786884745404572608

/-!
# A101518: Indices of primes in sequence defined by A(0) = 67, A(n) = 10*A(n-1) - 63 for n > 0.

The programs for A101518, there is no canonical definition to state claims against.
-/

/-! ## A101518.P5699248857975260916

`A103026(n+2)-1`
-/

namespace A101518.P5699248857975260916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103026 (n + 2) - 1

end

end A101518.P5699248857975260916

/-! ## A101518.P12954408681783415446

`abs(A103026(n+2)+A057428(n+1))`
-/

namespace A101518.P12954408681783415446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A103026 (n + 2) + A057428 (n + 1)|

end

end A101518.P12954408681783415446

/-! ## A101518.P13121370758918064757

`A165795(∑[n+1])+A103026(n+2)`
-/

namespace A101518.P13121370758918064757
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165795 (∑ j ∈ Finset.range (n + 1), f1 j) + A103026 (n + 2)

end

end A101518.P13121370758918064757

/-! ## A101518.P2519393602055994292

`(A103026(n+2)+A057428(n))%(5^n)`
-/

namespace A101518.P2519393602055994292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A103026 (n + 2) + A057428 n) (5 ^ n : ℤ)

end

end A101518.P2519393602055994292

/-! ## A101518.P1039036603236385019

`abs(A103026(n+2)+A008683(A030433(n+1)))`
-/

namespace A101518.P1039036603236385019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A103026 (n + 2) + A008683 (A030433 (n + 1)).toNat|

end

end A101518.P1039036603236385019

/-!
# A101519: Indices of primes in sequence defined by A(0) = 63, A(n) = 10*A(n-1) - 17 for n > 0.

The programs for A101519, there is no canonical definition to state claims against.
-/

/-! ## A101519.P7078601291613333040

`A103027(n+1)-1`
-/

namespace A101519.P7078601291613333040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103027 (n + 1) - 1

end

end A101519.P7078601291613333040

/-! ## A101519.P8075129658430801875

`A134824(n+2)+A103027(n+1)`
-/

namespace A101519.P8075129658430801875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134824 (n + 2) + A103027 (n + 1)

end

end A101519.P8075129658430801875

/-! ## A101519.P8161956875969971391

`A153881(n+2)+A103027(n+1)`
-/

namespace A101519.P8161956875969971391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153881 (n + 2) + A103027 (n + 1)

end

end A101519.P8161956875969971391

/-! ## A101519.P14121177813810580615

`A260196(n+2)+A103027(n+1)`
-/

namespace A101519.P14121177813810580615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 (n + 2) + A103027 (n + 1)

end

end A101519.P14121177813810580615

/-! ## A101519.P10965429545677587606

`abs(A103027(n+1)+A057078(3*n+2))`
-/

namespace A101519.P10965429545677587606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A103027 (n + 1) + A057078 (3 * n + 2)|

end

end A101519.P10965429545677587606

/-!
# A101520: Indices of primes in the sequence defined by A(0) = 67, A(n) = 10*A(n-1) - 53 for n > 0.

The programs for A101520, there is no canonical definition to state claims against.
-/

/-! ## A101520.P7732480474312797074

`A103028(n+1)-1`
-/

namespace A101520.P7732480474312797074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103028 (n + 1) - 1

end

end A101520.P7732480474312797074

/-! ## A101520.P3211384755461927787

`record[Δ[A103028(A152271(n))]]`
-/

namespace A101520.P3211384755461927787
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103028 (A152271 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A101520.P3211384755461927787

/-! ## A101520.P4195935333415121826

`record[Δ[A103028(A309872(n+1))]]`
-/

namespace A101520.P4195935333415121826
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103028 (A309872 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A101520.P4195935333415121826

/-! ## A101520.P6507616123864201751

`A153881(n+2)+A103028(n+1)`
-/

namespace A101520.P6507616123864201751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153881 (n + 2) + A103028 (n + 1)

end

end A101520.P6507616123864201751

/-! ## A101520.P12041027235709160413

`A105812(2*(n+2))+A103028(n+1)`
-/

namespace A101520.P12041027235709160413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105812 (2 * (n + 2)) + A103028 (n + 1)

end

end A101520.P12041027235709160413

/-!
# A101521: Indices of primes in sequence defined by A(0) = 69, A(n) = 10*A(n-1) - 71 for n > 0.

The programs for A101521, there is no canonical definition to state claims against.
-/

/-! ## A101521.P16580348364446202849

`A103029(n+1)-1`
-/

namespace A101521.P16580348364446202849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103029 (n + 1) - 1

end

end A101521.P16580348364446202849

/-! ## A101521.P5671475251277618859

`abs(1-A103029(A005555(n)))`
-/

namespace A101521.P5671475251277618859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A103029 (A005555 n).toNat|

end

end A101521.P5671475251277618859

/-! ## A101521.P8868123255536482533

`record[A103029(A324347(n))-1]`
-/

namespace A101521.P8868123255536482533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103029 (A324347 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A101521.P8868123255536482533

/-! ## A101521.P15615923293378952309

`A105812(2*(n+2))+A103029(n+1)`
-/

namespace A101521.P15615923293378952309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105812 (2 * (n + 2)) + A103029 (n + 1)

end

end A101521.P15615923293378952309

/-! ## A101521.P8873045499026477087

`abs(A103029(n+1)+A057428(3*n+2))`
-/

namespace A101521.P8873045499026477087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A103029 (n + 1) + A057428 (3 * n + 2)|

end

end A101521.P8873045499026477087

/-!
# A101522: Indices of primes in sequence defined by A(0) = 61, A(n) = 10*A(n-1) + 11 for n > 0.

The programs for A101522, there is no canonical definition to state claims against.
-/

/-! ## A101522.P1028976879991084060

`A103030(n+2)-1`
-/

namespace A101522.P1028976879991084060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103030 (n + 2) - 1

end

end A101522.P1028976879991084060

/-! ## A101522.P2517087516398021753

`∑[A087156(Δ[A103030(n+1)])]`
-/

namespace A101522.P2517087516398021753
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103030 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087156 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101522.P2517087516398021753

/-! ## A101522.P1165521363028329200

`A227618(Δ[A001950(n+2)])+A103030(n+2)`
-/

namespace A101522.P1165521363028329200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001950 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227618 (f1 (n + 1) - f1 n).toNat + A103030 (n + 2)

end

end A101522.P1165521363028329200

/-! ## A101522.P11094385629181339486

`A094267(A142934(n+1))+A103030(n+2)+1`
-/

namespace A101522.P11094385629181339486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094267 (A142934 (n + 1)).toNat + (A103030 (n + 2) + 1)

end

end A101522.P11094385629181339486

/-!
# A101525: Indices of primes in sequence defined by A(0) = 61, A(n) = 10*A(n-1) + 21 for n > 0.

The programs for A101525, there is no canonical definition to state claims against.
-/

/-! ## A101525.P17256118649557229618

`A103032(n+1)-1`
-/

namespace A101525.P17256118649557229618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103032 (n + 1) - 1

end

end A101525.P17256118649557229618

/-! ## A101525.P630357432150700311

`record[Δ[A103032(A152271(n))]]`
-/

namespace A101525.P630357432150700311
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103032 (A152271 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A101525.P630357432150700311

/-! ## A101525.P3200536275570079009

`record[Δ[A103032(A158416(n))]]`
-/

namespace A101525.P3200536275570079009
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103032 (A158416 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A101525.P3200536275570079009

/-! ## A101525.P7111639184205476964

`A308778(n²)+A103032(n+1)`
-/

namespace A101525.P7111639184205476964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308778 (n ^ 2) + A103032 (n + 1)

end

end A101525.P7111639184205476964

/-! ## A101525.P11010403718958746979

`A291914(A000040(n+1))+A103032(n+1)`
-/

namespace A101525.P11010403718958746979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291914 (A000040 (n + 1)).toNat + A103032 (n + 1)

end

end A101525.P11010403718958746979

/-!
# A101526: Indices of primes in sequence defined by A(0) = 67, A(n) = 10*A(n-1) - 33 for n > 0.

The programs for A101526, there is no canonical definition to state claims against.
-/

/-! ## A101526.P17715581487190785958

`A103033(n+1)-1`
-/

namespace A101526.P17715581487190785958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103033 (n + 1) - 1

end

end A101526.P17715581487190785958

/-! ## A101526.P12786416858869770632

`record[Δ[A103033(A152271(n))]]`
-/

namespace A101526.P12786416858869770632
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103033 (A152271 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A101526.P12786416858869770632

/-! ## A101526.P10703962192674735414

`A308778(n²)+A103033(n+1)`
-/

namespace A101526.P10703962192674735414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308778 (n ^ 2) + A103033 (n + 1)

end

end A101526.P10703962192674735414

/-! ## A101526.P2869083870018989403

`A262352(2*n+1)+A103033(n+1)`
-/

namespace A101526.P2869083870018989403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262352 (2 * n + 1) + A103033 (n + 1)

end

end A101526.P2869083870018989403

/-! ## A101526.P17609481334780480217

`A285295(A053632(n))+A103033(n+1)`
-/

namespace A101526.P17609481334780480217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285295 (A053632 n).toNat + A103033 (n + 1)

end

end A101526.P17609481334780480217

/-!
# A101527: Indices of primes in sequence defined by A(0) = 61, A(n) = 10*A(n-1) + 31 for n > 0.

The programs for A101527, there is no canonical definition to state claims against.
-/

/-! ## A101527.P1020228849172222199

`A103034(n+2)-1`
-/

namespace A101527.P1020228849172222199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103034 (n + 2) - 1

end

end A101527.P1020228849172222199

/-! ## A101527.P10505244498246479821

`∑[Δ[A103034(n+1)]%A000533(n)]`
-/

namespace A101527.P10505244498246479821
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103034 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (n + 1) - f2 n) (A000533 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101527.P10505244498246479821

/-! ## A101527.P801428530142455851

`A025581(C(A103034(n+2), 2))`
-/

namespace A101527.P801428530142455851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (Nat.choose (A103034 (n + 2)).toNat 2)

end

end A101527.P801428530142455851

/-!
# A101528: Indices of primes in sequence defined by A(0) = 63, A(n) = 10*A(n-1) + 13 for n > 0.

The programs for A101528, there is no canonical definition to state claims against.
-/

/-! ## A101528.P10444548583817397216

`A103035(n+2)-1`
-/

namespace A101528.P10444548583817397216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103035 (n + 2) - 1

end

end A101528.P10444548583817397216

/-! ## A101528.P5241562558361597545

`record[A260196(n)+A103035(n+1)]`
-/

namespace A101528.P5241562558361597545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 n + A103035 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A101528.P5241562558361597545

/-! ## A101528.P12042892122469980023

`A278400(gcd(n, n+1))+A103035(n+2)`
-/

namespace A101528.P12042892122469980023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278400 (Nat.gcd n (n + 1)) + A103035 (n + 2)

end

end A101528.P12042892122469980023

/-! ## A101528.P18152458266252750403

`abs(A103035(n+2)+A008683(A038370(n)))`
-/

namespace A101528.P18152458266252750403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A103035 (n + 2) + A008683 (A038370 n).toNat|

end

end A101528.P18152458266252750403

/-! ## A101528.P14378912676104694192

`A114592(A022893(n+1))+A103035(n+2)`
-/

namespace A101528.P14378912676104694192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114592 (A022893 (n + 1)).toNat + A103035 (n + 2)

end

end A101528.P14378912676104694192

/-!
# A101529: Indices of primes in sequence defined by A(0) = 67, A(n) = 10*A(n-1) - 23 for n > 0.

The programs for A101529, there is no canonical definition to state claims against.
-/

/-! ## A101529.P2495626004855972851

`A103036(n+1)-1`
-/

namespace A101529.P2495626004855972851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103036 (n + 1) - 1

end

end A101529.P2495626004855972851

/-! ## A101529.P14355414668802020693

`record[Δ[A103036(A152271(n))]]`
-/

namespace A101529.P14355414668802020693
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103036 (A152271 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A101529.P14355414668802020693

/-! ## A101529.P13288990000861836226

`record[A103036(A086742(n))-1]`
-/

namespace A101529.P13288990000861836226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103036 (A086742 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A101529.P13288990000861836226

/-! ## A101529.P9954607288474096375

`A308778(n²)+A103036(n+1)`
-/

namespace A101529.P9954607288474096375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308778 (n ^ 2) + A103036 (n + 1)

end

end A101529.P9954607288474096375

/-! ## A101529.P12894112633043656847

`abs(A103036(n+1)+A008683(A138757(n)))`
-/

namespace A101529.P12894112633043656847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A103036 (n + 1) + A008683 (A138757 n).toNat|

end

end A101529.P12894112633043656847

/-!
# A101530: Indices of primes in sequence defined by A(0) = 69, A(n) = 10*A(n-1) - 41 for n > 0.

The programs for A101530, there is no canonical definition to state claims against.
-/

/-! ## A101530.P5120259562233845134

`A103037(n+2)-1`
-/

namespace A101530.P5120259562233845134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103037 (n + 2) - 1

end

end A101530.P5120259562233845134

/-! ## A101530.P14359114596790694602

`xor(1, A103037(A100637(n)))`
-/

namespace A101530.P14359114596790694602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A103037 (A100637 n).toNat)

end

end A101530.P14359114596790694602

/-! ## A101530.P2584360820189009600

`xor(1, A103037(A020725(n+1)))`
-/

namespace A101530.P2584360820189009600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A103037 (A020725 (n + 1)).toNat)

end

end A101530.P2584360820189009600

/-! ## A101530.P12154976838778729174

`xor(1, A103037(A122638(n+1)))`
-/

namespace A101530.P12154976838778729174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A103037 (A122638 (n + 1)).toNat)

end

end A101530.P12154976838778729174

/-!
# A101531: Indices of primes in sequence defined by A(0) = 61, A(n) = 10*A(n-1) + 41 for n > 0.

The programs for A101531, there is no canonical definition to state claims against.
-/

/-! ## A101531.P17226264262627787149

`A103038(n+2)-1`
-/

namespace A101531.P17226264262627787149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103038 (n + 2) - 1

end

end A101531.P17226264262627787149

/-! ## A101531.P2716571550963168562

`∑[Δ[A103038(n+1)]%(3^n)]`
-/

namespace A101531.P2716571550963168562
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103038 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (n + 1) - f2 n) (3 ^ n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101531.P2716571550963168562

/-! ## A101531.P12191312885320469947

`∑[Δ[A103038(n+1)]*A178334(n)]`
-/

namespace A101531.P12191312885320469947
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103038 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) * A178334 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101531.P12191312885320469947

/-! ## A101531.P18298297042228657019

`∑[Δ[A103038(n+1)]*A178489(n)]`
-/

namespace A101531.P18298297042228657019
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103038 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) * A178489 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101531.P18298297042228657019

/-! ## A101531.P14002319625074614079

`A198242((-1)^n+4)+A103038(n+2)`
-/

namespace A101531.P14002319625074614079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198242 ((-1) ^ n + 4).toNat + A103038 (n + 2)

end

end A101531.P14002319625074614079

/-!
# A101532: Indices of primes in sequence defined by A(0) = 63, A(n) = 10*A(n-1) + 23 for n > 0.

The programs for A101532, there is no canonical definition to state claims against.
-/

/-! ## A101532.P12687367561452796743

`A103039(n+1)-1`
-/

namespace A101532.P12687367561452796743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103039 (n + 1) - 1

end

end A101532.P12687367561452796743

/-! ## A101532.P5246306883435935477

`A174737(6*n+1)+A103039(n+1)`
-/

namespace A101532.P5246306883435935477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174737 (6 * n + 1) + A103039 (n + 1)

end

end A101532.P5246306883435935477

/-! ## A101532.P10128258143148867735

`A262352(xor(n, n+1))+A103039(n+1)`
-/

namespace A101532.P10128258143148867735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262352 (Nat.xor n (n + 1)) + A103039 (n + 1)

end

end A101532.P10128258143148867735

/-! ## A101532.P18040537527113433088

`A117997(A196667(n+1))+A103039(n+1)`
-/

namespace A101532.P18040537527113433088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117997 (A196667 (n + 1)).toNat + A103039 (n + 1)

end

end A101532.P18040537527113433088

/-! ## A101532.P16825221795919466034

`A316441(A000040(n+1))+A103039(n+1)`
-/

namespace A101532.P16825221795919466034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316441 (A000040 (n + 1)).toNat + A103039 (n + 1)

end

end A101532.P16825221795919466034

/-!
# A101533: Indices of primes in sequence defined by A(0) = 67, A(n) = 10*A(n-1) - 13 for n > 0.

The programs for A101533, there is no canonical definition to state claims against.
-/

/-! ## A101533.P3715107279012031715

`A103040(n+1)-1`
-/

namespace A101533.P3715107279012031715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103040 (n + 1) - 1

end

end A101533.P3715107279012031715

/-! ## A101533.P15017102389416385374

`record[Δ[A103040(A158416(n))]]`
-/

namespace A101533.P15017102389416385374
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103040 (A158416 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A101533.P15017102389416385374

/-! ## A101533.P1651703291376894542

`A321804(n)+A103040(n+1)`
-/

namespace A101533.P1651703291376894542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321804 n + A103040 (n + 1)

end

end A101533.P1651703291376894542

/-! ## A101533.P2086106446917639989

`A308778(n²)+A103040(n+1)`
-/

namespace A101533.P2086106446917639989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308778 (n ^ 2) + A103040 (n + 1)

end

end A101533.P2086106446917639989

/-! ## A101533.P1377568813016333167

`A105812(2*(n+2))+A103040(n+1)`
-/

namespace A101533.P1377568813016333167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105812 (2 * (n + 2)) + A103040 (n + 1)

end

end A101533.P1377568813016333167

/-!
# A101534: Indices of primes in sequence defined by A(0) = 69, A(n) = 10*A(n-1) - 31 for n > 0.

The programs for A101534, there is no canonical definition to state claims against.
-/

/-! ## A101534.P4334806066806465278

`A103041(n+1)-1`
-/

namespace A101534.P4334806066806465278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103041 (n + 1) - 1

end

end A101534.P4334806066806465278

/-! ## A101534.P4890508157434971981

`A308778(n²)+A103041(n+1)`
-/

namespace A101534.P4890508157434971981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308778 (n ^ 2) + A103041 (n + 1)

end

end A101534.P4890508157434971981

/-! ## A101534.P16257320669316263741

`A001478(n+1)+A103041(n+1)+n`
-/

namespace A101534.P16257320669316263741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001478 (n + 1) + (A103041 (n + 1) + (n : ℤ))

end

end A101534.P16257320669316263741

/-! ## A101534.P3333332921246403683

`A108086(gcd(n, n+1))+A103041(n+1)`
-/

namespace A101534.P3333332921246403683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108086 (Nat.gcd n (n + 1)) + A103041 (n + 1)

end

end A101534.P3333332921246403683

/-! ## A101534.P15143860865272613874

`A108086(A014634(n))+A103041(n+1)`
-/

namespace A101534.P15143860865272613874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108086 (A014634 n).toNat + A103041 (n + 1)

end

end A101534.P15143860865272613874

/-!
# A101535: Indices of primes in sequence defined by A(0) = 63, A(n) = 10*A(n-1) + 43 for n > 0.

The programs for A101535, there is no canonical definition to state claims against.
-/

/-! ## A101535.P16161631365580684046

`A103042(n+2)-1`
-/

namespace A101535.P16161631365580684046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103042 (n + 2) - 1

end

end A101535.P16161631365580684046

/-! ## A101535.P15785511878305964986

`record[A260196(n)+A103042(n+1)]`
-/

namespace A101535.P15785511878305964986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 n + A103042 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A101535.P15785511878305964986

/-! ## A101535.P10889690650180425534

`A258832(A027907(2*n))+A103042(n+2)`
-/

namespace A101535.P10889690650180425534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258832 (A027907 (2 * n)).toNat + A103042 (n + 2)

end

end A101535.P10889690650180425534

/-! ## A101535.P15941303970519088353

`A120304(A355037(2*n))+A103042(n+2)`
-/

namespace A101535.P15941303970519088353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120304 (A355037 (2 * n)).toNat + A103042 (n + 2)

end

end A101535.P15941303970519088353

/-!
# A101536: Indices of primes in sequence defined by A(0) = 69, A(n) = 10*A(n-1) - 11 for n > 0.

The programs for A101536, there is no canonical definition to state claims against.
-/

/-! ## A101536.P3311555441321247199

`A103043(n+1)-1`
-/

namespace A101536.P3311555441321247199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103043 (n + 1) - 1

end

end A101536.P3311555441321247199

/-! ## A101536.P13516989568326458177

`A321800(n)+A103043(n+1)`
-/

namespace A101536.P13516989568326458177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321800 n + A103043 (n + 1)

end

end A101536.P13516989568326458177

/-! ## A101536.P199367621757469366

`A321804(n)+A103043(n+1)`
-/

namespace A101536.P199367621757469366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321804 n + A103043 (n + 1)

end

end A101536.P199367621757469366

/-! ## A101536.P13228148294105294174

`A103115(floor(n/10))+A103043(n+1)`
-/

namespace A101536.P13228148294105294174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103115 ⌊(n : ℚ) / 10⌋.toNat + A103043 (n + 1)

end

end A101536.P13228148294105294174

/-! ## A101536.P7354785760061450560

`A142720(2*n+1)+A103043(n+1)`
-/

namespace A101536.P7354785760061450560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142720 (2 * n + 1) + A103043 (n + 1)

end

end A101536.P7354785760061450560

/-!
# A101537: Indices of primes in sequence defined by A(0) = 61, A(n) = 10*A(n-1) + 71 for n > 0.

The programs for A101537, there is no canonical definition to state claims against.
-/

/-! ## A101537.P2929968530523891267

`A103044(n+1)-1`
-/

namespace A101537.P2929968530523891267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103044 (n + 1) - 1

end

end A101537.P2929968530523891267

/-! ## A101537.P10056116818892533599

`A308778(n²)+A103044(n+1)`
-/

namespace A101537.P10056116818892533599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308778 (n ^ 2) + A103044 (n + 1)

end

end A101537.P10056116818892533599

/-! ## A101537.P3628952175367035835

`A134824(n+2)+A103044(n+1)`
-/

namespace A101537.P3628952175367035835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134824 (n + 2) + A103044 (n + 1)

end

end A101537.P3628952175367035835

/-! ## A101537.P3921025018972545972

`A260196(n+2)+A103044(n+1)`
-/

namespace A101537.P3921025018972545972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 (n + 2) + A103044 (n + 1)

end

end A101537.P3921025018972545972

/-! ## A101537.P10069483020328217824

`A317950(gcd(n, n+1))+A103044(n+1)`
-/

namespace A101537.P10069483020328217824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317950 (Nat.gcd n (n + 1)) + A103044 (n + 1)

end

end A101537.P10069483020328217824

/-!
# A101538: Indices of primes in sequence defined by A(0) = 63, A(n) = 10*A(n-1) + 53 for n > 0.

The programs for A101538, there is no canonical definition to state claims against.
-/

/-! ## A101538.P2271553693840821338

`A103045(n+1)-1`
-/

namespace A101538.P2271553693840821338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103045 (n + 1) - 1

end

end A101538.P2271553693840821338

/-! ## A101538.P511995181903300324

`A308778(n²)+A103045(n+1)`
-/

namespace A101538.P511995181903300324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308778 (n ^ 2) + A103045 (n + 1)

end

end A101538.P511995181903300324

/-! ## A101538.P2504303639672179256

`abs(A103045(n+1)+A057428(n+1))`
-/

namespace A101538.P2504303639672179256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A103045 (n + 1) + A057428 (n + 1)|

end

end A101538.P2504303639672179256

/-! ## A101538.P10626719178872764395

`A103115(floor(n/10))+A103045(n+1)`
-/

namespace A101538.P10626719178872764395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103115 ⌊(n : ℚ) / 10⌋.toNat + A103045 (n + 1)

end

end A101538.P10626719178872764395

/-! ## A101538.P112581984325295917

`A115638(2*n+1)+A103045(n+1)`
-/

namespace A101538.P112581984325295917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115638 (2 * n + 1) + A103045 (n + 1)

end

end A101538.P112581984325295917

/-!
# A101539: Indices of primes in sequence defined by A(0) = 67, A(n) = 10*A(n-1) + 17 for n > 0.

The programs for A101539, there is no canonical definition to state claims against.
-/

/-! ## A101539.P13816642812085358474

`A103046(n+2)-1`
-/

namespace A101539.P13816642812085358474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103046 (n + 2) - 1

end

end A101539.P13816642812085358474

/-! ## A101539.P8797379758412893029

`A110315(2*n+1)+A103046(n+2)+n`
-/

namespace A101539.P8797379758412893029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110315 (2 * n + 1) + (A103046 (n + 2) + (n : ℤ))

end

end A101539.P8797379758412893029

/-! ## A101539.P2249104938971971558

`abs(A103046(n+2)+or(-1, A001221(n+1)))`
-/

namespace A101539.P2249104938971971558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A103046 (n + 2) + Int.lor (-1) (A001221 (n + 1))|

end

end A101539.P2249104938971971558

/-! ## A101539.P11907662758571350895

`xor(-A103046(n+2), A057428(A007318(n)))`
-/

namespace A101539.P11907662758571350895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (-A103046 (n + 2)) (A057428 (A007318 n).toNat)

end

end A101539.P11907662758571350895

/-! ## A101539.P9813014778948440448

`A321460(A000032(C(2, n+2)))+A103046(n+2)`
-/

namespace A101539.P9813014778948440448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321460 (A000032 (Nat.choose 2 (n + 2))).toNat + A103046 (n + 2)

end

end A101539.P9813014778948440448

/-!
# A101540: Indices of primes in sequence defined by A(0) = 69, A(n) = 10*A(n-1) - 1 for n > 0.

The programs for A101540, there is no canonical definition to state claims against.
-/

/-! ## A101540.P10626826828111617575

`A103047(n+1)-1`
-/

namespace A101540.P10626826828111617575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103047 (n + 1) - 1

end

end A101540.P10626826828111617575

/-! ## A101540.P7416332530449031013

`xor(1, A103047(A077168(n)))`
-/

namespace A101540.P7416332530449031013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A103047 (A077168 n).toNat)

end

end A101540.P7416332530449031013

/-! ## A101540.P11107801505542551746

`xor(1, A103047(A216556(n)))`
-/

namespace A101540.P11107801505542551746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A103047 (A216556 n).toNat)

end

end A101540.P11107801505542551746

/-! ## A101540.P596941642676816190

`xor(1, A103047(A291766(n)))`
-/

namespace A101540.P596941642676816190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A103047 (A291766 n).toNat)

end

end A101540.P596941642676816190

/-! ## A101540.P13229548127392497850

`xor(1, A103047(A003964(n+1)))`
-/

namespace A101540.P13229548127392497850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A103047 (A003964 (n + 1)).toNat)

end

end A101540.P13229548127392497850

/-!
# A101541: Indices of primes in sequence defined by A(0) = 61, A(n) = 10*A(n-1) + 81 for n > 0.

The programs for A101541, there is no canonical definition to state claims against.
-/

/-! ## A101541.P18172342248905708833

`A103048(n+1)-1`
-/

namespace A101541.P18172342248905708833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103048 (n + 1) - 1

end

end A101541.P18172342248905708833

/-! ## A101541.P1727886400197649337

`record[Δ[A103048(A152271(n))]]`
-/

namespace A101541.P1727886400197649337
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103048 (A152271 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A101541.P1727886400197649337

/-! ## A101541.P5544719374358801947

`A308778(n²)+A103048(n+1)`
-/

namespace A101541.P5544719374358801947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308778 (n ^ 2) + A103048 (n + 1)

end

end A101541.P5544719374358801947

/-! ## A101541.P3140698817634147388

`A105812(2*(n+2))+A103048(n+1)`
-/

namespace A101541.P3140698817634147388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105812 (2 * (n + 2)) + A103048 (n + 1)

end

end A101541.P3140698817634147388

/-! ## A101541.P7873317411165307234

`A001478(n+1)+A103048(n+1)+n`
-/

namespace A101541.P7873317411165307234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001478 (n + 1) + (A103048 (n + 1) + (n : ℤ))

end

end A101541.P7873317411165307234

/-!
# A101542: Indices of primes in sequence defined by A(0) = 67, A(n) = 10*A(n-1) + 27 for n > 0.

The programs for A101542, there is no canonical definition to state claims against.
-/

/-! ## A101542.P17852410767585236176

`A103049(n+1)-1`
-/

namespace A101542.P17852410767585236176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103049 (n + 1) - 1

end

end A101542.P17852410767585236176

/-! ## A101542.P8222456718217777104

`record[Δ[A103049(A152271(n))]]`
-/

namespace A101542.P8222456718217777104
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103049 (A152271 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A101542.P8222456718217777104

/-! ## A101542.P4371720246064016928

`A260196(n+2)+A103049(n+1)`
-/

namespace A101542.P4371720246064016928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 (n + 2) + A103049 (n + 1)

end

end A101542.P4371720246064016928

/-! ## A101542.P7440495159245440142

`abs(A103049(n+1)+A008683(A031933(n)))`
-/

namespace A101542.P7440495159245440142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A103049 (n + 1) + A008683 (A031933 n).toNat|

end

end A101542.P7440495159245440142

/-! ## A101542.P9395265245152168830

`A316441(A000040(n+1))+A103049(n+1)`
-/

namespace A101542.P9395265245152168830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316441 (A000040 (n + 1)).toNat + A103049 (n + 1)

end

end A101542.P9395265245152168830

/-!
# A101544: Smallest permutation of the natural numbers with a(3*k-2) + a(3*k-1) = a(3*k), k > 0.

The programs for A101544, there is no canonical definition to state claims against.
-/

/-! ## A101544.P12614916376063184020

`abs(Δ[A080427(n+2)])`
-/

namespace A101544.P12614916376063184020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080427 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A101544.P12614916376063184020

/-! ## A101544.P7941019784743611702

`gcd(Δ[A080427(n+2)], A000038(n))`
-/

namespace A101544.P7941019784743611702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080427 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (n + 1) - f1 n) (A000038 n)

end

end A101544.P7941019784743611702

/-! ## A101544.P7289942504366557542

`lcm(Δ[A080427(n+2)], A033999(n))`
-/

namespace A101544.P7289942504366557542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080427 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (f1 (n + 1) - f1 n) (A033999 n)

end

end A101544.P7289942504366557542

/-! ## A101544.P11142298732544590521

`∑{d}[Δ[A080427(n+2)], A000010(#)]`
-/

namespace A101544.P11142298732544590521
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080427 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A101544.P11142298732544590521

/-! ## A101544.P6189428927864524954

`abs(A080427(n+2)-A080427(n+3))`
-/

namespace A101544.P6189428927864524954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A080427 (n + 2) - A080427 (n + 3)|

end

end A101544.P6189428927864524954

/-! ## A101544.P8032560269686850784

`A101546(A101545(n+1))`
-/

namespace A101544.P8032560269686850784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101546 (A101545 (n + 1)).toNat

end

end A101544.P8032560269686850784

/-! ## A101544.P9420473538781418878

`A131829(n+3)-1`
-/

namespace A101544.P9420473538781418878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131829 (n + 3) - 1

end

end A101544.P9420473538781418878

/-!
# A101545: Inverse permutation to A101544.

The programs for A101545, there is no canonical definition to state claims against.
-/

/-! ## A101545.P9853402536515800578

`A101544(A101547(n+1))`
-/

namespace A101545.P9853402536515800578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101544 (A101547 (n + 1)).toNat

end

end A101545.P9853402536515800578

/-! ## A101545.P2561888855409830853

`A101547(abs(Δ[A080427(n+2)]))`
-/

namespace A101545.P2561888855409830853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080427 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101547 |f1 (n + 1) - f1 n|.toNat

end

end A101545.P2561888855409830853

/-! ## A101545.P6318945119222851844

`A101547(A101544(n-log2(1/2)))`
-/

namespace A101545.P6318945119222851844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101547 (A101544 (SequenceMachineLib.roundAway ((n : ℝ) - Real.logb 2 ((1 : ℚ) / 2 : ℝ))).toNat).toNat

end

end A101545.P6318945119222851844

/-! ## A101545.P3127562486757805201

`A101547(lcm(Δ[A080427(n+2)], A033999(n)))`
-/

namespace A101545.P3127562486757805201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080427 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101547 (Int.lcm (f1 (n + 1) - f1 n) (A033999 n))

end

end A101545.P3127562486757805201

/-! ## A101545.P5740244877956165911

`A101547(∑{d}[Δ[A080427(n+2)], A000010(#)])`
-/

namespace A101545.P5740244877956165911
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080427 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101547 (∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d).toNat

end

end A101545.P5740244877956165911

/-! ## A101545.P14430726362786433069

`A101547(abs(A080427(n+2)-A080427(n+3)))`
-/

namespace A101545.P14430726362786433069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101547 |A080427 (n + 2) - A080427 (n + 3)|.toNat

end

end A101545.P14430726362786433069

/-! ## A101545.P11093206905814469830

`A101547(A131829(n+3)-1)`
-/

namespace A101545.P11093206905814469830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101547 (A131829 (n + 3) - 1).toNat

end

end A101545.P11093206905814469830

/-!
# A101546: a(n) = A101544(A101544(n)).

The programs for A101546, there is no canonical definition to state claims against.
-/

/-! ## A101546.P9519836438042838835

`A101544(A101544(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A101546.P9519836438042838835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101544 (A101544 (n + 1)).toNat

end

end A101546.P9519836438042838835

/-! ## A101546.P1903051371042486815

`A101544(A101544(n-log2(1/2))-1-log2(1/2))`
-/

namespace A101546.P1903051371042486815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101544 (SequenceMachineLib.roundAway ((A101544 (SequenceMachineLib.roundAway ((n : ℝ) - Real.logb 2 ((1 : ℚ) / 2 : ℝ))).toNat - 1 : ℝ) - Real.logb 2 ((1 : ℚ) / 2 : ℝ))).toNat

end

end A101546.P1903051371042486815

/-!
# A101547: a(n) = A101545(A101545(n)).

The programs for A101547, there is no canonical definition to state claims against.
-/

/-! ## A101547.P66435999945913925

`A101545(A101545(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A101547.P66435999945913925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101545 (A101545 (n + 1)).toNat

end

end A101547.P66435999945913925

/-!
# A101548: Number of k such that prime(n) divides the left factorial !k = sum_{i=0..k-1} i!.

The programs for A101548, there is no canonical definition to state claims against.
-/

/-! ## A101548.P13079677427380732358

`A067255(A329749(n)+A000720(n+1))`
-/

namespace A101548.P13079677427380732358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067255 (A329749 n + A000720 (n + 1)).toNat

end

end A101548.P13079677427380732358

/-! ## A101548.P404052438132570033

`A205745(A127760(n+1)+A006478(n))`
-/

namespace A101548.P404052438132570033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205745 (A127760 (n + 1) + A006478 n).toNat

end

end A101548.P404052438132570033

/-! ## A101548.P3139302494399968085

`A055012(A050793(n+2))%A261461(n)`
-/

namespace A101548.P3139302494399968085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A055012 (A050793 (n + 2)).toNat) (A261461 n)

end

end A101548.P3139302494399968085

/-! ## A101548.P10073812930736302136

`A318499(lcm(A006093(n+1), A272211(n+1)))`
-/

namespace A101548.P10073812930736302136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318499 (Int.lcm (A006093 (n + 1)) (A272211 (n + 1)))

end

end A101548.P10073812930736302136

/-! ## A101548.P11541744764814242296

`A322983(A081124(n))`
-/

namespace A101548.P11541744764814242296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322983 (A081124 n).toNat

end

end A101548.P11541744764814242296

/-!
# A101549: Composite lopsided numbers: composite numbers n such that the largest prime factor > 2 sqrt(n).

The programs for A101549, the canonical program `A101549.P6028307656505015155` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A101549 has offset 1).

The definition of A101549 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A101549.P17980628824318877971

`filter[A101550(n+1), A005171(#)]`
-/

namespace A101549.P17980628824318877971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101550 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A101549.P17980628824318877971

namespace A101549

/-- `filter[A101550(n+1), A005171(#)]` -/
def P17980628824318877971.Spec : Prop :=
  ∀ n, P17980628824318877971.a n = A101549 (n + 1)

end A101549

/-! ## A101549.P3166410571015141618

`filter[A101550(n+1), A066247(#)]`
-/

namespace A101549.P3166410571015141618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101550 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A101549.P3166410571015141618

namespace A101549

/-- `filter[A101550(n+1), A066247(#)]` -/
def P3166410571015141618.Spec : Prop :=
  ∀ n, P3166410571015141618.a n = A101549 (n + 1)

end A101549

/-! ## A101549.P3117309403106424269

`filter[A101550(n+1), A143731(#)]`
-/

namespace A101549.P3117309403106424269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101550 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A143731 (f1 j).toNat = 1) n)

end

end A101549.P3117309403106424269

namespace A101549

/-- `filter[A101550(n+1), A143731(#)]` -/
def P3117309403106424269.Spec : Prop :=
  ∀ n, P3117309403106424269.a n = A101549 (n + 1)

end A101549

/-! ## A101549.P17565715050259339729

`filter[A101550(n+1), A174898(#)]`
-/

namespace A101549.P17565715050259339729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101550 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A174898 (f1 j).toNat = 1) n)

end

end A101549.P17565715050259339729

namespace A101549

/-- `filter[A101550(n+1), A174898(#)]` -/
def P17565715050259339729.Spec : Prop :=
  ∀ n, P17565715050259339729.a n = A101549 (n + 1)

end A101549

/-! ## A101549.P850393159294271269

`filter[A101550(n+1), A202238(#)]`
-/

namespace A101549.P850393159294271269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101550 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A202238 (f1 j).toNat = 1) n)

end

end A101549.P850393159294271269

namespace A101549

/-- `filter[A101550(n+1), A202238(#)]` -/
def P850393159294271269.Spec : Prop :=
  ∀ n, P850393159294271269.a n = A101549 (n + 1)

end A101549

/-! ## A101549.P14176953827525608081

`filter[A101550(n+1), A395053(#)]`
-/

namespace A101549.P14176953827525608081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101550 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A395053 (f1 j).toNat = 1) n)

end

end A101549.P14176953827525608081

namespace A101549

/-- `filter[A101550(n+1), A395053(#)]` -/
def P14176953827525608081.Spec : Prop :=
  ∀ n, P14176953827525608081.a n = A101549 (n + 1)

end A101549

/-! ## A101549.P6028307656505015155

`lt[A000267(n), A085392(n+1)]+1`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A101549

/-- `lt[A000267(n), A085392(n+1)]+1` -/
def P6028307656505015155.Spec : Prop :=
  ∀ n, (P6028307656505015155.a n : ℤ) = A101549 (n + 1)

theorem P6028307656505015155.correct : P6028307656505015155.Spec := by
  intro n
  simp only [A101549, Nat.add_sub_cancel]

end A101549

/-! ## A101549.P9735017577874587522

`∩[A002808(n+1), A101550(n+1)]`
-/

namespace A101549.P9735017577874587522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101550 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A101549.P9735017577874587522

namespace A101549

/-- `∩[A002808(n+1), A101550(n+1)]` -/
def P9735017577874587522.Spec : Prop :=
  ∀ n, (P9735017577874587522.a n : ℤ) = A101549 (n + 1)

end A101549

/-! ## A101549.P15806238305975101868

`∩[A018252(n+1), A101550(n+1)]`
-/

namespace A101549.P15806238305975101868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101550 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A101549.P15806238305975101868

namespace A101549

/-- `∩[A018252(n+1), A101550(n+1)]` -/
def P15806238305975101868.Spec : Prop :=
  ∀ n, (P15806238305975101868.a n : ℤ) = A101549 (n + 1)

end A101549

/-! ## A101549.P9762449399943847078

`∩[A024619(n+1), A101550(n+1)]`
-/

namespace A101549.P9762449399943847078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024619 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101550 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A101549.P9762449399943847078

namespace A101549

/-- `∩[A024619(n+1), A101550(n+1)]` -/
def P9762449399943847078.Spec : Prop :=
  ∀ n, (P9762449399943847078.a n : ℤ) = A101549 (n + 1)

end A101549

/-! ## A101549.P17899048831829716750

`∩[A056653(n+1), A101550(n+1)]`
-/

namespace A101549.P17899048831829716750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056653 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101550 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A101549.P17899048831829716750

namespace A101549

/-- `∩[A056653(n+1), A101550(n+1)]` -/
def P17899048831829716750.Spec : Prop :=
  ∀ n, (P17899048831829716750.a n : ℤ) = A101549 (n + 1)

end A101549

/-! ## A101549.P6227698743780858270

`∩[A062973(n+1), A101550(n+1)]`
-/

namespace A101549.P6227698743780858270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062973 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101550 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A101549.P6227698743780858270

namespace A101549

/-- `∩[A062973(n+1), A101550(n+1)]` -/
def P6227698743780858270.Spec : Prop :=
  ∀ n, (P6227698743780858270.a n : ℤ) = A101549 (n + 1)

end A101549

/-! ## A101549.P17323302886785519952

`∩[A063762(n+1), A101550(n+1)]`
-/

namespace A101549.P17323302886785519952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063762 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101550 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A101549.P17323302886785519952

namespace A101549

/-- `∩[A063762(n+1), A101550(n+1)]` -/
def P17323302886785519952.Spec : Prop :=
  ∀ n, (P17323302886785519952.a n : ℤ) = A101549 (n + 1)

end A101549

/-! ## A101549.P10430958511898019538

`∩[A063763(n+1), A101550(n+1)]`
-/

namespace A101549.P10430958511898019538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063763 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101550 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A101549.P10430958511898019538

namespace A101549

/-- `∩[A063763(n+1), A101550(n+1)]` -/
def P10430958511898019538.Spec : Prop :=
  ∀ n, (P10430958511898019538.a n : ℤ) = A101549 (n + 1)

end A101549

/-! ## A101549.P2635338157641102817

`∩[A065090(n+1), A101550(n+1)]`
-/

namespace A101549.P2635338157641102817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065090 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101550 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A101549.P2635338157641102817

namespace A101549

/-- `∩[A065090(n+1), A101550(n+1)]` -/
def P2635338157641102817.Spec : Prop :=
  ∀ n, (P2635338157641102817.a n : ℤ) = A101549 (n + 1)

end A101549

/-! ## A101549.P16305032986449131923

`∩[A069116(n+1), A101550(n+1)]`
-/

namespace A101549.P16305032986449131923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069116 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101550 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A101549.P16305032986449131923

namespace A101549

/-- `∩[A069116(n+1), A101550(n+1)]` -/
def P16305032986449131923.Spec : Prop :=
  ∀ n, (P16305032986449131923.a n : ℤ) = A101549 (n + 1)

end A101549

/-! ## A101549.P1565445189999392588

`∩[A069900(n+1), A101550(n+1)]`
-/

namespace A101549.P1565445189999392588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069900 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101550 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A101549.P1565445189999392588

namespace A101549

/-- `∩[A069900(n+1), A101550(n+1)]` -/
def P1565445189999392588.Spec : Prop :=
  ∀ n, (P1565445189999392588.a n : ℤ) = A101549 (n + 1)

end A101549

/-! ## A101549.P8225504225638686667

`∩[A073492(n+1), A101550(n+1)]`
-/

namespace A101549.P8225504225638686667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073492 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101550 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A101549.P8225504225638686667

namespace A101549

/-- `∩[A073492(n+1), A101550(n+1)]` -/
def P8225504225638686667.Spec : Prop :=
  ∀ n, (P8225504225638686667.a n : ℤ) = A101549 (n + 1)

end A101549

/-! ## A101549.P4815224278821407205

`∩[A078542(n+1), A101550(n+1)]`
-/

namespace A101549.P4815224278821407205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078542 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101550 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A101549.P4815224278821407205

namespace A101549

/-- `∩[A078542(n+1), A101550(n+1)]` -/
def P4815224278821407205.Spec : Prop :=
  ∀ n, (P4815224278821407205.a n : ℤ) = A101549 (n + 1)

end A101549

/-!
# A101550: Lopsided (or biased) numbers: numbers n such that the largest prime factor of n is > 2*sqrt(n).

The programs for A101550, the canonical program `A101550.P1248887786389931329` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A101550 has offset 1).

The definition of A101550 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A101550.P10634991875009151630

`lt[sqrt(4*n+2), A006530(n+1)]+1`
-/

namespace A101550.P10634991875009151630
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (4 * n + 2 : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n + 1

end

end A101550.P10634991875009151630

namespace A101550

/-- `lt[sqrt(4*n+2), A006530(n+1)]+1` -/
def P10634991875009151630.Spec : Prop :=
  ∀ n, (P10634991875009151630.a n : ℤ) = A101550 (n + 1)

end A101550

/-! ## A101550.P1248887786389931329

`lt[4*n+5, A006530(n+2)²]+2`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A101550

/-- `lt[4*n+5, A006530(n+2)²]+2` -/
def P1248887786389931329.Spec : Prop :=
  ∀ n, (P1248887786389931329.a n : ℤ) = A101550 (n + 1)

theorem P1248887786389931329.correct : P1248887786389931329.Spec := by
  intro n
  simp only [A101550, Nat.add_sub_cancel]

end A101550

/-! ## A101550.P9225548971728522389

`lt[A000267(n), A006530(A004277(n))]`
-/

namespace A101550.P9225548971728522389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000267 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A004277 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A101550.P9225548971728522389

namespace A101550

/-- `lt[A000267(n), A006530(A004277(n))]` -/
def P9225548971728522389.Spec : Prop :=
  ∀ n, (P9225548971728522389.a n : ℤ) = A101550 (n + 1)

end A101550

/-! ## A101550.P7234975711415288936

`lt[A000267(n), A006530(A022144(n))]`
-/

namespace A101550.P7234975711415288936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000267 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A022144 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A101550.P7234975711415288936

namespace A101550

/-- `lt[A000267(n), A006530(A022144(n))]` -/
def P7234975711415288936.Spec : Prop :=
  ∀ n, (P7234975711415288936.a n : ℤ) = A101550 (n + 1)

end A101550

/-! ## A101550.P9023608097203420118

`lt[A000267(n), A006530(A028310(n))]`
-/

namespace A101550.P9023608097203420118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000267 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A101550.P9023608097203420118

namespace A101550

/-- `lt[A000267(n), A006530(A028310(n))]` -/
def P9023608097203420118.Spec : Prop :=
  ∀ n, (P9023608097203420118.a n : ℤ) = A101550 (n + 1)

end A101550

/-! ## A101550.P7642031060301932715

`lt[A000267(n), A006530(A257088(n))]`
-/

namespace A101550.P7642031060301932715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000267 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A257088 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A101550.P7642031060301932715

namespace A101550

/-- `lt[A000267(n), A006530(A257088(n))]` -/
def P7642031060301932715.Spec : Prop :=
  ∀ n, (P7642031060301932715.a n : ℤ) = A101550 (n + 1)

end A101550

/-! ## A101550.P1981098960714984194

`lt[A284359(n), A006530(A004277(n))]`
-/

namespace A101550.P1981098960714984194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284359 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A004277 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A101550.P1981098960714984194

namespace A101550

/-- `lt[A284359(n), A006530(A004277(n))]` -/
def P1981098960714984194.Spec : Prop :=
  ∀ n, (P1981098960714984194.a n : ℤ) = A101550 (n + 1)

end A101550

/-! ## A101550.P9962387569913194620

`lt[A284359(n), A006530(A028310(n))]`
-/

namespace A101550.P9962387569913194620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284359 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A101550.P9962387569913194620

namespace A101550

/-- `lt[A284359(n), A006530(A028310(n))]` -/
def P9962387569913194620.Spec : Prop :=
  ∀ n, (P9962387569913194620.a n : ℤ) = A101550 (n + 1)

end A101550

/-! ## A101550.P14320099830420133031

`lt[A103128(2*(n+1)), A284695(n+1)]+1`
-/

namespace A101550.P14320099830420133031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103128 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284695 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A101550.P14320099830420133031

namespace A101550

/-- `lt[A103128(2*(n+1)), A284695(n+1)]+1` -/
def P14320099830420133031.Spec : Prop :=
  ∀ n, (P14320099830420133031.a n : ℤ) = A101550 (n + 1)

end A101550

/-! ## A101550.P6599306256518968612

`lt[A004277(2*n), A006530(A004277(n))²]`
-/

namespace A101550.P6599306256518968612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A004277 n).toNat ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A101550.P6599306256518968612

namespace A101550

/-- `lt[A004277(2*n), A006530(A004277(n))²]` -/
def P6599306256518968612.Spec : Prop :=
  ∀ n, (P6599306256518968612.a n : ℤ) = A101550 (n + 1)

end A101550

/-! ## A101550.P10008695600564029061

`lt[A003056(2*n+1), A006530(A028310(n))]`
-/

namespace A101550.P10008695600564029061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A101550.P10008695600564029061

namespace A101550

/-- `lt[A003056(2*n+1), A006530(A028310(n))]` -/
def P10008695600564029061.Spec : Prop :=
  ∀ n, (P10008695600564029061.a n : ℤ) = A101550 (n + 1)

end A101550

/-! ## A101550.P13712344825868953625

`lt[2, A097975(A008574(n))]`
-/

namespace A101550.P13712344825868953625
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097975 (A008574 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A101550.P13712344825868953625

namespace A101550

/-- `lt[2, A097975(A008574(n))]` -/
def P13712344825868953625.Spec : Prop :=
  ∀ n, (P13712344825868953625.a n : ℤ) = A101550 (n + 1)

end A101550

/-! ## A101550.P12561794644505151168

`record[A032742(A032742(A063763(n+5)))]`
-/

namespace A101550.P12561794644505151168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A032742 (A063763 (n + 5)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A101550.P12561794644505151168

namespace A101550

/-- `record[A032742(A032742(A063763(n+5)))]` -/
def P12561794644505151168.Spec : Prop :=
  ∀ n, P12561794644505151168.a n = A101550 (n + 1)

end A101550

/-! ## A101550.P2521662600974106764

`eq[A006530(n+2), A033677(A008586(n+2))]+2`
-/

namespace A101550.P2521662600974106764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033677 (A008586 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2

end

end A101550.P2521662600974106764

namespace A101550

/-- `eq[A006530(n+2), A033677(A008586(n+2))]+2` -/
def P2521662600974106764.Spec : Prop :=
  ∀ n, (P2521662600974106764.a n : ℤ) = A101550 (n + 1)

end A101550

/-!
# A101551: a(n) = C(n-2,2)+C(n-5,5)+...+C(n-(3*floor((n-3)/3)+2),3*floor((n-3)/3)+2).

The programs for A101551, the canonical program `A101551.P9141614747007626975` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A101551 has offset 0).

The definition of A101551 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 481 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A101551.P9141614747007626975

`3*a(n-1)-3*a(n-2)+a(n-3)+a(n-6)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=0, a(4)=1, a(5)=3`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A101551

/-- `3*a(n-1)-3*a(n-2)+a(n-3)+a(n-6)` -/
def P9141614747007626975.Spec : Prop :=
  ∀ n, P9141614747007626975.a n = A101551 n

theorem P9141614747007626975.correct : P9141614747007626975.Spec := by
  intro n
  simp only [A101551]

end A101551

/-! ## A101551.P3003624668995243225

`Δ[A100134(n+1)]`
-/

namespace A101551.P3003624668995243225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100134 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A101551.P3003624668995243225

namespace A101551

/-- `Δ[A100134(n+1)]` -/
def P3003624668995243225.Spec : Prop :=
  ∀ n, P3003624668995243225.a n = A101551 n

end A101551

/-! ## A101551.P16511526312286644747

`abs(Δ[A100134(A326178(n))])`
-/

namespace A101551.P16511526312286644747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100134 (A326178 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A101551.P16511526312286644747

namespace A101551

/-- `abs(Δ[A100134(A326178(n))])` -/
def P16511526312286644747.Spec : Prop :=
  ∀ n, P16511526312286644747.a n = A101551 n

end A101551

/-! ## A101551.P2383358225390770914

`A100134(n+2)-A100134(n+1)`
-/

namespace A101551.P2383358225390770914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100134 (n + 2) - A100134 (n + 1)

end

end A101551.P2383358225390770914

namespace A101551

/-- `A100134(n+2)-A100134(n+1)` -/
def P2383358225390770914.Spec : Prop :=
  ∀ n, P2383358225390770914.a n = A101551 n

end A101551

/-! ## A101551.P15229593079939424480

`Δ[Δ[A102516(n+1)]]`
-/

namespace A101551.P15229593079939424480
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102516 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A101551.P15229593079939424480

namespace A101551

/-- `Δ[Δ[A102516(n+1)]]` -/
def P15229593079939424480.Spec : Prop :=
  ∀ n, P15229593079939424480.a n = A101551 n

end A101551

/-! ## A101551.P14211449412741476838

`Δ[Δ[∑[A100134(n)]-n]]`
-/

namespace A101551.P14211449412741476838
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100134 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j - (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A101551.P14211449412741476838

namespace A101551

/-- `Δ[Δ[∑[A100134(n)]-n]]` -/
def P14211449412741476838.Spec : Prop :=
  ∀ n, P14211449412741476838.a n = A101551 n

end A101551

/-!
# A101552: C(n-3,3)+C(n-7,7)+...+C(n-(4*floor((n-4)/4)+3),4*floor((n-4)/4)+3).

The programs for A101552, the canonical program `A101552.P10466147491270777290` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A101552 has offset 0).

The definition of A101552 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A101552.P10466147491270777290

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)+a(n-8)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=0, a(4)=0, a(5)=0, a(6)=1, a(7)=4`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A101552

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)+a(n-8)` -/
def P10466147491270777290.Spec : Prop :=
  ∀ n, P10466147491270777290.a n = A101552 n

theorem P10466147491270777290.correct : P10466147491270777290.Spec := by
  intro n
  simp only [A101552]

end A101552

/-! ## A101552.P4159235313822686663

`Δ[A348289(n+1)]`
-/

namespace A101552.P4159235313822686663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348289 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A101552.P4159235313822686663

namespace A101552

/-- `Δ[A348289(n+1)]` -/
def P4159235313822686663.Spec : Prop :=
  ∀ n, P4159235313822686663.a n = A101552 n

end A101552

/-! ## A101552.P9211209378032411059

`abs(Δ[A348289(1-(n-2*n))])`
-/

namespace A101552.P9211209378032411059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348289 (1 - ((n : ℤ) - (2 * n : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A101552.P9211209378032411059

namespace A101552

/-- `abs(Δ[A348289(1-(n-2*n))])` -/
def P9211209378032411059.Spec : Prop :=
  ∀ n, P9211209378032411059.a n = A101552 n

end A101552

/-! ## A101552.P2472269445523514522

`A348289(n+2)-A348289(n+1)`
-/

namespace A101552.P2472269445523514522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348289 (n + 2) - A348289 (n + 1)

end

end A101552.P2472269445523514522

namespace A101552

/-- `A348289(n+2)-A348289(n+1)` -/
def P2472269445523514522.Spec : Prop :=
  ∀ n, P2472269445523514522.a n = A101552 n

end A101552

/-! ## A101552.P4403748668991779519

`-Δ[-A348289(A135157(2*n))]`
-/

namespace A101552.P4403748668991779519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A348289 (A135157 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(f1 (n + 1) - f1 n)

end

end A101552.P4403748668991779519

namespace A101552

/-- `-Δ[-A348289(A135157(2*n))]` -/
def P4403748668991779519.Spec : Prop :=
  ∀ n, P4403748668991779519.a n = A101552 n

end A101552

/-!
# A101553: A modular recurrence.

The programs for A101553, the canonical program `A101553.P15259446933119271152` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A101553 has offset 0).

The definition of A101553 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A101553.P14044765988716539512

`ogf((1+5x)/(1-15x^2))`
-/

namespace A101553.P14044765988716539512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 5] [1, 0, -15] n

end

end A101553.P14044765988716539512

namespace A101553

/-- `ogf((1+5x)/(1-15x^2))` -/
def P14044765988716539512.Spec : Prop :=
  ∀ n, P14044765988716539512.a n = A101553 n

end A101553

/-! ## A101553.P15259446933119271152

`15*a(n-2)` with `a(0)=1, a(1)=5`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A101553

/-- `15*a(n-2)` -/
def P15259446933119271152.Spec : Prop :=
  ∀ n, (P15259446933119271152.a n : ℤ) = A101553 n

theorem P15259446933119271152.correct : P15259446933119271152.Spec := by
  intro n
  simp only [A101553]

end A101553

/-! ## A101553.P3134748463241887231

`∏[abs(a(n-2))]` with `a(0)=1, a(1)=5, a(2)=3`
-/

namespace A101553.P3134748463241887231
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 5, 3] fun n f1 =>
  f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A101553.P3134748463241887231

namespace A101553

/-- `∏[abs(a(n-2))]` -/
def P3134748463241887231.Spec : Prop :=
  ∀ n, (P3134748463241887231.a n : ℤ) = A101553 n

end A101553

/-! ## A101553.P14037451852169336611

`∏[8-a(n-1)]` with `a(0)=1, a(1)=5`
-/

namespace A101553.P14037451852169336611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 5] fun n f1 =>
  8 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A101553.P14037451852169336611

namespace A101553

/-- `∏[8-a(n-1)]` -/
def P14037451852169336611.Spec : Prop :=
  ∀ n, P14037451852169336611.a n = A101553 n

end A101553

/-! ## A101553.P12408795079201830000

`a(n-2)/(1/4)²-a(n-2)` with `a(0)=1, a(1)=5`
-/

namespace A101553.P12408795079201830000
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 5] fun n a =>
  a (n - 2) / ((1 : ℚ) / 4) ^ 2 - a (n - 2)

end

end A101553.P12408795079201830000

namespace A101553

/-- `a(n-2)/(1/4)²-a(n-2)` -/
def P12408795079201830000.Spec : Prop :=
  ∀ n, P12408795079201830000.a n = (A101553 n : ℚ)

end A101553

/-! ## A101553.P17942299664266007256

`∏[A231720(n)%6]`
-/

namespace A101553.P17942299664266007256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A231720 n) 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A101553.P17942299664266007256

namespace A101553

/-- `∏[A231720(n)%6]` -/
def P17942299664266007256.Spec : Prop :=
  ∀ n, P17942299664266007256.a n = A101553 n

end A101553

/-! ## A101553.P12670935567557135063

`record[∏[A115635(2*n)]]`
-/

namespace A101553.P12670935567557135063
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115635 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A101553.P12670935567557135063

namespace A101553

/-- `record[∏[A115635(2*n)]]` -/
def P12670935567557135063.Spec : Prop :=
  ∀ n, P12670935567557135063.a n = A101553 n

end A101553

/-! ## A101553.P16918380753946624689

`∏[A071629(a(n-1))]` with `a(0)=1`
-/

namespace A101553.P16918380753946624689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A071629 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A101553.P16918380753946624689

namespace A101553

/-- `∏[A071629(a(n-1))]` -/
def P16918380753946624689.Spec : Prop :=
  ∀ n, P16918380753946624689.a n = A101553 n

end A101553

/-! ## A101553.P13312947180817694413

`∏[A110643(a(n-1))]` with `a(0)=1`
-/

namespace A101553.P13312947180817694413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A110643 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A101553.P13312947180817694413

namespace A101553

/-- `∏[A110643(a(n-1))]` -/
def P13312947180817694413.Spec : Prop :=
  ∀ n, P13312947180817694413.a n = A101553 n

end A101553

/-! ## A101553.P18316706314826892192

`∏[A165098(a(n-1))]` with `a(0)=1`
-/

namespace A101553.P18316706314826892192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A165098 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A101553.P18316706314826892192

namespace A101553

/-- `∏[A165098(a(n-1))]` -/
def P18316706314826892192.Spec : Prop :=
  ∀ n, P18316706314826892192.a n = A101553 n

end A101553

/-! ## A101553.P18166025642069508874

`∏[A175557(a(n-1))]` with `a(0)=1`
-/

namespace A101553.P18166025642069508874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A175557 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A101553.P18166025642069508874

namespace A101553

/-- `∏[A175557(a(n-1))]` -/
def P18166025642069508874.Spec : Prop :=
  ∀ n, P18166025642069508874.a n = A101553 n

end A101553

/-! ## A101553.P8672940908510781152

`∏[A194584(a(n-1))]` with `a(0)=1`
-/

namespace A101553.P8672940908510781152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A194584 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A101553.P8672940908510781152

namespace A101553

/-- `∏[A194584(a(n-1))]` -/
def P8672940908510781152.Spec : Prop :=
  ∀ n, P8672940908510781152.a n = A101553 n

end A101553

/-! ## A101553.P1964598648065413564

`∏[A253382(a(n-1))]` with `a(0)=1`
-/

namespace A101553.P1964598648065413564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A253382 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A101553.P1964598648065413564

namespace A101553

/-- `∏[A253382(a(n-1))]` -/
def P1964598648065413564.Spec : Prop :=
  ∀ n, P1964598648065413564.a n = A101553 n

end A101553

/-! ## A101553.P5737380496352142377

`∏[A341670(a(n-1))]` with `a(0)=1`
-/

namespace A101553.P5737380496352142377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A341670 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A101553.P5737380496352142377

namespace A101553

/-- `∏[A341670(a(n-1))]` -/
def P5737380496352142377.Spec : Prop :=
  ∀ n, P5737380496352142377.a n = A101553 n

end A101553

/-! ## A101553.P8816019338013221404

`∏[A378873(a(n-1))]` with `a(0)=1`
-/

namespace A101553.P8816019338013221404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A378873 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A101553.P8816019338013221404

namespace A101553

/-- `∏[A378873(a(n-1))]` -/
def P8816019338013221404.Spec : Prop :=
  ∀ n, P8816019338013221404.a n = A101553 n

end A101553

/-! ## A101553.P14589962263872313492

`∏[A379377(a(n-1))]` with `a(0)=1`
-/

namespace A101553.P14589962263872313492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A379377 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A101553.P14589962263872313492

namespace A101553

/-- `∏[A379377(a(n-1))]` -/
def P14589962263872313492.Spec : Prop :=
  ∀ n, P14589962263872313492.a n = A101553 n

end A101553

/-! ## A101553.P1568282165544069503

`∏[A282270(a(n-1))]` with `a(0)=1, a(1)=5`
-/

namespace A101553.P1568282165544069503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 5] fun n f1 =>
  A282270 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A101553.P1568282165544069503

namespace A101553

/-- `∏[A282270(a(n-1))]` -/
def P1568282165544069503.Spec : Prop :=
  ∀ n, P1568282165544069503.a n = A101553 n

end A101553

/-! ## A101553.P16895212825445816404

`∏[A006530(8*a((3*n)%(n+1)))]` with `a(0)=1, a(1)=5, a(2)=3`
-/

namespace A101553.P16895212825445816404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 5, 3] fun n f1 =>
  A006530 (8 * f1 (3 * n % (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A101553.P16895212825445816404

namespace A101553

/-- `∏[A006530(8*a((3*n)%(n+1)))]` -/
def P16895212825445816404.Spec : Prop :=
  ∀ n, P16895212825445816404.a n = A101553 n

end A101553

/-! ## A101553.P17140285767253167706

`A056451(n)*A108411(n)`
-/

namespace A101553.P17140285767253167706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056451 n * A108411 n

end

end A101553.P17140285767253167706

namespace A101553

/-- `A056451(n)*A108411(n)` -/
def P17140285767253167706.Spec : Prop :=
  ∀ n, P17140285767253167706.a n = A101553 n

end A101553

/-! ## A101553.P3694160725786311840

`A074872(n+2)*A108411(n)`
-/

namespace A101553.P3694160725786311840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074872 (n + 2) * A108411 n

end

end A101553.P3694160725786311840

namespace A101553

/-- `A074872(n+2)*A108411(n)` -/
def P3694160725786311840.Spec : Prop :=
  ∀ n, P3694160725786311840.a n = A101553 n

end A101553

/-!
# A101554: Second inverse mod 2 binomial transform of 2^n.

The programs for A101554, there is no canonical definition to state claims against.
-/

/-! ## A101554.P2395877746337472736

`∏{p}[A038183(n), #-3]`
-/

namespace A101554.P2395877746337472736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038183 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, ((p : ℤ) - 3)

end

end A101554.P2395877746337472736

/-! ## A101554.P16789114901263501677

`∏{p}[A038192(n), A319534(#)]`
-/

namespace A101554.P16789114901263501677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038192 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A319534 p

end

end A101554.P16789114901263501677

/-! ## A101554.P10470860381019781314

`∏{p}[A001317(2*n), A048967(#)]`
-/

namespace A101554.P10470860381019781314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001317 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A048967 p

end

end A101554.P10470860381019781314

/-! ## A101554.P14105975585191210265

`∏{p}[A019565(n), A124730(A005850(#))]`
-/

namespace A101554.P14105975585191210265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A124730 (A005850 p).toNat

end

end A101554.P14105975585191210265

/-!
# A101555: Convolution of A010060 and A000244.

The programs for A101555, the canonical program `A101555.P877821324375609163` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A101555 has offset 0).

The definition of A101555 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 211 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A101555.P10897107615379387418

`char[xor(n, Δ[n²])]+3*a(n-1)` with `a(0)=0`
-/

namespace A101555.P10897107615379387418
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  (if ∃ j, f1 j = (n : ℤ) then 1 else 0) + 3 * a (n - 1)

end

end A101555.P10897107615379387418

namespace A101555

/-- `char[xor(n, Δ[n²])]+3*a(n-1)` -/
def P10897107615379387418.Spec : Prop :=
  ∀ n, (P10897107615379387418.a n : ℤ) = A101555 n

end A101555

/-! ## A101555.P16296054740976997880

`char[comp[xor(n, 2*n)]]+3*a(n-1)` with `a(0)=0`
-/

namespace A101555.P16296054740976997880
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  (if ∃ j, f1 j = n then 1 else 0) + 3 * a (n - 1)

end

end A101555.P16296054740976997880

namespace A101555

/-- `char[comp[xor(n, 2*n)]]+3*a(n-1)` -/
def P16296054740976997880.Spec : Prop :=
  ∀ n, (P16296054740976997880.a n : ℤ) = A101555 n

end A101555

/-! ## A101555.P877821324375609163

`A010060(n)+3*a(n-1)` with `a(0)=0`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A101555

/-- `A010060(n)+3*a(n-1)` -/
def P877821324375609163.Spec : Prop :=
  ∀ n, P877821324375609163.a n = A101555 n

theorem P877821324375609163.correct : P877821324375609163.Spec := by
  intro n
  simp only [A101555]

end A101555

/-! ## A101555.P12811688062106789939

`3*a(n-1)+A001285(n)-1` with `a(0)=0`
-/

namespace A101555.P12811688062106789939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  3 * a (n - 1) + (A001285 n - 1)

end

end A101555.P12811688062106789939

namespace A101555

/-- `3*a(n-1)+A001285(n)-1` -/
def P12811688062106789939.Spec : Prop :=
  ∀ n, P12811688062106789939.a n = A101555 n

end A101555

/-! ## A101555.P11682486351387564624

`3*a(n-1)+1-A010059(n)` with `a(0)=0`
-/

namespace A101555.P11682486351387564624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  3 * a (n - 1) + (1 - A010059 n)

end

end A101555.P11682486351387564624

namespace A101555

/-- `3*a(n-1)+1-A010059(n)` -/
def P11682486351387564624.Spec : Prop :=
  ∀ n, P11682486351387564624.a n = A101555 n

end A101555

/-! ## A101555.P9057055531349587362

`∑[xor(3*a(n-1), A285383(n+1))]` with `a(0)=0`
-/

namespace A101555.P9057055531349587362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  Int.xor (3 * f1 (n - 1)) (A285383 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101555.P9057055531349587362

namespace A101555

/-- `∑[xor(3*a(n-1), A285383(n+1))]` -/
def P9057055531349587362.Spec : Prop :=
  ∀ n, P9057055531349587362.a n = A101555 n

end A101555

/-! ## A101555.P5917768729556659698

`A040001(A000120(n)+1)-(1-3*a(n-1))` with `a(0)=0`
-/

namespace A101555.P5917768729556659698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A040001 (A000120 n + 1).toNat - (1 - 3 * a (n - 1))

end

end A101555.P5917768729556659698

namespace A101555

/-- `A040001(A000120(n)+1)-(1-3*a(n-1))` -/
def P5917768729556659698.Spec : Prop :=
  ∀ n, P5917768729556659698.a n = A101555 n

end A101555

/-!
# A101556: A Thue-Morse convolution.

The programs for A101556, the canonical program `A101556.P9246590953496817602` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A101556 has offset 0).

The definition of A101556 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A101556.P8909878291621238002

`char[xor(n, Δ[n²])]+10*a(n-1)` with `a(0)=0`
-/

namespace A101556.P8909878291621238002
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  (if ∃ j, f1 j = (n : ℤ) then 1 else 0) + 10 * a (n - 1)

end

end A101556.P8909878291621238002

namespace A101556

/-- `char[xor(n, Δ[n²])]+10*a(n-1)` -/
def P8909878291621238002.Spec : Prop :=
  ∀ n, (P8909878291621238002.a n : ℤ) = A101556 n

end A101556

/-! ## A101556.P2467880999028667166

`char[comp[xor(n, 2*n)]]+10*a(n-1)` with `a(0)=0`
-/

namespace A101556.P2467880999028667166
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  (if ∃ j, f1 j = n then 1 else 0) + 10 * a (n - 1)

end

end A101556.P2467880999028667166

namespace A101556

/-- `char[comp[xor(n, 2*n)]]+10*a(n-1)` -/
def P2467880999028667166.Spec : Prop :=
  ∀ n, (P2467880999028667166.a n : ℤ) = A101556 n

end A101556

/-! ## A101556.P9246590953496817602

`A010060(n)+10*a(n-1)` with `a(0)=0`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A101556

/-- `A010060(n)+10*a(n-1)` -/
def P9246590953496817602.Spec : Prop :=
  ∀ n, P9246590953496817602.a n = A101556 n

theorem P9246590953496817602.correct : P9246590953496817602.Spec := by
  intro n
  simp only [A101556]

end A101556

/-! ## A101556.P17083476545487801840

`A000120(n)%2+10*a(n-1)` with `a(0)=0`
-/

namespace A101556.P17083476545487801840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  Int.tmod (A000120 n) 2 + 10 * a (n - 1)

end

end A101556.P17083476545487801840

namespace A101556

/-- `A000120(n)%2+10*a(n-1)` -/
def P17083476545487801840.Spec : Prop :=
  ∀ n, P17083476545487801840.a n = A101556 n

end A101556

/-! ## A101556.P13040869846094916194

`or(10*a(n-1), A010060(2*n))` with `a(0)=0`
-/

namespace A101556.P13040869846094916194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  Int.lor (10 * a (n - 1)) (A010060 (2 * n))

end

end A101556.P13040869846094916194

namespace A101556

/-- `or(10*a(n-1), A010060(2*n))` -/
def P13040869846094916194.Spec : Prop :=
  ∀ n, P13040869846094916194.a n = A101556 n

end A101556

/-! ## A101556.P18193661906432891980

`or(10*a(n-1), A254379(2*n))` with `a(0)=0, a(1)=1`
-/

namespace A101556.P18193661906432891980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  Int.lor (10 * a (n - 1)) (A254379 (2 * n))

end

end A101556.P18193661906432891980

namespace A101556

/-- `or(10*a(n-1), A254379(2*n))` -/
def P18193661906432891980.Spec : Prop :=
  ∀ n, P18193661906432891980.a n = A101556 n

end A101556

/-! ## A101556.P5303593320585553014

`A000035(A000120(n))+10*a(n-1)` with `a(0)=0`
-/

namespace A101556.P5303593320585553014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A000035 (A000120 n).toNat + 10 * a (n - 1)

end

end A101556.P5303593320585553014

namespace A101556

/-- `A000035(A000120(n))+10*a(n-1)` -/
def P5303593320585553014.Spec : Prop :=
  ∀ n, P5303593320585553014.a n = A101556 n

end A101556

/-!
# A101561: a(n) = (-1)^n * [x^n] Sum_{k>=1} x^(k-1)/(1+3*x^k).

The programs for A101561, the canonical program `A101561.P6448031316666899891` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A101561 has offset 0).

The definition of A101561 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A101561.P6448031316666899891

`(-1)^n*∑{d}[n+1, (-3)^(#-1)]`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A101561

/-- `(-1)^n*∑{d}[n+1, (-3)^(#-1)]` -/
def P6448031316666899891.Spec : Prop :=
  ∀ n, P6448031316666899891.a n = (A101561 n : ℚ)

end A101561

/-! ## A101561.P6242027696701198991

`abs(∑{d}[n+1, A141413(#+1)])`
-/

namespace A101561.P6242027696701198991
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ d ∈ Nat.divisors (f1 n), A141413 (d + 1)|

end

end A101561.P6242027696701198991

namespace A101561

/-- `abs(∑{d}[n+1, A141413(#+1)])` -/
def P6242027696701198991.Spec : Prop :=
  ∀ n, P6242027696701198991.a n = A101561 n

end A101561

/-! ## A101561.P3961482548851953054

`abs(∑{d}[n+1, (-3)^#])/3`
-/

namespace A101561.P3961482548851953054
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((|∑ d ∈ Nat.divisors (f1 n), (-3) ^ d| : ℤ) : ℚ) / 3

end

end A101561.P3961482548851953054

namespace A101561

/-- `abs(∑{d}[n+1, (-3)^#])/3` -/
def P3961482548851953054.Spec : Prop :=
  ∀ n, P3961482548851953054.a n = (A101561 n : ℚ)

end A101561

/-! ## A101561.P6646826121543409594

`abs(Δ[A344824(A027379(n+1))])`
-/

namespace A101561.P6646826121543409594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344824 (A027379 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A101561.P6646826121543409594

namespace A101561

/-- `abs(Δ[A344824(A027379(n+1))])` -/
def P6646826121543409594.Spec : Prop :=
  ∀ n, P6646826121543409594.a n = A101561 n

end A101561

/-! ## A101561.P14900161679220794929

`abs(A065369(A034730(n+1)))`
-/

namespace A101561.P14900161679220794929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A065369 (A034730 (n + 1)).toNat|

end

end A101561.P14900161679220794929

namespace A101561

/-- `abs(A065369(A034730(n+1)))` -/
def P14900161679220794929.Spec : Prop :=
  ∀ n, P14900161679220794929.a n = A101561 n

end A101561

/-!
# A101562: a(n) = (-1)^n * coefficient of x^n in Sum_{k>=1} x^(k-1)/(1+4*x^k).

The programs for A101562, the canonical program `A101562.P3657575706562549160` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A101562 has offset 0).

The definition of A101562 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A101562.P3657575706562549160

`(-1)^n*∑{d}[n+1, (-4)^(#-1)]`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A101562

/-- `(-1)^n*∑{d}[n+1, (-4)^(#-1)]` -/
def P3657575706562549160.Spec : Prop :=
  ∀ n, P3657575706562549160.a n = (A101562 n : ℚ)

end A101562

/-! ## A101562.P5230230343558429574

`abs(∑{d}[n+1, (-4)^(#-1)])`
-/

namespace A101562.P5230230343558429574
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |∑ d ∈ Nat.divisors (f1 n), (-4 : ℚ) ^ ((d : ℤ) - 1 : ℤ)|

end

end A101562.P5230230343558429574

namespace A101562

/-- `abs(∑{d}[n+1, (-4)^(#-1)])` -/
def P5230230343558429574.Spec : Prop :=
  ∀ n, P5230230343558429574.a n = (A101562 n : ℚ)

end A101562

/-! ## A101562.P15134679519168423000

`A006288(abs(∑{d}[(-1)^n*xor(n, -1), (-3)^#])/3)`
-/

namespace A101562.P15134679519168423000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * Int.xor (n : ℤ) (-1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006288 (SequenceMachineLib.roundAway (((|∑ d ∈ Nat.divisors (f1 n).natAbs, (-3) ^ d| : ℤ) : ℚ) / 3)).toNat

end

end A101562.P15134679519168423000

namespace A101562

/-- `A006288(abs(∑{d}[(-1)^n*xor(n, -1), (-3)^#])/3)` -/
def P15134679519168423000.Spec : Prop :=
  ∀ n, P15134679519168423000.a n = A101562 n

end A101562

/-! ## A101562.P3906653744069485493

`A006288(A101561(n))`
-/

namespace A101562.P3906653744069485493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006288 (A101561 n).toNat

end

end A101562.P3906653744069485493

namespace A101562

/-- `A006288(A101561(n))` -/
def P3906653744069485493.Spec : Prop :=
  ∀ n, P3906653744069485493.a n = A101562 n

end A101562

/-! ## A101562.P4572963509889285200

`A006288(abs(∑{d}[n+1, A141413(#+1)]))`
-/

namespace A101562.P4572963509889285200
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006288 |∑ d ∈ Nat.divisors (f1 n), A141413 (d + 1)|.toNat

end

end A101562.P4572963509889285200

namespace A101562

/-- `A006288(abs(∑{d}[n+1, A141413(#+1)]))` -/
def P4572963509889285200.Spec : Prop :=
  ∀ n, P4572963509889285200.a n = A101562 n

end A101562

/-!
# A101563: a(n) = (-1)^n * coefficient of x^n in Sum_{k>=1} x^(k-1)/(1+10*x^k).

The programs for A101563, the canonical program `A101563.P7998152763079457344` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A101563 has offset 0).

The definition of A101563 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A101563.P7998152763079457344

`(-1)^n*∑{d}[n+1, (-10)^(#-1)]`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A101563

/-- `(-1)^n*∑{d}[n+1, (-10)^(#-1)]` -/
def P7998152763079457344.Spec : Prop :=
  ∀ n, P7998152763079457344.a n = (A101563 n : ℚ)

end A101563

/-!
# A101564: a(n) = Sum_{k=0..n} (-1)^A010060(n-k)*[(n+1) mod (k+1) = 0]*10^k, where [] denotes the Iverson bracket.

The programs for A101564, there is no canonical definition to state claims against.
-/

/-! ## A101564.P10781654846196259809

`or(A221579(n), A300506(A054515(n)))`
-/

namespace A101564.P10781654846196259809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A221579 n) (A300506 (A054515 n).toNat)

end

end A101564.P10781654846196259809

/-! ## A101564.P919163477605630479

`or(A221579(n), A352130(A221536(n+1)))`
-/

namespace A101564.P919163477605630479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A221579 n) (A352130 (A221536 (n + 1)).toNat)

end

end A101564.P919163477605630479

/-!
# A101565: a(n) = Sum_{k=0..n} (-1)^A010060(n-k)*[(n+1) mod (k+1) = 0], where [] denotes the Iverson bracket.

The programs for A101565, the canonical program `A101565.P1735292411759893725` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A101565 has offset 0).

The definition of A101565 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A101565.P1735292411759893725

`∑{d}[n+1, A106400(1-#+n)]`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A101565

/-- `∑{d}[n+1, A106400(1-#+n)]` -/
def P1735292411759893725.Spec : Prop :=
  ∀ n, P1735292411759893725.a n = A101565 n

theorem P1735292411759893725.correct : P1735292411759893725.Spec := by
  intro n
  simp only [A101565]

end A101565

/-! ## A101565.P14626410157988846857

`∑{d}[n+1, A029883(4*(n+1-#)+1)]`
-/

namespace A101565.P14626410157988846857
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A029883 (4 * ((n + 1 : ℤ) - (d : ℤ)) + 1).toNat

end

end A101565.P14626410157988846857

namespace A101565

/-- `∑{d}[n+1, A029883(4*(n+1-#)+1)]` -/
def P14626410157988846857.Spec : Prop :=
  ∀ n, P14626410157988846857.a n = A101565 n

end A101565

/-! ## A101565.P15397419937780305068

`∑{d}[n+1, A064179(A052330(n+1-#))]`
-/

namespace A101565.P15397419937780305068
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A064179 (A052330 (n + 1 - d)).toNat

end

end A101565.P15397419937780305068

namespace A101565

/-- `∑{d}[n+1, A064179(A052330(n+1-#))]` -/
def P15397419937780305068.Spec : Prop :=
  ∀ n, P15397419937780305068.a n = A101565 n

end A101565

/-! ## A101565.P6401899835269682845

`∑{d}[n+1, A008683(A019565(n+1-#))]`
-/

namespace A101565.P6401899835269682845
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 (A019565 (n + 1 - d)).toNat

end

end A101565.P6401899835269682845

namespace A101565

/-- `∑{d}[n+1, A008683(A019565(n+1-#))]` -/
def P6401899835269682845.Spec : Prop :=
  ∀ n, P6401899835269682845.a n = A101565 n

end A101565

/-! ## A101565.P2520111408647400757

`∑{d}[n+1, A008836(A339809(n+1-#)+1)]`
-/

namespace A101565.P2520111408647400757
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008836 (A339809 (n + 1 - d) + 1).toNat

end

end A101565.P2520111408647400757

namespace A101565

/-- `∑{d}[n+1, A008836(A339809(n+1-#)+1)]` -/
def P2520111408647400757.Spec : Prop :=
  ∀ n, P2520111408647400757.a n = A101565 n

end A101565

/-!
# A101566: Binary partition sequence matrix.

The programs for A101566, the canonical program `A101566.P11526131365689363908` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A101566 has offset 0).

The definition of A101566 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A101566.P8956376956294801690

`A000123(floor((row(n)-col(n))/2))`
-/

namespace A101566.P8956376956294801690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000123 ⌊((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) : ℚ) / 2⌋.toNat

end

end A101566.P8956376956294801690

namespace A101566

/-- `A000123(floor((row(n)-col(n))/2))` -/
def P8956376956294801690.Spec : Prop :=
  ∀ n, P8956376956294801690.a n = A101566 n

end A101566

/-! ## A101566.P11526131365689363908

`A018819(C(comp[∑[n]]-n, 2)-(n+1))`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A101566

/-- `A018819(C(comp[∑[n]]-n, 2)-(n+1))` -/
def P11526131365689363908.Spec : Prop :=
  ∀ n, P11526131365689363908.a n = A101566 n

theorem P11526131365689363908.correct : P11526131365689363908.Spec := by
  intro n
  simp only [A101566]

end A101566

/-! ## A101566.P11734342632029665822

`A018819(C(comp[∑[n]]-n, 2)-n-1)`
-/

namespace A101566.P11734342632029665822
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018819 ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ) - 1).toNat

end

end A101566.P11734342632029665822

namespace A101566

/-- `A018819(C(comp[∑[n]]-n, 2)-n-1)` -/
def P11734342632029665822.Spec : Prop :=
  ∀ n, P11734342632029665822.a n = A101566 n

end A101566

/-! ## A101566.P16717543450263399393

`A307148(A099375(n))`
-/

namespace A101566.P16717543450263399393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307148 (A099375 n).toNat

end

end A101566.P16717543450263399393

namespace A101566

/-- `A307148(A099375(n))` -/
def P16717543450263399393.Spec : Prop :=
  ∀ n, P16717543450263399393.a n = A101566 n

end A101566

/-! ## A101566.P12853274931862091696

`A018819(A193592(n+1))`
-/

namespace A101566.P12853274931862091696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018819 (A193592 (n + 1)).toNat

end

end A101566.P12853274931862091696

namespace A101566

/-- `A018819(A193592(n+1))` -/
def P12853274931862091696.Spec : Prop :=
  ∀ n, P12853274931862091696.a n = A101566 n

end A101566

/-! ## A101566.P4943179232776158887

`A072170(A292565(n+1))`
-/

namespace A101566.P4943179232776158887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072170 (A292565 (n + 1)).toNat

end

end A101566.P4943179232776158887

namespace A101566

/-- `A072170(A292565(n+1))` -/
def P4943179232776158887.Spec : Prop :=
  ∀ n, P4943179232776158887.a n = A101566 n

end A101566

/-! ## A101566.P17382547393064389530

`A050377(A130321(n))`
-/

namespace A101566.P17382547393064389530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050377 (A130321 n).toNat

end

end A101566.P17382547393064389530

namespace A101566

/-- `A050377(A130321(n))` -/
def P17382547393064389530.Spec : Prop :=
  ∀ n, P17382547393064389530.a n = A101566 n

end A101566

/-! ## A101566.P4406020572953155794

`A050377(A099884(n))`
-/

namespace A101566.P4406020572953155794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050377 (A099884 n).toNat

end

end A101566.P4406020572953155794

namespace A101566

/-- `A050377(A099884(n))` -/
def P4406020572953155794.Spec : Prop :=
  ∀ n, P4406020572953155794.a n = A101566 n

end A101566

/-! ## A101566.P10128803507576522654

`A342087(A155038(n+1))`
-/

namespace A101566.P10128803507576522654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342087 (A155038 (n + 1)).toNat

end

end A101566.P10128803507576522654

namespace A101566

/-- `A342087(A155038(n+1))` -/
def P10128803507576522654.Spec : Prop :=
  ∀ n, P10128803507576522654.a n = A101566 n

end A101566

/-! ## A101566.P12989963806011792617

`A236833(A276618(n))`
-/

namespace A101566.P12989963806011792617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236833 (A276618 n).toNat

end

end A101566.P12989963806011792617

namespace A101566

/-- `A236833(A276618(n))` -/
def P12989963806011792617.Spec : Prop :=
  ∀ n, P12989963806011792617.a n = A101566 n

end A101566

/-!
# A101567: Numbers n such that 1009*n + 10007 is prime.

The programs for A101567, there is no canonical definition to state claims against.
-/

/-! ## A101567.P6992956845016267876

`lt[A328362(2*(n+1)), A036987(A020639(n+1))]`
-/

namespace A101567.P6992956845016267876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328362 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036987 (A020639 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A101567.P6992956845016267876

/-!
# A101568: Indices of primes in sequence defined by A(0) = 53, A(n) = 10*A(n-1) - 27 for n > 0.

The programs for A101568, there is no canonical definition to state claims against.
-/

/-! ## A101568.P5543955108955674682

`A096254(n+1)-1`
-/

namespace A101568.P5543955108955674682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096254 (n + 1) - 1

end

end A101568.P5543955108955674682

/-! ## A101568.P11533245143770124605

`record[Δ[A096254(A158416(n))]]`
-/

namespace A101568.P11533245143770124605
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096254 (A158416 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A101568.P11533245143770124605

/-! ## A101568.P3433653195751804541

`A134824(n+2)+A096254(n+1)`
-/

namespace A101568.P3433653195751804541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134824 (n + 2) + A096254 (n + 1)

end

end A101568.P3433653195751804541

/-! ## A101568.P9730530313593787558

`A153881(n+2)+A096254(n+1)`
-/

namespace A101568.P9730530313593787558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153881 (n + 2) + A096254 (n + 1)

end

end A101568.P9730530313593787558

/-! ## A101568.P12541665622499479023

`A280193(Δ[n²])+A096254(n+1)`
-/

namespace A101568.P12541665622499479023
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280193 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + A096254 (n + 1)

end

end A101568.P12541665622499479023

/-!
# A101569: Indices of primes in sequence defined by A(0) = 59, A(n) = 10*A(n-1) - 81 for n > 0.

The programs for A101569, there is no canonical definition to state claims against.
-/

/-! ## A101569.P16647119230656350796

`A103004(n+1)-1`
-/

namespace A101569.P16647119230656350796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103004 (n + 1) - 1

end

end A101569.P16647119230656350796

/-! ## A101569.P11894320972442030933

`record[Δ[A103004(A152271(n))]]`
-/

namespace A101569.P11894320972442030933
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103004 (A152271 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A101569.P11894320972442030933

/-! ## A101569.P10541616442626406569

`record[A103004(A344180(n))-1]`
-/

namespace A101569.P10541616442626406569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103004 (A344180 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A101569.P10541616442626406569

/-! ## A101569.P1226795011652582563

`A355827(A051698(n))+A103004(n+1)`
-/

namespace A101569.P1226795011652582563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355827 (A051698 n).toNat + A103004 (n + 1)

end

end A101569.P1226795011652582563

/-! ## A101569.P10889945646734890898

`A355827(A001359(n+1))+A103004(n+1)`
-/

namespace A101569.P10889945646734890898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355827 (A001359 (n + 1)).toNat + A103004 (n + 1)

end

end A101569.P10889945646734890898

/-!
# A101570: Indices of primes in sequence defined by A(0) = 53, A(n) = 10*A(n-1) - 17 for n > 0.

The programs for A101570, there is no canonical definition to state claims against.
-/

/-! ## A101570.P15831462968286362151

`A103005(n+1)-1`
-/

namespace A101570.P15831462968286362151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103005 (n + 1) - 1

end

end A101570.P15831462968286362151

/-! ## A101570.P112697292319958765

`record[Δ[A103005(A152271(n))]]`
-/

namespace A101570.P112697292319958765
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103005 (A152271 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A101570.P112697292319958765

/-! ## A101570.P7844064333818583598

`record[A103005(A344180(n))-1]`
-/

namespace A101570.P7844064333818583598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103005 (A344180 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A101570.P7844064333818583598

/-! ## A101570.P1628101109085390625

`A134824(n+2)+A103005(n+1)`
-/

namespace A101570.P1628101109085390625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134824 (n + 2) + A103005 (n + 1)

end

end A101570.P1628101109085390625

/-! ## A101570.P5700891270727394430

`A154990(3*n+5)+A103005(n+1)`
-/

namespace A101570.P5700891270727394430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154990 (3 * n + 5) + A103005 (n + 1)

end

end A101570.P5700891270727394430

/-!
# A101572: Indices of primes in sequence defined by A(0) = 59, A(n) = 10*A(n-1) - 71 for n > 0.

The programs for A101572, there is no canonical definition to state claims against.
-/

/-! ## A101572.P13097467692582227775

`A103007(n+2)-1`
-/

namespace A101572.P13097467692582227775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103007 (n + 2) - 1

end

end A101572.P13097467692582227775

/-! ## A101572.P467704292832526632

`∑[Δ[A103007(n+1)]%(3^n)]`
-/

namespace A101572.P467704292832526632
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103007 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (n + 1) - f2 n) (3 ^ n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101572.P467704292832526632

/-! ## A101572.P13736878127307450978

`A319419(A000975(n))+A103007(n+2)`
-/

namespace A101572.P13736878127307450978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319419 (A000975 n).toNat + A103007 (n + 2)

end

end A101572.P13736878127307450978

/-! ## A101572.P3320388093139435125

`A319419(A059848(n))+A103007(n+2)`
-/

namespace A101572.P3320388093139435125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319419 (A059848 n).toNat + A103007 (n + 2)

end

end A101572.P3320388093139435125

/-! ## A101572.P10103110199159516456

`A349340(A000040(n+1))+A103007(n+2)`
-/

namespace A101572.P10103110199159516456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349340 (A000040 (n + 1)).toNat + A103007 (n + 2)

end

end A101572.P10103110199159516456

/-!
# A101573: Indices of primes in sequence defined by A(0) = 51, A(n) = 10*A(n-1) + 11 for n > 0.

The programs for A101573, there is no canonical definition to state claims against.
-/

/-! ## A101573.P1328630976260825709

`A103008(n+1)-1`
-/

namespace A101573.P1328630976260825709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103008 (n + 1) - 1

end

end A101573.P1328630976260825709

/-! ## A101573.P4716111718286087766

`A023443(A103008(n+1))`
-/

namespace A101573.P4716111718286087766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A103008 (n + 1)).toNat

end

end A101573.P4716111718286087766

/-! ## A101573.P10640078062561814919

`record[A103008(A133310(n))-1]`
-/

namespace A101573.P10640078062561814919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103008 (A133310 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A101573.P10640078062561814919

/-! ## A101573.P14079433010598095917

`A023445(A103008(n+1)+2)`
-/

namespace A101573.P14079433010598095917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023445 (A103008 (n + 1) + 2).toNat

end

end A101573.P14079433010598095917

/-! ## A101573.P10044502340182030336

`A023446(A103008(n+1)+3)`
-/

namespace A101573.P10044502340182030336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023446 (A103008 (n + 1) + 3).toNat

end

end A101573.P10044502340182030336

/-!
# A101574: Indices of primes in sequence defined by A(0) = 53, A(n) = 10*A(n-1) - 7 for n > 0.

The programs for A101574, there is no canonical definition to state claims against.
-/

/-! ## A101574.P3405024661734963050

`A103009(n+1)-1`
-/

namespace A101574.P3405024661734963050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103009 (n + 1) - 1

end

end A101574.P3405024661734963050

/-! ## A101574.P17610615010474173928

`record[Δ[A103009(A051340(n))]]`
-/

namespace A101574.P17610615010474173928
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103009 (A051340 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A101574.P17610615010474173928

/-! ## A101574.P17649969499687679463

`record[Δ[A103009(A152271(n))]]`
-/

namespace A101574.P17649969499687679463
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103009 (A152271 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A101574.P17649969499687679463

/-! ## A101574.P6249067776809231037

`abs(A103009(n+1)+A057428(n+1))`
-/

namespace A101574.P6249067776809231037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A103009 (n + 1) + A057428 (n + 1)|

end

end A101574.P6249067776809231037

/-! ## A101574.P2021272040336359057

`record[A103009(A051340(n))-A007318(n)]`
-/

namespace A101574.P2021272040336359057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103009 (A051340 n).toNat - A007318 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A101574.P2021272040336359057

/-!
# A101575: Indices of primes in sequence defined by A(0) = 57, A(n) = 10*A(n-1) - 43 for n > 0.

The programs for A101575, there is no canonical definition to state claims against.
-/

/-! ## A101575.P8849711012577505

`A103010(n+1)-1`
-/

namespace A101575.P8849711012577505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103010 (n + 1) - 1

end

end A101575.P8849711012577505

/-! ## A101575.P15179607840230585994

`A118830(Δ[n²])+A103010(n+1)`
-/

namespace A101575.P15179607840230585994
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118830 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + A103010 (n + 1)

end

end A101575.P15179607840230585994

/-! ## A101575.P9346272987639358409

`A165326(2*(n+1))+A103010(n+1)`
-/

namespace A101575.P9346272987639358409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165326 (2 * (n + 1)) + A103010 (n + 1)

end

end A101575.P9346272987639358409

/-! ## A101575.P11961336943981737988

`A316441(A000040(n+1))+A103010(n+1)`
-/

namespace A101575.P11961336943981737988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316441 (A000040 (n + 1)).toNat + A103010 (n + 1)

end

end A101575.P11961336943981737988

/-! ## A101575.P10785851229047979978

`A124884(A270419(n+1))+A103010(n+1)`
-/

namespace A101575.P10785851229047979978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124884 (A270419 (n + 1)).toNat + A103010 (n + 1)

end

end A101575.P10785851229047979978

/-!
# A101576: Indices of primes in sequence defined by A(0) = 59, A(n) = 10*A(n-1) - 61 for n > 0.

The programs for A101576, there is no canonical definition to state claims against.
-/

/-! ## A101576.P17690134084845778531

`A103011(n+1)-1`
-/

namespace A101576.P17690134084845778531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103011 (n + 1) - 1

end

end A101576.P17690134084845778531

/-! ## A101576.P5372961795061911158

`record[Δ[A103011(A152271(n))]]`
-/

namespace A101576.P5372961795061911158
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103011 (A152271 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A101576.P5372961795061911158

/-! ## A101576.P13348077564970034278

`abs(A103011(n+1)+A057428(n+1))`
-/

namespace A101576.P13348077564970034278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A103011 (n + 1) + A057428 (n + 1)|

end

end A101576.P13348077564970034278

/-! ## A101576.P5861486568951528835

`A158387((n+2)²)+A103011(n+1)`
-/

namespace A101576.P5861486568951528835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158387 ((n + 2) ^ 2) + A103011 (n + 1)

end

end A101576.P5861486568951528835

/-! ## A101576.P7485288476906116041

`A143374(A176298(n))+A103011(n+1)`
-/

namespace A101576.P7485288476906116041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143374 (A176298 n).toNat + A103011 (n + 1)

end

end A101576.P7485288476906116041

/-!
# A101577: Indices of primes in sequence defined by A(0) = 59, A(n) = 10*A(n-1) - 51 for n > 0.

The programs for A101577, there is no canonical definition to state claims against.
-/

/-! ## A101577.P146596861517333827

`A103012(n+2)-1`
-/

namespace A101577.P146596861517333827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103012 (n + 2) - 1

end

end A101577.P146596861517333827

/-! ## A101577.P6886168796515792022

`xor(1, A103012(A020725(n+1)))`
-/

namespace A101577.P6886168796515792022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A103012 (A020725 (n + 1)).toNat)

end

end A101577.P6886168796515792022

/-! ## A101577.P17980287314680344492

`xor(1, A103012(A072226(n+1)))`
-/

namespace A101577.P17980287314680344492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A103012 (A072226 (n + 1)).toNat)

end

end A101577.P17980287314680344492

/-! ## A101577.P13640931099966275709

`xor(1, A103012(A105427(n+1)))`
-/

namespace A101577.P13640931099966275709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A103012 (A105427 (n + 1)).toNat)

end

end A101577.P13640931099966275709

/-!
# A101578: Indices of primes in sequence defined by A(0) = 51, A(n) = 10*A(n-1) + 31 for n > 0.

The programs for A101578, there is no canonical definition to state claims against.
-/

/-! ## A101578.P753119417356777781

`A103013(n+2)-1`
-/

namespace A101578.P753119417356777781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103013 (n + 2) - 1

end

end A101578.P753119417356777781

/-! ## A101578.P6181148632949629191

`record[A260196(n)+A103013(n+1)]`
-/

namespace A101578.P6181148632949629191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 n + A103013 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A101578.P6181148632949629191

/-! ## A101578.P7188026899420432957

`A260196(n+2)+A103013(n+2)`
-/

namespace A101578.P7188026899420432957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 (n + 2) + A103013 (n + 2)

end

end A101578.P7188026899420432957

/-! ## A101578.P17545481359006587460

`A106400(A001316(n))+A103013(n+2)`
-/

namespace A101578.P17545481359006587460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106400 (A001316 n).toNat + A103013 (n + 2)

end

end A101578.P17545481359006587460

/-! ## A101578.P4644940672312685401

`A349340(A020639(n+2))+A103013(n+2)`
-/

namespace A101578.P4644940672312685401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349340 (A020639 (n + 2)).toNat + A103013 (n + 2)

end

end A101578.P4644940672312685401

/-!
# A101579: Indices of primes in sequence defined by A(0) = 53, A(n) = 10*A(n-1) + 13 for n > 0.

The programs for A101579, there is no canonical definition to state claims against.
-/

/-! ## A101579.P13822197799752924106

`A103014(n+1)-1`
-/

namespace A101579.P13822197799752924106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103014 (n + 1) - 1

end

end A101579.P13822197799752924106

/-! ## A101579.P14208747187048446283

`record[Δ[A103014(A152271(n))]]`
-/

namespace A101579.P14208747187048446283
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103014 (A152271 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A101579.P14208747187048446283

/-! ## A101579.P13408856646214404284

`record[Δ[A103014(A158416(n))]]`
-/

namespace A101579.P13408856646214404284
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103014 (A158416 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A101579.P13408856646214404284

/-! ## A101579.P8196501302297472000

`record[A103014(A141256(n))-1]`
-/

namespace A101579.P8196501302297472000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103014 (A141256 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A101579.P8196501302297472000

/-! ## A101579.P15979607297396075401

`A308778(n²)+A103014(n+1)`
-/

namespace A101579.P15979607297396075401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308778 (n ^ 2) + A103014 (n + 1)

end

end A101579.P15979607297396075401

/-!
# A101580: Indices of primes in sequence defined by A(0) = 57, A(n) = 10*A(n-1) - 23 for n > 0.

The programs for A101580, there is no canonical definition to state claims against.
-/

/-! ## A101580.P12979728582238879046

`A103015(n+1)-1`
-/

namespace A101580.P12979728582238879046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103015 (n + 1) - 1

end

end A101580.P12979728582238879046

/-! ## A101580.P916276122364874282

`A308778(n²)+A103015(n+1)`
-/

namespace A101580.P916276122364874282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308778 (n ^ 2) + A103015 (n + 1)

end

end A101580.P916276122364874282

/-! ## A101580.P15379298411875283755

`A134824(n+2)+A103015(n+1)`
-/

namespace A101580.P15379298411875283755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134824 (n + 2) + A103015 (n + 1)

end

end A101580.P15379298411875283755

/-! ## A101580.P4642551048307495177

`A153881(n+2)+A103015(n+1)`
-/

namespace A101580.P4642551048307495177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153881 (n + 2) + A103015 (n + 1)

end

end A101580.P4642551048307495177

/-! ## A101580.P13822620773434609382

`A209615(8*n+2)+A103015(n+1)`
-/

namespace A101580.P13822620773434609382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209615 (8 * n + 2) + A103015 (n + 1)

end

end A101580.P13822620773434609382

/-!
# A101581: Indices of primes in sequence defined by A(0) = 59, A(n) = 10*A(n-1) - 41 for n > 0.

The programs for A101581, there is no canonical definition to state claims against.
-/

/-! ## A101581.P17248582454529486225

`A103016(n+1)-1`
-/

namespace A101581.P17248582454529486225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103016 (n + 1) - 1

end

end A101581.P17248582454529486225

/-! ## A101581.P14188459044118828235

`record[Δ[A103016(A152271(n))]]`
-/

namespace A101581.P14188459044118828235
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103016 (A152271 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A101581.P14188459044118828235

/-! ## A101581.P4607341108339640258

`A153881(n+2)+A103016(n+1)`
-/

namespace A101581.P4607341108339640258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153881 (n + 2) + A103016 (n + 1)

end

end A101581.P4607341108339640258

/-! ## A101581.P17505732303061730187

`A001478(n+1)+A103016(n+1)+n`
-/

namespace A101581.P17505732303061730187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001478 (n + 1) + (A103016 (n + 1) + (n : ℤ))

end

end A101581.P17505732303061730187

/-! ## A101581.P5609598903133561410

`A280193(A017281(n))+A103016(n+1)`
-/

namespace A101581.P5609598903133561410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280193 (A017281 n).toNat + A103016 (n + 1)

end

end A101581.P5609598903133561410

/-!
# A101582: Indices of primes in sequence defined by A(0) = 53, A(n) = 10*A(n-1) + 33 for n > 0.

The programs for A101582, there is no canonical definition to state claims against.
-/

/-! ## A101582.P15834179040014416287

`A103017(n+2)-1`
-/

namespace A101582.P15834179040014416287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103017 (n + 2) - 1

end

end A101582.P15834179040014416287

/-! ## A101582.P17055604947443358533

`∑[Δ[A103017(n+1)]%(Δ[n²]^3)]`
-/

namespace A101582.P17055604947443358533
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103017 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (n + 1) - f2 n) (((f3 (n + 1) : ℤ) - (f3 n : ℤ)) ^ 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101582.P17055604947443358533

/-! ## A101582.P7911118046359734115

`Δ[A001478(n+1)+∑[A103017(n+1)]]`
-/

namespace A101582.P7911118046359734115
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103017 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001478 (n + 1) + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A101582.P7911118046359734115

/-! ## A101582.P11026809158041517766

`∑[Δ[A103017(n+1)]*A019428(2*n)]`
-/

namespace A101582.P11026809158041517766
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103017 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) * A019428 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101582.P11026809158041517766

/-! ## A101582.P9712878094535007379

`A110315(2*n+1)+A103017(n+2)+n`
-/

namespace A101582.P9712878094535007379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110315 (2 * n + 1) + (A103017 (n + 2) + (n : ℤ))

end

end A101582.P9712878094535007379

/-!
# A101583: Indices of primes in sequence defined by A(0) = 59, A(n) = 10*A(n-1) - 21 for n > 0.

The programs for A101583, there is no canonical definition to state claims against.
-/

/-! ## A101583.P620891034737990041

`A103018(n+1)-1`
-/

namespace A101583.P620891034737990041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103018 (n + 1) - 1

end

end A101583.P620891034737990041

/-! ## A101583.P2761656912416904047

`record[Δ[A103018(A152271(n))]]`
-/

namespace A101583.P2761656912416904047
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103018 (A152271 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A101583.P2761656912416904047

/-! ## A101583.P2573301521013851031

`A308778(n²)+A103018(n+1)`
-/

namespace A101583.P2573301521013851031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308778 (n ^ 2) + A103018 (n + 1)

end

end A101583.P2573301521013851031

/-! ## A101583.P335691480915036537

`A112467(∑[n+1])+A103018(n+1)`
-/

namespace A101583.P335691480915036537
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112467 (∑ j ∈ Finset.range (n + 1), f1 j) + A103018 (n + 1)

end

end A101583.P335691480915036537

/-! ## A101583.P15312500302951625423

`A262352(2*n+1)+A103018(n+1)`
-/

namespace A101583.P15312500302951625423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262352 (2 * n + 1) + A103018 (n + 1)

end

end A101583.P15312500302951625423

/-!
# A101584: Indices of primes in sequence defined by A(0) = 51, A(n) = 10*A(n-1) + 61 for n > 0.

The programs for A101584, there is no canonical definition to state claims against.
-/

/-! ## A101584.P9260783872078335150

`A103019(n+1)-1`
-/

namespace A101584.P9260783872078335150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103019 (n + 1) - 1

end

end A101584.P9260783872078335150

/-! ## A101584.P5731786864737369066

`record[A103019(A328397(n))-1]`
-/

namespace A101584.P5731786864737369066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103019 (A328397 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A101584.P5731786864737369066

/-! ## A101584.P17754162309427155853

`record[A103019(A349315(n))-1]`
-/

namespace A101584.P17754162309427155853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103019 (A349315 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A101584.P17754162309427155853

/-! ## A101584.P15013196713994372028

`A308778(n²)+A103019(n+1)`
-/

namespace A101584.P15013196713994372028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308778 (n ^ 2) + A103019 (n + 1)

end

end A101584.P15013196713994372028

/-! ## A101584.P7006080753463191748

`A260196(n+2)+A103019(n+1)`
-/

namespace A101584.P7006080753463191748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 (n + 2) + A103019 (n + 1)

end

end A101584.P7006080753463191748

/-!
# A101585: Indices of primes in sequence defined by A(0) = 53, A(n) = 10*A(n-1) + 43 for n > 0.

The programs for A101585, there is no canonical definition to state claims against.
-/

/-! ## A101585.P5599796180099029544

`A103020(n+1)-1`
-/

namespace A101585.P5599796180099029544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103020 (n + 1) - 1

end

end A101585.P5599796180099029544

/-! ## A101585.P8909284294979063780

`record[Δ[A103020(A152271(n))]]`
-/

namespace A101585.P8909284294979063780
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103020 (A152271 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A101585.P8909284294979063780

/-! ## A101585.P11047205176706758055

`A308778(n²)+A103020(n+1)`
-/

namespace A101585.P11047205176706758055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308778 (n ^ 2) + A103020 (n + 1)

end

end A101585.P11047205176706758055

/-! ## A101585.P4694532436423836446

`A134824(n+2)+A103020(n+1)`
-/

namespace A101585.P4694532436423836446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134824 (n + 2) + A103020 (n + 1)

end

end A101585.P4694532436423836446

/-! ## A101585.P16079136772601411494

`A109039(A000079(n))+A103020(n+1)`
-/

namespace A101585.P16079136772601411494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109039 (A000079 n).toNat + A103020 (n + 1)

end

end A101585.P16079136772601411494

/-!
# A101586: Indices of primes in sequence defined by A(0) = 59, A(n) = 10*A(n-1) - 11 for n > 0.

The programs for A101586, there is no canonical definition to state claims against.
-/

/-! ## A101586.P7371468774142685471

`A103021(n+2)-1`
-/

namespace A101586.P7371468774142685471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103021 (n + 2) - 1

end

end A101586.P7371468774142685471

/-! ## A101586.P14492087078753585951

`A260196(n+2)+A103021(n+2)`
-/

namespace A101586.P14492087078753585951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 (n + 2) + A103021 (n + 2)

end

end A101586.P14492087078753585951

/-! ## A101586.P8784523747348352054

`∑[Δ[A103021(n+1)]*A057427(n)]`
-/

namespace A101586.P8784523747348352054
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103021 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) * A057427 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101586.P8784523747348352054

/-! ## A101586.P16608085355957035057

`∑[Δ[A103021(n+1)]%A056263(n+1)]`
-/

namespace A101586.P16608085355957035057
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103021 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (n + 1) - f2 n) (A056263 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101586.P16608085355957035057

/-! ## A101586.P6187693532226181730

`∑[A087156(Δ[A103021(n+1)])]`
-/

namespace A101586.P6187693532226181730
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103021 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087156 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101586.P6187693532226181730

/-!
# A101587: Indices of primes in the sequence defined by A(0) = 51, A(n) = 10*A(n-1) + 71 for n > 0.

The programs for A101587, there is no canonical definition to state claims against.
-/

/-! ## A101587.P18403344776947735374

`A103022(n+1)-1`
-/

namespace A101587.P18403344776947735374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103022 (n + 1) - 1

end

end A101587.P18403344776947735374

/-! ## A101587.P1251558968548379826

`A308778(n²)+A103022(n+1)`
-/

namespace A101587.P1251558968548379826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308778 (n ^ 2) + A103022 (n + 1)

end

end A101587.P1251558968548379826

/-! ## A101587.P13459254996263968006

`A280193(2*n+1)+A103022(n+1)`
-/

namespace A101587.P13459254996263968006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280193 (2 * n + 1) + A103022 (n + 1)

end

end A101587.P13459254996263968006

/-! ## A101587.P16952583017439597028

`A105812(2*(n+2))+A103022(n+1)`
-/

namespace A101587.P16952583017439597028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105812 (2 * (n + 2)) + A103022 (n + 1)

end

end A101587.P16952583017439597028

/-! ## A101587.P10212596170077365879

`A109039(A000079(n))+A103022(n+1)`
-/

namespace A101587.P10212596170077365879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109039 (A000079 n).toNat + A103022 (n + 1)

end

end A101587.P10212596170077365879

/-!
# A101588: Indices of primes in sequence defined by A(0) = 57, A(n) = 10*A(n-1) + 17 for n > 0.

The programs for A101588, there is no canonical definition to state claims against.
-/

/-! ## A101588.P5016490022554921190

`A103023(n+1)-1`
-/

namespace A101588.P5016490022554921190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103023 (n + 1) - 1

end

end A101588.P5016490022554921190

/-! ## A101588.P16795371187564971100

`A321800(n)+A103023(n+1)`
-/

namespace A101588.P16795371187564971100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321800 n + A103023 (n + 1)

end

end A101588.P16795371187564971100

/-! ## A101588.P8679685971775335822

`A321804(n)+A103023(n+1)`
-/

namespace A101588.P8679685971775335822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321804 n + A103023 (n + 1)

end

end A101588.P8679685971775335822

/-! ## A101588.P7173816563829553661

`A109039(A000079(n))+A103023(n+1)`
-/

namespace A101588.P7173816563829553661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109039 (A000079 n).toNat + A103023 (n + 1)

end

end A101588.P7173816563829553661

/-! ## A101588.P17369566635870993044

`A109039(A001316(n))+A103023(n+1)`
-/

namespace A101588.P17369566635870993044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109039 (A001316 n).toNat + A103023 (n + 1)

end

end A101588.P17369566635870993044

/-!
# A101589: Indices of primes in sequence defined by A(0) = 59, A(n) = 10*A(n-1) - 1 for n > 0.

The programs for A101589, there is no canonical definition to state claims against.
-/

/-! ## A101589.P11896000838136985118

`A103024(n+1)-1`
-/

namespace A101589.P11896000838136985118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103024 (n + 1) - 1

end

end A101589.P11896000838136985118

/-! ## A101589.P9636863709400856059

`record[Δ[A103024(A152271(n))]]`
-/

namespace A101589.P9636863709400856059
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103024 (A152271 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A101589.P9636863709400856059

/-! ## A101589.P812046566127808550

`A308778(n²)+A103024(n+1)`
-/

namespace A101589.P812046566127808550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308778 (n ^ 2) + A103024 (n + 1)

end

end A101589.P812046566127808550

/-! ## A101589.P9258532940505318560

`A105812(2*(n+2))+A103024(n+1)`
-/

namespace A101589.P9258532940505318560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105812 (2 * (n + 2)) + A103024 (n + 1)

end

end A101589.P9258532940505318560

/-! ## A101589.P9209929021800935159

`abs(A103024(n+1)+A057428(2*(n+1)))`
-/

namespace A101589.P9209929021800935159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A103024 (n + 1) + A057428 (2 * (n + 1))|

end

end A101589.P9209929021800935159

/-!
# A101590: Indices of primes in the sequence defined by A(0) = 53, A(n) = 10*A(n-1) + 63 for n > 0.

The programs for A101590, there is no canonical definition to state claims against.
-/

/-! ## A101590.P3123220283984447246

`A103025(n+1)-1`
-/

namespace A101590.P3123220283984447246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103025 (n + 1) - 1

end

end A101590.P3123220283984447246

/-! ## A101590.P1682219428037353169

`record[Δ[A103025(A152271(n))]]`
-/

namespace A101590.P1682219428037353169
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103025 (A152271 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A101590.P1682219428037353169

/-! ## A101590.P7427879552049328320

`record[Δ[A103025(A158416(n))]]`
-/

namespace A101590.P7427879552049328320
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103025 (A158416 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A101590.P7427879552049328320

/-! ## A101590.P17621733351724625769

`A308778(n²)+A103025(n+1)`
-/

namespace A101590.P17621733351724625769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308778 (n ^ 2) + A103025 (n + 1)

end

end A101590.P17621733351724625769

/-! ## A101590.P6224350916801605099

`A260196(n+2)+A103025(n+1)`
-/

namespace A101590.P6224350916801605099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 (n + 2) + A103025 (n + 1)

end

end A101590.P6224350916801605099

/-!
# A101591: Indices k >= 8 designating the k-Somos sequences that first become nonintegral at odd-indexed terms (i.e., positions of odd terms in A030127).

The programs for A101591, there is no canonical definition to state claims against.
-/

/-! ## A101591.P9941221409533584170

`record[A057979(A030127(n+8))]`
-/

namespace A101591.P9941221409533584170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (A030127 (n + 8)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A101591.P9941221409533584170

/-! ## A101591.P16715588142452882568

`record[A078898(A030127(n+8)-1)]`
-/

namespace A101591.P16715588142452882568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (A030127 (n + 8) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A101591.P16715588142452882568

/-! ## A101591.P14308525249190373456

`A002265(record[lcm(2, A030127(n+8))])`
-/

namespace A101591.P14308525249190373456
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A030127 (n + 8))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A101591.P14308525249190373456

/-! ## A101591.P5676626920203317524

`A004526(∩[A004442(2*n), A030127(n+8)])`
-/

namespace A101591.P5676626920203317524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030127 (n + 8)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A101591.P5676626920203317524

/-!
# A101592: Smallest and largest of the n-digit primes.

The programs for A101592, there is no canonical definition to state claims against.
-/

/-! ## A101592.P1905157166639343571

`∪[A003617(n+1), A003618(n+1)]`
-/

namespace A101592.P1905157166639343571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003617 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003618 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A101592.P1905157166639343571

/-! ## A101592.P615236393393664200

`∪[A003618(n+1), A139052(Δ[n²])]`
-/

namespace A101592.P615236393393664200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003618 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139052 ((f3 (n + 1) : ℤ) - (f3 n : ℤ)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A101592.P615236393393664200

/-! ## A101592.P10095271026835821720

`∪[A139052(2*n+1), A003618(n+1)]`
-/

namespace A101592.P10095271026835821720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139052 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003618 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A101592.P10095271026835821720

/-! ## A101592.P5236609476250388591

`∪[A139053(3*n+1), A003618(n+1)]`
-/

namespace A101592.P5236609476250388591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139053 (3 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003618 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A101592.P5236609476250388591

/-! ## A101592.P5144559444775080206

`∪[A003618(n+1), A033873(n)+10^n]`
-/

namespace A101592.P5144559444775080206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003618 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033873 n + (10 ^ n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A101592.P5144559444775080206

/-!
# A101593: a(n) is the number of m <= 2^n which are in A075190, i.e., such that m^2 is exactly at the center between two consecutive primes, or in other words A056929(m) = 0.

The programs for A101593, there is no canonical definition to state claims against.
-/

/-! ## A101593.P14542508242993414432

`A018559(A060455(n))+A000982(n)`
-/

namespace A101593.P14542508242993414432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018559 (A060455 n).toNat + A000982 n

end

end A101593.P14542508242993414432

/-! ## A101593.P2674176676788697654

`A105224(A293857(n))+A000093(n)`
-/

namespace A101593.P2674176676788697654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105224 (A293857 n).toNat + A000093 n

end

end A101593.P2674176676788697654

/-! ## A101593.P271638547249273390

`A147810(A306918(n))+A007053(n)`
-/

namespace A101593.P271638547249273390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147810 (A306918 n).toNat + A007053 n

end

end A101593.P271638547249273390

/-! ## A101593.P7503901103419920358

`A138554(floor(A000984(n)/A328399(n)))`
-/

namespace A101593.P7503901103419920358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138554 ⌊(A000984 n : ℚ) / (A328399 n : ℚ)⌋.toNat

end

end A101593.P7503901103419920358

/-!
# A101594: Numbers with exactly two distinct decimal digits, neither of which is 0.

The programs for A101594, the canonical program `A101594.P7821641441831105580` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A101594 has offset 1).

The definition of A101594 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 872 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A101594.P7821641441831105580

`∩[A031955(n+1), A052382(n+1)]`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A101594

/-- `∩[A031955(n+1), A052382(n+1)]` -/
def P7821641441831105580.Spec : Prop :=
  ∀ n, (P7821641441831105580.a n : ℤ) = A101594 (n + 1)

theorem P7821641441831105580.correct : P7821641441831105580.Spec := by
  intro n
  simp only [A101594, Nat.add_sub_cancel]

end A101594

/-! ## A101594.P8910323963677346828

`eq[2, A215887(A227362(n))]`
-/

namespace A101594.P8910323963677346828
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215887 (A227362 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A101594.P8910323963677346828

namespace A101594

/-- `eq[2, A215887(A227362(n))]` -/
def P8910323963677346828.Spec : Prop :=
  ∀ n, (P8910323963677346828.a n : ℤ) = A101594 (n + 1)

end A101594

/-! ## A101594.P14785832381739704769

`eq[5, A160552(A086066(n))]`
-/

namespace A101594.P14785832381739704769
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160552 (A086066 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A101594.P14785832381739704769

namespace A101594

/-- `eq[5, A160552(A086066(n))]` -/
def P14785832381739704769.Spec : Prop :=
  ∀ n, (P14785832381739704769.a n : ℤ) = A101594 (n + 1)

end A101594

/-! ## A101594.P6400007701774053680

`eq[6, A086066(A123895(n))]`
-/

namespace A101594.P6400007701774053680
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086066 (A123895 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A101594.P6400007701774053680

namespace A101594

/-- `eq[6, A086066(A123895(n))]` -/
def P6400007701774053680.Spec : Prop :=
  ∀ n, (P6400007701774053680.a n : ℤ) = A101594 (n + 1)

end A101594

/-! ## A101594.P13299842330784052606

`record[A004719(A031955(n+2))]`
-/

namespace A101594.P13299842330784052606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004719 (A031955 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A101594.P13299842330784052606

namespace A101594

/-- `record[A004719(A031955(n+2))]` -/
def P13299842330784052606.Spec : Prop :=
  ∀ n, P13299842330784052606.a n = A101594 (n + 1)

end A101594

/-! ## A101594.P14806960765225471777

`filter[A031955(n+1), A168046(#)]`
-/

namespace A101594.P14806960765225471777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031955 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168046 (f1 j).toNat = 1) n)

end

end A101594.P14806960765225471777

namespace A101594

/-- `filter[A031955(n+1), A168046(#)]` -/
def P14806960765225471777.Spec : Prop :=
  ∀ n, P14806960765225471777.a n = A101594 (n + 1)

end A101594

/-! ## A101594.P9536355900793114291

`eq[3, A344511(A137564(n))]`
-/

namespace A101594.P9536355900793114291
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344511 (A137564 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A101594.P9536355900793114291

namespace A101594

/-- `eq[3, A344511(A137564(n))]` -/
def P9536355900793114291.Spec : Prop :=
  ∀ n, (P9536355900793114291.a n : ℤ) = A101594 (n + 1)

end A101594

/-! ## A101594.P15325216580663680493

`A001222(A089294(n))*A125290(n+1)`
-/

namespace A101594.P15325216580663680493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A089294 n).toNat * A125290 (n + 1)

end

end A101594.P15325216580663680493

namespace A101594

/-- `A001222(A089294(n))*A125290(n+1)` -/
def P15325216580663680493.Spec : Prop :=
  ∀ n, P15325216580663680493.a n = A101594 (n + 1)

end A101594

/-! ## A101594.P15576228745861535305

`A125290(n+1)%A002189(n)`
-/

namespace A101594.P15576228745861535305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A125290 (n + 1)) (A002189 n)

end

end A101594.P15576228745861535305

namespace A101594

/-- `A125290(n+1)%A002189(n)` -/
def P15576228745861535305.Spec : Prop :=
  ∀ n, P15576228745861535305.a n = A101594 (n + 1)

end A101594

/-! ## A101594.P2077842394601796300

`lcm(A008683(A125294(n+1)), A125290(n+1))`
-/

namespace A101594.P2077842394601796300
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A008683 (A125294 (n + 1)).toNat) (A125290 (n + 1))

end

end A101594.P2077842394601796300

namespace A101594

/-- `lcm(A008683(A125294(n+1)), A125290(n+1))` -/
def P2077842394601796300.Spec : Prop :=
  ∀ n, (P2077842394601796300.a n : ℤ) = A101594 (n + 1)

end A101594

/-!
# A101596: Expansion of g.f. c(2*x)^4, where c(x) is the g.f. of A000108.

The programs for A101596, the canonical program `A101596.P1056686908292103334` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A101596 has offset 0).

The definition of A101596 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 113 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A101596.P1056686908292103334

`2^n*A002057(n)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A101596

/-- `2^n*A002057(n)` -/
def P1056686908292103334.Spec : Prop :=
  ∀ n, P1056686908292103334.a n = A101596 n

theorem P1056686908292103334.correct : P1056686908292103334.Spec := by
  intro n
  simp only [A101596]

end A101596

/-! ## A101596.P15903489826003905222

`A201639(∑[n+1]+1)`
-/

namespace A101596.P15903489826003905222
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201639 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A101596.P15903489826003905222

namespace A101596

/-- `A201639(∑[n+1]+1)` -/
def P15903489826003905222.Spec : Prop :=
  ∀ n, P15903489826003905222.a n = A101596 n

end A101596

/-! ## A101596.P4690286851432326827

`2^n*A099376(n+1)`
-/

namespace A101596.P4690286851432326827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A099376 (n + 1)

end

end A101596.P4690286851432326827

namespace A101596

/-- `2^n*A099376(n+1)` -/
def P4690286851432326827.Spec : Prop :=
  ∀ n, P4690286851432326827.a n = A101596 n

end A101596

/-! ## A101596.P16492448969428066523

`2^n*∑[A071725(n+1)]`
-/

namespace A101596.P16492448969428066523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071725 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A101596.P16492448969428066523

namespace A101596

/-- `2^n*∑[A071725(n+1)]` -/
def P16492448969428066523.Spec : Prop :=
  ∀ n, P16492448969428066523.a n = A101596 n

end A101596

/-! ## A101596.P14538783026665779293

`2^n*Δ[A279557(n+1)]`
-/

namespace A101596.P14538783026665779293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279557 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * (f1 (n + 1) - f1 n)

end

end A101596.P14538783026665779293

namespace A101596

/-- `2^n*Δ[A279557(n+1)]` -/
def P14538783026665779293.Spec : Prop :=
  ∀ n, P14538783026665779293.a n = A101596 n

end A101596

/-! ## A101596.P14597920532017963622

`A002057(n)*A011782(n+1)`
-/

namespace A101596.P14597920532017963622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002057 n * A011782 (n + 1)

end

end A101596.P14597920532017963622

namespace A101596

/-- `A002057(n)*A011782(n+1)` -/
def P14597920532017963622.Spec : Prop :=
  ∀ n, P14597920532017963622.a n = A101596 n

end A101596

/-! ## A101596.P1589121152659906454

`A002057(n)*A016116(2*n)`
-/

namespace A101596.P1589121152659906454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002057 n * A016116 (2 * n)

end

end A101596.P1589121152659906454

namespace A101596

/-- `A002057(n)*A016116(2*n)` -/
def P1589121152659906454.Spec : Prop :=
  ∀ n, P1589121152659906454.a n = A101596 n

end A101596

/-! ## A101596.P9500052477383909463

`A003645(n+1)-A000257(n+2)`
-/

namespace A101596.P9500052477383909463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003645 (n + 1) - A000257 (n + 2)

end

end A101596.P9500052477383909463

namespace A101596

/-- `A003645(n+1)-A000257(n+2)` -/
def P9500052477383909463.Spec : Prop :=
  ∀ n, P9500052477383909463.a n = A101596 n

end A101596

/-! ## A101596.P16001400357947149597

`A069731(n+2)-A003645(n+1)`
-/

namespace A101596.P16001400357947149597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069731 (n + 2) - A003645 (n + 1)

end

end A101596.P16001400357947149597

namespace A101596

/-- `A069731(n+2)-A003645(n+1)` -/
def P16001400357947149597.Spec : Prop :=
  ∀ n, P16001400357947149597.a n = A101596 n

end A101596

/-! ## A101596.P9465660000411551453

`(Δ[A000108(n+2)]-A000108(n+2))*2^n`
-/

namespace A101596.P9465660000411551453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n - A000108 (n + 2)) * (2 ^ n : ℤ)

end

end A101596.P9465660000411551453

namespace A101596

/-- `(Δ[A000108(n+2)]-A000108(n+2))*2^n` -/
def P9465660000411551453.Spec : Prop :=
  ∀ n, P9465660000411551453.a n = A101596 n

end A101596

/-! ## A101596.P10342426426558796800

`A002057(n)/A002420(n)*A098579(n)`
-/

namespace A101596.P10342426426558796800
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002057 n : ℚ) / (A002420 n : ℚ) * (A098579 n : ℚ)

end

end A101596.P10342426426558796800

namespace A101596

/-- `A002057(n)/A002420(n)*A098579(n)` -/
def P10342426426558796800.Spec : Prop :=
  ∀ n, P10342426426558796800.a n = (A101596 n : ℚ)

end A101596

/-!
# A101597: Number of consecutive composite numbers between balanced primes and their lower or upper prime neighbor.

The programs for A101597, there is no canonical definition to state claims against.
-/

/-! ## A101597.P11182507076693268523

`A013632(A006562(n+1))-1`
-/

namespace A101597.P11182507076693268523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013632 (A006562 (n + 1)).toNat - 1

end

end A101597.P11182507076693268523

/-! ## A101597.P2338570119778486200

`A117217(n+1)-1`
-/

namespace A101597.P2338570119778486200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117217 (n + 1) - 1

end

end A101597.P2338570119778486200

/-! ## A101597.P3328876030988408871

`A127229(n+5)%A117217(n+1)`
-/

namespace A101597.P3328876030988408871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A127229 (n + 5)) (A117217 (n + 1))

end

end A101597.P3328876030988408871

/-! ## A101597.P2333390366759547536

`A006562(n+1)-(A122535(n+1)+1)`
-/

namespace A101597.P2333390366759547536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006562 (n + 1) - (A122535 (n + 1) + 1)

end

end A101597.P2333390366759547536

/-! ## A101597.P5533558541090969129

`A181424(n+1)-(A006562(n+1)+1)`
-/

namespace A101597.P5533558541090969129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181424 (n + 1) - (A006562 (n + 1) + 1)

end

end A101597.P5533558541090969129

/-! ## A101597.P13857626887929273150

`A001223(A064113(n+1))-1`
-/

namespace A101597.P13857626887929273150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (A064113 (n + 1)).toNat - 1

end

end A101597.P13857626887929273150

/-! ## A101597.P11502710188635643689

`A001223(A066875(n+1))-1`
-/

namespace A101597.P11502710188635643689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (A066875 (n + 1)).toNat - 1

end

end A101597.P11502710188635643689

/-! ## A101597.P2897437256485006619

`A001223(A173390(n+2))-1`
-/

namespace A101597.P2897437256485006619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (A173390 (n + 2)).toNat - 1

end

end A101597.P2897437256485006619

/-! ## A101597.P14390815845864246843

`A001223(A066491(2*n+1))-1`
-/

namespace A101597.P14390815845864246843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (A066491 (2 * n + 1)).toNat - 1

end

end A101597.P14390815845864246843

/-! ## A101597.P3843726543534505165

`A181424(n+1)-(p?[A225494(n+1)]+1)`
-/

namespace A101597.P3843726543534505165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225494 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181424 (n + 1) - (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 1)

end

end A101597.P3843726543534505165

/-! ## A101597.P11875903920819972446

`p?[A075540(n+1)]-(A122535(n+1)+1)`
-/

namespace A101597.P11875903920819972446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075540 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - (A122535 (n + 1) + 1)

end

end A101597.P11875903920819972446

/-! ## A101597.P3943212428802629943

`A181424(n+1)-(p?[A075540(n+1)]+1)`
-/

namespace A101597.P3943212428802629943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075540 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181424 (n + 1) - (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 1)

end

end A101597.P3943212428802629943

/-! ## A101597.P5084754714810579933

`A058197(n+1)%A117217(n+1)`
-/

namespace A101597.P5084754714810579933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A058197 (n + 1)) (A117217 (n + 1))

end

end A101597.P5084754714810579933

/-! ## A101597.P11900853618223691153

`A046933(A064113(n+1))`
-/

namespace A101597.P11900853618223691153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046933 (A064113 (n + 1)).toNat

end

end A101597.P11900853618223691153

/-! ## A101597.P14616442383337271272

`A046929(A066875(n+1))`
-/

namespace A101597.P14616442383337271272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046929 (A066875 (n + 1)).toNat

end

end A101597.P14616442383337271272

/-! ## A101597.P14519310679320437502

`A046929(A173390(n+2))`
-/

namespace A101597.P14519310679320437502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046929 (A173390 (n + 2)).toNat

end

end A101597.P14519310679320437502

/-! ## A101597.P14278607452715683621

`A054541(A356347(n+1))-1`
-/

namespace A101597.P14278607452715683621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (A356347 (n + 1)).toNat - 1

end

end A101597.P14278607452715683621

/-! ## A101597.P18145167058938389276

`A054541(A064113(n+1)+1)-1`
-/

namespace A101597.P18145167058938389276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (A064113 (n + 1) + 1).toNat - 1

end

end A101597.P18145167058938389276

/-! ## A101597.P14778453092880728940

`A162345(A064113(n+1)+1)-1`
-/

namespace A101597.P14778453092880728940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162345 (A064113 (n + 1) + 1).toNat - 1

end

end A101597.P14778453092880728940

/-! ## A101597.P13558583438357195953

`A052288(A064113(n+1)-1)-1`
-/

namespace A101597.P13558583438357195953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052288 (A064113 (n + 1) - 1).toNat - 1

end

end A101597.P13558583438357195953

/-!
# A101598: Triangle read by rows: T(n,k) = number of distinct digits in decimal representation of binomial(n,k), 0<=k<=n.

The programs for A101598, the canonical program `A101598.P7160477343613944611` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A101598 has offset 0).

The definition of A101598 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A043537, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A101598.P7160477343613944611

`A043537(A007318(n))`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A101598

/-- `A043537(A007318(n))` -/
def P7160477343613944611.Spec : Prop :=
  ∀ n, P7160477343613944611.a n = A101598 n

theorem P7160477343613944611.correct : P7160477343613944611.Spec := by
  intro n
  simp only [A101598]

end A101598

/-! ## A101598.P2844890241053519273

`A043537(A132749(n))`
-/

namespace A101598.P2844890241053519273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043537 (A132749 n).toNat

end

end A101598.P2844890241053519273

namespace A101598

/-- `A043537(A132749(n))` -/
def P2844890241053519273.Spec : Prop :=
  ∀ n, P2844890241053519273.a n = A101598 n

end A101598

/-! ## A101598.P6975079031110866473

`A043537(abs(A108086(n)))`
-/

namespace A101598.P6975079031110866473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043537 |A108086 n|.toNat

end

end A101598.P6975079031110866473

namespace A101598

/-- `A043537(abs(A108086(n)))` -/
def P6975079031110866473.Spec : Prop :=
  ∀ n, P6975079031110866473.a n = A101598 n

end A101598

/-! ## A101598.P870386619403498551

`A043537(abs(A117440(n)))`
-/

namespace A101598.P870386619403498551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043537 |A117440 n|.toNat

end

end A101598.P870386619403498551

namespace A101598

/-- `A043537(abs(A117440(n)))` -/
def P870386619403498551.Spec : Prop :=
  ∀ n, P870386619403498551.a n = A101598 n

end A101598

/-! ## A101598.P12101925213906882990

`A043537(abs(A130595(n)))`
-/

namespace A101598.P12101925213906882990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043537 |A130595 n|.toNat

end

end A101598.P12101925213906882990

namespace A101598

/-- `A043537(abs(A130595(n)))` -/
def P12101925213906882990.Spec : Prop :=
  ∀ n, P12101925213906882990.a n = A101598 n

end A101598

/-! ## A101598.P4373186231836854729

`A043537(sqrt(A008459(n)))`
-/

namespace A101598.P4373186231836854729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043537 (SequenceMachineLib.roundAway (Real.sqrt (A008459 n : ℝ))).toNat

end

end A101598.P4373186231836854729

namespace A101598

/-- `A043537(sqrt(A008459(n)))` -/
def P4373186231836854729.Spec : Prop :=
  ∀ n, P4373186231836854729.a n = A101598 n

end A101598

/-! ## A101598.P16295591089805946224

`A043537(Δ[A102363(n)])`
-/

namespace A101598.P16295591089805946224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043537 (f1 (n + 1) - f1 n).toNat

end

end A101598.P16295591089805946224

namespace A101598

/-- `A043537(Δ[A102363(n)])` -/
def P16295591089805946224.Spec : Prop :=
  ∀ n, P16295591089805946224.a n = A101598 n

end A101598

/-! ## A101598.P10985504297910488801

`A043537(A014473(n)+1)`
-/

namespace A101598.P10985504297910488801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043537 (A014473 n + 1).toNat

end

end A101598.P10985504297910488801

namespace A101598

/-- `A043537(A014473(n)+1)` -/
def P10985504297910488801.Spec : Prop :=
  ∀ n, P10985504297910488801.a n = A101598 n

theorem P10985504297910488801.correct : P10985504297910488801.Spec := by
  intro n
  simp only [A101598, Nat.add_sub_cancel, A101598.P10985504297910488801.a, A101598.P7160477343613944611.a, A007318, A007318.P11755526479805562006.a, A014473, A014473.P9301799580602651200.a, A043537, A043537.P5563663715344268017.f2, A043537.P5563663715344268017.f1, A043537.P5563663715344268017.a, A318442, A318442.P15306764883021255507.a, A318320, A318320.P3093360369618625706.a, A318326, A318326.P16485873540069210944.a, A000010, A000010.P4673923239450215316.a, A051953, A051953.P11179276897610979764.a, A291784, A291784.P16578059245399966389.f1, A291784.P16578059245399966389.a, A318325, A318325.P6590032439412958240.f1, A318325.P6590032439412958240.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A101598

/-! ## A101598.P1161819238360990357

`A043537(A028326(n)/2)`
-/

namespace A101598.P1161819238360990357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043537 (SequenceMachineLib.roundAway ((A028326 n : ℚ) / 2)).toNat

end

end A101598.P1161819238360990357

namespace A101598

/-- `A043537(A028326(n)/2)` -/
def P1161819238360990357.Spec : Prop :=
  ∀ n, P1161819238360990357.a n = A101598 n

end A101598

/-! ## A101598.P1369637220096901180

`A043537(A097805(n)+A071919(n))`
-/

namespace A101598.P1369637220096901180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043537 (A097805 n + A071919 n).toNat

end

end A101598.P1369637220096901180

namespace A101598

/-- `A043537(A097805(n)+A071919(n))` -/
def P1369637220096901180.Spec : Prop :=
  ∀ n, P1369637220096901180.a n = A101598 n

end A101598

/-! ## A101598.P5217707266152873398

`A043537(A013612(n)%A028326(n))`
-/

namespace A101598.P5217707266152873398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043537 (Int.tmod (A013612 n) (A028326 n)).toNat

end

end A101598.P5217707266152873398

namespace A101598

/-- `A043537(A013612(n)%A028326(n))` -/
def P5217707266152873398.Spec : Prop :=
  ∀ n, P5217707266152873398.a n = A101598 n

end A101598

/-!
# A101599: a(n) = binomial coefficient C(m,k) with minimal (m,k) and exactly n distinct digits in decimal representation.

The programs for A101599, there is no canonical definition to state claims against.
-/

/-! ## A101599.P7837182287117230476

`A000027(C(A080590(n+1), A080588(n)))`
-/

namespace A101599.P7837182287117230476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (Nat.choose (A080590 (n + 1)).toNat (A080588 n).toNat)

end

end A101599.P7837182287117230476

/-! ## A101599.P17062398991534237824

`C(A130233(A002315(n)), A087172(2*(n+1)))`
-/

namespace A101599.P17062398991534237824
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A130233 (A002315 n).toNat).toNat (A087172 (2 * (n + 1))).toNat

end

end A101599.P17062398991534237824

