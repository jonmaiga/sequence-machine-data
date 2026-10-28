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
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C043
import Seq.B000.C044
import Seq.B000.C045
import Seq.B000.C046
import Seq.B000.C047
import Seq.B000.C048
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C010
import Seq.B001.C013
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
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
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
import Seq.Opaque.C024

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A361600: Square array T(n,k), n >= 0, k >= 0, read by antidiagonals downwards, where T(n,k) = n! * Sum_{j=0..n} binomial(n+(k-1)*j,k*j)/j!.

The programs for A361600, there is no canonical definition to state claims against.
-/

/-! ## A361600.P8700501892053024115

`A369137(A361830(n))`
-/

namespace A361600.P8700501892053024115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369137 (A361830 n).toNat

end

end A361600.P8700501892053024115

/-! ## A361600.P14899937763020296110

`A156251(2*A008305(n+1))`
-/

namespace A361600.P14899937763020296110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156251 (2 * A008305 (n + 1)).toNat

end

end A361600.P14899937763020296110

/-! ## A361600.P13989990595901995830

`A000005(A059268(n)^A258306(n))`
-/

namespace A361600.P13989990595901995830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((A059268 n : ℚ) ^ (A258306 n : ℤ))).toNat

end

end A361600.P13989990595901995830

/-! ## A361600.P8407989227521252124

`A000005(A059268(n)^A355173(n))`
-/

namespace A361600.P8407989227521252124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((A059268 n : ℚ) ^ (A355173 n : ℤ))).toNat

end

end A361600.P8407989227521252124

/-! ## A361600.P14648698411267139870

`A000005(2^(A122366(n)-A062344(n)))`
-/

namespace A361600.P14648698411267139870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A122366 n - A062344 n : ℤ))).toNat

end

end A361600.P14648698411267139870

/-!
# A361607: a(n) = n! * Sum_{k=0..n} binomial(n+(n-1)*k,n*k)/k!.

The programs for A361607, the canonical program `A361607.P17433034634972529649` is in `Seq.B000.C046`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A361607 has offset 0).

The definition of A361607 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A361607.P17433034634972529649

`n!*∑{#}[n, C(n+(n-1)*#, n*#)/#!]`

The canonical program, it is in `Seq.B000.C046`.
-/

namespace A361607

/-- `n!*∑{#}[n, C(n+(n-1)*#, n*#)/#!]` -/
def P17433034634972529649.Spec : Prop :=
  ∀ n, P17433034634972529649.a n = (A361607 n : ℚ)

end A361607

/-! ## A361607.P7715842845123575102

`A361600(∑[4*n])`
-/

namespace A361607.P7715842845123575102
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361600 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A361607.P7715842845123575102

namespace A361607

/-- `A361600(∑[4*n])` -/
def P7715842845123575102.Spec : Prop :=
  ∀ n, P7715842845123575102.a n = A361607 n

end A361607

/-! ## A361607.P12202024942414846169

`A361600(A046092(n))+A025469(n)`
-/

namespace A361607.P12202024942414846169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361600 (A046092 n).toNat + A025469 n

end

end A361607.P12202024942414846169

namespace A361607

/-- `A361600(A046092(n))+A025469(n)` -/
def P12202024942414846169.Spec : Prop :=
  ∀ n, P12202024942414846169.a n = A361607 n

end A361607

/-! ## A361607.P1521868567443596768

`A361600(A046092(n))+A185246(n)`
-/

namespace A361607.P1521868567443596768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361600 (A046092 n).toNat + A185246 n

end

end A361607.P1521868567443596768

namespace A361607

/-- `A361600(A046092(n))+A185246(n)` -/
def P1521868567443596768.Spec : Prop :=
  ∀ n, P1521868567443596768.a n = A361607 n

end A361607

/-! ## A361607.P2416170571121128094

`A361600(A046092(n))+A185284(n)`
-/

namespace A361607.P2416170571121128094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361600 (A046092 n).toNat + A185284 n

end

end A361607.P2416170571121128094

namespace A361607

/-- `A361600(A046092(n))+A185284(n)` -/
def P2416170571121128094.Spec : Prop :=
  ∀ n, P2416170571121128094.a n = A361607 n

end A361607

/-!
# A361609: a(n) = 4^n*(1 + (23/8)*n + (9/8)*n^2).

The programs for A361609, the canonical program `A361609.P17585846011862066256` is in `Seq.B000.C046`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A361609 has offset 0).

The definition of A361609 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4^n*(1+23/8*n+9/8*n²)` (program `A361609.P1913217696145794601`, by `A361609.P1913217696145794601.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A361609.P1913217696145794601

`4^n*(1+23/8*n+9/8*n²)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A361609.P1913217696145794601
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 ^ n : ℚ) * (1 + (23 : ℚ) / 8 * (n : ℚ) + (9 : ℚ) / 8 * (n ^ 2 : ℚ))

end

end A361609.P1913217696145794601

namespace A361609

/-- `4^n*(1+23/8*n+9/8*n²)` -/
def P1913217696145794601.Spec : Prop :=
  ∀ n, P1913217696145794601.a n = (A361609 n : ℚ)

theorem P1913217696145794601.correct : P1913217696145794601.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A361609, Nat.add_sub_cancel, A361609.P1913217696145794601.a, A361609.P17585846011862066256.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A361609, Nat.add_sub_cancel, A361609.P1913217696145794601.a, A361609.P17585846011862066256.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [← h1, ← h2, ← h3]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A361609

/-! ## A361609.P15973587973885645847

`ogf((1+8x-12x^2)/(1-12x+48x^2-64x^3))`
-/

namespace A361609.P15973587973885645847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 8, -12] [1, -12, 48, -64] n

end

end A361609.P15973587973885645847

namespace A361609

/-- `ogf((1+8x-12x^2)/(1-12x+48x^2-64x^3))` -/
def P15973587973885645847.Spec : Prop :=
  ∀ n, P15973587973885645847.a n = A361609 n

end A361609

/-! ## A361609.P17585846011862066256

`12*a(n-1)-48*a(n-2)+64*a(n-3)` with `a(0)=1, a(1)=20, a(2)=180`

The canonical program, it is in `Seq.B000.C046`.
-/

namespace A361609

/-- `12*a(n-1)-48*a(n-2)+64*a(n-3)` -/
def P17585846011862066256.Spec : Prop :=
  ∀ n, P17585846011862066256.a n = A361609 n

theorem P17585846011862066256.correct : P17585846011862066256.Spec := by
  intro n
  simp only [A361609]

end A361609

/-!
# A361610: a(n) = 5^n*(n+1)*(4*n^2+14*n+3)/3.

The programs for A361610, the canonical program `A361610.P8255674770240994609` is in `Seq.B000.C046`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A361610 has offset 0).

The definition of A361610 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A361610.P8255674770240994609

`5^n*(n+1)*(4*n²+14*n+3)/3`

The canonical program, it is in `Seq.B000.C046`.
-/

namespace A361610

/-- `5^n*(n+1)*(4*n²+14*n+3)/3` -/
def P8255674770240994609.Spec : Prop :=
  ∀ n, P8255674770240994609.a n = (A361610 n : ℚ)

end A361610

/-!
# A361611: Lexicographically least increasing sequence of semiprimes a(n) such that a(n) - a(n-1) and a(n) + a(n-1) are also semiprimes.

The programs for A361611, there is no canonical definition to state claims against.
-/

/-! ## A361611.P2008353760343613112

`A338906(A001935(n)*A286102(n+1))`
-/

namespace A361611.P2008353760343613112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338906 (A001935 n * A286102 (n + 1)).toNat

end

end A361611.P2008353760343613112

/-! ## A361611.P15972162177824125604

`A338906(∪[A000149(3*n), A026532(n+1)])`
-/

namespace A361611.P15972162177824125604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000149 (3 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026532 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338906 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A361611.P15972162177824125604

/-!
# A361612: Decimal expansion of sqrt(10) truncated to n places (after the decimal point).

The programs for A361612, the canonical program `A361612.P6490670511747701562` is in `Seq.B001.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A361612 has offset 0).

The definition of A361612 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A361612.P11955132798570822154

`floor(sqrt(10)*10^n)`
-/

namespace A361612.P11955132798570822154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (10 : ℝ) * (10 ^ n : ℝ)⌋

end

end A361612.P11955132798570822154

namespace A361612

/-- `floor(sqrt(10)*10^n)` -/
def P11955132798570822154.Spec : Prop :=
  ∀ n, P11955132798570822154.a n = A361612 n

end A361612

/-! ## A361612.P6490670511747701562

`A017934(2*n+1)`

The canonical program, it is in `Seq.B001.C013`.
-/

namespace A361612

/-- `A017934(2*n+1)` -/
def P6490670511747701562.Spec : Prop :=
  ∀ n, P6490670511747701562.a n = A361612 n

theorem P6490670511747701562.correct : P6490670511747701562.Spec := by
  intro n
  simp only [A361612]

end A361612

/-! ## A361612.P16181673112789505390

`A049416(Δ[n²])`
-/

namespace A361612.P16181673112789505390
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049416 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A361612.P16181673112789505390

namespace A361612

/-- `A049416(Δ[n²])` -/
def P16181673112789505390.Spec : Prop :=
  ∀ n, P16181673112789505390.a n = A361612 n

end A361612

/-! ## A361612.P16660016321617745302

`A018072(4*n+2)`
-/

namespace A361612.P16660016321617745302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018072 (4 * n + 2)

end

end A361612.P16660016321617745302

namespace A361612

/-- `A018072(4*n+2)` -/
def P16660016321617745302.Spec : Prop :=
  ∀ n, P16660016321617745302.a n = A361612 n

end A361612

/-! ## A361612.P8196812626780248831

`A114322(4*n+2)`
-/

namespace A361612.P8196812626780248831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114322 (4 * n + 2)

end

end A361612.P8196812626780248831

namespace A361612

/-- `A114322(4*n+2)` -/
def P8196812626780248831.Spec : Prop :=
  ∀ n, P8196812626780248831.a n = A361612 n

end A361612

/-! ## A361612.P1620334074437737555

`A017936(2*(n+1))-1`
-/

namespace A361612.P1620334074437737555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017936 (2 * (n + 1)) - 1

end

end A361612.P1620334074437737555

namespace A361612

/-- `A017936(2*(n+1))-1` -/
def P1620334074437737555.Spec : Prop :=
  ∀ n, P1620334074437737555.a n = A361612 n

end A361612

/-! ## A361612.P4062616425259578371

`∩[A049416(n+1), A017934(n)]`
-/

namespace A361612.P4062616425259578371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049416 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017934 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A361612.P4062616425259578371

namespace A361612

/-- `∩[A049416(n+1), A017934(n)]` -/
def P4062616425259578371.Spec : Prop :=
  ∀ n, (P4062616425259578371.a n : ℤ) = A361612 n

end A361612

/-! ## A361612.P5028163504114054567

`A130080(A016777(2*n+1))-1`
-/

namespace A361612.P5028163504114054567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130080 (A016777 (2 * n + 1)).toNat - 1

end

end A361612.P5028163504114054567

namespace A361612

/-- `A130080(A016777(2*n+1))-1` -/
def P5028163504114054567.Spec : Prop :=
  ∀ n, P5028163504114054567.a n = A361612 n

end A361612

/-! ## A361612.P7472600810472470550

`A130082(A016813(2*n+1))-1`
-/

namespace A361612.P7472600810472470550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130082 (A016813 (2 * n + 1)).toNat - 1

end

end A361612.P7472600810472470550

namespace A361612

/-- `A130082(A016813(2*n+1))-1` -/
def P7472600810472470550.Spec : Prop :=
  ∀ n, P7472600810472470550.a n = A361612 n

end A361612

/-! ## A361612.P15987179444331689976

`A130084(A016861(2*n+1))-1`
-/

namespace A361612.P15987179444331689976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130084 (A016861 (2 * n + 1)).toNat - 1

end

end A361612.P15987179444331689976

namespace A361612

/-- `A130084(A016861(2*n+1))-1` -/
def P15987179444331689976.Spec : Prop :=
  ∀ n, P15987179444331689976.a n = A361612 n

end A361612

/-! ## A361612.P3927575467591466226

`A049416(2*(n+1))-A049415(2*(n+1))`
-/

namespace A361612.P3927575467591466226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049416 (2 * (n + 1)) - A049415 (2 * (n + 1))

end

end A361612.P3927575467591466226

namespace A361612

/-- `A049416(2*(n+1))-A049415(2*(n+1))` -/
def P3927575467591466226.Spec : Prop :=
  ∀ n, P3927575467591466226.a n = A361612 n

end A361612

/-! ## A361612.P14165134696743784143

`A049416(2*(n+1))-A062940(2*(n+1))`
-/

namespace A361612.P14165134696743784143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049416 (2 * (n + 1)) - A062940 (2 * (n + 1))

end

end A361612.P14165134696743784143

namespace A361612

/-- `A049416(2*(n+1))-A062940(2*(n+1))` -/
def P14165134696743784143.Spec : Prop :=
  ∀ n, P14165134696743784143.a n = A361612 n

end A361612

/-!
# A361615: a(n) is the smallest 5-rough number with exactly n divisors.

The programs for A361615, there is no canonical definition to state claims against.
-/

/-! ## A361615.P2379381082364021443

`A357852(A037019(n+1))`
-/

namespace A361615.P2379381082364021443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357852 (A037019 (n + 1)).toNat

end

end A361615.P2379381082364021443

/-! ## A361615.P204763657973613948

`A003961(A038547(n+1))`
-/

namespace A361615.P204763657973613948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (A038547 (n + 1)).toNat

end

end A361615.P204763657973613948

/-! ## A361615.P7288904857129699240

`A003961(A348199(n+1))`
-/

namespace A361615.P7288904857129699240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (A348199 (n + 1)).toNat

end

end A361615.P7288904857129699240

/-! ## A361615.P6099614573091464696

`A349161(A398694(n+1))`
-/

namespace A361615.P6099614573091464696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349161 (A398694 (n + 1)).toNat

end

end A361615.P6099614573091464696

/-! ## A361615.P8397701230299524597

`A003961(sqrt(A357450(n+1)))`
-/

namespace A361615.P8397701230299524597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (SequenceMachineLib.roundAway (Real.sqrt (A357450 (n + 1) : ℝ))).toNat

end

end A361615.P8397701230299524597

/-!
# A361616: Square array T(n,k), n >= 0, k >= 0, read by antidiagonals downwards, where T(n,k) = n! * Sum_{j=0..n} binomial(n+(k-1)*(j+1),n-j)/j!.

The programs for A361616, there is no canonical definition to state claims against.
-/

/-! ## A361616.P10887872451968916019

`or(A147820(A144303(n)), A259776(n))`
-/

namespace A361616.P10887872451968916019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A147820 (A144303 n).toNat) (A259776 n)

end

end A361616.P10887872451968916019

/-! ## A361616.P9281145694560217504

`gcd(A122941(n+1), A307801(A001263(n+1)))`
-/

namespace A361616.P9281145694560217504
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A122941 (n + 1)) (A307801 (A001263 (n + 1)).toNat)

end

end A361616.P9281145694560217504

/-! ## A361616.P1774306948559529344

`gcd(A122941(n+1), A321731(A122919(n)))`
-/

namespace A361616.P1774306948559529344
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A122941 (n + 1)) (A321731 (A122919 n).toNat)

end

end A361616.P1774306948559529344

/-!
# A361617: a(n) = n! * Sum_{k=0..n} binomial(n+(n-1)*(k+1),n-k)/k!.

The programs for A361617, there is no canonical definition to state claims against.
-/

/-! ## A361617.P14979817749194092596

`A361616(∑[4*n])`
-/

namespace A361617.P14979817749194092596
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361616 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A361617.P14979817749194092596

/-! ## A361617.P11048304962098967949

`A361616(A046092(n))+A025469(n)`
-/

namespace A361617.P11048304962098967949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361616 (A046092 n).toNat + A025469 n

