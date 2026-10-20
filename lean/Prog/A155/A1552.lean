import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C004
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C014
import Seq.B000.C016
import Seq.B000.C019
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C037
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C003
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B007.C000
import Seq.B009.C000
import Seq.B012.C000
import Seq.B013.C000
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
# A155200: G.f.: A(x) = exp( Sum_{n>=1} 2^(n^2) * x^n/n ), a power series in x with integer coefficients.

The programs for A155200, there is no canonical definition to state claims against.
-/

/-! ## A155200.P2013155578841311459

`A211892(n)-a(n-1)` with `a(0)=1`
-/

namespace A155200.P2013155578841311459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A211892 n - a (n - 1)

end

end A155200.P2013155578841311459

/-! ## A155200.P17822362087126636412

`A155810(∑[n])`
-/

namespace A155200.P17822362087126636412
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155810 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A155200.P17822362087126636412

/-! ## A155200.P12319656327533531919

`record[A155810(n)]`
-/

namespace A155200.P12319656327533531919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155810 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A155200.P12319656327533531919

/-! ## A155200.P11013913325297740028

`A281155(n)+A155810(A000217(n))`
-/

namespace A155200.P11013913325297740028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281155 n + A155810 (A000217 n).toNat

end

end A155200.P11013913325297740028

/-! ## A155200.P9344310226814225040

`gcd(A000038(n), A155810(A000217(n)))`
-/

namespace A155200.P9344310226814225040
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A155810 (A000217 n).toNat)

end

end A155200.P9344310226814225040

/-!
# A155201: G.f.: A(x) = exp( Sum_{n>=1} (2^n + 1)^n * x^n/n ), a power series in x with integer coefficients.

The programs for A155201, there is no canonical definition to state claims against.
-/

/-! ## A155201.P14595626650819278601

`∑[A156910(n)]`
-/

namespace A155201.P14595626650819278601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156910 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A155201.P14595626650819278601

/-! ## A155201.P15693526205425544464

`A156910(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A155201.P15693526205425544464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A156910 n + a (A023443 n).toNat

end

end A155201.P15693526205425544464

/-! ## A155201.P14681371047949800013

`A156910(n)+a(A000027(n+1)-2)` with `a(0)=1`
-/

namespace A155201.P14681371047949800013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A156910 n + a (A000027 (n + 1) - 2).toNat

end

end A155201.P14681371047949800013

/-! ## A155201.P16656256363209289370

`a(n-1)-A156910(n)/A057428(n+1)` with `a(0)=1`
-/

namespace A155201.P16656256363209289370
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) - (A156910 n : ℚ) / (A057428 (n + 1) : ℚ)

end

end A155201.P16656256363209289370

/-!
# A155203: G.f.: A(x) = exp( Sum_{n>=1} 3^(n^2) * x^n/n ), a power series in x with integer coefficients.

The programs for A155203, there is no canonical definition to state claims against.
-/

/-! ## A155203.P7154174486723198611

`A155812(∑[n])`
-/

namespace A155203.P7154174486723198611
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155812 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A155203.P7154174486723198611

/-! ## A155203.P10492294955958730683

`record[A155812(n)]`
-/

namespace A155203.P10492294955958730683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155812 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A155203.P10492294955958730683

/-!
# A155204: G.f.: A(x) = exp( Sum_{n>=1} (3^n + 1)^n * x^n/n ), a power series in x with integer coefficients.

The programs for A155204, there is no canonical definition to state claims against.
-/

/-! ## A155204.P4508602672548326378

`∑[A156911(n)]`
-/

namespace A155204.P4508602672548326378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156911 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A155204.P4508602672548326378

/-!
# A155211: Numbers n such that n^4+(n+1)^4 is a prime.

The programs for A155211, there is no canonical definition to state claims against.
-/

/-! ## A155211.P16074436759348176779

`sqrt(sqrt(A075578(n)))`
-/

namespace A155211.P16074436759348176779
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Real.sqrt (A075578 n : ℝ))

end

end A155211.P16074436759348176779

/-! ## A155211.P7097582197720493780

`A152913(n+1)-record[A066487(n+2)]`
-/

namespace A155211.P7097582197720493780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066487 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152913 (n + 1) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A155211.P7097582197720493780

/-! ## A155211.P9446733321982235828

`eq[A002523(n)%A066487(n+1), A002523(n)]`
-/

namespace A155211.P9446733321982235828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002523 n) (A066487 (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002523 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A155211.P9446733321982235828

/-! ## A155211.P5453435998749794830

`eq[A160747(n)%A066487(n+1), A160747(n)]`
-/

namespace A155211.P5453435998749794830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A160747 n) (A066487 (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160747 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A155211.P5453435998749794830

/-! ## A155211.P8646347864491414308

`eq[A173785(n)%A066487(n+1), A173785(n)]`
-/

namespace A155211.P8646347864491414308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A173785 n) (A066487 (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173785 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A155211.P8646347864491414308

/-! ## A155211.P5788263740759047968

`eq[A066455(n+1)%A066487(n+1), A066455(n+1)]`
-/

namespace A155211.P5788263740759047968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A066455 (n + 1)) (A066487 (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066455 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A155211.P5788263740759047968

/-! ## A155211.P3914249665505351538

`eq[1, A256547(n+1)]+1`
-/

namespace A155211.P3914249665505351538
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256547 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A155211.P3914249665505351538

/-!
# A155212: a(n) = (n^2 + 9*n + 4)/2.

The programs for A155212, the canonical program `A155212.P18289356943293586603` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A155212 has offset 0).

The definition of A155212 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n²+9*n+4)/2` (program `A155212.P4387845708213689030`, by `A155212.P4387845708213689030.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A155212.P4387845708213689030

`(n²+9*n+4)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A155212.P4387845708213689030
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n ^ 2 + 9 * n + 4 : ℚ) / 2

end

end A155212.P4387845708213689030

namespace A155212

/-- `(n²+9*n+4)/2` -/
def P4387845708213689030.Spec : Prop :=
  ∀ n, P4387845708213689030.a n = (A155212 n : ℚ)

theorem P4387845708213689030.correct : P4387845708213689030.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A155212, Nat.add_sub_cancel, A155212.P4387845708213689030.a, A155212.P18289356943293586603.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A155212, Nat.add_sub_cancel, A155212.P4387845708213689030.a, A155212.P18289356943293586603.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [← h1, ← h2, ← h3]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A155212

/-! ## A155212.P18289356943293586603

`3*a(n-1)-3*a(n-2)+a(n-3)` with `a(0)=2, a(1)=7, a(2)=13`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A155212

/-- `3*a(n-1)-3*a(n-2)+a(n-3)` -/
def P18289356943293586603.Spec : Prop :=
  ∀ n, P18289356943293586603.a n = A155212 n

theorem P18289356943293586603.correct : P18289356943293586603.Spec := by
  intro n
  simp only [A155212]

end A155212

/-! ## A155212.P17657526798777039039

`a(n-1)+n+4` with `a(0)=2`
-/

namespace A155212.P17657526798777039039
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) + (n + 4)

end

end A155212.P17657526798777039039

namespace A155212

/-- `a(n-1)+n+4` -/
def P17657526798777039039.Spec : Prop :=
  ∀ n, (P17657526798777039039.a n : ℤ) = A155212 n

end A155212

/-! ## A155212.P1573706994786276878

`∑[ogf((2+x-2x^2)/(1-2x+x^2))]`
-/

namespace A155212.P1573706994786276878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 1, -2] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A155212.P1573706994786276878

namespace A155212

/-- `∑[ogf((2+x-2x^2)/(1-2x+x^2))]` -/
def P1573706994786276878.Spec : Prop :=
  ∀ n, P1573706994786276878.a n = A155212 n

end A155212

/-! ## A155212.P1890360204427655583

`ogf((2+x-2x^2)/(1-3x+3x^2-x^3))`
-/

namespace A155212.P1890360204427655583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 1, -2] [1, -3, 3, -1] n

end

end A155212.P1890360204427655583

namespace A155212

/-- `ogf((2+x-2x^2)/(1-3x+3x^2-x^3))` -/
def P1890360204427655583.Spec : Prop :=
  ∀ n, P1890360204427655583.a n = A155212 n

