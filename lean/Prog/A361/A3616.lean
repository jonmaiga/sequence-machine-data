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
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C019
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
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

The programs for A361607, there is no canonical definition to state claims against.
-/

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

/-! ## A361607.P12202024942414846169

`A361600(A046092(n))+A025469(n)`
-/

namespace A361607.P12202024942414846169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361600 (A046092 n).toNat + A025469 n

end

end A361607.P12202024942414846169

/-! ## A361607.P1521868567443596768

`A361600(A046092(n))+A185246(n)`
-/

namespace A361607.P1521868567443596768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361600 (A046092 n).toNat + A185246 n

end

end A361607.P1521868567443596768

/-! ## A361607.P2416170571121128094

`A361600(A046092(n))+A185284(n)`
-/

namespace A361607.P2416170571121128094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361600 (A046092 n).toNat + A185284 n

end

end A361607.P2416170571121128094

/-!
# A361609: a(n) = 4^n*(1 + (23/8)*n + (9/8)*n^2).

The programs for A361609, the canonical program `A361609.P17585846011862066256` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A361609 has offset 0).

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

/-! ## A361609.P17585846011862066256

`12*a(n-1)-48*a(n-2)+64*a(n-3)` with `a(0)=1, a(1)=20, a(2)=180`

The canonical program, it is in `Seq.B000.C034`.
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

The programs for A361610, the canonical program `A361610.P17721502334643860937` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A361610 has offset 0).

The definition of A361610 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A361610.P17721502334643860937

`5^n*(n+1)*(4*n²+14*n+3)/3`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A361610

/-- `5^n*(n+1)*(4*n²+14*n+3)/3` -/
def P17721502334643860937.Spec : Prop :=
  ∀ n, P17721502334643860937.a n = (A361610 n : ℚ)

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

The programs for A361612, the canonical program `A361612.P6490670511747701562` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A361612 has offset 0).

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

The canonical program, it is in `Seq.B001.C009`.
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

/-! ## A361615.P8397701230299524597

`A003961(sqrt(A357450(n+1)))`
-/

namespace A361615.P8397701230299524597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (SequenceMachineLib.roundAway (Real.sqrt (A357450 (n + 1) : ℝ))).toNat

end

end A361615.P8397701230299524597

/-! ## A361615.P6575526650226225793

`A336849(sqrt(A357450(n+1)))`
-/

namespace A361615.P6575526650226225793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336849 (SequenceMachineLib.roundAway (Real.sqrt (A357450 (n + 1) : ℝ))).toNat

end

end A361615.P6575526650226225793

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

The programs for A361626, there is no canonical definition to state claims against.
-/

/-! ## A361626.P9879215613330228395

`∑[A001651(A218294(n))]`
-/

namespace A361626.P9879215613330228395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001651 (A218294 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A361626.P9879215613330228395

/-!
# A361627: Positive integers such that GCD(A007504(n),n) != 1.

The programs for A361627, the canonical program `A361627.P2747137712555199260` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A361627 has offset 1).

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

The canonical program, it is in `Seq.B003.C004`.
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

The programs for A361631, the canonical program `A361631.P4568243048912634249` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A361631 has offset 2).

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

The canonical program, it is in `Seq.B003.C004`.
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

/-! ## A361631.P6967191567780769194

`A082299(A082344(A340677(n+2))²)`
-/

namespace A361631.P6967191567780769194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082299 (A082344 (A340677 (n + 2)).toNat ^ 2).toNat

end

end A361631.P6967191567780769194

namespace A361631

/-- `A082299(A082344(A340677(n+2))²)` -/
def P6967191567780769194.Spec : Prop :=
  ∀ n, P6967191567780769194.a n = A361631 (n + 2)

end A361631

/-! ## A361631.P8788071300571038906

`A056832(A166142(n+2))`
-/

namespace A361631.P8788071300571038906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056832 (A166142 (n + 2)).toNat

end

end A361631.P8788071300571038906

namespace A361631

