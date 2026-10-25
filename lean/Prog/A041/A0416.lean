import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C010
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C004
import Seq.B002.C000
import Seq.B003.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B013.C000
import Seq.Opaque.C000
import Seq.Opaque.C001
import Seq.Opaque.C002
import Seq.Opaque.C004
import Seq.Opaque.C007
import Seq.Opaque.C008
import Seq.Opaque.C012
import Seq.Opaque.C013
import Seq.Opaque.C014
import Seq.Opaque.C016
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A041600: Numerators of continued fraction convergents to sqrt(318).

The programs for A041600, there is no canonical definition to state claims against.
-/

/-! ## A041600.P3264646653087207529

`A004525(A041604(n)+A041588(n))`
-/

namespace A041600.P3264646653087207529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A041604 n + A041588 n).toNat

end

end A041600.P3264646653087207529

/-!
# A041601: Denominators of continued fraction convergents to sqrt(318).

The programs for A041601, there is no canonical definition to state claims against.
-/

/-! ## A041601.P1716403316599933351

`A001281(A042721(n)+A041057(n))`
-/

namespace A041601.P1716403316599933351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A042721 n + A041057 n).toNat

end

end A041601.P1716403316599933351

/-! ## A041601.P18021231891113832225

`A004525(A042089(n)+A041257(n))`
-/

namespace A041601.P18021231891113832225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A042089 n + A041257 n).toNat

end

end A041601.P18021231891113832225

/-! ## A041601.P16083981285614677168

`A004526(A042089(n)+A041257(n))`
-/

namespace A041601.P16083981285614677168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A042089 n + A041257 n).toNat

end

end A041601.P16083981285614677168

/-!
# A041603: Denominators of continued fraction convergents to sqrt(319).

The programs for A041603, there is no canonical definition to state claims against.
-/

/-! ## A041603.P7364511345833668324

`A117679(A117662(n+4))%A117699(n+1)`
-/

namespace A041603.P7364511345833668324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A117679 (A117662 (n + 4)).toNat) (A117699 (n + 1))

end

end A041603.P7364511345833668324

/-!
# A041604: Numerators of continued fraction convergents to sqrt(320).

The programs for A041604, there is no canonical definition to state claims against.
-/

/-! ## A041604.P5899190083703461264

`A014682(A041606(n)+A041600(n))`
-/

namespace A041604.P5899190083703461264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A041606 n + A041600 n).toNat

end

end A041604.P5899190083703461264

/-!
# A041605: Denominators of continued fraction convergents to sqrt(320).

The programs for A041605, there is no canonical definition to state claims against.
-/

/-! ## A041605.P7456746054579600594

`A140106(A041609(n))+1`
-/

namespace A041605.P7456746054579600594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140106 (A041609 n).toNat + 1

end

end A041605.P7456746054579600594

/-!
# A041606: Numerators of continued fraction convergents to sqrt(321).

The programs for A041606, there is no canonical definition to state claims against.
-/

/-! ## A041606.P4849585096696266324

`A014682(A041608(n)+A041600(n))`
-/

namespace A041606.P4849585096696266324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A041608 n + A041600 n).toNat

end

end A041606.P4849585096696266324

/-!
# A041607: Denominators of continued fraction convergents to sqrt(321).

The programs for A041607, there is no canonical definition to state claims against.
-/

/-! ## A041607.P13143568420957792942

`A004396(A041609(n))`
-/

namespace A041607.P13143568420957792942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A041609 n).toNat

end

end A041607.P13143568420957792942

/-!
# A041608: Numerators of continued fraction convergents to sqrt(322).

The programs for A041608, there is no canonical definition to state claims against.
-/

/-! ## A041608.P17119507182098128789

`A004277(A041606(n))-A041600(n)`
-/

namespace A041608.P17119507182098128789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A041606 n).toNat - A041600 n

end

end A041608.P17119507182098128789

/-!
# A041609: Denominators of continued fraction convergents to sqrt(322).

The programs for A041609, there is no canonical definition to state claims against.
-/

/-! ## A041609.P5661991667691288139

`A004525(A041611(n))`
-/

namespace A041609.P5661991667691288139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A041611 n).toNat

end

end A041609.P5661991667691288139

/-!
# A041610: Numerators of continued fraction convergents to sqrt(323).

The programs for A041610, the canonical program `A041610.P13061963782394387766` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A041610 has offset 0).

The definition of A041610 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 127 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A041610.P13061963782394387766

`∪[A322889(n+1), Δ[A322889(n)]]`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A041610

/-- `∪[A322889(n+1), Δ[A322889(n)]]` -/
def P13061963782394387766.Spec : Prop :=
  ∀ n, (P13061963782394387766.a n : ℤ) = A041610 n

theorem P13061963782394387766.correct : P13061963782394387766.Spec := by
  intro n
  simp only [A041610]

end A041610

/-!
# A041611: Denominators of continued fraction convergents to sqrt(323).

The programs for A041611, the canonical program `A041611.P12058786132409492038` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A041611 has offset 0).

The definition of A041611 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A041611.P12058786132409492038

`36*a(n-2)-a(n-4)` with `a(0)=1, a(1)=1, a(2)=35, a(3)=36`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A041611

/-- `36*a(n-2)-a(n-4)` -/
def P12058786132409492038.Spec : Prop :=
  ∀ n, P12058786132409492038.a n = A041611 n

theorem P12058786132409492038.correct : P12058786132409492038.Spec := by
  intro n
  simp only [A041611]

end A041611

/-!
# A041612: Numerators of continued fraction convergents to sqrt(325).

The programs for A041612, the canonical program `A041612.P6957339945434818278` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A041612 has offset 0).

The definition of A041612 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A041612.P6957339945434818278

`36*a(n-1)+a(n-2)` with `a(0)=18, a(1)=649`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A041612

/-- `36*a(n-1)+a(n-2)` -/
def P6957339945434818278.Spec : Prop :=
  ∀ n, (P6957339945434818278.a n : ℤ) = A041612 n

theorem P6957339945434818278.correct : P6957339945434818278.Spec := by
  intro n
  simp only [A041612]

end A041612

/-! ## A041612.P2437649181644258387

`((18+5*sqrt(13))^(n+1)+(18-5*sqrt(13))^(n+1))/2`
-/

namespace A041612.P2437649181644258387
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((18 + 5 * Real.sqrt (13 : ℝ)) ^ (n + 1) + (18 - 5 * Real.sqrt (13 : ℝ)) ^ (n + 1)) / 2

end

end A041612.P2437649181644258387

namespace A041612