end A155212

/-! ## A155212.P3128941164338065001

`∑[2%(n+2)+n+2]`
-/

namespace A155212.P3128941164338065001
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 % (n + 2) + (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A155212.P3128941164338065001

namespace A155212

/-- `∑[2%(n+2)+n+2]` -/
def P3128941164338065001.Spec : Prop :=
  ∀ n, (P3128941164338065001.a n : ℤ) = A155212 n

end A155212

/-! ## A155212.P6092757296957288495

`-(∑[xor(n+3, -1)]+2)`
-/

namespace A155212.P6092757296957288495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n + 3 : ℤ) (-1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A155212.P6092757296957288495

namespace A155212

/-- `-(∑[xor(n+3, -1)]+2)` -/
def P6092757296957288495.Spec : Prop :=
  ∀ n, P6092757296957288495.a n = A155212 n

end A155212

/-! ## A155212.P14164040975956773239

`record[a(n-1)-(5-n)]` with `a(0)=2`
-/

namespace A155212.P14164040975956773239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  f1 (n - 1) - (5 - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A155212.P14164040975956773239

namespace A155212

/-- `record[a(n-1)-(5-n)]` -/
def P14164040975956773239.Spec : Prop :=
  ∀ n, P14164040975956773239.a n = A155212 n

end A155212

/-! ## A155212.P16105789508553214136

`∑[2*ceil(atan(n+1))+n]`
-/

namespace A155212.P16105789508553214136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ⌈Real.arctan (n + 1 : ℝ)⌉ + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A155212.P16105789508553214136

namespace A155212

/-- `∑[2*ceil(atan(n+1))+n]` -/
def P16105789508553214136.Spec : Prop :=
  ∀ n, P16105789508553214136.a n = A155212 n

end A155212

/-! ## A155212.P9408258601865330702

`∑[2^ceil(atan(n+1))+n]`
-/

namespace A155212.P9408258601865330702
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (⌈Real.arctan (n + 1 : ℝ)⌉ : ℤ) + (n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A155212.P9408258601865330702

namespace A155212

/-- `∑[2^ceil(atan(n+1))+n]` -/
def P9408258601865330702.Spec : Prop :=
  ∀ n, P9408258601865330702.a n = (A155212 n : ℚ)

end A155212

/-! ## A155212.P5207528262152836167

`Δ[C(n+1, 3)+2*n²]`
-/

namespace A155212.P5207528262152836167
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) 3 + 2 * n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A155212.P5207528262152836167

namespace A155212

/-- `Δ[C(n+1, 3)+2*n²]` -/
def P5207528262152836167.Spec : Prop :=
  ∀ n, P5207528262152836167.a n = A155212 n

end A155212

/-! ## A155212.P11246088351182329472

`∑[a(C(2, n+2))²+n]` with `a(0)=2`
-/

namespace A155212.P11246088351182329472
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2] fun n f1 =>
  f1 (Nat.choose 2 (n + 2)) ^ 2 + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A155212.P11246088351182329472

namespace A155212

/-- `∑[a(C(2, n+2))²+n]` -/
def P11246088351182329472.Spec : Prop :=
  ∀ n, (P11246088351182329472.a n : ℤ) = A155212 n

end A155212

/-! ## A155212.P10392652779277424643

`∑[a(and(2, n²))+n+2]` with `a(0)=2`
-/

namespace A155212.P10392652779277424643
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2] fun n f1 =>
  f1 (Nat.land 2 (n ^ 2)) + (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A155212.P10392652779277424643

namespace A155212

/-- `∑[a(and(2, n²))+n+2]` -/
def P10392652779277424643.Spec : Prop :=
  ∀ n, (P10392652779277424643.a n : ℤ) = A155212 n

end A155212

/-! ## A155212.P6214224919238641706

`floor((n+2)²-(C(n, 2)+ϕ))`
-/

namespace A155212.P6214224919238641706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n + 2) ^ 2 : ℝ) - ((Nat.choose n 2 : ℝ) + Real.goldenRatio)⌋

end

end A155212.P6214224919238641706

namespace A155212

/-- `floor((n+2)²-(C(n, 2)+ϕ))` -/
def P6214224919238641706.Spec : Prop :=
  ∀ n, P6214224919238641706.a n = A155212 n

end A155212

/-! ## A155212.P17083625341158378065

`∑[2*a(n-2)-n]` with `a(0)=2, a(1)=5, a(2)=6`
-/

namespace A155212.P17083625341158378065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 5, 6] fun n f1 =>
  2 * f1 (n - 2) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A155212.P17083625341158378065

namespace A155212

/-- `∑[2*a(n-2)-n]` -/
def P17083625341158378065.Spec : Prop :=
  ∀ n, P17083625341158378065.a n = A155212 n

end A155212

/-! ## A155212.P7736837496199799576

`abs(1-(C(n+3, 2)+2*n))`
-/

namespace A155212.P7736837496199799576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (Nat.choose (n + 3) 2 + 2 * n : ℤ)|

end

end A155212.P7736837496199799576

namespace A155212

/-- `abs(1-(C(n+3, 2)+2*n))` -/
def P7736837496199799576.Spec : Prop :=
  ∀ n, P7736837496199799576.a n = A155212 n

end A155212

/-! ## A155212.P11041962942476548416

`∑[a(C(2, n+2))+n+2]` with `a(0)=2`
-/

namespace A155212.P11041962942476548416
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2] fun n f1 =>
  f1 (Nat.choose 2 (n + 2)) + (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A155212.P11041962942476548416

namespace A155212

/-- `∑[a(C(2, n+2))+n+2]` -/
def P11041962942476548416.Spec : Prop :=
  ∀ n, (P11041962942476548416.a n : ℤ) = A155212 n

end A155212

/-! ## A155212.P11632635807438837704

`∑[a(floor(1/(n+1)))²+n]` with `a(0)=2`
-/

namespace A155212.P11632635807438837704
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2] fun n f1 =>
  f1 ⌊1 / (n + 1 : ℚ)⌋.toNat ^ 2 + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A155212.P11632635807438837704

namespace A155212

/-- `∑[a(floor(1/(n+1)))²+n]` -/
def P11632635807438837704.Spec : Prop :=
  ∀ n, (P11632635807438837704.a n : ℤ) = A155212 n

end A155212

/-! ## A155212.P14756796432305574517

`∑[3^floor(atan(n+1))+n+1]`
-/

namespace A155212.P14756796432305574517
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (⌊Real.arctan (n + 1 : ℝ)⌋ : ℤ) + (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A155212.P14756796432305574517

namespace A155212

/-- `∑[3^floor(atan(n+1))+n+1]` -/
def P14756796432305574517.Spec : Prop :=
  ∀ n, P14756796432305574517.a n = (A155212 n : ℚ)

end A155212

/-! ## A155212.P16798443769806753905

`∑[4/2-(1-a(n-1))]` with `a(0)=2, a(1)=5`
-/

namespace A155212.P16798443769806753905
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [2, 5] fun n f1 =>
  (4 : ℚ) / 2 - (1 - f1 (n - 1))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A155212.P16798443769806753905

namespace A155212

/-- `∑[4/2-(1-a(n-1))]` -/
def P16798443769806753905.Spec : Prop :=
  ∀ n, P16798443769806753905.a n = (A155212 n : ℚ)

end A155212

/-!
# A155213: a(n) = floor(prime(n)/9).

The programs for A155213, the canonical program `A155213.P12581193989716260727` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A155213 has offset 1).

The definition of A155213 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A038194, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A155213.P12581193989716260727

`(A000040(n+1)-A038194(n+1))/9`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A155213

/-- `(A000040(n+1)-A038194(n+1))/9` -/
def P12581193989716260727.Spec : Prop :=
  ∀ n, P12581193989716260727.a n = (A155213 (n + 1) : ℚ)

end A155213

/-! ## A155213.P3434252131977628844

`floor(Δ[A007504(n)/9])`
-/

namespace A155213.P3434252131977628844
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007504 n : ℚ) / 9

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊f1 (n + 1) - f1 n⌋

end

end A155213.P3434252131977628844

namespace A155213