end

end A361617.P11048304962098967949

/-! ## A361617.P3731893505289460313

`A361616(A046092(n))+A185246(n)`
-/

namespace A361617.P3731893505289460313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361616 (A046092 n).toNat + A185246 n

end

end A361617.P3731893505289460313

/-! ## A361617.P79323866325068411

`A361616(A046092(n))+A185284(n)`
-/

namespace A361617.P79323866325068411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361616 (A046092 n).toNat + A185284 n

end

end A361617.P79323866325068411

/-! ## A361617.P15296166978224237691

`or(A000007(n), A361616(A046092(n)))`
-/

namespace A361617.P15296166978224237691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A361616 (A046092 n).toNat)

end

end A361617.P15296166978224237691

/-!
# A361622: Number of distinct circles that can be constructed from a point on the origin and n equally spaced points on each of the +x,-x,+y,-y coordinates axes using only a compass.

The programs for A361622, there is no canonical definition to state claims against.
-/

/-! ## A361622.P6643310971866516184

`A120634(A055436(n+1))`
-/

namespace A361622.P6643310971866516184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120634 (A055436 (n + 1)).toNat

end

end A361622.P6643310971866516184

/-!
# A361625: Number of free polyominoes with checkerboard-pattern-colored vertices with n cells.

The programs for A361625, there is no canonical definition to state claims against.
-/

/-! ## A361625.P632928926080906339

`A366766(∑[n+4]+11)`
-/

namespace A361625.P632928926080906339
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366766 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A361625.P632928926080906339

/-! ## A361625.P14793393345990755714

`A366766(A055998(n+2)+8)%A006139(n+1)`
-/

namespace A361625.P14793393345990755714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A366766 (A055998 (n + 2) + 8).toNat) (A006139 (n + 1))

end

end A361625.P14793393345990755714

/-! ## A361625.P452784560105478395

`A247357(A148171(n))`
-/

namespace A361625.P452784560105478395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247357 (A148171 n).toNat

end

end A361625.P452784560105478395

/-!
# A361626: Expansion of e.g.f. exp( x/(1-x)^3 ) / (1-x)^2.

The programs for A361626, the canonical program `A361626.P6110959544319269133` is in `Seq.B000.C046`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A361626 has offset 0).

The definition of A361626 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A361626.P6110959544319269133

`n!*∑{#}[n, C(n+2*#+1, n-#)/#!]`

The canonical program, it is in `Seq.B000.C046`.
-/

namespace A361626

/-- `n!*∑{#}[n, C(n+2*#+1, n-#)/#!]` -/
def P6110959544319269133.Spec : Prop :=
  ∀ n, P6110959544319269133.a n = (A361626 n : ℚ)

end A361626

/-! ## A361626.P5920751227474332858

`∑{#}[n, (n+2*#+1)!/(3*#+1)!*C(n, #)]`
-/

namespace A361626.P5920751227474332858
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.factorial (n + 2 * k + 1) : ℚ) / (Nat.factorial (3 * k + 1) : ℚ) * (Nat.choose n k : ℚ)

end

end A361626.P5920751227474332858

namespace A361626

/-- `∑{#}[n, (n+2*#+1)!/(3*#+1)!*C(n, #)]` -/
def P5920751227474332858.Spec : Prop :=
  ∀ n, P5920751227474332858.a n = (A361626 n : ℚ)

end A361626

/-!
# A361627: Positive integers such that GCD(A007504(n),n) != 1.

The programs for A361627, the canonical program `A361627.P2747137712555199260` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A361627 has offset 1).

The definition of A361627 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 511 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A361627.P14372710698004777025

`lt[1, gcd(n, A007504(n))]`
-/

namespace A361627.P14372710698004777025
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A007504 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A361627.P14372710698004777025

namespace A361627

/-- `lt[1, gcd(n, A007504(n))]` -/
def P14372710698004777025.Spec : Prop :=
  ∀ n, (P14372710698004777025.a n : ℤ) = A361627 (n + 1)

end A361627

/-! ## A361627.P2747137712555199260

`lt[A301274(n+1), n]+1`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A361627

/-- `lt[A301274(n+1), n]+1` -/
def P2747137712555199260.Spec : Prop :=
  ∀ n, (P2747137712555199260.a n : ℤ) = A361627 (n + 1)

theorem P2747137712555199260.correct : P2747137712555199260.Spec := by
  intro n
  simp only [A361627, Nat.add_sub_cancel]

end A361627

/-! ## A361627.P13531468758323896764

`A020725(lt[A301274(n+1), n])`
-/

namespace A361627.P13531468758323896764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301274 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A361627.P13531468758323896764

namespace A361627

/-- `A020725(lt[A301274(n+1), n])` -/
def P13531468758323896764.Spec : Prop :=
  ∀ n, P13531468758323896764.a n = A361627 (n + 1)

end A361627

/-! ## A361627.P5342134516967070073

`lt[A301274(A000007(n)+n), n]`
-/

namespace A361627.P5342134516967070073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301274 (A000007 n + (n : ℤ)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A361627.P5342134516967070073

namespace A361627

/-- `lt[A301274(A000007(n)+n), n]` -/
def P5342134516967070073.Spec : Prop :=
  ∀ n, (P5342134516967070073.a n : ℤ) = A361627 (n + 1)

end A361627

/-! ## A361627.P1239620621274945253

`lt[A301273(n+1), A007504(n)]+1`
-/

namespace A361627.P1239620621274945253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301273 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A361627.P1239620621274945253

namespace A361627

/-- `lt[A301273(n+1), A007504(n)]+1` -/
def P1239620621274945253.Spec : Prop :=
  ∀ n, (P1239620621274945253.a n : ℤ) = A361627 (n + 1)

end A361627

/-!
# A361628: Sphenic numbers (products of 3 distinct primes) whose digits are primes.

The programs for A361628, there is no canonical definition to state claims against.
-/

/-! ## A361628.P5024811564345182184

`filter[A046034(n+1), A354926(#)]`
-/

namespace A361628.P5024811564345182184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046034 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354926 (f1 j).toNat = 1) n)

end

end A361628.P5024811564345182184

/-! ## A361628.P8493311616917970956

`filter[A061371(n+1), A354926(#)]`
-/

namespace A361628.P8493311616917970956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061371 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354926 (f1 j).toNat = 1) n)

end

end A361628.P8493311616917970956

/-! ## A361628.P5842116443134079536

`filter[A062087(n+1), A354926(#)]`
-/

namespace A361628.P5842116443134079536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062087 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354926 (f1 j).toNat = 1) n)

end

end A361628.P5842116443134079536

/-! ## A361628.P16082550181099658430

`filter[A062087(n+1), A358753(#)]`
-/

namespace A361628.P16082550181099658430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062087 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358753 (f1 j).toNat = 1) n)

end

end A361628.P16082550181099658430

/-! ## A361628.P5950245492709011546

`filter[A062087(n+1), A373975(#)]`
-/

namespace A361628.P5950245492709011546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062087 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373975 (f1 j).toNat = 1) n)

end

end A361628.P5950245492709011546

/-! ## A361628.P4003892888279874455

`∩[A007304(n+1), A046034(n+1)]`
-/

namespace A361628.P4003892888279874455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007304 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046034 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A361628.P4003892888279874455

/-! ## A361628.P16381540254756669032

`∩[A007304(n+1), A061371(n+1)]`
-/

namespace A361628.P16381540254756669032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007304 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061371 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A361628.P16381540254756669032

/-! ## A361628.P15213928474840219508

`∩[A007304(n+1), A062087(n+1)]`
-/

namespace A361628.P15213928474840219508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007304 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062087 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A361628.P15213928474840219508

/-! ## A361628.P15298183738417814965

`∩[A014612(n+1), A062087(n+1)]`
-/

namespace A361628.P15298183738417814965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014612 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062087 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A361628.P15298183738417814965

/-! ## A361628.P12682463797375823482

`∩[A030626(n+1), A062087(n+1)]`
-/

namespace A361628.P12682463797375823482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030626 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062087 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A361628.P12682463797375823482

/-! ## A361628.P17243605988306199716

`∩[A062087(n+1), A111398(n+1)]`
-/

namespace A361628.P17243605988306199716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062087 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111398 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A361628.P17243605988306199716

/-! ## A361628.P4115609040310636730

`∩[A062087(n+1), A217856(n+1)]`
-/

namespace A361628.P4115609040310636730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062087 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217856 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A361628.P4115609040310636730

/-! ## A361628.P7669717135940994418

`∩[A229972(n+1), A062087(n+1)]`
-/

namespace A361628.P7669717135940994418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229972 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062087 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A361628.P7669717135940994418

/-! ## A361628.P78645781909901160

`∩[A062087(n+1), A109426(n+1)]`
-/

namespace A361628.P78645781909901160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062087 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109426 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A361628.P78645781909901160

/-! ## A361628.P3791521970507590524

`∩[A030059(n+1), A061371(n+1)]`
-/

namespace A361628.P3791521970507590524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030059 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061371 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A361628.P3791521970507590524

/-!
# A361630: a(n) is the numerator of the median of the distinct prime factors of n.

The programs for A361630, there is no canonical definition to state claims against.
-/

/-! ## A361630.P4256105359282966583

`A361632(∏{p}[n+2, #])`
-/

namespace A361630.P4256105359282966583
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361632 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A361630.P4256105359282966583

/-! ## A361630.P8828708936828765216

`A361632(A007947(n+2))`
-/

namespace A361630.P8828708936828765216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361632 (A007947 (n + 2)).toNat

end

end A361630.P8828708936828765216

/-! ## A361630.P15999752650803734909

`A361632(A015052(n+2))`
-/

namespace A361630.P15999752650803734909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361632 (A015052 (n + 2)).toNat

end

end A361630.P15999752650803734909

/-! ## A361630.P14746503728755742953

`A361632(A015053(n+2))`
-/

namespace A361630.P14746503728755742953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361632 (A015053 (n + 2)).toNat

end

end A361630.P14746503728755742953

/-! ## A361630.P5925882374690947587

`A361632(A053166(n+2))`
-/

namespace A361630.P5925882374690947587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361632 (A053166 (n + 2)).toNat

end

end A361630.P5925882374690947587

/-! ## A361630.P10332587908347856606

`A361632(A062759(n+2))`
-/

namespace A361630.P10332587908347856606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361632 (A062759 (n + 2)).toNat

end

end A361630.P10332587908347856606

/-! ## A361630.P13096673398122327085

`A026741(A360458(n+2))`
-/

namespace A361630.P13096673398122327085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A360458 (n + 2)).toNat

end

end A361630.P13096673398122327085

/-!
# A361631: a(n) is the denominator of the median of the distinct prime factors of n.

The programs for A361631, the canonical program `A361631.P4568243048912634249` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A361631 has offset 2).

The definition of A361631 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A361631.P6128637906260124655

`gcd(2, A076820(n+2))`
-/

namespace A361631.P6128637906260124655
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A076820 (n + 2))

end

end A361631.P6128637906260124655

namespace A361631

/-- `gcd(2, A076820(n+2))` -/
def P6128637906260124655.Spec : Prop :=
  ∀ n, (P6128637906260124655.a n : ℤ) = A361631 (n + 2)

end A361631

/-! ## A361631.P4568243048912634249

`gcd(n, A215480(n+2)+1)`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A361631

/-- `gcd(n, A215480(n+2)+1)` -/
def P4568243048912634249.Spec : Prop :=
  ∀ n, (P4568243048912634249.a n : ℤ) = A361631 (n + 2)

theorem P4568243048912634249.correct : P4568243048912634249.Spec := by
  intro n
  simp only [A361631, Nat.add_sub_cancel]

end A361631

/-! ## A361631.P5195668071181022317

`A001511(A076820(n+2))`
-/

namespace A361631.P5195668071181022317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A076820 (n + 2)).toNat

end

end A361631.P5195668071181022317

namespace A361631

/-- `A001511(A076820(n+2))` -/
def P5195668071181022317.Spec : Prop :=
  ∀ n, P5195668071181022317.a n = A361631 (n + 2)

end A361631

/-! ## A361631.P4006744060080919889

`A000034(A178921(n+2))`
-/

namespace A361631.P4006744060080919889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A178921 (n + 2)).toNat

end

end A361631.P4006744060080919889

namespace A361631

/-- `A000034(A178921(n+2))` -/
def P4006744060080919889.Spec : Prop :=
  ∀ n, P4006744060080919889.a n = A361631 (n + 2)

end A361631

/-! ## A361631.P6630447964052645651

`A138138(A206824(n+2)+1)`
-/

namespace A361631.P6630447964052645651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138138 (A206824 (n + 2) + 1).toNat

end

end A361631.P6630447964052645651

namespace A361631

/-- `A138138(A206824(n+2)+1)` -/
def P6630447964052645651.Spec : Prop :=
  ∀ n, P6630447964052645651.a n = A361631 (n + 2)

end A361631

/-! ## A361631.P2611912799740106465

`A354090(2*A293810(n+2))`
-/

namespace A361631.P2611912799740106465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354090 (2 * A293810 (n + 2)).toNat

end

end A361631.P2611912799740106465

namespace A361631

/-- `A354090(2*A293810(n+2))` -/
def P2611912799740106465.Spec : Prop :=
  ∀ n, P2611912799740106465.a n = A361631 (n + 2)

end A361631

/-! ## A361631.P13479826652241285209

`A360157(A360112(n+2)²+2)`
-/

namespace A361631.P13479826652241285209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360157 (A360112 (n + 2) ^ 2 + 2).toNat

end

end A361631.P13479826652241285209

namespace A361631

/-- `A360157(A360112(n+2)²+2)` -/
def P13479826652241285209.Spec : Prop :=
  ∀ n, P13479826652241285209.a n = A361631 (n + 2)

end A361631

/-! ## A361631.P3892391871630334179

`A382986(A006530(A051119(n+2)))`
-/

namespace A361631.P3892391871630334179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382986 (A006530 (A051119 (n + 2)).toNat).toNat

end

end A361631.P3892391871630334179

namespace A361631

/-- `A382986(A006530(A051119(n+2)))` -/
def P3892391871630334179.Spec : Prop :=
  ∀ n, P3892391871630334179.a n = A361631 (n + 2)

end A361631

/-! ## A361631.P17174284724554039217

`A382986(A006530(A293810(n+2)))`
-/

namespace A361631.P17174284724554039217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382986 (A006530 (A293810 (n + 2)).toNat).toNat

end

end A361631.P17174284724554039217

namespace A361631

/-- `A382986(A006530(A293810(n+2)))` -/
def P17174284724554039217.Spec : Prop :=
  ∀ n, P17174284724554039217.a n = A361631 (n + 2)

end A361631

/-! ## A361631.P9980580217838829637

`A368885(A034444(A229347(n+2)))`
-/

namespace A361631.P9980580217838829637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368885 (A034444 (A229347 (n + 2)).toNat).toNat

end

end A361631.P9980580217838829637

namespace A361631

/-- `A368885(A034444(A229347(n+2)))` -/
def P9980580217838829637.Spec : Prop :=
  ∀ n, P9980580217838829637.a n = A361631 (n + 2)

end A361631

/-! ## A361631.P6660860499039727428

`A181591(A382266(A250096(n+2)))`
-/

namespace A361631.P6660860499039727428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181591 (A382266 (A250096 (n + 2)).toNat).toNat

end

end A361631.P6660860499039727428

namespace A361631

/-- `A181591(A382266(A250096(n+2)))` -/
def P6660860499039727428.Spec : Prop :=
  ∀ n, P6660860499039727428.a n = A361631 (n + 2)

end A361631

/-! ## A361631.P2042571446447462742

`A087653(A048669(A007947((n+2)²)))`
-/

namespace A361631.P2042571446447462742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087653 (A048669 (A007947 ((n + 2) ^ 2)).toNat).toNat

end

end A361631.P2042571446447462742

namespace A361631

