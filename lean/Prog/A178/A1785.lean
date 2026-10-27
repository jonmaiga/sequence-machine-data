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
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A178500: a(n) = 10^n * signum(n).

The programs for A178500, the canonical program `A178500.P10883386734819459730` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A178500 has offset 0).

The definition of A178500 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A178500.P10883386734819459730

`10*a(n-1)` with `a(0)=0, a(1)=10`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A178500

/-- `10*a(n-1)` -/
def P10883386734819459730.Spec : Prop :=
  ∀ n, (P10883386734819459730.a n : ℤ) = A178500 n

theorem P10883386734819459730.correct : P10883386734819459730.Spec := by
  intro n
  simp only [A178500]

end A178500

/-! ## A178500.P5829683100646139682

`10*A178501(n)`
-/

namespace A178500.P5829683100646139682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * A178501 n

end

end A178500.P5829683100646139682

namespace A178500

/-- `10*A178501(n)` -/
def P5829683100646139682.Spec : Prop :=
  ∀ n, P5829683100646139682.a n = A178500 n

end A178500

/-! ## A178500.P2543776272770166715

`A011557(n)*A057427(n)`
-/

namespace A178500.P2543776272770166715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011557 n * A057427 n

end

end A178500.P2543776272770166715

namespace A178500

/-- `A011557(n)*A057427(n)` -/
def P2543776272770166715.Spec : Prop :=
  ∀ n, P2543776272770166715.a n = A178500 n

theorem P2543776272770166715.correct : P2543776272770166715.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A178500, Nat.add_sub_cancel, A178500.P2543776272770166715.a, A178500.P10883386734819459730.a, A011557, A011557.P11220211478167790856.a, A057427, A057427.P3058147525557661423.a, A000007, A000007.P6599383543502402472.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      simp only [A178500, Nat.add_sub_cancel, A178500.P2543776272770166715.a, A178500.P10883386734819459730.a, A011557, A011557.P11220211478167790856.a, A057427, A057427.P3058147525557661423.a, A000007, A000007.P6599383543502402472.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 1 < m + 2 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A178500

/-! ## A178500.P10327050727134713800

`A000533(n)-1`
-/

namespace A178500.P10327050727134713800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000533 n - 1

end

end A178500.P10327050727134713800

namespace A178500

/-- `A000533(n)-1` -/
def P10327050727134713800.Spec : Prop :=
  ∀ n, P10327050727134713800.a n = A178500 n

theorem P10327050727134713800.correct : P10327050727134713800.Spec := by
  intro n
  simp only [A178500, Nat.add_sub_cancel, A178500.P10327050727134713800.a, A178500.P10883386734819459730.a, A000533, A000533.P11203370058495839217.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A178500

/-! ## A178500.P10843759305624061722

`and(10^n, -2)`
-/

namespace A178500.P10843759305624061722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (10 ^ n : ℤ) (-2)

end

end A178500.P10843759305624061722

namespace A178500

/-- `and(10^n, -2)` -/
def P10843759305624061722.Spec : Prop :=
  ∀ n, P10843759305624061722.a n = A178500 n

end A178500

/-! ## A178500.P11986022337423452230

`ogf(10x/(1-10x))`
-/

namespace A178500.P11986022337423452230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 10] [1, -10] n

end

end A178500.P11986022337423452230

namespace A178500

/-- `ogf(10x/(1-10x))` -/
def P11986022337423452230.Spec : Prop :=
  ∀ n, P11986022337423452230.a n = A178500 n

end A178500

/-! ## A178500.P4813332843708845813

`10^n*ceil(tanh(n))`
-/

namespace A178500.P4813332843708845813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (10 ^ n : ℤ) * ⌈Real.tanh (n : ℝ)⌉

end

end A178500.P4813332843708845813

namespace A178500

/-- `10^n*ceil(tanh(n))` -/
def P4813332843708845813.Spec : Prop :=
  ∀ n, P4813332843708845813.a n = A178500 n

end A178500

/-! ## A178500.P3235278408887564071

`10^n-floor(acot(n))`
-/

namespace A178500.P3235278408887564071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (10 ^ n : ℤ) - ⌊SequenceMachineLib.acot (n : ℝ)⌋

end

end A178500.P3235278408887564071

namespace A178500

/-- `10^n-floor(acot(n))` -/
def P3235278408887564071.Spec : Prop :=
  ∀ n, P3235278408887564071.a n = A178500 n

end A178500

/-! ## A178500.P8570097516259218372

`10^n*round(tanh(n))`
-/

namespace A178500.P8570097516259218372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (10 ^ n : ℤ) * SequenceMachineLib.roundAway (Real.tanh (n : ℝ))

end

end A178500.P8570097516259218372

namespace A178500

/-- `10^n*round(tanh(n))` -/
def P8570097516259218372.Spec : Prop :=
  ∀ n, P8570097516259218372.a n = A178500 n

end A178500

/-! ## A178500.P1770450677393622709

`ceil(10^n-acot(n))`
-/

namespace A178500.P1770450677393622709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(10 ^ n : ℝ) - SequenceMachineLib.acot (n : ℝ)⌉

end

end A178500.P1770450677393622709

namespace A178500

/-- `ceil(10^n-acot(n))` -/
def P1770450677393622709.Spec : Prop :=
  ∀ n, P1770450677393622709.a n = A178500 n

end A178500

/-! ## A178500.P3633761826155193718

`2*floor(10^n/2)`
-/

namespace A178500.P3633761826155193718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ⌊(10 ^ n : ℚ) / 2⌋

end

end A178500.P3633761826155193718

namespace A178500

/-- `2*floor(10^n/2)` -/
def P3633761826155193718.Spec : Prop :=
  ∀ n, P3633761826155193718.a n = A178500 n

end A178500

/-! ## A178500.P9630936379250365423

`10^n-C(2, n+2)`
-/

namespace A178500.P9630936379250365423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (10 ^ n : ℤ) - (Nat.choose 2 (n + 2) : ℤ)

end

end A178500.P9630936379250365423

namespace A178500

/-- `10^n-C(2, n+2)` -/
def P9630936379250365423.Spec : Prop :=
  ∀ n, P9630936379250365423.a n = A178500 n

end A178500

/-! ## A178500.P18255217705759623135

`lcm(10^n, 2%(n+2))`
-/

namespace A178500.P18255217705759623135
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (10 ^ n) (2 % (n + 2))

end

end A178500.P18255217705759623135

namespace A178500

/-- `lcm(10^n, 2%(n+2))` -/
def P18255217705759623135.Spec : Prop :=
  ∀ n, (P18255217705759623135.a n : ℤ) = A178500 n

end A178500

/-! ## A178500.P10800859293277475085

`gcd(10, a(n-1))^n` with `a(0)=0`
-/

namespace A178500.P10800859293277475085
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Nat.gcd 10 (a (n - 1)) ^ n

end

end A178500.P10800859293277475085

namespace A178500

/-- `gcd(10, a(n-1))^n` -/
def P10800859293277475085.Spec : Prop :=
  ∀ n, (P10800859293277475085.a n : ℤ) = A178500 n

end A178500

/-! ## A178500.P13527508811554815343

`xor(10^n, C(2, n+2))`
-/

namespace A178500.P13527508811554815343
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor (10 ^ n) (Nat.choose 2 (n + 2))

end

end A178500.P13527508811554815343

namespace A178500

/-- `xor(10^n, C(2, n+2))` -/
def P13527508811554815343.Spec : Prop :=
  ∀ n, (P13527508811554815343.a n : ℤ) = A178500 n

end A178500

/-! ## A178500.P1437502514675610107

`floor(tanh(n-1))+10^n`
-/

namespace A178500.P1437502514675610107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.tanh ((n : ℤ) - 1 : ℝ)⌋ + (10 ^ n : ℤ)

end

end A178500.P1437502514675610107

namespace A178500

/-- `floor(tanh(n-1))+10^n` -/
def P1437502514675610107.Spec : Prop :=
  ∀ n, P1437502514675610107.a n = A178500 n

end A178500

/-! ## A178500.P7283428536550575269

`round(10^n-acot(n+1))`
-/

namespace A178500.P7283428536550575269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((10 ^ n : ℝ) - SequenceMachineLib.acot (n + 1 : ℝ))

end

end A178500.P7283428536550575269

namespace A178500

/-- `round(10^n-acot(n+1))` -/
def P7283428536550575269.Spec : Prop :=
  ∀ n, P7283428536550575269.a n = A178500 n

end A178500

/-! ## A178500.P11396355587524926859

`10^(n%a(n-1))` with `a(0)=0, a(1)=10`
-/

namespace A178500.P11396355587524926859
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 10] fun n a =>
  10 ^ (n % a (n - 1))

end

end A178500.P11396355587524926859

namespace A178500

/-- `10^(n%a(n-1))` -/
def P11396355587524926859.Spec : Prop :=
  ∀ n, (P11396355587524926859.a n : ℤ) = A178500 n

end A178500

/-! ## A178500.P1303302787822411066

`10^n^dr(a(n-1))` with `a(0)=0`
-/

namespace A178500.P1303302787822411066
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  10 ^ n ^ SequenceMachineLib.digitalRoot (a (n - 1) : ℤ)

end

end A178500.P1303302787822411066

namespace A178500

/-- `10^n^dr(a(n-1))` -/
def P1303302787822411066.Spec : Prop :=
  ∀ n, (P1303302787822411066.a n : ℤ) = A178500 n

end A178500

/-! ## A178500.P7753023001155899541

`∑{d}[n, A218127(#)]`
-/

namespace A178500.P7753023001155899541
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A218127 d

end

end A178500.P7753023001155899541

namespace A178500

/-- `∑{d}[n, A218127(#)]` -/
def P7753023001155899541.Spec : Prop :=
  ∀ n, P7753023001155899541.a n = A178500 n

end A178500

/-!
# A178501: Zero followed by powers of ten.

The programs for A178501, the canonical program `A178501.P17615775985067343271` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A178501 has offset 0).

The definition of A178501 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A178501.P17615775985067343271