/-- `((18+5*sqrt(13))^(n+1)+(18-5*sqrt(13))^(n+1))/2` -/
def P2437649181644258387.Spec : Prop :=
  ∀ n, P2437649181644258387.a n = (A041612 n : ℝ)

theorem P2437649181644258387.correct : P2437649181644258387.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A041612, Nat.add_sub_cancel, A041612.P2437649181644258387.a, A041612.P6957339945434818278.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A041612, Nat.add_sub_cancel, A041612.P2437649181644258387.a, A041612.P6957339945434818278.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A041612

/-! ## A041612.P13546490986765677038

`A041018(5*n+4)`
-/

namespace A041612.P13546490986765677038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041018 (5 * n + 4)

end

end A041612.P13546490986765677038

namespace A041612

/-- `A041018(5*n+4)` -/
def P13546490986765677038.Spec : Prop :=
  ∀ n, P13546490986765677038.a n = A041612 n

end A041612

/-! ## A041612.P10537398867697229270

`lcm(A033999(n), A041018(A016897(n)))`
-/

namespace A041612.P10537398867697229270
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A041018 (A016897 n).toNat)

end

end A041612.P10537398867697229270

namespace A041612

/-- `lcm(A033999(n), A041018(A016897(n)))` -/
def P10537398867697229270.Spec : Prop :=
  ∀ n, (P10537398867697229270.a n : ℤ) = A041612 n

end A041612

/-! ## A041612.P6666279221759641523

`A019425(A051890(n))*A041018(A016897(n))`
-/

namespace A041612.P6666279221759641523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019425 (A051890 n).toNat * A041018 (A016897 n).toNat

end

end A041612.P6666279221759641523

namespace A041612

/-- `A019425(A051890(n))*A041018(A016897(n))` -/
def P6666279221759641523.Spec : Prop :=
  ∀ n, P6666279221759641523.a n = A041612 n

end A041612

/-!
# A041613: Denominators of continued fraction convergents to sqrt(325).

The programs for A041613, the canonical program `A041613.P2403638931395594304` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A041613 has offset 0).

The definition of A041613 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A041613.P2403638931395594304

`36*a(n-1)+a(n-2)` with `a(0)=1, a(1)=36`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A041613

/-- `36*a(n-1)+a(n-2)` -/
def P2403638931395594304.Spec : Prop :=
  ∀ n, (P2403638931395594304.a n : ℤ) = A041613 n

theorem P2403638931395594304.correct : P2403638931395594304.Spec := by
  intro n
  simp only [A041613]

end A041613

/-! ## A041613.P14803980863484088100

`ogf(1/(1-36x-x^2))`
-/

namespace A041613.P14803980863484088100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -36, -1] n

end

end A041613.P14803980863484088100

namespace A041613

/-- `ogf(1/(1-36x-x^2))` -/
def P14803980863484088100.Spec : Prop :=
  ∀ n, P14803980863484088100.a n = A041613 n

end A041613

/-! ## A041613.P11374012684978070105

`A006191(3*(n+1))/5`
-/

namespace A041613.P11374012684978070105
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006191 (3 * (n + 1)) : ℚ) / 5

end

end A041613.P11374012684978070105

namespace A041613

/-- `A006191(3*(n+1))/5` -/
def P11374012684978070105.Spec : Prop :=
  ∀ n, P11374012684978070105.a n = (A041613 n : ℚ)

end A041613

/-! ## A041613.P11480980968767382156

`A006190(3*(n+1))/10`
-/

namespace A041613.P11480980968767382156
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006190 (3 * (n + 1)) : ℚ) / 10

end

end A041613.P11480980968767382156

namespace A041613

/-- `A006190(3*(n+1))/10` -/
def P11480980968767382156.Spec : Prop :=
  ∀ n, P11480980968767382156.a n = (A041613 n : ℚ)

end A041613

/-! ## A041613.P3966970845776417533

`∑[A108300(A016777(n))/5]`
-/

namespace A041613.P3966970845776417533
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A108300 (A016777 n).toNat : ℚ) / 5

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A041613.P3966970845776417533

namespace A041613

/-- `∑[A108300(A016777(n))/5]` -/
def P3966970845776417533.Spec : Prop :=
  ∀ n, P3966970845776417533.a n = (A041613 n : ℚ)

end A041613

/-!
# A041618: Numerators of continued fraction convergents to sqrt(328).

The programs for A041618, there is no canonical definition to state claims against.
-/

/-! ## A041618.P16006953335376158950

`gcd(2, n)*A041144(n)`
-/

namespace A041618.P16006953335376158950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 2 n : ℤ) * A041144 n

end

end A041618.P16006953335376158950

/-! ## A041618.P11114694111479140291

`Δ[A007494(n)]*A041144(n)`
-/

namespace A041618.P11114694111479140291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007494 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A041144 n

end

end A041618.P11114694111479140291

/-! ## A041618.P9163668746449176032

`A000034(n+1)*A041144(n)`
-/

namespace A041618.P9163668746449176032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (n + 1) * A041144 n

end

end A041618.P9163668746449176032

/-! ## A041618.P6622631520783736600

`2/A000034(n)*A041144(n)`
-/

namespace A041618.P6622631520783736600
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (A000034 n : ℚ) * (A041144 n : ℚ)

end

end A041618.P6622631520783736600

/-! ## A041618.P11897660383016824987

`Δ[A032766(n+1)]*A041144(n)`
-/

namespace A041618.P11897660383016824987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A041144 n

end

end A041618.P11897660383016824987

/-! ## A041618.P16543898383494652063

`ratio[A016116(n+1)]*A041144(n)`
-/

namespace A041618.P16543898383494652063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ) * (A041144 n : ℚ)

end

end A041618.P16543898383494652063

/-! ## A041618.P17333084676513722757

`2/Δ[A032766(n)]*A041144(n)`
-/

namespace A041618.P17333084676513722757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (f1 (n + 1) - f1 n : ℚ) * (A041144 n : ℚ)

end

end A041618.P17333084676513722757

/-! ## A041618.P15990302120937383393

`2/ratio[A016116(n)]*A041144(n)`
-/

namespace A041618.P15990302120937383393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / ((f1 (n + 1) : ℚ) / (f1 n : ℚ)) * (A041144 n : ℚ)

end

end A041618.P15990302120937383393

/-! ## A041618.P6802213840461935160

`lcm(A000034(A004442(n)), A041144(n))`
-/

namespace A041618.P6802213840461935160
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000034 (A004442 n).toNat) (A041144 n)

end

end A041618.P6802213840461935160

/-!
# A041619: Denominators of continued fraction convergents to sqrt(328).

