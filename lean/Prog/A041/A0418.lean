import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C005
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C023
import Seq.B000.C033
import Seq.B000.C039
import Seq.B000.C046
import Seq.B001.C000
import Seq.B001.C002
import Seq.B002.C000
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C001
import Seq.B006.C001
import Seq.Opaque.C000
import Seq.Opaque.C002
import Seq.Opaque.C003
import Seq.Opaque.C004
import Seq.Opaque.C005
import Seq.Opaque.C006
import Seq.Opaque.C008
import Seq.Opaque.C009
import Seq.Opaque.C010
import Seq.Opaque.C012
import Seq.Opaque.C014
import Seq.Opaque.C015
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C019
import Seq.Opaque.C020

/-!
# A041803: Denominators of continued fraction convergents to sqrt(422).

The programs for A041803, there is no canonical definition to state claims against.
-/

/-! ## A041803.P1184053519600611609

`A257120(A063834(n))-A063725(n)`
-/

namespace A041803.P1184053519600611609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257120 (A063834 n).toNat - A063725 n

end

end A041803.P1184053519600611609

/-! ## A041803.P12009761833141310345

`A257120(A063834(n))-A244132(n)`
-/

namespace A041803.P12009761833141310345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257120 (A063834 n).toNat - A244132 n

end

end A041803.P12009761833141310345

/-!
# A041805: Denominators of continued fraction convergents to sqrt(423).

The programs for A041805, there is no canonical definition to state claims against.
-/

/-! ## A041805.P2313812297312763605

`A082957(n+1)%A195770(A005500(n))`
-/

namespace A041805.P2313812297312763605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A082957 (n + 1)) (A195770 (A005500 n).toNat)

end

end A041805.P2313812297312763605

/-!
# A041807: Denominators of continued fraction convergents to sqrt(424).

The programs for A041807, there is no canonical definition to state claims against.
-/

/-! ## A041807.P13881858701891107828

`A064989(A119931(n)*A218670(n))`
-/

namespace A041807.P13881858701891107828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (A119931 n * A218670 n).toNat

end

end A041807.P13881858701891107828

/-! ## A041807.P3171057097829676468

`lcm(A002487(A333890(n)), A122881(n+1))`
-/

namespace A041807.P3171057097829676468
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A002487 (A333890 n).toNat) (A122881 (n + 1))

end

end A041807.P3171057097829676468

/-!
# A041808: Numerators of continued fraction convergents to sqrt(425).

The programs for A041808, the canonical program `A041808.P918347562871653441` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A041808 has offset 0).

The definition of A041808 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A041808.P918347562871653441

`ogf((20+21x+41x^2+62x^3+103x^4+165x^5+268x^6+165x^7-103x^8+62x^9-41x^10+21x^11-20x^12+x^13)/(1-536x^7-x^14))`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A041808

/-- `ogf((20+21x+41x^2+62x^3+103x^4+165x^5+268x^6+165x^7-103x^8+62x^9-41x^10+21x^11-20x^12+x^13)/(1-536x^7-x^14))` -/
def P918347562871653441.Spec : Prop :=
  ∀ n, P918347562871653441.a n = A041808 n

theorem P918347562871653441.correct : P918347562871653441.Spec := by
  intro n
  simp only [A041808]

end A041808

/-! ## A041808.P6490542367880159648

`A022110((n+1)^gcd(7, n))`
-/

namespace A041808.P6490542367880159648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022110 ((n + 1) ^ Nat.gcd 7 n)

end

end A041808.P6490542367880159648

namespace A041808

/-- `A022110((n+1)^gcd(7, n))` -/
def P6490542367880159648.Spec : Prop :=
  ∀ n, P6490542367880159648.a n = A041808 n

end A041808

/-!
# A041809: Denominators of continued fraction convergents to sqrt(425).

The programs for A041809, the canonical program `A041809.P8043990229319318962` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A041809 has offset 0).

The definition of A041809 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A041809.P8043990229319318962

`ogf((1+x+2x^2+3x^3+5x^4+8x^5+13x^6-8x^7+5x^8-3x^9+2x^10-x^11+x^12)/(1-536x^7-x^14))`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A041809

/-- `ogf((1+x+2x^2+3x^3+5x^4+8x^5+13x^6-8x^7+5x^8-3x^9+2x^10-x^11+x^12)/(1-536x^7-x^14))` -/
def P8043990229319318962.Spec : Prop :=
  ∀ n, P8043990229319318962.a n = A041809 n

theorem P8043990229319318962.correct : P8043990229319318962.Spec := by
  intro n
  simp only [A041809]

end A041809

/-! ## A041809.P9608315055528370457

`a(n-2)+a(n-1)*A040404(n)` with `a(0)=1, a(1)=1`
-/

namespace A041809.P9608315055528370457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 2) + a (n - 1) * A040404 n

end

end A041809.P9608315055528370457

namespace A041809

/-- `a(n-2)+a(n-1)*A040404(n)` -/
def P9608315055528370457.Spec : Prop :=
  ∀ n, P9608315055528370457.a n = A041809 n

end A041809

/-! ## A041809.P8093861401968974083

`A009194(A325476(n))*A325473(n)`
-/

namespace A041809.P8093861401968974083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009194 (A325476 n).toNat * A325473 n

end

end A041809.P8093861401968974083

namespace A041809

/-- `A009194(A325476(n))*A325473(n)` -/
def P8093861401968974083.Spec : Prop :=
  ∀ n, P8093861401968974083.a n = A041809 n

end A041809

/-!
# A041811: Denominators of continued fraction convergents to sqrt(426).