/-- `floor(Δ[A007504(n)/9])` -/
def P3434252131977628844.Spec : Prop :=
  ∀ n, P3434252131977628844.a n = A155213 (n + 1)

end A155213

/-! ## A155213.P5811452403298171938

`floor(A144769(n+1)/3)`
-/

namespace A155213.P5811452403298171938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A144769 (n + 1) : ℚ) / 3⌋

end

end A155213.P5811452403298171938

namespace A155213

/-- `floor(A144769(n+1)/3)` -/
def P5811452403298171938.Spec : Prop :=
  ∀ n, P5811452403298171938.a n = A155213 (n + 1)

end A155213

/-! ## A155213.P16493367273880181722

`floor(A000040(n+1)/9)`
-/

namespace A155213.P16493367273880181722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000040 (n + 1) : ℚ) / 9⌋

end

end A155213.P16493367273880181722

namespace A155213

/-- `floor(A000040(n+1)/9)` -/
def P16493367273880181722.Spec : Prop :=
  ∀ n, P16493367273880181722.a n = A155213 (n + 1)

end A155213

/-! ## A155213.P15372647325249505957

`floor(A006093(n+1)/9)`
-/

namespace A155213.P15372647325249505957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A006093 (n + 1) : ℚ) / 9⌋

end

end A155213.P15372647325249505957

namespace A155213

/-- `floor(A006093(n+1)/9)` -/
def P15372647325249505957.Spec : Prop :=
  ∀ n, P15372647325249505957.a n = A155213 (n + 1)

end A155213

/-! ## A155213.P1134987538042050323

`floor(A072055(n+1)/18)`
-/

namespace A155213.P1134987538042050323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A072055 (n + 1) : ℚ) / 18⌋

end

end A155213.P1134987538042050323

namespace A155213

/-- `floor(A072055(n+1)/18)` -/
def P1134987538042050323.Spec : Prop :=
  ∀ n, P1134987538042050323.a n = A155213 (n + 1)

end A155213

/-! ## A155213.P355439312779546230

`floor(abs(Δ[A064365(n)])/9)`
-/

namespace A155213.P355439312779546230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064365 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(|f1 (n + 1) - f1 n| : ℚ) / 9⌋

end

end A155213.P355439312779546230

namespace A155213

/-- `floor(abs(Δ[A064365(n)])/9)` -/
def P355439312779546230.Spec : Prop :=
  ∀ n, P355439312779546230.a n = A155213 (n + 1)

end A155213

/-! ## A155213.P7033908378918115676

`floor(sqrt(A001248(n+1))/9)`
-/

namespace A155213.P7033908378918115676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (A001248 (n + 1) : ℝ) / 9⌋

end

end A155213.P7033908378918115676

namespace A155213

/-- `floor(sqrt(A001248(n+1))/9)` -/
def P7033908378918115676.Spec : Prop :=
  ∀ n, P7033908378918115676.a n = A155213 (n + 1)

end A155213

/-! ## A155213.P7448681970567641635

`floor(record[A259153(n+2)]/9)`
-/

namespace A155213.P7448681970567641635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259153 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / 9⌋

end

end A155213.P7448681970567641635

namespace A155213

/-- `floor(record[A259153(n+2)]/9)` -/
def P7448681970567641635.Spec : Prop :=
  ∀ n, P7448681970567641635.a n = A155213 (n + 1)

end A155213

/-! ## A155213.P13486350751533451822

`floor((A052147(n+1)-2)/9)`
-/

namespace A155213.P13486350751533451822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A052147 (n + 1) - 2 : ℚ) / 9⌋

end

end A155213.P13486350751533451822

namespace A155213

/-- `floor((A052147(n+1)-2)/9)` -/
def P13486350751533451822.Spec : Prop :=
  ∀ n, P13486350751533451822.a n = A155213 (n + 1)

end A155213

/-! ## A155213.P12732230223097219242

`floor((A113935(n+1)-3)/9)`
-/

namespace A155213.P12732230223097219242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A113935 (n + 1) - 3 : ℚ) / 9⌋

end

end A155213.P12732230223097219242

namespace A155213

/-- `floor((A113935(n+1)-3)/9)` -/
def P12732230223097219242.Spec : Prop :=
  ∀ n, P12732230223097219242.a n = A155213 (n + 1)

end A155213

/-! ## A155213.P7906086775332938739

`floor(A008578(n+2)/9)`
-/

namespace A155213.P7906086775332938739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A008578 (n + 2) : ℚ) / 9⌋

end

end A155213.P7906086775332938739

namespace A155213

/-- `floor(A008578(n+2)/9)` -/
def P7906086775332938739.Spec : Prop :=
  ∀ n, P7906086775332938739.a n = A155213 (n + 1)

end A155213

/-! ## A155213.P2742169200553642416

`floor(p?[xor(1, n)]/9)`
-/

namespace A155213.P2742169200553642416
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℚ) / 9⌋

end

end A155213.P2742169200553642416

namespace A155213

/-- `floor(p?[xor(1, n)]/9)` -/
def P2742169200553642416.Spec : Prop :=
  ∀ n, P2742169200553642416.a n = A155213 (n + 1)

end A155213

/-! ## A155213.P7496089285880296262

`ceil(p?[xor(1, n)]/9)-1`
-/

namespace A155213.P7496089285880296262
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℚ) / 9⌉ - 1

end

end A155213.P7496089285880296262

namespace A155213

/-- `ceil(p?[xor(1, n)]/9)-1` -/
def P7496089285880296262.Spec : Prop :=
  ∀ n, P7496089285880296262.a n = A155213 (n + 1)

end A155213

/-! ## A155213.P1067924542432810203

`floor(record[A000010(n+1)/9])`
-/

namespace A155213.P1067924542432810203
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 1) : ℚ) / 9

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)⌋

end

end A155213.P1067924542432810203

namespace A155213

/-- `floor(record[A000010(n+1)/9])` -/
def P1067924542432810203.Spec : Prop :=
  ∀ n, P1067924542432810203.a n = A155213 (n + 1)

end A155213

/-! ## A155213.P14191784060875051810

`floor(record[A006530(n+2)/9])`
-/

namespace A155213.P14191784060875051810
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006530 (n + 2) : ℚ) / 9

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)⌋

end

end A155213.P14191784060875051810

namespace A155213

/-- `floor(record[A006530(n+2)/9])` -/
def P14191784060875051810.Spec : Prop :=
  ∀ n, P14191784060875051810.a n = A155213 (n + 1)

end A155213

/-! ## A155213.P11508402131457133554

`floor(record[A020639(n+2)/9])`
-/

namespace A155213.P11508402131457133554
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020639 (n + 2) : ℚ) / 9

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)⌋

end

end A155213.P11508402131457133554

namespace A155213

/-- `floor(record[A020639(n+2)/9])` -/
def P11508402131457133554.Spec : Prop :=
  ∀ n, P11508402131457133554.a n = A155213 (n + 1)

end A155213

/-! ## A155213.P606018134444323845

`floor(eq[2, A000005(n+1)]/9)`
-/

namespace A155213.P606018134444323845
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℚ) / 9⌋

end

end A155213.P606018134444323845

namespace A155213

/-- `floor(eq[2, A000005(n+1)]/9)` -/
def P606018134444323845.Spec : Prop :=
  ∀ n, P606018134444323845.a n = A155213 (n + 1)

end A155213

/-! ## A155213.P15185860653570444384

`floor((eq[1, A054024(n+1)]+1)/9)`
-/

namespace A155213.P15185860653570444384
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054024 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1 : ℚ) / 9⌋

end

end A155213.P15185860653570444384

namespace A155213

/-- `floor((eq[1, A054024(n+1)]+1)/9)` -/
def P15185860653570444384.Spec : Prop :=
  ∀ n, P15185860653570444384.a n = A155213 (n + 1)

end A155213

/-! ## A155213.P16939108961491892893

`floor((lt[n, A000010(n+2)]+2)/9)`
-/

namespace A155213.P16939108961491892893
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 2 : ℚ) / 9⌋

end

end A155213.P16939108961491892893

namespace A155213