`10*a(n-1)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A178501

/-- `10*a(n-1)` -/
def P17615775985067343271.Spec : Prop :=
  ∀ n, (P17615775985067343271.a n : ℤ) = A178501 n

theorem P17615775985067343271.correct : P17615775985067343271.Spec := by
  intro n
  simp only [A178501]

end A178501

/-! ## A178501.P10816442296413392157

`A178500(n)/10`
-/

namespace A178501.P10816442296413392157
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A178500 n : ℚ) / 10

end

end A178501.P10816442296413392157

namespace A178501

/-- `A178500(n)/10` -/
def P10816442296413392157.Spec : Prop :=
  ∀ n, P10816442296413392157.a n = (A178501 n : ℚ)

end A178501

/-! ## A178501.P5636048901638971901

`floor(10^(n-1))`
-/

namespace A178501.P5636048901638971901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(10 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

end

end A178501.P5636048901638971901

namespace A178501

/-- `floor(10^(n-1))` -/
def P5636048901638971901.Spec : Prop :=
  ∀ n, P5636048901638971901.a n = A178501 n

end A178501

/-! ## A178501.P5238985725071266948

`ogf(x/(1-10x))`
-/

namespace A178501.P5238985725071266948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1] [1, -10] n

end

end A178501.P5238985725071266948

namespace A178501

/-- `ogf(x/(1-10x))` -/
def P5238985725071266948.Spec : Prop :=
  ∀ n, P5238985725071266948.a n = A178501 n

end A178501

/-! ## A178501.P1061264127676368143

`ceil(cos(2)+10^(n-1))`
-/

namespace A178501.P1061264127676368143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.cos (2 : ℝ) + ((10 : ℚ) ^ ((n : ℤ) - 1 : ℤ) : ℝ)⌉

end

end A178501.P1061264127676368143

namespace A178501

/-- `ceil(cos(2)+10^(n-1))` -/
def P1061264127676368143.Spec : Prop :=
  ∀ n, P1061264127676368143.a n = A178501 n

end A178501

/-! ## A178501.P7561303709948999713

`ceil(10^(n-1)-cos(1))`
-/

namespace A178501.P7561303709948999713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((10 : ℚ) ^ ((n : ℤ) - 1 : ℤ) : ℝ) - Real.cos (1 : ℝ)⌉

end

end A178501.P7561303709948999713

namespace A178501

/-- `ceil(10^(n-1)-cos(1))` -/
def P7561303709948999713.Spec : Prop :=
  ∀ n, P7561303709948999713.a n = A178501 n

end A178501

/-! ## A178501.P17742046817450419113

`round(cos(2)+10^(n-1))`
-/

namespace A178501.P17742046817450419113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.cos (2 : ℝ) + ((10 : ℚ) ^ ((n : ℤ) - 1 : ℤ) : ℝ))

end

end A178501.P17742046817450419113

namespace A178501

/-- `round(cos(2)+10^(n-1))` -/
def P17742046817450419113.Spec : Prop :=
  ∀ n, P17742046817450419113.a n = A178501 n

end A178501

/-! ## A178501.P1828091686945870993

`ceil(10^(n-1)-sin(1))`
-/

namespace A178501.P1828091686945870993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((10 : ℚ) ^ ((n : ℤ) - 1 : ℤ) : ℝ) - Real.sin (1 : ℝ)⌉

end

end A178501.P1828091686945870993

namespace A178501

/-- `ceil(10^(n-1)-sin(1))` -/
def P1828091686945870993.Spec : Prop :=
  ∀ n, P1828091686945870993.a n = A178501 n

end A178501

/-! ## A178501.P10450200448532547358

`ceil(tan(3)+10^(n-1))`
-/

namespace A178501.P10450200448532547358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.tan (3 : ℝ) + ((10 : ℚ) ^ ((n : ℤ) - 1 : ℤ) : ℝ)⌉

end

end A178501.P10450200448532547358

namespace A178501

/-- `ceil(tan(3)+10^(n-1))` -/
def P10450200448532547358.Spec : Prop :=
  ∀ n, P10450200448532547358.a n = A178501 n

end A178501

/-! ## A178501.P11613158940775495573

`round(tan(3)+10^(n-1))`
-/

namespace A178501.P11613158940775495573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.tan (3 : ℝ) + ((10 : ℚ) ^ ((n : ℤ) - 1 : ℤ) : ℝ))

end

end A178501.P11613158940775495573

namespace A178501

/-- `round(tan(3)+10^(n-1))` -/
def P11613158940775495573.Spec : Prop :=
  ∀ n, P11613158940775495573.a n = A178501 n

end A178501

/-! ## A178501.P14826898506726217134

`round(10^(n-1)-sin(3))`
-/

namespace A178501.P14826898506726217134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((10 : ℚ) ^ ((n : ℤ) - 1 : ℤ) : ℝ) - Real.sin (3 : ℝ))

end

end A178501.P14826898506726217134

namespace A178501

/-- `round(10^(n-1)-sin(3))` -/
def P14826898506726217134.Spec : Prop :=
  ∀ n, P14826898506726217134.a n = A178501 n

end A178501

/-! ## A178501.P7555538574129206455

`ceil(10^(n-1)-atan(1))`
-/

namespace A178501.P7555538574129206455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((10 : ℚ) ^ ((n : ℤ) - 1 : ℤ) : ℝ) - Real.arctan (1 : ℝ)⌉

end

end A178501.P7555538574129206455

namespace A178501

/-- `ceil(10^(n-1)-atan(1))` -/
def P7555538574129206455.Spec : Prop :=
  ∀ n, P7555538574129206455.a n = A178501 n

end A178501

/-! ## A178501.P5800466911979264004

`round(10^(n-1)-cos(5))`
-/

namespace A178501.P5800466911979264004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((10 : ℚ) ^ ((n : ℤ) - 1 : ℤ) : ℝ) - Real.cos (5 : ℝ))

end

end A178501.P5800466911979264004

namespace A178501

/-- `round(10^(n-1)-cos(5))` -/
def P5800466911979264004.Spec : Prop :=
  ∀ n, P5800466911979264004.a n = A178501 n

end A178501

/-! ## A178501.P9742057575399227466

`ceil(10^(n-1)-tanh(1))`
-/

namespace A178501.P9742057575399227466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((10 : ℚ) ^ ((n : ℤ) - 1 : ℤ) : ℝ) - Real.tanh (1 : ℝ)⌉

end

end A178501.P9742057575399227466

namespace A178501

/-- `ceil(10^(n-1)-tanh(1))` -/
def P9742057575399227466.Spec : Prop :=
  ∀ n, P9742057575399227466.a n = A178501 n

end A178501

/-! ## A178501.P876845559615178517

`ceil(10^(n-1)-tan(7))`
-/

namespace A178501.P876845559615178517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((10 : ℚ) ^ ((n : ℤ) - 1 : ℤ) : ℝ) - Real.tan (7 : ℝ)⌉

end

end A178501.P876845559615178517

namespace A178501

/-- `ceil(10^(n-1)-tan(7))` -/
def P876845559615178517.Spec : Prop :=
  ∀ n, P876845559615178517.a n = A178501 n

end A178501

/-! ## A178501.P16055780418063047761

`ceil(cot(2)+10^(n-1))`
-/

namespace A178501.P16055780418063047761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.cot (2 : ℝ) + ((10 : ℚ) ^ ((n : ℤ) - 1 : ℤ) : ℝ)⌉

end

end A178501.P16055780418063047761

namespace A178501

/-- `ceil(cot(2)+10^(n-1))` -/
def P16055780418063047761.Spec : Prop :=
  ∀ n, P16055780418063047761.a n = A178501 n

end A178501

/-! ## A178501.P9672903782620226118

`ceil(10^(n-1)-cot(1))`
-/

namespace A178501.P9672903782620226118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((10 : ℚ) ^ ((n : ℤ) - 1 : ℤ) : ℝ) - Real.cot (1 : ℝ)⌉

end

end A178501.P9672903782620226118

namespace A178501

/-- `ceil(10^(n-1)-cot(1))` -/
def P9672903782620226118.Spec : Prop :=
  ∀ n, P9672903782620226118.a n = A178501 n

end A178501

/-! ## A178501.P13706600975018108158

`round(cot(2)+10^(n-1))`
-/

namespace A178501.P13706600975018108158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.cot (2 : ℝ) + ((10 : ℚ) ^ ((n : ℤ) - 1 : ℤ) : ℝ))

end

end A178501.P13706600975018108158

namespace A178501

/-- `round(cot(2)+10^(n-1))` -/
def P13706600975018108158.Spec : Prop :=
  ∀ n, P13706600975018108158.a n = A178501 n

end A178501

/-! ## A178501.P13131333655673896891

`ceil(10^(n-1)-acot(1))`
-/

namespace A178501.P13131333655673896891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((10 : ℚ) ^ ((n : ℤ) - 1 : ℤ) : ℝ) - SequenceMachineLib.acot (1 : ℝ)⌉

end

end A178501.P13131333655673896891

namespace A178501

/-- `ceil(10^(n-1)-acot(1))` -/
def P13131333655673896891.Spec : Prop :=
  ∀ n, P13131333655673896891.a n = A178501 n

end A178501

/-! ## A178501.P17720080198226029529

`and(-n, 10^abs(1-n))`
-/

namespace A178501.P17720080198226029529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-(n : ℤ)) (SequenceMachineLib.roundAway ((10 : ℚ) ^ (|1 - (n : ℤ)| : ℤ)))

end

end A178501.P17720080198226029529

namespace A178501

/-- `and(-n, 10^abs(1-n))` -/
def P17720080198226029529.Spec : Prop :=
  ∀ n, P17720080198226029529.a n = A178501 n

end A178501

/-!
# A178502: Numbers n such that prime(n) modulo n is less than n/2.

The programs for A178502, there is no canonical definition to state claims against.
-/

/-! ## A178502.P4610653281060689199

`lt[A082899(n+1), 1]+1`
-/

namespace A178502.P4610653281060689199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082899 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A178502.P4610653281060689199

/-! ## A178502.P7627557474913045701

`lt[2*A004648(n+1), n+1]+1`
-/

namespace A178502.P7627557474913045701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A004648 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A178502.P7627557474913045701

/-! ## A178502.P12364013466284347895

`lt[A000040(n+1)%(n+1), (n+1)/2]+1`
-/

namespace A178502.P12364013466284347895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1)) (n + 1 : ℤ)

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n + 1

end

end A178502.P12364013466284347895

/-! ## A178502.P14893516464638285696

`lt[2*A004648(A028310(n)), n]`
-/

namespace A178502.P14893516464638285696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A004648 (A028310 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A178502.P14893516464638285696

/-! ## A178502.P16117474034075369946

`lt[A004648(n+1), A008619(n)]+1`
-/

namespace A178502.P16117474034075369946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004648 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A178502.P16117474034075369946

/-! ## A178502.P5932095251945824416

`lt[A001747(n+1)%A004277(n), n]`
-/

namespace A178502.P5932095251945824416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001747 (n + 1)) (A004277 n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A178502.P5932095251945824416

/-! ## A178502.P6837242906179798445

`comp[A082899(n+1)+A004648(n+1)]`
-/

namespace A178502.P6837242906179798445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082899 (n + 1) + A004648 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A178502.P6837242906179798445

/-! ## A178502.P5742332599064325919

`eq[A038605(n+1), A079416(n+1)]+1`
-/

namespace A178502.P5742332599064325919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038605 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079416 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A178502.P5742332599064325919

/-! ## A178502.P4226985588418901101

`lt[A004648(A028310(n)), A123108(n+1)]`
-/

namespace A178502.P4226985588418901101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004648 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A178502.P4226985588418901101

/-! ## A178502.P8043224626008580098

`lt[A004648(A123108(2*n)), A123108(n+1)]`
-/

namespace A178502.P8043224626008580098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004648 (A123108 (2 * n)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A178502.P8043224626008580098

/-!
# A178503: n minus totally additive with a(p) = PrimePi(p), where PrimePi = A000720.

The programs for A178503, the canonical program `A178503.P4821530667985743072` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A178503 has offset 1).

The definition of A178503 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056239, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A178503.P4821530667985743072

`n+1-A056239(n+1)`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A178503

/-- `n+1-A056239(n+1)` -/
def P4821530667985743072.Spec : Prop :=
  ∀ n, P4821530667985743072.a n = A178503 (n + 1)

theorem P4821530667985743072.correct : P4821530667985743072.Spec := by
  intro n
  simp only [A178503, Nat.add_sub_cancel]

end A178503

/-! ## A178503.P8838149379510122302

`2*(n+1)-A380345(n+1)`
-/

namespace A178503.P8838149379510122302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - A380345 (n + 1)

end

end A178503.P8838149379510122302

namespace A178503

/-- `2*(n+1)-A380345(n+1)` -/
def P8838149379510122302.Spec : Prop :=
  ∀ n, P8838149379510122302.a n = A178503 (n + 1)

theorem P8838149379510122302.correct : P8838149379510122302.Spec := by
  intro n
  simp only [A178503, Nat.add_sub_cancel, A178503.P8838149379510122302.a, A178503.P4821530667985743072.a, A056239, A056239.P11316688788989965672.a, A380345, A380345.P3416860299638001481.a, A156552, A156552.P4268073137713085227.a, A161511, A161511.P16266007976091900386.a, A005941, A005941.P9595689460679922607.f1, A005941.P9595689460679922607.a, A048896, A048896.P6461019053085857547.a, A048881, A048881.P16567064232951496228.a, A364557, A364557.P16113127302810243144.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A178503

/-! ## A178503.P13446141643783333202

`2-A316436(2*(n+1))+n`
-/

namespace A178503.P13446141643783333202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A316436 (2 * (n + 1)) + (n : ℤ)

end

end A178503.P13446141643783333202

namespace A178503

/-- `2-A316436(2*(n+1))+n` -/
def P13446141643783333202.Spec : Prop :=
  ∀ n, P13446141643783333202.a n = A178503 (n + 1)

end A178503

/-! ## A178503.P2320260920254155969

`n+2-A316436(n+2+n)`
-/

namespace A178503.P2320260920254155969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) - A316436 (n + 2 + n)

end

end A178503.P2320260920254155969

namespace A178503

/-- `n+2-A316436(n+2+n)` -/
def P2320260920254155969.Spec : Prop :=
  ∀ n, P2320260920254155969.a n = A178503 (n + 1)

end A178503

/-! ## A178503.P3336266469525726385

`1-(A056239(n-log2(1/2))-n)`
-/

namespace A178503.P3336266469525726385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A056239 (SequenceMachineLib.roundAway ((n : ℝ) - Real.logb 2 ((1 : ℚ) / 2 : ℝ))).toNat - (n : ℤ))

end

end A178503.P3336266469525726385

namespace A178503

/-- `1-(A056239(n-log2(1/2))-n)` -/
def P3336266469525726385.Spec : Prop :=
  ∀ n, P3336266469525726385.a n = A178503 (n + 1)

end A178503

/-! ## A178503.P10581304305461781211

`A024000(A056239(n+1))+n`
-/

namespace A178503.P10581304305461781211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024000 (A056239 (n + 1)).toNat + (n : ℤ)

end

end A178503.P10581304305461781211

namespace A178503

/-- `A024000(A056239(n+1))+n` -/
def P10581304305461781211.Spec : Prop :=
  ∀ n, P10581304305461781211.a n = A178503 (n + 1)

end A178503

/-! ## A178503.P11345800693654410174

`A325794(n+1)+A049820(n+1)`
-/

namespace A178503.P11345800693654410174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325794 (n + 1) + A049820 (n + 1)

end

end A178503.P11345800693654410174

namespace A178503

/-- `A325794(n+1)+A049820(n+1)` -/
def P11345800693654410174.Spec : Prop :=
  ∀ n, P11345800693654410174.a n = A178503 (n + 1)

theorem P11345800693654410174.correct : P11345800693654410174.Spec := by
  intro n
  simp only [A178503, Nat.add_sub_cancel, A178503.P11345800693654410174.a, A178503.P4821530667985743072.a, A049820, A049820.P9428372222244335888.a, A056239, A056239.P11316688788989965672.a, A325794, A325794.P1593222624152160603.a, A000005, A000005.P16091521709108585461.a, A156552, A156552.P4268073137713085227.a, A161511, A161511.P16266007976091900386.a, A005941, A005941.P9595689460679922607.f1, A005941.P9595689460679922607.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, A048896, A048896.P6461019053085857547.a, A048881, A048881.P16567064232951496228.a, A364557, A364557.P16113127302810243144.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A178503

/-! ## A178503.P6756682427208077744

`A331415(n+1)+A075255(n+1)`
-/

namespace A178503.P6756682427208077744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331415 (n + 1) + A075255 (n + 1)

end

end A178503.P6756682427208077744

namespace A178503

/-- `A331415(n+1)+A075255(n+1)` -/
def P6756682427208077744.Spec : Prop :=
  ∀ n, P6756682427208077744.a n = A178503 (n + 1)

theorem P6756682427208077744.correct : P6756682427208077744.Spec := by
  intro n
  simp only [A178503, Nat.add_sub_cancel, A178503.P6756682427208077744.a, A178503.P4821530667985743072.a, A056239, A056239.P11316688788989965672.a, A075255, A075255.P12137973761347593222.a, A331415, A331415.P4846081659728035053.a, A001414, A001414.P8293929508439252105.f1, A001414.P8293929508439252105.a, A156552, A156552.P4268073137713085227.a, A161511, A161511.P16266007976091900386.a, A005941, A005941.P9595689460679922607.f1, A005941.P9595689460679922607.a, A048896, A048896.P6461019053085857547.a, A048881, A048881.P16567064232951496228.a, A364557, A364557.P16113127302810243144.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A178503

/-! ## A178503.P4140877579385733123

`n+1-(A318995(n+1)+A001222(n+1))`
-/

namespace A178503.P4140877579385733123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - (A318995 (n + 1) + A001222 (n + 1))

end

end A178503.P4140877579385733123

namespace A178503

/-- `n+1-(A318995(n+1)+A001222(n+1))` -/
def P4140877579385733123.Spec : Prop :=
  ∀ n, P4140877579385733123.a n = A178503 (n + 1)

end A178503

/-! ## A178503.P14763870018168089210

`1-log2(A248692(n+1))+n`
-/

namespace A178503.P14763870018168089210
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  1 - Real.logb 2 (A248692 (n + 1) : ℝ) + (n : ℝ)

end

end A178503.P14763870018168089210

namespace A178503

/-- `1-log2(A248692(n+1))+n` -/
def P14763870018168089210.Spec : Prop :=
  ∀ n, P14763870018168089210.a n = (A178503 (n + 1) : ℝ)

end A178503

/-! ## A178503.P9238958470263512723

`n+1-A325033(A000040(n+1))`
-/

namespace A178503.P9238958470263512723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A325033 (A000040 (n + 1)).toNat

end

end A178503.P9238958470263512723

namespace A178503

/-- `n+1-A325033(A000040(n+1))` -/
def P9238958470263512723.Spec : Prop :=
  ∀ n, P9238958470263512723.a n = A178503 (n + 1)

end A178503

/-! ## A178503.P2357193622884513898

`n+1-floor(log2(A233249(2*(n+1))))`
-/

namespace A178503.P2357193622884513898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - (Nat.log 2 (A233249 (2 * (n + 1))).toNat : ℤ)

end

end A178503.P2357193622884513898

namespace A178503

/-- `n+1-floor(log2(A233249(2*(n+1))))` -/
def P2357193622884513898.Spec : Prop :=
  ∀ n, P2357193622884513898.a n = A178503 (n + 1)

end A178503

/-! ## A178503.P1766879282844124145

`n+1-A346698(A129597(n+1))`
-/

namespace A178503.P1766879282844124145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A346698 (A129597 (n + 1)).toNat

end

end A178503.P1766879282844124145

namespace A178503

/-- `n+1-A346698(A129597(n+1))` -/
def P1766879282844124145.Spec : Prop :=
  ∀ n, P1766879282844124145.a n = A178503 (n + 1)

end A178503

/-! ## A178503.P28343796179898310

`1-A346698((n+1)²)+n`
-/

namespace A178503.P28343796179898310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A346698 ((n + 1) ^ 2) + (n : ℤ)

end

end A178503.P28343796179898310

namespace A178503

/-- `1-A346698((n+1)²)+n` -/
def P28343796179898310.Spec : Prop :=
  ∀ n, P28343796179898310.a n = A178503 (n + 1)

end A178503

/-! ## A178503.P6080245377707879909

`n+1-A346698(∑[2*n+1])`
-/

namespace A178503.P6080245377707879909
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A346698 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A178503.P6080245377707879909

namespace A178503

/-- `n+1-A346698(∑[2*n+1])` -/
def P6080245377707879909.Spec : Prop :=
  ∀ n, P6080245377707879909.a n = A178503 (n + 1)

end A178503

/-! ## A178503.P12074776120688588499

`1-A346700((n+1)²)+n`
-/

namespace A178503.P12074776120688588499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A346700 ((n + 1) ^ 2) + (n : ℤ)

end

end A178503.P12074776120688588499

namespace A178503

/-- `1-A346700((n+1)²)+n` -/
def P12074776120688588499.Spec : Prop :=
  ∀ n, P12074776120688588499.a n = A178503 (n + 1)

end A178503

/-! ## A178503.P13899144327016747189

`n+1-A346700(∑[2*n+1])`
-/

namespace A178503.P13899144327016747189
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A346700 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A178503.P13899144327016747189

namespace A178503

/-- `n+1-A346700(∑[2*n+1])` -/
def P13899144327016747189.Spec : Prop :=
  ∀ n, P13899144327016747189.a n = A178503 (n + 1)

end A178503

/-!
# A178505: Decimal form of the period of 1/n for n such that gcd(n,10)=1. Leading zeros are suppressed.

The programs for A178505, there is no canonical definition to state claims against.
-/

/-! ## A178505.P7651532859790257178

`A060284(A045572(n+2))`
-/

namespace A178505.P7651532859790257178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060284 (A045572 (n + 2)).toNat

end

end A178505.P7651532859790257178

/-! ## A178505.P14951493154653315190

`A002283(A002329(n+2))/A045572(n+2)`
-/

namespace A178505.P14951493154653315190
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002283 (A002329 (n + 2)).toNat : ℚ) / (A045572 (n + 2) : ℚ)

end

end A178505.P14951493154653315190

/-!
# A178506: Lesser of a "near cube" twin prime pair (k^3 - 4, k^3 - 2).

The programs for A178506, there is no canonical definition to state claims against.
-/

/-! ## A178506.P4535148021890088329

`A178507(n+1)^3-4`
-/

namespace A178506.P4535148021890088329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178507 (n + 1) ^ 3 - 4

end

end A178506.P4535148021890088329

/-! ## A178506.P2724163127883747704

`A000578(A178507(n+1))-4`
-/

namespace A178506.P2724163127883747704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (A178507 (n + 1)).toNat - 4

end

end A178506.P2724163127883747704

/-!
# A178507: Numbers n that (n^3 - 4,n^3 - 2) is a twin prime pair.

The programs for A178507, there is no canonical definition to state claims against.
-/

/-! ## A178507.P5808090477527250754

`ceil(root(A178506(n+1), 3))`
-/

namespace A178507.P5808090477527250754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A178506 (n + 1) : ℝ) ^ (1 / (3 : ℝ))⌉

end

end A178507.P5808090477527250754

/-! ## A178507.P6618369806077318775

`A033999(n)²*round(root(A178506(n+1), 3))`
-/

namespace A178507.P6618369806077318775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n ^ 2 * SequenceMachineLib.roundAway ((A178506 (n + 1) : ℝ) ^ (1 / (3 : ℝ)))

end

end A178507.P6618369806077318775

/-! ## A178507.P8465188827677535568

`A057077(n)²*round(root(A178506(n+1), 3))`
-/

namespace A178507.P8465188827677535568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 n ^ 2 * SequenceMachineLib.roundAway ((A178506 (n + 1) : ℝ) ^ (1 / (3 : ℝ)))

end

end A178507.P8465188827677535568

/-! ## A178507.P14717692977015133767

`floor(root(A178506(n+1), 3)+A040001(n)/2)`
-/

namespace A178507.P14717692977015133767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A178506 (n + 1) : ℝ) ^ (1 / (3 : ℝ)) + ((A040001 n : ℚ) / 2 : ℝ)⌋

end

end A178507.P14717692977015133767

/-! ## A178507.P14819774743384513371

`A000007(n+1)+round(root(A178506(n+1), 3))`
-/

namespace A178507.P14819774743384513371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) + SequenceMachineLib.roundAway ((A178506 (n + 1) : ℝ) ^ (1 / (3 : ℝ)))

end

end A178507.P14819774743384513371

/-! ## A178507.P8317067630151923104

`A142150(2*n+1)+round(root(A178506(n+1), 3))`
-/

namespace A178507.P8317067630151923104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (2 * n + 1) + SequenceMachineLib.roundAway ((A178506 (n + 1) : ℝ) ^ (1 / (3 : ℝ)))

end

end A178507.P8317067630151923104

/-! ## A178507.P7026177395156921979

`A000034(2*n+1)+round(root(A178506(n+1), 3))-2`
-/

namespace A178507.P7026177395156921979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (2 * n + 1) + (SequenceMachineLib.roundAway ((A178506 (n + 1) : ℝ) ^ (1 / (3 : ℝ))) - 2)

end

end A178507.P7026177395156921979

/-! ## A178507.P8719741613265114288

`round(root(A178506(n+1), 3))%A017462(3*n)`
-/

namespace A178507.P8719741613265114288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A178506 (n + 1) : ℝ) ^ (1 / (3 : ℝ)))) (A017462 (3 * n))

end

end A178507.P8719741613265114288

/-! ## A178507.P6140247357165654711

`A014963(4*n+2)^n*round(root(A178506(n+1), 3))`
-/

namespace A178507.P6140247357165654711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (4 * n + 2) ^ n * SequenceMachineLib.roundAway ((A178506 (n + 1) : ℝ) ^ (1 / (3 : ℝ)))

end

end A178507.P6140247357165654711

/-! ## A178507.P8353019517532117545

`floor(A014963(6*(n+1))+root(A178506(n+1), 3))`
-/

namespace A178507.P8353019517532117545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A014963 (6 * (n + 1)) : ℝ) + (A178506 (n + 1) : ℝ) ^ (1 / (3 : ℝ))⌋

end

end A178507.P8353019517532117545

/-! ## A178507.P4305369141740686913

`A000027(round(root(A178506(n+1), 3)))`
-/

namespace A178507.P4305369141740686913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.roundAway ((A178506 (n + 1) : ℝ) ^ (1 / (3 : ℝ)))).toNat

end

end A178507.P4305369141740686913

/-! ## A178507.P10518339620883282153

`floor(A066400((n+1)²)+root(A178506(n+1), 3))`
-/

namespace A178507.P10518339620883282153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A066400 ((n + 1) ^ 2) : ℝ) + (A178506 (n + 1) : ℝ) ^ (1 / (3 : ℝ))⌋

end

end A178507.P10518339620883282153

/-!
# A178510: a(n+1) = a(n)*100 + 21^n, with a(1)=1.

The programs for A178510, the canonical program `A178510.P11002761650465964243` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A178510 has offset 1).

The definition of A178510 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A178510.P11002761650465964243

`100*a(n-1)+21^n` with `a(0)=1`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A178510

/-- `100*a(n-1)+21^n` -/
def P11002761650465964243.Spec : Prop :=
  ∀ n, (P11002761650465964243.a n : ℤ) = A178510 (n + 1)

theorem P11002761650465964243.correct : P11002761650465964243.Spec := by
  intro n
  simp only [A178510, Nat.add_sub_cancel]

end A178510

/-! ## A178510.P2786000013734455597

`(100^(n+1)-21^(n+1))/79`
-/

namespace A178510.P2786000013734455597
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((100 ^ (n + 1) : ℤ) - (21 ^ (n + 1) : ℤ) : ℚ) / 79

end

end A178510.P2786000013734455597

namespace A178510

/-- `(100^(n+1)-21^(n+1))/79` -/
def P2786000013734455597.Spec : Prop :=
  ∀ n, P2786000013734455597.a n = (A178510 (n + 1) : ℚ)

theorem P2786000013734455597.correct : P2786000013734455597.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A178510, Nat.add_sub_cancel, A178510.P2786000013734455597.a, A178510.P11002761650465964243.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A178510, Nat.add_sub_cancel, A178510.P2786000013734455597.a, A178510.P11002761650465964243.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A178510

/-!
# A178511: a(n) = (1/119)*(100^n - (-19)^n).

The programs for A178511, the canonical program `A178511.P5882585623886558827` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A178511 has offset 1).

The definition of A178511 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A178511.P5882585623886558827

`1/119*(100^(n+1)-(-19)^(n+1))`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A178511

/-- `1/119*(100^(n+1)-(-19)^(n+1))` -/
def P5882585623886558827.Spec : Prop :=
  ∀ n, P5882585623886558827.a n = (A178511 (n + 1) : ℚ)

end A178511

/-! ## A178511.P4162890295824882868

`(10^n)²-19*a(n-1)` with `a(0)=1`
-/

namespace A178511.P4162890295824882868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ((10 ^ n) ^ 2 : ℤ) - 19 * a (n - 1)

end

end A178511.P4162890295824882868

namespace A178511

/-- `(10^n)²-19*a(n-1)` -/
def P4162890295824882868.Spec : Prop :=
  ∀ n, P4162890295824882868.a n = A178511 (n + 1)

end A178511

/-! ## A178511.P14793362261727456388

`(10^n)²-lcm(19, a(n-1))` with `a(0)=1`
-/

namespace A178511.P14793362261727456388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ((10 ^ n) ^ 2 : ℤ) - (Int.lcm 19 (a (n - 1)) : ℤ)

end

end A178511.P14793362261727456388

namespace A178511

/-- `(10^n)²-lcm(19, a(n-1))` -/
def P14793362261727456388.Spec : Prop :=
  ∀ n, P14793362261727456388.a n = A178511 (n + 1)

end A178511

/-!
# A178512: Reversed decimal expansions of A178510.

The programs for A178512, the canonical program `A178512.P8470962968472352174` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A178512 has offset 1).

The definition of A178512 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A178512.P8470962968472352174

`120*a(n-1)+1` with `a(0)=1`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A178512

/-- `120*a(n-1)+1` -/
def P8470962968472352174.Spec : Prop :=
  ∀ n, (P8470962968472352174.a n : ℤ) = A178512 (n + 1)

theorem P8470962968472352174.correct : P8470962968472352174.Spec := by
  intro n
  simp only [A178512, Nat.add_sub_cancel]

end A178512

/-! ## A178512.P8617503730226436008

`1/119*(120^(n+1)-1)`
-/

namespace A178512.P8617503730226436008
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 119 * ((120 ^ (n + 1) : ℤ) - 1 : ℚ)

end

end A178512.P8617503730226436008

namespace A178512

/-- `1/119*(120^(n+1)-1)` -/
def P8617503730226436008.Spec : Prop :=
  ∀ n, P8617503730226436008.a n = (A178512 (n + 1) : ℚ)

theorem P8617503730226436008.correct : P8617503730226436008.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A178512, Nat.add_sub_cancel, A178512.P8617503730226436008.a, A178512.P8470962968472352174.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A178512, Nat.add_sub_cancel, A178512.P8617503730226436008.a, A178512.P8470962968472352174.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A178512

/-! ## A178512.P13236736382252687023

`xor(1, 12*10*a(n-1))` with `a(0)=1`
-/

namespace A178512.P13236736382252687023
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.xor 1 (12 * (10 * a (n - 1)))

end

end A178512.P13236736382252687023

namespace A178512

/-- `xor(1, 12*10*a(n-1))` -/
def P13236736382252687023.Spec : Prop :=
  ∀ n, (P13236736382252687023.a n : ℤ) = A178512 (n + 1)

end A178512

/-! ## A178512.P15651832898239761906

`or(1, 6*20*a(n-1))` with `a(0)=1`
-/

namespace A178512.P15651832898239761906
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.lor 1 (6 * (20 * a (n - 1)))

end

end A178512.P15651832898239761906

namespace A178512

/-- `or(1, 6*20*a(n-1))` -/
def P15651832898239761906.Spec : Prop :=
  ∀ n, (P15651832898239761906.a n : ℤ) = A178512 (n + 1)

end A178512

/-! ## A178512.P16696734832668302626

`1-15*(a(n-1)-9*a(n-1))` with `a(0)=1`
-/

namespace A178512.P16696734832668302626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  1 - 15 * (a (n - 1) - 9 * a (n - 1))

end

end A178512.P16696734832668302626

namespace A178512

/-- `1-15*(a(n-1)-9*a(n-1))` -/
def P16696734832668302626.Spec : Prop :=
  ∀ n, P16696734832668302626.a n = A178512 (n + 1)

end A178512

/-!
# A178513: Partial sums of 80^n.

The programs for A178513, the canonical program `A178513.P8373925552544128884` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A178513 has offset 0).

The definition of A178513 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A178513.P8373925552544128884

`80*a(n-1)+1` with `a(0)=1`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A178513

/-- `80*a(n-1)+1` -/
def P8373925552544128884.Spec : Prop :=
  ∀ n, (P8373925552544128884.a n : ℤ) = A178513 n

theorem P8373925552544128884.correct : P8373925552544128884.Spec := by
  intro n
  simp only [A178513]

end A178513

/-! ## A178513.P14278091023862613240

`(80^(n+1)-1)/79`
-/

namespace A178513.P14278091023862613240
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((80 ^ (n + 1) : ℤ) - 1 : ℚ) / 79

end

end A178513.P14278091023862613240

namespace A178513

/-- `(80^(n+1)-1)/79` -/
def P14278091023862613240.Spec : Prop :=
  ∀ n, P14278091023862613240.a n = (A178513 n : ℚ)

theorem P14278091023862613240.correct : P14278091023862613240.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A178513, Nat.add_sub_cancel, A178513.P14278091023862613240.a, A178513.P8373925552544128884.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A178513, Nat.add_sub_cancel, A178513.P14278091023862613240.a, A178513.P8373925552544128884.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A178513

/-! ## A178513.P6502283275575362157

`∑[80*a(n-1)]` with `a(0)=1`
-/

namespace A178513.P6502283275575362157
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  80 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A178513.P6502283275575362157

namespace A178513

/-- `∑[80*a(n-1)]` -/
def P6502283275575362157.Spec : Prop :=
  ∀ n, (P6502283275575362157.a n : ℤ) = A178513 n

end A178513

/-! ## A178513.P104029755259294908

`lcm(80, a(n-1))+1` with `a(0)=1`
-/

namespace A178513.P104029755259294908
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.lcm 80 (a (n - 1)) + 1

end

end A178513.P104029755259294908

namespace A178513

/-- `lcm(80, a(n-1))+1` -/
def P104029755259294908.Spec : Prop :=
  ∀ n, (P104029755259294908.a n : ℤ) = A178513 n

end A178513

/-! ## A178513.P9495801930390265943

`a(n-1)+80^n` with `a(0)=1`
-/

namespace A178513.P9495801930390265943
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + 80 ^ n

end

end A178513.P9495801930390265943

namespace A178513

/-- `a(n-1)+80^n` -/
def P9495801930390265943.Spec : Prop :=
  ∀ n, (P9495801930390265943.a n : ℤ) = A178513 n

end A178513

/-! ## A178513.P12652354864486483611

`or(1, 8*10*a(n-1))` with `a(0)=1`
-/

namespace A178513.P12652354864486483611
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.lor 1 (8 * (10 * a (n - 1)))

end

end A178513.P12652354864486483611

namespace A178513

/-- `or(1, 8*10*a(n-1))` -/
def P12652354864486483611.Spec : Prop :=
  ∀ n, (P12652354864486483611.a n : ℤ) = A178513 n

end A178513

/-! ## A178513.P11246631212906237361

`xor(1, 8*10*a(n-1))` with `a(0)=1`
-/

namespace A178513.P11246631212906237361
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.xor 1 (8 * (10 * a (n - 1)))

end

end A178513.P11246631212906237361

namespace A178513

/-- `xor(1, 8*10*a(n-1))` -/
def P11246631212906237361.Spec : Prop :=
  ∀ n, (P11246631212906237361.a n : ℤ) = A178513 n

end A178513

/-! ## A178513.P3237888354380359320

`11-5*(2-16*a(n-1))` with `a(0)=1`
-/

namespace A178513.P3237888354380359320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  11 - 5 * (2 - 16 * a (n - 1))

end

end A178513.P3237888354380359320

namespace A178513

/-- `11-5*(2-16*a(n-1))` -/
def P3237888354380359320.Spec : Prop :=
  ∀ n, P3237888354380359320.a n = A178513 n

end A178513

/-! ## A178513.P12360428061715158240

`∑[A259076(n)]`
-/

namespace A178513.P12360428061715158240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259076 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A178513.P12360428061715158240

namespace A178513

/-- `∑[A259076(n)]` -/
def P12360428061715158240.Spec : Prop :=
  ∀ n, P12360428061715158240.a n = A178513 n

end A178513

/-!
# A178514: Triangle read by rows: T(n,k) is the number of derangements of {1,2,...,n} having genus k (see first comment for definition of genus).

The programs for A178514, there is no canonical definition to state claims against.
-/

/-! ## A178514.P3979560296005661083

`A177267(n+1)-A178517(n+1)`
-/

namespace A178514.P3979560296005661083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177267 (n + 1) - A178517 (n + 1)

end

end A178514.P3979560296005661083

/-! ## A178514.P10141336357716454554

`A122890(A099375(n)+A043320(n+1))-A178517(n+1)`
-/

namespace A178514.P10141336357716454554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122890 (A099375 n + A043320 (n + 1)).toNat - A178517 (n + 1)

end

end A178514.P10141336357716454554

/-! ## A178514.P4619549611785043525

`A122890(A187829(n+1)+A099375(n))-A178517(n+1)`
-/

namespace A178514.P4619549611785043525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122890 (A187829 (n + 1) + A099375 n).toNat - A178517 (n + 1)

end

end A178514.P4619549611785043525

/-! ## A178514.P10353012421422493696

`A158830(A187829(n+1)+A002024(n+1))-A178517(n+1)`
-/

namespace A178514.P10353012421422493696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158830 (A187829 (n + 1) + A002024 (n + 1)).toNat - A178517 (n + 1)

end

end A178514.P10353012421422493696

/-!
# A178516: Triangle read by rows: T(n,k) is the number of up-down permutations of {1,2,...,n} having genus k (see first comment for definition of genus).

The programs for A178516, there is no canonical definition to state claims against.
-/

/-! ## A178516.P13776047089775073807

`A082498(A064383(n+1)*A238858(n))`
-/

namespace A178516.P13776047089775073807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082498 (A064383 (n + 1) * A238858 n).toNat

end

end A178516.P13776047089775073807

/-! ## A178516.P18306653129831197430

`A082498(lcm(A064383(n+1), A238858(n)))`
-/

namespace A178516.P18306653129831197430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082498 (Int.lcm (A064383 (n + 1)) (A238858 n))

end

end A178516.P18306653129831197430

/-! ## A178516.P7557458758955082522

`A107628(A017341(A107628(n+1))+A011782(n))`
-/

namespace A178516.P7557458758955082522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107628 (A017341 (A107628 (n + 1)).toNat + A011782 n).toNat

end

end A178516.P7557458758955082522

/-!
# A178517: Triangle read by rows: T(n,k) is the number of non-derangement permutations of {1,2,...,n} having genus k (see first comment for definition of genus).

The programs for A178517, there is no canonical definition to state claims against.
-/

/-! ## A178517.P9920046734063456166

`A177267(n+1)-A178514(n+1)`
-/

namespace A178517.P9920046734063456166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177267 (n + 1) - A178514 (n + 1)

end

end A178517.P9920046734063456166

/-! ## A178517.P4404638331314737385

`A122890(A099375(n)+A043320(n+1))-A178514(n+1)`
-/

namespace A178517.P4404638331314737385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122890 (A099375 n + A043320 (n + 1)).toNat - A178514 (n + 1)

end

end A178517.P4404638331314737385

/-! ## A178517.P10325571435401620208

`A122890(A187829(n+1)+A099375(n))-A178514(n+1)`
-/

namespace A178517.P10325571435401620208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122890 (A187829 (n + 1) + A099375 n).toNat - A178514 (n + 1)

end

end A178517.P10325571435401620208

/-! ## A178517.P17345111102583000070

`A158830(A187829(n+1)+A002024(n+1))-A178514(n+1)`
-/

namespace A178517.P17345111102583000070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158830 (A187829 (n + 1) + A002024 (n + 1)).toNat - A178514 (n + 1)

end

end A178517.P17345111102583000070

/-!
# A178518: Triangle read by rows: T(n,k) is the number of permutations p of {1,2,...,n} having genus 0 and such that p(1)=k (see first comment for definition of genus).

The programs for A178518, there is no canonical definition to state claims against.
-/

/-! ## A178518.P1820819815175278477

`A078391(char[∑[n]]+n-1)`
-/

namespace A178518.P1820819815175278477
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078391 (((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + ((n : ℤ) - 1)).toNat

end

end A178518.P1820819815175278477

/-!
# A178519: Triangle read by rows: T(n,k) is the number of ordered trees with n edges and having k vertices of outdegree 2 that have (two) leaves as their (two) children.

The programs for A178519, there is no canonical definition to state claims against.
-/

/-! ## A178519.P9600459923047146603

`A258257(A387692(n+1))`
-/

namespace A178519.P9600459923047146603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258257 (A387692 (n + 1)).toNat

end

end A178519.P9600459923047146603

/-! ## A178519.P14655173879779691388

`A208825(A011782(n))%40`
-/

namespace A178519.P14655173879779691388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A208825 (A011782 n).toNat) 40

end

end A178519.P14655173879779691388

/-! ## A178519.P2657575445764823716

`gcd(val(n+1, 2), A305926(A374679(n)))`
-/

namespace A178519.P2657575445764823716
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.valuation (n + 1) 2 : ℤ) (A305926 (A374679 n).toNat)

end

end A178519.P2657575445764823716

/-! ## A178519.P4769458200555660616

`A277227(A299001(∑[2^floor(n/2)]))`
-/

namespace A178519.P4769458200555660616
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277227 (A299001 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat).toNat

end

end A178519.P4769458200555660616

/-! ## A178519.P8319429668652649279

`A318812(A356778(n)+A000244(n))`
-/

namespace A178519.P8319429668652649279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318812 (A356778 n + A000244 n).toNat

end

end A178519.P8319429668652649279

/-!
# A178520: Number of ordered trees with n edges and with no vertex of outdegree 2 that have two leaves as their two children.

The programs for A178520, there is no canonical definition to state claims against.
-/

/-! ## A178520.P752808621005944368

`A178519(A025694(n))`
-/

namespace A178520.P752808621005944368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178519 (A025694 n).toNat

end

end A178520.P752808621005944368

/-! ## A178520.P2374249393843796766

`A178519(A008748(n+1))`
-/

namespace A178520.P2374249393843796766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178519 (A008748 (n + 1)).toNat

end

end A178520.P2374249393843796766

/-! ## A178520.P10342942894282096384

`A178519(A022796(n+1))`
-/

namespace A178520.P10342942894282096384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178519 (A022796 (n + 1)).toNat

end

end A178520.P10342942894282096384

/-! ## A178520.P616668925671915370

`A157271(xor(A004247(n+2), A129366(n)))`
-/

namespace A178520.P616668925671915370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157271 (Int.xor (A004247 (n + 2)) (A129366 n)).toNat

end

end A178520.P616668925671915370

/-!
# A178521: The cost of all leaves in the Fibonacci tree of order n.

The programs for A178521, the canonical program `A178521.P16444799911443760293` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A178521 has offset 0).

The definition of A178521 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A178521.P5518684335248262138

`n*A000045(n+1)-A000045(n)`
-/

namespace A178521.P5518684335248262138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000045 (n + 1) - A000045 n

end

end A178521.P5518684335248262138

namespace A178521

/-- `n*A000045(n+1)-A000045(n)` -/
def P5518684335248262138.Spec : Prop :=
  ∀ n, P5518684335248262138.a n = A178521 n

end A178521

/-! ## A178521.P16444799911443760293

`2*a(n-1)+a(n-2)-2*a(n-3)-a(n-4)` with `a(0)=0, a(1)=0, a(2)=3, a(3)=7`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A178521

/-- `2*a(n-1)+a(n-2)-2*a(n-3)-a(n-4)` -/
def P16444799911443760293.Spec : Prop :=
  ∀ n, P16444799911443760293.a n = A178521 n

theorem P16444799911443760293.correct : P16444799911443760293.Spec := by
  intro n
  simp only [A178521]

end A178521

/-! ## A178521.P8361311053416907767

`ogf((3x^2+x^3)/(1-2x-x^2+2x^3+x^4))`
-/

namespace A178521.P8361311053416907767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 3, 1] [1, -2, -1, 2, 1] n

end

end A178521.P8361311053416907767

namespace A178521

/-- `ogf((3x^2+x^3)/(1-2x-x^2+2x^3+x^4))` -/
def P8361311053416907767.Spec : Prop :=
  ∀ n, P8361311053416907767.a n = A178521 n

end A178521

/-! ## A178521.P13256559954564126234

`A190062(n+1)-1`
-/

namespace A178521.P13256559954564126234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190062 (n + 1) - 1

end

end A178521.P13256559954564126234

namespace A178521

/-- `A190062(n+1)-1` -/
def P13256559954564126234.Spec : Prop :=
  ∀ n, P13256559954564126234.a n = A178521 n

end A178521

/-! ## A178521.P15681341791342113628

`∑[A006490(n+1)]-1`
-/

namespace A178521.P15681341791342113628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006490 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A178521.P15681341791342113628

namespace A178521

/-- `∑[A006490(n+1)]-1` -/
def P15681341791342113628.Spec : Prop :=
  ∀ n, P15681341791342113628.a n = A178521 n

end A178521

/-! ## A178521.P555484776997222786

`∑[(n+1)*Δ[A001611(n)]]-1`
-/

namespace A178521.P555484776997222786
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001611 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A178521.P555484776997222786

namespace A178521

/-- `∑[(n+1)*Δ[A001611(n)]]-1` -/
def P555484776997222786.Spec : Prop :=
  ∀ n, P555484776997222786.a n = A178521 n

end A178521

/-! ## A178521.P11853761042917899534

`∑[(n+1)*A000045((2*n)%(n+1))]`
-/

namespace A178521.P11853761042917899534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000045 (2 * n % (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A178521.P11853761042917899534

namespace A178521

/-- `∑[(n+1)*A000045((2*n)%(n+1))]` -/
def P11853761042917899534.Spec : Prop :=
  ∀ n, P11853761042917899534.a n = A178521 n

end A178521

/-! ## A178521.P6791625342491576715

`∑[(n+1)*A000045(floor(n²/(n+1)))]`
-/

namespace A178521.P6791625342491576715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000045 ⌊(n ^ 2 : ℚ) / (n + 1 : ℚ)⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A178521.P6791625342491576715

namespace A178521

/-- `∑[(n+1)*A000045(floor(n²/(n+1)))]` -/
def P6791625342491576715.Spec : Prop :=
  ∀ n, P6791625342491576715.a n = A178521 n

end A178521

/-! ## A178521.P16240812041182376843

`a(n-1)+A000032(n)+a(n-2)` with `a(0)=0, a(1)=0`
-/

namespace A178521.P16240812041182376843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  a (n - 1) + (A000032 n + a (n - 2))

end

end A178521.P16240812041182376843

namespace A178521

/-- `a(n-1)+A000032(n)+a(n-2)` -/
def P16240812041182376843.Spec : Prop :=
  ∀ n, P16240812041182376843.a n = A178521 n

end A178521

/-! ## A178521.P17896567492562072930

`(n+1)*(n+2)*Δ[A000045(n+2)/(n+1)]`
-/

namespace A178521.P17896567492562072930
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000045 (n + 2) : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * ((n + 2 : ℚ) * (f1 (n + 1) - f1 n))

end

end A178521.P17896567492562072930

namespace A178521

/-- `(n+1)*(n+2)*Δ[A000045(n+2)/(n+1)]` -/
def P17896567492562072930.Spec : Prop :=
  ∀ n, P17896567492562072930.a n = (A178521 n : ℚ)

end A178521

/-! ## A178521.P7919440105355124805

`a(n-1)-(n-1-2*n)*A000045(n-1)` with `a(0)=0`
-/

namespace A178521.P7919440105355124805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) - ((n : ℤ) - 1 - (2 * n : ℤ)) * A000045 (n - 1)

end

end A178521.P7919440105355124805

namespace A178521

/-- `a(n-1)-(n-1-2*n)*A000045(n-1)` -/
def P7919440105355124805.Spec : Prop :=
  ∀ n, P7919440105355124805.a n = A178521 n

end A178521

/-! ## A178521.P11058009212428193240

`A264147(n)+A045925(n)`
-/

namespace A178521.P11058009212428193240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264147 n + A045925 n

end

end A178521.P11058009212428193240

namespace A178521

/-- `A264147(n)+A045925(n)` -/
def P11058009212428193240.Spec : Prop :=
  ∀ n, P11058009212428193240.a n = A178521 n

end A178521

/-! ## A178521.P8408225744409156619

`A023607(n)-A000045(n)`
-/

namespace A178521.P8408225744409156619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023607 n - A000045 n

end

end A178521.P8408225744409156619

namespace A178521

/-- `A023607(n)-A000045(n)` -/
def P8408225744409156619.Spec : Prop :=
  ∀ n, P8408225744409156619.a n = A178521 n

end A178521

/-! ## A178521.P7159738209790907606

`∑[A094588(n)]-A000045(n)`
-/

namespace A178521.P7159738209790907606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094588 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A000045 n

end

end A178521.P7159738209790907606

namespace A178521

/-- `∑[A094588(n)]-A000045(n)` -/
def P7159738209790907606.Spec : Prop :=
  ∀ n, P7159738209790907606.a n = A178521 n

end A178521

/-! ## A178521.P14744969537327213564

`A061705(n+1)-A001060(n)`
-/

namespace A178521.P14744969537327213564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061705 (n + 1) - A001060 n

end

end A178521.P14744969537327213564

namespace A178521

/-- `A061705(n+1)-A001060(n)` -/
def P14744969537327213564.Spec : Prop :=
  ∀ n, P14744969537327213564.a n = A178521 n

end A178521

/-! ## A178521.P14145295277849897333

`A088209(n)-A000032(n+1)`
-/

namespace A178521.P14145295277849897333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088209 n - A000032 (n + 1)

end

end A178521.P14145295277849897333

namespace A178521

/-- `A088209(n)-A000032(n+1)` -/
def P14145295277849897333.Spec : Prop :=
  ∀ n, P14145295277849897333.a n = A178521 n

end A178521

/-! ## A178521.P1118187762096919263

`A088209(n)-A000204(n+1)`
-/

namespace A178521.P1118187762096919263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088209 n - A000204 (n + 1)

end

end A178521.P1118187762096919263

namespace A178521

/-- `A088209(n)-A000204(n+1)` -/
def P1118187762096919263.Spec : Prop :=
  ∀ n, P1118187762096919263.a n = A178521 n

end A178521

/-! ## A178521.P5905972014894634736

`A354044(n)-2*A000045(n)`
-/

namespace A178521.P5905972014894634736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354044 n - 2 * A000045 n

end

end A178521.P5905972014894634736

namespace A178521

/-- `A354044(n)-2*A000045(n)` -/
def P5905972014894634736.Spec : Prop :=
  ∀ n, P5905972014894634736.a n = A178521 n

end A178521

/-! ## A178521.P15467008956614186854

`A264147(n)+n*A000045(n)`
-/

namespace A178521.P15467008956614186854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264147 n + (n : ℤ) * A000045 n

end

end A178521.P15467008956614186854

namespace A178521

/-- `A264147(n)+n*A000045(n)` -/
def P15467008956614186854.Spec : Prop :=
  ∀ n, P15467008956614186854.a n = A178521 n

end A178521

/-! ## A178521.P3825286526011837609

`n*∑[A212804(n)]-A000045(n)`
-/

namespace A178521.P3825286526011837609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j) - A000045 n

end

end A178521.P3825286526011837609

namespace A178521

/-- `n*∑[A212804(n)]-A000045(n)` -/
def P3825286526011837609.Spec : Prop :=
  ∀ n, P3825286526011837609.a n = A178521 n

end A178521

/-!
# A178522: Triangle read by rows: T(n,k) is the number of nodes at level k in the Fibonacci tree of order n (n>=0, 0<=k<=n-1).

The programs for A178522, there is no canonical definition to state claims against.
-/

/-! ## A178522.P7256801470294872862

`A178524(n)+A054124(n)-char[∑[n]]`
-/

namespace A178522.P7256801470294872862
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178524 n + (A054124 n - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ))

end

end A178522.P7256801470294872862

/-! ## A178522.P15211693634143086297

`A059250(A083920(A089799(n)+n))`
-/

namespace A178522.P15211693634143086297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059250 (A083920 (A089799 n + (n : ℤ)).toNat).toNat

end

end A178522.P15211693634143086297

/-! ## A178522.P13117234853250168957

`A054124(n)+A178524(n)-A010054(n)`
-/

namespace A178522.P13117234853250168957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054124 n + (A178524 n - A010054 n)

end

end A178522.P13117234853250168957

/-! ## A178522.P11879298435254575287

`A054124(n)+A178524(n)-char[A000217(n)]`
-/

namespace A178522.P11879298435254575287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054124 n + (A178524 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ))

end

end A178522.P11879298435254575287

/-! ## A178522.P13286324745863897201

`A178524(n)+A054124(n)%A059250(n+1)`
-/

namespace A178522.P13286324745863897201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178524 n + Int.tmod (A054124 n) (A059250 (n + 1))

end

end A178522.P13286324745863897201

/-! ## A178522.P3609593700189481568

`A059214(A028310(n))-A059250(A028310(n))`
-/

namespace A178522.P3609593700189481568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059214 (A028310 n).toNat - A059250 (A028310 n).toNat

end

end A178522.P3609593700189481568

/-!
# A178523: The path length of the Fibonacci tree of order n.

The programs for A178523, the canonical program `A178523.P10038394558862016635` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A178523 has offset 0).

The definition of A178523 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A178523.P10038394558862016635

`2*A006478(n+1)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A178523