The programs for A041811, there is no canonical definition to state claims against.
-/

/-! ## A041811.P12376588789791724849

`round(A041810(n)/sqrt(426))`
-/

namespace A041811.P12376588789791724849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A041810 n : ℝ) / Real.sqrt (426 : ℝ))

end

end A041811.P12376588789791724849

/-! ## A041811.P5595056826019671218

`A002487(xor(C(n, 2)/2*n!, ∏{e}[n+1, #+1]))`
-/

namespace A041811.P5595056826019671218
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (Int.xor (SequenceMachineLib.roundAway ((Nat.choose n 2 : ℚ) / 2 * (Nat.factorial n : ℚ))) ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ)).toNat

end

end A041811.P5595056826019671218

/-!
# A041812: Numerators of continued fraction convergents to sqrt(427).

The programs for A041812, the canonical program `A041812.P2682517950211701610` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A041812 has offset 0).

The definition of A041812 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A041812.P2682517950211701610

`ogf((20+21x+41x^2+62x^3+41x^4-21x^5+20x^6-x^7)/(1-124x^4+x^8))`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A041812

/-- `ogf((20+21x+41x^2+62x^3+41x^4-21x^5+20x^6-x^7)/(1-124x^4+x^8))` -/
def P2682517950211701610.Spec : Prop :=
  ∀ n, P2682517950211701610.a n = A041812 n

theorem P2682517950211701610.correct : P2682517950211701610.Spec := by
  intro n
  simp only [A041812]

end A041812

/-!
# A041813: Denominators of continued fraction convergents to sqrt(427).

The programs for A041813, the canonical program `A041813.P14285426618148577988` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A041813 has offset 0).

The definition of A041813 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A041813.P14285426618148577988

`124*a(n-4)-a(n-8)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=3, a(4)=122, a(5)=125, a(6)=247, a(7)=372`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A041813

/-- `124*a(n-4)-a(n-8)` -/
def P14285426618148577988.Spec : Prop :=
  ∀ n, P14285426618148577988.a n = A041813 n

theorem P14285426618148577988.correct : P14285426618148577988.Spec := by
  intro n
  simp only [A041813]

end A041813

/-! ## A041813.P7821053203860677927

`ogf((1+x+2x^2+3x^3-2x^4+x^5-x^6)/(1-124x^4+x^8))`
-/

namespace A041813.P7821053203860677927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, 2, 3, -2, 1, -1] [1, 0, 0, 0, -124, 0, 0, 0, 1] n

end

end A041813.P7821053203860677927

namespace A041813

/-- `ogf((1+x+2x^2+3x^3-2x^4+x^5-x^6)/(1-124x^4+x^8))` -/
def P7821053203860677927.Spec : Prop :=
  ∀ n, P7821053203860677927.a n = A041813 n

end A041813

/-! ## A041813.P11147104120631391994

`A286689(A041589(n))`
-/

namespace A041813.P11147104120631391994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286689 (A041589 n).toNat

end

end A041813.P11147104120631391994

namespace A041813

/-- `A286689(A041589(n))` -/
def P11147104120631391994.Spec : Prop :=
  ∀ n, P11147104120631391994.a n = A041813 n

end A041813

/-!
# A041819: Denominators of continued fraction convergents to sqrt(430).

The programs for A041819, there is no canonical definition to state claims against.
-/

/-! ## A041819.P16413638318544749502

`A178976(C(floor(3*n/2), n))+A100882(n)`
-/

namespace A041819.P16413638318544749502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178976 (Nat.choose ⌊3 * ((n : ℚ) / 2)⌋.toNat n) + A100882 n

end

end A041819.P16413638318544749502

/-!
# A041825: Denominators of continued fraction convergents to sqrt(433).

The programs for A041825, there is no canonical definition to state claims against.
-/

/-! ## A041825.P14166646551792819174

`or(floor(n/log2(3)), A193592(4^n+6^n-1))`
-/

namespace A041825.P14166646551792819174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ⌊(n : ℝ) / Real.logb 2 (3 : ℝ)⌋ (A193592 ((4 ^ n : ℤ) + ((6 ^ n : ℤ) - 1)).toNat)

end

end A041825.P14166646551792819174

/-!
# A041826: Numerators of continued fraction convergents to sqrt(434).

The programs for A041826, the canonical program `A041826.P8628926305443566617` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A041826 has offset 0).

The definition of A041826 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A041826.P8628926305443566617

`ogf((20+21x+104x^2+125x^3+104x^4-21x^5+20x^6-x^7)/(1-250x^4+x^8))`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A041826

/-- `ogf((20+21x+104x^2+125x^3+104x^4-21x^5+20x^6-x^7)/(1-250x^4+x^8))` -/
def P8628926305443566617.Spec : Prop :=
  ∀ n, P8628926305443566617.a n = A041826 n

theorem P8628926305443566617.correct : P8628926305443566617.Spec := by
  intro n
  simp only [A041826]

end A041826

/-!
# A041827: Denominators of continued fraction convergents to sqrt(434).

The programs for A041827, the canonical program `A041827.P12707940640925670004` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A041827 has offset 0).

The definition of A041827 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A041827.P12707940640925670004

`ogf((1+x+5x^2+6x^3-5x^4+x^5-x^6)/(1-250x^4+x^8))`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A041827

/-- `ogf((1+x+5x^2+6x^3-5x^4+x^5-x^6)/(1-250x^4+x^8))` -/
def P12707940640925670004.Spec : Prop :=
  ∀ n, P12707940640925670004.a n = A041827 n