/-- `floor((lt[n, A000010(n+2)]+2)/9)` -/
def P16939108961491892893.Spec : Prop :=
  ∀ n, P16939108961491892893.a n = A155213 (n + 1)

end A155213

/-!
# A155214: Palindromes n with the property that for some prime p, n = p + prime(p).

The programs for A155214, there is no canonical definition to state claims against.
-/

/-! ## A155214.P1107823303547376735

`∩[A002113(n+1), A073136(n+1)]`
-/

namespace A155214.P1107823303547376735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073136 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A155214.P1107823303547376735

/-! ## A155214.P5951411062811460385

`A014688(A145531(n+1))`
-/

namespace A155214.P5951411062811460385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014688 (A145531 (n + 1)).toNat

end

end A155214.P5951411062811460385

/-! ## A155214.P3964128960069487545

`A014688(p?[A115884(n+1)])`
-/

namespace A155214.P3964128960069487545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115884 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014688 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A155214.P3964128960069487545

/-! ## A155214.P16509261494534292111

`∩[A014688(A000040(n+1)), A002113(n+1)]`
-/

namespace A155214.P16509261494534292111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014688 (A000040 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A155214.P16509261494534292111

/-! ## A155214.P9678303633145346637

`A014688(∩[A115884(n+1), A008578(n+2)])`
-/

namespace A155214.P9678303633145346637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115884 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014688 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A155214.P9678303633145346637

/-!
# A155216: Number of decompositions of positive even numbers 2n into unordered sums of a prime and a prime or semiprime (Chen's partitions).

The programs for A155216, there is no canonical definition to state claims against.
-/

/-! ## A155216.P9336027741969911569

`A100949(2*(n+1))+A045917(n+1)`
-/

namespace A155216.P9336027741969911569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100949 (2 * (n + 1)) + A045917 (n + 1)

end

end A155216.P9336027741969911569

/-! ## A155216.P7579041656068070534

`A100949(2*(n+1))+A061358(2*(n+1))`
-/

namespace A155216.P7579041656068070534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100949 (2 * (n + 1)) + A061358 (2 * (n + 1))

end

end A155216.P7579041656068070534

/-! ## A155216.P6255476274359364002

`A322007(n+1)-A061357(n+1)`
-/

namespace A155216.P6255476274359364002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322007 (n + 1) - A061357 (n + 1)

end

end A155216.P6255476274359364002

/-! ## A155216.P5199513389062796736

`A322007(n+1)-A117929(2*(n+1))`
-/

namespace A155216.P5199513389062796736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322007 (n + 1) - A117929 (2 * (n + 1))

end

end A155216.P5199513389062796736

/-! ## A155216.P17554025755014275659

`A322007(n+1)-A004526(A035026(n+1))`
-/

namespace A155216.P17554025755014275659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322007 (n + 1) - A004526 (A035026 (n + 1)).toNat

end

end A155216.P17554025755014275659

/-! ## A155216.P13919493657286714633

`A322007(n+1)+A010051(n+1)-A045917(n+1)`
-/

namespace A155216.P13919493657286714633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322007 (n + 1) + (A010051 (n + 1) - A045917 (n + 1))

end

end A155216.P13919493657286714633

/-!
# A155217: Number of ways to place zero or more nonadjacent 1,0 1,1 2,1 polyhexes in any orientation on a planar nXnXn triangular grid.

The programs for A155217, there is no canonical definition to state claims against.
-/

/-! ## A155217.P4614082444276034408

`A325412(∑[∏[∏{p}[n+1, #-1]]])`
-/

namespace A155217.P4614082444276034408
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), ((p : ℤ) - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325412 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A155217.P4614082444276034408

/-! ## A155217.P8596187054922180286

`A325412(A237352(n+1))`
-/

namespace A155217.P8596187054922180286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325412 (A237352 (n + 1)).toNat

end

end A155217.P8596187054922180286

/-!
# A155218: Number of ways to place zero or more nonadjacent 1,0 1,1 2,0 polyhexes in any orientation on a planar nXnXn triangular grid.

The programs for A155218, there is no canonical definition to state claims against.
-/

/-! ## A155218.P15514281293839362794

`A001074(∑[∑[A305854(n)]])`
-/

namespace A155218.P15514281293839362794
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305854 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001074 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A155218.P15514281293839362794

/-!
# A155219: Number of ways to place zero or more nonadjacent 0,0 1,0 2,0 polyhexes in any orientation on a planar nXnXn triangular grid.

The programs for A155219, there is no canonical definition to state claims against.
-/

/-! ## A155219.P9440736335379829724

`record[A319703(∑[n!+3])]`
-/

namespace A155219.P9440736335379829724
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n + 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319703 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A155219.P9440736335379829724

/-!
# A155220: Number of ways to place zero or more nonadjacent 1,0 1,1 2,1 2,2 polyhexes in any orientation on a planar nXnXn triangular grid.

The programs for A155220, there is no canonical definition to state claims against.
-/

/-! ## A155220.P7122486652671728883

`∑[∑[3^(n+1-a(n-1))²]]` with `a(0)=1, a(1)=2`
-/

namespace A155220.P7122486652671728883
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.rec [1, 2] fun n f2 =>
  (3 : ℝ) ^ (((n + 1 : ℝ) - f2 (n - 1)) ^ 2)

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A155220.P7122486652671728883

/-!
# A155221: Number of ways to place zero or more nonadjacent 1,1 2,0 2,1 2,2 polyhexes in any orientation on a planar nXnXn triangular grid.

The programs for A155221, there is no canonical definition to state claims against.
-/

/-! ## A155221.P17609099839135333981

`A160802(or(1, A110149(n)))`
-/

namespace A155221.P17609099839135333981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160802 (Int.lor 1 (A110149 n)).toNat

end

end A155221.P17609099839135333981

/-!
# A155223: Number of ways to place zero or more nonadjacent 0,0 1,0 2,0 3,0 polyhexes in any orientation on a planar nXnXn triangular grid.

The programs for A155223, there is no canonical definition to state claims against.
-/

/-! ## A155223.P9059664900927116688

`A155237(A001096(n)+4)`
-/

namespace A155223.P9059664900927116688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155237 (A001096 n + 4).toNat

end

end A155223.P9059664900927116688

/-! ## A155223.P17561310974086230330

`A155237(A010352(n+3)+1)`
-/

namespace A155223.P17561310974086230330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155237 (A010352 (n + 3) + 1).toNat

end

end A155223.P17561310974086230330

/-!
# A155224: Number of ways to place zero or more nonadjacent 1,0 1,1 2,0 3,1 polyhexes in any orientation on a planar nXnXn triangular grid.

The programs for A155224, there is no canonical definition to state claims against.
-/

/-! ## A155224.P9822600082924969766

`A002487(A056918(n))`
-/

namespace A155224.P9822600082924969766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (A056918 n).toNat

end

end A155224.P9822600082924969766

/-!
# A155225: Number of ways to place zero or more nonadjacent 1,1 2,0 2,1 3,2 polyhexes in any orientation on a planar nXnXn triangular grid.

The programs for A155225, there is no canonical definition to state claims against.
-/

/-! ## A155225.P10996887096815957380

`∑{d}[A036484(n), A306203(#)]`
-/

namespace A155225.P10996887096815957380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036484 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A306203 d

end

end A155225.P10996887096815957380

/-! ## A155225.P1646057504184473052

`∑[record[A166974(A137153(n))]]`
-/

namespace A155225.P1646057504184473052
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166974 (A137153 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A155225.P1646057504184473052

/-!
# A155226: Number of ways to place zero or more nonadjacent 0,0 1,0 2,1 3,1 polyhexes in any orientation on a planar nXnXn triangular grid.

The programs for A155226, there is no canonical definition to state claims against.
-/

/-! ## A155226.P17633218983994678114

`A260672(A005258(n+1)+1)`
-/

namespace A155226.P17633218983994678114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260672 (A005258 (n + 1) + 1).toNat

end

end A155226.P17633218983994678114

/-!
# A155227: Number of ways to place zero or more nonadjacent 1,0 1,1 2,1 2,2 3,1 polyhexes in any orientation on a planar nXnXn triangular grid.

The programs for A155227, there is no canonical definition to state claims against.
-/

/-! ## A155227.P18326428838081687878

`A320533(record[A085880(n)])`
-/

namespace A155227.P18326428838081687878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085880 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320533 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A155227.P18326428838081687878

/-!
# A155229: Number of ways to place zero or more nonadjacent 1,1 2,0 2,1 2,2 3,1 polyhexes in any orientation on a planar nXnXn triangular grid.

The programs for A155229, there is no canonical definition to state claims against.
-/

/-! ## A155229.P7717228059392762569

`A374939(n+1)+∑[A070939(3*n)]`
-/

namespace A155229.P7717228059392762569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374939 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A155229.P7717228059392762569

/-! ## A155229.P10511033957365308597

`A332108(A088163(2*n)+A001156(n+3))`
-/

namespace A155229.P10511033957365308597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332108 (A088163 (2 * n) + A001156 (n + 3)).toNat

end

end A155229.P10511033957365308597

/-!
# A155230: Number of ways to place zero or more nonadjacent 1,0 2,0 2,1 2,2 3,0 polyhexes in any orientation on a planar nXnXn triangular grid.

The programs for A155230, there is no canonical definition to state claims against.
-/

/-! ## A155230.P1302542690540574753

`A374442(a(n-1))+5` with `a(0)=1`
-/

namespace A155230.P1302542690540574753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A374442 (a (n - 1)).toNat + 5

end

end A155230.P1302542690540574753

/-!
# A155231: Number of ways to place zero or more nonadjacent 1,1 2,1 2,2 3,0 3,1 polyhexes in any orientation on a planar nXnXn triangular grid.

The programs for A155231, there is no canonical definition to state claims against.
-/

/-! ## A155231.P8207048098074117110

`A173825(A184716(n+2))`
-/

namespace A155231.P8207048098074117110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173825 (A184716 (n + 2)).toNat

end

end A155231.P8207048098074117110

/-!
# A155233: Number of ways to place zero or more nonadjacent 0,0 1,0 1,1 2,0 3,0 polyhexes in any orientation on a planar nXnXn triangular grid.

The programs for A155233, there is no canonical definition to state claims against.
-/

/-! ## A155233.P14095582521782012578

`A260672(A165402(n+1))+A102223(n)`
-/

namespace A155233.P14095582521782012578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260672 (A165402 (n + 1)).toNat + A102223 n

end

end A155233.P14095582521782012578

/-!
# A155234: Number of ways to place zero or more nonadjacent 0,0 1,0 1,1 2,0 3,1 polyhexes in any orientation on a planar nXnXn triangular grid.

The programs for A155234, there is no canonical definition to state claims against.
-/

/-! ## A155234.P7884983069397548698

`A309406(A314604(n))`
-/

namespace A155234.P7884983069397548698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309406 (A314604 n).toNat

end

end A155234.P7884983069397548698

/-!
# A155235: Number of ways to place zero or more nonadjacent 0,0 1,0 2,0 2,1 3,0 polyhexes in any orientation on a planar n X n X n triangular grid.

The programs for A155235, there is no canonical definition to state claims against.
-/

/-! ## A155235.P12846065505410708605

`A276519(n+2)+A276501(A000172(n))`
-/

namespace A155235.P12846065505410708605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276519 (n + 2) + A276501 (A000172 n).toNat

end

end A155235.P12846065505410708605

/-!
# A155236: Number of ways to place zero or more nonadjacent 1,0 1,1 2,0 3,0 4,0 polyhexes in any orientation on a planar nXnXn triangular grid.

The programs for A155236, there is no canonical definition to state claims against.
-/

/-! ## A155236.P1760827952944386914

`A007401(A342131(3*n)+A000664(2*n+1))`
-/

namespace A155236.P1760827952944386914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007401 (A342131 (3 * n) + A000664 (2 * n + 1)).toNat

end

end A155236.P1760827952944386914

/-!
# A155237: Number of ways to place zero or more nonadjacent 0,0 1,0 2,0 3,0 4,0 polyhexes in any orientation on a planar nXnXn triangular grid.

The programs for A155237, there is no canonical definition to state claims against.
-/

/-! ## A155237.P8046767735802716584

`A155386(n+7)%p?[or(n, 2^n-1)]`
-/

namespace A155237.P8046767735802716584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) ((2 ^ n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A155386 (n + 7)) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A155237.P8046767735802716584

/-! ## A155237.P13557781475282257140

`A014684(A155278(n+5))`
-/

namespace A155237.P13557781475282257140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014684 (A155278 (n + 5)).toNat

end

end A155237.P13557781475282257140

/-! ## A155237.P9814746010389834829

`A014684(A155330(n+6))`
-/

namespace A155237.P9814746010389834829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014684 (A155330 (n + 6)).toNat

end

end A155237.P9814746010389834829

/-!
# A155238: Number of ways to place zero or more nonadjacent 1,0 1,1 2,0 3,0 4,1 polyhexes in any orientation on a planar n X n X n triangular grid.

The programs for A155238, there is no canonical definition to state claims against.
-/

/-! ## A155238.P1025822038239136680

`A098868(A200222(n))`
-/

namespace A155238.P1025822038239136680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098868 (A200222 n).toNat

end

end A155238.P1025822038239136680

/-!
# A155239: Number of ways to place zero or more nonadjacent 1,1 2,1 3,0 3,1 4,2 polyhexes in any orientation on a planar nXnXn triangular grid.

The programs for A155239, there is no canonical definition to state claims against.
-/

/-! ## A155239.P13607210686097631438

`A366321(A389292(n+1))`
-/

namespace A155239.P13607210686097631438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366321 (A389292 (n + 1)).toNat

end

end A155239.P13607210686097631438

/-!
# A155240: Number of ways to place zero or more nonadjacent 0,0 1,0 2,0 3,1 3,2 polyhexes in any orientation on a planar nXnXn triangular grid.

The programs for A155240, there is no canonical definition to state claims against.
-/

/-! ## A155240.P10184179147950964364

`A155306(n+4)^(lcm(12, n)/12)!`
-/

namespace A155240.P10184179147950964364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155306 (n + 4) ^ Nat.factorial (SequenceMachineLib.roundAway ((Nat.lcm 12 n : ℚ) / 12)).toNat

end

end A155240.P10184179147950964364

/-!
# A155242: Number of ways to place zero or more nonadjacent 0,0 1,0 2,0 3,1 4,2 polyhexes in any orientation on a planar nXnXn triangular grid.

The programs for A155242, there is no canonical definition to state claims against.
-/

/-! ## A155242.P18186273835873557988

`record[∏{p}[A103073(2*n+1)², #]]`
-/

namespace A155242.P18186273835873557988
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103073 (2 * n + 1) ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A155242.P18186273835873557988

/-!
# A155243: Number of ways to place zero or more nonadjacent 1,0 1,1 2,0 3,1 3,2 polyhexes in any orientation on a planar nXnXn triangular grid.

The programs for A155243, there is no canonical definition to state claims against.
-/

/-! ## A155243.P607055684100606004

`A319241(n!+2*n)`
-/

namespace A155243.P607055684100606004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319241 (Nat.factorial n + 2 * n)

end

end A155243.P607055684100606004

/-!
# A155244: Number of ways to place zero or more nonadjacent 1,1 2,0 2,1 3,2 3,3 polyhexes in any orientation on a planar nXnXn triangular grid.

The programs for A155244, there is no canonical definition to state claims against.
-/

/-! ## A155244.P8636075717087516148

`A346969(A265916(n))`
-/

namespace A155244.P8636075717087516148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346969 (A265916 n).toNat

end

end A155244.P8636075717087516148

/-!
# A155246: Number of ways to place zero or more nonadjacent 0,0 1,0 2,1 3,1 4,2 polyhexes in any orientation on a planar nXnXn triangular grid.

The programs for A155246, there is no canonical definition to state claims against.
-/

/-! ## A155246.P2222112199713850535

`A306439(A163063(n+1))`
-/

namespace A155246.P2222112199713850535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306439 (A163063 (n + 1)).toNat

end

end A155246.P2222112199713850535

/-!
# A155247: Number of ways to place zero or more nonadjacent 0,0 1,0 2,1 3,2 4,2 polyhexes in any orientation on a planar nXnXn triangular grid.

The programs for A155247, there is no canonical definition to state claims against.
-/

/-! ## A155247.P6581089194206376007

`∑[A315595(∑[A004115(n+1)])]`
-/

namespace A155247.P6581089194206376007
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004115 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315595 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A155247.P6581089194206376007

/-!
# A155248: Number of ways to place zero or more nonadjacent 1,0 1,1 2,0 2,1 3,0 3,1 polyhexes in any orientation on a planar nXnXn triangular grid.

The programs for A155248, there is no canonical definition to state claims against.
-/

/-! ## A155248.P14936393154565986101

`filter[A155357(n+4), A050073(#)]`
-/

namespace A155248.P14936393154565986101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155357 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A050073 (f1 j).toNat = 1) n)