/-- `2*A006478(n+1)` -/
def P10038394558862016635.Spec : Prop :=
  ∀ n, P10038394558862016635.a n = A178523 n

theorem P10038394558862016635.correct : P10038394558862016635.Spec := by
  intro n
  simp only [A178523]

end A178523

/-! ## A178523.P5388526318967214892

`a(n-1)+a(n-2)+2*A000045(n+1)-2` with `a(0)=0, a(1)=0`
-/

namespace A178523.P5388526318967214892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  a (n - 1) + a (n - 2) + 2 * A000045 (n + 1) - 2

end

end A178523.P5388526318967214892

namespace A178523

/-- `a(n-1)+a(n-2)+2*A000045(n+1)-2` -/
def P5388526318967214892.Spec : Prop :=
  ∀ n, P5388526318967214892.a n = A178523 n

end A178523

/-! ## A178523.P6136668461983760316

`2*∑[ogf(x^2/(1-2x-x^2+2x^3+x^4))]`
-/

namespace A178523.P6136668461983760316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 1] [1, -2, -1, 2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A178523.P6136668461983760316

namespace A178523

/-- `2*∑[ogf(x^2/(1-2x-x^2+2x^3+x^4))]` -/
def P6136668461983760316.Spec : Prop :=
  ∀ n, P6136668461983760316.a n = A178523 n

end A178523

/-! ## A178523.P13812380653843762827

`∑[2*A001629(n)]`
-/

namespace A178523.P13812380653843762827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001629 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A178523.P13812380653843762827

namespace A178523

/-- `∑[2*A001629(n)]` -/
def P13812380653843762827.Spec : Prop :=
  ∀ n, P13812380653843762827.a n = A178523 n

end A178523

/-! ## A178523.P180160443652161630

`2*Δ[A118425(n)]`
-/

namespace A178523.P180160443652161630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118425 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f1 (n + 1) - f1 n)

end

end A178523.P180160443652161630

namespace A178523

/-- `2*Δ[A118425(n)]` -/
def P180160443652161630.Spec : Prop :=
  ∀ n, P180160443652161630.a n = A178523 n

end A178523

/-! ## A178523.P4680265222372880998

`∑[2*Δ[A006478(n)]]`
-/

namespace A178523.P4680265222372880998
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006478 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A178523.P4680265222372880998

namespace A178523

/-- `∑[2*Δ[A006478(n)]]` -/
def P4680265222372880998.Spec : Prop :=
  ∀ n, P4680265222372880998.a n = A178523 n

end A178523

/-! ## A178523.P12100374053488051277

`A014286(n)-A010049(n)`
-/

namespace A178523.P12100374053488051277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014286 n - A010049 n

end

end A178523.P12100374053488051277

namespace A178523

/-- `A014286(n)-A010049(n)` -/
def P12100374053488051277.Spec : Prop :=
  ∀ n, P12100374053488051277.a n = A178523 n

end A178523

/-! ## A178523.P4684615552725712714

`A122491(n+1)+A006478(n)`
-/

namespace A178523.P4684615552725712714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122491 (n + 1) + A006478 n

end

end A178523.P4684615552725712714

namespace A178523

/-- `A122491(n+1)+A006478(n)` -/
def P4684615552725712714.Spec : Prop :=
  ∀ n, P4684615552725712714.a n = A178523 n

end A178523

/-! ## A178523.P14460215947517091366

`∑[A001629(n)+Δ[A006478(n)]]`
-/

namespace A178523.P14460215947517091366
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006478 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001629 n + (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A178523.P14460215947517091366

namespace A178523

/-- `∑[A001629(n)+Δ[A006478(n)]]` -/
def P14460215947517091366.Spec : Prop :=
  ∀ n, P14460215947517091366.a n = A178523 n

end A178523

/-! ## A178523.P4406040201985570249

`A006478(n+1)+∑[A001629(n)]`
-/

namespace A178523.P4406040201985570249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001629 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006478 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A178523.P4406040201985570249

namespace A178523

/-- `A006478(n+1)+∑[A001629(n)]` -/
def P4406040201985570249.Spec : Prop :=
  ∀ n, P4406040201985570249.a n = A178523 n

end A178523

/-! ## A178523.P7695674884810036580

`∑[2*(A029907(n)-A000045(n))]`
-/

namespace A178523.P7695674884810036580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A029907 n - A000045 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A178523.P7695674884810036580

namespace A178523

/-- `∑[2*(A029907(n)-A000045(n))]` -/
def P7695674884810036580.Spec : Prop :=
  ∀ n, P7695674884810036580.a n = A178523 n

end A178523

/-! ## A178523.P10425698975802298865

`∑[n*A000045(n)]-A010049(n)`
-/

namespace A178523.P10425698975802298865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A010049 n

end

end A178523.P10425698975802298865

namespace A178523

/-- `∑[n*A000045(n)]-A010049(n)` -/
def P10425698975802298865.Spec : Prop :=
  ∀ n, P10425698975802298865.a n = A178523 n

end A178523

/-! ## A178523.P11735952506995283975

`A131913(n+1)-A001911(n+2)`
-/

namespace A178523.P11735952506995283975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131913 (n + 1) - A001911 (n + 2)

end

end A178523.P11735952506995283975

namespace A178523

/-- `A131913(n+1)-A001911(n+2)` -/
def P11735952506995283975.Spec : Prop :=
  ∀ n, P11735952506995283975.a n = A178523 n

end A178523

/-! ## A178523.P10522847523338251450

`∑[2*∑[A006367(n)-A212804(n)]]`
-/

namespace A178523.P10522847523338251450
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006367 n - A212804 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A178523.P10522847523338251450

namespace A178523

/-- `∑[2*∑[A006367(n)-A212804(n)]]` -/
def P10522847523338251450.Spec : Prop :=
  ∀ n, P10522847523338251450.a n = A178523 n

end A178523

/-! ## A178523.P8781779726270324656

`∑[2*(A006490(n+1)-A006367(n))]`
-/

namespace A178523.P8781779726270324656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A006490 (n + 1) - A006367 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A178523.P8781779726270324656

namespace A178523

/-- `∑[2*(A006490(n+1)-A006367(n))]` -/
def P8781779726270324656.Spec : Prop :=
  ∀ n, P8781779726270324656.a n = A178523 n

end A178523

/-! ## A178523.P6229923575975846253

`2*(A055244(n+1)-A001595(n+1))`
-/

namespace A178523.P6229923575975846253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A055244 (n + 1) - A001595 (n + 1))

end

end A178523.P6229923575975846253

namespace A178523

/-- `2*(A055244(n+1)-A001595(n+1))` -/
def P6229923575975846253.Spec : Prop :=
  ∀ n, P6229923575975846253.a n = A178523 n

end A178523

/-! ## A178523.P14093906804008116789

`2*(A140992(n+1)-A029907(n+1))`
-/

namespace A178523.P14093906804008116789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A140992 (n + 1) - A029907 (n + 1))

end

end A178523.P14093906804008116789

namespace A178523

/-- `2*(A140992(n+1)-A029907(n+1))` -/
def P14093906804008116789.Spec : Prop :=
  ∀ n, P14093906804008116789.a n = A178523 n

end A178523

/-! ## A178523.P6211626642888015885

`2*(A190062(n+1)-A010049(n+1))`
-/

namespace A178523.P6211626642888015885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A190062 (n + 1) - A010049 (n + 1))

