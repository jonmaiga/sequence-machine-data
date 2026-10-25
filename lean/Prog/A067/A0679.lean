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
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
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
import Seq.Opaque.C012
import Seq.Opaque.C013
import Seq.Opaque.C014
import Seq.Opaque.C015
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
# A067900: a(n) = 14*a(n-1) - a(n-2); a(0) = 0, a(1) = 8.

The programs for A067900, the canonical program `A067900.P11799195000871412519` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A067900 has offset 0).

The definition of A067900 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `14*a(n-1)-a(n-2)` (program `A067900.P11799195000871412519`, by `A067900.P11799195000871412519.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A067900.P11799195000871412519

`14*a(n-1)-a(n-2)` with `a(0)=0, a(1)=8`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A067900

/-- `14*a(n-1)-a(n-2)` -/
def P11799195000871412519.Spec : Prop :=
  ∀ n, P11799195000871412519.a n = A067900 n

theorem P11799195000871412519.correct : P11799195000871412519.Spec := by
  intro n
  simp only [A067900]

end A067900

/-! ## A067900.P17170887456365922620

`ogf(8x/(1-14x+x^2))`
-/

namespace A067900.P17170887456365922620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 8] [1, -14, 1] n

end

end A067900.P17170887456365922620

namespace A067900

/-- `ogf(8x/(1-14x+x^2))` -/
def P17170887456365922620.Spec : Prop :=
  ∀ n, P17170887456365922620.a n = A067900 n

end A067900

/-! ## A067900.P3531775884412704316

`record[round(a(n-1)/(sqrt(3)-2))]` with `a(0)=0, a(1)=8`
-/

namespace A067900.P3531775884412704316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 8] fun n f1 =>
  SequenceMachineLib.roundAway ((f1 (n - 1) : ℝ) / (Real.sqrt (3 : ℝ) - 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A067900.P3531775884412704316

namespace A067900

/-- `record[round(a(n-1)/(sqrt(3)-2))]` -/
def P3531775884412704316.Spec : Prop :=
  ∀ n, P3531775884412704316.a n = A067900 n

end A067900

/-! ## A067900.P12091433867887045279

`((7+4*sqrt(3))^n-(7-4*sqrt(3))^n)/sqrt(3)`
-/

namespace A067900.P12091433867887045279
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((7 + 4 * Real.sqrt (3 : ℝ)) ^ n - (7 - 4 * Real.sqrt (3 : ℝ)) ^ n) / Real.sqrt (3 : ℝ)

end

end A067900.P12091433867887045279

namespace A067900

/-- `((7+4*sqrt(3))^n-(7-4*sqrt(3))^n)/sqrt(3)` -/
def P12091433867887045279.Spec : Prop :=
  ∀ n, P12091433867887045279.a n = (A067900 n : ℝ)

theorem P12091433867887045279.correct : P12091433867887045279.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A067900, Nat.add_sub_cancel, A067900.P12091433867887045279.a, A067900.P11799195000871412519.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A067900, Nat.add_sub_cancel, A067900.P12091433867887045279.a, A067900.P11799195000871412519.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A067900

/-! ## A067900.P17492929223354510618

`A052530(2*n)`
-/

namespace A067900.P17492929223354510618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052530 (2 * n)

end

end A067900.P17492929223354510618

namespace A067900

/-- `A052530(2*n)` -/
def P17492929223354510618.Spec : Prop :=
  ∀ n, P17492929223354510618.a n = A067900 n

end A067900

/-! ## A067900.P16361883657772864895

`4*A011944(n)`
-/

namespace A067900.P16361883657772864895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A011944 n

end

end A067900.P16361883657772864895

namespace A067900

/-- `4*A011944(n)` -/
def P16361883657772864895.Spec : Prop :=
  ∀ n, P16361883657772864895.a n = A067900 n

end A067900

/-! ## A067900.P14678821014568386329

`A048788(4*n)`
-/

namespace A067900.P14678821014568386329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048788 (4 * n)

end

end A067900.P14678821014568386329

namespace A067900

/-- `A048788(4*n)` -/
def P14678821014568386329.Spec : Prop :=
  ∀ n, P14678821014568386329.a n = A067900 n

end A067900

/-! ## A067900.P14996869212525482642

`A254308(6*n)`
-/

namespace A067900.P14996869212525482642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254308 (6 * n)

end

end A067900.P14996869212525482642

namespace A067900

/-- `A254308(6*n)` -/
def P14996869212525482642.Spec : Prop :=
  ∀ n, P14996869212525482642.a n = A067900 n

end A067900

/-! ## A067900.P17512066378208603441

`Δ[A001835(n)²]`
-/

namespace A067900.P17512066378208603441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001835 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A067900.P17512066378208603441

namespace A067900

/-- `Δ[A001835(n)²]` -/
def P17512066378208603441.Spec : Prop :=
  ∀ n, P17512066378208603441.a n = A067900 n

end A067900

/-! ## A067900.P10426490172536150953

`A071954(2*n)-2`
-/

namespace A067900.P10426490172536150953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071954 (2 * n) - 2

end

end A067900.P10426490172536150953

namespace A067900

/-- `A071954(2*n)-2` -/
def P10426490172536150953.Spec : Prop :=
  ∀ n, P10426490172536150953.a n = A067900 n

end A067900

/-!
# A067902: a(n) = 14*a(n-1) - a(n-2); a(0) = 2, a(1) = 14.

The programs for A067902, the canonical program `A067902.P1687835793602107167` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A067902 has offset 0).

The definition of A067902 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `14*a(n-1)-a(n-2)` (program `A067902.P1687835793602107167`, by `A067902.P1687835793602107167.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A067902.P1687835793602107167

`14*a(n-1)-a(n-2)` with `a(0)=2, a(1)=14`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A067902

/-- `14*a(n-1)-a(n-2)` -/
def P1687835793602107167.Spec : Prop :=
  ∀ n, P1687835793602107167.a n = A067902 n

theorem P1687835793602107167.correct : P1687835793602107167.Spec := by
  intro n
  simp only [A067902]

end A067902

/-! ## A067902.P11303073301343221274

`A003500(2*n)`
-/

namespace A067902.P11303073301343221274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003500 (2 * n)

end

end A067902.P11303073301343221274

namespace A067902

/-- `A003500(2*n)` -/
def P11303073301343221274.Spec : Prop :=
  ∀ n, P11303073301343221274.a n = A067902 n

end A067902

/-! ## A067902.P1590522317244968020

`2*A011943(n+1)`
-/

namespace A067902.P1590522317244968020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A011943 (n + 1)

end

end A067902.P1590522317244968020

namespace A067902

/-- `2*A011943(n+1)` -/
def P1590522317244968020.Spec : Prop :=
  ∀ n, P1590522317244968020.a n = A067902 n

end A067902

/-! ## A067902.P12053553728482525036

`(a(n-1)²+192)/a(n-2)` with `a(0)=2, a(1)=14`
-/

namespace A067902.P12053553728482525036
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [2, 14] fun n a =>
  (a (n - 1) ^ 2 + 192) / a (n - 2)

end

end A067902.P12053553728482525036

namespace A067902

/-- `(a(n-1)²+192)/a(n-2)` -/
def P12053553728482525036.Spec : Prop :=
  ∀ n, P12053553728482525036.a n = (A067902 n : ℚ)

end A067902

/-! ## A067902.P9190870308448489391

`ogf((2-14x)/(1-14x+x^2))`
-/

namespace A067902.P9190870308448489391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -14] [1, -14, 1] n

end

end A067902.P9190870308448489391

namespace A067902

/-- `ogf((2-14x)/(1-14x+x^2))` -/
def P9190870308448489391.Spec : Prop :=
  ∀ n, P9190870308448489391.a n = A067902 n

end A067902

/-! ## A067902.P14304568395455825133

`(floor((sqrt(3)+2)^n)+1)²-2`
-/

namespace A067902.P14304568395455825133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (⌊(Real.sqrt (3 : ℝ) + 2) ^ n⌋ + 1) ^ 2 - 2

end

end A067902.P14304568395455825133

namespace A067902

/-- `(floor((sqrt(3)+2)^n)+1)²-2` -/
def P14304568395455825133.Spec : Prop :=
  ∀ n, P14304568395455825133.a n = A067902 n

end A067902

/-! ## A067902.P3394244996388255868

`record[round(a(n-1)/(sqrt(3)-2))]` with `a(0)=2, a(1)=14`
-/