The programs for A041619, there is no canonical definition to state claims against.
-/

/-! ## A041619.P15196977960058596526

`lcm(2, A041145(n))/2`
-/

namespace A041619.P15196977960058596526
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A041145 n) : ℚ) / 2

end

end A041619.P15196977960058596526

/-! ## A041619.P13217172575346593974

`A041145(n)/A000034(n)`
-/

namespace A041619.P13217172575346593974
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041145 n : ℚ) / (A000034 n : ℚ)

end

end A041619.P13217172575346593974

/-! ## A041619.P14354443546420954661

`A041145(n)/A108300(n)%3`
-/

namespace A041619.P14354443546420954661
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041145 n : ℚ) / (Int.tmod (A108300 n) 3 : ℚ)

end

end A041619.P14354443546420954661

/-! ## A041619.P10953973101854040509

`abs(A041145(n)/(2-A010685(n)))`
-/

namespace A041619.P10953973101854040509
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A041145 n : ℚ) / (2 - A010685 n : ℚ)|

end

end A041619.P10953973101854040509

/-! ## A041619.P6001953386515418716

`A041145(n)/gcd(gcd(2, n+1), A209446(n))`
-/

namespace A041619.P6001953386515418716
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041145 n : ℚ) / (Int.gcd (Nat.gcd 2 (n + 1) : ℤ) (A209446 n) : ℚ)

end

end A041619.P6001953386515418716

/-! ## A041619.P2674268257339227205

`A041145(n)/A041085(n)*A041371(n)`
-/

namespace A041619.P2674268257339227205
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041145 n : ℚ) / (A041085 n : ℚ) * (A041371 n : ℚ)

end

end A041619.P2674268257339227205

/-!
# A041628: Numerators of continued fraction convergents to sqrt(333).

The programs for A041628, there is no canonical definition to state claims against.
-/

/-! ## A041628.P1808482744735817795

`(A033999(n)+2)*A041060(n)`
-/

namespace A041628.P1808482744735817795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A033999 n + 2) * A041060 n

end

end A041628.P1808482744735817795

/-! ## A041628.P14536125410862751219

`(3-A010673(n))*A041060(n)`
-/

namespace A041628.P14536125410862751219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 - A010673 n) * A041060 n

end

end A041628.P14536125410862751219

/-! ## A041628.P5918738579422632015

`lcm(2, A042134(n))-A041060(n)`
-/

namespace A041628.P5918738579422632015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A042134 n) : ℤ) - A041060 n

end

end A041628.P5918738579422632015

/-! ## A041628.P4955353928426905442

`A010127(n²+2)*A041060(n)`
-/

namespace A041628.P4955353928426905442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010127 (n ^ 2 + 2) * A041060 n

end

end A041628.P4955353928426905442

/-! ## A041628.P18328745398002372289

`A003324(A020742(n))*A041060(n)`
-/

namespace A041628.P18328745398002372289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003324 (A020742 n).toNat * A041060 n

end

end A041628.P18328745398002372289

/-! ## A041628.P10658519769598994176

`A000034(n)*A042134(n)-A041060(n)`
-/

namespace A041628.P10658519769598994176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n * A042134 n - A041060 n

end

end A041628.P10658519769598994176

/-!
# A041629: Denominators of continued fraction convergents to sqrt(333).

The programs for A041629, the canonical program `A041629.P5327938912499404061` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A041629 has offset 0).

The definition of A041629 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A041629.P5327938912499404061

`146*a(n-2)-a(n-4)` with `a(0)=1, a(1)=4, a(2)=145, a(3)=584`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A041629

/-- `146*a(n-2)-a(n-4)` -/
def P5327938912499404061.Spec : Prop :=
  ∀ n, P5327938912499404061.a n = A041629 n

theorem P5327938912499404061.correct : P5327938912499404061.Spec := by
  intro n
  simp only [A041629]

end A041629

/-! ## A041629.P17245361478039315616

`A041061(n)/A010684(n)`
-/

namespace A041629.P17245361478039315616
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041061 n : ℚ) / (A010684 n : ℚ)

end

end A041629.P17245361478039315616

namespace A041629

/-- `A041061(n)/A010684(n)` -/
def P17245361478039315616.Spec : Prop :=
  ∀ n, P17245361478039315616.a n = (A041629 n : ℚ)

end A041629

/-! ## A041629.P15694875092828344522

`A041061(n)/Δ[A042948(n)]`
-/

namespace A041629.P15694875092828344522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042948 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041061 n : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A041629.P15694875092828344522

namespace A041629

/-- `A041061(n)/Δ[A042948(n)]` -/
def P15694875092828344522.Spec : Prop :=
  ∀ n, P15694875092828344522.a n = (A041629 n : ℚ)

end A041629

/-! ## A041629.P18354879026637647703

`A041061(n)/(A010673(n)+1)`
-/

namespace A041629.P18354879026637647703
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041061 n : ℚ) / (A010673 n + 1 : ℚ)

end

end A041629.P18354879026637647703

namespace A041629

/-- `A041061(n)/(A010673(n)+1)` -/
def P18354879026637647703.Spec : Prop :=
  ∀ n, P18354879026637647703.a n = (A041629 n : ℚ)

end A041629

/-! ## A041629.P17561499109663163487

`A041061(n)/gcd(3, A001541(n))`
-/

namespace A041629.P17561499109663163487
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041061 n : ℚ) / (Int.gcd 3 (A001541 n) : ℚ)

end

end A041629.P17561499109663163487

namespace A041629

/-- `A041061(n)/gcd(3, A001541(n))` -/
def P17561499109663163487.Spec : Prop :=
  ∀ n, P17561499109663163487.a n = (A041629 n : ℚ)

end A041629

/-! ## A041629.P2871363754730923854

`A041061(n)/A003324(2*n+1)`
-/

namespace A041629.P2871363754730923854
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041061 n : ℚ) / (A003324 (2 * n + 1) : ℚ)

end

end A041629.P2871363754730923854

namespace A041629

/-- `A041061(n)/A003324(2*n+1)` -/
def P2871363754730923854.Spec : Prop :=
  ∀ n, P2871363754730923854.a n = (A041629 n : ℚ)

end A041629

/-! ## A041629.P5479849726032405247

`A041061(n)/A010127(A002522(n))`
-/

namespace A041629.P5479849726032405247
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041061 n : ℚ) / (A010127 (A002522 n).toNat : ℚ)

end

end A041629.P5479849726032405247

namespace A041629