/-- `A056832(A166142(n+2))` -/
def P8788071300571038906.Spec : Prop :=
  ∀ n, P8788071300571038906.a n = A361631 (n + 2)

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

The programs for A361636, there is no canonical definition to state claims against.
-/

/-! ## A361636.P6227615833668192210

`A293507(a(floor(n/2))+n)` with `a(0)=1`
-/

namespace A361636.P6227615833668192210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A293507 (a ⌊(n : ℚ) / 2⌋.toNat + (n : ℤ)).toNat

end

end A361636.P6227615833668192210

/-! ## A361636.P14754984555330200312

`A356630(a(floor(n/2))+n)` with `a(0)=1`
-/

namespace A361636.P14754984555330200312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A356630 (a ⌊(n : ℚ) / 2⌋.toNat + (n : ℤ)).toNat

end

end A361636.P14754984555330200312

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

/-! ## A361636.P1656845753261713499

`A237517((n+1)*24*C(n, 4)+1)`
-/

namespace A361636.P1656845753261713499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237517 ((n + 1) * (24 * Nat.choose n 4) + 1)

end

end A361636.P1656845753261713499

/-!
# A361637: Constant term in the expansion of (1 + x + y + z + 1/(x*y*z))^n.

The programs for A361637, there is no canonical definition to state claims against.
-/

/-! ## A361637.P15829528834803016180

`A330045(n)%A320163(A193641(n+4))`
-/

namespace A361637.P15829528834803016180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A330045 n) (A320163 (A193641 (n + 4)).toNat)

end

end A361637.P15829528834803016180

/-! ## A361637.P9400365137194324982

`A158777(n*(n+2))`
-/

namespace A361637.P9400365137194324982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158777 (n * (n + 2))

end

end A361637.P9400365137194324982

/-! ## A361637.P10446959246224993886

`A000015(A190875(n))`
-/

namespace A361637.P10446959246224993886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000015 (A190875 n).toNat

end

end A361637.P10446959246224993886

/-! ## A361637.P196417418882763067

`A022998(A205800(n))`
-/

namespace A361637.P196417418882763067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022998 (A205800 n).toNat

end

end A361637.P196417418882763067

/-!
# A361638: Expansion of g.f. A(x) satisfying A(x) = 1 + x * A(x)^2 * (1 + A(x)^3).

The programs for A361638, there is no canonical definition to state claims against.
-/

/-! ## A361638.P7582699784073406324

`A083058(A080253(n))+n`
-/

namespace A361638.P7582699784073406324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083058 (A080253 n).toNat + (n : ℤ)

end

end A361638.P7582699784073406324

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

The programs for A361645, the canonical program `A361645.P5436970020374288837` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A361645 has offset 0).

The definition of A361645 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8192 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A361645.P5436970020374288837

`A374356(xor(n, floor(n/2)))`

The canonical program, it is in `Seq.B002.C006`.
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

The programs for A361649, the canonical program `A361649.P6090098502056357450` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A361649 has offset 0).

The definition of A361649 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(1+n)*(2*a(n-1)-(n-2)*a(n-2))` (program `A361649.P6090098502056357450`, by `A361649.P6090098502056357450.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A361649.P6090098502056357450