namespace A067902.P3394244996388255868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 14] fun n f1 =>
  SequenceMachineLib.roundAway ((f1 (n - 1) : ℝ) / (Real.sqrt (3 : ℝ) - 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A067902.P3394244996388255868

namespace A067902

/-- `record[round(a(n-1)/(sqrt(3)-2))]` -/
def P3394244996388255868.Spec : Prop :=
  ∀ n, P3394244996388255868.a n = A067902 n

end A067902

/-! ## A067902.P11666069757583896693

`record[(floor((sqrt(3)+2)^n)+1)*(-1)^n]`
-/

namespace A067902.P11666069757583896693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (⌊(Real.sqrt (3 : ℝ) + 2) ^ n⌋ + 1) * (-1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A067902.P11666069757583896693

namespace A067902

/-- `record[(floor((sqrt(3)+2)^n)+1)*(-1)^n]` -/
def P11666069757583896693.Spec : Prop :=
  ∀ n, P11666069757583896693.a n = A067902 n

end A067902

/-! ## A067902.P5051294141018240530

`2*A001075(2*n)`
-/

namespace A067902.P5051294141018240530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001075 (2 * n)

end

end A067902.P5051294141018240530

namespace A067902

/-- `2*A001075(2*n)` -/
def P5051294141018240530.Spec : Prop :=
  ∀ n, P5051294141018240530.a n = A067902 n

end A067902

/-! ## A067902.P7441637213619302536

`2*A144536(2*n)`
-/

namespace A067902.P7441637213619302536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A144536 (2 * n)

end

end A067902.P7441637213619302536

namespace A067902

/-- `2*A144536(2*n)` -/
def P7441637213619302536.Spec : Prop :=
  ∀ n, P7441637213619302536.a n = A067902 n

end A067902

/-!
# A067903: Primes of the form floor((10/9)^k).

The programs for A067903, there is no canonical definition to state claims against.
-/

/-! ## A067903.P11617477827032298542

`eq[A003415(n), A034851(A101048(n))]`
-/

namespace A067903.P11617477827032298542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034851 (A101048 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A067903.P11617477827032298542

/-! ## A067903.P6033746799958996877

`A327783(A048410(n)+1)`
-/

namespace A067903.P6033746799958996877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327783 (A048410 n + 1).toNat

end

end A067903.P6033746799958996877

/-! ## A067903.P764994232612045028

`A118850(A101318(n+2)-1)`
-/

namespace A067903.P764994232612045028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118850 (A101318 (n + 2) - 1).toNat

end

end A067903.P764994232612045028

/-! ## A067903.P13536404475550491305

`A109919(2*A319726(n+1))`
-/

namespace A067903.P13536404475550491305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109919 (2 * A319726 (n + 1)).toNat

end

end A067903.P13536404475550491305

/-! ## A067903.P3221263163410488643

`∩[A028864(n+1), A090111(n+1)]`
-/

namespace A067903.P3221263163410488643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028864 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090111 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A067903.P3221263163410488643

/-!
# A067904: Primes of the form floor((3/2)^k).

The programs for A067904, there is no canonical definition to state claims against.
-/

/-! ## A067904.P804495253496229241

`A002379(A070759(n+1))`
-/

namespace A067904.P804495253496229241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002379 (A070759 (n + 1)).toNat

end

end A067904.P804495253496229241

/-! ## A067904.P15243760589598049141

`A014215(2*A070759(n+1))`
-/

namespace A067904.P15243760589598049141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014215 (2 * A070759 (n + 1)).toNat

end

end A067904.P15243760589598049141

/-! ## A067904.P13090651611469818203

`p?[floor((3/2)^n)]`
-/

namespace A067904.P13090651611469818203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((3 : ℚ) / 2) ^ n⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A067904.P13090651611469818203

/-! ## A067904.P10406118921546475121

`∏{d}[p?[A002379(n)], #]`
-/

namespace A067904.P10406118921546475121
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002379 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A067904.P10406118921546475121

/-!
# A067905: Primes of the form floor((4/3)^k).

The programs for A067905, there is no canonical definition to state claims against.
-/

/-! ## A067905.P1311832553211427800

`A064628(A070762(n+1))`
-/

namespace A067905.P1311832553211427800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064628 (A070762 (n + 1)).toNat

end

end A067905.P1311832553211427800

/-! ## A067905.P1045955822088466653

`p?[floor((4/3)^n)]`
-/

namespace A067905.P1045955822088466653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((4 : ℚ) / 3) ^ n⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A067905.P1045955822088466653

/-! ## A067905.P9444286742384652590

`∏{d}[p?[A064628(n)], #]`
-/

namespace A067905.P9444286742384652590
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064628 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A067905.P9444286742384652590

/-! ## A067905.P5129789454747984558

`A064628(eq[1, ∑{e}[floor((4/3)^n), #]])`
-/

namespace A067905.P5129789454747984558
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((4 : ℚ) / 3) ^ n⌋

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n).natAbs, Nat.factorization (f3 n).natAbs p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064628 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A067905.P5129789454747984558

/-! ## A067905.P11267318033174526012

`A000027(p?[A064628(n)])`
-/

namespace A067905.P11267318033174526012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064628 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A067905.P11267318033174526012

/-!
# A067906: Primes of the form floor((5/4)^k).

The programs for A067906, there is no canonical definition to state claims against.
-/

/-! ## A067906.P14655931595064063023

`p?[record[A065565(A008611(n))]]`
-/

namespace A067906.P14655931595064063023
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065565 (A008611 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A067906.P14655931595064063023

/-! ## A067906.P10480496920832897980

`p?[record[A065565(A025480(n))]]`
-/

namespace A067906.P10480496920832897980
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065565 (A025480 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A067906.P10480496920832897980

/-! ## A067906.P17140926640078356345

`p?[record[A065565(A028242(n))]]`
-/

namespace A067906.P17140926640078356345
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065565 (A028242 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A067906.P17140926640078356345

/-! ## A067906.P13137508912567212787

`p?[record[A065565(A052938(n))]]`
-/

namespace A067906.P13137508912567212787
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065565 (A052938 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A067906.P13137508912567212787

/-! ## A067906.P3525288147149789533

`p?[record[A065565(A078898(n))]]`
-/

namespace A067906.P3525288147149789533
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065565 (A078898 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A067906.P3525288147149789533

/-!
# A067907: Primes of the form floor((6/5)^k).

The programs for A067907, there is no canonical definition to state claims against.
-/

/-! ## A067907.P7913085757823744315

`p?[A094983(n+6)]`
-/

namespace A067907.P7913085757823744315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094983 (n + 6)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A067907.P7913085757823744315

/-! ## A067907.P177033276706541111

`p?[record[A094983(A004183(n))]]`
-/

namespace A067907.P177033276706541111
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094983 (A004183 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A067907.P177033276706541111

/-! ## A067907.P9114493056220842901

`record[p?[A094983(A004442(n))]]`
-/

namespace A067907.P9114493056220842901
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094983 (A004442 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A067907.P9114493056220842901

/-! ## A067907.P17421157107934171235

`record[A020639(A094983(n+4))]`
-/

namespace A067907.P17421157107934171235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A094983 (n + 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A067907.P17421157107934171235

/-!
# A067908: Primes of the form floor((7/6)^k).

The programs for A067908, there is no canonical definition to state claims against.
-/

/-! ## A067908.P18301686734926745488

`p?[A094988(n+7)]`
-/

namespace A067908.P18301686734926745488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094988 (n + 7)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A067908.P18301686734926745488

/-! ## A067908.P18355048993703197124

`record[or(n%2, p?[A094988(n)])]`
-/

namespace A067908.P18355048993703197124
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094988 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((n % 2 : ℕ) : ℤ) (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A067908.P18355048993703197124

/-! ## A067908.P11460839890925950231

`p?[record[A094988(A008611(n))]]`
-/

namespace A067908.P11460839890925950231
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094988 (A008611 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A067908.P11460839890925950231

/-! ## A067908.P7796247639156090574

`p?[record[A094988(A025480(n))]]`
-/

namespace A067908.P7796247639156090574
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094988 (A025480 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A067908.P7796247639156090574

/-! ## A067908.P17258878062324209060

`p?[record[A094988(A028242(n))]]`
-/

namespace A067908.P17258878062324209060
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094988 (A028242 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A067908.P17258878062324209060

/-!
# A067909: Primes of the form floor((8/7)^k).

The programs for A067909, there is no canonical definition to state claims against.
-/

/-! ## A067909.P5083996349275631975

`p?[record[A094990(A025480(n))]]`
-/

namespace A067909.P5083996349275631975
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094990 (A025480 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A067909.P5083996349275631975

/-! ## A067909.P2520662130091290577

`p?[record[A094990(A028242(n))]]`
-/

namespace A067909.P2520662130091290577
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094990 (A028242 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A067909.P2520662130091290577

/-! ## A067909.P15896719282643514564

`p?[A094990(n)%A094990(n+1)]`
-/

namespace A067909.P15896719282643514564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A094990 n) (A094990 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A067909.P15896719282643514564

/-! ## A067909.P17132243406318888909

`record[A014963(A094990(n+6))]`
-/

namespace A067909.P17132243406318888909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A094990 (n + 6)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A067909.P17132243406318888909

/-!
# A067910: Primes of the form floor((9/8)^k).

The programs for A067910, there is no canonical definition to state claims against.
-/

/-! ## A067910.P7300978144193259098

`p?[record[A094994(A004179(n))]]`
-/

namespace A067910.P7300978144193259098
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094994 (A004179 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A067910.P7300978144193259098

/-! ## A067910.P6648567822184944538

`p?[record[A094994(A025480(n))]]`
-/

namespace A067910.P6648567822184944538
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094994 (A025480 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A067910.P6648567822184944538

/-! ## A067910.P12048644862305905769

`p?[record[A094994(A028242(n))]]`
-/

namespace A067910.P12048644862305905769
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094994 (A028242 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A067910.P12048644862305905769

/-! ## A067910.P9660355974231002466

`p?[record[A094994(A052938(n))]]`
-/

namespace A067910.P9660355974231002466
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094994 (A052938 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A067910.P9660355974231002466

/-! ## A067910.P6292702870654577449

`p?[record[A094994(A133310(n))]]`
-/

namespace A067910.P6292702870654577449
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094994 (A133310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A067910.P6292702870654577449

/-!
# A067911: Product of gcd(k,n) for 1 <= k <= n.

The programs for A067911, the canonical program `A067911.P2708463265915343040` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A067911 has offset 1).

The definition of A067911 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 179 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A067911.P6167198145721685536

`(n+1)*A051190(n+1)`
-/

namespace A067911.P6167198145721685536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A051190 (n + 1)

end

end A067911.P6167198145721685536

namespace A067911

/-- `(n+1)*A051190(n+1)` -/
def P6167198145721685536.Spec : Prop :=
  ∀ n, P6167198145721685536.a n = A067911 (n + 1)

end A067911

/-! ## A067911.P4341019605143225708

`∏{d}[n+1, A193679(#)]`
-/

namespace A067911.P4341019605143225708
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), A193679 d

end

end A067911.P4341019605143225708

namespace A067911

/-- `∏{d}[n+1, A193679(#)]` -/
def P4341019605143225708.Spec : Prop :=
  ∀ n, P4341019605143225708.a n = A067911 (n + 1)

end A067911

/-! ## A067911.P6533554240712857798

`∏{d}[n+1, ((n+1)/#)^A000010(#)]`
-/

namespace A067911.P6533554240712857798
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), ((n + 1 : ℚ) / (d : ℚ)) ^ (A000010 d : ℤ)

end

end A067911.P6533554240712857798

namespace A067911

/-- `∏{d}[n+1, ((n+1)/#)^A000010(#)]` -/
def P6533554240712857798.Spec : Prop :=
  ∀ n, P6533554240712857798.a n = (A067911 (n + 1) : ℚ)

end A067911

/-! ## A067911.P2708463265915343040

`∏{d}[n+1, A014963((n+1)/#)^#]`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A067911

/-- `∏{d}[n+1, A014963((n+1)/#)^#]` -/
def P2708463265915343040.Spec : Prop :=
  ∀ n, P2708463265915343040.a n = A067911 (n + 1)

theorem P2708463265915343040.correct : P2708463265915343040.Spec := by
  intro n
  simp only [A067911, Nat.add_sub_cancel]

end A067911

/-! ## A067911.P3795973368739081043

`A276162((n+1)²+n²)`
-/

namespace A067911.P3795973368739081043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276162 ((n + 1) ^ 2 + n ^ 2)

end

end A067911.P3795973368739081043

namespace A067911

/-- `A276162((n+1)²+n²)` -/
def P3795973368739081043.Spec : Prop :=
  ∀ n, P3795973368739081043.a n = A067911 (n + 1)

end A067911

/-! ## A067911.P8279176167037637976

`∏[n+1]/A119619(n+1)`
-/

namespace A067911.P8279176167037637976
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / (A119619 (n + 1) : ℚ)

end

end A067911.P8279176167037637976

namespace A067911

/-- `∏[n+1]/A119619(n+1)` -/
def P8279176167037637976.Spec : Prop :=
  ∀ n, P8279176167037637976.a n = (A067911 (n + 1) : ℚ)

end A067911

/-! ## A067911.P700571160938602262

`A056916(n+1)/A308944(n+1)`
-/

namespace A067911.P700571160938602262
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056916 (n + 1) : ℚ) / (A308944 (n + 1) : ℚ)

end

end A067911.P700571160938602262

namespace A067911

/-- `A056916(n+1)/A308944(n+1)` -/
def P700571160938602262.Spec : Prop :=
  ∀ n, P700571160938602262.a n = (A067911 (n + 1) : ℚ)

end A067911

/-! ## A067911.P14692522294455242126

`A000312(n+1)/A056916(n+1)`
-/

namespace A067911.P14692522294455242126
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000312 (n + 1) : ℚ) / (A056916 (n + 1) : ℚ)

end

end A067911.P14692522294455242126

namespace A067911

/-- `A000312(n+1)/A056916(n+1)` -/
def P14692522294455242126.Spec : Prop :=
  ∀ n, P14692522294455242126.a n = (A067911 (n + 1) : ℚ)

end A067911

/-!
# A067912: Engel expansion of zeta(4) = Pi^4/90 = Sum_{i>0} 1/i^4.

The programs for A067912, there is no canonical definition to state claims against.
-/

/-! ## A067912.P11780410400847781253

`or(n, A107081(A322520(n+1)))`
-/

namespace A067912.P11780410400847781253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (A107081 (A322520 (n + 1)).toNat)

end

end A067912.P11780410400847781253

/-!
# A067921: Engel expansion of sqrt(Pi/2).

The programs for A067921, there is no canonical definition to state claims against.
-/

/-! ## A067921.P5203397739481939184

`A332377(A327215(n))%A000326(3*n+4)`
-/

namespace A067921.P5203397739481939184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A332377 (A327215 n).toNat) (A000326 (3 * n + 4))

end

end A067921.P5203397739481939184

/-!
# A067922: Engel expansion of log(5).

The programs for A067922, there is no canonical definition to state claims against.
-/

/-! ## A067922.P2332654169803573042

`A005669(n+1)+A001221(A001147(n))`
-/

namespace A067922.P2332654169803573042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005669 (n + 1) + A001221 (A001147 n).toNat

end

end A067922.P2332654169803573042

/-! ## A067922.P7228727843267623114

`A086288(A226877(n))+A005669(n+1)`
-/

namespace A067922.P7228727843267623114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086288 (A226877 n).toNat + A005669 (n + 1)

end

end A067922.P7228727843267623114

/-! ## A067922.P16289924676564020275

`A056239(A002386(n+1)*A035959(n))`
-/

namespace A067922.P16289924676564020275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A002386 (n + 1) * A035959 n).toNat

end

end A067922.P16289924676564020275

/-!
# A067923: Engel expansion of log(23).

The programs for A067923, there is no canonical definition to state claims against.
-/

/-! ## A067923.P12069311954571419654

`A290103(A096654(n))`
-/

namespace A067923.P12069311954571419654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290103 (A096654 n).toNat

end

end A067923.P12069311954571419654

/-! ## A067923.P12969891353268310497

`A152237(A274975(n))`
-/

namespace A067923.P12969891353268310497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152237 (A274975 n).toNat

end

end A067923.P12969891353268310497

/-!
# A067924: Triangle read by rows in which the n-th row gives degrees of irreducible representations of symmetric group S_n (cf. A060240) but now rows are sorted as indicated in A059797 with p(n) terms on each row, where p(n) = A000041(n).

The programs for A067924, there is no canonical definition to state claims against.
-/

/-! ## A067924.P8938101724655730673

`A290252(A140691(n+1))`
-/

namespace A067924.P8938101724655730673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290252 (A140691 (n + 1)).toNat

end

end A067924.P8938101724655730673

/-! ## A067924.P17196321071982464897

`A060351(A140691(n+1)%A124922(n+1))`
-/

namespace A067924.P17196321071982464897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060351 (Int.tmod (A140691 (n + 1)) (A124922 (n + 1))).toNat

end

end A067924.P17196321071982464897

/-! ## A067924.P4046818027576763419

`A344912(A326291(A318155(n))+n)`
-/

namespace A067924.P4046818027576763419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344912 (A326291 (A318155 n).toNat + (n : ℤ)).toNat

end

end A067924.P4046818027576763419

/-! ## A067924.P7243796759151219120

`A344912(n)-A326291(A318155(n))`
-/

namespace A067924.P7243796759151219120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344912 n - A326291 (A318155 n).toNat

end

end A067924.P7243796759151219120

/-! ## A067924.P17463806257800791937

`A344912(A055645(n))`
-/

namespace A067924.P17463806257800791937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344912 (A055645 n).toNat

end

end A067924.P17463806257800791937

/-!
# A067928: Numbers k such that the digits of the k-th prime begin with k.

The programs for A067928, there is no canonical definition to state claims against.
-/

/-! ## A067928.P16747834085875418501

`A068575(n+2)`
-/

namespace A067928.P16747834085875418501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068575 (n + 2)

end

end A067928.P16747834085875418501

/-!
# A067929: Numbers k that divide the alternating sum phi(1) - phi(2) + phi(3) - phi(4) + ... + ((-1)^(k+1))*phi(k).

The programs for A067929, there is no canonical definition to state claims against.
-/

/-! ## A067929.P14304996922224415823

`lt[A068773(n+1)%(n+1), 1]+1`
-/

namespace A067929.P14304996922224415823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A068773 (n + 1)) (n + 1 : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A067929.P14304996922224415823

/-!
# A067930: Nonprime solutions to k == -1 (mod phi(k+1)).

The programs for A067930, there is no canonical definition to state claims against.
-/

/-! ## A067930.P12612030446235843332

`record[A171435(A190812(n+1))]`
-/

namespace A067930.P12612030446235843332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171435 (A190812 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A067930.P12612030446235843332

/-! ## A067930.P10536321246572728592

`filter[A190812(n+1), A354108(#)]`
-/

namespace A067930.P10536321246572728592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190812 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354108 (f1 j).toNat = 1) n)

end

end A067930.P10536321246572728592

/-! ## A067930.P14820731651851569659

`record[A171435(A003586(n+2)-1)]`
-/

namespace A067930.P14820731651851569659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171435 (A003586 (n + 2) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A067930.P14820731651851569659

/-! ## A067930.P11220992143535134074

`filter[A190812(n+1), A005171(#)]`
-/

namespace A067930.P11220992143535134074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190812 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A067930.P11220992143535134074

/-! ## A067930.P7314154174293737946

`filter[A190812(n+1), A292438(#)]`
-/

namespace A067930.P7314154174293737946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190812 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A292438 (f1 j).toNat = 1) n)

end

end A067930.P7314154174293737946

/-!
# A067932: Primes p such that p+3 == 0 (mod phi(p+3)).

The programs for A067932, there is no canonical definition to state claims against.
-/

/-! ## A067932.P11207629727049516842

`∩[A152449(n+1), A136252(n)]`
-/

namespace A067932.P11207629727049516842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152449 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136252 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A067932.P11207629727049516842

/-! ## A067932.P15557347356886764232

`∩[A136252(n), A165255(n+1)]`
-/

namespace A067932.P15557347356886764232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136252 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165255 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A067932.P15557347356886764232

/-! ## A067932.P11833462605198036253

`∩[A181741(n+1), A136252(n)]`
-/

namespace A067932.P11833462605198036253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181741 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136252 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A067932.P11833462605198036253

/-! ## A067932.P16211759304238826731

`∩[A136252(n), A227880(n+1)]`
-/

namespace A067932.P16211759304238826731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136252 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227880 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A067932.P16211759304238826731

/-! ## A067932.P5812390749320276759

`∩[A152449(n+1), A290113(n)]`
-/

namespace A067932.P5812390749320276759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152449 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290113 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A067932.P5812390749320276759

/-!
# A067933: Primes p such that p == -1 (mod phi(p-1)).

The programs for A067933, there is no canonical definition to state claims against.
-/

/-! ## A067933.P5196808417607575183

`p?[A119388(n+1)]`
-/

namespace A067933.P5196808417607575183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119388 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A067933.P5196808417607575183

/-! ## A067933.P11985153617392948453

`A119388(comp[8*n])`
-/

namespace A067933.P11985153617392948453
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119388 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A067933.P11985153617392948453

/-! ## A067933.P7185748006847802002

`p?[A015834(n+1)+1]`
-/

namespace A067933.P7185748006847802002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015834 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A067933.P7185748006847802002

/-! ## A067933.P1753536070081083522

`p?[A207667(n+1)+1]`
-/

namespace A067933.P1753536070081083522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207667 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A067933.P1753536070081083522

/-! ## A067933.P5131875482475901348

`A207667(A380550(n+1))+1`
-/

namespace A067933.P5131875482475901348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207667 (A380550 (n + 1)).toNat + 1

end

end A067933.P5131875482475901348

/-!
# A067934: Let rep(k) = (10^k - 1)/9 be the k-th repunit number = 11111..1111 with k 1 digits, then sequence gives values of k such that rep(k) == 1 (mod k).

The programs for A067934, there is no canonical definition to state claims against.
-/

/-! ## A067934.P17793182751417709035

`filter[A121912(n+1), A359377(#)]`
-/

namespace A067934.P17793182751417709035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121912 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359377 (f1 j).toNat = 1) n)

end

end A067934.P17793182751417709035

/-! ## A067934.P18410886572802958636

`∩[A108118(n+1), A121912(n+1)]`
-/

namespace A067934.P18410886572802958636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108118 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121912 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A067934.P18410886572802958636

/-! ## A067934.P13056127544439781408

`∩[A121912(n+1), A182337(n+1)]`
-/

namespace A067934.P13056127544439781408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121912 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182337 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A067934.P13056127544439781408

/-! ## A067934.P5415114612404318196

`∩[A001651(n+1), A121912(n+1)]`
-/

namespace A067934.P5415114612404318196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001651 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121912 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A067934.P5415114612404318196

/-! ## A067934.P191221481950025786

`record[A051176(A121912(n+1))]`
-/

namespace A067934.P191221481950025786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051176 (A121912 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A067934.P191221481950025786

/-! ## A067934.P610739626610015000

`filter[A121912(n+1), A011655(#)]`
-/

namespace A067934.P610739626610015000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121912 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A011655 (f1 j).toNat = 1) n)

end

end A067934.P610739626610015000

/-! ## A067934.P16849821156263951801

`filter[A121912(n+1), A267208(#)]`
-/

namespace A067934.P16849821156263951801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121912 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267208 (f1 j).toNat = 1) n)

end

end A067934.P16849821156263951801

/-! ## A067934.P9644868223202714834

`eq[A057427(n), A095250(n+1)]+1`
-/

namespace A067934.P9644868223202714834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095250 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A067934.P9644868223202714834

/-! ## A067934.P17880947498626085794

`∩[A121912(n+1), A382751(n+1)]`
-/

namespace A067934.P17880947498626085794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121912 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382751 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A067934.P17880947498626085794

/-! ## A067934.P9559149651299018440

`∩[A119905(n+1), A121912(n+1)]`
-/

namespace A067934.P9559149651299018440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119905 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121912 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A067934.P9559149651299018440

/-! ## A067934.P6642239736428569580

`eq[1, A095250(A233583(n+2))]+1`
-/

namespace A067934.P6642239736428569580
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095250 (A233583 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A067934.P6642239736428569580

/-! ## A067934.P17206568203945699215

`eq[A057427(n), A095250(A233583(n+1))]`
-/

namespace A067934.P17206568203945699215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095250 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A067934.P17206568203945699215

/-! ## A067934.P14481950804125149643

`eq[A095250(A233583(n+1)), A097325(n)]`
-/

namespace A067934.P14481950804125149643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095250 (A233583 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097325 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A067934.P14481950804125149643

/-!
# A067937: Let rep(k) be the k-th repunit number, sequence gives values of k such that rep(k) == rep(4) (mod k).

The programs for A067937, there is no canonical definition to state claims against.
-/

/-! ## A067937.P2613965188810205424

`∩[A067943(n+1), A349294(n+1)]`
-/

namespace A067937.P2613965188810205424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067943 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349294 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A067937.P2613965188810205424

/-!
# A067938: Let rep(n) be the n-th repunit number, sequence gives values of n such that rep(n)==rep(5) (mod n).

The programs for A067938, there is no canonical definition to state claims against.
-/

/-! ## A067938.P4827357701394048787

`record[gcd(n, A282416(2*n))]`
-/

namespace A067938.P4827357701394048787
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A282416 (2 * n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A067938.P4827357701394048787

/-! ## A067938.P11011345929423966725

`A086520(∑[a(n-1)-(1-a(n-2))]-n)` with `a(0)=4, a(1)=6`
-/

namespace A067938.P11011345929423966725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [4, 6] fun n f1 =>
  f1 (n - 1) - (1 - f1 (n - 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086520 (∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)).toNat

end

end A067938.P11011345929423966725

/-! ## A067938.P4661561395637277515

`A086520(A157728(n+6))`
-/

namespace A067938.P4661561395637277515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086520 (A157728 (n + 6)).toNat

end

end A067938.P4661561395637277515

/-! ## A067938.P6623179874893344971

`A086520(A020732(n+1)-3)`
-/

namespace A067938.P6623179874893344971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086520 (A020732 (n + 1) - 3).toNat

end

end A067938.P6623179874893344971

/-! ## A067938.P5508383872996813011

`A086520(xor(5, A020732(n+1)))`
-/

namespace A067938.P5508383872996813011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086520 (Int.xor 5 (A020732 (n + 1))).toNat

end

end A067938.P5508383872996813011

/-!
# A067940: Let rep(n) be the n-th repunit number, sequence gives values of n such that rep(n)==rep(7) (mod n).

The programs for A067940, there is no canonical definition to state claims against.
-/

/-! ## A067940.P8307480592101635601

`eq[A011655(n), A342908(A342908(n+1))]`
-/

namespace A067940.P8307480592101635601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011655 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342908 (A342908 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A067940.P8307480592101635601

/-! ## A067940.P8927738357601110658

`eq[A088439(n), A342908(A342908(n+1))]`
-/

namespace A067940.P8927738357601110658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088439 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342908 (A342908 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A067940.P8927738357601110658

/-! ## A067940.P7063384920103518558

`eq[A007318(A298857(n)), A011655(n)]`
-/

namespace A067940.P7063384920103518558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A298857 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011655 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A067940.P7063384920103518558

/-! ## A067940.P11580707454902167547

`lt[A052816(n+1), A005940(A034896(n))]`
-/

namespace A067940.P11580707454902167547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052816 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005940 (A034896 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A067940.P11580707454902167547

/-! ## A067940.P1657388616158215559

`A274384(A079064(n+1))`
-/

namespace A067940.P1657388616158215559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274384 (A079064 (n + 1)).toNat

end

end A067940.P1657388616158215559

/-!
# A067941: Let rep(n) be the n-th repunit number, sequence gives values of n such that rep(n)==rep(8) (mod n).

The programs for A067941, there is no canonical definition to state claims against.
-/

/-! ## A067941.P3614539636743453688

`record[gcd(A065033(n), A164046(n+1))]`
-/

namespace A067941.P3614539636743453688
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A065033 n) (A164046 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A067941.P3614539636743453688

/-! ## A067941.P18128823544062251145

`∩[A274384(n+1), A373847(n+1)]`
-/

namespace A067941.P18128823544062251145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274384 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373847 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A067941.P18128823544062251145

/-! ## A067941.P11274580573283598443

`lt[A007088(A046765(2*n)), A336546(3*n+1)]`
-/

namespace A067941.P11274580573283598443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A046765 (2 * n)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336546 (3 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A067941.P11274580573283598443

/-! ## A067941.P18080245674727652110

`eq[1, A116653(A289772(n))]`
-/

namespace A067941.P18080245674727652110
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116653 (A289772 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A067941.P18080245674727652110

/-! ## A067941.P3991848182086341852

`record[gcd(A123229(n+1), A235280(n+1))]`
-/

namespace A067941.P3991848182086341852
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A123229 (n + 1)) (A235280 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A067941.P3991848182086341852

/-!
# A067942: Let rep(n) be the n-th repunit number; sequence gives values of n such that rep(n) == rep(9) (mod n).

The programs for A067942, there is no canonical definition to state claims against.
-/

/-! ## A067942.P3372557380091524931

`lt[A155863(A155835(2*(n+2))), A155861(n)]`
-/

namespace A067942.P3372557380091524931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155863 (A155835 (2 * (n + 2))).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155861 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A067942.P3372557380091524931

/-!
# A067943: Let rep(n) be the n-th repunit number, sequence gives values of n such that rep(n)==rep(10) (mod n).

The programs for A067943, there is no canonical definition to state claims against.
-/

/-! ## A067943.P13456046389302699994

`A192438(A003592(n+1))+A088116(n)`
-/

namespace A067943.P13456046389302699994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192438 (A003592 (n + 1)).toNat + A088116 n

end

end A067943.P13456046389302699994

/-! ## A067943.P10546848638488836820

`record[A353367(A064164(n+1))]`
-/

namespace A067943.P10546848638488836820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353367 (A064164 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A067943.P10546848638488836820

/-! ## A067943.P7459487036563373362

`record[A353367(2*(n+2))/A353318(n+1)]`
-/

namespace A067943.P7459487036563373362
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A353367 (2 * (n + 2)) : ℚ) / (A353318 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A067943.P7459487036563373362

/-! ## A067943.P2104855004058332086

`record[A353367(2*(n+2))%A353356(n+1)]`
-/

namespace A067943.P2104855004058332086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A353367 (2 * (n + 2))) (A353356 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A067943.P2104855004058332086

/-!
# A067945: Numbers k that divide 3^k - 1.

The programs for A067945, there is no canonical definition to state claims against.
-/

/-! ## A067945.P7905225055109385209

`eq[1, A094918(n+1)+1]+1`
-/

namespace A067945.P7905225055109385209
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094918 (n + 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A067945.P7905225055109385209

/-! ## A067945.P7263936499288286796

`record[A068382(n+1)-A094918(A068382(n+1))]`
-/

namespace A067945.P7263936499288286796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068382 (n + 1) - A094918 (A068382 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A067945.P7263936499288286796

/-! ## A067945.P6313098915455246468

`eq[1, A000007(A094918(n+1))]+1`
-/

namespace A067945.P6313098915455246468
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A094918 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A067945.P6313098915455246468

/-! ## A067945.P14026106748138466490

`eq[1, A082511(n+1)]+1`
-/

namespace A067945.P14026106748138466490
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082511 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A067945.P14026106748138466490

/-!
# A067946: Numbers k that divide 5^k - 1.

The programs for A067946, the canonical program `A067946.P8604927095954536120` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A067946 has offset 1).

The definition of A067946 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 303 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A067946.P8604927095954536120

`record[gcd(n+1, A094920(n+1))]`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A067946

/-- `record[gcd(n+1, A094920(n+1))]` -/
def P8604927095954536120.Spec : Prop :=
  ∀ n, (P8604927095954536120.a n : ℤ) = A067946 (n + 1)

theorem P8604927095954536120.correct : P8604927095954536120.Spec := by
  intro n
  simp only [A067946, Nat.add_sub_cancel]

end A067946

/-! ## A067946.P14442855431090396152

`record[(1-A094920(n+1))*A000027(n+1)]`
-/

namespace A067946.P14442855431090396152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A094920 (n + 1)) * A000027 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A067946.P14442855431090396152

namespace A067946

/-- `record[(1-A094920(n+1))*A000027(n+1)]` -/
def P14442855431090396152.Spec : Prop :=
  ∀ n, P14442855431090396152.a n = A067946 (n + 1)

end A067946

/-! ## A067946.P4832558593933746614

`record[A000027(n+1)/A247714(A094920(n+1))]`
-/

namespace A067946.P4832558593933746614
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000027 (n + 1) : ℚ) / (A247714 (A094920 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A067946.P4832558593933746614

namespace A067946

/-- `record[A000027(n+1)/A247714(A094920(n+1))]` -/
def P4832558593933746614.Spec : Prop :=
  ∀ n, P4832558593933746614.a n = (A067946 (n + 1) : ℚ)

end A067946

/-! ## A067946.P10346949482359227570

`eq[1, A083528(n+1)]+1`
-/

namespace A067946.P10346949482359227570
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083528 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A067946.P10346949482359227570

namespace A067946

/-- `eq[1, A083528(n+1)]+1` -/
def P10346949482359227570.Spec : Prop :=
  ∀ n, (P10346949482359227570.a n : ℤ) = A067946 (n + 1)

end A067946

/-! ## A067946.P5361968590153717294

`eq[n, n*A083529(n+1)]+1`
-/

namespace A067946.P5361968590153717294
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A083529 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A067946.P5361968590153717294

namespace A067946

/-- `eq[n, n*A083529(n+1)]+1` -/
def P5361968590153717294.Spec : Prop :=
  ∀ n, (P5361968590153717294.a n : ℤ) = A067946 (n + 1)

end A067946

/-! ## A067946.P7938949313773244674

`eq[A015910(n+1), A056969(n+1)]+1`
-/

namespace A067946.P7938949313773244674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015910 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056969 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A067946.P7938949313773244674

namespace A067946

/-- `eq[A015910(n+1), A056969(n+1)]+1` -/
def P7938949313773244674.Spec : Prop :=
  ∀ n, (P7938949313773244674.a n : ℤ) = A067946 (n + 1)

end A067946

/-! ## A067946.P18376154189190855507

`record[(n+1)*A036987(A083528(n+1)-1)]`
-/

namespace A067946.P18376154189190855507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A036987 (A083528 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A067946.P18376154189190855507

namespace A067946

/-- `record[(n+1)*A036987(A083528(n+1)-1)]` -/
def P18376154189190855507.Spec : Prop :=
  ∀ n, P18376154189190855507.a n = A067946 (n + 1)

end A067946

/-!
# A067947: Numbers k such that k divides 7^k - 1.

The programs for A067947, the canonical program `A067947.P7111284946660719260` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A067947 has offset 1).

The definition of A067947 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 325 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A067947.P8115435927080198728

`eq[1, A083530(n+1)]+1`
-/

namespace A067947.P8115435927080198728
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083530 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A067947.P8115435927080198728

namespace A067947

/-- `eq[1, A083530(n+1)]+1` -/
def P8115435927080198728.Spec : Prop :=
  ∀ n, (P8115435927080198728.a n : ℤ) = A067947 (n + 1)

end A067947

/-! ## A067947.P13958391451758041547

`eq[1, A191562(n+1)]+1`
-/

namespace A067947.P13958391451758041547
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191562 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A067947.P13958391451758041547

namespace A067947

/-- `eq[1, A191562(n+1)]+1` -/
def P13958391451758041547.Spec : Prop :=
  ∀ n, (P13958391451758041547.a n : ℤ) = A067947 (n + 1)

end A067947

/-! ## A067947.P7111284946660719260

`eq[n, n*A066438(n+1)]+1`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A067947

/-- `eq[n, n*A066438(n+1)]+1` -/
def P7111284946660719260.Spec : Prop :=
  ∀ n, (P7111284946660719260.a n : ℤ) = A067947 (n + 1)

theorem P7111284946660719260.correct : P7111284946660719260.Spec := by
  intro n
  simp only [A067947, Nat.add_sub_cancel]

end A067947

/-! ## A067947.P14433047167319711887

`record[A000027(n+1)/A083530(n+1)]`
-/

namespace A067947.P14433047167319711887
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000027 (n + 1) : ℚ) / (A083530 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A067947.P14433047167319711887

namespace A067947

/-- `record[A000027(n+1)/A083530(n+1)]` -/
def P14433047167319711887.Spec : Prop :=
  ∀ n, P14433047167319711887.a n = (A067947 (n + 1) : ℚ)

end A067947

/-! ## A067947.P505971899376538038

`record[A000027(n+1)/A191562(n+1)]`
-/

namespace A067947.P505971899376538038
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000027 (n + 1) : ℚ) / (A191562 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A067947.P505971899376538038

namespace A067947

/-- `record[A000027(n+1)/A191562(n+1)]` -/
def P505971899376538038.Spec : Prop :=
  ∀ n, P505971899376538038.a n = (A067947 (n + 1) : ℚ)

end A067947

/-! ## A067947.P18001996107163064494

`record[A005408(n)-n*A083530(n+1)]`
-/

namespace A067947.P18001996107163064494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n - (n : ℤ) * A083530 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A067947.P18001996107163064494

namespace A067947

/-- `record[A005408(n)-n*A083530(n+1)]` -/
def P18001996107163064494.Spec : Prop :=
  ∀ n, P18001996107163064494.a n = A067947 (n + 1)

end A067947

/-! ## A067947.P8863957721358318902

`record[A038722(A038722(n+1))/A083530(n+1)]`
-/

namespace A067947.P8863957721358318902
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038722 (A038722 (n + 1)).toNat : ℚ) / (A083530 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A067947.P8863957721358318902

namespace A067947

/-- `record[A038722(A038722(n+1))/A083530(n+1)]` -/
def P8863957721358318902.Spec : Prop :=
  ∀ n, P8863957721358318902.a n = (A067947 (n + 1) : ℚ)

end A067947

/-! ## A067947.P3137733819638977408

`record[A008619(2*n)/A083530(n+1)]`
-/

namespace A067947.P3137733819638977408
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008619 (2 * n) : ℚ) / (A083530 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A067947.P3137733819638977408

namespace A067947

/-- `record[A008619(2*n)/A083530(n+1)]` -/
def P3137733819638977408.Spec : Prop :=
  ∀ n, P3137733819638977408.a n = (A067947 (n + 1) : ℚ)

end A067947

/-! ## A067947.P14998690833591870476

`record[A003602(n+1)/A083530(A003602(n+1))]`
-/

namespace A067947.P14998690833591870476
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003602 (n + 1) : ℚ) / (A083530 (A003602 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A067947.P14998690833591870476

namespace A067947

/-- `record[A003602(n+1)/A083530(A003602(n+1))]` -/
def P14998690833591870476.Spec : Prop :=
  ∀ n, P14998690833591870476.a n = (A067947 (n + 1) : ℚ)

end A067947

/-! ## A067947.P4074413372262419084

`record[A032742(n+1)/A083530(A032742(n+1))]`
-/

namespace A067947.P4074413372262419084
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A032742 (n + 1) : ℚ) / (A083530 (A032742 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A067947.P4074413372262419084

namespace A067947

/-- `record[A032742(n+1)/A083530(A032742(n+1))]` -/
def P4074413372262419084.Spec : Prop :=
  ∀ n, P4074413372262419084.a n = (A067947 (n + 1) : ℚ)

end A067947

/-!
# A067948: Triangle of labeled rooted trees according to the number of increasing edges.

The programs for A067948, there is no canonical definition to state claims against.
-/

/-! ## A067948.P15054795030240226386

`A071208(n+1)/A002024(n+1)`
-/

namespace A067948.P15054795030240226386
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A071208 (n + 1) : ℚ) / (A002024 (n + 1) : ℚ)

end

end A067948.P15054795030240226386

/-! ## A067948.P17418798214035937299

`A071208(n+1)/(A003056(n)+1)`
-/

namespace A067948.P17418798214035937299
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A071208 (n + 1) : ℚ) / (A003056 n + 1 : ℚ)

end

end A067948.P17418798214035937299

/-!
# A067951: a(0) = 1; a(n) = Sum_{1 <= k <= n and k|n} a(n-k).

The programs for A067951, there is no canonical definition to state claims against.
-/

/-! ## A067951.P22541962035069087

`∑[A083360(2*n+5)%(A050447(3*n)+1)]`
-/

namespace A067951.P22541962035069087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083360 (2 * n + 5)) (A050447 (3 * n) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A067951.P22541962035069087

/-! ## A067951.P4562952738569692655

`A226130(A226106(n)+A080513(n))`
-/

namespace A067951.P4562952738569692655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226130 (A226106 n + A080513 n).toNat

end

end A067951.P4562952738569692655

/-! ## A067951.P7883279945091936048

`A127525(n+1)+A025442(A000244(n))`
-/

namespace A067951.P7883279945091936048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127525 (n + 1) + A025442 (A000244 n).toNat

end

end A067951.P7883279945091936048

/-! ## A067951.P2785196707863065278

`A329144(A326502(n+2)+1)+A174738(A266724(n))`
-/

namespace A067951.P2785196707863065278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329144 (A326502 (n + 2) + 1).toNat + A174738 (A266724 n).toNat

end

end A067951.P2785196707863065278

/-!
# A067952: Numbers k having a partition k = sum x_i for which sum k/x_i is also a partition of k and the x_i are distinct parts.

The programs for A067952, there is no canonical definition to state claims against.
-/

/-! ## A067952.P4123228127059571440

`A325781(∑[A127057(n+1)²])`
-/

namespace A067952.P4123228127059571440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127057 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325781 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A067952.P4123228127059571440

/-! ## A067952.P9187723068023475384

`A325795(∑[A127057(n+1)²])`
-/

namespace A067952.P9187723068023475384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127057 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325795 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A067952.P9187723068023475384

/-!
# A067953: Number of ways to sum numbers from 1 to n to the n-th prime.

The programs for A067953, there is no canonical definition to state claims against.
-/

/-! ## A067953.P15508835167474513073

`A079126(A034953(n+1)+1+n)`
-/

namespace A067953.P15508835167474513073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079126 (A034953 (n + 1) + 1 + (n : ℤ)).toNat

end

end A067953.P15508835167474513073

/-! ## A067953.P6052021326573087640

`A026840(C(A000040(n+1), 2)+n+1)`
-/

namespace A067953.P6052021326573087640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026840 (Nat.choose (A000040 (n + 1)).toNat 2 + (n + 1))

end

end A067953.P6052021326573087640

/-! ## A067953.P4175248814690355870

`ceil(A007598(n)/A291294(n+1))`
-/

namespace A067953.P4175248814690355870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A007598 n : ℚ) / (A291294 (n + 1) : ℚ)⌉

end

end A067953.P4175248814690355870

/-! ## A067953.P11883410113383755009

`A103221(A343256(n+1)+A321405(n))`
-/

namespace A067953.P11883410113383755009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 (A343256 (n + 1) + A321405 n).toNat

end

end A067953.P11883410113383755009

/-! ## A067953.P4070887584985806312

`A204166(A327009(n+1))-A227153(n)`
-/

namespace A067953.P4070887584985806312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204166 (A327009 (n + 1)).toNat - A227153 n

end

end A067953.P4070887584985806312

/-!
# A067954: Primes related to the nondecreasing subsequence of A007605 (sums of digits of primes).

The programs for A067954, there is no canonical definition to state claims against.
-/

/-! ## A067954.P5422081742364308235

`A069802(∑[A069777(n)!])`
-/

namespace A067954.P5422081742364308235
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A069777 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069802 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A067954.P5422081742364308235

/-! ## A067954.P17826811499177082237

`p?[lt[A049820(n+1), A061762(n)]]`
-/

namespace A067954.P17826811499177082237
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049820 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061762 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A067954.P17826811499177082237

/-! ## A067954.P16451643195404287558

`p?[lt[A249121(n), A037227(n+1)]]`
-/

namespace A067954.P16451643195404287558
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249121 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037227 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A067954.P16451643195404287558

/-! ## A067954.P7895083650859704224

`∩[A028812(n+1), A069802(n+1)]`
-/

namespace A067954.P7895083650859704224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028812 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069802 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A067954.P7895083650859704224

/-! ## A067954.P4535942559217713920

`∩[A092787(n+1), A174876(n+1)]`
-/

namespace A067954.P4535942559217713920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092787 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174876 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A067954.P4535942559217713920

/-!
# A067956: Number of nodes in virtual, "optimal", chordal graphs of diameter 4 and degree n+1.

The programs for A067956, the canonical program `A067956.P18418777430934723321` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A067956 has offset 1).

The definition of A067956 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A067956.P18418777430934723321

`∑[A001845(A008619(n))]+2`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A067956

/-- `∑[A001845(A008619(n))]+2` -/
def P18418777430934723321.Spec : Prop :=
  ∀ n, P18418777430934723321.a n = A067956 (n + 1)

theorem P18418777430934723321.correct : P18418777430934723321.Spec := by
  intro n
  simp only [A067956, Nat.add_sub_cancel]

end A067956

/-! ## A067956.P7055627969014217017

`∑[A001845(A004526(n)+1)]+2`
-/

namespace A067956.P7055627969014217017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001845 (A004526 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A067956.P7055627969014217017

namespace A067956

/-- `∑[A001845(A004526(n)+1)]+2` -/
def P7055627969014217017.Spec : Prop :=
  ∀ n, P7055627969014217017.a n = A067956 (n + 1)

theorem P7055627969014217017.correct : P7055627969014217017.Spec := by
  intro n
  simp only [A067956, Nat.add_sub_cancel, A067956.P7055627969014217017.f1, A067956.P7055627969014217017.a, A067956.P18418777430934723321.f1, A067956.P18418777430934723321.a, A001845, A001845.P9018449198624787926.a, A004526, A004526.P10084182425416171735.a, A008619, A008619.P16053834178911111118.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A067956

/-! ## A067956.P16095240326886654597

`∑[A001845(A110654(n+1))]+2`
-/

namespace A067956.P16095240326886654597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001845 (A110654 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A067956.P16095240326886654597

namespace A067956

/-- `∑[A001845(A110654(n+1))]+2` -/
def P16095240326886654597.Spec : Prop :=
  ∀ n, P16095240326886654597.a n = A067956 (n + 1)

end A067956

/-! ## A067956.P6406333679323987537

`∑[A059329(A109613(n)+1)]+2`
-/

namespace A067956.P6406333679323987537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059329 (A109613 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A067956.P6406333679323987537

namespace A067956

/-- `∑[A059329(A109613(n)+1)]+2` -/
def P6406333679323987537.Spec : Prop :=
  ∀ n, P6406333679323987537.a n = A067956 (n + 1)

end A067956

/-! ## A067956.P4552133882144867383

`∑[A059329(2*A008619(n))]+2`
-/

namespace A067956.P4552133882144867383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059329 (2 * A008619 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A067956.P4552133882144867383

namespace A067956

/-- `∑[A059329(2*A008619(n))]+2` -/
def P4552133882144867383.Spec : Prop :=
  ∀ n, P4552133882144867383.a n = A067956 (n + 1)

end A067956

/-!
# A067958: Number of binary arrangements without adjacent 1's on n X n torus connected e-w ne-sw n-s nw-se.

The programs for A067958, there is no canonical definition to state claims against.
-/

/-! ## A067958.P10048961711027378150

`A328756(A328727(n+1)+A213644(n))`
-/

namespace A067958.P10048961711027378150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328756 (A328727 (n + 1) + A213644 n).toNat

end

end A067958.P10048961711027378150

/-!
# A067961: Number of binary arrangements without adjacent 1's on n X n torus connected n-s.

The programs for A067961, there is no canonical definition to state claims against.
-/

/-! ## A067961.P13028578648716912462

`Δ[round(ϕ^(n+2))]^(n+1)`
-/

namespace A067961.P13028578648716912462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.goldenRatio ^ (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ (n + 1)

end

end A067961.P13028578648716912462

/-! ## A067961.P2416676025711251502

`round(ϕ^((n+1)%(n+1)²))^n*round(ϕ^((n+1)%(n+1)²))`
-/

namespace A067961.P2416676025711251502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.goldenRatio ^ ((n + 1) % (n + 1) ^ 2)) ^ n * SequenceMachineLib.roundAway (Real.goldenRatio ^ ((n + 1) % (n + 1) ^ 2))

end

end A067961.P2416676025711251502

/-! ## A067961.P7049579233097061617

`abs(A075193(n)^(n+1))`
-/

namespace A067961.P7049579233097061617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A075193 n ^ (n + 1)|

end

end A067961.P7049579233097061617

/-! ## A067961.P7667869719109593753

`record[A303427(n)^(n/2)]`
-/

namespace A067961.P7667869719109593753
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A303427 n : ℝ) ^ ((n : ℚ) / 2 : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A067961.P7667869719109593753

/-!
# A067962: a(n) = F(n+2)*(Product_{i=1..n+1} F(i))^2 where F(i)=A000045(i) is the i-th Fibonacci number.

The programs for A067962, the canonical program `A067962.P6906518905069184204` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A067962 has offset 0).

The definition of A067962 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A067962.P6906518905069184204

`a(n-1)*A001654(n+1)` with `a(0)=1`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A067962

/-- `a(n-1)*A001654(n+1)` -/
def P6906518905069184204.Spec : Prop :=
  ∀ n, P6906518905069184204.a n = A067962 n

theorem P6906518905069184204.correct : P6906518905069184204.Spec := by
  intro n
  simp only [A067962]

end A067962

/-!
# A067963: Number of binary arrangements without adjacent 1's on n X n array connected e-w ne-sw nw-se.

The programs for A067963, there is no canonical definition to state claims against.
-/

/-! ## A067963.P15301417001549044230

`A228683((n+1)²+n²)`
-/

namespace A067963.P15301417001549044230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228683 ((n + 1) ^ 2 + n ^ 2)

end

end A067963.P15301417001549044230

/-! ## A067963.P1331091058681742145

`record[gcd(A049581(n), A228683(n+1))]`
-/

namespace A067963.P1331091058681742145
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A049581 n) (A228683 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A067963.P1331091058681742145

/-! ## A067963.P13604530205020795200

`lcm(A033999(n), A228683(A001844(n)))`
-/

namespace A067963.P13604530205020795200
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A228683 (A001844 n).toNat)

end

end A067963.P13604530205020795200

/-! ## A067963.P2610348323464896557

`or(A000038(n), A228683(A001844(n)))`
-/

namespace A067963.P2610348323464896557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000038 n) (A228683 (A001844 n).toNat)

end

end A067963.P2610348323464896557

/-! ## A067963.P5292979400540256567

`A228683(A001844(n))+A008683(4*(n+1))`
-/

namespace A067963.P5292979400540256567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228683 (A001844 n).toNat + A008683 (4 * (n + 1))

end

end A067963.P5292979400540256567

/-!
# A067964: Number of binary arrangements without adjacent 1's on n X n array connected n-s nw-se.

The programs for A067964, there is no canonical definition to state claims against.
-/

/-! ## A067964.P5129573849163713102

`A188706((n+1)²+n²)`
-/

namespace A067964.P5129573849163713102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188706 ((n + 1) ^ 2 + n ^ 2)

end

end A067964.P5129573849163713102

/-! ## A067964.P8472196788281143890

`lcm(2, A188706(A001844(n)))`
-/

namespace A067964.P8472196788281143890
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A188706 (A001844 n).toNat)

end

end A067964.P8472196788281143890

/-! ## A067964.P4802330710479682334

`record[root(A188706(n+1), A143182(n))]`
-/

namespace A067964.P4802330710479682334
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A188706 (n + 1) : ℝ) ^ (1 / (A143182 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A067964.P4802330710479682334

/-! ## A067964.P9633150520604015194

`record[gcd(A049581(n), A188706(n+1))]`
-/

namespace A067964.P9633150520604015194
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A049581 n) (A188706 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A067964.P9633150520604015194

/-! ## A067964.P17103494570350711719

`A188706(A001844(n))+A185238(n)`
-/

namespace A067964.P17103494570350711719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188706 (A001844 n).toNat + A185238 n

end

end A067964.P17103494570350711719

/-!
# A067965: Number of binary arrangements without adjacent 1's on n X n array connected ne-sw and nw-se.

The programs for A067965, there is no canonical definition to state claims against.
-/

/-! ## A067965.P17383052500016370490

`A181212(∑[4*n]+1)`
-/

namespace A067965.P17383052500016370490
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181212 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A067965.P17383052500016370490

/-! ## A067965.P9294041598092419329

`record[gcd(A049581(n), A181212(n+1))]`
-/

namespace A067965.P9294041598092419329
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A049581 n) (A181212 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A067965.P9294041598092419329

/-! ## A067965.P5312960555805362340

`record[root(A181212(n+1), A253146(n+1))]`
-/

namespace A067965.P5312960555805362340
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A181212 (n + 1) : ℝ) ^ (1 / (A253146 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A067965.P5312960555805362340

/-! ## A067965.P15160252346370395640

`gcd(A000038(n), A181212(A001844(n)))`
-/

namespace A067965.P15160252346370395640
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A181212 (A001844 n).toNat)

end

end A067965.P15160252346370395640

/-! ## A067965.P1536976996256351688

`lcm(A033999(n), A181212(A001844(n)))`
-/

namespace A067965.P1536976996256351688
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A181212 (A001844 n).toNat)

end

end A067965.P1536976996256351688

/-!
# A067966: Number of binary arrangements without adjacent 1's on n X n array connected n-s.

The programs for A067966, there is no canonical definition to state claims against.
-/

/-! ## A067966.P8026581014914651670

`Δ[round(ϕ*a(n-1))]^n` with `a(0)=2`
-/

namespace A067966.P8026581014914651670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (f1 (n - 1) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ n

end

end A067966.P8026581014914651670

/-! ## A067966.P14708484192891138746

`∑[a(n-1)+a(n-2)]^n` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A067966.P14708484192891138746
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1] fun n f1 =>
  f1 (n - 1) + f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ n

end

end A067966.P14708484192891138746

/-!
# A067967: Number of binary arrangements without adjacent 1's on n X n hexagonal staggered torus shifted for odd n.

The programs for A067967, there is no canonical definition to state claims against.
-/

/-! ## A067967.P16722682643487835749

`A314905(A084279(n+1)-A000598(2*n))`
-/

namespace A067967.P16722682643487835749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314905 (A084279 (n + 1) - A000598 (2 * n)).toNat

end

end A067967.P16722682643487835749

/-!
# A067968: Number of binary arrangements on n X n array without adjacent three 1's.

The programs for A067968, there is no canonical definition to state claims against.
-/

/-! ## A067968.P15907658477300682317

`A329412(A143875(n)*A241579(n))`
-/

namespace A067968.P15907658477300682317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329412 (A143875 n * A241579 n).toNat

end

end A067968.P15907658477300682317

/-!
# A067969: Number of nodes in virtual, "optimal", chordal graphs of diameter 5, degree =n+1.

The programs for A067969, the canonical program `A067969.P16810876313038545020` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A067969 has offset 1).

The definition of A067969 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A067969.P16810876313038545020

`∑[A001846(round((n+1)/2))]+2`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A067969

/-- `∑[A001846(round((n+1)/2))]+2` -/
def P16810876313038545020.Spec : Prop :=
  ∀ n, P16810876313038545020.a n = A067969 (n + 1)

theorem P16810876313038545020.correct : P16810876313038545020.Spec := by
  intro n
  simp only [A067969, Nat.add_sub_cancel]

end A067969

/-! ## A067969.P1486404704762858173

`∑[A067956(A109613(n))]+2`
-/

namespace A067969.P1486404704762858173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067956 (A109613 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A067969.P1486404704762858173

namespace A067969

/-- `∑[A067956(A109613(n))]+2` -/
def P1486404704762858173.Spec : Prop :=
  ∀ n, P1486404704762858173.a n = A067969 (n + 1)

end A067969

/-!
# A067970: First differences of A014076, the odd nonprimes.

The programs for A067970, the canonical program `A067970.P18334042092421451489` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A067970 has offset 1).

The definition of A067970 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014076, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A067970.P13779156469644103653

`2*A196274(n+1)`
-/

namespace A067970.P13779156469644103653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A196274 (n + 1)

end

end A067970.P13779156469644103653

namespace A067970

/-- `2*A196274(n+1)` -/
def P13779156469644103653.Spec : Prop :=
  ∀ n, P13779156469644103653.a n = A067970 (n + 1)

end A067970

/-! ## A067970.P18334042092421451489

`A014076(n+2)-A014076(n+1)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A067970

/-- `A014076(n+2)-A014076(n+1)` -/
def P18334042092421451489.Spec : Prop :=
  ∀ n, P18334042092421451489.a n = A067970 (n + 1)

theorem P18334042092421451489.correct : P18334042092421451489.Spec := by
  intro n
  simp only [A067970, Nat.add_sub_cancel]

end A067970

/-! ## A067970.P15643842906293041046

`Δ[2*A104275(n+1)]`
-/

namespace A067970.P15643842906293041046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A104275 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A067970.P15643842906293041046

namespace A067970

/-- `Δ[2*A104275(n+1)]` -/
def P15643842906293041046.Spec : Prop :=
  ∀ n, P15643842906293041046.a n = A067970 (n + 1)

end A067970

/-! ## A067970.P11563774545566055366

`2*(A144411(n+1)+2)`
-/

namespace A067970.P11563774545566055366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A144411 (n + 1) + 2)

end

end A067970.P11563774545566055366

namespace A067970

/-- `2*(A144411(n+1)+2)` -/
def P11563774545566055366.Spec : Prop :=
  ∀ n, P11563774545566055366.a n = A067970 (n + 1)

end A067970

/-! ## A067970.P3935852348343878885

`A144411(n+1)+A196274(n+1)+2`
-/

namespace A067970.P3935852348343878885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144411 (n + 1) + (A196274 (n + 1) + 2)

end

end A067970.P3935852348343878885

namespace A067970

/-- `A144411(n+1)+A196274(n+1)+2` -/
def P3935852348343878885.Spec : Prop :=
  ∀ n, P3935852348343878885.a n = A067970 (n + 1)

end A067970

/-! ## A067970.P17636504951495078845

`2*(A053726(n+1)-A104275(n+1))`
-/

namespace A067970.P17636504951495078845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A053726 (n + 1) - A104275 (n + 1))

end

end A067970.P17636504951495078845

namespace A067970

/-- `2*(A053726(n+1)-A104275(n+1))` -/
def P17636504951495078845.Spec : Prop :=
  ∀ n, P17636504951495078845.a n = A067970 (n + 1)

end A067970

/-! ## A067970.P10884898916077580390

`2*(A104275(n+2)-A104275(n+1))`
-/

namespace A067970.P10884898916077580390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A104275 (n + 2) - A104275 (n + 1))

end

end A067970.P10884898916077580390

namespace A067970

/-- `2*(A104275(n+2)-A104275(n+1))` -/
def P10884898916077580390.Spec : Prop :=
  ∀ n, P10884898916077580390.a n = A067970 (n + 1)

end A067970

/-! ## A067970.P11763513810203746747

`A071904(n+1)-∪[A071904(n+1), A005904(n)]`
-/

namespace A067970.P11763513810203746747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071904 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005904 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071904 (n + 1) - (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℤ)

end

end A067970.P11763513810203746747

namespace A067970

/-- `A071904(n+1)-∪[A071904(n+1), A005904(n)]` -/
def P11763513810203746747.Spec : Prop :=
  ∀ n, P11763513810203746747.a n = A067970 (n + 1)

end A067970

/-! ## A067970.P5772828608746361382

`A071904(n+1)-∪[A071904(n+1), A008515(n)]`
-/

namespace A067970.P5772828608746361382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071904 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008515 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071904 (n + 1) - (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℤ)

end

end A067970.P5772828608746361382

namespace A067970

/-- `A071904(n+1)-∪[A071904(n+1), A008515(n)]` -/
def P5772828608746361382.Spec : Prop :=
  ∀ n, P5772828608746361382.a n = A067970 (n + 1)

end A067970

/-! ## A067970.P5547366996892999575

`A071904(n+1)-∪[A071904(n+1), A016817(n)]`
-/

namespace A067970.P5547366996892999575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071904 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016817 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071904 (n + 1) - (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℤ)

end

end A067970.P5547366996892999575

namespace A067970

/-- `A071904(n+1)-∪[A071904(n+1), A016817(n)]` -/
def P5547366996892999575.Spec : Prop :=
  ∀ n, P5547366996892999575.a n = A067970 (n + 1)

end A067970

/-! ## A067970.P14872213684297745345

`A071904(n+1)-(A104275(n+1)+A047845(n+1))`
-/

namespace A067970.P14872213684297745345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071904 (n + 1) - (A104275 (n + 1) + A047845 (n + 1))

end

end A067970.P14872213684297745345

namespace A067970

/-- `A071904(n+1)-(A104275(n+1)+A047845(n+1))` -/
def P14872213684297745345.Spec : Prop :=
  ∀ n, P14872213684297745345.a n = A067970 (n + 1)

end A067970

/-! ## A067970.P4788382497424592123

`Δ[comp[∪[2*n, p?[2*n+1]]]]`
-/

namespace A067970.P4788382497424592123
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f5 (SequenceMachineLib.nth (fun j => (f5 j).Prime) n)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f3 j = x) ∨ ∃ j, f4 j = x) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A067970.P4788382497424592123

namespace A067970

/-- `Δ[comp[∪[2*n, p?[2*n+1]]]]` -/
def P4788382497424592123.Spec : Prop :=
  ∀ n, P4788382497424592123.a n = A067970 (n + 1)

end A067970

/-! ## A067970.P13721212555382532627

`Δ[A014076(n+1)]`
-/

namespace A067970.P13721212555382532627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014076 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A067970.P13721212555382532627

namespace A067970

/-- `Δ[A014076(n+1)]` -/
def P13721212555382532627.Spec : Prop :=
  ∀ n, P13721212555382532627.a n = A067970 (n + 1)

theorem P13721212555382532627.correct : P13721212555382532627.Spec := by
  intro n
  simp only [A067970, Nat.add_sub_cancel, A067970.P13721212555382532627.f1, A067970.P13721212555382532627.a, A067970.P18334042092421451489.a, SequenceMachineLib.memo_apply]

end A067970

/-! ## A067970.P14970818358041009368

`Δ[sqrt(A062532(n+1))]`
-/

namespace A067970.P14970818358041009368
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A062532 (n + 1) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A067970.P14970818358041009368

namespace A067970

/-- `Δ[sqrt(A062532(n+1))]` -/
def P14970818358041009368.Spec : Prop :=
  ∀ n, P14970818358041009368.a n = (A067970 (n + 1) : ℝ)

end A067970

/-! ## A067970.P4615378235099580239

`Δ[record[A171435(n+7)]]`
-/

namespace A067970.P4615378235099580239
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171435 (n + 7)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A067970.P4615378235099580239

namespace A067970

/-- `Δ[record[A171435(n+7)]]` -/
def P4615378235099580239.Spec : Prop :=
  ∀ n, P4615378235099580239.a n = A067970 (n + 1)

end A067970

/-! ## A067970.P15325436174615916391

`Δ[2*A047845(n+1)]`
-/

namespace A067970.P15325436174615916391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A047845 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A067970.P15325436174615916391

namespace A067970

/-- `Δ[2*A047845(n+1)]` -/
def P15325436174615916391.Spec : Prop :=
  ∀ n, P15325436174615916391.a n = A067970 (n + 1)

end A067970

/-! ## A067970.P12671880556763926896

`Δ[2*A153041(n+1)]`
-/

namespace A067970.P12671880556763926896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A153041 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A067970.P12671880556763926896

namespace A067970

/-- `Δ[2*A153041(n+1)]` -/
def P12671880556763926896.Spec : Prop :=
  ∀ n, P12671880556763926896.a n = A067970 (n + 1)

end A067970

/-! ## A067970.P4916092347276238212

`Δ[2*A153043(n+1)]`
-/

namespace A067970.P4916092347276238212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A153043 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A067970.P4916092347276238212

namespace A067970

/-- `Δ[2*A153043(n+1)]` -/
def P4916092347276238212.Spec : Prop :=
  ∀ n, P4916092347276238212.a n = A067970 (n + 1)

end A067970

/-!
# A067971: a(n+1) is the smallest number > a(n) such that the digits of a(n)^3 are all (with multiplicity) properly contained in the digits of a(n+1)^3, with a(0)=1.

The programs for A067971, there is no canonical definition to state claims against.
-/

/-! ## A067971.P10435629363797545056

`root(A067972(n), 3)`
-/

namespace A067971.P10435629363797545056
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A067972 n : ℝ) ^ (1 / (3 : ℝ))

end

end A067971.P10435629363797545056

/-! ## A067971.P17907007283822483978

`A067972(n)^3^A321800(n)`
-/

namespace A067971.P17907007283822483978
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A067972 n : ℝ) ^ ((3 : ℚ) ^ (A321800 n : ℤ) : ℝ)

end

end A067971.P17907007283822483978

/-! ## A067971.P3321186885040349987

`A067973(round(log(A067635(n+1))))`
-/

namespace A067971.P3321186885040349987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067973 (SequenceMachineLib.roundAway (Real.log (A067635 (n + 1) : ℝ))).toNat

end

end A067971.P3321186885040349987

/-! ## A067971.P16905948786466109620

`filter[A067973(n), A115971(#)]`
-/

namespace A067971.P16905948786466109620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067973 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A115971 (f1 j).toNat = 1) n)

end

end A067971.P16905948786466109620

/-! ## A067971.P6737802222032510653

`filter[A067973(n), A342005(#)]`
-/

namespace A067971.P6737802222032510653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067973 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A342005 (f1 j).toNat = 1) n)

end

end A067971.P6737802222032510653

/-!
# A067972: a(n+1) is the smallest cube > a(n) such that the digits of a(n) are all (with multiplicity) properly contained in the digits of a(n+1), with a(0)=1.

The programs for A067972, there is no canonical definition to state claims against.
-/

/-! ## A067972.P9852135810034322428

`A067971(n)^3`
-/

namespace A067972.P9852135810034322428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067971 n ^ 3

end

end A067972.P9852135810034322428

/-! ## A067972.P15872712081181540218

`A067974(round(log(A067635(n+1))))`
-/

namespace A067972.P15872712081181540218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067974 (SequenceMachineLib.roundAway (Real.log (A067635 (n + 1) : ℝ))).toNat

end

end A067972.P15872712081181540218

/-! ## A067972.P7964572107876289618

`A000578(A067971(n))`
-/

namespace A067972.P7964572107876289618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (A067971 n).toNat

end

end A067972.P7964572107876289618

/-!
# A067973: a(n+1) is the smallest number > a(n) such that the digits of a(n)^3 are all (with multiplicity) contained in the digits of a(n+1)^3, with a(0)=1.

The programs for A067973, there is no canonical definition to state claims against.
-/

/-! ## A067973.P2549278983302962629

`root(A067974(n), 3)`
-/

namespace A067973.P2549278983302962629
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A067974 n : ℝ) ^ (1 / (3 : ℝ))

end

end A067973.P2549278983302962629

/-! ## A067973.P14184977942147351894

`A067974(n)^(A040790(n)/3)`
-/

namespace A067973.P14184977942147351894
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A067974 n : ℝ) ^ ((A040790 n : ℚ) / 3 : ℝ)

end

end A067973.P14184977942147351894

/-!
# A067974: a(n+1) is the smallest cube > a(n) such that the digits of a(n) are all (with multiplicity) contained in the digits of a(n+1), with a(0)=1.

The programs for A067974, there is no canonical definition to state claims against.
-/

/-! ## A067974.P1522206756402911803

`A067973(n)^3`
-/

namespace A067974.P1522206756402911803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067973 n ^ 3

end

end A067974.P1522206756402911803

/-! ## A067974.P8324464340622124840

`A000578(A067973(n))`
-/

namespace A067974.P8324464340622124840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (A067973 n).toNat

end

end A067974.P8324464340622124840

/-! ## A067974.P6570451154380307174

`∑{d}[A067973(n), A059376(#)]`
-/

namespace A067974.P6570451154380307174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067973 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A059376 d

end

end A067974.P6570451154380307174

/-!
# A067975: a(n+1) is the smallest number > a(n) such that the digits of a(n)^2 are all (with multiplicity) contained in the digits of a(n+1)^2, with a(0)=2.

The programs for A067975, there is no canonical definition to state claims against.
-/

/-! ## A067975.P8241466748814426584

`sqrt(A067717(n))`
-/

namespace A067975.P8241466748814426584
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A067717 n : ℝ)

end

end A067975.P8241466748814426584

/-! ## A067975.P4684928385811417334

`root(A067717(n), A020639(2*(n+1)))`
-/

namespace A067975.P4684928385811417334
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A067717 n : ℝ) ^ (1 / (A020639 (2 * (n + 1)) : ℝ))

end

end A067975.P4684928385811417334

/-! ## A067975.P12338041994769319078

`root(A067717(n), ratio[A000079(n)])`
-/

namespace A067975.P12338041994769319078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A067717 n : ℝ) ^ (1 / ((f1 (n + 1) : ℚ) / (f1 n : ℚ) : ℝ))

end

end A067975.P12338041994769319078

/-! ## A067975.P9973395973296819118

`root(A067717(n), 2)*A007318(∑[n])`
-/

namespace A067975.P9973395973296819118
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A067717 n : ℝ) ^ (1 / (2 : ℝ)) * (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) : ℝ)

end

end A067975.P9973395973296819118

/-! ## A067975.P446898244234267880

`∑{d}[root(A067717(n), 2), A000010(#)]`
-/

namespace A067975.P446898244234267880
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A067717 n : ℝ) ^ (1 / (2 : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f1 n)).natAbs, A000010 d

end

end A067975.P446898244234267880

/-!
# A067977: Convolution of Fibonacci F(n+1), n>=0, with F(n+9), n>=0.

The programs for A067977, the canonical program `A067977.P5847705129826826634` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A067977 has offset 0).

The definition of A067977 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 460 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A067977.P5847705129826826634

`A067431(n)+A067430(n)`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A067977

/-- `A067431(n)+A067430(n)` -/
def P5847705129826826634.Spec : Prop :=
  ∀ n, P5847705129826826634.a n = A067977 n

theorem P5847705129826826634.correct : P5847705129826826634.Spec := by
  intro n
  simp only [A067977]

end A067977

/-! ## A067977.P2825144580817554343

`A067334(n)+2*A067430(n)`
-/

namespace A067977.P2825144580817554343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067334 n + 2 * A067430 n

end

end A067977.P2825144580817554343

namespace A067977

/-- `A067334(n)+2*A067430(n)` -/
def P2825144580817554343.Spec : Prop :=
  ∀ n, P2825144580817554343.a n = A067977 n

theorem P2825144580817554343.correct : P2825144580817554343.Spec := by
  intro n
  simp only [A067977, Nat.add_sub_cancel, A067977.P2825144580817554343.a, A067977.P5847705129826826634.a, A067334, A067334.P13359382140778625802.a, A067430, A067430.P16408898910722994529.a, A067431, A067431.P8250582183486252664.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A067977

/-! ## A067977.P11896156342903948948

`A067431(n)+A067431(n)-A067334(n)`
-/

namespace A067977.P11896156342903948948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067431 n + (A067431 n - A067334 n)

end

end A067977.P11896156342903948948

namespace A067977

/-- `A067431(n)+A067431(n)-A067334(n)` -/
def P11896156342903948948.Spec : Prop :=
  ∀ n, P11896156342903948948.a n = A067977 n

theorem P11896156342903948948.correct : P11896156342903948948.Spec := by
  intro n
  simp only [A067977, Nat.add_sub_cancel, A067977.P11896156342903948948.a, A067977.P5847705129826826634.a, A067334, A067334.P13359382140778625802.a, A067430, A067430.P16408898910722994529.a, A067431, A067431.P8250582183486252664.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A067977

/-! ## A067977.P3036298854660898526

`A067978(n)-A067431(n)`
-/

namespace A067977.P3036298854660898526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067978 n - A067431 n

end

end A067977.P3036298854660898526

namespace A067977

/-- `A067978(n)-A067431(n)` -/
def P3036298854660898526.Spec : Prop :=
  ∀ n, P3036298854660898526.a n = A067977 n

theorem P3036298854660898526.correct : P3036298854660898526.Spec := by
  intro n
  simp only [A067977, Nat.add_sub_cancel, A067977.P3036298854660898526.a, A067977.P5847705129826826634.a, A067430, A067430.P16408898910722994529.a, A067431, A067431.P8250582183486252664.a, A067978, A067978.P743960902897900319.a, A067334, A067334.P13359382140778625802.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A067977

/-! ## A067977.P2368600621706167484

`2*A067431(n)-A067334(n)`
-/

namespace A067977.P2368600621706167484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A067431 n - A067334 n

end

end A067977.P2368600621706167484

namespace A067977

/-- `2*A067431(n)-A067334(n)` -/
def P2368600621706167484.Spec : Prop :=
  ∀ n, P2368600621706167484.a n = A067977 n

theorem P2368600621706167484.correct : P2368600621706167484.Spec := by
  intro n
  simp only [A067977, Nat.add_sub_cancel, A067977.P2368600621706167484.a, A067977.P5847705129826826634.a, A067334, A067334.P13359382140778625802.a, A067430, A067430.P16408898910722994529.a, A067431, A067431.P8250582183486252664.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A067977

/-! ## A067977.P16158760096871259377

`A067978(n)-(A067430(n)+A067334(n))`
-/

namespace A067977.P16158760096871259377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067978 n - (A067430 n + A067334 n)

end

end A067977.P16158760096871259377

namespace A067977

/-- `A067978(n)-(A067430(n)+A067334(n))` -/
def P16158760096871259377.Spec : Prop :=
  ∀ n, P16158760096871259377.a n = A067977 n

theorem P16158760096871259377.correct : P16158760096871259377.Spec := by
  intro n
  simp only [A067977, Nat.add_sub_cancel, A067977.P16158760096871259377.a, A067977.P5847705129826826634.a, A067334, A067334.P13359382140778625802.a, A067430, A067430.P16408898910722994529.a, A067431, A067431.P8250582183486252664.a, A067978, A067978.P743960902897900319.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A067977

/-! ## A067977.P18412307191848450576

`(A067978(n)+A067430(n))/2`
-/

namespace A067977.P18412307191848450576
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A067978 n + A067430 n : ℚ) / 2

end

end A067977.P18412307191848450576

namespace A067977

/-- `(A067978(n)+A067430(n))/2` -/
def P18412307191848450576.Spec : Prop :=
  ∀ n, P18412307191848450576.a n = (A067977 n : ℚ)

theorem P18412307191848450576.correct : P18412307191848450576.Spec := by
  intro n
  simp only [A067977, Nat.add_sub_cancel, A067977.P18412307191848450576.a, A067977.P5847705129826826634.a, A067430, A067430.P16408898910722994529.a, A067431, A067431.P8250582183486252664.a, A067978, A067978.P743960902897900319.a, A067334, A067334.P13359382140778625802.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A067977

/-! ## A067977.P5131283731497491229

`A067418(A000124(n+8)+7)`
-/

namespace A067977.P5131283731497491229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067418 (A000124 (n + 8) + 7).toNat

end

end A067977.P5131283731497491229

namespace A067977

/-- `A067418(A000124(n+8)+7)` -/
def P5131283731497491229.Spec : Prop :=
  ∀ n, P5131283731497491229.a n = A067977 n

end A067977

/-! ## A067977.P17587368980103299122

`A067418(A000217(n+8)+8)`
-/

namespace A067977.P17587368980103299122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067418 (A000217 (n + 8) + 8).toNat

end

end A067977.P17587368980103299122

namespace A067977

/-- `A067418(A000217(n+8)+8)` -/
def P17587368980103299122.Spec : Prop :=
  ∀ n, P17587368980103299122.a n = A067977 n

end A067977

/-! ## A067977.P16279701684611770065

`A067418(A056000(n+6)-(2*n+1))`
-/

namespace A067977.P16279701684611770065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067418 (A056000 (n + 6) - (2 * n + 1 : ℤ)).toNat

end

end A067977.P16279701684611770065

namespace A067977

/-- `A067418(A056000(n+6)-(2*n+1))` -/
def P16279701684611770065.Spec : Prop :=
  ∀ n, P16279701684611770065.a n = A067977 n

end A067977

/-! ## A067977.P7955892047603807788

`A067330(A000217(n+9)-9)`
-/

namespace A067977.P7955892047603807788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067330 (A000217 (n + 9) - 9).toNat

end

end A067977.P7955892047603807788

namespace A067977

/-- `A067330(A000217(n+9)-9)` -/
def P7955892047603807788.Spec : Prop :=
  ∀ n, P7955892047603807788.a n = A067977 n

end A067977

/-!
# A067978: Convolution of Fibonacci F(n+1), n>=0, with F(n+10), n>=0.

The programs for A067978, the canonical program `A067978.P743960902897900319` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A067978 has offset 0).

The definition of A067978 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 459 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A067978.P743960902897900319

`A067977(n)+A067431(n)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A067978

/-- `A067977(n)+A067431(n)` -/
def P743960902897900319.Spec : Prop :=
  ∀ n, P743960902897900319.a n = A067978 n

theorem P743960902897900319.correct : P743960902897900319.Spec := by
  intro n
  simp only [A067978]

end A067978

/-! ## A067978.P1200043250012830997

`A067430(n)+2*A067431(n)`
-/

namespace A067978.P1200043250012830997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067430 n + 2 * A067431 n

end

end A067978.P1200043250012830997

namespace A067978

/-- `A067430(n)+2*A067431(n)` -/
def P1200043250012830997.Spec : Prop :=
  ∀ n, P1200043250012830997.a n = A067978 n

theorem P1200043250012830997.correct : P1200043250012830997.Spec := by
  intro n
  simp only [A067978, Nat.add_sub_cancel, A067978.P1200043250012830997.a, A067978.P743960902897900319.a, A067430, A067430.P16408898910722994529.a, A067431, A067431.P8250582183486252664.a, A067977, A067977.P5847705129826826634.a, A067334, A067334.P13359382140778625802.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A067978

/-! ## A067978.P11556576134227076301

`A067334(n)+A067977(n)+A067430(n)`
-/

namespace A067978.P11556576134227076301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067334 n + (A067977 n + A067430 n)

end

end A067978.P11556576134227076301

namespace A067978

/-- `A067334(n)+A067977(n)+A067430(n)` -/
def P11556576134227076301.Spec : Prop :=
  ∀ n, P11556576134227076301.a n = A067978 n

theorem P11556576134227076301.correct : P11556576134227076301.Spec := by
  intro n
  simp only [A067978, Nat.add_sub_cancel, A067978.P11556576134227076301.a, A067978.P743960902897900319.a, A067334, A067334.P13359382140778625802.a, A067430, A067430.P16408898910722994529.a, A067431, A067431.P8250582183486252664.a, A067977, A067977.P5847705129826826634.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A067978

/-! ## A067978.P14962382243577871349

`2*A067977(n)-A067430(n)`
-/

namespace A067978.P14962382243577871349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A067977 n - A067430 n

end

end A067978.P14962382243577871349

namespace A067978

/-- `2*A067977(n)-A067430(n)` -/
def P14962382243577871349.Spec : Prop :=
  ∀ n, P14962382243577871349.a n = A067978 n

theorem P14962382243577871349.correct : P14962382243577871349.Spec := by
  intro n
  simp only [A067978, Nat.add_sub_cancel, A067978.P14962382243577871349.a, A067978.P743960902897900319.a, A067430, A067430.P16408898910722994529.a, A067431, A067431.P8250582183486252664.a, A067977, A067977.P5847705129826826634.a, A067334, A067334.P13359382140778625802.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A067978

/-! ## A067978.P14113973731130246486

`A067418(A000124(n+9)+8)`
-/

namespace A067978.P14113973731130246486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067418 (A000124 (n + 9) + 8).toNat

end

end A067978.P14113973731130246486

namespace A067978

/-- `A067418(A000124(n+9)+8)` -/
def P14113973731130246486.Spec : Prop :=
  ∀ n, P14113973731130246486.a n = A067978 n

end A067978

/-! ## A067978.P16483842768033927275

`A067418(A000217(n+9)+9)`
-/

namespace A067978.P16483842768033927275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067418 (A000217 (n + 9) + 9).toNat

end

end A067978.P16483842768033927275

namespace A067978

/-- `A067418(A000217(n+9)+9)` -/
def P16483842768033927275.Spec : Prop :=
  ∀ n, P16483842768033927275.a n = A067978 n

end A067978

/-! ## A067978.P13316725547888057087

`A067330(A056000(n+6))`
-/

namespace A067978.P13316725547888057087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067330 (A056000 (n + 6)).toNat

end

end A067978.P13316725547888057087

namespace A067978

/-- `A067330(A056000(n+6))` -/
def P13316725547888057087.Spec : Prop :=
  ∀ n, P13316725547888057087.a n = A067978 n

end A067978

/-! ## A067978.P11908376622570866510

`A067330(A055999(n+7)-4)`
-/

namespace A067978.P11908376622570866510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067330 (A055999 (n + 7) - 4).toNat

end

end A067978.P11908376622570866510

namespace A067978

/-- `A067330(A055999(n+7)-4)` -/
def P11908376622570866510.Spec : Prop :=
  ∀ n, P11908376622570866510.a n = A067978 n

end A067978

/-! ## A067978.P6871779860289235591

`A067330(A000217(n+10)-10)`
-/

namespace A067978.P6871779860289235591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067330 (A000217 (n + 10) - 10).toNat

end

end A067978.P6871779860289235591

namespace A067978

/-- `A067330(A000217(n+10)-10)` -/
def P6871779860289235591.Spec : Prop :=
  ∀ n, P6871779860289235591.a n = A067978 n

end A067978

/-!
# A067979: Triangle read by rows of incomplete convolutions of Lucas numbers L(n+1) = A000204(n+1), n>=0.

The programs for A067979, there is no canonical definition to state claims against.
-/

/-! ## A067979.P15371349125741636515

`A067990(A061579(n))`
-/

namespace A067979.P15371349125741636515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067990 (A061579 n).toNat

end

end A067979.P15371349125741636515

/-! ## A067979.P5663789671590971003

`A067990(A114327(n)+n)`
-/

namespace A067979.P5663789671590971003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067990 (A114327 n + (n : ℤ)).toNat

end

end A067979.P5663789671590971003

/-! ## A067979.P8214054399625373955

`A067990(A038722(n+1)-1)`
-/

namespace A067979.P8214054399625373955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067990 (A038722 (n + 1) - 1).toNat

end

end A067979.P8214054399625373955

/-! ## A067979.P373005769690864554

`A067990(A093995(n+1)-(n+1))`
-/

namespace A067979.P373005769690864554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067990 (A093995 (n + 1) - (n + 1 : ℤ)).toNat

end

end A067979.P373005769690864554

/-! ## A067979.P7005136703327588846

`A067990(A002024(n+1)²-(n+1))`
-/

namespace A067979.P7005136703327588846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067990 (A002024 (n + 1) ^ 2 - (n + 1 : ℤ)).toNat

end

end A067979.P7005136703327588846

/-!
# A067980: Convolution of L(n+1) := A000204(n+1) (Lucas), n>=0, with L(n+2), n>=0.

The programs for A067980, the canonical program `A067980.P17476035265279750799` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A067980 has offset 0).

The definition of A067980 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 463 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A067980.P17476035265279750799

`A004799(n+2)-A000032(n+2)`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A067980

/-- `A004799(n+2)-A000032(n+2)` -/
def P17476035265279750799.Spec : Prop :=
  ∀ n, P17476035265279750799.a n = A067980 n

theorem P17476035265279750799.correct : P17476035265279750799.Spec := by
  intro n
  simp only [A067980]

end A067980

/-! ## A067980.P6715080683506847609

`A004799(n+2)-A000204(n+2)`
-/

namespace A067980.P6715080683506847609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004799 (n + 2) - A000204 (n + 2)

end

end A067980.P6715080683506847609

namespace A067980

/-- `A004799(n+2)-A000204(n+2)` -/
def P6715080683506847609.Spec : Prop :=
  ∀ n, P6715080683506847609.a n = A067980 n

end A067980

/-! ## A067980.P9893354844204582246

`(n+1)*A000032(n+3)-A000045(n+1)`
-/

namespace A067980.P9893354844204582246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000032 (n + 3) - A000045 (n + 1)

end

end A067980.P9893354844204582246

namespace A067980

/-- `(n+1)*A000032(n+3)-A000045(n+1)` -/
def P9893354844204582246.Spec : Prop :=
  ∀ n, P9893354844204582246.a n = A067980 n

end A067980

/-! ## A067980.P9715116763773358128

`∑[A000045(n+1)+(n+2)*A000032(n+1)]`
-/

namespace A067980.P9715116763773358128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) + (n + 2 : ℤ) * A000032 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A067980.P9715116763773358128

namespace A067980

/-- `∑[A000045(n+1)+(n+2)*A000032(n+1)]` -/
def P9715116763773358128.Spec : Prop :=
  ∀ n, P9715116763773358128.a n = A067980 n

end A067980

/-! ## A067980.P6491321926974465279

`(4*n+3)*A000045(n+1)+3*(n+1)*A000045(n)`
-/

namespace A067980.P6491321926974465279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n + 3 : ℤ) * A000045 (n + 1) + 3 * ((n + 1 : ℤ) * A000045 n)

end

end A067980.P6491321926974465279

namespace A067980

/-- `(4*n+3)*A000045(n+1)+3*(n+1)*A000045(n)` -/
def P6491321926974465279.Spec : Prop :=
  ∀ n, P6491321926974465279.a n = A067980 n

end A067980

/-! ## A067980.P5583463103109723544

`A067981(n)-A004799(n+1)`
-/

namespace A067980.P5583463103109723544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067981 n - A004799 (n + 1)

end

end A067980.P5583463103109723544

namespace A067980

/-- `A067981(n)-A004799(n+1)` -/
def P5583463103109723544.Spec : Prop :=
  ∀ n, P5583463103109723544.a n = A067980 n

theorem P5583463103109723544.correct : P5583463103109723544.Spec := by
  intro n
  simp only [A067980, Nat.add_sub_cancel, A067980.P5583463103109723544.a, A067980.P17476035265279750799.a, A000032, A000032.P8352177345629330861.a, A004799, A004799.P16158744165044827284.a, A067981, A067981.P4589928530987231224.a, A053311, A053311.P9778916155767506881.a, A097039, A097039.P7639164022174265991.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A067980

/-! ## A067980.P17878276316732966077

`A067982(n)-A067981(n)`
-/

namespace A067980.P17878276316732966077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067982 n - A067981 n

end

end A067980.P17878276316732966077

namespace A067980

/-- `A067982(n)-A067981(n)` -/
def P17878276316732966077.Spec : Prop :=
  ∀ n, P17878276316732966077.a n = A067980 n

theorem P17878276316732966077.correct : P17878276316732966077.Spec := by
  intro n
  simp only [A067980, Nat.add_sub_cancel, A067980.P17878276316732966077.a, A067980.P17476035265279750799.a, A000032, A000032.P8352177345629330861.a, A004799, A004799.P16158744165044827284.a, A067981, A067981.P4589928530987231224.a, A067982, A067982.P7275178896645523825.a, A053311, A053311.P9778916155767506881.a, A097039, A097039.P7639164022174265991.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A067980

/-! ## A067980.P8110533153282430877

`(A067982(n)-A004799(n+1))/2`
-/

namespace A067980.P8110533153282430877
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A067982 n - A004799 (n + 1) : ℚ) / 2

end

end A067980.P8110533153282430877

namespace A067980

/-- `(A067982(n)-A004799(n+1))/2` -/
def P8110533153282430877.Spec : Prop :=
  ∀ n, P8110533153282430877.a n = (A067980 n : ℚ)

theorem P8110533153282430877.correct : P8110533153282430877.Spec := by
  intro n
  simp only [A067980, Nat.add_sub_cancel, A067980.P8110533153282430877.a, A067980.P17476035265279750799.a, A000032, A000032.P8352177345629330861.a, A004799, A004799.P16158744165044827284.a, A067982, A067982.P7275178896645523825.a, A053311, A053311.P9778916155767506881.a, A067981, A067981.P4589928530987231224.a, A097039, A097039.P7639164022174265991.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A067980

/-! ## A067980.P11572506858608152795

`A067983(n)%A067981(n)`
-/

namespace A067980.P11572506858608152795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A067983 n) (A067981 n)

end

end A067980.P11572506858608152795

namespace A067980

/-- `A067983(n)%A067981(n)` -/
def P11572506858608152795.Spec : Prop :=
  ∀ n, P11572506858608152795.a n = A067980 n

end A067980

/-! ## A067980.P15346992771780085831

`2*A067982(n)-A067983(n)`
-/

namespace A067980.P15346992771780085831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A067982 n - A067983 n

end

end A067980.P15346992771780085831

namespace A067980

/-- `2*A067982(n)-A067983(n)` -/
def P15346992771780085831.Spec : Prop :=
  ∀ n, P15346992771780085831.a n = A067980 n

theorem P15346992771780085831.correct : P15346992771780085831.Spec := by
  intro n
  simp only [A067980, Nat.add_sub_cancel, A067980.P15346992771780085831.a, A067980.P17476035265279750799.a, A000032, A000032.P8352177345629330861.a, A004799, A004799.P16158744165044827284.a, A067982, A067982.P7275178896645523825.a, A067983, A067983.P15812095397657080195.a, A053311, A053311.P9778916155767506881.a, A067981, A067981.P4589928530987231224.a, A097039, A097039.P7639164022174265991.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A067980

/-! ## A067980.P4542458953892500592

`A067986(n)%A067983(n)`
-/

namespace A067980.P4542458953892500592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A067986 n) (A067983 n)

end

end A067980.P4542458953892500592

namespace A067980

/-- `A067986(n)%A067983(n)` -/
def P4542458953892500592.Spec : Prop :=
  ∀ n, P4542458953892500592.a n = A067980 n

end A067980

/-! ## A067980.P11975418069556696957

`A067990(∑[n+1]+1)`
-/

namespace A067980.P11975418069556696957
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067990 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A067980.P11975418069556696957

namespace A067980

/-- `A067990(∑[n+1]+1)` -/
def P11975418069556696957.Spec : Prop :=
  ∀ n, P11975418069556696957.a n = A067980 n

end A067980

/-! ## A067980.P3317666595682454981

`A067979(∑[n+2]-1)`
-/

namespace A067980.P3317666595682454981
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067979 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A067980.P3317666595682454981

namespace A067980

/-- `A067979(∑[n+2]-1)` -/
def P3317666595682454981.Spec : Prop :=
  ∀ n, P3317666595682454981.a n = A067980 n

end A067980

/-!
# A067981: Convolution of L(n+1) := A000204(n+1) (Lucas), n>=0, with L(n+3), n>=0.

The programs for A067981, the canonical program `A067981.P4589928530987231224` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A067981 has offset 0).

The definition of A067981 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 462 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A067981.P4589928530987231224

`A067980(n)+A004799(n+1)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A067981

/-- `A067980(n)+A004799(n+1)` -/
def P4589928530987231224.Spec : Prop :=
  ∀ n, P4589928530987231224.a n = A067981 n

theorem P4589928530987231224.correct : P4589928530987231224.Spec := by
  intro n
  simp only [A067981]

end A067981

/-! ## A067981.P12599325388315667858

`(7*n+4)*A000045(n+1)+4*(n+1)*A000045(n)`
-/

namespace A067981.P12599325388315667858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (7 * n + 4 : ℤ) * A000045 (n + 1) + 4 * ((n + 1 : ℤ) * A000045 n)

end

end A067981.P12599325388315667858

namespace A067981

/-- `(7*n+4)*A000045(n+1)+4*(n+1)*A000045(n)` -/
def P12599325388315667858.Spec : Prop :=
  ∀ n, P12599325388315667858.a n = A067981 n

end A067981

/-! ## A067981.P9156778441185778521

`A000045(n+1)+A067980(n+1)-A022122(n+1)`
-/

namespace A067981.P9156778441185778521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) + (A067980 (n + 1) - A022122 (n + 1))

end

end A067981.P9156778441185778521

namespace A067981

/-- `A000045(n+1)+A067980(n+1)-A022122(n+1)` -/
def P9156778441185778521.Spec : Prop :=
  ∀ n, P9156778441185778521.a n = A067981 n

end A067981

/-! ## A067981.P7441074202192269880

`A067980(n+1)-(A022121(n+1)+A000045(n+1))`
-/

namespace A067981.P7441074202192269880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067980 (n + 1) - (A022121 (n + 1) + A000045 (n + 1))

end

end A067981.P7441074202192269880

namespace A067981

/-- `A067980(n+1)-(A022121(n+1)+A000045(n+1))` -/
def P7441074202192269880.Spec : Prop :=
  ∀ n, P7441074202192269880.a n = A067981 n

end A067981

/-! ## A067981.P16531497990433629546

`A004799(n+1)+A004799(n+2)-A000204(n+2)`
-/

namespace A067981.P16531497990433629546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004799 (n + 1) + (A004799 (n + 2) - A000204 (n + 2))

end

end A067981.P16531497990433629546

namespace A067981

/-- `A004799(n+1)+A004799(n+2)-A000204(n+2)` -/
def P16531497990433629546.Spec : Prop :=
  ∀ n, P16531497990433629546.a n = A067981 n

end A067981

/-! ## A067981.P17559000962180984158

`A067982(n)-A067980(n)`
-/

namespace A067981.P17559000962180984158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067982 n - A067980 n

end

end A067981.P17559000962180984158

namespace A067981

/-- `A067982(n)-A067980(n)` -/
def P17559000962180984158.Spec : Prop :=
  ∀ n, P17559000962180984158.a n = A067981 n

theorem P17559000962180984158.correct : P17559000962180984158.Spec := by
  intro n
  simp only [A067981, Nat.add_sub_cancel, A067981.P17559000962180984158.a, A067981.P4589928530987231224.a, A004799, A004799.P16158744165044827284.a, A067980, A067980.P17476035265279750799.a, A067982, A067982.P7275178896645523825.a, A000032, A000032.P8352177345629330861.a, A053311, A053311.P9778916155767506881.a, A097039, A097039.P7639164022174265991.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A067981

/-! ## A067981.P7537608883687550506

`(A067982(n)+A004799(n+1))/2`
-/

namespace A067981.P7537608883687550506
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A067982 n + A004799 (n + 1) : ℚ) / 2

end

end A067981.P7537608883687550506

namespace A067981

/-- `(A067982(n)+A004799(n+1))/2` -/
def P7537608883687550506.Spec : Prop :=
  ∀ n, P7537608883687550506.a n = (A067981 n : ℚ)

theorem P7537608883687550506.correct : P7537608883687550506.Spec := by
  intro n
  simp only [A067981, Nat.add_sub_cancel, A067981.P7537608883687550506.a, A067981.P4589928530987231224.a, A004799, A004799.P16158744165044827284.a, A067980, A067980.P17476035265279750799.a, A067982, A067982.P7275178896645523825.a, A000032, A000032.P8352177345629330861.a, A053311, A053311.P9778916155767506881.a, A097039, A097039.P7639164022174265991.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A067981

/-! ## A067981.P2979847275227575598

`A000204(n+2)+A067982(n)-A004799(n+2)`
-/

namespace A067981.P2979847275227575598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000204 (n + 2) + (A067982 n - A004799 (n + 2))

end

end A067981.P2979847275227575598

namespace A067981

/-- `A000204(n+2)+A067982(n)-A004799(n+2)` -/
def P2979847275227575598.Spec : Prop :=
  ∀ n, P2979847275227575598.a n = A067981 n

end A067981

/-! ## A067981.P992054287609656355

`A067983(n)-A067982(n)`
-/

namespace A067981.P992054287609656355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067983 n - A067982 n

end

end A067981.P992054287609656355

namespace A067981

/-- `A067983(n)-A067982(n)` -/
def P992054287609656355.Spec : Prop :=
  ∀ n, P992054287609656355.a n = A067981 n

theorem P992054287609656355.correct : P992054287609656355.Spec := by
  intro n
  simp only [A067981, Nat.add_sub_cancel, A067981.P992054287609656355.a, A067981.P4589928530987231224.a, A004799, A004799.P16158744165044827284.a, A067980, A067980.P17476035265279750799.a, A067982, A067982.P7275178896645523825.a, A067983, A067983.P15812095397657080195.a, A000032, A000032.P8352177345629330861.a, A053311, A053311.P9778916155767506881.a, A097039, A097039.P7639164022174265991.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A067981

/-! ## A067981.P15621316316100388078

`(A067983(n)-A067980(n))/2`
-/

namespace A067981.P15621316316100388078
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A067983 n - A067980 n : ℚ) / 2

end

end A067981.P15621316316100388078

namespace A067981

/-- `(A067983(n)-A067980(n))/2` -/
def P15621316316100388078.Spec : Prop :=
  ∀ n, P15621316316100388078.a n = (A067981 n : ℚ)

theorem P15621316316100388078.correct : P15621316316100388078.Spec := by
  intro n
  simp only [A067981, Nat.add_sub_cancel, A067981.P15621316316100388078.a, A067981.P4589928530987231224.a, A004799, A004799.P16158744165044827284.a, A067980, A067980.P17476035265279750799.a, A067983, A067983.P15812095397657080195.a, A000032, A000032.P8352177345629330861.a, A053311, A053311.P9778916155767506881.a, A067982, A067982.P7275178896645523825.a, A097039, A097039.P7639164022174265991.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A067981

/-! ## A067981.P14941072760729653459

`A067984(n)%A067982(n)`
-/

namespace A067981.P14941072760729653459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A067984 n) (A067982 n)

end

end A067981.P14941072760729653459

namespace A067981

/-- `A067984(n)%A067982(n)` -/
def P14941072760729653459.Spec : Prop :=
  ∀ n, P14941072760729653459.a n = A067981 n

end A067981

/-! ## A067981.P16480184524147934141

`2*A067983(n)-A067984(n)`
-/

namespace A067981.P16480184524147934141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A067983 n - A067984 n

end

end A067981.P16480184524147934141

namespace A067981

/-- `2*A067983(n)-A067984(n)` -/
def P16480184524147934141.Spec : Prop :=
  ∀ n, P16480184524147934141.a n = A067981 n

theorem P16480184524147934141.correct : P16480184524147934141.Spec := by
  intro n
  simp only [A067981, Nat.add_sub_cancel, A067981.P16480184524147934141.a, A067981.P4589928530987231224.a, A004799, A004799.P16158744165044827284.a, A067980, A067980.P17476035265279750799.a, A067983, A067983.P15812095397657080195.a, A067984, A067984.P9514579657164973560.a, A000032, A000032.P8352177345629330861.a, A053311, A053311.P9778916155767506881.a, A067982, A067982.P7275178896645523825.a, A097039, A097039.P7639164022174265991.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A067981

/-! ## A067981.P3387677218448102771

`A067987(n)%A067984(n)`
-/

namespace A067981.P3387677218448102771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A067987 n) (A067984 n)

end

end A067981.P3387677218448102771

namespace A067981

/-- `A067987(n)%A067984(n)` -/
def P3387677218448102771.Spec : Prop :=
  ∀ n, P3387677218448102771.a n = A067981 n

end A067981

/-! ## A067981.P5800439942678641085

`A067980(n)+record[A067990(n)]`
-/

namespace A067981.P5800439942678641085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067990 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067980 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A067981.P5800439942678641085

namespace A067981

/-- `A067980(n)+record[A067990(n)]` -/
def P5800439942678641085.Spec : Prop :=
  ∀ n, P5800439942678641085.a n = A067981 n

end A067981

/-! ## A067981.P18268536033009325475

`A067990(∑[n+2]+3)`
-/

namespace A067981.P18268536033009325475
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067990 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A067981.P18268536033009325475

namespace A067981

/-- `A067990(∑[n+2]+3)` -/
def P18268536033009325475.Spec : Prop :=
  ∀ n, P18268536033009325475.a n = A067981 n

end A067981

/-! ## A067981.P11142059022089920949

`A067979(∑[n+3])`
-/

namespace A067981.P11142059022089920949
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067979 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A067981.P11142059022089920949

namespace A067981

/-- `A067979(∑[n+3])` -/
def P11142059022089920949.Spec : Prop :=
  ∀ n, P11142059022089920949.a n = A067981 n

end A067981

/-!
# A067982: Convolution of L(n+1) = A000204(n+1), n>=0, with L(n+4), n>=0.

The programs for A067982, the canonical program `A067982.P7275178896645523825` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A067982 has offset 0).

The definition of A067982 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 461 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A067982.P7275178896645523825

`A067981(n)+A067980(n)`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A067982

/-- `A067981(n)+A067980(n)` -/
def P7275178896645523825.Spec : Prop :=
  ∀ n, P7275178896645523825.a n = A067982 n

theorem P7275178896645523825.correct : P7275178896645523825.Spec := by
  intro n
  simp only [A067982]

end A067982

/-! ## A067982.P4406860407605257863

`A004799(n+1)+2*A067980(n)`
-/

namespace A067982.P4406860407605257863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004799 (n + 1) + 2 * A067980 n

end

end A067982.P4406860407605257863

namespace A067982

/-- `A004799(n+1)+2*A067980(n)` -/
def P4406860407605257863.Spec : Prop :=
  ∀ n, P4406860407605257863.a n = A067982 n

theorem P4406860407605257863.correct : P4406860407605257863.Spec := by
  intro n
  simp only [A067982, Nat.add_sub_cancel, A067982.P4406860407605257863.a, A067982.P7275178896645523825.a, A004799, A004799.P16158744165044827284.a, A067980, A067980.P17476035265279750799.a, A067981, A067981.P4589928530987231224.a, A000032, A000032.P8352177345629330861.a, A053311, A053311.P9778916155767506881.a, A097039, A097039.P7639164022174265991.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A067982

/-! ## A067982.P5908545113299682314

`2*A067981(n)-A004799(n+1)`
-/

namespace A067982.P5908545113299682314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A067981 n - A004799 (n + 1)

end

end A067982.P5908545113299682314

namespace A067982

/-- `2*A067981(n)-A004799(n+1)` -/
def P5908545113299682314.Spec : Prop :=
  ∀ n, P5908545113299682314.a n = A067982 n

theorem P5908545113299682314.correct : P5908545113299682314.Spec := by
  intro n
  simp only [A067982, Nat.add_sub_cancel, A067982.P5908545113299682314.a, A067982.P7275178896645523825.a, A004799, A004799.P16158744165044827284.a, A067980, A067980.P17476035265279750799.a, A067981, A067981.P4589928530987231224.a, A000032, A000032.P8352177345629330861.a, A053311, A053311.P9778916155767506881.a, A097039, A097039.P7639164022174265991.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A067982

/-! ## A067982.P7477064029513990504

`(11*n+7)*A000045(n+1)+7*(n+1)*A000045(n)`
-/

namespace A067982.P7477064029513990504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (11 * n + 7 : ℤ) * A000045 (n + 1) + 7 * ((n + 1 : ℤ) * A000045 n)

end

end A067982.P7477064029513990504

namespace A067982

/-- `(11*n+7)*A000045(n+1)+7*(n+1)*A000045(n)` -/
def P7477064029513990504.Spec : Prop :=
  ∀ n, P7477064029513990504.a n = A067982 n

end A067982

/-! ## A067982.P12390506787594513493

`A004799(n+2)+A067981(n)-A000204(n+2)`
-/

namespace A067982.P12390506787594513493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004799 (n + 2) + (A067981 n - A000204 (n + 2))

end

end A067982.P12390506787594513493

namespace A067982

/-- `A004799(n+2)+A067981(n)-A000204(n+2)` -/
def P12390506787594513493.Spec : Prop :=
  ∀ n, P12390506787594513493.a n = A067982 n

end A067982

/-! ## A067982.P16543930050765847635

`A067983(n)-A067981(n)`
-/

namespace A067982.P16543930050765847635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067983 n - A067981 n

end

end A067982.P16543930050765847635

namespace A067982

/-- `A067983(n)-A067981(n)` -/
def P16543930050765847635.Spec : Prop :=
  ∀ n, P16543930050765847635.a n = A067982 n

theorem P16543930050765847635.correct : P16543930050765847635.Spec := by
  intro n
  simp only [A067982, Nat.add_sub_cancel, A067982.P16543930050765847635.a, A067982.P7275178896645523825.a, A067980, A067980.P17476035265279750799.a, A067981, A067981.P4589928530987231224.a, A067983, A067983.P15812095397657080195.a, A000032, A000032.P8352177345629330861.a, A004799, A004799.P16158744165044827284.a, A053311, A053311.P9778916155767506881.a, A097039, A097039.P7639164022174265991.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A067982

/-! ## A067982.P14435102460691712023

`(A067983(n)+A067980(n))/2`
-/

namespace A067982.P14435102460691712023
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A067983 n + A067980 n : ℚ) / 2

end

end A067982.P14435102460691712023

namespace A067982

/-- `(A067983(n)+A067980(n))/2` -/
def P14435102460691712023.Spec : Prop :=
  ∀ n, P14435102460691712023.a n = (A067982 n : ℚ)

theorem P14435102460691712023.correct : P14435102460691712023.Spec := by
  intro n
  simp only [A067982, Nat.add_sub_cancel, A067982.P14435102460691712023.a, A067982.P7275178896645523825.a, A067980, A067980.P17476035265279750799.a, A067981, A067981.P4589928530987231224.a, A067983, A067983.P15812095397657080195.a, A000032, A000032.P8352177345629330861.a, A004799, A004799.P16158744165044827284.a, A053311, A053311.P9778916155767506881.a, A097039, A097039.P7639164022174265991.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A067982

/-! ## A067982.P945698380042004930

`A067984(n)-A067983(n)`
-/

namespace A067982.P945698380042004930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067984 n - A067983 n

end

end A067982.P945698380042004930

namespace A067982

/-- `A067984(n)-A067983(n)` -/
def P945698380042004930.Spec : Prop :=
  ∀ n, P945698380042004930.a n = A067982 n

theorem P945698380042004930.correct : P945698380042004930.Spec := by
  intro n
  simp only [A067982, Nat.add_sub_cancel, A067982.P945698380042004930.a, A067982.P7275178896645523825.a, A067980, A067980.P17476035265279750799.a, A067981, A067981.P4589928530987231224.a, A067983, A067983.P15812095397657080195.a, A067984, A067984.P9514579657164973560.a, A000032, A000032.P8352177345629330861.a, A004799, A004799.P16158744165044827284.a, A053311, A053311.P9778916155767506881.a, A097039, A097039.P7639164022174265991.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A067982

/-! ## A067982.P7282708251157582529

`A067985(n)%A067983(n)`
-/

namespace A067982.P7282708251157582529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A067985 n) (A067983 n)

end

end A067982.P7282708251157582529

namespace A067982

/-- `A067985(n)%A067983(n)` -/
def P7282708251157582529.Spec : Prop :=
  ∀ n, P7282708251157582529.a n = A067982 n

end A067982

/-! ## A067982.P10342430074744047226

`2*A067984(n)-A067985(n)`
-/

namespace A067982.P10342430074744047226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A067984 n - A067985 n

end

end A067982.P10342430074744047226

namespace A067982

/-- `2*A067984(n)-A067985(n)` -/
def P10342430074744047226.Spec : Prop :=
  ∀ n, P10342430074744047226.a n = A067982 n

theorem P10342430074744047226.correct : P10342430074744047226.Spec := by
  intro n
  simp only [A067982, Nat.add_sub_cancel, A067982.P10342430074744047226.a, A067982.P7275178896645523825.a, A067980, A067980.P17476035265279750799.a, A067981, A067981.P4589928530987231224.a, A067984, A067984.P9514579657164973560.a, A067985, A067985.P13103454842817456950.a, A000032, A000032.P8352177345629330861.a, A004799, A004799.P16158744165044827284.a, A067983, A067983.P15812095397657080195.a, A053311, A053311.P9778916155767506881.a, A097039, A097039.P7639164022174265991.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A067982

/-! ## A067982.P15352575420581711655

`A067986(n)-(A067985(n)+A067983(n))`
-/

namespace A067982.P15352575420581711655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067986 n - (A067985 n + A067983 n)

end

end A067982.P15352575420581711655

namespace A067982

/-- `A067986(n)-(A067985(n)+A067983(n))` -/
def P15352575420581711655.Spec : Prop :=
  ∀ n, P15352575420581711655.a n = A067982 n

theorem P15352575420581711655.correct : P15352575420581711655.Spec := by
  intro n
  simp only [A067982, Nat.add_sub_cancel, A067982.P15352575420581711655.a, A067982.P7275178896645523825.a, A067980, A067980.P17476035265279750799.a, A067981, A067981.P4589928530987231224.a, A067983, A067983.P15812095397657080195.a, A067985, A067985.P13103454842817456950.a, A067986, A067986.P4183801628319440246.a, A000032, A000032.P8352177345629330861.a, A004799, A004799.P16158744165044827284.a, A067984, A067984.P9514579657164973560.a, A053311, A053311.P9778916155767506881.a, A097039, A097039.P7639164022174265991.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A067982

/-! ## A067982.P14820861933435376901

`record[A067990(n)]+2*A067980(n)`
-/

namespace A067982.P14820861933435376901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067990 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 2 * A067980 n

end

end A067982.P14820861933435376901

namespace A067982

/-- `record[A067990(n)]+2*A067980(n)` -/
def P14820861933435376901.Spec : Prop :=
  ∀ n, P14820861933435376901.a n = A067982 n

end A067982

/-! ## A067982.P11365211059282296377

`A067990(A167614(n+2))`
-/

namespace A067982.P11365211059282296377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067990 (A167614 (n + 2)).toNat

end

end A067982.P11365211059282296377

namespace A067982

/-- `A067990(A167614(n+2))` -/
def P11365211059282296377.Spec : Prop :=
  ∀ n, P11365211059282296377.a n = A067982 n

end A067982

/-! ## A067982.P10583575654188100055

`A067990(A027379(n+1)+6)`
-/

namespace A067982.P10583575654188100055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067990 (A027379 (n + 1) + 6).toNat

end

end A067982.P10583575654188100055

namespace A067982

/-- `A067990(A027379(n+1)+6)` -/
def P10583575654188100055.Spec : Prop :=
  ∀ n, P10583575654188100055.a n = A067982 n

end A067982

/-! ## A067982.P1790155372264781294

`A067990(A000217(n+5)-2*(n+3))`
-/

namespace A067982.P1790155372264781294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067990 (A000217 (n + 5) - (2 * (n + 3) : ℤ)).toNat

end

end A067982.P1790155372264781294

namespace A067982

/-- `A067990(A000217(n+5)-2*(n+3))` -/
def P1790155372264781294.Spec : Prop :=
  ∀ n, P1790155372264781294.a n = A067982 n

end A067982

/-! ## A067982.P12700887570286388022

`A067979(∑[n+3]+n+3)`
-/

namespace A067982.P12700887570286388022
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067979 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A067982.P12700887570286388022

namespace A067982

/-- `A067979(∑[n+3]+n+3)` -/
def P12700887570286388022.Spec : Prop :=
  ∀ n, P12700887570286388022.a n = A067982 n

end A067982

/-!
# A067983: Convolution of L(n+1) := A000204(n+1) (Lucas), n>=0, with L(n+5), n>=0.

The programs for A067983, the canonical program `A067983.P15812095397657080195` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A067983 has offset 0).

The definition of A067983 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 460 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A067983.P15812095397657080195

`A067982(n)+A067981(n)`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A067983

/-- `A067982(n)+A067981(n)` -/
def P15812095397657080195.Spec : Prop :=
  ∀ n, P15812095397657080195.a n = A067983 n

theorem P15812095397657080195.correct : P15812095397657080195.Spec := by
  intro n
  simp only [A067983]

end A067983

/-! ## A067983.P7206183637161577209

`A067980(n)+2*A067981(n)`
-/

namespace A067983.P7206183637161577209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067980 n + 2 * A067981 n

end

end A067983.P7206183637161577209

namespace A067983

/-- `A067980(n)+2*A067981(n)` -/
def P7206183637161577209.Spec : Prop :=
  ∀ n, P7206183637161577209.a n = A067983 n

theorem P7206183637161577209.correct : P7206183637161577209.Spec := by
  intro n
  simp only [A067983, Nat.add_sub_cancel, A067983.P7206183637161577209.a, A067983.P15812095397657080195.a, A067980, A067980.P17476035265279750799.a, A067981, A067981.P4589928530987231224.a, A067982, A067982.P7275178896645523825.a, A000032, A000032.P8352177345629330861.a, A004799, A004799.P16158744165044827284.a, A053311, A053311.P9778916155767506881.a, A097039, A097039.P7639164022174265991.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A067983

/-! ## A067983.P9312343994926492726

`2*A067982(n)-A067980(n)`
-/

namespace A067983.P9312343994926492726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A067982 n - A067980 n

end

end A067983.P9312343994926492726

namespace A067983

/-- `2*A067982(n)-A067980(n)` -/
def P9312343994926492726.Spec : Prop :=
  ∀ n, P9312343994926492726.a n = A067983 n

theorem P9312343994926492726.correct : P9312343994926492726.Spec := by
  intro n
  simp only [A067983, Nat.add_sub_cancel, A067983.P9312343994926492726.a, A067983.P15812095397657080195.a, A067980, A067980.P17476035265279750799.a, A067981, A067981.P4589928530987231224.a, A067982, A067982.P7275178896645523825.a, A000032, A000032.P8352177345629330861.a, A004799, A004799.P16158744165044827284.a, A053311, A053311.P9778916155767506881.a, A097039, A097039.P7639164022174265991.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A067983

/-! ## A067983.P6249840283854685670

`(18*n+11)*A000045(n+1)+11*(n+1)*A000045(n)`
-/

namespace A067983.P6249840283854685670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (18 * n + 11 : ℤ) * A000045 (n + 1) + 11 * ((n + 1 : ℤ) * A000045 n)

end

end A067983.P6249840283854685670

namespace A067983

/-- `(18*n+11)*A000045(n+1)+11*(n+1)*A000045(n)` -/
def P6249840283854685670.Spec : Prop :=
  ∀ n, P6249840283854685670.a n = A067983 n

end A067983

/-! ## A067983.P9427704796868724113

`A067984(n)-A067982(n)`
-/

namespace A067983.P9427704796868724113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067984 n - A067982 n

end

end A067983.P9427704796868724113

namespace A067983

/-- `A067984(n)-A067982(n)` -/
def P9427704796868724113.Spec : Prop :=
  ∀ n, P9427704796868724113.a n = A067983 n

theorem P9427704796868724113.correct : P9427704796868724113.Spec := by
  intro n
  simp only [A067983, Nat.add_sub_cancel, A067983.P9427704796868724113.a, A067983.P15812095397657080195.a, A067981, A067981.P4589928530987231224.a, A067982, A067982.P7275178896645523825.a, A067984, A067984.P9514579657164973560.a, A004799, A004799.P16158744165044827284.a, A067980, A067980.P17476035265279750799.a, A000032, A000032.P8352177345629330861.a, A053311, A053311.P9778916155767506881.a, A097039, A097039.P7639164022174265991.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A067983

/-! ## A067983.P4220330553330398770

`A067985(n)-A067984(n)`
-/

namespace A067983.P4220330553330398770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067985 n - A067984 n

end

end A067983.P4220330553330398770

namespace A067983

/-- `A067985(n)-A067984(n)` -/
def P4220330553330398770.Spec : Prop :=
  ∀ n, P4220330553330398770.a n = A067983 n

theorem P4220330553330398770.correct : P4220330553330398770.Spec := by
  intro n
  simp only [A067983, Nat.add_sub_cancel, A067983.P4220330553330398770.a, A067983.P15812095397657080195.a, A067981, A067981.P4589928530987231224.a, A067982, A067982.P7275178896645523825.a, A067984, A067984.P9514579657164973560.a, A067985, A067985.P13103454842817456950.a, A004799, A004799.P16158744165044827284.a, A067980, A067980.P17476035265279750799.a, A000032, A000032.P8352177345629330861.a, A053311, A053311.P9778916155767506881.a, A097039, A097039.P7639164022174265991.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A067983

/-! ## A067983.P7567486902792809825

`(A067985(n)-A067982(n))/2`
-/

namespace A067983.P7567486902792809825
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A067985 n - A067982 n : ℚ) / 2

end

end A067983.P7567486902792809825

namespace A067983

/-- `(A067985(n)-A067982(n))/2` -/
def P7567486902792809825.Spec : Prop :=
  ∀ n, P7567486902792809825.a n = (A067983 n : ℚ)

theorem P7567486902792809825.correct : P7567486902792809825.Spec := by
  intro n
  simp only [A067983, Nat.add_sub_cancel, A067983.P7567486902792809825.a, A067983.P15812095397657080195.a, A067981, A067981.P4589928530987231224.a, A067982, A067982.P7275178896645523825.a, A067985, A067985.P13103454842817456950.a, A004799, A004799.P16158744165044827284.a, A067980, A067980.P17476035265279750799.a, A067984, A067984.P9514579657164973560.a, A000032, A000032.P8352177345629330861.a, A053311, A053311.P9778916155767506881.a, A097039, A097039.P7639164022174265991.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A067983

/-! ## A067983.P4524286664644014488

`A067986(n)%A067984(n)`
-/

namespace A067983.P4524286664644014488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A067986 n) (A067984 n)

end

end A067983.P4524286664644014488

namespace A067983

/-- `A067986(n)%A067984(n)` -/
def P4524286664644014488.Spec : Prop :=
  ∀ n, P4524286664644014488.a n = A067983 n

end A067983

/-! ## A067983.P16673754395405454293

`2*A067985(n)-A067986(n)`
-/

namespace A067983.P16673754395405454293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A067985 n - A067986 n

end

end A067983.P16673754395405454293

namespace A067983

/-- `2*A067985(n)-A067986(n)` -/
def P16673754395405454293.Spec : Prop :=
  ∀ n, P16673754395405454293.a n = A067983 n

theorem P16673754395405454293.correct : P16673754395405454293.Spec := by
  intro n
  simp only [A067983, Nat.add_sub_cancel, A067983.P16673754395405454293.a, A067983.P15812095397657080195.a, A067981, A067981.P4589928530987231224.a, A067982, A067982.P7275178896645523825.a, A067985, A067985.P13103454842817456950.a, A067986, A067986.P4183801628319440246.a, A004799, A004799.P16158744165044827284.a, A067980, A067980.P17476035265279750799.a, A067984, A067984.P9514579657164973560.a, A000032, A000032.P8352177345629330861.a, A053311, A053311.P9778916155767506881.a, A097039, A097039.P7639164022174265991.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A067983

/-! ## A067983.P8495073403127421647

`A067986(n)-(A067985(n)+A067982(n))`
-/

namespace A067983.P8495073403127421647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067986 n - (A067985 n + A067982 n)

end

end A067983.P8495073403127421647

namespace A067983

/-- `A067986(n)-(A067985(n)+A067982(n))` -/
def P8495073403127421647.Spec : Prop :=
  ∀ n, P8495073403127421647.a n = A067983 n

theorem P8495073403127421647.correct : P8495073403127421647.Spec := by
  intro n
  simp only [A067983, Nat.add_sub_cancel, A067983.P8495073403127421647.a, A067983.P15812095397657080195.a, A067981, A067981.P4589928530987231224.a, A067982, A067982.P7275178896645523825.a, A067985, A067985.P13103454842817456950.a, A067986, A067986.P4183801628319440246.a, A004799, A004799.P16158744165044827284.a, A067980, A067980.P17476035265279750799.a, A067984, A067984.P9514579657164973560.a, A000032, A000032.P8352177345629330861.a, A053311, A053311.P9778916155767506881.a, A097039, A097039.P7639164022174265991.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A067983

/-! ## A067983.P12496742658560059259

`A067990(A055998(n+2)+7)`
-/

namespace A067983.P12496742658560059259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067990 (A055998 (n + 2) + 7).toNat

end

end A067983.P12496742658560059259

namespace A067983

/-- `A067990(A055998(n+2)+7)` -/
def P12496742658560059259.Spec : Prop :=
  ∀ n, P12496742658560059259.a n = A067983 n

end A067983

/-! ## A067983.P16985813807619583572

`A067990(A000217(n+5)-(n+1))`
-/

namespace A067983.P16985813807619583572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067990 (A000217 (n + 5) - (n + 1 : ℤ)).toNat

end

end A067983.P16985813807619583572

namespace A067983

/-- `A067990(A000217(n+5)-(n+1))` -/
def P16985813807619583572.Spec : Prop :=
  ∀ n, P16985813807619583572.a n = A067983 n

end A067983

/-! ## A067983.P2101814504793346311

`A067990(Δ[Δ[A095667(n)]]-(2*n+1))`
-/

namespace A067983.P2101814504793346311
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095667 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067990 (f1 (n + 1) - f1 n - (2 * n + 1 : ℤ)).toNat

end

end A067983.P2101814504793346311

namespace A067983

/-- `A067990(Δ[Δ[A095667(n)]]-(2*n+1))` -/
def P2101814504793346311.Spec : Prop :=
  ∀ n, P2101814504793346311.a n = A067983 n

end A067983

/-! ## A067983.P2174180289446644197

`A067979(2*n+∑[n+3]+7)`
-/

namespace A067983.P2174180289446644197
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067979 (2 * n + (∑ j ∈ Finset.range (n + 1), f1 j + 7))

end

end A067983.P2174180289446644197

namespace A067983

/-- `A067979(2*n+∑[n+3]+7)` -/
def P2174180289446644197.Spec : Prop :=
  ∀ n, P2174180289446644197.a n = A067983 n

end A067983

/-!
# A067984: Convolution of L(n+1) := A000204(n+1) (Lucas), n>=0, with L(n+6), n>=0.

The programs for A067984, the canonical program `A067984.P9514579657164973560` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A067984 has offset 0).

The definition of A067984 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 459 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A067984.P9514579657164973560

`A067983(n)+A067982(n)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A067984

/-- `A067983(n)+A067982(n)` -/
def P9514579657164973560.Spec : Prop :=
  ∀ n, P9514579657164973560.a n = A067984 n

theorem P9514579657164973560.correct : P9514579657164973560.Spec := by
  intro n
  simp only [A067984]

end A067984

/-! ## A067984.P17983911631824204919

`A067981(n)+2*A067982(n)`
-/

namespace A067984.P17983911631824204919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067981 n + 2 * A067982 n

end

end A067984.P17983911631824204919

namespace A067984

/-- `A067981(n)+2*A067982(n)` -/
def P17983911631824204919.Spec : Prop :=
  ∀ n, P17983911631824204919.a n = A067984 n

theorem P17983911631824204919.correct : P17983911631824204919.Spec := by
  intro n
  simp only [A067984, Nat.add_sub_cancel, A067984.P17983911631824204919.a, A067984.P9514579657164973560.a, A067981, A067981.P4589928530987231224.a, A067982, A067982.P7275178896645523825.a, A067983, A067983.P15812095397657080195.a, A004799, A004799.P16158744165044827284.a, A067980, A067980.P17476035265279750799.a, A000032, A000032.P8352177345629330861.a, A053311, A053311.P9778916155767506881.a, A097039, A097039.P7639164022174265991.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A067984

/-! ## A067984.P12716813002202262128

`2*A067983(n)-A067981(n)`
-/

namespace A067984.P12716813002202262128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A067983 n - A067981 n

end

end A067984.P12716813002202262128

namespace A067984

/-- `2*A067983(n)-A067981(n)` -/
def P12716813002202262128.Spec : Prop :=
  ∀ n, P12716813002202262128.a n = A067984 n

theorem P12716813002202262128.correct : P12716813002202262128.Spec := by
  intro n
  simp only [A067984, Nat.add_sub_cancel, A067984.P12716813002202262128.a, A067984.P9514579657164973560.a, A067981, A067981.P4589928530987231224.a, A067982, A067982.P7275178896645523825.a, A067983, A067983.P15812095397657080195.a, A004799, A004799.P16158744165044827284.a, A067980, A067980.P17476035265279750799.a, A000032, A000032.P8352177345629330861.a, A053311, A053311.P9778916155767506881.a, A097039, A097039.P7639164022174265991.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A067984

/-! ## A067984.P15102925659587245788

`(29*n+18)*A000045(n+1)+18*(n+1)*A000045(n)`
-/

namespace A067984.P15102925659587245788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (29 * n + 18 : ℤ) * A000045 (n + 1) + 18 * ((n + 1 : ℤ) * A000045 n)

end

end A067984.P15102925659587245788

namespace A067984

/-- `(29*n+18)*A000045(n+1)+18*(n+1)*A000045(n)` -/
def P15102925659587245788.Spec : Prop :=
  ∀ n, P15102925659587245788.a n = A067984 n

end A067984

/-! ## A067984.P14929300973940208961

`A067980(n)+A067983(n)+A067981(n)`
-/

namespace A067984.P14929300973940208961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067980 n + (A067983 n + A067981 n)

end

end A067984.P14929300973940208961

namespace A067984

/-- `A067980(n)+A067983(n)+A067981(n)` -/
def P14929300973940208961.Spec : Prop :=
  ∀ n, P14929300973940208961.a n = A067984 n

theorem P14929300973940208961.correct : P14929300973940208961.Spec := by
  intro n
  simp only [A067984, Nat.add_sub_cancel, A067984.P14929300973940208961.a, A067984.P9514579657164973560.a, A067980, A067980.P17476035265279750799.a, A067981, A067981.P4589928530987231224.a, A067982, A067982.P7275178896645523825.a, A067983, A067983.P15812095397657080195.a, A000032, A000032.P8352177345629330861.a, A004799, A004799.P16158744165044827284.a, A053311, A053311.P9778916155767506881.a, A097039, A097039.P7639164022174265991.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A067984

/-! ## A067984.P8929532760838180485

`A067985(n)-A067983(n)`
-/

namespace A067984.P8929532760838180485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067985 n - A067983 n

end

end A067984.P8929532760838180485

namespace A067984

/-- `A067985(n)-A067983(n)` -/
def P8929532760838180485.Spec : Prop :=
  ∀ n, P8929532760838180485.a n = A067984 n

theorem P8929532760838180485.correct : P8929532760838180485.Spec := by
  intro n
  simp only [A067984, Nat.add_sub_cancel, A067984.P8929532760838180485.a, A067984.P9514579657164973560.a, A067982, A067982.P7275178896645523825.a, A067983, A067983.P15812095397657080195.a, A067985, A067985.P13103454842817456950.a, A067980, A067980.P17476035265279750799.a, A067981, A067981.P4589928530987231224.a, A000032, A000032.P8352177345629330861.a, A004799, A004799.P16158744165044827284.a, A053311, A053311.P9778916155767506881.a, A097039, A097039.P7639164022174265991.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A067984

/-! ## A067984.P3211232656791558904

`(A067985(n)+A067982(n))/2`
-/

namespace A067984.P3211232656791558904
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A067985 n + A067982 n : ℚ) / 2

end

end A067984.P3211232656791558904

namespace A067984

/-- `(A067985(n)+A067982(n))/2` -/
def P3211232656791558904.Spec : Prop :=
  ∀ n, P3211232656791558904.a n = (A067984 n : ℚ)

theorem P3211232656791558904.correct : P3211232656791558904.Spec := by
  intro n
  simp only [A067984, Nat.add_sub_cancel, A067984.P3211232656791558904.a, A067984.P9514579657164973560.a, A067982, A067982.P7275178896645523825.a, A067983, A067983.P15812095397657080195.a, A067985, A067985.P13103454842817456950.a, A067980, A067980.P17476035265279750799.a, A067981, A067981.P4589928530987231224.a, A000032, A000032.P8352177345629330861.a, A004799, A004799.P16158744165044827284.a, A053311, A053311.P9778916155767506881.a, A097039, A097039.P7639164022174265991.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A067984

/-! ## A067984.P8185171118088421394

`A067985(n)-A067981(n)-A067982(n)`
-/

namespace A067984.P8185171118088421394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067985 n - A067981 n - A067982 n

end

end A067984.P8185171118088421394

namespace A067984

/-- `A067985(n)-A067981(n)-A067982(n)` -/
def P8185171118088421394.Spec : Prop :=
  ∀ n, P8185171118088421394.a n = A067984 n

theorem P8185171118088421394.correct : P8185171118088421394.Spec := by
  intro n
  simp only [A067984, Nat.add_sub_cancel, A067984.P8185171118088421394.a, A067984.P9514579657164973560.a, A067981, A067981.P4589928530987231224.a, A067982, A067982.P7275178896645523825.a, A067983, A067983.P15812095397657080195.a, A067985, A067985.P13103454842817456950.a, A004799, A004799.P16158744165044827284.a, A067980, A067980.P17476035265279750799.a, A000032, A000032.P8352177345629330861.a, A053311, A053311.P9778916155767506881.a, A097039, A097039.P7639164022174265991.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A067984

/-! ## A067984.P5077670940291046211

`A067986(n)-A067985(n)`
-/

namespace A067984.P5077670940291046211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067986 n - A067985 n

end

end A067984.P5077670940291046211

namespace A067984

/-- `A067986(n)-A067985(n)` -/
def P5077670940291046211.Spec : Prop :=
  ∀ n, P5077670940291046211.a n = A067984 n

theorem P5077670940291046211.correct : P5077670940291046211.Spec := by
  intro n
  simp only [A067984, Nat.add_sub_cancel, A067984.P5077670940291046211.a, A067984.P9514579657164973560.a, A067982, A067982.P7275178896645523825.a, A067983, A067983.P15812095397657080195.a, A067985, A067985.P13103454842817456950.a, A067986, A067986.P4183801628319440246.a, A067980, A067980.P17476035265279750799.a, A067981, A067981.P4589928530987231224.a, A000032, A000032.P8352177345629330861.a, A004799, A004799.P16158744165044827284.a, A053311, A053311.P9778916155767506881.a, A097039, A097039.P7639164022174265991.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A067984

/-! ## A067984.P14172145436223303776

`(A067986(n)-A067983(n))/2`
-/

namespace A067984.P14172145436223303776
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A067986 n - A067983 n : ℚ) / 2

end

end A067984.P14172145436223303776

namespace A067984

/-- `(A067986(n)-A067983(n))/2` -/
def P14172145436223303776.Spec : Prop :=
  ∀ n, P14172145436223303776.a n = (A067984 n : ℚ)

theorem P14172145436223303776.correct : P14172145436223303776.Spec := by
  intro n
  simp only [A067984, Nat.add_sub_cancel, A067984.P14172145436223303776.a, A067984.P9514579657164973560.a, A067982, A067982.P7275178896645523825.a, A067983, A067983.P15812095397657080195.a, A067986, A067986.P4183801628319440246.a, A067980, A067980.P17476035265279750799.a, A067981, A067981.P4589928530987231224.a, A067985, A067985.P13103454842817456950.a, A000032, A000032.P8352177345629330861.a, A004799, A004799.P16158744165044827284.a, A053311, A053311.P9778916155767506881.a, A097039, A097039.P7639164022174265991.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A067984

/-! ## A067984.P15824293580395928671

`A067987(n)%A067985(n)`
-/

namespace A067984.P15824293580395928671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A067987 n) (A067985 n)

end

end A067984.P15824293580395928671

namespace A067984

/-- `A067987(n)%A067985(n)` -/
def P15824293580395928671.Spec : Prop :=
  ∀ n, P15824293580395928671.a n = A067984 n

end A067984

/-! ## A067984.P16955077225657051672

`2*A067986(n)-A067987(n)`
-/

namespace A067984.P16955077225657051672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A067986 n - A067987 n

end

end A067984.P16955077225657051672

namespace A067984

/-- `2*A067986(n)-A067987(n)` -/
def P16955077225657051672.Spec : Prop :=
  ∀ n, P16955077225657051672.a n = A067984 n

theorem P16955077225657051672.correct : P16955077225657051672.Spec := by
  intro n
  simp only [A067984, Nat.add_sub_cancel, A067984.P16955077225657051672.a, A067984.P9514579657164973560.a, A067982, A067982.P7275178896645523825.a, A067983, A067983.P15812095397657080195.a, A067986, A067986.P4183801628319440246.a, A067987, A067987.P9146074122802755408.a, A067980, A067980.P17476035265279750799.a, A067981, A067981.P4589928530987231224.a, A067985, A067985.P13103454842817456950.a, A000032, A000032.P8352177345629330861.a, A004799, A004799.P16158744165044827284.a, A053311, A053311.P9778916155767506881.a, A097039, A097039.P7639164022174265991.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A067984

/-! ## A067984.P18244487716956392589

`A067990(A000217(n+5)+5)`
-/

namespace A067984.P18244487716956392589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067990 (A000217 (n + 5) + 5).toNat

end

end A067984.P18244487716956392589

namespace A067984

/-- `A067990(A000217(n+5)+5)` -/
def P18244487716956392589.Spec : Prop :=
  ∀ n, P18244487716956392589.a n = A067984 n

end A067984

/-! ## A067984.P477131995864332561

`A067979(A055999(n+3))`
-/

namespace A067984.P477131995864332561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067979 (A055999 (n + 3)).toNat

end

end A067984.P477131995864332561

namespace A067984

/-- `A067979(A055999(n+3))` -/
def P477131995864332561.Spec : Prop :=
  ∀ n, P477131995864332561.a n = A067984 n

end A067984

/-! ## A067984.P906700209607408566

`A067979(Δ[Δ[A095667(n)]])`
-/

namespace A067984.P906700209607408566
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095667 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067979 (f1 (n + 1) - f1 n).toNat

end

end A067984.P906700209607408566

namespace A067984

/-- `A067979(Δ[Δ[A095667(n)]])` -/
def P906700209607408566.Spec : Prop :=
  ∀ n, P906700209607408566.a n = A067984 n

end A067984

/-! ## A067984.P17463969549438085885

`A067979(A052905(n+3)-1)`
-/

namespace A067984.P17463969549438085885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067979 (A052905 (n + 3) - 1).toNat

end

end A067984.P17463969549438085885

namespace A067984

/-- `A067979(A052905(n+3)-1)` -/
def P17463969549438085885.Spec : Prop :=
  ∀ n, P17463969549438085885.a n = A067984 n

end A067984

/-! ## A067984.P15660113553732355421

`A067979(A046691(n+4)-2)`
-/

namespace A067984.P15660113553732355421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067979 (A046691 (n + 4) - 2).toNat

end

end A067984.P15660113553732355421

namespace A067984

/-- `A067979(A046691(n+4)-2)` -/
def P15660113553732355421.Spec : Prop :=
  ∀ n, P15660113553732355421.a n = A067984 n

end A067984

/-! ## A067984.P14095347798915115765

`A067979(A000217(n+6)-6)`
-/

namespace A067984.P14095347798915115765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067979 (A000217 (n + 6) - 6).toNat

end

end A067984.P14095347798915115765

namespace A067984

/-- `A067979(A000217(n+6)-6)` -/
def P14095347798915115765.Spec : Prop :=
  ∀ n, P14095347798915115765.a n = A067984 n

end A067984

/-! ## A067984.P5018009372360283396

`A067979(n+4+A000124(n+4)+n)`
-/

namespace A067984.P5018009372360283396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067979 ((n + 4 : ℤ) + (A000124 (n + 4) + (n : ℤ))).toNat

end

end A067984.P5018009372360283396

namespace A067984

/-- `A067979(n+4+A000124(n+4)+n)` -/
def P5018009372360283396.Spec : Prop :=
  ∀ n, P5018009372360283396.a n = A067984 n

end A067984

/-!
# A067985: Convolution of L(n+1) := A000204(n+1) (Lucas), n>=0, with L(n+7), n>=0.

The programs for A067985, the canonical program `A067985.P13103454842817456950` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A067985 has offset 0).

The definition of A067985 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 458 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A067985.P13103454842817456950

`A067984(n)+A067983(n)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A067985

/-- `A067984(n)+A067983(n)` -/
def P13103454842817456950.Spec : Prop :=
  ∀ n, P13103454842817456950.a n = A067985 n

theorem P13103454842817456950.correct : P13103454842817456950.Spec := by
  intro n
  simp only [A067985]

end A067985

/-! ## A067985.P7447168611442787792

`A067982(n)+2*A067983(n)`
-/

namespace A067985.P7447168611442787792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067982 n + 2 * A067983 n

end

end A067985.P7447168611442787792

namespace A067985

/-- `A067982(n)+2*A067983(n)` -/
def P7447168611442787792.Spec : Prop :=
  ∀ n, P7447168611442787792.a n = A067985 n

theorem P7447168611442787792.correct : P7447168611442787792.Spec := by
  intro n
  simp only [A067985, Nat.add_sub_cancel, A067985.P7447168611442787792.a, A067985.P13103454842817456950.a, A067982, A067982.P7275178896645523825.a, A067983, A067983.P15812095397657080195.a, A067984, A067984.P9514579657164973560.a, A067980, A067980.P17476035265279750799.a, A067981, A067981.P4589928530987231224.a, A000032, A000032.P8352177345629330861.a, A004799, A004799.P16158744165044827284.a, A053311, A053311.P9778916155767506881.a, A097039, A097039.P7639164022174265991.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A067985

/-! ## A067985.P7201713921102088173

`2*A067984(n)-A067982(n)`
-/

namespace A067985.P7201713921102088173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A067984 n - A067982 n

end

end A067985.P7201713921102088173

namespace A067985

/-- `2*A067984(n)-A067982(n)` -/
def P7201713921102088173.Spec : Prop :=
  ∀ n, P7201713921102088173.a n = A067985 n

theorem P7201713921102088173.correct : P7201713921102088173.Spec := by
  intro n
  simp only [A067985, Nat.add_sub_cancel, A067985.P7201713921102088173.a, A067985.P13103454842817456950.a, A067982, A067982.P7275178896645523825.a, A067983, A067983.P15812095397657080195.a, A067984, A067984.P9514579657164973560.a, A067980, A067980.P17476035265279750799.a, A067981, A067981.P4589928530987231224.a, A000032, A000032.P8352177345629330861.a, A004799, A004799.P16158744165044827284.a, A053311, A053311.P9778916155767506881.a, A097039, A097039.P7639164022174265991.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A067985

/-! ## A067985.P11911771676855901888

`(47*n+29)*A000045(n+1)+29*(n+1)*A000045(n)`
-/

namespace A067985.P11911771676855901888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (47 * n + 29 : ℤ) * A000045 (n + 1) + 29 * ((n + 1 : ℤ) * A000045 n)

end

end A067985.P11911771676855901888

namespace A067985

/-- `(47*n+29)*A000045(n+1)+29*(n+1)*A000045(n)` -/
def P11911771676855901888.Spec : Prop :=
  ∀ n, P11911771676855901888.a n = A067985 n

end A067985

/-! ## A067985.P11051844916301501740

`A067986(n)-A067984(n)`
-/

namespace A067985.P11051844916301501740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067986 n - A067984 n

end

end A067985.P11051844916301501740

namespace A067985

/-- `A067986(n)-A067984(n)` -/
def P11051844916301501740.Spec : Prop :=
  ∀ n, P11051844916301501740.a n = A067985 n

theorem P11051844916301501740.correct : P11051844916301501740.Spec := by
  intro n
  simp only [A067985, Nat.add_sub_cancel, A067985.P11051844916301501740.a, A067985.P13103454842817456950.a, A067983, A067983.P15812095397657080195.a, A067984, A067984.P9514579657164973560.a, A067986, A067986.P4183801628319440246.a, A067981, A067981.P4589928530987231224.a, A067982, A067982.P7275178896645523825.a, A004799, A004799.P16158744165044827284.a, A067980, A067980.P17476035265279750799.a, A000032, A000032.P8352177345629330861.a, A053311, A053311.P9778916155767506881.a, A097039, A097039.P7639164022174265991.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A067985

/-! ## A067985.P3104118747846353210

`(A067986(n)+A067983(n))/2`
-/

namespace A067985.P3104118747846353210
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A067986 n + A067983 n : ℚ) / 2

end

end A067985.P3104118747846353210

namespace A067985

/-- `(A067986(n)+A067983(n))/2` -/
def P3104118747846353210.Spec : Prop :=
  ∀ n, P3104118747846353210.a n = (A067985 n : ℚ)

theorem P3104118747846353210.correct : P3104118747846353210.Spec := by
  intro n
  simp only [A067985, Nat.add_sub_cancel, A067985.P3104118747846353210.a, A067985.P13103454842817456950.a, A067983, A067983.P15812095397657080195.a, A067984, A067984.P9514579657164973560.a, A067986, A067986.P4183801628319440246.a, A067981, A067981.P4589928530987231224.a, A067982, A067982.P7275178896645523825.a, A004799, A004799.P16158744165044827284.a, A067980, A067980.P17476035265279750799.a, A000032, A000032.P8352177345629330861.a, A053311, A053311.P9778916155767506881.a, A097039, A097039.P7639164022174265991.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A067985

/-! ## A067985.P17052798637729344873

`A067987(n)-A067986(n)`
-/

namespace A067985.P17052798637729344873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067987 n - A067986 n

end

end A067985.P17052798637729344873

namespace A067985

/-- `A067987(n)-A067986(n)` -/
def P17052798637729344873.Spec : Prop :=
  ∀ n, P17052798637729344873.a n = A067985 n

theorem P17052798637729344873.correct : P17052798637729344873.Spec := by
  intro n
  simp only [A067985, Nat.add_sub_cancel, A067985.P17052798637729344873.a, A067985.P13103454842817456950.a, A067983, A067983.P15812095397657080195.a, A067984, A067984.P9514579657164973560.a, A067986, A067986.P4183801628319440246.a, A067987, A067987.P9146074122802755408.a, A067981, A067981.P4589928530987231224.a, A067982, A067982.P7275178896645523825.a, A004799, A004799.P16158744165044827284.a, A067980, A067980.P17476035265279750799.a, A000032, A000032.P8352177345629330861.a, A053311, A053311.P9778916155767506881.a, A097039, A097039.P7639164022174265991.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A067985

/-! ## A067985.P10064856428150222705

`(A067987(n)-A067984(n))/2`
-/

namespace A067985.P10064856428150222705
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A067987 n - A067984 n : ℚ) / 2

end

end A067985.P10064856428150222705

namespace A067985

/-- `(A067987(n)-A067984(n))/2` -/
def P10064856428150222705.Spec : Prop :=
  ∀ n, P10064856428150222705.a n = (A067985 n : ℚ)

theorem P10064856428150222705.correct : P10064856428150222705.Spec := by
  intro n
  simp only [A067985, Nat.add_sub_cancel, A067985.P10064856428150222705.a, A067985.P13103454842817456950.a, A067983, A067983.P15812095397657080195.a, A067984, A067984.P9514579657164973560.a, A067987, A067987.P9146074122802755408.a, A067981, A067981.P4589928530987231224.a, A067982, A067982.P7275178896645523825.a, A067986, A067986.P4183801628319440246.a, A004799, A004799.P16158744165044827284.a, A067980, A067980.P17476035265279750799.a, A000032, A000032.P8352177345629330861.a, A053311, A053311.P9778916155767506881.a, A097039, A097039.P7639164022174265991.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A067985

/-! ## A067985.P10883154765442329853

`A067990(A056119(n)+27)`
-/

namespace A067985.P10883154765442329853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067990 (A056119 n + 27).toNat

end

end A067985.P10883154765442329853

namespace A067985

/-- `A067990(A056119(n)+27)` -/
def P10883154765442329853.Spec : Prop :=
  ∀ n, P10883154765442329853.a n = A067985 n

end A067985

/-! ## A067985.P406548262519645858

`A067990(Δ[A023545(n+2)]+10)`
-/

namespace A067985.P406548262519645858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067990 (f1 (n + 1) - f1 n + 10).toNat

end

end A067985.P406548262519645858

namespace A067985

/-- `A067990(Δ[A023545(n+2)]+10)` -/
def P406548262519645858.Spec : Prop :=
  ∀ n, P406548262519645858.a n = A067985 n

end A067985

/-! ## A067985.P5898452511066007247

`A067990(A000124(n+7)-(n+2))`
-/

namespace A067985.P5898452511066007247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067990 (A000124 (n + 7) - (n + 2 : ℤ)).toNat

end

end A067985.P5898452511066007247

namespace A067985

/-- `A067990(A000124(n+7)-(n+2))` -/
def P5898452511066007247.Spec : Prop :=
  ∀ n, P5898452511066007247.a n = A067985 n

end A067985

/-! ## A067985.P14352320484500226435

`A067979(A000096(n+6)-6)`
-/

namespace A067985.P14352320484500226435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067979 (A000096 (n + 6) - 6).toNat

end

end A067985.P14352320484500226435

namespace A067985

/-- `A067979(A000096(n+6)-6)` -/
def P14352320484500226435.Spec : Prop :=
  ∀ n, P14352320484500226435.a n = A067985 n

end A067985

/-! ## A067985.P12885947121280209204

`A067979(A000124(n+6)+n-1)`
-/

namespace A067985.P12885947121280209204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067979 (A000124 (n + 6) + ((n : ℤ) - 1)).toNat

end

end A067985.P12885947121280209204

namespace A067985

/-- `A067979(A000124(n+6)+n-1)` -/
def P12885947121280209204.Spec : Prop :=
  ∀ n, P12885947121280209204.a n = A067985 n

end A067985

/-! ## A067985.P296657672464513148

`A067979(2*n+A000096(n+4)+7)`
-/

namespace A067985.P296657672464513148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067979 ((2 * n : ℤ) + (A000096 (n + 4) + 7)).toNat

end

end A067985.P296657672464513148

namespace A067985

/-- `A067979(2*n+A000096(n+4)+7)` -/
def P296657672464513148.Spec : Prop :=
  ∀ n, P296657672464513148.a n = A067985 n

end A067985

/-! ## A067985.P10668498697724869711

`A067979(2*n+A055998(n+3)+9)`
-/

namespace A067985.P10668498697724869711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067979 ((2 * n : ℤ) + (A055998 (n + 3) + 9)).toNat

end

end A067985.P10668498697724869711

namespace A067985

/-- `A067979(2*n+A055998(n+3)+9)` -/
def P10668498697724869711.Spec : Prop :=
  ∀ n, P10668498697724869711.a n = A067985 n

end A067985

/-!
# A067986: Convolution of L(n+1) := A000204(n+1) (Lucas), n>=0, with L(n+8), n>=0.

The programs for A067986, the canonical program `A067986.P4183801628319440246` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A067986 has offset 0).

The definition of A067986 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 457 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A067986.P4183801628319440246

`A067985(n)+A067984(n)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A067986

/-- `A067985(n)+A067984(n)` -/
def P4183801628319440246.Spec : Prop :=
  ∀ n, P4183801628319440246.a n = A067986 n

theorem P4183801628319440246.correct : P4183801628319440246.Spec := by
  intro n
  simp only [A067986]

end A067986

/-! ## A067986.P16611702617919725762

`A067983(n)+2*A067984(n)`
-/

namespace A067986.P16611702617919725762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067983 n + 2 * A067984 n

end

end A067986.P16611702617919725762

namespace A067986

/-- `A067983(n)+2*A067984(n)` -/
def P16611702617919725762.Spec : Prop :=
  ∀ n, P16611702617919725762.a n = A067986 n

theorem P16611702617919725762.correct : P16611702617919725762.Spec := by
  intro n
  simp only [A067986, Nat.add_sub_cancel, A067986.P16611702617919725762.a, A067986.P4183801628319440246.a, A067983, A067983.P15812095397657080195.a, A067984, A067984.P9514579657164973560.a, A067985, A067985.P13103454842817456950.a, A067981, A067981.P4589928530987231224.a, A067982, A067982.P7275178896645523825.a, A004799, A004799.P16158744165044827284.a, A067980, A067980.P17476035265279750799.a, A000032, A000032.P8352177345629330861.a, A053311, A053311.P9778916155767506881.a, A097039, A097039.P7639164022174265991.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A067986

/-! ## A067986.P17201682038071767207

`2*A067985(n)-A067983(n)`
-/

namespace A067986.P17201682038071767207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A067985 n - A067983 n

end

end A067986.P17201682038071767207

namespace A067986

/-- `2*A067985(n)-A067983(n)` -/
def P17201682038071767207.Spec : Prop :=
  ∀ n, P17201682038071767207.a n = A067986 n

theorem P17201682038071767207.correct : P17201682038071767207.Spec := by
  intro n
  simp only [A067986, Nat.add_sub_cancel, A067986.P17201682038071767207.a, A067986.P4183801628319440246.a, A067983, A067983.P15812095397657080195.a, A067984, A067984.P9514579657164973560.a, A067985, A067985.P13103454842817456950.a, A067981, A067981.P4589928530987231224.a, A067982, A067982.P7275178896645523825.a, A004799, A004799.P16158744165044827284.a, A067980, A067980.P17476035265279750799.a, A000032, A000032.P8352177345629330861.a, A053311, A053311.P9778916155767506881.a, A097039, A097039.P7639164022174265991.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A067986

/-! ## A067986.P11357429288930337603

`(76*n+47)*A000045(n+1)+47*(n+1)*A000045(n)`
-/

namespace A067986.P11357429288930337603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (76 * n + 47 : ℤ) * A000045 (n + 1) + 47 * ((n + 1 : ℤ) * A000045 n)

end

end A067986.P11357429288930337603

namespace A067986

/-- `(76*n+47)*A000045(n+1)+47*(n+1)*A000045(n)` -/
def P11357429288930337603.Spec : Prop :=
  ∀ n, P11357429288930337603.a n = A067986 n

end A067986

/-! ## A067986.P2928660939918410983

`A067987(n)-A067985(n)`
-/

namespace A067986.P2928660939918410983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067987 n - A067985 n

end

end A067986.P2928660939918410983

namespace A067986

/-- `A067987(n)-A067985(n)` -/
def P2928660939918410983.Spec : Prop :=
  ∀ n, P2928660939918410983.a n = A067986 n

theorem P2928660939918410983.correct : P2928660939918410983.Spec := by
  intro n
  simp only [A067986, Nat.add_sub_cancel, A067986.P2928660939918410983.a, A067986.P4183801628319440246.a, A067984, A067984.P9514579657164973560.a, A067985, A067985.P13103454842817456950.a, A067987, A067987.P9146074122802755408.a, A067982, A067982.P7275178896645523825.a, A067983, A067983.P15812095397657080195.a, A067980, A067980.P17476035265279750799.a, A067981, A067981.P4589928530987231224.a, A000032, A000032.P8352177345629330861.a, A004799, A004799.P16158744165044827284.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A067986

/-! ## A067986.P18241484361425389935

`(A067987(n)+A067984(n))/2`
-/

namespace A067986.P18241484361425389935
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A067987 n + A067984 n : ℚ) / 2

end

end A067986.P18241484361425389935

namespace A067986

/-- `(A067987(n)+A067984(n))/2` -/
def P18241484361425389935.Spec : Prop :=
  ∀ n, P18241484361425389935.a n = (A067986 n : ℚ)

theorem P18241484361425389935.correct : P18241484361425389935.Spec := by
  intro n
  simp only [A067986, Nat.add_sub_cancel, A067986.P18241484361425389935.a, A067986.P4183801628319440246.a, A067984, A067984.P9514579657164973560.a, A067985, A067985.P13103454842817456950.a, A067987, A067987.P9146074122802755408.a, A067982, A067982.P7275178896645523825.a, A067983, A067983.P15812095397657080195.a, A067980, A067980.P17476035265279750799.a, A067981, A067981.P4589928530987231224.a, A000032, A000032.P8352177345629330861.a, A004799, A004799.P16158744165044827284.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A067986

/-! ## A067986.P9025719193702093611

`A067990(A000124(n+7)+6)`
-/

namespace A067986.P9025719193702093611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067990 (A000124 (n + 7) + 6).toNat

end

end A067986.P9025719193702093611

namespace A067986

/-- `A067990(A000124(n+7)+6)` -/
def P9025719193702093611.Spec : Prop :=
  ∀ n, P9025719193702093611.a n = A067986 n

end A067986

/-! ## A067986.P4626141503359030859

`A067990(A000096(n+6)+8)`
-/

namespace A067986.P4626141503359030859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067990 (A000096 (n + 6) + 8).toNat

end

end A067986.P4626141503359030859

namespace A067986

/-- `A067990(A000096(n+6)+8)` -/
def P4626141503359030859.Spec : Prop :=
  ∀ n, P4626141503359030859.a n = A067986 n

end A067986

/-! ## A067986.P10943771789666740510

`A067990(A055999(n+4)+13)`
-/

namespace A067986.P10943771789666740510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067990 (A055999 (n + 4) + 13).toNat

end

end A067986.P10943771789666740510

namespace A067986

/-- `A067990(A055999(n+4)+13)` -/
def P10943771789666740510.Spec : Prop :=
  ∀ n, P10943771789666740510.a n = A067986 n

end A067986

/-! ## A067986.P15841281103471625530

`A067979(A000096(n+7)-7)`
-/

namespace A067986.P15841281103471625530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067979 (A000096 (n + 7) - 7).toNat

end

end A067986.P15841281103471625530

namespace A067986

/-- `A067979(A000096(n+7)-7)` -/
def P15841281103471625530.Spec : Prop :=
  ∀ n, P15841281103471625530.a n = A067986 n

end A067986

/-! ## A067986.P4925653074394035515

`A067979(A000124(n+7)+n-1)`
-/

namespace A067986.P4925653074394035515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067979 (A000124 (n + 7) + (n : ℤ) - 1).toNat

end

end A067986.P4925653074394035515

namespace A067986

/-- `A067979(A000124(n+7)+n-1)` -/
def P4925653074394035515.Spec : Prop :=
  ∀ n, P4925653074394035515.a n = A067986 n

end A067986

/-!
# A067987: Convolution of L(n+1) := A000204(n+1) (Lucas), n>=0, with L(n+9), n>=0.

The programs for A067987, the canonical program `A067987.P9146074122802755408` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A067987 has offset 0).

The definition of A067987 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 456 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A067987.P9146074122802755408

`A067986(n)+A067985(n)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A067987

/-- `A067986(n)+A067985(n)` -/
def P9146074122802755408.Spec : Prop :=
  ∀ n, P9146074122802755408.a n = A067987 n

theorem P9146074122802755408.correct : P9146074122802755408.Spec := by
  intro n
  simp only [A067987]

end A067987

/-! ## A067987.P3727708549176173297

`A067984(n)+2*A067985(n)`
-/

namespace A067987.P3727708549176173297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067984 n + 2 * A067985 n

end

end A067987.P3727708549176173297

namespace A067987

/-- `A067984(n)+2*A067985(n)` -/
def P3727708549176173297.Spec : Prop :=
  ∀ n, P3727708549176173297.a n = A067987 n

theorem P3727708549176173297.correct : P3727708549176173297.Spec := by
  intro n
  simp only [A067987, Nat.add_sub_cancel, A067987.P3727708549176173297.a, A067987.P9146074122802755408.a, A067984, A067984.P9514579657164973560.a, A067985, A067985.P13103454842817456950.a, A067986, A067986.P4183801628319440246.a, A067982, A067982.P7275178896645523825.a, A067983, A067983.P15812095397657080195.a, A067980, A067980.P17476035265279750799.a, A067981, A067981.P4589928530987231224.a, A000032, A000032.P8352177345629330861.a, A004799, A004799.P16158744165044827284.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A067987

/-! ## A067987.P7927585101380990179

`2*A067986(n)-A067984(n)`
-/

namespace A067987.P7927585101380990179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A067986 n - A067984 n

end

end A067987.P7927585101380990179

namespace A067987

/-- `2*A067986(n)-A067984(n)` -/
def P7927585101380990179.Spec : Prop :=
  ∀ n, P7927585101380990179.a n = A067987 n

theorem P7927585101380990179.correct : P7927585101380990179.Spec := by
  intro n
  simp only [A067987, Nat.add_sub_cancel, A067987.P7927585101380990179.a, A067987.P9146074122802755408.a, A067984, A067984.P9514579657164973560.a, A067985, A067985.P13103454842817456950.a, A067986, A067986.P4183801628319440246.a, A067982, A067982.P7275178896645523825.a, A067983, A067983.P15812095397657080195.a, A067980, A067980.P17476035265279750799.a, A067981, A067981.P4589928530987231224.a, A000032, A000032.P8352177345629330861.a, A004799, A004799.P16158744165044827284.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A067987

/-! ## A067987.P1096319425844566249

`A067990(A000096(n+7)+9)`
-/

namespace A067987.P1096319425844566249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067990 (A000096 (n + 7) + 9).toNat

end

end A067987.P1096319425844566249

namespace A067987

/-- `A067990(A000096(n+7)+9)` -/
def P1096319425844566249.Spec : Prop :=
  ∀ n, P1096319425844566249.a n = A067987 n

end A067987

/-! ## A067987.P14709821930068308143

`A067990(A000217(n+8)+8)`
-/

namespace A067987.P14709821930068308143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067990 (A000217 (n + 8) + 8).toNat

end

end A067987.P14709821930068308143

namespace A067987

/-- `A067990(A000217(n+8)+8)` -/
def P14709821930068308143.Spec : Prop :=
  ∀ n, P14709821930068308143.a n = A067987 n

end A067987

/-! ## A067987.P12151628762312558904

`A067979(A046691(n+7)-5)`
-/

namespace A067987.P12151628762312558904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067979 (A046691 (n + 7) - 5).toNat

end

end A067987.P12151628762312558904

namespace A067987

/-- `A067979(A046691(n+7)-5)` -/
def P12151628762312558904.Spec : Prop :=
  ∀ n, P12151628762312558904.a n = A067987 n

end A067987

/-! ## A067987.P11270550824765696358

`A067979(A000217(n+9)-9)`
-/

namespace A067987.P11270550824765696358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067979 (A000217 (n + 9) - 9).toNat

end

end A067987.P11270550824765696358

namespace A067987

/-- `A067979(A000217(n+9)-9)` -/
def P11270550824765696358.Spec : Prop :=
  ∀ n, P11270550824765696358.a n = A067987 n

end A067987

/-!
# A067988: Row sums of triangle A067330; also of triangle A067418.

The programs for A067988, the canonical program `A067988.P7063124525952805528` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A067988 has offset 0).

The definition of A067988 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 456 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A067988.P2901340721650505852

`(n+2)/2*A001629(n+2)`
-/

namespace A067988.P2901340721650505852
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) / 2 * (A001629 (n + 2) : ℚ)

end

end A067988.P2901340721650505852

namespace A067988

/-- `(n+2)/2*A001629(n+2)` -/
def P2901340721650505852.Spec : Prop :=
  ∀ n, P2901340721650505852.a n = (A067988 n : ℚ)

end A067988

/-! ## A067988.P7063124525952805528

`A129707(n+1)+A055243(n)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A067988

/-- `A129707(n+1)+A055243(n)` -/
def P7063124525952805528.Spec : Prop :=
  ∀ n, P7063124525952805528.a n = A067988 n

theorem P7063124525952805528.correct : P7063124525952805528.Spec := by
  intro n
  simp only [A067988]

end A067988

/-! ## A067988.P47361997625521864

`A152881(n+1)+A001629(n+2)`
-/

namespace A067988.P47361997625521864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152881 (n + 1) + A001629 (n + 2)

end

end A067988.P47361997625521864

namespace A067988

/-- `A152881(n+1)+A001629(n+2)` -/
def P47361997625521864.Spec : Prop :=
  ∀ n, P47361997625521864.a n = A067988 n

theorem P47361997625521864.correct : P47361997625521864.Spec := by
  intro n
  simp only [A067988, Nat.add_sub_cancel, A067988.P47361997625521864.a, A067988.P7063124525952805528.a, A001629, A001629.P5625967319348901745.a, A055243, A055243.P2744026507162298828.a, A129707, A129707.P6691558522275818141.a, A152881, A152881.P17251037129773782981.a, A010049, A010049.P2470396957428042949.a, A023610, A023610.P5614618559082529944.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A067988

/-! ## A067988.P4019098653206225377

`(n+2)*((3*n+5)*A000045(n+1)+(n+1)*A000045(n))/10`
-/

namespace A067988.P4019098653206225377
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) * (((3 * n + 5 : ℤ) * A000045 (n + 1) + (n + 1 : ℤ) * A000045 n : ℚ) / 10)

end

end A067988.P4019098653206225377

namespace A067988

/-- `(n+2)*((3*n+5)*A000045(n+1)+(n+1)*A000045(n))/10` -/
def P4019098653206225377.Spec : Prop :=
  ∀ n, P4019098653206225377.a n = (A067988 n : ℚ)

end A067988

/-! ## A067988.P4432991291879451043

`A152881(n+1)+A067331(n)-A023610(n)`
-/

namespace A067988.P4432991291879451043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152881 (n + 1) + (A067331 n - A023610 n)

end

end A067988.P4432991291879451043

namespace A067988

/-- `A152881(n+1)+A067331(n)-A023610(n)` -/
def P4432991291879451043.Spec : Prop :=
  ∀ n, P4432991291879451043.a n = A067988 n

end A067988

/-! ## A067988.P16227173130080592984

`A152881(n+2)-A245961(n+3)`
-/

namespace A067988.P16227173130080592984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152881 (n + 2) - A245961 (n + 3)

end

end A067988.P16227173130080592984

namespace A067988

/-- `A152881(n+2)-A245961(n+3)` -/
def P16227173130080592984.Spec : Prop :=
  ∀ n, P16227173130080592984.a n = A067988 n

end A067988

/-! ## A067988.P15463042238160328890

`A152881(n+1)+record[A067418(n)]`
-/

namespace A067988.P15463042238160328890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067418 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152881 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A067988.P15463042238160328890

namespace A067988

/-- `A152881(n+1)+record[A067418(n)]` -/
def P15463042238160328890.Spec : Prop :=
  ∀ n, P15463042238160328890.a n = A067988 n

end A067988

/-! ## A067988.P3142747364905265320

`A104509(∑[n+2]+3)`
-/

namespace A067988.P3142747364905265320
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104509 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A067988.P3142747364905265320

namespace A067988

/-- `A104509(∑[n+2]+3)` -/
def P3142747364905265320.Spec : Prop :=
  ∀ n, P3142747364905265320.a n = A067988 n

end A067988

/-! ## A067988.P5690552256105100451

`record[A104509(A133263(n))]`
-/

namespace A067988.P5690552256105100451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104509 (A133263 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A067988.P5690552256105100451

namespace A067988

/-- `record[A104509(A133263(n))]` -/
def P5690552256105100451.Spec : Prop :=
  ∀ n, P5690552256105100451.a n = A067988 n

end A067988

/-!
# A067989: Row sums of triangle A067979; also of triangle A067990.

The programs for A067989, the canonical program `A067989.P3676896507050172247` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A067989 has offset 0).

The definition of A067989 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 453 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A067989.P3676896507050172247

`(n/2+1)*A004799(n+1)`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A067989

/-- `(n/2+1)*A004799(n+1)` -/
def P3676896507050172247.Spec : Prop :=
  ∀ n, P3676896507050172247.a n = (A067989 n : ℚ)

end A067989

/-! ## A067989.P2520007732472413046

`(n+2)/2*A067990(∑[n])`
-/

namespace A067989.P2520007732472413046
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) / 2 * (A067990 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A067989.P2520007732472413046

namespace A067989

/-- `(n+2)/2*A067990(∑[n])` -/
def P2520007732472413046.Spec : Prop :=
  ∀ n, P2520007732472413046.a n = (A067989 n : ℚ)

end A067989

/-! ## A067989.P4122286061207417234

`A004799(n+1)+A004525(n*A004799(n+1))`
-/

namespace A067989.P4122286061207417234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004799 (n + 1) + A004525 ((n : ℤ) * A004799 (n + 1)).toNat

end

end A067989.P4122286061207417234

namespace A067989

/-- `A004799(n+1)+A004525(n*A004799(n+1))` -/
def P4122286061207417234.Spec : Prop :=
  ∀ n, P4122286061207417234.a n = A067989 n

end A067989

/-! ## A067989.P967826221167441325

`A004799(n+1)+A004526(n*A004799(n+1))`
-/

namespace A067989.P967826221167441325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004799 (n + 1) + A004526 ((n : ℤ) * A004799 (n + 1)).toNat

end

end A067989.P967826221167441325

namespace A067989

/-- `A004799(n+1)+A004526(n*A004799(n+1))` -/
def P967826221167441325.Spec : Prop :=
  ∀ n, P967826221167441325.a n = A067989 n

end A067989

/-!
# A067990: Triangle A067979 with rows read backwards.

The programs for A067990, there is no canonical definition to state claims against.
-/

/-! ## A067990.P15055889169765636886

`A067979(A061579(n))`
-/

namespace A067990.P15055889169765636886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067979 (A061579 n).toNat

end

end A067990.P15055889169765636886

/-! ## A067990.P14535691729077837184

`A067979(A114327(n)+n)`
-/

namespace A067990.P14535691729077837184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067979 (A114327 n + (n : ℤ)).toNat

end

end A067990.P14535691729077837184

/-! ## A067990.P8288306535933520082

`A067979(A038722(n+1)-1)`
-/

namespace A067990.P8288306535933520082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067979 (A038722 (n + 1) - 1).toNat

end

end A067990.P8288306535933520082

/-! ## A067990.P7631900272793719448

`A067979(A185869(n+1)-A016789(n))`
-/

namespace A067990.P7631900272793719448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067979 (A185869 (n + 1) - A016789 n).toNat

end

end A067990.P7631900272793719448

/-! ## A067990.P6124331178925408231

`A067979(A002378(n)%A014132(n+1))`
-/

namespace A067990.P6124331178925408231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067979 (Int.tmod (A002378 n) (A014132 (n + 1))).toNat

end

end A067990.P6124331178925408231

/-! ## A067990.P11712537776379814565

`A067979(A185869(n+1)%A016789(n))`
-/

namespace A067990.P11712537776379814565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067979 (Int.tmod (A185869 (n + 1)) (A016789 n)).toNat

end

end A067990.P11712537776379814565

/-! ## A067990.P10241302156062465413

`A067979(A004736(n+1)+A057944(n)-1)`
-/

namespace A067990.P10241302156062465413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067979 (A004736 (n + 1) + (A057944 n - 1)).toNat

end

end A067990.P10241302156062465413

/-! ## A067990.P12552531736517806425

`A067979(A127739(n+1)-A002260(n+1))`
-/

namespace A067990.P12552531736517806425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067979 (A127739 (n + 1) - A002260 (n + 1)).toNat

end

end A067990.P12552531736517806425

/-!
# A067991: a(n) = k such that the k-th triangular number is A068808(n).

The programs for A067991, there is no canonical definition to state claims against.
-/

/-! ## A067991.P18179513403444175284

`(sqrt(1+8*A068808(n+1))-1)/2`
-/

namespace A067991.P18179513403444175284
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Real.sqrt (1 + 8 * A068808 (n + 1) : ℝ) - 1) / 2

end

end A067991.P18179513403444175284

/-! ## A067991.P14900270179255184077

`floor(sqrt(2*A068808(n+1)))`
-/

namespace A067991.P14900270179255184077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (2 * A068808 (n + 1))

end

end A067991.P14900270179255184077

/-! ## A067991.P10826557059317936829

`round(sqrt(2*A068808(n+1)))%A000051(n)`
-/

namespace A067991.P10826557059317936829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (Real.sqrt (2 * A068808 (n + 1) : ℝ))) (A000051 n)

end

end A067991.P10826557059317936829

/-! ## A067991.P4747772023659665021

`round(A000007(n+1)+sqrt(2*A068808(n+1)))`
-/

namespace A067991.P4747772023659665021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A000007 (n + 1) : ℝ) + Real.sqrt (2 * A068808 (n + 1) : ℝ))

end

end A067991.P4747772023659665021

/-! ## A067991.P10146664941908305239

`ceil(sqrt(2*A068808(n+1))-A255047(n)%2)`
-/

namespace A067991.P10146664941908305239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (2 * A068808 (n + 1) : ℝ) - (Int.tmod (A255047 n) 2 : ℝ)⌉

end

end A067991.P10146664941908305239

/-!
# A067994: Hermite numbers.

The programs for A067994, the canonical program `A067994.P15225735328066793155` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A067994 has offset 0).

The definition of A067994 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A067994.P15225735328066793155

`A057077(n)*A126869(n)*A081123(n)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A067994

/-- `A057077(n)*A126869(n)*A081123(n)` -/
def P15225735328066793155.Spec : Prop :=
  ∀ n, P15225735328066793155.a n = A067994 n

theorem P15225735328066793155.correct : P15225735328066793155.Spec := by
  intro n
  simp only [A067994]

end A067994

/-! ## A067994.P6814754981381686846

`(1-n)*2*a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A067994.P6814754981381686846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  (1 - (n : ℤ)) * (2 * a (n - 2))

end

end A067994.P6814754981381686846

namespace A067994

/-- `(1-n)*2*a(n-2)` -/
def P6814754981381686846.Spec : Prop :=
  ∀ n, P6814754981381686846.a n = A067994 n

end A067994

/-! ## A067994.P7278314604002175294

`(A165747(n)+1)*a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A067994.P7278314604002175294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  (A165747 n + 1) * a (n - 2)

end

end A067994.P7278314604002175294

namespace A067994

/-- `(A165747(n)+1)*a(n-2)` -/
def P7278314604002175294.Spec : Prop :=
  ∀ n, P7278314604002175294.a n = A067994 n

end A067994

/-! ## A067994.P7204392637811645028

`(1-A004273(n))*a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A067994.P7204392637811645028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  (1 - A004273 n) * a (n - 2)

end

end A067994.P7204392637811645028

namespace A067994

/-- `(1-A004273(n))*a(n-2)` -/
def P7204392637811645028.Spec : Prop :=
  ∀ n, P7204392637811645028.a n = A067994 n

end A067994

/-! ## A067994.P6698441344641963758

`(1-A053438(n))*a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A067994.P6698441344641963758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  (1 - A053438 n) * a (n - 2)

end

end A067994.P6698441344641963758

namespace A067994

/-- `(1-A053438(n))*a(n-2)` -/
def P6698441344641963758.Spec : Prop :=
  ∀ n, P6698441344641963758.a n = A067994 n

end A067994

/-! ## A067994.P3210879342003318644

`(2-A005843(n))*a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A067994.P3210879342003318644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  (2 - A005843 n) * a (n - 2)

end

end A067994.P3210879342003318644

namespace A067994

/-- `(2-A005843(n))*a(n-2)` -/
def P3210879342003318644.Spec : Prop :=
  ∀ n, P3210879342003318644.a n = A067994 n

end A067994

/-! ## A067994.P10599699289176257697

`and(1, n+1)*A127137(and(n, n+1))`
-/

namespace A067994.P10599699289176257697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.land 1 (n + 1) : ℤ) * A127137 (Nat.land n (n + 1))

end

end A067994.P10599699289176257697

namespace A067994

/-- `and(1, n+1)*A127137(and(n, n+1))` -/
def P10599699289176257697.Spec : Prop :=
  ∀ n, P10599699289176257697.a n = A067994 n

end A067994

/-! ## A067994.P15939413782700875688

`A055634(n)*A077966(n)`
-/

namespace A067994.P15939413782700875688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055634 n * A077966 n

end

end A067994.P15939413782700875688

namespace A067994

/-- `A055634(n)*A077966(n)` -/
def P15939413782700875688.Spec : Prop :=
  ∀ n, P15939413782700875688.a n = A067994 n

end A067994

/-! ## A067994.P1258849175659694113

`A077966(n)*A123023(n)`
-/

namespace A067994.P1258849175659694113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077966 n * A123023 n

end

end A067994.P1258849175659694113

namespace A067994

/-- `A077966(n)*A123023(n)` -/
def P1258849175659694113.Spec : Prop :=
  ∀ n, P1258849175659694113.a n = A067994 n

end A067994

/-! ## A067994.P5979074584600361682

`A077957(n)*A127138(n)`
-/

namespace A067994.P5979074584600361682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077957 n * A127138 n

end

end A067994.P5979074584600361682

namespace A067994

/-- `A077957(n)*A127138(n)` -/
def P5979074584600361682.Spec : Prop :=
  ∀ n, P5979074584600361682.a n = A067994 n

end A067994

/-! ## A067994.P3532810227987813094

`A077966(n)*A133221(n)`
-/

namespace A067994.P3532810227987813094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077966 n * A133221 n

end

end A067994.P3532810227987813094

namespace A067994

/-- `A077966(n)*A133221(n)` -/
def P3532810227987813094.Spec : Prop :=
  ∀ n, P3532810227987813094.a n = A067994 n

end A067994

/-! ## A067994.P11465316749132404181

`A056594(n)*A205825(n)`
-/

namespace A067994.P11465316749132404181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 n * A205825 n

end

end A067994.P11465316749132404181

namespace A067994

/-- `A056594(n)*A205825(n)` -/
def P11465316749132404181.Spec : Prop :=
  ∀ n, P11465316749132404181.a n = A067994 n

end A067994

/-! ## A067994.P1265650232296146590

`A077966(n)*A275521(n)`
-/

namespace A067994.P1265650232296146590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077966 n * A275521 n

end

end A067994.P1265650232296146590

namespace A067994

/-- `A077966(n)*A275521(n)` -/
def P1265650232296146590.Spec : Prop :=
  ∀ n, P1265650232296146590.a n = A067994 n

end A067994

/-! ## A067994.P13941418270519522311

`∑[A110511(∑[n])]*A127137(n)`
-/

namespace A067994.P13941418270519522311
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110511 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A127137 n

end

end A067994.P13941418270519522311

namespace A067994

/-- `∑[A110511(∑[n])]*A127137(n)` -/
def P13941418270519522311.Spec : Prop :=
  ∀ n, P13941418270519522311.a n = A067994 n

end A067994

/-! ## A067994.P8463849272286940522

`A067613(A000096(n))*A067613(A000217(n))`
-/

namespace A067994.P8463849272286940522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067613 (A000096 n).toNat * A067613 (A000217 n).toNat

end

end A067994.P8463849272286940522

namespace A067994

/-- `A067613(A000096(n))*A067613(A000217(n))` -/
def P8463849272286940522.Spec : Prop :=
  ∀ n, P8463849272286940522.a n = A067994 n

end A067994

/-! ## A067994.P10452432011459688355

`A057077(n)*A067147(A000217(n))`
-/

namespace A067994.P10452432011459688355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 n * A067147 (A000217 n).toNat

end

end A067994.P10452432011459688355

namespace A067994

/-- `A057077(n)*A067147(A000217(n))` -/
def P10452432011459688355.Spec : Prop :=
  ∀ n, P10452432011459688355.a n = A067994 n

end A067994

/-! ## A067994.P2318498191011672656

`A112227(∑[n])`
-/

namespace A067994.P2318498191011672656
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112227 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A067994.P2318498191011672656

namespace A067994

/-- `A112227(∑[n])` -/
def P2318498191011672656.Spec : Prop :=
  ∀ n, P2318498191011672656.a n = A067994 n

end A067994

/-! ## A067994.P4845641105732110367

`A060821(∑[n])`
-/

namespace A067994.P4845641105732110367
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060821 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A067994.P4845641105732110367

namespace A067994

/-- `A060821(∑[n])` -/
def P4845641105732110367.Spec : Prop :=
  ∀ n, P4845641105732110367.a n = A067994 n

end A067994

/-! ## A067994.P2463480188018674395

`A000035(n+1)*A127080(A000096(n))`
-/

namespace A067994.P2463480188018674395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (n + 1) * A127080 (A000096 n).toNat

end

end A067994.P2463480188018674395

namespace A067994

/-- `A000035(n+1)*A127080(A000096(n))` -/
def P2463480188018674395.Spec : Prop :=
  ∀ n, P2463480188018674395.a n = A067994 n

end A067994

/-! ## A067994.P3441156167571467285

`(1-A000035(n))*A127080(A000096(n))`
-/

namespace A067994.P3441156167571467285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A000035 n) * A127080 (A000096 n).toNat

end

end A067994.P3441156167571467285

namespace A067994

/-- `(1-A000035(n))*A127080(A000096(n))` -/
def P3441156167571467285.Spec : Prop :=
  ∀ n, P3441156167571467285.a n = A067994 n

end A067994

/-!
# A067995: Minimal number of coins needed to pay exactly n cents using coins of sizes 1, 2, 3, 5, 10, 20, 25, 50, 100 cents (all historical U.S.A. coinage from 1 to 100 cents).

The programs for A067995, there is no canonical definition to state claims against.
-/

/-! ## A067995.P9653288225349623254

`A090501(A006968(2*(n+1))%A090514(n+1))`
-/

namespace A067995.P9653288225349623254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090501 (Int.tmod (A006968 (2 * (n + 1))) (A090514 (n + 1))).toNat

end

end A067995.P9653288225349623254

/-! ## A067995.P17310430631620099471

`ceil(A006968(2*n+2)%A056011(A093999(2*n+3))/2)`
-/

namespace A067995.P17310430631620099471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Int.tmod (A006968 (2 * n + 2)) (A056011 (A093999 (2 * n + 3)).toNat) : ℚ) / 2⌉

end

end A067995.P17310430631620099471

/-! ## A067995.P11761825378173629101

`A001222(∑{digits}[A179309(2*n+3), #])`
-/

namespace A067995.P11761825378173629101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179309 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A067995.P11761825378173629101

/-! ## A067995.P14406843306772621824

`A000120(A057354(2*n+3)%A099969(n))`
-/

namespace A067995.P14406843306772621824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (Int.tmod (A057354 (2 * n + 3)) (A099969 n)).toNat

end

end A067995.P14406843306772621824

/-! ## A067995.P18412475572496445170

`A302790(A317306(n+2))`
-/

namespace A067995.P18412475572496445170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302790 (A317306 (n + 2)).toNat

end

end A067995.P18412475572496445170

/-!
# A067996: Number of ways of making change for n cents using coins of 1, 2, 3, 5, 10, 20, 25, 50, 100 cents (all historical U.S.A. coinage from 1 to 100 cents).

The programs for A067996, there is no canonical definition to state claims against.
-/

/-! ## A067996.P9730060227844070116

`∑[A185284(A004274(n))+A029147(n)]`
-/

namespace A067996.P9730060227844070116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (A004274 n).toNat + A029147 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A067996.P9730060227844070116

/-! ## A067996.P5834116841997503689

`A118759(A020702(n))`
-/

namespace A067996.P5834116841997503689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (A020702 n).toNat

end

end A067996.P5834116841997503689

/-! ## A067996.P4394116621700678460

`A000188(A020702(n)²)`
-/

namespace A067996.P4394116621700678460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (A020702 n ^ 2).toNat

end

end A067996.P4394116621700678460

/-! ## A067996.P6429065546809900876

`A118759(∑[A029147(n)])`
-/

namespace A067996.P6429065546809900876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029147 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A067996.P6429065546809900876

/-! ## A067996.P1886844727209269463

`filter[A020702(n), A102609(#)]`
-/

namespace A067996.P1886844727209269463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020702 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A102609 (f1 j).toNat = 1) n)

end

end A067996.P1886844727209269463

/-!
# A067997: Number of (unordered) ways of making change for n cents using coins of 1/2, 1, 2, 3, 5, 10, 20, 25, 50, 100 cents (all historical U.S.A. coinage denominations up to 100 cents).

The programs for A067997, there is no canonical definition to state claims against.
-/

/-! ## A067997.P4677707413089859975

`∑[A067996(n)]`
-/

namespace A067997.P4677707413089859975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067996 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A067997.P4677707413089859975

/-! ## A067997.P4640578858249239583

`∑[A118759(A020702(n))]`
-/

namespace A067997.P4640578858249239583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (A020702 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A067997.P4640578858249239583

/-! ## A067997.P1368550044738033616

`∑[A000188(A020702(n)²)]`
-/

namespace A067997.P1368550044738033616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (A020702 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A067997.P1368550044738033616

/-! ## A067997.P7791502226191184598

`∑[A118759(∑[A029147(n)])]`
-/

namespace A067997.P7791502226191184598
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029147 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A067997.P7791502226191184598

/-! ## A067997.P3427054998142117828

`∑[A070824(A000043(n+3))+A020702(n)]`
-/

namespace A067997.P3427054998142117828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070824 (A000043 (n + 3)).toNat + A020702 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A067997.P3427054998142117828

/-!
# A067998: a(n) = n^2 - 2*n.

The programs for A067998, the canonical program `A067998.P12062298001294777272` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A067998 has offset 0).

The definition of A067998 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n²-2*n` (program `A067998.P12062298001294777272`, by `A067998.P12062298001294777272.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A067998.P3260564987863254530

`n*(n-2)`
-/

namespace A067998.P3260564987863254530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ((n : ℤ) - 2)

end

end A067998.P3260564987863254530

namespace A067998

/-- `n*(n-2)` -/
def P3260564987863254530.Spec : Prop :=
  ∀ n, P3260564987863254530.a n = A067998 n

theorem P3260564987863254530.correct : P3260564987863254530.Spec := by
  intro n
  simp only [A067998, Nat.add_sub_cancel, A067998.P3260564987863254530.a, A067998.P12062298001294777272.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A067998

/-! ## A067998.P12062298001294777272

`n²-2*n`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A067998

/-- `n²-2*n` -/
def P12062298001294777272.Spec : Prop :=
  ∀ n, P12062298001294777272.a n = A067998 n

theorem P12062298001294777272.correct : P12062298001294777272.Spec := by
  intro n
  simp only [A067998]

end A067998

/-!
# A067999: Numbers k such that (k! - 1) == 0 (mod prime(k)).

The programs for A067999, there is no canonical definition to state claims against.
-/

/-! ## A067999.P6028079289286236267

`A143344(A041727(n+1))`
-/

namespace A067999.P6028079289286236267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143344 (A041727 (n + 1)).toNat

end

end A067999.P6028079289286236267