theorem P12707940640925670004.correct : P12707940640925670004.Spec := by
  intro n
  simp only [A041827]

end A041827

/-! ## A041827.P2533115706841775184

`A004525(A042089(n)+A041601(n))`
-/

namespace A041827.P2533115706841775184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A042089 n + A041601 n).toNat

end

end A041827.P2533115706841775184

namespace A041827

/-- `A004525(A042089(n)+A041601(n))` -/
def P2533115706841775184.Spec : Prop :=
  ∀ n, P2533115706841775184.a n = A041827 n

end A041827

/-! ## A041827.P13346612368003980886

`A004526(A042089(n)+A041601(n))`
-/

namespace A041827.P13346612368003980886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A042089 n + A041601 n).toNat

end

end A041827.P13346612368003980886

namespace A041827

/-- `A004526(A042089(n)+A041601(n))` -/
def P13346612368003980886.Spec : Prop :=
  ∀ n, P13346612368003980886.a n = A041827 n

end A041827

/-!
# A041828: Numerators of continued fraction convergents to sqrt(435).

The programs for A041828, the canonical program `A041828.P6166197639257845528` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A041828 has offset 0).

The definition of A041828 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A041828.P6166197639257845528

`ogf((20+21x+125x^2+146x^3+125x^4-21x^5+20x^6-x^7)/(1-292x^4+x^8))`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A041828

/-- `ogf((20+21x+125x^2+146x^3+125x^4-21x^5+20x^6-x^7)/(1-292x^4+x^8))` -/
def P6166197639257845528.Spec : Prop :=
  ∀ n, P6166197639257845528.a n = A041828 n

theorem P6166197639257845528.correct : P6166197639257845528.Spec := by
  intro n
  simp only [A041828]

end A041828

/-!
# A041829: Denominators of continued fraction convergents to sqrt(435).

The programs for A041829, the canonical program `A041829.P2651162666776918663` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A041829 has offset 0).

The definition of A041829 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A041829.P2651162666776918663

`ogf((1+x+6x^2+7x^3-6x^4+x^5-x^6)/(1-292x^4+x^8))`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A041829

/-- `ogf((1+x+6x^2+7x^3-6x^4+x^5-x^6)/(1-292x^4+x^8))` -/
def P2651162666776918663.Spec : Prop :=
  ∀ n, P2651162666776918663.a n = A041829 n

theorem P2651162666776918663.correct : P2651162666776918663.Spec := by
  intro n
  simp only [A041829]

end A041829

/-!
# A041833: Denominators of continued fraction convergents to sqrt(437).

The programs for A041833, there is no canonical definition to state claims against.
-/

/-! ## A041833.P10847780015783433657

`A242590(A041213(n))`
-/

namespace A041833.P10847780015783433657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242590 (A041213 n).toNat

end

end A041833.P10847780015783433657

/-!
# A041834: Numerators of continued fraction convergents to sqrt(438).

The programs for A041834, the canonical program `A041834.P13355718361032650180` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A041834 has offset 0).

The definition of A041834 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A041834.P13355718361032650180

`ogf((20+21x+272x^2+293x^3+272x^4-21x^5+20x^6-x^7)/(1-586x^4+x^8))`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A041834

/-- `ogf((20+21x+272x^2+293x^3+272x^4-21x^5+20x^6-x^7)/(1-586x^4+x^8))` -/
def P13355718361032650180.Spec : Prop :=
  ∀ n, P13355718361032650180.a n = A041834 n

theorem P13355718361032650180.correct : P13355718361032650180.Spec := by
  intro n
  simp only [A041834]

end A041834

/-!
# A041835: Denominators of continued fraction convergents to sqrt(438).

The programs for A041835, the canonical program `A041835.P1493951556873712109` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A041835 has offset 0).

The definition of A041835 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A041835.P1493951556873712109

`ogf((1+x+13x^2+14x^3-13x^4+x^5-x^6)/(1-586x^4+x^8))`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A041835

/-- `ogf((1+x+13x^2+14x^3-13x^4+x^5-x^6)/(1-586x^4+x^8))` -/
def P1493951556873712109.Spec : Prop :=
  ∀ n, P1493951556873712109.a n = A041835 n

theorem P1493951556873712109.correct : P1493951556873712109.Spec := by
  intro n
  simp only [A041835]

end A041835

/-!
# A041836: Numerators of continued fraction convergents to sqrt(439).

The programs for A041836, the canonical program `A041836.P8901230088366984302` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A041836 has offset 0).

The definition of A041836 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A041836.P8901230088366984302

`ogf((20+21x+419x^2+440x^3+419x^4-21x^5+20x^6-x^7)/(1-880x^4+x^8))`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A041836

/-- `ogf((20+21x+419x^2+440x^3+419x^4-21x^5+20x^6-x^7)/(1-880x^4+x^8))` -/
def P8901230088366984302.Spec : Prop :=
  ∀ n, P8901230088366984302.a n = A041836 n

theorem P8901230088366984302.correct : P8901230088366984302.Spec := by
  intro n
  simp only [A041836]

end A041836

/-!
# A041837: Denominators of continued fraction convergents to sqrt(439).

The programs for A041837, the canonical program `A041837.P17773514873395372745` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A041837 has offset 0).

The definition of A041837 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A041837.P17773514873395372745

`ogf((1+x+20x^2+21x^3-20x^4+x^5-x^6)/(1-880x^4+x^8))`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A041837

/-- `ogf((1+x+20x^2+21x^3-20x^4+x^5-x^6)/(1-880x^4+x^8))` -/
def P17773514873395372745.Spec : Prop :=
  ∀ n, P17773514873395372745.a n = A041837 n