end

end A178523.P6211626642888015885

namespace A178523

/-- `2*(A190062(n+1)-A010049(n+1))` -/
def P6211626642888015885.Spec : Prop :=
  ∀ n, P6211626642888015885.a n = A178523 n

end A178523

/-! ## A178523.P6276701596631267149

`2*(A271785(n+1)-A022308(n+1))`
-/

namespace A178523.P6276701596631267149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A271785 (n + 1) - A022308 (n + 1))

end

end A178523.P6276701596631267149

namespace A178523

/-- `2*(A271785(n+1)-A022308(n+1))` -/
def P6276701596631267149.Spec : Prop :=
  ∀ n, P6276701596631267149.a n = A178523 n

end A178523

/-! ## A178523.P6377534249729289089

`2*∑[(n*A000032(n)-A000045(n))/5]`
-/

namespace A178523.P6377534249729289089
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * A000032 n - A000045 n : ℚ) / 5

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A178523.P6377534249729289089

namespace A178523

/-- `2*∑[(n*A000032(n)-A000045(n))/5]` -/
def P6377534249729289089.Spec : Prop :=
  ∀ n, P6377534249729289089.a n = (A178523 n : ℚ)

end A178523

/-!
# A178524: Triangle read by rows: T(n,k) is the number of leaves at level k in the Fibonacci tree of order n (n>=0, 0<=k<=n-1).

The programs for A178524, there is no canonical definition to state claims against.
-/

/-! ## A178524.P6046207744899980856

`A238160(abs(ceil(n*sin(11))))`
-/

namespace A178524.P6046207744899980856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238160 |⌈(n : ℝ) * Real.sin (11 : ℝ)⌉|.toNat

end

end A178524.P6046207744899980856

/-! ## A178524.P297129535193439020

`A238160(n-ceil(abs(sin(n))))`
-/

namespace A178524.P297129535193439020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238160 ((n : ℤ) - ⌈|Real.sin (n : ℝ)|⌉).toNat

end

end A178524.P297129535193439020

/-! ## A178524.P10799896990255124397

`A238160(n-ceil(sin(n)²))`
-/

namespace A178524.P10799896990255124397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238160 ((n : ℤ) - ⌈Real.sin (n : ℝ) ^ 2⌉).toNat

end

end A178524.P10799896990255124397

/-! ## A178524.P9796926609439736118

`A238160((n-1)%(n+1))`
-/

namespace A178524.P9796926609439736118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238160 (Int.tmod ((n : ℤ) - 1) (n + 1 : ℤ)).toNat

end

end A178524.P9796926609439736118

/-! ## A178524.P2085213224961628729

`A238160(ceil(abs(γ-n))-1)`
-/

namespace A178524.P2085213224961628729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238160 (⌈|Real.eulerMascheroniConstant - (n : ℝ)|⌉ - 1).toNat

end

end A178524.P2085213224961628729

/-! ## A178524.P7420750832330503543

`A054124(n)-Δ[A178522(n)]`
-/

namespace A178524.P7420750832330503543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178522 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054124 n - (f1 (n + 1) - f1 n)

end

end A178524.P7420750832330503543

/-! ## A178524.P10249478637910252437

`A052509(A056943(n))-Δ[A178522(n)]`
-/

namespace A178524.P10249478637910252437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178522 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052509 (A056943 n).toNat - (f1 (n + 1) - f1 n)

end

end A178524.P10249478637910252437

/-! ## A178524.P11620002932882645103

`A052509(1-A158405(n+1)+n)-Δ[A178522(n)]`
-/

namespace A178524.P11620002932882645103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178522 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052509 (1 - A158405 (n + 1) + (n : ℤ)).toNat - (f1 (n + 1) - f1 n)

end

end A178524.P11620002932882645103

/-! ## A178524.P10825512896120310099

`A058393(n%A146772(n))-Δ[A178522(n)]`
-/

namespace A178524.P10825512896120310099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178522 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058393 (Int.tmod (n : ℤ) (A146772 n)).toNat - (f1 (n + 1) - f1 n)

end

end A178524.P10825512896120310099

/-!
# A178525: The sum of the costs of all nodes in the Fibonacci tree of order n.

The programs for A178525, the canonical program `A178525.P3678099246080993428` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A178525 has offset 0).

The definition of A178525 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A178525.P3678099246080993428

`a(n-1)+a(n-2)+2*A000045(n+1)+2*A000045(n-1)-3` with `a(0)=0, a(1)=0`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A178525

/-- `a(n-1)+a(n-2)+2*A000045(n+1)+2*A000045(n-1)-3` -/
def P3678099246080993428.Spec : Prop :=
  ∀ n, P3678099246080993428.a n = A178525 n

theorem P3678099246080993428.correct : P3678099246080993428.Spec := by
  intro n
  simp only [A178525]

end A178525

/-! ## A178525.P3997693854673650435

`∑[Δ[A000045(n)]*comp[2*(n+1)]]`
-/

namespace A178525.P3997693854673650435
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) * (SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A178525.P3997693854673650435

namespace A178525

/-- `∑[Δ[A000045(n)]*comp[2*(n+1)]]` -/
def P3997693854673650435.Spec : Prop :=
  ∀ n, P3997693854673650435.a n = A178525 n

end A178525

/-! ## A178525.P9065591598084763508

`∑[(2*n-1)*A000045(abs(1-n))]+1`
-/

namespace A178525.P9065591598084763508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n : ℤ) - 1) * A000045 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A178525.P9065591598084763508

namespace A178525

/-- `∑[(2*n-1)*A000045(abs(1-n))]+1` -/
def P9065591598084763508.Spec : Prop :=
  ∀ n, P9065591598084763508.a n = A178525 n

end A178525

/-! ## A178525.P14088937760587407296

`a(n-1)+(2*n-1)*A000045(n-1)` with `a(0)=0`
-/

namespace A178525.P14088937760587407296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + ((2 * n : ℤ) - 1) * A000045 (n - 1)

end

end A178525.P14088937760587407296

namespace A178525

/-- `a(n-1)+(2*n-1)*A000045(n-1)` -/
def P14088937760587407296.Spec : Prop :=
  ∀ n, P14088937760587407296.a n = A178525 n

end A178525

/-! ## A178525.P6996092611391205103

`∑[A004273(n)*A212804(n)]`
-/

namespace A178525.P6996092611391205103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n * A212804 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A178525.P6996092611391205103

namespace A178525

/-- `∑[A004273(n)*A212804(n)]` -/
def P6996092611391205103.Spec : Prop :=
  ∀ n, P6996092611391205103.a n = A178525 n

end A178525

/-! ## A178525.P8400197310100772710

`A192304(n+1)-A001595(n)`
-/

namespace A178525.P8400197310100772710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192304 (n + 1) - A001595 n

end

end A178525.P8400197310100772710

namespace A178525

/-- `A192304(n+1)-A001595(n)` -/
def P8400197310100772710.Spec : Prop :=
  ∀ n, P8400197310100772710.a n = A178525 n

end A178525

/-! ## A178525.P9514251719182321744

`A192305(n+1)-A377628(n)`
-/

namespace A178525.P9514251719182321744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192305 (n + 1) - A377628 n

end

end A178525.P9514251719182321744

namespace A178525

/-- `A192305(n+1)-A377628(n)` -/
def P9514251719182321744.Spec : Prop :=
  ∀ n, P9514251719182321744.a n = A178525 n

end A178525

/-! ## A178525.P13620397935372964128

`n*A001595(n)-A001924(n)`
-/

namespace A178525.P13620397935372964128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A001595 n - A001924 n

end

end A178525.P13620397935372964128

namespace A178525

/-- `n*A001595(n)-A001924(n)` -/
def P13620397935372964128.Spec : Prop :=
  ∀ n, P13620397935372964128.a n = A178525 n

end A178525

/-! ## A178525.P4414452673987335367

`∑[(A004277(n)-1)*A212804(n)]`
-/

namespace A178525.P4414452673987335367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004277 n - 1) * A212804 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A178525.P4414452673987335367

namespace A178525

/-- `∑[(A004277(n)-1)*A212804(n)]` -/
def P4414452673987335367.Spec : Prop :=
  ∀ n, P4414452673987335367.a n = A178525 n

end A178525

/-! ## A178525.P657645169541599978

`∑[A023607(n)]-n*A000045(n)`
-/

namespace A178525.P657645169541599978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023607 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ) * A000045 n

end

end A178525.P657645169541599978

namespace A178525

/-- `∑[A023607(n)]-n*A000045(n)` -/
def P657645169541599978.Spec : Prop :=
  ∀ n, P657645169541599978.a n = A178525 n

end A178525

/-! ## A178525.P17426805763600962111

`∑[A264147(n+1)]+A264147(n)+1`
-/

namespace A178525.P17426805763600962111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264147 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (A264147 n + 1)

end

end A178525.P17426805763600962111

namespace A178525

/-- `∑[A264147(n+1)]+A264147(n)+1` -/
def P17426805763600962111.Spec : Prop :=
  ∀ n, P17426805763600962111.a n = A178525 n

end A178525

/-! ## A178525.P3308019267990594350

`(n+1)*Δ[A104161(n)]-A192969(n)`
-/

namespace A178525.P3308019267990594350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104161 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (f1 (n + 1) - f1 n) - A192969 n

end

end A178525.P3308019267990594350

namespace A178525

/-- `(n+1)*Δ[A104161(n)]-A192969(n)` -/
def P3308019267990594350.Spec : Prop :=
  ∀ n, P3308019267990594350.a n = A178525 n

end A178525

/-! ## A178525.P15529151269308942244

`∑[A023443(A028310(2*n))*A212804(n)]`
-/

namespace A178525.P15529151269308942244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A028310 (2 * n)).toNat * A212804 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A178525.P15529151269308942244

namespace A178525

/-- `∑[A023443(A028310(2*n))*A212804(n)]` -/
def P15529151269308942244.Spec : Prop :=
  ∀ n, P15529151269308942244.a n = A178525 n

end A178525

/-! ## A178525.P12228615147335084710

`A122491(n+1)+A122491(n+1)-A000071(n+1)`
-/

namespace A178525.P12228615147335084710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122491 (n + 1) + (A122491 (n + 1) - A000071 (n + 1))

end

end A178525.P12228615147335084710

namespace A178525

/-- `A122491(n+1)+A122491(n+1)-A000071(n+1)` -/
def P12228615147335084710.Spec : Prop :=
  ∀ n, P12228615147335084710.a n = A178525 n

end A178525

/-! ## A178525.P4172646641104963846

`A094584(n+1)-(A045925(n)+A023607(n+1))`
-/

namespace A178525.P4172646641104963846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094584 (n + 1) - (A045925 n + A023607 (n + 1))

end

end A178525.P4172646641104963846

namespace A178525

/-- `A094584(n+1)-(A045925(n)+A023607(n+1))` -/
def P4172646641104963846.Spec : Prop :=
  ∀ n, P4172646641104963846.a n = A178525 n

end A178525

/-! ## A178525.P8389133264140403934

`A094584(n+1)-(A136376(n+1)+A099920(n))`
-/

namespace A178525.P8389133264140403934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094584 (n + 1) - (A136376 (n + 1) + A099920 n)

end

end A178525.P8389133264140403934

namespace A178525

/-- `A094584(n+1)-(A136376(n+1)+A099920(n))` -/
def P8389133264140403934.Spec : Prop :=
  ∀ n, P8389133264140403934.a n = A178525 n

end A178525

/-!
# A178526: Triangle read by rows: T(n,k) is the number of nodes of cost k in the Fibonacci tree of order n.

The programs for A178526, there is no canonical definition to state claims against.
-/

/-! ## A178526.P261894190941601027

`A104763(n+1)-Δ[A131410(n+1)]`
-/

namespace A178526.P261894190941601027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131410 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104763 (n + 1) - (f1 (n + 1) - f1 n)

end

end A178526.P261894190941601027

/-! ## A178526.P4189431963035565720

`A104763(n+2)-Δ[A131411(n+1)]`
-/

namespace A178526.P4189431963035565720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131411 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104763 (n + 2) - (f1 (n + 1) - f1 n)

end

end A178526.P4189431963035565720

/-! ## A178526.P739509252578446653

`2*A104763(n+1)-A117502(n+1)`
-/

namespace A178526.P739509252578446653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A104763 (n + 1) - A117502 (n + 1)

end

end A178526.P739509252578446653

/-! ## A178526.P10922800972473442057

`A000045(abs(abs(A128077(n+1)-n)-n))`
-/

namespace A178526.P10922800972473442057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 |(|A128077 (n + 1) - (n : ℤ)| - (n : ℤ))|.toNat

end

end A178526.P10922800972473442057

/-! ## A178526.P572187646676580904

`A000045(abs(abs(A128078(n+1)-n)-n))`
-/

namespace A178526.P572187646676580904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 |(|A128078 (n + 1) - (n : ℤ)| - (n : ℤ))|.toNat

end

end A178526.P572187646676580904

/-! ## A178526.P14169302469667131556

`A141169(A145677(n)+A080036(n))`
-/

namespace A178526.P14169302469667131556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141169 (A145677 n + A080036 n).toNat

end

end A178526.P14169302469667131556

/-! ## A178526.P3158225896492582958

`A000045(A124754(Δ[A018900(n+1)]))`
-/

namespace A178526.P3158225896492582958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018900 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A124754 (f1 (n + 1) - f1 n).toNat).toNat

end

end A178526.P3158225896492582958

/-! ## A178526.P16400981065830839135

`A000045(A193738(n)-Δ[A035214(n)])`
-/

namespace A178526.P16400981065830839135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035214 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A193738 n - (f1 (n + 1) - f1 n)).toNat

end

end A178526.P16400981065830839135

/-! ## A178526.P12786995884048157107

`A141169(A051340(n)+A007401(n+1))`
-/

namespace A178526.P12786995884048157107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141169 (A051340 n + A007401 (n + 1)).toNat

end

end A178526.P12786995884048157107

/-! ## A178526.P8300332607581583095

`A117502(n+1)-A006355(A051340(n))`
-/

namespace A178526.P8300332607581583095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117502 (n + 1) - A006355 (A051340 n).toNat

end

end A178526.P8300332607581583095

/-!
# A178527: Primes p such that either p - 2 or p + 2 has more than two distinct prime divisors.

The programs for A178527, there is no canonical definition to state claims against.
-/

/-! ## A178527.P3000947066017609366

`A085821(A032812(n+1))`
-/

namespace A178527.P3000947066017609366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085821 (A032812 (n + 1)).toNat

end

end A178527.P3000947066017609366

/-! ## A178527.P12415310603512954560

`p?[A167415(comp[A000586(n)])]`
-/

namespace A178527.P12415310603512954560
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000586 n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167415 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A178527.P12415310603512954560

/-!
# A178528: Tree generated by the Beatty sequence of sqrt(3).

The programs for A178528, there is no canonical definition to state claims against.
-/

/-! ## A178528.P3437268734735790307

`xor(A124761(A145903(n)), A183084(n+1))`
-/

namespace A178528.P3437268734735790307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A124761 (A145903 n).toNat) (A183084 (n + 1))

end

end A178528.P3437268734735790307

/-! ## A178528.P1028779563546547783

`xor(A025457(A060187(n+1)), A183084(n+1))`
-/

namespace A178528.P1028779563546547783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A025457 (A060187 (n + 1)).toNat) (A183084 (n + 1))

end

end A178528.P1028779563546547783

/-! ## A178528.P7043887489598752088

`A183084(n+1)-Δ[A279372(A121554(n))]`
-/

namespace A178528.P7043887489598752088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279372 (A121554 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183084 (n + 1) - (f1 (n + 1) - f1 n)

end

end A178528.P7043887489598752088

/-! ## A178528.P17612621809328520165

`xor(A183084(n+1), A304572(A003242(n)))`
-/

namespace A178528.P17612621809328520165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A183084 (n + 1)) (A304572 (A003242 n).toNat)

end

end A178528.P17612621809328520165

/-! ## A178528.P1954449002415312450

`A183084(n+1)%A219038(n+5)`
-/

namespace A178528.P1954449002415312450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A183084 (n + 1)) (A219038 (n + 5))

end

end A178528.P1954449002415312450

/-!
# A178530: Numbers k with the property that there exist nonnegative integers a and b such that k = concat(a,b) = a^2+b^2.

The programs for A178530, there is no canonical definition to state claims against.
-/

/-! ## A178530.P4552822441349999012

`A085251(A289081(n+1))`
-/

namespace A178530.P4552822441349999012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085251 (A289081 (n + 1)).toNat

end

end A178530.P4552822441349999012

/-!
# A178531: Numbers n such that 10^n - 93 is prime.

The programs for A178531, there is no canonical definition to state claims against.
-/

/-! ## A178531.P15751234703472858539

`A194621(A345760(n+1))+(n+2)*∑[char[7*n]]-1`
-/

namespace A178531.P15751234703472858539
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194621 (A345760 (n + 1)).toNat + ((((n + 2) * (∑ j ∈ Finset.range (n + 1), f1 j) : ℕ) : ℤ) - 1)

end

end A178531.P15751234703472858539

/-!
# A178532: Partial sums of problimes (third definition, A003068).

The programs for A178532, there is no canonical definition to state claims against.
-/

/-! ## A178532.P2644370735722046816

`∑[A003068(n+1)]`
-/

namespace A178532.P2644370735722046816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003068 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A178532.P2644370735722046816

/-! ## A178532.P18275301050402053712

`∑[A178907(n+1)-A000040(n+1)]`
-/

namespace A178532.P18275301050402053712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178907 (n + 1) - A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A178532.P18275301050402053712

/-! ## A178532.P10664576198392801627

`∑[A178907(n+1)-sqrt(A001248(n+1))]`
-/

namespace A178532.P10664576198392801627
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A178907 (n + 1) : ℝ) - Real.sqrt (A001248 (n + 1) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A178532.P10664576198392801627

/-! ## A178532.P371265221484535574

`∑[A178907(n+1)-record[A006530(n+2)]]`
-/

namespace A178532.P371265221484535574
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178907 (n + 1) - f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A178532.P371265221484535574

/-! ## A178532.P17186552953524366287

`∑[A178907(n+1)-record[A020639(n+2)]]`
-/

namespace A178532.P17186552953524366287
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178907 (n + 1) - f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A178532.P17186552953524366287

/-! ## A178532.P15406827320183877394

`∑[A178907(n+1)-record[A000010(n+1)+1]]`
-/

namespace A178532.P15406827320183877394
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178907 (n + 1) - f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A178532.P15406827320183877394

/-! ## A178532.P11445682443704430359

`∑[A178907(n+1)-record[A014963(n+2)]]`
-/

namespace A178532.P11445682443704430359
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178907 (n + 1) - f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A178532.P11445682443704430359

/-!
# A178534: Triangle T(n,k) read by rows. T(n,1) = A000045(n+1), k > 1: T(n,k) = (Sum_{i=1..k-1} T(n-i,k-1)) - (Sum_{i=1..k-1} T(n-i,k)).

The programs for A178534, there is no canonical definition to state claims against.
-/

/-! ## A178534.P5620536345360347113

`A336112(A137710(n+1))`
-/

namespace A178534.P5620536345360347113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336112 (A137710 (n + 1)).toNat

end

end A178534.P5620536345360347113

/-! ## A178534.P17026364723697136426

`A287355(A068009(n)+A000035(n))`
-/

namespace A178534.P17026364723697136426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287355 (A068009 n + A000035 n).toNat

end

end A178534.P17026364723697136426

/-! ## A178534.P17489975103280107087

`A287355(or(A068009(n), A139549(n)))`
-/

namespace A178534.P17489975103280107087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287355 (Int.lor (A068009 n) (A139549 n)).toNat

end

end A178534.P17489975103280107087

/-! ## A178534.P8276434964437595742

`A287355(A068009(n)+2-A139549(n))`
-/

namespace A178534.P8276434964437595742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287355 (A068009 n + (2 - A139549 n)).toNat

end

end A178534.P8276434964437595742

/-! ## A178534.P12982841283443997480

`A287355(2-(A139549(n)-A068009(n)))`
-/

namespace A178534.P12982841283443997480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287355 (2 - (A139549 n - A068009 n)).toNat

end

end A178534.P12982841283443997480

/-!
# A178535: Matrix inverse of A178534.

The programs for A178535, the canonical program `A178535.P7806652587592333356` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A178535 has offset 1).

The definition of A178535 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A178535.P7806652587592333356

`∑[A054525(n+1)]+A128189(n+1)-1`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A178535

/-- `∑[A054525(n+1)]+A128189(n+1)-1` -/
def P7806652587592333356.Spec : Prop :=
  ∀ n, P7806652587592333356.a n = A178535 (n + 1)

theorem P7806652587592333356.correct : P7806652587592333356.Spec := by
  intro n
  simp only [A178535, Nat.add_sub_cancel]

end A178535

/-! ## A178535.P16855464734461042921

`A054525(n+1)-(A128189(n+2)+A000007(n))`
-/

namespace A178535.P16855464734461042921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054525 (n + 1) - (A128189 (n + 2) + A000007 n)

end

end A178535.P16855464734461042921

namespace A178535

/-- `A054525(n+1)-(A128189(n+2)+A000007(n))` -/
def P16855464734461042921.Spec : Prop :=
  ∀ n, P16855464734461042921.a n = A178535 (n + 1)

end A178535

/-! ## A178535.P584335597189462487

`A123706(n+1)-A124764(A332612(A004736(n+1)))`
-/

namespace A178535.P584335597189462487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123706 (n + 1) - A124764 (A332612 (A004736 (n + 1)).toNat).toNat

end

end A178535.P584335597189462487

namespace A178535

/-- `A123706(n+1)-A124764(A332612(A004736(n+1)))` -/
def P584335597189462487.Spec : Prop :=
  ∀ n, P584335597189462487.a n = A178535 (n + 1)

end A178535

/-! ## A178535.P4363362582461846008

`A054525(n+1)-A285384(A208362(n+1))`
-/

namespace A178535.P4363362582461846008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054525 (n + 1) - A285384 (A208362 (n + 1)).toNat

end

end A178535.P4363362582461846008

namespace A178535

/-- `A054525(n+1)-A285384(A208362(n+1))` -/
def P4363362582461846008.Spec : Prop :=
  ∀ n, P4363362582461846008.a n = A178535 (n + 1)

end A178535

/-! ## A178535.P15423595790605474402

`A115952(n)-A010060(A033129(n))`
-/

namespace A178535.P15423595790605474402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115952 n - A010060 (A033129 n).toNat

end

end A178535.P15423595790605474402

namespace A178535

/-- `A115952(n)-A010060(A033129(n))` -/
def P15423595790605474402.Spec : Prop :=
  ∀ n, P15423595790605474402.a n = A178535 (n + 1)

end A178535

/-!
# A178536: First column of A178535.

The programs for A178536, the canonical program `A178536.P18257347238435558985` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A178536 has offset 1).

The definition of A178536 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 800 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A178536.P18257347238435558985

`∏{e}[n+1, -val(2*n+1+#, n+1)]`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A178536

/-- `∏{e}[n+1, -val(2*n+1+#, n+1)]` -/
def P18257347238435558985.Spec : Prop :=
  ∀ n, P18257347238435558985.a n = A178536 (n + 1)

theorem P18257347238435558985.correct : P18257347238435558985.Spec := by
  intro n
  simp only [A178536, Nat.add_sub_cancel]

end A178536

/-! ## A178536.P4472595961713450670

`round(A181434(n+1)/2)`
-/

namespace A178536.P4472595961713450670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A181434 (n + 1) : ℚ) / 2)

end

end A178536.P4472595961713450670

namespace A178536

/-- `round(A181434(n+1)/2)` -/
def P4472595961713450670.Spec : Prop :=
  ∀ n, P4472595961713450670.a n = A178536 (n + 1)

end A178536

/-! ## A178536.P8170423741073161612

`round(A181435(n+1)/2)`
-/