/-- `A041061(n)/A010127(A002522(n))` -/
def P5479849726032405247.Spec : Prop :=
  ∀ n, P5479849726032405247.a n = (A041629 n : ℚ)

end A041629

/-! ## A041629.P14533076081341631968

`A041061(n)/(A000035(n)+A000034(n))`
-/

namespace A041629.P14533076081341631968
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041061 n : ℚ) / (A000035 n + A000034 n : ℚ)

end

end A041629.P14533076081341631968

namespace A041629

/-- `A041061(n)/(A000035(n)+A000034(n))` -/
def P14533076081341631968.Spec : Prop :=
  ∀ n, P14533076081341631968.a n = (A041629 n : ℚ)

end A041629

/-!
# A041631: Denominators of continued fraction convergents to sqrt(334).

The programs for A041631, there is no canonical definition to state claims against.
-/

/-! ## A041631.P15131062487768508332

`a(n-2)+a(n-1)*A216338(a(n-1))` with `a(0)=1, a(1)=3`
-/

namespace A041631.P15131062487768508332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  a (n - 2) + a (n - 1) * A216338 (a (n - 1)).toNat

end

end A041631.P15131062487768508332

/-! ## A041631.P6852485406760106219

`A005496(ceil(sqrt(A060995(n+1))))`
-/

namespace A041631.P6852485406760106219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005496 ⌈Real.sqrt (A060995 (n + 1) : ℝ)⌉.toNat

end

end A041631.P6852485406760106219

/-!
# A041634: Numerators of continued fraction convergents to sqrt(336).

The programs for A041634, there is no canonical definition to state claims against.
-/

/-! ## A041634.P10523944708997864481

`gcd(2, n)*A041148(n)`
-/

namespace A041634.P10523944708997864481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 2 n : ℤ) * A041148 n

end

end A041634.P10523944708997864481

/-! ## A041634.P4360426933537961910

`Δ[A007494(n)]*A041148(n)`
-/

namespace A041634.P4360426933537961910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007494 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A041148 n

end

end A041634.P4360426933537961910

/-! ## A041634.P2269540432639742447

`A000034(n+1)*A041148(n)`
-/

namespace A041634.P2269540432639742447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (n + 1) * A041148 n

end

end A041634.P2269540432639742447

/-! ## A041634.P972238055290775531

`2/A000034(n)*A041148(n)`
-/

namespace A041634.P972238055290775531
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (A000034 n : ℚ) * (A041148 n : ℚ)

end

end A041634.P972238055290775531

/-! ## A041634.P12923590329274856191

`lcm(A000034(n+7), A041148(n))`
-/

namespace A041634.P12923590329274856191
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000034 (n + 7)) (A041148 n)

end

end A041634.P12923590329274856191

/-! ## A041634.P2006152273089610309

`(∑[A033999(n)]+1)*A041148(n)`
-/

namespace A041634.P2006152273089610309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j + 1) * A041148 n

end

end A041634.P2006152273089610309

/-! ## A041634.P881690460638483220

`Δ[A032766(n+1)]*A041148(n)`
-/

namespace A041634.P881690460638483220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A041148 n

end

end A041634.P881690460638483220

/-! ## A041634.P8476710473072548921

`(Δ[A110654(n)]+1)*A041148(n)`
-/

namespace A041634.P8476710473072548921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n + 1) * A041148 n

end

end A041634.P8476710473072548921

/-! ## A041634.P6427629363507177941

`2/Δ[A032766(n)]*A041148(n)`
-/

namespace A041634.P6427629363507177941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (f1 (n + 1) - f1 n : ℚ) * (A041148 n : ℚ)

end

end A041634.P6427629363507177941

/-!
# A041635: Denominators of continued fraction convergents to sqrt(336).

The programs for A041635, the canonical program `A041635.P1327258254238999232` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A041635 has offset 0).

The definition of A041635 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A041635.P1327258254238999232

`110*a(n-2)-a(n-4)` with `a(0)=1, a(1)=3, a(2)=109, a(3)=330`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A041635

/-- `110*a(n-2)-a(n-4)` -/
def P1327258254238999232.Spec : Prop :=
  ∀ n, P1327258254238999232.a n = A041635 n

theorem P1327258254238999232.correct : P1327258254238999232.Spec := by
  intro n
  simp only [A041635]

end A041635

/-! ## A041635.P16271108794479542408

`lcm(2, A041149(n))/2`
-/

namespace A041635.P16271108794479542408
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A041149 n) : ℚ) / 2

end

end A041635.P16271108794479542408

namespace A041635

/-- `lcm(2, A041149(n))/2` -/
def P16271108794479542408.Spec : Prop :=
  ∀ n, P16271108794479542408.a n = (A041635 n : ℚ)

end A041635

/-! ## A041635.P15335675596835285685

`A041149(n)/A000034(n)`
-/

namespace A041635.P15335675596835285685
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041149 n : ℚ) / (A000034 n : ℚ)

end

end A041635.P15335675596835285685

namespace A041635

/-- `A041149(n)/A000034(n)` -/
def P15335675596835285685.Spec : Prop :=
  ∀ n, P15335675596835285685.a n = (A041635 n : ℚ)

end A041635

/-! ## A041635.P17192172247556724663

`A041149(n)/∑[A165326(n)]`
-/

namespace A041635.P17192172247556724663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165326 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041149 n : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)

end

end A041635.P17192172247556724663

namespace A041635

/-- `A041149(n)/∑[A165326(n)]` -/
def P17192172247556724663.Spec : Prop :=
  ∀ n, P17192172247556724663.a n = (A041635 n : ℚ)

end A041635

/-! ## A041635.P41780315409003160

`A041149(n)/A001511(n²+1)`
-/

namespace A041635.P41780315409003160
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041149 n : ℚ) / (A001511 (n ^ 2 + 1) : ℚ)

end

end A041635.P41780315409003160

namespace A041635

/-- `A041149(n)/A001511(n²+1)` -/
def P41780315409003160.Spec : Prop :=
  ∀ n, P41780315409003160.a n = (A041635 n : ℚ)

end A041635

/-! ## A041635.P4794772947840589307

`A041149(n)/Δ[A001651(n+1)]`
-/

namespace A041635.P4794772947840589307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001651 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041149 n : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A041635.P4794772947840589307

namespace A041635

/-- `A041149(n)/Δ[A001651(n+1)]` -/
def P4794772947840589307.Spec : Prop :=
  ∀ n, P4794772947840589307.a n = (A041635 n : ℚ)

end A041635

/-!
# A041637: Denominators of continued fraction convergents to sqrt(337).

The programs for A041637, there is no canonical definition to state claims against.
-/