theorem P17773514873395372745.correct : P17773514873395372745.Spec := by
  intro n
  simp only [A041837]

end A041837

/-!
# A041838: Numerators of continued fraction convergents to sqrt(440).

The programs for A041838, the canonical program `A041838.P13543000929243583135` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A041838 has offset 0).

The definition of A041838 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A041838.P12189187111796851704

`ogf((20+21x+20x^2-x^3)/(1-42x^2+x^4))`
-/

namespace A041838.P12189187111796851704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [20, 21, 20, -1] [1, 0, -42, 0, 1] n

end

end A041838.P12189187111796851704

namespace A041838

/-- `ogf((20+21x+20x^2-x^3)/(1-42x^2+x^4))` -/
def P12189187111796851704.Spec : Prop :=
  ∀ n, P12189187111796851704.a n = A041838 n

end A041838

/-! ## A041838.P13543000929243583135

`42*a(n-2)-a(n-4)` with `a(0)=20, a(1)=21, a(2)=860, a(3)=881`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A041838

/-- `42*a(n-2)-a(n-4)` -/
def P13543000929243583135.Spec : Prop :=
  ∀ n, P13543000929243583135.a n = A041838 n

theorem P13543000929243583135.correct : P13543000929243583135.Spec := by
  intro n
  simp only [A041838]

end A041838

/-! ## A041838.P4923029845649723062

`gcd(2, n)*A041198(n)`
-/

namespace A041838.P4923029845649723062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 2 n : ℤ) * A041198 n

end

end A041838.P4923029845649723062

namespace A041838

/-- `gcd(2, n)*A041198(n)` -/
def P4923029845649723062.Spec : Prop :=
  ∀ n, P4923029845649723062.a n = A041838 n

end A041838

/-! ## A041838.P1531953943760410040

`Δ[A007494(n)]*A041198(n)`
-/

namespace A041838.P1531953943760410040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007494 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A041198 n

end

end A041838.P1531953943760410040

namespace A041838

/-- `Δ[A007494(n)]*A041198(n)` -/
def P1531953943760410040.Spec : Prop :=
  ∀ n, P1531953943760410040.a n = A041838 n

end A041838

/-! ## A041838.P815068170855924756

`A000034(n+1)*A041198(n)`
-/

namespace A041838.P815068170855924756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (n + 1) * A041198 n

end

end A041838.P815068170855924756

namespace A041838

/-- `A000034(n+1)*A041198(n)` -/
def P815068170855924756.Spec : Prop :=
  ∀ n, P815068170855924756.a n = A041838 n

end A041838

/-! ## A041838.P4660416875683721207

`A040001(n+2)*A041198(n)`
-/

namespace A041838.P4660416875683721207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (n + 2) * A041198 n

end

end A041838.P4660416875683721207

namespace A041838

/-- `A040001(n+2)*A041198(n)` -/
def P4660416875683721207.Spec : Prop :=
  ∀ n, P4660416875683721207.a n = A041838 n

end A041838

/-! ## A041838.P17758988764548074760

`2/A000034(n)*A041198(n)`
-/

namespace A041838.P17758988764548074760
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (A000034 n : ℚ) * (A041198 n : ℚ)

end

end A041838.P17758988764548074760

namespace A041838

/-- `2/A000034(n)*A041198(n)` -/
def P17758988764548074760.Spec : Prop :=
  ∀ n, P17758988764548074760.a n = (A041838 n : ℚ)

end A041838

/-! ## A041838.P970339351184143079

`lcm(gcd(4, A040419(n)), A041198(n))`
-/

namespace A041838.P970339351184143079
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (Int.gcd 4 (A040419 n) : ℤ) (A041198 n)

end

end A041838.P970339351184143079

namespace A041838

/-- `lcm(gcd(4, A040419(n)), A041198(n))` -/
def P970339351184143079.Spec : Prop :=
  ∀ n, (P970339351184143079.a n : ℤ) = A041838 n

end A041838

/-! ## A041838.P6102045613586291305

`A041198(n+10)%4*A041198(n)`
-/

namespace A041838.P6102045613586291305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A041198 (n + 10)) 4 * A041198 n

end

end A041838.P6102045613586291305

namespace A041838

/-- `A041198(n+10)%4*A041198(n)` -/
def P6102045613586291305.Spec : Prop :=
  ∀ n, P6102045613586291305.a n = A041838 n

end A041838

/-!
# A041839: Denominators of continued fraction convergents to sqrt(440).

The programs for A041839, the canonical program `A041839.P6147353731586544628` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A041839 has offset 0).

The definition of A041839 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A041839.P5743015293548141820

`ogf((1+x-x^2)/(1-42x^2+x^4))`
-/

namespace A041839.P5743015293548141820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, -1] [1, 0, -42, 0, 1] n

end

end A041839.P5743015293548141820

namespace A041839

/-- `ogf((1+x-x^2)/(1-42x^2+x^4))` -/
def P5743015293548141820.Spec : Prop :=
  ∀ n, P5743015293548141820.a n = A041839 n

end A041839

/-! ## A041839.P6147353731586544628

`42*a(n-2)-a(n-4)` with `a(0)=1, a(1)=1, a(2)=41, a(3)=42`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A041839

/-- `42*a(n-2)-a(n-4)` -/
def P6147353731586544628.Spec : Prop :=
  ∀ n, P6147353731586544628.a n = A041839 n

theorem P6147353731586544628.correct : P6147353731586544628.Spec := by
  intro n
  simp only [A041839]

end A041839

/-! ## A041839.P6318804569770298917