end

end A155248.P14936393154565986101

/-!
# A155249: Number of ways to place zero or more nonadjacent 0,0 1,0 1,1 2,0 2,1 2,2 polyhexes in any orientation on a planar nXnXn triangular grid.

The programs for A155249, there is no canonical definition to state claims against.
-/

/-! ## A155249.P3688579936401106783

`∑[A226762(∑[A295193(n+1)])]`
-/

namespace A155249.P3688579936401106783
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295193 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226762 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A155249.P3688579936401106783

/-! ## A155249.P18261643920741942897

`A110561(n)+record[A268386(n+1)]`
-/

namespace A155249.P18261643920741942897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268386 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110561 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A155249.P18261643920741942897

/-! ## A155249.P16741460885608643400

`A241891(n)-A103822(∑[n!*∑[n/n!]])`
-/

namespace A155249.P16741460885608643400
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (Nat.factorial n : ℚ)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℚ) * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241891 n - A103822 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A155249.P16741460885608643400

/-!
# A155250: Number of ways to place zero or more nonadjacent 0,0 1,0 1,1 2,0 2,2 3,1 polyhexes in any orientation on a planar nXnXn triangular grid.

The programs for A155250, there is no canonical definition to state claims against.
-/

/-! ## A155250.P5220998216125903850