/-- `A087653(A048669(A007947((n+2)²)))` -/
def P2042571446447462742.Spec : Prop :=
  ∀ n, P2042571446447462742.a n = A361631 (n + 2)

end A361631

/-! ## A361631.P7708165050671733685

`val(∑{p}[n+2, 3^#], 2)!`
-/

namespace A361631.P7708165050671733685
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (SequenceMachineLib.valuation (∑ p ∈ Nat.primeFactors (f1 n), 3 ^ p) 2)

end

end A361631.P7708165050671733685

namespace A361631

/-- `val(∑{p}[n+2, 3^#], 2)!` -/
def P7708165050671733685.Spec : Prop :=
  ∀ n, (P7708165050671733685.a n : ℤ) = A361631 (n + 2)

end A361631

/-! ## A361631.P13473740340261396686

`A055801(A346773(n+2)²²)`
-/

namespace A361631.P13473740340261396686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055801 ((A346773 (n + 2) ^ 2) ^ 2).toNat

end

end A361631.P13473740340261396686

namespace A361631

/-- `A055801(A346773(n+2)²²)` -/
def P13473740340261396686.Spec : Prop :=
  ∀ n, P13473740340261396686.a n = A361631 (n + 2)

end A361631

/-! ## A361631.P3651238608270772379

`A369032(A369032(A166142(n+2)))`
-/

namespace A361631.P3651238608270772379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369032 (A369032 (A166142 (n + 2)).toNat).toNat

end

end A361631.P3651238608270772379

namespace A361631

/-- `A369032(A369032(A166142(n+2)))` -/
def P3651238608270772379.Spec : Prop :=
  ∀ n, P3651238608270772379.a n = A361631 (n + 2)

end A361631

/-! ## A361631.P8575755007750787153

`A040001(A002530(A048669(n+2))²)`
-/

namespace A361631.P8575755007750787153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (A002530 (A048669 (n + 2)).toNat ^ 2).toNat

end

end A361631.P8575755007750787153

namespace A361631

/-- `A040001(A002530(A048669(n+2))²)` -/
def P8575755007750787153.Spec : Prop :=
  ∀ n, P8575755007750787153.a n = A361631 (n + 2)

end A361631

/-! ## A361631.P8000682461916490043

`gcd(A017946(n), A323172(n+2))`
-/

namespace A361631.P8000682461916490043
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A017946 n) (A323172 (n + 2))

end

end A361631.P8000682461916490043

namespace A361631

/-- `gcd(A017946(n), A323172(n+2))` -/
def P8000682461916490043.Spec : Prop :=
  ∀ n, (P8000682461916490043.a n : ℤ) = A361631 (n + 2)

end A361631

/-! ## A361631.P5519342718981650740

`A174500(2*n+1)*A174500(A076820(n+2))`
-/

namespace A361631.P5519342718981650740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174500 (2 * n + 1) * A174500 (A076820 (n + 2)).toNat

end

end A361631.P5519342718981650740

namespace A361631

/-- `A174500(2*n+1)*A174500(A076820(n+2))` -/
def P5519342718981650740.Spec : Prop :=
  ∀ n, P5519342718981650740.a n = A361631 (n + 2)

end A361631

/-! ## A361631.P16705166846367628600

`gcd(A000116(n), A323172(n+2))`
-/

namespace A361631.P16705166846367628600
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000116 n) (A323172 (n + 2))

end

end A361631.P16705166846367628600

namespace A361631

/-- `gcd(A000116(n), A323172(n+2))` -/
def P16705166846367628600.Spec : Prop :=
  ∀ n, (P16705166846367628600.a n : ℤ) = A361631 (n + 2)

end A361631

/-! ## A361631.P9060298759466144467

`A034380(A076820(n+2)²²)`
-/

namespace A361631.P9060298759466144467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034380 ((A076820 (n + 2) ^ 2) ^ 2).toNat

end

end A361631.P9060298759466144467

namespace A361631

/-- `A034380(A076820(n+2)²²)` -/
def P9060298759466144467.Spec : Prop :=
  ∀ n, P9060298759466144467.a n = A361631 (n + 2)

end A361631

/-!
# A361632: a(n) is the numerator of the median of the prime factors of n with repetition.

The programs for A361632, there is no canonical definition to state claims against.
-/

/-! ## A361632.P6850132256892515970

`A026741(A360459(n+2))`
-/

namespace A361632.P6850132256892515970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A360459 (n + 2)).toNat

end

end A361632.P6850132256892515970

/-! ## A361632.P13060523611873116745

`A060819(2*A360459(n+2))`
-/

namespace A361632.P13060523611873116745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060819 (2 * A360459 (n + 2)).toNat

end

end A361632.P13060523611873116745

/-! ## A361632.P14170581110128874791

`A123528(n+2)%A185454(A231145(3*n+2))`
-/

namespace A361632.P14170581110128874791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A123528 (n + 2)) (A185454 (A231145 (3 * n + 2)).toNat)

end

end A361632.P14170581110128874791

/-! ## A361632.P2792482572151185591

`A123528(n+2)%A052369(A186850(n+1))`
-/

namespace A361632.P2792482572151185591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A123528 (n + 2)) (A052369 (A186850 (n + 1)).toNat)

end

end A361632.P2792482572151185591

/-! ## A361632.P16919940578162724866

`A123528(n+2)-A065335(A001608(2*(n+1)))`
-/

namespace A361632.P16919940578162724866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123528 (n + 2) - A065335 (A001608 (2 * (n + 1))).toNat

end

end A361632.P16919940578162724866

/-!
# A361633: a(n) is the denominator of the median of the prime factors of n with repetition.

The programs for A361633, there is no canonical definition to state claims against.
-/

/-! ## A361633.P5466291395915468749

`A356170(n+2)+1`
-/

namespace A361633.P5466291395915468749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356170 (n + 2) + 1

end

end A361633.P5466291395915468749

/-! ## A361633.P8308187717726088659

`gcd(n, A327500(n+2))`
-/

namespace A361633.P8308187717726088659
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A327500 (n + 2))

end

end A361633.P8308187717726088659

/-! ## A361633.P8808145276621048466

`gcd(2, n^A320656(n+2))`
-/

namespace A361633.P8808145276621048466
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A320656 (n + 2) : ℤ)))

end

end A361633.P8808145276621048466

/-! ## A361633.P15688798029991392430

`char[A072978(n+1)-2]+1`
-/

namespace A361633.P15688798029991392430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072978 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f1 j = (n : ℤ) then 1 else 0) + 1

end

end A361633.P15688798029991392430

/-! ## A361633.P9883192256789228059

`A059233(A079065(n+2))`
-/

namespace A361633.P9883192256789228059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059233 (A079065 (n + 2)).toNat

end

end A361633.P9883192256789228059

/-! ## A361633.P2708961520991270799

`A320656(A133265(n+1))+1`
-/

namespace A361633.P2708961520991270799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320656 (A133265 (n + 1)).toNat + 1

end

end A361633.P2708961520991270799

/-! ## A361633.P12980647863681509876

`A101605(A307266(n+2))+1`
-/

namespace A361633.P12980647863681509876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101605 (A307266 (n + 2)).toNat + 1

end

end A361633.P12980647863681509876

/-! ## A361633.P4407554818697458106

`A353370(A064554(n+2))+1`
-/

namespace A361633.P4407554818697458106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353370 (A064554 (n + 2)).toNat + 1

end

end A361633.P4407554818697458106

/-!
# A361636: Diagonal of the rational function 1/(1 - v*w*x*y*z * (1 + 1/v + 1/w + 1/x + 1/y + 1/z)).

The programs for A361636, the canonical program `A361636.P7313091017676037003` is in `Seq.B000.C046`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A361636 has offset 0).

The definition of A361636 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A361636.P7313091017676037003

`∑{#}[floor(n/4), (n+#)!/(#!^5*(n-4*#)!)]`

The canonical program, it is in `Seq.B000.C046`.
-/

namespace A361636

/-- `∑{#}[floor(n/4), (n+#)!/(#!^5*(n-4*#)!)]` -/
def P7313091017676037003.Spec : Prop :=
  ∀ n, P7313091017676037003.a n = (A361636 n : ℚ)

end A361636

/-! ## A361636.P6227615833668192210

`A293507(a(floor(n/2))+n)` with `a(0)=1`
-/

namespace A361636.P6227615833668192210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A293507 (a ⌊(n : ℚ) / 2⌋.toNat + (n : ℤ)).toNat

end

end A361636.P6227615833668192210

namespace A361636

/-- `A293507(a(floor(n/2))+n)` -/
def P6227615833668192210.Spec : Prop :=
  ∀ n, P6227615833668192210.a n = A361636 n

end A361636

/-! ## A361636.P14754984555330200312

`A356630(a(floor(n/2))+n)` with `a(0)=1`
-/

namespace A361636.P14754984555330200312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A356630 (a ⌊(n : ℚ) / 2⌋.toNat + (n : ℤ)).toNat

end

end A361636.P14754984555330200312

namespace A361636

/-- `A356630(a(floor(n/2))+n)` -/
def P14754984555330200312.Spec : Prop :=
  ∀ n, P14754984555330200312.a n = A361636 n

end A361636

/-! ## A361636.P15661895665142234687

`A293507(ceil(a(∑[n]%n)+n))` with `a(0)=1`

`ceil` is left out, it is the identity on integers.
-/

namespace A361636.P15661895665142234687
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A293507 (a ((∑ j ∈ Finset.range (n + 1), f1 j) % n) + (n : ℤ)).toNat

end

end A361636.P15661895665142234687

namespace A361636

/-- `A293507(ceil(a(∑[n]%n)+n))` -/
def P15661895665142234687.Spec : Prop :=
  ∀ n, P15661895665142234687.a n = A361636 n

end A361636

/-!
# A361637: Constant term in the expansion of (1 + x + y + z + 1/(x*y*z))^n.

The programs for A361637, the canonical program `A361637.P1086768332163955224` is in `Seq.B000.C046`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A361637 has offset 0).

The definition of A361637 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A361637.P1086768332163955224

`n!*∑{#}[floor(n/4), 1/(#!^4*(n-4*#)!)]`

The canonical program, it is in `Seq.B000.C046`.
-/

namespace A361637

/-- `n!*∑{#}[floor(n/4), 1/(#!^4*(n-4*#)!)]` -/
def P1086768332163955224.Spec : Prop :=
  ∀ n, P1086768332163955224.a n = (A361637 n : ℚ)

end A361637

/-! ## A361637.P15829528834803016180

`A330045(n)%A320163(A193641(n+4))`
-/

namespace A361637.P15829528834803016180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A330045 n) (A320163 (A193641 (n + 4)).toNat)

end

end A361637.P15829528834803016180

namespace A361637

/-- `A330045(n)%A320163(A193641(n+4))` -/
def P15829528834803016180.Spec : Prop :=
  ∀ n, P15829528834803016180.a n = A361637 n

end A361637

/-! ## A361637.P9400365137194324982

`A158777(n*(n+2))`
-/

namespace A361637.P9400365137194324982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158777 (n * (n + 2))

end

end A361637.P9400365137194324982

namespace A361637

/-- `A158777(n*(n+2))` -/
def P9400365137194324982.Spec : Prop :=
  ∀ n, P9400365137194324982.a n = A361637 n

end A361637

/-! ## A361637.P10446959246224993886

`A000015(A190875(n))`
-/

namespace A361637.P10446959246224993886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000015 (A190875 n).toNat

end

end A361637.P10446959246224993886

namespace A361637

/-- `A000015(A190875(n))` -/
def P10446959246224993886.Spec : Prop :=
  ∀ n, P10446959246224993886.a n = A361637 n

end A361637

/-!
# A361638: Expansion of g.f. A(x) satisfying A(x) = 1 + x * A(x)^2 * (1 + A(x)^3).

The programs for A361638, the canonical program `A361638.P17238776127357671380` is in `Seq.B000.C046`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A361638 has offset 0).

The definition of A361638 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A361638.P17238776127357671380

`∑{#}[n, C(n, #)*C(2*n+3*#+1, n)/(2*n+3*#+1)]`

The canonical program, it is in `Seq.B000.C046`.
-/

namespace A361638

/-- `∑{#}[n, C(n, #)*C(2*n+3*#+1, n)/(2*n+3*#+1)]` -/
def P17238776127357671380.Spec : Prop :=
  ∀ n, P17238776127357671380.a n = (A361638 n : ℚ)

end A361638

/-!
# A361639: For n > 1, A359804(n) is a multiple of A361503(n-1); a(n) = A359804(n) / A361503(n-1).

The programs for A361639, there is no canonical definition to state claims against.
-/

/-! ## A361639.P16618071284772344497