`lcm(2, A041199(n))/2`
-/

namespace A041839.P6318804569770298917
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A041199 n) : ℚ) / 2

end

end A041839.P6318804569770298917

namespace A041839

/-- `lcm(2, A041199(n))/2` -/
def P6318804569770298917.Spec : Prop :=
  ∀ n, P6318804569770298917.a n = (A041839 n : ℚ)

end A041839

/-! ## A041839.P10279032974662183541

`A041199(n)/Δ[A001651(n+1)]`
-/

namespace A041839.P10279032974662183541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001651 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041199 n : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A041839.P10279032974662183541

namespace A041839

/-- `A041199(n)/Δ[A001651(n+1)]` -/
def P10279032974662183541.Spec : Prop :=
  ∀ n, P10279032974662183541.a n = (A041839 n : ℚ)

end A041839

/-! ## A041839.P1857976904199051736

`A041199(n)/(A041198(n)%2+1)`
-/

namespace A041839.P1857976904199051736
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041199 n : ℚ) / (Int.tmod (A041198 n) 2 + 1 : ℚ)

end

end A041839.P1857976904199051736

namespace A041839

/-- `A041199(n)/(A041198(n)%2+1)` -/
def P1857976904199051736.Spec : Prop :=
  ∀ n, P1857976904199051736.a n = (A041839 n : ℚ)

end A041839

/-! ## A041839.P6341438357585776175

`A041199(n)/gcd(2, A041199(n+10))`
-/

namespace A041839.P6341438357585776175
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041199 n : ℚ) / (Int.gcd 2 (A041199 (n + 10)) : ℚ)

end

end A041839.P6341438357585776175

namespace A041839

/-- `A041199(n)/gcd(2, A041199(n+10))` -/
def P6341438357585776175.Spec : Prop :=
  ∀ n, P6341438357585776175.a n = (A041839 n : ℚ)

end A041839

/-!
# A041840: Numerators of continued fraction convergents to sqrt(442).

The programs for A041840, the canonical program `A041840.P15357013018955268593` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A041840 has offset 0).

The definition of A041840 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A041840.P7437911952328179688

`ogf((21+x)/(1-42x-x^2))`
-/

namespace A041840.P7437911952328179688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [21, 1] [1, -42, -1] n

end

end A041840.P7437911952328179688

namespace A041840

/-- `ogf((21+x)/(1-42x-x^2))` -/
def P7437911952328179688.Spec : Prop :=
  ∀ n, P7437911952328179688.a n = A041840 n

end A041840

/-! ## A041840.P15357013018955268593

`42*a(n-1)+a(n-2)` with `a(0)=21, a(1)=883`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A041840

/-- `42*a(n-1)+a(n-2)` -/
def P15357013018955268593.Spec : Prop :=
  ∀ n, (P15357013018955268593.a n : ℤ) = A041840 n

theorem P15357013018955268593.correct : P15357013018955268593.Spec := by
  intro n
  simp only [A041840]

end A041840

/-!
# A041841: Denominators of continued fraction convergents to sqrt(442).

The programs for A041841, the canonical program `A041841.P8169203391059113414` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A041841 has offset 0).

The definition of A041841 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A041841.P4695211705127326952

`ogf(1/(1-42x-x^2))`
-/

namespace A041841.P4695211705127326952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -42, -1] n

end

end A041841.P4695211705127326952

namespace A041841

/-- `ogf(1/(1-42x-x^2))` -/
def P4695211705127326952.Spec : Prop :=
  ∀ n, P4695211705127326952.a n = A041841 n

end A041841

/-! ## A041841.P8169203391059113414

`42*a(n-1)+a(n-2)` with `a(0)=1, a(1)=42`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A041841

/-- `42*a(n-1)+a(n-2)` -/
def P8169203391059113414.Spec : Prop :=
  ∀ n, (P8169203391059113414.a n : ℤ) = A041841 n

theorem P8169203391059113414.correct : P8169203391059113414.Spec := by
  intro n
  simp only [A041841]

end A041841

/-! ## A041841.P8359193118026644285

`xor(1, a(n-1)²)/a(n-2)` with `a(0)=1, a(1)=42`
-/

namespace A041841.P8359193118026644285
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 42] fun n a =>
  (Int.xor 1 (SequenceMachineLib.roundAway (a (n - 1) ^ 2)) : ℚ) / a (n - 2)

end

end A041841.P8359193118026644285

namespace A041841

/-- `xor(1, a(n-1)²)/a(n-2)` -/
def P8359193118026644285.Spec : Prop :=
  ∀ n, P8359193118026644285.a n = (A041841 n : ℚ)

end A041841

/-! ## A041841.P4743437913842761546

`floor((a(n-1)²+1)/a(n-2))` with `a(0)=1, a(1)=42`
-/

namespace A041841.P4743437913842761546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 42] fun n a =>
  ⌊(a (n - 1) ^ 2 + 1 : ℚ) / (a (n - 2) : ℚ)⌋

end

end A041841.P4743437913842761546

namespace A041841

/-- `floor((a(n-1)²+1)/a(n-2))` -/
def P4743437913842761546.Spec : Prop :=
  ∀ n, P4743437913842761546.a n = A041841 n

end A041841

/-!
# A041842: Numerators of continued fraction convergents to sqrt(443).

The programs for A041842, the canonical program `A041842.P12453754918544404894` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A041842 has offset 0).

The definition of A041842 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A041842.P12453754918544404894

`ogf((21+442x+21x^2-x^3)/(1-884x^2+x^4))`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A041842