`(1+n)*(2*a(n-1)-(n-2)*a(n-2))` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C034`.
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

/-! ## A361650.P11857529043683100912

`A027748(A325044(n+1)%A086390(3*(n+1)))`
-/

namespace A361650.P11857529043683100912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027748 (Int.tmod (A325044 (n + 1)) (A086390 (3 * (n + 1)))).toNat

end

end A361650.P11857529043683100912

/-! ## A361650.P14335117918346939478

`A027748(comp[C(6, A213274(n+2))])`
-/

namespace A361650.P14335117918346939478
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 6 (A213274 (n + 2)).toNat

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027748 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A361650.P14335117918346939478

/-! ## A361650.P5981081447915686077

`A027748(comp[A100615(3*n)*A146110(n)])`
-/

namespace A361650.P5981081447915686077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100615 (3 * n) * A146110 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027748 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A361650.P5981081447915686077

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

/-! ## A361651.P9187326660964254441

`A226874(n)*A347456(A186085(n))`
-/

namespace A361651.P9187326660964254441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226874 n * A347456 (A186085 n).toNat

end

end A361651.P9187326660964254441

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

The programs for A361657, there is no canonical definition to state claims against.
-/

/-! ## A361657.P14014572917874532654

`A016825(A000704(n))-5`
-/

namespace A361657.P14014572917874532654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016825 (A000704 n).toNat - 5

end

end A361657.P14014572917874532654

/-! ## A361657.P92807178030381804

`A008588(70*C(n, 8)+2*C(n, 4)+1)-5`
-/

namespace A361657.P92807178030381804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008588 (70 * Nat.choose n 8 + 2 * Nat.choose n 4 + 1) - 5

end

end A361657.P92807178030381804

/-! ## A361657.P16167394470524883408

`A056530(A000704(n))`
-/

namespace A361657.P16167394470524883408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056530 (A000704 n).toNat

end

end A361657.P16167394470524883408

/-! ## A361657.P15331918211164260621

`A087445(A341705(n))`
-/

namespace A361657.P15331918211164260621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087445 (A341705 n).toNat

end

end A361657.P15331918211164260621

/-! ## A361657.P11082714931126681889

`A016813(A000704(n)-1)`
-/

namespace A361657.P11082714931126681889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 (A000704 n - 1).toNat

end

end A361657.P11082714931126681889

/-!
# A361658: Constant term in the expansion of (1 + x^3 + y^3 + z^3 + 1/(x*y*z))^n.

The programs for A361658, there is no canonical definition to state claims against.
-/

/-! ## A361658.P7775393219952571221

`A017281(12*C(n, 6))`
-/

namespace A361658.P7775393219952571221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017281 (12 * Nat.choose n 6)

end

end A361658.P7775393219952571221

/-! ## A361658.P12619707092954208987

`A017077(3*5*C(n, 6))`
-/

namespace A361658.P12619707092954208987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017077 (3 * (5 * Nat.choose n 6))

end

end A361658.P12619707092954208987

/-! ## A361658.P12911520304636416658

`A016921(4*5*C(n, 6))`
-/

namespace A361658.P12911520304636416658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016921 (4 * (5 * Nat.choose n 6))

end

end A361658.P12911520304636416658

/-! ## A361658.P10378973193468502123

`A000027(A293588(n))`
-/

namespace A361658.P10378973193468502123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A293588 n).toNat

end

end A361658.P10378973193468502123

/-! ## A361658.P17716943379846774272

`filter[A293588(n), A011558(#)]`
-/

namespace A361658.P17716943379846774272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293588 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A011558 (f1 j).toNat = 1) n)

end

end A361658.P17716943379846774272

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

The programs for A361670, the canonical program `A361670.P4423035951555076962` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A361670 has offset 1).

The definition of A361670 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007913, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A361670.P4423035951555076962

`A007913(A000217(n+1))`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A361670

/-- `A007913(A000217(n+1))` -/
def P4423035951555076962.Spec : Prop :=
  ∀ n, P4423035951555076962.a n = A361670 (n + 1)

theorem P4423035951555076962.correct : P4423035951555076962.Spec := by
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

/-! ## A361670.P1625263062402057821

`A007913(∑[n+1])`
-/

namespace A361670.P1625263062402057821
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A361670.P1625263062402057821

namespace A361670

/-- `A007913(∑[n+1])` -/
def P1625263062402057821.Spec : Prop :=
  ∀ n, P1625263062402057821.a n = A361670 (n + 1)

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

/-! ## A361670.P15402126075938401907

`∏{p}[A007913(A000096(n)+1), #]`
-/

namespace A361670.P15402126075938401907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A000096 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A361670.P15402126075938401907

namespace A361670