`A359804(n+2)/A361503(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A361639.P16618071284772344497
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A359804 (n + 2) : ℚ) / (A361503 (n + 1) : ℚ)

end

end A361639.P16618071284772344497

/-! ## A361639.P17071714694565471504

`A359804(n+2)/A006530(A359804(n+2)^3)`
-/

namespace A361639.P17071714694565471504
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A359804 (n + 2) : ℚ) / (A006530 (A359804 (n + 2) ^ 3).toNat : ℚ)

end

end A361639.P17071714694565471504

/-!
# A361641: Inverse permutation to A361640.

The programs for A361641, there is no canonical definition to state claims against.
-/

/-! ## A361641.P1412219464900283435

`or(A007814(A055916(n)), A352714(n))`
-/

namespace A361641.P1412219464900283435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A007814 (A055916 n).toNat) (A352714 n)

end

end A361641.P1412219464900283435

/-! ## A361641.P8813869467084348997

`or(A025441(A212134(n)), A352714(n))`
-/

namespace A361641.P8813869467084348997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A025441 (A212134 n).toNat) (A352714 n)

end

end A361641.P8813869467084348997

/-!
# A361642: Triangle read by rows where row n is a self-inverse permutation of 1..n formed starting from a column 1..n and sliding numbers to the right and down.

The programs for A361642, there is no canonical definition to state claims against.
-/

/-! ## A361642.P7261475659221467177

`A200370(n+1)+A016389(A094638(n+1))`
-/

namespace A361642.P7261475659221467177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1) + A016389 (A094638 (n + 1)).toNat

end

end A361642.P7261475659221467177

/-! ## A361642.P13403560779857077838

`A000122(A016922(n))-A297325(n)`
-/

namespace A361642.P13403560779857077838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (A016922 n).toNat - A297325 n

end

end A361642.P13403560779857077838

/-! ## A361642.P3507554472694879077

`A000005(A104080(n))-A279928(n)`
-/

namespace A361642.P3507554472694879077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A104080 n).toNat - A279928 n

end

end A361642.P3507554472694879077

/-! ## A361642.P3480933006206416959

`A169695(A014210(n))-A297325(n)`
-/

namespace A361642.P3480933006206416959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169695 (A014210 n).toNat - A297325 n

end

end A361642.P3480933006206416959

/-!
# A361643: The binary expansion of a(n) specifies which primes divide A359804(n).

The programs for A361643, there is no canonical definition to state claims against.
-/

/-! ## A361643.P4594090725090751979

`A087207(A359804(n+1))`
-/

namespace A361643.P4594090725090751979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087207 (A359804 (n + 1)).toNat

end

end A361643.P4594090725090751979

/-! ## A361643.P1883939728042873077

`∑{p}[A359804(n+1), A048675(#)]`
-/

namespace A361643.P1883939728042873077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359804 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A048675 p

end

end A361643.P1883939728042873077

/-! ## A361643.P10865406274547914185

`∑{p}[A359804(n+1), A048676(#)]`
-/

namespace A361643.P10865406274547914185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359804 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A048676 p

end

end A361643.P10865406274547914185

/-! ## A361643.P2438915822674871294

`∑{p}[A359804(n+1), A156552(#)]`
-/

namespace A361643.P2438915822674871294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359804 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A156552 p

end

end A361643.P2438915822674871294

/-! ## A361643.P3412220319918320431

`∑{p}[A359804(n+1), A233249(#)]`
-/

namespace A361643.P3412220319918320431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359804 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A233249 p

end

end A361643.P3412220319918320431

/-! ## A361643.P15187384757653082833

`A048675(∏{p}[A359804(n+1), #])`
-/

namespace A361643.P15187384757653082833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359804 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048675 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A361643.P15187384757653082833

/-! ## A361643.P8322091542416891032

`A048676(∏{p}[A359804(n+1), #])`
-/

namespace A361643.P8322091542416891032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359804 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048676 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A361643.P8322091542416891032

/-! ## A361643.P4914596020561983697

`A248663(∏{p}[A359804(n+1), #])`
-/

namespace A361643.P4914596020561983697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359804 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248663 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A361643.P4914596020561983697

/-!
# A361645: a(n) is the least k such that n appears in the k-th row of triangle A361644.

The programs for A361645, the canonical program `A361645.P5436970020374288837` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A361645 has offset 0).

The definition of A361645 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8192 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A361645.P5436970020374288837

`A374356(xor(n, floor(n/2)))`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A361645

/-- `A374356(xor(n, floor(n/2)))` -/
def P5436970020374288837.Spec : Prop :=
  ∀ n, P5436970020374288837.a n = A361645 n

theorem P5436970020374288837.correct : P5436970020374288837.Spec := by
  intro n
  simp only [A361645]

end A361645

/-! ## A361645.P8805021162223982702

`A374356(A003188(n))`
-/

namespace A361645.P8805021162223982702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374356 (A003188 n).toNat

end

end A361645.P8805021162223982702

namespace A361645

/-- `A374356(A003188(n))` -/
def P8805021162223982702.Spec : Prop :=
  ∀ n, P8805021162223982702.a n = A361645 n

end A361645

/-! ## A361645.P11852750274206660267

`A374356(A233280(n))`
-/

namespace A361645.P11852750274206660267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374356 (A233280 n).toNat

end

end A361645.P11852750274206660267

namespace A361645

/-- `A374356(A233280(n))` -/
def P11852750274206660267.Spec : Prop :=
  ∀ n, P11852750274206660267.a n = A361645 n

end A361645

/-! ## A361645.P1349546849446460551

`A008615(A161903(2*n+1)%A294674(3*n+2))`
-/

namespace A361645.P1349546849446460551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (Int.tmod (A161903 (2 * n + 1)) (A294674 (3 * n + 2))).toNat

end

end A361645.P1349546849446460551

namespace A361645

/-- `A008615(A161903(2*n+1)%A294674(3*n+2))` -/
def P1349546849446460551.Spec : Prop :=
  ∀ n, P1349546849446460551.a n = A361645 n

end A361645

/-!
# A361648: Number of permutations p of [n] such that p(i), p(i+2), p(i+4),... form an up-down sequence for i in {1,2}.

The programs for A361648, there is no canonical definition to state claims against.
-/

/-! ## A361648.P10925542788704986078

`A000111(floor(n/2))*A000111(ceil(n/2))*A001405(n)`
-/

namespace A361648.P10925542788704986078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000111 ⌊(n : ℚ) / 2⌋.toNat * A000111 ⌈(n : ℚ) / 2⌉.toNat * A001405 n

end

end A361648.P10925542788704986078

/-! ## A361648.P5607221935389073124

`A104345(A194274(n))`
-/

namespace A361648.P5607221935389073124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104345 (A194274 n).toNat

end

end A361648.P5607221935389073124

/-! ## A361648.P12215525053680366635

`A104345(A007590(n+1))`
-/

namespace A361648.P12215525053680366635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104345 (A007590 (n + 1)).toNat

end

end A361648.P12215525053680366635

/-! ## A361648.P1437970997586589820

`A104345(A080476(n+1))`
-/

namespace A361648.P1437970997586589820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104345 (A080476 (n + 1)).toNat

end

end A361648.P1437970997586589820

/-! ## A361648.P4849934894231036992

`A104345(A030978(n)+n)`
-/

namespace A361648.P4849934894231036992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104345 (A030978 n + (n : ℤ)).toNat

end

end A361648.P4849934894231036992

/-! ## A361648.P12739665935953423924

`A104345(A001971(2*n)+n)`
-/

namespace A361648.P12739665935953423924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104345 (A001971 (2 * n) + (n : ℤ)).toNat

end

end A361648.P12739665935953423924

/-!
# A361649: a(n) = (1+n)*(2*a(n-1) - (n-2)*a(n-2)) with a(0) = a(1) = 1.

The programs for A361649, the canonical program `A361649.P6090098502056357450` is in `Seq.B000.C046`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A361649 has offset 0).

The definition of A361649 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(1+n)*(2*a(n-1)-(n-2)*a(n-2))` (program `A361649.P6090098502056357450`, by `A361649.P6090098502056357450.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A361649.P6090098502056357450

`(1+n)*(2*a(n-1)-(n-2)*a(n-2))` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C046`.
-/

namespace A361649

/-- `(1+n)*(2*a(n-1)-(n-2)*a(n-2))` -/
def P6090098502056357450.Spec : Prop :=
  ∀ n, P6090098502056357450.a n = A361649 n

theorem P6090098502056357450.correct : P6090098502056357450.Spec := by
  intro n
  simp only [A361649]

end A361649

/-!
# A361650: Irregular triangle read by rows in which the row n lists the prime factors of n having the highest multiplicity.

The programs for A361650, there is no canonical definition to state claims against.
-/

/-! ## A361650.P18164893246695528546

`A027748(A070776(n+1)%A173348(n+1))`
-/

namespace A361650.P18164893246695528546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027748 (Int.tmod (A070776 (n + 1)) (A173348 (n + 1))).toNat

end

end A361650.P18164893246695528546

/-! ## A361650.P9404978288967342855

`A027748(A077168(n+1))`
-/

namespace A361650.P9404978288967342855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027748 (A077168 (n + 1)).toNat

end

end A361650.P9404978288967342855

/-! ## A361650.P678312245337058676

`A027748(A001222(A101695(n+2)))`
-/

namespace A361650.P678312245337058676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027748 (A001222 (A101695 (n + 2)).toNat).toNat

end

end A361650.P678312245337058676

/-! ## A361650.P612159003675039013

`A027748(n+2)+A000007(A387625(n))`
-/

namespace A361650.P612159003675039013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027748 (n + 2) + A000007 (A387625 n).toNat

end

end A361650.P612159003675039013

/-!
# A361651: Number T(n,k) of permutations p of [n] such that p(i), p(i+k), p(i+2k),... form an up-down sequence for i in [k]; triangle T(n,k), n>=0, 0<=k<=n, read by rows.

The programs for A361651, there is no canonical definition to state claims against.
-/

/-! ## A361651.P7918718469319911571

`A000120(A000046(n)*A094346(n))`
-/

namespace A361651.P7918718469319911571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A000046 n * A094346 n).toNat

end

end A361651.P7918718469319911571

/-! ## A361651.P1253526556245026607

`A194673(A000726(n))*A323212(n)`
-/

namespace A361651.P1253526556245026607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194673 (A000726 n).toNat * A323212 n

end

end A361651.P1253526556245026607

/-! ## A361651.P11456198473508544283

`A028376(n)+A010054(A171003(n+1))`
-/

namespace A361651.P11456198473508544283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028376 n + A010054 (A171003 (n + 1)).toNat

end

end A361651.P11456198473508544283

/-! ## A361651.P12627766536406527703

`A257783(n)*A358192(A316856(n+1))`
-/

namespace A361651.P12627766536406527703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257783 n * A358192 (A316856 (n + 1)).toNat

end

end A361651.P12627766536406527703

/-!
# A361652: Square array T(n,k), n >= 0, k >= 0, read by antidiagonals downwards, where T(n,k) = n! * Sum_{j=0..floor(n/2)} k^j * Stirling2(n-j,j)/(n-j)!.

The programs for A361652, there is no canonical definition to state claims against.
-/

/-! ## A361652.P16362062397265123178

`and(A008965(A124975(n+1)), A362834(n))`
-/

namespace A361652.P16362062397265123178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A008965 (A124975 (n + 1)).toNat) (A362834 n)

end

end A361652.P16362062397265123178

/-!
# A361654: Triangle read by rows where T(n,k) is the number of nonempty subsets of {1,...,2n-1} with median n and minimum k.

The programs for A361654, there is no canonical definition to state claims against.
-/

/-! ## A361654.P10474826905147447010

`A160185(n)-A102683(A000085(n))`
-/

namespace A361654.P10474826905147447010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160185 n - A102683 (A000085 n).toNat

end

end A361654.P10474826905147447010

/-! ## A361654.P13195321685185925492

`A283424(n)-A326016(A000041(n))`
-/

namespace A361654.P13195321685185925492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283424 n - A326016 (A000041 n).toNat

end

end A361654.P13195321685185925492

/-!
# A361656: Number of odd-length integer partitions of n with integer mean.

The programs for A361656, there is no canonical definition to state claims against.
-/

/-! ## A361656.P8518329973074363316

`A046800(A035470(n+2)*A067029(2*n+3))`
-/

namespace A361656.P8518329973074363316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046800 (A035470 (n + 2) * A067029 (2 * n + 3)).toNat

end

end A361656.P8518329973074363316

/-!
# A361657: Constant term in the expansion of (1 + x^2 + y^2 + 1/(x*y))^n.

The programs for A361657, the canonical program `A361657.P6306096460667523858` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A361657 has offset 0).

The definition of A361657 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A361657.P6306096460667523858

`∑{#}[floor(n/4), C(n, 4*#)*A000897(#)]`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A361657

/-- `∑{#}[floor(n/4), C(n, 4*#)*A000897(#)]` -/
def P6306096460667523858.Spec : Prop :=
  ∀ n, P6306096460667523858.a n = A361657 n

theorem P6306096460667523858.correct : P6306096460667523858.Spec := by
  intro n
  simp only [A361657]

end A361657

/-! ## A361657.P16752846819988744341

`n!*∑{#}[floor(n/4), 1/(#!²*(2*#)!*(n-4*#)!)]`
-/

namespace A361657.P16752846819988744341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 4⌋

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℚ) * (∑ k ∈ Finset.range (f1 n + 1).toNat, 1 / (Nat.factorial k ^ 2 * Nat.factorial (2 * k) * Nat.factorial ((n : ℤ) - (4 * k : ℤ)).toNat : ℚ))

end

end A361657.P16752846819988744341

namespace A361657

/-- `n!*∑{#}[floor(n/4), 1/(#!²*(2*#)!*(n-4*#)!)]` -/
def P16752846819988744341.Spec : Prop :=
  ∀ n, P16752846819988744341.a n = (A361657 n : ℚ)

end A361657

/-! ## A361657.P14014572917874532654

`A016825(A000704(n))-5`
-/

namespace A361657.P14014572917874532654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016825 (A000704 n).toNat - 5

end

end A361657.P14014572917874532654

namespace A361657

/-- `A016825(A000704(n))-5` -/
def P14014572917874532654.Spec : Prop :=
  ∀ n, P14014572917874532654.a n = A361657 n

end A361657

/-! ## A361657.P92807178030381804

`A008588(70*C(n, 8)+2*C(n, 4)+1)-5`
-/

namespace A361657.P92807178030381804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008588 (70 * Nat.choose n 8 + 2 * Nat.choose n 4 + 1) - 5

end

end A361657.P92807178030381804

namespace A361657

/-- `A008588(70*C(n, 8)+2*C(n, 4)+1)-5` -/
def P92807178030381804.Spec : Prop :=
  ∀ n, P92807178030381804.a n = A361657 n

end A361657

/-! ## A361657.P16167394470524883408

`A056530(A000704(n))`
-/

namespace A361657.P16167394470524883408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056530 (A000704 n).toNat

end

end A361657.P16167394470524883408

namespace A361657

/-- `A056530(A000704(n))` -/
def P16167394470524883408.Spec : Prop :=
  ∀ n, P16167394470524883408.a n = A361657 n

end A361657

/-!
# A361658: Constant term in the expansion of (1 + x^3 + y^3 + z^3 + 1/(x*y*z))^n.

The programs for A361658, the canonical program `A361658.P5963242214921275622` is in `Seq.B001.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A361658 has offset 0).

The definition of A361658 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A361658.P5963242214921275622

`∑{#}[floor(n/6), C(n, 6*#)*A001421(#)]`

The canonical program, it is in `Seq.B001.C013`.
-/

namespace A361658

/-- `∑{#}[floor(n/6), C(n, 6*#)*A001421(#)]` -/
def P5963242214921275622.Spec : Prop :=
  ∀ n, P5963242214921275622.a n = A361658 n

theorem P5963242214921275622.correct : P5963242214921275622.Spec := by
  intro n
  simp only [A361658]

end A361658

/-! ## A361658.P2798315853120032268

`n!*∑{#}[floor(n/6), 1/(#!^3*(3*#)!*(n-6*#)!)]`
-/

namespace A361658.P2798315853120032268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 6⌋

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℚ) * (∑ k ∈ Finset.range (f1 n + 1).toNat, 1 / (Nat.factorial k ^ 3 * Nat.factorial (3 * k) * Nat.factorial ((n : ℤ) - (6 * k : ℤ)).toNat : ℚ))

end

end A361658.P2798315853120032268

namespace A361658

/-- `n!*∑{#}[floor(n/6), 1/(#!^3*(3*#)!*(n-6*#)!)]` -/
def P2798315853120032268.Spec : Prop :=
  ∀ n, P2798315853120032268.a n = (A361658 n : ℚ)

end A361658

/-! ## A361658.P7775393219952571221

`A017281(12*C(n, 6))`
-/

namespace A361658.P7775393219952571221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017281 (12 * Nat.choose n 6)

end

end A361658.P7775393219952571221

namespace A361658

/-- `A017281(12*C(n, 6))` -/
def P7775393219952571221.Spec : Prop :=
  ∀ n, P7775393219952571221.a n = A361658 n

end A361658

/-! ## A361658.P12619707092954208987

`A017077(3*5*C(n, 6))`
-/

namespace A361658.P12619707092954208987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017077 (3 * (5 * Nat.choose n 6))

end

end A361658.P12619707092954208987

namespace A361658

/-- `A017077(3*5*C(n, 6))` -/
def P12619707092954208987.Spec : Prop :=
  ∀ n, P12619707092954208987.a n = A361658 n

end A361658

/-! ## A361658.P12911520304636416658

`A016921(4*5*C(n, 6))`
-/

namespace A361658.P12911520304636416658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016921 (4 * (5 * Nat.choose n 6))

end

end A361658.P12911520304636416658

namespace A361658

/-- `A016921(4*5*C(n, 6))` -/
def P12911520304636416658.Spec : Prop :=
  ∀ n, P12911520304636416658.a n = A361658 n

end A361658

/-!
# A361659: Number of strictly convex unit-sided polygons with all internal angles equal to a multiple of Pi/n, treating polygons that have a unique mirror image as distinct but ignoring rotational copies.

The programs for A361659, there is no canonical definition to state claims against.
-/

/-! ## A361659.P9689395956916805666

`A164896(2*(n+1))-2`
-/

namespace A361659.P9689395956916805666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164896 (2 * (n + 1)) - 2

end

end A361659.P9689395956916805666

/-!
# A361660: Irregular triangle read by rows where row n lists the successive numbers moved in the process of forming row n of the triangle A361642.

The programs for A361660, there is no canonical definition to state claims against.
-/

/-! ## A361660.P8508601600893779049

`A053610(A078782(n+1)*A268812(n+1))`
-/

namespace A361660.P8508601600893779049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053610 (A078782 (n + 1) * A268812 (n + 1)).toNat

end

end A361660.P8508601600893779049

/-! ## A361660.P597269983938229602

`A333766(A128290(n+1))+1`
-/

namespace A361660.P597269983938229602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333766 (A128290 (n + 1)).toNat + 1

end

end A361660.P597269983938229602

/-! ## A361660.P954912328974794010