/-! ## A041637.P14227847003066529495

`A332667(A041387(n))`
-/

namespace A041637.P14227847003066529495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332667 (A041387 n).toNat

end

end A041637.P14227847003066529495

/-!
# A041639: Denominators of continued fraction convergents to sqrt(338).

The programs for A041639, there is no canonical definition to state claims against.
-/

/-! ## A041639.P10689231165082758388

`record[A227374(a(n-1)+2-val(n, 2))]` with `a(0)=1, a(1)=0`
-/

namespace A041639.P10689231165082758388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n f1 =>
  A227374 (f1 (n - 1) + (2 - (SequenceMachineLib.valuation n 2 : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A041639.P10689231165082758388

/-!
# A041641: Denominators of continued fraction convergents to sqrt(339).

The programs for A041641, there is no canonical definition to state claims against.
-/

/-! ## A041641.P3778982283841426062

`∑[A237270(A284605(n))]`
-/

namespace A041641.P3778982283841426062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237270 (A284605 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A041641.P3778982283841426062

/-!
# A041645: Denominators of continued fraction convergents to sqrt(341).

The programs for A041645, there is no canonical definition to state claims against.
-/

/-! ## A041645.P2333885707226067734

`A008651(A042054(n)+A001680(n))`
-/

namespace A041645.P2333885707226067734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008651 (A042054 n + A001680 n).toNat

end

end A041645.P2333885707226067734

/-!
# A041646: Numerators of continued fraction convergents to sqrt(342).

The programs for A041646, there is no canonical definition to state claims against.
-/

/-! ## A041646.P16955932284024004900

`Δ[A014601(n)]*A041062(n)`
-/

namespace A041646.P16955932284024004900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014601 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A041062 n

end

end A041646.P16955932284024004900

/-! ## A041646.P16652176369340322346

`(3-2*A000035(n))*A041062(n)`
-/

namespace A041646.P16652176369340322346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 - 2 * A000035 n) * A041062 n

end

end A041646.P16652176369340322346

/-! ## A041646.P7596973053101661230

`A004166(Δ[A004526(n+1)])*A041062(n)`
-/

namespace A041646.P7596973053101661230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004166 (f1 (n + 1) - f1 n).toNat * A041062 n

end

end A041646.P7596973053101661230

/-! ## A041646.P16866536576834328087

`A005408(Δ[A004526(n+1)])*A041062(n)`
-/

namespace A041646.P16866536576834328087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (f1 (n + 1) - f1 n).toNat * A041062 n

end

end A041646.P16866536576834328087

/-! ## A041646.P990816908746126642

`A041062(n)*A066006(Δ[A004526(n+1)])`
-/

namespace A041646.P990816908746126642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041062 n * A066006 (f1 (n + 1) - f1 n).toNat

end

end A041646.P990816908746126642

/-!
# A041647: Denominators of continued fraction convergents to sqrt(342).

The programs for A041647, the canonical program `A041647.P1136085924018804956` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A041647 has offset 0).

The definition of A041647 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A041647.P1136085924018804956

`74*a(n-2)-a(n-4)` with `a(0)=1, a(1)=2, a(2)=73, a(3)=148`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A041647

/-- `74*a(n-2)-a(n-4)` -/
def P1136085924018804956.Spec : Prop :=
  ∀ n, P1136085924018804956.a n = A041647 n

theorem P1136085924018804956.correct : P1136085924018804956.Spec := by
  intro n
  simp only [A041647]

end A041647

/-! ## A041647.P17998003607142194517

`A041063(n)/A005408(Δ[A004526(n)])`
-/

namespace A041647.P17998003607142194517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041063 n : ℚ) / (A005408 (f1 (n + 1) - f1 n).toNat : ℚ)

end

end A041647.P17998003607142194517

namespace A041647

/-- `A041063(n)/A005408(Δ[A004526(n)])` -/
def P17998003607142194517.Spec : Prop :=
  ∀ n, P17998003607142194517.a n = (A041647 n : ℚ)

end A041647

/-! ## A041647.P9217620247510761633

`A041063(n)/A022837(Δ[A008619(n)])`
-/

namespace A041647.P9217620247510761633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041063 n : ℚ) / (A022837 (f1 (n + 1) - f1 n).toNat : ℚ)

end

end A041647.P9217620247510761633

namespace A041647

/-- `A041063(n)/A022837(Δ[A008619(n)])` -/
def P9217620247510761633.Spec : Prop :=
  ∀ n, P9217620247510761633.a n = (A041647 n : ℚ)

end A041647

/-! ## A041647.P1829155656391358607

`A041063(n)/A000203(Δ[A032766(n)])`
-/

namespace A041647.P1829155656391358607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041063 n : ℚ) / (A000203 (f1 (n + 1) - f1 n).toNat : ℚ)

end

end A041647.P1829155656391358607

namespace A041647

/-- `A041063(n)/A000203(Δ[A032766(n)])` -/
def P1829155656391358607.Spec : Prop :=
  ∀ n, P1829155656391358607.a n = (A041647 n : ℚ)

end A041647

/-! ## A041647.P1778862247748873623

`A041063(n)/A000217(Δ[A032766(n)])`
-/

namespace A041647.P1778862247748873623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041063 n : ℚ) / (A000217 (f1 (n + 1) - f1 n).toNat : ℚ)

end

end A041647.P1778862247748873623

namespace A041647

/-- `A041063(n)/A000217(Δ[A032766(n)])` -/
def P1778862247748873623.Spec : Prop :=
  ∀ n, P1778862247748873623.a n = (A041647 n : ℚ)

end A041647

/-! ## A041647.P13308866644448848430

`A041063(n)/A000245(Δ[A032766(n)])`
-/

namespace A041647.P13308866644448848430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041063 n : ℚ) / (A000245 (f1 (n + 1) - f1 n).toNat : ℚ)

end

end A041647.P13308866644448848430

namespace A041647

/-- `A041063(n)/A000245(Δ[A032766(n)])` -/
def P13308866644448848430.Spec : Prop :=
  ∀ n, P13308866644448848430.a n = (A041647 n : ℚ)

end A041647

/-! ## A041647.P9452236327271173064

`A041063(n)/A032766(Δ[A032766(n)])`
-/

namespace A041647.P9452236327271173064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041063 n : ℚ) / (A032766 (f1 (n + 1) - f1 n).toNat : ℚ)

end

end A041647.P9452236327271173064

namespace A041647

/-- `A041063(n)/A032766(Δ[A032766(n)])` -/
def P9452236327271173064.Spec : Prop :=
  ∀ n, P9452236327271173064.a n = (A041647 n : ℚ)