/-- `∏{p}[A007913(A000096(n)+1), #]` -/
def P15402126075938401907.Spec : Prop :=
  ∀ n, (P15402126075938401907.a n : ℤ) = A361670 (n + 1)

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

/-! ## A361670.P9268897908975898382

`∏{p}[A007913(eq[1, A004736(n+1)]+1), #]`
-/

namespace A361670.P9268897908975898382
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A361670.P9268897908975898382

namespace A361670

/-- `∏{p}[A007913(eq[1, A004736(n+1)]+1), #]` -/
def P9268897908975898382.Spec : Prop :=
  ∀ n, (P9268897908975898382.a n : ℤ) = A361670 (n + 1)

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

The programs for A361671, the canonical program `A361671.P15487108211156603945` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A361671 has offset 1).

The definition of A361671 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007913, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A361671.P15487108211156603945

`A007913(A000292(n+1))`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A361671

/-- `A007913(A000292(n+1))` -/
def P15487108211156603945.Spec : Prop :=
  ∀ n, P15487108211156603945.a n = A361671 (n + 1)

theorem P15487108211156603945.correct : P15487108211156603945.Spec := by
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

/-! ## A361671.P8915679821678907280

`A007913(∑[∑[n+1]])`
-/

namespace A361671.P8915679821678907280
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A361671.P8915679821678907280

namespace A361671

/-- `A007913(∑[∑[n+1]])` -/
def P8915679821678907280.Spec : Prop :=
  ∀ n, P8915679821678907280.a n = A361671 (n + 1)

end A361671

/-!
# A361673: Constant term in the expansion of (1 + x*y + y*z + z*x + 1/(x*y*z))^n.

The programs for A361673, there is no canonical definition to state claims against.
-/

/-! ## A361673.P16993199882268996691

`A079097(5*12*C(n, 5))`
-/

namespace A361673.P16993199882268996691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079097 (5 * (12 * Nat.choose n 5))

end

end A361673.P16993199882268996691

/-! ## A361673.P16191979871086812796

`A345949(2*6*10*C(n, 5)+3)`
-/

namespace A361673.P16191979871086812796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345949 (2 * (6 * (10 * Nat.choose n 5)) + 3)

end

end A361673.P16191979871086812796

/-! ## A361673.P8238719065986573191

`A345949(xor(3, 2*6*10*C(n, 5)))`
-/

namespace A361673.P8238719065986573191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345949 (Nat.xor 3 (2 * (6 * (10 * Nat.choose n 5))))

end

end A361673.P8238719065986573191

/-! ## A361673.P16888922562153449035

`A038572(n*(n*(n-5)+5)²+2-n)`
-/

namespace A361673.P16888922562153449035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038572 ((n : ℤ) * ((n : ℤ) * ((n : ℤ) - 5) + 5) ^ 2 + (2 - (n : ℤ))).toNat

end

end A361673.P16888922562153449035

/-! ## A361673.P17974957096534271528

`A082725(n*(n*(n-5)+5)²+2-n)`
-/

namespace A361673.P17974957096534271528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082725 ((n : ℤ) * ((n : ℤ) * ((n : ℤ) - 5) + 5) ^ 2 + (2 - (n : ℤ))).toNat

end

end A361673.P17974957096534271528

/-!
# A361675: Constant term in the expansion of (1 + x*y*z + w*y*z + w*x*z + w*x*y + 1/(w*x*y*z))^n.

The programs for A361675, there is no canonical definition to state claims against.
-/

/-! ## A361675.P13699385789025535671

`A047452(A361701(n))`
-/

namespace A361675.P13699385789025535671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047452 (A361701 n).toNat

end

end A361675.P13699385789025535671

/-! ## A361675.P17687542054706913806

`A016813(A361701(n)-1)`
-/

namespace A361675.P17687542054706913806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 (A361701 n - 1).toNat

end

end A361675.P17687542054706913806

/-! ## A361675.P5295022449643773902

`A016813(gcd(A058832(n), A058834(n)))`
-/