`A131534(n)+A090822(A042573(n))`
-/

namespace A361660.P954912328974794010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131534 n + A090822 (A042573 n).toNat

end

end A361660.P954912328974794010

/-! ## A361660.P18419433434287589534

`A050604(A250120(n)+A033484(n))`
-/

namespace A361660.P18419433434287589534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050604 (A250120 n + A033484 n).toNat

end

end A361660.P18419433434287589534

/-! ## A361660.P7887101805925926055

`A392706(n+1)+A022300(A209657(n))`
-/

namespace A361660.P7887101805925926055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392706 (n + 1) + A022300 (A209657 n).toNat

end

end A361660.P7887101805925926055

/-!
# A361662: Least number k >= 1 such that A074206(k) is divisible by n.

The programs for A361662, there is no canonical definition to state claims against.
-/

/-! ## A361662.P5281233842850378832

`A025487(A361663(n+1))`
-/

namespace A361662.P5281233842850378832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025487 (A361663 (n + 1)).toNat

end

end A361662.P5281233842850378832

/-! ## A361662.P13092067183036960577

`A046523(A181821(A361666(n+1)))`
-/

namespace A361662.P13092067183036960577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A181821 (A361666 (n + 1)).toNat).toNat

end

end A361662.P13092067183036960577

/-! ## A361662.P16450499643778867692

`A181821(A361666(n+1)%A364675(2*n+3))`
-/

namespace A361662.P16450499643778867692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181821 (Int.tmod (A361666 (n + 1)) (A364675 (2 * n + 3))).toNat

end

end A361662.P16450499643778867692

/-! ## A361662.P9683758075253420169

`A181821(A361666(n+1))%A332287(3*(n+1))`
-/

namespace A361662.P9683758075253420169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A181821 (A361666 (n + 1)).toNat) (A332287 (3 * (n + 1)))

end

end A361662.P9683758075253420169

/-!
# A361663: A361662(n) = A025487(a(n)).

The programs for A361663, there is no canonical definition to state claims against.
-/

/-! ## A361663.P9616283956103830223

`A101296(A361662(n+1))`
-/

namespace A361663.P9616283956103830223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101296 (A361662 (n + 1)).toNat

end

end A361663.P9616283956103830223

/-! ## A361663.P11332505683782629187

`A085089(A361662(n+1))`
-/

namespace A361663.P11332505683782629187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085089 (A361662 (n + 1)).toNat

end

end A361663.P11332505683782629187

/-!
# A361664: a(n) = A074206(A361662(n))/n.

The programs for A361664, there is no canonical definition to state claims against.
-/

/-! ## A361664.P7731722139520934149

`A074206(A361662(n+1))/(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A361664.P7731722139520934149
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A074206 (A361662 (n + 1)).toNat : ℚ) / (n + 1 : ℚ)

end

end A361664.P7731722139520934149

/-! ## A361664.P4129068166728687113

`A074206(A025487(A361663(n+1)))/(n+1)`
-/

namespace A361664.P4129068166728687113
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A074206 (A025487 (A361663 (n + 1)).toNat).toNat : ℚ) / (n + 1 : ℚ)

end

end A361664.P4129068166728687113

/-! ## A361664.P11942262234489478030

`A361667(A153679(n+1))`
-/

namespace A361664.P11942262234489478030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361667 (A153679 (n + 1)).toNat

end

end A361664.P11942262234489478030

/-! ## A361664.P7719474800896506732

`A361667(n+1)%A002907(n)`
-/

namespace A361664.P7719474800896506732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A361667 (n + 1)) (A002907 n)

end

end A361664.P7719474800896506732

/-! ## A361664.P7135186798439183487

`gcd(A146558(n+1), A361667(n+1))`
-/

namespace A361664.P7135186798439183487
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A146558 (n + 1)) (A361667 (n + 1))

end

end A361664.P7135186798439183487

/-!
# A361665: Number of ordered factorizations of p_1^x_1 * ... * p_k^x_k, where (x_1, ..., x_k) is the partition with Heinz number n and p_1, ..., p_k are distinct primes.

The programs for A361665, there is no canonical definition to state claims against.
-/

/-! ## A361665.P6847252660314998638

`A074206(A181821(n+1))`
-/

namespace A361665.P6847252660314998638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074206 (A181821 (n + 1)).toNat

end

end A361665.P6847252660314998638

/-! ## A361665.P8462467019200019656

`A050324(A361808(n+1))`
-/

namespace A361665.P8462467019200019656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050324 (A361808 (n + 1)).toNat

end

end A361665.P8462467019200019656

/-! ## A361665.P17340798333504794935

`A074206(A304660(n+1))`
-/

namespace A361665.P17340798333504794935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074206 (A304660 (n + 1)).toNat

end

end A361665.P17340798333504794935

/-! ## A361665.P7026929254330558888

`A002033(A181821(n+1)-1)`
-/

namespace A361665.P7026929254330558888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002033 (A181821 (n + 1) - 1).toNat

end

end A361665.P7026929254330558888

/-! ## A361665.P9436220664865234435

`A002033(A304660(n+1)-1)`
-/

namespace A361665.P9436220664865234435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002033 (A304660 (n + 1) - 1).toNat

end

end A361665.P9436220664865234435

/-!
# A361666: Least number k >= 1 such that A361665(k) is divisible by n.

The programs for A361666, there is no canonical definition to state claims against.
-/

/-! ## A361666.P6530226339769926034

`A181819(A361662(n+1))`
-/

namespace A361666.P6530226339769926034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181819 (A361662 (n + 1)).toNat

end

end A361666.P6530226339769926034

/-! ## A361666.P12565539289946341756

`A181819(A025487(A361663(n+1)))`
-/

namespace A361666.P12565539289946341756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181819 (A025487 (A361663 (n + 1)).toNat).toNat

end

end A361666.P12565539289946341756

/-! ## A361666.P2242547104856298681

`A181820(A361663((n+1)*A361664(n+1)))`
-/

namespace A361666.P2242547104856298681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181820 (A361663 ((n + 1 : ℤ) * A361664 (n + 1)).toNat).toNat

end

end A361666.P2242547104856298681

/-! ## A361666.P11317359283337690611

`A181820(A361663((n+1)*A361667(n+1)))`
-/

namespace A361666.P11317359283337690611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181820 (A361663 ((n + 1 : ℤ) * A361667 (n + 1)).toNat).toNat

end

end A361666.P11317359283337690611

/-!
# A361667: a(n) = A361665(A361666(n))/n.

The programs for A361667, there is no canonical definition to state claims against.
-/

/-! ## A361667.P18336123918292111873

`A074206(A181821(A361666(n+1)))/(n+1)`
-/

namespace A361667.P18336123918292111873
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A074206 (A181821 (A361666 (n + 1)).toNat).toNat : ℚ) / (n + 1 : ℚ)

end

end A361667.P18336123918292111873

/-!
# A361668: Numbers k such that A361662(k) != A181821(A361666(k)).

The programs for A361668, there is no canonical definition to state claims against.
-/

/-! ## A361668.P12668004336546456192

`A084547(2*(n+2))+A000120(A067966(n))`
-/

namespace A361668.P12668004336546456192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084547 (2 * (n + 2)) + A000120 (A067966 n).toNat

end

end A361668.P12668004336546456192

/-!
# A361669: a(n) = floor of sinh(sinh(sinh(...(1)...))) with n iterations.

The programs for A361669, there is no canonical definition to state claims against.
-/

/-! ## A361669.P10899878156324368851

`floor(record[sinh(a(n-2))])` with `a(0)=1, a(1)=0`
-/

namespace A361669.P10899878156324368851
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.rec [1, 0] fun n f1 =>
  Real.sinh (f1 (n - 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)⌋

end

end A361669.P10899878156324368851

/-!
# A361670: Squarefree part of the n-th triangular number.

The programs for A361670, the canonical program `A361670.P8580166271741776334` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A361670 has offset 1).

The definition of A361670 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A361670.P8580166271741776334

`A007913((n+1)*(n+2)/2)`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A361670

/-- `A007913((n+1)*(n+2)/2)` -/
def P8580166271741776334.Spec : Prop :=
  ∀ n, P8580166271741776334.a n = A361670 (n + 1)

theorem P8580166271741776334.correct : P8580166271741776334.Spec := by
  intro n
  simp only [A361670, Nat.add_sub_cancel]

end A361670

/-! ## A361670.P4543917734315937609

`A085037(n+1)/∑[n+1]`
-/

namespace A361670.P4543917734315937609
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A085037 (n + 1) : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ)

end

end A361670.P4543917734315937609

namespace A361670

/-- `A085037(n+1)/∑[n+1]` -/
def P4543917734315937609.Spec : Prop :=
  ∀ n, P4543917734315937609.a n = (A361670 (n + 1) : ℚ)

end A361670

/-! ## A361670.P7731018858254432238

`A364900(n+1)*A364900(n)`
-/

namespace A361670.P7731018858254432238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364900 (n + 1) * A364900 n

end

end A361670.P7731018858254432238

namespace A361670

/-- `A364900(n+1)*A364900(n)` -/
def P7731018858254432238.Spec : Prop :=
  ∀ n, P7731018858254432238.a n = A361670 (n + 1)

end A361670

/-! ## A361670.P16627787914849652596

`A000537(n+1)/A059827(n+1)*A085037(n+1)`
-/

namespace A361670.P16627787914849652596
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000537 (n + 1) : ℚ) / (A059827 (n + 1) : ℚ) * (A085037 (n + 1) : ℚ)

end

end A361670.P16627787914849652596

namespace A361670

/-- `A000537(n+1)/A059827(n+1)*A085037(n+1)` -/
def P16627787914849652596.Spec : Prop :=
  ∀ n, P16627787914849652596.a n = (A361670 (n + 1) : ℚ)

end A361670

/-! ## A361670.P14926362229333992803

`A007947(A007913(C(n+2, 2)))`
-/

namespace A361670.P14926362229333992803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A007913 (Nat.choose (n + 2) 2)).toNat

end

end A361670.P14926362229333992803

namespace A361670

/-- `A007947(A007913(C(n+2, 2)))` -/
def P14926362229333992803.Spec : Prop :=
  ∀ n, P14926362229333992803.a n = A361670 (n + 1)

end A361670

/-! ## A361670.P12038327666519487142

`A007913(A034856(3*n+3)+1)+A000007(n+3)`
-/

namespace A361670.P12038327666519487142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A034856 (3 * n + 3) + 1).toNat + A000007 (n + 3)

end

end A361670.P12038327666519487142

namespace A361670

/-- `A007913(A034856(3*n+3)+1)+A000007(n+3)` -/
def P12038327666519487142.Spec : Prop :=
  ∀ n, P12038327666519487142.a n = A361670 (n + 1)

end A361670

/-! ## A361670.P3099383553737614306

`A007913(A034856(3*(n+1))+1)%A004817(n+4)`
-/

namespace A361670.P3099383553737614306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007913 (A034856 (3 * (n + 1)) + 1).toNat) (A004817 (n + 4))

end

end A361670.P3099383553737614306

namespace A361670

/-- `A007913(A034856(3*(n+1))+1)%A004817(n+4)` -/
def P3099383553737614306.Spec : Prop :=
  ∀ n, P3099383553737614306.a n = A361670 (n + 1)

end A361670

/-! ## A361670.P3947014031011893660

`A160400(∑[n+1])`
-/

namespace A361670.P3947014031011893660
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160400 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A361670.P3947014031011893660

namespace A361670

/-- `A160400(∑[n+1])` -/
def P3947014031011893660.Spec : Prop :=
  ∀ n, P3947014031011893660.a n = A361670 (n + 1)

end A361670

/-! ## A361670.P8139891608705422898

`sqrt(A055491(∑[n+1]))`
-/

namespace A361670.P8139891608705422898
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A055491 (∑ j ∈ Finset.range (n + 1), f1 j) : ℝ)

end

end A361670.P8139891608705422898

namespace A361670

/-- `sqrt(A055491(∑[n+1]))` -/
def P8139891608705422898.Spec : Prop :=
  ∀ n, P8139891608705422898.a n = (A361670 (n + 1) : ℝ)

end A361670

/-! ## A361670.P939804132039853416

`A087320(∑[n+1])/∑[n+1]`
-/

namespace A361670.P939804132039853416
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A087320 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℚ)

end

end A361670.P939804132039853416

namespace A361670

/-- `A087320(∑[n+1])/∑[n+1]` -/
def P939804132039853416.Spec : Prop :=
  ∀ n, P939804132039853416.a n = (A361670 (n + 1) : ℚ)

end A361670

/-! ## A361670.P16640840011127013953

`gcd(∑[n+1], A292144(∑[n+1]))`
-/

namespace A361670.P16640840011127013953
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (A292144 (∑ j ∈ Finset.range (n + 1), f2 j))

end

end A361670.P16640840011127013953

namespace A361670

/-- `gcd(∑[n+1], A292144(∑[n+1]))` -/
def P16640840011127013953.Spec : Prop :=
  ∀ n, (P16640840011127013953.a n : ℤ) = A361670 (n + 1)

end A361670

/-! ## A361670.P9918603139570201367

`A271187(∑[n+3])`
-/

namespace A361670.P9918603139570201367
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271187 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A361670.P9918603139570201367

namespace A361670

/-- `A271187(∑[n+3])` -/
def P9918603139570201367.Spec : Prop :=
  ∀ n, P9918603139570201367.a n = A361670 (n + 1)

end A361670

/-! ## A361670.P2183163799983449196

`A064680(A083481(n+1))`
-/

namespace A361670.P2183163799983449196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064680 (A083481 (n + 1)).toNat

end

end A361670.P2183163799983449196

namespace A361670

/-- `A064680(A083481(n+1))` -/
def P2183163799983449196.Spec : Prop :=
  ∀ n, P2183163799983449196.a n = A361670 (n + 1)

end A361670

/-! ## A361670.P17501354270684999203

`A064680(A007913((n+1)*(n+2)))`
-/

namespace A361670.P17501354270684999203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064680 (A007913 ((n + 1) * (n + 2))).toNat

end

end A361670.P17501354270684999203

namespace A361670

/-- `A064680(A007913((n+1)*(n+2)))` -/
def P17501354270684999203.Spec : Prop :=
  ∀ n, P17501354270684999203.a n = A361670 (n + 1)

end A361670

/-!
# A361671: Squarefree part of the n-th tetrahedral number.

The programs for A361671, the canonical program `A361671.P6646581627400117828` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A361671 has offset 1).

The definition of A361671 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A361671.P6646581627400117828

`A007913((n+1)*(n+2)*(n+3)/6)`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A361671

/-- `A007913((n+1)*(n+2)*(n+3)/6)` -/
def P6646581627400117828.Spec : Prop :=
  ∀ n, P6646581627400117828.a n = A361671 (n + 1)

theorem P6646581627400117828.correct : P6646581627400117828.Spec := by
  intro n
  simp only [A361671, Nat.add_sub_cancel]

end A361671

/-! ## A361671.P2039417519432174779

`A271187(A167614(n+2))`
-/

namespace A361671.P2039417519432174779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271187 (A167614 (n + 2)).toNat

end

end A361671.P2039417519432174779

namespace A361671

/-- `A271187(A167614(n+2))` -/
def P2039417519432174779.Spec : Prop :=
  ∀ n, P2039417519432174779.a n = A361671 (n + 1)

end A361671

/-! ## A361671.P17402847451780670622

`A007913(C(n+3, 3))`
-/

namespace A361671.P17402847451780670622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (Nat.choose (n + 3) 3)

end

end A361671.P17402847451780670622

namespace A361671

/-- `A007913(C(n+3, 3))` -/
def P17402847451780670622.Spec : Prop :=
  ∀ n, P17402847451780670622.a n = A361671 (n + 1)

end A361671

/-! ## A361671.P9352792991256325356

`A015052(A007913(A000292(n+1)))`
-/

namespace A361671.P9352792991256325356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015052 (A007913 (A000292 (n + 1)).toNat).toNat

end

end A361671.P9352792991256325356

namespace A361671

/-- `A015052(A007913(A000292(n+1)))` -/
def P9352792991256325356.Spec : Prop :=
  ∀ n, P9352792991256325356.a n = A361671 (n + 1)

end A361671

/-! ## A361671.P13147169041340524623

`A160400(C(n+3, 3))`
-/

namespace A361671.P13147169041340524623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160400 (Nat.choose (n + 3) 3)

end

end A361671.P13147169041340524623

namespace A361671

/-- `A160400(C(n+3, 3))` -/
def P13147169041340524623.Spec : Prop :=
  ∀ n, P13147169041340524623.a n = A361671 (n + 1)

end A361671

/-!
# A361673: Constant term in the expansion of (1 + x*y + y*z + z*x + 1/(x*y*z))^n.

The programs for A361673, the canonical program `A361673.P12489430609031587599` is in `Seq.B001.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A361673 has offset 0).