/-- `ogf((21+442x+21x^2-x^3)/(1-884x^2+x^4))` -/
def P12453754918544404894.Spec : Prop :=
  ∀ n, P12453754918544404894.a n = A041842 n

theorem P12453754918544404894.correct : P12453754918544404894.Spec := by
  intro n
  simp only [A041842]

end A041842

/-!
# A041843: Denominators of continued fraction convergents to sqrt(443).

The programs for A041843, the canonical program `A041843.P4877842544510238019` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A041843 has offset 0).

The definition of A041843 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A041843.P4877842544510238019

`ogf((1+21x-x^2)/(1-884x^2+x^4))`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A041843

/-- `ogf((1+21x-x^2)/(1-884x^2+x^4))` -/
def P4877842544510238019.Spec : Prop :=
  ∀ n, P4877842544510238019.a n = A041843 n

theorem P4877842544510238019.correct : P4877842544510238019.Spec := by
  intro n
  simp only [A041843]

end A041843

/-!
# A041844: Numerators of continued fraction convergents to sqrt(444).

The programs for A041844, the canonical program `A041844.P1556153392562896839` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A041844 has offset 0).

The definition of A041844 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A041844.P1556153392562896839

`ogf((21+295x+21x^2-x^3)/(1-590x^2+x^4))`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A041844

/-- `ogf((21+295x+21x^2-x^3)/(1-590x^2+x^4))` -/
def P1556153392562896839.Spec : Prop :=
  ∀ n, P1556153392562896839.a n = A041844 n

theorem P1556153392562896839.correct : P1556153392562896839.Spec := by
  intro n
  simp only [A041844]

end A041844

/-! ## A041844.P16812179705551116126

`A041200(3*n+2)`
-/

namespace A041844.P16812179705551116126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041200 (3 * n + 2)

end

end A041844.P16812179705551116126

namespace A041844

/-- `A041200(3*n+2)` -/
def P16812179705551116126.Spec : Prop :=
  ∀ n, P16812179705551116126.a n = A041844 n

end A041844

/-!
# A041845: Denominators of continued fraction convergents to sqrt(444).

The programs for A041845, the canonical program `A041845.P10100100203651361603` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A041845 has offset 0).

The definition of A041845 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A041845.P10100100203651361603

`ogf((1+14x-x^2)/(1-590x^2+x^4))`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A041845

/-- `ogf((1+14x-x^2)/(1-590x^2+x^4))` -/
def P10100100203651361603.Spec : Prop :=
  ∀ n, P10100100203651361603.a n = A041845 n

theorem P10100100203651361603.correct : P10100100203651361603.Spec := by
  intro n
  simp only [A041845]

end A041845

/-! ## A041845.P3071568545585946827

`∑[A041201(3*n)]`
-/

namespace A041845.P3071568545585946827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041201 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A041845.P3071568545585946827

namespace A041845

/-- `∑[A041201(3*n)]` -/
def P3071568545585946827.Spec : Prop :=
  ∀ n, P3071568545585946827.a n = A041845 n

end A041845

/-! ## A041845.P12522545153530943261

`A041201(3*n)+a(A023443(n))` with `a(0)=1`
-/

namespace A041845.P12522545153530943261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A041201 (3 * n) + a (A023443 n).toNat

end

end A041845.P12522545153530943261

namespace A041845

/-- `A041201(3*n)+a(A023443(n))` -/
def P12522545153530943261.Spec : Prop :=
  ∀ n, P12522545153530943261.a n = A041845 n

end A041845

/-! ## A041845.P4120394541118728754

`A041201(3*n)+a(A249674(n)-A248572(n))` with `a(0)=1`
-/

namespace A041845.P4120394541118728754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A041201 (3 * n) + a (A249674 n - A248572 n).toNat

end

end A041845.P4120394541118728754

namespace A041845

/-- `A041201(3*n)+a(A249674(n)-A248572(n))` -/
def P4120394541118728754.Spec : Prop :=
  ∀ n, P4120394541118728754.a n = A041845 n

end A041845

/-! ## A041845.P7736301971384238211

`A041201(3*n+2)/2`
-/

namespace A041845.P7736301971384238211
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041201 (3 * n + 2) : ℚ) / 2

end

end A041845.P7736301971384238211

namespace A041845

/-- `A041201(3*n+2)/2` -/
def P7736301971384238211.Spec : Prop :=
  ∀ n, P7736301971384238211.a n = (A041845 n : ℚ)

end A041845

/-!
# A041850: Numerators of continued fraction convergents to sqrt(447).

The programs for A041850, the canonical program `A041850.P16565658664075016105` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A041850 has offset 0).

The definition of A041850 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A041850.P16565658664075016105

`ogf((21+148x+21x^2-x^3)/(1-296x^2+x^4))`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A041850

/-- `ogf((21+148x+21x^2-x^3)/(1-296x^2+x^4))` -/
def P16565658664075016105.Spec : Prop :=
  ∀ n, P16565658664075016105.a n = A041850 n

theorem P16565658664075016105.correct : P16565658664075016105.Spec := by
  intro n
  simp only [A041850]

end A041850

/-!
# A041851: Denominators of continued fraction convergents to sqrt(447).

The programs for A041851, the canonical program `A041851.P5314600226237542696` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A041851 has offset 0).

The definition of A041851 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A041851.P5314600226237542696

`ogf((1+7x-x^2)/(1-296x^2+x^4))`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A041851

/-- `ogf((1+7x-x^2)/(1-296x^2+x^4))` -/
def P5314600226237542696.Spec : Prop :=
  ∀ n, P5314600226237542696.a n = A041851 n