namespace A178536.P8170423741073161612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A181435 (n + 1) : ℚ) / 2)

end

end A178536.P8170423741073161612

namespace A178536

/-- `round(A181435(n+1)/2)` -/
def P8170423741073161612.Spec : Prop :=
  ∀ n, P8170423741073161612.a n = A178536 (n + 1)

end A178536

/-! ## A178536.P8407115506910540049

`A008683(n+1)-char[1]`
-/

namespace A178536.P8407115506910540049
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A178536.P8407115506910540049

namespace A178536

/-- `A008683(n+1)-char[1]` -/
def P8407115506910540049.Spec : Prop :=
  ∀ n, P8407115506910540049.a n = A178536 (n + 1)

end A178536

/-! ## A178536.P4783782747058752095

`A007423(n+1)-(char[1]+1)`
-/

namespace A178536.P4783782747058752095
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007423 (n + 1) - (((if ∃ j, f1 j = n then 1 else 0) + 1 : ℕ) : ℤ)

end

end A178536.P4783782747058752095

namespace A178536

/-- `A007423(n+1)-(char[1]+1)` -/
def P4783782747058752095.Spec : Prop :=
  ∀ n, P4783782747058752095.a n = A178536 (n + 1)

end A178536

/-! ## A178536.P6510481560228115592

`Δ[A008683(n)+a(n-1)]` with `a(0)=1, a(1)=2, a(2)=0`
-/

namespace A178536.P6510481560228115592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 0] fun n f1 =>
  A008683 n + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A178536.P6510481560228115592

namespace A178536

/-- `Δ[A008683(n)+a(n-1)]` -/
def P6510481560228115592.Spec : Prop :=
  ∀ n, P6510481560228115592.a n = A178536 (n + 1)

end A178536

/-! ## A178536.P2633483318104897932

`A159075(n)+A008683(n+1)`
-/

namespace A178536.P2633483318104897932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159075 n + A008683 (n + 1)

end

end A178536.P2633483318104897932

namespace A178536

/-- `A159075(n)+A008683(n+1)` -/
def P2633483318104897932.Spec : Prop :=
  ∀ n, P2633483318104897932.a n = A178536 (n + 1)

end A178536

/-! ## A178536.P8251327372479592868

`A181434(n+1)+A063524(n)`
-/

namespace A178536.P8251327372479592868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181434 (n + 1) + A063524 n

end

end A178536.P8251327372479592868

namespace A178536

/-- `A181434(n+1)+A063524(n)` -/
def P8251327372479592868.Spec : Prop :=
  ∀ n, P8251327372479592868.a n = A178536 (n + 1)

end A178536

/-! ## A178536.P4018488866246966169

`A181434(n+1)-A159075(n)`
-/

namespace A178536.P4018488866246966169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181434 (n + 1) - A159075 n

end

end A178536.P4018488866246966169

namespace A178536

/-- `A181434(n+1)-A159075(n)` -/
def P4018488866246966169.Spec : Prop :=
  ∀ n, P4018488866246966169.a n = A178536 (n + 1)

end A178536

/-! ## A178536.P7000459447487216090

`A008683(n+1)*A178562(n)`
-/

namespace A178536.P7000459447487216090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1) * A178562 n

end

end A178536.P7000459447487216090

namespace A178536

/-- `A008683(n+1)*A178562(n)` -/
def P7000459447487216090.Spec : Prop :=
  ∀ n, P7000459447487216090.a n = A178536 (n + 1)

end A178536

/-! ## A178536.P1553263415594845339

`A008683(n+1)*A373565(n)`
-/

namespace A178536.P1553263415594845339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1) * A373565 n

end

end A178536.P1553263415594845339

namespace A178536

/-- `A008683(n+1)*A373565(n)` -/
def P1553263415594845339.Spec : Prop :=
  ∀ n, P1553263415594845339.a n = A178536 (n + 1)

end A178536

/-! ## A178536.P5870287011210647374

`A378225(n+1)/A043529(n)`
-/

namespace A178536.P5870287011210647374
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A378225 (n + 1) : ℚ) / (A043529 n : ℚ)

end

end A178536.P5870287011210647374

namespace A178536

/-- `A378225(n+1)/A043529(n)` -/
def P5870287011210647374.Spec : Prop :=
  ∀ n, P5870287011210647374.a n = (A178536 (n + 1) : ℚ)

end A178536

/-! ## A178536.P8684272788924781382

`A378225(n+1)/A152765(n)`
-/

namespace A178536.P8684272788924781382
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A378225 (n + 1) : ℚ) / (A152765 n : ℚ)

end

end A178536.P8684272788924781382

namespace A178536

/-- `A378225(n+1)/A152765(n)` -/
def P8684272788924781382.Spec : Prop :=
  ∀ n, P8684272788924781382.a n = (A178536 (n + 1) : ℚ)

end A178536

/-! ## A178536.P15641869355247400930

`A181435(n+1)/A373565(n)`
-/

namespace A178536.P15641869355247400930
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A181435 (n + 1) : ℚ) / (A373565 n : ℚ)

end

end A178536.P15641869355247400930

namespace A178536

/-- `A181435(n+1)/A373565(n)` -/
def P15641869355247400930.Spec : Prop :=
  ∀ n, P15641869355247400930.a n = (A178536 (n + 1) : ℚ)

end A178536

/-! ## A178536.P11022440087050330963

`A140664(n+1)%A010693(n)`
-/

namespace A178536.P11022440087050330963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A140664 (n + 1)) (A010693 n)

end

end A178536.P11022440087050330963

namespace A178536

/-- `A140664(n+1)%A010693(n)` -/
def P11022440087050330963.Spec : Prop :=
  ∀ n, P11022440087050330963.a n = A178536 (n + 1)

end A178536

/-! ## A178536.P2121440647420131263

`xor(A008683(n+1), A063524(n))`
-/

namespace A178536.P2121440647420131263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A008683 (n + 1)) (A063524 n)

end

end A178536.P2121440647420131263

namespace A178536

/-- `xor(A008683(n+1), A063524(n))` -/
def P2121440647420131263.Spec : Prop :=
  ∀ n, P2121440647420131263.a n = A178536 (n + 1)

end A178536

/-! ## A178536.P7189218029414345557

`A154955(n+1)-A157658(n+1)`
-/

namespace A178536.P7189218029414345557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154955 (n + 1) - A157658 (n + 1)

end

end A178536.P7189218029414345557

namespace A178536

/-- `A154955(n+1)-A157658(n+1)` -/
def P7189218029414345557.Spec : Prop :=
  ∀ n, P7189218029414345557.a n = A178536 (n + 1)

end A178536

/-! ## A178536.P9621818711173780487

`A008683(n+1)*A294619(n+1)`
-/

namespace A178536.P9621818711173780487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1) * A294619 (n + 1)

end

end A178536.P9621818711173780487

namespace A178536

/-- `A008683(n+1)*A294619(n+1)` -/
def P9621818711173780487.Spec : Prop :=
  ∀ n, P9621818711173780487.a n = A178536 (n + 1)

end A178536

/-! ## A178536.P3001423510807708144

`A181435(n+1)+2*A063524(n)`
-/

namespace A178536.P3001423510807708144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181435 (n + 1) + 2 * A063524 n

end

end A178536.P3001423510807708144

namespace A178536

/-- `A181435(n+1)+2*A063524(n)` -/
def P3001423510807708144.Spec : Prop :=
  ∀ n, P3001423510807708144.a n = A178536 (n + 1)

end A178536

/-! ## A178536.P14117646963650580174

`A378225(n+1)/(2-A036987(n))`
-/

namespace A178536.P14117646963650580174
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A378225 (n + 1) : ℚ) / (2 - A036987 n : ℚ)

end

end A178536.P14117646963650580174

namespace A178536

/-- `A378225(n+1)/(2-A036987(n))` -/
def P14117646963650580174.Spec : Prop :=
  ∀ n, P14117646963650580174.a n = (A178536 (n + 1) : ℚ)

end A178536

/-!
# A178537: a(n) = (2n+1)^(2n+1) mod 2^(2n+1).

The programs for A178537, the canonical program `A178537.P11838674396279986634` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A178537 has offset 0).

The definition of A178537 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `((2*n+1)^(2*n+1))%(2^(2*n+1))` (program `A178537.P11838674396279986634`, by `A178537.P11838674396279986634.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A178537.P11838674396279986634

`((2*n+1)^(2*n+1))%(2^(2*n+1))`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A178537

/-- `((2*n+1)^(2*n+1))%(2^(2*n+1))` -/
def P11838674396279986634.Spec : Prop :=
  ∀ n, (P11838674396279986634.a n : ℤ) = A178537 n

theorem P11838674396279986634.correct : P11838674396279986634.Spec := by
  intro n
  simp only [A178537]

end A178537

/-! ## A178537.P6153667671926632340

`and((2*n+1)^(2*n+1), A083420(n))`
-/

namespace A178537.P6153667671926632340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((2 * n + 1) ^ (2 * n + 1) : ℤ) (A083420 n)

end

end A178537.P6153667671926632340

namespace A178537

/-- `and((2*n+1)^(2*n+1), A083420(n))` -/
def P6153667671926632340.Spec : Prop :=
  ∀ n, P6153667671926632340.a n = A178537 n

end A178537

/-! ## A178537.P11735844130469834706

`and(A000225(2*n+1), A085529(n))`
-/

namespace A178537.P11735844130469834706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000225 (2 * n + 1)) (A085529 n)

end

end A178537.P11735844130469834706

namespace A178537

/-- `and(A000225(2*n+1), A085529(n))` -/
def P11735844130469834706.Spec : Prop :=
  ∀ n, P11735844130469834706.a n = A178537 n

end A178537

/-! ## A178537.P3219685710050589253

`and(2*A000079(n)²-1, A000312(2*n+1))`
-/

namespace A178537.P3219685710050589253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (2 * A000079 n ^ 2 - 1) (A000312 (2 * n + 1))

end

end A178537.P3219685710050589253

namespace A178537

/-- `and(2*A000079(n)²-1, A000312(2*n+1))` -/
def P3219685710050589253.Spec : Prop :=
  ∀ n, P3219685710050589253.a n = A178537 n

end A178537

/-! ## A178537.P17112268623857788631

`and(A000079(2*n+1)-1, A000312(2*n+1))`
-/

namespace A178537.P17112268623857788631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000079 (2 * n + 1) - 1) (A000312 (2 * n + 1))

end

end A178537.P17112268623857788631

namespace A178537

/-- `and(A000079(2*n+1)-1, A000312(2*n+1))` -/
def P17112268623857788631.Spec : Prop :=
  ∀ n, P17112268623857788631.a n = A178537 n

end A178537

/-!
# A178538: Records in A169819.

The programs for A178538, there is no canonical definition to state claims against.
-/

/-! ## A178538.P10267850689121488852

`∑[A221646(A014945(2*(n+2)))]`
-/

namespace A178538.P10267850689121488852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221646 (A014945 (2 * (n + 2))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A178538.P10267850689121488852

/-!
# A178539: Where records occur in A169819.

The programs for A178539, there is no canonical definition to state claims against.
-/

/-! ## A178539.P8045200595927923575

`eq[p?[A177849(2*n)], ∏{e}[n+1, #+1]]`
-/

namespace A178539.P8045200595927923575
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177849 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f4 n), (Nat.factorization (f4 n) p + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f3 j : ℤ)) n

end

end A178539.P8045200595927923575

/-! ## A178539.P16588470070163033428

`eq[A046051(n+1), A103754(n+1)]`
-/

namespace A178539.P16588470070163033428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046051 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103754 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A178539.P16588470070163033428

/-! ## A178539.P15653170063462091246

`eq[A070105(n+1), A090465(n+1)]`
-/

namespace A178539.P15653170063462091246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070105 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090465 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A178539.P15653170063462091246

/-! ## A178539.P11096224223382386692

`eq[A103754(n+1), A297294(n+1)]`
-/

namespace A178539.P11096224223382386692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103754 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297294 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A178539.P11096224223382386692

/-!
# A178541: Prime numbers of the form n*b^n + 1, where b, n >= 2.

The programs for A178541, there is no canonical definition to state claims against.
-/

/-! ## A178541.P3249326892246947104

`p?[A171607(n+1)+1]`
-/

namespace A178541.P3249326892246947104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171607 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A178541.P3249326892246947104

/-! ## A178541.P15510823760886194274

`∩[A000040(n+1), A171607(n+1)+1]`
-/

namespace A178541.P15510823760886194274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171607 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A178541.P15510823760886194274

/-! ## A178541.P3338715688524412465

`∩[A106950(n+1), A171607(n+1)+1]`
-/

namespace A178541.P3338715688524412465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106950 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171607 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A178541.P3338715688524412465

/-! ## A178541.P6569645574489118751

`p?[A004442(A171607(n+1))]`
-/

namespace A178541.P6569645574489118751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A171607 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A178541.P6569645574489118751

/-! ## A178541.P10931937777628934290

`∩[A106950(n+1), A004442(A171607(n+1))]`
-/

namespace A178541.P10931937777628934290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106950 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A171607 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A178541.P10931937777628934290

/-!
# A178542: Difference A063990(2n)-A063990(2n-1) between amicable numbers.

The programs for A178542, there is no canonical definition to state claims against.
-/

/-! ## A178542.P1670846778948514500

`A063990(2*(n+1))-A063990(2*(n+1)-1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A178542.P1670846778948514500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063990 (2 * (n + 1)) - A063990 (2 * (n + 1) - 1)

end

end A178542.P1670846778948514500

/-! ## A178542.P148887142831300366

`A306613(Δ[n²])`
-/

namespace A178542.P148887142831300366
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306613 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A178542.P148887142831300366

/-! ## A178542.P17795491172540580647

`A161005(n+1)%A063990(Δ[n²])`
-/

namespace A178542.P17795491172540580647
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A161005 (n + 1)) (A063990 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat)

end

end A178542.P17795491172540580647

/-!
# A178543: Partial sums of round(3^n/5).

The programs for A178543, the canonical program `A178543.P6909048353617366108` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A178543 has offset 0).

The definition of A178543 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A178543.P14073375384907738838

`a(n-4)+8*3^(n-3)` with `a(0)=0, a(1)=1, a(2)=3, a(3)=8`
-/

namespace A178543.P14073375384907738838
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 1, 3, 8] fun n a =>
  a (n - 4) + 8 * (3 : ℚ) ^ ((n : ℤ) - 3 : ℤ)

end

end A178543.P14073375384907738838

namespace A178543

/-- `a(n-4)+8*3^(n-3)` -/
def P14073375384907738838.Spec : Prop :=
  ∀ n, P14073375384907738838.a n = (A178543 n : ℚ)

end A178543

/-! ## A178543.P6909048353617366108

`3*a(n-1)-a(n-2)+3*a(n-3)` with `a(0)=0, a(1)=1, a(2)=3`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A178543

/-- `3*a(n-1)-a(n-2)+3*a(n-3)` -/
def P6909048353617366108.Spec : Prop :=
  ∀ n, P6909048353617366108.a n = A178543 n

theorem P6909048353617366108.correct : P6909048353617366108.Spec := by
  intro n
  simp only [A178543]

end A178543

/-! ## A178543.P16857520690907526979

`round(3^(n+1)/10)`
-/

namespace A178543.P16857520690907526979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((3 ^ (n + 1) : ℚ) / 10)

end

end A178543.P16857520690907526979

namespace A178543

/-- `round(3^(n+1)/10)` -/
def P16857520690907526979.Spec : Prop :=
  ∀ n, P16857520690907526979.a n = A178543 n

end A178543

/-! ## A178543.P2849322380394576546

`3^(n+1)/10-(-1)^n*A112030(n)/10`
-/

namespace A178543.P2849322380394576546
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 ^ (n + 1) : ℚ) / 10 - ((-1) ^ n * A112030 n : ℚ) / 10

end

end A178543.P2849322380394576546

namespace A178543

/-- `3^(n+1)/10-(-1)^n*A112030(n)/10` -/
def P2849322380394576546.Spec : Prop :=
  ∀ n, P2849322380394576546.a n = (A178543 n : ℚ)

end A178543

/-! ## A178543.P11487345197309233294

`ogf(x/(1-3x+x^2-3x^3))`
-/

namespace A178543.P11487345197309233294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1] [1, -3, 1, -3] n

end

end A178543.P11487345197309233294

namespace A178543

/-- `ogf(x/(1-3x+x^2-3x^3))` -/
def P11487345197309233294.Spec : Prop :=
  ∀ n, P11487345197309233294.a n = A178543 n

end A178543

/-! ## A178543.P5339979216271348124

`xor(3*a(n-1), n%2)` with `a(0)=0`
-/

namespace A178543.P5339979216271348124
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Nat.xor (3 * a (n - 1)) (n % 2)

end

end A178543.P5339979216271348124

namespace A178543

/-- `xor(3*a(n-1), n%2)` -/
def P5339979216271348124.Spec : Prop :=
  ∀ n, (P5339979216271348124.a n : ℤ) = A178543 n

end A178543

/-! ## A178543.P688277609439799498

`xor(3*a(n-1), and(1, n))` with `a(0)=0`
-/

namespace A178543.P688277609439799498
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Nat.xor (3 * a (n - 1)) (Nat.land 1 n)

end

end A178543.P688277609439799498

namespace A178543

/-- `xor(3*a(n-1), and(1, n))` -/
def P688277609439799498.Spec : Prop :=
  ∀ n, (P688277609439799498.a n : ℤ) = A178543 n

end A178543

/-! ## A178543.P17518677043150304251

`3^(n-1)-a(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A178543.P17518677043150304251
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 1] fun n a =>
  (3 : ℚ) ^ ((n : ℤ) - 1 : ℤ) - a (n - 2)

end

end A178543.P17518677043150304251

namespace A178543

/-- `3^(n-1)-a(n-2)` -/
def P17518677043150304251.Spec : Prop :=
  ∀ n, P17518677043150304251.a n = (A178543 n : ℚ)

end A178543

/-! ## A178543.P5864078332301203418

`xor(3*a(n-1), ∑[-a(n-1)])` with `a(0)=0, a(1)=1`
-/

namespace A178543.P5864078332301203418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  -f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  Int.xor (3 * a (n - 1)) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A178543.P5864078332301203418

namespace A178543

/-- `xor(3*a(n-1), ∑[-a(n-1)])` -/
def P5864078332301203418.Spec : Prop :=
  ∀ n, P5864078332301203418.a n = A178543 n

end A178543

/-! ## A178543.P3808477646626899353

`∑[A383324(n)]`
-/

namespace A178543.P3808477646626899353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383324 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A178543.P3808477646626899353

namespace A178543

/-- `∑[A383324(n)]` -/
def P3808477646626899353.Spec : Prop :=
  ∀ n, P3808477646626899353.a n = A178543 n

end A178543

/-! ## A178543.P16459575385993947274

`Δ[A177881(n)]`
-/

namespace A178543.P16459575385993947274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177881 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A178543.P16459575385993947274

namespace A178543

/-- `Δ[A177881(n)]` -/
def P16459575385993947274.Spec : Prop :=
  ∀ n, P16459575385993947274.a n = A178543 n

end A178543

/-! ## A178543.P9560360126513221207

`xor(3*a(n-1), A001221(gcd(n+1, 2*n)))` with `a(0)=0`
-/

namespace A178543.P9560360126513221207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  Int.xor (3 * a (n - 1)) (A001221 (Nat.gcd (n + 1) (2 * n)))

end

end A178543.P9560360126513221207

namespace A178543

/-- `xor(3*a(n-1), A001221(gcd(n+1, 2*n)))` -/
def P9560360126513221207.Spec : Prop :=
  ∀ n, P9560360126513221207.a n = A178543 n

end A178543

/-! ## A178543.P3794590515908098123

`A177881(n+1)-A177881(n)`
-/

namespace A178543.P3794590515908098123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177881 (n + 1) - A177881 n

end

end A178543.P3794590515908098123

namespace A178543

/-- `A177881(n+1)-A177881(n)` -/
def P3794590515908098123.Spec : Prop :=
  ∀ n, P3794590515908098123.a n = A178543 n

end A178543

/-! ## A178543.P9616734611707870353

`∑[A003462(n)-2*A177881(n)]`
-/

namespace A178543.P9616734611707870353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003462 n - 2 * A177881 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A178543.P9616734611707870353

namespace A178543

/-- `∑[A003462(n)-2*A177881(n)]` -/
def P9616734611707870353.Spec : Prop :=
  ∀ n, P9616734611707870353.a n = A178543 n

end A178543

/-! ## A178543.P10400603108337090908

`floor(∑[3*a(n-1)]/5)` with `a(0)=3, a(1)=3`
-/

namespace A178543.P10400603108337090908
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3, 3] fun n f1 =>
  3 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 5⌋

end

end A178543.P10400603108337090908

namespace A178543

/-- `floor(∑[3*a(n-1)]/5)` -/
def P10400603108337090908.Spec : Prop :=
  ∀ n, P10400603108337090908.a n = A178543 n

end A178543

/-! ## A178543.P1752395136949699171

`ceil(A029858(n+1)/5)`
-/

namespace A178543.P1752395136949699171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A029858 (n + 1) : ℚ) / 5⌉

end

end A178543.P1752395136949699171

namespace A178543

/-- `ceil(A029858(n+1)/5)` -/
def P1752395136949699171.Spec : Prop :=
  ∀ n, P1752395136949699171.a n = A178543 n

end A178543

/-! ## A178543.P16115549035820655737

`A367484(n)-A039300(n)`
-/

namespace A178543.P16115549035820655737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367484 n - A039300 n

end

end A178543.P16115549035820655737

namespace A178543

/-- `A367484(n)-A039300(n)` -/
def P16115549035820655737.Spec : Prop :=
  ∀ n, P16115549035820655737.a n = A178543 n

end A178543

/-! ## A178543.P17212242035705134495

`Δ[or(2, floor((∑[3^n]+2)/10))]`
-/

namespace A178543.P17212242035705134495
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 ⌊((∑ j ∈ Finset.range (n + 1), f2 j + 2 : ℕ) : ℚ) / 10⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A178543.P17212242035705134495

namespace A178543

/-- `Δ[or(2, floor((∑[3^n]+2)/10))]` -/
def P17212242035705134495.Spec : Prop :=
  ∀ n, P17212242035705134495.a n = A178543 n

end A178543

/-! ## A178543.P17468162744356750005

`Δ[xor(2, floor((∑[3^n]+2)/10))]`
-/

namespace A178543.P17468162744356750005
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 2 ⌊((∑ j ∈ Finset.range (n + 1), f2 j + 2 : ℕ) : ℚ) / 10⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A178543.P17468162744356750005

namespace A178543

/-- `Δ[xor(2, floor((∑[3^n]+2)/10))]` -/
def P17468162744356750005.Spec : Prop :=
  ∀ n, P17468162744356750005.a n = A178543 n

end A178543

/-!
# A178544: a(n) are such that n or one of its substrings is divisible by every integer from 1 to a(n).

The programs for A178544, there is no canonical definition to state claims against.
-/

/-! ## A178544.P16937059381991101019

`A055874(A124199(2*(n+1))-A023482(n))`
-/

namespace A178544.P16937059381991101019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055874 (A124199 (2 * (n + 1)) - A023482 n).toNat

end

end A178544.P16937059381991101019

/-! ## A178544.P17046291989465490614

`A008619(and(A033999(n), A319841(4*n+10)))`
-/

namespace A178544.P17046291989465490614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (Int.land (A033999 n) (A319841 (4 * n + 10))).toNat

end

end A178544.P17046291989465490614

/-! ## A178544.P6576297657852734829

`A237271(A048676(2*(n+2))^A237271(3*(n+1)))`
-/

namespace A178544.P6576297657852734829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237271 (SequenceMachineLib.roundAway ((A048676 (2 * (n + 2)) : ℚ) ^ (A237271 (3 * (n + 1)) : ℤ))).toNat

end

end A178544.P6576297657852734829