The definition of A361673 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A361673.P12489430609031587599

`∑{#}[floor(n/5), C(n, 5*#)*A001460(#)]`

The canonical program, it is in `Seq.B001.C013`.
-/

namespace A361673

/-- `∑{#}[floor(n/5), C(n, 5*#)*A001460(#)]` -/
def P12489430609031587599.Spec : Prop :=
  ∀ n, P12489430609031587599.a n = A361673 n

theorem P12489430609031587599.correct : P12489430609031587599.Spec := by
  intro n
  simp only [A361673]

end A361673

/-! ## A361673.P6751059069075050418

`n!*∑{#}[floor(n/5), 1/(#!^3*(2*#)!*(n-5*#)!)]`
-/

namespace A361673.P6751059069075050418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 5⌋

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℚ) * (∑ k ∈ Finset.range (f1 n + 1).toNat, 1 / (Nat.factorial k ^ 3 * Nat.factorial (2 * k) * Nat.factorial ((n : ℤ) - (5 * k : ℤ)).toNat : ℚ))

end

end A361673.P6751059069075050418

namespace A361673

/-- `n!*∑{#}[floor(n/5), 1/(#!^3*(2*#)!*(n-5*#)!)]` -/
def P6751059069075050418.Spec : Prop :=
  ∀ n, P6751059069075050418.a n = (A361673 n : ℚ)

end A361673

/-! ## A361673.P16993199882268996691

`A079097(5*12*C(n, 5))`
-/

namespace A361673.P16993199882268996691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079097 (5 * (12 * Nat.choose n 5))

end

end A361673.P16993199882268996691

namespace A361673

/-- `A079097(5*12*C(n, 5))` -/
def P16993199882268996691.Spec : Prop :=
  ∀ n, P16993199882268996691.a n = A361673 n

end A361673

/-! ## A361673.P16191979871086812796

`A345949(2*6*10*C(n, 5)+3)`
-/

namespace A361673.P16191979871086812796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345949 (2 * (6 * (10 * Nat.choose n 5)) + 3)

end

end A361673.P16191979871086812796

namespace A361673

/-- `A345949(2*6*10*C(n, 5)+3)` -/
def P16191979871086812796.Spec : Prop :=
  ∀ n, P16191979871086812796.a n = A361673 n

end A361673

/-! ## A361673.P8238719065986573191

`A345949(xor(3, 2*6*10*C(n, 5)))`
-/

namespace A361673.P8238719065986573191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345949 (Nat.xor 3 (2 * (6 * (10 * Nat.choose n 5))))

end

end A361673.P8238719065986573191

namespace A361673

/-- `A345949(xor(3, 2*6*10*C(n, 5)))` -/
def P8238719065986573191.Spec : Prop :=
  ∀ n, P8238719065986573191.a n = A361673 n

end A361673

/-!
# A361675: Constant term in the expansion of (1 + x*y*z + w*y*z + w*x*z + w*x*y + 1/(w*x*y*z))^n.

The programs for A361675, the canonical program `A361675.P2998010062872147190` is in `Seq.B000.C046`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A361675 has offset 0).

The definition of A361675 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A361675.P2998010062872147190

`∑{#}[floor(n/7), (4*#)!/#!^4*C(7*#, 4*#)*C(n, 7*#)]`

The canonical program, it is in `Seq.B000.C046`.
-/

namespace A361675

/-- `∑{#}[floor(n/7), (4*#)!/#!^4*C(7*#, 4*#)*C(n, 7*#)]` -/
def P2998010062872147190.Spec : Prop :=
  ∀ n, P2998010062872147190.a n = (A361675 n : ℚ)

end A361675

/-! ## A361675.P6644221194485027099

`n!*∑{#}[floor(n/7), 1/(#!^4*(3*#)!*(n-7*#)!)]`
-/

namespace A361675.P6644221194485027099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 7⌋

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℚ) * (∑ k ∈ Finset.range (f1 n + 1).toNat, 1 / (Nat.factorial k ^ 4 * Nat.factorial (3 * k) * Nat.factorial ((n : ℤ) - (7 * k : ℤ)).toNat : ℚ))

end

end A361675.P6644221194485027099

namespace A361675

/-- `n!*∑{#}[floor(n/7), 1/(#!^4*(3*#)!*(n-7*#)!)]` -/
def P6644221194485027099.Spec : Prop :=
  ∀ n, P6644221194485027099.a n = (A361675 n : ℚ)

end A361675

/-! ## A361675.P13699385789025535671

`A047452(A361701(n))`
-/

namespace A361675.P13699385789025535671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047452 (A361701 n).toNat

end

end A361675.P13699385789025535671

namespace A361675

/-- `A047452(A361701(n))` -/
def P13699385789025535671.Spec : Prop :=
  ∀ n, P13699385789025535671.a n = A361675 n

end A361675

/-! ## A361675.P17687542054706913806

`A016813(A361701(n)-1)`
-/

namespace A361675.P17687542054706913806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 (A361701 n - 1).toNat

end

end A361675.P17687542054706913806

namespace A361675

/-- `A016813(A361701(n)-1)` -/
def P17687542054706913806.Spec : Prop :=
  ∀ n, P17687542054706913806.a n = A361675 n

end A361675

/-! ## A361675.P5295022449643773902

`A016813(gcd(A058832(n), A058834(n)))`
-/

namespace A361675.P5295022449643773902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 (Int.gcd (A058832 n) (A058834 n))

end

end A361675.P5295022449643773902

namespace A361675

/-- `A016813(gcd(A058832(n), A058834(n)))` -/
def P5295022449643773902.Spec : Prop :=
  ∀ n, P5295022449643773902.a n = A361675 n

end A361675

/-!
# A361676: a(n) is the greatest k such that n appears in the k-th row of triangle A361644.

The programs for A361676, there is no canonical definition to state claims against.
-/

/-! ## A361676.P15955128527629605845

`∑{e}[n, A001221(#!!)]+n`
-/

namespace A361676.P15955128527629605845
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A001221 (Nat.factorial (Nat.factorial (Nat.factorization (f1 n) p))) + (n : ℤ)

end

end A361676.P15955128527629605845

/-! ## A361676.P7662848353309084

`A001221(∏{e}[n, #!!])+n`
-/

namespace A361676.P7662848353309084
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (∏ p ∈ Nat.primeFactors (f1 n), Nat.factorial (Nat.factorial (Nat.factorization (f1 n) p))) + (n : ℤ)

end

end A361676.P7662848353309084

/-! ## A361676.P11378504333012485512

`A175402(A027623(n))+n`
-/

namespace A361676.P11378504333012485512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175402 (A027623 n).toNat + (n : ℤ)

end

end A361676.P11378504333012485512

/-! ## A361676.P9043915876179971894

`A002487(A000078(A091891(n)))+n`
-/

namespace A361676.P9043915876179971894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (A000078 (A091891 n).toNat).toNat + (n : ℤ)

end

end A361676.P9043915876179971894

/-! ## A361676.P68329412527598223

`A333226(A045683(n))+n-1`
-/

namespace A361676.P68329412527598223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333226 (A045683 n).toNat + ((n : ℤ) - 1)

end

end A361676.P68329412527598223

/-!
# A361677: Constant term in the expansion of (1 + x + y + z + 1/(x*y) + 1/(y*z) + 1/(z*x))^n.

The programs for A361677, the canonical program `A361677.P17675344642687434503` is in `Seq.B000.C046`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A361677 has offset 0).

The definition of A361677 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A361677.P17675344642687434503

`∑{#}[floor(n/3), (3*#)!/#!^3*C(3*#, #)*C(n, 3*#)]`

The canonical program, it is in `Seq.B000.C046`.
-/

namespace A361677

/-- `∑{#}[floor(n/3), (3*#)!/#!^3*C(3*#, #)*C(n, 3*#)]` -/
def P17675344642687434503.Spec : Prop :=
  ∀ n, P17675344642687434503.a n = (A361677 n : ℚ)

end A361677

/-! ## A361677.P4298879728964527197

`A331425(A097122(n))`
-/

namespace A361677.P4298879728964527197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331425 (A097122 n).toNat

end

end A361677.P4298879728964527197

namespace A361677

/-- `A331425(A097122(n))` -/
def P4298879728964527197.Spec : Prop :=
  ∀ n, P4298879728964527197.a n = A361677 n

end A361677

/-!
# A361678: Constant term in the expansion of (1 + w + x + y + z + 1/(x*y*z) + 1/(w*y*z) + 1/(w*x*z) + 1/(w*x*y))^n.

The programs for A361678, the canonical program `A361678.P7711490597661635203` is in `Seq.B000.C046`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A361678 has offset 0).

The definition of A361678 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A361678.P7711490597661635203

`∑{#}[floor(n/4), (4*#)!/#!^4*C(4*#, #)*C(n, 4*#)]`

The canonical program, it is in `Seq.B000.C046`.
-/

namespace A361678

/-- `∑{#}[floor(n/4), (4*#)!/#!^4*C(4*#, #)*C(n, 4*#)]` -/
def P7711490597661635203.Spec : Prop :=
  ∀ n, P7711490597661635203.a n = (A361678 n : ℚ)

end A361678

/-! ## A361678.P8978216977401257971

`A008619(8*24*C(n, 4))`
-/

namespace A361678.P8978216977401257971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (8 * (24 * Nat.choose n 4))

end

end A361678.P8978216977401257971

namespace A361678

/-- `A008619(8*24*C(n, 4))` -/
def P8978216977401257971.Spec : Prop :=
  ∀ n, P8978216977401257971.a n = A361678 n

end A361678

/-! ## A361678.P16054439116611081782

`A106466(8*24*C(n, 4))`
-/

namespace A361678.P16054439116611081782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106466 (8 * (24 * Nat.choose n 4))

end

end A361678.P16054439116611081782

namespace A361678

/-- `A106466(8*24*C(n, 4))` -/
def P16054439116611081782.Spec : Prop :=
  ∀ n, P16054439116611081782.a n = A361678 n

end A361678

/-! ## A361678.P2164201358579442651

`A047471(A205800(n))`
-/

namespace A361678.P2164201358579442651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047471 (A205800 n).toNat

end

end A361678.P2164201358579442651

namespace A361678

/-- `A047471(A205800(n))` -/
def P2164201358579442651.Spec : Prop :=
  ∀ n, P2164201358579442651.a n = A361678 n

end A361678

/-!
# A361680: The n-th prime p such that p + 2^n is also prime.

The programs for A361680, there is no canonical definition to state claims against.
-/

/-! ## A361680.P17182680115637874061

`A361679(∑[4*n]+1)`
-/

namespace A361680.P17182680115637874061
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361679 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A361680.P17182680115637874061

/-!
# A361682: Array read by descending antidiagonals. A(n, k) is the number of multiset combinations of {0, 1} whose type is defined in the comments. Also A(n, k) = hypergeom([-k, -2], [1], n).

The programs for A361682, the canonical program `A361682.P11561934638558058154` is in `Seq.B000.C046`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A361682 has offset 0).

The definition of A361682 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A361682.P11561934638558058154

`1+col(n)*(row(n)-col(n))*(4+col(n)*(row(n)-col(n)-1))/2`

The canonical program, it is in `Seq.B000.C046`.
-/

namespace A361682

/-- `1+col(n)*(row(n)-col(n))*(4+col(n)*(row(n)-col(n)-1))/2` -/
def P11561934638558058154.Spec : Prop :=
  ∀ n, P11561934638558058154.a n = (A361682 n : ℚ)

end A361682

/-! ## A361682.P4351735813852243474

`A361521(n)+1`
-/

namespace A361682.P4351735813852243474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361521 n + 1

end

end A361682.P4351735813852243474

namespace A361682

/-- `A361521(n)+1` -/
def P4351735813852243474.Spec : Prop :=
  ∀ n, P4351735813852243474.a n = A361682 n

end A361682

/-! ## A361682.P5368674254676006209

`A239331(∑[2*n]%comp[∑[n]])`
-/

namespace A361682.P5368674254676006209
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239331 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A361682.P5368674254676006209

namespace A361682

/-- `A239331(∑[2*n]%comp[∑[n]])` -/
def P5368674254676006209.Spec : Prop :=
  ∀ n, P5368674254676006209.a n = A361682 n

end A361682

/-! ## A361682.P13707767213446505721

`A239331(∑[char[∑[n]]]²-(n+1))`
-/

namespace A361682.P13707767213446505721
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239331 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - (n + 1))

end

end A361682.P13707767213446505721

namespace A361682

/-- `A239331(∑[char[∑[n]]]²-(n+1))` -/
def P13707767213446505721.Spec : Prop :=
  ∀ n, P13707767213446505721.a n = A361682 n

end A361682

/-! ## A361682.P1360194807641428027

`A008619(2*A361521(n))`
-/

namespace A361682.P1360194807641428027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * A361521 n).toNat

end

end A361682.P1360194807641428027

namespace A361682

/-- `A008619(2*A361521(n))` -/
def P1360194807641428027.Spec : Prop :=
  ∀ n, P1360194807641428027.a n = A361682 n

end A361682

/-! ## A361682.P18404545944071135001

`A028242(2*A361521(n))`
-/

namespace A361682.P18404545944071135001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (2 * A361521 n).toNat

end

end A361682.P18404545944071135001

namespace A361682

/-- `A028242(2*A361521(n))` -/
def P18404545944071135001.Spec : Prop :=
  ∀ n, P18404545944071135001.a n = A361682 n

end A361682

/-! ## A361682.P13579902750471828083

`A080513(2*A361521(n))`
-/

namespace A361682.P13579902750471828083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080513 (2 * A361521 n).toNat

end

end A361682.P13579902750471828083

namespace A361682

/-- `A080513(2*A361521(n))` -/
def P13579902750471828083.Spec : Prop :=
  ∀ n, P13579902750471828083.a n = A361682 n

end A361682

/-! ## A361682.P720435482868639079

`A131732(2*A361521(n))`
-/

namespace A361682.P720435482868639079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131732 (2 * A361521 n).toNat

end

end A361682.P720435482868639079

namespace A361682

/-- `A131732(2*A361521(n))` -/
def P720435482868639079.Spec : Prop :=
  ∀ n, P720435482868639079.a n = A361682 n

end A361682

/-! ## A361682.P13038574980954687397

`A094525(n)+A062707(n)`
-/

namespace A361682.P13038574980954687397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094525 n + A062707 n

end

end A361682.P13038574980954687397

namespace A361682

/-- `A094525(n)+A062707(n)` -/
def P13038574980954687397.Spec : Prop :=
  ∀ n, P13038574980954687397.a n = A361682 n

end A361682

/-! ## A361682.P6581707518306670556

`A082046(n)+1-A338369(n)`
-/

namespace A361682.P6581707518306670556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082046 n + (1 - A338369 n)

end

end A361682.P6581707518306670556

namespace A361682

/-- `A082046(n)+1-A338369(n)` -/
def P6581707518306670556.Spec : Prop :=
  ∀ n, P6581707518306670556.a n = A361682 n