theorem P5314600226237542696.correct : P5314600226237542696.Spec := by
  intro n
  simp only [A041851]

end A041851

/-!
# A041852: Numerators of continued fraction convergents to sqrt(448).

The programs for A041852, the canonical program `A041852.P17071566236447971318` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A041852 has offset 0).

The definition of A041852 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A041852.P17071566236447971318

`ogf((21+127x+21x^2-x^3)/(1-254x^2+x^4))`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A041852

/-- `ogf((21+127x+21x^2-x^3)/(1-254x^2+x^4))` -/
def P17071566236447971318.Spec : Prop :=
  ∀ n, P17071566236447971318.a n = A041852 n

theorem P17071566236447971318.correct : P17071566236447971318.Spec := by
  intro n
  simp only [A041852]

end A041852

/-! ## A041852.P12623712393860665288

`A041202(3*n+2)`
-/

namespace A041852.P12623712393860665288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041202 (3 * n + 2)

end

end A041852.P12623712393860665288

namespace A041852

/-- `A041202(3*n+2)` -/
def P12623712393860665288.Spec : Prop :=
  ∀ n, P12623712393860665288.a n = A041852 n

end A041852

/-!
# A041853: Denominators of continued fraction convergents to sqrt(448).

The programs for A041853, the canonical program `A041853.P5676491920372542123` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A041853 has offset 0).

The definition of A041853 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A041853.P5676491920372542123

`ogf((1+6x-x^2)/(1-254x^2+x^4))`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A041853

/-- `ogf((1+6x-x^2)/(1-254x^2+x^4))` -/
def P5676491920372542123.Spec : Prop :=
  ∀ n, P5676491920372542123.a n = A041853 n

theorem P5676491920372542123.correct : P5676491920372542123.Spec := by
  intro n
  simp only [A041853]

end A041853

/-! ## A041853.P5437799891177593509

`∑[A041203(3*n)]`
-/

namespace A041853.P5437799891177593509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041203 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A041853.P5437799891177593509

namespace A041853

/-- `∑[A041203(3*n)]` -/
def P5437799891177593509.Spec : Prop :=
  ∀ n, P5437799891177593509.a n = A041853 n

end A041853

/-! ## A041853.P3887245152055042085

`A041203(3*n+2)/2`
-/

namespace A041853.P3887245152055042085
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041203 (3 * n + 2) : ℚ) / 2

end

end A041853.P3887245152055042085

namespace A041853

/-- `A041203(3*n+2)/2` -/
def P3887245152055042085.Spec : Prop :=
  ∀ n, P3887245152055042085.a n = (A041853 n : ℚ)

end A041853

/-! ## A041853.P5358573401952483450

`A041203(3*n+1)-a(n-1)` with `a(0)=1`
-/

namespace A041853.P5358573401952483450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A041203 (3 * n + 1) - a (n - 1)

end

end A041853.P5358573401952483450

namespace A041853

/-- `A041203(3*n+1)-a(n-1)` -/
def P5358573401952483450.Spec : Prop :=
  ∀ n, P5358573401952483450.a n = A041853 n

end A041853

/-!
# A041866: Numerators of continued fraction convergents to sqrt(455).

The programs for A041866, the canonical program `A041866.P13085798008823849792` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A041866 has offset 0).

The definition of A041866 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A041866.P13085798008823849792

`ogf((21+64x+21x^2-x^3)/(1-128x^2+x^4))`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A041866

/-- `ogf((21+64x+21x^2-x^3)/(1-128x^2+x^4))` -/
def P13085798008823849792.Spec : Prop :=
  ∀ n, P13085798008823849792.a n = A041866 n

theorem P13085798008823849792.correct : P13085798008823849792.Spec := by
  intro n
  simp only [A041866]

end A041866

/-!
# A041867: Denominators of continued fraction convergents to sqrt(455).

The programs for A041867, the canonical program `A041867.P8436151594845562776` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A041867 has offset 0).

The definition of A041867 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A041867.P4779281687415064710

`ogf((1+3x-x^2)/(1-128x^2+x^4))`
-/

namespace A041867.P4779281687415064710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 3, -1] [1, 0, -128, 0, 1] n

end

end A041867.P4779281687415064710

namespace A041867

/-- `ogf((1+3x-x^2)/(1-128x^2+x^4))` -/
def P4779281687415064710.Spec : Prop :=
  ∀ n, P4779281687415064710.a n = A041867 n

end A041867

/-! ## A041867.P8436151594845562776

`128*a(n-2)-a(n-4)` with `a(0)=1, a(1)=3, a(2)=127, a(3)=384`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A041867

/-- `128*a(n-2)-a(n-4)` -/
def P8436151594845562776.Spec : Prop :=
  ∀ n, P8436151594845562776.a n = A041867 n

theorem P8436151594845562776.correct : P8436151594845562776.Spec := by
  intro n
  simp only [A041867]

end A041867

/-!
# A041872: Numerators of continued fraction convergents to sqrt(458).

The programs for A041872, the canonical program `A041872.P965326051393072569` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A041872 has offset 0).

The definition of A041872 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A041872.P965326051393072569

`ogf((21+43x+107x^2+43x^3-21x^4+x^5)/(1-214x^3-x^6))`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A041872

/-- `ogf((21+43x+107x^2+43x^3-21x^4+x^5)/(1-214x^3-x^6))` -/
def P965326051393072569.Spec : Prop :=
  ∀ n, P965326051393072569.a n = A041872 n

theorem P965326051393072569.correct : P965326051393072569.Spec := by
  intro n
  simp only [A041872]

end A041872