end A041647

/-! ## A041647.P11613406566885579105

`A041063(n)/A007413(A003159(n+1))`
-/

namespace A041647.P11613406566885579105
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041063 n : ℚ) / (A007413 (A003159 (n + 1)).toNat : ℚ)

end

end A041647.P11613406566885579105

namespace A041647

/-- `A041063(n)/A007413(A003159(n+1))` -/
def P11613406566885579105.Spec : Prop :=
  ∀ n, P11613406566885579105.a n = (A041647 n : ℚ)

end A041647

/-! ## A041647.P1571652516861636729

`A041063(n)/A048250(A006519(n+1))`
-/

namespace A041647.P1571652516861636729
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041063 n : ℚ) / (A048250 (A006519 (n + 1)).toNat : ℚ)

end

end A041647.P1571652516861636729

namespace A041647

/-- `A041063(n)/A048250(A006519(n+1))` -/
def P1571652516861636729.Spec : Prop :=
  ∀ n, P1571652516861636729.a n = (A041647 n : ℚ)

end A041647

/-! ## A041647.P11945652431687631813

`A041063(n)/A001511(A020639(n+1)+2)`
-/

namespace A041647.P11945652431687631813
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041063 n : ℚ) / (A001511 (A020639 (n + 1) + 2).toNat : ℚ)

end

end A041647.P11945652431687631813

namespace A041647

/-- `A041063(n)/A001511(A020639(n+1)+2)` -/
def P11945652431687631813.Spec : Prop :=
  ∀ n, P11945652431687631813.a n = (A041647 n : ℚ)

end A041647

/-! ## A041647.P14372338488945114046

`A041063(n)/A001511(n²+3)`
-/

namespace A041647.P14372338488945114046
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041063 n : ℚ) / (A001511 (n ^ 2 + 3) : ℚ)

end

end A041647.P14372338488945114046

namespace A041647

/-- `A041063(n)/A001511(n²+3)` -/
def P14372338488945114046.Spec : Prop :=
  ∀ n, P14372338488945114046.a n = (A041647 n : ℚ)

end A041647

/-!
# A041649: Denominators of continued fraction convergents to sqrt(343).

The programs for A041649, there is no canonical definition to state claims against.
-/

/-! ## A041649.P6450106145490212821

`A348750(A003093(n+3)+9)`
-/

namespace A041649.P6450106145490212821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348750 (A003093 (n + 3) + 9).toNat

end

end A041649.P6450106145490212821

/-!
# A041655: Denominators of continued fraction convergents to sqrt(346).

The programs for A041655, the canonical program `A041655.P2193195156318384531` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A041655 has offset 0).

The definition of A041655 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A041655.P2193195156318384531

`186*a(n-5)+a(n-10)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=3, a(4)=5, a(5)=183, a(6)=188, a(7)=371, a(8)=559, a(9)=930`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A041655

/-- `186*a(n-5)+a(n-10)` -/
def P2193195156318384531.Spec : Prop :=
  ∀ n, (P2193195156318384531.a n : ℤ) = A041655 n

theorem P2193195156318384531.correct : P2193195156318384531.Spec := by
  intro n
  simp only [A041655]

end A041655

/-! ## A041655.P7348837129709394729

`A041343(n)+A004526(A041343(n)-A041019(n))`
-/

namespace A041655.P7348837129709394729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041343 n + A004526 (A041343 n - A041019 n).toNat

end

end A041655.P7348837129709394729

namespace A041655

/-- `A041343(n)+A004526(A041343(n)-A041019(n))` -/
def P7348837129709394729.Spec : Prop :=
  ∀ n, P7348837129709394729.a n = A041655 n

end A041655

/-! ## A041655.P5236856953400506301

`A041343(n)+A026741(A041343(n)-A041019(n))`
-/

namespace A041655.P5236856953400506301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041343 n + A026741 (A041343 n - A041019 n).toNat

end

end A041655.P5236856953400506301

namespace A041655

/-- `A041343(n)+A026741(A041343(n)-A041019(n))` -/
def P5236856953400506301.Spec : Prop :=
  ∀ n, P5236856953400506301.a n = A041655 n

end A041655

/-! ## A041655.P13032453331441258782

`A078898(A041343(n)-A041019(n))+A041343(n)`
-/

namespace A041655.P13032453331441258782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (A041343 n - A041019 n).toNat + A041343 n

end

end A041655.P13032453331441258782

namespace A041655

/-- `A078898(A041343(n)-A041019(n))+A041343(n)` -/
def P13032453331441258782.Spec : Prop :=
  ∀ n, P13032453331441258782.a n = A041655 n

end A041655

/-!
# A041661: Denominators of continued fraction convergents to sqrt(349).

The programs for A041661, there is no canonical definition to state claims against.
-/

/-! ## A041661.P7592398172711827986

`A033781(A342906(n+2))`
-/

namespace A041661.P7592398172711827986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033781 (A342906 (n + 2)).toNat

end

end A041661.P7592398172711827986

/-!
# A041663: Denominators of continued fraction convergents to sqrt(350).

The programs for A041663, there is no canonical definition to state claims against.
-/

/-! ## A041663.P14044443562347739987

`A305438(A042825(n)+A041077(n))`
-/

namespace A041663.P14044443562347739987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305438 (A042825 n + A041077 n).toNat

end

end A041663.P14044443562347739987

/-! ## A041663.P13173329436091861248

`A042825(n)-A173711(A042832(n)*A173711(n))`
-/

namespace A041663.P13173329436091861248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042825 n - A173711 (A042832 n * A173711 n).toNat

end

end A041663.P13173329436091861248

/-!
# A041665: Denominators of continued fraction convergents to sqrt(351).

The programs for A041665, there is no canonical definition to state claims against.
-/

/-! ## A041665.P2546285731491202268

`A332023(A332835(n)-A144118(n+1))`
-/

namespace A041665.P2546285731491202268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332023 (A332835 n - A144118 (n + 1)).toNat

end

end A041665.P2546285731491202268

/-!
# A041671: Denominators of continued fraction convergents to sqrt(354).

The programs for A041671, there is no canonical definition to state claims against.
-/

/-! ## A041671.P927575446711354541

`∑{d}[A258643(A006171(n)), A318416(#)]`
-/

namespace A041671.P927575446711354541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258643 (A006171 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A318416 d

end

end A041671.P927575446711354541

/-!
# A041681: Denominators of continued fraction convergents to sqrt(359).

The programs for A041681, there is no canonical definition to state claims against.
-/

/-! ## A041681.P3151169421381894603

`A065033(A041683(n)-1)`
-/

namespace A041681.P3151169421381894603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A041683 n - 1).toNat