end A361682

/-!
# A361684: Ramsey core number rc(n,n).

The programs for A361684, the canonical program `A361684.P3683063365077082163` is in `Seq.B000.C046`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A361684 has offset 1).

The definition of A361684 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A361684.P3683063365077082163

`ceil(2*(n+1)-3/2+sqrt(2*n²+9/4))`

The canonical program, it is in `Seq.B000.C046`.
-/

namespace A361684

/-- `ceil(2*(n+1)-3/2+sqrt(2*n²+9/4))` -/
def P3683063365077082163.Spec : Prop :=
  ∀ n, P3683063365077082163.a n = A361684 (n + 1)

theorem P3683063365077082163.correct : P3683063365077082163.Spec := by
  intro n
  simp only [A361684, Nat.add_sub_cancel]

end A361684

/-! ## A361684.P1527740939982935989

`Δ[n²]+round(sqrt(2)/acot(n))`
-/

namespace A361684.P1527740939982935989
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) + SequenceMachineLib.roundAway (Real.sqrt (2 : ℝ) / SequenceMachineLib.acot (n : ℝ))

end

end A361684.P1527740939982935989

namespace A361684

/-- `Δ[n²]+round(sqrt(2)/acot(n))` -/
def P1527740939982935989.Spec : Prop :=
  ∀ n, P1527740939982935989.a n = A361684 (n + 1)

end A361684

/-! ## A361684.P15921879183349450247

`round(sqrt(2)/acot(n))+2*n+1`
-/

namespace A361684.P15921879183349450247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (2 : ℝ) / SequenceMachineLib.acot (n : ℝ)) + (2 * n + 1 : ℤ)

end

end A361684.P15921879183349450247

namespace A361684

/-- `round(sqrt(2)/acot(n))+2*n+1` -/
def P15921879183349450247.Spec : Prop :=
  ∀ n, P15921879183349450247.a n = A361684 (n + 1)

end A361684

/-! ## A361684.P7722022420576168975

`round(sqrt(∑[record[(2*n)^(n%2)]])+2*n+1)`
-/

namespace A361684.P7722022420576168975
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n) ^ (n % 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ) + (2 * n + 1 : ℝ))

end

end A361684.P7722022420576168975

namespace A361684

/-- `round(sqrt(∑[record[(2*n)^(n%2)]])+2*n+1)` -/
def P7722022420576168975.Spec : Prop :=
  ∀ n, P7722022420576168975.a n = A361684 (n + 1)

end A361684

/-! ## A361684.P286926546320620648

`A214857(n)+Δ[n²]`
-/

namespace A361684.P286926546320620648
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214857 n + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A361684.P286926546320620648

namespace A361684

/-- `A214857(n)+Δ[n²]` -/
def P286926546320620648.Spec : Prop :=
  ∀ n, P286926546320620648.a n = A361684 (n + 1)

end A361684

/-! ## A361684.P8499404648116130938

`A000290(n+1)+A214857(n)-A000290(n)`
-/

namespace A361684.P8499404648116130938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (n + 1) + (A214857 n - A000290 n)

end

end A361684.P8499404648116130938

namespace A361684

/-- `A000290(n+1)+A214857(n)-A000290(n)` -/
def P8499404648116130938.Spec : Prop :=
  ∀ n, P8499404648116130938.a n = A361684 (n + 1)

end A361684

/-! ## A361684.P8400576976630848105

`A001951(A214857(n)+1+n)`
-/

namespace A361684.P8400576976630848105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001951 (A214857 n + 1 + (n : ℤ)).toNat

end

end A361684.P8400576976630848105

namespace A361684

/-- `A001951(A214857(n)+1+n)` -/
def P8400576976630848105.Spec : Prop :=
  ∀ n, P8400576976630848105.a n = A361684 (n + 1)

end A361684

/-! ## A361684.P9710903459673212703

`A002024(A002522(n))+2*n+1`
-/

namespace A361684.P9710903459673212703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A002522 n).toNat + (2 * n + 1 : ℤ)

end

end A361684.P9710903459673212703

namespace A361684

/-- `A002024(A002522(n))+2*n+1` -/
def P9710903459673212703.Spec : Prop :=
  ∀ n, P9710903459673212703.a n = A361684 (n + 1)

end A361684

/-!
# A361685: Number of iterations of sopf until reaching a prime.

The programs for A361685, there is no canonical definition to state claims against.
-/

/-! ## A361685.P10792147852927371328

`A321944(n+2)-1`
-/

namespace A361685.P10792147852927371328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321944 (n + 2) - 1

end

end A361685.P10792147852927371328

/-! ## A361685.P4326524245268795142

`A250409(A321944(n+2)^val(A286652(n+1), 2))`
-/

namespace A361685.P4326524245268795142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250409 (A321944 (n + 2) ^ SequenceMachineLib.valuation (A286652 (n + 1)).toNat 2).toNat

end

end A361685.P4326524245268795142

/-! ## A361685.P5048082153722268128

`A035793(A269595(n+1))%A321944(n+2)`
-/

namespace A361685.P5048082153722268128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A035793 (A269595 (n + 1)).toNat) (A321944 (n + 2))

end

end A361685.P5048082153722268128

/-! ## A361685.P2781522167772489958

`A035793(A095990(n+3))%A321944(n+2)`
-/

namespace A361685.P2781522167772489958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A035793 (A095990 (n + 3)).toNat) (A321944 (n + 2))

end

end A361685.P2781522167772489958

/-! ## A361685.P226101397850163208

`A035793(A064298(n+1))%A321944(n+2)`
-/

namespace A361685.P226101397850163208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A035793 (A064298 (n + 1)).toNat) (A321944 (n + 2))

end

end A361685.P226101397850163208

/-!
# A361686: a(n) is the least totient divisor of A329872(n), where A329872 are nontotients (A005277) that are the product of two totients (A002202).

The programs for A361686, there is no canonical definition to state claims against.
-/

/-! ## A361686.P1251197154304877848

`∏{p}[A329888(A329872(n+1)), #]`
-/

namespace A361686.P1251197154304877848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329888 (A329872 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A361686.P1251197154304877848

/-! ## A361686.P15337916583255321248

`A071773(A329872(n+1))`
-/

namespace A361686.P15337916583255321248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071773 (A329872 (n + 1)).toNat

end

end A361686.P15337916583255321248

/-! ## A361686.P3698854795883723924

`A329888(lcm(A262815(n), A329872(n+1)))`
-/

namespace A361686.P3698854795883723924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329888 (Int.lcm (A262815 n) (A329872 (n + 1)))

end

end A361686.P3698854795883723924

/-!
# A361687: The number of divisors of 2*n^2 which are <=n.

The programs for A361687, there is no canonical definition to state claims against.
-/

/-! ## A361687.P8633651592644308127

`A108920(n+1)+1`
-/

namespace A361687.P8633651592644308127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108920 (n + 1) + 1

end

end A361687.P8633651592644308127

/-! ## A361687.P9033006526338882191

`∑{d}[(n+1)², #%2+1]-A055081(n+1)`
-/

namespace A361687.P9033006526338882191
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), (d % 2 + 1) : ℕ) : ℤ) - A055081 (n + 1)

end

end A361687.P9033006526338882191

/-! ## A361687.P1485596069025306830

`A078644(n+1)-A270417(n+1)`
-/

namespace A361687.P1485596069025306830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078644 (n + 1) - A270417 (n + 1)

end

end A361687.P1485596069025306830

/-! ## A361687.P11948447647287698189

`A361689(n+1)-A055081(n+1)`
-/

namespace A361687.P11948447647287698189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361689 (n + 1) - A055081 (n + 1)

end

end A361687.P11948447647287698189

/-! ## A361687.P16897221045382153072

`2*A078644(n+1)-A055081(n+1)`
-/

namespace A361687.P16897221045382153072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A078644 (n + 1) - A055081 (n + 1)

end

end A361687.P16897221045382153072

/-! ## A361687.P5996640940005463952

`A055081(n+1)-2*A270417(n+1)`
-/

namespace A361687.P5996640940005463952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055081 (n + 1) - 2 * A270417 (n + 1)

end

end A361687.P5996640940005463952

/-! ## A361687.P9393331136375866755

`A066761(and(1, A107392(a(n-1)))+n)+1` with `a(0)=1`
-/

namespace A361687.P9393331136375866755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A066761 (Int.land 1 (A107392 (a (n - 1)).toNat) + (n : ℤ)).toNat + 1

end

end A361687.P9393331136375866755

/-! ## A361687.P7310125977089243701

`A156688(n+1)-(A275367(n+1)+A270417(n+1))`
-/

namespace A361687.P7310125977089243701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156688 (n + 1) - (A275367 (n + 1) + A270417 (n + 1))

end

end A361687.P7310125977089243701

/-! ## A361687.P15588967752943239965

`A334461(2*(n+1)²)`
-/

namespace A361687.P15588967752943239965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334461 (2 * (n + 1) ^ 2)

end

end A361687.P15588967752943239965

/-! ## A361687.P5549294359671878209

`A309149(n+1)+1-A309150(n+1)`
-/

namespace A361687.P5549294359671878209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309149 (n + 1) + (1 - A309150 (n + 1))

end

end A361687.P5549294359671878209

/-!
# A361689: The number of divisors of 2*n^2.

The programs for A361689, the canonical program `A361689.P3213455168666859639` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A361689 has offset 1).

The definition of A361689 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A361689.P13045622419529621695

`2*A078644(n+1)`
-/

namespace A361689.P13045622419529621695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A078644 (n + 1)

end

end A361689.P13045622419529621695

namespace A361689

/-- `2*A078644(n+1)` -/
def P13045622419529621695.Spec : Prop :=
  ∀ n, P13045622419529621695.a n = A361689 (n + 1)

end A361689

/-! ## A361689.P3213455168666859639

`2*(1+A007814(n+1))*A275367(n+1)`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A361689

/-- `2*(1+A007814(n+1))*A275367(n+1)` -/
def P3213455168666859639.Spec : Prop :=
  ∀ n, P3213455168666859639.a n = A361689 (n + 1)

theorem P3213455168666859639.correct : P3213455168666859639.Spec := by
  intro n
  simp only [A361689, Nat.add_sub_cancel]

end A361689

/-! ## A361689.P15452040125442702806

`A000005(2*(n+1)²)`
-/

namespace A361689.P15452040125442702806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (2 * (n + 1) ^ 2)

end

end A361689.P15452040125442702806

namespace A361689

/-- `A000005(2*(n+1)²)` -/
def P15452040125442702806.Spec : Prop :=
  ∀ n, P15452040125442702806.a n = A361689 (n + 1)

end A361689

/-! ## A361689.P5766936173133335657

`∑{d}[n+1, A100008(#)]`
-/

namespace A361689.P5766936173133335657
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A100008 d

end

end A361689.P5766936173133335657

namespace A361689

/-- `∑{d}[n+1, A100008(#)]` -/
def P5766936173133335657.Spec : Prop :=
  ∀ n, P5766936173133335657.a n = A361689 (n + 1)

end A361689

/-! ## A361689.P6939569438868611076

`A004277(A078644(n+1))`
-/

namespace A361689.P6939569438868611076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A078644 (n + 1)).toNat

end

end A361689.P6939569438868611076

namespace A361689

/-- `A004277(A078644(n+1))` -/
def P6939569438868611076.Spec : Prop :=
  ∀ n, P6939569438868611076.a n = A361689 (n + 1)

end A361689

/-! ## A361689.P18276615465019784158

`A275367(n+1)+A048691(n+1)`
-/

namespace A361689.P18276615465019784158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275367 (n + 1) + A048691 (n + 1)

end

end A361689.P18276615465019784158

namespace A361689

/-- `A275367(n+1)+A048691(n+1)` -/
def P18276615465019784158.Spec : Prop :=
  ∀ n, P18276615465019784158.a n = A361689 (n + 1)

end A361689

/-! ## A361689.P4147279348805498530

`A329402(n+1)+A063647(n+1)`
-/

namespace A361689.P4147279348805498530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329402 (n + 1) + A063647 (n + 1)

end

end A361689.P4147279348805498530

namespace A361689

/-- `A329402(n+1)+A063647(n+1)` -/
def P4147279348805498530.Spec : Prop :=
  ∀ n, P4147279348805498530.a n = A361689 (n + 1)

end A361689

/-! ## A361689.P2764304003330318945

`A275367(n+1)*A366839(n+1)`
-/

namespace A361689.P2764304003330318945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275367 (n + 1) * A366839 (n + 1)

end

end A361689.P2764304003330318945

namespace A361689

/-- `A275367(n+1)*A366839(n+1)` -/
def P2764304003330318945.Spec : Prop :=
  ∀ n, P2764304003330318945.a n = A361689 (n + 1)

theorem P2764304003330318945.correct : P2764304003330318945.Spec := by
  intro n
  simp only [A361689, Nat.add_sub_cancel, A361689.P2764304003330318945.a, A361689.P3213455168666859639.a, A007814, A007814.P13537437864234730737.a, A275367, A275367.P11593078130365677386.a, A366839, A366839.P8593895561095689137.a, A000005, A000005.P16091521709108585461.a, A001511, A001511.P17146462531039486101.a, A006519, A006519.P10435570611646570274.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, A171977, A171977.P14092944863121073856.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A361689

/-! ## A361689.P10499790595147618347

`lcm(A078644(n+1), A366839(n+1))`
-/

namespace A361689.P10499790595147618347
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A078644 (n + 1)) (A366839 (n + 1))

end

end A361689.P10499790595147618347

namespace A361689

/-- `lcm(A078644(n+1), A366839(n+1))` -/
def P10499790595147618347.Spec : Prop :=
  ∀ n, (P10499790595147618347.a n : ℤ) = A361689 (n + 1)

end A361689

/-! ## A361689.P17640348260810161042

`∑{d}[n+1, A054844(#)*A353627((n+1)/#)]`
-/

namespace A361689.P17640348260810161042
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A054844 d * A353627 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A361689.P17640348260810161042

namespace A361689

/-- `∑{d}[n+1, A054844(#)*A353627((n+1)/#)]` -/
def P17640348260810161042.Spec : Prop :=
  ∀ n, P17640348260810161042.a n = A361689 (n + 1)

end A361689

/-! ## A361689.P7643507940709695096

`∑{d}[n+1, A054584(#)*A373154((n+1)/#)]`
-/

namespace A361689.P7643507940709695096
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A054584 d * A373154 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A361689.P7643507940709695096

namespace A361689

/-- `∑{d}[n+1, A054584(#)*A373154((n+1)/#)]` -/
def P7643507940709695096.Spec : Prop :=
  ∀ n, P7643507940709695096.a n = A361689 (n + 1)

end A361689

/-! ## A361689.P14952838124569098352

`∑{d}[(n+1)², #%2+1]`
-/

namespace A361689.P14952838124569098352
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d % 2 + 1)

end

end A361689.P14952838124569098352

namespace A361689

/-- `∑{d}[(n+1)², #%2+1]` -/
def P14952838124569098352.Spec : Prop :=
  ∀ n, (P14952838124569098352.a n : ℤ) = A361689 (n + 1)

end A361689

/-! ## A361689.P4141530349147063237

`∑{d}[(n+1)², gcd(2, #+1)]`
-/

namespace A361689.P4141530349147063237
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Nat.gcd 2 (d + 1)

end

end A361689.P4141530349147063237

namespace A361689

/-- `∑{d}[(n+1)², gcd(2, #+1)]` -/
def P4141530349147063237.Spec : Prop :=
  ∀ n, (P4141530349147063237.a n : ℤ) = A361689 (n + 1)

end A361689

/-! ## A361689.P566440089365736920

`∑{d}[(n+1)², and(1, #)+1]`
-/

namespace A361689.P566440089365736920
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (Nat.land 1 d + 1)

end

end A361689.P566440089365736920

namespace A361689