namespace A361675.P5295022449643773902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 (Int.gcd (A058832 n) (A058834 n))

end

end A361675.P5295022449643773902

/-! ## A361675.P14253366827342980987

`A047368(A053497(n)+1)`
-/

namespace A361675.P14253366827342980987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047368 (A053497 n + 1).toNat

end

end A361675.P14253366827342980987

/-! ## A361675.P5707472393651087147

`A143579(C(n, 6)*120*A002262(n))`
-/

namespace A361675.P5707472393651087147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143579 ((Nat.choose n 6 * 120 : ℤ) * A002262 n).toNat

end

end A361675.P5707472393651087147

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

/-! ## A361676.P68329412527598223

`A333226(A045683(n))+n-1`
-/

namespace A361676.P68329412527598223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333226 (A045683 n).toNat + ((n : ℤ) - 1)

end

end A361676.P68329412527598223

/-! ## A361676.P9534481542503547246

`A392705(A052335(n+2))+n`
-/

namespace A361676.P9534481542503547246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392705 (A052335 (n + 2)).toNat + (n : ℤ)

end

end A361676.P9534481542503547246

/-!
# A361677: Constant term in the expansion of (1 + x + y + z + 1/(x*y) + 1/(y*z) + 1/(z*x))^n.

The programs for A361677, there is no canonical definition to state claims against.
-/

/-! ## A361677.P4298879728964527197

`A331425(A097122(n))`
-/

namespace A361677.P4298879728964527197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331425 (A097122 n).toNat

end

end A361677.P4298879728964527197

/-! ## A361677.P7353346667305259219

`A079407(∑[A371139(n)])`
-/

namespace A361677.P7353346667305259219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371139 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079407 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A361677.P7353346667305259219

/-!
# A361678: Constant term in the expansion of (1 + w + x + y + z + 1/(x*y*z) + 1/(w*y*z) + 1/(w*x*z) + 1/(w*x*y))^n.

The programs for A361678, there is no canonical definition to state claims against.
-/

/-! ## A361678.P8978216977401257971

`A008619(8*24*C(n, 4))`
-/

namespace A361678.P8978216977401257971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (8 * (24 * Nat.choose n 4))

end

end A361678.P8978216977401257971

/-! ## A361678.P16054439116611081782

`A106466(8*24*C(n, 4))`
-/

namespace A361678.P16054439116611081782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106466 (8 * (24 * Nat.choose n 4))

end

end A361678.P16054439116611081782

/-! ## A361678.P2164201358579442651

`A047471(A205800(n))`
-/

namespace A361678.P2164201358579442651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047471 (A205800 n).toNat

end

end A361678.P2164201358579442651

/-! ## A361678.P1374482108099859116

`A320496(A052762(n))`
-/

namespace A361678.P1374482108099859116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320496 (A052762 n).toNat

end

end A361678.P1374482108099859116

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

The programs for A361682, there is no canonical definition to state claims against.
-/

/-! ## A361682.P4351735813852243474

`A361521(n)+1`
-/

namespace A361682.P4351735813852243474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361521 n + 1

end

end A361682.P4351735813852243474

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

/-! ## A361682.P1360194807641428027

`A008619(2*A361521(n))`
-/

namespace A361682.P1360194807641428027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * A361521 n).toNat

end

end A361682.P1360194807641428027

/-! ## A361682.P18404545944071135001

`A028242(2*A361521(n))`
-/

namespace A361682.P18404545944071135001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (2 * A361521 n).toNat

end

end A361682.P18404545944071135001

/-! ## A361682.P13579902750471828083

`A080513(2*A361521(n))`
-/

namespace A361682.P13579902750471828083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080513 (2 * A361521 n).toNat

end

end A361682.P13579902750471828083

/-! ## A361682.P720435482868639079

`A131732(2*A361521(n))`
-/

namespace A361682.P720435482868639079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131732 (2 * A361521 n).toNat

end

end A361682.P720435482868639079