end

end A041681.P3151169421381894603

/-!
# A041682: Numerators of continued fraction convergents to sqrt(360).

The programs for A041682, the canonical program `A041682.P14233085707334064769` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A041682 has offset 0).

The definition of A041682 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 126 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A041682.P10002455190438279047

`lcm(A041066(n), A041160(n))`
-/

namespace A041682.P10002455190438279047
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A041066 n) (A041160 n)

end

end A041682.P10002455190438279047

namespace A041682

/-- `lcm(A041066(n), A041160(n))` -/
def P10002455190438279047.Spec : Prop :=
  ∀ n, (P10002455190438279047.a n : ℤ) = A041682 n

end A041682

/-! ## A041682.P2890433392538239550

`A000034(n+1)*A041160(n)`
-/

namespace A041682.P2890433392538239550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (n + 1) * A041160 n

end

end A041682.P2890433392538239550

namespace A041682

/-- `A000034(n+1)*A041160(n)` -/
def P2890433392538239550.Spec : Prop :=
  ∀ n, P2890433392538239550.a n = A041682 n

end A041682

/-! ## A041682.P3465806863473288217

`2/A000034(n)*A041160(n)`
-/

namespace A041682.P3465806863473288217
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (A000034 n : ℚ) * (A041160 n : ℚ)

end

end A041682.P3465806863473288217

namespace A041682

/-- `2/A000034(n)*A041160(n)` -/
def P3465806863473288217.Spec : Prop :=
  ∀ n, P3465806863473288217.a n = (A041682 n : ℚ)

end A041682

/-! ## A041682.P14233085707334064769

`A041066(n)*A276391(n²+2)`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A041682

/-- `A041066(n)*A276391(n²+2)` -/
def P14233085707334064769.Spec : Prop :=
  ∀ n, P14233085707334064769.a n = A041682 n

theorem P14233085707334064769.correct : P14233085707334064769.Spec := by
  intro n
  simp only [A041682]

end A041682

/-! ## A041682.P4245953881245922043

`Δ[A032766(n+1)]*A041160(n)`
-/

namespace A041682.P4245953881245922043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A041160 n

end

end A041682.P4245953881245922043

namespace A041682

/-- `Δ[A032766(n+1)]*A041160(n)` -/
def P4245953881245922043.Spec : Prop :=
  ∀ n, P4245953881245922043.a n = A041682 n

end A041682

/-! ## A041682.P8688494648156718371

`2/Δ[A032766(n)]*A041160(n)`
-/

namespace A041682.P8688494648156718371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (f1 (n + 1) - f1 n : ℚ) * (A041160 n : ℚ)

end

end A041682.P8688494648156718371

namespace A041682

/-- `2/Δ[A032766(n)]*A041160(n)` -/
def P8688494648156718371.Spec : Prop :=
  ∀ n, P8688494648156718371.a n = (A041682 n : ℚ)

end A041682

/-! ## A041682.P17893736874894044106

`A041067(n+1)/A041683(n+1)*A041066(n)`
-/

namespace A041682.P17893736874894044106
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041067 (n + 1) : ℚ) / (A041683 (n + 1) : ℚ) * (A041066 n : ℚ)

end

end A041682.P17893736874894044106

namespace A041682

/-- `A041067(n+1)/A041683(n+1)*A041066(n)` -/
def P17893736874894044106.Spec : Prop :=
  ∀ n, P17893736874894044106.a n = (A041682 n : ℚ)

end A041682

/-!
# A041683: Denominators of continued fraction convergents to sqrt(360).

The programs for A041683, the canonical program `A041683.P3389279564901532009` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A041683 has offset 0).

The definition of A041683 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A041683.P3389279564901532009

`38*a(n-2)-a(n-4)` with `a(0)=1, a(1)=1, a(2)=37, a(3)=38`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A041683

/-- `38*a(n-2)-a(n-4)` -/
def P3389279564901532009.Spec : Prop :=
  ∀ n, P3389279564901532009.a n = A041683 n

theorem P3389279564901532009.correct : P3389279564901532009.Spec := by
  intro n
  simp only [A041683]

end A041683

/-! ## A041683.P12939277117363416448

`lcm(2, A041161(n))/2`
-/

namespace A041683.P12939277117363416448
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A041161 n) : ℚ) / 2

end

end A041683.P12939277117363416448

namespace A041683

/-- `lcm(2, A041161(n))/2` -/
def P12939277117363416448.Spec : Prop :=
  ∀ n, P12939277117363416448.a n = (A041683 n : ℚ)

end A041683

/-! ## A041683.P727180184312739781

`gcd(A041067(n), A041161(n))`
-/

namespace A041683.P727180184312739781
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A041067 n) (A041161 n)

end

end A041683.P727180184312739781

namespace A041683

/-- `gcd(A041067(n), A041161(n))` -/
def P727180184312739781.Spec : Prop :=
  ∀ n, (P727180184312739781.a n : ℤ) = A041683 n

end A041683

/-! ## A041683.P9419664912179032867

`A041161(n)/A040001(n+1)`
-/

namespace A041683.P9419664912179032867
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041161 n : ℚ) / (A040001 (n + 1) : ℚ)

end

end A041683.P9419664912179032867

namespace A041683

/-- `A041161(n)/A040001(n+1)` -/
def P9419664912179032867.Spec : Prop :=
  ∀ n, P9419664912179032867.a n = (A041683 n : ℚ)

end A041683

/-! ## A041683.P13966118060215892753

`A041067(n)/A276391(A002522(n))`
-/

namespace A041683.P13966118060215892753
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041067 n : ℚ) / (A276391 (A002522 n).toNat : ℚ)

end

end A041683.P13966118060215892753

namespace A041683

/-- `A041067(n)/A276391(A002522(n))` -/
def P13966118060215892753.Spec : Prop :=
  ∀ n, P13966118060215892753.a n = (A041683 n : ℚ)

end A041683

/-! ## A041683.P14271987034916727365

`A041161(n)/A020639(A006519(n+1))`
-/

namespace A041683.P14271987034916727365
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041161 n : ℚ) / (A020639 (A006519 (n + 1)).toNat : ℚ)

end

end A041683.P14271987034916727365

namespace A041683

/-- `A041161(n)/A020639(A006519(n+1))` -/
def P14271987034916727365.Spec : Prop :=
  ∀ n, P14271987034916727365.a n = (A041683 n : ℚ)

end A041683

/-! ## A041683.P5267440052065385257