/-! ## A178544.P13675426687890741977

`A028920(A010156(n)*A077028(A185357(n)))`
-/

namespace A178544.P13675426687890741977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028920 (A010156 n * A077028 (A185357 n).toNat).toNat

end

end A178544.P13675426687890741977

/-! ## A178544.P17890676159264826463

`A137735(A083259(n+1))%A125237(A000041(n))`
-/

namespace A178544.P17890676159264826463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A137735 (A083259 (n + 1)).toNat) (A125237 (A000041 n).toNat)

end

end A178544.P17890676159264826463

/-!
# A178545: Primes p such that q = p^2 + p + 1 is an emirp.

The programs for A178545, there is no canonical definition to state claims against.
-/

/-! ## A178545.P3422051636737937500

`record[A006530(or(2, A215705(n)))]`
-/

namespace A178545.P3422051636737937500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Int.lor 2 (A215705 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A178545.P3422051636737937500

/-!
# A178547: Composite numbers; start sequence with composite number and end with prime, length of successive sequences are strictly increasing.

The programs for A178547, there is no canonical definition to state claims against.
-/

/-! ## A178547.P2217891529047166209

`A070865(n+2)+1`
-/

namespace A178547.P2217891529047166209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070865 (n + 2) + 1

end

end A178547.P2217891529047166209

/-! ## A178547.P13286948347001834124

`or(1, A085626(n+1))+1`
-/

namespace A178547.P13286948347001834124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A085626 (n + 1)) + 1

end

end A178547.P13286948347001834124

/-! ## A178547.P8143587299630153965

`or(1, ∑[A051935(n+1)])+1`
-/

namespace A178547.P8143587299630153965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051935 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (∑ j ∈ Finset.range (n + 1), f1 j) + 1

end

end A178547.P8143587299630153965

/-! ## A178547.P11332459017286037992

`A061767(A073847(n))`
-/

namespace A178547.P11332459017286037992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061767 (A073847 n).toNat

end

end A178547.P11332459017286037992

/-! ## A178547.P9030551474068898570

`A071193(A085626(n+1))`
-/

namespace A178547.P9030551474068898570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071193 (A085626 (n + 1)).toNat

end

end A178547.P9030551474068898570

/-!
# A178548: a(n) is the smallest prime p such that q = 2 * p + prime(n+2) is prime AND A007953(p) = A007953(q) where A007953 is sum of digits.

The programs for A178548, there is no canonical definition to state claims against.
-/

/-! ## A178548.P1841707453122327418

`A006530(A178561(n+1)-A000040(n+3))`
-/

namespace A178548.P1841707453122327418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A178561 (n + 1) - A000040 (n + 3)).toNat

end

end A178548.P1841707453122327418

/-!
# A178549: a(n) is a composite number at the start of an interval of consecutive integers, ending in a prime, and non-overlapping with and at least as long as the interval addressed by a(n-1).

The programs for A178549, the canonical program `A178549.P1842072267796147829` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A178549 has offset 1).

The definition of A178549 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A070866, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A178549.P1842072267796147829

`1+A070866(n+2)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A178549

/-- `1+A070866(n+2)` -/
def P1842072267796147829.Spec : Prop :=
  ∀ n, P1842072267796147829.a n = A178549 (n + 1)

theorem P1842072267796147829.correct : P1842072267796147829.Spec := by
  intro n
  simp only [A178549, Nat.add_sub_cancel]

end A178549

/-! ## A178549.P14145209294286264164

`∑[A075569(n+3)]+3`
-/

namespace A178549.P14145209294286264164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075569 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 3

end

end A178549.P14145209294286264164

namespace A178549

/-- `∑[A075569(n+3)]+3` -/
def P14145209294286264164.Spec : Prop :=
  ∀ n, P14145209294286264164.a n = A178549 (n + 1)

end A178549

/-! ## A178549.P13882271696344903784

`A000113(A070866(n+2))`
-/

namespace A178549.P13882271696344903784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000113 (A070866 (n + 2)).toNat

end

end A178549.P13882271696344903784

namespace A178549

/-- `A000113(A070866(n+2))` -/
def P13882271696344903784.Spec : Prop :=
  ∀ n, P13882271696344903784.a n = A178549 (n + 1)

end A178549

/-! ## A178549.P5956521406478919859

`∑[A066104(A075569(n+3))]`
-/

namespace A178549.P5956521406478919859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066104 (A075569 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A178549.P5956521406478919859

namespace A178549

/-- `∑[A066104(A075569(n+3))]` -/
def P5956521406478919859.Spec : Prop :=
  ∀ n, P5956521406478919859.a n = A178549 (n + 1)

end A178549

/-! ## A178549.P15191300828558758316

`A230775(A200085(n+2))+1`
-/

namespace A178549.P15191300828558758316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230775 (A200085 (n + 2)).toNat + 1

end

end A178549.P15191300828558758316

namespace A178549

/-- `A230775(A200085(n+2))+1` -/
def P15191300828558758316.Spec : Prop :=
  ∀ n, P15191300828558758316.a n = A178549 (n + 1)

end A178549

/-!
# A178550: Primes with exactly one digit 1.

The programs for A178550, there is no canonical definition to state claims against.
-/

/-! ## A178550.P13034073910102239926

`A000040(eq[1, A085975(n+1)]+1)`
-/

namespace A178550.P13034073910102239926
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085975 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A178550.P13034073910102239926

/-! ## A178550.P16848305265939483545

`p?[A043493(n+1)]`
-/

namespace A178550.P16848305265939483545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043493 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A178550.P16848305265939483545

/-! ## A178550.P3615631390157605114

`filter[A043493(n+1), A010051(#)]`
-/

namespace A178550.P3615631390157605114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043493 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A178550.P3615631390157605114

/-! ## A178550.P14540694808033279518

`∩[A000040(n+1), A043493(n+1)]`
-/

namespace A178550.P14540694808033279518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043493 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A178550.P14540694808033279518

/-! ## A178550.P1086707217769209478

`∩[A004139(n+1), A043493(n+1)]`
-/

namespace A178550.P1086707217769209478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043493 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A178550.P1086707217769209478

/-! ## A178550.P12643753029350247093

`∩[A043493(n+1), A045319(n+1)]`
-/

namespace A178550.P12643753029350247093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043493 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A178550.P12643753029350247093

/-! ## A178550.P18153411744048001321

`∩[A043493(n+1), A045344(n+1)]`
-/

namespace A178550.P18153411744048001321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043493 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A178550.P18153411744048001321

/-! ## A178550.P11536316830724440853

`∩[A043493(n+1), A051948(n+1)]`
-/

namespace A178550.P11536316830724440853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043493 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A178550.P11536316830724440853

/-! ## A178550.P17715996698583966783

`∩[A043493(n+1), A065091(n+1)]`
-/

namespace A178550.P17715996698583966783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043493 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A178550.P17715996698583966783

/-! ## A178550.P4270089939897318546

`∩[A043493(n+1), A106118(n+1)]`
-/

namespace A178550.P4270089939897318546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043493 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106118 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A178550.P4270089939897318546

/-! ## A178550.P10470344095911360162

`∩[A043493(n+1), A108719(n+1)]`
-/

namespace A178550.P10470344095911360162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043493 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108719 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A178550.P10470344095911360162

/-! ## A178550.P398798937201791379

`∩[A043493(n+1), A116974(n+1)]`
-/

namespace A178550.P398798937201791379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043493 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116974 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A178550.P398798937201791379

/-! ## A178550.P1518180225859233269

`∩[A043493(n+1), A161346(n+1)]`
-/

namespace A178550.P1518180225859233269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043493 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161346 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A178550.P1518180225859233269

/-! ## A178550.P7335898778541307052

`∩[A043493(n+1), A161428(n+1)]`
-/

namespace A178550.P7335898778541307052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043493 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161428 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A178550.P7335898778541307052

/-! ## A178550.P18004445941463459831

`∩[A043493(n+1), A175787(n+1)]`
-/

namespace A178550.P18004445941463459831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043493 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175787 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A178550.P18004445941463459831

/-! ## A178550.P1085373072086056936

`∩[A043493(n+1), A182986(n+1)]`
-/

namespace A178550.P1085373072086056936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043493 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A178550.P1085373072086056936

/-! ## A178550.P11581455495531829708

`∩[A043493(n+1), A208270(n+1)]`
-/

namespace A178550.P11581455495531829708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043493 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208270 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A178550.P11581455495531829708

/-! ## A178550.P13057245039463876122

`∩[A043493(n+1), A215848(n+1)]`
-/

namespace A178550.P13057245039463876122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043493 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215848 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A178550.P13057245039463876122

/-! ## A178550.P14404294970156178178

`∩[A043493(n+1), A154981(n+1)]`
-/

namespace A178550.P14404294970156178178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043493 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154981 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A178550.P14404294970156178178

/-! ## A178550.P13681219066302785136

`p?[n*A268643(n)]`
-/

namespace A178550.P13681219066302785136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A268643 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A178550.P13681219066302785136

/-!
# A178551: Primes with exactly two 2's.

The programs for A178551, the canonical program `A178551.P17050993605296381900` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A178551 has offset 1).

The definition of A178551 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 648 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A178551.P17050993605296381900

`p?[A043498(n+1)]`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A178551

/-- `p?[A043498(n+1)]` -/
def P17050993605296381900.Spec : Prop :=
  ∀ n, P17050993605296381900.a n = A178551 (n + 1)

theorem P17050993605296381900.correct : P17050993605296381900.Spec := by
  intro n
  simp only [A178551, Nat.add_sub_cancel]

end A178551

/-! ## A178551.P12642296404935630627

`p?[record[A043498(A286547(n))]]`
-/

namespace A178551.P12642296404935630627
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043498 (A286547 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A178551.P12642296404935630627

namespace A178551

/-- `p?[record[A043498(A286547(n))]]` -/
def P12642296404935630627.Spec : Prop :=
  ∀ n, P12642296404935630627.a n = A178551 (n + 1)

end A178551

/-! ## A178551.P1630710877546193789

`p?[record[A043498(A323889(n))]]`
-/

namespace A178551.P1630710877546193789
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043498 (A323889 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A178551.P1630710877546193789

namespace A178551

/-- `p?[record[A043498(A323889(n))]]` -/
def P1630710877546193789.Spec : Prop :=
  ∀ n, P1630710877546193789.a n = A178551 (n + 1)

end A178551

/-! ## A178551.P8525146511719323274

`∩[A043498(n+1), A073064(n+1)]`
-/

namespace A178551.P8525146511719323274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043498 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073064 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A178551.P8525146511719323274

namespace A178551

/-- `∩[A043498(n+1), A073064(n+1)]` -/
def P8525146511719323274.Spec : Prop :=
  ∀ n, (P8525146511719323274.a n : ℤ) = A178551 (n + 1)

end A178551

/-! ## A178551.P12078696766945323307

`∩[A043498(n+1), A208272(n+1)]`
-/

namespace A178551.P12078696766945323307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043498 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208272 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A178551.P12078696766945323307

namespace A178551

/-- `∩[A043498(n+1), A208272(n+1)]` -/
def P12078696766945323307.Spec : Prop :=
  ∀ n, (P12078696766945323307.a n : ℤ) = A178551 (n + 1)

end A178551

/-! ## A178551.P10654737720812258356

`∩[A000040(n+1), A043498(n+1)]`
-/

namespace A178551.P10654737720812258356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043498 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A178551.P10654737720812258356

namespace A178551

/-- `∩[A000040(n+1), A043498(n+1)]` -/
def P10654737720812258356.Spec : Prop :=
  ∀ n, (P10654737720812258356.a n : ℤ) = A178551 (n + 1)

end A178551

/-! ## A178551.P16279051719655288852

`filter[A043498(n+1), A010051(#)]`
-/

namespace A178551.P16279051719655288852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043498 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A178551.P16279051719655288852

namespace A178551

/-- `filter[A043498(n+1), A010051(#)]` -/
def P16279051719655288852.Spec : Prop :=
  ∀ n, P16279051719655288852.a n = A178551 (n + 1)

end A178551

/-! ## A178551.P13119906613069191735

`p?[record[A043498(A246694(n))]]`
-/

namespace A178551.P13119906613069191735
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043498 (A246694 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A178551.P13119906613069191735

namespace A178551

/-- `p?[record[A043498(A246694(n))]]` -/
def P13119906613069191735.Spec : Prop :=
  ∀ n, P13119906613069191735.a n = A178551 (n + 1)

end A178551

/-! ## A178551.P16774266886603148568

`p?[record[A043498(A065648(n))]]`
-/

namespace A178551.P16774266886603148568
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043498 (A065648 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A178551.P16774266886603148568

namespace A178551

/-- `p?[record[A043498(A065648(n))]]` -/
def P16774266886603148568.Spec : Prop :=
  ∀ n, P16774266886603148568.a n = A178551 (n + 1)

end A178551

/-!
# A178552: Primes with exactly three 3's.

The programs for A178552, there is no canonical definition to state claims against.
-/

/-! ## A178552.P1308253435815504852

`p?[A043503(n+1)]`
-/

namespace A178552.P1308253435815504852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043503 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A178552.P1308253435815504852

/-! ## A178552.P11485933864260076218

`p?[record[A043503(A323889(n))]]`
-/

namespace A178552.P11485933864260076218
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043503 (A323889 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A178552.P11485933864260076218

/-! ## A178552.P15928063099532125603

`∩[A043503(n+1), A245623(n+1)]`
-/

namespace A178552.P15928063099532125603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043503 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245623 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A178552.P15928063099532125603

/-! ## A178552.P3405470603713391161

`p?[record[A043503(A133310(n))]]`
-/

namespace A178552.P3405470603713391161
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043503 (A133310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A178552.P3405470603713391161

/-! ## A178552.P8026442190227725446

`p?[record[A043503(A246694(n))]]`
-/

namespace A178552.P8026442190227725446
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043503 (A246694 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A178552.P8026442190227725446

/-! ## A178552.P10397196933668413015

`∩[A043503(n+1), A212525(n+1)]`
-/

namespace A178552.P10397196933668413015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043503 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212525 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A178552.P10397196933668413015

/-! ## A178552.P9904991172790565468

`∩[A043503(n+1), A073064(n+1)]`
-/

namespace A178552.P9904991172790565468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043503 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073064 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A178552.P9904991172790565468

/-! ## A178552.P17750971396016469631

`record[A006530(A043503(n+3))]`
-/

namespace A178552.P17750971396016469631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A043503 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A178552.P17750971396016469631

/-! ## A178552.P2350187083804035102

`filter[A043503(n+1), A010051(#)]`
-/

namespace A178552.P2350187083804035102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043503 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A178552.P2350187083804035102

/-! ## A178552.P7480538053517635885

`filter[A043503(n+1), A069513(#)]`
-/

namespace A178552.P7480538053517635885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043503 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A069513 (f1 j).toNat = 1) n)

end

end A178552.P7480538053517635885

/-! ## A178552.P3310946383409142453

`filter[A043503(n+1), A355937(#)]`
-/

namespace A178552.P3310946383409142453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043503 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355937 (f1 j).toNat = 1) n)

end

end A178552.P3310946383409142453

/-! ## A178552.P18343068870471371966

`∩[A043503(n+1), A182051(n+1)]`
-/

namespace A178552.P18343068870471371966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043503 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182051 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A178552.P18343068870471371966

/-! ## A178552.P2122586647596171637

`filter[A043503(n+1), A174897(#)]`
-/

namespace A178552.P2122586647596171637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043503 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A174897 (f1 j).toNat = 1) n)

end

end A178552.P2122586647596171637

/-! ## A178552.P13880513430448647780

`filter[A043503(n+1), A302777(#)]`
-/

namespace A178552.P13880513430448647780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043503 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A302777 (f1 j).toNat = 1) n)

end

end A178552.P13880513430448647780

/-! ## A178552.P5449140532775793498

`filter[A043503(n+1), A323152(#)]`
-/

namespace A178552.P5449140532775793498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043503 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323152 (f1 j).toNat = 1) n)

end

end A178552.P5449140532775793498

/-! ## A178552.P4958224632158677223

`filter[A043503(n+1), A323153(#)]`
-/

namespace A178552.P4958224632158677223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043503 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323153 (f1 j).toNat = 1) n)

end

end A178552.P4958224632158677223

/-! ## A178552.P14391045799306790667

`filter[A043503(n+1), A345950(#)]`
-/

namespace A178552.P14391045799306790667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043503 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A345950 (f1 j).toNat = 1) n)

end

end A178552.P14391045799306790667

/-! ## A178552.P17178843301707038822

`filter[A043503(n+1), A351957(#)]`
-/

namespace A178552.P17178843301707038822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043503 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A351957 (f1 j).toNat = 1) n)

end

end A178552.P17178843301707038822

/-! ## A178552.P8531407427984061643

`filter[A043503(n+1), A353817(#)]`
-/

namespace A178552.P8531407427984061643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043503 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353817 (f1 j).toNat = 1) n)

end

end A178552.P8531407427984061643

/-!
# A178553: Primes with exactly four 4's.

The programs for A178553, there is no canonical definition to state claims against.
-/

/-! ## A178553.P17476618374748101167

`p?[A043508(n+1)]`
-/

namespace A178553.P17476618374748101167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043508 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A178553.P17476618374748101167

/-! ## A178553.P723393312359364425

`record[p?[A043508(A291766(n))]]`
-/