/-!
# A041873: Denominators of continued fraction convergents to sqrt(458).

The programs for A041873, the canonical program `A041873.P12579184603507606214` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A041873 has offset 0).

The definition of A041873 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A041873.P12579184603507606214

`ogf((1+2x+5x^2-2x^3+x^4)/(1-214x^3-x^6))`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A041873

/-- `ogf((1+2x+5x^2-2x^3+x^4)/(1-214x^3-x^6))` -/
def P12579184603507606214.Spec : Prop :=
  ∀ n, P12579184603507606214.a n = A041873 n

theorem P12579184603507606214.correct : P12579184603507606214.Spec := by
  intro n
  simp only [A041873]

end A041873

/-!
# A041875: Denominators of continued fraction convergents to sqrt(459).

The programs for A041875, there is no canonical definition to state claims against.
-/

/-! ## A041875.P5920167256232983670

`A270613(A108469(n))+A130250(n)`
-/

namespace A041875.P5920167256232983670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270613 (A108469 n).toNat + A130250 n

end

end A041875.P5920167256232983670

/-!
# A041877: Denominators of continued fraction convergents to sqrt(460).

The programs for A041877, there is no canonical definition to state claims against.
-/

/-! ## A041877.P17613897884908750070

`record[A001055(∑[A101932(n+1)])]`
-/

namespace A041877.P17613897884908750070
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101932 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001055 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A041877.P17613897884908750070

/-!
# A041880: Numerators of continued fraction convergents to sqrt(462).

The programs for A041880, the canonical program `A041880.P2088595496637560564` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A041880 has offset 0).

The definition of A041880 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A041880.P2088595496637560564

`ogf((21+43x+21x^2-x^3)/(1-86x^2+x^4))`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A041880

/-- `ogf((21+43x+21x^2-x^3)/(1-86x^2+x^4))` -/
def P2088595496637560564.Spec : Prop :=
  ∀ n, P2088595496637560564.a n = A041880 n

theorem P2088595496637560564.correct : P2088595496637560564.Spec := by
  intro n
  simp only [A041880]

end A041880

/-!
# A041881: Denominators of continued fraction convergents to sqrt(462).

The programs for A041881, the canonical program `A041881.P3494221726450464264` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A041881 has offset 0).

The definition of A041881 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A041881.P8479117649230563572

`ogf((1+2x-x^2)/(1-86x^2+x^4))`
-/

namespace A041881.P8479117649230563572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, -1] [1, 0, -86, 0, 1] n

end

end A041881.P8479117649230563572

namespace A041881

/-- `ogf((1+2x-x^2)/(1-86x^2+x^4))` -/
def P8479117649230563572.Spec : Prop :=
  ∀ n, P8479117649230563572.a n = A041881 n

end A041881

/-! ## A041881.P3494221726450464264

`86*a(n-2)-a(n-4)` with `a(0)=1, a(1)=2, a(2)=85, a(3)=172`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A041881

/-- `86*a(n-2)-a(n-4)` -/
def P3494221726450464264.Spec : Prop :=
  ∀ n, P3494221726450464264.a n = A041881 n

theorem P3494221726450464264.correct : P3494221726450464264.Spec := by
  intro n
  simp only [A041881]

end A041881

/-!
# A041883: Denominators of continued fraction convergents to sqrt(463).

The programs for A041883, there is no canonical definition to state claims against.
-/

/-! ## A041883.P9454192806757061503

`A296339(A189346(n+1)+n!)`
-/

namespace A041883.P9454192806757061503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296339 (A189346 (n + 1) + (Nat.factorial n : ℤ)).toNat

end

end A041883.P9454192806757061503

/-!
# A041885: Denominators of continued fraction convergents to sqrt(464).

The programs for A041885, there is no canonical definition to state claims against.
-/

/-! ## A041885.P13320199858850016027

`a(n-2)+a(n-1)*A040442(n)` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A041885.P13320199858850016027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  a (n - 2) + a (n - 1) * A040442 n

end

end A041885.P13320199858850016027

/-! ## A041885.P12637166349016158592

`a(n-2)+gcd(5, A048143(n))*a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A041885.P12637166349016158592
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 2) + Int.gcd 5 (A048143 n) * a (n - 1)

end

end A041885.P12637166349016158592

/-!
# A041890: Numerators of continued fraction convergents to sqrt(467).

The programs for A041890, there is no canonical definition to state claims against.
-/

/-! ## A041890.P13259806336945393226

`A210357(A042812(n)-1)`
-/

namespace A041890.P13259806336945393226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210357 (A042812 n - 1).toNat

end

end A041890.P13259806336945393226

/-!
# A041895: Denominators of continued fraction convergents to sqrt(469).

The programs for A041895, there is no canonical definition to state claims against.
-/

/-! ## A041895.P12490436760268009420

`a(n-2)+a(n-1)*A040447(n)` with `a(0)=1, a(1)=1`
-/

namespace A041895.P12490436760268009420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 2) + a (n - 1) * A040447 n

end

end A041895.P12490436760268009420

/-!
# A041899: Denominators of continued fraction convergents to sqrt(471).

The programs for A041899, there is no canonical definition to state claims against.
-/

/-! ## A041899.P15588680039280619498

`A278060(A148742(n))`
-/

namespace A041899.P15588680039280619498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278060 (A148742 n).toNat

end

end A041899.P15588680039280619498

/-! ## A041899.P257867575721770539

`A327471(n)+A061358(A006013(n))`
-/

namespace A041899.P257867575721770539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327471 n + A061358 (A006013 n).toNat

end

end A041899.P257867575721770539