`A041007(n)/A142239(n)*A041161(n)`
-/

namespace A041683.P5267440052065385257
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041007 n : ℚ) / (A142239 n : ℚ) * (A041161 n : ℚ)

end

end A041683.P5267440052065385257

namespace A041683

/-- `A041007(n)/A142239(n)*A041161(n)` -/
def P5267440052065385257.Spec : Prop :=
  ∀ n, P5267440052065385257.a n = (A041683 n : ℚ)

end A041683

/-! ## A041683.P14503094669806325777

`A041161(n)/gcd(2, A041189(n))`
-/

namespace A041683.P14503094669806325777
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041161 n : ℚ) / (Int.gcd 2 (A041189 n) : ℚ)

end

end A041683.P14503094669806325777

namespace A041683

/-- `A041161(n)/gcd(2, A041189(n))` -/
def P14503094669806325777.Spec : Prop :=
  ∀ n, P14503094669806325777.a n = (A041683 n : ℚ)

end A041683

/-! ## A041683.P3823486946122641960

`A041161(n)/A006519(n²+1)`
-/

namespace A041683.P3823486946122641960
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041161 n : ℚ) / (A006519 (n ^ 2 + 1) : ℚ)

end

end A041683.P3823486946122641960

namespace A041683

/-- `A041161(n)/A006519(n²+1)` -/
def P3823486946122641960.Spec : Prop :=
  ∀ n, P3823486946122641960.a n = (A041683 n : ℚ)

end A041683

/-! ## A041683.P17364199237974002353

`gcd(∑[A099366(n)], A099366(n+1))`
-/

namespace A041683.P17364199237974002353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099366 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (∑ j ∈ Finset.range (n + 1), f1 j) (A099366 (n + 1))

end

end A041683.P17364199237974002353

namespace A041683

/-- `gcd(∑[A099366(n)], A099366(n+1))` -/
def P17364199237974002353.Spec : Prop :=
  ∀ n, (P17364199237974002353.a n : ℤ) = A041683 n

end A041683

/-!
# A041684: Numerators of continued fraction convergents to sqrt(362).

The programs for A041684, the canonical program `A041684.P8616613432455966794` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A041684 has offset 0).

The definition of A041684 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A041684.P8616613432455966794

`38*a(n-1)+a(n-2)` with `a(0)=19, a(1)=723`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A041684

/-- `38*a(n-1)+a(n-2)` -/
def P8616613432455966794.Spec : Prop :=
  ∀ n, (P8616613432455966794.a n : ℤ) = A041684 n

theorem P8616613432455966794.correct : P8616613432455966794.Spec := by
  intro n
  simp only [A041684]

end A041684

/-!
# A041685: Denominators of continued fraction convergents to sqrt(362).

The programs for A041685, the canonical program `A041685.P4120830428958114991` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A041685 has offset 0).

The definition of A041685 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A041685.P4120830428958114991

`38*a(n-1)+a(n-2)` with `a(0)=1, a(1)=38`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A041685

/-- `38*a(n-1)+a(n-2)` -/
def P4120830428958114991.Spec : Prop :=
  ∀ n, (P4120830428958114991.a n : ℤ) = A041685 n

theorem P4120830428958114991.correct : P4120830428958114991.Spec := by
  intro n
  simp only [A041685]

end A041685

/-! ## A041685.P1364668059805002257

`ogf(1/(1-38x-x^2))`
-/

namespace A041685.P1364668059805002257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -38, -1] n

end

end A041685.P1364668059805002257

namespace A041685

/-- `ogf(1/(1-38x-x^2))` -/
def P1364668059805002257.Spec : Prop :=
  ∀ n, P1364668059805002257.a n = A041685 n

end A041685

/-! ## A041685.P16192327875086719835

`xor(1, a(n-1)²)/a(n-2)` with `a(0)=1, a(1)=38`
-/

namespace A041685.P16192327875086719835
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 38] fun n a =>
  (Int.xor 1 (SequenceMachineLib.roundAway (a (n - 1) ^ 2)) : ℚ) / a (n - 2)

end

end A041685.P16192327875086719835

namespace A041685

/-- `xor(1, a(n-1)²)/a(n-2)` -/
def P16192327875086719835.Spec : Prop :=
  ∀ n, P16192327875086719835.a n = (A041685 n : ℚ)

end A041685

/-! ## A041685.P5186048494130478472

`floor((a(n-1)²+1)/a(n-2))` with `a(0)=1, a(1)=38`
-/

namespace A041685.P5186048494130478472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 38] fun n a =>
  ⌊(a (n - 1) ^ 2 + 1 : ℚ) / (a (n - 2) : ℚ)⌋

end

end A041685.P5186048494130478472

namespace A041685

/-- `floor((a(n-1)²+1)/a(n-2))` -/
def P5186048494130478472.Spec : Prop :=
  ∀ n, P5186048494130478472.a n = A041685 n

end A041685

/-!
# A041686: Numerators of continued fraction convergents to sqrt(363).

The programs for A041686, there is no canonical definition to state claims against.
-/

/-! ## A041686.P17669380161004088568

`A002531(5*(n+1))`
-/

namespace A041686.P17669380161004088568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002531 (5 * (n + 1))

end

end A041686.P17669380161004088568

/-! ## A041686.P11845296667784996835

`record[A002531(5*A008611(n))]`
-/

namespace A041686.P11845296667784996835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002531 (5 * A008611 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A041686.P11845296667784996835

/-! ## A041686.P17480258380027986090

`record[A002531(5*A008612(n))]`
-/

namespace A041686.P17480258380027986090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002531 (5 * A008612 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A041686.P17480258380027986090

/-! ## A041686.P9558634884468621892

`record[A002531(5*A106249(n))]`
-/

namespace A041686.P9558634884468621892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002531 (5 * A106249 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A041686.P9558634884468621892

/-! ## A041686.P11759456835862581459

`record[A002531(5*A134478(n))]`
-/

namespace A041686.P11759456835862581459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002531 (5 * A134478 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A041686.P11759456835862581459

/-! ## A041686.P18346659309652624543

`record[A002531(5*A154958(n))]`
-/

namespace A041686.P18346659309652624543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002531 (5 * A154958 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A041686.P18346659309652624543

/-!
# A041687: Denominators of continued fraction convergents to sqrt(363).

The programs for A041687, there is no canonical definition to state claims against.
-/

/-! ## A041687.P16271616357551227451

`A002530(5*(n+1))/11`
-/

namespace A041687.P16271616357551227451
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002530 (5 * (n + 1)) : ℚ) / 11

end

end A041687.P16271616357551227451