namespace A178553.P723393312359364425
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043508 (A291766 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A178553.P723393312359364425

/-!
# A178559: Smallest prime using the digit n exactly n times.

The programs for A178559, there is no canonical definition to state claims against.
-/

/-! ## A178559.P2819671756051979445

`A069569(n+1)`
-/

namespace A178559.P2819671756051979445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069569 (n + 1)

end

end A178559.P2819671756051979445

/-! ## A178559.P16026693779125734483

`record[A069569(∏{e}[n, #])]`
-/

namespace A178559.P16026693779125734483
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069569 (∏ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A178559.P16026693779125734483

/-! ## A178559.P16323802267279794963

`record[A069569(abs(1-n))]`
-/

namespace A178559.P16323802267279794963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069569 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A178559.P16323802267279794963

/-! ## A178559.P16692388669424698090

`abs(Δ[-∑[A069569(n)]])`
-/

namespace A178559.P16692388669424698090
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069569 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A178559.P16692388669424698090

/-! ## A178559.P7034442403918073418

`or(1, A069569(abs(xor(n, -1))))`
-/

namespace A178559.P7034442403918073418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A069569 |Int.xor (n : ℤ) (-1)|.toNat)

end

end A178559.P7034442403918073418

/-!
# A178562: First differences of A178344.

The programs for A178562, there is no canonical definition to state claims against.
-/

/-! ## A178562.P3158549167776292664

`A178344(n+1)-A178344(n)`
-/

namespace A178562.P3158549167776292664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178344 (n + 1) - A178344 n

end

end A178562.P3158549167776292664

/-! ## A178562.P1933505820452942124

`Δ[A178344(n)]`
-/

namespace A178562.P1933505820452942124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178344 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A178562.P1933505820452942124

/-! ## A178562.P4167680406164119992

`Δ[A222416(A019565(n))+A080791(n)]`
-/

namespace A178562.P4167680406164119992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222416 (A019565 n).toNat + A080791 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A178562.P4167680406164119992

/-!
# A178563: Primes p such that A178344(p) is also prime.

The programs for A178563, there is no canonical definition to state claims against.
-/

/-! ## A178563.P2910864666966934154

`p?[n*A033676(A178344(n))]`
-/

namespace A178563.P2910864666966934154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A033676 (A178344 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A178563.P2910864666966934154

/-! ## A178563.P14077916223020378328

`eq[A175126(n)², A033676(A178344(n))]`
-/

namespace A178563.P14077916223020378328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175126 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033676 (A178344 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A178563.P14077916223020378328

/-! ## A178563.P9984580276157620039

`eq[A003415(n), A033676(A178344(n))]`
-/

namespace A178563.P9984580276157620039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033676 (A178344 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A178563.P9984580276157620039

/-! ## A178563.P4792900218854357226

`eq[1, A175126(A175126(n)*A178344(n))]`
-/

namespace A178563.P4792900218854357226
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175126 (A175126 n * A178344 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A178563.P4792900218854357226

/-!
# A178569: a(2*n) = 10*a(n), a(2*n+1) = a(n) + a(n+1).

The programs for A178569, there is no canonical definition to state claims against.
-/

/-! ## A178569.P15053350267092574456

`A007092(A237711(n)%A335144(n+1))`
-/

namespace A178569.P15053350267092574456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007092 (Int.tmod (A237711 n) (A335144 (n + 1))).toNat

end

end A178569.P15053350267092574456

/-! ## A178569.P9295147905533063575

`A007092(A237711(n))%A288888(2*(n+2))`
-/

namespace A178569.P9295147905533063575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007092 (A237711 n).toNat) (A288888 (2 * (n + 2)))

end

end A178569.P9295147905533063575

/-! ## A178569.P118607086000542425

`A001202(A277020(n+1)+1)`
-/

namespace A178569.P118607086000542425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001202 (A277020 (n + 1) + 1).toNat

end

end A178569.P118607086000542425

/-! ## A178569.P1337593725616579610

`A007093(A342611(n+1))`
-/

namespace A178569.P1337593725616579610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007093 (A342611 (n + 1)).toNat

end

end A178569.P1337593725616579610

/-! ## A178569.P8900016557209807171

`A007094(A342614(n+1))`
-/

namespace A178569.P8900016557209807171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007094 (A342614 (n + 1)).toNat

end

end A178569.P8900016557209807171

/-!
# A178570: Numbers k such that prime(k+1) == 1 (mod (prime(k+2) - prime(k))).

The programs for A178570, the canonical program `A178570.P12530827425225912041` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A178570 has offset 1).

The definition of A178570 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1574 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A178570.P17343120222164088587

`lt[A006093(n+1)%A075527(n), 1]`
-/

namespace A178570.P17343120222164088587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006093 (n + 1)) (A075527 n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A178570.P17343120222164088587

namespace A178570

/-- `lt[A006093(n+1)%A075527(n), 1]` -/
def P17343120222164088587.Spec : Prop :=
  ∀ n, (P17343120222164088587.a n : ℤ) = A178570 (n + 1)

end A178570

/-! ## A178570.P17475229551870510828

`eq[2, A008864(n+1)%A075527(n)]`
-/

namespace A178570.P17475229551870510828
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008864 (n + 1)) (A075527 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A178570.P17475229551870510828

namespace A178570

/-- `eq[2, A008864(n+1)%A075527(n)]` -/
def P17475229551870510828.Spec : Prop :=
  ∀ n, (P17475229551870510828.a n : ℤ) = A178570 (n + 1)

end A178570

/-! ## A178570.P12530827425225912041

`eq[1, A130291(n+1)%A162345(n+1)]`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A178570

/-- `eq[1, A130291(n+1)%A162345(n+1)]` -/
def P12530827425225912041.Spec : Prop :=
  ∀ n, (P12530827425225912041.a n : ℤ) = A178570 (n + 1)

theorem P12530827425225912041.correct : P12530827425225912041.Spec := by
  intro n
  simp only [A178570, Nat.add_sub_cancel]

end A178570

/-! ## A178570.P17748509707939998995

`eq[A037166(n+1)%A075527(n), A001223(n+1)]`
-/

namespace A178570.P17748509707939998995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A037166 (n + 1)) (A075527 n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A178570.P17748509707939998995

namespace A178570

/-- `eq[A037166(n+1)%A075527(n), A001223(n+1)]` -/
def P17748509707939998995.Spec : Prop :=
  ∀ n, (P17748509707939998995.a n : ℤ) = A178570 (n + 1)

end A178570

/-! ## A178570.P5279931757358855797

`eq[1, A160656(n+1)%A075527(n)]`
-/

namespace A178570.P5279931757358855797
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A160656 (n + 1)) (A075527 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A178570.P5279931757358855797

namespace A178570

/-- `eq[1, A160656(n+1)%A075527(n)]` -/
def P5279931757358855797.Spec : Prop :=
  ∀ n, (P5279931757358855797.a n : ℤ) = A178570 (n + 1)

end A178570

/-!
# A178571: a(n) = number of 5-digit primes with digit sum n, where n runs through the non-multiples of 3 in the range [2..44].

The programs for A178571, there is no canonical definition to state claims against.
-/

/-! ## A178571.P2652137232561338464

`A178701(n+57)`
-/

namespace A178571.P2652137232561338464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178701 (n + 57)

end

end A178571.P2652137232561338464

/-!
# A178572: Numbers with ordered partitions that have periods of length 5.

The programs for A178572, the canonical program `A178572.P8844688489796271955` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A178572 has offset 1).

The definition of A178572 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A178572.P8844688489796271955

`(n+1)*(25*(n+1)-3)/2`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A178572

/-- `(n+1)*(25*(n+1)-3)/2` -/
def P8844688489796271955.Spec : Prop :=
  ∀ n, P8844688489796271955.a n = (A178572 (n + 1) : ℚ)

end A178572

/-! ## A178572.P13873412935645906863

`∑[a(n-1)+25]` with `a(0)=11`
-/

namespace A178572.P13873412935645906863
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [11] fun n f1 =>
  f1 (n - 1) + 25

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A178572.P13873412935645906863

namespace A178572

/-- `∑[a(n-1)+25]` -/
def P13873412935645906863.Spec : Prop :=
  ∀ n, (P13873412935645906863.a n : ℤ) = A178572 (n + 1)

end A178572

/-! ## A178572.P14225956306433719330

`∑[ogf((11+14x)/(1-2x+x^2))]`
-/

namespace A178572.P14225956306433719330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [11, 14] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A178572.P14225956306433719330

namespace A178572

/-- `∑[ogf((11+14x)/(1-2x+x^2))]` -/
def P14225956306433719330.Spec : Prop :=
  ∀ n, P14225956306433719330.a n = A178572 (n + 1)

end A178572

/-! ## A178572.P4261906056197290496

`ogf((11+14x)/(1-3x+3x^2-x^3))`
-/

namespace A178572.P4261906056197290496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [11, 14] [1, -3, 3, -1] n

end

end A178572.P4261906056197290496

namespace A178572

/-- `ogf((11+14x)/(1-3x+3x^2-x^3))` -/
def P4261906056197290496.Spec : Prop :=
  ∀ n, P4261906056197290496.a n = A178572 (n + 1)

end A178572

/-! ## A178572.P5763771067541498488

`C(5*(n+1), 2)+n+1`
-/

namespace A178572.P5763771067541498488
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (5 * (n + 1)) 2 + (n + 1)

end

end A178572.P5763771067541498488

namespace A178572

/-- `C(5*(n+1), 2)+n+1` -/
def P5763771067541498488.Spec : Prop :=
  ∀ n, (P5763771067541498488.a n : ℤ) = A178572 (n + 1)

end A178572

/-! ## A178572.P17612617876123026836

`Δ[lcm(2*n+1, (n+1)*2*n)]+∑[n-1]`
-/

namespace A178572.P17612617876123026836
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (2 * n + 1) ((n + 1) * (2 * n))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A178572.P17612617876123026836

namespace A178572

/-- `Δ[lcm(2*n+1, (n+1)*2*n)]+∑[n-1]` -/
def P17612617876123026836.Spec : Prop :=
  ∀ n, P17612617876123026836.a n = A178572 (n + 1)

end A178572

/-! ## A178572.P15015021643980463086

`∑[A102438(n)/4]`
-/

namespace A178572.P15015021643980463086
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A102438 n : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A178572.P15015021643980463086

namespace A178572

/-- `∑[A102438(n)/4]` -/
def P15015021643980463086.Spec : Prop :=
  ∀ n, P15015021643980463086.a n = (A178572 (n + 1) : ℚ)

end A178572

/-! ## A178572.P16398236964654928304

`∑[A348845(n)+n]`
-/

namespace A178572.P16398236964654928304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348845 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A178572.P16398236964654928304

namespace A178572

/-- `∑[A348845(n)+n]` -/
def P16398236964654928304.Spec : Prop :=
  ∀ n, P16398236964654928304.a n = A178572 (n + 1)

end A178572

/-! ## A178572.P12186540495701068655

`A396288(n+1)+∑[n]`
-/

namespace A178572.P12186540495701068655
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396288 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A178572.P12186540495701068655

namespace A178572

/-- `A396288(n+1)+∑[n]` -/
def P12186540495701068655.Spec : Prop :=
  ∀ n, P12186540495701068655.a n = A178572 (n + 1)

end A178572

/-! ## A178572.P7834746290200606598

`∑[A154266(n)]-(n+1)²`
-/

namespace A178572.P7834746290200606598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154266 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ((n + 1) ^ 2 : ℤ)

end

end A178572.P7834746290200606598

namespace A178572

/-- `∑[A154266(n)]-(n+1)²` -/
def P7834746290200606598.Spec : Prop :=
  ∀ n, P7834746290200606598.a n = A178572 (n + 1)

end A178572

/-! ## A178572.P15286933605888564584

`A135453(n+1)+∑[n-1]`
-/

namespace A178572.P15286933605888564584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135453 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A178572.P15286933605888564584

namespace A178572

/-- `A135453(n+1)+∑[n-1]` -/
def P15286933605888564584.Spec : Prop :=
  ∀ n, P15286933605888564584.a n = A178572 (n + 1)

end A178572

/-! ## A178572.P8113143544734632568

`∑[A063162(n+1)+n]+n`
-/

namespace A178572.P8113143544734632568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063162 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A178572.P8113143544734632568

namespace A178572

/-- `∑[A063162(n+1)+n]+n` -/
def P8113143544734632568.Spec : Prop :=
  ∀ n, P8113143544734632568.a n = A178572 (n + 1)

end A178572

/-! ## A178572.P11927065563155712767

`A157514(n+1)/2-(n+1)`
-/

namespace A178572.P11927065563155712767
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A157514 (n + 1) : ℚ) / 2 - (n + 1 : ℚ)

end

end A178572.P11927065563155712767

namespace A178572

/-- `A157514(n+1)/2-(n+1)` -/
def P11927065563155712767.Spec : Prop :=
  ∀ n, P11927065563155712767.a n = (A178572 (n + 1) : ℚ)

end A178572

/-! ## A178572.P13423456985732996917

`A061793(n)+A017485(n)`
-/

namespace A178572.P13423456985732996917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061793 n + A017485 n

end

end A178572.P13423456985732996917

namespace A178572

/-- `A061793(n)+A017485(n)` -/
def P13423456985732996917.Spec : Prop :=
  ∀ n, P13423456985732996917.a n = A178572 (n + 1)

end A178572

/-! ## A178572.P12435563300668840757

`A154106(n)+A000096(n)`
-/

namespace A178572.P12435563300668840757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154106 n + A000096 n

end

end A178572.P12435563300668840757

namespace A178572

/-- `A154106(n)+A000096(n)` -/
def P12435563300668840757.Spec : Prop :=
  ∀ n, P12435563300668840757.a n = A178572 (n + 1)

end A178572

/-! ## A178572.P2428150437408244868

`A164015(n)+A017461(n)`
-/

namespace A178572.P2428150437408244868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164015 n + A017461 n

end

end A178572.P2428150437408244868

namespace A178572

/-- `A164015(n)+A017461(n)` -/
def P2428150437408244868.Spec : Prop :=
  ∀ n, P2428150437408244868.a n = A178572 (n + 1)

end A178572

/-! ## A178572.P11161241765090492735

`A262221(n)+A017509(n)`
-/

namespace A178572.P11161241765090492735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262221 n + A017509 n

end

end A178572.P11161241765090492735

namespace A178572

/-- `A262221(n)+A017509(n)` -/
def P11161241765090492735.Spec : Prop :=
  ∀ n, P11161241765090492735.a n = A178572 (n + 1)

end A178572

/-! ## A178572.P10277734229618948062

`A348845(n)+A022282(n)`
-/

namespace A178572.P10277734229618948062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348845 n + A022282 n

end

end A178572.P10277734229618948062

namespace A178572

/-- `A348845(n)+A022282(n)` -/
def P10277734229618948062.Spec : Prop :=
  ∀ n, P10277734229618948062.a n = A178572 (n + 1)

end A178572

/-! ## A178572.P14451048300198626010

`A055437(n+1)+A028895(n)`
-/

namespace A178572.P14451048300198626010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055437 (n + 1) + A028895 n

end

end A178572.P14451048300198626010

namespace A178572

/-- `A055437(n+1)+A028895(n)` -/
def P14451048300198626010.Spec : Prop :=
  ∀ n, P14451048300198626010.a n = A178572 (n + 1)

end A178572

/-! ## A178572.P17444610326235978426

`A129863(n)+A108928(n+1)`
-/

namespace A178572.P17444610326235978426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129863 n + A108928 (n + 1)

end

end A178572.P17444610326235978426

namespace A178572

/-- `A129863(n)+A108928(n+1)` -/
def P17444610326235978426.Spec : Prop :=
  ∀ n, P17444610326235978426.a n = A178572 (n + 1)

end A178572

/-!
# A178573: Number of exposed endpoints in the toothpick structure of A182840.

The programs for A178573, there is no canonical definition to state claims against.
-/

/-! ## A178573.P1679812136367964376

`and(A182842(n)+1, -2)`
-/

namespace A178573.P1679812136367964376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A182842 n + 1) (-2)

end

end A178573.P1679812136367964376

/-! ## A178573.P8176978181759250794

`Δ[2*floor((A182840(n+1)+n)/4)]`
-/

namespace A178573.P8176978181759250794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ⌊(A182840 (n + 1) + (n : ℤ) : ℚ) / 4⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A178573.P8176978181759250794

/-! ## A178573.P12386581475167765294

`A140201(A182842(n))`
-/

namespace A178573.P12386581475167765294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140201 (A182842 n).toNat

end

end A178573.P12386581475167765294

/-! ## A178573.P1396154531241979180

`A052928(A182842(n)+1)`
-/

namespace A178573.P1396154531241979180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052928 (A182842 n + 1).toNat

end

end A178573.P1396154531241979180

/-! ## A178573.P17278329165363327489

`A131055(A182842(n)+1)`
-/

namespace A178573.P17278329165363327489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131055 (A182842 n + 1).toNat

end

end A178573.P17278329165363327489

/-! ## A178573.P6009045749761342238

`A018837(A182841(n+2))`
-/

namespace A178573.P6009045749761342238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018837 (A182841 (n + 2)).toNat

end

end A178573.P6009045749761342238

/-! ## A178573.P5364344861312501479

`A018837(2*A182842(n))`
-/

namespace A178573.P5364344861312501479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018837 (2 * A182842 n).toNat

end

end A178573.P5364344861312501479

/-! ## A178573.P15003620785542150106

`A083219(2*A182842(n))`
-/

namespace A178573.P15003620785542150106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083219 (2 * A182842 n).toNat

end

end A178573.P15003620785542150106

/-! ## A178573.P2663310085228387087

`A018837(Δ[A182840(n+1)])`
-/

namespace A178573.P2663310085228387087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182840 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018837 (f1 (n + 1) - f1 n).toNat

end

end A178573.P2663310085228387087

/-! ## A178573.P3814805537488217155

`Δ[A004525(A182840(n+1)+n)]`
-/

namespace A178573.P3814805537488217155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A182840 (n + 1) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A178573.P3814805537488217155

/-!
# A178574: a(n) = 2*n*(9*n-1).

The programs for A178574, the canonical program `A178574.P3315712600721893133` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A178574 has offset 1).

The definition of A178574 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*(n+1)*(9*(n+1)-1)` (program `A178574.P3315712600721893133`, by `A178574.P3315712600721893133.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A178574.P5035588211914017583

`(n+1)*(18*(n+1)-2)`
-/

namespace A178574.P5035588211914017583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * ((18 * (n + 1) : ℤ) - 2)

end

end A178574.P5035588211914017583

namespace A178574

/-- `(n+1)*(18*(n+1)-2)` -/
def P5035588211914017583.Spec : Prop :=
  ∀ n, P5035588211914017583.a n = A178574 (n + 1)