`A379676((n+1-a(n-1))²)` with `a(0)=1`
-/

namespace A155250.P5220998216125903850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A379676 (((n + 1 : ℤ) - a (n - 1)) ^ 2).toNat

end

end A155250.P5220998216125903850

/-!
# A155251: Number of ways to place zero or more nonadjacent 1,0 1,1 2,1 2,2 3,1 4,1 polyhexes in any orientation on a planar nXnXn triangular grid.

The programs for A155251, there is no canonical definition to state claims against.
-/

/-! ## A155251.P12997912104282726957

`∏{p}[A155255(n+4)², #]`
-/

namespace A155251.P12997912104282726957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155255 (n + 4) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A155251.P12997912104282726957

/-! ## A155251.P14390394317026967893

`A006370(2*A155255(n+4))`
-/

namespace A155251.P14390394317026967893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 (2 * A155255 (n + 4)).toNat

end

end A155251.P14390394317026967893

/-!
# A155252: Number of ways to place zero or more nonadjacent 1,0 1,1 2,0 2,1 3,0 4,0 polyhexes in any orientation on a planar nXnXn triangular grid.

The programs for A155252, there is no canonical definition to state claims against.
-/

/-! ## A155252.P9313439603329863306

`∑[A182859(A036720(n+2)+A013922(n+1))]`
-/

namespace A155252.P9313439603329863306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182859 (A036720 (n + 2) + A013922 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A155252.P9313439603329863306

/-!
# A155253: Number of ways to place zero or more nonadjacent 1,1 2,0 2,1 2,2 3,1 4,1 polyhexes in any orientation on a planar nXnXn triangular grid.

The programs for A155253, there is no canonical definition to state claims against.
-/

/-! ## A155253.P13035072051640366948

`A340327(2*n)+A000326(A146028(2*(n+1)))`
-/

namespace A155253.P13035072051640366948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340327 (2 * n) + A000326 (A146028 (2 * (n + 1))).toNat

end

end A155253.P13035072051640366948

/-!
# A155254: Number of ways to place zero or more nonadjacent 1,0 2,0 2,1 2,2 3,0 4,0 polyhexes in any orientation on a planar nXnXn triangular grid.

The programs for A155254, there is no canonical definition to state claims against.
-/

/-! ## A155254.P6078624087520463057

`A074802(A037737(n+2))`
-/

namespace A155254.P6078624087520463057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074802 (A037737 (n + 2)).toNat

end

end A155254.P6078624087520463057

/-!
# A155256: Number of ways to place zero or more nonadjacent 1,1 2,1 2,2 3,1 4,0 4,1 polyhexes in any orientation on a planar nXnXn triangular grid.

The programs for A155256, there is no canonical definition to state claims against.
-/

/-! ## A155256.P15259366620063263586

`A080892(a(n-2)+10)` with `a(0)=1, a(1)=7`
-/

namespace A155256.P15259366620063263586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 7] fun n a =>
  A080892 (a (n - 2) + 10).toNat

end

end A155256.P15259366620063263586

/-!
# A155257: Number of ways to place zero or more nonadjacent 0,0 1,0 1,1 2,0 3,0 3,1 polyhexes in any orientation on a planar nXnXn triangular grid.

The programs for A155257, there is no canonical definition to state claims against.
-/

/-! ## A155257.P12455056560896664980

`A155326(A051885(n+4))`
-/

namespace A155257.P12455056560896664980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155326 (A051885 (n + 4)).toNat

end

end A155257.P12455056560896664980

/-! ## A155257.P7427286440945686458

`A155326(A154562(n+4))`
-/

namespace A155257.P7427286440945686458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155326 (A154562 (n + 4)).toNat

end

end A155257.P7427286440945686458

/-!
# A155258: Number of ways to place zero or more nonadjacent 0,0 1,0 1,1 2,0 3,0 4,0 polyhexes in any orientation on a planar nXnXn triangular grid.

The programs for A155258, there is no canonical definition to state claims against.
-/

/-! ## A155258.P15657968401870446698

`A046092(n)+A008619(A207834(n))`
-/

namespace A155258.P15657968401870446698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046092 n + A008619 (A207834 n).toNat

end

end A155258.P15657968401870446698

/-!
# A155259: Number of ways to place zero or more nonadjacent 0,0 1,0 1,1 2,0 3,0 4,1 polyhexes in any orientation on a planar nXnXn triangular grid.

The programs for A155259, there is no canonical definition to state claims against.
-/

/-! ## A155259.P11876240822663764357

`or(A027889(2*n+1), A087088(8^n))`
-/

namespace A155259.P11876240822663764357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A027889 (2 * n + 1)) (A087088 (8 ^ n))

end

end A155259.P11876240822663764357

/-!
# A155260: Number of ways to place zero or more nonadjacent 1,0 1,1 2,1 2,2 3,1 4,2 polyhexes in any orientation on a planar nXnXn triangular grid.

The programs for A155260, there is no canonical definition to state claims against.
-/

/-! ## A155260.P4663057834808438159

`∑[A006530(∏[(n+1)²])*∑[n+1]]`
-/