/-! ## A361682.P13038574980954687397

`A094525(n)+A062707(n)`
-/

namespace A361682.P13038574980954687397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094525 n + A062707 n

end

end A361682.P13038574980954687397

/-! ## A361682.P6581707518306670556

`A082046(n)+1-A338369(n)`
-/

namespace A361682.P6581707518306670556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082046 n + (1 - A338369 n)

end

end A361682.P6581707518306670556

/-! ## A361682.P16943087173530961035

`n-(A023443(n)-A361521(n))`
-/

namespace A361682.P16943087173530961035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A023443 n - A361521 n)

end

end A361682.P16943087173530961035

/-!
# A361684: Ramsey core number rc(n,n).

The programs for A361684, the canonical program `A361684.P3683063365077082163` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A361684 has offset 1).

The definition of A361684 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A361684.P3683063365077082163

`ceil(2*(n+1)-3/2+sqrt(2*n²+9/4))`

The canonical program, it is in `Seq.B000.C034`.
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

The programs for A361689, the canonical program `A361689.P6436331542054967917` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A361689 has offset 1).

The definition of A361689 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A275367, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
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

/-! ## A361689.P6436331542054967917

`2*(1+A007814(n+1))*A275367(n+1)`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A361689

/-- `2*(1+A007814(n+1))*A275367(n+1)` -/
def P6436331542054967917.Spec : Prop :=
  ∀ n, P6436331542054967917.a n = A361689 (n + 1)

theorem P6436331542054967917.correct : P6436331542054967917.Spec := by
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

The programs for A361691, the canonical program `A361691.P14342143922485954219` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A361691 has offset 1).

The definition of A361691 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A279061, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A361691.P14342143922485954219

`A279061(7*(n+1)-1)`

The canonical program, it is in `Seq.B002.C006`.
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

/-!
# A361692: a(n) = 17*n - 1.

The programs for A361692, the canonical program `A361692.P1603049286899998838` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A361692 has offset 1).

The definition of A361692 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `17*(n+1)-1` (program `A361692.P1603049286899998838`, by `A361692.P1603049286899998838.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A361692.P1603049286899998838

`17*(n+1)-1`

The canonical program, it is in `Seq.B000.C034`.
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

The programs for A361699, there is no canonical definition to state claims against.
-/

/-! ## A361699.P7850618632976458929

`A126760(2*6*10*C(n, 5)+2)`
-/

namespace A361699.P7850618632976458929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126760 (2 * (6 * (10 * Nat.choose n 5)) + 2)

end

end A361699.P7850618632976458929

/-! ## A361699.P8775075959231863948

`A126760(or(2, 2*6*10*C(n, 5)))`
-/

namespace A361699.P8775075959231863948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126760 (Nat.lor 2 (2 * (6 * (10 * Nat.choose n 5))))

end

end A361699.P8775075959231863948

/-! ## A361699.P6302896225679442507

`A126760(xor(2, 2*6*10*C(n, 5)))`
-/

namespace A361699.P6302896225679442507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126760 (Nat.xor 2 (2 * (6 * (10 * Nat.choose n 5))))

end

end A361699.P6302896225679442507

/-! ## A361699.P3981513906107335083

`(A345949(2*6*10*C(n, 5)+3)+2)/3`
-/

namespace A361699.P3981513906107335083
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A345949 (2 * (6 * (10 * Nat.choose n 5)) + 3) + 2 : ℚ) / 3

end

end A361699.P3981513906107335083

/-! ## A361699.P7302180841654385259

`A008619(40*n*(n-1)*(n-2)*(n-3)*(n-4)/120)`
-/

namespace A361699.P7302180841654385259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (SequenceMachineLib.roundAway (40 * ((n : ℚ) * (((n : ℤ) - 1 : ℚ) * (((n : ℤ) - 2 : ℚ) * (((n : ℤ) - 3 : ℚ) * (((n : ℤ) - 4 : ℚ) / 120))))))).toNat

end

end A361699.P7302180841654385259