theorem P5035588211914017583.correct : P5035588211914017583.Spec := by
  intro n
  simp only [A178574, Nat.add_sub_cancel, A178574.P5035588211914017583.a, A178574.P3315712600721893133.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A178574

/-! ## A178574.P3315712600721893133

`2*(n+1)*(9*(n+1)-1)`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A178574

/-- `2*(n+1)*(9*(n+1)-1)` -/
def P3315712600721893133.Spec : Prop :=
  ∀ n, P3315712600721893133.a n = A178574 (n + 1)

theorem P3315712600721893133.correct : P3315712600721893133.Spec := by
  intro n
  simp only [A178574, Nat.add_sub_cancel]

end A178574

/-! ## A178574.P1746417516579244767

`∑[a(n-1)+36]` with `a(0)=16`
-/

namespace A178574.P1746417516579244767
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [16] fun n f1 =>
  f1 (n - 1) + 36

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A178574.P1746417516579244767

namespace A178574

/-- `∑[a(n-1)+36]` -/
def P1746417516579244767.Spec : Prop :=
  ∀ n, (P1746417516579244767.a n : ℤ) = A178574 (n + 1)

end A178574

/-! ## A178574.P5771723037603624183

`C(6*(n+1), 2)+n+1`
-/

namespace A178574.P5771723037603624183
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (6 * (n + 1)) 2 + (n + 1)

end

end A178574.P5771723037603624183

namespace A178574

/-- `C(6*(n+1), 2)+n+1` -/
def P5771723037603624183.Spec : Prop :=
  ∀ n, (P5771723037603624183.a n : ℤ) = A178574 (n + 1)

theorem P5771723037603624183.correct : P5771723037603624183.Spec := by
  intro n
  simp only [A178574, Nat.add_sub_cancel, A178574.P5771723037603624183.a, A178574.P3315712600721893133.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A178574

/-! ## A178574.P14533014125898638363

`∑[4*A017209(n)]`
-/

namespace A178574.P14533014125898638363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A017209 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A178574.P14533014125898638363

namespace A178574

/-- `∑[4*A017209(n)]` -/
def P14533014125898638363.Spec : Prop :=
  ∀ n, P14533014125898638363.a n = A178574 (n + 1)

end A178574

/-! ## A178574.P13820043413815894749

`A304380(n+1)/2`
-/

namespace A178574.P13820043413815894749
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A304380 (n + 1) : ℚ) / 2

end

end A178574.P13820043413815894749

namespace A178574

/-- `A304380(n+1)/2` -/
def P13820043413815894749.Spec : Prop :=
  ∀ n, P13820043413815894749.a n = (A178574 (n + 1) : ℚ)

theorem P13820043413815894749.correct : P13820043413815894749.Spec := by
  intro n
  simp only [A178574, Nat.add_sub_cancel, A178574.P13820043413815894749.a, A178574.P3315712600721893133.a, A304380, A304380.P4205740382854217177.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A178574

/-! ## A178574.P6356499647917614848

`∑[A304505(n)/(n+1)]`
-/

namespace A178574.P6356499647917614848
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A304505 n : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A178574.P6356499647917614848

namespace A178574

/-- `∑[A304505(n)/(n+1)]` -/
def P6356499647917614848.Spec : Prop :=
  ∀ n, P6356499647917614848.a n = (A178574 (n + 1) : ℚ)

end A178574

/-! ## A178574.P15809774272775051639

`A157910(n+1)-Δ[n²]`
-/

namespace A178574.P15809774272775051639
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157910 (n + 1) - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A178574.P15809774272775051639

namespace A178574

/-- `A157910(n+1)-Δ[n²]` -/
def P15809774272775051639.Spec : Prop :=
  ∀ n, P15809774272775051639.a n = A178574 (n + 1)

theorem P15809774272775051639.correct : P15809774272775051639.Spec := by
  intro n
  simp only [A178574, Nat.add_sub_cancel, A178574.P15809774272775051639.f1, A178574.P15809774272775051639.a, A178574.P3315712600721893133.a, A157910, A157910.P11116691083865188033.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A178574

/-! ## A178574.P1859342107500172748

`A291582(n+1)/2+n+1`
-/

namespace A178574.P1859342107500172748
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A291582 (n + 1) : ℚ) / 2 + (n + 1 : ℚ)

end

end A178574.P1859342107500172748

namespace A178574

/-- `A291582(n+1)/2+n+1` -/
def P1859342107500172748.Spec : Prop :=
  ∀ n, P1859342107500172748.a n = (A178574 (n + 1) : ℚ)

theorem P1859342107500172748.correct : P1859342107500172748.Spec := by
  intro n
  simp only [A178574, Nat.add_sub_cancel, A178574.P1859342107500172748.a, A178574.P3315712600721893133.a, A291582, A291582.P5457921454360212602.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A178574

/-! ## A178574.P1527755618150559885

`A158062(n+1)/2-(n+1)`
-/

namespace A178574.P1527755618150559885
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A158062 (n + 1) : ℚ) / 2 - (n + 1 : ℚ)

end

end A178574.P1527755618150559885

namespace A178574

/-- `A158062(n+1)/2-(n+1)` -/
def P1527755618150559885.Spec : Prop :=
  ∀ n, P1527755618150559885.a n = (A178574 (n + 1) : ℚ)

theorem P1527755618150559885.correct : P1527755618150559885.Spec := by
  intro n
  simp only [A178574, Nat.add_sub_cancel, A178574.P1527755618150559885.a, A178574.P3315712600721893133.a, A158062, A158062.P12572423085323088459.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A178574

/-! ## A178574.P15103641488203349280

`A141759(n)+A001844(n)`
-/

namespace A178574.P15103641488203349280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141759 n + A001844 n

end

end A178574.P15103641488203349280

namespace A178574

/-- `A141759(n)+A001844(n)` -/
def P15103641488203349280.Spec : Prop :=
  ∀ n, P15103641488203349280.a n = A178574 (n + 1)

theorem P15103641488203349280.correct : P15103641488203349280.Spec := by
  intro n
  simp only [A178574, Nat.add_sub_cancel, A178574.P15103641488203349280.a, A178574.P3315712600721893133.a, A001844, A001844.P5037395199076350534.a, A141759, A141759.P7052951860497148321.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A178574

/-! ## A178574.P15371609459922025608

`A304505(n)-A162940(n)`
-/

namespace A178574.P15371609459922025608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304505 n - A162940 n

end

end A178574.P15371609459922025608

namespace A178574

/-- `A304505(n)-A162940(n)` -/
def P15371609459922025608.Spec : Prop :=
  ∀ n, P15371609459922025608.a n = A178574 (n + 1)

theorem P15371609459922025608.correct : P15371609459922025608.Spec := by
  intro n
  simp only [A178574, Nat.add_sub_cancel, A178574.P15371609459922025608.a, A178574.P3315712600721893133.a, A162940, A162940.P6076576400821307123.a, A304505, A304505.P6536953699317814335.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A178574

/-! ## A178574.P2137235675986199744

`lcm(A103517(n), A350522(n))`
-/

namespace A178574.P2137235675986199744
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A103517 n) (A350522 n)

end

end A178574.P2137235675986199744

namespace A178574

/-- `lcm(A103517(n), A350522(n))` -/
def P2137235675986199744.Spec : Prop :=
  ∀ n, (P2137235675986199744.a n : ℤ) = A178574 (n + 1)

end A178574

/-! ## A178574.P375562333212097637

`A046092(n)+A141759(n)+1`
-/

namespace A178574.P375562333212097637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046092 n + (A141759 n + 1)

end

end A178574.P375562333212097637

namespace A178574

/-- `A046092(n)+A141759(n)+1` -/
def P375562333212097637.Spec : Prop :=
  ∀ n, P375562333212097637.a n = A178574 (n + 1)

theorem P375562333212097637.correct : P375562333212097637.Spec := by
  intro n
  simp only [A178574, Nat.add_sub_cancel, A178574.P375562333212097637.a, A178574.P3315712600721893133.a, A046092, A046092.P16411658895297056450.a, A141759, A141759.P7052951860497148321.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A178574

/-! ## A178574.P4016497388295202325

`A158482(n+1)+A082108(n)`
-/

namespace A178574.P4016497388295202325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158482 (n + 1) + A082108 n

end

end A178574.P4016497388295202325

namespace A178574

/-- `A158482(n+1)+A082108(n)` -/
def P4016497388295202325.Spec : Prop :=
  ∀ n, P4016497388295202325.a n = A178574 (n + 1)

theorem P4016497388295202325.correct : P4016497388295202325.Spec := by
  intro n
  simp only [A178574, Nat.add_sub_cancel, A178574.P4016497388295202325.a, A178574.P3315712600721893133.a, A082108, A082108.P8640110216624797441.a, A158482, A158482.P9203100436480343542.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A178574

/-! ## A178574.P1163728280945905078

`A142463(n)+A108211(n+1)`
-/

namespace A178574.P1163728280945905078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142463 n + A108211 (n + 1)

end

end A178574.P1163728280945905078

namespace A178574

/-- `A142463(n)+A108211(n+1)` -/
def P1163728280945905078.Spec : Prop :=
  ∀ n, P1163728280945905078.a n = A178574 (n + 1)

theorem P1163728280945905078.correct : P1163728280945905078.Spec := by
  intro n
  simp only [A178574, Nat.add_sub_cancel, A178574.P1163728280945905078.a, A178574.P3315712600721893133.a, A108211, A108211.P17641433821935710279.a, A142463, A142463.P2232194029249576848.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A178574

/-! ## A178574.P14673144711732459410

`A195316(n+1)+A125169(n)`
-/

namespace A178574.P14673144711732459410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195316 (n + 1) + A125169 n

end

end A178574.P14673144711732459410

namespace A178574

/-- `A195316(n+1)+A125169(n)` -/
def P14673144711732459410.Spec : Prop :=
  ∀ n, P14673144711732459410.a n = A178574 (n + 1)

theorem P14673144711732459410.correct : P14673144711732459410.Spec := by
  intro n
  simp only [A178574, Nat.add_sub_cancel, A178574.P14673144711732459410.a, A178574.P3315712600721893133.a, A125169, A125169.P15085034264192254056.a, A195316, A195316.P1586365391160239288.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A178574

/-! ## A178574.P13977522491721629155

`A304381(n+1)-A016958(n)`
-/

namespace A178574.P13977522491721629155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304381 (n + 1) - A016958 n

end

end A178574.P13977522491721629155

namespace A178574

/-- `A304381(n+1)-A016958(n)` -/
def P13977522491721629155.Spec : Prop :=
  ∀ n, P13977522491721629155.a n = A178574 (n + 1)

theorem P13977522491721629155.correct : P13977522491721629155.Spec := by
  intro n
  simp only [A178574, Nat.add_sub_cancel, A178574.P13977522491721629155.a, A178574.P3315712600721893133.a, A016958, A016958.P743767780414774553.a, A304381, A304381.P8101329019813229722.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A178574

/-! ## A178574.P8544150232360681968

`A253707(n+1)-A079588(n)`
-/

namespace A178574.P8544150232360681968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253707 (n + 1) - A079588 n

end

end A178574.P8544150232360681968

namespace A178574

/-- `A253707(n+1)-A079588(n)` -/
def P8544150232360681968.Spec : Prop :=
  ∀ n, P8544150232360681968.a n = A178574 (n + 1)

end A178574

/-! ## A178574.P13857386127996929740

`A158406(n+1)%A158321(n+1)`
-/

namespace A178574.P13857386127996929740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A158406 (n + 1)) (A158321 (n + 1))

end

end A178574.P13857386127996929740

namespace A178574

/-- `A158406(n+1)%A158321(n+1)` -/
def P13857386127996929740.Spec : Prop :=
  ∀ n, P13857386127996929740.a n = A178574 (n + 1)

end A178574

/-!
# A178575: Number of permutations of {1,2,...,3n} whose cycle lengths are all divisible by 3.

The programs for A178575, the canonical program `A178575.P294649344186895566` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A178575 has offset 0).

The definition of A178575 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A178575.P294649344186895566

`(3*n-1)*(3*n-2)²*a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A178575

/-- `(3*n-1)*(3*n-2)²*a(n-1)` -/
def P294649344186895566.Spec : Prop :=
  ∀ n, P294649344186895566.a n = A178575 n

theorem P294649344186895566.correct : P294649344186895566.Spec := by
  intro n
  simp only [A178575]

end A178575

/-! ## A178575.P10040232183151369912

`A007559(n)*A052502(n)`
-/

namespace A178575.P10040232183151369912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007559 n * A052502 n

end

end A178575.P10040232183151369912

namespace A178575

/-- `A007559(n)*A052502(n)` -/
def P10040232183151369912.Spec : Prop :=
  ∀ n, P10040232183151369912.a n = A178575 n

end A178575

/-! ## A178575.P5170377599815737243

`A007559(n)²*A008544(n)`
-/

namespace A178575.P5170377599815737243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007559 n ^ 2 * A008544 n

end

end A178575.P5170377599815737243

namespace A178575

/-- `A007559(n)²*A008544(n)` -/
def P5170377599815737243.Spec : Prop :=
  ∀ n, P5170377599815737243.a n = A178575 n

end A178575

/-! ## A178575.P18241844218358421821

`A007559(n)²*A225470(∑[n])`
-/

namespace A178575.P18241844218358421821
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007559 n ^ 2 * A225470 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A178575.P18241844218358421821

namespace A178575

/-- `A007559(n)²*A225470(∑[n])` -/
def P18241844218358421821.Spec : Prop :=
  ∀ n, P18241844218358421821.a n = A178575 n

end A178575

/-! ## A178575.P9534053980237621436

`record[A136214(n)²*A136216(n)]`
-/

namespace A178575.P9534053980237621436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136214 n ^ 2 * A136216 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A178575.P9534053980237621436

namespace A178575

/-- `record[A136214(n)²*A136216(n)]` -/
def P9534053980237621436.Spec : Prop :=
  ∀ n, P9534053980237621436.a n = A178575 n

end A178575

/-!
# A178576: Primes that are the sum of two Fibonacci numbers.

The programs for A178576, there is no canonical definition to state claims against.
-/

/-! ## A178576.P9330602535178149516

`p?[A059389(n+1)]`
-/

namespace A178576.P9330602535178149516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059389 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A178576.P9330602535178149516

/-! ## A178576.P322591221440096932

`p?[A078643(n+1)]`
-/

namespace A178576.P322591221440096932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078643 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A178576.P322591221440096932

/-! ## A178576.P17969260809816717236

`p?[A084176(n+1)]`
-/

namespace A178576.P17969260809816717236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084176 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A178576.P17969260809816717236

/-! ## A178576.P10176017545637480297

`p?[A131410(n+1)+a(A083920(n))]` with `a(0)=2`
-/

namespace A178576.P10176017545637480297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  A131410 (n + 1) + f1 (A083920 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A178576.P10176017545637480297

/-! ## A178576.P14900566111587149600

`∩[A015919(n+1), A059389(n+1)]`
-/

namespace A178576.P14900566111587149600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015919 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059389 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A178576.P14900566111587149600

/-!
# A178577: Partial sums of round(5^n/9).

The programs for A178577, the canonical program `A178577.P11611385850024059974` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A178577 has offset 0).

The definition of A178577 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A178577.P7872976507201908027

`a(n-6)+434*5^(n-5)` with `a(0)=0, a(1)=1, a(2)=4, a(3)=18, a(4)=87, a(5)=434`
-/

namespace A178577.P7872976507201908027
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 1, 4, 18, 87, 434] fun n a =>
  a (n - 6) + 434 * (5 : ℚ) ^ ((n : ℤ) - 5 : ℤ)

end

end A178577.P7872976507201908027

namespace A178577

/-- `a(n-6)+434*5^(n-5)` -/
def P7872976507201908027.Spec : Prop :=
  ∀ n, P7872976507201908027.a n = (A178577 n : ℚ)

end A178577

/-! ## A178577.P11611385850024059974

`6*a(n-1)-5*a(n-2)-a(n-3)+6*a(n-4)-5*a(n-5)` with `a(0)=0, a(1)=1, a(2)=4, a(3)=18, a(4)=87`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A178577

/-- `6*a(n-1)-5*a(n-2)-a(n-3)+6*a(n-4)-5*a(n-5)` -/
def P11611385850024059974.Spec : Prop :=
  ∀ n, P11611385850024059974.a n = A178577 n

theorem P11611385850024059974.correct : P11611385850024059974.Spec := by
  intro n
  simp only [A178577]

end A178577

/-! ## A178577.P12275814587106418379

`round((5^(n+1)+9)/36)`
-/

namespace A178577.P12275814587106418379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((5 ^ (n + 1) + 9 : ℚ) / 36)

end

end A178577.P12275814587106418379

namespace A178577

/-- `round((5^(n+1)+9)/36)` -/
def P12275814587106418379.Spec : Prop :=
  ∀ n, P12275814587106418379.a n = A178577 n

end A178577

/-! ## A178577.P5613158057886102264

`5^(n+1)/36-(-1)^n/18+1/4-A010892(n+1)/3`
-/

namespace A178577.P5613158057886102264
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 ^ (n + 1) : ℚ) / 36 - ((-1) ^ n : ℚ) / 18 + (1 : ℚ) / 4 - (A010892 (n + 1) : ℚ) / 3

end

end A178577.P5613158057886102264

namespace A178577

/-- `5^(n+1)/36-(-1)^n/18+1/4-A010892(n+1)/3` -/
def P5613158057886102264.Spec : Prop :=
  ∀ n, P5613158057886102264.a n = (A178577 n : ℚ)

end A178577

/-! ## A178577.P11739890627316028842

`ceil(A104891(n)/9)`
-/

namespace A178577.P11739890627316028842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A104891 n : ℚ) / 9⌉

end

end A178577.P11739890627316028842

namespace A178577

/-- `ceil(A104891(n)/9)` -/
def P11739890627316028842.Spec : Prop :=
  ∀ n, P11739890627316028842.a n = A178577 n

end A178577

/-! ## A178577.P18239903039232479797

`ceil(∑[A002275(n)/A000079(n)])`
-/

namespace A178577.P18239903039232479797
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002275 n : ℚ) / (A000079 n : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉

end

end A178577.P18239903039232479797

namespace A178577

/-- `ceil(∑[A002275(n)/A000079(n)])` -/
def P18239903039232479797.Spec : Prop :=
  ∀ n, P18239903039232479797.a n = A178577 n

end A178577

/-!
# A178578: Diagonal sums of second binomial transform of the Narayana triangle A001263.

The programs for A178578, there is no canonical definition to state claims against.
-/

/-! ## A178578.P15948934394303356358

`A025254(n+3)`
-/

namespace A178578.P15948934394303356358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025254 (n + 3)

end

end A178578.P15948934394303356358

/-! ## A178578.P9684421195602519057

`record[A025254(or(n, A000038(n)))]`
-/

namespace A178578.P9684421195602519057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025254 (Int.lor (n : ℤ) (A000038 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A178578.P9684421195602519057

/-! ## A178578.P12841510536617823523

`record[A025254(A000267(A004442(n)))]`
-/

namespace A178578.P12841510536617823523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025254 (A000267 (A004442 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A178578.P12841510536617823523

/-! ## A178578.P5647372954732293850

`record[A025254(A052938(A008611(n)))]`
-/

namespace A178578.P5647372954732293850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025254 (A052938 (A008611 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A178578.P5647372954732293850

/-! ## A178578.P4154422574746363512

`record[A025254(A052938(A008619(n)))]`
-/

namespace A178578.P4154422574746363512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025254 (A052938 (A008619 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A178578.P4154422574746363512

/-! ## A178578.P651039372771125223

`A363812(n+1)+A363812(n+1)-A363812(n)`
-/

namespace A178578.P651039372771125223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363812 (n + 1) + (A363812 (n + 1) - A363812 n)

end

end A178578.P651039372771125223

/-!
# A178579: Partial sums of A001676.

The programs for A178579, there is no canonical definition to state claims against.
-/

/-! ## A178579.P9274868706764948302

`∑[A001676(n+1)]`
-/

namespace A178579.P9274868706764948302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001676 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A178579.P9274868706764948302

/-! ## A178579.P15304877852599505796

`A001676(round(sqrt(n²+1))+1)+a(n-1)` with `a(0)=1`
-/

namespace A178579.P15304877852599505796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A001676 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ)) + 1).toNat + a (n - 1)

end

end A178579.P15304877852599505796

/-! ## A178579.P899463564897863570

`∑[A187595(n+1)*A187717(n+1)]`
-/

namespace A178579.P899463564897863570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187595 (n + 1) * A187717 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A178579.P899463564897863570

/-! ## A178579.P6637696774175298795

`∑{d}[A000079(n), A001676(A000005(#))]`
-/

namespace A178579.P6637696774175298795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A001676 (A000005 d).toNat

end

end A178579.P6637696774175298795

/-! ## A178579.P7954848519534863932

`∑[A327155(∑[A033139(n+1)])]`
-/

namespace A178579.P7954848519534863932
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033139 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327155 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A178579.P7954848519534863932

/-!
# A178580: Expansion of the polynomial (1+x^3)*(1+x^9)*(1+x^11)*(1+x^15)*(1+x^17)*(1+x^23).

The programs for A178580, there is no canonical definition to state claims against.
-/

/-! ## A178580.P11430603165555251775

`A243148(xor(A008733(n), A200570(n+1)))`
-/

namespace A178580.P11430603165555251775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243148 (Int.xor (A008733 n) (A200570 (n + 1))).toNat

end

end A178580.P11430603165555251775

/-! ## A178580.P7043018552087783525

`A093729(A073189(n)^A029302(n))`
-/

namespace A178580.P7043018552087783525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093729 (SequenceMachineLib.roundAway ((A073189 n : ℚ) ^ (A029302 n : ℤ))).toNat

end

end A178580.P7043018552087783525

/-! ## A178580.P3892707190745657525

`A113092(A073189(n)^A029302(n))`
-/

namespace A178580.P3892707190745657525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113092 (SequenceMachineLib.roundAway ((A073189 n : ℚ) ^ (A029302 n : ℤ))).toNat

end

end A178580.P3892707190745657525

/-! ## A178580.P16661041984236173274

`A113103(A073189(n)^A029302(n))`
-/

namespace A178580.P16661041984236173274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113103 (SequenceMachineLib.roundAway ((A073189 n : ℚ) ^ (A029302 n : ℤ))).toNat

end

end A178580.P16661041984236173274

/-! ## A178580.P10416841656207923800

`A001221(gcd(A007089(2*(n+1)), A080534(n)))`
-/

namespace A178580.P10416841656207923800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Int.gcd (A007089 (2 * (n + 1))) (A080534 n))

end

end A178580.P10416841656207923800

/-!
# A178581: Primes that are the average of the members of emirp pairs.

The programs for A178581, there is no canonical definition to state claims against.
-/

/-! ## A178581.P12760794962801670842

`p?[A014682(A345409(n+1))]`
-/

namespace A178581.P12760794962801670842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A345409 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A178581.P12760794962801670842

/-! ## A178581.P2157594047462386768

`∪[A178583(n+1), A178585(n+1)]`
-/

namespace A178581.P2157594047462386768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178583 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178585 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A178581.P2157594047462386768

/-! ## A178581.P4084422684805990548

`p?[A117494(A345409(n+2))]`
-/

namespace A178581.P4084422684805990548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117494 (A345409 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A178581.P4084422684805990548

/-!
# A178582: Smallest emirp corresponding to the prime of A178581.

The programs for A178582, there is no canonical definition to state claims against.
-/

/-! ## A178582.P12388896134026347474

`A003967(A178584(n+1))`
-/

namespace A178582.P12388896134026347474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003967 (A178584 (n + 1)).toNat

end

end A178582.P12388896134026347474

/-! ## A178582.P16252818239664929130

`A178584(A010352(n+1))`
-/

namespace A178582.P16252818239664929130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178584 (A010352 (n + 1)).toNat

end

end A178582.P16252818239664929130

/-! ## A178582.P13310657910385461743

`A178584(A010353(n+1))`
-/

namespace A178582.P13310657910385461743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178584 (A010353 (n + 1)).toNat

end

end A178582.P13310657910385461743

/-! ## A178582.P6489098915528464206

`A178584(A024652(n+1))`
-/

namespace A178582.P6489098915528464206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178584 (A024652 (n + 1)).toNat

end

end A178582.P6489098915528464206

/-!
# A178583: Palindromic primes that are the average of the members of emirp pairs.

The programs for A178583, there is no canonical definition to state claims against.
-/

/-! ## A178583.P2656679977670852538

`A178581(A024651(n+1))`
-/

namespace A178583.P2656679977670852538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178581 (A024651 (n + 1)).toNat

end

end A178583.P2656679977670852538

/-! ## A178583.P7468022714143035697

`record[A055483(A178581(n+1))]`
-/

namespace A178583.P7468022714143035697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055483 (A178581 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A178583.P7468022714143035697

/-!
# A178584: Smallest emirp corresponding to the prime of A178583.

The programs for A178584, there is no canonical definition to state claims against.
-/

/-! ## A178584.P84212805479175477

`A178582(A024651(n+1))`
-/

namespace A178584.P84212805479175477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178582 (A024651 (n + 1)).toNat

end

end A178584.P84212805479175477

/-! ## A178584.P14491210773739482399

`p?[A178582(n+1)%A055483(A178581(n+1))]`
-/

namespace A178584.P14491210773739482399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A178582 (n + 1)) (A055483 (A178581 (n + 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A178584.P14491210773739482399

/-!
# A178585: Nonpalindromic primes that are the average of the members of emirp pairs.

The programs for A178585, there is no canonical definition to state claims against.
-/

/-! ## A178585.P14942668842475929167

`A056964(A178586(n+1))/2`
-/

namespace A178585.P14942668842475929167
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056964 (A178586 (n + 1)).toNat : ℚ) / 2

end

end A178585.P14942668842475929167

/-! ## A178585.P1561532670785532366

`A006530(A056964(A178586(n+1)))`
-/

namespace A178585.P1561532670785532366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A056964 (A178586 (n + 1)).toNat).toNat

end

end A178585.P1561532670785532366

/-! ## A178585.P7045187965599049711

`∑{d}[A178586(n+1), A000010(A056964(#))]`
-/

namespace A178585.P7045187965599049711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178586 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 (A056964 d).toNat

end

end A178585.P7045187965599049711

/-! ## A178585.P8390460980299866570

`A000010(∏{p}[A178586(n+1), A056964(#)])+1`
-/

namespace A178585.P8390460980299866570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178586 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, A056964 p).toNat + 1

end

end A178585.P8390460980299866570

/-! ## A178585.P10862068743416464425

`A006530(A178586(n+1)+A004086(A178586(n+1)))`
-/

namespace A178585.P10862068743416464425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A178586 (n + 1) + A004086 (A178586 (n + 1)).toNat).toNat

end

end A178585.P10862068743416464425

/-!
# A178586: Smallest emirp corresponding to A178585.

The programs for A178586, there is no canonical definition to state claims against.
-/

/-! ## A178586.P9416324409042751162

`A178582(comp[A024651(n)])`
-/

namespace A178586.P9416324409042751162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024651 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178582 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A178586.P9416324409042751162

/-! ## A178586.P9446716393424232111

`A034699(3*A178582(n+9))`
-/

namespace A178586.P9446716393424232111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 (3 * A178582 (n + 9)).toNat

end

end A178586.P9446716393424232111

/-! ## A178586.P1289136082447534468

`A000265(4*A178582(n+9))`
-/

namespace A178586.P1289136082447534468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (4 * A178582 (n + 9)).toNat

end

end A178586.P1289136082447534468

/-! ## A178586.P6092412776007704592

`A178582(A250249(n+1)+8)`
-/

namespace A178586.P6092412776007704592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178582 (A250249 (n + 1) + 8).toNat

end

end A178586.P6092412776007704592

/-! ## A178586.P7112648041573002986

`A178582(A069700(n+5)-A052905(n))`
-/

namespace A178586.P7112648041573002986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178582 (A069700 (n + 5) - A052905 n).toNat

end

end A178586.P7112648041573002986

/-!
# A178587: Primes that are the average of the members of more than one emirp pair.

The programs for A178587, there is no canonical definition to state claims against.
-/

/-! ## A178587.P5738182602419835152

`p?[floor(A345408(A028310(n))/2)]`
-/

namespace A178587.P5738182602419835152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A345408 (A028310 n).toNat : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A178587.P5738182602419835152

/-! ## A178587.P1680153740948444050

`p?[A014682(A345408(n+1))]`
-/

namespace A178587.P1680153740948444050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A345408 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A178587.P1680153740948444050

/-!
# A178588: Primes that are the average of the members of exactly 2 emirp pairs.

The programs for A178588, there is no canonical definition to state claims against.
-/

/-! ## A178588.P12483505793287352872

`A178587(A335797(n)+n)`
-/

namespace A178588.P12483505793287352872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178587 (A335797 n + (n : ℤ)).toNat

end

end A178588.P12483505793287352872

/-!
# A178590: a(2n) = 3*a(n), a(2n+1) = a(n) + a(n+1).

The programs for A178590, there is no canonical definition to state claims against.
-/

/-! ## A178590.P1651819130649797105

`Δ[A336877(n)]-a(n-1)` with `a(0)=1`
-/

namespace A178590.P1651819130649797105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336877 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  f1 (n + 1) - f1 n - a (n - 1)

end

end A178590.P1651819130649797105

/-! ## A178590.P13510215391307224125

`A336877(n+1)-(A336877(n)+a(n-1))` with `a(0)=1`
-/

namespace A178590.P13510215391307224125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A336877 (n + 1) - (A336877 n + a (n - 1))

end

end A178590.P13510215391307224125

/-! ## A178590.P13043920376138341188

`∑[A336878(2*n+1)]`
-/

namespace A178590.P13043920376138341188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336878 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A178590.P13043920376138341188

/-! ## A178590.P10284856980280097321

`abs(∑[A336878(A004442(2*n))])`
-/

namespace A178590.P10284856980280097321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336878 (A004442 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A178590.P10284856980280097321

/-! ## A178590.P17609273078545466251

`2*A336878(2*n+1)-A336878(4*n+1)`
-/

namespace A178590.P17609273078545466251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A336878 (2 * n + 1) - A336878 (4 * n + 1)

end

end A178590.P17609273078545466251

/-! ## A178590.P7080845211373104325

`A374628(A005836(n+1))`
-/

namespace A178590.P7080845211373104325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374628 (A005836 (n + 1)).toNat

end

end A178590.P7080845211373104325

/-! ## A178590.P6999906952152173834

`A374628(A186776(n+1))`
-/

namespace A178590.P6999906952152173834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374628 (A186776 (n + 1)).toNat

end

end A178590.P6999906952152173834

/-! ## A178590.P17101339027125746404

`A374628(A082575(n+1))`
-/

namespace A178590.P17101339027125746404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374628 (A082575 (n + 1)).toNat

end

end A178590.P17101339027125746404

/-!
# A178594: Number of permutations of length n avoiding each length 5 pattern p with p(1)=5 and (p(5)=4 or p(4)=4).

The programs for A178594, there is no canonical definition to state claims against.
-/

/-! ## A178594.P6323202821371326753

`A059169(A325581(n)+A101659(n))`
-/

namespace A178594.P6323202821371326753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059169 (A325581 n + A101659 n).toNat

end

end A178594.P6323202821371326753

/-! ## A178594.P18208530777602631400

`A110656(record[A123081(n)-A008619(n)])`
-/

namespace A178594.P18208530777602631400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123081 n - A008619 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110656 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A178594.P18208530777602631400

/-! ## A178594.P5570258992904106761

`A002265(A325581(n)+A072030(n+1))`
-/

namespace A178594.P5570258992904106761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A325581 n + A072030 (n + 1)).toNat

end

end A178594.P5570258992904106761

/-!
# A178597: Where records occur in A039996.

The programs for A178597, there is no canonical definition to state claims against.
-/

/-! ## A178597.P11062850616444352931

`A179908(A178596(n+1))`
-/

namespace A178597.P11062850616444352931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179908 (A178596 (n + 1)).toNat

end

end A178597.P11062850616444352931

/-! ## A178597.P10259414423088109632

`record[A179908(n+1)%A179908(n+2)]`
-/

namespace A178597.P10259414423088109632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A179908 (n + 1)) (A179908 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A178597.P10259414423088109632

/-! ## A178597.P17901576425463667184

`A179908(∑[A329687(n)!])`
-/

namespace A178597.P17901576425463667184
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A329687 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179908 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A178597.P17901576425463667184

/-! ## A178597.P6635261849851032462

`A179908(record[A039996(n+1)])`
-/

namespace A178597.P6635261849851032462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039996 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179908 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A178597.P6635261849851032462

/-! ## A178597.P835398643402072132

`filter[A179908(n+1), A120529(#)]`
-/

namespace A178597.P835398643402072132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179908 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A120529 (f1 j).toNat = 1) n)

end

end A178597.P835398643402072132

/-!
# A178598: a(n) is the smallest integer such that the geometric mean of the first n terms is >= n.

The programs for A178598, there is no canonical definition to state claims against.
-/

/-! ## A178598.P8102446274394437786

`ratio[A178599(A028310(n))]`
-/

namespace A178598.P8102446274394437786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178599 (A028310 n).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A178598.P8102446274394437786

/-! ## A178598.P16604000624151920390

`record[ratio[A178599(A008621(n))]]`
-/

namespace A178598.P16604000624151920390
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178599 (A008621 n).toNat

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A178598.P16604000624151920390

/-! ## A178598.P16106346744425009340

`A178599(n+1)/A178599(A028310(n))`
-/

namespace A178598.P16106346744425009340
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A178599 (n + 1) : ℚ) / (A178599 (A028310 n).toNat : ℚ)

end

end A178598.P16106346744425009340

/-! ## A178598.P9143714236164860733

`A121384(n)+A080764(A007088(n))`
-/

namespace A178598.P9143714236164860733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121384 n + A080764 (A007088 n).toNat

end

end A178598.P9143714236164860733

/-! ## A178598.P14407799842293764122

`A245225(A108590(3*n+2))+A022843(n)`
-/

namespace A178598.P14407799842293764122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245225 (A108590 (3 * n + 2)).toNat + A022843 n

end

end A178598.P14407799842293764122

/-!
# A178599: a(n) is the smallest multiple of a(n-1) that is greater than n^n.

The programs for A178599, there is no canonical definition to state claims against.
-/

/-! ## A178599.P4798650338071388386

`∏[A178598(n+1)]`
-/

namespace A178599.P4798650338071388386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178598 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A178599.P4798650338071388386

/-! ## A178599.P16006174406700617146

`∏[record[A178598(A133310(n))]]`
-/

namespace A178599.P16006174406700617146
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178598 (A133310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A178599.P16006174406700617146

/-! ## A178599.P15744881792977965730

`∏[record[A178598(A291769(n))]]`
-/

namespace A178599.P15744881792977965730
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178598 (A291769 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A178599.P15744881792977965730

/-! ## A178599.P6185160857529247281

`lcm(a(n-1), A034460(n+1))*A178598(n+1)` with `a(0)=1`
-/

namespace A178599.P6185160857529247281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (Int.lcm (a (n - 1)) (A034460 (n + 1)) : ℤ) * A178598 (n + 1)

end

end A178599.P6185160857529247281

/-! ## A178599.P14573162966172701826

`a(n-1)*A178598(n+1)*and(1, A000040(n+1))` with `a(0)=1`
-/

namespace A178599.P14573162966172701826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A178598 (n + 1) * Int.land 1 (A000040 (n + 1))

end

end A178599.P14573162966172701826