namespace A155260.P4663057834808438159
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (∏ j ∈ Finset.range (n + 1), f2 j) * ((∑ j ∈ Finset.range (n + 1), f3 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A155260.P4663057834808438159

/-!
# A155261: Number of ways to place zero or more nonadjacent 1,0 1,1 2,0 2,1 3,0 4,1 polyhexes in any orientation on a planar nXnXn triangular grid.

The programs for A155261, there is no canonical definition to state claims against.
-/

/-! ## A155261.P2103100137691902862

`(A033921(A187239(n+1))+6)*n²+1`
-/

namespace A155261.P2103100137691902862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A033921 (A187239 (n + 1)).toNat + 6) * (n ^ 2 : ℤ) + 1

end

end A155261.P2103100137691902862

/-!
# A155262: Number of ways to place zero or more nonadjacent 1,1 2,1 2,2 3,0 3,1 4,2 polyhexes in any orientation on a planar nXnXn triangular grid.

The programs for A155262, there is no canonical definition to state claims against.
-/

/-! ## A155262.P798486876555930036

`6*(n²+n)-A346241(A000058(n))`
-/

namespace A155262.P798486876555930036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (6 * (n ^ 2 + n) : ℤ) - A346241 (A000058 n).toNat

end

end A155262.P798486876555930036

/-!
# A155264: Number of ways to place zero or more nonadjacent 0,0 1,0 1,1 2,0 3,1 4,2 polyhexes in any orientation on a planar nXnXn triangular grid.

The programs for A155264, there is no canonical definition to state claims against.
-/

/-! ## A155264.P5614606823733843100

`A124741(A296312(n+1)+4)`
-/

namespace A155264.P5614606823733843100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124741 (A296312 (n + 1) + 4).toNat

end

end A155264.P5614606823733843100

/-!
# A155265: Number of ways to place zero or more nonadjacent 1,0 2,0 2,1 2,2 3,1 4,1 polyhexes in any orientation on a planar nXnXn triangular grid.

The programs for A155265, there is no canonical definition to state claims against.
-/

/-! ## A155265.P6818792098319660196

`A173921(A247620(n))+n`
-/

namespace A155265.P6818792098319660196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173921 (A247620 n).toNat + (n : ℤ)

end

end A155265.P6818792098319660196

/-!
# A155267: Number of ways to place zero or more nonadjacent 0,0 1,0 1,1 2,1 3,1 4,2 polyhexes in any orientation on a planar nXnXn triangular grid.

The programs for A155267, there is no canonical definition to state claims against.
-/

/-! ## A155267.P16421338617427949313

`A283826(A348719(2*n+1))+A008458(n)`
-/

namespace A155267.P16421338617427949313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283826 (A348719 (2 * n + 1)).toNat + A008458 n

end

end A155267.P16421338617427949313

/-!
# A155268: Number of ways to place zero or more nonadjacent 1,1 2,1 3,0 3,1 3,2 3,3 polyhexes in any orientation on a planar nXnXn triangular grid.

The programs for A155268, there is no canonical definition to state claims against.
-/

/-! ## A155268.P6159400059113982197

`A155441(n+5)+A049615(A007559(n))`
-/

namespace A155268.P6159400059113982197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155441 (n + 5) + A049615 (A007559 n).toNat

end

end A155268.P6159400059113982197

/-!
# A155269: Number of ways to place zero or more nonadjacent 1,1 2,0 2,1 3,1 3,2 4,1 polyhexes in any orientation on a planar nXnXn triangular grid.

The programs for A155269, there is no canonical definition to state claims against.
-/

/-! ## A155269.P17785529511703996410

`∑[A007425(∑[A067735(n)])]`
-/

namespace A155269.P17785529511703996410
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067735 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007425 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A155269.P17785529511703996410

/-! ## A155269.P11413248605693592927

`A344162(A000108(n)+n)-1`
-/

namespace A155269.P11413248605693592927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344162 (A000108 n + (n : ℤ)).toNat - 1

end

end A155269.P11413248605693592927

/-!
# A155270: Number of ways to place zero or more nonadjacent 1,1 2,1 3,1 3,2 4,0 4,1 polyhexes in any orientation on a planar nXnXn triangular grid.

The programs for A155270, there is no canonical definition to state claims against.
-/

/-! ## A155270.P14117311157177512874

`∑[A289507(3^n+9^n)]`
-/

namespace A155270.P14117311157177512874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289507 (3 ^ n + 9 ^ n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A155270.P14117311157177512874

/-!
# A155272: Number of ways to place zero or more nonadjacent 0,0 1,0 2,0 2,1 3,1 4,1 polyhexes in any orientation on a planar nXnXn triangular grid.

The programs for A155272, there is no canonical definition to state claims against.
-/

/-! ## A155272.P9072443056435306058

`xor(2, A037038(A329495(n+1)))`
-/

namespace A155272.P9072443056435306058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 2 (A037038 (A329495 (n + 1)).toNat)

end

end A155272.P9072443056435306058

/-!
# A155273: Number of ways to place zero or more nonadjacent 0,0 1,0 2,0 2,1 3,1 4,2 polyhexes in any orientation on a planar nXnXn triangular grid.

The programs for A155273, there is no canonical definition to state claims against.
-/

/-! ## A155273.P783622825060682538

`A071585(∑[∑[ceil(e*n)]]²)`
-/

namespace A155273.P783622825060682538
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.exp 1 * (n : ℝ)⌉

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071585 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2).toNat

end

end A155273.P783622825060682538

/-!
# A155274: Number of ways to place zero or more nonadjacent 1,1 2,1 3,0 3,1 3,2 4,3 polyhexes in any orientation on a planar nXnXn triangular grid.

The programs for A155274, there is no canonical definition to state claims against.
-/

/-! ## A155274.P9654442751327459428

`or(2*n², A014377(n)!)`
-/

namespace A155274.P9654442751327459428
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor (2 * n ^ 2) (Nat.factorial (A014377 n).toNat)

end

end A155274.P9654442751327459428

/-! ## A155274.P9271186136811916779

`or(2*n², A090947(n)!)`
-/

namespace A155274.P9271186136811916779
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor (2 * n ^ 2) (Nat.factorial (A090947 n).toNat)

end

end A155274.P9271186136811916779

/-!
# A155276: Number of ways to place zero or more nonadjacent 0,0 1,0 2,0 2,1 3,2 4,3 polyhexes in any orientation on a planar nXnXn triangular grid.

The programs for A155276, there is no canonical definition to state claims against.
-/

/-! ## A155276.P429054280773364999

`∑[A289507(3^n+9^n)]+1-A144048(n+1)`
-/

namespace A155276.P429054280773364999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289507 (3 ^ n + 9 ^ n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1 - A144048 (n + 1)

end

end A155276.P429054280773364999

/-!
# A155278: Number of ways to place zero or more nonadjacent 0,0 1,0 2,0 3,0 4,0 5,0 polyhexes in any orientation on a planar nXnXn triangular grid.

The programs for A155278, there is no canonical definition to state claims against.
-/

/-! ## A155278.P12878965617105752299

`A155330(A004880(n+1)+6)`
-/

namespace A155278.P12878965617105752299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155330 (A004880 (n + 1) + 6).toNat

end

end A155278.P12878965617105752299

/-! ## A155278.P2673316404240008596

`A155386(A257554(n+2)+5)`
-/

namespace A155278.P2673316404240008596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155386 (A257554 (n + 2) + 5).toNat

end

end A155278.P2673316404240008596

/-! ## A155278.P12412692509117423338

`∑{d}[A155330(n+6), A000010(#)]`
-/

namespace A155278.P12412692509117423338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155330 (n + 6)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A155278.P12412692509117423338

/-! ## A155278.P17399519943769186730

`∑{d}[A155386(n+7), A000010(#)]`
-/

namespace A155278.P17399519943769186730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155386 (n + 7)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A155278.P17399519943769186730

/-!
# A155279: Number of ways to place zero or more nonadjacent 1,0 1,1 2,0 3,0 4,0 5,1 polyhexes in any orientation on a planar nXnXn triangular grid.

The programs for A155279, there is no canonical definition to state claims against.
-/

/-! ## A155279.P11498807193985187545

`A155331(n+5)-A244606(A108304(n))`
-/

namespace A155279.P11498807193985187545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155331 (n + 5) - A244606 (A108304 n).toNat

end

end A155279.P11498807193985187545

/-! ## A155279.P18235188647969708860

`A155331(n+5)-A244606(A192126(n))`
-/

namespace A155279.P18235188647969708860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155331 (n + 5) - A244606 (A192126 n).toNat

end

end A155279.P18235188647969708860

/-!
# A155280: Number of ways to place zero or more nonadjacent 1,1 2,1 3,1 4,0 4,1 5,2 polyhexes in any orientation on a planar nXnXn triangular grid.

The programs for A155280, there is no canonical definition to state claims against.
-/

/-! ## A155280.P5236143792113356489

`A233547(23*A000302(n))`
-/

namespace A155280.P5236143792113356489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233547 (23 * A000302 n).toNat

end

end A155280.P5236143792113356489

/-!
# A155281: Number of ways to place zero or more nonadjacent 0,0 1,0 2,0 3,0 4,1 4,2 polyhexes in any orientation on a planar nXnXn triangular grid.

The programs for A155281, there is no canonical definition to state claims against.
-/

/-! ## A155281.P7199638330517609879

`A360800(A088688(n+1))`
-/

namespace A155281.P7199638330517609879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360800 (A088688 (n + 1)).toNat

end

end A155281.P7199638330517609879

/-!
# A155283: Number of ways to place zero or more nonadjacent 0,0 1,0 2,0 3,0 4,1 5,2 polyhexes in any orientation on a planar nXnXn triangular grid.

The programs for A155283, there is no canonical definition to state claims against.
-/

/-! ## A155283.P17595893247793453719

`A113314(A003478(n))+A006332(n)`
-/

namespace A155283.P17595893247793453719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113314 (A003478 n).toNat + A006332 n

end

end A155283.P17595893247793453719

/-!
# A155284: Number of ways to place zero or more nonadjacent 1,0 1,1 2,1 3,1 4,2 4,3 polyhexes in any orientation on a planar nXnXn triangular grid.

The programs for A155284, there is no canonical definition to state claims against.
-/

/-! ## A155284.P7480089291287934643

`A004151(A155304(n+4))`
-/

namespace A155284.P7480089291287934643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004151 (A155304 (n + 4)).toNat

end

end A155284.P7480089291287934643

/-! ## A155284.P4273503355261519297

`A155304(A154562(n+4))`
-/

namespace A155284.P4273503355261519297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155304 (A154562 (n + 4)).toNat

end

end A155284.P4273503355261519297

/-!
# A155286: Number of ways to place zero or more nonadjacent 1,1 2,1 3,0 3,1 4,2 4,3 polyhexes in any orientation on a planar nXnXn triangular grid.

The programs for A155286, there is no canonical definition to state claims against.
-/

/-! ## A155286.P7004405705008916470

`A057996(A049887(n+1))+A033581(n)`
-/

namespace A155286.P7004405705008916470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057996 (A049887 (n + 1)).toNat + A033581 n

end

end A155286.P7004405705008916470

/-! ## A155286.P4588826902462429728

`A227776(n)+A090037(A000040(n+1))`
-/

namespace A155286.P4588826902462429728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227776 n + A090037 (A000040 (n + 1)).toNat

end

end A155286.P4588826902462429728

/-!
# A155287: Number of ways to place zero or more nonadjacent 0,0 1,0 2,0 3,1 3,2 3,3 polyhexes in any orientation on a planar nXnXn triangular grid.

The programs for A155287, there is no canonical definition to state claims against.
-/

/-! ## A155287.P15941199474040921886

`record[A007306(A060187(n+1))]-n`
-/

namespace A155287.P15941199474040921886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007306 (A060187 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (n : ℤ)

end

end A155287.P15941199474040921886

/-! ## A155287.P14501440986264004536

`A104433(A277217(n+1))+∑[2*n]`
-/

namespace A155287.P14501440986264004536
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104433 (A277217 (n + 1)).toNat + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A155287.P14501440986264004536

/-!
# A155288: Number of ways to place zero or more nonadjacent 0,0 1,0 2,0 3,1 3,2 4,1 polyhexes in any orientation on a planar nXnXn triangular grid.

The programs for A155288, there is no canonical definition to state claims against.
-/

/-! ## A155288.P504784306414270797

`1-n+A118759(6*n²+n)+C(n, 4)`
-/

namespace A155288.P504784306414270797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (n : ℤ) + (A118759 (6 * n ^ 2 + n) + (Nat.choose n 4 : ℤ))

end

end A155288.P504784306414270797

/-!
# A155290: Number of ways to place zero or more nonadjacent 1,0 1,1 2,1 3,1 4,2 5,2 polyhexes in any orientation on a planar nXnXn triangular grid.

The programs for A155290, there is no canonical definition to state claims against.
-/

/-! ## A155290.P1372501016296643833

`A241829(A307635(n))+A033429(n)`
-/

namespace A155290.P1372501016296643833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241829 (A307635 n).toNat + A033429 n

end

end A155290.P1372501016296643833

/-!
# A155291: Number of ways to place zero or more nonadjacent 1,0 1,1 2,0 3,0 4,1 5,1 polyhexes in any orientation on a planar nXnXn triangular grid.

The programs for A155291, there is no canonical definition to state claims against.
-/

/-! ## A155291.P5128246545865137801

`A262609(∑[n+3])-2`
-/

namespace A155291.P5128246545865137801
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262609 (∑ j ∈ Finset.range (n + 1), f1 j) - 2

end

end A155291.P5128246545865137801

/-!
# A155292: Number of ways to place zero or more nonadjacent 1,1 2,0 2,1 3,1 4,2 5,2 polyhexes in any orientation on a planar nXnXn triangular grid.

The programs for A155292, there is no canonical definition to state claims against.
-/

/-! ## A155292.P2412336136366372939

`A155298(n+4)^(lcm(12, n)/12)!`
-/

namespace A155292.P2412336136366372939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155298 (n + 4) ^ Nat.factorial (SequenceMachineLib.roundAway ((Nat.lcm 12 n : ℚ) / 12)).toNat

end

end A155292.P2412336136366372939

/-!
# A155293: Number of ways to place zero or more nonadjacent 1,1 2,1 3,0 3,1 4,2 5,2 polyhexes in any orientation on a planar nXnXn triangular grid.

The programs for A155293, there is no canonical definition to state claims against.
-/

/-! ## A155293.P356490349807253521

`A274794(A054964(n+2))`
-/

namespace A155293.P356490349807253521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274794 (A054964 (n + 2)).toNat

end

end A155293.P356490349807253521

/-!
# A155294: Number of ways to place zero or more nonadjacent 0,0 1,0 2,0 3,1 4,0 4,1 polyhexes in any orientation on a planar nXnXn triangular grid.

The programs for A155294, there is no canonical definition to state claims against.
-/

/-! ## A155294.P6319750763041094052

`xor(∑[A135907(2*n)], A135914(n))`
-/

namespace A155294.P6319750763041094052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135907 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (∑ j ∈ Finset.range (n + 1), f1 j) (A135914 n)

end

end A155294.P6319750763041094052

/-!
# A155295: Number of ways to place zero or more nonadjacent 0,0 1,0 2,0 3,1 4,1 4,2 polyhexes in any orientation on a planar nXnXn triangular grid.

The programs for A155295, there is no canonical definition to state claims against.
-/

/-! ## A155295.P10866542093323963006

`A258574(A002293(n))+A054569(n+1)`
-/

namespace A155295.P10866542093323963006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258574 (A002293 n).toNat + A054569 (n + 1)

end

end A155295.P10866542093323963006

/-!
# A155296: Number of ways to place zero or more nonadjacent 0,0 1,0 2,0 3,1 4,1 5,1 polyhexes in any orientation on a planar nXnXn triangular grid.

The programs for A155296, there is no canonical definition to state claims against.
-/

/-! ## A155296.P13594114493160143178

`a(n-1)+A322516(a(n-1))+5` with `a(0)=1`
-/

namespace A155296.P13594114493160143178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A322516 (a (n - 1)).toNat + 5)

end

end A155296.P13594114493160143178

/-!
# A155297: Number of ways to place zero or more nonadjacent 0,0 1,0 2,0 3,1 4,1 5,2 polyhexes in any orientation on a planar nXnXn triangular grid.

The programs for A155297, there is no canonical definition to state claims against.
-/

/-! ## A155297.P14448755860337873072

`A062028(A318099(2*n+1))-A010054(n)`
-/

namespace A155297.P14448755860337873072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062028 (A318099 (2 * n + 1)).toNat - A010054 n

end

end A155297.P14448755860337873072

/-!
# A155299: Number of ways to place zero or more nonadjacent 1,1 2,1 3,0 3,1 4,2 5,3 polyhexes in any orientation on a planar nXnXn triangular grid.

The programs for A155299, there is no canonical definition to state claims against.
-/

/-! ## A155299.P16765455512524868421

`∑[A018629(∑[A074066(n+1)])]`
-/

namespace A155299.P16765455512524868421
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074066 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018629 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A155299.P16765455512524868421