/-- `∑{d}[(n+1)², and(1, #)+1]` -/
def P566440089365736920.Spec : Prop :=
  ∀ n, (P566440089365736920.a n : ℤ) = A361689 (n + 1)

end A361689

/-! ## A361689.P8110503334398601435

`∑{d}[(n+1)², lcm(2, #)/#]`
-/

namespace A361689.P8110503334398601435
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (Nat.lcm 2 d : ℚ) / (d : ℚ)

end

end A361689.P8110503334398601435

namespace A361689

/-- `∑{d}[(n+1)², lcm(2, #)/#]` -/
def P8110503334398601435.Spec : Prop :=
  ∀ n, P8110503334398601435.a n = (A361689 (n + 1) : ℚ)

end A361689

/-! ## A361689.P6826697411159247882

`∏{e}[2*(n+1)², #+1]`
-/

namespace A361689.P6826697411159247882
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1)

end

end A361689.P6826697411159247882

namespace A361689

/-- `∏{e}[2*(n+1)², #+1]` -/
def P6826697411159247882.Spec : Prop :=
  ∀ n, (P6826697411159247882.a n : ℤ) = A361689 (n + 1)

end A361689

/-! ## A361689.P2657857684566302627

`A004194(n+1)-A227610(n+1)`
-/

namespace A361689.P2657857684566302627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004194 (n + 1) - A227610 (n + 1)

end

end A361689.P2657857684566302627

namespace A361689

/-- `A004194(n+1)-A227610(n+1)` -/
def P2657857684566302627.Spec : Prop :=
  ∀ n, P2657857684566302627.a n = A361689 (n + 1)

end A361689

/-! ## A361689.P5719455148635355874

`A099777((n+1)²)`
-/

namespace A361689.P5719455148635355874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099777 ((n + 1) ^ 2)

end

end A361689.P5719455148635355874

namespace A361689

/-- `A099777((n+1)²)` -/
def P5719455148635355874.Spec : Prop :=
  ∀ n, P5719455148635355874.a n = A361689 (n + 1)

end A361689

/-! ## A361689.P6754370201245075272

`2*A174273((n+1)²)`
-/

namespace A361689.P6754370201245075272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A174273 ((n + 1) ^ 2)

end

end A361689.P6754370201245075272

namespace A361689

/-- `2*A174273((n+1)²)` -/
def P6754370201245075272.Spec : Prop :=
  ∀ n, P6754370201245075272.a n = A361689 (n + 1)

end A361689

/-! ## A361689.P15756847338956221793

`A066660((n+1)²)+1`
-/

namespace A361689.P15756847338956221793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066660 ((n + 1) ^ 2) + 1

end

end A361689.P15756847338956221793

namespace A361689

/-- `A066660((n+1)²)+1` -/
def P15756847338956221793.Spec : Prop :=
  ∀ n, P15756847338956221793.a n = A361689 (n + 1)

end A361689

/-!
# A361690: Number of primes in the interval [2^n, 2^n + n].

The programs for A361690, there is no canonical definition to state claims against.
-/

/-! ## A361690.P6083694057992424625

`A115357(A128165(n+1)+2)`
-/

namespace A361690.P6083694057992424625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115357 (A128165 (n + 1) + 2).toNat

end

end A361690.P6083694057992424625

/-! ## A361690.P16839557322627476763

`A001221(A294336(n+1)*A327438(n+4))`
-/

namespace A361690.P16839557322627476763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A294336 (n + 1) * A327438 (n + 4)).toNat

end

end A361690.P16839557322627476763

/-! ## A361690.P12108947355226627234

`A001221(A294338(n+1)*A327438(n+4))`
-/

namespace A361690.P12108947355226627234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A294338 (n + 1) * A327438 (n + 4)).toNat

end

end A361690.P12108947355226627234

/-! ## A361690.P7855425851918736543

`A107833(n+3)%A316556(A059470(3*n+5))`
-/

namespace A361690.P7855425851918736543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A107833 (n + 3)) (A316556 (A059470 (3 * n + 5)).toNat)

end

end A361690.P7855425851918736543

/-! ## A361690.P17444399474597246280

`A068794(A270339(n+1)+A063181(3*n+4))%3`
-/

namespace A361690.P17444399474597246280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A068794 (A270339 (n + 1) + A063181 (3 * n + 4)).toNat) 3

end

end A361690.P17444399474597246280

/-!
# A361691: Number of divisors of 7*n-1 of form 7*k+1.

The programs for A361691, the canonical program `A361691.P14342143922485954219` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A361691 has offset 1).

The definition of A361691 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A279061, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A361691.P14342143922485954219

`A279061(7*(n+1)-1)`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A361691

/-- `A279061(7*(n+1)-1)` -/
def P14342143922485954219.Spec : Prop :=
  ∀ n, P14342143922485954219.a n = A361691 (n + 1)

theorem P14342143922485954219.correct : P14342143922485954219.Spec := by
  intro n
  simp only [A361691, Nat.add_sub_cancel]

end A361691

/-! ## A361691.P13049861103816560567

`A363808(7*(n+1)-1)`
-/

namespace A361691.P13049861103816560567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363808 (7 * (n + 1) - 1)

end

end A361691.P13049861103816560567

namespace A361691

/-- `A363808(7*(n+1)-1)` -/
def P13049861103816560567.Spec : Prop :=
  ∀ n, P13049861103816560567.a n = A361691 (n + 1)

end A361691

/-! ## A361691.P15258539531654567776

`A173751(A207802(n+1))`
-/

namespace A361691.P15258539531654567776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173751 (A207802 (n + 1)).toNat

end

end A361691.P15258539531654567776

namespace A361691

/-- `A173751(A207802(n+1))` -/
def P15258539531654567776.Spec : Prop :=
  ∀ n, P15258539531654567776.a n = A361691 (n + 1)

end A361691

/-! ## A361691.P301496079111624369

`gcd(A040823(n), A115114(n+1))`
-/

namespace A361691.P301496079111624369
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A040823 n) (A115114 (n + 1))

end

end A361691.P301496079111624369

namespace A361691

/-- `gcd(A040823(n), A115114(n+1))` -/
def P301496079111624369.Spec : Prop :=
  ∀ n, (P301496079111624369.a n : ℤ) = A361691 (n + 1)

end A361691

/-! ## A361691.P10705919175124369615

`A331348(A046781(n))`
-/

namespace A361691.P10705919175124369615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331348 (A046781 n).toNat

end

end A361691.P10705919175124369615

namespace A361691

/-- `A331348(A046781(n))` -/
def P10705919175124369615.Spec : Prop :=
  ∀ n, P10705919175124369615.a n = A361691 (n + 1)

end A361691

/-!
# A361692: a(n) = 17*n - 1.

The programs for A361692, the canonical program `A361692.P1603049286899998838` is in `Seq.B000.C046`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A361692 has offset 1).

The definition of A361692 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `17*(n+1)-1` (program `A361692.P1603049286899998838`, by `A361692.P1603049286899998838.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A361692.P1603049286899998838

`17*(n+1)-1`

The canonical program, it is in `Seq.B000.C046`.
-/

namespace A361692

/-- `17*(n+1)-1` -/
def P1603049286899998838.Spec : Prop :=
  ∀ n, P1603049286899998838.a n = A361692 (n + 1)

theorem P1603049286899998838.correct : P1603049286899998838.Spec := by
  intro n
  simp only [A361692, Nat.add_sub_cancel]

end A361692

/-!
# A361695: Number of ways of writing n^2 as a sum of seven squares.

The programs for A361695, there is no canonical definition to state claims against.
-/

/-! ## A361695.P15547112392580878315

`A008451(n²)`
-/

namespace A361695.P15547112392580878315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008451 (n ^ 2)

end

end A361695.P15547112392580878315

/-! ## A361695.P2288438049841090120

`and(-1, A008451(A000290(n)))`
-/

namespace A361695.P2288438049841090120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A008451 (A000290 n).toNat)

end

end A361695.P2288438049841090120

/-! ## A361695.P3680106856384538727

`gcd(A000038(n), A008451(A000290(n)))`
-/

namespace A361695.P3680106856384538727
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A008451 (A000290 n).toNat)

end

end A361695.P3680106856384538727

/-! ## A361695.P12899525157132118089

`lcm(A008451(A000290(n)), A020985(n))`
-/

namespace A361695.P12899525157132118089
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A008451 (A000290 n).toNat) (A020985 n)

end

end A361695.P12899525157132118089

/-! ## A361695.P8863509954346167881

`or(A000122(n), A008451(A000290(n)))`
-/

namespace A361695.P8863509954346167881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000122 n) (A008451 (A000290 n).toNat)

end

end A361695.P8863509954346167881

/-! ## A361695.P4130705367431510561

`or(A008451(A000290(n)), A036274(n))`
-/

namespace A361695.P4130705367431510561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A008451 (A000290 n).toNat) (A036274 n)

end

end A361695.P4130705367431510561

/-! ## A361695.P9108035571705546292

`A008451(A000290(n))+A000038(n+2)`
-/

namespace A361695.P9108035571705546292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008451 (A000290 n).toNat + A000038 (n + 2)

end

end A361695.P9108035571705546292

/-! ## A361695.P16395208810994798643

`A186685(n+4)+A008451(A000290(n))`
-/

namespace A361695.P16395208810994798643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186685 (n + 4) + A008451 (A000290 n).toNat

end

end A361695.P16395208810994798643

/-! ## A361695.P12544385472454684135

`A185276(2*n+2)+A008451(A000290(n))`
-/

namespace A361695.P12544385472454684135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185276 (2 * n + 2) + A008451 (A000290 n).toNat

end

end A361695.P12544385472454684135

/-! ## A361695.P3944595507578169544

`A010051(2*n+4)+A008451(A000290(n))`
-/

namespace A361695.P3944595507578169544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (2 * n + 4) + A008451 (A000290 n).toNat

end

end A361695.P3944595507578169544

/-! ## A361695.P6715450429966334194

`A008451(A000290(n))%A054389(3*n+3)`
-/

namespace A361695.P6715450429966334194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008451 (A000290 n).toNat) (A054389 (3 * n + 3))

end

end A361695.P6715450429966334194

/-!
# A361696: Semiprimes of the form k^2 + 5.

The programs for A361696, there is no canonical definition to state claims against.
-/

/-! ## A361696.P12648996282186162088

`A242333(n+1)²+5`
-/

namespace A361696.P12648996282186162088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242333 (n + 1) ^ 2 + 5

end

end A361696.P12648996282186162088

/-! ## A361696.P15509093838628368312

`A117951(A242333(n+1))`
-/

namespace A361696.P15509093838628368312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117951 (A242333 (n + 1)).toNat

end

end A361696.P15509093838628368312

/-! ## A361696.P2603492258819906648

`∩[A218697(n+1), A117951(n)]`
-/

namespace A361696.P2603492258819906648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218697 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117951 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A361696.P2603492258819906648

/-! ## A361696.P16582480029117447269

`∩[A001358(n+1), n²+5]`
-/

namespace A361696.P16582480029117447269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + 5

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A361696.P16582480029117447269

/-! ## A361696.P3023613475823454008

`filter[A117951(n), A064911(#)]`
-/

namespace A361696.P3023613475823454008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117951 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A361696.P3023613475823454008

/-! ## A361696.P8862120392104460259

`∩[A085155(n+1), n²+5]`
-/

namespace A361696.P8862120392104460259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085155 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + 5

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A361696.P8862120392104460259

/-! ## A361696.P14687975647321561435

`∩[A176540(n+1), n²+5]`
-/

namespace A361696.P14687975647321561435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176540 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + 5

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A361696.P14687975647321561435

/-! ## A361696.P13605015256702742586

`∩[A323644(n+1), n²+5]`
-/

namespace A361696.P13605015256702742586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323644 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + 5

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A361696.P13605015256702742586

/-! ## A361696.P6151547010399850249

`∩[A077135(n+1), A117951(n)]`
-/

namespace A361696.P6151547010399850249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077135 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117951 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A361696.P6151547010399850249

/-! ## A361696.P8366650591552017288

`∩[A077136(n+1), A117951(n)]`
-/

namespace A361696.P8366650591552017288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077136 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117951 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A361696.P8366650591552017288

/-!
# A361698: The number of unlabeled connected 4 regular multigraphs on n nodes with 4 external legs, loops allowed.

The programs for A361698, there is no canonical definition to state claims against.
-/

/-! ## A361698.P4008081586191286173

`A074444(n+1)+A007913(A006125(n))`
-/

namespace A361698.P4008081586191286173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074444 (n + 1) + A007913 (A006125 n).toNat

end

end A361698.P4008081586191286173

/-! ## A361698.P2109836405409935303

`A074444(n+1)+A025142(A084128(n))`
-/

namespace A361698.P2109836405409935303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074444 (n + 1) + A025142 (A084128 n).toNat

end

end A361698.P2109836405409935303

/-! ## A361698.P14093162975381978451

`A119418(A007481(n))+A074444(n+1)`
-/

namespace A361698.P14093162975381978451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119418 (A007481 n).toNat + A074444 (n + 1)

end

end A361698.P14093162975381978451

/-!
# A361699: Constant term in the expansion of (1 + x^3 + y^3 + 1/(x*y))^n.

The programs for A361699, the canonical program `A361699.P10559366435144333099` is in `Seq.B000.C046`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A361699 has offset 0).

The definition of A361699 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A361699.P10559366435144333099

`∑{#}[floor(n/5), C(2*#, #)*C(5*#, 2*#)*C(n, 5*#)]`

The canonical program, it is in `Seq.B000.C046`.
-/

namespace A361699

/-- `∑{#}[floor(n/5), C(2*#, #)*C(5*#, 2*#)*C(n, 5*#)]` -/
def P10559366435144333099.Spec : Prop :=
  ∀ n, (P10559366435144333099.a n : ℤ) = A361699 n

theorem P10559366435144333099.correct : P10559366435144333099.Spec := by
  intro n
  simp only [A361699]

end A361699

/-! ## A361699.P7850618632976458929

`A126760(2*6*10*C(n, 5)+2)`
-/

namespace A361699.P7850618632976458929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126760 (2 * (6 * (10 * Nat.choose n 5)) + 2)

end

end A361699.P7850618632976458929

namespace A361699

/-- `A126760(2*6*10*C(n, 5)+2)` -/
def P7850618632976458929.Spec : Prop :=
  ∀ n, P7850618632976458929.a n = A361699 n

end A361699

/-! ## A361699.P8775075959231863948

`A126760(or(2, 2*6*10*C(n, 5)))`
-/

namespace A361699.P8775075959231863948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126760 (Nat.lor 2 (2 * (6 * (10 * Nat.choose n 5))))

end

end A361699.P8775075959231863948

namespace A361699

/-- `A126760(or(2, 2*6*10*C(n, 5)))` -/
def P8775075959231863948.Spec : Prop :=
  ∀ n, P8775075959231863948.a n = A361699 n

end A361699

/-! ## A361699.P6302896225679442507

`A126760(xor(2, 2*6*10*C(n, 5)))`
-/

namespace A361699.P6302896225679442507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126760 (Nat.xor 2 (2 * (6 * (10 * Nat.choose n 5))))

end

end A361699.P6302896225679442507

namespace A361699

/-- `A126760(xor(2, 2*6*10*C(n, 5)))` -/
def P6302896225679442507.Spec : Prop :=
  ∀ n, P6302896225679442507.a n = A361699 n

end A361699

/-! ## A361699.P3981513906107335083

`(A345949(2*6*10*C(n, 5)+3)+2)/3`
-/

namespace A361699.P3981513906107335083
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A345949 (2 * (6 * (10 * Nat.choose n 5)) + 3) + 2 : ℚ) / 3

end

end A361699.P3981513906107335083

namespace A361699

/-- `(A345949(2*6*10*C(n, 5)+3)+2)/3` -/
def P3981513906107335083.Spec : Prop :=
  ∀ n, P3981513906107335083.a n = (A361699 n : ℚ)

end A361699

